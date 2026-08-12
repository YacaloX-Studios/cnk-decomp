#!/usr/bin/env python
"""Phase 3F - characterize the unidentified hub functions for the naming pass.

Static dissect of the top fan-in stubs: flat disassembly with global-table
base resolution (lui -> data page 0xxxxxx) and annotated calls, plus the
propagated-call signature. Output is the raw material a human uses to give
`0x00511940` etc. a real name in Ghidra.

Usage:
    python tools/dissect_hubs.py [addr addr ...]
"""
import collections
import csv
import io
import os
import sys

sys.path.insert(0, os.path.dirname(__file__))
from infer_types import decode  # noqa: E402

BIN = "SLUS_206.49"
OUT_DIR = "src/decomp/analysis"
DEFAULT_HUBS = [
    "0x00511940",   # fan-in 1763 : absolute maximal entry
    "0x004ba240",   # fan-in 1154
    "0x00511860",   # fan-in 703 : pure jalr leaf
    "0x0050fea0",   # fan-in 496
    "0x00510a20",   # fan-in 260
    "0x00503ab0",   # fan-in 109
    "0x004d9c40",   # fan-in 306
]

REG = {0: "zero", 1: "at", 2: "v0", 3: "v1", 4: "a0", 5: "a1", 6: "a2",
       7: "a3", 8: "t0", 9: "t1", 10: "t2", 11: "t3", 12: "t4", 13: "t5",
       14: "t6", 15: "t7", 16: "s0", 17: "s1", 18: "s2", 19: "s3",
       20: "s4", 21: "s5", 22: "s6", 23: "s7", 24: "t8", 25: "t9",
       26: "k0", 27: "k1", 28: "gp", 29: "sp", 30: "fp", 31: "ra"}


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def render(ins):
    r = REG
    if ins.kind == "jal":
        return "jal   0x%08x" % (0xf0000000 | 0 | ins.target)  # fixed below
    if ins.kind == "j":
        return "j     0x%08x" % ins.target
    if ins.kind in ("jr", "jalr"):
        rd = (", $%s" % r.get(ins.rd, "?%d" % ins.rd)) if ins.kind == "jalr" else ""
        return "%-7s$%s%s" % (ins.kind, r.get(ins.rs, ins.rs), rd)
    if ins.kind in ("load", "store", "fload", "fstore"):
        name = ins.name if ins.kind == "load" else ins.name
        return "%-7s$%s, %+d($%s)" % (name, r.get(ins.rt, ins.rt), ins.imm,
                                      r.get(ins.rs, ins.rs))
    if ins.kind == "lui":
        return "lui   $%s, 0x%08x" % (r.get(ins.rt, ins.rt), ins.imm)
    if ins.kind == "branch":
        return "%-7s$%s, $%s, %+d" % (ins.name, r.get(ins.rs, ins.rs),
                                      r.get(ins.rt, ins.rt), (ins.imm << 2))
    if ins.kind in ("shift", "arith") and ins.name in ("sll", "srl", "sra"):
        return "%s $%s, $%s, %d" % (ins.name, r.get(ins.rd, ins.rd),
                                    r.get(ins.rt, ins.rt), ins.imm)
    if ins.kind in ("shift", "arith") and ins.name in ("sllv", "srlv", "srav"):
        return "%s $%s, $%s, $%s" % (ins.name, r.get(ins.rd, ins.rd),
                                     r.get(ins.rt, ins.rt),
                                     r.get(ins.rs, ins.rs))
    if ins.kind == "arith" and ins.name in ("add", "addu", "sub", "subu",
                                            "and", "or", "xor", "nor",
                                            "slt", "sltu", "dadd", "daddu",
                                            "dsub", "dsubu"):
        return "%s $%s, $%s, $%s" % (ins.name, r.get(ins.rd, ins.rd),
                                     r.get(ins.rs, ins.rs),
                                     r.get(ins.rt, ins.rt))
    if ins.kind == "arith":
        return "%-7s$%s, $%s, %+d" % (ins.name, r.get(ins.rt, ins.rt),
                                      r.get(ins.rs, ins.rs), ins.imm)
    if ins.kind in ("fmove", "float", "cop2", "simd"):
        return "%-7s$%s,$%s,$%s" % (ins.name, r.get(ins.rd, ins.rd),
                                    r.get(ins.rs, ins.rs), r.get(ins.rt, ins.rt))
    if ins.kind == "move":
        return "%-7s$%s, $%s, $%s" % (ins.name, r.get(ins.rd, ins.rd),
                                      r.get(ins.rs, ins.rs),
                                      r.get(ins.rt, ins.rt))
    if ins.kind == "syscall":
        return "%-7s" % ins.name
    return "%-8s$%s,$%s,$%s" % (ins.name or "?", r.get(ins.rs, ins.rs),
                                r.get(ins.rt, ins.rt), r.get(ins.rd, ins.rd))


