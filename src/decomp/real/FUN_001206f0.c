/* ============================================================================
 * FUN_001206f0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * raw address: 0x001206f0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_001206f0(undefined4 param_1,undefined8 *param_2,undefined8 *param_3)

{
  undefined4 in_at;
  undefined4 in_v0;
  
  setCopReg(2,in_at,*param_2);
  setCopReg(2,in_v0,*param_3);
  copFunction(2,0x1c20868);
  getCopReg(2,in_at);
  halt_baddata();
}

