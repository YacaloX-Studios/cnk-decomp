/* ============================================================================
 * FUN_00363b70  (recovered)
 * raw address: 0x00363b70  (ELF vaddr 0x00100000 + file offset)
 *
 * RECOVERED from recovery_asm/0x00363b70.asm (verified instruction-by-instruction):
 *   lui v0,0x3fff0000 ; ori v0,0xffff       -> v0 = 0x3fffffff (bit pattern)
 *   addiu sp,sp,-16 ; addiu v1,sp,+12 ; sw v0,12(sp)
 *   lw v0,0(v1)                            -> return 0x3fffffff
 *
 * Returns the single-precision float whose bit pattern is 0x3fffffff
 * (~1.99999988f). The inference said ret=ptr; the binary returns a float
 * constant via a stack round-trip (compiler artifact of a float constant).
 * ======================================================================== */

#include <stdint.h>

float FUN_00363b70(void)
{
    union { uint32_t u; float f; } c;
    c.u = 0x3fffffffUL;   /* single-precision float bit pattern ~1.99999988f */
    return c.f;
}