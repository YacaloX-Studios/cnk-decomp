#!/usr/bin/env python
"""Phase 4E - recompile recovered .c bodies and measure parity.

The final loop of Roadmap step 5: compile every hand-recovered function in
src/decomp/recovered/ into bytes, drop them into candidate/<addr>.bin and
run tools/match_check.py against the frozen match_baseline.csv so the
progress bar is measurable per function (EXACT / SIZE-ONLY / DIFF / MISSING).

Compiler tiers (auto-resolved, best wins):
    ee-gcc        (ps2dev EE cross, big-endian MIPS R5900)  -> real bytes
    mips-linux-gnu-gcc / mipsel-linux-gnu-gcc               -> o32 MIPS bytes
    gcc / clang / cc                                         -> syntax-only
The EE tier is the only one that can ever produce EXACT; the MIPS tier gives
a size/ABI sanity check; the host tier only proves the C compiles clean.

Byte extraction: each file compiles as its own TU with -ffunction-sections,
then objcopy dumps each function's section to candidate/<addr>.bin. Addresses
come from the header comment ("raw address: 0x...", "N @ 0x..."), mapping in
order to the symbol list for multi-function files (FUN_x_a, FUN_x_b, ...).

Usage:
    python tools/recompile_match.py            # build candidate/ + run match_check
    python tools/recompile_match.py --no-check # build candidate/ only
"""
import argparse
import os
import re
import shutil
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
REC = os.path.join(ROOT, "src", "decomp", "recovered")
OUT = os.path.join(ROOT, "src", "decomp", "analysis", "recompiled")
RDIR = os.path.join(OUT, "candidate")
TOOLS = os.path.join(ROOT, "tools")
CSTD = "c11"

CC_TIERS = [("ee-gcc", ["-ffunction-sections"]),
            ("mips-linux-gnu-gcc", ["-ffunction-sections"]),
            ("mipsel-linux-gnu-gcc", ["-ffunction-sections"]),
            ("gcc", []), ("clang", []), ("cc", [])]

OBJ_TIERS = ["ee-objcopy", "mips-linux-gnu-objcopy",
             "mipsel-linux-gnu-objcopy"]


def which(name):
    p = shutil.which(name)
    return p


def load_csv(path):
    import csv
    import io
    with io.open(path, encoding="utf-8", newline="") as f:
        return list(csv.DictReader(f))


def addr_map(path):
    """(function_name -> addr) for everything defined in the .c.

    Addresses come from the header comment in the order the functions are
    defined: "raw address: 0x..." names the primary symbol; multi-function
    files annotate each sub-function ("f1 @ 0x0053fd80", "f2 @ 0x0053fda0").
    """
    with open(path, encoding="utf-8") as f:
        txt = f.read()
    fns = re.findall(r"\b(FUN_[0-9a-fA-F]{8}(?:_[a-z0-9]+)?)\s*\(", txt)
    addrs = re.findall(r"raw address: 0x([0-9a-fA-F]{8})", txt)
    addrs += re.findall(r"f\d+ @ 0x([0-9a-fA-F]{8})", txt)
    out = {}
    for i, fn in enumerate(fns):
        if i < len(addrs):
            out[fn] = int(addrs[i], 16)
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--no-check", action="store_true",
                    help="build candidate/ but do not run match_check")
    args = ap.parse_args()

    cc = None
    for name, flags in CC_TIERS:
        if which(name):
            cc = name
            cc_flags = flags
            break
    if not cc:
        sys.stderr.write("no C compiler found - nothing to compile.\n"
                         "  host: install gcc/clang\n"
                         "  EE:   install ps2dev (ee-gcc) - best tier\n")
        sys.exit(2)

    objcopy = None
    for name in OBJ_TIERS:
        if which(name):
            objcopy = name
            break

    tier = "EE" if cc == "ee-gcc" else ("MIPS" if "mips" in cc else "HOST")
    print("compiler tier: %s (%s)" % (tier, cc))

    os.makedirs(RDIR, exist_ok=True)
    for f in os.listdir(RDIR):
        os.remove(os.path.join(RDIR, f))

    files = sorted(os.listdir(REC))
    printed = []
    n_ok = 0
    for fn in files:
        if not fn.endswith(".c"):
            continue
        src = os.path.join(REC, fn)
        ob = os.path.join(OUT, fn[:-2] + ".o")
        cmd = [cc, "-I", os.path.join(ROOT, "include", "engine"),
               "-std=" + CSTD, "-O0", "-c", "-o", ob, src] + cc_flags
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0:
            printed.append("COMPILE-FAIL  %-20s %s" % (fn, (r.stderr or "").strip().splitlines()[:1]))
            continue
        n_ok += 1
        if objcopy and tier != "HOST":
            amap = addr_map(src)
            for sym, addr in amap.items():
                sec = ".text." + sym
                dst = os.path.join(RDIR, "0x%08x.bin" % addr)
                r2 = subprocess.run([objcopy, "--dump-section", "%s=%s" % (sec, dst),
                                     ob], capture_output=True, text=True)
                if r2.returncode == 0 and os.path.exists(dst) and \
                        os.path.getsize(dst) > 0:
                    printed.append("DUMPED       %-20s %-32s -> %08x (%d B)" %
                                   (fn, sym, addr, os.path.getsize(dst)))
                else:
                    printed.append("DUMP-FAIL    %-20s %s (%s)" %
                                   (fn, sym, (r2.stderr or "").strip()[:80]))
        else:
            printed.append("COMPILED     %-20s (host tier: no bytes, syntax OK)" % fn)

    print("\n".join(printed))
    print("recovered files compiled clean: %d / %d" % (n_ok, len(files)))
    if tier == "HOST":
        print("HOST tier: no byte extraction - install ee-gcc for real matching.")
    else:
        nbin = sum(1 for f in os.listdir(RDIR))
        print("candidate dir: %s (%d function bins)" % (RDIR, nbin))

    if not args.no_check:
        print("\n--- match_check ---")
        subprocess.run([sys.executable, os.path.join(TOOLS, "match_check.py"),
                        RDIR])


if __name__ == "__main__":
    main()