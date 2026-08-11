; 0x004075f0  FUN_004075f0  size=400  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=ptr ret=void calls=
; 100 words

  004075f0: addiu  $sp, $sp, -16      
  004075f4: lui   $v1, 0x2aaa0000     
  004075f8: subu   $a1, $a2, +0       
  004075fc: ori    $v1, $v1, -21845   
  00407600: mult   $t0, $v1, +0       
  00407604: sw     $a1, +4($sp)       
  00407608: srl    $t0, $zero, +31    
  0040760c: mfhi   $zero, $zero, +0   
  00407610: sra    $v1, $zero, +1     
  00407614: addu   $a1, $v1, +0       
  00407618: blez   $t0, $zero, +100      ; br -> 0x00407680
  0040761c: sw     $a2, +8($sp)       
  00407620: lw     $a3, +0($a3)       
  00407624: lw     $v1, +4($sp)       
  00407628: sra    $t0, $zero, +1     
  0040762c: regimm $t0, $at, +12         ; br -> 0x0040763c
  00407630: sw     $v1, +12($sp)      
  00407634: addiu  $v1, $t0, +1       
  00407638: sra    $v1, $zero, +1     
  0040763c: lw     $v1, +12($sp)      
  00407640: sll    $a2, $zero, +1     
  00407644: addu   $a2, $a1, +0       
  00407648: sll    $a1, $zero, +2     
  0040764c: addu   $a1, $v1, +0       
  00407650: lw     $v1, +4($a1)       
  00407654: dadd   $a3, $v1, +0       
  00407658: beq    $at, $zero, +48       ; br -> 0x0040768c
  0040765c: sw     $a1, +12($sp)      
  00407660: addiu  $a1, $a1, +12      
  00407664: addiu  $v1, $a2, +1       
  00407668: subu   $v1, $t0, +0       
  0040766c: sw     $a1, +12($sp)      
  00407670: sw     $a1, +4($sp)       
  00407674: sll    $zero, $zero, +0   
  00407678: bgtz   $t0, $zero, -88       ; br -> 0x00447624
  0040767c: sll    $zero, $zero, +0   
  00407680: lw     $v1, +4($sp)       
  00407684: beq    $zero, $zero, +16     ; br -> 0x00407698
  00407688: sw     $v1, +0($a0)       
  0040768c: beq    $zero, $zero, -24     ; br -> 0x00447678
  00407690: dsubu  $zero, $a2, +0     
  00407694: sll    $zero, $zero, +0   
  00407698: jr     $ra                
  0040769c: addiu  $sp, $sp, +16      
  004076a0: lw     $t9, +72($a0)      
  004076a4: addiu  $a0, $a0, -8       
  004076a8: j     0x003ff7d0          
  004076ac: addu   $t9, $a0, +0       
  004076b0: lw     $t9, +72($a0)      
  004076b4: addiu  $a0, $a0, -24      
  004076b8: j     0x003ff870          
  004076bc: addu   $t9, $a0, +0       
  004076c0: lw     $t9, +72($a0)      
  004076c4: addiu  $a0, $a0, -8       
  004076c8: j     0x003ffd00          
  004076cc: addu   $t9, $a0, +0       
  004076d0: lw     $t9, +72($a0)      
  004076d4: addiu  $a0, $a0, -24      
  004076d8: j     0x003ffda0          
  004076dc: addu   $t9, $a0, +0       
  004076e0: addiu  $sp, $sp, -64      
  004076e4: sw     $ra, +16($sp)      
  004076e8: sw     $fp, +0($sp)       
  004076ec: lw     $v0, -31228($gp)   
  004076f0: beq    $v0, $zero, +12       ; br -> 0x00407700
  004076f4: addu   $zero, $sp, +0     
  004076f8: beq    $zero, $zero, +100    ; br -> 0x00407760
  004076fc: addiu  $v0, $gp, -31224   
  00407700: jal   0xf0407780             ; -> 0x00407780
  00407704: sll    $zero, $zero, +0   
  00407708: dsubu  $zero, $v0, +0     
  0040770c: jal   0xf03ff010             ; -> 0x003ff010
  00407710: addiu  $a0, $gp, -31224   
  00407714: lui   $a1, 0x00400000     
  00407718: lui   $a2, 0x00700000     
  0040771c: addiu  $a0, $gp, -31224   
  00407720: addiu  $a1, $a1, -4832    
  00407724: jal   0xf04ba8a0             ; -> 0x004ba8a0
  00407728: addiu  $a2, $a2, -10808   
  0040772c: addiu  $v0, $zero, +1     
  00407730: beq    $zero, $zero, -60     ; br -> 0x004476f8
  00407734: sw     $v0, -31228($gp)   
  00407738: jal   0xf04bab00             ; -> 0x004bab00
  0040773c: addiu  $a0, $fp, +32      
  00407740: sll    $zero, $zero, +0   
  00407744: sll    $zero, $zero, +0   
  00407748: sll    $zero, $zero, +0   
  0040774c: sll    $zero, $zero, +0   
  00407750: sll    $zero, $zero, +0   
  00407754: beq    $zero, $zero, -24     ; br -> 0x00447740
  00407758: sll    $zero, $zero, +0   
  0040775c: sll    $zero, $zero, +0   
  00407760: addu   $zero, $fp, +0     
  00407764: lw     $ra, +16($sp)      
  00407768: lw     $fp, +0($sp)       
  0040776c: jr     $ra                
  00407770: addiu  $sp, $sp, +64      
  00407774: sll    $zero, $zero, +0   
  00407778: sll    $zero, $zero, +0   
  0040777c: sll    $zero, $zero, +0   
