; 0x0010ee50  FUN_0010ee50  size=480  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=int ret=ptr calls=
; 120 words

  0010ee50: addiu  $sp, $sp, -16      
  0010ee54: lw     $t0, +12($a0)      
  0010ee58: lw     $v0, +16($a0)      
  0010ee5c: addu $v1, $t0, $a1        
  0010ee60: daddu $at, $v0, $v1       
  0010ee64: bne    $at, $zero, +336      ; br -> 0x0010efb8
  0010ee68: dsubu $v0, $zero, $zero   
  0010ee6c: andi   $v0, $t0, +7       
  0010ee70: sw     $zero, +12($sp)    
  0010ee74: dsubu $t1, $a1, $zero     
  0010ee78: dsubu $t2, $zero, $zero   
  0010ee7c: bne    $v0, $zero, +88       ; br -> 0x0010eed8
  0010ee80: srl $v1, $a1, 3           
  0010ee84: beq    $v1, $zero, +80       ; br -> 0x0010eed8
  0010ee88: sll $zero, $zero, 0       
  0010ee8c: srl $t2, $t2, 3           
  0010ee90: srl $t0, $t0, 3           
  0010ee94: andi   $t1, $t1, +7       
  0010ee98: beq    $v1, $zero, +292      ; br -> 0x0010efc0
  0010ee9c: addiu  $t3, $v1, -1       
  0010eea0: addu $v0, $t2, $sp        
  0010eea4: addiu  $a3, $v0, +12      
  0010eea8: lw     $a2, +4($a0)       
  0010eeac: addu $v0, $a2, $t0        
  0010eeb0: addiu  $t2, $t2, +1       
  0010eeb4: lw     $v1, +0($v0)       
  0010eeb8: addiu  $t0, $t0, +1       
  0010eebc: dsubu $v0, $t3, $zero     
  0010eec0: sw     $v1, +0($a3)       
  0010eec4: addiu  $t3, $t3, -1       
  0010eec8: bne    $v0, $zero, -32       ; br -> 0x0010eeac
  0010eecc: addiu  $a3, $a3, +1       
  0010eed0: beq    $zero, $zero, +240    ; br -> 0x0010efc4
  0010eed4: sll $t0, $t0, 3           
  0010eed8: beq    $t1, $zero, +240      ; br -> 0x0010efcc
  0010eedc: sll $zero, $zero, 0       
  0010eee0: andi   $a2, $t2, +7       
  0010eee4: addiu  $v0, $zero, +8     
  0010eee8: subu $a3, $v0, $a2        
  0010eeec: andi   $v1, $t0, +7       
  0010eef0: daddu $at, $t1, $a3       
  0010eef4: beq    $at, $zero, +8        ; br -> 0x0010ef00
  0010eef8: subu $v0, $v0, $v1        
  0010eefc: dsubu $a3, $t1, $zero     
  0010ef00: daddu $at, $a3, $v0       
  0010ef04: movz   $a3, $v0, $at      
  0010ef08: addiu  $v0, $zero, +8     
  0010ef0c: bne    $a3, $v0, +16         ; br -> 0x0010ef20
  0010ef10: srl $t3, $t2, 3           
  0010ef14: beq    $zero, $zero, +40     ; br -> 0x0010ef40
  0010ef18: dsubu $t4, $zero, $zero   
  0010ef1c: srl $t3, $t2, 3           
  0010ef20: addiu  $v0, $zero, +1     
  0010ef24: addu $t3, $t3, $sp        
  0010ef28: sllv $v0, $v0, $a3        
  0010ef2c: lw     $t3, +12($t3)      
  0010ef30: addiu  $v0, $v0, -1       
  0010ef34: sllv $v0, $v0, $a2        
  0010ef38: nor $v0, $v0, $zero       
  0010ef3c: and $t4, $t3, $v0         
  0010ef40: srl $v0, $t2, 3           
  0010ef44: addiu  $t3, $zero, +8     
  0010ef48: addu $v0, $v0, $sp        
  0010ef4c: addiu  $v0, $v0, +12      
  0010ef50: bne    $a3, $t3, +24         ; br -> 0x0010ef6c
  0010ef54: sw     $t4, +0($v0)       
  0010ef58: lw     $v1, +4($a0)       
  0010ef5c: srl $t3, $t0, 3           
  0010ef60: addu $v1, $v1, $t3        
  0010ef64: beq    $zero, $zero, +40     ; br -> 0x0010ef90
  0010ef68: lw     $v1, +0($v1)       
  0010ef6c: lw     $t4, +4($a0)       
  0010ef70: srl $t5, $t0, 3           
  0010ef74: addiu  $t3, $zero, +1     
  0010ef78: sllv $t3, $t3, $a3        
  0010ef7c: addiu  $t3, $t3, -1       
  0010ef80: addu $t4, $t4, $t5        
  0010ef84: lw     $t4, +0($t4)       
  0010ef88: srav $v1, $t4, $v1        
  0010ef8c: and $v1, $t3, $v1         
  0010ef90: sllv $a2, $v1, $a2        
  0010ef94: addu $t2, $t2, $a3        
  0010ef98: lw     $v1, +0($v0)       
  0010ef9c: andi   $a2, $a2, +255     
  0010efa0: addu $t0, $t0, $a3        
  0010efa4: subu $t1, $t1, $a3        
  0010efa8: or $v1, $v1, $a2          
  0010efac: beq    $zero, $zero, -216    ; br -> 0x0010eed8
  0010efb0: sw     $v1, +0($v0)       
  0010efb4: dsubu $v0, $zero, $zero   
  0010efb8: beq    $zero, $zero, +36     ; br -> 0x0010efe0
  0010efbc: addiu  $sp, $sp, +16      
  0010efc0: sll $t0, $t0, 3           
  0010efc4: beq    $zero, $zero, -240    ; br -> 0x0010eed8
  0010efc8: sll $t2, $t2, 3           
  0010efcc: lw     $v1, +12($a0)      
  0010efd0: lw     $v0, +12($sp)      
  0010efd4: addu $v1, $v1, $a1        
  0010efd8: sw     $v1, +12($a0)      
  0010efdc: addiu  $sp, $sp, +16      
  0010efe0: jr     $ra                
  0010efe4: sll $zero, $zero, 0       
  0010efe8: sll $zero, $zero, 0       
  0010efec: sll $zero, $zero, 0       
  0010eff0: jr     $ra                
  0010eff4: sll $zero, $zero, 0       
  0010eff8: sll $zero, $zero, 0       
  0010effc: sll $zero, $zero, 0       
  0010f000: jr     $ra                
  0010f004: addiu  $v0, $zero, +1     
  0010f008: sll $zero, $zero, 0       
  0010f00c: sll $zero, $zero, 0       
  0010f010: jr     $ra                
  0010f014: dsubu $v0, $zero, $zero   
  0010f018: sll $zero, $zero, 0       
  0010f01c: sll $zero, $zero, 0       
  0010f020: jr     $ra                
  0010f024: dsubu $v0, $zero, $zero   
  0010f028: sll $zero, $zero, 0       
  0010f02c: sll $zero, $zero, 0       
