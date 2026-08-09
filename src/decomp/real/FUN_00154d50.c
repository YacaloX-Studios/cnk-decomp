/* ============================================================================
 * FUN_00154d50
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x00154d50  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_00154d50(int param_1)

{
  int iVar1;
  
  iVar1 = 0;
  do {
    if (*(int *)(param_1 + 0x20) != 0) {
      halt_baddata();
    }
    iVar1 = iVar1 + 1;
    param_1 = param_1 + 0x14;
  } while (iVar1 < 4);
  return 0x7f7fffff;
}

