; 0x001207c0  FUN_001207c0  size=80  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=void calls=
; 20 words

  001207c0: addiu  $sp, $sp, -16      
  001207c4: addiu  $v1, $sp, +0       
  001207c8: fmove  $zero,$zero,$a2    
  001207cc: op36    $a1,$at,$zero     
  001207d0: cop2   $v0,$a1,$a2        
  001207d4: cop2   $at,$fp,$v0        
  001207d8: op3e    $v1,$at,$zero     
  001207dc: lw     $v1, +0($v1)       
  001207e0: sw     $v1, +0($a0)       
  001207e4: jr     $ra                
  001207e8: addiu  $sp, $sp, +16      
  001207ec: sll $zero, $zero, 0       
  001207f0: sw     $zero, +8($a0)     
  001207f4: lui   $v1, 0x3f800000     
  001207f8: sw     $zero, +4($a0)     
  001207fc: dsubu $v0, $a0, $zero     
  00120800: sw     $zero, +0($a0)     
  00120804: jr     $ra                
  00120808: sw     $v1, +12($a0)      
  0012080c: sll $zero, $zero, 0       
