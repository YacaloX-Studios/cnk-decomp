/* ============================================================================
 * FUN_00530080  swap32
 * module: core/endian
 * Byte-swap a 32-bit value (LE<->BE).
 * raw address: 0x00530080  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00530080(undefined4 *param_1)

{
  undefined4 local_4;
  
  local_4 = CONCAT13(*(undefined1 *)param_1,
                     CONCAT12(*(undefined1 *)((int)param_1 + 1),
                              CONCAT11(*(undefined1 *)((int)param_1 + 2),
                                       *(undefined1 *)((int)param_1 + 3))));
  *param_1 = local_4;
  return;
}

