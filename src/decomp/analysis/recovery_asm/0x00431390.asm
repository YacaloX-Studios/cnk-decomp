; 0x00431390  FUN_00431390  size=248  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x00429cf0;0x0042c5c0;0x0042c620;0x004311f0
; 62 words

  00431390: addiu  $sp, $sp, -128     
  00431394: sq     $s0, +48($sp)      
  00431398: daddu $s0, $a0, $zero     
  0043139c: sq     $ra, +112($sp)     
  004313a0: sq     $s3, +96($sp)      
  004313a4: sq     $s2, +80($sp)      
  004313a8: jal   0xf042c5c0             ; -> FUN_0042c5c0
  004313ac: sq     $s1, +64($sp)      
  004313b0: jal   0xf04311f0             ; -> FUN_004311f0
  004313b4: sll $zero, $zero, 0       
  004313b8: lui   $v0, 0x00650000     
  004313bc: lui   $v1, 0x00650000     
  004313c0: ld     $s2, +32504($v0)      ; GLOBAL 0x00657ef8
  004313c4: lw     $s3, +32512($v1)      ; GLOBAL 0x00657f00
  004313c8: addiu  $a3, $v1, +32512   
  004313cc: mmi0   $zero,$a3,$v0      
  004313d0: mmi1   $zero,$a3,$v0      
  004313d4: mmi0   $zero,$a3,$a1      
  004313d8: mmi1   $zero,$a3,$a1      
  004313dc: mmi0   $zero,$a3,$a2      
  004313e0: mmi1   $zero,$a3,$a2      
  004313e4: op2c    $sp,$v0,$zero     
  004313e8: op2d    $sp,$v0,$zero     
  004313ec: op2c    $sp,$a1,$zero     
  004313f0: op2d    $sp,$a1,$zero     
  004313f4: op2c    $sp,$a2,$zero     
  004313f8: op2d    $sp,$a2,$zero     
  004313fc: mmi0   $zero,$a3,$v0      
  00431400: mmi1   $zero,$a3,$v0      
  00431404: mmi0   $zero,$a3,$a1      
  00431408: mmi1   $zero,$a3,$a1      
  0043140c: op2c    $sp,$v0,$zero     
  00431410: op2d    $sp,$v0,$zero     
  00431414: op2c    $sp,$a1,$zero     
  00431418: op2d    $sp,$a1,$zero     
  0043141c: jal   0xf042c620             ; -> FUN_0042c620
  00431420: daddu $a0, $s0, $zero     
  00431424: lw     $s1, +12($s0)      
  00431428: lui   $a1, 0x006a0000     
  0043142c: addiu  $a1, $a1, +19632   
  00431430: spec3c  $zero,$s2,$a2     
  00431434: spec3f  $zero,$a2,$a2     
  00431438: jal   0xf0429cf0             ; -> 0x00429cf0
  0043143c: daddu $a0, $s1, $zero     
  00431440: lui   $a1, 0x006a0000     
  00431444: daddu $a2, $s3, $zero     
  00431448: addiu  $a1, $a1, +19664   
  0043144c: jal   0xf0429cf0             ; -> 0x00429cf0
  00431450: daddu $a0, $s1, $zero     
  00431454: lui   $a1, 0x006a0000     
  00431458: lw     $a2, +28($sp)      
  0043145c: daddu $a0, $s1, $zero     
  00431460: jal   0xf0429cf0             ; -> 0x00429cf0
  00431464: addiu  $a1, $a1, +19696   
  00431468: lq     $ra, +112($sp)     
  0043146c: lq     $s3, +96($sp)      
  00431470: lq     $s2, +80($sp)      
  00431474: lq     $s1, +64($sp)      
  00431478: lq     $s0, +48($sp)      
  0043147c: jr     $ra                
  00431480: addiu  $sp, $sp, +128     
  00431484: sll $zero, $zero, 0       

; globals: 0x00657ef8(x1), 0x00657f00(x1)
