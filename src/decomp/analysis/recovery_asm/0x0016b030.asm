; 0x0016b030  FUN_0016b030  size=384  status=real_logic
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 96 words

  0016b030: addiu  $sp, $sp, -144     
  0016b034: lw     $v1, +521($a0)     
  0016b038: beq    $v1, $zero, +364      ; br -> 0x0016b1a8
  0016b03c: sll $zero, $zero, 0       
  0016b040: lwc1   $v1, +16($a0)      
  0016b044: lui   $a1, 0x3f800000     
  0016b048: lwc1   $zero, +400($a0)   
  0016b04c: addiu  $v1, $sp, +28      
  0016b050: sw     $a1, +0($v1)       
  0016b054: lwc1   $v0, +20($a0)      
  0016b058: addiu  $t2, $sp, +68      
  0016b05c: addiu  $t1, $sp, +72      
  0016b060: lwc1   $at, +24($a0)      
  0016b064: addiu  $a3, $sp, +24      
  0016b068: lwc1   $t0, +404($a0)     
  0016b06c: addiu  $t4, $sp, +132     
  0016b070: lwc1   $a3, +408($a0)     
  0016b074: addiu  $t3, $sp, +136     
  0016b078: f10.1  $zero,$s0,$v1      
  0016b07c: addiu  $a2, $sp, +20      
  0016b080: addiu  $v1, $sp, +16      
  0016b084: addiu  $t0, $sp, +48      
  0016b088: swc1   $v0, +0($t2)       
  0016b08c: swc1   $at, +0($t1)       
  0016b090: swc1   $zero, +128($sp)   
  0016b094: lwc1   $zero, +536($a0)   
  0016b098: lwc1   $a1, +68($sp)      
  0016b09c: lwc1   $a0, +72($sp)      
  0016b0a0: lwc1   $v0, +528($a0)     
  0016b0a4: lwc1   $at, +532($a0)     
  0016b0a8: swc1   $v1, +64($sp)      
  0016b0ac: swc1   $v1, +112($sp)     
  0016b0b0: swc1   $zero, +0($a3)     
  0016b0b4: f10.1  $t0,$s0,$a1        
  0016b0b8: f10.1  $a3,$s0,$a0        
  0016b0bc: fmove  $zero,$a0,$a1      
  0016b0c0: swc1   $a1, +116($sp)     
  0016b0c4: swc1   $v0, +16($sp)      
  0016b0c8: swc1   $a0, +120($sp)     
  0016b0cc: swc1   $at, +0($a2)       
  0016b0d0: swc1   $v1, +0($t4)       
  0016b0d4: swc1   $zero, +0($t3)     
  0016b0d8: lw     $v1, +0($v1)       
  0016b0dc: sw     $v1, +0($t0)       
  0016b0e0: addiu  $v1, $sp, +52      
  0016b0e4: addiu  $a1, $sp, +56      
  0016b0e8: lwc1   $a0, +0($v1)       
  0016b0ec: addiu  $a2, $sp, +84      
  0016b0f0: lwc1   $a1, +48($sp)      
  0016b0f4: lwc1   $v0, +128($sp)     
  0016b0f8: lwc1   $v1, +0($a1)          ; GLOBAL 0x3f800000
  0016b0fc: lwc1   $at, +0($t4)       
  0016b100: lwc1   $zero, +0($t3)     
  0016b104: swc1   $a0, +0($a2)       
  0016b108: addiu  $v1, $sp, +88      
  0016b10c: lwc1   $a0, +84($sp)      
  0016b110: f10.2  $v0,$s0,$a1        
  0016b114: swc1   $v1, +0($v1)       
  0016b118: lwc1   $v1, +88($sp)      
  0016b11c: f10.2  $at,$s0,$a0        
  0016b120: f10.18 $v0,$s0,$at        
  0016b124: f10.1c $zero,$s0,$v1      
  0016b128: swc1   $a1, +80($sp)      
  0016b12c: swc1   $a1, +96($sp)      
  0016b130: swc1   $a0, +100($sp)     
  0016b134: swc1   $v1, +104($sp)     
  0016b138: f10.7  $zero,$s0,$zero    
  0016b13c: fmove  $zero,$zero,$v1    
  0016b140: op36    $t0,$at,$zero     
  0016b144: cop2   $v0,$a1,$v1        
  0016b148: cop2   $at,$fp,$v0        
  0016b14c: op3e    $t0,$at,$zero     
  0016b150: lwc1   $v0, +128($sp)     
  0016b154: addiu  $v1, $sp, +12      
  0016b158: lwc1   $at, +0($t4)       
  0016b15c: addiu  $a2, $sp, +4       
  0016b160: lwc1   $zero, +0($t3)     
  0016b164: addiu  $a3, $sp, +8       
  0016b168: swc1   $a2, +0($v1)       
  0016b16c: addiu  $a1, $sp, +0       
  0016b170: addiu  $v1, $sp, +32      
  0016b174: swc1   $v0, +0($sp)       
  0016b178: swc1   $at, +0($a2)       
  0016b17c: swc1   $zero, +0($a3)     
  0016b180: lw     $a1, +0($a1)          ; GLOBAL 0x3f800000
  0016b184: sw     $a1, +0($v1)       
  0016b188: op36    $t0,$at,$zero     
  0016b18c: op36    $v1,$v0,$zero     
  0016b190: cop2   $at,$fp,$v0        
  0016b194: op3e    $t0,$at,$zero     
  0016b198: lw     $v1, +120($a0)     
  0016b19c: addiu  $v1, $v1, +1296    
  0016b1a0: lw     $a0, +0($t0)       
  0016b1a4: sw     $a0, +0($v1)       
  0016b1a8: jr     $ra                
  0016b1ac: addiu  $sp, $sp, +144     

; globals: 0x3f800000(x2)
