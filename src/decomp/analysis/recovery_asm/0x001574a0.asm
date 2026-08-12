; 0x001574a0  FUN_001574a0  size=512  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 128 words

  001574a0: addiu  $sp, $sp, -16      
  001574a4: lw     $v1, +4($a0)       
  001574a8: lui   $v0, 0x3f800000     
  001574ac: fmove  $zero,$a0,$v0      
  001574b0: lwc1   $zero, +40($a1)    
  001574b4: lw     $v0, +8($v1)       
  001574b8: lwc1   $v0, +172($v0)        ; GLOBAL 0x3f8000ac
  001574bc: f10.3  $v0,$s0,$zero      
  001574c0: sll $zero, $zero, 0       
  001574c4: sll $zero, $zero, 0       
  001574c8: f10.34 $at,$s0,$zero      
  001574cc: f8.3   $zero,$t0,$zero    
  001574d0: sll $zero, $zero, 0       
  001574d4: beq    $zero, $zero, +12     ; br -> 0x001574e4
  001574d8: lui   $v0, 0x3f800000     
  001574dc: f10.6  $zero,$s0,$zero    
  001574e0: lui   $v0, 0x3f800000     
  001574e4: lw     $v1, +8($a1)       
  001574e8: fmove  $zero,$a0,$v0      
  001574ec: sll $zero, $zero, 0       
  001574f0: f10.1  $zero,$s0,$at      
  001574f4: addiu  $v0, $zero, +1     
  001574f8: swc1   $zero, +12($sp)    
  001574fc: lw     $a0, +12($sp)      
  00157500: sw     $a0, +24($v1)      
  00157504: jr     $ra                
  00157508: addiu  $sp, $sp, +16      
  0015750c: sll $zero, $zero, 0       
  00157510: lw     $v0, +4($a0)       
  00157514: lw     $v0, +8($v0)          ; GLOBAL 0x3f800008
  00157518: jr     $ra                
  0015751c: lbu    $v0, +176($v0)        ; GLOBAL 0x3f8000b0
  00157520: lw     $v0, +4($a0)       
  00157524: lw     $v0, +2228($v0)       ; GLOBAL 0x3f8008b4
  00157528: nor $v0, $v0, $zero       
  0015752c: sltu $v0, $zero, $v0      
  00157530: xori   $v0, $v0, +1       
  00157534: bne    $v0, $zero, +24       ; br -> 0x00157550
  00157538: sll $zero, $zero, 0       
  0015753c: lui   $v0, 0x006f0000     
  00157540: lw     $v0, +15152($v0)      ; GLOBAL 0x006f3b30
  00157544: lw     $v0, +340($v0)        ; GLOBAL 0x006f0154
  00157548: slti   $v0, $v0, +2       
  0015754c: xori   $v0, $v0, +1       
  00157550: jr     $ra                
  00157554: andi   $v0, $v0, +255     
  00157558: sll $zero, $zero, 0       
  0015755c: sll $zero, $zero, 0       
  00157560: lw     $v0, +8($a0)       
  00157564: lw     $v0, +4($v0)          ; GLOBAL 0x006f0004
  00157568: andi   $v0, $v0, +1024    
  0015756c: jr     $ra                
  00157570: sltu $v0, $zero, $v0      
  00157574: sll $zero, $zero, 0       
  00157578: sll $zero, $zero, 0       
  0015757c: sll $zero, $zero, 0       
  00157580: lw     $v0, +8($a0)       
  00157584: lw     $v0, +8($v0)          ; GLOBAL 0x006f0008
  00157588: andi   $v0, $v0, +2048    
  0015758c: jr     $ra                
  00157590: sltu $v0, $zero, $v0      
  00157594: sll $zero, $zero, 0       
  00157598: sll $zero, $zero, 0       
  0015759c: sll $zero, $zero, 0       
  001575a0: lw     $v0, +8($a0)       
  001575a4: lw     $v0, +4($v0)          ; GLOBAL 0x006f0004
  001575a8: andi   $v0, $v0, +2048    
  001575ac: jr     $ra                
  001575b0: sltu $v0, $zero, $v0      
  001575b4: sll $zero, $zero, 0       
  001575b8: sll $zero, $zero, 0       
  001575bc: sll $zero, $zero, 0       
  001575c0: lw     $t3, +40($a0)      
  001575c4: lui   $a3, 0x006a0000     
  001575c8: lui   $a2, 0x006a0000     
  001575cc: lui   $a1, 0x006a0000     
  001575d0: lui   $v1, 0x006a0000     
  001575d4: lui   $v0, 0x006a0000     
  001575d8: lw     $t1, +36($a0)      
  001575dc: addiu  $t0, $zero, -1     
  001575e0: addiu  $a3, $a3, -10064   
  001575e4: addiu  $a2, $a2, -10072   
  001575e8: addiu  $a1, $a1, -10080   
  001575ec: addiu  $v1, $v1, -10088   
  001575f0: sll $t2, $t3, 2           
  001575f4: addiu  $v0, $v0, -10096   
  001575f8: addu $t3, $t2, $t3        
  001575fc: sll $t2, $t3, 2           
  00157600: addu $t2, $t3, $t2        
  00157604: sll $t2, $t2, 2           
  00157608: addu $t1, $t1, $t2        
  0015760c: sw     $zero, +76($t1)    
  00157610: sw     $zero, +96($t1)    
  00157614: sw     $zero, +92($t1)    
  00157618: sw     $zero, +88($t1)    
  0015761c: sw     $zero, +84($t1)    
  00157620: sw     $zero, +80($t1)    
  00157624: sw     $zero, +72($t1)    
  00157628: sw     $zero, +60($t1)    
  0015762c: sw     $t0, +68($t1)      
  00157630: sw     $t0, +64($t1)      
  00157634: sw     $a3, +0($t1)       
  00157638: sw     $a2, +12($t1)      
  0015763c: sw     $a1, +24($t1)      
  00157640: sw     $v1, +36($t1)      
  00157644: sw     $v0, +48($t1)      
  00157648: sw     $a3, +4($t1)       
  0015764c: sw     $a2, +16($t1)      
  00157650: sw     $a1, +28($t1)      
  00157654: sw     $v1, +40($t1)      
  00157658: sw     $v0, +52($t1)      
  0015765c: sw     $a3, +8($t1)       
  00157660: sw     $a2, +20($t1)      
  00157664: sw     $a1, +32($t1)      
  00157668: sw     $v1, +44($t1)      
  0015766c: sw     $v0, +56($t1)      
  00157670: lw     $a1, +40($a0)      
  00157674: addiu  $v1, $a1, +1       
  00157678: sll $v0, $a1, 2           
  0015767c: addu $a1, $v0, $a1        
  00157680: sw     $v1, +40($a0)      
  00157684: lw     $v0, +36($a0)      
  00157688: sll $v1, $a1, 2           
  0015768c: addu $v1, $a1, $v1        
  00157690: sll $v1, $v1, 2           
  00157694: jr     $ra                
  00157698: addu $v0, $v0, $v1        
  0015769c: sll $zero, $zero, 0       

; globals: 0x006f0004(x2), 0x3f8000ac(x1), 0x3f800008(x1), 0x3f8000b0(x1), 0x3f8008b4(x1), 0x006f3b30(x1), 0x006f0154(x1), 0x006f0008(x1)
