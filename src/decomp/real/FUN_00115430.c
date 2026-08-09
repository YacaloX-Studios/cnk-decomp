/* ============================================================================
 * FUN_00115430
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

int FUN_00115430(int param_1)

{
  int iVar1;
  
  iVar1 = (*(int *)(param_1 + 0x11944) + -1) * 0xc + param_1;
  return *(int *)(iVar1 + 0xc) + *(int *)(iVar1 + 8);
}

