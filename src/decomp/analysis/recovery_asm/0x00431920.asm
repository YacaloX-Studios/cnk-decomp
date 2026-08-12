; 0x00431920  FUN_00431920  size=504  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=int calls=0x003fb150;0x003fb6f8
; 126 words

  00431920: addiu  $sp, $sp, -96      
  00431924: dsubu $a1, $a0, $zero     
  00431928: sw     $ra, +80($sp)      
  0043192c: sw     $s4, +64($sp)      
  00431930: sw     $s3, +48($sp)      
  00431934: sw     $s2, +32($sp)      
  00431938: sw     $s1, +16($sp)      
  0043193c: sw     $s0, +0($sp)       
  00431940: dsubu $v0, $a1, $zero     
  00431944: spec3c  $zero,$v0,$s2     
  00431948: spec3f  $zero,$s2,$s2     
  0043194c: spec3f  $zero,$v0,$s0     
  00431950: sra $v1, $s0, 20          
  00431954: andi   $v1, $v1, +2047    
  00431958: addiu  $s1, $v1, -1023    
  0043195c: slti   $v0, $s1, +20      
  00431960: beq    $v0, $zero, +192      ; br -> 0x00431a24
  00431964: slti   $v0, $s1, +52      
  00431968: regimm $s1, $at, +92         ; br -> 0x004319c8
  0043196c: lui   $v0, 0x000f0000     
  00431970: lui   $v0, 0x006a0000     
  00431974: jal   0xf03fb150             ; -> 0x003fb150
  00431978: lw     $a1, +19736($v0)      ; GLOBAL 0x006a4d18
  0043197c: dsubu $a0, $v0, $zero     
  00431980: jal   0xf03fb6f8             ; -> 0x003fb6f8
  00431984: dsubu $a1, $zero, $zero   
  00431988: blez   $v0, $zero, +308      ; br -> 0x00431ac0
  0043198c: sll $zero, $zero, 0       
  00431990: regimm $s0, $zero, +20       ; br -> 0x004319a8
  00431994: lui   $v0, 0x7fff0000     
  00431998: dsubu $s2, $zero, $zero   
  0043199c: beq    $zero, $zero, +288    ; br -> 0x00431ac0
  004319a0: dsubu $s0, $zero, $zero   
  004319a4: sll $zero, $zero, 0       
  004319a8: ori    $v0, $v0, -1       
  004319ac: and $v0, $s0, $v0         
  004319b0: or $v0, $v0, $s2          
  004319b4: beq    $v0, $zero, +264      ; br -> 0x00431ac0
  004319b8: sll $zero, $zero, 0       
  004319bc: lui   $s0, 0xbff00000     
  004319c0: beq    $zero, $zero, +252    ; br -> 0x00431ac0
  004319c4: dsubu $s2, $zero, $zero   
  004319c8: ori    $v0, $v0, -1       
  004319cc: srav $s4, $v0, $s1        
  004319d0: and $v1, $s0, $s4         
  004319d4: or $v1, $v1, $s2          
  004319d8: beq    $v1, $zero, +276      ; br -> 0x00431af0
  004319dc: dsubu $a0, $a1, $zero     
  004319e0: lui   $v0, 0x006a0000     
  004319e4: jal   0xf03fb150             ; -> 0x003fb150
  004319e8: lw     $a1, +19736($v0)      ; GLOBAL 0x006a4d18
  004319ec: dsubu $a0, $v0, $zero     
  004319f0: jal   0xf03fb6f8             ; -> 0x003fb6f8
  004319f4: dsubu $a1, $zero, $zero   
  004319f8: blez   $v0, $zero, +196      ; br -> 0x00431ac0
  004319fc: sll $zero, $zero, 0       
  00431a00: regimm $s0, $at, +20         ; br -> 0x00431a18
  00431a04: nor $v0, $zero, $s4       
  00431a08: lui   $v0, 0x00100000     
  00431a0c: srav $v0, $v0, $s1        
  00431a10: addu $s0, $s0, $v0        
  00431a14: nor $v0, $zero, $s4       
  00431a18: dsubu $s2, $zero, $zero   
  00431a1c: beq    $zero, $zero, +160    ; br -> 0x00431ac0
  00431a20: and $s0, $s0, $v0         
  00431a24: bne    $v0, $zero, +32       ; br -> 0x00431a48
  00431a28: addiu  $a0, $v1, -1043    
  00431a2c: addiu  $v0, $zero, +1024  
  00431a30: bne    $s1, $v0, +192        ; br -> 0x00431af4
  00431a34: dsubu $v0, $a1, $zero     
  00431a38: jal   0xf03fb150             ; -> 0x003fb150
  00431a3c: dsubu $a0, $a1, $zero     
  00431a40: beq    $zero, $zero, +180    ; br -> 0x00431af8
  00431a44: lw     $ra, +80($sp)      
  00431a48: lui   $v0, 0xffff0000     
  00431a4c: ori    $v0, $v0, -1       
  00431a50: srlv $s4, $v0, $a0        
  00431a54: and $v1, $s2, $s4         
  00431a58: beq    $v1, $zero, +148      ; br -> 0x00431af0
  00431a5c: dsubu $a0, $a1, $zero     
  00431a60: lui   $v0, 0x006a0000     
  00431a64: jal   0xf03fb150             ; -> 0x003fb150
  00431a68: lw     $a1, +19736($v0)      ; GLOBAL 0x006a4d18
  00431a6c: dsubu $a0, $v0, $zero     
  00431a70: jal   0xf03fb6f8             ; -> 0x003fb6f8
  00431a74: dsubu $a1, $zero, $zero   
  00431a78: blez   $v0, $zero, +68       ; br -> 0x00431ac0
  00431a7c: sll $zero, $zero, 0       
  00431a80: regimm $s0, $at, +56         ; br -> 0x00431abc
  00431a84: nor $v0, $zero, $s4       
  00431a88: addiu  $v0, $zero, +20    
  00431a8c: bne    $s1, $v0, +12         ; br -> 0x00431a9c
  00431a90: addiu  $v0, $zero, +52    
  00431a94: beq    $zero, $zero, +32     ; br -> 0x00431ab8
  00431a98: addiu  $s0, $s0, +1       
  00431a9c: addiu  $v1, $zero, +1     
  00431aa0: subu $v0, $v0, $s1        
  00431aa4: sllv $v1, $v1, $v0        
  00431aa8: addu $v1, $s2, $v1        
  00431aac: daddu $v0, $v1, $s2       
  00431ab0: addu $s0, $s0, $v0        
  00431ab4: dsubu $s2, $v1, $zero     
  00431ab8: nor $v0, $zero, $s4       
  00431abc: and $s2, $s2, $v0         
  00431ac0: addiu  $v1, $zero, -1     
  00431ac4: spec3e  $zero,$v1,$v1     
  00431ac8: spec3c  $zero,$s0,$a0     
  00431acc: and $s3, $s3, $v1         
  00431ad0: spec3c  $zero,$s2,$v0     
  00431ad4: or $s3, $s3, $a0          
  00431ad8: addiu  $v1, $zero, -1     
  00431adc: spec3c  $zero,$v1,$v1     
  00431ae0: spec3e  $zero,$v0,$v0     
  00431ae4: and $s3, $s3, $v1         
  00431ae8: or $a1, $s3, $v0          
  00431aec: sll $zero, $zero, 0       
  00431af0: dsubu $v0, $a1, $zero     
  00431af4: lw     $ra, +80($sp)      
  00431af8: lw     $s4, +64($sp)      
  00431afc: lw     $s3, +48($sp)      
  00431b00: lw     $s2, +32($sp)      
  00431b04: lw     $s1, +16($sp)      
  00431b08: lw     $s0, +0($sp)       
  00431b0c: jr     $ra                
  00431b10: addiu  $sp, $sp, +96      
  00431b14: sll $zero, $zero, 0       

; globals: 0x006a4d18(x3)
