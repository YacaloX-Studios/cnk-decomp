#!/usr/bin/env python
"""Phase 3G - architecture naming propagation from identified hubs.

Once a human names a hub in Ghidra (0x00511940 = unregister/release,
0x00511860-cluster = engine facade, ...) that name should spread. This tool
computes, for every one of the 14,439 functions, which named hub it
BELONGS to, at what distance, and in which direction, so the architecture
labels apply with evidence instead of by hand:

    upstream   n is reachable from hub (n calls it transitively)
    downstream hub reaches n (n is on the hub's call path)
    peer       n shares >= PEER_FRAC of hub's callers (co-called core)

Naming seeds come from `hub_names.csv` (address,name,note). If missing the
tool falls back to the Phase 3F hub candidates with proposed names so the
pass can start before any rename. Re-run after each rename to re-colour the
whole map.

Outputs (src/decomp/analysis/):
    arch_map.csv       per function: primary hub, direction, distance, peer-flag
    arch_clusters.md   per-hub reachability + top members + arg-tag profile
"""
import collections
import csv
import io
import os

OUT_DIR = "src/decomp/analysis"
SEEDS = os.path.join(OUT_DIR, "hub_names.csv")
PEER_FRAC = 0.10
MAX_DIST = 100000          # effectively unbounded (full reachability)
MAX_AUTO = 60              # auto-seeded hubs on top of explicit names


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def bfs(start, adj):
    dist = {start: 0}
    q = collections.deque([start])
    while q:
        v = q.popleft()
        if dist[v] >= MAX_DIST:
            continue
        for nb in adj.get(v, ()):
            if nb not in dist:
                dist[nb] = dist[v] + 1
                q.append(nb)
    return dist


