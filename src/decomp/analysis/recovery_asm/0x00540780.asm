; 0x00540780  FUN_00540780  size=112  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=int calls=
; 28 words

  00540780: lw     $v0, +88($a0)      
  00540784: bne    $v0, $zero, +32       ; br -> 0x005407a8
  00540788: dsubu $v0, $zero, $zero   
  0054078c: lw     $v1, +84($a0)      
  00540790: addiu  $v0, $zero, +2     
  00540794: beq    $v1, $v0, +12         ; br -> 0x005407a4
  00540798: sll $zero, $zero, 0       
  0054079c: bne    $a1, $zero, +16       ; br -> 0x005407b0
  005407a0: sll $zero, $zero, 0       
  005407a4: dsubu $v0, $zero, $zero   
  005407a8: beq    $zero, $zero, +16     ; br -> 0x005407bc
  005407ac: sll $zero, $zero, 0       
  005407b0: lw     $v1, +80($a0)      
  005407b4: addiu  $v0, $zero, +1     
  005407b8: sw     $v1, +0($a1)       
  005407bc: jr     $ra                
  005407c0: sll $zero, $zero, 0       
  005407c4: sll $zero, $zero, 0       
  005407c8: sll $zero, $zero, 0       
  005407cc: sll $zero, $zero, 0       
  005407d0: addiu  $v1, $zero, +1     
  005407d4: sw     $v1, +88($a0)      
  005407d8: sw     $zero, +84($a0)    
  005407dc: jr     $ra                
  005407e0: sw     $a1, +81($a0)      
  005407e4: sll $zero, $zero, 0       
  005407e8: sll $zero, $zero, 0       
  005407ec: sll $zero, $zero, 0       
