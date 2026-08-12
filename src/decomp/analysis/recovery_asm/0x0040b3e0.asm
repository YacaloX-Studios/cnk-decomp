; 0x0040b3e0  FUN_0040b3e0  size=336  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=
; 84 words

  0040b3e0: addiu  $sp, $sp, -64      
  0040b3e4: lui   $at, 0x00700000     
  0040b3e8: sq     $s3, +48($sp)      
  0040b3ec: sq     $s2, +32($sp)      
  0040b3f0: sq     $s1, +16($sp)      
  0040b3f4: sq     $s0, +0($sp)       
  0040b3f8: lw     $v1, +11040($at)      ; GLOBAL 0x00702b20
  0040b3fc: addiu  $v1, $v1, +1       
  0040b400: slti   $at, $v1, +384     
  0040b404: beq    $at, $zero, +268      ; br -> 0x0040b514
  0040b408: addiu  $v0, $zero, -1     
  0040b40c: daddu $v0, $v1, $zero     
  0040b410: lui   $at, 0x00700000     
  0040b414: subu $v1, $a2, $a1        
  0040b418: sw     $v0, +11040($at)      ; GLOBAL 0x00702b20
  0040b41c: srl $s2, $v1, 3           
  0040b420: lui   $at, 0x00700000     
  0040b424: lw     $v1, +11040($at)      ; GLOBAL 0x00702b20
  0040b428: lui   $s3, 0x00700000     
  0040b42c: lui   $s1, 0x00700000     
  0040b430: lui   $s0, 0x00700000     
  0040b434: lui   $t9, 0x00700000     
  0040b438: lui   $t8, 0x00700000     
  0040b43c: lui   $t7, 0x00700000     
  0040b440: lui   $t6, 0x00700000     
  0040b444: lui   $t5, 0x00700000     
  0040b448: lui   $t4, 0x00700000     
  0040b44c: lui   $t3, 0x00700000     
  0040b450: lui   $t2, 0x00700000     
  0040b454: sll $a2, $v1, 3           
  0040b458: lui   $t1, 0x00700000     
  0040b45c: subu $a2, $a2, $v1        
  0040b460: lui   $t0, 0x00700000     
  0040b464: addiu  $s3, $s3, -10452   
  0040b468: sll $a2, $a2, 3           
  0040b46c: addiu  $s1, $s1, -10464   
  0040b470: addu $s3, $s3, $a2        
  0040b474: addiu  $s0, $s0, -10460   
  0040b478: addu $s1, $s1, $a2        
  0040b47c: sw     $a1, +0($s3)          ; GLOBAL 0x00700000
  0040b480: addiu  $t9, $t9, -10456   
  0040b484: addiu  $t8, $t8, -10440   
  0040b488: addu $s0, $s0, $a2        
  0040b48c: sw     $s2, +0($s1)          ; GLOBAL 0x00700000
  0040b490: addu $a1, $t9, $a2        
  0040b494: sw     $zero, +0($s0)        ; GLOBAL 0x00700000
  0040b498: addiu  $t7, $t7, -10448   
  0040b49c: sw     $v1, +0($a1)       
  0040b4a0: addu $t8, $t8, $a2        
  0040b4a4: addiu  $t6, $t6, -10444   
  0040b4a8: addu $a1, $t7, $a2        
  0040b4ac: sw     $zero, +0($t8)        ; GLOBAL 0x00700000
  0040b4b0: addiu  $t5, $t5, -10436   
  0040b4b4: sw     $zero, +0($a1)     
  0040b4b8: addu $v1, $t6, $a2        
  0040b4bc: addiu  $t4, $t4, -10432   
  0040b4c0: sw     $zero, +0($v1)     
  0040b4c4: addu $a1, $t5, $a2        
  0040b4c8: lui   $a3, 0x00700000     
  0040b4cc: addiu  $t3, $t3, -10428   
  0040b4d0: sw     $zero, +0($a1)     
  0040b4d4: addu $v1, $t4, $a2        
  0040b4d8: addiu  $t2, $t2, -10420   
  0040b4dc: sw     $zero, +0($v1)     
  0040b4e0: addu $a1, $t3, $a2        
  0040b4e4: addiu  $t1, $t1, -10412   
  0040b4e8: sw     $a0, +0($a1)       
  0040b4ec: addu $v1, $t2, $a2        
  0040b4f0: addiu  $t0, $t0, -10416   
  0040b4f4: addu $a1, $t1, $a2        
  0040b4f8: sw     $zero, +0($v1)     
  0040b4fc: addiu  $a3, $a3, -10424   
  0040b500: addu $a0, $t0, $a2        
  0040b504: sw     $zero, +0($a1)     
  0040b508: addu $v1, $a3, $a2        
  0040b50c: sw     $zero, +0($a0)     
  0040b510: sw     $zero, +0($v1)     
  0040b514: lq     $s3, +48($sp)      
  0040b518: lq     $s2, +32($sp)      
  0040b51c: lq     $s1, +16($sp)      
  0040b520: lq     $s0, +0($sp)       
  0040b524: jr     $ra                
  0040b528: addiu  $sp, $sp, +64      
  0040b52c: sll $zero, $zero, 0       

; globals: 0x00700000(x4), 0x00702b20(x3)
