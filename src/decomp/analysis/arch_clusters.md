# Architecture clusters from named hubs (Phase 3G)

Seeds: 60 hubs (edit `hub_names.csv` to rename; re-run to re-colour).
Distances unbounded for reachability; `peer` = shares >= 10% of the hub's callers.

mapped: 9415 / 17911 functions  (unreached: 8496)

## Cluster by hub (fan-in desc)

## 0x00511940  `Obj_Release_Unregister`

- fan-in 1763  |  upstream reach 3058  |  downstream reach 7  |  peers 3
- evidence: singleton 0x725d40; vtable+0x4c; refcount-1; list-walk
- call-site args: ptr×7668, own_a3×3351, own_a2×2650, own_a1×2133, int×966, own_a0×295, ret_0x004c5150×42, ret_0x00545430×18
- top members: 0x002c48f0, 0x002e7870, 0x005137f0, 0x0050a380, 0x00508ec0, 0x00153790
- symboled members: 0x002c48f0(FUN_002c48f0), 0x002e7870(FUN_002e7870), 0x005137f0(FUN_005137f0), 0x0050a380(FUN_0050a380), 0x00508ec0(FUN_00508ec0), 0x00153790(0x00153790)
- co-called peers: 0x004ba240, 0x005118a0, 0x00513210

## 0x004ba240  `Dispatcher_Alloc`

- fan-in 1154  |  upstream reach 2129  |  downstream reach 52  |  peers 1
- evidence: thunk into VU0 kernel 0x0042c238 + 0x004bab00
- call-site args: own_a3×1152, own_a2×1142, own_a1×1015, ptr×779, own_a0×497, int×83, ret_0x00403bd0×2, ret_0x00403cc0×2
- top members: 0x001ca430, 0x001cb220, 0x003994a0, 0x00194f90, 0x00337690, 0x00153790
- symboled members: 0x001ca430(FUN_001ca430), 0x001cb220(FUN_001cb220), 0x003994a0(FUN_003994a0), 0x00194f90(FUN_00194f90), 0x00337690(FUN_00337690), 0x00153790(0x00153790)
- co-called peers: 0x00511940

## 0x005118a0  `HUB_UNKNOWN_18a0`

- fan-in 781  |  upstream reach 785  |  downstream reach 1  |  peers 4
- evidence: auto-seed fan-in 781
- call-site args: own_a3×774, own_a2×766, int×587, own_a1×533, ptr×402, ret_0x00511860×61, own_a0×1
- top members: 0x00293550, 0x002e35d0, 0x003099c0, 0x004db530, 0x0054a950, 0x00303820
- symboled members: 0x00293550(0x00293550), 0x002e35d0(0x002e35d0), 0x003099c0(0x003099c0), 0x004db530(0x004db530), 0x0054a950(0x0054a950), 0x00303820(0x00303820)
- co-called peers: 0x00511940, 0x00511860, 0x005110e0, 0x0051e5a0

## 0x00511860  `Engine_Facade_Accessor`

- fan-in 703  |  upstream reach 707  |  downstream reach 1  |  peers 4
- evidence: globals 0x725ee0/0x725f18; virtual vtable+0xb4
- call-site args: int×703, own_a1×703, own_a2×703, own_a3×703
- top members: 0x00293550, 0x002e35d0, 0x003099c0, 0x004db530, 0x0054a950, 0x00303820
- symboled members: 0x00293550(0x00293550), 0x002e35d0(0x002e35d0), 0x003099c0(0x003099c0), 0x004db530(0x004db530), 0x0054a950(0x0054a950), 0x00303820(0x00303820)
- co-called peers: 0x00511940, 0x005118a0, 0x005110e0, 0x0051e5a0

## 0x005110e0  `HUB_UNKNOWN_10e0`

- fan-in 655  |  upstream reach 1104  |  downstream reach 1  |  peers 3
- evidence: auto-seed fan-in 655
- call-site args: own_a3×652, own_a2×646, own_a1×589, int×585, ptr×77, ret_0x00511860×58, own_a0×17
- top members: 0x00293550, 0x002e35d0, 0x003099c0, 0x004db530, 0x0054a950, 0x00303820
- symboled members: 0x00293550(0x00293550), 0x002e35d0(0x002e35d0), 0x003099c0(0x003099c0), 0x004db530(0x004db530), 0x0054a950(0x0054a950), 0x00303820(0x00303820)
- co-called peers: 0x00511940, 0x005118a0, 0x00511860

## 0x00510320  `HUB_UNKNOWN_0320`

- fan-in 518  |  upstream reach 646  |  downstream reach 1  |  peers 8
- evidence: auto-seed fan-in 518
- call-site args: own_a3×531, own_a2×518, own_a1×516, own_a0×509, ptr×41, int×16, ret_0x004d4350×1
- top members: 0x00512da0, 0x004e3af0, 0x004e9aa0, 0x004c6110, 0x005efa60, 0x00511540
- symboled members: 0x00512da0(FUN_00512da0), 0x004e3af0(0x004e3af0), 0x004e9aa0(0x004e9aa0), 0x004c6110(0x004c6110), 0x005efa60(0x005efa60), 0x00511540(0x00511540)
- co-called peers: 0x0050fea0, 0x0050fe20, 0x0050fde0, 0x004d9c40, 0x00503ab0, 0x004ef390, 0x004f7c70, 0x004fe2b0

## 0x0050fea0  `Facade_Wrapper`

- fan-in 496  |  upstream reach 497  |  downstream reach 37  |  peers 8
- evidence: 3 sub-calls 0x00510320/0x0050e720/0x0050ea30
- call-site args: int×1488, own_a0×304, ptr×192
- top members: 0x004e9aa0, 0x004c6110, 0x005efa60, 0x00290220, 0x0028a0b0, 0x0054c1c0
- symboled members: 0x004e9aa0(0x004e9aa0), 0x004c6110(0x004c6110), 0x005efa60(0x005efa60), 0x00290220(0x00290220), 0x0028a0b0(0x0028a0b0), 0x0054c1c0(0x0054c1c0)
- co-called peers: 0x00510320, 0x0050fe20, 0x0050fde0, 0x004d9c40, 0x00503ab0, 0x004ef390, 0x004f7c70, 0x004fe2b0

## 0x0050fe20  `HUB_UNKNOWN_fe20`

- fan-in 496  |  upstream reach 497  |  downstream reach 1  |  peers 8
- evidence: auto-seed fan-in 496
- call-site args: own_a0×496, int×496, own_a2×496, own_a3×496
- top members: 0x004e9aa0, 0x004c6110, 0x005efa60, 0x00290220, 0x0028a0b0, 0x0054c1c0
- symboled members: 0x004e9aa0(0x004e9aa0), 0x004c6110(0x004c6110), 0x005efa60(0x005efa60), 0x00290220(0x00290220), 0x0028a0b0(0x0028a0b0), 0x0054c1c0(0x0054c1c0)
- co-called peers: 0x00510320, 0x0050fea0, 0x0050fde0, 0x004d9c40, 0x00503ab0, 0x004ef390, 0x004f7c70, 0x004fe2b0

