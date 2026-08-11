; 0x0042f660  FUN_0042f660  size=240  status=real_c
; evidence: args=a0=int;a1=int;a2=ptr;a3=- ret=void calls=
; 60 words

  0042f660: bne    $a0, $zero, +24       ; br -> 0x0042f67c
  0042f664: dsubu  $zero, $a1, +0     
  0042f668: lw     $a0, +0($a2)       
  0042f66c: bnel   $a0, $zero, +16       ; br -> 0x0042f680
  0042f670: lw     $t0, +0($a0)       
  0042f674: jr     $ra                
  0042f678: dsubu  $zero, $zero, +0   
  0042f67c: lw     $t0, +0($a0)       
  0042f680: lw     $v1, +0($a3)       
  0042f684: addiu  $a0, $a0, +1       
  0042f688: beq    $v1, $zero, +32       ; br -> 0x0042f6ac
  0042f68c: addiu  $a3, $a3, +1       
  0042f690: beql   $t0, $v1, -24         ; br -> 0x0046f67c
  0042f694: dsubu  $zero, $a1, +0     
  0042f698: lw     $v1, +0($a3)       
  0042f69c: sll    $zero, $zero, +0   
  0042f6a0: sll    $zero, $zero, +0   
  0042f6a4: bne    $v1, $zero, -24       ; br -> 0x0046f690
  0042f6a8: addiu  $a3, $a3, +1       
  0042f6ac: bne    $t0, $zero, +16       ; br -> 0x0042f6c0
  0042f6b0: addiu  $v0, $a0, -1       
  0042f6b4: sw     $zero, +0($a2)     
  0042f6b8: jr     $ra                
  0042f6bc: dsubu  $zero, $zero, +0   
  0042f6c0: lw     $t0, +0($a0)       
  0042f6c4: sll    $zero, $zero, +0   
  0042f6c8: dsubu  $zero, $a1, +0     
  0042f6cc: addiu  $a0, $a0, +1       
  0042f6d0: lw     $v1, +0($a3)       
  0042f6d4: sll    $zero, $zero, +0   
  0042f6d8: bne    $v1, $t0, +24         ; br -> 0x0042f6f4
  0042f6dc: addiu  $a3, $a3, +1       
  0042f6e0: bnel   $v1, $zero, +8        ; br -> 0x0042f6ec
  0042f6e4: sw     $zero, -1($a0)     
  0042f6e8: dsubu  $zero, $zero, +0   
  0042f6ec: jr     $ra                
  0042f6f0: sw     $a0, +0($a2)       
  0042f6f4: bnel   $v1, $zero, -32       ; br -> 0x0046f6d8
  0042f6f8: lw     $v1, +0($a3)       
  0042f6fc: beq    $zero, $zero, -56     ; br -> 0x0046f6c8
  0042f700: lw     $t0, +0($a0)       
  0042f704: sll    $zero, $zero, +0   
  0042f708: lw     $v0, +0($a0)       
  0042f70c: beq    $v0, $zero, +56       ; br -> 0x0042f748
  0042f710: dsubu  $zero, $a0, +0     
  0042f714: lui   $v0, 0x006a0000     
  0042f718: addiu  $a3, $v0, +17361   
  0042f71c: lw     $a2, +0($a1)       
  0042f720: addu   $a3, $a2, +0       
  0042f724: lw     $v0, +0($v1)       
  0042f728: andi   $v0, $v0, +2       
  0042f72c: beq    $v0, $zero, +8        ; br -> 0x0042f738
  0042f730: addiu  $v0, $a2, -32      
  0042f734: sw     $v0, +0($a1)       
  0042f738: addiu  $a1, $a1, +1       
  0042f73c: lw     $v0, +0($a1)       
  0042f740: bnel   $v0, $zero, -36       ; br -> 0x0046f720
  0042f744: lw     $a2, +0($a1)       
  0042f748: jr     $ra                
  0042f74c: dsubu  $zero, $a0, +0     
