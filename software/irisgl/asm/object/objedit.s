# Source: ../object/objedit.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/objedit.c -o objedit.T
# Total Functions: 3

.text

# Function: gl_g_editobj
# Declared: Line 20 (Source lines: 22-58)
# Address: 0x0f0f5e28 - 0x0f0f5f18 (Size: 240 bytes, Frame: 48)
.globl gl_g_editobj
.ent gl_g_editobj
gl_g_editobj:
    # Line 22
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-11232 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    bnez	$at,.L0f0f5ec8
    move	$s0,$a0
    # Line 24
    la	$t9,gl_findhash
.L0f0f5e58:
    move	$a0,$s0
    jalr	$t9
    li	$a1,-1
    la	$a0,gl_openobjhdr
    beqz	$v0,.L0f0f5edc
    sw	$v0,0($a0)
    lw	$v1,28($v0)
    beqz	$v1,.L0f0f5edc
    # Line 33
    la	$t9,gl_SetImmediateMode
    jalr	$t9
    move	$a0,$zero
    la	$a0,gl_openobjhdr
    # Line 35
    lw	$a0,0($a0)
    la	$ra,gl_currentpos
    lw	$a1,20($a0)
    # Line 38
    la	$a3,gl_replacemode
    # Line 37
    la	$a2,gl_openobj
    # Line 35
    sw	$a1,0($ra)
    # Line 36
    la	$a1,gl_currentend
    ld	$gp,0($sp)
    lw	$a0,24($a0)
    # Line 38
    sw	$zero,0($a3)
    # Line 37
    sw	$s0,0($a2)
    # Line 58
    ld	$ra,16($sp)
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 36
    sw	$a0,0($a1)
.L0f0f5ec8:
    # Line 23
    la	$t9,__GLcloseobj
    jalr	$t9
    nop
    b	.L0f0f5e58
    # Line 24
    la	$t9,gl_findhash
.L0f0f5edc:
    # Line 26
    la	$t9,gl_SetImmediateMode
    jalr	$t9
    li	$a0,1
    # Line 29
    addiu	$a2,$gp,-14608
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a3,gl_openobjhdr
    li	$a0,5
    jalr	$t9
    # Line 28
    sw	$zero,0($a3)
    # Line 30
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_editobj

# Function: gl_g_objreplace
# Declared: Line 60 (Source lines: 62-86)
# Address: 0x0f0f5f18 - 0x0f0f600c (Size: 244 bytes, Frame: 32)
.globl gl_g_objreplace
.ent gl_g_objreplace
gl_g_objreplace:
    # Line 62
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v1,0xfff4 (gp disp hi)
    # addiu	v1,v1,-11472 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,gl_openobjhdr
    lw	$v0,0($v0)
    # Line 70
    li	$a3,-2
    # Line 62
    beqz	$v0,.L0f0f5fe4
    move	$a1,$a0
    # Line 67
    li	$a2,-3
    beq	$a1,$a2,.L0f0f5fd8
    # Line 72
    la	$v1,gl_currentpos
    # Line 70
    beq	$a1,$a3,.L0f0f5f98
    # Line 73
    la	$a2,gl_replacemode
    # Line 76
    la	$t9,gl_findhash
    la	$a0,gl_openobj
    sd	$ra,8($sp)
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,8($sp)
    la	$a0,gl_currentpos
    # Line 80
    li	$a2,1
    # Line 76
    beqz	$v0,.L0f0f5fb4
    sw	$v0,0($a0)
    # Line 85
    addiu	$at,$v0,8
    # Line 80
    la	$a3,gl_replacemode
    ld	$gp,0($sp)
    # Line 86
    addiu	$sp,$sp,32
    # Line 85
    sw	$at,0($a0)
    # Line 86
    jr	$ra
    # Line 80
    sw	$a2,0($a3)
.L0f0f5f98:
    # Line 73
    li	$a0,1
    ld	$gp,0($sp)
    # Line 72
    lw	$v0,0($v0)
    # Line 74
    addiu	$sp,$sp,32
    # Line 73
    sw	$a0,0($a2)
    # Line 74
    jr	$ra
    # Line 72
    sw	$v0,0($v1)
