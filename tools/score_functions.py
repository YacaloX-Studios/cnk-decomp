"""Score and rank the 440 real SLUS_206.49 functions for decompilation priority.

Reads src/decomp (inventory.csv + real/*.c + stub_addresses.txt), extracts a
feature vector per function, builds the caller->callee graph, auto-classifies
the unlabeled pure-copy leaves, and emits:

  features.csv        per-function feature vector + priority score
  call_edges.csv      caller,callee,callee_kind (real|stub)
  call_graph.dot      graphviz dot (real functions with edges)
  leaf_classify.csv   auto-classified unlabeled leaves
  roadmap.md          ranked decompilation roadmap by category

Run:
  python tools/score_functions.py [src/decomp] [out_dir]
"""

import csv
import io
import os
import re
import sys
import collections

DEFAULT_IN = "src/decomp"
DEFAULT_OUT = "src/decomp/analysis"

CALL_RE = re.compile(r"\b(FUN_[0-9A-Fa-f]{6,8})\b")
GLOB_RE = re.compile(r"\b(DAT_[0-9A-Fa-f]{6,8})\b")
COP2_RE = re.compile(r"\b(setCopReg|copFunction|VCALLMS|QMTC2|CFC2|CTC2|SQ|LQ)\b")
PS2_RE = re.compile(r"\b(ADDU\.QB|PADDSW|PCGTW|PEXCW|PPACW|PMULTH|PMADDH|PMSUBH|"
                    r"PSUBW|PADDW|PSLLW|PSRLW|PSRAW|PEQ)\b")
LOOP_RE = re.compile(r"\b(for|while|do)\s*\(")
FLOAT_RE = re.compile(r"\b(\d+\.\d+f?|[Ff]loat)\b")
BRANCH_RE = re.compile(r"\bif\s*\(")
TYPE_RE = re.compile(r"\b(int|uint|float|ushort|short|char|byte|undefined[1248]?)\s*\*")
CAST_RE = re.compile(r"\([^)]*\*\)")

# --- leaf auto-classification ------------------------------------------------

def strip_comments(t):
    t = re.sub(r"/\*.*?\*/", "", t, flags=re.S)
    t = re.sub(r"//[^\n]*", "", t)
    return t


def _brace_body(txt):
    """Return the text between the outermost { } braces (the function body)."""
    i = txt.find("{")
    if i < 0:
        return txt
    depth = 0
    for j in range(i, len(txt)):
        if txt[j] == "{":
            depth += 1
        elif txt[j] == "}":
            depth -= 1
            if depth == 0:
                return txt[i:j + 1]
    return txt[i:]


