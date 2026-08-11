# Conflict review shortlist (Phase 3F)

Raise `type_conflicts.csv` to a decision list. Order: S-S first, then S-I by score.

## S-S  (840)

### `Unknown_a0_0_1c` vs `Unknown_a0_4_8`  (ev 105 vs 382, 1 sites)

A fields: 0x0:ptr*, 0x1c:int
B fields: 0x4:float*, 0x8:float*

  - `0x00428998` a1  0x0050a0a0→0x00428998  **winner=Unknown_a0_0_1c**

### `Unknown_a0_0_4c` vs `Unknown_a0_4_8`  (ev 35 vs 382, 1 sites)

A fields: 0x0:ptr*, 0x4c:int
B fields: 0x4:float*, 0x8:float*

  - `0x00511940` a0  0x001fbc80→0x00511940  **winner=Unknown_a0_0_4c**

### `Unknown_a0_0_4c` vs `Unknown_a0_8_c`  (ev 35 vs 77, 1 sites)

A fields: 0x0:ptr*, 0x4c:int
B fields: 0x8:float*, 0xc:float*

  - `0x004f2100` a0  0x0028ace0→0x004f2100  **winner=Unknown_a0_0_4c**

### `Unknown_a0_0_8` vs `Unknown_a0_4_8`  (ev 35 vs 382, 1 sites)

A fields: 0x0:ptr*, 0x8:ptr*
B fields: 0x4:float*, 0x8:float*

  - `0x0042d770` a0  0x002f6a10→0x0042d770  **winner=Unknown_a0_0_8**

### `Unknown_a0_0_8` vs `Unknown_a1_0_4_8`  (ev 35 vs 43, 1 sites)

A fields: 0x0:ptr*, 0x8:ptr*
B fields: 0x0:float*, 0x4:float, 0x8:float*

  - `0x004baac0` a0  0x00405260→0x004baac0  **winner=Unknown_a0_0_8**

### `Unknown_a1_8` vs `Unknown_a0_0_4_8`  (ev 26 vs 26, 1 sites)

A fields: 0x8:float
B fields: 0x0:float*, 0x4:float*, 0x8:float*

  - `0x00157f60` a0  0x00157960→0x00157f60  **winner=Unknown_a0_0_4_8**

### `Unknown_a0_0_4_8` vs `Unknown_a0_0_1c`  (ev 26 vs 105, 6 sites)

A fields: 0x0:float*, 0x4:float*, 0x8:float*
B fields: 0x0:ptr*, 0x1c:int

  - `0x001aa000` a0  0x001a4b10→0x001aa000  **winner=Unknown_a0_0_4_8**
  - `0x001a9530` a0  0x001a4bf0→0x001a9530  **winner=Unknown_a0_0_4_8**
  - `0x001aad90` a0  0x001a4c60→0x001aad90  **winner=Unknown_a0_0_4_8**
  - `0x001ab470` a0  0x001a4e20→0x001ab470  **winner=Unknown_a0_0_4_8**
  - `0x001abdd0` a0  0x001a4ff0→0x001abdd0  **winner=Unknown_a0_0_4_8**
  - `0x001a8690` a0  0x001a5330→0x001a8690  **winner=Unknown_a0_0_4_8**

### `Unknown_a0_0_1c` vs `Unknown_a0_0_4_8`  (ev 105 vs 26, 1 sites)

A fields: 0x0:ptr*, 0x1c:int
B fields: 0x0:float*, 0x4:float*, 0x8:float*

  - `0x00428998` a2  0x001e6460→0x00428998  **winner=Unknown_a0_0_4_8**

### `Unknown_a0_8_c` vs `Unknown_a0_0_4_8`  (ev 77 vs 26, 1 sites)

A fields: 0x8:float*, 0xc:float*
B fields: 0x0:float*, 0x4:float*, 0x8:float*

  - `0x00429068` a0  0x00407b10→0x00429068  **winner=Unknown_a0_0_4_8**

