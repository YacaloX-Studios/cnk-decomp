/* ============================================================================
 * FUN_0042a818
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_0042a818(int *param_1)

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
  param_1[1] = 0;
  if ((uVar1 & 0x20) != 0) {
    halt_baddata();
  }
  if ((uVar1 & 4) == 0) {
    if ((uVar1 & 0x10) == 0) {
      halt_baddata();
    }
    if ((uVar1 & 8) == 0) {
      uVar1 = *(ushort *)(param_1 + 3);
    }
    else {
      iVar2 = FUN_004299a0();
      if (iVar2 != 0) {
        halt_baddata();
      }
      param_1[2] = 0;
      param_1[6] = 0;
      *(ushort *)(param_1 + 3) = *(ushort *)(param_1 + 3) & 0xfff7;
      uVar1 = *(ushort *)(param_1 + 3);
    }
    *(ushort *)(param_1 + 3) = uVar1 | 4;
  }
  else {
    if (param_1[0xc] == 0) {
      iVar2 = param_1[4];
      goto LAB_0042a8f0;
    }
    param_1[1] = param_1[0xf];
    if (param_1[0xf] != 0) {
      *param_1 = param_1[0xe];
      halt_baddata();
    }
  }
  iVar2 = param_1[4];
LAB_0042a8f0:
  if (iVar2 == 0) {
    FUN_0042a680(param_1);
    uVar1 = *(ushort *)(param_1 + 3);
  }
  else {
    uVar1 = *(ushort *)(param_1 + 3);
  }
  if ((uVar1 & 3) != 0) {
    FUN_0042a5e8();
  }
  *param_1 = param_1[4];
  iVar2 = (*(code *)param_1[8])(param_1[7],param_1[4],param_1[5]);
  param_1[1] = iVar2;
  uVar1 = *(ushort *)(param_1 + 3) & 0xdfff;
  *(ushort *)(param_1 + 3) = uVar1;
  if (iVar2 < 1) {
    if (iVar2 == 0) {
      uVar1 = uVar1 | 0x20;
    }
    else {
      uVar1 = uVar1 | 0x40;
      param_1[1] = 0;
    }
    *(ushort *)(param_1 + 3) = uVar1;
  }
  halt_baddata();
}

