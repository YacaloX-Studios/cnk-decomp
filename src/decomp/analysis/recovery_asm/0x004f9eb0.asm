; 0x004f9eb0  FUN_004f9eb0  size=320  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=ptr ret=void calls=
; 80 words

  004f9eb0: lw     $v1, +72($a1)      
  004f9eb4: addiu  $sp, $sp, -16      
  004f9eb8: dsubu $t0, $zero, $zero   
  004f9ebc: dsubu $t1, $zero, $zero   
  004f9ec0: lw     $v1, +16($v1)      
  004f9ec4: addu $a2, $v1, $a2        
  004f9ec8: lw     $v1, +0($a2)       
  004f9ecc: andi   $a1, $v1, +127     
  004f9ed0: addiu  $a2, $a2, +1       
  004f9ed4: sllv $a1, $a1, $t0        
  004f9ed8: andi   $v1, $v1, +128     
  004f9edc: beq    $v1, $zero, +12       ; br -> 0x004f9eec
  004f9ee0: or $t1, $t1, $a1          
  004f9ee4: beq    $zero, $zero, -32     ; br -> 0x004f9ec8
  004f9ee8: addiu  $t0, $t0, +7       
  004f9eec: slti   $v1, $t1, +32      
  004f9ef0: bne    $v1, $zero, +20       ; br -> 0x004f9f08
  004f9ef4: lui   $at, 0x00680000     
  004f9ef8: lui   $at, 0x006b0000     
  004f9efc: lw     $v1, +25752($at)      ; GLOBAL 0x006b6498
  004f9f00: beq    $zero, $zero, +228    ; br -> 0x004f9fe8
  004f9f04: sw     $v1, +0($a0)       
  004f9f08: lw     $a1, +0($a2)       
  004f9f0c: lw     $v1, +13336($at)      ; GLOBAL 0x006b3418
  004f9f10: dadd $at, $v1, $a1        
  004f9f14: beq    $at, $zero, +20       ; br -> 0x004f9f2c
  004f9f18: addiu  $t3, $a2, +1       
  004f9f1c: lui   $at, 0x006b0000     
  004f9f20: lw     $v1, +25752($at)      ; GLOBAL 0x006b6498
  004f9f24: beq    $zero, $zero, +192    ; br -> 0x004f9fe8
  004f9f28: sw     $v1, +0($a0)       
  004f9f2c: dsubu $t0, $zero, $zero   
  004f9f30: dsubu $a2, $zero, $zero   
  004f9f34: lw     $v1, +0($t3)       
  004f9f38: andi   $a1, $v1, +127     
  004f9f3c: addiu  $t3, $t3, +1       
  004f9f40: sllv $a1, $a1, $a2        
  004f9f44: andi   $v1, $v1, +128     
  004f9f48: beq    $v1, $zero, +12       ; br -> 0x004f9f58
  004f9f4c: or $t0, $t0, $a1          
  004f9f50: beq    $zero, $zero, -32     ; br -> 0x004f9f34
  004f9f54: addiu  $a2, $a2, +7       
  004f9f58: andi   $v1, $t0, +1       
  004f9f5c: beq    $v1, $zero, +112      ; br -> 0x004f9fd0
  004f9f60: lui   $at, 0x006b0000     
  004f9f64: lw     $t0, +3($t3)       
  004f9f68: addiu  $t2, $t3, +4       
  004f9f6c: lw     $a2, +2($t3)       
  004f9f70: dsubu $t1, $zero, $zero   
  004f9f74: lw     $a1, +1($t3)       
  004f9f78: lw     $v1, +0($t3)       
  004f9f7c: sll $t0, $t0, 24          
  004f9f80: sll $a2, $a2, 16          
  004f9f84: or $a2, $t0, $a2          
  004f9f88: sll $a1, $a1, 8           
  004f9f8c: or $a1, $a1, $a2          
  004f9f90: or $v1, $v1, $a1          
  004f9f94: sw     $v1, +12($sp)      
  004f9f98: sw     $zero, +0($a3)     
  004f9f9c: lw     $a2, +0($t2)       
  004f9fa0: dsubu $v1, $t2, $zero     
  004f9fa4: lw     $a1, +0($a3)       
  004f9fa8: andi   $a2, $a2, +127     
  004f9fac: sllv $a2, $a2, $t1        
  004f9fb0: or $a1, $a1, $a2          
  004f9fb4: sw     $a1, +0($a3)       
  004f9fb8: lw     $v1, +0($v1)       
  004f9fbc: andi   $v1, $v1, +128     
  004f9fc0: beq    $v1, $zero, +24       ; br -> 0x004f9fdc
  004f9fc4: addiu  $t2, $t2, +1       
  004f9fc8: beq    $zero, $zero, -48     ; br -> 0x004f9f9c
  004f9fcc: addiu  $t1, $t1, +7       
  004f9fd0: lw     $v1, +25752($at)      ; GLOBAL 0x006b6498
  004f9fd4: beq    $zero, $zero, +16     ; br -> 0x004f9fe8
  004f9fd8: sw     $v1, +0($a0)       
  004f9fdc: lui   $at, 0x006b0000     
  004f9fe0: lw     $v1, +25744($at)      ; GLOBAL 0x006b6490
  004f9fe4: sw     $v1, +0($a0)       
  004f9fe8: jr     $ra                
  004f9fec: addiu  $sp, $sp, +16      

; globals: 0x006b6498(x3), 0x006b3418(x1), 0x006b6490(x1)
