# Source: ../igloo/xform/viewing.c
# Category: xform
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/xform/viewing.c -o viewing.T
# Total Functions: 10

.text

# Function: gl_savemmode
# Declared: Line 43 (Source lines: 43-52)
# Address: 0x0f124ce8 - 0x0f124d4c (Size: 100 bytes, Frame: 32)
.globl gl_savemmode
.ent gl_savemmode
gl_savemmode:
    # Line 43
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-6816 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19816($gp)
    beqz	$at,.L0f124d30
    sd	$ra,16($sp)
.L0f124d08:
    # Line 50
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    # Line 49
    la	$v1,gl_n_gl_savemmode
    # Line 50
    li	$a0,2
    jalr	$t9
    # Line 49
    sw	$v1,0($sp)
    # Line 52
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f124d30:
    # Line 43
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-21320
    li	$at,1
    b	.L0f124d08
    sw	$at,-19816($gp)
.end gl_savemmode

# Function: gl_n_gl_savemmode
# Declared: Line 54 (Source lines: 54-62)
# Address: 0x0f124d4c - 0x0f124dbc (Size: 112 bytes, Frame: 48)
.globl gl_n_gl_savemmode
.ent gl_n_gl_savemmode
gl_n_gl_savemmode:
    # Line 54
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a2,0xfff1
    addiu	$a2,$a2,-6916
    addu	$gp,$t9,$a2
    # Line 56
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    # Line 59
    li	$at,2
    # Line 58
    lh	$v1,264($a1)
    # Line 59
    lh	$v0,264($a1)
    sd	$s8,0($sp)
    # Line 54
    move	$s8,$a0
    # Line 59
    beq	$v0,$at,.L0f124da4
    # Line 58
    sw	$v1,268($a1)
    # Line 59
    li	$at,3
    beq	$v0,$at,.L0f124da8
    # Line 60
    la	$t9,gl_matrixmode
.L0f124d90:
    ld	$gp,8($sp)
    # Line 62
    move	$v0,$s8
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f124da4:
    # Line 60
    la	$t9,gl_matrixmode
.L0f124da8:
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,1
    b	.L0f124d90
    ld	$ra,16($sp)
.end gl_n_gl_savemmode

# Function: gl_restoremmode
# Declared: Line 67 (Source lines: 67-76)
# Address: 0x0f124dbc - 0x0f124e20 (Size: 100 bytes, Frame: 32)
.globl gl_restoremmode
.ent gl_restoremmode
gl_restoremmode:
    # Line 67
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-7028 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19812($gp)
    beqz	$at,.L0f124e04
    sd	$ra,16($sp)
.L0f124ddc:
    # Line 74
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    # Line 73
    la	$v1,gl_n_gl_restoremmode
    # Line 74
    li	$a0,2
    jalr	$t9
    # Line 73
    sw	$v1,0($sp)
    # Line 76
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f124e04:
    # Line 67
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-21304
    li	$at,1
    b	.L0f124ddc
    sw	$at,-19812($gp)
.end gl_restoremmode

# Function: gl_n_gl_restoremmode
# Declared: Line 78 (Source lines: 78-87)
# Address: 0x0f124e20 - 0x0f124e9c (Size: 124 bytes, Frame: 48)
.globl gl_n_gl_restoremmode
.ent gl_n_gl_restoremmode
gl_n_gl_restoremmode:
    # Line 78
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff1 (gp disp hi)
    # addiu	v1,v1,-7128 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    lw	$v0,268($v0)
    li	$at,2
    sd	$s8,0($sp)
    beq	$v0,$at,.L0f124e84
    move	$s8,$a0
    # Line 83
    li	$a1,3
    beq	$v0,$a1,.L0f124e70
    # Line 85
    la	$t9,gl_matrixmode
.L0f124e5c:
    ld	$gp,8($sp)
    # Line 87
    move	$v0,$s8
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f124e70:
    sd	$ra,16($sp)
    # Line 85
    jalr	$t9
    li	$a0,3
    b	.L0f124e5c
    ld	$ra,16($sp)
