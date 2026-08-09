/* ============================================================================
 * FUN_0042bc88  script_step_c
 * module: game/script
 * Script/task state-machine sibling.
 * raw address: 0x0042bc88  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042bc88(int *param_1)

{
  ushort uVar1;
  int iVar2;
  undefined4 unaff_retaddr;
  undefined1 auStack_20 [32];
  
  ADDU.QB(auStack_20,unaff_retaddr);
  if (param_1[0x15] == 0) {
    param_1[0x15] = (int)PTR_DAT_00657754;
    iVar2 = param_1[0x15];
  }
  else {
    iVar2 = param_1[0x15];
  }
  if (*(int *)(iVar2 + 0x38) == 0) {
    FUN_00429c60();
    uVar1 = *(ushort *)(param_1 + 3);
  }
  else {
    uVar1 = *(ushort *)(param_1 + 3);
  }
  if ((uVar1 & 8) == 0) {
    if ((uVar1 & 0x10) == 0) {
      halt_baddata();
    }
    if ((uVar1 & 4) != 0) {
      *(ushort *)(param_1 + 3) = uVar1 & 0xffdb;
      *param_1 = param_1[4];
      param_1[1] = 0;
    }
    *(ushort *)(param_1 + 3) = *(ushort *)(param_1 + 3) | 8;
    iVar2 = param_1[4];
  }
  else {
    iVar2 = param_1[4];
  }
  if (iVar2 == 0) {
    FUN_0042a680(param_1);
    uVar1 = *(ushort *)(param_1 + 3);
  }
  else {
    uVar1 = *(ushort *)(param_1 + 3);
  }
  if ((uVar1 & 1) == 0) {
    iVar2 = 0;
    if ((uVar1 & 2) == 0) {
      iVar2 = param_1[5];
    }
    param_1[2] = iVar2;
  }
  else {
    param_1[2] = 0;
    param_1[6] = -param_1[5];
  }
  halt_baddata();
}

