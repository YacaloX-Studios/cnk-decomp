/* ============================================================================
 * FUN_00120720
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_00120720(undefined4 param_1,undefined8 *param_2,undefined8 *param_3)

{
  undefined4 in_at;
  undefined4 in_v0;
  
  setCopReg(2,in_at,*param_2);
  setCopReg(2,in_v0,*param_3);
  copFunction(2,0x1c20afe);
  copFunction(2,0x1c1106e);
  getCopReg(2,in_at);
  halt_baddata();
}

