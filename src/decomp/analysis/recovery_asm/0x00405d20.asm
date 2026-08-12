; 0x00405d20  FUN_00405d20  size=160  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=ptr ret=void calls=
; 40 words

  00405d20: addiu  $sp, $sp, -16      
  00405d24: subu $v1, $a2, $a1        
  00405d28: sw     $a1, +4($sp)       
  00405d2c: sra $t0, $v1, 4           
  00405d30: regimm $v1, $at, +12         ; br -> 0x00405d40
  00405d34: sw     $a2, +8($sp)       
  00405d38: addiu  $v1, $v1, +15      
  00405d3c: sra $t0, $v1, 4           
  00405d40: blez   $t0, $zero, +92       ; br -> 0x00405da0
  00405d44: sll $zero, $zero, 0       
  00405d48: lhu    $a3, +0($a3)       
  00405d4c: lw     $v1, +4($sp)       
  00405d50: sra $a2, $t0, 1           
  00405d54: regimm $t0, $at, +12         ; br -> 0x00405d64
  00405d58: sw     $v1, +12($sp)      
  00405d5c: addiu  $v1, $t0, +1       
  00405d60: sra $a2, $v1, 1           
  00405d64: lw     $v1, +12($sp)      
  00405d68: sll $a1, $a2, 4           
  00405d6c: addu $a1, $v1, $a1        
  00405d70: lhu    $v1, +4($a1)       
  00405d74: slt $at, $v1, $a3         
  00405d78: beq    $at, $zero, +48       ; br -> 0x00405dac
  00405d7c: sw     $a1, +12($sp)      
  00405d80: addiu  $a1, $a1, +16      
  00405d84: addiu  $v1, $a2, +1       
  00405d88: subu $t0, $t0, $v1        
  00405d8c: sw     $a1, +12($sp)      
  00405d90: sw     $a1, +4($sp)       
  00405d94: sll $zero, $zero, 0       
  00405d98: bgtz   $t0, $zero, -80       ; br -> 0x00405d4c
  00405d9c: sll $zero, $zero, 0       
  00405da0: lw     $v1, +4($sp)       
  00405da4: beq    $zero, $zero, +16     ; br -> 0x00405db8
  00405da8: sw     $v1, +0($a0)       
  00405dac: beq    $zero, $zero, -24     ; br -> 0x00405d98
  00405db0: daddu $t0, $a2, $zero     
  00405db4: sll $zero, $zero, 0       
  00405db8: jr     $ra                
  00405dbc: addiu  $sp, $sp, +16      
