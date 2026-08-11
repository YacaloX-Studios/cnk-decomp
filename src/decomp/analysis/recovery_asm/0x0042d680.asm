; 0x0042d680  FUN_0042d680  size=48  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x004312a0
; 12 words

  0042d680: addiu  $sp, $sp, -32      
  0042d684: lui   $v0, 0x00650000     
  0042d688: sw     $s0, +0($sp)       
  0042d68c: lw     $a1, +30548($v0)      ; GLOBAL 0x00657754
  0042d690: sw     $ra, +16($sp)      
  0042d694: jal   0xf04312a0             ; -> FUN_004312a0
  0042d698: dsubu  $zero, $a0, +0     
  0042d69c: dsubu  $zero, $s0, +0     
  0042d6a0: lw     $ra, +16($sp)      
  0042d6a4: lw     $s0, +0($sp)       
  0042d6a8: jr     $ra                
  0042d6ac: addiu  $sp, $sp, +32      

; globals: 0x00657754(x1)
