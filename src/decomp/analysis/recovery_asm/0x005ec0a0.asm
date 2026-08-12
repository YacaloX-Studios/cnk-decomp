; 0x005ec0a0  FUN_005ec0a0  size=112  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 28 words

  005ec0a0: lw     $v0, +8($a0)       
  005ec0a4: addiu  $sp, $sp, -16      
  005ec0a8: sw     $a1, +12($sp)      
  005ec0ac: lw     $a3, +8($v0)       
  005ec0b0: lw     $a0, +12($sp)      
  005ec0b4: lw     $a1, +8($a3)       
  005ec0b8: beq    $zero, $zero, +40     ; br -> 0x005ec0e4
  005ec0bc: dsubu $a2, $zero, $zero   
  005ec0c0: lw     $v0, +16($a3)      
  005ec0c4: sll $v1, $a2, 2           
  005ec0c8: addu $v0, $v0, $v1        
  005ec0cc: lw     $v0, +0($v0)       
  005ec0d0: bne    $a0, $v0, +12         ; br -> 0x005ec0e0
  005ec0d4: sll $zero, $zero, 0       
  005ec0d8: beq    $zero, $zero, +28     ; br -> 0x005ec0f8
  005ec0dc: dadd $v0, $a2, $zero      
  005ec0e0: addiu  $a2, $a2, +1       
  005ec0e4: dadd $v0, $a2, $a1        
  005ec0e8: bne    $v0, $zero, -44       ; br -> 0x005ec0c0
  005ec0ec: sll $zero, $zero, 0       
  005ec0f0: addiu  $a2, $zero, -1     
  005ec0f4: dadd $v0, $a2, $zero      
  005ec0f8: xori   $v0, $v0, +1       
  005ec0fc: jr     $ra                
  005ec100: addiu  $sp, $sp, +16      
  005ec104: sll $zero, $zero, 0       
  005ec108: sll $zero, $zero, 0       
  005ec10c: sll $zero, $zero, 0       
