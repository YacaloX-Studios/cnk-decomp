; 0x004327a0  FUN_004327a0  size=120  status=real_c
; evidence: args=a0=int;a1=ptr;a2=int;a3=ptr ret=ptr calls=
; 30 words

  004327a0: dsubu $t1, $a0, $zero     
  004327a4: lw     $v0, +0($t1)       
  004327a8: beq    $v0, $zero, +40       ; br -> 0x004327d4
  004327ac: dsubu $a3, $zero, $zero   
  004327b0: addiu  $a3, $a3, +1       
  004327b4: sll $zero, $zero, 0       
  004327b8: addu $v0, $t1, $a3        
  004327bc: lw     $v1, +0($v0)       
  004327c0: sll $zero, $zero, 0       
  004327c4: sll $zero, $zero, 0       
  004327c8: sll $zero, $zero, 0       
  004327cc: bnel   $v1, $zero, -24       ; br -> 0x004327b8
  004327d0: addiu  $a3, $a3, +1       
  004327d4: addiu  $a3, $a3, -1       
  004327d8: blez   $a3, $zero, +52       ; br -> 0x00432810
  004327dc: dsubu $t0, $zero, $zero   
  004327e0: addu $a2, $a3, $t1        
  004327e4: dsubu $a1, $t1, $zero     
  004327e8: lw     $v0, +0($a2)       
  004327ec: addiu  $t0, $t0, +1       
  004327f0: lw     $v1, +0($a1)       
  004327f4: addiu  $a3, $a3, -1       
  004327f8: sw     $v0, +0($a1)       
  004327fc: dadd $a0, $t0, $a3        
  00432800: sw     $v1, +0($a2)       
  00432804: addiu  $a1, $a1, +1       
  00432808: bne    $a0, $zero, -36       ; br -> 0x004327e8
  0043280c: addiu  $a2, $a2, -1       
  00432810: jr     $ra                
  00432814: dsubu $v0, $t1, $zero     
