; 0x0026e060  FUN_0026e060  size=320  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 80 words

  0026e060: addiu  $sp, $sp, -16      
  0026e064: lw     $v1, +4($a0)       
  0026e068: beq    $v1, $zero, +84       ; br -> 0x0026e0c0
  0026e06c: daddu $t2, $zero, $zero   
  0026e070: lw     $t0, +12($v1)      
  0026e074: lui   $v0, 0x00630000     
  0026e078: lui   $a3, 0xff000000     
  0026e07c: lui   $a0, 0x00ff0000     
  0026e080: lw     $v0, +27104($v0)      ; GLOBAL 0x006369e0
  0026e084: lw     $t1, +0($t0)       
  0026e088: and $a3, $t1, $a3         
  0026e08c: and $a0, $t1, $a0         
  0026e090: srl $a3, $a3, 24          
  0026e094: srl $a0, $a0, 8           
  0026e098: addu $t0, $a3, $a0        
  0026e09c: andi   $a0, $t1, -256     
  0026e0a0: sll $a3, $a0, 8           
  0026e0a4: andi   $a0, $t1, +255     
  0026e0a8: addu $a3, $a3, $t0        
  0026e0ac: sll $a0, $a0, 24          
  0026e0b0: addu $a0, $a0, $a3        
  0026e0b4: bne    $v0, $a0, +8          ; br -> 0x0026e0c0
  0026e0b8: sll $zero, $zero, 0       
  0026e0bc: op19    $zero,$t2,$zero   
  0026e0c0: beq    $t2, $zero, +84       ; br -> 0x0026e118
  0026e0c4: daddu $v0, $zero, $zero   
  0026e0c8: lw     $a0, +12($v1)      
  0026e0cc: lui   $v0, 0xff000000     
  0026e0d0: lui   $t1, 0x00ff0000     
  0026e0d4: lw     $t2, +8($a0)          ; GLOBAL 0x00ff0008
  0026e0d8: and $a3, $t2, $v0         
  0026e0dc: and $a0, $t2, $t1         
  0026e0e0: srl $a3, $a3, 24          
  0026e0e4: srl $a0, $a0, 8           
  0026e0e8: addu $t0, $a3, $a0        
  0026e0ec: andi   $a0, $t2, -256     
  0026e0f0: sll $a3, $a0, 8           
  0026e0f4: andi   $a0, $t2, +255     
  0026e0f8: addu $a3, $a3, $t0        
  0026e0fc: sll $a0, $a0, 24          
  0026e100: addu $a3, $a0, $a3        
  0026e104: sltu $a0, $a2, $a3        
  0026e108: bne    $a0, $zero, +20       ; br -> 0x0026e120
  0026e10c: mult   $a3, $a1, +0       
  0026e110: beq    $zero, $zero, +124    ; br -> 0x0026e190
  0026e114: addiu  $v0, $zero, +1     
  0026e118: beq    $zero, $zero, +120    ; br -> 0x0026e194
  0026e11c: addiu  $sp, $sp, +16      
  0026e120: lw     $v1, +16($v1)      
  0026e124: addu $a0, $a2, $a0        
  0026e128: addiu  $a3, $sp, +4       
  0026e12c: sll $a0, $a0, 2           
  0026e130: addu $v1, $v1, $a0        
  0026e134: lwc1   $zero, +0($v1)     
  0026e138: swc1   $zero, +4($sp)     
  0026e13c: lw     $a1, +0($a3)          ; GLOBAL 0xff000000
  0026e140: and $v1, $a1, $v0         
  0026e144: and $v0, $a1, $t1         
  0026e148: srl $v1, $v1, 24          
  0026e14c: srl $v0, $v0, 8           
  0026e150: addu $a0, $v1, $v0        
  0026e154: andi   $v0, $a1, -256     
  0026e158: sll $v1, $v0, 8           
  0026e15c: andi   $v0, $a1, +255     
  0026e160: addu $v1, $v1, $a0        
  0026e164: sll $v0, $v0, 24          
  0026e168: addu $v0, $v0, $v1        
  0026e16c: sw     $v0, +0($a3)          ; GLOBAL 0xff000000
  0026e170: lwc1   $zero, +4($sp)     
  0026e174: swc1   $zero, +12($sp)    
  0026e178: lw     $v0, +12($sp)      
  0026e17c: swc1   $zero, +8($sp)     
  0026e180: spec3c  $zero,$v0,$v0     
  0026e184: spec3f  $zero,$v0,$v0     
  0026e188: xor $v0, $v0, $zero       
  0026e18c: sltiu  $v0, $v0, +1       
  0026e190: addiu  $sp, $sp, +16      
  0026e194: jr     $ra                
  0026e198: sll $zero, $zero, 0       
  0026e19c: sll $zero, $zero, 0       

; globals: 0xff000000(x2), 0x006369e0(x1), 0x00ff0008(x1)
