; 0x00157070  FUN_00157070  size=160  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=-;a3=- ret=ptr calls=
; 40 words

  00157070: addiu  $sp, $sp, -16      
  00157074: lw     $v1, +4($a0)       
  00157078: lui   $v0, 0x3f800000     
  0015707c: fmove  $zero,$a0,$v0      
  00157080: lwc1   $zero, +40($a1)    
  00157084: lw     $v0, +8($v1)       
  00157088: lwc1   $v0, +164($v0)        ; GLOBAL 0x3f8000a4
  0015708c: f10.3  $v0,$s0,$zero      
  00157090: sll    $zero, $zero, +0   
  00157094: sll    $zero, $zero, +0   
  00157098: f10.34 $at,$s0,$zero      
  0015709c: f8.3   $zero,$t0,$zero    
  001570a0: sll    $zero, $zero, +0   
  001570a4: beq    $zero, $zero, +12     ; br -> 0x001570b4
  001570a8: lui   $v0, 0x3f800000     
  001570ac: f10.6  $zero,$s0,$zero    
  001570b0: lui   $v0, 0x3f800000     
  001570b4: lw     $v1, +8($a1)       
  001570b8: fmove  $zero,$a0,$v0      
  001570bc: sll    $zero, $zero, +0   
  001570c0: f10.1  $zero,$s0,$at      
  001570c4: addiu  $v0, $zero, +1     
  001570c8: swc1   $zero, +12($sp)    
  001570cc: lw     $a0, +12($sp)      
  001570d0: sw     $a0, +24($v1)      
  001570d4: jr     $ra                
  001570d8: addiu  $sp, $sp, +16      
  001570dc: sll    $zero, $zero, +0   
  001570e0: lw     $v0, +4($a0)       
  001570e4: lw     $v0, +8($v0)          ; GLOBAL 0x3f800008
  001570e8: jr     $ra                
  001570ec: lw     $v0, +168($v0)        ; GLOBAL 0x3f8000a8
  001570f0: lw     $v0, +8($a0)       
  001570f4: lw     $v0, +4($v0)          ; GLOBAL 0x3f800004
  001570f8: andi   $v0, $v0, +512     
  001570fc: jr     $ra                
  00157100: daddu  $v0, $zero, +0     
  00157104: sll    $zero, $zero, +0   
  00157108: sll    $zero, $zero, +0   
  0015710c: sll    $zero, $zero, +0   

; globals: 0x3f8000a4(x1), 0x3f800008(x1), 0x3f8000a8(x1), 0x3f800004(x1)
