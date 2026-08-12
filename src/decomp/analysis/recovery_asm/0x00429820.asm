; 0x00429820  FUN_00429820  size=96  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0043d1a0
; 24 words

  00429820: addiu  $sp, $sp, -48      
  00429824: sw     $s0, +0($sp)       
  00429828: dsubu $s0, $a0, $zero     
  0042982c: sw     $s1, +16($sp)      
  00429830: dsubu $a0, $a1, $zero     
  00429834: lui   $s1, 0x00650000     
  00429838: dsubu $a1, $a2, $zero     
  0042983c: sw     $ra, +32($sp)      
  00429840: sw     $zero, +30552($s1)    ; GLOBAL 0x00657758
  00429844: jal   0xf043d1a0             ; -> 0x0043d1a0
  00429848: dsubu $a2, $a3, $zero     
  0042984c: dsubu $v1, $v0, $zero     
  00429850: addiu  $v0, $zero, -1     
  00429854: bne    $v1, $v0, +20         ; br -> 0x0042986c
  00429858: lw     $ra, +32($sp)      
  0042985c: lw     $v0, +30552($s1)      ; GLOBAL 0x00657758
  00429860: bnel   $v0, $zero, +8        ; br -> 0x0042986c
  00429864: sw     $v0, +0($s0)       
  00429868: lw     $ra, +32($sp)      
  0042986c: dsubu $v0, $v1, $zero     
  00429870: lw     $s1, +16($sp)      
  00429874: lw     $s0, +0($sp)       
  00429878: jr     $ra                
  0042987c: addiu  $sp, $sp, +48      

; globals: 0x00657758(x2)
