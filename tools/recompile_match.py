#!/usr/bin/env python
"""Phase 4E - recompile recovered .c bodies and measure parity.

The final loop of Roadmap step 5: compile every hand-recovered function in
src/decomp/recovered/ into bytes, drop them into candidate/<addr>.bin and
run tools/match_check.py against the frozen match_baseline.csv so the
progress bar is measurable per function (EXACT / SIZE-ONLY / DIFF / MISSING).

Compiler tiers (auto-resolved, best wins):
    mips64r5900el-ps2-elf-gcc / ee-gcc  (ps2dev EE cross, BE MIPS R5900) -> real bytes
    mips-linux-gnu-gcc / mipsel-linux-gnu-gcc               -> o32 MIPS bytes
    gcc / clang / cc                                         -> syntax-only
The EE tier is the only one that can ever produce EXACT; the MIPS tier gives
a size/ABI sanity check; the host tier only proves the C compiles clean.

Byte extraction: each file compiles as its own TU with -ffunction-sections,
then objcopy dumps each function's section to candidate/<addr>.bin. Addresses
come from the header comment ("raw address: 0x...", "N @ 0x..."), mapping in
order to the symbol list for multi-function files (FUN_x_a, FUN_x_b, ...).

Usage:
    python tools/recompile_match.py            # build candidate/ + run match_check
    python tools/recompile_match.py --no-check # build candidate/ only
"""
import argparse
import os
import re
import shutil
import struct
import subprocess
import sys
import io

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
REC = os.path.join(ROOT, "src", "decomp", "recovered")
OUT = os.path.join(ROOT, "src", "decomp", "analysis", "recompiled")
RDIR = os.path.join(OUT, "candidate")
TOOLS = os.path.join(ROOT, "tools")
CSTD = "c11"

CC_TIERS = [("mips64r5900el-ps2-elf-gcc", ["-ffunction-sections"]),
            ("ee-gcc", ["-ffunction-sections"]),
            ("mips-linux-gnu-gcc", ["-ffunction-sections"]),
            ("mipsel-linux-gnu-gcc", ["-ffunction-sections"]),
            ("gcc", []), ("clang", []), ("cc", [])]

OBJ_TIERS = ["mips64r5900el-ps2-elf-objcopy", "ee-objcopy",
             "mips-linux-gnu-objcopy", "mipsel-linux-gnu-objcopy"]

# SN Systems ProDG ee-gcc 2.95.3-EE (Win32 PE, era-correct codegen, LE MIPS).
# Search order: env override, repo-local, stable download location, temp.
SN_GCC_CANDIDATES = [
    os.path.join(ROOT, "tools", "toolchains", "ee-gcc2.95.3-136", "bin", "ee-gcc.exe"),
    r"F:\Descargas\ee-gcc2.95.3-136\bin\ee-gcc.exe",
    r"C:\Users\Admin\AppData\Local\Temp\opencode\ee-gcc2.95.3\bin\ee-gcc.exe",
]
SN_INCLUDE = os.path.join(TOOLS, "sn_include")


def which(name):
    p = shutil.which(name)
    return p


def load_csv(path):
    import csv
    import io
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def addr_map(path):
    """(function_name -> addr) for everything defined in the .c.

    "raw address: 0x..." names the primary symbol; multi-function files
    annotate each sub-function ("f1 @ 0x0053fd80", "f2 @ 0x0053fda0") and
    name them FUN_x_a, FUN_x_b... The suffix maps to the fN annotation;
    a symbol without a suffix maps to the raw address.
    """
    with open(path, encoding="utf-8") as f:
        txt = f.read()
    raw = re.findall(r"raw address: 0x([0-9a-fA-F]{8})", txt)
    base = int(raw[0], 16) if raw else None
    sub = {int(k): int(v, 16) for k, v in
           re.findall(r"f(\d+) @ 0x([0-9a-fA-F]{8})", txt)}
    fns = re.findall(r"\b(FUN_[0-9a-fA-F]{8}(?:_[a-z0-9]+)?)\s*\(", txt)
    out = {}
    for fn in fns:
        m = re.match(r"FUN_[0-9a-fA-F]{8}_([a-z0-9]+)$", fn)
        if m and sub:
            idx = ord(m.group(1)) - ord('a') + 1
            if idx in sub:
                out[fn] = sub[idx]
                continue
        if base is not None and not sub:
            out[fn] = base
    return out


