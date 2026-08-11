; 0x0042a680  FUN_0042a680  size=200  status=real_c
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x00429760
; 50 words

  0042a680: addiu  $sp, $sp, -144     
  0042a684: sw     $s0, +112($sp)     
  0042a688: sw     $ra, +128($sp)     
  0042a68c: dsubu  $zero, $a0, +0     
  0042a690: lw     $v0, +12($s0)      
  0042a694: andi   $v0, $v0, +2       
  0042a698: beq    $v0, $zero, +24       ; br -> 0x0042a6b4
  0042a69c: addiu  $v1, $s0, +67      
  0042a6a0: addiu  $v0, $zero, +1     
  0042a6a4: sw     $v0, +20($s0)      
  0042a6a8: sw     $v1, +16($s0)      
  0042a6ac: beq    $zero, $zero, +132    ; br -> 0x0042a734
  0042a6b0: sw     $v1, +0($s0)       
  0042a6b4: lw     $a1, +14($s0)      
  0042a6b8: regimm $a1, $v0, +80         ; br -> 0x0042a70c
  0042a6bc: lw     $v0, +12($s0)      
  0042a6c0: lw     $a0, +84($s0)      
  0042a6c4: jal   0xf0429760             ; -> FUN_00429760
  0042a6c8: dsubu  $zero, $sp, +0     
  0042a6cc: regimm $v0, $zero, +56       ; br -> 0x0042a708
  0042a6d0: lw     $v0, +4($sp)       
  0042a6d4: ori    $v1, $zero, -32768 
  0042a6d8: andi   $v0, $v0, -4096    
  0042a6dc: bnel   $v0, $v1, +44         ; br -> 0x0042a70c
  0042a6e0: lw     $v0, +12($s0)      
  0042a6e4: lui   $v0, 0x00430000     
  0042a6e8: lw     $v1, +40($s0)      
  0042a6ec: addiu  $v0, $v0, -21432   
  0042a6f0: bne    $v1, $v0, +24         ; br -> 0x0042a70c
  0042a6f4: lw     $v0, +12($s0)      
  0042a6f8: addiu  $v1, $zero, +1024  
  0042a6fc: sw     $v1, +76($s0)      
  0042a700: beq    $zero, $zero, +12     ; br -> 0x0042a710
  0042a704: ori    $v0, $v0, +1024    
  0042a708: lw     $v0, +12($s0)      
  0042a70c: ori    $v0, $v0, +2048    
  0042a710: sw     $v0, +12($s0)      
  0042a714: lw     $v0, +12($s0)      
  0042a718: addiu  $a0, $s0, +67      
  0042a71c: addiu  $v1, $zero, +1     
  0042a720: sw     $a0, +16($s0)      
  0042a724: ori    $v0, $v0, +2       
  0042a728: sw     $v1, +20($s0)      
  0042a72c: sw     $v0, +12($s0)      
  0042a730: sw     $a0, +0($s0)       
  0042a734: lw     $ra, +128($sp)     
  0042a738: lw     $s0, +112($sp)     
  0042a73c: jr     $ra                
  0042a740: addiu  $sp, $sp, +144     
  0042a744: sll    $zero, $zero, +0   
