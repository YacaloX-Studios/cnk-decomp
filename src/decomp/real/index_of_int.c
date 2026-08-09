/* ============================================================================
 * FUN_003ec660  index_of_int
 * module: core/containers
 * Linear search in an int array (len at *arr, count at arr[1]); returns matching index or -1.
 * raw address: 0x003ec660  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

int FUN_003ec660(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *param_1;
  iVar2 = iVar1;
  if (param_1[iVar1 + 1] != 0) {
    iVar2 = param_1[iVar1 + 1] + -1;
  }
  if ((iVar2 <= iVar1) && (iVar1 = 0, 0 < iVar2)) {
    do {
      param_1 = param_1 + 1;
      if (*param_1 == param_2) {
        return iVar1;
      }
      iVar1 = iVar1 + 1;
    } while (iVar1 < iVar2);
  }
  return -1;
}

