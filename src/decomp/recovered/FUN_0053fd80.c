/* ============================================================================
 * FUN_0053fd80  (recovered - two adjacent functions under one symbol)
 * raw address: 0x0053fd80  (ELF vaddr 0x00100000 + file offset)
 *
 * NOTE: the symbol spans 112 bytes = TWO functions. The registry boundaries
 * (Ghidra symbols) group adjacent functions; recover them separately.
 *
 * ---- f1 @ 0x0053fd80  (4 instructions, verifies against the Ghidra body) --
 *   lw  v0, +8(a0)         v0 = arr = *(a0+8)
 *   sll v1, a1, 2          v1 = a1 * 4
 *   addu v0, v0, v1        v0 = arr + a1*4
 *   jr ra ; lw v0, +0(v0)  return arr[a1]
 * ======================================================================== */

#include <stdint.h>

uint32_t FUN_0053fd80_a(uint32_t *a0, uint32_t a1)
{
    uint32_t *arr = (uint32_t *)*a0;
    return arr[a1];
}

/* ---- f2 @ 0x0053fda0  (linear search of a 32-slot table) -----------------
 *   beq zero,zero,+40       entry: jump to the loop test (v0 = 0 from a0)
 * 0x0053fda8: lw v1,+8(a0)  v1 = table = *(a0+8)
 *   sll a2, v0, 2           a2 = i*4
 *   addu v1, v1, a2         v1 = table + i*4
 *   lw v1, +0(v1)           v1 = table[i]
 *   bne a1, v1, +12         if (table[i] != a1) goto next
 *   beq zero,zero,+24       return i
 * next: addiu v0, v0, +1    i++
 *   slti v1, v0, 32 ; bne v1,zero,-44   while (i < 32)
 *   addiu v0, zero, -1      not found -> -1
 * ======================================================================== */

int32_t FUN_0053fd80_b(uint32_t *a0, uint32_t a1)
{
    uint32_t *table = (uint32_t *)*a0;
    int32_t i;
    for (i = 0; i < 32; i++) {
        if (table[i] == a1)
            return i;
    }
    return -1;
}
