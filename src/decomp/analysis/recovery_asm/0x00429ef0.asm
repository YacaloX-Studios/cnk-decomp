; 0x00429ef0  FUN_00429ef0  size=32  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042a5e8
; 8 words

  00429ef0: addiu  $sp, $sp, -16      
  00429ef4: lui   $a1, 0x00430000     
  00429ef8: sw     $ra, +0($sp)       
  00429efc: jal   0xf042a5e8             ; -> FUN_0042a5e8
  00429f00: addiu  $a1, $a1, -26208   
  00429f04: lw     $ra, +0($sp)       
  00429f08: jr     $ra                
  00429f0c: addiu  $sp, $sp, +16      
