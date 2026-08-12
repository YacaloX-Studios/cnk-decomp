#!/usr/bin/env python
"""Phase 4F - per-function flat disassembly for the recovery loop (Roadmap step 5).

The loop needs the raw R5900 text next to the evidence sheet. This produces
`recovery_asm/<addr>.asm` for every function in the recovery worklist (or the
CLI addresses chosen), decoding each LE word back to the BE R5900 opcode the
same way infer_types does, with the same global-page/loop/call annotations as
hub dissection - so a human (or the next model) can write the C body against
real instructions instead of guessing from access summaries.

Usage:
    python tools/recovery_asm.py            # worklist set (214)
    python tools/recovery_asm.py 0x00120720 # one function
"""
import collections
import csv
import io
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))
from dissect_hubs import render, REG  # noqa: E402
from infer_types import decode  # noqa: E402

BIN = "SLUS_206.49"
OUT_DIR = os.path.join("src", "decomp", "analysis")
ASM_DIR = os.path.join(OUT_DIR, "recovery_asm")


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def main():
    os.makedirs(ASM_DIR, exist_ok=True)
    with io.open(BIN, "rb") as f:
        data = f.read()
    sym = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "symbols.csv"))}
    inf = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "inferred_types.csv"))}
    try:
        work = [r["address"] for r in
                load_csv(os.path.join(OUT_DIR, "recovery_worklist.csv"))]
    except FileNotFoundError:
        work = []
    addrs = sys.argv[1:] or work
    n = 0
    for a in addrs:
        s = sym.get(a)
        if s is None:
            continue
        foff = int(s["file_offset"])
        size = int(s["size"])
        words = data[foff:foff + size]
        t = inf.get(a, {})
        lines = [
            "; %s  %s  size=%d  status=%s" %
            (a, s.get("name", a), size, s.get("status")),
            "; evidence: args=%s ret=%s calls=%s" %
            (t.get("args", "-"), t.get("return_kind", "-"), t.get("calls", "-")[:80]),
            "; %d words" % (size // 4),
            "",
        ]
        pages = {}
        gl = collections.Counter()
        for i in range(0, len(words), 4):
            w = int.from_bytes(words[i:i + 4], "little")
            ins = decode(w)
            cur = int(a, 16) + i
            note = ""
            if ins.kind == "lui":
                pages[ins.rt] = ins.imm
            if ins.kind in ("load", "store", "fload", "fstore") and \
                    pages.get(ins.rs) is not None:
                addr_ = (pages[ins.rs] + (ins.imm & 0xffff)) & 0xffffffff
                note = "   ; GLOBAL 0x%08x" % addr_
                gl[addr_] += 1
            if ins.kind == "jal":
                hi = (cur + 4) & 0xf0000000
                tgt = hi | ins.target
                n2 = sym.get("0x%08x" % tgt, {}).get("name", "0x%08x" % tgt)
                note = "   ; -> %s" % n2
            if ins.kind == "branch":
                bimm = ins.imm & 0xffff
                if bimm >= 0x8000:
                    bimm -= 0x10000
                tgt = (cur + 4 + (bimm << 2)) & 0xffffffff
                note = "   ; br -> 0x%08x" % tgt
            lines.append("  %08x: %-26s%s" % (cur, render(ins)[:26], note))
        if gl:
            lines.append("")
            lines.append("; globals: %s" %
                         ", ".join("0x%08x(x%d)" % (g, c)
                                   for g, c in gl.most_common(10)))
        lines.append("")
        with io.open(os.path.join(ASM_DIR, a + ".asm"), "w",
                     encoding="utf-8") as f:
            f.write("\n".join(lines))
        n += 1
    print("wrote %d asm files into %s/" % (n, ASM_DIR))
    if not addrs:
        print("(no worklist - regenerate with tools/recovery_sheets.py first)")


if __name__ == "__main__":
    main()