/* ============================================================================
 * FUN_00431390
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_00431390(void)

{
  undefined4 unaff_s0;
  undefined4 unaff_retaddr;
  undefined8 in_ac0;
  undefined8 uVar1;
  undefined1 auStack_80 [128];
  
  uVar1 = DPA.W.PH(in_ac0,auStack_80,unaff_s0);
  DPS.W.PH(uVar1,auStack_80,unaff_retaddr);
  halt_baddata();
}

