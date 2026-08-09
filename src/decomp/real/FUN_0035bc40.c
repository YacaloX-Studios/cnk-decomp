/* ============================================================================
 * FUN_0035bc40
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_0035bc40(undefined4 param_1,undefined8 *param_2,undefined8 *param_3)

{
  undefined4 unaff_s4;
  undefined4 unaff_s5;
  undefined4 unaff_s6;
  undefined4 unaff_s7;
  undefined4 in_t8;
  
  setCopReg(2,unaff_s4,*param_3);
  setCopReg(2,unaff_s5,*param_2);
  setCopReg(2,unaff_s6,param_2[2]);
  setCopReg(2,unaff_s7,param_2[4]);
  setCopReg(2,in_t8,param_2[6]);
  copFunction(2,0x1d4a9bc);
  copFunction(2,0x1d4b0bd);
  copFunction(2,0x1d4b8be);
  copFunction(2,0x1c0c50b);
  getCopReg(2,unaff_s4);
  halt_baddata();
}

