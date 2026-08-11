; 0x0042a7f8  FUN_0042a7f8  size=32  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x004299a0
; 8 words

  0042a7f8: addiu  $sp, $sp, -16      
  0042a7fc: sw     $ra, +0($sp)       
  0042a800: jal   0xf04299a0             ; -> FUN_004299a0
  0042a804: sll    $zero, $zero, +0   
  0042a808: lw     $ra, +0($sp)       
  0042a80c: jr     $ra                
  0042a810: addiu  $sp, $sp, +16      
  0042a814: sll    $zero, $zero, +0   
