; 0x0042bfa8  FUN_0042bfa8  size=240  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ret calls=0x00108ee8;0x0042c098
; 60 words

  0042bfa8: addiu  $sp, $sp, -96      
  0042bfac: lui   $v1, 0x00650000     
  0042bfb0: sw     $s4, +64($sp)      
  0042bfb4: sw     $s3, +48($sp)      
  0042bfb8: dsubu  $zero, $v1, +0     
  0042bfbc: sw     $ra, +80($sp)      
  0042bfc0: sw     $s1, +16($sp)      
  0042bfc4: sw     $s0, +0($sp)       
  0042bfc8: lw     $v0, +30548($v1)      ; GLOBAL 0x00657754
  0042bfcc: sw     $s2, +32($sp)      
  0042bfd0: lw     $s2, +328($v0)     
  0042bfd4: beq    $s2, $zero, +72       ; br -> 0x0042c020
  0042bfd8: dsubu  $zero, $a0, +0     
  0042bfdc: lw     $s0, +4($s2)       
  0042bfe0: addiu  $s0, $s0, -1       
  0042bfe4: regimm $s0, $zero, +44       ; br -> 0x0042c014
  0042bfe8: sll    $s0, $zero, +2     
  0042bfec: addiu  $v0, $v0, +8       
  0042bff0: addu   $s2, $v0, +0       
  0042bff4: lw     $v0, +0($s1)       
  0042bff8: addiu  $s0, $s0, -1       
  0042bffc: jalr   $v0, $ra           
  0042c000: addiu  $s1, $s1, -4       
  0042c004: sll    $zero, $zero, +0   
  0042c008: sll    $zero, $zero, +0   
  0042c00c: regimm $s0, $v1, -24         ; br -> 0x0046bff8
  0042c010: lw     $v0, +0($s1)       
  0042c014: lw     $s2, +0($s2)       
  0042c018: bnel   $s2, $zero, -60       ; br -> 0x0046bfe0
  0042c01c: lw     $s0, +4($s2)       
  0042c020: lw     $a0, +30548($s4)   
  0042c024: lw     $v0, +60($a0)      
  0042c028: beq    $v0, $zero, +12       ; br -> 0x0042c038
  0042c02c: sll    $zero, $zero, +0   
  0042c030: jalr   $v0, $ra           
  0042c034: sll    $zero, $zero, +0   
  0042c038: jal   0xf0108ee8             ; -> FUN_00108ee8
  0042c03c: dsubu  $zero, $s3, +0     
  0042c040: dsubu  $zero, $a0, +0     
  0042c044: lui   $v1, 0x00650000     
  0042c048: addiu  $sp, $sp, -16      
  0042c04c: dsubu  $zero, $a1, +0     
  0042c050: lw     $a0, +30548($v1)      ; GLOBAL 0x00657754
  0042c054: sw     $ra, +0($sp)       
  0042c058: jal   0xf042c098             ; -> 0x0042c098
  0042c05c: dsubu  $zero, $v0, +0     
  0042c060: lw     $ra, +0($sp)       
  0042c064: jr     $ra                
  0042c068: addiu  $sp, $sp, +16      
  0042c06c: sll    $zero, $zero, +0   
  0042c070: dsubu  $zero, $a0, +0     
  0042c074: lui   $v0, 0x00650000     
  0042c078: addiu  $sp, $sp, -32      
  0042c07c: lw     $a0, +30548($v0)      ; GLOBAL 0x00657754
  0042c080: sw     $ra, +16($sp)      
  0042c084: jal   0xf042c098             ; -> 0x0042c098
  0042c088: dsubu  $zero, $sp, +0     
  0042c08c: lw     $ra, +16($sp)      
  0042c090: jr     $ra                
  0042c094: addiu  $sp, $sp, +32      

; globals: 0x00657754(x3)
