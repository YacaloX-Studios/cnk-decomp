#!/usr/bin/env python
"""Phase 4A - recoverable-function worklist (Roadmap step 1).

Merges every analysis product into one ranked, evidence-dense recovery list
for the real_logic functions (the 147 unlabeled bodies with real code) plus
a sanity view of the symboled 67 and the pseudo_stubs' frontier.

For each actionable function the sheet includes:
  - score + features (geometry/subsystem weight, COP2, loops, globals)
  - inferred signature (args + return kind, confidence)
  - propagated struct labels per argument (best label + provenance)
  - caller / callee summaries (real + stub frontier)
  - arch-map hub / direction.
No C is written: this is the "decompile this next" guidance layer.

Outputs:
    src/decomp/analysis/recovery_worklist.csv   one row per logic function
    src/decomp/analysis/recovery_sheets/*.md    per-function evidence sheet
"""
import collections
import csv
import io
import os

OUT_DIR = os.path.join("src", "decomp", "analysis")
SHEET_DIR = os.path.join(OUT_DIR, "recovery_sheets")
REAL = ("real_c", "real_logic")
REALISH = ("real_c", "real_logic", "stub_thunk")


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def main():
    os.makedirs(SHEET_DIR, exist_ok=True)
    features = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "features.csv"))}
    types = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "inferred_types.csv"))}
    prop = load_csv(os.path.join(OUT_DIR, "propagated_types.csv"))
    arch = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "arch_map.csv"))}
    states = {r["address"]: r["status"] for r in load_csv(os.path.join(OUT_DIR, "symbols.csv"))}
    edges = load_csv(os.path.join(OUT_DIR, "call_edges.csv"))
    conflicts = load_csv(os.path.join(OUT_DIR, "type_conflicts.csv"))

    # group propagation rows per function+arg, keeping strongest provenance
    prov_rank = {"DIRECT": 5, "STRUCT_FIELD": 4, "CALL_PROPAGATED": 3,
                 "RETURN_PROPAGATED": 2, "HEURISTIC": 1}
    prop_by_fn = collections.defaultdict(dict)
    for r in prop:
        key = (r["address"], r["arg"])
        cur = prop_by_fn[key]
        if r["label"] not in cur or \
                prov_rank.get(r["provenance"], 0) > prov_rank.get(cur.get("provenance"), 0):
            cur.update(r)

    conflicts_by_fn = collections.Counter(r["address"] for r in conflicts)
    callers_by_fn = collections.Counter(r["caller"] for r in edges)
    callees_by_fn = collections.defaultdict(list)
    for r in edges:
        callees_by_fn[r["caller"]].append(r["callee"])

    def status_of(a):
        return states.get(a, "")

    rows = []
    for addr, t in types.items():
        status = t["status"]
        if status not in REAL:
            continue
        f = features.get(addr, {})
        labels = sorted((k[1], v["label"]) for k, v in prop_by_fn.items()
                        if k[0] == addr)
        callees = sorted(set(callees_by_fn.get(addr, [])))
        calls_real = [c for c in callees if status_of(c) in REAL]
        frontier = sorted(c for c in callees
                          if status_of(c) not in ("real_c", "real_logic",
                                                  "stub_thunk"))
        a = arch.get(addr, {})
        rows.append({
            "address": addr,
            "name": types[addr]["name"],
            "status": status,
            "symboled": status == "real_c" and bool(types[addr].get("symbol")),
            "module": t.get("module") or f.get("module") or "-",
            "score": f.get("score", ""),
            "leaf_hint": f.get("leaf_hint", ""),
            "body_bytes": f.get("body_bytes", ""),
            "cop2": f.get("cop2", ""),
            "loops": f.get("loops", ""),
            "globals": f.get("globals", ""),
            "return_kind": t.get("return_kind", ""),
            "confidence": t.get("confidence", ""),
            "args": t.get("args", ""),
            "labels": "|".join("%s=%s" % (k, v) for k, v in labels),
            "callers": callers_by_fn.get(addr, 0),
            "callees": len(callees),
            "calls_real": len(calls_real),
            "stub_frontier": "|".join(frontier)[:200],
            "conflicts": conflicts_by_fn.get(addr, 0),
            "hub": a.get("hub", ""),
            "hub_dir": a.get("direction", ""),
        })

    def sort_key(r):
        sc = float(r["score"]) if r["score"] else 0.0
        return ((-1 if r["status"] == "real_logic" else 0), -sc, r["address"])

    rows.sort(key=sort_key)

    with io.open(os.path.join(OUT_DIR, "recovery_worklist.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        w.writeheader()
        w.writerows(rows)

    # per-function evidence sheet
    for r in rows:
        addr = r["address"]
        t = types.get(addr, {})
        hub = arch.get(addr, {})
        callees = sorted(set(callees_by_fn.get(addr, [])))
        real_callees = [c for c in callees if status_of(c) in REAL]
        st_callees = [c for c in callees if status_of(c) not in REALISH]
        sheet = [
            "# %s  %s  [%s]" % (addr, r["name"], r["status"]),
            "",
            "- module: %s  |  leaf: %s  |  bytes: %s  |  cop2: %s  |  loops: %s  |  globals: %s" %
            (r["module"], r["leaf_hint"], r["body_bytes"], r["cop2"],
             r["loops"], r["globals"]),
            "- score: %s  |  callers: %s  |  callees: %s  |  real edges: %s  |  conflicts: %s" %
            (r["score"], r["callers"], r["callees"], r["calls_real"],
             r["conflicts"]),
            "- asm: recovery_asm/%s.asm  (regenerate a la tools/recovery_asm.py)" % addr,
            "- signature (conf %s): %s -> %s" %
            (r["confidence"], r["args"], r["return_kind"]),
            "- propagated labels: %s" % (r["labels"] or "-"),
            "- hub: %s (%s, dist %s)" %
            (hub.get("hub", "-"), hub.get("direction", "-"),
             hub.get("distance", "-")),
            "- stub frontier: %s" % (r["stub_frontier"] or "-"),
            "",
            "## accesses",
            "```",
            t.get("accesses", "-")[:1500],
            "```",
            "",
            "## consts",
            "```",
            t.get("consts", "-")[:600],
            "```",
            "",
            "## calls",
            "```",
        ]
        for c in real_callees[:15]:
            sheet.append("    %s -> %s  (real)" % (addr, c))
        for c in st_callees[:15]:
            sheet.append("    %s -> %s  (stub)" % (addr, c))
        callers = [e for e in edges if e["callee"] == addr]
        for e in callers[:10]:
            if status_of(e["caller"]) in REAL:
                sheet.append("    %s <- %s  (real caller)" % (addr, e["caller"]))
        if len(sheet) == len(["## calls", "```"]):
            sheet.append("    (no call graph rows)")
        sheet += ["```", ""]
        with io.open(os.path.join(SHEET_DIR, addr + ".md"), "w",
                     encoding="utf-8") as f:
            f.write("\n".join(sheet))

    n_logic = sum(1 for r in rows if r["status"] == "real_logic")
    print("wrote %s/recovery_worklist.csv (%d logic + %d real_c rows)" %
          (OUT_DIR, n_logic, len(rows) - n_logic))
    print("wrote %d sheets into %s/" % (len(rows), SHEET_DIR))
    print("top-10 to recover next:")
    for r in rows[:10]:
        print("  %s %-28s score=%s leaf=%s" %
              (r["address"], r["name"][:28], r["score"], r["leaf_hint"]))


if __name__ == "__main__":
    main()