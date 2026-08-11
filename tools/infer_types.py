"""Phase 3A/3B -- infer function signatures + anonymous structs from the ELF.

Decodes the on-disc SLUS_206.49 (R5900 MIPS, stored little-endian; read a
4-byte word as a LE uint32 to recover the BE opcode) at every function's
address range and gathers *evidence* - never invented names:

Per function:
  args     - which of a0..a3 are read, and their guessed kind
             (ptr when used as a memory base with real offsets)
  return   - kind of value in v0 at jr $ra (ptr/int/void/unknown)
  accesses - (arg, +offset, width, load|store, is_pointer_field) including
             pointer-chasing (load a0+off, then deref result => field is ptr)
  calls    - absolute jal targets (the true callees, incl. for stubs)
  consts   - notable immediates (sizes, masks)
  float/cop2/simd counts from COP1/COP2/MMI/LQ/SQ opcodes

Phase 3B aggregates field-access evidence into anonymous struct candidates:
functions that touch the same (offset,width) signature on a pointer arg are
merged into an Unknown_<offsets> struct with per-field type guesses.

Writes (into src/decomp/analysis/):
  inferred_types.csv    one row per function with the evidence summary
  inferred_types.md     per-function evidence blocks (real_c + top evidence)
  inferred_structs.json anonymous struct candidates (Phase 3B)

Run:
  python tools/infer_types.py [SLUS_206.49] [src/decomp] [src/decomp/analysis]
"""

import io
import csv
import json
import os
import sys
import collections

DEFAULT_BIN = "SLUS_206.49"
DEFAULT_IN  = "src/decomp"
DEFAULT_OUT = "src/decomp/analysis"
MAX_WORDS   = 0x4000 // 4

# --- instruction decode ------------------------------------------------------

# load opcodes -> (width, signed)
LOADS = {0x20: (1, True),  0x21: (2, True),  0x23: (4, True),
         0x24: (1, False), 0x25: (2, False),
         0x22: (4, True),  0x26: (4, True),  0x30: (4, True),   # lwl lwr ll
         0x37: (8, True),  0x1e: (16, False)}                   # ld   lq
STORES = {0x28: 1, 0x29: 2, 0x2b: 4, 0x2a: 4, 0x2e: 4, 0x38: 4,
          0x3f: 8, 0x1f: 16}                                    # sb sh sw swl swr sc sd sq
FLOAT_LOAD = {0x31: 4, 0x35: 8}                                 # lwc1 ldc1
FLOAT_STORE = {0x39: 4, 0x3d: 8}                                # swc1 sdc1

# SPECIAL funct codes
SPECIAL = {
    0x00: "sll",   0x02: "srl",   0x03: "sra",
    0x04: "sllv",  0x06: "srlv",  0x07: "srav",
    0x08: "jr",    0x09: "jalr",
    0x0a: "movz",  0x0b: "movn",
    0x0c: "syscall", 0x0d: "break",
    0x10: "mfhi",  0x11: "mthi",  0x12: "mflo",  0x13: "mtlo",
    0x18: "mult",  0x19: "multu", 0x1a: "div",   0x1b: "divu",
    0x20: "add",   0x21: "addu",  0x22: "sub",   0x23: "subu",
    0x24: "and",   0x25: "or",    0x26: "xor",   0x27: "nor",
    0x28: "slt",   0x29: "sltu",
    0x2a: "dadd",  0x2b: "daddu", 0x2c: "dsub",  0x2d: "dsubu",
}

OPNAME = {
    0x01: "regimm", 0x02: "j",     0x03: "jal",
    0x04: "beq",    0x05: "bne",   0x06: "blez", 0x07: "bgtz",
    0x08: "addi",   0x09: "addiu", 0x0a: "slti", 0x0b: "sltiu",
    0x0c: "andi",   0x0d: "ori",   0x0e: "xori", 0x0f: "lui",
    0x10: "cop0",   0x11: "cop1",  0x12: "cop2", 0x13: "cop3",
    0x14: "beql",   0x15: "bnel",  0x16: "blezl", 0x17: "bgtzl",
    0x1a: "mmi0",   0x1b: "mmi1",  0x1c: "mmi2",  0x1d: "mmi3",
    0x2f: "cache",  0x33: "pref",
}


