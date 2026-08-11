#!/usr/bin/env python
"""Type propagation across the binary call graph (Phase 3C/D).

Reads inferred_types.csv, call_arg_flow.csv, binary_call_edges.csv and
inferred_structs.json and pushes arg/return type labels around the call
graph with explicit provenance and conflict detection.

Provenance levels (high -> low):
    DIRECT             arg fields read in the function itself
    STRUCT_FIELD       pointer used as a base but no multi-member candidate
    CALL_PROPAGATED    caller forwards its own arg to the callee slot
    RETURN_PROPAGATED  arg receives the return of another call
    HEURISTIC          generic pointer/int seen at the call site

Outputs (src/decomp/analysis/):
    propagated_types.csv   final label per (function, arg slot, return)
    type_conflicts.csv     disagreeing labels with provenance + via
    type_chains.json       per-label propagation chains
    hub_metrics.csv        in/out degree + approx. betweenness
"""
import collections
import csv
import io
import json
import os
import random

OUT_DIR = "src/decomp/analysis"
PROV_RANK = {
    "DIRECT": 5,
    "STRUCT_FIELD": 4,
    "CALL_PROPAGATED": 3,
    "RETURN_PROPAGATED": 2,
    "HEURISTIC": 1,
}
SAMPLE_SOURCES = 400          # betweenness approximation sources
MAX_PASSES = 6
DECAY = 0.85                  # confidence decay per propagation hop


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def parse_args(args_str):
    out = {}
    for tok in args_str.split(";"):
        if not tok:
            continue
        slot, _, kind = tok.partition("=")
        if slot[:1] == "a" and slot[1:2].isdigit():
            out[int(slot[1:2])] = kind
    return out


def parse_accesses(acc_str):
    """accesses -> {arg_slot: {offset: width}}"""
    import re
    pat = re.compile(r"^a([0-3])([+-])0x([0-9a-fA-F]+):(\d+)")
    out = {}
    for tok in acc_str.split(";"):
        m = pat.match(tok)
        if not m:
            continue
        slot = int(m.group(1))
        ofs = int(m.group(3), 16)
        if m.group(2) == "-":
            ofs = -ofs
        w = int(m.group(4))
        out.setdefault(slot, {})[ofs] = max(out.get(slot, {}).get(ofs, 0), w)
    return out


def cand_name(slot, offsets):
    return "Unknown_a%d_%s" % (slot, "_".join("%x" % o for o in sorted(offsets)))


