# 11 — Reconstructing the build environment

Roadmap step 4. The goal is `cc -Iinclude/engine validate_headers.c` (or the
PS2 EE cross) compiling the recovered headers with zero errors, proving the
reconstructed C data structures are self-consistent and layout-exact.

## Two tiers

| tier | compiler | purpose |
|---|---|---|
| host | `gcc` / `clang` / `cc` | CI-fast C validity check; `_Static_assert` catches layout drift |
| PS2 EE | `ee-gcc` (ps2dev) | true big-endian MIPS ABI; `sizeof` runs with the real target |

Both compile the same TU: `include/engine/validate_headers.c`, which includes
all five recovered headers and asserts the promoted struct offsets match the
offsets the binary reads (e.g. `Unknown_a0_4_8` fields at `+0x4`/`+0x8`).

## Quick start

```powershell
python tools/build_check.py          # host tier, auto-picks gcc/clang/cc
make check                          # host via Makefile
make check-ee EE_CC=/opt/ps2sdk/bin/ee-gcc   # when a ps2dev SDK exists
```

`tools/build_check.py` resolves the compiler, prints the exact command, and
exits 2 with a readable message when no toolchain exists yet (that "gap"
message is the point of this step: the environment must fail loud).

## Installing a PS2 toolchain (optional but recommended)

The ps2dev project ships a cross toolchain Docker/native build (`ee-gcc`,
big-endian MIPS): https://github.com/ps2dev/ps2sdk. After it is on `PATH`,
`make check-ee` compiles the headers with the real EE ABI.

## What "green" buys

- `types.h` / `signatures.h` / `logic_signatures.h` / `substruct_seeds.h` /
  `recovered_structs.h` are mutually consistent C — nothing hand-authorable
  silently diverges.
- Struct layouts are pinned to binary evidence via `_Static_assert`, so any
  later field edit that shifts an offset fails CI instead of corrupting the
  decomp next time it is built.

## Outputs

| file | content |
|---|---|
| `include/engine/validate_headers.c` | compile-time TU with layout asserts |
| `tools/build_check.py` | auto-compiler resolution + FATAL "no toolchain" gap report |
| `Makefile` | `check` / `check-ee` targets |