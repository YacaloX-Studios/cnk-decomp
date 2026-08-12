; 0x0042c848  FUN_0042c848  size=640  status=real_logic
; evidence: args=a0=int;a1=ptr;a2=int;a3=int ret=ret calls=0x0042c660;0x0042c740
; 160 words

  0042c848: addiu  $sp, $sp, -112     
  0042c84c: addiu  $v0, $zero, +9     
  0042c850: sw     $s4, +64($sp)      
  0042c854: dsubu $s4, $a3, $zero     
  0042c858: sw     $s5, +80($sp)      
  0042c85c: addiu  $v1, $s4, +8       
  0042c860: sw     $s3, +48($sp)      
  0042c864: div    $v0, $v1, +0       
  0042c868: sw     $s2, +32($sp)      
  0042c86c: sw     $s0, +0($sp)       
  0042c870: addiu  $a3, $zero, +1     
  0042c874: sw     $ra, +96($sp)      
  0042c878: dsubu $s0, $a1, $zero     
  0042c87c: sw     $s1, +16($sp)      
  0042c880: dsubu $s3, $a0, $zero     
  0042c884: beql   $v0, $zero, +4        ; br -> 0x0042c88c
  0042c888: break                     
  0042c88c: dsubu $s2, $a2, $zero     
  0042c890: dsubu $s5, $t0, $zero     
  0042c894: mflo   $zero, $zero, +0   
  0042c898: dadd $v0, $a3, $v1        
  0042c89c: beq    $v0, $zero, +36       ; br -> 0x0042c8c4
  0042c8a0: dsubu $a1, $zero, $zero   
  0042c8a4: sll $zero, $zero, 0       
  0042c8a8: sll $a3, $a3, 1           
  0042c8ac: dadd $v0, $a3, $v1        
  0042c8b0: sll $zero, $zero, 0       
  0042c8b4: sll $zero, $zero, 0       
  0042c8b8: sll $zero, $zero, 0       
  0042c8bc: bne    $v0, $zero, -24       ; br -> 0x0042c8a8
  0042c8c0: addiu  $a1, $a1, +1       
  0042c8c4: dsubu $a0, $s3, $zero     
  0042c8c8: jal   0xf042c660             ; -> FUN_0042c660
  0042c8cc: addiu  $s1, $zero, +9     
  0042c8d0: dsubu $a1, $v0, $zero     
  0042c8d4: addiu  $v1, $zero, +1     
  0042c8d8: sw     $s5, +20($a1)      
  0042c8dc: slti   $v0, $s2, +10      
  0042c8e0: bne    $v0, $zero, +60       ; br -> 0x0042c920
  0042c8e4: sw     $v1, +16($a1)      
  0042c8e8: addiu  $s0, $s0, +9       
  0042c8ec: lw     $a3, +0($s0)       
  0042c8f0: dsubu $a0, $s3, $zero     
  0042c8f4: addiu  $a2, $zero, +10    
  0042c8f8: addiu  $s1, $s1, +1       
  0042c8fc: addiu  $a3, $a3, -48      
  0042c900: jal   0xf042c740             ; -> FUN_0042c740
  0042c904: addiu  $s0, $s0, +1       
  0042c908: dsubu $a1, $v0, $zero     
  0042c90c: dadd $v0, $s1, $s2        
  0042c910: bnel   $v0, $zero, -36       ; br -> 0x0042c8f0
  0042c914: lw     $a3, +0($s0)       
  0042c918: beq    $zero, $zero, +8      ; br -> 0x0042c924
  0042c91c: addiu  $s0, $s0, +1       
  0042c920: addiu  $s0, $s0, +10      
  0042c924: dadd $v0, $s1, $s4        
  0042c928: beq    $v0, $zero, +40       ; br -> 0x0042c954
  0042c92c: subu $s1, $s4, $s1        
  0042c930: lw     $a3, +0($s0)       
  0042c934: dsubu $a0, $s3, $zero     
  0042c938: addiu  $a2, $zero, +10    
  0042c93c: addiu  $s0, $s0, +1       
  0042c940: addiu  $a3, $a3, -48      
  0042c944: jal   0xf042c740             ; -> FUN_0042c740
  0042c948: addiu  $s1, $s1, -1       
  0042c94c: bne    $s1, $zero, -32       ; br -> 0x0042c930
  0042c950: dsubu $a1, $v0, $zero     
  0042c954: lw     $ra, +96($sp)      
  0042c958: dsubu $v0, $a1, $zero     
  0042c95c: lw     $s5, +80($sp)      
  0042c960: lw     $s4, +64($sp)      
  0042c964: lw     $s3, +48($sp)      
  0042c968: lw     $s2, +32($sp)      
  0042c96c: lw     $s1, +16($sp)      
  0042c970: lw     $s0, +0($sp)       
  0042c974: jr     $ra                
  0042c978: addiu  $sp, $sp, +112     
  0042c97c: sll $zero, $zero, 0       
  0042c980: lui   $v0, 0xffff0000     
  0042c984: and $v0, $a0, $v0         
  0042c988: bne    $v0, $zero, +12       ; br -> 0x0042c998
  0042c98c: dsubu $a1, $zero, $zero   
  0042c990: addiu  $a1, $zero, +16    
  0042c994: sll $a0, $a0, 16          
  0042c998: lui   $v0, 0xff000000     
  0042c99c: and $v0, $a0, $v0         
  0042c9a0: bne    $v0, $zero, +12       ; br -> 0x0042c9b0
  0042c9a4: sll $zero, $zero, 0       
  0042c9a8: addiu  $a1, $a1, +8       
  0042c9ac: sll $a0, $a0, 8           
  0042c9b0: lui   $v0, 0xf0000000     
  0042c9b4: and $v0, $a0, $v0         
  0042c9b8: bne    $v0, $zero, +12       ; br -> 0x0042c9c8
  0042c9bc: sll $zero, $zero, 0       
  0042c9c0: addiu  $a1, $a1, +4       
  0042c9c4: sll $a0, $a0, 4           
  0042c9c8: lui   $v0, 0xc0000000     
  0042c9cc: and $v0, $a0, $v0         
  0042c9d0: bne    $v0, $zero, +12       ; br -> 0x0042c9e0
  0042c9d4: sll $zero, $zero, 0       
  0042c9d8: addiu  $a1, $a1, +2       
  0042c9dc: sll $a0, $a0, 2           
  0042c9e0: regimm $a0, $zero, +20       ; br -> 0x0042c9f8
  0042c9e4: lui   $v1, 0x40000000     
  0042c9e8: addiu  $a1, $a1, +1       
  0042c9ec: and $v1, $a0, $v1         
  0042c9f0: beq    $v1, $zero, +8        ; br -> 0x0042c9fc
  0042c9f4: addiu  $v0, $zero, +32    
  0042c9f8: dsubu $v0, $a1, $zero     
  0042c9fc: jr     $ra                
  0042ca00: sll $zero, $zero, 0       
  0042ca04: sll $zero, $zero, 0       
  0042ca08: lw     $v1, +0($a0)       
  0042ca0c: andi   $v0, $v1, +7       
  0042ca10: beq    $v0, $zero, +56       ; br -> 0x0042ca4c
  0042ca14: andi   $v0, $v1, +1       
  0042ca18: beq    $v0, $zero, +12       ; br -> 0x0042ca28
  0042ca1c: andi   $v0, $v1, +2       
  0042ca20: jr     $ra                
  0042ca24: dsubu $v0, $zero, $zero   
  0042ca28: beql   $v0, $zero, +20       ; br -> 0x0042ca40
  0042ca2c: srl $v1, $v1, 2           
  0042ca30: srl $v1, $v1, 1           
  0042ca34: addiu  $v0, $zero, +1     
  0042ca38: jr     $ra                
  0042ca3c: sw     $v1, +0($a0)       
  0042ca40: addiu  $v0, $zero, +2     
  0042ca44: jr     $ra                
  0042ca48: sw     $v1, +0($a0)       
  0042ca4c: andi   $v0, $v1, -1       
  0042ca50: bne    $v0, $zero, +12       ; br -> 0x0042ca60
  0042ca54: dsubu $a1, $zero, $zero   
  0042ca58: addiu  $a1, $zero, +16    
  0042ca5c: srl $v1, $v1, 16          
  0042ca60: andi   $v0, $v1, +255     
  0042ca64: bne    $v0, $zero, +16       ; br -> 0x0042ca78
  0042ca68: andi   $v0, $v1, +15      
  0042ca6c: addiu  $a1, $a1, +8       
  0042ca70: srl $v1, $v1, 8           
  0042ca74: andi   $v0, $v1, +15      
  0042ca78: bne    $v0, $zero, +16       ; br -> 0x0042ca8c
  0042ca7c: andi   $v0, $v1, +3       
  0042ca80: addiu  $a1, $a1, +4       
  0042ca84: srl $v1, $v1, 4           
  0042ca88: andi   $v0, $v1, +3       
  0042ca8c: bne    $v0, $zero, +16       ; br -> 0x0042caa0
  0042ca90: andi   $v0, $v1, +1       
  0042ca94: addiu  $a1, $a1, +2       
  0042ca98: srl $v1, $v1, 2           
  0042ca9c: andi   $v0, $v1, +1       
  0042caa0: bnel   $v0, $zero, +28       ; br -> 0x0042cac0
  0042caa4: sw     $v1, +0($a0)       
  0042caa8: srl $v1, $v1, 1           
  0042caac: bne    $v1, $zero, +12       ; br -> 0x0042cabc
  0042cab0: addiu  $a1, $a1, +1       
  0042cab4: jr     $ra                
  0042cab8: addiu  $v0, $zero, +32    
  0042cabc: sw     $v1, +0($a0)       
  0042cac0: jr     $ra                
  0042cac4: dsubu $v0, $a1, $zero     
