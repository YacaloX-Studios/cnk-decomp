; 0x0042c620  FUN_0042c620  size=64  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0043cb00
; 16 words

  0042c620: lui   $v1, 0x00650000     
  0042c624: addiu  $sp, $sp, -16      
  0042c628: lw     $v0, +31436($v1)      ; GLOBAL 0x00657acc
  0042c62c: sq     $ra, +0($sp)       
  0042c630: addiu  $v0, $v0, -1       
  0042c634: bne    $v0, $zero, +28       ; br -> 0x0042c654
  0042c638: sw     $v0, +31436($v1)      ; GLOBAL 0x00657acc
  0042c63c: lui   $v0, 0x00660000     
  0042c640: lui   $a1, 0x00650000     
  0042c644: addiu  $v1, $zero, -1     
  0042c648: lw     $a0, -31056($v0)      ; GLOBAL 0x006686b0
  0042c64c: jal   0xf043cb00             ; -> FUN_0043cb00
  0042c650: sw     $v1, +31432($a1)      ; GLOBAL 0x00657ac8
  0042c654: lq     $ra, +0($sp)       
  0042c658: jr     $ra                
  0042c65c: addiu  $sp, $sp, +16      

; globals: 0x00657acc(x2), 0x006686b0(x1), 0x00657ac8(x1)
