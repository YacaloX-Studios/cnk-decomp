; 0x00136110  FUN_00136110  size=224  status=real_logic
; evidence: args=a0=ptr;a1=w;a2=-;a3=- ret=void calls=
; 56 words

  00136110: addiu  $sp, $sp, -32      
  00136114: lwc1   $zero, +164($a0)   
  00136118: addiu  $v1, $sp, +0       
  0013611c: fmove  $zero,$zero,$a2    
  00136120: op36    $a1,$at,$zero     
  00136124: cop2   $v0,$a1,$a2        
  00136128: cop2   $at,$fp,$v0        
  0013612c: op3e    $v1,$at,$zero     
  00136130: addiu  $a1, $sp, +16      
  00136134: lw     $v1, +0($v1)       
  00136138: sw     $v1, +0($a1)       
  0013613c: addiu  $v1, $a0, +96      
  00136140: op36    $v1,$at,$zero     
  00136144: op36    $a1,$v0,$zero     
  00136148: cop2   $at,$fp,$v0        
  0013614c: op3e    $v1,$at,$zero     
  00136150: jr     $ra                
  00136154: addiu  $sp, $sp, +32      
  00136158: sll    $zero, $zero, +0   
  0013615c: sll    $zero, $zero, +0   
  00136160: jr     $ra                
  00136164: dsubu  $zero, $a0, +0     
  00136168: sll    $zero, $zero, +0   
  0013616c: sll    $zero, $zero, +0   
  00136170: dsubu  $zero, $zero, +0   
  00136174: dsubu  $zero, $a0, +0     
  00136178: lw     $v0, +28($v1)      
  0013617c: beq    $v0, $zero, +72       ; br -> 0x001361c8
  00136180: sll    $zero, $zero, +0   
  00136184: lw     $v0, +44($v1)      
  00136188: bne    $v0, $a1, +60         ; br -> 0x001361c8
  0013618c: sll    $zero, $zero, +0   
  00136190: beq    $a2, $zero, +16       ; br -> 0x001361a4
  00136194: sll    $t0, $zero, +5     
  00136198: addu   $a0, $v0, +0       
  0013619c: lw     $v0, +36($v0)      
  001361a0: sw     $v0, +0($a2)       
  001361a4: beq    $a3, $zero, +24       ; br -> 0x001361c0
  001361a8: addiu  $v0, $zero, +1     
  001361ac: sll    $t0, $zero, +5     
  001361b0: addu   $a0, $v0, +0       
  001361b4: lw     $v0, +32($v0)      
  001361b8: sw     $v0, +0($a3)       
  001361bc: addiu  $v0, $zero, +1     
  001361c0: beq    $zero, $zero, +24     ; br -> 0x001361dc
  001361c4: sll    $zero, $zero, +0   
  001361c8: addiu  $t0, $t0, +1       
  001361cc: slti   $v0, $t0, +8       
  001361d0: bne    $v0, $zero, -92       ; br -> 0x00176178
  001361d4: addiu  $v1, $v1, +32      
  001361d8: dsubu  $zero, $zero, +0   
  001361dc: jr     $ra                
  001361e0: sll    $zero, $zero, +0   
  001361e4: sll    $zero, $zero, +0   
  001361e8: sll    $zero, $zero, +0   
  001361ec: sll    $zero, $zero, +0   
