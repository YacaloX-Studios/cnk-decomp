#!/usr/bin/env python3
"""
Batch-export Crash Nitro Kart IGB assets (GOB/page-aware).

Extracts from every IGB under the extraction root:
  - meshes   -> OBJ (one file per geometry) + MTL + PNG textures
  - textures -> PNG (from igImage/igClut, linear RGBA)
  - animation keyframes -> JSON (igTransformSequence1_5 channels)

CNK 64KB slot files (chars/karts/tracks) page their static data across the
STBL frames that follow them in ASSETS.GOB.  Pass --gob and --manifest so the
pages are stitched back in and the full geometry is exported.

Usage:
    python tools/export_all.py                       # export everything
    python tools/export_all.py --models-only         # chars + karts only
    python tools/export_all.py --category chars,items
    python tools/export_all.py --skip-anims
    python tools/export_all.py --gob ASSETS.GOB --manifest gfc_extracted/_manifest.csv
"""
import os, sys, struct, json, csv

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from igb_lib import IGB, export_mesh_to_obj, write_mtl_file
from extract_gfc import GobFrameIndex

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GFX = os.path.join(BASE, 'gfc_extracted')
OUT = os.path.join(BASE, 'exported')


def is_igb(data: bytes) -> bool:
    if len(data) < 48:
        return False
    return struct.unpack_from('<12I', data, 0)[10] == 0xFADA


def save_texture_png(mat, path: str) -> bool:
    try:
        from PIL import Image
        img = Image.frombytes('RGBA', (mat.width, mat.height), mat.texture_data)
        img.save(path, 'PNG')
        return True
    except Exception:
        with open(path.replace('.png', '.tga'), 'wb') as f:
            f.write(b'\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00')
            f.write(struct.pack('<HH', mat.width, mat.height))
            f.write(b'\x20\x20')
            f.write(mat.texture_data)
        return False


def build_path_map(manifest_path: str):
    """Map extracted file path -> manifest row (for gob_offset lookup)."""
    m = {}
    with open(manifest_path, encoding='utf-8', errors='replace') as f:
        for r in csv.DictReader(f):
            for w in (r['written_paths'] or '').split(';'):
                if w:
                    m[os.path.normcase(os.path.abspath(w))] = r
    return m


def export_file(igb_path: str, out_dir: str, do_anims: bool = True,
                frames=None, path_map=None):
    """Export one IGB file. Returns (meshes, textures, animations) counts."""
    with open(igb_path, 'rb') as f:
        data = f.read()
    if not is_igb(data):
        return None
    igb = IGB(data)

    # stitch paged static data from the frames following this slot in the GOB
    if frames is not None and path_map is not None and not igb.data_is_complete():
        row = path_map.get(os.path.normcase(os.path.abspath(igb_path)))
        if row is not None:
            gob_off = int(row['gob_offset'], 16)
            try:
                i = frames.starts.index(gob_off)
                igb.reconstruct_data_blocks(frames.following_payloads(i))
            except ValueError:
                pass

    stem = os.path.splitext(os.path.basename(igb_path))[0]
    fdir = os.path.join(out_dir, stem)
    os.makedirs(fdir, exist_ok=True)

    # textures
    mats = igb.extract_textures()
    tex_dir = os.path.join(fdir, 'textures')
    os.makedirs(tex_dir, exist_ok=True)
    tex_names = []
    for m in mats:
        base = m.texture_name or m.name
        png = os.path.join(tex_dir, base + '.png')
        if save_texture_png(m, png):
            tex_names.append({'mat': m.name, 'png': os.path.join('textures', base + '.png')})

    # meshes
    meshes = igb.extract_meshes()
    used_mat = {}
    for mi, mesh in enumerate(meshes):
        obj_path = os.path.join(fdir, '%s_%s.obj' % (stem, mesh.name))
        mtl = stem + '.mtl'
        if tex_names:
            mesh.material = tex_names[mi % len(tex_names)]['mat']
            used_mat[mesh.name] = tex_names[mi % len(tex_names)]['png']
        export_mesh_to_obj(mesh, obj_path, mtl_name=mtl)
    if meshes and tex_names:
        write_mtl_file(os.path.join(fdir, mtl), tex_names)

    # animations
    anim_json = None
    if do_anims:
        anims = igb.extract_animations()
        strings = igb.extract_strings()
        anim_json = {
            'source': igb_path,
            'strings': strings,
            'animations': [],
        }
        for a in anims:
            chans = []
            for cname, kfs in a.channels:
                chans.append({
                    'name': cname,
                    'keyframes': [{
                        't': round(k.time, 6),
                        'pos': [round(v, 6) for v in k.pos],
                        'rot': [round(v, 6) for v in k.rot],
                        'scale': [round(v, 6) for v in k.scale],
                    } for k in kfs],
                })
            anim_json['animations'].append({
                'name': a.name,
                'duration': round(a.duration, 6),
                'channels': chans,
            })
        if anim_json['animations']:
            with open(os.path.join(fdir, stem + '.animations.json'), 'w') as f:
                json.dump(anim_json, f, indent=1)

    return {
        'meshes': len(meshes),
        'verts': sum(len(m.verts) for m in meshes),
        'faces': sum(len(m.faces) for m in meshes),
        'textures': len(mats),
        'anims': len(anim_json['animations']) if anim_json else 0,
    }


