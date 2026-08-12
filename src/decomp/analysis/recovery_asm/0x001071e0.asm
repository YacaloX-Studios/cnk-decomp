; 0x001071e0  FUN_001071e0  size=192  status=real_c
; evidence: args=a0=ptr;a1=ptr;a2=int;a3=int ret=void calls=
; 48 words

  001071e0: or $v1, $a0, $a1          
  001071e4: andi   $v1, $v1, +15      
  001071e8: bne    $v1, $zero, +40       ; br -> 0x00107214
  001071ec: sll $zero, $zero, 0       
  001071f0: lw     $a2, +0($a1)       
  001071f4: lw     $a3, +16($a1)      
  001071f8: lw     $t0, +32($a1)      
  001071fc: lw     $t1, +48($a1)      
  00107200: sw     $a2, +0($a0)       
  00107204: sw     $a3, +16($a0)      
  00107208: sw     $t0, +32($a0)      
  0010720c: beq    $zero, $zero, +132    ; br -> 0x00107294
  00107210: sw     $t1, +48($a0)      
  00107214: lwc1   $zero, +0($a1)     
  00107218: swc1   $zero, +0($a0)     
  0010721c: lwc1   $zero, +4($a1)     
  00107220: swc1   $zero, +4($a0)     
  00107224: lwc1   $zero, +8($a1)     
  00107228: swc1   $zero, +8($a0)     
  0010722c: lwc1   $zero, +12($a1)    
  00107230: swc1   $zero, +12($a0)    
  00107234: lwc1   $zero, +16($a1)    
  00107238: swc1   $zero, +16($a0)    
  0010723c: lwc1   $zero, +20($a1)    
  00107240: swc1   $zero, +20($a0)    
  00107244: lwc1   $zero, +24($a1)    
  00107248: swc1   $zero, +24($a0)    
  0010724c: lwc1   $zero, +28($a1)    
  00107250: swc1   $zero, +28($a0)    
  00107254: lwc1   $zero, +32($a1)    
  00107258: swc1   $zero, +32($a0)    
  0010725c: lwc1   $zero, +36($a1)    
  00107260: swc1   $zero, +36($a0)    
  00107264: lwc1   $zero, +40($a1)    
  00107268: swc1   $zero, +40($a0)    
  0010726c: lwc1   $zero, +44($a1)    
  00107270: swc1   $zero, +44($a0)    
  00107274: lwc1   $zero, +48($a1)    
  00107278: swc1   $zero, +48($a0)    
  0010727c: lwc1   $zero, +52($a1)    
  00107280: swc1   $zero, +52($a0)    
  00107284: lwc1   $zero, +56($a1)    
  00107288: swc1   $zero, +56($a0)    
  0010728c: lwc1   $zero, +60($a1)    
  00107290: swc1   $zero, +60($a0)    
  00107294: jr     $ra                
  00107298: sll $zero, $zero, 0       
  0010729c: sll $zero, $zero, 0       
