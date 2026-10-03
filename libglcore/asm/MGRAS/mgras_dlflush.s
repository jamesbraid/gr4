# Source: ../MGRAS/mgras_dlflush.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_dlflush.c
# Total Functions: 7

.text

# Function: __glMgrDLFlushInit
# Declared: Line 38 (Source lines: 40-44)
# Address: 0x0da8fdd0 - 0x0da8fde4 (Size: 20 bytes, Frame: 0)
.globl __glMgrDLFlushInit
.ent __glMgrDLFlushInit
__glMgrDLFlushInit:
    # Line 43
    sw	$zero,72($a0)
    # Line 42
    sw	$zero,68($a0)
    # Line 41
    sw	$zero,64($a0)
    # Line 44
    jr	$ra
    # Line 40
    sw	$zero,60($a0)
.end __glMgrDLFlushInit

# Function: __glMgrDLFlushClose
# Declared: Line 52 (Source lines: 53-71)
# Address: 0x0da8fde4 - 0x0da8fe80 (Size: 156 bytes, Frame: 192)
.globl __glMgrDLFlushClose
.ent __glMgrDLFlushClose
__glMgrDLFlushClose:
    # Line 53
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$gp,24($sp)
    sd	$s0,0($sp)
    # Line 56
    lw	$s0,68($a1)
    # Line 53
    lui	$at,0x17
    addiu	$at,$at,-5964
    # Line 56
    beqz	$s0,.L0da8fe38
    # Line 53
    addu	$gp,$t9,$at
    sd	$ra,32($sp)
    # Line 61
    lw	$t9,12($s1)
.L0da8fe1c:
    move	$a0,$s1
    # Line 59
    move	$a1,$s0
    # Line 61
    jalr	$t9
    # Line 60
    lw	$s0,0($s0)
    # Line 61
    bnezl	$s0,.L0da8fe1c
    lw	$t9,12($s1)
    ld	$ra,32($sp)
.L0da8fe38:
    # Line 64
    lw	$s0,72($s8)
    beqz	$s0,.L0da8fe6c
    ld	$s8,16($sp)
    sd	$ra,32($sp)
    ld	$s8,16($sp)
    # Line 69
    lw	$t9,12($s1)
.L0da8fe50:
    move	$a0,$s1
    # Line 67
    move	$a1,$s0
    # Line 69
    jalr	$t9
    # Line 68
    lw	$s0,0($s0)
    # Line 69
    bnezl	$s0,.L0da8fe50
    lw	$t9,12($s1)
    ld	$ra,32($sp)
.L0da8fe6c:
    ld	$gp,24($sp)
    # Line 71
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrDLFlushClose

# Function: flushSegsNow
# Declared: Line 82 (Source lines: 83-139)
# Address: 0x0da8fe80 - 0x0da8ff74 (Size: 244 bytes, Frame: 192)
.ent flushSegsNow
flushSegsNow:
    # Line 83
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 92
    lw	$a2,8($a1)
    # Line 90
    lw	$at,__glCurrentContext
    sd	$a1,0($sp)
    # Line 92
    beqz	$a2,.L0da8ff68
    sd	$at,8($sp)
    sd	$s2,24($sp)
    sd	$s1,32($sp)
    # Line 98
    lw	$s1,8($a2)
    b	.L0da8fed4
    lw	$a1,4($a2)
.L0da8feb4:
    # Line 110
    move	$a1,$a4
.L0da8feb8:
    # Line 113
    lw	$a0,8($a2)
    sll	$a3,$s1,0x2
    addu	$a3,$a3,$a1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a4
    subu	$a0,$a0,$a3
    bgtz	$a0,.L0da8fefc
.L0da8fed4:
    # Line 101
    move	$s2,$a2
    # Line 102
    lw	$a2,0($a2)
    # Line 103
    beqz	$a2,.L0da8ff08
    # Line 122
    move	$a0,$s0
    # Line 106
    lw	$a4,4($a2)
    subu	$a0,$a1,$a4
    blez	$a0,.L0da8feb8
    # Line 109
    sra	$v0,$a0,0x2
    b	.L0da8feb4
    addu	$s1,$v0,$s1
.L0da8fefc:
    # Line 117
    sra	$a3,$a0,0x2
    b	.L0da8fed4
    addu	$s1,$a3,$s1
.L0da8ff08:
    # Line 122
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    sd	$ra,40($sp)
    # Line 121
    li	$a4,8
    # Line 122
    bal __glMgrDLPoolToPtr
    # Line 121
    sw	$a4,32($s0)
    # Line 130
    move	$a2,$s0
    ld	$a0,8($sp)
    # Line 122
    sw	$v0,52($s0)
    # Line 124
    sll	$a5,$s1,0x2
    # Line 130
    # lw $t9, -31636($gp) # &__glMgrDLIoctl
    lui	$a1,0x6d67
    ori	$a1,$a1,0xb
    bal __glMgrDLIoctl
    # Line 124
    sw	$a5,56($s0)
    ld	$s1,0($sp)
    # Line 133
    lw	$ra,12($s1)
    sw	$ra,0($s2)
    ld	$s2,24($sp)
    ld	$ra,40($sp)
    # Line 134
    lw	$a3,8($s1)
    # Line 137
    sw	$zero,0($s1)
    # Line 135
    sw	$zero,8($s1)
    # Line 134
    sw	$a3,12($s1)
    ld	$s1,32($sp)
