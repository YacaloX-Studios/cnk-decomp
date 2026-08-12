; 0x0053fd80  FUN_0053fd80  size=112  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 28 words

  0053fd80: lw     $v0, +8($a0)       
  0053fd84: sll $v1, $a1, 2           
  0053fd88: addu $v0, $v0, $v1        
  0053fd8c: jr     $ra                
  0053fd90: lw     $v0, +0($v0)       
  0053fd94: sll $zero, $zero, 0       
  0053fd98: sll $zero, $zero, 0       
  0053fd9c: sll $zero, $zero, 0       
  0053fda0: beq    $zero, $zero, +40     ; br -> 0x0053fdcc
  0053fda4: daddu $v0, $zero, $zero   
  0053fda8: lw     $v1, +8($a0)       
  0053fdac: sll $a2, $v0, 2           
  0053fdb0: addu $v1, $v1, $a2        
  0053fdb4: lw     $v1, +0($v1)       
  0053fdb8: bne    $a1, $v1, +12         ; br -> 0x0053fdc8
  0053fdbc: sll $zero, $zero, 0       
  0053fdc0: beq    $zero, $zero, +24     ; br -> 0x0053fddc
  0053fdc4: sll $zero, $zero, 0       
  0053fdc8: addiu  $v0, $v0, +1       
  0053fdcc: slti   $v1, $v0, +32      
  0053fdd0: bne    $v1, $zero, -44       ; br -> 0x0053fda8
  0053fdd4: sll $zero, $zero, 0       
  0053fdd8: addiu  $v0, $zero, -1     
  0053fddc: jr     $ra                
  0053fde0: sll $zero, $zero, 0       
  0053fde4: sll $zero, $zero, 0       
  0053fde8: sll $zero, $zero, 0       
  0053fdec: sll $zero, $zero, 0       
