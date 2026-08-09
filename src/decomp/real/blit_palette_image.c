/* ============================================================================
 * FUN_004518d0  blit_palette_image
 * module: gfx/image
 * CLUT / palette remap: in-place 2,4,6,8,16 bpp indexed lookups through index tables (param_3) and per-entry CLUT words (param_4).
 * raw address: 0x004518d0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_004518d0(uint *param_1,byte *param_2,int param_3,int param_4)

{
  byte bVar1;
  char cVar2;
  undefined2 uVar3;
  uint uVar4;
  uint uVar5;
  uint in_t0;
  uint uVar6;
  uint uVar7;
  byte *pbVar8;
  uint uVar9;
  uint uVar10;
  
  bVar1 = *(byte *)((int)param_1 + 9);
  uVar4 = *param_1;
  if (((bVar1 < 9) && (param_3 != 0)) || ((bVar1 == 0x10 && (param_4 != 0)))) {
    cVar2 = (char)param_1[2];
    if (cVar2 == '\0') {
      if ((bVar1 == 2) && (uVar5 = 0, pbVar8 = param_2, uVar4 != 0)) {
        do {
          uVar7 = (uint)*pbVar8;
          uVar5 = uVar5 + 4;
          uVar10 = uVar7 & 0xc0;
          uVar6 = uVar7 & 0x30;
          uVar9 = uVar7 & 0xc;
          uVar7 = uVar7 & 3;
          *pbVar8 = (byte)((int)(uint)*(byte *)(param_3 +
                                               (uVar7 | uVar7 << 2 | uVar7 << 6 | uVar7 << 4)) >> 6)
                    | (byte)((int)(uint)*(byte *)(param_3 +
                                                 ((int)uVar9 >> 2 | uVar9 | uVar9 << 4 | uVar9 << 2)
                                                 ) >> 4) & 0xc |
                      *(byte *)(param_3 +
                               ((int)uVar10 >> 6 | (int)uVar10 >> 4 | uVar10 | (int)uVar10 >> 2)) &
                      0xc0 | (byte)((int)(uint)*(byte *)(param_3 +
                                                        ((int)uVar6 >> 4 |
                                                        (int)uVar6 >> 2 | uVar6 | uVar6 << 2)) >> 2)
                             & 0x30;
          pbVar8 = pbVar8 + 1;
        } while (uVar5 < uVar4);
      }
      cVar2 = *(char *)((int)param_1 + 9);
      if (cVar2 == '\x04') {
        uVar5 = 0;
        if (uVar4 != 0) {
          if (8 < uVar4 + 1 >> 1) {
            do {
              uVar5 = uVar5 + 0x10;
              uVar7 = *param_2 & 0xf0;
              uVar6 = *param_2 & 0xf;
              *param_2 = *(byte *)(param_3 + (uVar7 | (int)uVar7 >> 4)) & 0xf0 |
                         (byte)((int)(uint)*(byte *)(param_3 + (uVar6 | uVar6 << 4)) >> 4);
              uVar7 = param_2[1] & 0xf0;
              uVar6 = param_2[1] & 0xf;
              param_2[1] = *(byte *)(param_3 + (uVar7 | (int)uVar7 >> 4)) & 0xf0 |
                           (byte)((int)(uint)*(byte *)(param_3 + (uVar6 | uVar6 << 4)) >> 4);
              uVar7 = param_2[2] & 0xf0;
              uVar6 = param_2[2] & 0xf;
              param_2[2] = *(byte *)(param_3 + (uVar7 | (int)uVar7 >> 4)) & 0xf0 |
                           (byte)((int)(uint)*(byte *)(param_3 + (uVar6 | uVar6 << 4)) >> 4);
              uVar7 = param_2[3] & 0xf0;
              uVar6 = param_2[3] & 0xf;
              param_2[3] = *(byte *)(param_3 + (uVar7 | (int)uVar7 >> 4)) & 0xf0 |
                           (byte)((int)(uint)*(byte *)(param_3 + (uVar6 | uVar6 << 4)) >> 4);
              uVar7 = param_2[4] & 0xf0;
              uVar6 = param_2[4] & 0xf;
              param_2[4] = *(byte *)(param_3 + (uVar7 | (int)uVar7 >> 4)) & 0xf0 |
                           (byte)((int)(uint)*(byte *)(param_3 + (uVar6 | uVar6 << 4)) >> 4);
              uVar7 = param_2[5] & 0xf0;
              uVar6 = param_2[5] & 0xf;
              param_2[5] = *(byte *)(param_3 + (uVar7 | (int)uVar7 >> 4)) & 0xf0 |
                           (byte)((int)(uint)*(byte *)(param_3 + (uVar6 | uVar6 << 4)) >> 4);
              uVar7 = param_2[6] & 0xf0;
              uVar6 = param_2[6] & 0xf;
              param_2[6] = *(byte *)(param_3 + (uVar7 | (int)uVar7 >> 4)) & 0xf0 |
                           (byte)((int)(uint)*(byte *)(param_3 + (uVar6 | uVar6 << 4)) >> 4);
              uVar7 = param_2[7] & 0xf0;
              uVar6 = param_2[7] & 0xf;
              param_2[7] = *(byte *)(param_3 + (uVar7 | (int)uVar7 >> 4)) & 0xf0 |
                           (byte)((int)(uint)*(byte *)(param_3 + (uVar6 | uVar6 << 4)) >> 4);
              param_2 = param_2 + 8;
            } while (uVar5 < uVar4 - 0x10);
          }
          for (; uVar5 < uVar4; uVar5 = uVar5 + 2) {
            uVar7 = *param_2 & 0xf0;
            uVar6 = *param_2 & 0xf;
            *param_2 = *(byte *)(param_3 + (uVar7 | (int)uVar7 >> 4)) & 0xf0 |
                       (byte)((int)(uint)*(byte *)(param_3 + (uVar6 | uVar6 << 4)) >> 4);
            param_2 = param_2 + 1;
          }
        }
      }
      else if (cVar2 == '\b') {
        uVar5 = 0;
        if (uVar4 != 0) {
          if (8 < uVar4) {
            do {
              uVar5 = uVar5 + 8;
              *param_2 = *(byte *)(param_3 + (uint)*param_2);
              param_2[1] = *(byte *)(param_3 + (uint)param_2[1]);
              param_2[2] = *(byte *)(param_3 + (uint)param_2[2]);
              param_2[3] = *(byte *)(param_3 + (uint)param_2[3]);
              param_2[4] = *(byte *)(param_3 + (uint)param_2[4]);
              param_2[5] = *(byte *)(param_3 + (uint)param_2[5]);
              param_2[6] = *(byte *)(param_3 + (uint)param_2[6]);
              param_2[7] = *(byte *)(param_3 + (uint)param_2[7]);
              param_2 = param_2 + 8;
            } while (uVar5 < uVar4 - 8);
          }
          for (; uVar5 < uVar4; uVar5 = uVar5 + 1) {
            *param_2 = *(byte *)(param_3 + (uint)*param_2);
            param_2 = param_2 + 1;
          }
        }
      }
      else if ((cVar2 == '\x10') && (uVar5 = 0, uVar4 != 0)) {
        if (8 < uVar4) {
          do {
            uVar5 = uVar5 + 8;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[1] >> (in_t0 & 0x1f)) * 4) +
                     (uint)*param_2 * 2);
            *param_2 = (byte)((ushort)uVar3 >> 8);
            param_2[1] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[3] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[2] * 2);
            param_2[2] = (byte)((ushort)uVar3 >> 8);
            param_2[3] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[5] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[4] * 2);
            param_2[4] = (byte)((ushort)uVar3 >> 8);
            param_2[5] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[7] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[6] * 2);
            param_2[6] = (byte)((ushort)uVar3 >> 8);
            param_2[7] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[9] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[8] * 2);
            param_2[8] = (byte)((ushort)uVar3 >> 8);
            param_2[9] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[0xb] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[10] * 2);
            param_2[10] = (byte)((ushort)uVar3 >> 8);
            param_2[0xb] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[0xd] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[0xc] * 2);
            param_2[0xc] = (byte)((ushort)uVar3 >> 8);
            param_2[0xd] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[0xf] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[0xe] * 2);
            param_2[0xe] = (byte)((ushort)uVar3 >> 8);
            param_2[0xf] = (byte)uVar3;
            param_2 = param_2 + 0x10;
          } while (uVar5 < uVar4 - 8);
        }
        for (; uVar5 < uVar4; uVar5 = uVar5 + 1) {
          uVar3 = *(undefined2 *)
                   (*(int *)(param_4 + ((int)(uint)param_2[1] >> (in_t0 & 0x1f)) * 4) +
                   (uint)*param_2 * 2);
          *param_2 = (byte)((ushort)uVar3 >> 8);
          param_2[1] = (byte)uVar3;
          param_2 = param_2 + 2;
        }
      }
    }
    else if (cVar2 == '\x04') {
      if (bVar1 == 8) {
        uVar5 = 0;
        if (uVar4 != 0) {
          if (8 < uVar4) {
            do {
              uVar5 = uVar5 + 8;
              *param_2 = *(byte *)(param_3 + (uint)*param_2);
              param_2[2] = *(byte *)(param_3 + (uint)param_2[2]);
              param_2[4] = *(byte *)(param_3 + (uint)param_2[4]);
              param_2[6] = *(byte *)(param_3 + (uint)param_2[6]);
              param_2[8] = *(byte *)(param_3 + (uint)param_2[8]);
              param_2[10] = *(byte *)(param_3 + (uint)param_2[10]);
              param_2[0xc] = *(byte *)(param_3 + (uint)param_2[0xc]);
              param_2[0xe] = *(byte *)(param_3 + (uint)param_2[0xe]);
              param_2 = param_2 + 0x10;
            } while (uVar5 < uVar4 - 8);
          }
          for (; uVar5 < uVar4; uVar5 = uVar5 + 1) {
            *param_2 = *(byte *)(param_3 + (uint)*param_2);
            param_2 = param_2 + 2;
          }
        }
      }
      else {
        uVar5 = 0;
        if (uVar4 != 0) {
          if (8 < uVar4) {
            do {
              uVar5 = uVar5 + 8;
              uVar3 = *(undefined2 *)
                       (*(int *)(param_4 + ((int)(uint)param_2[1] >> (in_t0 & 0x1f)) * 4) +
                       (uint)*param_2 * 2);
              *param_2 = (byte)((ushort)uVar3 >> 8);
              param_2[1] = (byte)uVar3;
              uVar3 = *(undefined2 *)
                       (*(int *)(param_4 + ((int)(uint)param_2[5] >> (in_t0 & 0x1f)) * 4) +
                       (uint)param_2[4] * 2);
              param_2[4] = (byte)((ushort)uVar3 >> 8);
              param_2[5] = (byte)uVar3;
              uVar3 = *(undefined2 *)
                       (*(int *)(param_4 + ((int)(uint)param_2[9] >> (in_t0 & 0x1f)) * 4) +
                       (uint)param_2[8] * 2);
              param_2[8] = (byte)((ushort)uVar3 >> 8);
              param_2[9] = (byte)uVar3;
              uVar3 = *(undefined2 *)
                       (*(int *)(param_4 + ((int)(uint)param_2[0xd] >> (in_t0 & 0x1f)) * 4) +
                       (uint)param_2[0xc] * 2);
              param_2[0xc] = (byte)((ushort)uVar3 >> 8);
              param_2[0xd] = (byte)uVar3;
              uVar3 = *(undefined2 *)
                       (*(int *)(param_4 + ((int)(uint)param_2[0x11] >> (in_t0 & 0x1f)) * 4) +
                       (uint)param_2[0x10] * 2);
              param_2[0x10] = (byte)((ushort)uVar3 >> 8);
              param_2[0x11] = (byte)uVar3;
              uVar3 = *(undefined2 *)
                       (*(int *)(param_4 + ((int)(uint)param_2[0x15] >> (in_t0 & 0x1f)) * 4) +
                       (uint)param_2[0x14] * 2);
              param_2[0x14] = (byte)((ushort)uVar3 >> 8);
              param_2[0x15] = (byte)uVar3;
              uVar3 = *(undefined2 *)
                       (*(int *)(param_4 + ((int)(uint)param_2[0x19] >> (in_t0 & 0x1f)) * 4) +
                       (uint)param_2[0x18] * 2);
              param_2[0x18] = (byte)((ushort)uVar3 >> 8);
              param_2[0x19] = (byte)uVar3;
              uVar3 = *(undefined2 *)
                       (*(int *)(param_4 + ((int)(uint)param_2[0x1d] >> (in_t0 & 0x1f)) * 4) +
                       (uint)param_2[0x1c] * 2);
              param_2[0x1c] = (byte)((ushort)uVar3 >> 8);
              param_2[0x1d] = (byte)uVar3;
              param_2 = param_2 + 0x20;
            } while (uVar5 < uVar4 - 8);
          }
          for (; uVar5 < uVar4; uVar5 = uVar5 + 1) {
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[1] >> (in_t0 & 0x1f)) * 4) +
                     (uint)*param_2 * 2);
            *param_2 = (byte)((ushort)uVar3 >> 8);
            param_2[1] = (byte)uVar3;
            param_2 = param_2 + 4;
          }
        }
      }
    }
    else if (cVar2 == '\x06') {
      if (bVar1 == 8) {
        uVar5 = 0;
        if (uVar4 != 0) {
          if (8 < uVar4) {
            do {
              uVar5 = uVar5 + 8;
              *param_2 = *(byte *)(param_3 + (uint)*param_2);
              param_2[1] = *(byte *)(param_3 + (uint)param_2[1]);
              param_2[2] = *(byte *)(param_3 + (uint)param_2[2]);
              param_2[4] = *(byte *)(param_3 + (uint)param_2[4]);
              param_2[5] = *(byte *)(param_3 + (uint)param_2[5]);
              param_2[6] = *(byte *)(param_3 + (uint)param_2[6]);
              param_2[8] = *(byte *)(param_3 + (uint)param_2[8]);
              param_2[9] = *(byte *)(param_3 + (uint)param_2[9]);
              param_2[10] = *(byte *)(param_3 + (uint)param_2[10]);
              param_2[0xc] = *(byte *)(param_3 + (uint)param_2[0xc]);
              param_2[0xd] = *(byte *)(param_3 + (uint)param_2[0xd]);
              param_2[0xe] = *(byte *)(param_3 + (uint)param_2[0xe]);
              param_2[0x10] = *(byte *)(param_3 + (uint)param_2[0x10]);
              param_2[0x11] = *(byte *)(param_3 + (uint)param_2[0x11]);
              param_2[0x12] = *(byte *)(param_3 + (uint)param_2[0x12]);
              param_2[0x14] = *(byte *)(param_3 + (uint)param_2[0x14]);
              param_2[0x15] = *(byte *)(param_3 + (uint)param_2[0x15]);
              param_2[0x16] = *(byte *)(param_3 + (uint)param_2[0x16]);
              param_2[0x18] = *(byte *)(param_3 + (uint)param_2[0x18]);
              param_2[0x19] = *(byte *)(param_3 + (uint)param_2[0x19]);
              param_2[0x1a] = *(byte *)(param_3 + (uint)param_2[0x1a]);
              param_2[0x1c] = *(byte *)(param_3 + (uint)param_2[0x1c]);
              param_2[0x1d] = *(byte *)(param_3 + (uint)param_2[0x1d]);
              param_2[0x1e] = *(byte *)(param_3 + (uint)param_2[0x1e]);
              param_2 = param_2 + 0x20;
            } while (uVar5 < uVar4 - 8);
          }
          for (; uVar5 < uVar4; uVar5 = uVar5 + 1) {
            *param_2 = *(byte *)(param_3 + (uint)*param_2);
            param_2[1] = *(byte *)(param_3 + (uint)param_2[1]);
            param_2[2] = *(byte *)(param_3 + (uint)param_2[2]);
            param_2 = param_2 + 4;
          }
        }
      }
      else {
        uVar5 = 0;
        if (uVar4 != 0) {
          do {
            uVar5 = uVar5 + 1;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[1] >> (in_t0 & 0x1f)) * 4) +
                     (uint)*param_2 * 2);
            *param_2 = (byte)((ushort)uVar3 >> 8);
            param_2[1] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[3] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[2] * 2);
            param_2[2] = (byte)((ushort)uVar3 >> 8);
            param_2[3] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[5] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[4] * 2);
            param_2[4] = (byte)((ushort)uVar3 >> 8);
            param_2[5] = (byte)uVar3;
            param_2 = param_2 + 8;
          } while (uVar5 < uVar4);
        }
      }
    }
    else if (cVar2 == '\x02') {
      if (bVar1 == 8) {
        uVar5 = 0;
        if (uVar4 != 0) {
          if (8 < uVar4) {
            do {
              uVar5 = uVar5 + 8;
              *param_2 = *(byte *)(param_3 + (uint)*param_2);
              param_2[1] = *(byte *)(param_3 + (uint)param_2[1]);
              param_2[2] = *(byte *)(param_3 + (uint)param_2[2]);
              param_2[3] = *(byte *)(param_3 + (uint)param_2[3]);
              param_2[4] = *(byte *)(param_3 + (uint)param_2[4]);
              param_2[5] = *(byte *)(param_3 + (uint)param_2[5]);
              param_2[6] = *(byte *)(param_3 + (uint)param_2[6]);
              param_2[7] = *(byte *)(param_3 + (uint)param_2[7]);
              param_2[8] = *(byte *)(param_3 + (uint)param_2[8]);
              param_2[9] = *(byte *)(param_3 + (uint)param_2[9]);
              param_2[10] = *(byte *)(param_3 + (uint)param_2[10]);
              param_2[0xb] = *(byte *)(param_3 + (uint)param_2[0xb]);
              param_2[0xc] = *(byte *)(param_3 + (uint)param_2[0xc]);
              param_2[0xd] = *(byte *)(param_3 + (uint)param_2[0xd]);
              param_2[0xe] = *(byte *)(param_3 + (uint)param_2[0xe]);
              param_2[0xf] = *(byte *)(param_3 + (uint)param_2[0xf]);
              param_2[0x10] = *(byte *)(param_3 + (uint)param_2[0x10]);
              param_2[0x11] = *(byte *)(param_3 + (uint)param_2[0x11]);
              param_2[0x12] = *(byte *)(param_3 + (uint)param_2[0x12]);
              param_2[0x13] = *(byte *)(param_3 + (uint)param_2[0x13]);
              param_2[0x14] = *(byte *)(param_3 + (uint)param_2[0x14]);
              param_2[0x15] = *(byte *)(param_3 + (uint)param_2[0x15]);
              param_2[0x16] = *(byte *)(param_3 + (uint)param_2[0x16]);
              param_2[0x17] = *(byte *)(param_3 + (uint)param_2[0x17]);
              param_2 = param_2 + 0x18;
            } while (uVar5 < uVar4 - 8);
          }
          for (; uVar5 < uVar4; uVar5 = uVar5 + 1) {
            *param_2 = *(byte *)(param_3 + (uint)*param_2);
            param_2[1] = *(byte *)(param_3 + (uint)param_2[1]);
            param_2[2] = *(byte *)(param_3 + (uint)param_2[2]);
            param_2 = param_2 + 3;
          }
        }
      }
      else {
        uVar5 = 0;
        if (uVar4 != 0) {
          do {
            uVar5 = uVar5 + 1;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[1] >> (in_t0 & 0x1f)) * 4) +
                     (uint)*param_2 * 2);
            *param_2 = (byte)((ushort)uVar3 >> 8);
            param_2[1] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[3] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[2] * 2);
            param_2[2] = (byte)((ushort)uVar3 >> 8);
            param_2[3] = (byte)uVar3;
            uVar3 = *(undefined2 *)
                     (*(int *)(param_4 + ((int)(uint)param_2[5] >> (in_t0 & 0x1f)) * 4) +
                     (uint)param_2[4] * 2);
            param_2[4] = (byte)((ushort)uVar3 >> 8);
            param_2[5] = (byte)uVar3;
            param_2 = param_2 + 6;
          } while (uVar5 < uVar4);
        }
      }
    }
  }
  halt_baddata();
}

