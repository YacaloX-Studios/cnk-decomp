; 0x00428c50  FUN_00428c50  size=760  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=- ret=ptr calls=
; 190 words

  00428c50: andi   $v0, $a0, +7       
  00428c54: bne    $v0, $zero, +376      ; br -> 0x00428dd0
  00428c58: andi   $a1, $a1, +255     
  00428c5c: spec38  $zero,$a1,$v1     
  00428c60: ori    $a2, $zero, -32640 
  00428c64: spec38  $zero,$a2,$a2     
  00428c68: ori    $a2, $a2, -32640   
  00428c6c: spec38  $zero,$a2,$a2     
  00428c70: ori    $a2, $a2, -32640   
  00428c74: spec38  $zero,$a2,$a2     
  00428c78: ori    $a2, $a2, +257     
  00428c7c: daddu $t2, $v1, $a1       
  00428c80: andi   $v1, $a0, +15      
  00428c84: spec38  $zero,$t2,$v0     
  00428c88: ori    $t0, $zero, -32640 
  00428c8c: spec38  $zero,$t0,$t0     
  00428c90: ori    $t0, $t0, -32640   
  00428c94: spec38  $zero,$t0,$t0     
  00428c98: ori    $t0, $t0, -32640   
  00428c9c: spec38  $zero,$t0,$t0     
  00428ca0: ori    $t0, $t0, -32640   
  00428ca4: daddu $v0, $v0, $t2       
  00428ca8: spec3c  $zero,$v0,$t2     
  00428cac: bne    $v1, $zero, +152      ; br -> 0x00428d48
  00428cb0: daddu $a3, $v0, $t2       
  00428cb4: lq     $t1, +0($a0)       
  00428cb8: mmi2   $t2,$a2,$a2        
  00428cbc: mmi2   $v1,$zero,$t1      
  00428cc0: mmi2   $v0,$t1,$t2        
  00428cc4: mmi2   $a2,$t0,$t0        
  00428cc8: mmi2   $v0,$v0,$v1        
  00428ccc: mmi2   $t0,$a3,$a3        
  00428cd0: mmi2   $v0,$v0,$a2        
  00428cd4: mmi2   $v1,$v0,$a3        
  00428cd8: or $v1, $v0, $v1          
  00428cdc: bnel   $v1, $zero, +244      ; br -> 0x00428dd4
  00428ce0: lbu    $v0, +0($a0)       
  00428ce4: mmi2   $v0,$t1,$t0        
  00428ce8: mmi2   $v1,$v0,$t2        
  00428cec: mmi2   $v0,$zero,$v0      
  00428cf0: ori    $t0, $zero, -32640 
  00428cf4: spec38  $zero,$t0,$t0     
  00428cf8: ori    $t0, $t0, -32640   
  00428cfc: spec38  $zero,$t0,$t0     
  00428d00: ori    $t0, $t0, -32640   
  00428d04: spec38  $zero,$t0,$t0     
  00428d08: ori    $t0, $t0, -32640   
  00428d0c: mmi2   $v1,$v1,$v0        
  00428d10: mmi2   $v1,$v1,$a2        
  00428d14: ori    $a2, $zero, -32640 
  00428d18: spec38  $zero,$a2,$a2     
  00428d1c: ori    $a2, $a2, -32640   
  00428d20: spec38  $zero,$a2,$a2     
  00428d24: ori    $a2, $a2, -32640   
  00428d28: spec38  $zero,$a2,$a2     
  00428d2c: ori    $a2, $a2, +257     
  00428d30: mmi2   $v0,$v1,$a1        
  00428d34: or $v1, $v0, $v1          
  00428d38: beql   $v1, $zero, -136      ; br -> 0x00428cb4
  00428d3c: addiu  $a0, $a0, +16      
  00428d40: beq    $zero, $zero, +144    ; br -> 0x00428dd4
  00428d44: lbu    $v0, +0($a0)       
  00428d48: ld     $t1, +0($a0)       
  00428d4c: nor $v1, $zero, $t1       
  00428d50: dsubu $v0, $t1, $a2       
  00428d54: and $v0, $v0, $v1         
  00428d58: and $v0, $v0, $t0         
  00428d5c: bnel   $v0, $zero, +116      ; br -> 0x00428dd4
  00428d60: lbu    $v0, +0($a0)       
  00428d64: xor $v0, $t1, $a3         
  00428d68: dsubu $v1, $v0, $a2       
  00428d6c: nor $v0, $zero, $v0       
  00428d70: and $v1, $v1, $v0         
  00428d74: and $v1, $v1, $t0         
  00428d78: bnel   $v1, $zero, +88       ; br -> 0x00428dd4
  00428d7c: lbu    $v0, +0($a0)       
  00428d80: daddu $t1, $a2, $zero     
  00428d84: addiu  $a0, $a0, +8       
  00428d88: ld     $a2, +0($a0)       
  00428d8c: dsubu $v0, $a2, $t1       
  00428d90: nor $v1, $zero, $a2       
  00428d94: and $v0, $v0, $v1         
  00428d98: and $v0, $v0, $t0         
  00428d9c: bne    $v0, $zero, +48       ; br -> 0x00428dd0
  00428da0: xor $v0, $a2, $a3         
  00428da4: nor $v1, $zero, $v0       
  00428da8: dsubu $v0, $v0, $t1       
  00428dac: and $v0, $v0, $v1         
  00428db0: and $v0, $v0, $t0         
  00428db4: beql   $v0, $zero, -48       ; br -> 0x00428d88
  00428db8: addiu  $a0, $a0, +8       
  00428dbc: beq    $zero, $zero, +20     ; br -> 0x00428dd4
  00428dc0: lbu    $v0, +0($a0)       
  00428dc4: beql   $v0, $a1, +28         ; br -> 0x00428de4
  00428dc8: lbu    $v1, +0($a0)       
  00428dcc: addiu  $a0, $a0, +1       
  00428dd0: lbu    $v0, +0($a0)       
  00428dd4: sll $zero, $zero, 0       
  00428dd8: bne    $v0, $zero, -24       ; br -> 0x00428dc4
  00428ddc: sll $zero, $zero, 0       
  00428de0: lbu    $v1, +0($a0)       
  00428de4: daddu $v0, $zero, $zero   
  00428de8: xor $v1, $v1, $a1         
  00428dec: jr     $ra                
  00428df0: movz   $v0, $a0, $v1      
  00428df4: sll $zero, $zero, 0       
  00428df8: or $t0, $a0, $a1          
  00428dfc: andi   $v0, $t0, +7       
  00428e00: bnel   $v0, $zero, +300      ; br -> 0x00428f30
  00428e04: lb     $v0, +0($a0)       
  00428e08: andi   $t1, $t0, +15      
  00428e0c: ori    $a3, $zero, -32640 
  00428e10: spec38  $zero,$a3,$a3     
  00428e14: ori    $a3, $a3, -32640   
  00428e18: spec38  $zero,$a3,$a3     
  00428e1c: ori    $a3, $a3, -32640   
  00428e20: spec38  $zero,$a3,$a3     
  00428e24: ori    $a3, $a3, +257     
  00428e28: ori    $a2, $zero, -32640 
  00428e2c: spec38  $zero,$a2,$a2     
  00428e30: ori    $a2, $a2, -32640   
  00428e34: spec38  $zero,$a2,$a2     
  00428e38: ori    $a2, $a2, -32640   
  00428e3c: spec38  $zero,$a2,$a2     
  00428e40: ori    $a2, $a2, -32640   
  00428e44: bne    $t1, $zero, +124      ; br -> 0x00428ec4
  00428e48: ld     $v0, +0($a1)       
  00428e4c: lq     $v1, +0($a0)       
  00428e50: mmi2   $t0,$a3,$a3        
  00428e54: lq     $v0, +0($a1)       
  00428e58: mmi2   $t2,$a2,$a2        
  00428e5c: mmi2   $a3,$v0,$v1        
  00428e60: mmi2   $a2,$a3,$a0        
  00428e64: or $v1, $a2, $a3          
  00428e68: bnel   $v1, $zero, +196      ; br -> 0x00428f30
  00428e6c: lb     $v0, +0($a0)       
  00428e70: lq     $v0, +0($a0)       
  00428e74: mmi2   $v1,$zero,$v0      
  00428e78: mmi2   $v0,$v0,$t0        
  00428e7c: mmi2   $v0,$v0,$v1        
  00428e80: mmi2   $v0,$v0,$t2        
  00428e84: mmi2   $v1,$v0,$a0        
  00428e88: or $a2, $v1, $v0          
  00428e8c: beq    $a2, $zero, +12       ; br -> 0x00428e9c
  00428e90: addiu  $a0, $a0, +16      
  00428e94: jr     $ra                
  00428e98: daddu $v0, $zero, $zero   
  00428e9c: addiu  $a1, $a1, +16      
  00428ea0: lq     $v0, +0($a0)       
  00428ea4: lq     $v1, +0($a1)       
  00428ea8: mmi2   $a3,$v0,$v1        
  00428eac: mmi2   $a2,$a3,$a0        
  00428eb0: or $t1, $a2, $a3          
  00428eb4: beql   $t1, $zero, -64       ; br -> 0x00428e78
  00428eb8: mmi2   $v1,$zero,$v0      
  00428ebc: beq    $zero, $zero, +112    ; br -> 0x00428f30
  00428ec0: lb     $v0, +0($a0)       
  00428ec4: ld     $v1, +0($a0)       
  00428ec8: bnel   $v1, $v0, +100        ; br -> 0x00428f30
  00428ecc: lb     $v0, +0($a0)       
  00428ed0: ld     $v0, +0($a0)       
  00428ed4: nor $t0, $zero, $v0       
  00428ed8: dsubu $v0, $v0, $a3       
  00428edc: and $v0, $v0, $t0         
  00428ee0: and $v0, $v0, $a2         
  00428ee4: beq    $v0, $zero, +12       ; br -> 0x00428ef4
  00428ee8: addiu  $a0, $a0, +8       
  00428eec: jr     $ra                
  00428ef0: daddu $v0, $zero, $zero   
  00428ef4: addiu  $a1, $a1, +8       
  00428ef8: ld     $v0, +0($a0)       
  00428efc: ld     $v1, +0($a1)       
  00428f00: beql   $v1, $v0, -44         ; br -> 0x00428ed8
  00428f04: nor $t0, $zero, $v0       
  00428f08: beq    $zero, $zero, +36     ; br -> 0x00428f30
  00428f0c: lb     $v0, +0($a0)       
  00428f10: sll $v0, $v1, 24          
  00428f14: lb     $v1, +0($a1)       
  00428f18: sra $v0, $v0, 24          
  00428f1c: bnel   $v0, $v1, +24         ; br -> 0x00428f38
  00428f20: lbu    $v1, +0($a0)       
  00428f24: addiu  $a0, $a0, +1       
  00428f28: addiu  $a1, $a1, +1       
  00428f2c: lb     $v0, +0($a0)       
  00428f30: bne    $v0, $zero, -36       ; br -> 0x00428f10
  00428f34: lbu    $v1, +0($a0)       
  00428f38: lbu    $v0, +0($a1)       
  00428f3c: jr     $ra                
  00428f40: subu $v0, $v1, $v0        
  00428f44: sll $zero, $zero, 0       
