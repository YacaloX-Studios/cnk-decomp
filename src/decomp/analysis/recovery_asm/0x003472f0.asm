; 0x003472f0  FUN_003472f0  size=160  status=real_c
; evidence: args=a0=ptr;a1=-;a2=-;a3=- ret=ptr calls=
; 40 words

  003472f0: addiu  $sp, $sp, -16      
  003472f4: addiu  $v0, $sp, +0       
  003472f8: op36    $a2,$s4,$zero     
  003472fc: op36    $a1,$s5,$zero     
  00347300: op36    $a1,$s6,$zero     
  00347304: op36    $a1,$s7,$zero     
  00347308: cop2   $s5,$fp,$s4        
  0034730c: cop2   $s6,$fp,$s4        
  00347310: cop2   $s7,$fp,$s4        
  00347314: op3e    $v0,$s4,$zero     
  00347318: lq     $v0, +0($v0)       
  0034731c: sq     $v0, +0($a0)       
  00347320: daddu $v0, $a0, $zero     
  00347324: jr     $ra                
  00347328: addiu  $sp, $sp, +16      
  0034732c: sll $zero, $zero, 0       
  00347330: lq     $v0, +0($a1)       
  00347334: lq     $v1, +16($a1)      
  00347338: sq     $v0, +0($a0)       
  0034733c: sq     $v1, +16($a0)      
  00347340: lq     $v0, +32($a1)      
  00347344: lq     $v1, +0($a2)       
  00347348: sq     $v0, +32($a0)      
  0034734c: sq     $v1, +48($a0)      
  00347350: jr     $ra                
  00347354: daddu $v0, $a0, $zero     
  00347358: sll $zero, $zero, 0       
  0034735c: sll $zero, $zero, 0       
  00347360: lui   $v0, 0x00640000     
  00347364: jr     $ra                
  00347368: addiu  $v0, $v0, +13704   
  0034736c: sll $zero, $zero, 0       
  00347370: lui   $at, 0x00640000     
  00347374: jr     $ra                
  00347378: lw     $v0, +13264($at)      ; GLOBAL 0x006433d0
  0034737c: sll $zero, $zero, 0       
  00347380: jr     $ra                
  00347384: lw     $v0, +252($a0)     
  00347388: sll $zero, $zero, 0       
  0034738c: sll $zero, $zero, 0       

; globals: 0x006433d0(x1)
