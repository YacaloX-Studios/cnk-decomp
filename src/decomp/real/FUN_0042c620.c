/* ============================================================================
 * FUN_0042c620
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0042c620  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042c620(void)

{
  DAT_00657acc = DAT_00657acc + -1;
  if (DAT_00657acc == 0) {
    DAT_00657ac8 = 0xffffffff;
    FUN_0043cb00();
  }
  halt_baddata();
}

