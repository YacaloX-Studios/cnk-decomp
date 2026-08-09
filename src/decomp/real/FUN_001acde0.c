/* ============================================================================
 * FUN_001acde0
 * module: core/struct  (auto-classified)
 * Auto-classified pure-copy leaf (no loops, calls, COP2 or globals); semantic TBD, structure only.
 * raw address: 0x001acde0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_001acde0(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_4;
  
  uVar2 = param_2[1];
  uVar1 = param_2[2];
  *param_1 = *param_2;
  param_1[1] = uVar2;
  param_1[2] = uVar1;
  param_1[3] = local_4;
  return;
}

