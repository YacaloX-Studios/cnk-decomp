/* ============================================================================
 * FUN_0026e1a0  type4cc_check_c
 * module: engine/objects
 * 4cc type-check variant.
 * raw address: 0x0026e1a0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

undefined4 FUN_0026e1a0(int param_1)

{
  bool bVar1;
  uint uVar2;
  
  bVar1 = false;
  if ((*(int *)(param_1 + 4) != 0) &&
     (uVar2 = **(uint **)(*(int *)(param_1 + 4) + 0xc),
     DAT_006369e0 ==
     uVar2 * 0x1000000 + (uVar2 & 0xff00) * 0x100 + (uVar2 >> 0x18) + ((uVar2 & 0xff0000) >> 8))) {
    bVar1 = true;
  }
  if (bVar1) {
    halt_unimplemented();
  }
  return 0;
}