### `Unknown_a0_0_4c` vs `Unknown_a0_0_80`  (ev 35 vs 19, 1 sites)

A fields: 0x0:ptr*, 0x4c:int
B fields: 0x0:ptr*, 0x80:int

  - `0x00512ee0` a0  0x002f5290→0x00512ee0  **winner=Unknown_a0_0_4c**

### `Unknown_a0_c_10` vs `Unknown_a1_c_10`  (ev 18 vs 24, 1 sites)

A fields: 0xc:float*, 0x10:float*
B fields: 0xc:int, 0x10:int

  - `0x0010ed00` a0  0x00131110→0x0010ed00  **winner=Unknown_a0_c_10**

### `Unknown_a0_4_c` vs `Unknown_a0_4_8`  (ev 18 vs 382, 1 sites)

A fields: 0x4:ptr*, 0xc:ptr*
B fields: 0x4:float*, 0x8:float*

  - `0x002c8400` a0  0x0029db60→0x002c8400  **winner=Unknown_a0_4_c**

### `Unknown_a0_0_4c` vs `Unknown_a0_4_c`  (ev 35 vs 18, 1 sites)

A fields: 0x0:ptr*, 0x4c:int
B fields: 0x4:ptr*, 0xc:ptr*

  - `0x00511940` a0  0x002c8400→0x00511940  **winner=Unknown_a0_0_4c**

### `Unknown_a0_0_4_8` vs `Unknown_a0_4_c`  (ev 26 vs 18, 6 sites)

A fields: 0x0:float*, 0x4:float*, 0x8:float*
B fields: 0x4:ptr*, 0xc:ptr*

  - `0x003b72a0` a0  0x003b93c0→0x003b72a0  **winner=Unknown_a0_0_4_8**
  - `0x003b7300` a0  0x003b9690→0x003b7300  **winner=Unknown_a0_0_4_8**
  - `0x003b7360` a0  0x003b9690→0x003b7360  **winner=Unknown_a0_0_4_8**
  - `0x003b7410` a0  0x003b9690→0x003b7410  **winner=Unknown_a0_0_4_8**
  - `0x003b7510` a0  0x003b9690→0x003b7510  **winner=Unknown_a0_0_4_8**
  - `0x003b7760` a0  0x003b9690→0x003b7760  **winner=Unknown_a0_0_4_8**

### `Unknown_a1_0_4_8` vs `Unknown_a0_0_2c`  (ev 43 vs 16, 1 sites)

A fields: 0x0:float*, 0x4:float, 0x8:float*
B fields: 0x0:ptr*, 0x2c:ptr*

  - `0x0019daf0` a1  0x0019f1f0→0x0019daf0  **winner=Unknown_a1_0_4_8**

### `Unknown_a0_0_4c` vs `Unknown_a0_4_10`  (ev 35 vs 14, 1 sites)

A fields: 0x0:ptr*, 0x4c:int
B fields: 0x4:ptr*, 0x10:ptr*

  - `0x00511940` a0  0x00206d00→0x00511940  **winner=Unknown_a0_0_4c**

### `Unknown_a0_8_c` vs `Unknown_a0_4_10`  (ev 77 vs 14, 1 sites)

A fields: 0x8:float*, 0xc:float*
B fields: 0x4:ptr*, 0x10:ptr*

  - `0x00429068` a0  0x0024e310→0x00429068  **winner=Unknown_a0_4_10**

### `Unknown_a0_4_8` vs `Unknown_a0_30`  (ev 382 vs 14, 1 sites)

A fields: 0x4:float*, 0x8:float*
B fields: 0x30:int

  - `0x0033e6f0` a0  0x0033e550→0x0033e6f0  **winner=Unknown_a0_4_8**

### `Unknown_a0_0_4_8` vs `Unknown_a0_4_10`  (ev 26 vs 14, 1 sites)

