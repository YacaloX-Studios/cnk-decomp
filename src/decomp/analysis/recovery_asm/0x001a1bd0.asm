; 0x001a1bd0  FUN_001a1bd0  size=368  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=ptr ret=void calls=
; 92 words

  001a1bd0: addiu  $sp, $sp, -32      
  001a1bd4: daddu $a1, $zero, $zero   
  001a1bd8: addiu  $v1, $sp, +0       
  001a1bdc: daddu $a3, $v1, $zero     
  001a1be0: lw     $a2, +8($a0)       
  001a1be4: beq    $a2, $zero, +32       ; br -> 0x001a1c08
  001a1be8: sll $zero, $zero, 0       
  001a1bec: sw     $a2, +0($a3)       
  001a1bf0: addiu  $a1, $a1, +1       
  001a1bf4: slti   $a2, $a1, +8       
  001a1bf8: addiu  $a0, $a0, +4       
  001a1bfc: bne    $a2, $zero, -32       ; br -> 0x001a1be0
  001a1c00: addiu  $a3, $a3, +4       
  001a1c04: sll $zero, $zero, 0       
  001a1c08: slt $at, $zero, $a1       
  001a1c0c: beq    $at, $zero, +96       ; br -> 0x001a1c70
  001a1c10: daddu $t4, $zero, $zero   
  001a1c14: daddu $t2, $v1, $zero     
  001a1c18: addiu  $t3, $t4, +1       
  001a1c1c: slt $at, $t3, $a1         
  001a1c20: beq    $at, $zero, +60       ; br -> 0x001a1c60
  001a1c24: sll $a0, $t3, 2           
  001a1c28: addu $a0, $a0, $sp        
  001a1c2c: addiu  $t1, $a0, +0       
  001a1c30: lw     $t0, +0($t1)       
  001a1c34: lw     $a3, +0($t2)       
  001a1c38: lw     $a0, +24($t0)      
  001a1c3c: lw     $a2, +24($a3)      
  001a1c40: slt $at, $a0, $a2         
  001a1c44: bne    $at, $zero, +216      ; br -> 0x001a1d20
  001a1c48: sll $zero, $zero, 0       
  001a1c4c: sll $zero, $zero, 0       
  001a1c50: addiu  $t3, $t3, +1       
  001a1c54: slt $a0, $t3, $a1         
  001a1c58: bne    $a0, $zero, -44       ; br -> 0x001a1c30
  001a1c5c: addiu  $t1, $t1, +4       
  001a1c60: addiu  $t4, $t4, +1       
  001a1c64: slt $a0, $t4, $a1         
  001a1c68: bne    $a0, $zero, -84       ; br -> 0x001a1c18
  001a1c6c: addiu  $t2, $t2, +4       
  001a1c70: slt $at, $zero, $a1       
  001a1c74: addiu  $t2, $zero, +1     
  001a1c78: beq    $at, $zero, +156      ; br -> 0x001a1d18
  001a1c7c: daddu $a3, $zero, $zero   
  001a1c80: lw     $a0, +0($v1)       
  001a1c84: lbu    $a0, +21($a0)      
  001a1c88: bne    $a0, $zero, +100      ; br -> 0x001a1cf0
  001a1c8c: addiu  $t1, $a3, +1       
  001a1c90: slt $at, $t1, $a1         
  001a1c94: beq    $at, $zero, +80       ; br -> 0x001a1ce8
  001a1c98: sll $a0, $t1, 2           
  001a1c9c: addu $a0, $a0, $sp        
  001a1ca0: addiu  $t0, $a0, +0       
  001a1ca4: sll $zero, $zero, 0       
  001a1ca8: lw     $a2, +0($t0)       
  001a1cac: lbu    $a0, +21($a2)      
  001a1cb0: bne    $a0, $zero, +36       ; br -> 0x001a1cd8
  001a1cb4: sll $zero, $zero, 0       
  001a1cb8: lw     $a0, +0($v1)       
  001a1cbc: lwc1   $zero, +56($a2)    
  001a1cc0: lwc1   $at, +56($a0)      
  001a1cc4: f10.34 $at,$s0,$zero      
  001a1cc8: f8.3   $zero,$t0,$zero    
  001a1ccc: sll $zero, $zero, 0       
  001a1cd0: sw     $a2, +0($v1)       
  001a1cd4: sw     $a0, +0($t0)       
  001a1cd8: addiu  $t1, $t1, +1       
  001a1cdc: slt $a0, $t1, $a1         
  001a1ce0: bne    $a0, $zero, -60       ; br -> 0x001a1ca8
  001a1ce4: addiu  $t0, $t0, +4       
  001a1ce8: lw     $a0, +0($v1)       
  001a1cec: sw     $t2, +24($a0)      
  001a1cf0: lw     $a0, +0($v1)       
  001a1cf4: lbu    $a0, +20($a0)      
  001a1cf8: beq    $a0, $zero, +12       ; br -> 0x001a1d08
  001a1cfc: sll $zero, $zero, 0       
  001a1d00: addiu  $t2, $t2, +1       
  001a1d04: sll $zero, $zero, 0       
  001a1d08: addiu  $a3, $a3, +1       
  001a1d0c: slt $a0, $a3, $a1         
  001a1d10: bne    $a0, $zero, -148      ; br -> 0x001a1c80
  001a1d14: addiu  $v1, $v1, +4       
  001a1d18: beq    $zero, $zero, +20     ; br -> 0x001a1d30
  001a1d1c: sll $zero, $zero, 0       
  001a1d20: sw     $t0, +0($t2)       
  001a1d24: beq    $zero, $zero, -216    ; br -> 0x001a1c50
  001a1d28: sw     $a3, +0($t1)       
  001a1d2c: sll $zero, $zero, 0       
  001a1d30: jr     $ra                
  001a1d34: addiu  $sp, $sp, +32      
  001a1d38: sll $zero, $zero, 0       
  001a1d3c: sll $zero, $zero, 0       
