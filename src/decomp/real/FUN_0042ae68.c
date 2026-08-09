/* ============================================================================
 * FUN_0042ae68
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042ae68  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042ae68(void)

{
  undefined4 unaff_s5;
  undefined4 unaff_s7;
  undefined8 in_ac0;
  undefined1 auStack_320 [800];
  
  DPSU.H.QBL(in_ac0,auStack_320,unaff_s7);
  SUBQ.PH(auStack_320,unaff_s5);
  halt_baddata();
}

