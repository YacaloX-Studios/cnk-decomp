/* ============================================================================
 * FUN_00551a70
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x00551a70  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_00551a70(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  
  if (param_1 < param_3) {
    uVar1 = *(undefined4 *)(param_1 * 0xc + param_2 + 8);
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

