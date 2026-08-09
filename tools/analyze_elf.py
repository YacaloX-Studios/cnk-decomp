# -*- coding: utf-8 -*-
"""
tools/analyze_elf.py
--------------------
Byte-exact ELF header / segment analysis for the PS2 executable dump.

Documents the layout described in docs/07_EXECUTABLES.md and is robust to the
two endiannesses we may find copies in (the EE proper is big-endian, but
preservation/repack copies like `SLUS_206.49` ship as little-endian).

The R5900 flags word (0x20924000) and MIPS machine number disambiguate a valid
couple even after a byte swap, so we print both interpretations.  The caller
should trust the byte order in which the fields are internally consistent
(phdr0 filesz == ELF file size - offset, memsz == filesz, entry inside the
loaded segment).

Usage
    python tools/analyze_elf.py [SLUS_206.49]
"""

import os
import struct
import sys


def parse(path):
    d = open(path, "rb").read()

    if d[:4] != b"\x7fELF":
        raise ValueError("not an ELF: magic=%r" % d[:4])

    for bo, label in (("<", "LE"), (">", "BE")):
        ident = d[:16]
        e_type, e_machine, e_version = struct.unpack_from(bo + "HHI", d, 16)
        e_entry, e_phoff, e_shoff, e_flags = struct.unpack_from(bo + "IIII", d, 24)
        (e_ehsize, e_phentsize, e_phnum, e_shentsize, e_shnum,
         e_shstrndx) = struct.unpack_from(bo + "HHHHHH", d, 40)

        seg_filesz = 0
        seg_addr = []
        ph_ok = (0 < e_phnum <= 16 and 32 <= e_phentsize
                 and e_phoff + e_phnum * e_phentsize <= len(d))
        if ph_ok:
            for i in range(e_phnum):
                off = e_phoff + i * e_phentsize
                ptup = struct.unpack_from(bo + "IIIIIIII", d, off)
                ptype, poff, pvaddr, ppaddr, pfilesz, pmemsz, pflags, palign = ptup
                _poff, _vaddr, _memsz = poff, pvaddr, pmemsz
                seg_addr.append(ptup)
                if poff <= len(d):
                    seg_filesz = max(seg_filesz, poff + pfilesz)

        entry_inside = any(0 < vaddr <= e_entry < vaddr + memsz
                           for _pt, poff, vaddr, ppaddr, pfilesz, memsz, _f, _a
                           in seg_addr)
        plausible = (
            e_machine == 8 and e_version == 1
            and 0 < e_shnum <= 64
            and ph_ok
            and len(d) - seg_filesz <= 65536
        )
        complete = plausible and entry_inside and (e_shoff == 0 or e_shoff <= len(d))
        print("== %s interpretation ==" % label)
        print("  class=%d data=%d version=%d" % (d[4], d[5], d[6]))
        print("  e_type=%d e_machine=%d e_version=%d" % (e_type, e_machine, e_version))
        print("  e_entry=0x%08X phoff=0x%X shoff=0x%X flags=0x%X"
              % (e_entry, e_phoff, e_shoff, e_flags))
        print("  ehsize=%d phnum=%d phentsz=%d shnum=%d shentsz=%d shstrndx=%d"
              % (e_ehsize, e_phnum, e_phentsize, e_shnum, e_shentsize, e_shstrndx))
        if ph_ok:
            for i in range(e_phnum):
                off = e_phoff + i * e_phentsize
                ptype, poff, pvaddr, ppaddr, pfilesz, pmemsz, pflags, palign = \
                    struct.unpack_from(bo + "IIIIIIII", d, off)
                print("  ph%d type=%d off=0x%X vaddr=0x%08X filesz=%d memsz=%d "
                      "flags=0x%X align=%d" % (i, ptype, poff, pvaddr, pfilesz,
                                                pmemsz, pflags, palign))
        print("  => internally consistent: %s" % (plausible and complete))

    print("file size: %d" % len(d))


def main():
    src = sys.argv[1] if len(sys.argv) > 1 else os.path.join(
        os.path.dirname(os.path.abspath(__file__)), "..", "SLUS_206.49")
    parse(os.path.abspath(src))


if __name__ == "__main__":
    main()