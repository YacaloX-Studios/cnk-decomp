/* ============================================================================
 * FUN_00432818  itoa
 * module: core/strings
 * Integer to string in arbitrary base (base 10 negates first); feeds strrev.
 * raw address: 0x00432818  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00432818(uint param_1,char *param_2,uint param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  
  uVar3 = param_1;
  if (((int)param_1 < 0) && (param_3 == 10)) {
    uVar3 = -param_1;
  }
  iVar2 = 0;
  do {
    iVar1 = iVar2;
    uVar4 = uVar3 % param_3;
    uVar3 = uVar3 / param_3;
    if (param_3 == 0) {
      trap(7);
    }
    iVar2 = iVar1 + 1;
    param_2[iVar1] = s_0123456789abcdefghijklmnopqrstuv_00657f28[uVar4];
    if (param_3 == 0) {
      trap(7);
    }
  } while (uVar3 != 0);
  if ((int)param_1 < 0) {
    param_2[iVar2] = '-';
    iVar2 = iVar1 + 2;
  }
  param_2[iVar2] = '\0';
  FUN_004327a0(param_2);
  halt_baddata();
}

