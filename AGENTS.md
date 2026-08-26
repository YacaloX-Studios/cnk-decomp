# AGENTS

Working environment notes for this repo (Crash Nitro Kart reverse-engineering).

## Tooling

- Python 3.14 (`python`). PowerShell 5.1 shell on win32. Working dir is the repo root.
- Temp scratch scripts live in `C:\Users\Admin\AppData\Local\Temp\opencodec\`
  (pre-approved external dir).

## Commands

### Extract the GFC asset archive

```powershell
python tools/extract_gfc.py [ASSETS.GFC] [ASSETS.GOB] [out_dir]
# default out_dir: gfc_extracted
```

Recovers all **4327** STBL frames. Naming tier:
1. CRC32(content) correlation vs the GFC pool  -> ~1430 assets.
2. Positional shift `recA[i] <-> pool[i+1].name` (validated against content magic) -> ~352 assets.
3. Content-magic fallback `block_NNNNN.<ext>` -> remaining blocks.

### Run the asset-export pipeline (after GFC extraction)

```powershell
python tools/export_all.py        # runs extract_gfc.py + igbs + geometry export
```

### Geometry / IGB extraction

```powershell
python tools/extract_geometry.py [ASSET.igb] [OUT.obj]
# e.g. python tools/extract_geometry.py gfc_extracted/ps2/gfx/items/crystal.igb crystal.obj
# For 64KB slot files with paged static data, pass the GOB + manifest:
python tools/extract_geometry.py gfc_extracted/ps2/gfx/mptracks/arena2.igb arena2.obj `
    --gob ASSETS.GOB --manifest gfc_extracted/_manifest.csv
```

### IGB parser status (igb_lib.IGB)

- **454/483 `.igb` files parse** (94%). 29 are non-IGB content mislabeled `.igb`
  (LevelInfo text, PNG, `0xFFFFFFFF` fill) — these raise `ValueError` and are data, not meshes.
- The CNK **64KB slot-binary variant** (chars/karts/tracks/mptracks/extanim/UI) is NOT a
  different format: it is v2 IGB with **paged static-data**. The 64KB slot holds only the
  scene graph + the first ~10KB of the data section; the remaining bytes are **the STBL
  frames that immediately follow the slot in ASSETS.GOB** (each a 64KB "data page"). The
  page run length is fixed by `sections[3]['size']` (e.g. arena2 = 1,105,148 B = slot tail
  + 17 following frames, exactly). `igb_lib.IGB.reconstruct_data_blocks()` re-slices the
  DATA-ref blocks from the stitched stream.
- Geometry export (`extract_geometry.py` / `export_all.py --gob ... --manifest ...`):
  **313 of 454** produce OBJ (**531,307 verts / 424,771 faces / 1455 meshes**), up from 157.
  The remaining 141 parsed files are data/UI/anim (0 verts by design). No walk errors.
- `export_all.py` walks `gfc_extracted` and stitches pages when `--gob` + `--manifest` given.
- `debug_geom.load_igb` delegates to `igb_lib.IGB` and returns the same tuple
  `(types, structs, refs, objs, data_blocks, top)`.

### Diagnostics / scratch

Diagnostic scripts (`diagNN.py`) are single-use; re-run from the temp folder:

```powershell
python C:\Users\Admin\AppData\Local\Temp\opencodec\diagNN.py
```

### Executable analysis / decomp (SLUS_206.49)

```powershell
python tools/analyze_elf.py SLUS_206.49      # byte-exact ELF header/segments, both endiannesses
python tools/decomp_split.py SLUS_206.49.c src/decomp   # 440 real / 13,999 stub functions
```

- `src/decomp/inventory.csv` = full function census (`kind=real|stub`).
- `src/decomp/real/` = one clean `.c` per recovered function; 67 symboled via
  the `SYMBOLS` table in `decomp_split.py`, plus auto-classified pure-copy
  leaves (`core/struct`). Subsystem census in `docs/08_SUBSYSTEMS.md`.
- **Caveat**: only **214 of the 440 "real"** bodies actually contain logic; the
  other 226 reduce to `halt_baddata()`/`halt_unimplemented()` (unrecovered).
  See `docs/09_ROADMAP.md`.
