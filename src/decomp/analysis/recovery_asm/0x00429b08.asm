; 0x00429b08  FUN_00429b08  size=120  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00428998;0x00430000
; 30 words

  00429b08: addiu  $sp, $sp, -64      
  00429b0c: addiu  $v0, $zero, +88    
  00429b10: sq     $s1, +16($sp)      
  00429b14: sq     $s2, +32($sp)      
  00429b18: daddu $s1, $a1, $zero     
  00429b1c: mult   $v0, $s1, +0       
  00429b20: sq     $s0, +0($sp)       
  00429b24: sq     $ra, +48($sp)      
  00429b28: jal   0xf0430000             ; -> FUN_00430000
  00429b2c: addiu  $a1, $s2, +12      
  00429b30: daddu $s0, $v0, $zero     
  00429b34: beq    $s0, $zero, +40       ; br -> 0x00429b60
  00429b38: addiu  $v0, $s0, +12      
  00429b3c: sw     $s1, +4($s0)       
  00429b40: sw     $zero, +0($s0)     
  00429b44: daddu $a0, $v0, $zero     
  00429b48: daddu $a2, $s2, $zero     
  00429b4c: sw     $v0, +8($s0)       
  00429b50: jal   0xf0428998             ; -> 0x00428998
  00429b54: daddu $a1, $zero, $zero   
  00429b58: beq    $zero, $zero, +8      ; br -> 0x00429b64
  00429b5c: daddu $v0, $s0, $zero     
  00429b60: daddu $v0, $zero, $zero   
  00429b64: lq     $ra, +48($sp)      
  00429b68: lq     $s2, +32($sp)      
  00429b6c: lq     $s1, +16($sp)      
  00429b70: lq     $s0, +0($sp)       
  00429b74: jr     $ra                
  00429b78: addiu  $sp, $sp, +64      
  00429b7c: sll $zero, $zero, 0       
