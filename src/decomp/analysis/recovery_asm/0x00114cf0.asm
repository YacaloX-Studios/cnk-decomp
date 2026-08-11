; 0x00114cf0  FUN_00114cf0  size=32  status=real_logic
; evidence: args=a0=int;a1=-;a2=-;a3=- ret=void calls=
; 8 words

  00114cf0: lui   $v1, 0x006f0000     
  00114cf4: sw     $a0, +13776($v1)      ; GLOBAL 0x006f35d0
  00114cf8: lui   $v1, 0x006f0000     
  00114cfc: jr     $ra                
  00114d00: sw     $a1, +13784($v1)      ; GLOBAL 0x006f35d8
  00114d04: sll    $zero, $zero, +0   
  00114d08: sll    $zero, $zero, +0   
  00114d0c: sll    $zero, $zero, +0   

; globals: 0x006f35d0(x1), 0x006f35d8(x1)
