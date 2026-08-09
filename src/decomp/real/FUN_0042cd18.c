/* ============================================================================
 * FUN_0042cd18
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042cd18  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042cd18(void)

{
  undefined4 unaff_s1;
  undefined4 unaff_s3;
  undefined8 in_ac0;
  undefined1 auStack_50 [80];
  
  ADDU.QB(auStack_50,unaff_s1);
  DPA.W.PH(in_ac0,auStack_50,unaff_s3);
  halt_baddata();
}

