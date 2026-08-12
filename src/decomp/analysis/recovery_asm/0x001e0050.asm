; 0x001e0050  FUN_001e0050  size=64  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 16 words

  001e0050: addiu  $sp, $sp, -16      
  001e0054: dsubu $v0, $a0, $zero     
  001e0058: lwc1   $v1, +0($a1)       
  001e005c: lwc1   $v0, +4($a1)       
  001e0060: lwc1   $at, +8($a1)       
  001e0064: lwc1   $zero, +12($a1)    
  001e0068: swc1   $v1, +0($a0)       
  001e006c: swc1   $v0, +4($a0)       
  001e0070: swc1   $at, +8($a0)       
  001e0074: swc1   $v1, +0($sp)       
  001e0078: swc1   $v0, +4($sp)       
  001e007c: swc1   $at, +8($sp)       
  001e0080: swc1   $zero, +12($a0)    
  001e0084: jr     $ra                
  001e0088: addiu  $sp, $sp, +16      
  001e008c: sll $zero, $zero, 0       
