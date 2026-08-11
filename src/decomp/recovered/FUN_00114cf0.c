/* ============================================================================
 * FUN_00114cf0  (recovered)
 * raw address: 0x00114cf0  (ELF vaddr 0x00100000 + file offset)
 *
 * RECOVERED from recovery_asm/0x00114cf0.asm (verified instruction-by-instruction):
 *   lui v1,0x006f0000 ; sw a0,+0x35d0(v1)  -> G_006f35d0 = a0
 *   lui v1,0x006f0000 ; jr ra
 *   sw a1,+0x35d8(v1)                      -> G_006f35d8 = a1  (jr delay slot)
 *
 * Two-global setter. NOTE: the binary stores a1 even though the inference
 * marked a1 "-" (delay-slot access was invisible to the access tracker).
 * ======================================================================== */

#include <stdint.h>

void FUN_00114cf0(int a0, int a1)
{
    *(volatile int32_t *)0x006f35d0 = a0;
    *(volatile int32_t *)0x006f35d8 = a1;
}