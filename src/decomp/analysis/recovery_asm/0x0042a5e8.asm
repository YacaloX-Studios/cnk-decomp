; 0x0042a5e8  FUN_0042a5e8  size=152  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=-;a3=- ret=ret calls=
; 38 words

  0042a5e8: addiu  $sp, $sp, -96      
  0042a5ec: sw     $s4, +64($sp)      
  0042a5f0: sw     $s3, +48($sp)      
  0042a5f4: dsubu $s4, $a1, $zero     
  0042a5f8: sw     $s2, +32($sp)      
  0042a5fc: dsubu $s3, $zero, $zero   
  0042a600: sw     $ra, +80($sp)      
  0042a604: addiu  $s2, $a0, +472     
  0042a608: sw     $s1, +16($sp)      
  0042a60c: beq    $s2, $zero, +72       ; br -> 0x0042a658
  0042a610: sw     $s0, +0($sp)       
  0042a614: lw     $s0, +4($s2)       
  0042a618: addiu  $s0, $s0, -1       
  0042a61c: regimm $s0, $zero, +44       ; br -> 0x0042a64c
  0042a620: lw     $s1, +8($s2)       
  0042a624: sll $zero, $zero, 0       
  0042a628: lw     $v0, +12($s1)      
  0042a62c: beql   $v0, $zero, +20       ; br -> 0x0042a644
  0042a630: addiu  $s0, $s0, -1       
  0042a634: jalr   $s4, $ra           
  0042a638: dsubu $a0, $s1, $zero     
  0042a63c: or $s3, $s3, $v0          
  0042a640: addiu  $s0, $s0, -1       
  0042a644: regimm $s0, $at, -32         ; br -> 0x0042a628
  0042a648: addiu  $s1, $s1, +88      
  0042a64c: lw     $s2, +0($s2)       
  0042a650: bnel   $s2, $zero, -60       ; br -> 0x0042a618
  0042a654: lw     $s0, +4($s2)       
  0042a658: dsubu $v0, $s3, $zero     
  0042a65c: lw     $ra, +80($sp)      
  0042a660: lw     $s4, +64($sp)      
  0042a664: lw     $s3, +48($sp)      
  0042a668: lw     $s2, +32($sp)      
  0042a66c: lw     $s1, +16($sp)      
  0042a670: lw     $s0, +0($sp)       
  0042a674: jr     $ra                
  0042a678: addiu  $sp, $sp, +96      
  0042a67c: sll $zero, $zero, 0       
