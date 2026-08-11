; 0x00161de0  FUN_00161de0  size=432  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=ptr;a3=int ret=ptr calls=
; 108 words

  00161de0: addiu  $sp, $sp, -208     
  00161de4: lui   $v1, 0x3f800000     
  00161de8: lwc1   $at, +0($a1)       
  00161dec: sw     $v1, +204($sp)     
  00161df0: fmove  $zero,$a0,$v1      
  00161df4: sw     $zero, +200($sp)   
  00161df8: sw     $zero, +196($sp)   
  00161dfc: addiu  $a3, $sp, +80      
  00161e00: lui   $v1, 0x40000000     
  00161e04: sw     $zero, +192($sp)   
  00161e08: fmove  $zero,$a0,$v1      
  00161e0c: sll    $zero, $zero, +0   
  00161e10: f10.2  $v1,$s0,$at        
  00161e14: f10.2  $zero,$s0,$at      
  00161e18: f10.1  $zero,$s0,$v0      
  00161e1c: fmove  $zero,$zero,$v1    
  00161e20: op36    $a2,$at,$zero     
  00161e24: cop2   $v0,$a1,$v1        
  00161e28: cop2   $at,$fp,$v0        
  00161e2c: op3e    $a3,$at,$zero     
  00161e30: addiu  $v1, $sp, +176     
  00161e34: lw     $a3, +0($a3)       
  00161e38: sw     $a3, +0($v1)          ; GLOBAL 0x40000000
  00161e3c: addiu  $t1, $sp, +192     
  00161e40: lw     $v1, +0($v1)          ; GLOBAL 0x40000000
  00161e44: sw     $v1, +0($t1)       
  00161e48: addiu  $t0, $a1, +16      
  00161e4c: addiu  $v1, $sp, +0       
  00161e50: op36    $t0,$at,$zero     
  00161e54: op36    $a2,$v0,$zero     
  00161e58: cop2   $at,$fp,$v0        
  00161e5c: cop2   $v0,$fp,$at        
  00161e60: op3e    $v1,$at,$zero     
  00161e64: addiu  $a3, $sp, +96      
  00161e68: lw     $v1, +0($v1)          ; GLOBAL 0x40000000
  00161e6c: sw     $v1, +0($a3)       
  00161e70: lwc1   $zero, +0($a1)     
  00161e74: addiu  $v1, $sp, +32      
  00161e78: fmove  $zero,$zero,$a1    
  00161e7c: op36    $a3,$at,$zero     
  00161e80: cop2   $v0,$a1,$a1        
  00161e84: cop2   $at,$fp,$v0        
  00161e88: op3e    $v1,$at,$zero     
  00161e8c: addiu  $a3, $sp, +112     
  00161e90: lw     $v1, +0($v1)          ; GLOBAL 0x40000000
  00161e94: sw     $v1, +0($a3)       
  00161e98: lwc1   $v0, +0($t0)       
  00161e9c: lwc1   $zero, +0($a2)     
  00161ea0: lwc1   $at, +4($t0)       
  00161ea4: f10.1a $v0,$s0,$zero      
  00161ea8: lwc1   $zero, +4($a2)     
  00161eac: lwc1   $v0, +8($t0)       
  00161eb0: f10.1e $at,$s0,$zero      
  00161eb4: lwc1   $zero, +8($a2)     
  00161eb8: f10.1c $v0,$s0,$zero      
  00161ebc: addiu  $a1, $sp, +16      
  00161ec0: fmove  $zero,$zero,$v1    
  00161ec4: op36    $t0,$at,$zero     
  00161ec8: cop2   $v0,$a1,$v1        
  00161ecc: cop2   $at,$fp,$v0        
  00161ed0: op3e    $a1,$at,$zero     
  00161ed4: addiu  $v1, $sp, +128     
  00161ed8: lw     $a1, +0($a1)       
  00161edc: sw     $a1, +0($v1)          ; GLOBAL 0x40000000
  00161ee0: addiu  $a1, $sp, +48      
  00161ee4: op36    $v1,$at,$zero     
  00161ee8: op36    $a3,$v0,$zero     
  00161eec: cop2   $at,$fp,$v0        
  00161ef0: op3e    $a1,$at,$zero     
  00161ef4: addiu  $v1, $sp, +144     
  00161ef8: lw     $a1, +0($a1)       
  00161efc: sw     $a1, +0($v1)          ; GLOBAL 0x40000000
  00161f00: addiu  $a1, $sp, +64      
  00161f04: fmove  $zero,$zero,$a2    
  00161f08: op36    $v1,$at,$zero     
  00161f0c: cop2   $v0,$a1,$a2        
  00161f10: cop2   $at,$fp,$v0        
  00161f14: op3e    $a1,$at,$zero     
  00161f18: addiu  $v1, $sp, +160     
  00161f1c: lw     $a1, +0($a1)       
  00161f20: sw     $a1, +0($v1)          ; GLOBAL 0x40000000
  00161f24: op36    $t1,$at,$zero     
  00161f28: op36    $v1,$v0,$zero     
  00161f2c: cop2   $at,$fp,$v0        
  00161f30: op3e    $t1,$at,$zero     
  00161f34: lw     $v1, +0($t1)       
  00161f38: sw     $v1, +0($a0)       
  00161f3c: jr     $ra                
  00161f40: addiu  $sp, $sp, +208     
  00161f44: sll    $zero, $zero, +0   
  00161f48: sll    $zero, $zero, +0   
  00161f4c: sll    $zero, $zero, +0   
  00161f50: lwc1   $zero, +0($a1)     
  00161f54: sw     $zero, +24($a0)    
  00161f58: sw     $zero, +20($a0)    
  00161f5c: lui   $v0, 0x3f800000     
  00161f60: sw     $zero, +16($a0)    
  00161f64: addiu  $v1, $a1, +16      
  00161f68: sw     $v0, +28($a0)      
  00161f6c: addiu  $v0, $a0, +16      
  00161f70: swc1   $zero, +0($a0)     
  00161f74: lw     $v1, +0($v1)          ; GLOBAL 0x40000000
  00161f78: sw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  00161f7c: jr     $ra                
  00161f80: dsubu  $zero, $a0, +0     
  00161f84: sll    $zero, $zero, +0   
  00161f88: sll    $zero, $zero, +0   
  00161f8c: sll    $zero, $zero, +0   

; globals: 0x40000000(x8), 0x3f800000(x1)