## 0x0050fde0  `HUB_UNKNOWN_fde0`

- fan-in 461  |  upstream reach 1611  |  downstream reach 1  |  peers 8
- evidence: auto-seed fan-in 461
- call-site args: ptr×2659, int×1899, own_a3×1862, own_a0×1174, own_a1×12, own_a2×12, ret_0x00512e00×4, ret_0x0050fe00×1
- top members: 0x002c48f0, 0x00513f30, 0x00153790, 0x00332940, 0x004da1b0, 0x00290220
- symboled members: 0x002c48f0(FUN_002c48f0), 0x00513f30(FUN_00513f30), 0x00153790(0x00153790), 0x00332940(0x00332940), 0x004da1b0(0x004da1b0), 0x00290220(0x00290220)
- co-called peers: 0x00510320, 0x0050fea0, 0x0050fe20, 0x004d9c40, 0x00503ab0, 0x004ef390, 0x004f7c70, 0x004fe2b0

## 0x0050f930  `HUB_UNKNOWN_f930`

- fan-in 397  |  upstream reach 1782  |  downstream reach 1  |  peers 3
- evidence: auto-seed fan-in 397
- call-site args: ptr×403, own_a1×395, own_a2×395, own_a3×395, own_a0×4
- top members: 0x0011b8c0, 0x004da1b0, 0x00290220, 0x00554ab0, 0x0022ddb0, 0x005ecce0
- symboled members: 0x0011b8c0(0x0011b8c0), 0x004da1b0(0x004da1b0), 0x00290220(0x00290220), 0x00554ab0(0x00554ab0), 0x0022ddb0(0x0022ddb0), 0x005ecce0(0x005ecce0)
- co-called peers: 0x00508930, 0x00503fb0, 0x0050ea30

## 0x004d9c40  `Facade_Accessor2`

- fan-in 306  |  upstream reach 313  |  downstream reach 55  |  peers 8
- evidence: global 0x724dc8; sub-calls
- call-site args: int×1364, ptr×1040, own_a3×500, own_a0×273, own_a2×11, ret_0x0050fe00×5, own_a1×2, ret_0x00512e00×1
- top members: 0x005efa60, 0x00290220, 0x00274070, 0x00596500, 0x00592840, 0x002f3600
- symboled members: 0x005efa60(0x005efa60), 0x00290220(0x00290220), 0x00274070(0x00274070), 0x00596500(0x00596500), 0x00592840(0x00592840), 0x002f3600(0x002f3600)
- co-called peers: 0x00510320, 0x0050fea0, 0x0050fe20, 0x0050fde0, 0x00503ab0, 0x004ef390, 0x004f7c70, 0x004fe2b0

## 0x00512ee0  `HUB_UNKNOWN_2ee0`

- fan-in 302  |  upstream reach 1945  |  downstream reach 1  |  peers 1
- evidence: auto-seed fan-in 302
- call-site args: ptr×1035, own_a3×422, own_a2×352, own_a0×202, int×92, own_a1×29, ret_0x00514100×10, ret_0x0050fe00×4
- top members: 0x002c48f0, 0x00513f30, 0x001ca430, 0x001cb220, 0x001ebea0, 0x003342e0
- symboled members: 0x002c48f0(FUN_002c48f0), 0x00513f30(FUN_00513f30), 0x001ca430(FUN_001ca430), 0x001cb220(FUN_001cb220), 0x001ebea0(FUN_001ebea0), 0x003342e0(FUN_003342e0)
- co-called peers: 0x00511940

## 0x0051e5a0  `HUB_UNKNOWN_e5a0`

- fan-in 271  |  upstream reach 1264  |  downstream reach 13  |  peers 9
- evidence: auto-seed fan-in 271
- call-site args: ptr×1139, own_a3×313, own_a2×261, int×119, own_a0×11, own_a1×8, ret_0x004d4350×2, ret_0x00511860×1
- top members: 0x00153790, 0x002e35d0, 0x004db530, 0x004da1b0, 0x00290220, 0x0054c1c0
- symboled members: 0x00153790(0x00153790), 0x002e35d0(0x002e35d0), 0x004db530(0x004db530), 0x004da1b0(0x004da1b0), 0x00290220(0x00290220), 0x0054c1c0(0x0054c1c0)
- co-called peers: 0x00511940, 0x005118a0, 0x00511860, 0x005110e0, 0x00513210, 0x00504220, 0x00504040, 0x00504170

## 0x00510a20  `Facade_Thunk`

- fan-in 260  |  upstream reach 275  |  downstream reach 8  |  peers 0
- evidence: tail-calls 0x00511940
- call-site args: int×260, own_a1×260, own_a2×260, own_a3×260
- top members: 0x002fe780, 0x0028d6e0, 0x0028d0a0, 0x00270d50, 0x00334790, 0x0031e570
- symboled members: 0x002fe780(0x002fe780), 0x0028d6e0(0x0028d6e0), 0x0028d0a0(0x0028d0a0), 0x00270d50(0x00270d50), 0x00334790(0x00334790), 0x0031e570(0x0031e570)

## 0x0033c3b0  `HUB_UNKNOWN_c3b0`

- fan-in 249  |  upstream reach 1335  |  downstream reach 1  |  peers 2
- evidence: auto-seed fan-in 249
- call-site args: ptr×387, own_a3×290, own_a2×224, own_a0×186, int×125, own_a1×40, ret_0x003a86e0×2, ret_0x0033eaf0×1
- top members: 0x0033c170, 0x003994a0, 0x00194f90, 0x00337690, 0x003e4150, 0x003b7970
- symboled members: 0x0033c170(FUN_0033c170), 0x003994a0(FUN_003994a0), 0x00194f90(FUN_00194f90), 0x00337690(FUN_00337690), 0x003e4150(0x003e4150), 0x003b7970(0x003b7970)
- co-called peers: 0x003455e0, 0x003ad9c0

## 0x00513210  `HUB_UNKNOWN_3210`

