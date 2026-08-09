/* ============================================================================
 * FUN_00405dc0  bsearch12
 * module: core/containers
 * Binary search over 12-byte records on ushort key at +4.
 * raw address: 0x00405dc0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00405dc0(int *param_1,int param_2,int param_3,ushort *param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int local_c;
  
  iVar3 = (param_3 - param_2) / 0xc;
  local_c = param_2;
  if (0 < iVar3) {
    do {
      iVar2 = iVar3;
      if (iVar3 < 0) {
        iVar2 = iVar3 + 1;
      }
      iVar2 = iVar2 >> 1;
      iVar1 = local_c + iVar2 * 0xc;
      if (*(ushort *)(iVar1 + 4) < *param_4) {
        local_c = iVar1 + 0xc;
        iVar2 = iVar3 - (iVar2 + 1);
      }
      iVar3 = iVar2;
    } while (0 < iVar2);
  }
  *param_1 = local_c;
  return;
}

