; 0x001ca130  FUN_001ca130  size=64  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 16 words

  001ca130: addiu  $sp, $sp, -16      
  001ca134: dsubu $v0, $a0, $zero     
  001ca138: lwc1   $v1, +0($a1)       
  001ca13c: lwc1   $v0, +4($a1)       
  001ca140: lwc1   $at, +8($a1)       
  001ca144: lwc1   $zero, +12($a1)    
  001ca148: swc1   $v1, +0($a0)       
  001ca14c: swc1   $v0, +4($a0)       
  001ca150: swc1   $at, +8($a0)       
  001ca154: swc1   $v1, +0($sp)       
  001ca158: swc1   $v0, +4($sp)       
  001ca15c: swc1   $at, +8($sp)       
  001ca160: swc1   $zero, +12($a0)    
  001ca164: jr     $ra                
  001ca168: addiu  $sp, $sp, +16      
  001ca16c: sll $zero, $zero, 0       
