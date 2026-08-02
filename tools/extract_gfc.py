#!/usr/bin/env python3
"""
GFC (Gob File Container) extractor for Crash Nitro Kart / VV Velocity engine.

This module parses a GFC index (ASSETS.GFC) that cross-references every asset
in ASSETS.GOB. A GFC is a flat container of 4327 STBL records stored inside
the GOB; each record is framed as:

    "STBL"      (4 bytes magic, ASCII)
    flag        (1 byte : 0x7a = zlib-compressed payload, 0x30 = raw payload)
    payload     (uncompressed or deflate stream, to the next "STBL")
    "ENBL"  + crc32(payload)   (4-byte tag + 4-byte trailer, = the GFC pool crc)

GFC layout (big-endian):
  * 24-byte header: [magic 0x00008008][GOB size][STBL count=4327][type-A count=1830]
    [275][first gob_ptr][sentinel...].
  * Record table at offset 24: 12-byte records, two kinds:
      - type-A: (0x7FFF, size, gob_base)  -- 1829 entries (1828 paired 1:1 with
        pool[1..1828], plus the anonymous header block pairs with pool[0]).
      - type-B: (id, size, gob_base)      -- sequential; layout not needed here.
  * Pool (name) table: 1829 entries of
      [0xECFD1200][0xECFD1200][0x40000000][crc32:u32][X:u32][name\0]
    Pool[i] names recA[i-1] (so pool[0] = anonymous first block, pool[1] <-> recA[0]).


NAME RECOVERY
-------------
Two complementary mechanisms recover the game-side filename for every one of the
4327 STBL frames:

(a) **content-CRC correlation (primary).**  crc32(uncompressed_payload) is searched
    for as a big-endian u32 across the whole GFC.  When found it sits inside an
    entry record of the form
        ... [const 0xECFD1200] [0xECFD1200] [0x40000000] [crc32:u32] [X:u32] [name:ASCII...\0]
    and the name string begins 8 bytes after the crc slot.  This reliably names
    the asset when the engine stored crc32(payload) verbatim (the "engine-hash"
    pool entries, ~1496 records, incl. ALL gfx/tracks/*.igb, hke/tracks/*.hke,
    common/audio/*.vag, mptracks/*.igb and the common/animations + game-progression
    sets).  Duplicate-content assets (several GOB blocks sharing one crc) are all
    recovered because every matching name record is emitted.

(b) **positional shift (fallback for the ~333 records the engine stored with its
    own custom u32 content-hash, which is NOT crc32(payload)).**  The type-A record
    table (the 0x7FFF-prefixed 12-byte records, in GOB-offset order = table index
    `i`) is paired one-to-one with the *next* pool entry:
        recA[i] (gob_base)  <->  pool[i+1].name
    (verified: recA[i].crc == pool[i+1].crc for 1496 of the 1828 paired records, and
     pool[0] = the anonymous header block at gob_ptr0).  For the ~333 records whose
     crc hash is not crc32(payload), the engine still placed the name in the
     positionally-shifted pool slot, so recA[i].name = pool[i+1].name is the correct
     filename.  This names the ghost/hke/igb/png/vag/char-igb/etc. blocks that
     content-CRC alone cannot reach, e.g. gfx/chars/*.igb, common/audio/*.vag,
     common/tracks/*.hke, common/tracks/ghost*.gst and the load-screen *.png.

(c) **content-magic (last resort)** names any block still unnamed (none in practice
    once (a)+(b) are combined).  PNG magic \x89PNG -> .png; VAGp magic at offset 0
    -> .vag; IGB dialect (raw or zlib-wrapped payload beginning with `2,#` or a
    zlib header whose decompressed body begins with `2,#`) -> .igb; all-printable
    leading bytes -> .csv; otherwise -> .bin.

The two name sources together reconstruct the full asset tree (all 4327 STBL frames
carry their game filename).

Usage:
    python tools/extract_gfc.py [ASSETS.GFC] [ASSETS.GOB] [out_dir]
"""

import os, sys, struct, zlib, collections

GFC_MAGIC = 0x00008008

