; 0x00429708  FUN_00429708  size=88  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0043d1c8
; 22 words

  00429708: addiu  $sp, $sp, -48      
  0042970c: sq     $s1, +16($sp)      
  00429710: sq     $s0, +0($sp)       
  00429714: daddu $s1, $a0, $zero     
  00429718: lui   $s0, 0x00650000     
  0042971c: sq     $ra, +32($sp)      
  00429720: daddu $a0, $a1, $zero     
  00429724: jal   0xf043d1c8             ; -> 0x0043d1c8
  00429728: sw     $zero, +30552($s0)    ; GLOBAL 0x00657758
  0042972c: daddu $v1, $v0, $zero     
  00429730: addiu  $v0, $zero, -1     
  00429734: bne    $v1, $v0, +20         ; br -> 0x0042974c
  00429738: lq     $ra, +32($sp)      
  0042973c: lw     $v0, +30552($s0)      ; GLOBAL 0x00657758
  00429740: bnel   $v0, $zero, +8        ; br -> 0x0042974c
  00429744: sw     $v0, +0($s1)       
  00429748: lq     $ra, +32($sp)      
  0042974c: daddu $v0, $v1, $zero     
  00429750: lq     $s1, +16($sp)      
  00429754: lq     $s0, +0($sp)       
  00429758: jr     $ra                
  0042975c: addiu  $sp, $sp, +48      

; globals: 0x00657758(x2)
