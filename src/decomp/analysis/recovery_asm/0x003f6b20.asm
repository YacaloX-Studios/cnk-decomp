; 0x003f6b20  FUN_003f6b20  size=1424  status=real_c
; evidence: args=a0=ptr;a1=int;a2=-;a3=- ret=ptr calls=
; 356 words

  003f6b20: addiu  $sp, $sp, -64      
  003f6b24: addiu  $v0, $sp, +0       
  003f6b28: op36    $a1,$s5,$zero     
  003f6b2c: op36    $a1,$s6,$zero     
  003f6b30: op36    $a1,$s7,$zero     
  003f6b34: op36    $a2,$t8,$zero     
  003f6b38: op36    $a2,$t9,$zero     
  003f6b3c: op36    $a2,$k0,$zero     
  003f6b40: cop2   $zero,$fp,$k1      
  003f6b44: cop2   $zero,$fp,$gp      
  003f6b48: cop2   $zero,$fp,$sp      
  003f6b4c: cop2   $t8,$fp,$s5        
  003f6b50: cop2   $t9,$fp,$s6        
  003f6b54: cop2   $k0,$fp,$s7        
  003f6b58: cop2   $t8,$fp,$s5        
  003f6b5c: cop2   $t9,$fp,$s6        
  003f6b60: cop2   $k0,$fp,$s7        
  003f6b64: cop2   $t8,$fp,$s5        
  003f6b68: cop2   $t9,$fp,$s6        
  003f6b6c: cop2   $k0,$fp,$s7        
  003f6b70: cop2   $s5,$fp,$k1        
  003f6b74: cop2   $s6,$fp,$k1        
  003f6b78: cop2   $s7,$fp,$k1        
  003f6b7c: cop2   $s5,$fp,$gp        
  003f6b80: cop2   $s6,$fp,$gp        
  003f6b84: cop2   $s7,$fp,$gp        
  003f6b88: cop2   $s5,$fp,$sp        
  003f6b8c: cop2   $s6,$fp,$sp        
  003f6b90: cop2   $s7,$fp,$sp        
  003f6b94: op3e    $v0,$t8,$zero     
  003f6b98: op3e    $v0,$t9,$zero     
  003f6b9c: op3e    $v0,$k0,$zero     
  003f6ba0: lw     $a1, +0($v0)       
  003f6ba4: lw     $v1, +16($v0)      
  003f6ba8: sw     $a1, +0($a0)       
  003f6bac: lw     $a1, +32($v0)      
  003f6bb0: sw     $v1, +16($a0)      
  003f6bb4: sw     $a1, +32($a0)      
  003f6bb8: dsubu  $zero, $a0, +0     
  003f6bbc: jr     $ra                
  003f6bc0: addiu  $sp, $sp, +64      
  003f6bc4: sll    $zero, $zero, +0   
  003f6bc8: sll    $zero, $zero, +0   
  003f6bcc: sll    $zero, $zero, +0   
  003f6bd0: lwc1   $a1, +0($a1)       
  003f6bd4: lwc1   $v0, +0($a0)       
  003f6bd8: lwc1   $a0, +16($a1)      
  003f6bdc: lwc1   $v1, +16($a0)      
  003f6be0: lwc1   $at, +32($a1)      
  003f6be4: lwc1   $zero, +32($a0)    
  003f6be8: f10.2  $a1,$s0,$v0        
  003f6bec: f10.2  $a0,$s0,$v1        
  003f6bf0: f10.18 $v0,$s0,$v1        
  003f6bf4: f10.1c $at,$s0,$zero      
  003f6bf8: swc1   $zero, +0($a1)     
  003f6bfc: lwc1   $v1, +4($a0)       
  003f6c00: lwc1   $a0, +16($a1)      
  003f6c04: lwc1   $v0, +20($a0)      
  003f6c08: lwc1   $at, +32($a1)      
  003f6c0c: lwc1   $zero, +36($a0)    
  003f6c10: f10.2  $a1,$s0,$v1        
  003f6c14: f10.2  $a0,$s0,$v0        
  003f6c18: f10.18 $v1,$s0,$v0        
  003f6c1c: f10.1c $at,$s0,$zero      
  003f6c20: swc1   $zero, +16($a1)    
  003f6c24: lwc1   $v1, +8($a0)       
  003f6c28: lwc1   $v0, +24($a0)      
  003f6c2c: lwc1   $at, +32($a1)      
  003f6c30: lwc1   $zero, +40($a0)    
  003f6c34: f10.2  $a1,$s0,$v1        
  003f6c38: f10.2  $a0,$s0,$v0        
  003f6c3c: f10.18 $v1,$s0,$v0        
  003f6c40: f10.1c $at,$s0,$zero      
  003f6c44: swc1   $zero, +32($a1)    
  003f6c48: lwc1   $a1, +4($a1)       
  003f6c4c: lwc1   $v0, +0($a0)       
  003f6c50: lwc1   $a0, +20($a1)      
  003f6c54: lwc1   $v1, +16($a0)      
  003f6c58: lwc1   $at, +36($a1)      
  003f6c5c: lwc1   $zero, +32($a0)    
  003f6c60: f10.2  $a1,$s0,$v0        
  003f6c64: f10.2  $a0,$s0,$v1        
  003f6c68: f10.18 $v0,$s0,$v1        
  003f6c6c: f10.1c $at,$s0,$zero      
  003f6c70: swc1   $zero, +4($a1)     
  003f6c74: lwc1   $v1, +4($a0)       
  003f6c78: lwc1   $a0, +20($a1)      
  003f6c7c: lwc1   $v0, +20($a0)      
  003f6c80: lwc1   $at, +36($a1)      
  003f6c84: lwc1   $zero, +36($a0)    
  003f6c88: f10.2  $a1,$s0,$v1        
  003f6c8c: f10.2  $a0,$s0,$v0        
  003f6c90: f10.18 $v1,$s0,$v0        
  003f6c94: f10.1c $at,$s0,$zero      
  003f6c98: swc1   $zero, +20($a1)    
  003f6c9c: lwc1   $v1, +8($a0)       
  003f6ca0: lwc1   $v0, +24($a0)      
  003f6ca4: lwc1   $at, +36($a1)      
  003f6ca8: lwc1   $zero, +40($a0)    
  003f6cac: f10.2  $a1,$s0,$v1        
  003f6cb0: f10.2  $a0,$s0,$v0        
  003f6cb4: f10.18 $v1,$s0,$v0        
  003f6cb8: f10.1c $at,$s0,$zero      
  003f6cbc: swc1   $zero, +36($a1)    
  003f6cc0: lwc1   $a1, +8($a1)       
  003f6cc4: lwc1   $v0, +0($a0)       
  003f6cc8: lwc1   $a0, +24($a1)      
  003f6ccc: lwc1   $v1, +16($a0)      
  003f6cd0: lwc1   $at, +40($a1)      
  003f6cd4: lwc1   $zero, +32($a0)    
  003f6cd8: f10.2  $a1,$s0,$v0        
  003f6cdc: f10.2  $a0,$s0,$v1        
  003f6ce0: f10.18 $v0,$s0,$v1        
  003f6ce4: f10.1c $at,$s0,$zero      
  003f6ce8: swc1   $zero, +8($a1)     
  003f6cec: lwc1   $v1, +4($a0)       
  003f6cf0: lwc1   $a0, +24($a1)      
  003f6cf4: lwc1   $v0, +20($a0)      
  003f6cf8: lwc1   $at, +40($a1)      
  003f6cfc: lwc1   $zero, +36($a0)    
  003f6d00: f10.2  $a1,$s0,$v1        
  003f6d04: f10.2  $a0,$s0,$v0        
  003f6d08: f10.18 $v1,$s0,$v0        
  003f6d0c: f10.1c $at,$s0,$zero      
  003f6d10: swc1   $zero, +24($a1)    
  003f6d14: lwc1   $v1, +8($a0)       
  003f6d18: lwc1   $v0, +24($a0)      
  003f6d1c: lwc1   $at, +40($a1)      
  003f6d20: lwc1   $zero, +40($a0)    
  003f6d24: f10.2  $a1,$s0,$v1        
  003f6d28: f10.2  $a0,$s0,$v0        
  003f6d2c: f10.18 $v1,$s0,$v0        
  003f6d30: f10.1c $at,$s0,$zero      
  003f6d34: swc1   $zero, +40($a1)    
  003f6d38: lwc1   $a1, +0($a1)       
  003f6d3c: lwc1   $v0, +0($a0)       
  003f6d40: lwc1   $a0, +16($a0)      
  003f6d44: lwc1   $v1, +4($a1)       
  003f6d48: lwc1   $at, +32($a0)      
  003f6d4c: lwc1   $zero, +8($a1)     
  003f6d50: f10.2  $v0,$s0,$a1        
  003f6d54: f10.2  $a0,$s0,$v1        
  003f6d58: f10.18 $v0,$s0,$v1        
  003f6d5c: f10.1c $at,$s0,$zero      
  003f6d60: swc1   $zero, +0($a1)     
  003f6d64: lwc1   $v1, +4($a0)       
  003f6d68: lwc1   $a0, +4($a1)       
  003f6d6c: lwc1   $v0, +20($a0)      
  003f6d70: lwc1   $at, +36($a0)      
  003f6d74: lwc1   $zero, +8($a1)     
  003f6d78: f10.2  $v1,$s0,$a1        
  003f6d7c: f10.2  $v0,$s0,$a0        
  003f6d80: f10.18 $v1,$s0,$v0        
  003f6d84: f10.1c $at,$s0,$zero      
  003f6d88: swc1   $zero, +4($a1)     
  003f6d8c: lwc1   $v1, +8($a0)       
  003f6d90: lwc1   $v0, +24($a0)      
  003f6d94: lwc1   $at, +40($a0)      
  003f6d98: lwc1   $zero, +8($a1)     
  003f6d9c: f10.2  $v1,$s0,$a1        
  003f6da0: f10.2  $v0,$s0,$a0        
  003f6da4: f10.18 $v1,$s0,$v0        
  003f6da8: f10.1c $at,$s0,$zero      
  003f6dac: swc1   $zero, +8($a1)     
  003f6db0: lwc1   $a1, +16($a1)      
  003f6db4: lwc1   $v0, +0($a0)       
  003f6db8: lwc1   $a0, +16($a0)      
  003f6dbc: lwc1   $v1, +20($a1)      
  003f6dc0: lwc1   $at, +32($a0)      
  003f6dc4: lwc1   $zero, +24($a1)    
  003f6dc8: f10.2  $v0,$s0,$a1        
  003f6dcc: f10.2  $a0,$s0,$v1        
  003f6dd0: f10.18 $v0,$s0,$v1        
  003f6dd4: f10.1c $at,$s0,$zero      
  003f6dd8: swc1   $zero, +16($a1)    
  003f6ddc: lwc1   $v1, +4($a0)       
  003f6de0: lwc1   $a0, +20($a1)      
  003f6de4: lwc1   $v0, +20($a0)      
  003f6de8: lwc1   $at, +36($a0)      
  003f6dec: lwc1   $zero, +24($a1)    
  003f6df0: f10.2  $v1,$s0,$a1        
  003f6df4: f10.2  $v0,$s0,$a0        
  003f6df8: f10.18 $v1,$s0,$v0        
  003f6dfc: f10.1c $at,$s0,$zero      
  003f6e00: swc1   $zero, +20($a1)    
  003f6e04: lwc1   $v1, +8($a0)       
  003f6e08: lwc1   $v0, +24($a0)      
  003f6e0c: lwc1   $at, +40($a0)      
  003f6e10: lwc1   $zero, +24($a1)    
  003f6e14: f10.2  $v1,$s0,$a1        
  003f6e18: f10.2  $v0,$s0,$a0        
  003f6e1c: f10.18 $v1,$s0,$v0        
  003f6e20: f10.1c $at,$s0,$zero      
  003f6e24: swc1   $zero, +24($a1)    
  003f6e28: lwc1   $a1, +32($a1)      
  003f6e2c: lwc1   $v0, +0($a0)       
  003f6e30: lwc1   $a0, +16($a0)      
  003f6e34: lwc1   $v1, +36($a1)      
  003f6e38: lwc1   $at, +32($a0)      
  003f6e3c: lwc1   $zero, +40($a1)    
  003f6e40: f10.2  $v0,$s0,$a1        
  003f6e44: f10.2  $a0,$s0,$v1        
  003f6e48: f10.18 $v0,$s0,$v1        
  003f6e4c: f10.1c $at,$s0,$zero      
  003f6e50: swc1   $zero, +32($a1)    
  003f6e54: lwc1   $v1, +4($a0)       
  003f6e58: lwc1   $a0, +36($a1)      
  003f6e5c: lwc1   $v0, +20($a0)      
  003f6e60: lwc1   $at, +36($a0)      
  003f6e64: lwc1   $zero, +40($a1)    
  003f6e68: f10.2  $v1,$s0,$a1        
  003f6e6c: f10.2  $v0,$s0,$a0        
  003f6e70: f10.18 $v1,$s0,$v0        
  003f6e74: f10.1c $at,$s0,$zero      
  003f6e78: swc1   $zero, +36($a1)    
  003f6e7c: lwc1   $v1, +8($a0)       
  003f6e80: lwc1   $v0, +24($a0)      
  003f6e84: lwc1   $at, +40($a0)      
  003f6e88: lwc1   $zero, +40($a1)    
  003f6e8c: f10.2  $v1,$s0,$a1        
  003f6e90: f10.2  $v0,$s0,$a0        
  003f6e94: f10.18 $v1,$s0,$v0        
  003f6e98: f10.1c $at,$s0,$zero      
  003f6e9c: jr     $ra                
  003f6ea0: swc1   $zero, +40($a1)    
  003f6ea4: sll    $zero, $zero, +0   
  003f6ea8: sll    $zero, $zero, +0   
  003f6eac: sll    $zero, $zero, +0   
  003f6eb0: lwc1   $v0, +0($a1)       
  003f6eb4: lwc1   $v1, +20($a1)      
  003f6eb8: lwc1   $a0, +40($a1)      
  003f6ebc: fmove  $zero,$a0,$zero    
  003f6ec0: f10.0  $v0,$s0,$v1        
  003f6ec4: f10.0  $a0,$s0,$at        
  003f6ec8: f10.34 $at,$s0,$zero      
  003f6ecc: sll    $zero, $zero, +0   
  003f6ed0: f8.1c  $zero,$t0,$zero    
  003f6ed4: addiu  $sp, $sp, -32      
  003f6ed8: lui   $t0, 0x00650000     
  003f6edc: addiu  $a2, $sp, +0       
  003f6ee0: addiu  $t0, $t0, +5040    
  003f6ee4: dsubu  $zero, $zero, +0   
  003f6ee8: lw     $v1, +0($t0)          ; GLOBAL 0x00650000
  003f6eec: lwc1   $zero, +8($t0)        ; GLOBAL 0x00650008
  003f6ef0: f10.36 $v1,$s0,$v0        
  003f6ef4: sw     $v1, +0($a2)       
  003f6ef8: f8.2   $zero,$t0,$at      
  003f6efc: swc1   $zero, +8($a2)     
  003f6f00: addiu  $a3, $zero, +1     
  003f6f04: sll    $a3, $zero, +2     
  003f6f08: addu   $v1, $a3, +0       
  003f6f0c: sll    $v1, $zero, +2     
  003f6f10: addu   $v1, $a1, +0       
  003f6f14: lwc1   $zero, +0($v1)     
  003f6f18: f10.36 $a0,$s0,$zero      
  003f6f1c: sll    $zero, $zero, +0   
  003f6f20: f8.2   $zero,$t0,$at      
  003f6f24: lui   $v1, 0x3f800000     
  003f6f28: addiu  $a3, $zero, +2     
  003f6f2c: sll    $a3, $zero, +2     
  003f6f30: fmove  $zero,$a0,$v1      
  003f6f34: addu   $sp, $t1, +0       
  003f6f38: lw     $t0, +0($a2)       
  003f6f3c: addu   $t1, $a3, +0       
  003f6f40: sll    $v1, $zero, +2     
  003f6f44: addu   $t2, $a1, +0       
  003f6f48: lui   $v1, 0x3f000000     
  003f6f4c: lwc1   $at, +0($t2)       
  003f6f50: fmove  $zero,$a0,$v1      
  003f6f54: sll    $t0, $zero, +2     
  003f6f58: addu   $t1, $t0, +0       
  003f6f5c: addu   $t5, $t0, +0       
  003f6f60: sll    $t4, $zero, +2     
  003f6f64: addu   $t4, $a1, +0       
  003f6f68: sll    $v1, $zero, +2     
  003f6f6c: addu   $sp, $t5, +0       
  003f6f70: addu   $t2, $a1, +0       
  003f6f74: lw     $t6, +0($v1)          ; GLOBAL 0x3f000000
  003f6f78: lwc1   $v0, +0($t4)       
  003f6f7c: addu   $t5, $a3, +0       
  003f6f80: sll    $t2, $zero, +2     
  003f6f84: addu   $t2, $a1, +0       
  003f6f88: addu   $t5, $t6, +0       
  003f6f8c: sll    $t6, $zero, +2     
  003f6f90: sll    $t4, $zero, +2     
  003f6f94: addu   $t1, $t6, +0       
  003f6f98: addu   $t4, $a1, +0       
  003f6f9c: addu   $t7, $t0, +0       
  003f6fa0: addu   $t7, $t6, +0       
  003f6fa4: sll    $t1, $zero, +2     
  003f6fa8: sll    $t4, $zero, +2     
  003f6fac: sll    $t0, $zero, +2     
  003f6fb0: addu   $t4, $a1, +0       
  003f6fb4: addu   $t7, $a3, +0       
  003f6fb8: lwc1   $v1, +0($t6)       
  003f6fbc: addu   $t0, $a1, +0       
  003f6fc0: sll    $a3, $zero, +2     
  003f6fc4: addu   $t1, $a1, +0       
  003f6fc8: addu   $t0, $a1, +0       
  003f6fcc: addu   $sp, $t7, +0       
  003f6fd0: f10.0  $v0,$s0,$v1        
  003f6fd4: f10.1  $at,$s0,$v0        
  003f6fd8: f10.0  $zero,$s0,$at      
  003f6fdc: f10.4  $zero,$s0,$at      
  003f6fe0: f10.3  $a0,$s0,$at        
  003f6fe4: f10.2  $a0,$s0,$at        
  003f6fe8: swc1   $zero, +16($a2)    
  003f6fec: lwc1   $at, +0($t5)       
  003f6ff0: lwc1   $zero, +0($t4)     
  003f6ff4: f10.1  $at,$s0,$zero      
  003f6ff8: f10.2  $v0,$s0,$zero      
  003f6ffc: swc1   $zero, +0($a0)     
  003f7000: lwc1   $at, +0($t3)       
  003f7004: lwc1   $zero, +0($t2)     
  003f7008: f10.0  $at,$s0,$zero      
  003f700c: f10.2  $v0,$s0,$zero      
  003f7010: swc1   $zero, +16($v1)       ; GLOBAL 0x3f000010
  003f7014: lwc1   $at, +0($t1)       
  003f7018: lwc1   $zero, +0($a1)     
  003f701c: f10.0  $at,$s0,$zero      
  003f7020: f10.2  $v0,$s0,$zero      
  003f7024: swc1   $zero, +16($a3)    
  003f7028: lwc1   $zero, +16($sp)    
  003f702c: swc1   $zero, +16($a0)    
  003f7030: lwc1   $zero, +20($sp)    
  003f7034: swc1   $zero, +20($a0)    
  003f7038: lwc1   $zero, +24($sp)    
  003f703c: beq    $zero, $zero, +100    ; br -> 0x003f70a4
  003f7040: swc1   $zero, +24($a0)    
  003f7044: lui   $a2, 0x3f800000     
  003f7048: lui   $v1, 0x3f000000     
  003f704c: fmove  $zero,$a0,$a2      
  003f7050: fmove  $zero,$a0,$v1      
  003f7054: f10.0  $zero,$s0,$at      
  003f7058: f10.4  $zero,$s0,$at      
  003f705c: f10.2  $v0,$s0,$at        
  003f7060: f10.3  $v0,$s0,$at        
  003f7064: swc1   $zero, +0($a0)     
  003f7068: lwc1   $at, +24($a1)      
  003f706c: lwc1   $zero, +36($a1)    
  003f7070: f10.1  $at,$s0,$zero      
  003f7074: f10.2  $v0,$s0,$zero      
  003f7078: swc1   $zero, +16($a0)    
  003f707c: lwc1   $at, +32($a1)      
  003f7080: lwc1   $zero, +8($a1)     
  003f7084: f10.1  $at,$s0,$zero      
  003f7088: f10.2  $v0,$s0,$zero      
  003f708c: swc1   $zero, +20($a0)    
  003f7090: lwc1   $at, +4($a1)       
  003f7094: lwc1   $zero, +16($a1)    
  003f7098: f10.1  $at,$s0,$zero      
  003f709c: f10.2  $v0,$s0,$zero      
  003f70a0: swc1   $zero, +24($a0)    
  003f70a4: jr     $ra                
  003f70a8: addiu  $sp, $sp, +32      
  003f70ac: sll    $zero, $zero, +0   

; globals: 0x00650000(x1), 0x00650008(x1), 0x3f000000(x1), 0x3f000010(x1)
