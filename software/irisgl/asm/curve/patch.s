# Source: ../igloo/curve/patch.c
# Category: curve
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/curve/patch.c -o patch.T
# Total Functions: 5

.text

# Function: gl_g_patch
# Declared: Line 28 (Source lines: 29-31)
# Address: 0x0f0f6ef0 - 0x0f0f6f28 (Size: 56 bytes, Frame: 48)
.globl gl_g_patch
.ent gl_g_patch
gl_g_patch:
    # Line 29
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a4,0xfff4
    addiu	$a4,$a4,-15528
    addu	$gp,$t9,$a4
    # Line 30
    la	$t9,rpatch
    la	$a3,sub_0f030000
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a3,$a3,-25352
    # Line 31
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_patch

# Function: freepatch
# Declared: Line 34 (Source lines: 35-44)
# Address: 0x0f0f6f28 - 0x0f0f6f80 (Size: 88 bytes, Frame: 48)
.ent freepatch
freepatch:
    # Line 35
    move	$a3,$a1
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$gp,0($sp)
    lw	$a0,276($a1)
    lui	$at,0xfff4
    addiu	$at,$at,-15584
    beqz	$a0,.L0f0f6f60
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 42
    la	$t9,gl_free
    sd	$a3,8($sp)
    jalr	$t9
    lw	$a1,-14596($gp)
    ld	$a3,8($sp)
.L0f0f6f60:
    # Line 43
    la	$t9,gl_free
    move	$a0,$a3
    jalr	$t9
    lw	$a1,-14596($gp)
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    # Line 44
    jr	$ra
    addiu	$sp,$sp,48
.end freepatch

# Function: drawpatch
# Declared: Line 46 (Source lines: 47-160)
# Address: 0x0f0f6f80 - 0x0f0f74cc (Size: 1356 bytes, Frame: 160)
.ent drawpatch
drawpatch:
    # Line 47
    addiu	$sp,$sp,-672
    sd	$gp,560($sp)
    # lui	v1,0xfff4 (gp disp hi)
    # addiu	v1,v1,-15672 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 48
    la	$v0,gl_wstatep
    sd	$s5,632($sp)
    sd	$s4,528($sp)
    lw	$v0,0($v0)
    # Line 47
    move	$s4,$a1
    sd	$s1,536($sp)
    # Line 59
    lh	$a3,11734($v0)
    sd	$s7,544($sp)
    addiu	$s7,$v0,11712
    slti	$at,$a3,2
    bnez	$at,.L0f0f6fcc
    # Line 48
    move	$s1,$v0
    # Line 62
    b	.L0f0f6fd0
    addiu	$s5,$a3,-1
.L0f0f6fcc:
    li	$s5,1
.L0f0f6fd0:
    lh	$a1,11732($v0)
    slti	$a0,$a1,2
    bnez	$a0,.L0f0f6ff0
    sd	$s6,608($sp)
    sd	$s8,640($sp)
    sd	$ra,616($sp)
    # Line 64
    b	.L0f0f6ffc
    addiu	$s6,$a1,-1
.L0f0f6ff0:
    sd	$s8,640($sp)
    sd	$ra,616($sp)
    li	$s6,1
.L0f0f6ffc:
    # Line 67
    lh	$a6,11730($v0)
    divu	$zero,$a6,$s6
    mflo	$a5
    nop
    addiu	$a5,$a5,1
    multu	$a5,$s6
    # Line 69
    lh	$a4,11728($v0)
    # Line 67
    mflo	$s8
    nop
    nop
    # Line 69
    divu	$zero,$a4,$s5
    mflo	$a3
    nop
    addiu	$a3,$a3,1
    multu	$a3,$s5
    sd	$s0,624($sp)
    sd	$s3,600($sp)
    # Line 72
    li	$a1,1
    lw	$a0,11720($v0)
    # Line 69
    teq	$s5,$zero,0x7
    # Line 72
    la	$t9,gl_findbasis
    # Line 67
    teq	$s6,$zero,0x7
    # Line 69
    mflo	$a2
    # Line 72
    jalr	$t9
    sd	$a2,552($sp)
    # Line 74
    move	$s0,$zero
    addiu	$a6,$sp,16
    li	$s3,4
    move	$a5,$zero
    addiu	$a4,$s4,16
    move	$a3,$s4
