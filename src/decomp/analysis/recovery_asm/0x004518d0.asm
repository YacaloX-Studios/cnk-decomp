; 0x004518d0  FUN_004518d0  size=8592  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=ptr;a3=ptr ret=void calls=
; 2148 words

  004518d0: addiu  $sp, $sp, -16      
  004518d4: sq     $s0, +0($sp)       
  004518d8: lbu    $t2, +9($a0)       
  004518dc: slti   $at, $t2, +9       
  004518e0: beq    $at, $zero, +12       ; br -> 0x004518f0
  004518e4: lw     $v1, +0($a0)       
  004518e8: bne    $a2, $zero, +28       ; br -> 0x00451908
  004518ec: sll $zero, $zero, 0       
  004518f0: addiu  $t1, $zero, +16    
  004518f4: bne    $t2, $t1, +3848       ; br -> 0x00452800
  004518f8: sll $zero, $zero, 0       
  004518fc: beq    $a3, $zero, +3840     ; br -> 0x00452800
  00451900: sll $zero, $zero, 0       
  00451904: sll $zero, $zero, 0       
  00451908: lbu    $t1, +8($a0)       
  0045190c: beq    $t1, $zero, +2200     ; br -> 0x004521a8
  00451910: sll $zero, $zero, 0       
  00451914: addiu  $a0, $zero, +4     
  00451918: beq    $t1, $a0, +1444       ; br -> 0x00451ec0
  0045191c: addiu  $a0, $zero, +6     
  00451920: beq    $t1, $a0, +732        ; br -> 0x00451c00
  00451924: sll $zero, $zero, 0       
  00451928: addiu  $a0, $zero, +2     
  0045192c: beq    $t1, $a0, +16         ; br -> 0x00451940
  00451930: sll $zero, $zero, 0       
  00451934: beq    $zero, $zero, +3784   ; br -> 0x00452800
  00451938: sll $zero, $zero, 0       
  0045193c: sll $zero, $zero, 0       
  00451940: addiu  $a0, $zero, +8     
  00451944: bne    $t2, $a0, +512        ; br -> 0x00451b48
  00451948: sltu $at, $zero, $v1      
  0045194c: beq    $at, $zero, +3760     ; br -> 0x00452800
  00451950: daddu $a3, $zero, $zero   
  00451954: sltiu  $at, $v1, +9       
  00451958: bne    $at, $zero, +404      ; br -> 0x00451af0
  0045195c: addiu  $a0, $v1, -8       
  00451960: lbu    $t1, +0($a1)       
  00451964: addiu  $a3, $a3, +8       
  00451968: sltu $t0, $a3, $a0        
  0045196c: addu $t1, $a2, $t1        
  00451970: lbu    $t1, +0($t1)       
  00451974: sb     $t1, +0($a1)       
  00451978: lbu    $t1, +1($a1)       
  0045197c: addu $t1, $a2, $t1        
  00451980: lbu    $t1, +0($t1)       
  00451984: sb     $t1, +1($a1)       
  00451988: lbu    $t1, +2($a1)       
  0045198c: addu $t1, $a2, $t1        
  00451990: lbu    $t1, +0($t1)       
  00451994: sb     $t1, +2($a1)       
  00451998: lbu    $t1, +3($a1)       
  0045199c: addu $t1, $a2, $t1        
  004519a0: lbu    $t1, +0($t1)       
  004519a4: sb     $t1, +3($a1)       
  004519a8: lbu    $t1, +4($a1)       
  004519ac: addu $t1, $a2, $t1        
  004519b0: lbu    $t1, +0($t1)       
  004519b4: sb     $t1, +4($a1)       
  004519b8: lbu    $t1, +5($a1)       
  004519bc: addu $t1, $a2, $t1        
  004519c0: lbu    $t1, +0($t1)       
  004519c4: sb     $t1, +5($a1)       
  004519c8: lbu    $t1, +6($a1)       
  004519cc: addu $t1, $a2, $t1        
  004519d0: lbu    $t1, +0($t1)       
  004519d4: sb     $t1, +6($a1)       
  004519d8: lbu    $t1, +7($a1)       
  004519dc: addu $t1, $a2, $t1        
  004519e0: lbu    $t1, +0($t1)       
  004519e4: sb     $t1, +7($a1)       
  004519e8: lbu    $t1, +8($a1)       
  004519ec: addu $t1, $a2, $t1        
  004519f0: lbu    $t1, +0($t1)       
  004519f4: sb     $t1, +8($a1)       
  004519f8: lbu    $t1, +9($a1)       
  004519fc: addu $t1, $a2, $t1        
  00451a00: lbu    $t1, +0($t1)       
  00451a04: sb     $t1, +9($a1)       
  00451a08: lbu    $t1, +10($a1)      
  00451a0c: addu $t1, $a2, $t1        
  00451a10: lbu    $t1, +0($t1)       
  00451a14: sb     $t1, +10($a1)      
  00451a18: lbu    $t1, +11($a1)      
  00451a1c: addu $t1, $a2, $t1        
  00451a20: lbu    $t1, +0($t1)       
  00451a24: sb     $t1, +11($a1)      
  00451a28: lbu    $t1, +12($a1)      
  00451a2c: addu $t1, $a2, $t1        
  00451a30: lbu    $t1, +0($t1)       
  00451a34: sb     $t1, +12($a1)      
  00451a38: lbu    $t1, +13($a1)      
  00451a3c: addu $t1, $a2, $t1        
  00451a40: lbu    $t1, +0($t1)       
  00451a44: sb     $t1, +13($a1)      
  00451a48: lbu    $t1, +14($a1)      
  00451a4c: addu $t1, $a2, $t1        
  00451a50: lbu    $t1, +0($t1)       
  00451a54: sb     $t1, +14($a1)      
  00451a58: lbu    $t1, +15($a1)      
  00451a5c: addu $t1, $a2, $t1        
  00451a60: lbu    $t1, +0($t1)       
  00451a64: sb     $t1, +15($a1)      
  00451a68: lbu    $t1, +16($a1)      
  00451a6c: addu $t1, $a2, $t1        
  00451a70: lbu    $t1, +0($t1)       
  00451a74: sb     $t1, +16($a1)      
  00451a78: lbu    $t1, +17($a1)      
  00451a7c: addu $t1, $a2, $t1        
  00451a80: lbu    $t1, +0($t1)       
  00451a84: sb     $t1, +17($a1)      
  00451a88: lbu    $t1, +18($a1)      
  00451a8c: addu $t1, $a2, $t1        
  00451a90: lbu    $t1, +0($t1)       
  00451a94: sb     $t1, +18($a1)      
  00451a98: lbu    $t1, +19($a1)      
  00451a9c: addu $t1, $a2, $t1        
  00451aa0: lbu    $t1, +0($t1)       
  00451aa4: sb     $t1, +19($a1)      
  00451aa8: lbu    $t1, +20($a1)      
  00451aac: addu $t1, $a2, $t1        
  00451ab0: lbu    $t1, +0($t1)       
  00451ab4: sb     $t1, +20($a1)      
  00451ab8: lbu    $t1, +21($a1)      
  00451abc: addu $t1, $a2, $t1        
  00451ac0: lbu    $t1, +0($t1)       
  00451ac4: sb     $t1, +21($a1)      
  00451ac8: lbu    $t1, +22($a1)      
  00451acc: addu $t1, $a2, $t1        
  00451ad0: lbu    $t1, +0($t1)       
  00451ad4: sb     $t1, +22($a1)      
  00451ad8: lbu    $t1, +23($a1)      
  00451adc: addu $t1, $a2, $t1        
  00451ae0: lbu    $t1, +0($t1)       
  00451ae4: sb     $t1, +23($a1)      
  00451ae8: bne    $t0, $zero, -396      ; br -> 0x00451960
  00451aec: addiu  $a1, $a1, +24      
  00451af0: sltu $at, $a3, $v1        
  00451af4: beq    $at, $zero, +3336     ; br -> 0x00452800
  00451af8: sll $zero, $zero, 0       
  00451afc: sll $zero, $zero, 0       
  00451b00: lbu    $t0, +0($a1)       
  00451b04: addiu  $a3, $a3, +1       
  00451b08: sltu $a0, $a3, $v1        
  00451b0c: addu $t0, $a2, $t0        
  00451b10: lbu    $t0, +0($t0)       
  00451b14: sb     $t0, +0($a1)       
  00451b18: lbu    $t0, +1($a1)       
  00451b1c: addu $t0, $a2, $t0        
  00451b20: lbu    $t0, +0($t0)       
  00451b24: sb     $t0, +1($a1)       
  00451b28: lbu    $t0, +2($a1)       
  00451b2c: addu $t0, $a2, $t0        
  00451b30: lbu    $t0, +0($t0)       
  00451b34: sb     $t0, +2($a1)       
  00451b38: bne    $a0, $zero, -60       ; br -> 0x00451b00
  00451b3c: addiu  $a1, $a1, +3       
  00451b40: beq    $zero, $zero, +3260   ; br -> 0x00452800
  00451b44: sll $zero, $zero, 0       
  00451b48: sltu $at, $zero, $v1      
  00451b4c: beq    $at, $zero, +3248     ; br -> 0x00452800
  00451b50: daddu $a0, $zero, $zero   
  00451b54: sll $zero, $zero, 0       
  00451b58: lbu    $t2, +1($a1)       
  00451b5c: addiu  $a0, $a0, +1       
  00451b60: lbu    $t1, +0($a1)       
  00451b64: sltu $a2, $a0, $v1        
  00451b68: srav $t2, $t2, $t0        
  00451b6c: sll $t3, $t2, 2           
  00451b70: sll $t2, $t1, 1           
  00451b74: addu $t1, $a3, $t3        
  00451b78: lw     $t1, +0($t1)       
  00451b7c: addu $t1, $t1, $t2        
  00451b80: lhu    $t2, +0($t1)       
  00451b84: sra $t1, $t2, 8           
  00451b88: sb     $t1, +0($a1)       
  00451b8c: sb     $t2, +1($a1)       
  00451b90: lbu    $t2, +3($a1)       
  00451b94: lbu    $t1, +2($a1)       
  00451b98: srav $t2, $t2, $t0        
  00451b9c: sll $t3, $t2, 2           
  00451ba0: sll $t2, $t1, 1           
  00451ba4: addu $t1, $a3, $t3        
  00451ba8: lw     $t1, +0($t1)       
  00451bac: addu $t1, $t1, $t2        
  00451bb0: lhu    $t2, +0($t1)       
  00451bb4: sra $t1, $t2, 8           
  00451bb8: sb     $t1, +2($a1)       
  00451bbc: sb     $t2, +3($a1)       
  00451bc0: lbu    $t2, +5($a1)       
  00451bc4: lbu    $t1, +4($a1)       
  00451bc8: srav $t2, $t2, $t0        
  00451bcc: sll $t3, $t2, 2           
  00451bd0: sll $t2, $t1, 1           
  00451bd4: addu $t1, $a3, $t3        
  00451bd8: lw     $t1, +0($t1)       
  00451bdc: addu $t1, $t1, $t2        
  00451be0: lhu    $t2, +0($t1)       
  00451be4: sra $t1, $t2, 8           
  00451be8: sb     $t1, +4($a1)       
  00451bec: sb     $t2, +5($a1)       
  00451bf0: bne    $a2, $zero, -156      ; br -> 0x00451b58
  00451bf4: addiu  $a1, $a1, +6       
  00451bf8: beq    $zero, $zero, +3076   ; br -> 0x00452800
  00451bfc: sll $zero, $zero, 0       
  00451c00: addiu  $a0, $zero, +8     
  00451c04: bne    $t2, $a0, +512        ; br -> 0x00451e08
  00451c08: sltu $at, $zero, $v1      
  00451c0c: beq    $at, $zero, +3056     ; br -> 0x00452800
  00451c10: daddu $a0, $zero, $zero   
  00451c14: sltiu  $at, $v1, +9       
  00451c18: bne    $at, $zero, +404      ; br -> 0x00451db0
  00451c1c: addiu  $a3, $v1, -8       
  00451c20: lbu    $t1, +0($a1)       
  00451c24: addiu  $a0, $a0, +8       
  00451c28: sltu $t0, $a0, $a3        
  00451c2c: addu $t1, $a2, $t1        
  00451c30: lbu    $t1, +0($t1)       
  00451c34: sb     $t1, +0($a1)       
  00451c38: lbu    $t1, +1($a1)       
  00451c3c: addu $t1, $a2, $t1        
  00451c40: lbu    $t1, +0($t1)       
  00451c44: sb     $t1, +1($a1)       
  00451c48: lbu    $t1, +2($a1)       
  00451c4c: addu $t1, $a2, $t1        
  00451c50: lbu    $t1, +0($t1)       
  00451c54: sb     $t1, +2($a1)       
  00451c58: lbu    $t1, +4($a1)       
  00451c5c: addu $t1, $a2, $t1        
  00451c60: lbu    $t1, +0($t1)       
  00451c64: sb     $t1, +4($a1)       
  00451c68: lbu    $t1, +5($a1)       
  00451c6c: addu $t1, $a2, $t1        
  00451c70: lbu    $t1, +0($t1)       
  00451c74: sb     $t1, +5($a1)       
  00451c78: lbu    $t1, +6($a1)       
  00451c7c: addu $t1, $a2, $t1        
  00451c80: lbu    $t1, +0($t1)       
  00451c84: sb     $t1, +6($a1)       
  00451c88: lbu    $t1, +8($a1)       
  00451c8c: addu $t1, $a2, $t1        
  00451c90: lbu    $t1, +0($t1)       
  00451c94: sb     $t1, +8($a1)       
  00451c98: lbu    $t1, +9($a1)       
  00451c9c: addu $t1, $a2, $t1        
  00451ca0: lbu    $t1, +0($t1)       
  00451ca4: sb     $t1, +9($a1)       
  00451ca8: lbu    $t1, +10($a1)      
  00451cac: addu $t1, $a2, $t1        
  00451cb0: lbu    $t1, +0($t1)       
  00451cb4: sb     $t1, +10($a1)      
  00451cb8: lbu    $t1, +12($a1)      
  00451cbc: addu $t1, $a2, $t1        
  00451cc0: lbu    $t1, +0($t1)       
  00451cc4: sb     $t1, +12($a1)      
  00451cc8: lbu    $t1, +13($a1)      
  00451ccc: addu $t1, $a2, $t1        
  00451cd0: lbu    $t1, +0($t1)       
  00451cd4: sb     $t1, +13($a1)      
  00451cd8: lbu    $t1, +14($a1)      
  00451cdc: addu $t1, $a2, $t1        
  00451ce0: lbu    $t1, +0($t1)       
  00451ce4: sb     $t1, +14($a1)      
  00451ce8: lbu    $t1, +16($a1)      
  00451cec: addu $t1, $a2, $t1        
  00451cf0: lbu    $t1, +0($t1)       
  00451cf4: sb     $t1, +16($a1)      
  00451cf8: lbu    $t1, +17($a1)      
  00451cfc: addu $t1, $a2, $t1        
  00451d00: lbu    $t1, +0($t1)       
  00451d04: sb     $t1, +17($a1)      
  00451d08: lbu    $t1, +18($a1)      
  00451d0c: addu $t1, $a2, $t1        
  00451d10: lbu    $t1, +0($t1)       
  00451d14: sb     $t1, +18($a1)      
  00451d18: lbu    $t1, +20($a1)      
  00451d1c: addu $t1, $a2, $t1        
  00451d20: lbu    $t1, +0($t1)       
  00451d24: sb     $t1, +20($a1)      
  00451d28: lbu    $t1, +21($a1)      
  00451d2c: addu $t1, $a2, $t1        
  00451d30: lbu    $t1, +0($t1)       
  00451d34: sb     $t1, +21($a1)      
  00451d38: lbu    $t1, +22($a1)      
  00451d3c: addu $t1, $a2, $t1        
  00451d40: lbu    $t1, +0($t1)       
  00451d44: sb     $t1, +22($a1)      
  00451d48: lbu    $t1, +24($a1)      
  00451d4c: addu $t1, $a2, $t1        
  00451d50: lbu    $t1, +0($t1)       
  00451d54: sb     $t1, +24($a1)      
  00451d58: lbu    $t1, +25($a1)      
  00451d5c: addu $t1, $a2, $t1        
  00451d60: lbu    $t1, +0($t1)       
  00451d64: sb     $t1, +25($a1)      
  00451d68: lbu    $t1, +26($a1)      
  00451d6c: addu $t1, $a2, $t1        
  00451d70: lbu    $t1, +0($t1)       
  00451d74: sb     $t1, +26($a1)      
  00451d78: lbu    $t1, +28($a1)      
  00451d7c: addu $t1, $a2, $t1        
  00451d80: lbu    $t1, +0($t1)       
  00451d84: sb     $t1, +28($a1)      
  00451d88: lbu    $t1, +29($a1)      
  00451d8c: addu $t1, $a2, $t1        
  00451d90: lbu    $t1, +0($t1)       
  00451d94: sb     $t1, +29($a1)      
  00451d98: lbu    $t1, +30($a1)      
  00451d9c: addu $t1, $a2, $t1        
  00451da0: lbu    $t1, +0($t1)       
  00451da4: sb     $t1, +30($a1)      
  00451da8: bne    $t0, $zero, -396      ; br -> 0x00451c20
  00451dac: addiu  $a1, $a1, +32      
  00451db0: sltu $at, $a0, $v1        
  00451db4: beq    $at, $zero, +2632     ; br -> 0x00452800
  00451db8: sll $zero, $zero, 0       
  00451dbc: sll $zero, $zero, 0       
  00451dc0: lbu    $t0, +0($a1)       
  00451dc4: addiu  $a0, $a0, +1       
  00451dc8: sltu $a3, $a0, $v1        
  00451dcc: addu $t0, $a2, $t0        
  00451dd0: lbu    $t0, +0($t0)       
  00451dd4: sb     $t0, +0($a1)       
  00451dd8: lbu    $t0, +1($a1)       
  00451ddc: addu $t0, $a2, $t0        
  00451de0: lbu    $t0, +0($t0)       
  00451de4: sb     $t0, +1($a1)       
  00451de8: lbu    $t0, +2($a1)       
  00451dec: addu $t0, $a2, $t0        
  00451df0: lbu    $t0, +0($t0)       
  00451df4: sb     $t0, +2($a1)       
  00451df8: bne    $a3, $zero, -60       ; br -> 0x00451dc0
  00451dfc: addiu  $a1, $a1, +4       
  00451e00: beq    $zero, $zero, +2556   ; br -> 0x00452800
  00451e04: sll $zero, $zero, 0       
  00451e08: sltu $at, $zero, $v1      
  00451e0c: beq    $at, $zero, +2544     ; br -> 0x00452800
  00451e10: daddu $a0, $zero, $zero   
  00451e14: sll $zero, $zero, 0       
  00451e18: lbu    $t2, +1($a1)       
  00451e1c: addiu  $a0, $a0, +1       
  00451e20: lbu    $t1, +0($a1)       
  00451e24: sltu $a2, $a0, $v1        
  00451e28: srav $t2, $t2, $t0        
  00451e2c: sll $t3, $t2, 2           
  00451e30: sll $t2, $t1, 1           
  00451e34: addu $t1, $a3, $t3        
  00451e38: lw     $t1, +0($t1)       
  00451e3c: addu $t1, $t1, $t2        
  00451e40: lhu    $t2, +0($t1)       
  00451e44: sra $t1, $t2, 8           
  00451e48: sb     $t1, +0($a1)       
  00451e4c: sb     $t2, +1($a1)       
  00451e50: lbu    $t2, +3($a1)       
  00451e54: lbu    $t1, +2($a1)       
  00451e58: srav $t2, $t2, $t0        
  00451e5c: sll $t3, $t2, 2           
  00451e60: sll $t2, $t1, 1           
  00451e64: addu $t1, $a3, $t3        
  00451e68: lw     $t1, +0($t1)       
  00451e6c: addu $t1, $t1, $t2        
  00451e70: lhu    $t2, +0($t1)       
  00451e74: sra $t1, $t2, 8           
  00451e78: sb     $t1, +2($a1)       
  00451e7c: sb     $t2, +3($a1)       
  00451e80: lbu    $t2, +5($a1)       
  00451e84: lbu    $t1, +4($a1)       
  00451e88: srav $t2, $t2, $t0        
  00451e8c: sll $t3, $t2, 2           
  00451e90: sll $t2, $t1, 1           
  00451e94: addu $t1, $a3, $t3        
  00451e98: lw     $t1, +0($t1)       
  00451e9c: addu $t1, $t1, $t2        
  00451ea0: lhu    $t2, +0($t1)       
  00451ea4: sra $t1, $t2, 8           
  00451ea8: sb     $t1, +4($a1)       
  00451eac: sb     $t2, +5($a1)       
  00451eb0: bne    $a2, $zero, -156      ; br -> 0x00451e18
  00451eb4: addiu  $a1, $a1, +8       
  00451eb8: beq    $zero, $zero, +2372   ; br -> 0x00452800
  00451ebc: sll $zero, $zero, 0       
  00451ec0: addiu  $a0, $zero, +8     
  00451ec4: bne    $t2, $a0, +224        ; br -> 0x00451fa8
  00451ec8: sltu $at, $zero, $v1      
  00451ecc: beq    $at, $zero, +2352     ; br -> 0x00452800
  00451ed0: daddu $a0, $zero, $zero   
  00451ed4: sltiu  $at, $v1, +9       
  00451ed8: bne    $at, $zero, +148      ; br -> 0x00451f70
  00451edc: addiu  $a3, $v1, -8       
  00451ee0: lbu    $t1, +0($a1)       
  00451ee4: addiu  $a0, $a0, +8       
  00451ee8: sltu $t0, $a0, $a3        
  00451eec: addu $t1, $a2, $t1        
  00451ef0: lbu    $t1, +0($t1)       
  00451ef4: sb     $t1, +0($a1)       
  00451ef8: lbu    $t1, +2($a1)       
  00451efc: addu $t1, $a2, $t1        
  00451f00: lbu    $t1, +0($t1)       
  00451f04: sb     $t1, +2($a1)       
  00451f08: lbu    $t1, +4($a1)       
  00451f0c: addu $t1, $a2, $t1        
  00451f10: lbu    $t1, +0($t1)       
  00451f14: sb     $t1, +4($a1)       
  00451f18: lbu    $t1, +6($a1)       
  00451f1c: addu $t1, $a2, $t1        
  00451f20: lbu    $t1, +0($t1)       
  00451f24: sb     $t1, +6($a1)       
  00451f28: lbu    $t1, +8($a1)       
  00451f2c: addu $t1, $a2, $t1        
  00451f30: lbu    $t1, +0($t1)       
  00451f34: sb     $t1, +8($a1)       
  00451f38: lbu    $t1, +10($a1)      
  00451f3c: addu $t1, $a2, $t1        
  00451f40: lbu    $t1, +0($t1)       
  00451f44: sb     $t1, +10($a1)      
  00451f48: lbu    $t1, +12($a1)      
  00451f4c: addu $t1, $a2, $t1        
  00451f50: lbu    $t1, +0($t1)       
  00451f54: sb     $t1, +12($a1)      
  00451f58: lbu    $t1, +14($a1)      
  00451f5c: addu $t1, $a2, $t1        
  00451f60: lbu    $t1, +0($t1)       
  00451f64: sb     $t1, +14($a1)      
  00451f68: bne    $t0, $zero, -140      ; br -> 0x00451ee0
  00451f6c: addiu  $a1, $a1, +16      
  00451f70: sltu $at, $a0, $v1        
  00451f74: beq    $at, $zero, +2184     ; br -> 0x00452800
  00451f78: sll $zero, $zero, 0       
  00451f7c: sll $zero, $zero, 0       
  00451f80: lbu    $t0, +0($a1)       
  00451f84: addiu  $a0, $a0, +1       
  00451f88: sltu $a3, $a0, $v1        
  00451f8c: addu $t0, $a2, $t0        
  00451f90: lbu    $t0, +0($t0)       
  00451f94: sb     $t0, +0($a1)       
  00451f98: bne    $a3, $zero, -28       ; br -> 0x00451f80
  00451f9c: addiu  $a1, $a1, +2       
  00451fa0: beq    $zero, $zero, +2140   ; br -> 0x00452800
  00451fa4: sll $zero, $zero, 0       
  00451fa8: sltu $at, $zero, $v1      
  00451fac: beq    $at, $zero, +2128     ; br -> 0x00452800
  00451fb0: daddu $a0, $zero, $zero   
  00451fb4: sltiu  $at, $v1, +9       
  00451fb8: bne    $at, $zero, +404      ; br -> 0x00452150
  00451fbc: addiu  $a2, $v1, -8       
  00451fc0: lbu    $t3, +1($a1)       
  00451fc4: addiu  $a0, $a0, +8       
  00451fc8: lbu    $t2, +0($a1)       
  00451fcc: sltu $t1, $a0, $a2        
  00451fd0: srav $t3, $t3, $t0        
  00451fd4: sll $t4, $t3, 2           
  00451fd8: sll $t3, $t2, 1           
  00451fdc: addu $t2, $a3, $t4        
  00451fe0: lw     $t2, +0($t2)       
  00451fe4: addu $t2, $t2, $t3        
  00451fe8: lhu    $t3, +0($t2)       
  00451fec: sra $t2, $t3, 8           
  00451ff0: sb     $t2, +0($a1)       
  00451ff4: sb     $t3, +1($a1)       
  00451ff8: lbu    $t3, +5($a1)       
  00451ffc: lbu    $t2, +4($a1)       
  00452000: srav $t3, $t3, $t0        
  00452004: sll $t4, $t3, 2           
  00452008: sll $t3, $t2, 1           
  0045200c: addu $t2, $a3, $t4        
  00452010: lw     $t2, +0($t2)       
  00452014: addu $t2, $t2, $t3        
  00452018: lhu    $t3, +0($t2)       
  0045201c: sra $t2, $t3, 8           
  00452020: sb     $t2, +4($a1)       
  00452024: sb     $t3, +5($a1)       
  00452028: lbu    $t3, +9($a1)       
  0045202c: lbu    $t2, +8($a1)       
  00452030: srav $t3, $t3, $t0        
  00452034: sll $t4, $t3, 2           
  00452038: sll $t3, $t2, 1           
  0045203c: addu $t2, $a3, $t4        
  00452040: lw     $t2, +0($t2)       
  00452044: addu $t2, $t2, $t3        
  00452048: lhu    $t3, +0($t2)       
  0045204c: sra $t2, $t3, 8           
  00452050: sb     $t2, +8($a1)       
  00452054: sb     $t3, +9($a1)       
  00452058: lbu    $t3, +13($a1)      
  0045205c: lbu    $t2, +12($a1)      
  00452060: srav $t3, $t3, $t0        
  00452064: sll $t4, $t3, 2           
  00452068: sll $t3, $t2, 1           
  0045206c: addu $t2, $a3, $t4        
  00452070: lw     $t2, +0($t2)       
  00452074: addu $t2, $t2, $t3        
  00452078: lhu    $t3, +0($t2)       
  0045207c: sra $t2, $t3, 8           
  00452080: sb     $t2, +12($a1)      
  00452084: sb     $t3, +13($a1)      
  00452088: lbu    $t3, +17($a1)      
  0045208c: lbu    $t2, +16($a1)      
  00452090: srav $t3, $t3, $t0        
  00452094: sll $t4, $t3, 2           
  00452098: sll $t3, $t2, 1           
  0045209c: addu $t2, $a3, $t4        
  004520a0: lw     $t2, +0($t2)       
  004520a4: addu $t2, $t2, $t3        
  004520a8: lhu    $t3, +0($t2)       
  004520ac: sra $t2, $t3, 8           
  004520b0: sb     $t2, +16($a1)      
  004520b4: sb     $t3, +17($a1)      
  004520b8: lbu    $t3, +21($a1)      
  004520bc: lbu    $t2, +20($a1)      
  004520c0: srav $t3, $t3, $t0        
  004520c4: sll $t4, $t3, 2           
  004520c8: sll $t3, $t2, 1           
  004520cc: addu $t2, $a3, $t4        
  004520d0: lw     $t2, +0($t2)       
  004520d4: addu $t2, $t2, $t3        
  004520d8: lhu    $t3, +0($t2)       
  004520dc: sra $t2, $t3, 8           
  004520e0: sb     $t2, +20($a1)      
  004520e4: sb     $t3, +21($a1)      
  004520e8: lbu    $t3, +25($a1)      
  004520ec: lbu    $t2, +24($a1)      
  004520f0: srav $t3, $t3, $t0        
  004520f4: sll $t4, $t3, 2           
  004520f8: sll $t3, $t2, 1           
  004520fc: addu $t2, $a3, $t4        
  00452100: lw     $t2, +0($t2)       
  00452104: addu $t2, $t2, $t3        
  00452108: lhu    $t3, +0($t2)       
  0045210c: sra $t2, $t3, 8           
  00452110: sb     $t2, +24($a1)      
  00452114: sb     $t3, +25($a1)      
  00452118: lbu    $t3, +29($a1)      
  0045211c: lbu    $t2, +28($a1)      
  00452120: srav $t3, $t3, $t0        
  00452124: sll $t4, $t3, 2           
  00452128: sll $t3, $t2, 1           
  0045212c: addu $t2, $a3, $t4        
  00452130: lw     $t2, +0($t2)       
  00452134: addu $t2, $t2, $t3        
  00452138: lhu    $t3, +0($t2)       
  0045213c: sra $t2, $t3, 8           
  00452140: sb     $t2, +28($a1)      
  00452144: sb     $t3, +29($a1)      
  00452148: bne    $t1, $zero, -396      ; br -> 0x00451fc0
  0045214c: addiu  $a1, $a1, +32      
  00452150: sltu $at, $a0, $v1        
  00452154: beq    $at, $zero, +1704     ; br -> 0x00452800
  00452158: sll $zero, $zero, 0       
  0045215c: sll $zero, $zero, 0       
  00452160: lbu    $t2, +1($a1)       
  00452164: addiu  $a0, $a0, +1       
  00452168: lbu    $t1, +0($a1)       
  0045216c: sltu $a2, $a0, $v1        
  00452170: srav $t2, $t2, $t0        
  00452174: sll $t3, $t2, 2           
  00452178: sll $t2, $t1, 1           
  0045217c: addu $t1, $a3, $t3        
  00452180: lw     $t1, +0($t1)       
  00452184: addu $t1, $t1, $t2        
  00452188: lhu    $t2, +0($t1)       
  0045218c: sra $t1, $t2, 8           
  00452190: sb     $t1, +0($a1)       
  00452194: sb     $t2, +1($a1)       
  00452198: bne    $a2, $zero, -60       ; br -> 0x00452160
  0045219c: addiu  $a1, $a1, +4       
  004521a0: beq    $zero, $zero, +1628   ; br -> 0x00452800
  004521a4: sll $zero, $zero, 0       
  004521a8: addiu  $t1, $zero, +2     
  004521ac: bne    $t2, $t1, +224        ; br -> 0x00452290
  004521b0: sltu $at, $zero, $v1      
  004521b4: daddu $t4, $a1, $zero     
  004521b8: beq    $at, $zero, +212      ; br -> 0x00452290
  004521bc: daddu $t3, $zero, $zero   
  004521c0: lbu    $t2, +0($t4)       
  004521c4: addiu  $t3, $t3, +4       
  004521c8: sltu $t7, $t3, $v1        
  004521cc: andi   $t9, $t2, +192     
  004521d0: andi   $t1, $t2, +48      
  004521d4: andi   $t6, $t2, +12      
  004521d8: andi   $t5, $t2, +3       
  004521dc: sra $t2, $t9, 2           
  004521e0: sra $t8, $t9, 4           
  004521e4: or $s0, $t9, $t2          
  004521e8: or $s0, $t8, $s0          
  004521ec: sra $t2, $t9, 6           
  004521f0: or $s0, $t2, $s0          
  004521f4: sra $t8, $t1, 2           
  004521f8: sll $t2, $t1, 2           
  004521fc: addu $s0, $a2, $s0        
  00452200: or $t2, $t1, $t2          
  00452204: or $t9, $t8, $t2          
  00452208: sra $t1, $t1, 4           
  0045220c: or $t9, $t1, $t9          
  00452210: lbu    $t2, +0($s0)       
  00452214: sll $t8, $t6, 4           
  00452218: sll $t1, $t6, 2           
  0045221c: or $t8, $t8, $t1          
  00452220: addu $t1, $a2, $t9        
  00452224: or $t9, $t6, $t8          
  00452228: lbu    $t1, +0($t1)       
  0045222c: sra $t8, $t6, 2           
  00452230: or $t8, $t8, $t9          
  00452234: sll $t6, $t5, 6           
  00452238: andi   $t9, $t2, +192     
  0045223c: addu $t8, $a2, $t8        
  00452240: sll $t2, $t5, 4           
  00452244: lbu    $t8, +0($t8)       
  00452248: or $t6, $t6, $t2          
  0045224c: sll $t2, $t5, 2           
  00452250: or $t2, $t2, $t6          
  00452254: sra $t6, $t1, 2           
  00452258: or $t1, $t5, $t2          
  0045225c: addu $t1, $a2, $t1        
  00452260: andi   $t2, $t6, +48      
  00452264: lbu    $t1, +0($t1)       
  00452268: or $t5, $t9, $t2          
  0045226c: sra $t2, $t8, 4           
  00452270: andi   $t2, $t2, +12      
  00452274: or $t2, $t2, $t5          
  00452278: sra $t1, $t1, 6           
  0045227c: or $t1, $t1, $t2          
  00452280: sb     $t1, +0($t4)       
  00452284: bne    $t7, $zero, -200      ; br -> 0x004521c0
  00452288: addiu  $t4, $t4, +1       
  0045228c: sll $zero, $zero, 0       
  00452290: lbu    $t1, +9($a0)       
  00452294: addiu  $a0, $zero, +4     
  00452298: bne    $t1, $a0, +636        ; br -> 0x00452518
  0045229c: sltu $at, $zero, $v1      
  004522a0: beq    $at, $zero, +1372     ; br -> 0x00452800
  004522a4: daddu $a0, $zero, $zero   
  004522a8: addiu  $t0, $v1, +1       
  004522ac: srl $t0, $t0, 1           
  004522b0: sltiu  $at, $t0, +9       
  004522b4: bne    $at, $zero, +504      ; br -> 0x004524b0
  004522b8: addiu  $a3, $v1, -16      
  004522bc: sll $zero, $zero, 0       
  004522c0: lbu    $t1, +0($a1)       
  004522c4: addiu  $a0, $a0, +16      
  004522c8: sltu $t0, $a0, $a3        
  004522cc: andi   $t4, $t1, +240     
  004522d0: andi   $t3, $t1, +15      
  004522d4: sra $t2, $t4, 4           
  004522d8: sll $t1, $t3, 4           
  004522dc: or $t2, $t4, $t2          
  004522e0: or $t1, $t3, $t1          
  004522e4: addu $t2, $a2, $t2        
  004522e8: addu $t1, $a2, $t1        
  004522ec: lbu    $t2, +0($t2)       
  004522f0: lbu    $t1, +0($t1)       
  004522f4: andi   $t2, $t2, +240     
  004522f8: sra $t1, $t1, 4           
  004522fc: or $t1, $t2, $t1          
  00452300: sb     $t1, +0($a1)       
  00452304: lbu    $t1, +1($a1)       
  00452308: andi   $t4, $t1, +240     
  0045230c: andi   $t3, $t1, +15      
  00452310: sra $t2, $t4, 4           
  00452314: sll $t1, $t3, 4           
  00452318: or $t2, $t4, $t2          
  0045231c: or $t1, $t3, $t1          
  00452320: addu $t2, $a2, $t2        
  00452324: addu $t1, $a2, $t1        
  00452328: lbu    $t2, +0($t2)       
  0045232c: lbu    $t1, +0($t1)       
  00452330: andi   $t2, $t2, +240     
  00452334: sra $t1, $t1, 4           
  00452338: or $t1, $t2, $t1          
  0045233c: sb     $t1, +1($a1)       
  00452340: lbu    $t1, +2($a1)       
  00452344: andi   $t4, $t1, +240     
  00452348: andi   $t3, $t1, +15      
  0045234c: sra $t2, $t4, 4           
  00452350: sll $t1, $t3, 4           
  00452354: or $t2, $t4, $t2          
  00452358: or $t1, $t3, $t1          
  0045235c: addu $t2, $a2, $t2        
  00452360: addu $t1, $a2, $t1        
  00452364: lbu    $t2, +0($t2)       
  00452368: lbu    $t1, +0($t1)       
  0045236c: andi   $t2, $t2, +240     
  00452370: sra $t1, $t1, 4           
  00452374: or $t1, $t2, $t1          
  00452378: sb     $t1, +2($a1)       
  0045237c: lbu    $t1, +3($a1)       
  00452380: andi   $t4, $t1, +240     
  00452384: andi   $t3, $t1, +15      
  00452388: sra $t2, $t4, 4           
  0045238c: sll $t1, $t3, 4           
  00452390: or $t2, $t4, $t2          
  00452394: or $t1, $t3, $t1          
  00452398: addu $t2, $a2, $t2        
  0045239c: addu $t1, $a2, $t1        
  004523a0: lbu    $t2, +0($t2)       
  004523a4: lbu    $t1, +0($t1)       
  004523a8: andi   $t2, $t2, +240     
  004523ac: sra $t1, $t1, 4           
  004523b0: or $t1, $t2, $t1          
  004523b4: sb     $t1, +3($a1)       
  004523b8: lbu    $t1, +4($a1)       
  004523bc: andi   $t4, $t1, +240     
  004523c0: andi   $t3, $t1, +15      
  004523c4: sra $t2, $t4, 4           
  004523c8: sll $t1, $t3, 4           
  004523cc: or $t2, $t4, $t2          
  004523d0: or $t1, $t3, $t1          
  004523d4: addu $t2, $a2, $t2        
  004523d8: addu $t1, $a2, $t1        
  004523dc: lbu    $t2, +0($t2)       
  004523e0: lbu    $t1, +0($t1)       
  004523e4: andi   $t2, $t2, +240     
  004523e8: sra $t1, $t1, 4           
  004523ec: or $t1, $t2, $t1          
  004523f0: sb     $t1, +4($a1)       
  004523f4: lbu    $t1, +5($a1)       
  004523f8: andi   $t4, $t1, +240     
  004523fc: andi   $t3, $t1, +15      
  00452400: sra $t2, $t4, 4           
  00452404: sll $t1, $t3, 4           
  00452408: or $t2, $t4, $t2          
  0045240c: or $t1, $t3, $t1          
  00452410: addu $t2, $a2, $t2        
  00452414: addu $t1, $a2, $t1        
  00452418: lbu    $t2, +0($t2)       
  0045241c: lbu    $t1, +0($t1)       
  00452420: andi   $t2, $t2, +240     
  00452424: sra $t1, $t1, 4           
  00452428: or $t1, $t2, $t1          
  0045242c: sb     $t1, +5($a1)       
  00452430: lbu    $t1, +6($a1)       
  00452434: andi   $t4, $t1, +240     
  00452438: andi   $t3, $t1, +15      
  0045243c: sra $t2, $t4, 4           
  00452440: sll $t1, $t3, 4           
  00452444: or $t2, $t4, $t2          
  00452448: or $t1, $t3, $t1          
  0045244c: addu $t2, $a2, $t2        
  00452450: addu $t1, $a2, $t1        
  00452454: lbu    $t2, +0($t2)       
  00452458: lbu    $t1, +0($t1)       
  0045245c: andi   $t2, $t2, +240     
  00452460: sra $t1, $t1, 4           
  00452464: or $t1, $t2, $t1          
  00452468: sb     $t1, +6($a1)       
  0045246c: lbu    $t1, +7($a1)       
  00452470: andi   $t4, $t1, +240     
  00452474: andi   $t3, $t1, +15      
  00452478: sra $t2, $t4, 4           
  0045247c: sll $t1, $t3, 4           
  00452480: or $t2, $t4, $t2          
  00452484: or $t1, $t3, $t1          
  00452488: addu $t2, $a2, $t2        
  0045248c: addu $t1, $a2, $t1        
  00452490: lbu    $t2, +0($t2)       
  00452494: lbu    $t1, +0($t1)       
  00452498: andi   $t2, $t2, +240     
  0045249c: sra $t1, $t1, 4           
  004524a0: or $t1, $t2, $t1          
  004524a4: sb     $t1, +7($a1)       
  004524a8: bne    $t0, $zero, -492      ; br -> 0x004522c0
  004524ac: addiu  $a1, $a1, +8       
  004524b0: sltu $at, $a0, $v1        
  004524b4: beq    $at, $zero, +840      ; br -> 0x00452800
  004524b8: sll $zero, $zero, 0       
  004524bc: sll $zero, $zero, 0       
  004524c0: lbu    $t0, +0($a1)       
  004524c4: addiu  $a0, $a0, +2       
  004524c8: sltu $a3, $a0, $v1        
  004524cc: andi   $t3, $t0, +240     
  004524d0: andi   $t2, $t0, +15      
  004524d4: sra $t1, $t3, 4           
  004524d8: sll $t0, $t2, 4           
  004524dc: or $t1, $t3, $t1          
  004524e0: or $t0, $t2, $t0          
  004524e4: addu $t1, $a2, $t1        
  004524e8: addu $t0, $a2, $t0        
  004524ec: lbu    $t1, +0($t1)       
  004524f0: lbu    $t0, +0($t0)       
  004524f4: andi   $t1, $t1, +240     
  004524f8: sra $t0, $t0, 4           
  004524fc: or $t0, $t1, $t0          
  00452500: sb     $t0, +0($a1)       
  00452504: bne    $a3, $zero, -72       ; br -> 0x004524c0
  00452508: addiu  $a1, $a1, +1       
  0045250c: beq    $zero, $zero, +752    ; br -> 0x00452800
  00452510: sll $zero, $zero, 0       
  00452514: sll $zero, $zero, 0       
  00452518: addiu  $a0, $zero, +8     
  0045251c: bne    $t1, $a0, +224        ; br -> 0x00452600
  00452520: sltu $at, $zero, $v1      
  00452524: beq    $at, $zero, +728      ; br -> 0x00452800
  00452528: daddu $a0, $zero, $zero   
  0045252c: sltiu  $at, $v1, +9       
  00452530: bne    $at, $zero, +148      ; br -> 0x004525c8
  00452534: addiu  $a3, $v1, -8       
  00452538: lbu    $t1, +0($a1)       
  0045253c: addiu  $a0, $a0, +8       
  00452540: sltu $t0, $a0, $a3        
  00452544: addu $t1, $a2, $t1        
  00452548: lbu    $t1, +0($t1)       
  0045254c: sb     $t1, +0($a1)       
  00452550: lbu    $t1, +1($a1)       
  00452554: addu $t1, $a2, $t1        
  00452558: lbu    $t1, +0($t1)       
  0045255c: sb     $t1, +1($a1)       
  00452560: lbu    $t1, +2($a1)       
  00452564: addu $t1, $a2, $t1        
  00452568: lbu    $t1, +0($t1)       
  0045256c: sb     $t1, +2($a1)       
  00452570: lbu    $t1, +3($a1)       
  00452574: addu $t1, $a2, $t1        
  00452578: lbu    $t1, +0($t1)       
  0045257c: sb     $t1, +3($a1)       
  00452580: lbu    $t1, +4($a1)       
  00452584: addu $t1, $a2, $t1        
  00452588: lbu    $t1, +0($t1)       
  0045258c: sb     $t1, +4($a1)       
  00452590: lbu    $t1, +5($a1)       
  00452594: addu $t1, $a2, $t1        
  00452598: lbu    $t1, +0($t1)       
  0045259c: sb     $t1, +5($a1)       
  004525a0: lbu    $t1, +6($a1)       
  004525a4: addu $t1, $a2, $t1        
  004525a8: lbu    $t1, +0($t1)       
  004525ac: sb     $t1, +6($a1)       
  004525b0: lbu    $t1, +7($a1)       
  004525b4: addu $t1, $a2, $t1        
  004525b8: lbu    $t1, +0($t1)       
  004525bc: sb     $t1, +7($a1)       
  004525c0: bne    $t0, $zero, -140      ; br -> 0x00452538
  004525c4: addiu  $a1, $a1, +8       
  004525c8: sltu $at, $a0, $v1        
  004525cc: beq    $at, $zero, +560      ; br -> 0x00452800
  004525d0: sll $zero, $zero, 0       
  004525d4: sll $zero, $zero, 0       
  004525d8: lbu    $t0, +0($a1)       
  004525dc: addiu  $a0, $a0, +1       
  004525e0: sltu $a3, $a0, $v1        
  004525e4: addu $t0, $a2, $t0        
  004525e8: lbu    $t0, +0($t0)       
  004525ec: sb     $t0, +0($a1)       
  004525f0: bne    $a3, $zero, -28       ; br -> 0x004525d8
  004525f4: addiu  $a1, $a1, +1       
  004525f8: beq    $zero, $zero, +516    ; br -> 0x00452800
  004525fc: sll $zero, $zero, 0       
  00452600: addiu  $a0, $zero, +16    
  00452604: bne    $t1, $a0, +504        ; br -> 0x00452800
  00452608: sltu $at, $zero, $v1      
  0045260c: beq    $at, $zero, +496      ; br -> 0x00452800
  00452610: daddu $a0, $zero, $zero   
  00452614: sltiu  $at, $v1, +9       
  00452618: bne    $at, $zero, +404      ; br -> 0x004527b0
  0045261c: addiu  $a2, $v1, -8       
  00452620: lbu    $t3, +1($a1)       
  00452624: addiu  $a0, $a0, +8       
  00452628: lbu    $t2, +0($a1)       
  0045262c: sltu $t1, $a0, $a2        
  00452630: srav $t3, $t3, $t0        
  00452634: sll $t4, $t3, 2           
  00452638: sll $t3, $t2, 1           
  0045263c: addu $t2, $a3, $t4        
  00452640: lw     $t2, +0($t2)       
  00452644: addu $t2, $t2, $t3        
  00452648: lhu    $t3, +0($t2)       
  0045264c: sra $t2, $t3, 8           
  00452650: sb     $t2, +0($a1)       
  00452654: sb     $t3, +1($a1)       
  00452658: lbu    $t3, +3($a1)       
  0045265c: lbu    $t2, +2($a1)       
  00452660: srav $t3, $t3, $t0        
  00452664: sll $t4, $t3, 2           
  00452668: sll $t3, $t2, 1           
  0045266c: addu $t2, $a3, $t4        
  00452670: lw     $t2, +0($t2)       
  00452674: addu $t2, $t2, $t3        
  00452678: lhu    $t3, +0($t2)       
  0045267c: sra $t2, $t3, 8           
  00452680: sb     $t2, +2($a1)       
  00452684: sb     $t3, +3($a1)       
  00452688: lbu    $t3, +5($a1)       
  0045268c: lbu    $t2, +4($a1)       
  00452690: srav $t3, $t3, $t0        
  00452694: sll $t4, $t3, 2           
  00452698: sll $t3, $t2, 1           
  0045269c: addu $t2, $a3, $t4        
  004526a0: lw     $t2, +0($t2)       
  004526a4: addu $t2, $t2, $t3        
  004526a8: lhu    $t3, +0($t2)       
  004526ac: sra $t2, $t3, 8           
  004526b0: sb     $t2, +4($a1)       
  004526b4: sb     $t3, +5($a1)       
  004526b8: lbu    $t3, +7($a1)       
  004526bc: lbu    $t2, +6($a1)       
  004526c0: srav $t3, $t3, $t0        
  004526c4: sll $t4, $t3, 2           
  004526c8: sll $t3, $t2, 1           
  004526cc: addu $t2, $a3, $t4        
  004526d0: lw     $t2, +0($t2)       
  004526d4: addu $t2, $t2, $t3        
  004526d8: lhu    $t3, +0($t2)       
  004526dc: sra $t2, $t3, 8           
  004526e0: sb     $t2, +6($a1)       
  004526e4: sb     $t3, +7($a1)       
  004526e8: lbu    $t3, +9($a1)       
  004526ec: lbu    $t2, +8($a1)       
  004526f0: srav $t3, $t3, $t0        
  004526f4: sll $t4, $t3, 2           
  004526f8: sll $t3, $t2, 1           
  004526fc: addu $t2, $a3, $t4        
  00452700: lw     $t2, +0($t2)       
  00452704: addu $t2, $t2, $t3        
  00452708: lhu    $t3, +0($t2)       
  0045270c: sra $t2, $t3, 8           
  00452710: sb     $t2, +8($a1)       
  00452714: sb     $t3, +9($a1)       
  00452718: lbu    $t3, +11($a1)      
  0045271c: lbu    $t2, +10($a1)      
  00452720: srav $t3, $t3, $t0        
  00452724: sll $t4, $t3, 2           
  00452728: sll $t3, $t2, 1           
  0045272c: addu $t2, $a3, $t4        
  00452730: lw     $t2, +0($t2)       
  00452734: addu $t2, $t2, $t3        
  00452738: lhu    $t3, +0($t2)       
  0045273c: sra $t2, $t3, 8           
  00452740: sb     $t2, +10($a1)      
  00452744: sb     $t3, +11($a1)      
  00452748: lbu    $t3, +13($a1)      
  0045274c: lbu    $t2, +12($a1)      
  00452750: srav $t3, $t3, $t0        
  00452754: sll $t4, $t3, 2           
  00452758: sll $t3, $t2, 1           
  0045275c: addu $t2, $a3, $t4        
  00452760: lw     $t2, +0($t2)       
  00452764: addu $t2, $t2, $t3        
  00452768: lhu    $t3, +0($t2)       
  0045276c: sra $t2, $t3, 8           
  00452770: sb     $t2, +12($a1)      
  00452774: sb     $t3, +13($a1)      
  00452778: lbu    $t3, +15($a1)      
  0045277c: lbu    $t2, +14($a1)      
  00452780: srav $t3, $t3, $t0        
  00452784: sll $t4, $t3, 2           
  00452788: sll $t3, $t2, 1           
  0045278c: addu $t2, $a3, $t4        
  00452790: lw     $t2, +0($t2)       
  00452794: addu $t2, $t2, $t3        
  00452798: lhu    $t3, +0($t2)       
  0045279c: sra $t2, $t3, 8           
  004527a0: sb     $t2, +14($a1)      
  004527a4: sb     $t3, +15($a1)      
  004527a8: bne    $t1, $zero, -396      ; br -> 0x00452620
  004527ac: addiu  $a1, $a1, +16      
  004527b0: sltu $at, $a0, $v1        
  004527b4: beq    $at, $zero, +72       ; br -> 0x00452800
  004527b8: sll $zero, $zero, 0       
  004527bc: sll $zero, $zero, 0       
  004527c0: lbu    $t2, +1($a1)       
  004527c4: addiu  $a0, $a0, +1       
  004527c8: lbu    $t1, +0($a1)       
  004527cc: sltu $a2, $a0, $v1        
  004527d0: srav $t2, $t2, $t0        
  004527d4: sll $t3, $t2, 2           
  004527d8: sll $t2, $t1, 1           
  004527dc: addu $t1, $a3, $t3        
  004527e0: lw     $t1, +0($t1)       
  004527e4: addu $t1, $t1, $t2        
  004527e8: lhu    $t2, +0($t1)       
  004527ec: sra $t1, $t2, 8           
  004527f0: sb     $t1, +0($a1)       
  004527f4: sb     $t2, +1($a1)       
  004527f8: bne    $a2, $zero, -60       ; br -> 0x004527c0
  004527fc: addiu  $a1, $a1, +2       
  00452800: lq     $s0, +0($sp)       
  00452804: jr     $ra                
  00452808: addiu  $sp, $sp, +16      
  0045280c: sll $zero, $zero, 0       
  00452810: lbu    $v1, +8($a0)       
  00452814: addiu  $t4, $zero, +3     
  00452818: bne    $v1, $t4, +1484       ; br -> 0x00452de8
  0045281c: lw     $t3, +0($a0)       
  00452820: lbu    $t1, +9($a0)       
  00452824: slti   $at, $t1, +8       
  00452828: beq    $at, $zero, +412      ; br -> 0x004529c8
  0045282c: addiu  $t2, $zero, +4     
  00452830: beq    $t1, $t2, +292        ; br -> 0x00452958
  00452834: addiu  $v1, $zero, +2     
  00452838: beq    $t1, $v1, +164        ; br -> 0x004528e0
  0045283c: addiu  $t2, $zero, +1     
  00452840: beq    $t1, $t2, +12         ; br -> 0x00452850
  00452844: sll $zero, $zero, 0       
  00452848: beq    $zero, $zero, +364    ; br -> 0x004529b8
  0045284c: sll $zero, $zero, 0       
  00452850: addiu  $v1, $t3, -1       
  00452854: srl $t1, $v1, 3           
  00452858: sltu $at, $zero, $t3      
  0045285c: addu $v1, $a1, $t3        
  00452860: addu $t6, $a1, $t1        
  00452864: addiu  $t5, $v1, -1       
  00452868: addiu  $t1, $zero, +7     
  0045286c: addiu  $v1, $t3, +7       
  00452870: daddu $t4, $zero, $zero   
  00452874: andi   $v1, $v1, +7       
  00452878: beq    $at, $zero, +316      ; br -> 0x004529b8
  0045287c: subu $t7, $t1, $v1        
  00452880: lbu    $v1, +0($t6)       
  00452884: srav $v1, $v1, $t7        
  00452888: andi   $v1, $v1, +1       
  0045288c: beq    $v1, $zero, +16       ; br -> 0x004528a0
  00452890: sll $zero, $zero, 0       
  00452894: beq    $zero, $zero, +16     ; br -> 0x004528a8
  00452898: sb     $t2, +0($t5)       
  0045289c: sll $zero, $zero, 0       
  004528a0: sb     $zero, +0($t5)     
  004528a4: sll $zero, $zero, 0       
  004528a8: bne    $t7, $t1, +20         ; br -> 0x004528c0
  004528ac: sll $zero, $zero, 0       
  004528b0: daddu $t7, $zero, $zero   
  004528b4: beq    $zero, $zero, +16     ; br -> 0x004528c8
  004528b8: addiu  $t6, $t6, -1       
  004528bc: sll $zero, $zero, 0       
  004528c0: addiu  $t7, $t7, +1       
  004528c4: sll $zero, $zero, 0       
  004528c8: addiu  $t4, $t4, +1       
  004528cc: sltu $v1, $t4, $t3        
  004528d0: bne    $v1, $zero, -84       ; br -> 0x00452880
  004528d4: addiu  $t5, $t5, -1       
  004528d8: beq    $zero, $zero, +220    ; br -> 0x004529b8
  004528dc: sll $zero, $zero, 0       
  004528e0: addiu  $v1, $t3, -1       
  004528e4: srl $t1, $v1, 2           
  004528e8: sltu $at, $zero, $t3      
  004528ec: addu $v1, $a1, $t3        
  004528f0: addu $t6, $a1, $t1        
  004528f4: addiu  $t5, $v1, -1       
  004528f8: daddu $t2, $zero, $zero   
  004528fc: addiu  $v1, $t3, +3       
  00452900: andi   $v1, $v1, +3       
  00452904: subu $v1, $t4, $v1        
  00452908: beq    $at, $zero, +172      ; br -> 0x004529b8
  0045290c: sll $t4, $v1, 1           
  00452910: addiu  $t1, $zero, +6     
  00452914: sll $zero, $zero, 0       
  00452918: lbu    $v1, +0($t6)       
  0045291c: srav $v1, $v1, $t4        
  00452920: andi   $v1, $v1, +3       
  00452924: bne    $t4, $t1, +16         ; br -> 0x00452938
  00452928: sb     $v1, +0($t5)       
  0045292c: daddu $t4, $zero, $zero   
  00452930: beq    $zero, $zero, +12     ; br -> 0x00452940
  00452934: addiu  $t6, $t6, -1       
  00452938: addiu  $t4, $t4, +2       
  0045293c: sll $zero, $zero, 0       
  00452940: addiu  $t2, $t2, +1       
  00452944: sltu $v1, $t2, $t3        
  00452948: bne    $v1, $zero, -52       ; br -> 0x00452918
  0045294c: addiu  $t5, $t5, -1       
  00452950: beq    $zero, $zero, +100    ; br -> 0x004529b8
  00452954: sll $zero, $zero, 0       
  00452958: addiu  $v1, $t3, -1       
  0045295c: srl $t1, $v1, 1           
  00452960: sltu $at, $zero, $t3      
  00452964: addu $v1, $a1, $t3        
  00452968: addu $t6, $a1, $t1        
  0045296c: addiu  $t5, $v1, -1       
  00452970: daddu $t1, $zero, $zero   
  00452974: andi   $v1, $t3, +1       
  00452978: beq    $at, $zero, +60       ; br -> 0x004529b8
  0045297c: sll $t4, $v1, 2           
  00452980: lbu    $v1, +0($t6)       
  00452984: srav $v1, $v1, $t4        
  00452988: andi   $v1, $v1, +15      
  0045298c: bne    $t4, $t2, +16         ; br -> 0x004529a0
  00452990: sb     $v1, +0($t5)       
  00452994: daddu $t4, $zero, $zero   
  00452998: beq    $zero, $zero, +12     ; br -> 0x004529a8
  0045299c: addiu  $t6, $t6, -1       
  004529a0: addiu  $t4, $t4, +4       
  004529a4: sll $zero, $zero, 0       
  004529a8: addiu  $t1, $t1, +1       
  004529ac: sltu $v1, $t1, $t3        
  004529b0: bne    $v1, $zero, -52       ; br -> 0x00452980
  004529b4: addiu  $t5, $t5, -1       
  004529b8: addiu  $v1, $zero, +8     
  004529bc: sb     $v1, +9($a0)       
  004529c0: sb     $v1, +11($a0)      
  004529c4: sw     $t3, +4($a0)       
  004529c8: lbu    $t1, +9($a0)       
  004529cc: addiu  $v1, $zero, +8     
  004529d0: beq    $t1, $v1, +12         ; br -> 0x004529e0
  004529d4: sll $zero, $zero, 0       
  004529d8: beq    $zero, $zero, +1036   ; br -> 0x00452de8
  004529dc: sll $zero, $zero, 0       
  004529e0: beq    $a3, $zero, +228      ; br -> 0x00452ac8
  004529e4: addu $t1, $a1, $t3        
  004529e8: sll $v1, $t3, 2           
  004529ec: addu $v1, $a1, $v1        
  004529f0: addiu  $t2, $t1, -1       
  004529f4: sltu $at, $zero, $t3      
  004529f8: addiu  $t1, $v1, -1       
  004529fc: beq    $at, $zero, +152      ; br -> 0x00452a98
  00452a00: daddu $a1, $zero, $zero   
  00452a04: addiu  $v1, $zero, +255   
  00452a08: lbu    $t5, +0($t2)       
  00452a0c: slt $t4, $t5, $t0         
  00452a10: bne    $t4, $zero, +20       ; br -> 0x00452a28
  00452a14: sll $zero, $zero, 0       
  00452a18: sb     $v1, +0($t1)       
  00452a1c: beq    $zero, $zero, +24     ; br -> 0x00452a38
  00452a20: addiu  $t1, $t1, -1       
  00452a24: sll $zero, $zero, 0       
  00452a28: addu $t4, $a3, $t5        
  00452a2c: lbu    $t4, +0($t4)       
  00452a30: sb     $t4, +0($t1)       
  00452a34: addiu  $t1, $t1, -1       
  00452a38: lbu    $t6, +0($t2)       
  00452a3c: addiu  $a1, $a1, +1       
  00452a40: sltu $t4, $a1, $t3        
  00452a44: sll $t5, $t6, 1           
  00452a48: addu $t5, $t5, $t6        
  00452a4c: addu $t5, $a2, $t5        
  00452a50: lbu    $t5, +2($t5)       
  00452a54: sb     $t5, +0($t1)       
  00452a58: lbu    $t6, +0($t2)       
  00452a5c: sll $t5, $t6, 1           
  00452a60: addu $t5, $t5, $t6        
  00452a64: addu $t5, $a2, $t5        
  00452a68: lbu    $t5, +1($t5)       
  00452a6c: sb     $t5, -1($t1)       
  00452a70: lbu    $t6, +0($t2)       
  00452a74: sll $t5, $t6, 1           
  00452a78: addiu  $t2, $t2, -1       
  00452a7c: addu $t5, $t5, $t6        
  00452a80: addu $t5, $a2, $t5        
  00452a84: lbu    $t5, +0($t5)       
  00452a88: sb     $t5, -2($t1)       
  00452a8c: bne    $t4, $zero, -136      ; br -> 0x00452a08
  00452a90: addiu  $t1, $t1, -3       
  00452a94: sll $zero, $zero, 0       
  00452a98: addiu  $a1, $zero, +8     
  00452a9c: sb     $a1, +9($a0)       
  00452aa0: addiu  $v1, $zero, +32    
  00452aa4: sb     $v1, +11($a0)      
  00452aa8: sll $a2, $t3, 2           
  00452aac: addiu  $a1, $zero, +6     
  00452ab0: sw     $a2, +4($a0)       
  00452ab4: addiu  $v1, $zero, +4     
  00452ab8: sb     $a1, +8($a0)       
  00452abc: beq    $zero, $zero, +808    ; br -> 0x00452de8
  00452ac0: sb     $v1, +10($a0)      
  00452ac4: sll $zero, $zero, 0       
  00452ac8: addu $v1, $a1, $t3        
  00452acc: addiu  $a3, $v1, -1       
  00452ad0: sltu $at, $zero, $t3      
  00452ad4: sll $v1, $t3, 1           
  00452ad8: addu $t0, $v1, $t3        
  00452adc: addu $a1, $a1, $t0        
  00452ae0: daddu $v1, $zero, $zero   
  00452ae4: beq    $at, $zero, +728      ; br -> 0x00452dc0
  00452ae8: addiu  $a1, $a1, -1       
  00452aec: sltiu  $at, $t3, +9       
  00452af0: bne    $at, $zero, +604      ; br -> 0x00452d50
  00452af4: addiu  $t1, $t3, -8       
  00452af8: lbu    $t5, +0($a3)       
  00452afc: addiu  $v1, $v1, +8       
  00452b00: sltu $t2, $v1, $t1        
  00452b04: sll $t4, $t5, 1           
  00452b08: addu $t4, $t4, $t5        
  00452b0c: addu $t4, $a2, $t4        
  00452b10: lbu    $t4, +2($t4)       
  00452b14: sb     $t4, +0($a1)       
  00452b18: lbu    $t5, +0($a3)       
  00452b1c: sll $t4, $t5, 1           
  00452b20: addu $t4, $t4, $t5        
  00452b24: addu $t4, $a2, $t4        
  00452b28: lbu    $t4, +1($t4)       
  00452b2c: sb     $t4, -1($a1)       
  00452b30: lbu    $t5, +0($a3)       
  00452b34: sll $t4, $t5, 1           
  00452b38: addu $t4, $t4, $t5        
  00452b3c: addu $t4, $a2, $t4        
  00452b40: lbu    $t4, +0($t4)       
  00452b44: sb     $t4, -2($a1)       
  00452b48: lbu    $t5, -1($a3)       
  00452b4c: sll $t4, $t5, 1           
  00452b50: addu $t4, $t4, $t5        
  00452b54: addu $t4, $a2, $t4        
  00452b58: lbu    $t4, +2($t4)       
  00452b5c: sb     $t4, -3($a1)       
  00452b60: lbu    $t5, -1($a3)       
  00452b64: sll $t4, $t5, 1           
  00452b68: addu $t4, $t4, $t5        
  00452b6c: addu $t4, $a2, $t4        
  00452b70: lbu    $t4, +1($t4)       
  00452b74: sb     $t4, -4($a1)       
  00452b78: lbu    $t5, -1($a3)       
  00452b7c: sll $t4, $t5, 1           
  00452b80: addu $t4, $t4, $t5        
  00452b84: addu $t4, $a2, $t4        
  00452b88: lbu    $t4, +0($t4)       
  00452b8c: sb     $t4, -5($a1)       
  00452b90: lbu    $t5, -2($a3)       
  00452b94: sll $t4, $t5, 1           
  00452b98: addu $t4, $t4, $t5        
  00452b9c: addu $t4, $a2, $t4        
  00452ba0: lbu    $t4, +2($t4)       
  00452ba4: sb     $t4, -6($a1)       
  00452ba8: lbu    $t5, -2($a3)       
  00452bac: sll $t4, $t5, 1           
  00452bb0: addu $t4, $t4, $t5        
  00452bb4: addu $t4, $a2, $t4        
  00452bb8: lbu    $t4, +1($t4)       
  00452bbc: sb     $t4, -7($a1)       
  00452bc0: lbu    $t5, -2($a3)       
  00452bc4: sll $t4, $t5, 1           
  00452bc8: addu $t4, $t4, $t5        
  00452bcc: addu $t4, $a2, $t4        
  00452bd0: lbu    $t4, +0($t4)       
  00452bd4: sb     $t4, -8($a1)       
  00452bd8: lbu    $t5, -3($a3)       
  00452bdc: sll $t4, $t5, 1           
  00452be0: addu $t4, $t4, $t5        
  00452be4: addu $t4, $a2, $t4        
  00452be8: lbu    $t4, +2($t4)       
  00452bec: sb     $t4, -9($a1)       
  00452bf0: lbu    $t5, -3($a3)       
  00452bf4: sll $t4, $t5, 1           
  00452bf8: addu $t4, $t4, $t5        
  00452bfc: addu $t4, $a2, $t4        
  00452c00: lbu    $t4, +1($t4)       
  00452c04: sb     $t4, -10($a1)      
  00452c08: lbu    $t5, -3($a3)       
  00452c0c: sll $t4, $t5, 1           
  00452c10: addu $t4, $t4, $t5        
  00452c14: addu $t4, $a2, $t4        
  00452c18: lbu    $t4, +0($t4)       
  00452c1c: sb     $t4, -11($a1)      
  00452c20: lbu    $t5, -4($a3)       
  00452c24: sll $t4, $t5, 1           
  00452c28: addu $t4, $t4, $t5        
  00452c2c: addu $t4, $a2, $t4        
  00452c30: lbu    $t4, +2($t4)       
  00452c34: sb     $t4, -12($a1)      
  00452c38: lbu    $t5, -4($a3)       
  00452c3c: sll $t4, $t5, 1           
  00452c40: addu $t4, $t4, $t5        
  00452c44: addu $t4, $a2, $t4        
  00452c48: lbu    $t4, +1($t4)       
  00452c4c: sb     $t4, -13($a1)      
  00452c50: lbu    $t5, -4($a3)       
  00452c54: sll $t4, $t5, 1           
  00452c58: addu $t4, $t4, $t5        
  00452c5c: addu $t4, $a2, $t4        
  00452c60: lbu    $t4, +0($t4)       
  00452c64: sb     $t4, -14($a1)      
  00452c68: lbu    $t5, -5($a3)       
  00452c6c: sll $t4, $t5, 1           
  00452c70: addu $t4, $t4, $t5        
  00452c74: addu $t4, $a2, $t4        
  00452c78: lbu    $t4, +2($t4)       
  00452c7c: sb     $t4, -15($a1)      
  00452c80: lbu    $t5, -5($a3)       
  00452c84: sll $t4, $t5, 1           
  00452c88: addu $t4, $t4, $t5        
  00452c8c: addu $t4, $a2, $t4        
  00452c90: lbu    $t4, +1($t4)       
  00452c94: sb     $t4, -16($a1)      
  00452c98: lbu    $t5, -5($a3)       
  00452c9c: sll $t4, $t5, 1           
  00452ca0: addu $t4, $t4, $t5        
  00452ca4: addu $t4, $a2, $t4        
  00452ca8: lbu    $t4, +0($t4)       
  00452cac: sb     $t4, -17($a1)      
  00452cb0: lbu    $t5, -6($a3)       
  00452cb4: sll $t4, $t5, 1           
  00452cb8: addu $t4, $t4, $t5        
  00452cbc: addu $t4, $a2, $t4        
  00452cc0: lbu    $t4, +2($t4)       
  00452cc4: sb     $t4, -18($a1)      
  00452cc8: lbu    $t5, -6($a3)       
  00452ccc: sll $t4, $t5, 1           
  00452cd0: addu $t4, $t4, $t5        
  00452cd4: addu $t4, $a2, $t4        
  00452cd8: lbu    $t4, +1($t4)       
  00452cdc: sb     $t4, -19($a1)      
  00452ce0: lbu    $t5, -6($a3)       
  00452ce4: sll $t4, $t5, 1           
  00452ce8: addu $t4, $t4, $t5        
  00452cec: addu $t4, $a2, $t4        
  00452cf0: lbu    $t4, +0($t4)       
  00452cf4: sb     $t4, -20($a1)      
  00452cf8: lbu    $t5, -7($a3)       
  00452cfc: sll $t4, $t5, 1           
  00452d00: addu $t4, $t4, $t5        
  00452d04: addu $t4, $a2, $t4        
  00452d08: lbu    $t4, +2($t4)       
  00452d0c: sb     $t4, -21($a1)      
  00452d10: lbu    $t5, -7($a3)       
  00452d14: sll $t4, $t5, 1           
  00452d18: addu $t4, $t4, $t5        
  00452d1c: addu $t4, $a2, $t4        
  00452d20: lbu    $t4, +1($t4)       
  00452d24: sb     $t4, -22($a1)      
  00452d28: lbu    $t5, -7($a3)       
  00452d2c: sll $t4, $t5, 1           
  00452d30: addiu  $a3, $a3, -8       
  00452d34: addu $t4, $t4, $t5        
  00452d38: addu $t4, $a2, $t4        
  00452d3c: lbu    $t4, +0($t4)       
  00452d40: sb     $t4, -23($a1)      
  00452d44: bne    $t2, $zero, -592      ; br -> 0x00452af8
  00452d48: addiu  $a1, $a1, -24      
  00452d4c: sll $zero, $zero, 0       
  00452d50: sltu $at, $v1, $t3        
  00452d54: beq    $at, $zero, +104      ; br -> 0x00452dc0
  00452d58: sll $zero, $zero, 0       
  00452d5c: sll $zero, $zero, 0       
  00452d60: lbu    $t4, +0($a3)       
  00452d64: addiu  $v1, $v1, +1       
  00452d68: sltu $t1, $v1, $t3        
  00452d6c: sll $t2, $t4, 1           
  00452d70: addu $t2, $t2, $t4        
  00452d74: addu $t2, $a2, $t2        
  00452d78: lbu    $t2, +2($t2)       
  00452d7c: sb     $t2, +0($a1)       
  00452d80: lbu    $t4, +0($a3)       
  00452d84: sll $t2, $t4, 1           
  00452d88: addu $t2, $t2, $t4        
  00452d8c: addu $t2, $a2, $t2        
  00452d90: lbu    $t2, +1($t2)       
  00452d94: sb     $t2, -1($a1)       
  00452d98: lbu    $t4, +0($a3)       
  00452d9c: sll $t2, $t4, 1           
  00452da0: addiu  $a3, $a3, -1       
  00452da4: addu $t2, $t2, $t4        
  00452da8: addu $t2, $a2, $t2        
  00452dac: lbu    $t2, +0($t2)       
  00452db0: sb     $t2, -2($a1)       
  00452db4: bne    $t1, $zero, -88       ; br -> 0x00452d60
  00452db8: addiu  $a1, $a1, -3       
  00452dbc: sll $zero, $zero, 0       
  00452dc0: addiu  $v1, $zero, +8     
  00452dc4: sb     $v1, +9($a0)       
  00452dc8: addiu  $a1, $zero, +2     
  00452dcc: addiu  $v1, $zero, +24    
  00452dd0: sb     $v1, +11($a0)      
  00452dd4: sw     $t0, +4($a0)       
  00452dd8: addiu  $v1, $zero, +3     
  00452ddc: sb     $a1, +8($a0)       
  00452de0: sb     $v1, +10($a0)      
  00452de4: sll $zero, $zero, 0       
  00452de8: jr     $ra                
  00452dec: sll $zero, $zero, 0       
  00452df0: lbu    $a3, +8($a0)       
  00452df4: bne    $a3, $zero, +896      ; br -> 0x00453178
  00452df8: lw     $t0, +0($a0)       
  00452dfc: beq    $a2, $zero, +8        ; br -> 0x00452e08
  00452e00: daddu $v1, $zero, $zero   
  00452e04: lhu    $v1, +8($a2)       
  00452e08: lbu    $t1, +9($a0)       
  00452e0c: slti   $at, $t1, +8       
  00452e10: beq    $at, $zero, +532      ; br -> 0x00453028
  00452e14: andi   $a3, $v1, -1       
  00452e18: addiu  $t2, $zero, +4     
  00452e1c: beq    $t1, $t2, +368        ; br -> 0x00452f90
  00452e20: addiu  $v1, $zero, +2     
  00452e24: beq    $t1, $v1, +192        ; br -> 0x00452ee8
  00452e28: sll $zero, $zero, 0       
  00452e2c: addiu  $v1, $zero, +1     
  00452e30: beq    $t1, $v1, +12         ; br -> 0x00452e40
  00452e34: sll $zero, $zero, 0       
  00452e38: beq    $zero, $zero, +476    ; br -> 0x00453018
  00452e3c: sll $zero, $zero, 0       
  00452e40: addiu  $v1, $t0, -1       
  00452e44: andi   $t1, $a3, -1       
  00452e48: srl $v1, $v1, 3           
  00452e4c: sll $a3, $t1, 8           
  00452e50: addu $t5, $a1, $v1        
  00452e54: subu $a3, $a3, $t1        
  00452e58: addiu  $v1, $t0, +7       
  00452e5c: addu $t1, $a1, $t0        
  00452e60: andi   $v1, $v1, +7       
  00452e64: addiu  $t2, $zero, +7     
  00452e68: sltu $at, $zero, $t0      
  00452e6c: andi   $a3, $a3, -1       
  00452e70: addiu  $t4, $t1, -1       
  00452e74: daddu $t3, $zero, $zero   
  00452e78: beq    $at, $zero, +412      ; br -> 0x00453018
  00452e7c: subu $t6, $t2, $v1        
  00452e80: addiu  $t1, $zero, +255   
  00452e84: sll $zero, $zero, 0       
  00452e88: lbu    $v1, +0($t5)       
  00452e8c: srav $v1, $v1, $t6        
  00452e90: andi   $v1, $v1, +1       
  00452e94: beq    $v1, $zero, +16       ; br -> 0x00452ea8
  00452e98: sll $zero, $zero, 0       
  00452e9c: beq    $zero, $zero, +16     ; br -> 0x00452eb0
  00452ea0: sb     $t1, +0($t4)       
  00452ea4: sll $zero, $zero, 0       
  00452ea8: sb     $zero, +0($t4)     
  00452eac: sll $zero, $zero, 0       
  00452eb0: bne    $t6, $t2, +20         ; br -> 0x00452ec8
  00452eb4: sll $zero, $zero, 0       
  00452eb8: daddu $t6, $zero, $zero   
  00452ebc: beq    $zero, $zero, +16     ; br -> 0x00452ed0
  00452ec0: addiu  $t5, $t5, -1       
  00452ec4: sll $zero, $zero, 0       
  00452ec8: addiu  $t6, $t6, +1       
  00452ecc: sll $zero, $zero, 0       
  00452ed0: addiu  $t3, $t3, +1       
  00452ed4: sltu $v1, $t3, $t0        
  00452ed8: bne    $v1, $zero, -84       ; br -> 0x00452e88
  00452edc: addiu  $t4, $t4, -1       
  00452ee0: beq    $zero, $zero, +308    ; br -> 0x00453018
  00452ee4: sll $zero, $zero, 0       
  00452ee8: andi   $t1, $a3, -1       
  00452eec: sll $a3, $t1, 4           
  00452ef0: addiu  $t2, $t0, +3       
  00452ef4: addu $t1, $a3, $t1        
  00452ef8: addiu  $v1, $t0, -1       
  00452efc: sll $a3, $t1, 2           
  00452f00: srl $v1, $v1, 2           
  00452f04: addu $a3, $t1, $a3        
  00452f08: andi   $t2, $t2, +3       
  00452f0c: addu $t1, $a1, $t0        
  00452f10: sltu $at, $zero, $t0      
  00452f14: addiu  $t7, $t1, -1       
  00452f18: addu $v1, $a1, $v1        
  00452f1c: addiu  $t1, $zero, +3     
  00452f20: andi   $a3, $a3, -1       
  00452f24: subu $t1, $t1, $t2        
  00452f28: daddu $t5, $zero, $zero   
  00452f2c: beq    $at, $zero, +232      ; br -> 0x00453018
  00452f30: sll $t6, $t1, 1           
  00452f34: addiu  $t2, $zero, +6     
  00452f38: lbu    $t1, +0($v1)       
  00452f3c: srav $t1, $t1, $t6        
  00452f40: andi   $t8, $t1, +3       
  00452f44: sll $t1, $t8, 2           
  00452f48: sll $t4, $t8, 4           
  00452f4c: or $t3, $t8, $t1          
  00452f50: sll $t1, $t8, 6           
  00452f54: or $t3, $t4, $t3          
  00452f58: or $t1, $t1, $t3          
  00452f5c: bne    $t6, $t2, +16         ; br -> 0x00452f70
  00452f60: sb     $t1, +0($t7)       
  00452f64: daddu $t6, $zero, $zero   
  00452f68: beq    $zero, $zero, +12     ; br -> 0x00452f78
  00452f6c: addiu  $v1, $v1, -1       
  00452f70: addiu  $t6, $t6, +2       
  00452f74: sll $zero, $zero, 0       
  00452f78: addiu  $t5, $t5, +1       
  00452f7c: sltu $t1, $t5, $t0        
  00452f80: bne    $t1, $zero, -76       ; br -> 0x00452f38
  00452f84: addiu  $t7, $t7, -1       
  00452f88: beq    $zero, $zero, +140    ; br -> 0x00453018
  00452f8c: sll $zero, $zero, 0       
  00452f90: andi   $t1, $a3, -1       
  00452f94: sll $a3, $t1, 4           
  00452f98: addiu  $v1, $t0, -1       
  00452f9c: addu $a3, $a3, $t1        
  00452fa0: srl $v1, $v1, 1           
  00452fa4: addu $t6, $a1, $v1        
  00452fa8: addu $t1, $a1, $t0        
  00452fac: addiu  $v1, $t0, +1       
  00452fb0: addiu  $t5, $t1, -1       
  00452fb4: andi   $t1, $v1, +1       
  00452fb8: sltu $at, $zero, $t0      
  00452fbc: addiu  $v1, $zero, +1     
  00452fc0: andi   $a3, $a3, -1       
  00452fc4: subu $v1, $v1, $t1        
  00452fc8: daddu $t3, $zero, $zero   
  00452fcc: beq    $at, $zero, +72       ; br -> 0x00453018
  00452fd0: sll $t4, $v1, 2           
  00452fd4: sll $zero, $zero, 0       
  00452fd8: lbu    $v1, +0($t6)       
  00452fdc: srav $v1, $v1, $t4        
  00452fe0: andi   $t1, $v1, +15      
  00452fe4: sll $v1, $t1, 4           
  00452fe8: or $v1, $t1, $v1          
  00452fec: bne    $t4, $t2, +16         ; br -> 0x00453000
  00452ff0: sb     $v1, +0($t5)       
  00452ff4: daddu $t4, $zero, $zero   
  00452ff8: beq    $zero, $zero, +12     ; br -> 0x00453008
  00452ffc: addiu  $t6, $t6, -1       
  00453000: daddu $t4, $t2, $zero     
  00453004: sll $zero, $zero, 0       
  00453008: addiu  $t3, $t3, +1       
  0045300c: sltu $v1, $t3, $t0        
  00453010: bne    $v1, $zero, -60       ; br -> 0x00452fd8
  00453014: addiu  $t5, $t5, -1       
  00453018: addiu  $v1, $zero, +8     
  0045301c: sb     $v1, +9($a0)       
  00453020: sb     $v1, +11($a0)      
  00453024: sw     $t0, +4($a0)       
  00453028: beq    $a2, $zero, +836      ; br -> 0x00453370
  0045302c: sll $zero, $zero, 0       
  00453030: lbu    $a2, +9($a0)       
  00453034: addiu  $v1, $zero, +8     
  00453038: bne    $a2, $v1, +116        ; br -> 0x004530b0
  0045303c: sll $v1, $t0, 1           
  00453040: addu $a2, $a1, $t0        
  00453044: addu $v1, $a1, $v1        
  00453048: sltu $at, $zero, $t0      
  0045304c: addiu  $t3, $a2, -1       
  00453050: addiu  $t2, $v1, -1       
  00453054: beq    $at, $zero, +240      ; br -> 0x00453148
  00453058: daddu $t1, $zero, $zero   
  0045305c: andi   $a3, $a3, -1       
  00453060: addiu  $a2, $zero, +255   
  00453064: sll $zero, $zero, 0       
  00453068: lbu    $v1, +0($t3)       
  0045306c: bne    $v1, $a3, +16         ; br -> 0x00453080
  00453070: sll $zero, $zero, 0       
  00453074: sb     $zero, +0($t2)     
  00453078: beq    $zero, $zero, +12     ; br -> 0x00453088
  0045307c: addiu  $t2, $t2, -1       
  00453080: sb     $a2, +0($t2)       
  00453084: addiu  $t2, $t2, -1       
  00453088: lbu    $a1, +0($t3)       
  0045308c: addiu  $t1, $t1, +1       
  00453090: sltu $v1, $t1, $t0        
  00453094: sb     $a1, +0($t2)       
  00453098: addiu  $t3, $t3, -1       
  0045309c: bne    $v1, $zero, -56       ; br -> 0x00453068
  004530a0: addiu  $t2, $t2, -1       
  004530a4: beq    $zero, $zero, +160    ; br -> 0x00453148
  004530a8: sll $zero, $zero, 0       
  004530ac: sll $zero, $zero, 0       
  004530b0: addiu  $v1, $zero, +16    
  004530b4: bne    $a2, $v1, +144        ; br -> 0x00453148
  004530b8: sll $zero, $zero, 0       
  004530bc: lw     $v1, +4($a0)       
  004530c0: sltu $at, $zero, $t0      
  004530c4: daddu $t1, $zero, $zero   
  004530c8: addu $a2, $a1, $v1        
  004530cc: sll $v1, $v1, 1           
  004530d0: addiu  $t3, $a2, -1       
  004530d4: addu $v1, $a1, $v1        
  004530d8: beq    $at, $zero, +108      ; br -> 0x00453148
  004530dc: addiu  $t2, $v1, -1       
  004530e0: andi   $a3, $a3, -1       
  004530e4: addiu  $a2, $zero, +255   
  004530e8: lbu    $a1, -1($t3)       
  004530ec: lbu    $v1, +0($t3)       
  004530f0: sll $a1, $a1, 8           
  004530f4: or $v1, $v1, $a1          
  004530f8: bne    $a3, $v1, +20         ; br -> 0x00453110
  004530fc: sll $zero, $zero, 0       
  00453100: sb     $zero, +0($t2)     
  00453104: sb     $zero, -1($t2)     
  00453108: beq    $zero, $zero, +20     ; br -> 0x00453120
  0045310c: addiu  $t2, $t2, -2       
  00453110: sb     $a2, +0($t2)       
  00453114: sb     $a2, -1($t2)       
  00453118: addiu  $t2, $t2, -2       
  0045311c: sll $zero, $zero, 0       
  00453120: lbu    $a1, +0($t3)       
  00453124: addiu  $t1, $t1, +1       
  00453128: sltu $v1, $t1, $t0        
  0045312c: sb     $a1, +0($t2)       
  00453130: lbu    $a1, -1($t3)       
  00453134: sb     $a1, -1($t2)       
  00453138: addiu  $t3, $t3, -2       
  0045313c: bne    $v1, $zero, -88       ; br -> 0x004530e8
  00453140: addiu  $t2, $t2, -2       
  00453144: sll $zero, $zero, 0       
  00453148: addiu  $v1, $zero, +4     
  0045314c: sb     $v1, +8($a0)       
  00453150: addiu  $v1, $zero, +2     
  00453154: sb     $v1, +10($a0)      
  00453158: lbu    $v1, +9($a0)       
  0045315c: sll $v1, $v1, 1           
  00453160: sb     $v1, +11($a0)      
  00453164: lbu    $v1, +11($a0)      
  00453168: mult   $v1, $t0, +0       
  0045316c: srl $v1, $v1, 3           
  00453170: beq    $zero, $zero, +508    ; br -> 0x00453370
  00453174: sw     $v1, +4($a0)       
  00453178: addiu  $v1, $zero, +2     
  0045317c: bne    $a3, $v1, +496        ; br -> 0x00453370
  00453180: sll $zero, $zero, 0       
  00453184: beq    $a2, $zero, +488      ; br -> 0x00453370
  00453188: sll $zero, $zero, 0       
  0045318c: lbu    $a3, +9($a0)       
  00453190: addiu  $v1, $zero, +8     
  00453194: bne    $a3, $v1, +176        ; br -> 0x00453248
  00453198: sll $zero, $zero, 0       
  0045319c: lw     $a3, +4($a0)       
  004531a0: sll $v1, $t0, 2           
  004531a4: addu $v1, $a1, $v1        
  004531a8: sltu $at, $zero, $t0      
  004531ac: addiu  $t2, $v1, -1       
  004531b0: daddu $t1, $zero, $zero   
  004531b4: addu $v1, $a1, $a3        
  004531b8: beq    $at, $zero, +388      ; br -> 0x00453340
  004531bc: addiu  $t3, $v1, -1       
  004531c0: addiu  $a3, $zero, +255   
  004531c4: sll $zero, $zero, 0       
  004531c8: lbu    $a1, -2($t3)       
  004531cc: lhu    $v1, +2($a2)       
  004531d0: bne    $a1, $v1, +52         ; br -> 0x00453208
  004531d4: sll $zero, $zero, 0       
  004531d8: lbu    $a1, -1($t3)       
  004531dc: lhu    $v1, +4($a2)       
  004531e0: bne    $a1, $v1, +36         ; br -> 0x00453208
  004531e4: sll $zero, $zero, 0       
  004531e8: lbu    $a1, +0($t3)       
  004531ec: lhu    $v1, +6($a2)       
  004531f0: bne    $a1, $v1, +20         ; br -> 0x00453208
  004531f4: sll $zero, $zero, 0       
  004531f8: sb     $zero, +0($t2)     
  004531fc: beq    $zero, $zero, +16     ; br -> 0x00453210
  00453200: addiu  $t2, $t2, -1       
  00453204: sll $zero, $zero, 0       
  00453208: sb     $a3, +0($t2)       
  0045320c: addiu  $t2, $t2, -1       
  00453210: lbu    $a1, +0($t3)       
  00453214: addiu  $t1, $t1, +1       
  00453218: sltu $v1, $t1, $t0        
  0045321c: sb     $a1, +0($t2)       
  00453220: lbu    $a1, -1($t3)       
  00453224: sb     $a1, -1($t2)       
  00453228: lbu    $a1, -2($t3)       
  0045322c: sb     $a1, -2($t2)       
  00453230: addiu  $t3, $t3, -3       
  00453234: bne    $v1, $zero, -112      ; br -> 0x004531c8
  00453238: addiu  $t2, $t2, -3       
  0045323c: beq    $zero, $zero, +256    ; br -> 0x00453340
  00453240: sll $zero, $zero, 0       
  00453244: sll $zero, $zero, 0       
  00453248: addiu  $v1, $zero, +16    
  0045324c: bne    $a3, $v1, +240        ; br -> 0x00453340
  00453250: sll $zero, $zero, 0       
  00453254: lw     $t1, +4($a0)       
  00453258: sll $v1, $t0, 3           
  0045325c: addu $a3, $a1, $v1        
  00453260: sltu $at, $zero, $t0      
  00453264: daddu $v1, $zero, $zero   
  00453268: addiu  $a3, $a3, -1       
  0045326c: addu $a1, $a1, $t1        
  00453270: beq    $at, $zero, +204      ; br -> 0x00453340
  00453274: addiu  $a1, $a1, -1       
  00453278: addiu  $t3, $zero, +255   
  0045327c: sll $zero, $zero, 0       
  00453280: lbu    $t1, -5($a1)       
  00453284: lbu    $t2, -4($a1)       
  00453288: lhu    $t4, +2($a2)       
  0045328c: sll $t1, $t1, 8           
  00453290: or $t1, $t2, $t1          
  00453294: bne    $t4, $t1, +80         ; br -> 0x004532e8
  00453298: sll $zero, $zero, 0       
  0045329c: lbu    $t1, -3($a1)       
  004532a0: lbu    $t2, -2($a1)       
  004532a4: lhu    $t4, +4($a2)       
  004532a8: sll $t1, $t1, 8           
  004532ac: or $t1, $t2, $t1          
  004532b0: bne    $t4, $t1, +52         ; br -> 0x004532e8
  004532b4: sll $zero, $zero, 0       
  004532b8: lbu    $t2, -1($a1)       
  004532bc: lbu    $t1, +0($a1)       
  004532c0: lhu    $t4, +6($a2)       
  004532c4: sll $t2, $t2, 8           
  004532c8: or $t1, $t1, $t2          
  004532cc: bne    $t4, $t1, +24         ; br -> 0x004532e8
  004532d0: sll $zero, $zero, 0       
  004532d4: sb     $zero, +0($a3)     
  004532d8: sb     $zero, -1($a3)     
  004532dc: beq    $zero, $zero, +24     ; br -> 0x004532f8
  004532e0: addiu  $a3, $a3, -2       
  004532e4: sll $zero, $zero, 0       
  004532e8: sb     $t3, +0($a3)       
  004532ec: sb     $t3, -1($a3)       
  004532f0: addiu  $a3, $a3, -2       
  004532f4: sll $zero, $zero, 0       
  004532f8: lbu    $t2, +0($a1)       
  004532fc: addiu  $v1, $v1, +1       
  00453300: sltu $t1, $v1, $t0        
  00453304: sb     $t2, +0($a3)       
  00453308: lbu    $t2, -1($a1)       
  0045330c: sb     $t2, -1($a3)       
  00453310: lbu    $t2, -2($a1)       
  00453314: sb     $t2, -2($a3)       
  00453318: lbu    $t2, -3($a1)       
  0045331c: sb     $t2, -3($a3)       
  00453320: lbu    $t2, -4($a1)       
  00453324: sb     $t2, -4($a3)       
  00453328: lbu    $t2, -5($a1)       
  0045332c: sb     $t2, -5($a3)       
  00453330: addiu  $a1, $a1, -6       
  00453334: bne    $t1, $zero, -184      ; br -> 0x00453280
  00453338: addiu  $a3, $a3, -6       
  0045333c: sll $zero, $zero, 0       
  00453340: addiu  $v1, $zero, +6     
  00453344: sb     $v1, +8($a0)       
  00453348: addiu  $v1, $zero, +4     
  0045334c: sb     $v1, +10($a0)      
  00453350: lbu    $v1, +9($a0)       
  00453354: sll $v1, $v1, 2           
  00453358: sb     $v1, +11($a0)      
  0045335c: lbu    $v1, +11($a0)      
  00453360: mult   $v1, $t0, +0       
  00453364: srl $v1, $v1, 3           
  00453368: sw     $v1, +4($a0)       
  0045336c: sll $zero, $zero, 0       
  00453370: jr     $ra                
  00453374: sll $zero, $zero, 0       
  00453378: sll $zero, $zero, 0       
  0045337c: sll $zero, $zero, 0       
  00453380: lbu    $t2, +8($a0)       
  00453384: addiu  $v1, $zero, +2     
  00453388: bne    $t2, $v1, +740        ; br -> 0x00453670
  0045338c: lw     $t1, +0($a0)       
  00453390: beq    $a2, $zero, +732      ; br -> 0x00453670
  00453394: sll $zero, $zero, 0       
  00453398: lbu    $t0, +9($a0)       
  0045339c: addiu  $v1, $zero, +8     
  004533a0: bne    $t0, $v1, +716        ; br -> 0x00453670
  004533a4: sltu $at, $zero, $t1      
  004533a8: daddu $t0, $a1, $zero     
  004533ac: beq    $at, $zero, +656      ; br -> 0x00453640
  004533b0: daddu $a3, $zero, $zero   
  004533b4: sltiu  $at, $t1, +9       
  004533b8: bne    $at, $zero, +540      ; br -> 0x004535d8
  004533bc: addiu  $v1, $t1, -8       
  004533c0: lbu    $t3, +0($a1)       
  004533c4: addiu  $a3, $a3, +8       
  004533c8: lbu    $t5, +1($a1)       
  004533cc: lbu    $t6, +2($a1)       
  004533d0: sltu $t2, $a3, $v1        
  004533d4: sra $t3, $t3, 3           
  004533d8: andi   $t4, $t3, +31      
  004533dc: sra $t3, $t5, 3           
  004533e0: sll $t5, $t4, 10          
  004533e4: andi   $t3, $t3, +31      
  004533e8: sll $t4, $t3, 5           
  004533ec: sra $t3, $t6, 3           
  004533f0: or $t4, $t5, $t4          
  004533f4: andi   $t3, $t3, +31      
  004533f8: or $t3, $t3, $t4          
  004533fc: addu $t3, $a2, $t3        
  00453400: lbu    $t3, +0($t3)       
  00453404: sb     $t3, +0($t0)       
  00453408: lbu    $t3, +3($a1)       
  0045340c: lbu    $t5, +4($a1)       
  00453410: lbu    $t6, +5($a1)       
  00453414: sra $t3, $t3, 3           
  00453418: andi   $t4, $t3, +31      
  0045341c: sra $t3, $t5, 3           
  00453420: sll $t5, $t4, 10          
  00453424: andi   $t3, $t3, +31      
  00453428: sll $t4, $t3, 5           
  0045342c: sra $t3, $t6, 3           
  00453430: or $t4, $t5, $t4          
  00453434: andi   $t3, $t3, +31      
  00453438: or $t3, $t3, $t4          
  0045343c: addu $t3, $a2, $t3        
  00453440: lbu    $t3, +0($t3)       
  00453444: sb     $t3, +1($t0)       
  00453448: lbu    $t3, +6($a1)       
  0045344c: lbu    $t5, +7($a1)       
  00453450: lbu    $t6, +8($a1)       
  00453454: sra $t3, $t3, 3           
  00453458: andi   $t4, $t3, +31      
  0045345c: sra $t3, $t5, 3           
  00453460: sll $t5, $t4, 10          
  00453464: andi   $t3, $t3, +31      
  00453468: sll $t4, $t3, 5           
  0045346c: sra $t3, $t6, 3           
  00453470: or $t4, $t5, $t4          
  00453474: andi   $t3, $t3, +31      
  00453478: or $t3, $t3, $t4          
  0045347c: addu $t3, $a2, $t3        
  00453480: lbu    $t3, +0($t3)       
  00453484: sb     $t3, +2($t0)       
  00453488: lbu    $t3, +9($a1)       
  0045348c: lbu    $t5, +10($a1)      
  00453490: lbu    $t6, +11($a1)      
  00453494: sra $t3, $t3, 3           
  00453498: andi   $t4, $t3, +31      
  0045349c: sra $t3, $t5, 3           
  004534a0: sll $t5, $t4, 10          
  004534a4: andi   $t3, $t3, +31      
  004534a8: sll $t4, $t3, 5           
  004534ac: sra $t3, $t6, 3           
  004534b0: or $t4, $t5, $t4          
  004534b4: andi   $t3, $t3, +31      
  004534b8: or $t3, $t3, $t4          
  004534bc: addu $t3, $a2, $t3        
  004534c0: lbu    $t3, +0($t3)       
  004534c4: sb     $t3, +3($t0)       
  004534c8: lbu    $t3, +12($a1)      
  004534cc: lbu    $t5, +13($a1)      
  004534d0: lbu    $t6, +14($a1)      
  004534d4: sra $t3, $t3, 3           
  004534d8: andi   $t4, $t3, +31      
  004534dc: sra $t3, $t5, 3           
  004534e0: sll $t5, $t4, 10          
  004534e4: andi   $t3, $t3, +31      
  004534e8: sll $t4, $t3, 5           
  004534ec: sra $t3, $t6, 3           
  004534f0: or $t4, $t5, $t4          
  004534f4: andi   $t3, $t3, +31      
  004534f8: or $t3, $t3, $t4          
  004534fc: addu $t3, $a2, $t3        
  00453500: lbu    $t3, +0($t3)       
  00453504: sb     $t3, +4($t0)       
  00453508: lbu    $t3, +15($a1)      
  0045350c: lbu    $t5, +16($a1)      
  00453510: lbu    $t6, +17($a1)      
  00453514: sra $t3, $t3, 3           
  00453518: andi   $t4, $t3, +31      
  0045351c: sra $t3, $t5, 3           
  00453520: sll $t5, $t4, 10          
  00453524: andi   $t3, $t3, +31      
  00453528: sll $t4, $t3, 5           
  0045352c: sra $t3, $t6, 3           
  00453530: or $t4, $t5, $t4          
  00453534: andi   $t3, $t3, +31      
  00453538: or $t3, $t3, $t4          
  0045353c: addu $t3, $a2, $t3        
  00453540: lbu    $t3, +0($t3)       
  00453544: sb     $t3, +5($t0)       
  00453548: lbu    $t3, +18($a1)      
  0045354c: lbu    $t5, +19($a1)      
  00453550: lbu    $t6, +20($a1)      
  00453554: sra $t3, $t3, 3           
  00453558: andi   $t4, $t3, +31      
  0045355c: sra $t3, $t5, 3           
  00453560: sll $t5, $t4, 10          
  00453564: andi   $t3, $t3, +31      
  00453568: sll $t4, $t3, 5           
  0045356c: sra $t3, $t6, 3           
  00453570: or $t4, $t5, $t4          
  00453574: andi   $t3, $t3, +31      
  00453578: or $t3, $t3, $t4          
  0045357c: addu $t3, $a2, $t3        
  00453580: lbu    $t3, +0($t3)       
  00453584: sb     $t3, +6($t0)       
  00453588: lbu    $t3, +21($a1)      
  0045358c: lbu    $t5, +22($a1)      
  00453590: lbu    $t6, +23($a1)      
  00453594: sra $t3, $t3, 3           
  00453598: andi   $t4, $t3, +31      
  0045359c: sra $t3, $t5, 3           
  004535a0: addiu  $a1, $a1, +24      
  004535a4: sll $t5, $t4, 10          
  004535a8: andi   $t3, $t3, +31      
  004535ac: sll $t4, $t3, 5           
  004535b0: sra $t3, $t6, 3           
  004535b4: or $t4, $t5, $t4          
  004535b8: andi   $t3, $t3, +31      
  004535bc: or $t3, $t3, $t4          
  004535c0: addu $t3, $a2, $t3        
  004535c4: lbu    $t3, +0($t3)       
  004535c8: sb     $t3, +7($t0)       
  004535cc: bne    $t2, $zero, -528      ; br -> 0x004533c0
  004535d0: addiu  $t0, $t0, +8       
  004535d4: sll $zero, $zero, 0       
  004535d8: sltu $at, $a3, $t1        
  004535dc: beq    $at, $zero, +96       ; br -> 0x00453640
  004535e0: sll $zero, $zero, 0       
  004535e4: sll $zero, $zero, 0       
  004535e8: lbu    $t2, +0($a1)       
  004535ec: addiu  $a3, $a3, +1       
  004535f0: lbu    $t4, +1($a1)       
  004535f4: lbu    $t5, +2($a1)       
  004535f8: sltu $v1, $a3, $t1        
  004535fc: sra $t2, $t2, 3           
  00453600: andi   $t3, $t2, +31      
  00453604: sra $t2, $t4, 3           
  00453608: addiu  $a1, $a1, +3       
  0045360c: sll $t4, $t3, 10          
  00453610: andi   $t2, $t2, +31      
  00453614: sll $t3, $t2, 5           
  00453618: sra $t2, $t5, 3           
  0045361c: or $t3, $t4, $t3          
  00453620: andi   $t2, $t2, +31      
  00453624: or $t2, $t2, $t3          
  00453628: addu $t2, $a2, $t2        
  0045362c: lbu    $t2, +0($t2)       
  00453630: sb     $t2, +0($t0)       
  00453634: bne    $v1, $zero, -80       ; br -> 0x004535e8
  00453638: addiu  $t0, $t0, +1       
  0045363c: sll $zero, $zero, 0       
  00453640: addiu  $v1, $zero, +3     
  00453644: sb     $v1, +8($a0)       
  00453648: addiu  $v1, $zero, +1     
  0045364c: sb     $v1, +10($a0)      
  00453650: lbu    $v1, +9($a0)       
  00453654: sb     $v1, +11($a0)      
  00453658: lbu    $v1, +11($a0)      
  0045365c: mult   $v1, $t1, +0       
  00453660: addiu  $v1, $v1, +7       
  00453664: srl $v1, $v1, 3           
  00453668: beq    $zero, $zero, +1004   ; br -> 0x00453a58
  0045366c: sw     $v1, +4($a0)       
  00453670: addiu  $v1, $zero, +6     
  00453674: bne    $t2, $v1, +744        ; br -> 0x00453960
  00453678: sll $zero, $zero, 0       
  0045367c: beq    $a2, $zero, +736      ; br -> 0x00453960
  00453680: sll $zero, $zero, 0       
  00453684: lbu    $t0, +9($a0)       
  00453688: addiu  $v1, $zero, +8     
  0045368c: bne    $t0, $v1, +720        ; br -> 0x00453960
  00453690: sltu $at, $zero, $t1      
  00453694: daddu $a3, $a1, $zero     
  00453698: beq    $at, $zero, +660      ; br -> 0x00453930
  0045369c: daddu $v1, $zero, $zero   
  004536a0: sltiu  $at, $t1, +9       
  004536a4: bne    $at, $zero, +544      ; br -> 0x004538c8
  004536a8: addiu  $t0, $t1, -8       
  004536ac: sll $zero, $zero, 0       
  004536b0: lbu    $t3, +0($a1)       
  004536b4: addiu  $v1, $v1, +8       
  004536b8: lbu    $t5, +1($a1)       
  004536bc: lbu    $t6, +2($a1)       
  004536c0: sltu $t2, $v1, $t0        
  004536c4: sra $t3, $t3, 3           
  004536c8: andi   $t4, $t3, +31      
  004536cc: sra $t3, $t5, 3           
  004536d0: sll $t5, $t4, 10          
  004536d4: andi   $t3, $t3, +31      
  004536d8: sll $t4, $t3, 5           
  004536dc: sra $t3, $t6, 3           
  004536e0: or $t4, $t5, $t4          
  004536e4: andi   $t3, $t3, +31      
  004536e8: or $t3, $t3, $t4          
  004536ec: addu $t3, $a2, $t3        
  004536f0: lbu    $t3, +0($t3)       
  004536f4: sb     $t3, +0($a3)       
  004536f8: lbu    $t3, +4($a1)       
  004536fc: lbu    $t5, +5($a1)       
  00453700: lbu    $t6, +6($a1)       
  00453704: sra $t3, $t3, 3           
  00453708: andi   $t4, $t3, +31      
  0045370c: sra $t3, $t5, 3           
  00453710: sll $t5, $t4, 10          
  00453714: andi   $t3, $t3, +31      
  00453718: sll $t4, $t3, 5           
  0045371c: sra $t3, $t6, 3           
  00453720: or $t4, $t5, $t4          
  00453724: andi   $t3, $t3, +31      
  00453728: or $t3, $t3, $t4          
  0045372c: addu $t3, $a2, $t3        
  00453730: lbu    $t3, +0($t3)       
  00453734: sb     $t3, +1($a3)       
  00453738: lbu    $t3, +8($a1)       
  0045373c: lbu    $t5, +9($a1)       
  00453740: lbu    $t6, +10($a1)      
  00453744: sra $t3, $t3, 3           
  00453748: andi   $t4, $t3, +31      
  0045374c: sra $t3, $t5, 3           
  00453750: sll $t5, $t4, 10          
  00453754: andi   $t3, $t3, +31      
  00453758: sll $t4, $t3, 5           
  0045375c: sra $t3, $t6, 3           
  00453760: or $t4, $t5, $t4          
  00453764: andi   $t3, $t3, +31      
  00453768: or $t3, $t3, $t4          
  0045376c: addu $t3, $a2, $t3        
  00453770: lbu    $t3, +0($t3)       
  00453774: sb     $t3, +2($a3)       
  00453778: lbu    $t3, +12($a1)      
  0045377c: lbu    $t5, +13($a1)      
  00453780: lbu    $t6, +14($a1)      
  00453784: sra $t3, $t3, 3           
  00453788: andi   $t4, $t3, +31      
  0045378c: sra $t3, $t5, 3           
  00453790: sll $t5, $t4, 10          
  00453794: andi   $t3, $t3, +31      
  00453798: sll $t4, $t3, 5           
  0045379c: sra $t3, $t6, 3           
  004537a0: or $t4, $t5, $t4          
  004537a4: andi   $t3, $t3, +31      
  004537a8: or $t3, $t3, $t4          
  004537ac: addu $t3, $a2, $t3        
  004537b0: lbu    $t3, +0($t3)       
  004537b4: sb     $t3, +3($a3)       
  004537b8: lbu    $t3, +16($a1)      
  004537bc: lbu    $t5, +17($a1)      
  004537c0: lbu    $t6, +18($a1)      
  004537c4: sra $t3, $t3, 3           
  004537c8: andi   $t4, $t3, +31      
  004537cc: sra $t3, $t5, 3           
  004537d0: sll $t5, $t4, 10          
  004537d4: andi   $t3, $t3, +31      
  004537d8: sll $t4, $t3, 5           
  004537dc: sra $t3, $t6, 3           
  004537e0: or $t4, $t5, $t4          
  004537e4: andi   $t3, $t3, +31      
  004537e8: or $t3, $t3, $t4          
  004537ec: addu $t3, $a2, $t3        
  004537f0: lbu    $t3, +0($t3)       
  004537f4: sb     $t3, +4($a3)       
  004537f8: lbu    $t3, +20($a1)      
  004537fc: lbu    $t5, +21($a1)      
  00453800: lbu    $t6, +22($a1)      
  00453804: sra $t3, $t3, 3           
  00453808: andi   $t4, $t3, +31      
  0045380c: sra $t3, $t5, 3           
  00453810: sll $t5, $t4, 10          
  00453814: andi   $t3, $t3, +31      
  00453818: sll $t4, $t3, 5           
  0045381c: sra $t3, $t6, 3           
  00453820: or $t4, $t5, $t4          
  00453824: andi   $t3, $t3, +31      
  00453828: or $t3, $t3, $t4          
  0045382c: addu $t3, $a2, $t3        
  00453830: lbu    $t3, +0($t3)       
  00453834: sb     $t3, +5($a3)       
  00453838: lbu    $t3, +24($a1)      
  0045383c: lbu    $t5, +25($a1)      
  00453840: lbu    $t6, +26($a1)      
  00453844: sra $t3, $t3, 3           
  00453848: andi   $t4, $t3, +31      
  0045384c: sra $t3, $t5, 3           
  00453850: sll $t5, $t4, 10          
  00453854: andi   $t3, $t3, +31      
  00453858: sll $t4, $t3, 5           
  0045385c: sra $t3, $t6, 3           
  00453860: or $t4, $t5, $t4          
  00453864: andi   $t3, $t3, +31      
  00453868: or $t3, $t3, $t4          
  0045386c: addu $t3, $a2, $t3        
  00453870: lbu    $t3, +0($t3)       
  00453874: sb     $t3, +6($a3)       
  00453878: lbu    $t3, +28($a1)      
  0045387c: lbu    $t5, +29($a1)      
  00453880: lbu    $t6, +30($a1)      
  00453884: sra $t3, $t3, 3           
  00453888: andi   $t4, $t3, +31      
  0045388c: sra $t3, $t5, 3           
  00453890: addiu  $a1, $a1, +32      
  00453894: sll $t5, $t4, 10          
  00453898: andi   $t3, $t3, +31      
  0045389c: sll $t4, $t3, 5           
  004538a0: sra $t3, $t6, 3           
  004538a4: or $t4, $t5, $t4          
  004538a8: andi   $t3, $t3, +31      
  004538ac: or $t3, $t3, $t4          
  004538b0: addu $t3, $a2, $t3        
  004538b4: lbu    $t3, +0($t3)       
  004538b8: sb     $t3, +7($a3)       
  004538bc: bne    $t2, $zero, -528      ; br -> 0x004536b0
  004538c0: addiu  $a3, $a3, +8       
  004538c4: sll $zero, $zero, 0       
  004538c8: sltu $at, $v1, $t1        
  004538cc: beq    $at, $zero, +96       ; br -> 0x00453930
  004538d0: sll $zero, $zero, 0       
  004538d4: sll $zero, $zero, 0       
  004538d8: lbu    $t2, +0($a1)       
  004538dc: addiu  $v1, $v1, +1       
  004538e0: lbu    $t4, +1($a1)       
  004538e4: lbu    $t5, +2($a1)       
  004538e8: sltu $t0, $v1, $t1        
  004538ec: sra $t2, $t2, 3           
  004538f0: andi   $t3, $t2, +31      
  004538f4: sra $t2, $t4, 3           
  004538f8: addiu  $a1, $a1, +4       
  004538fc: sll $t4, $t3, 10          
  00453900: andi   $t2, $t2, +31      
  00453904: sll $t3, $t2, 5           
  00453908: sra $t2, $t5, 3           
  0045390c: or $t3, $t4, $t3          
  00453910: andi   $t2, $t2, +31      
  00453914: or $t2, $t2, $t3          
  00453918: addu $t2, $a2, $t2        
  0045391c: lbu    $t2, +0($t2)       
  00453920: sb     $t2, +0($a3)       
  00453924: bne    $t0, $zero, -80       ; br -> 0x004538d8
  00453928: addiu  $a3, $a3, +1       
  0045392c: sll $zero, $zero, 0       
  00453930: addiu  $v1, $zero, +3     
  00453934: sb     $v1, +8($a0)       
  00453938: addiu  $v1, $zero, +1     
  0045393c: sb     $v1, +10($a0)      
  00453940: lbu    $v1, +9($a0)       
  00453944: sb     $v1, +11($a0)      
  00453948: lbu    $v1, +11($a0)      
  0045394c: mult   $v1, $t1, +0       
  00453950: addiu  $v1, $v1, +7       
  00453954: srl $v1, $v1, 3           
  00453958: beq    $zero, $zero, +252    ; br -> 0x00453a58
  0045395c: sw     $v1, +4($a0)       
  00453960: addiu  $v1, $zero, +3     
  00453964: bne    $t2, $v1, +240        ; br -> 0x00453a58
  00453968: sll $zero, $zero, 0       
  0045396c: beq    $a3, $zero, +232      ; br -> 0x00453a58
  00453970: sll $zero, $zero, 0       
  00453974: lbu    $a0, +9($a0)       
  00453978: addiu  $v1, $zero, +8     
  0045397c: bne    $a0, $v1, +216        ; br -> 0x00453a58
  00453980: sltu $at, $zero, $t1      
  00453984: beq    $at, $zero, +208      ; br -> 0x00453a58
  00453988: daddu $v1, $zero, $zero   
  0045398c: sltiu  $at, $t1, +9       
  00453990: bne    $at, $zero, +148      ; br -> 0x00453a28
  00453994: addiu  $a0, $t1, -8       
  00453998: lbu    $t0, +0($a1)       
  0045399c: addiu  $v1, $v1, +8       
  004539a0: sltu $a2, $v1, $a0        
  004539a4: addu $t0, $a3, $t0        
  004539a8: lbu    $t0, +0($t0)       
  004539ac: sb     $t0, +0($a1)       
  004539b0: lbu    $t0, +1($a1)       
  004539b4: addu $t0, $a3, $t0        
  004539b8: lbu    $t0, +0($t0)       
  004539bc: sb     $t0, +1($a1)       
  004539c0: lbu    $t0, +2($a1)       
  004539c4: addu $t0, $a3, $t0        
  004539c8: lbu    $t0, +0($t0)       
  004539cc: sb     $t0, +2($a1)       
  004539d0: lbu    $t0, +3($a1)       
  004539d4: addu $t0, $a3, $t0        
  004539d8: lbu    $t0, +0($t0)       
  004539dc: sb     $t0, +3($a1)       
  004539e0: lbu    $t0, +4($a1)       
  004539e4: addu $t0, $a3, $t0        
  004539e8: lbu    $t0, +0($t0)       
  004539ec: sb     $t0, +4($a1)       
  004539f0: lbu    $t0, +5($a1)       
  004539f4: addu $t0, $a3, $t0        
  004539f8: lbu    $t0, +0($t0)       
  004539fc: sb     $t0, +5($a1)       
  00453a00: lbu    $t0, +6($a1)       
  00453a04: addu $t0, $a3, $t0        
  00453a08: lbu    $t0, +0($t0)       
  00453a0c: sb     $t0, +6($a1)       
  00453a10: lbu    $t0, +7($a1)       
  00453a14: addu $t0, $a3, $t0        
  00453a18: lbu    $t0, +0($t0)       
  00453a1c: sb     $t0, +7($a1)       
  00453a20: bne    $a2, $zero, -140      ; br -> 0x00453998
  00453a24: addiu  $a1, $a1, +8       
  00453a28: sltu $at, $v1, $t1        
  00453a2c: beq    $at, $zero, +40       ; br -> 0x00453a58
  00453a30: sll $zero, $zero, 0       
  00453a34: sll $zero, $zero, 0       
  00453a38: lbu    $a2, +0($a1)       
  00453a3c: addiu  $v1, $v1, +1       
  00453a40: sltu $a0, $v1, $t1        
  00453a44: addu $a2, $a3, $a2        
  00453a48: lbu    $a2, +0($a2)       
  00453a4c: sb     $a2, +0($a1)       
  00453a50: bne    $a0, $zero, -28       ; br -> 0x00453a38
  00453a54: addiu  $a1, $a1, +1       
  00453a58: jr     $ra                
  00453a5c: sll $zero, $zero, 0       
