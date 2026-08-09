/* ============================================================================
 * FUN_00190370  transform_point_vu0_f
 * module: math/matrix
 * COP2 point transform with identity + scale 1.0 seed.
 * raw address: 0x00190370  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00190370(int param_1)

{
  int iVar1;
  undefined4 unaff_s4;
  undefined4 unaff_s5;
  undefined4 unaff_s6;
  undefined4 unaff_s7;
  
  iVar1 = *(int *)(param_1 + 0x94);
  setCopReg(2,unaff_s4,0x3f80000000000000);
  setCopReg(2,unaff_s5,*(undefined8 *)(iVar1 + 0xe0));
  setCopReg(2,unaff_s6,*(undefined8 *)(iVar1 + 0xf0));
  setCopReg(2,unaff_s7,*(undefined8 *)(iVar1 + 0x100));
  copFunction(2,0x1d4a9bc);
  copFunction(2,0x1d4b0bd);
  copFunction(2,0x1d4bd0a);
  getCopReg(2,unaff_s4);
  halt_baddata();
}

