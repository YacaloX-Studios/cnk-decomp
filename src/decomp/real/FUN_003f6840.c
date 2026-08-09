/* ============================================================================
 * FUN_003f6840
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_003f6840(undefined4 param_1,undefined8 *param_2,undefined8 *param_3,undefined4 param_4)

{
  undefined4 in_at;
  undefined4 in_v1;
  undefined4 in_t0;
  undefined1 local_40 [64];
  
  setCopReg(2,in_at,*param_2);
  setCopReg(2,param_2,param_3[6]);
  setCopReg(2,local_40,param_2[2]);
  setCopReg(2,in_v1,param_2[4]);
  setCopReg(2,param_1,param_2[6]);
  setCopReg(2,param_3,param_3[4]);
  setCopReg(2,param_4,param_3[2]);
  copFunction(2,0x1c509bc);
  copFunction(2,0x1c510bd);
  copFunction(2,0x1c5194a);
  copFunction(2,0x1c609bc);
  copFunction(2,0x1c610bd);
  copFunction(2,0x1c6198a);
  setCopReg(2,in_t0,*param_3);
  copFunction(2,0x1c52168);
  copFunction(2,0x1c709bc);
  copFunction(2,0x1c710bd);
  copFunction(2,0x1c719ca);
  copFunction(2,0x1c809bc);
  copFunction(2,0x1c810bd);
  copFunction(2,0x1c81a0a);
  getCopReg(2,param_2);
  getCopReg(2,param_3);
  getCopReg(2,param_4);
  getCopReg(2,in_t0);
  halt_baddata();
}

