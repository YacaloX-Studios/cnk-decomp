/* ============================================================================
 * FUN_0042f660  strtok_save_state
 * module: core/strings
 * strtok-style tokeniser over a delimiter string; keeps scan position in *param_3. Returns the next token or NULL.
 * raw address: 0x0042f660  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

char * FUN_0042f660(char *param_1,char *param_2,undefined4 *param_3)

{
  char cVar1;
  char *pcVar2;
  char *pcVar3;
  char *pcVar4;
  char cVar5;
  
  if (param_1 != (char *)0x0) goto LAB_0042f67c;
  pcVar2 = (char *)*param_3;
  if (pcVar2 == (char *)0x0) {
    return (char *)0x0;
  }
  cVar5 = *pcVar2;
  do {
    cVar1 = *param_2;
    param_1 = pcVar2 + 1;
    pcVar4 = param_2;
    while( true ) {
      if (cVar1 == '\0') {
        if (cVar5 == '\0') {
          *param_3 = 0;
          return (char *)0x0;
        }
        cVar5 = *param_1;
        do {
          pcVar3 = param_1 + 1;
          cVar1 = *param_2;
          pcVar4 = param_2;
          while( true ) {
            pcVar4 = pcVar4 + 1;
            if (cVar1 == cVar5) {
              if (cVar1 == '\0') {
                pcVar3 = (char *)0x0;
              }
              else {
                *param_1 = '\0';
              }
              *param_3 = pcVar3;
              return pcVar2;
            }
            if (cVar1 == '\0') break;
            cVar1 = *pcVar4;
          }
          cVar5 = *pcVar3;
          param_1 = pcVar3;
        } while( true );
      }
      pcVar4 = pcVar4 + 1;
      if (cVar5 == cVar1) break;
      cVar1 = *pcVar4;
    }
LAB_0042f67c:
    cVar5 = *param_1;
    pcVar2 = param_1;
  } while( true );
}

