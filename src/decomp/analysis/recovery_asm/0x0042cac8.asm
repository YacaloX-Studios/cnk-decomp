; 0x0042cac8  FUN_0042cac8  size=56  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042c660
; 14 words

  0042cac8: addiu  $sp, $sp, -32      
  0042cacc: sw     $s0, +0($sp)       
  0042cad0: dsubu  $zero, $a1, +0     
  0042cad4: sw     $ra, +16($sp)      
  0042cad8: jal   0xf042c660             ; -> FUN_0042c660
  0042cadc: addiu  $a1, $zero, +1     
  0042cae0: dsubu  $zero, $v0, +0     
  0042cae4: addiu  $a0, $zero, +1     
  0042cae8: sw     $s0, +20($v1)      
  0042caec: lw     $ra, +16($sp)      
  0042caf0: lw     $s0, +0($sp)       
  0042caf4: sw     $a0, +16($v1)      
  0042caf8: jr     $ra                
  0042cafc: addiu  $sp, $sp, +32      
