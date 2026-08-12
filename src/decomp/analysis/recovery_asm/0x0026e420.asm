; 0x0026e420  FUN_0026e420  size=720  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 180 words

  0026e420: addiu  $sp, $sp, -16      
  0026e424: lw     $v1, +4($a0)       
  0026e428: beq    $v1, $zero, +84       ; br -> 0x0026e480
  0026e42c: daddu $t2, $zero, $zero   
  0026e430: lw     $t0, +12($v1)      
  0026e434: lui   $v0, 0x00630000     
  0026e438: lui   $a3, 0xff000000     
  0026e43c: lui   $a0, 0x00ff0000     
  0026e440: lw     $v0, +27104($v0)      ; GLOBAL 0x006369e0
  0026e444: lw     $t1, +0($t0)       
  0026e448: and $a3, $t1, $a3         
  0026e44c: and $a0, $t1, $a0         
  0026e450: srl $a3, $a3, 24          
  0026e454: srl $a0, $a0, 8           
  0026e458: addu $t0, $a3, $a0        
  0026e45c: andi   $a0, $t1, -256     
  0026e460: sll $a3, $a0, 8           
  0026e464: andi   $a0, $t1, +255     
  0026e468: addu $a3, $a3, $t0        
  0026e46c: sll $a0, $a0, 24          
  0026e470: addu $a0, $a0, $a3        
  0026e474: bne    $v0, $a0, +8          ; br -> 0x0026e480
  0026e478: sll $zero, $zero, 0       
  0026e47c: op19    $zero,$t2,$zero   
  0026e480: beq    $t2, $zero, +84       ; br -> 0x0026e4d8
  0026e484: daddu $v0, $zero, $zero   
  0026e488: lw     $a0, +12($v1)      
  0026e48c: lui   $v0, 0xff000000     
  0026e490: lui   $t1, 0x00ff0000     
  0026e494: lw     $t2, +8($a0)          ; GLOBAL 0x00ff0008
  0026e498: and $a3, $t2, $v0         
  0026e49c: and $a0, $t2, $t1         
  0026e4a0: srl $a3, $a3, 24          
  0026e4a4: srl $a0, $a0, 8           
  0026e4a8: addu $t0, $a3, $a0        
  0026e4ac: andi   $a0, $t2, -256     
  0026e4b0: sll $a3, $a0, 8           
  0026e4b4: andi   $a0, $t2, +255     
  0026e4b8: addu $a3, $a3, $t0        
  0026e4bc: sll $a0, $a0, 24          
  0026e4c0: addu $a3, $a0, $a3        
  0026e4c4: sltu $a0, $a2, $a3        
  0026e4c8: bne    $a0, $zero, +20       ; br -> 0x0026e4e0
  0026e4cc: mult   $a3, $a1, +0       
  0026e4d0: beq    $zero, $zero, +124    ; br -> 0x0026e550
  0026e4d4: daddu $v0, $zero, $zero   
  0026e4d8: beq    $zero, $zero, +120    ; br -> 0x0026e554
  0026e4dc: addiu  $sp, $sp, +16      
  0026e4e0: lw     $v1, +16($v1)      
  0026e4e4: addu $a0, $a2, $a0        
  0026e4e8: addiu  $a3, $sp, +4       
  0026e4ec: sll $a0, $a0, 2           
  0026e4f0: addu $v1, $v1, $a0        
  0026e4f4: lwc1   $zero, +0($v1)     
  0026e4f8: swc1   $zero, +4($sp)     
  0026e4fc: lw     $a1, +0($a3)          ; GLOBAL 0xff000000
  0026e500: and $v1, $a1, $v0         
  0026e504: and $v0, $a1, $t1         
  0026e508: srl $v1, $v1, 24          
  0026e50c: srl $v0, $v0, 8           
  0026e510: addu $a0, $v1, $v0        
  0026e514: andi   $v0, $a1, -256     
  0026e518: sll $v1, $v0, 8           
  0026e51c: andi   $v0, $a1, +255     
  0026e520: addu $v1, $v1, $a0        
  0026e524: sll $v0, $v0, 24          
  0026e528: addu $v0, $v0, $v1        
  0026e52c: sw     $v0, +0($a3)          ; GLOBAL 0xff000000
  0026e530: lwc1   $zero, +4($sp)     
  0026e534: swc1   $zero, +12($sp)    
  0026e538: lw     $v0, +12($sp)      
  0026e53c: swc1   $zero, +8($sp)     
  0026e540: spec3c  $zero,$v0,$v0     
  0026e544: spec3f  $zero,$v0,$v0     
  0026e548: xori   $v0, $v0, +5       
  0026e54c: sltiu  $v0, $v0, +1       
  0026e550: addiu  $sp, $sp, +16      
  0026e554: jr     $ra                
  0026e558: sll $zero, $zero, 0       
  0026e55c: sll $zero, $zero, 0       
  0026e560: sw     $a1, +0($a0)          ; GLOBAL 0x00ff0000
  0026e564: lui   $v1, 0x00ff0000     
  0026e568: sw     $a2, +4($a0)          ; GLOBAL 0x00ff0004
  0026e56c: lui   $a1, 0xff000000     
  0026e570: lw     $t3, +4($a0)          ; GLOBAL 0x00ff0004
  0026e574: lw     $v0, +4($t3)       
  0026e578: sw     $v0, +12($a0)         ; GLOBAL 0x00ff000c
  0026e57c: lw     $t2, +12($a0)         ; GLOBAL 0x00ff000c
  0026e580: and $a2, $t2, $a1         
  0026e584: and $v0, $t2, $v1         
  0026e588: srl $a2, $a2, 24          
  0026e58c: srl $v0, $v0, 8           
  0026e590: addu $t1, $a2, $v0        
  0026e594: andi   $v0, $t2, -256     
  0026e598: sll $a2, $v0, 8           
  0026e59c: andi   $v0, $t2, +255     
  0026e5a0: addu $a2, $a2, $t1        
  0026e5a4: sll $v0, $v0, 24          
  0026e5a8: addu $v0, $v0, $a2        
  0026e5ac: sw     $v0, +12($a0)         ; GLOBAL 0x00ff000c
  0026e5b0: lw     $t2, +8($t3)       
  0026e5b4: lw     $v0, +4($a0)          ; GLOBAL 0x00ff0004
  0026e5b8: and $t1, $t2, $a1         
  0026e5bc: and $a2, $t2, $v1         
  0026e5c0: addiu  $v0, $v0, +12      
  0026e5c4: srl $t1, $t1, 24          
  0026e5c8: srl $a2, $a2, 8           
  0026e5cc: sw     $v0, +16($a0)         ; GLOBAL 0x00ff0010
  0026e5d0: addu $t1, $t1, $a2        
  0026e5d4: andi   $v0, $t2, -256     
  0026e5d8: sll $a2, $v0, 8           
  0026e5dc: andi   $v0, $t2, +255     
  0026e5e0: addu $a2, $a2, $t1        
  0026e5e4: sll $v0, $v0, 24          
  0026e5e8: addu $v0, $v0, $a2        
  0026e5ec: sltu $at, $zero, $v0      
  0026e5f0: beq    $at, $zero, +204      ; br -> 0x0026e6c0
  0026e5f4: daddu $t0, $zero, $zero   
  0026e5f8: daddu $a2, $zero, $zero   
  0026e5fc: lw     $t2, +16($a0)         ; GLOBAL 0x00ff0010
  0026e600: addiu  $t0, $t0, +1       
  0026e604: sltu $t1, $t0, $v0        
  0026e608: addu $t6, $t2, $a2        
  0026e60c: lw     $t5, +0($t6)       
  0026e610: and $t3, $t5, $a1         
  0026e614: and $t2, $t5, $v1         
  0026e618: srl $t3, $t3, 24          
  0026e61c: srl $t2, $t2, 8           
  0026e620: addu $t4, $t3, $t2        
  0026e624: andi   $t2, $t5, -256     
  0026e628: sll $t3, $t2, 8           
  0026e62c: andi   $t2, $t5, +255     
  0026e630: addu $t3, $t3, $t4        
  0026e634: sll $t2, $t2, 24          
  0026e638: addu $t2, $t2, $t3        
  0026e63c: sw     $t2, +0($t6)       
  0026e640: lw     $t2, +16($a0)         ; GLOBAL 0x00ff0010
  0026e644: addu $t6, $t2, $a2        
  0026e648: lw     $t5, +4($t6)       
  0026e64c: and $t3, $t5, $a1         
  0026e650: and $t2, $t5, $v1         
  0026e654: srl $t3, $t3, 24          
  0026e658: srl $t2, $t2, 8           
  0026e65c: addu $t4, $t3, $t2        
  0026e660: andi   $t2, $t5, -256     
  0026e664: sll $t3, $t2, 8           
  0026e668: andi   $t2, $t5, +255     
  0026e66c: addu $t3, $t3, $t4        
  0026e670: sll $t2, $t2, 24          
  0026e674: addu $t2, $t2, $t3        
  0026e678: sw     $t2, +4($t6)       
  0026e67c: lw     $t2, +16($a0)         ; GLOBAL 0x00ff0010
  0026e680: addu $t6, $t2, $a2        
  0026e684: lw     $t5, +8($t6)       
  0026e688: addiu  $a2, $a2, +12      
  0026e68c: and $t3, $t5, $a1         
  0026e690: and $t2, $t5, $v1         
  0026e694: srl $t3, $t3, 24          
  0026e698: srl $t2, $t2, 8           
  0026e69c: addu $t4, $t3, $t2        
  0026e6a0: andi   $t2, $t5, -256     
  0026e6a4: sll $t3, $t2, 8           
  0026e6a8: andi   $t2, $t5, +255     
  0026e6ac: addu $t3, $t3, $t4        
  0026e6b0: sll $t2, $t2, 24          
  0026e6b4: addu $t2, $t2, $t3        
  0026e6b8: bne    $t1, $zero, -192      ; br -> 0x0026e5fc
  0026e6bc: sw     $t2, +8($t6)       
  0026e6c0: addiu  $a1, $v0, +1       
  0026e6c4: sll $v1, $a1, 1           
  0026e6c8: daddu $v0, $a0, $zero     
  0026e6cc: addu $v1, $v1, $a1        
  0026e6d0: sll $a1, $v1, 2           
  0026e6d4: subu $v1, $a3, $a1        
  0026e6d8: sw     $v1, +8($a0)          ; GLOBAL 0x00ff0008
  0026e6dc: lw     $v1, +4($a0)          ; GLOBAL 0x00ff0004
  0026e6e0: addu $v1, $v1, $a1        
  0026e6e4: jr     $ra                
  0026e6e8: sw     $v1, +20($a0)         ; GLOBAL 0x00ff0014
  0026e6ec: sll $zero, $zero, 0       

; globals: 0x00ff0004(x4), 0x00ff0010(x4), 0x00ff000c(x3), 0x00ff0008(x2), 0xff000000(x2), 0x006369e0(x1), 0x00ff0000(x1), 0x00ff0014(x1)
