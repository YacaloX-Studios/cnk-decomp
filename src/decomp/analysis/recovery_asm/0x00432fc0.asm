; 0x00432fc0  FUN_00432fc0  size=208  status=real_c
; evidence: args=a0=int;a1=ptr;a2=ptr;a3=int ret=ret calls=0x00433090;0x00433ef0
; 52 words

  00432fc0: addiu  $sp, $sp, -16      
  00432fc4: dsubu $t0, $a1, $zero     
  00432fc8: sw     $ra, +0($sp)       
  00432fcc: dsubu $a3, $a2, $zero     
  00432fd0: dsubu $a1, $a0, $zero     
  00432fd4: lw     $v0, +0($t0)       
  00432fd8: beq    $v0, $zero, +152      ; br -> 0x00433074
  00432fdc: dsubu $a2, $t0, $zero     
  00432fe0: lw     $v1, +0($a2)       
  00432fe4: sll $zero, $zero, 0       
  00432fe8: addiu  $v0, $zero, +37    
  00432fec: bnel   $v1, $v0, +120        ; br -> 0x00433068
  00432ff0: addiu  $a2, $a2, +1       
  00432ff4: lw     $v0, +1($a2)       
  00432ff8: beq    $v0, $zero, +108      ; br -> 0x00433068
  00432ffc: addiu  $a2, $a2, +1       
  00433000: lw     $v0, +0($a2)       
  00433004: slti   $v0, $v0, +65      
  00433008: beql   $v0, $zero, +20       ; br -> 0x00433020
  0043300c: lw     $v0, +0($a2)       
  00433010: lw     $v0, +1($a2)       
  00433014: bnel   $v0, $zero, -24       ; br -> 0x00433000
  00433018: addiu  $a2, $a2, +1       
  0043301c: lw     $v0, +0($a2)       
  00433020: addiu  $v0, $v0, -69      
  00433024: sll $v0, $v0, 24          
  00433028: sra $a0, $v0, 24          
  0043302c: sltiu  $v1, $a0, +35      
  00433030: beq    $v1, $zero, +48       ; br -> 0x00433064
  00433034: lui   $v0, 0x006a0000     
  00433038: sll $v1, $a0, 2           
  0043303c: addiu  $v0, $v0, +19936   
  00433040: addu $v1, $v1, $v0        
  00433044: lw     $a0, +0($v1)       
  00433048: jr     $a0                
  0043304c: sll $zero, $zero, 0       
  00433050: lw     $a0, +84($a1)      
  00433054: jal   0xf0433090             ; -> FUN_00433090
  00433058: dsubu $a2, $t0, $zero     
  0043305c: beq    $zero, $zero, +36     ; br -> 0x00433084
  00433060: lw     $ra, +0($sp)       
  00433064: addiu  $a2, $a2, +1       
  00433068: lw     $v0, +0($a2)       
  0043306c: bnel   $v0, $zero, -136      ; br -> 0x00432fe8
  00433070: lw     $v1, +0($a2)       
  00433074: lw     $a0, +84($a1)      
  00433078: jal   0xf0433ef0             ; -> FUN_00433ef0
  0043307c: dsubu $a2, $t0, $zero     
  00433080: lw     $ra, +0($sp)       
  00433084: jr     $ra                
  00433088: addiu  $sp, $sp, +16      
  0043308c: sll $zero, $zero, 0       
