# Build environment for the Crash Nitro Kart decomp (Roadmap step 4)
#
# The decomp validation is two-tier:
#   - HOST:  `make check`  compiles include/engine/validate_headers.c with
#            the local C compiler (gcc/clang/cc). Proves the recovered
#            headers are consistent C and the promoted struct layouts equal
#            the offsets the binary touches (_Static_assert).
#   - PS2 EE: `make check-ee` uses the ps2dev ee-gcc cross. The EE is the
#            real target (big-endian MIPS IPv6), so layout `sizeof` checks
#            run with the true ABI. Configure with EE_CC=/path/to/ee-gcc.

CC       ?= cc
EE_CC    ?= ee-gcc
INC      := include/engine
CSTD     := c11

HOST_CC  := $(shell command -v $(CC) 2>/dev/null || echo missing)
EE_PRESENT := $(shell command -v $(EE_CC) 2>/dev/null || echo missing)

.PHONY: all check check-ee clean

all: check

check:
	@test "$(HOST_CC)" != "missing" || { echo "no host C compiler found"; exit 2; }
	@echo "compiling recovered headers with host $(CC)..."
	$(CC) -I$(INC) -std=$(CSTD) -Wall -Wextra -c -o /dev/null $(INC)/validate_headers.c && echo "PASS (host)"

check-ee:
	@test "$(EE_PRESENT)" != "missing" || { echo "ee-gcc not found - install ps2dev toolchain (docs/11_BUILD.md)"; exit 2; }
	@echo "compiling recovered headers with PS2 EE $(EE_CC)..."
	$(EE_CC) -I$(INC) -std=$(CSTD) -Wall -c -o /dev/null $(INC)/validate_headers.c && echo "PASS (EE)"

clean:
	rm -f validate_headers.o /dev/null 2>/dev/null || true