def classify_leaf(name, body):
    """Guess the role of a small straight-line function body.

    Returns (kind, detail) where kind in:
      memcpy, memmove, memcmp, ctor, dtor, getter, setter, bitfield,
      convert, clamp, struct_op, other
    """
    txt = strip_comments("".join(body))
    if not txt.strip():
        return "other", "empty"

    # PS2 / COP2 intrinsics -> not a plain leaf
    if COP2_RE.search(txt) or PS2_RE.search(txt):
        return "other", "simd/vu0"

    # pseudo-stub: body reduces to halt_*() only (unrecovered code)
    core = _brace_body(txt)
    core = re.sub(r"\b(halt_baddata|halt_unimplemented)\s*\([^)]*\)", "", core)
    core = re.sub(r"\s+", "", core).replace("{", "").replace("}", "")
    core = core.replace(";", "")
    if not core.strip():
        return "pseudo_stub", "body is halt_* only, no recovered logic"

    writes = re.findall(r"\bparam_\d+\s*(?:\[[^\]]*\]|->\w+)?\s*=", txt)
    reads = re.findall(r"\bparam_\d+\s*(?:\[[^\]]*\]|->\w+)", txt)
    returns = re.findall(r"\breturn\b", txt)
    ifs = len(BRANCH_RE.findall(txt))

    # memcmp: compares fields of two pointers, no writes
    if ifs >= 1 and not writes and "param_1" in txt and "param_2" in txt:
        if "return" in txt:
            return "memcmp", "compares two structs, returns int"
        return "memcmp", "compares two structs"

    # predicate: returns a flag derived from one struct, no writes
    if ifs >= 1 and not writes and "param_1" in txt and "return" in txt and \
            not re.search(r"param_1[^;=]*=", txt):
        return "predicate", "boolean test on struct fields"

    # copy: writes out of param_2 into param_1
    n_cpy = len(re.findall(r"\bparam_1\s*\[[^\]]*\]\s*=\s*param_2\s*\[[^\]]*\]", txt))
    n_cpy_ptr = len(re.findall(r"\b\*param_1\s*=\s*\*param_2\b", txt))
    if (n_cpy >= 4 or n_cpy_ptr >= 1) and ifs == 0:
        return "memcpy", "copies %d fields" % max(n_cpy, n_cpy_ptr)
    if (n_cpy >= 2 or n_cpy_ptr >= 1) and ifs >= 1:
        return "memmove", "overlapping copy w/ branches"

    # pure setter / ctor: only writes, no reads of param_1 back
    if writes and not re.search(r"param_1\s*(?:\[[^\]]*\]|->\w+)?\s*=\s*param_1", txt):
        if returns:
            return "setter", "%d field writes, returns" % len(writes)
        return "ctor", "%d field initializers" % len(writes)

    # thunk / wrapper: single call to another function, nothing else
    calls = [c for c in CALL_RE.findall(txt) if c != name]
    if len(calls) == 1 and not writes and len(returns) <= 1:
        return "thunk", "wraps %s" % calls[0]

    # getter: single return reading param_1
    if returns and len(returns) == 1 and not writes and \
            re.search(r"return\s+.*param_\d", txt):
        return "getter", "reads %d field(s)" % len(reads)

    # bitfield helper
    if re.search(r"[&|]\s*0x", txt) or re.search(r">>\s*\d+", txt) or \
       re.search(r"<<\s*\d+", txt):
        return "bitfield", "mask/shift on ints"

    # clamp: min/max patterns
    if re.search(r"if\s*\([^)]*[<>][^)]*\)", txt) and "=" in txt:
        return "clamp", "bounded assignment"

    # numeric conversion / cast
    if CAST_RE.search(txt) or FLOAT_RE.search(txt):
        return "convert", "cast/float math"

    return "struct_op", "field assignment/read mix"


# --- scoring -----------------------------------------------------------------

def score(f):
    """Priority score: higher = decompile sooner.

    Uses fan-in (how many real functions need this) plus intrinsic value
    signals (globals, COP2, loops, callees) and body size.
    """
    fan_in = f["callers"]
    callee_value = 2.0 * f["callees_real"] + 0.5 * f["callees_stub"]
    return (
        3.0 * fan_in
        + 2.0 * callee_value
        + 2.5 * f["globals"]
        + 3.0 * f["cop2"]
        + 1.5 * f["loops"]
        + 1.0 * f["float_ops"]
        + 0.02 * min(f["body_bytes"], 4000)
    )


