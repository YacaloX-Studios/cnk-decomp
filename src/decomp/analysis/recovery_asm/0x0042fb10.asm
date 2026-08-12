; 0x0042fb10  FUN_0042fb10  size=648  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x003f82a8;0x0042f750
; 162 words

  0042fb10: addiu  $sp, $sp, -64      
  0042fb14: sw     $s1, +16($sp)      
  0042fb18: sw     $s2, +32($sp)      
  0042fb1c: sw     $s0, +0($sp)       
  0042fb20: sw     $ra, +48($sp)      
  0042fb24: jal   0xf042f750             ; -> FUN_0042f750
  0042fb28: dsubu $s1, $a0, $zero     
  0042fb2c: lw     $a2, +16($s1)      
  0042fb30: addiu  $v1, $zero, +60    
  0042fb34: lw     $a3, +4($s1)       
  0042fb38: lui   $v0, 0x006a0000     
  0042fb3c: lw     $a1, +8($s1)       
  0042fb40: addiu  $t0, $zero, +3600  
  0042fb44: mult   $v1, $a3, +0       
  0042fb48: sll $a0, $a2, 2           
  0042fb4c: addiu  $v0, $v0, +19584   
  0042fb50: mult   $t0, $a1, +0       
  0042fb54: addu $a0, $a0, $v0        
  0042fb58: lw     $v1, +0($s1)       
  0042fb5c: lw     $v0, +12($s1)      
  0042fb60: slti   $a2, $a2, +2       
  0042fb64: lw     $t0, +0($a0)       
  0042fb68: addu $v1, $v1, $a3        
  0042fb6c: addiu  $s0, $v0, -1       
  0042fb70: addu $s2, $v1, $a1        
  0042fb74: bne    $a2, $zero, +84       ; br -> 0x0042fbcc
  0042fb78: dsubu $s0, $s0, $t0       
  0042fb7c: lw     $a0, +20($s1)      
  0042fb80: andi   $v0, $a0, +3       
  0042fb84: bnel   $v0, $zero, +72       ; br -> 0x0042fbd0
  0042fb88: lw     $a1, +20($s1)      
  0042fb8c: addiu  $v0, $zero, +100   
  0042fb90: div    $v0, $a0, +0       
  0042fb94: beql   $v0, $zero, +4        ; br -> 0x0042fb9c
  0042fb98: break                     
  0042fb9c: mfhi   $zero, $zero, +0   
  0042fba0: bnel   $v1, $zero, +40       ; br -> 0x0042fbcc
  0042fba4: op19    $s0,$s0,$zero     
  0042fba8: addiu  $v1, $a0, +1900    
  0042fbac: addiu  $v0, $zero, +400   
  0042fbb0: div    $v0, $v1, +0       
  0042fbb4: beql   $v0, $zero, +4        ; br -> 0x0042fbbc
  0042fbb8: break                     
  0042fbbc: mfhi   $zero, $zero, +0   
  0042fbc0: bnel   $a0, $zero, +12       ; br -> 0x0042fbd0
  0042fbc4: lw     $a1, +20($s1)      
  0042fbc8: op19    $s0,$s0,$zero     
  0042fbcc: lw     $a1, +20($s1)      
  0042fbd0: spec3c  $zero,$s0,$v1     
  0042fbd4: spec3f  $zero,$v1,$v1     
  0042fbd8: addiu  $v0, $a1, +10000   
  0042fbdc: sltiu  $v0, $v0, +20001   
  0042fbe0: bne    $v0, $zero, +12       ; br -> 0x0042fbf0
  0042fbe4: sw     $v1, +28($s1)      
  0042fbe8: beq    $zero, $zero, +404    ; br -> 0x0042fd80
  0042fbec: addiu  $v0, $zero, -1     
  0042fbf0: slti   $v0, $a1, +71      
  0042fbf4: bne    $v0, $zero, +128      ; br -> 0x0042fc78
  0042fbf8: slti   $v0, $a1, +70      
  0042fbfc: addiu  $a0, $zero, +70    
  0042fc00: dadd $v0, $a0, $a1        
  0042fc04: beq    $v0, $zero, +308      ; br -> 0x0042fd3c
  0042fc08: dsubu $t0, $a1, $zero     
  0042fc0c: addiu  $a2, $zero, +100   
  0042fc10: dsubu $a3, $zero, $zero   
  0042fc14: addiu  $a1, $zero, +400   
  0042fc18: andi   $v0, $a0, +3       
  0042fc1c: sll $zero, $zero, 0       
  0042fc20: bnel   $v0, $zero, +60       ; br -> 0x0042fc60
  0042fc24: op19    $s0,$s0,$zero     
  0042fc28: div    $a2, $a0, +0       
  0042fc2c: beql   $a2, $a3, +4          ; br -> 0x0042fc34
  0042fc30: break                     
  0042fc34: mfhi   $zero, $zero, +0   
  0042fc38: bnel   $v0, $zero, +36       ; br -> 0x0042fc60
  0042fc3c: op19    $s0,$s0,$zero     
  0042fc40: addiu  $v0, $a0, +1900    
  0042fc44: beql   $a1, $a3, +4          ; br -> 0x0042fc4c
  0042fc48: break                     
  0042fc4c: div    $a1, $v0, +0       
  0042fc50: mfhi   $zero, $zero, +0   
  0042fc54: bnel   $v1, $zero, +8        ; br -> 0x0042fc60
  0042fc58: op19    $s0,$s0,$zero     
  0042fc5c: op19    $s0,$s0,$zero     
  0042fc60: addiu  $a0, $a0, +1       
  0042fc64: dadd $v0, $a0, $t0        
  0042fc68: bne    $v0, $zero, -76       ; br -> 0x0042fc20
  0042fc6c: andi   $v0, $a0, +3       
  0042fc70: beq    $zero, $zero, +204    ; br -> 0x0042fd40
  0042fc74: op19    $s0,$a0,$zero     
  0042fc78: beq    $v0, $zero, +192      ; br -> 0x0042fd3c
  0042fc7c: slti   $v0, $a1, +69      
  0042fc80: beq    $v0, $zero, +108      ; br -> 0x0042fcf0
  0042fc84: addiu  $a0, $zero, +69    
  0042fc88: dsubu $t0, $a1, $zero     
  0042fc8c: addiu  $a2, $zero, +100   
  0042fc90: dsubu $a3, $zero, $zero   
  0042fc94: addiu  $a1, $zero, +400   
  0042fc98: andi   $v0, $a0, +3       
  0042fc9c: sll $zero, $zero, 0       
  0042fca0: bnel   $v0, $zero, +60       ; br -> 0x0042fce0
  0042fca4: op19    $s0,$s0,$ra       
  0042fca8: div    $a2, $a0, +0       
  0042fcac: beql   $a2, $a3, +4          ; br -> 0x0042fcb4
  0042fcb0: break                     
  0042fcb4: mfhi   $zero, $zero, +0   
  0042fcb8: bnel   $v0, $zero, +36       ; br -> 0x0042fce0
  0042fcbc: op19    $s0,$s0,$ra       
  0042fcc0: addiu  $v0, $a0, +1900    
  0042fcc4: beql   $a1, $a3, +4          ; br -> 0x0042fccc
  0042fcc8: break                     
  0042fccc: div    $a1, $v0, +0       
  0042fcd0: mfhi   $zero, $zero, +0   
  0042fcd4: bnel   $v1, $zero, +8        ; br -> 0x0042fce0
  0042fcd8: op19    $s0,$s0,$ra       
  0042fcdc: op19    $s0,$s0,$ra       
  0042fce0: addiu  $a0, $a0, -1       
  0042fce4: dadd $v0, $t0, $a0        
  0042fce8: bne    $v0, $zero, -76       ; br -> 0x0042fca0
  0042fcec: andi   $v0, $a0, +3       
  0042fcf0: andi   $v0, $a0, +3       
  0042fcf4: bnel   $v0, $zero, +68       ; br -> 0x0042fd3c
  0042fcf8: op19    $s0,$s0,$ra       
  0042fcfc: addiu  $v0, $zero, +100   
  0042fd00: div    $v0, $a0, +0       
  0042fd04: beql   $v0, $zero, +4        ; br -> 0x0042fd0c
  0042fd08: break                     
  0042fd0c: mfhi   $zero, $zero, +0   
  0042fd10: bnel   $v1, $zero, +40       ; br -> 0x0042fd3c
  0042fd14: op19    $s0,$s0,$ra       
  0042fd18: addiu  $v1, $a0, +1900    
  0042fd1c: addiu  $v0, $zero, +400   
  0042fd20: div    $v0, $v1, +0       
  0042fd24: beql   $v0, $zero, +4        ; br -> 0x0042fd2c
  0042fd28: break                     
  0042fd2c: mfhi   $zero, $zero, +0   
  0042fd30: bnel   $a0, $zero, +8        ; br -> 0x0042fd3c
  0042fd34: op19    $s0,$s0,$ra       
  0042fd38: op19    $s0,$s0,$ra       
  0042fd3c: op19    $s0,$a0,$zero     
  0042fd40: jal   0xf03f82a8             ; -> 0x003f82a8
  0042fd44: addiu  $a1, $zero, +7     
  0042fd48: spec3c  $zero,$v0,$v0     
  0042fd4c: spec3f  $zero,$v0,$v0     
  0042fd50: regimm $v0, $at, +12         ; br -> 0x0042fd60
  0042fd54: sw     $v0, +24($s1)      
  0042fd58: addiu  $v0, $v0, +7       
  0042fd5c: sw     $v0, +24($s1)      
  0042fd60: spec38  $zero,$s0,$v0     
  0042fd64: dsubu $v0, $v0, $s0       
  0042fd68: spec38  $zero,$v0,$v1     
  0042fd6c: spec2f  $v1,$v0,$v1       
  0042fd70: spec38  $zero,$v1,$v0     
  0042fd74: spec2f  $v0,$v1,$v0       
  0042fd78: spec38  $zero,$v0,$v0     
  0042fd7c: dsubu $v0, $s2, $v0       
  0042fd80: lw     $ra, +48($sp)      
  0042fd84: lw     $s2, +32($sp)      
  0042fd88: lw     $s1, +16($sp)      
  0042fd8c: lw     $s0, +0($sp)       
  0042fd90: jr     $ra                
  0042fd94: addiu  $sp, $sp, +64      