- **Stub classification** (`tools/classify_stubs.py`): the **13,999 "stubs"
  are genuine R5900 code**, not garbage. Every one starts with the MIPS
  `addiu sp` prologue (`0x27bdxxxx`). Binary census over the on-disc ELF:
  **13,916 `code`** (normal functions) + **83 `thunk`** (small jump-pad
  entries) + 0 in the other categories. Writes `stub_classify.csv` +
  `stub_census.md` to `src/decomp/analysis/`. Re-running `decomp_split.py`
  cleans orphan files so `real/` stays 1:1 with `inventory.csv`.
- **Symbol registry** (`tools/make_registry.py`): merges symbol + status +
  size + confidence + callers/callees + score into ONE navigable map:
  `src/decomp/analysis/symbols.csv` (14,439 rows). Status classes:
  `real_c` (67 symboled), `real_logic` (147), `pseudo_stub` (226),
  `stub_code` (13,916), `stub_thunk` (83).
- **Signature inference** (`tools/infer_types.py`): decodes the on-disc ELF
  at every function (LE uint32 words -> BE R5900 opcode) and gathers
  evidence: args read / ptr-vs-int via pointer-taint on a0..a3, return kind
  in v0 at `jr $ra`, struct field offsets incl. pointer-chases, absolute
  `jal` targets, notable constants, float/COP2/simd flags. Writes
  `inferred_types.csv` (per-func), `binary_call_edges.csv` (**45,203 edges**,
  true call graph incl. stubs), `inferred_types.md` (evidence blocks) and
  `inferred_structs.json` (Phase 3B anonymous structs + shared-field mesh).
  Evidence only, no invented names; confidence 0..0.95.
- **Type propagation** (`tools/propagate_types.py`): pushes the per-function
  evidence across the binary call graph to fixed point. 5 provenance levels:
  `DIRECT` > `STRUCT_FIELD` > `CALL_PROPAGATED` > `RETURN_PROPAGATED` >
  `HEURISTIC`; confidence decays 0.85/hop. Emits `propagated_types.csv`
  (final label per function/arg/return), `type_conflicts.csv` (disagreeing
  labels w/ provenance), `type_chains.json` (per-label propagation edges),
  and `hub_metrics.csv` (full-graph in/out degree, weak components, sampled
  Brandes betweenness — top 25 hubs printed).
- **Header promotion** (`tools/emit_structs.py`): emits compilable
  `include/engine/types.h` (promoted anonymous structs + opaque forward
  decls), `include/engine/substruct_seeds.h` (shared-field seeds ≥3 sites)
  and `include/engine/signatures.h` (typed prototypes for real functions
  with struct-labelled args). Names remain layout-derived (`Unknown_a0_4_8`).
- **Architecture clusters** (`tools/arch_clusters.py`): Phase 3G. Reads
  `src/decomp/analysis/hub_metrics.csv` + `hub_names.csv` (editor-supplied
  names) + N→1 `binary_call_edges.csv` edges, then BFS every hub upstream
  & downstream. Emits `arch_map.csv` (every function → nearest hub,
  direction, distance, peer flag) and `arch_clusters.md` (per-hub clusters,
  peers sharing ≥10% of callers, and a "Seed next" footer of the biggest
  unreached fan-in centres). Top-60 hubs by fan-in are auto-seeded as
  `HUB_UNKNOWN_*`; rename in `hub_names.csv` and re-run to recolour the
  binary. Run after every hub dissection/rename.
- **Type B composition** (`tools/compose_structs.py`): Phase 3H. Recomposes
  the shared-field mesh with per-function access records into `composed_structs.md/json`:
  per-field **member derives** (widths each site uses; non-empty `split_widths`
  ⇒ overload/struct boundary) and **co-occurrence groups** (offsets on one arg
  that appear together ≥3×, unioned into candidate substructs).
- **Recovery worklist** (`tools/recovery_sheets.py`): Phase 4A. Merges all
  analysis products into `recovery_worklist.csv` (ranked real_logic targets by
  `features.score`) + `recovery_sheets/<addr>.md` per-function evidence packs
  (score, signature, labels, graph, accesses, consts, hub/frontier).
- **Candidate structs** (`tools/recover_structs.py`): Phase 4B. Drafts the
  composed groups as commented C in `include/engine/recovered_structs.h`
  (layout-derived names, evidence comments; PROMOTE-ME workflow).
- **Full signatures** (`tools/emit_signatures.py`): Phase 4C. Emits typed
  prototypes for **all 214** logic functions (not just the 95 with struct
  labels) into `include/engine/logic_signatures.h`; `signature_recovery.csv`
  records sources.
