# -*- coding: utf-8 -*-
"""
tools/decomp_split.py
---------------------
Turn the raw Ghidra-style C export of SLUS_206.49 (162k lines, 14.4k functions,
99.9% of which are `halt_baddata()` stubs) into a *readable, documented*
decomposition.

What this script does
    * Parses SLUS_206.49.c into individual functions (by address).
    * Splits them into REAL bodies (code the decompiler actually produced) and
      STUB bodies (`halt_baddata()` only).
    * Writes the 440 real functions as one clean file each into `src/decomp/real/`
      with the decompiler WARNING noise stripped.
    * Renames the handful of functions we have positively identified (mapping
      table below) and emits an inventory CSV + a stub address list.

The raw dump maps to ELF segments loaded at 0x00100000; every `FUN_xxxxxxxx` is
`0x00100000 + file_offset`. The symbols below were named by reading the body of
each function against the asset/geometry work in this repo; unclassified real
functions are kept under their raw `FUN_` name until they are reversed.

Usage
    python tools/decomp_split.py [SLUS_206.49.c] [out_dir]
    # defaults: SLUS_206.49.c   out_dir: src/decomp
"""

import csv
import io
import os
import re
import sys

DEFAULT_SRC = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "SLUS_206.49.c")
DEFAULT_OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "src", "decomp")

FN_RE = re.compile(r"^[\w\s\*]+\s+(FUN_[0-9A-Fa-f]+)\s*\(")

