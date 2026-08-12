; 0x00134ec0  FUN_00134ec0  size=112  status=real_logic
; evidence: args=a0=-;a1=-;a2=-;a3=- ret=ptr calls=
; 28 words

  00134ec0: sll $v0, $a1, 5           
  00134ec4: addu $v1, $v0, $a0        
  00134ec8: lw     $v0, +28($v1)      
  00134ecc: beq    $v0, $zero, +44       ; br -> 0x00134efc
  00134ed0: dsubu $v0, $zero, $zero   
  00134ed4: lw     $v0, +44($v1)      
  00134ed8: beq    $v0, $zero, +28       ; br -> 0x00134ef8
  00134edc: sll $zero, $zero, 0       
  00134ee0: lw     $v1, +56($v0)      
  00134ee4: andi   $v1, $v1, +2       
  00134ee8: beq    $v1, $zero, +12       ; br -> 0x00134ef8
  00134eec: sll $zero, $zero, 0       
  00134ef0: beq    $zero, $zero, +8      ; br -> 0x00134efc
  00134ef4: sll $zero, $zero, 0       
  00134ef8: dsubu $v0, $zero, $zero   
  00134efc: jr     $ra                
  00134f00: sll $zero, $zero, 0       
  00134f04: sll $zero, $zero, 0       
  00134f08: sll $zero, $zero, 0       
  00134f0c: sll $zero, $zero, 0       
  00134f10: sll $v0, $a1, 5           
  00134f14: addu $v0, $v0, $a0        
  00134f18: jr     $ra                
  00134f1c: lw     $v0, +52($v0)      
  00134f20: sll $v1, $a1, 5           
  00134f24: addu $v1, $v1, $a0        
  00134f28: jr     $ra                
  00134f2c: sw     $a2, +52($v1)      
