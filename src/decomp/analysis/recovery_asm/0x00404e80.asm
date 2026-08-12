; 0x00404e80  FUN_00404e80  size=80  status=real_logic
; evidence: args=a0=-;a1=-;a2=-;a3=int ret=int calls=
; 20 words

  00404e80: addiu  $sp, $sp, -16      
  00404e84: subu $v0, $a3, $a2        
  00404e88: srl $v0, $v0, 2           
  00404e8c: sw     $t0, +8($sp)       
  00404e90: dadd $at, $t0, $v0        
  00404e94: beq    $at, $zero, +12       ; br -> 0x00404ea4
  00404e98: sw     $v0, +12($sp)      
  00404e9c: beq    $zero, $zero, +8      ; br -> 0x00404ea8
  00404ea0: addiu  $v0, $sp, +8       
  00404ea4: addiu  $v0, $sp, +12      
  00404ea8: lw     $v0, +0($v0)       
  00404eac: sll $v0, $v0, 2           
  00404eb0: jr     $ra                
  00404eb4: addiu  $sp, $sp, +16      
  00404eb8: sll $zero, $zero, 0       
  00404ebc: sll $zero, $zero, 0       
  00404ec0: jr     $ra                
  00404ec4: addiu  $v0, $zero, +4     
  00404ec8: sll $zero, $zero, 0       
  00404ecc: sll $zero, $zero, 0       
