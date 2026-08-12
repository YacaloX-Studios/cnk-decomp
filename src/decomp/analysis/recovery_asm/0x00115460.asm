; 0x00115460  FUN_00115460  size=768  status=real_logic
; evidence: args=a0=-;a1=-;a2=-;a3=- ret=void calls=
; 192 words

  00115460: lui   $v0, 0x00050000     
  00115464: jr     $ra                
  00115468: ori    $v0, $v0, -9204    
  0011546c: sll $zero, $zero, 0       
  00115470: addiu  $v0, $zero, +2     
  00115474: beq    $a1, $v0, +76         ; br -> 0x001154c4
  00115478: lui   $v0, 0x00040000     
  0011547c: addiu  $v0, $zero, +1     
  00115480: beq    $a1, $v0, +44         ; br -> 0x001154b0
  00115484: addiu  $v1, $a0, +4       
  00115488: beq    $a1, $zero, +12       ; br -> 0x00115498
  0011548c: lui   $at, 0x00010000     
  00115490: beq    $zero, $zero, +76     ; br -> 0x001154e0
  00115494: dsubu $v0, $zero, $zero   
  00115498: ori    $at, $at, +6468    
  0011549c: addu $v1, $a0, $at        
  001154a0: addiu  $a0, $zero, +12    
  001154a4: sw     $a0, +0($a2)       
  001154a8: beq    $zero, $zero, +52     ; br -> 0x001154e0
  001154ac: sw     $v1, +0($a3)       
  001154b0: lui   $a0, 0x00010000     
  001154b4: ori    $a0, $a0, +6464    
  001154b8: sw     $a0, +0($a2)       
  001154bc: beq    $zero, $zero, +32     ; br -> 0x001154e0
  001154c0: sw     $v1, +0($a3)       
  001154c4: lui   $v1, 0x00010000     
  001154c8: ori    $v0, $v0, -15680   
  001154cc: addu $v1, $a0, $v1        
  001154d0: sw     $v0, +0($a2)       
  001154d4: lw     $v1, +6492($v1)       ; GLOBAL 0x0001195c
  001154d8: addiu  $v0, $zero, +1     
  001154dc: sw     $v1, +0($a3)       
  001154e0: jr     $ra                
  001154e4: sll $zero, $zero, 0       
  001154e8: sll $zero, $zero, 0       
  001154ec: sll $zero, $zero, 0       
  001154f0: addiu  $v0, $zero, +2     
  001154f4: beq    $a1, $v0, +76         ; br -> 0x00115544
  001154f8: lui   $v0, 0x00040000     
  001154fc: addiu  $v0, $zero, +1     
  00115500: beq    $a1, $v0, +44         ; br -> 0x00115530
  00115504: addiu  $v1, $a0, +4       
  00115508: beq    $a1, $zero, +12       ; br -> 0x00115518
  0011550c: lui   $at, 0x00010000     
  00115510: beq    $zero, $zero, +76     ; br -> 0x00115560
  00115514: dsubu $v0, $zero, $zero   
  00115518: ori    $at, $at, +6468    
  0011551c: addu $v1, $a0, $at        
  00115520: addiu  $a0, $zero, +12    
  00115524: sw     $a0, +0($a2)       
  00115528: beq    $zero, $zero, +52     ; br -> 0x00115560
  0011552c: sw     $v1, +0($a3)       
  00115530: lui   $a0, 0x00010000     
  00115534: ori    $a0, $a0, +6464    
  00115538: sw     $a0, +0($a2)       
  0011553c: beq    $zero, $zero, +32     ; br -> 0x00115560
  00115540: sw     $v1, +0($a3)       
  00115544: lui   $v1, 0x00010000     
  00115548: ori    $v0, $v0, -15680   
  0011554c: addu $v1, $a0, $v1        
  00115550: sw     $v0, +0($a2)       
  00115554: lw     $v1, +6492($v1)       ; GLOBAL 0x0001195c
  00115558: addiu  $v0, $zero, +1     
  0011555c: sw     $v1, +0($a3)       
  00115560: jr     $ra                
  00115564: sll $zero, $zero, 0       
  00115568: sll $zero, $zero, 0       
  0011556c: sll $zero, $zero, 0       
  00115570: lui   $v1, 0x00010000     
  00115574: lui   $t3, 0x00010000     
  00115578: addu $v1, $a0, $v1        
  0011557c: dsubu $t2, $t3, $zero     
  00115580: lw     $t7, +6468($v1)       ; GLOBAL 0x00011944
  00115584: lui   $a1, 0xff000000     
  00115588: lui   $t1, 0x00010000     
  0011558c: lui   $a3, 0x00010000     
  00115590: dsubu $t0, $t1, $zero     
  00115594: addu $t3, $a0, $t3        
  00115598: addu $t2, $a0, $t2        
  0011559c: addu $t1, $a0, $t1        
  001155a0: addu $t0, $a0, $t0        
  001155a4: addu $a3, $a0, $a3        
  001155a8: dsubu $a2, $zero, $zero   
  001155ac: lui   $v1, 0x00ff0000     
  001155b0: and $t5, $t7, $a1         
  001155b4: and $t4, $t7, $v1         
  001155b8: srl $t5, $t5, 24          
  001155bc: srl $t4, $t4, 8           
  001155c0: addu $t6, $t5, $t4        
  001155c4: andi   $t4, $t7, -256     
  001155c8: sll $t5, $t4, 8           
  001155cc: andi   $t4, $t7, +255     
  001155d0: addu $t5, $t5, $t6        
  001155d4: sll $t4, $t4, 24          
  001155d8: addu $t4, $t4, $t5        
  001155dc: sw     $t4, +6468($t3)       ; GLOBAL 0x00011944
  001155e0: lw     $t5, +6472($t2)    
  001155e4: and $t3, $t5, $a1         
  001155e8: and $t2, $t5, $v1         
  001155ec: srl $t3, $t3, 24          
  001155f0: srl $t2, $t2, 8           
  001155f4: addu $t4, $t3, $t2        
  001155f8: andi   $t2, $t5, -256     
  001155fc: sll $t3, $t2, 8           
  00115600: andi   $t2, $t5, +255     
  00115604: addu $t3, $t3, $t4        
  00115608: sll $t2, $t2, 24          
  0011560c: addu $t2, $t2, $t3        
  00115610: sw     $t2, +6472($t1)       ; GLOBAL 0x00011948
  00115614: lw     $t3, +6476($t0)    
  00115618: and $t1, $t3, $a1         
  0011561c: and $t0, $t3, $v1         
  00115620: srl $t1, $t1, 24          
  00115624: srl $t0, $t0, 8           
  00115628: addu $t2, $t1, $t0        
  0011562c: andi   $t0, $t3, -256     
  00115630: sll $t1, $t0, 8           
  00115634: andi   $t0, $t3, +255     
  00115638: addu $t1, $t1, $t2        
  0011563c: sll $t0, $t0, 24          
  00115640: addu $t0, $t0, $t1        
  00115644: sw     $t0, +6476($a3)       ; GLOBAL 0x0001194c
  00115648: lw     $t3, +4($a0)          ; GLOBAL 0x00010004
  0011564c: addiu  $a2, $a2, +1       
  00115650: slti   $a3, $a2, +6000    
  00115654: and $t1, $t3, $a1         
  00115658: and $t0, $t3, $v1         
  0011565c: srl $t1, $t1, 24          
  00115660: srl $t0, $t0, 8           
  00115664: addu $t2, $t1, $t0        
  00115668: andi   $t0, $t3, -256     
  0011566c: sll $t1, $t0, 8           
  00115670: andi   $t0, $t3, +255     
  00115674: addu $t1, $t1, $t2        
  00115678: sll $t0, $t0, 24          
  0011567c: addu $t0, $t0, $t1        
  00115680: sw     $t0, +4($a0)          ; GLOBAL 0x00010004
  00115684: lw     $t3, +8($a0)          ; GLOBAL 0x00010008
  00115688: and $t1, $t3, $a1         
  0011568c: and $t0, $t3, $v1         
  00115690: srl $t1, $t1, 24          
  00115694: srl $t0, $t0, 8           
  00115698: addu $t2, $t1, $t0        
  0011569c: andi   $t0, $t3, -256     
  001156a0: sll $t1, $t0, 8           
  001156a4: andi   $t0, $t3, +255     
  001156a8: addu $t1, $t1, $t2        
  001156ac: sll $t0, $t0, 24          
  001156b0: addu $t0, $t0, $t1        
  001156b4: sw     $t0, +8($a0)          ; GLOBAL 0x00010008
  001156b8: lw     $t3, +12($a0)         ; GLOBAL 0x0001000c
  001156bc: and $t1, $t3, $a1         
  001156c0: and $t0, $t3, $v1         
  001156c4: srl $t1, $t1, 24          
  001156c8: srl $t0, $t0, 8           
  001156cc: addu $t2, $t1, $t0        
  001156d0: andi   $t0, $t3, -256     
  001156d4: sll $t1, $t0, 8           
  001156d8: andi   $t0, $t3, +255     
  001156dc: addu $t1, $t1, $t2        
  001156e0: sll $t0, $t0, 24          
  001156e4: addu $t0, $t0, $t1        
  001156e8: sw     $t0, +12($a0)         ; GLOBAL 0x0001000c
  001156ec: bne    $a3, $zero, -168      ; br -> 0x00115648
  001156f0: addiu  $a0, $a0, +12      
  001156f4: jr     $ra                
  001156f8: sll $zero, $zero, 0       
  001156fc: sll $zero, $zero, 0       
  00115700: lw     $a1, +8($a0)          ; GLOBAL 0x00010008
  00115704: lui   $v1, 0xff000000     
  00115708: lui   $v0, 0x00ff0000     
  0011570c: and $v1, $a1, $v1         
  00115710: and $v0, $a1, $v0         
  00115714: srl $v1, $v1, 24          
  00115718: srl $v0, $v0, 8           
  0011571c: addu $a0, $v1, $v0        
  00115720: andi   $v0, $a1, -256     
  00115724: sll $v1, $v0, 8           
  00115728: andi   $v0, $a1, +255     
  0011572c: addu $v1, $v1, $a0        
  00115730: sll $v0, $v0, 24          
  00115734: jr     $ra                
  00115738: addu $v0, $v0, $v1        
  0011573c: sll $zero, $zero, 0       
  00115740: sw     $a1, +0($a0)          ; GLOBAL 0x00010000
  00115744: dsubu $v0, $a0, $zero     
  00115748: sw     $zero, +4($a0)        ; GLOBAL 0x00010004
  0011574c: jr     $ra                
  00115750: sw     $zero, +8($a0)        ; GLOBAL 0x00010008
  00115754: sll $zero, $zero, 0       
  00115758: sll $zero, $zero, 0       
  0011575c: sll $zero, $zero, 0       

; globals: 0x00010008(x4), 0x00010004(x3), 0x0001195c(x2), 0x00011944(x2), 0x0001000c(x2), 0x00011948(x1), 0x0001194c(x1), 0x00010000(x1)
