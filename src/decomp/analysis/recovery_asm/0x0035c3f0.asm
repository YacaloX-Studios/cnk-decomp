; 0x0035c3f0  FUN_0035c3f0  size=80  status=real_c
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 20 words

  0035c3f0: addiu  $sp, $sp, -16      
  0035c3f4: addiu  $v0, $sp, +0       
  0035c3f8: op36    $a2,$s4,$zero     
  0035c3fc: op36    $a1,$s5,$zero     
  0035c400: op36    $a1,$s6,$zero     
  0035c404: op36    $a1,$s7,$zero     
  0035c408: cop2   $s5,$fp,$s4        
  0035c40c: cop2   $s6,$fp,$s4        
  0035c410: cop2   $s7,$fp,$s4        
  0035c414: sll $zero, $zero, 0       
  0035c418: op3e    $v0,$s7,$zero     
  0035c41c: lw     $v0, +0($v0)       
  0035c420: sw     $v0, +0($a0)       
  0035c424: dsubu $v0, $a0, $zero     
  0035c428: jr     $ra                
  0035c42c: addiu  $sp, $sp, +16      
  0035c430: jr     $ra                
  0035c434: addiu  $v0, $a0, +8       
  0035c438: sll $zero, $zero, 0       
  0035c43c: sll $zero, $zero, 0       
