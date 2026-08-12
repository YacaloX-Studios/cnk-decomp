; 0x001c3910  FUN_001c3910  size=208  status=real_c
; evidence: args=a0=ptr;a1=int;a2=ptr;a3=int ret=ptr calls=
; 52 words

  001c3910: addiu  $sp, $sp, -32      
  001c3914: lui   $v0, 0x006d0000     
  001c3918: sw     $a1, +0($a0)       
  001c391c: addiu  $v0, $v0, -14640   
  001c3920: sw     $v0, +4($a0)       
  001c3924: addiu  $v1, $zero, +32    
  001c3928: sw     $a2, +8($a0)       
  001c392c: lui   $v0, 0x006d0000     
  001c3930: sb     $a3, +12($a0)      
  001c3934: addiu  $v0, $v0, -9120    
  001c3938: sw     $v1, +16($a0)      
  001c393c: lui   $t0, 0x3f800000     
  001c3940: sw     $v0, +4($a0)       
  001c3944: addiu  $a3, $sp, +8       
  001c3948: sw     $zero, +20($a0)    
  001c394c: addiu  $v0, $sp, +12      
  001c3950: sw     $zero, +40($a0)    
  001c3954: addiu  $a1, $sp, +4       
  001c3958: sw     $zero, +36($a0)    
  001c395c: addiu  $v1, $sp, +16      
  001c3960: sw     $zero, +32($a0)    
  001c3964: sw     $t0, +44($a0)      
  001c3968: sw     $zero, +72($a0)    
  001c396c: sw     $zero, +68($a0)    
  001c3970: sw     $zero, +64($a0)    
  001c3974: sw     $t0, +76($a0)      
  001c3978: lwc1   $v0, +12($a2)      
  001c397c: sw     $t0, +0($v0)          ; GLOBAL 0x006d0000
  001c3980: lwc1   $at, +16($a2)      
  001c3984: addiu  $v0, $sp, +0       
  001c3988: lwc1   $zero, +20($a2)    
  001c398c: swc1   $v0, +0($sp)       
  001c3990: swc1   $at, +0($a1)       
  001c3994: swc1   $zero, +0($a3)     
  001c3998: lq     $v0, +0($v0)          ; GLOBAL 0x006d0000
  001c399c: sq     $v0, +0($v1)       
  001c39a0: addiu  $v0, $a0, +32      
  001c39a4: lq     $v1, +0($v1)       
  001c39a8: sq     $v1, +0($v0)          ; GLOBAL 0x006d0000
  001c39ac: lwc1   $zero, +32($a2)    
  001c39b0: addiu  $v1, $a2, +32      
  001c39b4: addiu  $v0, $a0, +64      
  001c39b8: addiu  $v1, $v1, +16      
  001c39bc: swc1   $zero, +48($a0)    
  001c39c0: lq     $v1, +0($v1)       
  001c39c4: sq     $v1, +0($v0)          ; GLOBAL 0x006d0000
  001c39c8: daddu $v0, $a0, $zero     
  001c39cc: jr     $ra                
  001c39d0: addiu  $sp, $sp, +32      
  001c39d4: sll $zero, $zero, 0       
  001c39d8: sll $zero, $zero, 0       
  001c39dc: sll $zero, $zero, 0       

; globals: 0x006d0000(x4)