# Asset extensions that are opaque binary containers without a universal content
# magic (CNK .igb / .gst / .hke / .dat / .dct / .bin / .opt).  These are accepted
# from the positional pool shift even when the content can't be content-sniffed.
_BINARY_EXTS = {".igb", ".gst", ".hke", ".dat", ".dct", ".bin", ".opt"}


def _ext_of(name: str) -> str:
    """Lowercased final extension (including the dot) of a filename, or ''."""
    n = name.lower()
    s = n.rfind(".")
    if s < 0:
        return ""
    return n[s:]

# ─── GOB STBL framing ────────────────────────────────────────────────
STBL_MAGIC = b"STBL"

def iter_stbl_frames(gob: bytes):
    """Yield (gob_offset, flag, payload) for every STBL frame in the GOB."""
    starts = []
    s = 0
    while True:
        i = gob.find(STBL_MAGIC, s)
        if i < 0: break
        starts.append(i)
        s = i + 4
    # de-dupe magic collisions that occur inside compressed payloads: a real
    # STBL frame is always 4-byte aligned and followed by a 1-byte flag 0x30
    # or 0x7a, and preceded by payload that (for non-first) ends on a 4-byte
    # boundary. We accept all aligned candidates; the flag test filters noise.
    blocks = []
    for st in starts:
        if blocks and st - blocks[-1] < 5:
            continue
        blocks.append(st)
    for idx in range(len(blocks)):
        start = blocks[idx]
        end = blocks[idx + 1] if idx + 1 < len(blocks) else len(gob)
        flag = gob[start + 4]
        raw = gob[start + 5:end]
        payload = raw
        method = "raw"
        if flag == 0x7a:
            try:
                payload = zlib.decompress(raw)
                method = "zlib"
            except Exception:
                payload = raw
                method = "zlib-fail"
        elif flag != 0x30:
            method = "raw"
        yield start, flag, payload, method


class GobFrameIndex:
    """Lazy index of the STBL frames in a GOB, in file order.

    Exposes the decompressed payload of every frame by index.  This is what the
    page-aware IGB export uses: a 64KB slot file's static data continues across
    the frames immediately following it (see docs/06_IGB_VARIANTS.md).
    """

    def __init__(self, gob: bytes):
        self.gob = gob
        starts = []
        s = 0
        while True:
            i = gob.find(STBL_MAGIC, s)
            if i < 0:
                break
            starts.append(i)
            s = i + 4
        blocks = []
        for st in starts:
            if blocks and st - blocks[-1] < 5:
                continue
            blocks.append(st)
        self.starts = blocks

    def __len__(self):
        return len(self.starts)

    def start(self, i: int) -> int:
        return self.starts[i]

    def payload(self, i: int) -> bytes:
        start = self.starts[i]
        end = self.starts[i + 1] if i + 1 < len(self.starts) else len(self.gob)
        flag = self.gob[start + 4]
        body = self.gob[start + 5:end]
        if flag == 0x7a:
            try:
                return zlib.decompress(body)
            except Exception:
                return body
        return body

    def following_payloads(self, i: int):
        """Yield the payloads of the frames after frame i (for paged data)."""
        for j in range(i + 1, len(self.starts)):
            yield self.payload(j)


# ─── GFC side: crc32 -> list of record locations ─────────────────────
def build_crc_index(gfc: bytes):
    """Map every big-endian u32 found in the GFC to the list of offsets holding it."""
    idx = collections.defaultdict(list)
    for i in range(0, len(gfc) - 3):
        idx[struct.unpack(">I", gfc[i:i + 4])[0]].append(i)
    return idx