# ---------------------------------------------------------------------------
# Human-verified symbol table.
# `addr` (lowercase hex, no prefix) -> (name, module, one-line note)
# ---------------------------------------------------------------------------
SYMBOLS = {
    "0010e780": ("packed_bits_write", "core/bitstream",
                 "Stream serializer: writes `param_3` bits from a byte buffer to a packed "
                 "bit-stream struct (ctx at param_1; byte ptr at +4, capacity at +8, "
                 "write-bit-pos at +0x10)."),
    "0010ee50": ("packed_bits_read", "core/bitstream",
                 "Stream deserializer: reads `param_2` bits from a packed bit-stream struct "
                 "(byte ptr at +4, read-bit-pos at +0xc, limit at +0x10). Inverse of "
                 "packed_bits_write."),
    "004f9eb0": ("varint_read", "core/bitstream",
                 "7-bit LEB128 varint reader with limit checks; reads a small id, a flag, "
                 "then a varint value. Sets a result handle (DAT_006b6490/98 are OK/fail "
                 "sentinels)."),
    "0011e790": ("defaults_init_entity", "game/entity",
                 "Writes a default entity/object block: many 1.0f / 100.0f / 101.0f "
                 "initializers (camera/transform defaults, velocities)."),
    "001a1bd0": ("sort_assign_rank", "game/ranking",
                 "Selection sort of up to 8 entity pointers by int field +0x18, then assigns "
                 "rank values (field +0x18 = place), skipping entries flagged at +0x14/+0x15."),
    "0022ade0": ("layout_viewport", "ui/layout",
                 "Split-screen viewport origin for 1-4 players at 800x420 (HUD/world view "
                 "rect); `param_3`=slot, `param_4`=player."),
    "0022d1a0": ("layout_viewport_b", "ui/layout",
                 "Second split-screen viewport layout helper (mirror of layout_viewport)."),
    "002304a0": ("layout_viewport_c", "ui/layout",
                 "Third split-screen viewport layout helper (uses 700x260 slot rects)."),
    "003a0730": ("gaussjordan_solve", "math/matrix",
                 "In-place Gauss-Jordan elimination over a 5-column float matrix "
                 "(row-scaled pivot pass); used for matrix inversion / linear solves."),
    "003a09f0": ("gaussjordan_solve_b", "math/matrix",
                 "Paired Gauss-Jordan pass (back-substitution half of the same solver)."),
    "00381030": ("matrix_invert_vu0", "math/matrix",
                 "Matrix inversion driven by COP2 (VU0 macro mode); dimension switch 1..4 "
                 "(affine/4x4)."),
    "00365d80": ("aabb_corners_vu0", "math/vu0",
                 "Builds the 8 corners of an oriented box from 3 axes + center using COP2 "
                 "(VU0 macro mode)."),
    "0035bc40": ("transform_point_vu0", "math/matrix",
                 "COP2 point transform (matrix/vector multiply via VU0 macro ops)."),
    "003472f0": ("transform_point_vu0_b", "math/matrix",
                 "COP2 point transform variant (3 rows)."),
    "0035c3f0": ("transform_point_vu0_c", "math/matrix",
                 "COP2 point transform variant."),
    "00394050": ("transform_point_vu0_d", "math/matrix",
                 "COP2 point transform variant."),
    "003955c0": ("transform_point_vu0_e", "math/matrix",
                 "COP2 point transform reading a 4x3 matrix from the object block."),
    "00190370": ("transform_point_vu0_f", "math/matrix",
                 "COP2 point transform with identity + scale 1.0 seed."),
    "003f6b20": ("quat_lerp_vu0", "math/quat",
                 "COP2 quaternion blend (multi-op VU0 macro sequence)."),
    "003f6840": ("quat_matrix_vu0", "math/quat",
                 "COP2 quaternion/matrix conversion (many VU0 macro ops)."),
    "001b6340": ("quat_invert", "math/quat",
                 "COP2 quaternion inverse/conjugate for cases 0 and 3."),
    "003ae0e0": ("spline_accum", "math/spline",
                 "Accumulates quadratic cross terms from three points/weights into BSS "
                 "(spline/curve arc length-style)."),
    "0012bda0": ("collision_support", "physics/collision",
                 "Support/tuning function over a collision face list (stride 0x28); returns "
                 "0.0/0.5/1.0 blend weights per edge index."),
    "0019e150": ("tuning_scale", "game/tuning",
                 "Reads a driving-tuning float from the global table (DAT_006f5708+off), "
                 "scales it by a ratio, clamps against a speed delta."),
    "0019ea30": ("tuning_scale_b", "game/tuning", "Tuning-scale variant (table +0x24/0x28)."),
    "0019f130": ("tuning_scale_c", "game/tuning", "Tuning-scale variant (table +0x268)."),
    "0019f7f0": ("tuning_scale_d", "game/tuning", "Tuning-scale variant (table +0x170/0x174)."),
    "00195820": ("kart_speed_ratio", "game/kart",
                 "Kart speed-ratio clamp comparing a stored speed vs a tuned max, with "
                 "absolute-value gate."),
    "001a1800": ("kart_state_check", "game/kart",
                 "Kart/character state probe: reads entity->driver block, checks AI-state "
                 "code == 7 and a speed threshold."),
    "0042a818": ("script_step", "game/script",
                 "Script/task state machine step: manages a flag word (ushort +0xc), calls "
                 "step callbacks from a pointer table, tracks completion bits."),
    "0042a4e0": ("script_step_b", "game/script", "Script/task state-machine sibling."),
    "0042bc88": ("script_step_c", "game/script", "Script/task state-machine sibling."),
    "0042a680": ("script_step_d", "game/script", "Script/task state-machine sibling."),
    "0042ac48": ("script_abort", "game/script", "Aborts the running script task (clears flag 0x1000)."),
    "0026d960": ("type4cc_check", "engine/objects",
                 "Byte-order-normalized 4cc comparison: object->type at +0xc matched against "
                 "DAT_006369e0 (asset/class type gate)."),
    "0026e060": ("type4cc_check_b", "engine/objects", "4cc type-check variant."),
    "0026e1a0": ("type4cc_check_c", "engine/objects", "4cc type-check variant."),
    "0026e2e0": ("type4cc_check_d", "engine/objects", "4cc type-check variant."),
    "0026e420": ("type4cc_check_e", "engine/objects", "4cc type-check variant."),
    "00405d20": ("bsearch16", "core/containers",
                 "Binary search over 16-byte records on ushort key at +4; returns matching "
                 "slot pointer."),
    "00405dc0": ("bsearch12", "core/containers",
                 "Binary search over 12-byte records on ushort key at +4."),
    "00407550": ("bsearch16_b", "core/containers", "bsearch16 duplicate (inlined twin)."),
    "004075f0": ("bsearch12_b", "core/containers", "bsearch12 duplicate (inlined twin)."),
    "003ec660": ("index_of_int", "core/containers",
                 "Linear search in an int array (len at *arr, count at arr[1]); returns "
                 "matching index or -1."),
    "005ec0a0": ("list_contains", "core/containers",
                 "Linear membership test in an int list (list header at obj+8)."),
    "005ed330": ("list_contains_b", "core/containers", "list_contains duplicate."),
    "003803c0": ("interval_check", "core/containers",
                 "Three-way unsigned range check on *a,*b,*c (interval validity test)."),
    "00380560": ("interval_check_b", "core/containers", "interval_check duplicate."),
    "0042f660": ("strtok_save_state", "core/strings",
                 "strtok-style tokeniser over a delimiter string; keeps scan position in "
                 "*param_3. Returns the next token or NULL."),
    "00428c50": ("strchr", "core/strings",
                 "Scans a NUL-terminated string for a single char; returns pointer or NULL."),
    "00428f48": ("strcpy", "core/strings", "Copies a NUL-terminated string."),
    "00428b18": ("strcat", "core/strings", "strlen + strcpy onto the tail (concatenation)."),
    "004327a0": ("strrev", "core/strings", "In-place string reversal."),
    "00432818": ("itoa", "core/strings",
                 "Integer to string in arbitrary base (base 10 negates first); feeds "
                 "strrev."),
    "00432fc0": ("format_scan", "core/strings",
                 "Format-string parser: walks `%`-directives and dispatches conversion "
                 "handlers (printf-family)."),
    "004518d0": ("blit_palette_image", "gfx/image",
                 "CLUT / palette remap: in-place 2,4,6,8,16 bpp indexed lookups through "
                 "index tables (param_3) and per-entry CLUT words (param_4)."),
    "0058dea0": ("pixel_format_convert", "gfx/color",
                 "RGBA pixel to float4 conversion; `param_2` selects channel packing order "
                 "(0=ARGB,1=RGBA,2=BGRA,3=RGBx,4=BGRx,6=ABGR)."),
    "00530050": ("swap16", "core/endian",
                 "Byte-swap a 16-bit value (LE<->BE)."),
    "00530080": ("swap32", "core/endian",
                 "Byte-swap a 32-bit value (LE<->BE)."),
    "0058d7c0": ("lerp3", "math/vec",
                 "Component-wise float3 linear interpolation: out = a + t*(b-a)."),
    "00534b60": ("heap_alloc_block", "core/mem",
                 "Fixed-pool sub-allocator: rounds requested sizes to alignment, carves "
                 "blocks out of a heap header (min size at +8, used at +0x1c, freelist "
                 "at +0x20). Fail sentinel DAT_006b6498."),
    "004311f0": ("heap_stats", "core/mem",
                 "Walks the heap arena's 128 allocation lists, sums used bytes "
                 "(&~3 aligned) and computes free space into DAT_00657f0x."),
    "001071e0": ("memcpy64", "core/mem", "Aligned 64-byte copy (16 dwords)."),
    "006588a0": ("boot_iop_copy", "sys/boot",
                 "Boot-time copy of 0x26 bytes from IOP RAM (0xbc0003c0 region) into EE "
                 "low RAM; gated on an IOP boot flag."),
    "00165e70": ("accessor_fields", "core/struct",
                 "Conditional accessor: copies a field block (offsets +0x60..+0x84) out of "
                 "an entity when flag +0x88 is clear."),
    "001c3910": ("object_init", "core/struct",
                 "Object block initializer: sets header pointers (DAT_006cc6d0/60), a "
                 "stride (0x20) and identity/scale values."),
    "0015ba30": ("vec3_copy", "math/vec", "12-byte (float3) copy."),
}

