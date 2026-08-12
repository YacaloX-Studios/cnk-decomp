; 0x003a09f0  FUN_003a09f0  size=704  status=real_c
; evidence: args=a0=ptr;a1=int;a2=ptr;a3=ptr ret=ptr calls=
; 176 words

  003a09f0: addiu  $sp, $sp, -64      
  003a09f4: addiu  $a1, $a0, +16      
  003a09f8: addiu  $v1, $sp, +0       
  003a09fc: addiu  $v0, $zero, +7     
  003a0a00: dsubu $a2, $v1, $zero     
  003a0a04: sw     $zero, +0($a2)     
  003a0a08: addiu  $v0, $v0, -1       
  003a0a0c: sw     $zero, +4($a2)     
  003a0a10: addiu  $a2, $a2, +8       
  003a0a14: sll $zero, $zero, 0       
  003a0a18: regimm $v0, $at, -24         ; br -> 0x003a0a04
  003a0a1c: sll $zero, $zero, 0       
  003a0a20: dsubu $a3, $v1, $zero     
  003a0a24: addiu  $a2, $zero, +3     
  003a0a28: lui   $v0, 0x3f800000     
  003a0a2c: sw     $v0, +0($a3)       
  003a0a30: addiu  $a2, $a2, -1       
  003a0a34: addiu  $a3, $a3, +20      
  003a0a38: sll $zero, $zero, 0       
  003a0a3c: sll $zero, $zero, 0       
  003a0a40: regimm $a2, $at, -24         ; br -> 0x003a0a2c
  003a0a44: sll $zero, $zero, 0       
  003a0a48: dsubu $v0, $zero, $zero   
  003a0a4c: dsubu $a2, $zero, $zero   
  003a0a50: lui   $a3, 0x3f800000     
  003a0a54: fmove  $zero,$a0,$zero    
  003a0a58: fmove  $zero,$a0,$a3      
  003a0a5c: addu $a3, $a1, $a2        
  003a0a60: dsubu $t2, $v0, $zero     
  003a0a64: lwc1   $zero, +0($a3)        ; GLOBAL 0x3f800000
  003a0a68: f10.3  $v1,$s0,$zero      
  003a0a6c: sll $a3, $v0, 2           
  003a0a70: dsubu $t3, $a3, $zero     
  003a0a74: sll $zero, $zero, 0       
  003a0a78: addu $t1, $a1, $t3        
  003a0a7c: lwc1   $zero, +0($t1)     
  003a0a80: addiu  $t2, $t2, +1       
  003a0a84: slti   $t0, $t2, +4       
  003a0a88: addiu  $t3, $t3, +4       
  003a0a8c: f10.2  $zero,$s0,$at      
  003a0a90: bne    $t0, $zero, -32       ; br -> 0x003a0a74
  003a0a94: swc1   $zero, +0($t1)     
  003a0a98: dsubu $t1, $zero, $zero   
  003a0a9c: dsubu $t2, $zero, $zero   
  003a0aa0: addu $t0, $v1, $t2        
  003a0aa4: lwc1   $zero, +0($t0)     
  003a0aa8: addiu  $t1, $t1, +1       
  003a0aac: dadd $at, $v0, $t1        
  003a0ab0: addiu  $t2, $t2, +4       
  003a0ab4: f10.2  $zero,$s0,$at      
  003a0ab8: beq    $at, $zero, -28       ; br -> 0x003a0aa0
  003a0abc: swc1   $zero, +0($t0)     
  003a0ac0: addiu  $t2, $v0, +1       
  003a0ac4: dsubu $t4, $a1, $zero     
  003a0ac8: slti   $at, $t2, +4       
  003a0acc: beq    $at, $zero, +168      ; br -> 0x003a0b78
  003a0ad0: dsubu $t3, $v1, $zero     
  003a0ad4: sll $zero, $zero, 0       
  003a0ad8: addiu  $t4, $t4, +16      
  003a0adc: addu $t0, $a2, $t4        
  003a0ae0: lwc1   $a0, +0($t0)       
  003a0ae4: f10.32 $v0,$s0,$a0        
  003a0ae8: sll $zero, $zero, 0       
  003a0aec: f8.1d  $zero,$t0,$at      
  003a0af0: addiu  $t3, $t3, +16      
  003a0af4: dsubu $t1, $zero, $zero   
  003a0af8: dsubu $t5, $zero, $zero   
  003a0afc: sll $zero, $zero, 0       
  003a0b00: addu $t0, $v1, $t5        
  003a0b04: lwc1   $at, +0($t0)       
  003a0b08: addiu  $t1, $t1, +1       
  003a0b0c: dadd $at, $v0, $t1        
  003a0b10: addu $t0, $t3, $t5        
  003a0b14: lwc1   $zero, +0($t0)     
  003a0b18: addiu  $t5, $t5, +4       
  003a0b1c: f10.2  $a0,$s0,$at        
  003a0b20: f10.1  $zero,$s0,$at      
  003a0b24: beq    $at, $zero, -44       ; br -> 0x003a0afc
  003a0b28: swc1   $zero, +0($t0)     
  003a0b2c: dsubu $t6, $v0, $zero     
  003a0b30: dsubu $t5, $a3, $zero     
  003a0b34: sll $zero, $zero, 0       
  003a0b38: addu $t0, $a1, $t5        
  003a0b3c: lwc1   $at, +0($t0)       
  003a0b40: addu $t1, $t4, $t5        
  003a0b44: addiu  $t6, $t6, +1       
  003a0b48: addiu  $t5, $t5, +4       
  003a0b4c: lwc1   $zero, +0($t1)     
  003a0b50: f10.2  $a0,$s0,$at        
  003a0b54: slti   $t0, $t6, +4       
  003a0b58: f10.1  $zero,$s0,$at      
  003a0b5c: bne    $t0, $zero, -44       ; br -> 0x003a0b34
  003a0b60: swc1   $zero, +0($t1)     
  003a0b64: sll $zero, $zero, 0       
  003a0b68: addiu  $t2, $t2, +1       
  003a0b6c: slti   $t0, $t2, +4       
  003a0b70: bne    $t0, $zero, -160      ; br -> 0x003a0ad4
  003a0b74: sll $zero, $zero, 0       
  003a0b78: addiu  $v0, $v0, +1       
  003a0b7c: slti   $a3, $v0, +4       
  003a0b80: addiu  $a1, $a1, +16      
  003a0b84: addiu  $v1, $v1, +16      
  003a0b88: bne    $a3, $zero, -304      ; br -> 0x003a0a5c
  003a0b8c: addiu  $a2, $a2, +4       
  003a0b90: addiu  $t2, $zero, +3     
  003a0b94: addiu  $t4, $zero, +12    
  003a0b98: fmove  $zero,$a0,$zero    
  003a0b9c: addiu  $a1, $a1, -16      
  003a0ba0: addiu  $v1, $v1, -16      
  003a0ba4: addiu  $a3, $t2, -1       
  003a0ba8: dsubu $t1, $a1, $zero     
  003a0bac: regimm $a3, $zero, +156      ; br -> 0x003a0c4c
  003a0bb0: dsubu $t0, $v1, $zero     
  003a0bb4: sll $zero, $zero, 0       
  003a0bb8: addiu  $t1, $t1, -16      
  003a0bbc: addu $v0, $t4, $t1        
  003a0bc0: lwc1   $v1, +0($v0)          ; GLOBAL 0x3f800000
  003a0bc4: f10.32 $v0,$s0,$v1        
  003a0bc8: sll $zero, $zero, 0       
  003a0bcc: f8.1b  $zero,$t0,$at      
  003a0bd0: addiu  $t0, $t0, -16      
  003a0bd4: addiu  $a2, $zero, +3     
  003a0bd8: addiu  $t3, $zero, +12    
  003a0bdc: sll $zero, $zero, 0       
  003a0be0: addu $v0, $v1, $t3        
  003a0be4: lwc1   $at, +0($v0)          ; GLOBAL 0x3f800000
  003a0be8: addiu  $a2, $a2, -1       
  003a0bec: addu $v0, $t0, $t3        
  003a0bf0: lwc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a0bf4: addiu  $t3, $t3, -4       
  003a0bf8: f10.2  $v1,$s0,$at        
  003a0bfc: f10.1  $zero,$s0,$at      
  003a0c00: regimm $a2, $at, -40         ; br -> 0x003a0bdc
  003a0c04: swc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a0c08: addiu  $t3, $zero, +3     
  003a0c0c: addiu  $a2, $zero, +12    
  003a0c10: addu $v0, $a1, $a2        
  003a0c14: lwc1   $at, +0($v0)          ; GLOBAL 0x3f800000
  003a0c18: addiu  $t3, $t3, -1       
  003a0c1c: dadd $at, $t3, $t2        
  003a0c20: addu $v0, $t1, $a2        
  003a0c24: lwc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a0c28: addiu  $a2, $a2, -4       
  003a0c2c: f10.2  $v1,$s0,$at        
  003a0c30: f10.1  $zero,$s0,$at      
  003a0c34: beq    $at, $zero, -40       ; br -> 0x003a0c10
  003a0c38: swc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a0c3c: sll $zero, $zero, 0       
  003a0c40: addiu  $a3, $a3, -1       
  003a0c44: regimm $a3, $at, -148        ; br -> 0x003a0bb4
  003a0c48: sll $zero, $zero, 0       
  003a0c4c: sll $zero, $zero, 0       
  003a0c50: addiu  $t2, $t2, -1       
  003a0c54: regimm $t2, $at, -188        ; br -> 0x003a0b9c
  003a0c58: addiu  $t4, $t4, -4       
  003a0c5c: addiu  $v1, $a0, +16      
  003a0c60: addiu  $v0, $sp, +0       
  003a0c64: addiu  $a0, $zero, +3     
  003a0c68: lwc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a0c6c: addiu  $a0, $a0, -1       
  003a0c70: swc1   $zero, +0($v1)     
  003a0c74: lwc1   $zero, +4($v0)        ; GLOBAL 0x3f800004
  003a0c78: swc1   $zero, +4($v1)     
  003a0c7c: lwc1   $zero, +8($v0)        ; GLOBAL 0x3f800008
  003a0c80: swc1   $zero, +8($v1)     
  003a0c84: lwc1   $zero, +12($v0)       ; GLOBAL 0x3f80000c
  003a0c88: swc1   $zero, +12($v1)    
  003a0c8c: addiu  $v0, $v0, +16      
  003a0c90: regimm $a0, $at, -44         ; br -> 0x003a0c68
  003a0c94: addiu  $v1, $v1, +16      
  003a0c98: dsubu $v0, $zero, $zero   
  003a0c9c: jr     $ra                
  003a0ca0: addiu  $sp, $sp, +64      
  003a0ca4: sll $zero, $zero, 0       
  003a0ca8: sll $zero, $zero, 0       
  003a0cac: sll $zero, $zero, 0       

; globals: 0x3f800000(x9), 0x3f800004(x1), 0x3f800008(x1), 0x3f80000c(x1)
