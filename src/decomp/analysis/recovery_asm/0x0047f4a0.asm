; 0x0047f4a0  FUN_0047f4a0  size=96  status=real_logic
; evidence: args=a0=w;a1=int;a2=int;a3=- ret=int calls=
; 24 words

  0047f4a0: lui   $a2, 0x00670000     
  0047f4a4: daddu $a3, $zero, $zero   
  0047f4a8: addiu  $v1, $a2, -7456    
  0047f4ac: lb     $v0, +0($v1)       
  0047f4b0: bne    $v0, $zero, +12       ; br -> 0x0047f4c0
  0047f4b4: daddu $a1, $zero, $zero   
  0047f4b8: beq    $zero, $zero, +60     ; br -> 0x0047f4f8
  0047f4bc: daddu $a3, $v1, $zero     
  0047f4c0: addiu  $a1, $a1, +1       
  0047f4c4: sll $v0, $a1, 3           
  0047f4c8: slti   $v1, $a1, +16      
  0047f4cc: beq    $v1, $zero, +40       ; br -> 0x0047f4f8
  0047f4d0: addu $v0, $v0, $a1        
  0047f4d4: sll $v0, $v0, 3           
  0047f4d8: addiu  $a0, $a2, -7456    
  0047f4dc: subu $v0, $v0, $a1        
  0047f4e0: sll $v0, $v0, 3           
  0047f4e4: addu $v0, $v0, $a0        
  0047f4e8: lb     $v1, +0($v0)       
  0047f4ec: bnel   $v1, $zero, -44       ; br -> 0x0047f4c4
  0047f4f0: addiu  $a1, $a1, +1       
  0047f4f4: daddu $a3, $v0, $zero     
  0047f4f8: jr     $ra                
  0047f4fc: daddu $v0, $a3, $zero     
