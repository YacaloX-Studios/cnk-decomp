# Crash Nitro Kart Decomp

Reverse-engineering project for **Crash Nitro Kart** (PS2 / Xbox / GameCube, 2003,
developed by Vicarious Visions, published by Universal Interactive / Vivendi Universal Games).

This repository contains the analysis tools and format documentation produced by our own
reverse engineering of the game's proprietary containers:

- **GFC / GOB** — asset archive and its index (4327 STBL frames, 64KB-slot layout)
- **IGB v5** — "Intrinsic Geometry Binary" (Vicarious Visions' Velocity engine): meshes,
  animations, textures
- **OBJ / MTL** geometry export

## Disclaimer

This project does not contain copyrighted assets.

Users must provide their own legally obtained copy of Crash Nitro Kart.

The game and all of its assets are © 2003 Universal Interactive / Vivendi Universal Games;
the Crash Bandicoot IP is owned by Activision Blizzard (Microsoft). Nothing in this
repository grants permission to redistribute the game's data.

## Current Status

### Assets
- [x] GFC/GOB extraction
- [x] 4327 STBL frames recovered
- [x] IGB v5 parsing
- [x] Geometry export (313/454 files, 531k verts)
- [x] Texture extraction
- [x] Animation extraction
- [x] Audio extraction (VAGP -> WAV)

### Executable
- [x] ELF analysis (LE byte-swapped MIPS, both endiannesses)
- [x] Function inventory (14,439 functions)
- [x] 440 functions with recovered bodies
- [x] Stub classification (13,916 code + 83 thunk = real R5900, not garbage)
- [x] Subsystem census
- [x] Symbol registry (`src/decomp/analysis/symbols.csv`)
- [x] Quantitative roadmap (`docs/09_ROADMAP.md`)
- [ ] Recover remaining functions
- [ ] Recover data structures
- [ ] Recover function signatures
- [ ] Reconstruct build environment
- [ ] Matching/recompilation

## Repository layout

```
├── docs/         format specifications and research notes
├── tools/        extraction, parsing, and export scripts
├── src/          decompiled, readable source (src/decomp/, generated)
├── include/      placeholder for headers (future)
├── README.md
└── .gitignore
```

## Usage

Requires a legally obtained copy of the game in the repo root. From the repo root:

```powershell
# 1. Extract the GFC asset archive (all 4327 STBL frames -> gfc_extracted/)
python tools/extract_gfc.py ASSETS.GFC ASSETS.GOB gfc_extracted

# 2. Export OBJ geometry from a single IGB file
python tools/extract_geometry.py gfc_extracted/ps2/gfx/items/crystal.igb crystal.obj

#    64KB slot files (chars/karts/tracks) page their static data across the
#    frames that follow them in ASSETS.GOB. Pass --gob/--manifest to stitch:
python tools/extract_geometry.py gfc_extracted/ps2/gfx/mptracks/arena2.igb arena2.obj `
    --gob ASSETS.GOB --manifest gfc_extracted/_manifest.csv

# 3. Batch-export all geometry (+ textures, + animations)
python tools/export_all.py --gob ASSETS.GOB --manifest gfc_extracted/_manifest.csv
```

## Documentation

- `docs/01_FORMATS.md` — GFC / GOB / IGB format overview
- `docs/05_GFC_SPEC.md` — GFC (Gob File Container) byte-exact spec
- `docs/06_IGB_VARIANTS.md` — IGB v5 parser status and the 64KB slot / paged
  static-data recovery
- `docs/04_EXTRACTION.md` — end-to-end extraction pipeline (audio included)
- `docs/07_EXECUTABLES.md` — SLUS_206.49 / IOPRP255.IMG / SYSTEM.CNF, ELF
  segments, and the function inventory (440 recovered / 13,999 stubs)
- `docs/08_SUBSYSTEMS.md` — subsystem census of the 440 real functions
  (shape distribution, module map, key recovered areas, leaf heuristics)
- `docs/09_ROADMAP.md` — quantitative decomp priority: call graph, VU0 kernels,
  leaf auto-classification, what to decompile first
- `src/decomp/analysis/stub_census.md` — binary stub classification of the
  13,999 "stubs" (13,916 real code / 83 thunks; confirmed via ELF opcodes,
  not garbage)
- `src/decomp/analysis/symbols.csv` — master symbol registry
  (address / size / subsystem / confidence / callers / callees / status)

## Executable decompilation

```powershell
# 1. Analyze the ELF (both endiannesses, byte-exact)
python tools/analyze_elf.py SLUS_206.49

# 2. Split the raw export into a readable decomposition
python tools/decomp_split.py SLUS_206.49.c src/decomp

# 3. Classify the 13,999 "stub" functions by their ELF opcodes
python tools/classify_stubs.py SLUS_206.49 src/decomp

# 4. Score features / call graph / leaf ranking
python tools/score_functions.py

# 5. Build the master symbol registry
python tools/make_registry.py
```

### Posdata

Threre are some things (like the UV Maps, some names and missplacements) that won't export properly, but they're kinda easy to fix
If someone can fix it, please open a Pull request!

I know the actual engine used for the game was, supposedly, the Intrinsic Alchemy 3.0, but on the game the archived name was "Velocity", probably a codename or a different pipeline of the engine
