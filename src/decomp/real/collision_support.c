/* ============================================================================
 * FUN_0012bda0  collision_support
 * module: physics/collision
 * Support/tuning function over a collision face list (stride 0x28); returns 0.0/0.5/1.0 blend weights per edge index.
 * raw address: 0x0012bda0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_0012bda0(int param_1,int param_2,int param_3)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  undefined4 uVar5;
  
  iVar1 = *(int *)((param_2 + -4) * 0x28 + param_1 + 0x3c);
  if (iVar1 == 0) {
    uVar5 = 0;
  }
  else if (param_3 < 4) {
    uVar3 = (uint)*(byte *)(iVar1 + 9);
    uVar4 = param_3 * 2;
    if (uVar3 == 0xff) {
      uVar5 = 0;
    }
    else if (uVar3 == uVar4) {
      uVar5 = 0x3f800000;
    }
    else {
      if ((uVar3 + 1 & 7) != uVar4) {
        uVar2 = uVar4 + 1 & 7;
        if (((int)(uVar4 + 1) < 0) && (uVar2 != 0)) {
          uVar2 = uVar2 - 8;
        }
        if (uVar3 != uVar2) {
          return 0;
        }
      }
      uVar5 = 0x3f000000;
    }
  }
  else if ((*(uint *)(iVar1 + 0xc) & 0x10000 << (param_3 - 4U & 0x1f)) == 0) {
    uVar5 = 0;
  }
  else {
    uVar5 = 0x3f800000;
  }
  return uVar5;
}

