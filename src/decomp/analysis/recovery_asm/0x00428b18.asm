; 0x00428b18  FUN_00428b18  size=312  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ret calls=0x00428f48
; 78 words

  00428b18: addiu  $sp, $sp, -32      
  00428b1c: sw     $s0, +0($sp)       
  00428b20: dsubu  $zero, $a0, +0     
  00428b24: andi   $v0, $s0, +7       
  00428b28: bne    $v0, $zero, +232      ; br -> 0x00428c14
  00428b2c: sw     $ra, +16($sp)      
  00428b30: andi   $v0, $s0, +15      
  00428b34: ori    $v1, $zero, -32640 
  00428b38: spec38  $zero,$v1,$v1     
  00428b3c: ori    $v1, $v1, -32640   
  00428b40: spec38  $zero,$v1,$v1     
  00428b44: ori    $v1, $v1, -32640   
  00428b48: spec38  $zero,$v1,$v1     
  00428b4c: ori    $v1, $v1, +257     
  00428b50: ori    $a0, $zero, -32640 
  00428b54: spec38  $zero,$a0,$a0     
  00428b58: ori    $a0, $a0, -32640   
  00428b5c: spec38  $zero,$a0,$a0     
  00428b60: ori    $a0, $a0, -32640   
  00428b64: spec38  $zero,$a0,$a0     
  00428b68: ori    $a0, $a0, -32640   
  00428b6c: bne    $v0, $zero, +96       ; br -> 0x00428bd0
  00428b70: lw     $a2, +0($s0)       
  00428b74: lw     $v0, +0($s0)       
  00428b78: mmi2   $a3,$v1,$v1        
  00428b7c: mmi2   $t0,$a0,$a0        
  00428b80: mmi2   $v1,$v0,$a3        
  00428b84: mmi2   $v0,$zero,$v0      
  00428b88: mmi2   $v1,$v1,$v0        
  00428b8c: mmi2   $v1,$v1,$t0        
  00428b90: mmi2   $v0,$v1,$v1        
  00428b94: or     $v1, $v0, +0       
  00428b98: bne    $v1, $zero, +120      ; br -> 0x00428c14
  00428b9c: dsubu  $zero, $s0, +0     
  00428ba0: addiu  $a2, $a0, +16      
  00428ba4: lw     $v0, +0($a2)       
  00428ba8: mmi2   $v1,$zero,$v0      
  00428bac: mmi2   $v0,$v0,$a3        
  00428bb0: mmi2   $v0,$v0,$v1        
  00428bb4: mmi2   $v0,$v0,$t0        
  00428bb8: mmi2   $v1,$v0,$v0        
  00428bbc: or     $v1, $v0, +0       
  00428bc0: beql   $v0, $zero, -32       ; br -> 0x00468ba4
  00428bc4: addiu  $a2, $a2, +16      
  00428bc8: beq    $zero, $zero, +72     ; br -> 0x00428c14
  00428bcc: dsubu  $zero, $a2, +0     
  00428bd0: dsubu  $zero, $v1, +0     
  00428bd4: dsubu  $zero, $a0, +0     
  00428bd8: spec2f  $a2,$v1,$v1       
  00428bdc: nor    $a2, $zero, +0     
  00428be0: and    $v0, $v1, +0       
  00428be4: and    $a0, $v1, +0       
  00428be8: bne    $v1, $zero, +40       ; br -> 0x00428c14
  00428bec: dsubu  $zero, $s0, +0     
  00428bf0: addiu  $a2, $s0, +8       
  00428bf4: lw     $v0, +0($a2)       
  00428bf8: nor    $v0, $zero, +0     
  00428bfc: spec2f  $v0,$a3,$v0       
  00428c00: and    $v1, $v0, +0       
  00428c04: and    $t0, $v0, +0       
  00428c08: beql   $v0, $zero, -24       ; br -> 0x00468bf4
  00428c0c: addiu  $a2, $a2, +8       
  00428c10: dsubu  $zero, $a2, +0     
  00428c14: lw     $v0, +0($a0)       
  00428c18: sll    $zero, $zero, +0   
  00428c1c: sll    $zero, $zero, +0   
  00428c20: sll    $zero, $zero, +0   
  00428c24: sll    $zero, $zero, +0   
  00428c28: bnel   $v0, $zero, -24       ; br -> 0x00468c14
  00428c2c: addiu  $a0, $a0, +1       
  00428c30: jal   0xf0428f48             ; -> FUN_00428f48
  00428c34: sll    $zero, $zero, +0   
  00428c38: dsubu  $zero, $s0, +0     
  00428c3c: lw     $ra, +16($sp)      
  00428c40: lw     $s0, +0($sp)       
  00428c44: jr     $ra                
  00428c48: addiu  $sp, $sp, +32      
  00428c4c: sll    $zero, $zero, +0   
