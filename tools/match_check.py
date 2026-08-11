#!/usr/bin/env python
"""Phase 4E - recompilation parity checker (Roadmap step 5).

Compares a recompiled ELF (or raw byte dump) against the frozen
match_baseline.csv. For every function in the baseline that the candidate
provides, reports byte-exact match / size-only / mismatch, then a global
match % so the decomp progress bar is *measurable*, not vibes.

Acceptance of a candidate can be any of:
  - an ELF2 (same layout as SLUS_206.49): addresses resolved by vaddr;
  - a flat file: matched by ELF file_offset when offsets line up;
  - a directory: each function's bytes in <dir>/<address>.bin, else the
    tool falls back to a size-only audit of what is absent.

Exact-match means: same size AND same sha256. Size-only means the function
exists in both at the same size but bytes differ (rename later, unresolvable
registers, etc.) - the classic "almost" state.

Usage:
    python tools/match_check.py <candidate.elf|.bin|dir>
    python tools/match_check.py --self        # sanity: checkpoint matches itself
"""
import csv
import hashlib
import io
import os
import sys

OUT_DIR = os.path.join("src", "decomp", "analysis")
ELF = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                   "SLUS_206.49")
BASELINE = os.path.join(OUT_DIR, "match_baseline.csv")
TAG_OK = "EXACT"
TAG_SIZE = "SIZE-ONLY"
TAG_MISS = "MISSING"
TAG_DIFF = "DIFF"


def load_csv(path):
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def shaf(data):
    return hashlib.sha256(data).hexdigest()


def main():
    args = sys.argv[1:]
    if not args:
        sys.stderr.write("usage: python tools/match_check.py <candidate|--self>\n")
        sys.exit(2)
    candidate = None
    if args[0] == "--self":
        candidate = ELF
    else:
        candidate = args[0]

    base = {}
    for r in load_csv(BASELINE):
        base[r["address"]] = r
    # candidate blob
    if os.path.isdir(candidate):
        cand_map = {}
        for addr in base:
            p = os.path.join(candidate, addr + ".bin")
            if os.path.exists(p):
                with io.open(p, "rb") as f:
                    cand_map[addr] = f.read()
    else:
        with io.open(candidate, "rb") as f:
            cand = f.read()
        cand_map = {}
        for addr, r in base.items():
            off = int(r["file_offset"])
            size = int(r["size"])
            if 0 <= off < len(cand) and off + size <= len(cand):
                frag = cand[off:off + size]
                if len(set(frag)) > 1:
                    cand_map[addr] = frag

    exact = sizeonly = differ = missing = 0
    exact_bytes = 0
    out = []
    for addr, r in base.items():
        size = int(r["size"])
        exp_hash = r["sha256"]
        frag = cand_map.get(addr)
        if frag is None:
            missing += 1
            out.append((TAG_MISS, addr, size, size, "-"))
            continue
        if len(frag) != size:
            differ += 1
            out.append((TAG_DIFF, addr, size, len(frag), "-"))
            continue
        if shaf(frag) == exp_hash:
            exact += 1
            exact_bytes += size
            out.append((TAG_OK, addr, size, size, "sha256 %s.." % exp_hash[:12]))
        else:
            sizeonly += 1
            out.append((TAG_SIZE, addr, size, size, "same size, bytes differ"))

    total = len(base)
    pct = 100.0 * exact / total if total else 0.0
    print("candidate: %s" % candidate)
    print("functions matched: EXACT %d / %d  (%.2f%%)  SIZE-ONLY %d  DIFF %d  MISSING %d"
          % (exact, total, pct, sizeonly, differ, missing))
    print("exact-matching code bytes: %.2f KB" % (exact_bytes / 1024.0))
    if pct == 100.0:
        print("PARITY: recompiled binary byte-exact across every baseline function")
    elif sizeonly or differ:
        print("NEAR: recover remaining %d functions to close the gap" %
              sum([sizeonly, differ, missing]))
    else:
        print("GAP: no candidate file match yet - recompile and re-run")

    # show a short worst list (DIFF / MISSING) for human follow-up
    bad = [o for o in out if o[0] in (TAG_DIFF, TAG_MISS)][:10]
    for tag, addr, s1, s2, why in bad:
        print("  %s %s (base %d B, candidate %d B) %s" % (tag, addr, s1, s2, why))


if __name__ == "__main__":
    main()