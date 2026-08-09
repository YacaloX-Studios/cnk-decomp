/* ============================================================================
 * FUN_001e0050
 * module: core/struct  (auto-classified)
 * Auto-classified pure-copy leaf (no loops, calls, COP2 or globals); semantic TBD, structure only.
 * raw address: 0x001e0050  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 * FUN_001e0050(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar3 = param_2[1];
  uVar2 = param_2[2];
  uVar1 = param_2[3];
  *param_1 = *param_2;
  param_1[1] = uVar3;
  param_1[2] = uVar2;
  param_1[3] = uVar1;
  return param_1;
}