.L0f0f7078:
    lwc1	$f14,24($v0)
    lwc1	$f12,20($v0)
    lwc1	$f13,16($v0)
    lwc1	$f15,12($v0)
    addiu	$v0,$v0,16
    addiu	$s0,$s0,1
    addu	$a1,$a5,$a6
.L0f0f7094:
    # Line 94
    lwc1	$f4,240($a3)
    mul.s	$f4,$f4,$f14
    # Line 93
    lwc1	$f10,224($a3)
    mul.s	$f10,$f10,$f12
    # Line 91
    lwc1	$f11,192($a3)
    mul.s	$f11,$f11,$f15
    # Line 92
    lwc1	$f6,208($a3)
    mul.s	$f6,$f6,$f13
    # Line 89
    lwc1	$f2,176($a3)
    mul.s	$f2,$f2,$f14
    # Line 88
    lwc1	$f3,160($a3)
    mul.s	$f3,$f3,$f12
    # Line 86
    lwc1	$f8,128($a3)
    mul.s	$f8,$f8,$f15
    # Line 87
    lwc1	$f0,144($a3)
    mul.s	$f0,$f0,$f13
    # Line 84
    lwc1	$f1,112($a3)
    mul.s	$f1,$f1,$f14
    # Line 83
    lwc1	$f5,96($a3)
    mul.s	$f5,$f5,$f12
    # Line 81
    lwc1	$f7,64($a3)
    mul.s	$f7,$f7,$f15
    # Line 82
    lwc1	$f9,80($a3)
    # Line 92
    add.s	$f11,$f11,$f6
    # Line 82
    mul.s	$f9,$f9,$f13
    # Line 87
    add.s	$f8,$f8,$f0
    # Line 76
    lwc1	$f6,0($a3)
    # Line 93
    add.s	$f10,$f10,$f11
    # Line 76
    mul.s	$f6,$f6,$f15
    # Line 88
    add.s	$f3,$f3,$f8
    # Line 77
    lwc1	$f8,16($a3)
    # Line 94
    add.s	$f4,$f4,$f10
    # Line 77
    mul.s	$f8,$f8,$f13
    # Line 89
    add.s	$f2,$f2,$f3
    # Line 78
    lwc1	$f3,32($a3)
    # Line 82
    add.s	$f7,$f7,$f9
    # Line 78
    mul.s	$f3,$f3,$f12
    # Line 77
    add.s	$f6,$f6,$f8
    # Line 79
    lwc1	$f0,48($a3)
    # Line 83
    add.s	$f5,$f5,$f7
    # Line 79
    mul.s	$f0,$f0,$f14
    # Line 78
    add.s	$f3,$f3,$f6
    # Line 75
    addiu	$a1,$a1,4
    # Line 84
    add.s	$f1,$f1,$f5
    # Line 75
    addiu	$a3,$a3,4
    # Line 94
    swc1	$f4,188($a1)
    # Line 79
    add.s	$f0,$f0,$f3
    # Line 89
    swc1	$f2,124($a1)
    # Line 84
    swc1	$f1,60($a1)
    # Line 75
    bne	$a3,$a4,.L0f0f7094
    # Line 79
    swc1	$f0,-4($a1)
    # Line 74
    addiu	$a5,$a5,16
    bne	$s0,$s3,.L0f0f7078
    move	$a3,$s4
    # Line 99
    la	$t9,gl_findbasis
    li	$a1,1
    jalr	$t9
    lw	$a0,12($s7)
    # Line 104
    addiu	$a6,$sp,16
    move	$a5,$zero
    move	$s0,$zero
    # Line 99
    addiu	$a7,$sp,272
    # Line 104
    addiu	$a4,$a7,64