def s16(v):
    return v - 0x10000 if v & 0x8000 else v


class Instr:
    __slots__ = ("op", "name", "rs", "rt", "rd", "imm", "width",
                 "kind", "target")
    def __init__(self, op, name, rs=0, rt=0, rd=0, imm=0,
                 width=0, kind="other", target=0):
        self.op, self.name = op, name
        self.rs, self.rt, self.rd = rs, rt, rd
        self.imm, self.width, self.kind, self.target = imm, width, kind, target


def decode(w):
    """Decode one R5900 word into an Instr."""
    op = (w >> 26) & 0x3f
    rs = (w >> 21) & 0x1f
    rt = (w >> 16) & 0x1f
    rd = (w >> 11) & 0x1f
    imm = s16(w & 0xffff)

    if op == 0x00:                                   # SPECIAL
        funct = w & 0x3f
        name = SPECIAL.get(funct)
        if name is None:
            return Instr(op, "spec%02x" % funct, rs, rt, rd, kind="other")
        if name == "jr":
            return Instr(op, "jr", rs=rs, kind="jr")
        if name == "jalr":
            return Instr(op, "jalr", rs=rs, rd=rd, kind="jalr")
        if name in ("syscall", "break"):
            return Instr(op, name, kind="syscall")
        if name in ("mfhi", "mflo"):
            return Instr(op, name, rd=rd, kind="arith")
        if name in ("mthi", "mtlo"):
            return Instr(op, name, rs=rs, kind="arith")
        if name in ("movz", "movn"):
            return Instr(op, name, rs=rs, rt=rt, rd=rd, kind="move")
        if name in ("mult", "multu", "div", "divu", "dadd", "daddu",
                    "dsub", "dsubu"):
            return Instr(op, name, rs=rs, rt=rt, kind="arith")
        if name in ("sll", "srl", "sra"):
            return Instr(op, name, rt=rt, rd=rd, imm=(w >> 6) & 0x1f,
                         kind="arith")
        return Instr(op, name, rs=rs, rt=rt, rd=rd, kind="arith")

    if op == 0x03 or op == 0x02:                     # jal / j
        tgt = ((w & 0x03ffffff) << 2)
        return Instr(op, "jal" if op == 0x03 else "j",
                     kind="jal" if op == 0x03 else "j",
                     target=tgt)

    if op in LOADS:
        return Instr(op, "lw", rs=rs, rt=rt, imm=imm, width=LOADS[op][0],
                     kind="load")
    if op in STORES:
        return Instr(op, "sw", rs=rs, rt=rt, imm=imm, width=STORES[op],
                     kind="store")
    if op in FLOAT_LOAD:
        return Instr(op, "lwc1", rs=rs, rt=rt, imm=imm,
                     width=FLOAT_LOAD[op], kind="fload")
    if op in FLOAT_STORE:
        return Instr(op, "swc1", rs=rs, rt=rt, imm=imm,
                     width=FLOAT_STORE[op], kind="fstore")

    if op == 0x11:                                   # cop1 / float
        fmt = (w >> 21) & 0x1f
        funct = w & 0x3f
        if fmt in (0x00, 0x04, 0x02, 0x06):          # mfc1/mtc1/cfc1/ctc1
            return Instr(op, "fmove", rt=rt, rs=rs, kind="fmove")
        return Instr(op, "f%x.%x" % (fmt, funct), rs=rs, rt=rt, rd=rd,
                     kind="float")
    if op == 0x12:
        return Instr(op, "cop2", rs=rs, rt=rt, rd=rd, kind="cop2")
    if op in (0x10, 0x13):
        return Instr(op, "cop%d" % op, rs=rs, rt=rt, rd=rd, kind="other")
    if op in (0x1a, 0x1b, 0x1c, 0x1d):
        return Instr(op, OPNAME[op], rs=rs, rt=rt, rd=rd, kind="simd")

    name = OPNAME.get(op)
    if name is None:
        return Instr(op, "op%02x" % op, rs=rs, rt=rt, rd=rd, kind="other")
    if name == "lui":
        return Instr(op, "lui", rt=rt, imm=((w & 0xffff) << 16), kind="lui")
    if name in ("addi", "addiu", "slti", "sltiu", "andi", "ori", "xori"):
        return Instr(op, name, rs=rs, rt=rt, imm=imm, kind="arith")
    if name in ("beq", "bne", "beql", "bnel", "blez", "bgtz", "blezl",
                "bgtzl", "regimm"):
        return Instr(op, name, rs=rs, rt=rt, imm=imm, kind="branch")
    return Instr(op, name, rs=rs, rt=rt, rd=rd, imm=imm, kind="other")