- fan-in 219  |  upstream reach 2062  |  downstream reach 1  |  peers 8
- evidence: auto-seed fan-in 219
- call-site args: ptr×563, own_a3×411, own_a2×335, own_a1×238, own_a0×210, int×116, ret_0x004c6180×11, ret_0x004c59b0×6
- top members: 0x002c48f0, 0x00513f30, 0x0051d6e0, 0x00153790, 0x00332940, 0x00535240
- symboled members: 0x002c48f0(FUN_002c48f0), 0x00513f30(FUN_00513f30), 0x0051d6e0(FUN_0051d6e0), 0x00153790(0x00153790), 0x00332940(0x00332940), 0x00535240(0x00535240)
- co-called peers: 0x00511940, 0x0051e5a0, 0x00513f30, 0x004f2210, 0x00504220, 0x00504040, 0x00504170, 0x004d4350

## 0x00429068  `HUB_UNKNOWN_9068`

- fan-in 190  |  upstream reach 4617  |  downstream reach 1  |  peers 7
- evidence: auto-seed fan-in 190
- call-site args: ptr×306, int×253, own_a3×223, own_a2×189, own_a1×122, own_a0×97, ret_0x00429068×8, ret_0x003fb6f8×2
- top members: 0x00432fc0, 0x0042d708, 0x00431390, 0x00433ef0, 0x00433090, 0x0042ba78
- symboled members: 0x00432fc0(format_scan), 0x0042d708(FUN_0042d708), 0x00431390(FUN_00431390), 0x00433ef0(FUN_00433ef0), 0x00433090(FUN_00433090), 0x0042ba78(FUN_0042ba78)
- co-called peers: 0x00511940, 0x0051e5a0, 0x00428df8, 0x00504220, 0x00504040, 0x00504170, 0x00428f48

## 0x00428998  `HUB_UNKNOWN_8998`

- fan-in 180  |  upstream reach 4155  |  downstream reach 1  |  peers 0
- evidence: auto-seed fan-in 180
- call-site args: int×270, own_a3×223, ptr×188, own_a1×135, own_a2×123, own_a0×90, ret_0x004969a8×2, ret_0x00428998×2
- top members: 0x00429de0, 0x00429b80, 0x00429b08, 0x002c48f0, 0x00575b60, 0x00513f30
- symboled members: 0x00429de0(FUN_00429de0), 0x00429b80(FUN_00429b80), 0x00429b08(FUN_00429b08), 0x002c48f0(FUN_002c48f0), 0x00575b60(FUN_00575b60), 0x00513f30(FUN_00513f30)

## 0x004287e0  `HUB_UNKNOWN_87e0`

- fan-in 159  |  upstream reach 3191  |  downstream reach 1  |  peers 1
- evidence: auto-seed fan-in 159
- call-site args: ptr×543, int×315, own_a3×262, own_a2×88, own_a0×73, own_a1×73, ret_0x004287e0×8, ret_0x003fb6f8×5
- top members: 0x00432fc0, 0x0042d708, 0x00431390, 0x00433ef0, 0x00433090, 0x0042c740
- symboled members: 0x00432fc0(format_scan), 0x0042d708(FUN_0042d708), 0x00431390(FUN_00431390), 0x00433ef0(FUN_00433ef0), 0x00433090(FUN_00433090), 0x0042c740(FUN_0042c740)
- co-called peers: 0x00429068

## 0x00513f30  `HUB_UNKNOWN_3f30`

- fan-in 149  |  upstream reach 543  |  downstream reach 11  |  peers 11
- evidence: auto-seed fan-in 149
- call-site args: ptr×1170, own_a3×449, own_a2×378, int×65, own_a1×47, own_a0×30, ret_0x004c6180×7, ret_0x004c31b0×6
- top members: 0x002c48f0, 0x00513f30, 0x00153790, 0x001e29a0, 0x001df6d0, 0x0014f1f0
- symboled members: 0x002c48f0(FUN_002c48f0), 0x00513f30(FUN_00513f30), 0x00153790(0x00153790), 0x001e29a0(0x001e29a0), 0x001df6d0(0x001df6d0), 0x0014f1f0(0x0014f1f0)
- co-called peers: 0x00511940, 0x00512ee0, 0x00513210, 0x005c0d40, 0x004f28b0, 0x005a48b0, 0x004bc880, 0x004c6180

## 0x003c1000  `HUB_UNKNOWN_1000`

- fan-in 148  |  upstream reach 392  |  downstream reach 1  |  peers 11
- evidence: auto-seed fan-in 148
- call-site args: ptr×1229, int×947, own_a3×298, own_a2×182, own_a0×106, ret_0x0042d770×12, ret_0x003c1000×7, ret_0x003eceb0×6
- top members: 0x003ebea0, 0x001df6d0, 0x003d83d0, 0x003e95d0, 0x003c0620, 0x003d6ff0
- symboled members: 0x003ebea0(FUN_003ebea0), 0x001df6d0(0x001df6d0), 0x003d83d0(0x003d83d0), 0x003e95d0(0x003e95d0), 0x003c0620(0x003c0620), 0x003d6ff0(0x003d6ff0)
- co-called peers: 0x003fad18, 0x003f2f30, 0x003eceb0, 0x003fb8d0, 0x003ebb50, 0x003e1300, 0x003ed1c0, 0x003c11c0

## 0x00238120  `HUB_UNKNOWN_8120`

- fan-in 144  |  upstream reach 504  |  downstream reach 1  |  peers 12
- evidence: auto-seed fan-in 144
- call-site args: ptr×327, own_a3×166, own_a2×133, int×113, own_a1×77, ret_0x00238120×17, own_a0×6, ret_0x0023dd10×1
- top members: 0x001ca430, 0x002c48f0, 0x001cb220, 0x001d5f60, 0x00153790, 0x001e29a0
- symboled members: 0x001ca430(FUN_001ca430), 0x002c48f0(FUN_002c48f0), 0x001cb220(FUN_001cb220), 0x001d5f60(0x001d5f60), 0x00153790(0x00153790), 0x001e29a0(0x001e29a0)
- co-called peers: 0x0043af80, 0x0011b5d0, 0x0043b320, 0x0010f630, 0x00123910, 0x001238a0, 0x00134db0, 0x002618a0

## 0x0023c590  `HUB_UNKNOWN_c590`

- fan-in 143  |  upstream reach 517  |  downstream reach 29  |  peers 9
- evidence: auto-seed fan-in 143
- call-site args: int×527, ptr×317, own_a3×116, ret_0x001b0de0×35, own_a0×35, ret_0x001124f0×18, ret_0x005c0d40×17, ret_0x00296c70×13
- top members: 0x001ca430, 0x001cb220, 0x00147a30, 0x001e29a0, 0x00150240, 0x0024e2b0
- symboled members: 0x001ca430(FUN_001ca430), 0x001cb220(FUN_001cb220), 0x00147a30(FUN_00147a30), 0x001e29a0(0x001e29a0), 0x00150240(0x00150240), 0x0024e2b0(0x0024e2b0)
- co-called peers: 0x00511940, 0x005c0d40, 0x0010f760, 0x00151160, 0x00150ea0, 0x001124f0, 0x00150d60, 0x001eab50

