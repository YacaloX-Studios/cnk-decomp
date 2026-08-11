#!/usr/bin/env python
"""Phase 4G - recovery ledger (per-function progress tracked per commit).

Each loop iteration works one function from the worklist: asm -> C body ->
compile -> match. For that to be committable we need a *state file* that says
what is done, so the next run starts where the last one stopped.

This tool syncs the ledger from the real evidence:
  - worklist: the ranked targets from recovery_sheets.py (status column +
    score).
  - asm exists: recovery_asm/<addr>.asm was generated.
  - sheet exists: recovery_sheets/<addr>.md was generated.
  - body: src/decomp/real/<name>.c exists.
The `recovered` state is hand-set by the reviewer (write the C body, then
flip REV=1 in the CSV). Human-confirmed additions are also accepted as the
6th column (REV) so the reviewer can open the CSV and track.

Read/write: keeps the CSV; geneses optional body hint.

Output:
    src/decomp/analysis/recovery_ledger.csv
"""
import csv
import io
import os

OUT_DIR = os.path.join("src", "decomp", "analysis")
REAL_DIR = os.path.join("src", "decomp", "real")
LEDGER = os.path.join(OUT_DIR, "recovery_ledger.csv")


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def main():
    try:
        work = load_csv(os.path.join(OUT_DIR, "recovery_worklist.csv"))
    except FileNotFoundError:
        work = []
    prev = {}
    if os.path.exists(LEDGER):
        for r in load_csv(LEDGER):
            prev[r["address"]] = r

    rows = []
    for r in work:
        addr = r["address"]
        name = r["name"] or addr
        body = os.path.join(REAL_DIR, name + ".c")
        p = prev.get(addr, {})
        rev = "1" if p.get("REV") in ("1", "yes", "done") else ""
        rows.append({
            "address": addr,
            "name": name,
            "score": r["score"],
            "leaf": r["leaf_hint"],
            "asm": "1" if os.path.exists(os.path.join(
                OUT_DIR, "recovery_asm", addr + ".asm")) else "",
            "sheet": "1" if os.path.exists(os.path.join(
                OUT_DIR, "recovery_sheets", addr + ".md")) else "",
            "body": "1" if os.path.exists(body) else "",
            "REV": rev,
        })
    rows.sort(key=lambda x: (-1 if x["REV"] else 0, -float(x["score"] or 0),
                             x["address"]))
    with io.open(LEDGER, "w", encoding="utf-8", newline="") as f:
        w = csv.DictWriter(f, fieldnames=[c for c in rows[0]])
        w.writeheader()
        w.writerows(rows)
    n_asm = sum(1 for r in rows if r["asm"])
    n_body = sum(1 for r in rows if r["body"])
    n_rev = sum(1 for r in rows if r["REV"])
    nxt = [r for r in rows if not r["REV"]][:10]
    print("ledger: %d targets | asm %d | body %d | recovered %d" %
          (len(rows), n_asm, n_body, n_rev))
    print("first unrecovered (continue here):")
    for r in nxt:
        print("  %s %-26s score=%s leaf=%s body=%s" %
              (r["address"], r["name"][:26], r["score"], r["leaf"],
               "yes" if r["body"] else "no"))


if __name__ == "__main__":
    main()