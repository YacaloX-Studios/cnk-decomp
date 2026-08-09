/* ============================================================================
 * FUN_003f6b20  quat_lerp_vu0
 * module: math/quat
 * COP2 quaternion blend (multi-op VU0 macro sequence).
 * raw address: 0x003f6b20  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_003f6b20(undefined4 param_1,undefined8 *param_2,undefined8 *param_3)

{
  undefined4 unaff_s5;
  undefined4 unaff_s6;
  undefined4 unaff_s7;
  undefined4 in_t8;
  undefined4 in_t9;
  undefined4 in_k0;
  
  setCopReg(2,unaff_s5,*param_2);
  setCopReg(2,unaff_s6,param_2[2]);
  setCopReg(2,unaff_s7,param_2[4]);
  setCopReg(2,in_t8,*param_3);
  setCopReg(2,in_t9,param_3[2]);
  setCopReg(2,in_k0,param_3[4]);
  copFunction(2,0x1db033c);
  copFunction(2,0x1dc033c);
  copFunction(2,0x1dd033c);
  copFunction(2,0x1d5c1bc);
  copFunction(2,0x1d6c8bc);
  copFunction(2,0x1d7d6c8);
  copFunction(2,0x1d5c1bd);
  copFunction(2,0x1d6c8bd);
  copFunction(2,0x1d7d709);
  copFunction(2,0x1d5c1be);
  copFunction(2,0x1d6c8be);
  copFunction(2,0x1d7d74a);
  copFunction(2,0x1dba9bc);
  copFunction(2,0x1dbb0bd);
  copFunction(2,0x1dbbe0a);
  copFunction(2,0x1dca9bc);
  copFunction(2,0x1dcb0bd);
  copFunction(2,0x1dcbe4a);
  copFunction(2,0x1dda9bc);
  copFunction(2,0x1ddb0bd);
  copFunction(2,0x1ddbe8a);
  getCopReg(2,in_t8);
  getCopReg(2,in_t9);
  getCopReg(2,in_k0);
  halt_baddata();
}