def main():
    in_dir = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_IN
    out_dir = sys.argv[2] if len(sys.argv) > 2 else DEFAULT_OUT
    os.makedirs(out_dir, exist_ok=True)

    # load inventory
    funcs = {}
    with io.open(os.path.join(in_dir, "inventory.csv"), encoding="utf-8") as f:
        for row in csv.DictReader(f):
            funcs[row["address"].lower()] = row

    # stub set
    stubs = set()
    sp = os.path.join(in_dir, "stub_addresses.txt")
    if os.path.exists(sp):
        with io.open(sp, encoding="utf-8") as f:
            for line in f:
                line = line.strip()
                if re.fullmatch(r"[0-9a-f]{8}", line):
                    stubs.add("0x" + line)

    # load bodies
    real_dir = os.path.join(in_dir, "real")
    feat = {}
    for fn in os.listdir(real_dir):
        if not fn.endswith(".c"):
            continue
        with io.open(os.path.join(real_dir, fn), encoding="utf-8") as f:
            t = f.read()
        m = re.search(r"raw address: (0x[0-9a-f]+)", t)
        if not m:
            continue
        addr = m.group(1).lower()
        if addr not in funcs:
            continue
        parts = re.split(r"\* =+\s*\*/\s*\n", t, maxsplit=1)
        body_lines = parts[1].split("\n") if len(parts) > 1 else []
        body_txt = strip_comments("".join(body_lines))

        callees = set()
        for c in CALL_RE.findall(body_txt):
            if c != funcs[addr]["raw_name"]:
                callees.add("0x" + c.split("_")[1].lower())

        feat[addr] = {
            "address": addr,
            "raw_name": funcs[addr]["raw_name"],
            "symbol": funcs[addr]["symbol"],
            "module": funcs[addr]["module"],
            "body_bytes": int(funcs[addr]["body_bytes"] or 0),
            "callees": callees,
            "globals": len(set(GLOB_RE.findall(body_txt))),
            "cop2": len(COP2_RE.findall(body_txt)) + len(PS2_RE.findall(body_txt)),
            "loops": len(LOOP_RE.findall(body_txt)),
            "branches": len(BRANCH_RE.findall(body_txt)),
            "float_ops": len(FLOAT_RE.findall(body_txt)),
            "leaf_hint": "",
            "leaf_detail": "",
            "callers": 0,
            "callees_real": 0,
            "callees_stub": 0,
        }

    # classify leaves (only unlabeled)
    for addr, ft in feat.items():
        if ft["symbol"]:
            continue
        fn = os.path.join(real_dir, addr[2:] + ".c")
        if not os.path.exists(fn):
            fn = os.path.join(real_dir, ft["raw_name"] + ".c")
        if os.path.exists(fn):
            with io.open(fn, encoding="utf-8") as f:
                t = f.read()
            body = re.split(r"\* =+\s*\*/\s*\n", t, maxsplit=1)
            body = body[1].split("\n") if len(body) > 1 else t.split("\n")
            ft["leaf_hint"], ft["leaf_detail"] = classify_leaf(ft["raw_name"], body)

    # call graph + fan-in
    for addr, ft in feat.items():
        for c in ft["callees"]:
            if c in feat:
                ft["callees_real"] += 1
                feat[c]["callers"] += 1
            elif c in stubs:
                ft["callees_stub"] += 1

    # compute scores
    for addr, ft in feat.items():
        ft["score"] = round(score(ft), 2)

    # write features.csv
    with io.open(os.path.join(out_dir, "features.csv"), "w", encoding="utf-8",
                 newline="") as f:
        w = csv.writer(f)
        w.writerow(["address", "raw_name", "symbol", "module", "body_bytes",
                    "callees_real", "callees_stub", "callers", "globals",
                    "cop2", "loops", "branches", "float_ops", "leaf_hint",
                    "leaf_detail", "score"])
        for addr in sorted(feat):
            ft = feat[addr]
            w.writerow([ft["address"], ft["raw_name"], ft["symbol"], ft["module"],
                        ft["body_bytes"], ft["callees_real"], ft["callees_stub"],
                        ft["callers"], ft["globals"], ft["cop2"], ft["loops"],
                        ft["branches"], ft["float_ops"], ft["leaf_hint"],
                        ft["leaf_detail"], ft["score"]])

    # write call_edges.csv
    with io.open(os.path.join(out_dir, "call_edges.csv"), "w", encoding="utf-8",
                 newline="") as f:
        w = csv.writer(f)
        w.writerow(["caller", "callee", "callee_kind"])
        for addr in sorted(feat):
            for c in sorted(feat[addr]["callees"]):
                kind = "real" if c in feat else ("stub" if c in stubs else "unknown")
                w.writerow([addr, c, kind])

    # write call_graph.dot
    with io.open(os.path.join(out_dir, "call_graph.dot"), "w", encoding="utf-8") as f:
        f.write("digraph call_graph {\n  rankdir=LR;\n  node [shape=box];\n")
        for addr in sorted(feat):
            if feat[addr]["callees"] or feat[addr]["callers"]:
                lbl = feat[addr]["symbol"] or feat[addr]["raw_name"]
                f.write('  "%s" [label="%s"];\n' % (addr, lbl))
        for addr in sorted(feat):
            for c in sorted(feat[addr]["callees"]):
                if c in feat:
                    f.write('  "%s" -> "%s";\n' % (addr, c))
                elif c in stubs:
                    f.write('  "%s" -> "%s" [style=dotted,label=stub];\n' % (addr, c))
        f.write("}\n")

    # write leaf_classify.csv
    with io.open(os.path.join(out_dir, "leaf_classify.csv"), "w", encoding="utf-8",
                 newline="") as f:
        w = csv.writer(f)
        w.writerow(["address", "raw_name", "module", "body_bytes", "kind", "detail"])
        for addr in sorted(feat):
            ft = feat[addr]
            if ft["leaf_hint"]:
                w.writerow([ft["address"], ft["raw_name"], ft["module"],
                            ft["body_bytes"], ft["leaf_hint"], ft["leaf_detail"]])

    # write roadmap.md
    write_roadmap(os.path.join(out_dir, "roadmap.md"), feat)

    # console summary
    ranked = sorted(feat.values(), key=lambda x: -x["score"])
    print("functions        : %d" % len(feat))
    print("leaf-classified  : %d" % sum(1 for v in feat.values() if v["leaf_hint"]))
    print("real->real edges : %d" % sum(1 for v in feat.values() for _ in v["callees"]
                                        if _ in feat))
    print("real->stub edges : %d" % sum(1 for v in feat.values() for _ in v["callees"]
                                        if _ in stubs))
    print()
    print("%-12s %-22s %6s %6s %6s %6s %8s" %
          ("address", "name", "in", "outR", "glb", "cop2", "score"))
    for ft in ranked[:25]:
        print("%-12s %-22s %6d %6d %6d %6d %8.2f" % (
            ft["address"], ft["symbol"] or ft["raw_name"], ft["callers"],
            ft["callees_real"], ft["globals"], ft["cop2"], ft["score"]))
    print("\nwrote %s/" % out_dir)


