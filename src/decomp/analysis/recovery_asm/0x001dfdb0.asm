; 0x001dfdb0  FUN_001dfdb0  size=64  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 16 words

  001dfdb0: addiu  $sp, $sp, -16      
  001dfdb4: dsubu $v0, $a0, $zero     
  001dfdb8: lwc1   $v1, +0($a1)       
  001dfdbc: lwc1   $v0, +4($a1)       
  001dfdc0: lwc1   $at, +8($a1)       
  001dfdc4: lwc1   $zero, +12($a1)    
  001dfdc8: swc1   $v1, +0($a0)       
  001dfdcc: swc1   $v0, +4($a0)       
  001dfdd0: swc1   $at, +8($a0)       
  001dfdd4: swc1   $v1, +0($sp)       
  001dfdd8: swc1   $v0, +4($sp)       
  001dfddc: swc1   $at, +8($sp)       
  001dfde0: swc1   $zero, +12($a0)    
  001dfde4: jr     $ra                
  001dfde8: addiu  $sp, $sp, +16      
  001dfdec: sll $zero, $zero, 0       