# --- per-register pointer taint ----------------------------------------------

class Taint:
    __slots__ = ("origin", "off", "ptr", "loaded_from")
    def __init__(self, origin=-1, off=0, ptr=False, loaded_from=None):
        self.origin = origin        # 4..7 = a0..a3 this value derives from
        self.off = off              # accumulated integer offset on the ptr
        self.ptr = ptr              # known pointer-like
        self.loaded_from = loaded_from  # (origin, field_off) of its source


def analyze(words, base_vaddr):
    """Walk one function's instructions, return an evidence dict."""
    taint = [Taint() for _ in range(32)]
    for r in range(4, 8):                            # args = pointers by ABI
        taint[r] = Taint(origin=r, off=0, ptr=True)
    taint[29] = Taint(origin=29, off=0, ptr=True)    # sp

    reads = [0] * 32
    writes = [0] * 32
    fields = {}            # origin(4..7) -> off -> evidence
    consts = collections.Counter()
    calls = set()
    flows = []            # per call-site arg snapshot {target, tags[4]}
    jalr = 0
    floats = simd = cop2 = 0
    v0_written = False
    return_kind = "unknown"
    ret_callee = 0
    ptr_derefs = 0

    def field(origin, off, ins):
        e = fields.setdefault(origin, {}).setdefault(
            off, {"width": ins.width, "load": 0, "store": 0,
                  "ptr": False, "float": 0})
        if ins.kind in ("load", "fload"):
            e["load"] += 1
        else:
            e["store"] += 1
        e["width"] = max(e["width"], ins.width)
        if ins.kind in ("fload", "fstore"):
            e["float"] += 1
        return e

    for i, w in enumerate(words):
        ins = decode(w)
        cur_vaddr = base_vaddr + i * 4

        if ins.kind in ("load", "store", "fload", "fstore"):
            base = taint[ins.rs]
            if base.ptr and base.origin in range(4, 8):
                eff = base.off + ins.imm
                e = field(base.origin, eff, ins)
                if (base.loaded_from is not None and
                        isinstance(base.loaded_from[0], int) and
                        ins.kind in ("load", "fload")):
                    ptr_derefs += 1
                    f0 = fields[base.loaded_from[0]][base.loaded_from[1]]
                    f0["ptr"] = True
                reads[ins.rs] += 1
            if ins.kind in ("load", "fload"):
                if base.ptr and base.origin in range(4, 8):
                    taint[ins.rt] = Taint(origin=base.origin, off=0,
                                          ptr=True,
                                          loaded_from=(base.origin,
                                                       base.off + ins.imm))
                else:
                    taint[ins.rt] = Taint(origin=-1, off=0,
                                          ptr=ins.width in (4, 8, 16))
                writes[ins.rt] += 1
                if ins.rt == 2:
                    v0_written = True
            else:                                    # store: rt is a source
                reads[ins.rt] += 1

        elif ins.kind == "arith":
            if ins.name in ("addi", "addiu", "daddu", "slti", "sltiu",
                            "andi", "ori", "xori"):
                src = taint[ins.rs]
                taint[ins.rt] = Taint(origin=src.origin,
                                      off=(src.off + ins.imm) if src.ptr
                                          else 0,
                                      ptr=src.ptr,
                                      loaded_from=src.loaded_from)
                writes[ins.rt] += 1
                reads[ins.rs] += 1
                if ins.rt == 2 or ins.rs == 2:
                    v0_written = True
                if (ins.name in ("andi", "ori", "xori") and
                        ins.rs != 29 and ins.imm and
                        (ins.imm & (ins.imm + 1)) == 0):
                    consts["mask 0x%x" % (ins.imm & 0xffffffff)] += 1
                elif (ins.name in ("addi", "addiu") and ins.rs not in (29, 31)
                        and 0 < ins.imm <= 0x4000 and ins.imm % 4 == 0):
                    consts["sz 0x%x" % ins.imm] += 1
            else:                                    # 3-reg compute
                src = taint[ins.rs]
                taint[ins.rd] = Taint(origin=src.origin, off=0,
                                      ptr=src.ptr,
                                      loaded_from=src.loaded_from)
                writes[ins.rd] += 1
                reads[ins.rs] += 1
                if ins.rd == 2:
                    v0_written = True

        elif ins.kind == "move":
            src = taint[ins.rs]
            taint[ins.rd] = Taint(origin=src.origin, off=src.off,
                                  ptr=src.ptr, loaded_from=src.loaded_from)
            writes[ins.rd] += 1
            if ins.rd == 2:
                v0_written = True

        elif ins.kind == "lui":
            taint[ins.rt] = Taint(origin=-1, off=0, ptr=False)
            consts["lui 0x%x" % (ins.imm & 0xffffffff)] += 1
            writes[ins.rt] += 1

        elif ins.kind in ("jr", "jalr"):
            reads[ins.rs] += 1

        if ins.kind == "jal":
            hi = (cur_vaddr + 4) & 0xf0000000
            target = hi | ins.target
            calls.add(target)
            reads[4] += 1; reads[5] += 1; reads[6] += 1; reads[7] += 1
            writes[31] += 1                           # ra link
            # snapshot what is in a0..a3 at the call site
            tags = []
            for k in range(4):
                t = taint[4 + k]
                if t.origin in range(4, 8):
                    tags.append("own_a%d" % (t.origin - 4))
                elif (t.loaded_from is not None and
                        t.loaded_from[0] == "ret" and t.loaded_from[1]):
                    tags.append("ret_0x%08x" % t.loaded_from[1])
                elif t.ptr or t.loaded_from is not None:
                    tags.append("ptr")
                else:
                    tags.append("int")
            flows.append({"target": target, "tags": tags})
            # v0 holds the callee's return afterwards (for return-propagation)
            taint[2] = Taint(origin=-1, off=0, ptr=True,
                             loaded_from=("ret", target))
        elif ins.kind == "jalr":
            jalr += 1
            taint[2] = Taint(origin=-1, off=0, ptr=True,
                             loaded_from=("ret", 0))

        if ins.kind == "float":
            floats += 1
        elif ins.kind == "simd":
            simd += 1
        elif ins.kind == "cop2":
            cop2 += 1

        if ins.kind == "jr" and ins.rs == 31:         # jr $ra
            v = taint[2]
            if v.loaded_from is not None and v.loaded_from[0] == "ret":
                return_kind = "ret"                   # passthrough of callee
                ret_callee = v.loaded_from[1]
            elif v.ptr or (v.loaded_from is not None and
                           isinstance(v.loaded_from[0], int)):
                return_kind = "ptr"
            elif not v0_written:
                return_kind = "void"
            else:
                return_kind = "int"
            break

    # ---- aggregate ----
    arg_kinds = {}
    for slot, reg in enumerate(range(4, 8)):
        if reads[reg] == 0 and writes[reg] == 0:
            arg_kinds[slot] = "-"
        elif fields.get(reg):
            arg_kinds[slot] = "ptr"
        elif reads[reg] > 0:
            arg_kinds[slot] = "int"
        else:
            arg_kinds[slot] = "w"

    top_consts = [v for v, _ in consts.most_common(8)]

    return {
        "fields": fields,
        "arg_kinds": arg_kinds,
        "return_kind": return_kind,
        "ret_callee": ret_callee,
        "calls": sorted(calls),
        "flows": flows,
        "jalr": jalr,
        "consts": top_consts[:6],
        "floats": floats > 0 or any(
            e["float"] for o in fields for e in fields[o].values()),
        "simd": simd > 0,
        "cop2": cop2 > 0,
        "ptr_derefs": ptr_derefs,
        "n_words": len(words),
    }


