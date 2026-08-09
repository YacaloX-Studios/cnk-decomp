/* ============================================================================
 * FUN_0015ba30  vec3_copy
 * module: math/vec
 * 12-byte (float3) copy.
 * raw address: 0x0015ba30  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0015ba30(undefined4 *param_1,undefined4 *param_2)

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

