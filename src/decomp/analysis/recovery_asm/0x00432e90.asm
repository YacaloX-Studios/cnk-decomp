; 0x00432e90  FUN_00432e90  size=40  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ret calls=0x00432eb8
; 10 words

  00432e90: addiu  $sp, $sp, -16      
  00432e94: dsubu  $zero, $zero, +0   
  00432e98: sw     $ra, +0($sp)       
  00432e9c: dsubu  $zero, $zero, +0   
  00432ea0: addiu  $a3, $zero, +2     
  00432ea4: jal   0xf0432eb8             ; -> 0x00432eb8
  00432ea8: lw     $a0, +14($a0)      
  00432eac: lw     $ra, +0($sp)       
  00432eb0: jr     $ra                
  00432eb4: addiu  $sp, $sp, +16      
