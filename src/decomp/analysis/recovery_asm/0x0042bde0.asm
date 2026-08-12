; 0x0042bde0  FUN_0042bde0  size=216  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=
; 54 words

  0042bde0: addiu  $sp, $sp, -144     
  0042bde4: sq     $s7, +112($sp)     
  0042bde8: sq     $s6, +96($sp)      
  0042bdec: daddu $s7, $a0, $zero     
  0042bdf0: sq     $s5, +80($sp)      
  0042bdf4: daddu $s6, $a1, $zero     
  0042bdf8: sq     $s4, +64($sp)      
  0042bdfc: daddu $s5, $t0, $zero     
  0042be00: sq     $s3, +48($sp)      
  0042be04: daddu $s4, $a3, $zero     
  0042be08: sq     $s2, +32($sp)      
  0042be0c: daddu $s3, $zero, $zero   
  0042be10: sq     $ra, +128($sp)     
  0042be14: daddu $s2, $a2, $zero     
  0042be18: sq     $s1, +16($sp)      
  0042be1c: beq    $s2, $zero, +100      ; br -> 0x0042be84
  0042be20: sq     $s0, +0($sp)       
  0042be24: bne    $s4, $zero, +20       ; br -> 0x0042be3c
  0042be28: daddu $v0, $zero, $zero   
  0042be2c: beq    $zero, $zero, +92     ; br -> 0x0042be8c
  0042be30: lq     $ra, +128($sp)     
  0042be34: beq    $zero, $zero, +80     ; br -> 0x0042be88
  0042be38: daddu $v0, $s1, $zero     
  0042be3c: beq    $s2, $zero, +76       ; br -> 0x0042be8c
  0042be40: lq     $ra, +128($sp)     
  0042be44: addu $v0, $s3, $s2        
  0042be48: daddu $a0, $s7, $zero     
  0042be4c: srl $s0, $v0, 1           
  0042be50: mult   $s4, $s0, +0       
  0042be54: addu $s1, $v0, $s6        
  0042be58: jalr   $s5, $ra           
  0042be5c: daddu $a1, $s1, $zero     
  0042be60: regimm $v0, $at, +12         ; br -> 0x0042be70
  0042be64: sll $zero, $zero, 0       
  0042be68: beq    $zero, $zero, +12     ; br -> 0x0042be78
  0042be6c: daddu $s2, $s0, $zero     
  0042be70: blez   $v0, $zero, -64       ; br -> 0x0042be34
  0042be74: addiu  $s3, $s0, +1       
  0042be78: sltu $v0, $s3, $s2        
  0042be7c: bne    $v0, $zero, -56       ; br -> 0x0042be48
  0042be80: addu $v0, $s3, $s2        
  0042be84: daddu $v0, $zero, $zero   
  0042be88: lq     $ra, +128($sp)     
  0042be8c: lq     $s7, +112($sp)     
  0042be90: lq     $s6, +96($sp)      
  0042be94: lq     $s5, +80($sp)      
  0042be98: lq     $s4, +64($sp)      
  0042be9c: lq     $s3, +48($sp)      
  0042bea0: lq     $s2, +32($sp)      
  0042bea4: lq     $s1, +16($sp)      
  0042bea8: lq     $s0, +0($sp)       
  0042beac: jr     $ra                
  0042beb0: addiu  $sp, $sp, +144     
  0042beb4: sll $zero, $zero, 0       
