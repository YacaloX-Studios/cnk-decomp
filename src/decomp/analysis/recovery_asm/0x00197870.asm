; 0x00197870  FUN_00197870  size=352  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=w ret=ptr calls=
; 88 words

  00197870: addiu  $sp, $sp, -32      
  00197874: lui   $v1, 0x006f0000     
  00197878: lw     $v1, +13672($v1)      ; GLOBAL 0x006f3568
  0019787c: beq    $v1, $zero, +28       ; br -> 0x0019789c
  00197880: sll $zero, $zero, 0       
  00197884: lw     $a2, +292($v1)        ; GLOBAL 0x006f0124
  00197888: lui   $v1, 0x00690000     
  0019788c: addiu  $v1, $v1, -18864   
  00197890: addu $v1, $v1, $a2        
  00197894: beq    $zero, $zero, +32     ; br -> 0x001978b8
  00197898: lw     $v1, +0($v1)          ; GLOBAL 0x00690000
  0019789c: lui   $v1, 0x006f0000     
  001978a0: lui   $a2, 0x00690000     
  001978a4: lw     $v1, +13752($v1)      ; GLOBAL 0x006f35b8
  001978a8: addiu  $a2, $a2, -18864   
  001978ac: lw     $v1, +588($v1)        ; GLOBAL 0x006f024c
  001978b0: addu $v1, $a2, $v1        
  001978b4: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  001978b8: beq    $v1, $zero, +268      ; br -> 0x001979c8
  001978bc: addiu  $a2, $sp, +16      
  001978c0: lw     $v1, +0($a1)       
  001978c4: sw     $v1, +0($a2)          ; GLOBAL 0x00690000
  001978c8: lw     $a1, +44($a0)      
  001978cc: addiu  $v1, $sp, +0       
  001978d0: lw     $a1, +0($a1)       
  001978d4: addiu  $a1, $a1, +32      
  001978d8: lw     $a1, +0($a1)       
  001978dc: sw     $a1, +0($v1)          ; GLOBAL 0x006f0000
  001978e0: lwc1   $v0, +0($a2)          ; GLOBAL 0x00690000
  001978e4: lwc1   $zero, +0($v1)        ; GLOBAL 0x006f0000
  001978e8: lwc1   $at, +4($a2)          ; GLOBAL 0x00690004
  001978ec: f10.1a $v0,$s0,$zero      
  001978f0: lwc1   $zero, +4($v1)        ; GLOBAL 0x006f0004
  001978f4: lwc1   $v0, +8($a2)          ; GLOBAL 0x00690008
  001978f8: f10.1e $at,$s0,$zero      
  001978fc: lwc1   $zero, +8($v1)        ; GLOBAL 0x006f0008
  00197900: f10.1c $v0,$s0,$zero      
  00197904: fmove  $zero,$zero,$a1    
  00197908: op36    $v1,$at,$zero     
  0019790c: cop2   $v0,$a1,$a1        
  00197910: cop2   $at,$fp,$v0        
  00197914: op3e    $v1,$at,$zero     
  00197918: op36    $a2,$at,$zero     
  0019791c: op36    $v1,$v0,$zero     
  00197920: cop2   $at,$fp,$v0        
  00197924: op3e    $a2,$at,$zero     
  00197928: lwc1   $a2, +0($a2)          ; GLOBAL 0x00690000
  0019792c: lwc1   $a3, +4($a2)          ; GLOBAL 0x00690004
  00197930: lwc1   $t0, +8($a2)          ; GLOBAL 0x00690008
  00197934: f10.1a $a2,$s0,$a2        
  00197938: f10.1e $a3,$s0,$a3        
  0019793c: f10.1c $t0,$s0,$t0        
  00197940: fmove  $zero,$a0,$zero    
  00197944: f10.32 $v1,$s0,$zero      
  00197948: f8.b   $zero,$t0,$at      
  0019794c: sll $zero, $zero, 0       
  00197950: f10.4  $zero,$s0,$v1      
  00197954: lwc1   $v0, +0($a2)          ; GLOBAL 0x00690000
  00197958: lwc1   $at, +4($a2)          ; GLOBAL 0x00690004
  0019795c: lwc1   $zero, +8($a2)        ; GLOBAL 0x00690008
  00197960: f10.3  $v0,$s0,$v1        
  00197964: f10.3  $at,$s0,$v1        
  00197968: f10.3  $zero,$s0,$v1      
  0019796c: swc1   $v0, +0($a2)          ; GLOBAL 0x00690000
  00197970: swc1   $at, +4($a2)          ; GLOBAL 0x00690004
  00197974: swc1   $zero, +8($a2)        ; GLOBAL 0x00690008
  00197978: lwc1   $zero, +792($a0)   
  0019797c: f10.34 $v1,$s0,$zero      
  00197980: f8.3   $zero,$t0,$zero    
  00197984: sll $zero, $zero, 0       
  00197988: beq    $zero, $zero, +12     ; br -> 0x00197998
  0019798c: lwc1   $zero, +788($a0)   
  00197990: f10.6  $zero,$s0,$zero    
  00197994: lwc1   $zero, +788($a0)   
  00197998: addiu  $a1, $sp, +16      
  0019799c: f10.2  $zero,$s0,$v1      
  001979a0: fmove  $zero,$zero,$v1    
  001979a4: op36    $a1,$at,$zero     
  001979a8: cop2   $v0,$a1,$v1        
  001979ac: cop2   $at,$fp,$v0        
  001979b0: op3e    $a1,$at,$zero     
  001979b4: addiu  $v1, $a0, +944     
  001979b8: op36    $v1,$at,$zero     
  001979bc: op36    $a1,$v0,$zero     
  001979c0: cop2   $at,$fp,$v0        
  001979c4: op3e    $v1,$at,$zero     
  001979c8: jr     $ra                
  001979cc: addiu  $sp, $sp, +32      

; globals: 0x00690000(x6), 0x00690004(x4), 0x00690008(x4), 0x006f0000(x3), 0x006f3568(x1), 0x006f0124(x1), 0x006f35b8(x1), 0x006f024c(x1), 0x006f0004(x1), 0x006f0008(x1)
