#!/usr/bin/env python
"""Generate decomp.dev-compatible progress report (report.json).

Reads the frozen baseline (src/decomp/analysis/match_baseline.csv) as source
of truth for total_code, and optionally a candidate dir (src/decomp/analysis/
recompiled/candidate or --candidate) to count EXACT matches.  Without a
candidate the report is 0% — still valid for CI to publish an initial badge.

Output matches the minimal schema decomp.dev expects via frogress/objdiff:

  {
    "timestamp": "2026-...",
    "git_hash": "<sha>",
    "categories": [
      {"id": "code", "name": "Code", "measures": {
         "matched_code": <bytes>,
         "total_code": <bytes>,
         "matched_code_percent": <float>
      }}
    ],
    "measures": { ... same for top-level badge ... },
    "entries": []  # per-unit detail (optional)
  }

Usage:
  python tools/decomp_progress.py               # -> build/report.json
  python tools/decomp_progress.py --candidate dir --out build/report.json
  python tools/decomp_progress.py --check       # sanity: report honors --self

The report is also the payload POSTed to https://decomp.dev/api/<slug>/report
via the GitHub App when DECOMP_DEV_TOKEN is set in Actions.
"""
import argparse
import csv
import hashlib
import io
import json
import os
import subprocess
import sys
import time

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BASELINE = os.path.join(ROOT, "src", "decomp", "analysis", "match_baseline.csv")
CANDIDATE_DEFAULT = os.path.join(ROOT, "src", "decomp", "analysis", "recompiled", "candidate")


def git_hash():
    try:
        return subprocess.check_output(
            ["git", "rev-parse", "HEAD"], cwd=ROOT, text=True
        ).strip()
    except Exception:
        return "unknown"


def load_baseline():
    rows = []
    with io.open(BASELINE, encoding="utf-8", newline="") as f:
        for r in csv.DictReader(f):
            rows.append(r)
    return rows


def candidate_map(candidate_dir, baseline_rows):
    m = {}
    if not candidate_dir or not os.path.isdir(candidate_dir):
        return m
    for r in baseline_rows:
        addr = r["address"]
        p = os.path.join(candidate_dir, addr + ".bin")
        if os.path.exists(p):
            with io.open(p, "rb") as fh:
                m[addr] = fh.read()
    return m


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--candidate", default=CANDIDATE_DEFAULT,
                    help="directory with <addr>.bin per function (as recompile_match.py emits)")
    ap.add_argument("--out", default=os.path.join(ROOT, "build", "report.json"))
    ap.add_argument("--check", action="store_true",
                    help="assert report would be 100%% if run --self (sanity)")
    args = ap.parse_args()

    baseline = load_baseline()
    total_code = sum(int(r["size"]) for r in baseline)
    total_functions = len(baseline)

    cand = candidate_map(args.candidate if os.path.isdir(args.candidate) else None,
                         baseline)

    matched_code = 0
    matched_functions = 0
    for r in baseline:
        addr = r["address"]
        exp = r["sha256"]
        frag = cand.get(addr)
        if frag is None or len(frag) != int(r["size"]):
            continue
        if hashlib.sha256(frag).hexdigest() == exp:
            matched_code += int(r["size"])
            matched_functions += 1

    # Fallback: if no candidate, matched stays 0 — valid initial report.
    matched_code_percent = (100.0 * matched_code / total_code) if total_code else 0.0
    matched_functions_percent = (100.0 * matched_functions / total_functions) if total_functions else 0.0

    report = {
        "timestamp": int(time.time()),
        "git_hash": git_hash(),
        "categories": [
            {
                "id": "code",
                "name": "Code",
                "measures": {
                    "matched_code": matched_code,
                    "total_code": total_code,
                    "matched_code_percent": matched_code_percent,
                    "matched_functions": matched_functions,
                    "total_functions": total_functions,
                    "matched_functions_percent": matched_functions_percent,
                },
            }
        ],
        # top-level alias for badge: decomp.dev reads measures.matched_code_percent
        "measures": {
            "matched_code": matched_code,
            "total_code": total_code,
            "matched_code_percent": matched_code_percent,
            "matched_functions": matched_functions,
            "total_functions": total_functions,
        },
        "version": 1,
    }

    os.makedirs(os.path.dirname(args.out), exist_ok=True)
    with io.open(args.out, "w", encoding="utf-8", newline="\n") as f:
        json.dump(report, f, indent=2)
        f.write("\n")

    print("report: %s" % args.out)
    print("  total_code %d bytes in %d functions" % (total_code, total_functions))
    print("  matched_code %d bytes (%.2f%%)  matched_functions %d / %d (%.2f%%)"
          % (matched_code, matched_code_percent, matched_functions, total_functions,
             matched_functions_percent))
    if args.check and matched_code_percent != 100.0:
        # --check expects a fully-matched candidate (e.g. after `match_check --self` seeding)
        print("CHECK FAIL: expected 100% with this candidate", file=sys.stderr)
        if not cand:
            print("  (no candidate dir found — run recompile_match.py first)", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
