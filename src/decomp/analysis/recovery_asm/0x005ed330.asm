; 0x005ed330  FUN_005ed330  size=656  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 164 words

  005ed330: lw     $v0, +8($a0)       
  005ed334: addiu  $sp, $sp, -16      
  005ed338: sw     $a1, +12($sp)      
  005ed33c: lw     $a3, +8($v0)       
  005ed340: lw     $a0, +12($sp)      
  005ed344: lw     $a1, +8($a3)       
  005ed348: beq    $zero, $zero, +40     ; br -> 0x005ed374
  005ed34c: daddu $a2, $zero, $zero   
  005ed350: lw     $v0, +16($a3)      
  005ed354: sll $v1, $a2, 2           
  005ed358: addu $v0, $v0, $v1        
  005ed35c: lw     $v0, +0($v0)       
  005ed360: bne    $a0, $v0, +12         ; br -> 0x005ed370
  005ed364: sll $zero, $zero, 0       
  005ed368: beq    $zero, $zero, +28     ; br -> 0x005ed388
  005ed36c: slt $v0, $a2, $zero       
  005ed370: addiu  $a2, $a2, +1       
  005ed374: slt $v0, $a2, $a1         
  005ed378: bne    $v0, $zero, -44       ; br -> 0x005ed350
  005ed37c: sll $zero, $zero, 0       
  005ed380: addiu  $a2, $zero, -1     
  005ed384: slt $v0, $a2, $zero       
  005ed388: xori   $v0, $v0, +1       
  005ed38c: jr     $ra                
  005ed390: addiu  $sp, $sp, +16      
  005ed394: sll $zero, $zero, 0       
  005ed398: sll $zero, $zero, 0       
  005ed39c: sll $zero, $zero, 0       
  005ed3a0: j     0x004f2c50          
  005ed3a4: lw     $a0, +8($a0)       
  005ed3a8: sll $zero, $zero, 0       
  005ed3ac: sll $zero, $zero, 0       
  005ed3b0: addiu  $sp, $sp, -32      
  005ed3b4: daddu $v0, $a1, $zero     
  005ed3b8: sd     $ra, +0($sp)       
  005ed3bc: daddu $a3, $a2, $zero     
  005ed3c0: lw     $a1, +8($a0)       
  005ed3c4: daddu $a2, $v0, $zero     
  005ed3c8: jal   0xf04f3260             ; -> 0x004f3260
  005ed3cc: addiu  $a0, $sp, +28      
  005ed3d0: ld     $ra, +0($sp)       
  005ed3d4: jr     $ra                
  005ed3d8: addiu  $sp, $sp, +32      
  005ed3dc: sll $zero, $zero, 0       
  005ed3e0: j     0x004f3340          
  005ed3e4: lw     $a0, +8($a0)       
  005ed3e8: sll $zero, $zero, 0       
  005ed3ec: sll $zero, $zero, 0       
  005ed3f0: addiu  $sp, $sp, -32      
  005ed3f4: addiu  $t3, $zero, +1     
  005ed3f8: sd     $ra, +16($sp)      
  005ed3fc: lui   $t2, 0x3f800000     
  005ed400: sq     $s0, +0($sp)       
  005ed404: lui   $v0, 0x3f000000     
  005ed408: sw     $zero, +0($a0)     
  005ed40c: lui   $t1, 0x42340000     
  005ed410: sb     $t3, +4($a0)       
  005ed414: lui   $t0, 0x447a0000     
  005ed418: sb     $zero, +5($a0)     
  005ed41c: lui   $at, 0x006c0000     
  005ed420: sw     $zero, +8($a0)     
  005ed424: addiu  $a3, $zero, +640   
  005ed428: sw     $t2, +12($a0)      
  005ed42c: addiu  $a2, $zero, +448   
  005ed430: sw     $zero, +16($a0)    
  005ed434: addiu  $a1, $zero, -1     
  005ed438: sw     $t2, +20($a0)      
  005ed43c: addiu  $v1, $zero, +5     
  005ed440: sw     $t2, +24($a0)      
  005ed444: daddu $s0, $a0, $zero     
  005ed448: sw     $v0, +28($a0)      
  005ed44c: sw     $zero, +32($a0)    
  005ed450: addiu  $v0, $zero, +30    
  005ed454: sw     $t2, +36($a0)      
  005ed458: sw     $t2, +40($a0)      
  005ed45c: sw     $zero, +44($a0)    
  005ed460: sw     $zero, +48($a0)    
  005ed464: sw     $t2, +52($a0)      
  005ed468: lwc1   $zero, -32704($gp) 
  005ed46c: swc1   $zero, +56($a0)    
  005ed470: sb     $t3, +60($a0)      
  005ed474: sw     $t1, +64($a0)      
  005ed478: sb     $t3, +68($a0)      
  005ed47c: lwc1   $zero, -32596($gp) 
  005ed480: swc1   $zero, +72($a0)    
  005ed484: sw     $t0, +76($a0)      
  005ed488: lwc1   $zero, +8744($at)     ; GLOBAL 0x006c2228
  005ed48c: swc1   $zero, +80($a0)    
  005ed490: lui   $at, 0x006c0000     
  005ed494: lwc1   $zero, +8748($at)     ; GLOBAL 0x006c222c
  005ed498: swc1   $zero, +84($a0)    
  005ed49c: lui   $at, 0x006c0000     
  005ed4a0: lwc1   $zero, +8752($at)     ; GLOBAL 0x006c2230
  005ed4a4: swc1   $zero, +88($a0)    
  005ed4a8: lui   $at, 0x006c0000     
  005ed4ac: sb     $t3, +92($a0)      
  005ed4b0: sb     $zero, +93($a0)    
  005ed4b4: sb     $zero, +94($a0)    
  005ed4b8: sb     $zero, +95($a0)    
  005ed4bc: sb     $zero, +96($a0)    
  005ed4c0: sw     $t2, +100($a0)     
  005ed4c4: sw     $t2, +104($a0)     
  005ed4c8: sw     $t2, +108($a0)     
  005ed4cc: sw     $t2, +112($a0)     
  005ed4d0: sw     $t2, +116($a0)     
  005ed4d4: sw     $t2, +120($a0)     
  005ed4d8: sw     $t2, +124($a0)     
  005ed4dc: sw     $t2, +128($a0)     
  005ed4e0: lwc1   $zero, +9024($at)     ; GLOBAL 0x006c2340
  005ed4e4: swc1   $zero, +132($a0)   
  005ed4e8: lui   $at, 0x006c0000     
  005ed4ec: lwc1   $zero, +9028($at)     ; GLOBAL 0x006c2344
  005ed4f0: swc1   $zero, +136($a0)   
  005ed4f4: lui   $at, 0x006c0000     
  005ed4f8: lwc1   $zero, +9032($at)     ; GLOBAL 0x006c2348
  005ed4fc: swc1   $zero, +140($a0)   
  005ed500: lui   $at, 0x006c0000     
  005ed504: lwc1   $zero, +9036($at)     ; GLOBAL 0x006c234c
  005ed508: swc1   $zero, +144($a0)   
  005ed50c: lwc1   $zero, -32700($gp) 
  005ed510: swc1   $zero, +148($a0)   
  005ed514: lwc1   $zero, -32700($gp) 
  005ed518: swc1   $zero, +152($a0)   
  005ed51c: lwc1   $zero, -32700($gp) 
  005ed520: swc1   $zero, +156($a0)   
  005ed524: sw     $t2, +160($a0)     
  005ed528: sb     $zero, +164($a0)   
  005ed52c: sb     $zero, +165($a0)   
  005ed530: sb     $zero, +166($a0)   
  005ed534: sb     $zero, +167($a0)   
  005ed538: sb     $zero, +168($a0)   
  005ed53c: sb     $zero, +169($a0)   
  005ed540: lwc1   $zero, -32596($gp) 
  005ed544: swc1   $zero, +172($a0)   
  005ed548: sw     $zero, +176($a0)   
  005ed54c: sb     $t3, +180($a0)     
  005ed550: sb     $zero, +181($a0)   
  005ed554: sb     $zero, +182($a0)   
  005ed558: sw     $a3, +184($a0)     
  005ed55c: sw     $a2, +188($a0)     
  005ed560: sw     $zero, +192($a0)   
  005ed564: sw     $a1, +196($a0)     
  005ed568: sw     $a1, +200($a0)     
  005ed56c: sw     $a1, +204($a0)     
  005ed570: sw     $a1, +208($a0)     
  005ed574: sb     $t3, +212($a0)     
  005ed578: sb     $t3, +213($a0)     
  005ed57c: sb     $t3, +214($a0)     
  005ed580: sb     $zero, +215($a0)   
  005ed584: sb     $zero, +216($a0)   
  005ed588: sw     $v1, +220($a0)     
  005ed58c: sw     $v0, +224($a0)     
  005ed590: sb     $zero, +228($a0)   
  005ed594: sb     $zero, +229($a0)   
  005ed598: sw     $zero, +232($a0)   
  005ed59c: jal   0xf05ed5c0             ; -> 0x005ed5c0
  005ed5a0: sw     $zero, +236($a0)   
  005ed5a4: daddu $v0, $s0, $zero     
  005ed5a8: ld     $ra, +16($sp)      
  005ed5ac: lq     $s0, +0($sp)       
  005ed5b0: jr     $ra                
  005ed5b4: addiu  $sp, $sp, +32      
  005ed5b8: sll $zero, $zero, 0       
  005ed5bc: sll $zero, $zero, 0       

; globals: 0x006c2228(x1), 0x006c222c(x1), 0x006c2230(x1), 0x006c2340(x1), 0x006c2344(x1), 0x006c2348(x1), 0x006c234c(x1)
