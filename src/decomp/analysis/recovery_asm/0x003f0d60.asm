; 0x003f0d60  FUN_003f0d60  size=1744  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=void calls=
; 436 words

  003f0d60: addiu  $sp, $sp, -192     
  003f0d64: lui   $a1, 0x00700000     
  003f0d68: sw     $fp, +128($sp)     
  003f0d6c: lui   $a3, 0x00650000     
  003f0d70: sw     $s7, +112($sp)     
  003f0d74: lui   $a2, 0x00650000     
  003f0d78: sw     $s6, +96($sp)      
  003f0d7c: lui   $t9, 0x00650000     
  003f0d80: sw     $s5, +80($sp)      
  003f0d84: lui   $t8, 0x00650000     
  003f0d88: sw     $s4, +64($sp)      
  003f0d8c: lui   $s5, 0x00650000     
  003f0d90: sw     $s3, +48($sp)      
  003f0d94: lui   $s4, 0x00650000     
  003f0d98: sw     $s2, +32($sp)      
  003f0d9c: lui   $s3, 0x00650000     
  003f0da0: sw     $s1, +16($sp)      
  003f0da4: lui   $s2, 0x00650000     
  003f0da8: sw     $s0, +0($sp)       
  003f0dac: lui   $at, 0x00700000     
  003f0db0: lw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003f0db4: lui   $s1, 0x00650000     
  003f0db8: lui   $s0, 0x00650000     
  003f0dbc: lui   $t7, 0x00650000     
  003f0dc0: lui   $t6, 0x00650000     
  003f0dc4: lui   $t5, 0x00650000     
  003f0dc8: lui   $t4, 0x00650000     
  003f0dcc: lui   $fp, 0x00650000     
  003f0dd0: addiu  $a1, $a1, -15812   
  003f0dd4: addiu  $t3, $zero, +63    
  003f0dd8: addiu  $a3, $a3, +2064    
  003f0ddc: addiu  $a0, $zero, -1     
  003f0de0: addiu  $t2, $t0, +1       
  003f0de4: lui   $at, 0x00700000     
  003f0de8: sw     $t2, -13792($at)      ; GLOBAL 0x0070ca20
  003f0dec: addu $t0, $a1, $t0        
  003f0df0: sw     $t3, +0($t0)       
  003f0df4: lui   $at, 0x00700000     
  003f0df8: sw     $a3, -15328($at)      ; GLOBAL 0x0070c420
  003f0dfc: lui   $t3, 0x00650000     
  003f0e00: lui   $at, 0x00700000     
  003f0e04: lui   $t2, 0x00650000     
  003f0e08: sw     $a0, -14578($at)      ; GLOBAL 0x0070c70e
  003f0e0c: addiu  $t1, $zero, +175   
  003f0e10: lui   $at, 0x00700000     
  003f0e14: addiu  $a2, $a2, +2096    
  003f0e18: sw     $zero, -14203($at)    ; GLOBAL 0x0070c885
  003f0e1c: addiu  $v1, $zero, +1     
  003f0e20: lui   $at, 0x00700000     
  003f0e24: addiu  $s7, $zero, +174   
  003f0e28: lw     $a3, -13792($at)      ; GLOBAL 0x0070ca20
  003f0e2c: addiu  $s5, $s5, +2144    
  003f0e30: addiu  $s4, $s4, +2192    
  003f0e34: addiu  $s3, $s3, +2240    
  003f0e38: addiu  $s2, $s2, +2288    
  003f0e3c: addiu  $s1, $s1, +2320    
  003f0e40: addiu  $s0, $s0, +2368    
  003f0e44: addiu  $t9, $t9, +2416    
  003f0e48: addiu  $t8, $t8, +2464    
  003f0e4c: addiu  $t7, $t7, +2512    
  003f0e50: addiu  $t6, $t6, +2560    
  003f0e54: addiu  $t5, $t5, +2576    
  003f0e58: addiu  $t0, $a3, +1       
  003f0e5c: lui   $at, 0x00700000     
  003f0e60: sw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003f0e64: addu $a3, $a1, $a3        
  003f0e68: sw     $t1, +0($a3)          ; GLOBAL 0x00650000
  003f0e6c: lui   $at, 0x00700000     
  003f0e70: sw     $a2, -14880($at)      ; GLOBAL 0x0070c5e0
  003f0e74: lui   $t0, 0x00650000     
  003f0e78: lui   $at, 0x00700000     
  003f0e7c: lui   $a3, 0x00650000     
  003f0e80: sw     $a0, -14354($at)      ; GLOBAL 0x0070c7ee
  003f0e84: addiu  $t4, $t4, +2640    
  003f0e88: lui   $at, 0x00700000     
  003f0e8c: addiu  $t3, $t3, +2688    
  003f0e90: sw     $v1, -14091($at)      ; GLOBAL 0x0070c8f5
  003f0e94: addiu  $t2, $t2, +2736    
  003f0e98: lui   $at, 0x00700000     
  003f0e9c: addiu  $t1, $zero, +2     
  003f0ea0: lw     $a2, -13792($at)      ; GLOBAL 0x0070ca20
  003f0ea4: addiu  $t0, $t0, +2768    
  003f0ea8: addiu  $a3, $a3, +2800    
  003f0eac: addiu  $fp, $fp, +2848    
  003f0eb0: addiu  $s6, $a2, +1       
  003f0eb4: lui   $at, 0x00700000     
  003f0eb8: sw     $s6, -13792($at)      ; GLOBAL 0x0070ca20
  003f0ebc: addu $a2, $a1, $a2        
  003f0ec0: sw     $s7, +0($a2)          ; GLOBAL 0x00650000
  003f0ec4: lui   $at, 0x00700000     
  003f0ec8: sw     $s5, -14884($at)      ; GLOBAL 0x0070c5dc
  003f0ecc: lui   $s6, 0x00650000     
  003f0ed0: lui   $at, 0x00700000     
  003f0ed4: addiu  $s6, $s6, +3008    
  003f0ed8: sw     $a0, -14356($at)      ; GLOBAL 0x0070c7ec
  003f0edc: lui   $a2, 0x00650000     
  003f0ee0: lui   $at, 0x00700000     
  003f0ee4: sw     $s6, +176($sp)     
  003f0ee8: sw     $v1, -14092($at)      ; GLOBAL 0x0070c8f4
  003f0eec: lui   $s6, 0x00650000     
  003f0ef0: lui   $at, 0x00700000     
  003f0ef4: addiu  $s6, $s6, +3056    
  003f0ef8: lw     $s5, -13792($at)      ; GLOBAL 0x0070ca20
  003f0efc: lui   $s7, 0x00650000     
  003f0f00: sw     $s6, +160($sp)     
  003f0f04: addiu  $a2, $a2, +2896    
  003f0f08: lui   $s6, 0x00650000     
  003f0f0c: addiu  $s7, $s7, +2944    
  003f0f10: addiu  $s6, $s6, +3104    
  003f0f14: sw     $s6, +144($sp)     
  003f0f18: addiu  $s6, $s5, +1       
  003f0f1c: lui   $at, 0x00700000     
  003f0f20: sw     $s6, -13792($at)      ; GLOBAL 0x0070ca20
  003f0f24: addu $s5, $a1, $s5        
  003f0f28: addiu  $s6, $zero, +173   
  003f0f2c: lui   $at, 0x00700000     
  003f0f30: sw     $s6, +0($s5)          ; GLOBAL 0x00650000
  003f0f34: sw     $s4, -14888($at)      ; GLOBAL 0x0070c5d8
  003f0f38: lui   $at, 0x00700000     
  003f0f3c: sw     $a0, -14358($at)      ; GLOBAL 0x0070c7ea
  003f0f40: lui   $at, 0x00700000     
  003f0f44: sw     $v1, -14093($at)      ; GLOBAL 0x0070c8f3
  003f0f48: lui   $at, 0x00700000     
  003f0f4c: lw     $s5, -13792($at)      ; GLOBAL 0x0070ca20
  003f0f50: addiu  $s4, $s5, +1       
  003f0f54: lui   $at, 0x00700000     
  003f0f58: sw     $s4, -13792($at)      ; GLOBAL 0x0070ca20
  003f0f5c: addu $s5, $a1, $s5        
  003f0f60: addiu  $s4, $zero, +84    
  003f0f64: lui   $at, 0x00700000     
  003f0f68: sw     $s4, +0($s5)          ; GLOBAL 0x00650000
  003f0f6c: sw     $s3, -15244($at)      ; GLOBAL 0x0070c474
  003f0f70: lui   $at, 0x00700000     
  003f0f74: sw     $a0, -14536($at)      ; GLOBAL 0x0070c738
  003f0f78: lui   $at, 0x00700000     
  003f0f7c: sw     $v1, -14182($at)      ; GLOBAL 0x0070c89a
  003f0f80: lui   $at, 0x00700000     
  003f0f84: lw     $s4, -13792($at)      ; GLOBAL 0x0070ca20
  003f0f88: addiu  $s3, $s4, +1       
  003f0f8c: lui   $at, 0x00700000     
  003f0f90: sw     $s3, -13792($at)      ; GLOBAL 0x0070ca20
  003f0f94: addu $s4, $a1, $s4        
  003f0f98: addiu  $s3, $zero, +74    
  003f0f9c: lui   $at, 0x00700000     
  003f0fa0: sw     $s3, +0($s4)          ; GLOBAL 0x00650000
  003f0fa4: sw     $s2, -15284($at)      ; GLOBAL 0x0070c44c
  003f0fa8: lui   $at, 0x00700000     
  003f0fac: sw     $a0, -14556($at)      ; GLOBAL 0x0070c724
  003f0fb0: lui   $at, 0x00700000     
  003f0fb4: sw     $v1, -14192($at)      ; GLOBAL 0x0070c890
  003f0fb8: lui   $at, 0x00700000     
  003f0fbc: lw     $s3, -13792($at)      ; GLOBAL 0x0070ca20
  003f0fc0: addiu  $s2, $s3, +1       
  003f0fc4: lui   $at, 0x00700000     
  003f0fc8: sw     $s2, -13792($at)      ; GLOBAL 0x0070ca20
  003f0fcc: addu $s3, $a1, $s3        
  003f0fd0: addiu  $s2, $zero, +44    
  003f0fd4: lui   $at, 0x00700000     
  003f0fd8: sw     $s2, +0($s3)          ; GLOBAL 0x00650000
  003f0fdc: sw     $s1, -15404($at)      ; GLOBAL 0x0070c3d4
  003f0fe0: lui   $at, 0x00700000     
  003f0fe4: sw     $a0, -14616($at)      ; GLOBAL 0x0070c6e8
  003f0fe8: lui   $at, 0x00700000     
  003f0fec: sw     $v1, -14222($at)      ; GLOBAL 0x0070c872
  003f0ff0: lui   $at, 0x00700000     
  003f0ff4: lw     $s2, -13792($at)      ; GLOBAL 0x0070ca20
  003f0ff8: addiu  $s1, $s2, +1       
  003f0ffc: lui   $at, 0x00700000     
  003f1000: sw     $s1, -13792($at)      ; GLOBAL 0x0070ca20
  003f1004: addu $s2, $a1, $s2        
  003f1008: addiu  $s1, $zero, +69    
  003f100c: lui   $at, 0x00700000     
  003f1010: sw     $s1, +0($s2)          ; GLOBAL 0x00650000
  003f1014: sw     $s0, -15304($at)      ; GLOBAL 0x0070c438
  003f1018: lui   $at, 0x00700000     
  003f101c: sw     $a0, -14566($at)      ; GLOBAL 0x0070c71a
  003f1020: lui   $at, 0x00700000     
  003f1024: sw     $v1, -14197($at)      ; GLOBAL 0x0070c88b
  003f1028: lui   $at, 0x00700000     
  003f102c: lw     $s1, -13792($at)      ; GLOBAL 0x0070ca20
  003f1030: addiu  $s0, $s1, +1       
  003f1034: lui   $at, 0x00700000     
  003f1038: sw     $s0, -13792($at)      ; GLOBAL 0x0070ca20
  003f103c: addu $s1, $a1, $s1        
  003f1040: addiu  $s0, $zero, +68    
  003f1044: lui   $at, 0x00700000     
  003f1048: sw     $s0, +0($s1)          ; GLOBAL 0x00650000
  003f104c: sw     $t9, -15308($at)      ; GLOBAL 0x0070c434
  003f1050: lui   $at, 0x00700000     
  003f1054: sw     $a0, -14568($at)      ; GLOBAL 0x0070c718
  003f1058: lui   $at, 0x00700000     
  003f105c: sw     $v1, -14198($at)      ; GLOBAL 0x0070c88a
  003f1060: lui   $at, 0x00700000     
  003f1064: lw     $s1, -13792($at)      ; GLOBAL 0x0070ca20
  003f1068: addiu  $s0, $s1, +1       
  003f106c: lui   $at, 0x00700000     
  003f1070: sw     $s0, -13792($at)      ; GLOBAL 0x0070ca20
  003f1074: addu $s1, $a1, $s1        
  003f1078: addiu  $s0, $zero, +43    
  003f107c: lui   $at, 0x00700000     
  003f1080: sw     $s0, +0($s1)          ; GLOBAL 0x00650000
  003f1084: sw     $t8, -15408($at)      ; GLOBAL 0x0070c3d0
  003f1088: lui   $at, 0x00700000     
  003f108c: sw     $a0, -14618($at)      ; GLOBAL 0x0070c6e6
  003f1090: lui   $at, 0x00700000     
  003f1094: sw     $v1, -14223($at)      ; GLOBAL 0x0070c871
  003f1098: lui   $at, 0x00700000     
  003f109c: lw     $s1, -13792($at)      ; GLOBAL 0x0070ca20
  003f10a0: addiu  $s0, $s1, +1       
  003f10a4: lui   $at, 0x00700000     
  003f10a8: sw     $s0, -13792($at)      ; GLOBAL 0x0070ca20
  003f10ac: addu $s1, $a1, $s1        
  003f10b0: addiu  $s0, $zero, +171   
  003f10b4: lui   $at, 0x00700000     
  003f10b8: sw     $s0, +0($s1)          ; GLOBAL 0x00650000
  003f10bc: sw     $t7, -14896($at)      ; GLOBAL 0x0070c5d0
  003f10c0: lui   $at, 0x00700000     
  003f10c4: sw     $a0, -14362($at)      ; GLOBAL 0x0070c7e6
  003f10c8: lui   $at, 0x00700000     
  003f10cc: sw     $v1, -14095($at)      ; GLOBAL 0x0070c8f1
  003f10d0: lui   $at, 0x00700000     
  003f10d4: lw     $s0, -13792($at)      ; GLOBAL 0x0070ca20
  003f10d8: addiu  $t7, $s0, +1       
  003f10dc: lui   $at, 0x00700000     
  003f10e0: sw     $t7, -13792($at)      ; GLOBAL 0x0070ca20
  003f10e4: addu $s0, $a1, $s0        
  003f10e8: addiu  $t7, $zero, +172   
  003f10ec: lui   $at, 0x00700000     
  003f10f0: sw     $t7, +0($s0)          ; GLOBAL 0x00650000
  003f10f4: sw     $t6, -14892($at)      ; GLOBAL 0x0070c5d4
  003f10f8: lui   $at, 0x00700000     
  003f10fc: sw     $a0, -14360($at)      ; GLOBAL 0x0070c7e8
  003f1100: lui   $at, 0x00700000     
  003f1104: sw     $v1, -14094($at)      ; GLOBAL 0x0070c8f2
  003f1108: lui   $at, 0x00700000     
  003f110c: lw     $t7, -13792($at)      ; GLOBAL 0x0070ca20
  003f1110: addiu  $t6, $t7, +1       
  003f1114: lui   $at, 0x00700000     
  003f1118: sw     $t6, -13792($at)      ; GLOBAL 0x0070ca20
  003f111c: addu $t7, $a1, $t7        
  003f1120: addiu  $t6, $zero, +104   
  003f1124: lui   $at, 0x00700000     
  003f1128: sw     $t6, +0($t7)          ; GLOBAL 0x00650000
  003f112c: sw     $t5, -15164($at)      ; GLOBAL 0x0070c4c4
  003f1130: lui   $at, 0x00700000     
  003f1134: sw     $a0, -14496($at)      ; GLOBAL 0x0070c760
  003f1138: lui   $at, 0x00700000     
  003f113c: sw     $v1, -14162($at)      ; GLOBAL 0x0070c8ae
  003f1140: lui   $at, 0x00700000     
  003f1144: lw     $t6, -13792($at)      ; GLOBAL 0x0070ca20
  003f1148: addiu  $t5, $t6, +1       
  003f114c: lui   $at, 0x00700000     
  003f1150: sw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003f1154: addu $t6, $a1, $t6        
  003f1158: addiu  $t5, $zero, +102   
  003f115c: lui   $at, 0x00700000     
  003f1160: sw     $t5, +0($t6)          ; GLOBAL 0x00650000
  003f1164: sw     $t4, -15172($at)      ; GLOBAL 0x0070c4bc
  003f1168: lui   $at, 0x00700000     
  003f116c: sw     $a0, -14500($at)      ; GLOBAL 0x0070c75c
  003f1170: lui   $at, 0x00700000     
  003f1174: sw     $v1, -14164($at)      ; GLOBAL 0x0070c8ac
  003f1178: lui   $at, 0x00700000     
  003f117c: lw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003f1180: addiu  $t4, $t5, +1       
  003f1184: lui   $at, 0x00700000     
  003f1188: sw     $t4, -13792($at)      ; GLOBAL 0x0070ca20
  003f118c: addu $t5, $a1, $t5        
  003f1190: addiu  $t4, $zero, +101   
  003f1194: lui   $at, 0x00700000     
  003f1198: sw     $t4, +0($t5)          ; GLOBAL 0x00650000
  003f119c: sw     $t3, -15176($at)      ; GLOBAL 0x0070c4b8
  003f11a0: lui   $at, 0x00700000     
  003f11a4: sw     $a0, -14502($at)      ; GLOBAL 0x0070c75a
  003f11a8: lui   $at, 0x00700000     
  003f11ac: sw     $v1, -14165($at)      ; GLOBAL 0x0070c8ab
  003f11b0: lui   $at, 0x00700000     
  003f11b4: lw     $t4, -13792($at)      ; GLOBAL 0x0070ca20
  003f11b8: addiu  $t3, $t4, +1       
  003f11bc: lui   $at, 0x00700000     
  003f11c0: sw     $t3, -13792($at)      ; GLOBAL 0x0070ca20
  003f11c4: addu $t4, $a1, $t4        
  003f11c8: addiu  $t3, $zero, +105   
  003f11cc: lui   $at, 0x00700000     
  003f11d0: sw     $t3, +0($t4)          ; GLOBAL 0x00650000
  003f11d4: sw     $t2, -15160($at)      ; GLOBAL 0x0070c4c8
  003f11d8: addiu  $t2, $zero, +101   
  003f11dc: lui   $at, 0x00700000     
  003f11e0: sw     $t2, -14494($at)      ; GLOBAL 0x0070c762
  003f11e4: lui   $at, 0x00700000     
  003f11e8: sw     $t1, -14161($at)      ; GLOBAL 0x0070c8af
  003f11ec: lui   $at, 0x00700000     
  003f11f0: lw     $t3, -13792($at)      ; GLOBAL 0x0070ca20
  003f11f4: addiu  $t2, $t3, +1       
  003f11f8: lui   $at, 0x00700000     
  003f11fc: sw     $t2, -13792($at)      ; GLOBAL 0x0070ca20
  003f1200: addu $t3, $a1, $t3        
  003f1204: addiu  $t2, $zero, +103   
  003f1208: lui   $at, 0x00700000     
  003f120c: sw     $t2, +0($t3)          ; GLOBAL 0x00650000
  003f1210: sw     $t0, -15168($at)      ; GLOBAL 0x0070c4c0
  003f1214: lui   $at, 0x00700000     
  003f1218: addiu  $t0, $zero, +3     
  003f121c: sw     $a0, -14498($at)      ; GLOBAL 0x0070c75e
  003f1220: lui   $at, 0x00700000     
  003f1224: sw     $t0, -14163($at)      ; GLOBAL 0x0070c8ad
  003f1228: lui   $at, 0x00700000     
  003f122c: lw     $t2, -13792($at)      ; GLOBAL 0x0070ca20
  003f1230: addiu  $t0, $t2, +1       
  003f1234: lui   $at, 0x00700000     
  003f1238: sw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003f123c: addu $t2, $a1, $t2        
  003f1240: addiu  $t0, $zero, +209   
  003f1244: lui   $at, 0x00700000     
  003f1248: sw     $t0, +0($t2)          ; GLOBAL 0x00650000
  003f124c: sw     $v1, -14057($at)      ; GLOBAL 0x0070c917
  003f1250: lui   $at, 0x00700000     
  003f1254: sw     $zero, -14744($at)    ; GLOBAL 0x0070c668
  003f1258: lui   $at, 0x00700000     
  003f125c: sw     $a0, -14286($at)      ; GLOBAL 0x0070c832
  003f1260: lui   $at, 0x00700000     
  003f1264: lw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003f1268: addiu  $v1, $t0, +1       
  003f126c: lui   $at, 0x00700000     
  003f1270: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f1274: addu $t0, $a1, $t0        
  003f1278: addiu  $v1, $zero, +210   
  003f127c: lui   $at, 0x00700000     
  003f1280: sw     $v1, +0($t0)          ; GLOBAL 0x00650000
  003f1284: sw     $a3, -14740($at)      ; GLOBAL 0x0070c66c
  003f1288: addiu  $v1, $zero, +209   
  003f128c: lui   $at, 0x00700000     
  003f1290: sw     $v1, -14284($at)      ; GLOBAL 0x0070c834
  003f1294: lui   $at, 0x00700000     
  003f1298: sw     $t1, -14056($at)      ; GLOBAL 0x0070c918
  003f129c: lui   $at, 0x00700000     
  003f12a0: lw     $a3, -13792($at)      ; GLOBAL 0x0070ca20
  003f12a4: addiu  $v1, $a3, +1       
  003f12a8: lui   $at, 0x00700000     
  003f12ac: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f12b0: addu $a3, $a1, $a3        
  003f12b4: addiu  $v1, $zero, +211   
  003f12b8: lui   $at, 0x00700000     
  003f12bc: sw     $v1, +0($a3)          ; GLOBAL 0x00650000
  003f12c0: sw     $fp, -14736($at)      ; GLOBAL 0x0070c670
  003f12c4: addiu  $v1, $zero, +3     
  003f12c8: lui   $at, 0x00700000     
  003f12cc: sw     $v1, -14055($at)      ; GLOBAL 0x0070c919
  003f12d0: lui   $at, 0x00700000     
  003f12d4: sw     $a0, -14282($at)      ; GLOBAL 0x0070c836
  003f12d8: lui   $at, 0x00700000     
  003f12dc: lw     $a3, -13792($at)      ; GLOBAL 0x0070ca20
  003f12e0: addiu  $v1, $a3, +1       
  003f12e4: lui   $at, 0x00700000     
  003f12e8: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f12ec: addu $a3, $a1, $a3        
  003f12f0: addiu  $v1, $zero, +65    
  003f12f4: lui   $at, 0x00700000     
  003f12f8: sw     $v1, +0($a3)          ; GLOBAL 0x00650000
  003f12fc: sw     $a2, -15320($at)      ; GLOBAL 0x0070c428
  003f1300: lui   $at, 0x00700000     
  003f1304: sw     $a0, -14574($at)      ; GLOBAL 0x0070c712
  003f1308: lui   $at, 0x00700000     
  003f130c: sw     $zero, -14201($at)    ; GLOBAL 0x0070c887
  003f1310: lui   $at, 0x00700000     
  003f1314: lw     $a2, -13792($at)      ; GLOBAL 0x0070ca20
  003f1318: addiu  $v1, $a2, +1       
  003f131c: lui   $at, 0x00700000     
  003f1320: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f1324: addu $a2, $a1, $a2        
  003f1328: addiu  $v1, $zero, +113   
  003f132c: lui   $at, 0x00700000     
  003f1330: sw     $v1, +0($a2)          ; GLOBAL 0x00650000
  003f1334: sw     $s7, -15128($at)      ; GLOBAL 0x0070c4e8
  003f1338: lui   $at, 0x00700000     
  003f133c: sw     $a0, -14478($at)      ; GLOBAL 0x0070c772
  003f1340: lui   $at, 0x00700000     
  003f1344: sw     $t1, -14153($at)      ; GLOBAL 0x0070c8b7
  003f1348: lui   $at, 0x00700000     
  003f134c: lw     $a2, -13792($at)      ; GLOBAL 0x0070ca20
  003f1350: addiu  $v1, $a2, +1       
  003f1354: lui   $at, 0x00700000     
  003f1358: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f135c: addu $a2, $a1, $a2        
  003f1360: addiu  $v1, $zero, +116   
  003f1364: lui   $at, 0x00700000     
  003f1368: sw     $v1, +0($a2)          ; GLOBAL 0x00650000
  003f136c: lw     $v1, +176($sp)     
  003f1370: sw     $v1, -15116($at)      ; GLOBAL 0x0070c4f4
  003f1374: lui   $at, 0x00700000     
  003f1378: sw     $a0, -14472($at)      ; GLOBAL 0x0070c778
  003f137c: lui   $at, 0x00700000     
  003f1380: sw     $t1, -14150($at)      ; GLOBAL 0x0070c8ba
  003f1384: lui   $at, 0x00700000     
  003f1388: lw     $a2, -13792($at)      ; GLOBAL 0x0070ca20
  003f138c: addiu  $v1, $a2, +1       
  003f1390: lui   $at, 0x00700000     
  003f1394: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f1398: addu $a2, $a1, $a2        
  003f139c: addiu  $v1, $zero, +114   
  003f13a0: lui   $at, 0x00700000     
  003f13a4: sw     $v1, +0($a2)          ; GLOBAL 0x00650000
  003f13a8: lw     $v1, +160($sp)     
  003f13ac: sw     $v1, -15124($at)      ; GLOBAL 0x0070c4ec
  003f13b0: lui   $at, 0x00700000     
  003f13b4: sw     $a0, -14476($at)      ; GLOBAL 0x0070c774
  003f13b8: lui   $at, 0x00700000     
  003f13bc: sw     $t1, -14152($at)      ; GLOBAL 0x0070c8b8
  003f13c0: lui   $at, 0x00700000     
  003f13c4: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f13c8: addu $a1, $a1, $v1        
  003f13cc: lui   $at, 0x00700000     
  003f13d0: addiu  $v1, $v1, +1       
  003f13d4: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f13d8: addiu  $v1, $zero, +115   
  003f13dc: lui   $at, 0x00700000     
  003f13e0: sw     $v1, +0($a1)          ; GLOBAL 0x00700000
  003f13e4: lw     $v1, +144($sp)     
  003f13e8: sw     $v1, -15120($at)      ; GLOBAL 0x0070c4f0
  003f13ec: lui   $at, 0x00700000     
  003f13f0: sw     $a0, -14474($at)      ; GLOBAL 0x0070c776
  003f13f4: lui   $at, 0x00700000     
  003f13f8: sw     $t1, -14151($at)      ; GLOBAL 0x0070c8b9
  003f13fc: lw     $fp, +128($sp)     
  003f1400: lw     $s7, +112($sp)     
  003f1404: lw     $s6, +96($sp)      
  003f1408: lw     $s5, +80($sp)      
  003f140c: lw     $s4, +64($sp)      
  003f1410: lw     $s3, +48($sp)      
  003f1414: lw     $s2, +32($sp)      
  003f1418: lw     $s1, +16($sp)      
  003f141c: lw     $s0, +0($sp)       
  003f1420: jr     $ra                
  003f1424: addiu  $sp, $sp, +192     
  003f1428: sll $zero, $zero, 0       
  003f142c: sll $zero, $zero, 0       

; globals: 0x0070ca20(x50), 0x00650000(x23), 0x0070c420(x1), 0x0070c70e(x1), 0x0070c885(x1), 0x0070c5e0(x1), 0x0070c7ee(x1), 0x0070c8f5(x1), 0x0070c5dc(x1), 0x0070c7ec(x1)
