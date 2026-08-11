; 0x003f6840  FUN_003f6840  size=160  status=real_c
; evidence: args=a0=ptr;a1=int;a2=-;a3=- ret=ptr calls=
; 40 words

  003f6840: addiu  $sp, $sp, -64      
  003f6844: addiu  $v0, $sp, +0       
  003f6848: op36    $a1,$at,$zero     
  003f684c: op36    $a2,$a1,$zero     
  003f6850: op36    $a1,$v0,$zero     
  003f6854: op36    $a1,$v1,$zero     
  003f6858: op36    $a1,$a0,$zero     
  003f685c: op36    $a2,$a2,$zero     
  003f6860: op36    $a2,$a3,$zero     
  003f6864: cop2   $at,$fp,$a1        
  003f6868: cop2   $v0,$fp,$a1        
  003f686c: cop2   $v1,$fp,$a1        
  003f6870: cop2   $at,$fp,$a2        
  003f6874: cop2   $v0,$fp,$a2        
  003f6878: cop2   $v1,$fp,$a2        
  003f687c: op36    $a2,$t0,$zero     
  003f6880: cop2   $a0,$fp,$a1        
  003f6884: cop2   $at,$fp,$a3        
  003f6888: cop2   $v0,$fp,$a3        
  003f688c: cop2   $v1,$fp,$a3        
  003f6890: cop2   $at,$fp,$t0        
  003f6894: cop2   $v0,$fp,$t0        
  003f6898: cop2   $v1,$fp,$t0        
  003f689c: op3e    $v0,$a1,$zero     
  003f68a0: op3e    $v0,$a2,$zero     
  003f68a4: op3e    $v0,$a3,$zero     
  003f68a8: op3e    $v0,$t0,$zero     
  003f68ac: lw     $a1, +0($v0)       
  003f68b0: lw     $v1, +16($v0)      
  003f68b4: sw     $a1, +0($a0)       
  003f68b8: sw     $v1, +16($a0)      
  003f68bc: lw     $a1, +32($v0)      
  003f68c0: lw     $v1, +48($v0)      
  003f68c4: sw     $a1, +32($a0)      
  003f68c8: sw     $v1, +48($a0)      
  003f68cc: dsubu  $zero, $a0, +0     
  003f68d0: jr     $ra                
  003f68d4: addiu  $sp, $sp, +64      
  003f68d8: sll    $zero, $zero, +0   
  003f68dc: sll    $zero, $zero, +0   
