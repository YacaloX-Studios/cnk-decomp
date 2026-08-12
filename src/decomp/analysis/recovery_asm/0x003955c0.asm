; 0x003955c0  FUN_003955c0  size=144  status=real_c
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 36 words

  003955c0: addiu  $sp, $sp, -32      
  003955c4: addiu  $v1, $a0, +160     
  003955c8: addiu  $v0, $sp, +16      
  003955cc: op36    $a1,$s4,$zero     
  003955d0: op36    $v1,$s5,$zero     
  003955d4: op36    $v1,$s6,$zero     
  003955d8: op36    $v1,$s7,$zero     
  003955dc: op36    $v1,$t8,$zero     
  003955e0: cop2   $s5,$fp,$s4        
  003955e4: cop2   $s6,$fp,$s4        
  003955e8: cop2   $s7,$fp,$s4        
  003955ec: cop2   $t8,$fp,$zero      
  003955f0: op3e    $v0,$s4,$zero     
  003955f4: addiu  $v1, $sp, +0       
  003955f8: lw     $v0, +0($v0)       
  003955fc: sw     $v0, +0($v1)       
  00395600: addiu  $v0, $a0, +480     
  00395604: lwc1   $v0, +0($v1)       
  00395608: lwc1   $zero, +0($v0)     
  0039560c: lwc1   $at, +4($v1)       
  00395610: f10.1a $v0,$s0,$zero      
  00395614: lwc1   $zero, +4($v0)     
  00395618: lwc1   $v0, +8($v1)       
  0039561c: f10.1e $at,$s0,$zero      
  00395620: lwc1   $zero, +8($v0)     
  00395624: f10.1c $v0,$s0,$zero      
  00395628: lwc1   $zero, +496($a0)   
  0039562c: f10.34 $at,$s0,$zero      
  00395630: sll $zero, $zero, 0       
  00395634: f8.2   $zero,$t0,$at      
  00395638: addiu  $v0, $zero, +1     
  0039563c: dsubu $v0, $zero, $zero   
  00395640: jr     $ra                
  00395644: addiu  $sp, $sp, +32      
  00395648: sll $zero, $zero, 0       
  0039564c: sll $zero, $zero, 0       