.L0f0f7190:
    move	$a3,$v0
    lwc1	$f11,204($a6)
    lwc1	$f14,200($a6)
    lwc1	$f15,196($a6)
    lwc1	$f17,192($a6)
    lwc1	$f18,140($a6)
    lwc1	$f9,136($a6)
    lwc1	$f7,132($a6)
    lwc1	$f6,128($a6)
    lwc1	$f4,76($a6)
    lwc1	$f10,72($a6)
    lwc1	$f13,68($a6)
    lwc1	$f16,64($a6)
    lwc1	$f19,12($a6)
    lwc1	$f8,8($a6)
    lwc1	$f5,4($a6)
    lwc1	$f12,0($a6)
    addiu	$a6,$a6,16
    addiu	$s0,$s0,1
    sll	$a1,$a5,0x2
    addiu	$a5,$a5,16
    addu	$a1,$a1,$a7
.L0f0f71e8:
    # Line 106
    lwc1	$f3,12($a3)
    mul.s	$f3,$f3,$f12
    swc1	$f3,0($a1)
    # Line 107
    lwc1	$f2,16($a3)
    mul.s	$f2,$f2,$f5
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a1)
    # Line 108
    lwc1	$f1,20($a3)
    mul.s	$f1,$f1,$f8
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 109
    lwc1	$f0,24($a3)
    mul.s	$f0,$f0,$f19
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a1)
    # Line 111
    lwc1	$f3,12($a3)
    mul.s	$f3,$f3,$f16
    swc1	$f3,4($a1)
    # Line 112
    lwc1	$f2,16($a3)
    mul.s	$f2,$f2,$f13
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 113
    lwc1	$f1,20($a3)
    mul.s	$f1,$f1,$f10
    add.s	$f1,$f1,$f2
    swc1	$f1,4($a1)
    # Line 114
    lwc1	$f0,24($a3)
    mul.s	$f0,$f0,$f4
    add.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    # Line 116
    lwc1	$f3,12($a3)
    mul.s	$f3,$f3,$f6
    swc1	$f3,8($a1)
    # Line 117
    lwc1	$f2,16($a3)
    mul.s	$f2,$f2,$f7
    add.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 118
    lwc1	$f1,20($a3)
    mul.s	$f1,$f1,$f9
    add.s	$f1,$f1,$f2
    swc1	$f1,8($a1)
    # Line 119
    lwc1	$f0,24($a3)
    mul.s	$f0,$f0,$f18
    add.s	$f0,$f0,$f1
    swc1	$f0,8($a1)
    # Line 121
    lwc1	$f3,12($a3)
    mul.s	$f3,$f3,$f17
    swc1	$f3,12($a1)
    # Line 122
    lwc1	$f2,16($a3)
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,12($a1)
    # Line 123
    lwc1	$f1,20($a3)
    mul.s	$f1,$f1,$f14
    add.s	$f1,$f1,$f2
    swc1	$f1,12($a1)
    # Line 124
    lwc1	$f0,24($a3)
    mul.s	$f0,$f0,$f11
    add.s	$f0,$f0,$f1
    # Line 105
    addiu	$a3,$a3,16
    addiu	$a1,$a1,16
    bne	$a1,$a4,.L0f0f71e8
    # Line 124
    swc1	$f0,-4($a1)
    # Line 104
    bne	$s0,$s3,.L0f0f7190
    addiu	$a4,$a4,64
    # Line 129
    li	$a7,16
    li	$a4,4
    li	$a3,4
    li	$a0,3512
    li	$a2,4
    addiu	$a5,$sp,272
    sw	$a5,12($sp)
    sw	$a2,4($sp)
    sdc1	$f24,592($sp)
    lwc1	$f24,_lit_3f800000
    mtc1	$zero,$f13
    la	$t9,glMap2f
    mov.s	$f18,$f24
    mov.s	$f17,$f13
    jalr	$t9
    mov.s	$f14,$f24
    sdc1	$f28,584($sp)
    sdc1	$f26,568($sp)
    # Line 133
    la	$t9,__iglooSetEnable
    li	$a1,1
    li	$a0,3512
    jalr	$t9
    ld	$s3,600($sp)
    # Line 143
    dsll32	$at,$s5,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f28
    nop
    cvt.s.l	$f28,$f28
    div.s	$f28,$f24,$f28
    ld	$s4,552($sp)
    dsll32	$s7,$s4,0x0
    dsrl32	$s7,$s7,0x0
    dmtc1	$s7,$f26
    nop
    cvt.s.l	$f26,$f26
    sdc1	$f22,576($sp)
    move	$s0,$zero
    addiu	$s4,$s4,1
    addiu	$s7,$s5,1
    div.s	$f26,$f24,$f26
    # Line 144
    lw	$t9,216($s1)