- **Build env** (`tools/build_check.py`, `Makefile`): Phase 4D. Compiles
  `include/engine/validate_headers.c` (layout `_Static_assert`s) with the best
  available compiler (host gcc/clang or ps2dev ee-gcc). Exits 2 with a FATAL
  gap message when no toolchain exists. GitHub Actions `decomp-ci.yml` gates
  tools + headers.
- **Match baseline** (`tools/match_baseline.py`, `tools/match_check.py`):
  Phase 4E. Baseline freezes per-function raw bytes from the on-disc ELF
  (`match_baseline.csv`, 14,439 fn / 5.1 MB, sha256-fingerprinted).
  `match_check.py <candidate|--self>` reports EXACT/SIZE-ONLY/DIFF/MISSING
  and a global match %; `--self` = 100% parity by construction.
- **Recompile harness** (`tools/recompile_match.py`): Phase 4F. Compiles
  `src/decomp/recovered/*.c`, dumps each function's `.text.<sym>` section to
  `candidate/<addr>.bin` (via objcopy or the built-in ELF section reader) and
  chains into `match_check.py`. Compiler tiers auto-resolved, best wins:
  `mips64r5900el-ps2-elf-gcc` / `ee-gcc` (ps2dev EE, real R5900 bytes) >
  mips-linux-gnu > host gcc/clang/zig (syntax only).

### Matching toolchain (byte-exact goal)

The retail binary self-identifies its build tools — strings inside
SLUS_206.49 (`EE Ver.* Build:Apr 16 2003` + `Append: GCC2096 SCE2700`):

- **Compiler**: ee-gcc **2.96** ("GCC2096"), Cygnus/SCE cross for R5900.
- **SDK**: Sony SCE **2700** (PS2 SDK 2.7.x, libs built Apr 16 2003).

GCC 15 (modern ps2dev) can never reproduce those bytes; EXACT requires the
original cc1. The canonical copy used by PS2 decomp projects (god-hand-decomp
matches byte-for-byte with it) is:

```
https://github.com/decompme/compilers/releases/download/compilers/ee-gcc2.96.tar.xz
sha256 0590d2ca9da8f5903889d66761220d14b47a8d14ba987ca53db84a1650a1fd0a   (VERIFIED)
```

Contents are **Linux i386 ELF** binaries (`bin/ee-as`, `bin/ee-cpp`,
`lib/gcc-lib/ee/2.96-ee-001003-1/{cc1,cc1plus,cpp0}`) — they do NOT run on
Windows natively. Options: WSL2 + `libc6:i386` (standard route), or a Linux
box/container. A Win32-native fallback exists (`ee-gcc2.95.3-136.tar.gz`,
SN ProDG v1.36, same release page) but is GCC 2.95.3 — wrong codegen for
CNK's 2.96 build.

Modern ps2dev EE tier (installed at
`F:\Descargas\ps2dev-windows-latest.tar\ps2dev`, GCC 15.2.0 target
`mips64r5900el-ps2-elf`): 32-bit PE exes that need MSYS2 **i686** DLLs
copied next to them (`ee\bin` + `ee\libexec\gcc\mips64r5900el-ps2-elf\15.2.0`):
`libgmp-10`, `libiconv-2`, `libisl-23`, `libmpc-3`, `libmpfr-6`,
`libwinpthread-1`, `libzstd`, `libgcc_s_dw2-1` (+ `libstdc++-6`). Source:
MSYS2 i686 repo packages (`repo.msys2.org/mingw/i686/`; note
`libwinpthread-1.dll` lives in the `mingw-w64-i686-libwinpthread*` package,
NOT in `winpthreads`, and `libgcc_s_dw2-1.dll` in `gcc-libs`). The driver
defaults to `-march=r5900 -mhard-float -msingle-float -mno-llsc -mno-shared
-mplt`.

### ENDIANNESS CORRECTION (important)

The on-disc SLUS_206.49 is a **genuine little-endian MIPS ELF** — NOT an
"endian-swapped preservation copy". The EE boots little-endian (`MIPSEL`
predefines in the SN specs, ps2dev target is `r5900el`). e_flags read LE =
`0x20924001` = the standard EABI64/R5900 flag set (retail EXE shows
`...4000` without the reloc bit). All earlier notes claiming a swapped copy
were wrong; candidate `.text` bytes compare against baseline bytes directly,
no swapping anywhere.

