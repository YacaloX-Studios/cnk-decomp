/* ============================================================================
 * FUN_00365d80  aabb_corners_vu0
 * module: math/vu0
 * Builds the 8 corners of an oriented box from 3 axes + center using COP2 (VU0 macro mode).
 * raw address: 0x00365d80  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00365d80(undefined4 *param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  undefined8 *puVar2;
  uint uVar3;
  undefined4 in_t3;
  undefined4 in_t4;
  undefined4 in_t5;
  undefined4 in_t6;
  undefined4 in_t7;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined8 local_a0;
  undefined8 local_98;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  local_98._0_4_ = 0;
  local_98._4_4_ = 0x3f800000;
  local_88 = 0;
  local_8c = 0;
  local_90 = 0;
  local_84 = 0x3f800000;
  local_78 = 0;
  local_7c = 0;
  local_80 = 0;
  local_74 = 0x3f800000;
  local_68 = 0;
  local_6c = 0;
  local_70 = 0;
  local_64 = 0x3f800000;
  local_58 = 0;
  local_5c = 0;
  local_60 = 0;
  local_54 = 0x3f800000;
  local_48 = 0;
  local_4c = 0;
  local_50 = 0;
  local_44 = 0x3f800000;
  local_38 = 0;
  local_3c = 0;
  local_40 = 0;
  local_34 = 0x3f800000;
  local_24 = 0x3f800000;
  local_28 = 0;
  local_2c = 0;
  local_30 = 0;
  for (uVar3 = 0; (int)uVar3 < 8; uVar3 = uVar3 + 1) {
    if ((uVar3 & 1) == 0) {
      uVar4 = param_1[4];
    }
    else {
      uVar4 = *param_1;
    }
    if ((uVar3 & 2) == 0) {
      uVar5 = param_1[5];
    }
    else {
      uVar5 = param_1[1];
    }
    if ((uVar3 & 4) == 0) {
      uVar6 = param_1[6];
    }
    else {
      uVar6 = param_1[2];
    }
    puVar2 = &local_98 + uVar3 * 2 + -1;
    *(undefined4 *)puVar2 = uVar4;
    *(undefined4 *)((int)&local_98 + (uVar3 * 4 + -1) * 4) = uVar5;
    *(undefined4 *)(&local_98 + uVar3 * 2) = uVar6;
    setCopReg(2,in_t3,*puVar2);
    setCopReg(2,in_t4,*param_2);
    setCopReg(2,in_t5,param_2[2]);
    setCopReg(2,in_t6,param_2[4]);
    setCopReg(2,in_t7,param_2[6]);
    copFunction(2,0x1cb61bc);
    copFunction(2,0x1cb68bd);
    copFunction(2,0x1cb70be);
    copFunction(2,0x1c07acb);
    uVar1 = getCopReg(2,in_t3);
    *puVar2 = uVar1;
  }
  halt_baddata();
}

