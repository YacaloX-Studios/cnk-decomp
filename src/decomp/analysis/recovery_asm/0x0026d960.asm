; 0x0026d960  FUN_0026d960  size=400  status=real_c
; evidence: args=a0=ptr;a1=int;a2=int;a3=int ret=ptr calls=
; 100 words

  0026d960: addiu  $sp, $sp, -16      
  0026d964: lw     $v0, +4($a0)       
  0026d968: beq    $v0, $zero, +84       ; br -> 0x0026d9c0
  0026d96c: daddu $t2, $zero, $zero   
  0026d970: lw     $t0, +12($v0)      
  0026d974: lui   $a3, 0xff000000     
  0026d978: lui   $v1, 0x00ff0000     
  0026d97c: lw     $t1, +0($t0)       
  0026d980: lui   $v0, 0x00630000     
  0026d984: lw     $v0, +27104($v0)      ; GLOBAL 0x006369e0
  0026d988: and $a3, $t1, $a3         
  0026d98c: and $v1, $t1, $v1         
  0026d990: srl $a3, $a3, 24          
  0026d994: srl $v1, $v1, 8           
  0026d998: addu $t0, $a3, $v1        
  0026d99c: andi   $v1, $t1, -256     
  0026d9a0: sll $a3, $v1, 8           
  0026d9a4: andi   $v1, $t1, +255     
  0026d9a8: addu $a3, $a3, $t0        
  0026d9ac: sll $v1, $v1, 24          
  0026d9b0: addu $v1, $v1, $a3        
  0026d9b4: bne    $v0, $v1, +8          ; br -> 0x0026d9c0
  0026d9b8: sll $zero, $zero, 0       
  0026d9bc: op19    $zero,$t2,$zero   
  0026d9c0: beq    $t2, $zero, +280      ; br -> 0x0026dadc
  0026d9c4: daddu $v0, $zero, $zero   
  0026d9c8: lw     $a0, +4($a0)       
  0026d9cc: lui   $v0, 0xff000000     
  0026d9d0: lui   $t3, 0x00ff0000     
  0026d9d4: addiu  $a3, $sp, +4       
  0026d9d8: lw     $t0, +12($a0)      
  0026d9dc: lw     $v1, +16($a0)      
  0026d9e0: lw     $t4, +8($t0)       
  0026d9e4: lw     $a0, +20($a0)      
  0026d9e8: and $t1, $t4, $v0         
  0026d9ec: and $t0, $t4, $t3         
  0026d9f0: srl $t1, $t1, 24          
  0026d9f4: srl $t0, $t0, 8           
  0026d9f8: addu $t2, $t1, $t0        
  0026d9fc: andi   $t0, $t4, -256     
  0026da00: sll $t1, $t0, 8           
  0026da04: andi   $t0, $t4, +255     
  0026da08: addu $t1, $t1, $t2        
  0026da0c: sll $t0, $t0, 24          
  0026da10: addu $t0, $t0, $t1        
  0026da14: mult   $t0, $a1, +0       
  0026da18: addu $a1, $a2, $a1        
  0026da1c: sll $a1, $a1, 2           
  0026da20: addu $v1, $v1, $a1        
  0026da24: lwc1   $zero, +0($v1)        ; GLOBAL 0x00ff0000
  0026da28: swc1   $zero, +4($sp)     
  0026da2c: lw     $a2, +0($a3)          ; GLOBAL 0xff000000
  0026da30: and $v1, $a2, $v0         
  0026da34: and $v0, $a2, $t3         
  0026da38: srl $v1, $v1, 24          
  0026da3c: srl $v0, $v0, 8           
  0026da40: addu $a1, $v1, $v0        
  0026da44: andi   $v0, $a2, -256     
  0026da48: sll $v1, $v0, 8           
  0026da4c: andi   $v0, $a2, +255     
  0026da50: addu $v1, $v1, $a1        
  0026da54: sll $v0, $v0, 24          
  0026da58: addu $v0, $v0, $v1        
  0026da5c: sw     $v0, +0($a3)          ; GLOBAL 0xff000000
  0026da60: lwc1   $zero, +4($sp)     
  0026da64: swc1   $zero, +12($sp)    
  0026da68: lw     $v1, +12($sp)      
  0026da6c: swc1   $zero, +8($sp)     
  0026da70: spec3c  $zero,$v1,$v0     
  0026da74: spec3c  $zero,$v1,$v1     
  0026da78: spec3e  $zero,$v0,$v0     
  0026da7c: spec3f  $zero,$v1,$v1     
  0026da80: sltiu  $at, $v1, +6       
  0026da84: beq    $at, $zero, +80       ; br -> 0x0026dad8
  0026da88: addu $v0, $a0, $v0        
  0026da8c: lui   $a0, 0x006a0000     
  0026da90: sll $v1, $v1, 2           
  0026da94: addiu  $a0, $a0, +4496    
  0026da98: addu $v1, $v1, $a0        
  0026da9c: lw     $v1, +0($v1)          ; GLOBAL 0x00ff0000
  0026daa0: jr     $v1                
  0026daa4: sll $zero, $zero, 0       
  0026daa8: beq    $zero, $zero, +48     ; br -> 0x0026dadc
  0026daac: daddu $v0, $zero, $zero   
  0026dab0: beq    $zero, $zero, +40     ; br -> 0x0026dadc
  0026dab4: daddu $v0, $zero, $zero   
  0026dab8: beq    $zero, $zero, +32     ; br -> 0x0026dadc
  0026dabc: daddu $v0, $zero, $zero   
  0026dac0: beq    $zero, $zero, +24     ; br -> 0x0026dadc
  0026dac4: daddu $v0, $zero, $zero   
  0026dac8: beq    $zero, $zero, +16     ; br -> 0x0026dadc
  0026dacc: daddu $v0, $zero, $zero   
  0026dad0: beq    $zero, $zero, +12     ; br -> 0x0026dae0
  0026dad4: addiu  $sp, $sp, +16      
  0026dad8: daddu $v0, $zero, $zero   
  0026dadc: addiu  $sp, $sp, +16      
  0026dae0: jr     $ra                
  0026dae4: sll $zero, $zero, 0       
  0026dae8: sll $zero, $zero, 0       
  0026daec: sll $zero, $zero, 0       

; globals: 0x00ff0000(x2), 0xff000000(x2), 0x006369e0(x1)