.L0f124e84:
    # Line 83
    la	$t9,gl_matrixmode
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,2
    b	.L0f124e5c
    ld	$ra,16($sp)
.end gl_n_gl_restoremmode

# Function: __iglooFudgeOrtho
# Declared: Line 91 (Source lines: 92-125)
# Address: 0x0f124e9c - 0x0f124fac (Size: 272 bytes, Frame: 208)
.ent __iglooFudgeOrtho
__iglooFudgeOrtho:
    # Line 92
    li	$at,-1
    addiu	$sp,$sp,-80
    sd	$a0,32($sp)
    lw	$v0,-14376($gp)
    sd	$a1,16($sp)
    sd	$a2,8($sp)
    beq	$v0,$at,.L0f124f8c
    sd	$a3,24($sp)
.L0f124ebc:
    # Line 97
    beqz	$v0,.L0f124f84
    # Line 104
    la	$t9,getsize
    addiu	$a1,$sp,4
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    ld	$v0,32($sp)
    lwc1	$f5,_lit_bf000000
    lwc1	$f4,0($v0)
    c.eq.s	$f4,$f5
    # Line 106
    ld	$a4,16($sp)
    # Line 104
    bc1f	.L0f124f84
    ld	$ra,40($sp)
    ld	$v1,8($sp)
    lwc1	$f0,0($v1)
    c.eq.s	$f0,$f5
    # Line 106
    ld	$at,24($sp)
    lw	$a5,0($sp)
    # Line 104
    bc1f	.L0f124f84
    # Line 106
    lwc1	$f5,_lit_3f000000
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f2,0($a4)
    add.s	$f2,$f2,$f5
    c.eq.s	$f1,$f2
    # Line 113
    ld	$a5,8($sp)
    # Line 106
    bc1f	.L0f124f84
    lw	$v1,4($sp)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f3,0($at)
    add.s	$f3,$f3,$f5
    c.eq.s	$f2,$f3
    nop
    bc1f	.L0f124f84
    # Line 112
    ld	$at,16($sp)
    # Line 111
    add.s	$f2,$f4,$f5
    swc1	$f2,0($v0)
    # Line 112
    lwc1	$f1,0($at)
    add.s	$f1,$f1,$f5
    swc1	$f1,0($at)
    # Line 113
    lwc1	$f0,0($a5)
    add.s	$f0,$f0,$f5
    # Line 114
    ld	$a4,24($sp)
    # Line 113
    swc1	$f0,0($a5)
    # Line 114
    lwc1	$f3,0($a4)
    add.s	$f3,$f3,$f5
    swc1	$f3,0($a4)
.L0f124f84:
    # Line 125
    jr	$ra
    addiu	$sp,$sp,80
.L0f124f8c:
    # Line 97
    la	$t9,getenv
    la	$a0,sub_0f020000
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$a0,22608
    sw	$v0,-14376($gp)
    b	.L0f124ebc
    ld	$ra,40($sp)
.end __iglooFudgeOrtho

