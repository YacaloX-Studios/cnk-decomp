; 0x0042cfe0  FUN_0042cfe0  size=600  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0042c660;0x0042cf78
; 150 words

  0042cfe0: addiu  $sp, $sp, -80      
  0042cfe4: sq     $s3, +48($sp)      
  0042cfe8: sq     $s2, +32($sp)      
  0042cfec: daddu $s3, $a0, $zero     
  0042cff0: sq     $s1, +16($sp)      
  0042cff4: daddu $s2, $a2, $zero     
  0042cff8: daddu $s1, $a1, $zero     
  0042cffc: sq     $s0, +0($sp)       
  0042d000: sq     $ra, +64($sp)      
  0042d004: daddu $a1, $s2, $zero     
  0042d008: jal   0xf042cf78             ; -> 0x0042cf78
  0042d00c: daddu $a0, $s1, $zero     
  0042d010: daddu $s0, $v0, $zero     
  0042d014: bne    $s0, $zero, +32       ; br -> 0x0042d038
  0042d018: daddu $a0, $s3, $zero     
  0042d01c: jal   0xf042c660             ; -> FUN_0042c660
  0042d020: daddu $a1, $zero, $zero   
  0042d024: daddu $t3, $v0, $zero     
  0042d028: addiu  $v0, $zero, +1     
  0042d02c: sw     $zero, +20($t3)    
  0042d030: beq    $zero, $zero, +284    ; br -> 0x0042d150
  0042d034: sw     $v0, +16($t3)      
  0042d038: regimm $s0, $at, +20         ; br -> 0x0042d050
  0042d03c: daddu $s0, $zero, $zero   
  0042d040: daddu $t3, $s1, $zero     
  0042d044: addiu  $s0, $zero, +1     
  0042d048: daddu $s1, $s2, $zero     
  0042d04c: daddu $s2, $t3, $zero     
  0042d050: lw     $a1, +4($s1)       
  0042d054: jal   0xf042c660             ; -> FUN_0042c660
  0042d058: daddu $a0, $s3, $zero     
  0042d05c: daddu $t3, $v0, $zero     
  0042d060: addiu  $t0, $s1, +20      
  0042d064: sw     $s0, +12($t3)      
  0042d068: addiu  $t1, $s2, +20      
  0042d06c: addiu  $a3, $t3, +20      
  0042d070: daddu $t2, $zero, $zero   
  0042d074: lw     $t4, +16($s1)      
  0042d078: lw     $v0, +16($s2)      
  0042d07c: sll $v1, $t4, 2           
  0042d080: sll $v0, $v0, 2           
  0042d084: addu $t5, $t0, $v1        
  0042d088: addu $a2, $t1, $v0        
  0042d08c: sll $zero, $zero, 0       
  0042d090: lw     $a1, +0($t0)       
  0042d094: lw     $v0, +0($t1)       
  0042d098: addiu  $t0, $t0, +4       
  0042d09c: andi   $v1, $a1, -1       
  0042d0a0: addiu  $t1, $t1, +4       
  0042d0a4: andi   $a0, $v0, -1       
  0042d0a8: srl $a1, $a1, 16          
  0042d0ac: subu $v1, $v1, $a0        
  0042d0b0: srl $v0, $v0, 16          
  0042d0b4: addu $v1, $v1, $t2        
  0042d0b8: subu $a1, $a1, $v0        
  0042d0bc: sra $t2, $v1, 16          
  0042d0c0: sh     $v1, +0($a3)       
  0042d0c4: addu $a1, $a1, $t2        
  0042d0c8: sltu $v0, $t1, $a2        
  0042d0cc: sh     $a1, +2($a3)       
  0042d0d0: sra $t2, $a1, 16          
  0042d0d4: bne    $v0, $zero, -72       ; br -> 0x0042d090
  0042d0d8: addiu  $a3, $a3, +4       
  0042d0dc: sltu $v0, $t0, $t5        
  0042d0e0: beql   $v0, $zero, +60       ; br -> 0x0042d120
  0042d0e4: addiu  $a3, $a3, -4       
  0042d0e8: lw     $v0, +0($t0)       
  0042d0ec: addiu  $t0, $t0, +4       
  0042d0f0: andi   $v1, $v0, -1       
  0042d0f4: sltu $a0, $t0, $t5        
  0042d0f8: addu $v1, $v1, $t2        
  0042d0fc: srl $v0, $v0, 16          
  0042d100: sra $t2, $v1, 16          
  0042d104: sh     $v1, +0($a3)       
  0042d108: addu $a1, $v0, $t2        
  0042d10c: sh     $a1, +2($a3)       
  0042d110: sra $t2, $a1, 16          
  0042d114: bne    $a0, $zero, -48       ; br -> 0x0042d0e8
  0042d118: addiu  $a3, $a3, +4       
  0042d11c: addiu  $a3, $a3, -4       
  0042d120: lw     $v0, +0($a3)       
  0042d124: bnel   $v0, $zero, +40       ; br -> 0x0042d150
  0042d128: sw     $t4, +16($t3)      
  0042d12c: sll $zero, $zero, 0       
  0042d130: addiu  $a3, $a3, -4       
  0042d134: lw     $v0, +0($a3)       
  0042d138: sll $zero, $zero, 0       
  0042d13c: sll $zero, $zero, 0       
  0042d140: sll $zero, $zero, 0       
  0042d144: beq    $v0, $zero, -24       ; br -> 0x0042d130
  0042d148: addiu  $t4, $t4, -1       
  0042d14c: sw     $t4, +16($t3)      
  0042d150: daddu $v0, $t3, $zero     
  0042d154: lq     $ra, +64($sp)      
  0042d158: lq     $s3, +48($sp)      
  0042d15c: lq     $s2, +32($sp)      
  0042d160: lq     $s1, +16($sp)      
  0042d164: lq     $s0, +0($sp)       
  0042d168: jr     $ra                
  0042d16c: addiu  $sp, $sp, +80      
  0042d170: spec3f  $zero,$a0,$a0     
  0042d174: lui   $v0, 0x7ff00000     
  0042d178: and $a0, $a0, $v0         
  0042d17c: lui   $v1, 0xfcc00000     
  0042d180: addu $a0, $a0, $v1        
  0042d184: blez   $a0, $zero, +40       ; br -> 0x0042d1b0
  0042d188: subu $v0, $zero, $a0      
  0042d18c: addiu  $v0, $zero, -1     
  0042d190: spec3e  $zero,$v0,$v0     
  0042d194: spec3c  $zero,$a0,$a0     
  0042d198: and $a1, $a1, $v0         
  0042d19c: addiu  $v1, $zero, -1     
  0042d1a0: spec3c  $zero,$v1,$v1     
  0042d1a4: or $a1, $a1, $a0          
  0042d1a8: beq    $zero, $zero, +132    ; br -> 0x0042d230
  0042d1ac: and $a1, $a1, $v1         
  0042d1b0: sra $a0, $v0, 20          
  0042d1b4: slti   $v1, $a0, +20      
  0042d1b8: beq    $v1, $zero, +44       ; br -> 0x0042d1e8
  0042d1bc: lui   $v0, 0x00080000     
  0042d1c0: addiu  $v1, $zero, -1     
  0042d1c4: spec3e  $zero,$v1,$v1     
  0042d1c8: srav $v0, $v0, $a0        
  0042d1cc: and $a1, $a1, $v1         
  0042d1d0: spec3c  $zero,$v0,$v0     
  0042d1d4: addiu  $v1, $zero, -1     
  0042d1d8: spec3c  $zero,$v1,$v1     
  0042d1dc: or $a1, $a1, $v0          
  0042d1e0: beq    $zero, $zero, +76     ; br -> 0x0042d230
  0042d1e4: and $a1, $a1, $v1         
  0042d1e8: addiu  $v1, $zero, -1     
  0042d1ec: spec3e  $zero,$v1,$v1     
  0042d1f0: addiu  $a0, $a0, -20      
  0042d1f4: slti   $v0, $a0, +31      
  0042d1f8: beq    $v0, $zero, +24       ; br -> 0x0042d214
  0042d1fc: and $a1, $a1, $v1         
  0042d200: addiu  $v0, $zero, +31    
  0042d204: addiu  $v1, $zero, +1     
  0042d208: subu $v0, $v0, $a0        
  0042d20c: beq    $zero, $zero, +8      ; br -> 0x0042d218
  0042d210: sllv $v0, $v1, $v0        
  0042d214: addiu  $v0, $zero, +1     
  0042d218: spec3c  $zero,$v0,$v0     
  0042d21c: addiu  $v1, $zero, -1     
  0042d220: spec3c  $zero,$v1,$v1     
  0042d224: spec3e  $zero,$v0,$v0     
  0042d228: and $a1, $a1, $v1         
  0042d22c: or $a1, $a1, $v0          
  0042d230: jr     $ra                
  0042d234: daddu $v0, $a1, $zero     
