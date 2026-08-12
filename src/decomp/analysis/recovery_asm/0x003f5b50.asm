; 0x003f5b50  FUN_003f5b50  size=144  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=w;a3=w ret=int calls=
; 36 words

  003f5b50: lui   $v0, 0x3f800000     
  003f5b54: addiu  $sp, $sp, -48      
  003f5b58: sw     $v0, +44($a0)      
  003f5b5c: daddu $v1, $zero, $zero   
  003f5b60: sw     $v0, +28($a0)      
  003f5b64: addiu  $a3, $sp, +32      
  003f5b68: sw     $v0, +12($a0)      
  003f5b6c: addiu  $t0, $sp, +16      
  003f5b70: beq    $zero, $zero, +72     ; br -> 0x003f5bbc
  003f5b74: addiu  $a2, $sp, +0       
  003f5b78: spec38  $zero,$v1,$v0     
  003f5b7c: add $v0, $v0, $a1         
  003f5b80: lq     $v0, +0($v0)          ; GLOBAL 0x3f800000
  003f5b84: sq     $v0, +0($a3)       
  003f5b88: lq     $v0, +0($a3)       
  003f5b8c: sq     $v0, +0($t0)       
  003f5b90: lq     $v0, +0($t0)       
  003f5b94: sq     $v0, +0($a2)       
  003f5b98: lwc1   $zero, +0($sp)     
  003f5b9c: sll $v0, $v1, 4           
  003f5ba0: addu $v0, $a0, $v0        
  003f5ba4: addiu  $v1, $v1, +1       
  003f5ba8: swc1   $zero, +0($v0)        ; GLOBAL 0x3f800000
  003f5bac: lwc1   $zero, +4($sp)     
  003f5bb0: swc1   $zero, +4($v0)        ; GLOBAL 0x3f800004
  003f5bb4: lwc1   $zero, +8($sp)     
  003f5bb8: swc1   $zero, +8($v0)        ; GLOBAL 0x3f800008
  003f5bbc: sll $zero, $zero, 0       
  003f5bc0: slti   $v0, $v1, +3       
  003f5bc4: bne    $v0, $zero, -80       ; br -> 0x003f5b78
  003f5bc8: daddu $v0, $a0, $zero     
  003f5bcc: jr     $ra                
  003f5bd0: addiu  $sp, $sp, +48      
  003f5bd4: sll $zero, $zero, 0       
  003f5bd8: sll $zero, $zero, 0       
  003f5bdc: sll $zero, $zero, 0       

; globals: 0x3f800000(x2), 0x3f800004(x1), 0x3f800008(x1)
