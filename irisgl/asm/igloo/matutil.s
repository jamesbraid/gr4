# Source: ../igloo/matutil.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/matutil.c -o matutil.T
# Total Functions: 3

.text

# Function: gl_transform4d
# Declared: Line 28 (Source lines: 29-37)
# Address: 0x0f0dcd10 - 0x0f0dce34 (Size: 292 bytes, Frame: 192)
.ent gl_transform4d
gl_transform4d:
    # Line 32
    lwc1	$f10,16($a2)
    lwc1	$f9,4($a1)
    lwc1	$f7,0($a2)
    lwc1	$f6,0($a1)
    mul.s	$f9,$f9,$f10
    lwc1	$f8,8($a1)
    lwc1	$f10,32($a2)
    mul.s	$f6,$f6,$f7
    lwc1	$f7,12($a1)
    mul.s	$f8,$f8,$f10
    lwc1	$f10,48($a2)
    mul.s	$f7,$f7,$f10
    add.s	$f6,$f6,$f9
    add.s	$f6,$f6,$f8
    add.s	$f6,$f6,$f7
    # Line 29
    addiu	$sp,$sp,-64
    # Line 32
    swc1	$f6,0($sp)
    # Line 33
    lwc1	$f8,20($a2)
    lwc1	$f7,4($a1)
    lwc1	$f5,4($a2)
    lwc1	$f4,0($a1)
    mul.s	$f7,$f7,$f8
    lwc1	$f6,8($a1)
    lwc1	$f8,36($a2)
    mul.s	$f4,$f4,$f5
    lwc1	$f5,12($a1)
    mul.s	$f6,$f6,$f8
    lwc1	$f8,52($a2)
    mul.s	$f5,$f5,$f8
    add.s	$f4,$f4,$f7
    add.s	$f4,$f4,$f6
    add.s	$f4,$f4,$f5
    swc1	$f4,4($sp)
    # Line 34
    lwc1	$f6,24($a2)
    lwc1	$f5,4($a1)
    lwc1	$f3,8($a2)
    lwc1	$f2,0($a1)
    mul.s	$f5,$f5,$f6
    lwc1	$f4,8($a1)
    lwc1	$f6,40($a2)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,12($a1)
    mul.s	$f4,$f4,$f6
    lwc1	$f6,56($a2)
    mul.s	$f3,$f3,$f6
    add.s	$f2,$f2,$f5
    add.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,8($sp)
    # Line 35
    lwc1	$f4,28($a2)
    lwc1	$f3,4($a1)
    lwc1	$f1,12($a2)
    lwc1	$f0,0($a1)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,8($a1)
    lwc1	$f4,44($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($a1)
    mul.s	$f2,$f2,$f4
    lwc1	$f4,60($a2)
    mul.s	$f1,$f1,$f4
    add.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    sd	$ra,16($sp)
    # Line 36
    la	$t9,memcpy
    # Line 35
    add.s	$f0,$f0,$f1
    # Line 36
    addiu	$a1,$sp,0
    li	$a2,16
    jalr	$t9
    # Line 35
    swc1	$f0,12($sp)
    ld	$ra,16($sp)
    # Line 37
    jr	$ra
    addiu	$sp,$sp,64
.end gl_transform4d

# Function: gl_multmatrix4d
# Declared: Line 44 (Source lines: 45-51)
# Address: 0x0f0dce34 - 0x0f0dced4 (Size: 160 bytes, Frame: 208)
.globl gl_multmatrix4d
.ent gl_multmatrix4d
gl_multmatrix4d:
    # Line 45
    addiu	$sp,$sp,-80
    sd	$s1,32($sp)
    move	$s1,$a2
    sd	$s3,0($sp)
    move	$s3,$a0
    sd	$s0,24($sp)
    sd	$gp,40($sp)
    sd	$s2,8($sp)
    lui	$s2,0xfff5
    addiu	$s2,$s2,25620
    addu	$gp,$t9,$s2
    la	$s0,sub_0f0e0000
    sd	$ra,16($sp)
    move	$s2,$a1
    addiu	$s0,$s0,-13040
    # Line 47
    bal __iglooFreeMatrixStacks
    move	$t9,$s0
    # Line 48
    addiu	$a1,$s2,16
    addiu	$a0,$s3,16
    move	$a2,$s1
    bal __iglooFreeMatrixStacks
    move	$t9,$s0
    # Line 49
    addiu	$a1,$s2,32
    addiu	$a0,$s3,32
    move	$a2,$s1
    bal __iglooFreeMatrixStacks
    move	$t9,$s0
    # Line 50
    addiu	$a1,$s2,48
    addiu	$a0,$s3,48
    move	$a2,$s1
    bal __iglooFreeMatrixStacks
    move	$t9,$s0
    ld	$gp,40($sp)
    # Line 51
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$ra,16($sp)
    ld	$s2,8($sp)
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_multmatrix4d

# Function: gl_invert4d
# Declared: Line 64 (Source lines: 65-179)
# Address: 0x0f0dced4 - 0x0f0dd1f4 (Size: 800 bytes, Frame: 48)
.globl gl_invert4d
.ent gl_invert4d
gl_invert4d:
    # Line 93
    lwc1	$f5,32($a1)
    # Line 99
    lwc1	$f8,20($a1)
    # Line 102
    mul.s	$f17,$f8,$f5
    # Line 90
    lwc1	$f3,4($a1)
    # Line 91
    lwc1	$f6,16($a1)
    # Line 100
    mul.s	$f2,$f3,$f5
    # Line 99
    lwc1	$f9,0($a1)
    mul.s	$f29,$f3,$f6
    # Line 94
    lwc1	$f0,36($a1)
    # Line 99
    mul.s	$f27,$f9,$f8
    # Line 100
    mul.s	$f1,$f9,$f0
    # Line 102
    mul.s	$f16,$f6,$f0
    # Line 99
    sub.s	$f27,$f27,$f29
    # Line 95
    lwc1	$f29,48($a1)
    # Line 104
    mul.s	$f11,$f0,$f29
    # Line 100
    sub.s	$f1,$f1,$f2
    # Line 96
    lwc1	$f2,52($a1)
    # Line 113
    lwc1	$f18,56($a1)
    # Line 104
    mul.s	$f25,$f5,$f2
    # Line 102
    sub.s	$f16,$f16,$f17
    # Line 112
    lwc1	$f17,44($a1)
    # Line 118
    mul.s	$f31,$f27,$f18
    # Line 109
    lwc1	$f4,24($a1)
    # Line 121
    mul.s	$f19,$f17,$f27
    # Line 107
    lwc1	$f12,8($a1)
    # Line 117
    mul.s	$f10,$f1,$f4
    mul.s	$f15,$f16,$f12
    # Line 101
    mul.s	$f13,$f3,$f29
    # Line 114
    lwc1	$f23,60($a1)
    # Line 101
    mul.s	$f9,$f9,$f2
    # Line 111
    lwc1	$f21,40($a1)
    # Line 122
    mul.s	$f7,$f23,$f27
    # Line 117
    sub.s	$f15,$f15,$f10
    mul.s	$f27,$f27,$f21
    # Line 101
    sub.s	$f9,$f9,$f13
    # Line 103
    mul.s	$f8,$f8,$f29
    # Line 104
    sub.s	$f25,$f25,$f11
    # Line 118
    mul.s	$f14,$f9,$f4
    # Line 117
    add.s	$f15,$f15,$f27
    # Line 103
    mul.s	$f27,$f6,$f2
    # Line 119
    mul.s	$f13,$f25,$f12
    # Line 118
    sub.s	$f14,$f14,$f31
    # Line 119
    mul.s	$f31,$f9,$f21
    # Line 103
    sub.s	$f27,$f27,$f8
    # Line 118
    mul.s	$f8,$f27,$f12
    # Line 119
    sub.s	$f13,$f13,$f31
    mul.s	$f31,$f1,$f18
    # Line 118
    sub.s	$f14,$f14,$f8
    # Line 120
    mul.s	$f8,$f16,$f18
    # Line 119
    add.s	$f13,$f13,$f31
    # Line 120
    mul.s	$f31,$f27,$f21
    sub.s	$f31,$f31,$f8
    mul.s	$f8,$f25,$f4
    sub.s	$f31,$f31,$f8
    # Line 65
    addiu	$sp,$sp,-48
    sdc1	$f31,16($sp)
    # Line 110
    lwc1	$f31,28($a1)
    # Line 121
    mul.s	$f11,$f31,$f1
    # Line 122
    mul.s	$f8,$f31,$f9
    # Line 121
    sub.s	$f11,$f11,$f19
    # Line 108
    lwc1	$f19,12($a1)
    # Line 122
    mul.s	$f10,$f19,$f27
    sub.s	$f10,$f10,$f8
    # Line 121
    mul.s	$f8,$f19,$f16
    # Line 123
    mul.s	$f1,$f23,$f1
    mul.s	$f9,$f17,$f9
    # Line 121
    sub.s	$f11,$f11,$f8
    # Line 124
    mul.s	$f8,$f31,$f25
    # Line 123
    mul.s	$f25,$f19,$f25
    sub.s	$f9,$f9,$f1
    # Line 128
    mul.s	$f1,$f17,$f12
    # Line 124
    mul.s	$f27,$f17,$f27
    # Line 123
    sub.s	$f9,$f9,$f25
    # Line 130
    mul.s	$f25,$f17,$f4
    # Line 132
    mul.s	$f17,$f17,$f18
    # Line 124
    mul.s	$f16,$f23,$f16
    # Line 122
    add.s	$f10,$f10,$f7
    # Line 128
    mul.s	$f7,$f19,$f21
    # Line 124
    sub.s	$f8,$f8,$f27
    # Line 130
    mul.s	$f27,$f31,$f21
    # Line 132
    mul.s	$f21,$f23,$f21
    # Line 124
    add.s	$f8,$f8,$f16
    # Line 129
    mul.s	$f16,$f23,$f12
    # Line 127
    mul.s	$f12,$f31,$f12
    # Line 130
    sub.s	$f25,$f25,$f27
    # Line 127
    mul.s	$f27,$f19,$f4
    # Line 128
    sub.s	$f1,$f1,$f7
    # Line 131
    mul.s	$f23,$f23,$f4
    # Line 149
    lwc1	$f7,0($a1)
    mul.s	$f4,$f6,$f1
    # Line 127
    sub.s	$f12,$f12,$f27
    # Line 149
    mul.s	$f27,$f7,$f25
    # Line 129
    mul.s	$f19,$f19,$f18
    # Line 131
    mul.s	$f31,$f31,$f18
    # Line 149
    sub.s	$f27,$f27,$f4
    mul.s	$f4,$f5,$f12
    # Line 129
    sub.s	$f16,$f16,$f19
    # Line 147
    mul.s	$f19,$f2,$f1
    # Line 131
    sub.s	$f23,$f23,$f31
    # Line 150
    mul.s	$f31,$f6,$f16
    # Line 149
    add.s	$f27,$f27,$f4
    # Line 150
    mul.s	$f4,$f29,$f12
    # Line 147
    mul.s	$f18,$f0,$f16
    # Line 132
    sub.s	$f21,$f21,$f17
    # Line 150
    sub.s	$f31,$f31,$f4
    mul.s	$f4,$f7,$f23
    # Line 147
    sub.s	$f18,$f18,$f19
    mul.s	$f19,$f3,$f21
    # Line 151
    mul.s	$f17,$f5,$f16
    # Line 150
    sub.s	$f31,$f31,$f4
    # Line 151
    mul.s	$f4,$f7,$f21
    # Line 147
    sub.s	$f18,$f18,$f19
    # Line 146
    lwc1	$f19,20($a1)
    mul.s	$f16,$f19,$f16
    # Line 151
    sub.s	$f4,$f4,$f17
    # Line 146
    mul.s	$f17,$f3,$f23
    sub.s	$f17,$f17,$f16
    mul.s	$f16,$f2,$f12
    # Line 145
    mul.s	$f12,$f0,$f12
    # Line 148
    mul.s	$f0,$f0,$f23
    # Line 146
    add.s	$f17,$f17,$f16
    # Line 145
    mul.s	$f16,$f19,$f1
    # Line 148
    mul.s	$f19,$f19,$f21
    # Line 145
    mul.s	$f3,$f3,$f25
    sub.s	$f16,$f16,$f12
    # Line 148
    sub.s	$f19,$f19,$f0
    mul.s	$f2,$f2,$f25
    # Line 145
    sub.s	$f16,$f16,$f3
    # Line 151
    mul.s	$f0,$f5,$f17
    mul.s	$f3,$f29,$f16
    mul.s	$f12,$f6,$f18
    # Line 148
    add.s	$f19,$f19,$f2
    # Line 151
    mul.s	$f7,$f7,$f19
    add.s	$f0,$f0,$f3
    # Line 65
    move	$a2,$gp
    lui	$at,0xfff5
    # Line 151
    add.s	$f12,$f12,$f0
    # Line 65
    addiu	$at,$at,25460
    # addu	gp,t9,at (gp setup)
    # Line 151
    mul.s	$f1,$f29,$f1
    add.s	$f7,$f7,$f12
    mtc1	$zero,$f12
    c.eq.s	$f7,$f12
    sd	$a2,0($sp)
    add.s	$f4,$f4,$f1
    bc1t	.L0f0dd1c8
    ldc1	$f12,16($sp)
    # Line 163
    lwc1	$f3,_lit_3f800000
    div.s	$f3,$f3,$f7
    # Line 165
    mul.s	$f0,$f29,$f25
    mul.s	$f1,$f5,$f23
    mul.s	$f2,$f6,$f21
    sub.s	$f1,$f1,$f0
    # Line 170
    mul.s	$f4,$f3,$f4
    # Line 165
    sub.s	$f1,$f1,$f2
    # Line 164
    mul.s	$f2,$f3,$f18
    # Line 163
    mul.s	$f0,$f3,$f19
    # Line 170
    swc1	$f4,20($a0)
    # Line 174
    mul.s	$f4,$f3,$f13
    # Line 165
    mul.s	$f1,$f1,$f3
    # Line 163
    swc1	$f0,0($a0)
    # Line 166
    mul.s	$f0,$f3,$f17
    # Line 164
    swc1	$f2,4($a0)
    # Line 167
    mul.s	$f2,$f3,$f8
    # Line 165
    swc1	$f1,16($a0)
    # Line 168
    mul.s	$f1,$f3,$f16
    # Line 166
    swc1	$f0,8($a0)
    # Line 169
    mul.s	$f0,$f3,$f12
    # Line 167
    swc1	$f2,32($a0)
    # Line 171
    mul.s	$f2,$f3,$f31
    # Line 168
    swc1	$f1,12($a0)
    # Line 172
    mul.s	$f1,$f3,$f9
    # Line 169
    swc1	$f0,48($a0)
    # Line 173
    mul.s	$f0,$f3,$f27
    # Line 174
    swc1	$f4,52($a0)
    # Line 177
    mul.s	$f4,$f3,$f14
    # Line 172
    swc1	$f1,36($a0)
    # Line 175
    mul.s	$f1,$f3,$f10
    # Line 173
    swc1	$f0,28($a0)
    # Line 176
    mul.s	$f0,$f3,$f11
    ld	$gp,0($sp)
    # Line 178
    mul.s	$f3,$f3,$f15
    # Line 179
    addiu	$sp,$sp,48
    # Line 171
    swc1	$f2,24($a0)
    # Line 177
    swc1	$f4,56($a0)
    # Line 175
    swc1	$f1,40($a0)
    # Line 176
    swc1	$f0,44($a0)
    # Line 179
    jr	$ra
    # Line 178
    swc1	$f3,60($a0)
.L0f0dd1c8:
    # Line 157
    li	$a1,2
    li	$a0,1
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$a2,13728
    # Line 158
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_invert4d

.rdata
_lit_3f800000:
    .word 0x3f800000

