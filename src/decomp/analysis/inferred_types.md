# Inferred signatures (Phase 3A) - SLUS_206.49

Evidence from binary decoding; no invented names. HIGH conf>=0.7, MEDIUM >=0.5, LOW otherwise.

0x001071e0  memcpy64  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> int
    a3 -> int
  return: void
  accesses:
    a0 + 0x0 (16 bytes, float, 0l/2s)
    a0 + 0x4 (4 bytes, float, 0l/1s)
    a0 + 0x8 (4 bytes, float, 0l/1s)
    a0 + 0xc (4 bytes, float, 0l/1s)
    a0 + 0x10 (16 bytes, float, 0l/2s)
    a0 + 0x14 (4 bytes, float, 0l/1s)
    a0 + 0x18 (4 bytes, float, 0l/1s)
    a0 + 0x1c (4 bytes, float, 0l/1s)
    a0 + 0x20 (16 bytes, float, 0l/2s)
    a0 + 0x24 (4 bytes, float, 0l/1s)
    a0 + 0x28 (4 bytes, float, 0l/1s)
    a0 + 0x2c (4 bytes, float, 0l/1s)
    a0 + 0x30 (16 bytes, float, 0l/2s)
    a0 + 0x34 (4 bytes, float, 0l/1s)
    a0 + 0x38 (4 bytes, float, 0l/1s)
    a0 + 0x3c (4 bytes, float, 0l/1s)
    a1 + 0x0 (16 bytes, float, 2l/0s)
    a1 + 0x4 (4 bytes, float, 1l/0s)
    a1 + 0x8 (4 bytes, float, 1l/0s)
    a1 + 0xc (4 bytes, float, 1l/0s)
    a1 + 0x10 (16 bytes, float, 2l/0s)
    a1 + 0x14 (4 bytes, float, 1l/0s)
    a1 + 0x18 (4 bytes, float, 1l/0s)
    a1 + 0x1c (4 bytes, float, 1l/0s)
    a1 + 0x20 (16 bytes, float, 2l/0s)
    a1 + 0x24 (4 bytes, float, 1l/0s)
    a1 + 0x28 (4 bytes, float, 1l/0s)
    a1 + 0x2c (4 bytes, float, 1l/0s)
    a1 + 0x30 (16 bytes, float, 2l/0s)
    a1 + 0x34 (4 bytes, float, 1l/0s)
    a1 + 0x38 (4 bytes, float, 1l/0s)
    a1 + 0x3c (4 bytes, float, 1l/0s)
  consts: mask 0xf

0x0010e780  packed_bits_write  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> ptr
    a3 -> int
  return: void
  accesses:
    a0 + 0x0 (1 bytes, data, 2l/3s)
    a0 + 0x4 (4 bytes, ptr, 4l/0s)
    a0 + 0x8 (4 bytes, data, 1l/0s)
    a0 + 0x10 (4 bytes, data, 2l/1s)
    a2 + 0xc (1 bytes, data, 1l/0s)
  consts: mask 0x7, sz 0x8, sz 0xc, mask 0xff

0x0010ee50  packed_bits_read  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (1 bytes, data, 3l/0s)
    a0 + 0x4 (4 bytes, ptr, 3l/0s)
    a0 + 0xc (4 bytes, data, 2l/1s)
    a0 + 0x10 (4 bytes, data, 1l/0s)
    a1 + 0xc (1 bytes, data, 0l/1s)
  consts: mask 0x7, sz 0x8, sz 0xc, mask 0xff

0x0011e790  defaults_init_entity  confidence=0.50 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> -
  return: void
  accesses:
    a0 + 0x3c (4 bytes, data, 0l/1s)
    a0 + 0x4c (4 bytes, data, 0l/1s)
    a0 + 0x50 (4 bytes, data, 0l/1s)
    a0 + 0x54 (4 bytes, data, 0l/1s)
    a0 + 0x5c (1 bytes, data, 0l/1s)
    a0 + 0x74 (4 bytes, data, 0l/1s)
    a0 + 0xac (1 bytes, data, 0l/1s)
    a0 + 0xb0 (4 bytes, data, 0l/1s)
    a0 + 0xb4 (4 bytes, data, 0l/1s)
    a0 + 0xb8 (4 bytes, data, 0l/1s)
    a0 + 0xc4 (4 bytes, data, 0l/1s)
    a0 + 0xc8 (4 bytes, data, 0l/1s)
    a0 + 0xcc (4 bytes, data, 0l/1s)
    a0 + 0xd0 (4 bytes, data, 0l/1s)
    a0 + 0xd4 (4 bytes, data, 0l/1s)
    a0 + 0xd8 (4 bytes, data, 0l/1s)
    a0 + 0xe0 (1 bytes, data, 0l/1s)
    a0 + 0xe4 (4 bytes, data, 0l/1s)
  consts: lui 0x3f800000, lui 0x42c80000, lui 0x42ca0000

0x0012bda0  collision_support  confidence=0.45 [LOW]
  args:
    a0 -> int
    a1 -> int
    a2 -> int
    a3 -> -
  return: int
  consts: lui 0x3f800000, mask 0x7, lui 0x3f000000, lui 0x10000

0x0015ba30  vec3_copy  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> -
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 0l/1s)
    a0 + 0x4 (4 bytes, float, 0l/1s)
    a0 + 0x8 (4 bytes, float, 0l/1s)
    a0 + 0xc (4 bytes, float, 0l/1s)
    a1 + 0x0 (4 bytes, float, 1l/0s)
    a1 + 0x4 (4 bytes, float, 1l/0s)
    a1 + 0x8 (4 bytes, float, 1l/0s)

0x00165e70  accessor_fields  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 2l/5s)
    a0 + 0x4 (4 bytes, float, 2l/2s)
    a0 + 0x8 (4 bytes, ptr, 3l/2s)
    a0 + 0x60 (4 bytes, float, 1l/0s)
    a0 + 0x64 (4 bytes, ptr, 1l/0s)
    a0 + 0x68 (4 bytes, float, 1l/0s)
    a0 + 0x6c (4 bytes, float, 1l/0s)
    a0 + 0x78 (4 bytes, float, 1l/0s)
    a0 + 0x7c (4 bytes, ptr, 1l/0s)
    a0 + 0x80 (4 bytes, float, 1l/0s)
    a0 + 0x84 (4 bytes, float, 1l/0s)
    a0 + 0x88 (1 bytes, data, 1l/0s)
    a0 + 0x9c (4 bytes, float, 1l/0s)
    a0 + 0x894 (4 bytes, data, 1l/0s)
    a1 + 0x0 (4 bytes, float, 0l/1s)
  consts: lui 0x3f800000

0x00190370  transform_point_vu0_f  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> -
  return: void
  accesses:
    a0 + 0x10 (16 bytes, data, 0l/1s)
    a0 + 0x20 (16 bytes, data, 0l/1s)
    a0 + 0x30 (16 bytes, data, 0l/1s)
    a0 + 0x94 (4 bytes, data, 3l/0s)
  consts: sz 0xe0, lui 0x3f800000, sz 0x10, sz 0x20, sz 0x30

