; 0x0031c990  FUN_0031c990  size=832  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=void calls=
; 208 words

  0031c990: addiu  $sp, $sp, -96      
  0031c994: addiu  $v1, $zero, +2     
  0031c998: sw     $s5, +80($sp)      
  0031c99c: subu   $a2, $v1, +0       
  0031c9a0: sw     $s4, +64($sp)      
  0031c9a4: sll    $a2, $zero, +1     
  0031c9a8: sw     $s3, +48($sp)      
  0031c9ac: addu   $a2, $v1, +0       
  0031c9b0: sw     $s2, +32($sp)      
  0031c9b4: sll    $v1, $zero, +3     
  0031c9b8: sw     $s1, +16($sp)      
  0031c9bc: dadd   $a1, $zero, +0     
  0031c9c0: sw     $s0, +0($sp)       
  0031c9c4: dsubu  $zero, $zero, +0   
  0031c9c8: sw     $v1, +16($a0)      
  0031c9cc: beq    $at, $zero, +352      ; br -> 0x0031cb30
  0031c9d0: sw     $zero, +0($a0)     
  0031c9d4: slti   $at, $a1, +9       
  0031c9d8: bne    $at, $zero, +324      ; br -> 0x0031cb20
  0031c9dc: addiu  $t8, $a1, -8       
  0031c9e0: dadd   $zero, $a1, +0     
  0031c9e4: bne    $at, $zero, +28       ; br -> 0x0031ca04
  0031c9e8: dsubu  $zero, $zero, +0   
  0031c9ec: lui   $at, 0x7fff0000     
  0031c9f0: ori    $at, $at, -1       
  0031c9f4: dadd   $at, $a1, +0       
  0031c9f8: beq    $at, $zero, +8        ; br -> 0x0031ca04
  0031c9fc: sll    $zero, $zero, +0   
  0031ca00: op19    $zero,$v1,$zero   
  0031ca04: beq    $v1, $zero, +280      ; br -> 0x0031cb20
  0031ca08: addiu  $t7, $zero, +1     
  0031ca0c: addiu  $v1, $t9, +1       
  0031ca10: lw     $a2, +0($a0)       
  0031ca14: spec14  $v1,$t7,$t6       
  0031ca18: spec14  $t9,$t7,$t0       
  0031ca1c: addiu  $v1, $t9, +2       
  0031ca20: nor    $zero, $t0, +0     
  0031ca24: spec14  $v1,$t7,$t3       
  0031ca28: addiu  $s0, $t9, +6       
  0031ca2c: addiu  $v1, $t9, +3       
  0031ca30: spec14  $s0,$t7,$s4       
  0031ca34: spec14  $v1,$t7,$t1       
  0031ca38: addiu  $s0, $t9, +7       
  0031ca3c: addiu  $v1, $t9, +4       
  0031ca40: and    $a3, $a2, +0       
  0031ca44: spec14  $v1,$t7,$a3       
  0031ca48: spec14  $s0,$t7,$s2       
  0031ca4c: or     $t0, $a2, +0       
  0031ca50: nor    $zero, $t6, +0     
  0031ca54: sw     $v1, +0($a0)       
  0031ca58: nor    $zero, $t3, +0     
  0031ca5c: lw     $t4, +0($a0)       
  0031ca60: addiu  $v1, $t9, +5       
  0031ca64: spec14  $v1,$t7,$v1       
  0031ca68: addiu  $t9, $t9, +8       
  0031ca6c: nor    $zero, $t1, +0     
  0031ca70: nor    $zero, $a3, +0     
  0031ca74: nor    $zero, $v1, +0     
  0031ca78: nor    $zero, $s4, +0     
  0031ca7c: nor    $zero, $s2, +0     
  0031ca80: dadd   $t8, $t9, +0       
  0031ca84: and    $t5, $t4, +0       
  0031ca88: or     $t6, $t4, +0       
  0031ca8c: sw     $t4, +0($a0)       
  0031ca90: lw     $t4, +0($a0)       
  0031ca94: and    $t2, $t4, +0       
  0031ca98: or     $t3, $t2, +0       
  0031ca9c: sw     $t2, +0($a0)       
  0031caa0: lw     $t2, +0($a0)       
  0031caa4: and    $t0, $t2, +0       
  0031caa8: or     $t1, $t0, +0       
  0031caac: sw     $t0, +0($a0)       
  0031cab0: lw     $t0, +0($a0)       
  0031cab4: and    $a2, $t0, +0       
  0031cab8: or     $a3, $a2, +0       
  0031cabc: sw     $a2, +0($a0)       
  0031cac0: lw     $a2, +0($a0)       
  0031cac4: and    $s5, $a2, +0       
  0031cac8: or     $v1, $a2, +0       
  0031cacc: sw     $v1, +0($a0)       
  0031cad0: lw     $v1, +0($a0)       
  0031cad4: and    $s3, $v1, +0       
  0031cad8: or     $s4, $v1, +0       
  0031cadc: sw     $v1, +0($a0)       
  0031cae0: lw     $v1, +0($a0)       
  0031cae4: and    $s1, $v1, +0       
  0031cae8: or     $s2, $v1, +0       
  0031caec: bne    $s0, $zero, -228      ; br -> 0x0035ca0c
  0031caf0: sw     $v1, +0($a0)       
  0031caf4: beq    $zero, $zero, +40     ; br -> 0x0031cb20
  0031caf8: sll    $zero, $zero, +0   
  0031cafc: lw     $v1, +0($a0)       
  0031cb00: addiu  $a2, $zero, +1     
  0031cb04: spec14  $t9,$a2,$a3       
  0031cb08: nor    $zero, $a3, +0     
  0031cb0c: addiu  $t9, $t9, +1       
  0031cb10: and    $a2, $v1, +0       
  0031cb14: or     $a3, $v1, +0       
  0031cb18: sw     $v1, +0($a0)       
  0031cb1c: sll    $zero, $zero, +0   
  0031cb20: dadd   $a1, $t9, +0       
  0031cb24: bne    $v1, $zero, -44       ; br -> 0x0035cafc
  0031cb28: sll    $zero, $zero, +0   
  0031cb2c: sll    $zero, $zero, +0   
  0031cb30: sw     $zero, +20($a0)    
  0031cb34: lw     $s5, +80($sp)      
  0031cb38: lw     $s4, +64($sp)      
  0031cb3c: lw     $s3, +48($sp)      
  0031cb40: lw     $s2, +32($sp)      
  0031cb44: lw     $s1, +16($sp)      
  0031cb48: lw     $s0, +0($sp)       
  0031cb4c: jr     $ra                
  0031cb50: addiu  $sp, $sp, +96      
  0031cb54: sll    $zero, $zero, +0   
  0031cb58: sll    $zero, $zero, +0   
  0031cb5c: sll    $zero, $zero, +0   
  0031cb60: lw     $t3, +20($a0)      
  0031cb64: addiu  $t1, $t3, +48      
  0031cb68: dadd   $t1, $t3, +0       
  0031cb6c: beq    $at, $zero, +80       ; br -> 0x0031cbc0
  0031cb70: sll    $zero, $zero, +0   
  0031cb74: lw     $t0, +0($a0)       
  0031cb78: addiu  $a3, $zero, +48    
  0031cb7c: addiu  $a2, $zero, +1     
  0031cb80: div    $a3, $t3, +0       
  0031cb84: mfhi   $zero, $zero, +0   
  0031cb88: spec14  $t2,$a2,$v1       
  0031cb8c: and    $v1, $t0, +0       
  0031cb90: bne    $v0, $zero, +28       ; br -> 0x0031cbb0
  0031cb94: sll    $zero, $zero, +0   
  0031cb98: beq    $a1, $zero, +48       ; br -> 0x0031cbcc
  0031cb9c: addiu  $v0, $zero, +1     
  0031cba0: lw     $v0, +16($a0)      
  0031cba4: dadd   $v0, $t2, +0       
  0031cba8: beq    $at, $zero, +28       ; br -> 0x0031cbc8
  0031cbac: sll    $zero, $zero, +0   
  0031cbb0: addiu  $t3, $t3, +1       
  0031cbb4: dadd   $t1, $t3, +0       
  0031cbb8: bne    $v0, $zero, -60       ; br -> 0x0035cb80
  0031cbbc: sll    $zero, $zero, +0   
  0031cbc0: beq    $zero, $zero, +88     ; br -> 0x0031cc1c
  0031cbc4: addiu  $v0, $zero, -1     
  0031cbc8: addiu  $v0, $zero, +1     
  0031cbcc: nor    $zero, $v1, +0     
  0031cbd0: spec14  $t2,$v0,$a3       
  0031cbd4: lw     $t0, +0($a0)       
  0031cbd8: lui   $v0, 0x2aaa0000     
  0031cbdc: addiu  $a1, $zero, +24    
  0031cbe0: ori    $v0, $v0, -21845   
  0031cbe4: srl    $t2, $zero, +31    
  0031cbe8: mult   $t2, $v0, +0       
  0031cbec: addiu  $a2, $t2, +1       
  0031cbf0: and    $t1, $t0, +0       
  0031cbf4: or     $a3, $v0, +0       
  0031cbf8: sw     $v0, +0($a0)       
  0031cbfc: mfhi   $zero, $zero, +0   
  0031cc00: sw     $a2, +20($a0)      
  0031cc04: div    $a1, $t2, +0       
  0031cc08: sra    $v0, $zero, +2     
  0031cc0c: addu   $v1, $v0, +0       
  0031cc10: mfhi   $zero, $zero, +0   
  0031cc14: sll    $v0, $zero, +1     
  0031cc18: or     $v0, $v1, +0       
  0031cc1c: jr     $ra                
  0031cc20: sll    $zero, $zero, +0   
  0031cc24: sll    $zero, $zero, +0   
  0031cc28: sll    $zero, $zero, +0   
  0031cc2c: sll    $zero, $zero, +0   
  0031cc30: andi   $a3, $a1, +1       
  0031cc34: sra    $a1, $zero, +1     
  0031cc38: sll    $a3, $zero, +1     
  0031cc3c: lw     $v1, +8($a0)       
  0031cc40: addu   $a3, $a2, +0       
  0031cc44: addiu  $a1, $zero, +1     
  0031cc48: sll    $a2, $zero, +3     
  0031cc4c: addu   $a2, $t0, +0       
  0031cc50: spec14  $a2,$a1,$a2       
  0031cc54: nor    $zero, $a2, +0     
  0031cc58: and    $a1, $v1, +0       
  0031cc5c: or     $a2, $v1, +0       
  0031cc60: jr     $ra                
  0031cc64: sw     $v1, +8($a0)       
  0031cc68: sll    $zero, $zero, +0   
  0031cc6c: sll    $zero, $zero, +0   
  0031cc70: jr     $ra                
  0031cc74: sw     $zero, +8($a0)     
  0031cc78: sll    $zero, $zero, +0   
  0031cc7c: sll    $zero, $zero, +0   
  0031cc80: lw     $a1, +8($a0)       
  0031cc84: lw     $v1, +0($a0)       
  0031cc88: nor    $zero, $a1, +0     
  0031cc8c: and    $a1, $v1, +0       
  0031cc90: jr     $ra                
  0031cc94: sw     $v1, +0($a0)       
  0031cc98: sll    $zero, $zero, +0   
  0031cc9c: sll    $zero, $zero, +0   
  0031cca0: lui   $v0, 0x00700000     
  0031cca4: jr     $ra                
  0031cca8: lw     $v0, -26304($v0)      ; GLOBAL 0x00709940
  0031ccac: sll    $zero, $zero, +0   
  0031ccb0: lw     $v1, +96($a0)      
  0031ccb4: lui   $v0, 0x006a0000     
  0031ccb8: addiu  $v0, $v0, +5472    
  0031ccbc: sll    $v1, $zero, +2     
  0031ccc0: addu   $v1, $v0, +0       
  0031ccc4: jr     $ra                
  0031ccc8: lw     $v0, +0($v0)          ; GLOBAL 0x006a0000
  0031cccc: sll    $zero, $zero, +0   

; globals: 0x00709940(x1), 0x006a0000(x1)
