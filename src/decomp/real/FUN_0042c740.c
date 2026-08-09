/* ============================================================================
 * FUN_0042c740
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042c740  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042c740(void)

{
  undefined4 unaff_s1;
  undefined4 unaff_s3;
  undefined4 unaff_retaddr;
  undefined8 in_ac0;
  undefined1 auStack_60 [96];
  
  DPA.W.PH(in_ac0,auStack_60,unaff_s3);
  ADDU.QB(auStack_60,unaff_s1);
  SUBU.QB(auStack_60,unaff_retaddr);
  halt_baddata();
}

