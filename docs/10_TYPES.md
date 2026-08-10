# Phase 3 — Signature inference and anonymous structs

The goal of this phase is the progressive, evidence-driven transition from

    int FUN_00123456(void *a0, int a1)

to

    Track *Track_Load(TrackManager *manager, const char *path)

with *traceable* evidence for every claim. Phase 3 never mutates `src/decomp/`
automatically — every machine-produced conclusion lives in `analysis/` with a
confidence value, and only human review promotes it to real code.

## Phase 3A — `tools/infer_types.py`

Decodes the on-disc ELF (`SLUS_206.49`, little-endian byte-swapped: read a
4-byte word as a LE uint32 to recover the BE R5900 opcode) at every one of the
**14,439 functions** and collects evidence:

- **args** — which of `a0..a3` are read, and their guessed kind. A register
  is `ptr` when it is used as a memory base with real struct offsets.
  Pointer-taint tracks values derived from the original args through
  `addiu`/`addu`/`move`, so `addiu t0, a0, 0x10` followed by `lw ..., 0(a0)`
  correctly reports the field at `a0+0x10`.
- **return** — kind of value in `v0` at `jr $ra` (`ptr` / `int` / `void`).
- **accesses** — every `arg + offset` load/store with width, count, and the
  pointer-chase flag. Dereferencing `a0+0x3c4` marks that field `ptr`.
- **calls** — absolute `jal` targets. This is the **true call graph of the
  entire binary**, including the 13,916 stub-code functions that Ghidra never
  decompiled to C (`binary_call_edges.csv`, 45,203 edges).
- **constants** — notable immediates: `lui` (pointer pages, float bit patterns)
  and sized/masked `addiu`/`andi` (e.g. `bsearch12`'s 0xc byte stride, 0xf
  record masks).
- **float / COP2 / simd flags** from COP1 / COP2 / MMI / LQ / SQ opcodes.

Outputs (`src/decomp/analysis/`):

| file | content |
|---|---|
| `inferred_types.csv` | one row per function: args / return / accesses / calls / consts, ptr-derefs, flags, confidence |
| `inferred_types.md` | per-function evidence blocks (all `real_c` + top-confidence) with conf + HIGH/MEDIUM/LOW |
| `binary_call_edges.csv` | caller → callee edges (the real call graph, stubs included) |
| `inferred_structs.json` | Phase 3B anonymous structs + shared-field mesh |

### Validation

Ground truth cross-checks against the 67 symboled functions pass:

| function | inferred signature | real `.c` signature |
|---|---|---|
| `memcpy64` 0x001071e0 | `(ptr, ptr, int, int) → void`, 16B LQ/SQ block copies | memcpy-style, COP1 used for tail bytes |
| `bsearch12` 0x00405dc0 | `(ptr, int, int, ptr) → void`; a0 store 4B, a3 load 2B, stride 0xc | `bsearch12(int *out, int lo, int hi, ushort *key)` reading ushort key at +4 |

## Phase 3B — `inferred_structs.json`

Two complementary views, both anonymous (no invented names):

1. **`structs`** — exact-signature candidates: functions that read/write the
   *same* set of `(offset, width)` on a pointer arg form one anonymous struct.
   Example: `Unknown_a0_4_8` (vec2 of floats), `Unknown_a0_0_4_8_c` (vec4),
   `Unknown_a0_0_1c` (`ptr` vtable-like + `int` flag).
2. **`shared_fields`** — a mesh of one field accessed by ≥2 functions on the
   same arg with a stable width, catching shared substructs whose surrounding
   access differs between call sites (e.g. `a0+0x3c4` tagged `ptr`, seen in 3
   functions). This is the seed list for "this offset is a pointer field".

## Confidence and promotion rules

- Confidence ∈ [0.2, 0.95]; thunks are pinned at 0.2, `real_c` evidence at
  capture time can exceed it but never reach 1.0 without review.
- Levels: HIGH ≥ 0.7, MEDIUM ≥ 0.5, LOW otherwise. Only HIGH with 2+
  independent call sites may be proposed as a named header type.
- `src/decomp/` stays hand-reviewed; `analysis/` is machine-generated and
  regenerable (`python tools/infer_types.py`).

## Next steps

1. Feed `binary_call_edges.csv` back into the roadmap scoring (true fan-in
   for stubs).
2. Propagate arg kinds across call edges (`manager` flows from
   `FUN_B → FUN_A`, so both get `TrackManager *`).
3. Promote shared fields with ≥3 sites to named header structs in
   `include/engine/`.