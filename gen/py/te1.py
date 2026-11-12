"""generated from defs/te1.toml by defs-gen - do not edit, change the source
texture RAM revision words of the Impact graphics subsystem"""

UNIT = 'te1'
REGISTERS = {'tx_mipmap': {'offset': 61841, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'established'}, 'tl_mode': {'offset': 61857, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'established'}, 'tl_spec': {'offset': 61858, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'established'}, 'tl_addr': {'offset': 61859, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_mipmap': {'offset': 61860, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tl_border': {'offset': 61861, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'te1_regs', 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {}
FIELDS = {'tx_mipmap': {'bank': (15, 8), 'page': (7, 0)}, 'tl_mode': {'fixed': (18, 16), 'bit14': (14, 14), 'enables': (12, 9), 'flag8': (8, 8), 'component_depth': (6, 5), 'cell_slot': (4, 3), 'components_minus_1': (2, 1)}, 'tl_spec': {}, 'tl_addr': {}, 'tl_mipmap': {}, 'tl_border': {}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'TRAM_REV_WORD0': {'value': 469832705, 'count': 1, 'stride': 1}, 'TRAM_REV_WORD0_HIGH_HALF': {'value': 7169, 'count': 1, 'stride': 1}, 'TRAM_REV_WORD0_LOW_HALF': {'value': 5121, 'count': 1, 'stride': 1}, 'TRAM_REV_WORD1': {'value': 201327616, 'count': 1, 'stride': 1}}
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
