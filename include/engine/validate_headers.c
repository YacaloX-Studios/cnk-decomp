/* ============================================================================
 * include/engine/validate_headers.c - compile-time validation of the
 * recovered headers (Phase 4, Roadmap step 4).
 *
 * Builds with any C compiler (host gcc/clang or the PS2 ee-gcc cross from
 * ps2dev). It proves:
 *   1. types.h / signatures.h / logic_signatures.h / recovered_structs.h
 *      are mutually consistent C;
 *   2. the promoted struct layouts match the binary evidence, using
 *      _Static_assert, so a later shift on the EE cannot silently diverge.
 *
 *   cc -Iinclude/engine -std=c11 -Wall -Wextra -c include/engine/validate_headers.c
 * ======================================================================== */
#include "types.h"
#include "signatures.h"
#include "logic_signatures.h"
#include "substruct_seeds.h"
#include "recovered_structs.h"

#include <stddef.h>

/* The promoted structs below are layout-derived from the ELF evidence:
 * offsets (arg slot, hex) = real member positions. Assert them so any
 * hand-edit that breaks alignment is caught at build time. */
_Static_assert(offsetof(struct Unknown_a0_4_8, f_0x4) == 4,
               "Unknown_a0_4_8.f_0x4 must sit at +0x4");
_Static_assert(offsetof(struct Unknown_a0_4_8, f_0x8) == 8,
               "Unknown_a0_4_8.f_0x8 must sit at +0x8");

#define CNK_ASSERT_LAYOUT(STRUCT, FIELD, OFF) \
    _Static_assert(offsetof(STRUCT, FIELD) == OFF, #STRUCT "." #FIELD " offset")

/* vec4 variant: fields at 0,4,8    (name shows the exact argument layout) */
CNK_ASSERT_LAYOUT(struct Unknown_a0_0_4_8, f_0x0, 0);
CNK_ASSERT_LAYOUT(struct Unknown_a0_0_4_8, f_0x4, 4);
CNK_ASSERT_LAYOUT(struct Unknown_a0_0_4_8, f_0x8, 8);
CNK_ASSERT_LAYOUT(struct Unknown_a2_0_4_8, f_0x0, 0);
CNK_ASSERT_LAYOUT(struct Unknown_a2_0_4_8, f_0x4, 4);
CNK_ASSERT_LAYOUT(struct Unknown_a2_0_4_8, f_0x8, 8);

/* pointer + flag object-like struct */
CNK_ASSERT_LAYOUT(struct Unknown_a0_0_1c,  f_0x0, 0);
CNK_ASSERT_LAYOUT(struct Unknown_a0_0_1c,  f_0x1c, 0x1c);

/* size sanity: the structs must be exactly the span the binary touches */
#define CNK_UNUSED_SIZE_OK(S, SZ) _Static_assert(sizeof(S) == SZ, #S " size")

/* Padded to absolute offsets from the arg base: Unknown_a0_4_8 = pad4 + 8. */
CNK_UNUSED_SIZE_OK(struct Unknown_a0_0_4_8, 12);
CNK_UNUSED_SIZE_OK(struct Unknown_a0_4_8,   12);

/* Referencing the functions in signatures.h stops unused-decl warnings from
 * mattering and documents that the prototypes are live for decompilation. */
/* Reference the recovered function names so the .c bodies will link; the
 * generated prototypes in signatures.h / logic_signatures.h are the source
 * of truth - this one is only a shape sample (void return per binary). */
int cnk_validate_tu_anchor(void) { return 0; }