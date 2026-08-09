/* ============================================================================
 * FUN_0022ade0  layout_screen_rect
 * module: ui/layout
 * HUD/UI geometry setup using 800x420 screen-space coordinates (safe-area rectangle math).
 * raw address: 0x0022ade0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0022ade0(float *param_1,int param_2,int param_3,int param_4)

{
  float *pfVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float local_e0 [4];
  float local_d0 [4];
  float local_c0 [4];
  float local_b0 [4];
  float local_a0 [4];
  float local_90 [4];
  float local_80 [4];
  float local_70 [4];
  float local_60 [4];
  float local_50 [4];
  float local_40 [4];
  float local_30 [4];
  float local_20 [4];
  float local_10 [4];
  
  pfVar1 = local_e0;
  fVar5 = 0.0;
  iVar2 = *(int *)(param_2 + 0x18);
  fVar3 = 0.0;
  fVar4 = 0.0;
  fVar6 = 0.0;
  fVar7 = (float)*(int *)(_DAT_006f35e0 + 0x34);
  if ((iVar2 == 3) || (iVar2 == 4)) {
    iVar2 = *(int *)(_DAT_006f35b8 + 0x4c);
    fVar7 = (float)*(int *)(_DAT_006f35e0 + 0x34) * 0.5;
    if ((iVar2 == 4) || (iVar2 == 3)) {
      if (param_3 == 3) {
        param_3 = 2;
      }
      else if (param_3 == 2) {
        param_3 = 1;
      }
      else if (param_3 == 1) {
        param_3 = 3;
      }
      else {
        param_3 = 0;
      }
    }
    else if (iVar2 != 2) {
      param_3 = 0;
    }
    if (param_3 == 3) {
      if (param_4 == 0) {
        local_e0[2] = 0.0;
        local_e0[0] = 800.0;
        local_e0[1] = 95.0;
      }
      else {
        local_d0[2] = 0.0;
        local_d0[0] = 420.0;
        pfVar1 = local_d0;
        local_d0[1] = 95.0;
      }
      fVar5 = *pfVar1;
      fVar3 = pfVar1[1];
      fVar4 = pfVar1[2];
      fVar6 = 290.0;
    }
    else if (param_3 == 2) {
      if (param_4 == 0) {
        local_c0[2] = 0.0;
        local_c0[0] = 800.0;
        pfVar1 = local_c0;
        local_c0[1] = 315.0;
      }
      else {
        local_b0[2] = 0.0;
        local_b0[0] = 420.0;
        pfVar1 = local_b0;
        local_b0[1] = 315.0;
      }
      fVar3 = pfVar1[1];
      fVar4 = pfVar1[2];
      fVar6 = 290.0;
      fVar5 = *pfVar1;
    }
    else if (param_3 == 1) {
      if (param_4 == 0) {
        local_a0[2] = 0.0;
        local_a0[0] = -300.0;
        pfVar1 = local_a0;
        local_a0[1] = 315.0;
      }
      else {
        local_90[2] = 0.0;
        local_90[0] = 120.0;
        pfVar1 = local_90;
        local_90[1] = 315.0;
      }
      fVar3 = pfVar1[1];
      fVar4 = pfVar1[2];
      fVar6 = 30.0;
      fVar5 = *pfVar1;
    }
    else if (param_3 == 0) {
      if (param_4 == 0) {
        local_80[2] = 0.0;
        local_80[0] = -300.0;
        pfVar1 = local_80;
        local_80[1] = 95.0;
      }
      else {
        local_70[2] = 0.0;
        local_70[0] = 120.0;
        pfVar1 = local_70;
        local_70[1] = 95.0;
      }
      fVar3 = pfVar1[1];
      fVar4 = pfVar1[2];
      fVar6 = 30.0;
      fVar5 = *pfVar1;
    }
  }
  else if (iVar2 == 2) {
    if (param_3 == 1) {
      if (param_4 == 0) {
        pfVar1 = local_60;
        local_60[0] = -300.0;
        local_60[2] = 0.0;
        local_60[1] = 315.0;
      }
      else {
        pfVar1 = local_50;
        local_50[0] = 270.0;
        local_50[2] = 0.0;
        local_50[1] = 315.0;
      }
      fVar3 = pfVar1[1];
      fVar4 = pfVar1[2];
      fVar5 = *pfVar1;
    }
    else if (param_3 == 0) {
      if (param_4 == 0) {
        local_40[0] = -300.0;
        local_40[2] = 0.0;
        local_40[1] = 95.0;
        pfVar1 = local_40;
      }
      else {
        local_30[0] = 270.0;
        local_30[2] = 0.0;
        local_30[1] = 95.0;
        pfVar1 = local_30;
      }
      fVar3 = pfVar1[1];
      fVar4 = pfVar1[2];
      fVar5 = *pfVar1;
    }
  }
  else if (iVar2 == 1) {
    if (param_4 == 0) {
      local_20[0] = -300.0;
      local_20[2] = 0.0;
      local_20[1] = 155.0;
      pfVar1 = local_20;
    }
    else {
      local_10[0] = 270.0;
      local_10[2] = 0.0;
      local_10[1] = 155.0;
      pfVar1 = local_10;
    }
    fVar3 = pfVar1[1];
    fVar4 = pfVar1[2];
    fVar5 = *pfVar1;
  }
  if (param_4 != 0) {
    fVar5 = fVar6 + (fVar7 - 110.0) * 0.5;
  }
  *param_1 = fVar5;
  param_1[1] = fVar3;
  param_1[2] = fVar4;
  return;
}

