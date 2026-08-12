; 0x0042c740  FUN_0042c740  size=264  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x004287e0;0x0042c660;0x0042c708
; 66 words

  0042c740: addiu  $sp, $sp, -96      
  0042c744: daddu $t0, $a2, $zero     
  0042c748: sq     $s4, +64($sp)      
  0042c74c: daddu $t1, $zero, $zero   
  0042c750: sq     $s3, +48($sp)      
  0042c754: daddu $s4, $a0, $zero     
  0042c758: sq     $s1, +16($sp)      
  0042c75c: daddu $s3, $a3, $zero     
  0042c760: sq     $ra, +80($sp)      
  0042c764: daddu $s1, $a1, $zero     
  0042c768: sq     $s0, +0($sp)       
  0042c76c: addiu  $a3, $s1, +20      
  0042c770: sq     $s2, +32($sp)      
  0042c774: lw     $s2, +16($s1)      
  0042c778: lw     $v1, +0($a3)       
  0042c77c: addiu  $t1, $t1, +1       
  0042c780: slt $a2, $t1, $s2         
  0042c784: andi   $a0, $v1, -1       
  0042c788: mult   $t0, $a0, +0       
  0042c78c: srl $v1, $v1, 16          
  0042c790: mult   $t0, $v1, +0       
  0042c794: addu $a0, $v0, $s3        
  0042c798: srl $a1, $a0, 16          
  0042c79c: addu $v1, $v1, $a1        
  0042c7a0: andi   $a0, $a0, -1       
  0042c7a4: sll $v0, $v1, 16          
  0042c7a8: srl $s3, $v1, 16          
  0042c7ac: addu $v0, $v0, $a0        
  0042c7b0: sw     $v0, +0($a3)       
  0042c7b4: bne    $a2, $zero, -64       ; br -> 0x0042c778
  0042c7b8: addiu  $a3, $a3, +4       
  0042c7bc: beq    $s3, $zero, +104      ; br -> 0x0042c828
  0042c7c0: daddu $v0, $s1, $zero     
  0042c7c4: lw     $v0, +8($s1)       
  0042c7c8: slt $v0, $s2, $v0         
  0042c7cc: bne    $v0, $zero, +68       ; br -> 0x0042c814
  0042c7d0: sll $v0, $s2, 2           
  0042c7d4: lw     $a1, +4($s1)       
  0042c7d8: daddu $a0, $s4, $zero     
  0042c7dc: jal   0xf042c660             ; -> FUN_0042c660
  0042c7e0: addiu  $a1, $a1, +1       
  0042c7e4: lw     $a2, +16($s1)      
  0042c7e8: daddu $s0, $v0, $zero     
  0042c7ec: addiu  $a1, $s1, +12      
  0042c7f0: addiu  $a0, $s0, +12      
  0042c7f4: sll $a2, $a2, 2           
  0042c7f8: jal   0xf04287e0             ; -> 0x004287e0
  0042c7fc: addiu  $a2, $a2, +8       
  0042c800: daddu $a1, $s1, $zero     
  0042c804: jal   0xf042c708             ; -> 0x0042c708
  0042c808: daddu $a0, $s4, $zero     
  0042c80c: daddu $s1, $s0, $zero     
  0042c810: sll $v0, $s2, 2           
  0042c814: addu $v0, $s1, $v0        
  0042c818: addiu  $s2, $s2, +1       
  0042c81c: sw     $s3, +20($v0)      
  0042c820: sw     $s2, +16($s1)      
  0042c824: daddu $v0, $s1, $zero     
  0042c828: lq     $ra, +80($sp)      
  0042c82c: lq     $s4, +64($sp)      
  0042c830: lq     $s3, +48($sp)      
  0042c834: lq     $s2, +32($sp)      
  0042c838: lq     $s1, +16($sp)      
  0042c83c: lq     $s0, +0($sp)       
  0042c840: jr     $ra                
  0042c844: addiu  $sp, $sp, +96      
