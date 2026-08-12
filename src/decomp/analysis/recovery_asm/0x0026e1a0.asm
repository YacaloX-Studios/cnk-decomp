; 0x0026e1a0  FUN_0026e1a0  size=320  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 80 words

  0026e1a0: addiu  $sp, $sp, -16      
  0026e1a4: lw     $v1, +4($a0)       
  0026e1a8: beq    $v1, $zero, +84       ; br -> 0x0026e200
  0026e1ac: daddu $t2, $zero, $zero   
  0026e1b0: lw     $t0, +12($v1)      
  0026e1b4: lui   $v0, 0x00630000     
  0026e1b8: lui   $a3, 0xff000000     
  0026e1bc: lui   $a0, 0x00ff0000     
  0026e1c0: lw     $v0, +27104($v0)      ; GLOBAL 0x006369e0
  0026e1c4: lw     $t1, +0($t0)       
  0026e1c8: and $a3, $t1, $a3         
  0026e1cc: and $a0, $t1, $a0         
  0026e1d0: srl $a3, $a3, 24          
  0026e1d4: srl $a0, $a0, 8           
  0026e1d8: addu $t0, $a3, $a0        
  0026e1dc: andi   $a0, $t1, -256     
  0026e1e0: sll $a3, $a0, 8           
  0026e1e4: andi   $a0, $t1, +255     
  0026e1e8: addu $a3, $a3, $t0        
  0026e1ec: sll $a0, $a0, 24          
  0026e1f0: addu $a0, $a0, $a3        
  0026e1f4: bne    $v0, $a0, +8          ; br -> 0x0026e200
  0026e1f8: sll $zero, $zero, 0       
  0026e1fc: op19    $zero,$t2,$zero   
  0026e200: beq    $t2, $zero, +84       ; br -> 0x0026e258
  0026e204: daddu $v0, $zero, $zero   
  0026e208: lw     $a0, +12($v1)      
  0026e20c: lui   $v0, 0xff000000     
  0026e210: lui   $t1, 0x00ff0000     
  0026e214: lw     $t2, +8($a0)          ; GLOBAL 0x00ff0008
  0026e218: and $a3, $t2, $v0         
  0026e21c: and $a0, $t2, $t1         
  0026e220: srl $a3, $a3, 24          
  0026e224: srl $a0, $a0, 8           
  0026e228: addu $t0, $a3, $a0        
  0026e22c: andi   $a0, $t2, -256     
  0026e230: sll $a3, $a0, 8           
  0026e234: andi   $a0, $t2, +255     
  0026e238: addu $a3, $a3, $t0        
  0026e23c: sll $a0, $a0, 24          
  0026e240: addu $a3, $a0, $a3        
  0026e244: sltu $a0, $a2, $a3        
  0026e248: bne    $a0, $zero, +20       ; br -> 0x0026e260
  0026e24c: mult   $a3, $a1, +0       
  0026e250: beq    $zero, $zero, +124    ; br -> 0x0026e2d0
  0026e254: daddu $v0, $zero, $zero   
  0026e258: beq    $zero, $zero, +120    ; br -> 0x0026e2d4
  0026e25c: addiu  $sp, $sp, +16      
  0026e260: lw     $v1, +16($v1)      
  0026e264: addu $a0, $a2, $a0        
  0026e268: addiu  $a3, $sp, +4       
  0026e26c: sll $a0, $a0, 2           
  0026e270: addu $v1, $v1, $a0        
  0026e274: lwc1   $zero, +0($v1)     
  0026e278: swc1   $zero, +4($sp)     
  0026e27c: lw     $a1, +0($a3)          ; GLOBAL 0xff000000
  0026e280: and $v1, $a1, $v0         
  0026e284: and $v0, $a1, $t1         
  0026e288: srl $v1, $v1, 24          
  0026e28c: srl $v0, $v0, 8           
  0026e290: addu $a0, $v1, $v0        
  0026e294: andi   $v0, $a1, -256     
  0026e298: sll $v1, $v0, 8           
  0026e29c: andi   $v0, $a1, +255     
  0026e2a0: addu $v1, $v1, $a0        
  0026e2a4: sll $v0, $v0, 24          
  0026e2a8: addu $v0, $v0, $v1        
  0026e2ac: sw     $v0, +0($a3)          ; GLOBAL 0xff000000
  0026e2b0: lwc1   $zero, +4($sp)     
  0026e2b4: swc1   $zero, +12($sp)    
  0026e2b8: lw     $v0, +12($sp)      
  0026e2bc: swc1   $zero, +8($sp)     
  0026e2c0: spec3c  $zero,$v0,$v0     
  0026e2c4: spec3f  $zero,$v0,$v0     
  0026e2c8: addiu  $v0, $v0, -1       
  0026e2cc: sltiu  $v0, $v0, +3       
  0026e2d0: addiu  $sp, $sp, +16      
  0026e2d4: jr     $ra                
  0026e2d8: sll $zero, $zero, 0       
  0026e2dc: sll $zero, $zero, 0       

; globals: 0xff000000(x2), 0x006369e0(x1), 0x00ff0008(x1)
