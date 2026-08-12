; 0x0028b3f0  FUN_0028b3f0  size=1296  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=ptr;a3=int ret=ptr calls=
; 324 words

  0028b3f0: addiu  $sp, $sp, -64      
  0028b3f4: lw     $v0, +16($a0)      
  0028b3f8: addiu  $v1, $a1, +1       
  0028b3fc: lw     $v0, +8($v0)       
  0028b400: addiu  $v0, $v0, -2       
  0028b404: dadd $at, $v1, $v0        
  0028b408: movz   $v1, $v0, $at      
  0028b40c: addiu  $a1, $a1, -1       
  0028b410: blez   $a1, $zero, +12       ; br -> 0x0028b420
  0028b414: sll $zero, $zero, 0       
  0028b418: beq    $zero, $zero, +12     ; br -> 0x0028b428
  0028b41c: lui   $a3, 0x7f7f0000     
  0028b420: dsubu $a1, $zero, $zero   
  0028b424: lui   $a3, 0x7f7f0000     
  0028b428: dadd $at, $v1, $a1        
  0028b42c: ori    $a3, $a3, -1       
  0028b430: fmove  $zero,$a0,$a3      
  0028b434: bne    $at, $zero, +336      ; br -> 0x0028b588
  0028b438: addiu  $v0, $zero, -1     
  0028b43c: lw     $t7, +16($a0)      
  0028b440: lwc1   $v0, +8($a2)       
  0028b444: lwc1   $at, +4($a2)       
  0028b448: addiu  $t6, $sp, +52      
  0028b44c: lwc1   $zero, +0($a2)     
  0028b450: addiu  $t5, $sp, +56      
  0028b454: fmove  $zero,$a0,$zero    
  0028b458: addiu  $t4, $sp, +36      
  0028b45c: addiu  $t3, $sp, +40      
  0028b460: addiu  $t2, $sp, +20      
  0028b464: addiu  $t1, $sp, +24      
  0028b468: addiu  $t0, $sp, +4       
  0028b46c: sll $a0, $a1, 1           
  0028b470: addu $a0, $a0, $a1        
  0028b474: sll $t8, $a0, 3           
  0028b478: lui   $a0, 0x3f800000     
  0028b47c: fmove  $zero,$a0,$a0      
  0028b480: beq    $zero, $zero, +244    ; br -> 0x0028b578
  0028b484: addiu  $a3, $sp, +8       
  0028b488: lw     $a2, +16($t7)      
  0028b48c: addiu  $a0, $t8, +24      
  0028b490: addu $a0, $a2, $a0        
  0028b494: addu $a2, $a2, $t8        
  0028b498: lwc1   $t7, +4($a2)       
  0028b49c: lwc1   $t4, +0($a2)       
  0028b4a0: lwc1   $t6, +4($a0)          ; GLOBAL 0x3f800004
  0028b4a4: lwc1   $t3, +0($a0)          ; GLOBAL 0x3f800000
  0028b4a8: lwc1   $s1, +8($a2)       
  0028b4ac: lwc1   $s0, +8($a0)          ; GLOBAL 0x3f800008
  0028b4b0: f10.1  $at,$s0,$t7        
  0028b4b4: f10.1  $zero,$s0,$t4      
  0028b4b8: f10.1  $t6,$s0,$t7        
  0028b4bc: swc1   $a0, +0($t6)       
  0028b4c0: f10.1  $v0,$s0,$s1        
  0028b4c4: f10.1  $t3,$s0,$t4        
  0028b4c8: swc1   $a1, +48($sp)      
  0028b4cc: f10.2  $t5,$s0,$a0        
  0028b4d0: f10.2  $t2,$s0,$a1        
  0028b4d4: f10.18 $a1,$s0,$a0        
  0028b4d8: f10.1  $s0,$s0,$s1        
  0028b4dc: swc1   $a2, +0($t5)       
  0028b4e0: f10.2  $t2,$s0,$t2        
  0028b4e4: f10.2  $t5,$s0,$t5        
  0028b4e8: f10.1c $a3,$s0,$a2        
  0028b4ec: f10.18 $a1,$s0,$a0        
  0028b4f0: f10.1c $a3,$s0,$a3        
  0028b4f4: f10.3  $a2,$s0,$a0        
  0028b4f8: sll $zero, $zero, 0       
  0028b4fc: sll $zero, $zero, 0       
  0028b500: f10.36 $a2,$s0,$t1        
  0028b504: f8.23  $zero,$t0,$at      
  0028b508: f10.1  $t4,$s0,$zero      
  0028b50c: f10.34 $a2,$s0,$t0        
  0028b510: f8.2b  $zero,$t0,$zero    
  0028b514: sll $zero, $zero, 0       
  0028b518: f10.2  $a3,$s0,$a2        
  0028b51c: f10.0  $s1,$s0,$a0        
  0028b520: f10.1  $a0,$s0,$v0        
  0028b524: f10.2  $t5,$s0,$a2        
  0028b528: f10.0  $t7,$s0,$a0        
  0028b52c: f10.2  $t2,$s0,$a2        
  0028b530: f10.0  $t4,$s0,$a0        
  0028b534: f10.1  $a1,$s0,$at        
  0028b538: f10.1  $a0,$s0,$zero      
  0028b53c: f10.2  $a0,$s0,$a0        
  0028b540: swc1   $a0, +0($sp)       
  0028b544: f10.2  $a2,$s0,$a2        
  0028b548: f10.18 $a1,$s0,$a0        
  0028b54c: swc1   $a2, +0($t0)       
  0028b550: swc1   $a3, +0($a3)          ; GLOBAL 0x7f7f0000
  0028b554: f10.1c $a3,$s0,$a3        
  0028b558: f10.34 $a0,$s0,$v1        
  0028b55c: f8.4   $zero,$t0,$zero    
  0028b560: sll $zero, $zero, 0       
  0028b564: f10.6  $a0,$s0,$zero      
  0028b568: dsubu $v0, $a1, $zero     
  0028b56c: sll $zero, $zero, 0       
  0028b570: addiu  $t8, $t8, +24      
  0028b574: addiu  $a1, $a1, +1       
  0028b578: dadd $at, $v1, $a1        
  0028b57c: beq    $at, $zero, -248      ; br -> 0x0028b488
  0028b580: sll $zero, $zero, 0       
  0028b584: sll $zero, $zero, 0       
  0028b588: beq    $zero, $zero, +100    ; br -> 0x0028b5f0
  0028b58c: sll $zero, $zero, 0       
  0028b590: f10.1  $t4,$s0,$zero      
  0028b594: f10.2  $a0,$s0,$a0        
  0028b598: f10.1  $t7,$s0,$at        
  0028b59c: swc1   $a0, +32($sp)      
  0028b5a0: f10.2  $a2,$s0,$a2        
  0028b5a4: f10.1  $s1,$s0,$v0        
  0028b5a8: f10.18 $a1,$s0,$a0        
  0028b5ac: swc1   $a2, +0($t4)       
  0028b5b0: swc1   $a3, +0($t3)       
  0028b5b4: beq    $zero, $zero, -96     ; br -> 0x0028b558
  0028b5b8: f10.1c $a3,$s0,$a3        
  0028b5bc: sll $zero, $zero, 0       
  0028b5c0: f10.1  $t3,$s0,$zero      
  0028b5c4: f10.1  $t6,$s0,$at        
  0028b5c8: f10.2  $a0,$s0,$a0        
  0028b5cc: swc1   $a0, +16($sp)      
  0028b5d0: f10.2  $a2,$s0,$a2        
  0028b5d4: f10.1  $s0,$s0,$v0        
  0028b5d8: f10.18 $a1,$s0,$a0        
  0028b5dc: swc1   $a2, +0($t2)       
  0028b5e0: swc1   $a3, +0($t1)       
  0028b5e4: beq    $zero, $zero, -144    ; br -> 0x0028b558
  0028b5e8: f10.1c $a3,$s0,$a3        
  0028b5ec: sll $zero, $zero, 0       
  0028b5f0: jr     $ra                
  0028b5f4: addiu  $sp, $sp, +64      
  0028b5f8: sll $zero, $zero, 0       
  0028b5fc: sll $zero, $zero, 0       
  0028b600: lw     $t2, +16($a0)         ; GLOBAL 0x3f800010
  0028b604: sll $v1, $a1, 1           
  0028b608: addu $v1, $v1, $a1        
  0028b60c: sll $t0, $v1, 3           
  0028b610: lw     $t1, +16($t2)      
  0028b614: lw     $v1, +8($t2)       
  0028b618: bne    $a1, $v1, +32         ; br -> 0x0028b63c
  0028b61c: addu $t2, $t1, $t0        
  0028b620: addiu  $a1, $a1, -1       
  0028b624: dsubu $t0, $t2, $zero     
  0028b628: sll $v1, $a1, 1           
  0028b62c: addu $v1, $v1, $a1        
  0028b630: sll $v1, $v1, 3           
  0028b634: beq    $zero, $zero, +24     ; br -> 0x0028b650
  0028b638: addu $t2, $t1, $v1        
  0028b63c: addiu  $a1, $a1, +1       
  0028b640: sll $v1, $a1, 1           
  0028b644: addu $v1, $v1, $a1        
  0028b648: sll $v1, $v1, 3           
  0028b64c: addu $t0, $t1, $v1        
  0028b650: lwc1   $t6, +4($t2)       
  0028b654: lwc1   $a3, +4($t0)       
  0028b658: lwc1   $t3, +4($a2)       
  0028b65c: lwc1   $t5, +0($t2)       
  0028b660: lwc1   $a1, +0($t0)       
  0028b664: lwc1   $t2, +0($a2)       
  0028b668: lwc1   $t7, +8($t2)       
  0028b66c: f10.1  $a3,$s0,$t6        
  0028b670: f10.1  $a1,$s0,$t5        
  0028b674: f10.1  $t3,$s0,$t6        
  0028b678: f10.1  $t2,$s0,$t5        
  0028b67c: lwc1   $t1, +8($t0)       
  0028b680: lwc1   $t4, +8($a2)       
  0028b684: f10.2  $a2,$s0,$zero      
  0028b688: f10.2  $a0,$s0,$v0        
  0028b68c: f10.18 $v0,$s0,$zero      
  0028b690: f10.1  $t1,$s0,$t7        
  0028b694: f10.1  $t4,$s0,$t7        
  0028b698: f10.2  $a0,$s0,$a0        
  0028b69c: f10.2  $a2,$s0,$a2        
  0028b6a0: f10.1c $t0,$s0,$v1        
  0028b6a4: f10.18 $at,$s0,$zero      
  0028b6a8: f10.1c $t0,$s0,$t0        
  0028b6ac: f10.3  $v0,$s0,$zero      
  0028b6b0: sll $zero, $zero, 0       
  0028b6b4: fmove  $zero,$a0,$zero    
  0028b6b8: sll $zero, $zero, 0       
  0028b6bc: f10.36 $s0,$s0,$zero      
  0028b6c0: f8.d   $zero,$t0,$at      
  0028b6c4: sll $zero, $zero, 0       
  0028b6c8: lui   $v1, 0x3f800000     
  0028b6cc: fmove  $zero,$a0,$v1      
  0028b6d0: sll $zero, $zero, 0       
  0028b6d4: f10.34 $s0,$s0,$zero      
  0028b6d8: f8.3   $zero,$t0,$zero    
  0028b6dc: sll $zero, $zero, 0       
  0028b6e0: f10.2  $a0,$s0,$s0        
  0028b6e4: f10.0  $t5,$s0,$zero      
  0028b6e8: f10.2  $a2,$s0,$s0        
  0028b6ec: f10.0  $t6,$s0,$zero      
  0028b6f0: f10.2  $t0,$s0,$s0        
  0028b6f4: f10.0  $t7,$s0,$zero      
  0028b6f8: lw     $a0, +8($a0)          ; GLOBAL 0x3f800008
  0028b6fc: addiu  $v1, $zero, +2     
  0028b700: beq    $a0, $v1, +304        ; br -> 0x0028b834
  0028b704: f10.1  $t5,$s0,$t2        
  0028b708: addiu  $v1, $zero, +1     
  0028b70c: beq    $a0, $v1, +184        ; br -> 0x0028b7c8
  0028b710: f10.1  $t5,$s0,$t2        
  0028b714: beq    $a0, $zero, +12       ; br -> 0x0028b724
  0028b718: sll $zero, $zero, 0       
  0028b71c: beq    $zero, $zero, +436    ; br -> 0x0028b8d4
  0028b720: sw     $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b724: lwc1   $zero, +12($t0)    
  0028b728: lui   $v1, 0x3f800000     
  0028b72c: lwc1   $v0, +12($t2)      
  0028b730: lwc1   $a1, +20($t0)      
  0028b734: lwc1   $a2, +20($t2)      
  0028b738: lwc1   $v1, +16($t0)      
  0028b73c: lwc1   $a0, +16($t2)      
  0028b740: fmove  $zero,$a0,$v1      
  0028b744: sll $zero, $zero, 0       
  0028b748: f10.1  $zero,$s0,$v0      
  0028b74c: f10.2  $zero,$s0,$s0      
  0028b750: f10.0  $zero,$s0,$v0      
  0028b754: f10.1  $a1,$s0,$a2        
  0028b758: swc1   $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b75c: f10.2  $a1,$s0,$s0        
  0028b760: f10.1  $v1,$s0,$a0        
  0028b764: f10.0  $zero,$s0,$a2      
  0028b768: f10.2  $v1,$s0,$s0        
  0028b76c: f10.0  $zero,$s0,$a0      
  0028b770: swc1   $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b774: swc1   $v0, +8($a3)          ; GLOBAL 0x7f7f0008
  0028b778: lwc1   $v0, +4($a3)          ; GLOBAL 0x7f7f0004
  0028b77c: lwc1   $v1, +0($a3)          ; GLOBAL 0x7f7f0000
  0028b780: lwc1   $a0, +8($a3)          ; GLOBAL 0x7f7f0008
  0028b784: lwc1   $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b788: f10.2  $v0,$s0,$v0        
  0028b78c: f10.2  $v1,$s0,$v1        
  0028b790: f10.18 $v1,$s0,$v0        
  0028b794: f10.1c $a0,$s0,$a0        
  0028b798: f10.4  $zero,$s0,$v0      
  0028b79c: f10.3  $at,$s0,$v0        
  0028b7a0: f10.2  $zero,$s0,$at      
  0028b7a4: swc1   $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b7a8: lwc1   $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b7ac: f10.2  $zero,$s0,$at      
  0028b7b0: swc1   $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b7b4: lwc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b7b8: f10.2  $zero,$s0,$at      
  0028b7bc: beq    $zero, $zero, +288    ; br -> 0x0028b8e0
  0028b7c0: swc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b7c4: f10.1  $t5,$s0,$t2        
  0028b7c8: lui   $v1, 0x3f800000     
  0028b7cc: f10.1  $t6,$s0,$t3        
  0028b7d0: swc1   $v0, +0($a3)          ; GLOBAL 0x7f7f0000
  0028b7d4: swc1   $at, +4($a3)          ; GLOBAL 0x7f7f0004
  0028b7d8: f10.1  $t7,$s0,$t4        
  0028b7dc: swc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b7e0: lwc1   $v0, +4($a3)          ; GLOBAL 0x7f7f0004
  0028b7e4: lwc1   $v1, +0($a3)          ; GLOBAL 0x7f7f0000
  0028b7e8: lwc1   $a0, +8($a3)          ; GLOBAL 0x7f7f0008
  0028b7ec: fmove  $zero,$a0,$v1      
  0028b7f0: lwc1   $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b7f4: f10.2  $v0,$s0,$v0        
  0028b7f8: f10.2  $v1,$s0,$v1        
  0028b7fc: f10.18 $v1,$s0,$v0        
  0028b800: f10.1c $a0,$s0,$a0        
  0028b804: f10.4  $zero,$s0,$v0      
  0028b808: f10.3  $at,$s0,$v0        
  0028b80c: f10.2  $zero,$s0,$at      
  0028b810: swc1   $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b814: lwc1   $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b818: f10.2  $zero,$s0,$at      
  0028b81c: swc1   $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b820: lwc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b824: f10.2  $zero,$s0,$at      
  0028b828: beq    $zero, $zero, +180    ; br -> 0x0028b8e0
  0028b82c: swc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b830: f10.1  $t5,$s0,$t2        
  0028b834: lui   $a0, 0x3f800000     
  0028b838: lui   $v1, 0x00640000     
  0028b83c: f10.1  $t6,$s0,$t3        
  0028b840: swc1   $v0, +0($a3)          ; GLOBAL 0x7f7f0000
  0028b844: swc1   $at, +4($a3)          ; GLOBAL 0x7f7f0004
  0028b848: f10.1  $t7,$s0,$t4        
  0028b84c: swc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b850: lwc1   $v0, +4($a3)          ; GLOBAL 0x7f7f0004
  0028b854: lwc1   $v1, +0($a3)          ; GLOBAL 0x7f7f0000
  0028b858: lwc1   $a0, +8($a3)          ; GLOBAL 0x7f7f0008
  0028b85c: fmove  $zero,$a0,$a0      
  0028b860: lwc1   $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b864: f10.2  $v0,$s0,$v0        
  0028b868: f10.2  $v1,$s0,$v1        
  0028b86c: f10.18 $v1,$s0,$v0        
  0028b870: f10.1c $a0,$s0,$a0        
  0028b874: f10.4  $zero,$s0,$v0      
  0028b878: f10.3  $at,$s0,$v0        
  0028b87c: f10.2  $zero,$s0,$at      
  0028b880: swc1   $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b884: lwc1   $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b888: f10.2  $zero,$s0,$at      
  0028b88c: swc1   $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b890: lwc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b894: f10.2  $zero,$s0,$at      
  0028b898: swc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b89c: lwc1   $at, -29576($v1)      ; GLOBAL 0x00648c78
  0028b8a0: lwc1   $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b8a4: f10.2  $zero,$s0,$at      
  0028b8a8: swc1   $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b8ac: lwc1   $at, -29576($v1)      ; GLOBAL 0x00648c78
  0028b8b0: lwc1   $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b8b4: f10.2  $zero,$s0,$at      
  0028b8b8: swc1   $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b8bc: lwc1   $at, -29576($v1)      ; GLOBAL 0x00648c78
  0028b8c0: lwc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b8c4: f10.2  $zero,$s0,$at      
  0028b8c8: beq    $zero, $zero, +20     ; br -> 0x0028b8e0
  0028b8cc: swc1   $zero, +8($a3)        ; GLOBAL 0x7f7f0008
  0028b8d0: sw     $zero, +0($a3)        ; GLOBAL 0x7f7f0000
  0028b8d4: lui   $v1, 0x3f800000     
  0028b8d8: sw     $zero, +4($a3)        ; GLOBAL 0x7f7f0004
  0028b8dc: sw     $v1, +8($a3)          ; GLOBAL 0x7f7f0008
  0028b8e0: beq    $zero, $zero, +20     ; br -> 0x0028b8f8
  0028b8e4: sll $zero, $zero, 0       
  0028b8e8: f10.6  $a1,$s0,$zero      
  0028b8ec: f10.6  $a3,$s0,$zero      
  0028b8f0: beq    $zero, $zero, -508    ; br -> 0x0028b6f8
  0028b8f4: f10.6  $t1,$s0,$zero      
  0028b8f8: jr     $ra                
  0028b8fc: sll $zero, $zero, 0       

; globals: 0x7f7f0000(x17), 0x7f7f0004(x15), 0x7f7f0008(x15), 0x00648c78(x3), 0x3f800008(x2), 0x3f800004(x1), 0x3f800000(x1), 0x3f800010(x1)
