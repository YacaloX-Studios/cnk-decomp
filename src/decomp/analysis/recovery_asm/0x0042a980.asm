; 0x0042a980  FUN_0042a980  size=72  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x0042a818
; 18 words

  0042a980: addiu  $sp, $sp, -32      
  0042a984: sw     $s0, +0($sp)       
  0042a988: sw     $ra, +16($sp)      
  0042a98c: jal   0xf042a818             ; -> FUN_0042a818
  0042a990: dsubu  $zero, $a0, +0     
  0042a994: bne    $v0, $zero, +32       ; br -> 0x0042a9b8
  0042a998: addiu  $v0, $zero, -1     
  0042a99c: lw     $v0, +4($s0)       
  0042a9a0: lw     $v1, +0($s0)       
  0042a9a4: addiu  $v0, $v0, -1       
  0042a9a8: sw     $v0, +4($s0)       
  0042a9ac: lw     $v0, +0($v1)       
  0042a9b0: addiu  $v1, $v1, +1       
  0042a9b4: sw     $v1, +0($s0)       
  0042a9b8: lw     $ra, +16($sp)      
  0042a9bc: lw     $s0, +0($sp)       
  0042a9c0: jr     $ra                
  0042a9c4: addiu  $sp, $sp, +32      