## 0x0058a7a0  `HUB_UNKNOWN_a7a0`

- fan-in 142  |  upstream reach 417  |  downstream reach 1  |  peers 8
- evidence: auto-seed fan-in 142
- call-site args: ptr×255, own_a3×183, own_a2×157, int×129, own_a1×95, own_a0×39, ret_0x001071e0×10, ret_0x00511860×4
- top members: 0x001d5f60, 0x00153790, 0x00293550, 0x001df6d0, 0x0014f1f0, 0x005b2e50
- symboled members: 0x001d5f60(0x001d5f60), 0x00153790(0x00153790), 0x00293550(0x00293550), 0x001df6d0(0x001df6d0), 0x0014f1f0(0x0014f1f0), 0x005b2e50(0x005b2e50)
- co-called peers: 0x00511940, 0x005118a0, 0x00511860, 0x005110e0, 0x001071e0, 0x0058b090, 0x00108b40, 0x00160b90

## 0x005c0d40  `HUB_UNKNOWN_0d40`

- fan-in 140  |  upstream reach 402  |  downstream reach 1  |  peers 19
- evidence: auto-seed fan-in 140
- call-site args: ptr×635, int×222, own_a3×167, own_a2×107, own_a0×32, own_a1×14, ret_0x00216740×12, ret_0x004c5150×8
- top members: 0x00153790, 0x001e29a0, 0x001df6d0, 0x0014f1f0, 0x00171790, 0x0021c910
- symboled members: 0x00153790(0x00153790), 0x001e29a0(0x001e29a0), 0x001df6d0(0x001df6d0), 0x0014f1f0(0x0014f1f0), 0x00171790(0x00171790), 0x0021c910(0x0021c910)
- co-called peers: 0x00511940, 0x00512ee0, 0x00513210, 0x00513f30, 0x0023c590, 0x0011b5d0, 0x001124f0, 0x005c0ee0

## 0x004f2210  `HUB_UNKNOWN_2210`

- fan-in 136  |  upstream reach 1076  |  downstream reach 9  |  peers 4
- evidence: auto-seed fan-in 136
- call-site args: ptr×737, own_a3×194, int×106, own_a0×101, own_a1×100, own_a2×73, ret_0x001071e0×5, ret_0x00584360×3
- top members: 0x002c48f0, 0x00513f30, 0x00153790, 0x00596200, 0x001e29a0, 0x0053e870
- symboled members: 0x002c48f0(FUN_002c48f0), 0x00513f30(FUN_00513f30), 0x00153790(0x00153790), 0x00596200(0x00596200), 0x001e29a0(0x001e29a0), 0x0053e870(0x0053e870)
- co-called peers: 0x00511940, 0x00513210, 0x005dbbd0, 0x00107370

## 0x00428df8  `HUB_UNKNOWN_8df8`

- fan-in 134  |  upstream reach 4279  |  downstream reach 1  |  peers 4
- evidence: auto-seed fan-in 134
- call-site args: int×355, ptr×324, own_a3×248, own_a2×203, own_a0×120, own_a1×49, ret_0x00428df8×4, ret_0x0042f3a0×1
- top members: 0x00432fc0, 0x0042d708, 0x00431390, 0x00433ef0, 0x00433090, 0x0042ba78
- symboled members: 0x00432fc0(format_scan), 0x0042d708(FUN_0042d708), 0x00431390(FUN_00431390), 0x00433ef0(FUN_00433ef0), 0x00433090(FUN_00433090), 0x0042ba78(FUN_0042ba78)
- co-called peers: 0x00511940, 0x0051e5a0, 0x00429068, 0x0042aac8

## 0x0033c170  `HUB_UNKNOWN_c170`

- fan-in 126  |  upstream reach 957  |  downstream reach 2  |  peers 4
- evidence: auto-seed fan-in 126
- call-site args: ptr×261, own_a3×174, own_a2×160, int×120, own_a1×86, own_a0×20, ret_0x0033c120×3, ret_0x0033eaf0×2
- top members: 0x00194f90, 0x003994a0, 0x0033c170, 0x00337690, 0x0039ccb0, 0x00347ed0
- symboled members: 0x00194f90(FUN_00194f90), 0x003994a0(FUN_003994a0), 0x0033c170(FUN_0033c170), 0x00337690(FUN_00337690), 0x0039ccb0(0x0039ccb0), 0x00347ed0(0x00347ed0)
- co-called peers: 0x004ba240, 0x0033c120, 0x0042bd70, 0x00429f38

## 0x0043fb68  `HUB_UNKNOWN_fb68`

- fan-in 120  |  upstream reach 464  |  downstream reach 10  |  peers 11
- evidence: auto-seed fan-in 120
- call-site args: int×266, own_a2×85, own_a3×76, ptr×32, own_a0×21, own_a1×11, ret_0x0043cae0×8, ret_0x0043cd60×1
- top members: 0x00153790, 0x003fe820, 0x001df6d0, 0x00483b60, 0x00538140, 0x003c0620
- symboled members: 0x00153790(0x00153790), 0x003fe820(0x003fe820), 0x001df6d0(0x001df6d0), 0x00483b60(0x00483b60), 0x00538140(0x00538140), 0x003c0620(0x003c0620)
- co-called peers: 0x0043cb00, 0x0043cb20, 0x0042a798, 0x0043cae0, 0x0043caf0, 0x003fe388, 0x0043f278, 0x004407b8

## 0x00504220  `HUB_UNKNOWN_4220`

- fan-in 118  |  upstream reach 971  |  downstream reach 1  |  peers 10
- evidence: auto-seed fan-in 118
- call-site args: ptr×237, own_a3×139, own_a2×98, int×78, own_a1×60, own_a0×42, ret_0x00504040×12, ret_0x0051d750×2
- top members: 0x00153790, 0x00596200, 0x004e9aa0, 0x004ce670, 0x0053e870, 0x004c6110
- symboled members: 0x00153790(0x00153790), 0x00596200(0x00596200), 0x004e9aa0(0x004e9aa0), 0x004ce670(0x004ce670), 0x0053e870(0x0053e870), 0x004c6110(0x004c6110)
- co-called peers: 0x00511940, 0x00512ee0, 0x0051e5a0, 0x00513210, 0x00429068, 0x00504040, 0x00504170, 0x0042aa40

## 0x00504040  `HUB_UNKNOWN_4040`

