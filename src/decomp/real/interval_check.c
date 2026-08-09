/* ============================================================================
 * FUN_003803c0  interval_check
 * module: core/containers
 * Three-way unsigned range check on *a,*b,*c (interval validity test).
 * raw address: 0x003803c0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_003803c0(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  bool bVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = *(uint *)*param_3;
  uVar3 = *(uint *)*param_2;
  bVar1 = uVar2 <= *(uint *)*param_1;
  if ((bVar1) && (uVar3 <= uVar2)) {
    return;
  }
  if ((!bVar1) && (uVar3 > uVar2)) {
    halt_baddata();
  }
  if (*(uint *)*param_1 < uVar3) {
    halt_baddata();
  }
  if (bVar1) {
    halt_baddata();
  }
  halt_baddata();
}

