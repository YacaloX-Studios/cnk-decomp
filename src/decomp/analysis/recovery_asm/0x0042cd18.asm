; 0x0042cd18  FUN_0042cd18  size=256  status=real_logic
; evidence: args=a0=int;a1=ptr;a2=int;a3=int ret=ptr calls=0x0042c708;0x0042c740;0x0042cac8;0x0042cb00
; 64 words

  0042cd18: addiu  $sp, $sp, -80      
  0042cd1c: sw     $s1, +16($sp)      
  0042cd20: sw     $s3, +48($sp)      
  0042cd24: dsubu $s1, $a2, $zero     
  0042cd28: sw     $s2, +32($sp)      
  0042cd2c: dsubu $s3, $a0, $zero     
  0042cd30: sw     $ra, +64($sp)      
  0042cd34: andi   $v1, $s1, +3       
  0042cd38: sw     $s0, +0($sp)       
  0042cd3c: beq    $v1, $zero, +40       ; br -> 0x0042cd68
  0042cd40: dsubu $s2, $a1, $zero     
  0042cd44: addiu  $v1, $v1, -1       
  0042cd48: lui   $v0, 0x006a0000     
  0042cd4c: addiu  $v0, $v0, +19008   
  0042cd50: sll $v1, $v1, 2           
  0042cd54: addu $v1, $v1, $v0        
  0042cd58: lw     $a2, +0($v1)       
  0042cd5c: jal   0xf042c740             ; -> FUN_0042c740
  0042cd60: dsubu $a3, $zero, $zero   
  0042cd64: dsubu $s2, $v0, $zero     
  0042cd68: sra $s1, $s1, 2           
  0042cd6c: beq    $s1, $zero, +140      ; br -> 0x0042cdfc
  0042cd70: dsubu $v0, $s2, $zero     
  0042cd74: lw     $s0, +72($s3)      
  0042cd78: bne    $s0, $zero, +76       ; br -> 0x0042cdc8
  0042cd7c: andi   $v0, $s1, +1       
  0042cd80: dsubu $a0, $s3, $zero     
  0042cd84: jal   0xf042cac8             ; -> FUN_0042cac8
  0042cd88: addiu  $a1, $zero, +625   
  0042cd8c: dsubu $s0, $v0, $zero     
  0042cd90: sw     $v0, +72($s3)      
  0042cd94: beq    $zero, $zero, +44     ; br -> 0x0042cdc4
  0042cd98: sw     $zero, +0($s0)     
  0042cd9c: sll $zero, $zero, 0       
  0042cda0: bnel   $v0, $zero, +32       ; br -> 0x0042cdc4
  0042cda4: dsubu $s0, $v0, $zero     
  0042cda8: dsubu $a0, $s3, $zero     
  0042cdac: dsubu $a1, $s0, $zero     
  0042cdb0: jal   0xf042cb00             ; -> FUN_0042cb00
  0042cdb4: dsubu $a2, $s0, $zero     
  0042cdb8: sw     $v0, +0($s0)       
  0042cdbc: sw     $zero, +0($v0)        ; GLOBAL 0x006a0000
  0042cdc0: dsubu $s0, $v0, $zero     
  0042cdc4: andi   $v0, $s1, +1       
  0042cdc8: beq    $v0, $zero, +32       ; br -> 0x0042cdec
  0042cdcc: dsubu $a1, $s2, $zero     
  0042cdd0: dsubu $a0, $s3, $zero     
  0042cdd4: jal   0xf042cb00             ; -> FUN_0042cb00
  0042cdd8: dsubu $a2, $s0, $zero     
  0042cddc: dsubu $a1, $s2, $zero     
  0042cde0: dsubu $a0, $s3, $zero     
  0042cde4: jal   0xf042c708             ; -> 0x0042c708
  0042cde8: dsubu $s2, $v0, $zero     
  0042cdec: sra $s1, $s1, 1           
  0042cdf0: bnel   $s1, $zero, -84       ; br -> 0x0042cda0
  0042cdf4: lw     $v0, +0($s0)       
  0042cdf8: dsubu $v0, $s2, $zero     
  0042cdfc: lw     $ra, +64($sp)      
  0042ce00: lw     $s3, +48($sp)      
  0042ce04: lw     $s2, +32($sp)      
  0042ce08: lw     $s1, +16($sp)      
  0042ce0c: lw     $s0, +0($sp)       
  0042ce10: jr     $ra                
  0042ce14: addiu  $sp, $sp, +80      

; globals: 0x006a0000(x1)
