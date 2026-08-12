; 0x002304a0  FUN_002304a0  size=1136  status=real_c
; evidence: args=a0=ptr;a1=w;a2=int;a3=w ret=void calls=
; 284 words

  002304a0: addiu  $sp, $sp, -192     
  002304a4: addiu  $v1, $zero, +3     
  002304a8: beq    $a3, $v1, +260        ; br -> 0x002305b0
  002304ac: sll $zero, $zero, 0       
  002304b0: addiu  $v1, $zero, +4     
  002304b4: beq    $a3, $v1, +248        ; br -> 0x002305b0
  002304b8: sll $zero, $zero, 0       
  002304bc: addiu  $v1, $zero, +2     
  002304c0: beq    $a3, $v1, +28         ; br -> 0x002304e0
  002304c4: addiu  $v1, $zero, +1     
  002304c8: addiu  $v1, $zero, +1     
  002304cc: beq    $a3, $v1, +12         ; br -> 0x002304dc
  002304d0: sll $zero, $zero, 0       
  002304d4: beq    $zero, $zero, +748    ; br -> 0x002307c4
  002304d8: sll $zero, $zero, 0       
  002304dc: addiu  $v1, $zero, +1     
  002304e0: beq    $a2, $v1, +108        ; br -> 0x00230550
  002304e4: sll $zero, $zero, 0       
  002304e8: beq    $a2, $zero, +12       ; br -> 0x002304f8
  002304ec: sll $zero, $zero, 0       
  002304f0: beq    $zero, $zero, +188    ; br -> 0x002305b0
  002304f4: sll $zero, $zero, 0       
  002304f8: beq    $t1, $zero, +36       ; br -> 0x00230520
  002304fc: lui   $v1, 0x43610000     
  00230500: lui   $v1, 0xc3c80000     
  00230504: sw     $zero, +184($sp)   
  00230508: sw     $v1, +176($sp)     
  0023050c: lui   $v1, 0x42fa0000     
  00230510: sw     $v1, +180($sp)     
  00230514: beq    $zero, $zero, +28     ; br -> 0x00230534
  00230518: addiu  $v1, $sp, +176     
  0023051c: lui   $v1, 0x43610000     
  00230520: sw     $zero, +168($sp)   
  00230524: sw     $v1, +160($sp)     
  00230528: lui   $v1, 0x42fa0000     
  0023052c: sw     $v1, +164($sp)     
  00230530: addiu  $v1, $sp, +160     
  00230534: lwc1   $zero, +0($v1)        ; GLOBAL 0x42fa0000
  00230538: swc1   $zero, +0($a0)     
  0023053c: lwc1   $zero, +4($v1)        ; GLOBAL 0x42fa0004
  00230540: swc1   $zero, +4($a0)     
  00230544: lwc1   $zero, +8($v1)        ; GLOBAL 0x42fa0008
  00230548: beq    $zero, $zero, +668    ; br -> 0x002307e8
  0023054c: swc1   $zero, +8($a0)     
  00230550: beq    $t1, $zero, +40       ; br -> 0x0023057c
  00230554: lui   $v1, 0x43610000     
  00230558: lui   $v1, 0xc3c80000     
  0023055c: sw     $zero, +152($sp)   
  00230560: sw     $v1, +144($sp)     
  00230564: addiu  $a1, $sp, +144     
  00230568: lui   $v1, 0x43a20000     
  0023056c: ori    $v1, $v1, -32768   
  00230570: beq    $zero, $zero, +32     ; br -> 0x00230594
  00230574: sw     $v1, +148($sp)     
  00230578: lui   $v1, 0x43610000     
  0023057c: sw     $zero, +136($sp)   
  00230580: sw     $v1, +128($sp)     
  00230584: addiu  $a1, $sp, +128     
  00230588: lui   $v1, 0x43a20000     
  0023058c: ori    $v1, $v1, -32768   
  00230590: sw     $v1, +132($sp)     
  00230594: lwc1   $zero, +0($a1)     
  00230598: swc1   $zero, +0($a0)     
  0023059c: lwc1   $zero, +4($a1)     
  002305a0: swc1   $zero, +4($a0)     
  002305a4: lwc1   $zero, +8($a1)     
  002305a8: beq    $zero, $zero, +572    ; br -> 0x002307e8
  002305ac: swc1   $zero, +8($a0)     
  002305b0: lui   $v1, 0x006f0000     
  002305b4: addiu  $a1, $zero, +4     
  002305b8: lw     $v1, +13752($v1)      ; GLOBAL 0x006f35b8
  002305bc: lw     $a3, +76($v1)         ; GLOBAL 0x006f004c
  002305c0: beq    $a3, $a1, +56         ; br -> 0x002305fc
  002305c4: addiu  $a1, $zero, +3     
  002305c8: addiu  $v1, $zero, +3     
  002305cc: beq    $a3, $v1, +40         ; br -> 0x002305f8
  002305d0: sll $zero, $zero, 0       
  002305d4: addiu  $v1, $zero, +2     
  002305d8: beq    $a3, $v1, +20         ; br -> 0x002305f0
  002305dc: daddu $a1, $a2, $zero     
  002305e0: addiu  $v1, $zero, +1     
  002305e4: beq    $zero, $zero, +72     ; br -> 0x00230630
  002305e8: daddu $a1, $zero, $zero   
  002305ec: daddu $a1, $a2, $zero     
  002305f0: beq    $zero, $zero, +64     ; br -> 0x00230634
  002305f4: addiu  $v1, $zero, +3     
  002305f8: addiu  $a1, $zero, +3     
  002305fc: beq    $a2, $a1, +44         ; br -> 0x0023062c
  00230600: sll $zero, $zero, 0       
  00230604: addiu  $v1, $zero, +2     
  00230608: beq    $a2, $v1, +24         ; br -> 0x00230624
  0023060c: sll $zero, $zero, 0       
  00230610: addiu  $v1, $zero, +1     
  00230614: beq    $a2, $v1, +24         ; br -> 0x00230630
  00230618: sll $zero, $zero, 0       
  0023061c: beq    $zero, $zero, +16     ; br -> 0x00230630
  00230620: daddu $a1, $zero, $zero   
  00230624: beq    $zero, $zero, +8      ; br -> 0x00230630
  00230628: addiu  $a1, $zero, +1     
  0023062c: addiu  $a1, $zero, +2     
  00230630: addiu  $v1, $zero, +3     
  00230634: beq    $a1, $v1, +308        ; br -> 0x0023076c
  00230638: sll $zero, $zero, 0       
  0023063c: addiu  $v1, $zero, +2     
  00230640: beq    $a1, $v1, +208        ; br -> 0x00230714
  00230644: sll $zero, $zero, 0       
  00230648: addiu  $v1, $zero, +1     
  0023064c: beq    $a1, $v1, +108        ; br -> 0x002306bc
  00230650: sll $zero, $zero, 0       
  00230654: beq    $a1, $zero, +12       ; br -> 0x00230664
  00230658: sll $zero, $zero, 0       
  0023065c: beq    $zero, $zero, +356    ; br -> 0x002307c4
  00230660: sll $zero, $zero, 0       
  00230664: beq    $t1, $zero, +36       ; br -> 0x0023068c
  00230668: lui   $v1, 0x42c80000     
  0023066c: lui   $v1, 0xc3c80000     
  00230670: sw     $zero, +120($sp)   
  00230674: sw     $v1, +112($sp)     
  00230678: lui   $v1, 0x42960000     
  0023067c: sw     $v1, +116($sp)     
  00230680: beq    $zero, $zero, +28     ; br -> 0x002306a0
  00230684: addiu  $v1, $sp, +112     
  00230688: lui   $v1, 0x42c80000     
  0023068c: sw     $zero, +104($sp)   
  00230690: sw     $v1, +96($sp)      
  00230694: lui   $v1, 0x42960000     
  00230698: sw     $v1, +100($sp)     
  0023069c: addiu  $v1, $sp, +96      
  002306a0: lwc1   $zero, +0($v1)        ; GLOBAL 0x42960000
  002306a4: swc1   $zero, +0($a0)     
  002306a8: lwc1   $zero, +4($v1)        ; GLOBAL 0x42960004
  002306ac: swc1   $zero, +4($a0)     
  002306b0: lwc1   $zero, +8($v1)        ; GLOBAL 0x42960008
  002306b4: beq    $zero, $zero, +304    ; br -> 0x002307e8
  002306b8: swc1   $zero, +8($a0)     
  002306bc: beq    $t1, $zero, +36       ; br -> 0x002306e4
  002306c0: lui   $v1, 0x42c80000     
  002306c4: lui   $v1, 0xc3c80000     
  002306c8: sw     $zero, +88($sp)    
  002306cc: sw     $v1, +80($sp)      
  002306d0: lui   $v1, 0x43820000     
  002306d4: sw     $v1, +84($sp)      
  002306d8: beq    $zero, $zero, +28     ; br -> 0x002306f8
  002306dc: addiu  $v1, $sp, +80      
  002306e0: lui   $v1, 0x42c80000     
  002306e4: sw     $zero, +72($sp)    
  002306e8: sw     $v1, +64($sp)      
  002306ec: lui   $v1, 0x43820000     
  002306f0: sw     $v1, +68($sp)      
  002306f4: addiu  $v1, $sp, +64      
  002306f8: lwc1   $zero, +0($v1)        ; GLOBAL 0x43820000
  002306fc: swc1   $zero, +0($a0)     
  00230700: lwc1   $zero, +4($v1)        ; GLOBAL 0x43820004
  00230704: swc1   $zero, +4($a0)     
  00230708: lwc1   $zero, +8($v1)        ; GLOBAL 0x43820008
  0023070c: beq    $zero, $zero, +216    ; br -> 0x002307e8
  00230710: swc1   $zero, +8($a0)     
  00230714: beq    $t1, $zero, +36       ; br -> 0x0023073c
  00230718: lui   $v1, 0x43910000     
  0023071c: lui   $v1, 0x442f0000     
  00230720: sw     $zero, +56($sp)    
  00230724: sw     $v1, +48($sp)      
  00230728: lui   $v1, 0x43820000     
  0023072c: sw     $v1, +52($sp)      
  00230730: beq    $zero, $zero, +28     ; br -> 0x00230750
  00230734: addiu  $v1, $sp, +48      
  00230738: lui   $v1, 0x43910000     
  0023073c: sw     $zero, +40($sp)    
  00230740: sw     $v1, +32($sp)      
  00230744: lui   $v1, 0x43820000     
  00230748: sw     $v1, +36($sp)      
  0023074c: addiu  $v1, $sp, +32      
  00230750: lwc1   $zero, +0($v1)        ; GLOBAL 0x43820000
  00230754: swc1   $zero, +0($a0)     
  00230758: lwc1   $zero, +4($v1)        ; GLOBAL 0x43820004
  0023075c: swc1   $zero, +4($a0)     
  00230760: lwc1   $zero, +8($v1)        ; GLOBAL 0x43820008
  00230764: beq    $zero, $zero, +128    ; br -> 0x002307e8
  00230768: swc1   $zero, +8($a0)     
  0023076c: beq    $t1, $zero, +36       ; br -> 0x00230794
  00230770: lui   $v1, 0x43910000     
  00230774: lui   $v1, 0x442f0000     
  00230778: sw     $zero, +24($sp)    
  0023077c: sw     $v1, +16($sp)      
  00230780: lui   $v1, 0x42960000     
  00230784: sw     $v1, +20($sp)      
  00230788: beq    $zero, $zero, +28     ; br -> 0x002307a8
  0023078c: addiu  $v1, $sp, +16      
  00230790: lui   $v1, 0x43910000     
  00230794: sw     $zero, +8($sp)     
  00230798: sw     $v1, +0($sp)       
  0023079c: lui   $v1, 0x42960000     
  002307a0: sw     $v1, +4($sp)       
  002307a4: addiu  $v1, $sp, +0       
  002307a8: lwc1   $zero, +0($v1)        ; GLOBAL 0x42960000
  002307ac: swc1   $zero, +0($a0)     
  002307b0: lwc1   $zero, +4($v1)        ; GLOBAL 0x42960004
  002307b4: swc1   $zero, +4($a0)     
  002307b8: lwc1   $zero, +8($v1)        ; GLOBAL 0x42960008
  002307bc: beq    $zero, $zero, +40     ; br -> 0x002307e8
  002307c0: swc1   $zero, +8($a0)     
  002307c4: fmove  $zero,$a0,$a2      
  002307c8: lui   $v1, 0x42c80000     
  002307cc: fmove  $zero,$a0,$v1      
  002307d0: sll $zero, $zero, 0       
  002307d4: f14.20 $zero,$s4,$zero    
  002307d8: f10.2  $at,$s0,$zero      
  002307dc: swc1   $zero, +0($a0)     
  002307e0: swc1   $zero, +4($a0)     
  002307e4: sw     $zero, +8($a0)     
  002307e8: jr     $ra                
  002307ec: addiu  $sp, $sp, +192     
  002307f0: jr     $ra                
  002307f4: lwc1   $zero, +192($a0)   
  002307f8: sll $zero, $zero, 0       
  002307fc: sll $zero, $zero, 0       
  00230800: lui   $v1, 0x006f0000     
  00230804: lw     $a1, +13752($v1)      ; GLOBAL 0x006f35b8
  00230808: lw     $a1, +76($a1)      
  0023080c: addiu  $v1, $zero, +4     
  00230810: beq    $a1, $v1, +40         ; br -> 0x0023083c
  00230814: sll $zero, $zero, 0       
  00230818: addiu  $v1, $zero, +3     
  0023081c: beq    $a1, $v1, +28         ; br -> 0x0023083c
  00230820: sll $zero, $zero, 0       
  00230824: addiu  $v1, $zero, +2     
  00230828: beq    $a1, $v1, +80         ; br -> 0x0023087c
  0023082c: sll $zero, $zero, 0       
  00230830: addiu  $v1, $zero, +1     
  00230834: beq    $zero, $zero, +68     ; br -> 0x0023087c
  00230838: daddu $a2, $zero, $zero   
  0023083c: addiu  $a1, $zero, +3     
  00230840: beq    $a2, $a1, +52         ; br -> 0x00230878
  00230844: sll $zero, $zero, 0       
  00230848: addiu  $v1, $zero, +2     
  0023084c: beq    $a2, $v1, +32         ; br -> 0x00230870
  00230850: sll $zero, $zero, 0       
  00230854: addiu  $v1, $zero, +1     
  00230858: beq    $a2, $v1, +12         ; br -> 0x00230868
  0023085c: sll $zero, $zero, 0       
  00230860: beq    $zero, $zero, +24     ; br -> 0x0023087c
  00230864: daddu $a2, $zero, $zero   
  00230868: beq    $zero, $zero, +16     ; br -> 0x0023087c
  0023086c: daddu $a2, $a1, $zero     
  00230870: beq    $zero, $zero, +8      ; br -> 0x0023087c
  00230874: addiu  $a2, $zero, +1     
  00230878: addiu  $a2, $zero, +2     
  0023087c: beq    $a2, $zero, +28       ; br -> 0x0023089c
  00230880: lui   $v1, 0x42200000     
  00230884: addiu  $v1, $zero, +3     
  00230888: beq    $a2, $v1, +12         ; br -> 0x00230898
  0023088c: sll $zero, $zero, 0       
  00230890: beq    $zero, $zero, +24     ; br -> 0x002308ac
  00230894: lui   $v1, 0x43820000     
  00230898: lui   $v1, 0x42200000     
  0023089c: fmove  $zero,$a0,$v1      
  002308a0: beq    $zero, $zero, +16     ; br -> 0x002308b4
  002308a4: addiu  $v1, $zero, +2     
  002308a8: lui   $v1, 0x43820000     
  002308ac: fmove  $zero,$a0,$v1      
  002308b0: addiu  $v1, $zero, +2     
  002308b4: beq    $a2, $v1, +40         ; br -> 0x002308e0
  002308b8: lui   $v1, 0x442f0000     
  002308bc: addiu  $v1, $zero, +3     
  002308c0: beq    $a2, $v1, +24         ; br -> 0x002308dc
  002308c4: sll $zero, $zero, 0       
  002308c8: slti   $at, $a3, +3       
  002308cc: bne    $at, $zero, +12       ; br -> 0x002308dc
  002308d0: sll $zero, $zero, 0       
  002308d4: beq    $zero, $zero, +24     ; br -> 0x002308f0
  002308d8: lui   $v1, 0xc3c80000     
  002308dc: lui   $v1, 0x442f0000     
  002308e0: fmove  $zero,$a0,$v1      
  002308e4: beq    $zero, $zero, +16     ; br -> 0x002308f8
  002308e8: swc1   $zero, +0($a0)     
  002308ec: lui   $v1, 0xc3c80000     
  002308f0: fmove  $zero,$a0,$v1      
  002308f4: swc1   $zero, +0($a0)     
  002308f8: swc1   $at, +4($a0)       
  002308fc: jr     $ra                
  00230900: sw     $zero, +8($a0)     
  00230904: sll $zero, $zero, 0       
  00230908: sll $zero, $zero, 0       
  0023090c: sll $zero, $zero, 0       

; globals: 0x006f35b8(x2), 0x42960000(x2), 0x42960004(x2), 0x42960008(x2), 0x43820000(x2), 0x43820004(x2), 0x43820008(x2), 0x42fa0000(x1), 0x42fa0004(x1), 0x42fa0008(x1)
