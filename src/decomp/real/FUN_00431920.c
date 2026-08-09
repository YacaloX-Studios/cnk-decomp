/* ============================================================================
 * FUN_00431920
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_00431920(void)

{
  undefined4 unaff_s3;
  undefined4 unaff_retaddr;
  undefined8 in_ac0;
  undefined1 auStack_60 [96];
  
  SUBU.QB(auStack_60,unaff_retaddr);
  DPA.W.PH(in_ac0,auStack_60,unaff_s3);
  halt_baddata();
}

