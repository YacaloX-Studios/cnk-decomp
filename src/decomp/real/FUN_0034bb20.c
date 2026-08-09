/* ============================================================================
 * FUN_0034bb20
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_0034bb20(undefined4 param_1,undefined8 *param_2,undefined8 *param_3)

{
  undefined4 in_at;
  undefined1 local_10 [16];
  
  setCopReg(2,in_at,*param_2);
  setCopReg(2,local_10,*param_3);
  copFunction(2,0x1c2086c);
  getCopReg(2,in_at);
  halt_baddata();
}

