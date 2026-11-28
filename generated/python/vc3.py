"""generated from devices/vc3/registers.toml by defs-gen - do not edit, change the source
SPDX-License-Identifier: BSD-3-Clause
defs-gen 4
input sha256 dcdab93f298e3ff44eb34600bc479403a89099c3719578747f7ab0a77bc24375
VC3 video controller registers of the Impact graphics subsystem"""

UNIT = 'vc3'
REGISTERS = {'index': {'offset': 8, 'access': 'rw', 'width': 8, 'count': 1, 'stride': 1, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'index_data': {'offset': 56, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'data': {'offset': 176, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 2, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'ram64': {'offset': 384, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'ram': {'offset': 400, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 2, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'vid_ep': {'offset': 0, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'curs_ep': {'offset': 1, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'curs_x': {'offset': 2, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'curs_y': {'offset': 3, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'did_ep1': {'offset': 4, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'did_ep2': {'offset': 5, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'scan_length': {'offset': 6, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'ram_addr': {'offset': 7, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'vt_frame_tbl_ptr': {'offset': 8, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'vt_line_seq_ptr': {'offset': 9, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'vt_lines_run': {'offset': 10, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'vert_line_count': {'offset': 11, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'curs_tbl_ptr': {'offset': 12, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'working_curs_y': {'offset': 13, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'cur_cursor_x': {'offset': 14, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'unused': {'offset': 15, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'inferred'}, 'did_frametab1': {'offset': 16, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'did_linetab1': {'offset': 17, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'did_frametab2': {'offset': 18, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'did_linetab2': {'offset': 19, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'curs_control': {'offset': 29, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'display_control': {'offset': 30, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}, 'config': {'offset': 31, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'vc3_index', 'reset': 'unknown', 'grade': 'established'}}
WORDS = {}
FIELDS = {'index': {}, 'index_data': {'register': (31, 24), 'value': (23, 8)}, 'data': {}, 'ram64': {}, 'ram': {}, 'vid_ep': {}, 'curs_ep': {}, 'curs_x': {}, 'curs_y': {}, 'did_ep1': {}, 'did_ep2': {}, 'scan_length': {}, 'ram_addr': {}, 'vt_frame_tbl_ptr': {}, 'vt_line_seq_ptr': {}, 'vt_lines_run': {}, 'vert_line_count': {}, 'curs_tbl_ptr': {}, 'working_curs_y': {}, 'cur_cursor_x': {}, 'unused': {}, 'did_frametab1': {}, 'did_linetab1': {}, 'did_frametab2': {}, 'did_linetab2': {}, 'curs_control': {'glyph_64': (3, 3), 'crosshair': (2, 2), 'display_enable': (1, 1), 'function_enable': (0, 0)}, 'display_control': {'odd_field_timing': (10, 10), 'odd_field': (9, 9), 'field_only': (8, 8), 'interlaced': (7, 7), 'genlock': (6, 6), 'gensync': (5, 5), 'did_enable2': (4, 4), 'did_enable1': (3, 3), 'video_enable': (2, 2), 'blackout': (1, 1), 'retrace_interrupt': (0, 0)}, 'config': {'revision': (7, 6), 'timing_error': (5, 5), 'did_error2': (4, 4), 'did_error1': (3, 3), 'cursor_error': (2, 2), 'slow_clock': (1, 1), 'unreset': (0, 0)}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'CURS_HOTSPOT_OFFSET': {'value': 31, 'count': 1, 'stride': 1}, 'DCB_DEVICE': {'value': 8, 'count': 1, 'stride': 1}, 'SRAM_CURS_GLYPH': {'value': 1024, 'count': 1, 'stride': 1}, 'SRAM_DID_FRAMETAB1': {'value': 1280, 'count': 1, 'stride': 1}, 'SRAM_DID_FRAME_MAX_WORDS': {'value': 1086, 'count': 1, 'stride': 1}, 'SRAM_END': {'value': 32768, 'count': 1, 'stride': 1}, 'SRAM_FRAMETAB': {'value': 896, 'count': 1, 'stride': 1}, 'SRAM_FRAMETAB_WORDS': {'value': 128, 'count': 1, 'stride': 1}, 'SRAM_LINETAB': {'value': 0, 'count': 1, 'stride': 1}, 'SRAM_LINETAB_WORDS': {'value': 768, 'count': 1, 'stride': 1}}
TESTS = [('index_data', 486539520, {'register': 29, 'value': 1}), ('curs_control', 3, {'function_enable': 1, 'display_enable': 1, 'crosshair': 0, 'glyph_64': 0}), ('display_control', 30, {'retrace_interrupt': 0, 'blackout': 1, 'video_enable': 1, 'did_enable1': 1, 'did_enable2': 1, 'gensync': 0, 'genlock': 0}), ('config', 1, {'unreset': 1, 'slow_clock': 0, 'revision': 0})]


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
