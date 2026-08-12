; 0x00195cd0  FUN_00195cd0  size=384  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=void calls=
; 96 words

  00195cd0: sw     $zero, +1260($a0)  
  00195cd4: addiu  $v1, $zero, +1     
  00195cd8: jr     $ra                
  00195cdc: sb     $v1, +1264($a0)    
  00195ce0: lw     $v1, +44($a0)      
  00195ce4: lw     $v1, +0($v1)       
  00195ce8: addiu  $t0, $v1, +80      
  00195cec: addiu  $v1, $v1, +16      
  00195cf0: lwc1   $v0, +0($v1)       
  00195cf4: lwc1   $zero, +0($t0)     
  00195cf8: lwc1   $at, +4($v1)       
  00195cfc: f10.1a $v0,$s0,$zero      
  00195d00: lwc1   $zero, +4($t0)     
  00195d04: lwc1   $v0, +8($v1)       
  00195d08: f10.1e $at,$s0,$zero      
  00195d0c: lwc1   $zero, +8($t0)     
  00195d10: f10.1c $v0,$s0,$zero      
  00195d14: lwc1   $zero, +204($a0)   
  00195d18: f10.36 $at,$s0,$zero      
  00195d1c: f8.8   $zero,$t0,$zero    
  00195d20: sll $zero, $zero, 0       
  00195d24: lwc1   $v0, +0($a3)       
  00195d28: lwc1   $at, +4($a3)       
  00195d2c: lwc1   $zero, +8($a3)     
  00195d30: swc1   $v0, +0($a1)       
  00195d34: swc1   $at, +4($a1)       
  00195d38: beq    $zero, $zero, +28     ; br -> 0x00195d58
  00195d3c: swc1   $zero, +8($a1)     
  00195d40: lwc1   $v0, +0($a2)       
  00195d44: lwc1   $at, +4($a2)       
  00195d48: lwc1   $zero, +8($a2)     
  00195d4c: swc1   $v0, +0($a1)       
  00195d50: swc1   $at, +4($a1)       
  00195d54: swc1   $zero, +8($a1)     
  00195d58: lw     $a2, +1060($a0)    
  00195d5c: lui   $v1, 0x3f800000     
  00195d60: lwc1   $zero, +0($a1)     
  00195d64: fmove  $zero,$a0,$v1      
  00195d68: lwc1   $v0, +24($a2)      
  00195d6c: lwc1   $at, +28($a2)      
  00195d70: f10.2  $zero,$s0,$v0      
  00195d74: swc1   $zero, +0($a1)     
  00195d78: lwc1   $zero, +4($a1)     
  00195d7c: f10.2  $zero,$s0,$at      
  00195d80: swc1   $zero, +4($a1)     
  00195d84: lwc1   $zero, +8($a1)     
  00195d88: f10.2  $zero,$s0,$v0      
  00195d8c: swc1   $zero, +8($a1)     
  00195d90: lwc1   $at, +1012($a0)    
  00195d94: lwc1   $zero, +0($a1)     
  00195d98: f10.1  $v1,$s0,$at        
  00195d9c: f10.2  $at,$s0,$zero      
  00195da0: swc1   $zero, +0($a1)     
  00195da4: lbu    $v1, +1105($a0)    
  00195da8: beq    $v1, $zero, +104      ; br -> 0x00195e14
  00195dac: sll $zero, $zero, 0       
  00195db0: lwc1   $at, +1080($a0)    
  00195db4: lwc1   $v0, +728($a0)     
  00195db8: f10.34 $at,$s0,$v0        
  00195dbc: f8.15  $zero,$t0,$at      
  00195dc0: sll $zero, $zero, 0       
  00195dc4: lwc1   $zero, +724($a0)   
  00195dc8: f10.34 $at,$s0,$zero      
  00195dcc: f8.3   $zero,$t0,$at      
  00195dd0: sll $zero, $zero, 0       
  00195dd4: beq    $zero, $zero, +20     ; br -> 0x00195dec
  00195dd8: lwc1   $v0, +732($a0)     
  00195ddc: f10.1  $at,$s0,$v0        
  00195de0: f10.1  $zero,$s0,$v0      
  00195de4: f10.3  $at,$s0,$zero      
  00195de8: lwc1   $v0, +732($a0)     
  00195dec: lui   $v1, 0x3f800000     
  00195df0: fmove  $zero,$a0,$v1      
  00195df4: lwc1   $zero, +0($a1)     
  00195df8: f10.2  $v0,$s0,$v1        
  00195dfc: f10.1  $at,$s0,$v0        
  00195e00: f10.2  $at,$s0,$zero      
  00195e04: swc1   $zero, +0($a1)     
  00195e08: lwc1   $zero, +8($a1)     
  00195e0c: f10.2  $at,$s0,$zero      
  00195e10: swc1   $zero, +8($a1)     
  00195e14: jr     $ra                
  00195e18: sll $zero, $zero, 0       
  00195e1c: sll $zero, $zero, 0       
  00195e20: lwc1   $at, +1068($a0)    
  00195e24: lwc1   $zero, +740($a0)   
  00195e28: f10.34 $at,$s0,$zero      
  00195e2c: f8.4   $zero,$t0,$at      
  00195e30: sll $zero, $zero, 0       
  00195e34: lwc1   $zero, +744($a0)   
  00195e38: f10.36 $at,$s0,$zero      
  00195e3c: sll $zero, $zero, 0       
  00195e40: jr     $ra                
  00195e44: sll $zero, $zero, 0       
  00195e48: sll $zero, $zero, 0       
  00195e4c: sll $zero, $zero, 0       
