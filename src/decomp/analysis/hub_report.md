# Hub dissections (Phase 3F)

## 0x00511940  (status stub_code, size 240, fan-in 0, calls -)

propagated signature: Unknown_a0_0_4c *a0

evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ret calls=0x00503e70;0x005065c0;0x00511d20;0x00511dc0;0x00512f40

  00511940: addiu  $sp, $sp, -32    
  00511944: lui   $at, 0x00720000   
  00511948: sw     $ra, +16($sp)    
  0051194c: sw     $s0, +0($sp)     
  00511950: lw     $v1, +23872($at)    ; GLOBAL 0x00725d40
  00511954: beq    $v1, $zero, +200    ; br -> 0x00511a20
  00511958: dsubu  $zero, $a0, +0   
  0051195c: lw     $t9, +0($a0)     
  00511960: lw     $t9, +76($t9)    
  00511964: jalr   $t9, $ra            ; (indirect)
  00511968: sll    $zero, $zero, +0 
  0051196c: beq    $v0, $zero, +96     ; br -> 0x005119d0
  00511970: sll    $zero, $zero, +0 
  00511974: lw     $v1, +44($v0)    
  00511978: addiu  $v1, $v1, -1     
  0051197c: sw     $v1, +44($v0)    
  00511980: lw     $a0, +48($v0)    
  00511984: beq    $a0, $zero, +72     ; br -> 0x005119d0
  00511988: sll    $zero, $zero, +0 
  0051198c: lw     $a2, +8($a0)     
  00511990: lw     $v1, +12($a0)    
  00511994: beq    $zero, $zero, +32   ; br -> 0x005119b8
  00511998: dsubu  $zero, $zero, +0 
  0051199c: addu   $v0, $a2, +0     
  005119a0: lw     $v0, +0($v0)     
  005119a4: bne    $v0, $s0, +12       ; br -> 0x005119b4
  005119a8: sll    $zero, $zero, +0 
  005119ac: beq    $zero, $zero, +24   ; br -> 0x005119c8
  005119b0: sll    $zero, $zero, +0 
  005119b4: addiu  $a1, $a1, +1     
  005119b8: dadd   $v1, $a1, +0     
  005119bc: bne    $v0, $zero, -36     ; br -> 0x0055199c
  005119c0: sll    $a1, $zero, +2   
  005119c4: addiu  $a1, $zero, -1   
  005119c8: jal   0xf0503e70           ; -> 0x00503e70
  005119cc: sll    $zero, $zero, +0 
  005119d0: lw     $t9, +0($s0)     
  005119d4: lw     $t9, +64($t9)    
  005119d8: jalr   $t9, $ra            ; (indirect)
  005119dc: dsubu  $zero, $s0, +0   
  005119e0: lw     $t9, +0($s0)     
  005119e4: lw     $t9, +36($t9)    
  005119e8: jalr   $t9, $ra            ; (indirect)
  005119ec: dsubu  $zero, $s0, +0   
  005119f0: lw     $t9, +0($s0)     
  005119f4: lw     $t9, +44($t9)    
  005119f8: jalr   $t9, $ra            ; (indirect)
  005119fc: dsubu  $zero, $s0, +0   
  00511a00: jal   0xf0511d20           ; -> 0x00511d20  (a0=ptr;a1=-;a2=-;a3=-) ret=ret
  00511a04: dsubu  $zero, $s0, +0   
  00511a08: jal   0xf0511dc0           ; -> 0x00511dc0  (a0=ptr;a1=-;a2=-;a3=-) ret=ret
  00511a0c: dsubu  $zero, $s0, +0   
  00511a10: jal   0xf0512f40           ; -> 0x00512f40  (a0=ptr;a1=-;a2=-;a3=-) ret=int
  00511a14: dsubu  $zero, $s0, +0   
  00511a18: jal   0xf05065c0           ; -> 0x005065c0  (a0=ptr;a1=int;a2=int;a3=int) ret=ret
  00511a1c: dsubu  $zero, $v0, +0   
  00511a20: lw     $ra, +16($sp)    
  00511a24: lw     $s0, +0($sp)     
  00511a28: jr     $ra              
  00511a2c: addiu  $sp, $sp, +32    

