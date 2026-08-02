import struct, sys, os

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from igb_lib import IGB

def align(v, a):
    return (v + (a - 1)) & ~(a - 1)

def load_igb(path, verbose=True):
    data = open(path, 'rb').read()
    igb = IGB(data)
    if verbose:
        print('types(%d):' % len(igb.types))
        for i, t in enumerate(igb.types):
            print('  %2d %s' % (i, t))
        print('shader syms:', igb.shader_symbols)
        print('structs(%d):' % len(igb.structs))
        for s in igb.structs:
            print('  %2d %-28s parent=%-2s u2=%d  %s' % (
                s['id'], s['name'], s['parent'] if s['parent'] >= 0 else '-',
                s['u_val2'],
                ' '.join('%d/%s/%d' % (f[0], igb.types[f[0]] if f[0] < len(igb.types) else '?', f[2]) for f in s['fields'])))
        print('refs(%d):' % len(igb.refs))
        for i, r in enumerate(igb.refs):
            if r['kind'] == 'OBJ':
                print('  ref%2d OBJ  struct=%2d (%s)' % (i, r['struct_id'], igb.structs[r['struct_id']]['name']))
            else:
                print('  ref%2d DATA size=%4d type=%2d (%s) u2=%d u3=%d' % (
                    i, r['data_size'], r['data_type'],
                    igb.types[r['data_type']] if r['data_type'] < len(igb.types) else '?',
                    r['unk2'], r['unk3']))
        print('top_object = %d' % (igb.top_object if igb.top_object is not None else -1))
        print('objects(%d):' % len(igb.objs))
        for i, o in enumerate(igb.objs):
            print('  obj%2d ref=%3d %-28s size=%d' % (i, o['ref_idx'], igb.structs[o['struct_id']]['name'], o['size']))
        print('static data(%d)' % len(igb.data_blocks))

    types = igb.types
    structs = [{'id': i, 'name': s['name'], 'parent': s['parent'],
                'fields': s['fields'], 'u_val2': s['u_val2']}
               for i, s in enumerate(igb.structs)]
    objs = [{'struct_id': o['struct_id'], 'size': 8 + len(o['data']),
             'data': o['data'], 'ref_idx': o['ref_idx']}
            for o in igb.objs]
    return types, structs, refs_compat(igb.refs), objs, igb.data_blocks, (igb.top_object if igb.top_object is not None else 0)


def refs_compat(refs):
    """Ensure refs expose the keys used by extract_geometry (ref_idx/struct_id)."""
    return refs

def objs_struct(top, refs, structs):
    r = refs[top]
    if r['kind'] == 'OBJ':
        return r['struct_id']
    return -1

def dump_obj(objs, structs, types, refs, idx):
    o = objs[idx]
    st = structs[o['struct_id']]
    d = o['data']
    print('=== obj[%d] %s (ref %d) size=%d data=%d ===' % (idx, st['name'], o['ref_idx'], o['size'], len(d)))
    pos = 0
    for (ti, unk, sz) in st['fields']:
        tn = types[ti]
        raw = d[pos:pos+sz]
        val = ''
        if tn == 'igUnsignedIntMetaField' and sz == 4:
            val = 'u=%d' % struct.unpack('<I', raw)[0]
        elif tn == 'igIntMetaField' and sz == 4:
            val = 'i=%d' % struct.unpack('<i', raw)[0]
        elif tn in ('igMemoryRefMetaField', 'igObjectRefMetaField', 'igRawRefMetaField') and sz == 4:
            r = struct.unpack('<I', raw)[0]
            if r == 0xFFFFFFFF:
                val = 'ref INVALID'
            elif r >= len(refs):
                val = 'ref %d (out of range!) raw=%08X' % (r, r)
            else:
                rr = refs[r]
                if rr['kind'] == 'OBJ':
                    val = 'ref %d -> obj[%d] %s' % (r, rr['struct_id'], structs[rr['struct_id']]['name'])
                else:
                    val = 'ref %d -> data[%d] (%dB)' % (r, r, rr['data_size'])
        elif tn == 'igEnumMetaField' and sz == 4:
            val = 'enum=%d' % struct.unpack('<I', raw)[0]
        elif tn == 'igFloatMetaField' and sz == 4:
            val = 'f=%.5g' % struct.unpack('<f', raw)[0]
        elif tn == 'igVec3fMetaField' and sz == 12:
            a, b, c = struct.unpack('<3f', raw)
            val = '(%.4f, %.4f, %.4f)' % (a, b, c)
        elif tn == 'igStructMetaField':
            val = 'struct[%d] %s' % (sz, raw.hex())
        else:
            val = raw.hex()
        print('  f%d (unk=%d %-30s sz=%d): %s' % (pos, unk, tn, sz, val))
        pos += sz
    if pos != len(d):
        print('  trailing %d bytes: %s' % (len(d) - pos, d[pos:].hex()))

def dump_data_block(data_blocks, refs, types, i):
    b = data_blocks[i]
    drefs = [r for r in refs if r['kind'] == 'DATA']
    ref = drefs[i]
    print('=== data[%d] size=%d (type=%s) ===' % (i, len(b), types[ref['data_type']]))
    if ref['data_type'] == 5:  # u32
        print('  u32s:', [struct.unpack('<I', b[k:k+4])[0] for k in range(0, len(b), 4)])
    elif refs[i]['data_type'] == 9:  # ref list
        print('  refs:', [struct.unpack('<I', b[k:k+4])[0] for k in range(0, len(b), 4)])
    elif refs[i]['data_type'] in (16, 36, 37, 38):  # float family
        print('  f32s:', ['%.5g' % struct.unpack('<f', b[k:k+4])[0] for k in range(0, len(b), 4)])
    elif refs[i]['data_type'] == 1:
        for row in range(0, len(b), 16):
            print('%04X  %s' % (row, ' '.join('%02X' % c for c in b[row:row+16])))

if __name__ == '__main__':
    path = sys.argv[1] if len(sys.argv) > 1 else 'ALL_ASSETS/ps2/gfx/items/crystal.igb'
    which_obj = sys.argv[2] if len(sys.argv) > 2 else ''
    which_data = sys.argv[3] if len(sys.argv) > 3 else ''
    types, structs, refs, objs, data_blocks, top = load_igb(path)
    if which_obj:
        for w in which_obj.split(','):
            dump_obj(objs, structs, types, refs, int(w))
    if which_data:
        for w in which_data.split(','):
            dump_data_block(data_blocks, refs, types, int(w))
