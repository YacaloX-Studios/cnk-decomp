/* ============================================================================
 * FUN_004312a0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_004312a0(void)

{
  undefined4 unaff_s0;
  undefined4 unaff_retaddr;
  undefined8 in_ac0;
  undefined1 auStack_60 [96];
  
  DPA.W.PH(in_ac0,auStack_60,unaff_s0);
  SUBU.QB(auStack_60,unaff_retaddr);
  FUN_0042c5c0();
  FUN_004311f0();
  halt_baddata();
}

