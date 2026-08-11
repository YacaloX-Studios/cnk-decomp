#!/usr/bin/env python
"""Phase 4D - build environment validation (Roadmap step 4).

Verifies the reconstructed engine headers are *compilable* with a real C
compiler, and that the promoted struct layouts match the offsets the binary
uses (via the _Static_assert TU in include/engine/validate_headers.c).

Compiler resolution order (host then PS2 EE cross):
    ee-gcc   (ps2dev EE cross)   --target EE, matches endianness
    clang    / gcc / cc          --host check only
If none is found the tool reports the missing toolchain and exits non-zero,
so CI and humans see the exact gap for "reconstruct build environment".

Usage:
    python tools/build_check.py            # compile the validation TU
    python tools/build_check.py --no-warn  # suppress -Wall/-Wextra noise
"""
import argparse
import os
import shutil
import subprocess
import sys

INC = os.path.join("include", "engine")
TU = os.path.join(INC, "validate_headers.c")


def find_cc():
    for name in ("ee-gcc", "clang", "gcc", "cc"):
        p = shutil.which(name)
        if p:
            return name, p
    return None, None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--no-warn", action="store_true",
                    help="drop -Wall -Wextra for noisy cross compilers")
    args = ap.parse_args()

    cc, path = find_cc()
    if not cc:
        sys.stderr.write(
            "no C compiler found - reconstruct the build environment first.\n"
            "  host: install gcc/clang\n"
            "  PS2:  install ps2dev toolchain (ee-gcc) - see docs/11_BUILD.md\n")
        sys.exit(2)

    cmd = [cc, "-I" + INC, "-std=c11", "-c", "-o", os.devnull, TU]
    if not args.no_warn:
        cmd += ["-Wall", "-Wextra"]
    print("compiler: %s (%s)" % (cc, path))
    print("cmd: %s" % " ".join(cmd))
    r = subprocess.run(cmd)
    if r.returncode == 0:
        print("PASS: %s compiles clean with %s" % (TU, cc))
    else:
        print("FAIL: see compiler errors above (fix headers, then re-run)")
    sys.exit(r.returncode)


if __name__ == "__main__":
    main()