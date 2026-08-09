/* ============================================================================
 * FUN_003f5b50
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

int FUN_003f5b50(int param_1)

{
  *(undefined4 *)(param_1 + 0x2c) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x1c) = 0x3f800000;
  *(undefined4 *)(param_1 + 0xc) = 0x3f800000;
  halt_baddata();
}

