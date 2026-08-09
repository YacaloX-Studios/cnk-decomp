/* ============================================================================
 * FUN_0042c280
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042c280  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042c280(void)

{
  undefined4 unaff_s2;
  undefined4 unaff_s4;
  undefined8 in_ac0;
  undefined1 auStack_70 [112];
  
  SUBU.QB(auStack_70,unaff_s4);
  DPA.W.PH(in_ac0,auStack_70,unaff_s2);
  halt_baddata();
}

