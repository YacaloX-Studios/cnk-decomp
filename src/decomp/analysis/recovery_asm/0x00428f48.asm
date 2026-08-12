; 0x00428f48  FUN_00428f48  size=1984  status=real_c
; evidence: args=a0=int;a1=ptr;a2=ptr;a3=int ret=ptr calls=
; 496 words

  00428f48: daddu $a3, $a0, $zero     
  00428f4c: or $t0, $a1, $a3          
  00428f50: andi   $v0, $t0, +7       
  00428f54: bne    $v0, $zero, +232      ; br -> 0x00429040
  00428f58: daddu $v1, $a3, $zero     
  00428f5c: andi   $v0, $t0, +15      
  00428f60: ori    $t1, $zero, -32640 
  00428f64: spec38  $zero,$t1,$t1     
  00428f68: ori    $t1, $t1, -32640   
  00428f6c: spec38  $zero,$t1,$t1     
  00428f70: ori    $t1, $t1, -32640   
  00428f74: spec38  $zero,$t1,$t1     
  00428f78: ori    $t1, $t1, +257     
  00428f7c: ori    $a0, $zero, -32640 
  00428f80: spec38  $zero,$a0,$a0     
  00428f84: ori    $a0, $a0, -32640   
  00428f88: spec38  $zero,$a0,$a0     
  00428f8c: ori    $a0, $a0, -32640   
  00428f90: spec38  $zero,$a0,$a0     
  00428f94: ori    $a0, $a0, -32640   
  00428f98: bnel   $v0, $zero, +100      ; br -> 0x00429000
  00428f9c: ld     $t2, +0($a1)       
  00428fa0: mmi2   $t2,$t1,$t1        
  00428fa4: lq     $t1, +0($a1)       
  00428fa8: mmi2   $t0,$a0,$a0        
  00428fac: mmi2   $v0,$t1,$t2        
  00428fb0: mmi2   $v1,$zero,$t1      
  00428fb4: mmi2   $v0,$v0,$v1        
  00428fb8: mmi2   $v0,$v0,$t0        
  00428fbc: mmi2   $a0,$v0,$t1        
  00428fc0: or $v1, $v0, $a0          
  00428fc4: bne    $v1, $zero, +116      ; br -> 0x0042903c
  00428fc8: daddu $a2, $a3, $zero     
  00428fcc: sq     $t1, +0($a2)       
  00428fd0: addiu  $a1, $a1, +16      
  00428fd4: lq     $t1, +0($a1)       
  00428fd8: mmi2   $v0,$t1,$t2        
  00428fdc: mmi2   $v1,$zero,$t1      
  00428fe0: mmi2   $v0,$v0,$v1        
  00428fe4: mmi2   $v0,$v0,$t0        
  00428fe8: mmi2   $a0,$v0,$t1        
  00428fec: or $v1, $v0, $a0          
  00428ff0: beq    $v1, $zero, -40       ; br -> 0x00428fcc
  00428ff4: addiu  $a2, $a2, +16      
  00428ff8: beq    $zero, $zero, +68     ; br -> 0x00429040
  00428ffc: daddu $v1, $a2, $zero     
  00429000: dsubu $v0, $t2, $t1       
  00429004: nor $v1, $zero, $t2       
  00429008: and $v0, $v0, $v1         
  0042900c: and $v0, $v0, $a0         
  00429010: bne    $v0, $zero, +40       ; br -> 0x0042903c
  00429014: daddu $a2, $a3, $zero     
  00429018: sd     $t2, +0($a2)       
  0042901c: addiu  $a1, $a1, +8       
  00429020: ld     $t2, +0($a1)       
  00429024: nor $v0, $zero, $t2       
  00429028: dsubu $v1, $t2, $t1       
  0042902c: and $v1, $v1, $v0         
  00429030: and $v1, $v1, $a0         
  00429034: beq    $v1, $zero, -32       ; br -> 0x00429018
  00429038: addiu  $a2, $a2, +8       
  0042903c: daddu $v1, $a2, $zero     
  00429040: lbu    $v0, +0($a1)       
  00429044: addiu  $a1, $a1, +1       
  00429048: sb     $v0, +0($v1)       
  0042904c: sll $v0, $v0, 24          
  00429050: sll $zero, $zero, 0       
  00429054: bne    $v0, $zero, -24       ; br -> 0x00429040
  00429058: addiu  $v1, $v1, +1       
  0042905c: jr     $ra                
  00429060: daddu $v0, $a3, $zero     
  00429064: sll $zero, $zero, 0       
  00429068: andi   $v0, $a0, +7       
  0042906c: bne    $v0, $zero, +284      ; br -> 0x0042918c
  00429070: daddu $a3, $a0, $zero     
  00429074: andi   $v1, $a0, +15      
  00429078: ori    $v0, $zero, -32640 
  0042907c: spec38  $zero,$v0,$v0     
  00429080: ori    $v0, $v0, -32640   
  00429084: spec38  $zero,$v0,$v0     
  00429088: ori    $v0, $v0, -32640   
  0042908c: spec38  $zero,$v0,$v0     
  00429090: ori    $v0, $v0, +257     
  00429094: bne    $v1, $zero, +124      ; br -> 0x00429114
  00429098: daddu $a1, $a0, $zero     
  0042909c: lq     $v1, +0($a1)       
  004290a0: mmi2   $t0,$v0,$v0        
  004290a4: ori    $a0, $zero, -32640 
  004290a8: spec38  $zero,$a0,$a0     
  004290ac: ori    $a0, $a0, -32640   
  004290b0: spec38  $zero,$a0,$a0     
  004290b4: ori    $a0, $a0, -32640   
  004290b8: spec38  $zero,$a0,$a0     
  004290bc: ori    $a0, $a0, -32640   
  004290c0: mmi2   $v0,$v1,$t0        
  004290c4: mmi2   $v1,$zero,$v1      
  004290c8: mmi2   $t1,$a0,$a0        
  004290cc: mmi2   $v0,$v0,$v1        
  004290d0: mmi2   $v0,$v0,$t1        
  004290d4: mmi2   $v1,$v0,$t0        
  004290d8: or $a2, $v1, $v0          
  004290dc: bnel   $a2, $zero, +172      ; br -> 0x0042918c
  004290e0: daddu $a0, $a1, $zero     
  004290e4: addiu  $a1, $a1, +16      
  004290e8: lq     $v0, +0($a1)       
  004290ec: mmi2   $v1,$zero,$v0      
  004290f0: mmi2   $v0,$v0,$t0        
  004290f4: mmi2   $v0,$v0,$v1        
  004290f8: mmi2   $a0,$v0,$t1        
  004290fc: mmi2   $v1,$a0,$a2        
  00429100: or $v1, $v1, $a0          
  00429104: beql   $v1, $zero, -32       ; br -> 0x004290e8
  00429108: addiu  $a1, $a1, +16      
  0042910c: beq    $zero, $zero, +124    ; br -> 0x0042918c
  00429110: daddu $a0, $a1, $zero     
  00429114: ld     $v1, +0($a1)       
  00429118: ori    $a0, $zero, -32640 
  0042911c: spec38  $zero,$a0,$a0     
  00429120: ori    $a0, $a0, -32640   
  00429124: spec38  $zero,$a0,$a0     
  00429128: ori    $a0, $a0, -32640   
  0042912c: spec38  $zero,$a0,$a0     
  00429130: ori    $a0, $a0, -32640   
  00429134: dsubu $v0, $v1, $v0       
  00429138: nor $v1, $zero, $v1       
  0042913c: and $v0, $v0, $v1         
  00429140: and $v0, $v0, $a0         
  00429144: bnel   $v0, $zero, +68       ; br -> 0x0042918c
  00429148: daddu $a0, $a1, $zero     
  0042914c: ori    $a2, $zero, -32640 
  00429150: spec38  $zero,$a2,$a2     
  00429154: ori    $a2, $a2, -32640   
  00429158: spec38  $zero,$a2,$a2     
  0042915c: ori    $a2, $a2, -32640   
  00429160: spec38  $zero,$a2,$a2     
  00429164: ori    $a2, $a2, +257     
  00429168: addiu  $a1, $a1, +8       
  0042916c: ld     $v0, +0($a1)       
  00429170: nor $v1, $zero, $v0       
  00429174: dsubu $v0, $v0, $a2       
  00429178: and $v0, $v0, $v1         
  0042917c: and $v0, $v0, $a0         
  00429180: beql   $v0, $zero, -24       ; br -> 0x0042916c
  00429184: addiu  $a1, $a1, +8       
  00429188: daddu $a0, $a1, $zero     
  0042918c: lb     $v0, +0($a0)       
  00429190: sll $zero, $zero, 0       
  00429194: sll $zero, $zero, 0       
  00429198: sll $zero, $zero, 0       
  0042919c: sll $zero, $zero, 0       
  004291a0: bnel   $v0, $zero, -24       ; br -> 0x0042918c
  004291a4: addiu  $a0, $a0, +1       
  004291a8: jr     $ra                
  004291ac: subu $v0, $a0, $a3        
  004291b0: daddu $t0, $a0, $zero     
  004291b4: andi   $v0, $t0, +7       
  004291b8: bnel   $v0, $zero, +288      ; br -> 0x004292dc
  004291bc: lb     $v0, +0($a0)       
  004291c0: andi   $v1, $t0, +15      
  004291c4: bnel   $v1, $zero, +156      ; br -> 0x00429264
  004291c8: ld     $v0, +0($t0)       
  004291cc: ori    $a3, $zero, -32640 
  004291d0: spec38  $zero,$a3,$a3     
  004291d4: ori    $a3, $a3, -32640   
  004291d8: spec38  $zero,$a3,$a3     
  004291dc: ori    $a3, $a3, -32640   
  004291e0: spec38  $zero,$a3,$a3     
  004291e4: ori    $a3, $a3, +257     
  004291e8: lq     $v0, +0($t0)       
  004291ec: mmi2   $t1,$a3,$a3        
  004291f0: ori    $a0, $zero, -32640 
  004291f4: spec38  $zero,$a0,$a0     
  004291f8: ori    $a0, $a0, -32640   
  004291fc: spec38  $zero,$a0,$a0     
  00429200: ori    $a0, $a0, -32640   
  00429204: spec38  $zero,$a0,$a0     
  00429208: ori    $a0, $a0, -32640   
  0042920c: mmi2   $v1,$v0,$t1        
  00429210: mmi2   $v0,$zero,$v0      
  00429214: mmi2   $t2,$a0,$a0        
  00429218: mmi2   $v1,$v1,$v0        
  0042921c: mmi2   $v1,$v1,$t2        
  00429220: mmi2   $v0,$v1,$a0        
  00429224: or $v1, $v1, $v0          
  00429228: bne    $v1, $zero, +168      ; br -> 0x004292d4
  0042922c: daddu $a3, $t0, $zero     
  00429230: addiu  $a3, $a3, +16      
  00429234: sll $zero, $zero, 0       
  00429238: lq     $v0, +0($a3)       
  0042923c: mmi2   $v1,$zero,$v0      
  00429240: mmi2   $v0,$v0,$t1        
  00429244: mmi2   $v0,$v0,$v1        
  00429248: mmi2   $v0,$v0,$t2        
  0042924c: mmi2   $v1,$v0,$a0        
  00429250: or $v0, $v0, $v1          
  00429254: beq    $v0, $zero, -32       ; br -> 0x00429238
  00429258: addiu  $a3, $a3, +16      
  0042925c: beq    $zero, $zero, +116    ; br -> 0x004292d4
  00429260: addiu  $a3, $a3, -16      
  00429264: ori    $t1, $zero, -32640 
  00429268: spec38  $zero,$t1,$t1     
  0042926c: ori    $t1, $t1, -32640   
  00429270: spec38  $zero,$t1,$t1     
  00429274: ori    $t1, $t1, -32640   
  00429278: spec38  $zero,$t1,$t1     
  0042927c: ori    $t1, $t1, +257     
  00429280: ori    $a0, $zero, -32640 
  00429284: spec38  $zero,$a0,$a0     
  00429288: ori    $a0, $a0, -32640   
  0042928c: spec38  $zero,$a0,$a0     
  00429290: ori    $a0, $a0, -32640   
  00429294: spec38  $zero,$a0,$a0     
  00429298: ori    $a0, $a0, -32640   
  0042929c: dsubu $v1, $v0, $t1       
  004292a0: nor $v0, $zero, $v0       
  004292a4: and $v1, $v1, $v0         
  004292a8: and $v1, $v1, $a0         
  004292ac: bne    $v1, $zero, +36       ; br -> 0x004292d4
  004292b0: daddu $a3, $t0, $zero     
  004292b4: addiu  $a3, $a3, +8       
  004292b8: ld     $v0, +0($a3)       
  004292bc: nor $v1, $zero, $v0       
  004292c0: dsubu $v0, $v0, $t1       
  004292c4: and $v0, $v0, $v1         
  004292c8: and $v0, $v0, $a0         
  004292cc: beql   $v0, $zero, -24       ; br -> 0x004292b8
  004292d0: addiu  $a3, $a3, +8       
  004292d4: daddu $a0, $a3, $zero     
  004292d8: lb     $v0, +0($a0)       
  004292dc: beq    $v0, $zero, +36       ; br -> 0x00429304
  004292e0: addiu  $a2, $a2, -1       
  004292e4: addiu  $a0, $a0, +1       
  004292e8: lb     $v0, +0($a0)       
  004292ec: sll $zero, $zero, 0       
  004292f0: sll $zero, $zero, 0       
  004292f4: sll $zero, $zero, 0       
  004292f8: sll $zero, $zero, 0       
  004292fc: bnel   $v0, $zero, -24       ; br -> 0x004292e8
  00429300: addiu  $a0, $a0, +1       
  00429304: lui   $v0, 0xffff0000     
  00429308: ori    $v0, $v0, -1       
  0042930c: beq    $a2, $v0, +84         ; br -> 0x00429364
  00429310: sll $zero, $zero, 0       
  00429314: lbu    $v0, +0($a1)       
  00429318: addiu  $a1, $a1, +1       
  0042931c: sb     $v0, +0($a0)       
  00429320: sll $v0, $v0, 24          
  00429324: beq    $v0, $zero, +60       ; br -> 0x00429364
  00429328: addiu  $a0, $a0, +1       
  0042932c: lui   $v1, 0xffff0000     
  00429330: ori    $v1, $v1, -1       
  00429334: sll $zero, $zero, 0       
  00429338: beql   $a2, $zero, +4        ; br -> 0x00429340
  0042933c: sb     $zero, +0($a0)     
  00429340: addiu  $a2, $a2, -1       
  00429344: beq    $a2, $v1, +28         ; br -> 0x00429364
  00429348: sll $zero, $zero, 0       
  0042934c: lbu    $v0, +0($a1)       
  00429350: addiu  $a1, $a1, +1       
  00429354: sb     $v0, +0($a0)       
  00429358: sll $v0, $v0, 24          
  0042935c: bne    $v0, $zero, -40       ; br -> 0x00429338
  00429360: addiu  $a0, $a0, +1       
  00429364: jr     $ra                
  00429368: daddu $v0, $t0, $zero     
  0042936c: sll $zero, $zero, 0       
  00429370: bne    $a2, $zero, +12       ; br -> 0x00429380
  00429374: or $v1, $a0, $a1          
  00429378: jr     $ra                
  0042937c: daddu $v0, $zero, $zero   
  00429380: andi   $v0, $v1, +7       
  00429384: bne    $v0, $zero, +356      ; br -> 0x004294ec
  00429388: daddu $v0, $a2, $zero     
  0042938c: andi   $v0, $v1, +15      
  00429390: sltiu  $a3, $a2, +16      
  00429394: ori    $t1, $zero, -32640 
  00429398: spec38  $zero,$t1,$t1     
  0042939c: ori    $t1, $t1, -32640   
  004293a0: spec38  $zero,$t1,$t1     
  004293a4: ori    $t1, $t1, -32640   
  004293a8: spec38  $zero,$t1,$t1     
  004293ac: ori    $t1, $t1, +257     
  004293b0: or $v0, $v0, $a3          
  004293b4: bne    $v0, $zero, +168      ; br -> 0x00429460
  004293b8: daddu $a3, $a0, $zero     
  004293bc: lq     $v1, +0($a0)       
  004293c0: mmi2   $t2,$t1,$t1        
  004293c4: lq     $v0, +0($a1)       
  004293c8: ori    $t0, $zero, -32640 
  004293cc: spec38  $zero,$t0,$t0     
  004293d0: ori    $t0, $t0, -32640   
  004293d4: spec38  $zero,$t0,$t0     
  004293d8: ori    $t0, $t0, -32640   
  004293dc: spec38  $zero,$t0,$t0     
  004293e0: ori    $t0, $t0, -32640   
  004293e4: mmi2   $v1,$v1,$v0        
  004293e8: mmi2   $t1,$t0,$t0        
  004293ec: mmi2   $v0,$v1,$a0        
  004293f0: daddu $t0, $a1, $zero     
  004293f4: or $v1, $v0, $v1          
  004293f8: bne    $v1, $zero, +240      ; br -> 0x004294ec
  004293fc: daddu $v0, $a2, $zero     
  00429400: addiu  $a2, $a2, -16      
  00429404: beq    $a2, $zero, -144      ; br -> 0x00429378
  00429408: sll $zero, $zero, 0       
  0042940c: lq     $v0, +0($a3)       
  00429410: mmi2   $v1,$zero,$v0      
  00429414: mmi2   $v0,$v0,$t2        
  00429418: mmi2   $v0,$v0,$v1        
  0042941c: mmi2   $v1,$v0,$t1        
  00429420: mmi2   $v0,$v1,$a0        
  00429424: or $v0, $v0, $v1          
  00429428: bne    $v0, $zero, -180      ; br -> 0x00429378
  0042942c: addiu  $a3, $a3, +16      
  00429430: sltiu  $v0, $a2, +16      
  00429434: lq     $v1, +0($a3)       
  00429438: bne    $v0, $zero, +164      ; br -> 0x004294e0
  0042943c: addiu  $t0, $t0, +16      
  00429440: lq     $v0, +0($t0)       
  00429444: mmi2   $v1,$v1,$v0        
  00429448: mmi2   $v0,$v1,$a0        
  0042944c: or $v0, $v0, $v1          
  00429450: beql   $v0, $zero, -80       ; br -> 0x00429404
  00429454: addiu  $a2, $a2, -16      
  00429458: beq    $zero, $zero, +136    ; br -> 0x004294e4
  0042945c: daddu $a0, $a3, $zero     
  00429460: sltiu  $v0, $a2, +8       
  00429464: bne    $v0, $zero, +120      ; br -> 0x004294e0
  00429468: daddu $t0, $a1, $zero     
  0042946c: ld     $v1, +0($a0)       
  00429470: ld     $v0, +0($a1)       
  00429474: bne    $v1, $v0, +116        ; br -> 0x004294ec
  00429478: daddu $v0, $a2, $zero     
  0042947c: addiu  $a2, $a2, -8       
  00429480: ori    $t2, $zero, -32640 
  00429484: spec38  $zero,$t2,$t2     
  00429488: ori    $t2, $t2, -32640   
  0042948c: spec38  $zero,$t2,$t2     
  00429490: ori    $t2, $t2, -32640   
  00429494: spec38  $zero,$t2,$t2     
  00429498: ori    $t2, $t2, -32640   
  0042949c: sll $zero, $zero, 0       
  004294a0: beq    $a2, $zero, -300      ; br -> 0x00429378
  004294a4: sll $zero, $zero, 0       
  004294a8: ld     $v0, +0($a3)       
  004294ac: nor $v1, $zero, $v0       
  004294b0: dsubu $v0, $v0, $t1       
  004294b4: and $v0, $v0, $v1         
  004294b8: and $v0, $v0, $t2         
  004294bc: bne    $v0, $zero, -328      ; br -> 0x00429378
  004294c0: addiu  $a3, $a3, +8       
  004294c4: sltiu  $v0, $a2, +8       
  004294c8: bne    $v0, $zero, +20       ; br -> 0x004294e0
  004294cc: addiu  $t0, $t0, +8       
  004294d0: ld     $v1, +0($a3)       
  004294d4: ld     $v0, +0($t0)       
  004294d8: beql   $v1, $v0, -60         ; br -> 0x004294a0
  004294dc: addiu  $a2, $a2, -8       
  004294e0: daddu $a0, $a3, $zero     
  004294e4: daddu $a1, $t0, $zero     
  004294e8: daddu $v0, $a2, $zero     
  004294ec: beq    $v0, $zero, +56       ; br -> 0x00429528
  004294f0: addiu  $a2, $a2, -1       
  004294f4: beq    $zero, $zero, +36     ; br -> 0x0042951c
  004294f8: lb     $v1, +0($a0)       
  004294fc: sll $zero, $zero, 0       
  00429500: beq    $a2, $zero, -396      ; br -> 0x00429378
  00429504: sll $zero, $zero, 0       
  00429508: beq    $a3, $zero, -404      ; br -> 0x00429378
  0042950c: addiu  $a0, $a0, +1       
  00429510: addiu  $a1, $a1, +1       
  00429514: lb     $v1, +0($a0)       
  00429518: addiu  $a2, $a2, -1       
  0042951c: lb     $v0, +0($a1)       
  00429520: beq    $v1, $v0, -36         ; br -> 0x00429500
  00429524: lbu    $a3, +0($a0)       
  00429528: lbu    $v0, +0($a1)       
  0042952c: lbu    $v1, +0($a0)       
  00429530: jr     $ra                
  00429534: subu $v0, $v1, $v0        
  00429538: daddu $t0, $a0, $zero     
  0042953c: or $a3, $a1, $a0          
  00429540: addiu  $t2, $zero, +16    
  00429544: andi   $v0, $a3, +7       
  00429548: addiu  $t1, $zero, +8     
  0042954c: bne    $v0, $zero, +352      ; br -> 0x004296b0
  00429550: andi   $v0, $a3, +15      
  00429554: movz   $t1, $t2, $v0      
  00429558: bne    $v0, $zero, +184      ; br -> 0x00429614
  0042955c: sltu $v0, $a2, $t1        
  00429560: bne    $v0, $zero, +332      ; br -> 0x004296b0
  00429564: sll $zero, $zero, 0       
  00429568: ori    $a3, $zero, -32640 
  0042956c: spec38  $zero,$a3,$a3     
  00429570: ori    $a3, $a3, -32640   
  00429574: spec38  $zero,$a3,$a3     
  00429578: ori    $a3, $a3, -32640   
  0042957c: spec38  $zero,$a3,$a3     
  00429580: ori    $a3, $a3, +257     
  00429584: lq     $v1, +0($a1)       
  00429588: mmi2   $t1,$a3,$a3        
  0042958c: mmi2   $v1,$zero,$v1      
  00429590: ori    $a3, $zero, -32640 
  00429594: spec38  $zero,$a3,$a3     
  00429598: ori    $a3, $a3, -32640   
  0042959c: spec38  $zero,$a3,$a3     
  004295a0: ori    $a3, $a3, -32640   
  004295a4: spec38  $zero,$a3,$a3     
  004295a8: ori    $a3, $a3, -32640   
  004295ac: mmi2   $v0,$v1,$t1        
  004295b0: mmi2   $t2,$a3,$a3        
  004295b4: mmi2   $v0,$v0,$v1        
  004295b8: mmi2   $v0,$v0,$t2        
  004295bc: mmi2   $v1,$v0,$a0        
  004295c0: or $v1, $v0, $v1          
  004295c4: bne    $v1, $zero, +228      ; br -> 0x004296ac
  004295c8: daddu $a3, $t0, $zero     
  004295cc: lq     $v1, +0($a1)       
  004295d0: addiu  $a2, $a2, -16      
  004295d4: addiu  $a1, $a1, +16      
  004295d8: sltiu  $v0, $a2, +16      
  004295dc: sq     $v1, +0($a3)       
  004295e0: bne    $v0, $zero, +200      ; br -> 0x004296ac
  004295e4: addiu  $a3, $a3, +16      
  004295e8: lq     $v0, +0($a1)       
  004295ec: mmi2   $v1,$zero,$v0      
  004295f0: mmi2   $v0,$v0,$t1        
  004295f4: mmi2   $v0,$v0,$v1        
  004295f8: mmi2   $v0,$v0,$t2        
  004295fc: mmi2   $v1,$v0,$a0        
  00429600: or $v0, $v0, $v1          
  00429604: beql   $v0, $zero, +112      ; br -> 0x00429678
  00429608: lq     $v1, +0($a1)       
  0042960c: beq    $zero, $zero, +160    ; br -> 0x004296b0
  00429610: daddu $a0, $a3, $zero     
  00429614: bne    $v0, $zero, +152      ; br -> 0x004296b0
  00429618: sll $zero, $zero, 0       
  0042961c: ld     $v1, +0($a1)       
  00429620: ori    $t1, $zero, -32640 
  00429624: spec38  $zero,$t1,$t1     
  00429628: ori    $t1, $t1, -32640   
  0042962c: spec38  $zero,$t1,$t1     
  00429630: ori    $t1, $t1, -32640   
  00429634: spec38  $zero,$t1,$t1     
  00429638: ori    $t1, $t1, +257     
  0042963c: ori    $t2, $zero, -32640 
  00429640: spec38  $zero,$t2,$t2     
  00429644: ori    $t2, $t2, -32640   
  00429648: spec38  $zero,$t2,$t2     
  0042964c: ori    $t2, $t2, -32640   
  00429650: spec38  $zero,$t2,$t2     
  00429654: ori    $t2, $t2, -32640   
  00429658: dsubu $v0, $v1, $t1       
  0042965c: nor $v1, $zero, $v1       
  00429660: and $v0, $v0, $v1         
  00429664: and $v0, $v0, $t2         
  00429668: bne    $v0, $zero, +64       ; br -> 0x004296ac
  0042966c: daddu $a3, $t0, $zero     
  00429670: ld     $v1, +0($a1)       
  00429674: sll $zero, $zero, 0       
  00429678: addiu  $a2, $a2, -8       
  0042967c: addiu  $a1, $a1, +8       
  00429680: sltiu  $v0, $a2, +8       
  00429684: sd     $v1, +0($a3)       
  00429688: bne    $v0, $zero, +32       ; br -> 0x004296ac
  0042968c: addiu  $a3, $a3, +8       
  00429690: ld     $v0, +0($a1)       
  00429694: nor $v1, $zero, $v0       
  00429698: dsubu $v0, $v0, $t1       
  0042969c: and $v0, $v0, $v1         
  004296a0: and $v0, $v0, $t2         
  004296a4: beql   $v0, $zero, -48       ; br -> 0x00429678
  004296a8: ld     $v1, +0($a1)       
  004296ac: daddu $a0, $a3, $zero     
  004296b0: beq    $a2, $zero, +72       ; br -> 0x004296fc
  004296b4: daddu $v0, $a2, $zero     
  004296b8: lbu    $v0, +0($a1)       
  004296bc: addiu  $a2, $a2, -1       
  004296c0: addiu  $a1, $a1, +1       
  004296c4: sb     $v0, +0($a0)       
  004296c8: sll $v0, $v0, 24          
  004296cc: bne    $v0, $zero, -32       ; br -> 0x004296b0
  004296d0: addiu  $a0, $a0, +1       
  004296d4: daddu $v0, $a2, $zero     
  004296d8: beq    $v0, $zero, +32       ; br -> 0x004296fc
  004296dc: addiu  $a2, $a2, -1       
  004296e0: sb     $zero, +0($a0)     
  004296e4: daddu $v0, $a2, $zero     
  004296e8: addiu  $a0, $a0, +1       
  004296ec: sll $zero, $zero, 0       
  004296f0: sll $zero, $zero, 0       
  004296f4: bne    $v0, $zero, -24       ; br -> 0x004296e0
  004296f8: addiu  $a2, $a2, -1       
  004296fc: jr     $ra                
  00429700: daddu $v0, $t0, $zero     
  00429704: sll $zero, $zero, 0       
