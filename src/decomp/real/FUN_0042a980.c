/* ============================================================================
 * FUN_0042a980
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042a980  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042a980(int *param_1)

{
  int iVar1;
  undefined4 unaff_retaddr;
  undefined1 auStack_20 [32];
  
  ADDU.QB(auStack_20,unaff_retaddr);
  iVar1 = FUN_0042a818(param_1);
  if (iVar1 == 0) {
    param_1[1] = param_1[1] + -1;
    *param_1 = *param_1 + 1;
  }
  halt_baddata();
}

