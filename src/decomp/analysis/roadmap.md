# Decompilation roadmap (SLUS_206.49)

Scored by `tools/score_functions.py`. Higher = decompile sooner.

| category | count |
|---|---|
| unlabeled | 44 |
| vu0_unknown | 44 |
| thunk | 17 |
| leaf_accessor | 19 |
| leaf_int | 15 |
| leaf_mem | 8 |
| leaf_ctor | 0 |
| pseudo_stub | 226 |
| symboled | 67 |


## unlabeled

| score | address | name | in | outR | glb | cop2 | size | hint |
|---|---|---|---|---|---|---|---|---|
| 17.88 | 0x004312a0 | FUN_004312a0 | 1 | 2 | 0 | 0 | 344 | struct_op:field assignment/read mix |
| 12.88 | 0x00431390 | FUN_00431390 | 2 | 0 | 0 | 0 | 344 | struct_op:field assignment/read mix |
| 12.48 | 0x00433ef0 | FUN_00433ef0 | 2 | 0 | 0 | 0 | 324 | struct_op:field assignment/read mix |
| 11.12 | 0x00433090 | FUN_00433090 | 1 | 0 | 0 | 0 | 406 | struct_op:field assignment/read mix |
| 10.86 | 0x0042a5e8 | FUN_0042a5e8 | 2 | 0 | 0 | 0 | 243 | struct_op:field assignment/read mix |
| 8.24 | 0x0042f130 | FUN_0042f130 | 0 | 1 | 0 | 0 | 162 | struct_op:field assignment/read mix |
| 6.16 | 0x0042d770 | FUN_0042d770 | 0 | 0 | 0 | 0 | 308 | struct_op:field assignment/read mix |
| 6.16 | 0x00430000 | FUN_00430000 | 0 | 0 | 0 | 0 | 308 | struct_op:field assignment/read mix |
| 6.16 | 0x00431920 | FUN_00431920 | 0 | 0 | 0 | 0 | 308 | struct_op:field assignment/read mix |
| 6.08 | 0x0042ae68 | FUN_0042ae68 | 0 | 0 | 0 | 0 | 304 | struct_op:field assignment/read mix |
| 5.98 | 0x0042c280 | FUN_0042c280 | 0 | 0 | 0 | 0 | 299 | struct_op:field assignment/read mix |
| 5.98 | 0x0042c848 | FUN_0042c848 | 0 | 0 | 0 | 0 | 299 | struct_op:field assignment/read mix |
| 5.96 | 0x0031c990 | FUN_0031c990 | 0 | 0 | 0 | 0 | 298 | struct_op:field assignment/read mix |
| 5.26 | 0x0013e950 | FUN_0013e950 | 0 | 0 | 0 | 0 | 263 | predicate:boolean test on struct fields |
| 4.92 | 0x002470e0 | FUN_002470e0 | 0 | 0 | 0 | 0 | 246 | struct_op:field assignment/read mix |
| 4.92 | 0x003ee2e0 | FUN_003ee2e0 | 0 | 0 | 0 | 0 | 246 | struct_op:field assignment/read mix |
| 4.92 | 0x003eea70 | FUN_003eea70 | 0 | 0 | 0 | 0 | 246 | struct_op:field assignment/read mix |
| 4.88 | 0x001f4e00 | FUN_001f4e00 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x002366c0 | FUN_002366c0 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x003eddf0 | FUN_003eddf0 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x003ef2b0 | FUN_003ef2b0 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x003ef8c0 | FUN_003ef8c0 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x003efc30 | FUN_003efc30 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x003f00a0 | FUN_003f00a0 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x003f0810 | FUN_003f0810 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x003f0d60 | FUN_003f0d60 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x003f1430 | FUN_003f1430 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x0042bde0 | FUN_0042bde0 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x0042f158 | FUN_0042f158 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x0042fd98 | FUN_0042fd98 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.88 | 0x0058ab30 | FUN_0058ab30 | 0 | 0 | 0 | 0 | 244 | struct_op:field assignment/read mix |
| 4.86 | 0x003bff30 | FUN_003bff30 | 0 | 0 | 0 | 0 | 243 | struct_op:field assignment/read mix |
| 4.86 | 0x0040b3e0 | FUN_0040b3e0 | 0 | 0 | 0 | 0 | 243 | struct_op:field assignment/read mix |
| 4.86 | 0x0042cfe0 | FUN_0042cfe0 | 0 | 0 | 0 | 0 | 243 | struct_op:field assignment/read mix |
| 4.86 | 0x0042f750 | FUN_0042f750 | 0 | 0 | 0 | 0 | 243 | struct_op:field assignment/read mix |
| 4.86 | 0x0044fcb0 | FUN_0044fcb0 | 0 | 0 | 0 | 0 | 243 | struct_op:field assignment/read mix |
| 4.30 | 0x004285f0 | FUN_004285f0 | 1 | 0 | 0 | 0 | 65 | struct_op:field assignment/read mix |
| 4.30 | 0x0042ce18 | FUN_0042ce18 | 0 | 0 | 0 | 0 | 215 | struct_op:field assignment/read mix |
| 4.06 | 0x0043cb00 | FUN_0043cb00 | 1 | 0 | 0 | 0 | 53 | struct_op:field assignment/read mix |
| 2.52 | 0x00114cf0 | FUN_00114cf0 | 0 | 0 | 0 | 0 | 126 | struct_op:field assignment/read mix |
| 1.60 | 0x0040a820 | FUN_0040a820 | 0 | 0 | 0 | 0 | 80 | struct_op:field assignment/read mix |
| 1.12 | 0x00363b70 | FUN_00363b70 | 0 | 0 | 0 | 0 | 56 | struct_op:field assignment/read mix |
| 1.06 | 0x00115460 | FUN_00115460 | 0 | 0 | 0 | 0 | 53 | struct_op:field assignment/read mix |
| 1.06 | 0x004450e0 | FUN_004450e0 | 0 | 0 | 0 | 0 | 53 | struct_op:field assignment/read mix |

