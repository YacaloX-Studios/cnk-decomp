; 0x0042d708  FUN_0042d708  size=104  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00429cf0;0x00431390
; 26 words

  0042d708: addiu  $sp, $sp, -32      
  0042d70c: daddu $a2, $a1, $zero     
  0042d710: sq     $ra, +16($sp)      
  0042d714: lui   $a1, 0x006a0000     
  0042d718: sq     $s0, +0($sp)       
  0042d71c: addiu  $a1, $a1, +19304   
  0042d720: daddu $s0, $a0, $zero     
  0042d724: jal   0xf0429cf0             ; -> 0x00429cf0
  0042d728: lw     $a0, +12($s0)      
  0042d72c: jal   0xf0431390             ; -> FUN_00431390
  0042d730: daddu $a0, $s0, $zero     
  0042d734: lq     $ra, +16($sp)      
  0042d738: lq     $s0, +0($sp)       
  0042d73c: jr     $ra                
  0042d740: addiu  $sp, $sp, +32      
  0042d744: sll $zero, $zero, 0       
  0042d748: daddu $a1, $a0, $zero     
  0042d74c: lui   $v0, 0x00650000     
  0042d750: addiu  $sp, $sp, -16      
  0042d754: lw     $a0, +30548($v0)      ; GLOBAL 0x00657754
  0042d758: sq     $ra, +0($sp)       
  0042d75c: jal   0xf042d708             ; -> FUN_0042d708
  0042d760: sll $zero, $zero, 0       
  0042d764: lq     $ra, +0($sp)       
  0042d768: jr     $ra                
  0042d76c: addiu  $sp, $sp, +16      

; globals: 0x00657754(x1)
