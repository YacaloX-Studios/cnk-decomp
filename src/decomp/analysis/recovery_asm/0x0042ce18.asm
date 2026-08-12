; 0x0042ce18  FUN_0042ce18  size=456  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ret calls=0x0042c660;0x0042c708
; 114 words

  0042ce18: addiu  $sp, $sp, -112     
  0042ce1c: sq     $s5, +80($sp)      
  0042ce20: sq     $s4, +64($sp)      
  0042ce24: daddu $s5, $a0, $zero     
  0042ce28: sq     $s2, +32($sp)      
  0042ce2c: daddu $s4, $a2, $zero     
  0042ce30: sq     $s1, +16($sp)      
  0042ce34: daddu $s2, $a1, $zero     
  0042ce38: sq     $s0, +0($sp)       
  0042ce3c: sra $s1, $s4, 5           
  0042ce40: sq     $ra, +96($sp)      
  0042ce44: sq     $s3, +48($sp)      
  0042ce48: lw     $v1, +16($s2)      
  0042ce4c: lw     $a3, +8($s2)       
  0042ce50: addu $v1, $s1, $v1        
  0042ce54: addiu  $s0, $v1, +1       
  0042ce58: slt $v0, $a3, $s0         
  0042ce5c: beq    $v0, $zero, +36       ; br -> 0x0042ce84
  0042ce60: lw     $a1, +4($s2)       
  0042ce64: sll $zero, $zero, 0       
  0042ce68: sll $a3, $a3, 1           
  0042ce6c: slt $v0, $a3, $s0         
  0042ce70: sll $zero, $zero, 0       
  0042ce74: sll $zero, $zero, 0       
  0042ce78: sll $zero, $zero, 0       
  0042ce7c: bne    $v0, $zero, -24       ; br -> 0x0042ce68
  0042ce80: addiu  $a1, $a1, +1       
  0042ce84: jal   0xf042c660             ; -> FUN_0042c660
  0042ce88: daddu $a0, $s5, $zero     
  0042ce8c: daddu $s3, $v0, $zero     
  0042ce90: andi   $a2, $s4, +31      
  0042ce94: addiu  $v1, $s2, +20      
  0042ce98: blez   $s1, $zero, +40       ; br -> 0x0042cec4
  0042ce9c: addiu  $t0, $s3, +20      
  0042cea0: daddu $a3, $s1, $zero     
  0042cea4: sll $zero, $zero, 0       
  0042cea8: sw     $zero, +0($t0)     
  0042ceac: addiu  $a3, $a3, -1       
  0042ceb0: sll $zero, $zero, 0       
  0042ceb4: sll $zero, $zero, 0       
  0042ceb8: sll $zero, $zero, 0       
  0042cebc: bne    $a3, $zero, -24       ; br -> 0x0042cea8
  0042cec0: addiu  $t0, $t0, +4       
  0042cec4: lw     $v0, +16($s2)      
  0042cec8: daddu $a0, $v1, $zero     
  0042cecc: sll $v0, $v0, 2           
  0042ced0: beq    $a2, $zero, +76       ; br -> 0x0042cf20
  0042ced4: addu $a3, $a0, $v0        
  0042ced8: addiu  $v0, $zero, +32    
  0042cedc: daddu $v1, $zero, $zero   
  0042cee0: subu $a1, $v0, $a2        
  0042cee4: addiu  $t1, $s0, +1       
  0042cee8: lw     $v0, +0($a0)       
  0042ceec: sllv $v0, $v0, $a2        
  0042cef0: or $v0, $v0, $v1          
  0042cef4: sw     $v0, +0($t0)       
  0042cef8: addiu  $t0, $t0, +4       
  0042cefc: lw     $v1, +0($a0)       
  0042cf00: addiu  $a0, $a0, +4       
  0042cf04: sltu $v0, $a0, $a3        
  0042cf08: bne    $v0, $zero, -36       ; br -> 0x0042cee8
  0042cf0c: srlv $v1, $v1, $a1        
  0042cf10: movn   $s0, $t1, $v1      
  0042cf14: beq    $zero, $zero, +36     ; br -> 0x0042cf3c
  0042cf18: sw     $v1, +0($t0)       
  0042cf1c: sll $zero, $zero, 0       
  0042cf20: lw     $v0, +0($a0)       
  0042cf24: addiu  $a0, $a0, +4       
  0042cf28: sw     $v0, +0($t0)       
  0042cf2c: sltu $v1, $a0, $a3        
  0042cf30: sll $zero, $zero, 0       
  0042cf34: bne    $v1, $zero, -24       ; br -> 0x0042cf20
  0042cf38: addiu  $t0, $t0, +4       
  0042cf3c: addiu  $v0, $s0, -1       
  0042cf40: daddu $a0, $s5, $zero     
  0042cf44: sw     $v0, +16($s3)      
  0042cf48: jal   0xf042c708             ; -> 0x0042c708
  0042cf4c: daddu $a1, $s2, $zero     
  0042cf50: daddu $v0, $s3, $zero     
  0042cf54: lq     $ra, +96($sp)      
  0042cf58: lq     $s5, +80($sp)      
  0042cf5c: lq     $s4, +64($sp)      
  0042cf60: lq     $s3, +48($sp)      
  0042cf64: lq     $s2, +32($sp)      
  0042cf68: lq     $s1, +16($sp)      
  0042cf6c: lq     $s0, +0($sp)       
  0042cf70: jr     $ra                
  0042cf74: addiu  $sp, $sp, +112     
  0042cf78: lw     $v1, +16($a1)      
  0042cf7c: lw     $v0, +16($a0)      
  0042cf80: subu $v0, $v0, $v1        
  0042cf84: beq    $v0, $zero, +28       ; br -> 0x0042cfa4
  0042cf88: sll $v1, $v1, 2           
  0042cf8c: jr     $ra                
  0042cf90: sll $zero, $zero, 0       
  0042cf94: addiu  $v1, $zero, +1     
  0042cf98: addiu  $v0, $zero, -1     
  0042cf9c: jr     $ra                
  0042cfa0: movz   $v0, $v1, $a0      
  0042cfa4: addiu  $a3, $a0, +20      
  0042cfa8: addiu  $v0, $a1, +20      
  0042cfac: addu $a2, $a3, $v1        
  0042cfb0: addu $v1, $v0, $v1        
  0042cfb4: addiu  $a2, $a2, -4       
  0042cfb8: addiu  $v1, $v1, -4       
  0042cfbc: lw     $v0, +0($a2)       
  0042cfc0: lw     $a0, +0($v1)       
  0042cfc4: bnel   $v0, $a0, -52         ; br -> 0x0042cf94
  0042cfc8: sltu $a0, $v0, $a0        
  0042cfcc: sltu $v0, $a3, $a2        
  0042cfd0: bne    $v0, $zero, -28       ; br -> 0x0042cfb8
  0042cfd4: addiu  $a2, $a2, -4       
  0042cfd8: jr     $ra                
  0042cfdc: daddu $v0, $zero, $zero   
