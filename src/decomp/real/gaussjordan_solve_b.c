/* ============================================================================
 * FUN_003a09f0  gaussjordan_solve_b
 * module: math/matrix
 * Paired Gauss-Jordan pass (back-substitution half of the same solver).
 * raw address: 0x003a09f0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_003a09f0(undefined4 *param_1)

{
  int iVar1;
  float *pfVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  int iVar7;
  undefined4 *puVar8;
  float *pfVar9;
  int iVar10;
  int iVar11;
  undefined1 *puVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  float fVar16;
  undefined4 local_40 [16];
  
  puVar6 = local_40;
  puVar8 = local_40;
  puVar4 = local_40;
  puVar3 = local_40;
  puVar5 = param_1 + 4;
  iVar1 = 7;
  do {
    *puVar6 = 0;
    iVar1 = iVar1 + -1;
    puVar6[1] = 0;
    puVar6 = puVar6 + 2;
  } while (-1 < iVar1);
  iVar1 = 3;
  do {
    *puVar8 = 0x3f800000;
    iVar1 = iVar1 + -1;
    puVar8 = puVar8 + 5;
  } while (-1 < iVar1);
  iVar1 = 0;
  iVar7 = 0;
  do {
    fVar16 = 1.0 / *(float *)((int)puVar5 + iVar7);
    iVar10 = iVar1;
    iVar11 = iVar1 * 4;
    do {
      pfVar9 = (float *)((int)puVar5 + iVar11);
      iVar10 = iVar10 + 1;
      iVar11 = iVar11 + 4;
      *pfVar9 = *pfVar9 * fVar16;
    } while (iVar10 < 4);
    iVar10 = 0;
    iVar11 = 0;
    do {
      pfVar9 = (float *)((int)puVar4 + iVar11);
      iVar10 = iVar10 + 1;
      iVar11 = iVar11 + 4;
      *pfVar9 = *pfVar9 * fVar16;
      puVar12 = (undefined1 *)puVar4;
      puVar6 = puVar5;
      iVar13 = iVar1;
    } while (iVar10 <= iVar1);
    while (iVar13 = iVar13 + 1, iVar13 < 4) {
      puVar6 = puVar6 + 4;
      fVar16 = *(float *)(iVar7 + (int)puVar6);
      puVar12 = puVar12 + 0x10;
      if (fVar16 != 0.0) {
        iVar10 = 0;
        iVar11 = 0;
        do {
          pfVar9 = (float *)((int)puVar4 + iVar11);
          iVar10 = iVar10 + 1;
          pfVar2 = (float *)(puVar12 + iVar11);
          iVar11 = iVar11 + 4;
          *pfVar2 = *pfVar2 - fVar16 * *pfVar9;
          iVar14 = iVar1 * 4;
          iVar15 = iVar1;
        } while (iVar10 <= iVar1);
        do {
          iVar15 = iVar15 + 1;
          *(float *)((int)puVar6 + iVar14) =
               *(float *)((int)puVar6 + iVar14) - fVar16 * *(float *)((int)puVar5 + iVar14);
          iVar14 = iVar14 + 4;
        } while (iVar15 < 4);
      }
    }
    iVar1 = iVar1 + 1;
    puVar5 = puVar5 + 4;
    puVar4 = (undefined4 *)((int)puVar4 + 0x10);
    iVar7 = iVar7 + 4;
  } while (iVar1 < 4);
  iVar1 = 3;
  iVar7 = 0xc;
  do {
    puVar5 = puVar5 + -4;
    puVar4 = (undefined4 *)((int)puVar4 + -0x10);
    puVar6 = puVar5;
    puVar12 = (undefined1 *)puVar4;
    iVar10 = iVar1;
    while (iVar10 = iVar10 + -1, -1 < iVar10) {
      puVar6 = puVar6 + -4;
      fVar16 = *(float *)(iVar7 + (int)puVar6);
      puVar12 = puVar12 + -0x10;
      if (fVar16 != 0.0) {
        iVar11 = 3;
        iVar13 = 0xc;
        do {
          pfVar9 = (float *)((int)puVar4 + iVar13);
          iVar11 = iVar11 + -1;
          pfVar2 = (float *)(puVar12 + iVar13);
          iVar13 = iVar13 + -4;
          *pfVar2 = *pfVar2 - fVar16 * *pfVar9;
        } while (-1 < iVar11);
        iVar13 = 3;
        iVar11 = 0xc;
        do {
          pfVar9 = (float *)((int)puVar5 + iVar11);
          iVar13 = iVar13 + -1;
          pfVar2 = (float *)((int)puVar6 + iVar11);
          iVar11 = iVar11 + -4;
          *pfVar2 = *pfVar2 - fVar16 * *pfVar9;
        } while (iVar1 <= iVar13);
      }
    }
    iVar1 = iVar1 + -1;
    iVar7 = iVar7 + -4;
  } while (-1 < iVar1);
  iVar1 = 3;
  do {
    iVar1 = iVar1 + -1;
    param_1[4] = *puVar3;
    param_1[5] = puVar3[1];
    param_1[6] = puVar3[2];
    param_1[7] = puVar3[3];
    puVar3 = puVar3 + 4;
    param_1 = param_1 + 4;
  } while (-1 < iVar1);
  return 0;
}

