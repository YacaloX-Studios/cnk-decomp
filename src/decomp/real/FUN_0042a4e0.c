/* ============================================================================
 * FUN_0042a4e0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_0042a4e0(int param_1)

{
  ushort uVar1;
  int iVar2;
  undefined4 unaff_retaddr;
  undefined1 auStack_20 [32];
  
  ADDU.QB(auStack_20,unaff_retaddr);
  if (*(int *)(param_1 + 0x54) == 0) {
    *(undefined **)(param_1 + 0x54) = PTR_DAT_00657754;
    iVar2 = *(int *)(param_1 + 0x54);
  }
  else {
    iVar2 = *(int *)(param_1 + 0x54);
  }
  if (*(int *)(iVar2 + 0x38) == 0) {
    FUN_00429c60();
    iVar2 = *(int *)(param_1 + 0x28);
  }
  else {
    iVar2 = *(int *)(param_1 + 0x28);
  }
  if (iVar2 == 0) {
    **(undefined4 **)(param_1 + 0x54) = 0x1d;
  }
  else {
    FUN_004299a0();
    if ((*(ushort *)(param_1 + 0xc) & 0x1000) == 0) {
      iVar2 = (**(code **)(param_1 + 0x28))(*(undefined4 *)(param_1 + 0x1c),0,1);
      if (iVar2 == -1) {
        halt_unimplemented();
      }
      uVar1 = *(ushort *)(param_1 + 0xc);
    }
    else {
      uVar1 = *(ushort *)(param_1 + 0xc);
    }
    if ((uVar1 & 4) != 0) {
      halt_unimplemented();
    }
    if ((uVar1 & 8) != 0) {
      halt_unimplemented();
    }
  }
  halt_baddata();
}

