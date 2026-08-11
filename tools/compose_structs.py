#!/usr/bin/env python
"""Phase 3H - compose Type B member derives + co-occurrence substructs.

The Phase 3B mesh (`inferred_structs.json` -> `shared_fields`) records, for one
field on one pointer arg, which functions touch it. This tool *composes* that
mesh with the per-function access records (`inferred_types.csv`) to answer two
questions that the seed list leaves open:

  1. member derives: for each shared field, what width / kind does each
     touching *site* actually use? Same width everywhere -> the member is
     stable (SURE). A site using a different width or a pointer chase on a
     field others read as int -> SPLIT (overload / struct boundary).
  2. co-occurrence: which offsets on the same arg appear *together* inside
     the same function bodies most often? Strength >= 3 shares ==> candidate
     subsequence of a struct (the "compose" step the seeds are hints for).

Evidence only, no invented names; layout-derived identities only.

Outputs:
    src/decomp/analysis/composed_structs.json   member derives + co-occurrence groups
    src/decomp/analysis/composed_structs.md     readable report
"""
import collections
import csv
import io
import json
import os
import re

OUT_DIR = os.path.join("src", "decomp", "analysis")
ACCESS_RE = re.compile(r"a(\d+)\+0x([0-9a-f]+):(\d+)")


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def parse_accesses(s):
    out = collections.defaultdict(dict)  # (arg, off) -> width
    if not s:
        return out
    for arg, off, w in ACCESS_RE.findall(s):
        out[(int(arg), int(off, 16))] = int(w)
    return out


def main():
    with io.open(os.path.join(OUT_DIR, "inferred_structs.json"),
                 encoding="utf-8") as f:
        j = json.load(f)
    shared = j["shared_fields"]
    types = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "inferred_types.csv"))}
    sym = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "symbols.csv"))}

    def site_owner(a):
        s = sym.get(a, {})
        return s.get("name") if s.get("status") in ("real_c", "real_logic") else None

    # ---- 1. member derives ---------------------------------------------------
    derives = []  # one entry per shared field, with per-site widths + verdict
    for x in shared:
        arg = x["arg"]
        off = x["offset"]
        sites = {}
        for a in x["functions"]:
            acc = parse_accesses(types.get(a, {}).get("accesses", ""))
            w = acc.get((arg, off))
            if w is None:
                continue
            sites[a] = w
        widths = collections.Counter((sites.values()))
        dominant = widths.most_common(1)[0][0] if widths else None
        split = {w for w, c in widths.items() if c and w != dominant} if dominant is not None else set()
        derives.append({
            "arg": arg,
            "offset": off,
            "mesh_type": x["type"],
            "mesh_width": x["width"],
            "evidence": x["evidence"],
            "sites": len(sites),
            "dominant_width": dominant,
            "widths": sorted(widths),
            "split_widths": sorted(split),
            "split": bool(split),
            "functions": x["functions"],
        })

    # ---- 2. co-occurrence ----------------------------------------------------
    # overlap matrix over shared fields on the same arg
    field_of = collections.defaultdict(list)  # (fn, arg) -> [shared idx]
    for i, x in enumerate(shared):
        for a in x["functions"]:
            field_of[(a, x["arg"])].append(i)
    cooc = collections.Counter()  # (i, j) sorted pair
    for ids in field_of.values():
        ids = sorted(ids)
        cnt = len(ids)
        for a1 in range(cnt):
            for a2 in range(a1 + 1, cnt):
                cooc[(ids[a1], ids[a2])] += 1
    # group the mesh into connected components on edges strong enough to
    # plausibly be the same substruct (>= MIN_SHARE of the smaller site set)
    MIN_SHARE = 3
    parent = list(range(len(shared)))

    def find(x):
        while parent[x] != x:
            parent[x] = parent[parent[x]]
            x = parent[x]
        return x

    def union(a1, a2):
        pa, pb = find(a1), find(a2)
        if pa != pb:
            parent[pa] = pb

    for (i, k), n in cooc.items():
        if n >= MIN_SHARE and \
                n >= min(shared[i]["evidence"], shared[k]["evidence"]):
            union(i, k)
    groups = collections.defaultdict(list)
    for i in range(len(shared)):
        groups[find(i)].append(i)
    # only keep groups that actually co-occur (>=2 members) and share an arg
    composed = []
    for ids in groups.values():
        if len(ids) < 2:
            continue
        args = {shared[i]["arg"] for i in ids}
        if len(args) != 1:
            continue
        arg = next(iter(args))
        rows = []
        for i in sorted(ids, key=lambda x: shared[x]["offset"]):
            s = shared[i]
            d = derives[i]
            rows.append({"offset": s["offset"], "type": s["type"],
                         "width": s["width"], "evidence": s["evidence"],
                         "split": d["split"]})
        eff = min(s["evidence"] for s in
                  [shared[i] for i in ids])  # pair cooc strength
        covered = {off for i in ids for off in
                   [shared[i]["offset"]]}
        composed.append({
            "arg": arg,
            "members": rows,
            "offsets": sorted(covered),
            "strength": eff,
        })
    composed.sort(key=lambda g: (-len(g["members"]), -g["strength"]))

    # ---- outputs -------------------------------------------------------------
    with io.open(os.path.join(OUT_DIR, "composed_structs.json"), "w",
                 encoding="utf-8") as f:
        json.dump({
            "member_derives": derives,
            "cooccur_groups": composed,
        }, f, indent=1)

    lines = ["# Phase 3H - composed Type B substructs (SLUS_206.49)",
             "",
             "member_derives: per shared-field, the widths each site uses.",
             "  split_widths non-empty == overload/struct-boundary must split.",
             "",
             "cooccur_groups: shared fields on one arg appearing together in",
             "the same function bodies >= 3 times - candidate substructs.",
             ""]
    n_split = sum(1 for d in derives if d["split"])
    lines.append("Sites: %d shared fields, %d split across sites, %d groups." %
                 (len(derives), n_split, len(composed)))
    lines.append("")
    lines.append("## Split members (need a struct boundary or overload)")
    lines.append("")
    for d in derives:
        if not d["split"]:
            continue
        ex = [a for a in d["functions"] if
              parse_accesses(types.get(a, {}).get("accesses", "")).get(
                  (d["arg"], d["offset"])) != d["dominant_width"]][:4]
        lines.append("- a%d+0x%x mesh w%d, sites w%d..%d  e.g. %s" %
                     (d["arg"], d["offset"], d["mesh_width"],
                      min(d["widths"]), max(d["widths"]),
                      ", ".join(a[6:10] for a in ex)))
    lines.append("")
    lines.append("## Composed group candidates (arg, offsets, members)")
    lines.append("")
    for g in composed:
        rows = "; ".join("0x%x:%s%d%s" %
                         (m["offset"], m["type"],
                          m["width"], "*" if m["split"] else "")
                         for m in g["members"])
        lines.append("- a%d  [%s]  strength=%d" %
                     (g["arg"], ", ".join("0x%x" % o for o in g["offsets"]),
                      g["strength"]))
        lines.append("    %s" % rows)
    lines.append("")

    report = os.path.join(OUT_DIR, "composed_structs.md")
    with io.open(report, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))
    print("wrote %s (%d derive rows, %d split, %d groups)" %
          (report[len("src/decomp/analysis/"):], len(derives), n_split,
           len(composed)))


if __name__ == "__main__":
    main()