0x00195820  kart_speed_ratio  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> w
    a2 -> int
    a3 -> -
  return: void
  accesses:
    a0 + 0x0 (4 bytes, ptr, 2l/0s)
    a0 + 0x2c (4 bytes, ptr, 3l/0s)
    a0 + 0x50 (16 bytes, data, 1l/0s)
    a0 + 0x94 (4 bytes, ptr, 2l/0s)
    a0 + 0xe8 (4 bytes, float, 1l/0s)
    a0 + 0xec (4 bytes, float, 1l/0s)
    a0 + 0xf0 (4 bytes, float, 1l/0s)
    a0 + 0x1b0 (4 bytes, float, 1l/0s)
    a0 + 0x3e4 (4 bytes, float, 1l/0s)
    a0 + 0x42c (4 bytes, float, 1l/0s)
  consts: sz 0x50, sz 0x80

0x0019e150  tuning_scale  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, ptr, 3l/0s)
    a0 + 0x10 (16 bytes, data, 1l/0s)
    a0 + 0x2c (4 bytes, ptr, 3l/0s)
    a0 + 0x38 (4 bytes, ptr, 3l/0s)
    a0 + 0x3c (4 bytes, float, 1l/0s)
    a0 + 0x44 (1 bytes, data, 1l/0s)
    a0 + 0x60 (4 bytes, float, 1l/0s)
    a0 + 0x80 (4 bytes, float, 1l/0s)
    a0 + 0x94 (4 bytes, ptr, 2l/0s)
    a0 + 0xb5 (1 bytes, data, 2l/0s)
    a0 + 0x1b0 (4 bytes, float, 1l/0s)
  consts: lui 0x6f0000, mask 0x1, sz 0x10, sz 0x80

0x0019ea30  tuning_scale_b  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, ptr, 3l/0s)
    a0 + 0x10 (16 bytes, data, 1l/0s)
    a0 + 0x2c (4 bytes, ptr, 3l/0s)
    a0 + 0x38 (4 bytes, ptr, 1l/0s)
    a0 + 0x3c (4 bytes, float, 1l/0s)
    a0 + 0x44 (1 bytes, data, 1l/0s)
    a0 + 0x60 (4 bytes, float, 1l/0s)
    a0 + 0x80 (4 bytes, float, 1l/0s)
    a0 + 0x94 (4 bytes, ptr, 2l/0s)
    a0 + 0x1b0 (4 bytes, float, 1l/0s)
  consts: lui 0x6f0000, sz 0x10, sz 0x80

0x0019f130  tuning_scale_c  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> -
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, ptr, 3l/0s)
    a0 + 0x10 (16 bytes, data, 1l/0s)
    a0 + 0x2c (4 bytes, ptr, 3l/0s)
    a0 + 0x3c (4 bytes, ptr, 1l/0s)
    a0 + 0x60 (4 bytes, float, 1l/0s)
    a0 + 0x80 (4 bytes, float, 1l/0s)
    a0 + 0x94 (4 bytes, ptr, 2l/0s)
    a0 + 0x1b0 (4 bytes, float, 1l/0s)
    a0 + 0x268 (4 bytes, float, 1l/0s)
  consts: lui 0x6f0000, sz 0x10, sz 0x80

0x0019f7f0  tuning_scale_d  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, ptr, 3l/0s)
    a0 + 0x10 (16 bytes, data, 1l/0s)
    a0 + 0x2c (4 bytes, ptr, 3l/0s)
    a0 + 0x38 (4 bytes, ptr, 1l/0s)
    a0 + 0x3c (4 bytes, float, 1l/0s)
    a0 + 0x44 (1 bytes, data, 1l/0s)
    a0 + 0x60 (4 bytes, float, 1l/0s)
    a0 + 0x80 (4 bytes, float, 1l/0s)
    a0 + 0x94 (4 bytes, ptr, 2l/0s)
    a0 + 0x1b0 (4 bytes, float, 1l/0s)
  consts: lui 0x6f0000, sz 0x10, sz 0x80

0x001a1800  kart_state_check  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, ptr, 2l/0s)
    a0 + 0x4 (4 bytes, ptr, 2l/0s)
    a0 + 0x10 (4 bytes, ptr, 3l/0s)
    a0 + 0x14 (4 bytes, ptr, 1l/0s)
    a0 + 0x18 (4 bytes, float, 1l/0s)
    a0 + 0x1c (4 bytes, float, 1l/0s)
    a1 + 0x0 (4 bytes, ptr, 2l/0s)
    a1 + 0x4 (4 bytes, ptr, 1l/0s)
    a1 + 0x10 (16 bytes, data, 1l/0s)
    a1 + 0x1c (4 bytes, data, 1l/0s)
    a1 + 0x20 (4 bytes, data, 1l/0s)
    a1 + 0x2c (4 bytes, ptr, 2l/0s)
    a1 + 0x38 (4 bytes, float, 6l/0s)
    a1 + 0x40 (4 bytes, float, 3l/6s)
    a1 + 0x49 (1 bytes, data, 1l/2s)
    a1 + 0x50 (16 bytes, data, 1l/0s)
    a1 + 0x78 (4 bytes, ptr, 1l/0s)
    a1 + 0x3e0 (4 bytes, data, 1l/0s)
    a1 + 0x429 (1 bytes, data, 1l/0s)
    a1 + 0x42c (4 bytes, float, 1l/0s)
  consts: lui 0x3f800000, lui 0x40c00000, sz 0x50, sz 0x10, lui 0x40000000, lui 0x40f00000

0x001a1bd0  sort_assign_rank  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> ptr
  return: void
  accesses:
    a0 + 0x8 (4 bytes, data, 1l/0s)
    a3 + 0x0 (4 bytes, data, 0l/1s)
  consts: sz 0x4

0x001b6340  quat_invert  confidence=0.80 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> ptr
    a3 -> w
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, ptr, 6l/3s)
    a0 + 0x4 (4 bytes, ptr, 3l/0s)
    a0 + 0x10 (4 bytes, float, 1l/0s)
    a0 + 0x14 (4 bytes, ptr, 1l/0s)
    a0 + 0x18 (4 bytes, float, 1l/0s)
    a0 + 0x1c (4 bytes, float, 1l/0s)
    a0 + 0x20 (4 bytes, float, 1l/0s)
    a0 + 0x24 (4 bytes, ptr, 1l/0s)
    a0 + 0x28 (4 bytes, float, 1l/0s)
    a0 + 0x2c (4 bytes, ptr, 4l/0s)
    a0 + 0x30 (4 bytes, ptr, 1l/0s)
    a0 + 0x34 (4 bytes, float, 1l/0s)
    a0 + 0x38 (4 bytes, float, 1l/0s)
    a0 + 0x3c (4 bytes, float, 1l/0s)
    a0 + 0x78 (4 bytes, ptr, 3l/0s)
    a1 + 0x0 (16 bytes, data, 0l/1s)
    a2 + 0x0 (16 bytes, float, 2l/0s)
    a2 + 0x4 (4 bytes, float, 1l/0s)
    a2 + 0x8 (4 bytes, float, 1l/0s)