## vu0_unknown

| score | address | name | in | outR | glb | cop2 | size | hint |
|---|---|---|---|---|---|---|---|---|
| 19.26 | 0x00120720 | FUN_00120720 | 0 | 0 | 0 | 4 | 363 | other:simd/vu0 |
| 18.16 | 0x004299a0 | FUN_004299a0 | 3 | 0 | 0 | 1 | 308 | other:simd/vu0 |
| 16.28 | 0x00429c60 | FUN_00429c60 | 3 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 15.92 | 0x0034bb20 | FUN_0034bb20 | 0 | 0 | 0 | 3 | 346 | other:simd/vu0 |
| 15.92 | 0x0036d630 | FUN_0036d630 | 0 | 0 | 0 | 3 | 346 | other:simd/vu0 |
| 15.70 | 0x001206f0 | FUN_001206f0 | 0 | 0 | 0 | 3 | 335 | other:simd/vu0 |
| 14.30 | 0x0042a980 | FUN_0042a980 | 0 | 1 | 0 | 1 | 365 | other:simd/vu0 |
| 13.78 | 0x0042cac8 | FUN_0042cac8 | 0 | 1 | 0 | 1 | 339 | other:simd/vu0 |
| 13.20 | 0x0042d708 | FUN_0042d708 | 0 | 1 | 0 | 1 | 260 | other:simd/vu0 |
| 11.84 | 0x0042ab60 | FUN_0042ab60 | 0 | 1 | 0 | 1 | 242 | other:simd/vu0 |
| 11.84 | 0x0042d680 | FUN_0042d680 | 0 | 1 | 0 | 1 | 242 | other:simd/vu0 |
| 11.28 | 0x00365450 | FUN_00365450 | 0 | 0 | 0 | 2 | 264 | other:simd/vu0 |
| 10.28 | 0x00429708 | FUN_00429708 | 1 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 10.28 | 0x00429760 | FUN_00429760 | 1 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 10.28 | 0x004297c0 | FUN_004297c0 | 1 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 10.28 | 0x00429880 | FUN_00429880 | 1 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 10.28 | 0x0042c5c0 | FUN_0042c5c0 | 1 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 10.28 | 0x0042c660 | FUN_0042c660 | 1 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 10.26 | 0x0042bfa8 | FUN_0042bfa8 | 0 | 0 | 0 | 1 | 363 | other:simd/vu0 |
| 10.26 | 0x0042c740 | FUN_0042c740 | 0 | 0 | 0 | 1 | 363 | other:simd/vu0 |
| 9.18 | 0x0042cb00 | FUN_0042cb00 | 0 | 0 | 0 | 1 | 309 | other:simd/vu0 |
| 9.16 | 0x00432588 | FUN_00432588 | 0 | 0 | 0 | 1 | 308 | other:simd/vu0 |
| 8.96 | 0x00429de0 | FUN_00429de0 | 0 | 0 | 0 | 1 | 298 | other:simd/vu0 |
| 8.96 | 0x0042cd18 | FUN_0042cd18 | 0 | 0 | 0 | 1 | 298 | other:simd/vu0 |
| 8.84 | 0x0042c1c8 | FUN_0042c1c8 | 0 | 0 | 0 | 1 | 242 | other:simd/vu0 |
| 7.66 | 0x00161de0 | FUN_00161de0 | 0 | 0 | 0 | 1 | 233 | other:simd/vu0 |
| 7.60 | 0x00430748 | FUN_00430748 | 0 | 0 | 0 | 1 | 230 | other:simd/vu0 |
| 7.30 | 0x0042d3d0 | FUN_0042d3d0 | 0 | 0 | 0 | 1 | 215 | other:simd/vu0 |
| 7.28 | 0x00120750 | FUN_00120750 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x001207c0 | FUN_001207c0 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x00136110 | FUN_00136110 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x00423d80 | FUN_00423d80 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x00429820 | FUN_00429820 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x004298e0 | FUN_004298e0 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x00429940 | FUN_00429940 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x00429b08 | FUN_00429b08 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x00429b80 | FUN_00429b80 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x0042acd0 | FUN_0042acd0 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x0042bb70 | FUN_0042bb70 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x0042c1e8 | FUN_0042c1e8 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x0042c238 | FUN_0042c238 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x0042fb10 | FUN_0042fb10 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.28 | 0x00431488 | FUN_00431488 | 0 | 0 | 0 | 1 | 214 | other:simd/vu0 |
| 7.20 | 0x0033a050 | FUN_0033a050 | 0 | 0 | 0 | 1 | 210 | other:simd/vu0 |

