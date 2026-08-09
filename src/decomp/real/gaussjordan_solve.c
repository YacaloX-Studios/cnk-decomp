/* ============================================================================
 * FUN_003a0730  gaussjordan_solve
 * module: math/matrix
 * In-place Gauss-Jordan elimination over a 5-column float matrix (row-scaled pivot pass); used for matrix inversion / linear solves.
 * raw address: 0x003a0730  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_003a0730(int param_1)

{
  int iVar1;
  float *pfVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  int iVar8;
  undefined4 *puVar9;
  float *pfVar10;
  int iVar11;
  int iVar12;
  undefined1 *puVar13;
  int iVar14;
  int iVar15;
  int iVar16;
  float fVar17;
  undefined4 local_a0 [40];
  
  puVar6 = local_a0;
  puVar9 = local_a0;
  puVar4 = local_a0;
  puVar3 = local_a0;
  iVar5 = param_1 + 0x10;
  iVar1 = 0x13;
  do {
    *puVar6 = 0;
    iVar1 = iVar1 + -1;
    puVar6[1] = 0;
    puVar6 = puVar6 + 2;
  } while (-1 < iVar1);
  iVar1 = 4;
  do {
    *puVar9 = 0x3f800000;
    iVar1 = iVar1 + -1;
    puVar9 = puVar9 + 9;
  } while (-1 < iVar1);
  iVar1 = 0;
  iVar7 = 0;
  do {
    fVar17 = 1.0 / *(float *)(iVar5 + iVar7);
    iVar11 = iVar1;
    iVar12 = iVar1 * 4;
    do {
      pfVar10 = (float *)(iVar5 + iVar12);
      iVar11 = iVar11 + 1;
      iVar12 = iVar12 + 4;
      *pfVar10 = *pfVar10 * fVar17;
    } while (iVar11 < 5);
    iVar11 = 0;
    iVar12 = 0;
    do {
      pfVar10 = (float *)((int)puVar4 + iVar12);
      iVar11 = iVar11 + 1;
      iVar12 = iVar12 + 4;
      *pfVar10 = *pfVar10 * fVar17;
      puVar13 = (undefined1 *)puVar4;
      iVar14 = iVar5;
      iVar8 = iVar1;
    } while (iVar11 <= iVar1);
    while (iVar8 = iVar8 + 1, iVar8 < 5) {
      iVar14 = iVar14 + 0x20;
      fVar17 = *(float *)(iVar7 + iVar14);
      puVar13 = puVar13 + 0x20;
      if (fVar17 != 0.0) {
        iVar11 = 0;
        iVar12 = 0;
        do {
          pfVar10 = (float *)((int)puVar4 + iVar12);
          iVar11 = iVar11 + 1;
          pfVar2 = (float *)(puVar13 + iVar12);
          iVar12 = iVar12 + 4;
          *pfVar2 = *pfVar2 - fVar17 * *pfVar10;
          iVar15 = iVar1 * 4;
          iVar16 = iVar1;
        } while (iVar11 <= iVar1);
        do {
          iVar16 = iVar16 + 1;
          *(float *)(iVar14 + iVar15) =
               *(float *)(iVar14 + iVar15) - fVar17 * *(float *)(iVar5 + iVar15);
          iVar15 = iVar15 + 4;
        } while (iVar16 < 5);
      }
    }
    iVar1 = iVar1 + 1;
    iVar5 = iVar5 + 0x20;
    puVar4 = (undefined4 *)((int)puVar4 + 0x20);
    iVar7 = iVar7 + 4;
  } while (iVar1 < 5);
  iVar1 = 4;
  iVar7 = 0x10;
  do {
    iVar5 = iVar5 + -0x20;
    puVar4 = (undefined4 *)((int)puVar4 + -0x20);
    iVar11 = iVar5;
    puVar13 = (undefined1 *)puVar4;
    iVar12 = iVar1;
    while (iVar12 = iVar12 + -1, -1 < iVar12) {
      iVar11 = iVar11 + -0x20;
      fVar17 = *(float *)(iVar7 + iVar11);
      puVar13 = puVar13 + -0x20;
      if (fVar17 != 0.0) {
        iVar8 = 4;
        iVar14 = 0x10;
        do {
          pfVar10 = (float *)((int)puVar4 + iVar14);
          iVar8 = iVar8 + -1;
          pfVar2 = (float *)(puVar13 + iVar14);
          iVar14 = iVar14 + -4;
          *pfVar2 = *pfVar2 - fVar17 * *pfVar10;
        } while (-1 < iVar8);
        iVar14 = 4;
        iVar8 = 0x10;
        do {
          pfVar10 = (float *)(iVar5 + iVar8);
          iVar14 = iVar14 + -1;
          pfVar2 = (float *)(iVar11 + iVar8);
          iVar8 = iVar8 + -4;
          *pfVar2 = *pfVar2 - fVar17 * *pfVar10;
        } while (iVar1 <= iVar14);
      }
    }
    iVar1 = iVar1 + -1;
    iVar7 = iVar7 + -4;
  } while (-1 < iVar1);
  puVar4 = (undefined4 *)(param_1 + 0x10);
  iVar1 = 4;
  do {
    iVar1 = iVar1 + -1;
    *puVar4 = *puVar3;
    puVar4[1] = puVar3[1];
    puVar4[2] = puVar3[2];
    puVar4[3] = puVar3[3];
    puVar4[4] = puVar3[4];
    puVar3 = puVar3 + 8;
    puVar4 = puVar4 + 8;
  } while (-1 < iVar1);
  return 0;
}

