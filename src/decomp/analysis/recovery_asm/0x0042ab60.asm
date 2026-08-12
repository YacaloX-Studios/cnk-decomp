; 0x0042ab60  FUN_0042ab60  size=104  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ptr calls=0x00429880
; 26 words

  0042ab60: addiu  $sp, $sp, -32      
  0042ab64: dsubu $v0, $a1, $zero     
  0042ab68: sw     $s0, +0($sp)       
  0042ab6c: dsubu $a3, $a2, $zero     
  0042ab70: sw     $ra, +16($sp)      
  0042ab74: dsubu $s0, $a0, $zero     
  0042ab78: dsubu $a2, $v0, $zero     
  0042ab7c: lw     $a0, +84($s0)      
  0042ab80: jal   0xf0429880             ; -> FUN_00429880
  0042ab84: lw     $a1, +14($s0)      
  0042ab88: spec3c  $zero,$v0,$v1     
  0042ab8c: spec3f  $zero,$v1,$v1     
  0042ab90: regimm $v1, $v0, +20         ; br -> 0x0042aba8
  0042ab94: lw     $v0, +12($s0)      
  0042ab98: lw     $v0, +80($s0)      
  0042ab9c: addu $v0, $v0, $v1        
  0042aba0: beq    $zero, $zero, +12     ; br -> 0x0042abb0
  0042aba4: sw     $v0, +80($s0)      
  0042aba8: andi   $v0, $v0, -4097    
  0042abac: sw     $v0, +12($s0)      
  0042abb0: lw     $ra, +16($sp)      
  0042abb4: dsubu $v0, $v1, $zero     
  0042abb8: lw     $s0, +0($sp)       
  0042abbc: jr     $ra                
  0042abc0: addiu  $sp, $sp, +32      
  0042abc4: sll $zero, $zero, 0       