# Function: gl_g_ortho
# Declared: Line 127 (Source lines: 128-165)
# Address: 0x0f124fac - 0x0f125184 (Size: 472 bytes, Frame: 192)
.globl gl_g_ortho
.ent gl_g_ortho
gl_g_ortho:
    # Line 128
    addiu	$sp,$sp,-192
    # Line 138
    addiu	$a3,$sp,168
    addiu	$a2,$sp,160
    addiu	$a1,$sp,152
    addiu	$a0,$sp,144
    sdc1	$f24,104($sp)
    # Line 128
    mov.s	$f24,$f17
    sdc1	$f22,96($sp)
    mov.s	$f22,$f16
    swc1	$f15,168($sp)
    sd	$gp,112($sp)
    sd	$ra,120($sp)
    lui	$ra,0xfff1
    addiu	$ra,$ra,-7524
    addu	$gp,$t9,$ra
    # Line 138
    la	$t9,sub_0f120000
    # Line 128
    swc1	$f14,160($sp)
    swc1	$f13,152($sp)
    # Line 138
    addiu	$t9,$t9,20124
    bal gl_n_gl_restoremmode
    # Line 128
    swc1	$f12,144($sp)
    # Line 141
    lwc1	$f5,160($sp)
    lwc1	$f4,168($sp)
    sub.s	$f4,$f4,$f5
    # Line 140
    lwc1	$f2,144($sp)
    lwc1	$f1,152($sp)
    sub.s	$f1,$f1,$f2
    # Line 143
    mtc1	$zero,$f5
    sdc1	$f28,128($sp)
    c.eq.s	$f1,$f5
    sdc1	$f1,88($sp)
    # Line 141
    mov.s	$f0,$f4
    # Line 143
    bc1t	.L0f12505c
    sdc1	$f4,80($sp)
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0f125060
    sub.s	$f28,$f24,$f22
    c.eq.s	$f28,$f5
    nop
    bc1f	.L0f125078
    # Line 152
    la	$t9,sub_0f120000
    b	.L0f125064
    # Line 144
    la	$t9,gl_ErrorHandler
.L0f12505c:
    # Line 143
    sub.s	$f28,$f24,$f22
.L0f125060:
    # Line 144
    la	$t9,gl_ErrorHandler
