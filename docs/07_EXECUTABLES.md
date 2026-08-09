# 07. Executables: SLUS_206.49, IOPRP255.IMG, SYSTEM.CNF

This document covers the three executables shipped in the repo root, their
recovered C decomposition (`*.c` beside each binary), and the function inventory
produced from the pyrolysis.

## 1. SLUS_206.49 — PS2 main ELF

| Item | Value |
|------|-------|
| File | `SLUS_206.49` |
| Size | 6,234,672 B |
| Export | `SLUS_206.49.c` (162,665 lines) |

### ELF header (byte-exact, decoded `tools` side-by-side)

```
e_ident : 7f 45 4c 46 | class=1 (32-bit) | data=1 (little-endian) | version=1
e_type  : 2   (ET_EXEC)
e_machine: 8  (MIPS)
e_version: 1
e_entry : 0x00108D28
e_phoff : 0x00000034
e_shoff : 0x005F20F0
e_flags : 0x20924000   (R5900/EE)
e_ehsize: 52
```

> Note on endianness: the on-disc copy of this executable reads as
> **little-endian** (`data=1`) even though the EE is big-endian. This is most
> consistent with an endian-swapped preservation/repack copy; the inferred
> R5900 magic `0x20924000` and the MIPS machine number are unaffected. Either
> endianness, segment decode below is from the file's own byte order.

### Segments (program headers)

| # | type | offset | vaddr | filesz | memsz | flags |
|---|------|--------|-------|--------|-------|-------|
| 0 | PT_LOAD 1 | 0x00000080 | 0x00100000 | 6,234,112 | 6,464,640 | 0x7 (RWE) |
| 1 | PT_LOAD 1 | 0x005F2080 | 0x0072A480 | 0 | 0 | 0x6 (RW) |

Segment 0 maps the file from offset `0x80` to vaddr `0x00100000` (the classic PS2
base). Its memory size exceeds file size by ~230 KB (0x22F480 bytes of BSS at the
top of the region). Segment 1 is the stripped tail (`.comment`/`.reginfo`).

Sections: `.shstrtab`, `.strtab`/`.symtab` empty, one full LOAD section (PROG
flags 0x7 vaddr 0x00100000), a second flagged 0x3 segment, `.comment` 43 B,
`.reginfo` 24 B. The ELF was shipped stripped of symbols.

### Recovered function inventory

Parsing `SLUS_206.49.c` (see `tools/decomp_split.py`) classifies every
`FUN_xxxxxxxx`:

- **14,439** functions total.
- **440** have real recovered bodies (the decompiler produced actual code).
- **13,999** decompile only to `halt_baddata();` (bad-instruction-stubs).

All function addresses follow the same rule: `FUN_xxxxxxxx` == vaddr
`0x00100000 + xxxxxxxx`.

### Positive identifications (from code reading)

| Address | Symbol | Module | Notes |
|---------|--------|--------|-------|
| 0x0010E780 | `packed_bits_write` | core/bitstream | Stream bit writer (ctx+4 buf, +8 cap, +0x10 wbitpos) |
| 0x0010EE50 | `packed_bits_read` | core/bitstream | Stream bit reader (mirror of the writer) |
| 0x0011E790 | `defaults_init_entity` | game/entity | Bulk 1.0f/100f/101f initializers |
| 0x001A1BD0 | `sort_assign_rank` | game/ranking | Selection sort + rank fields at +0x18 / flags +0x14/15 |
| 0x0022ADE0 | `layout_screen_rect` | ui/layout | 800×420 screen-space layout |
| 0x0022D1A0 | `layout_screen_rect_b` | ui/layout | sibling |
| 0x002304A0 | `layout_screen_rect_c` | ui/layout | sibling |
| 0x003A0730 | `gaussjordan_solve` | math/matrix | 5-col Gaussian elimination |
| 0x003A09F0 | `gaussjordan_solve_b` | math/matrix | solver back-pass |
| 0x003EC660 | `index_of_int` | core/containers | linear index search |
| 0x0042F660 | `strtok_save_state` | core/strings | stateful tokeniser |
| 0x004518D0 | `blit_palette_image` | gfx/image | 18 KB CLUT-style 8/16-bit blit |
| 0x00530050 | `swap16` | core/endian | BE<->LE u16 |
| 0x00530080 | `swap32` | core/endian | BE<->LE u32 |
| 0x00534B60 | `dma_copy_block` | core/mem | 2.3 KB aligned block copy |
| 0x0058D7C0 | `lerp3` | math/vec | float3 lerp |
| 0x0058DEA0 | `pixel_format_convert` | gfx/color | channel-packing switch |
| 0x004F9EB0 | `ff_audio_mix` | audio/dsp | unconfirmed float loop |

Remaining 422 real functions are unclassified but recovered; see
`src/decomp/inventory.csv` (column `kind=real`) and the individual bodies in
`src/decomp/real/`.

## 2. IOPRP255.IMG — IOP-relocated program

| Item | Value |
|------|-------|
| File | `IOPRP255.IMG` (264,449 B, raw module image) |
| Export | `IOPRP255.IMG.c` (stub only) |

The Ghidra export produced no executable code: raw image is a PS2 IOP runtime
module (relocatable program image), not an ELF. Decompilation yields only the
`undefined` typedef and nothing else. **No code was recovered.** Treat as data.

## 3. SYSTEM.CNF — disc boot descriptor

| Item | Value |
|------|-------|
| File | `SYSTEM.CNF` (57 B) |
| Export | `SYSTEM.CNF.c` (stub) |

```
BOOT2 = cdrom0:\SLUS_206.49;1
VER   = 1.00
VMODE = NTSC
```

- Boots `SLUS_206.49` from the DVD ISO9660 root.
- NTSC region, version 1.00.

## Reproducing the split

```powershell
python tools/decomp_split.py SLUS_206.49.c src/decomp
```