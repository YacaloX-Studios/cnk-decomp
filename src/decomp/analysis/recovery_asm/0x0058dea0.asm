; 0x0058dea0  FUN_0058dea0  size=3248  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=- ret=void calls=
; 812 words

  0058dea0: sltiu  $at, $a1, +7       
  0058dea4: beq    $at, $zero, +1784     ; br -> 0x0058e5a0
  0058dea8: sll    $a1, $zero, +2     
  0058deac: lui   $a1, 0x006c0000     
  0058deb0: addiu  $a1, $a1, +9152    
  0058deb4: addu   $a1, $v1, +0       
  0058deb8: lw     $v1, +0($v1)       
  0058debc: jr     $v1                
  0058dec0: sll    $zero, $zero, +0   
  0058dec4: lui   $v1, 0xff000000     
  0058dec8: and    $v1, $a2, +0       
  0058decc: srl    $v1, $zero, +24    
  0058ded0: regimm $v1, $zero, +16       ; br -> 0x0058dee4
  0058ded4: srl    $v1, $zero, +1     
  0058ded8: fmove  $zero,$a0,$v1      
  0058dedc: beq    $zero, $zero, +28     ; br -> 0x0058defc
  0058dee0: f14.20 $zero,$s4,$zero    
  0058dee4: andi   $v1, $v1, +1       
  0058dee8: or     $v1, $a1, +0       
  0058deec: fmove  $zero,$a0,$a1      
  0058def0: sll    $zero, $zero, +0   
  0058def4: f14.20 $zero,$s4,$zero    
  0058def8: f10.0  $at,$s0,$at        
  0058defc: lui   $a1, 0x437f0000     
  0058df00: lui   $v1, 0x00ff0000     
  0058df04: fmove  $zero,$a0,$a1      
  0058df08: and    $v1, $a2, +0       
  0058df0c: srl    $v1, $zero, +16    
  0058df10: f10.3  $at,$s0,$zero      
  0058df14: sll    $zero, $zero, +0   
  0058df18: sll    $zero, $zero, +0   
  0058df1c: regimm $v1, $zero, +16       ; br -> 0x0058df30
  0058df20: swc1   $zero, +8($a0)     
  0058df24: fmove  $zero,$a0,$v1      
  0058df28: beq    $zero, $zero, +32     ; br -> 0x0058df4c
  0058df2c: f14.20 $zero,$s4,$zero    
  0058df30: srl    $v1, $zero, +1     
  0058df34: andi   $v1, $v1, +1       
  0058df38: or     $v1, $a1, +0       
  0058df3c: fmove  $zero,$a0,$a1      
  0058df40: sll    $zero, $zero, +0   
  0058df44: f14.20 $zero,$s4,$zero    
  0058df48: f10.0  $at,$s0,$at        
  0058df4c: lui   $a1, 0x437f0000     
  0058df50: andi   $v1, $a2, -256     
  0058df54: fmove  $zero,$a0,$a1      
  0058df58: srl    $v1, $zero, +8     
  0058df5c: f10.3  $at,$s0,$zero      
  0058df60: sll    $zero, $zero, +0   
  0058df64: sll    $zero, $zero, +0   
  0058df68: regimm $v1, $zero, +16       ; br -> 0x0058df7c
  0058df6c: swc1   $zero, +4($a0)     
  0058df70: fmove  $zero,$a0,$v1      
  0058df74: beq    $zero, $zero, +32     ; br -> 0x0058df98
  0058df78: f14.20 $zero,$s4,$zero    
  0058df7c: srl    $v1, $zero, +1     
  0058df80: andi   $v1, $v1, +1       
  0058df84: or     $v1, $a1, +0       
  0058df88: fmove  $zero,$a0,$a1      
  0058df8c: sll    $zero, $zero, +0   
  0058df90: f14.20 $zero,$s4,$zero    
  0058df94: f10.0  $at,$s0,$at        
  0058df98: lui   $a1, 0x437f0000     
  0058df9c: andi   $v1, $a2, +255     
  0058dfa0: fmove  $zero,$a0,$a1      
  0058dfa4: sll    $zero, $zero, +0   
  0058dfa8: f10.3  $at,$s0,$zero      
  0058dfac: sll    $zero, $zero, +0   
  0058dfb0: sll    $zero, $zero, +0   
  0058dfb4: regimm $v1, $zero, +16       ; br -> 0x0058dfc8
  0058dfb8: swc1   $zero, +0($a0)     
  0058dfbc: fmove  $zero,$a0,$v1      
  0058dfc0: beq    $zero, $zero, +32     ; br -> 0x0058dfe4
  0058dfc4: f14.20 $zero,$s4,$zero    
  0058dfc8: srl    $v1, $zero, +1     
  0058dfcc: andi   $v1, $v1, +1       
  0058dfd0: or     $v1, $a1, +0       
  0058dfd4: fmove  $zero,$a0,$a1      
  0058dfd8: sll    $zero, $zero, +0   
  0058dfdc: f14.20 $zero,$s4,$zero    
  0058dfe0: f10.0  $at,$s0,$at        
  0058dfe4: lui   $v1, 0x437f0000     
  0058dfe8: fmove  $zero,$a0,$v1      
  0058dfec: sll    $zero, $zero, +0   
  0058dff0: f10.3  $at,$s0,$zero      
  0058dff4: sll    $zero, $zero, +0   
  0058dff8: sll    $zero, $zero, +0   
  0058dffc: beq    $zero, $zero, +1440   ; br -> 0x0058e5a0
  0058e000: swc1   $zero, +12($a0)    
  0058e004: lui   $v1, 0xff000000     
  0058e008: and    $v1, $a2, +0       
  0058e00c: srl    $v1, $zero, +24    
  0058e010: regimm $v1, $zero, +16       ; br -> 0x0058e024
  0058e014: srl    $v1, $zero, +1     
  0058e018: fmove  $zero,$a0,$v1      
  0058e01c: beq    $zero, $zero, +28     ; br -> 0x0058e03c
  0058e020: f14.20 $zero,$s4,$zero    
  0058e024: andi   $v1, $v1, +1       
  0058e028: or     $v1, $a1, +0       
  0058e02c: fmove  $zero,$a0,$a1      
  0058e030: sll    $zero, $zero, +0   
  0058e034: f14.20 $zero,$s4,$zero    
  0058e038: f10.0  $at,$s0,$at        
  0058e03c: lui   $a1, 0x437f0000     
  0058e040: lui   $v1, 0x00ff0000     
  0058e044: fmove  $zero,$a0,$a1      
  0058e048: and    $v1, $a2, +0       
  0058e04c: srl    $v1, $zero, +16    
  0058e050: f10.3  $at,$s0,$zero      
  0058e054: sll    $zero, $zero, +0   
  0058e058: sll    $zero, $zero, +0   
  0058e05c: regimm $v1, $zero, +16       ; br -> 0x0058e070
  0058e060: swc1   $zero, +0($a0)     
  0058e064: fmove  $zero,$a0,$v1      
  0058e068: beq    $zero, $zero, +32     ; br -> 0x0058e08c
  0058e06c: f14.20 $zero,$s4,$zero    
  0058e070: srl    $v1, $zero, +1     
  0058e074: andi   $v1, $v1, +1       
  0058e078: or     $v1, $a1, +0       
  0058e07c: fmove  $zero,$a0,$a1      
  0058e080: sll    $zero, $zero, +0   
  0058e084: f14.20 $zero,$s4,$zero    
  0058e088: f10.0  $at,$s0,$at        
  0058e08c: lui   $a1, 0x437f0000     
  0058e090: andi   $v1, $a2, -256     
  0058e094: fmove  $zero,$a0,$a1      
  0058e098: srl    $v1, $zero, +8     
  0058e09c: f10.3  $at,$s0,$zero      
  0058e0a0: sll    $zero, $zero, +0   
  0058e0a4: sll    $zero, $zero, +0   
  0058e0a8: regimm $v1, $zero, +16       ; br -> 0x0058e0bc
  0058e0ac: swc1   $zero, +4($a0)     
  0058e0b0: fmove  $zero,$a0,$v1      
  0058e0b4: beq    $zero, $zero, +32     ; br -> 0x0058e0d8
  0058e0b8: f14.20 $zero,$s4,$zero    
  0058e0bc: srl    $v1, $zero, +1     
  0058e0c0: andi   $v1, $v1, +1       
  0058e0c4: or     $v1, $a1, +0       
  0058e0c8: fmove  $zero,$a0,$a1      
  0058e0cc: sll    $zero, $zero, +0   
  0058e0d0: f14.20 $zero,$s4,$zero    
  0058e0d4: f10.0  $at,$s0,$at        
  0058e0d8: lui   $a1, 0x437f0000     
  0058e0dc: andi   $v1, $a2, +255     
  0058e0e0: fmove  $zero,$a0,$a1      
  0058e0e4: sll    $zero, $zero, +0   
  0058e0e8: f10.3  $at,$s0,$zero      
  0058e0ec: sll    $zero, $zero, +0   
  0058e0f0: sll    $zero, $zero, +0   
  0058e0f4: regimm $v1, $zero, +16       ; br -> 0x0058e108
  0058e0f8: swc1   $zero, +8($a0)     
  0058e0fc: fmove  $zero,$a0,$v1      
  0058e100: beq    $zero, $zero, +32     ; br -> 0x0058e124
  0058e104: f14.20 $zero,$s4,$zero    
  0058e108: srl    $v1, $zero, +1     
  0058e10c: andi   $v1, $v1, +1       
  0058e110: or     $v1, $a1, +0       
  0058e114: fmove  $zero,$a0,$a1      
  0058e118: sll    $zero, $zero, +0   
  0058e11c: f14.20 $zero,$s4,$zero    
  0058e120: f10.0  $at,$s0,$at        
  0058e124: lui   $v1, 0x437f0000     
  0058e128: fmove  $zero,$a0,$v1      
  0058e12c: sll    $zero, $zero, +0   
  0058e130: f10.3  $at,$s0,$zero      
  0058e134: sll    $zero, $zero, +0   
  0058e138: sll    $zero, $zero, +0   
  0058e13c: beq    $zero, $zero, +1120   ; br -> 0x0058e5a0
  0058e140: swc1   $zero, +12($a0)    
  0058e144: lui   $v1, 0x00ff0000     
  0058e148: and    $v1, $a2, +0       
  0058e14c: srl    $v1, $zero, +16    
  0058e150: regimm $v1, $zero, +16       ; br -> 0x0058e164
  0058e154: sw     $zero, +12($a0)    
  0058e158: fmove  $zero,$a0,$v1      
  0058e15c: beq    $zero, $zero, +32     ; br -> 0x0058e180
  0058e160: f14.20 $zero,$s4,$zero    
  0058e164: srl    $v1, $zero, +1     
  0058e168: andi   $v1, $v1, +1       
  0058e16c: or     $v1, $a1, +0       
  0058e170: fmove  $zero,$a0,$a1      
  0058e174: sll    $zero, $zero, +0   
  0058e178: f14.20 $zero,$s4,$zero    
  0058e17c: f10.0  $at,$s0,$at        
  0058e180: lui   $a1, 0x437f0000     
  0058e184: andi   $v1, $a2, -256     
  0058e188: fmove  $zero,$a0,$a1      
  0058e18c: srl    $v1, $zero, +8     
  0058e190: f10.3  $at,$s0,$zero      
  0058e194: sll    $zero, $zero, +0   
  0058e198: sll    $zero, $zero, +0   
  0058e19c: regimm $v1, $zero, +16       ; br -> 0x0058e1b0
  0058e1a0: swc1   $zero, +0($a0)     
  0058e1a4: fmove  $zero,$a0,$v1      
  0058e1a8: beq    $zero, $zero, +32     ; br -> 0x0058e1cc
  0058e1ac: f14.20 $zero,$s4,$zero    
  0058e1b0: srl    $v1, $zero, +1     
  0058e1b4: andi   $v1, $v1, +1       
  0058e1b8: or     $v1, $a1, +0       
  0058e1bc: fmove  $zero,$a0,$a1      
  0058e1c0: sll    $zero, $zero, +0   
  0058e1c4: f14.20 $zero,$s4,$zero    
  0058e1c8: f10.0  $at,$s0,$at        
  0058e1cc: lui   $a1, 0x437f0000     
  0058e1d0: andi   $v1, $a2, +255     
  0058e1d4: fmove  $zero,$a0,$a1      
  0058e1d8: sll    $zero, $zero, +0   
  0058e1dc: f10.3  $at,$s0,$zero      
  0058e1e0: sll    $zero, $zero, +0   
  0058e1e4: sll    $zero, $zero, +0   
  0058e1e8: regimm $v1, $zero, +16       ; br -> 0x0058e1fc
  0058e1ec: swc1   $zero, +4($a0)     
  0058e1f0: fmove  $zero,$a0,$v1      
  0058e1f4: beq    $zero, $zero, +32     ; br -> 0x0058e218
  0058e1f8: f14.20 $zero,$s4,$zero    
  0058e1fc: srl    $v1, $zero, +1     
  0058e200: andi   $v1, $v1, +1       
  0058e204: or     $v1, $a1, +0       
  0058e208: fmove  $zero,$a0,$a1      
  0058e20c: sll    $zero, $zero, +0   
  0058e210: f14.20 $zero,$s4,$zero    
  0058e214: f10.0  $at,$s0,$at        
  0058e218: lui   $v1, 0x437f0000     
  0058e21c: fmove  $zero,$a0,$v1      
  0058e220: sll    $zero, $zero, +0   
  0058e224: f10.3  $at,$s0,$zero      
  0058e228: sll    $zero, $zero, +0   
  0058e22c: sll    $zero, $zero, +0   
  0058e230: beq    $zero, $zero, +876    ; br -> 0x0058e5a0
  0058e234: swc1   $zero, +8($a0)     
  0058e238: lui   $v1, 0x00ff0000     
  0058e23c: and    $v1, $a2, +0       
  0058e240: srl    $v1, $zero, +16    
  0058e244: regimm $v1, $zero, +16       ; br -> 0x0058e258
  0058e248: sw     $zero, +12($a0)    
  0058e24c: fmove  $zero,$a0,$v1      
  0058e250: beq    $zero, $zero, +32     ; br -> 0x0058e274
  0058e254: f14.20 $zero,$s4,$zero    
  0058e258: srl    $v1, $zero, +1     
  0058e25c: andi   $v1, $v1, +1       
  0058e260: or     $v1, $a1, +0       
  0058e264: fmove  $zero,$a0,$a1      
  0058e268: sll    $zero, $zero, +0   
  0058e26c: f14.20 $zero,$s4,$zero    
  0058e270: f10.0  $at,$s0,$at        
  0058e274: lui   $a1, 0x437f0000     
  0058e278: andi   $v1, $a2, -256     
  0058e27c: fmove  $zero,$a0,$a1      
  0058e280: srl    $v1, $zero, +8     
  0058e284: f10.3  $at,$s0,$zero      
  0058e288: sll    $zero, $zero, +0   
  0058e28c: sll    $zero, $zero, +0   
  0058e290: regimm $v1, $zero, +16       ; br -> 0x0058e2a4
  0058e294: swc1   $zero, +8($a0)     
  0058e298: fmove  $zero,$a0,$v1      
  0058e29c: beq    $zero, $zero, +32     ; br -> 0x0058e2c0
  0058e2a0: f14.20 $zero,$s4,$zero    
  0058e2a4: srl    $v1, $zero, +1     
  0058e2a8: andi   $v1, $v1, +1       
  0058e2ac: or     $v1, $a1, +0       
  0058e2b0: fmove  $zero,$a0,$a1      
  0058e2b4: sll    $zero, $zero, +0   
  0058e2b8: f14.20 $zero,$s4,$zero    
  0058e2bc: f10.0  $at,$s0,$at        
  0058e2c0: lui   $a1, 0x437f0000     
  0058e2c4: andi   $v1, $a2, +255     
  0058e2c8: fmove  $zero,$a0,$a1      
  0058e2cc: sll    $zero, $zero, +0   
  0058e2d0: f10.3  $at,$s0,$zero      
  0058e2d4: sll    $zero, $zero, +0   
  0058e2d8: sll    $zero, $zero, +0   
  0058e2dc: regimm $v1, $zero, +16       ; br -> 0x0058e2f0
  0058e2e0: swc1   $zero, +4($a0)     
  0058e2e4: fmove  $zero,$a0,$v1      
  0058e2e8: beq    $zero, $zero, +32     ; br -> 0x0058e30c
  0058e2ec: f14.20 $zero,$s4,$zero    
  0058e2f0: srl    $v1, $zero, +1     
  0058e2f4: andi   $v1, $v1, +1       
  0058e2f8: or     $v1, $a1, +0       
  0058e2fc: fmove  $zero,$a0,$a1      
  0058e300: sll    $zero, $zero, +0   
  0058e304: f14.20 $zero,$s4,$zero    
  0058e308: f10.0  $at,$s0,$at        
  0058e30c: lui   $v1, 0x437f0000     
  0058e310: fmove  $zero,$a0,$v1      
  0058e314: sll    $zero, $zero, +0   
  0058e318: f10.3  $at,$s0,$zero      
  0058e31c: sll    $zero, $zero, +0   
  0058e320: sll    $zero, $zero, +0   
  0058e324: beq    $zero, $zero, +632    ; br -> 0x0058e5a0
  0058e328: swc1   $zero, +0($a0)     
  0058e32c: lui   $v1, 0xff000000     
  0058e330: and    $v1, $a2, +0       
  0058e334: srl    $v1, $zero, +24    
  0058e338: regimm $v1, $zero, +16       ; br -> 0x0058e34c
  0058e33c: srl    $v1, $zero, +1     
  0058e340: fmove  $zero,$a0,$v1      
  0058e344: beq    $zero, $zero, +28     ; br -> 0x0058e364
  0058e348: f14.20 $zero,$s4,$zero    
  0058e34c: andi   $v1, $v1, +1       
  0058e350: or     $v1, $a1, +0       
  0058e354: fmove  $zero,$a0,$a1      
  0058e358: sll    $zero, $zero, +0   
  0058e35c: f14.20 $zero,$s4,$zero    
  0058e360: f10.0  $at,$s0,$at        
  0058e364: lui   $a1, 0x437f0000     
  0058e368: lui   $v1, 0x00ff0000     
  0058e36c: fmove  $zero,$a0,$a1      
  0058e370: and    $v1, $a2, +0       
  0058e374: srl    $v1, $zero, +16    
  0058e378: f10.3  $at,$s0,$zero      
  0058e37c: sll    $zero, $zero, +0   
  0058e380: sll    $zero, $zero, +0   
  0058e384: regimm $v1, $zero, +16       ; br -> 0x0058e398
  0058e388: swc1   $zero, +12($a0)    
  0058e38c: fmove  $zero,$a0,$v1      
  0058e390: beq    $zero, $zero, +32     ; br -> 0x0058e3b4
  0058e394: f14.20 $zero,$s4,$zero    
  0058e398: srl    $v1, $zero, +1     
  0058e39c: andi   $v1, $v1, +1       
  0058e3a0: or     $v1, $a1, +0       
  0058e3a4: fmove  $zero,$a0,$a1      
  0058e3a8: sll    $zero, $zero, +0   
  0058e3ac: f14.20 $zero,$s4,$zero    
  0058e3b0: f10.0  $at,$s0,$at        
  0058e3b4: lui   $a1, 0x437f0000     
  0058e3b8: andi   $v1, $a2, -256     
  0058e3bc: fmove  $zero,$a0,$a1      
  0058e3c0: srl    $v1, $zero, +8     
  0058e3c4: f10.3  $at,$s0,$zero      
  0058e3c8: sll    $zero, $zero, +0   
  0058e3cc: sll    $zero, $zero, +0   
  0058e3d0: regimm $v1, $zero, +16       ; br -> 0x0058e3e4
  0058e3d4: swc1   $zero, +8($a0)     
  0058e3d8: fmove  $zero,$a0,$v1      
  0058e3dc: beq    $zero, $zero, +32     ; br -> 0x0058e400
  0058e3e0: f14.20 $zero,$s4,$zero    
  0058e3e4: srl    $v1, $zero, +1     
  0058e3e8: andi   $v1, $v1, +1       
  0058e3ec: or     $v1, $a1, +0       
  0058e3f0: fmove  $zero,$a0,$a1      
  0058e3f4: sll    $zero, $zero, +0   
  0058e3f8: f14.20 $zero,$s4,$zero    
  0058e3fc: f10.0  $at,$s0,$at        
  0058e400: lui   $a1, 0x437f0000     
  0058e404: andi   $v1, $a2, +255     
  0058e408: fmove  $zero,$a0,$a1      
  0058e40c: sll    $zero, $zero, +0   
  0058e410: f10.3  $at,$s0,$zero      
  0058e414: sll    $zero, $zero, +0   
  0058e418: sll    $zero, $zero, +0   
  0058e41c: regimm $v1, $zero, +16       ; br -> 0x0058e430
  0058e420: swc1   $zero, +4($a0)     
  0058e424: fmove  $zero,$a0,$v1      
  0058e428: beq    $zero, $zero, +32     ; br -> 0x0058e44c
  0058e42c: f14.20 $zero,$s4,$zero    
  0058e430: srl    $v1, $zero, +1     
  0058e434: andi   $v1, $v1, +1       
  0058e438: or     $v1, $a1, +0       
  0058e43c: fmove  $zero,$a0,$a1      
  0058e440: sll    $zero, $zero, +0   
  0058e444: f14.20 $zero,$s4,$zero    
  0058e448: f10.0  $at,$s0,$at        
  0058e44c: lui   $v1, 0x437f0000     
  0058e450: fmove  $zero,$a0,$v1      
  0058e454: sll    $zero, $zero, +0   
  0058e458: f10.3  $at,$s0,$zero      
  0058e45c: sll    $zero, $zero, +0   
  0058e460: sll    $zero, $zero, +0   
  0058e464: beq    $zero, $zero, +312    ; br -> 0x0058e5a0
  0058e468: swc1   $zero, +0($a0)     
  0058e46c: lui   $v1, 0xff000000     
  0058e470: and    $v1, $a2, +0       
  0058e474: srl    $v1, $zero, +24    
  0058e478: regimm $v1, $zero, +16       ; br -> 0x0058e48c
  0058e47c: srl    $v1, $zero, +1     
  0058e480: fmove  $zero,$a0,$v1      
  0058e484: beq    $zero, $zero, +28     ; br -> 0x0058e4a4
  0058e488: f14.20 $zero,$s4,$zero    
  0058e48c: andi   $v1, $v1, +1       
  0058e490: or     $v1, $a1, +0       
  0058e494: fmove  $zero,$a0,$a1      
  0058e498: sll    $zero, $zero, +0   
  0058e49c: f14.20 $zero,$s4,$zero    
  0058e4a0: f10.0  $at,$s0,$at        
  0058e4a4: lui   $a1, 0x437f0000     
  0058e4a8: lui   $v1, 0x00ff0000     
  0058e4ac: fmove  $zero,$a0,$a1      
  0058e4b0: and    $v1, $a2, +0       
  0058e4b4: srl    $v1, $zero, +16    
  0058e4b8: f10.3  $at,$s0,$zero      
  0058e4bc: sll    $zero, $zero, +0   
  0058e4c0: sll    $zero, $zero, +0   
  0058e4c4: regimm $v1, $zero, +16       ; br -> 0x0058e4d8
  0058e4c8: swc1   $zero, +12($a0)    
  0058e4cc: fmove  $zero,$a0,$v1      
  0058e4d0: beq    $zero, $zero, +32     ; br -> 0x0058e4f4
  0058e4d4: f14.20 $zero,$s4,$zero    
  0058e4d8: srl    $v1, $zero, +1     
  0058e4dc: andi   $v1, $v1, +1       
  0058e4e0: or     $v1, $a1, +0       
  0058e4e4: fmove  $zero,$a0,$a1      
  0058e4e8: sll    $zero, $zero, +0   
  0058e4ec: f14.20 $zero,$s4,$zero    
  0058e4f0: f10.0  $at,$s0,$at        
  0058e4f4: lui   $a1, 0x437f0000     
  0058e4f8: andi   $v1, $a2, -256     
  0058e4fc: fmove  $zero,$a0,$a1      
  0058e500: srl    $v1, $zero, +8     
  0058e504: f10.3  $at,$s0,$zero      
  0058e508: sll    $zero, $zero, +0   
  0058e50c: sll    $zero, $zero, +0   
  0058e510: regimm $v1, $zero, +16       ; br -> 0x0058e524
  0058e514: swc1   $zero, +0($a0)     
  0058e518: fmove  $zero,$a0,$v1      
  0058e51c: beq    $zero, $zero, +32     ; br -> 0x0058e540
  0058e520: f14.20 $zero,$s4,$zero    
  0058e524: srl    $v1, $zero, +1     
  0058e528: andi   $v1, $v1, +1       
  0058e52c: or     $v1, $a1, +0       
  0058e530: fmove  $zero,$a0,$a1      
  0058e534: sll    $zero, $zero, +0   
  0058e538: f14.20 $zero,$s4,$zero    
  0058e53c: f10.0  $at,$s0,$at        
  0058e540: lui   $a1, 0x437f0000     
  0058e544: andi   $v1, $a2, +255     
  0058e548: fmove  $zero,$a0,$a1      
  0058e54c: sll    $zero, $zero, +0   
  0058e550: f10.3  $at,$s0,$zero      
  0058e554: sll    $zero, $zero, +0   
  0058e558: sll    $zero, $zero, +0   
  0058e55c: regimm $v1, $zero, +16       ; br -> 0x0058e570
  0058e560: swc1   $zero, +4($a0)     
  0058e564: fmove  $zero,$a0,$v1      
  0058e568: beq    $zero, $zero, +32     ; br -> 0x0058e58c
  0058e56c: f14.20 $zero,$s4,$zero    
  0058e570: srl    $v1, $zero, +1     
  0058e574: andi   $v1, $v1, +1       
  0058e578: or     $v1, $a1, +0       
  0058e57c: fmove  $zero,$a0,$a1      
  0058e580: sll    $zero, $zero, +0   
  0058e584: f14.20 $zero,$s4,$zero    
  0058e588: f10.0  $at,$s0,$at        
  0058e58c: lui   $v1, 0x437f0000     
  0058e590: fmove  $zero,$a0,$v1      
  0058e594: sll    $zero, $zero, +0   
  0058e598: f10.3  $at,$s0,$zero      
  0058e59c: swc1   $zero, +8($a0)     
  0058e5a0: jr     $ra                
  0058e5a4: sll    $zero, $zero, +0   
  0058e5a8: sll    $zero, $zero, +0   
  0058e5ac: sll    $zero, $zero, +0   
  0058e5b0: lwc1   $zero, +0($a1)        ; GLOBAL 0x437f0000
  0058e5b4: lwc1   $a3, +0($a2)       
  0058e5b8: lwc1   $v1, +4($a1)          ; GLOBAL 0x437f0004
  0058e5bc: lwc1   $a2, +4($a2)       
  0058e5c0: lwc1   $v0, +8($a1)          ; GLOBAL 0x437f0008
  0058e5c4: lwc1   $a1, +8($a2)       
  0058e5c8: lwc1   $at, +12($a1)         ; GLOBAL 0x437f000c
  0058e5cc: f10.1  $a3,$s0,$zero      
  0058e5d0: f10.2  $a3,$s0,$t4        
  0058e5d4: f10.1  $a2,$s0,$v1        
  0058e5d8: lwc1   $a0, +12($a2)      
  0058e5dc: f10.0  $zero,$s0,$a3      
  0058e5e0: f10.1  $a1,$s0,$v0        
  0058e5e4: f10.1  $a0,$s0,$at        
  0058e5e8: f10.2  $a2,$s0,$t4        
  0058e5ec: swc1   $zero, +0($a0)     
  0058e5f0: f10.0  $v1,$s0,$a2        
  0058e5f4: f10.2  $a1,$s0,$t4        
  0058e5f8: swc1   $zero, +4($a0)     
  0058e5fc: f10.0  $v0,$s0,$a1        
  0058e600: f10.2  $a0,$s0,$t4        
  0058e604: swc1   $zero, +8($a0)     
  0058e608: f10.0  $at,$s0,$a0        
  0058e60c: jr     $ra                
  0058e610: swc1   $zero, +12($a0)    
  0058e614: sll    $zero, $zero, +0   
  0058e618: sll    $zero, $zero, +0   
  0058e61c: sll    $zero, $zero, +0   
  0058e620: lwc1   $a1, +8($a1)          ; GLOBAL 0x437f0008
  0058e624: lwc1   $at, +32($a2)      
  0058e628: lwc1   $a3, +0($a1)          ; GLOBAL 0x437f0000
  0058e62c: lwc1   $v1, +0($a2)       
  0058e630: lwc1   $a2, +4($a1)          ; GLOBAL 0x437f0004
  0058e634: lwc1   $v0, +16($a2)      
  0058e638: lwc1   $a0, +12($a1)         ; GLOBAL 0x437f000c
  0058e63c: lwc1   $zero, +48($a2)    
  0058e640: f10.2  $a1,$s0,$at        
  0058e644: f10.1a $a3,$s0,$v1        
  0058e648: f10.1c $a2,$s0,$v0        
  0058e64c: f10.18 $at,$s0,$v0        
  0058e650: f10.1c $a0,$s0,$zero      
  0058e654: swc1   $zero, +0($a0)     
  0058e658: lwc1   $at, +36($a2)      
  0058e65c: lwc1   $v1, +4($a2)       
  0058e660: lwc1   $v0, +20($a2)      
  0058e664: lwc1   $zero, +52($a2)    
  0058e668: f10.2  $a1,$s0,$at        
  0058e66c: f10.1a $a3,$s0,$v1        
  0058e670: f10.1c $a2,$s0,$v0        
  0058e674: f10.18 $at,$s0,$v0        
  0058e678: f10.1c $a0,$s0,$zero      
  0058e67c: swc1   $zero, +4($a0)     
  0058e680: lwc1   $at, +40($a2)      
  0058e684: lwc1   $v1, +8($a2)       
  0058e688: lwc1   $v0, +24($a2)      
  0058e68c: lwc1   $zero, +56($a2)    
  0058e690: f10.2  $a1,$s0,$at        
  0058e694: f10.1a $a3,$s0,$v1        
  0058e698: f10.1c $a2,$s0,$v0        
  0058e69c: f10.18 $at,$s0,$v0        
  0058e6a0: f10.1c $a0,$s0,$zero      
  0058e6a4: swc1   $zero, +8($a0)     
  0058e6a8: lwc1   $at, +44($a2)      
  0058e6ac: lwc1   $v1, +12($a2)      
  0058e6b0: lwc1   $v0, +28($a2)      
  0058e6b4: lwc1   $zero, +60($a2)    
  0058e6b8: f10.2  $a1,$s0,$at        
  0058e6bc: f10.1a $a3,$s0,$v1        
  0058e6c0: f10.1c $a2,$s0,$v0        
  0058e6c4: f10.18 $at,$s0,$v0        
  0058e6c8: f10.1c $a0,$s0,$zero      
  0058e6cc: jr     $ra                
  0058e6d0: swc1   $zero, +12($a0)    
  0058e6d4: sll    $zero, $zero, +0   
  0058e6d8: sll    $zero, $zero, +0   
  0058e6dc: sll    $zero, $zero, +0   
  0058e6e0: lwc1   $a2, +0($a1)          ; GLOBAL 0x437f0000
  0058e6e4: lwc1   $v1, +0($a2)       
  0058e6e8: lwc1   $a1, +4($a1)          ; GLOBAL 0x437f0004
  0058e6ec: lwc1   $v0, +16($a2)      
  0058e6f0: lwc1   $a0, +8($a1)          ; GLOBAL 0x437f0008
  0058e6f4: lwc1   $at, +32($a2)      
  0058e6f8: lwc1   $zero, +48($a2)    
  0058e6fc: f10.2  $a2,$s0,$v1        
  0058e700: f10.2  $a1,$s0,$v0        
  0058e704: f10.18 $v1,$s0,$v0        
  0058e708: f10.1c $a0,$s0,$at        
  0058e70c: f10.0  $zero,$s0,$at      
  0058e710: swc1   $zero, +0($a0)     
  0058e714: lwc1   $v1, +4($a2)       
  0058e718: lwc1   $v0, +20($a2)      
  0058e71c: lwc1   $at, +36($a2)      
  0058e720: lwc1   $zero, +52($a2)    
  0058e724: f10.2  $a2,$s0,$v1        
  0058e728: f10.2  $a1,$s0,$v0        
  0058e72c: f10.18 $v1,$s0,$v0        
  0058e730: f10.1c $a0,$s0,$at        
  0058e734: f10.0  $zero,$s0,$at      
  0058e738: swc1   $zero, +4($a0)     
  0058e73c: lwc1   $v1, +8($a2)       
  0058e740: lwc1   $v0, +24($a2)      
  0058e744: lwc1   $at, +40($a2)      
  0058e748: lwc1   $zero, +56($a2)    
  0058e74c: f10.2  $a2,$s0,$v1        
  0058e750: f10.2  $a1,$s0,$v0        
  0058e754: f10.18 $v1,$s0,$v0        
  0058e758: f10.1c $a0,$s0,$at        
  0058e75c: f10.0  $zero,$s0,$at      
  0058e760: swc1   $zero, +8($a0)     
  0058e764: lwc1   $v1, +12($a2)      
  0058e768: lwc1   $v0, +28($a2)      
  0058e76c: lwc1   $at, +44($a2)      
  0058e770: lwc1   $zero, +60($a2)    
  0058e774: f10.2  $a2,$s0,$v1        
  0058e778: f10.2  $a1,$s0,$v0        
  0058e77c: f10.18 $v1,$s0,$v0        
  0058e780: f10.1c $a0,$s0,$at        
  0058e784: f10.0  $zero,$s0,$at      
  0058e788: jr     $ra                
  0058e78c: swc1   $zero, +12($a0)    
  0058e790: lui   $at, 0x00720000     
  0058e794: jr     $ra                
  0058e798: lw     $v0, +31408($at)      ; GLOBAL 0x00727ab0
  0058e79c: sll    $zero, $zero, +0   
  0058e7a0: lui   $at, 0x00720000     
  0058e7a4: jr     $ra                
  0058e7a8: lw     $v0, +31416($at)      ; GLOBAL 0x00727ab8
  0058e7ac: sll    $zero, $zero, +0   
  0058e7b0: lui   $at, 0x00720000     
  0058e7b4: jr     $ra                
  0058e7b8: lw     $v0, +31424($at)      ; GLOBAL 0x00727ac0
  0058e7bc: sll    $zero, $zero, +0   
  0058e7c0: lui   $at, 0x00720000     
  0058e7c4: jr     $ra                
  0058e7c8: lw     $v0, +31432($at)      ; GLOBAL 0x00727ac8
  0058e7cc: sll    $zero, $zero, +0   
  0058e7d0: lui   $at, 0x00720000     
  0058e7d4: jr     $ra                
  0058e7d8: lw     $v0, +31440($at)      ; GLOBAL 0x00727ad0
  0058e7dc: sll    $zero, $zero, +0   
  0058e7e0: lui   $at, 0x00720000     
  0058e7e4: jr     $ra                
  0058e7e8: lw     $v0, +31448($at)      ; GLOBAL 0x00727ad8
  0058e7ec: sll    $zero, $zero, +0   
  0058e7f0: lui   $at, 0x00720000     
  0058e7f4: jr     $ra                
  0058e7f8: lw     $v0, +31464($at)      ; GLOBAL 0x00727ae8
  0058e7fc: sll    $zero, $zero, +0   
  0058e800: lui   $at, 0x00720000     
  0058e804: jr     $ra                
  0058e808: lw     $v0, +31472($at)      ; GLOBAL 0x00727af0
  0058e80c: sll    $zero, $zero, +0   
  0058e810: lui   $at, 0x00720000     
  0058e814: jr     $ra                
  0058e818: lw     $v0, +31480($at)      ; GLOBAL 0x00727af8
  0058e81c: sll    $zero, $zero, +0   
  0058e820: lui   $at, 0x00720000     
  0058e824: jr     $ra                
  0058e828: lw     $v0, +31488($at)      ; GLOBAL 0x00727b00
  0058e82c: sll    $zero, $zero, +0   
  0058e830: lui   $at, 0x00720000     
  0058e834: jr     $ra                
  0058e838: lw     $v0, +31592($at)      ; GLOBAL 0x00727b68
  0058e83c: sll    $zero, $zero, +0   
  0058e840: lui   $at, 0x00720000     
  0058e844: jr     $ra                
  0058e848: lw     $v0, +31600($at)      ; GLOBAL 0x00727b70
  0058e84c: sll    $zero, $zero, +0   
  0058e850: lui   $at, 0x00720000     
  0058e854: jr     $ra                
  0058e858: lw     $v0, +31608($at)      ; GLOBAL 0x00727b78
  0058e85c: sll    $zero, $zero, +0   
  0058e860: lui   $at, 0x00720000     
  0058e864: jr     $ra                
  0058e868: lw     $v0, +31616($at)      ; GLOBAL 0x00727b80
  0058e86c: sll    $zero, $zero, +0   
  0058e870: lui   $at, 0x00720000     
  0058e874: jr     $ra                
  0058e878: lw     $v0, +31832($at)      ; GLOBAL 0x00727c58
  0058e87c: sll    $zero, $zero, +0   
  0058e880: lui   $at, 0x00720000     
  0058e884: jr     $ra                
  0058e888: lw     $v0, +31800($at)      ; GLOBAL 0x00727c38
  0058e88c: sll    $zero, $zero, +0   
  0058e890: lui   $at, 0x00720000     
  0058e894: jr     $ra                
  0058e898: lw     $v0, +31784($at)      ; GLOBAL 0x00727c28
  0058e89c: sll    $zero, $zero, +0   
  0058e8a0: lui   $at, 0x00720000     
  0058e8a4: jr     $ra                
  0058e8a8: lw     $v0, +31768($at)      ; GLOBAL 0x00727c18
  0058e8ac: sll    $zero, $zero, +0   
  0058e8b0: lui   $at, 0x00720000     
  0058e8b4: jr     $ra                
  0058e8b8: lw     $v0, +31752($at)      ; GLOBAL 0x00727c08
  0058e8bc: sll    $zero, $zero, +0   
  0058e8c0: lui   $at, 0x00720000     
  0058e8c4: jr     $ra                
  0058e8c8: lw     $v0, +31736($at)      ; GLOBAL 0x00727bf8
  0058e8cc: sll    $zero, $zero, +0   
  0058e8d0: lui   $at, 0x00720000     
  0058e8d4: jr     $ra                
  0058e8d8: lw     $v0, +31728($at)      ; GLOBAL 0x00727bf0
  0058e8dc: sll    $zero, $zero, +0   
  0058e8e0: lui   $at, 0x00720000     
  0058e8e4: jr     $ra                
  0058e8e8: lw     $v0, +31720($at)      ; GLOBAL 0x00727be8
  0058e8ec: sll    $zero, $zero, +0   
  0058e8f0: lui   $at, 0x00720000     
  0058e8f4: jr     $ra                
  0058e8f8: lw     $v0, +31712($at)      ; GLOBAL 0x00727be0
  0058e8fc: sll    $zero, $zero, +0   
  0058e900: lui   $at, 0x00720000     
  0058e904: jr     $ra                
  0058e908: lw     $v0, +31704($at)      ; GLOBAL 0x00727bd8
  0058e90c: sll    $zero, $zero, +0   
  0058e910: lui   $at, 0x00720000     
  0058e914: jr     $ra                
  0058e918: lw     $v0, +31696($at)      ; GLOBAL 0x00727bd0
  0058e91c: sll    $zero, $zero, +0   
  0058e920: lui   $at, 0x00720000     
  0058e924: jr     $ra                
  0058e928: lw     $v0, +31688($at)      ; GLOBAL 0x00727bc8
  0058e92c: sll    $zero, $zero, +0   
  0058e930: lui   $at, 0x00720000     
  0058e934: jr     $ra                
  0058e938: lw     $v0, +31680($at)      ; GLOBAL 0x00727bc0
  0058e93c: sll    $zero, $zero, +0   
  0058e940: lui   $at, 0x00720000     
  0058e944: jr     $ra                
  0058e948: lw     $v0, +31672($at)      ; GLOBAL 0x00727bb8
  0058e94c: sll    $zero, $zero, +0   
  0058e950: lui   $at, 0x00720000     
  0058e954: jr     $ra                
  0058e958: lw     $v0, +31664($at)      ; GLOBAL 0x00727bb0
  0058e95c: sll    $zero, $zero, +0   
  0058e960: lui   $at, 0x00720000     
  0058e964: jr     $ra                
  0058e968: lw     $v0, +31656($at)      ; GLOBAL 0x00727ba8
  0058e96c: sll    $zero, $zero, +0   
  0058e970: lui   $at, 0x00720000     
  0058e974: jr     $ra                
  0058e978: lw     $v0, +31648($at)      ; GLOBAL 0x00727ba0
  0058e97c: sll    $zero, $zero, +0   
  0058e980: lui   $at, 0x00720000     
  0058e984: jr     $ra                
  0058e988: lw     $v0, +31640($at)      ; GLOBAL 0x00727b98
  0058e98c: sll    $zero, $zero, +0   
  0058e990: lui   $at, 0x00720000     
  0058e994: jr     $ra                
  0058e998: lw     $v0, +31632($at)      ; GLOBAL 0x00727b90
  0058e99c: sll    $zero, $zero, +0   
  0058e9a0: lui   $at, 0x00720000     
  0058e9a4: jr     $ra                
  0058e9a8: lw     $v0, +31528($at)      ; GLOBAL 0x00727b28
  0058e9ac: sll    $zero, $zero, +0   
  0058e9b0: lui   $at, 0x00720000     
  0058e9b4: jr     $ra                
  0058e9b8: lw     $v0, +31520($at)      ; GLOBAL 0x00727b20
  0058e9bc: sll    $zero, $zero, +0   
  0058e9c0: lui   $at, 0x00720000     
  0058e9c4: jr     $ra                
  0058e9c8: lw     $v0, +31496($at)      ; GLOBAL 0x00727b08
  0058e9cc: sll    $zero, $zero, +0   
  0058e9d0: lui   $at, 0x00720000     
  0058e9d4: jr     $ra                
  0058e9d8: lw     $v0, +31400($at)      ; GLOBAL 0x00727aa8
  0058e9dc: sll    $zero, $zero, +0   
  0058e9e0: lui   $at, 0x00720000     
  0058e9e4: jr     $ra                
  0058e9e8: lw     $v0, +31392($at)      ; GLOBAL 0x00727aa0
  0058e9ec: sll    $zero, $zero, +0   
  0058e9f0: lui   $at, 0x00720000     
  0058e9f4: jr     $ra                
  0058e9f8: lw     $v0, +31384($at)      ; GLOBAL 0x00727a98
  0058e9fc: sll    $zero, $zero, +0   
  0058ea00: jr     $ra                
  0058ea04: addiu  $v0, $zero, +64    
  0058ea08: sll    $zero, $zero, +0   
  0058ea0c: sll    $zero, $zero, +0   
  0058ea10: jr     $ra                
  0058ea14: addiu  $v0, $zero, +16    
  0058ea18: sll    $zero, $zero, +0   
  0058ea1c: sll    $zero, $zero, +0   
  0058ea20: jr     $ra                
  0058ea24: addiu  $v0, $zero, +4     
  0058ea28: sll    $zero, $zero, +0   
  0058ea2c: sll    $zero, $zero, +0   
  0058ea30: jr     $ra                
  0058ea34: addiu  $v0, $zero, +16    
  0058ea38: sll    $zero, $zero, +0   
  0058ea3c: sll    $zero, $zero, +0   
  0058ea40: jr     $ra                
  0058ea44: addiu  $v0, $zero, +8     
  0058ea48: sll    $zero, $zero, +0   
  0058ea4c: sll    $zero, $zero, +0   
  0058ea50: jr     $ra                
  0058ea54: addiu  $v0, $zero, +4     
  0058ea58: sll    $zero, $zero, +0   
  0058ea5c: sll    $zero, $zero, +0   
  0058ea60: jr     $ra                
  0058ea64: addiu  $v0, $zero, +4     
  0058ea68: sll    $zero, $zero, +0   
  0058ea6c: sll    $zero, $zero, +0   
  0058ea70: jr     $ra                
  0058ea74: addiu  $v0, $zero, +4     
  0058ea78: sll    $zero, $zero, +0   
  0058ea7c: sll    $zero, $zero, +0   
  0058ea80: jr     $ra                
  0058ea84: addiu  $v0, $zero, +4     
  0058ea88: sll    $zero, $zero, +0   
  0058ea8c: sll    $zero, $zero, +0   
  0058ea90: jr     $ra                
  0058ea94: addiu  $v0, $zero, +4     
  0058ea98: sll    $zero, $zero, +0   
  0058ea9c: sll    $zero, $zero, +0   
  0058eaa0: jr     $ra                
  0058eaa4: addiu  $v0, $zero, +4     
  0058eaa8: sll    $zero, $zero, +0   
  0058eaac: sll    $zero, $zero, +0   
  0058eab0: jr     $ra                
  0058eab4: addiu  $v0, $zero, +4     
  0058eab8: sll    $zero, $zero, +0   
  0058eabc: sll    $zero, $zero, +0   
  0058eac0: jr     $ra                
  0058eac4: addiu  $v0, $zero, +4     
  0058eac8: sll    $zero, $zero, +0   
  0058eacc: sll    $zero, $zero, +0   
  0058ead0: jr     $ra                
  0058ead4: addiu  $v0, $zero, +4     
  0058ead8: sll    $zero, $zero, +0   
  0058eadc: sll    $zero, $zero, +0   
  0058eae0: jr     $ra                
  0058eae4: addiu  $v0, $zero, +4     
  0058eae8: sll    $zero, $zero, +0   
  0058eaec: sll    $zero, $zero, +0   
  0058eaf0: jr     $ra                
  0058eaf4: addiu  $v0, $zero, +4     
  0058eaf8: sll    $zero, $zero, +0   
  0058eafc: sll    $zero, $zero, +0   
  0058eb00: jr     $ra                
  0058eb04: addiu  $v0, $zero, +4     
  0058eb08: sll    $zero, $zero, +0   
  0058eb0c: sll    $zero, $zero, +0   
  0058eb10: lui   $at, 0x00720000     
  0058eb14: jr     $ra                
  0058eb18: lw     $v0, +31736($at)      ; GLOBAL 0x00727bf8
  0058eb1c: sll    $zero, $zero, +0   
  0058eb20: lui   $at, 0x00720000     
  0058eb24: jr     $ra                
  0058eb28: lw     $v0, +31816($at)      ; GLOBAL 0x00727c48
  0058eb2c: sll    $zero, $zero, +0   
  0058eb30: lui   $at, 0x00720000     
  0058eb34: jr     $ra                
  0058eb38: lw     $v0, +31528($at)      ; GLOBAL 0x00727b28
  0058eb3c: sll    $zero, $zero, +0   
  0058eb40: lui   $at, 0x00720000     
  0058eb44: jr     $ra                
  0058eb48: lw     $v0, +31376($at)      ; GLOBAL 0x00727a90
  0058eb4c: sll    $zero, $zero, +0   

; globals: 0x437f0000(x3), 0x437f0004(x3), 0x437f0008(x3), 0x437f000c(x2), 0x00727bf8(x2), 0x00727b28(x2), 0x00727ab0(x1), 0x00727ab8(x1), 0x00727ac0(x1), 0x00727ac8(x1)
