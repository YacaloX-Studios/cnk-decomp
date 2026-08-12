; 0x0010e780  FUN_0010e780  size=448  status=real_c
; evidence: args=a0=ptr;a1=int;a2=ptr;a3=int ret=void calls=
; 112 words

  0010e780: addiu  $sp, $sp, -16      
  0010e784: lw     $t1, +16($a0)      
  0010e788: lw     $v1, +8($a0)       
  0010e78c: sw     $a1, +12($sp)      
  0010e790: addu $a1, $t1, $a2        
  0010e794: daddu $at, $v1, $a1       
  0010e798: bne    $at, $zero, +356      ; br -> 0x0010e900
  0010e79c: sll $zero, $zero, 0       
  0010e7a0: andi   $v1, $t1, +7       
  0010e7a4: dsubu $t2, $a2, $zero     
  0010e7a8: dsubu $t3, $zero, $zero   
  0010e7ac: bne    $v1, $zero, +88       ; br -> 0x0010e808
  0010e7b0: srl $a1, $a2, 3           
  0010e7b4: beq    $a1, $zero, +80       ; br -> 0x0010e808
  0010e7b8: sll $zero, $zero, 0       
  0010e7bc: srl $t3, $t3, 3           
  0010e7c0: srl $t1, $t1, 3           
  0010e7c4: andi   $t2, $t2, +7       
  0010e7c8: beq    $a1, $zero, +284      ; br -> 0x0010e8e8
  0010e7cc: addiu  $t4, $a1, -1       
  0010e7d0: addu $v1, $t3, $sp        
  0010e7d4: addiu  $t0, $v1, +12      
  0010e7d8: lw     $a1, +4($a0)       
  0010e7dc: dsubu $v1, $t4, $zero     
  0010e7e0: lw     $a3, +0($t0)       
  0010e7e4: addiu  $t3, $t3, +1       
  0010e7e8: addiu  $t4, $t4, -1       
  0010e7ec: addu $a1, $a1, $t1        
  0010e7f0: addiu  $t0, $t0, +1       
  0010e7f4: sw     $a3, +0($a1)       
  0010e7f8: bne    $v1, $zero, -36       ; br -> 0x0010e7d8
  0010e7fc: addiu  $t1, $t1, +1       
  0010e800: beq    $zero, $zero, +232    ; br -> 0x0010e8ec
  0010e804: sll $t1, $t1, 3           
  0010e808: beq    $t2, $zero, +232      ; br -> 0x0010e8f4
  0010e80c: sll $zero, $zero, 0       
  0010e810: andi   $a3, $t3, +7       
  0010e814: addiu  $v1, $zero, +8     
  0010e818: subu $t0, $v1, $a3        
  0010e81c: andi   $a1, $t1, +7       
  0010e820: daddu $at, $t2, $t0       
  0010e824: beq    $at, $zero, +8        ; br -> 0x0010e830
  0010e828: subu $v1, $v1, $a1        
  0010e82c: dsubu $t0, $t2, $zero     
  0010e830: daddu $at, $t0, $v1       
  0010e834: movz   $t0, $v1, $at      
  0010e838: addiu  $v1, $zero, +8     
  0010e83c: bne    $t0, $v1, +12         ; br -> 0x0010e84c
  0010e840: sll $zero, $zero, 0       
  0010e844: beq    $zero, $zero, +44     ; br -> 0x0010e874
  0010e848: dsubu $t6, $zero, $zero   
  0010e84c: lw     $t4, +4($a0)       
  0010e850: srl $t5, $t1, 3           
  0010e854: addiu  $v1, $zero, +1     
  0010e858: sllv $v1, $v1, $t0        
  0010e85c: addiu  $v1, $v1, -1       
  0010e860: sllv $v1, $v1, $a1        
  0010e864: nor $v1, $v1, $zero       
  0010e868: addu $t4, $t4, $t5        
  0010e86c: lw     $t4, +0($t4)       
  0010e870: and $t6, $t4, $v1         
  0010e874: lw     $t5, +4($a0)       
  0010e878: srl $v1, $t1, 3           
  0010e87c: addiu  $t4, $zero, +8     
  0010e880: addu $t5, $t5, $v1        
  0010e884: bne    $t0, $t4, +20         ; br -> 0x0010e89c
  0010e888: sw     $t6, +0($t5)       
  0010e88c: srl $a3, $t3, 3           
  0010e890: addu $a3, $a3, $sp        
  0010e894: beq    $zero, $zero, +36     ; br -> 0x0010e8bc
  0010e898: lw     $a3, +12($a3)      
  0010e89c: srl $t5, $t3, 3           
  0010e8a0: addiu  $t4, $zero, +1     
  0010e8a4: addu $t5, $t5, $sp        
  0010e8a8: sllv $t4, $t4, $t0        
  0010e8ac: lw     $t5, +12($t5)      
  0010e8b0: addiu  $t4, $t4, -1       
  0010e8b4: srav $a3, $t5, $a3        
  0010e8b8: and $a3, $t4, $a3         
  0010e8bc: sllv $a3, $a3, $a1        
  0010e8c0: addu $t3, $t3, $t0        
  0010e8c4: lw     $a1, +4($a0)       
  0010e8c8: andi   $a3, $a3, +255     
  0010e8cc: addu $t1, $t1, $t0        
  0010e8d0: subu $t2, $t2, $t0        
  0010e8d4: addu $a1, $a1, $v1        
  0010e8d8: lw     $v1, +0($a1)       
  0010e8dc: or $v1, $v1, $a3          
  0010e8e0: beq    $zero, $zero, -220    ; br -> 0x0010e808
  0010e8e4: sw     $v1, +0($a1)       
  0010e8e8: sll $t1, $t1, 3           
  0010e8ec: beq    $zero, $zero, -232    ; br -> 0x0010e808
  0010e8f0: sll $t3, $t3, 3           
  0010e8f4: lw     $v1, +16($a0)      
  0010e8f8: addu $v1, $v1, $a2        
  0010e8fc: sw     $v1, +16($a0)      
  0010e900: jr     $ra                
  0010e904: addiu  $sp, $sp, +16      
  0010e908: sll $zero, $zero, 0       
  0010e90c: sll $zero, $zero, 0       
  0010e910: lw     $v0, +864($a0)     
  0010e914: dadd $at, $a1, $v0        
  0010e918: beq    $at, $zero, +24       ; br -> 0x0010e934
  0010e91c: dsubu $v0, $zero, $zero   
  0010e920: sll $v0, $a1, 2           
  0010e924: addu $v0, $v0, $a1        
  0010e928: sll $v0, $v0, 3           
  0010e92c: addu $v0, $a0, $v0        
  0010e930: addiu  $v0, $v0, +64      
  0010e934: jr     $ra                
  0010e938: sll $zero, $zero, 0       
  0010e93c: sll $zero, $zero, 0       
