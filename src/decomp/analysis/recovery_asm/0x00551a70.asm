; 0x00551a70  FUN_00551a70  size=48  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 12 words

  00551a70: slt $v0, $a0, $a2         
  00551a74: bne    $v0, $zero, +12       ; br -> 0x00551a84
  00551a78: sll $v0, $a0, 1           
  00551a7c: beq    $zero, $zero, +20     ; br -> 0x00551a94
  00551a80: daddu $v0, $zero, $zero   
  00551a84: addu $v0, $v0, $a0        
  00551a88: sll $v0, $v0, 2           
  00551a8c: addu $v0, $v0, $a1        
  00551a90: lw     $v0, +8($v0)       
  00551a94: jr     $ra                
  00551a98: sll $zero, $zero, 0       
  00551a9c: sll $zero, $zero, 0       