global table refs: 1 distinct, top 0x00725d40(x1)

## 0x004ba240  (status stub_code, size 96, fan-in 0, calls -)

evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042c238;0x004bab00

  004ba240: addiu  $sp, $sp, -64    
  004ba244: sw     $ra, +16($sp)    
  004ba248: sw     $fp, +0($sp)     
  004ba24c: jal   0xf042c238           ; -> FUN_0042c238  (a0=int;a1=int;a2=int;a3=int) ret=ret
  004ba250: addu   $zero, $sp, +0   
  004ba254: beq    $zero, $zero, +40   ; br -> 0x004ba280
  004ba258: sll    $zero, $zero, +0 
  004ba25c: jal   0xf04bab00           ; -> 0x004bab00  (a0=ptr;a1=int;a2=int;a3=int) ret=ret
  004ba260: addiu  $a0, $fp, +32    
  004ba264: sll    $zero, $zero, +0 
  004ba268: sll    $zero, $zero, +0 
  004ba26c: sll    $zero, $zero, +0 
  004ba270: sll    $zero, $zero, +0 
  004ba274: sll    $zero, $zero, +0 
  004ba278: beq    $zero, $zero, -24   ; br -> 0x004fa264
  004ba27c: sll    $zero, $zero, +0 
  004ba280: addu   $zero, $fp, +0   
  004ba284: lw     $ra, +16($sp)    
  004ba288: lw     $fp, +0($sp)     
  004ba28c: jr     $ra              
  004ba290: addiu  $sp, $sp, +64    
  004ba294: sll    $zero, $zero, +0 
  004ba298: sll    $zero, $zero, +0 
  004ba29c: sll    $zero, $zero, +0 

no data-page refs decoded

## 0x00511860  (status stub_code, size 224, fan-in 0, calls -)

evidence: args=a0=int;a1=int;a2=-;a3=- ret=ret calls=

  00511860: addiu  $sp, $sp, -32    
  00511864: lui   $at, 0x00720000   
  00511868: sw     $ra, +16($sp)    
  0051186c: sw     $s0, +0($sp)     
  00511870: dsubu  $zero, $a1, +0   
  00511874: addu   $a1, $a0, +0     
  00511878: lw     $a0, +24288($at)    ; GLOBAL 0x00725ee0
  0051187c: lw     $t9, +0($a0)     
  00511880: lw     $t9, +180($t9)   
  00511884: jalr   $t9, $ra            ; (indirect)
  00511888: sll    $zero, $zero, +0 
  0051188c: addu   $s0, $v0, +0     
  00511890: lw     $ra, +16($sp)    
  00511894: lw     $s0, +0($sp)     
  00511898: jr     $ra              
  0051189c: addiu  $sp, $sp, +32    
  005118a0: j     0x005065c0        
  005118a4: sll    $zero, $zero, +0 
  005118a8: sll    $zero, $zero, +0 
  005118ac: sll    $zero, $zero, +0 
  005118b0: addiu  $sp, $sp, -16    
  005118b4: lui   $at, 0x00720000   
  005118b8: sw     $ra, +0($sp)     
  005118bc: lw     $v1, +24344($at)    ; GLOBAL 0x00725f18
  005118c0: lw     $v0, +36($v1)    
  005118c4: andi   $v0, $v0, +4     
  005118c8: daddu  $v0, $zero, +0   
  005118cc: beq    $v0, $zero, +48     ; br -> 0x00511900
  005118d0: dsubu  $zero, $a0, +0   
  005118d4: lw     $a1, +32($v1)    
  005118d8: jal   0xf0511810           ; -> 0x00511810  (a0=int;a1=int;a2=int;a3=-) ret=ret
  005118dc: addiu  $a0, $zero, +8   
  005118e0: beq    $v0, $zero, +68     ; br -> 0x00511928
  005118e4: sll    $zero, $zero, +0 
  005118e8: lui   $at, 0x00720000   
  005118ec: lw     $a1, +24344($at)    ; GLOBAL 0x00725f18
  005118f0: jal   0xf0511100           ; -> 0x00511100  (a0=ptr;a1=int;a2=int;a3=int) ret=ret
  005118f4: dsubu  $zero, $v0, +0   
  005118f8: beq    $zero, $zero, +48   ; br -> 0x0051192c
  005118fc: lw     $ra, +0($sp)     
  00511900: addiu  $a0, $zero, +8   
  00511904: jal   0xf0511810           ; -> 0x00511810  (a0=int;a1=int;a2=int;a3=-) ret=ret
  00511908: dsubu  $zero, $zero, +0 
  0051190c: beq    $v0, $zero, +24     ; br -> 0x00511928
  00511910: sll    $zero, $zero, +0 
  00511914: lui   $at, 0x00720000   
  00511918: dsubu  $zero, $v0, +0   
  0051191c: lw     $a1, +24344($at)    ; GLOBAL 0x00725f18
  00511920: jal   0xf0511140           ; -> 0x00511140  (a0=ptr;a1=int;a2=int;a3=int) ret=ret
  00511924: addiu  $a2, $zero, +1   
  00511928: lw     $ra, +0($sp)     
  0051192c: jr     $ra              
  00511930: addiu  $sp, $sp, +16    
  00511934: sll    $zero, $zero, +0 
  00511938: sll    $zero, $zero, +0 
  0051193c: sll    $zero, $zero, +0 

