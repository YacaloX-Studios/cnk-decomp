/* ============================================================================
 * FUN_0019f130
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_0019f130(int param_1)

{
  float fVar1;
  float fVar2;
  
  fVar1 = *(float *)(param_1 + 0x60) - *(float *)(param_1 + 0x80);
  fVar2 = *(float *)(param_1 + 0x3c) * *(float *)(_DAT_006f5708 + 0x268);
  if (fVar1 <= fVar2) {
    fVar2 = fVar1;
  }
  if (0.0 < fVar2) {
    halt_baddata();
  }
  return;
}

