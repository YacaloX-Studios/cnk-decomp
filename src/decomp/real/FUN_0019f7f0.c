/* ============================================================================
 * FUN_0019f7f0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_0019f7f0(int param_1)

{
  float fVar1;
  float fVar2;
  
  if (*(char *)(*(int *)(param_1 + 0x38) + 0x44) == '\0') {
    fVar1 = *(float *)(_DAT_006f5708 + 0x170);
  }
  else {
    fVar1 = *(float *)(_DAT_006f5708 + 0x174);
  }
  fVar1 = *(float *)(param_1 + 0x3c) * fVar1;
  fVar2 = *(float *)(param_1 + 0x60) - *(float *)(param_1 + 0x80);
  if (fVar2 <= fVar1) {
    fVar1 = fVar2;
  }
  if (0.0 < fVar1) {
    halt_baddata();
  }
  return;
}

