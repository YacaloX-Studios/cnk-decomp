; 0x0036d630  FUN_0036d630  size=1216  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 304 words

  0036d630: addiu  $sp, $sp, -16      
  0036d634: addiu  $v0, $sp, +0       
  0036d638: op36    $a1,$at,$zero     
  0036d63c: op36    $a2,$v0,$zero     
  0036d640: cop2   $at,$fp,$v0        
  0036d644: op3e    $v0,$at,$zero     
  0036d648: lw     $v0, +0($v0)       
  0036d64c: sw     $v0, +0($a0)       
  0036d650: dsubu $v0, $a0, $zero     
  0036d654: jr     $ra                
  0036d658: addiu  $sp, $sp, +16      
  0036d65c: sll $zero, $zero, 0       
  0036d660: jr     $ra                
  0036d664: addiu  $v0, $a0, +8       
  0036d668: sll $zero, $zero, 0       
  0036d66c: sll $zero, $zero, 0       
  0036d670: j     0x0036a3c0          
  0036d674: addiu  $a0, $a0, -8       
  0036d678: sll $zero, $zero, 0       
  0036d67c: sll $zero, $zero, 0       
  0036d680: j     0x0036a910          
  0036d684: addiu  $a0, $a0, -8       
  0036d688: sll $zero, $zero, 0       
  0036d68c: sll $zero, $zero, 0       
  0036d690: addiu  $sp, $sp, -416     
  0036d694: lui   $v0, 0x3f800000     
  0036d698: sw     $ra, +144($sp)     
  0036d69c: sw     $s7, +128($sp)     
  0036d6a0: sw     $s6, +112($sp)     
  0036d6a4: dsubu $s7, $a0, $zero     
  0036d6a8: sw     $s5, +96($sp)      
  0036d6ac: dsubu $s6, $t2, $zero     
  0036d6b0: sw     $s4, +80($sp)      
  0036d6b4: dsubu $s5, $a1, $zero     
  0036d6b8: sw     $s3, +64($sp)      
  0036d6bc: dsubu $s4, $a2, $zero     
  0036d6c0: sw     $s2, +48($sp)      
  0036d6c4: dsubu $s3, $a3, $zero     
  0036d6c8: sw     $s1, +32($sp)      
  0036d6cc: dsubu $s2, $t0, $zero     
  0036d6d0: sw     $s0, +16($sp)      
  0036d6d4: dsubu $s1, $t1, $zero     
  0036d6d8: swc1   $s4, +0($sp)       
  0036d6dc: dsubu $s0, $zero, $zero   
  0036d6e0: sw     $zero, +168($sp)   
  0036d6e4: sw     $zero, +164($sp)   
  0036d6e8: sw     $zero, +160($sp)   
  0036d6ec: sw     $v0, +172($sp)     
  0036d6f0: sw     $zero, +184($sp)   
  0036d6f4: sw     $zero, +180($sp)   
  0036d6f8: sw     $zero, +176($sp)   
  0036d6fc: sw     $v0, +188($sp)     
  0036d700: sw     $zero, +200($sp)   
  0036d704: sw     $zero, +196($sp)   
  0036d708: sw     $zero, +192($sp)   
  0036d70c: sw     $v0, +204($sp)     
  0036d710: sw     $zero, +216($sp)   
  0036d714: sw     $zero, +212($sp)   
  0036d718: sw     $zero, +208($sp)   
  0036d71c: sw     $v0, +220($sp)     
  0036d720: sw     $zero, +232($sp)   
  0036d724: sw     $zero, +228($sp)   
  0036d728: sw     $zero, +224($sp)   
  0036d72c: sw     $v0, +236($sp)     
  0036d730: sw     $zero, +248($sp)   
  0036d734: sw     $zero, +244($sp)   
  0036d738: sw     $zero, +240($sp)   
  0036d73c: sw     $v0, +252($sp)     
  0036d740: sw     $zero, +264($sp)   
  0036d744: sw     $zero, +260($sp)   
  0036d748: sw     $zero, +256($sp)   
  0036d74c: sw     $v0, +268($sp)     
  0036d750: sw     $zero, +280($sp)   
  0036d754: sw     $zero, +276($sp)   
  0036d758: sw     $zero, +272($sp)   
  0036d75c: sw     $v0, +284($sp)     
  0036d760: sw     $v0, +300($sp)     
  0036d764: sw     $zero, +296($sp)   
  0036d768: sw     $zero, +292($sp)   
  0036d76c: beq    $zero, $zero, +124    ; br -> 0x0036d7ec
  0036d770: sw     $zero, +288($sp)   
  0036d774: addiu  $a0, $sp, +304     
  0036d778: sll $v0, $v0, 1           
  0036d77c: dsubu $a1, $s1, $zero     
  0036d780: addu $v0, $s4, $v0        
  0036d784: lw     $v0, +0($v0)          ; GLOBAL 0x3f800000
  0036d788: sll $v0, $v0, 4           
  0036d78c: jal   0xf035bc40             ; -> FUN_0035bc40
  0036d790: addu $a2, $s5, $v0        
  0036d794: sll $v0, $s0, 4           
  0036d798: addiu  $v1, $sp, +304     
  0036d79c: addu $v0, $v0, $sp        
  0036d7a0: addiu  $v0, $v0, +160     
  0036d7a4: lw     $v1, +0($v1)       
  0036d7a8: sw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  0036d7ac: andi   $v0, $s0, +255     
  0036d7b0: addiu  $a0, $sp, +320     
  0036d7b4: sll $v0, $v0, 1           
  0036d7b8: dsubu $a1, $s6, $zero     
  0036d7bc: addu $v0, $s2, $v0        
  0036d7c0: lw     $v0, +0($v0)          ; GLOBAL 0x3f800000
  0036d7c4: sll $v0, $v0, 4           
  0036d7c8: jal   0xf035bc40             ; -> FUN_0035bc40
  0036d7cc: addu $a2, $s3, $v0        
  0036d7d0: sll $v0, $s0, 4           
  0036d7d4: addiu  $v1, $sp, +320     
  0036d7d8: addu $v0, $v0, $sp        
  0036d7dc: addiu  $v0, $v0, +208     
  0036d7e0: lw     $v1, +0($v1)       
  0036d7e4: sw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  0036d7e8: addiu  $s0, $s0, +1       
  0036d7ec: sll $zero, $zero, 0       
  0036d7f0: slti   $v0, $s0, +3       
  0036d7f4: bne    $v0, $zero, -132      ; br -> 0x0036d774
  0036d7f8: andi   $v0, $s0, +255     
  0036d7fc: addiu  $a0, $sp, +160     
  0036d800: addiu  $a1, $sp, +208     
  0036d804: addiu  $a2, $sp, +272     
  0036d808: jal   0xf038b460             ; -> 0x0038b460
  0036d80c: addiu  $a3, $sp, +288     
  0036d810: swc1   $zero, +84($s7)    
  0036d814: addiu  $a0, $sp, +272     
  0036d818: f10.6  $zero,$s0,$zero    
  0036d81c: addiu  $v1, $sp, +288     
  0036d820: addiu  $v0, $sp, +384     
  0036d824: op36    $a0,$at,$zero     
  0036d828: op36    $v1,$v0,$zero     
  0036d82c: cop2   $at,$fp,$v0        
  0036d830: op3e    $v0,$at,$zero     
  0036d834: addiu  $v1, $sp, +336     
  0036d838: lw     $v0, +0($v0)          ; GLOBAL 0x3f800000
  0036d83c: sw     $v0, +0($v1)       
  0036d840: addiu  $v0, $s7, +16      
  0036d844: lw     $v1, +0($v1)       
  0036d848: sw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  0036d84c: lwc1   $a2, +0($v0)          ; GLOBAL 0x3f800000
  0036d850: lwc1   $a3, +4($v0)          ; GLOBAL 0x3f800004
  0036d854: lwc1   $t0, +8($v0)          ; GLOBAL 0x3f800008
  0036d858: f10.1a $a2,$s0,$a2        
  0036d85c: f10.1e $a3,$s0,$a3        
  0036d860: f10.1c $t0,$s0,$t0        
  0036d864: fmove  $zero,$a0,$zero    
  0036d868: f10.32 $at,$s0,$zero      
  0036d86c: f8.8   $zero,$t0,$at      
  0036d870: sll $zero, $zero, 0       
  0036d874: f10.4  $zero,$s0,$at      
  0036d878: f10.3  $a2,$s0,$at        
  0036d87c: f10.3  $a3,$s0,$at        
  0036d880: f10.3  $t0,$s0,$at        
  0036d884: swc1   $a2, +0($v0)          ; GLOBAL 0x3f800000
  0036d888: swc1   $a3, +4($v0)          ; GLOBAL 0x3f800004
  0036d88c: swc1   $t0, +8($v0)          ; GLOBAL 0x3f800008
  0036d890: addiu  $a0, $sp, +272     
  0036d894: addiu  $v1, $sp, +288     
  0036d898: addiu  $v0, $sp, +400     
  0036d89c: op36    $a0,$at,$zero     
  0036d8a0: op36    $v1,$v0,$zero     
  0036d8a4: cop2   $at,$fp,$v0        
  0036d8a8: op3e    $v0,$at,$zero     
  0036d8ac: addiu  $a1, $sp, +368     
  0036d8b0: lw     $v0, +0($v0)          ; GLOBAL 0x3f800000
  0036d8b4: sw     $v0, +0($a1)       
  0036d8b8: lui   $v0, 0x3f000000     
  0036d8bc: fmove  $zero,$a0,$v0      
  0036d8c0: jal   0xf01207c0             ; -> FUN_001207c0
  0036d8c4: addiu  $a0, $sp, +352     
  0036d8c8: addiu  $v0, $s7, +32      
  0036d8cc: addiu  $v1, $sp, +352     
  0036d8d0: lw     $v1, +0($v1)       
  0036d8d4: sw     $v1, +0($v0)          ; GLOBAL 0x3f000000
  0036d8d8: lui   $v0, 0x37270000     
  0036d8dc: ori    $v0, $v0, -14932   
  0036d8e0: fmove  $zero,$a0,$v0      
  0036d8e4: sll $zero, $zero, 0       
  0036d8e8: f10.34 $s4,$s0,$zero      
  0036d8ec: sll $zero, $zero, 0       
  0036d8f0: f8.4   $zero,$t0,$zero    
  0036d8f4: f10.6  $s4,$s0,$zero      
  0036d8f8: lui   $v0, 0xbf800000     
  0036d8fc: fmove  $zero,$a0,$v0      
  0036d900: f10.6  $s4,$s0,$zero      
  0036d904: lw     $ra, +144($sp)     
  0036d908: lw     $s7, +128($sp)     
  0036d90c: lwc1   $s4, +0($sp)       
  0036d910: lw     $s6, +112($sp)     
  0036d914: lw     $s5, +96($sp)      
  0036d918: lw     $s4, +80($sp)      
  0036d91c: lw     $s3, +64($sp)      
  0036d920: lw     $s2, +48($sp)      
  0036d924: lw     $s1, +32($sp)      
  0036d928: lw     $s0, +16($sp)      
  0036d92c: jr     $ra                
  0036d930: addiu  $sp, $sp, +416     
  0036d934: sll $zero, $zero, 0       
  0036d938: sll $zero, $zero, 0       
  0036d93c: sll $zero, $zero, 0       
  0036d940: lwc1   $at, +28($a0)      
  0036d944: lwc1   $zero, +0($a1)     
  0036d948: f10.34 $at,$s0,$zero      
  0036d94c: sll $zero, $zero, 0       
  0036d950: f8.8   $zero,$t0,$at      
  0036d954: dsubu $v0, $zero, $zero   
  0036d958: lwc1   $at, +0($a0)       
  0036d95c: lwc1   $zero, +28($a1)    
  0036d960: f10.36 $at,$s0,$zero      
  0036d964: sll $zero, $zero, 0       
  0036d968: f8.4   $zero,$t0,$at      
  0036d96c: sll $zero, $zero, 0       
  0036d970: dsubu $v0, $zero, $zero   
  0036d974: beq    $zero, $zero, +356    ; br -> 0x0036dadc
  0036d978: sll $zero, $zero, 0       
  0036d97c: lwc1   $at, +32($a0)      
  0036d980: lwc1   $zero, +4($a1)     
  0036d984: f10.34 $at,$s0,$zero      
  0036d988: sll $zero, $zero, 0       
  0036d98c: f8.8   $zero,$t0,$at      
  0036d990: dsubu $v0, $zero, $zero   
  0036d994: lwc1   $at, +4($a0)       
  0036d998: lwc1   $zero, +32($a1)    
  0036d99c: f10.36 $at,$s0,$zero      
  0036d9a0: sll $zero, $zero, 0       
  0036d9a4: f8.4   $zero,$t0,$at      
  0036d9a8: sll $zero, $zero, 0       
  0036d9ac: dsubu $v0, $zero, $zero   
  0036d9b0: beq    $zero, $zero, +296    ; br -> 0x0036dadc
  0036d9b4: sll $zero, $zero, 0       
  0036d9b8: lwc1   $at, +36($a0)      
  0036d9bc: lwc1   $zero, +8($a1)     
  0036d9c0: f10.34 $at,$s0,$zero      
  0036d9c4: sll $zero, $zero, 0       
  0036d9c8: f8.8   $zero,$t0,$at      
  0036d9cc: dsubu $v0, $zero, $zero   
  0036d9d0: lwc1   $at, +8($a0)       
  0036d9d4: lwc1   $zero, +36($a1)    
  0036d9d8: f10.36 $at,$s0,$zero      
  0036d9dc: sll $zero, $zero, 0       
  0036d9e0: f8.4   $zero,$t0,$at      
  0036d9e4: sll $zero, $zero, 0       
  0036d9e8: dsubu $v0, $zero, $zero   
  0036d9ec: beq    $zero, $zero, +236    ; br -> 0x0036dadc
  0036d9f0: sll $zero, $zero, 0       
  0036d9f4: lwc1   $at, +40($a0)      
  0036d9f8: lwc1   $zero, +12($a1)    
  0036d9fc: f10.34 $at,$s0,$zero      
  0036da00: sll $zero, $zero, 0       
  0036da04: f8.8   $zero,$t0,$at      
  0036da08: dsubu $v0, $zero, $zero   
  0036da0c: lwc1   $at, +12($a0)      
  0036da10: lwc1   $zero, +40($a1)    
  0036da14: f10.36 $at,$s0,$zero      
  0036da18: sll $zero, $zero, 0       
  0036da1c: f8.4   $zero,$t0,$at      
  0036da20: sll $zero, $zero, 0       
  0036da24: dsubu $v0, $zero, $zero   
  0036da28: beq    $zero, $zero, +176    ; br -> 0x0036dadc
  0036da2c: sll $zero, $zero, 0       
  0036da30: lwc1   $at, +44($a0)      
  0036da34: lwc1   $zero, +16($a1)    
  0036da38: f10.34 $at,$s0,$zero      
  0036da3c: sll $zero, $zero, 0       
  0036da40: f8.8   $zero,$t0,$at      
  0036da44: dsubu $v0, $zero, $zero   
  0036da48: lwc1   $at, +16($a0)      
  0036da4c: lwc1   $zero, +44($a1)    
  0036da50: f10.36 $at,$s0,$zero      
  0036da54: sll $zero, $zero, 0       
  0036da58: f8.4   $zero,$t0,$at      
  0036da5c: sll $zero, $zero, 0       
  0036da60: dsubu $v0, $zero, $zero   
  0036da64: beq    $zero, $zero, +116    ; br -> 0x0036dadc
  0036da68: sll $zero, $zero, 0       
  0036da6c: lwc1   $at, +48($a0)      
  0036da70: lwc1   $zero, +20($a1)    
  0036da74: f10.34 $at,$s0,$zero      
  0036da78: sll $zero, $zero, 0       
  0036da7c: f8.8   $zero,$t0,$at      
  0036da80: dsubu $v0, $zero, $zero   
  0036da84: lwc1   $at, +20($a0)      
  0036da88: lwc1   $zero, +48($a1)    
  0036da8c: f10.36 $at,$s0,$zero      
  0036da90: sll $zero, $zero, 0       
  0036da94: f8.4   $zero,$t0,$at      
  0036da98: sll $zero, $zero, 0       
  0036da9c: dsubu $v0, $zero, $zero   
  0036daa0: beq    $zero, $zero, +56     ; br -> 0x0036dadc
  0036daa4: sll $zero, $zero, 0       
  0036daa8: lwc1   $at, +52($a0)      
  0036daac: lwc1   $zero, +24($a1)    
  0036dab0: f10.34 $at,$s0,$zero      
  0036dab4: sll $zero, $zero, 0       
  0036dab8: f8.8   $zero,$t0,$at      
  0036dabc: dsubu $v0, $zero, $zero   
  0036dac0: lwc1   $at, +24($a0)      
  0036dac4: lwc1   $zero, +52($a1)    
  0036dac8: f10.36 $at,$s0,$zero      
  0036dacc: sll $zero, $zero, 0       
  0036dad0: f8.2   $zero,$t0,$at      
  0036dad4: addiu  $v0, $zero, +1     
  0036dad8: dsubu $v0, $zero, $zero   
  0036dadc: jr     $ra                
  0036dae0: sll $zero, $zero, 0       
  0036dae4: sll $zero, $zero, 0       
  0036dae8: sll $zero, $zero, 0       
  0036daec: sll $zero, $zero, 0       

; globals: 0x3f800000(x9), 0x3f800004(x2), 0x3f800008(x2), 0x3f000000(x1)
