# Source: ../soft/so_buffers.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_buffers.c
# Total Functions: 6

.text

# Function: __glInitBuffer
# Declared: Line 31 (Source lines: 32-43)
# Address: 0x0db32b50 - 0x0db32b84 (Size: 52 bytes, Frame: 0)
.globl __glInitBuffer
.ent __glInitBuffer
__glInitBuffer:
    # Line 32
    lui	$v0,0xd
    addiu	$v0,$v0,-17592
    addu	$at,$t9,$v0
    # Line 35
    la	$v0,__glMakeCurrentBuffer
    # Line 40
    la	$a2,__glMoveBuffer
    # Line 32
    la	$a1,__glResizeBuffer
    # Line 36
    la	$v1,__glLoseCurrentBuffer
    # Line 40
    sw	$a2,60($a0)
    # Line 39
    sw	$a1,56($a0)
    # Line 38
    sw	$a1,52($a0)
    # Line 36
    sw	$v1,48($a0)
    # Line 43
    jr	$ra
    # Line 35
    sw	$v0,44($a0)
.end __glInitBuffer

# Function: __glMakeCurrentBuffer
# Declared: Line 48 (Source lines: 51-61)
# Address: 0x0db32b84 - 0x0db32bc0 (Size: 60 bytes, Frame: 0)
.globl __glMakeCurrentBuffer
.ent __glMakeCurrentBuffer
__glMakeCurrentBuffer:
    # Line 51
    lw	$v0,0($a1)
    sw	$v0,16($a0)
    # Line 52
    lw	$at,4($a1)
    sw	$at,20($a0)
    # Line 53
    lw	$a3,8($a1)
    sw	$a3,28($a0)
    # Line 54
    lw	$v1,12($a1)
    sw	$v1,40($a0)
    # Line 55
    lw	$v0,3416($a2)
    sw	$v0,8($a0)
    # Line 56
    lw	$at,3412($a2)
    # Line 60
    sw	$a1,68($a0)
    # Line 59
    sw	$a2,0($a0)
    # Line 61
    jr	$ra
    # Line 56
    sw	$at,4($a0)
.end __glMakeCurrentBuffer

# Function: __glLoseCurrentBuffer
# Declared: Line 67 (Source lines: 69-83)
# Address: 0x0db32bc0 - 0x0db32bfc (Size: 60 bytes, Frame: 0)
.globl __glLoseCurrentBuffer
.ent __glLoseCurrentBuffer
__glLoseCurrentBuffer:
    # Line 69
    lw	$at,0($a0)
    bnez	$at,.L0db32bd4
    lw	$a2,68($a0)
    # Line 73
    jr	$ra
    nop
.L0db32bd4:
    # Line 79
    lw	$at,16($a0)
    # Line 76
    sw	$zero,0($a0)
    # Line 79
    sw	$at,0($a2)
    # Line 80
    lw	$a1,20($a0)
    sw	$a1,4($a2)
    # Line 81
    lw	$v1,28($a0)
    sw	$v1,8($a2)
    # Line 82
    lw	$v0,40($a0)
    # Line 83
    jr	$ra
    # Line 82
    sw	$v0,12($a2)
.end __glLoseCurrentBuffer

# Function: __glResizeBuffer
# Declared: Line 88 (Source lines: 89-107)
# Address: 0x0db32bfc - 0x0db32cd4 (Size: 216 bytes, Frame: 208)
.globl __glResizeBuffer
.ent __glResizeBuffer
__glResizeBuffer:
    # Line 92
    mult	$a1,$a2
    # Line 89
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    move	$s0,$a0
    # Line 92
    lw	$v1,24($a0)
    mflo	$a0
    nop
    nop
    multu	$v1,$a0
    sd	$s8,0($sp)
    # Line 89
    move	$s8,$a1
    sd	$gp,8($sp)
    lui	$v0,0xd
    addiu	$v0,$v0,-17764
    # Line 94
    lw	$a4,16($s0)
    # Line 89
    addu	$gp,$t9,$v0
    sd	$s1,16($sp)
    # Line 94
    lw	$at,20($s0)
    # Line 90
    lw	$a5,0($s0)
    # Line 92
    mflo	$s1
    # Line 94
    sltu	$at,$at,$s1
    bnez	$at,.L0db32ca8
    # Line 90
    lw	$a5,31552($a5)
    # Line 94
    bnezl	$a4,.L0db32c88
    ld	$gp,8($sp)
.L0db32c60:
    # Line 98
    lw	$t9,8($a5)
    sd	$a2,32($sp)
    sd	$ra,40($sp)
    jalr	$t9
    move	$a0,$s1
    sw	$v0,16($s0)
    ld	$a2,32($sp)
    ld	$ra,40($sp)
.L0db32c80:
    # Line 101
    sw	$s1,20($s0)
    ld	$gp,8($sp)
.L0db32c88:
    # Line 106
    sw	$a2,8($s0)
    # Line 105
    sw	$s8,28($s0)
    # Line 104
    sw	$s8,4($s0)
    # Line 107
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db32ca8:
    sd	$ra,40($sp)
    # Line 94
    beqz	$a4,.L0db32c60
    sd	$a2,32($sp)
    # Line 96
    lw	$t9,16($a5)
    move	$a0,$a4
    jalr	$t9
    move	$a1,$s1
    sw	$v0,16($s0)
    ld	$a2,32($sp)
    b	.L0db32c80
    ld	$ra,40($sp)
.end __glResizeBuffer

# Function: __glMoveBuffer
# Declared: Line 112 (Source lines: 114-116)
# Address: 0x0db32cd4 - 0x0db32ce0 (Size: 12 bytes, Frame: 0)
.globl __glMoveBuffer
.ent __glMoveBuffer
__glMoveBuffer:
    # Line 115
    sw	$a2,36($a0)
    # Line 116
    jr	$ra
    # Line 114
    sw	$a1,32($a0)
.end __glMoveBuffer

# Function: __glFreeBuffer
# Declared: Line 125 (Source lines: 126-132)
# Address: 0x0db32ce0 - 0x0db32d2c (Size: 76 bytes, Frame: 48)
.globl __glFreeBuffer
.ent __glFreeBuffer
__glFreeBuffer:
    # Line 126
    move	$a3,$a0
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$a4,0($a0)
    lui	$at,0xd
    addiu	$at,$at,-17992
    beqz	$a4,.L0db32d1c
    addu	$gp,$t9,$at
    # Line 128
    lw	$t9,20($a1)
    sd	$a3,8($sp)
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$a4
    ld	$a3,8($sp)
    ld	$ra,16($sp)
.L0db32d1c:
    # Line 131
    sw	$zero,0($a3)
    ld	$gp,0($sp)
    # Line 132
    jr	$ra
    addiu	$sp,$sp,48
.end __glFreeBuffer

