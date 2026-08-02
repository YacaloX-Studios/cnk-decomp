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
