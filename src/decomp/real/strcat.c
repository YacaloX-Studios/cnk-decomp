/* ============================================================================
 * FUN_00428b18  strcat
 * module: core/strings
 * strlen + strcpy onto the tail (concatenation).
 * raw address: 0x00428b18  (ELF vaddr 0x00100000 + file offset)
 * ======================================================================== */

void FUN_00428b18(char *param_1,char *param_2)

{
  undefined4 unaff_retaddr;
  undefined1 auStack_20 [32];
  
  ADDU.QB(auStack_20,unaff_retaddr);
  if (((uint)param_1 & 7) == 0) {
    halt_baddata();
  }
  for (; *param_1 != '\0'; param_1 = param_1 + 1) {
  }
  FUN_00428f48(param_1,param_2);
  halt_baddata();
}

