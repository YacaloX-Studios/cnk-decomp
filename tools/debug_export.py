#!/usr/bin/env python3
"""
Crash Nitro Kart IGB brute-force exporter.

Exports:
  - meshes -> OBJ + MTL
  - textures -> PNG/TGA
  - animations -> JSON
  - raw IGB dumps
  - metadata
  - error logs

Usage:
    python tools/debug_export.py --everything
"""

import os
import sys
import struct
import json
import traceback

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from igb_lib import (
    IGB,
    export_mesh_to_obj,
    write_mtl_file
)

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GFX = os.path.join(BASE, 'ALL_ASSETS', 'ps2', 'gfx')
OUT = os.path.join(BASE, 'exported')


def is_igb(data: bytes) -> bool:
    """Detect IGB v5 files."""
    if len(data) < 48:
        return False
    try:
        return struct.unpack_from('<12I', data, 0)[10] == 0xFADA
    except Exception:
        return False


def save_texture_png(mat, path):
    """Save a decoded texture as PNG; fall back to TGA on failure."""
    try:
        from PIL import Image
        img = Image.frombytes('RGBA', (mat.width, mat.height), mat.texture_data)
        img.save(path, 'PNG')
        return True
    except Exception:
        try:
            tga = path.replace('.png', '.tga')
            with open(tga, 'wb') as f:
                f.write(b'\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00')
                f.write(struct.pack('<HH', mat.width, mat.height))
                f.write(b'\x20\x20')
                f.write(mat.texture_data)
            return False
        except Exception:
            return False


def write_error(path, exc):
    """Write an exception traceback + message to a text file."""
    with open(path, 'w', encoding='utf8') as f:
        traceback.print_exc(file=f)
        f.write("\n\nException:\n")
        f.write(str(exc))


def export_file(igb_path: str, out_dir: str, do_anims=True):
    """Export one IGB file. Returns (meshes, textures, animations) counts.

    Every stage is isolated so a single file's failure does not abort the
    whole batch; errors are written to <out>/<stem>/debug/*.
    """
    with open(igb_path, 'rb') as f:
        data = f.read()

    if not is_igb(data):
        return None

    igb = IGB(data)
    stem = os.path.splitext(os.path.basename(igb_path))[0]
    fdir = os.path.join(out_dir, stem)
    os.makedirs(fdir, exist_ok=True)

    metadata = {"source": igb_path, "size": len(data), "errors": []}

    # ==========================
    # RAW + METADATA
    # ==========================
    debug_dir = os.path.join(fdir, "debug")
    os.makedirs(debug_dir, exist_ok=True)

    with open(os.path.join(debug_dir, stem + ".igb"), "wb") as f:
        f.write(data)

    try:
        metadata["strings"] = igb.extract_strings()
    except Exception as e:
        metadata["errors"].append("strings: " + str(e))

    with open(os.path.join(fdir, stem + ".metadata.json"), "w", encoding="utf8") as f:
        json.dump(metadata, f, indent=2)

    # ==========================
    # TEXTURES
    # ==========================
    tex_dir = os.path.join(fdir, "textures")
    os.makedirs(tex_dir, exist_ok=True)

    try:
        mats = igb.extract_textures()
    except Exception as e:
        mats = []
        metadata["errors"].append("textures: " + str(e))

    tex_names = []
    for i, m in enumerate(mats):
        try:
            name = m.texture_name or m.name or "texture_%03d" % i
            png = os.path.join(tex_dir, name + ".png")
            save_texture_png(m, png)
            tex_names.append({
                "mat": m.name,
                "png": os.path.join("textures", name + ".png")
            })
        except Exception as e:
            print("Texture error:", e)
            write_error(os.path.join(debug_dir, "texture_%03d.txt" % i), e)

    # ==========================
    # MESHES
    # ==========================
    try:
        meshes = igb.extract_meshes()
    except Exception as e:
        meshes = []
        write_error(os.path.join(debug_dir, "meshes.txt"), e)

    mtl = stem + ".mtl"
    for i, mesh in enumerate(meshes):
        try:
            name = mesh.name or "mesh_%03d" % i
            safe = name.replace("/", "_").replace("\\", "_")
            obj = os.path.join(fdir, "%s_%03d_%s.obj" % (stem, i, safe))
            if tex_names:
                mesh.material = tex_names[i % len(tex_names)]["mat"]
            export_mesh_to_obj(mesh, obj, mtl_name=mtl)
        except Exception as e:
            print("Mesh error:", mesh.name)
            write_error(os.path.join(debug_dir, "mesh_%03d.txt" % i), e)

    if meshes and tex_names:
        try:
            write_mtl_file(os.path.join(fdir, mtl), tex_names)
        except Exception as e:
            write_error(os.path.join(debug_dir, "mtl.txt"), e)

    # ==========================
    # ANIMATIONS
    # ==========================
    anim_count = 0
    if do_anims:
        try:
            anims = igb.extract_animations()
            result = {"source": igb_path, "animations": []}
            for a in anims:
                channels = []
                for cname, kfs in a.channels:
                    channels.append({
                        "name": cname,
                        "keyframes": [{
                            "time": k.time,
                            "pos": k.pos,
                            "rot": k.rot,
                            "scale": k.scale
                        } for k in kfs]
                    })
                result["animations"].append({
                    "name": a.name,
                    "duration": a.duration,
                    "channels": channels
                })
            anim_count = len(result["animations"])
            if anim_count:
                with open(os.path.join(fdir, stem + ".animations.json"), "w") as f:
                    json.dump(result, f, indent=2)
        except Exception as e:
            write_error(os.path.join(debug_dir, "animations.txt"), e)

    return {
        "meshes": len(meshes),
        "verts": sum(len(m.verts) for m in meshes),
        "faces": sum(len(m.faces) for m in meshes),
        "textures": len(mats),
        "anims": anim_count
    }