0x001c3910  object_init  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> ptr
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, data, 0l/1s)
    a0 + 0x4 (4 bytes, data, 0l/2s)
    a0 + 0x8 (4 bytes, data, 0l/1s)
    a0 + 0xc (1 bytes, data, 0l/1s)
    a0 + 0x10 (4 bytes, data, 0l/1s)
    a0 + 0x14 (4 bytes, data, 0l/1s)
    a0 + 0x20 (16 bytes, data, 0l/2s)
    a0 + 0x24 (4 bytes, data, 0l/1s)
    a0 + 0x28 (4 bytes, data, 0l/1s)
    a0 + 0x2c (4 bytes, data, 0l/1s)
    a0 + 0x30 (4 bytes, float, 0l/1s)
    a0 + 0x40 (16 bytes, data, 0l/2s)
    a0 + 0x44 (4 bytes, data, 0l/1s)
    a0 + 0x48 (4 bytes, data, 0l/1s)
    a0 + 0x4c (4 bytes, data, 0l/1s)
    a2 + 0x0 (4 bytes, data, 0l/1s)
    a2 + 0xc (4 bytes, float, 1l/0s)
    a2 + 0x10 (4 bytes, float, 1l/0s)
    a2 + 0x14 (4 bytes, float, 1l/0s)
    a2 + 0x20 (4 bytes, float, 1l/0s)
    a2 + 0x30 (16 bytes, data, 1l/0s)
  consts: sz 0x20, lui 0x6d0000, lui 0x3f800000, sz 0x40, sz 0x10

0x0022ade0  layout_viewport  confidence=0.55 [MEDIUM]
  args:
    a0 -> int
    a1 -> ptr
    a2 -> w
    a3 -> -
  return: ptr
  accesses:
    a1 + 0x18 (4 bytes, data, 1l/0s)
  consts: lui 0xc3960000, lui 0x42be0000, lui 0x439d0000, lui 0x44480000, lui 0x3f000000, lui 0x43870000

0x0022d1a0  layout_viewport_b  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> int
    a3 -> w
  return: void
  accesses:
    a0 + 0x0 (4 bytes, float, 0l/7s)
    a0 + 0x4 (4 bytes, float, 0l/7s)
    a0 + 0x8 (4 bytes, float, 0l/7s)
    a1 + 0x18 (4 bytes, data, 1l/0s)
  consts: lui 0x42fa0000, lui 0x43a20000, lui 0x43610000, lui 0xc37a0000, lui 0x43020000, lui 0x43aa0000

0x002304a0  layout_viewport_c  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> w
    a2 -> int
    a3 -> w
  return: void
  accesses:
    a0 + 0x0 (4 bytes, float, 0l/7s)
    a0 + 0x4 (4 bytes, float, 0l/7s)
    a0 + 0x8 (4 bytes, float, 0l/7s)
  consts: lui 0x42c80000, lui 0x43610000, lui 0xc3c80000, lui 0x42960000, lui 0x43820000, lui 0x43910000

0x0026d960  type4cc_check  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 2l/0s)
    a0 + 0x4 (4 bytes, ptr, 2l/0s)
    a0 + 0x8 (4 bytes, data, 1l/0s)
    a0 + 0xc (4 bytes, ptr, 2l/0s)
    a0 + 0x10 (4 bytes, ptr, 1l/0s)
    a0 + 0x14 (4 bytes, data, 1l/0s)
  consts: mask 0xff, lui 0xff000000, lui 0xff0000, lui 0x630000, lui 0x6a0000, sz 0x1190

0x0026e060  type4cc_check_b  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 2l/0s)
    a0 + 0x4 (4 bytes, ptr, 1l/0s)
    a0 + 0x8 (4 bytes, data, 1l/0s)
    a0 + 0xc (4 bytes, ptr, 2l/0s)
    a0 + 0x10 (4 bytes, ptr, 1l/0s)
  consts: mask 0xff, lui 0xff000000, lui 0xff0000, lui 0x630000

0x0026e1a0  type4cc_check_c  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 2l/0s)
    a0 + 0x4 (4 bytes, ptr, 1l/0s)
    a0 + 0x8 (4 bytes, data, 1l/0s)
    a0 + 0xc (4 bytes, ptr, 2l/0s)
    a0 + 0x10 (4 bytes, ptr, 1l/0s)
  consts: mask 0xff, lui 0xff000000, lui 0xff0000, lui 0x630000

0x0026e2e0  type4cc_check_d  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 2l/0s)
    a0 + 0x4 (4 bytes, ptr, 1l/0s)
    a0 + 0x8 (4 bytes, data, 1l/0s)
    a0 + 0xc (4 bytes, ptr, 2l/0s)
    a0 + 0x10 (4 bytes, ptr, 1l/0s)
  consts: mask 0xff, lui 0xff000000, lui 0xff0000, lui 0x630000

0x0026e420  type4cc_check_e  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 2l/0s)
    a0 + 0x4 (4 bytes, ptr, 1l/0s)
    a0 + 0x8 (4 bytes, data, 1l/0s)
    a0 + 0xc (4 bytes, ptr, 2l/0s)
    a0 + 0x10 (4 bytes, ptr, 1l/0s)
  consts: mask 0xff, lui 0xff000000, lui 0xff0000, lui 0x630000

0x003472f0  transform_point_vu0_b  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> -
    a2 -> -
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, data, 0l/1s)

0x0035bc40  transform_point_vu0  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> -
    a2 -> -
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, data, 0l/1s)

0x0035c3f0  transform_point_vu0_c  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> -
    a2 -> -
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, data, 0l/1s)

0x00365d80  aabb_corners_vu0  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, float, 1l/2s)
    a0 + 0x4 (4 bytes, float, 1l/1s)
    a0 + 0x8 (4 bytes, float, 1l/1s)
    a0 + 0x10 (16 bytes, float, 1l/1s)
    a0 + 0x14 (4 bytes, float, 1l/0s)
    a0 + 0x18 (4 bytes, float, 1l/0s)
  consts: lui 0x3f800000, mask 0xffffffff, mask 0x1, lui 0x7f7f0000, lui 0xff7f0000, sz 0x10

0x003803c0  interval_check  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> ptr
    a3 -> int
  return: void
  accesses:
    a0 + 0x0 (8 bytes, ptr, 6l/4s)
    a0 + 0x8 (8 bytes, ptr, 4l/4s)
    a0 + 0x10 (8 bytes, data, 4l/4s)
    a1 + 0x0 (8 bytes, ptr, 4l/4s)
    a1 + 0x8 (8 bytes, ptr, 4l/4s)
    a1 + 0x10 (8 bytes, data, 4l/4s)
    a2 + 0x0 (4 bytes, ptr, 2l/0s)
  consts: mask 0x1, mask 0xff

0x00380560  interval_check_b  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> ptr
    a3 -> int
  return: void
  accesses:
    a0 + 0x0 (8 bytes, ptr, 6l/4s)
    a0 + 0x8 (8 bytes, ptr, 4l/4s)
    a0 + 0x10 (8 bytes, data, 4l/4s)
    a1 + 0x0 (8 bytes, ptr, 4l/4s)
    a1 + 0x8 (8 bytes, ptr, 4l/4s)
    a1 + 0x10 (8 bytes, data, 4l/4s)
    a2 + 0x0 (4 bytes, ptr, 2l/0s)
  consts: mask 0x1, mask 0xff

