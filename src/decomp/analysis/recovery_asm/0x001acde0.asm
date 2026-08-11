; 0x001acde0  FUN_001acde0  size=64  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 16 words

  001acde0: addiu  $sp, $sp, -16      
  001acde4: lwc1   $v1, +0($a1)       
  001acde8: lwc1   $v0, +4($a1)       
  001acdec: lwc1   $at, +8($a1)       
  001acdf0: lwc1   $zero, +12($sp)    
  001acdf4: swc1   $v1, +0($a0)       
  001acdf8: swc1   $v0, +4($a0)       
  001acdfc: swc1   $at, +8($a0)       
  001ace00: swc1   $v1, +0($sp)       
  001ace04: swc1   $v0, +4($sp)       
  001ace08: swc1   $at, +8($sp)       
  001ace0c: swc1   $zero, +12($a0)    
  001ace10: jr     $ra                
  001ace14: addiu  $sp, $sp, +16      
  001ace18: sll    $zero, $zero, +0   
  001ace1c: sll    $zero, $zero, +0   
