; 0x00429880  FUN_00429880  size=96  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0043d128
; 24 words

  00429880: addiu  $sp, $sp, -48      
  00429884: sq     $s0, +0($sp)       
  00429888: daddu $s0, $a0, $zero     
  0042988c: sq     $s1, +16($sp)      
  00429890: daddu $a0, $a1, $zero     
  00429894: lui   $s1, 0x00650000     
  00429898: daddu $a1, $a2, $zero     
  0042989c: sq     $ra, +32($sp)      
  004298a0: sw     $zero, +30552($s1)    ; GLOBAL 0x00657758
  004298a4: jal   0xf043d128             ; -> 0x0043d128
  004298a8: daddu $a2, $a3, $zero     
  004298ac: daddu $v1, $v0, $zero     
  004298b0: addiu  $v0, $zero, -1     
  004298b4: bne    $v1, $v0, +20         ; br -> 0x004298cc
  004298b8: lq     $ra, +32($sp)      
  004298bc: lw     $v0, +30552($s1)      ; GLOBAL 0x00657758
  004298c0: bnel   $v0, $zero, +8        ; br -> 0x004298cc
  004298c4: sw     $v0, +0($s0)       
  004298c8: lq     $ra, +32($sp)      
  004298cc: daddu $v0, $v1, $zero     
  004298d0: lq     $s1, +16($sp)      
  004298d4: lq     $s0, +0($sp)       
  004298d8: jr     $ra                
  004298dc: addiu  $sp, $sp, +48      

; globals: 0x00657758(x2)
