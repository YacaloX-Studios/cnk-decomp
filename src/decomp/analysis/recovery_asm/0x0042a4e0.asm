; 0x0042a4e0  FUN_0042a4e0  size=264  status=real_c
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x004299a0;0x00429c60
; 66 words

  0042a4e0: addiu  $sp, $sp, -32      
  0042a4e4: sq     $s0, +0($sp)       
  0042a4e8: sq     $ra, +16($sp)      
  0042a4ec: daddu $s0, $a0, $zero     
  0042a4f0: lw     $v0, +84($s0)      
  0042a4f4: bnel   $v0, $zero, +24       ; br -> 0x0042a510
  0042a4f8: lw     $a0, +84($s0)      
  0042a4fc: lui   $v0, 0x00650000     
  0042a500: lw     $v1, +30548($v0)      ; GLOBAL 0x00657754
  0042a504: sw     $v1, +84($s0)      
  0042a508: lw     $a0, +84($s0)      
  0042a50c: sll $zero, $zero, 0       
  0042a510: lw     $v0, +56($a0)      
  0042a514: bnel   $v0, $zero, +16       ; br -> 0x0042a528
  0042a518: lw     $v0, +40($s0)      
  0042a51c: jal   0xf0429c60             ; -> FUN_00429c60
  0042a520: sll $zero, $zero, 0       
  0042a524: lw     $v0, +40($s0)      
  0042a528: bne    $v0, $zero, +20       ; br -> 0x0042a540
  0042a52c: addiu  $v1, $zero, +29    
  0042a530: lw     $a0, +84($s0)      
  0042a534: addiu  $v0, $zero, -1     
  0042a538: beq    $zero, $zero, +152    ; br -> 0x0042a5d4
  0042a53c: sw     $v1, +0($a0)       
  0042a540: jal   0xf04299a0             ; -> FUN_004299a0
  0042a544: daddu $a0, $s0, $zero     
  0042a548: lhu    $v1, +12($s0)      
  0042a54c: andi   $v1, $v1, +4096    
  0042a550: bnel   $v1, $zero, +48       ; br -> 0x0042a584
  0042a554: lw     $a1, +80($s0)      
  0042a558: lw     $v0, +40($s0)      
  0042a55c: daddu $a1, $zero, $zero   
  0042a560: lw     $a0, +28($s0)      
  0042a564: jalr   $v0, $ra           
  0042a568: addiu  $a2, $zero, +1     
  0042a56c: daddu $a1, $v0, $zero     
  0042a570: addiu  $v0, $zero, -1     
  0042a574: bnel   $a1, $v0, +16         ; br -> 0x0042a588
  0042a578: lhu    $v1, +12($s0)      
  0042a57c: beq    $zero, $zero, +88     ; br -> 0x0042a5d8
  0042a580: lq     $ra, +16($sp)      
  0042a584: lhu    $v1, +12($s0)      
  0042a588: andi   $v0, $v1, +4       
  0042a58c: beq    $v0, $zero, +32       ; br -> 0x0042a5b0
  0042a590: andi   $v0, $v1, +8       
  0042a594: lw     $v0, +4($s0)       
  0042a598: lw     $v1, +48($s0)      
  0042a59c: beq    $v1, $zero, +48       ; br -> 0x0042a5d0
  0042a5a0: dsubu $a1, $a1, $v0       
  0042a5a4: lw     $v0, +60($s0)      
  0042a5a8: beq    $zero, $zero, +36     ; br -> 0x0042a5d0
  0042a5ac: dsubu $a1, $a1, $v0       
  0042a5b0: beq    $v0, $zero, +32       ; br -> 0x0042a5d4
  0042a5b4: daddu $v0, $a1, $zero     
  0042a5b8: lw     $v1, +0($s0)       
  0042a5bc: beq    $v1, $zero, +24       ; br -> 0x0042a5d8
  0042a5c0: lq     $ra, +16($sp)      
  0042a5c4: lw     $v0, +16($s0)      
  0042a5c8: subu $v0, $v1, $v0        
  0042a5cc: daddu $a1, $a1, $v0       
  0042a5d0: daddu $v0, $a1, $zero     
  0042a5d4: lq     $ra, +16($sp)      
  0042a5d8: lq     $s0, +0($sp)       
  0042a5dc: jr     $ra                
  0042a5e0: addiu  $sp, $sp, +32      
  0042a5e4: sll $zero, $zero, 0       

; globals: 0x00657754(x1)
