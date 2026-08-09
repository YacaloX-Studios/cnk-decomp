/* ============================================================================
 * FUN_00165e70
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_00165e70(int param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  if (*(char *)(param_1 + 0x88) == '\0') {
    iVar1 = *(int *)(param_1 + 8);
    *param_2 = *(undefined4 *)(iVar1 + 0x6c);
    uVar2 = *(undefined4 *)(iVar1 + 0x60);
    uVar3 = *(undefined4 *)(iVar1 + 100);
    uVar4 = *(undefined4 *)(iVar1 + 0x68);
    *param_4 = *(undefined4 *)(iVar1 + 0x84);
    *param_3 = uVar2;
    param_3[1] = uVar3;
    param_3[2] = uVar4;
    return;
  }
  halt_baddata();
}

