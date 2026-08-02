#!/usr/bin/env python3
"""
Export OBJ geometry from a Crash Nitro Kart IGB file.

    python tools/extract_geometry.py [ASSET.igb] [OUT.obj]
    # e.g. python tools/extract_geometry.py gfc_extracted/common/gfx/tracks/arena1.igb arena1.obj

For CNK 64KB slot files whose static data is paged across the frames that
follow them in ASSETS.GOB, pass the GOB + extraction manifest so the missing
data pages are stitched back in:

    python tools/extract_geometry.py gfc_extracted/ps2/gfx/mptracks/arena2.igb \
        arena2.obj --gob ASSETS.GOB --manifest gfc_extracted/_manifest.csv
"""
import struct, sys, os, csv

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from igb_lib import IGB, export_mesh_to_obj
from extract_gfc import GobFrameIndex

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def find_manifest_row(manifest_path, igb_path):
    """Map an extracted file path to its manifest row (for the gob_offset)."""
    igb_abs = os.path.normcase(os.path.abspath(igb_path))
    with open(manifest_path, encoding='utf-8', errors='replace') as f:
        for r in csv.DictReader(f):
            for w in (r['written_paths'] or '').split(';'):
                if w and os.path.normcase(os.path.abspath(w)) == igb_abs:
                    return r
    return None


def reconstruct_if_paged(igb: IGB, frames: GobFrameIndex, row):
    """Stitch paged static data back into the slot file, if needed."""
    if igb.data_is_complete():
        return True
    gob_off = int(row['gob_offset'], 16)
    try:
        i = frames.starts.index(gob_off)
    except ValueError:
        return False
    return igb.reconstruct_data_blocks(frames.following_payloads(i))


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    path = args[0] if args else os.path.join(
        BASE, 'gfc_extracted', 'ps2', 'gfx', 'items', 'crystal.igb')
    out = args[1] if len(args) > 1 else 'crystal.obj'
    gob_path = None
    manifest_path = None
    if '--gob' in sys.argv:
        gob_path = sys.argv[sys.argv.index('--gob') + 1]
    if '--manifest' in sys.argv:
        manifest_path = sys.argv[sys.argv.index('--manifest') + 1]

    payload = open(path, 'rb').read()
    igb = IGB(payload)

    frames = None
    if not igb.data_is_complete():
        if not gob_path or not manifest_path:
            print('WARN: %s is a 64KB slot with paged static data; '
                  'pass --gob ASSETS.GOB --manifest gfc_extracted/_manifest.csv '
                  'to recover it.' % os.path.basename(path))
        else:
            frames = GobFrameIndex(open(gob_path, 'rb').read())
            row = find_manifest_row(manifest_path, path)
            if row is None:
                print('WARN: %s not found in manifest; cannot stitch pages.'
                      % os.path.basename(path))
            elif reconstruct_if_paged(igb, frames, row):
                print('stitched paged static data: %d blocks' % len(igb.data_blocks))
            else:
                print('WARN: page stitching failed for %s' % os.path.basename(path))

    meshes = igb.extract_meshes()
    if not meshes:
        print('%s: no meshes (0 vertices)' % os.path.basename(path))
        return
    base = os.path.splitext(out)[0]
    for mi, m in enumerate(meshes):
        fname = base if len(meshes) == 1 else '%s_%02d.obj' % (base, mi)
        export_mesh_to_obj(m, fname)
    total_v = sum(len(m.verts) for m in meshes)
    total_f = sum(len(m.faces) for m in meshes)
    print('%s: %d meshes, %d verts, %d tris -> %s*'
          % (os.path.basename(path), len(meshes), total_v, total_f, base))


if __name__ == '__main__':
    main()
