; 0x0015ba30  FUN_0015ba30  size=64  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 16 words

  0015ba30: addiu  $sp, $sp, -16      
  0015ba34: lwc1   $v1, +0($a1)       
  0015ba38: lwc1   $v0, +4($a1)       
  0015ba3c: lwc1   $at, +8($a1)       
  0015ba40: lwc1   $zero, +12($sp)    
  0015ba44: swc1   $v1, +0($a0)       
  0015ba48: swc1   $v0, +4($a0)       
  0015ba4c: swc1   $at, +8($a0)       
  0015ba50: swc1   $v1, +0($sp)       
  0015ba54: swc1   $v0, +4($sp)       
  0015ba58: swc1   $at, +8($sp)       
  0015ba5c: swc1   $zero, +12($a0)    
  0015ba60: jr     $ra                
  0015ba64: addiu  $sp, $sp, +16      
  0015ba68: sll $zero, $zero, 0       
  0015ba6c: sll $zero, $zero, 0       
