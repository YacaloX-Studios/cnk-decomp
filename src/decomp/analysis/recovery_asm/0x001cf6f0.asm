; 0x001cf6f0  FUN_001cf6f0  size=448  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=ptr;a3=int ret=ptr calls=
; 112 words

  001cf6f0: addiu  $sp, $sp, -64      
  001cf6f4: addiu  $v1, $zero, +1     
  001cf6f8: fmove  $zero,$a0,$a3      
  001cf6fc: sw     $v1, +140($a0)     
  001cf700: sw     $a3, +192($a0)     
  001cf704: lui   $t0, 0x3f800000     
  001cf708: f14.20 $zero,$s4,$zero    
  001cf70c: lui   $t4, 0x447a0000     
  001cf710: addiu  $a3, $sp, +12      
  001cf714: addiu  $t3, $sp, +8       
  001cf718: addiu  $t2, $sp, +4       
  001cf71c: addiu  $v1, $sp, +0       
  001cf720: sw     $t0, +0($a3)       
  001cf724: addiu  $t1, $sp, +48      
  001cf728: fmove  $zero,$a0,$t4      
  001cf72c: lwc1   $v0, +16($a0)      
  001cf730: f10.3  $at,$s0,$zero      
  001cf734: lwc1   $at, +20($a0)      
  001cf738: lwc1   $zero, +24($a0)    
  001cf73c: fmove  $zero,$a0,$t0      
  001cf740: sll    $zero, $zero, +0   
  001cf744: swc1   $v0, +0($sp)       
  001cf748: swc1   $at, +0($t2)       
  001cf74c: swc1   $zero, +0($t3)     
  001cf750: lw     $v1, +0($v1)       
  001cf754: sw     $v1, +0($t1)       
  001cf758: addiu  $t0, $sp, +32      
  001cf75c: lw     $v1, +0($a2)       
  001cf760: sw     $v1, +0($t0)          ; GLOBAL 0x3f800000
  001cf764: addiu  $a3, $sp, +16      
  001cf768: lw     $v1, +0($t1)       
  001cf76c: sw     $v1, +0($a3)       
  001cf770: fmove  $zero,$zero,$v1    
  001cf774: op36    $t0,$at,$zero     
  001cf778: cop2   $v0,$a1,$v1        
  001cf77c: cop2   $at,$fp,$v0        
  001cf780: op3e    $t0,$at,$zero     
  001cf784: op36    $a3,$at,$zero     
  001cf788: op36    $a1,$v0,$zero     
  001cf78c: cop2   $at,$fp,$v0        
  001cf790: op3e    $a3,$at,$zero     
  001cf794: lui   $v1, 0x3f000000     
  001cf798: fmove  $zero,$a0,$v1      
  001cf79c: fmove  $zero,$zero,$v1    
  001cf7a0: op36    $a3,$at,$zero     
  001cf7a4: cop2   $v0,$a1,$v1        
  001cf7a8: cop2   $at,$fp,$v0        
  001cf7ac: op3e    $a3,$at,$zero     
  001cf7b0: op36    $a3,$at,$zero     
  001cf7b4: op36    $t0,$v0,$zero     
  001cf7b8: cop2   $at,$fp,$v0        
  001cf7bc: op3e    $a3,$at,$zero     
  001cf7c0: addiu  $a2, $a0, +176     
  001cf7c4: lw     $v1, +0($a1)       
  001cf7c8: sw     $v1, +0($a2)       
  001cf7cc: addiu  $a1, $a0, +160     
  001cf7d0: lw     $v1, +0($t1)       
  001cf7d4: sw     $v1, +0($a1)       
  001cf7d8: op36    $a1,$at,$zero     
  001cf7dc: op36    $a2,$v0,$zero     
  001cf7e0: cop2   $at,$fp,$v0        
  001cf7e4: op3e    $a1,$at,$zero     
  001cf7e8: lui   $v1, 0x3e800000     
  001cf7ec: fmove  $zero,$a0,$v1      
  001cf7f0: fmove  $zero,$zero,$v1    
  001cf7f4: op36    $a1,$at,$zero     
  001cf7f8: cop2   $v0,$a1,$v1        
  001cf7fc: cop2   $at,$fp,$v0        
  001cf800: op3e    $a1,$at,$zero     
  001cf804: op36    $a1,$at,$zero     
  001cf808: op36    $a3,$v0,$zero     
  001cf80c: cop2   $at,$fp,$v0        
  001cf810: op3e    $a1,$at,$zero     
  001cf814: op36    $a1,$at,$zero     
  001cf818: op36    $a2,$v0,$zero     
  001cf81c: cop2   $at,$fp,$v0        
  001cf820: op3e    $a1,$at,$zero     
  001cf824: f10.1a $zero,$s0,$a0      
  001cf828: f10.1d $at,$s0,$a0        
  001cf82c: f10.3  $v1,$s0,$zero      
  001cf830: fmove  $zero,$zero,$v1    
  001cf834: op36    $a1,$at,$zero     
  001cf838: cop2   $v0,$a1,$v1        
  001cf83c: cop2   $at,$fp,$v0        
  001cf840: op3e    $a1,$at,$zero     
  001cf844: addiu  $v1, $a0, +144     
  001cf848: lw     $a0, +0($a1)       
  001cf84c: sw     $a0, +0($v1)          ; GLOBAL 0x3e800000
  001cf850: f10.7  $a0,$s0,$zero      
  001cf854: fmove  $zero,$zero,$a0    
  001cf858: op36    $v1,$at,$zero     
  001cf85c: cop2   $v0,$a1,$a0        
  001cf860: cop2   $at,$fp,$v0        
  001cf864: op3e    $v1,$at,$zero     
  001cf868: op36    $v1,$at,$zero     
  001cf86c: op36    $a2,$v0,$zero     
  001cf870: cop2   $at,$fp,$v0        
  001cf874: op3e    $v1,$at,$zero     
  001cf878: op36    $v1,$at,$zero     
  001cf87c: op36    $t1,$v0,$zero     
  001cf880: cop2   $at,$fp,$v0        
  001cf884: op3e    $v1,$at,$zero     
  001cf888: f10.2  $a0,$s0,$a0        
  001cf88c: sll    $zero, $zero, +0   
  001cf890: f10.3  $v1,$s0,$zero      
  001cf894: fmove  $zero,$zero,$a0    
  001cf898: op36    $v1,$at,$zero     
  001cf89c: cop2   $v0,$a1,$a0        
  001cf8a0: cop2   $at,$fp,$v0        
  001cf8a4: op3e    $v1,$at,$zero     
  001cf8a8: jr     $ra                
  001cf8ac: addiu  $sp, $sp, +64      

; globals: 0x3f800000(x1), 0x3e800000(x1)
