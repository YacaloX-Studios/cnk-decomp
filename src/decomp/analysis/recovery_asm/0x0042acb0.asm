; 0x0042acb0  FUN_0042acb0  size=32  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ret calls=0x00429708
; 8 words

  0042acb0: addiu  $sp, $sp, -16      
  0042acb4: sq     $ra, +0($sp)       
  0042acb8: lh     $a1, +14($a0)      
  0042acbc: jal   0xf0429708             ; -> FUN_00429708
  0042acc0: lw     $a0, +84($a0)      
  0042acc4: lq     $ra, +0($sp)       
  0042acc8: jr     $ra                
  0042accc: addiu  $sp, $sp, +16      
