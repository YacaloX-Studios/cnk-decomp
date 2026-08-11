; 0x0043f5b8  FUN_0043f5b8  size=48  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=-;a3=- ret=ptr calls=
; 12 words

  0043f5b8: lw     $a1, +36($a0)      
  0043f5bc: lw     $v1, +24($a0)      
  0043f5c0: div    $v1, $a1, +0       
  0043f5c4: beql   $v1, $zero, +4        ; br -> 0x0043f5cc
  0043f5c8: break   $zero,$zero,$zero 
  0043f5cc: lw     $a1, +20($a0)      
  0043f5d0: mfhi   $zero, $zero, +0   
  0043f5d4: addiu  $v1, $v0, +1       
  0043f5d8: sll    $v0, $zero, +6     
  0043f5dc: sw     $v1, +36($a0)      
  0043f5e0: jr     $ra                
  0043f5e4: addu   $v0, $a1, +0       
