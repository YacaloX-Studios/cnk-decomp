; 0x0019a560  FUN_0019a560  size=544  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=void calls=
; 136 words

  0019a560: addiu  $sp, $sp, -96      
  0019a564: addiu  $v1, $zero, +1     
  0019a568: lui   $a3, 0x006a0000     
  0019a56c: sw     $v1, +64($a0)      
  0019a570: addiu  $a3, $a3, +8544    
  0019a574: addiu  $a2, $sp, +80      
  0019a578: lw     $a1, +0($a3)          ; GLOBAL 0x006a0000
  0019a57c: sw     $a1, +0($a2)       
  0019a580: addiu  $a1, $a0, +16      
  0019a584: lw     $a2, +0($a2)       
  0019a588: sw     $a2, +0($a1)       
  0019a58c: addiu  $a2, $sp, +64      
  0019a590: lw     $a1, +0($a3)          ; GLOBAL 0x006a0000
  0019a594: sw     $a1, +0($a2)       
  0019a598: addiu  $a1, $a0, +32      
  0019a59c: lw     $a2, +0($a2)       
  0019a5a0: sw     $a2, +0($a1)       
  0019a5a4: addiu  $a2, $sp, +48      
  0019a5a8: lw     $a1, +0($a3)          ; GLOBAL 0x006a0000
  0019a5ac: sw     $a1, +0($a2)       
  0019a5b0: addiu  $a1, $a0, +48      
  0019a5b4: lw     $a2, +0($a2)       
  0019a5b8: sw     $a2, +0($a1)       
  0019a5bc: sw     $zero, +136($a0)   
  0019a5c0: fmove  $zero,$a0,$zero    
  0019a5c4: sw     $zero, +152($a0)   
  0019a5c8: addiu  $a2, $sp, +32      
  0019a5cc: lw     $a1, +0($a3)          ; GLOBAL 0x006a0000
  0019a5d0: sw     $a1, +0($a2)       
  0019a5d4: addiu  $a1, $a0, +160     
  0019a5d8: lw     $a2, +0($a2)       
  0019a5dc: sw     $a2, +0($a1)       
  0019a5e0: sw     $zero, +176($a0)   
  0019a5e4: lui   $t0, 0x3f800000     
  0019a5e8: sw     $zero, +177($a0)   
  0019a5ec: lui   $a1, 0x461c0000     
  0019a5f0: swc1   $at, +148($a0)     
  0019a5f4: ori    $a1, $a1, +16384   
  0019a5f8: sw     $zero, +184($a0)   
  0019a5fc: addiu  $a3, $zero, +12    
  0019a600: swc1   $at, +180($a0)     
  0019a604: sw     $t0, +24($sp)      
  0019a608: sw     $a1, +188($a0)     
  0019a60c: fmove  $zero,$a0,$t0      
  0019a610: sw     $v1, +356($a0)     
  0019a614: swc1   $at, +16($sp)      
  0019a618: swc1   $at, +68($a0)      
  0019a61c: sw     $t0, +28($sp)      
  0019a620: swc1   $at, +72($a0)      
  0019a624: addiu  $a2, $sp, +16      
  0019a628: swc1   $at, +80($a0)      
  0019a62c: addiu  $a1, $a0, +112     
  0019a630: swc1   $at, +76($a0)      
  0019a634: swc1   $at, +84($a0)      
  0019a638: sw     $zero, +88($a0)    
  0019a63c: swc1   $at, +20($sp)      
  0019a640: sw     $zero, +89($a0)    
  0019a644: sw     $zero, +90($a0)    
  0019a648: sw     $zero, +91($a0)    
  0019a64c: sw     $zero, +92($a0)    
  0019a650: sw     $zero, +93($a0)    
  0019a654: sw     $zero, +94($a0)    
  0019a658: sw     $zero, +95($a0)    
  0019a65c: sw     $zero, +96($a0)    
  0019a660: sw     $zero, +97($a0)    
  0019a664: sw     $zero, +137($a0)   
  0019a668: swc1   $at, +208($a0)     
  0019a66c: swc1   $at, +212($a0)     
  0019a670: swc1   $at, +216($a0)     
  0019a674: swc1   $at, +220($a0)     
  0019a678: swc1   $at, +140($a0)     
  0019a67c: sw     $t0, +192($a0)     
  0019a680: swc1   $at, +240($a0)     
  0019a684: sw     $zero, +244($a0)   
  0019a688: sw     $zero, +245($a0)   
  0019a68c: swc1   $at, +248($a0)     
  0019a690: swc1   $at, +276($a0)     
  0019a694: swc1   $at, +280($a0)     
  0019a698: sw     $zero, +273($a0)   
  0019a69c: sw     $zero, +272($a0)   
  0019a6a0: swc1   $at, +252($a0)     
  0019a6a4: sw     $zero, +256($a0)   
  0019a6a8: sw     $zero, +260($a0)   
  0019a6ac: swc1   $at, +264($a0)     
  0019a6b0: swc1   $at, +268($a0)     
  0019a6b4: swc1   $at, +328($a0)     
  0019a6b8: sw     $a3, +288($a0)     
  0019a6bc: sw     $zero, +357($a0)   
  0019a6c0: sw     $zero, +98($a0)    
  0019a6c4: lw     $a2, +0($a2)       
  0019a6c8: sw     $a2, +0($a1)          ; GLOBAL 0x461c0000
  0019a6cc: lui   $a1, 0x006f0000     
  0019a6d0: sw     $zero, +128($a0)   
  0019a6d4: lw     $a3, +21472($a1)      ; GLOBAL 0x006f53e0
  0019a6d8: swc1   $zero, +12($sp)    
  0019a6dc: addiu  $a2, $sp, +0       
  0019a6e0: swc1   $at, +0($sp)       
  0019a6e4: swc1   $at, +4($sp)       
  0019a6e8: swc1   $at, +8($sp)       
  0019a6ec: addiu  $a3, $a3, +4       
  0019a6f0: addiu  $a1, $a0, +368     
  0019a6f4: sw     $a3, +132($a0)     
  0019a6f8: lw     $a2, +0($a2)       
  0019a6fc: sw     $a2, +0($a1)          ; GLOBAL 0x006f0000
  0019a700: swc1   $at, +388($a0)     
  0019a704: addiu  $a1, $zero, -1     
  0019a708: swc1   $at, +384($a0)     
  0019a70c: swc1   $at, +392($a0)     
  0019a710: swc1   $at, +396($a0)     
  0019a714: swc1   $at, +400($a0)     
  0019a718: swc1   $at, +404($a0)     
  0019a71c: swc1   $at, +408($a0)     
  0019a720: sw     $zero, +412($a0)   
  0019a724: sw     $zero, +416($a0)   
  0019a728: swc1   $at, +420($a0)     
  0019a72c: sw     $zero, +144($a0)   
  0019a730: swc1   $at, +224($a0)     
  0019a734: swc1   $at, +228($a0)     
  0019a738: sw     $zero, +236($a0)   
  0019a73c: swc1   $at, +232($a0)     
  0019a740: swc1   $at, +332($a0)     
  0019a744: sw     $v1, +336($a0)     
  0019a748: swc1   $at, +432($a0)     
  0019a74c: sw     $a1, +196($a0)     
  0019a750: sw     $a1, +200($a0)     
  0019a754: sw     $a1, +204($a0)     
  0019a758: sw     $zero, +436($a0)   
  0019a75c: sw     $zero, +440($a0)   
  0019a760: sw     $zero, +444($a0)   
  0019a764: sw     $zero, +448($a0)   
  0019a768: sw     $zero, +452($a0)   
  0019a76c: sw     $zero, +456($a0)   
  0019a770: jr     $ra                
  0019a774: addiu  $sp, $sp, +96      
  0019a778: sll $zero, $zero, 0       
  0019a77c: sll $zero, $zero, 0       

; globals: 0x006a0000(x4), 0x461c0000(x1), 0x006f53e0(x1), 0x006f0000(x1)
