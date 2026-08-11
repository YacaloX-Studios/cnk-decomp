; 0x003ef8c0  FUN_003ef8c0  size=880  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=void calls=
; 220 words

  003ef8c0: addiu  $sp, $sp, -144     
  003ef8c4: lui   $a2, 0x00700000     
  003ef8c8: sw     $fp, +128($sp)     
  003ef8cc: lui   $a3, 0x00650000     
  003ef8d0: sw     $s7, +112($sp)     
  003ef8d4: lui   $t9, 0x00650000     
  003ef8d8: sw     $s6, +96($sp)      
  003ef8dc: lui   $t7, 0x00650000     
  003ef8e0: sw     $s5, +80($sp)      
  003ef8e4: lui   $t5, 0x00650000     
  003ef8e8: sw     $s4, +64($sp)      
  003ef8ec: lui   $s5, 0x00650000     
  003ef8f0: sw     $s3, +48($sp)      
  003ef8f4: lui   $t3, 0x00650000     
  003ef8f8: sw     $s2, +32($sp)      
  003ef8fc: lui   $s3, 0x00650000     
  003ef900: sw     $s1, +16($sp)      
  003ef904: lui   $at, 0x00700000     
  003ef908: sw     $s0, +0($sp)       
  003ef90c: lui   $s1, 0x00650000     
  003ef910: lw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003ef914: addiu  $a2, $a2, -15812   
  003ef918: addiu  $t2, $zero, +163   
  003ef91c: addiu  $a3, $a3, -736     
  003ef920: addiu  $a1, $zero, -1     
  003ef924: addiu  $a0, $zero, +1     
  003ef928: addiu  $v1, $zero, +197   
  003ef92c: addiu  $s5, $s5, -688     
  003ef930: addiu  $s4, $zero, +162   
  003ef934: addiu  $s3, $s3, -656     
  003ef938: addiu  $s2, $zero, +48    
  003ef93c: addiu  $s1, $s1, -624     
  003ef940: addiu  $t1, $t0, +1       
  003ef944: lui   $at, 0x00700000     
  003ef948: sw     $t1, -13792($at)      ; GLOBAL 0x0070ca20
  003ef94c: addu   $t0, $a2, +0       
  003ef950: sw     $t2, +0($t0)       
  003ef954: lui   $at, 0x00700000     
  003ef958: sw     $a3, -14928($at)      ; GLOBAL 0x0070c5b0
  003ef95c: lui   $t2, 0x00650000     
  003ef960: lui   $at, 0x00700000     
  003ef964: lui   $t1, 0x00650000     
  003ef968: sw     $a1, -14378($at)      ; GLOBAL 0x0070c7d6
  003ef96c: lui   $t0, 0x00650000     
  003ef970: lui   $at, 0x00700000     
  003ef974: lui   $a3, 0x00650000     
  003ef978: sw     $a0, -14103($at)      ; GLOBAL 0x0070c8e9
  003ef97c: addiu  $s0, $zero, +49    
  003ef980: lui   $at, 0x00700000     
  003ef984: addiu  $t9, $t9, -576     
  003ef988: lw     $s6, -13792($at)      ; GLOBAL 0x0070ca20
  003ef98c: addiu  $t8, $zero, +50    
  003ef990: addiu  $t7, $t7, -528     
  003ef994: addiu  $t6, $zero, +51    
  003ef998: addiu  $t5, $t5, -480     
  003ef99c: addiu  $t4, $zero, +53    
  003ef9a0: addiu  $t3, $t3, -448     
  003ef9a4: addiu  $fp, $zero, +52    
  003ef9a8: addiu  $t2, $t2, -416     
  003ef9ac: addiu  $t1, $t1, -384     
  003ef9b0: addiu  $t0, $t0, -320     
  003ef9b4: addiu  $a3, $a3, -272     
  003ef9b8: addiu  $s7, $s6, +1       
  003ef9bc: lui   $at, 0x00700000     
  003ef9c0: sw     $s7, -13792($at)      ; GLOBAL 0x0070ca20
  003ef9c4: addu   $s6, $a2, +0       
  003ef9c8: sw     $v1, +0($s6)       
  003ef9cc: lui   $at, 0x00700000     
  003ef9d0: sw     $s5, -14792($at)      ; GLOBAL 0x0070c638
  003ef9d4: lui   $at, 0x00700000     
  003ef9d8: sw     $a1, -14310($at)      ; GLOBAL 0x0070c81a
  003ef9dc: lui   $at, 0x00700000     
  003ef9e0: sw     $a0, -14069($at)      ; GLOBAL 0x0070c90b
  003ef9e4: lui   $at, 0x00700000     
  003ef9e8: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003ef9ec: addiu  $s5, $v1, +1       
  003ef9f0: lui   $at, 0x00700000     
  003ef9f4: sw     $s5, -13792($at)      ; GLOBAL 0x0070ca20
  003ef9f8: addu   $v1, $a2, +0       
  003ef9fc: sw     $s4, +0($v1)       
  003efa00: lui   $at, 0x00700000     
  003efa04: sw     $s3, -14932($at)      ; GLOBAL 0x0070c5ac
  003efa08: lui   $at, 0x00700000     
  003efa0c: sw     $a1, -14380($at)      ; GLOBAL 0x0070c7d4
  003efa10: lui   $at, 0x00700000     
  003efa14: sw     $a0, -14104($at)      ; GLOBAL 0x0070c8e8
  003efa18: lui   $at, 0x00700000     
  003efa1c: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efa20: addiu  $s3, $v1, +1       
  003efa24: lui   $at, 0x00700000     
  003efa28: sw     $s3, -13792($at)      ; GLOBAL 0x0070ca20
  003efa2c: addu   $v1, $a2, +0       
  003efa30: sw     $s2, +0($v1)       
  003efa34: lui   $at, 0x00700000     
  003efa38: sw     $s1, -15388($at)      ; GLOBAL 0x0070c3e4
  003efa3c: lui   $at, 0x00700000     
  003efa40: sw     $a1, -14608($at)      ; GLOBAL 0x0070c6f0
  003efa44: lui   $at, 0x00700000     
  003efa48: sw     $a0, -14218($at)      ; GLOBAL 0x0070c876
  003efa4c: lui   $at, 0x00700000     
  003efa50: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efa54: addiu  $s1, $v1, +1       
  003efa58: lui   $at, 0x00700000     
  003efa5c: sw     $s1, -13792($at)      ; GLOBAL 0x0070ca20
  003efa60: addu   $v1, $a2, +0       
  003efa64: sw     $s0, +0($v1)       
  003efa68: lui   $at, 0x00700000     
  003efa6c: sw     $t9, -15384($at)      ; GLOBAL 0x0070c3e8
  003efa70: lui   $at, 0x00700000     
  003efa74: sw     $a1, -14606($at)      ; GLOBAL 0x0070c6f2
  003efa78: lui   $at, 0x00700000     
  003efa7c: sw     $a0, -14217($at)      ; GLOBAL 0x0070c877
  003efa80: lui   $at, 0x00700000     
  003efa84: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efa88: addiu  $s0, $v1, +1       
  003efa8c: lui   $at, 0x00700000     
  003efa90: sw     $s0, -13792($at)      ; GLOBAL 0x0070ca20
  003efa94: addu   $v1, $a2, +0       
  003efa98: sw     $t8, +0($v1)       
  003efa9c: lui   $at, 0x00700000     
  003efaa0: sw     $t7, -15380($at)      ; GLOBAL 0x0070c3ec
  003efaa4: lui   $at, 0x00700000     
  003efaa8: sw     $a1, -14604($at)      ; GLOBAL 0x0070c6f4
  003efaac: lui   $at, 0x00700000     
  003efab0: sw     $a0, -14216($at)      ; GLOBAL 0x0070c878
  003efab4: lui   $at, 0x00700000     
  003efab8: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efabc: addiu  $t7, $v1, +1       
  003efac0: lui   $at, 0x00700000     
  003efac4: sw     $t7, -13792($at)      ; GLOBAL 0x0070ca20
  003efac8: addu   $v1, $a2, +0       
  003efacc: sw     $t6, +0($v1)       
  003efad0: lui   $at, 0x00700000     
  003efad4: sw     $t5, -15376($at)      ; GLOBAL 0x0070c3f0
  003efad8: lui   $at, 0x00700000     
  003efadc: sw     $a1, -14602($at)      ; GLOBAL 0x0070c6f6
  003efae0: lui   $at, 0x00700000     
  003efae4: sw     $a0, -14215($at)      ; GLOBAL 0x0070c879
  003efae8: lui   $at, 0x00700000     
  003efaec: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efaf0: addiu  $t5, $v1, +1       
  003efaf4: lui   $at, 0x00700000     
  003efaf8: sw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003efafc: addu   $v1, $a2, +0       
  003efb00: sw     $t4, +0($v1)       
  003efb04: lui   $at, 0x00700000     
  003efb08: sw     $t3, -15368($at)      ; GLOBAL 0x0070c3f8
  003efb0c: lui   $at, 0x00700000     
  003efb10: sw     $a1, -14598($at)      ; GLOBAL 0x0070c6fa
  003efb14: lui   $at, 0x00700000     
  003efb18: sw     $a0, -14213($at)      ; GLOBAL 0x0070c87b
  003efb1c: lui   $at, 0x00700000     
  003efb20: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efb24: addiu  $t3, $v1, +1       
  003efb28: lui   $at, 0x00700000     
  003efb2c: sw     $t3, -13792($at)      ; GLOBAL 0x0070ca20
  003efb30: addu   $v1, $a2, +0       
  003efb34: sw     $fp, +0($v1)       
  003efb38: lui   $at, 0x00700000     
  003efb3c: sw     $t2, -15372($at)      ; GLOBAL 0x0070c3f4
  003efb40: lui   $at, 0x00700000     
  003efb44: sw     $a1, -14600($at)      ; GLOBAL 0x0070c6f8
  003efb48: lui   $at, 0x00700000     
  003efb4c: sw     $a0, -14214($at)      ; GLOBAL 0x0070c87a
  003efb50: lui   $at, 0x00700000     
  003efb54: lw     $t2, -13792($at)      ; GLOBAL 0x0070ca20
  003efb58: addiu  $v1, $t2, +1       
  003efb5c: lui   $at, 0x00700000     
  003efb60: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efb64: addu   $t2, $a2, +0       
  003efb68: addiu  $v1, $zero, +196   
  003efb6c: lui   $at, 0x00700000     
  003efb70: sw     $v1, +0($t2)          ; GLOBAL 0x00650000
  003efb74: sw     $t1, -14796($at)      ; GLOBAL 0x0070c634
  003efb78: lui   $at, 0x00700000     
  003efb7c: sw     $a1, -14312($at)      ; GLOBAL 0x0070c818
  003efb80: lui   $at, 0x00700000     
  003efb84: sw     $a0, -14070($at)      ; GLOBAL 0x0070c90a
  003efb88: lui   $at, 0x00700000     
  003efb8c: lw     $t1, -13792($at)      ; GLOBAL 0x0070ca20
  003efb90: addiu  $v1, $t1, +1       
  003efb94: lui   $at, 0x00700000     
  003efb98: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efb9c: addu   $t1, $a2, +0       
  003efba0: addiu  $v1, $zero, +158   
  003efba4: lui   $at, 0x00700000     
  003efba8: sw     $v1, +0($t1)          ; GLOBAL 0x00650000
  003efbac: sw     $t0, -14948($at)      ; GLOBAL 0x0070c59c
  003efbb0: lui   $at, 0x00700000     
  003efbb4: sw     $a1, -14388($at)      ; GLOBAL 0x0070c7cc
  003efbb8: lui   $at, 0x00700000     
  003efbbc: sw     $a0, -14108($at)      ; GLOBAL 0x0070c8e4
  003efbc0: lui   $at, 0x00700000     
  003efbc4: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efbc8: addu   $v1, $a2, +0       
  003efbcc: lui   $at, 0x00700000     
  003efbd0: addiu  $v1, $v1, +1       
  003efbd4: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efbd8: addiu  $v1, $zero, +19    
  003efbdc: lui   $at, 0x00700000     
  003efbe0: sw     $v1, +0($a2)          ; GLOBAL 0x00700000
  003efbe4: sw     $a3, -15504($at)      ; GLOBAL 0x0070c370
  003efbe8: lui   $at, 0x00700000     
  003efbec: sw     $a1, -14666($at)      ; GLOBAL 0x0070c6b6
  003efbf0: lui   $at, 0x00700000     
  003efbf4: sw     $a0, -14247($at)      ; GLOBAL 0x0070c859
  003efbf8: lw     $fp, +128($sp)     
  003efbfc: lw     $s7, +112($sp)     
  003efc00: lw     $s6, +96($sp)      
  003efc04: lw     $s5, +80($sp)      
  003efc08: lw     $s4, +64($sp)      
  003efc0c: lw     $s3, +48($sp)      
  003efc10: lw     $s2, +32($sp)      
  003efc14: lw     $s1, +16($sp)      
  003efc18: lw     $s0, +0($sp)       
  003efc1c: jr     $ra                
  003efc20: addiu  $sp, $sp, +144     
  003efc24: sll    $zero, $zero, +0   
  003efc28: sll    $zero, $zero, +0   
  003efc2c: sll    $zero, $zero, +0   

; globals: 0x0070ca20(x24), 0x00650000(x2), 0x0070c5b0(x1), 0x0070c7d6(x1), 0x0070c8e9(x1), 0x0070c638(x1), 0x0070c81a(x1), 0x0070c90b(x1), 0x0070c5ac(x1), 0x0070c7d4(x1)
