/* ============================================================================
 * FUN_003955c0  transform_point_vu0_e
 * module: math/matrix
 * COP2 point transform reading a 4x3 matrix from the object block.
 * raw address: 0x003955c0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_003955c0(int param_1,undefined8 *param_2)

{
  undefined4 unaff_s4;
  undefined4 unaff_s5;
  undefined4 unaff_s6;
  undefined4 unaff_s7;
  undefined4 in_t8;
  
  setCopReg(2,unaff_s4,*param_2);
  setCopReg(2,unaff_s5,*(undefined8 *)(param_1 + 0xa0));
  setCopReg(2,unaff_s6,*(undefined8 *)(param_1 + 0xb0));
  setCopReg(2,unaff_s7,*(undefined8 *)(param_1 + 0xc0));
  setCopReg(2,in_t8,*(undefined8 *)(param_1 + 0xd0));
  copFunction(2,0x1d4a9bc);
  copFunction(2,0x1d4b0bd);
  copFunction(2,0x1d4b8be);
  copFunction(2,0x1c0c50b);
  getCopReg(2,unaff_s4);
  halt_baddata();
}

