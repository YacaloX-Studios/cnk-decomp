; 0x00423d80  FUN_00423d80  size=1856  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=void calls=
; 464 words

  00423d80: addiu  $sp, $sp, -32      
  00423d84: lui   $at, 0x00700000     
  00423d88: sw     $s1, +16($sp)      
  00423d8c: addiu  $v1, $zero, +4     
  00423d90: sw     $s0, +0($sp)       
  00423d94: dsubu  $zero, $zero, +0   
  00423d98: lw     $a1, +19184($at)      ; GLOBAL 0x00704af0
  00423d9c: lw     $a1, +104($a1)     
  00423da0: spec3c  $zero,$a1,$a1     
  00423da4: spec3e  $zero,$a1,$a1     
  00423da8: beq    $a1, $v1, +16         ; br -> 0x00423dbc
  00423dac: addiu  $t7, $zero, +6     
  00423db0: addiu  $v1, $zero, +5     
  00423db4: bne    $a1, $v1, +88         ; br -> 0x00423e10
  00423db8: addiu  $v1, $zero, -4     
  00423dbc: beq    $zero, $zero, +64     ; br -> 0x00423e00
  00423dc0: dsubu  $zero, $zero, +0   
  00423dc4: addu   $v1, $a0, +0       
  00423dc8: lw     $a1, +0($v1)       
  00423dcc: blez   $a1, $zero, +44       ; br -> 0x00423dfc
  00423dd0: sll    $zero, $zero, +0   
  00423dd4: lw     $v1, +60($a1)      
  00423dd8: slti   $v1, $v1, +8       
  00423ddc: bne    $v1, $zero, +20       ; br -> 0x00423df4
  00423de0: sll    $zero, $zero, +0   
  00423de4: lw     $v1, +62($a1)      
  00423de8: slti   $at, $v1, +8       
  00423dec: beq    $at, $zero, +12       ; br -> 0x00423dfc
  00423df0: sll    $zero, $zero, +0   
  00423df4: beq    $zero, $zero, +20     ; br -> 0x00423e0c
  00423df8: dsubu  $zero, $a2, +0     
  00423dfc: addiu  $a2, $a2, +1       
  00423e00: slti   $v1, $a2, +6       
  00423e04: bne    $v1, $zero, -68       ; br -> 0x00463dc4
  00423e08: sll    $a2, $zero, +2     
  00423e0c: addiu  $v1, $zero, -4     
  00423e10: lui   $t2, 0x006a0000     
  00423e14: spec3c  $zero,$v1,$a2     
  00423e18: dsubu  $zero, $zero, +0   
  00423e1c: lui   $v1, 0x000f0000     
  00423e20: addiu  $t4, $zero, +1     
  00423e24: ori    $a1, $v1, -1       
  00423e28: addiu  $t1, $zero, -16384 
  00423e2c: lui   $v1, 0xffc00000     
  00423e30: or     $a2, $a1, +0       
  00423e34: ori    $v1, $v1, +255     
  00423e38: addiu  $a2, $zero, -253   
  00423e3c: spec3c  $zero,$v1,$t0     
  00423e40: addiu  $t2, $t2, +16736   
  00423e44: ori    $v1, $zero, -1     
  00423e48: spec38  $zero,$v1,$a1     
  00423e4c: ori    $a1, $a1, -1       
  00423e50: addiu  $v1, $zero, -4033  
  00423e54: or     $t0, $a1, +0       
  00423e58: lui   $t0, 0xfff00000     
  00423e5c: beq    $zero, $zero, +1220   ; br -> 0x00424324
  00423e60: ori    $t0, $t0, +16383   
  00423e64: addu   $s0, $a0, +0       
  00423e68: lw     $s1, +0($t3)       
  00423e6c: beq    $s1, $zero, +1216     ; br -> 0x00424330
  00423e70: sll    $zero, $zero, +0   
  00423e74: lw     $t3, +70($s1)      
  00423e78: spec3c  $zero,$t3,$t3     
  00423e7c: spec3f  $zero,$t3,$t3     
  00423e80: beq    $t3, $t4, +1196       ; br -> 0x00424330
  00423e84: sll    $zero, $zero, +0   
  00423e88: lw     $t6, +56($s1)      
  00423e8c: sltiu  $at, $t5, +6       
  00423e90: lw     $t3, +60($s1)      
  00423e94: beq    $at, $zero, +1160     ; br -> 0x00424320
  00423e98: dsubu  $zero, $t5, +0     
  00423e9c: addu   $t2, $s0, +0       
  00423ea0: lw     $s0, +0($s0)       
  00423ea4: jr     $s0                
  00423ea8: sll    $zero, $zero, +0   
  00423eac: lui   $at, 0x00700000     
  00423eb0: lw     $s0, +12456($at)      ; GLOBAL 0x007030a8
  00423eb4: bne    $s0, $zero, +96       ; br -> 0x00423f18
  00423eb8: lui   $at, 0x00700000     
  00423ebc: lui   $at, 0x00700000     
  00423ec0: andi   $s1, $t6, +16383   
  00423ec4: lw     $t9, +19184($at)      ; GLOBAL 0x00704af0
  00423ec8: addiu  $t6, $t3, +63      
  00423ecc: sra    $t6, $zero, +6     
  00423ed0: lw     $s0, +184($t9)     
  00423ed4: and    $t1, $s0, +0       
  00423ed8: or     $s1, $s0, +0       
  00423edc: regimm $t6, $at, +12         ; br -> 0x00423eec
  00423ee0: sw     $s0, +184($t9)     
  00423ee4: addiu  $t3, $t6, +63      
  00423ee8: sra    $t3, $zero, +6     
  00423eec: lui   $at, 0x00700000     
  00423ef0: spec3c  $zero,$t3,$t3     
  00423ef4: lw     $s0, +19184($at)      ; GLOBAL 0x00704af0
  00423ef8: spec3f  $zero,$t3,$t3     
  00423efc: andi   $t3, $t3, +63      
  00423f00: spec38  $zero,$t3,$t6     
  00423f04: lw     $t3, +184($s0)     
  00423f08: and    $t0, $t3, +0       
  00423f0c: or     $t6, $t3, +0       
  00423f10: beq    $zero, $zero, +1036   ; br -> 0x00424320
  00423f14: sw     $t3, +184($s0)     
  00423f18: andi   $s1, $t6, +16383   
  00423f1c: lw     $t9, +19184($at)      ; GLOBAL 0x00704af0
  00423f20: addiu  $t6, $t3, +63      
  00423f24: sra    $t6, $zero, +6     
  00423f28: lw     $s0, +192($t9)     
  00423f2c: and    $t1, $s0, +0       
  00423f30: or     $s1, $s0, +0       
  00423f34: regimm $t6, $at, +12         ; br -> 0x00423f44
  00423f38: sw     $s0, +192($t9)     
  00423f3c: addiu  $t3, $t6, +63      
  00423f40: sra    $t3, $zero, +6     
  00423f44: lui   $at, 0x00700000     
  00423f48: spec3c  $zero,$t3,$t3     
  00423f4c: lw     $s0, +19184($at)      ; GLOBAL 0x00704af0
  00423f50: spec3f  $zero,$t3,$t3     
  00423f54: andi   $t3, $t3, +63      
  00423f58: spec38  $zero,$t3,$t6     
  00423f5c: lw     $t3, +192($s0)     
  00423f60: and    $t0, $t3, +0       
  00423f64: or     $t6, $t3, +0       
  00423f68: beq    $zero, $zero, +948    ; br -> 0x00424320
  00423f6c: sw     $t3, +192($s0)     
  00423f70: lui   $at, 0x00700000     
  00423f74: lw     $s0, +12456($at)      ; GLOBAL 0x007030a8
  00423f78: bne    $s0, $zero, +92       ; br -> 0x00423fd8
  00423f7c: addiu  $s0, $t3, +63      
  00423f80: addiu  $s0, $t3, +63      
  00423f84: lui   $at, 0x00700000     
  00423f88: lw     $t3, +19184($at)      ; GLOBAL 0x00704af0
  00423f8c: spec3c  $zero,$t6,$t6     
  00423f90: spec3f  $zero,$t6,$t6     
  00423f94: andi   $t6, $t6, +16383   
  00423f98: spec38  $zero,$t6,$t9     
  00423f9c: sra    $s0, $zero, +6     
  00423fa0: lw     $s1, +184($t3)     
  00423fa4: and    $a3, $s1, +0       
  00423fa8: or     $t9, $s1, +0       
  00423fac: regimm $s0, $at, +12         ; br -> 0x00423fbc
  00423fb0: sw     $s1, +184($t3)     
  00423fb4: addiu  $t6, $s0, +63      
  00423fb8: sra    $t6, $zero, +6     
  00423fbc: lw     $s1, +188($t3)     
  00423fc0: andi   $t6, $t6, +63      
  00423fc4: sll    $t6, $zero, +2     
  00423fc8: and    $a2, $s1, +0       
  00423fcc: or     $s0, $t6, +0       
  00423fd0: beq    $zero, $zero, +844    ; br -> 0x00424320
  00423fd4: sw     $t6, +188($t3)     
  00423fd8: lui   $at, 0x00700000     
  00423fdc: lw     $t3, +19184($at)      ; GLOBAL 0x00704af0
  00423fe0: spec3c  $zero,$t6,$t6     
  00423fe4: spec3f  $zero,$t6,$t6     
  00423fe8: andi   $t6, $t6, +16383   
  00423fec: spec38  $zero,$t6,$t9     
  00423ff0: sra    $s0, $zero, +6     
  00423ff4: lw     $s1, +192($t3)     
  00423ff8: and    $a3, $s1, +0       
  00423ffc: or     $t9, $s1, +0       
  00424000: regimm $s0, $at, +12         ; br -> 0x00424010
  00424004: sw     $s1, +192($t3)     
  00424008: addiu  $t6, $s0, +63      
  0042400c: sra    $t6, $zero, +6     
  00424010: lw     $s1, +196($t3)     
  00424014: andi   $t6, $t6, +63      
  00424018: sll    $t6, $zero, +2     
  0042401c: and    $a2, $s1, +0       
  00424020: or     $s0, $t6, +0       
  00424024: beq    $zero, $zero, +760    ; br -> 0x00424320
  00424028: sw     $t6, +196($t3)     
  0042402c: lui   $at, 0x00700000     
  00424030: lw     $s0, +12456($at)      ; GLOBAL 0x007030a8
  00424034: bne    $s0, $zero, +92       ; br -> 0x00424094
  00424038: addiu  $s0, $t3, +63      
  0042403c: addiu  $s0, $t3, +63      
  00424040: lui   $at, 0x00700000     
  00424044: lw     $t3, +19184($at)      ; GLOBAL 0x00704af0
  00424048: spec3c  $zero,$t6,$t6     
  0042404c: spec3f  $zero,$t6,$t6     
  00424050: andi   $t6, $t6, +16383   
  00424054: spec3c  $zero,$t6,$t9     
  00424058: sra    $s0, $zero, +6     
  0042405c: lw     $s1, +184($t3)     
  00424060: and    $a1, $s1, +0       
  00424064: or     $t9, $s1, +0       
  00424068: regimm $s0, $at, +12         ; br -> 0x00424078
  0042406c: sw     $s1, +184($t3)     
  00424070: addiu  $t6, $s0, +63      
  00424074: sra    $t6, $zero, +6     
  00424078: lw     $s1, +190($t3)     
  0042407c: andi   $t6, $t6, +63      
  00424080: sll    $t6, $zero, +6     
  00424084: and    $v1, $s1, +0       
  00424088: or     $s0, $t6, +0       
  0042408c: beq    $zero, $zero, +656    ; br -> 0x00424320
  00424090: sw     $t6, +190($t3)     
  00424094: lui   $at, 0x00700000     
  00424098: lw     $t3, +19184($at)      ; GLOBAL 0x00704af0
  0042409c: spec3c  $zero,$t6,$t6     
  004240a0: spec3f  $zero,$t6,$t6     
  004240a4: andi   $t6, $t6, +16383   
  004240a8: spec3c  $zero,$t6,$t9     
  004240ac: sra    $s0, $zero, +6     
  004240b0: lw     $s1, +192($t3)     
  004240b4: and    $a1, $s1, +0       
  004240b8: or     $t9, $s1, +0       
  004240bc: regimm $s0, $at, +12         ; br -> 0x004240cc
  004240c0: sw     $s1, +192($t3)     
  004240c4: addiu  $t6, $s0, +63      
  004240c8: sra    $t6, $zero, +6     
  004240cc: lw     $s1, +198($t3)     
  004240d0: andi   $t6, $t6, +63      
  004240d4: sll    $t6, $zero, +6     
  004240d8: and    $v1, $s1, +0       
  004240dc: or     $s0, $t6, +0       
  004240e0: beq    $zero, $zero, +572    ; br -> 0x00424320
  004240e4: sw     $t6, +198($t3)     
  004240e8: lui   $at, 0x00700000     
  004240ec: lw     $s0, +12456($at)      ; GLOBAL 0x007030a8
  004240f0: bne    $s0, $zero, +96       ; br -> 0x00424154
  004240f4: lui   $at, 0x00700000     
  004240f8: lui   $at, 0x00700000     
  004240fc: andi   $s1, $t6, +16383   
  00424100: lw     $t9, +19184($at)      ; GLOBAL 0x00704af0
  00424104: addiu  $t6, $t3, +63      
  00424108: sra    $t6, $zero, +6     
  0042410c: lw     $s0, +200($t9)     
  00424110: and    $t1, $s0, +0       
  00424114: or     $s1, $s0, +0       
  00424118: regimm $t6, $at, +12         ; br -> 0x00424128
  0042411c: sw     $s0, +200($t9)     
  00424120: addiu  $t3, $t6, +63      
  00424124: sra    $t3, $zero, +6     
  00424128: lui   $at, 0x00700000     
  0042412c: spec3c  $zero,$t3,$t3     
  00424130: lw     $s0, +19184($at)      ; GLOBAL 0x00704af0
  00424134: spec3f  $zero,$t3,$t3     
  00424138: andi   $t3, $t3, +63      
  0042413c: spec38  $zero,$t3,$t6     
  00424140: lw     $t3, +200($s0)     
  00424144: and    $t0, $t3, +0       
  00424148: or     $t6, $t3, +0       
  0042414c: beq    $zero, $zero, +464    ; br -> 0x00424320
  00424150: sw     $t3, +200($s0)     
  00424154: andi   $s1, $t6, +16383   
  00424158: lw     $t9, +19184($at)      ; GLOBAL 0x00704af0
  0042415c: addiu  $t6, $t3, +63      
  00424160: sra    $t6, $zero, +6     
  00424164: lw     $s0, +208($t9)     
  00424168: and    $t1, $s0, +0       
  0042416c: or     $s1, $s0, +0       
  00424170: regimm $t6, $at, +12         ; br -> 0x00424180
  00424174: sw     $s0, +208($t9)     
  00424178: addiu  $t3, $t6, +63      
  0042417c: sra    $t3, $zero, +6     
  00424180: lui   $at, 0x00700000     
  00424184: spec3c  $zero,$t3,$t3     
  00424188: lw     $s0, +19184($at)      ; GLOBAL 0x00704af0
  0042418c: spec3f  $zero,$t3,$t3     
  00424190: andi   $t3, $t3, +63      
  00424194: spec38  $zero,$t3,$t6     
  00424198: lw     $t3, +208($s0)     
  0042419c: and    $t0, $t3, +0       
  004241a0: or     $t6, $t3, +0       
  004241a4: beq    $zero, $zero, +376    ; br -> 0x00424320
  004241a8: sw     $t3, +208($s0)     
  004241ac: lui   $at, 0x00700000     
  004241b0: lw     $s0, +12456($at)      ; GLOBAL 0x007030a8
  004241b4: bne    $s0, $zero, +92       ; br -> 0x00424214
  004241b8: addiu  $s0, $t3, +63      
  004241bc: addiu  $s0, $t3, +63      
  004241c0: lui   $at, 0x00700000     
  004241c4: lw     $t3, +19184($at)      ; GLOBAL 0x00704af0
  004241c8: spec3c  $zero,$t6,$t6     
  004241cc: spec3f  $zero,$t6,$t6     
  004241d0: andi   $t6, $t6, +16383   
  004241d4: spec38  $zero,$t6,$t9     
  004241d8: sra    $s0, $zero, +6     
  004241dc: lw     $s1, +200($t3)     
  004241e0: and    $a3, $s1, +0       
  004241e4: or     $t9, $s1, +0       
  004241e8: regimm $s0, $at, +12         ; br -> 0x004241f8
  004241ec: sw     $s1, +200($t3)     
  004241f0: addiu  $t6, $s0, +63      
  004241f4: sra    $t6, $zero, +6     
  004241f8: lw     $s1, +204($t3)     
  004241fc: andi   $t6, $t6, +63      
  00424200: sll    $t6, $zero, +2     
  00424204: and    $a2, $s1, +0       
  00424208: or     $s0, $t6, +0       
  0042420c: beq    $zero, $zero, +272    ; br -> 0x00424320
  00424210: sw     $t6, +204($t3)     
  00424214: lui   $at, 0x00700000     
  00424218: lw     $t3, +19184($at)      ; GLOBAL 0x00704af0
  0042421c: spec3c  $zero,$t6,$t6     
  00424220: spec3f  $zero,$t6,$t6     
  00424224: andi   $t6, $t6, +16383   
  00424228: spec38  $zero,$t6,$t9     
  0042422c: sra    $s0, $zero, +6     
  00424230: lw     $s1, +208($t3)     
  00424234: and    $a3, $s1, +0       
  00424238: or     $t9, $s1, +0       
  0042423c: regimm $s0, $at, +12         ; br -> 0x0042424c
  00424240: sw     $s1, +208($t3)     
  00424244: addiu  $t6, $s0, +63      
  00424248: sra    $t6, $zero, +6     
  0042424c: lw     $s1, +212($t3)     
  00424250: andi   $t6, $t6, +63      
  00424254: sll    $t6, $zero, +2     
  00424258: and    $a2, $s1, +0       
  0042425c: or     $s0, $t6, +0       
  00424260: beq    $zero, $zero, +188    ; br -> 0x00424320
  00424264: sw     $t6, +212($t3)     
  00424268: lui   $at, 0x00700000     
  0042426c: lw     $s0, +12456($at)      ; GLOBAL 0x007030a8
  00424270: bne    $s0, $zero, +92       ; br -> 0x004242d0
  00424274: addiu  $s0, $t3, +63      
  00424278: addiu  $s0, $t3, +63      
  0042427c: lui   $at, 0x00700000     
  00424280: lw     $t3, +19184($at)      ; GLOBAL 0x00704af0
  00424284: spec3c  $zero,$t6,$t6     
  00424288: spec3f  $zero,$t6,$t6     
  0042428c: andi   $t6, $t6, +16383   
  00424290: spec3c  $zero,$t6,$t9     
  00424294: sra    $s0, $zero, +6     
  00424298: lw     $s1, +200($t3)     
  0042429c: and    $a1, $s1, +0       
  004242a0: or     $t9, $s1, +0       
  004242a4: regimm $s0, $at, +12         ; br -> 0x004242b4
  004242a8: sw     $s1, +200($t3)     
  004242ac: addiu  $t6, $s0, +63      
  004242b0: sra    $t6, $zero, +6     
  004242b4: lw     $s1, +206($t3)     
  004242b8: andi   $t6, $t6, +63      
  004242bc: sll    $t6, $zero, +6     
  004242c0: and    $v1, $s1, +0       
  004242c4: or     $s0, $t6, +0       
  004242c8: beq    $zero, $zero, +84     ; br -> 0x00424320
  004242cc: sw     $t6, +206($t3)     
  004242d0: lui   $at, 0x00700000     
  004242d4: lw     $t3, +19184($at)      ; GLOBAL 0x00704af0
  004242d8: spec3c  $zero,$t6,$t6     
  004242dc: spec3f  $zero,$t6,$t6     
  004242e0: andi   $t6, $t6, +16383   
  004242e4: spec3c  $zero,$t6,$s1     
  004242e8: sra    $s0, $zero, +6     
  004242ec: lw     $t9, +208($t3)     
  004242f0: and    $a1, $t9, +0       
  004242f4: or     $s1, $t9, +0       
  004242f8: regimm $s0, $at, +12         ; br -> 0x00424308
  004242fc: sw     $t9, +208($t3)     
  00424300: addiu  $t6, $s0, +63      
  00424304: sra    $t6, $zero, +6     
  00424308: lw     $s0, +214($t3)     
  0042430c: andi   $t6, $t6, +63      
  00424310: sll    $t6, $zero, +6     
  00424314: and    $v1, $s0, +0       
  00424318: or     $t9, $t6, +0       
  0042431c: sw     $t6, +214($t3)     
  00424320: addiu  $t5, $t5, +1       
  00424324: dadd   $t7, $t5, +0       
  00424328: bne    $t3, $zero, -1224     ; br -> 0x00463e64
  0042432c: sll    $t5, $zero, +2     
  00424330: lui   $at, 0x00700000     
  00424334: lw     $v1, +12456($at)      ; GLOBAL 0x007030a8
  00424338: bne    $v1, $zero, +84       ; br -> 0x00424390
  0042433c: lui   $at, 0x00700000     
  00424340: lui   $at, 0x00700000     
  00424344: addiu  $v1, $t8, +1       
  00424348: lw     $t0, +19184($at)      ; GLOBAL 0x00704af0
  0042434c: andi   $v1, $v1, +7       
  00424350: sll    $v1, $zero, +2     
  00424354: addiu  $a1, $zero, -29    
  00424358: andi   $v1, $zero, +1     
  0042435c: sll    $v1, $zero, +1     
  00424360: addiu  $v1, $zero, -3     
  00424364: lw     $a3, +104($t0)        ; GLOBAL 0xfff00068
  00424368: lui   $at, 0x00700000     
  0042436c: and    $a1, $a3, +0       
  00424370: or     $a2, $a1, +0       
  00424374: sw     $a1, +104($t0)        ; GLOBAL 0xfff00068
  00424378: lw     $a2, +19184($at)      ; GLOBAL 0x00704af0
  0042437c: lw     $a1, +105($a2)     
  00424380: and    $v1, $a1, +0       
  00424384: or     $a0, $v1, +0       
  00424388: beq    $zero, $zero, +76     ; br -> 0x004243d8
  0042438c: sw     $v1, +105($a2)     
  00424390: addiu  $v1, $t8, +1       
  00424394: lw     $t0, +19184($at)      ; GLOBAL 0x00704af0
  00424398: andi   $v1, $v1, +7       
  0042439c: sll    $v1, $zero, +2     
  004243a0: addiu  $a1, $zero, -29    
  004243a4: andi   $v1, $zero, +1     
  004243a8: sll    $v1, $zero, +1     
  004243ac: addiu  $v1, $zero, -3     
  004243b0: lw     $a3, +112($t0)        ; GLOBAL 0xfff00070
  004243b4: lui   $at, 0x00700000     
  004243b8: and    $a1, $a3, +0       
  004243bc: or     $a2, $a1, +0       
  004243c0: sw     $a1, +112($t0)        ; GLOBAL 0xfff00070
  004243c4: lw     $a2, +19184($at)      ; GLOBAL 0x00704af0
  004243c8: lw     $a1, +113($a2)     
  004243cc: and    $v1, $a1, +0       
  004243d0: or     $a0, $v1, +0       
  004243d4: sw     $v1, +113($a2)     
  004243d8: lui   $at, 0x00700000     
  004243dc: lw     $v1, +19184($at)      ; GLOBAL 0x00704af0
  004243e0: sw     $zero, +240($v1)      ; GLOBAL 0xffc000f0
  004243e4: lui   $at, 0x00700000     
  004243e8: lw     $v1, +12456($at)      ; GLOBAL 0x007030a8
  004243ec: bne    $v1, $zero, +56       ; br -> 0x00424428
  004243f0: lui   $at, 0x00650000     
  004243f4: lui   $at, 0x00650000     
  004243f8: lui   $v1, 0x42800000     
  004243fc: lw     $a1, +16488($at)      ; GLOBAL 0x00654068
  00424400: ori    $v1, $v1, +8192    
  00424404: lui   $at, 0x00700000     
  00424408: ori    $a1, $a1, +64      
  0042440c: lw     $a0, +19384($at)      ; GLOBAL 0x00704bb8
  00424410: lui   $at, 0x00650000     
  00424414: or     $v1, $a0, +0       
  00424418: sw     $a1, +16488($at)      ; GLOBAL 0x00654068
  0042441c: lui   $at, 0x00700000     
  00424420: beq    $zero, $zero, +48     ; br -> 0x00424454
  00424424: sw     $v1, +19384($at)      ; GLOBAL 0x00704bb8
  00424428: lui   $v1, 0x45000000     
  0042442c: lw     $a1, +16488($at)      ; GLOBAL 0x00704068
  00424430: ori    $v1, $v1, +16384   
  00424434: lui   $at, 0x00700000     
  00424438: ori    $a1, $a1, +64      
  0042443c: lw     $a0, +19384($at)      ; GLOBAL 0x00704bb8
  00424440: lui   $at, 0x00650000     
  00424444: or     $v1, $a0, +0       
  00424448: sw     $a1, +16488($at)      ; GLOBAL 0x00654068
  0042444c: lui   $at, 0x00700000     
  00424450: sw     $v1, +19384($at)      ; GLOBAL 0x00704bb8
  00424454: lw     $s1, +16($sp)      
  00424458: lw     $s0, +0($sp)       
  0042445c: jr     $ra                
  00424460: addiu  $sp, $sp, +32      
  00424464: sll    $zero, $zero, +0   
  00424468: sll    $zero, $zero, +0   
  0042446c: sll    $zero, $zero, +0   
  00424470: lui   $at, 0x00700000     
  00424474: andi   $v1, $a0, +3       
  00424478: lw     $a2, +12456($at)      ; GLOBAL 0x007030a8
  0042447c: addiu  $a0, $zero, +3     
  00424480: lui   $at, 0x00700000     
  00424484: sll    $a2, $zero, +1     
  00424488: lw     $a1, +19864($at)      ; GLOBAL 0x00704d98
  0042448c: sllv   $a0, $a3, +0       
  00424490: sllv   $v1, $a3, +0       
  00424494: nor    $zero, $a2, +0     
  00424498: and    $v1, $a1, +0       
  0042449c: lui   $at, 0x00700000     
  004244a0: sw     $v1, +19864($at)      ; GLOBAL 0x00704d98
  004244a4: lui   $at, 0x00700000     
  004244a8: lw     $v1, +19864($at)      ; GLOBAL 0x00704d98
  004244ac: or     $a0, $v1, +0       
  004244b0: lui   $at, 0x00700000     
  004244b4: jr     $ra                
  004244b8: sw     $v1, +19864($at)      ; GLOBAL 0x00704d98
  004244bc: sll    $zero, $zero, +0   

; globals: 0x00704af0(x22), 0x007030a8(x9), 0x00704bb8(x4), 0x00704d98(x4), 0x00654068(x3), 0xfff00068(x2), 0xfff00070(x2), 0xffc000f0(x1), 0x00704068(x1)
