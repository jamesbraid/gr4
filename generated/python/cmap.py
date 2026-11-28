"""generated from devices/cmap/registers.toml by defs-gen - do not edit, change the source
SPDX-License-Identifier: BSD-3-Clause
defs-gen 4
input sha256 ded8e67cb35c81337325ab34e6f92ace2d9647686f1d95349deb829ab921207c
CMAP colour map chips of the Impact graphics subsystem"""

UNIT = 'cmap'
REGISTERS = {'addr_lo': {'offset': 8, 'access': 'rw', 'width': 8, 'count': 1, 'stride': 1, 'space': None, 'reset': 'unknown', 'grade': 'inferred'}, 'addr': {'offset': 48, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 2, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'addr_hi': {'offset': 136, 'access': 'rw', 'width': 8, 'count': 1, 'stride': 1, 'space': None, 'reset': 'unknown', 'grade': 'inferred'}, 'pal': {'offset': 280, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'cmd': {'offset': 392, 'access': 'rw', 'width': 8, 'count': 1, 'stride': 1, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'status': {'offset': 520, 'access': 'r', 'width': 8, 'count': 1, 'stride': 1, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'rev': {'offset': 776, 'access': 'r', 'width': 8, 'count': 1, 'stride': 1, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'reserved': {'offset': 904, 'access': 'rw', 'width': 8, 'count': 1, 'stride': 1, 'space': None, 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {}
FIELDS = {'addr_lo': {}, 'addr': {'entry': (12, 0)}, 'addr_hi': {}, 'pal': {'red': (31, 24), 'green': (23, 16), 'blue': (15, 8)}, 'cmd': {}, 'status': {'ready': (3, 3), 'busy': (2, 2)}, 'rev': {'revision': (2, 0)}, 'reserved': {}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'CMD_ENABLE_TIMING_PIPES': {'value': 3, 'count': 1, 'stride': 1}, 'DCB_DEVICE_ALL': {'value': 5, 'count': 1, 'stride': 1}, 'DCB_DEVICE_CMAP0': {'value': 6, 'count': 1, 'stride': 1}, 'DCB_DEVICE_CMAP1': {'value': 7, 'count': 1, 'stride': 1}, 'ENTRIES': {'value': 8192, 'count': 1, 'stride': 1}, 'ENTRY_BITS': {'value': 24, 'count': 1, 'stride': 1}, 'REVISION_MAX_EXPECTED': {'value': 4, 'count': 1, 'stride': 1}, 'REVISION_MIN': {'value': 2, 'count': 1, 'stride': 1}}
TESTS = [('pal', 305419776, {'red': 18, 'green': 52, 'blue': 86})]


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
