import struct, os, sys, array
import zlib

GOB_PATH = "ASSETS.GOB"

# PS2 SPU2 ADPCM prediction coefficients (fixed point 6-bit)
C0_0, C1_0 = 0, 0
C0_1, C1_1 = 60, -29

def decode_vagp_block(block, out, idx):
    """Decode a 16-sample VAG ADPCM block, appending to array 'out' at idx."""
    flags = block[0]
    shift = (flags >> 4) & 0xF
    pred = block[1] & 0xF
    if pred == 0:
        c0, c1 = C0_0, C1_0
    else:
        c0, c1 = C0_1, C1_1

    s1 = out[idx - 2] if idx >= 2 else 0
    s2 = out[idx - 1] if idx >= 1 else 0

    for i in range(14):
        byte = block[2 + i]
        # Nibble 0 (high)
        nib = byte >> 4
        if nib >= 8:
            nib -= 16
        dec = (nib << shift) + ((c0 * s1 + c1 * s2 + 32) >> 6)
        if dec < -32768: dec = -32768
        elif dec > 32767: dec = 32767
        out.append(dec)
        s2 = s1
        s1 = dec

        # Nibble 1 (low)
        nib = byte & 0xF
        if nib >= 8:
            nib -= 16
        dec = (nib << shift) + ((c0 * s1 + c1 * s2 + 32) >> 6)
        if dec < -32768: dec = -32768
        elif dec > 32767: dec = 32767
        out.append(dec)
        s2 = s1
        s1 = dec

def decode_vagp_to_pcm16(vagp_data):
    """Convert full VAGp data to mono PCM16 samples (optimized)."""
    if vagp_data[:4] != b'VAGp':
        return None

    sample_rate = struct.unpack('>I', vagp_data[16:20])[0]
    audio_data = vagp_data[48:]
    block_size = 16

    out = array.array('h')

    # Pre-append 2 zeros for history
    out.append(0)
    out.append(0)

    for i in range(0, len(audio_data), block_size):
        block = audio_data[i:i + block_size]
        if len(block) < block_size:
            block = block.ljust(block_size, b'\x00')
            flags = block[0]
            shift = (flags >> 4) & 0xF
            pred = block[1] & 0xF
            c0 = C0_0 if pred == 0 else C0_1
            c1 = C1_0 if pred == 0 else C1_1
            s1 = out[-2]
            s2 = out[-1]
            for j in range(14):
                byte = block[2 + j]
                for nibble in (byte >> 4, byte & 0xF):
                    if nibble >= 8:
                        nibble -= 16
                    dec = (nibble << shift) + ((c0 * s1 + c1 * s2 + 32) >> 6)
                    if dec < -32768: dec = -32768
                    elif dec > 32767: dec = 32767
                    out.append(dec)
                    s2 = s1
                    s1 = dec
            break
        decode_vagp_block(block, out, len(out))

    num_samples = len(out) - 2
    return out, num_samples, sample_rate

def write_wav(pcm, sample_rate, wav_path):
    """Write PCM16 samples (list or array) to a WAV file"""
    num_channels = 1
    bits_per_sample = 16
    block_align = num_channels * bits_per_sample // 8
    data_size = len(pcm) * block_align
    file_size = 36 + data_size
    byte_rate = sample_rate * block_align

    with open(wav_path, 'wb') as f:
        f.write(b'RIFF')
        f.write(struct.pack('<I', file_size))
        f.write(b'WAVE')
        f.write(b'fmt ')
        f.write(struct.pack('<I', 16))
        f.write(struct.pack('<H', 1))
        f.write(struct.pack('<H', num_channels))
        f.write(struct.pack('<I', sample_rate))
        f.write(struct.pack('<I', byte_rate))
        f.write(struct.pack('<H', block_align))
        f.write(struct.pack('<H', bits_per_sample))
        f.write(b'data')
        f.write(struct.pack('<I', data_size))
        if isinstance(pcm, array.array):
            f.write(pcm.tobytes())
        else:
            for s in pcm:
                f.write(struct.pack('<h', s))

def main():
    gob = open(GOB_PATH, 'rb').read()
    num_blocks = len(gob) // 0x800

    # Find all STBL offsets
    stbl_offsets = []
    for b in range(num_blocks):
        off = b * 0x800
        if gob[off:off+4] == b'STBL':
            stbl_offsets.append(off)

    os.makedirs('vagp_wav', exist_ok=True)

    vagp_count = 0
    fail_count = 0

    for stbl_idx, gob_off in enumerate(stbl_offsets):
        fmt = gob[gob_off + 4]
        if fmt != 0x7A:  # zlib only
            continue

        # Decompress STBL (may span multiple blocks)
        decomp_data = bytearray()
        for extra in range(32):
            start = gob_off + 5
            end = min(start + (extra + 1) * 0x800, len(gob))
            candidate = gob[start:end].rstrip(b'\x00')
            try:
                decomp_data = zlib.decompress(candidate)
                break
            except:
                continue
        else:
            continue

        if decomp_data[:4] != b'VAGp':
            continue

        # Extract name from VAGp header (offset 32-47)
        vag_name = decomp_data[32:48].rstrip(b'\x00').decode('ascii', errors='replace')
        sample_rate = struct.unpack('>I', decomp_data[16:20])[0]

        result = decode_vagp_to_pcm16(decomp_data)
        if result is None:
            fail_count += 1
            continue

        pcm, num_samples, sr = result
        if not pcm:
            fail_count += 1
            continue

        # Try to use the embedded name
        safe_name = vag_name.replace('/', '_').replace('\\', '_').replace(' ', '_').replace(':', '_') if vag_name else f'vagp_{stbl_idx:04d}'
        safe_name = safe_name.split('\x00')[0].strip()
        if not safe_name:
            safe_name = f'vagp_{stbl_idx:04d}'
        safe_name = safe_name[:120]
        wav_name = f'{safe_name}.wav'
        wav_path = f'vagp_wav/{wav_name}'

        write_wav(pcm, sr, wav_path)
        vagp_count += 1

        if vagp_count <= 5:
            safe_name_short = safe_name[:40]
            print(f'[{vagp_count:3d}] stbl[{stbl_idx:4d}] -> {safe_name_short}.wav  ({len(pcm)} samples, {sr} Hz)')

    print(f'\nDone: {vagp_count} WAV files written, {fail_count} failed')
    print(f'Output: vagp_wav/')

if __name__ == '__main__':
    main()
