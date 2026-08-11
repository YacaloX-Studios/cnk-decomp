; 0x00115430  FUN_00115430  size=48  status=real_logic
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 12 words

  00115430: lui   $v0, 0x00010000     
  00115434: addu   $v0, $a0, +0       
  00115438: lw     $v0, +6468($v0)       ; GLOBAL 0x00011944
  0011543c: addiu  $v1, $v0, -1       
  00115440: sll    $v1, $zero, +1     
  00115444: addu   $v1, $v0, +0       
  00115448: sll    $v0, $zero, +2     
  0011544c: addu   $a0, $v0, +0       
  00115450: lw     $v1, +12($v0)         ; GLOBAL 0x0001000c
  00115454: lw     $v0, +8($v0)          ; GLOBAL 0x00010008
  00115458: jr     $ra                
  0011545c: addu   $v0, $v1, +0       

; globals: 0x00011944(x1), 0x0001000c(x1), 0x00010008(x1)
