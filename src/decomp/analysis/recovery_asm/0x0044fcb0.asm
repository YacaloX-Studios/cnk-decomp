; 0x0044fcb0  FUN_0044fcb0  size=1968  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=ptr;a3=w ret=int calls=
; 492 words

  0044fcb0: addiu  $sp, $sp, -80      
  0044fcb4: sw     $s4, +64($sp)      
  0044fcb8: sw     $s3, +48($sp)      
  0044fcbc: sw     $s2, +32($sp)      
  0044fcc0: sw     $s1, +16($sp)      
  0044fcc4: sw     $s0, +0($sp)       
  0044fcc8: lw     $t3, +8($a1)       
  0044fccc: lw     $t1, +0($a1)       
  0044fcd0: andi   $v1, $t3, +2       
  0044fcd4: beq    $v1, $zero, +1896     ; br -> 0x00450440
  0044fcd8: dsubu  $zero, $zero, +0   
  0044fcdc: addiu  $t2, $zero, +2     
  0044fce0: lw     $a3, +448($a0)     
  0044fce4: lw     $v1, +450($a0)     
  0044fce8: bne    $t3, $t2, +900        ; br -> 0x00450070
  0044fcec: lw     $t0, +446($a0)     
  0044fcf0: lw     $t3, +9($a1)       
  0044fcf4: addiu  $t2, $zero, +8     
  0044fcf8: bne    $t3, $t2, +340        ; br -> 0x0044fe50
  0044fcfc: sll    $zero, $zero, +0   
  0044fd00: lw     $t2, +316($a0)     
  0044fd04: beq    $t2, $zero, +192      ; br -> 0x0044fdc8
  0044fd08: sll    $zero, $zero, +0   
  0044fd0c: lw     $t2, +320($a0)     
  0044fd10: beq    $t2, $zero, +180      ; br -> 0x0044fdc8
  0044fd14: daddu  $t1, $zero, +0     
  0044fd18: dsubu  $zero, $a2, +0     
  0044fd1c: dsubu  $zero, $a2, +0     
  0044fd20: beq    $at, $zero, +844      ; br -> 0x00450070
  0044fd24: dsubu  $zero, $zero, +0   
  0044fd28: lw     $s1, +320($a0)     
  0044fd2c: lw     $t7, +0($t3)       
  0044fd30: lw     $t6, +1($t3)       
  0044fd34: lw     $t5, +2($t3)       
  0044fd38: addu   $t7, $s1, +0       
  0044fd3c: addu   $t6, $s1, +0       
  0044fd40: lw     $s0, +0($t7)       
  0044fd44: addu   $t5, $s1, +0       
  0044fd48: lw     $t6, +0($t6)       
  0044fd4c: lw     $s1, +0($t5)       
  0044fd50: bne    $s0, $t6, +20         ; br -> 0x0044fd68
  0044fd54: addiu  $t3, $t3, +3       
  0044fd58: andi   $t5, $s1, +255     
  0044fd5c: beq    $s0, $t5, +64         ; br -> 0x0044fda0
  0044fd60: sll    $zero, $zero, +0   
  0044fd64: sll    $zero, $zero, +0   
  0044fd68: mmi2   $t7,$a3,$t6        
  0044fd6c: mult   $s0, $t0, +0       
  0044fd70: andi   $t6, $s1, +255     
  0044fd74: ori    $v0, $v0, +1       
  0044fd78: mmi2   $t6,$v1,$t6        
  0044fd7c: lw     $t5, +316($a0)     
  0044fd80: addu   $t7, $t6, +0       
  0044fd84: srl    $t6, $zero, +15    
  0044fd88: addu   $t6, $t5, +0       
  0044fd8c: lw     $t5, +0($t5)       
  0044fd90: sw     $t5, +0($t2)       
  0044fd94: beq    $zero, $zero, +24     ; br -> 0x0044fdb0
  0044fd98: addiu  $t2, $t2, +1       
  0044fd9c: sll    $zero, $zero, +0   
  0044fda0: lw     $t5, -1($t3)       
  0044fda4: sw     $t5, +0($t2)       
  0044fda8: addiu  $t2, $t2, +1       
  0044fdac: sll    $zero, $zero, +0   
  0044fdb0: addiu  $t4, $t4, +1       
  0044fdb4: daddu  $t1, $t4, +0       
  0044fdb8: bne    $t5, $zero, -148      ; br -> 0x0048fd28
  0044fdbc: sll    $zero, $zero, +0   
  0044fdc0: beq    $zero, $zero, +684    ; br -> 0x00450070
  0044fdc4: sll    $zero, $zero, +0   
  0044fdc8: daddu  $t1, $zero, +0     
  0044fdcc: dsubu  $zero, $a2, +0     
  0044fdd0: dsubu  $zero, $a2, +0     
  0044fdd4: beq    $at, $zero, +664      ; br -> 0x00450070
  0044fdd8: dsubu  $zero, $zero, +0   
  0044fddc: sll    $zero, $zero, +0   
  0044fde0: lw     $t5, +0($s0)       
  0044fde4: lw     $t3, +1($s0)       
  0044fde8: lw     $t6, +2($s0)       
  0044fdec: bne    $t5, $t3, +16         ; br -> 0x0044fe00
  0044fdf0: addiu  $s0, $s0, +3       
  0044fdf4: andi   $t2, $t6, +255     
  0044fdf8: beq    $t5, $t2, +44         ; br -> 0x0044fe28
  0044fdfc: sll    $zero, $zero, +0   
  0044fe00: mmi2   $t3,$a3,$t3        
  0044fe04: mult   $t5, $t0, +0       
  0044fe08: ori    $v0, $v0, +1       
  0044fe0c: andi   $t2, $t6, +255     
  0044fe10: mmi2   $t2,$v1,$t2        
  0044fe14: addu   $t3, $t2, +0       
  0044fe18: srl    $t2, $zero, +15    
  0044fe1c: sw     $t2, +0($t7)       
  0044fe20: beq    $zero, $zero, +20     ; br -> 0x0044fe38
  0044fe24: addiu  $t7, $t7, +1       
  0044fe28: lw     $t2, -1($s0)       
  0044fe2c: sw     $t2, +0($t7)       
  0044fe30: addiu  $t7, $t7, +1       
  0044fe34: sll    $zero, $zero, +0   
  0044fe38: addiu  $t4, $t4, +1       
  0044fe3c: daddu  $t1, $t4, +0       
  0044fe40: bne    $t2, $zero, -100      ; br -> 0x0048fde0
  0044fe44: sll    $zero, $zero, +0   
  0044fe48: beq    $zero, $zero, +548    ; br -> 0x00450070
  0044fe4c: sll    $zero, $zero, +0   
  0044fe50: lw     $t2, +332($a0)     
  0044fe54: beq    $t2, $zero, +360      ; br -> 0x0044ffc0
  0044fe58: sll    $zero, $zero, +0   
  0044fe5c: lw     $t2, +328($a0)     
  0044fe60: beq    $t2, $zero, +348      ; br -> 0x0044ffc0
  0044fe64: daddu  $t1, $zero, +0     
  0044fe68: dsubu  $zero, $a2, +0     
  0044fe6c: dsubu  $zero, $a2, +0     
  0044fe70: beq    $at, $zero, +508      ; br -> 0x00450070
  0044fe74: dsubu  $zero, $zero, +0   
  0044fe78: lw     $s1, +0($t8)       
  0044fe7c: lw     $s0, +2($t8)       
  0044fe80: lw     $t6, +4($t8)       
  0044fe84: lw     $t3, +1($t8)       
  0044fe88: lw     $t2, +3($t8)       
  0044fe8c: lw     $t5, +5($t8)       
  0044fe90: sll    $s1, $zero, +8     
  0044fe94: sll    $s0, $zero, +8     
  0044fe98: sll    $t6, $zero, +8     
  0044fe9c: or     $t3, $s1, +0       
  0044fea0: or     $t2, $s0, +0       
  0044fea4: andi   $t3, $t3, -1       
  0044fea8: or     $t5, $t6, +0       
  0044feac: andi   $t2, $t2, -1       
  0044feb0: addiu  $t8, $t8, +6       
  0044feb4: bne    $t3, $t2, +24         ; br -> 0x0044fed0
  0044feb8: andi   $s1, $t5, -1       
  0044febc: andi   $t5, $s1, -1       
  0044fec0: bne    $t3, $t5, +12         ; br -> 0x0044fed0
  0044fec4: sll    $zero, $zero, +0   
  0044fec8: beq    $zero, $zero, +204    ; br -> 0x0044ff98
  0044fecc: sll    $zero, $zero, +0   
  0044fed0: lw     $t5, +300($a0)     
  0044fed4: andi   $s4, $t3, +255     
  0044fed8: andi   $s3, $t2, +255     
  0044fedc: lw     $t6, +332($a0)     
  0044fee0: sra    $t2, $zero, +8     
  0044fee4: sll    $t2, $zero, +1     
  0044fee8: andi   $s2, $s1, +255     
  0044feec: sra    $t3, $zero, +8     
  0044fef0: andi   $s0, $s1, -1       
  0044fef4: sra    $s0, $zero, +8     
  0044fef8: sll    $t3, $zero, +1     
  0044fefc: srav   $s3, $t5, +0       
  0044ff00: srav   $s4, $t5, +0       
  0044ff04: sll    $s4, $zero, +2     
  0044ff08: srav   $s2, $t5, +0       
  0044ff0c: sll    $t2, $zero, +2     
  0044ff10: addu   $s3, $t6, +0       
  0044ff14: addu   $t2, $t6, +0       
  0044ff18: sll    $s2, $zero, +2     
  0044ff1c: lw     $t2, +0($s4)       
  0044ff20: addu   $s2, $t6, +0       
  0044ff24: sll    $s0, $zero, +1     
  0044ff28: lw     $s3, +0($s3)       
  0044ff2c: lw     $t6, +0($t6)       
  0044ff30: ori    $v0, $v0, +1       
  0044ff34: lw     $s0, +328($a0)     
  0044ff38: addu   $t3, $t2, +0       
  0044ff3c: lw     $s2, +0($t3)       
  0044ff40: addu   $t9, $s3, +0       
  0044ff44: lw     $t3, +0($t2)       
  0044ff48: addu   $s1, $t6, +0       
  0044ff4c: mmi2   $t3,$a3,$t3        
  0044ff50: lw     $t2, +0($t2)       
  0044ff54: mult   $s2, $t0, +0       
  0044ff58: sll    $zero, $zero, +0   
  0044ff5c: sll    $zero, $zero, +0   
  0044ff60: mmi2   $t2,$v1,$t2        
  0044ff64: addu   $t3, $t2, +0       
  0044ff68: srl    $t2, $zero, +15    
  0044ff6c: andi   $t6, $t2, -1       
  0044ff70: andi   $t2, $t2, +255     
  0044ff74: srav   $t2, $t5, +0       
  0044ff78: sra    $t6, $zero, +8     
  0044ff7c: sll    $t3, $zero, +2     
  0044ff80: sll    $t2, $zero, +1     
  0044ff84: addu   $t5, $s0, +0       
  0044ff88: lw     $t2, +0($t2)       
  0044ff8c: addu   $t3, $t2, +0       
  0044ff90: lw     $t3, +0($t2)       
  0044ff94: sll    $zero, $zero, +0   
  0044ff98: andi   $t3, $t3, -1       
  0044ff9c: sra    $t3, $zero, +8     
  0044ffa0: addiu  $t4, $t4, +1       
  0044ffa4: sw     $t2, +0($t7)       
  0044ffa8: sw     $t3, +1($t7)       
  0044ffac: daddu  $t1, $t4, +0       
  0044ffb0: bne    $t2, $zero, -316      ; br -> 0x0048fe78
  0044ffb4: addiu  $t7, $t7, +2       
  0044ffb8: beq    $zero, $zero, +180    ; br -> 0x00450070
  0044ffbc: sll    $zero, $zero, +0   
  0044ffc0: daddu  $t1, $zero, +0     
  0044ffc4: dsubu  $zero, $a2, +0     
  0044ffc8: dsubu  $zero, $a2, +0     
  0044ffcc: beq    $at, $zero, +160      ; br -> 0x00450070
  0044ffd0: dsubu  $zero, $zero, +0   
  0044ffd4: sll    $zero, $zero, +0   
  0044ffd8: lw     $s2, +0($t4)       
  0044ffdc: lw     $s0, +2($t4)       
  0044ffe0: lw     $t6, +4($t4)       
  0044ffe4: lw     $s1, +1($t4)       
  0044ffe8: lw     $t7, +3($t4)       
  0044ffec: lw     $t5, +5($t4)       
  0044fff0: sll    $s2, $zero, +8     
  0044fff4: sll    $s0, $zero, +8     
  0044fff8: sll    $t6, $zero, +8     
  0044fffc: or     $s1, $s2, +0       
  00450000: or     $t7, $s0, +0       
  00450004: andi   $s1, $s1, -1       
  00450008: or     $t5, $t6, +0       
  0045000c: andi   $t7, $t7, -1       
  00450010: addiu  $t4, $t4, +6       
  00450014: bne    $s1, $t7, +16         ; br -> 0x00450028
  00450018: andi   $t6, $t5, -1       
  0045001c: andi   $t5, $t6, -1       
  00450020: beq    $s1, $t5, +12         ; br -> 0x00450030
  00450024: sll    $zero, $zero, +0   
  00450028: ori    $v0, $v0, +1       
  0045002c: sll    $zero, $zero, +0   
  00450030: andi   $t6, $t6, -1       
  00450034: mult   $s1, $t0, +0       
  00450038: addiu  $t2, $t2, +1       
  0045003c: mmi2   $t7,$a3,$t7        
  00450040: sll    $zero, $zero, +0   
  00450044: sll    $zero, $zero, +0   
  00450048: mmi2   $t6,$v1,$t6        
  0045004c: daddu  $t1, $t2, +0       
  00450050: addu   $t7, $t6, +0       
  00450054: srl    $t6, $zero, +15    
  00450058: andi   $t7, $t6, -1       
  0045005c: sra    $t7, $zero, +8     
  00450060: sw     $t6, +0($t3)       
  00450064: sw     $t7, +1($t3)       
  00450068: bne    $t5, $zero, -148      ; br -> 0x0048ffd8
  0045006c: addiu  $t3, $t3, +2       
  00450070: lw     $t3, +8($a1)       
  00450074: addiu  $t2, $zero, +6     
  00450078: bne    $t3, $t2, +900        ; br -> 0x00450400
  0045007c: sll    $zero, $zero, +0   
  00450080: lw     $t3, +9($a1)       
  00450084: addiu  $t2, $zero, +8     
  00450088: bne    $t3, $t2, +308        ; br -> 0x004501c0
  0045008c: sll    $zero, $zero, +0   
  00450090: lw     $t2, +316($a0)     
  00450094: beq    $t2, $zero, +176      ; br -> 0x00450148
  00450098: sll    $zero, $zero, +0   
  0045009c: lw     $t2, +320($a0)     
  004500a0: beq    $t2, $zero, +164      ; br -> 0x00450148
  004500a4: daddu  $t1, $zero, +0     
  004500a8: dsubu  $zero, $a2, +0     
  004500ac: beq    $at, $zero, +848      ; br -> 0x00450400
  004500b0: dsubu  $zero, $zero, +0   
  004500b4: sll    $zero, $zero, +0   
  004500b8: lw     $t7, +320($a0)     
  004500bc: lw     $t6, +2($a2)       
  004500c0: lw     $t5, +1($a2)       
  004500c4: lw     $t4, +0($a2)       
  004500c8: addu   $t6, $t7, +0       
  004500cc: lw     $s0, +0($t6)       
  004500d0: addu   $t5, $t7, +0       
  004500d4: addu   $t4, $t7, +0       
  004500d8: lw     $t5, +0($t5)       
  004500dc: lw     $t6, +0($t4)       
  004500e0: bne    $t6, $t5, +12         ; br -> 0x004500f0
  004500e4: andi   $t4, $s0, +255     
  004500e8: beq    $t6, $t4, +12         ; br -> 0x004500f8
  004500ec: sll    $zero, $zero, +0   
  004500f0: ori    $v0, $v0, +1       
  004500f4: sll    $zero, $zero, +0   
  004500f8: mmi2   $t7,$a3,$t5        
  004500fc: mult   $t6, $t0, +0       
  00450100: addiu  $t2, $t2, +1       
  00450104: lw     $t5, +316($a0)     
  00450108: andi   $t6, $s0, +255     
  0045010c: daddu  $t1, $t2, +0       
  00450110: mmi2   $t6,$v1,$t6        
  00450114: addu   $t7, $t6, +0       
  00450118: srl    $t6, $zero, +15    
  0045011c: addu   $t6, $t5, +0       
  00450120: lw     $t5, +0($t5)       
  00450124: sw     $t5, +0($t3)       
  00450128: lw     $t5, +3($a2)       
  0045012c: sw     $t5, +1($t3)       
  00450130: addiu  $a2, $a2, +4       
  00450134: bne    $t4, $zero, -128      ; br -> 0x004900b8
  00450138: addiu  $t3, $t3, +2       
  0045013c: beq    $zero, $zero, +704    ; br -> 0x00450400
  00450140: sll    $zero, $zero, +0   
  00450144: sll    $zero, $zero, +0   
  00450148: daddu  $t1, $zero, +0     
  0045014c: dsubu  $zero, $a2, +0     
  00450150: beq    $at, $zero, +684      ; br -> 0x00450400
  00450154: dsubu  $zero, $zero, +0   
  00450158: lw     $t0, +1($a2)       
  0045015c: lw     $t2, +0($a2)       
  00450160: bne    $t2, $t0, +20         ; br -> 0x00450178
  00450164: lw     $t4, +2($a2)       
  00450168: andi   $a0, $t4, +255     
  0045016c: beq    $t2, $a0, +16         ; br -> 0x00450180
  00450170: sll    $zero, $zero, +0   
  00450174: sll    $zero, $zero, +0   
  00450178: ori    $v0, $v0, +1       
  0045017c: sll    $zero, $zero, +0   
  00450180: addu   $t0, $t2, +0       
  00450184: andi   $t2, $t4, +255     
  00450188: mmi2   $t0,$a3,$a0        
  0045018c: mult   $t2, $v1, +0       
  00450190: addiu  $t3, $t3, +1       
  00450194: daddu  $t1, $t3, +0       
  00450198: addu   $t0, $t2, +0       
  0045019c: srl    $t0, $zero, +8     
  004501a0: sw     $t0, +0($t5)       
  004501a4: lw     $t0, +3($a2)       
  004501a8: sw     $t0, +1($t5)       
  004501ac: addiu  $a2, $a2, +4       
  004501b0: bne    $a0, $zero, -92       ; br -> 0x00490158
  004501b4: addiu  $t5, $t5, +2       
  004501b8: beq    $zero, $zero, +580    ; br -> 0x00450400
  004501bc: sll    $zero, $zero, +0   
  004501c0: lw     $t2, +332($a0)     
  004501c4: beq    $t2, $zero, +384      ; br -> 0x00450348
  004501c8: sll    $zero, $zero, +0   
  004501cc: lw     $t2, +328($a0)     
  004501d0: beq    $t2, $zero, +372      ; br -> 0x00450348
  004501d4: daddu  $t1, $zero, +0     
  004501d8: dsubu  $zero, $a2, +0     
  004501dc: beq    $at, $zero, +544      ; br -> 0x00450400
  004501e0: dsubu  $zero, $zero, +0   
  004501e4: sll    $zero, $zero, +0   
  004501e8: lw     $s1, +0($a2)       
  004501ec: lw     $s0, +2($a2)       
  004501f0: lw     $t6, +4($a2)       
  004501f4: lw     $t2, +1($a2)       
  004501f8: lw     $t4, +3($a2)       
  004501fc: lw     $t5, +5($a2)       
  00450200: sll    $s1, $zero, +8     
  00450204: sll    $s0, $zero, +8     
  00450208: sll    $t6, $zero, +8     
  0045020c: or     $t2, $s1, +0       
  00450210: or     $t4, $s0, +0       
  00450214: andi   $t2, $t2, -1       
  00450218: or     $t5, $t6, +0       
  0045021c: andi   $t4, $t4, -1       
  00450220: bne    $t2, $t4, +28         ; br -> 0x00450240
  00450224: andi   $s0, $t5, -1       
  00450228: andi   $t5, $s0, -1       
  0045022c: bne    $t2, $t5, +16         ; br -> 0x00450240
  00450230: sll    $zero, $zero, +0   
  00450234: beq    $zero, $zero, +208    ; br -> 0x00450308
  00450238: sll    $zero, $zero, +0   
  0045023c: sll    $zero, $zero, +0   
  00450240: lw     $t5, +300($a0)     
  00450244: andi   $s1, $s0, -1       
  00450248: andi   $s3, $t2, +255     
  0045024c: lw     $t6, +332($a0)     
  00450250: andi   $s2, $t4, +255     
  00450254: sra    $s1, $zero, +8     
  00450258: sra    $t4, $zero, +8     
  0045025c: sll    $t4, $zero, +1     
  00450260: sra    $t2, $zero, +8     
  00450264: sll    $t8, $zero, +1     
  00450268: andi   $s0, $s0, +255     
  0045026c: srav   $s2, $t5, +0       
  00450270: srav   $s3, $t5, +0       
  00450274: sll    $s3, $zero, +2     
  00450278: sll    $t4, $zero, +2     
  0045027c: addu   $s2, $t6, +0       
  00450280: sll    $t2, $zero, +1     
  00450284: addu   $t4, $t6, +0       
  00450288: lw     $s3, +0($s3)       
  0045028c: srav   $s0, $t5, +0       
  00450290: lw     $t8, +328($a0)     
  00450294: lw     $s0, +0($s2)       
  00450298: sll    $t4, $zero, +2     
  0045029c: addu   $t4, $t6, +0       
  004502a0: ori    $v0, $v0, +1       
  004502a4: lw     $t4, +0($t4)       
  004502a8: addu   $t2, $s3, +0       
  004502ac: addu   $s1, $s0, +0       
  004502b0: lw     $s0, +0($t6)       
  004502b4: lw     $t6, +0($t2)       
  004502b8: addu   $t9, $t4, +0       
  004502bc: lw     $t2, +0($t2)       
  004502c0: mult   $s0, $t0, +0       
  004502c4: mmi2   $t4,$a3,$t6        
  004502c8: sll    $zero, $zero, +0   
  004502cc: sll    $zero, $zero, +0   
  004502d0: mmi2   $t2,$v1,$t2        
  004502d4: addu   $t4, $t2, +0       
  004502d8: srl    $t2, $zero, +15    
  004502dc: andi   $t6, $t2, -1       
  004502e0: andi   $t2, $t2, +255     
  004502e4: srav   $t2, $t5, +0       
  004502e8: sra    $t6, $zero, +8     
  004502ec: sll    $t4, $zero, +2     
  004502f0: sll    $t2, $zero, +1     
  004502f4: addu   $t5, $t8, +0       
  004502f8: lw     $t2, +0($t2)       
  004502fc: addu   $t4, $t2, +0       
  00450300: lw     $t2, +0($t2)       
  00450304: sll    $zero, $zero, +0   
  00450308: andi   $t4, $t2, -1       
  0045030c: sra    $t4, $zero, +8     
  00450310: addiu  $t3, $t3, +1       
  00450314: sw     $t2, +0($t7)       
  00450318: sw     $t4, +1($t7)       
  0045031c: daddu  $t1, $t3, +0       
  00450320: lw     $t4, +6($a2)       
  00450324: sw     $t4, +2($t7)       
  00450328: lw     $t4, +7($a2)       
  0045032c: sw     $t4, +3($t7)       
  00450330: addiu  $a2, $a2, +8       
  00450334: bne    $t2, $zero, -336      ; br -> 0x004901e8
  00450338: addiu  $t7, $t7, +4       
  0045033c: beq    $zero, $zero, +192    ; br -> 0x00450400
  00450340: sll    $zero, $zero, +0   
  00450344: sll    $zero, $zero, +0   
  00450348: daddu  $t1, $zero, +0     
  0045034c: dsubu  $zero, $a2, +0     
  00450350: beq    $at, $zero, +172      ; br -> 0x00450400
  00450354: dsubu  $zero, $zero, +0   
  00450358: lw     $t6, +2($a2)       
  0045035c: lw     $t4, +0($a2)       
  00450360: lw     $t8, +4($a2)       
  00450364: lw     $t5, +3($a2)       
  00450368: lw     $t3, +1($a2)       
  0045036c: lw     $t7, +5($a2)       
  00450370: sll    $t6, $zero, +8     
  00450374: sll    $t4, $zero, +8     
  00450378: sll    $t8, $zero, +8     
  0045037c: or     $t5, $t6, +0       
  00450380: or     $t3, $t4, +0       
  00450384: andi   $t5, $t5, -1       
  00450388: or     $t7, $t8, +0       
  0045038c: andi   $t4, $t3, -1       
  00450390: bne    $t4, $t5, +20         ; br -> 0x004503a8
  00450394: andi   $t7, $t7, -1       
  00450398: andi   $t3, $t7, -1       
  0045039c: beq    $t4, $t3, +16         ; br -> 0x004503b0
  004503a0: sll    $zero, $zero, +0   
  004503a4: sll    $zero, $zero, +0   
  004503a8: ori    $v0, $v0, +1       
  004503ac: sll    $zero, $zero, +0   
  004503b0: mmi2   $t5,$a3,$t5        
  004503b4: mult   $t4, $t0, +0       
  004503b8: addiu  $a0, $a0, +1       
  004503bc: andi   $t4, $t7, -1       
  004503c0: daddu  $t1, $a0, +0       
  004503c4: mmi2   $t4,$v1,$t4        
  004503c8: addu   $t5, $t4, +0       
  004503cc: srl    $t4, $zero, +15    
  004503d0: andi   $t5, $t4, -1       
  004503d4: sra    $t5, $zero, +8     
  004503d8: sw     $t4, +0($t2)       
  004503dc: sw     $t5, +1($t2)       
  004503e0: lw     $t4, +6($a2)       
  004503e4: sw     $t4, +2($t2)       
  004503e8: lw     $t4, +7($a2)       
  004503ec: sw     $t4, +3($t2)       
  004503f0: addiu  $a2, $a2, +8       
  004503f4: bne    $t3, $zero, -160      ; br -> 0x00490358
  004503f8: addiu  $t2, $t2, +4       
  004503fc: sll    $zero, $zero, +0   
  00450400: lw     $v1, +10($a1)      
  00450404: addiu  $v1, $v1, -2       
  00450408: sw     $v1, +10($a1)      
  0045040c: lw     $v1, +8($a1)       
  00450410: andi   $v1, $v1, +253     
  00450414: sw     $v1, +8($a1)       
  00450418: lw     $a0, +10($a1)      
  0045041c: lw     $v1, +9($a1)       
  00450420: mult   $v1, $a0, +0       
  00450424: sw     $v1, +11($a1)      
  00450428: lw     $v1, +11($a1)      
  0045042c: mmi2   $v1,$t1,$v1        
  00450430: addiu  $v1, $v1, +7       
  00450434: srl    $v1, $zero, +3     
  00450438: sw     $v1, +4($a1)       
  0045043c: sll    $zero, $zero, +0   
  00450440: lw     $s4, +64($sp)      
  00450444: lw     $s3, +48($sp)      
  00450448: lw     $s2, +32($sp)      
  0045044c: lw     $s1, +16($sp)      
  00450450: lw     $s0, +0($sp)       
  00450454: jr     $ra                
  00450458: addiu  $sp, $sp, +80      
  0045045c: sll    $zero, $zero, +0   
