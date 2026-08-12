; 0x00154d50  FUN_00154d50  size=224  status=real_logic
; evidence: args=a0=int;a1=ptr;a2=int;a3=int ret=ptr calls=
; 56 words

  00154d50: addiu  $sp, $sp, -16      
  00154d54: lui   $v0, 0x7f7f0000     
  00154d58: ori    $v0, $v0, -1       
  00154d5c: daddu $a3, $zero, $zero   
  00154d60: fmove  $zero,$a0,$v0      
  00154d64: addiu  $a2, $sp, +4       
  00154d68: addiu  $v1, $sp, +8       
  00154d6c: lwc1   $a1, +4($a1)       
  00154d70: lwc1   $a0, +0($a1)       
  00154d74: lwc1   $v1, +8($a1)       
  00154d78: lw     $v0, +32($a0)      
  00154d7c: beq    $v0, $zero, +72       ; br -> 0x00154dc8
  00154d80: sll $zero, $zero, 0       
  00154d84: lw     $v0, +8($v0)          ; GLOBAL 0x7f7f0008
  00154d88: lwc1   $at, +12($v0)         ; GLOBAL 0x7f7f000c
  00154d8c: lwc1   $a3, +16($v0)         ; GLOBAL 0x7f7f0010
  00154d90: lwc1   $a2, +20($v0)         ; GLOBAL 0x7f7f0014
  00154d94: swc1   $at, +0($sp)       
  00154d98: f10.1  $a0,$s0,$at        
  00154d9c: f10.2  $at,$s0,$at        
  00154da0: f10.1  $a1,$s0,$a3        
  00154da4: f10.2  $at,$s0,$at        
  00154da8: f10.18 $v0,$s0,$at        
  00154dac: f10.1  $v1,$s0,$a2        
  00154db0: f10.1c $at,$s0,$at        
  00154db4: f10.34 $at,$s0,$zero      
  00154db8: swc1   $a3, +0($a2)       
  00154dbc: f8.2   $zero,$t0,$zero    
  00154dc0: swc1   $a2, +0($v1)       
  00154dc4: f10.6  $at,$s0,$zero      
  00154dc8: addiu  $a3, $a3, +1       
  00154dcc: slti   $v0, $a3, +4       
  00154dd0: bne    $v0, $zero, -92       ; br -> 0x00154d78
  00154dd4: addiu  $a0, $a0, +20      
  00154dd8: jr     $ra                
  00154ddc: addiu  $sp, $sp, +16      
  00154de0: sll $v0, $a1, 2           
  00154de4: addu $v0, $v0, $a1        
  00154de8: sll $v0, $v0, 2           
  00154dec: addu $v0, $v0, $a0        
  00154df0: jr     $ra                
  00154df4: lw     $v0, +40($v0)         ; GLOBAL 0x7f7f0028
  00154df8: sll $zero, $zero, 0       
  00154dfc: sll $zero, $zero, 0       
  00154e00: sll $v0, $a1, 2           
  00154e04: addu $v0, $v0, $a1        
  00154e08: sll $v0, $v0, 2           
  00154e0c: addu $v0, $v0, $a0        
  00154e10: jr     $ra                
  00154e14: lw     $v0, +44($v0)         ; GLOBAL 0x7f7f002c
  00154e18: sll $zero, $zero, 0       
  00154e1c: sll $zero, $zero, 0       
  00154e20: lw     $v1, +8($a0)       
  00154e24: addiu  $a0, $zero, +1     
  00154e28: jr     $ra                
  00154e2c: sw     $a0, +124($v1)     

; globals: 0x7f7f0008(x1), 0x7f7f000c(x1), 0x7f7f0010(x1), 0x7f7f0014(x1), 0x7f7f0028(x1), 0x7f7f002c(x1)
