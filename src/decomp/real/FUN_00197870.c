/* ============================================================================
 * FUN_00197870
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_00197870(void)

{
  char cVar1;
  
  if (_DAT_006f3568 == 0) {
    cVar1 = (&DAT_0068b650)[*(int *)(_DAT_006f35b8 + 0x24c)];
  }
  else {
    cVar1 = (&DAT_0068b650)[*(int *)(_DAT_006f3568 + 0x124)];
  }
  if (cVar1 != '\0') {
    halt_baddata();
  }
  return;
}

