; 0x0035bc40  FUN_0035bc40  size=80  status=real_c
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 20 words

  0035bc40: addiu  $sp, $sp, -16      
  0035bc44: addiu  $v0, $sp, +0       
  0035bc48: op36    $a2,$s4,$zero     
  0035bc4c: op36    $a1,$s5,$zero     
  0035bc50: op36    $a1,$s6,$zero     
  0035bc54: op36    $a1,$s7,$zero     
  0035bc58: op36    $a1,$t8,$zero     
  0035bc5c: cop2   $s5,$fp,$s4        
  0035bc60: cop2   $s6,$fp,$s4        
  0035bc64: cop2   $s7,$fp,$s4        
  0035bc68: cop2   $t8,$fp,$zero      
  0035bc6c: op3e    $v0,$s4,$zero     
  0035bc70: lw     $v0, +0($v0)       
  0035bc74: sw     $v0, +0($a0)       
  0035bc78: dsubu $v0, $a0, $zero     
  0035bc7c: jr     $ra                
  0035bc80: addiu  $sp, $sp, +16      
  0035bc84: sll $zero, $zero, 0       
  0035bc88: sll $zero, $zero, 0       
  0035bc8c: sll $zero, $zero, 0       
