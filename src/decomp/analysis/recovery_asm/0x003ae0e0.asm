; 0x003ae0e0  FUN_003ae0e0  size=1136  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 284 words

  003ae0e0: addiu  $sp, $sp, -48      
  003ae0e4: lui   $at, 0x00700000     
  003ae0e8: swc1   $fp, +40($sp)      
  003ae0ec: lui   $a2, 0x40000000     
  003ae0f0: swc1   $sp, +36($sp)      
  003ae0f4: dsubu $v1, $zero, $zero   
  003ae0f8: swc1   $gp, +32($sp)      
  003ae0fc: dsubu $a1, $zero, $zero   
  003ae100: swc1   $k1, +28($sp)      
  003ae104: swc1   $k0, +24($sp)      
  003ae108: swc1   $t9, +20($sp)      
  003ae10c: swc1   $t8, +16($sp)      
  003ae110: swc1   $s7, +12($sp)      
  003ae114: swc1   $s6, +8($sp)       
  003ae118: swc1   $s5, +4($sp)       
  003ae11c: swc1   $s4, +0($sp)       
  003ae120: sw     $zero, -19952($at)    ; GLOBAL 0x0070b210
  003ae124: fmove  $zero,$a0,$a2      
  003ae128: lui   $at, 0x00700000     
  003ae12c: sw     $zero, -19960($at)    ; GLOBAL 0x0070b208
  003ae130: lui   $a2, 0x40400000     
  003ae134: lui   $at, 0x00700000     
  003ae138: sw     $zero, -19968($at)    ; GLOBAL 0x0070b200
  003ae13c: fmove  $zero,$a0,$a2      
  003ae140: lui   $at, 0x00700000     
  003ae144: sw     $zero, -19976($at)    ; GLOBAL 0x0070b1f8
  003ae148: lui   $a2, 0x40800000     
  003ae14c: lui   $at, 0x00700000     
  003ae150: sw     $zero, -19984($at)    ; GLOBAL 0x0070b1f0
  003ae154: fmove  $zero,$a0,$a2      
  003ae158: lui   $at, 0x00700000     
  003ae15c: sw     $zero, -19992($at)    ; GLOBAL 0x0070b1e8
  003ae160: lui   $at, 0x00700000     
  003ae164: sw     $zero, -20000($at)    ; GLOBAL 0x0070b1e0
  003ae168: lui   $at, 0x00700000     
  003ae16c: sw     $zero, -20008($at)    ; GLOBAL 0x0070b1d8
  003ae170: lui   $at, 0x00700000     
  003ae174: sw     $zero, -20016($at)    ; GLOBAL 0x0070b1d0
  003ae178: lui   $at, 0x00700000     
  003ae17c: sw     $zero, -20024($at)    ; GLOBAL 0x0070b1c8
  003ae180: lui   $at, 0x00700000     
  003ae184: lw     $a3, -20048($at)      ; GLOBAL 0x0070b1b0
  003ae188: lui   $at, 0x00700000     
  003ae18c: sll $t1, $a3, 2           
  003ae190: lw     $a2, -20040($at)      ; GLOBAL 0x0070b1b8
  003ae194: beq    $zero, $zero, +588    ; br -> 0x003ae3e4
  003ae198: sll $t0, $a2, 2           
  003ae19c: lui   $at, 0x00700000     
  003ae1a0: div    $t2, $a2, +0       
  003ae1a4: lw     $a3, +24($a0)      
  003ae1a8: lwc1   $fp, -20024($at)      ; GLOBAL 0x0070b1c8
  003ae1ac: lw     $t4, +20($a0)      
  003ae1b0: addiu  $v1, $v1, +1       
  003ae1b4: lui   $at, 0x00700000     
  003ae1b8: lwc1   $k1, -20016($at)      ; GLOBAL 0x0070b1d0
  003ae1bc: lui   $at, 0x00700000     
  003ae1c0: lwc1   $v0, -20000($at)      ; GLOBAL 0x0070b1e0
  003ae1c4: lui   $at, 0x00700000     
  003ae1c8: lwc1   $at, -19976($at)      ; GLOBAL 0x0070b1f8
  003ae1cc: lui   $at, 0x00700000     
  003ae1d0: lwc1   $gp, -20008($at)      ; GLOBAL 0x0070b1d8
  003ae1d4: lui   $at, 0x00700000     
  003ae1d8: lwc1   $zero, -19984($at)    ; GLOBAL 0x0070b1f0
  003ae1dc: lw     $t2, +8($a3)       
  003ae1e0: addu $a2, $t4, $a1        
  003ae1e4: addiu  $a1, $a1, +4       
  003ae1e8: lui   $at, 0x00700000     
  003ae1ec: lw     $a3, +0($a2)          ; GLOBAL 0x40800000
  003ae1f0: addu $t3, $t1, $t2        
  003ae1f4: lwc1   $k0, -19952($at)      ; GLOBAL 0x0070b210
  003ae1f8: addu $t2, $t0, $t2        
  003ae1fc: sll $a2, $a3, 1           
  003ae200: addu $a2, $a2, $a3        
  003ae204: lui   $at, 0x00700000     
  003ae208: sll $a2, $a2, 2           
  003ae20c: addu $a3, $t3, $a2        
  003ae210: addu $a2, $t2, $a2        
  003ae214: lwc1   $a3, +0($a2)          ; GLOBAL 0x40800000
  003ae218: lwc1   $a0, +0($a3)       
  003ae21c: lwc1   $t9, -19992($at)      ; GLOBAL 0x0070b1e8
  003ae220: mfhi   $zero, $zero, +0   
  003ae224: f10.2  $a0,$s0,$a0        
  003ae228: lui   $at, 0x00700000     
  003ae22c: sll $a2, $a2, 2           
  003ae230: addu $a2, $t4, $a2        
  003ae234: lw     $a3, +0($a2)          ; GLOBAL 0x40800000
  003ae238: f10.2  $t2,$s0,$a0        
  003ae23c: sll $a2, $a3, 1           
  003ae240: addu $a2, $a2, $a3        
  003ae244: sll $a2, $a2, 2           
  003ae248: addu $a3, $t3, $a2        
  003ae24c: lwc1   $a1, +0($a3)       
  003ae250: addu $a2, $t2, $a2        
  003ae254: lwc1   $t0, +0($a2)          ; GLOBAL 0x40800000
  003ae258: lwc1   $s7, -19968($at)      ; GLOBAL 0x0070b200
  003ae25c: f10.2  $a3,$s0,$a3        
  003ae260: f10.0  $a1,$s0,$a0        
  003ae264: lui   $at, 0x00700000     
  003ae268: f10.2  $a1,$s0,$sp        
  003ae26c: f10.1  $t0,$s0,$a3        
  003ae270: f10.2  $t1,$s0,$sp        
  003ae274: lwc1   $s5, -19960($at)      ; GLOBAL 0x0070b208
  003ae278: f10.0  $fp,$s0,$sp        
  003ae27c: f10.0  $t2,$s0,$s1        
  003ae280: lui   $at, 0x00700000     
  003ae284: swc1   $sp, -20024($at)      ; GLOBAL 0x0070b1c8
  003ae288: f10.2  $a1,$s0,$s1        
  003ae28c: lui   $at, 0x00700000     
  003ae290: f10.2  $t1,$s0,$s1        
  003ae294: f10.0  $k1,$s0,$s1        
  003ae298: swc1   $s1, -20016($at)      ; GLOBAL 0x0070b1d0
  003ae29c: f10.0  $t0,$s0,$a3        
  003ae2a0: lui   $at, 0x00700000     
  003ae2a4: f10.2  $t0,$s0,$s1        
  003ae2a8: f10.0  $t4,$s0,$s1        
  003ae2ac: f10.2  $t0,$s0,$k1        
  003ae2b0: f10.1  $a1,$s0,$a0        
  003ae2b4: f10.2  $a2,$s0,$k1        
  003ae2b8: f10.0  $gp,$s0,$k1        
  003ae2bc: swc1   $k1, -20008($at)      ; GLOBAL 0x0070b1d8
  003ae2c0: f10.2  $s4,$s0,$a1        
  003ae2c4: lui   $at, 0x00700000     
  003ae2c8: f10.2  $a1,$s0,$a1        
  003ae2cc: f10.2  $k1,$s0,$a0        
  003ae2d0: f10.2  $s2,$s0,$t6        
  003ae2d4: f10.2  $s2,$s0,$t2        
  003ae2d8: f10.0  $k1,$s0,$gp        
  003ae2dc: f10.2  $t4,$s0,$a3        
  003ae2e0: f10.0  $t2,$s0,$k1        
  003ae2e4: f10.0  $t6,$s0,$gp        
  003ae2e8: f10.2  $s3,$s0,$t3        
  003ae2ec: f10.1a $t3,$s0,$a0        
  003ae2f0: f10.0  $t3,$s0,$sp        
  003ae2f4: f10.0  $v1,$s0,$k1        
  003ae2f8: f10.2  $t1,$s0,$t3        
  003ae2fc: f10.0  $v0,$s0,$k1        
  003ae300: swc1   $v0, -20000($at)      ; GLOBAL 0x0070b1e0
  003ae304: f10.1c $a1,$s0,$t3        
  003ae308: lui   $at, 0x00700000     
  003ae30c: f10.2  $t1,$s0,$v0        
  003ae310: f10.0  $at,$s0,$v0        
  003ae314: swc1   $at, -19976($at)      ; GLOBAL 0x0070b1f8
  003ae318: f10.0  $t5,$s0,$s1        
  003ae31c: lui   $at, 0x00700000     
  003ae320: f10.2  $a2,$s0,$s1        
  003ae324: f10.0  $zero,$s0,$at      
  003ae328: swc1   $zero, -19984($at)    ; GLOBAL 0x0070b1f0
  003ae32c: f10.1a $t5,$s0,$a3        
  003ae330: lui   $at, 0x00700000     
  003ae334: f10.1c $t0,$s0,$s1        
  003ae338: f10.2  $a2,$s0,$zero      
  003ae33c: f10.0  $k0,$s0,$zero      
  003ae340: swc1   $zero, -19952($at)    ; GLOBAL 0x0070b210
  003ae344: f10.1a $t0,$s0,$t2        
  003ae348: lui   $at, 0x00700000     
  003ae34c: f10.1c $a3,$s0,$v1        
  003ae350: f10.2  $t1,$s0,$zero      
  003ae354: f10.2  $t6,$s0,$a1        
  003ae358: f10.0  $t9,$s0,$zero      
  003ae35c: swc1   $zero, -19992($at)    ; GLOBAL 0x0070b1e8
  003ae360: f10.1a $s3,$s0,$t6        
  003ae364: lui   $at, 0x00700000     
  003ae368: f10.1c $a0,$s0,$t2        
  003ae36c: f10.1a $t0,$s0,$zero      
  003ae370: f10.2  $a1,$s0,$v1        
  003ae374: f10.0  $t8,$s0,$zero      
  003ae378: f10.1c $a3,$s0,$zero      
  003ae37c: f10.2  $t1,$s0,$zero      
  003ae380: f10.2  $t0,$s0,$t0        
  003ae384: f10.0  $s7,$s0,$zero      
  003ae388: swc1   $zero, -19968($at)    ; GLOBAL 0x0070b200
  003ae38c: f10.2  $t7,$s0,$t0        
  003ae390: lui   $at, 0x00700000     
  003ae394: f10.2  $s2,$s0,$t7        
  003ae398: f10.2  $s3,$s0,$s0        
  003ae39c: f10.2  $zero,$s0,$a3      
  003ae3a0: f10.18 $at,$s0,$zero      
  003ae3a4: f10.2  $s4,$s0,$t7        
  003ae3a8: f10.2  $zero,$s0,$a3      
  003ae3ac: f10.0  $s0,$s0,$zero      
  003ae3b0: f10.2  $s4,$s0,$t0        
  003ae3b4: f10.1c $zero,$s0,$t4      
  003ae3b8: f10.0  $t5,$s0,$zero      
  003ae3bc: f10.1a $a1,$s0,$zero      
  003ae3c0: f10.2  $s2,$s0,$t0        
  003ae3c4: f10.2  $zero,$s0,$t4      
  003ae3c8: f10.2  $s3,$s0,$t5        
  003ae3cc: f10.0  $at,$s0,$zero      
  003ae3d0: f10.0  $s6,$s0,$zero      
  003ae3d4: f10.1c $a0,$s0,$zero      
  003ae3d8: f10.2  $a2,$s0,$zero      
  003ae3dc: f10.0  $s5,$s0,$zero      
  003ae3e0: swc1   $zero, -19960($at)    ; GLOBAL 0x0070b208
  003ae3e4: sll $zero, $zero, 0       
  003ae3e8: lw     $t2, +0($a0)       
  003ae3ec: dadd $a2, $v1, $t2        
  003ae3f0: bne    $a2, $zero, -600      ; br -> 0x003ae19c
  003ae3f4: addiu  $a2, $v1, +1       
  003ae3f8: lui   $at, 0x00700000     
  003ae3fc: lui   $v1, 0x40000000     
  003ae400: lwc1   $zero, -20024($at)    ; GLOBAL 0x0070b1c8
  003ae404: lui   $t0, 0xc0c00000     
  003ae408: fmove  $zero,$a0,$v1      
  003ae40c: lui   $a3, 0xc1400000     
  003ae410: lui   $a2, 0xc1a00000     
  003ae414: lui   $a1, 0x41c00000     
  003ae418: lui   $v1, 0x40c00000     
  003ae41c: lui   $a0, 0x42700000     
  003ae420: fmove  $zero,$a0,$v1      
  003ae424: lui   $at, 0x00700000     
  003ae428: lui   $v1, 0x41400000     
  003ae42c: lwc1   $t2, -20016($at)      ; GLOBAL 0x0070b1d0
  003ae430: fmove  $zero,$a0,$v1      
  003ae434: f10.3  $zero,$s0,$at      
  003ae438: lui   $v1, 0x41a00000     
  003ae43c: lui   $at, 0x00700000     
  003ae440: lwc1   $t0, -20000($at)      ; GLOBAL 0x0070b1e0
  003ae444: f10.3  $t2,$s0,$t3        
  003ae448: lui   $at, 0x00700000     
  003ae44c: lwc1   $a1, -19976($at)      ; GLOBAL 0x0070b1f8
  003ae450: fmove  $zero,$a0,$v1      
  003ae454: f10.3  $t0,$s0,$t1        
  003ae458: lui   $v1, 0xc2700000     
  003ae45c: lui   $at, 0x00700000     
  003ae460: lwc1   $a2, -20008($at)      ; GLOBAL 0x0070b1d8
  003ae464: f10.3  $a1,$s0,$a3        
  003ae468: lui   $at, 0x00700000     
  003ae46c: lwc1   $v1, -19984($at)      ; GLOBAL 0x0070b1f0
  003ae470: fmove  $zero,$a0,$t0      
  003ae474: sll $zero, $zero, 0       
  003ae478: f10.3  $a2,$s0,$a3        
  003ae47c: lui   $at, 0x00700000     
  003ae480: lwc1   $a0, -19952($at)      ; GLOBAL 0x0070b210
  003ae484: lui   $at, 0x00700000     
  003ae488: lwc1   $at, -19992($at)      ; GLOBAL 0x0070b1e8
  003ae48c: lui   $at, 0x00700000     
  003ae490: lwc1   $v0, -19968($at)      ; GLOBAL 0x0070b200
  003ae494: lui   $at, 0x00700000     
  003ae498: lwc1   $zero, -19960($at)    ; GLOBAL 0x0070b208
  003ae49c: lui   $at, 0x00700000     
  003ae4a0: swc1   $t4, -20024($at)      ; GLOBAL 0x0070b1c8
  003ae4a4: lui   $at, 0x00700000     
  003ae4a8: swc1   $t2, -20016($at)      ; GLOBAL 0x0070b1d0
  003ae4ac: lui   $at, 0x00700000     
  003ae4b0: swc1   $t0, -20000($at)      ; GLOBAL 0x0070b1e0
  003ae4b4: lui   $at, 0x00700000     
  003ae4b8: swc1   $a1, -19976($at)      ; GLOBAL 0x0070b1f8
  003ae4bc: fmove  $zero,$a0,$a3      
  003ae4c0: lui   $at, 0x00700000     
  003ae4c4: swc1   $a2, -20008($at)      ; GLOBAL 0x0070b1d8
  003ae4c8: f10.3  $v1,$s0,$a1        
  003ae4cc: lui   $at, 0x00700000     
  003ae4d0: swc1   $v1, -19984($at)      ; GLOBAL 0x0070b1f0
  003ae4d4: fmove  $zero,$a0,$a2      
  003ae4d8: lui   $at, 0x00700000     
  003ae4dc: fmove  $zero,$a0,$a1      
  003ae4e0: f10.3  $a0,$s0,$a1        
  003ae4e4: f10.3  $at,$s0,$v1        
  003ae4e8: swc1   $a0, -19952($at)      ; GLOBAL 0x0070b210
  003ae4ec: lui   $at, 0x00700000     
  003ae4f0: swc1   $at, -19992($at)      ; GLOBAL 0x0070b1e8
  003ae4f4: fmove  $zero,$a0,$a0      
  003ae4f8: lui   $at, 0x00700000     
  003ae4fc: fmove  $zero,$a0,$v1      
  003ae500: f10.3  $v0,$s0,$v1        
  003ae504: swc1   $v0, -19968($at)      ; GLOBAL 0x0070b200
  003ae508: f10.3  $zero,$s0,$at      
  003ae50c: lui   $at, 0x00700000     
  003ae510: swc1   $zero, -19960($at)    ; GLOBAL 0x0070b208
  003ae514: lwc1   $fp, +40($sp)      
  003ae518: lwc1   $sp, +36($sp)      
  003ae51c: lwc1   $gp, +32($sp)      
  003ae520: lwc1   $k1, +28($sp)      
  003ae524: lwc1   $k0, +24($sp)      
  003ae528: lwc1   $t9, +20($sp)      
  003ae52c: lwc1   $t8, +16($sp)      
  003ae530: lwc1   $s7, +12($sp)      
  003ae534: lwc1   $s6, +8($sp)       
  003ae538: lwc1   $s5, +4($sp)       
  003ae53c: lwc1   $s4, +0($sp)       
  003ae540: jr     $ra                
  003ae544: addiu  $sp, $sp, +48      
  003ae548: sll $zero, $zero, 0       
  003ae54c: sll $zero, $zero, 0       

; globals: 0x0070b210(x5), 0x0070b208(x5), 0x0070b200(x5), 0x0070b1f8(x5), 0x0070b1f0(x5), 0x0070b1e8(x5), 0x0070b1e0(x5), 0x0070b1d8(x5), 0x0070b1d0(x5), 0x0070b1c8(x5)
