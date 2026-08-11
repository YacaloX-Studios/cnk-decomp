; 0x00433ec0  FUN_00433ec0  size=48  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00433ef0
; 12 words

  00433ec0: addiu  $sp, $sp, -16      
  00433ec4: dsubu  $zero, $a0, +0     
  00433ec8: sw     $ra, +0($sp)       
  00433ecc: dsubu  $zero, $a1, +0     
  00433ed0: dsubu  $zero, $a2, +0     
  00433ed4: dsubu  $zero, $v0, +0     
  00433ed8: lw     $a0, +84($v0)      
  00433edc: jal   0xf0433ef0             ; -> FUN_00433ef0
  00433ee0: dsubu  $zero, $v1, +0     
  00433ee4: lw     $ra, +0($sp)       
  00433ee8: jr     $ra                
  00433eec: addiu  $sp, $sp, +16      
