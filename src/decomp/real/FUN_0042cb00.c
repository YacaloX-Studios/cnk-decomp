/* ============================================================================
 * FUN_0042cb00
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042cb00  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042cb00(void)

{
  undefined4 unaff_s1;
  undefined4 unaff_retaddr;
  undefined8 in_ac0;
  undefined1 auStack_80 [128];
  
  ADDU.QB(auStack_80,unaff_s1);
  DPS.W.PH(in_ac0,auStack_80,unaff_retaddr);
  halt_baddata();
}

