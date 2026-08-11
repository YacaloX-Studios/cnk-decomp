; 0x00381030  FUN_00381030  size=8256  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=ptr;a3=int ret=ptr calls=
; 2064 words

  00381030: addiu  $sp, $sp, -1568    
  00381034: lui   $v0, 0x7f7f0000     
  00381038: swc1   $ra, +44($sp)      
  0038103c: ori    $v0, $v0, -1       
  00381040: swc1   $fp, +40($sp)      
  00381044: dsubu  $zero, $zero, +0   
  00381048: swc1   $sp, +36($sp)      
  0038104c: dsubu  $zero, $zero, +0   
  00381050: swc1   $gp, +32($sp)      
  00381054: swc1   $k1, +28($sp)      
  00381058: swc1   $k0, +24($sp)      
  0038105c: swc1   $t9, +20($sp)      
  00381060: swc1   $t8, +16($sp)      
  00381064: swc1   $s7, +12($sp)      
  00381068: swc1   $s6, +8($sp)       
  0038106c: swc1   $s5, +4($sp)       
  00381070: swc1   $s4, +0($sp)       
  00381074: lw     $t0, +32($a1)      
  00381078: fmove  $zero,$a0,$v0      
  0038107c: addiu  $v0, $zero, +4     
  00381080: beq    $t0, $v0, +1576       ; br -> 0x003816ac
  00381084: addiu  $t3, $a1, +32      
  00381088: addiu  $v0, $zero, +3     
  0038108c: beq    $t0, $v0, +236        ; br -> 0x0038117c
  00381090: addiu  $v1, $a0, +16      
  00381094: addiu  $v0, $zero, +2     
  00381098: beq    $t0, $v0, +40         ; br -> 0x003810c4
  0038109c: addiu  $v0, $a0, +16      
  003810a0: addiu  $v0, $zero, +1     
  003810a4: beq    $t0, $v0, +20         ; br -> 0x003810bc
  003810a8: lui   $v0, 0x3f800000     
  003810ac: beq    $t0, $zero, +7848     ; br -> 0x00382f58
  003810b0: dsubu  $zero, $zero, +0   
  003810b4: beq    $zero, $zero, +7836   ; br -> 0x00382f54
  003810b8: sll    $zero, $zero, +0   
  003810bc: beq    $zero, $zero, +8052   ; br -> 0x00383034
  003810c0: sw     $v0, +0($a2)       
  003810c4: op36    $a0,$s0,$zero     
  003810c8: op36    $v0,$s1,$zero     
  003810cc: cop2   $s0,$ra,$s2        
  003810d0: cop2   $s0,$ra,$s1        
  003810d4: cop2   $s0,$ra,$s2        
  003810d8: cop2   $s0,$t8,$s0        
  003810dc: cop2   $s0,$t8,$s0        
  003810e0: cop2   $s0,$at,$t0        
  003810e4: fmove  $zero,$a0,$t0      
  003810e8: lui   $v0, 0x37270000     
  003810ec: ori    $v0, $v0, -14932   
  003810f0: fmove  $zero,$a0,$v0      
  003810f4: sll    $zero, $zero, +0   
  003810f8: f10.36 $v0,$s0,$zero      
  003810fc: sll    $zero, $zero, +0   
  00381100: f8.5   $zero,$t0,$zero    
  00381104: lui   $v1, 0x3f800000     
  00381108: addiu  $v0, $zero, +1     
  0038110c: sw     $v1, +0($a2)       
  00381110: beq    $zero, $zero, +7968   ; br -> 0x00383034
  00381114: sw     $v0, +0($t3)       
  00381118: cop2   $s1,$ra,$s0        
  0038111c: cop2   $s2,$ra,$s1        
  00381120: cop2   $s0,$ra,$s2        
  00381124: cop2   $s0,$ra,$s1        
  00381128: cop2   $s0,$ra,$s2        
  0038112c: cop2   $s0,$t8,$s0        
  00381130: cop2   $s0,$t8,$s0        
  00381134: cop2   $s0,$at,$t0        
  00381138: fmove  $zero,$a0,$t0      
  0038113c: f10.36 $at,$s0,$zero      
  00381140: sll    $zero, $zero, +0   
  00381144: f8.5   $zero,$t0,$zero    
  00381148: lui   $v1, 0x3f800000     
  0038114c: addiu  $v0, $zero, +1     
  00381150: sw     $v1, +0($a2)       
  00381154: beq    $zero, $zero, +7688   ; br -> 0x00382f60
  00381158: sw     $v0, +0($t3)       
  0038115c: f10.0  $at,$s0,$v0        
  00381160: sll    $zero, $zero, +0   
  00381164: f10.3  $at,$s0,$zero      
  00381168: f10.3  $v0,$s0,$zero      
  0038116c: sll    $zero, $zero, +0   
  00381170: swc1   $at, +0($a2)       
  00381174: beq    $zero, $zero, +7868   ; br -> 0x00383034
  00381178: swc1   $zero, +4($a2)     
  0038117c: addiu  $v0, $a0, +32      
  00381180: op36    $a0,$t7,$zero     
  00381184: op36    $v1,$s0,$zero     
  00381188: op36    $v0,$s1,$zero     
  0038118c: cop2   $t7,$ra,$s2        
  00381190: cop2   $t7,$ra,$s0        
  00381194: cop2   $t7,$ra,$s1        
  00381198: cop2   $s0,$fp,$s2        
  0038119c: cop2   $s1,$fp,$s2        
  003811a0: cop2   $s0,$t8,$s0        
  003811a4: cop2   $s1,$t8,$s1        
  003811a8: cop2   $s0,$t8,$s0        
  003811ac: cop2   $s1,$t8,$s1        
  003811b0: cop2   $s0,$at,$t0        
  003811b4: cop2   $s1,$at,$t1        
  003811b8: fmove  $zero,$a0,$t0      
  003811bc: fmove  $zero,$a0,$t1      
  003811c0: lui   $v0, 0x37270000     
  003811c4: ori    $v0, $v0, -14932   
  003811c8: fmove  $zero,$a0,$v0      
  003811cc: sll    $zero, $zero, +0   
  003811d0: f10.36 $a0,$s0,$zero      
  003811d4: sll    $zero, $zero, +0   
  003811d8: f8.a   $zero,$t0,$zero    
  003811dc: lui   $v0, 0x3f800000     
  003811e0: f10.36 $a1,$s0,$zero      
  003811e4: sll    $zero, $zero, +0   
  003811e8: f8.7   $zero,$t0,$zero    
  003811ec: addiu  $v1, $zero, +1     
  003811f0: lui   $v1, 0x3f800000     
  003811f4: addiu  $v0, $zero, +1     
  003811f8: sw     $v1, +0($a2)       
  003811fc: beq    $zero, $zero, +7732   ; br -> 0x00383034
  00381200: sw     $v0, +0($t3)       
  00381204: addiu  $v1, $zero, +1     
  00381208: fmove  $zero,$a0,$v0      
  0038120c: sw     $v0, +48($sp)      
  00381210: addiu  $a3, $a0, +16      
  00381214: addiu  $v0, $a0, +32      
  00381218: op36    $a3,$t7,$zero     
  0038121c: op36    $a0,$s0,$zero     
  00381220: op36    $v0,$s1,$zero     
  00381224: cop2   $t7,$ra,$s2        
  00381228: cop2   $t7,$ra,$s0        
  0038122c: cop2   $t7,$ra,$s1        
  00381230: cop2   $s0,$fp,$s2        
  00381234: cop2   $s1,$fp,$s2        
  00381238: cop2   $s0,$t8,$s0        
  0038123c: cop2   $s1,$t8,$s1        
  00381240: cop2   $s0,$t8,$s0        
  00381244: cop2   $s1,$t8,$s1        
  00381248: cop2   $s0,$at,$t0        
  0038124c: cop2   $s1,$at,$t1        
  00381250: fmove  $zero,$a0,$t0      
  00381254: fmove  $zero,$a0,$t1      
  00381258: lui   $v0, 0x37270000     
  0038125c: ori    $v0, $v0, -14932   
  00381260: fmove  $zero,$a0,$v0      
  00381264: sll    $zero, $zero, +0   
  00381268: f10.36 $a3,$s0,$zero      
  0038126c: sll    $zero, $zero, +0   
  00381270: f8.8   $zero,$t0,$zero    
  00381274: lui   $v0, 0x3f800000     
  00381278: f10.36 $a2,$s0,$zero      
  0038127c: sll    $zero, $zero, +0   
  00381280: f8.4   $zero,$t0,$zero    
  00381284: sll    $zero, $zero, +0   
  00381288: swc1   $at, +0($a2)       
  0038128c: beq    $zero, $zero, +7376   ; br -> 0x00382f60
  00381290: sw     $v1, +0($t3)       
  00381294: addiu  $v1, $zero, +1     
  00381298: fmove  $zero,$a0,$v0      
  0038129c: sw     $v0, +48($sp)      
  003812a0: sw     $zero, +68($sp)    
  003812a4: addiu  $a3, $a0, +32      
  003812a8: sw     $v1, +64($sp)      
  003812ac: addiu  $v0, $a0, +16      
  003812b0: op36    $a3,$t7,$zero     
  003812b4: op36    $a0,$s0,$zero     
  003812b8: op36    $v0,$s1,$zero     
  003812bc: cop2   $t7,$ra,$s2        
  003812c0: cop2   $t7,$ra,$s0        
  003812c4: cop2   $t7,$ra,$s1        
  003812c8: cop2   $s0,$fp,$s2        
  003812cc: cop2   $s1,$fp,$s2        
  003812d0: cop2   $s0,$t8,$s0        
  003812d4: cop2   $s1,$t8,$s1        
  003812d8: cop2   $s0,$t8,$s0        
  003812dc: cop2   $s1,$t8,$s1        
  003812e0: cop2   $s0,$at,$t0        
  003812e4: cop2   $s1,$at,$t1        
  003812e8: fmove  $zero,$a0,$t0      
  003812ec: fmove  $zero,$a0,$t1      
  003812f0: lui   $v0, 0x37270000     
  003812f4: ori    $v0, $v0, -14932   
  003812f8: fmove  $zero,$a0,$v0      
  003812fc: sll    $zero, $zero, +0   
  00381300: f10.36 $t1,$s0,$zero      
  00381304: sll    $zero, $zero, +0   
  00381308: f8.8   $zero,$t0,$zero    
  0038130c: lui   $v0, 0x3f800000     
  00381310: f10.36 $t0,$s0,$zero      
  00381314: sll    $zero, $zero, +0   
  00381318: f8.4   $zero,$t0,$zero    
  0038131c: sll    $zero, $zero, +0   
  00381320: swc1   $at, +0($a2)       
  00381324: beq    $zero, $zero, +7296   ; br -> 0x00382fa8
  00381328: sw     $v1, +0($t3)       
  0038132c: addiu  $v1, $zero, +1     
  00381330: fmove  $zero,$a0,$v0      
  00381334: sw     $v0, +48($sp)      
  00381338: addiu  $t1, $zero, +2     
  0038133c: sw     $zero, +68($sp)    
  00381340: sw     $t1, +64($sp)      
  00381344: dsubu  $zero, $v1, +0     
  00381348: addiu  $t0, $a0, +32      
  0038134c: addiu  $v0, $a0, +16      
  00381350: op36    $a0,$s0,$zero     
  00381354: op36    $t0,$s1,$zero     
  00381358: op36    $v0,$s2,$zero     
  0038135c: cop2   $s0,$ra,$s1        
  00381360: cop2   $s0,$ra,$s2        
  00381364: cop2   $s0,$t8,$s0        
  00381368: cop2   $s0,$t8,$s0        
  0038136c: cop2   $s0,$at,$t0        
  00381370: fmove  $zero,$a0,$t0      
  00381374: f10.1a $a1,$s0,$a3        
  00381378: f10.1c $zero,$s0,$a0      
  0038137c: fmove  $zero,$a0,$zero    
  00381380: sll    $zero, $zero, +0   
  00381384: f10.36 $a3,$s0,$zero      
  00381388: sll    $zero, $zero, +0   
  0038138c: f8.1b  $zero,$t0,$at      
  00381390: addiu  $t0, $a0, +16      
  00381394: f10.36 $a0,$s0,$zero      
  00381398: sll    $zero, $zero, +0   
  0038139c: f8.16  $zero,$t0,$at      
  003813a0: sll    $zero, $zero, +0   
  003813a4: f10.0  $a3,$s0,$a0        
  003813a8: lui   $v0, 0x37270000     
  003813ac: ori    $v0, $v0, -14932   
  003813b0: f10.3  $at,$s0,$zero      
  003813b4: sll    $zero, $zero, +0   
  003813b8: fmove  $zero,$a0,$v0      
  003813bc: sll    $zero, $zero, +0   
  003813c0: f10.36 $v0,$s0,$zero      
  003813c4: sll    $zero, $zero, +0   
  003813c8: f8.7   $zero,$t0,$zero    
  003813cc: f10.2  $a3,$s0,$v1        
  003813d0: f10.2  $a3,$s0,$v1        
  003813d4: f10.2  $a0,$s0,$v1        
  003813d8: swc1   $at, +0($a2)       
  003813dc: swc1   $zero, +4($a2)     
  003813e0: beq    $zero, $zero, +7248   ; br -> 0x00383034
  003813e4: sw     $t1, +0($t3)       
  003813e8: dsubu  $zero, $t1, +0     
  003813ec: swc1   $zero, +48($sp)    
  003813f0: f10.2  $a0,$s0,$v1        
  003813f4: swc1   $zero, +52($sp)    
  003813f8: addiu  $t0, $a0, +16      
  003813fc: addiu  $v0, $a0, +32      
  00381400: op36    $a0,$s0,$zero     
  00381404: op36    $t0,$s1,$zero     
  00381408: op36    $v0,$s2,$zero     
  0038140c: cop2   $s0,$ra,$s1        
  00381410: cop2   $s0,$ra,$s2        
  00381414: cop2   $s0,$t8,$s0        
  00381418: cop2   $s0,$t8,$s0        
  0038141c: cop2   $s0,$at,$t0        
  00381420: fmove  $zero,$a0,$t0      
  00381424: f10.1a $a0,$s0,$t1        
  00381428: f10.1c $zero,$s0,$a1      
  0038142c: fmove  $zero,$a0,$zero    
  00381430: sll    $zero, $zero, +0   
  00381434: f10.36 $t1,$s0,$zero      
  00381438: sll    $zero, $zero, +0   
  0038143c: f8.21  $zero,$t0,$at      
  00381440: addiu  $t0, $a0, +16      
  00381444: f10.36 $a1,$s0,$zero      
  00381448: sll    $zero, $zero, +0   
  0038144c: f8.1c  $zero,$t0,$at      
  00381450: f10.0  $t1,$s0,$a1        
  00381454: lui   $v1, 0x3f800000     
  00381458: lui   $v0, 0x37270000     
  0038145c: ori    $v0, $v0, -14932   
  00381460: fmove  $zero,$a0,$v1      
  00381464: fmove  $zero,$a0,$v0      
  00381468: sll    $zero, $zero, +0   
  0038146c: f10.3  $at,$s0,$a0        
  00381470: sll    $zero, $zero, +0   
  00381474: sll    $zero, $zero, +0   
  00381478: f10.36 $v1,$s0,$zero      
  0038147c: sll    $zero, $zero, +0   
  00381480: f8.8   $zero,$t0,$zero    
  00381484: f10.2  $t1,$s0,$a0        
  00381488: f10.2  $t1,$s0,$a0        
  0038148c: addiu  $v0, $zero, +2     
  00381490: f10.2  $a1,$s0,$a0        
  00381494: swc1   $at, +0($a2)       
  00381498: swc1   $zero, +4($a2)     
  0038149c: beq    $zero, $zero, +6992   ; br -> 0x00382ff0
  003814a0: sw     $v0, +0($t3)       
  003814a4: addiu  $v1, $zero, +2     
  003814a8: addiu  $a3, $zero, +1     
  003814ac: sw     $v1, +68($sp)      
  003814b0: sw     $a3, +64($sp)      
  003814b4: f10.2  $a1,$s0,$a0        
  003814b8: swc1   $at, +48($sp)      
  003814bc: swc1   $zero, +52($sp)    
  003814c0: addiu  $t0, $a0, +16      
  003814c4: addiu  $v0, $a0, +32      
  003814c8: op36    $t0,$s0,$zero     
  003814cc: op36    $a0,$s1,$zero     
  003814d0: op36    $v0,$s2,$zero     
  003814d4: cop2   $s0,$ra,$s1        
  003814d8: cop2   $s0,$ra,$s2        
  003814dc: cop2   $s0,$t8,$s0        
  003814e0: cop2   $s0,$t8,$s0        
  003814e4: cop2   $s0,$at,$t0        
  003814e8: fmove  $zero,$a0,$t0      
  003814ec: f10.1a $a3,$s0,$t0        
  003814f0: f10.1c $zero,$s0,$a2      
  003814f4: fmove  $zero,$a0,$zero    
  003814f8: sll    $zero, $zero, +0   
  003814fc: f10.36 $t0,$s0,$zero      
  00381500: sll    $zero, $zero, +0   
  00381504: f8.20  $zero,$t0,$at      
  00381508: sll    $zero, $zero, +0   
  0038150c: f10.36 $a2,$s0,$zero      
  00381510: sll    $zero, $zero, +0   
  00381514: f8.1c  $zero,$t0,$at      
  00381518: f10.0  $t0,$s0,$a2        
  0038151c: lui   $v1, 0x3f800000     
  00381520: lui   $v0, 0x37270000     
  00381524: ori    $v0, $v0, -14932   
  00381528: fmove  $zero,$a0,$v1      
  0038152c: fmove  $zero,$a0,$v0      
  00381530: sll    $zero, $zero, +0   
  00381534: f10.3  $at,$s0,$a1        
  00381538: sll    $zero, $zero, +0   
  0038153c: sll    $zero, $zero, +0   
  00381540: f10.36 $a0,$s0,$zero      
  00381544: sll    $zero, $zero, +0   
  00381548: f8.8   $zero,$t0,$zero    
  0038154c: f10.2  $t0,$s0,$a1        
  00381550: f10.2  $t0,$s0,$a1        
  00381554: addiu  $v0, $zero, +2     
  00381558: f10.2  $a2,$s0,$a1        
  0038155c: swc1   $at, +4($a2)       
  00381560: swc1   $zero, +0($a2)     
  00381564: beq    $zero, $zero, +6720   ; br -> 0x00382fa8
  00381568: sw     $v0, +0($t3)       
  0038156c: addiu  $v1, $zero, +2     
  00381570: sw     $zero, +64($sp)    
  00381574: addiu  $a3, $zero, +1     
  00381578: sw     $v1, +68($sp)      
  0038157c: f10.2  $a2,$s0,$a1        
  00381580: swc1   $at, +52($sp)      
  00381584: swc1   $zero, +48($sp)    
  00381588: fmove  $zero,$a0,$zero    
  0038158c: sll    $zero, $zero, +0   
  00381590: f10.36 $a0,$s0,$zero      
  00381594: sll    $zero, $zero, +0   
  00381598: f8.17  $zero,$t0,$at      
  0038159c: dsubu  $zero, $zero, +0   
  003815a0: f10.36 $v1,$s0,$zero      
  003815a4: sll    $zero, $zero, +0   
  003815a8: f8.12  $zero,$t0,$at      
  003815ac: sll    $zero, $zero, +0   
  003815b0: f10.36 $v0,$s0,$zero      
  003815b4: sll    $zero, $zero, +0   
  003815b8: f8.e   $zero,$t0,$at      
  003815bc: sll    $zero, $zero, +0   
  003815c0: f10.0  $a0,$s0,$v1        
  003815c4: lui   $v0, 0x3f800000     
  003815c8: f10.0  $v0,$s0,$zero      
  003815cc: fmove  $zero,$a0,$v0      
  003815d0: sll    $zero, $zero, +0   
  003815d4: f10.3  $zero,$s0,$at      
  003815d8: f10.2  $a0,$s0,$a1        
  003815dc: swc1   $zero, +0($a2)     
  003815e0: f10.2  $v1,$s0,$a1        
  003815e4: f10.2  $v0,$s0,$a1        
  003815e8: swc1   $at, +4($a2)       
  003815ec: beq    $zero, $zero, +6724   ; br -> 0x00383034
  003815f0: swc1   $zero, +8($a2)     
  003815f4: dsubu  $zero, $zero, +0   
  003815f8: beq    $zero, $zero, +24     ; br -> 0x00381614
  003815fc: sll    $zero, $zero, +0   
  00381600: addu   $sp, $t0, +0       
  00381604: addiu  $v0, $v0, +1       
  00381608: lwc1   $zero, +48($t1)    
  0038160c: addu   $t0, $a2, +0       
  00381610: swc1   $zero, +0($t0)     
  00381614: sll    $zero, $zero, +0   
  00381618: dadd   $v1, $v0, +0       
  0038161c: bne    $t0, $zero, -32       ; br -> 0x003c1600
  00381620: sll    $v0, $zero, +2     
  00381624: dsubu  $zero, $zero, +0   
  00381628: beq    $zero, $zero, +108    ; br -> 0x00381698
  0038162c: addiu  $t5, $sp, +768     
  00381630: addu   $sp, $a2, +0       
  00381634: lw     $t4, +68($a2)      
  00381638: lw     $t2, +64($a2)      
  0038163c: sll    $t4, $zero, +2     
  00381640: addu   $a2, $a1, +0       
  00381644: sll    $t2, $zero, +2     
  00381648: addu   $a2, $a1, +0       
  0038164c: sll    $t2, $zero, +4     
  00381650: addu   $a2, $a0, +0       
  00381654: lw     $t2, +0($t1)       
  00381658: lw     $a2, +0($t0)       
  0038165c: sw     $a2, +0($t1)       
  00381660: sw     $t2, +0($t0)       
  00381664: lw     $t2, +16($t1)      
  00381668: lw     $a2, +16($t0)      
  0038166c: sw     $a2, +16($t1)      
  00381670: sw     $t2, +16($t0)      
  00381674: lw     $a2, +0($t6)       
  00381678: sw     $a2, +0($t5)       
  0038167c: sll    $t4, $zero, +4     
  00381680: addu   $a2, $a0, +0       
  00381684: lw     $t0, +0($a2)       
  00381688: sw     $t0, +0($t6)       
  0038168c: lw     $t0, +0($t5)       
  00381690: sw     $t0, +0($a2)       
  00381694: addiu  $v0, $v0, +1       
  00381698: dadd   $a3, $v0, +0       
  0038169c: bne    $a2, $zero, -112      ; br -> 0x003c1630
  003816a0: sll    $v0, $zero, +3     
  003816a4: beq    $zero, $zero, +6540   ; br -> 0x00383034
  003816a8: sw     $v1, +0($t3)       
  003816ac: addiu  $t1, $a0, +16      
  003816b0: addiu  $t0, $a0, +32      
  003816b4: addiu  $v0, $a0, +48      
  003816b8: op36    $a0,$t7,$zero     
  003816bc: op36    $t1,$s0,$zero     
  003816c0: op36    $t0,$s1,$zero     
  003816c4: op36    $v0,$s2,$zero     
  003816c8: cop2   $t7,$ra,$s0        
  003816cc: cop2   $t7,$ra,$s1        
  003816d0: cop2   $t7,$ra,$s2        
  003816d4: cop2   $s0,$fp,$t7        
  003816d8: cop2   $s1,$fp,$t7        
  003816dc: cop2   $s2,$fp,$t7        
  003816e0: cop2   $s0,$t8,$s0        
  003816e4: cop2   $s1,$t8,$s1        
  003816e8: cop2   $s2,$t8,$s2        
  003816ec: cop2   $s0,$t8,$s0        
  003816f0: cop2   $s1,$t8,$s1        
  003816f4: cop2   $s2,$t8,$s2        
  003816f8: cop2   $s0,$at,$t0        
  003816fc: cop2   $s1,$at,$t1        
  00381700: cop2   $s2,$at,$t2        
  00381704: fmove  $zero,$a0,$t0      
  00381708: fmove  $zero,$a0,$t1      
  0038170c: fmove  $zero,$a0,$t2      
  00381710: lui   $v0, 0x37270000     
  00381714: ori    $v0, $v0, -14932   
  00381718: fmove  $zero,$a0,$v0      
  0038171c: sll    $zero, $zero, +0   
  00381720: f10.36 $s0,$s0,$at        
  00381724: sll    $zero, $zero, +0   
  00381728: f8.e   $zero,$t0,$zero    
  0038172c: sll    $zero, $zero, +0   
  00381730: f10.36 $t7,$s0,$at        
  00381734: sll    $zero, $zero, +0   
  00381738: f8.a   $zero,$t0,$zero    
  0038173c: sll    $zero, $zero, +0   
  00381740: f10.36 $t6,$s0,$at        
  00381744: sll    $zero, $zero, +0   
  00381748: f8.6   $zero,$t0,$zero    
  0038174c: sll    $zero, $zero, +0   
  00381750: lui   $v1, 0x3f800000     
  00381754: addiu  $v0, $zero, +1     
  00381758: sw     $v1, +0($a2)       
  0038175c: beq    $zero, $zero, +6356   ; br -> 0x00383034
  00381760: sw     $v0, +0($t3)       
  00381764: lwc1   $a2, +0($a0)       
  00381768: lwc1   $a3, +4($a0)       
  0038176c: lwc1   $t0, +8($a0)       
  00381770: f10.1a $a2,$s0,$a2        
  00381774: f10.1e $a3,$s0,$a3        
  00381778: f10.1c $t0,$s0,$t0        
  0038177c: f10.34 $at,$s0,$zero      
  00381780: sll    $zero, $zero, +0   
  00381784: f8.5   $zero,$t0,$zero    
  00381788: addiu  $t1, $a0, +16      
  0038178c: lui   $v0, 0x3f800000     
  00381790: addiu  $v1, $zero, +1     
  00381794: f10.6  $at,$s0,$zero      
  00381798: sw     $v0, +48($sp)      
  0038179c: addiu  $t0, $a0, +32      
  003817a0: addiu  $v0, $a0, +48      
  003817a4: op36    $t1,$t7,$zero     
  003817a8: op36    $a0,$s0,$zero     
  003817ac: op36    $t0,$s1,$zero     
  003817b0: op36    $v0,$s2,$zero     
  003817b4: cop2   $t7,$ra,$s0        
  003817b8: cop2   $t7,$ra,$s1        
  003817bc: cop2   $t7,$ra,$s2        
  003817c0: cop2   $s0,$fp,$t7        
  003817c4: cop2   $s1,$fp,$t7        
  003817c8: cop2   $s2,$fp,$t7        
  003817cc: cop2   $s0,$t8,$s0        
  003817d0: cop2   $s1,$t8,$s1        
  003817d4: cop2   $s2,$t8,$s2        
  003817d8: cop2   $s0,$t8,$s0        
  003817dc: cop2   $s1,$t8,$s1        
  003817e0: cop2   $s2,$t8,$s2        
  003817e4: cop2   $s0,$at,$t0        
  003817e8: cop2   $s1,$at,$t1        
  003817ec: cop2   $s2,$at,$t2        
  003817f0: fmove  $zero,$a0,$t0      
  003817f4: fmove  $zero,$a0,$t1      
  003817f8: fmove  $zero,$a0,$t2      
  003817fc: lui   $v0, 0x37270000     
  00381800: ori    $v0, $v0, -14932   
  00381804: fmove  $zero,$a0,$v0      
  00381808: sll    $zero, $zero, +0   
  0038180c: f10.36 $s2,$s0,$at        
  00381810: sll    $zero, $zero, +0   
  00381814: f8.f   $zero,$t0,$zero    
  00381818: addiu  $v0, $a0, +16      
  0038181c: f10.36 $t5,$s0,$at        
  00381820: sll    $zero, $zero, +0   
  00381824: f8.a   $zero,$t0,$zero    
  00381828: sll    $zero, $zero, +0   
  0038182c: f10.36 $s1,$s0,$at        
  00381830: sll    $zero, $zero, +0   
  00381834: f8.6   $zero,$t0,$zero    
  00381838: sll    $zero, $zero, +0   
  0038183c: lui   $v1, 0x3f800000     
  00381840: addiu  $v0, $zero, +1     
  00381844: sw     $v1, +0($a2)       
  00381848: beq    $zero, $zero, +5908   ; br -> 0x00382f60
  0038184c: sw     $v0, +0($t3)       
  00381850: addiu  $v0, $a0, +16      
  00381854: lwc1   $a2, +0($v0)          ; GLOBAL 0x37270000
  00381858: lwc1   $a3, +4($v0)          ; GLOBAL 0x37270004
  0038185c: lwc1   $t0, +8($v0)          ; GLOBAL 0x37270008
  00381860: f10.1a $a2,$s0,$a2        
  00381864: f10.1e $a3,$s0,$a3        
  00381868: f10.1c $t0,$s0,$t0        
  0038186c: f10.34 $at,$s0,$zero      
  00381870: sll    $zero, $zero, +0   
  00381874: f8.8   $zero,$t0,$zero    
  00381878: addiu  $t1, $a0, +32      
  0038187c: addiu  $v1, $zero, +1     
  00381880: lui   $v0, 0x3f800000     
  00381884: f10.6  $at,$s0,$zero      
  00381888: sw     $zero, +68($sp)    
  0038188c: sw     $v0, +48($sp)      
  00381890: dsubu  $zero, $v1, +0     
  00381894: sw     $v1, +64($sp)      
  00381898: addiu  $t0, $a0, +16      
  0038189c: addiu  $v0, $a0, +48      
  003818a0: op36    $t1,$t7,$zero     
  003818a4: op36    $a0,$s0,$zero     
  003818a8: op36    $t0,$s1,$zero     
  003818ac: op36    $v0,$s2,$zero     
  003818b0: cop2   $t7,$ra,$s0        
  003818b4: cop2   $t7,$ra,$s1        
  003818b8: cop2   $t7,$ra,$s2        
  003818bc: cop2   $s0,$fp,$t7        
  003818c0: cop2   $s1,$fp,$t7        
  003818c4: cop2   $s2,$fp,$t7        
  003818c8: cop2   $s0,$t8,$s0        
  003818cc: cop2   $s1,$t8,$s1        
  003818d0: cop2   $s2,$t8,$s2        
  003818d4: cop2   $s0,$t8,$s0        
  003818d8: cop2   $s1,$t8,$s1        
  003818dc: cop2   $s2,$t8,$s2        
  003818e0: cop2   $s0,$at,$t0        
  003818e4: cop2   $s1,$at,$t1        
  003818e8: cop2   $s2,$at,$t2        
  003818ec: fmove  $zero,$a0,$t0      
  003818f0: fmove  $zero,$a0,$t1      
  003818f4: fmove  $zero,$a0,$t2      
  003818f8: lui   $v0, 0x37270000     
  003818fc: ori    $v0, $v0, -14932   
  00381900: fmove  $zero,$a0,$v0      
  00381904: sll    $zero, $zero, +0   
  00381908: f10.36 $s5,$s0,$at        
  0038190c: sll    $zero, $zero, +0   
  00381910: f8.f   $zero,$t0,$zero    
  00381914: addiu  $v0, $a0, +32      
  00381918: f10.36 $s4,$s0,$at        
  0038191c: sll    $zero, $zero, +0   
  00381920: f8.a   $zero,$t0,$zero    
  00381924: sll    $zero, $zero, +0   
  00381928: f10.36 $s3,$s0,$at        
  0038192c: sll    $zero, $zero, +0   
  00381930: f8.6   $zero,$t0,$zero    
  00381934: sll    $zero, $zero, +0   
  00381938: lui   $v1, 0x3f800000     
  0038193c: addiu  $v0, $zero, +1     
  00381940: sw     $v1, +0($a2)       
  00381944: beq    $zero, $zero, +5728   ; br -> 0x00382fa8
  00381948: sw     $v0, +0($t3)       
  0038194c: addiu  $v0, $a0, +32      
  00381950: lwc1   $a2, +0($v0)          ; GLOBAL 0x37270000
  00381954: lwc1   $a3, +4($v0)          ; GLOBAL 0x37270004
  00381958: lwc1   $t0, +8($v0)          ; GLOBAL 0x37270008
  0038195c: f10.1a $a2,$s0,$a2        
  00381960: f10.1e $a3,$s0,$a3        
  00381964: f10.1c $t0,$s0,$t0        
  00381968: f10.34 $at,$s0,$zero      
  0038196c: sll    $zero, $zero, +0   
  00381970: f8.9   $zero,$t0,$zero    
  00381974: addiu  $t4, $a0, +48      
  00381978: lui   $v0, 0x3f800000     
  0038197c: addiu  $v1, $zero, +1     
  00381980: sw     $v0, +48($sp)      
  00381984: f10.6  $at,$s0,$zero      
  00381988: addiu  $v0, $zero, +2     
  0038198c: sw     $zero, +68($sp)    
  00381990: sw     $v0, +64($sp)      
  00381994: dsubu  $zero, $v1, +0     
  00381998: addiu  $t0, $a0, +16      
  0038199c: addiu  $v0, $a0, +32      
  003819a0: op36    $t4,$t7,$zero     
  003819a4: op36    $a0,$s0,$zero     
  003819a8: op36    $t0,$s1,$zero     
  003819ac: op36    $v0,$s2,$zero     
  003819b0: cop2   $t7,$ra,$s0        
  003819b4: cop2   $t7,$ra,$s1        
  003819b8: cop2   $t7,$ra,$s2        
  003819bc: cop2   $s0,$fp,$t7        
  003819c0: cop2   $s1,$fp,$t7        
  003819c4: cop2   $s2,$fp,$t7        
  003819c8: cop2   $s0,$t8,$s0        
  003819cc: cop2   $s1,$t8,$s1        
  003819d0: cop2   $s2,$t8,$s2        
  003819d4: cop2   $s0,$t8,$s0        
  003819d8: cop2   $s1,$t8,$s1        
  003819dc: cop2   $s2,$t8,$s2        
  003819e0: cop2   $s0,$at,$t0        
  003819e4: cop2   $s1,$at,$t1        
  003819e8: cop2   $s2,$at,$t2        
  003819ec: fmove  $zero,$a0,$t0      
  003819f0: fmove  $zero,$a0,$t1      
  003819f4: fmove  $zero,$a0,$t2      
  003819f8: lui   $v0, 0x37270000     
  003819fc: ori    $v0, $v0, -14932   
  00381a00: fmove  $zero,$a0,$v0      
  00381a04: sll    $zero, $zero, +0   
  00381a08: f10.36 $t2,$s0,$at        
  00381a0c: sll    $zero, $zero, +0   
  00381a10: f8.1d  $zero,$t0,$zero    
  00381a14: addiu  $v0, $a0, +48      
  00381a18: f10.36 $s7,$s0,$at        
  00381a1c: sll    $zero, $zero, +0   
  00381a20: f8.18  $zero,$t0,$zero    
  00381a24: sll    $zero, $zero, +0   
  00381a28: f10.36 $s6,$s0,$at        
  00381a2c: sll    $zero, $zero, +0   
  00381a30: f8.14  $zero,$t0,$zero    
  00381a34: lui   $v0, 0x3f800000     
  00381a38: addiu  $a3, $sp, +784     
  00381a3c: sw     $v0, +0($a2)       
  00381a40: lw     $v1, +0($a1)       
  00381a44: lw     $v0, +12($a1)      
  00381a48: sw     $v0, +0($a1)       
  00381a4c: sw     $v1, +12($a1)      
  00381a50: lw     $v1, +16($a1)      
  00381a54: lw     $v0, +28($a1)      
  00381a58: sw     $v0, +16($a1)      
  00381a5c: sw     $v1, +28($a1)      
  00381a60: lw     $v0, +0($a0)       
  00381a64: sw     $v0, +0($a3)       
  00381a68: lw     $v0, +0($t4)       
  00381a6c: sw     $v0, +0($a0)       
  00381a70: lw     $v0, +0($a3)       
  00381a74: sw     $v0, +0($t4)       
  00381a78: addiu  $v0, $zero, +1     
  00381a7c: beq    $zero, $zero, +5556   ; br -> 0x00383034
  00381a80: sw     $v0, +0($t3)       
  00381a84: addiu  $v0, $a0, +48      
  00381a88: lwc1   $a2, +0($v0)          ; GLOBAL 0x3f800000
  00381a8c: lwc1   $a3, +4($v0)          ; GLOBAL 0x3f800004
  00381a90: lwc1   $t0, +8($v0)          ; GLOBAL 0x3f800008
  00381a94: f10.1a $a2,$s0,$a2        
  00381a98: f10.1e $a3,$s0,$a3        
  00381a9c: f10.1c $t0,$s0,$t0        
  00381aa0: f10.34 $at,$s0,$zero      
  00381aa4: sll    $zero, $zero, +0   
  00381aa8: f8.9   $zero,$t0,$zero    
  00381aac: addiu  $t1, $a0, +32      
  00381ab0: lui   $v0, 0x3f800000     
  00381ab4: addiu  $v1, $zero, +1     
  00381ab8: sw     $v0, +48($sp)      
  00381abc: f10.6  $at,$s0,$zero      
  00381ac0: addiu  $v0, $zero, +3     
  00381ac4: sw     $zero, +68($sp)    
  00381ac8: sw     $v0, +64($sp)      
  00381acc: dsubu  $zero, $v1, +0     
  00381ad0: addiu  $t0, $a0, +48      
  00381ad4: addiu  $v0, $a0, +16      
  00381ad8: op36    $a0,$t7,$zero     
  00381adc: op36    $t1,$s0,$zero     
  00381ae0: op36    $t0,$s1,$zero     
  00381ae4: op36    $v0,$s2,$zero     
  00381ae8: cop2   $t7,$ra,$s0        
  00381aec: cop2   $t7,$ra,$s1        
  00381af0: cop2   $s0,$fp,$s2        
  00381af4: cop2   $s1,$fp,$s2        
  00381af8: cop2   $s0,$t8,$s0        
  00381afc: cop2   $s1,$t8,$s1        
  00381b00: cop2   $s0,$t8,$s0        
  00381b04: cop2   $s1,$t8,$s1        
  00381b08: cop2   $s0,$at,$t0        
  00381b0c: cop2   $s1,$at,$t1        
  00381b10: fmove  $zero,$a0,$t0      
  00381b14: fmove  $zero,$a0,$t1      
  00381b18: fmove  $zero,$a0,$zero    
  00381b1c: f10.1a $t7,$s0,$s2        
  00381b20: f10.1c $t9,$s0,$s0        
  00381b24: f10.1a $t6,$s0,$s2        
  00381b28: f10.36 $s2,$s0,$v1        
  00381b2c: sll    $zero, $zero, +0   
  00381b30: f8.8   $zero,$t0,$at      
  00381b34: f10.1c $t8,$s0,$s0        
  00381b38: f10.36 $s0,$s0,$v1        
  00381b3c: sll    $zero, $zero, +0   
  00381b40: f8.5   $zero,$t0,$at      
  00381b44: addiu  $t1, $a0, +16      
  00381b48: f10.0  $s2,$s0,$s0        
  00381b4c: lui   $t0, 0x3f800000     
  00381b50: lui   $v0, 0x37270000     
  00381b54: ori    $v0, $v0, -14932   
  00381b58: fmove  $zero,$a0,$t0      
  00381b5c: fmove  $zero,$a0,$v0      
  00381b60: f10.3  $a0,$s0,$a1        
  00381b64: sll    $zero, $zero, +0   
  00381b68: sll    $zero, $zero, +0   
  00381b6c: f10.36 $at,$s0,$v1        
  00381b70: sll    $zero, $zero, +0   
  00381b74: f8.c   $zero,$t0,$zero    
  00381b78: sll    $zero, $zero, +0   
  00381b7c: f10.36 $v0,$s0,$v1        
  00381b80: sll    $zero, $zero, +0   
  00381b84: f8.8   $zero,$t0,$zero    
  00381b88: sll    $zero, $zero, +0   
  00381b8c: f10.2  $s2,$s0,$a0        
  00381b90: addiu  $v0, $zero, +2     
  00381b94: f10.2  $s0,$s0,$a0        
  00381b98: swc1   $at, +0($a2)       
  00381b9c: swc1   $zero, +4($a2)     
  00381ba0: beq    $zero, $zero, +5264   ; br -> 0x00383034
  00381ba4: sw     $v0, +0($t3)       
  00381ba8: f10.2  $s2,$s0,$a0        
  00381bac: addiu  $v0, $sp, +800     
  00381bb0: f10.2  $s0,$s0,$a0        
  00381bb4: fmove  $zero,$zero,$t0    
  00381bb8: op36    $a0,$at,$zero     
  00381bbc: cop2   $v0,$a1,$t0        
  00381bc0: cop2   $at,$fp,$v0        
  00381bc4: op3e    $v0,$at,$zero     
  00381bc8: addiu  $t2, $sp, +176     
  00381bcc: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00381bd0: sw     $v0, +0($t2)       
  00381bd4: addiu  $t0, $a0, +16      
  00381bd8: addiu  $v0, $sp, +816     
  00381bdc: fmove  $zero,$zero,$t1    
  00381be0: op36    $t0,$at,$zero     
  00381be4: cop2   $v0,$a1,$t1        
  00381be8: cop2   $at,$fp,$v0        
  00381bec: op3e    $v0,$at,$zero     
  00381bf0: addiu  $t0, $sp, +192     
  00381bf4: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00381bf8: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00381bfc: addiu  $v0, $sp, +832     
  00381c00: op36    $t2,$at,$zero     
  00381c04: op36    $t0,$v0,$zero     
  00381c08: cop2   $at,$fp,$v0        
  00381c0c: op3e    $v0,$at,$zero     
  00381c10: addiu  $t0, $sp, +160     
  00381c14: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00381c18: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00381c1c: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  00381c20: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  00381c24: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  00381c28: f10.1a $a2,$s0,$a2        
  00381c2c: f10.1e $a3,$s0,$a3        
  00381c30: f10.1c $t0,$s0,$t0        
  00381c34: f10.34 $a1,$s0,$zero      
  00381c38: sll    $zero, $zero, +0   
  00381c3c: f8.5   $zero,$t0,$zero    
  00381c40: sll    $zero, $zero, +0   
  00381c44: swc1   $v1, +48($sp)      
  00381c48: addiu  $v1, $zero, +2     
  00381c4c: f10.6  $a1,$s0,$zero      
  00381c50: swc1   $a0, +52($sp)      
  00381c54: addiu  $t1, $a0, +16      
  00381c58: addiu  $t0, $a0, +48      
  00381c5c: addiu  $v0, $a0, +32      
  00381c60: op36    $a0,$t7,$zero     
  00381c64: op36    $t1,$s0,$zero     
  00381c68: op36    $t0,$s1,$zero     
  00381c6c: op36    $v0,$s2,$zero     
  00381c70: cop2   $t7,$ra,$s0        
  00381c74: cop2   $t7,$ra,$s1        
  00381c78: cop2   $s0,$fp,$s2        
  00381c7c: cop2   $s1,$fp,$s2        
  00381c80: cop2   $s0,$t8,$s0        
  00381c84: cop2   $s1,$t8,$s1        
  00381c88: cop2   $s0,$t8,$s0        
  00381c8c: cop2   $s1,$t8,$s1        
  00381c90: cop2   $s0,$at,$t0        
  00381c94: cop2   $s1,$at,$t1        
  00381c98: fmove  $zero,$a0,$t0      
  00381c9c: fmove  $zero,$a0,$t1      
  00381ca0: fmove  $zero,$a0,$zero    
  00381ca4: f10.1a $s0,$s0,$s5        
  00381ca8: f10.1c $k1,$s0,$t7        
  00381cac: f10.1a $t6,$s0,$s5        
  00381cb0: f10.36 $s5,$s0,$a1        
  00381cb4: sll    $zero, $zero, +0   
  00381cb8: f8.b   $zero,$t0,$at      
  00381cbc: f10.1c $k0,$s0,$t7        
  00381cc0: f10.36 $t7,$s0,$a1        
  00381cc4: sll    $zero, $zero, +0   
  00381cc8: f8.8   $zero,$t0,$at      
  00381ccc: addiu  $t4, $a0, +16      
  00381cd0: f10.0  $s5,$s0,$t7        
  00381cd4: lui   $t0, 0x3f800000     
  00381cd8: lui   $v0, 0x37270000     
  00381cdc: ori    $v0, $v0, -14932   
  00381ce0: fmove  $zero,$a0,$t0      
  00381ce4: fmove  $zero,$a0,$v0      
  00381ce8: f10.3  $a2,$s0,$a3        
  00381cec: sll    $zero, $zero, +0   
  00381cf0: sll    $zero, $zero, +0   
  00381cf4: f10.36 $v1,$s0,$a1        
  00381cf8: sll    $zero, $zero, +0   
  00381cfc: f8.c   $zero,$t0,$zero    
  00381d00: sll    $zero, $zero, +0   
  00381d04: f10.36 $a0,$s0,$a1        
  00381d08: sll    $zero, $zero, +0   
  00381d0c: f8.8   $zero,$t0,$zero    
  00381d10: sll    $zero, $zero, +0   
  00381d14: f10.2  $s5,$s0,$a2        
  00381d18: addiu  $v0, $zero, +2     
  00381d1c: f10.2  $t7,$s0,$a2        
  00381d20: swc1   $at, +0($a2)       
  00381d24: swc1   $zero, +4($a2)     
  00381d28: beq    $zero, $zero, +4804   ; br -> 0x00382ff0
  00381d2c: sw     $v0, +0($t3)       
  00381d30: f10.2  $s5,$s0,$a2        
  00381d34: addiu  $v0, $sp, +848     
  00381d38: f10.2  $t7,$s0,$a2        
  00381d3c: fmove  $zero,$zero,$t0    
  00381d40: op36    $a0,$at,$zero     
  00381d44: cop2   $v0,$a1,$t0        
  00381d48: cop2   $at,$fp,$v0        
  00381d4c: op3e    $v0,$at,$zero     
  00381d50: addiu  $t2, $sp, +224     
  00381d54: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00381d58: sw     $v0, +0($t2)       
  00381d5c: addiu  $t0, $a0, +32      
  00381d60: addiu  $v0, $sp, +864     
  00381d64: fmove  $zero,$zero,$t1    
  00381d68: op36    $t0,$at,$zero     
  00381d6c: cop2   $v0,$a1,$t1        
  00381d70: cop2   $at,$fp,$v0        
  00381d74: op3e    $v0,$at,$zero     
  00381d78: addiu  $t0, $sp, +240     
  00381d7c: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00381d80: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00381d84: addiu  $v0, $sp, +880     
  00381d88: op36    $t2,$at,$zero     
  00381d8c: op36    $t0,$v0,$zero     
  00381d90: cop2   $at,$fp,$v0        
  00381d94: op3e    $v0,$at,$zero     
  00381d98: addiu  $t0, $sp, +208     
  00381d9c: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00381da0: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00381da4: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  00381da8: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  00381dac: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  00381db0: f10.1a $a2,$s0,$a2        
  00381db4: f10.1e $a3,$s0,$a3        
  00381db8: f10.1c $t0,$s0,$t0        
  00381dbc: f10.34 $a2,$s0,$zero      
  00381dc0: sll    $zero, $zero, +0   
  00381dc4: f8.8   $zero,$t0,$zero    
  00381dc8: sll    $zero, $zero, +0   
  00381dcc: addiu  $v1, $zero, +2     
  00381dd0: addiu  $a3, $zero, +1     
  00381dd4: swc1   $a1, +48($sp)      
  00381dd8: sw     $v1, +68($sp)      
  00381ddc: f10.6  $a2,$s0,$zero      
  00381de0: sw     $a3, +64($sp)      
  00381de4: swc1   $t1, +52($sp)      
  00381de8: addiu  $t4, $a0, +16      
  00381dec: addiu  $v0, $a0, +32      
  00381df0: addiu  $t2, $a0, +48      
  00381df4: op36    $a0,$t7,$zero     
  00381df8: op36    $t4,$s0,$zero     
  00381dfc: op36    $v0,$s1,$zero     
  00381e00: op36    $t2,$s2,$zero     
  00381e04: cop2   $t7,$ra,$s0        
  00381e08: cop2   $t7,$ra,$s1        
  00381e0c: cop2   $s0,$fp,$s2        
  00381e10: cop2   $s1,$fp,$s2        
  00381e14: cop2   $s0,$t8,$s0        
  00381e18: cop2   $s1,$t8,$s1        
  00381e1c: cop2   $s0,$t8,$s0        
  00381e20: cop2   $s1,$t8,$s1        
  00381e24: cop2   $s0,$at,$t0        
  00381e28: cop2   $s1,$at,$t1        
  00381e2c: fmove  $zero,$a0,$t0      
  00381e30: fmove  $zero,$a0,$t1      
  00381e34: fmove  $zero,$a0,$zero    
  00381e38: f10.1a $s0,$s0,$t2        
  00381e3c: f10.1c $sp,$s0,$t6        
  00381e40: f10.1a $t7,$s0,$t2        
  00381e44: f10.36 $t2,$s0,$a2        
  00381e48: sll    $zero, $zero, +0   
  00381e4c: f8.1c  $zero,$t0,$at      
  00381e50: f10.1c $gp,$s0,$t6        
  00381e54: f10.36 $t6,$s0,$a2        
  00381e58: sll    $zero, $zero, +0   
  00381e5c: f8.19  $zero,$t0,$at      
  00381e60: addiu  $t1, $a0, +16      
  00381e64: f10.0  $t2,$s0,$t6        
  00381e68: lui   $t0, 0x3f800000     
  00381e6c: lui   $v0, 0x37270000     
  00381e70: ori    $v0, $v0, -14932   
  00381e74: fmove  $zero,$a0,$t0      
  00381e78: fmove  $zero,$a0,$v0      
  00381e7c: sll    $zero, $zero, +0   
  00381e80: f10.3  $a3,$s0,$t0        
  00381e84: sll    $zero, $zero, +0   
  00381e88: sll    $zero, $zero, +0   
  00381e8c: f10.36 $a1,$s0,$a2        
  00381e90: sll    $zero, $zero, +0   
  00381e94: f8.1b  $zero,$t0,$zero    
  00381e98: sll    $zero, $zero, +0   
  00381e9c: f10.36 $t1,$s0,$a2        
  00381ea0: sll    $zero, $zero, +0   
  00381ea4: f8.17  $zero,$t0,$zero    
  00381ea8: sll    $zero, $zero, +0   
  00381eac: f10.2  $t2,$s0,$a3        
  00381eb0: addiu  $a0, $sp, +896     
  00381eb4: f10.2  $t6,$s0,$a3        
  00381eb8: swc1   $at, +0($a2)       
  00381ebc: swc1   $zero, +4($a2)     
  00381ec0: lw     $v1, +4($a1)       
  00381ec4: lw     $v0, +12($a1)      
  00381ec8: sw     $v0, +4($a1)       
  00381ecc: sw     $v1, +12($a1)      
  00381ed0: lw     $v1, +20($a1)      
  00381ed4: lw     $v0, +28($a1)      
  00381ed8: sw     $v0, +20($a1)      
  00381edc: sw     $v1, +28($a1)      
  00381ee0: lw     $v0, +0($t4)       
  00381ee4: sw     $v0, +0($a0)       
  00381ee8: lw     $v0, +0($t2)       
  00381eec: sw     $v0, +0($t4)       
  00381ef0: lw     $v0, +0($a0)       
  00381ef4: sw     $v0, +0($t2)       
  00381ef8: addiu  $v0, $zero, +2     
  00381efc: beq    $zero, $zero, +4404   ; br -> 0x00383034
  00381f00: sw     $v0, +0($t3)       
  00381f04: f10.2  $t2,$s0,$a3        
  00381f08: addiu  $v0, $sp, +912     
  00381f0c: f10.2  $t6,$s0,$a3        
  00381f10: fmove  $zero,$zero,$t0    
  00381f14: op36    $a0,$at,$zero     
  00381f18: cop2   $v0,$a1,$t0        
  00381f1c: cop2   $at,$fp,$v0        
  00381f20: op3e    $v0,$at,$zero     
  00381f24: addiu  $t2, $sp, +272     
  00381f28: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00381f2c: sw     $v0, +0($t2)       
  00381f30: addiu  $t0, $a0, +48      
  00381f34: addiu  $v0, $sp, +928     
  00381f38: fmove  $zero,$zero,$t1    
  00381f3c: op36    $t0,$at,$zero     
  00381f40: cop2   $v0,$a1,$t1        
  00381f44: cop2   $at,$fp,$v0        
  00381f48: op3e    $v0,$at,$zero     
  00381f4c: addiu  $t0, $sp, +288     
  00381f50: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00381f54: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00381f58: addiu  $v0, $sp, +944     
  00381f5c: op36    $t2,$at,$zero     
  00381f60: op36    $t0,$v0,$zero     
  00381f64: cop2   $at,$fp,$v0        
  00381f68: op3e    $v0,$at,$zero     
  00381f6c: addiu  $t0, $sp, +256     
  00381f70: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00381f74: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00381f78: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  00381f7c: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  00381f80: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  00381f84: f10.1a $a2,$s0,$a2        
  00381f88: f10.1e $a3,$s0,$a3        
  00381f8c: f10.1c $t0,$s0,$t0        
  00381f90: f10.34 $a2,$s0,$zero      
  00381f94: sll    $zero, $zero, +0   
  00381f98: f8.9   $zero,$t0,$zero    
  00381f9c: sll    $zero, $zero, +0   
  00381fa0: addiu  $a3, $zero, +1     
  00381fa4: addiu  $v0, $zero, +3     
  00381fa8: swc1   $t2, +48($sp)      
  00381fac: addiu  $v1, $zero, +2     
  00381fb0: f10.6  $a2,$s0,$zero      
  00381fb4: sw     $v0, +68($sp)      
  00381fb8: swc1   $t3, +52($sp)      
  00381fbc: sw     $a3, +64($sp)      
  00381fc0: addiu  $t1, $a0, +16      
  00381fc4: addiu  $t0, $a0, +48      
  00381fc8: addiu  $v0, $a0, +32      
  00381fcc: op36    $t1,$t7,$zero     
  00381fd0: op36    $a0,$s0,$zero     
  00381fd4: op36    $t0,$s1,$zero     
  00381fd8: op36    $v0,$s2,$zero     
  00381fdc: cop2   $t7,$ra,$s0        
  00381fe0: cop2   $t7,$ra,$s1        
  00381fe4: cop2   $s0,$fp,$s2        
  00381fe8: cop2   $s1,$fp,$s2        
  00381fec: cop2   $s0,$t8,$s0        
  00381ff0: cop2   $s1,$t8,$s1        
  00381ff4: cop2   $s0,$t8,$s0        
  00381ff8: cop2   $s1,$t8,$s1        
  00381ffc: cop2   $s0,$at,$t0        
  00382000: cop2   $s1,$at,$t1        
  00382004: fmove  $zero,$a0,$t0      
  00382008: fmove  $zero,$a0,$t1      
  0038200c: f10.1a $s2,$s0,$s4        
  00382010: f10.1c $fp,$s0,$t5        
  00382014: f10.1a $s1,$s0,$s4        
  00382018: f10.1c $a2,$s0,$t5        
  0038201c: fmove  $zero,$a0,$zero    
  00382020: sll    $zero, $zero, +0   
  00382024: f10.36 $s4,$s0,$a2        
  00382028: sll    $zero, $zero, +0   
  0038202c: f8.c   $zero,$t0,$at      
  00382030: addiu  $t0, $a0, +16      
  00382034: f10.36 $t5,$s0,$a2        
  00382038: sll    $zero, $zero, +0   
  0038203c: f8.7   $zero,$t0,$at      
  00382040: f10.0  $s4,$s0,$t5        
  00382044: lui   $t0, 0x3f800000     
  00382048: lui   $v0, 0x37270000     
  0038204c: ori    $v0, $v0, -14932   
  00382050: fmove  $zero,$a0,$t0      
  00382054: fmove  $zero,$a0,$v0      
  00382058: sll    $zero, $zero, +0   
  0038205c: f10.3  $a3,$s0,$t0        
  00382060: sll    $zero, $zero, +0   
  00382064: sll    $zero, $zero, +0   
  00382068: f10.36 $t2,$s0,$a2        
  0038206c: sll    $zero, $zero, +0   
  00382070: f8.c   $zero,$t0,$zero    
  00382074: f10.2  $s4,$s0,$a3        
  00382078: f10.36 $t3,$s0,$a2        
  0038207c: sll    $zero, $zero, +0   
  00382080: f8.9   $zero,$t0,$zero    
  00382084: addiu  $t0, $a0, +16      
  00382088: f10.2  $s4,$s0,$a3        
  0038208c: addiu  $v0, $zero, +2     
  00382090: f10.2  $t5,$s0,$a3        
  00382094: swc1   $at, +4($a2)       
  00382098: swc1   $zero, +0($a2)     
  0038209c: beq    $zero, $zero, +3848   ; br -> 0x00382fa8
  003820a0: sw     $v0, +0($t3)       
  003820a4: addiu  $t0, $a0, +16      
  003820a8: addiu  $v0, $sp, +960     
  003820ac: f10.2  $t5,$s0,$a3        
  003820b0: fmove  $zero,$zero,$t1    
  003820b4: op36    $t0,$at,$zero     
  003820b8: cop2   $v0,$a1,$t1        
  003820bc: cop2   $at,$fp,$v0        
  003820c0: op3e    $v0,$at,$zero     
  003820c4: addiu  $t2, $sp, +320     
  003820c8: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003820cc: sw     $v0, +0($t2)       
  003820d0: addiu  $t0, $a0, +32      
  003820d4: addiu  $v0, $sp, +976     
  003820d8: fmove  $zero,$zero,$t1    
  003820dc: op36    $t0,$at,$zero     
  003820e0: cop2   $v0,$a1,$t1        
  003820e4: cop2   $at,$fp,$v0        
  003820e8: op3e    $v0,$at,$zero     
  003820ec: addiu  $t0, $sp, +336     
  003820f0: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003820f4: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  003820f8: addiu  $v0, $sp, +992     
  003820fc: op36    $t2,$at,$zero     
  00382100: op36    $t0,$v0,$zero     
  00382104: cop2   $at,$fp,$v0        
  00382108: op3e    $v0,$at,$zero     
  0038210c: addiu  $t0, $sp, +304     
  00382110: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382114: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382118: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  0038211c: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  00382120: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  00382124: f10.1a $a2,$s0,$a2        
  00382128: f10.1e $a3,$s0,$a3        
  0038212c: f10.1c $t0,$s0,$t0        
  00382130: f10.34 $a2,$s0,$zero      
  00382134: sll    $zero, $zero, +0   
  00382138: f8.8   $zero,$t0,$zero    
  0038213c: sll    $zero, $zero, +0   
  00382140: addiu  $v1, $zero, +2     
  00382144: addiu  $a3, $zero, +1     
  00382148: swc1   $ra, +48($sp)      
  0038214c: sw     $v1, +64($sp)      
  00382150: f10.6  $a2,$s0,$zero      
  00382154: sw     $zero, +68($sp)    
  00382158: swc1   $t4, +52($sp)      
  0038215c: addiu  $t0, $a0, +16      
  00382160: addiu  $v0, $a0, +32      
  00382164: addiu  $t2, $a0, +48      
  00382168: op36    $t0,$t7,$zero     
  0038216c: op36    $a0,$s0,$zero     
  00382170: op36    $v0,$s1,$zero     
  00382174: op36    $t2,$s2,$zero     
  00382178: cop2   $t7,$ra,$s0        
  0038217c: cop2   $t7,$ra,$s1        
  00382180: cop2   $s0,$fp,$s2        
  00382184: cop2   $s1,$fp,$s2        
  00382188: cop2   $s0,$t8,$s0        
  0038218c: cop2   $s1,$t8,$s1        
  00382190: cop2   $s0,$t8,$s0        
  00382194: cop2   $s1,$t8,$s1        
  00382198: cop2   $s0,$at,$t0        
  0038219c: cop2   $s1,$at,$t1        
  003821a0: fmove  $zero,$a0,$t0      
  003821a4: fmove  $zero,$a0,$t1      
  003821a8: f10.1a $s2,$s0,$s7        
  003821ac: f10.1c $ra,$s0,$s1        
  003821b0: f10.1a $t5,$s0,$s7        
  003821b4: f10.1c $a2,$s0,$s1        
  003821b8: fmove  $zero,$a0,$zero    
  003821bc: sll    $zero, $zero, +0   
  003821c0: f10.36 $s7,$s0,$a2        
  003821c4: sll    $zero, $zero, +0   
  003821c8: f8.1c  $zero,$t0,$at      
  003821cc: addiu  $v0, $a0, +32      
  003821d0: f10.36 $s1,$s0,$a2        
  003821d4: sll    $zero, $zero, +0   
  003821d8: f8.17  $zero,$t0,$at      
  003821dc: f10.0  $s7,$s0,$s1        
  003821e0: lui   $t0, 0x3f800000     
  003821e4: lui   $v0, 0x37270000     
  003821e8: ori    $v0, $v0, -14932   
  003821ec: fmove  $zero,$a0,$t0      
  003821f0: fmove  $zero,$a0,$v0      
  003821f4: sll    $zero, $zero, +0   
  003821f8: f10.3  $a2,$s0,$t0        
  003821fc: sll    $zero, $zero, +0   
  00382200: sll    $zero, $zero, +0   
  00382204: f10.36 $t4,$s0,$a3        
  00382208: sll    $zero, $zero, +0   
  0038220c: f8.1b  $zero,$t0,$zero    
  00382210: sll    $zero, $zero, +0   
  00382214: f10.36 $t5,$s0,$a3        
  00382218: sll    $zero, $zero, +0   
  0038221c: f8.17  $zero,$t0,$zero    
  00382220: sll    $zero, $zero, +0   
  00382224: f10.2  $s7,$s0,$a2        
  00382228: addiu  $a3, $sp, +1008    
  0038222c: f10.2  $s1,$s0,$a2        
  00382230: swc1   $at, +4($a2)       
  00382234: swc1   $zero, +0($a2)     
  00382238: lw     $v1, +0($a1)       
  0038223c: lw     $v0, +12($a1)      
  00382240: sw     $v0, +0($a1)       
  00382244: sw     $v1, +12($a1)      
  00382248: lw     $v1, +16($a1)      
  0038224c: lw     $v0, +28($a1)      
  00382250: sw     $v0, +16($a1)      
  00382254: sw     $v1, +28($a1)      
  00382258: lw     $v0, +0($a0)       
  0038225c: sw     $v0, +0($a3)       
  00382260: lw     $v0, +0($t2)       
  00382264: sw     $v0, +0($a0)       
  00382268: lw     $v0, +0($a3)       
  0038226c: sw     $v0, +0($t2)       
  00382270: addiu  $v0, $zero, +2     
  00382274: beq    $zero, $zero, +3516   ; br -> 0x00383034
  00382278: sw     $v0, +0($t3)       
  0038227c: f10.2  $s7,$s0,$a2        
  00382280: addiu  $t0, $a0, +16      
  00382284: addiu  $v0, $sp, +1024    
  00382288: f10.2  $s1,$s0,$a2        
  0038228c: fmove  $zero,$zero,$t1    
  00382290: op36    $t0,$at,$zero     
  00382294: cop2   $v0,$a1,$t1        
  00382298: cop2   $at,$fp,$v0        
  0038229c: op3e    $v0,$at,$zero     
  003822a0: addiu  $t2, $sp, +368     
  003822a4: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003822a8: sw     $v0, +0($t2)       
  003822ac: addiu  $t0, $a0, +48      
  003822b0: addiu  $v0, $sp, +1040    
  003822b4: fmove  $zero,$zero,$t1    
  003822b8: op36    $t0,$at,$zero     
  003822bc: cop2   $v0,$a1,$t1        
  003822c0: cop2   $at,$fp,$v0        
  003822c4: op3e    $v0,$at,$zero     
  003822c8: addiu  $t0, $sp, +384     
  003822cc: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003822d0: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  003822d4: addiu  $v0, $sp, +1056    
  003822d8: op36    $t2,$at,$zero     
  003822dc: op36    $t0,$v0,$zero     
  003822e0: cop2   $at,$fp,$v0        
  003822e4: op3e    $v0,$at,$zero     
  003822e8: addiu  $t0, $sp, +352     
  003822ec: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003822f0: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  003822f4: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  003822f8: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  003822fc: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  00382300: f10.1a $a2,$s0,$a2        
  00382304: f10.1e $a3,$s0,$a3        
  00382308: f10.1c $t0,$s0,$t0        
  0038230c: f10.34 $a2,$s0,$zero      
  00382310: sll    $zero, $zero, +0   
  00382314: f8.8   $zero,$t0,$zero    
  00382318: addiu  $v0, $zero, +3     
  0038231c: addiu  $v1, $zero, +2     
  00382320: swc1   $s1, +48($sp)      
  00382324: sw     $zero, +68($sp)    
  00382328: f10.6  $a2,$s0,$zero      
  0038232c: sw     $v0, +64($sp)      
  00382330: swc1   $s7, +52($sp)      
  00382334: addiu  $a3, $zero, +1     
  00382338: addiu  $v0, $a0, +32      
  0038233c: addiu  $t4, $a0, +16      
  00382340: addiu  $t2, $a0, +48      
  00382344: op36    $v0,$t7,$zero     
  00382348: op36    $a0,$s0,$zero     
  0038234c: op36    $t4,$s1,$zero     
  00382350: op36    $t2,$s2,$zero     
  00382354: cop2   $t7,$ra,$s0        
  00382358: cop2   $t7,$ra,$s1        
  0038235c: cop2   $s0,$fp,$s2        
  00382360: cop2   $s1,$fp,$s2        
  00382364: cop2   $s0,$t8,$s0        
  00382368: cop2   $s1,$t8,$s1        
  0038236c: cop2   $s0,$t8,$s0        
  00382370: cop2   $s1,$t8,$s1        
  00382374: cop2   $s0,$at,$t0        
  00382378: cop2   $s1,$at,$t1        
  0038237c: fmove  $zero,$a0,$t0      
  00382380: fmove  $zero,$a0,$t1      
  00382384: f10.1a $s5,$s0,$s6        
  00382388: f10.1c $a3,$s0,$s3        
  0038238c: f10.1a $s4,$s0,$s6        
  00382390: f10.1c $a2,$s0,$s3        
  00382394: fmove  $zero,$a0,$zero    
  00382398: sll    $zero, $zero, +0   
  0038239c: f10.36 $s6,$s0,$a2        
  003823a0: sll    $zero, $zero, +0   
  003823a4: f8.1e  $zero,$t0,$at      
  003823a8: sll    $zero, $zero, +0   
  003823ac: f10.36 $s3,$s0,$a2        
  003823b0: sll    $zero, $zero, +0   
  003823b4: f8.1b  $zero,$t0,$at      
  003823b8: f10.2  $t6,$s0,$t2        
  003823bc: f10.0  $s6,$s0,$s3        
  003823c0: lui   $t0, 0x3f800000     
  003823c4: lui   $v0, 0x37270000     
  003823c8: ori    $v0, $v0, -14932   
  003823cc: fmove  $zero,$a0,$t0      
  003823d0: fmove  $zero,$a0,$v0      
  003823d4: sll    $zero, $zero, +0   
  003823d8: f10.3  $a3,$s0,$t0        
  003823dc: sll    $zero, $zero, +0   
  003823e0: sll    $zero, $zero, +0   
  003823e4: f10.36 $s1,$s0,$a2        
  003823e8: sll    $zero, $zero, +0   
  003823ec: f8.1b  $zero,$t0,$zero    
  003823f0: f10.2  $s6,$s0,$a3        
  003823f4: f10.36 $s4,$s0,$a2        
  003823f8: sll    $zero, $zero, +0   
  003823fc: f8.18  $zero,$t0,$zero    
  00382400: addiu  $t0, $a0, +32      
  00382404: f10.2  $s6,$s0,$a3        
  00382408: addiu  $a3, $sp, +1072    
  0038240c: f10.2  $s3,$s0,$a3        
  00382410: swc1   $at, +0($a2)       
  00382414: swc1   $zero, +4($a2)     
  00382418: lw     $v1, +4($a1)       
  0038241c: lw     $v0, +12($a1)      
  00382420: sw     $v0, +4($a1)       
  00382424: sw     $v1, +12($a1)      
  00382428: lw     $v1, +20($a1)      
  0038242c: lw     $v0, +28($a1)      
  00382430: sw     $v0, +20($a1)      
  00382434: sw     $v1, +28($a1)      
  00382438: lw     $v0, +0($t4)       
  0038243c: sw     $v0, +0($a3)       
  00382440: lw     $v0, +0($t2)       
  00382444: sw     $v0, +0($t4)       
  00382448: lw     $v0, +0($a3)       
  0038244c: sw     $v0, +0($t2)       
  00382450: addiu  $v0, $zero, +2     
  00382454: beq    $zero, $zero, +2896   ; br -> 0x00382fa8
  00382458: sw     $v0, +0($t3)       
  0038245c: addiu  $t0, $a0, +32      
  00382460: addiu  $v0, $sp, +1088    
  00382464: f10.2  $s3,$s0,$a3        
  00382468: fmove  $zero,$zero,$t1    
  0038246c: op36    $t0,$at,$zero     
  00382470: cop2   $v0,$a1,$t1        
  00382474: cop2   $at,$fp,$v0        
  00382478: op3e    $v0,$at,$zero     
  0038247c: addiu  $t2, $sp, +416     
  00382480: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382484: sw     $v0, +0($t2)       
  00382488: addiu  $t0, $a0, +48      
  0038248c: addiu  $v0, $sp, +1104    
  00382490: fmove  $zero,$zero,$t1    
  00382494: op36    $t0,$at,$zero     
  00382498: cop2   $v0,$a1,$t1        
  0038249c: cop2   $at,$fp,$v0        
  003824a0: op3e    $v0,$at,$zero     
  003824a4: addiu  $t0, $sp, +432     
  003824a8: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003824ac: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  003824b0: addiu  $v0, $sp, +1120    
  003824b4: op36    $t2,$at,$zero     
  003824b8: op36    $t0,$v0,$zero     
  003824bc: cop2   $at,$fp,$v0        
  003824c0: op3e    $v0,$at,$zero     
  003824c4: addiu  $t0, $sp, +400     
  003824c8: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003824cc: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  003824d0: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  003824d4: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  003824d8: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  003824dc: f10.1a $a2,$s0,$a2        
  003824e0: f10.1e $a3,$s0,$a3        
  003824e4: f10.1c $t0,$s0,$t0        
  003824e8: f10.34 $a2,$s0,$zero      
  003824ec: sll    $zero, $zero, +0   
  003824f0: f8.b   $zero,$t0,$zero    
  003824f4: addiu  $v0, $zero, +1     
  003824f8: addiu  $v1, $zero, +2     
  003824fc: sw     $v0, +72($sp)      
  00382500: swc1   $s5, +48($sp)      
  00382504: addiu  $v0, $zero, +3     
  00382508: sw     $v1, +64($sp)      
  0038250c: f10.6  $a2,$s0,$zero      
  00382510: sw     $v0, +76($sp)      
  00382514: swc1   $s3, +52($sp)      
  00382518: dsubu  $zero, $v1, +0     
  0038251c: sw     $zero, +68($sp)    
  00382520: f10.2  $t6,$s0,$t2        
  00382524: f10.2  $t8,$s0,$v1        
  00382528: f10.18 $a3,$s0,$a2        
  0038252c: fmove  $zero,$a0,$zero    
  00382530: sll    $zero, $zero, +0   
  00382534: f10.36 $t2,$s0,$a2        
  00382538: sll    $zero, $zero, +0   
  0038253c: f8.21  $zero,$t0,$at      
  00382540: f10.1c $k0,$s0,$at        
  00382544: f10.36 $v1,$s0,$a2        
  00382548: sll    $zero, $zero, +0   
  0038254c: f8.1d  $zero,$t0,$at      
  00382550: sll    $zero, $zero, +0   
  00382554: f10.36 $at,$s0,$a2        
  00382558: sll    $zero, $zero, +0   
  0038255c: f8.19  $zero,$t0,$at      
  00382560: sll    $zero, $zero, +0   
  00382564: f10.0  $t2,$s0,$v1        
  00382568: lui   $t0, 0x3f800000     
  0038256c: lui   $v0, 0x37270000     
  00382570: ori    $v0, $v0, -14932   
  00382574: f10.0  $at,$s0,$a2        
  00382578: fmove  $zero,$a0,$t0      
  0038257c: fmove  $zero,$a0,$v0      
  00382580: sll    $zero, $zero, +0   
  00382584: f10.3  $a3,$s0,$t6        
  00382588: sll    $zero, $zero, +0   
  0038258c: sll    $zero, $zero, +0   
  00382590: f10.36 $t0,$s0,$a2        
  00382594: sll    $zero, $zero, +0   
  00382598: f8.a   $zero,$t0,$zero    
  0038259c: sll    $zero, $zero, +0   
  003825a0: f10.2  $t2,$s0,$a3        
  003825a4: addiu  $v0, $zero, +3     
  003825a8: swc1   $zero, +0($a2)     
  003825ac: f10.2  $v1,$s0,$a3        
  003825b0: f10.2  $at,$s0,$a3        
  003825b4: swc1   $v0, +4($a2)       
  003825b8: swc1   $zero, +8($a2)     
  003825bc: beq    $zero, $zero, +2676   ; br -> 0x00383034
  003825c0: sw     $v0, +0($t3)       
  003825c4: f10.2  $t2,$s0,$a3        
  003825c8: addiu  $v0, $sp, +1136    
  003825cc: f10.2  $v1,$s0,$a3        
  003825d0: f10.2  $at,$s0,$a3        
  003825d4: fmove  $zero,$zero,$t0    
  003825d8: op36    $a0,$at,$zero     
  003825dc: cop2   $v0,$a1,$t0        
  003825e0: cop2   $at,$fp,$v0        
  003825e4: op3e    $v0,$at,$zero     
  003825e8: addiu  $t2, $sp, +480     
  003825ec: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003825f0: sw     $v0, +0($t2)       
  003825f4: addiu  $t0, $a0, +16      
  003825f8: addiu  $v0, $sp, +1152    
  003825fc: fmove  $zero,$zero,$t1    
  00382600: op36    $t0,$at,$zero     
  00382604: cop2   $v0,$a1,$t1        
  00382608: cop2   $at,$fp,$v0        
  0038260c: op3e    $v0,$at,$zero     
  00382610: addiu  $t0, $sp, +496     
  00382614: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382618: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  0038261c: addiu  $v0, $sp, +1168    
  00382620: op36    $t2,$at,$zero     
  00382624: op36    $t0,$v0,$zero     
  00382628: cop2   $at,$fp,$v0        
  0038262c: op3e    $v0,$at,$zero     
  00382630: addiu  $t2, $sp, +464     
  00382634: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382638: sw     $v0, +0($t2)       
  0038263c: addiu  $t0, $a0, +32      
  00382640: addiu  $v0, $sp, +1184    
  00382644: fmove  $zero,$zero,$t1    
  00382648: op36    $t0,$at,$zero     
  0038264c: cop2   $v0,$a1,$t1        
  00382650: cop2   $at,$fp,$v0        
  00382654: op3e    $v0,$at,$zero     
  00382658: addiu  $t0, $sp, +512     
  0038265c: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382660: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382664: addiu  $v0, $sp, +1200    
  00382668: op36    $t2,$at,$zero     
  0038266c: op36    $t0,$v0,$zero     
  00382670: cop2   $at,$fp,$v0        
  00382674: op3e    $v0,$at,$zero     
  00382678: addiu  $t0, $sp, +448     
  0038267c: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382680: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382684: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  00382688: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  0038268c: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  00382690: f10.1a $a2,$s0,$a2        
  00382694: f10.1e $a3,$s0,$a3        
  00382698: f10.1c $t0,$s0,$t0        
  0038269c: f10.34 $a2,$s0,$zero      
  003826a0: sll    $zero, $zero, +0   
  003826a4: f8.7   $zero,$t0,$zero    
  003826a8: sll    $zero, $zero, +0   
  003826ac: swc1   $t2, +48($sp)      
  003826b0: addiu  $v1, $zero, +3     
  003826b4: f10.6  $a2,$s0,$zero      
  003826b8: dsubu  $zero, $zero, +0   
  003826bc: swc1   $v1, +52($sp)      
  003826c0: swc1   $at, +56($sp)      
  003826c4: f10.2  $t7,$s0,$t4        
  003826c8: f10.2  $t9,$s0,$a1        
  003826cc: f10.18 $v1,$s0,$at        
  003826d0: fmove  $zero,$a0,$zero    
  003826d4: sll    $zero, $zero, +0   
  003826d8: f10.36 $t4,$s0,$at        
  003826dc: sll    $zero, $zero, +0   
  003826e0: f8.33  $zero,$t0,$at      
  003826e4: f10.1c $gp,$s0,$v0        
  003826e8: f10.36 $a1,$s0,$at        
  003826ec: sll    $zero, $zero, +0   
  003826f0: f8.2f  $zero,$t0,$at      
  003826f4: sll    $zero, $zero, +0   
  003826f8: f10.36 $v0,$s0,$at        
  003826fc: sll    $zero, $zero, +0   
  00382700: f8.2b  $zero,$t0,$at      
  00382704: sll    $zero, $zero, +0   
  00382708: f10.0  $t4,$s0,$a1        
  0038270c: lui   $t0, 0x3f800000     
  00382710: lui   $v0, 0x37270000     
  00382714: ori    $v0, $v0, -14932   
  00382718: f10.0  $v0,$s0,$at        
  0038271c: fmove  $zero,$a0,$t0      
  00382720: fmove  $zero,$a0,$v0      
  00382724: f10.3  $v1,$s0,$a3        
  00382728: sll    $zero, $zero, +0   
  0038272c: sll    $zero, $zero, +0   
  00382730: f10.36 $a2,$s0,$at        
  00382734: sll    $zero, $zero, +0   
  00382738: f8.1b  $zero,$t0,$zero    
  0038273c: f10.2  $t4,$s0,$v1        
  00382740: f10.2  $t4,$s0,$v1        
  00382744: addiu  $t0, $a0, +32      
  00382748: addiu  $a3, $sp, +1216    
  0038274c: swc1   $zero, +0($a2)     
  00382750: f10.2  $a1,$s0,$v1        
  00382754: f10.2  $v0,$s0,$v1        
  00382758: swc1   $at, +4($a2)       
  0038275c: swc1   $zero, +8($a2)     
  00382760: lw     $v1, +8($a1)       
  00382764: lw     $v0, +12($a1)      
  00382768: sw     $v0, +8($a1)       
  0038276c: sw     $v1, +12($a1)      
  00382770: lw     $v1, +24($a1)      
  00382774: lw     $v0, +28($a1)      
  00382778: sw     $v0, +24($a1)      
  0038277c: sw     $v1, +28($a1)      
  00382780: lw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382784: sw     $v0, +0($a3)       
  00382788: addiu  $v0, $a0, +48      
  0038278c: lw     $v1, +0($v0)          ; GLOBAL 0x37270000
  00382790: sw     $v1, +0($t0)          ; GLOBAL 0x3f800000
  00382794: lw     $v1, +0($a3)       
  00382798: sw     $v1, +0($v0)          ; GLOBAL 0x37270000
  0038279c: addiu  $v0, $zero, +3     
  003827a0: beq    $zero, $zero, +2192   ; br -> 0x00383034
  003827a4: sw     $v0, +0($t3)       
  003827a8: addiu  $v0, $sp, +1232    
  003827ac: f10.2  $a1,$s0,$v1        
  003827b0: f10.2  $v0,$s0,$v1        
  003827b4: fmove  $zero,$zero,$t0    
  003827b8: op36    $a0,$at,$zero     
  003827bc: cop2   $v0,$a1,$t0        
  003827c0: cop2   $at,$fp,$v0        
  003827c4: op3e    $v0,$at,$zero     
  003827c8: addiu  $t2, $sp, +560     
  003827cc: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003827d0: sw     $v0, +0($t2)       
  003827d4: addiu  $t0, $a0, +16      
  003827d8: addiu  $v0, $sp, +1248    
  003827dc: fmove  $zero,$zero,$t1    
  003827e0: op36    $t0,$at,$zero     
  003827e4: cop2   $v0,$a1,$t1        
  003827e8: cop2   $at,$fp,$v0        
  003827ec: op3e    $v0,$at,$zero     
  003827f0: addiu  $t0, $sp, +576     
  003827f4: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003827f8: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  003827fc: addiu  $v0, $sp, +1264    
  00382800: op36    $t2,$at,$zero     
  00382804: op36    $t0,$v0,$zero     
  00382808: cop2   $at,$fp,$v0        
  0038280c: op3e    $v0,$at,$zero     
  00382810: addiu  $t2, $sp, +544     
  00382814: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382818: sw     $v0, +0($t2)       
  0038281c: addiu  $t0, $a0, +48      
  00382820: addiu  $v0, $sp, +1280    
  00382824: fmove  $zero,$zero,$t1    
  00382828: op36    $t0,$at,$zero     
  0038282c: cop2   $v0,$a1,$t1        
  00382830: cop2   $at,$fp,$v0        
  00382834: op3e    $v0,$at,$zero     
  00382838: addiu  $t0, $sp, +592     
  0038283c: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382840: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382844: addiu  $v0, $sp, +1296    
  00382848: op36    $t2,$at,$zero     
  0038284c: op36    $t0,$v0,$zero     
  00382850: cop2   $at,$fp,$v0        
  00382854: op3e    $v0,$at,$zero     
  00382858: addiu  $t0, $sp, +528     
  0038285c: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382860: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382864: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  00382868: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  0038286c: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  00382870: f10.1a $a2,$s0,$a2        
  00382874: f10.1e $a3,$s0,$a3        
  00382878: f10.1c $t0,$s0,$t0        
  0038287c: f10.34 $v1,$s0,$zero      
  00382880: sll    $zero, $zero, +0   
  00382884: f8.a   $zero,$t0,$zero    
  00382888: sll    $zero, $zero, +0   
  0038288c: addiu  $v1, $zero, +3     
  00382890: addiu  $v0, $zero, +2     
  00382894: swc1   $at, +48($sp)      
  00382898: sw     $v0, +64($sp)      
  0038289c: f10.6  $v1,$s0,$zero      
  003828a0: addiu  $a3, $zero, +1     
  003828a4: swc1   $a1, +52($sp)      
  003828a8: sw     $v1, +68($sp)      
  003828ac: swc1   $v0, +56($sp)      
  003828b0: f10.2  $s0,$s0,$s1        
  003828b4: f10.2  $k1,$s0,$t1        
  003828b8: f10.18 $v0,$s0,$at        
  003828bc: fmove  $zero,$a0,$zero    
  003828c0: sll    $zero, $zero, +0   
  003828c4: f10.36 $s1,$s0,$at        
  003828c8: sll    $zero, $zero, +0   
  003828cc: f8.32  $zero,$t0,$at      
  003828d0: f10.1c $sp,$s0,$a0        
  003828d4: f10.36 $t1,$s0,$at        
  003828d8: sll    $zero, $zero, +0   
  003828dc: f8.2f  $zero,$t0,$at      
  003828e0: f10.2  $s2,$s0,$s4        
  003828e4: f10.36 $a0,$s0,$at        
  003828e8: sll    $zero, $zero, +0   
  003828ec: f8.2a  $zero,$t0,$at      
  003828f0: sll    $zero, $zero, +0   
  003828f4: f10.0  $s1,$s0,$t1        
  003828f8: lui   $t0, 0x3f800000     
  003828fc: lui   $v0, 0x37270000     
  00382900: ori    $v0, $v0, -14932   
  00382904: f10.0  $a0,$s0,$at        
  00382908: fmove  $zero,$a0,$t0      
  0038290c: fmove  $zero,$a0,$v0      
  00382910: f10.3  $v0,$s0,$a1        
  00382914: sll    $zero, $zero, +0   
  00382918: sll    $zero, $zero, +0   
  0038291c: f10.36 $v1,$s0,$at        
  00382920: sll    $zero, $zero, +0   
  00382924: f8.1b  $zero,$t0,$zero    
  00382928: f10.2  $s1,$s0,$v0        
  0038292c: f10.2  $s1,$s0,$v0        
  00382930: addiu  $t0, $a0, +16      
  00382934: addiu  $a3, $sp, +1312    
  00382938: swc1   $zero, +0($a2)     
  0038293c: f10.2  $t1,$s0,$v0        
  00382940: f10.2  $a0,$s0,$v0        
  00382944: swc1   $at, +8($a2)       
  00382948: swc1   $zero, +4($a2)     
  0038294c: lw     $v1, +4($a1)       
  00382950: lw     $v0, +12($a1)      
  00382954: sw     $v0, +4($a1)       
  00382958: sw     $v1, +12($a1)      
  0038295c: lw     $v1, +20($a1)      
  00382960: lw     $v0, +28($a1)      
  00382964: sw     $v0, +20($a1)      
  00382968: sw     $v1, +28($a1)      
  0038296c: lw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382970: sw     $v0, +0($a3)       
  00382974: addiu  $v0, $a0, +48      
  00382978: lw     $v1, +0($v0)          ; GLOBAL 0x37270000
  0038297c: sw     $v1, +0($t0)          ; GLOBAL 0x3f800000
  00382980: lw     $v1, +0($a3)       
  00382984: sw     $v1, +0($v0)          ; GLOBAL 0x37270000
  00382988: addiu  $v0, $zero, +3     
  0038298c: beq    $zero, $zero, +1700   ; br -> 0x00383034
  00382990: sw     $v0, +0($t3)       
  00382994: addiu  $v0, $sp, +1328    
  00382998: f10.2  $t1,$s0,$v0        
  0038299c: f10.2  $a0,$s0,$v0        
  003829a0: fmove  $zero,$zero,$t0    
  003829a4: op36    $a0,$at,$zero     
  003829a8: cop2   $v0,$a1,$t0        
  003829ac: cop2   $at,$fp,$v0        
  003829b0: op3e    $v0,$at,$zero     
  003829b4: addiu  $t2, $sp, +640     
  003829b8: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003829bc: sw     $v0, +0($t2)       
  003829c0: addiu  $t0, $a0, +32      
  003829c4: addiu  $v0, $sp, +1344    
  003829c8: fmove  $zero,$zero,$t1    
  003829cc: op36    $t0,$at,$zero     
  003829d0: cop2   $v0,$a1,$t1        
  003829d4: cop2   $at,$fp,$v0        
  003829d8: op3e    $v0,$at,$zero     
  003829dc: addiu  $t0, $sp, +656     
  003829e0: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  003829e4: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  003829e8: addiu  $v0, $sp, +1360    
  003829ec: op36    $t2,$at,$zero     
  003829f0: op36    $t0,$v0,$zero     
  003829f4: cop2   $at,$fp,$v0        
  003829f8: op3e    $v0,$at,$zero     
  003829fc: addiu  $t2, $sp, +624     
  00382a00: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382a04: sw     $v0, +0($t2)       
  00382a08: addiu  $t0, $a0, +48      
  00382a0c: addiu  $v0, $sp, +1376    
  00382a10: fmove  $zero,$zero,$t1    
  00382a14: op36    $t0,$at,$zero     
  00382a18: cop2   $v0,$a1,$t1        
  00382a1c: cop2   $at,$fp,$v0        
  00382a20: op3e    $v0,$at,$zero     
  00382a24: addiu  $t0, $sp, +672     
  00382a28: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382a2c: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382a30: addiu  $v0, $sp, +1392    
  00382a34: op36    $t2,$at,$zero     
  00382a38: op36    $t0,$v0,$zero     
  00382a3c: cop2   $at,$fp,$v0        
  00382a40: op3e    $v0,$at,$zero     
  00382a44: addiu  $t0, $sp, +608     
  00382a48: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382a4c: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382a50: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  00382a54: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  00382a58: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  00382a5c: f10.1a $a2,$s0,$a2        
  00382a60: f10.1e $a3,$s0,$a3        
  00382a64: f10.1c $t0,$s0,$t0        
  00382a68: f10.34 $a0,$s0,$zero      
  00382a6c: sll    $zero, $zero, +0   
  00382a70: f8.9   $zero,$t0,$zero    
  00382a74: sll    $zero, $zero, +0   
  00382a78: addiu  $v1, $zero, +3     
  00382a7c: addiu  $a3, $zero, +1     
  00382a80: swc1   $at, +48($sp)      
  00382a84: sw     $a3, +64($sp)      
  00382a88: f10.6  $a0,$s0,$zero      
  00382a8c: sw     $v1, +68($sp)      
  00382a90: swc1   $v1, +56($sp)      
  00382a94: swc1   $v0, +52($sp)      
  00382a98: f10.2  $s2,$s0,$s4        
  00382a9c: f10.2  $fp,$s0,$t5        
  00382aa0: f10.18 $v0,$s0,$at        
  00382aa4: fmove  $zero,$a0,$zero    
  00382aa8: sll    $zero, $zero, +0   
  00382aac: f10.36 $s4,$s0,$at        
  00382ab0: sll    $zero, $zero, +0   
  00382ab4: f8.31  $zero,$t0,$at      
  00382ab8: f10.1c $ra,$s0,$t3        
  00382abc: f10.36 $t5,$s0,$at        
  00382ac0: sll    $zero, $zero, +0   
  00382ac4: f8.2e  $zero,$t0,$at      
  00382ac8: lui   $v0, 0x3f800000     
  00382acc: f10.36 $t3,$s0,$at        
  00382ad0: sll    $zero, $zero, +0   
  00382ad4: f8.29  $zero,$t0,$at      
  00382ad8: sll    $zero, $zero, +0   
  00382adc: f10.0  $s4,$s0,$t5        
  00382ae0: lui   $t0, 0x3f800000     
  00382ae4: lui   $v0, 0x37270000     
  00382ae8: ori    $v0, $v0, -14932   
  00382aec: f10.0  $t3,$s0,$at        
  00382af0: fmove  $zero,$a0,$t0      
  00382af4: fmove  $zero,$a0,$v0      
  00382af8: f10.3  $v0,$s0,$a0        
  00382afc: sll    $zero, $zero, +0   
  00382b00: sll    $zero, $zero, +0   
  00382b04: f10.36 $v1,$s0,$at        
  00382b08: sll    $zero, $zero, +0   
  00382b0c: f8.1a  $zero,$t0,$zero    
  00382b10: f10.2  $s4,$s0,$v0        
  00382b14: lw     $v1, +0($a1)       
  00382b18: addiu  $a3, $sp, +1408    
  00382b1c: lw     $v0, +12($a1)      
  00382b20: sw     $v0, +0($a1)       
  00382b24: sw     $v1, +12($a1)      
  00382b28: lw     $v1, +16($a1)      
  00382b2c: lw     $v0, +28($a1)      
  00382b30: sw     $v0, +16($a1)      
  00382b34: sw     $v1, +28($a1)      
  00382b38: lw     $v0, +0($a0)       
  00382b3c: sw     $v0, +0($a3)       
  00382b40: addiu  $v0, $a0, +48      
  00382b44: lw     $v1, +0($v0)          ; GLOBAL 0x37270000
  00382b48: sw     $v1, +0($a0)       
  00382b4c: lw     $v1, +0($a3)       
  00382b50: sw     $v1, +0($v0)          ; GLOBAL 0x37270000
  00382b54: f10.2  $s4,$s0,$v0        
  00382b58: addiu  $v0, $zero, +3     
  00382b5c: swc1   $zero, +4($a2)     
  00382b60: f10.2  $t5,$s0,$v0        
  00382b64: f10.2  $t3,$s0,$v0        
  00382b68: swc1   $at, +8($a2)       
  00382b6c: swc1   $zero, +0($a2)     
  00382b70: beq    $zero, $zero, +1216   ; br -> 0x00383034
  00382b74: sw     $v0, +0($t3)       
  00382b78: addiu  $t0, $a0, +16      
  00382b7c: addiu  $v0, $sp, +1424    
  00382b80: f10.2  $t5,$s0,$v0        
  00382b84: f10.2  $t3,$s0,$v0        
  00382b88: fmove  $zero,$zero,$t1    
  00382b8c: op36    $t0,$at,$zero     
  00382b90: cop2   $v0,$a1,$t1        
  00382b94: cop2   $at,$fp,$v0        
  00382b98: op3e    $v0,$at,$zero     
  00382b9c: addiu  $t2, $sp, +720     
  00382ba0: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382ba4: sw     $v0, +0($t2)       
  00382ba8: addiu  $t0, $a0, +32      
  00382bac: addiu  $v0, $sp, +1440    
  00382bb0: fmove  $zero,$zero,$t1    
  00382bb4: op36    $t0,$at,$zero     
  00382bb8: cop2   $v0,$a1,$t1        
  00382bbc: cop2   $at,$fp,$v0        
  00382bc0: op3e    $v0,$at,$zero     
  00382bc4: addiu  $t0, $sp, +736     
  00382bc8: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382bcc: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382bd0: addiu  $v0, $sp, +1456    
  00382bd4: op36    $t2,$at,$zero     
  00382bd8: op36    $t0,$v0,$zero     
  00382bdc: cop2   $at,$fp,$v0        
  00382be0: op3e    $v0,$at,$zero     
  00382be4: addiu  $t2, $sp, +704     
  00382be8: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382bec: sw     $v0, +0($t2)       
  00382bf0: addiu  $t0, $a0, +48      
  00382bf4: addiu  $v0, $sp, +1472    
  00382bf8: fmove  $zero,$zero,$t1    
  00382bfc: op36    $t0,$at,$zero     
  00382c00: cop2   $v0,$a1,$t1        
  00382c04: cop2   $at,$fp,$v0        
  00382c08: op3e    $v0,$at,$zero     
  00382c0c: addiu  $t0, $sp, +752     
  00382c10: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382c14: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382c18: addiu  $v0, $sp, +1488    
  00382c1c: op36    $t2,$at,$zero     
  00382c20: op36    $t0,$v0,$zero     
  00382c24: cop2   $at,$fp,$v0        
  00382c28: op3e    $v0,$at,$zero     
  00382c2c: addiu  $t0, $sp, +688     
  00382c30: lw     $v0, +0($v0)          ; GLOBAL 0x37270000
  00382c34: sw     $v0, +0($t0)          ; GLOBAL 0x3f800000
  00382c38: lwc1   $a2, +0($t0)          ; GLOBAL 0x3f800000
  00382c3c: lwc1   $a3, +4($t0)          ; GLOBAL 0x3f800004
  00382c40: lwc1   $t0, +8($t0)          ; GLOBAL 0x3f800008
  00382c44: f10.1a $a2,$s0,$a2        
  00382c48: f10.1e $a3,$s0,$a3        
  00382c4c: f10.1c $t0,$s0,$t0        
  00382c50: f10.34 $a0,$s0,$zero      
  00382c54: sll    $zero, $zero, +0   
  00382c58: f8.8   $zero,$t0,$zero    
  00382c5c: sll    $zero, $zero, +0   
  00382c60: addiu  $v1, $zero, +3     
  00382c64: addiu  $a3, $zero, +1     
  00382c68: swc1   $at, +52($sp)      
  00382c6c: sw     $zero, +64($sp)    
  00382c70: swc1   $v1, +56($sp)      
  00382c74: sw     $v1, +68($sp)      
  00382c78: swc1   $v0, +48($sp)      
  00382c7c: lui   $v0, 0x3f800000     
  00382c80: sw     $zero, +104($sp)   
  00382c84: fmove  $zero,$a0,$zero    
  00382c88: sw     $zero, +100($sp)   
  00382c8c: sw     $zero, +96($sp)    
  00382c90: addiu  $t2, $a0, +16      
  00382c94: sw     $v0, +108($sp)     
  00382c98: addiu  $t1, $a0, +32      
  00382c9c: sw     $zero, +120($sp)   
  00382ca0: addiu  $t0, $sp, +96      
  00382ca4: sw     $zero, +116($sp)   
  00382ca8: sw     $zero, +112($sp)   
  00382cac: sw     $v0, +124($sp)     
  00382cb0: sw     $zero, +136($sp)   
  00382cb4: sw     $zero, +132($sp)   
  00382cb8: sw     $zero, +128($sp)   
  00382cbc: sw     $v0, +140($sp)     
  00382cc0: sw     $v0, +156($sp)     
  00382cc4: sw     $zero, +152($sp)   
  00382cc8: sw     $zero, +148($sp)   
  00382ccc: sw     $zero, +144($sp)   
  00382cd0: op36    $a0,$at,$zero     
  00382cd4: op36    $t2,$v0,$zero     
  00382cd8: op36    $t1,$v1,$zero     
  00382cdc: cop2   $v0,$fp,$at        
  00382ce0: cop2   $v1,$fp,$at        
  00382ce4: cop2   $v0,$fp,$v1        
  00382ce8: cop2   $v1,$fp,$v0        
  00382cec: op3e    $t0,$at,$zero     
  00382cf0: addiu  $t4, $a0, +48      
  00382cf4: addiu  $v0, $sp, +112     
  00382cf8: op36    $a0,$at,$zero     
  00382cfc: op36    $t1,$v0,$zero     
  00382d00: op36    $t4,$v1,$zero     
  00382d04: cop2   $v0,$fp,$at        
  00382d08: cop2   $v1,$fp,$at        
  00382d0c: cop2   $v0,$fp,$v1        
  00382d10: cop2   $v1,$fp,$v0        
  00382d14: op3e    $v0,$at,$zero     
  00382d18: addiu  $v0, $sp, +128     
  00382d1c: op36    $a0,$at,$zero     
  00382d20: op36    $t4,$v0,$zero     
  00382d24: op36    $t2,$v1,$zero     
  00382d28: cop2   $v0,$fp,$at        
  00382d2c: cop2   $v1,$fp,$at        
  00382d30: cop2   $v0,$fp,$v1        
  00382d34: cop2   $v1,$fp,$v0        
  00382d38: op3e    $v0,$at,$zero     
  00382d3c: addiu  $v0, $sp, +144     
  00382d40: op36    $t2,$at,$zero     
  00382d44: op36    $t4,$v0,$zero     
  00382d48: op36    $t1,$v1,$zero     
  00382d4c: cop2   $v0,$fp,$at        
  00382d50: cop2   $v1,$fp,$at        
  00382d54: cop2   $v0,$fp,$v1        
  00382d58: cop2   $v1,$fp,$v0        
  00382d5c: op3e    $v0,$at,$zero     
  00382d60: lwc1   $v1, +0($t0)          ; GLOBAL 0x3f800000
  00382d64: lwc1   $at, +0($a0)       
  00382d68: lwc1   $v0, +4($t0)          ; GLOBAL 0x3f800004
  00382d6c: f10.1a $v1,$s0,$at        
  00382d70: lwc1   $at, +4($a0)       
  00382d74: lwc1   $v1, +8($t0)          ; GLOBAL 0x3f800008
  00382d78: f10.1e $v0,$s0,$at        
  00382d7c: lwc1   $at, +8($a0)       
  00382d80: f10.1c $v1,$s0,$at        
  00382d84: f10.36 $at,$s0,$zero      
  00382d88: sll    $zero, $zero, +0   
  00382d8c: f8.2   $zero,$t0,$zero    
  00382d90: addiu  $v0, $zero, +1     
  00382d94: dsubu  $zero, $zero, +0   
  00382d98: andi   $t0, $v0, +255     
  00382d9c: addiu  $v0, $sp, +112     
  00382da0: lwc1   $v0, +0($v0)          ; GLOBAL 0x3f800000
  00382da4: lwc1   $zero, +0($a0)     
  00382da8: lwc1   $at, +4($v0)          ; GLOBAL 0x3f800004
  00382dac: f10.1a $v0,$s0,$zero      
  00382db0: lwc1   $zero, +4($a0)     
  00382db4: lwc1   $v0, +8($v0)          ; GLOBAL 0x3f800008
  00382db8: f10.1e $at,$s0,$zero      
  00382dbc: lwc1   $zero, +8($a0)     
  00382dc0: f10.1c $v0,$s0,$zero      
  00382dc4: fmove  $zero,$a0,$zero    
  00382dc8: sll    $zero, $zero, +0   
  00382dcc: f10.36 $at,$s0,$zero      
  00382dd0: sll    $zero, $zero, +0   
  00382dd4: f8.2   $zero,$t0,$zero    
  00382dd8: addiu  $v0, $zero, +1     
  00382ddc: dsubu  $zero, $zero, +0   
  00382de0: andi   $t1, $v0, +255     
  00382de4: addiu  $v0, $sp, +128     
  00382de8: lwc1   $v0, +0($v0)          ; GLOBAL 0x3f800000
  00382dec: lwc1   $zero, +0($a0)     
  00382df0: lwc1   $at, +4($v0)          ; GLOBAL 0x3f800004
  00382df4: f10.1a $v0,$s0,$zero      
  00382df8: lwc1   $zero, +4($a0)     
  00382dfc: lwc1   $v0, +8($v0)          ; GLOBAL 0x3f800008
  00382e00: f10.1e $at,$s0,$zero      
  00382e04: lwc1   $zero, +8($a0)     
  00382e08: f10.1c $v0,$s0,$zero      
  00382e0c: fmove  $zero,$a0,$zero    
  00382e10: sll    $zero, $zero, +0   
  00382e14: f10.36 $at,$s0,$zero      
  00382e18: sll    $zero, $zero, +0   
  00382e1c: f8.2   $zero,$t0,$zero    
  00382e20: addiu  $v0, $zero, +1     
  00382e24: dsubu  $zero, $zero, +0   
  00382e28: andi   $t2, $v0, +255     
  00382e2c: addiu  $t4, $sp, +144     
  00382e30: addiu  $v0, $a0, +32      
  00382e34: lwc1   $v0, +0($t4)       
  00382e38: lwc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  00382e3c: lwc1   $at, +4($t4)       
  00382e40: f10.1a $v0,$s0,$zero      
  00382e44: lwc1   $zero, +4($v0)        ; GLOBAL 0x3f800004
  00382e48: lwc1   $v0, +8($t4)       
  00382e4c: f10.1e $at,$s0,$zero      
  00382e50: lwc1   $zero, +8($v0)        ; GLOBAL 0x3f800008
  00382e54: f10.1c $v0,$s0,$zero      
  00382e58: fmove  $zero,$a0,$zero    
  00382e5c: sll    $zero, $zero, +0   
  00382e60: f10.36 $at,$s0,$zero      
  00382e64: sll    $zero, $zero, +0   
  00382e68: f8.2   $zero,$t0,$zero    
  00382e6c: addiu  $v0, $zero, +1     
  00382e70: dsubu  $zero, $zero, +0   
  00382e74: andi   $t4, $v0, +255     
  00382e78: andi   $t0, $t0, +255     
  00382e7c: andi   $v0, $t1, +255     
  00382e80: bne    $t0, $v0, +28         ; br -> 0x00382ea0
  00382e84: sll    $zero, $zero, +0   
  00382e88: andi   $v0, $t2, +255     
  00382e8c: bne    $t0, $v0, +20         ; br -> 0x00382ea4
  00382e90: dsubu  $zero, $zero, +0   
  00382e94: andi   $v0, $t4, +255     
  00382e98: beq    $t0, $v0, +184        ; br -> 0x00382f54
  00382e9c: sll    $zero, $zero, +0   
  00382ea0: dsubu  $zero, $zero, +0   
  00382ea4: beq    $zero, $zero, +24     ; br -> 0x00382ec0
  00382ea8: sll    $zero, $zero, +0   
  00382eac: addu   $sp, $t0, +0       
  00382eb0: addiu  $v0, $v0, +1       
  00382eb4: lwc1   $zero, +48($t1)    
  00382eb8: addu   $t0, $a2, +0       
  00382ebc: swc1   $zero, +0($t0)        ; GLOBAL 0x3f800000
  00382ec0: dadd   $v1, $v0, +0       
  00382ec4: bne    $t0, $zero, -28       ; br -> 0x003c2eac
  00382ec8: sll    $v0, $zero, +2     
  00382ecc: dsubu  $zero, $zero, +0   
  00382ed0: beq    $zero, $zero, +108    ; br -> 0x00382f40
  00382ed4: addiu  $t5, $sp, +1504    
  00382ed8: addu   $sp, $a2, +0       
  00382edc: lw     $t4, +68($a2)      
  00382ee0: lw     $t2, +64($a2)      
  00382ee4: sll    $t4, $zero, +2     
  00382ee8: addu   $a2, $a1, +0       
  00382eec: sll    $t2, $zero, +2     
  00382ef0: addu   $a2, $a1, +0       
  00382ef4: sll    $t2, $zero, +4     
  00382ef8: addu   $a2, $a0, +0       
  00382efc: lw     $t2, +0($t1)       
  00382f00: lw     $a2, +0($t0)          ; GLOBAL 0x3f800000
  00382f04: sw     $a2, +0($t1)       
  00382f08: sw     $t2, +0($t0)          ; GLOBAL 0x3f800000
  00382f0c: lw     $t2, +16($t1)      
  00382f10: lw     $a2, +16($t0)         ; GLOBAL 0x3f800010
  00382f14: sw     $a2, +16($t1)      
  00382f18: sw     $t2, +16($t0)         ; GLOBAL 0x3f800010
  00382f1c: lw     $a2, +0($t6)       
  00382f20: sw     $a2, +0($t5)       
  00382f24: sll    $t4, $zero, +4     
  00382f28: addu   $a2, $a0, +0       
  00382f2c: lw     $t0, +0($a2)       
  00382f30: sw     $t0, +0($t6)       
  00382f34: lw     $t0, +0($t5)       
  00382f38: sw     $t0, +0($a2)       
  00382f3c: addiu  $v0, $v0, +1       
  00382f40: dadd   $a3, $v0, +0       
  00382f44: bne    $a2, $zero, -112      ; br -> 0x003c2ed8
  00382f48: sll    $v0, $zero, +3     
  00382f4c: beq    $zero, $zero, +228    ; br -> 0x00383034
  00382f50: sw     $v1, +0($t3)       
  00382f54: dsubu  $zero, $zero, +0   
  00382f58: beq    $zero, $zero, +224    ; br -> 0x0038303c
  00382f5c: lwc1   $ra, +44($sp)      
  00382f60: lw     $v1, +0($a1)       
  00382f64: addiu  $a2, $sp, +1520    
  00382f68: lw     $v0, +4($a1)       
  00382f6c: sw     $v0, +0($a1)       
  00382f70: sw     $v1, +4($a1)       
  00382f74: lw     $v1, +16($a1)      
  00382f78: lw     $v0, +20($a1)      
  00382f7c: sw     $v0, +16($a1)      
  00382f80: sw     $v1, +20($a1)      
  00382f84: lw     $v0, +0($a0)       
  00382f88: sw     $v0, +0($a2)       
  00382f8c: addiu  $v0, $a0, +16      
  00382f90: lw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  00382f94: sw     $v1, +0($a0)       
  00382f98: lw     $v1, +0($a2)       
  00382f9c: sw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  00382fa0: beq    $zero, $zero, +148    ; br -> 0x00383038
  00382fa4: addiu  $v0, $zero, +1     
  00382fa8: lw     $v1, +0($a1)       
  00382fac: addiu  $a2, $sp, +1536    
  00382fb0: lw     $v0, +8($a1)       
  00382fb4: sw     $v0, +0($a1)       
  00382fb8: sw     $v1, +8($a1)       
  00382fbc: lw     $v1, +16($a1)      
  00382fc0: lw     $v0, +24($a1)      
  00382fc4: sw     $v0, +16($a1)      
  00382fc8: sw     $v1, +24($a1)      
  00382fcc: lw     $v0, +0($a0)       
  00382fd0: sw     $v0, +0($a2)       
  00382fd4: addiu  $v0, $a0, +32      
  00382fd8: lw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  00382fdc: sw     $v1, +0($a0)       
  00382fe0: lw     $v1, +0($a2)       
  00382fe4: sw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  00382fe8: beq    $zero, $zero, +72     ; br -> 0x00383034
  00382fec: sll    $zero, $zero, +0   
  00382ff0: lw     $v1, +4($a1)       
  00382ff4: addiu  $a3, $a0, +16      
  00382ff8: lw     $v0, +8($a1)       
  00382ffc: addiu  $a2, $sp, +1552    
  00383000: sw     $v0, +4($a1)       
  00383004: sw     $v1, +8($a1)       
  00383008: lw     $v1, +20($a1)      
  0038300c: lw     $v0, +24($a1)      
  00383010: sw     $v0, +20($a1)      
  00383014: sw     $v1, +24($a1)      
  00383018: lw     $v0, +0($a3)       
  0038301c: sw     $v0, +0($a2)       
  00383020: addiu  $v0, $a0, +32      
  00383024: lw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  00383028: sw     $v1, +0($a3)       
  0038302c: lw     $v1, +0($a2)       
  00383030: sw     $v1, +0($v0)          ; GLOBAL 0x3f800000
  00383034: addiu  $v0, $zero, +1     
  00383038: lwc1   $ra, +44($sp)      
  0038303c: lwc1   $fp, +40($sp)      
  00383040: lwc1   $sp, +36($sp)      
  00383044: lwc1   $gp, +32($sp)      
  00383048: lwc1   $k1, +28($sp)      
  0038304c: lwc1   $k0, +24($sp)      
  00383050: lwc1   $t9, +20($sp)      
  00383054: lwc1   $t8, +16($sp)      
  00383058: lwc1   $s7, +12($sp)      
  0038305c: lwc1   $s6, +8($sp)       
  00383060: lwc1   $s5, +4($sp)       
  00383064: lwc1   $s4, +0($sp)       
  00383068: jr     $ra                
  0038306c: addiu  $sp, $sp, +1568    

; globals: 0x3f800000(x52), 0x37270000(x46), 0x3f800004(x15), 0x3f800008(x15), 0x37270004(x2), 0x37270008(x2), 0x3f800010(x2)
