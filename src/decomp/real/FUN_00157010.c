/* ============================================================================
 * FUN_00157010
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

undefined4 FUN_00157010(int param_1,int param_2)

{
  float local_4;
  
  local_4 = *(float *)(*(int *)(*(int *)(param_1 + 4) + 8) + 0xa4) - 2.5;
  if (local_4 <= 2.0) {
    local_4 = 2.0;
  }
  *(float *)(param_2 + 0x28) = local_4;
  return 1;
}

