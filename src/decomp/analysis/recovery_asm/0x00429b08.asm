; 0x00429b08  FUN_00429b08  size=120  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00428998;0x00430000
; 30 words

  00429b08: addiu  $sp, $sp, -64      
  00429b0c: addiu  $v0, $zero, +88    
  00429b10: sw     $s1, +16($sp)      
  00429b14: sw     $s2, +32($sp)      
  00429b18: dsubu  $zero, $a1, +0     
  00429b1c: mult   $v0, $s1, +0       
  00429b20: sw     $s0, +0($sp)       
  00429b24: sw     $ra, +48($sp)      
  00429b28: jal   0xf0430000             ; -> FUN_00430000
  00429b2c: addiu  $a1, $s2, +12      
  00429b30: dsubu  $zero, $v0, +0     
  00429b34: beq    $s0, $zero, +40       ; br -> 0x00429b60
  00429b38: addiu  $v0, $s0, +12      
  00429b3c: sw     $s1, +4($s0)       
  00429b40: sw     $zero, +0($s0)     
  00429b44: dsubu  $zero, $v0, +0     
  00429b48: dsubu  $zero, $s2, +0     
  00429b4c: sw     $v0, +8($s0)       
  00429b50: jal   0xf0428998             ; -> 0x00428998
  00429b54: dsubu  $zero, $zero, +0   
  00429b58: beq    $zero, $zero, +8      ; br -> 0x00429b64
  00429b5c: dsubu  $zero, $s0, +0     
  00429b60: dsubu  $zero, $zero, +0   
  00429b64: lw     $ra, +48($sp)      
  00429b68: lw     $s2, +32($sp)      
  00429b6c: lw     $s1, +16($sp)      
  00429b70: lw     $s0, +0($sp)       
  00429b74: jr     $ra                
  00429b78: addiu  $sp, $sp, +64      
  00429b7c: sll    $zero, $zero, +0   
