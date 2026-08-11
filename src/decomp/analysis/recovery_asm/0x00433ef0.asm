; 0x00433ef0  FUN_00433ef0  size=4080  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x003f8938;0x003f8eb8;0x00428658;0x004287e0;0x00429068;0x0042c280;0x00433db8
; 1020 words

  00433ef0: addiu  $sp, $sp, -320     
  00433ef4: addiu  $v0, $sp, +68      
  00433ef8: addiu  $v1, $sp, +72      
  00433efc: sw     $s6, +256($sp)     
  00433f00: sw     $s2, +192($sp)     
  00433f04: dsubu  $zero, $a2, +0     
  00433f08: sw     $s1, +176($sp)     
  00433f0c: dsubu  $zero, $a3, +0     
  00433f10: sw     $ra, +304($sp)     
  00433f14: dsubu  $zero, $a1, +0     
  00433f18: sw     $fp, +288($sp)     
  00433f1c: sw     $s7, +272($sp)     
  00433f20: sw     $s5, +240($sp)     
  00433f24: sw     $s4, +224($sp)     
  00433f28: sw     $s3, +208($sp)     
  00433f2c: sw     $s0, +160($sp)     
  00433f30: sw     $zero, +72($sp)    
  00433f34: sw     $zero, +76($sp)    
  00433f38: sw     $v0, +96($sp)      
  00433f3c: sw     $v1, +100($sp)     
  00433f40: dsubu  $zero, $s6, +0     
  00433f44: addiu  $s3, $zero, +37    
  00433f48: lui   $a1, 0x00650000     
  00433f4c: lui   $a2, 0x00650000     
  00433f50: lw     $a0, +30548($a1)      ; GLOBAL 0x00657754
  00433f54: lw     $a3, +29776($a2)      ; GLOBAL 0x00657450
  00433f58: lw     $a1, +96($sp)      
  00433f5c: dsubu  $zero, $s6, +0     
  00433f60: jal   0xf042c280             ; -> FUN_0042c280
  00433f64: lw     $t0, +100($sp)     
  00433f68: dsubu  $zero, $v0, +0     
  00433f6c: blez   $s0, $zero, +16       ; br -> 0x00433f80
  00433f70: lw     $v0, +68($sp)      
  00433f74: bne    $v0, $s3, -48         ; br -> 0x00473f48
  00433f78: addu   $s0, $s6, +0       
  00433f7c: addiu  $s6, $s6, -1       
  00433f80: subu   $s4, $s6, +0       
  00433f84: beq    $s3, $zero, +100      ; br -> 0x00433fec
  00433f88: sll    $zero, $zero, +0   
  00433f8c: lw     $v0, +12($s1)      
  00433f90: andi   $v0, $v0, +512     
  00433f94: beq    $v0, $zero, +32       ; br -> 0x00433fb8
  00433f98: dsubu  $zero, $s4, +0     
  00433f9c: lw     $a0, +0($s1)       
  00433fa0: jal   0xf04287e0             ; -> 0x004287e0
  00433fa4: dsubu  $zero, $s3, +0     
  00433fa8: lw     $v1, +0($s1)       
  00433fac: addu   $s3, $v1, +0       
  00433fb0: beq    $zero, $zero, +44     ; br -> 0x00433fe0
  00433fb4: sw     $v1, +0($s1)       
  00433fb8: lw     $v0, +12($s1)      
  00433fbc: bnel   $v0, $zero, +16       ; br -> 0x00433fd0
  00433fc0: lw     $a0, +14($s1)      
  00433fc4: addiu  $v0, $zero, +1     
  00433fc8: sw     $v0, +14($s1)      
  00433fcc: lw     $a0, +14($s1)      
  00433fd0: dsubu  $zero, $s4, +0     
  00433fd4: dsubu  $zero, $s3, +0     
  00433fd8: jal   0xf0433db8             ; -> 0x00433db8
  00433fdc: dsubu  $zero, $zero, +0   
  00433fe0: lw     $v0, +76($sp)      
  00433fe4: addu   $s3, $v0, +0       
  00433fe8: sw     $v0, +76($sp)      
  00433fec: blez   $s0, $zero, +2728     ; br -> 0x00434a98
  00433ff0: addiu  $s6, $s6, +1       
  00433ff4: sw     $zero, +64($sp)    
  00433ff8: sw     $zero, +84($sp)    
  00433ffc: dsubu  $zero, $zero, +0   
  00434000: sw     $zero, +80($sp)    
  00434004: addiu  $s7, $zero, -1     
  00434008: lw     $s5, +0($s6)       
  0043400c: addiu  $s6, $s6, +1       
  00434010: addiu  $v1, $s5, -32      
  00434014: sltiu  $v0, $v1, +89      
  00434018: beq    $v0, $zero, +1296     ; br -> 0x0043452c
  0043401c: lui   $v0, 0x006a0000     
  00434020: sll    $v1, $zero, +2     
  00434024: addiu  $v0, $v0, +20704   
  00434028: addu   $v0, $v1, +0       
  0043402c: lw     $a0, +0($v1)       
  00434030: jr     $a0                
  00434034: sll    $zero, $zero, +0   
  00434038: lw     $v0, +64($sp)      
  0043403c: bnel   $v0, $zero, -52       ; br -> 0x0047400c
  00434040: lw     $s5, +0($s6)       
  00434044: addiu  $v0, $zero, +32    
  00434048: beq    $zero, $zero, -68     ; br -> 0x00474008
  0043404c: sw     $v0, +64($sp)      
  00434050: beq    $zero, $zero, -76     ; br -> 0x00474008
  00434054: ori    $s3, $s3, +1       
  00434058: addiu  $s2, $s2, +8       
  0043405c: lw     $v1, -8($s2)       
  00434060: regimm $v1, $at, -92         ; br -> 0x00474008
  00434064: sw     $v1, +80($sp)      
  00434068: subu   $v1, $zero, +0     
  0043406c: sw     $v1, +80($sp)      
  00434070: beq    $zero, $zero, -108    ; br -> 0x00474008
  00434074: ori    $s3, $s3, +4       
  00434078: addiu  $v0, $zero, +43    
  0043407c: beq    $zero, $zero, -120    ; br -> 0x00474008
  00434080: sw     $v0, +64($sp)      
  00434084: lw     $s5, +0($s6)       
  00434088: addiu  $v0, $zero, +42    
  0043408c: bne    $s5, $v0, +32         ; br -> 0x004340b0
  00434090: addiu  $s6, $s6, +1       
  00434094: addiu  $s2, $s2, +8       
  00434098: addiu  $v0, $zero, -2     
  0043409c: lw     $s0, -8($s2)       
  004340a0: addiu  $s7, $zero, -1     
  004340a4: dadd   $s0, $v0, +0       
  004340a8: beq    $zero, $zero, -164    ; br -> 0x00474008
  004340ac: movn    $s0,$v0,$s7       
  004340b0: addiu  $v0, $s5, -48      
  004340b4: sltiu  $v0, $v0, +10      
  004340b8: beq    $v0, $zero, +44       ; br -> 0x004340e8
  004340bc: dsubu  $zero, $zero, +0   
  004340c0: addiu  $v1, $zero, +10    
  004340c4: sll    $zero, $zero, +0   
  004340c8: mult   $v1, $s0, +0       
  004340cc: addiu  $v0, $v0, -48      
  004340d0: addu   $s5, $v0, +0       
  004340d4: lw     $s5, +0($s6)       
  004340d8: addiu  $v0, $s5, -48      
  004340dc: sltiu  $v0, $v0, +10      
  004340e0: bne    $v0, $zero, -28       ; br -> 0x004740c8
  004340e4: addiu  $s6, $s6, +1       
  004340e8: addiu  $v0, $zero, -2     
  004340ec: addiu  $s7, $zero, -1     
  004340f0: dadd   $s0, $v0, +0       
  004340f4: beq    $zero, $zero, -232    ; br -> 0x00474010
  004340f8: movn    $s0,$v0,$s7       
  004340fc: beq    $zero, $zero, -248    ; br -> 0x00474008
  00434100: ori    $s3, $s3, +128     
  00434104: dsubu  $zero, $zero, +0   
  00434108: addiu  $v1, $zero, +10    
  0043410c: sll    $zero, $zero, +0   
  00434110: mult   $v1, $s0, +0       
  00434114: addiu  $v0, $v0, -48      
  00434118: addu   $s5, $v0, +0       
  0043411c: lw     $s5, +0($s6)       
  00434120: addiu  $v0, $s5, -48      
  00434124: sltiu  $v0, $v0, +10      
  00434128: bne    $v0, $zero, -28       ; br -> 0x00474110
  0043412c: addiu  $s6, $s6, +1       
  00434130: beq    $zero, $zero, -292    ; br -> 0x00474010
  00434134: sw     $s0, +80($sp)      
  00434138: beq    $zero, $zero, -308    ; br -> 0x00474008
  0043413c: ori    $s3, $s3, +64      
  00434140: lw     $v1, +0($s6)       
  00434144: addiu  $v0, $zero, +108   
  00434148: bnel   $v1, $v0, -324        ; br -> 0x00474008
  0043414c: ori    $s3, $s3, +16      
  00434150: addiu  $s6, $s6, +1       
  00434154: beq    $zero, $zero, -336    ; br -> 0x00474008
  00434158: ori    $s3, $s3, +32      
  0043415c: addiu  $s2, $s2, +8       
  00434160: addiu  $a0, $zero, +1     
  00434164: lw     $v0, -8($s2)       
  00434168: andi   $a1, $s3, +4       
  0043416c: dsubu  $zero, $sp, +0     
  00434170: sw     $a0, +88($sp)      
  00434174: sw     $zero, +64($sp)    
  00434178: andi   $s7, $s3, +132     
  0043417c: sw     $v0, +0($sp)       
  00434180: beq    $zero, $zero, +972    ; br -> 0x00434550
  00434184: sw     $a1, +108($sp)     
  00434188: ori    $s3, $s3, +16      
  0043418c: andi   $v0, $s3, +32      
  00434190: bnel   $v0, $zero, +20       ; br -> 0x004341a8
  00434194: addiu  $s2, $s2, +8       
  00434198: andi   $v0, $s3, +16      
  0043419c: beq    $v0, $zero, +16       ; br -> 0x004341b0
  004341a0: andi   $v0, $s3, +64      
  004341a4: addiu  $s2, $s2, +8       
  004341a8: beq    $zero, $zero, +24     ; br -> 0x004341c4
  004341ac: lw     $s0, -8($s2)       
  004341b0: beq    $v0, $zero, +12       ; br -> 0x004341c0
  004341b4: addiu  $s2, $s2, +8       
  004341b8: beq    $zero, $zero, +8      ; br -> 0x004341c4
  004341bc: lw     $s0, -8($s2)       
  004341c0: lw     $s0, -8($s2)       
  004341c4: regimm $s0, $at, +512        ; br -> 0x004343c8
  004341c8: addiu  $a0, $zero, +1     
  004341cc: addiu  $v0, $zero, +45    
  004341d0: spec2f  $zero,$s0,$s0     
  004341d4: beq    $zero, $zero, +496    ; br -> 0x004343c8
  004341d8: sw     $v0, +64($sp)      
  004341dc: andi   $v0, $s3, +32      
  004341e0: beq    $v0, $zero, +20       ; br -> 0x004341f8
  004341e4: lw     $a2, +76($sp)      
  004341e8: addiu  $s2, $s2, +8       
  004341ec: lw     $v0, -8($s2)       
  004341f0: beq    $zero, $zero, -692    ; br -> 0x00473f40
  004341f4: sw     $a2, +0($v0)          ; GLOBAL 0x006a0000
  004341f8: andi   $v0, $s3, +16      
  004341fc: beq    $v0, $zero, +20       ; br -> 0x00434214
  00434200: lw     $v1, +76($sp)      
  00434204: addiu  $s2, $s2, +8       
  00434208: lw     $v0, -8($s2)       
  0043420c: beq    $zero, $zero, -720    ; br -> 0x00473f40
  00434210: sw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  00434214: andi   $v0, $s3, +64      
  00434218: beq    $v0, $zero, +20       ; br -> 0x00434230
  0043421c: lw     $a0, +76($sp)      
  00434220: addiu  $s2, $s2, +8       
  00434224: lw     $v0, -8($s2)       
  00434228: beq    $zero, $zero, -748    ; br -> 0x00473f40
  0043422c: sw     $a0, +0($v0)          ; GLOBAL 0x006a0000
  00434230: addiu  $s2, $s2, +8       
  00434234: lw     $a1, +76($sp)      
  00434238: lw     $v0, -8($s2)       
  0043423c: beq    $zero, $zero, -768    ; br -> 0x00473f40
  00434240: sw     $a1, +0($v0)          ; GLOBAL 0x006a0000
  00434244: ori    $s3, $s3, +16      
  00434248: andi   $v0, $s3, +32      
  0043424c: bnel   $v0, $zero, +20       ; br -> 0x00434264
  00434250: addiu  $s2, $s2, +8       
  00434254: andi   $v0, $s3, +16      
  00434258: beq    $v0, $zero, +16       ; br -> 0x0043426c
  0043425c: andi   $v0, $s3, +64      
  00434260: addiu  $s2, $s2, +8       
  00434264: beq    $zero, $zero, +24     ; br -> 0x00434280
  00434268: lw     $s0, -8($s2)       
  0043426c: beq    $v0, $zero, +12       ; br -> 0x0043427c
  00434270: addiu  $s2, $s2, +8       
  00434274: beq    $zero, $zero, +8      ; br -> 0x00434280
  00434278: lw     $s0, -8($s2)       
  0043427c: op27    $s2,$s0,$ra       
  00434280: beq    $zero, $zero, +320    ; br -> 0x004343c4
  00434284: dsubu  $zero, $zero, +0   
  00434288: lui   $v0, 0x006a0000     
  0043428c: addiu  $s2, $s2, +8       
  00434290: addiu  $v0, $v0, +20608   
  00434294: addiu  $a0, $zero, +2     
  00434298: sw     $v0, +92($sp)      
  0043429c: ori    $s3, $s3, +2       
  004342a0: addiu  $s5, $zero, +120   
  004342a4: beq    $zero, $zero, +284    ; br -> 0x004343c4
  004342a8: lw     $s0, -8($s2)       
  004342ac: addiu  $s2, $s2, +8       
  004342b0: lw     $s4, -8($s2)       
  004342b4: bne    $s4, $zero, +8        ; br -> 0x004342c0
  004342b8: lui   $v0, 0x006a0000     
  004342bc: addiu  $s4, $v0, +20632   
  004342c0: regimm $s7, $zero, +56       ; br -> 0x004342fc
  004342c4: dsubu  $zero, $s4, +0     
  004342c8: dsubu  $zero, $zero, +0   
  004342cc: jal   0xf0428658             ; -> 0x00428658
  004342d0: dsubu  $zero, $s7, +0     
  004342d4: beq    $v0, $zero, +28       ; br -> 0x004342f4
  004342d8: subu   $s4, $v0, +0       
  004342dc: sw     $v0, +88($sp)      
  004342e0: dadd   $v0, $s7, +0       
  004342e4: lw     $a2, +88($sp)      
  004342e8: movn    $s7,$v0,$a2       
  004342ec: beq    $zero, $zero, +24     ; br -> 0x00434308
  004342f0: sw     $a2, +88($sp)      
  004342f4: beq    $zero, $zero, +16     ; br -> 0x00434308
  004342f8: sw     $s7, +88($sp)      
  004342fc: jal   0xf0429068             ; -> 0x00429068
  00434300: dsubu  $zero, $s4, +0     
  00434304: sw     $v0, +88($sp)      
  00434308: andi   $v0, $s3, +4       
  0043430c: sw     $zero, +64($sp)    
  00434310: andi   $s7, $s3, +132     
  00434314: beq    $zero, $zero, +568    ; br -> 0x00434550
  00434318: sw     $v0, +108($sp)     
  0043431c: ori    $s3, $s3, +16      
  00434320: andi   $v0, $s3, +32      
  00434324: bnel   $v0, $zero, +20       ; br -> 0x0043433c
  00434328: addiu  $s2, $s2, +8       
  0043432c: andi   $v0, $s3, +16      
  00434330: beq    $v0, $zero, +16       ; br -> 0x00434344
  00434334: andi   $v0, $s3, +64      
  00434338: addiu  $s2, $s2, +8       
  0043433c: beq    $zero, $zero, +24     ; br -> 0x00434358
  00434340: lw     $s0, -8($s2)       
  00434344: beq    $v0, $zero, +12       ; br -> 0x00434354
  00434348: addiu  $s2, $s2, +8       
  0043434c: beq    $zero, $zero, +8      ; br -> 0x00434358
  00434350: lw     $s0, -8($s2)       
  00434354: op27    $s2,$s0,$ra       
  00434358: beq    $zero, $zero, +104    ; br -> 0x004343c4
  0043435c: addiu  $a0, $zero, +1     
  00434360: lui   $v0, 0x006a0000     
  00434364: beq    $zero, $zero, +12     ; br -> 0x00434374
  00434368: addiu  $v0, $v0, +20640   
  0043436c: lui   $v0, 0x006a0000     
  00434370: addiu  $v0, $v0, +20608   
  00434374: sw     $v0, +92($sp)      
  00434378: andi   $v0, $s3, +32      
  0043437c: bnel   $v0, $zero, +20       ; br -> 0x00434394
  00434380: addiu  $s2, $s2, +8       
  00434384: andi   $v0, $s3, +16      
  00434388: beq    $v0, $zero, +16       ; br -> 0x0043439c
  0043438c: andi   $v0, $s3, +64      
  00434390: addiu  $s2, $s2, +8       
  00434394: beq    $zero, $zero, +24     ; br -> 0x004343b0
  00434398: lw     $s0, -8($s2)       
  0043439c: beq    $v0, $zero, +12       ; br -> 0x004343ac
  004343a0: addiu  $s2, $s2, +8       
  004343a4: beq    $zero, $zero, +8      ; br -> 0x004343b0
  004343a8: lw     $s0, -8($s2)       
  004343ac: op27    $s2,$s0,$ra       
  004343b0: andi   $v1, $s3, +1       
  004343b4: beq    $v1, $zero, +12       ; br -> 0x004343c4
  004343b8: addiu  $a0, $zero, +2     
  004343bc: ori    $v0, $s3, +2       
  004343c0: movn    $v0,$s0,$s3       
  004343c4: sw     $zero, +64($sp)    
  004343c8: regimm $s7, $zero, +12       ; br -> 0x004343d8
  004343cc: sw     $s7, +84($sp)      
  004343d0: addiu  $v0, $zero, -129   
  004343d4: and    $v0, $s3, +0       
  004343d8: bne    $s0, $zero, +24       ; br -> 0x004343f4
  004343dc: addiu  $s4, $sp, +40      
  004343e0: andi   $v1, $s3, +4       
  004343e4: lw     $a1, +84($sp)      
  004343e8: andi   $s7, $s3, +132     
  004343ec: beq    $a1, $zero, +300      ; br -> 0x0043451c
  004343f0: sw     $v1, +108($sp)     
  004343f4: addiu  $v0, $zero, +1     
  004343f8: beql   $a0, $v0, +100        ; br -> 0x00434460
  004343fc: andi   $v1, $s3, +4       
  00434400: beq    $a0, $zero, +20       ; br -> 0x00434418
  00434404: addiu  $v0, $zero, +2     
  00434408: beq    $a0, $v0, +180        ; br -> 0x004344c0
  0043440c: lui   $v0, 0x006a0000     
  00434410: beq    $zero, $zero, +236    ; br -> 0x00434500
  00434414: andi   $a2, $s3, +4       
  00434418: andi   $a2, $s3, +4       
  0043441c: andi   $v1, $s3, +1       
  00434420: sw     $a2, +108($sp)     
  00434424: andi   $s7, $s3, +132     
  00434428: andi   $v0, $s0, +7       
  0043442c: addiu  $s4, $s4, -1       
  00434430: op19    $v0,$v0,$zero     
  00434434: spec3a  $zero,$s0,$s0     
  00434438: andi   $v0, $v0, +255     
  0043443c: bne    $s0, $zero, -24       ; br -> 0x00474428
  00434440: sw     $v0, +0($s4)       
  00434444: beq    $v1, $zero, +212      ; br -> 0x0043451c
  00434448: addiu  $v1, $zero, +48    
  0043444c: beq    $v0, $v1, +208        ; br -> 0x00434520
  00434450: addiu  $v0, $s4, -40      
  00434454: addiu  $s4, $s4, -1       
  00434458: beq    $zero, $zero, +192    ; br -> 0x0043451c
  0043445c: sw     $v1, +0($s4)       
  00434460: sltiu  $v0, $s0, +10      
  00434464: andi   $s7, $s3, +132     
  00434468: bne    $v0, $zero, +64       ; br -> 0x004344ac
  0043446c: sw     $v1, +108($sp)     
  00434470: dsubu  $zero, $s0, +0     
  00434474: sll    $zero, $zero, +0   
  00434478: jal   0xf03f8eb8             ; -> 0x003f8eb8
  0043447c: addiu  $a1, $zero, +10    
  00434480: addiu  $s4, $s4, -1       
  00434484: op19    $v0,$v0,$zero     
  00434488: dsubu  $zero, $s0, +0     
  0043448c: andi   $v0, $v0, +255     
  00434490: addiu  $a1, $zero, +10    
  00434494: jal   0xf03f8938             ; -> 0x003f8938
  00434498: sw     $v0, +0($s4)       
  0043449c: dsubu  $zero, $v0, +0     
  004344a0: sltiu  $v0, $s0, +10      
  004344a4: beq    $v0, $zero, -48       ; br -> 0x00474478
  004344a8: dsubu  $zero, $s0, +0     
  004344ac: op19    $s0,$v0,$zero     
  004344b0: addiu  $s4, $s4, -1       
  004344b4: andi   $v0, $v0, +255     
  004344b8: beq    $zero, $zero, +96     ; br -> 0x0043451c
  004344bc: sw     $v0, +0($s4)       
  004344c0: andi   $a0, $s3, +4       
  004344c4: andi   $s7, $s3, +132     
  004344c8: sw     $a0, +108($sp)     
  004344cc: sll    $zero, $zero, +0   
  004344d0: andi   $v0, $s0, +15      
  004344d4: lw     $a1, +92($sp)      
  004344d8: spec3c  $zero,$v0,$v0     
  004344dc: spec3f  $zero,$v0,$v0     
  004344e0: addiu  $s4, $s4, -1       
  004344e4: addu   $v0, $a1, +0       
  004344e8: spec3a  $zero,$s0,$s0     
  004344ec: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  004344f0: bne    $s0, $zero, -36       ; br -> 0x004744d0
  004344f4: sw     $v1, +0($s4)       
  004344f8: beq    $zero, $zero, +36     ; br -> 0x00434520
  004344fc: addiu  $v0, $s4, -40      
  00434500: addiu  $s4, $v0, +20664   
  00434504: sw     $a2, +108($sp)     
  00434508: dsubu  $zero, $s4, +0     
  0043450c: jal   0xf0429068             ; -> 0x00429068
  00434510: andi   $s7, $s3, +132     
  00434514: beq    $zero, $zero, +56     ; br -> 0x00434550
  00434518: sw     $v0, +88($sp)      
  0043451c: addiu  $v0, $s4, -40      
  00434520: subu   $v0, $sp, +0       
  00434524: beq    $zero, $zero, +40     ; br -> 0x00434550
  00434528: sw     $v0, +88($sp)      
  0043452c: beq    $s5, $zero, +1384     ; br -> 0x00434a98
  00434530: addiu  $v0, $zero, +1     
  00434534: andi   $v1, $s3, +4       
  00434538: sw     $s5, +0($sp)       
  0043453c: dsubu  $zero, $sp, +0     
  00434540: sw     $zero, +64($sp)    
  00434544: andi   $s7, $s3, +132     
  00434548: sw     $v0, +88($sp)      
  0043454c: sw     $v1, +108($sp)     
  00434550: lw     $fp, +88($sp)      
  00434554: lw     $a0, +84($sp)      
  00434558: lw     $v1, +64($sp)      
  0043455c: dadd   $a0, $fp, +0       
  00434560: beq    $v1, $zero, +12       ; br -> 0x00434570
  00434564: movn    $a0,$v0,$fp       
  00434568: beq    $zero, $zero, +12     ; br -> 0x00434578
  0043456c: addiu  $fp, $fp, +1       
  00434570: andi   $v0, $s3, +2       
  00434574: addu   $fp, $v0, +0       
  00434578: lw     $a1, +84($sp)      
  0043457c: lw     $a2, +88($sp)      
  00434580: lw     $v0, +80($sp)      
  00434584: subu   $a2, $a1, +0       
  00434588: dadd   $v0, $fp, +0       
  0043458c: sw     $a1, +104($sp)     
  00434590: bne    $s7, $zero, +248      ; br -> 0x0043468c
  00434594: sw     $v0, +112($sp)     
  00434598: lw     $v1, +80($sp)      
  0043459c: subu   $fp, $v1, +0       
  004345a0: blez   $s0, $zero, +232      ; br -> 0x0043468c
  004345a4: slti   $v0, $s0, +17      
  004345a8: bne    $v0, $zero, +140      ; br -> 0x00434638
  004345ac: lui   $t0, 0x006a0000     
  004345b0: addiu  $t1, $zero, +1     
  004345b4: lw     $v0, +12($s1)      
  004345b8: andi   $v0, $v0, +512     
  004345bc: beql   $v0, $zero, +60       ; br -> 0x004345fc
  004345c0: lw     $v0, +12($s1)      
  004345c4: lw     $v1, +0($s1)       
  004345c8: addiu  $v0, $t0, +20576   
  004345cc: mmi0   $zero,$v0,$a0      
  004345d0: mmi1   $zero,$v0,$a0      
  004345d4: mmi0   $zero,$v0,$a1      
  004345d8: mmi1   $zero,$v0,$a1      
  004345dc: op2c    $v1,$a0,$zero     
  004345e0: op2d    $v1,$a0,$zero     
  004345e4: op2c    $v1,$a1,$zero     
  004345e8: op2d    $v1,$a1,$zero     
  004345ec: lw     $v0, +0($s1)       
  004345f0: addiu  $v0, $v0, +16      
  004345f4: beq    $zero, $zero, +48     ; br -> 0x00434628
  004345f8: sw     $v0, +0($s1)       
  004345fc: beql   $v0, $zero, +4        ; br -> 0x00434604
  00434600: sw     $t1, +14($s1)      
  00434604: lw     $a0, +14($s1)      
  00434608: addiu  $a1, $t0, +20576   
  0043460c: sw     $t0, +128($sp)     
  00434610: addiu  $a2, $zero, +16    
  00434614: sw     $t1, +144($sp)     
  00434618: jal   0xf0433db8             ; -> 0x00433db8
  0043461c: dsubu  $zero, $zero, +0   
  00434620: lw     $t1, +144($sp)     
  00434624: lw     $t0, +128($sp)     
  00434628: addiu  $s0, $s0, -16      
  0043462c: slti   $v0, $s0, +17      
  00434630: beql   $v0, $zero, -124      ; br -> 0x004745b8
  00434634: lw     $v0, +12($s1)      
  00434638: lw     $v0, +12($s1)      
  0043463c: andi   $v0, $v0, +512     
  00434640: beq    $v0, $zero, +32       ; br -> 0x00434664
  00434644: addiu  $a1, $t0, +20576   
  00434648: lw     $a0, +0($s1)       
  0043464c: jal   0xf04287e0             ; -> 0x004287e0
  00434650: dsubu  $zero, $s0, +0     
  00434654: lw     $v1, +0($s1)       
  00434658: addu   $s0, $v1, +0       
  0043465c: beq    $zero, $zero, +44     ; br -> 0x0043468c
  00434660: sw     $v1, +0($s1)       
  00434664: lw     $v0, +12($s1)      
  00434668: bnel   $v0, $zero, +16       ; br -> 0x0043467c
  0043466c: lw     $a0, +14($s1)      
  00434670: addiu  $v0, $zero, +1     
  00434674: sw     $v0, +14($s1)      
  00434678: lw     $a0, +14($s1)      
  0043467c: addiu  $a1, $t0, +20576   
  00434680: dsubu  $zero, $s0, +0     
  00434684: jal   0xf0433db8             ; -> 0x00433db8
  00434688: dsubu  $zero, $zero, +0   
  0043468c: lw     $v0, +64($sp)      
  00434690: beq    $v0, $zero, +88       ; br -> 0x004346ec
  00434694: lw     $a0, +64($sp)      
  00434698: lw     $v0, +12($s1)      
  0043469c: andi   $v0, $v0, +512     
  004346a0: beql   $v0, $zero, +28       ; br -> 0x004346c0
  004346a4: lw     $v0, +12($s1)      
  004346a8: lw     $v1, +0($s1)       
  004346ac: sw     $a0, +0($v1)       
  004346b0: lw     $v0, +0($s1)       
  004346b4: addiu  $v0, $v0, +1       
  004346b8: beq    $zero, $zero, +156    ; br -> 0x00434758
  004346bc: sw     $v0, +0($s1)       
  004346c0: bnel   $v0, $zero, +16       ; br -> 0x004346d4
  004346c4: lw     $a0, +14($s1)      
  004346c8: addiu  $v0, $zero, +1     
  004346cc: sw     $v0, +14($s1)      
  004346d0: lw     $a0, +14($s1)      
  004346d4: addiu  $a1, $sp, +64      
  004346d8: addiu  $a2, $zero, +1     
  004346dc: jal   0xf0433db8             ; -> 0x00433db8
  004346e0: dsubu  $zero, $zero, +0   
  004346e4: beq    $zero, $zero, +116    ; br -> 0x0043475c
  004346e8: addiu  $v0, $zero, +128   
  004346ec: andi   $v0, $s3, +2       
  004346f0: beq    $v0, $zero, +100      ; br -> 0x00434758
  004346f4: addiu  $v0, $zero, +48    
  004346f8: lw     $v1, +12($s1)      
  004346fc: sw     $v0, +48($sp)      
  00434700: andi   $v1, $v1, +512     
  00434704: beq    $v1, $zero, +40       ; br -> 0x00434730
  00434708: sw     $s5, +49($sp)      
  0043470c: lw     $v1, +0($s1)       
  00434710: lw     $a0, +48($sp)      
  00434714: lw     $a1, +49($sp)      
  00434718: sw     $a0, +0($v1)       
  0043471c: sw     $a1, +1($v1)       
  00434720: lw     $v0, +0($s1)       
  00434724: addiu  $v0, $v0, +2       
  00434728: beq    $zero, $zero, +44     ; br -> 0x00434758
  0043472c: sw     $v0, +0($s1)       
  00434730: lw     $v0, +12($s1)      
  00434734: bnel   $v0, $zero, +16       ; br -> 0x00434748
  00434738: lw     $a0, +14($s1)      
  0043473c: addiu  $v0, $zero, +1     
  00434740: sw     $v0, +14($s1)      
  00434744: lw     $a0, +14($s1)      
  00434748: addiu  $a1, $sp, +48      
  0043474c: addiu  $a2, $zero, +2     
  00434750: jal   0xf0433db8             ; -> 0x00433db8
  00434754: dsubu  $zero, $zero, +0   
  00434758: addiu  $v0, $zero, +128   
  0043475c: bne    $s7, $v0, +240        ; br -> 0x00434850
  00434760: lw     $s0, +104($sp)     
  00434764: lw     $v1, +80($sp)      
  00434768: subu   $fp, $v1, +0       
  0043476c: blez   $s0, $zero, +220      ; br -> 0x0043484c
  00434770: slti   $v0, $s0, +17      
  00434774: bne    $v0, $zero, +128      ; br -> 0x004347f8
  00434778: lui   $s3, 0x006a0000     
  0043477c: addiu  $s5, $zero, +1     
  00434780: lw     $v0, +12($s1)      
  00434784: sll    $zero, $zero, +0   
  00434788: andi   $v0, $v0, +512     
  0043478c: beql   $v0, $zero, +60       ; br -> 0x004347cc
  00434790: lw     $v0, +12($s1)      
  00434794: lw     $v1, +0($s1)       
  00434798: addiu  $v0, $s3, +20592   
  0043479c: mmi0   $zero,$v0,$a0      
  004347a0: mmi1   $zero,$v0,$a0      
  004347a4: mmi0   $zero,$v0,$a1      
  004347a8: mmi1   $zero,$v0,$a1      
  004347ac: op2c    $v1,$a0,$zero     
  004347b0: op2d    $v1,$a0,$zero     
  004347b4: op2c    $v1,$a1,$zero     
  004347b8: op2d    $v1,$a1,$zero     
  004347bc: lw     $v0, +0($s1)       
  004347c0: addiu  $v0, $v0, +16      
  004347c4: beq    $zero, $zero, +32     ; br -> 0x004347e8
  004347c8: sw     $v0, +0($s1)       
  004347cc: beql   $v0, $zero, +4        ; br -> 0x004347d4
  004347d0: sw     $s5, +14($s1)      
  004347d4: lw     $a0, +14($s1)      
  004347d8: addiu  $a1, $s3, +20592   
  004347dc: addiu  $a2, $zero, +16    
  004347e0: jal   0xf0433db8             ; -> 0x00433db8
  004347e4: dsubu  $zero, $zero, +0   
  004347e8: addiu  $s0, $s0, -16      
  004347ec: slti   $v0, $s0, +17      
  004347f0: beql   $v0, $zero, -108      ; br -> 0x00474788
  004347f4: lw     $v0, +12($s1)      
  004347f8: lw     $v0, +12($s1)      
  004347fc: andi   $v0, $v0, +512     
  00434800: beq    $v0, $zero, +32       ; br -> 0x00434824
  00434804: addiu  $a1, $s3, +20592   
  00434808: lw     $a0, +0($s1)       
  0043480c: jal   0xf04287e0             ; -> 0x004287e0
  00434810: dsubu  $zero, $s0, +0     
  00434814: lw     $v1, +0($s1)       
  00434818: addu   $s0, $v1, +0       
  0043481c: beq    $zero, $zero, +44     ; br -> 0x0043484c
  00434820: sw     $v1, +0($s1)       
  00434824: lw     $v0, +12($s1)      
  00434828: bnel   $v0, $zero, +16       ; br -> 0x0043483c
  0043482c: lw     $a0, +14($s1)      
  00434830: addiu  $v0, $zero, +1     
  00434834: sw     $v0, +14($s1)      
  00434838: lw     $a0, +14($s1)      
  0043483c: addiu  $a1, $s3, +20592   
  00434840: dsubu  $zero, $s0, +0     
  00434844: jal   0xf0433db8             ; -> 0x00433db8
  00434848: dsubu  $zero, $zero, +0   
  0043484c: lw     $s0, +104($sp)     
  00434850: blez   $s0, $zero, +216      ; br -> 0x0043492c
  00434854: slti   $v0, $s0, +17      
  00434858: bne    $v0, $zero, +124      ; br -> 0x004348d8
  0043485c: lui   $s3, 0x006a0000     
  00434860: addiu  $s5, $zero, +1     
  00434864: lw     $v0, +12($s1)      
  00434868: andi   $v0, $v0, +512     
  0043486c: beql   $v0, $zero, +60       ; br -> 0x004348ac
  00434870: lw     $v0, +12($s1)      
  00434874: lw     $v1, +0($s1)       
  00434878: addiu  $v0, $s3, +20592   
  0043487c: mmi0   $zero,$v0,$a0      
  00434880: mmi1   $zero,$v0,$a0      
  00434884: mmi0   $zero,$v0,$a1      
  00434888: mmi1   $zero,$v0,$a1      
  0043488c: op2c    $v1,$a0,$zero     
  00434890: op2d    $v1,$a0,$zero     
  00434894: op2c    $v1,$a1,$zero     
  00434898: op2d    $v1,$a1,$zero     
  0043489c: lw     $v0, +0($s1)       
  004348a0: addiu  $v0, $v0, +16      
  004348a4: beq    $zero, $zero, +32     ; br -> 0x004348c8
  004348a8: sw     $v0, +0($s1)       
  004348ac: beql   $v0, $zero, +4        ; br -> 0x004348b4
  004348b0: sw     $s5, +14($s1)      
  004348b4: lw     $a0, +14($s1)      
  004348b8: addiu  $a1, $s3, +20592   
  004348bc: addiu  $a2, $zero, +16    
  004348c0: jal   0xf0433db8             ; -> 0x00433db8
  004348c4: dsubu  $zero, $zero, +0   
  004348c8: addiu  $s0, $s0, -16      
  004348cc: slti   $v0, $s0, +17      
  004348d0: beql   $v0, $zero, -108      ; br -> 0x00474868
  004348d4: lw     $v0, +12($s1)      
  004348d8: lw     $v0, +12($s1)      
  004348dc: andi   $v0, $v0, +512     
  004348e0: beq    $v0, $zero, +32       ; br -> 0x00434904
  004348e4: addiu  $a1, $s3, +20592   
  004348e8: lw     $a0, +0($s1)       
  004348ec: jal   0xf04287e0             ; -> 0x004287e0
  004348f0: dsubu  $zero, $s0, +0     
  004348f4: lw     $v1, +0($s1)       
  004348f8: addu   $s0, $v1, +0       
  004348fc: beq    $zero, $zero, +44     ; br -> 0x0043492c
  00434900: sw     $v1, +0($s1)       
  00434904: lw     $v0, +12($s1)      
  00434908: bnel   $v0, $zero, +16       ; br -> 0x0043491c
  0043490c: lw     $a0, +14($s1)      
  00434910: addiu  $v0, $zero, +1     
  00434914: sw     $v0, +14($s1)      
  00434918: lw     $a0, +14($s1)      
  0043491c: addiu  $a1, $s3, +20592   
  00434920: dsubu  $zero, $s0, +0     
  00434924: jal   0xf0433db8             ; -> 0x00433db8
  00434928: dsubu  $zero, $zero, +0   
  0043492c: lw     $v0, +12($s1)      
  00434930: andi   $v0, $v0, +512     
  00434934: beq    $v0, $zero, +36       ; br -> 0x0043495c
  00434938: dsubu  $zero, $s4, +0     
  0043493c: lw     $a0, +0($s1)       
  00434940: jal   0xf04287e0             ; -> 0x004287e0
  00434944: lw     $a2, +88($sp)      
  00434948: lw     $v1, +0($s1)       
  0043494c: lw     $a0, +88($sp)      
  00434950: addu   $a0, $v1, +0       
  00434954: beq    $zero, $zero, +44     ; br -> 0x00434984
  00434958: sw     $v1, +0($s1)       
  0043495c: lw     $v0, +12($s1)      
  00434960: bnel   $v0, $zero, +16       ; br -> 0x00434974
  00434964: lw     $a0, +14($s1)      
  00434968: addiu  $v0, $zero, +1     
  0043496c: sw     $v0, +14($s1)      
  00434970: lw     $a0, +14($s1)      
  00434974: dsubu  $zero, $s4, +0     
  00434978: lw     $a2, +88($sp)      
  0043497c: jal   0xf0433db8             ; -> 0x00433db8
  00434980: dsubu  $zero, $zero, +0   
  00434984: lw     $a1, +108($sp)     
  00434988: beq    $a1, $zero, +240      ; br -> 0x00434a7c
  0043498c: lw     $a2, +80($sp)      
  00434990: subu   $fp, $a2, +0       
  00434994: blez   $s0, $zero, +228      ; br -> 0x00434a7c
  00434998: slti   $v0, $s0, +17      
  0043499c: bne    $v0, $zero, +136      ; br -> 0x00434a28
  004349a0: lui   $t0, 0x006a0000     
  004349a4: addiu  $s3, $zero, +1     
  004349a8: lw     $v0, +12($s1)      
  004349ac: sll    $zero, $zero, +0   
  004349b0: andi   $v0, $v0, +512     
  004349b4: beql   $v0, $zero, +60       ; br -> 0x004349f4
  004349b8: lw     $v0, +12($s1)      
  004349bc: lw     $v1, +0($s1)       
  004349c0: addiu  $a2, $t0, +20576   
  004349c4: mmi0   $zero,$a2,$v0      
  004349c8: mmi1   $zero,$a2,$v0      
  004349cc: mmi0   $zero,$a2,$a0      
  004349d0: mmi1   $zero,$a2,$a0      
  004349d4: op2c    $v1,$v0,$zero     
  004349d8: op2d    $v1,$v0,$zero     
  004349dc: op2c    $v1,$a0,$zero     
  004349e0: op2d    $v1,$a0,$zero     
  004349e4: lw     $v0, +0($s1)       
  004349e8: addiu  $v0, $v0, +16      
  004349ec: beq    $zero, $zero, +40     ; br -> 0x00434a18
  004349f0: sw     $v0, +0($s1)       
  004349f4: beql   $v0, $zero, +4        ; br -> 0x004349fc
  004349f8: sw     $s3, +14($s1)      
  004349fc: lw     $a0, +14($s1)      
  00434a00: addiu  $a1, $t0, +20576   
  00434a04: sw     $t0, +128($sp)     
  00434a08: addiu  $a2, $zero, +16    
  00434a0c: jal   0xf0433db8             ; -> 0x00433db8
  00434a10: dsubu  $zero, $zero, +0   
  00434a14: lw     $t0, +128($sp)     
  00434a18: addiu  $s0, $s0, -16      
  00434a1c: slti   $v0, $s0, +17      
  00434a20: beql   $v0, $zero, -116      ; br -> 0x004749b0
  00434a24: lw     $v0, +12($s1)      
  00434a28: lw     $v0, +12($s1)      
  00434a2c: andi   $v0, $v0, +512     
  00434a30: beq    $v0, $zero, +32       ; br -> 0x00434a54
  00434a34: addiu  $a1, $t0, +20576   
  00434a38: lw     $a0, +0($s1)       
  00434a3c: jal   0xf04287e0             ; -> 0x004287e0
  00434a40: dsubu  $zero, $s0, +0     
  00434a44: lw     $v1, +0($s1)       
  00434a48: addu   $s0, $v1, +0       
  00434a4c: beq    $zero, $zero, +44     ; br -> 0x00434a7c
  00434a50: sw     $v1, +0($s1)       
  00434a54: lw     $v0, +12($s1)      
  00434a58: bnel   $v0, $zero, +16       ; br -> 0x00434a6c
  00434a5c: lw     $a0, +14($s1)      
  00434a60: addiu  $v0, $zero, +1     
  00434a64: sw     $v0, +14($s1)      
  00434a68: lw     $a0, +14($s1)      
  00434a6c: addiu  $a1, $t0, +20576   
  00434a70: dsubu  $zero, $s0, +0     
  00434a74: jal   0xf0433db8             ; -> 0x00433db8
  00434a78: dsubu  $zero, $zero, +0   
  00434a7c: lw     $v0, +80($sp)      
  00434a80: lw     $v1, +112($sp)     
  00434a84: lw     $a0, +76($sp)      
  00434a88: movz    $fp,$v1,$v0       
  00434a8c: addu   $v0, $a0, +0       
  00434a90: beq    $zero, $zero, -2900   ; br -> 0x00473f40
  00434a94: sw     $a0, +76($sp)      
  00434a98: lw     $v0, +12($s1)      
  00434a9c: andi   $v0, $v0, +512     
  00434aa0: bne    $v0, $zero, +28       ; br -> 0x00434ac0
  00434aa4: lw     $v0, +76($sp)      
  00434aa8: lw     $a0, +14($s1)      
  00434aac: dsubu  $zero, $zero, +0   
  00434ab0: dsubu  $zero, $zero, +0   
  00434ab4: jal   0xf0433db8             ; -> 0x00433db8
  00434ab8: addiu  $a3, $zero, +1     
  00434abc: lw     $v0, +76($sp)      
  00434ac0: lw     $ra, +304($sp)     
  00434ac4: lw     $fp, +288($sp)     
  00434ac8: lw     $s7, +272($sp)     
  00434acc: lw     $s6, +256($sp)     
  00434ad0: lw     $s5, +240($sp)     
  00434ad4: lw     $s4, +224($sp)     
  00434ad8: lw     $s3, +208($sp)     
  00434adc: lw     $s2, +192($sp)     
  00434ae0: lw     $s1, +176($sp)     
  00434ae4: lw     $s0, +160($sp)     
  00434ae8: jr     $ra                
  00434aec: addiu  $sp, $sp, +320     
  00434af0: dsubu  $zero, $a0, +0     
  00434af4: addiu  $sp, $sp, -32      
  00434af8: spec3c  $zero,$v0,$t0     
  00434afc: spec3f  $zero,$t0,$t0     
  00434b00: spec3f  $zero,$v0,$a3     
  00434b04: sw     $ra, +16($sp)      
  00434b08: dsubu  $zero, $t0, +0     
  00434b0c: dsubu  $zero, $a1, +0     
  00434b10: spec3c  $zero,$v0,$t2     
  00434b14: spec3f  $zero,$t2,$t2     
  00434b18: spec3f  $zero,$v0,$t1     
  00434b1c: dsubu  $zero, $t2, +0     
  00434b20: lui   $v1, 0x80000000     
  00434b24: lui   $v0, 0x7fff0000     
  00434b28: and    $v1, $a3, +0       
  00434b2c: ori    $v0, $v0, -1       
  00434b30: and    $v0, $t1, +0       
  00434b34: or     $t2, $t1, +0       
  00434b38: beq    $v1, $zero, +52       ; br -> 0x00434b70
  00434b3c: xor    $t3, $a3, +0       
  00434b40: lui   $v0, 0x7fef0000     
  00434b44: ori    $v0, $v0, -1       
  00434b48: dadd   $a3, $v0, +0       
  00434b4c: bne    $v0, $zero, +32       ; br -> 0x00434b70
  00434b50: subu   $t2, $zero, +0     
  00434b54: lui   $v1, 0x7ff00000     
  00434b58: or     $v0, $t2, +0       
  00434b5c: srl    $v0, $zero, +31    
  00434b60: or     $v0, $t1, +0       
  00434b64: daddu  $v0, $v1, +0       
  00434b68: beq    $v1, $zero, +32       ; br -> 0x00434b8c
  00434b6c: dadd   $a3, $t1, +0       
  00434b70: jal   0xf03fb210             ; -> 0x003fb210
  00434b74: sll    $zero, $zero, +0   
  00434b78: dsubu  $zero, $v0, +0     
  00434b7c: jal   0xf03fb498             ; -> 0x003fb498
  00434b80: dsubu  $zero, $a0, +0     
  00434b84: beq    $zero, $zero, +848    ; br -> 0x00434ed8
  00434b88: lw     $ra, +16($sp)      
  00434b8c: bne    $v0, $zero, +40       ; br -> 0x00434bb8
  00434b90: lui   $v0, 0x000f0000     
  00434b94: dadd   $t1, $a3, +0       
  00434b98: bne    $v0, $zero, +824      ; br -> 0x00434ed4
  00434b9c: dsubu  $zero, $a0, +0     
  00434ba0: daddu  $t2, $t0, +0       
  00434ba4: bnel   $v0, $zero, +812      ; br -> 0x00434ed4
  00434ba8: dsubu  $zero, $a0, +0     
  00434bac: beq    $t0, $t2, +748        ; br -> 0x00434e9c
  00434bb0: srl    $t3, $zero, +31    
  00434bb4: lui   $v0, 0x000f0000     
  00434bb8: ori    $v0, $v0, -1       
  00434bbc: dadd   $a3, $v0, +0       
  00434bc0: bnel   $v0, $zero, +112      ; br -> 0x00434c34
  00434bc4: sra    $a3, $zero, +20    
  00434bc8: bne    $a3, $zero, +56       ; br -> 0x00434c04
  00434bcc: sll    $a3, $zero, +11    
  00434bd0: addiu  $a1, $zero, -1043  
  00434bd4: blez   $t4, $zero, +96       ; br -> 0x00434c38
  00434bd8: dsubu  $zero, $t4, +0     
  00434bdc: sll    $zero, $zero, +0   
  00434be0: addiu  $a1, $a1, -1       
  00434be4: sll    $v0, $zero, +1     
  00434be8: sll    $zero, $zero, +0   
  00434bec: sll    $zero, $zero, +0   
  00434bf0: sll    $zero, $zero, +0   
  00434bf4: bgtz   $v0, $zero, -24       ; br -> 0x00474be0
  00434bf8: sll    $zero, $zero, +0   
  00434bfc: beq    $zero, $zero, +60     ; br -> 0x00434c3c
  00434c00: lui   $v0, 0x000f0000     
  00434c04: blez   $v0, $zero, +48       ; br -> 0x00434c38
  00434c08: addiu  $a1, $zero, -1022  
  00434c0c: sll    $zero, $zero, +0   
  00434c10: addiu  $a1, $a1, -1       
  00434c14: sll    $v0, $zero, +1     
  00434c18: sll    $zero, $zero, +0   
  00434c1c: sll    $zero, $zero, +0   
  00434c20: sll    $zero, $zero, +0   
  00434c24: bgtz   $v0, $zero, -24       ; br -> 0x00474c10
  00434c28: sll    $zero, $zero, +0   
  00434c2c: beq    $zero, $zero, +12     ; br -> 0x00434c3c
  00434c30: lui   $v0, 0x000f0000     
  00434c34: addiu  $a1, $v0, -1023    
  00434c38: lui   $v0, 0x000f0000     
  00434c3c: ori    $v0, $v0, -1       
  00434c40: dadd   $t1, $v0, +0       
  00434c44: bnel   $v0, $zero, +116      ; br -> 0x00434cbc
  00434c48: sra    $t1, $zero, +20    
  00434c4c: bne    $t1, $zero, +60       ; br -> 0x00434c8c
  00434c50: sll    $t1, $zero, +11    
  00434c54: addiu  $a0, $zero, -1043  
  00434c58: blez   $t5, $zero, +108      ; br -> 0x00434cc8
  00434c5c: dsubu  $zero, $t5, +0     
  00434c60: slti   $v1, $a1, -1022    
  00434c64: sll    $zero, $zero, +0   
  00434c68: addiu  $a0, $a0, -1       
  00434c6c: sll    $v0, $zero, +1     
  00434c70: sll    $zero, $zero, +0   
  00434c74: sll    $zero, $zero, +0   
  00434c78: sll    $zero, $zero, +0   
  00434c7c: bgtz   $v0, $zero, -24       ; br -> 0x00474c68
  00434c80: sll    $zero, $zero, +0   
  00434c84: beq    $zero, $zero, +68     ; br -> 0x00434ccc
  00434c88: sll    $zero, $zero, +0   
  00434c8c: blez   $v0, $zero, +56       ; br -> 0x00434cc8
  00434c90: addiu  $a0, $zero, -1022  
  00434c94: slti   $v1, $a1, -1022    
  00434c98: addiu  $a0, $a0, -1       
  00434c9c: sll    $v0, $zero, +1     
  00434ca0: sll    $zero, $zero, +0   
  00434ca4: sll    $zero, $zero, +0   
  00434ca8: sll    $zero, $zero, +0   
  00434cac: bgtz   $v0, $zero, -24       ; br -> 0x00474c98
  00434cb0: sll    $zero, $zero, +0   
  00434cb4: beq    $zero, $zero, +20     ; br -> 0x00434ccc
  00434cb8: sll    $zero, $zero, +0   
  00434cbc: slti   $v1, $a1, -1022    
  00434cc0: beq    $zero, $zero, +8      ; br -> 0x00434ccc
  00434cc4: addiu  $a0, $v0, -1023    
  00434cc8: slti   $v1, $a1, -1022    
  00434ccc: bne    $v1, $zero, +28       ; br -> 0x00434cec
  00434cd0: addiu  $v0, $zero, -1022  
  00434cd4: lui   $v0, 0x000f0000     
  00434cd8: lui   $v1, 0x00100000     
  00434cdc: ori    $v0, $v0, -1       
  00434ce0: and    $v0, $a3, +0       
  00434ce4: beq    $zero, $zero, +48     ; br -> 0x00434d18
  00434ce8: or     $v1, $v0, +0       
  00434cec: subu   $a1, $v0, +0       
  00434cf0: slti   $v1, $a2, +32      
  00434cf4: beq    $v1, $zero, +24       ; br -> 0x00434d10
  00434cf8: subu   $a2, $zero, +0     
  00434cfc: sllv   $a3, $a2, +0       
  00434d00: srlv   $t4, $v0, +0       
  00434d04: sllv   $t4, $a2, +0       
  00434d08: beq    $zero, $zero, +12     ; br -> 0x00434d18
  00434d0c: or     $v0, $v1, +0       
  00434d10: sllv   $t4, $a2, +0       
  00434d14: dsubu  $zero, $zero, +0   
  00434d18: slti   $t4, $a0, -1022    
  00434d1c: bne    $t4, $zero, +28       ; br -> 0x00434d3c
  00434d20: addiu  $v0, $zero, -1022  
  00434d24: lui   $v0, 0x000f0000     
  00434d28: lui   $v1, 0x00100000     
  00434d2c: ori    $v0, $v0, -1       
  00434d30: and    $v0, $t1, +0       
  00434d34: beq    $zero, $zero, +48     ; br -> 0x00434d68
  00434d38: or     $v1, $v0, +0       
  00434d3c: subu   $a0, $v0, +0       
  00434d40: slti   $v1, $a2, +32      
  00434d44: beq    $v1, $zero, +24       ; br -> 0x00434d60
  00434d48: subu   $a2, $zero, +0     
  00434d4c: sllv   $t1, $a2, +0       
  00434d50: srlv   $t5, $v0, +0       
  00434d54: sllv   $t5, $a2, +0       
  00434d58: beq    $zero, $zero, +12     ; br -> 0x00434d68
  00434d5c: or     $v0, $v1, +0       
  00434d60: sllv   $t5, $a2, +0       
  00434d64: dsubu  $zero, $zero, +0   
  00434d68: beq    $zero, $zero, +68     ; br -> 0x00434db0
  00434d6c: subu   $a0, $a1, +0       
  00434d70: subu   $t1, $a3, +0       
  00434d74: daddu  $t2, $t0, +0       
  00434d78: subu   $v0, $v1, +0       
  00434d7c: regimm $v1, $at, +24         ; br -> 0x00434d98
  00434d80: subu   $t2, $t0, +0       
  00434d84: srl    $t0, $zero, +31    
  00434d88: sll    $a3, $zero, +1     
  00434d8c: addu   $v0, $v1, +0       
  00434d90: beq    $zero, $zero, +28     ; br -> 0x00434db0
  00434d94: sll    $t0, $zero, +1     
  00434d98: or     $a1, $v1, +0       
  00434d9c: beq    $v0, $zero, +248      ; br -> 0x00434e98
  00434da0: sll    $v1, $zero, +1     
  00434da4: srl    $a1, $zero, +31    
  00434da8: addu   $v0, $v1, +0       
  00434dac: sll    $a1, $zero, +1     
  00434db0: dsubu  $zero, $a2, +0     
  00434db4: bne    $v0, $zero, -72       ; br -> 0x00474d70
  00434db8: addiu  $a2, $a2, -1       
  00434dbc: subu   $t1, $a3, +0       
  00434dc0: daddu  $t2, $t0, +0       
  00434dc4: subu   $v0, $v1, +0       
  00434dc8: regimm $v1, $zero, +12       ; br -> 0x00434dd8
  00434dcc: subu   $t2, $t0, +0       
  00434dd0: dsubu  $zero, $v1, +0     
  00434dd4: dsubu  $zero, $a1, +0     
  00434dd8: or     $t0, $a3, +0       
  00434ddc: beq    $v0, $zero, +188      ; br -> 0x00434e9c
  00434de0: srl    $t3, $zero, +31    
  00434de4: lui   $v0, 0x000f0000     
  00434de8: ori    $v0, $v0, -1       
  00434dec: dadd   $a3, $v0, +0       
  00434df0: bne    $v0, $zero, +48       ; br -> 0x00434e24
  00434df4: sll    $zero, $zero, +0   
  00434df8: lui   $a1, 0x000f0000     
  00434dfc: ori    $a1, $a1, -1       
  00434e00: sll    $a3, $zero, +1     
  00434e04: srl    $t0, $zero, +31    
  00434e08: addu   $v1, $v0, +0       
  00434e0c: sll    $t0, $zero, +1     
  00434e10: addiu  $a0, $a0, -1       
  00434e14: dadd   $a3, $a1, +0       
  00434e18: beq    $v0, $zero, -28       ; br -> 0x00474e00
  00434e1c: sll    $zero, $zero, +0   
  00434e20: slti   $t4, $a0, -1022    
  00434e24: bne    $t4, $zero, +48       ; br -> 0x00434e58
  00434e28: addiu  $v0, $zero, -1022  
  00434e2c: addiu  $a0, $a0, +1023    
  00434e30: lui   $v0, 0xfff00000     
  00434e34: addu   $v0, $a3, +0       
  00434e38: sll    $a0, $zero, +20    
  00434e3c: or     $a0, $v0, +0       
  00434e40: or     $t3, $a3, +0       
  00434e44: spec3c  $zero,$t0,$v0     
  00434e48: spec3c  $zero,$v1,$t6     
  00434e4c: spec3e  $zero,$v0,$v0     
  00434e50: beq    $zero, $zero, +124    ; br -> 0x00434ed0
  00434e54: or     $v0, $t6, +0       
  00434e58: subu   $a0, $v0, +0       
  00434e5c: slti   $v1, $a2, +21      
  00434e60: beq    $v1, $zero, +24       ; br -> 0x00434e7c
  00434e64: subu   $a2, $zero, +0     
  00434e68: srlv   $t0, $a2, +0       
  00434e6c: sllv   $a3, $v0, +0       
  00434e70: or     $v0, $v1, +0       
  00434e74: beq    $zero, $zero, +68     ; br -> 0x00434ebc
  00434e78: srav   $a3, $a2, +0       
  00434e7c: slti   $v0, $a2, +32      
  00434e80: beq    $v0, $zero, +48       ; br -> 0x00434eb4
  00434e84: subu   $a2, $zero, +0     
  00434e88: srlv   $t0, $a2, +0       
  00434e8c: sllv   $a3, $v0, +0       
  00434e90: beq    $zero, $zero, +36     ; br -> 0x00434eb8
  00434e94: or     $v1, $v0, +0       
  00434e98: srl    $t3, $zero, +31    
  00434e9c: lui   $v0, 0x006a0000     
  00434ea0: addiu  $v0, $v0, +21080   
  00434ea4: sll    $v1, $zero, +3     
  00434ea8: addu   $v0, $v1, +0       
  00434eac: beq    $zero, $zero, +36     ; br -> 0x00434ed4
  00434eb0: lw     $v0, +0($v1)          ; GLOBAL 0x00100000
  00434eb4: srav   $a3, $a2, +0       
  00434eb8: dsubu  $zero, $t3, +0     
  00434ebc: or     $t3, $a3, +0       
  00434ec0: spec3c  $zero,$t0,$v0     
  00434ec4: spec3c  $zero,$v1,$t7     
  00434ec8: spec3e  $zero,$v0,$v0     
  00434ecc: or     $v0, $t7, +0       
  00434ed0: dsubu  $zero, $a0, +0     
  00434ed4: lw     $ra, +16($sp)      
  00434ed8: jr     $ra                
  00434edc: addiu  $sp, $sp, +32      

; globals: 0x006a0000(x5), 0x00657754(x1), 0x00657450(x1), 0x00100000(x1)
