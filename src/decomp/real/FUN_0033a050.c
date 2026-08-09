/* ============================================================================
 * FUN_0033a050
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x0033a050  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0033a050(int param_1)

{
  undefined4 in_at;
  
  setCopReg(2,in_at,*(undefined8 *)(param_1 + 0x40));
  halt_baddata();
}