0x00381030  matrix_invert_vu0  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> ptr
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, float, 4l/7s)
    a0 + 0x4 (4 bytes, float, 1l/1s)
    a0 + 0x8 (4 bytes, float, 1l/0s)
    a0 + 0x10 (16 bytes, float, 2l/1s)
    a0 + 0x14 (4 bytes, float, 1l/0s)
    a0 + 0x18 (4 bytes, float, 1l/0s)
    a0 + 0x20 (4 bytes, float, 1l/0s)
    a0 + 0x24 (4 bytes, float, 1l/0s)
    a0 + 0x28 (4 bytes, float, 1l/0s)
    a0 + 0x30 (16 bytes, float, 4l/2s)
    a0 + 0x34 (4 bytes, float, 1l/0s)
    a0 + 0x38 (4 bytes, float, 1l/0s)
    a1 + 0x0 (4 bytes, data, 9l/9s)
    a1 + 0x4 (4 bytes, data, 5l/5s)
    a1 + 0x8 (4 bytes, data, 3l/3s)
    a1 + 0xc (4 bytes, data, 7l/7s)
    a1 + 0x10 (4 bytes, data, 9l/9s)
    a1 + 0x14 (4 bytes, data, 5l/5s)
    a1 + 0x18 (4 bytes, data, 3l/3s)
    a1 + 0x1c (4 bytes, data, 7l/7s)
    a1 + 0x20 (4 bytes, data, 1l/24s)
    a2 + 0x0 (4 bytes, float, 0l/12s)
    a2 + 0x4 (4 bytes, float, 0l/5s)
    a2 + 0x8 (4 bytes, float, 0l/1s)
    a2 + 0x40 (4 bytes, data, 1l/0s)
    a2 + 0x44 (4 bytes, data, 1l/0s)
  consts: sz 0x10, sz 0x20, lui 0x3f800000, sz 0x30, lui 0x37270000, mask 0xff

0x00394050  transform_point_vu0_d  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> -
    a2 -> -
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, data, 0l/1s)

0x003955c0  transform_point_vu0_e  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> -
    a2 -> -
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x1f0 (4 bytes, float, 1l/0s)
  consts: sz 0xa0, sz 0x1e0

0x003a0730  gaussjordan_solve  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> ptr
    a3 -> ptr
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 4l/1s)
    a2 + 0x0 (4 bytes, data, 0l/1s)
    a2 + 0x4 (4 bytes, data, 0l/1s)
    a3 + 0x0 (4 bytes, data, 0l/1s)
  consts: sz 0x4, sz 0x20, sz 0x10, lui 0x3f800000, sz 0x8, sz 0x24

0x003a09f0  gaussjordan_solve_b  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> ptr
    a3 -> ptr
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 4l/1s)
    a2 + 0x0 (4 bytes, data, 0l/1s)
    a2 + 0x4 (4 bytes, data, 0l/1s)
    a3 + 0x0 (4 bytes, data, 0l/1s)
  consts: sz 0x10, sz 0x4, sz 0xc, lui 0x3f800000, sz 0x8, sz 0x14

0x003ae0e0  spline_accum  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, data, 2l/0s)
    a0 + 0x8 (4 bytes, data, 1l/0s)
    a0 + 0x14 (4 bytes, ptr, 1l/0s)
    a0 + 0x18 (4 bytes, ptr, 1l/0s)
  consts: lui 0x700000, lui 0x40000000, lui 0x40400000, lui 0x40800000, sz 0x4, lui 0xc0c00000

0x003ec660  index_of_int  confidence=0.50 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> -
    a2 -> int
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, data, 1l/0s)
    a0 + 0x4 (4 bytes, data, 1l/0s)
  consts: sz 0x4

0x003f6840  quat_matrix_vu0  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> -
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, data, 0l/1s)
    a0 + 0x10 (16 bytes, data, 0l/1s)
    a0 + 0x20 (16 bytes, data, 0l/1s)
    a0 + 0x30 (16 bytes, data, 0l/1s)

0x003f6b20  quat_lerp_vu0  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> -
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, data, 0l/1s)
    a0 + 0x10 (16 bytes, data, 0l/1s)
    a0 + 0x20 (16 bytes, data, 0l/1s)

0x00405d20  bsearch16  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> ptr
  return: void
  accesses:
    a0 + 0x0 (4 bytes, data, 0l/1s)
    a3 + 0x0 (2 bytes, data, 1l/0s)
  consts: sz 0x10

0x00405dc0  bsearch12  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> ptr
  return: void
  accesses:
    a0 + 0x0 (4 bytes, data, 0l/1s)
    a3 + 0x0 (2 bytes, data, 1l/0s)
  consts: lui 0x2aaa0000, sz 0xc

0x00407550  bsearch16_b  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> ptr
  return: void
  accesses:
    a0 + 0x0 (4 bytes, data, 0l/1s)
    a3 + 0x0 (2 bytes, data, 1l/0s)
  consts: sz 0x10

0x004075f0  bsearch12_b  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> ptr
  return: void
  accesses:
    a0 + 0x0 (4 bytes, data, 0l/1s)
    a3 + 0x0 (2 bytes, data, 1l/0s)
  consts: lui 0x2aaa0000, sz 0xc

0x00428b18  strcat  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ret
  accesses:
    a0 + 0x-1fe00 (1 bytes, data, 1l/0s)
    a0 + 0x-1fdf0 (16 bytes, data, 1l/0s)
  calls:
    0x00428f48
  consts: sz 0x10, sz 0x8, mask 0x7, mask 0xf

0x00428c50  strchr  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> -
  return: ptr
  accesses:
    a0 + 0x0 (16 bytes, data, 2l/0s)
    a0 + 0x10 (8 bytes, data, 4l/0s)
    a0 + 0x18 (8 bytes, data, 1l/0s)
    a0 + 0x20 (1 bytes, data, 2l/0s)
    a0 + 0x21 (1 bytes, data, 2l/0s)
  consts: sz 0x8, mask 0x7, mask 0xff, mask 0xf, sz 0x10

0x00428f48  strcpy  confidence=0.60 [MEDIUM]
  args:
    a0 -> int
    a1 -> ptr
    a2 -> ptr
    a3 -> int
  return: ptr
  accesses:
    a1 + 0x0 (16 bytes, data, 2l/0s)
    a1 + 0x10 (16 bytes, data, 1l/0s)
    a1 + 0x18 (8 bytes, data, 2l/0s)
    a2 + 0x0 (16 bytes, data, 0l/2s)
    a2 + 0x10 (8 bytes, data, 0l/1s)
  consts: sz 0x10, sz 0x8, mask 0x7, mask 0xf

0x0042a4e0  script_step_b  confidence=0.55 [MEDIUM]
  args:
    a0 -> int
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  calls:
    0x004299a0
    0x00429c60
    (1 indirect jalr)
  consts: lui 0x650000

0x0042a680  script_step_d  confidence=0.55 [MEDIUM]
  args:
    a0 -> int
    a1 -> int
    a2 -> int
    a3 -> int
  return: int
  calls:
    0x00429760
  consts: lui 0x430000, sz 0x400

0x0042a818  script_step  confidence=0.55 [MEDIUM]
  args:
    a0 -> int
    a1 -> int
    a2 -> int
    a3 -> int
  return: int
  calls:
    0x004299a0
    0x00429c60
    0x0042a5e8
    0x0042a680
    (1 indirect jalr)
  consts: lui 0x650000, mask 0x3, lui 0x430000

0x0042ac48  script_abort  confidence=0.55 [MEDIUM]
  args:
    a0 -> int
    a1 -> int
    a2 -> int
    a3 -> int
  return: int
  calls:
    0x004297c0

0x0042bc88  script_step_c  confidence=0.55 [MEDIUM]
  args:
    a0 -> int
    a1 -> int
    a2 -> int
    a3 -> int
  return: int
  calls:
    0x00429c60
    0x0042a680
  consts: lui 0x650000, mask 0x1

