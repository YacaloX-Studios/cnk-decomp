; 0x0042c5c0  FUN_0042c5c0  size=96  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0043c9d0;0x0043cb20
; 24 words

  0042c5c0: addiu  $sp, $sp, -48      
  0042c5c4: sw     $s1, +16($sp)      
  0042c5c8: sw     $s0, +0($sp)       
  0042c5cc: sw     $ra, +32($sp)      
  0042c5d0: jal   0xf043c9d0             ; -> 0x0043c9d0
  0042c5d4: lui   $s1, 0x00650000     
  0042c5d8: dsubu  $zero, $v0, +0     
  0042c5dc: lw     $v0, +31432($s1)      ; GLOBAL 0x00657ac8
  0042c5e0: bne    $v0, $s0, +12         ; br -> 0x0042c5f0
  0042c5e4: lui   $v0, 0x00660000     
  0042c5e8: beq    $zero, $zero, +20     ; br -> 0x0042c600
  0042c5ec: lui   $v1, 0x00650000     
  0042c5f0: jal   0xf043cb20             ; -> 0x0043cb20
  0042c5f4: lw     $a0, -31056($v0)      ; GLOBAL 0x006686b0
  0042c5f8: lui   $v1, 0x00650000     
  0042c5fc: sw     $s0, +31432($s1)      ; GLOBAL 0x00657ac8
  0042c600: lw     $v0, +31436($v1)      ; GLOBAL 0x00657acc
  0042c604: addiu  $v0, $v0, +1       
  0042c608: sw     $v0, +31436($v1)      ; GLOBAL 0x00657acc
  0042c60c: lw     $ra, +32($sp)      
  0042c610: lw     $s1, +16($sp)      
  0042c614: lw     $s0, +0($sp)       
  0042c618: jr     $ra                
  0042c61c: addiu  $sp, $sp, +48      

; globals: 0x00657ac8(x2), 0x00657acc(x2), 0x006686b0(x1)
