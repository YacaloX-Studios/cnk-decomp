; 0x00363b70  FUN_00363b70  size=32  status=real_logic
; evidence: args=a0=-;a1=-;a2=-;a3=- ret=ptr calls=
; 8 words

  00363b70: lui   $v0, 0x3fff0000     
  00363b74: addiu  $sp, $sp, -16      
  00363b78: ori    $v0, $v0, -1       
  00363b7c: addiu  $v1, $sp, +12      
  00363b80: sw     $v0, +12($sp)      
  00363b84: lw     $v0, +0($v1)       
  00363b88: jr     $ra                
  00363b8c: addiu  $sp, $sp, +16      
