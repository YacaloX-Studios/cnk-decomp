; 0x0042bd98  FUN_0042bd98  size=32  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042f100
; 8 words

  0042bd98: addiu  $sp, $sp, -16      
  0042bd9c: sq     $ra, +0($sp)       
  0042bda0: jal   0xf042f100             ; -> FUN_0042f100
  0042bda4: daddu $a1, $zero, $zero   
  0042bda8: lq     $ra, +0($sp)       
  0042bdac: jr     $ra                
  0042bdb0: addiu  $sp, $sp, +16      
  0042bdb4: sll $zero, $zero, 0       
