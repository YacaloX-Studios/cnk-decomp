/* ============================================================================
 * FUN_0010e780  packed_bits_write
 * module: core/bitstream
 * Stream serializer: writes `param_3` bits from a byte buffer to a packed bit-stream struct (ctx at param_1; byte ptr at +4, capacity at +8, write-bit-pos at +0x10).
 * raw address: 0x0010e780  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0010e780(int param_1,undefined4 param_2,uint param_3)

{
  undefined1 uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  byte *pbVar5;
  uint uVar6;
  undefined4 *puVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  byte bVar12;
  undefined4 local_4;
  
  uVar8 = *(uint *)(param_1 + 0x10);
  local_4 = param_2;
  if (uVar8 + param_3 <= *(uint *)(param_1 + 8)) {
    uVar10 = 0;
    uVar3 = param_3 >> 3;
    uVar9 = param_3;
    if (((uVar8 & 7) == 0) && (uVar3 != 0)) {
      iVar11 = 0;
      uVar8 = uVar8 >> 3;
      uVar9 = param_3 & 7;
      if (uVar3 == 0) {
        uVar8 = uVar8 << 3;
      }
      else {
        puVar7 = &local_4;
        do {
          uVar3 = uVar3 - 1;
          uVar1 = *(undefined1 *)puVar7;
          iVar11 = iVar11 + 1;
          puVar7 = (undefined4 *)((int)puVar7 + 1);
          *(undefined1 *)(*(int *)(param_1 + 4) + uVar8) = uVar1;
          uVar8 = uVar8 + 1;
        } while (uVar3 != 0);
        uVar8 = uVar8 * 8;
      }
      uVar10 = iVar11 << 3;
    }
    for (; uVar9 != 0; uVar9 = uVar9 - uVar3) {
      uVar3 = 8 - (uVar10 & 7);
      uVar4 = uVar8 & 7;
      if (uVar9 < uVar3) {
        uVar3 = uVar9;
      }
      if (8 - uVar4 <= uVar3) {
        uVar3 = 8 - uVar4;
      }
      if (uVar3 == 8) {
        bVar12 = 0;
      }
      else {
        bVar12 = *(byte *)(*(int *)(param_1 + 4) + (uVar8 >> 3)) &
                 ~(byte)((1 << (uVar3 & 0x1f)) + -1 << uVar4);
      }
      uVar2 = uVar8 >> 3;
      *(byte *)(*(int *)(param_1 + 4) + uVar2) = bVar12;
      if (uVar3 == 8) {
        uVar6 = (uint)*(byte *)((int)&local_4 + (uVar10 >> 3));
      }
      else {
        uVar6 = (1 << (uVar3 & 0x1f)) - 1U &
                (int)(uint)*(byte *)((int)&local_4 + (uVar10 >> 3)) >> (uVar10 & 7);
      }
      uVar10 = uVar10 + uVar3;
      uVar8 = uVar8 + uVar3;
      pbVar5 = (byte *)(*(int *)(param_1 + 4) + uVar2);
      *pbVar5 = *pbVar5 | (byte)(uVar6 << uVar4);
    }
    *(uint *)(param_1 + 0x10) = *(int *)(param_1 + 0x10) + param_3;
  }
  return;
}

