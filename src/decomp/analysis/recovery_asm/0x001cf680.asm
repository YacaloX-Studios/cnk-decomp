; 0x001cf680  FUN_001cf680  size=112  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 28 words

  001cf680: addiu  $sp, $sp, -16      
  001cf684: lwc1   $v1, +0($a1)       
  001cf688: lwc1   $v0, +4($a1)       
  001cf68c: lwc1   $at, +8($a1)       
  001cf690: lwc1   $zero, +12($sp)    
  001cf694: swc1   $v1, +0($a0)       
  001cf698: swc1   $v0, +4($a0)       
  001cf69c: swc1   $at, +8($a0)       
  001cf6a0: swc1   $v1, +0($sp)       
  001cf6a4: swc1   $v0, +4($sp)       
  001cf6a8: swc1   $at, +8($sp)       
  001cf6ac: swc1   $zero, +12($a0)    
  001cf6b0: jr     $ra                
  001cf6b4: addiu  $sp, $sp, +16      
  001cf6b8: sll    $zero, $zero, +0   
  001cf6bc: sll    $zero, $zero, +0   
  001cf6c0: beq    $a1, $zero, +20       ; br -> 0x001cf6d8
  001cf6c4: addiu  $v1, $zero, +1000  
  001cf6c8: sw     $a1, +128($a0)     
  001cf6cc: addiu  $v1, $zero, +1     
  001cf6d0: beq    $zero, $zero, +12     ; br -> 0x001cf6e0
  001cf6d4: sw     $v1, +12($a0)      
  001cf6d8: beq    $zero, $zero, -16     ; br -> 0x0020f6cc
  001cf6dc: sw     $v1, +128($a0)     
  001cf6e0: jr     $ra                
  001cf6e4: sll    $zero, $zero, +0   
  001cf6e8: sll    $zero, $zero, +0   
  001cf6ec: sll    $zero, $zero, +0   
