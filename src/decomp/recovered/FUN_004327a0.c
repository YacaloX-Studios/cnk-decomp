/* ============================================================================
 * FUN_004327a0  (recovered)  = strrev
 * raw address: 0x004327a0  (ELF vaddr 0x00100000 + file offset)
 * module: core/strings  |  caller: 0x00432818 (ultoa: FUN_00432818)
 *
 * In-place string reverse:
 *   last = index of last char (strlen-1), i = 0
 *   swap s[i] <-> s[last] while i < last
 *
 * asm trace (byte ops: lb/lbu/sb; slt loop test):
 *   daddu t1, a0, zero        t1 = s
 *   lb v0, +0(t1)             if (s[0] == 0) goto done
 *   a3 = 1
 *   loop: v0 = t1+a3 ; lb v1, 0(v0) ; bnel v1 != 0 -> loop (a3++)
 *   a3 -= 1                   last = strlen(s) - 1
 *   blez a3 -> done
 *   t0 = 0 (i) ; a2 = t1+a3 (right) ; a1 = t1 (left)
 *   loop: lbu v0, 0(a2) (right) ; t0++ ; lb v1, 0(a1) (left) ; a3--
 *         sb v0, 0(a1) ; slt a0, t0, a3 ; sb v1, 0(a2) ; a1++
 *         bne a0, zero -> loop (a2--)
 *   return s
 * ======================================================================== */

char *FUN_004327a0(char *s)
{
    int last;
    int i;
    char c;

    last = 0;
    if (s[0] != '\0') {
        for (last = 1; s[last] != '\0'; last++)
            ;
    }
    last--;

    for (i = 0; i < last; i++, last--) {
        c = s[i];
        s[i] = s[last];
        s[last] = c;
    }
    return s;
}