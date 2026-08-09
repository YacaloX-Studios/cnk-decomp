"""Classify the 13,999 halt_baddata() stubs by inspecting the real MIPS bytes.

The SLUS_206.49.c dump holds 13,999 functions that Ghidra failed to decompile
to C (`halt_baddata();`). The on-disc ELF still contains their real R5900
instructions (stored LE; read a 4-byte word as a LE uint32 to recover the BE
MIPS opcode). This tool reads the binary at each stub's address range and
categorizes:

  thunk          - tiny tail-call / jump trampoline
  small_code     - real function, few instructions (< 8)
  code           - plausible real function body
  data_table     - word-aligned data misidentified as code
  string_data    - printable ASCII run
  zero_padding   - NOP/zero fill (padding, alignment holes)
  invalid        - can't decode as valid MIPS (junk region)
  out_of_segment - address beyond the LOAD segment (BSS/unmapped)

Writes:
  stub_classify.csv  one row per stub: address,offset,size,category,detail
  stub_census.md     per-category counts + top N address-ranges per category
"""

import io
import os
import re
import sys
import collections

DEFAULT_BIN = "SLUS_206.49"
DEFAULT_STUB = "src/decomp/stub_addresses.txt"
DEFAULT_REAL = "src/decomp/inventory.csv"
DEFAULT_OUT = "src/decomp/analysis/stub_classify.csv"
DEFAULT_MD = "src/decomp/analysis/stub_census.md"

BASE_VADDR = 0x00100000
SEG_OFF = 0x80          # first LOAD: file off 0x80 -> vaddr 0x00100000
SEG_FILESZ = 0x5F2100   # first LOAD filesz (6234112)

# --- minimal R5900 opcode validity ------------------------------------------

# primary opcodes used by real code (bits 31:26)
PRIMARY_OK = {
    0x00,                  # SPECIAL (funct decides)
    0x01,                  # REGIMM (bcond)
    0x02, 0x03,            # j / jal
    0x04, 0x05, 0x06, 0x07,  # beq / bne / blez / bgtz
    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,  # addi..lui
    0x10, 0x11, 0x12, 0x13,  # cop0-3
    0x14, 0x15, 0x16, 0x17,  # beql / bnel / bleql / bgtzl
    0x1c, 0x1d, 0x1e, 0x1f,  # cop2 mov/load/store (R5900 min/max/abs + lq/sq)
    0x20, 0x21, 0x22, 0x23,  # lb lh lwl lw
    0x24, 0x25, 0x26,        # lbu lhu lwr
    0x28, 0x29, 0x2a, 0x2b,  # sb sh swl sw
    0x2e,                    # swr
    0x2f,                    # cache
    0x32, 0x33,              # lwc2 / pref
    0x36,                    # swc2
    0x3b, 0x3f,              # r5900 special (eret/nors), MMX ops
}

# SPECIAL funct codes (opcode 0x00)
SPECIAL_OK = {
    0x00, 0x02, 0x03,        # sll srl sra
    0x04, 0x06, 0x07,        # sllv srlv srav
    0x08, 0x09,              # jr jalr
    0x0a, 0x0b,              # movz movn
    0x0c, 0x0d,              # syscall break
    0x0f,                    # sync
    0x10, 0x12, 0x13,        # mfhi mflo mthi mtlo -> 0x11 mthi, 0x13 mtlo
    0x18, 0x19, 0x1a, 0x1b,  # mult multu div divu
    0x1c, 0x1d,              # dmult dmultu
    0x1e, 0x1f,              # ddiv ddivu
    0x20, 0x21, 0x22, 0x23,  # add addu sub subu
    0x24, 0x25, 0x26, 0x27,  # and or xor nor
    0x28, 0x29, 0x2a, 0x2b,  # slt sltu
    0x2c, 0x2d, 0x2e, 0x2f,  # dadd daddu dsub dsubu
    0x30, 0x31, 0x32, 0x33,  # tge tgeu tlt tltu
    0x34, 0x35, 0x36, 0x37,  # teq tne
    0x38, 0x39, 0x3a, 0x3b,  # daddi daddiu ldl ldr
    0x3f,                    # (r5900: sync.l?)
}


def decode_word(w):
    """Return True if w decodes to a primary+ (funct) valid MIPS/R5900 op."""
    op = (w >> 26) & 0x3f
    if op == 0x00:
        return ((w >> 0) & 0x3f) in SPECIAL_OK
    if op in (0x10, 0x11, 0x12, 0x13, 0x1c, 0x36):
        # co-processor: accept fairly liberally (COP opcodes vary)
        return True
    return op in PRIMARY_OK


def is_ascii_run(chunk):
    printable = sum(1 for b in chunk if 0x20 <= b <= 0x7e)
    return printable / max(len(chunk), 1) > 0.7 and len(chunk) >= 8


def is_prologue(w):
    """addiu sp, sp, imm  (0x27bdxxxx)  or  addiu sp, reg, imm."""
    return (w >> 26) & 0x3f == 0x09 and (w >> 21) & 0x1f == 29 and (w >> 16) & 0x1f == 29


def is_jr_ra(w):
    return (w & 0xfffffc1f) == 0x00000008   # jr $ra / jalr (rs field set)


