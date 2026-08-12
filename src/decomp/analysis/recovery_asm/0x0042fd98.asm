; 0x0042fd98  FUN_0042fd98  size=616  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x004298e0;0x00430748
; 154 words

  0042fd98: addiu  $sp, $sp, -160     
  0042fd9c: lui   $v0, 0x00650000     
  0042fda0: sq     $fp, +128($sp)     
  0042fda4: lui   $a2, 0x00650000     
  0042fda8: sq     $s7, +112($sp)     
  0042fdac: addiu  $fp, $v0, +31440   
  0042fdb0: sq     $s6, +96($sp)      
  0042fdb4: spec3c  $zero,$a1,$a1     
  0042fdb8: sq     $s5, +80($sp)      
  0042fdbc: lui   $v0, 0xffff0000     
  0042fdc0: sq     $s3, +48($sp)      
  0042fdc4: ori    $v0, $v0, -4       
  0042fdc8: sq     $s2, +32($sp)      
  0042fdcc: spec3e  $zero,$a1,$a1     
  0042fdd0: sq     $s0, +0($sp)       
  0042fdd4: lui   $s6, 0x00650000     
  0042fdd8: sq     $ra, +144($sp)     
  0042fddc: lui   $s0, 0xffff0000     
  0042fde0: sq     $s1, +16($sp)      
  0042fde4: daddu $s7, $a0, $zero     
  0042fde8: sq     $s4, +64($sp)      
  0042fdec: ori    $s0, $s0, -1       
  0042fdf0: lw     $s4, +8($fp)       
  0042fdf4: ld     $v1, +32480($a2)      ; GLOBAL 0x00657ee0
  0042fdf8: lw     $a2, +4($s4)       
  0042fdfc: daddu $a1, $a1, $v1       
  0042fe00: and $s3, $a2, $v0         
  0042fe04: op19    $a1,$a1,$zero     
  0042fe08: lw     $v0, +32488($s6)      ; GLOBAL 0x00657ee8
  0042fe0c: spec3c  $zero,$a1,$s2     
  0042fe10: spec3f  $zero,$s2,$s2     
  0042fe14: beq    $v0, $s0, +32         ; br -> 0x0042fe38
  0042fe18: addu $s5, $s4, $s3        
  0042fe1c: spec3c  $zero,$s2,$v0     
  0042fe20: addiu  $v1, $zero, -4096  
  0042fe24: spec3e  $zero,$v0,$v0     
  0042fe28: op19    $v0,$v0,$at       
  0042fe2c: and $v0, $v0, $v1         
  0042fe30: spec3c  $zero,$v0,$s2     
  0042fe34: spec3f  $zero,$s2,$s2     
  0042fe38: daddu $a0, $s7, $zero     
  0042fe3c: jal   0xf04298e0             ; -> FUN_004298e0
  0042fe40: daddu $a1, $s2, $zero     
  0042fe44: daddu $s1, $v0, $zero     
  0042fe48: beq    $s1, $s0, +384        ; br -> 0x0042ffcc
  0042fe4c: sltu $v0, $s1, $s5        
  0042fe50: beq    $v0, $zero, +16       ; br -> 0x0042fe64
  0042fe54: lui   $v0, 0x00650000     
  0042fe58: bne    $s4, $fp, +372        ; br -> 0x0042ffd0
  0042fe5c: lq     $ra, +144($sp)     
  0042fe60: lui   $v0, 0x00650000     
  0042fe64: lw     $v1, +32512($v0)      ; GLOBAL 0x00657f00
  0042fe68: addu $v1, $v1, $s2        
  0042fe6c: bne    $s1, $s5, +24         ; br -> 0x0042fe88
  0042fe70: sw     $v1, +32512($v0)      ; GLOBAL 0x00657f00
  0042fe74: addu $a1, $s2, $s3        
  0042fe78: lw     $v1, +8($fp)       
  0042fe7c: ori    $v0, $a1, +1       
  0042fe80: beq    $zero, $zero, +272    ; br -> 0x0042ff94
  0042fe84: sw     $v0, +4($v1)       
  0042fe88: lw     $v0, +32488($s6)      ; GLOBAL 0x00657ee8
  0042fe8c: bne    $v0, $s0, +12         ; br -> 0x0042fe9c
  0042fe90: subu $v0, $s1, $s5        
  0042fe94: beq    $zero, $zero, +16     ; br -> 0x0042fea8
  0042fe98: sw     $s1, +32488($s6)      ; GLOBAL 0x00657ee8
  0042fe9c: addu $v0, $v1, $v0        
  0042fea0: lui   $v1, 0x00650000     
  0042fea4: sw     $v0, +32512($v1)      ; GLOBAL 0x00657f00
  0042fea8: addiu  $v0, $s1, +8       
  0042feac: andi   $a1, $v0, +15      
  0042feb0: beq    $a1, $zero, +16       ; br -> 0x0042fec4
  0042feb4: addiu  $v0, $zero, +16    
  0042feb8: subu $s0, $v0, $a1        
  0042febc: beq    $zero, $zero, +8      ; br -> 0x0042fec8
  0042fec0: addu $s1, $s1, $s0        
  0042fec4: daddu $s0, $zero, $zero   
  0042fec8: addu $v0, $s1, $s2        
  0042fecc: addiu  $v1, $zero, +4096  
  0042fed0: andi   $v0, $v0, +4095    
  0042fed4: daddu $a0, $s7, $zero     
  0042fed8: dsubu $v1, $v1, $v0       
  0042fedc: spec3c  $zero,$v1,$v1     
  0042fee0: spec3f  $zero,$v1,$v1     
  0042fee4: addu $s0, $s0, $v1        
  0042fee8: jal   0xf04298e0             ; -> FUN_004298e0
  0042feec: daddu $a1, $s0, $zero     
  0042fef0: daddu $v1, $v0, $zero     
  0042fef4: lui   $v0, 0xffff0000     
  0042fef8: ori    $v0, $v0, -1       
  0042fefc: beq    $v1, $v0, +208        ; br -> 0x0042ffd0
  0042ff00: lq     $ra, +144($sp)     
  0042ff04: subu $v1, $v1, $s1        
  0042ff08: lui   $a0, 0x00650000     
  0042ff0c: addu $a1, $v1, $s0        
  0042ff10: lw     $v0, +32512($a0)      ; GLOBAL 0x00657f00
  0042ff14: lui   $v1, 0x00650000     
  0042ff18: addiu  $a0, $v1, +31440   
  0042ff1c: addu $v0, $v0, $s0        
  0042ff20: ori    $v1, $a1, +1       
  0042ff24: lui   $a1, 0x00650000     
  0042ff28: sw     $v0, +32512($a1)      ; GLOBAL 0x00657f00
  0042ff2c: sw     $s1, +8($a0)          ; GLOBAL 0x00650008
  0042ff30: beq    $s4, $a0, +96         ; br -> 0x0042ff94
  0042ff34: sw     $v1, +4($s1)       
  0042ff38: sltiu  $v0, $s3, +16      
  0042ff3c: beq    $v0, $zero, +16       ; br -> 0x0042ff50
  0042ff40: addiu  $v0, $zero, +1     
  0042ff44: lw     $v1, +8($a0)          ; GLOBAL 0x00650008
  0042ff48: beq    $zero, $zero, +132    ; br -> 0x0042ffd0
  0042ff4c: sw     $v0, +4($v1)          ; GLOBAL 0x00650004
  0042ff50: lw     $v1, +4($s4)       
  0042ff54: lui   $v0, 0xffff0000     
  0042ff58: addiu  $a0, $s3, -12      
  0042ff5c: ori    $v0, $v0, -16      
  0042ff60: and $s3, $a0, $v0         
  0042ff64: andi   $v1, $v1, +1       
  0042ff68: or $v1, $v1, $s3          
  0042ff6c: addu $a0, $s4, $s3        
  0042ff70: sw     $v1, +4($s4)       
  0042ff74: addiu  $v0, $zero, +5     
  0042ff78: sw     $v0, +8($a0)          ; GLOBAL 0x00650008
  0042ff7c: sltiu  $v1, $s3, +16      
  0042ff80: bne    $v1, $zero, +16       ; br -> 0x0042ff94
  0042ff84: sw     $v0, +4($a0)          ; GLOBAL 0x00650004
  0042ff88: daddu $a0, $s7, $zero     
  0042ff8c: jal   0xf0430748             ; -> FUN_00430748
  0042ff90: addiu  $a1, $s4, +8       
  0042ff94: lui   $v0, 0x00650000     
  0042ff98: lui   $a0, 0x00650000     
  0042ff9c: lw     $v1, +32512($v0)      ; GLOBAL 0x00657f00
  0042ffa0: ld     $v0, +32496($a0)      ; GLOBAL 0x00657ef0
  0042ffa4: sltu $v0, $v0, $v1        
  0042ffa8: bnel   $v0, $zero, +4        ; br -> 0x0042ffb0
  0042ffac: sd     $v1, +32496($a0)      ; GLOBAL 0x00657ef0
  0042ffb0: lui   $a0, 0x00650000     
  0042ffb4: lui   $a1, 0x00650000     
  0042ffb8: lw     $v1, +32512($a1)      ; GLOBAL 0x00657f00
  0042ffbc: ld     $v0, +32504($a0)      ; GLOBAL 0x00657ef8
  0042ffc0: sltu $v0, $v0, $v1        
  0042ffc4: bnel   $v0, $zero, +4        ; br -> 0x0042ffcc
  0042ffc8: sd     $v1, +32504($a0)      ; GLOBAL 0x00657ef8
  0042ffcc: lq     $ra, +144($sp)     
  0042ffd0: lq     $fp, +128($sp)     
  0042ffd4: lq     $s7, +112($sp)     
  0042ffd8: lq     $s6, +96($sp)      
  0042ffdc: lq     $s5, +80($sp)      
  0042ffe0: lq     $s4, +64($sp)      
  0042ffe4: lq     $s3, +48($sp)      
  0042ffe8: lq     $s2, +32($sp)      
  0042ffec: lq     $s1, +16($sp)      
  0042fff0: lq     $s0, +0($sp)       
  0042fff4: jr     $ra                
  0042fff8: addiu  $sp, $sp, +160     
  0042fffc: sll $zero, $zero, 0       

; globals: 0x00657f00(x7), 0x00657ee8(x3), 0x00650008(x3), 0x00650004(x2), 0x00657ef0(x2), 0x00657ef8(x2), 0x00657ee0(x1)