global table refs: 2 distinct, top 0x00725f18(x3), 0x00725ee0(x1)

## 0x0050fea0  (status stub_code, size 208, fan-in 0, calls -)

evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0050e720;0x0050ea30;0x00510320

  0050fea0: addiu  $sp, $sp, -144   
  0050fea4: sw     $ra, +128($sp)   
  0050fea8: sw     $s7, +112($sp)   
  0050feac: sw     $s6, +96($sp)    
  0050feb0: sw     $s5, +80($sp)    
  0050feb4: dsubu  $zero, $a0, +0   
  0050feb8: sw     $s4, +64($sp)    
  0050febc: dsubu  $zero, $a1, +0   
  0050fec0: sw     $s3, +48($sp)    
  0050fec4: dsubu  $zero, $a2, +0   
  0050fec8: sw     $s2, +32($sp)    
  0050fecc: dsubu  $zero, $a3, +0   
  0050fed0: sw     $s1, +16($sp)    
  0050fed4: dsubu  $zero, $t0, +0   
  0050fed8: jal   0xf0510320           ; -> 0x00510320
  0050fedc: sw     $s0, +0($sp)     
  0050fee0: dsubu  $zero, $v0, +0   
  0050fee4: beq    $zero, $zero, +80   ; br -> 0x0050ff38
  0050fee8: dsubu  $zero, $zero, +0 
  0050feec: sll    $s0, $zero, +2   
  0050fef0: lw     $t2, +40($s6)    
  0050fef4: addu   $v0, $s5, +0     
  0050fef8: addu   $v0, $s4, +0     
  0050fefc: addu   $v0, $s3, +0     
  0050ff00: sll    $s2, $zero, +2   
  0050ff04: lw     $a3, +0($v0)     
  0050ff08: dsubu  $zero, $s6, +0   
  0050ff0c: lw     $a1, +0($a0)     
  0050ff10: lw     $a2, +0($v1)     
  0050ff14: lw     $v0, +8($t2)     
  0050ff18: addu   $t1, $v0, +0     
  0050ff1c: lw     $s7, +0($v0)     
  0050ff20: jal   0xf050e720           ; -> 0x0050e720  (a0=int;a1=int;a2=int;a3=int) ret=ret
  0050ff24: dsubu  $zero, $s7, +0   
  0050ff28: jal   0xf050ea30           ; -> 0x0050ea30  (a0=ptr;a1=-;a2=-;a3=-) ret=ret
  0050ff2c: dsubu  $zero, $s7, +0   
  0050ff30: addiu  $s2, $s2, +1     
  0050ff34: addiu  $s0, $s0, +1     
  0050ff38: dadd   $s1, $s2, +0     
  0050ff3c: bne    $v1, $zero, -84     ; br -> 0x0054feec
  0050ff40: sll    $zero, $zero, +0 
  0050ff44: lw     $ra, +128($sp)   
  0050ff48: lw     $s7, +112($sp)   
  0050ff4c: lw     $s6, +96($sp)    
  0050ff50: lw     $s5, +80($sp)    
  0050ff54: lw     $s4, +64($sp)    
  0050ff58: lw     $s3, +48($sp)    
  0050ff5c: lw     $s2, +32($sp)    
  0050ff60: lw     $s1, +16($sp)    
  0050ff64: lw     $s0, +0($sp)     
  0050ff68: jr     $ra              
  0050ff6c: addiu  $sp, $sp, +144   