0x0042f660  strtok_save_state  confidence=0.60 [MEDIUM]
  args:
    a0 -> int
    a1 -> int
    a2 -> ptr
    a3 -> -
  return: void
  accesses:
    a2 + 0x0 (4 bytes, ptr, 2l/0s)

0x004311f0  heap_stats  confidence=0.45 [LOW]
  args:
    a0 -> int
    a1 -> w
    a2 -> int
    a3 -> int
  return: ptr
  consts: lui 0xffff0000, lui 0x650000, mask 0x1

0x004327a0  strrev  confidence=0.55 [MEDIUM]
  args:
    a0 -> int
    a1 -> ptr
    a2 -> int
    a3 -> ptr
  return: ptr
  accesses:
    a1 + 0x0 (1 bytes, data, 1l/1s)
    a3 + 0x0 (1 bytes, data, 1l/1s)

0x00432818  itoa  confidence=0.50 [MEDIUM]
  args:
    a0 -> int
    a1 -> ptr
    a2 -> int
    a3 -> int
  return: ret
  accesses:
    a1 + 0x0 (1 bytes, data, 1l/0s)
  calls:
    0x004327a0
  consts: lui 0x650000

0x00432fc0  format_scan  confidence=0.55 [MEDIUM]
  args:
    a0 -> int
    a1 -> ptr
    a2 -> ptr
    a3 -> int
  return: ret
  accesses:
    a1 + 0x54 (4 bytes, data, 2l/0s)
    a2 + 0x0 (1 bytes, data, 1l/0s)
    a2 + 0x2 (1 bytes, data, 3l/0s)
    a2 + 0x3 (1 bytes, data, 2l/0s)
    a2 + 0x4 (1 bytes, data, 2l/0s)
  calls:
    0x00433090
    0x00433ef0
  consts: lui 0x6a0000

0x004518d0  blit_palette_image  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> ptr
    a3 -> ptr
  return: void
  accesses:
    a0 + 0x0 (4 bytes, data, 1l/0s)
    a0 + 0x8 (1 bytes, data, 1l/0s)
    a0 + 0x9 (1 bytes, data, 1l/0s)
    a1 + 0x0 (4 bytes, ptr, 19l/1s)
    a1 + 0x1 (1 bytes, data, 1l/1s)
    a1 + 0x2 (1 bytes, data, 1l/1s)
    a1 + 0x3 (1 bytes, data, 1l/1s)
    a1 + 0x4 (1 bytes, data, 1l/1s)
    a1 + 0x5 (1 bytes, data, 1l/1s)
    a1 + 0x6 (1 bytes, data, 1l/1s)
    a1 + 0x7 (1 bytes, data, 1l/1s)
    a1 + 0x8 (1 bytes, data, 1l/1s)
    a1 + 0x9 (1 bytes, data, 1l/1s)
    a1 + 0xa (1 bytes, data, 1l/1s)
    a1 + 0xb (1 bytes, data, 1l/1s)
    a1 + 0xc (1 bytes, data, 1l/1s)
    a1 + 0xd (1 bytes, data, 1l/1s)
    a1 + 0xe (1 bytes, data, 1l/1s)
    a1 + 0xf (1 bytes, data, 1l/1s)
    a1 + 0x10 (1 bytes, data, 1l/1s)
    a1 + 0x11 (1 bytes, data, 1l/1s)
    a1 + 0x12 (1 bytes, data, 1l/1s)
    a1 + 0x13 (1 bytes, data, 1l/1s)
    a1 + 0x14 (1 bytes, data, 1l/1s)
    a1 + 0x15 (1 bytes, data, 1l/1s)
    a1 + 0x16 (1 bytes, data, 1l/1s)
    a1 + 0x17 (1 bytes, data, 1l/1s)
    a1 + 0x18 (1 bytes, data, 1l/1s)
    a1 + 0x19 (1 bytes, data, 1l/1s)
    a1 + 0x1a (1 bytes, data, 1l/1s)
    a1 + 0x1b (1 bytes, data, 1l/1s)
    a1 + 0x1c (1 bytes, data, 1l/1s)
    a1 + 0x1d (1 bytes, data, 1l/1s)
    a1 + 0x1e (1 bytes, data, 1l/1s)
    a1 + 0x1f (1 bytes, data, 1l/1s)
    a1 + 0x20 (1 bytes, data, 1l/1s)
    a1 + 0x21 (1 bytes, data, 1l/1s)
    a1 + 0x22 (1 bytes, data, 1l/1s)
    a1 + 0x23 (1 bytes, data, 1l/1s)
    a1 + 0x25 (1 bytes, data, 1l/1s)
    a1 + 0x26 (1 bytes, data, 1l/1s)
    a1 + 0x27 (1 bytes, data, 1l/1s)
    a1 + 0x29 (1 bytes, data, 1l/1s)
    a1 + 0x2a (1 bytes, data, 1l/1s)
    a1 + 0x2b (1 bytes, data, 1l/1s)
    a1 + 0x2d (1 bytes, data, 1l/1s)
    a1 + 0x2e (1 bytes, data, 1l/1s)
    a1 + 0x2f (1 bytes, data, 1l/1s)
    a1 + 0x31 (1 bytes, data, 1l/1s)
    a1 + 0x32 (1 bytes, data, 1l/1s)
    a1 + 0x33 (1 bytes, data, 1l/1s)
    a1 + 0x35 (1 bytes, data, 1l/1s)
    a1 + 0x36 (1 bytes, data, 1l/1s)
    a1 + 0x37 (1 bytes, data, 1l/1s)
    a1 + 0x39 (1 bytes, data, 1l/1s)
    a1 + 0x3a (1 bytes, data, 1l/1s)
    a1 + 0x3b (1 bytes, data, 1l/1s)
    a1 + 0x3d (1 bytes, data, 1l/1s)
    a1 + 0x3e (1 bytes, data, 1l/1s)
    a1 + 0x3f (1 bytes, data, 1l/1s)
    a1 + 0x41 (1 bytes, data, 1l/1s)
    a1 + 0x42 (1 bytes, data, 1l/1s)
    a1 + 0x43 (1 bytes, data, 1l/1s)
    a1 + 0x45 (1 bytes, data, 1l/1s)
    a1 + 0x46 (1 bytes, data, 1l/1s)
    a1 + 0x47 (1 bytes, data, 1l/1s)
    a1 + 0x48 (1 bytes, data, 1l/1s)
    a1 + 0x49 (1 bytes, data, 1l/1s)
    a1 + 0x4a (1 bytes, data, 1l/1s)
    a1 + 0x4d (1 bytes, data, 1l/1s)
    a1 + 0x4f (1 bytes, data, 1l/1s)
    a1 + 0x51 (1 bytes, data, 1l/1s)
    a1 + 0x53 (1 bytes, data, 1l/1s)
    a1 + 0x55 (1 bytes, data, 1l/1s)
    a1 + 0x57 (1 bytes, data, 1l/1s)
    a1 + 0x59 (1 bytes, data, 1l/1s)
    a1 + 0x5b (1 bytes, data, 1l/1s)
    a1 + 0x5d (1 bytes, data, 1l/1s)
    a1 + 0x5f (1 bytes, data, 1l/1s)
    a1 + 0x60 (1 bytes, data, 1l/1s)
    a1 + 0x63 (1 bytes, data, 1l/1s)
    a1 + 0x64 (1 bytes, data, 1l/1s)
    a1 + 0x67 (1 bytes, data, 1l/1s)
    a1 + 0x68 (1 bytes, data, 1l/1s)
    a1 + 0x6b (1 bytes, data, 1l/1s)
    a1 + 0x6c (1 bytes, data, 1l/1s)
    a1 + 0x6f (1 bytes, data, 1l/1s)
    a1 + 0x70 (1 bytes, data, 1l/1s)
    a1 + 0x73 (1 bytes, data, 1l/1s)
    a1 + 0x74 (1 bytes, data, 1l/1s)
    a1 + 0x77 (1 bytes, data, 1l/1s)
    a1 + 0x78 (1 bytes, data, 1l/1s)
    a1 + 0x7b (1 bytes, data, 1l/1s)
    a1 + 0x7c (1 bytes, data, 1l/1s)
    a1 + 0x7f (1 bytes, data, 1l/1s)
    a1 + 0x80 (1 bytes, data, 1l/1s)
    a1 + 0x83 (1 bytes, data, 1l/1s)
    a1 + 0x84 (1 bytes, data, 1l/1s)
    a1 + 0x85 (1 bytes, data, 1l/1s)
    a1 + 0x86 (1 bytes, data, 1l/1s)
    a1 + 0x87 (1 bytes, data, 1l/1s)
    a1 + 0x88 (1 bytes, data, 1l/1s)
    a1 + 0x89 (1 bytes, data, 1l/1s)
    a1 + 0x8a (1 bytes, data, 1l/1s)
    a1 + 0x8b (1 bytes, data, 1l/1s)
    a1 + 0x8c (1 bytes, data, 1l/1s)
    a1 + 0x8d (1 bytes, data, 1l/1s)
    a1 + 0x8e (1 bytes, data, 1l/1s)
    a1 + 0x8f (1 bytes, data, 1l/1s)
    a1 + 0x90 (1 bytes, data, 1l/1s)
    a1 + 0x91 (1 bytes, data, 1l/1s)
    a1 + 0x92 (1 bytes, data, 1l/1s)
    a1 + 0x93 (1 bytes, data, 1l/1s)
    a1 + 0x94 (1 bytes, data, 1l/1s)
    a1 + 0x95 (1 bytes, data, 1l/1s)
    a1 + 0x96 (1 bytes, data, 1l/1s)
    a1 + 0x97 (1 bytes, data, 1l/1s)
    a1 + 0x98 (1 bytes, data, 1l/1s)
    a1 + 0x99 (1 bytes, data, 1l/1s)
    a1 + 0x9a (1 bytes, data, 1l/1s)
    a1 + 0x9b (1 bytes, data, 1l/1s)
    a1 + 0x9c (1 bytes, data, 1l/1s)
    a1 + 0x9d (1 bytes, data, 1l/1s)
    a1 + 0x9e (1 bytes, data, 1l/1s)
    a1 + 0x9f (1 bytes, data, 1l/1s)
    a1 + 0xa0 (1 bytes, data, 1l/1s)
    a1 + 0xa1 (1 bytes, data, 1l/1s)
    a1 + 0xa2 (1 bytes, data, 1l/1s)
    a1 + 0xa3 (1 bytes, data, 1l/1s)
    a1 + 0xa4 (1 bytes, data, 1l/1s)
    a1 + 0xa5 (1 bytes, data, 1l/1s)
    a1 + 0xa6 (1 bytes, data, 1l/1s)
    a2 + 0x0 (1 bytes, data, 63l/0s)
    a3 + 0x0 (4 bytes, ptr, 6l/0s)
  consts: sz 0x8, mask 0xf, sz 0x10, sz 0x4, sz 0x20, sz 0x18

