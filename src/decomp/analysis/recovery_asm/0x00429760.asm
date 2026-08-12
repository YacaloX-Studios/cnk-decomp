; 0x00429760  FUN_00429760  size=96  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0043d298
; 24 words

  00429760: addiu  $sp, $sp, -48      
  00429764: sw     $s0, +0($sp)       
  00429768: sw     $s1, +16($sp)      
  0042976c: dsubu $s0, $a0, $zero     
  00429770: dsubu $a0, $a1, $zero     
  00429774: lui   $s1, 0x00650000     
  00429778: sw     $ra, +32($sp)      
  0042977c: dsubu $a1, $a2, $zero     
  00429780: jal   0xf043d298             ; -> 0x0043d298
  00429784: sw     $zero, +30552($s1)    ; GLOBAL 0x00657758
  00429788: dsubu $v1, $v0, $zero     
  0042978c: addiu  $v0, $zero, -1     
  00429790: bne    $v1, $v0, +20         ; br -> 0x004297a8
  00429794: lw     $ra, +32($sp)      
  00429798: lw     $v0, +30552($s1)      ; GLOBAL 0x00657758
  0042979c: bnel   $v0, $zero, +8        ; br -> 0x004297a8
  004297a0: sw     $v0, +0($s0)       
  004297a4: lw     $ra, +32($sp)      
  004297a8: dsubu $v0, $v1, $zero     
  004297ac: lw     $s1, +16($sp)      
  004297b0: lw     $s0, +0($sp)       
  004297b4: jr     $ra                
  004297b8: addiu  $sp, $sp, +48      
  004297bc: sll $zero, $zero, 0       

; globals: 0x00657758(x2)
