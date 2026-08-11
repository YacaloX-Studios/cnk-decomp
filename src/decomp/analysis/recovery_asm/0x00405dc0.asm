; 0x00405dc0  FUN_00405dc0  size=480  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=ptr ret=void calls=
; 120 words

  00405dc0: addiu  $sp, $sp, -16      
  00405dc4: lui   $v1, 0x2aaa0000     
  00405dc8: subu   $a1, $a2, +0       
  00405dcc: ori    $v1, $v1, -21845   
  00405dd0: mult   $t0, $v1, +0       
  00405dd4: sw     $a1, +4($sp)       
  00405dd8: srl    $t0, $zero, +31    
  00405ddc: mfhi   $zero, $zero, +0   
  00405de0: sra    $v1, $zero, +1     
  00405de4: addu   $a1, $v1, +0       
  00405de8: blez   $t0, $zero, +100      ; br -> 0x00405e50
  00405dec: sw     $a2, +8($sp)       
  00405df0: lw     $a3, +0($a3)       
  00405df4: lw     $v1, +4($sp)       
  00405df8: sra    $t0, $zero, +1     
  00405dfc: regimm $t0, $at, +12         ; br -> 0x00405e0c
  00405e00: sw     $v1, +12($sp)      
  00405e04: addiu  $v1, $t0, +1       
  00405e08: sra    $v1, $zero, +1     
  00405e0c: lw     $v1, +12($sp)      
  00405e10: sll    $a2, $zero, +1     
  00405e14: addu   $a2, $a1, +0       
  00405e18: sll    $a1, $zero, +2     
  00405e1c: addu   $a1, $v1, +0       
  00405e20: lw     $v1, +4($a1)       
  00405e24: dadd   $a3, $v1, +0       
  00405e28: beq    $at, $zero, +48       ; br -> 0x00405e5c
  00405e2c: sw     $a1, +12($sp)      
  00405e30: addiu  $a1, $a1, +12      
  00405e34: addiu  $v1, $a2, +1       
  00405e38: subu   $v1, $t0, +0       
  00405e3c: sw     $a1, +12($sp)      
  00405e40: sw     $a1, +4($sp)       
  00405e44: sll    $zero, $zero, +0   
  00405e48: bgtz   $t0, $zero, -88       ; br -> 0x00445df4
  00405e4c: sll    $zero, $zero, +0   
  00405e50: lw     $v1, +4($sp)       
  00405e54: beq    $zero, $zero, +16     ; br -> 0x00405e68
  00405e58: sw     $v1, +0($a0)       
  00405e5c: beq    $zero, $zero, -24     ; br -> 0x00445e48
  00405e60: dsubu  $zero, $a2, +0     
  00405e64: sll    $zero, $zero, +0   
  00405e68: jr     $ra                
  00405e6c: addiu  $sp, $sp, +16      
  00405e70: beq    $a1, $a2, +280        ; br -> 0x00405f8c
  00405e74: dsubu  $zero, $a1, +0     
  00405e78: lw     $v1, +4($a0)       
  00405e7c: lw     $v0, +8($a0)       
  00405e80: sll    $v1, $zero, +2     
  00405e84: addu   $v1, $v0, +0       
  00405e88: subu   $a2, $v0, +0       
  00405e8c: regimm $a3, $at, +12         ; br -> 0x00405e9c
  00405e90: sra    $a3, $zero, +2     
  00405e94: addiu  $v1, $a3, +3       
  00405e98: sra    $v1, $zero, +2     
  00405e9c: beq    $v1, $zero, +56       ; br -> 0x00405ed8
  00405ea0: daddu  $v0, $a2, +0       
  00405ea4: dsubu  $zero, $a1, +0     
  00405ea8: beq    $at, $zero, +44       ; br -> 0x00405ed8
  00405eac: dsubu  $zero, $a2, +0     
  00405eb0: beq    $zero, $zero, +76     ; br -> 0x00405f00
  00405eb4: addiu  $a3, $a3, +3       
  00405eb8: lw     $v1, +0($t3)       
  00405ebc: sw     $v1, +0($t2)       
  00405ec0: addiu  $t3, $t3, +4       
  00405ec4: addiu  $t2, $t2, +4       
  00405ec8: daddu  $v0, $t3, +0       
  00405ecc: bne    $v1, $zero, -24       ; br -> 0x00445eb8
  00405ed0: sll    $zero, $zero, +0   
  00405ed4: sll    $zero, $zero, +0   
  00405ed8: subu   $a1, $a2, +0       
  00405edc: regimm $v0, $at, +12         ; br -> 0x00405eec
  00405ee0: sra    $v0, $zero, +2     
  00405ee4: addiu  $v0, $v0, +3       
  00405ee8: sra    $v0, $zero, +2     
  00405eec: lw     $v1, +4($a0)       
  00405ef0: dsubu  $zero, $a1, +0     
  00405ef4: subu   $a2, $v1, +0       
  00405ef8: beq    $zero, $zero, +144    ; br -> 0x00405f8c
  00405efc: sw     $v1, +4($a0)       
  00405f00: addiu  $t1, $v0, -32      
  00405f04: regimm $a3, $at, +12         ; br -> 0x00405f14
  00405f08: sra    $a3, $zero, +2     
  00405f0c: addiu  $v1, $a3, +3       
  00405f10: sra    $v1, $zero, +2     
  00405f14: slti   $at, $v1, +9       
  00405f18: bne    $at, $zero, -84       ; br -> 0x00445ec8
  00405f1c: daddu  $a2, $v0, +0       
  00405f20: bne    $at, $zero, -92       ; br -> 0x00445ec8
  00405f24: sll    $zero, $zero, +0   
  00405f28: lw     $t0, +0($t3)       
  00405f2c: addiu  $v1, $t2, +8       
  00405f30: addiu  $v1, $v1, +8       
  00405f34: addiu  $a3, $v1, +8       
  00405f38: sw     $t0, +0($t2)       
  00405f3c: lw     $v1, +4($t3)       
  00405f40: sw     $v1, +4($t2)       
  00405f44: lw     $v1, +8($t3)       
  00405f48: sw     $v1, +8($t2)       
  00405f4c: lw     $v1, +12($t3)      
  00405f50: sw     $v1, +12($t2)      
  00405f54: lw     $v1, +16($t3)      
  00405f58: sw     $v1, +16($t2)      
  00405f5c: lw     $v1, +20($t3)      
  00405f60: sw     $v1, +20($t2)      
  00405f64: lw     $v1, +24($t3)      
  00405f68: sw     $v1, +24($t2)      
  00405f6c: lw     $v1, +28($t3)      
  00405f70: sw     $v1, +28($t2)      
  00405f74: addiu  $t3, $t3, +32      
  00405f78: daddu  $t1, $t3, +0       
  00405f7c: bne    $v1, $zero, -88       ; br -> 0x00445f28
  00405f80: addiu  $t2, $a3, +8       
  00405f84: beq    $zero, $zero, -192    ; br -> 0x00445ec8
  00405f88: sll    $zero, $zero, +0   
  00405f8c: jr     $ra                
  00405f90: sll    $zero, $zero, +0   
  00405f94: sll    $zero, $zero, +0   
  00405f98: sll    $zero, $zero, +0   
  00405f9c: sll    $zero, $zero, +0   