def main():
    edges = [tuple(r.values()) for r in load_csv(os.path.join(OUT_DIR, "binary_call_edges.csv"))]
    sym = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "symbols.csv"))}
    cand = list(load_csv(os.path.join(OUT_DIR, "hub_candidates.csv")))
    flow = load_csv(os.path.join(OUT_DIR, "call_arg_flow.csv"))

    G = collections.defaultdict(list)
    Gr = collections.defaultdict(list)
    for f, c in edges:
        G[f].append(c)
        Gr[c].append(f)

    # ---- seeds: hub_names.csv overrides, else proposed from candidates ----
    seeds = {}        # address -> {"name","note"}
    proposed = {
        "0x00511940": ("Obj_Release_Unregister", "singleton 0x725d40; vtable+0x4c; refcount-1; list-walk"),
        "0x004ba240": ("Dispatcher_Alloc", "thunk into VU0 kernel 0x0042c238 + 0x004bab00"),
        "0x00511860": ("Engine_Facade_Accessor", "globals 0x725ee0/0x725f18; virtual vtable+0xb4"),
        "0x0050fea0": ("Facade_Wrapper", "3 sub-calls 0x00510320/0x0050e720/0x0050ea30"),
        "0x00510a20": ("Facade_Thunk", "tail-calls 0x00511940"),
        "0x00503ab0": ("Object_Method_Dispatch", "virtual vtable+0x80"),
        "0x004d9c40": ("Facade_Accessor2", "global 0x724dc8; sub-calls"),
    }
    for row in cand:
        proposed.setdefault(row["address"], (row.get("pattern_hyp", ""), row.get("pattern_hyp", "")))
    if os.path.exists(SEEDS):
        for r in load_csv(SEEDS):
            seeds[r["address"]] = {"name": r["name"], "note": r.get("note", "")}
        print("seed overrides: %d named hubs" % len(seeds))
    for a, (nm, note) in proposed.items():
        seeds.setdefault(a, {"name": nm, "note": note})
    # auto-seed the rest of the hubs (fan-in >= 40, any status) so the
    # whole binary gets a first-pass colouring; reviewer renames the top ones.
    auto = []
    for row in load_csv(os.path.join(OUT_DIR, "hub_metrics.csv")):
        if int(row.get("in_deg") or 0) >= 40:
            auto.append(row)
    auto.sort(key=lambda r: -int(r["in_deg"]))
    for row in auto[:MAX_AUTO]:
        a = row["address"]
        if a not in seeds:
            seeds[a] = {"name": "HUB_UNKNOWN_%s" % a[6:10],
                        "note": "auto-seed fan-in %s" % row["in_deg"]}
    hubs = sorted(seeds, key=lambda a: -int(a or "0", 16))
    print("seeds: %d named + auto hubs" % len(hubs))

    # ---- reachability + assignment ----
    up = {h: bfs(h, Gr) for h in hubs}
    down = {h: bfs(h, G) for h in hubs}
    fanin = {h: len(Gr[h]) for h in hubs}

    def primary(fn):
        best, bestd = None, 10 ** 9
        for h in hubs:
            d = up[h].get(fn)
            if d is not None and d < bestd:
                best, bestd = h, d
        return (best, bestd)

    map_rows = []
    allf = set(G) | set(Gr)
    allf.update(f for f, _ in edges)
    allf = set(x for f, c in edges for x in (f, c)) | set(Gr) | set(G)
    callers_of = {fn: set(Gr.get(fn, ())) for fn in allf}
    peers = {h: set() for h in hubs}
    for h in hubs:
        p = len(Gr[h])
        need = max(5, int(PEER_FRAC * p))
        hubcall = set(Gr[h])
        for fn in allf:
            if fn == h or not fn.startswith("0x"):
                continue
            if len(callers_of[fn] & hubcall) >= need:
                peers[h].add(fn)
    for fn in sorted(allf):
        h, d = primary(fn)
        dd = None
        direction = "-"
        if h is not None:
            ddv = down[h].get(fn)
            if d is not None:
                direction = "upstream"
            elif ddv is not None:
                d, direction = ddv, "downstream"
        peer = any(fn in peers[h0] for h0 in hubs)
        map_rows.append((fn, h or "", direction, str(d) if d is not None else "",
                         "1" if peer else "0"))
    with io.open(os.path.join(OUT_DIR, "arch_map.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["address", "hub", "direction", "distance", "peer"])
        w.writerows(map_rows)
    print("wrote %s (%d rows)" % (os.path.join(OUT_DIR, "arch_map.csv"), len(map_rows)))

    # ---- arg-tag profile per hub (call-site a0..a3) ----
    tagprof = collections.defaultdict(collections.Counter)
    for fl in flow:
        if fl["callee"] in seeds:
            h = fl["callee"]
            for k in ("a0", "a1", "a2", "a3"):
                t = fl[k]
                tagprof[h][t if t.startswith(("own_", "ret_")) else t] += 1

    # ---- arch_clusters.md ----
    lines = ["# Architecture clusters from named hubs (Phase 3G)",
             "", "Seeds: %d hubs (edit `hub_names.csv` to rename; re-run to re-colour)." % len(hubs),
             "Distances unbounded for reachability; `peer` = shares >= %d%% of the hub's callers." %
             (PEER_FRAC * 100), ""]
    unreached = sum(1 for r in map_rows if not r[1])
    lines.append("mapped: %d / %d functions  (unreached: %d)" %
                 (len(map_rows) - unreached, len(map_rows), unreached))
    lines.append("")
    lines.append("## Cluster by hub (fan-in desc)")
    lines.append("")
    order = sorted(hubs, key=lambda h: -int(fanin[h]))
    for h in order:
        nm = seeds[h]["name"]
        upc = {fn for fn, d in up[h].items()}
        dtot = {fn for fn in down[h]}
        up_or_down = upc | dtot
        lines.append("## %s  `%s`" % (h, nm))
        lines.append("")
        lines.append("- fan-in %d  |  upstream reach %d  |  downstream reach %d  |  peers %d"
                     % (fanin[h], len(upc), len(dtot), len(peers[h])))
        if seeds[h]["note"]:
            lines.append("- evidence: %s" % seeds[h]["note"])
        prof = tagprof[h]
        if prof:
            top = ", ".join("%s×%d" % (t, c) for t, c in prof.most_common(8))
            lines.append("- call-site args: %s" % top)
        def score_key(a):
            try:
                return float(sym.get(a, {}).get("score", "0"))
            except (TypeError, ValueError):
                return 0.0

        members = sorted(upc, key=score_key, reverse=True)[:6]
        named = [a for a in members if sym.get(a, {}).get("symbol")]
        lines.append("- top members: %s" % ", ".join(members or ["-"]))
        if named:
            lines.append("- symboled members: %s" % ", ".join(
                "%s(%s)" % (a, sym[a].get("symbol")) for a in named))
        if peers[h]:
            pl = sorted(peers[h], key=lambda a: -len(Gr.get(a, ())))[:8]
            lines.append("- co-called peers: %s" % ", ".join(pl))
        lines.append("")

    report = os.path.join(OUT_DIR, "arch_clusters.md")
    with io.open(report, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")

    # ---- footer: what to seed next -----------------------------------
    unmapped = [r for r in map_rows if not r[1]]
    indeg_m = collections.Counter()
    for r in map_rows:
        for f, c in edges:
            if c == r[0]:
                indeg_m[r[0]] += 1
    nxt = sorted(unmapped, key=lambda r: -indeg_m[r[0]])[:8]
    lines.append("## Seed next (biggest unreached fan-in)")
    lines.append("")
    for r in nxt:
        lines.append("- `%s` fan-in %d" % (r[0], indeg_m[r[0]]))
    lines.append("")
    with io.open(report, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    print("wrote %s" % report)

    # console summary
    for h in order:
        upc = {fn for fn in up[h]}
        print("%-12s -%-16s upstream=%d peers=%d" %
              (h, seeds[h]["name"][:16], len(upc), len(peers[h])))


if __name__ == "__main__":
    main()