; 0x0040f030  FUN_0040f030  size=256  status=real_logic
; evidence: args=a0=int;a1=-;a2=int;a3=int ret=void calls=
; 64 words

  0040f030: lui   $a2, 0x00700000     
  0040f034: dsubu  $zero, $zero, +0   
  0040f038: beq    $zero, $zero, +8      ; br -> 0x0040f044
  0040f03c: addiu  $a2, $a2, +12112   
  0040f040: addiu  $a3, $a3, +1       
  0040f044: slti   $at, $a3, +10      
  0040f048: beq    $at, $zero, +24       ; br -> 0x0040f064
  0040f04c: sll    $zero, $zero, +0   
  0040f050: sll    $a3, $zero, +3     
  0040f054: addu   $v1, $a2, +0       
  0040f058: lw     $v1, +0($v1)       
  0040f05c: bne    $v1, $zero, -32       ; br -> 0x0044f040
  0040f060: sll    $zero, $zero, +0   
  0040f064: lui   $v1, 0x00700000     
  0040f068: sll    $a3, $zero, +3     
  0040f06c: addiu  $v1, $v1, +12112   
  0040f070: addu   $a3, $v1, +0       
  0040f074: lui   $v1, 0x00700000     
  0040f078: sw     $a0, +0($a2)          ; GLOBAL 0x00700000
  0040f07c: addiu  $v1, $v1, +12116   
  0040f080: addu   $a3, $v1, +0       
  0040f084: jr     $ra                
  0040f088: sw     $a1, +0($v1)          ; GLOBAL 0x00700000
  0040f08c: sll    $zero, $zero, +0   
  0040f090: lui   $at, 0x00700000     
  0040f094: lw     $v0, +11624($at)      ; GLOBAL 0x00702d68
  0040f098: dadd   $a0, $v0, +0       
  0040f09c: jr     $ra                
  0040f0a0: xori   $v0, $v0, +1       
  0040f0a4: sll    $zero, $zero, +0   
  0040f0a8: sll    $zero, $zero, +0   
  0040f0ac: sll    $zero, $zero, +0   
  0040f0b0: lui   $at, 0x00700000     
  0040f0b4: lw     $v0, +11632($at)      ; GLOBAL 0x00702d70
  0040f0b8: dadd   $a0, $v0, +0       
  0040f0bc: jr     $ra                
  0040f0c0: xori   $v0, $v0, +1       
  0040f0c4: sll    $zero, $zero, +0   
  0040f0c8: sll    $zero, $zero, +0   
  0040f0cc: sll    $zero, $zero, +0   
  0040f0d0: lui   $v0, 0x00700000     
  0040f0d4: sll    $a0, $zero, +3     
  0040f0d8: addiu  $v0, $v0, +11616   
  0040f0dc: addu   $v1, $v0, +0       
  0040f0e0: lw     $v0, +0($v0)          ; GLOBAL 0x00700000
  0040f0e4: xor    $v0, $a1, +0       
  0040f0e8: jr     $ra                
  0040f0ec: sltiu  $v0, $v0, +1       
  0040f0f0: lui   $at, 0x00700000     
  0040f0f4: j     0x0043cb10          
  0040f0f8: lw     $a0, +11696($at)      ; GLOBAL 0x00702db0
  0040f0fc: sll    $zero, $zero, +0   
  0040f100: lui   $at, 0x00700000     
  0040f104: addiu  $v1, $zero, -5     
  0040f108: lw     $a2, +11396($at)      ; GLOBAL 0x00702c84
  0040f10c: op19    $zero,$a0,$zero   
  0040f110: lw     $a1, +64($a2)         ; GLOBAL 0x00700040
  0040f114: lw     $v0, +0($a2)          ; GLOBAL 0x00700000
  0040f118: and    $v1, $a1, +0       
  0040f11c: or     $a0, $v1, +0       
  0040f120: jr     $ra                
  0040f124: sw     $v1, +64($a2)         ; GLOBAL 0x00700040
  0040f128: sll    $zero, $zero, +0   
  0040f12c: sll    $zero, $zero, +0   

; globals: 0x00700000(x4), 0x00700040(x2), 0x00702d68(x1), 0x00702d70(x1), 0x00702db0(x1), 0x00702c84(x1)
