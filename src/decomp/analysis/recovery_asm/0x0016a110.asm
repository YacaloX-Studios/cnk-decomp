; 0x0016a110  FUN_0016a110  size=352  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=- ret=ptr calls=
; 88 words

  0016a110: addiu  $sp, $sp, -64      
  0016a114: lw     $a1, +120($a0)     
  0016a118: lui   $v1, 0x35060000     
  0016a11c: ori    $v1, $v1, +14269   
  0016a120: fmove  $zero,$a0,$v1      
  0016a124: lwc1   $at, +504($a0)     
  0016a128: lw     $v1, +44($a1)      
  0016a12c: f10.34 $at,$s0,$zero      
  0016a130: f8.30  $zero,$t0,$at      
  0016a134: lw     $v1, +0($v1)          ; GLOBAL 0x35060000
  0016a138: lwc1   $v0, +64($v1)         ; GLOBAL 0x35060040
  0016a13c: addiu  $a2, $sp, +52      
  0016a140: lwc1   $at, +68($v1)         ; GLOBAL 0x35060044
  0016a144: addiu  $a1, $sp, +56      
  0016a148: lwc1   $zero, +72($v1)       ; GLOBAL 0x35060048
  0016a14c: swc1   $v0, +16($sp)      
  0016a150: swc1   $v0, +48($sp)      
  0016a154: swc1   $at, +0($a2)       
  0016a158: swc1   $at, +20($sp)      
  0016a15c: swc1   $zero, +0($a1)     
  0016a160: swc1   $zero, +24($sp)    
  0016a164: lwc1   $v1, +480($a0)     
  0016a168: lwc1   $at, +0($a2)       
  0016a16c: lwc1   $zero, +0($a1)     
  0016a170: lwc1   $v0, +48($sp)      
  0016a174: f10.2  $at,$s0,$v1        
  0016a178: swc1   $at, +0($a2)       
  0016a17c: f10.2  $v0,$s0,$v1        
  0016a180: f10.2  $zero,$s0,$v1      
  0016a184: swc1   $zero, +0($a1)     
  0016a188: lwc1   $a0, +52($sp)      
  0016a18c: lwc1   $v1, +56($sp)      
  0016a190: f10.2  $a1,$s0,$a1        
  0016a194: f10.2  $a0,$s0,$a0        
  0016a198: f10.18 $at,$s0,$zero      
  0016a19c: f10.1c $v1,$s0,$v1        
  0016a1a0: swc1   $zero, +484($a0)   
  0016a1a4: lwc1   $v0, +16($a0)      
  0016a1a8: lwc1   $at, +20($a0)      
  0016a1ac: lwc1   $zero, +24($a0)    
  0016a1b0: swc1   $a1, +48($sp)      
  0016a1b4: swc1   $v0, +0($sp)       
  0016a1b8: swc1   $at, +4($sp)       
  0016a1bc: swc1   $v0, +488($a0)     
  0016a1c0: swc1   $at, +492($a0)     
  0016a1c4: swc1   $zero, +8($sp)     
  0016a1c8: swc1   $zero, +496($a0)   
  0016a1cc: lwc1   $zero, +488($a0)   
  0016a1d0: f10.0  $zero,$s0,$a1      
  0016a1d4: swc1   $zero, +488($a0)   
  0016a1d8: lwc1   $zero, +492($a0)   
  0016a1dc: f10.0  $zero,$s0,$a0      
  0016a1e0: swc1   $zero, +492($a0)   
  0016a1e4: lwc1   $zero, +496($a0)   
  0016a1e8: f10.0  $zero,$s0,$v1      
  0016a1ec: beq    $zero, $zero, +120    ; br -> 0x0016a268
  0016a1f0: swc1   $zero, +496($a0)   
  0016a1f4: lwc1   $at, +20($v1)         ; GLOBAL 0x35060014
  0016a1f8: addiu  $a2, $sp, +52      
  0016a1fc: lwc1   $a2, +16($v1)         ; GLOBAL 0x35060010
  0016a200: addiu  $a1, $sp, +56      
  0016a204: lwc1   $zero, +24($v1)       ; GLOBAL 0x35060018
  0016a208: swc1   $at, +0($a2)       
  0016a20c: lwc1   $v1, +52($sp)      
  0016a210: swc1   $zero, +0($a1)     
  0016a214: lui   $v1, 0x3f800000     
  0016a218: swc1   $at, +36($sp)      
  0016a21c: swc1   $zero, +40($sp)    
  0016a220: f10.2  $a2,$s0,$a2        
  0016a224: f10.2  $v1,$s0,$v1        
  0016a228: lwc1   $a1, +56($sp)      
  0016a22c: f10.18 $a0,$s0,$v1        
  0016a230: fmove  $zero,$a0,$v1      
  0016a234: lwc1   $at, +0($a2)       
  0016a238: lwc1   $zero, +0($a1)     
  0016a23c: swc1   $a2, +32($sp)      
  0016a240: f10.1c $a1,$s0,$a1        
  0016a244: f10.4  $zero,$s0,$v1      
  0016a248: f10.3  $v0,$s0,$v1        
  0016a24c: f10.2  $a2,$s0,$v1        
  0016a250: f10.2  $at,$s0,$v1        
  0016a254: f10.2  $zero,$s0,$v1      
  0016a258: swc1   $v0, +48($sp)      
  0016a25c: swc1   $at, +0($a2)       
  0016a260: beq    $zero, $zero, -256    ; br -> 0x001aa164
  0016a264: swc1   $zero, +0($a1)     
  0016a268: jr     $ra                
  0016a26c: addiu  $sp, $sp, +64      

; globals: 0x35060000(x1), 0x35060040(x1), 0x35060044(x1), 0x35060048(x1), 0x35060014(x1), 0x35060010(x1), 0x35060018(x1)
