; 0x00407550  FUN_00407550  size=160  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=ptr ret=void calls=
; 40 words

  00407550: addiu  $sp, $sp, -16      
  00407554: subu $v1, $a2, $a1        
  00407558: sw     $a1, +4($sp)       
  0040755c: sra $t0, $v1, 4           
  00407560: regimm $v1, $at, +12         ; br -> 0x00407570
  00407564: sw     $a2, +8($sp)       
  00407568: addiu  $v1, $v1, +15      
  0040756c: sra $t0, $v1, 4           
  00407570: blez   $t0, $zero, +92       ; br -> 0x004075d0
  00407574: sll $zero, $zero, 0       
  00407578: lw     $a3, +0($a3)       
  0040757c: lw     $v1, +4($sp)       
  00407580: sra $a2, $t0, 1           
  00407584: regimm $t0, $at, +12         ; br -> 0x00407594
  00407588: sw     $v1, +12($sp)      
  0040758c: addiu  $v1, $t0, +1       
  00407590: sra $a2, $v1, 1           
  00407594: lw     $v1, +12($sp)      
  00407598: sll $a1, $a2, 4           
  0040759c: addu $a1, $v1, $a1        
  004075a0: lw     $v1, +4($a1)       
  004075a4: dadd $at, $v1, $a3        
  004075a8: beq    $at, $zero, +48       ; br -> 0x004075dc
  004075ac: sw     $a1, +12($sp)      
  004075b0: addiu  $a1, $a1, +16      
  004075b4: addiu  $v1, $a2, +1       
  004075b8: subu $t0, $t0, $v1        
  004075bc: sw     $a1, +12($sp)      
  004075c0: sw     $a1, +4($sp)       
  004075c4: sll $zero, $zero, 0       
  004075c8: bgtz   $t0, $zero, -80       ; br -> 0x0040757c
  004075cc: sll $zero, $zero, 0       
  004075d0: lw     $v1, +4($sp)       
  004075d4: beq    $zero, $zero, +16     ; br -> 0x004075e8
  004075d8: sw     $v1, +0($a0)       
  004075dc: beq    $zero, $zero, -24     ; br -> 0x004075c8
  004075e0: dsubu $t0, $a2, $zero     
  004075e4: sll $zero, $zero, 0       
  004075e8: jr     $ra                
  004075ec: addiu  $sp, $sp, +16      
