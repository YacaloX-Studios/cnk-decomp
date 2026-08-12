; 0x0042f158  FUN_0042f158  size=1248  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x003f7b98;0x003f8938;0x003f8eb8
; 312 words

  0042f158: addiu  $sp, $sp, -176     
  0042f15c: sw     $a1, +4($sp)       
  0042f160: sq     $s7, +128($sp)     
  0042f164: sq     $s2, +48($sp)      
  0042f168: lui   $s7, 0x006a0000     
  0042f16c: sq     $fp, +144($sp)     
  0042f170: addiu  $a1, $s7, +17361   
  0042f174: sq     $s3, +64($sp)      
  0042f178: daddu $fp, $a2, $zero     
  0042f17c: sq     $ra, +160($sp)     
  0042f180: daddu $s3, $a3, $zero     
  0042f184: sq     $s6, +112($sp)     
  0042f188: sq     $s5, +96($sp)      
  0042f18c: sq     $s4, +80($sp)      
  0042f190: sq     $s1, +32($sp)      
  0042f194: sq     $s0, +16($sp)      
  0042f198: sw     $a0, +0($sp)       
  0042f19c: lw     $s2, +4($sp)       
  0042f1a0: sw     $zero, +8($sp)     
  0042f1a4: sll $zero, $zero, 0       
  0042f1a8: lb     $s1, +0($s2)       
  0042f1ac: addu $v1, $s1, $a1        
  0042f1b0: lbu    $v0, +0($v1)       
  0042f1b4: andi   $v0, $v0, +8       
  0042f1b8: sll $zero, $zero, 0       
  0042f1bc: bne    $v0, $zero, -24       ; br -> 0x0042f1a8
  0042f1c0: addiu  $s2, $s2, +1       
  0042f1c4: addiu  $v0, $zero, +45    
  0042f1c8: bne    $s1, $v0, +20         ; br -> 0x0042f1e0
  0042f1cc: addiu  $v0, $zero, +43    
  0042f1d0: lb     $s1, +0($s2)       
  0042f1d4: addiu  $v0, $zero, +1     
  0042f1d8: beq    $zero, $zero, +16     ; br -> 0x0042f1ec
  0042f1dc: sw     $v0, +8($sp)       
  0042f1e0: bne    $s1, $v0, +12         ; br -> 0x0042f1f0
  0042f1e4: sll $zero, $zero, 0       
  0042f1e8: lb     $s1, +0($s2)       
  0042f1ec: addiu  $s2, $s2, +1       
  0042f1f0: beq    $s3, $zero, +12       ; br -> 0x0042f200
  0042f1f4: addiu  $v0, $zero, +16    
  0042f1f8: bne    $s3, $v0, +48         ; br -> 0x0042f22c
  0042f1fc: sll $zero, $zero, 0       
  0042f200: addiu  $v0, $zero, +48    
  0042f204: bne    $s1, $v0, +36         ; br -> 0x0042f22c
  0042f208: addiu  $v0, $zero, +120   
  0042f20c: lb     $v1, +0($s2)       
  0042f210: beq    $v1, $v0, +12         ; br -> 0x0042f220
  0042f214: addiu  $v0, $zero, +88    
  0042f218: bne    $v1, $v0, +16         ; br -> 0x0042f22c
  0042f21c: sll $zero, $zero, 0       
  0042f220: lb     $s1, +1($s2)       
  0042f224: addiu  $s3, $zero, +16    
  0042f228: addiu  $s2, $s2, +2       
  0042f22c: bne    $s3, $zero, +24       ; br -> 0x0042f248
  0042f230: daddu $s0, $s3, $zero     
  0042f234: addiu  $s3, $zero, +10    
  0042f238: addiu  $v1, $zero, +8     
  0042f23c: xori   $v0, $s1, +48      
  0042f240: movz   $s3, $v1, $v0      
  0042f244: daddu $s0, $s3, $zero     
  0042f248: addiu  $a0, $zero, -1     
  0042f24c: daddu $a1, $s0, $zero     
  0042f250: jal   0xf03f8938             ; -> 0x003f8938
  0042f254: daddu $s4, $zero, $zero   
  0042f258: addiu  $a0, $zero, -1     
  0042f25c: daddu $s5, $v0, $zero     
  0042f260: jal   0xf03f8eb8             ; -> 0x003f8eb8
  0042f264: daddu $a1, $s0, $zero     
  0042f268: spec3c  $zero,$v0,$s6     
  0042f26c: spec3f  $zero,$s6,$s6     
  0042f270: beq    $zero, $zero, +80     ; br -> 0x0042f2c4
  0042f274: daddu $a0, $zero, $zero   
  0042f278: slt $v0, $s1, $s3         
  0042f27c: beq    $v0, $zero, +124      ; br -> 0x0042f2fc
  0042f280: sll $zero, $zero, 0       
  0042f284: regimm $s4, $zero, +32       ; br -> 0x0042f2a8
  0042f288: sltu $v0, $s5, $a0        
  0042f28c: bnel   $v0, $zero, +44       ; br -> 0x0042f2bc
  0042f290: addiu  $s4, $zero, -1     
  0042f294: bne    $a0, $s5, +24         ; br -> 0x0042f2b0
  0042f298: daddu $a1, $s0, $zero     
  0042f29c: slt $v0, $s6, $s1         
  0042f2a0: beq    $v0, $zero, +12       ; br -> 0x0042f2b0
  0042f2a4: sll $zero, $zero, 0       
  0042f2a8: beq    $zero, $zero, +16     ; br -> 0x0042f2bc
  0042f2ac: addiu  $s4, $zero, -1     
  0042f2b0: jal   0xf03f7b98             ; -> 0x003f7b98
  0042f2b4: addiu  $s4, $zero, +1     
  0042f2b8: daddu $a0, $s1, $v0       
  0042f2bc: lb     $s1, +0($s2)       
  0042f2c0: addiu  $s2, $s2, +1       
  0042f2c4: addiu  $v0, $s7, +17361   
  0042f2c8: addu $v0, $s1, $v0        
  0042f2cc: lbu    $a1, +0($v0)       
  0042f2d0: andi   $v1, $a1, +4       
  0042f2d4: beq    $v1, $zero, +12       ; br -> 0x0042f2e4
  0042f2d8: andi   $v0, $a1, +3       
  0042f2dc: beq    $zero, $zero, -104    ; br -> 0x0042f278
  0042f2e0: addiu  $s1, $s1, -48      
  0042f2e4: beq    $v0, $zero, +20       ; br -> 0x0042f2fc
  0042f2e8: addiu  $v1, $s1, -87      
  0042f2ec: andi   $v0, $a1, +1       
  0042f2f0: addiu  $s1, $s1, -55      
  0042f2f4: beq    $zero, $zero, -128    ; br -> 0x0042f278
  0042f2f8: movz   $s1, $v1, $v0      
  0042f2fc: regimm $s4, $at, +24         ; br -> 0x0042f318
  0042f300: lw     $v1, +8($sp)       
  0042f304: lw     $v1, +0($sp)       
  0042f308: addiu  $v0, $zero, +34    
  0042f30c: addiu  $a0, $zero, -1     
  0042f310: beq    $zero, $zero, +12     ; br -> 0x0042f320
  0042f314: sw     $v0, +0($v1)       
  0042f318: dsubu $v0, $zero, $a0     
  0042f31c: movn   $a0, $v0, $v1      
  0042f320: beq    $fp, $zero, +16       ; br -> 0x0042f334
  0042f324: lw     $v1, +4($sp)       
  0042f328: addiu  $v0, $s2, -1       
  0042f32c: movz   $v0, $v1, $s4      
  0042f330: sw     $v0, +0($fp)       
  0042f334: lq     $ra, +160($sp)     
  0042f338: daddu $v0, $a0, $zero     
  0042f33c: lq     $fp, +144($sp)     
  0042f340: lq     $s7, +128($sp)     
  0042f344: lq     $s6, +112($sp)     
  0042f348: lq     $s5, +96($sp)      
  0042f34c: lq     $s4, +80($sp)      
  0042f350: lq     $s3, +64($sp)      
  0042f354: lq     $s2, +48($sp)      
  0042f358: lq     $s1, +32($sp)      
  0042f35c: lq     $s0, +16($sp)      
  0042f360: jr     $ra                
  0042f364: addiu  $sp, $sp, +176     
  0042f368: daddu $t0, $a0, $zero     
  0042f36c: lui   $v0, 0x00650000     
  0042f370: addiu  $sp, $sp, -16      
  0042f374: daddu $v1, $a1, $zero     
  0042f378: daddu $a3, $a2, $zero     
  0042f37c: lw     $a0, +30548($v0)      ; GLOBAL 0x00657754
  0042f380: sq     $ra, +0($sp)       
  0042f384: daddu $a1, $t0, $zero     
  0042f388: jal   0xf042f158             ; -> FUN_0042f158
  0042f38c: daddu $a2, $v1, $zero     
  0042f390: lq     $ra, +0($sp)       
  0042f394: jr     $ra                
  0042f398: addiu  $sp, $sp, +16      
  0042f39c: sll $zero, $zero, 0       
  0042f3a0: daddu $t1, $a0, $zero     
  0042f3a4: daddu $t2, $a1, $zero     
  0042f3a8: lb     $v0, +0($t1)       
  0042f3ac: lui   $t4, 0x006a0000     
  0042f3b0: beq    $v0, $zero, +92       ; br -> 0x0042f410
  0042f3b4: lbu    $a2, +0($t1)       
  0042f3b8: addiu  $t3, $t4, +17361   
  0042f3bc: sll $zero, $zero, 0       
  0042f3c0: sll $a2, $a2, 24          
  0042f3c4: lb     $t0, +0($t2)       
  0042f3c8: sra $a2, $a2, 24          
  0042f3cc: addu $v0, $a2, $t3        
  0042f3d0: addu $a3, $t0, $t3        
  0042f3d4: lbu    $a0, +0($v0)          ; GLOBAL 0x00650000
  0042f3d8: addiu  $a1, $a2, +32      
  0042f3dc: lbu    $v0, +0($a3)       
  0042f3e0: addiu  $v1, $t0, +32      
  0042f3e4: andi   $a0, $a0, +1       
  0042f3e8: andi   $v0, $v0, +1       
  0042f3ec: movz   $a1, $a2, $a0      
  0042f3f0: movz   $v1, $t0, $v0      
  0042f3f4: bnel   $a1, $v1, +28         ; br -> 0x0042f414
  0042f3f8: lbu    $a3, +0($t1)       
  0042f3fc: addiu  $t1, $t1, +1       
  0042f400: addiu  $t2, $t2, +1       
  0042f404: lb     $v0, +0($t1)       
  0042f408: bne    $v0, $zero, -76       ; br -> 0x0042f3c0
  0042f40c: lbu    $a2, +0($t1)       
  0042f410: lbu    $a3, +0($t1)       
  0042f414: addiu  $v0, $t4, +17361   
  0042f418: lbu    $a2, +0($t2)       
  0042f41c: addu $t0, $a3, $v0        
  0042f420: addiu  $a1, $a3, +32      
  0042f424: addu $v0, $a2, $v0        
  0042f428: lbu    $v1, +0($t0)       
  0042f42c: lbu    $a0, +0($v0)          ; GLOBAL 0x00650000
  0042f430: addiu  $v0, $a2, +32      
  0042f434: andi   $v1, $v1, +1       
  0042f438: andi   $a0, $a0, +1       
  0042f43c: movz   $a1, $a3, $v1      
  0042f440: movz   $v0, $a2, $a0      
  0042f444: jr     $ra                
  0042f448: subu $v0, $a1, $v0        
  0042f44c: sll $zero, $zero, 0       
  0042f450: lb     $v0, +0($a0)       
  0042f454: beq    $v0, $zero, +56       ; br -> 0x0042f490
  0042f458: daddu $a1, $a0, $zero     
  0042f45c: lui   $v0, 0x006a0000     
  0042f460: addiu  $a3, $v0, +17361   
  0042f464: lb     $a2, +0($a1)       
  0042f468: addu $v1, $a2, $a3        
  0042f46c: lbu    $v0, +0($v1)       
  0042f470: andi   $v0, $v0, +1       
  0042f474: beq    $v0, $zero, +8        ; br -> 0x0042f480
  0042f478: addiu  $v0, $a2, +32      
  0042f47c: sb     $v0, +0($a1)       
  0042f480: addiu  $a1, $a1, +1       
  0042f484: lb     $v0, +0($a1)       
  0042f488: bnel   $v0, $zero, -36       ; br -> 0x0042f468
  0042f48c: lb     $a2, +0($a1)       
  0042f490: jr     $ra                
  0042f494: daddu $v0, $a0, $zero     
  0042f498: daddu $t2, $a0, $zero     
  0042f49c: daddu $t1, $a2, $zero     
  0042f4a0: bne    $t1, $zero, +12       ; br -> 0x0042f4b0
  0042f4a4: daddu $t3, $a1, $zero     
  0042f4a8: jr     $ra                
  0042f4ac: daddu $v0, $zero, $zero   
  0042f4b0: lui   $v0, 0xffff0000     
  0042f4b4: addiu  $t1, $t1, -1       
  0042f4b8: ori    $v0, $v0, -1       
  0042f4bc: beq    $t1, $v0, +108        ; br -> 0x0042f52c
  0042f4c0: lui   $t6, 0x006a0000     
  0042f4c4: lui   $t4, 0xffff0000     
  0042f4c8: addiu  $t5, $t6, +17361   
  0042f4cc: ori    $t4, $t4, -1       
  0042f4d0: lb     $a3, +0($t2)       
  0042f4d4: lb     $t0, +0($t3)       
  0042f4d8: addu $a0, $a3, $t5        
  0042f4dc: addiu  $a2, $a3, +32      
  0042f4e0: addu $a1, $t0, $t5        
  0042f4e4: lbu    $v0, +0($a0)       
  0042f4e8: lbu    $v1, +0($a1)       
  0042f4ec: addiu  $a0, $t0, +32      
  0042f4f0: andi   $v0, $v0, +1       
  0042f4f4: andi   $v1, $v1, +1       
  0042f4f8: movz   $a2, $a3, $v0      
  0042f4fc: movz   $a0, $t0, $v1      
  0042f500: bnel   $a2, $a0, +44         ; br -> 0x0042f530
  0042f504: lbu    $a3, +0($t2)       
  0042f508: beql   $t1, $zero, +36       ; br -> 0x0042f530
  0042f50c: lbu    $a3, +0($t2)       
  0042f510: beql   $a3, $zero, +28       ; br -> 0x0042f530
  0042f514: lbu    $a3, +0($t2)       
  0042f518: beq    $t0, $zero, +16       ; br -> 0x0042f52c
  0042f51c: addiu  $t1, $t1, -1       
  0042f520: addiu  $t2, $t2, +1       
  0042f524: bne    $t1, $t4, -88         ; br -> 0x0042f4d0
  0042f528: addiu  $t3, $t3, +1       
  0042f52c: lbu    $a3, +0($t2)       
  0042f530: addiu  $v0, $t6, +17361   
  0042f534: lbu    $a2, +0($t3)       
  0042f538: addu $t0, $a3, $v0        
  0042f53c: addiu  $a1, $a3, +32      
  0042f540: addu $v0, $a2, $v0        
  0042f544: lbu    $v1, +0($t0)       
  0042f548: lbu    $a0, +0($v0)          ; GLOBAL 0xffff0000
  0042f54c: addiu  $v0, $a2, +32      
  0042f550: andi   $v1, $v1, +1       
  0042f554: andi   $a0, $a0, +1       
  0042f558: movz   $a1, $a3, $v1      
  0042f55c: movz   $v0, $a2, $a0      
  0042f560: jr     $ra                
  0042f564: subu $v0, $a1, $v0        
  0042f568: sll $a1, $a1, 24          
  0042f56c: lb     $v0, +0($a0)       
  0042f570: sra $a1, $a1, 24          
  0042f574: daddu $a2, $zero, $zero   
  0042f578: beq    $v0, $zero, +36       ; br -> 0x0042f5a0
  0042f57c: lbu    $v1, +0($a0)       
  0042f580: sll $v0, $v1, 24          
  0042f584: sra $v0, $v0, 24          
  0042f588: xor $v0, $v0, $a1         
  0042f58c: movz   $a2, $a0, $v0      
  0042f590: addiu  $a0, $a0, +1       
  0042f594: lb     $v0, +0($a0)       
  0042f598: bne    $v0, $zero, -28       ; br -> 0x0042f580
  0042f59c: lbu    $v1, +0($a0)       
  0042f5a0: lb     $v1, +0($a0)       
  0042f5a4: daddu $v0, $a0, $zero     
  0042f5a8: xor $v1, $v1, $a1         
  0042f5ac: jr     $ra                
  0042f5b0: movn   $v0, $a2, $v1      
  0042f5b4: sll $zero, $zero, 0       
  0042f5b8: lb     $v0, +0($a0)       
  0042f5bc: bne    $v0, $zero, +24       ; br -> 0x0042f5d8
  0042f5c0: lb     $v1, +0($a1)       
  0042f5c4: daddu $v0, $zero, $zero   
  0042f5c8: jr     $ra                
  0042f5cc: movz   $v0, $a0, $v1      
  0042f5d0: jr     $ra                
  0042f5d4: daddu $v0, $a0, $zero     
  0042f5d8: sll $zero, $zero, 0       
  0042f5dc: sll $zero, $zero, 0       
  0042f5e0: sll $zero, $zero, 0       
  0042f5e4: beq    $v1, $zero, -24       ; br -> 0x0042f5d0
  0042f5e8: daddu $a3, $zero, $zero   
  0042f5ec: lb     $v0, +0($a0)       
  0042f5f0: bnel   $v1, $v0, +44         ; br -> 0x0042f620
  0042f5f4: addiu  $a0, $a0, +1       
  0042f5f8: addiu  $a3, $a3, +1       
  0042f5fc: sll $zero, $zero, 0       
  0042f600: addu $v0, $a1, $a3        
  0042f604: lb     $a2, +0($v0)          ; GLOBAL 0xffff0000
  0042f608: beq    $a2, $zero, -60       ; br -> 0x0042f5d0
  0042f60c: addu $v0, $a0, $a3        
  0042f610: lb     $v1, +0($v0)          ; GLOBAL 0xffff0000
  0042f614: beql   $a2, $v1, -24         ; br -> 0x0042f600
  0042f618: addiu  $a3, $a3, +1       
  0042f61c: addiu  $a0, $a0, +1       
  0042f620: lb     $v0, +0($a0)       
  0042f624: bnel   $v0, $zero, -80       ; br -> 0x0042f5d8
  0042f628: lb     $v1, +0($a1)       
  0042f62c: jr     $ra                
  0042f630: daddu $v0, $zero, $zero   
  0042f634: sll $zero, $zero, 0       

; globals: 0xffff0000(x3), 0x00650000(x2), 0x00657754(x1)
