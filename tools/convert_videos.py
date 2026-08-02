#!/usr/bin/env python3
"""
Video conversion helper for CNK .SFD files.

SFD = Sony Format Definition = MPEG-2 Program Stream.
These can be played/converted with ffmpeg directly.

Usage:
    python tools/convert_videos.py                       # convert all to MP4 via ffmpeg
    python tools/convert_videos.py --info               # just show info
    python tools/convert_videos.py --extract-audio      # extract audio only
"""
import os, subprocess, sys

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VIDEO_DIR = os.path.join(BASE, 'VIDEO')
OUT_DIR = os.path.join(BASE, 'converted', 'video')

SFD_INFO = """SFD (Sony Format Definition) = MPEG-2 Program Stream.
Playable with: VLC, ffmpeg, mplayer
Convert with:  ffmpeg -i input.sfd -c:v libx264 -c:a aac output.mp4
"""

def get_sfd_files():
    files = []
    for root, dirs, fnames in os.walk(VIDEO_DIR):
        for f in fnames:
            if f.upper().endswith('.SFD'):
                files.append(os.path.join(root, f))
    return files

def show_info():
    files = get_sfd_files()
    print(f"Found {len(files)} SFD files:")
    for fp in sorted(files):
        rel = os.path.relpath(fp, VIDEO_DIR)
        size = os.path.getsize(fp)
        print(f"  {rel:40s} {size//1024:6d} KB")

def convert_all():
    if not shutil_available():
        print("ffmpeg not found. Install ffmpeg or use VLC to play .SFD files.")
        print()
        print(SFD_INFO)
        return
    
    files = get_sfd_files()
    os.makedirs(OUT_DIR, exist_ok=True)
    
    for fp in sorted(files):
        rel = os.path.relpath(fp, VIDEO_DIR)
        out_name = os.path.splitext(os.path.basename(fp))[0] + '.mp4'
        out_path = os.path.join(OUT_DIR, out_name)
        
        if os.path.exists(out_path):
            print(f"  SKIP: {out_name} exists")
            continue
        
        print(f"  Converting {rel}...")
        subprocess.run([
            FFMPEG_CMD, '-i', fp, '-c:v', 'libx264', '-preset', 'fast',
            '-c:a', 'aac', '-y', out_path
        ], capture_output=True)

def extract_audio():
    """Extract audio from SFD files as WAV."""
    if not shutil_available():
        print("ffmpeg not found.")
        return
    
    audio_dir = os.path.join(OUT_DIR, 'audio')
    os.makedirs(audio_dir, exist_ok=True)
    
    for fp in sorted(get_sfd_files()):
        rel = os.path.relpath(fp, VIDEO_DIR)
        out_name = os.path.splitext(os.path.basename(fp))[0] + '.wav'
        out_path = os.path.join(audio_dir, out_name)
        
        if os.path.exists(out_path):
            continue
        
        print(f"  Extracting audio from {rel}...")
        subprocess.run([
            FFMPEG_CMD, '-i', fp, '-vn', '-acodec', 'pcm_s16le', '-y', out_path
        ], capture_output=True)

def shutil_available():
    # Check common ffmpeg paths if not in PATH
    common_paths = [
        r'C:\ffmpeg-master-latest-win64-gpl-shared\bin\ffmpeg.exe',
        r'C:\ffmpeg\bin\ffmpeg.exe',
    ]
    for p in common_paths:
        if os.path.isfile(p):
            global FFMPEG_CMD
            FFMPEG_CMD = p
            return True
    try:
        subprocess.run(['ffmpeg', '-version'], capture_output=True)
        return True
    except:
        return False

FFMPEG_CMD = 'ffmpeg'

if __name__ == '__main__':
    mode = 'convert'
    if len(sys.argv) > 1:
        mode = sys.argv[1]
    
    if mode == '--info':
        show_info()
    elif mode == '--extract-audio':
        extract_audio()
    else:
        if not shutil_available():
            print(SFD_INFO)
            show_info()
        else:
            convert_all()
