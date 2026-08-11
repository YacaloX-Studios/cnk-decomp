; 0x001cad90  FUN_001cad90  size=80  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 20 words

  001cad90: addiu  $sp, $sp, -16      
  001cad94: lwc1   $v1, +0($a1)       
  001cad98: lwc1   $v0, +4($a1)       
  001cad9c: lwc1   $at, +8($a1)       
  001cada0: lwc1   $zero, +12($sp)    
  001cada4: swc1   $v1, +0($a0)       
  001cada8: swc1   $v0, +4($a0)       
  001cadac: swc1   $at, +8($a0)       
  001cadb0: swc1   $v1, +0($sp)       
  001cadb4: swc1   $v0, +4($sp)       
  001cadb8: swc1   $at, +8($sp)       
  001cadbc: swc1   $zero, +12($a0)    
  001cadc0: jr     $ra                
  001cadc4: addiu  $sp, $sp, +16      
  001cadc8: sll    $zero, $zero, +0   
  001cadcc: sll    $zero, $zero, +0   
  001cadd0: jr     $ra                
  001cadd4: sll    $zero, $zero, +0   
  001cadd8: sll    $zero, $zero, +0   
  001caddc: sll    $zero, $zero, +0   
