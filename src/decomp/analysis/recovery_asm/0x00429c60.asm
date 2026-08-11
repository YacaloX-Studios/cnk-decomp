; 0x00429c60  FUN_00429c60  size=144  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x00429ab0
; 36 words

  00429c60: addiu  $sp, $sp, -48      
  00429c64: lui   $v0, 0x00430000     
  00429c68: sw     $s0, +0($sp)       
  00429c6c: addiu  $v0, $v0, -24848   
  00429c70: dsubu  $zero, $a0, +0     
  00429c74: sw     $s1, +16($sp)      
  00429c78: sw     $ra, +32($sp)      
  00429c7c: addiu  $v1, $zero, +1     
  00429c80: addiu  $s1, $s0, +484     
  00429c84: sw     $v0, +60($s0)      
  00429c88: sw     $v1, +56($s0)      
  00429c8c: dsubu  $zero, $s1, +0     
  00429c90: dsubu  $zero, $s0, +0     
  00429c94: addiu  $a1, $zero, +4     
  00429c98: jal   0xf0429ab0             ; -> 0x00429ab0
  00429c9c: dsubu  $zero, $zero, +0   
  00429ca0: addiu  $a0, $s0, +572     
  00429ca4: dsubu  $zero, $s0, +0     
  00429ca8: addiu  $a1, $zero, +9     
  00429cac: jal   0xf0429ab0             ; -> 0x00429ab0
  00429cb0: addiu  $a2, $zero, +1     
  00429cb4: addiu  $a0, $s0, +660     
  00429cb8: dsubu  $zero, $s0, +0     
  00429cbc: addiu  $a1, $zero, +10    
  00429cc0: jal   0xf0429ab0             ; -> 0x00429ab0
  00429cc4: addiu  $a2, $zero, +2     
  00429cc8: addiu  $v0, $zero, +3     
  00429ccc: sw     $s1, +480($s0)     
  00429cd0: sw     $v0, +476($s0)     
  00429cd4: sw     $zero, +472($s0)   
  00429cd8: lw     $ra, +32($sp)      
  00429cdc: lw     $s1, +16($sp)      
  00429ce0: lw     $s0, +0($sp)       
  00429ce4: jr     $ra                
  00429ce8: addiu  $sp, $sp, +48      
  00429cec: sll    $zero, $zero, +0   
