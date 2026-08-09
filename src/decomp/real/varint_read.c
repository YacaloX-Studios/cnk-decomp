/* ============================================================================
 * FUN_004f9eb0  varint_read
 * module: core/bitstream
 * 7-bit LEB128 varint reader with limit checks; reads a small id, a flag, then a varint value. Sets a result handle (DAT_006b6490/98 are OK/fail sentinels).
 * raw address: 0x004f9eb0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_004f9eb0(undefined4 *param_1,int param_2,int param_3,uint *param_4)

{
  char cVar1;
  uint uVar2;
  uint uVar3;
  char *pcVar4;
  
  uVar2 = 0;
  uVar3 = 0;
  pcVar4 = (char *)(*(int *)(*(int *)(param_2 + 0x48) + 0x10) + param_3);
  while( true ) {
    uVar3 = uVar3 | ((int)*pcVar4 & 0x7fU) << (uVar2 & 0x1f);
    if (((int)*pcVar4 & 0x80U) == 0) break;
    uVar2 = uVar2 + 7;
    pcVar4 = pcVar4 + 1;
  }
  if ((int)uVar3 < 0x20) {
    if (DAT_00683418 < pcVar4[1]) {
      *param_1 = DAT_006b6498;
    }
    else {
      uVar3 = 0;
      uVar2 = 0;
      pcVar4 = pcVar4 + 2;
      while( true ) {
        uVar3 = uVar3 | ((int)*pcVar4 & 0x7fU) << (uVar2 & 0x1f);
        if (((int)*pcVar4 & 0x80U) == 0) break;
        uVar2 = uVar2 + 7;
        pcVar4 = pcVar4 + 1;
      }
      if ((uVar3 & 1) == 0) {
        *param_1 = DAT_006b6498;
      }
      else {
        pcVar4 = pcVar4 + 5;
        uVar2 = 0;
        *param_4 = 0;
        while( true ) {
          *param_4 = *param_4 | ((int)*pcVar4 & 0x7fU) << (uVar2 & 0x1f);
          cVar1 = *pcVar4;
          pcVar4 = pcVar4 + 1;
          if (((int)cVar1 & 0x80U) == 0) break;
          uVar2 = uVar2 + 7;
        }
        *param_1 = DAT_006b6490;
      }
    }
  }
  else {
    *param_1 = DAT_006b6498;
  }
  return;
}