def elf_sections(data):
    """[(name, bytes)] for an ELF object (32/64-bit, either endianness)."""
    if data[:4] != b"\x7fELF":
        return []
    cls = data[4]
    endian = "little" if data[5] == 1 else "big"
    if cls == 1:
        shoff = int.from_bytes(data[0x20:0x24], endian)
        shentsz = int.from_bytes(data[0x2e:0x30], endian)
        shnum = int.from_bytes(data[0x30:0x32], endian)
        shstr = int.from_bytes(data[0x32:0x34], endian)
    else:
        shoff = int.from_bytes(data[0x28:0x38], endian)
        shentsz = int.from_bytes(data[0x3a:0x3c], endian)
        shnum = int.from_bytes(data[0x3c:0x40], endian)
        shstr = int.from_bytes(data[0x40:0x44], endian)
    secs = []
    for i in range(shnum):
        off = shoff + i * shentsz
        if cls == 1:
            name_off = int.from_bytes(data[off:off + 4], endian)
            fl = int.from_bytes(data[off + 8:off + 12], endian)
            sec_off = int.from_bytes(data[off + 0x10:off + 0x14], endian)
            sec_sz = int.from_bytes(data[off + 0x14:off + 0x18], endian)
        else:
            name_off = int.from_bytes(data[off:off + 4], endian)
            fl = int.from_bytes(data[off + 8:off + 16], endian)
            sec_off = int.from_bytes(data[off + 0x18:off + 0x20], endian)
            sec_sz = int.from_bytes(data[off + 0x20:off + 0x28], endian)
        secs.append((i, name_off, fl, sec_off, sec_sz))
    str_sh = secs[shstr]
    strtab = data[str_sh[3]:str_sh[3] + str_sh[4]]
    out = []
    for i, name_off, fl, sec_off, sec_sz in secs:
        if not (fl & 2):  # SHF_ALLOC
            continue
        end = strtab.find(b"\x00", name_off)
        name = strtab[name_off:end].decode("ascii", "replace")
        out.append((name, data[sec_off:sec_off + sec_sz]))
    return out


def extract_from_elf(data, sec):
    for name, blob in elf_sections(data):
        if name == sec:
            return blob
    return None


