/* ============================================================================
 * FUN_0045d6f0  (recovered)
 * raw address: 0x0045d6f0  (ELF vaddr 0x00100000 + file offset)
 *
 * RECOVERED from recovery_asm/0x0045d6f0.asm (verified instruction-by-instruction):
 *   lui a2,0x00710000 ; addiu a2,-0x16c0  -> 0x0070e940
 *   lui v0,0x00660000 ; addiu v0,-0x4a40  -> 0x0065b5c0
 *   sw a2,0(a0)   *a0 = 0x0070e940
 *   sw v0,0(a1)   *a1 = 0x0065b5c0
 *   lw v1,-0x4a3c(a0)(=0x0065b5c4) ; sw v1,0x3c(a2)(=0x0070e97c)
 *   v0 = 0x00710000-0x2c80 = 0x0070d380  (return)
 *
 * Pattern: registers two global pointer slots and forwards one global
 * pointer (a "singleton table" bootstrap). Values are absolute data-segment
 * addresses; no symbol names invented.
 * ======================================================================== */

void *FUN_0045d6f0(void **a0, void **a1)
{
    *a0 = (void *)0x0070e940;
    *a1 = (void *)0x0065b5c0;
    *(void **)0x0070e97c = *(void **)0x0065b5c4;
    return (void *)0x0070d380;
}