## thunk

| score | address | name | in | outR | glb | cop2 | size | hint |
|---|---|---|---|---|---|---|---|---|
| 13.88 | 0x0042c620 | FUN_0042c620 | 0 | 1 | 2 | 0 | 244 | thunk:wraps FUN_0043cb00 |
| 9.88 | 0x00429ef0 | FUN_00429ef0 | 1 | 1 | 0 | 0 | 144 | thunk:wraps FUN_0042a5e8 |
| 9.88 | 0x0042f100 | FUN_0042f100 | 2 | 0 | 0 | 0 | 144 | thunk:wraps FUN_0042e1f0 |
| 8.44 | 0x0042f638 | FUN_0042f638 | 0 | 1 | 0 | 0 | 222 | thunk:wraps FUN_0042f660 |
| 7.96 | 0x0042ba78 | FUN_0042ba78 | 0 | 1 | 0 | 0 | 198 | thunk:wraps FUN_00432fc0 |
| 6.88 | 0x00428630 | FUN_00428630 | 0 | 1 | 0 | 0 | 144 | thunk:wraps FUN_004285f0 |
| 6.88 | 0x00429f10 | FUN_00429f10 | 0 | 1 | 0 | 0 | 144 | thunk:wraps FUN_00429ef0 |
| 6.88 | 0x0042a7f8 | FUN_0042a7f8 | 0 | 1 | 0 | 0 | 144 | thunk:wraps FUN_004299a0 |
| 6.88 | 0x0042acb0 | FUN_0042acb0 | 0 | 1 | 0 | 0 | 144 | thunk:wraps FUN_00429708 |
| 6.88 | 0x0042bd98 | FUN_0042bd98 | 0 | 1 | 0 | 0 | 144 | thunk:wraps FUN_0042f100 |
| 6.88 | 0x0042d6b0 | FUN_0042d6b0 | 0 | 1 | 0 | 0 | 144 | thunk:wraps FUN_00431390 |
| 6.88 | 0x00433ec0 | FUN_00433ec0 | 0 | 1 | 0 | 0 | 144 | thunk:wraps FUN_00433ef0 |
| 6.68 | 0x0042bd70 | FUN_0042bd70 | 0 | 1 | 0 | 0 | 134 | thunk:wraps FUN_00108ee8 |
| 5.14 | 0x00108ee8 | FUN_00108ee8 | 1 | 0 | 0 | 0 | 57 | thunk:wraps FUN_00445d90 |
| 3.88 | 0x0042bdb8 | FUN_0042bdb8 | 0 | 0 | 0 | 0 | 144 | thunk:wraps FUN_004318c0 |
| 3.88 | 0x00432e90 | FUN_00432e90 | 0 | 0 | 0 | 0 | 144 | thunk:wraps FUN_00432eb8 |
| 2.14 | 0x00337690 | FUN_00337690 | 0 | 0 | 0 | 0 | 57 | thunk:wraps FUN_00380e80 |

## leaf_accessor

