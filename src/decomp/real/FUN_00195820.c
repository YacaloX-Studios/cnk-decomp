/* ============================================================================
 * FUN_00195820
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_00195820(int param_1)

{
  float fVar1;
  
  if (*(float *)(param_1 + 0xe8) < *(float *)(param_1 + 0x42c)) {
    fVar1 = *(float *)(param_1 + 0x3e4);
    if (fVar1 < 0.0) {
      fVar1 = -fVar1;
    }
    if (0.0 < (*(float *)(param_1 + 0x42c) - *(float *)(param_1 + 0xe8)) * fVar1) {
      halt_baddata();
    }
  }
  return;
}