.L0f0f7390:
    jalr	$t9
    li	$a0,3
    # Line 145
    mtc1	$s0,$f22
    nop
    cvt.s.w	$f22,$f22
    move	$s5,$zero
    mul.s	$f22,$f22,$f28
.L0f0f73ac:
    # Line 146
    mtc1	$s5,$f12
    nop
    cvt.s.w	$f12,$f12
    la	$t9,glEvalCoord2f
    mov.s	$f13,$f22
    # Line 145
    addiu	$s5,$s5,1
    # Line 146
    jalr	$t9
    mul.s	$f12,$f12,$f26
    # Line 145
    bne	$s5,$s4,.L0f0f73ac
    nop
    # Line 148
    lw	$t9,220($s1)
    jalr	$t9
    # Line 143
    addiu	$s0,$s0,1
    bnel	$s0,$s7,.L0f0f7390
    # Line 144
    lw	$t9,216($s1)
    # Line 150
    dsll32	$a0,$s8,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f22
    nop
    cvt.s.l	$f22,$f22
    div.s	$f22,$f24,$f22
    dsll32	$v1,$s6,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f28
    nop
    cvt.s.l	$f28,$f28
    move	$s0,$zero
    ldc1	$f26,568($sp)
    addiu	$s4,$s8,1
    ld	$s8,640($sp)
    addiu	$s7,$s6,1
    ld	$s6,608($sp)
    div.s	$f28,$f24,$f28
    # Line 151
    lw	$t9,216($s1)
.L0f0f7434:
    jalr	$t9
    li	$a0,3
    # Line 152
    mtc1	$s0,$f24
    nop
    cvt.s.w	$f24,$f24
    move	$s5,$zero
    mul.s	$f24,$f24,$f28
.L0f0f7450:
    # Line 153
    mtc1	$s5,$f13
    nop
    cvt.s.w	$f13,$f13
    la	$t9,glEvalCoord2f
    mov.s	$f12,$f24
    jalr	$t9
    mul.s	$f13,$f13,$f22
    # Line 152
    addiu	$s5,$s5,1
    bne	$s5,$s4,.L0f0f7450
    nop
    # Line 155
    lw	$t9,220($s1)
    jalr	$t9
    # Line 150
    addiu	$s0,$s0,1
    bnel	$s0,$s7,.L0f0f7434
    # Line 151
    lw	$t9,216($s1)
    # Line 158
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,3512
    ld	$gp,560($sp)
    # Line 160
    ld	$s0,624($sp)
    ld	$s1,536($sp)
    ld	$s4,528($sp)
    ld	$s5,632($sp)
    ld	$s7,544($sp)
    ldc1	$f22,576($sp)
    ld	$ra,616($sp)
    ldc1	$f24,592($sp)
    ldc1	$f28,584($sp)
    jr	$ra
    addiu	$sp,$sp,672
.end drawpatch