- fan-in 118  |  upstream reach 971  |  downstream reach 5  |  peers 10
- evidence: auto-seed fan-in 118
- call-site args: ptr×199, own_a3×139, own_a2×102, int×92, own_a1×73, own_a0×22, ret_0x00504170×13, ret_0x00504040×12
- top members: 0x00153790, 0x00596200, 0x004e9aa0, 0x004ce670, 0x0053e870, 0x004c6110
- symboled members: 0x00153790(0x00153790), 0x00596200(0x00596200), 0x004e9aa0(0x004e9aa0), 0x004ce670(0x004ce670), 0x0053e870(0x0053e870), 0x004c6110(0x004c6110)
- co-called peers: 0x00511940, 0x00512ee0, 0x0051e5a0, 0x00513210, 0x00429068, 0x00504220, 0x00504170, 0x0042aa40

## 0x0042f3a0  `HUB_UNKNOWN_f3a0`

- fan-in 118  |  upstream reach 502  |  downstream reach 1  |  peers 4
- evidence: auto-seed fan-in 118
- call-site args: int×1027, own_a3×381, own_a2×345, ptr×188, own_a0×158, own_a1×107, ret_0x0042f3a0×30, ret_0x001862d0×2
- top members: 0x001ca430, 0x001cb220, 0x00147a30, 0x00153790, 0x001e29a0, 0x00332940
- symboled members: 0x001ca430(FUN_001ca430), 0x001cb220(FUN_001cb220), 0x00147a30(FUN_00147a30), 0x00153790(0x00153790), 0x001e29a0(0x001e29a0), 0x00332940(0x00332940)
- co-called peers: 0x00512ee0, 0x005c0d40, 0x00150ea0, 0x00151b70

## 0x00504170  `HUB_UNKNOWN_4170`

- fan-in 117  |  upstream reach 971  |  downstream reach 14  |  peers 10
- evidence: auto-seed fan-in 117
- call-site args: ptr×262, own_a3×142, own_a2×123, int×87, own_a1×62
- top members: 0x00153790, 0x00596200, 0x004e9aa0, 0x004ce670, 0x0053e870, 0x004c6110
- symboled members: 0x00153790(0x00153790), 0x00596200(0x00596200), 0x004e9aa0(0x004e9aa0), 0x004ce670(0x004ce670), 0x0053e870(0x0053e870), 0x004c6110(0x004c6110)
- co-called peers: 0x00511940, 0x00512ee0, 0x0051e5a0, 0x00513210, 0x00429068, 0x00504220, 0x00504040, 0x0042aa40

## 0x003fad18  `HUB_UNKNOWN_ad18`

- fan-in 112  |  upstream reach 804  |  downstream reach 4  |  peers 15
- evidence: auto-seed fan-in 112
- call-site args: ptr×716, int×423, own_a3×228, own_a2×131, own_a0×118, own_a1×87, ret_0x00237bf0×15, ret_0x003fb928×9
- top members: 0x0047ab38, 0x001ca430, 0x001cb220, 0x00446150, 0x00446c68, 0x00540850
- symboled members: 0x0047ab38(FUN_0047ab38), 0x001ca430(FUN_001ca430), 0x001cb220(FUN_001cb220), 0x00446150(FUN_00446150), 0x00446c68(FUN_00446c68), 0x00540850(FUN_00540850)
- co-called peers: 0x003c1000, 0x003f2f30, 0x003eceb0, 0x003fb210, 0x003fb8d0, 0x003fb748, 0x003fb150, 0x003e1300

## 0x0033c1b0  `HUB_UNKNOWN_c1b0`

- fan-in 112  |  upstream reach 894  |  downstream reach 2  |  peers 15
- evidence: auto-seed fan-in 112
- call-site args: int×156, own_a2×150, own_a3×145, ptr×132, own_a1×52, own_a0×30, ret_0x0033c1b0×12, ret_0x00345cc0×5
- top members: 0x00194f90, 0x003994a0, 0x00337690, 0x00376d50, 0x001df6d0, 0x00363910
- symboled members: 0x00194f90(FUN_00194f90), 0x003994a0(FUN_003994a0), 0x00337690(FUN_00337690), 0x00376d50(0x00376d50), 0x001df6d0(0x001df6d0), 0x00363910(0x00363910)
- co-called peers: 0x00345a10, 0x003579e0, 0x00357950, 0x0033f800, 0x00357b60, 0x00347740, 0x0035ac50, 0x00347960

## 0x00503ab0  `Object_Method_Dispatch`

- fan-in 109  |  upstream reach 110  |  downstream reach 1  |  peers 9
- evidence: virtual vtable+0x80
- call-site args: ptr×239, own_a3×172, int×139, own_a0×114, ret_0x0050fde0×37, ret_0x00512e00×2, ret_0x0050fe00×1
- top members: 0x004e9aa0, 0x004d6f40, 0x004d8ff0, 0x00599bc0, 0x00290220, 0x005904e0
- symboled members: 0x004e9aa0(0x004e9aa0), 0x004d6f40(0x004d6f40), 0x004d8ff0(0x004d8ff0), 0x00599bc0(0x00599bc0), 0x00290220(0x00290220), 0x005904e0(0x005904e0)
- co-called peers: 0x00510320, 0x0050fea0, 0x0050fe20, 0x0050fde0, 0x004d9c40, 0x004ef390, 0x004f7c70, 0x004fe2b0

## 0x00508930  `HUB_UNKNOWN_8930`

- fan-in 104  |  upstream reach 122  |  downstream reach 1  |  peers 6
- evidence: auto-seed fan-in 104
- call-site args: own_a3×147, own_a2×120, own_a0×115, own_a1×114, ptr×45, int×28, ret_0x004bc880×5, ret_0x004c6b40×4
- top members: 0x004e9b30, 0x004db2c0, 0x0027ed50, 0x004d8ff0, 0x0032adc0, 0x0032b710
- symboled members: 0x004e9b30(0x004e9b30), 0x004db2c0(0x004db2c0), 0x0027ed50(0x0027ed50), 0x004d8ff0(0x004d8ff0), 0x0032adc0(0x0032adc0), 0x0032b710(0x0032b710)
- co-called peers: 0x00511940, 0x0050f930, 0x00503fb0, 0x0050ea30, 0x005a1cb0, 0x005dbae0

## 0x0050fe00  `HUB_UNKNOWN_fe00`

- fan-in 90  |  upstream reach 300  |  downstream reach 1  |  peers 9
- evidence: auto-seed fan-in 90
- call-site args: int×101, own_a3×93, own_a2×78, ptr×73, own_a0×68, own_a1×3
- top members: 0x002c48f0, 0x001ed7b0, 0x004e3af0, 0x00153790, 0x004ce670, 0x00145230
- symboled members: 0x002c48f0(FUN_002c48f0), 0x001ed7b0(0x001ed7b0), 0x004e3af0(0x004e3af0), 0x00153790(0x00153790), 0x004ce670(0x004ce670), 0x00145230(0x00145230)
- co-called peers: 0x00511940, 0x00510320, 0x0050fea0, 0x0050fe20, 0x0050fde0, 0x00512ee0, 0x00512e00, 0x0050fd50

