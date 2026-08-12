; 0x00394050  FUN_00394050  size=64  status=real_c
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 16 words

  00394050: addiu  $sp, $sp, -16      
  00394054: addiu  $v0, $sp, +0       
  00394058: op36    $a2,$s4,$zero     
  0039405c: op36    $a1,$s5,$zero     
  00394060: op36    $a1,$s6,$zero     
  00394064: op36    $a1,$s7,$zero     
  00394068: cop2   $s5,$fp,$s4        
  0039406c: cop2   $s6,$fp,$s4        
  00394070: cop2   $s7,$fp,$s4        
  00394074: op3e    $v0,$s4,$zero     
  00394078: lq     $v0, +0($v0)       
  0039407c: sq     $v0, +0($a0)       
  00394080: daddu $v0, $a0, $zero     
  00394084: jr     $ra                
  00394088: addiu  $sp, $sp, +16      
  0039408c: sll $zero, $zero, 0       
