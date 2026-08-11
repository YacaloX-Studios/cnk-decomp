; 0x00530080  FUN_00530080  size=64  status=real_c
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=void calls=
; 16 words

  00530080: lw     $v1, +3($a0)       
  00530084: addiu  $sp, $sp, -16      
  00530088: sw     $v1, +12($sp)      
  0053008c: lw     $v1, +2($a0)       
  00530090: sw     $v1, +13($sp)      
  00530094: lw     $v1, +1($a0)       
  00530098: sw     $v1, +14($sp)      
  0053009c: lw     $v1, +0($a0)       
  005300a0: sw     $v1, +15($sp)      
  005300a4: lw     $v1, +12($sp)      
  005300a8: sw     $v1, +0($a0)       
  005300ac: jr     $ra                
  005300b0: addiu  $sp, $sp, +16      
  005300b4: sll    $zero, $zero, +0   
  005300b8: sll    $zero, $zero, +0   
  005300bc: sll    $zero, $zero, +0   
