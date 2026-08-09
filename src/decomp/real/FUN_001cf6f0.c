/* ============================================================================
 * FUN_001cf6f0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x001cf6f0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_001cf6f0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined1 *)(param_1 + 0x8c) = 1;
  *(undefined4 *)(param_1 + 0xc0) = param_4;
  halt_baddata();
}

