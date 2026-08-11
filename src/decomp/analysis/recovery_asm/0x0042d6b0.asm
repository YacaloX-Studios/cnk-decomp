; 0x0042d6b0  FUN_0042d6b0  size=88  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00431390
; 22 words

  0042d6b0: lui   $v0, 0x00650000     
  0042d6b4: addiu  $sp, $sp, -16      
  0042d6b8: lw     $a0, +30548($v0)      ; GLOBAL 0x00657754
  0042d6bc: sw     $ra, +0($sp)       
  0042d6c0: jal   0xf0431390             ; -> FUN_00431390
  0042d6c4: sll    $zero, $zero, +0   
  0042d6c8: lw     $ra, +0($sp)       
  0042d6cc: jr     $ra                
  0042d6d0: addiu  $sp, $sp, +16      
  0042d6d4: sll    $zero, $zero, +0   
  0042d6d8: dsubu  $zero, $a0, +0     
  0042d6dc: lui   $v1, 0x00650000     
  0042d6e0: addiu  $sp, $sp, -16      
  0042d6e4: dsubu  $zero, $a1, +0     
  0042d6e8: lw     $a0, +30548($v1)      ; GLOBAL 0x00657754
  0042d6ec: sw     $ra, +0($sp)       
  0042d6f0: jal   0xf0431488             ; -> FUN_00431488
  0042d6f4: dsubu  $zero, $v0, +0     
  0042d6f8: lw     $ra, +0($sp)       
  0042d6fc: jr     $ra                
  0042d700: addiu  $sp, $sp, +16      
  0042d704: sll    $zero, $zero, +0   

; globals: 0x00657754(x2)
