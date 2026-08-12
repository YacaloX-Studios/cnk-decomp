; 0x00165e70  FUN_00165e70  size=240  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=int ret=ptr calls=
; 60 words

  00165e70: addiu  $sp, $sp, -32      
  00165e74: lbu    $v1, +136($a0)     
  00165e78: bne    $v1, $zero, +64       ; br -> 0x00165ebc
  00165e7c: sll $zero, $zero, 0       
  00165e80: lw     $v1, +8($a0)       
  00165e84: lwc1   $zero, +108($v1)   
  00165e88: swc1   $zero, +0($a1)     
  00165e8c: lwc1   $a1, +96($v1)      
  00165e90: lwc1   $a2, +100($v1)     
  00165e94: lwc1   $a3, +104($v1)     
  00165e98: lwc1   $zero, +132($v1)   
  00165e9c: swc1   $a1, +0($sp)       
  00165ea0: swc1   $a2, +4($sp)       
  00165ea4: swc1   $a3, +8($sp)       
  00165ea8: swc1   $zero, +0($a3)     
  00165eac: swc1   $a1, +0($a2)       
  00165eb0: swc1   $a2, +4($a2)       
  00165eb4: beq    $zero, $zero, +152    ; br -> 0x00165f50
  00165eb8: swc1   $a3, +8($a2)       
  00165ebc: lwc1   $v0, +4($a2)       
  00165ec0: lui   $v1, 0x3f800000     
  00165ec4: lwc1   $v1, +0($a2)       
  00165ec8: lwc1   $a1, +120($a0)     
  00165ecc: lwc1   $a2, +124($a0)     
  00165ed0: lwc1   $a3, +128($a0)     
  00165ed4: lwc1   $a0, +8($a2)       
  00165ed8: f10.2  $v0,$s0,$v0        
  00165edc: f10.2  $v1,$s0,$v1        
  00165ee0: f10.18 $v1,$s0,$v0        
  00165ee4: f10.1c $a0,$s0,$a0        
  00165ee8: f10.4  $zero,$s0,$v0      
  00165eec: fmove  $zero,$a0,$v1      
  00165ef0: lwc1   $zero, +0($a2)     
  00165ef4: f10.3  $at,$s0,$v0        
  00165ef8: f10.2  $zero,$s0,$at      
  00165efc: swc1   $zero, +0($a2)     
  00165f00: lwc1   $zero, +4($a2)     
  00165f04: swc1   $a1, +16($sp)      
  00165f08: swc1   $a2, +20($sp)      
  00165f0c: f10.2  $zero,$s0,$at      
  00165f10: swc1   $zero, +4($a2)     
  00165f14: lwc1   $zero, +8($a2)     
  00165f18: f10.2  $zero,$s0,$at      
  00165f1c: swc1   $zero, +8($a2)     
  00165f20: swc1   $v0, +0($a1)       
  00165f24: lw     $v1, +2196($a0)    
  00165f28: addiu  $v1, $v1, -1       
  00165f2c: regimm $v1, $zero, +24       ; br -> 0x00165f48
  00165f30: swc1   $a3, +24($sp)      
  00165f34: sll $v1, $v1, 5           
  00165f38: addu $v1, $v1, $a0        
  00165f3c: lwc1   $zero, +156($v1)      ; GLOBAL 0x3f80009c
  00165f40: beq    $zero, $zero, -152    ; br -> 0x00165eac
  00165f44: swc1   $zero, +0($a3)     
  00165f48: beq    $zero, $zero, -24     ; br -> 0x00165f34
  00165f4c: addiu  $v1, $zero, +63    
  00165f50: jr     $ra                
  00165f54: addiu  $sp, $sp, +32      
  00165f58: sll $zero, $zero, 0       
  00165f5c: sll $zero, $zero, 0       

; globals: 0x3f80009c(x1)
