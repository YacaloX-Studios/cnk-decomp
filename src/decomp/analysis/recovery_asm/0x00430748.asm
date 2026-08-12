; 0x00430748  FUN_00430748  size=760  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042c5c0;0x0042c620;0x00430a40
; 190 words

  00430748: addiu  $sp, $sp, -48      
  0043074c: sw     $s1, +16($sp)      
  00430750: sw     $s0, +0($sp)       
  00430754: dsubu $s1, $a0, $zero     
  00430758: dsubu $s0, $a1, $zero     
  0043075c: beq    $s0, $zero, +712      ; br -> 0x00430a28
  00430760: sw     $ra, +32($sp)      
  00430764: jal   0xf042c5c0             ; -> FUN_0042c5c0
  00430768: sll $zero, $zero, 0       
  0043076c: addiu  $t2, $s0, -8       
  00430770: lui   $v0, 0xffff0000     
  00430774: lw     $a2, +4($t2)       
  00430778: ori    $v0, $v0, -2       
  0043077c: lui   $a1, 0x00650000     
  00430780: lui   $v1, 0xffff0000     
  00430784: and $t1, $a2, $v0         
  00430788: addiu  $t3, $a1, +31440   
  0043078c: addu $a3, $t2, $t1        
  00430790: ori    $v1, $v1, -4       
  00430794: lw     $a0, +4($a3)       
  00430798: dsubu $t5, $a1, $zero     
  0043079c: lw     $v0, +8($t3)       
  004307a0: bne    $a3, $v0, +112        ; br -> 0x00430814
  004307a4: and $a0, $a0, $v1         
  004307a8: andi   $v0, $a2, +1       
  004307ac: bne    $v0, $zero, +32       ; br -> 0x004307d0
  004307b0: addu $t1, $t1, $a0        
  004307b4: lw     $a1, -8($s0)       
  004307b8: subu $t2, $t2, $a1        
  004307bc: addu $t1, $t1, $a1        
  004307c0: lw     $t0, +12($t2)      
  004307c4: lw     $a2, +8($t2)       
  004307c8: sw     $t0, +12($a2)      
  004307cc: sw     $a2, +8($t0)       
  004307d0: lui   $a0, 0x00650000     
  004307d4: spec3c  $zero,$t1,$v1     
  004307d8: lw     $a1, +32472($a0)      ; GLOBAL 0x00657ed8
  004307dc: ori    $v0, $t1, +1       
  004307e0: sw     $v0, +4($t2)       
  004307e4: spec3e  $zero,$v1,$v1     
  004307e8: daddu $v1, $v1, $a1       
  004307ec: bne    $v1, $zero, +20       ; br -> 0x00430804
  004307f0: sw     $t2, +8($t3)       
  004307f4: lui   $v0, 0x00650000     
  004307f8: dsubu $a0, $s1, $zero     
  004307fc: jal   0xf0430a40             ; -> 0x00430a40
  00430800: lw     $a1, +32480($v0)      ; GLOBAL 0x00657ee0
  00430804: jal   0xf042c620             ; -> FUN_0042c620
  00430808: dsubu $a0, $s1, $zero     
  0043080c: beq    $zero, $zero, +540    ; br -> 0x00430a2c
  00430810: lw     $ra, +32($sp)      
  00430814: andi   $v0, $a2, +1       
  00430818: sw     $a0, +4($a3)       
  0043081c: bne    $v0, $zero, +52       ; br -> 0x00430854
  00430820: dsubu $t4, $zero, $zero   
  00430824: lw     $a1, -8($s0)       
  00430828: addiu  $v0, $t3, +8       
  0043082c: subu $t2, $t2, $a1        
  00430830: lw     $v1, +8($t2)       
  00430834: bne    $v1, $v0, +12         ; br -> 0x00430844
  00430838: addu $t1, $t1, $a1        
  0043083c: beq    $zero, $zero, +20     ; br -> 0x00430854
  00430840: addiu  $t4, $zero, +1     
  00430844: lw     $t0, +12($t2)      
  00430848: dsubu $a2, $v1, $zero     
  0043084c: sw     $t0, +12($a2)      
  00430850: sw     $a2, +8($t0)       
  00430854: addu $v1, $a3, $a0        
  00430858: lw     $v0, +4($v1)          ; GLOBAL 0xffff0004
  0043085c: andi   $v0, $v0, +1       
  00430860: bne    $v0, $zero, +76       ; br -> 0x004308b0
  00430864: ori    $v0, $t1, +1       
  00430868: addu $t1, $t1, $a0        
  0043086c: bne    $t4, $zero, +44       ; br -> 0x0043089c
  00430870: lw     $v1, +8($a3)       
  00430874: lui   $v0, 0x00650000     
  00430878: addiu  $v0, $v0, +31448   
  0043087c: bnel   $v1, $v0, +32         ; br -> 0x004308a0
  00430880: lw     $t0, +12($a3)      
  00430884: sw     $t2, +12($v1)         ; GLOBAL 0xffff000c
  00430888: addiu  $t4, $zero, +1     
  0043088c: sw     $t2, +8($v1)          ; GLOBAL 0xffff0008
  00430890: sw     $v1, +8($t2)       
  00430894: beq    $zero, $zero, +20     ; br -> 0x004308ac
  00430898: sw     $v1, +12($t2)      
  0043089c: lw     $t0, +12($a3)      
  004308a0: dsubu $a2, $v1, $zero     
  004308a4: sw     $t0, +12($a2)      
  004308a8: sw     $a2, +8($t0)       
  004308ac: ori    $v0, $t1, +1       
  004308b0: addu $v1, $t2, $t1        
  004308b4: sw     $v0, +4($t2)       
  004308b8: bne    $t4, $zero, +356      ; br -> 0x00430a20
  004308bc: sw     $t1, +0($v1)          ; GLOBAL 0xffff0000
  004308c0: sltiu  $v0, $t1, +512     
  004308c4: beq    $v0, $zero, +72       ; br -> 0x00430910
  004308c8: srl $a3, $t1, 3           
  004308cc: addiu  $v0, $zero, -1     
  004308d0: dadd $v0, $v0, $a3        
  004308d4: addiu  $v1, $a3, +3       
  004308d8: movn   $v1, $a3, $v0      
  004308dc: addiu  $a1, $t5, +31440   
  004308e0: sra $v1, $v1, 2           
  004308e4: addiu  $v0, $zero, +1     
  004308e8: lw     $a0, +4($a1)          ; GLOBAL 0x00650004
  004308ec: spec14  $v1,$v0,$v0       
  004308f0: spec3c  $zero,$v0,$v0     
  004308f4: spec3f  $zero,$v0,$v0     
  004308f8: sll $v1, $a3, 3           
  004308fc: or $a0, $a0, $v0          
  00430900: addu $t0, $v1, $a1        
  00430904: sw     $a0, +4($a1)          ; GLOBAL 0x00650004
  00430908: beq    $zero, $zero, +260    ; br -> 0x00430a10
  0043090c: lw     $a2, +8($t0)       
  00430910: srl $v1, $t1, 9           
  00430914: bne    $v1, $zero, +12       ; br -> 0x00430924
  00430918: sltiu  $v0, $v1, +5       
  0043091c: beq    $zero, $zero, +96     ; br -> 0x00430980
  00430920: srl $a3, $t1, 3           
  00430924: beq    $v0, $zero, +12       ; br -> 0x00430934
  00430928: srl $v0, $t1, 6           
  0043092c: beq    $zero, $zero, +80     ; br -> 0x00430980
  00430930: addiu  $a3, $v0, +56      
  00430934: sltiu  $v0, $v1, +21      
  00430938: bne    $v0, $zero, +68       ; br -> 0x00430980
  0043093c: addiu  $a3, $v1, +91      
  00430940: sltiu  $v0, $v1, +85      
  00430944: beq    $v0, $zero, +12       ; br -> 0x00430954
  00430948: srl $v0, $t1, 12          
  0043094c: beq    $zero, $zero, +48     ; br -> 0x00430980
  00430950: addiu  $a3, $v0, +110     
  00430954: sltiu  $v0, $v1, +341     
  00430958: beq    $v0, $zero, +12       ; br -> 0x00430968
  0043095c: srl $v0, $t1, 15          
  00430960: beq    $zero, $zero, +28     ; br -> 0x00430980
  00430964: addiu  $a3, $v0, +119     
  00430968: sltiu  $v0, $v1, +1365    
  0043096c: beq    $v0, $zero, +12       ; br -> 0x0043097c
  00430970: srl $v0, $t1, 18          
  00430974: beq    $zero, $zero, +8      ; br -> 0x00430980
  00430978: addiu  $a3, $v0, +124     
  0043097c: addiu  $a3, $zero, +126   
  00430980: addiu  $t3, $t5, +31440   
  00430984: sll $v0, $a3, 3           
  00430988: addu $t0, $v0, $t3        
  0043098c: lw     $a2, +8($t0)       
  00430990: bnel   $a2, $t0, +56         ; br -> 0x004309cc
  00430994: lw     $v1, +4($a2)       
  00430998: addiu  $v0, $zero, -1     
  0043099c: addiu  $v1, $a3, +3       
  004309a0: dadd $v0, $v0, $a3        
  004309a4: addiu  $a0, $zero, +1     
  004309a8: movn   $v1, $a3, $v0      
  004309ac: lw     $a1, +4($t3)       
  004309b0: sra $v1, $v1, 2           
  004309b4: spec14  $v1,$a0,$a0       
  004309b8: spec3c  $zero,$a0,$a0     
  004309bc: spec3f  $zero,$a0,$a0     
  004309c0: or $a1, $a1, $a0          
  004309c4: beq    $zero, $zero, +72     ; br -> 0x00430a10
  004309c8: sw     $a1, +4($t3)       
  004309cc: lui   $v0, 0xffff0000     
  004309d0: ori    $v0, $v0, -4       
  004309d4: and $v1, $v1, $v0         
  004309d8: daddu $v1, $t1, $v1       
  004309dc: beql   $v1, $zero, +48       ; br -> 0x00430a10
  004309e0: lw     $t0, +12($a2)      
  004309e4: lui   $v1, 0xffff0000     
  004309e8: ori    $v1, $v1, -4       
  004309ec: lw     $a2, +8($a2)       
  004309f0: beql   $a2, $t0, +28         ; br -> 0x00430a10
  004309f4: lw     $t0, +12($a2)      
  004309f8: lw     $v0, +4($a2)       
  004309fc: and $v0, $v0, $v1         
  00430a00: daddu $v0, $t1, $v0       
  00430a04: bnel   $v0, $zero, -24       ; br -> 0x004309f0
  00430a08: lw     $a2, +8($a2)       
  00430a0c: lw     $t0, +12($a2)      
  00430a10: sw     $t0, +12($t2)      
  00430a14: sw     $a2, +8($t2)       
  00430a18: sw     $t2, +8($t0)       
  00430a1c: sw     $t2, +12($a2)      
  00430a20: jal   0xf042c620             ; -> FUN_0042c620
  00430a24: dsubu $a0, $s1, $zero     
  00430a28: lw     $ra, +32($sp)      
  00430a2c: lw     $s1, +16($sp)      
  00430a30: lw     $s0, +0($sp)       
  00430a34: jr     $ra                
  00430a38: addiu  $sp, $sp, +48      
  00430a3c: sll $zero, $zero, 0       

; globals: 0x00650004(x2), 0x00657ed8(x1), 0x00657ee0(x1), 0xffff0004(x1), 0xffff000c(x1), 0xffff0008(x1), 0xffff0000(x1)
