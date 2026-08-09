/* ============================================================================
 * FUN_00433090
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_00433090(void)

{
  undefined4 unaff_s1;
  undefined4 unaff_s7;
  undefined4 unaff_retaddr;
  undefined8 in_ac0;
  undefined8 uVar1;
  undefined1 auStack_280 [640];
  
  SUBU.PH(auStack_280,unaff_s7);
  uVar1 = DPAU.H.QBR(in_ac0,auStack_280,unaff_s1);
  DPSX.W.PH(uVar1,auStack_280,unaff_retaddr);
  halt_baddata();
}