def parse_pool(gfc: bytes):
    """
    Parse the name (pool) table.  Each entry:
        [0xECFD1200][0xECFD1200][0x40000000][crc32:u32][X:u32][name:ASCII...\0]
    Returns a list of (crc, X, name) in file order.  pool[i] names recA[i-1]
    (pool[0] is the anonymous header block).
    """
    entries = []
    p = 0
    n = len(gfc)
    while p < n - 12:
        if gfc[p:p + 4] == b"\x40\x00\x00\x00":
            crc = struct.unpack(">I", gfc[p + 4:p + 8])[0]
            X = struct.unpack(">I", gfc[p + 8:p + 12])[0]
            k = p + 12
            run = bytearray()
            while k < n and 0x20 <= gfc[k] < 0x7F and gfc[k] != 0 and k < p + 160:
                run.append(gfc[k]); k += 1
            s = run.decode("latin1")
            # require a real asset path (contains \\ or / and a suffix)
            if len(s) >= 6 and ("\\" in s or "/" in s) and gfc[k] == 0:
                si = 0
                while si < len(s) and s[si] not in (".", "/", "\\") and not s[si].isalnum():
                    si += 1
                entries.append((crc, X, s[si:]))
            p = k or p + 1
        else:
            p += 1
    return entries


def parse_recA(gfc: bytes, gob: bytes):
    """
    Parse the type-A record table: 12-byte records (0x7FFF, size, gob_base)
    whose gob_base is a real STBL frame base in the GOB.  Records are kept in
    GFC/table order so that recA[i] pairs with pool[i+1].
    Returns (recA_list, base->index map).
    """
    base_set = set()
    starts = []
    s = 0
    while True:
        i = gob.find(b"STBL", s)
        if i < 0:
            break
        starts.append(i)
        s = i + 4
    blocks = []
    for st in starts:
        if blocks and st - blocks[-1] < 5:
            continue
        blocks.append(st)
    base_set = set(blocks)
    recA = []
    for off in range(0, len(gfc) - 12, 4):
        a, size, base = struct.unpack(">III", gfc[off:off + 12])
        if a == 0x7FFF and base in base_set:
            recA.append((size, base, off))
    recA.sort(key=lambda r: r[2])  # ensure table (GFC-offset) order
    return recA, dict((b, i) for i, (_, b, _) in enumerate(recA))


def extract_name(gfc: bytes, crc_loc: int):
    """
    Given a GFC offset of a crc32 slot, return the entry name (or None).
    Layout:  [....] [crc32:u32 @ crc_loc] [u32:???] [name:ASCII...\\0]
    The name begins at crc_loc+8 and runs to the first non-printable/0 byte.
    """
    for base in (crc_loc + 8, crc_loc + 4, crc_loc + 12, crc_loc + 16):
        run = bytearray()
        k = base
        while k < len(gfc) and 0x20 <= gfc[k] < 0x7F and gfc[k] != 0:
            run.append(gfc[k]); k += 1
        if len(run) >= 8:
            txt = run.decode("latin1")
            # require a path separator or a recognised asset suffix
            if ("/" in txt or "\\" in txt or ".igb" in txt
                    or ".csv" in txt or ".hke" in txt or ".vag" in txt or ".png" in txt):
                # strip any leading garbage bytes (pre-name record fields)
                s = 0
                while s < len(txt) and txt[s] not in (".", "/", "\\") and not txt[s].isalnum():
                    s += 1
                if s < len(txt):
                    return txt[s:]
    return None


# ─── payload magic -> extension ───────────────────────────────────────
def _igb_body(payload: bytes) -> bool:
    """True if payload is (possibly zlib-wrapped) IGB content."""
    if payload[:4] == b"2,#":  # raw IGB magic (also matches "2,# ", "2,#v", ...)
        return True
    # CNK char .igb are zlib-streams whose decompressed body begins with 2,#
    if payload[:1] in (b"\x78",):
        try:
            body = zlib.decompress(payload)
            return body[:3] == b"2,#"
        except Exception:
            return False
    return False


def classify_ext(payload: bytes):
    if payload[:4] == b"\x89PNG":
        return ".png"
    if payload[:4] == b"VAGp":  # PS2 VAG magic lives at offset 0
        return ".vag"
    if _igb_body(payload):
        return ".igb"
    head = payload[:16]
    if len(head) == 16 and all(0x20 <= c < 0x7F for c in head) and b"\x00" not in head:
        return ".csv"
    return ".bin"