def export_igb_tree(root, out_root, do_anims=True):
    """Walk root recursively, exporting every real IGB file."""
    totals = {"files": 0, "meshes": 0, "verts": 0, "faces": 0,
              "textures": 0, "anims": 0}
    skipped = 0

    for dirpath, _dirs, files in os.walk(root):
        igb_files = sorted(f for f in files if f.lower().endswith('.igb'))
        if not igb_files:
            continue

        rel = os.path.relpath(dirpath, root)
        label = os.path.basename(root) if rel == '.' else rel
        print('\n== %s (%d files) ==' % (label, len(igb_files)))

        for filename in igb_files:
            path = os.path.join(dirpath, filename)
            try:
                with open(path, 'rb') as f:
                    data = f.read()
                if not is_igb(data):
                    skipped += 1
                    print('  SKIP: %s (not IGB)' % filename)
                    continue

                result = export_file(path, out_root, do_anims)
                if result is None:
                    skipped += 1
                    continue

                totals['files'] += 1
                for k in ('meshes', 'verts', 'faces', 'textures', 'anims'):
                    totals[k] += result[k]
                print('  %-32s m=%3d v=%8d f=%8d t=%3d a=%3d' % (
                    filename, result['meshes'], result['verts'],
                    result['faces'], result['textures'], result['anims']))
            except Exception as e:
                skipped += 1
                print('  FAILED: %s (%s)' % (filename, e))
                error_dir = os.path.join(out_root, 'debug')
                os.makedirs(error_dir, exist_ok=True)
                write_error(os.path.join(error_dir, filename + '.txt'), e)

    return totals, skipped


def main():
    import argparse
    ap = argparse.ArgumentParser(description='CNK IGB brute-force exporter')
    ap.add_argument('--category', help='comma list of gfx subdirs')
    ap.add_argument('--models-only', action='store_true', help='chars + karts')
    ap.add_argument('--skip-anims', action='store_true', help='no animations')
    ap.add_argument('--everything', action='store_true', help='all gfx recursively')
    args = ap.parse_args()

    os.makedirs(OUT, exist_ok=True)

    if args.everything:
        roots = [GFX]
    elif args.category:
        roots = [os.path.join(GFX, c.strip()) for c in args.category.split(',')]
    elif args.models_only:
        roots = [os.path.join(GFX, 'chars'), os.path.join(GFX, 'karts')]
    else:
        roots = [os.path.join(GFX, d) for d in sorted(os.listdir(GFX))
                 if os.path.isdir(os.path.join(GFX, d))]
        roots = roots or [GFX]

    grand = {'files': 0, 'meshes': 0, 'verts': 0, 'faces': 0,
             'textures': 0, 'anims': 0}
    skipped = 0

    for r in roots:
        if not os.path.isdir(r):
            print('SKIP: %s not found' % r)
            continue
        t, s = export_igb_tree(r, OUT, do_anims=not args.skip_anims)
        skipped += s
        for k in grand:
            grand[k] += t[k]

    print('\n========== TOTAL ==========')
    for k, v in grand.items():
        print('  %-9s %d' % (k, v))
    print('  non-IGB  %d' % skipped)
    print('\nOutput: %s' % OUT)


if __name__ == '__main__':
    main()