# Function: gl_i_rpatch
# Declared: Line 165 (Source lines: 165-280)
# Address: 0x0f0f74cc - 0x0f0f7a50 (Size: 1412 bytes, Frame: 192)
.globl gl_i_rpatch
.ent gl_i_rpatch
gl_i_rpatch:
    # Line 165
    addiu	$sp,$sp,-704
    sd	$s7,648($sp)
    sd	$s3,544($sp)
    move	$s3,$a3
    sd	$s4,560($sp)
    move	$s4,$a2
    sd	$gp,584($sp)
    lui	$a7,0xfff4
    addiu	$a7,$a7,-17028
    addu	$gp,$t9,$a7
    # Line 167
    la	$a6,gl_wstatep
    sd	$s2,528($sp)
    # Line 165
    move	$s2,$a1
    # Line 167
    lw	$a6,0($a6)
    sd	$s1,576($sp)
    # Line 165
    move	$s1,$a0
    # Line 178
    lh	$a7,11734($a6)
    sd	$s0,568($sp)
    addiu	$v0,$a6,11712
    slti	$at,$a7,2
    bnez	$at,.L0f0f752c
    # Line 167
    move	$s0,$a6
    # Line 181
    b	.L0f0f7530
    addiu	$s7,$a7,-1
.L0f0f752c:
    li	$s7,1
.L0f0f7530:
    lh	$a0,11732($a6)
    slti	$at,$a0,2
    bnez	$at,.L0f0f754c
    sd	$s8,656($sp)
    sd	$ra,632($sp)
    # Line 183
    b	.L0f0f7554
    addiu	$s8,$a0,-1
.L0f0f754c:
    sd	$ra,632($sp)
    li	$s8,1
.L0f0f7554:
    # Line 186
    lh	$a3,11730($a6)
    divu	$zero,$a3,$s8
    mflo	$a2
    nop
    addiu	$a2,$a2,1
    multu	$a2,$s8
    # Line 188
    lh	$a0,11728($a6)
    # Line 186
    mflo	$a1
    nop
    nop
    # Line 188
    divu	$zero,$a0,$s7
    mflo	$v1
    nop
    addiu	$v1,$v1,1
    multu	$v1,$s7
    sd	$s5,640($sp)
    teq	$s7,$zero,0x7
    sd	$s6,624($sp)
    # Line 186
    teq	$s8,$zero,0x7
    sd	$v0,664($sp)
    # Line 191
    la	$t9,gl_findbasis
    lw	$a0,11720($a6)
    sd	$a1,552($sp)
    li	$a1,1
    # Line 188
    mflo	$v0
    # Line 191
    jalr	$t9
    sd	$v0,536($sp)
    # Line 193
    move	$s5,$zero
    addiu	$t1,$sp,16
    li	$s6,4
    move	$t0,$zero
    addiu	$a7,$s1,16
    ld	$a2,664($sp)
    move	$a3,$s1
.L0f0f75dc:
    move	$a0,$s2
    move	$a1,$s4
    move	$a6,$s3
    lwc1	$f14,24($v0)
    lwc1	$f12,20($v0)
    lwc1	$f13,16($v0)
    lwc1	$f15,12($v0)
    addiu	$v0,$v0,16
    addiu	$s5,$s5,1
    addu	$t2,$t0,$t1
