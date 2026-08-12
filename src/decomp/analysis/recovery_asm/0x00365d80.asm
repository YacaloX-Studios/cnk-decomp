; 0x00365d80  FUN_00365d80  size=480  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 120 words

  00365d80: addiu  $sp, $sp, -160     
  00365d84: lui   $v1, 0x3f800000     
  00365d88: sw     $zero, +8($sp)     
  00365d8c: dsubu $a2, $zero, $zero   
  00365d90: sw     $zero, +4($sp)     
  00365d94: sw     $zero, +0($sp)     
  00365d98: sw     $v1, +12($sp)      
  00365d9c: sw     $zero, +24($sp)    
  00365da0: sw     $zero, +20($sp)    
  00365da4: sw     $zero, +16($sp)    
  00365da8: sw     $v1, +28($sp)      
  00365dac: sw     $zero, +40($sp)    
  00365db0: sw     $zero, +36($sp)    
  00365db4: sw     $zero, +32($sp)    
  00365db8: sw     $v1, +44($sp)      
  00365dbc: sw     $zero, +56($sp)    
  00365dc0: sw     $zero, +52($sp)    
  00365dc4: sw     $zero, +48($sp)    
  00365dc8: sw     $v1, +60($sp)      
  00365dcc: sw     $zero, +72($sp)    
  00365dd0: sw     $zero, +68($sp)    
  00365dd4: sw     $zero, +64($sp)    
  00365dd8: sw     $v1, +76($sp)      
  00365ddc: sw     $zero, +88($sp)    
  00365de0: sw     $zero, +84($sp)    
  00365de4: sw     $zero, +80($sp)    
  00365de8: sw     $v1, +92($sp)      
  00365dec: sw     $zero, +104($sp)   
  00365df0: sw     $zero, +100($sp)   
  00365df4: sw     $zero, +96($sp)    
  00365df8: sw     $v1, +108($sp)     
  00365dfc: sw     $v1, +124($sp)     
  00365e00: sw     $zero, +120($sp)   
  00365e04: sw     $zero, +116($sp)   
  00365e08: beq    $zero, $zero, +160    ; br -> 0x00365eac
  00365e0c: sw     $zero, +112($sp)   
  00365e10: beq    $v1, $zero, +12       ; br -> 0x00365e20
  00365e14: sll $zero, $zero, 0       
  00365e18: beq    $zero, $zero, +12     ; br -> 0x00365e28
  00365e1c: lwc1   $zero, +0($a0)     
  00365e20: lwc1   $zero, +16($a0)    
  00365e24: sll $zero, $zero, 0       
  00365e28: andi   $v1, $a2, +2       
  00365e2c: beq    $v1, $zero, +12       ; br -> 0x00365e3c
  00365e30: sll $zero, $zero, 0       
  00365e34: beq    $zero, $zero, +16     ; br -> 0x00365e48
  00365e38: lwc1   $at, +4($a0)       
  00365e3c: sll $zero, $zero, 0       
  00365e40: lwc1   $at, +20($a0)      
  00365e44: sll $zero, $zero, 0       
  00365e48: andi   $v1, $a2, +4       
  00365e4c: beq    $v1, $zero, +12       ; br -> 0x00365e5c
  00365e50: sll $zero, $zero, 0       
  00365e54: beq    $zero, $zero, +16     ; br -> 0x00365e68
  00365e58: lwc1   $v0, +8($a0)       
  00365e5c: sll $zero, $zero, 0       
  00365e60: lwc1   $v0, +24($a0)      
  00365e64: sll $zero, $zero, 0       
  00365e68: sll $v1, $a2, 4           
  00365e6c: addu $v1, $v1, $sp        
  00365e70: swc1   $zero, +0($v1)        ; GLOBAL 0x3f800000
  00365e74: addiu  $a3, $v1, +0       
  00365e78: swc1   $at, +4($v1)          ; GLOBAL 0x3f800004
  00365e7c: swc1   $v0, +8($v1)          ; GLOBAL 0x3f800008
  00365e80: op36    $a3,$t3,$zero     
  00365e84: op36    $a1,$t4,$zero     
  00365e88: op36    $a1,$t5,$zero     
  00365e8c: op36    $a1,$t6,$zero     
  00365e90: op36    $a1,$t7,$zero     
  00365e94: cop2   $t4,$fp,$t3        
  00365e98: cop2   $t5,$fp,$t3        
  00365e9c: cop2   $t6,$fp,$t3        
  00365ea0: cop2   $t7,$fp,$zero      
  00365ea4: op3e    $a3,$t3,$zero     
  00365ea8: addiu  $a2, $a2, +1       
  00365eac: sll $zero, $zero, 0       
  00365eb0: slti   $v1, $a2, +8       
  00365eb4: bne    $v1, $zero, -168      ; br -> 0x00365e10
  00365eb8: andi   $v1, $a2, +1       
  00365ebc: lui   $v1, 0x3f800000     
  00365ec0: lui   $a1, 0x7f7f0000     
  00365ec4: fmove  $zero,$a0,$v1      
  00365ec8: ori    $a1, $a1, -1       
  00365ecc: sw     $v1, +140($sp)     
  00365ed0: sw     $a1, +128($sp)     
  00365ed4: addiu  $v1, $sp, +128     
  00365ed8: sw     $a1, +132($sp)     
  00365edc: sw     $a1, +136($sp)     
  00365ee0: lw     $v1, +0($v1)          ; GLOBAL 0x3f800000
  00365ee4: sw     $v1, +0($a0)       
  00365ee8: lui   $v1, 0xff7f0000     
  00365eec: addiu  $a1, $sp, +144     
  00365ef0: ori    $v1, $v1, -1       
  00365ef4: addiu  $a3, $a0, +16      
  00365ef8: swc1   $zero, +156($sp)   
  00365efc: sw     $v1, +144($sp)     
  00365f00: sw     $v1, +148($sp)     
  00365f04: sw     $v1, +152($sp)     
  00365f08: lw     $v1, +0($a1)          ; GLOBAL 0x7f7f0000
  00365f0c: sw     $v1, +0($a3)       
  00365f10: beq    $zero, $zero, +48     ; br -> 0x00365f44
  00365f14: dsubu $a2, $zero, $zero   
  00365f18: addu $v1, $v1, $sp        
  00365f1c: addiu  $v1, $v1, +0       
  00365f20: op36    $a0,$at,$zero     
  00365f24: op36    $v1,$v0,$zero     
  00365f28: cop2   $at,$fp,$v0        
  00365f2c: op3e    $a0,$at,$zero     
  00365f30: op36    $a3,$at,$zero     
  00365f34: op36    $v1,$v0,$zero     
  00365f38: cop2   $at,$fp,$v0        
  00365f3c: op3e    $a3,$at,$zero     
  00365f40: addiu  $a2, $a2, +1       
  00365f44: sll $zero, $zero, 0       
  00365f48: slti   $v1, $a2, +8       
  00365f4c: bne    $v1, $zero, -56       ; br -> 0x00365f18
  00365f50: sll $v1, $a2, 4           
  00365f54: jr     $ra                
  00365f58: addiu  $sp, $sp, +160     
  00365f5c: sll $zero, $zero, 0       

; globals: 0x3f800000(x2), 0x3f800004(x1), 0x3f800008(x1), 0x7f7f0000(x1)
