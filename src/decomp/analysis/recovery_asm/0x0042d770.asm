; 0x0042d770  FUN_0042d770  size=2592  status=real_logic
; evidence: args=a0=ptr;a1=ptr;a2=ptr;a3=int ret=int calls=0x0042d770
; 648 words

  0042d770: addiu  $sp, $sp, -240     
  0042d774: sq     $s7, +192($sp)     
  0042d778: sq     $s6, +176($sp)     
  0042d77c: daddu $s7, $a3, $zero     
  0042d780: sq     $s2, +112($sp)     
  0042d784: daddu $s6, $a0, $zero     
  0042d788: sq     $ra, +224($sp)     
  0042d78c: daddu $s2, $a2, $zero     
  0042d790: sq     $fp, +208($sp)     
  0042d794: sq     $s5, +160($sp)     
  0042d798: sq     $s4, +144($sp)     
  0042d79c: sq     $s3, +128($sp)     
  0042d7a0: sq     $s1, +96($sp)      
  0042d7a4: sq     $s0, +80($sp)      
  0042d7a8: sw     $a1, +0($sp)       
  0042d7ac: andi   $v0, $s6, +7       
  0042d7b0: bne    $v0, $zero, +24       ; br -> 0x0042d7cc
  0042d7b4: addiu  $v0, $zero, +2     
  0042d7b8: andi   $v0, $s2, +7       
  0042d7bc: bnel   $v0, $zero, +12       ; br -> 0x0042d7cc
  0042d7c0: addiu  $v0, $zero, +2     
  0042d7c4: xori   $v0, $s2, +8       
  0042d7c8: sltu $v0, $zero, $v0      
  0042d7cc: sw     $v0, +4($sp)       
  0042d7d0: lw     $v1, +0($sp)       
  0042d7d4: sltiu  $v0, $v1, +7       
  0042d7d8: beq    $v0, $zero, +252      ; br -> 0x0042d8d8
  0042d7dc: sw     $zero, +8($sp)     
  0042d7e0: mult   $s2, $v1, +0       
  0042d7e4: addu $s0, $s6, $s2        
  0042d7e8: addu $v1, $v0, $s6        
  0042d7ec: sltu $v0, $s0, $v1        
  0042d7f0: beq    $v0, $zero, +2344     ; br -> 0x0042e11c
  0042d7f4: srl $v0, $s2, 3           
  0042d7f8: sw     $v1, +12($sp)      
  0042d7fc: lw     $v1, +4($sp)       
  0042d800: spec3c  $zero,$v0,$fp     
  0042d804: spec3c  $zero,$s2,$s4     
  0042d808: slti   $s5, $v1, +2       
  0042d80c: daddu $s1, $s0, $zero     
  0042d810: beq    $zero, $zero, +136    ; br -> 0x0042d89c
  0042d814: addu $s3, $s0, $s2        
  0042d818: bne    $a0, $zero, +24       ; br -> 0x0042d834
  0042d81c: sll $zero, $zero, 0       
  0042d820: ld     $v0, +0($s0)       
  0042d824: ld     $v1, +0($s1)       
  0042d828: sd     $v0, +0($s1)       
  0042d82c: beq    $zero, $zero, +104    ; br -> 0x0042d898
  0042d830: sd     $v1, +0($s0)       
  0042d834: beq    $s5, $zero, +56       ; br -> 0x0042d870
  0042d838: daddu $a0, $s1, $zero     
  0042d83c: spec3e  $zero,$fp,$a1     
  0042d840: daddu $a2, $s0, $zero     
  0042d844: sll $zero, $zero, 0       
  0042d848: ld     $v1, +0($a2)       
  0042d84c: op19    $a1,$a1,$ra       
  0042d850: ld     $v0, +0($a0)       
  0042d854: sd     $v1, +0($a0)       
  0042d858: sd     $v0, +0($a2)       
  0042d85c: addiu  $a0, $a0, +8       
  0042d860: bgtz   $a1, $zero, -28       ; br -> 0x0042d848
  0042d864: addiu  $a2, $a2, +8       
  0042d868: beq    $zero, $zero, +48     ; br -> 0x0042d89c
  0042d86c: daddu $s1, $s0, $zero     
  0042d870: spec3e  $zero,$s4,$a1     
  0042d874: daddu $a2, $s0, $zero     
  0042d878: lbu    $v1, +0($a2)       
  0042d87c: op19    $a1,$a1,$ra       
  0042d880: lb     $v0, +0($a0)       
  0042d884: sb     $v1, +0($a0)       
  0042d888: sb     $v0, +0($a2)       
  0042d88c: addiu  $a0, $a0, +1       
  0042d890: bgtz   $a1, $zero, -28       ; br -> 0x0042d878
  0042d894: addiu  $a2, $a2, +1       
  0042d898: daddu $s1, $s0, $zero     
  0042d89c: sltu $v0, $s6, $s1        
  0042d8a0: beq    $v0, $zero, +24       ; br -> 0x0042d8bc
  0042d8a4: subu $s0, $s1, $s2        
  0042d8a8: daddu $a1, $s1, $zero     
  0042d8ac: jalr   $s7, $ra           
  0042d8b0: daddu $a0, $s0, $zero     
  0042d8b4: bgtzl  $v0, $zero, -160      ; br -> 0x0042d818
  0042d8b8: lw     $a0, +4($sp)       
  0042d8bc: lw     $v1, +12($sp)      
  0042d8c0: daddu $s0, $s3, $zero     
  0042d8c4: sltu $v0, $s0, $v1        
  0042d8c8: bne    $v0, $zero, -188      ; br -> 0x0042d810
  0042d8cc: daddu $s1, $s0, $zero     
  0042d8d0: beq    $zero, $zero, +2124   ; br -> 0x0042e120
  0042d8d4: lq     $ra, +224($sp)     
  0042d8d8: lw     $a0, +0($sp)       
  0042d8dc: srl $v0, $a0, 1           
  0042d8e0: sltiu  $v1, $a0, +8       
  0042d8e4: addiu  $a0, $a0, -1       
  0042d8e8: sw     $a0, +48($sp)      
  0042d8ec: mult   $s2, $v0, +0       
  0042d8f0: bne    $v1, $zero, +556      ; br -> 0x0042db20
  0042d8f4: addu $s0, $a0, $s6        
  0042d8f8: lw     $v1, +0($sp)       
  0042d8fc: daddu $s1, $s6, $zero     
  0042d900: sltiu  $v0, $v1, +41      
  0042d904: lw     $v1, +48($sp)      
  0042d908: mult   $s2, $v1, +0       
  0042d90c: bne    $v0, $zero, +408      ; br -> 0x0042daa8
  0042d910: addu $s5, $v1, $s6        
  0042d914: lw     $a0, +0($sp)       
  0042d918: srl $v0, $a0, 3           
  0042d91c: mult   $s2, $v0, +0       
  0042d920: daddu $a0, $s6, $zero     
  0042d924: addu $s1, $s6, $fp        
  0042d928: sll $v0, $fp, 1           
  0042d92c: addu $s3, $v0, $s6        
  0042d930: jalr   $s7, $ra           
  0042d934: daddu $a1, $s1, $zero     
  0042d938: regimm $v0, $at, +48         ; br -> 0x0042d96c
  0042d93c: daddu $a0, $s1, $zero     
  0042d940: jalr   $s7, $ra           
  0042d944: daddu $a1, $s3, $zero     
  0042d948: regimm $v0, $zero, +80       ; br -> 0x0042d99c
  0042d94c: daddu $a0, $s6, $zero     
  0042d950: jalr   $s7, $ra           
  0042d954: daddu $a1, $s3, $zero     
  0042d958: addiu  $v1, $zero, -1     
  0042d95c: daddu $a0, $s3, $zero     
  0042d960: slt $v1, $v1, $v0         
  0042d964: beq    $zero, $zero, +56     ; br -> 0x0042d9a0
  0042d968: movn   $a0, $s6, $v1      
  0042d96c: jalr   $s7, $ra           
  0042d970: daddu $a1, $s3, $zero     
  0042d974: bgtzl  $v0, $zero, +40       ; br -> 0x0042d9a0
  0042d978: daddu $a0, $s1, $zero     
  0042d97c: daddu $a0, $s6, $zero     
  0042d980: jalr   $s7, $ra           
  0042d984: daddu $a1, $s3, $zero     
  0042d988: addiu  $v1, $zero, -1     
  0042d98c: daddu $a0, $s6, $zero     
  0042d990: slt $v1, $v1, $v0         
  0042d994: beq    $zero, $zero, +8      ; br -> 0x0042d9a0
  0042d998: movn   $a0, $s3, $v1      
  0042d99c: daddu $a0, $s1, $zero     
  0042d9a0: subu $s4, $s0, $fp        
  0042d9a4: daddu $s1, $a0, $zero     
  0042d9a8: addu $s3, $s0, $fp        
  0042d9ac: daddu $a0, $s4, $zero     
  0042d9b0: jalr   $s7, $ra           
  0042d9b4: daddu $a1, $s0, $zero     
  0042d9b8: regimm $v0, $at, +48         ; br -> 0x0042d9ec
  0042d9bc: daddu $a0, $s0, $zero     
  0042d9c0: jalr   $s7, $ra           
  0042d9c4: daddu $a1, $s3, $zero     
  0042d9c8: regimm $v0, $zero, +80       ; br -> 0x0042da1c
  0042d9cc: daddu $a0, $s4, $zero     
  0042d9d0: jalr   $s7, $ra           
  0042d9d4: daddu $a1, $s3, $zero     
  0042d9d8: addiu  $v1, $zero, -1     
  0042d9dc: daddu $a0, $s3, $zero     
  0042d9e0: slt $v1, $v1, $v0         
  0042d9e4: beq    $zero, $zero, +56     ; br -> 0x0042da20
  0042d9e8: movn   $a0, $s4, $v1      
  0042d9ec: jalr   $s7, $ra           
  0042d9f0: daddu $a1, $s3, $zero     
  0042d9f4: bgtzl  $v0, $zero, +40       ; br -> 0x0042da20
  0042d9f8: daddu $a0, $s0, $zero     
  0042d9fc: daddu $a0, $s4, $zero     
  0042da00: jalr   $s7, $ra           
  0042da04: daddu $a1, $s3, $zero     
  0042da08: addiu  $v1, $zero, -1     
  0042da0c: daddu $a0, $s4, $zero     
  0042da10: slt $v1, $v1, $v0         
  0042da14: beq    $zero, $zero, +8      ; br -> 0x0042da20
  0042da18: movn   $a0, $s3, $v1      
  0042da1c: daddu $a0, $s0, $zero     
  0042da20: sll $v0, $fp, 1           
  0042da24: subu $s3, $s5, $fp        
  0042da28: subu $s4, $s5, $v0        
  0042da2c: daddu $s0, $a0, $zero     
  0042da30: daddu $a0, $s4, $zero     
  0042da34: jalr   $s7, $ra           
  0042da38: daddu $a1, $s3, $zero     
  0042da3c: regimm $v0, $at, +48         ; br -> 0x0042da70
  0042da40: daddu $a0, $s3, $zero     
  0042da44: jalr   $s7, $ra           
  0042da48: daddu $a1, $s5, $zero     
  0042da4c: regimm $v0, $zero, +80       ; br -> 0x0042daa0
  0042da50: daddu $a0, $s4, $zero     
  0042da54: jalr   $s7, $ra           
  0042da58: daddu $a1, $s5, $zero     
  0042da5c: addiu  $v1, $zero, -1     
  0042da60: daddu $a0, $s5, $zero     
  0042da64: slt $v1, $v1, $v0         
  0042da68: beq    $zero, $zero, +56     ; br -> 0x0042daa4
  0042da6c: movn   $a0, $s4, $v1      
  0042da70: jalr   $s7, $ra           
  0042da74: daddu $a1, $s5, $zero     
  0042da78: bgtzl  $v0, $zero, +40       ; br -> 0x0042daa4
  0042da7c: daddu $a0, $s3, $zero     
  0042da80: daddu $a0, $s4, $zero     
  0042da84: jalr   $s7, $ra           
  0042da88: daddu $a1, $s5, $zero     
  0042da8c: addiu  $v1, $zero, -1     
  0042da90: daddu $a0, $s4, $zero     
  0042da94: slt $v1, $v1, $v0         
  0042da98: beq    $zero, $zero, +8      ; br -> 0x0042daa4
  0042da9c: movn   $a0, $s5, $v1      
  0042daa0: daddu $a0, $s3, $zero     
  0042daa4: daddu $s5, $a0, $zero     
  0042daa8: daddu $a0, $s1, $zero     
  0042daac: jalr   $s7, $ra           
  0042dab0: daddu $a1, $s0, $zero     
  0042dab4: regimm $v0, $at, +48         ; br -> 0x0042dae8
  0042dab8: daddu $a0, $s0, $zero     
  0042dabc: jalr   $s7, $ra           
  0042dac0: daddu $a1, $s5, $zero     
  0042dac4: regimm $v0, $zero, +80       ; br -> 0x0042db18
  0042dac8: daddu $a0, $s1, $zero     
  0042dacc: jalr   $s7, $ra           
  0042dad0: daddu $a1, $s5, $zero     
  0042dad4: addiu  $v1, $zero, -1     
  0042dad8: daddu $a0, $s5, $zero     
  0042dadc: slt $v1, $v1, $v0         
  0042dae0: beq    $zero, $zero, +56     ; br -> 0x0042db1c
  0042dae4: movn   $a0, $s1, $v1      
  0042dae8: jalr   $s7, $ra           
  0042daec: daddu $a1, $s5, $zero     
  0042daf0: bgtzl  $v0, $zero, +40       ; br -> 0x0042db1c
  0042daf4: daddu $a0, $s0, $zero     
  0042daf8: daddu $a0, $s1, $zero     
  0042dafc: jalr   $s7, $ra           
  0042db00: daddu $a1, $s5, $zero     
  0042db04: addiu  $v1, $zero, -1     
  0042db08: daddu $a0, $s1, $zero     
  0042db0c: slt $v1, $v1, $v0         
  0042db10: beq    $zero, $zero, +8      ; br -> 0x0042db1c
  0042db14: movn   $a0, $s5, $v1      
  0042db18: daddu $a0, $s0, $zero     
  0042db1c: daddu $s0, $a0, $zero     
  0042db20: lw     $v0, +4($sp)       
  0042db24: bne    $v0, $zero, +32       ; br -> 0x0042db48
  0042db28: lw     $v1, +4($sp)       
  0042db2c: ld     $v1, +0($s0)       
  0042db30: addu $a0, $s6, $s2        
  0042db34: sw     $a0, +44($sp)      
  0042db38: ld     $v0, +0($s6)       
  0042db3c: sd     $v1, +0($s6)       
  0042db40: beq    $zero, $zero, +140    ; br -> 0x0042dbd0
  0042db44: sd     $v0, +0($s0)       
  0042db48: slti   $v0, $v1, +2       
  0042db4c: beq    $v0, $zero, +72       ; br -> 0x0042db98
  0042db50: srl $v0, $s2, 3           
  0042db54: daddu $a0, $s0, $zero     
  0042db58: spec3c  $zero,$v0,$v0     
  0042db5c: daddu $a2, $s6, $zero     
  0042db60: spec3e  $zero,$v0,$a1     
  0042db64: addu $v0, $s6, $s2        
  0042db68: sw     $v0, +44($sp)      
  0042db6c: sll $zero, $zero, 0       
  0042db70: ld     $v1, +0($a0)       
  0042db74: op19    $a1,$a1,$ra       
  0042db78: ld     $v0, +0($a2)       
  0042db7c: sd     $v1, +0($a2)       
  0042db80: sd     $v0, +0($a0)       
  0042db84: addiu  $a2, $a2, +8       
  0042db88: bgtz   $a1, $zero, -28       ; br -> 0x0042db70
  0042db8c: addiu  $a0, $a0, +8       
  0042db90: beq    $zero, $zero, +64     ; br -> 0x0042dbd4
  0042db94: lw     $v0, +48($sp)      
  0042db98: addu $v1, $s6, $s2        
  0042db9c: spec3c  $zero,$s2,$v0     
  0042dba0: sw     $v1, +44($sp)      
  0042dba4: daddu $a0, $s0, $zero     
  0042dba8: spec3e  $zero,$v0,$a1     
  0042dbac: daddu $a2, $s6, $zero     
  0042dbb0: lbu    $v1, +0($a0)       
  0042dbb4: op19    $a1,$a1,$ra       
  0042dbb8: lb     $v0, +0($a2)       
  0042dbbc: sb     $v1, +0($a2)       
  0042dbc0: sb     $v0, +0($a0)       
  0042dbc4: addiu  $a2, $a2, +1       
  0042dbc8: bgtz   $a1, $zero, -28       ; br -> 0x0042dbb0
  0042dbcc: addiu  $a0, $a0, +1       
  0042dbd0: lw     $v0, +48($sp)      
  0042dbd4: spec3c  $zero,$s2,$a0     
  0042dbd8: lw     $v1, +4($sp)       
  0042dbdc: mult   $s2, $v0, +0       
  0042dbe0: lw     $s1, +44($sp)      
  0042dbe4: slti   $v1, $v1, +2       
  0042dbe8: sd     $a0, +32($sp)      
  0042dbec: sw     $v1, +16($sp)      
  0042dbf0: daddu $s3, $s1, $zero     
  0042dbf4: addu $s4, $v0, $s6        
  0042dbf8: srl $v0, $s2, 3           
  0042dbfc: daddu $s0, $s4, $zero     
  0042dc00: spec3c  $zero,$v0,$v0     
  0042dc04: beq    $zero, $zero, +192    ; br -> 0x0042dcc8
  0042dc08: sd     $v0, +24($sp)      
  0042dc0c: sll $zero, $zero, 0       
  0042dc10: bne    $a1, $zero, +176      ; br -> 0x0042dcc4
  0042dc14: addu $t1, $s1, $s2        
  0042dc18: addiu  $v0, $zero, +1     
  0042dc1c: lw     $v1, +4($sp)       
  0042dc20: bne    $v1, $zero, +28       ; br -> 0x0042dc40
  0042dc24: sw     $v0, +8($sp)       
  0042dc28: ld     $v1, +0($s1)       
  0042dc2c: addu $a3, $s3, $s2        
  0042dc30: ld     $v0, +0($s3)       
  0042dc34: sd     $v1, +0($s3)       
  0042dc38: beq    $zero, $zero, +132    ; br -> 0x0042dcc0
  0042dc3c: sd     $v0, +0($s1)       
  0042dc40: lw     $a0, +16($sp)      
  0042dc44: beq    $a0, $zero, +64       ; br -> 0x0042dc88
  0042dc48: ld     $v0, +24($sp)      
  0042dc4c: daddu $a1, $s3, $zero     
  0042dc50: daddu $a0, $s1, $zero     
  0042dc54: addu $a3, $a1, $s2        
  0042dc58: spec3e  $zero,$v0,$a2     
  0042dc5c: sll $zero, $zero, 0       
  0042dc60: ld     $v1, +0($a0)       
  0042dc64: op19    $a2,$a2,$ra       
  0042dc68: ld     $v0, +0($a1)       
  0042dc6c: sd     $v1, +0($a1)       
  0042dc70: sd     $v0, +0($a0)       
  0042dc74: addiu  $a1, $a1, +8       
  0042dc78: bgtz   $a2, $zero, -28       ; br -> 0x0042dc60
  0042dc7c: addiu  $a0, $a0, +8       
  0042dc80: beq    $zero, $zero, +64     ; br -> 0x0042dcc4
  0042dc84: daddu $s3, $a3, $zero     
  0042dc88: ld     $v1, +32($sp)      
  0042dc8c: daddu $a1, $s3, $zero     
  0042dc90: daddu $a0, $s1, $zero     
  0042dc94: addu $a3, $a1, $s2        
  0042dc98: spec3e  $zero,$v1,$a2     
  0042dc9c: sll $zero, $zero, 0       
  0042dca0: lbu    $v1, +0($a0)       
  0042dca4: op19    $a2,$a2,$ra       
  0042dca8: lb     $v0, +0($a1)       
  0042dcac: sb     $v1, +0($a1)       
  0042dcb0: sb     $v0, +0($a0)       
  0042dcb4: addiu  $a1, $a1, +1       
  0042dcb8: bgtz   $a2, $zero, -28       ; br -> 0x0042dca0
  0042dcbc: addiu  $a0, $a0, +1       
  0042dcc0: daddu $s3, $a3, $zero     
  0042dcc4: daddu $s1, $t1, $zero     
  0042dcc8: sltu $v0, $s0, $s1        
  0042dccc: bne    $v0, $zero, +28       ; br -> 0x0042dcec
  0042dcd0: lw     $a0, +4($sp)       
  0042dcd4: daddu $a1, $s6, $zero     
  0042dcd8: jalr   $s7, $ra           
  0042dcdc: daddu $a0, $s1, $zero     
  0042dce0: daddu $a1, $v0, $zero     
  0042dce4: blez   $a1, $zero, -216      ; br -> 0x0042dc10
  0042dce8: lw     $a0, +4($sp)       
  0042dcec: srl $v0, $s2, 3           
  0042dcf0: spec3c  $zero,$v0,$fp     
  0042dcf4: spec3c  $zero,$s2,$s5     
  0042dcf8: beq    $zero, $zero, +172    ; br -> 0x0042dda8
  0042dcfc: slti   $t1, $a0, +2       
  0042dd00: bne    $a1, $zero, +160      ; br -> 0x0042dda4
  0042dd04: subu $t0, $s0, $s2        
  0042dd08: addiu  $v0, $zero, +1     
  0042dd0c: lw     $v1, +4($sp)       
  0042dd10: bne    $v1, $zero, +28       ; br -> 0x0042dd30
  0042dd14: sw     $v0, +8($sp)       
  0042dd18: ld     $v1, +0($s4)       
  0042dd1c: subu $a3, $s4, $s2        
  0042dd20: ld     $v0, +0($s0)       
  0042dd24: sd     $v1, +0($s0)       
  0042dd28: beq    $zero, $zero, +116    ; br -> 0x0042dda0
  0042dd2c: sd     $v0, +0($s4)       
  0042dd30: beq    $t1, $zero, +60       ; br -> 0x0042dd70
  0042dd34: daddu $a0, $s0, $zero     
  0042dd38: daddu $a1, $s4, $zero     
  0042dd3c: spec3e  $zero,$fp,$a2     
  0042dd40: subu $a3, $a1, $s2        
  0042dd44: sll $zero, $zero, 0       
  0042dd48: ld     $v1, +0($a1)       
  0042dd4c: op19    $a2,$a2,$ra       
  0042dd50: ld     $v0, +0($a0)       
  0042dd54: sd     $v1, +0($a0)       
  0042dd58: sd     $v0, +0($a1)       
  0042dd5c: addiu  $a0, $a0, +8       
  0042dd60: bgtz   $a2, $zero, -28       ; br -> 0x0042dd48
  0042dd64: addiu  $a1, $a1, +8       
  0042dd68: beq    $zero, $zero, +56     ; br -> 0x0042dda4
  0042dd6c: daddu $s4, $a3, $zero     
  0042dd70: daddu $a1, $s4, $zero     
  0042dd74: spec3e  $zero,$s5,$a2     
  0042dd78: subu $a3, $a1, $s2        
  0042dd7c: sll $zero, $zero, 0       
  0042dd80: lbu    $v1, +0($a1)       
  0042dd84: op19    $a2,$a2,$ra       
  0042dd88: lb     $v0, +0($a0)       
  0042dd8c: sb     $v1, +0($a0)       
  0042dd90: sb     $v0, +0($a1)       
  0042dd94: addiu  $a0, $a0, +1       
  0042dd98: bgtz   $a2, $zero, -28       ; br -> 0x0042dd80
  0042dd9c: addiu  $a1, $a1, +1       
  0042dda0: daddu $s4, $a3, $zero     
  0042dda4: daddu $s0, $t0, $zero     
  0042dda8: sltu $v0, $s0, $s1        
  0042ddac: bne    $v0, $zero, +212      ; br -> 0x0042de84
  0042ddb0: daddu $a1, $s6, $zero     
  0042ddb4: sq     $t1, +64($sp)      
  0042ddb8: jalr   $s7, $ra           
  0042ddbc: daddu $a0, $s0, $zero     
  0042ddc0: daddu $a1, $v0, $zero     
  0042ddc4: regimm $a1, $at, -200        ; br -> 0x0042dd00
  0042ddc8: lq     $t1, +64($sp)      
  0042ddcc: lw     $a0, +4($sp)       
  0042ddd0: bne    $a0, $zero, +32       ; br -> 0x0042ddf4
  0042ddd4: lw     $v0, +16($sp)      
  0042ddd8: ld     $v1, +0($s0)       
  0042dddc: addu $t1, $s1, $s2        
  0042dde0: ld     $v0, +0($s1)       
  0042dde4: subu $t0, $s0, $s2        
  0042dde8: sd     $v1, +0($s1)       
  0042ddec: beq    $zero, $zero, +128    ; br -> 0x0042de70
  0042ddf0: sd     $v0, +0($s0)       
  0042ddf4: beq    $v0, $zero, +64       ; br -> 0x0042de38
  0042ddf8: ld     $v1, +24($sp)      
  0042ddfc: daddu $a1, $s1, $zero     
  0042de00: daddu $a0, $s0, $zero     
  0042de04: addu $t1, $a1, $s2        
  0042de08: spec3e  $zero,$v1,$a2     
  0042de0c: subu $t0, $a0, $s2        
  0042de10: ld     $v1, +0($a0)       
  0042de14: op19    $a2,$a2,$ra       
  0042de18: ld     $v0, +0($a1)       
  0042de1c: sd     $v1, +0($a1)       
  0042de20: sd     $v0, +0($a0)       
  0042de24: addiu  $a1, $a1, +8       
  0042de28: bgtz   $a2, $zero, -28       ; br -> 0x0042de10
  0042de2c: addiu  $a0, $a0, +8       
  0042de30: beq    $zero, $zero, +64     ; br -> 0x0042de74
  0042de34: addiu  $v1, $zero, +1     
  0042de38: ld     $v0, +32($sp)      
  0042de3c: daddu $a1, $s1, $zero     
  0042de40: daddu $a0, $s0, $zero     
  0042de44: addu $t1, $a1, $s2        
  0042de48: spec3e  $zero,$v0,$a2     
  0042de4c: subu $t0, $a0, $s2        
  0042de50: lbu    $v1, +0($a0)       
  0042de54: op19    $a2,$a2,$ra       
  0042de58: lb     $v0, +0($a1)       
  0042de5c: sb     $v1, +0($a1)       
  0042de60: sb     $v0, +0($a0)       
  0042de64: addiu  $a1, $a1, +1       
  0042de68: bgtz   $a2, $zero, -28       ; br -> 0x0042de50
  0042de6c: addiu  $a0, $a0, +1       
  0042de70: addiu  $v1, $zero, +1     
  0042de74: daddu $s1, $t1, $zero     
  0042de78: daddu $s0, $t0, $zero     
  0042de7c: beq    $zero, $zero, -440    ; br -> 0x0042dcc8
  0042de80: sw     $v1, +8($sp)       
  0042de84: lw     $a0, +8($sp)       
  0042de88: bne    $a0, $zero, +260      ; br -> 0x0042df90
  0042de8c: subu $a1, $s1, $s3        
  0042de90: lw     $v0, +0($sp)       
  0042de94: lw     $s0, +44($sp)      
  0042de98: mult   $s2, $v0, +0       
  0042de9c: addu $v1, $v0, $s6        
  0042dea0: sltu $v0, $s0, $v1        
  0042dea4: beq    $v0, $zero, +628      ; br -> 0x0042e11c
  0042dea8: srl $v0, $s2, 3           
  0042deac: sw     $v1, +40($sp)      
  0042deb0: lw     $v1, +4($sp)       
  0042deb4: spec3c  $zero,$v0,$fp     
  0042deb8: spec3c  $zero,$s2,$s4     
  0042debc: slti   $s5, $v1, +2       
  0042dec0: daddu $s1, $s0, $zero     
  0042dec4: sll $zero, $zero, 0       
  0042dec8: beq    $zero, $zero, +136    ; br -> 0x0042df54
  0042decc: addu $s3, $s0, $s2        
  0042ded0: bne    $a0, $zero, +24       ; br -> 0x0042deec
  0042ded4: sll $zero, $zero, 0       
  0042ded8: ld     $v0, +0($s0)       
  0042dedc: ld     $v1, +0($s1)       
  0042dee0: sd     $v0, +0($s1)       
  0042dee4: beq    $zero, $zero, +104    ; br -> 0x0042df50
  0042dee8: sd     $v1, +0($s0)       
  0042deec: beq    $s5, $zero, +56       ; br -> 0x0042df28
  0042def0: daddu $a0, $s1, $zero     
  0042def4: spec3e  $zero,$fp,$a1     
  0042def8: daddu $a2, $s0, $zero     
  0042defc: sll $zero, $zero, 0       
  0042df00: ld     $v1, +0($a2)       
  0042df04: op19    $a1,$a1,$ra       
  0042df08: ld     $v0, +0($a0)       
  0042df0c: sd     $v1, +0($a0)       
  0042df10: sd     $v0, +0($a2)       
  0042df14: addiu  $a0, $a0, +8       
  0042df18: bgtz   $a1, $zero, -28       ; br -> 0x0042df00
  0042df1c: addiu  $a2, $a2, +8       
  0042df20: beq    $zero, $zero, +48     ; br -> 0x0042df54
  0042df24: daddu $s1, $s0, $zero     
  0042df28: spec3e  $zero,$s4,$a1     
  0042df2c: daddu $a2, $s0, $zero     
  0042df30: lbu    $v1, +0($a2)       
  0042df34: op19    $a1,$a1,$ra       
  0042df38: lb     $v0, +0($a0)       
  0042df3c: sb     $v1, +0($a0)       
  0042df40: sb     $v0, +0($a2)       
  0042df44: addiu  $a0, $a0, +1       
  0042df48: bgtz   $a1, $zero, -28       ; br -> 0x0042df30
  0042df4c: addiu  $a2, $a2, +1       
  0042df50: daddu $s1, $s0, $zero     
  0042df54: sltu $v0, $s6, $s1        
  0042df58: beq    $v0, $zero, +24       ; br -> 0x0042df74
  0042df5c: subu $s0, $s1, $s2        
  0042df60: daddu $a1, $s1, $zero     
  0042df64: jalr   $s7, $ra           
  0042df68: daddu $a0, $s0, $zero     
  0042df6c: bgtzl  $v0, $zero, -160      ; br -> 0x0042ded0
  0042df70: lw     $a0, +4($sp)       
  0042df74: lw     $v1, +40($sp)      
  0042df78: daddu $s0, $s3, $zero     
  0042df7c: sltu $v0, $s0, $v1        
  0042df80: bne    $v0, $zero, -188      ; br -> 0x0042dec8
  0042df84: daddu $s1, $s0, $zero     
  0042df88: beq    $zero, $zero, +404    ; br -> 0x0042e120
  0042df8c: lq     $ra, +224($sp)     
  0042df90: subu $v1, $s3, $s6        
  0042df94: slt $v0, $v1, $a1         
  0042df98: daddu $a3, $a1, $zero     
  0042df9c: movn   $a1, $v1, $v0      
  0042dfa0: subu $s0, $s4, $s0        
  0042dfa4: lw     $v0, +0($sp)       
  0042dfa8: mult   $s2, $v0, +0       
  0042dfac: blez   $a1, $zero, +128      ; br -> 0x0042e030
  0042dfb0: addu $s5, $v0, $s6        
  0042dfb4: lw     $a0, +4($sp)       
  0042dfb8: slti   $v0, $a0, +2       
  0042dfbc: beq    $v0, $zero, +64       ; br -> 0x0042e000
  0042dfc0: subu $v1, $s1, $a1        
  0042dfc4: srl $v0, $a1, 3           
  0042dfc8: daddu $a2, $v1, $zero     
  0042dfcc: spec3c  $zero,$v0,$v0     
  0042dfd0: daddu $a0, $s6, $zero     
  0042dfd4: spec3e  $zero,$v0,$a1     
  0042dfd8: ld     $v1, +0($a2)       
  0042dfdc: op19    $a1,$a1,$ra       
  0042dfe0: ld     $v0, +0($a0)       
  0042dfe4: sd     $v1, +0($a0)       
  0042dfe8: sd     $v0, +0($a2)       
  0042dfec: addiu  $a0, $a0, +8       
  0042dff0: bgtz   $a1, $zero, -28       ; br -> 0x0042dfd8
  0042dff4: addiu  $a2, $a2, +8       
  0042dff8: beq    $zero, $zero, +56     ; br -> 0x0042e034
  0042dffc: subu $v0, $s5, $s4        
  0042e000: spec3c  $zero,$a1,$v0     
  0042e004: daddu $a2, $v1, $zero     
  0042e008: spec3e  $zero,$v0,$a1     
  0042e00c: daddu $a0, $s6, $zero     
  0042e010: lbu    $v1, +0($a2)       
  0042e014: op19    $a1,$a1,$ra       
  0042e018: lb     $v0, +0($a0)       
  0042e01c: sb     $v1, +0($a0)       
  0042e020: sb     $v0, +0($a2)       
  0042e024: addiu  $a0, $a0, +1       
  0042e028: bgtz   $a1, $zero, -28       ; br -> 0x0042e010
  0042e02c: addiu  $a2, $a2, +1       
  0042e030: subu $v0, $s5, $s4        
  0042e034: subu $a1, $v0, $s2        
  0042e038: sltu $v1, $s0, $a1        
  0042e03c: movn   $a1, $s0, $v1      
  0042e040: blez   $a1, $zero, +124      ; br -> 0x0042e0c0
  0042e044: lw     $v1, +4($sp)       
  0042e048: slti   $v0, $v1, +2       
  0042e04c: beq    $v0, $zero, +64       ; br -> 0x0042e090
  0042e050: subu $v1, $s5, $a1        
  0042e054: srl $v0, $a1, 3           
  0042e058: daddu $a0, $s1, $zero     
  0042e05c: spec3c  $zero,$v0,$v0     
  0042e060: daddu $a2, $v1, $zero     
  0042e064: spec3e  $zero,$v0,$a1     
  0042e068: ld     $v1, +0($a2)       
  0042e06c: op19    $a1,$a1,$ra       
  0042e070: ld     $v0, +0($a0)       
  0042e074: sd     $v1, +0($a0)       
  0042e078: sd     $v0, +0($a2)       
  0042e07c: addiu  $a0, $a0, +8       
  0042e080: bgtz   $a1, $zero, -28       ; br -> 0x0042e068
  0042e084: addiu  $a2, $a2, +8       
  0042e088: beq    $zero, $zero, +56     ; br -> 0x0042e0c4
  0042e08c: daddu $a1, $a3, $zero     
  0042e090: spec3c  $zero,$a1,$v0     
  0042e094: daddu $a0, $s1, $zero     
  0042e098: spec3e  $zero,$v0,$a1     
  0042e09c: daddu $a2, $v1, $zero     
  0042e0a0: lbu    $v1, +0($a2)       
  0042e0a4: op19    $a1,$a1,$ra       
  0042e0a8: lb     $v0, +0($a0)       
  0042e0ac: sb     $v1, +0($a0)       
  0042e0b0: sb     $v0, +0($a2)       
  0042e0b4: addiu  $a0, $a0, +1       
  0042e0b8: bgtz   $a1, $zero, -28       ; br -> 0x0042e0a0
  0042e0bc: addiu  $a2, $a2, +1       
  0042e0c0: daddu $a1, $a3, $zero     
  0042e0c4: sltu $v0, $s2, $a1        
  0042e0c8: beql   $v0, $zero, +40       ; br -> 0x0042e0f4
  0042e0cc: daddu $a1, $s0, $zero     
  0042e0d0: divu   $s2, $a1, +0       
  0042e0d4: beql   $s2, $zero, +4        ; br -> 0x0042e0dc
  0042e0d8: break                     
  0042e0dc: daddu $a0, $s6, $zero     
  0042e0e0: daddu $a2, $s2, $zero     
  0042e0e4: mflo   $zero, $zero, +0   
  0042e0e8: jal   0xf042d770             ; -> FUN_0042d770
  0042e0ec: daddu $a3, $s7, $zero     
  0042e0f0: daddu $a1, $s0, $zero     
  0042e0f4: sltu $v0, $s2, $a1        
  0042e0f8: beq    $v0, $zero, +36       ; br -> 0x0042e120
  0042e0fc: lq     $ra, +224($sp)     
  0042e100: divu   $s2, $a1, +0       
  0042e104: beql   $s2, $zero, +4        ; br -> 0x0042e10c
  0042e108: break                     
  0042e10c: subu $s6, $s5, $a1        
  0042e110: mflo   $zero, $zero, +0   
  0042e114: beq    $zero, $zero, -2412   ; br -> 0x0042d7ac
  0042e118: sw     $v0, +0($sp)       
  0042e11c: lq     $ra, +224($sp)     
  0042e120: lq     $fp, +208($sp)     
  0042e124: lq     $s7, +192($sp)     
  0042e128: lq     $s6, +176($sp)     
  0042e12c: lq     $s5, +160($sp)     
  0042e130: lq     $s4, +144($sp)     
  0042e134: lq     $s3, +128($sp)     
  0042e138: lq     $s2, +112($sp)     
  0042e13c: lq     $s1, +96($sp)      
  0042e140: lq     $s0, +80($sp)      
  0042e144: jr     $ra                
  0042e148: addiu  $sp, $sp, +240     
  0042e14c: sll $zero, $zero, 0       
  0042e150: lui   $v0, 0x00650000     
  0042e154: lw     $v1, +30548($v0)      ; GLOBAL 0x00657754
  0042e158: jr     $ra                
  0042e15c: sw     $a0, +88($v1)      
  0042e160: lui   $v0, 0x00650000     
  0042e164: lui   $a0, 0x41c60000     
  0042e168: lw     $a1, +30548($v0)      ; GLOBAL 0x00657754
  0042e16c: ori    $a0, $a0, +20077   
  0042e170: lui   $v0, 0x7fff0000     
  0042e174: lw     $v1, +88($a1)      
  0042e178: ori    $v0, $v0, -1       
  0042e17c: mult   $a0, $v1, +0       
  0042e180: addiu  $v1, $v1, +12345   
  0042e184: and $v0, $v1, $v0         
  0042e188: jr     $ra                
  0042e18c: sw     $v1, +88($a1)      

; globals: 0x00657754(x2)
