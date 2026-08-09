/* ============================================================================
 * FUN_0043f5b8
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

int FUN_0043f5b8(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x24) % *(int *)(param_1 + 0x18);
  if (*(int *)(param_1 + 0x18) == 0) {
    trap(7);
  }
  *(int *)(param_1 + 0x24) = iVar1 + 1;
  return *(int *)(param_1 + 0x14) + iVar1 * 0x40;
}

