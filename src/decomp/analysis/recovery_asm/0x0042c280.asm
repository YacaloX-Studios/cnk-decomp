; 0x0042c280  FUN_0042c280  size=832  status=real_logic
; evidence: args=a0=int;a1=ptr;a2=int;a3=ptr ret=int calls=0x00428df8;0x00429068
; 208 words

  0042c280: addiu  $sp, $sp, -112     
  0042c284: sq     $s3, +64($sp)      
  0042c288: sq     $s4, +80($sp)      
  0042c28c: daddu $s3, $sp, $zero     
  0042c290: sq     $s2, +48($sp)      
  0042c294: daddu $s4, $a3, $zero     
  0042c298: sq     $s1, +32($sp)      
  0042c29c: daddu $s2, $t0, $zero     
  0042c2a0: sq     $s0, +16($sp)      
  0042c2a4: daddu $s1, $a0, $zero     
  0042c2a8: sq     $ra, +96($sp)      
  0042c2ac: daddu $s0, $a2, $zero     
  0042c2b0: beq    $s0, $zero, +12       ; br -> 0x0042c2c0
  0042c2b4: movn   $s3, $a1, $a1      
  0042c2b8: beq    $s4, $zero, +736      ; br -> 0x0042c59c
  0042c2bc: addiu  $v0, $zero, -1     
  0042c2c0: lw     $a0, +52($s1)      
  0042c2c4: beq    $a0, $zero, +700      ; br -> 0x0042c584
  0042c2c8: sll $zero, $zero, 0       
  0042c2cc: jal   0xf0429068             ; -> 0x00429068
  0042c2d0: sll $zero, $zero, 0       
  0042c2d4: sltiu  $v0, $v0, +2       
  0042c2d8: bne    $v0, $zero, +680      ; br -> 0x0042c584
  0042c2dc: lui   $a1, 0x006a0000     
  0042c2e0: lw     $a0, +52($s1)      
  0042c2e4: jal   0xf0428df8             ; -> 0x00428df8
  0042c2e8: addiu  $a1, $a1, +18944   
  0042c2ec: bnel   $v0, $zero, +104      ; br -> 0x0042c358
  0042c2f0: lui   $a1, 0x006a0000     
  0042c2f4: lbu    $v1, +0($s0)       
  0042c2f8: beq    $s0, $zero, +672      ; br -> 0x0042c59c
  0042c2fc: daddu $v0, $zero, $zero   
  0042c300: addiu  $v0, $v1, -129     
  0042c304: sltiu  $v0, $v0, +31      
  0042c308: bne    $v0, $zero, +20       ; br -> 0x0042c320
  0042c30c: sltiu  $v0, $s4, +2       
  0042c310: addiu  $v0, $v1, -224     
  0042c314: sltiu  $v0, $v0, +16      
  0042c318: beq    $v0, $zero, +616      ; br -> 0x0042c584
  0042c31c: sltiu  $v0, $s4, +2       
  0042c320: beq    $v0, $zero, +12       ; br -> 0x0042c330
  0042c324: lbu    $a2, +1($s0)       
  0042c328: beq    $zero, $zero, +624    ; br -> 0x0042c59c
  0042c32c: addiu  $v0, $zero, -1     
  0042c330: addiu  $v0, $a2, -64      
  0042c334: sltiu  $v0, $v0, +63      
  0042c338: bne    $v0, $zero, +100      ; br -> 0x0042c3a0
  0042c33c: sll $v1, $v1, 8           
  0042c340: addiu  $v0, $a2, -128     
  0042c344: sltiu  $v0, $v0, +125     
  0042c348: bne    $v0, $zero, +88       ; br -> 0x0042c3a4
  0042c34c: addiu  $v0, $zero, +2     
  0042c350: beq    $zero, $zero, +584    ; br -> 0x0042c59c
  0042c354: addiu  $v0, $zero, -1     
  0042c358: lw     $a0, +52($s1)      
  0042c35c: jal   0xf0428df8             ; -> 0x00428df8
  0042c360: addiu  $a1, $a1, +18952   
  0042c364: bnel   $v0, $zero, +72       ; br -> 0x0042c3b0
  0042c368: lui   $a1, 0x006a0000     
  0042c36c: lbu    $v1, +0($s0)       
  0042c370: beq    $s0, $zero, +552      ; br -> 0x0042c59c
  0042c374: daddu $v0, $zero, $zero   
  0042c378: addiu  $v0, $v1, -161     
  0042c37c: sltiu  $v0, $v0, +94      
  0042c380: beq    $v0, $zero, +512      ; br -> 0x0042c584
  0042c384: sltiu  $v0, $s4, +2       
  0042c388: bne    $v0, $zero, -100      ; br -> 0x0042c328
  0042c38c: lbu    $a2, +1($s0)       
  0042c390: addiu  $v0, $a2, -161     
  0042c394: sltiu  $v0, $v0, +94      
  0042c398: beq    $v0, $zero, -116      ; br -> 0x0042c328
  0042c39c: sll $v1, $v1, 8           
  0042c3a0: addiu  $v0, $zero, +2     
  0042c3a4: addu $v1, $v1, $a2        
  0042c3a8: beq    $zero, $zero, +496    ; br -> 0x0042c59c
  0042c3ac: sw     $v1, +0($s3)       
  0042c3b0: lw     $a0, +52($s1)      
  0042c3b4: jal   0xf0428df8             ; -> 0x00428df8
  0042c3b8: addiu  $a1, $a1, +18960   
  0042c3bc: bne    $v0, $zero, +452      ; br -> 0x0042c584
  0042c3c0: sll $zero, $zero, 0       
  0042c3c4: bnel   $s0, $zero, +16       ; br -> 0x0042c3d8
  0042c3c8: lw     $v0, +0($s2)       
  0042c3cc: sw     $zero, +0($s2)     
  0042c3d0: beq    $zero, $zero, +456    ; br -> 0x0042c59c
  0042c3d4: addiu  $v0, $zero, +1     
  0042c3d8: addiu  $t1, $zero, +3     
  0042c3dc: daddu $a3, $s0, $zero     
  0042c3e0: daddu $a2, $zero, $zero   
  0042c3e4: beq    $s4, $zero, -192      ; br -> 0x0042c328
  0042c3e8: movz   $t1, $zero, $v0    
  0042c3ec: addu $v0, $s0, $a2        
  0042c3f0: addiu  $v1, $zero, +40    
  0042c3f4: lbu    $a0, +0($v0)       
  0042c3f8: beq    $a0, $v1, +144        ; br -> 0x0042c48c
  0042c3fc: daddu $t0, $v0, $zero     
  0042c400: slti   $v0, $a0, +41      
  0042c404: beq    $v0, $zero, +52       ; br -> 0x0042c43c
  0042c408: addiu  $v0, $zero, +27    
  0042c40c: beq    $a0, $v0, +100        ; br -> 0x0042c474
  0042c410: slti   $v0, $a0, +28      
  0042c414: beq    $v0, $zero, +20       ; br -> 0x0042c42c
  0042c418: addiu  $v0, $zero, +36    
  0042c41c: beq    $a0, $zero, +132      ; br -> 0x0042c4a4
  0042c420: addiu  $v0, $a0, -33      
  0042c424: beq    $zero, $zero, +132    ; br -> 0x0042c4ac
  0042c428: addiu  $v1, $zero, +93    
  0042c42c: beq    $a0, $v0, +76         ; br -> 0x0042c47c
  0042c430: addiu  $v0, $a0, -33      
  0042c434: beq    $zero, $zero, +116    ; br -> 0x0042c4ac
  0042c438: addiu  $v1, $zero, +93    
  0042c43c: addiu  $v0, $zero, +66    
  0042c440: beq    $a0, $v0, +80         ; br -> 0x0042c494
  0042c444: slti   $v0, $a0, +67      
  0042c448: beq    $v0, $zero, +20       ; br -> 0x0042c460
  0042c44c: addiu  $v0, $zero, +64    
  0042c450: beq    $a0, $v0, +48         ; br -> 0x0042c484
  0042c454: addiu  $v0, $a0, -33      
  0042c458: beq    $zero, $zero, +80     ; br -> 0x0042c4ac
  0042c45c: addiu  $v1, $zero, +93    
  0042c460: addiu  $v0, $zero, +74    
  0042c464: beq    $a0, $v0, +52         ; br -> 0x0042c49c
  0042c468: addiu  $v0, $a0, -33      
  0042c46c: beq    $zero, $zero, +60     ; br -> 0x0042c4ac
  0042c470: addiu  $v1, $zero, +93    
  0042c474: beq    $zero, $zero, +68     ; br -> 0x0042c4bc
  0042c478: daddu $a0, $zero, $zero   
  0042c47c: beq    $zero, $zero, +60     ; br -> 0x0042c4bc
  0042c480: addiu  $a0, $zero, +1     
  0042c484: beq    $zero, $zero, +52     ; br -> 0x0042c4bc
  0042c488: addiu  $a0, $zero, +3     
  0042c48c: beq    $zero, $zero, +44     ; br -> 0x0042c4bc
  0042c490: addiu  $a0, $zero, +2     
  0042c494: beq    $zero, $zero, +36     ; br -> 0x0042c4bc
  0042c498: addiu  $a0, $zero, +4     
  0042c49c: beq    $zero, $zero, +28     ; br -> 0x0042c4bc
  0042c4a0: addiu  $a0, $zero, +5     
  0042c4a4: beq    $zero, $zero, +20     ; br -> 0x0042c4bc
  0042c4a8: addiu  $a0, $zero, +6     
  0042c4ac: sltu $v1, $v1, $v0        
  0042c4b0: addiu  $a0, $zero, +8     
  0042c4b4: addiu  $v0, $zero, +7     
  0042c4b8: movz   $a0, $v0, $v1      
  0042c4bc: addiu  $a1, $zero, +36    
  0042c4c0: sll $a0, $a0, 2           
  0042c4c4: mult   $a1, $t1, +0       
  0042c4c8: lui   $v1, 0x00650000     
  0042c4cc: addiu  $v1, $v1, +31000   
  0042c4d0: lui   $v0, 0x00650000     
  0042c4d4: addiu  $v0, $v0, +30568   
  0042c4d8: addu $a0, $a0, $a1        
  0042c4dc: addu $v1, $a0, $v1        
  0042c4e0: lw     $v1, +0($v1)          ; GLOBAL 0x00650000
  0042c4e4: addu $a0, $a0, $v0        
  0042c4e8: sltiu  $v0, $v1, +8       
  0042c4ec: beq    $v0, $zero, -456      ; br -> 0x0042c328
  0042c4f0: lw     $t1, +0($a0)       
  0042c4f4: lui   $v0, 0x006a0000     
  0042c4f8: sll $v1, $v1, 2           
  0042c4fc: addiu  $v0, $v0, +18976   
  0042c500: addu $v1, $v1, $v0        
  0042c504: lw     $a0, +0($v1)          ; GLOBAL 0x00650000
  0042c508: jr     $a0                
  0042c50c: sll $zero, $zero, 0       
  0042c510: sw     $zero, +0($s2)     
  0042c514: daddu $v0, $a2, $zero     
  0042c518: beq    $zero, $zero, +128    ; br -> 0x0042c59c
  0042c51c: sw     $zero, +0($s3)     
  0042c520: sw     $zero, +0($s2)     
  0042c524: addiu  $v0, $a2, +1       
  0042c528: lbu    $v1, +0($a3)       
  0042c52c: beq    $zero, $zero, +108    ; br -> 0x0042c59c
  0042c530: sw     $v1, +0($s3)       
  0042c534: sw     $zero, +0($s2)     
  0042c538: beq    $zero, $zero, +20     ; br -> 0x0042c550
  0042c53c: addiu  $v0, $a2, +1       
  0042c540: addiu  $v1, $zero, +1     
  0042c544: subu $v0, $a3, $s0        
  0042c548: sw     $v1, +0($s2)       
  0042c54c: addiu  $v0, $v0, +2       
  0042c550: lbu    $v1, +0($a3)       
  0042c554: lbu    $a0, +1($a3)       
  0042c558: sll $v1, $v1, 8           
  0042c55c: addu $v1, $v1, $a0        
  0042c560: beq    $zero, $zero, +56     ; br -> 0x0042c59c
  0042c564: sw     $v1, +0($s3)       
  0042c568: addiu  $a3, $t0, +1       
  0042c56c: addiu  $a2, $a2, +1       
  0042c570: sltu $v0, $a2, $s4        
  0042c574: bne    $v0, $zero, -392      ; br -> 0x0042c3f0
  0042c578: addu $v0, $s0, $a2        
  0042c57c: beq    $zero, $zero, +28     ; br -> 0x0042c59c
  0042c580: addiu  $v0, $zero, -1     
  0042c584: beql   $s0, $zero, +20       ; br -> 0x0042c59c
  0042c588: daddu $v0, $zero, $zero   
  0042c58c: lbu    $v0, +0($s0)       
  0042c590: sw     $v0, +0($s3)       
  0042c594: lbu    $v0, +0($s0)       
  0042c598: sltu $v0, $zero, $v0      
  0042c59c: lq     $ra, +96($sp)      
  0042c5a0: lq     $s4, +80($sp)      
  0042c5a4: lq     $s3, +64($sp)      
  0042c5a8: lq     $s2, +48($sp)      
  0042c5ac: lq     $s1, +32($sp)      
  0042c5b0: lq     $s0, +16($sp)      
  0042c5b4: jr     $ra                
  0042c5b8: addiu  $sp, $sp, +112     
  0042c5bc: sll $zero, $zero, 0       

; globals: 0x00650000(x2)
