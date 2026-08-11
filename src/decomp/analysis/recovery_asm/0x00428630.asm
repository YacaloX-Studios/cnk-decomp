; 0x00428630  FUN_00428630  size=1256  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x004285f0
; 314 words

  00428630: lui   $v0, 0x00650000     
  00428634: addiu  $sp, $sp, -16      
  00428638: lw     $a0, +30548($v0)      ; GLOBAL 0x00657754
  0042863c: sw     $ra, +0($sp)       
  00428640: jal   0xf04285f0             ; -> FUN_004285f0
  00428644: sll    $zero, $zero, +0   
  00428648: lw     $ra, +0($sp)       
  0042864c: jr     $ra                
  00428650: addiu  $sp, $sp, +16      
  00428654: sll    $zero, $zero, +0   
  00428658: sltiu  $v0, $a2, +16      
  0042865c: bne    $v0, $zero, +160      ; br -> 0x00428700
  00428660: andi   $a1, $a1, +255     
  00428664: andi   $v0, $a0, +15      
  00428668: bne    $v0, $zero, +148      ; br -> 0x00428700
  0042866c: dsubu  $zero, $a0, +0     
  00428670: spec38  $zero,$a1,$v1     
  00428674: ori    $v0, $zero, -32640 
  00428678: spec38  $zero,$v0,$v0     
  0042867c: ori    $v0, $v0, -32640   
  00428680: spec38  $zero,$v0,$v0     
  00428684: ori    $v0, $v0, -32640   
  00428688: spec38  $zero,$v0,$v0     
  0042868c: ori    $v0, $v0, +257     
  00428690: dsubu  $a1, $v1, +0       
  00428694: ori    $v1, $zero, -32640 
  00428698: spec38  $zero,$v1,$v1     
  0042869c: ori    $v1, $v1, -32640   
  004286a0: spec38  $zero,$v1,$v1     
  004286a4: ori    $v1, $v1, -32640   
  004286a8: spec38  $zero,$v1,$v1     
  004286ac: ori    $v1, $v1, -32640   
  004286b0: mmi2   $t0,$zero,$t2      
  004286b4: mmi2   $t1,$t0,$t0        
  004286b8: dsubu  $zero, $v0, +0     
  004286bc: mmi2   $t0,$v1,$v1        
  004286c0: lw     $v0, +0($a3)       
  004286c4: mmi2   $v0,$v0,$t1        
  004286c8: mmi2   $t2,$a0,$a0        
  004286cc: mmi2   $v1,$zero,$v0      
  004286d0: mmi2   $v0,$v0,$t2        
  004286d4: mmi2   $v0,$v0,$v1        
  004286d8: mmi2   $v0,$v0,$t0        
  004286dc: mmi2   $v1,$v0,$t1        
  004286e0: or     $v1, $v0, +0       
  004286e4: bnel   $v0, $zero, +24       ; br -> 0x00428700
  004286e8: dsubu  $zero, $a3, +0     
  004286ec: addiu  $a2, $a2, -16      
  004286f0: sltiu  $v0, $a2, +16      
  004286f4: beq    $v0, $zero, -56       ; br -> 0x004686c0
  004286f8: addiu  $a3, $a3, +16      
  004286fc: dsubu  $zero, $a3, +0     
  00428700: lui   $v0, 0xffff0000     
  00428704: addiu  $a2, $a2, -1       
  00428708: ori    $v0, $v0, -1       
  0042870c: beq    $a2, $v0, +40         ; br -> 0x00428738
  00428710: sll    $zero, $zero, +0   
  00428714: lui   $v1, 0xffff0000     
  00428718: ori    $v1, $v1, -1       
  0042871c: lw     $v0, +0($a0)       
  00428720: beq    $v0, $a1, +28         ; br -> 0x00428740
  00428724: addiu  $a2, $a2, -1       
  00428728: sll    $zero, $zero, +0   
  0042872c: sll    $zero, $zero, +0   
  00428730: bne    $a2, $v1, -24         ; br -> 0x0046871c
  00428734: addiu  $a0, $a0, +1       
  00428738: jr     $ra                
  0042873c: dsubu  $zero, $zero, +0   
  00428740: jr     $ra                
  00428744: dsubu  $zero, $a0, +0     
  00428748: sltiu  $v0, $a2, +16      
  0042874c: bne    $v0, $zero, +68       ; br -> 0x00428794
  00428750: or     $a1, $a0, +0       
  00428754: andi   $v0, $v0, +15      
  00428758: bne    $v0, $zero, +56       ; br -> 0x00428794
  0042875c: sll    $zero, $zero, +0   
  00428760: lw     $v1, +0($a0)       
  00428764: sltiu  $a3, $a2, +32      
  00428768: lw     $v0, +0($a1)       
  0042876c: addiu  $a0, $a0, +16      
  00428770: mmi2   $t0,$v0,$v1        
  00428774: addiu  $v0, $a1, +16      
  00428778: mmi2   $t2,$t0,$a3        
  0042877c: or     $t0, $t2, +0       
  00428780: movz    $v0,$t1,$a1       
  00428784: bnel   $t1, $zero, +12       ; br -> 0x00428794
  00428788: addiu  $a0, $a0, -16      
  0042878c: beq    $a3, $zero, -48       ; br -> 0x00468760
  00428790: addiu  $a2, $a2, -16      
  00428794: lui   $v0, 0xffff0000     
  00428798: addiu  $a2, $a2, -1       
  0042879c: ori    $v0, $v0, -1       
  004287a0: beq    $a2, $v0, +48         ; br -> 0x004287d4
  004287a4: sll    $zero, $zero, +0   
  004287a8: lui   $a3, 0xffff0000     
  004287ac: ori    $a3, $a3, -1       
  004287b0: lw     $v1, +0($a0)       
  004287b4: lw     $v0, +0($a1)       
  004287b8: beq    $v1, $v0, +12         ; br -> 0x004287c8
  004287bc: addiu  $a0, $a0, +1       
  004287c0: jr     $ra                
  004287c4: subu   $v0, $v1, +0       
  004287c8: addiu  $a2, $a2, -1       
  004287cc: bne    $a2, $a3, -32         ; br -> 0x004687b0
  004287d0: addiu  $a1, $a1, +1       
  004287d4: jr     $ra                
  004287d8: dsubu  $zero, $zero, +0   
  004287dc: sll    $zero, $zero, +0   
  004287e0: dsubu  $zero, $a0, +0     
  004287e4: sltiu  $v0, $a2, +32      
  004287e8: bne    $v0, $zero, +112      ; br -> 0x0042885c
  004287ec: dsubu  $zero, $t0, +0     
  004287f0: or     $t0, $a1, +0       
  004287f4: andi   $v0, $v0, +15      
  004287f8: bnel   $v0, $zero, +100      ; br -> 0x00428860
  004287fc: addiu  $a2, $a2, -1       
  00428800: dsubu  $zero, $t0, +0     
  00428804: lw     $v1, +0($a1)       
  00428808: addiu  $a2, $a2, -32      
  0042880c: addiu  $a1, $a1, +16      
  00428810: sltiu  $a0, $a2, +32      
  00428814: sw     $v1, +0($a3)          ; GLOBAL 0xffff0000
  00428818: addiu  $a3, $a3, +16      
  0042881c: lw     $v0, +0($a1)       
  00428820: addiu  $a1, $a1, +16      
  00428824: sw     $v0, +0($a3)          ; GLOBAL 0xffff0000
  00428828: beq    $a0, $zero, -40       ; br -> 0x00468804
  0042882c: addiu  $a3, $a3, +16      
  00428830: sltiu  $v0, $a2, +8       
  00428834: bne    $v0, $zero, +36       ; br -> 0x0042885c
  00428838: dsubu  $zero, $a3, +0     
  0042883c: lw     $v1, +0($a1)       
  00428840: addiu  $a2, $a2, -8       
  00428844: addiu  $a1, $a1, +8       
  00428848: sltiu  $v0, $a2, +8       
  0042884c: sw     $v1, +0($a3)          ; GLOBAL 0xffff0000
  00428850: beq    $v0, $zero, -24       ; br -> 0x0046883c
  00428854: addiu  $a3, $a3, +8       
  00428858: dsubu  $zero, $a3, +0     
  0042885c: addiu  $a2, $a2, -1       
  00428860: addiu  $v0, $zero, -1     
  00428864: beq    $a2, $v0, +32         ; br -> 0x00428888
  00428868: dsubu  $zero, $v0, +0     
  0042886c: lw     $v0, +0($a1)       
  00428870: addiu  $a2, $a2, -1       
  00428874: addiu  $a1, $a1, +1       
  00428878: sw     $v0, +0($v1)          ; GLOBAL 0xffff0000
  0042887c: sll    $zero, $zero, +0   
  00428880: bne    $a2, $a0, -24         ; br -> 0x0046886c
  00428884: addiu  $v1, $v1, +1       
  00428888: jr     $ra                
  0042888c: dsubu  $zero, $t0, +0     
  00428890: dsubu  $zero, $a0, +0     
  00428894: daddu  $t0, $a1, +0       
  00428898: beq    $v0, $zero, +76       ; br -> 0x004288e8
  0042889c: dsubu  $zero, $t0, +0     
  004288a0: addu   $a2, $a1, +0       
  004288a4: daddu  $a3, $t0, +0       
  004288a8: beq    $v0, $zero, +60       ; br -> 0x004288e8
  004288ac: addiu  $v0, $zero, -1     
  004288b0: addu   $a2, $t0, +0       
  004288b4: addiu  $a2, $a2, -1       
  004288b8: beq    $a2, $v0, +208        ; br -> 0x0042898c
  004288bc: dsubu  $zero, $a3, +0     
  004288c0: dsubu  $zero, $v0, +0     
  004288c4: addiu  $a1, $a1, -1       
  004288c8: addiu  $v1, $v1, -1       
  004288cc: lw     $v0, +0($a1)       
  004288d0: addiu  $a2, $a2, -1       
  004288d4: sll    $zero, $zero, +0   
  004288d8: bne    $a2, $a0, -24         ; br -> 0x004688c4
  004288dc: sw     $v0, +0($v1)          ; GLOBAL 0xffff0000
  004288e0: jr     $ra                
  004288e4: dsubu  $zero, $t0, +0     
  004288e8: sltiu  $v0, $a2, +32      
  004288ec: bnel   $v0, $zero, +116      ; br -> 0x00428964
  004288f0: addiu  $a2, $a2, -1       
  004288f4: or     $v1, $a1, +0       
  004288f8: andi   $v0, $v0, +15      
  004288fc: bnel   $v0, $zero, +100      ; br -> 0x00428964
  00428900: addiu  $a2, $a2, -1       
  00428904: dsubu  $zero, $v1, +0     
  00428908: lw     $v1, +0($a1)       
  0042890c: addiu  $a2, $a2, -32      
  00428910: addiu  $a1, $a1, +16      
  00428914: sltiu  $a0, $a2, +32      
  00428918: sw     $v1, +0($a3)          ; GLOBAL 0xffff0000
  0042891c: addiu  $a3, $a3, +16      
  00428920: lw     $v0, +0($a1)       
  00428924: addiu  $a1, $a1, +16      
  00428928: sw     $v0, +0($a3)          ; GLOBAL 0xffff0000
  0042892c: beq    $a0, $zero, -40       ; br -> 0x00468908
  00428930: addiu  $a3, $a3, +16      
  00428934: sltiu  $v0, $a2, +8       
  00428938: bne    $v0, $zero, +36       ; br -> 0x00428960
  0042893c: dsubu  $zero, $a3, +0     
  00428940: lw     $v1, +0($a1)       
  00428944: addiu  $a2, $a2, -8       
  00428948: addiu  $a1, $a1, +8       
  0042894c: sltiu  $v0, $a2, +8       
  00428950: sw     $v1, +0($a3)          ; GLOBAL 0xffff0000
  00428954: beq    $v0, $zero, -24       ; br -> 0x00468940
  00428958: addiu  $a3, $a3, +8       
  0042895c: dsubu  $zero, $a3, +0     
  00428960: addiu  $a2, $a2, -1       
  00428964: addiu  $v0, $zero, -1     
  00428968: beq    $a2, $v0, +32         ; br -> 0x0042898c
  0042896c: dsubu  $zero, $v0, +0     
  00428970: lw     $v0, +0($a1)       
  00428974: addiu  $a2, $a2, -1       
  00428978: addiu  $a1, $a1, +1       
  0042897c: sw     $v0, +0($v1)          ; GLOBAL 0xffff0000
  00428980: sll    $zero, $zero, +0   
  00428984: bne    $a2, $a0, -24         ; br -> 0x00468970
  00428988: addiu  $v1, $v1, +1       
  0042898c: jr     $ra                
  00428990: dsubu  $zero, $t0, +0     
  00428994: sll    $zero, $zero, +0   
  00428998: sltiu  $v0, $a2, +8       
  0042899c: bne    $v0, $zero, +120      ; br -> 0x00428a18
  004289a0: dsubu  $zero, $a0, +0     
  004289a4: andi   $v0, $a0, +15      
  004289a8: bne    $v0, $zero, +108      ; br -> 0x00428a18
  004289ac: dsubu  $zero, $a0, +0     
  004289b0: andi   $t1, $a1, +255     
  004289b4: sltiu  $t2, $a2, +32      
  004289b8: dsubu  $zero, $t1, +0     
  004289bc: spec38  $zero,$t0,$v1     
  004289c0: or     $t1, $v1, +0       
  004289c4: mmi2   $v1,$zero,$t0      
  004289c8: bne    $t2, $zero, +56       ; br -> 0x00428a04
  004289cc: sltiu  $v0, $a2, +8       
  004289d0: mmi2   $t0,$v1,$v1        
  004289d4: sw     $t0, +0($a3)          ; GLOBAL 0xffff0000
  004289d8: addiu  $a2, $a2, -32      
  004289dc: addiu  $a3, $a3, +16      
  004289e0: sltiu  $v0, $a2, +32      
  004289e4: sw     $t0, +0($a3)          ; GLOBAL 0xffff0000
  004289e8: beq    $v0, $zero, -24       ; br -> 0x004689d4
  004289ec: addiu  $a3, $a3, +16      
  004289f0: beq    $zero, $zero, +16     ; br -> 0x00428a04
  004289f4: sltiu  $v0, $a2, +8       
  004289f8: addiu  $a2, $a2, -8       
  004289fc: addiu  $a3, $a3, +8       
  00428a00: sltiu  $v0, $a2, +8       
  00428a04: sll    $zero, $zero, +0   
  00428a08: sll    $zero, $zero, +0   
  00428a0c: beql   $v0, $zero, -24       ; br -> 0x004689f8
  00428a10: sw     $v1, +0($a3)          ; GLOBAL 0xffff0000
  00428a14: dsubu  $zero, $a3, +0     
  00428a18: lui   $v0, 0xffff0000     
  00428a1c: addiu  $a2, $a2, -1       
  00428a20: ori    $v0, $v0, -1       
  00428a24: beq    $a2, $v0, +40         ; br -> 0x00428a50
  00428a28: sll    $zero, $zero, +0   
  00428a2c: lui   $v0, 0xffff0000     
  00428a30: ori    $v0, $v0, -1       
  00428a34: sw     $a1, +0($v1)          ; GLOBAL 0xffff0000
  00428a38: addiu  $a2, $a2, -1       
  00428a3c: sll    $zero, $zero, +0   
  00428a40: sll    $zero, $zero, +0   
  00428a44: sll    $zero, $zero, +0   
  00428a48: bne    $a2, $v0, -24         ; br -> 0x00468a34
  00428a4c: addiu  $v1, $v1, +1       
  00428a50: jr     $ra                
  00428a54: dsubu  $zero, $a0, +0     
  00428a58: sw     $s0, +0($a0)       
  00428a5c: sw     $s1, +16($a0)      
  00428a60: sw     $s2, +32($a0)      
  00428a64: sw     $s3, +48($a0)      
  00428a68: sw     $s4, +64($a0)      
  00428a6c: sw     $s5, +80($a0)      
  00428a70: sw     $s6, +96($a0)      
  00428a74: sw     $s7, +112($a0)     
  00428a78: sw     $fp, +128($a0)     
  00428a7c: swc1   $t8, +144($a0)     
  00428a80: swc1   $t9, +148($a0)     
  00428a84: swc1   $k0, +152($a0)     
  00428a88: swc1   $k1, +156($a0)     
  00428a8c: swc1   $gp, +160($a0)     
  00428a90: swc1   $sp, +164($a0)     
  00428a94: swc1   $fp, +168($a0)     
  00428a98: swc1   $ra, +172($a0)     
  00428a9c: sw     $sp, +176($a0)     
  00428aa0: sw     $ra, +192($a0)     
  00428aa4: dsubu  $zero, $zero, +0   
  00428aa8: jr     $ra                
  00428aac: sll    $zero, $zero, +0   
  00428ab0: lw     $s0, +0($a0)       
  00428ab4: lw     $s1, +16($a0)      
  00428ab8: lw     $s2, +32($a0)      
  00428abc: lw     $s3, +48($a0)      
  00428ac0: lw     $s4, +64($a0)      
  00428ac4: lw     $s5, +80($a0)      
  00428ac8: lw     $s6, +96($a0)      
  00428acc: lw     $s7, +112($a0)     
  00428ad0: lw     $fp, +128($a0)     
  00428ad4: lwc1   $t8, +144($a0)     
  00428ad8: lwc1   $t9, +148($a0)     
  00428adc: lwc1   $k0, +152($a0)     
  00428ae0: lwc1   $k1, +156($a0)     
  00428ae4: lwc1   $gp, +160($a0)     
  00428ae8: lwc1   $sp, +164($a0)     
  00428aec: lwc1   $fp, +168($a0)     
  00428af0: lwc1   $ra, +172($a0)     
  00428af4: lw     $sp, +176($a0)     
  00428af8: lw     $ra, +192($a0)     
  00428afc: bne    $a1, $zero, +8        ; br -> 0x00428b08
  00428b00: sll    $zero, $zero, +0   
  00428b04: addiu  $a1, $zero, +1     
  00428b08: dsubu  $zero, $a1, +0     
  00428b0c: jr     $ra                
  00428b10: sll    $zero, $zero, +0   
  00428b14: sll    $zero, $zero, +0   

; globals: 0xffff0000(x13), 0x00657754(x1)
