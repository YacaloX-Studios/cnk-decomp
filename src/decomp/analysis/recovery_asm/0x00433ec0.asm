; 0x00433ec0  FUN_00433ec0  size=48  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00433ef0
; 12 words

  00433ec0: addiu  $sp, $sp, -16      
  00433ec4: dsubu $v0, $a0, $zero     
  00433ec8: sw     $ra, +0($sp)       
  00433ecc: dsubu $v1, $a1, $zero     
  00433ed0: dsubu $a3, $a2, $zero     
  00433ed4: dsubu $a1, $v0, $zero     
  00433ed8: lw     $a0, +84($v0)      
  00433edc: jal   0xf0433ef0             ; -> FUN_00433ef0
  00433ee0: dsubu $a2, $v1, $zero     
  00433ee4: lw     $ra, +0($sp)       
  00433ee8: jr     $ra                
  00433eec: addiu  $sp, $sp, +16      
