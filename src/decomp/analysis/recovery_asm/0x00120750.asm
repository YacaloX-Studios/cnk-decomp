; 0x00120750  FUN_00120750  size=112  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=void calls=
; 28 words

  00120750: addiu  $sp, $sp, -16      
  00120754: addiu  $v1, $sp, +0       
  00120758: fmove  $zero,$zero,$a2    
  0012075c: op36    $a1,$at,$zero     
  00120760: cop2   $v0,$a1,$a2        
  00120764: cop2   $at,$fp,$v0        
  00120768: op3e    $v1,$at,$zero     
  0012076c: lw     $v1, +0($v1)       
  00120770: sw     $v1, +0($a0)       
  00120774: jr     $ra                
  00120778: addiu  $sp, $sp, +16      
  0012077c: sll $zero, $zero, 0       
  00120780: lwc1   $v0, +0($a0)       
  00120784: lwc1   $zero, +0($a1)     
  00120788: lwc1   $at, +4($a0)       
  0012078c: f10.1a $v0,$s0,$zero      
  00120790: lwc1   $zero, +4($a1)     
  00120794: lwc1   $v0, +8($a0)       
  00120798: f10.1e $at,$s0,$zero      
  0012079c: lwc1   $zero, +8($a1)     
  001207a0: f10.1c $v0,$s0,$zero      
  001207a4: jr     $ra                
  001207a8: sll $zero, $zero, 0       
  001207ac: sll $zero, $zero, 0       
  001207b0: lw     $v0, +0($a1)       
  001207b4: sw     $v0, +0($a0)       
  001207b8: jr     $ra                
  001207bc: dsubu $v0, $a0, $zero     