## 0x0033c120  `HUB_UNKNOWN_c120`

- fan-in 90  |  upstream reach 724  |  downstream reach 3  |  peers 6
- evidence: auto-seed fan-in 90
- call-site args: int×113, own_a3×91, own_a2×76, ptr×57, own_a0×34, own_a1×13, ret_0x0033c120×6, ret_0x00362bd0×1
- top members: 0x00194f90, 0x003994a0, 0x00337690, 0x00376d50, 0x001df6d0, 0x00363910
- symboled members: 0x00194f90(FUN_00194f90), 0x003994a0(FUN_003994a0), 0x00337690(FUN_00337690), 0x00376d50(0x00376d50), 0x001df6d0(0x001df6d0), 0x00363910(0x00363910)
- co-called peers: 0x003c1000, 0x0033c170, 0x003f2f30, 0x0042bd70, 0x00429f38, 0x00340bf0

## 0x0050e310  `HUB_UNKNOWN_e310`

- fan-in 87  |  upstream reach 103  |  downstream reach 52  |  peers 0
- evidence: auto-seed fan-in 87
- call-site args: int×259, own_a3×87, own_a1×1, own_a2×1
- top members: 0x00316d60, 0x00596200, 0x0053e870, 0x004da1b0, 0x005431b0, 0x005a5970
- symboled members: 0x00316d60(0x00316d60), 0x00596200(0x00596200), 0x0053e870(0x0053e870), 0x004da1b0(0x004da1b0), 0x005431b0(0x005431b0), 0x005a5970(0x005a5970)

## 0x00428f48  `HUB_UNKNOWN_8f48`

- fan-in 85  |  upstream reach 669  |  downstream reach 1  |  peers 7
- evidence: auto-seed fan-in 85
- call-site args: int×163, ptr×127, own_a3×111, own_a2×77, own_a0×36, own_a1×32, ret_0x00336fd0×8, ret_0x00429068×4
- top members: 0x00428b18, 0x00428f48, 0x00194f90, 0x001ca430, 0x002c48f0, 0x001cb220
- symboled members: 0x00428b18(strcat), 0x00428f48(strcpy), 0x00194f90(FUN_00194f90), 0x001ca430(FUN_001ca430), 0x002c48f0(FUN_002c48f0), 0x001cb220(FUN_001cb220)
- co-called peers: 0x00429068, 0x0042aa40, 0x00428b18, 0x003fa920, 0x00171e70, 0x004baac0, 0x004ba2a0

## 0x0010f760  `HUB_UNKNOWN_f760`

- fan-in 85  |  upstream reach 145  |  downstream reach 3  |  peers 13
- evidence: auto-seed fan-in 85
- call-site args: ptr×110, int×95, own_a3×88, own_a2×71, own_a1×48, ret_0x0026d4a0×21, own_a0×16, ret_0x001b0de0×10
- top members: 0x001e29a0, 0x0020e230, 0x00145230, 0x0011d1a0, 0x00170d60, 0x001a3530
- symboled members: 0x001e29a0(0x001e29a0), 0x0020e230(0x0020e230), 0x00145230(0x00145230), 0x0011d1a0(0x0011d1a0), 0x00170d60(0x00170d60), 0x001a3530(0x001a3530)
- co-called peers: 0x00511940, 0x00512ee0, 0x0023c590, 0x0042f3a0, 0x0026d230, 0x0026d6f0, 0x0026d4a0, 0x0026daf0

## 0x004f2100  `HUB_UNKNOWN_2100`

- fan-in 84  |  upstream reach 1143  |  downstream reach 8  |  peers 2
- evidence: auto-seed fan-in 84
- call-site args: own_a0×183, own_a3×96, ptr×74, own_a1×29, int×12, own_a2×6
- top members: 0x002c48f0, 0x00513f30, 0x00153790, 0x00596200, 0x001e29a0, 0x0053e870
- symboled members: 0x002c48f0(FUN_002c48f0), 0x00513f30(FUN_00513f30), 0x00153790(0x00153790), 0x00596200(0x00596200), 0x001e29a0(0x001e29a0), 0x0053e870(0x0053e870)
- co-called peers: 0x00511940, 0x004f2210

## 0x002b3920  `HUB_UNKNOWN_3920`

- fan-in 82  |  upstream reach 167  |  downstream reach 1  |  peers 4
- evidence: auto-seed fan-in 82
- call-site args: ptr×202, own_a3×189, own_a2×187, own_a1×153, own_a0×21, int×4
- top members: 0x00153790, 0x002999a0, 0x002b9b30, 0x0014f1f0, 0x002b7110, 0x001404a0
- symboled members: 0x00153790(0x00153790), 0x002999a0(0x002999a0), 0x002b9b30(0x002b9b30), 0x0014f1f0(0x0014f1f0), 0x002b7110(0x002b7110), 0x001404a0(0x001404a0)
- co-called peers: 0x00511940, 0x004ba240, 0x002b39d0, 0x002b38d0

## 0x003f2f30  `HUB_UNKNOWN_2f30`

- fan-in 79  |  upstream reach 346  |  downstream reach 1  |  peers 11
- evidence: auto-seed fan-in 79
- call-site args: int×194, ptr×161, own_a3×74, own_a2×48, own_a0×9, own_a1×8, ret_0x003fad18×7, ret_0x003fb8d0×5
- top members: 0x003ebea0, 0x001df6d0, 0x003d83d0, 0x003e95d0, 0x003c0620, 0x003e4150
- symboled members: 0x003ebea0(FUN_003ebea0), 0x001df6d0(0x001df6d0), 0x003d83d0(0x003d83d0), 0x003e95d0(0x003e95d0), 0x003c0620(0x003c0620), 0x003e4150(0x003e4150)
- co-called peers: 0x003c1000, 0x003fad18, 0x0033c120, 0x003eceb0, 0x003fb8d0, 0x003ebb50, 0x003e1300, 0x003ed1c0

## 0x0049f028  `HUB_UNKNOWN_f028`

- fan-in 75  |  upstream reach 151  |  downstream reach 1  |  peers 4
- evidence: auto-seed fan-in 75
- call-site args: int×105, own_a3×92, own_a2×87, own_a1×77, ptr×28, own_a0×6, ret_0x0049b438×1
- top members: 0x001ca430, 0x001cb220, 0x00153790, 0x0049be10, 0x00498e90, 0x00499a98
- symboled members: 0x001ca430(FUN_001ca430), 0x001cb220(FUN_001cb220), 0x00153790(0x00153790), 0x0049be10(0x0049be10), 0x00498e90(0x00498e90), 0x00499a98(0x00499a98)
- co-called peers: 0x0049b8d8, 0x0049c508, 0x0049c530, 0x0049a3e0

