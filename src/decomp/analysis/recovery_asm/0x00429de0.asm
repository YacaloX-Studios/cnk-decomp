; 0x00429de0  FUN_00429de0  size=272  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00429820;0x00429b80;0x00429d38;0x0042a0d0
; 68 words

  00429de0: addiu  $sp, $sp, -80      
  00429de4: sq     $s2, +48($sp)      
  00429de8: sq     $s0, +16($sp)      
  00429dec: daddu $s2, $a1, $zero     
  00429df0: daddu $a1, $a2, $zero     
  00429df4: daddu $s0, $a0, $zero     
  00429df8: sq     $s1, +32($sp)      
  00429dfc: sq     $ra, +64($sp)      
  00429e00: jal   0xf0429d38             ; -> 0x00429d38
  00429e04: daddu $a2, $sp, $zero     
  00429e08: daddu $s1, $v0, $zero     
  00429e0c: beq    $s1, $zero, +148      ; br -> 0x00429ea4
  00429e10: daddu $v0, $zero, $zero   
  00429e14: jal   0xf0429b80             ; -> FUN_00429b80
  00429e18: daddu $a0, $s0, $zero     
  00429e1c: daddu $s0, $v0, $zero     
  00429e20: beq    $s0, $zero, +36       ; br -> 0x00429e48
  00429e24: daddu $a1, $s2, $zero     
  00429e28: lw     $a2, +0($sp)       
  00429e2c: lw     $a0, +84($s0)      
  00429e30: jal   0xf0429820             ; -> FUN_00429820
  00429e34: addiu  $a3, $zero, +438   
  00429e38: daddu $a2, $v0, $zero     
  00429e3c: regimm $a2, $at, +16         ; br -> 0x00429e50
  00429e40: lui   $v0, 0x00430000     
  00429e44: sh     $zero, +12($s0)    
  00429e48: beq    $zero, $zero, +88     ; br -> 0x00429ea4
  00429e4c: daddu $v0, $zero, $zero   
  00429e50: lui   $v1, 0x00430000     
  00429e54: lui   $a0, 0x00430000     
  00429e58: lui   $a1, 0x00430000     
  00429e5c: addiu  $v0, $v0, -21664   
  00429e60: addiu  $v1, $v1, -21560   
  00429e64: addiu  $a0, $a0, -21432   
  00429e68: addiu  $a1, $a1, -21328   
  00429e6c: sh     $a2, +14($s0)      
  00429e70: andi   $a2, $s1, +256     
  00429e74: sw     $v0, +32($s0)      
  00429e78: sw     $v1, +36($s0)      
  00429e7c: sw     $a0, +40($s0)      
  00429e80: sw     $a1, +44($s0)      
  00429e84: sh     $s1, +12($s0)      
  00429e88: beq    $a2, $zero, +20       ; br -> 0x00429ea0
  00429e8c: sw     $s0, +28($s0)      
  00429e90: daddu $a0, $s0, $zero     
  00429e94: daddu $a1, $zero, $zero   
  00429e98: jal   0xf042a0d0             ; -> 0x0042a0d0
  00429e9c: addiu  $a2, $zero, +2     
  00429ea0: daddu $v0, $s0, $zero     
  00429ea4: lq     $ra, +64($sp)      
  00429ea8: lq     $s2, +48($sp)      
  00429eac: lq     $s1, +32($sp)      
  00429eb0: lq     $s0, +16($sp)      
  00429eb4: jr     $ra                
  00429eb8: addiu  $sp, $sp, +80      
  00429ebc: sll $zero, $zero, 0       
  00429ec0: daddu $v0, $a0, $zero     
  00429ec4: lui   $v1, 0x00650000     
  00429ec8: addiu  $sp, $sp, -16      
  00429ecc: daddu $a2, $a1, $zero     
  00429ed0: lw     $a0, +30548($v1)      ; GLOBAL 0x00657754
  00429ed4: sq     $ra, +0($sp)       
  00429ed8: jal   0xf0429de0             ; -> FUN_00429de0
  00429edc: daddu $a1, $v0, $zero     
  00429ee0: lq     $ra, +0($sp)       
  00429ee4: jr     $ra                
  00429ee8: addiu  $sp, $sp, +16      
  00429eec: sll $zero, $zero, 0       

; globals: 0x00657754(x1)
