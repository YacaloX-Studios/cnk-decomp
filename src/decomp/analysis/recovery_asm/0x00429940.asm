; 0x00429940  FUN_00429940  size=96  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0043d0a8
; 24 words

  00429940: addiu  $sp, $sp, -48      
  00429944: sq     $s0, +0($sp)       
  00429948: daddu $s0, $a0, $zero     
  0042994c: sq     $s1, +16($sp)      
  00429950: daddu $a0, $a1, $zero     
  00429954: lui   $s1, 0x00650000     
  00429958: daddu $a1, $a2, $zero     
  0042995c: sq     $ra, +32($sp)      
  00429960: sw     $zero, +30552($s1)    ; GLOBAL 0x00657758
  00429964: jal   0xf043d0a8             ; -> 0x0043d0a8
  00429968: daddu $a2, $a3, $zero     
  0042996c: daddu $v1, $v0, $zero     
  00429970: addiu  $v0, $zero, -1     
  00429974: bne    $v1, $v0, +20         ; br -> 0x0042998c
  00429978: lq     $ra, +32($sp)      
  0042997c: lw     $v0, +30552($s1)      ; GLOBAL 0x00657758
  00429980: bnel   $v0, $zero, +8        ; br -> 0x0042998c
  00429984: sw     $v0, +0($s0)       
  00429988: lq     $ra, +32($sp)      
  0042998c: daddu $v0, $v1, $zero     
  00429990: lq     $s1, +16($sp)      
  00429994: lq     $s0, +0($sp)       
  00429998: jr     $ra                
  0042999c: addiu  $sp, $sp, +48      

; globals: 0x00657758(x2)