def export_igb_tree(root: str, out_root: str, do_anims: bool = True,
                    frames=None, path_map=None):
    """Walk root recursively, exporting every real IGB file."""
    totals = {'files': 0, 'meshes': 0, 'verts': 0, 'faces': 0,
              'textures': 0, 'anims': 0}
    skipped = 0
    for dirpath, _dirs, fnames in os.walk(root):
        files = sorted(f for f in fnames if f.lower().endswith('.igb'))
        if not files:
            continue
        rel = os.path.relpath(dirpath, root)
        label = os.path.basename(root) if rel == '.' else rel
        print('\n== %s (%d files) ==' % (label, len(files)))
        for fn in files:
            fpath = os.path.join(dirpath, fn)
            with open(fpath, 'rb') as f:
                data = f.read()
            if not is_igb(data):
                skipped += 1
                continue
            r = export_file(fpath, os.path.join(out_root, os.path.basename(root)),
                            do_anims=do_anims, frames=frames, path_map=path_map)
            if r is None:
                skipped += 1
                continue
            totals['files'] += 1
            for k in ('meshes', 'verts', 'faces', 'textures', 'anims'):
                totals[k] += r[k]
            print('  %-28s m=%2d v=%6d f=%6d t=%2d a=%2d' % (
                fn, r['meshes'], r['verts'], r['faces'],
                r['textures'], r['anims']))
    return totals, skipped


def main():
    import argparse
    ap = argparse.ArgumentParser(description='Export CNK IGB assets')
    ap.add_argument('--category', help='comma list of gfx subdirs to export')
    ap.add_argument('--models-only', action='store_true',
                    help='only chars and karts')
    ap.add_argument('--skip-anims', action='store_true')
    ap.add_argument('--root', default=GFX, help='extraction root (default gfc_extracted)')
    ap.add_argument('--gob', help='ASSETS.GOB, enables paged-data stitching')
    ap.add_argument('--manifest', help='extraction manifest CSV')
    args = ap.parse_args()

    os.makedirs(OUT, exist_ok=True)

    frames = None
    path_map = None
    if args.gob:
        print('loading GOB frame index...')
        frames = GobFrameIndex(open(args.gob, 'rb').read())
        if args.manifest:
            path_map = build_path_map(args.manifest)
        else:
            print('WARN: --gob given without --manifest; paged slots will not stitch')
    elif args.manifest:
        print('WARN: --manifest given without --gob; paged slots will not stitch')

    root = args.root
    if args.category:
        roots = [os.path.join(root, c.strip()) for c in args.category.split(',')]
    elif args.models_only:
        roots = [os.path.join(root, 'ps2', 'gfx', 'chars'),
                 os.path.join(root, 'ps2', 'gfx', 'karts')]
    else:
        roots = [os.path.join(root, 'ps2', 'gfx')]

    grand = {'files': 0, 'meshes': 0, 'verts': 0, 'faces': 0,
             'textures': 0, 'anims': 0}
    skipped = 0
    for r in roots:
        if not os.path.isdir(r):
            print('SKIP: %s not found' % r)
            continue
        t, s = export_igb_tree(r, OUT, do_anims=not args.skip_anims,
                               frames=frames, path_map=path_map)
        skipped += s
        for k in grand:
            grand[k] += t[k]

    print('\n=== TOTALS ===')
    for k, v in grand.items():
        print('  %-9s %d' % (k, v))
    print('  non-IGB  %d' % skipped)
    print('\nOutput: %s' % OUT)


if __name__ == '__main__':
    main()
