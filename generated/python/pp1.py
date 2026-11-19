"""generated from devices/pp1/registers.toml by defs-gen - do not edit, change the source
SPDX-License-Identifier: BSD-3-Clause
defs-gen 2
input sha256 e1a18a4b96ad72e5bdae304875b0f08c335204cf50091e4966771a1c1d3a89c5
display read buffer registers of the Impact graphics"""

UNIT = 'pp1'
REGISTERS = {'pixel_command': {'offset': 61792, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'blend_factor': {'offset': 61797, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'stencil_mode': {'offset': 61798, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'stencil_mask': {'offset': 61799, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'depth_mode': {'offset': 61800, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'alpha_test_mode': {'offset': 61801, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'accumulation_mode': {'offset': 61802, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'blend_color_rg': {'offset': 61803, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'blend_color_ba': {'offset': 61804, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'drb_pointers': {'offset': 61805, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'drb_size': {'offset': 61806, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tag_mode': {'offset': 61807, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tag_data_red': {'offset': 61808, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tag_data_green': {'offset': 61809, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tag_data_blue': {'offset': 61810, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tag_data_alpha': {'offset': 61811, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'tag_data_depth': {'offset': 61812, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'pixel_coordinate': {'offset': 61813, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'pixel_color_red': {'offset': 61814, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'pixel_color_green': {'offset': 61815, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'pixel_color_blue': {'offset': 61816, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'pixel_color_alpha': {'offset': 61817, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'pixel_color_accumulation': {'offset': 61818, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'window_mode': {'offset': 61819, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'main_buffer_select': {'offset': 61822, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'overlay_buffer_select': {'offset': 61823, 'access': 'w', 'width': 32, 'count': 1, 'stride': 1, 'space': 'pp1_regs', 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {}
FIELDS = {'pixel_command': {}, 'blend_factor': {}, 'stencil_mode': {}, 'stencil_mask': {}, 'depth_mode': {}, 'alpha_test_mode': {}, 'accumulation_mode': {}, 'blend_color_rg': {}, 'blend_color_ba': {}, 'drb_pointers': {'page_b': (19, 10), 'page_a': (9, 0)}, 'drb_size': {'auto_flush_off': (10, 10), 'dma_line_count_mask': (9, 8), 'raster_engines_minus_1': (7, 6), 'tile_columns_36bit': (5, 2), 'tile_columns_9bit': (1, 0)}, 'tag_mode': {}, 'tag_data_red': {}, 'tag_data_green': {}, 'tag_data_blue': {}, 'tag_data_alpha': {}, 'tag_data_depth': {}, 'pixel_coordinate': {}, 'pixel_color_red': {}, 'pixel_color_green': {}, 'pixel_color_blue': {}, 'pixel_color_alpha': {}, 'pixel_color_accumulation': {}, 'window_mode': {}, 'main_buffer_select': {}, 'overlay_buffer_select': {}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'DRB_POINTERS_COMMAND_WORD': {'value': 1666308, 'count': 1, 'stride': 1}, 'DRB_SIZE_COMMAND_WORD': {'value': 1666564, 'count': 1, 'stride': 1}}
TESTS = [('drb_pointers', 65984, {'page_a': 448, 'page_b': 64}), ('drb_pointers', 229600, {'page_a': 224, 'page_b': 224}), ('drb_pointers', 590400, {'page_a': 576, 'page_b': 576}), ('drb_pointers', 819776, {'page_a': 576, 'page_b': 800}), ('drb_size', 602, {'tile_columns_9bit': 2, 'tile_columns_36bit': 6, 'raster_engines_minus_1': 1, 'dma_line_count_mask': 2, 'auto_flush_off': 0}), ('drb_size', 794, {'tile_columns_9bit': 2, 'tile_columns_36bit': 6, 'raster_engines_minus_1': 0, 'dma_line_count_mask': 3, 'auto_flush_off': 0})]


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
