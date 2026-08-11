; 0x006588a0  FUN_006588a0  size=480  status=real_c
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=
; 120 words

  006588a0: lui   $a2, 0xbc000000     
  006588a4: lw     $a2, +960($a2)        ; GLOBAL 0xbc0003c0
  006588a8: beq    $a2, $zero, +68       ; br -> 0x006588f0
  006588ac: lui   $t0, 0x80070000     
  006588b0: lui   $v0, 0xbc000000     
  006588b4: addu   $v0, $a2, +0       
  006588b8: addiu  $a3, $t0, +18176   
  006588bc: addiu  $a2, $a2, +15      
  006588c0: dsubu  $zero, $zero, +0   
  006588c4: sll    $zero, $zero, +0   
  006588c8: addu   $a1, $a2, +0       
  006588cc: addu   $a1, $a3, +0       
  006588d0: lw     $v1, +0($v0)          ; GLOBAL 0xbc000000
  006588d4: addiu  $a1, $a1, +1       
  006588d8: slti   $v0, $a1, +38      
  006588dc: sw     $v1, +0($a0)       
  006588e0: bne    $v0, $zero, -28       ; br -> 0x006988c8
  006588e4: sll    $zero, $zero, +0   
  006588e8: beq    $zero, $zero, +8      ; br -> 0x006588f4
  006588ec: lw     $v1, +18176($t0)      ; GLOBAL 0x80074700
  006588f0: lw     $v1, +18176($t0)      ; GLOBAL 0x80074700
  006588f4: spec38  $zero,$v1,$v0     
  006588f8: spec3f  $zero,$v0,$v0     
  006588fc: andi   $v0, $v0, +7       
  00658900: bne    $v0, $zero, +84       ; br -> 0x00658958
  00658904: sll    $zero, $zero, +0   
  00658908: addiu  $v0, $zero, -257   
  0065890c: spec38  $zero,$v0,$v0     
  00658910: ori    $v0, $v0, -1       
  00658914: spec38  $zero,$v0,$v0     
  00658918: ori    $v0, $v0, -1       
  0065891c: addiu  $a0, $zero, -3073  
  00658920: spec38  $zero,$a0,$a0     
  00658924: ori    $a0, $a0, -1       
  00658928: spec38  $zero,$a0,$a0     
  0065892c: ori    $a0, $a0, -1       
  00658930: and    $v0, $v1, +0       
  00658934: lui   $v1, 0xffff0000     
  00658938: ori    $v1, $v1, +4095    
  0065893c: spec38  $zero,$v1,$v1     
  00658940: ori    $v1, $v1, -1       
  00658944: spec38  $zero,$v1,$v1     
  00658948: ori    $v1, $v1, -1       
  0065894c: and    $a0, $v0, +0       
  00658950: and    $v1, $v0, +0       
  00658954: sw     $v0, +18176($t0)      ; GLOBAL 0x80074700
  00658958: jr     $ra                
  0065895c: sll    $zero, $zero, +0   
  00658960: addu   $a2, $a1, +0       
  00658964: sltiu  $v0, $a3, +129     
  00658968: bne    $v0, $zero, +32       ; br -> 0x0065898c
  0065896c: dsubu  $zero, $a0, +0     
  00658970: sltiu  $v0, $a2, +128     
  00658974: beq    $v0, $zero, +12       ; br -> 0x00658984
  00658978: addiu  $v0, $zero, +128   
  0065897c: beq    $zero, $zero, +12     ; br -> 0x0065898c
  00658980: subu   $a2, $v0, +0       
  00658984: addiu  $a2, $zero, +128   
  00658988: dsubu  $zero, $zero, +0   
  0065898c: addu   $a2, $a1, +0       
  00658990: daddu  $a1, $a2, +0       
  00658994: beq    $v0, $zero, +60       ; br -> 0x006589d4
  00658998: dsubu  $zero, $zero, +0   
  0065899c: dsubu  $zero, $a1, +0     
  006589a0: lui   $t1, 0x80070000     
  006589a4: lui   $a1, 0x80070000     
  006589a8: addiu  $v0, $a1, +18352   
  006589ac: addu   $t0, $t2, +0       
  006589b0: addu   $v0, $a2, +0       
  006589b4: addiu  $t0, $t0, +1       
  006589b8: lw     $v1, +0($v0)          ; GLOBAL 0xbc000000
  006589bc: addiu  $a2, $a2, +1       
  006589c0: daddu  $a3, $a2, +0       
  006589c4: bne    $v0, $zero, -32       ; br -> 0x006989a8
  006589c8: sw     $v1, +0($a0)       
  006589cc: beq    $zero, $zero, +12     ; br -> 0x006589dc
  006589d0: lw     $v1, +18176($t1)      ; GLOBAL 0x80074700
  006589d4: lui   $t1, 0x80070000     
  006589d8: lw     $v1, +18176($t1)      ; GLOBAL 0x80074700
  006589dc: spec38  $zero,$v1,$v0     
  006589e0: spec3f  $zero,$v0,$v0     
  006589e4: andi   $v0, $v0, +7       
  006589e8: bne    $v0, $zero, +12       ; br -> 0x006589f8
  006589ec: sll    $zero, $zero, +0   
  006589f0: jr     $ra                
  006589f4: dsubu  $zero, $zero, +0   
  006589f8: spec3e  $zero,$v1,$v0     
  006589fc: jr     $ra                
  00658a00: andi   $v0, $v0, +15      
  00658a04: sll    $zero, $zero, +0   
  00658a08: dsubu  $zero, $a1, +0     
  00658a0c: addu   $a2, $v1, +0       
  00658a10: sltiu  $v0, $a1, +129     
  00658a14: bne    $v0, $zero, +36       ; br -> 0x00658a3c
  00658a18: dsubu  $zero, $a0, +0     
  00658a1c: sltiu  $v0, $a2, +128     
  00658a20: beq    $v0, $zero, +12       ; br -> 0x00658a30
  00658a24: addiu  $v0, $zero, +128   
  00658a28: beq    $zero, $zero, +12     ; br -> 0x00658a38
  00658a2c: subu   $a2, $v0, +0       
  00658a30: addiu  $a2, $zero, +128   
  00658a34: dsubu  $zero, $zero, +0   
  00658a38: addu   $a2, $v1, +0       
  00658a3c: daddu  $a1, $a2, +0       
  00658a40: beq    $v0, $zero, +48       ; br -> 0x00658a74
  00658a44: dsubu  $zero, $zero, +0   
  00658a48: lui   $t0, 0x80070000     
  00658a4c: sll    $zero, $zero, +0   
  00658a50: addu   $a3, $t1, +0       
  00658a54: addiu  $v1, $t0, +18352   
  00658a58: addu   $v1, $a2, +0       
  00658a5c: lw     $a0, +0($v0)          ; GLOBAL 0xbc000000
  00658a60: addiu  $a2, $a2, +1       
  00658a64: addiu  $a3, $a3, +1       
  00658a68: daddu  $a1, $a2, +0       
  00658a6c: bne    $v0, $zero, -32       ; br -> 0x00698a50
  00658a70: sw     $a0, +0($v1)          ; GLOBAL 0xffff0000
  00658a74: jr     $ra                
  00658a78: sll    $zero, $zero, +0   
  00658a7c: sll    $zero, $zero, +0   

; globals: 0x80074700(x5), 0xbc000000(x3), 0xbc0003c0(x1), 0xffff0000(x1)