0x004f9eb0  varint_read  confidence=0.70 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> int
    a3 -> ptr
  return: void
  accesses:
    a0 + 0x0 (4 bytes, data, 0l/4s)
    a1 + 0x0 (1 bytes, data, 2l/0s)
    a1 + 0x1 (1 bytes, data, 1l/0s)
    a1 + 0x2 (1 bytes, data, 1l/0s)
    a1 + 0x3 (1 bytes, ptr, 1l/0s)
    a1 + 0x4 (1 bytes, data, 1l/0s)
    a1 + 0x5 (1 bytes, data, 1l/0s)
    a1 + 0x6 (1 bytes, data, 1l/0s)
    a1 + 0x7 (1 bytes, data, 1l/0s)
    a1 + 0x10 (4 bytes, ptr, 1l/0s)
    a1 + 0x48 (4 bytes, ptr, 1l/0s)
    a3 + 0x0 (4 bytes, data, 1l/2s)
  consts: lui 0x6b0000, mask 0x7f, lui 0x680000, mask 0x1, sz 0x4

0x00530050  swap16  confidence=0.50 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> -
    a2 -> -
    a3 -> -
  return: void
  accesses:
    a0 + 0x0 (2 bytes, data, 1l/1s)
    a0 + 0x1 (1 bytes, data, 1l/0s)

0x00530080  swap32  confidence=0.50 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> -
    a2 -> -
    a3 -> -
  return: void
  accesses:
    a0 + 0x0 (4 bytes, data, 1l/1s)
    a0 + 0x1 (1 bytes, data, 1l/0s)
    a0 + 0x2 (1 bytes, data, 1l/0s)
    a0 + 0x3 (1 bytes, data, 1l/0s)

0x00534b60  heap_alloc_block  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> int
    a3 -> ptr
  return: void
  accesses:
    a0 + 0x0 (4 bytes, data, 0l/3s)
    a1 + 0x-4 (4 bytes, data, 0l/1s)
    a1 + 0x0 (4 bytes, data, 0l/1s)
    a1 + 0x8 (2 bytes, data, 3l/0s)
    a1 + 0x1c (4 bytes, data, 4l/2s)
    a1 + 0x20 (4 bytes, data, 1l/2s)
    a3 + 0x0 (4 bytes, data, 3l/0s)
  consts: mask 0xffffffff, lui 0x6b0000, sz 0x4

0x0058d7c0  lerp3  confidence=0.65 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> ptr
    a3 -> -
  return: void
  accesses:
    a0 + 0x0 (4 bytes, float, 0l/1s)
    a0 + 0x4 (4 bytes, float, 0l/1s)
    a1 + 0x0 (4 bytes, float, 1l/0s)
    a1 + 0x4 (4 bytes, float, 1l/0s)
    a1 + 0x8 (4 bytes, float, 1l/0s)
    a2 + 0x0 (4 bytes, float, 1l/0s)
    a2 + 0x4 (4 bytes, float, 1l/0s)
    a2 + 0x8 (4 bytes, float, 1l/0s)

0x0058dea0  pixel_format_convert  confidence=0.55 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> -
  return: void
  accesses:
    a0 + 0x0 (4 bytes, float, 0l/6s)
    a0 + 0x4 (4 bytes, float, 0l/6s)
    a0 + 0x8 (4 bytes, float, 0l/6s)
    a0 + 0xc (4 bytes, float, 0l/6s)
  consts: mask 0x1, lui 0x437f0000, lui 0xff0000, mask 0xff, lui 0xff000000, lui 0x6c0000

0x005ec0a0  list_contains  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, data, 1l/0s)
    a0 + 0x8 (4 bytes, ptr, 3l/0s)
    a0 + 0x10 (4 bytes, ptr, 1l/0s)
  consts: mask 0x1

