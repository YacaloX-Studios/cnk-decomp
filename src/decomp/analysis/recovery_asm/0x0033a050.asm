; 0x0033a050  FUN_0033a050  size=112  status=real_logic
; evidence: args=a0=ptr;a1=w;a2=w;a3=- ret=void calls=
; 28 words

  0033a050: addiu  $sp, $sp, -64      
  0033a054: addiu  $a1, $a0, +64      
  0033a058: lwc1   $zero, +48($a0)    
  0033a05c: addiu  $v1, $sp, +0       
  0033a060: fmove  $zero,$zero,$a2    
  0033a064: op36    $a1,$at,$zero     
  0033a068: cop2   $v0,$a1,$a2        
  0033a06c: cop2   $at,$fp,$v0        
  0033a070: op3e    $v1,$at,$zero     
  0033a074: addiu  $a2, $sp, +32      
  0033a078: lq     $v1, +0($v1)       
  0033a07c: sq     $v1, +0($a2)       
  0033a080: addiu  $a1, $a0, +16      
  0033a084: addiu  $v1, $sp, +16      
  0033a088: op36    $a1,$at,$zero     
  0033a08c: op36    $a2,$v0,$zero     
  0033a090: cop2   $at,$fp,$v0        
  0033a094: op3e    $v1,$at,$zero     
  0033a098: addiu  $a1, $sp, +48      
  0033a09c: lq     $v1, +0($v1)       
  0033a0a0: sq     $v1, +0($a1)       
  0033a0a4: addiu  $v1, $a0, +32      
  0033a0a8: lq     $a0, +0($a1)       
  0033a0ac: sq     $a0, +0($v1)       
  0033a0b0: jr     $ra                
  0033a0b4: addiu  $sp, $sp, +64      
  0033a0b8: sll $zero, $zero, 0       
  0033a0bc: sll $zero, $zero, 0       