def confidence(ev, status):
    if status == "stub_thunk":
        return 0.2
    c = 0.25
    used = [a for a, s in ev["arg_kinds"].items() if s != "-"]
    if used:
        c += 0.10
    ptr_args = [a for a, s in ev["arg_kinds"].items() if s == "ptr"]
    c += 0.05 * min(len(ptr_args), 3)
    if ev["return_kind"] in ("ptr", "int", "void"):
        c += 0.10
    if ev["calls"] or ev["jalr"]:
        c += 0.10
    if ev["ptr_derefs"]:
        c += 0.10
    if ev["floats"]:
        c += 0.05
    if ev["cop2"] or ev["simd"]:
        c += 0.05
    return min(c, 0.95)


def struct_signature(fields):
    return tuple(sorted((off, e["width"]) for off, e in fields.items()))


def field_type(e):
    if e["float"]:
        return "float"
    if e["ptr"]:
        return "ptr"
    if e["width"] >= 16:
        return "vec"
    if e["width"] == 8:
        return "i64"
    if e["width"] == 4:
        return "int"
    if e["width"] == 2:
        return "short"
    return "char"


def fmt_args(ak):
    return ";".join("a%d=%s" % (k, ak[k]) for k in sorted(ak))


def fmt_fields(fs):
    parts = []
    for origin in sorted(fs):
        for off in sorted(fs[origin]):
            e = fs[origin][off]
            tag = e["ptr"] and "p" or (e["float"] and "f" or "")
            parts.append("a%d+0x%x:%d%s" % (origin - 4, off, e["width"], tag))
    return ";".join(parts)


