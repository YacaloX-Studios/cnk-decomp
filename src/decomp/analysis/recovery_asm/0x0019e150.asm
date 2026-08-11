; 0x0019e150  FUN_0019e150  size=304  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=- ret=ptr calls=
; 76 words

  0019e150: addiu  $sp, $sp, -16      
  0019e154: lw     $a1, +44($a0)      
  0019e158: lw     $v1, +56($a0)      
  0019e15c: lwc1   $v0, +60($a0)      
  0019e160: lw     $a1, +0($a1)       
  0019e164: lw     $v1, +68($v1)      
  0019e168: f10.6  $v0,$s0,$zero      
  0019e16c: beq    $v1, $zero, +60       ; br -> 0x0019e1ac
  0019e170: addiu  $a2, $a1, +16      
  0019e174: lw     $v1, +56($a0)      
  0019e178: lw     $v1, +181($v1)     
  0019e17c: daddu  $v1, $zero, +0     
  0019e180: xori   $v1, $v1, +1       
  0019e184: beq    $v1, $zero, +20       ; br -> 0x0019e19c
  0019e188: lui   $v1, 0x006f0000     
  0019e18c: lui   $v1, 0x006f0000     
  0019e190: lw     $v1, +22280($v1)      ; GLOBAL 0x006f5708
  0019e194: beq    $zero, $zero, +12     ; br -> 0x0019e1a4
  0019e198: lwc1   $zero, +140($v1)      ; GLOBAL 0x006f008c
  0019e19c: lw     $v1, +22280($v1)      ; GLOBAL 0x006f5708
  0019e1a0: lwc1   $zero, +720($v1)      ; GLOBAL 0x006f02d0
  0019e1a4: beq    $zero, $zero, +56     ; br -> 0x0019e1e0
  0019e1a8: f10.2  $v1,$s0,$zero      
  0019e1ac: lw     $v1, +56($a0)      
  0019e1b0: lw     $v1, +181($v1)        ; GLOBAL 0x006f00b5
  0019e1b4: daddu  $v1, $zero, +0     
  0019e1b8: xori   $v1, $v1, +1       
  0019e1bc: beq    $v1, $zero, +20       ; br -> 0x0019e1d4
  0019e1c0: lui   $v1, 0x006f0000     
  0019e1c4: lui   $v1, 0x006f0000     
  0019e1c8: lw     $v1, +22280($v1)      ; GLOBAL 0x006f5708
  0019e1cc: beq    $zero, $zero, +12     ; br -> 0x0019e1dc
  0019e1d0: lwc1   $zero, +136($v1)      ; GLOBAL 0x006f0088
  0019e1d4: lw     $v1, +22280($v1)      ; GLOBAL 0x006f5708
  0019e1d8: lwc1   $zero, +716($v1)      ; GLOBAL 0x006f02cc
  0019e1dc: f10.2  $v1,$s0,$zero      
  0019e1e0: lwc1   $at, +128($a0)     
  0019e1e4: lwc1   $zero, +96($a0)    
  0019e1e8: f10.1  $zero,$s0,$at      
  0019e1ec: f10.34 $v1,$s0,$zero      
  0019e1f0: f8.3   $zero,$t0,$zero    
  0019e1f4: sll    $zero, $zero, +0   
  0019e1f8: beq    $zero, $zero, +8      ; br -> 0x0019e204
  0019e1fc: sll    $zero, $zero, +0   
  0019e200: f10.6  $zero,$s0,$zero    
  0019e204: fmove  $zero,$a0,$zero    
  0019e208: sll    $zero, $zero, +0   
  0019e20c: f10.36 $v1,$s0,$zero      
  0019e210: f8.19  $zero,$t0,$at      
  0019e214: sll    $zero, $zero, +0   
  0019e218: sll    $zero, $zero, +0   
  0019e21c: sll    $zero, $zero, +0   
  0019e220: f10.3  $v1,$s0,$v0        
  0019e224: addiu  $a1, $sp, +0       
  0019e228: lw     $v1, +0($a2)       
  0019e22c: sw     $v1, +0($a1)       
  0019e230: lw     $v1, +44($a0)      
  0019e234: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  0019e238: lw     $v1, +148($v1)        ; GLOBAL 0x006f0094
  0019e23c: lwc1   $zero, +432($v1)      ; GLOBAL 0x006f01b0
  0019e240: f10.2  $at,$s0,$zero      
  0019e244: fmove  $zero,$zero,$v1    
  0019e248: op36    $a1,$at,$zero     
  0019e24c: cop2   $v0,$a1,$v1        
  0019e250: cop2   $at,$fp,$v0        
  0019e254: op3e    $a1,$at,$zero     
  0019e258: lw     $v1, +44($a0)      
  0019e25c: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  0019e260: lw     $v1, +148($v1)        ; GLOBAL 0x006f0094
  0019e264: addiu  $v1, $v1, +128     
  0019e268: op36    $v1,$at,$zero     
  0019e26c: op36    $a1,$v0,$zero     
  0019e270: cop2   $at,$fp,$v0        
  0019e274: op3e    $v1,$at,$zero     
  0019e278: jr     $ra                
  0019e27c: addiu  $sp, $sp, +16      

; globals: 0x006f5708(x4), 0x006f0000(x2), 0x006f0094(x2), 0x006f008c(x1), 0x006f02d0(x1), 0x006f00b5(x1), 0x006f0088(x1), 0x006f02cc(x1), 0x006f01b0(x1)
