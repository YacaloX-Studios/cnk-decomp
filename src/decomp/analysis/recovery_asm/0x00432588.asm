; 0x00432588  FUN_00432588  size=536  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x003fb150;0x003fb210;0x003fb748;0x00431f70
; 134 words

  00432588: addiu  $sp, $sp, -64      
  0043258c: sw     $s1, +16($sp)      
  00432590: sw     $ra, +48($sp)      
  00432594: dsubu  $zero, $a0, +0     
  00432598: sw     $s2, +32($sp)      
  0043259c: sw     $s0, +0($sp)       
  004325a0: dsubu  $zero, $s1, +0     
  004325a4: spec3f  $zero,$v0,$s0     
  004325a8: spec3c  $zero,$v0,$v1     
  004325ac: spec3f  $zero,$v1,$v1     
  004325b0: lui   $v0, 0x000f0000     
  004325b4: ori    $v0, $v0, -1       
  004325b8: dadd   $s0, $v0, +0       
  004325bc: bne    $v0, $zero, +80       ; br -> 0x00432610
  004325c0: dsubu  $zero, $zero, +0   
  004325c4: lui   $v0, 0x7fff0000     
  004325c8: ori    $v0, $v0, -1       
  004325cc: and    $v0, $s0, +0       
  004325d0: or     $v1, $v0, +0       
  004325d4: bne    $v0, $zero, +16       ; br -> 0x004325e8
  004325d8: lui   $v1, 0x006a0000     
  004325dc: beq    $zero, $zero, +312    ; br -> 0x00432718
  004325e0: lw     $v0, +19888($v1)      ; GLOBAL 0x006a4db0
  004325e4: sll    $zero, $zero, +0   
  004325e8: regimm $s0, $at, +12         ; br -> 0x004325f8
  004325ec: dsubu  $zero, $s1, +0     
  004325f0: beq    $zero, $zero, +292    ; br -> 0x00432718
  004325f4: dsubu  $zero, $zero, +0   
  004325f8: ori    $a1, $zero, -31072 
  004325fc: spec3c  $zero,$a1,$a1     
  00432600: jal   0xf03fb210             ; -> 0x003fb210
  00432604: addiu  $s2, $zero, -54    
  00432608: dsubu  $zero, $v0, +0     
  0043260c: spec3f  $zero,$v0,$s0     
  00432610: lui   $v0, 0x7fef0000     
  00432614: ori    $v0, $v0, -1       
  00432618: dadd   $s0, $v0, +0       
  0043261c: bnel   $v0, $zero, +232      ; br -> 0x00432708
  00432620: dsubu  $zero, $s1, +0     
  00432624: sra    $s0, $zero, +20    
  00432628: addiu  $a0, $s2, -1023    
  0043262c: addu   $v0, $a0, +0       
  00432630: lui   $v1, 0x000f0000     
  00432634: srl    $s2, $zero, +31    
  00432638: addiu  $v0, $zero, +1023  
  0043263c: subu   $a0, $v0, +0       
  00432640: ori    $v1, $v1, -1       
  00432644: and    $v1, $s0, +0       
  00432648: sll    $v0, $zero, +20    
  0043264c: or     $v0, $v1, +0       
  00432650: jal   0xf03fb748             ; -> 0x003fb748
  00432654: addu   $a0, $s2, +0       
  00432658: dsubu  $zero, $s1, +0     
  0043265c: addiu  $a0, $zero, -1     
  00432660: spec3e  $zero,$a0,$a0     
  00432664: and    $a0, $v1, +0       
  00432668: spec3c  $zero,$s0,$a1     
  0043266c: or     $a1, $v1, +0       
  00432670: dsubu  $zero, $v0, +0     
  00432674: jal   0xf0431f70             ; -> 0x00431f70
  00432678: dsubu  $zero, $s1, +0     
  0043267c: ori    $a1, $zero, -2713  
  00432680: spec38  $zero,$a1,$a1     
  00432684: ori    $a1, $a1, -1076    
  00432688: spec38  $zero,$a1,$a1     
  0043268c: ori    $a1, $a1, -28791   
  00432690: spec38  $zero,$a1,$a1     
  00432694: ori    $a1, $a1, +2870    
  00432698: dsubu  $zero, $v0, +0     
  0043269c: jal   0xf03fb210             ; -> 0x003fb210
  004326a0: dsubu  $zero, $s2, +0     
  004326a4: ori    $a1, $zero, -145   
  004326a8: spec38  $zero,$a1,$a1     
  004326ac: ori    $a1, $a1, -18511   
  004326b0: spec38  $zero,$a1,$a1     
  004326b4: ori    $a1, $a1, -23332   
  004326b8: spec38  $zero,$a1,$a1     
  004326bc: ori    $a1, $a1, +1294    
  004326c0: dsubu  $zero, $v0, +0     
  004326c4: jal   0xf03fb210             ; -> 0x003fb210
  004326c8: dsubu  $zero, $s1, +0     
  004326cc: dsubu  $zero, $s0, +0     
  004326d0: jal   0xf03fb150             ; -> 0x003fb150
  004326d4: dsubu  $zero, $v0, +0     
  004326d8: ori    $a1, $zero, -179   
  004326dc: spec38  $zero,$a1,$a1     
  004326e0: ori    $a1, $a1, -32150   
  004326e4: spec38  $zero,$a1,$a1     
  004326e8: ori    $a1, $a1, -24736   
  004326ec: spec38  $zero,$a1,$a1     
  004326f0: dsubu  $zero, $v0, +0     
  004326f4: jal   0xf03fb210             ; -> 0x003fb210
  004326f8: dsubu  $zero, $s2, +0     
  004326fc: dsubu  $zero, $s0, +0     
  00432700: beq    $zero, $zero, +12     ; br -> 0x00432710
  00432704: dsubu  $zero, $v0, +0     
  00432708: dsubu  $zero, $a0, +0     
  0043270c: sll    $zero, $zero, +0   
  00432710: jal   0xf03fb150             ; -> 0x003fb150
  00432714: sll    $zero, $zero, +0   
  00432718: lw     $ra, +48($sp)      
  0043271c: lw     $s2, +32($sp)      
  00432720: lw     $s1, +16($sp)      
  00432724: lw     $s0, +0($sp)       
  00432728: jr     $ra                
  0043272c: addiu  $sp, $sp, +64      
  00432730: blez   $a1, $zero, +100      ; br -> 0x00432798
  00432734: addiu  $a1, $a1, -1       
  00432738: addu   $a1, $a0, +0       
  0043273c: lw     $v0, +0($v1)          ; GLOBAL 0x000f0000
  00432740: slti   $v0, $v0, +53      
  00432744: bne    $v0, $zero, +80       ; br -> 0x00432798
  00432748: addiu  $a3, $zero, +48    
  0043274c: addiu  $a2, $zero, +57    
  00432750: sw     $a3, +0($v1)          ; GLOBAL 0x000f0000
  00432754: sll    $zero, $zero, +0   
  00432758: addiu  $a1, $a1, -1       
  0043275c: blez   $a1, $zero, +20       ; br -> 0x00432774
  00432760: addiu  $v1, $v1, -1       
  00432764: lw     $v0, +0($v1)          ; GLOBAL 0x000f0000
  00432768: sll    $zero, $zero, +0   
  0043276c: beql   $v0, $a2, -24         ; br -> 0x00472758
  00432770: sw     $a3, +0($v1)          ; GLOBAL 0x000f0000
  00432774: addu   $a1, $a0, +0       
  00432778: addiu  $v1, $zero, +57    
  0043277c: lw     $v0, +0($a0)       
  00432780: bne    $v0, $v1, +12         ; br -> 0x00432790
  00432784: lw     $a1, +0($a0)       
  00432788: jr     $ra                
  0043278c: dsubu  $zero, $zero, +0   
  00432790: addiu  $v0, $a1, +1       
  00432794: sw     $v0, +0($a0)       
  00432798: jr     $ra                
  0043279c: addiu  $v0, $zero, +1     

; globals: 0x000f0000(x4), 0x006a4db0(x1)
