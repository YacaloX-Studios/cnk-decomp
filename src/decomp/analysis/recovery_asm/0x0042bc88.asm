; 0x0042bc88  FUN_0042bc88  size=232  status=real_c
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x00429c60;0x0042a680
; 58 words

  0042bc88: addiu  $sp, $sp, -32      
  0042bc8c: sw     $s0, +0($sp)       
  0042bc90: sw     $ra, +16($sp)      
  0042bc94: dsubu  $zero, $a0, +0     
  0042bc98: lw     $v0, +84($s0)      
  0042bc9c: bnel   $v0, $zero, +24       ; br -> 0x0042bcb8
  0042bca0: lw     $a0, +84($s0)      
  0042bca4: lui   $v0, 0x00650000     
  0042bca8: lw     $v1, +30548($v0)      ; GLOBAL 0x00657754
  0042bcac: sw     $v1, +84($s0)      
  0042bcb0: lw     $a0, +84($s0)      
  0042bcb4: sll    $zero, $zero, +0   
  0042bcb8: lw     $v0, +56($a0)      
  0042bcbc: bnel   $v0, $zero, +16       ; br -> 0x0042bcd0
  0042bcc0: lw     $a0, +12($s0)      
  0042bcc4: jal   0xf0429c60             ; -> FUN_00429c60
  0042bcc8: sll    $zero, $zero, +0   
  0042bccc: lw     $a0, +12($s0)      
  0042bcd0: andi   $v0, $a0, +8       
  0042bcd4: bnel   $v0, $zero, +64       ; br -> 0x0042bd18
  0042bcd8: lw     $v0, +16($s0)      
  0042bcdc: andi   $v0, $a0, +16      
  0042bce0: bne    $v0, $zero, +12       ; br -> 0x0042bcf0
  0042bce4: andi   $v0, $a0, +4       
  0042bce8: beq    $zero, $zero, +116    ; br -> 0x0042bd60
  0042bcec: addiu  $v0, $zero, -1     
  0042bcf0: beq    $v0, $zero, +20       ; br -> 0x0042bd08
  0042bcf4: andi   $v0, $a0, -37      
  0042bcf8: lw     $v1, +16($s0)      
  0042bcfc: sw     $v0, +12($s0)      
  0042bd00: sw     $v1, +0($s0)       
  0042bd04: sw     $zero, +4($s0)     
  0042bd08: lw     $v0, +12($s0)      
  0042bd0c: ori    $v0, $v0, +8       
  0042bd10: sw     $v0, +12($s0)      
  0042bd14: lw     $v0, +16($s0)      
  0042bd18: bnel   $v0, $zero, +16       ; br -> 0x0042bd2c
  0042bd1c: lw     $v1, +12($s0)      
  0042bd20: jal   0xf042a680             ; -> FUN_0042a680
  0042bd24: dsubu  $zero, $s0, +0     
  0042bd28: lw     $v1, +12($s0)      
  0042bd2c: andi   $v0, $v1, +1       
  0042bd30: beq    $v0, $zero, +24       ; br -> 0x0042bd4c
  0042bd34: andi   $v0, $v1, +2       
  0042bd38: lw     $v0, +20($s0)      
  0042bd3c: sw     $zero, +8($s0)     
  0042bd40: subu   $v0, $zero, +0     
  0042bd44: beq    $zero, $zero, +20     ; br -> 0x0042bd5c
  0042bd48: sw     $v0, +24($s0)      
  0042bd4c: bne    $v0, $zero, +8        ; br -> 0x0042bd58
  0042bd50: dsubu  $zero, $zero, +0   
  0042bd54: lw     $v1, +20($s0)      
  0042bd58: sw     $v1, +8($s0)       
  0042bd5c: dsubu  $zero, $zero, +0   
  0042bd60: lw     $ra, +16($sp)      
  0042bd64: lw     $s0, +0($sp)       
  0042bd68: jr     $ra                
  0042bd6c: addiu  $sp, $sp, +32      

; globals: 0x00657754(x1)