A fields: 0x0:float*, 0x4:float*, 0x8:float*
B fields: 0x4:ptr*, 0x10:ptr*

  - `0x00429068` a0  0x0024e310→0x00429068  **winner=Unknown_a0_0_4_8**

### `Unknown_a0_4_30` vs `Unknown_a0_4_8`  (ev 13 vs 382, 1 sites)

A fields: 0x4:ptr*, 0x30:ptr*
B fields: 0x4:float*, 0x8:float*

  - `0x002c7560` a0  0x0029edf0→0x002c7560  **winner=Unknown_a0_4_30**

### `Unknown_a0_0_4c` vs `Unknown_a0_4_30`  (ev 35 vs 13, 1 sites)

A fields: 0x0:ptr*, 0x4c:int
B fields: 0x4:ptr*, 0x30:ptr*

  - `0x00511940` a0  0x002c7560→0x00511940  **winner=Unknown_a0_0_4c**

### `Unknown_a0_0_4c` vs `Unknown_a0_0_50`  (ev 35 vs 13, 2 sites)

A fields: 0x0:ptr*, 0x4c:int
B fields: 0x0:ptr*, 0x50:int

  - `0x00511940` a0  0x002d68c0→0x00511940  **winner=Unknown_a0_0_4c**
  - `0x00511280` a0  0x004fd700→0x00511280  **winner=Unknown_a0_0_4c**

### `Unknown_a0_0_4c` vs `Unknown_a0_8_1c`  (ev 35 vs 13, 1 sites)

A fields: 0x0:ptr*, 0x4c:int
B fields: 0x8:ptr*, 0x1c:ptr*

  - `0x004f2100` a0  0x0051f5f0→0x004f2100  **winner=Unknown_a0_0_4c**

### `Unknown_a0_0_4_8_c_10` vs `Unknown_a0_0_1c`  (ev 12 vs 105, 2 sites)

A fields: 0x0:float*, 0x4:ptr*, 0x8:float, 0xc:float*, 0x10:float*
B fields: 0x0:ptr*, 0x1c:int

  - `0x001a1f20` a0  0x001a1e80→0x001a1f20  **winner=Unknown_a0_0_4_8_c_10**
  - `0x001ab740` a0  0x001a4f00→0x001ab740  **winner=Unknown_a0_0_4_8_c_10**

### `Unknown_a0_0_4_8_c_10` vs `Unknown_a0_0_4_8`  (ev 12 vs 26, 1 sites)

A fields: 0x0:float*, 0x4:ptr*, 0x8:float, 0xc:float*, 0x10:float*
B fields: 0x0:float*, 0x4:float*, 0x8:float*

  - `0x0026e060` a0  0x001a8690→0x0026e060  **winner=Unknown_a0_0_4_8_c_10**

## S-I  (2905)

