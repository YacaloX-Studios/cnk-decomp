/* ============================================================================
 * FUN_00428f48  strcpy
 * module: core/strings
 * Copies a NUL-terminated string.
 * raw address: 0x00428f48  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

char * FUN_00428f48(char *param_1,char *param_2)

{
  char cVar1;
  char *pcVar2;
  
  pcVar2 = param_1;
  if ((((uint)param_2 | (uint)param_1) & 7) == 0) {
    halt_baddata();
  }
  do {
    cVar1 = *param_2;
    param_2 = param_2 + 1;
    *pcVar2 = cVar1;
    pcVar2 = pcVar2 + 1;
  } while (cVar1 != '\0');
  return param_1;
}

