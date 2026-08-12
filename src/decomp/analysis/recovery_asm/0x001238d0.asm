; 0x001238d0  FUN_001238d0  size=96  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 24 words

  001238d0: addiu  $sp, $sp, -16      
  001238d4: daddu $v0, $a0, $zero     
  001238d8: lwc1   $v1, +0($a1)       
  001238dc: lwc1   $v0, +4($a1)       
  001238e0: lwc1   $at, +8($a1)       
  001238e4: lwc1   $zero, +12($a1)    
  001238e8: swc1   $v1, +0($a0)       
  001238ec: swc1   $v0, +4($a0)       
  001238f0: swc1   $at, +8($a0)       
  001238f4: swc1   $v1, +0($sp)       
  001238f8: swc1   $v0, +4($sp)       
  001238fc: swc1   $at, +8($sp)       
  00123900: swc1   $zero, +12($a0)    
  00123904: jr     $ra                
  00123908: addiu  $sp, $sp, +16      
  0012390c: sll $zero, $zero, 0       
  00123910: jr     $ra                
  00123914: daddu $v0, $a0, $zero     
  00123918: sll $zero, $zero, 0       
  0012391c: sll $zero, $zero, 0       
  00123920: lw     $v1, +16($a1)      
  00123924: jr     $ra                
  00123928: sw     $v1, +0($a0)       
  0012392c: sll $zero, $zero, 0       
