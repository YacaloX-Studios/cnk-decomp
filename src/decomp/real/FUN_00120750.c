/* ============================================================================
 * FUN_00120750
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x00120750  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00120750(undefined4 param_1,undefined8 *param_2)

{
  undefined4 in_at;
  
  setCopReg(2,in_at,*param_2);
  halt_baddata();
}

