/* ============================================================================
 * FUN_002304a0  layout_viewport_c
 * module: ui/layout
 * Third split-screen viewport layout helper (uses 700x260 slot rects).
 * raw address: 0x002304a0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_002304a0(float *param_1,undefined4 param_2,int param_3,int param_4)

{
  float *pfVar1;
  int iVar2;
  int iVar3;
  int in_t1;
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
  if ((param_4 != 3) && (param_4 != 4)) {
    if ((param_4 != 2) && (param_4 != 1)) goto LAB_002307c4;
    if (param_3 == 1) {
      if (in_t1 == 0) {
        local_40[2] = 0.0;
        local_40[0] = 225.0;
        pfVar1 = local_40;
        local_40[1] = 325.0;
      }
      else {
        local_30[2] = 0.0;
        local_30[0] = -400.0;
        pfVar1 = local_30;
        local_30[1] = 325.0;
      }
      *param_1 = *pfVar1;
      param_1[1] = pfVar1[1];
      param_1[2] = pfVar1[2];
      return;
    }
    if (param_3 == 0) {
      if (in_t1 == 0) {
        local_20[2] = 0.0;
        local_20[0] = 225.0;
        local_20[1] = 125.0;
        pfVar1 = local_20;
      }
      else {
        local_10[2] = 0.0;
        local_10[0] = -400.0;
        local_10[1] = 125.0;
        pfVar1 = local_10;
      }
      *param_1 = *pfVar1;
      param_1[1] = pfVar1[1];
      param_1[2] = pfVar1[2];
      return;
    }
  }
  iVar3 = *(int *)(_DAT_006f35b8 + 0x4c);
  if ((iVar3 == 4) || (iVar3 == 3)) {
    if (param_3 == 3) {
      iVar2 = 2;
    }
    else if (param_3 == 2) {
      iVar2 = 1;
    }
    else {
      iVar2 = 3;
      if (param_3 != 1) {
        iVar2 = 0;
      }
    }
  }
  else {
    iVar2 = param_3;
    if (iVar3 != 2) {
      iVar2 = 0;
    }
  }
  if (iVar2 == 3) {
    if (in_t1 == 0) {
      local_c0[2] = 0.0;
      local_c0[0] = 290.0;
      local_c0[1] = 75.0;
    }
    else {
      local_b0[2] = 0.0;
      local_b0[0] = 700.0;
      local_b0[1] = 75.0;
      pfVar1 = local_b0;
    }
    *param_1 = *pfVar1;
    param_1[1] = pfVar1[1];
    param_1[2] = pfVar1[2];
    return;
  }
  if (iVar2 == 2) {
    if (in_t1 == 0) {
      local_a0[2] = 0.0;
      local_a0[0] = 290.0;
      local_a0[1] = 260.0;
      pfVar1 = local_a0;
    }
    else {
      local_90[2] = 0.0;
      local_90[0] = 700.0;
      local_90[1] = 260.0;
      pfVar1 = local_90;
    }
    *param_1 = *pfVar1;
    param_1[1] = pfVar1[1];
    param_1[2] = pfVar1[2];
    return;
  }
  if (iVar2 == 1) {
    if (in_t1 == 0) {
      local_80[2] = 0.0;
      local_80[0] = 100.0;
      local_80[1] = 260.0;
      pfVar1 = local_80;
    }
    else {
      local_70[2] = 0.0;
      local_70[0] = -400.0;
      local_70[1] = 260.0;
      pfVar1 = local_70;
    }
    *param_1 = *pfVar1;
    param_1[1] = pfVar1[1];
    param_1[2] = pfVar1[2];
    return;
  }
  if (iVar2 == 0) {
    if (in_t1 == 0) {
      local_60[2] = 0.0;
      local_60[0] = 100.0;
      local_60[1] = 75.0;
      pfVar1 = local_60;
    }
    else {
      local_50[2] = 0.0;
      local_50[0] = -400.0;
      local_50[1] = 75.0;
      pfVar1 = local_50;
    }
    *param_1 = *pfVar1;
    param_1[1] = pfVar1[1];
    param_1[2] = pfVar1[2];
    return;
  }
LAB_002307c4:
  *param_1 = (float)param_3 * 100.0;
  param_1[1] = (float)param_3 * 100.0;
  param_1[2] = 0.0;
  return;
}

