/* ============================================================================
 * FUN_001b6340
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

undefined4 FUN_001b6340(undefined4 param_1,undefined8 *param_2,undefined8 *param_3,int param_4)

{
  undefined8 uVar1;
  undefined4 in_at;
  
  if (param_4 == 2) {
    halt_baddata();
  }
  if (param_4 == 1) {
    halt_baddata();
  }
  if ((param_4 == 0) || (param_4 == 3)) {
    setCopReg(2,in_at,*param_2);
    setCopReg(2,3,*param_3);
    copFunction(2,0x1c20868);
    uVar1 = getCopReg(2,in_at);
    *param_2 = uVar1;
  }
  return 1;
}