- `0x0012bda0` aa0 FUN_0012bda0  `int`/`Unknown_a0_0_4_8_10_28_2c_64` → winner=int  (0x0012c400→0x0012bda0, ev 0/2, DIRECT)
- `0x0012bda0` aa1 FUN_0012bda0  `int`/`Unknown_a2_8` → winner=int  (0x0012c400→0x0012bda0, ev 0/9, DIRECT)
- `0x0012bda0` aa2 FUN_0012bda0  `int`/`Unknown_a2_8` → winner=int  (0x0012c400→0x0012bda0, ev 0/9, DIRECT)
- `0x0043bc40` aa0 0x0043bc40  `int`/`Unknown_a0_0` → winner=int  (0x00183650→0x0043bc40, ev 0/2, DIRECT)
- `0x00189d40` aa2 FUN_00189d40  `int`/`Unknown_a2_0` → winner=int  (0x00188080→0x00189d40, ev 0/4, DIRECT)
- `0x00189d40` aa3 FUN_00189d40  `int`/`Unknown_a3_0` → winner=int  (0x00188080→0x00189d40, ev 0/3, DIRECT)
- `0x00189130` aa1 0x00189130  `Unknown_a1_0`/`int` → winner=Unknown_a1_0  (0x00189cf0→0x00189130, ev 2/0, DIRECT)
- `0x00189170` aa1 0x00189170  `Unknown_a1_0`/`int` → winner=Unknown_a1_0  (0x00189d40→0x00189170, ev 2/0, DIRECT)
- `0x00189130` aa2 0x00189130  `int`/`Unknown_a2_0` → winner=int  (0x0018ae20→0x00189130, ev 0/4, DIRECT)
- `0x00189130` aa3 0x00189130  `int`/`Unknown_a3_0` → winner=int  (0x0018ae20→0x00189130, ev 0/3, DIRECT)
- `0x00189170` aa2 0x00189170  `int`/`Unknown_a2_0` → winner=int  (0x0018ae80→0x00189170, ev 0/4, DIRECT)
- `0x00189170` aa3 0x00189170  `int`/`Unknown_a3_0` → winner=int  (0x0018ae80→0x00189170, ev 0/3, DIRECT)
- `0x00190f60` aa0 0x00190f60  `Unknown_a0_3e0`/`int` → winner=Unknown_a0_3e0  (0x00198e80→0x00190f60, ev 4/0, DIRECT)
- `0x00196890` aa0 0x00196890  `Unknown_a0_3e0`/`int` → winner=Unknown_a0_3e0  (0x00198ed0→0x00196890, ev 4/0, DIRECT)
- `0x00196890` aa1 0x00196890  `Unknown_a1_1e4_1e8_1ec`/`int` → winner=Unknown_a1_1e4_1e8_1ec  (0x00198ed0→0x00196890, ev 2/0, DIRECT)
- `0x001a5ab0` aa1 0x001a5ab0  `int`/`Unknown_a1_0_4_38` → winner=int  (0x001a8d10→0x001a5ab0, ev 0/2, DIRECT)
- `0x00196800` aa1 0x00196800  `int`/`Unknown_a1_0_4` → winner=int  (0x001a94a0→0x00196800, ev 0/3, DIRECT)
- `0x00199120` aa1 0x00199120  `int`/`Unknown_a1_0_4` → winner=int  (0x001ab6b0→0x00199120, ev 0/3, DIRECT)
- `0x00337430` aa1 0x00337430  `int`/`Unknown_a0_8_c_10` → winner=int  (0x001ab880→0x00337430, ev 0/7, DIRECT)
- `0x001cade0` aa0 0x001cade0  `Unknown_a0_b4`/`int` → winner=Unknown_a0_b4  (0x001cb220→0x001cade0, ev 3/0, DIRECT)
- `0x001eb740` aa1 0x001eb740  `int`/`Unknown_a1_0_4_8_c` → winner=int  (0x001ebea0→0x001eb740, ev 0/23, DIRECT)
- `0x00244580` aa2 0x00244580  `Unknown_a2_0`/`int` → winner=Unknown_a2_0  (0x002467a0→0x00244580, ev 4/0, DIRECT)
- `0x005141e0` aa2 0x005141e0  `int`/`Unknown_a2_4` → winner=int  (0x002e7870→0x005141e0, ev 0/10, DIRECT)
- `0x00511940` aa2 0x00511940  `int`/`Unknown_a2_4` → winner=int  (0x002e7870→0x00511940, ev 0/10, DIRECT)
- `0x00512ee0` aa0 0x00512ee0  `Unknown_a0_0_4c`/`int` → winner=Unknown_a0_0_4c  (0x003342e0→0x00512ee0, ev 35/0, DIRECT)
## S-P  (0)

## P-I  (3583)

