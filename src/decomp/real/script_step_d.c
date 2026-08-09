/* ============================================================================
 * FUN_0042a680  script_step_d
 * module: game/script
 * Script/task state-machine sibling.
 * raw address: 0x0042a680  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042a680(int *param_1)

{
  ushort uVar1;
  int iVar2;
  undefined4 unaff_s0;
  undefined8 in_ac0;
  undefined1 auStack_90 [4];
  uint local_8c;
  
  DPS.W.PH(in_ac0,auStack_90,unaff_s0);
  if ((*(ushort *)(param_1 + 3) & 2) != 0) {
    param_1[5] = 1;
    param_1[4] = (int)param_1 + 0x43;
    *param_1 = (int)param_1 + 0x43;
    halt_baddata();
  }
  if (*(short *)((int)param_1 + 0xe) < 0) {
    uVar1 = *(ushort *)(param_1 + 3);
  }
  else {
    iVar2 = FUN_00429760();
    if (iVar2 < 0) {
      uVar1 = *(ushort *)(param_1 + 3);
    }
    else if ((local_8c & 0xf000) == 0x8000) {
      uVar1 = *(ushort *)(param_1 + 3);
      if ((code *)param_1[10] == FUN_0042ac48) {
        param_1[0x13] = 0x400;
        uVar1 = uVar1 | 0x400;
        goto LAB_0042a710;
      }
    }
    else {
      uVar1 = *(ushort *)(param_1 + 3);
    }
  }
  uVar1 = uVar1 | 0x800;
LAB_0042a710:
  *(ushort *)(param_1 + 3) = uVar1;
  param_1[4] = (int)param_1 + 0x43;
  param_1[5] = 1;
  *(ushort *)(param_1 + 3) = *(ushort *)(param_1 + 3) | 2;
  *param_1 = (int)param_1 + 0x43;
  halt_baddata();
}