| score | address | name | in | outR | glb | cop2 | size | hint |
|---|---|---|---|---|---|---|---|---|
| 10.84 | 0x0019d330 | FUN_0019d330 | 0 | 0 | 0 | 0 | 342 | setter:1 field writes, returns |
| 8.44 | 0x0045d6f0 | FUN_0045d6f0 | 0 | 0 | 2 | 0 | 172 | setter:2 field writes, returns |
| 6.34 | 0x00540780 | FUN_00540780 | 0 | 0 | 0 | 0 | 317 | setter:1 field writes, returns |
| 6.16 | 0x001238d0 | FUN_001238d0 | 0 | 0 | 0 | 0 | 308 | setter:4 field writes, returns |
| 6.16 | 0x001ca130 | FUN_001ca130 | 0 | 0 | 0 | 0 | 308 | setter:4 field writes, returns |
| 6.16 | 0x001ccb00 | FUN_001ccb00 | 0 | 0 | 0 | 0 | 308 | setter:4 field writes, returns |
| 6.16 | 0x001dbea0 | FUN_001dbea0 | 0 | 0 | 0 | 0 | 308 | setter:4 field writes, returns |
| 6.16 | 0x001df840 | FUN_001df840 | 0 | 0 | 0 | 0 | 308 | setter:4 field writes, returns |
| 6.16 | 0x001dfdb0 | FUN_001dfdb0 | 0 | 0 | 0 | 0 | 308 | setter:4 field writes, returns |
| 6.16 | 0x001e0050 | FUN_001e0050 | 0 | 0 | 0 | 0 | 308 | setter:4 field writes, returns |
| 5.48 | 0x001acde0 | FUN_001acde0 | 0 | 0 | 0 | 0 | 274 | setter:4 field writes, returns |
| 5.48 | 0x001b82f0 | FUN_001b82f0 | 0 | 0 | 0 | 0 | 274 | setter:4 field writes, returns |
| 5.48 | 0x001c3470 | FUN_001c3470 | 0 | 0 | 0 | 0 | 274 | setter:4 field writes, returns |
| 5.48 | 0x001cad90 | FUN_001cad90 | 0 | 0 | 0 | 0 | 274 | setter:4 field writes, returns |
| 5.48 | 0x001cf680 | FUN_001cf680 | 0 | 0 | 0 | 0 | 274 | setter:4 field writes, returns |
| 5.20 | 0x0043f5b8 | FUN_0043f5b8 | 0 | 0 | 0 | 0 | 260 | getter:reads 0 field(s) |
| 2.34 | 0x0053fd80 | FUN_0053fd80 | 0 | 0 | 0 | 0 | 117 | getter:reads 0 field(s) |
| 1.68 | 0x0018ddc0 | FUN_0018ddc0 | 0 | 0 | 0 | 0 | 84 | getter:reads 0 field(s) |
| 1.44 | 0x004238c0 | FUN_004238c0 | 0 | 0 | 0 | 0 | 72 | getter:reads 0 field(s) |

## leaf_int

| score | address | name | in | outR | glb | cop2 | size | hint |
|---|---|---|---|---|---|---|---|---|
| 10.04 | 0x0047f4a0 | FUN_0047f4a0 | 0 | 0 | 1 | 0 | 302 | convert:cast/float math |
| 10.02 | 0x0046c500 | FUN_0046c500 | 0 | 0 | 1 | 0 | 301 | convert:cast/float math |
| 9.52 | 0x00197870 | FUN_00197870 | 0 | 0 | 1 | 0 | 351 | convert:cast/float math |
| 7.96 | 0x00154d50 | FUN_00154d50 | 0 | 0 | 0 | 0 | 323 | convert:cast/float math |
| 7.26 | 0x0040f030 | FUN_0040f030 | 0 | 0 | 0 | 0 | 288 | convert:cast/float math |
| 6.62 | 0x0016a110 | FUN_0016a110 | 0 | 0 | 0 | 0 | 281 | convert:cast/float math |
| 5.60 | 0x001963d0 | FUN_001963d0 | 0 | 0 | 0 | 0 | 280 | convert:cast/float math |
| 5.52 | 0x0010c820 | FUN_0010c820 | 0 | 0 | 0 | 0 | 276 | convert:cast/float math |
| 5.50 | 0x003f5b50 | FUN_003f5b50 | 0 | 0 | 0 | 0 | 275 | convert:cast/float math |
| 5.48 | 0x001cf6f0 | FUN_001cf6f0 | 0 | 0 | 0 | 0 | 274 | convert:cast/float math |
| 3.86 | 0x0016b030 | FUN_0016b030 | 0 | 0 | 0 | 0 | 193 | convert:cast/float math |
| 3.44 | 0x0019a560 | FUN_0019a560 | 0 | 0 | 0 | 0 | 172 | convert:cast/float math |
| 3.34 | 0x00115430 | FUN_00115430 | 0 | 0 | 0 | 0 | 167 | convert:cast/float math |
| 2.52 | 0x00195cd0 | FUN_00195cd0 | 0 | 0 | 0 | 0 | 126 | convert:cast/float math |
| 2.22 | 0x0023e070 | FUN_0023e070 | 0 | 0 | 0 | 0 | 111 | convert:cast/float math |

## leaf_mem

