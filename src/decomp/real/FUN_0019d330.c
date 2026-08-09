/* ============================================================================
 * FUN_0019d330
 * UNCLASSIFIED - real body recovered from raw decomp; semantic TBD.
 * ======================================================================== */

void FUN_0019d330(undefined8 param_1)

{
  if ((float)((ulonglong)param_1 >> 0x20) != 0.0) {
    halt_baddata();
  }
  if ((float)param_1 == 0.0) {
    return;
  }
  halt_baddata();
}

