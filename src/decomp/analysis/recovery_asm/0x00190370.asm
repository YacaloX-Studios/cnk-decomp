; 0x00190370  FUN_00190370  size=336  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=- ret=void calls=
; 84 words

  00190370: addiu  $sp, $sp, -192     
  00190374: lw     $a2, +148($a0)     
  00190378: lui   $v1, 0x3f800000     
  0019037c: sw     $zero, +144($sp)   
  00190380: fmove  $zero,$a0,$v1      
  00190384: sw     $v1, +148($sp)     
  00190388: sw     $v1, +156($sp)     
  0019038c: fmove  $zero,$a0,$zero    
  00190390: sw     $zero, +152($sp)   
  00190394: addiu  $v1, $sp, +144     
  00190398: addiu  $a1, $sp, +32      
  0019039c: addiu  $a2, $a2, +224     
  001903a0: op36    $v1,$s4,$zero     
  001903a4: op36    $a2,$s5,$zero     
  001903a8: op36    $a2,$s6,$zero     
  001903ac: op36    $a2,$s7,$zero     
  001903b0: cop2   $s5,$fp,$s4        
  001903b4: cop2   $s6,$fp,$s4        
  001903b8: cop2   $s7,$fp,$s4        
  001903bc: op3e    $a1,$s4,$zero     
  001903c0: addiu  $v1, $sp, +160     
  001903c4: lw     $a1, +0($a1)       
  001903c8: sw     $a1, +0($v1)          ; GLOBAL 0x3f800000
  001903cc: addiu  $a1, $sp, +176     
  001903d0: lw     $v1, +0($v1)          ; GLOBAL 0x3f800000
  001903d4: sw     $v1, +0($a1)       
  001903d8: addiu  $v1, $a0, +16      
  001903dc: lw     $a1, +0($a1)       
  001903e0: sw     $a1, +0($v1)          ; GLOBAL 0x3f800000
  001903e4: lw     $a2, +148($a0)     
  001903e8: swc1   $at, +96($sp)      
  001903ec: addiu  $v1, $sp, +96      
  001903f0: addiu  $a1, $sp, +16      
  001903f4: swc1   $at, +100($sp)     
  001903f8: swc1   $zero, +104($sp)   
  001903fc: swc1   $zero, +108($sp)   
  00190400: addiu  $a2, $a2, +224     
  00190404: op36    $v1,$s4,$zero     
  00190408: op36    $a2,$s5,$zero     
  0019040c: op36    $a2,$s6,$zero     
  00190410: op36    $a2,$s7,$zero     
  00190414: cop2   $s5,$fp,$s4        
  00190418: cop2   $s6,$fp,$s4        
  0019041c: cop2   $s7,$fp,$s4        
  00190420: op3e    $a1,$s4,$zero     
  00190424: addiu  $v1, $sp, +112     
  00190428: lw     $a1, +0($a1)       
  0019042c: sw     $a1, +0($v1)          ; GLOBAL 0x3f800000
  00190430: addiu  $a1, $sp, +128     
  00190434: lw     $v1, +0($v1)          ; GLOBAL 0x3f800000
  00190438: sw     $v1, +0($a1)       
  0019043c: addiu  $v1, $a0, +32      
  00190440: lw     $a1, +0($a1)       
  00190444: sw     $a1, +0($v1)          ; GLOBAL 0x3f800000
  00190448: lw     $a2, +148($a0)     
  0019044c: swc1   $zero, +48($sp)    
  00190450: addiu  $v1, $sp, +48      
  00190454: addiu  $a1, $sp, +0       
  00190458: swc1   $zero, +60($sp)    
  0019045c: swc1   $at, +52($sp)      
  00190460: swc1   $at, +56($sp)      
  00190464: addiu  $a2, $a2, +224     
  00190468: op36    $v1,$s4,$zero     
  0019046c: op36    $a2,$s5,$zero     
  00190470: op36    $a2,$s6,$zero     
  00190474: op36    $a2,$s7,$zero     
  00190478: cop2   $s5,$fp,$s4        
  0019047c: cop2   $s6,$fp,$s4        
  00190480: cop2   $s7,$fp,$s4        
  00190484: op3e    $a1,$s4,$zero     
  00190488: addiu  $v1, $sp, +64      
  0019048c: lw     $a1, +0($a1)       
  00190490: sw     $a1, +0($v1)          ; GLOBAL 0x3f800000
  00190494: addiu  $a1, $sp, +80      
  00190498: lw     $v1, +0($v1)          ; GLOBAL 0x3f800000
  0019049c: sw     $v1, +0($a1)       
  001904a0: addiu  $v1, $a0, +48      
  001904a4: lw     $a0, +0($a1)       
  001904a8: sw     $a0, +0($v1)          ; GLOBAL 0x3f800000
  001904ac: jr     $ra                
  001904b0: addiu  $sp, $sp, +192     
  001904b4: sll $zero, $zero, 0       
  001904b8: sll $zero, $zero, 0       
  001904bc: sll $zero, $zero, 0       

; globals: 0x3f800000(x9)