0x005ed330  list_contains_b  confidence=0.60 [MEDIUM]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, data, 1l/0s)
    a0 + 0x8 (4 bytes, ptr, 3l/0s)
    a0 + 0x10 (4 bytes, ptr, 1l/0s)
  consts: mask 0x1

0x006588a0  boot_iop_copy  confidence=0.45 [LOW]
  args:
    a0 -> int
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  consts: mask 0xffffffff, lui 0xbc000000, lui 0x80070000, mask 0x7, lui 0xffff0000, mask 0xfff

0x0038b460  0x0038b460  confidence=0.90 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> int
    a3 -> ptr
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, ptr, 3l/0s)
    a0 + 0x4 (4 bytes, float, 3l/0s)
    a0 + 0x8 (4 bytes, float, 3l/0s)
    a0 + 0x10 (4 bytes, float, 2l/0s)
    a0 + 0x14 (4 bytes, float, 2l/0s)
    a0 + 0x18 (4 bytes, float, 2l/0s)
    a0 + 0x20 (4 bytes, float, 2l/0s)
    a0 + 0x24 (4 bytes, float, 2l/0s)
    a0 + 0x28 (4 bytes, float, 2l/0s)
    a1 + 0x0 (4 bytes, ptr, 6l/0s)
    a1 + 0x4 (4 bytes, ptr, 6l/0s)
    a1 + 0x8 (4 bytes, float, 5l/0s)
    a1 + 0x10 (4 bytes, float, 2l/0s)
    a1 + 0x14 (4 bytes, float, 2l/0s)
    a1 + 0x18 (4 bytes, float, 2l/0s)
    a1 + 0x20 (4 bytes, float, 2l/0s)
    a1 + 0x24 (4 bytes, float, 2l/0s)
    a1 + 0x28 (4 bytes, float, 2l/0s)
    a3 + 0x40 (4 bytes, float, 2l/0s)
    a3 + 0x44 (4 bytes, float, 2l/0s)
    a3 + 0x48 (4 bytes, float, 2l/0s)
  calls:
    0x001207c0
    0x0035b0e0
  consts: lui 0x3f800000, sz 0xf0, lui 0x2edb0000, lui 0x42c80000

0x003aaa60  0x003aaa60  confidence=0.90 [HIGH]
  args:
    a0 -> int
    a1 -> ptr
    a2 -> ptr
    a3 -> ptr
  return: ptr
  accesses:
    a1 + 0x8 (4 bytes, ptr, 2l/0s)
    a1 + 0x18 (4 bytes, float, 1l/0s)
    a1 + 0x28 (4 bytes, float, 1l/0s)
    a1 + 0x30 (4 bytes, ptr, 1l/0s)
    a1 + 0x60 (4 bytes, float, 2l/0s)
    a1 + 0x64 (4 bytes, float, 2l/0s)
    a1 + 0x68 (4 bytes, float, 2l/0s)
    a1 + 0x70 (4 bytes, float, 2l/0s)
    a1 + 0x74 (4 bytes, float, 2l/0s)
    a1 + 0x78 (4 bytes, float, 2l/0s)
    a1 + 0x80 (4 bytes, float, 2l/0s)
    a1 + 0x84 (4 bytes, float, 2l/0s)
    a1 + 0x88 (4 bytes, float, 2l/0s)
    a2 + 0x70 (4 bytes, data, 1l/0s)
    a3 + 0x0 (4 bytes, float, 3l/0s)
    a3 + 0x4 (4 bytes, float, 3l/0s)
    a3 + 0x8 (4 bytes, float, 3l/0s)
  calls:
    0x001206c0
    0x003aa190
    0x003aa620
    0x003aae00
  consts: lui 0x3f800000, sz 0x60, sz 0x30, lui 0x3f660000, sz 0x14, lui 0x37270000

0x003ace70  0x003ace70  confidence=0.90 [HIGH]
  args:
    a0 -> int
    a1 -> ptr
    a2 -> ptr
    a3 -> ptr
  return: ptr
  accesses:
    a1 + 0x0 (4 bytes, float, 1l/0s)
    a1 + 0x34 (4 bytes, ptr, 1l/0s)
    a1 + 0x40 (4 bytes, data, 1l/0s)
    a2 + 0x4 (4 bytes, float, 1l/0s)
    a2 + 0x8 (4 bytes, float, 1l/0s)
    a2 + 0x10 (4 bytes, float, 3l/0s)
    a2 + 0x14 (4 bytes, ptr, 3l/0s)
    a2 + 0x18 (4 bytes, float, 3l/0s)
    a2 + 0x58 (4 bytes, float, 1l/0s)
    a2 + 0x5c (4 bytes, float, 1l/0s)
    a2 + 0x60 (4 bytes, float, 1l/0s)
    a2 + 0x64 (4 bytes, float, 1l/0s)
    a2 + 0x70 (4 bytes, data, 1l/0s)
    a3 + 0x10 (4 bytes, float, 2l/0s)
    a3 + 0x14 (1 bytes, data, 1l/0s)
  calls:
    0x00120750
    0x0035c3f0
  consts: lui 0x3f800000, sz 0x10

0x003adc80  0x003adc80  confidence=0.90 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> ptr
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x14 (4 bytes, data, 1l/0s)
    a0 + 0x1e0 (4 bytes, ptr, 1l/0s)
    a1 + 0x8 (4 bytes, data, 1l/0s)
    a2 + 0x4 (4 bytes, float, 0l/1s)
    a2 + 0x8 (4 bytes, float, 0l/1s)
  calls:
    0x0033baf0
    0x0033c120
    0x0033c170
    0x0033d550
    0x004b9d70
    0x004ba0d0
  consts: lui 0x3b0000, sz 0x10, sz 0x20, sz 0xc, mask 0xff, lui 0x640000

0x003f39d0  0x003f39d0  confidence=0.90 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> ptr
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, ptr, 2l/0s)
    a0 + 0x4 (4 bytes, float, 2l/0s)
    a0 + 0x8 (4 bytes, float, 2l/0s)
    a1 + 0x0 (4 bytes, float, 1l/0s)
    a1 + 0x4 (4 bytes, float, 1l/0s)
    a1 + 0x8 (4 bytes, float, 1l/0s)
    a2 + 0x0 (16 bytes, float, 1l/1s)
    a2 + 0x4 (4 bytes, float, 1l/0s)
    a2 + 0x8 (4 bytes, float, 1l/0s)
  calls:
    0x00120720
    0x001207c0
    0x0035b0e0
    0x0035be10
  consts: lui 0x3f800000, lui 0x3f000000, lui 0x3c230000, lui 0x3a830000, lui 0x38d10000, lui 0x40800000

0x00182710  0x00182710  confidence=0.85 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x34 (4 bytes, data, 1l/0s)
    a0 + 0x74 (1 bytes, data, 1l/6s)
    a0 + 0x80 (16 bytes, data, 0l/1s)
    a0 + 0x90 (4 bytes, float, 0l/1s)
    a0 + 0xa0 (16 bytes, data, 0l/1s)
    a1 + 0x0 (4 bytes, ptr, 1l/0s)
    a1 + 0x20 (16 bytes, data, 3l/0s)
    a1 + 0x2c (4 bytes, ptr, 1l/0s)
    a1 + 0x30 (16 bytes, data, 1l/0s)
    a1 + 0x40 (4 bytes, float, 1l/0s)
    a1 + 0x50 (16 bytes, data, 1l/0s)
    a1 + 0x78 (4 bytes, ptr, 1l/0s)
    a1 + 0x94 (4 bytes, ptr, 2l/0s)
  calls:
    0x001ff6f0
  consts: sz 0x28, sz 0x20, lui 0x6f0000, lui 0x630000, sz 0x30, sz 0x80

