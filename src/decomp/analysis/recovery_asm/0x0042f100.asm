; 0x0042f100  FUN_0042f100  size=48  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042e1f0
; 12 words

  0042f100: dsubu $v0, $a0, $zero     
  0042f104: lui   $v1, 0x00650000     
  0042f108: addiu  $sp, $sp, -16      
  0042f10c: dsubu $a2, $a1, $zero     
  0042f110: lw     $a0, +30548($v1)      ; GLOBAL 0x00657754
  0042f114: sw     $ra, +0($sp)       
  0042f118: jal   0xf042e1f0             ; -> 0x0042e1f0
  0042f11c: dsubu $a1, $v0, $zero     
  0042f120: lw     $ra, +0($sp)       
  0042f124: jr     $ra                
  0042f128: addiu  $sp, $sp, +16      
  0042f12c: sll $zero, $zero, 0       

; globals: 0x00657754(x1)
