; 0x0042ac48  FUN_0042ac48  size=104  status=real_c
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x004297c0
; 26 words

  0042ac48: addiu  $sp, $sp, -32      
  0042ac4c: daddu $v0, $a1, $zero     
  0042ac50: sq     $s0, +0($sp)       
  0042ac54: daddu $a3, $a2, $zero     
  0042ac58: sq     $ra, +16($sp)      
  0042ac5c: daddu $s0, $a0, $zero     
  0042ac60: daddu $a2, $v0, $zero     
  0042ac64: lw     $a0, +84($s0)      
  0042ac68: jal   0xf04297c0             ; -> FUN_004297c0
  0042ac6c: lh     $a1, +14($s0)      
  0042ac70: daddu $a0, $v0, $zero     
  0042ac74: addiu  $v0, $zero, -1     
  0042ac78: bne    $a0, $v0, +12         ; br -> 0x0042ac88
  0042ac7c: lhu    $v0, +12($s0)      
  0042ac80: beq    $zero, $zero, +20     ; br -> 0x0042ac98
  0042ac84: andi   $v0, $v0, -4097    
  0042ac88: spec3c  $zero,$a0,$v1     
  0042ac8c: spec3f  $zero,$v1,$v1     
  0042ac90: sw     $v1, +80($s0)      
  0042ac94: ori    $v0, $v0, +4096    
  0042ac98: sh     $v0, +12($s0)      
  0042ac9c: lq     $ra, +16($sp)      
  0042aca0: daddu $v0, $a0, $zero     
  0042aca4: lq     $s0, +0($sp)       
  0042aca8: jr     $ra                
  0042acac: addiu  $sp, $sp, +32      
