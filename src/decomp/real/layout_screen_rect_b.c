/* ============================================================================
 * FUN_0022d1a0  layout_screen_rect_b
 * module: ui/layout
 * Sibling layout helper for 800x420 screen space.
 * raw address: 0x0022d1a0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0022d1a0(float *param_1,int param_2,int param_3)

{
  float *pfVar1;
  int iVar2;
  int iVar3;
  int in_t0;
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
  
  pfVar1 = local_c0;
  iVar2 = *(int *)(param_2 + 0x18);
  if ((iVar2 != 3) && (iVar2 != 4)) {
    if ((iVar2 != 2) && (iVar2 != 1)) goto LAB_0022d4d8;
    if (param_3 == 1) {
      if (in_t0 == 0) {
        local_40[2] = 0.0;
        local_40[0] = 225.0;
        pfVar1 = local_40;
        local_40[1] = 325.0;
      }
      else {
        local_30[2] = 0.0;
        local_30[0] = -250.0;
        pfVar1 = local_30;
        local_30[1] = 325.0;
      }
      *param_1 = *pfVar1;
      param_1[1] = pfVar1[1];
      param_1[2] = pfVar1[2];
      return;
    }
    if (param_3 == 0) {
      if (in_t0 == 0) {
        local_20[2] = 0.0;
        local_20[0] = 225.0;
        local_20[1] = 125.0;
        pfVar1 = local_20;
      }
      else {
        local_10[2] = 0.0;
        local_10[0] = -250.0;
        local_10[1] = 125.0;
        pfVar1 = local_10;
      }
      *param_1 = *pfVar1;
      param_1[1] = pfVar1[1];
      param_1[2] = pfVar1[2];
      return;
    }
  }
  iVar2 = *(int *)(_DAT_006f35b8 + 0x4c);
  if ((iVar2 == 4) || (iVar2 == 3)) {
    if (param_3 == 3) {
      iVar3 = 2;
    }
    else if (param_3 == 2) {
      iVar3 = 1;
    }
    else {
      iVar3 = 3;
      if (param_3 != 1) {
        iVar3 = 0;
      }
    }
  }
  else {
    iVar3 = param_3;
    if (iVar2 != 2) {
      iVar3 = 0;
    }
  }
  if (iVar3 == 3) {
    if (in_t0 == 0) {
      local_c0[2] = 0.0;
      local_c0[0] = 340.0;
      local_c0[1] = 125.0;
    }
    else {
      local_b0[2] = 0.0;
      local_b0[0] = 800.0;
      local_b0[1] = 125.0;
      pfVar1 = local_b0;
    }
    *param_1 = *pfVar1;
    param_1[1] = pfVar1[1];
    param_1[2] = pfVar1[2];
    return;
  }
  if (iVar3 == 2) {
    if (in_t0 == 0) {
      local_a0[2] = 0.0;
      local_a0[0] = 340.0;
      pfVar1 = local_a0;
      local_a0[1] = 325.0;
    }
    else {
      local_90[2] = 0.0;
      local_90[0] = 800.0;
      pfVar1 = local_90;
      local_90[1] = 325.0;
    }
    *param_1 = *pfVar1;
    param_1[1] = pfVar1[1];
    param_1[2] = pfVar1[2];
    return;
  }
  if (iVar3 == 1) {
    if (in_t0 == 0) {
      local_80[2] = 0.0;
      local_80[0] = 130.0;
      pfVar1 = local_80;
      local_80[1] = 325.0;
    }
    else {
      local_70[2] = 0.0;
      local_70[0] = -250.0;
      pfVar1 = local_70;
      local_70[1] = 325.0;
    }
    *param_1 = *pfVar1;
    param_1[1] = pfVar1[1];
    param_1[2] = pfVar1[2];
    return;
  }
  if (iVar3 == 0) {
    if (in_t0 == 0) {
      local_60[2] = 0.0;
      local_60[0] = 130.0;
      local_60[1] = 125.0;
      pfVar1 = local_60;
    }
    else {
      local_50[2] = 0.0;
      local_50[0] = -250.0;
      local_50[1] = 125.0;
      pfVar1 = local_50;
    }
    *param_1 = *pfVar1;
    param_1[1] = pfVar1[1];
    param_1[2] = pfVar1[2];
    return;
  }
LAB_0022d4d8:
  *param_1 = (float)param_3 * 100.0;
  param_1[1] = (float)param_3 * 100.0;
  param_1[2] = 0.0;
  return;
}

