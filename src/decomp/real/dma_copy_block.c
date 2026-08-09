/* ============================================================================
 * FUN_00534b60  dma_copy_block
 * module: core/mem
 * 2.3 KB routine; byte-for-byte block copy with alignment handling (tagged DMA-style).
 * raw address: 0x00534b60  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00534b60(undefined4 *param_1,int param_2,uint param_3,int param_4)

{
  uint uVar1;
  int iVar2;
  int in_t0;
  int in_t1;
  uint *puVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  
  iVar5 = 0;
  iVar4 = 0;
  uVar1 = param_3 & 0xffff;
  for (uVar7 = 0; uVar7 < uVar1; uVar7 = uVar7 + 1) {
    uVar6 = (uint)*(ushort *)(in_t1 + uVar7 * 2);
    iVar5 = iVar5 + *(int *)(param_4 + uVar7 * 4);
    if (uVar6 <= *(ushort *)(param_2 + 8)) {
      uVar6 = (uint)*(ushort *)(param_2 + 8);
    }
    iVar4 = iVar4 + uVar6;
  }
  iVar4 = iVar4 - (param_3 & 0xffff);
  iVar2 = *(int *)(param_2 + 0x1c);
  puVar3 = *(uint **)(param_2 + 0x20);
  uVar7 = iVar5 + iVar4 + uVar1 * 4;
  uVar6 = (int)puVar3 + (4 - iVar2);
  if (uVar6 < uVar7) {
    if (uVar7 - iVar4 <= uVar6) {
      for (uVar7 = 0; uVar7 < uVar1; uVar7 = uVar7 + 1) {
        uVar6 = (uint)*(ushort *)(in_t1 + uVar7 * 2);
        if (uVar6 <= *(ushort *)(param_2 + 8)) {
          uVar6 = (uint)*(ushort *)(param_2 + 8);
        }
        uVar8 = uVar6 - 1 & uVar6 - (*(uint *)(param_2 + 0x1c) & uVar6 - 1);
        uVar6 = uVar8 + *(int *)(param_4 + uVar7 * 4);
        if ((uint)((int)puVar3 - iVar2) < uVar6) break;
        *(uint *)(in_t0 + uVar7 * 4) = *(uint *)(param_2 + 0x1c) + uVar8;
        iVar2 = iVar2 + uVar6;
        *puVar3 = uVar6;
        puVar3 = puVar3 + -1;
      }
      if (uVar7 == uVar1) {
        *(int *)(param_2 + 0x1c) = iVar2;
        *(uint **)(param_2 + 0x20) = puVar3;
        *param_1 = DAT_006b6490;
        halt_baddata();
      }
    }
    for (uVar7 = 0; uVar7 < uVar1; uVar7 = uVar7 + 1) {
      *(undefined4 *)(in_t0 + uVar7 * 4) = 0;
    }
    *param_1 = DAT_006b6498;
  }
  else {
    for (uVar7 = 0; uVar7 < uVar1; uVar7 = uVar7 + 1) {
      uVar6 = (uint)*(ushort *)(in_t1 + uVar7 * 2);
      if (uVar6 <= *(ushort *)(param_2 + 8)) {
        uVar6 = (uint)*(ushort *)(param_2 + 8);
      }
      uVar8 = uVar6 - 1 & uVar6 - (*(uint *)(param_2 + 0x1c) & uVar6 - 1);
      uVar6 = uVar8 + *(int *)(param_4 + uVar7 * 4);
      *(uint *)(in_t0 + uVar7 * 4) = *(uint *)(param_2 + 0x1c) + uVar8;
      *(uint *)(param_2 + 0x1c) = *(int *)(param_2 + 0x1c) + uVar6;
      *puVar3 = uVar6;
      puVar3 = puVar3 + -1;
    }
    *(uint **)(param_2 + 0x20) = puVar3;
    *param_1 = DAT_006b6490;
  }
  halt_baddata();
}

