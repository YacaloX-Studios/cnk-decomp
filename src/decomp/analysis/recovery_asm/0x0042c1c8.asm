; 0x0042c1c8  FUN_0042c1c8  size=32  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042c098
; 8 words

  0042c1c8: addiu  $sp, $sp, -32      
  0042c1cc: sq     $ra, +16($sp)      
  0042c1d0: jal   0xf042c098             ; -> 0x0042c098
  0042c1d4: daddu $a2, $sp, $zero     
  0042c1d8: lq     $ra, +16($sp)      
  0042c1dc: jr     $ra                
  0042c1e0: addiu  $sp, $sp, +32      
  0042c1e4: sll $zero, $zero, 0       
