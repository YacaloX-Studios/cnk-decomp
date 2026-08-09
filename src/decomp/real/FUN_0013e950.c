/* ============================================================================
 * FUN_0013e950
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0013e950  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0013e950(undefined4 *param_1)

{
  int unaff_gp;
  
  if (*(char *)(unaff_gp + -0x7be0) == '\0') {
    _DAT_006f3b38 = *param_1;
    _DAT_006f3b3c = param_1[1];
    _DAT_006f3b40 = param_1[2];
    *(undefined1 *)(unaff_gp + -0x7be0) = 1;
  }
  return;
}

