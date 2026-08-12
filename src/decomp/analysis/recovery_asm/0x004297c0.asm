; 0x004297c0  FUN_004297c0  size=96  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0043d1d8
; 24 words

  004297c0: addiu  $sp, $sp, -48      
  004297c4: sq     $s0, +0($sp)       
  004297c8: daddu $s0, $a0, $zero     
  004297cc: sq     $s1, +16($sp)      
  004297d0: daddu $a0, $a1, $zero     
  004297d4: lui   $s1, 0x00650000     
  004297d8: daddu $a1, $a2, $zero     
  004297dc: sq     $ra, +32($sp)      
  004297e0: sw     $zero, +30552($s1)    ; GLOBAL 0x00657758
  004297e4: jal   0xf043d1d8             ; -> 0x0043d1d8
  004297e8: daddu $a2, $a3, $zero     
  004297ec: daddu $v1, $v0, $zero     
  004297f0: addiu  $v0, $zero, -1     
  004297f4: bne    $v1, $v0, +20         ; br -> 0x0042980c
  004297f8: lq     $ra, +32($sp)      
  004297fc: lw     $v0, +30552($s1)      ; GLOBAL 0x00657758
  00429800: bnel   $v0, $zero, +8        ; br -> 0x0042980c
  00429804: sw     $v0, +0($s0)       
  00429808: lq     $ra, +32($sp)      
  0042980c: daddu $v0, $v1, $zero     
  00429810: lq     $s1, +16($sp)      
  00429814: lq     $s0, +0($sp)       
  00429818: jr     $ra                
  0042981c: addiu  $sp, $sp, +48      

; globals: 0x00657758(x2)