.L0da8ff68:
    # Line 139
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end flushSegsNow

# Function: implicitFlush
# Declared: Line 146 (Source lines: 147-151)
# Address: 0x0da8ff74 - 0x0da8ffc0 (Size: 76 bytes, Frame: 32)
.ent implicitFlush
implicitFlush:
    # Line 147
    lw	$at,4($a1)
    andi	$at,$at,0x1
    bnez	$at,.L0da8ffa0
    addiu	$sp,$sp,-32
    lw	$a2,20($a0)
    lw	$v0,0($a1)
    li	$v1,1
    sllv	$v1,$v1,$a2
    sltu	$v0,$v0,$v1
    beqz	$v0,.L0da8ffa8
    # Line 150
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
.L0da8ffa0:
    # Line 151
    jr	$ra
    addiu	$sp,$sp,32
.L0da8ffa8:
    sd	$ra,0($sp)
    # Line 150
    addiu	$t9,$t9,-384
    bal __glMgrDLFlushClose
    nop
    b	.L0da8ffa0
    ld	$ra,0($sp)
.end implicitFlush

# Function: __glMgrDLFlushDefer
# Declared: Line 161 (Source lines: 162-174)
# Address: 0x0da8ffc0 - 0x0da90018 (Size: 88 bytes, Frame: 32)
.globl __glMgrDLFlushDefer
.ent __glMgrDLFlushDefer
__glMgrDLFlushDefer:
    # Line 162
    lw	$a3,64($a0)
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0x17
    addiu	$at,$at,-6440
    beqz	$a1,.L0da8fff0
    addu	$gp,$t9,$at
    # Line 168
    ori	$v0,$a3,0x1
    sw	$v0,64($a0)
.L0da8ffe4:
    ld	$gp,0($sp)
    # Line 174
    jr	$ra
    addiu	$sp,$sp,32
.L0da8fff0:
    # Line 172
    addiu	$a1,$a0,60
    sd	$ra,8($sp)
    # lw $t9, -32736($gp) # &sub_0da90000
    # Line 171
    li	$v1,-2
    and	$v1,$a3,$v1
    # Line 172
    addiu	$t9,$t9,-140
    bal __glMgrDLFlushClose
    # Line 171
    sw	$v1,64($a0)
    b	.L0da8ffe4
    ld	$ra,8($sp)
.end __glMgrDLFlushDefer

# Function: __glMgrDLFlushSeg
# Declared: Line 190 (Source lines: 191-217)
# Address: 0x0da90018 - 0x0da900d4 (Size: 188 bytes, Frame: 48)
.globl __glMgrDLFlushSeg
.ent __glMgrDLFlushSeg
__glMgrDLFlushSeg:
    # Line 191
    move	$a4,$a1
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 195
    lw	$a5,__glCurrentContext
    sd	$gp,8($sp)
    li	$at,0x9d54
    addu	$at,$at,$a5
    lbu	$at,0($at)
    # Line 191
    lui	$v0,0x17
    addiu	$v0,$v0,-6528
    # Line 195
    beqz	$at,.L0da900a8
    # Line 191
    addu	$gp,$t9,$v0
    # Line 202
    lw	$v0,72($s0)
    beqzl	$v0,.L0da900b8
    sd	$a4,16($sp)
    # Line 204
    lw	$v1,0($v0)
    sd	$ra,24($sp)
    sw	$v1,72($s0)
.L0da90064:
    # Line 207
    lw	$v1,68($s0)
    sw	$v1,0($v0)
    # Line 208
    sw	$v0,68($s0)
    # Line 210
    lw	$at,0($a4)
    sw	$at,4($v0)
    # Line 211
    lw	$ra,4($a4)
    # Line 215
    addiu	$a1,$s0,60
    # Line 211
    sw	$ra,8($v0)
    # Line 215
    # lw $t9, -32736($gp) # &sub_0da90000
    # Line 213
    lw	$a3,60($s0)
    lw	$a2,4($a4)
    # Line 215
    move	$a0,$s0
    addiu	$t9,$t9,-140
    # Line 213
    addu	$a2,$a2,$a3
    # Line 215
    bal __glMgrDLFlushClose
    # Line 213
    sw	$a2,60($s0)
    ld	$ra,24($sp)
.L0da900a8:
    ld	$gp,8($sp)
    # Line 217
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da900b8:
    # Line 206
    lw	$t9,0($a5)
    move	$a0,$a5
    sd	$ra,24($sp)
    jal	sub_0da90000
    li	$a1,12
    b	.L0da90064
    ld	$a4,16($sp)
.end __glMgrDLFlushSeg

# Function: __glMgrDLFlushPool
# Declared: Line 227 (Source lines: 228-233)
# Address: 0x0da900d4 - 0x0da9010c (Size: 56 bytes, Frame: 32)
.globl __glMgrDLFlushPool
.ent __glMgrDLFlushPool
__glMgrDLFlushPool:
    # Line 228
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0x17
    addiu	$ra,$ra,-6716
    addu	$gp,$t9,$ra
    # Line 232
    # lw $t9, -32736($gp) # &sub_0da90000
    addiu	$t9,$t9,-384
    bal __glMgrDLFlushClose
    addiu	$a1,$a0,60
    # Line 233
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrDLFlushPool

