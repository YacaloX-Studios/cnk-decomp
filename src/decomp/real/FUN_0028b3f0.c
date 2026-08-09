/* ============================================================================
 * FUN_0028b3f0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

undefined4 FUN_0028b3f0(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(*(int *)(param_1 + 0x10) + 8) + -2;
  iVar2 = param_2 + 1;
  if (iVar1 <= param_2 + 1) {
    iVar2 = iVar1;
  }
  iVar1 = param_2 + -1;
  if (iVar1 < 1) {
    iVar1 = 0;
  }
  if ((iVar1 <= iVar2) && (iVar1 <= iVar2)) {
    halt_baddata();
  }
  return 0xffffffff;
}

