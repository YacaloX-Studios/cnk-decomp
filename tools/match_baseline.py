#!/usr/bin/env python
"""Phase 4E - byte-exact match baseline + recompilation parity (Roadmap step 5).

The last decomp milestone is byte-matching the recompiled binary to the
original. This tool freezes the *truth*: per-function raw bytes, carved from
the on-disc SLUS_206.49 at the exact file_offset/size from the symbol
registry, with a sha256 + first-bytes fingerprint so a recompiled ELF can be
verified automatically and reproducibly.

match_baseline.py writes the baseline; match_check.py compares an ELF to it.

Output:
    src/decomp/analysis/match_baseline.csv   vaddr, offset, size, sha256,
                                             head8 (hex), tail8 (hex)
Usage:
    python tools/match_baseline.py [SLUS_206.49]
"""
import csv
import hashlib
import io
import os
import sys

OUT_DIR = os.path.join("src", "decomp", "analysis")
ELF = sys.argv[1] if len(sys.argv) > 1 else os.path.join(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))), "SLUS_206.49")


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def main():
    with io.open(ELF, "rb") as f:
        blob = f.read()
    symbols = load_csv(os.path.join(OUT_DIR, "symbols.csv"))

    rows = []
    skipped = 0
    for r in symbols:
        off = int(r["file_offset"])
        size = int(r["size"])
        addr = r["address"]
        if size <= 0 or off < 0 or off + size > len(blob):
            skipped += 1
            continue
        raw = blob[off:off + size]
        # only code-bearing functions: skip pure-zero or identical-fill blobs
        if len(set(raw)) <= 1:
            skipped += 1
            continue
        rows.append({
            "address": addr,
            "vaddr": r["vaddr"],
            "file_offset": str(off),
            "size": str(size),
            "sha256": hashlib.sha256(raw).hexdigest(),
            "head8": raw[:8].hex(),
            "tail8": raw[-8:].hex(),
        })

    with io.open(os.path.join(OUT_DIR, "match_baseline.csv"), "w",
                 encoding="utf-8", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        w.writeheader()
        w.writerows(rows)

    tot_code = sum(int(r["size"]) for r in rows)
    print("baseline: %d functions / %.1f KB code carved from %s" %
          (len(rows), tot_code / 1024.0, ELF))
    print("skipped %d (out of blob bounds or uniform-fill)" % skipped)
    print("sample: %s  %d B  sha256=%s" %
          (rows[0]["address"], int(rows[0]["size"]), rows[0]["sha256"][:16]))


if __name__ == "__main__":
    main()