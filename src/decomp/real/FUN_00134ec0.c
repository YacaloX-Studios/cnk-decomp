/* ============================================================================
 * FUN_00134ec0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

int FUN_00134ec0(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar2 = param_2 * 0x20 + param_1;
  iVar1 = 0;
  if ((*(char *)(iVar2 + 0x1c) != '\0') &&
     ((iVar1 = *(int *)(iVar2 + 0x2c), iVar1 == 0 || ((*(uint *)(iVar1 + 0x38) & 2) == 0)))) {
    iVar1 = 0;
  }
  return iVar1;
}

