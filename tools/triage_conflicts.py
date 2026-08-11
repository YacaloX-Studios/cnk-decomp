#!/usr/bin/env python
"""Phase 3F - type-conflict triage for the human review pass.

type_conflicts.csv holds every slot where propagation disagreed. Most of
those are noise (generic ptr-vs-int); the reviewer cares about the few real
collisions. This tool ranks and groups them:

- S-S  two different promoted layouts on the same call argument
       -> the anonymous struct must SPLIT (the strongest finding).
- S-I  one caller queues a struct where a callee reads plain int
       -> overload / wrong arg tuple / producer of a scalar field.
- S-P  struct vs generic ptr -> weak evidence on one side, auto-resolved.
- P-I  generic ptr vs int -> ABI ambiguity, lowest value.

Outputs (src/decomp/analysis/):
    conflicts_priority.csv  every conflict, ranked (class, score)
    conflict_report.md      human-readable top S-S / S-I with full context
"""
import collections
import csv
import io
import json
import os

OUT_DIR = "src/decomp/analysis"
CLASS_ORDER = ["S-S", "S-I", "S-P", "P-I"]


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def cls_of(la, lb, kind):
    sa = la.startswith("Unknown_")
    sb = lb.startswith("Unknown_")
    if sa and sb:
        return "S-S"
    if (sa and lb in ("int", "ptr")) or (sb and la in ("int", "ptr")):
        return "S-IP" if kind == "ptr_int" else "S-I"
    return "P-I" if kind == "ptr_int" else "S-P"


def main():
    conf = load_csv(os.path.join(OUT_DIR, "type_conflicts.csv"))
    prop = load_csv(os.path.join(OUT_DIR, "propagated_types.csv"))
    sym = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "symbols.csv"))}
    inf = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "inferred_types.csv"))}
    with io.open(os.path.join(OUT_DIR, "inferred_structs.json"), encoding="utf-8") as f:
        j = json.load(f)
    structs = {}
    for s in j["structs"]:
        structs[s["name"]] = {"evidence": s["evidence"],
                              "fields": s["fields"],
                              "members": s.get("functions", [])}

    def ev_of(lab):
        if lab.startswith("Unknown_"):
            return structs.get(lab, {}).get("evidence", 0)
        return 0

    # final labels (winner) per slot so we know who won
    winner = {}
    for r in prop:
        winner[(r["address"], r["arg"])] = r["label"]

    rows = []
    for c in conf:
        cls = cls_of(c["label_a"], c["label_b"], c.get("kind", ""))
        ea = ev_of(c["label_a"])
        eb = ev_of(c["label_b"])
        score = max(1, min(ea or 2, eb or 2))
        win = winner.get((c["address"], c["arg"]), "")
        loser = c["label_b"] if win == c["label_a"] else c["label_a"]
        rows.append((cls, score, c, ea, eb, win, loser))
    rows.sort(key=lambda r: (-CLASS_ORDER.index(r[0]), -r[1]))

    with io.open(os.path.join(OUT_DIR, "conflicts_priority.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["class", "score", "address", "name", "status", "arg",
                    "label_a", "label_b", "prov_a", "prov_b", "winner",
                    "loser", "ev_a", "ev_b", "via", "kind"])
        for cls, score, c, ea, eb, win, loser in rows:
            s = sym.get(c["address"], {})
            w.writerow([cls, score, c["address"], s.get("name", ""),
                        s.get("status", ""), c["arg"], c["label_a"],
                        c["label_b"], c["prov_a"], c["prov_b"],
                        win, loser, ea, eb, c["via"], c.get("kind", "")])
    print("wrote %s (%d ranked conflicts)" %
          (os.path.join(OUT_DIR, "conflicts_priority.csv"), len(rows)))

    ccount = collections.Counter(r[0] for r in rows)
    print("classes: " + "  ".join("%s=%d" % (k, ccount.get(k, 0))
                                  for k in CLASS_ORDER))

    # ---- conflict_report.md ---------------------------------------------------
    lines = []
    lines.append("# Conflict review shortlist (Phase 3F)")
    lines.append("")
    lines.append("Raise `type_conflicts.csv` to a decision list. Order: S-S first, then S-I by score.")
    lines.append("")
    for cls in CLASS_ORDER:
        sub = [r for r in rows if r[0] == cls]
        lines.append("## %s  (%d)" % (cls, len(sub)))
        lines.append("")
        if cls.startswith("S-S"):
            pairs = collections.defaultdict(list)
            for _, score, c, ea, eb, win, loser in sub:
                pairs[(c["label_a"], c["label_b"])].append((score, c, ea, eb))
            pairs = sorted(pairs.items(), key=lambda kv: -min(e[0] for e in kv[1]))
            for (la, lb), site in pairs[:25]:
                ea = site[0][2]
                eb = site[0][3]
                fe_a = structs[la]["fields"] if la in structs else []
                fe_b = structs[lb]["fields"] if lb in structs else []
                lines.append("### `%s` vs `%s`  (ev %d vs %d, %d sites)" %
                             (la, lb, ea, eb, len(site)))
                lines.append("")
                lines.append("A fields: %s" % ", ".join(
                    "0x%x:%s%s" % (f["offset"], f["type"], "*" if f.get("ptr") else "")
                    for f in sorted(fe_a, key=lambda x: x["offset"])))
                lines.append("B fields: %s" % ", ".join(
                    "0x%x:%s%s" % (f["offset"], f["type"], "*" if f.get("ptr") else "")
                    for f in sorted(fe_b, key=lambda x: x["offset"])))
                lines.append("")
                for score, c, _, _ in site[:10]:
                    s = sym.get(c["address"], {})
                    won = c["label_a"] if c["label_a"] == (winner.get(
                        (c["address"], c["arg"]))) else c["label_b"]
                    lines.append("  - `%s` %s  %s→%s  **winner=%s**" %
                                 (c["address"], c["arg"], c["via"].split("->")[0],
                                  c["via"].rsplit("->", 1)[1], won))
                lines.append("")
        else:
            for _, score, c, ea, eb, win, loser in sub[:25]:
                s = sym.get(c["address"], {})
                lines.append("- `%s` a%s %s  `%s`/`%s` → winner=%s  (%s→%s, ev %d/%d, %s)" %
                             (c["address"], c["arg"], s.get("name", ""),
                              c["label_a"], c["label_b"], win,
                              c["via"].split("->")[0] if "->" in c["via"] else c["via"],
                              c["via"].rsplit("->", 1)[1] if "->" in c["via"] else "",
                              ea, eb, c.get("prov_a", "")))
    report = os.path.join(OUT_DIR, "conflict_report.md")
    with io.open(report, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    print("wrote %s" % report)


if __name__ == "__main__":
    main()