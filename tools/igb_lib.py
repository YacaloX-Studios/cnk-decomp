#!/usr/bin/env python3
"""
IGB v5 (Intrinsic Geometry Binary) library for Crash Nitro Kart.

Format used by Vicarious Visions' Velocity engine (PS2, GC, Xbox).
Parses types, struct defs, refs, objects, static data, and exports
geometry (positions, colors, UVs) to standard formats.

File layout (byte-exact, verified against ManDude's igbtool):
  header: 5 x (size:u32, count:u32), magic:u32=0xFADA, version:u32=0x80000005
  section[4] types:  count x 12-byte headers, then count x names
    then shader subsection {size,val,sym_amt}, sym_amt name lengths, names
  section[1] structs: count x 24-byte defs, then per-struct name + 6-byte
    field triplets {type_idx:u16, slot:u16, size:u16}
  section[0] refs:    each {type:u32, size:u32, unk:u32} + payload
      type 3 = object ref  -> {struct_id:u32}   (16 bytes total)
      type 4 = static data -> {data_size,data_type,unk2,unk3} (28 bytes)
  top_object: u32 (version 5 only)
  section[2] objects: each {struct_id:u32, size:u32} + (size-8) data bytes
  section[3] static data: per DATA ref, data_size bytes (aligned to 4)

Field refs (MemoryRef/ObjectRef) store indices into the refs table.
Static data block i is the i-th DATA ref's payload.
"""

import os, struct, math, zlib, json
from enum import Enum
from dataclasses import dataclass, field
from typing import List, Tuple, Optional, Dict, Set, Any

# ─── Constants ───────────────────────────────────────────────
IGB_MAGIC = 0xFADA

# PS2 GS texture pixel formats
GS_PALETTE = 0     # PSMT8
GS_32BIT = 5       # PSMCT32
GS_16BIT = 7       # PSMCT16
GS_16BIT_A = 8     # PSMCT16S
GS_8BIT = 9        # PSMT8M
GS_4BIT = 10       # PSMT4M

# Primitive types used by igGeometryAttr (slot6 enum)
PRIM_TRIANGLES = 3
PRIM_TRI_STRIP = 4
PRIM_TRI_FAN = 5
PRIM_SPRITE = 6

INVALID_REF = 0xFFFFFFFF

# ─── Data classes ────────────────────────────────────────────

@dataclass
class Vertex:
    x: float = 0.0; y: float = 0.0; z: float = 0.0

@dataclass
class Normal:
    x: float = 0.0; y: float = 0.0; z: float = 0.0

@dataclass
class UV:
    u: float = 0.0; v: float = 0.0

@dataclass
class Color:
    r: int = 255; g: int = 255; b: int = 255; a: int = 255

@dataclass
class Material:
    name: str = ''
    texture_name: str = ''
    texture_data: Optional[bytes] = None
    width: int = 0
    height: int = 0
    fmt: int = 5  # GS format
    clut_data: Optional[bytes] = None
    clut_fmt: int = 0
    clut_colors: int = 0

@dataclass
class Mesh:
    name: str = 'mesh'
    verts: List[Vertex] = field(default_factory=list)
    normals: List[Optional[Normal]] = field(default_factory=list)
    uvs: List[Optional[UV]] = field(default_factory=list)
    colors: List[Optional[Color]] = field(default_factory=list)
    faces: List[Tuple[int, int, int]] = field(default_factory=list)
    material: str = ''

@dataclass
class Bone:
    name: str = ''
    parent: int = -1
    pos: Tuple[float, float, float] = (0,0,0)
    rot: Tuple[float, float, float, float] = (0,0,0,1)  # quat
    scale: Tuple[float, float, float] = (1,1,1)

@dataclass
class Keyframe:
    time: float
    pos: Tuple[float, float, float] = (0.0, 0.0, 0.0)
    rot: Tuple[float, float, float, float] = (0.0, 0.0, 0.0, 1.0)  # quat (x,y,z,w)
    scale: Tuple[float, float, float] = (1.0, 1.0, 1.0)

@dataclass
class Animation:
    name: str = ''
    duration: float = 0.0
    channels: List[Tuple[str, List[Keyframe]]] = field(default_factory=list)

# ─── IGB Parser ──────────────────────────────────────────────

def _align4(v: int) -> int:
    return (v + 3) & ~3


