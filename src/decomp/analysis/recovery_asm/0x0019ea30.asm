; 0x0019ea30  FUN_0019ea30  size=240  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=- ret=ptr calls=
; 60 words

  0019ea30: addiu  $sp, $sp, -16      
  0019ea34: lw     $a1, +44($a0)      
  0019ea38: lw     $v1, +56($a0)      
  0019ea3c: lwc1   $v0, +60($a0)      
  0019ea40: lw     $a1, +0($a1)       
  0019ea44: lbu    $v1, +68($v1)      
  0019ea48: beq    $v1, $zero, +24       ; br -> 0x0019ea64
  0019ea4c: addiu  $a2, $a1, +16      
  0019ea50: lui   $v1, 0x006f0000     
  0019ea54: lw     $v1, +22280($v1)      ; GLOBAL 0x006f5708
  0019ea58: lwc1   $zero, +40($v1)       ; GLOBAL 0x006f0028
  0019ea5c: beq    $zero, $zero, +20     ; br -> 0x0019ea74
  0019ea60: f10.2  $v0,$s0,$zero      
  0019ea64: lui   $v1, 0x006f0000     
  0019ea68: lw     $v1, +22280($v1)      ; GLOBAL 0x006f5708
  0019ea6c: lwc1   $zero, +36($v1)       ; GLOBAL 0x006f0024
  0019ea70: f10.2  $v0,$s0,$zero      
  0019ea74: lwc1   $at, +128($a0)     
  0019ea78: lwc1   $zero, +96($a0)    
  0019ea7c: f10.1  $zero,$s0,$at      
  0019ea80: f10.34 $v1,$s0,$zero      
  0019ea84: f8.3   $zero,$t0,$zero    
  0019ea88: sll $zero, $zero, 0       
  0019ea8c: beq    $zero, $zero, +8      ; br -> 0x0019ea98
  0019ea90: sll $zero, $zero, 0       
  0019ea94: f10.6  $zero,$s0,$zero    
  0019ea98: fmove  $zero,$a0,$zero    
  0019ea9c: sll $zero, $zero, 0       
  0019eaa0: f10.36 $v1,$s0,$zero      
  0019eaa4: f8.19  $zero,$t0,$at      
  0019eaa8: sll $zero, $zero, 0       
  0019eaac: sll $zero, $zero, 0       
  0019eab0: sll $zero, $zero, 0       
  0019eab4: f10.3  $v1,$s0,$v0        
  0019eab8: addiu  $a1, $sp, +0       
  0019eabc: lq     $v1, +0($a2)       
  0019eac0: sq     $v1, +0($a1)       
  0019eac4: lw     $v1, +44($a0)      
  0019eac8: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  0019eacc: lw     $v1, +148($v1)        ; GLOBAL 0x006f0094
  0019ead0: lwc1   $zero, +432($v1)      ; GLOBAL 0x006f01b0
  0019ead4: f10.2  $at,$s0,$zero      
  0019ead8: fmove  $zero,$zero,$v1    
  0019eadc: op36    $a1,$at,$zero     
  0019eae0: cop2   $v0,$a1,$v1        
  0019eae4: cop2   $at,$fp,$v0        
  0019eae8: op3e    $a1,$at,$zero     
  0019eaec: lw     $v1, +44($a0)      
  0019eaf0: lw     $v1, +0($v1)          ; GLOBAL 0x006f0000
  0019eaf4: lw     $v1, +148($v1)        ; GLOBAL 0x006f0094
  0019eaf8: addiu  $v1, $v1, +128     
  0019eafc: op36    $v1,$at,$zero     
  0019eb00: op36    $a1,$v0,$zero     
  0019eb04: cop2   $at,$fp,$v0        
  0019eb08: op3e    $v1,$at,$zero     
  0019eb0c: jr     $ra                
  0019eb10: addiu  $sp, $sp, +16      
  0019eb14: sll $zero, $zero, 0       
  0019eb18: sll $zero, $zero, 0       
  0019eb1c: sll $zero, $zero, 0       

; globals: 0x006f5708(x2), 0x006f0000(x2), 0x006f0094(x2), 0x006f0028(x1), 0x006f0024(x1), 0x006f01b0(x1)
