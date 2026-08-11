; 0x004238c0  FUN_004238c0  size=32  status=real_logic
; evidence: args=a0=w;a1=-;a2=-;a3=- ret=ptr calls=
; 8 words

  004238c0: lui   $at, 0x00700000     
  004238c4: lw     $v0, +23680($at)      ; GLOBAL 0x00705c80
  004238c8: daddu  $a0, $v0, +0       
  004238cc: jr     $ra                
  004238d0: xori   $v0, $v0, +1       
  004238d4: sll    $zero, $zero, +0   
  004238d8: sll    $zero, $zero, +0   
  004238dc: sll    $zero, $zero, +0   

; globals: 0x00705c80(x1)