| score | address | name | in | outR | glb | cop2 | size | hint |
|---|---|---|---|---|---|---|---|---|
| 14.24 | 0x00157070 | FUN_00157070 | 0 | 0 | 0 | 0 | 312 | memcmp:compares two structs, returns int |
| 14.24 | 0x001574a0 | FUN_001574a0 | 0 | 0 | 0 | 0 | 312 | memcmp:compares two structs, returns int |
| 10.94 | 0x00157010 | FUN_00157010 | 0 | 0 | 0 | 0 | 247 | memcmp:compares two structs, returns int |
| 10.94 | 0x00157440 | FUN_00157440 | 0 | 0 | 0 | 0 | 247 | memcmp:compares two structs, returns int |
| 8.92 | 0x0028b3f0 | FUN_0028b3f0 | 0 | 0 | 0 | 0 | 446 | memcmp:compares two structs, returns int |
| 6.18 | 0x00404e80 | FUN_00404e80 | 0 | 0 | 0 | 0 | 309 | memcmp:compares two structs, returns int |
| 5.96 | 0x00134ec0 | FUN_00134ec0 | 0 | 0 | 0 | 0 | 298 | memcmp:compares two structs, returns int |
| 4.44 | 0x00551a70 | FUN_00551a70 | 0 | 0 | 0 | 0 | 222 | memcmp:compares two structs, returns int |

## pseudo_stub

