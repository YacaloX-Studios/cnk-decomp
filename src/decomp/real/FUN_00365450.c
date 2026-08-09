/* ============================================================================
 * FUN_00365450
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_00365450(undefined4 param_1,undefined8 *param_2)

{
  undefined4 in_at;
  
  setCopReg(2,in_at,*param_2);
  copFunction(2,0x1c1006c);
  getCopReg(2,in_at);
  halt_baddata();
}

