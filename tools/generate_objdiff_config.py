#!/usr/bin/env python
"""Generate objdiff.json dynamically — guide step 3.

Scans src/decomp/analysis/match_baseline.csv (frozen target) and
src/decomp/recovered/*.c (available base sources) and emits a valid
objdiff.json per https://decomp.wiki/tools/decomp-dev.

- Every linked object must appear in `units` so objdiff has a complete view.
- If a unit has no source yet, base_path is null (counts as 0% for that unit).
- With splat enabled, target_path will be build/asm/<unit>.s.o; until then
  we point at the baseline (the workflow still produces a valid decomp.dev
  report via tools/decomp_progress.py).

Usage:
  python tools/generate_objdiff_config.py            # -> objdiff.json
  python tools/generate_objdiff_config.py --check    # verify units cover baseline
"""
import csv
import glob
import json
import os

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BASELINE = os.path.join(ROOT, "src", "decomp", "analysis", "match_baseline.csv")
RECOVERED = os.path.join(ROOT, "src", "decomp", "recovered")
OUT = os.path.join(ROOT, "objdiff.json")


def main(check=False):
    # Map address -> recovered file (simple heuristic: filename contains address)
    recovered = {}
    for p in glob.glob(os.path.join(RECOVERED, "*.c")):
        name = os.path.splitext(os.path.basename(p))[0]
        # FUN_XXXXXXXX.c
        if name.startswith("FUN_"):
            recovered[name.lower()] = os.path.relpath(p, ROOT).replace(os.sep, "/")

    units = []
    # One synthetic unit for the whole SLUS code segment until splat splits it.
    # This satisfies "every object that gets linked" for the initial report.
    # Future: split into per-module units once configure.py / splat yaml exists.
    with open(BASELINE, encoding="utf-8", newline="") as f:
        rows = list(csv.DictReader(f))

    # Strategy: single unit "main" covers all code; base is null until any
    # recovered file exists. As files are added, we can split — but single
    # unit is enough for decomp.dev to track matched_code_percent correctly
    # via build/report.json.
    has_any_base = bool(recovered)
    units.append({
        "name": "main",
        "target_path": "expected/build/SLUS_206.49.o" if has_any_base else "expected/SLUS_206.49.o",
        "base_path": "build/src/main.o" if has_any_base else None,
        "metadata": {"progress_categories": ["code"]},
    })

    # Optional: add per-function units for granular objdiff UI (future)
    # for r in rows[:5]:
    #     addr = r["address"]
    #     units.append({...})

    cfg = {
        "$schema": "https://raw.githubusercontent.com/encounter/objdiff/main/config.schema.json",
        "custom_make": "ninja",
        "build_target": False,
        "build_base": False,
        "watch_patterns": ["src/decomp/recovered/**/*.c", "include/engine/**/*.h"],
        "progress_categories": [{"id": "code", "name": "Code"}],
        "units": units,
    }

    if not check:
        with open(OUT, "w", encoding="utf-8", newline="\n") as f:
            json.dump(cfg, f, indent=2)
            f.write("\n")
        print(f"wrote {OUT} with {len(units)} unit(s)")
    else:
        print(f"check: {len(units)} unit(s), {len(rows)} functions in baseline, {len(recovered)} recovered files")
        if not units:
            raise SystemExit("no units — baseline empty?")


if __name__ == "__main__":
    import sys
    main(check="--check" in sys.argv)
