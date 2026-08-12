; 0x0034bb20  FUN_0034bb20  size=48  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 12 words

  0034bb20: addiu  $sp, $sp, -16      
  0034bb24: addiu  $v0, $sp, +0       
  0034bb28: op36    $a1,$at,$zero     
  0034bb2c: op36    $a2,$v0,$zero     
  0034bb30: cop2   $at,$fp,$v0        
  0034bb34: op3e    $v0,$at,$zero     
  0034bb38: lq     $v0, +0($v0)       
  0034bb3c: sq     $v0, +0($a0)       
  0034bb40: daddu $v0, $a0, $zero     
  0034bb44: jr     $ra                
  0034bb48: addiu  $sp, $sp, +16      
  0034bb4c: sll $zero, $zero, 0       
