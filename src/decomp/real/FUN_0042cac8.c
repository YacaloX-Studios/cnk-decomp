/* ============================================================================
 * FUN_0042cac8
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042cac8  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042cac8(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 unaff_retaddr;
  undefined1 auStack_20 [32];
  
  ADDU.QB(auStack_20,unaff_retaddr);
  iVar1 = FUN_0042c660();
  *(undefined4 *)(iVar1 + 0x14) = param_2;
  halt_baddata();
}

