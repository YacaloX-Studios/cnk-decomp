/* ============================================================================
 * FUN_0047f4a0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

char * FUN_0047f4a0(void)

{
  char *pcVar1;
  int iVar2;
  
  pcVar1 = &DAT_0066e2e0;
  if (DAT_0066e2e0 != '\0') {
    for (iVar2 = 1;
        (pcVar1 = (char *)0x0, iVar2 < 0x10 &&
        (pcVar1 = &DAT_0066e2e0 + iVar2 * 0x238, *pcVar1 != '\0')); iVar2 = iVar2 + 1) {
    }
  }
  return pcVar1;
}

