; 0x0042ce18  FUN_0042ce18  size=456  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ret calls=0x0042c660;0x0042c708
; 114 words

  0042ce18: addiu  $sp, $sp, -112     
  0042ce1c: sw     $s5, +80($sp)      
  0042ce20: sw     $s4, +64($sp)      
  0042ce24: dsubu  $zero, $a0, +0     
  0042ce28: sw     $s2, +32($sp)      
  0042ce2c: dsubu  $zero, $a2, +0     
  0042ce30: sw     $s1, +16($sp)      
  0042ce34: dsubu  $zero, $a1, +0     
  0042ce38: sw     $s0, +0($sp)       
  0042ce3c: sra    $s4, $zero, +5     
  0042ce40: sw     $ra, +96($sp)      
  0042ce44: sw     $s3, +48($sp)      
  0042ce48: lw     $v1, +16($s2)      
  0042ce4c: lw     $a3, +8($s2)       
  0042ce50: addu   $v1, $s1, +0       
  0042ce54: addiu  $s0, $v1, +1       
  0042ce58: dadd   $s0, $a3, +0       
  0042ce5c: beq    $v0, $zero, +36       ; br -> 0x0042ce84
  0042ce60: lw     $a1, +4($s2)       
  0042ce64: sll    $zero, $zero, +0   
  0042ce68: sll    $a3, $zero, +1     
  0042ce6c: dadd   $s0, $a3, +0       
  0042ce70: sll    $zero, $zero, +0   
  0042ce74: sll    $zero, $zero, +0   
  0042ce78: sll    $zero, $zero, +0   
  0042ce7c: bne    $v0, $zero, -24       ; br -> 0x0046ce68
  0042ce80: addiu  $a1, $a1, +1       
  0042ce84: jal   0xf042c660             ; -> FUN_0042c660
  0042ce88: dsubu  $zero, $s5, +0     
  0042ce8c: dsubu  $zero, $v0, +0     
  0042ce90: andi   $a2, $s4, +31      
  0042ce94: addiu  $v1, $s2, +20      
  0042ce98: blez   $s1, $zero, +40       ; br -> 0x0042cec4
  0042ce9c: addiu  $t0, $s3, +20      
  0042cea0: dsubu  $zero, $s1, +0     
  0042cea4: sll    $zero, $zero, +0   
  0042cea8: sw     $zero, +0($t0)     
  0042ceac: addiu  $a3, $a3, -1       
  0042ceb0: sll    $zero, $zero, +0   
  0042ceb4: sll    $zero, $zero, +0   
  0042ceb8: sll    $zero, $zero, +0   
  0042cebc: bne    $a3, $zero, -24       ; br -> 0x0046cea8
  0042cec0: addiu  $t0, $t0, +4       
  0042cec4: lw     $v0, +16($s2)      
  0042cec8: dsubu  $zero, $v1, +0     
  0042cecc: sll    $v0, $zero, +2     
  0042ced0: beq    $a2, $zero, +76       ; br -> 0x0042cf20
  0042ced4: addu   $v0, $a0, +0       
  0042ced8: addiu  $v0, $zero, +32    
  0042cedc: dsubu  $zero, $zero, +0   
  0042cee0: subu   $a2, $v0, +0       
  0042cee4: addiu  $t1, $s0, +1       
  0042cee8: lw     $v0, +0($a0)       
  0042ceec: sllv   $v0, $a2, +0       
  0042cef0: or     $v1, $v0, +0       
  0042cef4: sw     $v0, +0($t0)       
  0042cef8: addiu  $t0, $t0, +4       
  0042cefc: lw     $v1, +0($a0)       
  0042cf00: addiu  $a0, $a0, +4       
  0042cf04: daddu  $a3, $a0, +0       
  0042cf08: bne    $v0, $zero, -36       ; br -> 0x0046cee8
  0042cf0c: srlv   $v1, $a1, +0       
  0042cf10: movn    $t1,$v1,$s0       
  0042cf14: beq    $zero, $zero, +36     ; br -> 0x0042cf3c
  0042cf18: sw     $v1, +0($t0)       
  0042cf1c: sll    $zero, $zero, +0   
  0042cf20: lw     $v0, +0($a0)       
  0042cf24: addiu  $a0, $a0, +4       
  0042cf28: sw     $v0, +0($t0)       
  0042cf2c: daddu  $a3, $a0, +0       
  0042cf30: sll    $zero, $zero, +0   
  0042cf34: bne    $v1, $zero, -24       ; br -> 0x0046cf20
  0042cf38: addiu  $t0, $t0, +4       
  0042cf3c: addiu  $v0, $s0, -1       
  0042cf40: dsubu  $zero, $s5, +0     
  0042cf44: sw     $v0, +16($s3)      
  0042cf48: jal   0xf042c708             ; -> 0x0042c708
  0042cf4c: dsubu  $zero, $s2, +0     
  0042cf50: dsubu  $zero, $s3, +0     
  0042cf54: lw     $ra, +96($sp)      
  0042cf58: lw     $s5, +80($sp)      
  0042cf5c: lw     $s4, +64($sp)      
  0042cf60: lw     $s3, +48($sp)      
  0042cf64: lw     $s2, +32($sp)      
  0042cf68: lw     $s1, +16($sp)      
  0042cf6c: lw     $s0, +0($sp)       
  0042cf70: jr     $ra                
  0042cf74: addiu  $sp, $sp, +112     
  0042cf78: lw     $v1, +16($a1)      
  0042cf7c: lw     $v0, +16($a0)      
  0042cf80: subu   $v1, $v0, +0       
  0042cf84: beq    $v0, $zero, +28       ; br -> 0x0042cfa4
  0042cf88: sll    $v1, $zero, +2     
  0042cf8c: jr     $ra                
  0042cf90: sll    $zero, $zero, +0   
  0042cf94: addiu  $v1, $zero, +1     
  0042cf98: addiu  $v0, $zero, -1     
  0042cf9c: jr     $ra                
  0042cfa0: movz    $v1,$a0,$v0       
  0042cfa4: addiu  $a3, $a0, +20      
  0042cfa8: addiu  $v0, $a1, +20      
  0042cfac: addu   $v1, $a3, +0       
  0042cfb0: addu   $v1, $v0, +0       
  0042cfb4: addiu  $a2, $a2, -4       
  0042cfb8: addiu  $v1, $v1, -4       
  0042cfbc: lw     $v0, +0($a2)       
  0042cfc0: lw     $a0, +0($v1)       
  0042cfc4: bnel   $v0, $a0, -52         ; br -> 0x0046cf94
  0042cfc8: daddu  $a0, $v0, +0       
  0042cfcc: daddu  $a2, $a3, +0       
  0042cfd0: bne    $v0, $zero, -28       ; br -> 0x0046cfb8
  0042cfd4: addiu  $a2, $a2, -4       
  0042cfd8: jr     $ra                
  0042cfdc: dsubu  $zero, $zero, +0   