## 0x0026d230  `HUB_UNKNOWN_d230`

- fan-in 74  |  upstream reach 125  |  downstream reach 55  |  peers 10
- evidence: auto-seed fan-in 74
- call-site args: int×131, ptr×130, own_a3×63, ret_0x0026d4a0×40, own_a2×37, own_a1×7, ret_0x0010f760×5, own_a0×4
- top members: 0x001e29a0, 0x0020e230, 0x00145230, 0x0011d1a0, 0x001a3530, 0x0016cf70
- symboled members: 0x001e29a0(0x001e29a0), 0x0020e230(0x0020e230), 0x00145230(0x00145230), 0x0011d1a0(0x0011d1a0), 0x001a3530(0x001a3530), 0x0016cf70(0x0016cf70)
- co-called peers: 0x0023c590, 0x0042f3a0, 0x0010f760, 0x0026d6f0, 0x0026d4a0, 0x0026daf0, 0x0026e060, 0x0026d320

## 0x00512e00  `HUB_UNKNOWN_2e00`

- fan-in 72  |  upstream reach 80  |  downstream reach 11  |  peers 8
- evidence: auto-seed fan-in 72
- call-site args: ptr×166, own_a3×75, own_a2×64, own_a0×4, own_a1×3
- top members: 0x004e3af0, 0x0027d090, 0x00513300, 0x003227c0, 0x00583b20, 0x00548410
- symboled members: 0x004e3af0(0x004e3af0), 0x0027d090(0x0027d090), 0x00513300(0x00513300), 0x003227c0(0x003227c0), 0x00583b20(0x00583b20), 0x00548410(0x00548410)
- co-called peers: 0x00511940, 0x00510320, 0x0050fea0, 0x0050fe20, 0x0050fde0, 0x0050fe00, 0x0050fd50, 0x004d83b0

## 0x003eceb0  `HUB_UNKNOWN_ceb0`

- fan-in 71  |  upstream reach 251  |  downstream reach 3  |  peers 12
- evidence: auto-seed fan-in 71
- call-site args: ptr×210, own_a3×85, int×82, own_a2×77, own_a1×54, own_a0×36, ret_0x003eceb0×7, ret_0x003ed040×1
- top members: 0x003e1fd0, 0x002d1dc0, 0x0020e230, 0x003e3e70, 0x001df6d0, 0x003e6880
- symboled members: 0x003e1fd0(0x003e1fd0), 0x002d1dc0(0x002d1dc0), 0x0020e230(0x0020e230), 0x003e3e70(0x003e3e70), 0x001df6d0(0x001df6d0), 0x003e6880(0x003e6880)
- co-called peers: 0x003c1000, 0x003fad18, 0x003f2f30, 0x003ebb50, 0x003e1300, 0x003ed1c0, 0x003c11c0, 0x003d88b0

## 0x0043af80  `HUB_UNKNOWN_af80`

- fan-in 69  |  upstream reach 333  |  downstream reach 1  |  peers 28
- evidence: auto-seed fan-in 69
- call-site args: ptr×140, own_a3×55, own_a2×43, own_a1×34, int×22, own_a0×21, ret_0x003fb210×3, ret_0x00238120×2
- top members: 0x00194f90, 0x001ca430, 0x001cb220, 0x00337690, 0x001d5f60, 0x0035d2c0
- symboled members: 0x00194f90(FUN_00194f90), 0x001ca430(FUN_001ca430), 0x001cb220(FUN_001cb220), 0x00337690(FUN_00337690), 0x001d5f60(0x001d5f60), 0x0035d2c0(0x0035d2c0)
- co-called peers: 0x00512ee0, 0x00238120, 0x0011b5d0, 0x0043b320, 0x001207c0, 0x00120750, 0x00120780, 0x001206f0

## 0x0011b5d0  `HUB_UNKNOWN_b5d0`

- fan-in 69  |  upstream reach 146  |  downstream reach 1  |  peers 27
- evidence: auto-seed fan-in 69
- call-site args: int×154, ptr×84, own_a3×64, own_a2×51, own_a1×34, own_a0×31, ret_0x001124f0×24, ret_0x005c0d40×21
- top members: 0x001e29a0, 0x00131aa0, 0x001dcdd0, 0x001fcdd0, 0x0014d550, 0x00213420
- symboled members: 0x001e29a0(0x001e29a0), 0x00131aa0(0x00131aa0), 0x001dcdd0(0x001dcdd0), 0x001fcdd0(0x001fcdd0), 0x0014d550(0x0014d550), 0x00213420(0x00213420)
- co-called peers: 0x00511940, 0x00238120, 0x0023c590, 0x005c0d40, 0x0043af80, 0x0043b320, 0x001124f0, 0x001238a0

## 0x004ef390  `HUB_UNKNOWN_f390`

- fan-in 66  |  upstream reach 67  |  downstream reach 1  |  peers 9
- evidence: auto-seed fan-in 66
- call-site args: ptr×146, own_a3×96, int×74, own_a0×54, ret_0x0050fde0×23, ret_0x00512e00×3
- top members: 0x00328c90, 0x002f9f60, 0x003272c0, 0x004d9f40, 0x004da340, 0x004e2e90
- symboled members: 0x00328c90(0x00328c90), 0x002f9f60(0x002f9f60), 0x003272c0(0x003272c0), 0x004d9f40(0x004d9f40), 0x004da340(0x004da340), 0x004e2e90(0x004e2e90)
- co-called peers: 0x00510320, 0x0050fea0, 0x0050fe20, 0x0050fde0, 0x004d9c40, 0x00503ab0, 0x004f7c70, 0x004fe2b0

## 0x0043b320  `HUB_UNKNOWN_b320`

- fan-in 66  |  upstream reach 291  |  downstream reach 1  |  peers 28
- evidence: auto-seed fan-in 66
- call-site args: ptr×133, own_a3×55, own_a2×44, own_a1×40, own_a0×20, int×18, ret_0x00238120×2
- top members: 0x00194f90, 0x00337690, 0x001d5f60, 0x001c6350, 0x001aaff0, 0x001d9310
- symboled members: 0x00194f90(FUN_00194f90), 0x00337690(FUN_00337690), 0x001d5f60(0x001d5f60), 0x001c6350(0x001c6350), 0x001aaff0(0x001aaff0), 0x001d9310(0x001d9310)
- co-called peers: 0x00512ee0, 0x00238120, 0x0043af80, 0x0011b5d0, 0x001207c0, 0x00120750, 0x00120780, 0x001206f0

