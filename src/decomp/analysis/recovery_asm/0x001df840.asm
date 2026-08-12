; 0x001df840  FUN_001df840  size=64  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 16 words

  001df840: addiu  $sp, $sp, -16      
  001df844: daddu $v0, $a0, $zero     
  001df848: lwc1   $v1, +0($a1)       
  001df84c: lwc1   $v0, +4($a1)       
  001df850: lwc1   $at, +8($a1)       
  001df854: lwc1   $zero, +12($a1)    
  001df858: swc1   $v1, +0($a0)       
  001df85c: swc1   $v0, +4($a0)       
  001df860: swc1   $at, +8($a0)       
  001df864: swc1   $v1, +0($sp)       
  001df868: swc1   $v0, +4($sp)       
  001df86c: swc1   $at, +8($sp)       
  001df870: swc1   $zero, +12($a0)    
  001df874: jr     $ra                
  001df878: addiu  $sp, $sp, +16      
  001df87c: sll $zero, $zero, 0       
