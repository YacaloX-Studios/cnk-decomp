; 0x0040a820  FUN_0040a820  size=48  status=real_logic
; evidence: args=a0=-;a1=-;a2=-;a3=- ret=void calls=
; 12 words

  0040a820: lui   $at, 0x00700000     
  0040a824: jr     $ra                
  0040a828: sw     $a0, -10520($at)      ; GLOBAL 0x0070d6e8
  0040a82c: sll $zero, $zero, 0       
  0040a830: addiu  $v1, $zero, +2     
  0040a834: lui   $at, 0x00700000     
  0040a838: movz   $v1, $zero, $a0    
  0040a83c: jr     $ra                
  0040a840: sw     $v1, -10512($at)      ; GLOBAL 0x0070d6f0
  0040a844: sll $zero, $zero, 0       
  0040a848: sll $zero, $zero, 0       
  0040a84c: sll $zero, $zero, 0       

; globals: 0x0070d6e8(x1), 0x0070d6f0(x1)
