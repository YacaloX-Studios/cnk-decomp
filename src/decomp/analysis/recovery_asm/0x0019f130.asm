; 0x0019f130  FUN_0019f130  size=192  status=real_c
; evidence: args=a0=ptr;a1=int;a2=-;a3=- ret=ptr calls=
; 48 words

  0019f130: addiu  $sp, $sp, -16      
  0019f134: lui   $v1, 0x006f0000     
  0019f138: lw     $v1, +22280($v1)      ; GLOBAL 0x006f5708
  0019f13c: lwc1   $at, +128($a0)     
  0019f140: lwc1   $zero, +96($a0)    
  0019f144: lw     $a1, +44($a0)      
  0019f148: lwc1   $v1, +60($a0)      
  0019f14c: lwc1   $v0, +616($v1)        ; GLOBAL 0x006f0268
  0019f150: f10.1  $zero,$s0,$at      
  0019f154: lw     $a1, +0($a1)       
  0019f158: f10.2  $v1,$s0,$v0        
  0019f15c: f10.34 $at,$s0,$zero      
  0019f160: f8.3   $zero,$t0,$zero    
  0019f164: addiu  $v1, $a1, +16      
  0019f168: beq    $zero, $zero, +8      ; br -> 0x0019f174
  0019f16c: sll    $zero, $zero, +0   
  0019f170: f10.6  $zero,$s0,$zero    
  0019f174: fmove  $zero,$a0,$zero    
  0019f178: sll    $zero, $zero, +0   
  0019f17c: f10.36 $at,$s0,$zero      
  0019f180: f8.19  $zero,$t0,$at      
  0019f184: sll    $zero, $zero, +0   
  0019f188: sll    $zero, $zero, +0   
  0019f18c: sll    $zero, $zero, +0   
  0019f190: f10.3  $at,$s0,$v1        
  0019f194: addiu  $a1, $sp, +0       
  0019f198: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  0019f19c: sw     $v1, +0($a1)       
  0019f1a0: lw     $v1, +44($a0)      
  0019f1a4: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  0019f1a8: lw     $v1, +148($v1)        ; GLOBAL 0x006f0094
  0019f1ac: lwc1   $zero, +432($v1)      ; GLOBAL 0x006f01b0
  0019f1b0: f10.2  $at,$s0,$zero      
  0019f1b4: fmove  $zero,$zero,$v1    
  0019f1b8: op36    $a1,$at,$zero     
  0019f1bc: cop2   $v0,$a1,$v1        
  0019f1c0: cop2   $at,$fp,$v0        
  0019f1c4: op3e    $a1,$at,$zero     
  0019f1c8: lw     $v1, +44($a0)      
  0019f1cc: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  0019f1d0: lw     $v1, +148($v1)        ; GLOBAL 0x006f0094
  0019f1d4: addiu  $v1, $v1, +128     
  0019f1d8: op36    $v1,$at,$zero     
  0019f1dc: op36    $a1,$v0,$zero     
  0019f1e0: cop2   $at,$fp,$v0        
  0019f1e4: op3e    $v1,$at,$zero     
  0019f1e8: jr     $ra                
  0019f1ec: addiu  $sp, $sp, +16      

; globals: 0x006f0000(x3), 0x006f0094(x2), 0x006f5708(x1), 0x006f0268(x1), 0x006f01b0(x1)
