; 0x0019d330  FUN_0019d330  size=288  status=real_logic
; evidence: args=a0=ptr;a1=w;a2=-;a3=- ret=ptr calls=
; 72 words

  0019d330: addiu  $sp, $sp, -32      
  0019d334: fmove  $zero,$a0,$zero    
  0019d338: sll $zero, $zero, 0       
  0019d33c: f10.32 $zero,$s0,$t5      
  0019d340: f8.25  $zero,$t0,$at      
  0019d344: sll $zero, $zero, 0       
  0019d348: lw     $v1, +44($a0)      
  0019d34c: addiu  $a1, $sp, +16      
  0019d350: lw     $v1, +0($v1)       
  0019d354: addiu  $v1, $v1, +32      
  0019d358: lq     $v1, +0($v1)       
  0019d35c: sq     $v1, +0($a1)       
  0019d360: lui   $v1, 0x00700000     
  0019d364: lw     $v1, -24176($v1)      ; GLOBAL 0x0070a190
  0019d368: addiu  $v1, $v1, +48      
  0019d36c: lwc1   $v0, +0($v1)          ; GLOBAL 0x00700000
  0019d370: lwc1   $at, +4($v1)          ; GLOBAL 0x00700004
  0019d374: lwc1   $zero, +8($v1)        ; GLOBAL 0x00700008
  0019d378: f10.1a $v0,$s0,$v0        
  0019d37c: f10.1e $at,$s0,$at        
  0019d380: f10.1c $zero,$s0,$zero    
  0019d384: f10.4  $zero,$s0,$at      
  0019d388: lw     $v1, +44($a0)      
  0019d38c: f10.7  $t5,$s0,$zero      
  0019d390: f10.2  $zero,$s0,$at      
  0019d394: lw     $v1, +0($v1)          ; GLOBAL 0x00700000
  0019d398: lw     $v1, +148($v1)        ; GLOBAL 0x00700094
  0019d39c: lwc1   $at, +432($v1)        ; GLOBAL 0x007001b0
  0019d3a0: f10.2  $zero,$s0,$at      
  0019d3a4: fmove  $zero,$zero,$v1    
  0019d3a8: op36    $a1,$at,$zero     
  0019d3ac: cop2   $v0,$a1,$v1        
  0019d3b0: cop2   $at,$fp,$v0        
  0019d3b4: op3e    $a1,$at,$zero     
  0019d3b8: lw     $v1, +44($a0)      
  0019d3bc: lw     $v1, +0($v1)          ; GLOBAL 0x00700000
  0019d3c0: lw     $v1, +148($v1)        ; GLOBAL 0x00700094
  0019d3c4: addiu  $v1, $v1, +128     
  0019d3c8: op36    $v1,$at,$zero     
  0019d3cc: op36    $a1,$v0,$zero     
  0019d3d0: cop2   $at,$fp,$v0        
  0019d3d4: op3e    $v1,$at,$zero     
  0019d3d8: fmove  $zero,$a0,$zero    
  0019d3dc: sll $zero, $zero, 0       
  0019d3e0: f10.32 $zero,$s0,$t4      
  0019d3e4: f8.18  $zero,$t0,$at      
  0019d3e8: lui   $v1, 0x00700000     
  0019d3ec: addiu  $a1, $sp, +0       
  0019d3f0: lw     $v1, -24176($v1)      ; GLOBAL 0x0070a190
  0019d3f4: addiu  $v1, $v1, +48      
  0019d3f8: lq     $v1, +0($v1)          ; GLOBAL 0x00700000
  0019d3fc: sq     $v1, +0($a1)       
  0019d400: lw     $v1, +44($a0)      
  0019d404: lw     $v1, +0($v1)          ; GLOBAL 0x00700000
  0019d408: lw     $v1, +148($v1)        ; GLOBAL 0x00700094
  0019d40c: lwc1   $zero, +432($v1)      ; GLOBAL 0x007001b0
  0019d410: f10.2  $t4,$s0,$zero      
  0019d414: fmove  $zero,$zero,$v1    
  0019d418: op36    $a1,$at,$zero     
  0019d41c: cop2   $v0,$a1,$v1        
  0019d420: cop2   $at,$fp,$v0        
  0019d424: op3e    $a1,$at,$zero     
  0019d428: lw     $v1, +44($a0)      
  0019d42c: lw     $v1, +0($v1)          ; GLOBAL 0x00700000
  0019d430: lw     $v1, +148($v1)        ; GLOBAL 0x00700094
  0019d434: addiu  $v1, $v1, +128     
  0019d438: op36    $v1,$at,$zero     
  0019d43c: op36    $a1,$v0,$zero     
  0019d440: cop2   $at,$fp,$v0        
  0019d444: op3e    $v1,$at,$zero     
  0019d448: jr     $ra                
  0019d44c: addiu  $sp, $sp, +32      

; globals: 0x00700000(x6), 0x00700094(x4), 0x0070a190(x2), 0x007001b0(x2), 0x00700004(x1), 0x00700008(x1)
