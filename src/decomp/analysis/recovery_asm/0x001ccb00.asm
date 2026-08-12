; 0x001ccb00  FUN_001ccb00  size=64  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 16 words

  001ccb00: addiu  $sp, $sp, -16      
  001ccb04: dsubu $v0, $a0, $zero     
  001ccb08: lwc1   $v1, +0($a1)       
  001ccb0c: lwc1   $v0, +4($a1)       
  001ccb10: lwc1   $at, +8($a1)       
  001ccb14: lwc1   $zero, +12($a1)    
  001ccb18: swc1   $v1, +0($a0)       
  001ccb1c: swc1   $v0, +4($a0)       
  001ccb20: swc1   $at, +8($a0)       
  001ccb24: swc1   $v1, +0($sp)       
  001ccb28: swc1   $v0, +4($sp)       
  001ccb2c: swc1   $at, +8($sp)       
  001ccb30: swc1   $zero, +12($a0)    
  001ccb34: jr     $ra                
  001ccb38: addiu  $sp, $sp, +16      
  001ccb3c: sll $zero, $zero, 0       