def write_roadmap(path, feat):
    by_cat = collections.defaultdict(list)
    for ft in feat.values():
        cat = "unlabeled"
        if ft["symbol"]:
            cat = "symboled"
        elif ft["leaf_hint"] == "pseudo_stub":
            cat = "pseudo_stub"
        elif ft["leaf_hint"] == "other" and ft["leaf_detail"] == "simd/vu0":
            cat = "vu0_unknown"
        elif ft["leaf_hint"] == "thunk":
            cat = "thunk"
        elif ft["leaf_hint"] in ("memcpy", "memmove", "memcmp"):
            cat = "leaf_mem"
        elif ft["leaf_hint"] in ("ctor", "dtor"):
            cat = "leaf_ctor"
        elif ft["leaf_hint"] in ("getter", "setter"):
            cat = "leaf_accessor"
        elif ft["leaf_hint"] in ("bitfield", "convert", "clamp"):
            cat = "leaf_int"
        by_cat[cat].append(ft)

    order = ["unlabeled", "vu0_unknown", "thunk", "leaf_accessor", "leaf_int",
             "leaf_mem", "leaf_ctor", "pseudo_stub", "symboled"]
    with io.open(path, "w", encoding="utf-8") as f:
        f.write("# Decompilation roadmap (SLUS_206.49)\n\n")
        f.write("Scored by `tools/score_functions.py`. Higher = decompile sooner.\n\n")
        f.write("| category | count |\n|---|---|\n")
        for cat in order + [k for k in by_cat if k not in order]:
            f.write("| %s | %d |\n" % (cat, len(by_cat.get(cat, []))))
        f.write("\n")

        for cat in order:
            if cat not in by_cat:
                continue
            f.write("\n## %s\n\n" % cat)
            f.write("| score | address | name | in | outR | glb | cop2 | size | hint |\n")
            f.write("|---|---|---|---|---|---|---|---|---|\n")
            for ft in sorted(by_cat[cat], key=lambda x: -x["score"]):
                hint = ft["leaf_hint"] + (":" + ft["leaf_detail"]
                                          if ft["leaf_detail"] else "")
                f.write("| %.2f | %s | %s | %d | %d | %d | %d | %d | %s |\n" % (
                    ft["score"], ft["address"], ft["symbol"] or ft["raw_name"],
                    ft["callers"], ft["callees_real"], ft["globals"], ft["cop2"],
                    ft["body_bytes"], hint))


if __name__ == "__main__":
    main()