.L0f0f7604:
    # Line 213
    lwc1	$f4,48($a6)
    mul.s	$f4,$f4,$f14
    # Line 212
    lwc1	$f10,32($a6)
    mul.s	$f10,$f10,$f12
    # Line 210
    lwc1	$f11,0($a6)
    mul.s	$f11,$f11,$f15
    # Line 211
    lwc1	$f6,16($a6)
    mul.s	$f6,$f6,$f13
    # Line 208
    lwc1	$f2,48($a1)
    mul.s	$f2,$f2,$f14
    # Line 207
    lwc1	$f3,32($a1)
    mul.s	$f3,$f3,$f12
    # Line 205
    lwc1	$f8,0($a1)
    mul.s	$f8,$f8,$f15
    # Line 206
    lwc1	$f0,16($a1)
    mul.s	$f0,$f0,$f13
    # Line 203
    lwc1	$f1,48($a0)
    mul.s	$f1,$f1,$f14
    # Line 202
    lwc1	$f5,32($a0)
    mul.s	$f5,$f5,$f12
    # Line 200
    lwc1	$f7,0($a0)
    mul.s	$f7,$f7,$f15
    # Line 201
    lwc1	$f9,16($a0)
    # Line 211
    add.s	$f11,$f11,$f6
    # Line 201
    mul.s	$f9,$f9,$f13
    # Line 206
    add.s	$f8,$f8,$f0
    # Line 195
    lwc1	$f6,0($a3)
    # Line 212
    add.s	$f10,$f10,$f11
    # Line 195
    mul.s	$f6,$f6,$f15
    # Line 207
    add.s	$f3,$f3,$f8
    # Line 196
    lwc1	$f8,16($a3)
    # Line 213
    add.s	$f4,$f4,$f10
    # Line 196
    mul.s	$f8,$f8,$f13
    # Line 208
    add.s	$f2,$f2,$f3
    # Line 197
    lwc1	$f3,32($a3)
    # Line 201
    add.s	$f7,$f7,$f9
    # Line 197
    mul.s	$f3,$f3,$f12
    # Line 196
    add.s	$f6,$f6,$f8
    # Line 198
    lwc1	$f0,48($a3)
    # Line 194
    addiu	$a0,$a0,4
    # Line 202
    add.s	$f5,$f5,$f7
    # Line 198
    mul.s	$f0,$f0,$f14
    # Line 194
    addiu	$a1,$a1,4
    # Line 197
    add.s	$f3,$f3,$f6
    # Line 194
    addiu	$a6,$a6,4
    addiu	$t2,$t2,4
    # Line 203
    add.s	$f1,$f1,$f5
    # Line 194
    addiu	$a3,$a3,4
    # Line 213
    swc1	$f4,188($t2)
    # Line 198
    add.s	$f0,$f0,$f3
    # Line 208
    swc1	$f2,124($t2)
    # Line 203
    swc1	$f1,60($t2)
    # Line 194
    bne	$a3,$a7,.L0f0f7604
    # Line 198
    swc1	$f0,-4($t2)
    # Line 193
    addiu	$t0,$t0,16
    bne	$s5,$s6,.L0f0f75dc
    move	$a3,$s1
    # Line 217
    la	$t9,gl_findbasis
    li	$a1,1
    jalr	$t9
    lw	$a0,12($a2)
    # Line 222
    addiu	$a6,$sp,16
    move	$a3,$zero
    move	$s5,$zero
    ld	$s3,544($sp)
    ld	$s1,536($sp)
    ld	$s2,528($sp)
    # Line 217
    addiu	$a7,$sp,272
    # Line 222
    addiu	$a2,$a7,64
.L0f0f7718:
    move	$a1,$v0
    lwc1	$f11,204($a6)
    lwc1	$f14,200($a6)
    lwc1	$f15,196($a6)
    lwc1	$f17,192($a6)
    lwc1	$f18,140($a6)
    lwc1	$f9,136($a6)
    lwc1	$f7,132($a6)
    lwc1	$f6,128($a6)
    lwc1	$f4,76($a6)
    lwc1	$f10,72($a6)
    lwc1	$f13,68($a6)
    lwc1	$f16,64($a6)
    lwc1	$f19,12($a6)
    lwc1	$f8,8($a6)
    lwc1	$f5,4($a6)
    lwc1	$f12,0($a6)
    addiu	$a6,$a6,16
    addiu	$s5,$s5,1
    sll	$a0,$a3,0x2
    addiu	$a3,$a3,16
    addu	$a0,$a0,$a7
