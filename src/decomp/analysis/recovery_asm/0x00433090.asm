; 0x00433090  FUN_00433090  size=3368  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x003f8938;0x003f8eb8;0x003fb1a8;0x003fb6f8;0x003fb748;0x00428630;0x00428658;0x0
; 842 words

  00433090: addiu  $sp, $sp, -640     
  00433094: sw     $s7, +592($sp)     
  00433098: sw     $s2, +512($sp)     
  0043309c: dsubu $s7, $a2, $zero     
  004330a0: sw     $s1, +496($sp)     
  004330a4: dsubu $s2, $a3, $zero     
  004330a8: sw     $ra, +624($sp)     
  004330ac: dsubu $s1, $a1, $zero     
  004330b0: sw     $fp, +608($sp)     
  004330b4: sw     $s6, +576($sp)     
  004330b8: sw     $s5, +560($sp)     
  004330bc: sw     $s4, +544($sp)     
  004330c0: sw     $s3, +528($sp)     
  004330c4: jal   0xf0428630             ; -> FUN_00428630
  004330c8: sw     $s0, +480($sp)     
  004330cc: addiu  $v0, $sp, +388     
  004330d0: addiu  $v1, $sp, +392     
  004330d4: sw     $zero, +396($sp)   
  004330d8: sw     $v0, +428($sp)     
  004330dc: sw     $v1, +432($sp)     
  004330e0: sw     $zero, +392($sp)   
  004330e4: sll $zero, $zero, 0       
  004330e8: dsubu $s4, $s7, $zero     
  004330ec: addiu  $s3, $zero, +37    
  004330f0: lui   $a1, 0x00650000     
  004330f4: lui   $a2, 0x00650000     
  004330f8: lw     $a0, +30548($a1)      ; GLOBAL 0x00657754
  004330fc: lw     $a3, +29776($a2)      ; GLOBAL 0x00657450
  00433100: lw     $a1, +428($sp)     
  00433104: dsubu $a2, $s7, $zero     
  00433108: jal   0xf042c280             ; -> FUN_0042c280
  0043310c: lw     $t0, +432($sp)     
  00433110: dsubu $s0, $v0, $zero     
  00433114: blez   $s0, $zero, +16       ; br -> 0x00433128
  00433118: lw     $v0, +388($sp)     
  0043311c: bne    $v0, $s3, -48         ; br -> 0x004330f0
  00433120: addu $s7, $s7, $s0        
  00433124: addiu  $s7, $s7, -1       
  00433128: subu $s3, $s7, $s4        
  0043312c: beq    $s3, $zero, +100      ; br -> 0x00433194
  00433130: sll $zero, $zero, 0       
  00433134: lw     $v0, +12($s1)      
  00433138: andi   $v0, $v0, +512     
  0043313c: beq    $v0, $zero, +32       ; br -> 0x00433160
  00433140: dsubu $a1, $s4, $zero     
  00433144: lw     $a0, +0($s1)       
  00433148: jal   0xf04287e0             ; -> 0x004287e0
  0043314c: dsubu $a2, $s3, $zero     
  00433150: lw     $v1, +0($s1)       
  00433154: addu $v1, $v1, $s3        
  00433158: beq    $zero, $zero, +44     ; br -> 0x00433188
  0043315c: sw     $v1, +0($s1)       
  00433160: lw     $v0, +12($s1)      
  00433164: bnel   $v0, $zero, +16       ; br -> 0x00433178
  00433168: lw     $a0, +14($s1)      
  0043316c: addiu  $v0, $zero, +1     
  00433170: sw     $v0, +14($s1)      
  00433174: lw     $a0, +14($s1)      
  00433178: dsubu $a1, $s4, $zero     
  0043317c: dsubu $a2, $s3, $zero     
  00433180: jal   0xf0432eb8             ; -> 0x00432eb8
  00433184: dsubu $a3, $zero, $zero   
  00433188: lw     $v0, +396($sp)     
  0043318c: addu $v0, $v0, $s3        
  00433190: sw     $v0, +396($sp)     
  00433194: blez   $s0, $zero, +3016     ; br -> 0x00433d60
  00433198: addiu  $s7, $s7, +1       
  0043319c: sw     $zero, +384($sp)   
  004331a0: sw     $zero, +404($sp)   
  004331a4: dsubu $s3, $zero, $zero   
  004331a8: sw     $zero, +400($sp)   
  004331ac: addiu  $fp, $zero, -1     
  004331b0: lw     $s6, +0($s7)       
  004331b4: addiu  $s7, $s7, +1       
  004331b8: addiu  $v1, $s6, -32      
  004331bc: sltiu  $v0, $v1, +89      
  004331c0: beq    $v0, $zero, +1580     ; br -> 0x004337f0
  004331c4: lui   $v0, 0x006a0000     
  004331c8: sll $v1, $v1, 2           
  004331cc: addiu  $v0, $v0, +20208   
  004331d0: addu $v1, $v1, $v0        
  004331d4: lw     $a0, +0($v1)       
  004331d8: jr     $a0                
  004331dc: sll $zero, $zero, 0       
  004331e0: lw     $v0, +384($sp)     
  004331e4: bnel   $v0, $zero, -52       ; br -> 0x004331b4
  004331e8: lw     $s6, +0($s7)       
  004331ec: addiu  $v0, $zero, +32    
  004331f0: beq    $zero, $zero, -68     ; br -> 0x004331b0
  004331f4: sw     $v0, +384($sp)     
  004331f8: beq    $zero, $zero, -76     ; br -> 0x004331b0
  004331fc: ori    $s3, $s3, +1       
  00433200: addiu  $s2, $s2, +8       
  00433204: lw     $v1, -8($s2)       
  00433208: regimm $v1, $at, -92         ; br -> 0x004331b0
  0043320c: sw     $v1, +400($sp)     
  00433210: subu $v1, $zero, $v1      
  00433214: sw     $v1, +400($sp)     
  00433218: beq    $zero, $zero, -108    ; br -> 0x004331b0
  0043321c: ori    $s3, $s3, +4       
  00433220: addiu  $v0, $zero, +43    
  00433224: beq    $zero, $zero, -120    ; br -> 0x004331b0
  00433228: sw     $v0, +384($sp)     
  0043322c: lw     $s6, +0($s7)       
  00433230: addiu  $v0, $zero, +42    
  00433234: bne    $s6, $v0, +32         ; br -> 0x00433258
  00433238: addiu  $s7, $s7, +1       
  0043323c: addiu  $s2, $s2, +8       
  00433240: addiu  $v0, $zero, -2     
  00433244: lw     $s0, -8($s2)       
  00433248: addiu  $fp, $zero, -1     
  0043324c: dadd $v0, $v0, $s0        
  00433250: beq    $zero, $zero, -164    ; br -> 0x004331b0
  00433254: movn   $fp, $s0, $v0      
  00433258: addiu  $v0, $s6, -48      
  0043325c: sltiu  $v0, $v0, +10      
  00433260: beq    $v0, $zero, +44       ; br -> 0x00433290
  00433264: dsubu $s0, $zero, $zero   
  00433268: addiu  $v1, $zero, +10    
  0043326c: sll $zero, $zero, 0       
  00433270: mult   $v1, $s0, +0       
  00433274: addiu  $v0, $v0, -48      
  00433278: addu $s0, $v0, $s6        
  0043327c: lw     $s6, +0($s7)       
  00433280: addiu  $v0, $s6, -48      
  00433284: sltiu  $v0, $v0, +10      
  00433288: bne    $v0, $zero, -28       ; br -> 0x00433270
  0043328c: addiu  $s7, $s7, +1       
  00433290: addiu  $v0, $zero, -2     
  00433294: addiu  $fp, $zero, -1     
  00433298: dadd $v0, $v0, $s0        
  0043329c: beq    $zero, $zero, -232    ; br -> 0x004331b8
  004332a0: movn   $fp, $s0, $v0      
  004332a4: beq    $zero, $zero, -248    ; br -> 0x004331b0
  004332a8: ori    $s3, $s3, +128     
  004332ac: dsubu $s0, $zero, $zero   
  004332b0: addiu  $v1, $zero, +10    
  004332b4: sll $zero, $zero, 0       
  004332b8: mult   $v1, $s0, +0       
  004332bc: addiu  $v0, $v0, -48      
  004332c0: addu $s0, $v0, $s6        
  004332c4: lw     $s6, +0($s7)       
  004332c8: addiu  $v0, $s6, -48      
  004332cc: sltiu  $v0, $v0, +10      
  004332d0: bne    $v0, $zero, -28       ; br -> 0x004332b8
  004332d4: addiu  $s7, $s7, +1       
  004332d8: beq    $zero, $zero, -292    ; br -> 0x004331b8
  004332dc: sw     $s0, +400($sp)     
  004332e0: beq    $zero, $zero, -308    ; br -> 0x004331b0
  004332e4: ori    $s3, $s3, +8       
  004332e8: beq    $zero, $zero, -316    ; br -> 0x004331b0
  004332ec: ori    $s3, $s3, +64      
  004332f0: lw     $v1, +0($s7)       
  004332f4: addiu  $v0, $zero, +108   
  004332f8: bnel   $v1, $v0, -332        ; br -> 0x004331b0
  004332fc: ori    $s3, $s3, +16      
  00433300: addiu  $s7, $s7, +1       
  00433304: beq    $zero, $zero, -344    ; br -> 0x004331b0
  00433308: ori    $s3, $s3, +32      
  0043330c: addiu  $s2, $s2, +8       
  00433310: addiu  $a0, $zero, +1     
  00433314: lw     $v0, -8($s2)       
  00433318: andi   $a1, $s3, +4       
  0043331c: addiu  $s4, $sp, +16      
  00433320: sw     $a0, +408($sp)     
  00433324: sw     $zero, +384($sp)   
  00433328: andi   $s5, $s3, +132     
  0043332c: sw     $v0, +16($sp)      
  00433330: beq    $zero, $zero, +1248   ; br -> 0x00433814
  00433334: sw     $a1, +424($sp)     
  00433338: ori    $s3, $s3, +16      
  0043333c: andi   $v0, $s3, +32      
  00433340: bnel   $v0, $zero, +20       ; br -> 0x00433358
  00433344: addiu  $s2, $s2, +8       
  00433348: andi   $v0, $s3, +16      
  0043334c: beq    $v0, $zero, +16       ; br -> 0x00433360
  00433350: andi   $v0, $s3, +64      
  00433354: addiu  $s2, $s2, +8       
  00433358: beq    $zero, $zero, +24     ; br -> 0x00433374
  0043335c: lw     $s0, -8($s2)       
  00433360: beq    $v0, $zero, +12       ; br -> 0x00433370
  00433364: addiu  $s2, $s2, +8       
  00433368: beq    $zero, $zero, +8      ; br -> 0x00433374
  0043336c: lw     $s0, -8($s2)       
  00433370: lw     $s0, -8($s2)       
  00433374: regimm $s0, $at, +776        ; br -> 0x00433680
  00433378: addiu  $a0, $zero, +1     
  0043337c: addiu  $v0, $zero, +45    
  00433380: spec2f  $zero,$s0,$s0     
  00433384: beq    $zero, $zero, +760    ; br -> 0x00433680
  00433388: sw     $v0, +384($sp)     
  0043338c: nor $v0, $zero, $fp       
  00433390: addiu  $v1, $zero, +6     
  00433394: addiu  $s2, $s2, +8       
  00433398: movz   $fp, $v1, $v0      
  0043339c: lw     $s5, -8($s2)       
  004333a0: addiu  $v0, $zero, +103   
  004333a4: beq    $s6, $v0, +16         ; br -> 0x004333b8
  004333a8: dsubu $a3, $zero, $zero   
  004333ac: addiu  $v0, $zero, +71    
  004333b0: bne    $s6, $v0, +168        ; br -> 0x0043345c
  004333b4: andi   $v0, $s3, +1       
  004333b8: dsubu $s4, $zero, $zero   
  004333bc: dsubu $a0, $s5, $zero     
  004333c0: jal   0xf03fb6f8             ; -> 0x003fb6f8
  004333c4: dsubu $a1, $s4, $zero     
  004333c8: beq    $v0, $zero, +52       ; br -> 0x00433400
  004333cc: dsubu $s0, $s5, $zero     
  004333d0: dsubu $a0, $s5, $zero     
  004333d4: jal   0xf03fb6f8             ; -> 0x003fb6f8
  004333d8: dsubu $a1, $s4, $zero     
  004333dc: regimm $v0, $at, +16         ; br -> 0x004333f0
  004333e0: dsubu $a0, $s4, $zero     
  004333e4: jal   0xf03fb1a8             ; -> 0x003fb1a8
  004333e8: dsubu $a1, $s5, $zero     
  004333ec: dsubu $s0, $v0, $zero     
  004333f0: jal   0xf0432588             ; -> FUN_00432588
  004333f4: dsubu $a0, $s0, $zero     
  004333f8: beq    $zero, $zero, +12     ; br -> 0x00433408
  004333fc: dsubu $s0, $v0, $zero     
  00433400: ori    $s0, $zero, -64    
  00433404: spec3c  $zero,$s0,$s0     
  00433408: ori    $a1, $zero, -16368 
  0043340c: spec3c  $zero,$a1,$a1     
  00433410: jal   0xf03fb6f8             ; -> 0x003fb6f8
  00433414: dsubu $a0, $s0, $zero     
  00433418: regimm $v0, $zero, +32       ; br -> 0x0043343c
  0043341c: xori   $a0, $s6, +103     
  00433420: jal   0xf03fb748             ; -> 0x003fb748
  00433424: dsubu $a0, $fp, $zero     
  00433428: dsubu $a0, $s0, $zero     
  0043342c: jal   0xf03fb6f8             ; -> 0x003fb6f8
  00433430: dsubu $a1, $v0, $zero     
  00433434: regimm $v0, $zero, +24       ; br -> 0x00433450
  00433438: xori   $a0, $s6, +103     
  0043343c: addiu  $v0, $zero, +101   
  00433440: addiu  $v1, $zero, +69    
  00433444: dsubu $s6, $v0, $zero     
  00433448: beq    $zero, $zero, +8      ; br -> 0x00433454
  0043344c: movn   $s6, $v1, $a0      
  00433450: addiu  $s6, $zero, +102   
  00433454: addiu  $a3, $zero, +1     
  00433458: andi   $v0, $s3, +1       
  0043345c: beq    $v0, $zero, +12       ; br -> 0x0043346c
  00433460: addiu  $v0, $zero, +1     
  00433464: dsubu $a3, $zero, $zero   
  00433468: movz   $fp, $v0, $fp      
  0043346c: dsubu $a0, $s5, $zero     
  00433470: dsubu $a2, $s6, $zero     
  00433474: dsubu $a1, $fp, $zero     
  00433478: jal   0xf04328b8             ; -> 0x004328b8
  0043347c: andi   $s5, $s3, +132     
  00433480: dsubu $s4, $v0, $zero     
  00433484: andi   $a2, $s3, +4       
  00433488: sw     $a2, +424($sp)     
  0043348c: beq    $zero, $zero, +832    ; br -> 0x004337d0
  00433490: dsubu $a0, $s4, $zero     
  00433494: andi   $v0, $s3, +32      
  00433498: beq    $v0, $zero, +20       ; br -> 0x004334b0
  0043349c: lw     $v1, +396($sp)     
  004334a0: addiu  $s2, $s2, +8       
  004334a4: lw     $v0, -8($s2)       
  004334a8: beq    $zero, $zero, -964    ; br -> 0x004330e8
  004334ac: sw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  004334b0: andi   $v0, $s3, +16      
  004334b4: beq    $v0, $zero, +20       ; br -> 0x004334cc
  004334b8: lw     $a0, +396($sp)     
  004334bc: addiu  $s2, $s2, +8       
  004334c0: lw     $v0, -8($s2)       
  004334c4: beq    $zero, $zero, -992    ; br -> 0x004330e8
  004334c8: sw     $a0, +0($v0)          ; GLOBAL 0x006a0000
  004334cc: andi   $v0, $s3, +64      
  004334d0: beq    $v0, $zero, +20       ; br -> 0x004334e8
  004334d4: lw     $a1, +396($sp)     
  004334d8: addiu  $s2, $s2, +8       
  004334dc: lw     $v0, -8($s2)       
  004334e0: beq    $zero, $zero, -1020   ; br -> 0x004330e8
  004334e4: sw     $a1, +0($v0)          ; GLOBAL 0x006a0000
  004334e8: addiu  $s2, $s2, +8       
  004334ec: lw     $a2, +396($sp)     
  004334f0: lw     $v0, -8($s2)       
  004334f4: beq    $zero, $zero, -1040   ; br -> 0x004330e8
  004334f8: sw     $a2, +0($v0)          ; GLOBAL 0x006a0000
  004334fc: ori    $s3, $s3, +16      
  00433500: andi   $v0, $s3, +32      
  00433504: bnel   $v0, $zero, +20       ; br -> 0x0043351c
  00433508: addiu  $s2, $s2, +8       
  0043350c: andi   $v0, $s3, +16      
  00433510: beq    $v0, $zero, +16       ; br -> 0x00433524
  00433514: andi   $v0, $s3, +64      
  00433518: addiu  $s2, $s2, +8       
  0043351c: beq    $zero, $zero, +24     ; br -> 0x00433538
  00433520: lw     $s0, -8($s2)       
  00433524: beq    $v0, $zero, +12       ; br -> 0x00433534
  00433528: addiu  $s2, $s2, +8       
  0043352c: beq    $zero, $zero, +8      ; br -> 0x00433538
  00433530: lw     $s0, -8($s2)       
  00433534: op27    $s2,$s0,$ra       
  00433538: beq    $zero, $zero, +320    ; br -> 0x0043367c
  0043353c: dsubu $a0, $zero, $zero   
  00433540: lui   $v0, 0x006a0000     
  00433544: addiu  $s2, $s2, +8       
  00433548: addiu  $v0, $v0, +20112   
  0043354c: addiu  $a0, $zero, +2     
  00433550: sw     $v0, +412($sp)     
  00433554: ori    $s3, $s3, +2       
  00433558: addiu  $s6, $zero, +120   
  0043355c: beq    $zero, $zero, +284    ; br -> 0x0043367c
  00433560: lw     $s0, -8($s2)       
  00433564: addiu  $s2, $s2, +8       
  00433568: lw     $s4, -8($s2)       
  0043356c: bne    $s4, $zero, +8        ; br -> 0x00433578
  00433570: lui   $v0, 0x006a0000     
  00433574: addiu  $s4, $v0, +20136   
  00433578: regimm $fp, $zero, +56       ; br -> 0x004335b4
  0043357c: dsubu $a0, $s4, $zero     
  00433580: dsubu $a1, $zero, $zero   
  00433584: jal   0xf0428658             ; -> 0x00428658
  00433588: dsubu $a2, $fp, $zero     
  0043358c: beq    $v0, $zero, +28       ; br -> 0x004335ac
  00433590: subu $v0, $v0, $s4        
  00433594: sw     $v0, +408($sp)     
  00433598: dadd $v0, $fp, $v0        
  0043359c: lw     $v1, +408($sp)     
  004335a0: movn   $v1, $fp, $v0      
  004335a4: beq    $zero, $zero, +24     ; br -> 0x004335c0
  004335a8: sw     $v1, +408($sp)     
  004335ac: beq    $zero, $zero, +16     ; br -> 0x004335c0
  004335b0: sw     $fp, +408($sp)     
  004335b4: jal   0xf0429068             ; -> 0x00429068
  004335b8: dsubu $a0, $s4, $zero     
  004335bc: sw     $v0, +408($sp)     
  004335c0: andi   $a0, $s3, +4       
  004335c4: sw     $zero, +384($sp)   
  004335c8: andi   $s5, $s3, +132     
  004335cc: beq    $zero, $zero, +580    ; br -> 0x00433814
  004335d0: sw     $a0, +424($sp)     
  004335d4: ori    $s3, $s3, +16      
  004335d8: andi   $v0, $s3, +32      
  004335dc: bnel   $v0, $zero, +20       ; br -> 0x004335f4
  004335e0: addiu  $s2, $s2, +8       
  004335e4: andi   $v0, $s3, +16      
  004335e8: beq    $v0, $zero, +16       ; br -> 0x004335fc
  004335ec: andi   $v0, $s3, +64      
  004335f0: addiu  $s2, $s2, +8       
  004335f4: beq    $zero, $zero, +24     ; br -> 0x00433610
  004335f8: lw     $s0, -8($s2)       
  004335fc: beq    $v0, $zero, +12       ; br -> 0x0043360c
  00433600: addiu  $s2, $s2, +8       
  00433604: beq    $zero, $zero, +8      ; br -> 0x00433610
  00433608: lw     $s0, -8($s2)       
  0043360c: op27    $s2,$s0,$ra       
  00433610: beq    $zero, $zero, +104    ; br -> 0x0043367c
  00433614: addiu  $a0, $zero, +1     
  00433618: lui   $v0, 0x006a0000     
  0043361c: beq    $zero, $zero, +12     ; br -> 0x0043362c
  00433620: addiu  $v0, $v0, +20144   
  00433624: lui   $v0, 0x006a0000     
  00433628: addiu  $v0, $v0, +20112   
  0043362c: sw     $v0, +412($sp)     
  00433630: andi   $v0, $s3, +32      
  00433634: bnel   $v0, $zero, +20       ; br -> 0x0043364c
  00433638: addiu  $s2, $s2, +8       
  0043363c: andi   $v0, $s3, +16      
  00433640: beq    $v0, $zero, +16       ; br -> 0x00433654
  00433644: andi   $v0, $s3, +64      
  00433648: addiu  $s2, $s2, +8       
  0043364c: beq    $zero, $zero, +24     ; br -> 0x00433668
  00433650: lw     $s0, -8($s2)       
  00433654: beq    $v0, $zero, +12       ; br -> 0x00433664
  00433658: addiu  $s2, $s2, +8       
  0043365c: beq    $zero, $zero, +8      ; br -> 0x00433668
  00433660: lw     $s0, -8($s2)       
  00433664: op27    $s2,$s0,$ra       
  00433668: andi   $v1, $s3, +1       
  0043366c: beq    $v1, $zero, +12       ; br -> 0x0043367c
  00433670: addiu  $a0, $zero, +2     
  00433674: ori    $v0, $s3, +2       
  00433678: movn   $s3, $v0, $s0      
  0043367c: sw     $zero, +384($sp)   
  00433680: dsubu $a1, $fp, $zero     
  00433684: regimm $a1, $zero, +12       ; br -> 0x00433694
  00433688: sw     $fp, +404($sp)     
  0043368c: addiu  $v0, $zero, -129   
  00433690: and $s3, $s3, $v0         
  00433694: bne    $s0, $zero, +24       ; br -> 0x004336b0
  00433698: addiu  $s4, $sp, +364     
  0043369c: andi   $a2, $s3, +4       
  004336a0: lw     $v0, +404($sp)     
  004336a4: andi   $s5, $s3, +132     
  004336a8: beq    $v0, $zero, +308      ; br -> 0x004337e0
  004336ac: sw     $a2, +424($sp)     
  004336b0: addiu  $v0, $zero, +1     
  004336b4: beq    $a0, $v0, +104        ; br -> 0x00433720
  004336b8: andi   $a1, $s3, +4       
  004336bc: beq    $a0, $zero, +20       ; br -> 0x004336d4
  004336c0: addiu  $v0, $zero, +2     
  004336c4: beq    $a0, $v0, +184        ; br -> 0x00433780
  004336c8: lui   $v0, 0x006a0000     
  004336cc: beq    $zero, $zero, +240    ; br -> 0x004337c0
  004336d0: andi   $a0, $s3, +4       
  004336d4: andi   $a0, $s3, +4       
  004336d8: andi   $v1, $s3, +1       
  004336dc: sw     $a0, +424($sp)     
  004336e0: andi   $s5, $s3, +132     
  004336e4: sll $zero, $zero, 0       
  004336e8: andi   $v0, $s0, +7       
  004336ec: addiu  $s4, $s4, -1       
  004336f0: op19    $v0,$v0,$zero     
  004336f4: spec3a  $zero,$s0,$s0     
  004336f8: andi   $v0, $v0, +255     
  004336fc: bne    $s0, $zero, -24       ; br -> 0x004336e8
  00433700: sw     $v0, +0($s4)       
  00433704: beq    $v1, $zero, +216      ; br -> 0x004337e0
  00433708: addiu  $v1, $zero, +48    
  0043370c: beq    $v0, $v1, +212        ; br -> 0x004337e4
  00433710: subu $v0, $sp, $s4        
  00433714: addiu  $s4, $s4, -1       
  00433718: beq    $zero, $zero, +196    ; br -> 0x004337e0
  0043371c: sw     $v1, +0($s4)       
  00433720: sltiu  $v0, $s0, +10      
  00433724: andi   $s5, $s3, +132     
  00433728: bne    $v0, $zero, +64       ; br -> 0x0043376c
  0043372c: sw     $a1, +424($sp)     
  00433730: dsubu $a0, $s0, $zero     
  00433734: sll $zero, $zero, 0       
  00433738: jal   0xf03f8eb8             ; -> 0x003f8eb8
  0043373c: addiu  $a1, $zero, +10    
  00433740: addiu  $s4, $s4, -1       
  00433744: op19    $v0,$v0,$zero     
  00433748: dsubu $a0, $s0, $zero     
  0043374c: andi   $v0, $v0, +255     
  00433750: addiu  $a1, $zero, +10    
  00433754: jal   0xf03f8938             ; -> 0x003f8938
  00433758: sw     $v0, +0($s4)       
  0043375c: dsubu $s0, $v0, $zero     
  00433760: sltiu  $v0, $s0, +10      
  00433764: beq    $v0, $zero, -48       ; br -> 0x00433738
  00433768: dsubu $a0, $s0, $zero     
  0043376c: op19    $s0,$v0,$zero     
  00433770: addiu  $s4, $s4, -1       
  00433774: andi   $v0, $v0, +255     
  00433778: beq    $zero, $zero, +100    ; br -> 0x004337e0
  0043377c: sw     $v0, +0($s4)       
  00433780: andi   $a2, $s3, +4       
  00433784: andi   $s5, $s3, +132     
  00433788: sw     $a2, +424($sp)     
  0043378c: sll $zero, $zero, 0       
  00433790: lw     $v1, +412($sp)     
  00433794: andi   $v0, $s0, +15      
  00433798: spec3c  $zero,$v0,$v0     
  0043379c: spec3f  $zero,$v0,$v0     
  004337a0: addiu  $s4, $s4, -1       
  004337a4: addu $v0, $v1, $v0        
  004337a8: spec3a  $zero,$s0,$s0     
  004337ac: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  004337b0: bne    $s0, $zero, -36       ; br -> 0x00433790
  004337b4: sw     $v1, +0($s4)       
  004337b8: beq    $zero, $zero, +40     ; br -> 0x004337e4
  004337bc: subu $v0, $sp, $s4        
  004337c0: addiu  $s4, $v0, +20168   
  004337c4: sw     $a0, +424($sp)     
  004337c8: dsubu $a0, $s4, $zero     
  004337cc: andi   $s5, $s3, +132     
  004337d0: jal   0xf0429068             ; -> 0x00429068
  004337d4: sll $zero, $zero, 0       
  004337d8: beq    $zero, $zero, +56     ; br -> 0x00433814
  004337dc: sw     $v0, +408($sp)     
  004337e0: subu $v0, $sp, $s4        
  004337e4: addiu  $v0, $v0, +364     
  004337e8: beq    $zero, $zero, +40     ; br -> 0x00433814
  004337ec: sw     $v0, +408($sp)     
  004337f0: beq    $s6, $zero, +1388     ; br -> 0x00433d60
  004337f4: addiu  $a1, $zero, +1     
  004337f8: andi   $a2, $s3, +4       
  004337fc: sw     $s6, +16($sp)      
  00433800: addiu  $s4, $sp, +16      
  00433804: sw     $zero, +384($sp)   
  00433808: andi   $s5, $s3, +132     
  0043380c: sw     $a1, +408($sp)     
  00433810: sw     $a2, +424($sp)     
  00433814: lw     $fp, +408($sp)     
  00433818: lw     $a0, +404($sp)     
  0043381c: lw     $v1, +384($sp)     
  00433820: dadd $v0, $fp, $a0        
  00433824: beq    $v1, $zero, +12       ; br -> 0x00433834
  00433828: movn   $fp, $a0, $v0      
  0043382c: beq    $zero, $zero, +12     ; br -> 0x0043383c
  00433830: addiu  $fp, $fp, +1       
  00433834: andi   $v0, $s3, +2       
  00433838: addu $fp, $v0, $fp        
  0043383c: lw     $a1, +404($sp)     
  00433840: lw     $a2, +408($sp)     
  00433844: lw     $v0, +400($sp)     
  00433848: subu $a1, $a1, $a2        
  0043384c: dadd $v0, $fp, $v0        
  00433850: sw     $a1, +416($sp)     
  00433854: bne    $s5, $zero, +252      ; br -> 0x00433954
  00433858: sw     $v0, +420($sp)     
  0043385c: lw     $v1, +400($sp)     
  00433860: subu $s0, $v1, $fp        
  00433864: blez   $s0, $zero, +236      ; br -> 0x00433954
  00433868: slti   $v0, $s0, +17      
  0043386c: bne    $v0, $zero, +144      ; br -> 0x00433900
  00433870: lui   $t0, 0x006a0000     
  00433874: addiu  $t1, $zero, +1     
  00433878: lw     $v0, +12($s1)      
  0043387c: sll $zero, $zero, 0       
  00433880: andi   $v0, $v0, +512     
  00433884: beql   $v0, $zero, +60       ; br -> 0x004338c4
  00433888: lw     $v0, +12($s1)      
  0043388c: lw     $v1, +0($s1)       
  00433890: addiu  $v0, $t0, +20080   
  00433894: mmi0   $zero,$v0,$a0      
  00433898: mmi1   $zero,$v0,$a0      
  0043389c: mmi0   $zero,$v0,$a1      
  004338a0: mmi1   $zero,$v0,$a1      
  004338a4: op2c    $v1,$a0,$zero     
  004338a8: op2d    $v1,$a0,$zero     
  004338ac: op2c    $v1,$a1,$zero     
  004338b0: op2d    $v1,$a1,$zero     
  004338b4: lw     $v0, +0($s1)       
  004338b8: addiu  $v0, $v0, +16      
  004338bc: beq    $zero, $zero, +48     ; br -> 0x004338f0
  004338c0: sw     $v0, +0($s1)       
  004338c4: beql   $v0, $zero, +4        ; br -> 0x004338cc
  004338c8: sw     $t1, +14($s1)      
  004338cc: lw     $a0, +14($s1)      
  004338d0: addiu  $a1, $t0, +20080   
  004338d4: sw     $t0, +448($sp)     
  004338d8: addiu  $a2, $zero, +16    
  004338dc: sw     $t1, +464($sp)     
  004338e0: jal   0xf0432eb8             ; -> 0x00432eb8
  004338e4: dsubu $a3, $zero, $zero   
  004338e8: lw     $t1, +464($sp)     
  004338ec: lw     $t0, +448($sp)     
  004338f0: addiu  $s0, $s0, -16      
  004338f4: slti   $v0, $s0, +17      
  004338f8: beql   $v0, $zero, -124      ; br -> 0x00433880
  004338fc: lw     $v0, +12($s1)      
  00433900: lw     $v0, +12($s1)      
  00433904: andi   $v0, $v0, +512     
  00433908: beq    $v0, $zero, +32       ; br -> 0x0043392c
  0043390c: addiu  $a1, $t0, +20080   
  00433910: lw     $a0, +0($s1)       
  00433914: jal   0xf04287e0             ; -> 0x004287e0
  00433918: dsubu $a2, $s0, $zero     
  0043391c: lw     $v1, +0($s1)       
  00433920: addu $v1, $v1, $s0        
  00433924: beq    $zero, $zero, +44     ; br -> 0x00433954
  00433928: sw     $v1, +0($s1)       
  0043392c: lw     $v0, +12($s1)      
  00433930: bnel   $v0, $zero, +16       ; br -> 0x00433944
  00433934: lw     $a0, +14($s1)      
  00433938: addiu  $v0, $zero, +1     
  0043393c: sw     $v0, +14($s1)      
  00433940: lw     $a0, +14($s1)      
  00433944: addiu  $a1, $t0, +20080   
  00433948: dsubu $a2, $s0, $zero     
  0043394c: jal   0xf0432eb8             ; -> 0x00432eb8
  00433950: dsubu $a3, $zero, $zero   
  00433954: lw     $v0, +384($sp)     
  00433958: beq    $v0, $zero, +88       ; br -> 0x004339b4
  0043395c: lw     $a0, +384($sp)     
  00433960: lw     $v0, +12($s1)      
  00433964: andi   $v0, $v0, +512     
  00433968: beql   $v0, $zero, +28       ; br -> 0x00433988
  0043396c: lw     $v0, +12($s1)      
  00433970: lw     $v1, +0($s1)       
  00433974: sw     $a0, +0($v1)       
  00433978: lw     $v0, +0($s1)       
  0043397c: addiu  $v0, $v0, +1       
  00433980: beq    $zero, $zero, +156    ; br -> 0x00433a20
  00433984: sw     $v0, +0($s1)       
  00433988: bnel   $v0, $zero, +16       ; br -> 0x0043399c
  0043398c: lw     $a0, +14($s1)      
  00433990: addiu  $v0, $zero, +1     
  00433994: sw     $v0, +14($s1)      
  00433998: lw     $a0, +14($s1)      
  0043399c: addiu  $a1, $sp, +384     
  004339a0: addiu  $a2, $zero, +1     
  004339a4: jal   0xf0432eb8             ; -> 0x00432eb8
  004339a8: dsubu $a3, $zero, $zero   
  004339ac: beq    $zero, $zero, +116    ; br -> 0x00433a24
  004339b0: addiu  $v0, $zero, +128   
  004339b4: andi   $v0, $s3, +2       
  004339b8: beq    $v0, $zero, +100      ; br -> 0x00433a20
  004339bc: addiu  $v0, $zero, +48    
  004339c0: lw     $v1, +12($s1)      
  004339c4: sw     $v0, +368($sp)     
  004339c8: andi   $v1, $v1, +512     
  004339cc: beq    $v1, $zero, +40       ; br -> 0x004339f8
  004339d0: sw     $s6, +369($sp)     
  004339d4: lw     $v1, +0($s1)       
  004339d8: lw     $a0, +368($sp)     
  004339dc: lw     $a1, +369($sp)     
  004339e0: sw     $a0, +0($v1)       
  004339e4: sw     $a1, +1($v1)       
  004339e8: lw     $v0, +0($s1)       
  004339ec: addiu  $v0, $v0, +2       
  004339f0: beq    $zero, $zero, +44     ; br -> 0x00433a20
  004339f4: sw     $v0, +0($s1)       
  004339f8: lw     $v0, +12($s1)      
  004339fc: bnel   $v0, $zero, +16       ; br -> 0x00433a10
  00433a00: lw     $a0, +14($s1)      
  00433a04: addiu  $v0, $zero, +1     
  00433a08: sw     $v0, +14($s1)      
  00433a0c: lw     $a0, +14($s1)      
  00433a10: addiu  $a1, $sp, +368     
  00433a14: addiu  $a2, $zero, +2     
  00433a18: jal   0xf0432eb8             ; -> 0x00432eb8
  00433a1c: dsubu $a3, $zero, $zero   
  00433a20: addiu  $v0, $zero, +128   
  00433a24: bne    $s5, $v0, +240        ; br -> 0x00433b18
  00433a28: lw     $s0, +416($sp)     
  00433a2c: lw     $v1, +400($sp)     
  00433a30: subu $s0, $v1, $fp        
  00433a34: blez   $s0, $zero, +220      ; br -> 0x00433b14
  00433a38: slti   $v0, $s0, +17      
  00433a3c: bne    $v0, $zero, +128      ; br -> 0x00433ac0
  00433a40: lui   $s3, 0x006a0000     
  00433a44: addiu  $s5, $zero, +1     
  00433a48: lw     $v0, +12($s1)      
  00433a4c: sll $zero, $zero, 0       
  00433a50: andi   $v0, $v0, +512     
  00433a54: beql   $v0, $zero, +60       ; br -> 0x00433a94
  00433a58: lw     $v0, +12($s1)      
  00433a5c: lw     $v1, +0($s1)       
  00433a60: addiu  $v0, $s3, +20096   
  00433a64: mmi0   $zero,$v0,$a0      
  00433a68: mmi1   $zero,$v0,$a0      
  00433a6c: mmi0   $zero,$v0,$a1      
  00433a70: mmi1   $zero,$v0,$a1      
  00433a74: op2c    $v1,$a0,$zero     
  00433a78: op2d    $v1,$a0,$zero     
  00433a7c: op2c    $v1,$a1,$zero     
  00433a80: op2d    $v1,$a1,$zero     
  00433a84: lw     $v0, +0($s1)       
  00433a88: addiu  $v0, $v0, +16      
  00433a8c: beq    $zero, $zero, +32     ; br -> 0x00433ab0
  00433a90: sw     $v0, +0($s1)       
  00433a94: beql   $v0, $zero, +4        ; br -> 0x00433a9c
  00433a98: sw     $s5, +14($s1)      
  00433a9c: lw     $a0, +14($s1)      
  00433aa0: addiu  $a1, $s3, +20096   
  00433aa4: addiu  $a2, $zero, +16    
  00433aa8: jal   0xf0432eb8             ; -> 0x00432eb8
  00433aac: dsubu $a3, $zero, $zero   
  00433ab0: addiu  $s0, $s0, -16      
  00433ab4: slti   $v0, $s0, +17      
  00433ab8: beql   $v0, $zero, -108      ; br -> 0x00433a50
  00433abc: lw     $v0, +12($s1)      
  00433ac0: lw     $v0, +12($s1)      
  00433ac4: andi   $v0, $v0, +512     
  00433ac8: beq    $v0, $zero, +32       ; br -> 0x00433aec
  00433acc: addiu  $a1, $s3, +20096   
  00433ad0: lw     $a0, +0($s1)       
  00433ad4: jal   0xf04287e0             ; -> 0x004287e0
  00433ad8: dsubu $a2, $s0, $zero     
  00433adc: lw     $v1, +0($s1)       
  00433ae0: addu $v1, $v1, $s0        
  00433ae4: beq    $zero, $zero, +44     ; br -> 0x00433b14
  00433ae8: sw     $v1, +0($s1)       
  00433aec: lw     $v0, +12($s1)      
  00433af0: bnel   $v0, $zero, +16       ; br -> 0x00433b04
  00433af4: lw     $a0, +14($s1)      
  00433af8: addiu  $v0, $zero, +1     
  00433afc: sw     $v0, +14($s1)      
  00433b00: lw     $a0, +14($s1)      
  00433b04: addiu  $a1, $s3, +20096   
  00433b08: dsubu $a2, $s0, $zero     
  00433b0c: jal   0xf0432eb8             ; -> 0x00432eb8
  00433b10: dsubu $a3, $zero, $zero   
  00433b14: lw     $s0, +416($sp)     
  00433b18: blez   $s0, $zero, +216      ; br -> 0x00433bf4
  00433b1c: slti   $v0, $s0, +17      
  00433b20: bne    $v0, $zero, +124      ; br -> 0x00433ba0
  00433b24: lui   $s3, 0x006a0000     
  00433b28: addiu  $s5, $zero, +1     
  00433b2c: lw     $v0, +12($s1)      
  00433b30: andi   $v0, $v0, +512     
  00433b34: beql   $v0, $zero, +60       ; br -> 0x00433b74
  00433b38: lw     $v0, +12($s1)      
  00433b3c: lw     $v1, +0($s1)       
  00433b40: addiu  $v0, $s3, +20096   
  00433b44: mmi0   $zero,$v0,$a0      
  00433b48: mmi1   $zero,$v0,$a0      
  00433b4c: mmi0   $zero,$v0,$a1      
  00433b50: mmi1   $zero,$v0,$a1      
  00433b54: op2c    $v1,$a0,$zero     
  00433b58: op2d    $v1,$a0,$zero     
  00433b5c: op2c    $v1,$a1,$zero     
  00433b60: op2d    $v1,$a1,$zero     
  00433b64: lw     $v0, +0($s1)       
  00433b68: addiu  $v0, $v0, +16      
  00433b6c: beq    $zero, $zero, +32     ; br -> 0x00433b90
  00433b70: sw     $v0, +0($s1)       
  00433b74: beql   $v0, $zero, +4        ; br -> 0x00433b7c
  00433b78: sw     $s5, +14($s1)      
  00433b7c: lw     $a0, +14($s1)      
  00433b80: addiu  $a1, $s3, +20096   
  00433b84: addiu  $a2, $zero, +16    
  00433b88: jal   0xf0432eb8             ; -> 0x00432eb8
  00433b8c: dsubu $a3, $zero, $zero   
  00433b90: addiu  $s0, $s0, -16      
  00433b94: slti   $v0, $s0, +17      
  00433b98: beql   $v0, $zero, -108      ; br -> 0x00433b30
  00433b9c: lw     $v0, +12($s1)      
  00433ba0: lw     $v0, +12($s1)      
  00433ba4: andi   $v0, $v0, +512     
  00433ba8: beq    $v0, $zero, +32       ; br -> 0x00433bcc
  00433bac: addiu  $a1, $s3, +20096   
  00433bb0: lw     $a0, +0($s1)       
  00433bb4: jal   0xf04287e0             ; -> 0x004287e0
  00433bb8: dsubu $a2, $s0, $zero     
  00433bbc: lw     $v1, +0($s1)       
  00433bc0: addu $v1, $v1, $s0        
  00433bc4: beq    $zero, $zero, +44     ; br -> 0x00433bf4
  00433bc8: sw     $v1, +0($s1)       
  00433bcc: lw     $v0, +12($s1)      
  00433bd0: bnel   $v0, $zero, +16       ; br -> 0x00433be4
  00433bd4: lw     $a0, +14($s1)      
  00433bd8: addiu  $v0, $zero, +1     
  00433bdc: sw     $v0, +14($s1)      
  00433be0: lw     $a0, +14($s1)      
  00433be4: addiu  $a1, $s3, +20096   
  00433be8: dsubu $a2, $s0, $zero     
  00433bec: jal   0xf0432eb8             ; -> 0x00432eb8
  00433bf0: dsubu $a3, $zero, $zero   
  00433bf4: lw     $v0, +12($s1)      
  00433bf8: andi   $v0, $v0, +512     
  00433bfc: beq    $v0, $zero, +36       ; br -> 0x00433c24
  00433c00: dsubu $a1, $s4, $zero     
  00433c04: lw     $a0, +0($s1)       
  00433c08: jal   0xf04287e0             ; -> 0x004287e0
  00433c0c: lw     $a2, +408($sp)     
  00433c10: lw     $v1, +0($s1)       
  00433c14: lw     $a0, +408($sp)     
  00433c18: addu $v1, $v1, $a0        
  00433c1c: beq    $zero, $zero, +44     ; br -> 0x00433c4c
  00433c20: sw     $v1, +0($s1)       
  00433c24: lw     $v0, +12($s1)      
  00433c28: bnel   $v0, $zero, +16       ; br -> 0x00433c3c
  00433c2c: lw     $a0, +14($s1)      
  00433c30: addiu  $v0, $zero, +1     
  00433c34: sw     $v0, +14($s1)      
  00433c38: lw     $a0, +14($s1)      
  00433c3c: dsubu $a1, $s4, $zero     
  00433c40: lw     $a2, +408($sp)     
  00433c44: jal   0xf0432eb8             ; -> 0x00432eb8
  00433c48: dsubu $a3, $zero, $zero   
  00433c4c: lw     $a1, +424($sp)     
  00433c50: beq    $a1, $zero, +240      ; br -> 0x00433d44
  00433c54: lw     $a2, +400($sp)     
  00433c58: subu $s0, $a2, $fp        
  00433c5c: blez   $s0, $zero, +228      ; br -> 0x00433d44
  00433c60: slti   $v0, $s0, +17      
  00433c64: bne    $v0, $zero, +136      ; br -> 0x00433cf0
  00433c68: lui   $t0, 0x006a0000     
  00433c6c: addiu  $s3, $zero, +1     
  00433c70: lw     $v0, +12($s1)      
  00433c74: sll $zero, $zero, 0       
  00433c78: andi   $v0, $v0, +512     
  00433c7c: beql   $v0, $zero, +60       ; br -> 0x00433cbc
  00433c80: lw     $v0, +12($s1)      
  00433c84: lw     $v1, +0($s1)       
  00433c88: addiu  $a2, $t0, +20080   
  00433c8c: mmi0   $zero,$a2,$v0      
  00433c90: mmi1   $zero,$a2,$v0      
  00433c94: mmi0   $zero,$a2,$a0      
  00433c98: mmi1   $zero,$a2,$a0      
  00433c9c: op2c    $v1,$v0,$zero     
  00433ca0: op2d    $v1,$v0,$zero     
  00433ca4: op2c    $v1,$a0,$zero     
  00433ca8: op2d    $v1,$a0,$zero     
  00433cac: lw     $v0, +0($s1)       
  00433cb0: addiu  $v0, $v0, +16      
  00433cb4: beq    $zero, $zero, +40     ; br -> 0x00433ce0
  00433cb8: sw     $v0, +0($s1)       
  00433cbc: beql   $v0, $zero, +4        ; br -> 0x00433cc4
  00433cc0: sw     $s3, +14($s1)      
  00433cc4: lw     $a0, +14($s1)      
  00433cc8: addiu  $a1, $t0, +20080   
  00433ccc: sw     $t0, +448($sp)     
  00433cd0: addiu  $a2, $zero, +16    
  00433cd4: jal   0xf0432eb8             ; -> 0x00432eb8
  00433cd8: dsubu $a3, $zero, $zero   
  00433cdc: lw     $t0, +448($sp)     
  00433ce0: addiu  $s0, $s0, -16      
  00433ce4: slti   $v0, $s0, +17      
  00433ce8: beql   $v0, $zero, -116      ; br -> 0x00433c78
  00433cec: lw     $v0, +12($s1)      
  00433cf0: lw     $v0, +12($s1)      
  00433cf4: andi   $v0, $v0, +512     
  00433cf8: beq    $v0, $zero, +32       ; br -> 0x00433d1c
  00433cfc: addiu  $a1, $t0, +20080   
  00433d00: lw     $a0, +0($s1)       
  00433d04: jal   0xf04287e0             ; -> 0x004287e0
  00433d08: dsubu $a2, $s0, $zero     
  00433d0c: lw     $v1, +0($s1)       
  00433d10: addu $v1, $v1, $s0        
  00433d14: beq    $zero, $zero, +44     ; br -> 0x00433d44
  00433d18: sw     $v1, +0($s1)       
  00433d1c: lw     $v0, +12($s1)      
  00433d20: bnel   $v0, $zero, +16       ; br -> 0x00433d34
  00433d24: lw     $a0, +14($s1)      
  00433d28: addiu  $v0, $zero, +1     
  00433d2c: sw     $v0, +14($s1)      
  00433d30: lw     $a0, +14($s1)      
  00433d34: addiu  $a1, $t0, +20080   
  00433d38: dsubu $a2, $s0, $zero     
  00433d3c: jal   0xf0432eb8             ; -> 0x00432eb8
  00433d40: dsubu $a3, $zero, $zero   
  00433d44: lw     $v0, +400($sp)     
  00433d48: lw     $v1, +420($sp)     
  00433d4c: lw     $a0, +396($sp)     
  00433d50: movz   $v0, $fp, $v1      
  00433d54: addu $a0, $a0, $v0        
  00433d58: beq    $zero, $zero, -3188   ; br -> 0x004330e8
  00433d5c: sw     $a0, +396($sp)     
  00433d60: lw     $v0, +12($s1)      
  00433d64: andi   $v0, $v0, +512     
  00433d68: bne    $v0, $zero, +28       ; br -> 0x00433d88
  00433d6c: lw     $v0, +396($sp)     
  00433d70: lw     $a0, +14($s1)      
  00433d74: dsubu $a1, $zero, $zero   
  00433d78: dsubu $a2, $zero, $zero   
  00433d7c: jal   0xf0432eb8             ; -> 0x00432eb8
  00433d80: addiu  $a3, $zero, +1     
  00433d84: lw     $v0, +396($sp)     
  00433d88: lw     $ra, +624($sp)     
  00433d8c: lw     $fp, +608($sp)     
  00433d90: lw     $s7, +592($sp)     
  00433d94: lw     $s6, +576($sp)     
  00433d98: lw     $s5, +560($sp)     
  00433d9c: lw     $s4, +544($sp)     
  00433da0: lw     $s3, +528($sp)     
  00433da4: lw     $s2, +512($sp)     
  00433da8: lw     $s1, +496($sp)     
  00433dac: lw     $s0, +480($sp)     
  00433db0: jr     $ra                
  00433db4: addiu  $sp, $sp, +640     

; globals: 0x006a0000(x5), 0x00657754(x1), 0x00657450(x1)
