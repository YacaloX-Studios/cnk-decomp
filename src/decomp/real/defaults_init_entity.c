/* ============================================================================
 * FUN_0011e790  defaults_init_entity
 * module: game/entity
 * Writes a default entity/object block: many 1.0f / 100.0f / 101.0f initializers (camera/transform defaults, velocities).
 * raw address: 0x0011e790  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0011e790(int param_1)

{
  *(undefined4 *)(param_1 + 0x3c) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x4c) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x50) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x54) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x74) = 0x3f800000;
  *(undefined1 *)(param_1 + 0xac) = 0;
  *(undefined4 *)(param_1 + 0xb0) = 0x3f800000;
  *(undefined4 *)(param_1 + 0xb4) = 0x42c80000;
  *(undefined4 *)(param_1 + 0xb8) = 0x42ca0000;
  *(undefined4 *)(param_1 + 0xc4) = 0;
  *(undefined4 *)(param_1 + 200) = 0;
  *(undefined4 *)(param_1 + 0xcc) = 0;
  *(undefined4 *)(param_1 + 0xd0) = 0;
  *(undefined4 *)(param_1 + 0xd4) = 0;
  *(undefined4 *)(param_1 + 0xd8) = 0;
  *(undefined1 *)(param_1 + 0x5c) = 0;
  *(undefined1 *)(param_1 + 0xe0) = 0;
  *(undefined4 *)(param_1 + 0xe4) = 0;
  *(undefined4 *)(param_1 + 0x100) = 0x3f800000;
  return;
}