.L0f0f7770:
    # Line 224
    lwc1	$f3,12($a1)
    mul.s	$f3,$f3,$f12
    swc1	$f3,0($a0)
    # Line 225
    lwc1	$f2,16($a1)
    mul.s	$f2,$f2,$f5
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a0)
    # Line 226
    lwc1	$f1,20($a1)
    mul.s	$f1,$f1,$f8
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a0)
    # Line 227
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f19
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a0)
    # Line 229
    lwc1	$f3,12($a1)
    mul.s	$f3,$f3,$f16
    swc1	$f3,4($a0)
    # Line 230
    lwc1	$f2,16($a1)
    mul.s	$f2,$f2,$f13
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a0)
    # Line 231
    lwc1	$f1,20($a1)
    mul.s	$f1,$f1,$f10
    add.s	$f1,$f1,$f2
    swc1	$f1,4($a0)
    # Line 232
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f4
    add.s	$f0,$f0,$f1
    swc1	$f0,4($a0)
    # Line 234
    lwc1	$f3,12($a1)
    mul.s	$f3,$f3,$f6
    swc1	$f3,8($a0)
    # Line 235
    lwc1	$f2,16($a1)
    mul.s	$f2,$f2,$f7
    add.s	$f2,$f2,$f3
    swc1	$f2,8($a0)
    # Line 236
    lwc1	$f1,20($a1)
    mul.s	$f1,$f1,$f9
    add.s	$f1,$f1,$f2
    swc1	$f1,8($a0)
    # Line 237
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f18
    add.s	$f0,$f0,$f1
    swc1	$f0,8($a0)
    # Line 239
    lwc1	$f3,12($a1)
    mul.s	$f3,$f3,$f17
    swc1	$f3,12($a0)
    # Line 240
    lwc1	$f2,16($a1)
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,12($a0)
    # Line 241
    lwc1	$f1,20($a1)
    mul.s	$f1,$f1,$f14
    add.s	$f1,$f1,$f2
    swc1	$f1,12($a0)
    # Line 242
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f11
    add.s	$f0,$f0,$f1
    # Line 223
    addiu	$a1,$a1,16
    addiu	$a0,$a0,16
    bne	$a0,$a2,.L0f0f7770
    # Line 242
    swc1	$f0,-4($a0)
    # Line 222
    bne	$s5,$s6,.L0f0f7718
    addiu	$a2,$a2,64
    # Line 247
    li	$a7,16
    li	$a4,4
    li	$a3,4
    li	$a0,3512
    li	$a1,4
    addiu	$a2,$sp,272
    sw	$a2,12($sp)
    sw	$a1,4($sp)
    sdc1	$f24,616($sp)
    lwc1	$f24,_lit_3f800000
    mtc1	$zero,$f13
    la	$t9,glMap2f
    mov.s	$f18,$f24
    mov.s	$f17,$f13
    jalr	$t9
    mov.s	$f14,$f24
    sdc1	$f28,608($sp)
    # Line 253
    la	$t9,__iglooSetEnable
    sdc1	$f26,592($sp)
    li	$a1,1
    jalr	$t9
    li	$a0,3512
    # Line 263
    dsll32	$a5,$s7,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f28
    nop
    cvt.s.l	$f28,$f28
    div.s	$f28,$f24,$f28
    dsll32	$a4,$s1,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f26
    nop
    cvt.s.l	$f26,$f26
    sdc1	$f22,600($sp)
    move	$s5,$zero
    addiu	$s4,$s1,1
    addiu	$s6,$s7,1
    div.s	$f26,$f24,$f26
    # Line 264
    lw	$t9,216($s0)
.L0f0f7910:
    jalr	$t9
    li	$a0,3
    # Line 265
    mtc1	$s5,$f22
    nop
    cvt.s.w	$f22,$f22
    move	$s1,$zero
    mul.s	$f22,$f22,$f28
.L0f0f792c:
    # Line 266
    mtc1	$s1,$f12
    nop
    cvt.s.w	$f12,$f12
    la	$t9,glEvalCoord2f
    mov.s	$f13,$f22
    # Line 265
    addiu	$s1,$s1,1
    # Line 266
    jalr	$t9
    mul.s	$f12,$f12,$f26
    # Line 265
    bne	$s1,$s4,.L0f0f792c
    nop
    # Line 268
    lw	$t9,220($s0)
    jalr	$t9
    # Line 263
    addiu	$s5,$s5,1
    bnel	$s5,$s6,.L0f0f7910
    # Line 264
    lw	$t9,216($s0)
    # Line 270
    dsll32	$s6,$s8,0x0
    dsrl32	$s6,$s6,0x0
    dmtc1	$s6,$f28
    nop
    cvt.s.l	$f28,$f28
    div.s	$f28,$f24,$f28
    ld	$s4,552($sp)
    dsll32	$s7,$s4,0x0
    dsrl32	$s7,$s7,0x0
    dmtc1	$s7,$f22
    nop
    cvt.s.l	$f22,$f22
    move	$s5,$zero
    ldc1	$f26,592($sp)
    ld	$s6,624($sp)
    addiu	$s4,$s4,1
    addiu	$s7,$s8,1
    ld	$s8,656($sp)
    div.s	$f22,$f24,$f22
    # Line 271
    lw	$t9,216($s0)
