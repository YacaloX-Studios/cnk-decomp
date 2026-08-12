; 0x003f0810  FUN_003f0810  size=1360  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=void calls=
; 340 words

  003f0810: addiu  $sp, $sp, -144     
  003f0814: lui   $t2, 0x00700000     
  003f0818: sw     $fp, +128($sp)     
  003f081c: lui   $t4, 0x00650000     
  003f0820: sw     $s7, +112($sp)     
  003f0824: lui   $a3, 0x00650000     
  003f0828: sw     $s6, +96($sp)      
  003f082c: lui   $a1, 0x00650000     
  003f0830: sw     $s5, +80($sp)      
  003f0834: lui   $t9, 0x00650000     
  003f0838: sw     $s4, +64($sp)      
  003f083c: lui   $s5, 0x00650000     
  003f0840: sw     $s3, +48($sp)      
  003f0844: lui   $t7, 0x00650000     
  003f0848: sw     $s2, +32($sp)      
  003f084c: lui   $at, 0x00700000     
  003f0850: sw     $s1, +16($sp)      
  003f0854: addiu  $t2, $t2, -15812   
  003f0858: sw     $s0, +0($sp)       
  003f085c: lui   $s1, 0x00650000     
  003f0860: lw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003f0864: addiu  $t4, $t4, +1712    
  003f0868: addiu  $t1, $zero, -1     
  003f086c: addiu  $t0, $zero, +1     
  003f0870: addiu  $t3, $zero, +2     
  003f0874: addiu  $a3, $a3, +1760    
  003f0878: addiu  $a2, $zero, +6     
  003f087c: addiu  $a1, $a1, +1792    
  003f0880: addiu  $a0, $zero, +7     
  003f0884: addiu  $v1, $zero, +25    
  003f0888: addiu  $s5, $s5, +1824    
  003f088c: addiu  $s4, $zero, +27    
  003f0890: addiu  $t6, $t5, +1       
  003f0894: lui   $at, 0x00700000     
  003f0898: sw     $t6, -13792($at)      ; GLOBAL 0x0070ca20
  003f089c: addu $t5, $t2, $t5        
  003f08a0: sw     $zero, +0($t5)     
  003f08a4: lui   $at, 0x00700000     
  003f08a8: sw     $t4, -15580($at)      ; GLOBAL 0x0070c324
  003f08ac: addiu  $s3, $zero, +26    
  003f08b0: lui   $at, 0x00700000     
  003f08b4: addiu  $s2, $zero, +20    
  003f08b8: sw     $t1, -14704($at)      ; GLOBAL 0x0070c690
  003f08bc: addiu  $s1, $s1, +1856    
  003f08c0: lui   $at, 0x00700000     
  003f08c4: addiu  $fp, $zero, +22    
  003f08c8: sw     $t0, -14266($at)      ; GLOBAL 0x0070c846
  003f08cc: addiu  $s0, $zero, +11    
  003f08d0: lui   $at, 0x00700000     
  003f08d4: addiu  $t9, $t9, +1888    
  003f08d8: lw     $t4, -13792($at)      ; GLOBAL 0x0070ca20
  003f08dc: addiu  $t8, $zero, +39    
  003f08e0: addiu  $t7, $t7, +1952    
  003f08e4: addiu  $t6, $zero, +76    
  003f08e8: addiu  $t5, $t4, +1       
  003f08ec: lui   $at, 0x00700000     
  003f08f0: sw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003f08f4: addu $t4, $t2, $t4        
  003f08f8: sw     $t3, +0($t4)          ; GLOBAL 0x00650000
  003f08fc: lui   $at, 0x00700000     
  003f0900: sw     $a3, -15572($at)      ; GLOBAL 0x0070c32c
  003f0904: lui   $t5, 0x00650000     
  003f0908: lui   $at, 0x00700000     
  003f090c: lui   $t3, 0x00650000     
  003f0910: sw     $zero, -14700($at)    ; GLOBAL 0x0070c694
  003f0914: addiu  $t5, $t5, +1984    
  003f0918: lui   $at, 0x00700000     
  003f091c: addiu  $t4, $zero, +71    
  003f0920: sw     $a2, -14264($at)      ; GLOBAL 0x0070c848
  003f0924: addiu  $t3, $t3, +2032    
  003f0928: lui   $at, 0x00700000     
  003f092c: lw     $s6, -13792($at)      ; GLOBAL 0x0070ca20
  003f0930: addiu  $s7, $s6, +1       
  003f0934: lui   $at, 0x00700000     
  003f0938: sw     $s7, -13792($at)      ; GLOBAL 0x0070ca20
  003f093c: addu $s6, $t2, $s6        
  003f0940: sw     $t0, +0($s6)       
  003f0944: lui   $at, 0x00700000     
  003f0948: sw     $a1, -15576($at)      ; GLOBAL 0x0070c328
  003f094c: lui   $at, 0x00700000     
  003f0950: sw     $t1, -14702($at)      ; GLOBAL 0x0070c692
  003f0954: lui   $at, 0x00700000     
  003f0958: sw     $a0, -14265($at)      ; GLOBAL 0x0070c847
  003f095c: lui   $at, 0x00700000     
  003f0960: lw     $s6, -13792($at)      ; GLOBAL 0x0070ca20
  003f0964: addiu  $s7, $s6, +1       
  003f0968: lui   $at, 0x00700000     
  003f096c: sw     $s7, -13792($at)      ; GLOBAL 0x0070ca20
  003f0970: addu $s6, $t2, $s6        
  003f0974: sw     $v1, +0($s6)       
  003f0978: lui   $at, 0x00700000     
  003f097c: sw     $s5, -15480($at)      ; GLOBAL 0x0070c388
  003f0980: lui   $at, 0x00700000     
  003f0984: sw     $t1, -14654($at)      ; GLOBAL 0x0070c6c2
  003f0988: lui   $at, 0x00700000     
  003f098c: sw     $t0, -14241($at)      ; GLOBAL 0x0070c85f
  003f0990: lui   $at, 0x00700000     
  003f0994: lw     $s5, -13792($at)      ; GLOBAL 0x0070ca20
  003f0998: addiu  $s6, $s5, +1       
  003f099c: lui   $at, 0x00700000     
  003f09a0: sw     $s6, -13792($at)      ; GLOBAL 0x0070ca20
  003f09a4: addu $s5, $t2, $s5        
  003f09a8: sw     $s4, +0($s5)          ; GLOBAL 0x00650000
  003f09ac: lui   $at, 0x00700000     
  003f09b0: sw     $v1, -14650($at)      ; GLOBAL 0x0070c6c6
  003f09b4: lui   $at, 0x00700000     
  003f09b8: sw     $a3, -15472($at)      ; GLOBAL 0x0070c390
  003f09bc: lui   $at, 0x00700000     
  003f09c0: sw     $a2, -14239($at)      ; GLOBAL 0x0070c861
  003f09c4: lui   $at, 0x00700000     
  003f09c8: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f09cc: addiu  $s4, $v1, +1       
  003f09d0: lui   $at, 0x00700000     
  003f09d4: sw     $s4, -13792($at)      ; GLOBAL 0x0070ca20
  003f09d8: addu $v1, $t2, $v1        
  003f09dc: sw     $s3, +0($v1)       
  003f09e0: lui   $at, 0x00700000     
  003f09e4: sw     $a1, -15476($at)      ; GLOBAL 0x0070c38c
  003f09e8: lui   $at, 0x00700000     
  003f09ec: sw     $t1, -14652($at)      ; GLOBAL 0x0070c6c4
  003f09f0: lui   $at, 0x00700000     
  003f09f4: sw     $a0, -14240($at)      ; GLOBAL 0x0070c860
  003f09f8: lui   $at, 0x00700000     
  003f09fc: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0a00: addiu  $s3, $v1, +1       
  003f0a04: lui   $at, 0x00700000     
  003f0a08: sw     $s3, -13792($at)      ; GLOBAL 0x0070ca20
  003f0a0c: addu $v1, $t2, $v1        
  003f0a10: sw     $s2, +0($v1)       
  003f0a14: lui   $at, 0x00700000     
  003f0a18: sw     $s1, -15500($at)      ; GLOBAL 0x0070c374
  003f0a1c: lui   $at, 0x00700000     
  003f0a20: sw     $t1, -14664($at)      ; GLOBAL 0x0070c6b8
  003f0a24: lui   $at, 0x00700000     
  003f0a28: sw     $t0, -14246($at)      ; GLOBAL 0x0070c85a
  003f0a2c: lui   $at, 0x00700000     
  003f0a30: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0a34: addiu  $s1, $v1, +1       
  003f0a38: lui   $at, 0x00700000     
  003f0a3c: sw     $s1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0a40: addu $v1, $t2, $v1        
  003f0a44: sw     $fp, +0($v1)       
  003f0a48: lui   $at, 0x00700000     
  003f0a4c: sw     $s2, -14660($at)      ; GLOBAL 0x0070c6bc
  003f0a50: lui   $at, 0x00700000     
  003f0a54: sw     $a3, -15492($at)      ; GLOBAL 0x0070c37c
  003f0a58: lui   $at, 0x00700000     
  003f0a5c: sw     $a2, -14244($at)      ; GLOBAL 0x0070c85c
  003f0a60: lui   $at, 0x00700000     
  003f0a64: lw     $s1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0a68: addiu  $v1, $s1, +1       
  003f0a6c: lui   $at, 0x00700000     
  003f0a70: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0a74: addu $s1, $t2, $s1        
  003f0a78: addiu  $v1, $zero, +21    
  003f0a7c: lui   $at, 0x00700000     
  003f0a80: sw     $v1, +0($s1)          ; GLOBAL 0x00650000
  003f0a84: sw     $a1, -15496($at)      ; GLOBAL 0x0070c378
  003f0a88: lui   $at, 0x00700000     
  003f0a8c: sw     $t1, -14662($at)      ; GLOBAL 0x0070c6ba
  003f0a90: lui   $at, 0x00700000     
  003f0a94: sw     $a0, -14245($at)      ; GLOBAL 0x0070c85b
  003f0a98: lui   $at, 0x00700000     
  003f0a9c: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0aa0: addiu  $s1, $v1, +1       
  003f0aa4: lui   $at, 0x00700000     
  003f0aa8: sw     $s1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0aac: addu $v1, $t2, $v1        
  003f0ab0: sw     $s0, +0($v1)       
  003f0ab4: lui   $at, 0x00700000     
  003f0ab8: sw     $t9, -15536($at)      ; GLOBAL 0x0070c350
  003f0abc: lui   $at, 0x00700000     
  003f0ac0: sw     $t1, -14682($at)      ; GLOBAL 0x0070c6a6
  003f0ac4: lui   $at, 0x00700000     
  003f0ac8: sw     $t0, -14255($at)      ; GLOBAL 0x0070c851
  003f0acc: lui   $at, 0x00700000     
  003f0ad0: lw     $s1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0ad4: addiu  $v1, $s1, +1       
  003f0ad8: lui   $at, 0x00700000     
  003f0adc: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0ae0: addu $s1, $t2, $s1        
  003f0ae4: addiu  $v1, $zero, +13    
  003f0ae8: lui   $at, 0x00700000     
  003f0aec: sw     $v1, +0($s1)          ; GLOBAL 0x00650000
  003f0af0: sw     $s0, -14678($at)      ; GLOBAL 0x0070c6aa
  003f0af4: lui   $at, 0x00700000     
  003f0af8: sw     $a3, -15528($at)      ; GLOBAL 0x0070c358
  003f0afc: lui   $at, 0x00700000     
  003f0b00: sw     $a2, -14253($at)      ; GLOBAL 0x0070c853
  003f0b04: lui   $at, 0x00700000     
  003f0b08: lw     $s0, -13792($at)      ; GLOBAL 0x0070ca20
  003f0b0c: addiu  $v1, $s0, +1       
  003f0b10: lui   $at, 0x00700000     
  003f0b14: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0b18: addu $s0, $t2, $s0        
  003f0b1c: addiu  $v1, $zero, +12    
  003f0b20: lui   $at, 0x00700000     
  003f0b24: sw     $v1, +0($s0)       
  003f0b28: sw     $a1, -15532($at)      ; GLOBAL 0x0070c354
  003f0b2c: lui   $at, 0x00700000     
  003f0b30: sw     $t1, -14680($at)      ; GLOBAL 0x0070c6a8
  003f0b34: lui   $at, 0x00700000     
  003f0b38: sw     $a0, -14254($at)      ; GLOBAL 0x0070c852
  003f0b3c: lui   $at, 0x00700000     
  003f0b40: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0b44: addiu  $s0, $v1, +1       
  003f0b48: lui   $at, 0x00700000     
  003f0b4c: sw     $s0, -13792($at)      ; GLOBAL 0x0070ca20
  003f0b50: addu $v1, $t2, $v1        
  003f0b54: sw     $t8, +0($v1)       
  003f0b58: lui   $at, 0x00700000     
  003f0b5c: sw     $t7, -15424($at)      ; GLOBAL 0x0070c3c0
  003f0b60: lui   $at, 0x00700000     
  003f0b64: sw     $t1, -14626($at)      ; GLOBAL 0x0070c6de
  003f0b68: lui   $at, 0x00700000     
  003f0b6c: sw     $t0, -14227($at)      ; GLOBAL 0x0070c86d
  003f0b70: lui   $at, 0x00700000     
  003f0b74: lw     $t7, -13792($at)      ; GLOBAL 0x0070ca20
  003f0b78: addiu  $v1, $t7, +1       
  003f0b7c: lui   $at, 0x00700000     
  003f0b80: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0b84: addu $t7, $t2, $t7        
  003f0b88: addiu  $v1, $zero, +41    
  003f0b8c: lui   $at, 0x00700000     
  003f0b90: sw     $v1, +0($t7)          ; GLOBAL 0x00650000
  003f0b94: sw     $t8, -14622($at)      ; GLOBAL 0x0070c6e2
  003f0b98: lui   $at, 0x00700000     
  003f0b9c: sw     $a3, -15416($at)      ; GLOBAL 0x0070c3c8
  003f0ba0: lui   $at, 0x00700000     
  003f0ba4: sw     $a2, -14225($at)      ; GLOBAL 0x0070c86f
  003f0ba8: lui   $at, 0x00700000     
  003f0bac: lw     $t7, -13792($at)      ; GLOBAL 0x0070ca20
  003f0bb0: addiu  $v1, $t7, +1       
  003f0bb4: lui   $at, 0x00700000     
  003f0bb8: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0bbc: addu $t7, $t2, $t7        
  003f0bc0: addiu  $v1, $zero, +40    
  003f0bc4: lui   $at, 0x00700000     
  003f0bc8: sw     $v1, +0($t7)          ; GLOBAL 0x00650000
  003f0bcc: sw     $a1, -15420($at)      ; GLOBAL 0x0070c3c4
  003f0bd0: lui   $at, 0x00700000     
  003f0bd4: sw     $t1, -14624($at)      ; GLOBAL 0x0070c6e0
  003f0bd8: lui   $at, 0x00700000     
  003f0bdc: sw     $a0, -14226($at)      ; GLOBAL 0x0070c86e
  003f0be0: lui   $at, 0x00700000     
  003f0be4: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0be8: addiu  $t7, $v1, +1       
  003f0bec: lui   $at, 0x00700000     
  003f0bf0: sw     $t7, -13792($at)      ; GLOBAL 0x0070ca20
  003f0bf4: addu $v1, $t2, $v1        
  003f0bf8: sw     $t6, +0($v1)       
  003f0bfc: lui   $at, 0x00700000     
  003f0c00: sw     $t5, -15276($at)      ; GLOBAL 0x0070c454
  003f0c04: lui   $at, 0x00700000     
  003f0c08: sw     $t1, -14552($at)      ; GLOBAL 0x0070c728
  003f0c0c: lui   $at, 0x00700000     
  003f0c10: sw     $t0, -14190($at)      ; GLOBAL 0x0070c892
  003f0c14: lui   $at, 0x00700000     
  003f0c18: lw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003f0c1c: addiu  $v1, $t5, +1       
  003f0c20: lui   $at, 0x00700000     
  003f0c24: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0c28: addu $t5, $t2, $t5        
  003f0c2c: addiu  $v1, $zero, +78    
  003f0c30: lui   $at, 0x00700000     
  003f0c34: sw     $v1, +0($t5)          ; GLOBAL 0x00650000
  003f0c38: sw     $t6, -14548($at)      ; GLOBAL 0x0070c72c
  003f0c3c: lui   $at, 0x00700000     
  003f0c40: sw     $a3, -15268($at)      ; GLOBAL 0x0070c45c
  003f0c44: lui   $at, 0x00700000     
  003f0c48: sw     $a2, -14188($at)      ; GLOBAL 0x0070c894
  003f0c4c: lui   $at, 0x00700000     
  003f0c50: lw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003f0c54: addiu  $v1, $t5, +1       
  003f0c58: lui   $at, 0x00700000     
  003f0c5c: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0c60: addu $t5, $t2, $t5        
  003f0c64: addiu  $v1, $zero, +77    
  003f0c68: lui   $at, 0x00700000     
  003f0c6c: sw     $v1, +0($t5)          ; GLOBAL 0x00650000
  003f0c70: sw     $a1, -15272($at)      ; GLOBAL 0x0070c458
  003f0c74: lui   $at, 0x00700000     
  003f0c78: sw     $t1, -14550($at)      ; GLOBAL 0x0070c72a
  003f0c7c: lui   $at, 0x00700000     
  003f0c80: sw     $a0, -14189($at)      ; GLOBAL 0x0070c893
  003f0c84: lui   $at, 0x00700000     
  003f0c88: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0c8c: addiu  $t5, $v1, +1       
  003f0c90: lui   $at, 0x00700000     
  003f0c94: sw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003f0c98: addu $v1, $t2, $v1        
  003f0c9c: sw     $t4, +0($v1)       
  003f0ca0: lui   $at, 0x00700000     
  003f0ca4: sw     $t3, -15296($at)      ; GLOBAL 0x0070c440
  003f0ca8: lui   $at, 0x00700000     
  003f0cac: sw     $t0, -14195($at)      ; GLOBAL 0x0070c88d
  003f0cb0: lui   $at, 0x00700000     
  003f0cb4: sw     $t1, -14562($at)      ; GLOBAL 0x0070c71e
  003f0cb8: lui   $at, 0x00700000     
  003f0cbc: lw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003f0cc0: addiu  $v1, $t0, +1       
  003f0cc4: lui   $at, 0x00700000     
  003f0cc8: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0ccc: addu $t0, $t2, $t0        
  003f0cd0: addiu  $v1, $zero, +73    
  003f0cd4: lui   $at, 0x00700000     
  003f0cd8: sw     $v1, +0($t0)       
  003f0cdc: sw     $a3, -15288($at)      ; GLOBAL 0x0070c448
  003f0ce0: lui   $at, 0x00700000     
  003f0ce4: sw     $t4, -14558($at)      ; GLOBAL 0x0070c722
  003f0ce8: lui   $at, 0x00700000     
  003f0cec: sw     $a2, -14193($at)      ; GLOBAL 0x0070c88f
  003f0cf0: lui   $at, 0x00700000     
  003f0cf4: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0cf8: addu $a2, $t2, $v1        
  003f0cfc: lui   $at, 0x00700000     
  003f0d00: addiu  $v1, $v1, +1       
  003f0d04: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0d08: addiu  $v1, $zero, +72    
  003f0d0c: lui   $at, 0x00700000     
  003f0d10: sw     $v1, +0($a2)       
  003f0d14: sw     $a1, -15292($at)      ; GLOBAL 0x0070c444
  003f0d18: lui   $at, 0x00700000     
  003f0d1c: sw     $t1, -14560($at)      ; GLOBAL 0x0070c720
  003f0d20: lui   $at, 0x00700000     
  003f0d24: sw     $a0, -14194($at)      ; GLOBAL 0x0070c88e
  003f0d28: lw     $fp, +128($sp)     
  003f0d2c: lw     $s7, +112($sp)     
  003f0d30: lw     $s6, +96($sp)      
  003f0d34: lw     $s5, +80($sp)      
  003f0d38: lw     $s4, +64($sp)      
  003f0d3c: lw     $s3, +48($sp)      
  003f0d40: lw     $s2, +32($sp)      
  003f0d44: lw     $s1, +16($sp)      
  003f0d48: lw     $s0, +0($sp)       
  003f0d4c: jr     $ra                
  003f0d50: addiu  $sp, $sp, +144     
  003f0d54: sll $zero, $zero, 0       
  003f0d58: sll $zero, $zero, 0       
  003f0d5c: sll $zero, $zero, 0       

; globals: 0x0070ca20(x42), 0x00650000(x8), 0x0070c324(x1), 0x0070c690(x1), 0x0070c846(x1), 0x0070c32c(x1), 0x0070c694(x1), 0x0070c848(x1), 0x0070c328(x1), 0x0070c692(x1)
