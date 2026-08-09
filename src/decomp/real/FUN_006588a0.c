/* ============================================================================
 * FUN_006588a0
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_006588a0(void)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  int iVar3;
  int iVar4;
  
  if (_DAT_bc0003c0 != 0) {
    iVar4 = _DAT_bc0003c0 + -0x43fffff1;
    iVar3 = 0;
    do {
      puVar1 = (undefined1 *)(iVar4 + iVar3);
      puVar2 = (undefined1 *)(iVar3 + -0x7ff8b900);
      iVar3 = iVar3 + 1;
      *puVar2 = *puVar1;
    } while (iVar3 < 0x26);
    halt_unimplemented();
  }
  halt_baddata();
}