LEAF_MODULE = "core/struct"   # auto-assigned to pure-copy leaves
LEAF_NOTE = ("Auto-classified pure-copy leaf (no loops, calls, COP2 or globals); "
             "semantic TBD, structure only.")

STUB_HDR = """// Generated stub-address list for SLUS_206.49.
// Format: one 8-hex-digit address per line (0x00100000-base).
// These functions decompiled to `halt_baddata();` only and carry no recovered code.
"""


def split_functions(path):
    """Parse the decomp file into (real, stubs) lists.

    Each entry: dict(name, addr, start_line, body_lines)
    """
    with io.open(path, encoding="utf-8", errors="replace") as f:
        lines = f.readlines()

    defs = []
    i, n = 0, len(lines)
    while i < n:
        m = FN_RE.match(lines[i])
        if m:
            name = m.group(1)
            start = i
            j = i
            while j < n and "{" not in lines[j]:
                j += 1
            depth = 0
            k = j
            while k < n:
                depth += lines[k].count("{") - lines[k].count("}")
                if depth <= 0:
                    break
                k += 1
            defs.append((name, start, j, k))
            i = k + 1
        else:
            i += 1

    def classify(body):
        sig = "".join(body)
        sig = re.sub(r"/\*.*?\*/", "", sig, flags=re.S)
        sig = re.sub(r"//[^\n]*", "", sig)
        sig = re.sub(r"\s+", "", sig)
        stripped = sig.replace("{", "").replace("}", "").replace(";", "")
        return stripped in ("halt_baddata()", "", "halt_baddata")

    real, stubs = [], []
    for name, start, j, k in defs:
        entry = {"name": name, "addr": name.split("_")[1].lower(),
                 "start": start, "body": lines[start:k + 1]}
        if classify(lines[j:k + 1]):
            stubs.append(entry)
        else:
            real.append(entry)
    return real, stubs


