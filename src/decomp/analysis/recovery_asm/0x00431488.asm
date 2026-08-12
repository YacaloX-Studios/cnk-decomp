; 0x00431488  FUN_00431488  size=192  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042c5c0;0x0042c620
; 48 words

  00431488: addiu  $sp, $sp, -64      
  0043148c: sw     $s1, +16($sp)      
  00431490: sw     $s2, +32($sp)      
  00431494: dsubu $s1, $a0, $zero     
  00431498: sw     $s0, +0($sp)       
  0043149c: dsubu $s2, $a2, $zero     
  004314a0: sw     $ra, +48($sp)      
  004314a4: jal   0xf042c5c0             ; -> FUN_0042c5c0
  004314a8: dsubu $s0, $a1, $zero     
  004314ac: addiu  $v0, $zero, -3     
  004314b0: beq    $s0, $v0, +76         ; br -> 0x00431500
  004314b4: slti   $v0, $s0, -2       
  004314b8: beq    $v0, $zero, +20       ; br -> 0x004314d0
  004314bc: addiu  $v0, $zero, -4     
  004314c0: beq    $s0, $v0, +80         ; br -> 0x00431514
  004314c4: sll $zero, $zero, 0       
  004314c8: beq    $zero, $zero, +88     ; br -> 0x00431524
  004314cc: sll $zero, $zero, 0       
  004314d0: addiu  $v0, $zero, -2     
  004314d4: beq    $s0, $v0, +24         ; br -> 0x004314f0
  004314d8: addiu  $v0, $zero, -1     
  004314dc: bne    $s0, $v0, +68         ; br -> 0x00431524
  004314e0: lui   $v0, 0x00650000     
  004314e4: dsubu $a0, $s1, $zero     
  004314e8: beq    $zero, $zero, +24     ; br -> 0x00431504
  004314ec: sw     $s2, +32472($v0)      ; GLOBAL 0x00657ed8
  004314f0: lui   $v0, 0x00650000     
  004314f4: dsubu $a0, $s1, $zero     
  004314f8: beq    $zero, $zero, +8      ; br -> 0x00431504
  004314fc: sw     $s2, +32480($v0)      ; GLOBAL 0x00657ee0
  00431500: dsubu $a0, $s1, $zero     
  00431504: jal   0xf042c620             ; -> FUN_0042c620
  00431508: sll $zero, $zero, 0       
  0043150c: beq    $zero, $zero, +32     ; br -> 0x00431530
  00431510: addiu  $v0, $zero, +1     
  00431514: jal   0xf042c620             ; -> FUN_0042c620
  00431518: dsubu $a0, $s1, $zero     
  0043151c: beq    $zero, $zero, +16     ; br -> 0x00431530
  00431520: sltiu  $v0, $s2, +1       
  00431524: jal   0xf042c620             ; -> FUN_0042c620
  00431528: dsubu $a0, $s1, $zero     
  0043152c: dsubu $v0, $zero, $zero   
  00431530: lw     $ra, +48($sp)      
  00431534: lw     $s2, +32($sp)      
  00431538: lw     $s1, +16($sp)      
  0043153c: lw     $s0, +0($sp)       
  00431540: jr     $ra                
  00431544: addiu  $sp, $sp, +64      

; globals: 0x00657ed8(x1), 0x00657ee0(x1)
