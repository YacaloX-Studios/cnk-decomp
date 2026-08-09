/* ============================================================================
 * FUN_00432fc0  format_scan
 * module: core/strings
 * Format-string parser: walks `%`-directives and dispatches conversion handlers (printf-family).
 * raw address: 0x00432fc0  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00432fc0(undefined4 param_1,byte *param_2)

{
  byte *pbVar1;
  byte bVar2;
  
  if (*param_2 != 0) {
    bVar2 = *param_2;
    do {
      if (bVar2 == 0x25) {
        pbVar1 = param_2 + 1;
        param_2 = param_2 + 1;
        if (*pbVar1 != 0) {
          for (; (char)*param_2 < 'A'; param_2 = param_2 + 1) {
            if (param_2[1] == 0) {
              bVar2 = *param_2;
              goto LAB_00433020;
            }
          }
          bVar2 = *param_2;
LAB_00433020:
          switch((int)((bVar2 - 0x45) * 0x1000000) >> 0x18) {
          case 0:
          case 2:
          case 7:
          case 0x20:
          case 0x21:
          case 0x22:
            FUN_00433090();
            halt_unimplemented();
          default:
            param_2 = param_2 + 1;
          }
        }
      }
      else {
        param_2 = param_2 + 1;
      }
      if (*param_2 == 0) break;
      bVar2 = *param_2;
    } while( true );
  }
  FUN_00433ef0();
  halt_baddata();
}

