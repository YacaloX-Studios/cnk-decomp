/* ============================================================================
 * FUN_0042d770
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042d770  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042d770(void)

{
  undefined4 unaff_s2;
  undefined4 unaff_s6;
  undefined8 uVar1;
  undefined1 auStack_f0 [240];
  
  uVar1 = MULSA.W.PH(auStack_f0,unaff_s6);
  DPS.W.PH(uVar1,auStack_f0,unaff_s2);
  halt_baddata();
}

