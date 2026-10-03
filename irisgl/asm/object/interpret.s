# Source: /xlv55/kudzu-apr12/work/gfx/lib/libgl/object/interpret.s
# Category: object
# Compiler Options: 
# Total Functions: 2

.text

# Function: gl_interpret
# Declared: Line 45 (Source lines: 45-81)
# Address: 0x0f0d8d50 - 0x0f0d8e04 (Size: 180 bytes, Frame: 0)
.globl gl_interpret
.ent gl_interpret
gl_interpret:
    # Line 45
    addiu	$sp,$sp,-64
    # Line 46
    sw	$ra,40($sp)
    # Line 63
    lw	$t9,0($a0)
    # Line 64
    move	$v0,$a0
.L0f0d8d60:
    # Line 67
    jalr	$t9
    addiu	$a0,$v0,4
    lw	$t9,0($v0)
    move	$a1,$s0
    # Line 68
    jalr	$t9
    addiu	$a0,$v0,4
    lw	$t9,0($v0)
    move	$a1,$s0
    # Line 69
    jalr	$t9
    addiu	$a0,$v0,4
    lw	$t9,0($v0)
    move	$a1,$s0
    # Line 70
    jalr	$t9
    addiu	$a0,$v0,4
    lw	$t9,0($v0)
    move	$a1,$s0
    # Line 71
    jalr	$t9
    addiu	$a0,$v0,4
    lw	$t9,0($v0)
    move	$a1,$s0
    # Line 72
    jalr	$t9
    addiu	$a0,$v0,4
    lw	$t9,0($v0)
    move	$a1,$s0
    # Line 73
    jalr	$t9
    addiu	$a0,$v0,4
    lw	$t9,0($v0)
    move	$a1,$s0
    # Line 74
    jalr	$t9
    addiu	$a0,$v0,4
    lw	$t9,0($v0)
    move	$a1,$s0
    # Line 75
    jalr	$t9
    addiu	$a0,$v0,4
    lw	$t9,0($v0)
    move	$a1,$s0
    # Line 77
    jalr	$t9
    # Line 78
    addiu	$a0,$v0,4
    # Line 79
    lw	$t9,0($v0)
    # Line 80
    b	.L0f0d8d60
    # Line 81
    move	$a1,$s0
.end gl_interpret

# Function: gl_n_retsym
# Declared: Line 106 (Source lines: 106-114)
# Address: 0x0f0d8e04 - 0x0f0d8e14 (Size: 16 bytes, Frame: 0)
.globl gl_n_retsym
.ent gl_n_retsym
gl_n_retsym:
    # Line 106
    lw	$ra,40($sp)
    # Line 113
    addiu	$sp,$sp,64
    # Line 114
    jr	$ra
    nop
.end gl_n_retsym

