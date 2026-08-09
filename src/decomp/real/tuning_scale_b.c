/* ============================================================================
 * FUN_0019ea30  tuning_scale_b
 * module: game/tuning
 * Tuning-scale variant (table +0x24/0x28).
 * raw address: 0x0019ea30  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0019ea30(int param_1)

{
  float fVar1;
  float fVar2;
  
  if (*(char *)(*(int *)(param_1 + 0x38) + 0x44) == '\0') {
    fVar1 = *(float *)(_DAT_006f5708 + 0x24);
  }
  else {
    fVar1 = *(float *)(_DAT_006f5708 + 0x28);
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