no data-page refs decoded

## 0x00510a20  (status stub_code, size 176, fan-in 0, calls -)

evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00511940

  00510a20: addiu  $sp, $sp, -64    
  00510a24: dsubu  $zero, $a0, +0   
  00510a28: sw     $ra, +32($sp)    
  00510a2c: addiu  $a0, $sp, +60    
  00510a30: sw     $s1, +16($sp)    
  00510a34: jalr   $v0, $ra            ; (indirect)
  00510a38: sw     $s0, +0($sp)     
  00510a3c: lw     $v1, +60($sp)    
  00510a40: beq    $v1, $zero, +60     ; br -> 0x00510a80
  00510a44: sll    $zero, $zero, +0 
  00510a48: lw     $s1, +12($v1)    
  00510a4c: beq    $zero, $zero, +36   ; br -> 0x00510a74
  00510a50: dsubu  $zero, $zero, +0 
  00510a54: lw     $v0, +60($sp)    
  00510a58: sll    $s0, $zero, +2   
  00510a5c: lw     $v0, +8($v0)     
  00510a60: addu   $v1, $v0, +0     
  00510a64: lw     $v0, +0($v0)     
  00510a68: jalr   $v0, $ra            ; (indirect)
  00510a6c: sll    $zero, $zero, +0 
  00510a70: addiu  $s0, $s0, +1     
  00510a74: dadd   $s1, $s0, +0     
  00510a78: bne    $v1, $zero, -40     ; br -> 0x00550a54
  00510a7c: sll    $zero, $zero, +0 
  00510a80: lw     $a0, +60($sp)    
  00510a84: beq    $a0, $zero, +44     ; br -> 0x00510ab4
  00510a88: sll    $zero, $zero, +0 
  00510a8c: lw     $v1, +4($a0)     
  00510a90: addiu  $v1, $v1, -1     
  00510a94: sw     $v1, +4($a0)     
  00510a98: lw     $v1, +4($a0)     
  00510a9c: spec3c  $zero,$v1,$v1   
  00510aa0: spec3e  $zero,$v1,$v1   
  00510aa4: bne    $v1, $zero, +12     ; br -> 0x00510ab4
  00510aa8: sll    $zero, $zero, +0 
  00510aac: jal   0xf0511940           ; -> 0x00511940  (a0=ptr;a1=int;a2=int;a3=int) ret=ret
  00510ab0: sll    $zero, $zero, +0 
  00510ab4: lw     $ra, +32($sp)    
  00510ab8: lw     $s1, +16($sp)    
  00510abc: lw     $s0, +0($sp)     
  00510ac0: jr     $ra              
  00510ac4: addiu  $sp, $sp, +64    
  00510ac8: sll    $zero, $zero, +0 
  00510acc: sll    $zero, $zero, +0 

no data-page refs decoded

## 0x00503ab0  (status stub_code, size 64, fan-in 0, calls -)

propagated signature: Unknown_a0_0_80 *a0

