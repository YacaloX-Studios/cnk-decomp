; 0x00429de0  FUN_00429de0  size=272  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00429820;0x00429b80;0x00429d38;0x0042a0d0
; 68 words

  00429de0: addiu  $sp, $sp, -80      
  00429de4: sw     $s2, +48($sp)      
  00429de8: sw     $s0, +16($sp)      
  00429dec: dsubu $s2, $a1, $zero     
  00429df0: dsubu $a1, $a2, $zero     
  00429df4: dsubu $s0, $a0, $zero     
  00429df8: sw     $s1, +32($sp)      
  00429dfc: sw     $ra, +64($sp)      
  00429e00: jal   0xf0429d38             ; -> 0x00429d38
  00429e04: dsubu $a2, $sp, $zero     
  00429e08: dsubu $s1, $v0, $zero     
  00429e0c: beq    $s1, $zero, +148      ; br -> 0x00429ea4
  00429e10: dsubu $v0, $zero, $zero   
  00429e14: jal   0xf0429b80             ; -> FUN_00429b80
  00429e18: dsubu $a0, $s0, $zero     
  00429e1c: dsubu $s0, $v0, $zero     
  00429e20: beq    $s0, $zero, +36       ; br -> 0x00429e48
  00429e24: dsubu $a1, $s2, $zero     
  00429e28: lw     $a2, +0($sp)       
  00429e2c: lw     $a0, +84($s0)      
  00429e30: jal   0xf0429820             ; -> FUN_00429820
  00429e34: addiu  $a3, $zero, +438   
  00429e38: dsubu $a2, $v0, $zero     
  00429e3c: regimm $a2, $at, +16         ; br -> 0x00429e50
  00429e40: lui   $v0, 0x00430000     
  00429e44: sw     $zero, +12($s0)    
  00429e48: beq    $zero, $zero, +88     ; br -> 0x00429ea4
  00429e4c: dsubu $v0, $zero, $zero   
  00429e50: lui   $v1, 0x00430000     
  00429e54: lui   $a0, 0x00430000     
  00429e58: lui   $a1, 0x00430000     
  00429e5c: addiu  $v0, $v0, -21664   
  00429e60: addiu  $v1, $v1, -21560   
  00429e64: addiu  $a0, $a0, -21432   
  00429e68: addiu  $a1, $a1, -21328   
  00429e6c: sw     $a2, +14($s0)      
  00429e70: andi   $a2, $s1, +256     
  00429e74: sw     $v0, +32($s0)      
  00429e78: sw     $v1, +36($s0)      
  00429e7c: sw     $a0, +40($s0)      
  00429e80: sw     $a1, +44($s0)      
  00429e84: sw     $s1, +12($s0)      
  00429e88: beq    $a2, $zero, +20       ; br -> 0x00429ea0
  00429e8c: sw     $s0, +28($s0)      
  00429e90: dsubu $a0, $s0, $zero     
  00429e94: dsubu $a1, $zero, $zero   
  00429e98: jal   0xf042a0d0             ; -> 0x0042a0d0
  00429e9c: addiu  $a2, $zero, +2     
  00429ea0: dsubu $v0, $s0, $zero     
  00429ea4: lw     $ra, +64($sp)      
  00429ea8: lw     $s2, +48($sp)      
  00429eac: lw     $s1, +32($sp)      
  00429eb0: lw     $s0, +16($sp)      
  00429eb4: jr     $ra                
  00429eb8: addiu  $sp, $sp, +80      
  00429ebc: sll $zero, $zero, 0       
  00429ec0: dsubu $v0, $a0, $zero     
  00429ec4: lui   $v1, 0x00650000     
  00429ec8: addiu  $sp, $sp, -16      
  00429ecc: dsubu $a2, $a1, $zero     
  00429ed0: lw     $a0, +30548($v1)      ; GLOBAL 0x00657754
  00429ed4: sw     $ra, +0($sp)       
  00429ed8: jal   0xf0429de0             ; -> FUN_00429de0
  00429edc: dsubu $a1, $v0, $zero     
  00429ee0: lw     $ra, +0($sp)       
  00429ee4: jr     $ra                
  00429ee8: addiu  $sp, $sp, +16      
  00429eec: sll $zero, $zero, 0       

; globals: 0x00657754(x1)
