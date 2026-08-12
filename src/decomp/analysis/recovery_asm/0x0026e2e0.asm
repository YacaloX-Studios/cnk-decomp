; 0x0026e2e0  FUN_0026e2e0  size=320  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 80 words

  0026e2e0: addiu  $sp, $sp, -16      
  0026e2e4: lw     $v1, +4($a0)       
  0026e2e8: beq    $v1, $zero, +84       ; br -> 0x0026e340
  0026e2ec: daddu $t2, $zero, $zero   
  0026e2f0: lw     $t0, +12($v1)      
  0026e2f4: lui   $v0, 0x00630000     
  0026e2f8: lui   $a3, 0xff000000     
  0026e2fc: lui   $a0, 0x00ff0000     
  0026e300: lw     $v0, +27104($v0)      ; GLOBAL 0x006369e0
  0026e304: lw     $t1, +0($t0)       
  0026e308: and $a3, $t1, $a3         
  0026e30c: and $a0, $t1, $a0         
  0026e310: srl $a3, $a3, 24          
  0026e314: srl $a0, $a0, 8           
  0026e318: addu $t0, $a3, $a0        
  0026e31c: andi   $a0, $t1, -256     
  0026e320: sll $a3, $a0, 8           
  0026e324: andi   $a0, $t1, +255     
  0026e328: addu $a3, $a3, $t0        
  0026e32c: sll $a0, $a0, 24          
  0026e330: addu $a0, $a0, $a3        
  0026e334: bne    $v0, $a0, +8          ; br -> 0x0026e340
  0026e338: sll $zero, $zero, 0       
  0026e33c: op19    $zero,$t2,$zero   
  0026e340: beq    $t2, $zero, +84       ; br -> 0x0026e398
  0026e344: daddu $v0, $zero, $zero   
  0026e348: lw     $a0, +12($v1)      
  0026e34c: lui   $v0, 0xff000000     
  0026e350: lui   $t1, 0x00ff0000     
  0026e354: lw     $t2, +8($a0)          ; GLOBAL 0x00ff0008
  0026e358: and $a3, $t2, $v0         
  0026e35c: and $a0, $t2, $t1         
  0026e360: srl $a3, $a3, 24          
  0026e364: srl $a0, $a0, 8           
  0026e368: addu $t0, $a3, $a0        
  0026e36c: andi   $a0, $t2, -256     
  0026e370: sll $a3, $a0, 8           
  0026e374: andi   $a0, $t2, +255     
  0026e378: addu $a3, $a3, $t0        
  0026e37c: sll $a0, $a0, 24          
  0026e380: addu $a3, $a0, $a3        
  0026e384: sltu $a0, $a2, $a3        
  0026e388: bne    $a0, $zero, +20       ; br -> 0x0026e3a0
  0026e38c: mult   $a3, $a1, +0       
  0026e390: beq    $zero, $zero, +124    ; br -> 0x0026e410
  0026e394: daddu $v0, $zero, $zero   
  0026e398: beq    $zero, $zero, +120    ; br -> 0x0026e414
  0026e39c: addiu  $sp, $sp, +16      
  0026e3a0: lw     $v1, +16($v1)      
  0026e3a4: addu $a0, $a2, $a0        
  0026e3a8: addiu  $a3, $sp, +4       
  0026e3ac: sll $a0, $a0, 2           
  0026e3b0: addu $v1, $v1, $a0        
  0026e3b4: lwc1   $zero, +0($v1)     
  0026e3b8: swc1   $zero, +4($sp)     
  0026e3bc: lw     $a1, +0($a3)          ; GLOBAL 0xff000000
  0026e3c0: and $v1, $a1, $v0         
  0026e3c4: and $v0, $a1, $t1         
  0026e3c8: srl $v1, $v1, 24          
  0026e3cc: srl $v0, $v0, 8           
  0026e3d0: addu $a0, $v1, $v0        
  0026e3d4: andi   $v0, $a1, -256     
  0026e3d8: sll $v1, $v0, 8           
  0026e3dc: andi   $v0, $a1, +255     
  0026e3e0: addu $v1, $v1, $a0        
  0026e3e4: sll $v0, $v0, 24          
  0026e3e8: addu $v0, $v0, $v1        
  0026e3ec: sw     $v0, +0($a3)          ; GLOBAL 0xff000000
  0026e3f0: lwc1   $zero, +4($sp)     
  0026e3f4: swc1   $zero, +12($sp)    
  0026e3f8: lw     $v0, +12($sp)      
  0026e3fc: swc1   $zero, +8($sp)     
  0026e400: spec3c  $zero,$v0,$v0     
  0026e404: spec3f  $zero,$v0,$v0     
  0026e408: xori   $v0, $v0, +4       
  0026e40c: sltiu  $v0, $v0, +1       
  0026e410: addiu  $sp, $sp, +16      
  0026e414: jr     $ra                
  0026e418: sll $zero, $zero, 0       
  0026e41c: sll $zero, $zero, 0       

; globals: 0xff000000(x2), 0x006369e0(x1), 0x00ff0008(x1)
