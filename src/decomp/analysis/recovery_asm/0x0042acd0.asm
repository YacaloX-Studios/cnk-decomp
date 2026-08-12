; 0x0042acd0  FUN_0042acd0  size=408  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x004299a0;0x00429c60;0x0043d0a8
; 102 words

  0042acd0: addiu  $sp, $sp, -48      
  0042acd4: addiu  $v0, $zero, -1     
  0042acd8: sw     $s1, +16($sp)      
  0042acdc: sw     $s0, +0($sp)       
  0042ace0: dsubu $s1, $a0, $zero     
  0042ace4: sw     $ra, +32($sp)      
  0042ace8: beq    $s1, $v0, +356        ; br -> 0x0042ae50
  0042acec: dsubu $s0, $a1, $zero     
  0042acf0: lw     $v0, +84($s0)      
  0042acf4: bnel   $v0, $zero, +24       ; br -> 0x0042ad10
  0042acf8: lw     $a0, +84($s0)      
  0042acfc: lui   $v0, 0x00650000     
  0042ad00: lw     $v1, +30548($v0)      ; GLOBAL 0x00657754
  0042ad04: sw     $v1, +84($s0)      
  0042ad08: lw     $a0, +84($s0)      
  0042ad0c: sll $zero, $zero, 0       
  0042ad10: lw     $v0, +56($a0)      
  0042ad14: bnel   $v0, $zero, +16       ; br -> 0x0042ad28
  0042ad18: lw     $v0, +12($s0)      
  0042ad1c: jal   0xf0429c60             ; -> FUN_00429c60
  0042ad20: sll $zero, $zero, 0       
  0042ad24: lw     $v0, +12($s0)      
  0042ad28: andi   $v1, $v0, -33      
  0042ad2c: andi   $v0, $v1, +4       
  0042ad30: bne    $v0, $zero, +72       ; br -> 0x0042ad7c
  0042ad34: sw     $v1, +12($s0)      
  0042ad38: andi   $v0, $v1, +16      
  0042ad3c: beq    $v0, $zero, +112      ; br -> 0x0042adb0
  0042ad40: andi   $v0, $v1, +8       
  0042ad44: beql   $v0, $zero, +44       ; br -> 0x0042ad74
  0042ad48: lw     $v0, +12($s0)      
  0042ad4c: jal   0xf04299a0             ; -> FUN_004299a0
  0042ad50: dsubu $a0, $s0, $zero     
  0042ad54: bne    $v0, $zero, +248      ; br -> 0x0042ae50
  0042ad58: addiu  $v0, $zero, -1     
  0042ad5c: lw     $v0, +12($s0)      
  0042ad60: sw     $zero, +8($s0)     
  0042ad64: andi   $v0, $v0, -9       
  0042ad68: sw     $zero, +24($s0)    
  0042ad6c: sw     $v0, +12($s0)      
  0042ad70: lw     $v0, +12($s0)      
  0042ad74: ori    $v0, $v0, +4       
  0042ad78: sw     $v0, +12($s0)      
  0042ad7c: lw     $v0, +48($s0)      
  0042ad80: beq    $v0, $zero, +84       ; br -> 0x0042add8
  0042ad84: andi   $s1, $s1, +255     
  0042ad88: lw     $v0, +4($s0)       
  0042ad8c: lw     $v1, +52($s0)      
  0042ad90: dadd $v0, $v0, $v1        
  0042ad94: bnel   $v0, $zero, +32       ; br -> 0x0042adb8
  0042ad98: lw     $a0, +0($s0)       
  0042ad9c: lui   $a1, 0x006a0000     
  0042ada0: addiu  $a0, $zero, +1     
  0042ada4: addiu  $a1, $a1, +17728   
  0042ada8: jal   0xf043d0a8             ; -> 0x0043d0a8
  0042adac: addiu  $a2, $zero, +68    
  0042adb0: beq    $zero, $zero, +156    ; br -> 0x0042ae50
  0042adb4: addiu  $v0, $zero, -1     
  0042adb8: dsubu $v0, $s1, $zero     
  0042adbc: addiu  $v1, $a0, -1       
  0042adc0: sw     $v1, +0($s0)       
  0042adc4: sw     $s1, -1($a0)       
  0042adc8: lw     $v1, +4($s0)       
  0042adcc: addiu  $v1, $v1, +1       
  0042add0: beq    $zero, $zero, +124    ; br -> 0x0042ae50
  0042add4: sw     $v1, +4($s0)       
  0042add8: lw     $v0, +16($s0)      
  0042addc: beql   $v0, $zero, +60       ; br -> 0x0042ae1c
  0042ade0: lw     $a0, +4($s0)       
  0042ade4: lw     $a0, +0($s0)       
  0042ade8: daddu $v0, $v0, $a0       
  0042adec: beql   $v0, $zero, +44       ; br -> 0x0042ae1c
  0042adf0: lw     $a0, +4($s0)       
  0042adf4: lw     $v0, -1($a0)       
  0042adf8: bnel   $v0, $s1, +32         ; br -> 0x0042ae1c
  0042adfc: lw     $a0, +4($s0)       
  0042ae00: lw     $v1, +4($s0)       
  0042ae04: addiu  $v0, $a0, -1       
  0042ae08: sw     $v0, +0($s0)       
  0042ae0c: addiu  $v1, $v1, +1       
  0042ae10: dsubu $v0, $s1, $zero     
  0042ae14: beq    $zero, $zero, +56     ; br -> 0x0042ae50
  0042ae18: sw     $v1, +4($s0)       
  0042ae1c: addiu  $v0, $zero, +1     
  0042ae20: lw     $v1, +0($s0)       
  0042ae24: addiu  $a3, $s0, +64      
  0042ae28: addiu  $a1, $zero, +3     
  0042ae2c: addiu  $a2, $s0, +66      
  0042ae30: sw     $v0, +4($s0)       
  0042ae34: sw     $a0, +60($s0)      
  0042ae38: dsubu $v0, $s1, $zero     
  0042ae3c: sw     $v1, +56($s0)      
  0042ae40: sw     $a3, +48($s0)      
  0042ae44: sw     $a1, +52($s0)      
  0042ae48: sw     $a2, +0($s0)       
  0042ae4c: sw     $s1, +66($s0)      
  0042ae50: lw     $ra, +32($sp)      
  0042ae54: lw     $s1, +16($sp)      
  0042ae58: lw     $s0, +0($sp)       
  0042ae5c: jr     $ra                
  0042ae60: addiu  $sp, $sp, +48      
  0042ae64: sll $zero, $zero, 0       

; globals: 0x00657754(x1)
