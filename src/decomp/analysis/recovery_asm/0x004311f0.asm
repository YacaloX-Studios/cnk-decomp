; 0x004311f0  FUN_004311f0  size=176  status=real_c
; evidence: args=a0=int;a1=w;a2=int;a3=int ret=ptr calls=
; 44 words

  004311f0: lui   $v0, 0x00650000     
  004311f4: lui   $a0, 0xffff0000     
  004311f8: dsubu  $zero, $v0, +0     
  004311fc: ori    $a0, $a0, -4       
  00431200: addiu  $v0, $v0, +31440   
  00431204: addiu  $a2, $zero, +1     
  00431208: lw     $a1, +8($v0)          ; GLOBAL 0x00650008
  0043120c: dsubu  $zero, $v0, +0     
  00431210: lui   $t1, 0x00650000     
  00431214: lw     $v1, +4($a1)       
  00431218: and    $a0, $v1, +0       
  0043121c: sltiu  $v0, $a3, +16      
  00431220: xori   $t0, $v0, +1       
  00431224: sll    $a2, $zero, +3     
  00431228: addu   $t2, $v0, +0       
  0043122c: lw     $v1, +12($a1)      
  00431230: beq    $v1, $a1, +40         ; br -> 0x0043125c
  00431234: addiu  $a2, $a2, +1       
  00431238: lui   $a0, 0xffff0000     
  0043123c: ori    $a0, $a0, -4       
  00431240: lw     $v0, +4($v1)       
  00431244: addiu  $t0, $t0, +1       
  00431248: lw     $v1, +12($v1)      
  0043124c: and    $a0, $v0, +0       
  00431250: sll    $zero, $zero, +0   
  00431254: bne    $v1, $a1, -24         ; br -> 0x00471240
  00431258: addu   $v0, $a3, +0       
  0043125c: slti   $v0, $a2, +128     
  00431260: bne    $v0, $zero, -60       ; br -> 0x00471228
  00431264: sll    $a2, $zero, +3     
  00431268: lw     $v0, +32512($t1)      ; GLOBAL 0x00657f00
  0043126c: addiu  $v1, $t3, +31440   
  00431270: lw     $a1, +8($v1)       
  00431274: addiu  $a0, $t1, +32512   
  00431278: subu   $a3, $v0, +0       
  0043127c: sw     $t0, +4($a0)          ; GLOBAL 0xffff0004
  00431280: sw     $v0, +28($a0)         ; GLOBAL 0xffff001c
  00431284: lui   $v1, 0xffff0000     
  00431288: sw     $a3, +32($a0)         ; GLOBAL 0xffff0020
  0043128c: ori    $v1, $v1, -4       
  00431290: lw     $v0, +4($a1)       
  00431294: and    $v1, $v0, +0       
  00431298: jr     $ra                
  0043129c: sw     $v0, +36($a0)         ; GLOBAL 0xffff0024

; globals: 0x00650008(x1), 0x00657f00(x1), 0xffff0004(x1), 0xffff001c(x1), 0xffff0020(x1), 0xffff0024(x1)
