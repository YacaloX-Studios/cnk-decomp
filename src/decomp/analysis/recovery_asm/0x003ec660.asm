; 0x003ec660  FUN_003ec660  size=128  status=real_c
; evidence: args=a0=ptr;a1=-;a2=int;a3=- ret=ptr calls=
; 32 words

  003ec660: lw     $v1, +0($a0)       
  003ec664: sll    $v1, $zero, +2     
  003ec668: addu   $a0, $v0, +0       
  003ec66c: lw     $a2, +4($v0)       
  003ec670: beq    $a2, $zero, +12       ; br -> 0x003ec680
  003ec674: sll    $zero, $zero, +0   
  003ec678: beq    $zero, $zero, +8      ; br -> 0x003ec684
  003ec67c: addiu  $a2, $a2, -1       
  003ec680: dsubu  $zero, $v1, +0     
  003ec684: dadd   $a2, $v1, +0       
  003ec688: beq    $at, $zero, +12       ; br -> 0x003ec698
  003ec68c: dadd   $a2, $zero, +0     
  003ec690: beq    $zero, $zero, +56     ; br -> 0x003ec6cc
  003ec694: addiu  $v0, $zero, -1     
  003ec698: addiu  $a0, $a0, +4       
  003ec69c: beq    $at, $zero, +40       ; br -> 0x003ec6c8
  003ec6a0: dsubu  $zero, $zero, +0   
  003ec6a4: lw     $v1, +0($a0)       
  003ec6a8: bne    $v1, $a1, +12         ; br -> 0x003ec6b8
  003ec6ac: addiu  $a0, $a0, +4       
  003ec6b0: beq    $zero, $zero, +24     ; br -> 0x003ec6cc
  003ec6b4: sll    $zero, $zero, +0   
  003ec6b8: addiu  $v0, $v0, +1       
  003ec6bc: dadd   $a2, $v0, +0       
  003ec6c0: bne    $v1, $zero, -32       ; br -> 0x0042c6a4
  003ec6c4: sll    $zero, $zero, +0   
  003ec6c8: addiu  $v0, $zero, -1     
  003ec6cc: jr     $ra                
  003ec6d0: sll    $zero, $zero, +0   
  003ec6d4: sll    $zero, $zero, +0   
  003ec6d8: sll    $zero, $zero, +0   
  003ec6dc: sll    $zero, $zero, +0   
