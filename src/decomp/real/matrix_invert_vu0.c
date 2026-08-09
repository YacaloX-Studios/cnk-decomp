/* ============================================================================
 * FUN_00381030  matrix_invert_vu0
 * module: math/matrix
 * Matrix inversion driven by COP2 (VU0 macro mode); dimension switch 1..4 (affine/4x4).
 * raw address: 0x00381030  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

bool FUN_00381030(undefined8 *param_1,int param_2,undefined4 *param_3)

{
  int iVar1;
  undefined4 in_t7;
  undefined4 unaff_s0;
  undefined4 unaff_s1;
  undefined4 unaff_s2;
  
  iVar1 = *(int *)(param_2 + 0x20);
  if (iVar1 == 4) {
    setCopReg(2,in_t7,*param_1);
    setCopReg(2,unaff_s0,param_1[2]);
    setCopReg(2,unaff_s1,param_1[4]);
    setCopReg(2,unaff_s2,param_1[6]);
    copFunction(2,0x1f07c2c);
    copFunction(2,0x1f17c6c);
    copFunction(2,0x1f27cac);
    copFunction(2,0x1cf842a);
    copFunction(2,0x1cf8c6a);
    copFunction(2,0x1cf94aa);
    copFunction(2,0x1108401);
    copFunction(2,0x1118c41);
    copFunction(2,0x1129481);
    copFunction(2,0x1108402);
    copFunction(2,0x1118c42);
    copFunction(2,0x1129482);
    halt_baddata();
  }
  if (iVar1 == 3) {
    setCopReg(2,in_t7,*param_1);
    setCopReg(2,unaff_s0,param_1[2]);
    setCopReg(2,unaff_s1,param_1[4]);
    copFunction(2,0x1f27b3c);
    copFunction(2,0x1f07c2c);
    copFunction(2,0x1f17c6c);
    copFunction(2,0x1d2842a);
    copFunction(2,0x1d28c6a);
    copFunction(2,0x1108401);
    copFunction(2,0x1118c41);
    copFunction(2,0x1108402);
    copFunction(2,0x1118c42);
    halt_baddata();
  }
  if (iVar1 == 2) {
    setCopReg(2,unaff_s0,*param_1);
    setCopReg(2,unaff_s1,param_1[2]);
    copFunction(2,0x1f2833c);
    copFunction(2,0x1f1842c);
    copFunction(2,0x1f2842a);
    copFunction(2,0x1108401);
    copFunction(2,0x1108402);
    halt_baddata();
  }
  if (iVar1 == 1) {
    *param_3 = 0x3f800000;
  }
  return iVar1 == 1;
}

