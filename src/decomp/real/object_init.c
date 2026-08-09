/* ============================================================================
 * FUN_001c3910  object_init
 * module: core/struct
 * Object block initializer: sets header pointers (DAT_006cc6d0/60), a stride (0x20) and identity/scale values.
 * raw address: 0x001c3910  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_001c3910(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined1 param_4)

{
  *param_1 = param_2;
  param_1[1] = &DAT_006cc6d0;
  param_1[2] = param_3;
  *(undefined1 *)(param_1 + 3) = param_4;
  param_1[4] = 0x20;
  param_1[1] = &DAT_006cdc60;
  param_1[5] = 0;
  param_1[10] = 0;
  param_1[9] = 0;
  param_1[8] = 0;
  param_1[0xb] = 0x3f800000;
  param_1[0x12] = 0;
  param_1[0x11] = 0;
  param_1[0x10] = 0;
  param_1[0x13] = 0x3f800000;
  halt_baddata();
}

