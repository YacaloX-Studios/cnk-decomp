; 0x0058d7c0  FUN_0058d7c0  size=496  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=ptr;a3=- ret=void calls=
; 124 words

  0058d7c0: lwc1   $at, +0($a1)       
  0058d7c4: lwc1   $zero, +0($a2)     
  0058d7c8: f10.1  $zero,$s0,$at      
  0058d7cc: f10.2  $t4,$s0,$zero      
  0058d7d0: f10.0  $at,$s0,$zero      
  0058d7d4: swc1   $zero, +0($a0)     
  0058d7d8: lwc1   $at, +4($a1)       
  0058d7dc: lwc1   $zero, +4($a2)     
  0058d7e0: f10.1  $zero,$s0,$at      
  0058d7e4: f10.2  $t4,$s0,$zero      
  0058d7e8: f10.0  $at,$s0,$zero      
  0058d7ec: swc1   $zero, +4($a0)     
  0058d7f0: lwc1   $at, +8($a1)       
  0058d7f4: lwc1   $zero, +8($a2)     
  0058d7f8: f10.1  $zero,$s0,$at      
  0058d7fc: f10.2  $t4,$s0,$zero      
  0058d800: f10.0  $at,$s0,$zero      
  0058d804: jr     $ra                
  0058d808: swc1   $zero, +8($a0)     
  0058d80c: sll    $zero, $zero, +0   
  0058d810: lwc1   $a1, +0($a1)       
  0058d814: lwc1   $v0, +0($a2)       
  0058d818: lwc1   $a0, +4($a1)       
  0058d81c: lwc1   $at, +16($a2)      
  0058d820: lwc1   $v1, +8($a1)       
  0058d824: lwc1   $zero, +32($a2)    
  0058d828: f10.2  $a1,$s0,$v0        
  0058d82c: f10.2  $a0,$s0,$at        
  0058d830: f10.18 $v0,$s0,$at        
  0058d834: f10.1c $v1,$s0,$zero      
  0058d838: swc1   $zero, +0($a0)     
  0058d83c: lwc1   $v0, +4($a2)       
  0058d840: lwc1   $at, +20($a2)      
  0058d844: lwc1   $zero, +36($a2)    
  0058d848: f10.2  $a1,$s0,$v0        
  0058d84c: f10.2  $a0,$s0,$at        
  0058d850: f10.18 $v0,$s0,$at        
  0058d854: f10.1c $v1,$s0,$zero      
  0058d858: swc1   $zero, +4($a0)     
  0058d85c: lwc1   $v0, +8($a2)       
  0058d860: lwc1   $at, +24($a2)      
  0058d864: lwc1   $zero, +40($a2)    
  0058d868: f10.2  $a1,$s0,$v0        
  0058d86c: f10.2  $a0,$s0,$at        
  0058d870: f10.18 $v0,$s0,$at        
  0058d874: f10.1c $v1,$s0,$zero      
  0058d878: jr     $ra                
  0058d87c: swc1   $zero, +8($a0)     
  0058d880: lwc1   $a3, +0($a1)       
  0058d884: lui   $v1, 0x3f800000     
  0058d888: lwc1   $a0, +0($a2)       
  0058d88c: lwc1   $a2, +4($a1)       
  0058d890: lwc1   $v1, +16($a2)      
  0058d894: lwc1   $a1, +8($a1)       
  0058d898: lwc1   $v0, +32($a2)      
  0058d89c: lwc1   $at, +48($a2)      
  0058d8a0: f10.2  $a3,$s0,$a0        
  0058d8a4: f10.2  $a2,$s0,$v1        
  0058d8a8: f10.18 $a0,$s0,$v1        
  0058d8ac: f10.1c $a1,$s0,$v0        
  0058d8b0: f10.0  $at,$s0,$v0        
  0058d8b4: swc1   $at, +0($a0)       
  0058d8b8: lwc1   $a0, +4($a2)       
  0058d8bc: lwc1   $v1, +20($a2)      
  0058d8c0: lwc1   $v0, +36($a2)      
  0058d8c4: lwc1   $at, +52($a2)      
  0058d8c8: fmove  $zero,$a0,$v1      
  0058d8cc: f10.2  $a3,$s0,$a0        
  0058d8d0: f10.2  $a2,$s0,$v1        
  0058d8d4: f10.18 $a0,$s0,$v1        
  0058d8d8: f10.1c $a1,$s0,$v0        
  0058d8dc: f10.0  $at,$s0,$v0        
  0058d8e0: swc1   $at, +4($a0)       
  0058d8e4: lwc1   $a0, +8($a2)       
  0058d8e8: lwc1   $v1, +24($a2)      
  0058d8ec: lwc1   $v0, +40($a2)      
  0058d8f0: lwc1   $at, +56($a2)      
  0058d8f4: f10.2  $a3,$s0,$a0        
  0058d8f8: f10.2  $a2,$s0,$v1        
  0058d8fc: f10.18 $a0,$s0,$v1        
  0058d900: f10.1c $a1,$s0,$v0        
  0058d904: f10.0  $at,$s0,$v0        
  0058d908: swc1   $at, +8($a0)       
  0058d90c: lwc1   $a0, +12($a2)      
  0058d910: lwc1   $v1, +28($a2)      
  0058d914: lwc1   $v0, +44($a2)      
  0058d918: lwc1   $at, +60($a2)      
  0058d91c: f10.2  $a3,$s0,$a0        
  0058d920: f10.2  $a2,$s0,$v1        
  0058d924: f10.18 $a0,$s0,$v1        
  0058d928: f10.1c $a1,$s0,$v0        
  0058d92c: f10.0  $at,$s0,$v0        
  0058d930: f10.32 $zero,$s0,$v0      
  0058d934: f8.1a  $zero,$t0,$at      
  0058d938: addiu  $sp, $sp, -16      
  0058d93c: swc1   $v0, +12($sp)      
  0058d940: andi   $v1, $zero, +1     
  0058d944: lw     $a2, +15($sp)      
  0058d948: sll    $v1, $zero, +7     
  0058d94c: addiu  $v1, $zero, -129   
  0058d950: lwc1   $zero, -32712($gp) 
  0058d954: and    $v1, $a2, +0       
  0058d958: or     $a1, $v1, +0       
  0058d95c: sw     $v1, +15($sp)      
  0058d960: lwc1   $at, +12($sp)      
  0058d964: f10.34 $at,$s0,$zero      
  0058d968: f8.2   $zero,$t0,$zero    
  0058d96c: lui   $v1, 0x3f800000     
  0058d970: f10.6  $zero,$s0,$zero    
  0058d974: fmove  $zero,$a0,$v1      
  0058d978: lwc1   $zero, +0($a0)     
  0058d97c: f10.3  $at,$s0,$v0        
  0058d980: f10.2  $zero,$s0,$at      
  0058d984: swc1   $zero, +0($a0)     
  0058d988: lwc1   $zero, +4($a0)     
  0058d98c: f10.2  $zero,$s0,$at      
  0058d990: swc1   $zero, +4($a0)     
  0058d994: lwc1   $zero, +8($a0)     
  0058d998: f10.2  $zero,$s0,$at      
  0058d99c: swc1   $zero, +8($a0)     
  0058d9a0: jr     $ra                
  0058d9a4: addiu  $sp, $sp, +16      
  0058d9a8: sll    $zero, $zero, +0   
  0058d9ac: sll    $zero, $zero, +0   
