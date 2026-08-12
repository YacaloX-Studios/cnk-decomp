; 0x00120720  FUN_00120720  size=48  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=void calls=
; 12 words

  00120720: addiu  $sp, $sp, -16      
  00120724: addiu  $v1, $sp, +0       
  00120728: op36    $a1,$at,$zero     
  0012072c: op36    $a2,$v0,$zero     
  00120730: cop2   $at,$fp,$v0        
  00120734: cop2   $v0,$fp,$at        
  00120738: op3e    $v1,$at,$zero     
  0012073c: lw     $v1, +0($v1)       
  00120740: sw     $v1, +0($a0)       
  00120744: jr     $ra                
  00120748: addiu  $sp, $sp, +16      
  0012074c: sll $zero, $zero, 0       
