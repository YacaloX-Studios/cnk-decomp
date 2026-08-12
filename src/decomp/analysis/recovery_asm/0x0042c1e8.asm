; 0x0042c1e8  FUN_0042c1e8  size=80  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042c5c0;0x0042c620;0x00430000
; 20 words

  0042c1e8: addiu  $sp, $sp, -48      
  0042c1ec: sq     $s1, +16($sp)      
  0042c1f0: sq     $s0, +0($sp)       
  0042c1f4: lui   $s1, 0x00650000     
  0042c1f8: daddu $s0, $a0, $zero     
  0042c1fc: sq     $ra, +32($sp)      
  0042c200: jal   0xf042c5c0             ; -> FUN_0042c5c0
  0042c204: lw     $a0, +30548($s1)      ; GLOBAL 0x00657754
  0042c208: lw     $a0, +30548($s1)      ; GLOBAL 0x00657754
  0042c20c: jal   0xf0430000             ; -> FUN_00430000
  0042c210: daddu $a1, $s0, $zero     
  0042c214: lw     $a0, +30548($s1)      ; GLOBAL 0x00657754
  0042c218: jal   0xf042c620             ; -> FUN_0042c620
  0042c21c: daddu $s0, $v0, $zero     
  0042c220: daddu $v0, $s0, $zero     
  0042c224: lq     $ra, +32($sp)      
  0042c228: lq     $s1, +16($sp)      
  0042c22c: lq     $s0, +0($sp)       
  0042c230: jr     $ra                
  0042c234: addiu  $sp, $sp, +48      

; globals: 0x00657754(x3)
