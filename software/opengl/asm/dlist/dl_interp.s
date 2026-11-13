# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/dlist/dl_interp.s
# Category: dlist
# Compiler Options: 
# Total Functions: 4

.text

# Function: __glDoInterpret
# Declared: Line 60 (Source lines: 60-80)
# Address: 0x0dbd86fc - 0x0dbd8780 (Size: 132 bytes, Frame: 32)
.globl __glDoInterpret
.ent __glDoInterpret
__glDoInterpret:
    # Line 60
    addiu	$sp,$sp,-32
    # Line 63
    lw	$t9,0($a0)
    # Line 64
    sw	$ra,28($sp)
    # Line 65
    addiu	$a0,$a0,4
.L0dbd870c:
    # Line 69
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 70
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 71
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 72
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 74
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 75
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 77
    jalr	$t9
    nop
    # Line 78
    addiu	$a0,$v0,4
    # Line 80
    b	.L0dbd870c
    # Line 79
    lw	$t9,0($v0)
.end __glDoInterpret

# Function: __glle_Sentinel
# Declared: Line 96 (Source lines: 96-99)
# Address: 0x0dbd8780 - 0x0dbd8790 (Size: 16 bytes, Frame: 0)
.globl __glle_Sentinel
.ent __glle_Sentinel
__glle_Sentinel:
    # Line 96
    lw	$ra,28($sp)
    # Line 97
    addiu	$sp,$sp,32
    # Line 99
    jr	$ra
    nop
.end __glle_Sentinel

# Function: __glSPInterpret
# Declared: Line 119 (Source lines: 119-138)
# Address: 0x0dbd8790 - 0x0dbd8838 (Size: 168 bytes, Frame: 32)
.globl __glSPInterpret
.ent __glSPInterpret
__glSPInterpret:
    # Line 119
    addiu	$sp,$sp,-32
    # Line 123
    sw	$s0,24($sp)
    # Line 122
    sw	$ra,28($sp)
    # Line 124
    lw	$t9,0($a0)
    # Line 125
    move	$s0,$a0
    # Line 126
    lw	$a0,4($s0)
.L0dbd87a8:
    # Line 129
    jalr	$t9
    nop
    lw	$t9,8($s0)
    lw	$a0,12($s0)
    addiu	$s0,$s0,8
    # Line 130
    jalr	$t9
    nop
    lw	$t9,8($s0)
    lw	$a0,12($s0)
    addiu	$s0,$s0,8
    # Line 131
    jalr	$t9
    nop
    lw	$t9,8($s0)
    lw	$a0,12($s0)
    addiu	$s0,$s0,8
    # Line 132
    jalr	$t9
    nop
    lw	$t9,8($s0)
    lw	$a0,12($s0)
    addiu	$s0,$s0,8
    # Line 134
    jalr	$t9
    nop
    lw	$t9,8($s0)
    lw	$a0,12($s0)
    addiu	$s0,$s0,8
    # Line 135
    jalr	$t9
    nop
    lw	$t9,8($s0)
    lw	$a0,12($s0)
    addiu	$s0,$s0,8
    # Line 137
    jalr	$t9
    nop
    lw	$t9,8($s0)
    lw	$a0,12($s0)
    # Line 138
    b	.L0dbd87a8
    # Line 137
    addiu	$s0,$s0,8
.end __glSPInterpret

# Function: __glsple_Sentinel
# Declared: Line 149 (Source lines: 149-152)
# Address: 0x0dbd8838 - 0x0dbd884c (Size: 20 bytes, Frame: 0)
.globl __glsple_Sentinel
.ent __glsple_Sentinel
__glsple_Sentinel:
    # Line 149
    lw	$ra,28($sp)
    # Line 150
    lw	$s0,24($sp)
    # Line 151
    addiu	$sp,$sp,32
    # Line 152
    jr	$ra
    nop
.end __glsple_Sentinel