0x003aa190  0x003aa190  confidence=0.85 [HIGH]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> ptr
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, float, 1l/0s)
    a0 + 0x4 (4 bytes, float, 1l/0s)
    a0 + 0x8 (4 bytes, float, 1l/0s)
    a0 + 0x10 (4 bytes, float, 1l/0s)
    a0 + 0x14 (4 bytes, float, 1l/0s)
    a0 + 0x18 (4 bytes, float, 1l/0s)
    a0 + 0x20 (4 bytes, float, 1l/0s)
    a0 + 0x24 (4 bytes, float, 1l/0s)
    a0 + 0x28 (4 bytes, float, 1l/0s)
    a2 + 0x0 (4 bytes, float, 1l/0s)
    a2 + 0x4 (4 bytes, float, 1l/0s)
    a2 + 0x8 (4 bytes, ptr, 1l/0s)
    a2 + 0x20 (4 bytes, float, 1l/0s)
    a2 + 0x24 (4 bytes, float, 1l/0s)
    a2 + 0x28 (4 bytes, float, 2l/0s)
  calls:
    0x00120750
    0x00120780
  consts: lui 0x3f800000, sz 0x28, lui 0x3f000000, lui 0x40000000

0x00161800  0x00161800  confidence=0.80 [HIGH]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x8 (4 bytes, ptr, 1l/0s)
    a0 + 0xc (4 bytes, float, 3l/0s)
    a0 + 0x10 (4 bytes, float, 3l/0s)
    a0 + 0x14 (4 bytes, float, 3l/0s)
    a0 + 0x28 (1 bytes, data, 2l/0s)
    a0 + 0x30 (1 bytes, data, 1l/0s)
    a0 + 0x34 (1 bytes, data, 1l/0s)
    a0 + 0x36 (1 bytes, data, 1l/0s)
    a0 + 0x40 (1 bytes, data, 1l/0s)
    a0 + 0x54 (4 bytes, float, 2l/0s)
    a0 + 0x58 (4 bytes, float, 2l/0s)
    a0 + 0x5c (4 bytes, float, 2l/0s)
    a0 + 0x70 (4 bytes, float, 3l/0s)
    a0 + 0x74 (4 bytes, float, 3l/0s)
    a0 + 0x78 (4 bytes, float, 3l/0s)
    a0 + 0x7c (4 bytes, float, 3l/0s)
    a0 + 0x80 (4 bytes, float, 2l/0s)
    a0 + 0xf80 (4 bytes, data, 1l/0s)
  calls:
    0x001238a0
    0x00123910
    0x00136160
    0x001610e0
    0x00161c80
    0x00161ce0
    0x00161db0
    0x00161dc0
    0x00161dd0
    0x00161de0
    0x00161f50
    0x00161f90
  consts: lui 0x3f800000, sz 0x68, lui 0x6f0000, mask 0x1, lui 0x447a0000, lui 0x3f000000

0x00196280  0x00196280  confidence=0.80 [HIGH]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x38 (4 bytes, ptr, 1l/0s)
    a0 + 0x88 (4 bytes, data, 1l/0s)
  calls:
    0x001c1ff0
  consts: sz 0x50, lui 0xbf800000, sz 0x80

0x002ffb00  0x002ffb00  confidence=0.80 [HIGH]
  args:
    a0 -> ptr
    a1 -> int
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, data, 1l/0s)
    a0 + 0x10 (4 bytes, ptr, 1l/0s)
    a0 + 0x20 (4 bytes, ptr, 1l/0s)
    a0 + 0x48 (4 bytes, data, 1l/0s)
  calls:
    0x0020aba0
    0x0022c980
    0x0023c840
    0x002e7160
    0x0042d770
    0x00511940
    0x00513210
    0x00545430
    0x0055a8a0
    0x00585c00
    0x00585cb0
    0x0058d880
    (9 indirect jalr)
  consts: sz 0x10, sz 0xc, mask 0x1, lui 0x437f0000, sz 0x18, sz 0x8

0x00339310  0x00339310  confidence=0.80 [HIGH]
  args:
    a0 -> int
    a1 -> ptr
    a2 -> int
    a3 -> int
  return: int
  accesses:
    a1 + 0x0 (2 bytes, data, 1l/0s)
    a1 + 0x2 (2 bytes, data, 1l/0s)
    a1 + 0x4 (2 bytes, data, 1l/0s)
    a1 + 0x18 (4 bytes, data, 1l/0s)
    a1 + 0x24 (4 bytes, ptr, 1l/0s)
    a1 + 0x1e0 (4 bytes, ptr, 1l/0s)
  calls:
    0x00338ff0
    0x00395990
    0x0043b068
  consts: sz 0xe0, sz 0xf0, sz 0x60, sz 0x30, sz 0x150, sz 0x40

0x0038cd30  0x0038cd30  confidence=0.80 [HIGH]
  args:
    a0 -> int
    a1 -> ptr
    a2 -> int
    a3 -> int
  return: ptr
  accesses:
    a1 + 0x0 (4 bytes, ptr, 6l/0s)
    a1 + 0x4 (4 bytes, ptr, 6l/0s)
    a1 + 0x8 (4 bytes, float, 6l/0s)
    a1 + 0x10 (4 bytes, ptr, 2l/0s)
    a1 + 0x14 (4 bytes, ptr, 2l/0s)
    a1 + 0x18 (4 bytes, ptr, 2l/0s)
    a1 + 0x20 (4 bytes, ptr, 2l/0s)
    a1 + 0x24 (4 bytes, ptr, 2l/0s)
    a1 + 0x28 (4 bytes, ptr, 2l/0s)
  calls:
    0x001207c0
    0x0035b0e0
  consts: lui 0x3f800000, sz 0x4, sz 0x8, lui 0x42c80000, lui 0x2edb0000

0x003a03e0  0x003a03e0  confidence=0.80 [HIGH]
  args:
    a0 -> ptr
    a1 -> ptr
    a2 -> ptr
    a3 -> int
  return: ptr
  accesses:
    a0 + 0x0 (4 bytes, ptr, 18l/0s)
    a0 + 0x4 (4 bytes, data, 1l/0s)
    a0 + 0x8 (4 bytes, data, 1l/0s)
    a0 + 0xc (4 bytes, data, 9l/0s)
    a1 + 0x0 (4 bytes, data, 9l/0s)
    a2 + 0x0 (4 bytes, ptr, 12l/3s)
    a2 + 0x4 (4 bytes, float, 2l/1s)
    a2 + 0x8 (4 bytes, float, 1l/1s)
    a2 + 0xc (4 bytes, float, 1l/1s)
    a2 + 0x10 (4 bytes, float, 1l/1s)
    a2 + 0x14 (4 bytes, float, 1l/1s)
    a2 + 0x18 (4 bytes, float, 1l/1s)
    a2 + 0x1c (4 bytes, float, 1l/1s)
  consts: sz 0x4, sz 0x8, sz 0x20