.L0f0f79b8:
    jalr	$t9
    li	$a0,3
    # Line 272
    mtc1	$s5,$f24
    nop
    cvt.s.w	$f24,$f24
    move	$s1,$zero
    mul.s	$f24,$f24,$f28
.L0f0f79d4:
    # Line 273
    mtc1	$s1,$f13
    nop
    cvt.s.w	$f13,$f13
    la	$t9,glEvalCoord2f
    mov.s	$f12,$f24
    jalr	$t9
    mul.s	$f13,$f13,$f22
    # Line 272
    addiu	$s1,$s1,1
    bne	$s1,$s4,.L0f0f79d4
    nop
    # Line 275
    lw	$t9,220($s0)
    jalr	$t9
    # Line 270
    addiu	$s5,$s5,1
    bnel	$s5,$s7,.L0f0f79b8
    # Line 271
    lw	$t9,216($s0)
    # Line 278
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,3512
    ld	$gp,584($sp)
    # Line 280
    ld	$s0,568($sp)
    ld	$s1,576($sp)
    ld	$s4,560($sp)
    ld	$s5,640($sp)
    ld	$s7,648($sp)
    ldc1	$f22,600($sp)
    ld	$ra,632($sp)
    ldc1	$f24,616($sp)
    ldc1	$f28,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.end gl_i_rpatch

# Function: gl_c_rpatch
# Declared: Line 281 (Source lines: 281-311)
# Address: 0x0f0f7a50 - 0x0f0f7b58 (Size: 264 bytes, Frame: 224)
.globl gl_c_rpatch
.ent gl_c_rpatch
gl_c_rpatch:
    # Line 281
    addiu	$sp,$sp,-96
    sd	$s0,0($sp)
    sd	$a0,8($sp)
    # Line 285
    li	$a0,280
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a1,24($sp)
    sd	$gp,40($sp)
    # Line 281
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-18440 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 285
    la	$t9,gl_malloc
    la	$at,sub_0f030000
    sd	$ra,48($sp)
    jalr	$t9
    lw	$a1,-25276($at)
    bnez	$v0,.L0f0f7aac
    move	$s0,$v0
    # Line 287
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f7aac:
    # Line 288
    move	$a3,$s0
    li	$a2,1
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,28456
    jalr	$t9
    addiu	$a0,$a0,28544
    # Line 291
    la	$t9,bcopy
    ld	$a0,8($sp)
    move	$a1,$s0
    jalr	$t9
    li	$a2,64
    # Line 292
    la	$t9,bcopy
    ld	$a0,24($sp)
    li	$a2,64
    jalr	$t9
    addiu	$a1,$s0,64
    # Line 293
    la	$t9,bcopy
    ld	$a0,32($sp)
    li	$a2,64
    jalr	$t9
    addiu	$a1,$s0,128
    # Line 294
    la	$t9,bcopy
    ld	$a0,16($sp)
    li	$a2,64
    jalr	$t9
    addiu	$a1,$s0,192
    ld	$gp,40($sp)
    # Line 309
    sw	$zero,276($s0)
    # Line 308
    sh	$zero,266($s0)
    # Line 307
    sh	$zero,262($s0)
    # Line 306
    sh	$zero,264($s0)
    # Line 304
    sh	$zero,260($s0)
    # Line 303
    sh	$zero,256($s0)
    # Line 302
    sh	$zero,258($s0)
    # Line 301
    li	$a4,-1
    # Line 305
    sw	$a4,272($s0)
    # Line 311
    ld	$ra,48($sp)
    # Line 301
    sw	$a4,268($s0)
    # Line 311
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_c_rpatch

.rdata
_lit_3f800000:
    .word 0x3f800000