def classify_range(addr, size, words, raw_bytes):
    """Categorize one stub address range from its raw dwords."""
    if len(words) == 0:
        return "zero_padding", "no file bytes (BSS/beyond segment)"
    n = len(words)

    # printable ASCII string region?
    if is_ascii_run(raw_bytes):
        return "string_data", "printable ASCII"

    zero = sum(1 for w in words if w == 0)
    if zero / n > 0.9:
        return "zero_padding", "%d zeros/%d words" % (zero, n)

    valid = sum(1 for w in words if decode_word(w))
    valid_ratio = valid / n

    # function beacons only at the boundaries (start prologue / end return)
    has_prologue = any(is_prologue(w) for w in words[:min(4, n)])
    has_return = any(is_jr_ra(w) for w in words[-min(4, n):])

    # thunk: tiny tail-jump trampoline
    if n <= 6 and valid_ratio >= 0.5:
        tail_jump = any(((w >> 26) & 0x3f) in (0x02, 0x03) for w in words) or \
                    any(is_jr_ra(w) for w in words)
        if tail_jump:
            return "small_code", "thunk-style tail jump (%d words)" % n
        return "small_code", "%d words" % n

    # The R5900 (EE) ISA is far richer than the MIPS-III subset in
    # PRIMARY_OK/SPECIAL_OK: MMI/SIMD packed ops, VU0 COP2 macro mode, and the
    # cop0/cache/hazard slots are all over the game's hot paths. `valid_ratio`
    # alone therefore *under* counts real code (observe sub-0.5 ratios on
    # clearly-valid prologue bodies). A prologue or return beacon is the
    # decisive "this is a function" signal.
    if has_prologue or has_return:
        return "code", "%d words, prologue=%s return=%s l=%d%%" % (
            n, has_prologue, has_return, int(valid_ratio * 100))

    if valid_ratio >= 0.6:
        return "code", "%d words, %d%% decodable" % (n, int(valid_ratio * 100))

    if valid_ratio >= 0.35:
        return "data_table", "%d words, %d%% decodable" % (n, int(valid_ratio * 100))

    return "invalid", "%d words, %d%% decodable" % (n, int(valid_ratio * 100))


def main():
    bin_path = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_BIN
    stub_path = sys.argv[2] if len(sys.argv) > 2 else DEFAULT_STUB
    out_csv = sys.argv[3] if len(sys.argv) > 3 else DEFAULT_OUT
    out_md = sys.argv[4] if len(sys.argv) > 4 else DEFAULT_MD

    data = io.open(bin_path, "rb").read()

    # stub addresses
    addrs = []
    with io.open(stub_path, encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if re.fullmatch(r"[0-9a-f]{8}", line):
                addrs.append(int(line, 16))
    addrs = sorted(set(addrs))

    # gather every function address (real + stub) to compute per-stub sizes
    func_addrs = set(addrs)
    if os.path.exists(DEFAULT_REAL):
        import csv as _csv
        with io.open(DEFAULT_REAL, encoding="utf-8") as f:
            for row in _csv.DictReader(f):
                try:
                    func_addrs.add(int(row["address"], 16))
                except ValueError:
                    pass
    # include entry point
    func_addrs.add(0x00108D28)
    ordered = sorted(func_addrs)
    next_by_addr = {a: (b if b is not None else a + 4)
                    for a, b in zip(ordered, ordered[1:] + [None])}

    results = []
    for i, a in enumerate(addrs):
        # size = gap to the next function address
        nxt = next_by_addr[a]
        size = max((nxt - a), 4)
        if size > 0x4000:
            size = 0x4000   # cap absurd gaps

        foff = a - BASE_VADDR + SEG_OFF
        if a - BASE_VADDR >= SEG_FILESZ or foff + size > len(data):
            cat, detail = "out_of_segment", "beyond LOAD segment"
            words = []
        else:
            raw = data[foff:foff + size]
            raw = raw[:len(raw) - (len(raw) % 4)]
            words = [int.from_bytes(raw[i:i + 4], "little")
                     for i in range(0, len(raw), 4)]
            cat, detail = classify_range(a, size, words, raw)

        results.append((a, foff, size, cat, detail))

    # census
    counts = collections.Counter(r[3] for r in results)

    with io.open(out_csv, "w", encoding="utf-8", newline="") as f:
        import csv as _csv
        w = _csv.writer(f)
        w.writerow(["address", "file_offset", "size", "category", "detail"])
        for a, o, sz, cat, det in results:
            w.writerow(["0x%08x" % a, "0x%x" % o, sz, cat, det])

    with io.open(out_md, "w", encoding="utf-8") as f:
        f.write("# Stub census (13,999 halt_baddata functions)\n\n")
        f.write("Classified by `tools/classify_stubs.py` from the on-disc ELF bytes.\n\n")
        f.write("| category | count | pct |\n|---|---|---|\n")
        for cat in sorted(counts, key=lambda c: -counts[c]):
            f.write("| %s | %d | %.1f%% |\n" % (cat, counts[cat],
                                                100.0 * counts[cat] / len(results)))
        # sample ranges per category
        for cat in sorted(counts, key=lambda c: -counts[c]):
            f.write("\n## %s (%d)\n\n" % (cat, counts[cat]))
            f.write("| address | size | detail |\n|---|---|---|\n")
            for a, o, sz, c, det in [r for r in results if r[3] == cat][:20]:
                f.write("| 0x%08x | %d | %s |\n" % (a, sz, det))

    print("stubs classified: %d" % len(results))
    print("out_of_segment   : %d" % counts.get("out_of_segment", 0))
    print("code             : %d" % counts.get("code", 0))
    print("small_code       : %d" % counts.get("small_code", 0))
    print("data_table       : %d" % counts.get("data_table", 0))
    print("string_data      : %d" % counts.get("string_data", 0))
    print("zero_padding     : %d" % counts.get("zero_padding", 0))
    print("invalid          : %d" % counts.get("invalid", 0))
    print("wrote %s" % out_csv)
    print("wrote %s" % out_md)


if __name__ == "__main__":
    main()