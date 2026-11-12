"""generated from defs/pp1.toml by defs-gen - do not edit, change the source
display read buffer registers of the Impact graphics"""

UNIT = 'pp1'
REGISTERS = {'drb_pointers': {'offset': 61805, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'drb_size': {'offset': 61806, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {}
FIELDS = {'drb_pointers': {'page_b': (19, 10), 'page_a': (9, 0)}, 'drb_size': {'auto_flush_off': (10, 10), 'dma_line_count_mask': (9, 8), 'raster_engines_minus_1': (7, 6), 'xtiles36': (5, 2), 'xtiles9': (1, 0)}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'DRB_POINTERS_COMMAND_WORD': {'value': 1666308, 'count': 1, 'stride': 1}, 'DRB_SIZE_COMMAND_WORD': {'value': 1666564, 'count': 1, 'stride': 1}}
TESTS = [('drb_pointers', 65984, {'page_a': 448, 'page_b': 64}), ('drb_pointers', 229600, {'page_a': 224, 'page_b': 224}), ('drb_pointers', 590400, {'page_a': 576, 'page_b': 576}), ('drb_pointers', 819776, {'page_a': 576, 'page_b': 800}), ('drb_size', 602, {'xtiles9': 2, 'xtiles36': 6, 'raster_engines_minus_1': 1, 'dma_line_count_mask': 2, 'auto_flush_off': 0}), ('drb_size', 794, {'xtiles9': 2, 'xtiles36': 6, 'raster_engines_minus_1': 0, 'dma_line_count_mask': 3, 'auto_flush_off': 0})]


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
