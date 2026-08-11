; 0x00157010  FUN_00157010  size=96  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=int calls=
; 24 words

  00157010: addiu  $sp, $sp, -16      
  00157014: lw     $a0, +4($a0)       
  00157018: lui   $v0, 0x40000000     
  0015701c: lui   $v1, 0x40200000     
  00157020: fmove  $zero,$a0,$v0      
  00157024: fmove  $zero,$a0,$v1      
  00157028: lw     $v0, +8($a0)       
  0015702c: lwc1   $v0, +164($v0)        ; GLOBAL 0x400000a4
  00157030: f10.1  $v0,$s0,$at        
  00157034: f10.36 $at,$s0,$zero      
  00157038: f8.3   $zero,$t0,$at      
  0015703c: swc1   $at, +12($sp)      
  00157040: beq    $zero, $zero, +12     ; br -> 0x00157050
  00157044: swc1   $at, +12($sp)      
  00157048: f10.6  $zero,$s0,$zero    
  0015704c: swc1   $at, +12($sp)      
  00157050: addiu  $v0, $zero, +1     
  00157054: lw     $v1, +12($sp)      
  00157058: sw     $v1, +40($a1)      
  0015705c: jr     $ra                
  00157060: addiu  $sp, $sp, +16      
  00157064: sll    $zero, $zero, +0   
  00157068: sll    $zero, $zero, +0   
  0015706c: sll    $zero, $zero, +0   

; globals: 0x400000a4(x1)
