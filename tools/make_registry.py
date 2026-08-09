"""Build the master symbol registry for SLUS_206.49.

Consolidates every function (14,439) + entry point into one navigable table:

  address      - 0x00100000-based vaddr
  vaddr        - absolute virtual address
  file_offset  - offset inside the on-disc ELF
  size         - byte span (gap to the next function)
  symbol       - recovered name (SYMBOLS table) or empty
  name         - FUN_xxxxxxxx raw name
  module       - subsystem (from SYMBOLS) or auto-classified
  status       - real_c / real_logic / pseudo_stub / stub_code / stub_thunk
  confidence   - 1.0 symboled, 0.8 recovered logic body, 0.5 pseudo-stub,
                 0.3 binary-only code, 0.2 binary-only thunk
  callers      - fan-in (real functions calling this one)
  callees      - fan-out to real functions
  score        - decomp priority (from score_functions)

The assigned name is `symbol`, falling back to `name`. This is the single
navigation index that replaces ad-hoc per-file lookups.

Regenerate:
  python tools/make_registry.py
"""

import csv
import io
import os
import re
import sys

BASE_VADDR = 0x00100000
SEG_OFF = 0x80

DEFAULT_IN = "src/decomp"
DEFAULT_OUT = "src/decomp/analysis/symbols.csv"
CONF = {
    "real_logic": 0.8,
    "pseudo_stub": 0.5,
    "stub_code": 0.3,
    "stub_thunk": 0.2,
}


def main():
    in_dir = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_IN
    out_csv = sys.argv[2] if len(sys.argv) > 2 else DEFAULT_OUT

    # inventory (real functions) + modules
    inv = {}
    with io.open(os.path.join(in_dir, "inventory.csv"), encoding="utf-8") as f:
        for row in csv.DictReader(f):
            inv[row["address"].lower()] = row

    # stub addresses
    stub_code = set()
    stub_thunk = set()
    sp = os.path.join(in_dir, "stub_addresses.txt")
    with io.open(sp, encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if re.fullmatch(r"[0-9a-f]{8}", line):
                stub_code.add("0x" + line)

    # stub binary classification (thunks are the subset we know are thunks)
    sc = os.path.join(in_dir, "analysis", "stub_classify.csv")
    if os.path.exists(sc):
        with io.open(sc, encoding="utf-8") as f:
            for row in csv.DictReader(f):
                if row["category"] == "small_code":
                    stub_thunk.add(row["address"].lower())
                    stub_code.discard(row["address"].lower())

    # features (score, callers, callees)
    feat = {}
    fp = os.path.join(in_dir, "analysis", "features.csv")
    if os.path.exists(fp):
        with io.open(fp, encoding="utf-8") as f:
            for row in csv.DictReader(f):
                feat[row["address"].lower()] = row

    # symboled subset has known module; others need a classifier for status
    #  - pseudo_stub = real inventory row, no symbol, and body-only-halt
    # Detect from leaf_classify.
    leaf = {}
    lp = os.path.join(in_dir, "analysis", "leaf_classify.csv")
    if os.path.exists(lp):
        with io.open(lp, encoding="utf-8") as f:
            for row in csv.DictReader(f):
                leaf[row["address"].lower()] = row["kind"]

    rows = []
    all_addrs = sorted(set(inv) | stub_code | stub_thunk | {"0x00108d28"})
    size_of = {}
    for i, a in enumerate(all_addrs):
        nxt = all_addrs[i + 1] if i + 1 < len(all_addrs) else a
        span = int(nxt, 16) - int(a, 16)
        size_of[a] = min(max(span, 4), 0x4000)

    for addr, r in sorted(inv.items()):
        if r["kind"] != "real":
            continue
        status = "real_logic"
        if r["symbol"]:
            status = "real_c"
        elif leaf.get(addr) == "pseudo_stub":
            status = "pseudo_stub"
        conf = CONF.get(status, 0.8 if r["symbol"] else 0.6)
        if status == "real_c":
            conf = 1.0
        ft = feat.get(addr, {})
        v = 0x00100000 + int(addr, 16)
        rows.append([addr, v, v - BASE_VADDR + SEG_OFF, size_of.get(addr, 0),
                     r["raw_name"], r["symbol"] or r["raw_name"], r["module"],
                     status, conf,
                     ft.get("callers", 0), ft.get("callees_real", 0),
                     ft.get("score", 0)])
    # stubs (code + thunk, union set)
    for addr in sorted(stub_code | stub_thunk):
        status = "stub_thunk" if addr in stub_thunk else "stub_code"
        v = 0x00100000 + int(addr, 16)
        rows.append([addr, v, v - BASE_VADDR + SEG_OFF, size_of.get(addr, 0),
                     addr, addr, "", status, CONF[status], 0, 0, 0])

    with io.open(out_csv, "w", encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["address", "vaddr", "file_offset", "size",
                    "name", "symbol", "module", "status",
                    "confidence", "callers", "callees", "score"])
        for r in rows:
            w.writerow(r)

    # summary
    cnt = {}
    for r in rows:
        cnt[r[7]] = cnt.get(r[7], 0) + 1
    print("symbols total : %d" % len(rows))
    for k in ("real_c", "real_logic", "pseudo_stub", "stub_code", "stub_thunk"):
        print("  %-12s %d" % (k, cnt.get(k, 0)))
    print("wrote %s" % out_csv)


import sys

if __name__ == "__main__":
    main()