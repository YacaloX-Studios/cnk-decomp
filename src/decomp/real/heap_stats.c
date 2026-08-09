/* ============================================================================
 * FUN_004311f0  heap_stats
 * module: core/mem
 * Walks the heap arena's 128 allocation lists, sums used bytes (&~3 aligned) and computes free space into DAT_00657f0x.
 * raw address: 0x004311f0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_004311f0(void)

{
  int iVar1;
  undefined *puVar2;
  int iVar3;
  
  iVar3 = 1;
  DAT_00657f20 = *(uint *)(PTR_DAT_00657ad8 + 4) & 0xfffffffc;
  DAT_00657f04 = DAT_00657f20 < 0x10 ^ 1;
  iVar1 = 8;
  do {
    iVar3 = iVar3 + 1;
    for (puVar2 = *(undefined **)((int)&PTR_DAT_00657adc + iVar1); puVar2 != &DAT_00657ad0 + iVar1;
        puVar2 = *(undefined **)(puVar2 + 0xc)) {
      DAT_00657f04 = DAT_00657f04 + 1;
      DAT_00657f20 = DAT_00657f20 + (*(uint *)(puVar2 + 4) & 0xfffffffc);
    }
    iVar1 = iVar3 * 8;
  } while (iVar3 < 0x80);
  DAT_00657f1c = DAT_00657f00 - DAT_00657f20;
  DAT_00657f24 = *(uint *)(PTR_DAT_00657ad8 + 4) & 0xfffffffc;
  return;
}

