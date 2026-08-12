; 0x001b6340  FUN_001b6340  size=448  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=ptr;a3=w ret=ptr calls=
; 112 words

  001b6340: addiu  $sp, $sp, -96      
  001b6344: addiu  $v0, $zero, +2     
  001b6348: beq    $a3, $v0, +416        ; br -> 0x001b64ec
  001b634c: addiu  $v0, $zero, +1     
  001b6350: beq    $a3, $v0, +52         ; br -> 0x001b6388
  001b6354: sll $zero, $zero, 0       
  001b6358: beq    $a3, $zero, +20       ; br -> 0x001b6370
  001b635c: addiu  $v0, $zero, +3     
  001b6360: beq    $a3, $v0, +12         ; br -> 0x001b6370
  001b6364: sll $zero, $zero, 0       
  001b6368: beq    $zero, $zero, +396    ; br -> 0x001b64f8
  001b636c: addiu  $v0, $zero, +1     
  001b6370: op36    $a1,$at,$zero     
  001b6374: op36    $a2,$v0,$zero     
  001b6378: cop2   $at,$fp,$v0        
  001b637c: op3e    $a1,$at,$zero     
  001b6380: beq    $zero, $zero, +368    ; br -> 0x001b64f4
  001b6384: sll $zero, $zero, 0       
  001b6388: lw     $t1, +4($a0)       
  001b638c: addiu  $t0, $sp, +40      
  001b6390: addiu  $a3, $sp, +36      
  001b6394: addiu  $v1, $sp, +44      
  001b6398: addiu  $v0, $sp, +32      
  001b639c: addiu  $t3, $sp, +80      
  001b63a0: lw     $t1, +120($t1)     
  001b63a4: lw     $t1, +44($t1)      
  001b63a8: lw     $t1, +0($t1)       
  001b63ac: lwc1   $v1, +32($t1)      
  001b63b0: lwc1   $v0, +36($t1)      
  001b63b4: lwc1   $at, +40($t1)      
  001b63b8: lwc1   $zero, +44($t1)    
  001b63bc: swc1   $v1, +32($sp)      
  001b63c0: swc1   $v0, +0($a3)       
  001b63c4: swc1   $at, +0($t0)       
  001b63c8: swc1   $zero, +0($v1)     
  001b63cc: lq     $v0, +0($v0)       
  001b63d0: sq     $v0, +0($t3)       
  001b63d4: lw     $t1, +4($a0)       
  001b63d8: addiu  $t0, $sp, +24      
  001b63dc: addiu  $a3, $sp, +20      
  001b63e0: addiu  $v1, $sp, +28      
  001b63e4: addiu  $v0, $sp, +16      
  001b63e8: addiu  $t2, $sp, +64      
  001b63ec: lw     $t1, +120($t1)     
  001b63f0: lw     $t1, +44($t1)      
  001b63f4: lw     $t1, +0($t1)       
  001b63f8: lwc1   $v1, +16($t1)      
  001b63fc: lwc1   $v0, +20($t1)      
  001b6400: lwc1   $at, +24($t1)      
  001b6404: lwc1   $zero, +28($t1)    
  001b6408: swc1   $v1, +16($sp)      
  001b640c: swc1   $v0, +0($a3)       
  001b6410: swc1   $at, +0($t0)       
  001b6414: swc1   $zero, +0($v1)     
  001b6418: lq     $v0, +0($v0)       
  001b641c: sq     $v0, +0($t2)       
  001b6420: lw     $t1, +4($a0)       
  001b6424: addiu  $t0, $sp, +8       
  001b6428: addiu  $a3, $sp, +4       
  001b642c: addiu  $v1, $sp, +0       
  001b6430: addiu  $v0, $sp, +48      
  001b6434: lw     $t1, +120($t1)     
  001b6438: addiu  $a0, $sp, +12      
  001b643c: lw     $t1, +44($t1)      
  001b6440: lw     $t1, +0($t1)       
  001b6444: lwc1   $v1, +48($t1)      
  001b6448: lwc1   $v0, +52($t1)      
  001b644c: lwc1   $at, +56($t1)      
  001b6450: lwc1   $zero, +60($t1)    
  001b6454: swc1   $v1, +0($sp)       
  001b6458: swc1   $v0, +0($a3)       
  001b645c: swc1   $at, +0($t0)       
  001b6460: swc1   $zero, +0($a0)     
  001b6464: lq     $v1, +0($v1)       
  001b6468: sq     $v1, +0($v0)       
  001b646c: lwc1   $zero, +8($a2)     
  001b6470: fmove  $zero,$zero,$v1    
  001b6474: op36    $t3,$at,$zero     
  001b6478: cop2   $v0,$a1,$v1        
  001b647c: cop2   $at,$fp,$v0        
  001b6480: op3e    $t3,$at,$zero     
  001b6484: lwc1   $zero, +4($a2)     
  001b6488: fmove  $zero,$zero,$v1    
  001b648c: op36    $t2,$at,$zero     
  001b6490: cop2   $v0,$a1,$v1        
  001b6494: cop2   $at,$fp,$v0        
  001b6498: op3e    $t2,$at,$zero     
  001b649c: lwc1   $zero, +0($a2)     
  001b64a0: fmove  $zero,$zero,$v1    
  001b64a4: op36    $v0,$at,$zero     
  001b64a8: cop2   $v0,$a1,$v1        
  001b64ac: cop2   $at,$fp,$v0        
  001b64b0: op3e    $v0,$at,$zero     
  001b64b4: op36    $a1,$at,$zero     
  001b64b8: op36    $t3,$v0,$zero     
  001b64bc: cop2   $at,$fp,$v0        
  001b64c0: op3e    $a1,$at,$zero     
  001b64c4: op36    $a1,$at,$zero     
  001b64c8: op36    $t2,$v0,$zero     
  001b64cc: cop2   $at,$fp,$v0        
  001b64d0: op3e    $a1,$at,$zero     
  001b64d4: op36    $a1,$at,$zero     
  001b64d8: op36    $v0,$v0,$zero     
  001b64dc: cop2   $at,$fp,$v0        
  001b64e0: op3e    $a1,$at,$zero     
  001b64e4: beq    $zero, $zero, +12     ; br -> 0x001b64f4
  001b64e8: sll $zero, $zero, 0       
  001b64ec: lq     $v0, +0($a2)       
  001b64f0: sq     $v0, +0($a1)       
  001b64f4: addiu  $v0, $zero, +1     
  001b64f8: jr     $ra                
  001b64fc: addiu  $sp, $sp, +96      
