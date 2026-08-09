/* ============================================================================
 * FUN_005ec0a0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

byte FUN_005ec0a0(int param_1,int param_2)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)(*(int *)(param_1 + 8) + 8);
  iVar2 = 0;
  do {
    if (*(int *)(iVar3 + 8) <= iVar2) {
      bVar1 = true;
LAB_005ec0f8:
      return bVar1 ^ 1;
    }
    if (param_2 == *(int *)(*(int *)(iVar3 + 0x10) + iVar2 * 4)) {
      bVar1 = iVar2 < 0;
      goto LAB_005ec0f8;
    }
    iVar2 = iVar2 + 1;
  } while( true );
}

