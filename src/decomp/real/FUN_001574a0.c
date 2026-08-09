/* ============================================================================
 * FUN_001574a0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x001574a0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_001574a0(int param_1,int param_2)

{
  float fVar1;
  float fVar2;
  
  fVar2 = 1.0;
  fVar1 = *(float *)(*(int *)(*(int *)(param_1 + 4) + 8) + 0xac) / *(float *)(param_2 + 0x28);
  if (fVar1 <= 1.0) {
    fVar2 = fVar1;
  }
  *(float *)(*(int *)(param_2 + 8) + 0x18) = 1.0 - fVar2;
  return 1;
}

