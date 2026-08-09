/* ============================================================================
 * FUN_0042d708
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042d708  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042d708(void)

{
  undefined4 unaff_retaddr;
  undefined1 auStack_20 [32];
  
  ADDU.QB(auStack_20,unaff_retaddr);
  FUN_00429cf0();
  FUN_00431390();
  halt_baddata();
}

