; 0x00108ee8  FUN_00108ee8  size=72  status=real_logic
; evidence: args=a0=int;a1=-;a2=-;a3=- ret=void calls=
; 18 words

  00108ee8: j     0x00445d90          
  00108eec: or     $zero, $zero, +0   
  00108ef0: addiu  $v1, $zero, +35    
  00108ef4: syscall $zero,$zero,$zero 
  00108ef8: sll    $zero, $zero, +0   
  00108efc: sll    $zero, $zero, +0   
  00108f00: addiu  $a0, $zero, +2     
  00108f04: lui   $v1, 0x00720000     
  00108f08: sw     $a0, +24736($v1)      ; GLOBAL 0x007260a0
  00108f0c: lui   $v1, 0x00720000     
  00108f10: sw     $zero, -31784($gp) 
  00108f14: sw     $zero, +24744($v1)    ; GLOBAL 0x007260a8
  00108f18: lui   $v1, 0x00720000     
  00108f1c: jr     $ra                
  00108f20: sw     $zero, +24760($v1)    ; GLOBAL 0x007260b8
  00108f24: sll    $zero, $zero, +0   
  00108f28: sll    $zero, $zero, +0   
  00108f2c: sll    $zero, $zero, +0   

; globals: 0x007260a0(x1), 0x007260a8(x1), 0x007260b8(x1)
