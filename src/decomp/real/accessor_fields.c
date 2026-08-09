/* ============================================================================
 * FUN_00165e70  accessor_fields
 * module: core/struct
 * Conditional accessor: copies a field block (offsets +0x60..+0x84) out of an entity when flag +0x88 is clear.
 * raw address: 0x00165e70  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00165e70(int param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  if (*(char *)(param_1 + 0x88) == '\0') {
    iVar1 = *(int *)(param_1 + 8);
    *param_2 = *(undefined4 *)(iVar1 + 0x6c);
    uVar2 = *(undefined4 *)(iVar1 + 0x60);
    uVar3 = *(undefined4 *)(iVar1 + 100);
    uVar4 = *(undefined4 *)(iVar1 + 0x68);
    *param_4 = *(undefined4 *)(iVar1 + 0x84);
    *param_3 = uVar2;
    param_3[1] = uVar3;
    param_3[2] = uVar4;
    return;
  }
  halt_baddata();
}

