; 0x0058ab30  FUN_0058ab30  size=1968  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=w;a3=int ret=ptr calls=
; 492 words

  0058ab30: addiu  $sp, $sp, -128     
  0058ab34: andi   $v1, $zero, +1     
  0058ab38: sw     $s3, +48($sp)      
  0058ab3c: sll $v1, $v1, 7           
  0058ab40: sw     $s2, +32($sp)      
  0058ab44: addiu  $s3, $zero, -129   
  0058ab48: sw     $s1, +16($sp)      
  0058ab4c: dsubu $v0, $zero, $zero   
  0058ab50: sw     $s0, +0($sp)       
  0058ab54: dsubu $s1, $zero, $zero   
  0058ab58: lwc1   $at, +0($a1)       
  0058ab5c: dsubu $s0, $zero, $zero   
  0058ab60: lwc1   $zero, +0($a0)     
  0058ab64: dsubu $t9, $zero, $zero   
  0058ab68: lwc1   $v0, -32640($gp)   
  0058ab6c: dsubu $t8, $zero, $zero   
  0058ab70: dsubu $t7, $zero, $zero   
  0058ab74: dsubu $t6, $zero, $zero   
  0058ab78: dsubu $t5, $zero, $zero   
  0058ab7c: dsubu $t4, $zero, $zero   
  0058ab80: dsubu $t3, $zero, $zero   
  0058ab84: dsubu $t2, $zero, $zero   
  0058ab88: dsubu $t1, $zero, $zero   
  0058ab8c: dsubu $t0, $zero, $zero   
  0058ab90: f10.1  $at,$s0,$zero      
  0058ab94: dsubu $a3, $zero, $zero   
  0058ab98: swc1   $zero, +124($sp)   
  0058ab9c: lw     $s2, +127($sp)     
  0058aba0: and $s2, $s2, $s3         
  0058aba4: or $s2, $s2, $v1          
  0058aba8: sw     $s2, +127($sp)     
  0058abac: lwc1   $zero, +124($sp)   
  0058abb0: f10.34 $zero,$s0,$v0      
  0058abb4: f8.e   $zero,$t0,$zero    
  0058abb8: dsubu $a2, $zero, $zero   
  0058abbc: lwc1   $at, +4($a1)       
  0058abc0: lwc1   $zero, +4($a0)     
  0058abc4: f10.1  $at,$s0,$zero      
  0058abc8: swc1   $zero, +120($sp)   
  0058abcc: lw     $s2, +123($sp)     
  0058abd0: and $s2, $s2, $s3         
  0058abd4: or $v1, $s2, $v1          
  0058abd8: sw     $v1, +123($sp)     
  0058abdc: lwc1   $zero, +120($sp)   
  0058abe0: f10.34 $zero,$s0,$v0      
  0058abe4: f8.2   $zero,$t0,$zero    
  0058abe8: sll $zero, $zero, 0       
  0058abec: op19    $zero,$a2,$zero   
  0058abf0: beq    $a2, $zero, +72       ; br -> 0x0058ac3c
  0058abf4: sll $zero, $zero, 0       
  0058abf8: lwc1   $v0, +8($a1)       
  0058abfc: andi   $v1, $zero, +1     
  0058ac00: lwc1   $at, +8($a0)       
  0058ac04: sll $a2, $v1, 7           
  0058ac08: addiu  $v1, $zero, -129   
  0058ac0c: lwc1   $zero, -32640($gp) 
  0058ac10: f10.1  $v0,$s0,$at        
  0058ac14: swc1   $at, +116($sp)     
  0058ac18: lw     $s2, +119($sp)     
  0058ac1c: and $v1, $s2, $v1         
  0058ac20: or $v1, $v1, $a2          
  0058ac24: sw     $v1, +119($sp)     
  0058ac28: lwc1   $at, +116($sp)     
  0058ac2c: f10.34 $at,$s0,$zero      
  0058ac30: f8.2   $zero,$t0,$zero    
  0058ac34: sll $zero, $zero, 0       
  0058ac38: op19    $zero,$a3,$zero   
  0058ac3c: beq    $a3, $zero, +72       ; br -> 0x0058ac88
  0058ac40: sll $zero, $zero, 0       
  0058ac44: lwc1   $v0, +12($a1)      
  0058ac48: andi   $v1, $zero, +1     
  0058ac4c: lwc1   $at, +12($a0)      
  0058ac50: sll $a2, $v1, 7           
  0058ac54: addiu  $v1, $zero, -129   
  0058ac58: lwc1   $zero, -32640($gp) 
  0058ac5c: f10.1  $v0,$s0,$at        
  0058ac60: swc1   $at, +112($sp)     
  0058ac64: lw     $a3, +115($sp)     
  0058ac68: and $v1, $a3, $v1         
  0058ac6c: or $v1, $v1, $a2          
  0058ac70: sw     $v1, +115($sp)     
  0058ac74: lwc1   $at, +112($sp)     
  0058ac78: f10.34 $at,$s0,$zero      
  0058ac7c: f8.2   $zero,$t0,$zero    
  0058ac80: sll $zero, $zero, 0       
  0058ac84: op19    $zero,$t0,$zero   
  0058ac88: beq    $t0, $zero, +72       ; br -> 0x0058acd4
  0058ac8c: sll $zero, $zero, 0       
  0058ac90: lwc1   $v0, +16($a1)      
  0058ac94: andi   $v1, $zero, +1     
  0058ac98: lwc1   $at, +16($a0)      
  0058ac9c: sll $a2, $v1, 7           
  0058aca0: addiu  $v1, $zero, -129   
  0058aca4: lwc1   $zero, -32640($gp) 
  0058aca8: f10.1  $v0,$s0,$at        
  0058acac: swc1   $at, +108($sp)     
  0058acb0: lw     $a3, +111($sp)     
  0058acb4: and $v1, $a3, $v1         
  0058acb8: or $v1, $v1, $a2          
  0058acbc: sw     $v1, +111($sp)     
  0058acc0: lwc1   $at, +108($sp)     
  0058acc4: f10.34 $at,$s0,$zero      
  0058acc8: f8.2   $zero,$t0,$zero    
  0058accc: sll $zero, $zero, 0       
  0058acd0: op19    $zero,$t1,$zero   
  0058acd4: beq    $t1, $zero, +72       ; br -> 0x0058ad20
  0058acd8: sll $zero, $zero, 0       
  0058acdc: lwc1   $v0, +20($a1)      
  0058ace0: andi   $v1, $zero, +1     
  0058ace4: lwc1   $at, +20($a0)      
  0058ace8: sll $a2, $v1, 7           
  0058acec: addiu  $v1, $zero, -129   
  0058acf0: lwc1   $zero, -32640($gp) 
  0058acf4: f10.1  $v0,$s0,$at        
  0058acf8: swc1   $at, +104($sp)     
  0058acfc: lw     $a3, +107($sp)     
  0058ad00: and $v1, $a3, $v1         
  0058ad04: or $v1, $v1, $a2          
  0058ad08: sw     $v1, +107($sp)     
  0058ad0c: lwc1   $at, +104($sp)     
  0058ad10: f10.34 $at,$s0,$zero      
  0058ad14: f8.2   $zero,$t0,$zero    
  0058ad18: sll $zero, $zero, 0       
  0058ad1c: op19    $zero,$t2,$zero   
  0058ad20: beq    $t2, $zero, +72       ; br -> 0x0058ad6c
  0058ad24: sll $zero, $zero, 0       
  0058ad28: lwc1   $v0, +24($a1)      
  0058ad2c: andi   $v1, $zero, +1     
  0058ad30: lwc1   $at, +24($a0)      
  0058ad34: sll $a2, $v1, 7           
  0058ad38: addiu  $v1, $zero, -129   
  0058ad3c: lwc1   $zero, -32640($gp) 
  0058ad40: f10.1  $v0,$s0,$at        
  0058ad44: swc1   $at, +100($sp)     
  0058ad48: lw     $a3, +103($sp)     
  0058ad4c: and $v1, $a3, $v1         
  0058ad50: or $v1, $v1, $a2          
  0058ad54: sw     $v1, +103($sp)     
  0058ad58: lwc1   $at, +100($sp)     
  0058ad5c: f10.34 $at,$s0,$zero      
  0058ad60: f8.2   $zero,$t0,$zero    
  0058ad64: sll $zero, $zero, 0       
  0058ad68: op19    $zero,$t3,$zero   
  0058ad6c: beq    $t3, $zero, +72       ; br -> 0x0058adb8
  0058ad70: sll $zero, $zero, 0       
  0058ad74: lwc1   $v0, +28($a1)      
  0058ad78: andi   $v1, $zero, +1     
  0058ad7c: lwc1   $at, +28($a0)      
  0058ad80: sll $a2, $v1, 7           
  0058ad84: addiu  $v1, $zero, -129   
  0058ad88: lwc1   $zero, -32640($gp) 
  0058ad8c: f10.1  $v0,$s0,$at        
  0058ad90: swc1   $at, +96($sp)      
  0058ad94: lw     $a3, +99($sp)      
  0058ad98: and $v1, $a3, $v1         
  0058ad9c: or $v1, $v1, $a2          
  0058ada0: sw     $v1, +99($sp)      
  0058ada4: lwc1   $at, +96($sp)      
  0058ada8: f10.34 $at,$s0,$zero      
  0058adac: f8.2   $zero,$t0,$zero    
  0058adb0: sll $zero, $zero, 0       
  0058adb4: op19    $zero,$t4,$zero   
  0058adb8: beq    $t4, $zero, +72       ; br -> 0x0058ae04
  0058adbc: sll $zero, $zero, 0       
  0058adc0: lwc1   $v0, +32($a1)      
  0058adc4: andi   $v1, $zero, +1     
  0058adc8: lwc1   $at, +32($a0)      
  0058adcc: sll $a2, $v1, 7           
  0058add0: addiu  $v1, $zero, -129   
  0058add4: lwc1   $zero, -32640($gp) 
  0058add8: f10.1  $v0,$s0,$at        
  0058addc: swc1   $at, +92($sp)      
  0058ade0: lw     $a3, +95($sp)      
  0058ade4: and $v1, $a3, $v1         
  0058ade8: or $v1, $v1, $a2          
  0058adec: sw     $v1, +95($sp)      
  0058adf0: lwc1   $at, +92($sp)      
  0058adf4: f10.34 $at,$s0,$zero      
  0058adf8: f8.2   $zero,$t0,$zero    
  0058adfc: sll $zero, $zero, 0       
  0058ae00: op19    $zero,$t5,$zero   
  0058ae04: beq    $t5, $zero, +72       ; br -> 0x0058ae50
  0058ae08: sll $zero, $zero, 0       
  0058ae0c: lwc1   $v0, +36($a1)      
  0058ae10: andi   $v1, $zero, +1     
  0058ae14: lwc1   $at, +36($a0)      
  0058ae18: sll $a2, $v1, 7           
  0058ae1c: addiu  $v1, $zero, -129   
  0058ae20: lwc1   $zero, -32640($gp) 
  0058ae24: f10.1  $v0,$s0,$at        
  0058ae28: swc1   $at, +88($sp)      
  0058ae2c: lw     $a3, +91($sp)      
  0058ae30: and $v1, $a3, $v1         
  0058ae34: or $v1, $v1, $a2          
  0058ae38: sw     $v1, +91($sp)      
  0058ae3c: lwc1   $at, +88($sp)      
  0058ae40: f10.34 $at,$s0,$zero      
  0058ae44: f8.2   $zero,$t0,$zero    
  0058ae48: sll $zero, $zero, 0       
  0058ae4c: op19    $zero,$t6,$zero   
  0058ae50: beq    $t6, $zero, +72       ; br -> 0x0058ae9c
  0058ae54: sll $zero, $zero, 0       
  0058ae58: lwc1   $v0, +40($a1)      
  0058ae5c: andi   $v1, $zero, +1     
  0058ae60: lwc1   $at, +40($a0)      
  0058ae64: sll $a2, $v1, 7           
  0058ae68: addiu  $v1, $zero, -129   
  0058ae6c: lwc1   $zero, -32640($gp) 
  0058ae70: f10.1  $v0,$s0,$at        
  0058ae74: swc1   $at, +84($sp)      
  0058ae78: lw     $a3, +87($sp)      
  0058ae7c: and $v1, $a3, $v1         
  0058ae80: or $v1, $v1, $a2          
  0058ae84: sw     $v1, +87($sp)      
  0058ae88: lwc1   $at, +84($sp)      
  0058ae8c: f10.34 $at,$s0,$zero      
  0058ae90: f8.2   $zero,$t0,$zero    
  0058ae94: sll $zero, $zero, 0       
  0058ae98: op19    $zero,$t7,$zero   
  0058ae9c: beq    $t7, $zero, +72       ; br -> 0x0058aee8
  0058aea0: sll $zero, $zero, 0       
  0058aea4: lwc1   $v0, +44($a1)      
  0058aea8: andi   $v1, $zero, +1     
  0058aeac: lwc1   $at, +44($a0)      
  0058aeb0: sll $a2, $v1, 7           
  0058aeb4: addiu  $v1, $zero, -129   
  0058aeb8: lwc1   $zero, -32640($gp) 
  0058aebc: f10.1  $v0,$s0,$at        
  0058aec0: swc1   $at, +80($sp)      
  0058aec4: lw     $a3, +83($sp)      
  0058aec8: and $v1, $a3, $v1         
  0058aecc: or $v1, $v1, $a2          
  0058aed0: sw     $v1, +83($sp)      
  0058aed4: lwc1   $at, +80($sp)      
  0058aed8: f10.34 $at,$s0,$zero      
  0058aedc: f8.2   $zero,$t0,$zero    
  0058aee0: sll $zero, $zero, 0       
  0058aee4: op19    $zero,$t8,$zero   
  0058aee8: beq    $t8, $zero, +72       ; br -> 0x0058af34
  0058aeec: sll $zero, $zero, 0       
  0058aef0: lwc1   $v0, +48($a1)      
  0058aef4: andi   $v1, $zero, +1     
  0058aef8: lwc1   $at, +48($a0)      
  0058aefc: sll $a2, $v1, 7           
  0058af00: addiu  $v1, $zero, -129   
  0058af04: lwc1   $zero, -32640($gp) 
  0058af08: f10.1  $v0,$s0,$at        
  0058af0c: swc1   $at, +76($sp)      
  0058af10: lw     $a3, +79($sp)      
  0058af14: and $v1, $a3, $v1         
  0058af18: or $v1, $v1, $a2          
  0058af1c: sw     $v1, +79($sp)      
  0058af20: lwc1   $at, +76($sp)      
  0058af24: f10.34 $at,$s0,$zero      
  0058af28: f8.2   $zero,$t0,$zero    
  0058af2c: sll $zero, $zero, 0       
  0058af30: op19    $zero,$t9,$zero   
  0058af34: beq    $t9, $zero, +72       ; br -> 0x0058af80
  0058af38: sll $zero, $zero, 0       
  0058af3c: lwc1   $v0, +52($a1)      
  0058af40: andi   $v1, $zero, +1     
  0058af44: lwc1   $at, +52($a0)      
  0058af48: sll $a2, $v1, 7           
  0058af4c: addiu  $v1, $zero, -129   
  0058af50: lwc1   $zero, -32640($gp) 
  0058af54: f10.1  $v0,$s0,$at        
  0058af58: swc1   $at, +72($sp)      
  0058af5c: lw     $a3, +75($sp)      
  0058af60: and $v1, $a3, $v1         
  0058af64: or $v1, $v1, $a2          
  0058af68: sw     $v1, +75($sp)      
  0058af6c: lwc1   $at, +72($sp)      
  0058af70: f10.34 $at,$s0,$zero      
  0058af74: f8.2   $zero,$t0,$zero    
  0058af78: sll $zero, $zero, 0       
  0058af7c: op19    $zero,$s0,$zero   
  0058af80: beq    $s0, $zero, +72       ; br -> 0x0058afcc
  0058af84: sll $zero, $zero, 0       
  0058af88: lwc1   $v0, +56($a1)      
  0058af8c: andi   $v1, $zero, +1     
  0058af90: lwc1   $at, +56($a0)      
  0058af94: sll $a2, $v1, 7           
  0058af98: addiu  $v1, $zero, -129   
  0058af9c: lwc1   $zero, -32640($gp) 
  0058afa0: f10.1  $v0,$s0,$at        
  0058afa4: swc1   $at, +68($sp)      
  0058afa8: lw     $a3, +71($sp)      
  0058afac: and $v1, $a3, $v1         
  0058afb0: or $v1, $v1, $a2          
  0058afb4: sw     $v1, +71($sp)      
  0058afb8: lwc1   $at, +68($sp)      
  0058afbc: f10.34 $at,$s0,$zero      
  0058afc0: f8.2   $zero,$t0,$zero    
  0058afc4: sll $zero, $zero, 0       
  0058afc8: op19    $zero,$s1,$zero   
  0058afcc: beq    $s1, $zero, +72       ; br -> 0x0058b018
  0058afd0: sll $zero, $zero, 0       
  0058afd4: lwc1   $v0, +60($a1)      
  0058afd8: andi   $v1, $zero, +1     
  0058afdc: lwc1   $at, +60($a0)      
  0058afe0: lwc1   $zero, -32640($gp) 
  0058afe4: f10.1  $v0,$s0,$at        
  0058afe8: sll $a0, $v1, 7           
  0058afec: addiu  $v1, $zero, -129   
  0058aff0: swc1   $at, +64($sp)      
  0058aff4: lw     $a1, +67($sp)      
  0058aff8: and $v1, $a1, $v1         
  0058affc: or $v1, $v1, $a0          
  0058b000: sw     $v1, +67($sp)      
  0058b004: lwc1   $at, +64($sp)      
  0058b008: f10.34 $at,$s0,$zero      
  0058b00c: f8.2   $zero,$t0,$zero    
  0058b010: sll $zero, $zero, 0       
  0058b014: op19    $zero,$v0,$zero   
  0058b018: lw     $s3, +48($sp)      
  0058b01c: lw     $s2, +32($sp)      
  0058b020: lw     $s1, +16($sp)      
  0058b024: lw     $s0, +0($sp)       
  0058b028: jr     $ra                
  0058b02c: addiu  $sp, $sp, +128     
  0058b030: lui   $v1, 0x3f800000     
  0058b034: sw     $v1, +0($a0)       
  0058b038: sw     $zero, +4($a0)     
  0058b03c: sw     $zero, +8($a0)     
  0058b040: sw     $zero, +12($a0)    
  0058b044: sw     $zero, +16($a0)    
  0058b048: sw     $v1, +20($a0)      
  0058b04c: sw     $zero, +24($a0)    
  0058b050: sw     $zero, +28($a0)    
  0058b054: sw     $zero, +32($a0)    
  0058b058: sw     $zero, +36($a0)    
  0058b05c: sw     $v1, +40($a0)      
  0058b060: sw     $zero, +44($a0)    
  0058b064: lwc1   $zero, +0($a1)     
  0058b068: swc1   $zero, +48($a0)    
  0058b06c: lwc1   $zero, +4($a1)     
  0058b070: swc1   $zero, +52($a0)    
  0058b074: lwc1   $zero, +8($a1)     
  0058b078: swc1   $zero, +56($a0)    
  0058b07c: jr     $ra                
  0058b080: sw     $v1, +60($a0)      
  0058b084: sll $zero, $zero, 0       
  0058b088: sll $zero, $zero, 0       
  0058b08c: sll $zero, $zero, 0       
  0058b090: lwc1   $zero, +0($a1)     
  0058b094: swc1   $zero, +48($a0)    
  0058b098: lwc1   $zero, +4($a1)     
  0058b09c: swc1   $zero, +52($a0)    
  0058b0a0: lwc1   $zero, +8($a1)     
  0058b0a4: jr     $ra                
  0058b0a8: swc1   $zero, +56($a0)    
  0058b0ac: sll $zero, $zero, 0       
  0058b0b0: lwc1   $zero, +48($a0)    
  0058b0b4: swc1   $zero, +0($a1)     
  0058b0b8: lwc1   $zero, +52($a0)    
  0058b0bc: swc1   $zero, +4($a1)     
  0058b0c0: lwc1   $zero, +56($a0)    
  0058b0c4: jr     $ra                
  0058b0c8: swc1   $zero, +8($a1)     
  0058b0cc: sll $zero, $zero, 0       
  0058b0d0: lwc1   $a2, +4($a1)       
  0058b0d4: lwc1   $a1, +16($a0)      
  0058b0d8: lwc1   $a0, +0($a1)       
  0058b0dc: lwc1   $v1, +0($a0)       
  0058b0e0: lwc1   $v0, +8($a1)       
  0058b0e4: lwc1   $at, +32($a0)      
  0058b0e8: lwc1   $zero, +48($a0)    
  0058b0ec: f10.2  $a1,$s0,$a2        
  0058b0f0: f10.2  $v1,$s0,$a0        
  0058b0f4: f10.18 $v1,$s0,$a1        
  0058b0f8: f10.1c $at,$s0,$v0        
  0058b0fc: f10.0  $zero,$s0,$at      
  0058b100: swc1   $zero, +48($a0)    
  0058b104: lwc1   $a2, +0($a1)       
  0058b108: lwc1   $a1, +4($a0)       
  0058b10c: lwc1   $a0, +4($a1)       
  0058b110: lwc1   $v1, +20($a0)      
  0058b114: lwc1   $v0, +8($a1)       
  0058b118: lwc1   $at, +36($a0)      
  0058b11c: lwc1   $zero, +52($a0)    
  0058b120: f10.2  $a1,$s0,$a2        
  0058b124: f10.2  $v1,$s0,$a0        
  0058b128: f10.18 $a1,$s0,$v1        
  0058b12c: f10.1c $at,$s0,$v0        
  0058b130: f10.0  $zero,$s0,$at      
  0058b134: swc1   $zero, +52($a0)    
  0058b138: lwc1   $a2, +0($a1)       
  0058b13c: lwc1   $a1, +8($a0)       
  0058b140: lwc1   $a0, +4($a1)       
  0058b144: lwc1   $v1, +24($a0)      
  0058b148: lwc1   $v0, +8($a1)       
  0058b14c: lwc1   $at, +40($a0)      
  0058b150: lwc1   $zero, +56($a0)    
  0058b154: f10.2  $a1,$s0,$a2        
  0058b158: f10.2  $v1,$s0,$a0        
  0058b15c: f10.18 $a1,$s0,$v1        
  0058b160: f10.1c $at,$s0,$v0        
  0058b164: f10.0  $zero,$s0,$at      
  0058b168: swc1   $zero, +56($a0)    
  0058b16c: lwc1   $a2, +0($a1)       
  0058b170: lwc1   $a1, +12($a0)      
  0058b174: lwc1   $a0, +4($a1)       
  0058b178: lwc1   $v1, +28($a0)      
  0058b17c: lwc1   $v0, +8($a1)       
  0058b180: lwc1   $at, +44($a0)      
  0058b184: lwc1   $zero, +60($a0)    
  0058b188: f10.2  $a1,$s0,$a2        
  0058b18c: f10.2  $v1,$s0,$a0        
  0058b190: f10.18 $a1,$s0,$v1        
  0058b194: f10.1c $at,$s0,$v0        
  0058b198: f10.0  $zero,$s0,$at      
  0058b19c: jr     $ra                
  0058b1a0: swc1   $zero, +60($a0)    
  0058b1a4: sll $zero, $zero, 0       
  0058b1a8: sll $zero, $zero, 0       
  0058b1ac: sll $zero, $zero, 0       
  0058b1b0: lwc1   $v0, +0($a1)       
  0058b1b4: lwc1   $at, +12($a0)      
  0058b1b8: lwc1   $zero, +0($a0)     
  0058b1bc: f10.2  $at,$s0,$v0        
  0058b1c0: f10.0  $zero,$s0,$at      
  0058b1c4: swc1   $zero, +0($a0)     
  0058b1c8: lwc1   $v0, +4($a1)       
  0058b1cc: lwc1   $at, +12($a0)      
  0058b1d0: lwc1   $zero, +4($a0)     
  0058b1d4: f10.2  $at,$s0,$v0        
  0058b1d8: f10.0  $zero,$s0,$at      
  0058b1dc: swc1   $zero, +4($a0)     
  0058b1e0: lwc1   $v0, +8($a1)       
  0058b1e4: lwc1   $at, +12($a0)      
  0058b1e8: lwc1   $zero, +8($a0)     
  0058b1ec: f10.2  $at,$s0,$v0        
  0058b1f0: f10.0  $zero,$s0,$at      
  0058b1f4: swc1   $zero, +8($a0)     
  0058b1f8: lwc1   $v0, +0($a1)       
  0058b1fc: lwc1   $at, +28($a0)      
  0058b200: lwc1   $zero, +16($a0)    
  0058b204: f10.2  $at,$s0,$v0        
  0058b208: f10.0  $zero,$s0,$at      
  0058b20c: swc1   $zero, +16($a0)    
  0058b210: lwc1   $v0, +4($a1)       
  0058b214: lwc1   $at, +28($a0)      
  0058b218: lwc1   $zero, +20($a0)    
  0058b21c: f10.2  $at,$s0,$v0        
  0058b220: f10.0  $zero,$s0,$at      
  0058b224: swc1   $zero, +20($a0)    
  0058b228: lwc1   $v0, +8($a1)       
  0058b22c: lwc1   $at, +28($a0)      
  0058b230: lwc1   $zero, +24($a0)    
  0058b234: f10.2  $at,$s0,$v0        
  0058b238: f10.0  $zero,$s0,$at      
  0058b23c: swc1   $zero, +24($a0)    
  0058b240: lwc1   $v0, +0($a1)       
  0058b244: lwc1   $at, +44($a0)      
  0058b248: lwc1   $zero, +32($a0)    
  0058b24c: f10.2  $at,$s0,$v0        
  0058b250: f10.0  $zero,$s0,$at      
  0058b254: swc1   $zero, +32($a0)    
  0058b258: lwc1   $v0, +4($a1)       
  0058b25c: lwc1   $at, +44($a0)      
  0058b260: lwc1   $zero, +36($a0)    
  0058b264: f10.2  $at,$s0,$v0        
  0058b268: f10.0  $zero,$s0,$at      
  0058b26c: swc1   $zero, +36($a0)    
  0058b270: lwc1   $v0, +8($a1)       
  0058b274: lwc1   $at, +44($a0)      
  0058b278: lwc1   $zero, +40($a0)    
  0058b27c: f10.2  $at,$s0,$v0        
  0058b280: f10.0  $zero,$s0,$at      
  0058b284: swc1   $zero, +40($a0)    
  0058b288: lwc1   $v0, +0($a1)       
  0058b28c: lwc1   $at, +60($a0)      
  0058b290: lwc1   $zero, +48($a0)    
  0058b294: f10.2  $at,$s0,$v0        
  0058b298: f10.0  $zero,$s0,$at      
  0058b29c: swc1   $zero, +48($a0)    
  0058b2a0: lwc1   $v0, +4($a1)       
  0058b2a4: lwc1   $at, +60($a0)      
  0058b2a8: lwc1   $zero, +52($a0)    
  0058b2ac: f10.2  $at,$s0,$v0        
  0058b2b0: f10.0  $zero,$s0,$at      
  0058b2b4: swc1   $zero, +52($a0)    
  0058b2b8: lwc1   $v0, +8($a1)       
  0058b2bc: lwc1   $at, +60($a0)      
  0058b2c0: lwc1   $zero, +56($a0)    
  0058b2c4: f10.2  $at,$s0,$v0        
  0058b2c8: f10.0  $zero,$s0,$at      
  0058b2cc: jr     $ra                
  0058b2d0: swc1   $zero, +56($a0)    
  0058b2d4: sll $zero, $zero, 0       
  0058b2d8: sll $zero, $zero, 0       
  0058b2dc: sll $zero, $zero, 0       
