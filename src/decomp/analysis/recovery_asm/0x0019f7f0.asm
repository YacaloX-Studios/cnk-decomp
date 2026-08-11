; 0x0019f7f0  FUN_0019f7f0  size=240  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=- ret=ptr calls=
; 60 words

  0019f7f0: addiu  $sp, $sp, -16      
  0019f7f4: lw     $a1, +44($a0)      
  0019f7f8: lw     $v1, +56($a0)      
  0019f7fc: lwc1   $v0, +60($a0)      
  0019f800: lw     $a1, +0($a1)       
  0019f804: lw     $v1, +68($v1)      
  0019f808: beq    $v1, $zero, +24       ; br -> 0x0019f824
  0019f80c: addiu  $a2, $a1, +16      
  0019f810: lui   $v1, 0x006f0000     
  0019f814: lw     $v1, +22280($v1)      ; GLOBAL 0x006f5708
  0019f818: lwc1   $zero, +372($v1)      ; GLOBAL 0x006f0174
  0019f81c: beq    $zero, $zero, +20     ; br -> 0x0019f834
  0019f820: f10.2  $v0,$s0,$zero      
  0019f824: lui   $v1, 0x006f0000     
  0019f828: lw     $v1, +22280($v1)      ; GLOBAL 0x006f5708
  0019f82c: lwc1   $zero, +368($v1)      ; GLOBAL 0x006f0170
  0019f830: f10.2  $v0,$s0,$zero      
  0019f834: lwc1   $at, +128($a0)     
  0019f838: lwc1   $zero, +96($a0)    
  0019f83c: f10.1  $zero,$s0,$at      
  0019f840: f10.34 $v1,$s0,$zero      
  0019f844: f8.3   $zero,$t0,$zero    
  0019f848: sll    $zero, $zero, +0   
  0019f84c: beq    $zero, $zero, +8      ; br -> 0x0019f858
  0019f850: sll    $zero, $zero, +0   
  0019f854: f10.6  $zero,$s0,$zero    
  0019f858: fmove  $zero,$a0,$zero    
  0019f85c: sll    $zero, $zero, +0   
  0019f860: f10.36 $v1,$s0,$zero      
  0019f864: f8.19  $zero,$t0,$at      
  0019f868: sll    $zero, $zero, +0   
  0019f86c: sll    $zero, $zero, +0   
  0019f870: sll    $zero, $zero, +0   
  0019f874: f10.3  $v1,$s0,$v0        
  0019f878: addiu  $a1, $sp, +0       
  0019f87c: lw     $v1, +0($a2)       
  0019f880: sw     $v1, +0($a1)       
  0019f884: lw     $v1, +44($a0)      
  0019f888: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  0019f88c: lw     $v1, +148($v1)        ; GLOBAL 0x006f0094
  0019f890: lwc1   $zero, +432($v1)      ; GLOBAL 0x006f01b0
  0019f894: f10.2  $at,$s0,$zero      
  0019f898: fmove  $zero,$zero,$v1    
  0019f89c: op36    $a1,$at,$zero     
  0019f8a0: cop2   $v0,$a1,$v1        
  0019f8a4: cop2   $at,$fp,$v0        
  0019f8a8: op3e    $a1,$at,$zero     
  0019f8ac: lw     $v1, +44($a0)      
  0019f8b0: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  0019f8b4: lw     $v1, +148($v1)        ; GLOBAL 0x006f0094
  0019f8b8: addiu  $v1, $v1, +128     
  0019f8bc: op36    $v1,$at,$zero     
  0019f8c0: op36    $a1,$v0,$zero     
  0019f8c4: cop2   $at,$fp,$v0        
  0019f8c8: op3e    $v1,$at,$zero     
  0019f8cc: jr     $ra                
  0019f8d0: addiu  $sp, $sp, +16      
  0019f8d4: sll    $zero, $zero, +0   
  0019f8d8: sll    $zero, $zero, +0   
  0019f8dc: sll    $zero, $zero, +0   

; globals: 0x006f5708(x2), 0x006f0000(x2), 0x006f0094(x2), 0x006f0174(x1), 0x006f0170(x1), 0x006f01b0(x1)
