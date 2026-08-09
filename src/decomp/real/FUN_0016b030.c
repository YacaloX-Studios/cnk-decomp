/* ============================================================================
 * FUN_0016b030
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0016b030  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0016b030(int param_1)

{
  if (*(char *)(param_1 + 0x209) != '\0') {
    halt_baddata();
  }
  return;
}