def main():
    bin_path = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_BIN
    in_dir = sys.argv[2] if len(sys.argv) > 2 else DEFAULT_IN
    out_dir = sys.argv[3] if len(sys.argv) > 3 else DEFAULT_OUT
    os.makedirs(out_dir, exist_ok=True)

    data = io.open(bin_path, "rb").read()

    rows = []
    with io.open(os.path.join(out_dir, "symbols.csv"), encoding="utf-8") as f:
        for r in csv.DictReader(f):
            rows.append(r)

    evs = {}
    for r in rows:
        addr = int(r["address"], 16)
        foff = int(r["file_offset"])
        size = min(max(int(r["size"]), 4), MAX_WORDS * 4)
        if foff + size > len(data) or size <= 0:
            continue
        words = [int.from_bytes(data[foff + i * 4: foff + i * 4 + 4], "little")
                 for i in range(size // 4)]
        evs[r["address"]] = analyze(words, addr)
    print("decoded %d / %d functions" % (len(evs), len(rows)))

    # ---- inferred_types.csv ----
    with io.open(os.path.join(out_dir, "inferred_types.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["address", "name", "symbol", "module", "status",
                    "args", "return_kind", "accesses", "calls", "jalr",
                    "consts", "ptr_derefs", "float", "cop2", "simd",
                    "confidence"])
        for r in rows:
            ev = evs.get(r["address"])
            if ev is None:
                continue
            w.writerow([
                r["address"], r["name"], r["symbol"], r["module"],
                r["status"],
                fmt_args(ev["arg_kinds"]),
                ev["return_kind"],
                fmt_fields(ev["fields"]),
                ";".join("0x%08x" % c for c in ev["calls"][:12]),
                ev["jalr"],
                ";".join(ev["consts"]),
                ev["ptr_derefs"],
                int(ev["floats"]), int(ev["cop2"]), int(ev["simd"]),
                "%.2f" % confidence(ev, r["status"]),
            ])
    print("wrote %s" % os.path.join(out_dir, "inferred_types.csv"))

    # ---- call-site argument flow (for type propagation) ----
    with io.open(os.path.join(out_dir, "call_arg_flow.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["caller", "callee", "a0", "a1", "a2", "a3"])
        for r in rows:
            ev = evs.get(r["address"])
            if ev is None:
                continue
            for fl in ev["flows"]:
                w.writerow(["0x%08x" % int(r["address"], 16),
                            "0x%08x" % fl["target"]] + fl["tags"])
    print("wrote %s (%d call sites)" %
          (os.path.join(out_dir, "call_arg_flow.csv"),
           sum(len(evs[a]["flows"]) for a in evs)))

    # ---- binary call edges: the real call graph (stubs included) ----
    edges = set()
    for r in rows:
        ev = evs.get(r["address"])
        if ev is None:
            continue
        for c in ev["calls"]:
            edges.add((r["address"], "0x%08x" % c))
    with io.open(os.path.join(out_dir, "binary_call_edges.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["caller", "callee"])
        for a, b in sorted(edges):
            w.writerow([a, b])
    print("wrote %s (%d edges)" %
          (os.path.join(out_dir, "binary_call_edges.csv"), len(edges)))

    # ---- Phase 3B: anonymous struct candidates ----
    # 1) Exact-signature candidates: functions that touch the SAME set of
    #    (offset,width) on a pointer arg -> one anonymous struct each.
    # 2) Field mesh: per (arg,offset) aggregate evidence across ALL funcs,
    #    so shared fields like a0+0x3c4[ptr] (seen from several funcs with
    #    otherwise-different signatures) stay observable without merging
    #    unrelated huge structs.
    sigs = collections.defaultdict(list)   # (origin, sig) -> members
    mesh = collections.defaultdict(list)   # (func, origin, offset) -> ev
    for a, ev in evs.items():
        for origin, f in ev["fields"].items():
            sig = struct_signature(f)
            if sig:
                sigs[(origin, sig)].append((a, f, origin))
            for off, e in f.items():
                mesh[(origin, off)].append((a, e))

    cands = []
    for (origin, sig), members in sigs.items():
        if len(members) < 2:
            continue
        merged = {}
        seen_funcs = set()
        for a, f, _ in members:
            seen_funcs.add(a)
            for off, e in f.items():
                m = merged.setdefault(off, {"width": e["width"], "load": 0,
                                            "store": 0, "ptr": False,
                                            "float": 0})
                m["load"] += e["load"]
                m["store"] += e["store"]
                m["ptr"] = m["ptr"] or e["ptr"]
                m["float"] += e["float"]
                m["width"] = max(m["width"], e["width"])
        name = "Unknown_a%d_" % (origin - 4) + "_".join("%x" % off
                                                        for off, _ in sig)
        cands.append({
            "name": name,
            "fields": [{"offset": off, "type": field_type(merged[off]),
                        "width": merged[off]["width"],
                        "load": merged[off]["load"],
                        "store": merged[off]["store"],
                        "ptr": merged[off]["ptr"],
                        "float": merged[off]["float"] > 0}
                       for off, _ in sig],
            "evidence": len(seen_funcs),
            "functions": sorted(seen_funcs)[:40],
        })
    cands.sort(key=lambda c: -c["evidence"])

    # shared fields: offset accessed by >=2 funcs on the same arg, with
    # stable width (candidate substruct that turns up from many call sites)
    shared = []
    for (origin, off), members in mesh.items():
        if len(members) < 2:
            continue
        widths = {e["width"] for _, e in members}
        if len(widths) > 1:
            continue
        e0 = members[0][1]
        shared.append({
            "arg": origin - 4, "offset": off,
            "width": e0["width"],
            "type": field_type(e0),
            "evidence": len(members),
            "functions": [a for a, _ in members[:40]],
        })
    shared.sort(key=lambda s: -s["evidence"])

    with io.open(os.path.join(out_dir, "inferred_structs.json"), "w",
                 encoding="utf-8") as f:
        json.dump({"structs": cands, "shared_fields": shared}, f, indent=1)
    print("wrote %s (%d candidates, %d shared fields)" %
          (os.path.join(out_dir, "inferred_structs.json"),
           len(cands), len(shared)))

    # ---- per-function markdown evidence blocks ----
    md_rows = [r for r in rows if r["status"] == "real_c"]
    seen = {r["address"] for r in md_rows}
    by_conf = sorted(evs.items(),
                     key=lambda kv: -confidence(kv[1], "stub_code"))
    for a, ev in by_conf:
        if len(md_rows) >= 80 or a in seen:
            continue
        md_rows.append(next(r for r in rows if r["address"] == a))
        seen.add(a)

    lines = ["# Inferred signatures (Phase 3A) - SLUS_206.49", ""]
    lines.append("Evidence from binary decoding; no invented names. "
                 "HIGH conf>=0.7, MEDIUM >=0.5, LOW otherwise.")
    lines.append("")
    for r in md_rows:
        ev = evs[r["address"]]
        c = confidence(ev, r["status"])
        lvl = "HIGH" if c >= 0.7 else ("MEDIUM" if c >= 0.5 else "LOW")
        lines.append("%s  %s  confidence=%.2f [%s]" % (
            r["address"], r["symbol"] or r["name"], c, lvl))
        lines.append("  args:")
        for k in sorted(ev["arg_kinds"]):
            lines.append("    a%d -> %s" % (k, ev["arg_kinds"][k]))
        lines.append("  return: %s" % ev["return_kind"])
        if ev["fields"]:
            lines.append("  accesses:")
            for origin in sorted(ev["fields"]):
                for off in sorted(ev["fields"][origin]):
                    e = ev["fields"][origin][off]
                    tag = ("ptr" if e["ptr"] else ("float" if e["float"]
                                                   else "data"))
                    lines.append("    a%d + 0x%x (%d bytes, %s, %dl/%ds)" % (
                        origin - 4, off, e["width"], tag, e["load"],
                        e["store"]))
        if ev["calls"] or ev["jalr"]:
            lines.append("  calls:")
            for c in ev["calls"][:12]:
                lines.append("    0x%08x" % c)
            if ev["jalr"]:
                lines.append("    (%d indirect jalr)" % ev["jalr"])
        if ev["consts"]:
            lines.append("  consts: %s" % ", ".join(ev["consts"]))
        lines.append("")
    with io.open(os.path.join(out_dir, "inferred_types.md"), "w",
                 encoding="utf-8") as f:
        f.write("\n".join(lines))
    print("wrote %s (%d blocks)" %
          (os.path.join(out_dir, "inferred_types.md"), len(md_rows)))

    # console probe of known functions
    for probe in ("0x001071e0", "0x00405dc0", "0x0010c820"):
        ev = evs.get(probe)
        if not ev:
            continue
        print()
        print("== %s ==" % probe)
        print("  args    :", ev["arg_kinds"])
        print("  return  :", ev["return_kind"])
        print("  calls   :", ["0x%08x" % c for c in ev["calls"]])
        for origin in sorted(ev["fields"]):
            fld = {hex(o): {"w": e["width"], "l": e["load"], "s": e["store"],
                            "p": e["ptr"], "f": e["float"]}
                   for o, e in ev["fields"][origin].items()}
            print("  a%d fields: %s" % (origin - 4, fld))


if __name__ == "__main__":
    main()