def main():
    os.makedirs(OUT_DIR, exist_ok=True)

    types = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "inferred_types.csv"))}
    flows = load_csv(os.path.join(OUT_DIR, "call_arg_flow.csv"))
    edges = [tuple(r.values()) for r in load_csv(os.path.join(OUT_DIR, "binary_call_edges.csv"))]
    try:
        sym = {r["address"]: r for r in load_csv(os.path.join(OUT_DIR, "symbols.csv"))}
    except Exception:
        sym = {}

    with io.open(os.path.join(OUT_DIR, "inferred_structs.json"), encoding="utf-8") as f:
        structs_json = json.load(f)
    structs = {}
    for s in structs_json["structs"]:
        structs[s["name"]] = {
            "fields": [(x["offset"], x["type"], x["width"]) for x in s["fields"]],
            "members": set(s.get("functions", [])),
        }

    # ---- per-slot labels -------------------------------------------
    # slot state: {"label","prov","conf","hops","vias"}
    def blank():
        return None

    slots = {}          # (func, slot) -> state dict or None
    rets = {}           # func -> {"kind","callee"}

    def get(func, slot):
        return slots.get((func, slot))

    def set_(func, slot, label, prov, conf, via, hops=0):
        cur = slots.get((func, slot))
        rank = PROV_RANK[prov]
        if cur is None:
            slots[(func, slot)] = {
                "label": label, "prov": prov, "conf": conf, "hops": hops,
                "vias": [via]}
            return
        cr = PROV_RANK[cur["prov"]]
        if label == cur["label"]:
            cur["conf"] = max(cur["conf"], conf)
            cur["hops"] = max(cur["hops"], hops)
            if via:
                cur["vias"].append(via)
            return
        old_label = cur["label"]
        old_prov = cur["prov"]
        hard = (label != "ptr" and old_label != "ptr") or \
               (label == "int" and old_label == "ptr") or \
               (label == "ptr" and old_label == "int")
        if rank > cr or (rank == cr and conf > cur["conf"]):
            cur.update(label=label, prov=prov, conf=conf, hops=hops)
            cur["vias"] = [via] if via else []
        elif hard and rank == cr:
            pass                                  # equal strength, keep current
        if hard:
            _conflicts.append({
                "address": func, "arg": "a%d" % slot,
                "label_a": old_label, "label_b": label,
                "prov_a": old_prov, "prov_b": prov,
                "via": via or "-",
                "kind": "hard" if (label != "ptr" and old_label != "ptr")
                        else "ptr_int",
            })

    _conflicts = []

    def resolve_ret(func, depth=0):
        """Effective return (label, prov) chasing passthrough chains."""
        if depth > 8:
            return ("ptr", "HEURISTIC")
        r = types.get(func)
        if r is None:
            return ("ptr", "HEURISTIC")
        k = r["return_kind"]
        if k == "ptr":
            return ("ptr", "DIRECT")
        if k == "int":
            return ("int", "DIRECT")
        if k in ("void", "unknown"):
            return (None, None)
        # k == "ret": passthrough of ret_callee
        rc = r.get("ret_callee")
        if rc and rc != func:
            return resolve_ret(rc, depth + 1)
        return ("ptr", "RETURN_PROPAGATED")

    # ---- initial labels (DIRECT / STRUCT_FIELD / int) --------------
    for addr, t in types.items():
        acc = parse_accesses(t["accesses"])
        for slot, kind in parse_args(t["args"]).items():
            offs = acc.get(slot)
            if kind == "ptr":
                ss = sorted(offs) if offs else []
                nm = cand_name(slot, ss) if ss else None
                if nm and nm in structs:
                    conf = min(0.95, 0.6 + 0.15 * len(ss))
                    set_(addr, slot, nm, "DIRECT", conf, "-")
                else:
                    set_(addr, slot, "ptr", "STRUCT_FIELD", 0.55, "-")
            elif kind == "int":
                set_(addr, slot, "int", "DIRECT", 0.5, "-")

    # ---- propagation passes ----------------------------------------
    by_caller = collections.defaultdict(list)
    for fl in flows:
        by_caller[fl["caller"]].append(fl)

    for _pass in range(MAX_PASSES):
        changed = 0
        for caller, fls in by_caller.items():
            for fl in fls:
                callee = fl["callee"]
                for k in range(4):
                    tag = fl["a%d" % k]
                    if tag.startswith("own_a"):
                        src_slot = int(tag[5:])
                        src = get(caller, src_slot)
                        if not src or src["label"] is None:
                            continue
                        cur = get(callee, k)
                        prov = "CALL_PROPAGATED"
                        conf = src["conf"] * DECAY
                        hops = (src.get("hops") or 0) + 1
                        before = (cur["label"], cur["prov"]) if cur else None
                        set_(callee, k, src["label"], prov, conf,
                             "%s->%s" % (caller, callee), hops)
                        after = get(callee, k)
                        if (cur is None and after) or (cur and after and
                                (after["label"], after["prov"]) != before):
                            changed += 1
                    elif tag.startswith("ret_0x"):
                        target = "0x%s" % tag[6:]
                        lab, _ = resolve_ret(target)
                        if lab is None:
                            continue
                        cur = get(callee, k)
                        before = (cur["label"], cur["prov"]) if cur else None
                        set_(callee, k, lab, "RETURN_PROPAGATED", 0.6 * DECAY,
                             "%s->%s" % (target, callee), 1)
                        after = get(callee, k)
                        if (cur is None and after) or (cur and after and
                                (after["label"], after["prov"]) != before):
                            changed += 1
                    elif tag in ("ptr", "int"):
                        if get(callee, k) is None:
                            set_(callee, k, tag, "HEURISTIC", 0.4,
                                 "%s->%s" % (caller, callee))
                            changed += 1
        if changed == 0:
            break

    # ---- return rows --------------------------------------------------
    ret_labels = {}
    for addr in types:
        lab, prov = resolve_ret(addr)
        if lab:
            ret_labels[addr] = (lab, prov)

    # ---- emitters ------------------------------------------------------
    name_of = lambda a: sym.get(a, {}).get("name", a)          # noqa: E731
    mod_of = lambda a: sym.get(a, {}).get("module", "")          # noqa: E731
    st_of = lambda a: sym.get(a, {}).get("status", "")           # noqa: E731

    orders = {"a0": 0, "a1": 1, "a2": 2, "a3": 3, "ret": 4}
    with io.open(os.path.join(OUT_DIR, "propagated_types.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["address", "name", "module", "status", "arg", "label",
                    "provenance", "confidence", "hops", "vias"])
        rows = []
        for (func, slot), stt in slots.items():
            rows.append((orders.get("a%d" % slot, 9), func, slot, stt))
        for func, (lab, prov) in ret_labels.items():
            rows.append((orders["ret"], func, "ret",
                         {"label": lab, "prov": prov, "conf": 0.7,
                          "hops": 0, "vias": ["-"]}))
        rows.sort(key=lambda r: (r[1], r[0]))
        for _, func, slot, stt in rows:
            vias = ";".join(sorted(set(stt["vias"])))
            w.writerow([func, name_of(func), mod_of(func), st_of(func),
                        "a%d" % slot if isinstance(slot, int) else slot,
                        stt["label"], stt["prov"], "%.2f" % stt["conf"],
                        stt["hops"], vias])
    n_rows = len(rows)
    print("wrote %s (%d rows)" %
          (os.path.join(OUT_DIR, "propagated_types.csv"), n_rows))

    if _conflicts:
        seen = set()
        dedup = []
        for c in _conflicts:
            key = (c["address"], c["arg"],
                   frozenset((c["label_a"], c["label_b"])))
            if key in seen:
                continue
            seen.add(key)
            dedup.append(c)
        with io.open(os.path.join(OUT_DIR, "type_conflicts.csv"), "w",
                     encoding="utf-8", newline="") as f:
            w = csv.writer(f)
            w.writerow(["address", "name", "status", "arg", "label_a",
                        "label_b", "prov_a", "prov_b", "via", "kind"])
            for c in dedup:
                w.writerow([c["address"], name_of(c["address"]),
                            st_of(c["address"]), c["arg"], c["label_a"],
                            c["label_b"], c["prov_a"], c["prov_b"],
                            c["via"], c["kind"]])
        print("wrote %s (%d conflicts, %d raw)" %
              (os.path.join(OUT_DIR, "type_conflicts.csv"),
               len(dedup), len(_conflicts)))
    else:
        print("type_conflicts.csv: no conflicts")

    # ---- type chains ---------------------------------------------------
    chains = {}
    for (func, slot), stt in slots.items():
        lab = stt["label"]
        if not lab.startswith("Unknown_"):
            continue
        ch = chains.setdefault(lab, {
            "fields": structs.get(lab, {}).get("fields", []),
            "members": set(structs.get(lab, {}).get("members", [])),
            "chain_edges": [],
            "propagated_into": set(),
            "hops": 0,
            "prov": stt["prov"],
        })
        ch["hops"] = max(ch["hops"], stt["hops"])
        if stt["prov"] != "DIRECT":
            ch["propagated_into"].add(func)
        for via in stt["vias"]:
            if "->" in via and via != "-":
                ch["chain_edges"].append(via)
    for ch in chains.values():
        ch["chain_edges"] = sorted(set(ch["chain_edges"]))
        ch["members"] = sorted(ch["members"])
        ch["propagated_into"] = sorted(ch["propagated_into"])
    with io.open(os.path.join(OUT_DIR, "type_chains.json"), "w",
                 encoding="utf-8") as f:
        json.dump(chains, f, indent=1)
    print("wrote %s (%d labeled structs chained)" %
          (os.path.join(OUT_DIR, "type_chains.json"), len(chains)))

    # ---- hub metrics -----------------------------------------------------
    indeg = collections.Counter(c for _, c in edges)
    outdeg = collections.Counter(f for f, _ in edges)
    degree = collections.Counter()
    for f, c in edges:
        degree[f] += 1
        degree[c] += 1
    hubs(edges, types, name_of, mod_of, st_of, indeg, outdeg, degree)


