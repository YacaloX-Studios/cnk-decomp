; 0x0045d6f0  FUN_0045d6f0  size=48  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=- ret=int calls=
; 12 words

  0045d6f0: lui   $a2, 0x00710000     
  0045d6f4: lui   $v0, 0x00660000     
  0045d6f8: addiu  $a2, $a2, -5824    
  0045d6fc: addiu  $v0, $v0, -19008   
  0045d700: sw     $a2, +0($a0)       
  0045d704: sw     $v0, +0($a1)       
  0045d708: lui   $a0, 0x00660000     
  0045d70c: lui   $v0, 0x00710000     
  0045d710: lw     $v1, -19004($a0)      ; GLOBAL 0x0066b5c4
  0045d714: addiu  $v0, $v0, -11392   
  0045d718: jr     $ra                
  0045d71c: sw     $v1, +60($a2)         ; GLOBAL 0x0071003c

; globals: 0x0066b5c4(x1), 0x0071003c(x1)
