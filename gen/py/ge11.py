"""generated from defs/ge11.toml by defs-gen - do not edit, change the source
geometry engine control registers for the Impact graphics subsystem"""

UNIT = 'ge11'
REGISTERS = {'exec_control': {'offset': 53248, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'breakpoint_pc': {'offset': 53249, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ramscan_control': {'offset': 53250, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'wsync_fifo_control': {'offset': 53251, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'diag_select': {'offset': 53252, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'enable_mask': {'offset': 53253, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ofifo_tag_config': {'offset': 53254, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ucode_error': {'offset': 53255, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ofifo0_a_status': {'offset': 53256, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ofifo0_b_status': {'offset': 53257, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ofifo1_a_status': {'offset': 53258, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ofifo1_b_status': {'offset': 53259, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ofifo2_a_status': {'offset': 53260, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ofifo2_b_status': {'offset': 53261, 'access': 'r', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}, 'ofifo_control': {'offset': 53262, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 1, 'space': 'ge11_regs', 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {}
FIELDS = {'exec_control': {'reset': (7, 7), 'single_step': (6, 6), 'breakpoint_enable': (5, 5), 'latency3': (4, 4), 'go': (0, 0)}, 'breakpoint_pc': {}, 'ramscan_control': {'scan_mode': (18, 18), 'fast_mode': (17, 17)}, 'wsync_fifo_control': {'watermark': (7, 4), 'disable': (0, 0)}, 'diag_select': {'read_enable': (18, 18), 'input_select': (8, 8), 'breakpoint_stall': (5, 5)}, 'enable_mask': {}, 'ofifo_tag_config': {}, 'ucode_error': {}, 'ofifo0_a_status': {}, 'ofifo0_b_status': {}, 'ofifo1_a_status': {}, 'ofifo1_b_status': {}, 'ofifo2_a_status': {}, 'ofifo2_b_status': {}, 'ofifo_control': {'route_to_host_if': (8, 8), 'watermark': (7, 1), 'diag_mode': (0, 0)}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'OFIFO_WATERMARK_DEFAULT': {'value': 56, 'count': 1, 'stride': 1}}
TESTS = []


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