.L0f0f5fb4:
    # Line 77
    la	$t9,gl_ErrorHandler
    lw	$a2,-14616($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,32
    # Line 78
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f5fd8:
    ld	$gp,0($sp)
    # Line 70
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f5fe4:
    # Line 66
    lw	$a2,-14616($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,8($sp)
    jalr	$t9
    li	$a0,5
    # Line 67
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_objreplace

# Function: gl_g_objinsert
# Declared: Line 88 (Source lines: 90-131)
# Address: 0x0f0f600c - 0x0f0f620c (Size: 512 bytes, Frame: 48)
.globl gl_g_objinsert
.ent gl_g_objinsert
gl_g_objinsert:
    # Line 90
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-11716 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$v0,gl_openobjhdr
    lw	$at,0($v0)
    # Line 101
    li	$a3,-2
    sd	$s0,16($sp)
    # Line 90
    beqz	$at,.L0f0f61b4
    move	$s0,$a0
    # Line 96
    li	$v1,-3
    beq	$s0,$v1,.L0f0f61e0
    # Line 99
    la	$t9,__GLeditobj
    # Line 101
    beq	$s0,$a3,.L0f0f6134
    sd	$ra,24($sp)
    # Line 114
    la	$t9,gl_findhash
    # Line 112
    la	$a0,gl_openobj
    # Line 114
    move	$a1,$s0
    jalr	$t9
    lw	$a0,0($a0)
    sd	$v0,0($sp)
    beqz	$v0,.L0f0f6090
    lw	$a2,-14612($gp)
    # Line 118
    la	$t9,gl_addchunk
    bal gl_addchunk
    move	$a0,$a2
    bnez	$v0,.L0f0f60b4
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    # Line 119
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f6090:
    # Line 115
    la	$t9,gl_ErrorHandler
    li	$a1,2
    jalr	$t9
    li	$a0,32
    # Line 116
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f60b4:
    # Line 128
    move	$a2,$s0
    move	$a0,$v0
    la	$a1,gl_openobj
    la	$t9,gl_replacehash
    # Line 120
    ld	$a3,0($sp)
    # Line 119
    la	$a4,gl_n_jump
    # Line 124
    la	$a6,gl_currentpos
    # Line 125
    la	$a5,gl_objchunksize
    # Line 120
    sw	$a4,0($a3)
    # Line 122
    sw	$v0,4($a3)
    # Line 127
    addiu	$a3,$a3,8
    # Line 125
    lw	$a5,0($a5)
    # Line 124
    sw	$v0,0($a6)
    # Line 125
    la	$a6,gl_currentend
    sra	$a5,$a5,0x1
    addu	$a5,$a5,$a5
    addu	$a5,$a5,$v0
    sw	$a5,0($a6)
    # Line 127
    sw	$a3,4($v0)
    # Line 126
    sw	$a4,0($v0)
    # Line 128
    jalr	$t9
    lw	$a1,0($a1)
    # Line 129
    la	$t9,gl_addtag
    jalr	$t9
    move	$a0,$s0
    # Line 130
    la	$s0,gl_replacemode
    ld	$gp,8($sp)
    # Line 131
    ld	$ra,24($sp)
    # Line 130
    sw	$zero,0($s0)
    # Line 131
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f6134:
    # Line 104
    la	$t9,gl_addchunk
    bal gl_addchunk
    lw	$a0,-14612($gp)
    # Line 112
    ld	$s0,16($sp)
    # Line 104
    bnez	$v0,.L0f0f615c
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    # Line 105
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f615c:
    # Line 110
    la	$at,gl_objchunksize
    # Line 106
    la	$a3,gl_n_jump
    la	$v1,gl_openobjhdr
    sw	$a3,0($v0)
    # Line 107
    lw	$a0,0($v1)
    lw	$a0,0($a0)
    sw	$a0,4($v0)
    # Line 108
    lw	$v1,0($v1)
    # Line 111
    la	$a0,gl_replacemode
    # Line 108
    sw	$v0,0($v1)
    # Line 109
    la	$v1,gl_currentpos
    # Line 111
    sw	$zero,0($a0)
    # Line 109
    sw	$v0,0($v1)
    # Line 110
    la	$v1,gl_currentend
    lw	$at,0($at)
    ld	$gp,8($sp)
    # Line 112
    addiu	$sp,$sp,48
    # Line 110
    sra	$at,$at,0x1
    addu	$at,$at,$at
    addu	$at,$at,$v0
    # Line 112
    jr	$ra
    # Line 110
    sw	$at,0($v1)
.L0f0f61b4:
    # Line 95
    lw	$a2,-14612($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,5
    # Line 96
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f61e0:
    # Line 99
    la	$a0,gl_openobj
    sd	$ra,24($sp)
    jalr	$t9
    lw	$a0,0($a0)
    # Line 100
    la	$a3,gl_replacemode
    ld	$gp,8($sp)
    # Line 101
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 100
    sw	$zero,0($a3)
.end gl_g_objinsert

