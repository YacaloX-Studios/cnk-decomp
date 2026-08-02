#!/usr/bin/env python3
"""Convert MUSIC/ and VOICE/ VAGp files to WAV.

MUSIC files are stereo VAGp pairs (.L / .R channels, with .F variants for final lap).
VOICE files are mono VAGp (.VAG) organized by language.
"""
import os, sys, struct, array, concurrent.futures, time

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from convert_vagp_to_wav import decode_vagp_to_pcm16, write_wav

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MUSIC_DIR = os.path.join(BASE, 'MUSIC')
VOICE_DIR = os.path.join(BASE, 'VOICE')
OUT_DIR = os.path.join(BASE, 'converted', 'audio')

def write_wav_raw(wav_path, pcm_array, sample_rate, num_channels):
    ba = num_channels * 2
    brate = sample_rate * ba
    data_sz = len(pcm_array) * 2
    file_sz = 36 + data_sz
    with open(wav_path, 'wb') as f:
        f.write(b'RIFF')
        f.write(struct.pack('<I', file_sz))
        f.write(b'WAVE')
        f.write(b'fmt ')
        f.write(struct.pack('<I', 16))
        f.write(struct.pack('<H', 1))
        f.write(struct.pack('<H', num_channels))
        f.write(struct.pack('<I', sample_rate))
        f.write(struct.pack('<I', brate))
        f.write(struct.pack('<H', ba))
        f.write(struct.pack('<H', 16))
        f.write(b'data')
        f.write(struct.pack('<I', data_sz))
        f.write(pcm_array.tobytes())

def convert_stereo_pair(base_name, l_file, r_file, src, dst):
    with open(os.path.join(src, l_file), 'rb') as f:
        l_data = f.read()
    with open(os.path.join(src, r_file), 'rb') as f:
        r_data = f.read()
    if l_data[:4] != b'VAGp' or r_data[:4] != b'VAGp':
        return False
    l_pcm = decode_vagp_to_pcm16(l_data)
    r_pcm = decode_vagp_to_pcm16(r_data)
    if not l_pcm or not r_pcm:
        return False
    l_samps, l_ns, l_sr = l_pcm
    r_samps, r_ns, r_sr = r_pcm
    if l_sr != r_sr:
        return False
    n = min(len(l_samps), len(r_samps))
    interleaved = array.array('h')
    for i in range(n):
        interleaved.append(l_samps[i])
        interleaved.append(r_samps[i])
    write_wav_raw(os.path.join(dst, '%s.wav' % base_name),
                  interleaved, l_sr, 2)
    return True

def convert_music():
    src = MUSIC_DIR
    dst = os.path.join(OUT_DIR, 'music')
    os.makedirs(dst, exist_ok=True)
    
    stereo_pairs = {}
    for f in sorted(os.listdir(src)):
        f_u = f.upper()
        if f_u.endswith('.L'):
            base = f[:-2]
            stereo_pairs.setdefault(base, {})['L'] = f
        elif f_u.endswith('.R'):
            base = f[:-2]
            stereo_pairs.setdefault(base, {})['R'] = f
    
    tasks = []
    for base_name, channels in sorted(stereo_pairs.items()):
        l_file = channels.get('L')
        r_file = channels.get('R')
        if l_file and r_file:
            tasks.append((base_name, l_file, r_file))
    
    converted = 0
    total = len(tasks)
    t0 = time.time()
    with concurrent.futures.ThreadPoolExecutor(max_workers=4) as ex:
        futures = {ex.submit(convert_stereo_pair, bn, l, r, src, dst): bn
                   for bn, l, r in tasks}
        for f in concurrent.futures.as_completed(futures):
            if f.result():
                converted += 1
    elapsed = time.time() - t0
    print("MUSIC: %d/%d stereo WAV files written to %s (%.1fs)" %
          (converted, total, dst, elapsed))

def _convert_vag_task(task):
    """Worker (process-safe): decode one .VAG -> .WAV. Returns 1 on success."""
    src, dst = task
    try:
        with open(src, 'rb') as f:
            vag_data = f.read()
        result = decode_vagp_to_pcm16(vag_data)
        if result:
            pcm, ns, sr = result
            out_name = os.path.splitext(os.path.basename(src))[0] + '.wav'
            write_wav_raw(os.path.join(dst, out_name), pcm, sr, 1)
            return 1
    except Exception as e:
        print("  voice err %r: %s" % (src, e), file=sys.stderr)
    return 0


def convert_voice():
    dst = os.path.join(OUT_DIR, 'voice')
    os.makedirs(dst, exist_ok=True)
    tasks = []
    for lang in sorted(os.listdir(VOICE_DIR)):
        lang_dir = os.path.join(VOICE_DIR, lang)
        if not os.path.isdir(lang_dir):
            continue
        lang_dst = os.path.join(dst, lang)
        os.makedirs(lang_dst, exist_ok=True)
        for letter in sorted(os.listdir(lang_dir)):
            letter_dir = os.path.join(lang_dir, letter)
            if not os.path.isdir(letter_dir):
                continue
            letter_dst = os.path.join(lang_dst, letter)
            os.makedirs(letter_dst, exist_ok=True)
            for vag_file in sorted(os.listdir(letter_dir)):
                if not vag_file.upper().endswith('.VAG'):
                    continue
                tasks.append((os.path.join(letter_dir, vag_file), letter_dst))

    total = 0
    # Process pool avoids the GIL during the pure-Python ADPCM decode.
    with concurrent.futures.ProcessPoolExecutor(max_workers=8) as ex:
        for done in ex.map(_convert_vag_task, tasks):
            total += done
            if (total % 200) == 0:
                print("VOICE: %d/%d..." % (total, len(tasks)), flush=True)
    print("VOICE: %d files converted to %s" % (total, dst))

if __name__ == '__main__':
    convert_music()
    convert_voice()
