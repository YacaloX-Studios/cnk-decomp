/* ============================================================================
 * FUN_004299a0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x004299a0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_004299a0(void)

{
  undefined4 unaff_s1;
  undefined4 unaff_retaddr;
  undefined8 in_ac0;
  undefined1 auStack_40 [64];
  
  ADDU.QB(auStack_40,unaff_s1);
  DPA.W.PH(in_ac0,auStack_40,unaff_retaddr);
  halt_baddata();
}

