; 0x0022ade0  FUN_0022ade0  size=992  status=real_c
; evidence: args=a0=int;a1=ptr;a2=w;a3=- ret=ptr calls=
; 248 words

  0022ade0: addiu  $sp, $sp, -224     
  0022ade4: lui   $v1, 0x006f0000     
  0022ade8: lw     $t0, +13792($v1)      ; GLOBAL 0x006f35e0
  0022adec: fmove  $zero,$a0,$zero    
  0022adf0: lw     $a1, +24($a1)      
  0022adf4: f10.6  $a0,$s0,$zero      
  0022adf8: f10.6  $a0,$s0,$zero      
  0022adfc: f10.6  $a0,$s0,$zero      
  0022ae00: lw     $t0, +52($t0)      
  0022ae04: addiu  $v1, $zero, +3     
  0022ae08: fmove  $zero,$a0,$t0      
  0022ae0c: beq    $a1, $v1, +312        ; br -> 0x0022af48
  0022ae10: f14.20 $zero,$s4,$zero    
  0022ae14: addiu  $v1, $zero, +4     
  0022ae18: beq    $a1, $v1, +304        ; br -> 0x0022af4c
  0022ae1c: lui   $v1, 0x3f000000     
  0022ae20: addiu  $v1, $zero, +2     
  0022ae24: beq    $a1, $v1, +104        ; br -> 0x0022ae90
  0022ae28: addiu  $v1, $zero, +1     
  0022ae2c: addiu  $v1, $zero, +1     
  0022ae30: beq    $a1, $v1, +12         ; br -> 0x0022ae40
  0022ae34: sll    $zero, $zero, +0   
  0022ae38: beq    $zero, $zero, +808    ; br -> 0x0022b164
  0022ae3c: sll    $zero, $zero, +0   
  0022ae40: beq    $a3, $zero, +36       ; br -> 0x0022ae68
  0022ae44: lui   $v1, 0xc3960000     
  0022ae48: lui   $v1, 0x43870000     
  0022ae4c: sw     $v1, +208($sp)     
  0022ae50: swc1   $a0, +216($sp)     
  0022ae54: lui   $v1, 0x431b0000     
  0022ae58: sw     $v1, +212($sp)     
  0022ae5c: beq    $zero, $zero, +28     ; br -> 0x0022ae7c
  0022ae60: addiu  $v1, $sp, +208     
  0022ae64: lui   $v1, 0xc3960000     
  0022ae68: sw     $v1, +192($sp)     
  0022ae6c: swc1   $a0, +200($sp)     
  0022ae70: lui   $v1, 0x431b0000     
  0022ae74: sw     $v1, +196($sp)     
  0022ae78: addiu  $v1, $sp, +192     
  0022ae7c: lwc1   $v0, +4($v1)          ; GLOBAL 0x431b0004
  0022ae80: lwc1   $v1, +8($v1)          ; GLOBAL 0x431b0008
  0022ae84: beq    $zero, $zero, +732    ; br -> 0x0022b164
  0022ae88: lwc1   $a0, +0($v1)          ; GLOBAL 0x431b0000
  0022ae8c: addiu  $v1, $zero, +1     
  0022ae90: beq    $a2, $v1, +96         ; br -> 0x0022aef4
  0022ae94: sll    $zero, $zero, +0   
  0022ae98: beq    $a2, $zero, +12       ; br -> 0x0022aea8
  0022ae9c: sll    $zero, $zero, +0   
  0022aea0: beq    $zero, $zero, +704    ; br -> 0x0022b164
  0022aea4: sll    $zero, $zero, +0   
  0022aea8: beq    $a3, $zero, +36       ; br -> 0x0022aed0
  0022aeac: lui   $v1, 0xc3960000     
  0022aeb0: lui   $v1, 0x43870000     
  0022aeb4: sw     $v1, +176($sp)     
  0022aeb8: swc1   $a0, +184($sp)     
  0022aebc: lui   $v1, 0x42be0000     
  0022aec0: sw     $v1, +180($sp)     
  0022aec4: beq    $zero, $zero, +28     ; br -> 0x0022aee4
  0022aec8: addiu  $v1, $sp, +176     
  0022aecc: lui   $v1, 0xc3960000     
  0022aed0: sw     $v1, +160($sp)     
  0022aed4: swc1   $a0, +168($sp)     
  0022aed8: lui   $v1, 0x42be0000     
  0022aedc: sw     $v1, +164($sp)     
  0022aee0: addiu  $v1, $sp, +160     
  0022aee4: lwc1   $v0, +4($v1)          ; GLOBAL 0x42be0004
  0022aee8: lwc1   $v1, +8($v1)          ; GLOBAL 0x42be0008
  0022aeec: beq    $zero, $zero, +628    ; br -> 0x0022b164
  0022aef0: lwc1   $a0, +0($v1)          ; GLOBAL 0x42be0000
  0022aef4: beq    $a3, $zero, +40       ; br -> 0x0022af20
  0022aef8: lui   $v1, 0xc3960000     
  0022aefc: lui   $v1, 0x43870000     
  0022af00: addiu  $a1, $sp, +144     
  0022af04: sw     $v1, +144($sp)     
  0022af08: swc1   $a0, +152($sp)     
  0022af0c: lui   $v1, 0x439d0000     
  0022af10: ori    $v1, $v1, -32768   
  0022af14: beq    $zero, $zero, +32     ; br -> 0x0022af38
  0022af18: sw     $v1, +148($sp)     
  0022af1c: lui   $v1, 0xc3960000     
  0022af20: addiu  $a1, $sp, +128     
  0022af24: sw     $v1, +128($sp)     
  0022af28: swc1   $a0, +136($sp)     
  0022af2c: lui   $v1, 0x439d0000     
  0022af30: ori    $v1, $v1, -32768   
  0022af34: sw     $v1, +132($sp)     
  0022af38: lwc1   $v0, +4($a1)       
  0022af3c: lwc1   $v1, +8($a1)       
  0022af40: beq    $zero, $zero, +544    ; br -> 0x0022b164
  0022af44: lwc1   $a0, +0($a1)       
  0022af48: lui   $v1, 0x3f000000     
  0022af4c: fmove  $zero,$a0,$v1      
  0022af50: fmove  $zero,$a0,$t0      
  0022af54: lui   $v1, 0x006f0000     
  0022af58: lw     $a1, +13752($v1)      ; GLOBAL 0x006f35b8
  0022af5c: f14.20 $zero,$s4,$zero    
  0022af60: lw     $a1, +76($a1)      
  0022af64: addiu  $v1, $zero, +4     
  0022af68: beq    $a1, $v1, +40         ; br -> 0x0022af94
  0022af6c: f10.2  $at,$s0,$zero      
  0022af70: addiu  $v1, $zero, +3     
  0022af74: beq    $a1, $v1, +28         ; br -> 0x0022af94
  0022af78: sll    $zero, $zero, +0   
  0022af7c: addiu  $v1, $zero, +2     
  0022af80: beq    $a1, $v1, +84         ; br -> 0x0022afd8
  0022af84: addiu  $v1, $zero, +3     
  0022af88: addiu  $v1, $zero, +1     
  0022af8c: beq    $zero, $zero, +68     ; br -> 0x0022afd4
  0022af90: dsubu  $zero, $zero, +0   
  0022af94: addiu  $a1, $zero, +3     
  0022af98: beq    $a2, $a1, +52         ; br -> 0x0022afd0
  0022af9c: sll    $zero, $zero, +0   
  0022afa0: addiu  $v1, $zero, +2     
  0022afa4: beq    $a2, $v1, +32         ; br -> 0x0022afc8
  0022afa8: sll    $zero, $zero, +0   
  0022afac: addiu  $v1, $zero, +1     
  0022afb0: beq    $a2, $v1, +12         ; br -> 0x0022afc0
  0022afb4: sll    $zero, $zero, +0   
  0022afb8: beq    $zero, $zero, +24     ; br -> 0x0022afd4
  0022afbc: dsubu  $zero, $zero, +0   
  0022afc0: beq    $zero, $zero, +16     ; br -> 0x0022afd4
  0022afc4: dsubu  $zero, $a1, +0     
  0022afc8: beq    $zero, $zero, +8      ; br -> 0x0022afd4
  0022afcc: addiu  $a2, $zero, +1     
  0022afd0: addiu  $a2, $zero, +2     
  0022afd4: addiu  $v1, $zero, +3     
  0022afd8: beq    $a2, $v1, +312        ; br -> 0x0022b114
  0022afdc: sll    $zero, $zero, +0   
  0022afe0: addiu  $v1, $zero, +2     
  0022afe4: beq    $a2, $v1, +208        ; br -> 0x0022b0b8
  0022afe8: sll    $zero, $zero, +0   
  0022afec: addiu  $v1, $zero, +1     
  0022aff0: beq    $a2, $v1, +104        ; br -> 0x0022b05c
  0022aff4: sll    $zero, $zero, +0   
  0022aff8: beq    $a2, $zero, +12       ; br -> 0x0022b008
  0022affc: sll    $zero, $zero, +0   
  0022b000: beq    $zero, $zero, +352    ; br -> 0x0022b164
  0022b004: sll    $zero, $zero, +0   
  0022b008: beq    $a3, $zero, +36       ; br -> 0x0022b030
  0022b00c: lui   $v1, 0xc3960000     
  0022b010: lui   $v1, 0x42f00000     
  0022b014: sw     $zero, +120($sp)   
  0022b018: sw     $v1, +112($sp)     
  0022b01c: addiu  $a1, $sp, +112     
  0022b020: lui   $v1, 0x42be0000     
  0022b024: beq    $zero, $zero, +28     ; br -> 0x0022b044
  0022b028: sw     $v1, +116($sp)     
  0022b02c: lui   $v1, 0xc3960000     
  0022b030: sw     $zero, +104($sp)   
  0022b034: sw     $v1, +96($sp)      
  0022b038: addiu  $a1, $sp, +96      
  0022b03c: lui   $v1, 0x42be0000     
  0022b040: sw     $v1, +100($sp)     
  0022b044: lui   $v1, 0x41f00000     
  0022b048: lwc1   $v0, +4($a1)       
  0022b04c: lwc1   $v1, +8($a1)       
  0022b050: fmove  $zero,$a0,$v1      
  0022b054: beq    $zero, $zero, +268    ; br -> 0x0022b164
  0022b058: lwc1   $a0, +0($a1)       
  0022b05c: beq    $a3, $zero, +40       ; br -> 0x0022b088
  0022b060: lui   $v1, 0xc3960000     
  0022b064: lui   $v1, 0x42f00000     
  0022b068: sw     $zero, +88($sp)    
  0022b06c: sw     $v1, +80($sp)      
  0022b070: addiu  $a1, $sp, +80      
  0022b074: lui   $v1, 0x439d0000     
  0022b078: ori    $v1, $v1, -32768   
  0022b07c: beq    $zero, $zero, +32     ; br -> 0x0022b0a0
  0022b080: sw     $v1, +84($sp)      
  0022b084: lui   $v1, 0xc3960000     
  0022b088: sw     $zero, +72($sp)    
  0022b08c: sw     $v1, +64($sp)      
  0022b090: addiu  $a1, $sp, +64      
  0022b094: lui   $v1, 0x439d0000     
  0022b098: ori    $v1, $v1, -32768   
  0022b09c: sw     $v1, +68($sp)      
  0022b0a0: lui   $v1, 0x41f00000     
  0022b0a4: lwc1   $v0, +4($a1)       
  0022b0a8: lwc1   $v1, +8($a1)       
  0022b0ac: fmove  $zero,$a0,$v1      
  0022b0b0: beq    $zero, $zero, +176    ; br -> 0x0022b164
  0022b0b4: lwc1   $a0, +0($a1)       
  0022b0b8: beq    $a3, $zero, +40       ; br -> 0x0022b0e4
  0022b0bc: lui   $v1, 0x44480000     
  0022b0c0: lui   $v1, 0x43d20000     
  0022b0c4: sw     $zero, +56($sp)    
  0022b0c8: sw     $v1, +48($sp)      
  0022b0cc: addiu  $a1, $sp, +48      
  0022b0d0: lui   $v1, 0x439d0000     
  0022b0d4: ori    $v1, $v1, -32768   
  0022b0d8: beq    $zero, $zero, +32     ; br -> 0x0022b0fc
  0022b0dc: sw     $v1, +52($sp)      
  0022b0e0: lui   $v1, 0x44480000     
  0022b0e4: sw     $zero, +40($sp)    
  0022b0e8: sw     $v1, +32($sp)      
  0022b0ec: addiu  $a1, $sp, +32      
  0022b0f0: lui   $v1, 0x439d0000     
  0022b0f4: ori    $v1, $v1, -32768   
  0022b0f8: sw     $v1, +36($sp)      
  0022b0fc: lui   $v1, 0x43910000     
  0022b100: lwc1   $v0, +4($a1)       
  0022b104: lwc1   $v1, +8($a1)       
  0022b108: fmove  $zero,$a0,$v1      
  0022b10c: beq    $zero, $zero, +84     ; br -> 0x0022b164
  0022b110: lwc1   $a0, +0($a1)       
  0022b114: beq    $a3, $zero, +36       ; br -> 0x0022b13c
  0022b118: lui   $v1, 0x44480000     
  0022b11c: lui   $v1, 0x43d20000     
  0022b120: sw     $zero, +24($sp)    
  0022b124: sw     $v1, +16($sp)      
  0022b128: addiu  $a1, $sp, +16      
  0022b12c: lui   $v1, 0x42be0000     
  0022b130: beq    $zero, $zero, +28     ; br -> 0x0022b150
  0022b134: sw     $v1, +20($sp)      
  0022b138: lui   $v1, 0x44480000     
  0022b13c: sw     $zero, +8($sp)     
  0022b140: sw     $v1, +0($sp)       
  0022b144: addiu  $a1, $sp, +0       
  0022b148: lui   $v1, 0x42be0000     
  0022b14c: sw     $v1, +4($sp)       
  0022b150: lwc1   $a0, +0($a1)       
  0022b154: lui   $v1, 0x43910000     
  0022b158: lwc1   $v0, +4($a1)       
  0022b15c: lwc1   $v1, +8($a1)       
  0022b160: fmove  $zero,$a0,$v1      
  0022b164: beq    $a3, $zero, +36       ; br -> 0x0022b18c
  0022b168: sll    $zero, $zero, +0   
  0022b16c: lui   $v1, 0x42dc0000     
  0022b170: lui   $a1, 0x3f000000     
  0022b174: fmove  $zero,$a0,$v1      
  0022b178: fmove  $zero,$a0,$a1      
  0022b17c: sll    $zero, $zero, +0   
  0022b180: f10.1  $a2,$s0,$zero      
  0022b184: f10.2  $at,$s0,$zero      
  0022b188: f10.0  $a1,$s0,$zero      
  0022b18c: swc1   $a0, +0($a0)       
  0022b190: swc1   $v0, +4($a0)       
  0022b194: swc1   $v1, +8($a0)       
  0022b198: jr     $ra                
  0022b19c: addiu  $sp, $sp, +224     
  0022b1a0: lui   $v1, 0x42dc0000     
  0022b1a4: sw     $v1, +0($a0)       
  0022b1a8: lui   $v1, 0x42d20000     
  0022b1ac: jr     $ra                
  0022b1b0: sw     $v1, +4($a0)       
  0022b1b4: sll    $zero, $zero, +0   
  0022b1b8: sll    $zero, $zero, +0   
  0022b1bc: sll    $zero, $zero, +0   

; globals: 0x006f35e0(x1), 0x431b0004(x1), 0x431b0008(x1), 0x431b0000(x1), 0x42be0004(x1), 0x42be0008(x1), 0x42be0000(x1), 0x006f35b8(x1)
