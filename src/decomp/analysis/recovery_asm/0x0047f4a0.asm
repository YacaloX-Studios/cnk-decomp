; 0x0047f4a0  FUN_0047f4a0  size=96  status=real_logic
; evidence: args=a0=w;a1=int;a2=int;a3=- ret=int calls=
; 24 words

  0047f4a0: lui   $a2, 0x00670000     
  0047f4a4: dsubu  $zero, $zero, +0   
  0047f4a8: addiu  $v1, $a2, -7456    
  0047f4ac: lw     $v0, +0($v1)       
  0047f4b0: bne    $v0, $zero, +12       ; br -> 0x0047f4c0
  0047f4b4: dsubu  $zero, $zero, +0   
  0047f4b8: beq    $zero, $zero, +60     ; br -> 0x0047f4f8
  0047f4bc: dsubu  $zero, $v1, +0     
  0047f4c0: addiu  $a1, $a1, +1       
  0047f4c4: sll    $a1, $zero, +3     
  0047f4c8: slti   $v1, $a1, +16      
  0047f4cc: beq    $v1, $zero, +40       ; br -> 0x0047f4f8
  0047f4d0: addu   $a1, $v0, +0       
  0047f4d4: sll    $v0, $zero, +3     
  0047f4d8: addiu  $a0, $a2, -7456    
  0047f4dc: subu   $a1, $v0, +0       
  0047f4e0: sll    $v0, $zero, +3     
  0047f4e4: addu   $a0, $v0, +0       
  0047f4e8: lw     $v1, +0($v0)       
  0047f4ec: bnel   $v1, $zero, -44       ; br -> 0x004bf4c4
  0047f4f0: addiu  $a1, $a1, +1       
  0047f4f4: dsubu  $zero, $v0, +0     
  0047f4f8: jr     $ra                
  0047f4fc: dsubu  $zero, $a3, +0     
