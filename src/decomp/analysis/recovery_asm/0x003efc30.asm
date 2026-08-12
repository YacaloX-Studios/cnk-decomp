; 0x003efc30  FUN_003efc30  size=1136  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=void calls=
; 284 words

  003efc30: addiu  $sp, $sp, -144     
  003efc34: lui   $a3, 0x00700000     
  003efc38: sq     $fp, +128($sp)     
  003efc3c: lui   $t1, 0x00650000     
  003efc40: sq     $s7, +112($sp)     
  003efc44: lui   $t0, 0x00650000     
  003efc48: sq     $s6, +96($sp)      
  003efc4c: lui   $t9, 0x00650000     
  003efc50: sq     $s5, +80($sp)      
  003efc54: lui   $t8, 0x00650000     
  003efc58: sq     $s4, +64($sp)      
  003efc5c: lui   $s5, 0x00650000     
  003efc60: sq     $s3, +48($sp)      
  003efc64: lui   $t7, 0x00650000     
  003efc68: sq     $s2, +32($sp)      
  003efc6c: lui   $s3, 0x00650000     
  003efc70: sq     $s1, +16($sp)      
  003efc74: lui   $t6, 0x00650000     
  003efc78: sq     $s0, +0($sp)       
  003efc7c: lui   $at, 0x00700000     
  003efc80: lw     $t2, -13792($at)      ; GLOBAL 0x0070ca20
  003efc84: lui   $s1, 0x00650000     
  003efc88: lui   $s0, 0x00650000     
  003efc8c: lui   $t5, 0x00650000     
  003efc90: addiu  $a3, $a3, -15812   
  003efc94: addiu  $t4, $zero, +60    
  003efc98: addiu  $t1, $t1, -224     
  003efc9c: addiu  $a2, $zero, -1     
  003efca0: addiu  $a1, $zero, +96    
  003efca4: addiu  $t0, $t0, -192     
  003efca8: addiu  $a0, $zero, +1     
  003efcac: addiu  $v1, $zero, +99    
  003efcb0: addiu  $t3, $t2, +1       
  003efcb4: lui   $at, 0x00700000     
  003efcb8: sw     $t3, -13792($at)      ; GLOBAL 0x0070ca20
  003efcbc: addu $t2, $a3, $t2        
  003efcc0: sb     $t4, +0($t2)       
  003efcc4: lui   $at, 0x00700000     
  003efcc8: sw     $t1, -15340($at)      ; GLOBAL 0x0070c414
  003efccc: lui   $t4, 0x00650000     
  003efcd0: lui   $at, 0x00700000     
  003efcd4: lui   $t3, 0x00650000     
  003efcd8: sh     $a2, -14584($at)      ; GLOBAL 0x0070c708
  003efcdc: addiu  $s5, $s5, -144     
  003efce0: lui   $at, 0x00700000     
  003efce4: addiu  $s4, $zero, +97    
  003efce8: sb     $zero, -14206($at)    ; GLOBAL 0x0070c882
  003efcec: addiu  $s3, $s3, -96      
  003efcf0: lui   $at, 0x00700000     
  003efcf4: addiu  $s2, $zero, +98    
  003efcf8: lw     $t1, -13792($at)      ; GLOBAL 0x0070ca20
  003efcfc: addiu  $s1, $s1, -32      
  003efd00: addiu  $fp, $zero, +75    
  003efd04: addiu  $s0, $s0, +16      
  003efd08: addiu  $t9, $t9, +64      
  003efd0c: addiu  $t8, $t8, +112     
  003efd10: addiu  $t7, $t7, +160     
  003efd14: addiu  $t6, $t6, +208     
  003efd18: addiu  $t5, $t5, +256     
  003efd1c: addiu  $t4, $t4, +288     
  003efd20: addiu  $t3, $t3, +336     
  003efd24: addiu  $t2, $t1, +1       
  003efd28: lui   $at, 0x00700000     
  003efd2c: sw     $t2, -13792($at)      ; GLOBAL 0x0070ca20
  003efd30: addu $t1, $a3, $t1        
  003efd34: sb     $a1, +0($t1)          ; GLOBAL 0x00650000
  003efd38: lui   $at, 0x00700000     
  003efd3c: sw     $t0, -15196($at)      ; GLOBAL 0x0070c4a4
  003efd40: lui   $t2, 0x00650000     
  003efd44: lui   $at, 0x00700000     
  003efd48: lui   $t1, 0x00650000     
  003efd4c: sh     $a2, -14512($at)      ; GLOBAL 0x0070c750
  003efd50: lui   $t0, 0x00650000     
  003efd54: lui   $at, 0x00700000     
  003efd58: addiu  $t2, $t2, +400     
  003efd5c: sb     $a0, -14170($at)      ; GLOBAL 0x0070c8a6
  003efd60: addiu  $t1, $t1, +432     
  003efd64: lui   $at, 0x00700000     
  003efd68: addiu  $t0, $t0, +480     
  003efd6c: lw     $s6, -13792($at)      ; GLOBAL 0x0070ca20
  003efd70: addiu  $s7, $s6, +1       
  003efd74: lui   $at, 0x00700000     
  003efd78: sw     $s7, -13792($at)      ; GLOBAL 0x0070ca20
  003efd7c: addu $s6, $a3, $s6        
  003efd80: sb     $v1, +0($s6)       
  003efd84: lui   $at, 0x00700000     
  003efd88: sw     $s5, -15184($at)      ; GLOBAL 0x0070c4b0
  003efd8c: lui   $at, 0x00700000     
  003efd90: sh     $a1, -14506($at)      ; GLOBAL 0x0070c756
  003efd94: lui   $at, 0x00700000     
  003efd98: sb     $a0, -14167($at)      ; GLOBAL 0x0070c8a9
  003efd9c: lui   $at, 0x00700000     
  003efda0: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efda4: addiu  $a1, $v1, +1       
  003efda8: lui   $at, 0x00700000     
  003efdac: sw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003efdb0: addu $v1, $a3, $v1        
  003efdb4: sb     $s4, +0($v1)       
  003efdb8: lui   $at, 0x00700000     
  003efdbc: sw     $s3, -15192($at)      ; GLOBAL 0x0070c4a8
  003efdc0: lui   $at, 0x00700000     
  003efdc4: sh     $a2, -14510($at)      ; GLOBAL 0x0070c752
  003efdc8: lui   $at, 0x00700000     
  003efdcc: sb     $a0, -14169($at)      ; GLOBAL 0x0070c8a7
  003efdd0: lui   $at, 0x00700000     
  003efdd4: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efdd8: addiu  $a1, $v1, +1       
  003efddc: lui   $at, 0x00700000     
  003efde0: sw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003efde4: addu $v1, $a3, $v1        
  003efde8: sb     $s2, +0($v1)       
  003efdec: lui   $at, 0x00700000     
  003efdf0: sw     $s1, -15188($at)      ; GLOBAL 0x0070c4ac
  003efdf4: lui   $at, 0x00700000     
  003efdf8: sh     $s4, -14508($at)      ; GLOBAL 0x0070c754
  003efdfc: lui   $at, 0x00700000     
  003efe00: sb     $a0, -14168($at)      ; GLOBAL 0x0070c8a8
  003efe04: lui   $at, 0x00700000     
  003efe08: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efe0c: addiu  $a1, $v1, +1       
  003efe10: lui   $at, 0x00700000     
  003efe14: sw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003efe18: addu $v1, $a3, $v1        
  003efe1c: sb     $fp, +0($v1)       
  003efe20: lui   $at, 0x00700000     
  003efe24: sw     $s0, -15280($at)      ; GLOBAL 0x0070c450
  003efe28: lui   $at, 0x00700000     
  003efe2c: sh     $a2, -14554($at)      ; GLOBAL 0x0070c726
  003efe30: lui   $at, 0x00700000     
  003efe34: sb     $a0, -14191($at)      ; GLOBAL 0x0070c891
  003efe38: lui   $at, 0x00700000     
  003efe3c: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003efe40: addiu  $v1, $a1, +1       
  003efe44: lui   $at, 0x00700000     
  003efe48: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efe4c: addu $a1, $a3, $a1        
  003efe50: addiu  $v1, $zero, +70    
  003efe54: lui   $at, 0x00700000     
  003efe58: sb     $v1, +0($a1)       
  003efe5c: sw     $t9, -15300($at)      ; GLOBAL 0x0070c43c
  003efe60: lui   $at, 0x00700000     
  003efe64: sh     $a2, -14564($at)      ; GLOBAL 0x0070c71c
  003efe68: lui   $at, 0x00700000     
  003efe6c: sb     $a0, -14196($at)      ; GLOBAL 0x0070c88c
  003efe70: lui   $at, 0x00700000     
  003efe74: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003efe78: addiu  $v1, $a1, +1       
  003efe7c: lui   $at, 0x00700000     
  003efe80: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efe84: addu $a1, $a3, $a1        
  003efe88: addiu  $v1, $zero, +61    
  003efe8c: lui   $at, 0x00700000     
  003efe90: sb     $v1, +0($a1)       
  003efe94: sw     $t8, -15336($at)      ; GLOBAL 0x0070c418
  003efe98: lui   $at, 0x00700000     
  003efe9c: sh     $a2, -14582($at)      ; GLOBAL 0x0070c70a
  003efea0: lui   $at, 0x00700000     
  003efea4: sb     $zero, -14205($at)    ; GLOBAL 0x0070c883
  003efea8: lui   $at, 0x00700000     
  003efeac: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003efeb0: addiu  $v1, $a1, +1       
  003efeb4: lui   $at, 0x00700000     
  003efeb8: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efebc: addu $a1, $a3, $a1        
  003efec0: addiu  $v1, $zero, +7     
  003efec4: lui   $at, 0x00700000     
  003efec8: sb     $v1, +0($a1)       
  003efecc: sw     $t7, -15552($at)      ; GLOBAL 0x0070c340
  003efed0: lui   $at, 0x00700000     
  003efed4: sh     $a2, -14690($at)      ; GLOBAL 0x0070c69e
  003efed8: lui   $at, 0x00700000     
  003efedc: sb     $a0, -14259($at)      ; GLOBAL 0x0070c84d
  003efee0: lui   $at, 0x00700000     
  003efee4: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003efee8: addiu  $v1, $a1, +1       
  003efeec: lui   $at, 0x00700000     
  003efef0: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003efef4: addu $a1, $a3, $a1        
  003efef8: addiu  $v1, $zero, +15    
  003efefc: lui   $at, 0x00700000     
  003eff00: sb     $v1, +0($a1)       
  003eff04: sw     $t6, -15520($at)      ; GLOBAL 0x0070c360
  003eff08: lui   $at, 0x00700000     
  003eff0c: sh     $a2, -14674($at)      ; GLOBAL 0x0070c6ae
  003eff10: lui   $at, 0x00700000     
  003eff14: sb     $a0, -14251($at)      ; GLOBAL 0x0070c855
  003eff18: lui   $at, 0x00700000     
  003eff1c: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003eff20: addiu  $v1, $a1, +1       
  003eff24: lui   $at, 0x00700000     
  003eff28: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003eff2c: addu $a1, $a3, $a1        
  003eff30: addiu  $v1, $zero, +16    
  003eff34: lui   $at, 0x00700000     
  003eff38: sb     $v1, +0($a1)       
  003eff3c: sw     $t5, -15516($at)      ; GLOBAL 0x0070c364
  003eff40: lui   $at, 0x00700000     
  003eff44: sh     $a2, -14672($at)      ; GLOBAL 0x0070c6b0
  003eff48: lui   $at, 0x00700000     
  003eff4c: sb     $a0, -14250($at)      ; GLOBAL 0x0070c856
  003eff50: lui   $at, 0x00700000     
  003eff54: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003eff58: addiu  $v1, $a1, +1       
  003eff5c: lui   $at, 0x00700000     
  003eff60: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003eff64: addu $a1, $a3, $a1        
  003eff68: addiu  $v1, $zero, +17    
  003eff6c: lui   $at, 0x00700000     
  003eff70: sb     $v1, +0($a1)       
  003eff74: sw     $t4, -15512($at)      ; GLOBAL 0x0070c368
  003eff78: lui   $at, 0x00700000     
  003eff7c: sh     $a2, -14670($at)      ; GLOBAL 0x0070c6b2
  003eff80: lui   $at, 0x00700000     
  003eff84: sb     $a0, -14249($at)      ; GLOBAL 0x0070c857
  003eff88: lui   $at, 0x00700000     
  003eff8c: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003eff90: addiu  $v1, $a1, +1       
  003eff94: lui   $at, 0x00700000     
  003eff98: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003eff9c: addu $a1, $a3, $a1        
  003effa0: addiu  $v1, $zero, +55    
  003effa4: lui   $at, 0x00700000     
  003effa8: sb     $v1, +0($a1)       
  003effac: sw     $t3, -15360($at)      ; GLOBAL 0x0070c400
  003effb0: lui   $at, 0x00700000     
  003effb4: sh     $a2, -14594($at)      ; GLOBAL 0x0070c6fe
  003effb8: lui   $at, 0x00700000     
  003effbc: sb     $a0, -14211($at)      ; GLOBAL 0x0070c87d
  003effc0: lui   $at, 0x00700000     
  003effc4: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003effc8: addiu  $v1, $a1, +1       
  003effcc: lui   $at, 0x00700000     
  003effd0: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003effd4: addu $a1, $a3, $a1        
  003effd8: addiu  $v1, $zero, +28    
  003effdc: lui   $at, 0x00700000     
  003effe0: sb     $v1, +0($a1)       
  003effe4: sw     $t2, -15468($at)      ; GLOBAL 0x0070c394
  003effe8: lui   $at, 0x00700000     
  003effec: sh     $a2, -14648($at)      ; GLOBAL 0x0070c6c8
  003efff0: lui   $at, 0x00700000     
  003efff4: sb     $a0, -14238($at)      ; GLOBAL 0x0070c862
  003efff8: lui   $at, 0x00700000     
  003efffc: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0000: addiu  $v1, $a1, +1       
  003f0004: lui   $at, 0x00700000     
  003f0008: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f000c: addu $a1, $a3, $a1        
  003f0010: addiu  $v1, $zero, +29    
  003f0014: lui   $at, 0x00700000     
  003f0018: sb     $v1, +0($a1)       
  003f001c: sw     $t1, -15464($at)      ; GLOBAL 0x0070c398
  003f0020: lui   $at, 0x00700000     
  003f0024: sh     $a2, -14646($at)      ; GLOBAL 0x0070c6ca
  003f0028: lui   $at, 0x00700000     
  003f002c: sb     $a0, -14237($at)      ; GLOBAL 0x0070c863
  003f0030: lui   $at, 0x00700000     
  003f0034: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0038: addu $a1, $a3, $v1        
  003f003c: lui   $at, 0x00700000     
  003f0040: addiu  $v1, $v1, +1       
  003f0044: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f0048: addiu  $v1, $zero, +24    
  003f004c: lui   $at, 0x00700000     
  003f0050: sb     $v1, +0($a1)       
  003f0054: sw     $t0, -15484($at)      ; GLOBAL 0x0070c384
  003f0058: lui   $at, 0x00700000     
  003f005c: sh     $a2, -14656($at)      ; GLOBAL 0x0070c6c0
  003f0060: lui   $at, 0x00700000     
  003f0064: sb     $a0, -14242($at)      ; GLOBAL 0x0070c85e
  003f0068: lq     $fp, +128($sp)     
  003f006c: lq     $s7, +112($sp)     
  003f0070: lq     $s6, +96($sp)      
  003f0074: lq     $s5, +80($sp)      
  003f0078: lq     $s4, +64($sp)      
  003f007c: lq     $s3, +48($sp)      
  003f0080: lq     $s2, +32($sp)      
  003f0084: lq     $s1, +16($sp)      
  003f0088: lq     $s0, +0($sp)       
  003f008c: jr     $ra                
  003f0090: addiu  $sp, $sp, +144     
  003f0094: sll $zero, $zero, 0       
  003f0098: sll $zero, $zero, 0       
  003f009c: sll $zero, $zero, 0       

; globals: 0x0070ca20(x32), 0x0070c414(x1), 0x0070c708(x1), 0x0070c882(x1), 0x00650000(x1), 0x0070c4a4(x1), 0x0070c750(x1), 0x0070c8a6(x1), 0x0070c4b0(x1), 0x0070c756(x1)
