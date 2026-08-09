/* ============================================================================
 * FUN_00428c50
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

char * FUN_00428c50(char *param_1,char param_2)

{
  char cVar1;
  char *pcVar2;
  
  if (((uint)param_1 & 7) == 0) {
    halt_baddata();
  }
  do {
    if (*param_1 == '\0') {
      cVar1 = *param_1;
LAB_00428de4:
      pcVar2 = (char *)0x0;
      if (cVar1 == param_2) {
        pcVar2 = param_1;
      }
      return pcVar2;
    }
    if (*param_1 == param_2) {
      cVar1 = *param_1;
      goto LAB_00428de4;
    }
    param_1 = param_1 + 1;
  } while( true );
}

