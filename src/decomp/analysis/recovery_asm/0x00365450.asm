; 0x00365450  FUN_00365450  size=48  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 12 words

  00365450: addiu  $sp, $sp, -16      
  00365454: addiu  $v0, $sp, +0       
  00365458: op36    $a1,$at,$zero     
  0036545c: cop2   $zero,$fp,$at      
  00365460: op3e    $v0,$at,$zero     
  00365464: lw     $v0, +0($v0)       
  00365468: sw     $v0, +0($a0)       
  0036546c: dsubu $v0, $a0, $zero     
  00365470: jr     $ra                
  00365474: addiu  $sp, $sp, +16      
  00365478: sll $zero, $zero, 0       
  0036547c: sll $zero, $zero, 0       
