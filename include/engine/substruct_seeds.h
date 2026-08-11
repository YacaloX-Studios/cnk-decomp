/* ============================================================================
 * include/engine/substruct_seeds.h - shared-field seeds (Phase 3B mesh)
 * machine-generated; one-field overlaps across >=3 functions. These are NOT
 * promoted structs - they are ordering hints for substructs the caller must
 * assemble. arg is the slot aX; evidence = functions touching the field.
 * ======================================================================== */

#ifndef _CNK_ENGINE_SUBSTRUCT_SEEDS_H
#define _CNK_ENGINE_SUBSTRUCT_SEEDS_H

#include "types.h"

/* 246 seeds with evidence>=3 */

/* a1+0x3c : float (w4) x31   e.g. 71e0, ab30, cc60, d040, 1150, 0270 */
/* a0+0x1b0 : float (w4) x21   e.g. 5820, 63d0, a560, d330, e150, ea30 */
/* a1+0x4c : int (w4) x21   e.g. 1150, 0400, afb0, 7f60, 94e0, 8fe0 */
/* a1+0x5c : int (w4) x20   e.g. 7570, 0260, 04d0, 0780, 08d0, 09d0 */
/* a1+0x54 : int (w4) x15   e.g. 2fc0, 0270, 40f0, afb0, 7f60, 8fe0 */
/* a0+0x3 : char (w1) x14   e.g. fcb0, 0080, 41d0, bc00, 7860, 6ea0 */
/* a0+0x530 : int (w4) x14   e.g. 66c0, 49b0, a730, a8d0, aa50, ab40 */
/* a2+0x34 : int (w4) x14   e.g. 3100, 0f10, 5f80, 68d0, 74d0, 8870 */
/* a0+0x294 : int (w4) x13   e.g. 4e00, 66c0, e790, ebe0, ecd0, fe80 */
/* a0+0x3e0 : int (w4) x13   e.g. 66c0, dd40, be40, c320, add0, af40 */
/* a3+0xc : int (w4) x13   e.g. c6a0, d460, 22e0, 3810, 25e0, 7390 */
/* a0+0x3d : char (w1) x12   e.g. 21d0, 5290, 9c70, b4c0, ba50, bd30 */
/* a0+0x-1 : char (w1) x11   e.g. fcb0, 72a0, 7300, 7360, 7410, 7510 */
/* a2+0x1c : int (w4) x11   e.g. 3100, 0f10, 22e0, c110, 5290, 8870 */
/* a0+0x35 : char (w1) x10   e.g. 2ae0, 3b80, 75d0, 7c00, 8920, d3d0 */
/* a0+0x190 : float (w4) x10   e.g. b030, a560, 4e00, 66c0, 0d40, 9d30 */
/* a0+0x1a0 : int (w4) x10   e.g. a560, 4e00, 66c0, 90b0, 0d40, 9d30 */
/* a0+0x198 : float (w4) x9   e.g. b030, a560, 4e00, 66c0, 0d40, 9d30 */
/* a0+0x1e0 : float (w4) x9   e.g. a110, d240, 66c0, a5e8, 0b10, 44d0 */
/* a1+0x3d : char (w1) x9   e.g. 18d0, f900, 3310, 3850, 4db0, 5950 */
/* a1+0x1e0 : ptr (w4) x9   e.g. 9310, 10b0, 1460, 2480, 0eb0, 0f40 */
/* a0+0x-4 : int (w4) x8   e.g. bfa8, ab90, af20, d238, dba0, c840 */
/* a0+0x46 : char (w1) x8   e.g. 3d80, 4b90, 3cd0, 4d70, 54f0, 5c30 */
/* a0+0x1a4 : float (w4) x8   e.g. a560, 4e00, 66c0, 9160, 0d40, 9d30 */
/* a0+0x1b8 : int (w4) x8   e.g. a560, 4e00, 66c0, 0d40, 12e0, 8960 */
/* a0+0x2ac : int (w4) x8   e.g. 4e00, 66c0, e790, f880, f8c0, f910 */
/* a0+0x2d8 : int (w4) x8   e.g. 4e00, 66c0, e790, 04b0, 05b0, 06a0 */
/* a0+0x35c : int (w4) x8   e.g. 66c0, 3f60, 40e0, 4270, 4360, 44b0 */
/* a0+0x1b74 : ptr (w4) x8   e.g. 0098, 04e0, 0880, 0c78, 0fc8, 1690 */
/* a0+0x6 : char (w1) x7   e.g. fe00, 1d60, 8920, 17d8, 1140, 12f0 */
/* a0+0x7 : ptr (w1) x7   e.g. bc50, 1b90, 8920, 17d8, 3820, e7b0 */
/* a0+0x11 : char (w1) x7   e.g. 7600, 2ae0, ff50, 5860, 74b0, 8920 */
/* a0+0x15 : char (w1) x7   e.g. 53a0, c220, c320, b4d0, 8920, 17d8 */
/* a0+0x2d : char (w1) x7   e.g. 7a30, 8920, 5410, 57c0, 58d0, 5990 */
/* a0+0x42 : char (w1) x7   e.g. 3b80, 75d0, 1c50, 1d20, 8920, d430 */
/* a0+0xb1 : char (w1) x7   e.g. a560, 0d40, 37a0, 3b80, 75d0, 4180 */
/* a0+0x18c : float (w4) x7   e.g. a560, 4e00, 66c0, 0d40, 4180, 76e0 */
/* a0+0x1e4 : int (w4) x7   e.g. 66c0, 0b10, a270, 1100, 12e0, 2f00 */
/* a0+0x334 : int (w4) x7   e.g. 4e00, 66c0, 2ce0, 4b10, 4f20, 5740 */
/* a1+0x100 : int (w4) x7   e.g. ea00, ec60, f960, fcc0, 0510, 10b0 */
/* a0+0x1d : char (w1) x6   e.g. 4540, 36b0, 8920, 17d8, 1c60, 1e60 */
/* a0+0x1f : char (w1) x6   e.g. 4950, 49d0, 36b0, e3d0, 8920, 17d8 */
/* a0+0x41 : char (w1) x6   e.g. 3b80, 75d0, fdf0, 08e0, 1c50, 8920 */
/* a0+0x19c : int (w4) x6   e.g. a560, 4e00, 66c0, 0d40, 4180, d660 */
/* a0+0x1a8 : int (w4) x6   e.g. 4e00, 66c0, 0d40, 9d30, a270, d660 */
/* a0+0x1bc : int (w4) x6   e.g. a560, 4e00, 66c0, 0d40, 4548, d660 */
/* a0+0x1c8 : int (w4) x6   e.g. a560, 4e00, 66c0, 0d40, 4548, d660 */
/* a0+0x1d8 : int (w4) x6   e.g. 4e00, 66c0, a5e8, 4548, d660, 8c10 */
/* a0+0x1f4 : int (w4) x6   e.g. 4e00, 66c0, c170, 1280, c4d8, a490 */
/* a0+0x1fc : int (w4) x6   e.g. 4e00, 66c0, e570, eba0, 4270, 99b0 */
/* a0+0x234 : int (w4) x6   e.g. 4e00, 66c0, dcc0, c0e0, d660, b7d0 */
/* a0+0x24c : int (w4) x6   e.g. 4e00, 66c0, dcc0, cff0, d550, d660 */
/* a0+0x390 : float (w4) x6   e.g. 8de0, 66c0, df60, ec00, 4ed0, 53a0 */
/* a0+0x3b8 : int (w4) x6   e.g. 66c0, 0140, 7070, 7110, 7270, 74d0 */
/* a0+0x4d4 : int (w4) x6   e.g. 66c0, 6b40, 72a0, 52b0, 53a0, 5600 */
/* a0+0x8b4 : int (w4) x6   e.g. 6800, 68e0, 72a0, 2ae0, 0bd0, 1230 */
/* a1+0xb : char (w1) x6   e.g. fcb0, 18d0, 0460, 7c60, 17d8, 4678 */
/* a1+0xf : char (w1) x6   e.g. 18d0, 9790, b0d0, e780, 0460, 17d8 */
/* a1+0x1d : char (w1) x6   e.g. 18d0, 1ee0, 1f70, 8fe0, 0460, 17d8 */
/* a1+0xe8 : int (w4) x6   e.g. 70e0, 36b0, 7810, 7f10, 1d40, 7330 */
/* a1+0xec : int (w4) x6   e.g. 69e0, 1510, 2160, 35b0, 7810, 7f10 */
/* a1+0xf0 : int (w4) x6   e.g. 69e0, 4090, ba30, 1260, 7810, 7f10 */
/* a2+0x3 : char (w1) x6   e.g. 2fc0, fcb0, b170, 0460, b968, d1e0 */
/* a0+0x31 : char (w1) x5   e.g. 2ae0, 75d0, 9250, 2250, 8920 */
/* a0+0x51 : char (w1) x5   e.g. 17d0, 1830, 1910, 8920, 37b8 */
/* a0+0x1ac : int (w4) x5   e.g. 4e00, 66c0, 0d40, a270, d660 */
/* a0+0x1c4 : int (w4) x5   e.g. a560, 4e00, 66c0, 0d40, d660 */
/* a0+0x1dc : int (w4) x5   e.g. 4e00, 66c0, a5e8, 4548, d660 */
/* a0+0x1ec : int (w4) x5   e.g. 4e00, 66c0, 11c0, c4d8, f260 */
/* a0+0x200 : int (w4) x5   e.g. 4e00, 66c0, 4880, 50a0, eba0 */
/* a0+0x240 : int (w4) x5   e.g. 4e00, 66c0, c0e0, c4d8, d660 */
/* a0+0x274 : int (w4) x5   e.g. 4e00, 66c0, 6b40, 72a0, d660 */
/* a0+0x290 : ptr (w4) x5   e.g. d240, 4e00, 66c0, 8780, 9ca0 */
/* a0+0x2a4 : int (w4) x5   e.g. 4e00, 66c0, f950, fbe0, d660 */
/* a0+0x2b0 : int (w4) x5   e.g. 4e00, 66c0, e790, e480, d660 */
/* a0+0x2b4 : int (w4) x5   e.g. 4e00, 66c0, e790, 1c00, d660 */
/* a0+0x2cc : int (w4) x5   e.g. 4e00, 66c0, e790, d660, d7d0 */
/* a0+0x2d4 : int (w4) x5   e.g. 4e00, 66c0, e790, fec0, d660 */
/* a0+0x360 : int (w4) x5   e.g. 66c0, ddf0, e940, 4360, 53a0 */
/* a0+0x3a0 : int (w4) x5   e.g. 66c0, 9330, 9c90, a440, 4ed0 */
/* a0+0x3a8 : int (w4) x5   e.g. 66c0, 57e0, 7b40, 2020, 7870 */
/* a0+0x3e4 : float (w4) x5   e.g. 5820, 66c0, e2c0, 4fd0, 5410 */
/* a0+0x4e8 : int (w4) x5   e.g. 66c0, 44c0, 5e00, 5f60, 45a0 */
/* a1+0x6 : char (w1) x5   e.g. 18d0, 9eb0, 0460, 17d8, 4678 */
/* a1+0x7 : char (w1) x5   e.g. 18d0, 9eb0, 0460, 17d8, 4678 */
/* a1+0x17 : char (w1) x5   e.g. 18d0, e3d0, 14d0, 0460, 17d8 */
/* a1+0x1a : char (w1) x5   e.g. d770, 8d40, 18d0, 0460, 17d8 */
/* a1+0xcc : ptr (w4) x5   e.g. 7100, 7220, 7340, 73e0, 10b0 */
/* a1+0x118 : char (w1) x5   e.g. 84c0, 8540, 8780, 8800, 8880 */
/* a2+0x17 : char (w1) x5   e.g. fcb0, 2b70, 3150, d5b0, d6b0 */
/* a2+0x44 : int (w4) x5   e.g. 1030, 08e8, 60c0, 4780, 8050 */
/* a2+0x1b30 : ptr (w4) x5   e.g. b6c8, cb90, cc98, cd18, cd40 */
/* a3+0x34 : int (w4) x5   e.g. f7a0, 9570, 9690, 08e8, 1188 */
/* a0+0x29 : char (w1) x4   e.g. 76a0, 75d0, 9250, 8920 */
/* a0+0x32 : char (w1) x4   e.g. 75d0, 9250, 2250, 8920 */
/* a0+0x33 : char (w1) x4   e.g. 75d0, 9250, 2250, 8920 */
/* a0+0x37 : char (w1) x4   e.g. 75d0, 8920, 0a10, 2200 */
/* a0+0xa5 : char (w1) x4   e.g. d4b0, 0530, 0610, 8920 */
/* a0+0x111 : char (w1) x4   e.g. a560, 0d40, 9f20, 8920 */
/* a0+0x1cc : int (w4) x4   e.g. 4e00, 66c0, 4548, d660 */
/* a0+0x1e8 : int (w4) x4   e.g. 4e00, 66c0, 1160, c4d8 */
/* a0+0x21c : int (w4) x4   e.g. 4e00, 66c0, 9d90, dcc0 */
/* a0+0x22c : int (w4) x4   e.g. 66c0, dcc0, d660, 6870 */
/* a0+0x238 : int (w4) x4   e.g. 4e00, 66c0, c0e0, d660 */
/* a0+0x23c : int (w4) x4   e.g. 4e00, 66c0, c0e0, d660 */
/* a0+0x248 : int (w4) x4   e.g. 4e00, 66c0, dcc0, d660 */
/* a0+0x258 : int (w4) x4   e.g. 4e00, 66c0, dcc0, d660 */
/* a0+0x25c : int (w4) x4   e.g. 4e00, 66c0, c4d8, d660 */
/* a0+0x264 : int (w4) x4   e.g. 4e00, 66c0, c4d8, d660 */
/* a0+0x268 : float (w4) x4   e.g. f130, 4e00, 66c0, d660 */
/* a0+0x28c : int (w4) x4   e.g. 4e00, 66c0, 8780, 9ca0 */
/* a0+0x2a0 : int (w4) x4   e.g. 4e00, 66c0, e790, d660 */
/* a0+0x2b8 : int (w4) x4   e.g. 4e00, 66c0, e790, d660 */
/* a0+0x2bc : int (w4) x4   e.g. 4e00, 66c0, e790, d660 */
/* a0+0x2c0 : int (w4) x4   e.g. 4e00, 66c0, e790, d660 */
/* a0+0x2c4 : int (w4) x4   e.g. 4e00, 66c0, e790, d660 */
/* a0+0x2c8 : int (w4) x4   e.g. 66c0, e790, 19b0, d660 */
/* a0+0x2d0 : int (w4) x4   e.g. 66c0, e790, 1b20, d660 */
/* a0+0x2dc : int (w4) x4   e.g. 4e00, 66c0, e790, d660 */
/* a0+0x31c : int (w4) x4   e.g. 66c0, 99a0, deb0, bf80 */
/* a0+0x3bc : int (w4) x4   e.g. 66c0, 7430, 74d0, 7580 */
/* a0+0x3d4 : int (w4) x4   e.g. 66c0, dd40, bb30, c5e0 */
/* a0+0x3d8 : int (w4) x4   e.g. 66c0, dd40, bb30, c5e0 */
/* a0+0x3dc : int (w4) x4   e.g. 66c0, dd40, bb30, c5e0 */
/* a0+0x4cc : int (w4) x4   e.g. 66c0, 52b0, 53a0, 5600 */
/* a0+0x4d0 : int (w4) x4   e.g. 66c0, 52b0, 53a0, 5600 */
/* a0+0x4e0 : int (w4) x4   e.g. 4e00, 66c0, 52b0, eb40 */
/* a0+0x4e4 : int (w4) x4   e.g. 4e00, 66c0, 52b0, ef70 */
/* a0+0x4f8 : float (w4) x4   e.g. 5c80, 66c0, eda0, ef00 */
/* a0+0x7dc : int (w4) x4   e.g. 0a10, 2200, 3820, 5000 */
/* a0+0x1b30 : ptr (w4) x4   e.g. 9ff8, cdf0, ce18, d1e0 */
/* a0+0x1b38 : int (w4) x4   e.g. 8a18, 8e30, 8e98, ad40 */
/* a0+0x1f8c : int (w4) x4   e.g. d9a0, e340, e610, e890 */
/* a0+0x3568 : ptr (w4) x4   e.g. 0350, 6280, 31f0, a8c0 */
/* a1+0x-c : float (w4) x4   e.g. 7b10, 7dc0, f670, bf80 */
/* a1+0x19 : char (w1) x4   e.g. 8d40, 18d0, 0460, 17d8 */
/* a1+0x1b : char (w1) x4   e.g. 8d40, 18d0, 0460, 17d8 */
/* a1+0xe4 : int (w4) x4   e.g. ca80, fcc0, 19d0, 2160 */
/* a1+0xf4 : int (w4) x4   e.g. 69e0, 36b0, 7810, 7f10 */
/* a2+0x-2ca2 : int (w4) x4   e.g. e248, e418, e9c0, ebe8 */
/* a2+0x-2c9e : int (w4) x4   e.g. e248, e418, e9c0, ebe8 */
/* a2+0x-288f : char (w1) x4   e.g. e248, e418, e9c0, ebe8 */
/* a3+0x2c : float (w4) x4   e.g. 9570, 08e8, 1188, a100 */
/* a0+0x19 : char (w1) x3   e.g. 6900, 8920, 17d8 */
/* a0+0x21 : char (w1) x3   e.g. 8c50, 71e0, 8920 */
/* a0+0x36 : char (w1) x3   e.g. 1800, 75d0, 8920 */
/* a0+0x39 : char (w1) x3   e.g. 8920, b8a0, b8d0 */
/* a0+0x3f : char (w1) x3   e.g. 98d0, ba50, 8920 */
/* a0+0x49 : char (w1) x3   e.g. 4cc0, 8540, 8920 */
/* a0+0x59 : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x5a : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x5b : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x5d : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x5e : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x5f : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x61 : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x62 : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x71 : char (w1) x3   e.g. a350, 2d10, 8920 */
/* a0+0x73 : char (w1) x3   e.g. d670, a350, 8920 */
/* a0+0x89 : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x99 : char (w1) x3   e.g. 2ae0, 75d0, 8920 */
/* a0+0x9b : char (w1) x3   e.g. 3b80, 75d0, 8920 */
/* a0+0xaa : char (w1) x3   e.g. 8a20, 9280, 8920 */
/* a0+0xb2 : char (w1) x3   e.g. 75d0, 4180, 8920 */
/* a0+0xb3 : char (w1) x3   e.g. 75d0, 4180, 8920 */
/* a0+0xb5 : char (w1) x3   e.g. e150, 4180, 8920 */
/* a0+0xf5 : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0xfa : char (w1) x3   e.g. 8540, a910, 8920 */
/* a0+0x165 : char (w1) x3   e.g. a560, 0d40, 8920 */
/* a0+0x205 : char (w1) x3   e.g. 9d90, ab70, 11f0 */
/* a0+0x214 : int (w4) x3   e.g. 4e00, 66c0, e340 */
/* a0+0x218 : float (w4) x3   e.g. b030, 4e00, 66c0 */
/* a0+0x254 : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x260 : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x26c : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x270 : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x278 : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x27c : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x280 : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x284 : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x288 : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x298 : int (w4) x3   e.g. 4e00, 66c0, e790 */
/* a0+0x29c : int (w4) x3   e.g. 4e00, 66c0, e790 */
/* a0+0x2a8 : int (w4) x3   e.g. 4e00, 66c0, d660 */
/* a0+0x2ec : int (w4) x3   e.g. 66c0, 44c0, e790 */
/* a0+0x2fa : char (w1) x3   e.g. e790, efe0, f3d0 */
/* a0+0x30c : int (w4) x3   e.g. 4e00, 66c0, e070 */
/* a0+0x314 : float (w4) x3   e.g. 7870, 4e00, 66c0 */
/* a0+0x338 : int (w4) x3   e.g. 4e00, 66c0, 22e0 */
/* a0+0x340 : int (w4) x3   e.g. 4e00, 66c0, 6870 */
/* a0+0x344 : int (w4) x3   e.g. 4e00, 66c0, 6870 */
/* a0+0x38c : int (w4) x3   e.g. 66c0, 4ed0, 53a0 */
/* a0+0x394 : int (w4) x3   e.g. 66c0, 4ed0, 53a0 */
/* a0+0x398 : int (w4) x3   e.g. 66c0, 4ed0, 53a0 */
/* a0+0x3c4 : int (w4) x3   e.g. 66c0, dd40, c5e0 */
/* a0+0x3c8 : int (w4) x3   e.g. 66c0, dd40, c5e0 */
/* a0+0x3cc : int (w4) x3   e.g. 66c0, dd40, c5e0 */
/* a0+0x3f0 : int (w4) x3   e.g. 66c0, 5e50, c4d8 */
/* a0+0x42c : float (w4) x3   e.g. 5820, 63d0, 66c0 */
/* a0+0x454 : int (w4) x3   e.g. 66c0, cad8, d660 */
/* a0+0x45c : int (w4) x3   e.g. 66c0, ee10, d660 */
/* a0+0x478 : int (w4) x3   e.g. 66c0, 4fd0, 45a0 */
/* a0+0x490 : int (w4) x3   e.g. 66c0, add0, 4d20 */
/* a0+0x498 : int (w4) x3   e.g. 66c0, 08b0, 1b50 */
/* a0+0x4a4 : int (w4) x3   e.g. 4e00, 66c0, 60f0 */
/* a0+0x4a8 : int (w4) x3   e.g. 4e00, 66c0, 52b0 */
/* a0+0x4ac : int (w4) x3   e.g. 4e00, 66c0, 52b0 */
/* a0+0x4b0 : int (w4) x3   e.g. 4e00, 66c0, 52b0 */
/* a0+0x4b4 : int (w4) x3   e.g. 4e00, 66c0, 52b0 */
/* a0+0x4b8 : int (w4) x3   e.g. 4e00, 66c0, 52b0 */
/* a0+0x4bc : int (w4) x3   e.g. 4e00, 66c0, 52b0 */
/* a0+0x4c0 : float (w4) x3   e.g. 4e00, 66c0, 52b0 */
/* a0+0x4c8 : int (w4) x3   e.g. 66c0, 72a0, 52b0 */
/* a0+0x4dc : int (w4) x3   e.g. 4e00, 66c0, 52b0 */
/* a0+0x508 : int (w4) x3   e.g. 66c0, 5f60, 45a0 */
/* a0+0x520 : int (w4) x3   e.g. 66c0, 4850, 8ac0 */
/* a0+0x54c : int (w4) x3   e.g. 66c0, 5f60, c420 */
/* a0+0x594 : char (w1) x3   e.g. fa40, 00a0, 0350 */
/* a0+0x5a0 : char (w1) x3   e.g. 4240, 45a0, e010 */
/* a0+0x604 : int (w4) x3   e.g. c420, cad8, d660 */
/* a0+0x7e0 : int (w4) x3   e.g. 0a10, 0ed0, 1c70 */
/* a0+0xf38 : int (w4) x3   e.g. 0b90, 1590, 6610 */
/* a0+0x1944 : int (w4) x3   e.g. 53f0, 5430, 4fe0 */
/* a0+0x1ab4 : int (w4) x3   e.g. 57c0, 5818, f308 */
/* a0+0x1b7c : int (w4) x3   e.g. 0e30, 0e78, 0e98 */
/* a1+0x-8 : float (w4) x3   e.g. bf80, c4c0, c780 */
/* a1+0x-1 : char (w1) x3   e.g. ce88, e9a0, 3ae0 */
/* a1+0xe : char (w1) x3   e.g. 18d0, 0460, 17d8 */
/* a1+0x13 : char (w1) x3   e.g. 18d0, 0460, 17d8 */
/* a1+0x1f : char (w1) x3   e.g. 18d0, 0460, 17d8 */
/* a1+0x2d : char (w1) x3   e.g. 18d0, 0100, 4fa0 */
/* a1+0x49 : char (w1) x3   e.g. 1800, 18d0, 1150 */
/* a1+0xb0 : int (w4) x3   e.g. fee0, 9f30, fc80 */
/* a1+0xb4 : int (w4) x3   e.g. d0d0, 19d0, dd40 */
/* a1+0xd4 : ptr (w4) x3   e.g. 23f0, 6b70, 99c0 */
/* a2+0x-2c92 : int (w4) x3   e.g. e248, e418, e9c0 */
/* a2+0xf : char (w1) x3   e.g. fcb0, b170, 8ee0 */
/* a2+0x11 : char (w1) x3   e.g. d770, fcb0, b170 */
/* a2+0x3c : int (w4) x3   e.g. 3100, 0f10, 8870 */
/* a2+0x5c : float (w4) x3   e.g. ce70, 08e8, 89b0 */
/* a3+0x-7c : int (w4) x3   e.g. 4f20, 5300, 56e0 */
/* a3+0x-78 : int (w4) x3   e.g. 4f20, 5300, 56e0 */
/* a3+0x-74 : int (w4) x3   e.g. 4f20, 5300, 56e0 */
/* a3+0x-10 : int (w4) x3   e.g. 4f20, 5300, 56e0 */
/* a3+0x44 : float (w4) x3   e.g. b460, 1188, 8e70 */
/* a3+0x58 : ptr (w4) x3   e.g. dad0, 4060, 4268 */

#endif
