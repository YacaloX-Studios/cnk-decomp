; 0x0042bfa8  FUN_0042bfa8  size=240  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ret calls=0x00108ee8;0x0042c098
; 60 words

  0042bfa8: addiu  $sp, $sp, -96      
  0042bfac: lui   $v1, 0x00650000     
  0042bfb0: sq     $s4, +64($sp)      
  0042bfb4: sq     $s3, +48($sp)      
  0042bfb8: daddu $s4, $v1, $zero     
  0042bfbc: sq     $ra, +80($sp)      
  0042bfc0: sq     $s1, +16($sp)      
  0042bfc4: sq     $s0, +0($sp)       
  0042bfc8: lw     $v0, +30548($v1)      ; GLOBAL 0x00657754
  0042bfcc: sq     $s2, +32($sp)      
  0042bfd0: lw     $s2, +328($v0)     
  0042bfd4: beq    $s2, $zero, +72       ; br -> 0x0042c020
  0042bfd8: daddu $s3, $a0, $zero     
  0042bfdc: lw     $s0, +4($s2)       
  0042bfe0: addiu  $s0, $s0, -1       
  0042bfe4: regimm $s0, $zero, +44       ; br -> 0x0042c014
  0042bfe8: sll $v0, $s0, 2           
  0042bfec: addiu  $v0, $v0, +8       
  0042bff0: addu $s1, $v0, $s2        
  0042bff4: lw     $v0, +0($s1)       
  0042bff8: addiu  $s0, $s0, -1       
  0042bffc: jalr   $v0, $ra           
  0042c000: addiu  $s1, $s1, -4       
  0042c004: sll $zero, $zero, 0       
  0042c008: sll $zero, $zero, 0       
  0042c00c: regimm $s0, $v1, -24         ; br -> 0x0042bff8
  0042c010: lw     $v0, +0($s1)       
  0042c014: lw     $s2, +0($s2)       
  0042c018: bnel   $s2, $zero, -60       ; br -> 0x0042bfe0
  0042c01c: lw     $s0, +4($s2)       
  0042c020: lw     $a0, +30548($s4)   
  0042c024: lw     $v0, +60($a0)      
  0042c028: beq    $v0, $zero, +12       ; br -> 0x0042c038
  0042c02c: sll $zero, $zero, 0       
  0042c030: jalr   $v0, $ra           
  0042c034: sll $zero, $zero, 0       
  0042c038: jal   0xf0108ee8             ; -> FUN_00108ee8
  0042c03c: daddu $a0, $s3, $zero     
  0042c040: daddu $v0, $a0, $zero     
  0042c044: lui   $v1, 0x00650000     
  0042c048: addiu  $sp, $sp, -16      
  0042c04c: daddu $a2, $a1, $zero     
  0042c050: lw     $a0, +30548($v1)      ; GLOBAL 0x00657754
  0042c054: sq     $ra, +0($sp)       
  0042c058: jal   0xf042c098             ; -> 0x0042c098
  0042c05c: daddu $a1, $v0, $zero     
  0042c060: lq     $ra, +0($sp)       
  0042c064: jr     $ra                
  0042c068: addiu  $sp, $sp, +16      
  0042c06c: sll $zero, $zero, 0       
  0042c070: daddu $a1, $a0, $zero     
  0042c074: lui   $v0, 0x00650000     
  0042c078: addiu  $sp, $sp, -32      
  0042c07c: lw     $a0, +30548($v0)      ; GLOBAL 0x00657754
  0042c080: sq     $ra, +16($sp)      
  0042c084: jal   0xf042c098             ; -> 0x0042c098
  0042c088: daddu $a2, $sp, $zero     
  0042c08c: lq     $ra, +16($sp)      
  0042c090: jr     $ra                
  0042c094: addiu  $sp, $sp, +32      

; globals: 0x00657754(x3)
