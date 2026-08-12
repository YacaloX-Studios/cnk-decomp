; 0x00530050  FUN_00530050  size=48  status=real_c
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=void calls=
; 12 words

  00530050: lbu    $v1, +1($a0)       
  00530054: addiu  $sp, $sp, -16      
  00530058: sb     $v1, +14($sp)      
  0053005c: lbu    $v1, +0($a0)       
  00530060: sb     $v1, +15($sp)      
  00530064: lhu    $v1, +14($sp)      
  00530068: sh     $v1, +0($a0)       
  0053006c: jr     $ra                
  00530070: addiu  $sp, $sp, +16      
  00530074: sll $zero, $zero, 0       
  00530078: sll $zero, $zero, 0       
  0053007c: sll $zero, $zero, 0       
