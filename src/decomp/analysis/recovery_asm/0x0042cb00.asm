; 0x0042cb00  FUN_0042cb00  size=536  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0042c660
; 134 words

  0042cb00: addiu  $sp, $sp, -128     
  0042cb04: sq     $s1, +16($sp)      
  0042cb08: sq     $s0, +0($sp)       
  0042cb0c: daddu $s1, $a2, $zero     
  0042cb10: sq     $ra, +112($sp)     
  0042cb14: daddu $s0, $a1, $zero     
  0042cb18: sq     $s6, +96($sp)      
  0042cb1c: sq     $s5, +80($sp)      
  0042cb20: sq     $s4, +64($sp)      
  0042cb24: sq     $s3, +48($sp)      
  0042cb28: sq     $s2, +32($sp)      
  0042cb2c: lw     $v0, +16($s0)      
  0042cb30: lw     $v1, +16($s1)      
  0042cb34: slt $v0, $v0, $v1         
  0042cb38: beq    $v0, $zero, +12       ; br -> 0x0042cb48
  0042cb3c: daddu $t8, $s0, $zero     
  0042cb40: daddu $s0, $s1, $zero     
  0042cb44: daddu $s1, $t8, $zero     
  0042cb48: lw     $s5, +16($s0)      
  0042cb4c: lw     $s3, +16($s1)      
  0042cb50: lw     $a1, +8($s0)       
  0042cb54: lw     $v0, +4($s0)       
  0042cb58: addu $s2, $s5, $s3        
  0042cb5c: slt $a1, $a1, $s2         
  0042cb60: jal   0xf042c660             ; -> FUN_0042c660
  0042cb64: addu $a1, $v0, $a1        
  0042cb68: daddu $t8, $v0, $zero     
  0042cb6c: sll $v1, $s2, 2           
  0042cb70: addiu  $t2, $t8, +20      
  0042cb74: addiu  $t9, $s0, +20      
  0042cb78: addu $v1, $t2, $v1        
  0042cb7c: sltu $v0, $t2, $v1        
  0042cb80: beq    $v0, $zero, +40       ; br -> 0x0042cbac
  0042cb84: addiu  $a2, $s1, +20      
  0042cb88: sw     $zero, +0($t2)     
  0042cb8c: sll $zero, $zero, 0       
  0042cb90: addiu  $t2, $t2, +4       
  0042cb94: sltu $v0, $t2, $v1        
  0042cb98: sll $zero, $zero, 0       
  0042cb9c: sll $zero, $zero, 0       
  0042cba0: sll $zero, $zero, 0       
  0042cba4: bnel   $v0, $zero, -24       ; br -> 0x0042cb90
  0042cba8: sw     $zero, +0($t2)     
  0042cbac: daddu $t6, $a2, $zero     
  0042cbb0: sll $v0, $s3, 2           
  0042cbb4: sll $v1, $s5, 2           
  0042cbb8: addu $s4, $t6, $v0        
  0042cbbc: addiu  $t7, $t8, +20      
  0042cbc0: addu $s0, $t9, $v1        
  0042cbc4: daddu $s6, $t7, $zero     
  0042cbc8: sltu $v0, $t6, $s4        
  0042cbcc: beq    $v0, $zero, +244      ; br -> 0x0042ccc4
  0042cbd0: sll $s5, $s2, 2           
  0042cbd4: sll $zero, $zero, 0       
  0042cbd8: lhu    $t4, +0($t6)       
  0042cbdc: addiu  $s3, $t6, +4       
  0042cbe0: beq    $t4, $zero, +104      ; br -> 0x0042cc4c
  0042cbe4: addiu  $s1, $t7, +4       
  0042cbe8: daddu $t2, $t9, $zero     
  0042cbec: daddu $t0, $t7, $zero     
  0042cbf0: daddu $t5, $zero, $zero   
  0042cbf4: sll $zero, $zero, 0       
  0042cbf8: lw     $v1, +0($t2)       
  0042cbfc: lw     $a0, +0($t0)       
  0042cc00: addiu  $t2, $t2, +4       
  0042cc04: andi   $v0, $v1, -1       
  0042cc08: sltu $a2, $t2, $s0        
  0042cc0c: mult   $t4, $v0, +0       
  0042cc10: srl $v1, $v1, 16          
  0042cc14: mult   $t4, $v1, +0       
  0042cc18: andi   $a1, $a0, -1       
  0042cc1c: srl $a0, $a0, 16          
  0042cc20: addu $v0, $v0, $a1        
  0042cc24: addu $v0, $v0, $t5        
  0042cc28: addu $v1, $v1, $a0        
  0042cc2c: srl $t5, $v0, 16          
  0042cc30: sh     $v0, +0($t0)       
  0042cc34: addu $a1, $v1, $t5        
  0042cc38: sh     $a1, +2($t0)       
  0042cc3c: srl $t5, $a1, 16          
  0042cc40: bne    $a2, $zero, -76       ; br -> 0x0042cbf8
  0042cc44: addiu  $t0, $t0, +4       
  0042cc48: sw     $t5, +0($t0)       
  0042cc4c: lhu    $t4, +2($t6)       
  0042cc50: beq    $t4, $zero, +96       ; br -> 0x0042ccb4
  0042cc54: daddu $t0, $t7, $zero     
  0042cc58: daddu $t2, $t9, $zero     
  0042cc5c: lw     $a1, +0($t0)       
  0042cc60: daddu $t5, $zero, $zero   
  0042cc64: sll $zero, $zero, 0       
  0042cc68: lhu    $v0, +0($t2)       
  0042cc6c: lhu    $v1, +2($t0)       
  0042cc70: mult   $t4, $v0, +0       
  0042cc74: sh     $a1, +0($t0)       
  0042cc78: addu $v0, $v0, $v1        
  0042cc7c: addu $v0, $v0, $t5        
  0042cc80: sh     $v0, +2($t0)       
  0042cc84: srl $t5, $v0, 16          
  0042cc88: addiu  $t0, $t0, +4       
  0042cc8c: lhu    $v0, +2($t2)       
  0042cc90: lhu    $v1, +0($t0)       
  0042cc94: addiu  $t2, $t2, +4       
  0042cc98: mult   $t4, $v0, +0       
  0042cc9c: sltu $a0, $t2, $s0        
  0042cca0: addu $v0, $v0, $v1        
  0042cca4: addu $a1, $v0, $t5        
  0042cca8: bne    $a0, $zero, -68       ; br -> 0x0042cc68
  0042ccac: srl $t5, $a1, 16          
  0042ccb0: sw     $a1, +0($t0)       
  0042ccb4: daddu $t6, $s3, $zero     
  0042ccb8: sltu $v0, $t6, $s4        
  0042ccbc: bne    $v0, $zero, -232      ; br -> 0x0042cbd8
  0042ccc0: daddu $t7, $s1, $zero     
  0042ccc4: addu $t0, $s6, $s5        
  0042ccc8: blezl  $s2, $zero, +28       ; br -> 0x0042cce8
  0042cccc: sw     $s2, +16($t8)      
  0042ccd0: addiu  $t0, $t0, -4       
  0042ccd4: lw     $v0, +0($t0)       
  0042ccd8: sll $zero, $zero, 0       
  0042ccdc: beql   $v0, $zero, -24       ; br -> 0x0042ccc8
  0042cce0: addiu  $s2, $s2, -1       
  0042cce4: sw     $s2, +16($t8)      
  0042cce8: daddu $v0, $t8, $zero     
  0042ccec: lq     $ra, +112($sp)     
  0042ccf0: lq     $s6, +96($sp)      
  0042ccf4: lq     $s5, +80($sp)      
  0042ccf8: lq     $s4, +64($sp)      
  0042ccfc: lq     $s3, +48($sp)      
  0042cd00: lq     $s2, +32($sp)      
  0042cd04: lq     $s1, +16($sp)      
  0042cd08: lq     $s0, +0($sp)       
  0042cd0c: jr     $ra                
  0042cd10: addiu  $sp, $sp, +128     
  0042cd14: sll $zero, $zero, 0       