## 0x00345a10  `HUB_UNKNOWN_5a10`

- fan-in 66  |  upstream reach 240  |  downstream reach 1  |  peers 11
- evidence: auto-seed fan-in 66
- call-site args: ptr×202, int×110, own_a3×85, own_a2×61, own_a1×46, own_a0×31, ret_0x0033f800×14, ret_0x00345cc0×7
- top members: 0x001ab880, 0x003994a0, 0x00194f90, 0x00337690, 0x001b0b50, 0x003af8e0
- symboled members: 0x001ab880(FUN_001ab880), 0x003994a0(FUN_003994a0), 0x00194f90(FUN_00194f90), 0x00337690(FUN_00337690), 0x001b0b50(0x001b0b50), 0x003af8e0(0x003af8e0)
- co-called peers: 0x0033c1b0, 0x0033f800, 0x003455e0, 0x00345640, 0x00345660, 0x003674c0, 0x003adaf0, 0x00337930

## 0x0050fd50  `HUB_UNKNOWN_fd50`

- fan-in 65  |  upstream reach 66  |  downstream reach 7  |  peers 9
- evidence: auto-seed fan-in 65
- call-site args: ptr×91, own_a3×65, ret_0x0050fe00×62, own_a2×57, int×7, ret_0x00512e00×6
- top members: 0x004e09a0, 0x004e3af0, 0x005900e0, 0x004e7700, 0x0027d970, 0x0027d090
- symboled members: 0x004e09a0(0x004e09a0), 0x004e3af0(0x004e3af0), 0x005900e0(0x005900e0), 0x004e7700(0x004e7700), 0x0027d970(0x0027d970), 0x0027d090(0x0027d090)
- co-called peers: 0x00510320, 0x0050fea0, 0x0050fe20, 0x0050fde0, 0x004d9c40, 0x00503ab0, 0x0050fe00, 0x00512e00

## 0x0043eb80  `HUB_UNKNOWN_eb80`

- fan-in 65  |  upstream reach 331  |  downstream reach 28  |  peers 7
- evidence: auto-seed fan-in 65
- call-site args: int×205, own_a3×109, ptr×83, own_a2×69, own_a1×50, own_a0×7, ret_0x0043eb80×3, ret_0x00448018×1
- top members: 0x0047ab38, 0x00446150, 0x00446c68, 0x00540850, 0x00446c30, 0x00153790
- symboled members: 0x0047ab38(FUN_0047ab38), 0x00446150(FUN_00446150), 0x00446c68(FUN_00446c68), 0x00540850(FUN_00540850), 0x00446c30(FUN_00446c30), 0x00153790(0x00153790)
- co-called peers: 0x00428998, 0x0043fb68, 0x0043cb00, 0x0047ac78, 0x0045bd70, 0x0043f998, 0x0043f328

## 0x0042bd70  `HUB_UNKNOWN_bd70`

- fan-in 64  |  upstream reach 2462  |  downstream reach 2  |  peers 4
- evidence: auto-seed fan-in 64
- call-site args: int×68, ptr×66, own_a3×63, own_a2×58, own_a0×4, own_a1×4, ret_0x003fb9c8×1
- top members: 0x0042bd70, 0x004490b0, 0x001ca430, 0x001cb220, 0x003994a0, 0x00194f90
- symboled members: 0x0042bd70(FUN_0042bd70), 0x004490b0(FUN_004490b0), 0x001ca430(FUN_001ca430), 0x001cb220(FUN_001cb220), 0x003994a0(FUN_003994a0), 0x00194f90(FUN_00194f90)
- co-called peers: 0x0033c170, 0x0033c120, 0x00429f38, 0x00340bf0

## 0x00429f38  `HUB_UNKNOWN_9f38`

- fan-in 64  |  upstream reach 586  |  downstream reach 46  |  peers 4
- evidence: auto-seed fan-in 64
- call-site args: int×73, ptr×69, own_a3×63, own_a2×54, ret_0x0043c688×1
- top members: 0x00194f90, 0x003994a0, 0x004490b0, 0x00448d40, 0x00337690, 0x00376d50
- symboled members: 0x00194f90(FUN_00194f90), 0x003994a0(FUN_003994a0), 0x004490b0(FUN_004490b0), 0x00448d40(FUN_00448d40), 0x00337690(FUN_00337690), 0x00376d50(0x00376d50)
- co-called peers: 0x0033c170, 0x0033c120, 0x0042bd70, 0x00340bf0

## 0x001071e0  `HUB_UNKNOWN_71e0`

- fan-in 64  |  upstream reach 208  |  downstream reach 1  |  peers 8
- evidence: auto-seed fan-in 64
- call-site args: ptr×245, own_a3×125, own_a0×70, own_a2×68, int×44, ret_0x001071e0×29, own_a1×23, ret_0x0058b9d0×2
- top members: 0x001071e0, 0x0056dd40, 0x0056dfb0, 0x001e29a0, 0x00145230, 0x001fcdd0
- symboled members: 0x001071e0(memcpy64), 0x0056dd40(FUN_0056dd40), 0x0056dfb0(FUN_0056dfb0), 0x001e29a0(0x001e29a0), 0x00145230(0x00145230), 0x001fcdd0(0x001fcdd0)
- co-called peers: 0x00511940, 0x0058a7a0, 0x004f2210, 0x0058b090, 0x00108b40, 0x0058b0b0, 0x0058c3a0, 0x00160b90

## 0x003fb210  `HUB_UNKNOWN_b210`

- fan-in 63  |  upstream reach 1841  |  downstream reach 4  |  peers 14
- evidence: auto-seed fan-in 63
- call-site args: ptr×346, own_a3×263, int×226, own_a2×184, own_a0×117, own_a1×43, ret_0x003fb210×19, ret_0x003fb1a8×16
- top members: 0x00432fc0, 0x00433090, 0x0042f100, 0x00432588, 0x0042f130, 0x0042ba78
- symboled members: 0x00432fc0(format_scan), 0x00433090(FUN_00433090), 0x0042f100(FUN_0042f100), 0x00432588(FUN_00432588), 0x0042f130(FUN_0042f130), 0x0042ba78(FUN_0042ba78)
- co-called peers: 0x003c1000, 0x003fad18, 0x003fb8d0, 0x003fb748, 0x003fb150, 0x003fb1a8, 0x003fb498, 0x003fb6f8

## Seed next (biggest unreached fan-in)

- `0x004f7c70` fan-in 63
- `0x001207c0` fan-in 62
- `0x004a56e8` fan-in 62
- `0x004fe2b0` fan-in 62
- `0x0050ea30` fan-in 61
- `0x0049b8d8` fan-in 60
- `0x00357950` fan-in 59
- `0x003fb8d0` fan-in 59

