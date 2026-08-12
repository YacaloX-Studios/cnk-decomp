; 0x00534b60  FUN_00534b60  size=528  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=ptr ret=void calls=
; 132 words

  00534b60: addiu  $sp, $sp, -16      
  00534b64: daddu $t4, $zero, $zero   
  00534b68: sq     $s0, +0($sp)       
  00534b6c: daddu $t3, $zero, $zero   
  00534b70: daddu $t7, $zero, $zero   
  00534b74: beq    $zero, $zero, +56     ; br -> 0x00534bb0
  00534b78: andi   $v1, $a2, -1       
  00534b7c: sll $t2, $t7, 1           
  00534b80: sll $t5, $t7, 2           
  00534b84: addu $t2, $t1, $t2        
  00534b88: addu $t5, $a3, $t5        
  00534b8c: lhu    $t6, +0($t2)       
  00534b90: lw     $t5, +0($t5)       
  00534b94: lhu    $t2, +8($a1)       
  00534b98: addu $t4, $t4, $t5        
  00534b9c: slt $at, $t2, $t6         
  00534ba0: movz   $t6, $t2, $at      
  00534ba4: andi   $t2, $t6, -1       
  00534ba8: addiu  $t7, $t7, +1       
  00534bac: addu $t3, $t3, $t2        
  00534bb0: sltu $t2, $t7, $v1        
  00534bb4: bne    $t2, $zero, -56       ; br -> 0x00534b80
  00534bb8: sll $t2, $t7, 1           
  00534bbc: andi   $a2, $a2, -1       
  00534bc0: sll $t2, $v1, 2           
  00534bc4: subu $t3, $t3, $a2        
  00534bc8: addu $t5, $t3, $t2        
  00534bcc: lw     $a2, +28($a1)      
  00534bd0: lw     $t2, +32($a1)      
  00534bd4: addu $t4, $t4, $t5        
  00534bd8: addiu  $t5, $t2, +4       
  00534bdc: subu $t5, $t5, $a2        
  00534be0: sltu $at, $t5, $t4        
  00534be4: bne    $at, $zero, +144      ; br -> 0x00534c78
  00534be8: sll $zero, $zero, 0       
  00534bec: beq    $zero, $zero, +104    ; br -> 0x00534c58
  00534bf0: daddu $t5, $zero, $zero   
  00534bf4: sll $t3, $t5, 1           
  00534bf8: lhu    $a2, +8($a1)       
  00534bfc: addu $t3, $t1, $t3        
  00534c00: lhu    $t3, +0($t3)       
  00534c04: slt $at, $a2, $t3         
  00534c08: movz   $t3, $a2, $at      
  00534c0c: lw     $t6, +28($a1)      
  00534c10: andi   $s0, $t3, -1       
  00534c14: sll $a2, $t5, 2           
  00534c18: addiu  $t7, $s0, -1       
  00534c1c: addu $t3, $a3, $a2        
  00534c20: addiu  $t5, $t5, +1       
  00534c24: lw     $t3, +0($t3)       
  00534c28: addu $a2, $t0, $a2        
  00534c2c: and $t4, $t6, $t7         
  00534c30: subu $t4, $s0, $t4        
  00534c34: and $t7, $t7, $t4         
  00534c38: addu $t4, $t7, $t3        
  00534c3c: addu $t3, $t6, $t7        
  00534c40: sw     $t3, +0($a2)       
  00534c44: lw     $a2, +28($a1)      
  00534c48: addu $a2, $a2, $t4        
  00534c4c: sw     $a2, +28($a1)      
  00534c50: sw     $t4, +0($t2)       
  00534c54: addiu  $t2, $t2, -4       
  00534c58: sltu $a2, $t5, $v1        
  00534c5c: bne    $a2, $zero, -104      ; br -> 0x00534bf8
  00534c60: sll $t3, $t5, 1           
  00534c64: sw     $t2, +32($a1)      
  00534c68: lui   $at, 0x006b0000     
  00534c6c: lw     $v1, +25744($at)      ; GLOBAL 0x006b6490
  00534c70: beq    $zero, $zero, +228    ; br -> 0x00534d58
  00534c74: sw     $v1, +0($a0)       
  00534c78: subu $t3, $t4, $t3        
  00534c7c: sltu $at, $t5, $t3        
  00534c80: bne    $at, $zero, +164      ; br -> 0x00534d28
  00534c84: sll $zero, $zero, 0       
  00534c88: beq    $zero, $zero, +112    ; br -> 0x00534cfc
  00534c8c: daddu $t6, $zero, $zero   
  00534c90: sll $t4, $t6, 1           
  00534c94: lhu    $t3, +8($a1)       
  00534c98: addu $t4, $t1, $t4        
  00534c9c: lhu    $t4, +0($t4)       
  00534ca0: slt $at, $t3, $t4         
  00534ca4: movz   $t4, $t3, $at      
  00534ca8: lw     $t8, +28($a1)      
  00534cac: andi   $s0, $t4, -1       
  00534cb0: sll $t7, $t6, 2           
  00534cb4: addiu  $t9, $s0, -1       
  00534cb8: addu $t4, $a3, $t7        
  00534cbc: subu $t3, $t2, $a2        
  00534cc0: lw     $t4, +0($t4)       
  00534cc4: and $t5, $t8, $t9         
  00534cc8: subu $t5, $s0, $t5        
  00534ccc: and $t9, $t9, $t5         
  00534cd0: addu $t5, $t9, $t4        
  00534cd4: sltu $t3, $t3, $t5        
  00534cd8: bne    $t3, $zero, +44       ; br -> 0x00534d08
  00534cdc: sll $zero, $zero, 0       
  00534ce0: addu $t4, $t8, $t9        
  00534ce4: addu $t3, $t0, $t7        
  00534ce8: sw     $t4, +0($t3)       
  00534cec: addu $a2, $a2, $t5        
  00534cf0: sw     $t5, +0($t2)       
  00534cf4: addiu  $t6, $t6, +1       
  00534cf8: addiu  $t2, $t2, -4       
  00534cfc: sltu $t3, $t6, $v1        
  00534d00: bne    $t3, $zero, -112      ; br -> 0x00534c94
  00534d04: sll $t4, $t6, 1           
  00534d08: bne    $t6, $v1, +28         ; br -> 0x00534d28
  00534d0c: sll $zero, $zero, 0       
  00534d10: sw     $a2, +28($a1)      
  00534d14: lui   $at, 0x006b0000     
  00534d18: sw     $t2, +32($a1)      
  00534d1c: lw     $v1, +25744($at)      ; GLOBAL 0x006b6490
  00534d20: beq    $zero, $zero, +52     ; br -> 0x00534d58
  00534d24: sw     $v1, +0($a0)       
  00534d28: beq    $zero, $zero, +20     ; br -> 0x00534d40
  00534d2c: daddu $a2, $zero, $zero   
  00534d30: sll $a1, $a2, 2           
  00534d34: addu $a1, $t0, $a1        
  00534d38: addiu  $a2, $a2, +1       
  00534d3c: sw     $zero, +0($a1)     
  00534d40: sltu $a1, $a2, $v1        
  00534d44: bne    $a1, $zero, -20       ; br -> 0x00534d34
  00534d48: sll $a1, $a2, 2           
  00534d4c: lui   $at, 0x006b0000     
  00534d50: lw     $v1, +25752($at)      ; GLOBAL 0x006b6498
  00534d54: sw     $v1, +0($a0)       
  00534d58: lq     $s0, +0($sp)       
  00534d5c: jr     $ra                
  00534d60: addiu  $sp, $sp, +16      
  00534d64: sll $zero, $zero, 0       
  00534d68: sll $zero, $zero, 0       
  00534d6c: sll $zero, $zero, 0       

; globals: 0x006b6490(x2), 0x006b6498(x1)
