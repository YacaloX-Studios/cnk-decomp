/* ============================================================================
 * FUN_00540780
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x00540780  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_00540780(int param_1,undefined1 *param_2)

{
  undefined4 uVar1;
  
  if (((*(char *)(param_1 + 0x58) == '\0') && (*(int *)(param_1 + 0x54) != 2)) &&
     (param_2 != (undefined1 *)0x0)) {
    uVar1 = 1;
    *param_2 = *(undefined1 *)(param_1 + 0x50);
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

