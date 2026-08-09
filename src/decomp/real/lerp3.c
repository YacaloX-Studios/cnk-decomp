/* ============================================================================
 * FUN_0058d7c0  lerp3
 * module: math/vec
 * Component-wise float3 linear interpolation: out = a + t*(b-a).
 * raw address: 0x0058d7c0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0058d7c0(float param_1,float *param_2,float *param_3,float *param_4)

{
  *param_2 = *param_3 + param_1 * (*param_4 - *param_3);
  param_2[1] = param_3[1] + param_1 * (param_4[1] - param_3[1]);
  param_2[2] = param_3[2] + param_1 * (param_4[2] - param_3[2]);
  return;
}