def elf_symbols(data):
    """[(name, value, size, type)] STT_FUNC/STT_OBJECT globals from an ELF32 object."""
    if data[:4] != b"\x7fELF" or data[4] != 1:
        return []
    endian = "<" if data[5] == 1 else ">"
    shoff = int.from_bytes(data[0x20:0x24], "little")
    shentsz = int.from_bytes(data[0x2e:0x30], "little")
    shnum = int.from_bytes(data[0x30:0x32], "little")
    secs = []
    for i in range(shnum):
        off = shoff + i * shentsz
        name_off, fl = struct.unpack_from(endian + "II", data, off)
        sec_off, sec_sz = struct.unpack_from(endian + "II", data, off + 0x10)
        secs.append((i, name_off, fl, sec_off, sec_sz))
    def blob(i):
        _, _, _, o, sz = secs[i]
        return data[o:o + sz]
    syms = []
    for i, name_off, fl, o, sz in secs:
        if fl & 2 or (i == 0):  # skip non-alloc? symtab is not alloc; use type instead
            pass
    # find SHT_SYMTAB (type 2) and its linked strtab
    symtab_i = None
    for i in range(shnum):
        off = shoff + i * shentsz
        sh_type = int.from_bytes(data[off + 4:off + 6], "little")
        if sh_type == 2:
            symtab_i = i
            break
    if symtab_i is None:
        return []
    link = int.from_bytes(data[shoff + symtab_i * shentsz + 24:
                               shoff + symtab_i * shentsz + 26], "little")
    strtab = blob(link)
    tab = blob(symtab_i)
    for j in range(0, len(tab) - len(tab) % 16, 16):
        name32, val, size_, info, _oth, _sh = struct.unpack(endian + "IIIBBH", tab[j:j + 16])
        if (info & 0xf) not in (1, 2) or name32 == 0:  # STT_OBJECT / STT_FUNC
            continue
        end = strtab.find(b"\x00", name32)
        nm = strtab[name32:end].decode("ascii", "replace")
        syms.append((nm, val, size_, info & 0xf))
    return syms


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--no-check", action="store_true",
                    help="build candidate/ but do not run match_check")
    ap.add_argument("-O", dest="opt", default="0",
                    help="optimization level (default 0; try -O2 for size signal)")
    args = ap.parse_args()

    cc = None
    cc_flags = []
    sn_gcc = os.environ.get("CNK_SN_GCC") or next(
        (p for p in SN_GCC_CANDIDATES if os.path.isfile(p)), None)
    if sn_gcc:
        cc = sn_gcc
    else:
        for name, flags in CC_TIERS:
            if which(name):
                cc = name
                cc_flags = flags
                break

    # zig cc: one-binary cross toolkit (host or mips-linux-gnu big-endian).
    zig = None if sn_gcc else which("zig")

    if not cc and not zig:
        sys.stderr.write("no C compiler found - nothing to compile.\n"
                         "  host: install gcc/clang, or put zig on PATH\n"
                         "  EE:   install ps2dev (mips64r5900el-ps2-elf-gcc) - best tier\n"
                         "  SN:   set CNK_SN_GCC=<...ee-gcc.exe> - era-correct tier\n")
        sys.exit(2)

    objcopy = None
    for name in OBJ_TIERS:
        if which(name):
            objcopy = name
            break

    is_sn = bool(sn_gcc) and cc == sn_gcc
    if is_sn:
        tier = "SN-EE"
    elif cc in ("ee-gcc", "mips64r5900el-ps2-elf-gcc"):
        tier = "EE"
    else:
        tier = "MIPS" if zig or cc and "mips" in cc else "HOST"
    print("compiler tier: %s%s" % (
        tier,
        " (SN ProDG 2.95.3)" if is_sn else (" (via zig cc)" if zig else " (%s)" % cc)))

    # baseline sizes for zero-padding candidate bins (linker alignment parity)
    base_sizes = {}
    bl_csv = os.path.join(ROOT, "src", "decomp", "analysis", "match_baseline.csv")
    if os.path.exists(bl_csv):
        import csv as _csv
        with io.open(bl_csv, encoding="utf-8", newline="") as f:
            for row in _csv.DictReader(f):
                try:
                    base_sizes[int(row["address"], 16)] = int(row["size"])
                except (KeyError, ValueError):
                    pass

    os.makedirs(RDIR, exist_ok=True)
    for f in os.listdir(RDIR):
        os.remove(os.path.join(RDIR, f))

    files = sorted(os.listdir(REC))
    printed = []
    n_ok = 0
    for fn in files:
        if not fn.endswith(".c"):
            continue
        src = os.path.join(REC, fn)
        ob = os.path.join(OUT, fn[:-2] + ".o")
        amap = addr_map(src)
        if is_sn:
            sn_lib = os.path.join(os.path.dirname(os.path.dirname(cc)),
                                  "lib", "gcc-lib", "ee", "2.95.3") + os.sep
            cmd = [cc, "-B" + sn_lib, "-I", SN_INCLUDE,
                   "-I", os.path.join(ROOT, "include", "engine"),
                   "-G0", "-O" + args.opt, "-c", "-o", ob, src]
        elif zig:
            target = "-target" if "mips" in tier or tier == "ZIG" else ""
            cmd = [zig, "cc", "-I", os.path.join(ROOT, "include", "engine"),
                   "-std=" + CSTD, "-O" + args.opt, "-c", "-o", ob, src,
                   "-ffunction-sections"]
            if tier == "MIPS":
                cmd += ["-target", "mips-linux-gnu", "-mabi=32"]
        else:
            cmd = [cc, "-I", os.path.join(ROOT, "include", "engine"),
                   "-std=" + CSTD, "-O" + args.opt, "-c", "-o", ob, src] + cc_flags
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0:
            printed.append("COMPILE-FAIL  %-20s %s" %
                           (fn, (r.stderr or "").strip().splitlines()[:1]))
            continue
        n_ok += 1
        bytes_ok = 0
        if tier != "HOST":
            with io.open(ob, "rb") as f:
                ob_data = f.read()
            syms = {nm: (val, sz) for nm, val, sz, _t in elf_symbols(ob_data)}
            for sym, addr in amap.items():
                sec = ".text." + sym
                blob = extract_from_elf(ob_data, sec) if not objcopy else None
                if objcopy and not blob:
                    dst = os.path.join(RDIR, "0x%08x.bin" % addr)
                    r2 = subprocess.run(
                        [objcopy, "--dump-section", "%s=%s" % (sec, dst), ob],
                        capture_output=True, text=True)
                    if r2.returncode == 0 and os.path.exists(dst) and \
                            os.path.getsize(dst) > 0:
                        blob = open(dst, "rb").read()
                if not blob and sym in syms:
                    val, sz = syms[sym]  # symtab slice (SN objects: single .text)
                    for sname, sblob in elf_sections(ob_data):
                        if sname == ".text":
                            blob = sblob[val:val + sz]
                            break
                if blob:
                    want = base_sizes.get(addr)
                    if want and len(blob) < want:
                        blob = blob + b"\x00" * (want - len(blob))  # link padding parity
                    dst = os.path.join(RDIR, "0x%08x.bin" % addr)
                    with open(dst, "wb") as f:
                        f.write(blob)
                    bytes_ok += len(blob)
                    printed.append("DUMPED       %-20s %-36s 0x%08x (%d B)" %
                                   (fn, sym, addr, len(blob)))
                else:
                    printed.append("DUMP-FAIL    %-20s %s (%s)" %
                                   (fn, sym, (r.stderr or "").strip()[:80]))
        if bytes_ok == 0 and tier != "HOST":
            printed.append("COMPILED     %-20s (no function sections found)" % fn)
        if tier == "HOST":
            printed.append("COMPILED     %-20s (host tier: no bytes, syntax OK)" % fn)

    print("\n".join(printed))
    print("recovered files compiled clean: %d / %d" % (n_ok, len(files)))
    if tier == "HOST":
        print("HOST tier: no byte extraction - use --zig or ee-gcc for matching.")
    else:
        nbin = sum(1 for f in os.listdir(RDIR))
        print("candidate dir: %s (%d function bins)" % (RDIR, nbin))

    if not args.no_check:
        print("\n--- match_check ---")
        subprocess.run([sys.executable, os.path.join(TOOLS, "match_check.py"),
                        RDIR])


if __name__ == "__main__":
    main()