def clean_body(body):
    """Drop decompiler WARNING noise; keep the C code, trim blank edges."""
    out = []
    for ln in body:
        s = ln.strip()
        if s.startswith("// WARNING"):
            continue
        out.append(ln)
    while out and not out[0].strip():
        out.pop(0)
    while out and not out[-1].strip():
        out.pop()
    return out


_CALL_RE = re.compile(r"\bFUN_[0-9A-Fa-f]{7,8}\b")


def is_pure_leaf(body):
    """True when the body is a straight-line copy/accessor with no control flow,
    no COP2, no globals and no calls to other functions."""
    txt = "".join(body)
    txt = re.sub(r"//[^\n]*", "", txt)
    if any(w in txt for w in ("if (", "for", "while", "do ", "switch", "case ",
                              "goto", "setCopReg", "copFunction", "DAT_",
                              "halt_baddata", "halt_unimplemented", "0x", "float")):
        return False
    return len(set(_CALL_RE.findall(txt))) <= 1   # only the function's own name


def render(name, sym, body, leaf=False):
    if sym:
        sym_name, module, note = sym
        return (
            "/* ============================================================================\n"
            " * %s  %s\n"
            " * module: %s\n"
            " * %s\n"
            " * raw address: 0x%s  (ELF vaddr 0x00100000 + file offset)\n"
            " * ======================================================================== */\n"
            "\n%s\n" % (name, sym_name, module, note, name.split("_")[1], "".join(body))
        )
    if leaf:
        return (
            "/* ============================================================================\n"
            " * %s\n"
            " * module: %s  (auto-classified)\n"
            " * %s\n"
            " * raw address: 0x%s  (ELF vaddr 0x00100000 + file offset)\n"
            " * ======================================================================== */\n"
            "\n%s\n" % (name, LEAF_MODULE, LEAF_NOTE, name.split("_")[1], "".join(body))
        )
    return (
        "/* ============================================================================\n"
        " * %s\n"
        " * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.\n"
        " * ======================================================================== */\n"
        "\n%s\n" % (name, "".join(body))
    )


def main():
    src = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_SRC
    out_dir = sys.argv[2] if len(sys.argv) > 2 else DEFAULT_OUT
    real, stubs = split_functions(src)

    real_dir = os.path.join(out_dir, "real")
    for d in (out_dir, real_dir):
        os.makedirs(d, exist_ok=True)

    sym = SYMBOLS
    used = set()
    for e in real:
        addr = e["addr"]
        sym_name = sym.get(addr)
        body = clean_body(e["body"])
        leaf = sym_name is None and is_pure_leaf(body)
        fname = (sym_name[0] + ".c") if sym_name else (e["name"] + ".c")
        used.add(addr)
        out = render(e["name"], sym_name, body, leaf=leaf)
        with io.open(os.path.join(real_dir, fname), "w", encoding="utf-8") as f:
            f.write(out)

    # inventory.csv
    csv_path = os.path.join(out_dir, "inventory.csv")
    with io.open(csv_path, "w", encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(["address", "raw_name", "symbol", "module", "body_bytes", "kind"])
        for e in real:
            sym_name = sym.get(e["addr"])
            body = clean_body(e["body"])
            leaf = sym_name is None and is_pure_leaf(body)
            module = sym_name[1] if sym_name else (LEAF_MODULE if leaf else "")
            w.writerow([
                "0x" + e["addr"],
                e["name"],
                sym_name[0] if sym_name else "",
                module,
                sum(len(l) for l in e["body"]),
                "real",
            ])
        for e in stubs:
            w.writerow(["0x" + e["addr"], e["name"], "", "", 0, "stub"])

    # stub address list
    with io.open(os.path.join(out_dir, "stub_addresses.txt"), "w", encoding="utf-8") as f:
        f.write(STUB_HDR)
        for e in sorted(stubs, key=lambda x: x["addr"]):
            f.write(e["addr"] + "\n")

    print("real functions : %d" % len(real))
    print("stub functions : %d" % len(stubs))
    print("classified     : %d / %d real" % (len(used & set(sym)), len(real)))
    print("wrote real/  -> %s" % real_dir)
    print("wrote        -> %s" % csv_path)
    print("wrote        -> %s" % os.path.join(out_dir, "stub_addresses.txt"))


if __name__ == "__main__":
    main()
