; 0x003f1430  FUN_003f1430  size=1472  status=real_logic
; evidence: args=a0=int;a1=int;a2=int;a3=int ret=void calls=
; 368 words

  003f1430: addiu  $sp, $sp, -144     
  003f1434: lui   $a0, 0x00650000     
  003f1438: sq     $fp, +128($sp)     
  003f143c: lui   $v1, 0x00650000     
  003f1440: sq     $s7, +112($sp)     
  003f1444: lui   $t9, 0x00650000     
  003f1448: sq     $s6, +96($sp)      
  003f144c: lui   $s7, 0x00650000     
  003f1450: sq     $s5, +80($sp)      
  003f1454: lui   $t6, 0x00650000     
  003f1458: sq     $s4, +64($sp)      
  003f145c: lui   $t5, 0x00650000     
  003f1460: sq     $s3, +48($sp)      
  003f1464: lui   $s4, 0x00700000     
  003f1468: sq     $s2, +32($sp)      
  003f146c: lui   $t4, 0x00650000     
  003f1470: sq     $s1, +16($sp)      
  003f1474: lui   $t3, 0x00650000     
  003f1478: sq     $s0, +0($sp)       
  003f147c: lui   $at, 0x00700000     
  003f1480: lw     $a3, -13792($at)      ; GLOBAL 0x0070ca20
  003f1484: lui   $t2, 0x00650000     
  003f1488: lui   $t1, 0x00650000     
  003f148c: lui   $t0, 0x00650000     
  003f1490: addiu  $s4, $s4, -15812   
  003f1494: addiu  $a2, $zero, +66    
  003f1498: addiu  $a0, $a0, +3152    
  003f149c: addiu  $s3, $zero, -1     
  003f14a0: addiu  $s2, $zero, +178   
  003f14a4: addiu  $v1, $v1, +3184    
  003f14a8: addiu  $s1, $zero, +1     
  003f14ac: addiu  $s7, $s7, +3232    
  003f14b0: lui   $at, 0x00700000     
  003f14b4: addiu  $a1, $a3, +1       
  003f14b8: sw     $a3, -13784($at)      ; GLOBAL 0x0070ca28
  003f14bc: addiu  $s0, $zero, +6     
  003f14c0: lui   $at, 0x00700000     
  003f14c4: addiu  $t9, $t9, +3264    
  003f14c8: sw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003f14cc: addiu  $t8, $zero, +7     
  003f14d0: addu $a1, $s4, $a3        
  003f14d4: lui   $at, 0x00700000     
  003f14d8: sb     $a2, +0($a1)       
  003f14dc: lui   $a3, 0x00650000     
  003f14e0: sw     $a0, -15316($at)      ; GLOBAL 0x0070c42c
  003f14e4: lui   $a2, 0x00650000     
  003f14e8: lui   $at, 0x00700000     
  003f14ec: addiu  $t7, $zero, +184   
  003f14f0: sh     $s3, -14572($at)      ; GLOBAL 0x0070c714
  003f14f4: addiu  $t6, $t6, +3296    
  003f14f8: lui   $at, 0x00700000     
  003f14fc: addiu  $t5, $t5, +3312    
  003f1500: sb     $zero, -14200($at)    ; GLOBAL 0x0070c888
  003f1504: addiu  $t4, $t4, +3360    
  003f1508: lui   $at, 0x00700000     
  003f150c: addiu  $fp, $zero, +187   
  003f1510: lw     $a0, -13792($at)      ; GLOBAL 0x0070ca20
  003f1514: addiu  $t3, $t3, +3408    
  003f1518: addiu  $t2, $t2, +3440    
  003f151c: addiu  $t1, $t1, +3472    
  003f1520: addiu  $t0, $t0, +3504    
  003f1524: addiu  $a3, $a3, +3552    
  003f1528: addiu  $a2, $a2, +3584    
  003f152c: addiu  $a1, $a0, +1       
  003f1530: lui   $at, 0x00700000     
  003f1534: sw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003f1538: addu $a0, $s4, $a0        
  003f153c: sb     $s2, +0($a0)          ; GLOBAL 0x00650000
  003f1540: lui   $at, 0x00700000     
  003f1544: sw     $v1, -14868($at)      ; GLOBAL 0x0070c5ec
  003f1548: lui   $a1, 0x00650000     
  003f154c: lui   $at, 0x00700000     
  003f1550: lui   $a0, 0x00650000     
  003f1554: sh     $s3, -14348($at)      ; GLOBAL 0x0070c7f4
  003f1558: lui   $v1, 0x00650000     
  003f155c: lui   $at, 0x00700000     
  003f1560: addiu  $a1, $a1, +3632    
  003f1564: sb     $s1, -14088($at)      ; GLOBAL 0x0070c8f8
  003f1568: addiu  $a0, $a0, +3680    
  003f156c: lui   $at, 0x00700000     
  003f1570: addiu  $v1, $v1, +3712    
  003f1574: lw     $s6, -13792($at)      ; GLOBAL 0x0070ca20
  003f1578: addiu  $s5, $s6, +1       
  003f157c: lui   $at, 0x00700000     
  003f1580: sw     $s5, -13792($at)      ; GLOBAL 0x0070ca20
  003f1584: addu $s6, $s4, $s6        
  003f1588: addiu  $s5, $zero, +179   
  003f158c: lui   $at, 0x00700000     
  003f1590: sb     $s5, +0($s6)       
  003f1594: sw     $s7, -14864($at)      ; GLOBAL 0x0070c5f0
  003f1598: lui   $s6, 0x00650000     
  003f159c: lui   $at, 0x00700000     
  003f15a0: lui   $s5, 0x00650000     
  003f15a4: sh     $s2, -14346($at)      ; GLOBAL 0x0070c7f6
  003f15a8: addiu  $s6, $s6, +3760    
  003f15ac: lui   $at, 0x00700000     
  003f15b0: addiu  $s5, $s5, +3824    
  003f15b4: sb     $s0, -14087($at)      ; GLOBAL 0x0070c8f9
  003f15b8: lui   $at, 0x00700000     
  003f15bc: lw     $s7, -13792($at)      ; GLOBAL 0x0070ca20
  003f15c0: addiu  $s2, $s7, +1       
  003f15c4: lui   $at, 0x00700000     
  003f15c8: sw     $s2, -13792($at)      ; GLOBAL 0x0070ca20
  003f15cc: addu $s7, $s4, $s7        
  003f15d0: addiu  $s2, $zero, +180   
  003f15d4: lui   $at, 0x00700000     
  003f15d8: sb     $s2, +0($s7)          ; GLOBAL 0x00650000
  003f15dc: sw     $t9, -14860($at)      ; GLOBAL 0x0070c5f4
  003f15e0: lui   $at, 0x00700000     
  003f15e4: sh     $s3, -14344($at)      ; GLOBAL 0x0070c7f8
  003f15e8: lui   $at, 0x00700000     
  003f15ec: sb     $t8, -14086($at)      ; GLOBAL 0x0070c8fa
  003f15f0: lui   $at, 0x00700000     
  003f15f4: lw     $s2, -13792($at)      ; GLOBAL 0x0070ca20
  003f15f8: addiu  $s7, $s2, +1       
  003f15fc: lui   $at, 0x00700000     
  003f1600: sw     $s7, -13792($at)      ; GLOBAL 0x0070ca20
  003f1604: addu $s2, $s4, $s2        
  003f1608: sb     $t7, +0($s2)       
  003f160c: lui   $at, 0x00700000     
  003f1610: sw     $t6, -14844($at)      ; GLOBAL 0x0070c604
  003f1614: lui   $at, 0x00700000     
  003f1618: sh     $s3, -14336($at)      ; GLOBAL 0x0070c800
  003f161c: lui   $at, 0x00700000     
  003f1620: sb     $s1, -14082($at)      ; GLOBAL 0x0070c8fe
  003f1624: lui   $at, 0x00700000     
  003f1628: lw     $s2, -13792($at)      ; GLOBAL 0x0070ca20
  003f162c: addiu  $t6, $s2, +1       
  003f1630: lui   $at, 0x00700000     
  003f1634: sw     $t6, -13792($at)      ; GLOBAL 0x0070ca20
  003f1638: addu $s2, $s4, $s2        
  003f163c: addiu  $t6, $zero, +185   
  003f1640: lui   $at, 0x00700000     
  003f1644: sb     $t6, +0($s2)       
  003f1648: sw     $t5, -14840($at)      ; GLOBAL 0x0070c608
  003f164c: lui   $at, 0x00700000     
  003f1650: sh     $t7, -14334($at)      ; GLOBAL 0x0070c802
  003f1654: lui   $at, 0x00700000     
  003f1658: sb     $s0, -14081($at)      ; GLOBAL 0x0070c8ff
  003f165c: lui   $at, 0x00700000     
  003f1660: lw     $t6, -13792($at)      ; GLOBAL 0x0070ca20
  003f1664: addiu  $t5, $t6, +1       
  003f1668: lui   $at, 0x00700000     
  003f166c: sw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003f1670: addu $t6, $s4, $t6        
  003f1674: addiu  $t5, $zero, +186   
  003f1678: lui   $at, 0x00700000     
  003f167c: sb     $t5, +0($t6)          ; GLOBAL 0x00650000
  003f1680: sw     $t4, -14836($at)      ; GLOBAL 0x0070c60c
  003f1684: lui   $at, 0x00700000     
  003f1688: sh     $s3, -14332($at)      ; GLOBAL 0x0070c804
  003f168c: lui   $at, 0x00700000     
  003f1690: sb     $t8, -14080($at)      ; GLOBAL 0x0070c900
  003f1694: lui   $at, 0x00700000     
  003f1698: lw     $t4, -13792($at)      ; GLOBAL 0x0070ca20
  003f169c: addiu  $t5, $t4, +1       
  003f16a0: lui   $at, 0x00700000     
  003f16a4: sw     $t5, -13792($at)      ; GLOBAL 0x0070ca20
  003f16a8: addu $t4, $s4, $t4        
  003f16ac: sb     $fp, +0($t4)          ; GLOBAL 0x00650000
  003f16b0: lui   $at, 0x00700000     
  003f16b4: sw     $t3, -14832($at)      ; GLOBAL 0x0070c610
  003f16b8: lui   $at, 0x00700000     
  003f16bc: sh     $s3, -14330($at)      ; GLOBAL 0x0070c806
  003f16c0: lui   $at, 0x00700000     
  003f16c4: sb     $s1, -14079($at)      ; GLOBAL 0x0070c901
  003f16c8: lui   $at, 0x00700000     
  003f16cc: lw     $t4, -13792($at)      ; GLOBAL 0x0070ca20
  003f16d0: addiu  $t3, $t4, +1       
  003f16d4: lui   $at, 0x00700000     
  003f16d8: sw     $t3, -13792($at)      ; GLOBAL 0x0070ca20
  003f16dc: addu $t4, $s4, $t4        
  003f16e0: addiu  $t3, $zero, +188   
  003f16e4: lui   $at, 0x00700000     
  003f16e8: sb     $t3, +0($t4)          ; GLOBAL 0x00650000
  003f16ec: sh     $fp, -14328($at)      ; GLOBAL 0x0070c808
  003f16f0: lui   $at, 0x00700000     
  003f16f4: sw     $t2, -14828($at)      ; GLOBAL 0x0070c614
  003f16f8: lui   $at, 0x00700000     
  003f16fc: sb     $s0, -14078($at)      ; GLOBAL 0x0070c902
  003f1700: lui   $at, 0x00700000     
  003f1704: lw     $t4, -13792($at)      ; GLOBAL 0x0070ca20
  003f1708: addiu  $t3, $t4, +1       
  003f170c: lui   $at, 0x00700000     
  003f1710: sw     $t3, -13792($at)      ; GLOBAL 0x0070ca20
  003f1714: addu $t4, $s4, $t4        
  003f1718: addiu  $t3, $zero, +189   
  003f171c: lui   $at, 0x00700000     
  003f1720: sb     $t3, +0($t4)          ; GLOBAL 0x00650000
  003f1724: sw     $t1, -14824($at)      ; GLOBAL 0x0070c618
  003f1728: lui   $at, 0x00700000     
  003f172c: sh     $s3, -14326($at)      ; GLOBAL 0x0070c80a
  003f1730: lui   $at, 0x00700000     
  003f1734: sb     $t8, -14077($at)      ; GLOBAL 0x0070c903
  003f1738: lui   $at, 0x00700000     
  003f173c: lw     $t4, -13792($at)      ; GLOBAL 0x0070ca20
  003f1740: addiu  $t3, $t4, +1       
  003f1744: lui   $at, 0x00700000     
  003f1748: sw     $t3, -13792($at)      ; GLOBAL 0x0070ca20
  003f174c: addu $t4, $s4, $t4        
  003f1750: addiu  $t3, $zero, +181   
  003f1754: lui   $at, 0x00700000     
  003f1758: sb     $t3, +0($t4)          ; GLOBAL 0x00650000
  003f175c: sw     $t0, -14856($at)      ; GLOBAL 0x0070c5f8
  003f1760: lui   $at, 0x00700000     
  003f1764: sh     $s3, -14342($at)      ; GLOBAL 0x0070c7fa
  003f1768: lui   $at, 0x00700000     
  003f176c: sb     $s1, -14085($at)      ; GLOBAL 0x0070c8fb
  003f1770: lui   $at, 0x00700000     
  003f1774: lw     $t3, -13792($at)      ; GLOBAL 0x0070ca20
  003f1778: addiu  $t0, $t3, +1       
  003f177c: lui   $at, 0x00700000     
  003f1780: sw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003f1784: addu $t3, $s4, $t3        
  003f1788: addiu  $t0, $zero, +182   
  003f178c: lui   $at, 0x00700000     
  003f1790: sb     $t0, +0($t3)          ; GLOBAL 0x00650000
  003f1794: sw     $t2, -14852($at)      ; GLOBAL 0x0070c5fc
  003f1798: addiu  $t0, $zero, +181   
  003f179c: lui   $at, 0x00700000     
  003f17a0: sh     $t0, -14340($at)      ; GLOBAL 0x0070c7fc
  003f17a4: lui   $at, 0x00700000     
  003f17a8: sb     $s0, -14084($at)      ; GLOBAL 0x0070c8fc
  003f17ac: lui   $at, 0x00700000     
  003f17b0: lw     $t2, -13792($at)      ; GLOBAL 0x0070ca20
  003f17b4: addiu  $t0, $t2, +1       
  003f17b8: lui   $at, 0x00700000     
  003f17bc: sw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003f17c0: addu $t2, $s4, $t2        
  003f17c4: addiu  $t0, $zero, +183   
  003f17c8: lui   $at, 0x00700000     
  003f17cc: sb     $t0, +0($t2)          ; GLOBAL 0x00650000
  003f17d0: sw     $t1, -14848($at)      ; GLOBAL 0x0070c600
  003f17d4: lui   $at, 0x00700000     
  003f17d8: sb     $t8, -14083($at)      ; GLOBAL 0x0070c8fd
  003f17dc: lui   $at, 0x00700000     
  003f17e0: sh     $s3, -14338($at)      ; GLOBAL 0x0070c7fe
  003f17e4: lui   $at, 0x00700000     
  003f17e8: lw     $t1, -13792($at)      ; GLOBAL 0x0070ca20
  003f17ec: addiu  $t0, $t1, +1       
  003f17f0: lui   $at, 0x00700000     
  003f17f4: sw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003f17f8: addu $t1, $s4, $t1        
  003f17fc: addiu  $t0, $zero, +67    
  003f1800: lui   $at, 0x00700000     
  003f1804: sb     $t0, +0($t1)          ; GLOBAL 0x00650000
  003f1808: sw     $a3, -15312($at)      ; GLOBAL 0x0070c430
  003f180c: lui   $at, 0x00700000     
  003f1810: sh     $s3, -14570($at)      ; GLOBAL 0x0070c716
  003f1814: lui   $at, 0x00700000     
  003f1818: sb     $zero, -14199($at)    ; GLOBAL 0x0070c889
  003f181c: lui   $at, 0x00700000     
  003f1820: lw     $t0, -13792($at)      ; GLOBAL 0x0070ca20
  003f1824: addiu  $a3, $t0, +1       
  003f1828: lui   $at, 0x00700000     
  003f182c: sw     $a3, -13792($at)      ; GLOBAL 0x0070ca20
  003f1830: addu $t0, $s4, $t0        
  003f1834: addiu  $a3, $zero, +201   
  003f1838: lui   $at, 0x00700000     
  003f183c: sb     $a3, +0($t0)          ; GLOBAL 0x00650000
  003f1840: sw     $a2, -14776($at)      ; GLOBAL 0x0070c648
  003f1844: lui   $at, 0x00700000     
  003f1848: sh     $s3, -14302($at)      ; GLOBAL 0x0070c822
  003f184c: lui   $at, 0x00700000     
  003f1850: sb     $s1, -14065($at)      ; GLOBAL 0x0070c90f
  003f1854: lui   $at, 0x00700000     
  003f1858: lw     $a3, -13792($at)      ; GLOBAL 0x0070ca20
  003f185c: addiu  $a2, $a3, +1       
  003f1860: lui   $at, 0x00700000     
  003f1864: sw     $a2, -13792($at)      ; GLOBAL 0x0070ca20
  003f1868: addu $a3, $s4, $a3        
  003f186c: addiu  $a2, $zero, +203   
  003f1870: lui   $at, 0x00700000     
  003f1874: sb     $a2, +0($a3)          ; GLOBAL 0x00650000
  003f1878: sw     $a1, -14768($at)      ; GLOBAL 0x0070c650
  003f187c: addiu  $a1, $zero, +201   
  003f1880: lui   $at, 0x00700000     
  003f1884: sh     $a1, -14298($at)      ; GLOBAL 0x0070c826
  003f1888: addiu  $a1, $zero, +2     
  003f188c: lui   $at, 0x00700000     
  003f1890: sb     $a1, -14063($at)      ; GLOBAL 0x0070c911
  003f1894: lui   $at, 0x00700000     
  003f1898: lw     $a2, -13792($at)      ; GLOBAL 0x0070ca20
  003f189c: addiu  $a1, $a2, +1       
  003f18a0: lui   $at, 0x00700000     
  003f18a4: sw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003f18a8: addu $a2, $s4, $a2        
  003f18ac: addiu  $a1, $zero, +202   
  003f18b0: lui   $at, 0x00700000     
  003f18b4: sb     $a1, +0($a2)          ; GLOBAL 0x00650000
  003f18b8: sw     $a0, -14772($at)      ; GLOBAL 0x0070c64c
  003f18bc: addiu  $a0, $zero, +3     
  003f18c0: lui   $at, 0x00700000     
  003f18c4: sb     $a0, -14064($at)      ; GLOBAL 0x0070c910
  003f18c8: lui   $at, 0x00700000     
  003f18cc: sh     $s3, -14300($at)      ; GLOBAL 0x0070c824
  003f18d0: lui   $at, 0x00700000     
  003f18d4: lw     $a1, -13792($at)      ; GLOBAL 0x0070ca20
  003f18d8: addiu  $a0, $a1, +1       
  003f18dc: lui   $at, 0x00700000     
  003f18e0: sw     $a0, -13792($at)      ; GLOBAL 0x0070ca20
  003f18e4: addu $a1, $s4, $a1        
  003f18e8: addiu  $a0, $zero, +206   
  003f18ec: lui   $at, 0x00700000     
  003f18f0: sb     $a0, +0($a1)          ; GLOBAL 0x00650000
  003f18f4: sw     $v1, -14756($at)      ; GLOBAL 0x0070c65c
  003f18f8: lui   $at, 0x00700000     
  003f18fc: sh     $s3, -14292($at)      ; GLOBAL 0x0070c82c
  003f1900: lui   $at, 0x00700000     
  003f1904: sb     $s1, -14060($at)      ; GLOBAL 0x0070c914
  003f1908: lui   $at, 0x00700000     
  003f190c: lw     $a0, -13792($at)      ; GLOBAL 0x0070ca20
  003f1910: addiu  $v1, $a0, +1       
  003f1914: lui   $at, 0x00700000     
  003f1918: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f191c: addu $a0, $s4, $a0        
  003f1920: addiu  $v1, $zero, +205   
  003f1924: lui   $at, 0x00700000     
  003f1928: sb     $v1, +0($a0)          ; GLOBAL 0x00650000
  003f192c: sw     $s6, -14760($at)      ; GLOBAL 0x0070c658
  003f1930: lui   $at, 0x00700000     
  003f1934: sh     $s3, -14294($at)      ; GLOBAL 0x0070c82a
  003f1938: lui   $at, 0x00700000     
  003f193c: sb     $s1, -14061($at)      ; GLOBAL 0x0070c913
  003f1940: lui   $at, 0x00700000     
  003f1944: lw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f1948: addu $a0, $s4, $v1        
  003f194c: lui   $at, 0x00700000     
  003f1950: addiu  $v1, $v1, +1       
  003f1954: sw     $v1, -13792($at)      ; GLOBAL 0x0070ca20
  003f1958: addiu  $v1, $zero, +204   
  003f195c: lui   $at, 0x00700000     
  003f1960: sb     $v1, +0($a0)          ; GLOBAL 0x00650000
  003f1964: sw     $s5, -14764($at)      ; GLOBAL 0x0070c654
  003f1968: lui   $at, 0x00700000     
  003f196c: sh     $s3, -14296($at)      ; GLOBAL 0x0070c828
  003f1970: lui   $at, 0x00700000     
  003f1974: sb     $s1, -14062($at)      ; GLOBAL 0x0070c912
  003f1978: lq     $fp, +128($sp)     
  003f197c: lq     $s7, +112($sp)     
  003f1980: lq     $s6, +96($sp)      
  003f1984: lq     $s5, +80($sp)      
  003f1988: lq     $s4, +64($sp)      
  003f198c: lq     $s3, +48($sp)      
  003f1990: lq     $s2, +32($sp)      
  003f1994: lq     $s1, +16($sp)      
  003f1998: lq     $s0, +0($sp)       
  003f199c: jr     $ra                
  003f19a0: addiu  $sp, $sp, +144     
  003f19a4: sll $zero, $zero, 0       
  003f19a8: sll $zero, $zero, 0       
  003f19ac: sll $zero, $zero, 0       
  003f19b0: addiu  $a2, $zero, +219   
  003f19b4: daddu $v1, $a2, $zero     
  003f19b8: beq    $v1, $zero, +40       ; br -> 0x003f19e4
  003f19bc: addiu  $a2, $a2, -1       
  003f19c0: lui   $a1, 0x00700000     
  003f19c4: addiu  $a1, $a1, -16688   
  003f19c8: addu $a0, $a1, $a2        
  003f19cc: daddu $v1, $a2, $zero     
  003f19d0: sb     $zero, +2641($a0)     ; GLOBAL 0x00650a51
  003f19d4: addiu  $a2, $a2, -1       
  003f19d8: sll $zero, $zero, 0       
  003f19dc: bne    $v1, $zero, -24       ; br -> 0x003f19c8
  003f19e0: sll $zero, $zero, 0       
  003f19e4: sll $zero, $zero, 0       
  003f19e8: jr     $ra                
  003f19ec: sll $zero, $zero, 0       

; globals: 0x0070ca20(x40), 0x00650000(x16), 0x0070ca28(x1), 0x0070c42c(x1), 0x0070c714(x1), 0x0070c888(x1), 0x0070c5ec(x1), 0x0070c7f4(x1), 0x0070c8f8(x1), 0x0070c5f0(x1)