class IGB:
    """Parse IGB v5 binary format."""

    def __init__(self, data: bytes):
        self.data = data
        self.v = memoryview(data)
        self.offset = 0
        self.endian = '<'

        self.sections: List[Dict] = []       # [{size, count}] in file order
        self.magic: int = 0
        self.version: int = 0

        self.types: List[str] = []           # meta field names
        self.shader_symbols: List[str] = []
        self.structs: List[Dict] = []        # {id,name,parent,fields}
        self.refs: List[Dict] = []           # {kind:'OBJ'|'DATA', ...}
        self.top_object: Optional[int] = None
        self.objs: List[Dict] = []           # {struct_id, data, ref_idx}
        self.data_blocks: List[bytes] = []   # static data payloads

        # compatibility aliases
        self.meta_fields = []                # list of {'name':...}
        self.meta_objects = []
        self.entries = []
        self.mref_buf = b''

        self._read_all()

    # ── Low-level readers ──
    def _u8(self) -> int:
        v = self.v[self.offset]
        self.offset += 1
        return v

    def _u16(self) -> int:
        v = struct.unpack_from('<H', self.v, self.offset)[0]
        self.offset += 2
        return v

    def _u32(self) -> int:
        v = struct.unpack_from('<I', self.v, self.offset)[0]
        self.offset += 4
        return v

    def _s32(self) -> int:
        v = struct.unpack_from('<i', self.v, self.offset)[0]
        self.offset += 4
        return v

    # ── Section readers ──
    def _read_all(self):
        # header: 5 x (size:u32, count:u32)
        for i in range(5):
            self.sections.append({'size': self._u32(), 'count': self._u32()})
        self.magic = self._u32()
        self.version = self._u32()
        if self.magic != IGB_MAGIC:
            raise ValueError('not an IGB file (magic %08X)' % self.magic)

        self._read_types()
        self._read_shader_subsection()
        self._read_structs()
        self._read_refs()
        try:
            if self.version == 0x80000005:
                self.top_object = self._u32()
        except struct.error:
            self.top_object = 0 if self.top_object is None else self.top_object
        self._read_objects()
        self._read_static_data()
        if self.version == 0x80000004:
            try:
                self.top_object = self._u32()
            except struct.error:
                pass

        if self.offset != len(self.data):
            pass  # tolerate trailing padding

        # compatibility aliases
        self.meta_fields = [{'name': t, 'name_str': t} for t in self.types]
        self.meta_objects = [{
            'name': s['name'], 'name_str': s['name'], 'parent': s['parent'],
            'fields_raw': [(f[0], f[1], f[2]) for f in s['fields']],
        } for s in self.structs]

    def _read_types(self):
        cnt = self.sections[4]['count']
        headers = []
        for i in range(cnt):
            name_length = self._u32()
            u_bool = self._u32()
            u_val = self._u32()
            headers.append((name_length, u_bool, u_val))
        for (nl, ub, uv) in headers:
            nm = self.v[self.offset:self.offset + nl - 1].tobytes().decode('ascii', 'replace')
            self.offset += nl
            self.types.append(nm.rstrip('\x00'))

    def _read_shader_subsection(self):
        shader_size = self._u32()
        shader_val = self._u32()
        sym_amt = self._u32()
        lens = [self._u32() for _ in range(sym_amt)]
        for l in lens:
            nm = self.v[self.offset:self.offset + l - 1].tobytes().decode('ascii', 'replace')
            self.offset += l
            self.shader_symbols.append(nm.rstrip('\x00'))

    def _read_structs(self):
        cnt = self.sections[1]['count']
        defs = []
        for i in range(cnt):
            name_length = self._u32()
            is_master = self._u32()
            u_val1 = self._u32()
            field_count = self._u32()
            parent = self._s32()
            u_val2 = self._u32()
            defs.append((name_length, is_master, u_val1, field_count, parent, u_val2))
        for i, (nl, im, uv1, fc, parent, uv2) in enumerate(defs):
            nm = self.v[self.offset:self.offset + nl - 1].tobytes().decode('ascii', 'replace')
            self.offset += nl
            fields = []
            for f in range(fc):
                type_idx = self._u16()
                slot = self._u16()
                size = self._u16()
                fields.append((type_idx, slot, size))
            self.structs.append({
                'id': i, 'name': nm.rstrip('\x00'), 'parent': parent,
                'fields': fields, 'u_val2': uv2,
            })

    def _read_refs(self):
        cnt = self.sections[0]['count']
        for i in range(cnt):
            if self.offset + 12 > len(self.data):
                break
            ref_type = self._u32()
            # CNK slot-binary files carry bogus section counts that describe
            # the reserved 64KB slot rather than the real payload. The real
            # refs stream ends where the next section begins, so stop when the
            # entry shape stops matching a valid ref.
            if ref_type not in (3, 4):
                break
            ref_size = self._u32()
            ref_unk = self._u32()
            if ref_unk != 0 or ref_size not in (16, 28):
                break
            if ref_type == 3:
                if self.offset + 4 > len(self.data):
                    break
                struct_id = self._u32()
                self.refs.append({'kind': 'OBJ', 'struct_id': struct_id})
            elif ref_type == 4:
                if self.offset + 16 > len(self.data):
                    break
                ds = self._u32(); dt = self._u32()
                u2 = self._u32(); u3 = self._s32()
                self.refs.append({'kind': 'DATA', 'data_size': ds,
                                  'data_type': dt, 'unk2': u2, 'unk3': u3})

    def _read_objects(self):
        cnt = self.sections[2]['count']
        obj_refs = [i for i, r in enumerate(self.refs) if r['kind'] == 'OBJ']
        for i in range(cnt):
            if self.offset + 8 > len(self.data):
                break
            struct_id = self._u32()
            size = self._u32()
            # stop on bogus / sentinel object records (CNK slot padding)
            if struct_id == 0xFFFFFFFF or size < 8:
                break
            blob_end = self.offset + (size - 8)
            if blob_end > len(self.data):
                # truncated final object: keep what fits, then stop
                blob = self.v[self.offset:len(self.data)].tobytes()
                self.offset = len(self.data)
                if blob:
                    self.objs.append({'struct_id': struct_id, 'data': blob,
                                      'ref_idx': obj_refs[i] if i < len(obj_refs) else INVALID_REF})
                break
            blob = self.v[self.offset:blob_end].tobytes()
            self.offset = blob_end
            self.objs.append({'struct_id': struct_id, 'data': blob,
                              'ref_idx': obj_refs[i] if i < len(obj_refs) else INVALID_REF})

    def _read_static_data(self):
        cnt = self.sections[3]['count']
        data_refs = [i for i, r in enumerate(self.refs) if r['kind'] == 'DATA']
        for i in range(len(data_refs)):
            if self.offset + 4 > len(self.data):
                break
            ds = self.refs[data_refs[i]]['data_size']
            if ds == 0xFFFFFFFF or ds > len(self.data) - self.offset:
                break
            blk = self.v[self.offset:self.offset + ds].tobytes()
            assert len(blk) == ds
            self.offset += ds
            self.offset += (4 - (ds % 4)) % 4
            self.data_blocks.append(blk)
        self.mref_buf = self.v[:0].tobytes()

    # ── Paged static-data reconstruction (CNK slot binaries) ──
    def data_is_complete(self) -> bool:
        """True if the in-file static data covers every DATA ref.

        Clean IGB files store the whole data section inline.  CNK 64KB slot
        files carry only the first ~10KB and page the rest across the STBL
        frames that follow them in the GOB (see docs/06_IGB_VARIANTS.md).
        """
        drefs = [r for r in self.refs if r['kind'] == 'DATA']
        if len(drefs) != len(self.data_blocks):
            return False
        for r, b in zip(drefs, self.data_blocks):
            if r['data_size'] != len(b):
                return False
        return True

    def reconstruct_data_blocks(self, next_payloads) -> bool:
        """Rebuild the full static-data area of a paged slot file.

        The slot's own tail holds the first bytes of the (virtual) data
        section; the frames immediately following it in the GOB continue the
        same byte stream.  Concatenate them until the data section size
        (sections[3]['size']) is reached, then re-slice the DATA-ref blocks.
        Returns True on success (fills self.data_blocks).
        """
        drefs = [r for r in self.refs if r['kind'] == 'DATA']
        consumed = sum(len(b) + (4 - (len(b) % 4)) % 4 for b in self.data_blocks)
        data_start = self.offset - consumed
        data_area = bytearray(self.data[data_start:])
        need = self.sections[3]['size']
        for p in next_payloads:
            if len(data_area) >= need:
                break
            data_area.extend(p)
        if len(data_area) < need:
            return False
        blocks = []
        off = 0
        for r in drefs:
            ds = r['data_size']
            if off + ds > len(data_area):
                return False
            blocks.append(bytes(data_area[off:off + ds]))
            off += ds
            off += (4 - (ds % 4)) % 4
        self.data_blocks = blocks
        return True

    # ── Ref resolution ──
    def ref_kind(self, ref_idx: int) -> Optional[str]:
        """Return 'OBJ'/'DATA'/None for a ref index."""
        if ref_idx == INVALID_REF or ref_idx >= len(self.refs):
            return None
        return self.refs[ref_idx]['kind']

    def ref_to_obj(self, ref_idx: int) -> Optional[int]:
        """Map a ref index to the object index (for OBJ refs)."""
        for i, o in enumerate(self.objs):
            if o['ref_idx'] == ref_idx:
                return i
        return None

    def ref_to_data(self, ref_idx: int) -> Optional[int]:
        """Map a ref index to the static data block index (for DATA refs)."""
        idx = 0
        for i, r in enumerate(self.refs):
            if r['kind'] != 'DATA':
                continue
            if i == ref_idx:
                return idx
            idx += 1
        return None

    def data_block_for(self, ref_idx: int) -> Optional[bytes]:
        k = self.ref_to_data(ref_idx)
        if k is None:
            return None
        return self.data_blocks[k]

    def object_of_ref(self, ref_idx: int) -> Optional[Dict]:
        i = self.ref_to_obj(ref_idx)
        if i is None:
            return None
        return self.objs[i]

    # ── Field decoding ──
    def struct_fields(self, struct_id: int):
        """Yield (slot, type_name, size) for a struct's serialized fields."""
        s = self.structs[struct_id]
        for (ti, slot, sz) in s['fields']:
            yield (slot, self.types[ti] if ti < len(self.types) else '?', sz)

    def decode_fields(self, obj_idx: int) -> Dict[int, Any]:
        """Decode an object's data into {slot: value}. Strings handled."""
        o = self.objs[obj_idx]
        d = o['data']
        pos = 0
        out = {}
        for (slot, tn, sz) in self.struct_fields(o['struct_id']):
            if pos >= len(d):
                break
            if tn == 'igStringMetaField':
                if pos + 4 > len(d):
                    break
                slen = struct.unpack_from('<I', d, pos)[0]
                pos += 4
                raw = d[pos:pos + slen]
                pos = _align4(pos + slen)
                s = raw.split(b'\0', 1)[0].decode('ascii', 'replace')
                out[slot] = s
                continue
            raw = d[pos:pos + sz]
            pos = _align4(pos + sz)
            out[slot] = self._decode_raw(tn, raw, sz)
        return out

    def _decode_raw(self, tn: str, raw: bytes, sz: int):
        if tn == 'igBoolMetaField':
            return raw[0] != 0
        if tn == 'igCharMetaField':
            return struct.unpack('<b', raw[:1])[0]
        if tn == 'igUnsignedCharMetaField':
            return raw[0]
        if tn == 'igShortMetaField':
            return struct.unpack('<h', raw[:2])[0]
        if tn == 'igUnsignedShortMetaField':
            return struct.unpack('<H', raw[:2])[0]
        if tn in ('igIntMetaField',):
            return struct.unpack('<i', raw[:4])[0]
        if tn in ('igUnsignedIntMetaField', 'igEnumMetaField'):
            return struct.unpack('<I', raw[:4])[0]
        if tn == 'igLongMetaField':
            return struct.unpack('<q', raw[:8])[0]
        if tn == 'igUnsignedLongMetaField':
            return struct.unpack('<Q', raw[:8])[0]
        if tn == 'igFloatMetaField':
            return struct.unpack('<f', raw[:4])[0]
        if tn == 'igDoubleMetaField':
            return struct.unpack('<d', raw[:8])[0]
        if tn == 'igVec2fMetaField':
            return struct.unpack('<2f', raw[:8])
        if tn == 'igVec3fMetaField':
            return struct.unpack('<3f', raw[:12])
        if tn == 'igVec4fMetaField':
            return struct.unpack('<4f', raw[:16])
        if tn == 'igMatrix44fMetaField':
            return struct.unpack('<16f', raw[:64])
        if tn in ('igObjectRefMetaField', 'igMemoryRefMetaField', 'igRawRefMetaField'):
            return struct.unpack('<I', raw[:4])[0]
        if tn == 'igStructMetaField':
            return raw
        return raw  # arrays and unknown types: raw bytes

    def get_field(self, obj_idx: int, slot: int, default=None):
        o = self.objs[obj_idx]
        key = ('slots', obj_idx)
        cached = getattr(self, '_field_cache', None)
        if cached is None:
            self._field_cache = {}
        if key not in self._field_cache:
            self._field_cache[key] = self.decode_fields(obj_idx)
        return self._field_cache[key].get(slot, default)

    # ── Mesh extraction ──
    def find_geometry_attrs(self, start_ref: Optional[int] = None) -> List[int]:
        """Walk scene graph from start_ref (or top_object) for igGeometryAttr1_5."""
        if start_ref is None:
            start_ref = self.top_object
        out: List[int] = []
        visited = set()

        def walk(obj_idx: int, depth: int = 0):
            if obj_idx in visited or depth > 30 or obj_idx >= len(self.objs):
                return
            visited.add(obj_idx)
            st = self.structs[self.objs[obj_idx]['struct_id']]
            if st['name'] == 'igGeometryAttr1_5':
                out.append(obj_idx)
            if st['name'].endswith('List'):
                mem = self.get_field(obj_idx, 4)
                if isinstance(mem, int) and mem != INVALID_REF and self.ref_kind(mem) == 'DATA':
                    blk = self.data_block_for(mem)
                    if blk:
                        for sub in struct.unpack('<%dI' % (len(blk) // 4), blk):
                            if sub != INVALID_REF and self.ref_kind(sub) == 'OBJ':
                                tgt = self.ref_to_obj(sub)
                                if tgt is not None:
                                    walk(tgt, depth + 1)

        if start_ref is not None and start_ref != INVALID_REF and self.ref_kind(start_ref) == 'OBJ':
            start = self.ref_to_obj(start_ref)
            if start is not None:
                walk(start)
        # fallback: scan all objects
        if not out:
            for i, o in enumerate(self.objs):
                if self.structs[o['struct_id']]['name'] == 'igGeometryAttr1_5':
                    out.append(i)
        return out

    def extract_meshes(self, scene_ref: Optional[int] = None) -> List[Mesh]:
        """Extract all meshes (positions/colors/UVs + triangle strips)."""
        meshes: List[Mesh] = []
        for g in self.find_geometry_attrs(scene_ref):
            m = self._mesh_from_geo(g)
            if m is not None:
                meshes.append(m)
        return meshes

    def _mesh_from_geo(self, geo_idx: int) -> Optional[Mesh]:
        va_ref = self.get_field(geo_idx, 4)
        prim_ref = self.get_field(geo_idx, 13)
        prim_type = self.get_field(geo_idx, 6, PRIM_TRI_STRIP)
        if not isinstance(va_ref, int) or not isinstance(prim_ref, int):
            return None
        if va_ref == INVALID_REF:
            return None
        if prim_ref != INVALID_REF:
            pass
        else:
            prim_ref = None
        va = self.object_of_ref(va_ref)
        if va is None:
            return None
        if self.structs[va['struct_id']]['name'] not in ('igVertexArray1_1', 'igVertexArray'):
            return None

        memlist = self.get_field(self.ref_to_obj(va_ref), 2)
        vcount = self.get_field(self.ref_to_obj(va_ref), 3, 0)
        if not isinstance(memlist, int) or memlist == INVALID_REF or not isinstance(vcount, int):
            return None
        blk = self.data_block_for(memlist)
        if not blk:
            return None

        subrefs = [s for s in struct.unpack('<%dI' % (len(blk) // 4), blk)
                   if s != INVALID_REF and self.ref_kind(s) == 'DATA']
        bufs = [(s, self.data_block_for(s)) for s in subrefs]
        bufs = [(s, b) for (s, b) in bufs if b is not None]

        positions = colors = uvs = normals = None
        for s, b in bufs:
            per = len(b) // vcount if vcount else 0
            if per == 12 and positions is None:
                positions = b
            elif per == 12 and normals is None:
                normals = b
            elif per == 4 and colors is None:
                colors = b
            elif per == 8 and uvs is None:
                uvs = b
        if positions is None:
            return None

        # primitive lengths
        strips = []
        if prim_ref is not None:
            pl_obj = self.object_of_ref(prim_ref)
            if pl_obj is not None:
                pl_mem = self.get_field(self.ref_to_obj(prim_ref), 2)
                pl_blk = self.data_block_for(pl_mem) if isinstance(pl_mem, int) else None
                if pl_blk:
                    strips = list(struct.unpack('<%dI' % (len(pl_blk) // 4), pl_blk))
        if not strips:
            # no explicit index list: sequential primitives over all vertices
            strips = [vcount]

        name = self.structs[self.objs[geo_idx]['struct_id']]['name']
        mesh = Mesh(name='geo%d' % geo_idx)
        for i in range(vcount):
            x, y, z = struct.unpack('<3f', positions[i*12:i*12+12])
            mesh.add_vert(x, y, z)
            if colors and i*4 + 4 <= len(colors):
                r, g, b, a = colors[i*4:i*4+4]
                mesh.colors.append(Color(r, g, b, a))
            else:
                mesh.colors.append(None)
            if uvs and i*8 + 8 <= len(uvs):
                u, v = struct.unpack('<2f', uvs[i*8:i*8+8])
                mesh.add_uv(u, v)
            else:
                mesh.uvs.append(None)
            if normals and i*12 + 12 <= len(normals):
                nx, ny, nz = struct.unpack('<3f', normals[i*12:i*12+12])
                mesh.normals.append(Normal(nx, ny, nz))
            else:
                mesh.normals.append(None)

        off = 0
        for strip in strips:
            if strip < 3 or off + strip > vcount:
                off += strip
                continue
            if prim_type == PRIM_TRI_STRIP:
                for i in range(strip - 2):
                    a, b, c = off + i, off + i + 1, off + i + 2
                    if i % 2 == 1:
                        a, b = b, a
                    mesh.add_face(a, b, c)
            elif prim_type == PRIM_TRIANGLES:
                for i in range(0, strip * 3, 3):
                    if off + i + 2 < vcount:
                        mesh.add_face(off + i, off + i + 1, off + i + 2)
            elif prim_type == PRIM_TRI_FAN:
                for i in range(1, strip - 1):
                    if off + i + 1 < vcount:
                        mesh.add_face(off, off + i, off + i + 1)
            off += strip

        if not mesh.faces:
            return None
        return mesh

    def has_vertex_array(self) -> bool:
        """Check if this IGB contains any VertexArray objects."""
        for o in self.objs:
            if 'VertexArray' in self.structs[o['struct_id']]['name']:
                return True
        return False

    # ── Texture extraction (heuristic, incomplete) ──
    def extract_textures(self) -> List[Material]:
        """Extract textures from igImage objects (linear, unswizzled data).

        igImage field slots vary slightly between files, so fields are matched
        by meta-field type instead of fixed slot numbers.
        Verified layouts: slot2=width, slot3=height, first enum=format,
        first int=pixel_size, first MemoryRef=pixel data, first ObjectRef=clut,
        first string=source path. Formats: 5=RGB888, 7=RGBA8888,
        0x10000=PSMT8 indexed, 0x10001=PSMT4 indexed.
        """
        materials = []
        for i, o in enumerate(self.objs):
            if self.structs[o['struct_id']]['name'] != 'igImage':
                continue
            d = self.decode_fields(i)
            ft = {slot: tn for (slot, tn, sz) in self.struct_fields(o['struct_id'])}
            uints = [v for s, v in d.items() if ft.get(s) == 'igUnsignedIntMetaField']
            enums = [v for s, v in d.items() if ft.get(s) == 'igEnumMetaField']
            mems = [v for s, v in d.items() if ft.get(s) in ('igMemoryRefMetaField', 'igRawRefMetaField')]
            objrefs = [v for s, v in d.items() if ft.get(s) == 'igObjectRefMetaField']
            strs = [v for s, v in d.items() if ft.get(s) == 'igStringMetaField']
            if len(uints) < 2 or not enums or not mems:
                continue
            w, h = uints[0], uints[1]
            if w <= 0 or h <= 0 or w > 4096 or h > 4096:
                continue
            fmt = enums[0]
            data_ref = mems[0]
            blk = self.data_block_for(data_ref) if isinstance(data_ref, int) else None
            if not blk:
                continue

            mat = Material(name='tex%d' % i)
            mat.width, mat.height, mat.fmt = w, h, fmt
            mat.texture_name = ''
            if strs and isinstance(strs[0], str):
                mat.texture_name = os.path.basename(strs[0]).rsplit('.', 1)[0]

            clut_data = None
            clut_fmt = 0
            clut_colors = 0
            if objrefs and isinstance(objrefs[0], int) and objrefs[0] != INVALID_REF:
                coi = self.ref_to_obj(objrefs[0])
                if coi is not None and 'Clut' in self.structs[self.objs[coi]['struct_id']]['name']:
                    cd = self.decode_fields(coi)
                    cft = {s2: tn2 for (s2, tn2, sz2) in self.struct_fields(self.objs[coi]['struct_id'])}
                    ce = [v for s2, v in cd.items() if cft.get(s2) == 'igEnumMetaField']
                    cu = [v for s2, v in cd.items() if cft.get(s2) == 'igUnsignedIntMetaField']
                    cm = [v for s2, v in cd.items() if cft.get(s2) in ('igMemoryRefMetaField', 'igRawRefMetaField')]
                    if ce:
                        clut_fmt = ce[0]
                    if cu:
                        clut_colors = cu[0]
                    if cm and isinstance(cm[0], int):
                        cblk = self.data_block_for(cm[0])
                        if cblk and clut_fmt == 7 and clut_colors > 0:
                            clut_data = cblk[:clut_colors * 4]

            rgba = decode_image_linear(blk, w, h, fmt, clut_data)
            if rgba is None:
                continue
            mat.texture_data = rgba
            mat.clut_data = clut_data
            mat.clut_fmt = clut_fmt
            mat.clut_colors = clut_colors
            materials.append(mat)
        return materials

    def extract_strings(self) -> List[str]:
        """Return all igStringObj string values (anim names, object names...)."""
        out = []
        for i, o in enumerate(self.objs):
            if self.structs[o['struct_id']]['name'] != 'igStringObj':
                continue
            r = self.get_field(i, 2)
            if isinstance(r, int) and self.ref_kind(r) == 'DATA':
                blk = self.data_block_for(r)
                if blk:
                    out.append(blk.split(b'\0', 1)[0].decode('ascii', 'replace'))
        return out

    # ── Animation extraction ──────────────────────────────────
    def _list_data(self, obj_idx: int, slot: int, struct_name: str):
        """Resolve an object-ref field to a tuple of values from its list data."""
        r = self.get_field(obj_idx, slot)
        if not isinstance(r, int) or self.ref_kind(r) != 'OBJ':
            return None
        oi = self.ref_to_obj(r)
        if oi is None:
            return None
        st = self.structs[self.objs[oi]['struct_id']]['name']
        if st != struct_name:
            return None
        mem = self.get_field(oi, 4)
        if not isinstance(mem, int):
            return None
        blk = self.data_block_for(mem)
        if not blk:
            return None
        if struct_name == 'igLongList':
            n = len(blk) // 8
            return tuple(struct.unpack('<%dq' % n, blk[:n * 8]))
        if struct_name == 'igVec3fList':
            n = len(blk) // 12
            return tuple(struct.unpack('<3f', blk[k * 12:k * 12 + 12]) for k in range(n))
        if struct_name == 'igQuaternionfList':
            n = len(blk) // 16
            return tuple(struct.unpack('<4f', blk[k * 16:k * 16 + 16]) for k in range(n))
        return None

    def extract_animations(self) -> List[Animation]:
        """Extract keyframe animations from igTransformSequence1_5 objects.

        Each sequence is one (bone, animation) channel: slot2 = translation
        (igVec3fList), slot3 = rotation quats (igQuaternionfList), slot4 =
        scale (igVec3fList), slot11 = keyframe times (igLongList, ns ticks),
        slot18 = total duration (ns ticks). Channels sharing an identical
        timestamp array and duration belong to the same animation.
        """
        seqs = [i for i, o in enumerate(self.objs)
                if self.structs[o['struct_id']]['name'] == 'igTransformSequence1_5']
        raw = []
        for i in seqs:
            d = self.decode_fields(i)
            times = self._list_data(i, 11, 'igLongList')
            trans = self._list_data(i, 2, 'igVec3fList')
            rots = self._list_data(i, 3, 'igQuaternionfList')
            scales = self._list_data(i, 4, 'igVec3fList')
            if times is None and trans is None and rots is None and scales is None:
                continue
            dur = d.get(18)
            duration = dur / 1e9 if isinstance(dur, int) and dur > 0 else -1.0
            raw.append({'obj': i, 'times': times, 'trans': trans,
                        'rots': rots, 'scales': scales, 'duration': duration})

        groups: Dict[Any, list] = {}
        for r in raw:
            key = (r['duration'], r['times'])
            groups.setdefault(key, []).append(r)

        anims = []
        for gi, ((duration, times), members) in enumerate(
                sorted(groups.items(), key=lambda kv: kv[0][0])):
            n = len(times) if times else 0
            if not n:
                for m in members:
                    n = max(n, len(m['trans'] or ()), len(m['rots'] or ()),
                            len(m['scales'] or ()))
            anim = Animation(name='anim%d' % gi, duration=duration)
            for m in sorted(members, key=lambda x: x['obj']):
                kfs = []
                for k in range(n):
                    t = times[k] / 1e9 if times and k < len(times) else \
                        (duration * k / max(n - 1, 1) if duration > 0 else 0.0)
                    pos = m['trans'][k] if m['trans'] and k < len(m['trans']) else (0.0, 0.0, 0.0)
                    rot = m['rots'][k] if m['rots'] and k < len(m['rots']) else (0.0, 0.0, 0.0, 1.0)
                    scl = m['scales'][k] if m['scales'] and k < len(m['scales']) else (1.0, 1.0, 1.0)
                    kfs.append(Keyframe(t, pos, rot, scl))
                anim.channels.append(('seq%d' % m['obj'], kfs))
            anims.append(anim)
        return anims


# Mesh helper methods
def add_vert(self, x, y, z):
    self.verts.append(Vertex(x, y, z))

def add_normal(self, x, y, z):
    self.normals.append(Normal(x, y, z))

def add_uv(self, u, v):
    self.uvs.append(UV(u, v))

def add_face(self, a, b, c):
    self.faces.append((a, b, c))

Mesh.add_vert = add_vert
Mesh.add_normal = add_normal
Mesh.add_uv = add_uv
Mesh.add_face = add_face

# ─── OBJ/MTL Exporter ────────────────────────────────────────

def export_mesh_to_obj(mesh: Mesh, filepath: str, mtl_name: str = ''):
    with open(filepath, 'w') as f:
        if mtl_name:
            f.write('mtllib %s\n' % mtl_name)
        f.write('o %s\n' % mesh.name)
        if mesh.material:
            f.write('usemtl %s\n' % mesh.material)
        has_color = any(c is not None for c in mesh.colors)
        for i, v in enumerate(mesh.verts):
            line = 'v %.6f %.6f %.6f' % (v.x, v.y, v.z)
            if has_color and mesh.colors[i] is not None:
                c = mesh.colors[i]
                line += ' %.3f %.3f %.3f' % (c.r / 255.0, c.g / 255.0, c.b / 255.0)
            f.write(line + '\n')
        has_uv = any(u is not None for u in mesh.uvs)
        if has_uv:
            for uv in mesh.uvs:
                if uv:
                    f.write('vt %.6f %.6f\n' % (uv.u, uv.v))
                else:
                    f.write('vt 0.0 0.0\n')
        has_norm = any(n is not None for n in mesh.normals)
        if has_norm:
            for n in mesh.normals:
                if n:
                    f.write('vn %.6f %.6f %.6f\n' % (n.x, n.y, n.z))
                else:
                    f.write('vn 0.0 1.0 0.0\n')
        for a, b, c in mesh.faces:
            if has_norm and has_uv:
                f.write('f %d/%d/%d %d/%d/%d %d/%d/%d\n' % (a+1, a+1, a+1, b+1, b+1, b+1, c+1, c+1, c+1))
            elif has_norm:
                f.write('f %d//%d %d//%d %d//%d\n' % (a+1, a+1, b+1, b+1, c+1, c+1))
            elif has_uv:
                f.write('f %d/%d %d/%d %d/%d\n' % (a+1, a+1, b+1, b+1, c+1, c+1))
            else:
                f.write('f %d %d %d\n' % (a+1, b+1, c+1))

def write_mtl_file(filepath: str, textures: List[Dict]):
    with open(filepath, 'w') as f:
        f.write('# MTL file generated by Crash Nitro Kart IGB Library\n')
        for tex in textures:
            mat_name = tex.get('mat_name') or tex.get('mat') or 'material'
            png_path = (tex.get('png_path') or tex.get('png')
                        or (tex.get('name') or 'unknown') + '.png')
            f.write('\nnewmtl %s\n' % mat_name)
            f.write('  map_Kd %s\n' % png_path)

# ─── PS2 GS Texture Decoder ──────────────────────────────────

def decode_gs_texture(data: bytes, w: int, h: int, fmt: int = 5,
                      clut_data: Optional[bytes] = None,
                      clut_fmt: int = 0, clut_colors: int = 0) -> Optional[bytes]:
    """Decode PS2 GS texture to raw RGBA bytes."""
    if fmt == 5:  # PSMCT32
        pixels = bytearray(w * h * 4)
        for y in range(h):
            for x in range(w):
                page_x = x // 64
                page_y = y // 32
                in_page_x = x % 64
                in_page_y = y % 32
                src_off = (page_y * (64*32) + page_x * (64*32) +
                          in_page_y * 64 + in_page_x) * 4
                dst_off = (y * w + x) * 4
                if src_off + 4 <= len(data):
                    pixels[dst_off:dst_off+4] = data[src_off:src_off+4]
        return bytes(pixels)

    elif fmt == 7:  # PSMCT16 (RGB565)
        pixels = bytearray(w * h * 4)
        for y in range(h):
            for x in range(w):
                page_x = x // 32
                page_y = y // 16
                px = x % 32
                py = y % 16
                col = px // 4
                row = py // 4
                src_off = (page_y * (w // 32) + page_x) * 1024 + row * 128 + col * 32 + (py % 4) * 8 + (px % 4) * 2
                dst_off = (y * w + x) * 4
                if src_off + 2 <= len(data):
                    pix = struct.unpack('<H', data[src_off:src_off+2])[0]
                    r = (pix >> 11) & 0x1F
                    g = (pix >> 6) & 0x1F
                    b = pix & 0x1F
                    a = 255
                    if fmt == 8:  # PSMCT16S has 1-bit alpha
                        a = 255 if (pix >> 15) else 0
                    pixels[dst_off] = (r * 255 + 15) // 31
                    pixels[dst_off+1] = (g * 255 + 15) // 31
                    pixels[dst_off+2] = (b * 255 + 15) // 31
                    pixels[dst_off+3] = a
        return bytes(pixels)

    elif fmt == 0 and clut_data:  # PSMT8 (8-bit indexed)
        return _decode_paletted(data, w, h, 8, clut_data, clut_fmt, clut_colors)

    elif fmt == 1 and clut_data:  # PSMT4 (4-bit indexed)
        return _decode_paletted(data, w, h, 4, clut_data, clut_fmt, clut_colors)

    return None

def _decode_paletted(data, w, h, bpp, clut_data, clut_fmt, clut_colors):
    """Decode paletted GS textures."""
    if bpp == 8:
        tw = (w + 63) // 64 * 64
        indices = bytearray(w * h)
        for y in range(h):
            for x in range(w):
                page_x = x // 64
                page_y = y // 32
                px = x % 64
                py = y % 32
                col = px // 8
                row = py // 4
                off = (page_y * (tw // 64) + page_x) * 2048 + row * 512 + col * 32 + (py % 4) * 8 + (px % 8)
                if off < len(data):
                    indices[y * w + x] = data[off]
    else:  # 4-bit
        tw = (w + 127) // 128 * 64
        indices = bytearray(w * h)
        for y in range(h):
            for x in range(w):
                block_x = x // 128
                block_y = y // 8
                px = x % 128
                py = y % 8
                src_byte = block_y * tw * (h // 8) + block_x * 64 + py * (tw // 2) + px // 2
                if src_byte < len(data):
                    byte_val = data[src_byte]
                    if x % 2 == 0:
                        indices[y * w + x] = (byte_val >> 4) & 0xF
                    else:
                        indices[y * w + x] = byte_val & 0xF

    palette = []
    for i in range(clut_colors):
        if clut_fmt == 5:  # PSMCT32 CLUT
            if i * 4 + 4 <= len(clut_data):
                c = struct.unpack('<I', clut_data[i*4:i*4+4])[0]
                r = c & 0xFF
                g = (c >> 8) & 0xFF
                b = (c >> 16) & 0xFF
                a = (c >> 24) & 0xFF
                palette.append((r, g, b, a))
            else:
                palette.append((0, 0, 0, 255))
        elif clut_fmt == 7:  # PSMCT16 CLUT (RGB565)
            if i * 2 + 2 <= len(clut_data):
                c = struct.unpack('<H', clut_data[i*2:i*2+2])[0]
                r = (c >> 11) & 0x1F
                g = (c >> 6) & 0x1F
                b = c & 0x1F
                palette.append(((r * 255 + 15) // 31, (g * 255 + 15) // 31,
                               (b * 255 + 15) // 31, 255))
            else:
                palette.append((0, 0, 0, 255))
        else:
            palette.append((0, 0, 0, 255))

    pixels = bytearray(w * h * 4)
    for y in range(h):
        for x in range(w):
            idx = indices[y * w + x]
            if idx < len(palette):
                r, g, b, a = palette[idx]
                dst_off = (y * w + x) * 4
                pixels[dst_off:dst_off+4] = bytes([r, g, b, a])

    return bytes(pixels)

# ─── IGB igImage Decoder (linear, unswizzled) ────────────────

def _indexed_to_rgba(idx, w, h, clut_data):
    """Map 8/4-bit indices through an RGBA32 CLUT (4 bytes/entry, linear)."""
    n = len(clut_data) // 4
    palette = [tuple(clut_data[i * 4:i * 4 + 4]) for i in range(n)]
    out = bytearray(w * h * 4)
    for y in range(h):
        for x in range(w):
            v = idx[y * w + x]
            o = (y * w + x) * 4
            if v < n:
                out[o], out[o + 1], out[o + 2], out[o + 3] = palette[v]
            else:
                out[o + 3] = 255
    return bytes(out)

def decode_image_linear(data: bytes, w: int, h: int, fmt: int = 5,
                        clut_data: Optional[bytes] = None) -> Optional[bytes]:
    """Decode an IGB igImage to raw RGBA. Data is linear (not GS-swizzled).

    fmt: 5 = RGB888, 7 = RGBA8888, 0x10000 = PSMT8 (1 byte/px) + CLUT,
    0x10001 = PSMT4 (2 px/byte, low nibble first) + CLUT.
    """
    n = w * h
    if fmt == 5:
        if len(data) < n * 3:
            return None
        rgba = bytearray(n * 4)
        for i in range(n):
            rgba[i * 4] = data[i * 3]
            rgba[i * 4 + 1] = data[i * 3 + 1]
            rgba[i * 4 + 2] = data[i * 3 + 2]
            rgba[i * 4 + 3] = 255
        return bytes(rgba)
    if fmt == 7:
        if len(data) < n * 4:
            return None
        return bytes(data[:n * 4])
    if fmt == 0x10000 and clut_data:
        if len(data) < n:
            return None
        return _indexed_to_rgba(data[:n], w, h, clut_data)
    if fmt == 0x10001 and clut_data:
        nb = (n + 1) // 2
        if len(data) < nb:
            return None
        idx = bytearray(n)
        for i in range(n):
            b = data[i // 2]
            idx[i] = (b & 0xF) if (i & 1) == 0 else (b >> 4)
        return _indexed_to_rgba(idx, w, h, clut_data)
    return None

# ─── Utility ────────────────────────────────────────────────

def detect_format(data: bytes) -> str:
    """Detect if data is IGB v5 format."""
    if len(data) < 48:
        return 'unknown'
    try:
        hdr = struct.unpack('<12I', data[:48])
        if hdr[10] == IGB_MAGIC:
            ver = hdr[11] & 0xFFFF
            return 'igb_v%d' % ver
    except:
        pass
    return 'unknown'

def dump_igb_info(data: bytes, verbose: bool = False):
    """Print IGB header and structure info."""
    igb = IGB(data)
    print('IGB v%d (%d bytes)' % (igb.version & 0xFFFF, len(data)))
    print('  Types: %d' % len(igb.types))
    print('  Structs: %d' % len(igb.structs))
    print('  Refs: %d (obj=%d data=%d)' % (
        len(igb.refs),
        sum(1 for r in igb.refs if r['kind'] == 'OBJ'),
        sum(1 for r in igb.refs if r['kind'] == 'DATA')))
    print('  Objects: %d' % len(igb.objs))
    print('  Static data: %d blocks' % len(igb.data_blocks))
    print('  Top object: %s' % igb.top_object)
    if verbose:
        for i, t in enumerate(igb.types[:10]):
            print('  Type[%d]: %s' % (i, t))
        obj_types = {}
        for o in igb.objs:
            t = igb.structs[o['struct_id']]['name']
            obj_types[t] = obj_types.get(t, 0) + 1
        if obj_types:
            print('  Object types:')
            for t, c in sorted(obj_types.items(), key=lambda x: -x[1])[:15]:
                print('    %s: %d' % (t, c))
    return igb

if __name__ == '__main__':
    import sys
    if len(sys.argv) > 1:
        with open(sys.argv[1], 'rb') as f:
            dump_igb_info(f.read(), verbose=True)
