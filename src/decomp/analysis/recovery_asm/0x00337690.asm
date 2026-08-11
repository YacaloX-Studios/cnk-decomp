; 0x00337690  FUN_00337690  size=592  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=int ret=ptr calls=0x0033be20;0x0033c1b0;0x00341750;0x00341860;0x00395f10;0x00397200;0x003981c0;0x0
; 148 words

  00337690: lw     $v0, +100($a0)     
  00337694: lw     $a0, +20($v0)      
  00337698: j     0x00380e80          
  0033769c: lw     $a1, +148($a1)     
  003376a0: addiu  $sp, $sp, -272     
  003376a4: addiu  $v0, $zero, +1     
  003376a8: sw     $ra, +96($sp)      
  003376ac: addiu  $v1, $sp, +180     
  003376b0: sw     $s4, +80($sp)      
  003376b4: sw     $s3, +64($sp)      
  003376b8: dsubu  $zero, $a0, +0     
  003376bc: sw     $s2, +48($sp)      
  003376c0: lui   $a0, 0x3f800000     
  003376c4: sw     $s1, +32($sp)      
  003376c8: fmove  $zero,$a0,$a0      
  003376cc: sw     $s0, +16($sp)      
  003376d0: dsubu  $zero, $a1, +0     
  003376d4: swc1   $s4, +0($sp)       
  003376d8: dsubu  $zero, $a2, +0     
  003376dc: sw     $v0, +176($sp)     
  003376e0: f10.6  $t5,$s0,$zero      
  003376e4: lui   $v0, 0x006a0000     
  003376e8: dsubu  $zero, $a3, +0     
  003376ec: addiu  $v0, $v0, +8480    
  003376f0: sw     $a0, +0($v1)       
  003376f4: addiu  $s0, $sp, +192     
  003376f8: lw     $a1, +0($v0)          ; GLOBAL 0x006a0000
  003376fc: lw     $a0, +16($v0)         ; GLOBAL 0x006a0010
  00337700: sw     $a1, +0($s0)       
  00337704: sw     $a0, +16($s0)      
  00337708: lw     $a1, +32($v0)         ; GLOBAL 0x006a0020
  0033770c: lw     $a0, +48($v0)         ; GLOBAL 0x006a0030
  00337710: sw     $a1, +32($s0)      
  00337714: sw     $a0, +48($s0)      
  00337718: addiu  $v0, $sp, +256     
  0033771c: lui   $a1, 0x006a0000     
  00337720: swc1   $t4, +0($v1)       
  00337724: addiu  $a0, $sp, +112     
  00337728: swc1   $zero, +172($sp)   
  0033772c: addiu  $a1, $a1, +8560    
  00337730: swc1   $zero, +156($sp)   
  00337734: swc1   $s4, +0($v0)          ; GLOBAL 0x006a0000
  00337738: swc1   $zero, +140($sp)   
  0033773c: jal   0xf03f6780             ; -> 0x003f6780
  00337740: swc1   $zero, +124($sp)   
  00337744: addiu  $v0, $sp, +112     
  00337748: lw     $v1, +0($s1)       
  0033774c: sw     $v1, +48($v0)         ; GLOBAL 0x006a0030
  00337750: lw     $a0, +0($v0)          ; GLOBAL 0x006a0000
  00337754: lw     $v1, +16($v0)         ; GLOBAL 0x006a0010
  00337758: sw     $a0, +0($s0)       
  0033775c: sw     $v1, +16($s0)      
  00337760: lw     $a0, +32($v0)         ; GLOBAL 0x006a0020
  00337764: lw     $v1, +48($v0)         ; GLOBAL 0x006a0030
  00337768: sw     $a0, +32($s0)      
  0033776c: sw     $v1, +48($s0)      
  00337770: addiu  $a0, $zero, +688   
  00337774: jal   0xf033c1b0             ; -> 0x0033c1b0
  00337778: addiu  $a1, $zero, +8     
  0033777c: addiu  $v1, $zero, +688   
  00337780: dsubu  $zero, $v0, +0     
  00337784: beq    $s1, $zero, +16       ; br -> 0x00337798
  00337788: sw     $v1, +4($v0)          ; GLOBAL 0x006a0004
  0033778c: jal   0xf0395f10             ; -> 0x00395f10
  00337790: dsubu  $zero, $s1, +0     
  00337794: dsubu  $zero, $v0, +0     
  00337798: f10.6  $s4,$s0,$zero      
  0033779c: jal   0xf0397200             ; -> 0x00397200
  003377a0: dsubu  $zero, $s1, +0     
  003377a4: dsubu  $zero, $s1, +0     
  003377a8: jal   0xf03981c0             ; -> 0x003981c0
  003377ac: addiu  $a1, $sp, +176     
  003377b0: lw     $a1, +32($s4)      
  003377b4: beq    $a1, $zero, +12       ; br -> 0x003377c4
  003377b8: dsubu  $zero, $s1, +0     
  003377bc: jal   0xf03988c0             ; -> 0x003988c0
  003377c0: sll    $zero, $zero, +0   
  003377c4: lw     $a0, +100($s4)     
  003377c8: lui   $a3, 0x006a0000     
  003377cc: dsubu  $zero, $s2, +0     
  003377d0: dsubu  $zero, $s1, +0     
  003377d4: jal   0xf0341750             ; -> 0x00341750
  003377d8: addiu  $a3, $a3, +8560    
  003377dc: jal   0xf0429068             ; -> 0x00429068
  003377e0: dsubu  $zero, $s3, +0     
  003377e4: lw     $a0, +0($s4)       
  003377e8: lw     $t9, +0($a0)          ; GLOBAL 0x3f800000
  003377ec: lw     $t9, +28($t9)      
  003377f0: jalr   $t9, $ra           
  003377f4: addiu  $a1, $v0, +1       
  003377f8: dsubu  $zero, $v0, +0     
  003377fc: bne    $s0, $zero, +56       ; br -> 0x00337838
  00337800: dsubu  $zero, $s3, +0     
  00337804: lw     $a0, +100($s4)     
  00337808: jal   0xf0341860             ; -> 0x00341860
  0033780c: dsubu  $zero, $s1, +0     
  00337810: beq    $s1, $zero, +28       ; br -> 0x00337830
  00337814: dsubu  $zero, $zero, +0   
  00337818: lw     $t9, +0($s1)       
  0033781c: dsubu  $zero, $s1, +0     
  00337820: lw     $t9, +8($t9)       
  00337824: jalr   $t9, $ra           
  00337828: addiu  $a1, $zero, +1     
  0033782c: dsubu  $zero, $zero, +0   
  00337830: beq    $zero, $zero, +132    ; br -> 0x003378b8
  00337834: lw     $ra, +96($sp)      
  00337838: jal   0xf0428f48             ; -> FUN_00428f48
  0033783c: dsubu  $zero, $s0, +0     
  00337840: lw     $v0, +112($s4)     
  00337844: lw     $s2, +108($s4)     
  00337848: spec3c  $zero,$v0,$v0     
  0033784c: addiu  $s1, $s2, +1       
  00337850: spec3e  $zero,$v0,$v0     
  00337854: dadd   $s1, $v0, +0       
  00337858: beq    $at, $zero, +32       ; br -> 0x0033787c
  0033785c: dadd   $s1, $v0, +0       
  00337860: beq    $at, $zero, +8        ; br -> 0x0033786c
  00337864: sll    $zero, $zero, +0   
  00337868: dsubu  $zero, $s1, +0     
  0033786c: sll    $v0, $zero, +1     
  00337870: addiu  $a0, $s4, +104     
  00337874: jal   0xf033be20             ; -> 0x0033be20
  00337878: addiu  $a2, $zero, +16    
  0033787c: sw     $s1, +108($s4)     
  00337880: sll    $s2, $zero, +4     
  00337884: lw     $v0, +104($s4)     
  00337888: addiu  $v1, $zero, +1     
  0033788c: addu   $a0, $v0, +0       
  00337890: sw     $s0, +0($a0)          ; GLOBAL 0x3f800000
  00337894: sw     $v1, +4($a0)          ; GLOBAL 0x3f800004
  00337898: lw     $v0, +100($s4)     
  0033789c: lw     $v0, +16($v0)         ; GLOBAL 0x006a0010
  003378a0: lw     $v0, +36($v0)         ; GLOBAL 0x006a0024
  003378a4: addiu  $v0, $v0, -1       
  003378a8: sw     $v0, +8($a0)          ; GLOBAL 0x3f800008
  003378ac: sw     $v1, +12($a0)         ; GLOBAL 0x3f80000c
  003378b0: lw     $v0, +0($a0)          ; GLOBAL 0x3f800000
  003378b4: lw     $ra, +96($sp)      
  003378b8: lwc1   $s4, +0($sp)       
  003378bc: lw     $s4, +80($sp)      
  003378c0: lw     $s3, +64($sp)      
  003378c4: lw     $s2, +48($sp)      
  003378c8: lw     $s1, +32($sp)      
  003378cc: lw     $s0, +16($sp)      
  003378d0: jr     $ra                
  003378d4: addiu  $sp, $sp, +272     
  003378d8: sll    $zero, $zero, +0   
  003378dc: sll    $zero, $zero, +0   

; globals: 0x006a0000(x3), 0x006a0010(x3), 0x006a0030(x3), 0x3f800000(x3), 0x006a0020(x2), 0x006a0004(x1), 0x3f800004(x1), 0x006a0024(x1), 0x3f800008(x1), 0x3f80000c(x1)
