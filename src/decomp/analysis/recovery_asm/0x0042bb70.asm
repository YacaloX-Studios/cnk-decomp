; 0x0042bb70  FUN_0042bb70  size=280  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x004299a0;0x00429c60;0x0042bc88
; 70 words

  0042bb70: addiu  $sp, $sp, -48      
  0042bb74: sq     $s1, +16($sp)      
  0042bb78: sq     $s0, +0($sp)       
  0042bb7c: sq     $ra, +32($sp)      
  0042bb80: daddu $s0, $a1, $zero     
  0042bb84: lw     $v0, +84($s0)      
  0042bb88: bne    $v0, $zero, +20       ; br -> 0x0042bba0
  0042bb8c: daddu $s1, $a0, $zero     
  0042bb90: lui   $v0, 0x00650000     
  0042bb94: lw     $v1, +30548($v0)      ; GLOBAL 0x00657754
  0042bb98: sw     $v1, +84($s0)      
  0042bb9c: sll $zero, $zero, 0       
  0042bba0: lw     $a0, +84($s0)      
  0042bba4: lw     $v0, +56($a0)      
  0042bba8: bnel   $v0, $zero, +16       ; br -> 0x0042bbbc
  0042bbac: lw     $v1, +24($s0)      
  0042bbb0: jal   0xf0429c60             ; -> FUN_00429c60
  0042bbb4: sll $zero, $zero, 0       
  0042bbb8: lw     $v1, +24($s0)      
  0042bbbc: lhu    $v0, +12($s0)      
  0042bbc0: andi   $v0, $v0, +8       
  0042bbc4: beq    $v0, $zero, +16       ; br -> 0x0042bbd8
  0042bbc8: sw     $v1, +8($s0)       
  0042bbcc: lw     $v0, +16($s0)      
  0042bbd0: bnel   $v0, $zero, +24       ; br -> 0x0042bbec
  0042bbd4: lw     $a0, +0($s0)       
  0042bbd8: jal   0xf042bc88             ; -> FUN_0042bc88
  0042bbdc: daddu $a0, $s0, $zero     
  0042bbe0: bne    $v0, $zero, +140      ; br -> 0x0042bc70
  0042bbe4: addiu  $v0, $zero, -1     
  0042bbe8: lw     $a0, +0($s0)       
  0042bbec: lw     $v1, +16($s0)      
  0042bbf0: lw     $v0, +20($s0)      
  0042bbf4: subu $a0, $a0, $v1        
  0042bbf8: slt $v0, $a0, $v0         
  0042bbfc: bne    $v0, $zero, +24       ; br -> 0x0042bc18
  0042bc00: andi   $s1, $s1, +255     
  0042bc04: jal   0xf04299a0             ; -> FUN_004299a0
  0042bc08: daddu $a0, $s0, $zero     
  0042bc0c: bne    $v0, $zero, +96       ; br -> 0x0042bc70
  0042bc10: addiu  $v0, $zero, -1     
  0042bc14: daddu $a0, $zero, $zero   
  0042bc18: lw     $v0, +8($s0)       
  0042bc1c: addiu  $a0, $a0, +1       
  0042bc20: lw     $v1, +0($s0)       
  0042bc24: addiu  $v0, $v0, -1       
  0042bc28: sw     $v0, +8($s0)       
  0042bc2c: sb     $s1, +0($v1)       
  0042bc30: addiu  $v1, $v1, +1       
  0042bc34: lw     $v0, +20($s0)      
  0042bc38: beq    $a0, $v0, +28         ; br -> 0x0042bc58
  0042bc3c: sw     $v1, +0($s0)       
  0042bc40: lhu    $v0, +12($s0)      
  0042bc44: andi   $v0, $v0, +1       
  0042bc48: beq    $v0, $zero, +32       ; br -> 0x0042bc6c
  0042bc4c: addiu  $v0, $zero, +10    
  0042bc50: bnel   $s1, $v0, +28         ; br -> 0x0042bc70
  0042bc54: daddu $v0, $s1, $zero     
  0042bc58: jal   0xf04299a0             ; -> FUN_004299a0
  0042bc5c: daddu $a0, $s0, $zero     
  0042bc60: daddu $v1, $v0, $zero     
  0042bc64: bne    $v1, $zero, +8        ; br -> 0x0042bc70
  0042bc68: addiu  $v0, $zero, -1     
  0042bc6c: daddu $v0, $s1, $zero     
  0042bc70: lq     $ra, +32($sp)      
  0042bc74: lq     $s1, +16($sp)      
  0042bc78: lq     $s0, +0($sp)       
  0042bc7c: jr     $ra                
  0042bc80: addiu  $sp, $sp, +48      
  0042bc84: sll $zero, $zero, 0       

; globals: 0x00657754(x1)
