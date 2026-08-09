/* ============================================================================
 * FUN_0010ee50  packed_bits_read
 * module: core/bitstream
 * Stream deserializer: reads `param_2` bits from a packed bit-stream struct (byte ptr at +4, read-bit-pos at +0xc, limit at +0x10). Inverse of packed_bits_write.
 * raw address: 0x0010ee50  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_0010ee50(int param_1,uint param_2)

{
  undefined1 *puVar1;
  uint uVar2;
  byte *pbVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  undefined4 *puVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  byte bVar12;
  undefined4 local_4;
  
  uVar8 = *(uint *)(param_1 + 0xc);
  local_4 = 0;
  if (uVar8 + param_2 <= *(uint *)(param_1 + 0x10)) {
    local_4 = 0;
    uVar10 = 0;
    uVar4 = param_2 >> 3;
    uVar9 = param_2;
    if (((uVar8 & 7) == 0) && (uVar4 != 0)) {
      iVar11 = 0;
      uVar8 = uVar8 >> 3;
      uVar9 = param_2 & 7;
      if (uVar4 == 0) {
        uVar8 = uVar8 << 3;
      }
      else {
        puVar7 = &local_4;
        iVar5 = *(int *)(param_1 + 4);
        do {
          uVar4 = uVar4 - 1;
          puVar1 = (undefined1 *)(iVar5 + uVar8);
          iVar11 = iVar11 + 1;
          uVar8 = uVar8 + 1;
          *(undefined1 *)puVar7 = *puVar1;
          puVar7 = (undefined4 *)((int)puVar7 + 1);
        } while (uVar4 != 0);
        uVar8 = uVar8 * 8;
      }
      uVar10 = iVar11 << 3;
    }
    for (; uVar9 != 0; uVar9 = uVar9 - uVar4) {
      uVar6 = uVar10 & 7;
      uVar2 = 8 - (uVar8 & 7);
      uVar4 = 8 - uVar6;
      if (uVar9 < 8 - uVar6) {
        uVar4 = uVar9;
      }
      if (uVar2 <= uVar4) {
        uVar4 = uVar2;
      }
      if (uVar4 == 8) {
        bVar12 = 0;
      }
      else {
        bVar12 = *(byte *)((int)&local_4 + (uVar10 >> 3)) &
                 ~(byte)((1 << (uVar4 & 0x1f)) + -1 << uVar6);
      }
      pbVar3 = (byte *)((int)&local_4 + (uVar10 >> 3));
      *pbVar3 = bVar12;
      if (uVar4 == 8) {
        uVar2 = (uint)*(byte *)(*(int *)(param_1 + 4) + (uVar8 >> 3));
      }
      else {
        uVar2 = (1 << (uVar4 & 0x1f)) - 1U &
                (int)(uint)*(byte *)(*(int *)(param_1 + 4) + (uVar8 >> 3)) >> (uVar8 & 7);
      }
      uVar10 = uVar10 + uVar4;
      uVar8 = uVar8 + uVar4;
      *pbVar3 = *pbVar3 | (byte)(uVar2 << uVar6);
    }
    *(uint *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + param_2;
  }
  return local_4;
}

