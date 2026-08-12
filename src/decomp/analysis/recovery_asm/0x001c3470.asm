; 0x001c3470  FUN_001c3470  size=64  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 16 words

  001c3470: addiu  $sp, $sp, -16      
  001c3474: lwc1   $v1, +0($a1)       
  001c3478: lwc1   $v0, +4($a1)       
  001c347c: lwc1   $at, +8($a1)       
  001c3480: lwc1   $zero, +12($sp)    
  001c3484: swc1   $v1, +0($a0)       
  001c3488: swc1   $v0, +4($a0)       
  001c348c: swc1   $at, +8($a0)       
  001c3490: swc1   $v1, +0($sp)       
  001c3494: swc1   $v0, +4($sp)       
  001c3498: swc1   $at, +8($sp)       
  001c349c: swc1   $zero, +12($a0)    
  001c34a0: jr     $ra                
  001c34a4: addiu  $sp, $sp, +16      
  001c34a8: sll $zero, $zero, 0       
  001c34ac: sll $zero, $zero, 0       
