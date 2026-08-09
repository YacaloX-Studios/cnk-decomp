/* ============================================================================
 * FUN_004311f0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
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

