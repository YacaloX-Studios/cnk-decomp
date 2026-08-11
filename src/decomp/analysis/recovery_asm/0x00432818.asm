; 0x00432818  FUN_00432818  size=160  status=real_c
; evidence: args=a0=int;a1=ptr;a2=int;a3=int ret=ret calls=0x004327a0
; 40 words

  00432818: addiu  $sp, $sp, -16      
  0043281c: dsubu  $zero, $a1, +0     
  00432820: srl    $a0, $zero, +31    
  00432824: beq    $t2, $zero, +16       ; br -> 0x00432838
  00432828: sw     $ra, +0($sp)       
  0043282c: subu   $a0, $zero, +0     
  00432830: xori   $v0, $a2, +10      
  00432834: movz    $v1,$v0,$a0       
  00432838: lui   $v0, 0x00650000     
  0043283c: dsubu  $zero, $zero, +0   
  00432840: addiu  $t3, $v0, +32552   
  00432844: dsubu  $zero, $zero, +0   
  00432848: divu   $a2, $a0, +0       
  0043284c: sll    $zero, $zero, +0   
  00432850: beql   $a2, $t0, +4          ; br -> 0x00432858
  00432854: break   $zero,$zero,$zero 
  00432858: addu   $a3, $t1, +0       
  0043285c: addiu  $a3, $a3, +1       
  00432860: mfhi   $zero, $zero, +0   
  00432864: mflo   $zero, $zero, +0   
  00432868: addu   $t3, $v1, +0       
  0043286c: lw     $v0, +0($v1)       
  00432870: sw     $v0, +0($a1)       
  00432874: beql   $a2, $t0, +4          ; br -> 0x0043287c
  00432878: break   $zero,$zero,$zero 
  0043287c: bnel   $a0, $zero, -48       ; br -> 0x00472850
  00432880: divu   $a2, $a0, +0       
  00432884: beq    $t2, $zero, +16       ; br -> 0x00432898
  00432888: addu   $a3, $t1, +0       
  0043288c: addiu  $v0, $zero, +45    
  00432890: sw     $v0, +0($v1)       
  00432894: addiu  $a3, $a3, +1       
  00432898: addu   $a3, $t1, +0       
  0043289c: dsubu  $zero, $t1, +0     
  004328a0: jal   0xf04327a0             ; -> FUN_004327a0
  004328a4: sw     $zero, +0($v0)        ; GLOBAL 0x00650000
  004328a8: lw     $ra, +0($sp)       
  004328ac: jr     $ra                
  004328b0: addiu  $sp, $sp, +16      
  004328b4: sll    $zero, $zero, +0   

; globals: 0x00650000(x1)
