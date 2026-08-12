; 0x0042bd70  FUN_0042bd70  size=40  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x00108ee8
; 10 words

  0042bd70: addiu  $sp, $sp, -16      
  0042bd74: sq     $ra, +0($sp)       
  0042bd78: jal   0xf0108ee8             ; -> FUN_00108ee8
  0042bd7c: addiu  $a0, $zero, +1     
  0042bd80: regimm $a0, $at, +8          ; br -> 0x0042bd8c
  0042bd84: daddu $v0, $a0, $zero     
  0042bd88: subu $v0, $zero, $v0      
  0042bd8c: jr     $ra                
  0042bd90: sll $zero, $zero, 0       
  0042bd94: sll $zero, $zero, 0       
