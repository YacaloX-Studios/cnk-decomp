/* ============================================================================
 * FUN_001a1bd0  sort_assign_rank
 * module: game/ranking
 * Selection sort of up to 8 entity pointers by int field +0x18, then assigns rank values (field +0x18 = place), skipping entries flagged at +0x14/+0x15.
 * raw address: 0x001a1bd0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_001a1bd0(int param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  int *piVar7;
  int iVar8;
  int iVar9;
  int local_20 [8];
  
  piVar5 = local_20;
  piVar7 = local_20;
  piVar1 = local_20;
  iVar3 = 0;
  do {
    if (*(int *)(param_1 + 8) == 0) break;
    *piVar5 = *(int *)(param_1 + 8);
    iVar3 = iVar3 + 1;
    param_1 = param_1 + 4;
    piVar5 = piVar5 + 1;
  } while (iVar3 < 8);
  iVar9 = 0;
  if (0 < iVar3) {
    do {
      iVar8 = iVar9 + 1;
      if (iVar8 < iVar3) {
        piVar5 = local_20 + iVar8;
        do {
          iVar6 = *piVar7;
          if (*(int *)(*piVar5 + 0x18) < *(int *)(iVar6 + 0x18)) {
            *piVar7 = *piVar5;
            *piVar5 = iVar6;
          }
          iVar8 = iVar8 + 1;
          piVar5 = piVar5 + 1;
        } while (iVar8 < iVar3);
      }
      iVar9 = iVar9 + 1;
      piVar7 = piVar7 + 1;
    } while (iVar9 < iVar3);
  }
  iVar8 = 1;
  iVar9 = 0;
  if (0 < iVar3) {
    do {
      iVar6 = iVar9 + 1;
      if (*(char *)(*piVar1 + 0x15) == '\0') {
        if (iVar6 < iVar3) {
          piVar5 = local_20 + iVar6;
          do {
            iVar4 = *piVar5;
            if ((*(char *)(iVar4 + 0x15) == '\0') &&
               (iVar2 = *piVar1, *(float *)(iVar2 + 0x38) < *(float *)(iVar4 + 0x38))) {
              *piVar1 = iVar4;
              *piVar5 = iVar2;
            }
            iVar6 = iVar6 + 1;
            piVar5 = piVar5 + 1;
          } while (iVar6 < iVar3);
        }
        *(int *)(*piVar1 + 0x18) = iVar8;
      }
      if (*(char *)(*piVar1 + 0x14) != '\0') {
        iVar8 = iVar8 + 1;
      }
      iVar9 = iVar9 + 1;
      piVar1 = piVar1 + 1;
    } while (iVar9 < iVar3);
  }
  return;
}

