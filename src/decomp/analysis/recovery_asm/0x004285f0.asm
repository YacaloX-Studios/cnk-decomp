; 0x004285f0  FUN_004285f0  size=64  status=real_logic
; evidence: args=a0=-;a1=-;a2=-;a3=- ret=void calls=
; 16 words

  004285f0: lui   $v0, 0x006a0000     
  004285f4: jr     $ra                
  004285f8: addiu  $v0, $v0, +17624   
  004285fc: sll    $zero, $zero, +0   
  00428600: dsubu  $zero, $a0, +0     
  00428604: lui   $v1, 0x00650000     
  00428608: addiu  $sp, $sp, -16      
  0042860c: dsubu  $zero, $a1, +0     
  00428610: lw     $a0, +30548($v1)      ; GLOBAL 0x00657754
  00428614: sw     $ra, +0($sp)       
  00428618: jal   0xf0428420             ; -> 0x00428420
  0042861c: dsubu  $zero, $v0, +0     
  00428620: lw     $ra, +0($sp)       
  00428624: jr     $ra                
  00428628: addiu  $sp, $sp, +16      
  0042862c: sll    $zero, $zero, +0   

; globals: 0x00657754(x1)
