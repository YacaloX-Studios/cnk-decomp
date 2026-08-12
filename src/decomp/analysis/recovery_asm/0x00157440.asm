; 0x00157440  FUN_00157440  size=96  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=int calls=
; 24 words

  00157440: addiu  $sp, $sp, -16      
  00157444: lw     $a0, +4($a0)       
  00157448: lui   $v0, 0x40000000     
  0015744c: lui   $v1, 0x40200000     
  00157450: fmove  $zero,$a0,$v0      
  00157454: fmove  $zero,$a0,$v1      
  00157458: lw     $v0, +8($a0)       
  0015745c: lwc1   $v0, +172($v0)        ; GLOBAL 0x400000ac
  00157460: f10.1  $v0,$s0,$at        
  00157464: f10.36 $at,$s0,$zero      
  00157468: f8.3   $zero,$t0,$at      
  0015746c: swc1   $at, +12($sp)      
  00157470: beq    $zero, $zero, +12     ; br -> 0x00157480
  00157474: swc1   $at, +12($sp)      
  00157478: f10.6  $zero,$s0,$zero    
  0015747c: swc1   $at, +12($sp)      
  00157480: addiu  $v0, $zero, +1     
  00157484: lw     $v1, +12($sp)      
  00157488: sw     $v1, +40($a1)      
  0015748c: jr     $ra                
  00157490: addiu  $sp, $sp, +16      
  00157494: sll $zero, $zero, 0       
  00157498: sll $zero, $zero, 0       
  0015749c: sll $zero, $zero, 0       

; globals: 0x400000ac(x1)
