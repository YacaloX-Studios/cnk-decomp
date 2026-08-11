; 0x0042d3d0  FUN_0042d3d0  size=384  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042c660;0x0042c980;0x0042ca08
; 96 words

  0042d3d0: addiu  $sp, $sp, -128     
  0042d3d4: sw     $s0, +16($sp)      
  0042d3d8: dsubu  $zero, $a1, +0     
  0042d3dc: sw     $s5, +96($sp)      
  0042d3e0: sw     $s4, +80($sp)      
  0042d3e4: addiu  $a1, $zero, +1     
  0042d3e8: sw     $s3, +64($sp)      
  0042d3ec: dsubu  $zero, $a2, +0     
  0042d3f0: sw     $s2, +48($sp)      
  0042d3f4: sw     $s1, +32($sp)      
  0042d3f8: sw     $ra, +112($sp)     
  0042d3fc: jal   0xf042c660             ; -> FUN_0042c660
  0042d400: dsubu  $zero, $a3, +0     
  0042d404: dsubu  $zero, $v0, +0     
  0042d408: spec3f  $zero,$s0,$a1     
  0042d40c: lui   $v0, 0x7fff0000     
  0042d410: lui   $v1, 0x000f0000     
  0042d414: ori    $v0, $v0, -1       
  0042d418: addiu  $a0, $zero, -1     
  0042d41c: spec3e  $zero,$a0,$a0     
  0042d420: and    $v0, $a1, +0       
  0042d424: and    $a0, $s0, +0       
  0042d428: spec3c  $zero,$v0,$v0     
  0042d42c: ori    $v1, $v1, -1       
  0042d430: or     $v0, $s0, +0       
  0042d434: and    $v1, $a1, +0       
  0042d438: addiu  $s3, $s1, +20      
  0042d43c: spec3e  $zero,$s0,$s2     
  0042d440: beq    $s2, $zero, +16       ; br -> 0x0042d454
  0042d444: sw     $a1, +4($sp)       
  0042d448: lui   $v0, 0x00100000     
  0042d44c: or     $v0, $a1, +0       
  0042d450: sw     $v0, +4($sp)       
  0042d454: spec3c  $zero,$s0,$v0     
  0042d458: spec3f  $zero,$v0,$v0     
  0042d45c: beq    $v0, $zero, +100      ; br -> 0x0042d4c4
  0042d460: sw     $v0, +0($sp)       
  0042d464: jal   0xf042ca08             ; -> 0x0042ca08
  0042d468: dsubu  $zero, $sp, +0     
  0042d46c: dsubu  $zero, $v0, +0     
  0042d470: beq    $a1, $zero, +40       ; br -> 0x0042d49c
  0042d474: lw     $v0, +4($sp)       
  0042d478: subu   $a1, $zero, +0     
  0042d47c: lw     $v1, +0($sp)       
  0042d480: sllv   $v0, $a0, +0       
  0042d484: or     $v0, $v1, +0       
  0042d488: sw     $v1, +20($s1)      
  0042d48c: lw     $v0, +4($sp)       
  0042d490: srlv   $v0, $a1, +0       
  0042d494: beq    $zero, $zero, +12     ; br -> 0x0042d4a4
  0042d498: sw     $v0, +4($sp)       
  0042d49c: lw     $v0, +0($sp)       
  0042d4a0: sw     $v0, +20($s1)      
  0042d4a4: lw     $v0, +4($sp)       
  0042d4a8: addiu  $v1, $zero, +1     
  0042d4ac: addiu  $a0, $zero, +2     
  0042d4b0: movn    $a0,$v0,$v1       
  0042d4b4: sw     $v0, +4($s3)       
  0042d4b8: dsubu  $zero, $v1, +0     
  0042d4bc: beq    $zero, $zero, +36     ; br -> 0x0042d4e4
  0042d4c0: sw     $v1, +16($s1)      
  0042d4c4: ori    $a0, $sp, +4       
  0042d4c8: jal   0xf042ca08             ; -> 0x0042ca08
  0042d4cc: addiu  $s0, $zero, +1     
  0042d4d0: lw     $a0, +4($sp)       
  0042d4d4: addiu  $v1, $zero, +1     
  0042d4d8: sw     $v1, +16($s1)      
  0042d4dc: addiu  $a1, $v0, +32      
  0042d4e0: sw     $a0, +20($s1)      
  0042d4e4: beq    $s2, $zero, +24       ; br -> 0x0042d500
  0042d4e8: addiu  $v0, $a1, -1075    
  0042d4ec: addiu  $v1, $zero, +53    
  0042d4f0: addu   $v0, $s2, +0       
  0042d4f4: subu   $a1, $v1, +0       
  0042d4f8: beq    $zero, $zero, +36     ; br -> 0x0042d520
  0042d4fc: sw     $v0, +0($s4)       
  0042d500: addiu  $v1, $a1, -1074    
  0042d504: sll    $s0, $zero, +2     
  0042d508: sw     $v1, +0($s4)       
  0042d50c: addu   $s3, $v0, +0       
  0042d510: jal   0xf042c980             ; -> 0x0042c980
  0042d514: lw     $a0, -4($v0)          ; GLOBAL 0x0010fffc
  0042d518: sll    $s0, $zero, +5     
  0042d51c: subu   $v0, $v1, +0       
  0042d520: sw     $v1, +0($s5)       
  0042d524: dsubu  $zero, $s1, +0     
  0042d528: lw     $ra, +112($sp)     
  0042d52c: lw     $s5, +96($sp)      
  0042d530: lw     $s4, +80($sp)      
  0042d534: lw     $s3, +64($sp)      
  0042d538: lw     $s2, +48($sp)      
  0042d53c: lw     $s1, +32($sp)      
  0042d540: lw     $s0, +16($sp)      
  0042d544: jr     $ra                
  0042d548: addiu  $sp, $sp, +128     
  0042d54c: sll    $zero, $zero, +0   

; globals: 0x0010fffc(x1)
