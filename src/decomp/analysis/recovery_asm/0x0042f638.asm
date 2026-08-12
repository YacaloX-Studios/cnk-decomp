; 0x0042f638  FUN_0042f638  size=40  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042f660
; 10 words

  0042f638: lui   $v0, 0x00650000     
  0042f63c: addiu  $sp, $sp, -16      
  0042f640: lw     $a2, +30548($v0)      ; GLOBAL 0x00657754
  0042f644: sw     $ra, +0($sp)       
  0042f648: jal   0xf042f660             ; -> FUN_0042f660
  0042f64c: addiu  $a2, $a2, +92      
  0042f650: lw     $ra, +0($sp)       
  0042f654: jr     $ra                
  0042f658: addiu  $sp, $sp, +16      
  0042f65c: sll $zero, $zero, 0       

; globals: 0x00657754(x1)
