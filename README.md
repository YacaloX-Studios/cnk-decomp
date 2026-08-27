[![Build Status]][actions] ![Progress] [![Discord Badge]][discord]
=============

[Build Status]: https://github.com/YacaloX-Studios/cnk-decomp/actions/workflows/build.yml/badge.svg
[actions]: https://github.com/YacaloX-Studios/cnk-decomp/actions/workflows/build.yml
[Progress]: https://decomp.dev/YacaloX-Studios/cnk-decomp.svg?mode=shield&measure=matched_code_percent&label=Matched
[Discord Badge]: https://img.shields.io/badge/chat-discord-7289da.svg
[discord]: https://discord.gg/invite

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

## Progress tracking (decomp.dev)

This project reports matching progress to [decomp.dev](https://decomp.dev/YacaloX-Studios/cnk-decomp) (badge above). The CI workflow [build.yml](.github/workflows/build.yml) generates and uploads `build/report.json` on every push/PR.

### 1. Configurar los archivos objetivo (target objects)

El sistema necesita comparar tu código reescrito contra los binarios originales:

- Asegúrate de tener los objetos (`.o`) que representen el estado "completado" del binario. En este repo el baseline congelado es [`src/decomp/analysis/match_baseline.csv`](src/decomp/analysis/match_baseline.csv) (14.439 funciones / 5,1 MB, sha256 por función) y los candidatos se vuelcan como `src/decomp/analysis/recompiled/candidate/<addr>.bin` vía [`tools/recompile_match.py`](tools/recompile_match.py).
- Si migras a **splat** para desensamblar `SLUS_206.49`, activa el parámetro que fuerza objetos completos en lugar de un `.s` por función:

  ```bash
  # en splat config yaml o CLI:
  --make-full-disasm-for-code
  ```

  Esto hace que splat emita objetos completos (`.o` comparables) y objdiff pueda medir el progreso por unidad de compilación.

### 2. Generar el reporte con objdiff

La forma estándar de enviar datos a la plataforma es mediante **objdiff** (o el generador propio de este repo):

```bash
# Opción A — generador propio (sin dependencias nativas, ya integrado al CI):
python tools/decomp_progress.py --out build/report.json
cat build/report.json  # { measures: { matched_code_percent: ... }, categories: [...] }

# Opción B — si usas splat + objdiff nativo:
#   python -m objdiff report generate --in build/report.json --out build/report.json
# (plantillas modernas dtk-template ya lo traen preconfigurado)
```

El workflow [`build.yml`](.github/workflows/build.yml) hace exactamente esto y sube el artefacto `report` con `actions/upload-artifact@v4`. Puedes replicarlo local:

```bash
python tools/decomp_progress.py --candidate src/decomp/analysis/recompiled/candidate
```

### 3. Instalar la aplicación de GitHub

Para que tu proyecto aparezca listado y se actualice solo:

1. Dirígete a [decomp.dev](https://decomp.dev) y crea el proyecto en `Manage → New` (slug sugerido: `YacaloX-Studios/cnk-decomp`).
2. Instala su **GitHub App** en tu repositorio u organización (Settings → GitHub Apps → `decomp.dev` → Install).
3. En `Settings → Secrets and variables → Actions` añade el secreto `DECOMP_DEV_TOKEN` (token con scope `report:write` generado en decomp.dev).
4. El workflow `build.yml` contiene el paso final `publish to decomp.dev` que hace `POST https://decomp.dev/api/YacaloX-Studios/cnk-decomp/report` automáticamente; el bot comentará en tus Pull Requests el delta de progreso.

Sin el token el CI sigue verde (el paso es `if: env.DECOMP_DEV_TOKEN != ''`), así que los forks no fallan.

### 4. Consultar y validar la API

Si usas herramientas personalizadas ajenas a objdiff, puedes estructurar tus reportes usando su esquema de Protocol Buffers (protobuf) y enviarlos directamente mediante su API. Explora los endpoints en el [API explorer de decomp.dev](https://decomp.dev/api) para personalizar también tus medallas (badges) de progreso — p. ej. `https://decomp.dev/YacaloX-Studios/cnk-decomp.svg?mode=shield&measure=matched_code_percent`.

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
- `docs/10_TYPES.md` — Phase 3: signature evidence and anonymous structs
  (`inferred_types.csv`, `binary_call_edges.csv`, `inferred_structs.json`)

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

# 6. Infer function signatures + anonymous structs from the binary
python tools/infer_types.py SLUS_206.49 src/decomp
```

### Posdata

Threre are some things (like the UV Maps, some names and missplacements) that won't export properly, but they're kinda easy to fix
If someone can fix it, please open a Pull request!

I know the actual engine used for the game was, supposedly, the Intrinsic Alchemy 3.0, but on the game the archived name was "Velocity", probably a codename or a different pipeline of the engine
