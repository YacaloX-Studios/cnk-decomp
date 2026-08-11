; 0x0042cfe0  FUN_0042cfe0  size=600  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x0042c660;0x0042cf78
; 150 words

  0042cfe0: addiu  $sp, $sp, -80      
  0042cfe4: sw     $s3, +48($sp)      
  0042cfe8: sw     $s2, +32($sp)      
  0042cfec: dsubu  $zero, $a0, +0     
  0042cff0: sw     $s1, +16($sp)      
  0042cff4: dsubu  $zero, $a2, +0     
  0042cff8: dsubu  $zero, $a1, +0     
  0042cffc: sw     $s0, +0($sp)       
  0042d000: sw     $ra, +64($sp)      
  0042d004: dsubu  $zero, $s2, +0     
  0042d008: jal   0xf042cf78             ; -> 0x0042cf78
  0042d00c: dsubu  $zero, $s1, +0     
  0042d010: dsubu  $zero, $v0, +0     
  0042d014: bne    $s0, $zero, +32       ; br -> 0x0042d038
  0042d018: dsubu  $zero, $s3, +0     
  0042d01c: jal   0xf042c660             ; -> FUN_0042c660
  0042d020: dsubu  $zero, $zero, +0   
  0042d024: dsubu  $zero, $v0, +0     
  0042d028: addiu  $v0, $zero, +1     
  0042d02c: sw     $zero, +20($t3)    
  0042d030: beq    $zero, $zero, +284    ; br -> 0x0042d150
  0042d034: sw     $v0, +16($t3)      
  0042d038: regimm $s0, $at, +20         ; br -> 0x0042d050
  0042d03c: dsubu  $zero, $zero, +0   
  0042d040: dsubu  $zero, $s1, +0     
  0042d044: addiu  $s0, $zero, +1     
  0042d048: dsubu  $zero, $s2, +0     
  0042d04c: dsubu  $zero, $t3, +0     
  0042d050: lw     $a1, +4($s1)       
  0042d054: jal   0xf042c660             ; -> FUN_0042c660
  0042d058: dsubu  $zero, $s3, +0     
  0042d05c: dsubu  $zero, $v0, +0     
  0042d060: addiu  $t0, $s1, +20      
  0042d064: sw     $s0, +12($t3)      
  0042d068: addiu  $t1, $s2, +20      
  0042d06c: addiu  $a3, $t3, +20      
  0042d070: dsubu  $zero, $zero, +0   
  0042d074: lw     $t4, +16($s1)      
  0042d078: lw     $v0, +16($s2)      
  0042d07c: sll    $t4, $zero, +2     
  0042d080: sll    $v0, $zero, +2     
  0042d084: addu   $v1, $t0, +0       
  0042d088: addu   $v0, $t1, +0       
  0042d08c: sll    $zero, $zero, +0   
  0042d090: lw     $a1, +0($t0)       
  0042d094: lw     $v0, +0($t1)       
  0042d098: addiu  $t0, $t0, +4       
  0042d09c: andi   $v1, $a1, -1       
  0042d0a0: addiu  $t1, $t1, +4       
  0042d0a4: andi   $a0, $v0, -1       
  0042d0a8: srl    $a1, $zero, +16    
  0042d0ac: subu   $a0, $v1, +0       
  0042d0b0: srl    $v0, $zero, +16    
  0042d0b4: addu   $t2, $v1, +0       
  0042d0b8: subu   $v0, $a1, +0       
  0042d0bc: sra    $v1, $zero, +16    
  0042d0c0: sw     $v1, +0($a3)       
  0042d0c4: addu   $t2, $a1, +0       
  0042d0c8: daddu  $a2, $t1, +0       
  0042d0cc: sw     $a1, +2($a3)       
  0042d0d0: sra    $a1, $zero, +16    
  0042d0d4: bne    $v0, $zero, -72       ; br -> 0x0046d090
  0042d0d8: addiu  $a3, $a3, +4       
  0042d0dc: daddu  $t5, $t0, +0       
  0042d0e0: beql   $v0, $zero, +60       ; br -> 0x0042d120
  0042d0e4: addiu  $a3, $a3, -4       
  0042d0e8: lw     $v0, +0($t0)       
  0042d0ec: addiu  $t0, $t0, +4       
  0042d0f0: andi   $v1, $v0, -1       
  0042d0f4: daddu  $t5, $t0, +0       
  0042d0f8: addu   $t2, $v1, +0       
  0042d0fc: srl    $v0, $zero, +16    
  0042d100: sra    $v1, $zero, +16    
  0042d104: sw     $v1, +0($a3)       
  0042d108: addu   $t2, $v0, +0       
  0042d10c: sw     $a1, +2($a3)       
  0042d110: sra    $a1, $zero, +16    
  0042d114: bne    $a0, $zero, -48       ; br -> 0x0046d0e8
  0042d118: addiu  $a3, $a3, +4       
  0042d11c: addiu  $a3, $a3, -4       
  0042d120: lw     $v0, +0($a3)       
  0042d124: bnel   $v0, $zero, +40       ; br -> 0x0042d150
  0042d128: sw     $t4, +16($t3)      
  0042d12c: sll    $zero, $zero, +0   
  0042d130: addiu  $a3, $a3, -4       
  0042d134: lw     $v0, +0($a3)       
  0042d138: sll    $zero, $zero, +0   
  0042d13c: sll    $zero, $zero, +0   
  0042d140: sll    $zero, $zero, +0   
  0042d144: beq    $v0, $zero, -24       ; br -> 0x0046d130
  0042d148: addiu  $t4, $t4, -1       
  0042d14c: sw     $t4, +16($t3)      
  0042d150: dsubu  $zero, $t3, +0     
  0042d154: lw     $ra, +64($sp)      
  0042d158: lw     $s3, +48($sp)      
  0042d15c: lw     $s2, +32($sp)      
  0042d160: lw     $s1, +16($sp)      
  0042d164: lw     $s0, +0($sp)       
  0042d168: jr     $ra                
  0042d16c: addiu  $sp, $sp, +80      
  0042d170: spec3f  $zero,$a0,$a0     
  0042d174: lui   $v0, 0x7ff00000     
  0042d178: and    $v0, $a0, +0       
  0042d17c: lui   $v1, 0xfcc00000     
  0042d180: addu   $v1, $a0, +0       
  0042d184: blez   $a0, $zero, +40       ; br -> 0x0042d1b0
  0042d188: subu   $a0, $zero, +0     
  0042d18c: addiu  $v0, $zero, -1     
  0042d190: spec3e  $zero,$v0,$v0     
  0042d194: spec3c  $zero,$a0,$a0     
  0042d198: and    $v0, $a1, +0       
  0042d19c: addiu  $v1, $zero, -1     
  0042d1a0: spec3c  $zero,$v1,$v1     
  0042d1a4: or     $a0, $a1, +0       
  0042d1a8: beq    $zero, $zero, +132    ; br -> 0x0042d230
  0042d1ac: and    $v1, $a1, +0       
  0042d1b0: sra    $v0, $zero, +20    
  0042d1b4: slti   $v1, $a0, +20      
  0042d1b8: beq    $v1, $zero, +44       ; br -> 0x0042d1e8
  0042d1bc: lui   $v0, 0x00080000     
  0042d1c0: addiu  $v1, $zero, -1     
  0042d1c4: spec3e  $zero,$v1,$v1     
  0042d1c8: srav   $v0, $a0, +0       
  0042d1cc: and    $v1, $a1, +0       
  0042d1d0: spec3c  $zero,$v0,$v0     
  0042d1d4: addiu  $v1, $zero, -1     
  0042d1d8: spec3c  $zero,$v1,$v1     
  0042d1dc: or     $v0, $a1, +0       
  0042d1e0: beq    $zero, $zero, +76     ; br -> 0x0042d230
  0042d1e4: and    $v1, $a1, +0       
  0042d1e8: addiu  $v1, $zero, -1     
  0042d1ec: spec3e  $zero,$v1,$v1     
  0042d1f0: addiu  $a0, $a0, -20      
  0042d1f4: slti   $v0, $a0, +31      
  0042d1f8: beq    $v0, $zero, +24       ; br -> 0x0042d214
  0042d1fc: and    $v1, $a1, +0       
  0042d200: addiu  $v0, $zero, +31    
  0042d204: addiu  $v1, $zero, +1     
  0042d208: subu   $a0, $v0, +0       
  0042d20c: beq    $zero, $zero, +8      ; br -> 0x0042d218
  0042d210: sllv   $v1, $v0, +0       
  0042d214: addiu  $v0, $zero, +1     
  0042d218: spec3c  $zero,$v0,$v0     
  0042d21c: addiu  $v1, $zero, -1     
  0042d220: spec3c  $zero,$v1,$v1     
  0042d224: spec3e  $zero,$v0,$v0     
  0042d228: and    $v1, $a1, +0       
  0042d22c: or     $v0, $a1, +0       
  0042d230: jr     $ra                
  0042d234: dsubu  $zero, $a1, +0     
