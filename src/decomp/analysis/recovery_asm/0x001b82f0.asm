; 0x001b82f0  FUN_001b82f0  size=144  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 36 words

  001b82f0: addiu  $sp, $sp, -16      
  001b82f4: lwc1   $v1, +0($a1)       
  001b82f8: lwc1   $v0, +4($a1)       
  001b82fc: lwc1   $at, +8($a1)       
  001b8300: lwc1   $zero, +12($sp)    
  001b8304: swc1   $v1, +0($a0)       
  001b8308: swc1   $v0, +4($a0)       
  001b830c: swc1   $at, +8($a0)       
  001b8310: swc1   $v1, +0($sp)       
  001b8314: swc1   $v0, +4($sp)       
  001b8318: swc1   $at, +8($sp)       
  001b831c: swc1   $zero, +12($a0)    
  001b8320: jr     $ra                
  001b8324: addiu  $sp, $sp, +16      
  001b8328: sll    $zero, $zero, +0   
  001b832c: sll    $zero, $zero, +0   
  001b8330: jr     $ra                
  001b8334: swc1   $t4, +144($a0)     
  001b8338: sll    $zero, $zero, +0   
  001b833c: sll    $zero, $zero, +0   
  001b8340: addiu  $v1, $a0, +128     
  001b8344: lw     $a0, +0($a1)       
  001b8348: sw     $a0, +0($v1)       
  001b834c: jr     $ra                
  001b8350: sll    $zero, $zero, +0   
  001b8354: sll    $zero, $zero, +0   
  001b8358: sll    $zero, $zero, +0   
  001b835c: sll    $zero, $zero, +0   
  001b8360: lw     $v0, +148($a0)     
  001b8364: beq    $v0, $zero, +12       ; br -> 0x001b8374
  001b8368: addiu  $v0, $zero, +1     
  001b836c: beq    $zero, $zero, +8      ; br -> 0x001b8378
  001b8370: dsubu  $zero, $zero, +0   
  001b8374: sw     $v0, +148($a0)     
  001b8378: jr     $ra                
  001b837c: sll    $zero, $zero, +0   
