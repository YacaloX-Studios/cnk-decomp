/* ============================================================================
 * FUN_00405d20  bsearch16
 * module: core/containers
 * Binary search over 16-byte records on ushort key at +4; returns matching slot pointer.
 * raw address: 0x00405d20  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00405d20(int *param_1,int param_2,int param_3,ushort *param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int local_c;
  
  iVar1 = param_3 - param_2;
  if (iVar1 < 0) {
    iVar1 = iVar1 + 0xf;
  }
  local_c = param_2;
  if (0 < iVar1 >> 4) {
    iVar1 = iVar1 >> 4;
    do {
      iVar3 = iVar1;
      if (iVar1 < 0) {
        iVar3 = iVar1 + 1;
      }
      iVar3 = iVar3 >> 1;
      iVar2 = local_c + iVar3 * 0x10;
      if (*(ushort *)(iVar2 + 4) < *param_4) {
        local_c = iVar2 + 0x10;
        iVar3 = iVar1 - (iVar3 + 1);
      }
      iVar1 = iVar3;
    } while (0 < iVar3);
  }
  *param_1 = local_c;
  return;
}

