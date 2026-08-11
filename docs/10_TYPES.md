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

## Phase 3C/3D — `tools/propagate_types.py`

Pushes the Phase 3A evidence across the **full call graph** (45,203 edges,
stubs included) to fixed point, and measures graph centrality.

- 5 provenance levels, high→low: `DIRECT` > `STRUCT_FIELD` >
  `CALL_PROPAGATED` > `RETURN_PROPAGATED` > `HEURISTIC`. Confidence decays
  0.85/hop. `call_arg_flow.csv` (74,320 call-sites) is the edge lattice:
  each call-site argument is tagged `own_aX` (caller forwards its own slot),
  `ret_0x...` (assignment from a previous call's return, so the assignment
  is resolved through `ret`-passthrough chains), or generic `ptr`/`int`.
- Outputs: `propagated_types.csv` (87,096 slot labels, 5,301 struct-typed),
  `type_conflicts.csv` (8,291 unique disagreements, e.g. the *same* call
  argument receiving two different struct layouts — the seed of "this
  anonymous struct must split"), `type_chains.json` (per-label propagation
  edges, 446 chained), `hub_metrics.csv` (in/out degree, weak components,
  sampled Brandes betweenness).
- Hubs found beyond the old roadmap list: `0x00511940` (fan-in **1763**),
  `0x004ba240` (1154), `0x00511860` (703, pure `jalr` leaf), all keyed on
  the global table at `0x720000` — the unidentified API/script dispatchers.

## Phase 3E — `tools/emit_structs.py`

Promotes the evidence into **compilable headers** under `include/engine/`
for hand-written decompilation:

| file | content |
|---|---|
| `types.h` | 34 promoted struct definitions (evidence ≥10, members ≥3, ≥2 fields) + opaque forward decls for all names used by prototypes; `u8/u16/u32/u64/f32` typedefs |
| `substruct_seeds.h` | 246 shared-field seeds (evidence ≥3) as ordering hints for substructs |
| `signatures.h` | 95 typed prototypes for `real_c`/`real_logic` functions whose args carried a struct label |

Promotion keeps the deterministic layout-derived names (`Unknown_a0_4_8` =
floats at `0x4`,`0x8`), so every claim stays reversible to the evidence in
`inferred_types.csv`. Field C types come from the dominant use
(`float`/`ptr`/`int`+width); fields that are *also* dereferenced are marked
`/* also deref'd */`. Role tags (vec2f/vec3f/vec4f/mat4f/object-like) are
comments only — no identity is asserted.

## Phase 3F — `tools/triage_conflicts.py` + `tools/dissect_hubs.py`

Machine-guided human pass. Propagation now produces *decisions*, not just
numbers:

- `conflicts_priority.csv` ranks all 8,291 conflicts by class then evidence.
  **S-S** (840: two different anonymous layouts on one call argument → the
  struct must *split* — strongest finding) > **S-I** (2,905: struct queued
  where the callee reads int → overload / wrong tuple) > **P-I** (3,583:
  generic pointer-vs-int ABI noise). `conflict_report.md` is the readable
  shortlist with field layouts and the winner per site. Example already
  paying off: `0x00511940`'s `a0` receives `Unknown_a0_0_4c`,
  `Unknown_a0_4_8` and `Unknown_a0_8_c` depending on the caller — it is an
  **untyped entry** (a dispatcher), not a typed struct user.
- `hub_candidates.csv` + `hub_report.md` dissect the top fan-in stubs:
  flat listing with data-page resolution and annotated calls/virtual
  dispatches. Findings: `0x00511940` (fan-in 1763) is a global-singleton
  unregister/release path — reads `0x00725d40`, virtual vtable+0x4c,
  refcount `-1` at `+0x2c`, linked-list walk via `+0x30/+0x38/+0x48` —
  followed by 4 virtual teardown methods and 4 sub-calls on the same
  object. `0x00511860`-cluster reads `0x00725ee0/0x00725f18` (engine
  singletons) and forwards a virtual call — a facade/accessor family.
  These are the files to open in Ghidra first.

