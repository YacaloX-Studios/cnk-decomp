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

## Executable decompilation

```powershell
# 1. Analyze the ELF (both endiannesses, byte-exact)
python tools/analyze_elf.py SLUS_206.49

# 2. Split the raw export into a readable decomposition
python tools/decomp_split.py SLUS_206.49.c src/decomp
```
