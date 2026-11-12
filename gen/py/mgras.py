"""generated from defs/mgras.toml by defs-gen - do not edit, change the source
board-level words of the Impact graphics subsystem"""

UNIT = 'mgras'
REGISTERS = {'dcb_ctrl': {'offset': 40960, 'access': 'rw', 'width': 32, 'count': 12, 'stride': 4, 'space': None, 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {'BDVERS1': {'width': 32, 'grade': 'inferred'}, 'BDVERS2': {'width': 32, 'grade': 'established'}, 'CMAP_RA_STATUS': {'width': 8, 'grade': 'inferred'}, 'DCB_ADDR': {'width': 32, 'grade': 'inferred'}, 'GE_REVISION': {'width': 32, 'grade': 'inferred'}, 'GIO_ID': {'width': 32, 'grade': 'inferred'}, 'HQ4_NUMERIC_PACKET': {'width': 64, 'grade': 'established'}, 'HQ_REVISION': {'width': 32, 'grade': 'inferred'}, 'MCO_ID': {'width': 32, 'grade': 'established'}, 'MCO_INDEX': {'width': 32, 'grade': 'established'}, 'MONITOR_ID': {'width': 8, 'grade': 'inferred'}, 'PP1_REVISION': {'width': 32, 'grade': 'inferred'}, 'RE4_REVISION': {'width': 32, 'grade': 'inferred'}, 'VC3_REVISION': {'width': 16, 'grade': 'inferred'}}
FIELDS = {'dcb_ctrl': {'cs_setup': (12, 10), 'cs_hold': (8, 6), 'cs_width': (4, 2), 'async_ack': (1, 1), 'sync_ack': (0, 0)}, 'BDVERS1': {'rb_revision': (30, 28), 'tram_field_1': (27, 26), 'tram_field_0': (25, 24)}, 'BDVERS2': {'product': (30, 29), 'mgras_revision': (28, 26), 'ge_count': (25, 24)}, 'CMAP_RA_STATUS': {'video_option': (7, 7), 'ra_revision': (6, 4), 'cmap_revision': (2, 0)}, 'DCB_ADDR': {'device': (14, 10), 'crs': (9, 7), 'endata_pack': (6, 6), 'encrs_inc': (5, 5), 'data_width': (4, 3)}, 'GE_REVISION': {'ge_revision': (7, 0)}, 'GIO_ID': {'product': (31, 8), 'revision': (7, 4)}, 'HQ4_NUMERIC_PACKET': {'execute': (50, 50), 'selector': (47, 40), 'payload': (31, 0)}, 'HQ_REVISION': {'hq_revision': (31, 28)}, 'MCO_ID': {'board': (7, 4), 'revision': (3, 0)}, 'MCO_INDEX': {'bank': (7, 4), 'port': (3, 0)}, 'MONITOR_ID': {'monitor': (7, 4)}, 'PP1_REVISION': {'pp1_revision': (2, 0)}, 'RE4_REVISION': {'re4_revision': (7, 4)}, 'VC3_REVISION': {'vc3_revision': (7, 6)}}
ENUMS = {'BDVERS2.product': {0: 'indigo2_gio', 1: 'solid_impact', 2: 'single_ge_textured', 3: 'two_ge'}, 'CMAP_RA_STATUS.video_option': {0: 'present', 1: 'absent'}, 'DCB_ADDR.data_width': {0: 'four_bytes', 1: 'one_byte', 2: 'two_bytes', 3: 'three_bytes'}, 'MCO_ID.board': {4: 'present_single_read', 10: 'present'}, 'MCO_INDEX.bank': {0: 'overlay_dac_a', 1: 'overlay_dac_b', 2: 'true_colour_dac_a', 3: 'true_colour_dac_b', 8: 'control_1', 9: 'control_2', 10: 'control_3'}, 'MONITOR_ID.monitor': {0: 'unidentified', 15: 'assumed_19_inch'}}
FIELD_ENUM = {'BDVERS2.product': 'BDVERS2.product', 'CMAP_RA_STATUS.video_option': 'CMAP_RA_STATUS.video_option', 'DCB_ADDR.data_width': 'DCB_ADDR.data_width', 'MCO_ID.board': 'MCO_ID.board', 'MCO_INDEX.bank': 'MCO_INDEX.bank', 'MONITOR_ID.monitor': 'MONITOR_ID.monitor'}
CONSTANTS = {'ADV473_PORT_ADDR': {'value': 0, 'count': 1, 'stride': 1}, 'ADV473_PORT_COMMAND': {'value': 6, 'count': 1, 'stride': 1}, 'ADV473_PORT_MASK': {'value': 2, 'count': 1, 'stride': 1}, 'ADV473_PORT_PALETTE': {'value': 1, 'count': 1, 'stride': 1}, 'ADV7162_BLANK_VALUE': {'value': 0, 'count': 1, 'stride': 1}, 'ADV7162_ID_VALUE': {'value': 121, 'count': 1, 'stride': 1}, 'ADV7162_PORT_DATA': {'value': 2, 'count': 1, 'stride': 1}, 'ADV7162_PORT_PALETTE': {'value': 1, 'count': 1, 'stride': 1}, 'ADV7162_PORT_POINTER': {'value': 0, 'count': 1, 'stride': 1}, 'ADV7162_PORT_PROBE': {'value': 3, 'count': 1, 'stride': 1}, 'ADV7162_REG_BLANK': {'value': 4, 'count': 1, 'stride': 1}, 'ADV7162_REG_ID': {'value': 3, 'count': 1, 'stride': 1}, 'ADV7162_RESTORE_VALUE': {'value': 65535, 'count': 1, 'stride': 1}, 'CMAP_ENTRIES': {'value': 8192, 'count': 1, 'stride': 1}, 'HQ4_NORMAL_FIFO_OFFSET': {'value': 132096, 'count': 1, 'stride': 1}, 'MCO_BANK_BASE_CH0': {'value': 0, 'count': 1, 'stride': 1}, 'MCO_BANK_BASE_CH1': {'value': 32, 'count': 1, 'stride': 1}, 'MCO_BANK_BASE_CH2': {'value': 48, 'count': 1, 'stride': 1}, 'MCO_BANK_BASE_CH3': {'value': 0, 'count': 1, 'stride': 1}, 'MCO_BANK_BASE_CH4': {'value': 16, 'count': 1, 'stride': 1}, 'MCO_DAC_LUT_ENTRIES': {'value': 256, 'count': 1, 'stride': 1}, 'MCO_DAC_LUT_ENTRY_BITS': {'value': 10, 'count': 1, 'stride': 1}, 'MCO_ID_ABSENT': {'value': 255, 'count': 1, 'stride': 1}, 'MCO_ID_PROBE_SINGLE_READ_OFFSET': {'value': 458760, 'count': 1, 'stride': 1}, 'MCO_ID_PROBE_SINGLE_TIMING_SELECT_FIRST': {'value': 20, 'count': 1, 'stride': 1}, 'MCO_ID_PROBE_SINGLE_TIMING_SELECT_SECOND': {'value': 0, 'count': 1, 'stride': 1}, 'MCO_ID_PROBE_SINGLE_WRITE_OFFSET': {'value': 470024, 'count': 1, 'stride': 1}, 'MCO_ID_PROBE_WRITE_FIRST': {'value': 255, 'count': 1, 'stride': 1}, 'MCO_ID_PROBE_WRITE_SECOND': {'value': 0, 'count': 1, 'stride': 1}, 'MCO_ID_SPECIAL_PRESENT': {'value': 1, 'count': 1, 'stride': 1}, 'MCO_LOAD_CTRL_FIRST': {'value': 254, 'count': 1, 'stride': 1}, 'MCO_LOAD_CTRL_SECOND': {'value': 1, 'count': 1, 'stride': 1}, 'MCO_LOAD_IMAGE_BYTES': {'value': 63112, 'count': 1, 'stride': 1}, 'MCO_LOAD_PAD_BYTES': {'value': 20, 'count': 1, 'stride': 1}, 'MCO_LOAD_STATUS_AFTER_SECOND': {'value': 6, 'count': 1, 'stride': 1}, 'MCO_LOAD_STATUS_FIRST': {'value': 0, 'count': 1, 'stride': 1}, 'MCO_SEL_FPGA_CTRL': {'value': 1, 'count': 1, 'stride': 1}, 'MCO_SEL_FPGA_DATA': {'value': 0, 'count': 1, 'stride': 1}, 'MCO_SEL_TIMING_DATA': {'value': 5, 'count': 1, 'stride': 1}, 'MCO_SEL_TIMING_RAM': {'value': 7, 'count': 1, 'stride': 1}, 'MCO_SEL_TIMING_REG': {'value': 4, 'count': 1, 'stride': 1}}
TESTS = [('dcb_ctrl', 792, {'sync_ack': 0, 'async_ack': 0, 'cs_width': 6, 'cs_hold': 4, 'cs_setup': 0}), ('dcb_ctrl', 4236, {'sync_ack': 0, 'async_ack': 0, 'cs_width': 3, 'cs_hold': 2, 'cs_setup': 4}), ('dcb_ctrl', 12684, {'cs_width': 3, 'cs_hold': 6, 'cs_setup': 4}), ('dcb_ctrl', 25369, {'sync_ack': 1, 'async_ack': 0, 'cs_width': 6, 'cs_hold': 4, 'cs_setup': 0}), ('dcb_ctrl', 25370, {'sync_ack': 0, 'async_ack': 1, 'cs_width': 6, 'cs_hold': 4, 'cs_setup': 0}), ('GIO_ID', 328080, {'revision': 9, 'product': 1281}), ('MCO_INDEX', 144, {'port': 0, 'bank': 9})]


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
