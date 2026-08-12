; 0x002470e0  FUN_002470e0  size=1456  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=w;a3=ptr ret=ptr calls=
; 364 words

  002470e0: addiu  $sp, $sp, -384     
  002470e4: dsubu $t4, $a0, $zero     
  002470e8: sw     $fp, +128($sp)     
  002470ec: addiu  $v0, $sp, +304     
  002470f0: sw     $s7, +112($sp)     
  002470f4: addiu  $t5, $sp, +308     
  002470f8: lw     $zero, +392($sp)   
  002470fc: dsubu $t6, $a1, $zero     
  00247100: sw     $s6, +96($sp)      
  00247104: sw     $s5, +80($sp)      
  00247108: sw     $s4, +64($sp)      
  0024710c: sw     $s3, +48($sp)      
  00247110: sw     $s2, +32($sp)      
  00247114: sw     $s1, +16($sp)      
  00247118: sw     $s0, +0($sp)       
  0024711c: sw     $zero, +304($sp)   
  00247120: sw     $zero, +0($t5)     
  00247124: sw     $zero, +8($v0)     
  00247128: sw     $zero, +12($v0)    
  0024712c: sw     $zero, +16($v0)    
  00247130: sw     $zero, +20($v0)    
  00247134: sw     $zero, +24($v0)    
  00247138: sw     $zero, +28($v0)    
  0024713c: sw     $zero, +32($v0)    
  00247140: sw     $zero, +36($v0)    
  00247144: sw     $zero, +40($v0)    
  00247148: sw     $zero, +44($v0)    
  0024714c: sw     $zero, +48($v0)    
  00247150: sw     $zero, +52($v0)    
  00247154: sw     $zero, +56($v0)    
  00247158: sw     $zero, +60($v0)    
  0024715c: lw     $v0, +0($t4)       
  00247160: addiu  $t6, $t6, -1       
  00247164: sll $v0, $v0, 2           
  00247168: addiu  $t4, $t4, +4       
  0024716c: addu $v1, $v0, $sp        
  00247170: lw     $v0, +304($v1)     
  00247174: addiu  $v0, $v0, +1       
  00247178: bne    $t6, $zero, -32       ; br -> 0x0024715c
  0024717c: sw     $v0, +304($v1)     
  00247180: lw     $v0, +304($sp)     
  00247184: beq    $v0, $a1, +264        ; br -> 0x00247290
  00247188: sll $zero, $zero, 0       
  0024718c: lw     $v0, +0($t2)       
  00247190: addiu  $t6, $zero, +1     
  00247194: lw     $v1, +0($t5)       
  00247198: bne    $v1, $zero, +264      ; br -> 0x002472a4
  0024719c: daddu $at, $v0, $t6       
  002471a0: addiu  $t6, $t6, +1       
  002471a4: sltiu  $at, $t6, +16      
  002471a8: bne    $at, $zero, -24       ; br -> 0x00247194
  002471ac: addiu  $t5, $t5, +4       
  002471b0: beq    $zero, $zero, +236    ; br -> 0x002472a0
  002471b4: sll $zero, $zero, 0       
  002471b8: addiu  $t4, $zero, +15    
  002471bc: addiu  $s0, $sp, +364     
  002471c0: lw     $t7, +0($s0)       
  002471c4: bne    $t7, $zero, +244      ; br -> 0x002472bc
  002471c8: daddu $at, $t4, $v0       
  002471cc: addiu  $t4, $t4, -1       
  002471d0: bne    $t4, $zero, -20       ; br -> 0x002471c0
  002471d4: addiu  $s0, $s0, -4       
  002471d8: beq    $zero, $zero, +220    ; br -> 0x002472b8
  002471dc: sll $zero, $zero, 0       
  002471e0: sw     $v0, +0($t2)       
  002471e4: daddu $at, $t6, $t4       
  002471e8: addiu  $t2, $zero, +1     
  002471ec: beq    $at, $zero, +64       ; br -> 0x00247230
  002471f0: sllv $s0, $t2, $t6        
  002471f4: sll $t2, $t6, 2           
  002471f8: addu $t2, $t2, $sp        
  002471fc: addiu  $t7, $t2, +304     
  00247200: lw     $t2, +0($t7)       
  00247204: subu $t2, $s0, $t2        
  00247208: regimm $t2, $at, +12         ; br -> 0x00247218
  0024720c: sll $zero, $zero, 0       
  00247210: beq    $zero, $zero, +1092   ; br -> 0x00247658
  00247214: addiu  $v0, $zero, -3     
  00247218: sll $s0, $t2, 1           
  0024721c: addiu  $t6, $t6, +1       
  00247220: daddu $t2, $t6, $t4       
  00247224: bne    $t2, $zero, -40       ; br -> 0x00247200
  00247228: addiu  $t7, $t7, +4       
  0024722c: sll $zero, $zero, 0       
  00247230: sll $t2, $t4, 2           
  00247234: addu $t2, $t2, $sp        
  00247238: addiu  $t7, $t2, +304     
  0024723c: lw     $t2, +0($t7)       
  00247240: subu $t6, $s0, $t2        
  00247244: regimm $t6, $zero, +132      ; br -> 0x002472cc
  00247248: sll $zero, $zero, 0       
  0024724c: addu $t2, $t2, $t6        
  00247250: addiu  $t4, $t4, -1       
  00247254: sw     $t2, +0($t7)       
  00247258: addiu  $s0, $sp, +308     
  0024725c: sw     $zero, +180($sp)   
  00247260: dsubu $t7, $zero, $zero   
  00247264: beq    $t4, $zero, +108      ; br -> 0x002472d4
  00247268: addiu  $s2, $sp, +184     
  0024726c: lw     $t2, +0($s0)       
  00247270: addiu  $t4, $t4, -1       
  00247274: addu $t7, $t7, $t2        
  00247278: addiu  $s0, $s0, +4       
  0024727c: sw     $t7, +0($s2)       
  00247280: bne    $t4, $zero, -24       ; br -> 0x0024726c
  00247284: addiu  $s2, $s2, +4       
  00247288: beq    $zero, $zero, +76     ; br -> 0x002472d8
  0024728c: dsubu $s2, $zero, $zero   
  00247290: sw     $zero, +0($t1)     
  00247294: dsubu $v0, $zero, $zero   
  00247298: beq    $zero, $zero, +956    ; br -> 0x00247658
  0024729c: sw     $zero, +0($t2)     
  002472a0: daddu $at, $v0, $t6       
  002472a4: dsubu $t5, $t6, $zero     
  002472a8: beq    $at, $zero, -244      ; br -> 0x002471b8
  002472ac: dsubu $v1, $t6, $zero     
  002472b0: beq    $zero, $zero, -252    ; br -> 0x002471b8
  002472b4: dsubu $v0, $t6, $zero     
  002472b8: daddu $at, $t4, $v0       
  002472bc: beq    $at, $zero, -224      ; br -> 0x002471e0
  002472c0: dsubu $s1, $t4, $zero     
  002472c4: beq    $zero, $zero, -232    ; br -> 0x002471e0
  002472c8: dsubu $v0, $t4, $zero     
  002472cc: beq    $zero, $zero, +904    ; br -> 0x00247658
  002472d0: addiu  $v0, $zero, -3     
  002472d4: dsubu $s2, $zero, $zero   
  002472d8: lw     $t4, +392($sp)     
  002472dc: lw     $t2, +0($a0)       
  002472e0: bne    $t2, $zero, +500      ; br -> 0x002474d8
  002472e4: addiu  $a0, $a0, +4       
  002472e8: addiu  $s2, $s2, +1       
  002472ec: daddu $t2, $s2, $a1       
  002472f0: bne    $t2, $zero, -24       ; br -> 0x002472dc
  002472f4: sll $zero, $zero, 0       
  002472f8: sll $a0, $s1, 2           
  002472fc: lw     $s0, +392($sp)     
  00247300: addu $a0, $a0, $sp        
  00247304: dadd $at, $s1, $t5        
  00247308: lw     $a0, +176($a0)     
  0024730c: dsubu $t9, $zero, $zero   
  00247310: sw     $zero, +240($sp)   
  00247314: addiu  $s5, $zero, -1     
  00247318: subu $s3, $zero, $v0      
  0024731c: dsubu $s4, $zero, $zero   
  00247320: dsubu $t7, $zero, $zero   
  00247324: bne    $at, $zero, +80       ; br -> 0x00247378
  00247328: sw     $zero, +176($sp)   
  0024732c: sll $a1, $t5, 2           
  00247330: sll $a0, $a0, 2           
  00247334: addu $a1, $a1, $sp        
  00247338: addu $a0, $s0, $a0        
  0024733c: sw     $a0, +144($sp)     
  00247340: addiu  $s7, $a1, +304     
  00247344: lw     $t4, +384($sp)     
  00247348: addiu  $t5, $zero, +1     
  0024734c: lw     $s6, +0($s7)       
  00247350: addiu  $a0, $v1, -1       
  00247354: sllv $a0, $t5, $a0        
  00247358: sw     $a0, +160($sp)     
  0024735c: dsubu $a0, $s6, $zero     
  00247360: bne    $a0, $zero, +68       ; br -> 0x002473a8
  00247364: addiu  $s6, $s6, -1       
  00247368: addiu  $v1, $v1, +1       
  0024736c: dadd $at, $s1, $v1        
  00247370: beq    $at, $zero, -40       ; br -> 0x0024734c
  00247374: addiu  $s7, $s7, +4       
  00247378: beq    $t6, $zero, +36       ; br -> 0x002473a0
  0024737c: dsubu $v0, $zero, $zero   
  00247380: addiu  $v0, $zero, +1     
  00247384: bne    $s1, $v0, +12         ; br -> 0x00247394
  00247388: addiu  $v0, $zero, -5     
  0024738c: beq    $zero, $zero, +12     ; br -> 0x0024739c
  00247390: sll $zero, $zero, 0       
  00247394: beq    $zero, $zero, +8      ; br -> 0x002473a0
  00247398: sll $zero, $zero, 0       
  0024739c: dsubu $v0, $zero, $zero   
  002473a0: beq    $zero, $zero, +696    ; br -> 0x0024765c
  002473a4: lw     $fp, +128($sp)     
  002473a8: sll $a0, $s5, 2           
  002473ac: addu $a0, $a0, $sp        
  002473b0: addiu  $s2, $a0, +240     
  002473b4: addiu  $t8, $a0, +176     
  002473b8: addiu  $fp, $s6, +1       
  002473bc: addu $a0, $s3, $v0        
  002473c0: dadd $at, $a0, $v1        
  002473c4: beq    $at, $zero, +320      ; br -> 0x00247508
  002473c8: sll $zero, $zero, 0       
  002473cc: dsubu $s3, $a0, $zero     
  002473d0: addiu  $s2, $s2, +4       
  002473d4: subu $a0, $s1, $a0        
  002473d8: addiu  $t8, $t8, +4       
  002473dc: daddu $at, $v0, $a0       
  002473e0: beq    $at, $zero, +8        ; br -> 0x002473ec
  002473e4: addiu  $s5, $s5, +1       
  002473e8: dsubu $a0, $v0, $zero     
  002473ec: subu $t2, $v1, $s3        
  002473f0: sllv $a1, $t5, $t2        
  002473f4: daddu $at, $fp, $a1       
  002473f8: beq    $at, $zero, +76       ; br -> 0x00247448
  002473fc: subu $s4, $a1, $fp        
  00247400: daddu $at, $t2, $a0       
  00247404: beq    $at, $zero, +64       ; br -> 0x00247448
  00247408: dsubu $a1, $s7, $zero     
  0024740c: addiu  $t2, $t2, +1       
  00247410: daddu $at, $t2, $a0       
  00247414: beq    $at, $zero, +48       ; br -> 0x00247448
  00247418: sll $zero, $zero, 0       
  0024741c: addiu  $a1, $a1, +4       
  00247420: sll $s4, $s4, 1           
  00247424: lw     $t7, +0($a1)       
  00247428: daddu $at, $t7, $s4       
  0024742c: beq    $at, $zero, +24       ; br -> 0x00247448
  00247430: sll $zero, $zero, 0       
  00247434: subu $s4, $s4, $t7        
  00247438: addiu  $t2, $t2, +1       
  0024743c: daddu $t7, $t2, $a0       
  00247440: bne    $t7, $zero, -40       ; br -> 0x0024741c
  00247444: sll $zero, $zero, 0       
  00247448: lw     $a1, +0($t4)       
  0024744c: sllv $t7, $t5, $t2        
  00247450: addu $a0, $a1, $t7        
  00247454: sltiu  $at, $a0, +1441    
  00247458: beq    $at, $zero, +164      ; br -> 0x00247500
  0024745c: sll $zero, $zero, 0       
  00247460: sw     $a0, +0($t4)       
  00247464: sll $a0, $a1, 3           
  00247468: addu $s4, $t3, $a0        
  0024746c: beq    $s5, $zero, +96       ; br -> 0x002474d0
  00247470: sw     $s4, +0($s2)       
  00247474: subu $a0, $s3, $v0        
  00247478: sw     $t2, +376($sp)     
  0024747c: srlv $a1, $t9, $a0        
  00247480: sw     $t9, +0($t8)       
  00247484: addiu  $a0, $sp, +377     
  00247488: sw     $v0, +0($a0)       
  0024748c: lw     $a0, -4($s2)       
  00247490: subu $a0, $s4, $a0        
  00247494: regimm $a0, $at, +12         ; br -> 0x002474a4
  00247498: sra $t2, $a0, 3           
  0024749c: addiu  $a0, $a0, +7       
  002474a0: sra $t2, $a0, 3           
  002474a4: subu $t2, $t2, $a1        
  002474a8: addiu  $a0, $sp, +380     
  002474ac: sw     $t2, +0($a0)       
  002474b0: lwc1   $at, +376($sp)     
  002474b4: lw     $a0, -4($s2)       
  002474b8: sll $a1, $a1, 3           
  002474bc: lwc1   $zero, +380($sp)   
  002474c0: addu $a0, $a0, $a1        
  002474c4: swc1   $at, +0($a0)       
  002474c8: beq    $zero, $zero, -272    ; br -> 0x002473bc
  002474cc: swc1   $zero, +4($a0)     
  002474d0: beq    $zero, $zero, -280    ; br -> 0x002473bc
  002474d4: sw     $s4, +0($t1)       
  002474d8: sll $t2, $t2, 2           
  002474dc: addu $s0, $t2, $sp        
  002474e0: lw     $t2, +176($s0)     
  002474e4: addiu  $t7, $t2, +1       
  002474e8: sll $t2, $t2, 2           
  002474ec: sw     $t7, +176($s0)     
  002474f0: addu $t2, $t4, $t2        
  002474f4: beq    $zero, $zero, -528    ; br -> 0x002472e8
  002474f8: sw     $s2, +0($t2)       
  002474fc: sll $zero, $zero, 0       
  00247500: beq    $zero, $zero, +340    ; br -> 0x00247658
  00247504: addiu  $v0, $zero, -4     
  00247508: subu $a0, $v1, $s3        
  0024750c: addiu  $a1, $sp, +377     
  00247510: sw     $a0, +0($a1)       
  00247514: lw     $a1, +144($sp)     
  00247518: daddu $at, $s0, $a1       
  0024751c: beq    $at, $zero, +124      ; br -> 0x0024759c
  00247520: addiu  $a1, $zero, +192   
  00247524: lw     $a1, +0($s0)       
  00247528: daddu $at, $a1, $a2       
  0024752c: beq    $at, $zero, +116      ; br -> 0x002475a4
  00247530: sltiu  $at, $a1, +256     
  00247534: beq    $at, $zero, +8        ; br -> 0x00247540
  00247538: addiu  $a1, $zero, +96    
  0024753c: dsubu $a1, $zero, $zero   
  00247540: lw     $t2, +0($s0)       
  00247544: sw     $a1, +376($sp)     
  00247548: addiu  $a1, $sp, +380     
  0024754c: sw     $t2, +0($a1)       
  00247550: addiu  $s0, $s0, +4       
  00247554: srlv $t8, $t9, $s3        
  00247558: daddu $at, $t8, $t7       
  0024755c: beq    $at, $zero, +116      ; br -> 0x002475d4
  00247560: sllv $t2, $t5, $a0        
  00247564: sll $a0, $t8, 3           
  00247568: sll $a1, $t2, 3           
  0024756c: addu $s2, $s4, $a0        
  00247570: lwc1   $at, +376($sp)     
  00247574: lwc1   $zero, +380($sp)   
  00247578: swc1   $at, +0($s2)       
  0024757c: addu $t8, $t8, $t2        
  00247580: swc1   $zero, +4($s2)     
  00247584: daddu $a0, $t8, $t7       
  00247588: addu $s2, $s2, $a1        
  0024758c: bne    $a0, $zero, -24       ; br -> 0x00247578
  00247590: sll $zero, $zero, 0       
  00247594: beq    $zero, $zero, +64     ; br -> 0x002475d8
  00247598: lw     $a1, +160($sp)     
  0024759c: beq    $zero, $zero, -76     ; br -> 0x00247554
  002475a0: sw     $a1, +376($sp)     
  002475a4: subu $a1, $a1, $a2        
  002475a8: addiu  $s0, $s0, +4       
  002475ac: sll $a1, $a1, 2           
  002475b0: addu $t2, $t0, $a1        
  002475b4: lw     $s2, +0($t2)       
  002475b8: addu $a1, $a3, $a1        
  002475bc: lw     $t2, +0($a1)       
  002475c0: addiu  $a1, $s2, +80      
  002475c4: sw     $a1, +376($sp)     
  002475c8: addiu  $a1, $sp, +380     
  002475cc: beq    $zero, $zero, -124    ; br -> 0x00247554
  002475d0: sw     $t2, +0($a1)       
  002475d4: lw     $a1, +160($sp)     
  002475d8: dsubu $a0, $a1, $zero     
  002475dc: and $a0, $t9, $a0         
  002475e0: beq    $a0, $zero, +36       ; br -> 0x00247608
  002475e4: sll $zero, $zero, 0       
  002475e8: xor $t9, $t9, $a1         
  002475ec: srl $a1, $a1, 1           
  002475f0: and $a0, $t9, $a1         
  002475f4: sll $zero, $zero, 0       
  002475f8: sll $zero, $zero, 0       
  002475fc: bne    $a0, $zero, -24       ; br -> 0x002475e8
  00247600: sll $zero, $zero, 0       
  00247604: sll $zero, $zero, 0       
  00247608: xor $t9, $t9, $a1         
  0024760c: sllv $a1, $t5, $s3        
  00247610: sll $a0, $s5, 2           
  00247614: addiu  $a1, $a1, -1       
  00247618: addu $a0, $a0, $sp        
  0024761c: addiu  $a0, $a0, +176     
  00247620: and $t2, $t9, $a1         
  00247624: lw     $a1, +0($a0)       
  00247628: beq    $t2, $a1, -720        ; br -> 0x0024735c
  0024762c: sll $zero, $zero, 0       
  00247630: addiu  $a0, $a0, -4       
  00247634: subu $s3, $s3, $v0        
  00247638: lw     $a1, +0($a0)       
  0024763c: sllv $t2, $t5, $s3        
  00247640: addiu  $t2, $t2, -1       
  00247644: and $t2, $t9, $t2         
  00247648: bne    $t2, $a1, -28         ; br -> 0x00247630
  0024764c: addiu  $s5, $s5, -1       
  00247650: beq    $zero, $zero, -756    ; br -> 0x00247360
  00247654: dsubu $a0, $s6, $zero     
  00247658: lw     $fp, +128($sp)     
  0024765c: lw     $s7, +112($sp)     
  00247660: lw     $s6, +96($sp)      
  00247664: lw     $s5, +80($sp)      
  00247668: lw     $s4, +64($sp)      
  0024766c: lw     $s3, +48($sp)      
  00247670: lw     $s2, +32($sp)      
  00247674: lw     $s1, +16($sp)      
  00247678: lw     $s0, +0($sp)       
  0024767c: jr     $ra                
  00247680: addiu  $sp, $sp, +384     
  00247684: sll $zero, $zero, 0       
  00247688: sll $zero, $zero, 0       
  0024768c: sll $zero, $zero, 0       
