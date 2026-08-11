; 0x0042a818  FUN_0042a818  size=360  status=real_c
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x004299a0;0x00429c60;0x0042a5e8;0x0042a680
; 90 words

  0042a818: addiu  $sp, $sp, -32      
  0042a81c: sw     $s0, +0($sp)       
  0042a820: sw     $ra, +16($sp)      
  0042a824: dsubu  $zero, $a0, +0     
  0042a828: lw     $v0, +84($s0)      
  0042a82c: bnel   $v0, $zero, +24       ; br -> 0x0042a848
  0042a830: lw     $a0, +84($s0)      
  0042a834: lui   $v0, 0x00650000     
  0042a838: lw     $v1, +30548($v0)      ; GLOBAL 0x00657754
  0042a83c: sw     $v1, +84($s0)      
  0042a840: lw     $a0, +84($s0)      
  0042a844: sll    $zero, $zero, +0   
  0042a848: lw     $v0, +56($a0)      
  0042a84c: bnel   $v0, $zero, +16       ; br -> 0x0042a860
  0042a850: lw     $v1, +12($s0)      
  0042a854: jal   0xf0429c60             ; -> FUN_00429c60
  0042a858: sll    $zero, $zero, +0   
  0042a85c: lw     $v1, +12($s0)      
  0042a860: andi   $v0, $v1, +32      
  0042a864: bne    $v0, $zero, +28       ; br -> 0x0042a884
  0042a868: sw     $zero, +4($s0)     
  0042a86c: andi   $v0, $v1, +4       
  0042a870: bnel   $v0, $zero, +84       ; br -> 0x0042a8c8
  0042a874: lw     $v0, +48($s0)      
  0042a878: andi   $v0, $v1, +16      
  0042a87c: bne    $v0, $zero, +12       ; br -> 0x0042a88c
  0042a880: andi   $v0, $v1, +8       
  0042a884: beq    $zero, $zero, +232    ; br -> 0x0042a970
  0042a888: addiu  $v0, $zero, -1     
  0042a88c: beql   $v0, $zero, +44       ; br -> 0x0042a8bc
  0042a890: lw     $v0, +12($s0)      
  0042a894: jal   0xf04299a0             ; -> FUN_004299a0
  0042a898: dsubu  $zero, $s0, +0     
  0042a89c: bne    $v0, $zero, +208      ; br -> 0x0042a970
  0042a8a0: addiu  $v0, $zero, -1     
  0042a8a4: lw     $v0, +12($s0)      
  0042a8a8: sw     $zero, +8($s0)     
  0042a8ac: andi   $v0, $v0, -9       
  0042a8b0: sw     $zero, +24($s0)    
  0042a8b4: sw     $v0, +12($s0)      
  0042a8b8: lw     $v0, +12($s0)      
  0042a8bc: ori    $v0, $v0, +4       
  0042a8c0: beq    $zero, $zero, +40     ; br -> 0x0042a8ec
  0042a8c4: sw     $v0, +12($s0)      
  0042a8c8: beql   $v0, $zero, +36       ; br -> 0x0042a8f0
  0042a8cc: lw     $v0, +16($s0)      
  0042a8d0: lw     $v0, +60($s0)      
  0042a8d4: beq    $v0, $zero, +20       ; br -> 0x0042a8ec
  0042a8d8: sw     $v0, +4($s0)       
  0042a8dc: lw     $v1, +56($s0)      
  0042a8e0: dsubu  $zero, $zero, +0   
  0042a8e4: beq    $zero, $zero, +136    ; br -> 0x0042a970
  0042a8e8: sw     $v1, +0($s0)       
  0042a8ec: lw     $v0, +16($s0)      
  0042a8f0: bnel   $v0, $zero, +16       ; br -> 0x0042a904
  0042a8f4: lw     $v0, +12($s0)      
  0042a8f8: jal   0xf042a680             ; -> FUN_0042a680
  0042a8fc: dsubu  $zero, $s0, +0     
  0042a900: lw     $v0, +12($s0)      
  0042a904: andi   $v0, $v0, +3       
  0042a908: beq    $v0, $zero, +16       ; br -> 0x0042a91c
  0042a90c: lui   $a1, 0x00430000     
  0042a910: lw     $a0, +84($s0)      
  0042a914: jal   0xf042a5e8             ; -> FUN_0042a5e8
  0042a918: addiu  $a1, $a1, -22536   
  0042a91c: lw     $v1, +16($s0)      
  0042a920: lw     $v0, +32($s0)      
  0042a924: lw     $a0, +28($s0)      
  0042a928: dsubu  $zero, $v1, +0     
  0042a92c: lw     $a2, +20($s0)      
  0042a930: jalr   $v0, $ra           
  0042a934: sw     $v1, +0($s0)       
  0042a938: dsubu  $zero, $v0, +0     
  0042a93c: lw     $v0, +12($s0)      
  0042a940: sw     $v1, +4($s0)       
  0042a944: andi   $v0, $v0, -8193    
  0042a948: bgtz   $v1, $zero, +32       ; br -> 0x0042a96c
  0042a94c: sw     $v0, +12($s0)      
  0042a950: bnel   $v1, $zero, +12       ; br -> 0x0042a960
  0042a954: ori    $v0, $v0, +64      
  0042a958: beq    $zero, $zero, +8      ; br -> 0x0042a964
  0042a95c: ori    $v0, $v0, +32      
  0042a960: sw     $zero, +4($s0)     
  0042a964: beq    $zero, $zero, -228    ; br -> 0x0046a884
  0042a968: sw     $v0, +12($s0)      
  0042a96c: dsubu  $zero, $zero, +0   
  0042a970: lw     $ra, +16($sp)      
  0042a974: lw     $s0, +0($sp)       
  0042a978: jr     $ra                
  0042a97c: addiu  $sp, $sp, +32      

; globals: 0x00657754(x1)
