/* ============================================================================
 * FUN_001a1800  kart_state_check
 * module: game/kart
 * Kart/character state probe: reads entity->driver block, checks AI-state code == 7 and a speed threshold.
 * raw address: 0x001a1800  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_001a1800(undefined4 param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *(int *)(*(int *)(param_2 + 4) + 0x78);
  if (*(int *)(iVar1 + 0x3e0) == 7) {
    return;
  }
  if ((6.0 < *(float *)(iVar1 + 0x42c)) && (*(char *)(iVar1 + 0x429) == '\0')) {
    halt_baddata();
  }
  halt_baddata();
}

