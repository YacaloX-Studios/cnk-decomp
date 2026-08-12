; 0x00429f10  FUN_00429f10  size=40  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00429ef0
; 10 words

  00429f10: lui   $v0, 0x00650000     
  00429f14: addiu  $sp, $sp, -16      
  00429f18: lw     $a0, +30548($v0)      ; GLOBAL 0x00657754
  00429f1c: sw     $ra, +0($sp)       
  00429f20: jal   0xf0429ef0             ; -> FUN_00429ef0
  00429f24: sll $zero, $zero, 0       
  00429f28: lw     $ra, +0($sp)       
  00429f2c: jr     $ra                
  00429f30: addiu  $sp, $sp, +16      
  00429f34: sll $zero, $zero, 0       

; globals: 0x00657754(x1)