### SN ProDG tier (era-correct, runs natively on Windows)

`ee-gcc2.95.3-136.tar.gz` (SN Systems ProDG v1.36, sha256
3b6ae6897229ad005aaf1b0afaa1f3cb46e74b4c21a42e01130c07c0c598067f, VERIFIED)
contains Win32 PE binaries that run natively here — installed at
`F:\Descargas\ee-gcc2.95.3-136\` (`bin\ee-gcc.exe` driver +
`lib\gcc-lib\ee\2.95.3\{cc1,cc1plus,cpp,as}.exe` + `specs`). Its specs say
`*version: 2.95.3-EE`, predefines `-D_MIPSEL -D_R5900`, multilib defaults
`EL mips3`. Its objects are full-LE ELF32 MIPS with e_flags `0x20924001` —
the same format as the retail ELF.

`recompile_match.py` auto-detects it as tier **SN-EE** (search order:
env `CNK_SN_GCC`, `tools/toolchains/ee-gcc2.95.3-136/`,
`F:\Descargas\ee-gcc2.95.3-136\`, temp dir). It compiles with
`-B<sn-lib> -I tools/sn_include -G0 -O<n>` (no `-ffunction-sections` in
gcc 2.95 — functions are sliced from the object symtab instead), and pads
candidate bins with zeros to the baseline size so link padding doesn't mask
matches. Repo has `tools/sn_include/stdint.h` because the 2003 toolchain
ships no libc headers.

Status after first SN-EE run (-O2): **6/6 recovered files compile, 4 of 7
function bins SIZE-ONLY, 2 DIFF, 0 EXACT** (GCC 15 tier had been 7 DIFF).
Remaining gap is instruction selection (e.g. FUN_00114cf0 wants
`lui $v1/sw-offset` + store sunk into the `jr` delay slot — v0 reserved
hints the original returned something). Next lever: the actual GCC2096 cc1
(Linux i386 ELF, already downloaded+sha-verified at temp
`opencode/ee-gcc2.96/`) needs WSL2 + libc6:i386; WSL install was staged but
cancelled (UAC denied). Add `...\ps2dev\ee\bin` to PATH for the modern tier.
- **Conflict triage + hub dissection** (`tools/triage_conflicts.py`,
  `tools/dissect_hubs.py`): the human-review toolkit. Triage ranks all
  type-conflicts by class S-S > S-I > P-I (`conflicts_priority.csv`,
  `conflict_report.md`); dissection flat-disassembles the top fan-in stubs
  with global-table base resolution + annotated calls/vtable dispatch
  (`hub_candidates.csv`, `hub_report.md`) — `0x00511940` (fan-in 1763)
  resolves to a singleton unregister/release path.
- **Priority scoring / call graph / leaf classification:**

```powershell
python tools/score_functions.py            # reads src/decomp, writes src/decomp/analysis/
```

  Emits `features.csv`, `call_edges.csv`, `call_graph.dot`, `leaf_classify.csv`
  and `roadmap.md`. Score = fan-in × 3 + callees + globals + COP2 + loops +
  size. `docs/09_ROADMAP.md` explains the ranking and the recoverable set.
- The on-disc SLUS_206.49 reads as **little-endian** MIPS ELF (`data=1`,
  `e_flags=0x20924000`, entry `0x00108D28`, LOAD at `0x00100000`) — genuine
  LE, see the ENDIANNESS CORRECTION above (old "swapped copy" claim wrong).
- IGB parser (`tests` regression): public object list is `igb.objs` (not
  `objects`); scene walk is `extract_meshes()` (not `walk_scene()`).

## Linting / type-checking

No linter or type-checker is configured for this repo (plain Python scripts).
Run a syntax compile before committing script changes:

```powershell
python -m py_compile tools/extract_gfc.py
```

## Notes

- All multi-byte GFC/GOB fields are **big-endian**.
- STBL frame layout: `STBL(4) + flag(1) + payload + ENBL(4)`; flag `0x7a`=zlib, `0x30`=raw.
- Do not use `python -c "..."` for multi-line/scratch work on this Windows shell —
  PowerShell mangles backslash escapes and redirects to `NUL`. Always write a
  temporary `.py` file and run it. Avoid piping to Unix-only helpers (grep/head/curl).
