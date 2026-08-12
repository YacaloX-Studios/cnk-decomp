; 0x001a1800  FUN_001a1800  size=576  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=int ret=ptr calls=
; 144 words

  001a1800: addiu  $sp, $sp, -64      
  001a1804: lw     $a2, +4($a1)       
  001a1808: addiu  $v1, $zero, +7     
  001a180c: lw     $a3, +120($a2)     
  001a1810: lw     $a2, +992($a3)     
  001a1814: beq    $a2, $v1, +544        ; br -> 0x001a1a38
  001a1818: sll $zero, $zero, 0       
  001a181c: lwc1   $at, +1068($a3)    
  001a1820: lui   $v1, 0x3f800000     
  001a1824: sw     $v1, +44($sp)      
  001a1828: lui   $v1, 0x40c00000     
  001a182c: sw     $zero, +40($sp)    
  001a1830: fmove  $zero,$a0,$v1      
  001a1834: sw     $zero, +36($sp)    
  001a1838: f10.36 $at,$s0,$zero      
  001a183c: f8.c   $zero,$t0,$at      
  001a1840: sw     $zero, +32($sp)    
  001a1844: lbu    $v1, +1065($a3)    
  001a1848: bne    $v1, $zero, +36       ; br -> 0x001a1870
  001a184c: sll $zero, $zero, 0       
  001a1850: lw     $a2, +44($a3)      
  001a1854: addiu  $v1, $sp, +32      
  001a1858: lw     $a2, +0($a2)       
  001a185c: addiu  $a2, $a2, +80      
  001a1860: lq     $a2, +0($a2)       
  001a1864: sq     $a2, +0($v1)          ; GLOBAL 0x40c00000
  001a1868: beq    $zero, $zero, +32     ; br -> 0x001a188c
  001a186c: lw     $t2, +4($a0)       
  001a1870: lw     $a2, +44($a3)      
  001a1874: addiu  $v1, $sp, +32      
  001a1878: lw     $a2, +0($a2)       
  001a187c: addiu  $a2, $a2, +16      
  001a1880: lq     $a2, +0($a2)       
  001a1884: sq     $a2, +0($v1)          ; GLOBAL 0x40c00000
  001a1888: lw     $t2, +4($a0)       
  001a188c: addiu  $v1, $sp, +12      
  001a1890: lw     $t5, +28($a1)      
  001a1894: addiu  $a2, $sp, +52      
  001a1898: lw     $t3, +32($a1)      
  001a189c: addiu  $t1, $sp, +8       
  001a18a0: addiu  $t0, $sp, +4       
  001a18a4: addiu  $a3, $sp, +0       
  001a18a8: fmove  $zero,$a0,$zero    
  001a18ac: lw     $t4, +16($t2)      
  001a18b0: lui   $a0, 0x3f800000     
  001a18b4: sw     $a0, +0($v1)          ; GLOBAL 0x40c00000
  001a18b8: sll $t5, $t5, 2           
  001a18bc: addiu  $v1, $sp, +56      
  001a18c0: addiu  $a0, $sp, +16      
  001a18c4: sll $t2, $t3, 1           
  001a18c8: addu $t2, $t2, $t3        
  001a18cc: addu $t3, $t4, $t5        
  001a18d0: sll $t2, $t2, 4           
  001a18d4: lw     $t3, +0($t3)       
  001a18d8: lw     $t3, +16($t3)      
  001a18dc: lw     $t3, +16($t3)      
  001a18e0: addu $t2, $t3, $t2        
  001a18e4: lwc1   $at, +24($t2)      
  001a18e8: lwc1   $zero, +28($t2)    
  001a18ec: lwc1   $v1, +20($t2)      
  001a18f0: swc1   $at, +52($sp)      
  001a18f4: swc1   $zero, +56($sp)    
  001a18f8: lwc1   $at, +0($a2)       
  001a18fc: lwc1   $zero, +0($v1)        ; GLOBAL 0x40c00000
  001a1900: swc1   $v1, +48($sp)      
  001a1904: swc1   $v1, +0($sp)       
  001a1908: swc1   $at, +0($t0)       
  001a190c: swc1   $zero, +0($t1)     
  001a1910: lq     $v1, +0($a3)       
  001a1914: sq     $v1, +0($a0)          ; GLOBAL 0x3f800000
  001a1918: lbu    $v1, +73($a1)      
  001a191c: beq    $v1, $zero, +148      ; br -> 0x001a19b4
  001a1920: addiu  $v1, $sp, +32      
  001a1924: addiu  $v1, $sp, +32      
  001a1928: lwc1   $v1, +0($a0)          ; GLOBAL 0x3f800000
  001a192c: lwc1   $zero, +0($v1)        ; GLOBAL 0x40c00000
  001a1930: lwc1   $at, +4($a0)          ; GLOBAL 0x3f800004
  001a1934: f10.1a $v1,$s0,$zero      
  001a1938: lwc1   $zero, +4($v1)        ; GLOBAL 0x40c00004
  001a193c: lwc1   $v1, +8($a0)          ; GLOBAL 0x3f800008
  001a1940: f10.1e $at,$s0,$zero      
  001a1944: lwc1   $zero, +8($v1)        ; GLOBAL 0x40c00008
  001a1948: f10.1c $v1,$s0,$zero      
  001a194c: f10.34 $zero,$s0,$v0      
  001a1950: f8.15  $zero,$t0,$at      
  001a1954: sll $zero, $zero, 0       
  001a1958: lwc1   $at, +56($a1)      
  001a195c: lwc1   $zero, +64($a1)    
  001a1960: f10.34 $zero,$s0,$at      
  001a1964: f8.3   $zero,$t0,$zero    
  001a1968: sll $zero, $zero, 0       
  001a196c: beq    $zero, $zero, +12     ; br -> 0x001a197c
  001a1970: swc1   $zero, +64($a1)    
  001a1974: f10.6  $at,$s0,$zero      
  001a1978: swc1   $zero, +64($a1)    
  001a197c: lui   $v1, 0x40000000     
  001a1980: lwc1   $v0, +56($a1)      
  001a1984: lwc1   $at, +64($a1)      
  001a1988: fmove  $zero,$a0,$v1      
  001a198c: sll $zero, $zero, 0       
  001a1990: f10.1  $v0,$s0,$at        
  001a1994: f10.36 $at,$s0,$zero      
  001a1998: f8.27  $zero,$t0,$at      
  001a199c: sll $zero, $zero, 0       
  001a19a0: beq    $zero, $zero, +148    ; br -> 0x001a1a38
  001a19a4: sb     $zero, +73($a1)    
  001a19a8: lwc1   $zero, +56($a1)    
  001a19ac: beq    $zero, $zero, +136    ; br -> 0x001a1a38
  001a19b0: swc1   $zero, +64($a1)    
  001a19b4: lwc1   $v1, +0($a0)          ; GLOBAL 0x3f800000
  001a19b8: lwc1   $zero, +0($v1)        ; GLOBAL 0x40000000
  001a19bc: lwc1   $at, +4($a0)          ; GLOBAL 0x3f800004
  001a19c0: f10.1a $v1,$s0,$zero      
  001a19c4: lwc1   $zero, +4($v1)        ; GLOBAL 0x40000004
  001a19c8: lwc1   $v1, +8($a0)          ; GLOBAL 0x3f800008
  001a19cc: f10.1e $at,$s0,$zero      
  001a19d0: lwc1   $zero, +8($v1)        ; GLOBAL 0x40000008
  001a19d4: f10.1c $v1,$s0,$zero      
  001a19d8: f10.36 $zero,$s0,$v0      
  001a19dc: f8.14  $zero,$t0,$zero    
  001a19e0: sll $zero, $zero, 0       
  001a19e4: lwc1   $zero, +56($a1)    
  001a19e8: lwc1   $v0, +64($a1)      
  001a19ec: f10.36 $v0,$s0,$zero      
  001a19f0: f8.3   $zero,$t0,$at      
  001a19f4: sll $zero, $zero, 0       
  001a19f8: beq    $zero, $zero, +12     ; br -> 0x001a1a08
  001a19fc: swc1   $v0, +64($a1)      
  001a1a00: f10.6  $zero,$s0,$zero    
  001a1a04: swc1   $v0, +64($a1)      
  001a1a08: lui   $v1, 0x40f00000     
  001a1a0c: lwc1   $at, +56($a1)      
  001a1a10: fmove  $zero,$a0,$v1      
  001a1a14: sll $zero, $zero, 0       
  001a1a18: f10.1  $v0,$s0,$at        
  001a1a1c: f10.36 $at,$s0,$zero      
  001a1a20: f8.5   $zero,$t0,$at      
  001a1a24: addiu  $v1, $zero, +1     
  001a1a28: beq    $zero, $zero, +12     ; br -> 0x001a1a38
  001a1a2c: sb     $v1, +73($a1)      
  001a1a30: lwc1   $zero, +56($a1)    
  001a1a34: swc1   $zero, +64($a1)    
  001a1a38: jr     $ra                
  001a1a3c: addiu  $sp, $sp, +64      

; globals: 0x40c00000(x5), 0x3f800000(x3), 0x3f800004(x2), 0x3f800008(x2), 0x40c00004(x1), 0x40c00008(x1), 0x40000000(x1), 0x40000004(x1), 0x40000008(x1)
