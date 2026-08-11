; 0x001dbea0  FUN_001dbea0  size=64  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 16 words

  001dbea0: addiu  $sp, $sp, -16      
  001dbea4: dsubu  $zero, $a0, +0     
  001dbea8: lwc1   $v1, +0($a1)       
  001dbeac: lwc1   $v0, +4($a1)       
  001dbeb0: lwc1   $at, +8($a1)       
  001dbeb4: lwc1   $zero, +12($a1)    
  001dbeb8: swc1   $v1, +0($a0)       
  001dbebc: swc1   $v0, +4($a0)       
  001dbec0: swc1   $at, +8($a0)       
  001dbec4: swc1   $v1, +0($sp)       
  001dbec8: swc1   $v0, +4($sp)       
  001dbecc: swc1   $at, +8($sp)       
  001dbed0: swc1   $zero, +12($a0)    
  001dbed4: jr     $ra                
  001dbed8: addiu  $sp, $sp, +16      
  001dbedc: sll    $zero, $zero, +0   
