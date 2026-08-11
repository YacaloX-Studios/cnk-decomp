; 0x0010c820  FUN_0010c820  size=1360  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=int ret=ptr calls=
; 340 words

  0010c820: addiu  $sp, $sp, -16      
  0010c824: lui   $v0, 0x00610000     
  0010c828: lwc1   $at, +4184($v0)       ; GLOBAL 0x00611058
  0010c82c: lw     $v1, +8($a0)       
  0010c830: lwc1   $zero, +4188($v0)     ; GLOBAL 0x0061105c
  0010c834: swc1   $at, +8($sp)       
  0010c838: sltiu  $v0, $v1, +624     
  0010c83c: bne    $v0, $zero, +1200     ; br -> 0x0010ccf0
  0010c840: swc1   $zero, +12($sp)    
  0010c844: dsubu  $zero, $zero, +0   
  0010c848: dsubu  $zero, $a0, +0     
  0010c84c: ori    $v0, $zero, -32768 
  0010c850: spec38  $zero,$v0,$v1     
  0010c854: lw     $t0, +16($a1)      
  0010c858: addiu  $a2, $a2, +8       
  0010c85c: op27    $a1,$t2,$zero     
  0010c860: addiu  $v0, $a1, +32      
  0010c864: lw     $t1, +1600($a1)    
  0010c868: slti   $a3, $a2, +219     
  0010c86c: spec3c  $zero,$t0,$t0     
  0010c870: and    $v1, $t2, +0       
  0010c874: spec3e  $zero,$t0,$t0     
  0010c878: or     $t0, $t2, +0       
  0010c87c: spec3c  $zero,$t0,$t0     
  0010c880: spec3f  $zero,$t0,$t0     
  0010c884: srl    $t0, $zero, +1     
  0010c888: spec3c  $zero,$t0,$t0     
  0010c88c: xor    $t2, $t1, +0       
  0010c890: spec3e  $zero,$t0,$t0     
  0010c894: andi   $t0, $t0, +1       
  0010c898: spec3c  $zero,$t0,$t0     
  0010c89c: spec3f  $zero,$t0,$t0     
  0010c8a0: sll    $t0, $zero, +2     
  0010c8a4: addu   $sp, $t0, +0       
  0010c8a8: lw     $t0, +8($t0)       
  0010c8ac: xor    $t0, $t1, +0       
  0010c8b0: sw     $t0, +12($a1)      
  0010c8b4: lw     $t2, +20($a1)      
  0010c8b8: op27    $a1,$t0,$zero     
  0010c8bc: lw     $t1, +1604($a1)    
  0010c8c0: spec3c  $zero,$t2,$t2     
  0010c8c4: spec3e  $zero,$t2,$t2     
  0010c8c8: and    $v1, $t0, +0       
  0010c8cc: or     $t2, $t0, +0       
  0010c8d0: spec3c  $zero,$t0,$t0     
  0010c8d4: spec3f  $zero,$t0,$t0     
  0010c8d8: srl    $t0, $zero, +1     
  0010c8dc: spec3c  $zero,$t0,$t0     
  0010c8e0: xor    $t2, $t1, +0       
  0010c8e4: spec3e  $zero,$t0,$t0     
  0010c8e8: andi   $t0, $t0, +1       
  0010c8ec: spec3c  $zero,$t0,$t0     
  0010c8f0: spec3f  $zero,$t0,$t0     
  0010c8f4: sll    $t0, $zero, +2     
  0010c8f8: addu   $sp, $t0, +0       
  0010c8fc: lw     $t0, +8($t0)       
  0010c900: xor    $t0, $t1, +0       
  0010c904: sw     $t0, +16($a1)      
  0010c908: lw     $t2, +24($a1)      
  0010c90c: op27    $a1,$t0,$zero     
  0010c910: lw     $t1, +1608($a1)    
  0010c914: spec3c  $zero,$t2,$t2     
  0010c918: spec3e  $zero,$t2,$t2     
  0010c91c: and    $v1, $t0, +0       
  0010c920: or     $t2, $t0, +0       
  0010c924: spec3c  $zero,$t0,$t0     
  0010c928: spec3f  $zero,$t0,$t0     
  0010c92c: srl    $t0, $zero, +1     
  0010c930: spec3c  $zero,$t0,$t0     
  0010c934: xor    $t2, $t1, +0       
  0010c938: spec3e  $zero,$t0,$t0     
  0010c93c: andi   $t0, $t0, +1       
  0010c940: spec3c  $zero,$t0,$t0     
  0010c944: spec3f  $zero,$t0,$t0     
  0010c948: sll    $t0, $zero, +2     
  0010c94c: addu   $sp, $t0, +0       
  0010c950: lw     $t0, +8($t0)       
  0010c954: xor    $t0, $t1, +0       
  0010c958: sw     $t0, +20($a1)      
  0010c95c: lw     $t2, +28($a1)      
  0010c960: op27    $a1,$t0,$zero     
  0010c964: lw     $t1, +1612($a1)    
  0010c968: spec3c  $zero,$t2,$t2     
  0010c96c: spec3e  $zero,$t2,$t2     
  0010c970: and    $v1, $t0, +0       
  0010c974: or     $t2, $t0, +0       
  0010c978: spec3c  $zero,$t0,$t0     
  0010c97c: spec3f  $zero,$t0,$t0     
  0010c980: srl    $t0, $zero, +1     
  0010c984: spec3c  $zero,$t0,$t0     
  0010c988: xor    $t2, $t1, +0       
  0010c98c: spec3e  $zero,$t0,$t0     
  0010c990: andi   $t0, $t0, +1       
  0010c994: spec3c  $zero,$t0,$t0     
  0010c998: spec3f  $zero,$t0,$t0     
  0010c99c: sll    $t0, $zero, +2     
  0010c9a0: addu   $sp, $t0, +0       
  0010c9a4: lw     $t0, +8($t0)       
  0010c9a8: xor    $t0, $t1, +0       
  0010c9ac: sw     $t0, +24($a1)      
  0010c9b0: lw     $t2, +32($a1)      
  0010c9b4: op27    $a1,$t0,$zero     
  0010c9b8: lw     $t1, +1616($a1)    
  0010c9bc: spec3c  $zero,$t2,$t2     
  0010c9c0: spec3e  $zero,$t2,$t2     
  0010c9c4: and    $v1, $t0, +0       
  0010c9c8: or     $t2, $t0, +0       
  0010c9cc: spec3c  $zero,$t0,$t0     
  0010c9d0: spec3f  $zero,$t0,$t0     
  0010c9d4: srl    $t0, $zero, +1     
  0010c9d8: spec3c  $zero,$t0,$t0     
  0010c9dc: xor    $t2, $t1, +0       
  0010c9e0: spec3e  $zero,$t0,$t0     
  0010c9e4: andi   $t0, $t0, +1       
  0010c9e8: spec3c  $zero,$t0,$t0     
  0010c9ec: spec3f  $zero,$t0,$t0     
  0010c9f0: sll    $t0, $zero, +2     
  0010c9f4: addu   $sp, $t0, +0       
  0010c9f8: lw     $t0, +8($t0)       
  0010c9fc: xor    $t0, $t1, +0       
  0010ca00: sw     $t0, +28($a1)      
  0010ca04: lw     $t2, +36($a1)      
  0010ca08: op27    $a1,$t0,$zero     
  0010ca0c: lw     $t1, +1620($a1)    
  0010ca10: spec3c  $zero,$t2,$t2     
  0010ca14: spec3e  $zero,$t2,$t2     
  0010ca18: and    $v1, $t0, +0       
  0010ca1c: or     $t2, $t0, +0       
  0010ca20: spec3c  $zero,$t0,$t0     
  0010ca24: spec3f  $zero,$t0,$t0     
  0010ca28: srl    $t0, $zero, +1     
  0010ca2c: spec3c  $zero,$t0,$t0     
  0010ca30: xor    $t2, $t1, +0       
  0010ca34: spec3e  $zero,$t0,$t0     
  0010ca38: andi   $t0, $t0, +1       
  0010ca3c: spec3c  $zero,$t0,$t0     
  0010ca40: spec3f  $zero,$t0,$t0     
  0010ca44: sll    $t0, $zero, +2     
  0010ca48: addu   $sp, $t0, +0       
  0010ca4c: lw     $t0, +8($t0)       
  0010ca50: xor    $t0, $t1, +0       
  0010ca54: sw     $t0, +32($a1)      
  0010ca58: lw     $t2, +40($a1)      
  0010ca5c: op27    $a1,$t0,$zero     
  0010ca60: lw     $t1, +1624($a1)    
  0010ca64: spec3c  $zero,$t2,$t2     
  0010ca68: spec3e  $zero,$t2,$t2     
  0010ca6c: and    $v1, $t0, +0       
  0010ca70: or     $t2, $t0, +0       
  0010ca74: spec3c  $zero,$t0,$t0     
  0010ca78: spec3f  $zero,$t0,$t0     
  0010ca7c: srl    $t0, $zero, +1     
  0010ca80: spec3c  $zero,$t0,$t0     
  0010ca84: xor    $t2, $t1, +0       
  0010ca88: spec3e  $zero,$t0,$t0     
  0010ca8c: andi   $t0, $t0, +1       
  0010ca90: spec3c  $zero,$t0,$t0     
  0010ca94: spec3f  $zero,$t0,$t0     
  0010ca98: sll    $t0, $zero, +2     
  0010ca9c: addu   $sp, $t0, +0       
  0010caa0: lw     $t0, +8($t0)       
  0010caa4: xor    $t0, $t1, +0       
  0010caa8: sw     $t0, +36($a1)      
  0010caac: lw     $t2, +44($a1)      
  0010cab0: op27    $a1,$t0,$zero     
  0010cab4: lw     $t1, +1628($a1)    
  0010cab8: spec3c  $zero,$t2,$t2     
  0010cabc: spec3e  $zero,$t2,$t2     
  0010cac0: and    $v1, $t0, +0       
  0010cac4: or     $t2, $t0, +0       
  0010cac8: spec3c  $zero,$t0,$t0     
  0010cacc: spec3f  $zero,$t0,$t0     
  0010cad0: srl    $t0, $zero, +1     
  0010cad4: spec3c  $zero,$t0,$t0     
  0010cad8: xor    $t2, $t1, +0       
  0010cadc: spec3e  $zero,$t0,$t0     
  0010cae0: andi   $t0, $t0, +1       
  0010cae4: spec3c  $zero,$t0,$t0     
  0010cae8: spec3f  $zero,$t0,$t0     
  0010caec: sll    $t0, $zero, +2     
  0010caf0: addu   $sp, $t0, +0       
  0010caf4: lw     $t0, +8($t0)       
  0010caf8: xor    $t0, $t1, +0       
  0010cafc: sw     $t0, +40($a1)      
  0010cb00: bne    $a3, $zero, -688      ; br -> 0x0014c854
  0010cb04: dsubu  $zero, $v0, +0     
  0010cb08: sll    $a2, $zero, +2     
  0010cb0c: addu   $a0, $v0, +0       
  0010cb10: addiu  $a2, $a2, +3       
  0010cb14: lw     $a3, +16($v0)         ; GLOBAL 0x00610010
  0010cb18: slti   $at, $a2, +623     
  0010cb1c: op27    $v0,$t0,$zero     
  0010cb20: lw     $a1, +1600($v0)       ; GLOBAL 0x00610640
  0010cb24: spec3c  $zero,$a3,$a3     
  0010cb28: and    $v1, $t0, +0       
  0010cb2c: spec3e  $zero,$a3,$a3     
  0010cb30: or     $a3, $t0, +0       
  0010cb34: spec3c  $zero,$a3,$a3     
  0010cb38: spec3f  $zero,$a3,$a3     
  0010cb3c: spec3c  $zero,$a3,$t0     
  0010cb40: srl    $a3, $zero, +1     
  0010cb44: spec3e  $zero,$t0,$t0     
  0010cb48: xor    $a3, $a1, +0       
  0010cb4c: andi   $a1, $t0, +1       
  0010cb50: spec3c  $zero,$a1,$a1     
  0010cb54: spec3f  $zero,$a1,$a1     
  0010cb58: sll    $a1, $zero, +2     
  0010cb5c: addu   $sp, $a1, +0       
  0010cb60: lw     $a1, +8($a1)       
  0010cb64: xor    $a1, $a3, +0       
  0010cb68: sw     $a1, +12($v0)         ; GLOBAL 0x0061000c
  0010cb6c: lw     $a1, +20($v0)         ; GLOBAL 0x00610014
  0010cb70: op27    $v0,$t0,$zero     
  0010cb74: lw     $a3, +1604($v0)       ; GLOBAL 0x00610644
  0010cb78: spec3c  $zero,$a1,$a1     
  0010cb7c: and    $v1, $t0, +0       
  0010cb80: spec3e  $zero,$a1,$a1     
  0010cb84: or     $a1, $t0, +0       
  0010cb88: spec3c  $zero,$a1,$a1     
  0010cb8c: spec3f  $zero,$a1,$a1     
  0010cb90: srl    $a1, $zero, +1     
  0010cb94: spec3c  $zero,$a1,$a1     
  0010cb98: xor    $t0, $a3, +0       
  0010cb9c: spec3e  $zero,$a1,$a1     
  0010cba0: andi   $a1, $a1, +1       
  0010cba4: spec3c  $zero,$a1,$a1     
  0010cba8: spec3f  $zero,$a1,$a1     
  0010cbac: sll    $a1, $zero, +2     
  0010cbb0: addu   $sp, $a1, +0       
  0010cbb4: lw     $a1, +8($a1)       
  0010cbb8: xor    $a1, $a3, +0       
  0010cbbc: sw     $a1, +16($v0)         ; GLOBAL 0x00610010
  0010cbc0: op27    $v0,$t0,$zero     
  0010cbc4: lw     $a3, +24($v0)         ; GLOBAL 0x00610018
  0010cbc8: lw     $a1, +1608($v0)       ; GLOBAL 0x00610648
  0010cbcc: and    $v1, $t0, +0       
  0010cbd0: spec3c  $zero,$a3,$v1     
  0010cbd4: spec3e  $zero,$v1,$v1     
  0010cbd8: or     $v1, $t0, +0       
  0010cbdc: spec3c  $zero,$v1,$v1     
  0010cbe0: spec3f  $zero,$v1,$v1     
  0010cbe4: srl    $v1, $zero, +1     
  0010cbe8: spec3c  $zero,$v1,$v1     
  0010cbec: xor    $a3, $a1, +0       
  0010cbf0: spec3e  $zero,$v1,$v1     
  0010cbf4: andi   $v1, $v1, +1       
  0010cbf8: spec3c  $zero,$v1,$v1     
  0010cbfc: spec3f  $zero,$v1,$v1     
  0010cc00: sll    $v1, $zero, +2     
  0010cc04: addu   $sp, $v1, +0       
  0010cc08: lw     $v1, +8($v1)       
  0010cc0c: xor    $v1, $a1, +0       
  0010cc10: beq    $at, $zero, +124      ; br -> 0x0010cc90
  0010cc14: sw     $v1, +20($v0)         ; GLOBAL 0x00610014
  0010cc18: sll    $a2, $zero, +2     
  0010cc1c: addu   $v0, $a0, +0       
  0010cc20: ori    $v0, $zero, -32768 
  0010cc24: spec38  $zero,$v0,$t0     
  0010cc28: lw     $v1, +16($t1)      
  0010cc2c: addiu  $a2, $a2, +1       
  0010cc30: op27    $t1,$a3,$zero     
  0010cc34: slti   $v0, $a2, +623     
  0010cc38: lw     $a1, -896($t1)     
  0010cc3c: spec3c  $zero,$v1,$v1     
  0010cc40: and    $t0, $a3, +0       
  0010cc44: spec3e  $zero,$v1,$v1     
  0010cc48: or     $v1, $a3, +0       
  0010cc4c: spec3c  $zero,$v1,$v1     
  0010cc50: spec3f  $zero,$v1,$v1     
  0010cc54: srl    $v1, $zero, +1     
  0010cc58: spec3c  $zero,$v1,$v1     
  0010cc5c: xor    $a3, $a1, +0       
  0010cc60: spec3e  $zero,$v1,$v1     
  0010cc64: andi   $v1, $v1, +1       
  0010cc68: spec3c  $zero,$v1,$v1     
  0010cc6c: spec3f  $zero,$v1,$v1     
  0010cc70: sll    $v1, $zero, +2     
  0010cc74: addu   $sp, $v1, +0       
  0010cc78: lw     $v1, +8($v1)       
  0010cc7c: xor    $v1, $a1, +0       
  0010cc80: sw     $v1, +12($t1)      
  0010cc84: bne    $v0, $zero, -96       ; br -> 0x0014cc28
  0010cc88: addiu  $t1, $t1, +4       
  0010cc8c: sll    $zero, $zero, +0   
  0010cc90: lw     $v0, +12($a0)      
  0010cc94: op27    $a0,$a2,$at       
  0010cc98: ori    $v1, $zero, -32768 
  0010cc9c: spec38  $zero,$v1,$a1     
  0010cca0: lw     $v1, +1596($a0)    
  0010cca4: spec3c  $zero,$v0,$v0     
  0010cca8: and    $a1, $a2, +0       
  0010ccac: spec3e  $zero,$v0,$v0     
  0010ccb0: or     $v0, $a1, +0       
  0010ccb4: spec3c  $zero,$v0,$v0     
  0010ccb8: spec3f  $zero,$v0,$v0     
  0010ccbc: srl    $v0, $zero, +1     
  0010ccc0: spec3c  $zero,$v0,$v0     
  0010ccc4: xor    $a1, $v1, +0       
  0010ccc8: spec3e  $zero,$v0,$v0     
  0010cccc: andi   $v0, $v0, +1       
  0010ccd0: spec3c  $zero,$v0,$v0     
  0010ccd4: spec3f  $zero,$v0,$v0     
  0010ccd8: sll    $v0, $zero, +2     
  0010ccdc: addu   $sp, $v0, +0       
  0010cce0: lw     $v0, +8($v0)          ; GLOBAL 0x00610008
  0010cce4: xor    $v0, $v1, +0       
  0010cce8: sw     $v0, +2504($a0)    
  0010ccec: sw     $zero, +8($a0)     
  0010ccf0: lw     $a1, +8($a0)       
  0010ccf4: ori    $v0, $zero, -25300 
  0010ccf8: spec38  $zero,$v0,$v1     
  0010ccfc: ori    $v0, $zero, -4154  
  0010cd00: ori    $v1, $v1, +22144   
  0010cd04: spec38  $zero,$v0,$v0     
  0010cd08: addiu  $a2, $a1, +1       
  0010cd0c: sll    $a1, $zero, +2     
  0010cd10: sw     $a2, +8($a0)       
  0010cd14: addu   $a0, $a1, +0       
  0010cd18: lw     $a1, +12($a0)      
  0010cd1c: srl    $a1, $zero, +11    
  0010cd20: xor    $a0, $a1, +0       
  0010cd24: sll    $a1, $zero, +7     
  0010cd28: spec3c  $zero,$a0,$a0     
  0010cd2c: spec3e  $zero,$a0,$a0     
  0010cd30: and    $v1, $a0, +0       
  0010cd34: spec3c  $zero,$v1,$v1     
  0010cd38: spec3f  $zero,$v1,$v1     
  0010cd3c: xor    $v1, $a1, +0       
  0010cd40: sll    $a0, $zero, +15    
  0010cd44: spec3c  $zero,$v1,$v1     
  0010cd48: spec3e  $zero,$v1,$v1     
  0010cd4c: and    $v0, $v1, +0       
  0010cd50: spec3c  $zero,$v0,$v0     
  0010cd54: spec3f  $zero,$v0,$v0     
  0010cd58: xor    $v0, $a0, +0       
  0010cd5c: srl    $v1, $zero, +18    
  0010cd60: xor    $v0, $v1, +0       
  0010cd64: srl    $v0, $zero, +1     
  0010cd68: jr     $ra                
  0010cd6c: addiu  $sp, $sp, +16      

; globals: 0x00610010(x2), 0x00610014(x2), 0x00611058(x1), 0x0061105c(x1), 0x00610640(x1), 0x0061000c(x1), 0x00610644(x1), 0x00610018(x1), 0x00610648(x1), 0x00610008(x1)
