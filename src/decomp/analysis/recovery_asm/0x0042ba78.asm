; 0x0042ba78  FUN_0042ba78  size=136  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00432fc0
; 34 words

  0042ba78: addiu  $sp, $sp, -16      
  0042ba7c: lui   $v0, 0x00650000     
  0042ba80: sw     $ra, +0($sp)       
  0042ba84: dsubu  $zero, $a1, +0     
  0042ba88: lw     $v1, +30548($v0)      ; GLOBAL 0x00657754
  0042ba8c: dsubu  $zero, $a0, +0     
  0042ba90: jal   0xf0432fc0             ; -> FUN_00432fc0
  0042ba94: lw     $a0, +8($v1)       
  0042ba98: lw     $ra, +0($sp)       
  0042ba9c: jr     $ra                
  0042baa0: addiu  $sp, $sp, +16      
  0042baa4: sll    $zero, $zero, +0   
  0042baa8: lui   $v0, 0x00650000     
  0042baac: lui   $v1, 0x7fff0000     
  0042bab0: lw     $t0, +30548($v0)      ; GLOBAL 0x00657754
  0042bab4: addiu  $sp, $sp, -112     
  0042bab8: dsubu  $zero, $a0, +0     
  0042babc: ori    $v1, $v1, -1       
  0042bac0: addiu  $v0, $zero, +520   
  0042bac4: sw     $ra, +96($sp)      
  0042bac8: sw     $v1, +20($sp)      
  0042bacc: dsubu  $zero, $sp, +0     
  0042bad0: sw     $v1, +8($sp)       
  0042bad4: sw     $v0, +12($sp)      
  0042bad8: sw     $a3, +16($sp)      
  0042badc: sw     $t0, +84($sp)      
  0042bae0: jal   0xf0432fc0             ; -> FUN_00432fc0
  0042bae4: sw     $a3, +0($sp)       
  0042bae8: lw     $v1, +0($sp)       
  0042baec: lw     $ra, +96($sp)      
  0042baf0: sw     $zero, +0($v1)        ; GLOBAL 0x7fff0000
  0042baf4: jr     $ra                
  0042baf8: addiu  $sp, $sp, +112     
  0042bafc: sll    $zero, $zero, +0   

; globals: 0x00657754(x2), 0x7fff0000(x1)
