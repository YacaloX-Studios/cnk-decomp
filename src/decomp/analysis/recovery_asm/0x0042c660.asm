; 0x0042c660  FUN_0042c660  size=224  status=real_logic
; evidence: args=a0=int;a1=ptr;a2=int;a3=int ret=ret calls=0x00431130
; 56 words

  0042c660: addiu  $sp, $sp, -48      
  0042c664: sw     $s1, +16($sp)      
  0042c668: sw     $s0, +0($sp)       
  0042c66c: sw     $ra, +32($sp)      
  0042c670: dsubu  $zero, $a0, +0     
  0042c674: lw     $v0, +76($s0)      
  0042c678: bne    $v0, $zero, +24       ; br -> 0x0042c694
  0042c67c: dsubu  $zero, $a1, +0     
  0042c680: addiu  $a1, $zero, +4     
  0042c684: jal   0xf0431130             ; -> 0x00431130
  0042c688: addiu  $a2, $zero, +16    
  0042c68c: beq    $v0, $zero, +76       ; br -> 0x0042c6dc
  0042c690: sw     $v0, +76($s0)      
  0042c694: lw     $v1, +76($s0)      
  0042c698: sll    $s1, $zero, +2     
  0042c69c: addu   $v1, $v0, +0       
  0042c6a0: lw     $v1, +0($a0)       
  0042c6a4: beq    $v1, $zero, +16       ; br -> 0x0042c6b8
  0042c6a8: addiu  $v0, $zero, +1     
  0042c6ac: lw     $v0, +0($v1)       
  0042c6b0: beq    $zero, $zero, +52     ; br -> 0x0042c6e8
  0042c6b4: sw     $v0, +0($a0)       
  0042c6b8: dsubu  $zero, $s0, +0     
  0042c6bc: sllv   $v0, $s1, +0       
  0042c6c0: addiu  $a1, $zero, +1     
  0042c6c4: sll    $s0, $zero, +2     
  0042c6c8: jal   0xf0431130             ; -> 0x00431130
  0042c6cc: addiu  $a2, $a2, +20      
  0042c6d0: dsubu  $zero, $v0, +0     
  0042c6d4: bnel   $v1, $zero, +12       ; br -> 0x0042c6e4
  0042c6d8: sw     $s1, +4($v1)       
  0042c6dc: beq    $zero, $zero, +20     ; br -> 0x0042c6f4
  0042c6e0: dsubu  $zero, $zero, +0   
  0042c6e4: sw     $s0, +8($v1)       
  0042c6e8: sw     $zero, +16($v1)    
  0042c6ec: dsubu  $zero, $v1, +0     
  0042c6f0: sw     $zero, +12($v1)    
  0042c6f4: lw     $ra, +32($sp)      
  0042c6f8: lw     $s1, +16($sp)      
  0042c6fc: lw     $s0, +0($sp)       
  0042c700: jr     $ra                
  0042c704: addiu  $sp, $sp, +48      
  0042c708: beq    $a1, $zero, +40       ; br -> 0x0042c734
  0042c70c: dsubu  $zero, $a0, +0     
  0042c710: lw     $a0, +4($a1)       
  0042c714: lw     $v0, +76($a2)      
  0042c718: sll    $a0, $zero, +2     
  0042c71c: addu   $v0, $a0, +0       
  0042c720: lw     $v1, +0($v0)       
  0042c724: sw     $v1, +0($a1)       
  0042c728: lw     $v0, +76($a2)      
  0042c72c: addu   $v0, $a0, +0       
  0042c730: sw     $a1, +0($a0)       
  0042c734: jr     $ra                
  0042c738: sll    $zero, $zero, +0   
  0042c73c: sll    $zero, $zero, +0   
