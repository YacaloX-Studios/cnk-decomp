; 0x0042c238  FUN_0042c238  size=72  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042c5c0;0x0042c620;0x00430748
; 18 words

  0042c238: addiu  $sp, $sp, -48      
  0042c23c: sw     $s1, +16($sp)      
  0042c240: sw     $s0, +0($sp)       
  0042c244: dsubu $s1, $a0, $zero     
  0042c248: lui   $s0, 0x00650000     
  0042c24c: sw     $ra, +32($sp)      
  0042c250: jal   0xf042c5c0             ; -> FUN_0042c5c0
  0042c254: lw     $a0, +30548($s0)      ; GLOBAL 0x00657754
  0042c258: lw     $a0, +30548($s0)      ; GLOBAL 0x00657754
  0042c25c: jal   0xf0430748             ; -> FUN_00430748
  0042c260: dsubu $a1, $s1, $zero     
  0042c264: jal   0xf042c620             ; -> FUN_0042c620
  0042c268: lw     $a0, +30548($s0)      ; GLOBAL 0x00657754
  0042c26c: lw     $ra, +32($sp)      
  0042c270: lw     $s1, +16($sp)      
  0042c274: lw     $s0, +0($sp)       
  0042c278: jr     $ra                
  0042c27c: addiu  $sp, $sp, +48      

; globals: 0x00657754(x3)
