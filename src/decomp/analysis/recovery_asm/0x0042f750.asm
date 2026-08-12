; 0x0042f750  FUN_0042f750  size=960  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0042bf18
; 240 words

  0042f750: addiu  $sp, $sp, -80      
  0042f754: sq     $s1, +48($sp)      
  0042f758: sq     $s0, +32($sp)      
  0042f75c: sq     $ra, +64($sp)      
  0042f760: daddu $s0, $a0, $zero     
  0042f764: lw     $a0, +0($s0)       
  0042f768: sltiu  $v0, $a0, +60      
  0042f76c: bne    $v0, $zero, +92       ; br -> 0x0042f7cc
  0042f770: addiu  $s1, $zero, +28    
  0042f774: jal   0xf042bf18             ; -> 0x0042bf18
  0042f778: addiu  $a1, $zero, +60    
  0042f77c: spec3c  $zero,$v0,$v1     
  0042f780: lw     $a0, +4($s0)       
  0042f784: spec3e  $zero,$v1,$v1     
  0042f788: spec3e  $zero,$v0,$v0     
  0042f78c: sw     $v1, +16($sp)      
  0042f790: sw     $v0, +20($sp)      
  0042f794: mmi0   $zero,$sp,$v0      
  0042f798: mmi1   $zero,$sp,$v0      
  0042f79c: op2c    $sp,$v0,$zero     
  0042f7a0: op2d    $sp,$v0,$zero     
  0042f7a4: lw     $v0, +0($sp)       
  0042f7a8: lw     $a1, +4($sp)       
  0042f7ac: addu $v1, $a0, $v0        
  0042f7b0: sw     $a1, +0($s0)       
  0042f7b4: regimm $a1, $at, +20         ; br -> 0x0042f7cc
  0042f7b8: sw     $v1, +4($s0)       
  0042f7bc: addiu  $v0, $a1, +60      
  0042f7c0: addiu  $v1, $v1, -1       
  0042f7c4: sw     $v0, +0($s0)       
  0042f7c8: sw     $v1, +4($s0)       
  0042f7cc: lw     $a0, +4($s0)       
  0042f7d0: sltiu  $v0, $a0, +60      
  0042f7d4: bnel   $v0, $zero, +96       ; br -> 0x0042f838
  0042f7d8: lw     $a0, +8($s0)       
  0042f7dc: jal   0xf042bf18             ; -> 0x0042bf18
  0042f7e0: addiu  $a1, $zero, +60    
  0042f7e4: spec3c  $zero,$v0,$v1     
  0042f7e8: lw     $a0, +8($s0)       
  0042f7ec: spec3e  $zero,$v1,$v1     
  0042f7f0: spec3e  $zero,$v0,$v0     
  0042f7f4: sw     $v1, +16($sp)      
  0042f7f8: sw     $v0, +20($sp)      
  0042f7fc: mmi0   $zero,$sp,$v0      
  0042f800: mmi1   $zero,$sp,$v0      
  0042f804: op2c    $sp,$v0,$zero     
  0042f808: op2d    $sp,$v0,$zero     
  0042f80c: lw     $v0, +0($sp)       
  0042f810: lw     $a1, +4($sp)       
  0042f814: addu $v1, $a0, $v0        
  0042f818: sw     $a1, +4($s0)       
  0042f81c: regimm $a1, $at, +20         ; br -> 0x0042f834
  0042f820: sw     $v1, +8($s0)       
  0042f824: addiu  $v0, $a1, +60      
  0042f828: addiu  $v1, $v1, -1       
  0042f82c: sw     $v0, +4($s0)       
  0042f830: sw     $v1, +8($s0)       
  0042f834: lw     $a0, +8($s0)       
  0042f838: sltiu  $v0, $a0, +24      
  0042f83c: bnel   $v0, $zero, +96       ; br -> 0x0042f8a0
  0042f840: lw     $a0, +16($s0)      
  0042f844: jal   0xf042bf18             ; -> 0x0042bf18
  0042f848: addiu  $a1, $zero, +24    
  0042f84c: spec3c  $zero,$v0,$v1     
  0042f850: lw     $a0, +12($s0)      
  0042f854: spec3e  $zero,$v1,$v1     
  0042f858: spec3e  $zero,$v0,$v0     
  0042f85c: sw     $v1, +16($sp)      
  0042f860: sw     $v0, +20($sp)      
  0042f864: mmi0   $zero,$sp,$v0      
  0042f868: mmi1   $zero,$sp,$v0      
  0042f86c: op2c    $sp,$v0,$zero     
  0042f870: op2d    $sp,$v0,$zero     
  0042f874: lw     $v0, +0($sp)       
  0042f878: lw     $a1, +4($sp)       
  0042f87c: addu $v1, $a0, $v0        
  0042f880: sw     $a1, +8($s0)       
  0042f884: regimm $a1, $at, +20         ; br -> 0x0042f89c
  0042f888: sw     $v1, +12($s0)      
  0042f88c: addiu  $v0, $a1, +24      
  0042f890: addiu  $v1, $v1, -1       
  0042f894: sw     $v0, +8($s0)       
  0042f898: sw     $v1, +12($s0)      
  0042f89c: lw     $a0, +16($s0)      
  0042f8a0: slti   $v0, $a0, +12      
  0042f8a4: bnel   $v0, $zero, +96       ; br -> 0x0042f908
  0042f8a8: lw     $a0, +20($s0)      
  0042f8ac: jal   0xf042bf18             ; -> 0x0042bf18
  0042f8b0: addiu  $a1, $zero, +12    
  0042f8b4: spec3c  $zero,$v0,$v1     
  0042f8b8: lw     $a0, +20($s0)      
  0042f8bc: spec3e  $zero,$v1,$v1     
  0042f8c0: spec3e  $zero,$v0,$v0     
  0042f8c4: sw     $v1, +16($sp)      
  0042f8c8: sw     $v0, +20($sp)      
  0042f8cc: mmi0   $zero,$sp,$v0      
  0042f8d0: mmi1   $zero,$sp,$v0      
  0042f8d4: op2c    $sp,$v0,$zero     
  0042f8d8: op2d    $sp,$v0,$zero     
  0042f8dc: lw     $v0, +0($sp)       
  0042f8e0: lw     $a1, +4($sp)       
  0042f8e4: addu $v1, $a0, $v0        
  0042f8e8: sw     $a1, +16($s0)      
  0042f8ec: regimm $a1, $at, +20         ; br -> 0x0042f904
  0042f8f0: sw     $v1, +20($s0)      
  0042f8f4: addiu  $v0, $a1, +12      
  0042f8f8: addiu  $v1, $v1, -1       
  0042f8fc: sw     $v0, +16($s0)      
  0042f900: sw     $v1, +20($s0)      
  0042f904: lw     $a0, +20($s0)      
  0042f908: andi   $v0, $a0, +3       
  0042f90c: bnel   $v0, $zero, +72       ; br -> 0x0042f958
  0042f910: lw     $v0, +12($s0)      
  0042f914: addiu  $v0, $zero, +100   
  0042f918: div    $v0, $a0, +0       
  0042f91c: beql   $v0, $zero, +4        ; br -> 0x0042f924
  0042f920: break                     
  0042f924: mfhi   $zero, $zero, +0   
  0042f928: bnel   $v1, $zero, +40       ; br -> 0x0042f954
  0042f92c: addiu  $s1, $zero, +29    
  0042f930: addiu  $v1, $a0, +1900    
  0042f934: addiu  $v0, $zero, +400   
  0042f938: div    $v0, $v1, +0       
  0042f93c: beql   $v0, $zero, +4        ; br -> 0x0042f944
  0042f940: break                     
  0042f944: mfhi   $zero, $zero, +0   
  0042f948: bnel   $a0, $zero, +12       ; br -> 0x0042f958
  0042f94c: lw     $v0, +12($s0)      
  0042f950: addiu  $s1, $zero, +29    
  0042f954: lw     $v0, +12($s0)      
  0042f958: bgtz   $v0, $zero, +192      ; br -> 0x0042fa1c
  0042f95c: lui   $v0, 0x006a0000     
  0042f960: addiu  $t3, $zero, -1     
  0042f964: addiu  $t2, $v0, +19536   
  0042f968: addiu  $t1, $zero, +11    
  0042f96c: addiu  $a2, $zero, +100   
  0042f970: daddu $a3, $zero, $zero   
  0042f974: addiu  $a1, $zero, +400   
  0042f978: addiu  $t0, $zero, +1     
  0042f97c: sll $zero, $zero, 0       
  0042f980: lw     $v0, +16($s0)      
  0042f984: addiu  $v0, $v0, -1       
  0042f988: bne    $v0, $t3, +92         ; br -> 0x0042f9e8
  0042f98c: sw     $v0, +16($s0)      
  0042f990: lw     $a0, +20($s0)      
  0042f994: sw     $t1, +16($s0)      
  0042f998: addiu  $v1, $a0, -1       
  0042f99c: andi   $v0, $v1, +3       
  0042f9a0: bne    $v0, $zero, +64       ; br -> 0x0042f9e4
  0042f9a4: sw     $v1, +20($s0)      
  0042f9a8: div    $a2, $v1, +0       
  0042f9ac: beql   $a2, $a3, +4          ; br -> 0x0042f9b4
  0042f9b0: break                     
  0042f9b4: mfhi   $zero, $zero, +0   
  0042f9b8: bne    $v0, $zero, +44       ; br -> 0x0042f9e8
  0042f9bc: addiu  $s1, $zero, +29    
  0042f9c0: addiu  $v0, $a0, +1899    
  0042f9c4: beql   $a1, $a3, +4          ; br -> 0x0042f9cc
  0042f9c8: break                     
  0042f9cc: div    $a1, $v0, +0       
  0042f9d0: mfhi   $zero, $zero, +0   
  0042f9d4: bne    $v1, $zero, +16       ; br -> 0x0042f9e8
  0042f9d8: addiu  $s1, $zero, +28    
  0042f9dc: beq    $zero, $zero, +8      ; br -> 0x0042f9e8
  0042f9e0: addiu  $s1, $zero, +29    
  0042f9e4: addiu  $s1, $zero, +28    
  0042f9e8: lw     $v0, +16($s0)      
  0042f9ec: beq    $v0, $t0, +24         ; br -> 0x0042fa08
  0042f9f0: lw     $a0, +12($s0)      
  0042f9f4: sll $v0, $v0, 2           
  0042f9f8: addu $v0, $v0, $t2        
  0042f9fc: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042fa00: beq    $zero, $zero, +8      ; br -> 0x0042fa0c
  0042fa04: addu $v0, $a0, $v1        
  0042fa08: addu $v0, $a0, $s1        
  0042fa0c: blez   $v0, $zero, -144      ; br -> 0x0042f980
  0042fa10: sw     $v0, +12($s0)      
  0042fa14: beq    $zero, $zero, +232    ; br -> 0x0042fb00
  0042fa18: lq     $ra, +64($sp)      
  0042fa1c: addiu  $t1, $zero, +1     
  0042fa20: addiu  $t0, $v0, +19536   
  0042fa24: addiu  $t2, $zero, +12    
  0042fa28: addiu  $a2, $zero, +100   
  0042fa2c: daddu $a3, $zero, $zero   
  0042fa30: beq    $zero, $zero, +144    ; br -> 0x0042fac4
  0042fa34: addiu  $a1, $zero, +400   
  0042fa38: beq    $v0, $t1, +24         ; br -> 0x0042fa54
  0042fa3c: lw     $a0, +12($s0)      
  0042fa40: sll $v0, $v0, 2           
  0042fa44: addu $v0, $v0, $t0        
  0042fa48: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042fa4c: beq    $zero, $zero, +8      ; br -> 0x0042fa58
  0042fa50: subu $v1, $a0, $v1        
  0042fa54: subu $v1, $a0, $s1        
  0042fa58: lw     $v0, +16($s0)      
  0042fa5c: sw     $v1, +12($s0)      
  0042fa60: addiu  $v0, $v0, +1       
  0042fa64: bne    $v0, $t2, +92         ; br -> 0x0042fac4
  0042fa68: sw     $v0, +16($s0)      
  0042fa6c: lw     $a0, +20($s0)      
  0042fa70: sw     $zero, +16($s0)    
  0042fa74: addiu  $v1, $a0, +1       
  0042fa78: andi   $v0, $v1, +3       
  0042fa7c: bne    $v0, $zero, +64       ; br -> 0x0042fac0
  0042fa80: sw     $v1, +20($s0)      
  0042fa84: div    $a2, $v1, +0       
  0042fa88: beql   $a2, $a3, +4          ; br -> 0x0042fa90
  0042fa8c: break                     
  0042fa90: mfhi   $zero, $zero, +0   
  0042fa94: bne    $v0, $zero, +44       ; br -> 0x0042fac4
  0042fa98: addiu  $s1, $zero, +29    
  0042fa9c: addiu  $v0, $a0, +1901    
  0042faa0: beql   $a1, $a3, +4          ; br -> 0x0042faa8
  0042faa4: break                     
  0042faa8: div    $a1, $v0, +0       
  0042faac: mfhi   $zero, $zero, +0   
  0042fab0: bne    $v1, $zero, +16       ; br -> 0x0042fac4
  0042fab4: addiu  $s1, $zero, +28    
  0042fab8: beq    $zero, $zero, +8      ; br -> 0x0042fac4
  0042fabc: addiu  $s1, $zero, +29    
  0042fac0: addiu  $s1, $zero, +28    
  0042fac4: lw     $v0, +16($s0)      
  0042fac8: beq    $v0, $t1, +36         ; br -> 0x0042faf0
  0042facc: lw     $a0, +12($s0)      
  0042fad0: sll $v0, $v0, 2           
  0042fad4: addu $v0, $v0, $t0        
  0042fad8: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042fadc: slt $v1, $v1, $a0         
  0042fae0: bnel   $v1, $zero, -172      ; br -> 0x0042fa38
  0042fae4: lw     $v0, +16($s0)      
  0042fae8: beq    $zero, $zero, +20     ; br -> 0x0042fb00
  0042faec: lq     $ra, +64($sp)      
  0042faf0: slt $v0, $s1, $a0         
  0042faf4: bnel   $v0, $zero, -192      ; br -> 0x0042fa38
  0042faf8: lw     $v0, +16($s0)      
  0042fafc: lq     $ra, +64($sp)      
  0042fb00: lq     $s1, +48($sp)      
  0042fb04: lq     $s0, +32($sp)      
  0042fb08: jr     $ra                
  0042fb0c: addiu  $sp, $sp, +80      

; globals: 0x006a0000(x3)
