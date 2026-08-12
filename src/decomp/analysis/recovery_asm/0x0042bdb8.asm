; 0x0042bdb8  FUN_0042bdb8  size=40  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x004318c0
; 10 words

  0042bdb8: addiu  $sp, $sp, -16      
  0042bdbc: dsubu $a1, $zero, $zero   
  0042bdc0: sw     $ra, +0($sp)       
  0042bdc4: jal   0xf04318c0             ; -> 0x004318c0
  0042bdc8: addiu  $a2, $zero, +10    
  0042bdcc: lw     $ra, +0($sp)       
  0042bdd0: spec3c  $zero,$v0,$v0     
  0042bdd4: spec3f  $zero,$v0,$v0     
  0042bdd8: jr     $ra                
  0042bddc: addiu  $sp, $sp, +16      