| score | address | name | in | outR | glb | cop2 | size | hint |
|---|---|---|---|---|---|---|---|---|
| 2.84 | 0x00104cc0 | FUN_00104cc0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001153f0 | FUN_001153f0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0011c0c0 | FUN_0011c0c0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0011c7e0 | FUN_0011c7e0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0012bf60 | FUN_0012bf60 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0012c1f0 | FUN_0012c1f0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0012c400 | FUN_0012c400 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0012d570 | FUN_0012d570 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00147a30 | FUN_00147a30 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00147cc0 | FUN_00147cc0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00148aa0 | FUN_00148aa0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0014b870 | FUN_0014b870 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0014b8d0 | FUN_0014b8d0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0017a230 | FUN_0017a230 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00181500 | FUN_00181500 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00183650 | FUN_00183650 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00184810 | FUN_00184810 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00185250 | FUN_00185250 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00188080 | FUN_00188080 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00189cf0 | FUN_00189cf0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00189d40 | FUN_00189d40 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0018ae20 | FUN_0018ae20 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0018ae80 | FUN_0018ae80 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0018f950 | FUN_0018f950 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00194f90 | FUN_00194f90 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00195c80 | FUN_00195c80 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00198de0 | FUN_00198de0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00198e80 | FUN_00198e80 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00198ed0 | FUN_00198ed0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0019c8a0 | FUN_0019c8a0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0019d240 | FUN_0019d240 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0019df10 | FUN_0019df10 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0019e030 | FUN_0019e030 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0019e920 | FUN_0019e920 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0019f020 | FUN_0019f020 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0019f6c0 | FUN_0019f6c0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0019fdd0 | FUN_0019fdd0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001a82f0 | FUN_001a82f0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001a8660 | FUN_001a8660 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001a8d10 | FUN_001a8d10 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001a94a0 | FUN_001a94a0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001ab5b0 | FUN_001ab5b0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001ab6b0 | FUN_001ab6b0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001ab880 | FUN_001ab880 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001ca430 | FUN_001ca430 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001cb220 | FUN_001cb220 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x001ebea0 | FUN_001ebea0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00237bb0 | FUN_00237bb0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00240040 | FUN_00240040 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00241210 | FUN_00241210 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00241380 | FUN_00241380 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x002414c0 | FUN_002414c0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x002467a0 | FUN_002467a0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x002b5bf0 | FUN_002b5bf0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x002c33d0 | FUN_002c33d0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x002c48f0 | FUN_002c48f0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x002e7870 | FUN_002e7870 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x003342e0 | FUN_003342e0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00337e10 | FUN_00337e10 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0033b860 | FUN_0033b860 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0033c170 | FUN_0033c170 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00377190 | FUN_00377190 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x003994a0 | FUN_003994a0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0039eb60 | FUN_0039eb60 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x003e1300 | FUN_003e1300 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x003ebea0 | FUN_003ebea0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x003f9968 | FUN_003f9968 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x003fd320 | FUN_003fd320 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0040be00 | FUN_0040be00 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00417650 | FUN_00417650 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0043d2b8 | FUN_0043d2b8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0043e328 | FUN_0043e328 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0043f5e8 | FUN_0043f5e8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00440890 | FUN_00440890 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004450f0 | FUN_004450f0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00446150 | FUN_00446150 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00446c30 | FUN_00446c30 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00446c68 | FUN_00446c68 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00448d40 | FUN_00448d40 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00449070 | FUN_00449070 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004490b0 | FUN_004490b0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00449160 | FUN_00449160 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004491c0 | FUN_004491c0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0045b778 | FUN_0045b778 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00464618 | FUN_00464618 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00467ae8 | FUN_00467ae8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0046bbc8 | FUN_0046bbc8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0046cd48 | FUN_0046cd48 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0046d180 | FUN_0046d180 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0046d2c0 | FUN_0046d2c0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0046d2f0 | FUN_0046d2f0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0046d320 | FUN_0046d320 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0046d578 | FUN_0046d578 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0046f330 | FUN_0046f330 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00470980 | FUN_00470980 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00470b88 | FUN_00470b88 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00471298 | FUN_00471298 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00471420 | FUN_00471420 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00474768 | FUN_00474768 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00474790 | FUN_00474790 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00474d70 | FUN_00474d70 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475320 | FUN_00475320 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475370 | FUN_00475370 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004753c0 | FUN_004753c0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475410 | FUN_00475410 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475460 | FUN_00475460 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475568 | FUN_00475568 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475600 | FUN_00475600 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475698 | FUN_00475698 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475720 | FUN_00475720 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004757e0 | FUN_004757e0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475810 | FUN_00475810 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475870 | FUN_00475870 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475a38 | FUN_00475a38 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475b80 | FUN_00475b80 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475bc0 | FUN_00475bc0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475bf0 | FUN_00475bf0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475c20 | FUN_00475c20 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475c50 | FUN_00475c50 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475c80 | FUN_00475c80 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475de0 | FUN_00475de0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00475fd0 | FUN_00475fd0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004779c8 | FUN_004779c8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00477c40 | FUN_00477c40 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00478908 | FUN_00478908 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00478bb8 | FUN_00478bb8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00478dc0 | FUN_00478dc0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004791d0 | FUN_004791d0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00479468 | FUN_00479468 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00479d20 | FUN_00479d20 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047ab38 | FUN_0047ab38 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047ad60 | FUN_0047ad60 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047ad98 | FUN_0047ad98 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047c068 | FUN_0047c068 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047c6a0 | FUN_0047c6a0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047c738 | FUN_0047c738 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047ca18 | FUN_0047ca18 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047ca58 | FUN_0047ca58 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047d8c8 | FUN_0047d8c8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047e140 | FUN_0047e140 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047e1d8 | FUN_0047e1d8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047e4a8 | FUN_0047e4a8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047e4e8 | FUN_0047e4e8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047f368 | FUN_0047f368 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047f3f8 | FUN_0047f3f8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047f828 | FUN_0047f828 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047f958 | FUN_0047f958 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047f9f8 | FUN_0047f9f8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047fa28 | FUN_0047fa28 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047fae8 | FUN_0047fae8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047fb80 | FUN_0047fb80 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047fc18 | FUN_0047fc18 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047fcb0 | FUN_0047fcb0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047fd18 | FUN_0047fd18 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047fd88 | FUN_0047fd88 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0047fdc0 | FUN_0047fdc0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00481968 | FUN_00481968 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00481da0 | FUN_00481da0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00482330 | FUN_00482330 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00482b80 | FUN_00482b80 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bbf0 | FUN_0048bbf0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bc20 | FUN_0048bc20 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bc48 | FUN_0048bc48 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bc70 | FUN_0048bc70 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bca0 | FUN_0048bca0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bcc8 | FUN_0048bcc8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bcf0 | FUN_0048bcf0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bd18 | FUN_0048bd18 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bd40 | FUN_0048bd40 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bd68 | FUN_0048bd68 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bd90 | FUN_0048bd90 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bdb8 | FUN_0048bdb8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bde0 | FUN_0048bde0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048be08 | FUN_0048be08 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048be30 | FUN_0048be30 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048be58 | FUN_0048be58 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048be80 | FUN_0048be80 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bea8 | FUN_0048bea8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0048bed0 | FUN_0048bed0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0049b7d0 | FUN_0049b7d0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0049c250 | FUN_0049c250 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0049fcd8 | FUN_0049fcd8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0049fdf8 | FUN_0049fdf8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004ac8b8 | FUN_004ac8b8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004b22a8 | FUN_004b22a8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004b98e8 | FUN_004b98e8 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004b9928 | FUN_004b9928 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004fc100 | FUN_004fc100 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004fc150 | FUN_004fc150 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004fc1a0 | FUN_004fc1a0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004fc1f0 | FUN_004fc1f0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004fc240 | FUN_004fc240 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x004fdc60 | FUN_004fdc60 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00508ec0 | FUN_00508ec0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0050a380 | FUN_0050a380 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0050cfc0 | FUN_0050cfc0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0050ecf0 | FUN_0050ecf0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0050f2d0 | FUN_0050f2d0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00512da0 | FUN_00512da0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x005137f0 | FUN_005137f0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00513f30 | FUN_00513f30 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0051d6e0 | FUN_0051d6e0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00530140 | FUN_00530140 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x005301c0 | FUN_005301c0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00540850 | FUN_00540850 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x005408e0 | FUN_005408e0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00557840 | FUN_00557840 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00557860 | FUN_00557860 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0055a720 | FUN_0055a720 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0055a790 | FUN_0055a790 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00564850 | FUN_00564850 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00564e90 | FUN_00564e90 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0056a060 | FUN_0056a060 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0056a080 | FUN_0056a080 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0056dd40 | FUN_0056dd40 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0056dfb0 | FUN_0056dfb0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x0056ea90 | FUN_0056ea90 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00573f50 | FUN_00573f50 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00575ad0 | FUN_00575ad0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00575b60 | FUN_00575b60 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x00575d70 | FUN_00575d70 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x005e8040 | FUN_005e8040 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x005e8090 | FUN_005e8090 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x005fbe10 | FUN_005fbe10 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x005fcb70 | FUN_005fcb70 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |
| 2.84 | 0x005fcbf0 | FUN_005fcbf0 | 0 | 0 | 0 | 0 | 142 | pseudo_stub:body is halt_* only, no recovered logic |

