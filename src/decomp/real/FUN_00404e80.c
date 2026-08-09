/* ============================================================================
 * FUN_00404e80
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

int FUN_00404e80(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  uint *puVar1;
  int in_t0;
  uint local_8;
  uint local_4;
  
  local_4 = (uint)(param_4 - param_3) >> 2;
  if (in_t0 < (int)local_4) {
    puVar1 = &local_8;
  }
  else {
    puVar1 = &local_4;
  }
  return *puVar1 << 2;
}

