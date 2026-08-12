; 0x0013e950  FUN_0013e950  size=96  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=-;a3=- ret=ptr calls=
; 24 words

  0013e950: addiu  $sp, $sp, -16      
  0013e954: lbu    $v1, -31712($gp)   
  0013e958: beq    $v1, $zero, +12       ; br -> 0x0013e968
  0013e95c: sll $zero, $zero, 0       
  0013e960: beq    $zero, $zero, +56     ; br -> 0x0013e99c
  0013e964: addiu  $sp, $sp, +16      
  0013e968: lwc1   $v0, +0($a0)       
  0013e96c: lui   $v1, 0x006f0000     
  0013e970: lwc1   $at, +4($a0)       
  0013e974: addiu  $a1, $zero, +1     
  0013e978: lwc1   $zero, +8($a0)     
  0013e97c: sb     $a1, -31712($gp)   
  0013e980: swc1   $v0, +0($sp)       
  0013e984: swc1   $v0, +15160($v1)      ; GLOBAL 0x006f3b38
  0013e988: swc1   $at, +4($sp)       
  0013e98c: swc1   $at, +15164($v1)      ; GLOBAL 0x006f3b3c
  0013e990: swc1   $zero, +15168($v1)    ; GLOBAL 0x006f3b40
  0013e994: beq    $zero, $zero, -56     ; br -> 0x0013e960
  0013e998: swc1   $zero, +8($sp)     
  0013e99c: jr     $ra                
  0013e9a0: sll $zero, $zero, 0       
  0013e9a4: sll $zero, $zero, 0       
  0013e9a8: sll $zero, $zero, 0       
  0013e9ac: sll $zero, $zero, 0       

; globals: 0x006f3b38(x1), 0x006f3b3c(x1), 0x006f3b40(x1)