## Phase 3G — `tools/arch_clusters.py`

Architecture-name propagation from the identified hubs. Naming a hub is
worth a thousand renaming pass: this tool turns `hub_names.csv` seeds
(address,name,note) into a whole-binary colouring.

- For each hub it computes **upstream reach** (everything that transitively
  calls it), **downstream reach** and **peers** (functions sharing ≥10% of
  the hub's callers = co-called pipeline siblings; e.g. `0x0043b320` has 28
  peers, `0x0043af80` 28).
- `arch_map.csv` assigns every function its nearest hub (+direction,
  distance, peer flag). Run 3G immediately after every rename: one CSV edit
  recolours the entire graph.
- Auto-seeding: the top-60 stub + real hubs by fan-in are proposed names
  (`HUB_UNKNOWN_*`); the reviewer renames top-down. A `Seed next` footer
  lists the biggest still-unreached fan-in centres (e.g. `0x004f7c70`,
  `0x001207c0`).
- Combined with 3F the reviewer flow is: dissect (`hub_report.md`) → name
  in `hub_names.csv` → re-run 3G → inspect the recoloured clusters and peel
  off the next hop.

## Phase 3H — `tools/compose_structs.py`

Composition of the Type B mesh. The seed list (`substruct_seeds.h`) records
*one* field at a time; this tool recomposes it with the per-function access
records into two higher-level views:

- **member derives** (`composed_structs.json` → `member_derives`): for each of
  the 396 shared fields, the load/store width each touching site actually
  uses. Same width everywhere ⇒ the member is stable; a site that differs
  (`split_widths` non-empty) is an overload or a struct boundary to split.
  (0 split today — the mesh widths are internally consistent.)
- **co-occurrence groups**: shared fields on one arg that appear *together*
  in the same function bodies ≥3 times are unioned into candidate substructs.
  Emitted strongest-first; e.g. a0's `0x4a8..0x4e4`, a0's `0x3c4..0x3e0`
  (cf. the tagged `ptr` field in 3B), and a1's byte flags at `0x6..0x1f`.
  These are the "assemble the substruct" answer to the 3B seeds.

Outputs: `composed_structs.md` (readable) + `composed_structs.json`.

## Confidence and promotion rules

- Confidence ∈ [0.2, 0.95]; thunks are pinned at 0.2, `real_c` evidence at
  capture time can exceed it but never reach 1.0 without review.
- Levels: HIGH ≥ 0.7, MEDIUM ≥ 0.5, LOW otherwise. Only HIGH with 2+
  independent call sites may be proposed as a named header type.
- `src/decomp/` stays hand-reviewed; `analysis/` is machine-generated and
  regenerable (`python tools/infer_types.py`).

## Next steps

1. ~~Feed `binary_call_edges.csv` back into the roadmap scoring (true fan-in
   for stubs)~~ — done in `hub_metrics.csv` (Phase 3D).
2. ~~Propagate arg kinds across call edges (`manager` flows from
   `FUN_B → FUN_A`, so both get `TrackManager *`)~~ — done as
   `propagated_types.csv` (Phase 3C).
3. ~~Promote shared fields with ≥3 sites to named header structs in
   `include/engine/`~~ — done as `types.h` / `substruct_seeds.h` /
   `signatures.h` (Phase 3E).
4. **Human pass on `type_conflicts.csv`** — tooled: `conflicts_priority.csv`
   is the ordered shortlist. Where propagation split an anonymous struct,
   promote the two layouts to two real names and re-run.
5. **Name the dispatcher hubs** (`0x00511940`, `0x004ba240`, `0x00511860`,
   `0x0050fea0`, + `hub_candidates.csv`/`hub_report.md` as evidence) — in
   Ghidra first, then feed the name back to `SYMBOLS`/`make_registry.py`.
6. Write the recovered real bodies against `signatures.h` so `src/decomp/`
   prototypes and `include/engine/` agree, then delete the promoted structs
   once the real ones take over.