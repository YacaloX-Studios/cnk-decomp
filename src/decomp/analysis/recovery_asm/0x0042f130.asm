; 0x0042f130  FUN_0042f130  size=40  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x003fb8d0;0x0042f100
; 10 words

  0042f130: addiu  $sp, $sp, -16      
  0042f134: sw     $ra, +0($sp)       
  0042f138: jal   0xf042f100             ; -> FUN_0042f100
  0042f13c: sll $zero, $zero, 0       
  0042f140: jal   0xf03fb8d0             ; -> 0x003fb8d0
  0042f144: dsubu $a0, $v0, $zero     
  0042f148: lw     $ra, +0($sp)       
  0042f14c: jr     $ra                
  0042f150: addiu  $sp, $sp, +16      
  0042f154: sll $zero, $zero, 0       