def hubs(edges, types, name_of, mod_of, st_of, indeg, outdeg, degree):
    """Weak components + sampled Brandes betweenness approximation."""
    nodes = set()
    for f, c in edges:
        nodes.add(f)
        nodes.add(c)
    nodes.update(types)

    parent = {n: n for n in nodes}

    def find(x):
        while parent[x] != x:
            parent[x] = parent[parent[x]]
            x = parent[x]
        return x

    def union(a, b):
        ra, rb = find(a), find(b)
        if ra != rb:
            parent[ra] = rb

    for f, c in edges:
        union(f, c)
    comp = collections.Counter(find(n) for n in nodes)
    g = collections.defaultdict(list)
    for f, c in edges:
        g[f].append(c)

    srcs = list(nodes)
    if len(srcs) > SAMPLE_SOURCES:
        random.seed(7)
        srcs = random.sample(srcs, SAMPLE_SOURCES)

    btw = collections.Counter()
    for s in srcs:
        pred = {s: []}
        sigma = collections.Counter(); sigma[s] = 1
        dist = {s: 0}
        q = collections.deque([s])
        order = []
        while q:
            v = q.popleft()
            order.append(v)
            for nb in g.get(v, ()):
                if nb not in dist:
                    dist[nb] = dist[v] + 1
                    q.append(nb)
                if dist[nb] == dist[v] + 1:
                    sigma[nb] += sigma[v]
                    pred.setdefault(nb, []).append(v)
        delta = collections.Counter()
        for v in reversed(order):
            for p_ in pred.get(v, ()):
                if sigma[v]:
                    delta[p_] += (sigma[p_] / sigma[v]) * (1 + delta[v])
            if v != s:
                btw[v] += delta[v]

    with io.open(os.path.join(OUT_DIR, "hub_metrics.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["address", "name", "module", "status", "in_deg",
                    "out_deg", "degree", "component", "betweenness"])
        for n in nodes:
            w.writerow([n, name_of(n), mod_of(n), st_of(n),
                        indeg.get(n, 0), outdeg.get(n, 0), degree.get(n, 0),
                        comp[find(n)], "%.4f" % btw.get(n, 0.0)])
    print("wrote %s" % os.path.join(OUT_DIR, "hub_metrics.csv"))

    giant = max(comp.values())
    print("components: %d distinct, largest = %d nodes (sample %d sources)" %
          (len(comp), giant, len(srcs)))

    ranked = sorted(btw.items(), key=lambda kv: -kv[1])[:25]
    print("top betweenness hubs (approx):")
    for n, b in ranked:
        print("  %s %-22s in=%d out=%d btw=%.3f" %
              (n, name_of(n)[:22], indeg.get(n, 0), outdeg.get(n, 0), b))


if __name__ == "__main__":
    main()