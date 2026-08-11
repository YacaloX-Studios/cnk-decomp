; 0x0042ae68  FUN_0042ae68  size=3088  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x003fb8d0;0x00429fb8;0x0042a818;0x0042acd0;0x0042b980;0x0042bd98;0x0042c280
; 772 words

  0042ae68: addiu  $sp, $sp, -800     
  0042ae6c: addiu  $v0, $sp, +608     
  0042ae70: addiu  $v1, $sp, +612     
  0042ae74: sw     $fp, +768($sp)     
  0042ae78: sw     $s7, +752($sp)     
  0042ae7c: dsubu  $zero, $zero, +0   
  0042ae80: sw     $s5, +720($sp)     
  0042ae84: dsubu  $zero, $zero, +0   
  0042ae88: sw     $s2, +672($sp)     
  0042ae8c: dsubu  $zero, $a2, +0     
  0042ae90: sw     $ra, +784($sp)     
  0042ae94: dsubu  $zero, $a0, +0     
  0042ae98: sw     $s6, +736($sp)     
  0042ae9c: sw     $s4, +704($sp)     
  0042aea0: sw     $s3, +688($sp)     
  0042aea4: sw     $s1, +656($sp)     
  0042aea8: sw     $s0, +640($sp)     
  0042aeac: sw     $zero, +612($sp)   
  0042aeb0: sw     $a1, +616($sp)     
  0042aeb4: sw     $zero, +624($sp)   
  0042aeb8: sw     $zero, +620($sp)   
  0042aebc: sw     $v0, +628($sp)     
  0042aec0: sw     $v1, +632($sp)     
  0042aec4: sll    $zero, $zero, +0   
  0042aec8: lui   $v1, 0x00650000     
  0042aecc: lui   $v0, 0x00650000     
  0042aed0: lw     $a0, +30548($v0)      ; GLOBAL 0x00657754
  0042aed4: lw     $a2, +616($sp)     
  0042aed8: lw     $a3, +29776($v1)      ; GLOBAL 0x00657450
  0042aedc: lw     $a1, +628($sp)     
  0042aee0: jal   0xf042c280             ; -> FUN_0042c280
  0042aee4: lw     $t0, +632($sp)     
  0042aee8: lw     $a0, +616($sp)     
  0042aeec: dsubu  $zero, $v0, +0     
  0042aef0: lw     $v1, +608($sp)     
  0042aef4: addu   $s6, $a0, +0       
  0042aef8: beq    $v1, $zero, +2636     ; br -> 0x0042b948
  0042aefc: sw     $a0, +616($sp)     
  0042af00: addiu  $v0, $zero, +1     
  0042af04: bnel   $s6, $v0, +128        ; br -> 0x0042af88
  0042af08: lw     $v1, +608($sp)     
  0042af0c: lui   $v0, 0x006a0000     
  0042af10: addiu  $a0, $v0, +17361   
  0042af14: addu   $a0, $v1, +0       
  0042af18: lw     $v0, +0($v1)          ; GLOBAL 0x00650000
  0042af1c: andi   $v0, $v0, +8       
  0042af20: beq    $v0, $zero, +96       ; br -> 0x0042af84
  0042af24: dsubu  $zero, $a0, +0     
  0042af28: beq    $zero, $zero, +28     ; br -> 0x0042af48
  0042af2c: lw     $v0, +4($s2)       
  0042af30: addiu  $v0, $a0, +1       
  0042af34: sw     $v0, +0($s2)       
  0042af38: addiu  $s7, $s7, +1       
  0042af3c: addiu  $v1, $v1, -1       
  0042af40: sw     $v1, +4($s2)       
  0042af44: lw     $v0, +4($s2)       
  0042af48: bgtzl  $v0, $zero, +24       ; br -> 0x0042af64
  0042af4c: lw     $a0, +0($s2)       
  0042af50: jal   0xf042a818             ; -> FUN_0042a818
  0042af54: dsubu  $zero, $s2, +0     
  0042af58: bne    $v0, $zero, +2544     ; br -> 0x0042b94c
  0042af5c: lw     $v0, +620($sp)     
  0042af60: lw     $a0, +0($s2)       
  0042af64: lw     $v0, +0($a0)       
  0042af68: addu   $s0, $v0, +0       
  0042af6c: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042af70: andi   $v1, $v1, +8       
  0042af74: bnel   $v1, $zero, -72       ; br -> 0x0046af30
  0042af78: lw     $v1, +4($s2)       
  0042af7c: beq    $zero, $zero, -180    ; br -> 0x0046aecc
  0042af80: lui   $v1, 0x00650000     
  0042af84: lw     $v1, +608($sp)     
  0042af88: addiu  $v0, $zero, +37    
  0042af8c: bne    $v1, $v0, +68         ; br -> 0x0042afd4
  0042af90: lw     $v1, +616($sp)     
  0042af94: dsubu  $zero, $zero, +0   
  0042af98: dsubu  $zero, $zero, +0   
  0042af9c: lw     $v0, +616($sp)     
  0042afa0: lw     $s0, +0($v0)          ; GLOBAL 0x006a0000
  0042afa4: addiu  $v0, $v0, +1       
  0042afa8: sw     $v0, +616($sp)     
  0042afac: sltiu  $v0, $s0, +121     
  0042afb0: beq    $v0, $zero, +460      ; br -> 0x0042b180
  0042afb4: lui   $v0, 0x006a0000     
  0042afb8: sll    $s0, $zero, +2     
  0042afbc: addiu  $v0, $v0, +17856   
  0042afc0: addu   $v0, $v1, +0       
  0042afc4: lw     $a0, +0($v1)          ; GLOBAL 0x00650000
  0042afc8: jr     $a0                
  0042afcc: sll    $zero, $zero, +0   
  0042afd0: lw     $v1, +616($sp)     
  0042afd4: dsubu  $zero, $zero, +0   
  0042afd8: blez   $s6, $zero, -276      ; br -> 0x0046aec8
  0042afdc: subu   $s6, $v1, +0       
  0042afe0: lw     $v0, +4($s2)       
  0042afe4: bgtzl  $v0, $zero, +24       ; br -> 0x0042b000
  0042afe8: lw     $a0, +0($s2)       
  0042afec: jal   0xf042a818             ; -> FUN_0042a818
  0042aff0: dsubu  $zero, $s2, +0     
  0042aff4: bne    $v0, $zero, +2372     ; br -> 0x0042b93c
  0042aff8: lw     $v1, +620($sp)     
  0042affc: lw     $a0, +0($s2)       
  0042b000: lw     $v1, +0($s1)       
  0042b004: lw     $v0, +0($a0)       
  0042b008: bne    $v0, $v1, +2364       ; br -> 0x0042b948
  0042b00c: addiu  $v1, $a0, +1       
  0042b010: lw     $v0, +4($s2)       
  0042b014: addiu  $s0, $s0, +1       
  0042b018: sw     $v1, +0($s2)       
  0042b01c: addiu  $v0, $v0, -1       
  0042b020: addiu  $s7, $s7, +1       
  0042b024: sw     $v0, +4($s2)       
  0042b028: dadd   $s6, $s0, +0       
  0042b02c: bne    $v0, $zero, -80       ; br -> 0x0046afe0
  0042b030: addiu  $s1, $s1, +1       
  0042b034: beq    $zero, $zero, -364    ; br -> 0x0046aecc
  0042b038: lui   $v1, 0x00650000     
  0042b03c: beq    $zero, $zero, -164    ; br -> 0x0046af9c
  0042b040: ori    $s3, $s3, +8       
  0042b044: beq    $zero, $zero, -172    ; br -> 0x0046af9c
  0042b048: ori    $s3, $s3, +1       
  0042b04c: beq    $zero, $zero, -180    ; br -> 0x0046af9c
  0042b050: ori    $s3, $s3, +2       
  0042b054: beq    $zero, $zero, -188    ; br -> 0x0046af9c
  0042b058: ori    $s3, $s3, +4       
  0042b05c: addiu  $v0, $zero, +10    
  0042b060: mult   $v0, $s4, +0       
  0042b064: addu   $s0, $v1, +0       
  0042b068: beq    $zero, $zero, -208    ; br -> 0x0046af9c
  0042b06c: addiu  $s4, $v0, -48      
  0042b070: ori    $s3, $s3, +1       
  0042b074: lui   $v0, 0x00430000     
  0042b078: addiu  $s0, $zero, +3     
  0042b07c: beq    $zero, $zero, +68     ; br -> 0x0042b0c4
  0042b080: addiu  $v0, $v0, +6336    
  0042b084: lui   $v0, 0x00430000     
  0042b088: addiu  $s0, $zero, +3     
  0042b08c: addiu  $v0, $v0, +6336    
  0042b090: dsubu  $zero, $zero, +0   
  0042b094: beq    $zero, $zero, +276    ; br -> 0x0042b1ac
  0042b098: sw     $v0, +624($sp)     
  0042b09c: ori    $s3, $s3, +1       
  0042b0a0: lui   $v0, 0x00430000     
  0042b0a4: addiu  $s0, $zero, +3     
  0042b0a8: addiu  $v0, $v0, -3224    
  0042b0ac: addiu  $fp, $zero, +8     
  0042b0b0: beq    $zero, $zero, +248    ; br -> 0x0042b1ac
  0042b0b4: sw     $v0, +624($sp)     
  0042b0b8: lui   $v0, 0x00430000     
  0042b0bc: addiu  $s0, $zero, +3     
  0042b0c0: addiu  $v0, $v0, -3224    
  0042b0c4: addiu  $fp, $zero, +10    
  0042b0c8: beq    $zero, $zero, +224    ; br -> 0x0042b1ac
  0042b0cc: sw     $v0, +624($sp)     
  0042b0d0: lui   $v0, 0x00430000     
  0042b0d4: beq    $zero, $zero, +68     ; br -> 0x0042b11c
  0042b0d8: ori    $s3, $s3, +256     
  0042b0dc: beq    $zero, $zero, +204    ; br -> 0x0042b1ac
  0042b0e0: addiu  $s0, $zero, +4     
  0042b0e4: beq    $zero, $zero, +196    ; br -> 0x0042b1ac
  0042b0e8: addiu  $s0, $zero, +2     
  0042b0ec: lw     $a1, +616($sp)     
  0042b0f0: dsubu  $zero, $sp, +0     
  0042b0f4: ori    $s3, $s3, +32      
  0042b0f8: jal   0xf042b980             ; -> 0x0042b980
  0042b0fc: addiu  $s0, $zero, +1     
  0042b100: beq    $zero, $zero, +168    ; br -> 0x0042b1ac
  0042b104: sw     $v0, +616($sp)     
  0042b108: ori    $s3, $s3, +32      
  0042b10c: beq    $zero, $zero, +156    ; br -> 0x0042b1ac
  0042b110: dsubu  $zero, $zero, +0   
  0042b114: lui   $v0, 0x00430000     
  0042b118: ori    $s3, $s3, +272     
  0042b11c: addiu  $v0, $v0, -3224    
  0042b120: addiu  $s0, $zero, +3     
  0042b124: sw     $v0, +624($sp)     
  0042b128: beq    $zero, $zero, +128    ; br -> 0x0042b1ac
  0042b12c: addiu  $fp, $zero, +16    
  0042b130: andi   $v0, $s3, +8       
  0042b134: bne    $v0, $zero, -620      ; br -> 0x0046aecc
  0042b138: lui   $v1, 0x00650000     
  0042b13c: andi   $v0, $s3, +4       
  0042b140: beq    $v0, $zero, +20       ; br -> 0x0042b158
  0042b144: andi   $v0, $s3, +1       
  0042b148: addiu  $s5, $s5, +8       
  0042b14c: lw     $a0, -8($s5)       
  0042b150: beq    $zero, $zero, -648    ; br -> 0x0046aecc
  0042b154: sw     $s7, +0($a0)       
  0042b158: beq    $v0, $zero, +16       ; br -> 0x0042b16c
  0042b15c: addiu  $s5, $s5, +8       
  0042b160: lw     $v0, -8($s5)       
  0042b164: beq    $zero, $zero, -672    ; br -> 0x0046aec8
  0042b168: sw     $s7, +0($v0)          ; GLOBAL 0x00430000
  0042b16c: lw     $a0, -8($s5)       
  0042b170: beq    $zero, $zero, -684    ; br -> 0x0046aec8
  0042b174: sw     $s7, +0($a0)       
  0042b178: beq    $zero, $zero, +2000   ; br -> 0x0042b94c
  0042b17c: addiu  $v0, $zero, -1     
  0042b180: lui   $v0, 0x006a0000     
  0042b184: lui   $v1, 0x00430000     
  0042b188: addiu  $v1, $v1, +6336    
  0042b18c: addiu  $v0, $v0, +17361   
  0042b190: addu   $v0, $s0, +0       
  0042b194: sw     $v1, +624($sp)     
  0042b198: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042b19c: addiu  $fp, $zero, +10    
  0042b1a0: addiu  $s0, $zero, +3     
  0042b1a4: andi   $v1, $v1, +1       
  0042b1a8: or     $v1, $s3, +0       
  0042b1ac: lw     $v0, +4($s2)       
  0042b1b0: bgtz   $v0, $zero, +24       ; br -> 0x0042b1cc
  0042b1b4: andi   $v0, $s3, +32      
  0042b1b8: jal   0xf042a818             ; -> FUN_0042a818
  0042b1bc: dsubu  $zero, $s2, +0     
  0042b1c0: bne    $v0, $zero, +1912     ; br -> 0x0042b93c
  0042b1c4: lw     $v1, +620($sp)     
  0042b1c8: andi   $v0, $s3, +32      
  0042b1cc: bne    $v0, $zero, +124      ; br -> 0x0042b24c
  0042b1d0: sltiu  $v0, $s0, +5       
  0042b1d4: lw     $a0, +0($s2)       
  0042b1d8: lui   $v0, 0x006a0000     
  0042b1dc: addiu  $a1, $v0, +17361   
  0042b1e0: lw     $v1, +0($a0)       
  0042b1e4: addu   $a1, $v1, +0       
  0042b1e8: lw     $v0, +0($v1)          ; GLOBAL 0x00430000
  0042b1ec: andi   $v0, $v0, +8       
  0042b1f0: beq    $v0, $zero, +88       ; br -> 0x0042b24c
  0042b1f4: sltiu  $v0, $s0, +5       
  0042b1f8: dsubu  $zero, $a1, +0     
  0042b1fc: lw     $v0, +4($s2)       
  0042b200: addiu  $s7, $s7, +1       
  0042b204: addiu  $v0, $v0, -1       
  0042b208: blez   $v0, $zero, +16       ; br -> 0x0042b21c
  0042b20c: sw     $v0, +4($s2)       
  0042b210: addiu  $v0, $a0, +1       
  0042b214: beq    $zero, $zero, +20     ; br -> 0x0042b22c
  0042b218: sw     $v0, +0($s2)       
  0042b21c: jal   0xf042a818             ; -> FUN_0042a818
  0042b220: dsubu  $zero, $s2, +0     
  0042b224: bne    $v0, $zero, +1812     ; br -> 0x0042b93c
  0042b228: lw     $v1, +620($sp)     
  0042b22c: lw     $a0, +0($s2)       
  0042b230: lw     $v0, +0($a0)       
  0042b234: addu   $s1, $v0, +0       
  0042b238: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042b23c: andi   $v1, $v1, +8       
  0042b240: bnel   $v1, $zero, -68       ; br -> 0x0046b200
  0042b244: lw     $v0, +4($s2)       
  0042b248: sltiu  $v0, $s0, +5       
  0042b24c: beq    $v0, $zero, -900      ; br -> 0x0046aecc
  0042b250: lui   $v1, 0x00650000     
  0042b254: lui   $v0, 0x006a0000     
  0042b258: sll    $s0, $zero, +2     
  0042b25c: addiu  $v0, $v0, +18352   
  0042b260: addu   $v0, $v1, +0       
  0042b264: lw     $a0, +0($v1)          ; GLOBAL 0x00650000
  0042b268: jr     $a0                
  0042b26c: sll    $zero, $zero, +0   
  0042b270: addiu  $v0, $zero, +1     
  0042b274: andi   $v1, $s3, +8       
  0042b278: beq    $v1, $zero, +104      ; br -> 0x0042b2e4
  0042b27c: movz    $v0,$s4,$s4       
  0042b280: dsubu  $zero, $zero, +0   
  0042b284: lw     $s0, +4($s2)       
  0042b288: daddu  $s4, $s0, +0       
  0042b28c: beq    $v0, $zero, +52       ; br -> 0x0042b2c4
  0042b290: dsubu  $zero, $s2, +0     
  0042b294: lw     $v0, +0($s2)       
  0042b298: addu   $s0, $s1, +0       
  0042b29c: subu   $s0, $s4, +0       
  0042b2a0: addu   $s0, $v0, +0       
  0042b2a4: jal   0xf042a818             ; -> FUN_0042a818
  0042b2a8: sw     $v0, +0($s2)       
  0042b2ac: beql   $v0, $zero, -40       ; br -> 0x0046b288
  0042b2b0: lw     $s0, +4($s2)       
  0042b2b4: beq    $s1, $zero, +1664     ; br -> 0x0042b938
  0042b2b8: addu   $s1, $s7, +0       
  0042b2bc: beq    $zero, $zero, -1012   ; br -> 0x0046aecc
  0042b2c0: lui   $v1, 0x00650000     
  0042b2c4: lw     $v1, +0($s2)       
  0042b2c8: subu   $s4, $s0, +0       
  0042b2cc: sw     $v0, +4($s2)       
  0042b2d0: addu   $s4, $s1, +0       
  0042b2d4: addu   $s4, $v1, +0       
  0042b2d8: sw     $v1, +0($s2)       
  0042b2dc: beq    $zero, $zero, -1048   ; br -> 0x0046aec8
  0042b2e0: addu   $s1, $s7, +0       
  0042b2e4: addiu  $s5, $s5, +8       
  0042b2e8: dsubu  $zero, $s4, +0     
  0042b2ec: lw     $a0, -8($s5)       
  0042b2f0: addiu  $a1, $zero, +1     
  0042b2f4: jal   0xf0429fb8             ; -> 0x00429fb8
  0042b2f8: dsubu  $zero, $s2, +0     
  0042b2fc: beq    $v0, $zero, +1592     ; br -> 0x0042b938
  0042b300: lw     $a0, +620($sp)     
  0042b304: addu   $v0, $s7, +0       
  0042b308: addiu  $a0, $a0, +1       
  0042b30c: beq    $zero, $zero, -1096   ; br -> 0x0046aec8
  0042b310: sw     $a0, +620($sp)     
  0042b314: lui   $v0, 0xffff0000     
  0042b318: andi   $v1, $s3, +8       
  0042b31c: ori    $v0, $v0, -1       
  0042b320: beq    $v1, $zero, +108      ; br -> 0x0042b390
  0042b324: movz    $v0,$s4,$s4       
  0042b328: dsubu  $zero, $zero, +0   
  0042b32c: lw     $a1, +0($s2)       
  0042b330: lw     $v0, +0($a1)       
  0042b334: addu   $v0, $sp, +0       
  0042b338: lw     $a0, +0($v1)          ; GLOBAL 0x00650000
  0042b33c: beq    $a0, $zero, +64       ; br -> 0x0042b380
  0042b340: addiu  $v0, $a1, +1       
  0042b344: lw     $v1, +4($s2)       
  0042b348: sw     $v0, +0($s2)       
  0042b34c: addiu  $s0, $s0, +1       
  0042b350: addiu  $v1, $v1, -1       
  0042b354: addiu  $s4, $s4, -1       
  0042b358: beq    $s4, $zero, +36       ; br -> 0x0042b380
  0042b35c: sw     $v1, +4($s2)       
  0042b360: bgtzl  $v1, $zero, -52       ; br -> 0x0046b330
  0042b364: lw     $a1, +0($s2)       
  0042b368: jal   0xf042a818             ; -> FUN_0042a818
  0042b36c: dsubu  $zero, $s2, +0     
  0042b370: beql   $v0, $zero, -68       ; br -> 0x0046b330
  0042b374: lw     $a1, +0($s2)       
  0042b378: beq    $s0, $zero, +1472     ; br -> 0x0042b93c
  0042b37c: lw     $v1, +620($sp)     
  0042b380: beq    $s0, $zero, +1476     ; br -> 0x0042b948
  0042b384: addu   $s0, $s7, +0       
  0042b388: beq    $zero, $zero, -1216   ; br -> 0x0046aecc
  0042b38c: lui   $v1, 0x00650000     
  0042b390: addiu  $s5, $s5, +8       
  0042b394: lw     $s1, -8($s5)       
  0042b398: dsubu  $zero, $s1, +0     
  0042b39c: lw     $a1, +0($s2)       
  0042b3a0: lw     $v0, +0($a1)       
  0042b3a4: addu   $v0, $sp, +0       
  0042b3a8: lw     $a0, +0($v1)          ; GLOBAL 0x00650000
  0042b3ac: beql   $a0, $zero, +84       ; br -> 0x0042b404
  0042b3b0: subu   $s0, $s1, +0       
  0042b3b4: lw     $v0, +4($s2)       
  0042b3b8: addiu  $a0, $a1, +1       
  0042b3bc: addiu  $s4, $s4, -1       
  0042b3c0: addiu  $v0, $v0, -1       
  0042b3c4: sw     $v0, +4($s2)       
  0042b3c8: lw     $v1, +0($a1)       
  0042b3cc: sw     $v1, +0($s1)       
  0042b3d0: sw     $a0, +0($s2)       
  0042b3d4: beq    $s4, $zero, +40       ; br -> 0x0042b400
  0042b3d8: addiu  $s1, $s1, +1       
  0042b3dc: lw     $v0, +4($s2)       
  0042b3e0: bgtzl  $v0, $zero, -68       ; br -> 0x0046b3a0
  0042b3e4: lw     $a1, +0($s2)       
  0042b3e8: jal   0xf042a818             ; -> FUN_0042a818
  0042b3ec: dsubu  $zero, $s2, +0     
  0042b3f0: beql   $v0, $zero, -84       ; br -> 0x0046b3a0
  0042b3f4: lw     $a1, +0($s2)       
  0042b3f8: beq    $s1, $s0, +1344       ; br -> 0x0042b93c
  0042b3fc: lw     $v1, +620($sp)     
  0042b400: subu   $s0, $s1, +0       
  0042b404: beq    $s0, $zero, +1348     ; br -> 0x0042b94c
  0042b408: lw     $v0, +620($sp)     
  0042b40c: sw     $zero, +0($s1)     
  0042b410: lw     $v0, +620($sp)     
  0042b414: addiu  $v0, $v0, +1       
  0042b418: beq    $zero, $zero, +120    ; br -> 0x0042b494
  0042b41c: sw     $v0, +620($sp)     
  0042b420: lui   $v0, 0xffff0000     
  0042b424: andi   $v1, $s3, +8       
  0042b428: ori    $v0, $v0, -1       
  0042b42c: beq    $v1, $zero, +108      ; br -> 0x0042b49c
  0042b430: movz    $v0,$s4,$s4       
  0042b434: lui   $v0, 0x006a0000     
  0042b438: dsubu  $zero, $zero, +0   
  0042b43c: addiu  $s1, $v0, +17361   
  0042b440: lw     $a0, +0($s2)       
  0042b444: sll    $zero, $zero, +0   
  0042b448: lw     $v0, +0($a0)       
  0042b44c: addu   $s1, $v0, +0       
  0042b450: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042b454: andi   $v1, $v1, +8       
  0042b458: bne    $v1, $zero, +56       ; br -> 0x0042b494
  0042b45c: addiu  $v0, $a0, +1       
  0042b460: lw     $v1, +4($s2)       
  0042b464: sw     $v0, +0($s2)       
  0042b468: addiu  $s0, $s0, +1       
  0042b46c: addiu  $v1, $v1, -1       
  0042b470: addiu  $s4, $s4, -1       
  0042b474: beq    $s4, $zero, +28       ; br -> 0x0042b494
  0042b478: sw     $v1, +4($s2)       
  0042b47c: bgtzl  $v1, $zero, -56       ; br -> 0x0046b448
  0042b480: lw     $a0, +0($s2)       
  0042b484: jal   0xf042a818             ; -> FUN_0042a818
  0042b488: dsubu  $zero, $s2, +0     
  0042b48c: beql   $v0, $zero, -72       ; br -> 0x0046b448
  0042b490: lw     $a0, +0($s2)       
  0042b494: beq    $zero, $zero, -1488   ; br -> 0x0046aec8
  0042b498: addu   $s0, $s7, +0       
  0042b49c: addiu  $s5, $s5, +8       
  0042b4a0: lw     $v1, +620($sp)     
  0042b4a4: lw     $s1, -8($s5)       
  0042b4a8: lui   $v0, 0x006a0000     
  0042b4ac: addiu  $s6, $v0, +17361   
  0042b4b0: addiu  $s3, $v1, +1       
  0042b4b4: dsubu  $zero, $s1, +0     
  0042b4b8: lw     $a1, +0($s2)       
  0042b4bc: sll    $zero, $zero, +0   
  0042b4c0: lw     $v0, +0($a1)       
  0042b4c4: addu   $s6, $v0, +0       
  0042b4c8: lw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042b4cc: andi   $v1, $v1, +8       
  0042b4d0: bne    $v1, $zero, +68       ; br -> 0x0042b518
  0042b4d4: addiu  $a0, $a1, +1       
  0042b4d8: lw     $v0, +4($s2)       
  0042b4dc: addiu  $s4, $s4, -1       
  0042b4e0: addiu  $v0, $v0, -1       
  0042b4e4: sw     $v0, +4($s2)       
  0042b4e8: lw     $v1, +0($a1)       
  0042b4ec: sw     $v1, +0($s1)       
  0042b4f0: sw     $a0, +0($s2)       
  0042b4f4: beq    $s4, $zero, +32       ; br -> 0x0042b518
  0042b4f8: addiu  $s1, $s1, +1       
  0042b4fc: lw     $v0, +4($s2)       
  0042b500: bgtzl  $v0, $zero, -68       ; br -> 0x0046b4c0
  0042b504: lw     $a1, +0($s2)       
  0042b508: jal   0xf042a818             ; -> FUN_0042a818
  0042b50c: dsubu  $zero, $s2, +0     
  0042b510: beql   $v0, $zero, -84       ; br -> 0x0046b4c0
  0042b514: lw     $a1, +0($s2)       
  0042b518: subu   $s0, $s1, +0       
  0042b51c: sw     $s3, +620($sp)     
  0042b520: addu   $v0, $s7, +0       
  0042b524: beq    $zero, $zero, -1632   ; br -> 0x0046aec8
  0042b528: sw     $zero, +0($s1)     
  0042b52c: addiu  $s4, $s4, -1       
  0042b530: addiu  $v1, $zero, +348   
  0042b534: sltiu  $v0, $s4, +349     
  0042b538: addiu  $s1, $sp, +256     
  0042b53c: movz    $v1,$v0,$s4       
  0042b540: ori    $s3, $s3, +704     
  0042b544: addiu  $s4, $s4, +1       
  0042b548: beq    $s4, $zero, +300      ; br -> 0x0042b678
  0042b54c: dsubu  $zero, $s1, +0     
  0042b550: lw     $v0, +0($s2)       
  0042b554: sll    $zero, $zero, +0   
  0042b558: lw     $s0, +0($v0)          ; GLOBAL 0x006a0000
  0042b55c: addiu  $v1, $s0, -43      
  0042b560: sltiu  $v0, $v1, +78      
  0042b564: beq    $v0, $zero, +272      ; br -> 0x0042b678
  0042b568: lui   $v0, 0x006a0000     
  0042b56c: sll    $v1, $zero, +2     
  0042b570: addiu  $v0, $v0, +18384   
  0042b574: addu   $v0, $v1, +0       
  0042b578: lw     $a0, +0($v1)          ; GLOBAL 0x00650000
  0042b57c: jr     $a0                
  0042b580: sll    $zero, $zero, +0   
  0042b584: bne    $fp, $zero, +16       ; br -> 0x0042b598
  0042b588: andi   $v0, $s3, +512     
  0042b58c: addiu  $fp, $zero, +8     
  0042b590: ori    $s3, $s3, +256     
  0042b594: andi   $v0, $s3, +512     
  0042b598: bne    $v0, $zero, +148      ; br -> 0x0042b630
  0042b59c: addiu  $v0, $zero, -705   
  0042b5a0: beq    $zero, $zero, +140    ; br -> 0x0042b630
  0042b5a4: addiu  $v0, $zero, -449   
  0042b5a8: lui   $v0, 0x006a0000     
  0042b5ac: sll    $fp, $zero, +1     
  0042b5b0: addiu  $v0, $v0, +17808   
  0042b5b4: addiu  $a0, $zero, -449   
  0042b5b8: addu   $v0, $v1, +0       
  0042b5bc: and    $a0, $s3, +0       
  0042b5c0: beq    $zero, $zero, +112    ; br -> 0x0042b634
  0042b5c4: lw     $fp, +0($v1)          ; GLOBAL 0x00650000
  0042b5c8: lui   $v0, 0x006a0000     
  0042b5cc: sll    $fp, $zero, +1     
  0042b5d0: addiu  $v0, $v0, +17808   
  0042b5d4: addu   $v0, $v1, +0       
  0042b5d8: lw     $fp, +0($v1)          ; GLOBAL 0x00650000
  0042b5dc: slti   $v0, $fp, +9       
  0042b5e0: bne    $v0, $zero, +148      ; br -> 0x0042b678
  0042b5e4: addiu  $v0, $zero, -449   
  0042b5e8: beq    $zero, $zero, +72     ; br -> 0x0042b634
  0042b5ec: and    $v0, $s3, +0       
  0042b5f0: slti   $v0, $fp, +11      
  0042b5f4: bne    $v0, $zero, +128      ; br -> 0x0042b678
  0042b5f8: addiu  $v0, $zero, -449   
  0042b5fc: beq    $zero, $zero, +52     ; br -> 0x0042b634
  0042b600: and    $v0, $s3, +0       
  0042b604: andi   $v0, $s3, +64      
  0042b608: beq    $v0, $zero, +108      ; br -> 0x0042b678
  0042b60c: addiu  $v0, $zero, -65    
  0042b610: beq    $zero, $zero, +32     ; br -> 0x0042b634
  0042b614: and    $v0, $s3, +0       
  0042b618: andi   $v0, $s3, +256     
  0042b61c: beq    $v0, $zero, +88       ; br -> 0x0042b678
  0042b620: addiu  $v0, $sp, +257     
  0042b624: bne    $s1, $v0, +80         ; br -> 0x0042b678
  0042b628: addiu  $v0, $zero, -257   
  0042b62c: addiu  $fp, $zero, +16    
  0042b630: and    $v0, $s3, +0       
  0042b634: sw     $s0, +0($s1)       
  0042b638: addiu  $s1, $s1, +1       
  0042b63c: lw     $v0, +4($s2)       
  0042b640: addiu  $v0, $v0, -1       
  0042b644: blez   $v0, $zero, +20       ; br -> 0x0042b65c
  0042b648: sw     $v0, +4($s2)       
  0042b64c: lw     $v0, +0($s2)       
  0042b650: addiu  $v0, $v0, +1       
  0042b654: beq    $zero, $zero, +20     ; br -> 0x0042b66c
  0042b658: sw     $v0, +0($s2)       
  0042b65c: jal   0xf042a818             ; -> FUN_0042a818
  0042b660: dsubu  $zero, $s2, +0     
  0042b664: bne    $v0, $zero, +20       ; br -> 0x0042b67c
  0042b668: andi   $v0, $s3, +128     
  0042b66c: addiu  $s4, $s4, -1       
  0042b670: bnel   $s4, $zero, -284      ; br -> 0x0046b558
  0042b674: lw     $v0, +0($s2)       
  0042b678: andi   $v0, $s3, +128     
  0042b67c: beq    $v0, $zero, +32       ; br -> 0x0042b6a0
  0042b680: daddu  $s1, $s6, +0       
  0042b684: beq    $v0, $zero, +708      ; br -> 0x0042b94c
  0042b688: lw     $v0, +620($sp)     
  0042b68c: lw     $a0, -1($s1)       
  0042b690: jal   0xf042acd0             ; -> FUN_0042acd0
  0042b694: dsubu  $zero, $s2, +0     
  0042b698: beq    $zero, $zero, +688    ; br -> 0x0042b94c
  0042b69c: lw     $v0, +620($sp)     
  0042b6a0: lw     $s0, -1($s1)       
  0042b6a4: addiu  $v0, $zero, +120   
  0042b6a8: beq    $s0, $v0, +12         ; br -> 0x0042b6b8
  0042b6ac: addiu  $v0, $zero, +88    
  0042b6b0: bne    $s0, $v0, +24         ; br -> 0x0042b6cc
  0042b6b4: andi   $v0, $s3, +8       
  0042b6b8: dsubu  $zero, $s0, +0     
  0042b6bc: addiu  $s1, $s1, -1       
  0042b6c0: jal   0xf042acd0             ; -> FUN_0042acd0
  0042b6c4: dsubu  $zero, $s2, +0     
  0042b6c8: andi   $v0, $s3, +8       
  0042b6cc: bne    $v0, $zero, +608      ; br -> 0x0042b930
  0042b6d0: subu   $s6, $s1, +0       
  0042b6d4: sw     $zero, +0($s1)     
  0042b6d8: dsubu  $zero, $s6, +0     
  0042b6dc: dsubu  $zero, $zero, +0   
  0042b6e0: lw     $v1, +624($sp)     
  0042b6e4: jalr   $v1, $ra           
  0042b6e8: dsubu  $zero, $fp, +0     
  0042b6ec: dsubu  $zero, $v0, +0     
  0042b6f0: andi   $v0, $s3, +16      
  0042b6f4: beq    $v0, $zero, +28       ; br -> 0x0042b714
  0042b6f8: andi   $v0, $s3, +4       
  0042b6fc: addiu  $s5, $s5, +8       
  0042b700: spec3c  $zero,$v1,$v1     
  0042b704: spec3f  $zero,$v1,$v1     
  0042b708: lw     $v0, -8($s5)       
  0042b70c: beq    $zero, $zero, +68     ; br -> 0x0042b754
  0042b710: sw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042b714: beq    $v0, $zero, +20       ; br -> 0x0042b72c
  0042b718: andi   $v0, $v1, -1       
  0042b71c: addiu  $s5, $s5, +8       
  0042b720: lw     $a0, -8($s5)       
  0042b724: beq    $zero, $zero, +44     ; br -> 0x0042b754
  0042b728: sw     $v0, +0($a0)       
  0042b72c: andi   $v0, $s3, +1       
  0042b730: beq    $v0, $zero, +16       ; br -> 0x0042b744
  0042b734: addiu  $s5, $s5, +8       
  0042b738: lw     $v0, -8($s5)       
  0042b73c: beq    $zero, $zero, +20     ; br -> 0x0042b754
  0042b740: sw     $v1, +0($v0)          ; GLOBAL 0x006a0000
  0042b744: spec3c  $zero,$v1,$v0     
  0042b748: spec3f  $zero,$v0,$v0     
  0042b74c: lw     $a0, -8($s5)       
  0042b750: sw     $v0, +0($a0)       
  0042b754: lw     $a0, +620($sp)     
  0042b758: addiu  $a0, $a0, +1       
  0042b75c: beq    $zero, $zero, +460    ; br -> 0x0042b92c
  0042b760: sw     $a0, +620($sp)     
  0042b764: addiu  $s4, $s4, -1       
  0042b768: addiu  $v1, $zero, +348   
  0042b76c: sltiu  $v0, $s4, +349     
  0042b770: addiu  $s1, $sp, +256     
  0042b774: movz    $v1,$v0,$s4       
  0042b778: ori    $s3, $s3, +960     
  0042b77c: addiu  $s4, $s4, +1       
  0042b780: beq    $s4, $zero, +200      ; br -> 0x0042b84c
  0042b784: dsubu  $zero, $s1, +0     
  0042b788: lw     $v0, +0($s2)       
  0042b78c: sll    $zero, $zero, +0   
  0042b790: lw     $s0, +0($v0)          ; GLOBAL 0x006a0000
  0042b794: addiu  $v1, $s0, -43      
  0042b798: sltiu  $v0, $v1, +59      
  0042b79c: beq    $v0, $zero, +172      ; br -> 0x0042b84c
  0042b7a0: lui   $v0, 0x006a0000     
  0042b7a4: sll    $v1, $zero, +2     
  0042b7a8: addiu  $v0, $v0, +18704   
  0042b7ac: addu   $v0, $v1, +0       
  0042b7b0: lw     $a0, +0($v1)          ; GLOBAL 0x00650000
  0042b7b4: jr     $a0                
  0042b7b8: sll    $zero, $zero, +0   
  0042b7bc: addiu  $v0, $zero, -193   
  0042b7c0: beq    $zero, $zero, +68     ; br -> 0x0042b808
  0042b7c4: and    $v0, $s3, +0       
  0042b7c8: andi   $v0, $s3, +64      
  0042b7cc: beq    $v0, $zero, +124      ; br -> 0x0042b84c
  0042b7d0: addiu  $v0, $zero, -65    
  0042b7d4: beq    $zero, $zero, +48     ; br -> 0x0042b808
  0042b7d8: and    $v0, $s3, +0       
  0042b7dc: andi   $v0, $s3, +256     
  0042b7e0: beq    $v0, $zero, +104      ; br -> 0x0042b84c
  0042b7e4: addiu  $v0, $zero, -321   
  0042b7e8: beq    $zero, $zero, +28     ; br -> 0x0042b808
  0042b7ec: and    $v0, $s3, +0       
  0042b7f0: andi   $v1, $s3, +640     
  0042b7f4: addiu  $v0, $zero, +512   
  0042b7f8: bne    $v1, $v0, +80         ; br -> 0x0042b84c
  0042b7fc: addiu  $v0, $zero, -769   
  0042b800: and    $v0, $s3, +0       
  0042b804: ori    $s3, $v0, +192     
  0042b808: sw     $s0, +0($s1)       
  0042b80c: addiu  $s1, $s1, +1       
  0042b810: lw     $v0, +4($s2)       
  0042b814: addiu  $v0, $v0, -1       
  0042b818: blez   $v0, $zero, +20       ; br -> 0x0042b830
  0042b81c: sw     $v0, +4($s2)       
  0042b820: lw     $v0, +0($s2)       
  0042b824: addiu  $v0, $v0, +1       
  0042b828: beq    $zero, $zero, +20     ; br -> 0x0042b840
  0042b82c: sw     $v0, +0($s2)       
  0042b830: jal   0xf042a818             ; -> FUN_0042a818
  0042b834: dsubu  $zero, $s2, +0     
  0042b838: bne    $v0, $zero, +20       ; br -> 0x0042b850
  0042b83c: andi   $v0, $s3, +128     
  0042b840: addiu  $s4, $s4, -1       
  0042b844: bnel   $s4, $zero, -184      ; br -> 0x0046b790
  0042b848: lw     $v0, +0($s2)       
  0042b84c: andi   $v0, $s3, +128     
  0042b850: beq    $v0, $zero, +120      ; br -> 0x0042b8cc
  0042b854: andi   $v0, $s3, +512     
  0042b858: beq    $v0, $zero, +56       ; br -> 0x0042b894
  0042b85c: daddu  $s1, $s6, +0       
  0042b860: beq    $v0, $zero, +232      ; br -> 0x0042b94c
  0042b864: lw     $v0, +620($sp)     
  0042b868: addiu  $s1, $s1, -1       
  0042b86c: sll    $zero, $zero, +0   
  0042b870: dsubu  $zero, $s2, +0     
  0042b874: jal   0xf042acd0             ; -> FUN_0042acd0
  0042b878: lw     $a0, +0($s1)       
  0042b87c: daddu  $s1, $s6, +0       
  0042b880: sll    $zero, $zero, +0   
  0042b884: bne    $v1, $zero, -24       ; br -> 0x0046b870
  0042b888: addiu  $s1, $s1, -1       
  0042b88c: beq    $zero, $zero, +188    ; br -> 0x0042b94c
  0042b890: lw     $v0, +620($sp)     
  0042b894: addiu  $s1, $s1, -1       
  0042b898: addiu  $v0, $zero, +101   
  0042b89c: lw     $s0, +0($s1)       
  0042b8a0: beq    $s0, $v0, +28         ; br -> 0x0042b8c0
  0042b8a4: addiu  $v0, $zero, +69    
  0042b8a8: beq    $s0, $v0, +20         ; br -> 0x0042b8c0
  0042b8ac: dsubu  $zero, $s0, +0     
  0042b8b0: jal   0xf042acd0             ; -> FUN_0042acd0
  0042b8b4: dsubu  $zero, $s2, +0     
  0042b8b8: addiu  $s1, $s1, -1       
  0042b8bc: lw     $s0, +0($s1)       
  0042b8c0: dsubu  $zero, $s0, +0     
  0042b8c4: jal   0xf042acd0             ; -> FUN_0042acd0
  0042b8c8: dsubu  $zero, $s2, +0     
  0042b8cc: andi   $v0, $s3, +8       
  0042b8d0: bne    $v0, $zero, +92       ; br -> 0x0042b930
  0042b8d4: subu   $s6, $s1, +0       
  0042b8d8: sw     $zero, +0($s1)     
  0042b8dc: jal   0xf042bd98             ; -> FUN_0042bd98
  0042b8e0: dsubu  $zero, $s6, +0     
  0042b8e4: dsubu  $zero, $v0, +0     
  0042b8e8: andi   $v0, $s3, +1       
  0042b8ec: bnel   $v0, $zero, +20       ; br -> 0x0042b904
  0042b8f0: addiu  $s5, $s5, +8       
  0042b8f4: andi   $v0, $s3, +2       
  0042b8f8: beq    $v0, $zero, +20       ; br -> 0x0042b910
  0042b8fc: sll    $zero, $zero, +0   
  0042b900: addiu  $s5, $s5, +8       
  0042b904: lw     $v0, -8($s5)       
  0042b908: beq    $zero, $zero, +20     ; br -> 0x0042b920
  0042b90c: sw     $a0, +0($v0)          ; GLOBAL 0x006a0000
  0042b910: jal   0xf03fb8d0             ; -> 0x003fb8d0
  0042b914: addiu  $s5, $s5, +8       
  0042b918: lw     $s0, -8($s5)       
  0042b91c: swc1   $zero, +0($s0)     
  0042b920: lw     $v0, +620($sp)     
  0042b924: addiu  $v0, $v0, +1       
  0042b928: sw     $v0, +620($sp)     
  0042b92c: subu   $s6, $s1, +0       
  0042b930: beq    $zero, $zero, -2668   ; br -> 0x0046aec8
  0042b934: addu   $v0, $s7, +0       
  0042b938: lw     $v1, +620($sp)     
  0042b93c: addiu  $v0, $zero, -1     
  0042b940: beq    $zero, $zero, +8      ; br -> 0x0042b94c
  0042b944: movn    $v1,$v1,$v0       
  0042b948: lw     $v0, +620($sp)     
  0042b94c: lw     $ra, +784($sp)     
  0042b950: lw     $fp, +768($sp)     
  0042b954: lw     $s7, +752($sp)     
  0042b958: lw     $s6, +736($sp)     
  0042b95c: lw     $s5, +720($sp)     
  0042b960: lw     $s4, +704($sp)     
  0042b964: lw     $s3, +688($sp)     
  0042b968: lw     $s2, +672($sp)     
  0042b96c: lw     $s1, +656($sp)     
  0042b970: lw     $s0, +640($sp)     
  0042b974: jr     $ra                
  0042b978: addiu  $sp, $sp, +800     
  0042b97c: sll    $zero, $zero, +0   
  0042b980: lw     $a2, +0($a1)       
  0042b984: addiu  $v0, $zero, +94    
  0042b988: bne    $a2, $v0, +20         ; br -> 0x0042b9a0
  0042b98c: addiu  $a1, $a1, +1       
  0042b990: lw     $a2, +0($a1)       
  0042b994: addiu  $t0, $zero, +1     
  0042b998: beq    $zero, $zero, +8      ; br -> 0x0042b9a4
  0042b99c: addiu  $a1, $a1, +1       
  0042b9a0: dsubu  $zero, $zero, +0   
  0042b9a4: addiu  $a3, $zero, +255   
  0042b9a8: addiu  $v0, $a0, +255     
  0042b9ac: sll    $zero, $zero, +0   
  0042b9b0: sw     $t0, +0($v0)          ; GLOBAL 0x006a0000
  0042b9b4: addiu  $a3, $a3, -1       
  0042b9b8: sll    $zero, $zero, +0   
  0042b9bc: sll    $zero, $zero, +0   
  0042b9c0: sll    $zero, $zero, +0   
  0042b9c4: regimm $a3, $at, -24         ; br -> 0x0046b9b0
  0042b9c8: addiu  $v0, $v0, -1       
  0042b9cc: bne    $a2, $zero, +12       ; br -> 0x0042b9dc
  0042b9d0: addiu  $v0, $zero, +1     
  0042b9d4: jr     $ra                
  0042b9d8: addiu  $v0, $a1, -1       
  0042b9dc: subu   $t0, $v0, +0       
  0042b9e0: addu   $a2, $a0, +0       
  0042b9e4: sw     $t0, +0($v0)          ; GLOBAL 0x006a0000
  0042b9e8: lw     $a3, +0($a1)       
  0042b9ec: addiu  $v0, $zero, +45    
  0042b9f0: beq    $a3, $v0, +48         ; br -> 0x0042ba24
  0042b9f4: addiu  $a1, $a1, +1       
  0042b9f8: slti   $v0, $a3, +46      
  0042b9fc: beq    $v0, $zero, +20       ; br -> 0x0042ba14
  0042ba00: addiu  $v0, $zero, +93    
  0042ba04: beq    $a3, $zero, -52       ; br -> 0x0046b9d4
  0042ba08: dsubu  $zero, $a3, +0     
  0042ba0c: beq    $zero, $zero, -44     ; br -> 0x0046b9e4
  0042ba10: addu   $a2, $a0, +0       
  0042ba14: beq    $a3, $v0, +84         ; br -> 0x0042ba6c
  0042ba18: dsubu  $zero, $a3, +0     
  0042ba1c: beq    $zero, $zero, -60     ; br -> 0x0046b9e4
  0042ba20: addu   $a2, $a0, +0       
  0042ba24: lw     $a3, +0($a1)       
  0042ba28: addiu  $v0, $zero, +93    
  0042ba2c: beq    $a3, $v0, +12         ; br -> 0x0042ba3c
  0042ba30: dadd   $a2, $a3, +0       
  0042ba34: beql   $v0, $zero, +16       ; br -> 0x0042ba48
  0042ba38: addiu  $a1, $a1, +1       
  0042ba3c: beq    $zero, $zero, -96     ; br -> 0x0046b9e0
  0042ba40: addiu  $a2, $zero, +45    
  0042ba44: sll    $zero, $zero, +0   
  0042ba48: addiu  $a2, $a2, +1       
  0042ba4c: addu   $a2, $a0, +0       
  0042ba50: dadd   $a3, $a2, +0       
  0042ba54: sll    $zero, $zero, +0   
  0042ba58: sll    $zero, $zero, +0   
  0042ba5c: bne    $v1, $zero, -24       ; br -> 0x0046ba48
  0042ba60: sw     $t0, +0($v0)          ; GLOBAL 0x006a0000
  0042ba64: beq    $zero, $zero, -124    ; br -> 0x0046b9ec
  0042ba68: lw     $a3, +0($a1)       
  0042ba6c: jr     $ra                
  0042ba70: dsubu  $zero, $a1, +0     
  0042ba74: sll    $zero, $zero, +0   

; globals: 0x006a0000(x14), 0x00650000(x9), 0x00430000(x2), 0x00657754(x1), 0x00657450(x1)
