/* ============================================================================
 * FUN_00530050  swap16
 * module: core/endian
 * Byte-swap a 16-bit value (LE<->BE).
 * raw address: 0x00530050  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00530050(undefined2 *param_1)

{
  undefined2 local_2;
  
  local_2 = CONCAT11(*(undefined1 *)param_1,*(undefined1 *)((int)param_1 + 1));
  *param_1 = local_2;
  return;
}

