"""generated from devices/te1/registers.toml by defs-gen - do not edit, change the source
SPDX-License-Identifier: BSD-3-Clause
defs-gen 2
input sha256 a9842ec1f6b06506b2107ec53cb941f3493ff2fb8ec249fe4ac5ddcd1d8488ef
texture engine and texture RAM registers of the Impact graphics subsystem"""

UNIT = 'te1'
REGISTERS = {'texmode2': {'offset': 61824, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txsize': {'offset': 61825, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txtile': {'offset': 61826, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txlod': {'offset': 61827, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txbcolor_rg': {'offset': 61828, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txbcolor_ba': {'offset': 61829, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txbase': {'offset': 61830, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tram_cntrl': {'offset': 61831, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'max_pixel_rg': {'offset': 61832, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'max_pixel_ba': {'offset': 61833, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'mddma_cntrl': {'offset': 61834, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'texrbuffer': {'offset': 61835, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txclampsize': {'offset': 61836, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'established'}, 'te_reset': {'offset': 61838, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txaddr': {'offset': 61840, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txdetail': {'offset': 61842, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'txborder': {'offset': 61843, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'detailscale': {'offset': 61844, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tevers': {'offset': 61846, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_wbuffer': {'offset': 61856, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_mode': {'offset': 61857, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'established'}, 'tl_spec': {'offset': 61858, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'established'}, 'tl_addr': {'offset': 61859, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_mipmap': {'offset': 61860, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_border': {'offset': 61861, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_vidcntrl': {'offset': 61862, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_base': {'offset': 61863, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_s_size': {'offset': 61865, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_t_size': {'offset': 61866, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_s_left': {'offset': 61867, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_t_bottom': {'offset': 61868, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {}
FIELDS = {'texmode2': {'mipmap_active_copy': (19, 19), 'no_border': (16, 16), 'clamp_is_gl_clamp': (14, 14), 'r_clamp': (13, 13), 't_clamp': (12, 12), 's_clamp': (11, 11), 'min_within_level': (8, 8), 'mag_linear': (7, 7), 'min_between_levels': (6, 6), 'mipmap_active': (5, 5), 'multibuffer_hint': (4, 4), 'depth_code': (3, 2)}, 'txsize': {'depth_log2': (22, 19), 'detail_level_code': (18, 16), 'height_log2_copy': (15, 12), 'width_log2_copy': (11, 8), 'height_log2': (7, 4), 'width_log2': (3, 0)}, 'txtile': {}, 'txlod': {'min_lod_64ths': (25, 16), 'context_bits': (15, 10), 'last_level': (3, 0)}, 'txbcolor_rg': {'green': (23, 12), 'red': (11, 0)}, 'txbcolor_ba': {'alpha': (23, 12), 'blue': (11, 0)}, 'txbase': {'base_block': (7, 0)}, 'tram_cntrl': {}, 'max_pixel_rg': {}, 'max_pixel_ba': {}, 'mddma_cntrl': {'depth_term': (29, 26), 'block_pair_log2': (25, 23), 'size3_log2': (17, 14), 'size2_log2': (13, 10), 'size1_log2': (9, 6), 'size0_log2': (5, 2)}, 'texrbuffer': {'buffer': (0, 0)}, 'txclampsize': {'clamp_width': (25, 13), 'clamp_height': (12, 0)}, 'te_reset': {}, 'txaddr': {'index': (4, 0)}, 'txdetail': {'block': (8, 0)}, 'txborder': {'block': (7, 0)}, 'detailscale': {'value': (5, 0)}, 'tevers': {}, 'tl_wbuffer': {'buffer': (0, 0)}, 'tl_mode': {'fixed': (18, 16), 'bit14': (14, 14), 'enables': (12, 9), 'flag8': (8, 8), 'component_depth': (6, 5), 'cell_slot': (4, 3), 'components_minus_1': (2, 1)}, 'tl_spec': {'log2_height': (11, 8), 'log2_width': (7, 4), 'level': (3, 0)}, 'tl_addr': {'index': (3, 0)}, 'tl_mipmap': {'flag': (8, 8), 'block': (7, 0)}, 'tl_border': {'block': (7, 0)}, 'tl_vidcntrl': {}, 'tl_base': {'base_block': (7, 0)}, 'tl_s_size': {}, 'tl_t_size': {}, 'tl_s_left': {}, 'tl_t_bottom': {}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'TE_REV_B_1TRAM_CHECKSUM': {'value': 3187427580, 'count': 1, 'stride': 1}, 'TE_REV_B_4TRAM_CHECKSUM': {'value': 9499545600, 'count': 1, 'stride': 1}, 'TE_REV_D_CHECKSUM': {'value': 11449455120, 'count': 1, 'stride': 1}, 'TRAM_BLOCKS_PER_PATH': {'value': 256, 'count': 1, 'stride': 1}, 'TRAM_BLOCK_SIZE_SHIFT': {'value': 12, 'count': 1, 'stride': 1}, 'TRAM_REV_WORD0': {'value': 469832705, 'count': 1, 'stride': 1}, 'TRAM_REV_WORD0_HIGH_HALF': {'value': 7169, 'count': 1, 'stride': 1}, 'TRAM_REV_WORD0_LOW_HALF': {'value': 5121, 'count': 1, 'stride': 1}, 'TRAM_REV_WORD1': {'value': 201327616, 'count': 1, 'stride': 1}, 'TRAM_TEXTURE_BYTES': {'value': 4194304, 'count': 1, 'stride': 1}}
TESTS = [('tl_mode', 216614, {'components_minus_1': 3, 'cell_slot': 0, 'component_depth': 1, 'flag8': 0, 'enables': 7, 'bit14': 1, 'fixed': 3}), ('tl_mode', 219686, {'components_minus_1': 3, 'cell_slot': 0, 'component_depth': 1, 'flag8': 0, 'enables': 13, 'bit14': 1, 'fixed': 3})]


def decode(name, value):
    """Field name -> value for a register or word."""
    return {f: (value >> lo) & ((1 << (hi - lo + 1)) - 1) for f, (hi, lo) in FIELDS[name].items()}


def encode(name, **fields):
    v = 0
    for f, x in fields.items():
        hi, lo = FIELDS[name][f]
        if x >> (hi - lo + 1):
            raise ValueError('%s.%s: %d does not fit' % (name, f, x))
        v |= x << lo
    return v


def describe(name, value):
    """decode, with enum labels where the field has an enum."""
    out = {}
    for f, x in decode(name, value).items():
        e = ENUMS.get(FIELD_ENUM.get('%s.%s' % (name, f)))
        out[f] = e.get(x, x) if e else x
    return out


def selftest():
    for name, value, expect in TESTS:
        got = decode(name, value)
        for f, want in expect.items():
            assert got[f] == want, (name, hex(value), f, got[f], want)
    return len(TESTS)


if __name__ == '__main__':
    print('%s: %d vectors ok' % (UNIT, selftest()))
