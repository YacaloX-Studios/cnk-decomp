; 0x003a0730  FUN_003a0730  size=704  status=real_c
; evidence: args=a0=ptr;a1=int;a2=ptr;a3=ptr ret=ptr calls=
; 176 words

  003a0730: addiu  $sp, $sp, -160     
  003a0734: addiu  $a1, $a0, +16      
  003a0738: addiu  $v1, $sp, +0       
  003a073c: addiu  $v0, $zero, +19    
  003a0740: dsubu  $zero, $v1, +0     
  003a0744: sw     $zero, +0($a2)     
  003a0748: addiu  $v0, $v0, -1       
  003a074c: sw     $zero, +4($a2)     
  003a0750: addiu  $a2, $a2, +8       
  003a0754: sll    $zero, $zero, +0   
  003a0758: regimm $v0, $at, -24         ; br -> 0x003e0744
  003a075c: sll    $zero, $zero, +0   
  003a0760: dsubu  $zero, $v1, +0     
  003a0764: addiu  $a2, $zero, +4     
  003a0768: lui   $v0, 0x3f800000     
  003a076c: sw     $v0, +0($a3)       
  003a0770: addiu  $a2, $a2, -1       
  003a0774: addiu  $a3, $a3, +36      
  003a0778: sll    $zero, $zero, +0   
  003a077c: sll    $zero, $zero, +0   
  003a0780: regimm $a2, $at, -24         ; br -> 0x003e076c
  003a0784: sll    $zero, $zero, +0   
  003a0788: dsubu  $zero, $zero, +0   
  003a078c: dsubu  $zero, $zero, +0   
  003a0790: lui   $a3, 0x3f800000     
  003a0794: fmove  $zero,$a0,$zero    
  003a0798: fmove  $zero,$a0,$a3      
  003a079c: addu   $a2, $a1, +0       
  003a07a0: dsubu  $zero, $v0, +0     
  003a07a4: lwc1   $zero, +0($a3)        ; GLOBAL 0x3f800000
  003a07a8: f10.3  $v1,$s0,$zero      
  003a07ac: sll    $v0, $zero, +2     
  003a07b0: dsubu  $zero, $a3, +0     
  003a07b4: sll    $zero, $zero, +0   
  003a07b8: addu   $t3, $a1, +0       
  003a07bc: lwc1   $zero, +0($t1)     
  003a07c0: addiu  $t2, $t2, +1       
  003a07c4: slti   $t0, $t2, +5       
  003a07c8: addiu  $t3, $t3, +4       
  003a07cc: f10.2  $zero,$s0,$at      
  003a07d0: bne    $t0, $zero, -32       ; br -> 0x003e07b4
  003a07d4: swc1   $zero, +0($t1)     
  003a07d8: dsubu  $zero, $zero, +0   
  003a07dc: dsubu  $zero, $zero, +0   
  003a07e0: addu   $t2, $v1, +0       
  003a07e4: lwc1   $zero, +0($t0)     
  003a07e8: addiu  $t1, $t1, +1       
  003a07ec: dadd   $t1, $v0, +0       
  003a07f0: addiu  $t2, $t2, +4       
  003a07f4: f10.2  $zero,$s0,$at      
  003a07f8: beq    $at, $zero, -28       ; br -> 0x003e07e0
  003a07fc: swc1   $zero, +0($t0)     
  003a0800: addiu  $t2, $v0, +1       
  003a0804: dsubu  $zero, $a1, +0     
  003a0808: slti   $at, $t2, +5       
  003a080c: beq    $at, $zero, +168      ; br -> 0x003a08b8
  003a0810: dsubu  $zero, $v1, +0     
  003a0814: sll    $zero, $zero, +0   
  003a0818: addiu  $t4, $t4, +32      
  003a081c: addu   $t4, $a2, +0       
  003a0820: lwc1   $a0, +0($t0)       
  003a0824: f10.32 $v0,$s0,$a0        
  003a0828: sll    $zero, $zero, +0   
  003a082c: f8.1d  $zero,$t0,$at      
  003a0830: addiu  $t3, $t3, +32      
  003a0834: dsubu  $zero, $zero, +0   
  003a0838: dsubu  $zero, $zero, +0   
  003a083c: sll    $zero, $zero, +0   
  003a0840: addu   $t5, $v1, +0       
  003a0844: lwc1   $at, +0($t0)       
  003a0848: addiu  $t1, $t1, +1       
  003a084c: dadd   $t1, $v0, +0       
  003a0850: addu   $t5, $t3, +0       
  003a0854: lwc1   $zero, +0($t0)     
  003a0858: addiu  $t5, $t5, +4       
  003a085c: f10.2  $a0,$s0,$at        
  003a0860: f10.1  $zero,$s0,$at      
  003a0864: beq    $at, $zero, -44       ; br -> 0x003e083c
  003a0868: swc1   $zero, +0($t0)     
  003a086c: dsubu  $zero, $v0, +0     
  003a0870: dsubu  $zero, $a3, +0     
  003a0874: sll    $zero, $zero, +0   
  003a0878: addu   $t5, $a1, +0       
  003a087c: lwc1   $at, +0($t0)       
  003a0880: addu   $t5, $t4, +0       
  003a0884: addiu  $t6, $t6, +1       
  003a0888: addiu  $t5, $t5, +4       
  003a088c: lwc1   $zero, +0($t1)     
  003a0890: f10.2  $a0,$s0,$at        
  003a0894: slti   $t0, $t6, +5       
  003a0898: f10.1  $zero,$s0,$at      
  003a089c: bne    $t0, $zero, -44       ; br -> 0x003e0874
  003a08a0: swc1   $zero, +0($t1)     
  003a08a4: sll    $zero, $zero, +0   
  003a08a8: addiu  $t2, $t2, +1       
  003a08ac: slti   $t0, $t2, +5       
  003a08b0: bne    $t0, $zero, -160      ; br -> 0x003e0814
  003a08b4: sll    $zero, $zero, +0   
  003a08b8: addiu  $v0, $v0, +1       
  003a08bc: slti   $a3, $v0, +5       
  003a08c0: addiu  $a1, $a1, +32      
  003a08c4: addiu  $v1, $v1, +32      
  003a08c8: bne    $a3, $zero, -304      ; br -> 0x003e079c
  003a08cc: addiu  $a2, $a2, +4       
  003a08d0: addiu  $t2, $zero, +4     
  003a08d4: addiu  $t4, $zero, +16    
  003a08d8: fmove  $zero,$a0,$zero    
  003a08dc: addiu  $a1, $a1, -32      
  003a08e0: addiu  $v1, $v1, -32      
  003a08e4: addiu  $a3, $t2, -1       
  003a08e8: dsubu  $zero, $a1, +0     
  003a08ec: regimm $a3, $zero, +156      ; br -> 0x003a098c
  003a08f0: dsubu  $zero, $v1, +0     
  003a08f4: sll    $zero, $zero, +0   
  003a08f8: addiu  $t1, $t1, -32      
  003a08fc: addu   $t1, $t4, +0       
  003a0900: lwc1   $v1, +0($v0)          ; GLOBAL 0x3f800000
  003a0904: f10.32 $v0,$s0,$v1        
  003a0908: sll    $zero, $zero, +0   
  003a090c: f8.1b  $zero,$t0,$at      
  003a0910: addiu  $t0, $t0, -32      
  003a0914: addiu  $a2, $zero, +4     
  003a0918: addiu  $t3, $zero, +16    
  003a091c: sll    $zero, $zero, +0   
  003a0920: addu   $t3, $v1, +0       
  003a0924: lwc1   $at, +0($v0)          ; GLOBAL 0x3f800000
  003a0928: addiu  $a2, $a2, -1       
  003a092c: addu   $t3, $t0, +0       
  003a0930: lwc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a0934: addiu  $t3, $t3, -4       
  003a0938: f10.2  $v1,$s0,$at        
  003a093c: f10.1  $zero,$s0,$at      
  003a0940: regimm $a2, $at, -40         ; br -> 0x003e091c
  003a0944: swc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a0948: addiu  $t3, $zero, +4     
  003a094c: addiu  $a2, $zero, +16    
  003a0950: addu   $a2, $a1, +0       
  003a0954: lwc1   $at, +0($v0)          ; GLOBAL 0x3f800000
  003a0958: addiu  $t3, $t3, -1       
  003a095c: dadd   $t2, $t3, +0       
  003a0960: addu   $a2, $t1, +0       
  003a0964: lwc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a0968: addiu  $a2, $a2, -4       
  003a096c: f10.2  $v1,$s0,$at        
  003a0970: f10.1  $zero,$s0,$at      
  003a0974: beq    $at, $zero, -40       ; br -> 0x003e0950
  003a0978: swc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a097c: sll    $zero, $zero, +0   
  003a0980: addiu  $a3, $a3, -1       
  003a0984: regimm $a3, $at, -148        ; br -> 0x003e08f4
  003a0988: sll    $zero, $zero, +0   
  003a098c: sll    $zero, $zero, +0   
  003a0990: addiu  $t2, $t2, -1       
  003a0994: regimm $t2, $at, -188        ; br -> 0x003e08dc
  003a0998: addiu  $t4, $t4, -4       
  003a099c: addiu  $v1, $a0, +16      
  003a09a0: addiu  $v0, $sp, +0       
  003a09a4: addiu  $a0, $zero, +4     
  003a09a8: lwc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003a09ac: addiu  $a0, $a0, -1       
  003a09b0: swc1   $zero, +0($v1)     
  003a09b4: lwc1   $zero, +4($v0)        ; GLOBAL 0x3f800004
  003a09b8: swc1   $zero, +4($v1)     
  003a09bc: lwc1   $zero, +8($v0)        ; GLOBAL 0x3f800008
  003a09c0: swc1   $zero, +8($v1)     
  003a09c4: lwc1   $zero, +12($v0)       ; GLOBAL 0x3f80000c
  003a09c8: swc1   $zero, +12($v1)    
  003a09cc: lwc1   $zero, +16($v0)       ; GLOBAL 0x3f800010
  003a09d0: swc1   $zero, +16($v1)    
  003a09d4: addiu  $v0, $v0, +32      
  003a09d8: regimm $a0, $at, -52         ; br -> 0x003e09a8
  003a09dc: addiu  $v1, $v1, +32      
  003a09e0: dsubu  $zero, $zero, +0   
  003a09e4: jr     $ra                
  003a09e8: addiu  $sp, $sp, +160     
  003a09ec: sll    $zero, $zero, +0   

; globals: 0x3f800000(x9), 0x3f800004(x1), 0x3f800008(x1), 0x3f80000c(x1), 0x3f800010(x1)
