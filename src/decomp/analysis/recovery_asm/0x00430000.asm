; 0x00430000  FUN_00430000  size=1864  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=0x0042c5c0;0x0042c620;0x0042fd98
; 466 words

  00430000: addiu  $sp, $sp, -96      
  00430004: addiu  $a1, $a1, +19      
  00430008: sw     $s3, +48($sp)      
  0043000c: sltiu  $v0, $a1, +31      
  00430010: sw     $ra, +80($sp)      
  00430014: dsubu  $zero, $a0, +0     
  00430018: sw     $s4, +64($sp)      
  0043001c: sw     $s2, +32($sp)      
  00430020: sw     $s1, +16($sp)      
  00430024: bne    $v0, $zero, +20       ; br -> 0x0043003c
  00430028: sw     $s0, +0($sp)       
  0043002c: lui   $v0, 0xffff0000     
  00430030: ori    $v0, $v0, -16      
  00430034: beq    $zero, $zero, +8      ; br -> 0x00430040
  00430038: and    $v0, $a1, +0       
  0043003c: addiu  $s1, $zero, +16    
  00430040: jal   0xf042c5c0             ; -> FUN_0042c5c0
  00430044: dsubu  $zero, $s3, +0     
  00430048: sltiu  $v0, $s1, +504     
  0043004c: beq    $v0, $zero, +88       ; br -> 0x004300a8
  00430050: lui   $v0, 0x00650000     
  00430054: srl    $s1, $zero, +3     
  00430058: addiu  $v1, $v0, +31440   
  0043005c: addu   $v1, $s1, +0       
  00430060: lw     $s0, +12($t1)      
  00430064: beq    $s0, $t1, +56         ; br -> 0x004300a0
  00430068: dsubu  $zero, $v0, +0     
  0043006c: lw     $t0, +12($s0)      
  00430070: lui   $v0, 0xffff0000     
  00430074: lw     $a2, +8($s0)       
  00430078: ori    $v0, $v0, -4       
  0043007c: lw     $a1, +4($s0)       
  00430080: dsubu  $zero, $s3, +0     
  00430084: sw     $t0, +12($a2)      
  00430088: sw     $a2, +8($t0)       
  0043008c: and    $v0, $a1, +0       
  00430090: addu   $a1, $s0, +0       
  00430094: lw     $v0, +4($v1)       
  00430098: beq    $zero, $zero, +1656   ; br -> 0x00430714
  0043009c: ori    $v0, $v0, +1       
  004300a0: beq    $zero, $zero, +244    ; br -> 0x00430198
  004300a4: addiu  $t2, $t2, +2       
  004300a8: srl    $s1, $zero, +9     
  004300ac: bne    $a0, $zero, +12       ; br -> 0x004300bc
  004300b0: sltiu  $v0, $a0, +5       
  004300b4: beq    $zero, $zero, +96     ; br -> 0x00430118
  004300b8: srl    $s1, $zero, +3     
  004300bc: beq    $v0, $zero, +12       ; br -> 0x004300cc
  004300c0: srl    $s1, $zero, +6     
  004300c4: beq    $zero, $zero, +80     ; br -> 0x00430118
  004300c8: addiu  $t2, $v0, +56      
  004300cc: sltiu  $v0, $a0, +21      
  004300d0: bne    $v0, $zero, +68       ; br -> 0x00430118
  004300d4: addiu  $t2, $a0, +91      
  004300d8: sltiu  $v0, $a0, +85      
  004300dc: beq    $v0, $zero, +12       ; br -> 0x004300ec
  004300e0: srl    $s1, $zero, +12    
  004300e4: beq    $zero, $zero, +48     ; br -> 0x00430118
  004300e8: addiu  $t2, $v0, +110     
  004300ec: sltiu  $v0, $a0, +341     
  004300f0: beq    $v0, $zero, +12       ; br -> 0x00430100
  004300f4: srl    $s1, $zero, +15    
  004300f8: beq    $zero, $zero, +28     ; br -> 0x00430118
  004300fc: addiu  $t2, $v0, +119     
  00430100: sltiu  $v0, $a0, +1365    
  00430104: beq    $v0, $zero, +12       ; br -> 0x00430114
  00430108: srl    $s1, $zero, +18    
  0043010c: beq    $zero, $zero, +8      ; br -> 0x00430118
  00430110: addiu  $t2, $v0, +124     
  00430114: addiu  $t2, $zero, +126   
  00430118: lui   $v0, 0x00650000     
  0043011c: sll    $t2, $zero, +3     
  00430120: addiu  $v1, $v0, +31440   
  00430124: addu   $v1, $a0, +0       
  00430128: lw     $s0, +12($t0)      
  0043012c: beq    $zero, $zero, +20     ; br -> 0x00430144
  00430130: dsubu  $zero, $v0, +0     
  00430134: sll    $zero, $zero, +0   
  00430138: regimm $a3, $v1, +1300       ; br -> 0x00430650
  0043013c: lw     $t0, +12($s0)      
  00430140: lw     $s0, +12($s0)      
  00430144: beql   $s0, $t0, +80         ; br -> 0x00430198
  00430148: addiu  $t2, $t2, +1       
  0043014c: lw     $v0, +4($s0)       
  00430150: lui   $v1, 0xffff0000     
  00430154: ori    $v1, $v1, -4       
  00430158: and    $v1, $v0, +0       
  0043015c: daddu  $s1, $a1, +0       
  00430160: beq    $a0, $zero, +20       ; br -> 0x00430178
  00430164: subu   $a1, $s1, +0       
  00430168: spec3c  $zero,$v0,$v0     
  0043016c: spec3e  $zero,$v0,$v0     
  00430170: beq    $zero, $zero, +16     ; br -> 0x00430184
  00430174: spec2f  $zero,$v0,$a3     
  00430178: subu   $s1, $a1, +0       
  0043017c: spec3c  $zero,$v0,$v0     
  00430180: spec3e  $zero,$v0,$a3     
  00430184: slti   $v0, $a3, +16      
  00430188: bne    $v0, $zero, -84       ; br -> 0x00470138
  0043018c: sll    $zero, $zero, +0   
  00430190: addiu  $t2, $t2, -1       
  00430194: addiu  $t2, $t2, +1       
  00430198: lui   $v0, 0x00650000     
  0043019c: dsubu  $zero, $v0, +0     
  004301a0: addiu  $v0, $v0, +31448   
  004301a4: lw     $s0, +8($v0)          ; GLOBAL 0x00650008
  004301a8: beq    $s0, $v0, +536        ; br -> 0x004303c4
  004301ac: addiu  $v0, $zero, -1     
  004301b0: lw     $v0, +4($s0)       
  004301b4: lui   $v1, 0xffff0000     
  004301b8: ori    $v1, $v1, -4       
  004301bc: and    $v1, $v0, +0       
  004301c0: daddu  $s1, $a1, +0       
  004301c4: beq    $a0, $zero, +20       ; br -> 0x004301dc
  004301c8: subu   $a1, $s1, +0       
  004301cc: spec3c  $zero,$v0,$v0     
  004301d0: spec3e  $zero,$v0,$v0     
  004301d4: beq    $zero, $zero, +16     ; br -> 0x004301e8
  004301d8: spec2f  $zero,$v0,$a3     
  004301dc: subu   $s1, $a1, +0       
  004301e0: spec3c  $zero,$v0,$v0     
  004301e4: spec3e  $zero,$v0,$a3     
  004301e8: slti   $v0, $a3, +16      
  004301ec: bne    $v0, $zero, +80       ; br -> 0x00430240
  004301f0: addiu  $a0, $t6, +31448   
  004301f4: ori    $v0, $s1, +1       
  004301f8: addiu  $v1, $zero, +1     
  004301fc: sw     $v0, +4($s0)       
  00430200: addu   $s1, $s0, +0       
  00430204: addiu  $a1, $t6, +31448   
  00430208: or     $v1, $a3, +0       
  0043020c: sw     $t0, +12($a1)      
  00430210: spec3c  $zero,$a3,$v0     
  00430214: spec3f  $zero,$v0,$v0     
  00430218: sw     $t0, +8($a1)       
  0043021c: spec3c  $zero,$v1,$v1     
  00430220: spec3f  $zero,$v1,$v1     
  00430224: addu   $v0, $t0, +0       
  00430228: sw     $a1, +8($t0)       
  0043022c: sw     $v1, +4($t0)       
  00430230: dsubu  $zero, $s3, +0     
  00430234: sw     $a1, +12($t0)      
  00430238: beq    $zero, $zero, +1244   ; br -> 0x00430718
  0043023c: sw     $v0, +0($a2)       
  00430240: sw     $a0, +12($a0)      
  00430244: regimm $a3, $zero, +24       ; br -> 0x00430260
  00430248: sw     $a0, +8($a0)       
  0043024c: addu   $a1, $s0, +0       
  00430250: dsubu  $zero, $s3, +0     
  00430254: lw     $v0, +4($v1)          ; GLOBAL 0xffff0004
  00430258: beq    $zero, $zero, +1208   ; br -> 0x00430714
  0043025c: ori    $v0, $v0, +1       
  00430260: sltiu  $v0, $a1, +512     
  00430264: beq    $v0, $zero, +72       ; br -> 0x004302b0
  00430268: srl    $a1, $zero, +3     
  0043026c: addiu  $v0, $zero, -1     
  00430270: dadd   $a3, $v0, +0       
  00430274: addiu  $v1, $a3, +3       
  00430278: movn    $a3,$v0,$v1       
  0043027c: addiu  $a1, $a0, -8       
  00430280: sra    $v1, $zero, +2     
  00430284: addiu  $v0, $zero, +1     
  00430288: lw     $a0, +4($a1)       
  0043028c: spec14  $v1,$v0,$v0       
  00430290: spec3c  $zero,$v0,$v0     
  00430294: spec3f  $zero,$v0,$v0     
  00430298: sll    $a3, $zero, +3     
  0043029c: or     $v0, $a0, +0       
  004302a0: addu   $a1, $v1, +0       
  004302a4: sw     $a0, +4($a1)       
  004302a8: beq    $zero, $zero, +260    ; br -> 0x004303b0
  004302ac: lw     $a2, +8($t0)       
  004302b0: srl    $a1, $zero, +9     
  004302b4: bne    $v1, $zero, +12       ; br -> 0x004302c4
  004302b8: sltiu  $v0, $v1, +5       
  004302bc: beq    $zero, $zero, +96     ; br -> 0x00430320
  004302c0: srl    $a1, $zero, +3     
  004302c4: beq    $v0, $zero, +12       ; br -> 0x004302d4
  004302c8: srl    $a1, $zero, +6     
  004302cc: beq    $zero, $zero, +80     ; br -> 0x00430320
  004302d0: addiu  $a3, $v0, +56      
  004302d4: sltiu  $v0, $v1, +21      
  004302d8: bne    $v0, $zero, +68       ; br -> 0x00430320
  004302dc: addiu  $a3, $v1, +91      
  004302e0: sltiu  $v0, $v1, +85      
  004302e4: beq    $v0, $zero, +12       ; br -> 0x004302f4
  004302e8: srl    $a1, $zero, +12    
  004302ec: beq    $zero, $zero, +48     ; br -> 0x00430320
  004302f0: addiu  $a3, $v0, +110     
  004302f4: sltiu  $v0, $v1, +341     
  004302f8: beq    $v0, $zero, +12       ; br -> 0x00430308
  004302fc: srl    $a1, $zero, +15    
  00430300: beq    $zero, $zero, +28     ; br -> 0x00430320
  00430304: addiu  $a3, $v0, +119     
  00430308: sltiu  $v0, $v1, +1365    
  0043030c: beq    $v0, $zero, +12       ; br -> 0x0043031c
  00430310: srl    $a1, $zero, +18    
  00430314: beq    $zero, $zero, +8      ; br -> 0x00430320
  00430318: addiu  $a3, $v0, +124     
  0043031c: addiu  $a3, $zero, +126   
  00430320: sll    $a3, $zero, +3     
  00430324: addiu  $t1, $s4, +31440   
  00430328: addu   $t1, $v0, +0       
  0043032c: lw     $a2, +8($t0)       
  00430330: bnel   $a2, $t0, +56         ; br -> 0x0043036c
  00430334: lw     $v1, +4($a2)       
  00430338: addiu  $v0, $zero, -1     
  0043033c: addiu  $v1, $a3, +3       
  00430340: dadd   $a3, $v0, +0       
  00430344: addiu  $a0, $zero, +1     
  00430348: movn    $a3,$v0,$v1       
  0043034c: lw     $a1, +4($t1)       
  00430350: sra    $v1, $zero, +2     
  00430354: spec14  $v1,$a0,$a0       
  00430358: spec3c  $zero,$a0,$a0     
  0043035c: spec3f  $zero,$a0,$a0     
  00430360: or     $a0, $a1, +0       
  00430364: beq    $zero, $zero, +72     ; br -> 0x004303b0
  00430368: sw     $a1, +4($t1)       
  0043036c: lui   $v0, 0xffff0000     
  00430370: ori    $v0, $v0, -4       
  00430374: and    $v0, $v1, +0       
  00430378: daddu  $v1, $a1, +0       
  0043037c: beql   $v1, $zero, +48       ; br -> 0x004303b0
  00430380: lw     $t0, +12($a2)      
  00430384: lui   $v1, 0xffff0000     
  00430388: ori    $v1, $v1, -4       
  0043038c: lw     $a2, +8($a2)       
  00430390: beql   $a2, $t0, +28         ; br -> 0x004303b0
  00430394: lw     $t0, +12($a2)      
  00430398: lw     $v0, +4($a2)       
  0043039c: and    $v1, $v0, +0       
  004303a0: daddu  $v0, $a1, +0       
  004303a4: bnel   $v0, $zero, -24       ; br -> 0x00470390
  004303a8: lw     $a2, +8($a2)       
  004303ac: lw     $t0, +12($a2)      
  004303b0: sw     $t0, +12($s0)      
  004303b4: sw     $a2, +8($s0)       
  004303b8: sw     $s0, +8($t0)       
  004303bc: sw     $s0, +12($a2)      
  004303c0: addiu  $v0, $zero, -1     
  004303c4: addiu  $a0, $t2, +3       
  004303c8: dadd   $t2, $v0, +0       
  004303cc: addiu  $v1, $s4, +31440   
  004303d0: movn    $t2,$v0,$a0       
  004303d4: op27    $v1,$a1,$zero     
  004303d8: sra    $a0, $zero, +2     
  004303dc: addiu  $v0, $zero, +1     
  004303e0: spec14  $a0,$v0,$a2       
  004303e4: daddu  $a2, $a1, +0       
  004303e8: bne    $v1, $zero, +384      ; br -> 0x0043056c
  004303ec: addiu  $v1, $s4, +31440   
  004303f0: and    $a1, $a2, +0       
  004303f4: bne    $v0, $zero, +64       ; br -> 0x00430438
  004303f8: lui   $v0, 0x00650000     
  004303fc: addiu  $v0, $zero, -4     
  00430400: spec38  $zero,$a2,$a2     
  00430404: and    $v0, $t2, +0       
  00430408: and    $a1, $a2, +0       
  0043040c: bne    $v1, $zero, +36       ; br -> 0x00430434
  00430410: addiu  $t2, $v0, +4       
  00430414: dsubu  $zero, $a1, +0     
  00430418: spec38  $zero,$a2,$a2     
  0043041c: and    $v1, $a2, +0       
  00430420: sll    $zero, $zero, +0   
  00430424: sll    $zero, $zero, +0   
  00430428: sll    $zero, $zero, +0   
  0043042c: beq    $v0, $zero, -24       ; br -> 0x00470418
  00430430: addiu  $t2, $t2, +4       
  00430434: lui   $v0, 0x00650000     
  00430438: addiu  $t4, $v0, +31440   
  0043043c: dsubu  $zero, $t4, +0     
  00430440: sll    $t2, $zero, +3     
  00430444: sll    $zero, $zero, +0   
  00430448: dsubu  $zero, $t2, +0     
  0043044c: addu   $t4, $v0, +0       
  00430450: dsubu  $zero, $t1, +0     
  00430454: lw     $s0, +12($t0)      
  00430458: beq    $s0, $t0, +100        ; br -> 0x004304c0
  0043045c: slti   $v0, $t2, +63      
  00430460: lui   $a0, 0xffff0000     
  00430464: ori    $a0, $a0, -4       
  00430468: lw     $v0, +4($s0)       
  0043046c: sll    $zero, $zero, +0   
  00430470: and    $a0, $v0, +0       
  00430474: daddu  $s1, $a1, +0       
  00430478: beq    $v1, $zero, +20       ; br -> 0x00430490
  0043047c: subu   $a1, $s1, +0       
  00430480: spec3c  $zero,$v0,$v0     
  00430484: spec3e  $zero,$v0,$v0     
  00430488: beq    $zero, $zero, +16     ; br -> 0x0043049c
  0043048c: spec2f  $zero,$v0,$a3     
  00430490: subu   $s1, $a1, +0       
  00430494: spec3c  $zero,$v0,$v0     
  00430498: spec3e  $zero,$v0,$a3     
  0043049c: slti   $v0, $a3, +16      
  004304a0: beql   $v0, $zero, +460      ; br -> 0x00430670
  004304a4: lw     $t0, +12($s0)      
  004304a8: regimm $a3, $at, +540        ; br -> 0x004306c8
  004304ac: addu   $a1, $s0, +0       
  004304b0: lw     $s0, +12($s0)      
  004304b4: bnel   $s0, $t0, -72         ; br -> 0x00470470
  004304b8: lw     $v0, +4($s0)       
  004304bc: slti   $v0, $t2, +63      
  004304c0: beq    $v0, $zero, +12       ; br -> 0x004304d0
  004304c4: addiu  $t0, $t0, +8       
  004304c8: addiu  $t0, $t0, +8       
  004304cc: addiu  $t2, $t2, +1       
  004304d0: addiu  $t2, $t2, +1       
  004304d4: andi   $v0, $t2, +3       
  004304d8: bnel   $v0, $zero, -132      ; br -> 0x00470458
  004304dc: lw     $s0, +12($t0)      
  004304e0: andi   $v0, $t3, +3       
  004304e4: beq    $v0, $zero, +100      ; br -> 0x0043054c
  004304e8: addiu  $t1, $t1, -8       
  004304ec: lw     $v0, +8($t1)       
  004304f0: sll    $zero, $zero, +0   
  004304f4: beq    $v0, $t1, -24         ; br -> 0x004704e0
  004304f8: addiu  $t3, $t3, -1       
  004304fc: op27    $t4,$v1,$zero     
  00430500: spec38  $zero,$a2,$a2     
  00430504: daddu  $a2, $v1, +0       
  00430508: bnel   $v0, $zero, +96       ; br -> 0x0043056c
  0043050c: addiu  $v1, $s4, +31440   
  00430510: beq    $a2, $zero, +84       ; br -> 0x00430568
  00430514: and    $v1, $a2, +0       
  00430518: bne    $v0, $zero, -212      ; br -> 0x00470448
  0043051c: sll    $t2, $zero, +3     
  00430520: op27    $t5,$v1,$zero     
  00430524: sll    $zero, $zero, +0   
  00430528: spec38  $zero,$a2,$a2     
  0043052c: and    $v1, $a2, +0       
  00430530: sll    $zero, $zero, +0   
  00430534: sll    $zero, $zero, +0   
  00430538: sll    $zero, $zero, +0   
  0043053c: beq    $v0, $zero, -24       ; br -> 0x00470528
  00430540: addiu  $t2, $t2, +4       
  00430544: beq    $zero, $zero, -256    ; br -> 0x00470448
  00430548: sll    $t2, $zero, +3     
  0043054c: lw     $v1, +4($t4)       
  00430550: spec3c  $zero,$a2,$v0     
  00430554: spec3f  $zero,$v0,$v0     
  00430558: nor    $v0, $zero, +0     
  0043055c: and    $v0, $v1, +0       
  00430560: beq    $zero, $zero, -104    ; br -> 0x004704fc
  00430564: sw     $v1, +4($t4)       
  00430568: addiu  $v1, $s4, +31440   
  0043056c: lui   $v0, 0xffff0000     
  00430570: lw     $a0, +8($v1)          ; GLOBAL 0xffff0008
  00430574: ori    $v0, $v0, -4       
  00430578: lw     $v1, +4($a0)          ; GLOBAL 0xffff0004
  0043057c: and    $v0, $v1, +0       
  00430580: daddu  $s1, $v0, +0       
  00430584: beql   $a0, $zero, +24       ; br -> 0x004305a0
  00430588: subu   $s1, $v0, +0       
  0043058c: subu   $v0, $s1, +0       
  00430590: spec3c  $zero,$v0,$v0     
  00430594: spec3e  $zero,$v0,$v0     
  00430598: beq    $zero, $zero, +12     ; br -> 0x004305a8
  0043059c: spec2f  $zero,$v0,$a3     
  004305a0: spec3c  $zero,$v0,$v0     
  004305a4: spec3e  $zero,$v0,$a3     
  004305a8: addiu  $s2, $s4, +31440   
  004305ac: lui   $s0, 0xffff0000     
  004305b0: lw     $v1, +8($s2)       
  004305b4: ori    $s0, $s0, -4       
  004305b8: lw     $v0, +4($v1)          ; GLOBAL 0xffff0004
  004305bc: and    $s0, $v0, +0       
  004305c0: daddu  $s1, $v0, +0       
  004305c4: bne    $v0, $zero, +16       ; br -> 0x004305d8
  004305c8: dsubu  $zero, $s3, +0     
  004305cc: slti   $v0, $a3, +16      
  004305d0: beq    $v0, $zero, +280      ; br -> 0x004306ec
  004305d4: addiu  $a2, $s4, +31440   
  004305d8: jal   0xf042fd98             ; -> FUN_0042fd98
  004305dc: dsubu  $zero, $s1, +0     
  004305e0: lw     $v0, +8($s2)       
  004305e4: lw     $v1, +4($v0)          ; GLOBAL 0xffff0004
  004305e8: and    $s0, $v1, +0       
  004305ec: daddu  $s1, $v1, +0       
  004305f0: beq    $v0, $zero, +20       ; br -> 0x00430608
  004305f4: subu   $v1, $s1, +0       
  004305f8: spec3c  $zero,$v0,$v0     
  004305fc: spec3e  $zero,$v0,$v0     
  00430600: beq    $zero, $zero, +16     ; br -> 0x00430614
  00430604: spec2f  $zero,$v0,$a3     
  00430608: subu   $s1, $v1, +0       
  0043060c: spec3c  $zero,$v0,$v0     
  00430610: spec3e  $zero,$v0,$a3     
  00430614: addiu  $v0, $s4, +31440   
  00430618: lui   $v1, 0xffff0000     
  0043061c: lw     $a0, +8($v0)          ; GLOBAL 0xffff0008
  00430620: ori    $v1, $v1, -4       
  00430624: lw     $v0, +4($a0)          ; GLOBAL 0xffff0004
  00430628: and    $v1, $v0, +0       
  0043062c: daddu  $s1, $v0, +0       
  00430630: bne    $v0, $zero, +12       ; br -> 0x00430640
  00430634: slti   $v0, $a3, +16      
  00430638: beq    $v0, $zero, +176      ; br -> 0x004306ec
  0043063c: addiu  $a2, $s4, +31440   
  00430640: jal   0xf042c620             ; -> FUN_0042c620
  00430644: dsubu  $zero, $s3, +0     
  00430648: beq    $zero, $zero, +216    ; br -> 0x00430724
  0043064c: dsubu  $zero, $zero, +0   
  00430650: addu   $a1, $s0, +0       
  00430654: lw     $a2, +8($s0)          ; GLOBAL 0xffff0008
  00430658: dsubu  $zero, $s3, +0     
  0043065c: sw     $t0, +12($a2)      
  00430660: sw     $a2, +8($t0)       
  00430664: lw     $v0, +4($v1)          ; GLOBAL 0xffff0004
  00430668: beq    $zero, $zero, +168    ; br -> 0x00430714
  0043066c: ori    $v0, $v0, +1       
  00430670: ori    $a0, $s1, +1       
  00430674: lw     $a2, +8($s0)          ; GLOBAL 0xffff0008
  00430678: addiu  $v0, $zero, +1     
  0043067c: sw     $a0, +4($s0)          ; GLOBAL 0xffff0004
  00430680: addiu  $v1, $t6, +31448   
  00430684: sw     $t0, +12($a2)      
  00430688: or     $v0, $a3, +0       
  0043068c: sw     $a2, +8($t0)       
  00430690: spec3c  $zero,$a3,$a1     
  00430694: spec3f  $zero,$a1,$a1     
  00430698: addu   $s1, $s0, +0       
  0043069c: spec3c  $zero,$v0,$v0     
  004306a0: spec3f  $zero,$v0,$v0     
  004306a4: sw     $t0, +12($v1)         ; GLOBAL 0xffff000c
  004306a8: addu   $a1, $t0, +0       
  004306ac: sw     $t0, +8($v1)          ; GLOBAL 0xffff0008
  004306b0: dsubu  $zero, $s3, +0     
  004306b4: sw     $v0, +4($t0)       
  004306b8: sw     $v1, +8($t0)       
  004306bc: sw     $v1, +12($t0)      
  004306c0: beq    $zero, $zero, +84     ; br -> 0x00430718
  004306c4: sw     $a1, +0($a2)       
  004306c8: dsubu  $zero, $s3, +0     
  004306cc: lw     $v0, +4($v1)          ; GLOBAL 0xffff0004
  004306d0: ori    $v0, $v0, +1       
  004306d4: sw     $v0, +4($v1)          ; GLOBAL 0xffff0004
  004306d8: lw     $t0, +12($s0)         ; GLOBAL 0xffff000c
  004306dc: lw     $a2, +8($s0)          ; GLOBAL 0xffff0008
  004306e0: sw     $t0, +12($a2)      
  004306e4: beq    $zero, $zero, +48     ; br -> 0x00430718
  004306e8: sw     $a2, +8($t0)       
  004306ec: ori    $a1, $s1, +1       
  004306f0: lw     $s0, +8($a2)       
  004306f4: addiu  $v0, $zero, +1     
  004306f8: or     $v0, $a3, +0       
  004306fc: dsubu  $zero, $s3, +0     
  00430700: sw     $a1, +4($s0)          ; GLOBAL 0xffff0004
  00430704: addu   $s1, $s0, +0       
  00430708: spec3c  $zero,$v0,$v0     
  0043070c: spec3f  $zero,$v0,$v0     
  00430710: sw     $v1, +8($a2)       
  00430714: sw     $v0, +4($v1)          ; GLOBAL 0xffff0004
  00430718: jal   0xf042c620             ; -> FUN_0042c620
  0043071c: sll    $zero, $zero, +0   
  00430720: addiu  $v0, $s0, +8       
  00430724: lw     $ra, +80($sp)      
  00430728: lw     $s4, +64($sp)      
  0043072c: lw     $s3, +48($sp)      
  00430730: lw     $s2, +32($sp)      
  00430734: lw     $s1, +16($sp)      
  00430738: lw     $s0, +0($sp)       
  0043073c: jr     $ra                
  00430740: addiu  $sp, $sp, +96      
  00430744: sll    $zero, $zero, +0   

; globals: 0xffff0004(x11), 0xffff0008(x6), 0xffff000c(x2), 0x00650008(x1)
