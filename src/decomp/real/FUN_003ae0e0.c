/* ============================================================================
 * FUN_003ae0e0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_003ae0e0(int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  
  _DAT_006fb210 = 0;
  _DAT_006fb208 = 0;
  _DAT_006fb200 = 0;
  _DAT_006fb1f8 = 0;
  _DAT_006fb1f0 = 0;
  _DAT_006fb1e8 = 0;
  _DAT_006fb1e0 = 0;
  if (*param_1 < 1) {
    _DAT_006fb1c8 = 0.0;
    _DAT_006fb1d0 = 0.0;
    _DAT_006fb1e0 = 0;
    _DAT_006fb1f8 = 0;
    _DAT_006fb1d8 = -0.0;
    _DAT_006fb1f0 = 0x80000000;
    _DAT_006fb210 = 0x80000000;
    _DAT_006fb1e8 = 0;
    _DAT_006fb200 = 0;
    _DAT_006fb208 = 0x80000000;
    return;
  }
  iVar3 = _DAT_006fb1b0 * 4 + *(int *)(param_1[6] + 8);
  iVar2 = _DAT_006fb1b8 * 4 + *(int *)(param_1[6] + 8);
  iVar1 = *(int *)param_1[5] * 0xc;
  fVar6 = *(float *)(iVar2 + iVar1);
  fVar4 = *(float *)(iVar3 + iVar1);
  iVar1 = ((int *)param_1[5])[1 % *param_1] * 0xc;
  fVar5 = *(float *)(iVar3 + iVar1);
  fVar7 = *(float *)(iVar2 + iVar1);
  _DAT_006fb1c8 = (fVar7 - fVar6) * (fVar5 + fVar4) + 0.0;
  _DAT_006fb1d0 = (fVar7 - fVar6) * (fVar4 * fVar4 + fVar5 * (fVar5 + fVar4)) + 0.0;
  _DAT_006fb1d8 = (fVar5 - fVar4) * (fVar6 * fVar6 + fVar7 * (fVar7 + fVar6)) + 0.0;
  halt_baddata();
}