- `0x00105010` aa1 0x00105010  `int`/`ptr` → winner=int  (0x00104cc0→0x00105010, ev 0/0, DIRECT)
- `0x0012c220` aa0 0x0012c220  `ptr`/`int` → winner=ptr  (0x0012bf60→0x0012c220, ev 0/0, STRUCT_FIELD)
- `0x00540780` aa0 FUN_00540780  `ptr`/`int` → winner=ptr  (0x0012bf60→0x00540780, ev 0/0, STRUCT_FIELD)
- `0x0017af20` aa1 0x0017af20  `int`/`ptr` → winner=int  (0x00181500→0x0017af20, ev 0/0, DIRECT)
- `0x00199120` aa0 0x00199120  `ptr`/`int` → winner=ptr  (0x001ab6b0→0x00199120, ev 0/0, STRUCT_FIELD)
- `0x0015df80` aa0 0x0015df80  `ptr`/`int` → winner=ptr  (0x001cb220→0x0015df80, ev 0/0, STRUCT_FIELD)
- `0x0023e070` aa1 FUN_0023e070  `int`/`ptr` → winner=Unknown_a1_0_4_8  (0x00241210→0x0023e070, ev 0/0, HEURISTIC)
- `0x00244580` aa0 0x00244580  `int`/`ptr` → winner=int  (0x002467a0→0x00244580, ev 0/0, DIRECT)
- `0x00244580` aa1 0x00244580  `int`/`ptr` → winner=int  (0x002467a0→0x00244580, ev 0/0, DIRECT)
- `0x002c5ef0` aa1 0x002c5ef0  `int`/`ptr` → winner=int  (0x002c48f0→0x002c5ef0, ev 0/0, DIRECT)
- `0x00512ee0` aa1 0x00512ee0  `ptr`/`int` → winner=ptr  (0x003342e0→0x00512ee0, ev 0/0, STRUCT_FIELD)
- `0x003981c0` aa1 0x003981c0  `ptr`/`int` → winner=ptr  (0x00337690→0x003981c0, ev 0/0, STRUCT_FIELD)
- `0x0033c3b0` aa0 0x0033c3b0  `int`/`ptr` → winner=int  (0x0033c170→0x0033c3b0, ev 0/0, DIRECT)
- `0x0033c3b0` aa1 0x0033c3b0  `int`/`ptr` → winner=int  (0x0033c170→0x0033c3b0, ev 0/0, DIRECT)
- `0x0038da20` aa0 0x0038da20  `int`/`ptr` → winner=int  (0x003994a0→0x0038da20, ev 0/0, DIRECT)
- `0x00428f48` aa0 FUN_00428f48  `int`/`ptr` → winner=int  (0x00428b18→0x00428f48, ev 0/0, DIRECT)
- `0x00428f48` aa1 FUN_00428f48  `ptr`/`int` → winner=ptr  (0x00428b18→0x00428f48, ev 0/0, STRUCT_FIELD)
- `0x0042a5e8` aa0 FUN_0042a5e8  `ptr`/`int` → winner=ptr  (0x00429ef0→0x0042a5e8, ev 0/0, STRUCT_FIELD)
- `0x00429708` aa0 FUN_00429708  `int`/`ptr` → winner=int  (0x0042acb0→0x00429708, ev 0/0, DIRECT)
- `0x00429708` aa1 FUN_00429708  `int`/`ptr` → winner=int  (0x0042acb0→0x00429708, ev 0/0, DIRECT)
- `0x00432fc0` aa1 FUN_00432fc0  `ptr`/`int` → winner=ptr  (0x0042ba78→0x00432fc0, ev 0/0, STRUCT_FIELD)
- `0x00432fc0` aa2 FUN_00432fc0  `ptr`/`int` → winner=ptr  (0x0042ba78→0x00432fc0, ev 0/0, STRUCT_FIELD)
- `0x00429068` aa3   `int`/`ptr` → winner=Unknown_a3_0  (0x0042c280→0x00429068, ev 0/0, HEURISTIC)
- `0x00428df8` aa3   `int`/`ptr` → winner=Unknown_a1_0_5c_60  (0x0042c280→0x00428df8, ev 0/0, CALL_PROPAGATED)
- `0x00431130` aa0   `int`/`ptr` → winner=ptr  (0x0042c660→0x00431130, ev 0/0, CALL_PROPAGATED)
