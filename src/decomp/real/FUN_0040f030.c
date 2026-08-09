/* ============================================================================
 * FUN_0040f030
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0040f030  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0040f030(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  
  for (iVar1 = 0; (iVar1 < 10 && (*(int *)(iVar1 * 8 + 0x702f50) != 0)); iVar1 = iVar1 + 1) {
  }
  *(undefined4 *)(iVar1 * 8 + 0x702f50) = param_1;
  *(undefined4 *)(iVar1 * 8 + 0x702f54) = param_2;
  return;
}

