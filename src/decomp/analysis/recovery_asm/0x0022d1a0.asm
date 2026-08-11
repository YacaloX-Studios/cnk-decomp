; 0x0022d1a0  FUN_0022d1a0  size=1552  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=w ret=void calls=
; 388 words

  0022d1a0: addiu  $sp, $sp, -192     
  0022d1a4: lw     $a1, +24($a1)      
  0022d1a8: addiu  $v1, $zero, +3     
  0022d1ac: beq    $a1, $v1, +260        ; br -> 0x0022d2b4
  0022d1b0: sll    $zero, $zero, +0   
  0022d1b4: addiu  $v1, $zero, +4     
  0022d1b8: beq    $a1, $v1, +248        ; br -> 0x0022d2b4
  0022d1bc: sll    $zero, $zero, +0   
  0022d1c0: addiu  $v1, $zero, +2     
  0022d1c4: beq    $a1, $v1, +28         ; br -> 0x0022d1e4
  0022d1c8: addiu  $v1, $zero, +1     
  0022d1cc: addiu  $v1, $zero, +1     
  0022d1d0: beq    $a1, $v1, +12         ; br -> 0x0022d1e0
  0022d1d4: sll    $zero, $zero, +0   
  0022d1d8: beq    $zero, $zero, +764    ; br -> 0x0022d4d8
  0022d1dc: sll    $zero, $zero, +0   
  0022d1e0: addiu  $v1, $zero, +1     
  0022d1e4: beq    $a2, $v1, +108        ; br -> 0x0022d254
  0022d1e8: sll    $zero, $zero, +0   
  0022d1ec: beq    $a2, $zero, +12       ; br -> 0x0022d1fc
  0022d1f0: sll    $zero, $zero, +0   
  0022d1f4: beq    $zero, $zero, +188    ; br -> 0x0022d2b4
  0022d1f8: sll    $zero, $zero, +0   
  0022d1fc: beq    $t0, $zero, +36       ; br -> 0x0022d224
  0022d200: lui   $v1, 0x43610000     
  0022d204: lui   $v1, 0xc37a0000     
  0022d208: sw     $zero, +184($sp)   
  0022d20c: sw     $v1, +176($sp)     
  0022d210: lui   $v1, 0x42fa0000     
  0022d214: sw     $v1, +180($sp)     
  0022d218: beq    $zero, $zero, +28     ; br -> 0x0022d238
  0022d21c: addiu  $v1, $sp, +176     
  0022d220: lui   $v1, 0x43610000     
  0022d224: sw     $zero, +168($sp)   
  0022d228: sw     $v1, +160($sp)     
  0022d22c: lui   $v1, 0x42fa0000     
  0022d230: sw     $v1, +164($sp)     
  0022d234: addiu  $v1, $sp, +160     
  0022d238: lwc1   $zero, +0($v1)        ; GLOBAL 0x42fa0000
  0022d23c: swc1   $zero, +0($a0)     
  0022d240: lwc1   $zero, +4($v1)        ; GLOBAL 0x42fa0004
  0022d244: swc1   $zero, +4($a0)     
  0022d248: lwc1   $zero, +8($v1)        ; GLOBAL 0x42fa0008
  0022d24c: beq    $zero, $zero, +684    ; br -> 0x0022d4fc
  0022d250: swc1   $zero, +8($a0)     
  0022d254: beq    $t0, $zero, +40       ; br -> 0x0022d280
  0022d258: lui   $v1, 0x43610000     
  0022d25c: lui   $v1, 0xc37a0000     
  0022d260: sw     $zero, +152($sp)   
  0022d264: sw     $v1, +144($sp)     
  0022d268: addiu  $a1, $sp, +144     
  0022d26c: lui   $v1, 0x43a20000     
  0022d270: ori    $v1, $v1, -32768   
  0022d274: beq    $zero, $zero, +32     ; br -> 0x0022d298
  0022d278: sw     $v1, +148($sp)     
  0022d27c: lui   $v1, 0x43610000     
  0022d280: sw     $zero, +136($sp)   
  0022d284: sw     $v1, +128($sp)     
  0022d288: addiu  $a1, $sp, +128     
  0022d28c: lui   $v1, 0x43a20000     
  0022d290: ori    $v1, $v1, -32768   
  0022d294: sw     $v1, +132($sp)     
  0022d298: lwc1   $zero, +0($a1)     
  0022d29c: swc1   $zero, +0($a0)     
  0022d2a0: lwc1   $zero, +4($a1)     
  0022d2a4: swc1   $zero, +4($a0)     
  0022d2a8: lwc1   $zero, +8($a1)     
  0022d2ac: beq    $zero, $zero, +588    ; br -> 0x0022d4fc
  0022d2b0: swc1   $zero, +8($a0)     
  0022d2b4: lui   $v1, 0x006f0000     
  0022d2b8: addiu  $a1, $zero, +4     
  0022d2bc: lw     $v1, +13752($v1)      ; GLOBAL 0x006f35b8
  0022d2c0: lw     $a3, +76($v1)         ; GLOBAL 0x006f004c
  0022d2c4: beq    $a3, $a1, +56         ; br -> 0x0022d300
  0022d2c8: addiu  $a1, $zero, +3     
  0022d2cc: addiu  $v1, $zero, +3     
  0022d2d0: beq    $a3, $v1, +40         ; br -> 0x0022d2fc
  0022d2d4: sll    $zero, $zero, +0   
  0022d2d8: addiu  $v1, $zero, +2     
  0022d2dc: beq    $a3, $v1, +20         ; br -> 0x0022d2f4
  0022d2e0: dsubu  $zero, $a2, +0     
  0022d2e4: addiu  $v1, $zero, +1     
  0022d2e8: beq    $zero, $zero, +72     ; br -> 0x0022d334
  0022d2ec: dsubu  $zero, $zero, +0   
  0022d2f0: dsubu  $zero, $a2, +0     
  0022d2f4: beq    $zero, $zero, +64     ; br -> 0x0022d338
  0022d2f8: addiu  $v1, $zero, +3     
  0022d2fc: addiu  $a1, $zero, +3     
  0022d300: beq    $a2, $a1, +44         ; br -> 0x0022d330
  0022d304: sll    $zero, $zero, +0   
  0022d308: addiu  $v1, $zero, +2     
  0022d30c: beq    $a2, $v1, +24         ; br -> 0x0022d328
  0022d310: sll    $zero, $zero, +0   
  0022d314: addiu  $v1, $zero, +1     
  0022d318: beq    $a2, $v1, +24         ; br -> 0x0022d334
  0022d31c: sll    $zero, $zero, +0   
  0022d320: beq    $zero, $zero, +16     ; br -> 0x0022d334
  0022d324: dsubu  $zero, $zero, +0   
  0022d328: beq    $zero, $zero, +8      ; br -> 0x0022d334
  0022d32c: addiu  $a1, $zero, +1     
  0022d330: addiu  $a1, $zero, +2     
  0022d334: addiu  $v1, $zero, +3     
  0022d338: beq    $a1, $v1, +324        ; br -> 0x0022d480
  0022d33c: sll    $zero, $zero, +0   
  0022d340: addiu  $v1, $zero, +2     
  0022d344: beq    $a1, $v1, +216        ; br -> 0x0022d420
  0022d348: sll    $zero, $zero, +0   
  0022d34c: addiu  $v1, $zero, +1     
  0022d350: beq    $a1, $v1, +108        ; br -> 0x0022d3c0
  0022d354: sll    $zero, $zero, +0   
  0022d358: beq    $a1, $zero, +12       ; br -> 0x0022d368
  0022d35c: sll    $zero, $zero, +0   
  0022d360: beq    $zero, $zero, +372    ; br -> 0x0022d4d8
  0022d364: sll    $zero, $zero, +0   
  0022d368: beq    $t0, $zero, +36       ; br -> 0x0022d390
  0022d36c: lui   $v1, 0x43020000     
  0022d370: lui   $v1, 0xc37a0000     
  0022d374: sw     $zero, +120($sp)   
  0022d378: sw     $v1, +112($sp)     
  0022d37c: lui   $v1, 0x42fa0000     
  0022d380: sw     $v1, +116($sp)     
  0022d384: beq    $zero, $zero, +28     ; br -> 0x0022d3a4
  0022d388: addiu  $v1, $sp, +112     
  0022d38c: lui   $v1, 0x43020000     
  0022d390: sw     $zero, +104($sp)   
  0022d394: sw     $v1, +96($sp)      
  0022d398: lui   $v1, 0x42fa0000     
  0022d39c: sw     $v1, +100($sp)     
  0022d3a0: addiu  $v1, $sp, +96      
  0022d3a4: lwc1   $zero, +0($v1)        ; GLOBAL 0x42fa0000
  0022d3a8: swc1   $zero, +0($a0)     
  0022d3ac: lwc1   $zero, +4($v1)        ; GLOBAL 0x42fa0004
  0022d3b0: swc1   $zero, +4($a0)     
  0022d3b4: lwc1   $zero, +8($v1)        ; GLOBAL 0x42fa0008
  0022d3b8: beq    $zero, $zero, +320    ; br -> 0x0022d4fc
  0022d3bc: swc1   $zero, +8($a0)     
  0022d3c0: beq    $t0, $zero, +40       ; br -> 0x0022d3ec
  0022d3c4: lui   $v1, 0x43020000     
  0022d3c8: lui   $v1, 0xc37a0000     
  0022d3cc: sw     $zero, +88($sp)    
  0022d3d0: sw     $v1, +80($sp)      
  0022d3d4: addiu  $a1, $sp, +80      
  0022d3d8: lui   $v1, 0x43a20000     
  0022d3dc: ori    $v1, $v1, -32768   
  0022d3e0: beq    $zero, $zero, +32     ; br -> 0x0022d404
  0022d3e4: sw     $v1, +84($sp)      
  0022d3e8: lui   $v1, 0x43020000     
  0022d3ec: sw     $zero, +72($sp)    
  0022d3f0: sw     $v1, +64($sp)      
  0022d3f4: addiu  $a1, $sp, +64      
  0022d3f8: lui   $v1, 0x43a20000     
  0022d3fc: ori    $v1, $v1, -32768   
  0022d400: sw     $v1, +68($sp)      
  0022d404: lwc1   $zero, +0($a1)     
  0022d408: swc1   $zero, +0($a0)     
  0022d40c: lwc1   $zero, +4($a1)     
  0022d410: swc1   $zero, +4($a0)     
  0022d414: lwc1   $zero, +8($a1)     
  0022d418: beq    $zero, $zero, +224    ; br -> 0x0022d4fc
  0022d41c: swc1   $zero, +8($a0)     
  0022d420: beq    $t0, $zero, +40       ; br -> 0x0022d44c
  0022d424: lui   $v1, 0x43aa0000     
  0022d428: lui   $v1, 0x44480000     
  0022d42c: sw     $zero, +56($sp)    
  0022d430: sw     $v1, +48($sp)      
  0022d434: addiu  $a1, $sp, +48      
  0022d438: lui   $v1, 0x43a20000     
  0022d43c: ori    $v1, $v1, -32768   
  0022d440: beq    $zero, $zero, +32     ; br -> 0x0022d464
  0022d444: sw     $v1, +52($sp)      
  0022d448: lui   $v1, 0x43aa0000     
  0022d44c: sw     $zero, +40($sp)    
  0022d450: sw     $v1, +32($sp)      
  0022d454: addiu  $a1, $sp, +32      
  0022d458: lui   $v1, 0x43a20000     
  0022d45c: ori    $v1, $v1, -32768   
  0022d460: sw     $v1, +36($sp)      
  0022d464: lwc1   $zero, +0($a1)     
  0022d468: swc1   $zero, +0($a0)     
  0022d46c: lwc1   $zero, +4($a1)     
  0022d470: swc1   $zero, +4($a0)     
  0022d474: lwc1   $zero, +8($a1)     
  0022d478: beq    $zero, $zero, +128    ; br -> 0x0022d4fc
  0022d47c: swc1   $zero, +8($a0)     
  0022d480: beq    $t0, $zero, +36       ; br -> 0x0022d4a8
  0022d484: lui   $v1, 0x43aa0000     
  0022d488: lui   $v1, 0x44480000     
  0022d48c: sw     $zero, +24($sp)    
  0022d490: sw     $v1, +16($sp)      
  0022d494: lui   $v1, 0x42fa0000     
  0022d498: sw     $v1, +20($sp)      
  0022d49c: beq    $zero, $zero, +28     ; br -> 0x0022d4bc
  0022d4a0: addiu  $v1, $sp, +16      
  0022d4a4: lui   $v1, 0x43aa0000     
  0022d4a8: sw     $zero, +8($sp)     
  0022d4ac: sw     $v1, +0($sp)       
  0022d4b0: lui   $v1, 0x42fa0000     
  0022d4b4: sw     $v1, +4($sp)       
  0022d4b8: addiu  $v1, $sp, +0       
  0022d4bc: lwc1   $zero, +0($v1)        ; GLOBAL 0x42fa0000
  0022d4c0: swc1   $zero, +0($a0)     
  0022d4c4: lwc1   $zero, +4($v1)        ; GLOBAL 0x42fa0004
  0022d4c8: swc1   $zero, +4($a0)     
  0022d4cc: lwc1   $zero, +8($v1)        ; GLOBAL 0x42fa0008
  0022d4d0: beq    $zero, $zero, +40     ; br -> 0x0022d4fc
  0022d4d4: swc1   $zero, +8($a0)     
  0022d4d8: fmove  $zero,$a0,$a2      
  0022d4dc: lui   $v1, 0x42c80000     
  0022d4e0: fmove  $zero,$a0,$v1      
  0022d4e4: sll    $zero, $zero, +0   
  0022d4e8: f14.20 $zero,$s4,$zero    
  0022d4ec: f10.2  $at,$s0,$zero      
  0022d4f0: swc1   $zero, +0($a0)     
  0022d4f4: swc1   $zero, +4($a0)     
  0022d4f8: sw     $zero, +8($a0)     
  0022d4fc: jr     $ra                
  0022d500: addiu  $sp, $sp, +192     
  0022d504: sll    $zero, $zero, +0   
  0022d508: sll    $zero, $zero, +0   
  0022d50c: sll    $zero, $zero, +0   
  0022d510: lw     $a1, +24($a1)      
  0022d514: addiu  $v1, $zero, +2     
  0022d518: beq    $a1, $v1, +72         ; br -> 0x0022d564
  0022d51c: sll    $zero, $zero, +0   
  0022d520: addiu  $v1, $zero, +3     
  0022d524: beq    $a1, $v1, +60         ; br -> 0x0022d564
  0022d528: sll    $zero, $zero, +0   
  0022d52c: addiu  $v1, $zero, +4     
  0022d530: beq    $a1, $v1, +48         ; br -> 0x0022d564
  0022d534: sll    $zero, $zero, +0   
  0022d538: addiu  $v1, $zero, +1     
  0022d53c: beq    $a1, $v1, +12         ; br -> 0x0022d54c
  0022d540: sll    $zero, $zero, +0   
  0022d544: beq    $zero, $zero, +572    ; br -> 0x0022d784
  0022d548: sll    $zero, $zero, +0   
  0022d54c: lui   $a1, 0x42a00000     
  0022d550: lui   $v1, 0x43c30000     
  0022d554: sw     $a1, +0($a0)       
  0022d558: sw     $v1, +4($a0)       
  0022d55c: beq    $zero, $zero, +584    ; br -> 0x0022d7a8
  0022d560: sw     $zero, +8($a0)     
  0022d564: lui   $v1, 0x006f0000     
  0022d568: addiu  $a1, $zero, +4     
  0022d56c: lw     $v1, +13752($v1)      ; GLOBAL 0x006f35b8
  0022d570: lw     $t0, +76($v1)         ; GLOBAL 0x006f004c
  0022d574: beq    $t0, $a1, +48         ; br -> 0x0022d5a8
  0022d578: sll    $zero, $zero, +0   
  0022d57c: addiu  $v1, $zero, +3     
  0022d580: beq    $t0, $v1, +36         ; br -> 0x0022d5a8
  0022d584: sll    $zero, $zero, +0   
  0022d588: addiu  $v1, $zero, +2     
  0022d58c: beq    $t0, $v1, +16         ; br -> 0x0022d5a0
  0022d590: sll    $zero, $zero, +0   
  0022d594: addiu  $v1, $zero, +1     
  0022d598: beq    $zero, $zero, +68     ; br -> 0x0022d5e0
  0022d59c: dsubu  $zero, $zero, +0   
  0022d5a0: beq    $zero, $zero, +60     ; br -> 0x0022d5e0
  0022d5a4: dsubu  $zero, $a2, +0     
  0022d5a8: addiu  $t0, $zero, +3     
  0022d5ac: beq    $a2, $t0, +44         ; br -> 0x0022d5dc
  0022d5b0: sll    $zero, $zero, +0   
  0022d5b4: addiu  $v1, $zero, +2     
  0022d5b8: beq    $a2, $v1, +24         ; br -> 0x0022d5d4
  0022d5bc: sll    $zero, $zero, +0   
  0022d5c0: addiu  $v1, $zero, +1     
  0022d5c4: beq    $a2, $v1, +28         ; br -> 0x0022d5e4
  0022d5c8: addiu  $a1, $zero, +2     
  0022d5cc: beq    $zero, $zero, +16     ; br -> 0x0022d5e0
  0022d5d0: dsubu  $zero, $zero, +0   
  0022d5d4: beq    $zero, $zero, +8      ; br -> 0x0022d5e0
  0022d5d8: addiu  $t0, $zero, +1     
  0022d5dc: addiu  $t0, $zero, +2     
  0022d5e0: addiu  $a1, $zero, +2     
  0022d5e4: beq    $t0, $a1, +316        ; br -> 0x0022d724
  0022d5e8: sll    $zero, $zero, +0   
  0022d5ec: addiu  $v1, $zero, +3     
  0022d5f0: beq    $t0, $v1, +208        ; br -> 0x0022d6c4
  0022d5f4: sll    $zero, $zero, +0   
  0022d5f8: addiu  $v1, $zero, +1     
  0022d5fc: beq    $t0, $v1, +108        ; br -> 0x0022d66c
  0022d600: sll    $zero, $zero, +0   
  0022d604: beq    $t0, $zero, +12       ; br -> 0x0022d614
  0022d608: sll    $zero, $zero, +0   
  0022d60c: beq    $zero, $zero, +372    ; br -> 0x0022d784
  0022d610: sll    $zero, $zero, +0   
  0022d614: beq    $a3, $a1, +60         ; br -> 0x0022d654
  0022d618: sll    $zero, $zero, +0   
  0022d61c: beq    $a3, $zero, +32       ; br -> 0x0022d640
  0022d620: lui   $a1, 0xc2c80000     
  0022d624: lui   $a1, 0x42a00000     
  0022d628: lui   $v1, 0x43340000     
  0022d62c: sw     $a1, +0($a0)       
  0022d630: sw     $v1, +4($a0)       
  0022d634: beq    $zero, $zero, +368    ; br -> 0x0022d7a8
  0022d638: sw     $zero, +8($a0)     
  0022d63c: lui   $a1, 0xc2c80000     
  0022d640: lui   $v1, 0x43340000     
  0022d644: sw     $a1, +0($a0)       
  0022d648: sw     $v1, +4($a0)       
  0022d64c: beq    $zero, $zero, +344    ; br -> 0x0022d7a8
  0022d650: sw     $zero, +8($a0)     
  0022d654: lui   $a1, 0xc2c80000     
  0022d658: lui   $v1, 0x43340000     
  0022d65c: sw     $a1, +0($a0)       
  0022d660: sw     $v1, +4($a0)       
  0022d664: beq    $zero, $zero, +320    ; br -> 0x0022d7a8
  0022d668: sw     $zero, +8($a0)     
  0022d66c: beq    $a3, $a1, +60         ; br -> 0x0022d6ac
  0022d670: sll    $zero, $zero, +0   
  0022d674: beq    $a3, $zero, +32       ; br -> 0x0022d698
  0022d678: lui   $a1, 0xc2c80000     
  0022d67c: lui   $a1, 0x42a00000     
  0022d680: lui   $v1, 0x43c30000     
  0022d684: sw     $a1, +0($a0)       
  0022d688: sw     $v1, +4($a0)       
  0022d68c: beq    $zero, $zero, +280    ; br -> 0x0022d7a8
  0022d690: sw     $zero, +8($a0)     
  0022d694: lui   $a1, 0xc2c80000     
  0022d698: lui   $v1, 0x43c30000     
  0022d69c: sw     $a1, +0($a0)       
  0022d6a0: sw     $v1, +4($a0)       
  0022d6a4: beq    $zero, $zero, +256    ; br -> 0x0022d7a8
  0022d6a8: sw     $zero, +8($a0)     
  0022d6ac: lui   $a1, 0xc2c80000     
  0022d6b0: lui   $v1, 0x43c30000     
  0022d6b4: sw     $a1, +0($a0)       
  0022d6b8: sw     $v1, +4($a0)       
  0022d6bc: beq    $zero, $zero, +232    ; br -> 0x0022d7a8
  0022d6c0: sw     $zero, +8($a0)     
  0022d6c4: beq    $a3, $a1, +68         ; br -> 0x0022d70c
  0022d6c8: sll    $zero, $zero, +0   
  0022d6cc: beq    $a3, $zero, +40       ; br -> 0x0022d6f8
  0022d6d0: lui   $a1, 0x442f0000     
  0022d6d4: addiu  $v1, $zero, +1     
  0022d6d8: lui   $a1, 0x44090000     
  0022d6dc: lui   $v1, 0x43340000     
  0022d6e0: ori    $a1, $a1, -32768   
  0022d6e4: sw     $a1, +0($a0)       
  0022d6e8: sw     $v1, +4($a0)       
  0022d6ec: beq    $zero, $zero, +184    ; br -> 0x0022d7a8
  0022d6f0: sw     $zero, +8($a0)     
  0022d6f4: lui   $a1, 0x442f0000     
  0022d6f8: lui   $v1, 0x43340000     
  0022d6fc: sw     $a1, +0($a0)       
  0022d700: sw     $v1, +4($a0)       
  0022d704: beq    $zero, $zero, +160    ; br -> 0x0022d7a8
  0022d708: sw     $zero, +8($a0)     
  0022d70c: lui   $a1, 0x442f0000     
  0022d710: lui   $v1, 0x43340000     
  0022d714: sw     $a1, +0($a0)       
  0022d718: sw     $v1, +4($a0)       
  0022d71c: beq    $zero, $zero, +136    ; br -> 0x0022d7a8
  0022d720: sw     $zero, +8($a0)     
  0022d724: beq    $a3, $a1, +68         ; br -> 0x0022d76c
  0022d728: sll    $zero, $zero, +0   
  0022d72c: beq    $a3, $zero, +40       ; br -> 0x0022d758
  0022d730: lui   $a1, 0x442f0000     
  0022d734: addiu  $v1, $zero, +1     
  0022d738: lui   $a1, 0x44090000     
  0022d73c: lui   $v1, 0x43c30000     
  0022d740: ori    $a1, $a1, -32768   
  0022d744: sw     $a1, +0($a0)       
  0022d748: sw     $v1, +4($a0)       
  0022d74c: beq    $zero, $zero, +88     ; br -> 0x0022d7a8
  0022d750: sw     $zero, +8($a0)     
  0022d754: lui   $a1, 0x442f0000     
  0022d758: lui   $v1, 0x43c30000     
  0022d75c: sw     $a1, +0($a0)       
  0022d760: sw     $v1, +4($a0)       
  0022d764: beq    $zero, $zero, +64     ; br -> 0x0022d7a8
  0022d768: sw     $zero, +8($a0)     
  0022d76c: lui   $a1, 0x442f0000     
  0022d770: lui   $v1, 0x43c30000     
  0022d774: sw     $a1, +0($a0)       
  0022d778: sw     $v1, +4($a0)       
  0022d77c: beq    $zero, $zero, +40     ; br -> 0x0022d7a8
  0022d780: sw     $zero, +8($a0)     
  0022d784: fmove  $zero,$a0,$a2      
  0022d788: lui   $v1, 0x42c80000     
  0022d78c: fmove  $zero,$a0,$v1      
  0022d790: sll    $zero, $zero, +0   
  0022d794: f14.20 $zero,$s4,$zero    
  0022d798: f10.2  $at,$s0,$zero      
  0022d79c: swc1   $zero, +0($a0)     
  0022d7a0: swc1   $zero, +4($a0)     
  0022d7a4: sw     $zero, +8($a0)     
  0022d7a8: jr     $ra                
  0022d7ac: sll    $zero, $zero, +0   

; globals: 0x42fa0000(x3), 0x42fa0004(x3), 0x42fa0008(x3), 0x006f35b8(x2), 0x006f004c(x2)
