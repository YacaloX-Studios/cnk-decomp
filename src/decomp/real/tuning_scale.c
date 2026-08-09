/* ============================================================================
 * FUN_0019e150  tuning_scale
 * module: game/tuning
 * Reads a driving-tuning float from the global table (DAT_006f5708+off), scales it by a ratio, clamps against a speed delta.
 * raw address: 0x0019e150  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0019e150(int param_1)

{
  float fVar1;
  float fVar2;
  
  if (*(char *)(*(int *)(param_1 + 0x38) + 0x44) == '\0') {
    if (*(char *)(*(int *)(param_1 + 0x38) + 0xb5) == '\0') {
      fVar1 = *(float *)(_DAT_006f5708 + 0x88);
    }
    else {
      fVar1 = *(float *)(_DAT_006f5708 + 0x2cc);
    }
  }
  else if (*(char *)(*(int *)(param_1 + 0x38) + 0xb5) == '\0') {
    fVar1 = *(float *)(_DAT_006f5708 + 0x8c);
  }
  else {
    fVar1 = *(float *)(_DAT_006f5708 + 0x2d0);
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

