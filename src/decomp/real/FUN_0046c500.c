/* ============================================================================
 * FUN_0046c500
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0046c500  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

char * FUN_0046c500(void)

{
  char *pcVar1;
  int iVar2;
  
  pcVar1 = &DAT_0065caa0;
  if (DAT_0065caa0 != '\0') {
    for (iVar2 = 1;
        (pcVar1 = (char *)0x0, iVar2 < 0x10 &&
        (pcVar1 = &DAT_0065caa0 + iVar2 * 0x44, *pcVar1 != '\0')); iVar2 = iVar2 + 1) {
    }
  }
  return pcVar1;
}

