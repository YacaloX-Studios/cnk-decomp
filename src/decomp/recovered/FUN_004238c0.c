/* ============================================================================
 * FUN_004238c0  (recovered)
 * raw address: 0x004238c0  (ELF vaddr 0x00100000 + file offset)
 *
 * RECOVERED from recovery_asm/0x004238c0.asm (verified instruction-by-instruction):
 *   lui at,0x00700000 ; lw v0,+0x5c80(at) -> v0 = G_00705c80
 *   daddu a0,v0,0        (dead write to a0; no input parameter)
 *   jr ra  (delay slot)  xori v0,v0,1     -> return v0 = G_00705c80 ^ 1
 *
 * NOTE: the Ghidra decomp (`bool f(uint p) { return p <= G; }`) does NOT match
 * the binary - a0 is written, never read; the return toggles bit 0 of the
 * global. Binary is the source of truth.
 * ======================================================================== */

#include <stdint.h>

uint32_t FUN_004238c0(void)
{
    return *(volatile uint32_t *)0x00705c80 ^ 1u;
}