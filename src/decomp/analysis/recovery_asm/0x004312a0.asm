; 0x004312a0  FUN_004312a0  size=240  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=ret calls=0x0042c5c0;0x0042c620;0x004311f0
; 60 words

  004312a0: addiu  $sp, $sp, -96      
  004312a4: sw     $s1, +64($sp)      
  004312a8: sw     $s0, +48($sp)      
  004312ac: dsubu $s1, $a0, $zero     
  004312b0: dsubu $s0, $a1, $zero     
  004312b4: sw     $ra, +80($sp)      
  004312b8: jal   0xf042c5c0             ; -> FUN_0042c5c0
  004312bc: dsubu $a0, $s0, $zero     
  004312c0: jal   0xf04311f0             ; -> FUN_004311f0
  004312c4: sll $zero, $zero, 0       
  004312c8: lui   $v0, 0x00650000     
  004312cc: addiu  $a3, $v0, +32512   
  004312d0: mmi0   $zero,$a3,$v1      
  004312d4: mmi1   $zero,$a3,$v1      
  004312d8: mmi0   $zero,$a3,$a1      
  004312dc: mmi1   $zero,$a3,$a1      
  004312e0: mmi0   $zero,$a3,$a2      
  004312e4: mmi1   $zero,$a3,$a2      
  004312e8: op2c    $sp,$v1,$zero     
  004312ec: op2d    $sp,$v1,$zero     
  004312f0: op2c    $sp,$a1,$zero     
  004312f4: op2d    $sp,$a1,$zero     
  004312f8: op2c    $sp,$a2,$zero     
  004312fc: op2d    $sp,$a2,$zero     
  00431300: mmi0   $zero,$a3,$v1      
  00431304: mmi1   $zero,$a3,$v1      
  00431308: mmi0   $zero,$a3,$a1      
  0043130c: mmi1   $zero,$a3,$a1      
  00431310: op2c    $sp,$v1,$zero     
  00431314: op2d    $sp,$v1,$zero     
  00431318: op2c    $sp,$a1,$zero     
  0043131c: op2d    $sp,$a1,$zero     
  00431320: jal   0xf042c620             ; -> FUN_0042c620
  00431324: dsubu $a0, $s0, $zero     
  00431328: mmi0   $zero,$sp,$v1      
  0043132c: mmi1   $zero,$sp,$v1      
  00431330: mmi0   $zero,$sp,$a0      
  00431334: mmi1   $zero,$sp,$a0      
  00431338: mmi0   $zero,$sp,$a1      
  0043133c: mmi1   $zero,$sp,$a1      
  00431340: mmi0   $zero,$sp,$a2      
  00431344: mmi1   $zero,$sp,$a2      
  00431348: op2c    $s1,$v1,$zero     
  0043134c: op2d    $s1,$v1,$zero     
  00431350: op2c    $s1,$a0,$zero     
  00431354: op2d    $s1,$a0,$zero     
  00431358: op2c    $s1,$a1,$zero     
  0043135c: op2d    $s1,$a1,$zero     
  00431360: op2c    $s1,$a2,$zero     
  00431364: op2d    $s1,$a2,$zero     
  00431368: mmi0   $zero,$sp,$v1      
  0043136c: mmi1   $zero,$sp,$v1      
  00431370: op2c    $s1,$v1,$zero     
  00431374: dsubu $v0, $s1, $zero     
  00431378: op2d    $s1,$v1,$zero     
  0043137c: lw     $ra, +80($sp)      
  00431380: lw     $s1, +64($sp)      
  00431384: lw     $s0, +48($sp)      
  00431388: jr     $ra                
  0043138c: addiu  $sp, $sp, +96      