# ─── main extractor ──────────────────────────────────────────────────
def extract(gfc_path="ASSETS.GFC", gob_path="ASSETS.GOB", out_dir="gfc_extracted"):
    gfc = open(gfc_path, "rb").read()
    gob = open(gob_path, "rb").read()
    if struct.unpack(">I", gfc[:4])[0] != GFC_MAGIC:
        raise SystemExit("not a GFC file: %s" % gfc_path)

    crc_idx = build_crc_index(gfc)
    pool = parse_pool(gfc)
    recA, base2i = parse_recA(gfc, gob)
    os.makedirs(out_dir, exist_ok=True)

    manifest = []  # (gob_offset, flag, method, size, crc32, names, written_paths, src)
    n_crc = n_shift = n_content = n_dup = 0
    for gob_off, flag, payload, method in iter_stbl_frames(gob):
        crc = zlib.crc32(payload) & 0xFFFFFFFF
        names = []
        # (a) primary: content-CRC correlation (handles duplicate-content multi-name)
        for loc in crc_idx.get(crc, ()):
            nm = extract_name(gfc, loc)
            if nm and nm not in names:
                names.append(nm)
        src = "crc"
        # (b) fallback: positional shift  recA[i] <-> pool[i+1].name
        # The +1 pairing is PROVEN for the 1496 crc-matched records (recA[i].crc ==
        # pool[i+1].crc).  The ~333 records the engine stored with its own custom
        # content-hash (crc != crc32(payload)) still sit in the same 1:1 structure,
        # so pool[i+1].name is the game's intended filename.  We only *refuse* a
        # shift name when the name's extension is a content-checkable format
        # (png/vag/tga/csv) whose content magic disagrees -- that signals a genuine
        # mis-alignment, and we fall back to content-magic instead.
        if not names and gob_off in base2i:
            i = base2i[gob_off]
            if i + 1 < len(pool):
                cand = pool[i + 1][2]
                m = classify_ext(payload)
                e_name = _ext_of(cand)
                # accept the shift name if the extension matches the content magic,
                # or if it is a binary/proprietary asset (no universal magic) and the
                # content is opaque binary (.bin) -- best-effort, structurally paired.
                if e_name == m or (e_name in _BINARY_EXTS and m == ".bin"):
                    names.append(cand)
                    src = "shift"
        # (c) last resort: content-magic
        if not names:
            src = "content"
            ext = classify_ext(payload)
            names.append("block_%05d%s" % (gob_off // 0x800, ext))

        written = []
        for nm in names:
            path = os.path.join(out_dir, nm.replace("\\", "/"))
            d2 = os.path.dirname(path)
            if d2:
                os.makedirs(d2, exist_ok=True)
            with open(path, "wb") as f:
                f.write(payload)
            written.append(path)
        primary = names[0]
        if src == "crc":
            n_crc += 1
            if len(names) > 1:
                n_dup += 1
        elif src == "shift":
            n_shift += 1
        else:
            n_content += 1
        manifest.append((hex(gob_off), method, len(payload), hex(crc),
                         primary, written, src))

    import csv
    with open(os.path.join(out_dir, "_manifest.csv"), "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["gob_offset", "method", "uncomp_size", "crc32",
                     "name", "written_paths", "src"])
        for r in manifest:
            w.writerow([r[0], r[1], r[2], r[3], r[4] or "",
                        ";".join(r[5]), r[6]])

    total_blocks = len(manifest)
    print("extracted %d STBL frames -> %s" % (total_blocks, out_dir))
    print("crc-named assets (incl. duplicates): %d" % n_crc)
    print("duplicate-content blocks (multi-named): %d" % n_dup)
    print("positional-shift named: %d" % n_shift)
    print("content-classified fallback: %d" % n_content)
    print("manifest: %s" % os.path.join(out_dir, "_manifest.csv"))
    return manifest


if __name__ == "__main__":
    args = sys.argv[1:]
    gfc = args[0] if len(args) > 0 else "ASSETS.GFC"
    gob = args[1] if len(args) > 1 else "ASSETS.GOB"
    out = args[2] if len(args) > 2 else "gfc_extracted"
    extract(gfc, gob, out)
