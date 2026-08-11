; 0x00195820  FUN_00195820  size=224  status=real_c
; evidence: args=a0=ptr;a1=w;a2=int;a3=- ret=void calls=
; 56 words

  00195820: addiu  $sp, $sp, -16      
  00195824: lwc1   $at, +232($a0)     
  00195828: lwc1   $zero, +1068($a0)  
  0019582c: f10.36 $zero,$s0,$at      
  00195830: f8.2e  $zero,$t0,$at      
  00195834: f10.1  $zero,$s0,$at      
  00195838: lwc1   $at, +996($a0)     
  0019583c: fmove  $zero,$a0,$zero    
  00195840: sll    $zero, $zero, +0   
  00195844: f10.34 $at,$s0,$zero      
  00195848: f8.2   $zero,$t0,$zero    
  0019584c: sll    $zero, $zero, +0   
  00195850: f10.7  $at,$s0,$zero      
  00195854: f10.2  $v0,$s0,$at        
  00195858: fmove  $zero,$a0,$zero    
  0019585c: sll    $zero, $zero, +0   
  00195860: f10.36 $v0,$s0,$zero      
  00195864: f8.21  $zero,$t0,$at      
  00195868: sll    $zero, $zero, +0   
  0019586c: lwc1   $at, +236($a0)     
  00195870: lwc1   $zero, +240($a0)   
  00195874: f10.2  $v0,$s0,$at        
  00195878: f10.34 $at,$s0,$zero      
  0019587c: f8.3   $zero,$t0,$zero    
  00195880: sll    $zero, $zero, +0   
  00195884: beq    $zero, $zero, +12     ; br -> 0x00195894
  00195888: lw     $v1, +44($a0)      
  0019588c: f10.6  $zero,$s0,$zero    
  00195890: lw     $v1, +44($a0)      
  00195894: addiu  $a1, $sp, +0       
  00195898: lw     $v1, +0($v1)       
  0019589c: lw     $a2, +148($v1)     
  001958a0: lwc1   $zero, +432($a2)   
  001958a4: addiu  $v1, $v1, +80      
  001958a8: f10.2  $at,$s0,$zero      
  001958ac: lw     $v1, +0($v1)       
  001958b0: sw     $v1, +0($a1)       
  001958b4: f10.7  $zero,$s0,$zero    
  001958b8: fmove  $zero,$zero,$v1    
  001958bc: op36    $a1,$at,$zero     
  001958c0: cop2   $v0,$a1,$v1        
  001958c4: cop2   $at,$fp,$v0        
  001958c8: op3e    $a1,$at,$zero     
  001958cc: lw     $v1, +44($a0)      
  001958d0: lw     $v1, +0($v1)       
  001958d4: lw     $v1, +148($v1)     
  001958d8: addiu  $v1, $v1, +128     
  001958dc: op36    $v1,$at,$zero     
  001958e0: op36    $a1,$v0,$zero     
  001958e4: cop2   $at,$fp,$v0        
  001958e8: op3e    $v1,$at,$zero     
  001958ec: jr     $ra                
  001958f0: addiu  $sp, $sp, +16      
  001958f4: sll    $zero, $zero, +0   
  001958f8: sll    $zero, $zero, +0   
  001958fc: sll    $zero, $zero, +0   
