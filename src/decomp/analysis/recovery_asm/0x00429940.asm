; 0x00429940  FUN_00429940  size=96  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0043d0a8
; 24 words

  00429940: addiu  $sp, $sp, -48      
  00429944: sw     $s0, +0($sp)       
  00429948: dsubu  $zero, $a0, +0     
  0042994c: sw     $s1, +16($sp)      
  00429950: dsubu  $zero, $a1, +0     
  00429954: lui   $s1, 0x00650000     
  00429958: dsubu  $zero, $a2, +0     
  0042995c: sw     $ra, +32($sp)      
  00429960: sw     $zero, +30552($s1)    ; GLOBAL 0x00657758
  00429964: jal   0xf043d0a8             ; -> 0x0043d0a8
  00429968: dsubu  $zero, $a3, +0     
  0042996c: dsubu  $zero, $v0, +0     
  00429970: addiu  $v0, $zero, -1     
  00429974: bne    $v1, $v0, +20         ; br -> 0x0042998c
  00429978: lw     $ra, +32($sp)      
  0042997c: lw     $v0, +30552($s1)      ; GLOBAL 0x00657758
  00429980: bnel   $v0, $zero, +8        ; br -> 0x0042998c
  00429984: sw     $v0, +0($s0)       
  00429988: lw     $ra, +32($sp)      
  0042998c: dsubu  $zero, $v1, +0     
  00429990: lw     $s1, +16($sp)      
  00429994: lw     $s0, +0($sp)       
  00429998: jr     $ra                
  0042999c: addiu  $sp, $sp, +48      

; globals: 0x00657758(x2)