## symboled

| score | address | name | in | outR | glb | cop2 | size | hint |
|---|---|---|---|---|---|---|---|---|
| 156.00 | 0x0022ade0 | layout_viewport | 0 | 0 | 0 | 0 | 4004 |  |
| 140.36 | 0x00381030 | matrix_invert_vu0 | 0 | 0 | 0 | 35 | 1768 |  |
| 120.60 | 0x0022d1a0 | layout_viewport_b | 0 | 0 | 0 | 0 | 3280 |  |
| 120.34 | 0x002304a0 | layout_viewport_c | 0 | 0 | 0 | 0 | 3267 |  |
| 110.86 | 0x003a0730 | gaussjordan_solve | 0 | 0 | 0 | 0 | 3568 |  |
| 110.40 | 0x003a09f0 | gaussjordan_solve_b | 0 | 0 | 0 | 0 | 3545 |  |
| 105.50 | 0x004518d0 | blit_palette_image | 0 | 0 | 0 | 0 | 18266 |  |
| 104.38 | 0x003f6b20 | quat_lerp_vu0 | 0 | 0 | 0 | 27 | 1169 |  |
| 83.38 | 0x003f6840 | quat_matrix_vu0 | 0 | 0 | 0 | 21 | 1019 |  |
| 79.28 | 0x00365d80 | aabb_corners_vu0 | 0 | 0 | 0 | 9 | 2539 |  |
| 76.88 | 0x0058dea0 | pixel_format_convert | 0 | 0 | 0 | 0 | 1494 |  |
| 60.14 | 0x0042a818 | script_step | 1 | 4 | 0 | 1 | 1907 |  |
| 59.44 | 0x00534b60 | heap_alloc_block | 0 | 0 | 2 | 0 | 2422 |  |
| 44.02 | 0x001a1bd0 | sort_assign_rank | 0 | 0 | 0 | 0 | 1726 |  |
| 43.90 | 0x0010ee50 | packed_bits_read | 0 | 0 | 0 | 0 | 2045 |  |
| 43.90 | 0x0010e780 | packed_bits_write | 0 | 0 | 0 | 0 | 2045 |  |
| 40.28 | 0x003955c0 | transform_point_vu0_e | 0 | 0 | 0 | 9 | 664 |  |
| 39.22 | 0x003ae0e0 | spline_accum | 0 | 0 | 0 | 0 | 1261 |  |
| 39.10 | 0x0035bc40 | transform_point_vu0 | 0 | 0 | 0 | 9 | 605 |  |
| 38.96 | 0x0042a4e0 | script_step_b | 0 | 2 | 0 | 1 | 1398 |  |
| 37.82 | 0x004f9eb0 | varint_read | 0 | 0 | 3 | 0 | 1291 |  |
| 37.40 | 0x0042a680 | script_step_d | 2 | 2 | 0 | 0 | 1170 |  |
| 37.08 | 0x00432fc0 | format_scan | 1 | 2 | 0 | 0 | 1154 |  |
| 35.60 | 0x0042bc88 | script_step_c | 0 | 2 | 0 | 1 | 1230 |  |
| 35.28 | 0x0042f660 | strtok_save_state | 1 | 0 | 0 | 0 | 1314 |  |
| 34.54 | 0x004311f0 | heap_stats | 1 | 0 | 6 | 0 | 677 |  |
| 32.92 | 0x00190370 | transform_point_vu0_f | 0 | 0 | 0 | 7 | 596 |  |
| 31.48 | 0x003472f0 | transform_point_vu0_b | 0 | 0 | 0 | 7 | 524 |  |
| 31.48 | 0x0035c3f0 | transform_point_vu0_c | 0 | 0 | 0 | 7 | 524 |  |
| 31.48 | 0x00394050 | transform_point_vu0_d | 0 | 0 | 0 | 7 | 524 |  |
| 25.68 | 0x0019e150 | tuning_scale | 0 | 0 | 0 | 0 | 784 |  |
| 20.96 | 0x001b6340 | quat_invert | 0 | 0 | 0 | 3 | 598 |  |
| 20.42 | 0x00432818 | itoa | 0 | 1 | 0 | 0 | 746 |  |
| 19.28 | 0x0042ac48 | script_abort | 1 | 1 | 0 | 1 | 464 |  |
| 18.68 | 0x0019f7f0 | tuning_scale_d | 0 | 0 | 0 | 0 | 534 |  |
| 18.64 | 0x0019ea30 | tuning_scale_b | 0 | 0 | 0 | 0 | 532 |  |
| 17.96 | 0x00428b18 | strcat | 0 | 1 | 0 | 1 | 473 |  |
| 17.46 | 0x0012bda0 | collision_support | 0 | 0 | 0 | 0 | 873 |  |
| 17.44 | 0x004327a0 | strrev | 1 | 0 | 0 | 0 | 572 |  |
| 17.36 | 0x0011e790 | defaults_init_entity | 0 | 0 | 0 | 0 | 868 |  |
| 16.34 | 0x00195820 | kart_speed_ratio | 0 | 0 | 0 | 0 | 417 |  |
| 16.24 | 0x001c3910 | object_init | 0 | 0 | 2 | 0 | 562 |  |
| 15.42 | 0x003803c0 | interval_check | 0 | 0 | 0 | 0 | 771 |  |
| 15.42 | 0x00380560 | interval_check_b | 0 | 0 | 0 | 0 | 771 |  |
| 14.82 | 0x0019f130 | tuning_scale_c | 0 | 0 | 0 | 0 | 391 |  |
| 14.26 | 0x00405d20 | bsearch16 | 0 | 0 | 0 | 0 | 638 |  |
| 14.26 | 0x00407550 | bsearch16_b | 0 | 0 | 0 | 0 | 638 |  |
| 13.62 | 0x001071e0 | memcpy64 | 0 | 0 | 0 | 0 | 681 |  |
| 13.24 | 0x006588a0 | boot_iop_copy | 0 | 0 | 0 | 0 | 587 |  |
| 13.06 | 0x00165e70 | accessor_fields | 0 | 0 | 0 | 0 | 653 |  |
| 12.84 | 0x00405dc0 | bsearch12 | 0 | 0 | 0 | 0 | 567 |  |
| 12.84 | 0x004075f0 | bsearch12_b | 0 | 0 | 0 | 0 | 567 |  |
| 12.68 | 0x00428f48 | strcpy | 1 | 0 | 0 | 0 | 409 |  |
| 12.44 | 0x00428c50 | strchr | 0 | 0 | 0 | 0 | 547 |  |
| 11.96 | 0x0026e060 | type4cc_check_b | 0 | 0 | 1 | 0 | 473 |  |
| 11.96 | 0x0026e1a0 | type4cc_check_c | 0 | 0 | 1 | 0 | 473 |  |
| 11.96 | 0x0026e2e0 | type4cc_check_d | 0 | 0 | 1 | 0 | 473 |  |
| 11.96 | 0x0026e420 | type4cc_check_e | 0 | 0 | 1 | 0 | 473 |  |
| 11.64 | 0x0026d960 | type4cc_check | 0 | 0 | 1 | 0 | 457 |  |
| 11.12 | 0x001a1800 | kart_state_check | 0 | 0 | 0 | 0 | 456 |  |
| 10.04 | 0x005ec0a0 | list_contains | 0 | 0 | 0 | 0 | 427 |  |
| 10.04 | 0x005ed330 | list_contains_b | 0 | 0 | 0 | 0 | 427 |  |
| 9.74 | 0x003ec660 | index_of_int | 0 | 0 | 0 | 0 | 412 |  |
| 9.60 | 0x0058d7c0 | lerp3 | 0 | 0 | 0 | 0 | 280 |  |
| 7.24 | 0x00530080 | swap32 | 0 | 0 | 0 | 0 | 362 |  |
| 5.48 | 0x0015ba30 | vec3_copy | 0 | 0 | 0 | 0 | 274 |  |
| 3.62 | 0x00530050 | swap16 | 0 | 0 | 0 | 0 | 181 |  |
