; 0x001206f0  FUN_001206f0  size=48  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=void calls=
; 12 words

  001206f0: addiu  $sp, $sp, -16      
  001206f4: addiu  $v1, $sp, +0       
  001206f8: op36    $a1,$at,$zero     
  001206fc: op36    $a2,$v0,$zero     
  00120700: cop2   $at,$fp,$v0        
  00120704: op3e    $v1,$at,$zero     
  00120708: lw     $v1, +0($v1)       
  0012070c: sw     $v1, +0($a0)       
  00120710: jr     $ra                
  00120714: addiu  $sp, $sp, +16      
  00120718: sll $zero, $zero, 0       
  0012071c: sll $zero, $zero, 0       
