; 0x004298e0  FUN_004298e0  size=96  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0043d1e0
; 24 words

  004298e0: addiu  $sp, $sp, -48      
  004298e4: sq     $s1, +16($sp)      
  004298e8: sq     $s0, +0($sp)       
  004298ec: lui   $s1, 0x00650000     
  004298f0: daddu $s0, $a0, $zero     
  004298f4: sq     $ra, +32($sp)      
  004298f8: daddu $a0, $a1, $zero     
  004298fc: jal   0xf043d1e0             ; -> 0x0043d1e0
  00429900: sw     $zero, +30552($s1)    ; GLOBAL 0x00657758
  00429904: daddu $v1, $v0, $zero     
  00429908: lui   $v0, 0xffff0000     
  0042990c: ori    $v0, $v0, -1       
  00429910: bne    $v1, $v0, +20         ; br -> 0x00429928
  00429914: lq     $ra, +32($sp)      
  00429918: lw     $v0, +30552($s1)      ; GLOBAL 0x00657758
  0042991c: bnel   $v0, $zero, +8        ; br -> 0x00429928
  00429920: sw     $v0, +0($s0)       
  00429924: lq     $ra, +32($sp)      
  00429928: daddu $v0, $v1, $zero     
  0042992c: lq     $s1, +16($sp)      
  00429930: lq     $s0, +0($sp)       
  00429934: jr     $ra                
  00429938: addiu  $sp, $sp, +48      
  0042993c: sll $zero, $zero, 0       

; globals: 0x00657758(x2)
