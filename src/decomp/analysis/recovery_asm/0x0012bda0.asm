; 0x0012bda0  FUN_0012bda0  size=256  status=real_c
; evidence: args=a0=int;a1=int;a2=int;a3=- ret=int calls=
; 64 words

  0012bda0: addiu  $v1, $a1, -4       
  0012bda4: sll $v0, $v1, 2           
  0012bda8: addu $v0, $v0, $v1        
  0012bdac: sll $v0, $v0, 3           
  0012bdb0: addu $v0, $v0, $a0        
  0012bdb4: lw     $v0, +60($v0)      
  0012bdb8: beq    $v0, $zero, +108      ; br -> 0x0012be28
  0012bdbc: slti   $at, $a2, +4       
  0012bdc0: beq    $at, $zero, +152      ; br -> 0x0012be5c
  0012bdc4: sll $zero, $zero, 0       
  0012bdc8: lw     $a0, +9($v0)       
  0012bdcc: addiu  $v0, $zero, +255   
  0012bdd0: beq    $a0, $v0, +96         ; br -> 0x0012be34
  0012bdd4: sll $a1, $a2, 1           
  0012bdd8: beq    $a0, $a1, +100        ; br -> 0x0012be40
  0012bddc: lui   $v0, 0x3f800000     
  0012bde0: addiu  $v1, $a0, +1       
  0012bde4: regimm $v1, $at, +16         ; br -> 0x0012bdf8
  0012bde8: andi   $v0, $v1, +7       
  0012bdec: beq    $v0, $zero, +8        ; br -> 0x0012bdf8
  0012bdf0: sll $zero, $zero, 0       
  0012bdf4: addiu  $v0, $v0, -8       
  0012bdf8: beq    $v0, $a1, +80         ; br -> 0x0012be4c
  0012bdfc: addiu  $v1, $a1, +1       
  0012be00: regimm $v1, $at, +16         ; br -> 0x0012be14
  0012be04: andi   $v0, $v1, +7       
  0012be08: beq    $v0, $zero, +8        ; br -> 0x0012be14
  0012be0c: sll $zero, $zero, 0       
  0012be10: addiu  $v0, $v0, -8       
  0012be14: beq    $a0, $v0, +52         ; br -> 0x0012be4c
  0012be18: sll $zero, $zero, 0       
  0012be1c: fmove  $zero,$a0,$zero    
  0012be20: beq    $zero, $zero, +104    ; br -> 0x0012be8c
  0012be24: sll $zero, $zero, 0       
  0012be28: fmove  $zero,$a0,$zero    
  0012be2c: beq    $zero, $zero, +92     ; br -> 0x0012be8c
  0012be30: sll $zero, $zero, 0       
  0012be34: fmove  $zero,$a0,$zero    
  0012be38: beq    $zero, $zero, +80     ; br -> 0x0012be8c
  0012be3c: sll $zero, $zero, 0       
  0012be40: fmove  $zero,$a0,$v0      
  0012be44: beq    $zero, $zero, +68     ; br -> 0x0012be8c
  0012be48: sll $zero, $zero, 0       
  0012be4c: lui   $v0, 0x3f000000     
  0012be50: fmove  $zero,$a0,$v0      
  0012be54: beq    $zero, $zero, +52     ; br -> 0x0012be8c
  0012be58: sll $zero, $zero, 0       
  0012be5c: lw     $v0, +12($v0)         ; GLOBAL 0x3f00000c
  0012be60: addiu  $a0, $a2, -4       
  0012be64: lui   $v1, 0x00010000     
  0012be68: sllv $v1, $v1, $a0        
  0012be6c: and $v0, $v0, $v1         
  0012be70: beq    $v0, $zero, +20       ; br -> 0x0012be88
  0012be74: sll $zero, $zero, 0       
  0012be78: lui   $v0, 0x3f800000     
  0012be7c: fmove  $zero,$a0,$v0      
  0012be80: beq    $zero, $zero, +8      ; br -> 0x0012be8c
  0012be84: sll $zero, $zero, 0       
  0012be88: fmove  $zero,$a0,$zero    
  0012be8c: jr     $ra                
  0012be90: sll $zero, $zero, 0       
  0012be94: sll $zero, $zero, 0       
  0012be98: sll $zero, $zero, 0       
  0012be9c: sll $zero, $zero, 0       

; globals: 0x3f00000c(x1)
