; 0x00551a70  FUN_00551a70  size=48  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 12 words

  00551a70: dadd   $a2, $a0, +0       
  00551a74: bne    $v0, $zero, +12       ; br -> 0x00551a84
  00551a78: sll    $a0, $zero, +1     
  00551a7c: beq    $zero, $zero, +20     ; br -> 0x00551a94
  00551a80: dsubu  $zero, $zero, +0   
  00551a84: addu   $a0, $v0, +0       
  00551a88: sll    $v0, $zero, +2     
  00551a8c: addu   $a1, $v0, +0       
  00551a90: lw     $v0, +8($v0)       
  00551a94: jr     $ra                
  00551a98: sll    $zero, $zero, +0   
  00551a9c: sll    $zero, $zero, +0   
