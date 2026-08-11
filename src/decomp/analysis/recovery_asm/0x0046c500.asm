; 0x0046c500  FUN_0046c500  size=88  status=real_logic
; evidence: args=a0=w;a1=int;a2=int;a3=- ret=int calls=
; 22 words

  0046c500: lui   $a2, 0x00660000     
  0046c504: dsubu  $zero, $zero, +0   
  0046c508: addiu  $v1, $a2, -13664   
  0046c50c: lw     $v0, +0($v1)       
  0046c510: bne    $v0, $zero, +12       ; br -> 0x0046c520
  0046c514: dsubu  $zero, $zero, +0   
  0046c518: beq    $zero, $zero, +52     ; br -> 0x0046c550
  0046c51c: dsubu  $zero, $v1, +0     
  0046c520: addiu  $a1, $a1, +1       
  0046c524: sll    $a1, $zero, +4     
  0046c528: slti   $v1, $a1, +16      
  0046c52c: beq    $v1, $zero, +32       ; br -> 0x0046c550
  0046c530: addu   $a1, $v0, +0       
  0046c534: sll    $v0, $zero, +2     
  0046c538: addiu  $v1, $a2, -13664   
  0046c53c: addu   $v1, $v0, +0       
  0046c540: lw     $a0, +0($v0)       
  0046c544: bnel   $a0, $zero, -36       ; br -> 0x004ac524
  0046c548: addiu  $a1, $a1, +1       
  0046c54c: dsubu  $zero, $v0, +0     
  0046c550: jr     $ra                
  0046c554: dsubu  $zero, $a3, +0     
