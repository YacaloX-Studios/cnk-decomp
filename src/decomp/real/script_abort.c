/* ============================================================================
 * FUN_0042ac48  script_abort
 * module: game/script
 * Aborts the running script task (clears flag 0x1000).
 * raw address: 0x0042ac48  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_0042ac48(int param_1)

{
  int iVar1;
  undefined4 unaff_retaddr;
  undefined1 auStack_20 [32];
  
  ADDU.QB(auStack_20,unaff_retaddr);
  iVar1 = FUN_004297c0();
  if (iVar1 == -1) {
    *(ushort *)(param_1 + 0xc) = *(ushort *)(param_1 + 0xc) & 0xefff;
    halt_baddata();
  }
  halt_baddata();
}

