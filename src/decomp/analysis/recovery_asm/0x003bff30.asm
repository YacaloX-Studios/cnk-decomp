; 0x003bff30  FUN_003bff30  size=1520  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=void calls=
; 380 words

  003bff30: addiu  $sp, $sp, -96      
  003bff34: ori    $v1, $zero, -1     
  003bff38: sq     $s4, +64($sp)      
  003bff3c: addiu  $t0, $zero, -1     
  003bff40: sq     $s3, +48($sp)      
  003bff44: spec38  $zero,$v1,$v1     
  003bff48: sq     $s2, +32($sp)      
  003bff4c: spec3c  $zero,$t0,$a3     
  003bff50: sq     $s1, +16($sp)      
  003bff54: srl $t6, $a2, 6           
  003bff58: sq     $s0, +0($sp)       
  003bff5c: sd     $a1, +88($sp)      
  003bff60: ori    $a1, $v1, -1       
  003bff64: lw     $t1, +92($sp)      
  003bff68: lw     $v1, +4($a0)       
  003bff6c: or $a3, $a1, $a3          
  003bff70: subu $a1, $t1, $a2        
  003bff74: addu $v1, $v1, $t0        
  003bff78: srl $t4, $a1, 6           
  003bff7c: srl $v1, $v1, 6           
  003bff80: andi   $a1, $a1, +63      
  003bff84: addiu  $t9, $v1, +1       
  003bff88: spec14  $a1,$a3,$t5       
  003bff8c: beq    $t6, $zero, +488      ; br -> 0x003c0178
  003bff90: subu $t7, $t9, $t6        
  003bff94: bne    $t5, $a3, +40         ; br -> 0x003bffc0
  003bff98: sll $zero, $zero, 0       
  003bff9c: lw     $a3, +8($a0)       
  003bffa0: addu $v1, $t4, $t6        
  003bffa4: sll $a1, $v1, 3           
  003bffa8: sll $v1, $t4, 3           
  003bffac: addu $a1, $a3, $a1        
  003bffb0: addu $v1, $a3, $v1        
  003bffb4: ld     $a1, +0($a1)       
  003bffb8: beq    $zero, $zero, +88     ; br -> 0x003c0014
  003bffbc: sd     $a1, +0($v1)       
  003bffc0: lw     $a3, +8($a0)       
  003bffc4: addu $a1, $t4, $t6        
  003bffc8: sll $t1, $t4, 3           
  003bffcc: sll $a1, $a1, 3           
  003bffd0: nor $v1, $t5, $zero       
  003bffd4: addu $a1, $a3, $a1        
  003bffd8: addu $t0, $a3, $t1        
  003bffdc: ld     $a3, +0($t0)       
  003bffe0: ld     $a1, +0($a1)       
  003bffe4: and $a3, $v1, $a3         
  003bffe8: sd     $a1, +0($t0)       
  003bffec: lw     $v1, +8($a0)       
  003bfff0: addu $a1, $v1, $t1        
  003bfff4: ld     $v1, +0($a1)       
  003bfff8: and $v1, $v1, $t5         
  003bfffc: sd     $v1, +0($a1)       
  003c0000: lw     $v1, +8($a0)       
  003c0004: addu $a1, $v1, $t1        
  003c0008: ld     $v1, +0($a1)       
  003c000c: or $v1, $v1, $a3          
  003c0010: sd     $v1, +0($a1)       
  003c0014: addiu  $t8, $t4, +1       
  003c0018: sltu $at, $t8, $t7        
  003c001c: beq    $at, $zero, +344      ; br -> 0x003c0178
  003c0020: subu $v1, $t7, $t8        
  003c0024: sltiu  $at, $v1, +9       
  003c0028: bne    $at, $zero, +276      ; br -> 0x003c0140
  003c002c: addiu  $s0, $t7, -8       
  003c0030: sll $s1, $t8, 3           
  003c0034: lw     $t2, +8($a0)       
  003c0038: addu $v1, $t8, $t6        
  003c003c: sll $a3, $v1, 3           
  003c0040: addiu  $s2, $t8, +6       
  003c0044: addu $s3, $s2, $t6        
  003c0048: addiu  $v1, $t8, +1       
  003c004c: addu $a1, $v1, $t6        
  003c0050: addiu  $s2, $t8, +7       
  003c0054: addiu  $v1, $t8, +2       
  003c0058: addu $s2, $s2, $t6        
  003c005c: addu $v1, $v1, $t6        
  003c0060: sll $t1, $a1, 3           
  003c0064: addu $a3, $t2, $a3        
  003c0068: sll $t0, $v1, 3           
  003c006c: ld     $t3, +0($a3)       
  003c0070: addu $t2, $t2, $s1        
  003c0074: addiu  $v1, $t8, +3       
  003c0078: sll $s3, $s3, 3           
  003c007c: addu $a1, $v1, $t6        
  003c0080: addiu  $v1, $t8, +4       
  003c0084: sd     $t3, +0($t2)       
  003c0088: sll $a3, $a1, 3           
  003c008c: lw     $s4, +8($a0)       
  003c0090: addu $a1, $v1, $t6        
  003c0094: addiu  $v1, $t8, +5       
  003c0098: sll $t3, $s2, 3           
  003c009c: addu $v1, $v1, $t6        
  003c00a0: addiu  $t8, $t8, +8       
  003c00a4: sll $a1, $a1, 3           
  003c00a8: sll $v1, $v1, 3           
  003c00ac: sltu $t2, $t8, $s0        
  003c00b0: addu $s2, $s4, $t1        
  003c00b4: ld     $s2, +0($s2)       
  003c00b8: addu $t1, $s4, $s1        
  003c00bc: sd     $s2, +8($t1)       
  003c00c0: lw     $s2, +8($a0)       
  003c00c4: addu $t1, $s2, $t0        
  003c00c8: ld     $t1, +0($t1)       
  003c00cc: addu $t0, $s2, $s1        
  003c00d0: sd     $t1, +16($t0)      
  003c00d4: lw     $t1, +8($a0)       
  003c00d8: addu $t0, $t1, $a3        
  003c00dc: ld     $t0, +0($t0)       
  003c00e0: addu $a3, $t1, $s1        
  003c00e4: sd     $t0, +24($a3)      
  003c00e8: lw     $t0, +8($a0)       
  003c00ec: addu $a3, $t0, $a1        
  003c00f0: ld     $a3, +0($a3)       
  003c00f4: addu $a1, $t0, $s1        
  003c00f8: sd     $a3, +32($a1)      
  003c00fc: lw     $a3, +8($a0)       
  003c0100: addu $a1, $a3, $v1        
  003c0104: ld     $a1, +0($a1)       
  003c0108: addu $v1, $a3, $s1        
  003c010c: sd     $a1, +40($v1)      
  003c0110: lw     $v1, +8($a0)       
  003c0114: addu $a1, $v1, $s3        
  003c0118: ld     $a1, +0($a1)       
  003c011c: addu $v1, $v1, $s1        
  003c0120: sd     $a1, +48($v1)      
  003c0124: lw     $v1, +8($a0)       
  003c0128: addu $a1, $v1, $t3        
  003c012c: ld     $a1, +0($a1)       
  003c0130: addu $v1, $v1, $s1        
  003c0134: addiu  $s1, $s1, +64      
  003c0138: bne    $t2, $zero, -264      ; br -> 0x003c0034
  003c013c: sd     $a1, +56($v1)      
  003c0140: sltu $at, $t8, $t7        
  003c0144: beq    $at, $zero, +48       ; br -> 0x003c0178
  003c0148: sll $t0, $t8, 3           
  003c014c: lw     $t1, +8($a0)       
  003c0150: addu $v1, $t8, $t6        
  003c0154: sll $a1, $v1, 3           
  003c0158: addiu  $t8, $t8, +1       
  003c015c: sltu $v1, $t8, $t7        
  003c0160: addu $a3, $t1, $a1        
  003c0164: ld     $a3, +0($a3)       
  003c0168: addu $a1, $t1, $t0        
  003c016c: addiu  $t0, $t0, +8       
  003c0170: bne    $v1, $zero, -40       ; br -> 0x003c014c
  003c0174: sd     $a3, +0($a1)       
  003c0178: andi   $t0, $a2, +63      
  003c017c: addiu  $a1, $zero, +64    
  003c0180: addiu  $v1, $zero, -1     
  003c0184: subu $a1, $a1, $t0        
  003c0188: spec3c  $zero,$v1,$a2     
  003c018c: spec3c  $zero,$a1,$v1     
  003c0190: ori    $a1, $zero, -1     
  003c0194: spec38  $zero,$a1,$a1     
  003c0198: ori    $a1, $a1, -1       
  003c019c: or $a1, $a1, $a2          
  003c01a0: bne    $t5, $a1, +72         ; br -> 0x003c01ec
  003c01a4: spec3e  $zero,$v1,$v1     
  003c01a8: lw     $a2, +8($a0)       
  003c01ac: sll $t1, $t4, 3           
  003c01b0: addiu  $a1, $t9, -1       
  003c01b4: sltu $at, $t4, $a1        
  003c01b8: addu $a3, $a2, $t1        
  003c01bc: ld     $a2, +0($a3)       
  003c01c0: spec16  $t0,$a2,$a2       
  003c01c4: beq    $at, $zero, +148      ; br -> 0x003c025c
  003c01c8: sd     $a2, +0($a3)       
  003c01cc: lw     $a1, +8($a0)       
  003c01d0: addu $a3, $t1, $a1        
  003c01d4: ld     $a2, +8($a3)       
  003c01d8: ld     $a1, +0($a3)       
  003c01dc: spec14  $v1,$a2,$a2       
  003c01e0: or $a1, $a1, $a2          
  003c01e4: beq    $zero, $zero, +116    ; br -> 0x003c025c
  003c01e8: sd     $a1, +0($a3)       
  003c01ec: lw     $a3, +8($a0)       
  003c01f0: sll $a1, $t4, 3           
  003c01f4: addiu  $a2, $t9, -1       
  003c01f8: sltu $at, $t4, $a2        
  003c01fc: addu $t1, $a3, $a1        
  003c0200: ld     $t2, +0($t1)       
  003c0204: spec16  $t0,$t2,$a3       
  003c0208: beq    $at, $zero, +32       ; br -> 0x003c022c
  003c020c: sd     $a3, +0($t1)       
  003c0210: lw     $a2, +8($a0)       
  003c0214: addu $t1, $a1, $a2        
  003c0218: ld     $a3, +8($t1)       
  003c021c: ld     $a2, +0($t1)       
  003c0220: spec14  $v1,$a3,$a3       
  003c0224: or $a2, $a2, $a3          
  003c0228: sd     $a2, +0($t1)       
  003c022c: lw     $t1, +8($a0)       
  003c0230: nor $a2, $t5, $zero       
  003c0234: and $a3, $a2, $t2         
  003c0238: addu $t1, $t1, $a1        
  003c023c: ld     $a2, +0($t1)       
  003c0240: and $a2, $a2, $t5         
  003c0244: sd     $a2, +0($t1)       
  003c0248: lw     $a2, +8($a0)       
  003c024c: addu $a2, $a2, $a1        
  003c0250: ld     $a1, +0($a2)       
  003c0254: or $a1, $a1, $a3          
  003c0258: sd     $a1, +0($a2)       
  003c025c: addiu  $a1, $t4, +1       
  003c0260: addiu  $a2, $t9, -1       
  003c0264: sltu $at, $a1, $a2        
  003c0268: beq    $at, $zero, +500      ; br -> 0x003c0460
  003c026c: subu $a3, $a2, $a1        
  003c0270: sltiu  $at, $a3, +9       
  003c0274: bne    $at, $zero, +408      ; br -> 0x003c0410
  003c0278: addiu  $a2, $t9, -9       
  003c027c: sll $a3, $a1, 3           
  003c0280: lw     $t2, +8($a0)       
  003c0284: addiu  $a1, $a1, +8       
  003c0288: sltu $t1, $a1, $a2        
  003c028c: addu $t3, $t2, $a3        
  003c0290: ld     $t2, +0($t3)       
  003c0294: spec16  $t0,$t2,$t2       
  003c0298: sd     $t2, +0($t3)       
  003c029c: lw     $t2, +8($a0)       
  003c02a0: addu $t6, $t2, $a3        
  003c02a4: ld     $t3, +8($t6)       
  003c02a8: ld     $t2, +0($t6)       
  003c02ac: spec14  $v1,$t3,$t3       
  003c02b0: or $t2, $t2, $t3          
  003c02b4: sd     $t2, +0($t6)       
  003c02b8: lw     $t2, +8($a0)       
  003c02bc: addu $t3, $t2, $a3        
  003c02c0: ld     $t2, +8($t3)       
  003c02c4: spec16  $t0,$t2,$t2       
  003c02c8: sd     $t2, +8($t3)       
  003c02cc: lw     $t2, +8($a0)       
  003c02d0: addu $t6, $t2, $a3        
  003c02d4: ld     $t3, +16($t6)      
  003c02d8: ld     $t2, +8($t6)       
  003c02dc: spec14  $v1,$t3,$t3       
  003c02e0: or $t2, $t2, $t3          
  003c02e4: sd     $t2, +8($t6)       
  003c02e8: lw     $t2, +8($a0)       
  003c02ec: addu $t3, $t2, $a3        
  003c02f0: ld     $t2, +16($t3)      
  003c02f4: spec16  $t0,$t2,$t2       
  003c02f8: sd     $t2, +16($t3)      
  003c02fc: lw     $t2, +8($a0)       
  003c0300: addu $t6, $t2, $a3        
  003c0304: ld     $t3, +24($t6)      
  003c0308: ld     $t2, +16($t6)      
  003c030c: spec14  $v1,$t3,$t3       
  003c0310: or $t2, $t2, $t3          
  003c0314: sd     $t2, +16($t6)      
  003c0318: lw     $t2, +8($a0)       
  003c031c: addu $t3, $t2, $a3        
  003c0320: ld     $t2, +24($t3)      
  003c0324: spec16  $t0,$t2,$t2       
  003c0328: sd     $t2, +24($t3)      
  003c032c: lw     $t2, +8($a0)       
  003c0330: addu $t6, $t2, $a3        
  003c0334: ld     $t3, +32($t6)      
  003c0338: ld     $t2, +24($t6)      
  003c033c: spec14  $v1,$t3,$t3       
  003c0340: or $t2, $t2, $t3          
  003c0344: sd     $t2, +24($t6)      
  003c0348: lw     $t2, +8($a0)       
  003c034c: addu $t3, $t2, $a3        
  003c0350: ld     $t2, +32($t3)      
  003c0354: spec16  $t0,$t2,$t2       
  003c0358: sd     $t2, +32($t3)      
  003c035c: lw     $t2, +8($a0)       
  003c0360: addu $t6, $t2, $a3        
  003c0364: ld     $t3, +40($t6)      
  003c0368: ld     $t2, +32($t6)      
  003c036c: spec14  $v1,$t3,$t3       
  003c0370: or $t2, $t2, $t3          
  003c0374: sd     $t2, +32($t6)      
  003c0378: lw     $t2, +8($a0)       
  003c037c: addu $t3, $t2, $a3        
  003c0380: ld     $t2, +40($t3)      
  003c0384: spec16  $t0,$t2,$t2       
  003c0388: sd     $t2, +40($t3)      
  003c038c: lw     $t2, +8($a0)       
  003c0390: addu $t6, $t2, $a3        
  003c0394: ld     $t3, +48($t6)      
  003c0398: ld     $t2, +40($t6)      
  003c039c: spec14  $v1,$t3,$t3       
  003c03a0: or $t2, $t2, $t3          
  003c03a4: sd     $t2, +40($t6)      
  003c03a8: lw     $t2, +8($a0)       
  003c03ac: addu $t3, $t2, $a3        
  003c03b0: ld     $t2, +48($t3)      
  003c03b4: spec16  $t0,$t2,$t2       
  003c03b8: sd     $t2, +48($t3)      
  003c03bc: lw     $t2, +8($a0)       
  003c03c0: addu $t6, $t2, $a3        
  003c03c4: ld     $t3, +56($t6)      
  003c03c8: ld     $t2, +48($t6)      
  003c03cc: spec14  $v1,$t3,$t3       
  003c03d0: or $t2, $t2, $t3          
  003c03d4: sd     $t2, +48($t6)      
  003c03d8: lw     $t2, +8($a0)       
  003c03dc: addu $t3, $t2, $a3        
  003c03e0: ld     $t2, +56($t3)      
  003c03e4: spec16  $t0,$t2,$t2       
  003c03e8: sd     $t2, +56($t3)      
  003c03ec: lw     $t2, +8($a0)       
  003c03f0: addu $t6, $t2, $a3        
  003c03f4: ld     $t3, +64($t6)      
  003c03f8: addiu  $a3, $a3, +64      
  003c03fc: ld     $t2, +56($t6)      
  003c0400: spec14  $v1,$t3,$t3       
  003c0404: or $t2, $t2, $t3          
  003c0408: bne    $t1, $zero, -396      ; br -> 0x003c0280
  003c040c: sd     $t2, +56($t6)      
  003c0410: addiu  $t2, $t9, -1       
  003c0414: sltu $at, $a1, $t2        
  003c0418: beq    $at, $zero, +68       ; br -> 0x003c0460
  003c041c: sll $t3, $a1, 3           
  003c0420: lw     $a3, +8($a0)       
  003c0424: addiu  $a1, $a1, +1       
  003c0428: sltu $a2, $a1, $t2        
  003c042c: addu $t1, $a3, $t3        
  003c0430: ld     $a3, +0($t1)       
  003c0434: spec16  $t0,$a3,$a3       
  003c0438: sd     $a3, +0($t1)       
  003c043c: lw     $a3, +8($a0)       
  003c0440: addu $t6, $a3, $t3        
  003c0444: ld     $t1, +8($t6)       
  003c0448: addiu  $t3, $t3, +8       
  003c044c: ld     $a3, +0($t6)       
  003c0450: spec14  $v1,$t1,$t1       
  003c0454: or $a3, $a3, $t1          
  003c0458: bne    $a2, $zero, -60       ; br -> 0x003c0420
  003c045c: sd     $a3, +0($t6)       
  003c0460: addiu  $v1, $t9, -1       
  003c0464: beq    $t4, $v1, +144        ; br -> 0x003c04f8
  003c0468: ori    $v1, $zero, -1     
  003c046c: addiu  $a1, $zero, -1     
  003c0470: spec38  $zero,$v1,$v1     
  003c0474: spec3c  $zero,$a1,$a1     
  003c0478: ori    $v1, $v1, -1       
  003c047c: or $v1, $v1, $a1          
  003c0480: bne    $t5, $v1, +32         ; br -> 0x003c04a4
  003c0484: sll $zero, $zero, 0       
  003c0488: lw     $a0, +8($a0)       
  003c048c: sll $v1, $t9, 3           
  003c0490: addu $a0, $v1, $a0        
  003c0494: ld     $v1, -8($a0)       
  003c0498: spec16  $t0,$v1,$v1       
  003c049c: beq    $zero, $zero, +88     ; br -> 0x003c04f8
  003c04a0: sd     $v1, -8($a0)       
  003c04a4: lw     $a1, +8($a0)       
  003c04a8: addiu  $t2, $zero, -8     
  003c04ac: sll $t1, $t9, 3           
  003c04b0: nor $v1, $t5, $zero       
  003c04b4: addu $a1, $a1, $t2        
  003c04b8: addu $a3, $a1, $t1        
  003c04bc: ld     $a1, +0($a3)       
  003c04c0: spec16  $t0,$a1,$a2       
  003c04c4: and $a1, $v1, $a1         
  003c04c8: sd     $a2, +0($a3)       
  003c04cc: lw     $v1, +8($a0)       
  003c04d0: addu $v1, $v1, $t2        
  003c04d4: addu $a2, $v1, $t1        
  003c04d8: ld     $v1, +0($a2)       
  003c04dc: and $v1, $v1, $t5         
  003c04e0: sd     $v1, +0($a2)       
  003c04e4: lw     $v1, +8($a0)       
  003c04e8: addu $a0, $t1, $v1        
  003c04ec: ld     $v1, -8($a0)       
  003c04f0: or $v1, $v1, $a1          
  003c04f4: sd     $v1, -8($a0)       
  003c04f8: lq     $s4, +64($sp)      
  003c04fc: lq     $s3, +48($sp)      
  003c0500: lq     $s2, +32($sp)      
  003c0504: lq     $s1, +16($sp)      
  003c0508: lq     $s0, +0($sp)       
  003c050c: jr     $ra                
  003c0510: addiu  $sp, $sp, +96      
  003c0514: sll $zero, $zero, 0       
  003c0518: sll $zero, $zero, 0       
  003c051c: sll $zero, $zero, 0       
