/* ============================================================================
 * FUN_00433ef0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x00433ef0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00433ef0(void)

{
  undefined4 unaff_s1;
  undefined4 unaff_retaddr;
  undefined8 uVar1;
  undefined1 auStack_140 [320];
  
  uVar1 = MULSA.W.PH(auStack_140,unaff_s1);
  DPAQ_S.W.PH(uVar1,auStack_140,unaff_retaddr);
  halt_baddata();
}