.L0f125064:
    lw	$a2,-14372($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,4
    # Line 152
    la	$t9,sub_0f120000
.L0f125078:
    addiu	$t9,$t9,22192
    bal gl_g_window
    addiu	$a0,$sp,0
    # Line 153
    lwc1	$f11,_lit_3f800000
    # Line 157
    div.s	$f15,$f11,$f28
    # Line 155
    ldc1	$f14,80($sp)
    div.s	$f14,$f11,$f14
    # Line 153
    ldc1	$f12,88($sp)
    div.s	$f11,$f11,$f12
    lwc1	$f9,_lit_40000000
    # Line 158
    add.s	$f8,$f22,$f24
    # Line 157
    lwc1	$f12,_lit_c0000000
    # Line 155
    mul.s	$f10,$f14,$f9
    # Line 156
    lwc1	$f13,168($sp)
    lwc1	$f7,160($sp)
    # Line 153
    mul.s	$f9,$f11,$f9
    # Line 156
    add.s	$f7,$f7,$f13
    # Line 157
    mul.s	$f12,$f15,$f12
    # Line 154
    lwc1	$f6,144($sp)
    lwc1	$f13,152($sp)
    # Line 156
    mul.s	$f7,$f7,$f14
    # Line 154
    add.s	$f6,$f6,$f13
    # Line 158
    mul.s	$f8,$f8,$f15
    # Line 154
    mul.s	$f6,$f6,$f11
    # Line 160
    li	$a0,42
    la	$t9,gl_nonprim_checkspace
    # Line 157
    swc1	$f12,40($sp)
    # Line 155
    swc1	$f10,20($sp)
    # Line 153
    swc1	$f9,0($sp)
    # Line 154
    neg.s	$f6,$f6
    # Line 158
    neg.s	$f8,$f8
    # Line 156
    neg.s	$f7,$f7
    # Line 158
    swc1	$f8,56($sp)
    # Line 156
    swc1	$f7,52($sp)
    # Line 160
    jalr	$t9
    # Line 154
    swc1	$f6,48($sp)
    # Line 160
    ldc1	$f22,96($sp)
    bnez	$v0,.L0f125128
    ldc1	$f28,128($sp)
    ldc1	$f24,104($sp)
    ld	$ra,120($sp)
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0f125128:
    addiu	$a1,$sp,64
    li	$a0,4
    li	$v0,42
    la	$t9,gl_compile
    la	$at,gl_n_nonprim
    sw	$v0,68($sp)
    jalr	$t9
    sw	$at,64($sp)
    # Line 162
    la	$t9,gl_savemmode
    bal gl_savemmode
    nop
    # Line 163
    la	$t9,__GLloadmatrix
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 164
    la	$t9,gl_restoremmode
    bal gl_restoremmode
    nop
    ld	$gp,112($sp)
    # Line 165
    ld	$ra,120($sp)
    ldc1	$f22,96($sp)
    ldc1	$f24,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end gl_g_ortho

# Function: gl_g_ortho2
# Declared: Line 172 (Source lines: 173-206)
# Address: 0x0f125184 - 0x0f125304 (Size: 384 bytes, Frame: 144)
.globl gl_g_ortho2
.ent gl_g_ortho2
gl_g_ortho2:
    # Line 173
    addiu	$sp,$sp,-144
    # Line 182
    addiu	$a3,$sp,136
    addiu	$a2,$sp,128
    addiu	$a1,$sp,120
    addiu	$a0,$sp,112
    # Line 173
    swc1	$f15,136($sp)
    sd	$gp,96($sp)
    sd	$ra,104($sp)
    lui	$ra,0xfff1
    addiu	$ra,$ra,-7996
    addu	$gp,$t9,$ra
    # Line 182
    la	$t9,sub_0f120000
    # Line 173
    swc1	$f14,128($sp)
    swc1	$f13,120($sp)
    # Line 182
    addiu	$t9,$t9,20124
    bal gl_n_gl_restoremmode
    # Line 173
    swc1	$f12,112($sp)
    # Line 185
    lwc1	$f7,128($sp)
    lwc1	$f6,136($sp)
    # Line 184
    lwc1	$f5,120($sp)
    # Line 185
    sub.s	$f6,$f6,$f7
    # Line 184
    lwc1	$f7,112($sp)
    sub.s	$f5,$f5,$f7
    # Line 186
    mtc1	$zero,$f7
    c.eq.s	$f5,$f7
    nop
    bc1t	.L0f125204
    # Line 185
    mov.s	$f4,$f6
    # Line 186
    c.eq.s	$f6,$f7
    sdc1	$f4,80($sp)
    bc1f	.L0f125220
    sdc1	$f5,88($sp)
.L0f125204:
    sdc1	$f4,80($sp)
    sdc1	$f5,88($sp)
    # Line 187
    la	$t9,gl_ErrorHandler
    lw	$a2,-14368($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,4
.L0f125220:
    # Line 194
    la	$t9,sub_0f120000
    addiu	$t9,$t9,22192
    bal gl_g_window
    addiu	$a0,$sp,0
    # Line 197
    ldc1	$f12,80($sp)
    # Line 195
    lwc1	$f13,_lit_3f800000
    # Line 197
    div.s	$f12,$f13,$f12
    # Line 195
    ldc1	$f14,88($sp)
    div.s	$f13,$f13,$f14
    # Line 198
    lwc1	$f9,128($sp)
    lwc1	$f14,136($sp)
    # Line 195
    lwc1	$f10,_lit_40000000
    # Line 196
    lwc1	$f8,112($sp)
    # Line 198
    add.s	$f9,$f9,$f14
    # Line 196
    lwc1	$f14,120($sp)
    # Line 197
    mul.s	$f11,$f12,$f10
    # Line 196
    add.s	$f8,$f8,$f14
    # Line 195
    mul.s	$f10,$f13,$f10
    # Line 196
    mul.s	$f8,$f8,$f13
    # Line 198
    mul.s	$f9,$f9,$f12
    # Line 199
    lwc1	$f12,_lit_bf800000
    # Line 201
    li	$a0,42
    la	$t9,gl_nonprim_checkspace
    # Line 199
    swc1	$f12,40($sp)
    # Line 197
    swc1	$f11,20($sp)
    # Line 195
    swc1	$f10,0($sp)
    # Line 198
    neg.s	$f9,$f9
    # Line 196
    neg.s	$f8,$f8
    # Line 198
    swc1	$f9,52($sp)
    # Line 201
    jalr	$t9
    # Line 196
    swc1	$f8,48($sp)
    # Line 201
    bnez	$v0,.L0f1252b4
    addiu	$a1,$sp,64
    ld	$ra,104($sp)
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f1252b4:
    li	$a0,4
    li	$v0,42
    la	$t9,gl_compile
    la	$at,gl_n_nonprim
    sw	$v0,68($sp)
    jalr	$t9
    sw	$at,64($sp)
    # Line 203
    la	$t9,gl_savemmode
    bal gl_savemmode
    nop
    # Line 204
    la	$t9,__GLloadmatrix
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 205
    la	$t9,gl_restoremmode
    bal gl_restoremmode
    nop
    # Line 206
    ld	$ra,104($sp)
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end gl_g_ortho2

# Function: gl_g_perspective
# Declared: Line 210 (Source lines: 211-242)
# Address: 0x0f125304 - 0x0f1254ec (Size: 488 bytes, Frame: 176)
.globl gl_g_perspective
.ent gl_g_perspective
gl_g_perspective:
    # Line 211
    move	$a4,$a0
    # Line 217
    slti	$at,$a0,2
    # Line 211
    addiu	$sp,$sp,-176
    sdc1	$f24,104($sp)
    mov.s	$f24,$f15
    sdc1	$f22,96($sp)
    mov.s	$f22,$f14
    sdc1	$f20,112($sp)
    mov.s	$f20,$f13
    sd	$gp,120($sp)
    lui	$v0,0xfff1
    addiu	$v0,$v0,-8380
    # Line 217
    bnez	$at,.L0f1254b8
    # Line 211
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 217
    slti	$v1,$a4,1801
    beqz	$v1,.L0f1254b8
    # Line 222
    mtc1	$zero,$f4
    c.eq.s	$f20,$f4
    nop
    bc1t	.L0f125370
    # Line 223
    lw	$a2,-14364($gp)
    # Line 222
    sub.s	$f0,$f24,$f22
    c.eq.s	$f0,$f4
    sd	$ra,128($sp)
    bc1f	.L0f1253a0
    sdc1	$f0,88($sp)
    # Line 223
    lw	$a2,-14364($gp)
.L0f125370:
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,128($sp)
    jalr	$t9
    li	$a0,4
    ld	$gp,120($sp)
    # Line 224
    ldc1	$f20,112($sp)
    ld	$ra,128($sp)
    ldc1	$f22,96($sp)
    ldc1	$f24,104($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f1253a0:
    # Line 227
    addiu	$a2,$sp,4
    addiu	$a1,$sp,0
    la	$t9,__GLgl_sincos
    srl	$a0,$a4,0x1f
    addu	$a0,$a0,$a4
    sra	$a0,$a0,0x1
    dsll32	$a0,$a0,0x10
    jalr	$t9
    dsra32	$a0,$a0,0x10
    # Line 228
    lwc1	$f2,0($sp)
    lwc1	$f1,4($sp)
    div.s	$f1,$f1,$f2
    # Line 229
    la	$t9,sub_0f120000
    addiu	$a0,$sp,8
    addiu	$t9,$t9,22192
    bal gl_g_window
    # Line 228
    swc1	$f1,4($sp)
    # Line 230
    lwc1	$f6,4($sp)
    div.s	$f5,$f6,$f20
    # Line 232
    add.s	$f4,$f22,$f24
    ldc1	$f7,88($sp)
    neg.s	$f4,$f4
    div.s	$f4,$f4,$f7
    # Line 234
    lwc1	$f3,_lit_c0000000
    mul.s	$f3,$f22,$f3
    mul.s	$f3,$f3,$f24
    div.s	$f3,$f3,$f7
    # Line 237
    li	$a0,42
    mtc1	$zero,$f8
    la	$t9,gl_nonprim_checkspace
    # Line 233
    lwc1	$f7,_lit_bf800000
    # Line 235
    swc1	$f8,68($sp)
    # Line 231
    swc1	$f6,28($sp)
    # Line 233
    swc1	$f7,52($sp)
    # Line 230
    swc1	$f5,8($sp)
    # Line 232
    swc1	$f4,48($sp)
    # Line 237
    jalr	$t9
    # Line 234
    swc1	$f3,64($sp)
    # Line 237
    ldc1	$f22,96($sp)
    bnez	$v0,.L0f125458
    ld	$ra,128($sp)
    ldc1	$f24,104($sp)
    ldc1	$f20,112($sp)
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f125458:
    addiu	$a1,$sp,72
    li	$a0,4
    li	$v0,42
    la	$t9,gl_compile
    la	$at,gl_n_nonprim
    sw	$v0,76($sp)
    jalr	$t9
    sw	$at,72($sp)
    # Line 239
    la	$t9,gl_savemmode
    bal gl_savemmode
    nop
    # Line 240
    la	$t9,__GLloadmatrix
    jalr	$t9
    addiu	$a0,$sp,8
    # Line 241
    la	$t9,gl_restoremmode
    bal gl_restoremmode
    nop
    ld	$gp,120($sp)
    # Line 242
    ldc1	$f20,112($sp)
    ld	$ra,128($sp)
    ldc1	$f22,96($sp)
    ldc1	$f24,104($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f1254b8:
    # Line 218
    move	$a2,$zero
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,128($sp)
    jalr	$t9
    li	$a0,7
    ld	$gp,120($sp)
    # Line 219
    ldc1	$f20,112($sp)
    ld	$ra,128($sp)
    ldc1	$f22,96($sp)
    ldc1	$f24,104($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end gl_g_perspective

# Function: gl_g_window
# Declared: Line 245 (Source lines: 246-277)
# Address: 0x0f1254ec - 0x0f1256b0 (Size: 452 bytes, Frame: 224)
.globl gl_g_window
.ent gl_g_window
gl_g_window:
    # Line 246
    addiu	$sp,$sp,-224
    sdc1	$f28,152($sp)
    sdc1	$f13,88($sp)
    sdc1	$f12,96($sp)
    sdc1	$f20,136($sp)
    mov.s	$f20,$f17
    sdc1	$f22,120($sp)
    mov.s	$f22,$f16
    # Line 253
    sub.s	$f0,$f13,$f12
    sd	$gp,144($sp)
    # Line 246
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-8868 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 253
    mtc1	$zero,$f4
    sdc1	$f15,104($sp)
    sdc1	$f14,80($sp)
    c.eq.s	$f0,$f4
    sdc1	$f24,128($sp)
    sub.s	$f24,$f15,$f14
    bc1t	.L0f125568
    sdc1	$f0,112($sp)
    c.eq.s	$f24,$f4
    nop
    bc1t	.L0f125570
    sub.s	$f28,$f20,$f22
    c.eq.s	$f28,$f4
    nop
    bc1f	.L0f125588
    sd	$ra,160($sp)
    b	.L0f125570
    sd	$ra,160($sp)
.L0f125568:
    sd	$ra,160($sp)
    sub.s	$f28,$f20,$f22
.L0f125570:
    # Line 254
    addiu	$a2,$gp,-15944
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,160($sp)
    jalr	$t9
    li	$a0,4
.L0f125588:
    # Line 262
    la	$t9,sub_0f120000
    addiu	$t9,$t9,22192
    bal gl_g_window
    addiu	$a0,$sp,0
    # Line 263
    lwc1	$f8,_lit_3f800000
    # Line 264
    div.s	$f3,$f8,$f24
    # Line 263
    ldc1	$f7,112($sp)
    div.s	$f7,$f8,$f7
    # Line 267
    div.s	$f8,$f8,$f28
    # Line 269
    lwc1	$f6,_lit_c0000000
    mul.s	$f6,$f22,$f6
    # Line 265
    ldc1	$f4,96($sp)
    # Line 266
    ldc1	$f10,104($sp)
    ldc1	$f5,80($sp)
    # Line 269
    mul.s	$f6,$f6,$f20
    # Line 263
    lwc1	$f2,_lit_40000000
    # Line 266
    add.s	$f5,$f5,$f10
    # Line 265
    ldc1	$f10,88($sp)
    # Line 263
    mul.s	$f2,$f22,$f2
    # Line 265
    add.s	$f4,$f4,$f10
    # Line 269
    mul.s	$f6,$f6,$f8
    # Line 265
    mul.s	$f4,$f4,$f7
    # Line 266
    mul.s	$f5,$f5,$f3
    # Line 272
    li	$a0,42
    la	$t9,gl_nonprim_checkspace
    # Line 264
    mul.s	$f3,$f2,$f3
    mtc1	$zero,$f9
    # Line 267
    add.s	$f1,$f22,$f20
    # Line 263
    mul.s	$f2,$f2,$f7
    # Line 268
    lwc1	$f7,_lit_bf800000
    # Line 270
    swc1	$f9,60($sp)
    # Line 267
    mul.s	$f1,$f1,$f8
    # Line 268
    swc1	$f7,44($sp)
    # Line 269
    swc1	$f6,56($sp)
    # Line 266
    swc1	$f5,36($sp)
    # Line 265
    swc1	$f4,32($sp)
    # Line 264
    swc1	$f3,20($sp)
    # Line 263
    swc1	$f2,0($sp)
    # Line 267
    neg.s	$f1,$f1
    # Line 272
    jalr	$t9
    # Line 267
    swc1	$f1,40($sp)
    ldc1	$f28,152($sp)
    # Line 272
    ldc1	$f22,120($sp)
    bnez	$v0,.L0f125650
    ld	$ra,160($sp)
    ldc1	$f24,128($sp)
    ldc1	$f20,136($sp)
    ld	$gp,144($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f125650:
    addiu	$a1,$sp,64
    li	$a0,4
    li	$v0,42
    la	$t9,gl_compile
    la	$at,gl_n_nonprim
    sw	$v0,68($sp)
    jalr	$t9
    sw	$at,64($sp)
    # Line 274
    la	$t9,gl_savemmode
    bal gl_savemmode
    nop
    # Line 275
    la	$t9,__GLloadmatrix
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 276
    la	$t9,gl_restoremmode
    bal gl_restoremmode
    nop
    ld	$gp,144($sp)
    # Line 277
    ldc1	$f20,136($sp)
    ld	$ra,160($sp)
    ldc1	$f22,120($sp)
    ldc1	$f24,128($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end gl_g_window

# Function: gl_identifymatrix
# Declared: Line 280 (Source lines: 282-301)
# Address: 0x0f1256b0 - 0x0f1256fc (Size: 76 bytes, Frame: 0)
.ent gl_identifymatrix
gl_identifymatrix:
    # Line 282
    lwc1	$f0,_lit_3f800000
    # Line 283
    mtc1	$zero,$f1
    # Line 300
    swc1	$f0,60($a0)
    # Line 299
    swc1	$f1,56($a0)
    # Line 298
    swc1	$f1,52($a0)
    # Line 297
    swc1	$f1,48($a0)
    # Line 295
    swc1	$f1,44($a0)
    # Line 294
    swc1	$f0,40($a0)
    # Line 293
    swc1	$f1,36($a0)
    # Line 292
    swc1	$f1,32($a0)
    # Line 290
    swc1	$f1,28($a0)
    # Line 289
    swc1	$f1,24($a0)
    # Line 288
    swc1	$f0,20($a0)
    # Line 287
    swc1	$f1,16($a0)
    # Line 285
    swc1	$f1,12($a0)
    # Line 284
    swc1	$f1,8($a0)
    # Line 283
    swc1	$f1,4($a0)
    # Line 301
    jr	$ra
    # Line 282
    swc1	$f0,0($a0)
.end gl_identifymatrix

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_bf000000:
    .word 0xbf000000
_lit_bf800000:
    .word 0xbf800000
_lit_c0000000:
    .word 0xc0000000

