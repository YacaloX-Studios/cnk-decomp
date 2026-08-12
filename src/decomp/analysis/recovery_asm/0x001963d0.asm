; 0x001963d0  FUN_001963d0  size=704  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 176 words

  001963d0: addiu  $sp, $sp, -48      
  001963d4: lui   $v1, 0x3f800000     
  001963d8: fmove  $zero,$a0,$v1      
  001963dc: sw     $v1, +44($sp)      
  001963e0: lbu    $a2, +1064($a0)    
  001963e4: fmove  $zero,$a0,$zero    
  001963e8: lw     $v1, +44($a0)      
  001963ec: sw     $zero, +40($sp)    
  001963f0: sw     $zero, +36($sp)    
  001963f4: sw     $zero, +32($sp)    
  001963f8: lw     $v1, +0($v1)          ; GLOBAL 0x3f800000
  001963fc: beq    $a2, $zero, +36       ; br -> 0x00196424
  00196400: addiu  $a1, $v1, +64      
  00196404: lw     $a3, +44($a0)      
  00196408: addiu  $a2, $sp, +32      
  0019640c: lw     $a3, +0($a3)       
  00196410: addiu  $a3, $a3, +32      
  00196414: lq     $a3, +0($a3)       
  00196418: sq     $a3, +0($a2)       
  0019641c: beq    $zero, $zero, +40     ; br -> 0x00196448
  00196420: addiu  $a3, $sp, +32      
  00196424: swc1   $zero, +0($sp)     
  00196428: addiu  $a3, $sp, +0       
  0019642c: swc1   $zero, +4($sp)     
  00196430: addiu  $a2, $sp, +32      
  00196434: swc1   $v0, +8($sp)       
  00196438: swc1   $v0, +12($sp)      
  0019643c: lq     $a3, +0($a3)       
  00196440: sq     $a3, +0($a2)       
  00196444: addiu  $a3, $sp, +32      
  00196448: lwc1   $v1, +0($a1)       
  0019644c: lwc1   $zero, +0($a3)     
  00196450: lwc1   $at, +4($a1)       
  00196454: f10.1a $v1,$s0,$zero      
  00196458: lwc1   $zero, +4($a3)     
  0019645c: lwc1   $v1, +8($a1)       
  00196460: f10.1e $at,$s0,$zero      
  00196464: lwc1   $zero, +8($a3)     
  00196468: f10.1c $v1,$s0,$zero      
  0019646c: lwc1   $at, +88($a0)      
  00196470: f10.36 $v1,$s0,$at        
  00196474: f8.14  $zero,$t0,$at      
  00196478: f10.7  $at,$s0,$zero      
  0019647c: lw     $a2, +148($v1)        ; GLOBAL 0x3f800094
  00196480: f10.1  $v1,$s0,$at        
  00196484: f10.7  $zero,$s0,$zero    
  00196488: lwc1   $at, +432($a2)     
  0019648c: f10.2  $zero,$s0,$at      
  00196490: f10.3  $zero,$s0,$t4      
  00196494: fmove  $zero,$zero,$a2    
  00196498: op36    $a3,$at,$zero     
  0019649c: cop2   $v0,$a1,$a2        
  001964a0: cop2   $at,$fp,$v0        
  001964a4: op3e    $a3,$at,$zero     
  001964a8: lw     $a2, +148($v1)        ; GLOBAL 0x3f800094
  001964ac: addiu  $a2, $a2, +128     
  001964b0: op36    $a2,$at,$zero     
  001964b4: op36    $a3,$v0,$zero     
  001964b8: cop2   $at,$fp,$v0        
  001964bc: op3e    $a2,$at,$zero     
  001964c0: beq    $zero, $zero, +88     ; br -> 0x0019651c
  001964c4: lwc1   $at, +1068($a0)    
  001964c8: f10.34 $v1,$s0,$zero      
  001964cc: f8.12  $zero,$t0,$zero    
  001964d0: sll $zero, $zero, 0       
  001964d4: lw     $a2, +148($v1)        ; GLOBAL 0x3f800094
  001964d8: f10.0  $v1,$s0,$at        
  001964dc: f10.7  $zero,$s0,$zero    
  001964e0: lwc1   $at, +432($a2)     
  001964e4: f10.2  $zero,$s0,$at      
  001964e8: f10.3  $zero,$s0,$t4      
  001964ec: fmove  $zero,$zero,$a2    
  001964f0: op36    $a3,$at,$zero     
  001964f4: cop2   $v0,$a1,$a2        
  001964f8: cop2   $at,$fp,$v0        
  001964fc: op3e    $a3,$at,$zero     
  00196500: lw     $a2, +148($v1)        ; GLOBAL 0x3f800094
  00196504: addiu  $a2, $a2, +128     
  00196508: op36    $a2,$at,$zero     
  0019650c: op36    $a3,$v0,$zero     
  00196510: cop2   $at,$fp,$v0        
  00196514: op3e    $a2,$at,$zero     
  00196518: lwc1   $at, +1068($a0)    
  0019651c: lwc1   $zero, +84($a0)    
  00196520: f10.36 $at,$s0,$zero      
  00196524: f8.16  $zero,$t0,$at      
  00196528: sll $zero, $zero, 0       
  0019652c: lbu    $a2, +1064($a0)    
  00196530: addiu  $a3, $sp, +24      
  00196534: fmove  $zero,$a0,$zero    
  00196538: sw     $zero, +0($a3)     
  0019653c: swc1   $v0, +28($sp)      
  00196540: sw     $zero, +20($sp)    
  00196544: beq    $a2, $zero, +104      ; br -> 0x001965b0
  00196548: sw     $zero, +16($sp)    
  0019654c: addiu  $a3, $v1, +32      
  00196550: lwc1   $v0, +0($a1)       
  00196554: lwc1   $zero, +0($a3)     
  00196558: lwc1   $at, +4($a1)       
  0019655c: f10.1a $v0,$s0,$zero      
  00196560: lwc1   $zero, +4($a3)     
  00196564: lwc1   $v0, +8($a1)       
  00196568: f10.1e $at,$s0,$zero      
  0019656c: lwc1   $zero, +8($a3)     
  00196570: f10.1c $v0,$s0,$zero      
  00196574: addiu  $a2, $sp, +16      
  00196578: lq     $a3, +0($a3)       
  0019657c: sq     $a3, +0($a2)       
  00196580: f10.7  $zero,$s0,$zero    
  00196584: fmove  $zero,$zero,$a3    
  00196588: op36    $a2,$at,$zero     
  0019658c: cop2   $v0,$a1,$a3        
  00196590: cop2   $at,$fp,$v0        
  00196594: op3e    $a2,$at,$zero     
  00196598: op36    $a2,$at,$zero     
  0019659c: op36    $a1,$v0,$zero     
  001965a0: cop2   $at,$fp,$v0        
  001965a4: op3e    $a2,$at,$zero     
  001965a8: beq    $zero, $zero, +24     ; br -> 0x001965c4
  001965ac: addiu  $a1, $sp, +16      
  001965b0: addiu  $a2, $sp, +16      
  001965b4: lq     $a1, +0($a1)       
  001965b8: sq     $a1, +0($a2)       
  001965bc: swc1   $zero, +0($a3)     
  001965c0: addiu  $a1, $sp, +16      
  001965c4: lwc1   $a2, +0($a1)       
  001965c8: lwc1   $a3, +4($a1)       
  001965cc: lwc1   $t0, +8($a1)       
  001965d0: f10.1a $a2,$s0,$a2        
  001965d4: f10.1e $a3,$s0,$a3        
  001965d8: f10.1c $t0,$s0,$t0        
  001965dc: fmove  $zero,$a0,$zero    
  001965e0: f10.32 $v1,$s0,$zero      
  001965e4: f8.b   $zero,$t0,$at      
  001965e8: sll $zero, $zero, 0       
  001965ec: f10.4  $zero,$s0,$v1      
  001965f0: lwc1   $v0, +0($a1)       
  001965f4: lwc1   $at, +4($a1)       
  001965f8: lwc1   $zero, +8($a1)     
  001965fc: f10.3  $v0,$s0,$v1        
  00196600: f10.3  $at,$s0,$v1        
  00196604: f10.3  $zero,$s0,$v1      
  00196608: swc1   $v0, +0($a1)       
  0019660c: swc1   $at, +4($a1)       
  00196610: swc1   $zero, +8($a1)     
  00196614: lui   $a1, 0x38d10000     
  00196618: ori    $a1, $a1, -18665   
  0019661c: fmove  $zero,$a0,$a1      
  00196620: sll $zero, $zero, 0       
  00196624: f10.36 $v1,$s0,$zero      
  00196628: f8.15  $zero,$t0,$at      
  0019662c: sll $zero, $zero, 0       
  00196630: lw     $a1, +148($v1)        ; GLOBAL 0x3f800094
  00196634: lwc1   $at, +84($a0)      
  00196638: lwc1   $zero, +1068($a0)  
  0019663c: lwc1   $v0, +432($a1)        ; GLOBAL 0x38d101b0
  00196640: f10.1  $zero,$s0,$at      
  00196644: addiu  $a0, $sp, +16      
  00196648: f10.7  $zero,$s0,$zero    
  0019664c: f10.2  $zero,$s0,$v0      
  00196650: f10.3  $zero,$s0,$t4      
  00196654: fmove  $zero,$zero,$a1    
  00196658: op36    $a0,$at,$zero     
  0019665c: cop2   $v0,$a1,$a1        
  00196660: cop2   $at,$fp,$v0        
  00196664: op3e    $a0,$at,$zero     
  00196668: lw     $v1, +148($v1)        ; GLOBAL 0x3f800094
  0019666c: addiu  $v1, $v1, +128     
  00196670: op36    $v1,$at,$zero     
  00196674: op36    $a0,$v0,$zero     
  00196678: cop2   $at,$fp,$v0        
  0019667c: op3e    $v1,$at,$zero     
  00196680: jr     $ra                
  00196684: addiu  $sp, $sp, +48      
  00196688: sll $zero, $zero, 0       
  0019668c: sll $zero, $zero, 0       

; globals: 0x3f800094(x6), 0x3f800000(x1), 0x38d101b0(x1)
