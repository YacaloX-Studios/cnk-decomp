; 0x00429b80  FUN_00429b80  size=224  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x00429b08;0x00429c60
; 56 words

  00429b80: addiu  $sp, $sp, -48      
  00429b84: sw     $s1, +16($sp)      
  00429b88: sw     $ra, +32($sp)      
  00429b8c: dsubu $s1, $a0, $zero     
  00429b90: sw     $s0, +0($sp)       
  00429b94: lw     $v0, +56($s1)      
  00429b98: bne    $v0, $zero, +12       ; br -> 0x00429ba8
  00429b9c: addiu  $s0, $s1, +472     
  00429ba0: jal   0xf0429c60             ; -> FUN_00429c60
  00429ba4: sll $zero, $zero, 0       
  00429ba8: lw     $v1, +4($s0)       
  00429bac: addiu  $v1, $v1, -1       
  00429bb0: regimm $v1, $zero, +32       ; br -> 0x00429bd4
  00429bb4: lw     $a0, +8($s0)       
  00429bb8: lw     $v0, +12($a0)      
  00429bbc: beq    $v0, $zero, +76       ; br -> 0x00429c0c
  00429bc0: addiu  $v1, $v1, -1       
  00429bc4: sll $zero, $zero, 0       
  00429bc8: sll $zero, $zero, 0       
  00429bcc: regimm $v1, $at, -24         ; br -> 0x00429bb8
  00429bd0: addiu  $a0, $a0, +88      
  00429bd4: lw     $v0, +0($s0)       
  00429bd8: bnel   $v0, $zero, -52       ; br -> 0x00429ba8
  00429bdc: lw     $s0, +0($s0)       
  00429be0: dsubu $a0, $s1, $zero     
  00429be4: jal   0xf0429b08             ; -> FUN_00429b08
  00429be8: addiu  $a1, $zero, +4     
  00429bec: beq    $v0, $zero, +12       ; br -> 0x00429bfc
  00429bf0: sw     $v0, +0($s0)       
  00429bf4: beq    $zero, $zero, -80     ; br -> 0x00429ba8
  00429bf8: lw     $s0, +0($s0)       
  00429bfc: addiu  $v1, $zero, +12    
  00429c00: dsubu $v0, $zero, $zero   
  00429c04: beq    $zero, $zero, +68     ; br -> 0x00429c4c
  00429c08: sw     $v1, +0($s1)       
  00429c0c: addiu  $v0, $zero, +1     
  00429c10: addiu  $v1, $zero, -1     
  00429c14: sw     $v0, +12($a0)      
  00429c18: sw     $v1, +14($a0)      
  00429c1c: dsubu $v0, $a0, $zero     
  00429c20: sw     $s1, +84($a0)      
  00429c24: sw     $zero, +0($a0)     
  00429c28: sw     $zero, +8($a0)     
  00429c2c: sw     $zero, +4($a0)     
  00429c30: sw     $zero, +16($a0)    
  00429c34: sw     $zero, +20($a0)    
  00429c38: sw     $zero, +24($a0)    
  00429c3c: sw     $zero, +48($a0)    
  00429c40: sw     $zero, +52($a0)    
  00429c44: sw     $zero, +68($a0)    
  00429c48: sw     $zero, +72($a0)    
  00429c4c: lw     $ra, +32($sp)      
  00429c50: lw     $s1, +16($sp)      
  00429c54: lw     $s0, +0($sp)       
  00429c58: jr     $ra                
  00429c5c: addiu  $sp, $sp, +48      