evidence: args=a0=ptr;a1=int;a2=-;a3=- ret=ret calls=

  00503ab0: addiu  $sp, $sp, -32    
  00503ab4: sw     $ra, +0($sp)     
  00503ab8: sw     $a1, +28($sp)    
  00503abc: lw     $t9, +0($a0)     
  00503ac0: lw     $t9, +128($t9)   
  00503ac4: jalr   $t9, $ra            ; (indirect)
  00503ac8: addiu  $a1, $sp, +28    
  00503acc: lw     $ra, +0($sp)     
  00503ad0: jr     $ra              
  00503ad4: addiu  $sp, $sp, +32    
  00503ad8: sll    $zero, $zero, +0 
  00503adc: sll    $zero, $zero, +0 
  00503ae0: jr     $ra              
  00503ae4: addiu  $v0, $zero, +4   
  00503ae8: sll    $zero, $zero, +0 
  00503aec: sll    $zero, $zero, +0 

no data-page refs decoded

## 0x004d9c40  (status stub_code, size 96, fan-in 0, calls -)

evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x004d9ce0;0x0050f930

  004d9c40: addiu  $sp, $sp, -16    
  004d9c44: dsubu  $zero, $a0, +0   
  004d9c48: sw     $ra, +0($sp)     
  004d9c4c: lui   $at, 0x00720000   
  004d9c50: lw     $a0, +19912($at)    ; GLOBAL 0x00724dc8
  004d9c54: beq    $a0, $zero, +40     ; br -> 0x004d9c80
  004d9c58: sll    $zero, $zero, +0 
  004d9c5c: lw     $v0, +36($a0)    
  004d9c60: andi   $v0, $v0, +4     
  004d9c64: daddu  $v0, $zero, +0   
  004d9c68: beq    $v0, $zero, +20     ; br -> 0x004d9c80
  004d9c6c: sll    $zero, $zero, +0 
  004d9c70: jal   0xf050f930           ; -> 0x0050f930
  004d9c74: sll    $zero, $zero, +0 
  004d9c78: beq    $zero, $zero, +16   ; br -> 0x004d9c8c
  004d9c7c: lw     $ra, +0($sp)     
  004d9c80: jal   0xf04d9ce0           ; -> 0x004d9ce0  (a0=int;a1=int;a2=int;a3=int) ret=ret
  004d9c84: dsubu  $zero, $a1, +0   
  004d9c88: lw     $ra, +0($sp)     
  004d9c8c: jr     $ra              
  004d9c90: addiu  $sp, $sp, +16    
  004d9c94: sll    $zero, $zero, +0 
  004d9c98: sll    $zero, $zero, +0 
  004d9c9c: sll    $zero, $zero, +0 

global table refs: 1 distinct, top 0x00724dc8(x1)

## Role hypotheses (confirm in Ghidra)

- `0x00511940`  size=240  globals=[0x00725d40]  vtable=[0x24/0x2c/0x40/0x4c]  loops=0
    pattern: virtual-method dispatch (vtable+0x4c/0x40/0x24/0x2c); global-singleton accessor; sub-calls 0x00503e70, 0x00511d20, 0x00511dc0, 0x00512f40

- `0x004ba240`  size=96  globals=[-]  vtable=[-]  loops=0
    pattern: sub-calls 0x0042c238, 0x004bab00

- `0x00511860`  size=224  globals=[0x00725f18;0x00725ee0]  vtable=[0xb4]  loops=0
    pattern: virtual-method dispatch (vtable+0xb4); global-singleton accessor; sub-calls 0x00511810, 0x00511100, 0x00511810, 0x00511140

- `0x0050fea0`  size=208  globals=[-]  vtable=[-]  loops=0
    pattern: sub-calls 0x00510320, 0x0050e720, 0x0050ea30

- `0x00510a20`  size=176  globals=[-]  vtable=[-]  loops=0
    pattern: sub-calls 0x00511940

- `0x00503ab0`  size=64  globals=[-]  vtable=[0x80]  loops=0
    pattern: virtual-method dispatch (vtable+0x80)

- `0x004d9c40`  size=96  globals=[0x00724dc8]  vtable=[-]  loops=0
    pattern: sub-calls 0x0050f930, 0x004d9ce0

