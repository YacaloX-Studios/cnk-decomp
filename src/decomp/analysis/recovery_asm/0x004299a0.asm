; 0x004299a0  FUN_004299a0  size=360  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00429c60;0x0042a5e8
; 90 words

  004299a0: addiu  $sp, $sp, -64      
  004299a4: sw     $s1, +16($sp)      
  004299a8: sw     $ra, +48($sp)      
  004299ac: dsubu  $zero, $a0, +0     
  004299b0: sw     $s2, +32($sp)      
  004299b4: bne    $s1, $zero, +32       ; br -> 0x004299d8
  004299b8: sw     $s0, +0($sp)       
  004299bc: lui   $v0, 0x00650000     
  004299c0: lui   $a1, 0x00430000     
  004299c4: lw     $a0, +30548($v0)      ; GLOBAL 0x00657754
  004299c8: jal   0xf042a5e8             ; -> FUN_0042a5e8
  004299cc: addiu  $a1, $a1, -26208   
  004299d0: beq    $zero, $zero, +196    ; br -> 0x00429a98
  004299d4: lw     $ra, +48($sp)      
  004299d8: lw     $v0, +84($s1)      
  004299dc: bnel   $v0, $zero, +24       ; br -> 0x004299f8
  004299e0: lw     $a0, +84($s1)      
  004299e4: lui   $v0, 0x00650000     
  004299e8: lw     $v1, +30548($v0)      ; GLOBAL 0x00657754
  004299ec: sw     $v1, +84($s1)      
  004299f0: lw     $a0, +84($s1)      
  004299f4: sll    $zero, $zero, +0   
  004299f8: lw     $v0, +56($a0)      
  004299fc: bnel   $v0, $zero, +16       ; br -> 0x00429a10
  00429a00: lw     $v1, +12($s1)      
  00429a04: jal   0xf0429c60             ; -> FUN_00429c60
  00429a08: sll    $zero, $zero, +0   
  00429a0c: lw     $v1, +12($s1)      
  00429a10: andi   $v0, $v1, +8       
  00429a14: beq    $v0, $zero, +124      ; br -> 0x00429a94
  00429a18: dsubu  $zero, $zero, +0   
  00429a1c: lw     $s2, +16($s1)      
  00429a20: bnel   $s2, $zero, +32       ; br -> 0x00429a44
  00429a24: lw     $v0, +0($s1)       
  00429a28: beq    $zero, $zero, +108    ; br -> 0x00429a98
  00429a2c: lw     $ra, +48($sp)      
  00429a30: lw     $v1, +12($s1)      
  00429a34: addiu  $v0, $zero, -1     
  00429a38: ori    $v1, $v1, +64      
  00429a3c: beq    $zero, $zero, +84     ; br -> 0x00429a94
  00429a40: sw     $v1, +12($s1)      
  00429a44: andi   $v1, $v1, +3       
  00429a48: sw     $s2, +0($s1)       
  00429a4c: dsubu  $zero, $zero, +0   
  00429a50: bne    $v1, $zero, +8        ; br -> 0x00429a5c
  00429a54: subu   $s2, $v0, +0       
  00429a58: lw     $a0, +20($s1)      
  00429a5c: blez   $s0, $zero, +48       ; br -> 0x00429a90
  00429a60: sw     $a0, +8($s1)       
  00429a64: sll    $zero, $zero, +0   
  00429a68: lw     $v0, +36($s1)      
  00429a6c: dsubu  $zero, $s2, +0     
  00429a70: lw     $a0, +28($s1)      
  00429a74: jalr   $v0, $ra           
  00429a78: dsubu  $zero, $s0, +0     
  00429a7c: dsubu  $zero, $v0, +0     
  00429a80: blez   $v1, $zero, -84       ; br -> 0x00469a30
  00429a84: subu   $v1, $s0, +0       
  00429a88: bgtz   $s0, $zero, -36       ; br -> 0x00469a68
  00429a8c: addu   $v1, $s2, +0       
  00429a90: dsubu  $zero, $zero, +0   
  00429a94: lw     $ra, +48($sp)      
  00429a98: lw     $s2, +32($sp)      
  00429a9c: lw     $s1, +16($sp)      
  00429aa0: lw     $s0, +0($sp)       
  00429aa4: jr     $ra                
  00429aa8: addiu  $sp, $sp, +64      
  00429aac: sll    $zero, $zero, +0   
  00429ab0: lui   $v0, 0x00430000     
  00429ab4: lui   $v1, 0x00430000     
  00429ab8: lui   $t0, 0x00430000     
  00429abc: lui   $t1, 0x00430000     
  00429ac0: addiu  $v0, $v0, -21664   
  00429ac4: addiu  $v1, $v1, -21560   
  00429ac8: addiu  $t0, $t0, -21432   
  00429acc: addiu  $t1, $t1, -21328   
  00429ad0: sw     $a3, +84($a0)      
  00429ad4: sw     $a1, +12($a0)      
  00429ad8: sw     $a2, +14($a0)      
  00429adc: sw     $v0, +32($a0)      
  00429ae0: sw     $v1, +36($a0)      
  00429ae4: sw     $t0, +40($a0)      
  00429ae8: sw     $t1, +44($a0)      
  00429aec: sw     $zero, +0($a0)     
  00429af0: sw     $zero, +4($a0)     
  00429af4: sw     $zero, +8($a0)     
  00429af8: sw     $zero, +16($a0)    
  00429afc: sw     $zero, +24($a0)    
  00429b00: jr     $ra                
  00429b04: sw     $a0, +28($a0)      

; globals: 0x00657754(x2)
