/* ============================================================================
 * FUN_001b6340  quat_invert
 * module: math/quat
 * COP2 quaternion inverse/conjugate for cases 0 and 3.
 * raw address: 0x001b6340  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_001b6340(undefined4 param_1,undefined8 *param_2,undefined8 *param_3,int param_4)

{
  undefined8 uVar1;
  undefined4 in_at;
  
  if (param_4 == 2) {
    halt_baddata();
  }
  if (param_4 == 1) {
    halt_baddata();
  }
  if ((param_4 == 0) || (param_4 == 3)) {
    setCopReg(2,in_at,*param_2);
    setCopReg(2,3,*param_3);
    copFunction(2,0x1c20868);
    uVar1 = getCopReg(2,in_at);
    *param_2 = uVar1;
  }
  return 1;
}