def main():
    addrs = sys.argv[1:] or DEFAULT_HUBS
    data = io.open(BIN, "rb").read()
    sym = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "symbols.csv"))}
    inf = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "inferred_types.csv"))}
    prop = load_csv(os.path.join(OUT_DIR, "propagated_types.csv"))
    hub_prop = collections.defaultdict(dict)
    for r in prop:
        if not r["label"].startswith("Unknown_"):
            continue
        hub_prop[r["address"]][r["arg"]] = r["label"]

    lines = ["# Hub dissections (Phase 3F)", ""]
    cand = []

    def role_hyp(gcount, vtbl, loops, abs_calls, reads_global_singleton):
        parts = []
        if vtbl:
            parts.append("virtual-method dispatch (vtable+%s)" %
                         "/".join("0x%x" % o for o in vtbl))
        if reads_global_singleton:
            parts.append("global-singleton accessor")
        if loops:
            parts.append("linked-list walk / loop")
        if abs_calls:
            parts.append("sub-calls %s" %
                         ", ".join("0x%08x" % c for c in abs_calls[:4]))
        return "; ".join(parts) or "trivial/leaf"

    for a in addrs:
        s = sym.get(a)
        if s is None:
            print("no symbol for", a)
            continue
        foff = int(s["file_offset"])
        size = int(s["size"])
        words = [data][0][foff:foff + size]
        n = min(size // 4, 400)
        lines.append("## %s  (status %s, size %d, fan-in %s, calls %s)" %
                     (a, s.get("status"), size, s.get("callees", "-"),
                      s.get("calls", "-")))
        lines.append("")
        if a in hub_prop:
            args = ", ".join("%s *%s" % (hub_prop[a][k], k)
                             for k in ("a0", "a1", "a2", "a3") if k in hub_prop[a])
            lines.append("propagated signature: %s%s" %
                         (args or "?", ""))
            lines.append("")
        if a in inf:
            t = inf[a]
            lines.append("evidence: args=%s ret=%s calls=%s" %
                         (t["args"], t["return_kind"], t["calls"][:80]))
            lines.append("")
        gi = 0
        pages = {}
        gl = collections.Counter()
        abs_calls = []
        loops = 0
        vtbl_off = []
        vpending = None            # reg that holds the loaded vtable pointer
        for i in range(0, len(words), 4):
            w = int.from_bytes(words[i:i + 4], "little")
            ins = decode(w)
            cur = int(s["address"], 16) + i
            note = ""
            if ins.kind == "lui":
                pages[ins.rt] = ins.imm
            if ins.kind in ("load", "store", "fload", "fstore") and \
                    pages.get(ins.rs) is not None:
                addr = (pages[ins.rs] + (ins.imm & 0xffff)) & 0xffffffff
                note = "   ; GLOBAL 0x%08x" % addr
                gl[addr] += 1
            if ins.kind == "load" and ins.rs == vpending:
                # vtable load: lw t9, OFF(t9) after lw t9, 0($aX)
                vtbl_off.append((ins.imm & 0xffff) if ins.imm < 0x8000
                                else ins.imm)
            if ins.kind == "jal":
                hi = (cur + 4) & 0xf0000000
                tgt = hi | ins.target
                abs_calls.append(tgt)
                t = inf.get("0x%08x" % tgt)
                if t:
                    note = "   ; -> %s  (%s) ret=%s" % (
                        sym.get("0x%08x" % tgt, {}).get("name", "0x%08x" % tgt),
                        t["args"][:28], t["return_kind"])
                else:
                    note = "   ; -> 0x%08x" % tgt
            if ins.kind == "jalr":
                note = "   ; (indirect)"
                vpending = None
            if ins.kind == "load" and ins.name == "lw" and ins.imm == 0 and \
                    ins.rt in (24, 25):
                vpending = ins.rt          # lw tX, 0(...) -> possible vtable
            if ins.kind == "branch":
                bimm = ins.imm & 0xffff
                if bimm >= 0x8000:
                    bimm -= 0x10000
                tgt = (cur + 4 + (bimm << 2)) & 0xffffffff
                if tgt < cur:
                    loops += 1
                note = "   ; br -> 0x%08x" % tgt
            if not note and ins.kind not in ("jr",):
                pass
            lines.append("  %08x: %-24s%s" % (cur, render(ins)[:24], note))
            if ins.kind == "jr":
                gi = i
        lines.append("")
        if gl:
            top = gl.most_common(8)
            lines.append("global table refs: %d distinct, top %s" %
                         (len(gl), ", ".join("0x%08x(x%d)" % (a_, c) for a_, c in top)))
        else:
            lines.append("no data-page refs decoded")
        lines.append("")

        singleton = any(g >= 0x00725000 for g in gl)
        hyp = role_hyp(len(gl), vtbl_off, loops, abs_calls, singleton)
        cand.append([a, s.get("status"), size, ";".join(
            "0x%08x" % g for g, _ in gl.most_common(6)),
            "/".join("0x%x" % o for o in sorted(set(vtbl_off))),
            len(abs_calls), loops, singleton, hyp])

    with io.open(os.path.join(OUT_DIR, "hub_candidates.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["address", "status", "size", "globals", "vtable_offsets",
                    "abs_calls", "loops", "singleton_global", "pattern_hyp"])
        for c in cand:
            w.writerow(c)
    print("wrote %s (%d hubs)" % (os.path.join(OUT_DIR, "hub_candidates.csv"), len(cand)))

    lines.append("## Role hypotheses (confirm in Ghidra)")
    lines.append("")
    for c in cand:
        lines.append("- `%s`  size=%s  globals=[%s]  vtable=[%s]  loops=%s" %
                     (c[0], c[2], c[3] or "-", c[4] or "-", c[6]))
        lines.append("    pattern: %s" % c[8])
        lines.append("")

    report = os.path.join(OUT_DIR, "hub_report.md")
    with io.open(report, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    print("wrote %s (%d hubs, %d lines)" % (report, len(addrs), len(lines)))


if __name__ == "__main__":
    main()