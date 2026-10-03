# Source: ../igloo/glws/ws_cursor.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/ws_cursor.c -o ws_cursor.T
# Total Functions: 12

.text

# Function: _GLgrabCurrentCursor
# Declared: Line 67 (Source lines: 68-73)
# Address: 0x0f12a7ec - 0x0f12a848 (Size: 92 bytes, Frame: 32)
.globl _GLgrabCurrentCursor
.ent _GLgrabCurrentCursor
_GLgrabCurrentCursor:
    # Line 71
    lh	$a1,88($a0)
    # Line 68
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-30116 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 71
    la	$t9,gl_find
    la	$at,sub_0f040000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a0,$at,-28008
    beqz	$v0,.L0f12a834
    move	$a2,$v0
    ld	$gp,0($sp)
    # Line 72
    ld	$ra,8($sp)
    lw	$v0,12($a2)
    jr	$ra
    addiu	$sp,$sp,32
.L0f12a834:
    ld	$gp,0($sp)
    # Line 73
    ld	$ra,8($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end _GLgrabCurrentCursor

# Function: _GLBitmapToPixmap
# Declared: Line 76 (Source lines: 77-93)
# Address: 0x0f12a848 - 0x0f12aa20 (Size: 472 bytes, Frame: 192)
.ent _GLBitmapToPixmap
_GLBitmapToPixmap:
    # Line 77
    addiu	$sp,$sp,-64
    sd	$s4,0($sp)
    # Line 83
    lh	$s4,4($a1)
    # Line 84
    lh	$a2,6($a1)
    # Line 83
    addiu	$s4,$s4,7
    sra	$s4,$s4,0x3
    # Line 84
    mult	$a2,$s4
    sd	$s0,40($sp)
    sd	$ra,8($sp)
    sd	$s8,24($sp)
    # Line 77
    move	$s8,$a0
    # Line 84
    la	$t9,gl_malloc
    sd	$s1,16($sp)
    # Line 77
    move	$s1,$a1
    # Line 84
    la	$a1,sub_0f020000
    mflo	$a0
    jalr	$t9
    addiu	$a1,$a1,23408
    move	$s0,$v0
    # Line 85
    lh	$a4,6($s1)
    # Line 84
    move	$at,$v0
    sd	$v0,32($sp)
    # Line 85
    blez	$a4,.L0f12a9b8
    move	$a7,$zero
    la	$a6,sub_0f030000
    b	.L0f12a934
    addiu	$a6,$a6,-21152
    move	$t2,$a1
.L0f12a8b8:
    sra	$at,$t0,0x2
    move	$a4,$a2
    beqz	$at,.L0f12a924
    move	$t1,$v0
    move	$a1,$a4
    move	$v0,$t2
    move	$a2,$t1
.L0f12a8d4:
    # Line 89
    lbu	$at,0($a2)
    addu	$at,$at,$a6
    lbu	$at,0($at)
    sb	$at,0($a1)
    lbu	$a5,1($a2)
    addu	$a5,$a5,$a6
    lbu	$a5,0($a5)
    sb	$a5,1($a1)
    lbu	$a3,2($a2)
    addu	$a3,$a3,$a6
    lbu	$a3,0($a3)
    sb	$a3,2($a1)
    lbu	$v1,3($a2)
    addiu	$a1,$a1,4
    addiu	$a2,$a2,4
    addu	$v1,$v1,$a6
    lbu	$v1,0($v1)
    # Line 88
    addiu	$v0,$v0,4
    bne	$s4,$v0,.L0f12a8d4
    # Line 89
    sb	$v1,-1($a1)
.L0f12a924:
    # Line 88
    lh	$a4,6($s1)
.L0f12a928:
    # Line 85
    slt	$v1,$a7,$a4
    beqz	$v1,.L0f12a9bc
    # Line 91
    move	$a0,$s8
.L0f12a934:
    # Line 86
    lh	$a5,14($s1)
    lh	$a3,12($s1)
    mult	$a3,$a5
    mflo	$a2
    nop
    nop
    mult	$a2,$a7
    mflo	$v1
    # Line 87
    subu	$a1,$a4,$a7
    addiu	$a1,$a1,-1
    mult	$a1,$s4
    # Line 88
    move	$t0,$s4
    # Line 86
    lw	$v0,0($s1)
    # Line 85
    addiu	$a7,$a7,1
    # Line 88
    move	$a1,$zero
    # Line 86
    addu	$v0,$v0,$v1
    # Line 87
    mflo	$a2
    # Line 88
    blez	$s4,.L0f12a928
    # Line 87
    addu	$a2,$a2,$s0
    andi	$a4,$s4,0x3
    beqz	$a4,.L0f12a8b8
    move	$t2,$a1
.L0f12a98c:
    # Line 88
    addiu	$a1,$a1,1
    # Line 89
    lbu	$at,0($v0)
    addiu	$a2,$a2,1
    addiu	$v0,$v0,1
    addu	$at,$at,$a6
    lbu	$at,0($at)
    addi	$a4,$a4,-1
    bnez	$a4,.L0f12a98c
    sb	$at,-1($a2)
    b	.L0f12a8b8
    move	$t2,$a1
.L0f12a9b8:
    # Line 91
    move	$a0,$s8
.L0f12a9bc:
    lh	$a3,4($s1)
    move	$a2,$s0
    lw	$a6,132($s8)
    la	$t9,XCreateBitmapFromData
    lw	$a1,140($s8)
    sll	$a5,$a6,0x2
    addu	$a5,$a5,$a6
    sll	$a5,$a5,0x4
    addu	$a1,$a1,$a5
    jalr	$t9
    lw	$a1,8($a1)
    move	$s0,$v0
    # Line 92
    ld	$a0,32($sp)
    ld	$s8,24($sp)
    ld	$s1,16($sp)
    la	$t9,gl_free
    la	$a1,sub_0f020000
    ld	$s4,0($sp)
    jalr	$t9
    addiu	$a1,$a1,23432
    # Line 93
    ld	$ra,8($sp)
    move	$v0,$s0
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end _GLBitmapToPixmap

# Function: _GLsetwincursor
# Declared: Line 96 (Source lines: 97-125)
# Address: 0x0f12aa20 - 0x0f12ab30 (Size: 272 bytes, Frame: 192)
.ent _GLsetwincursor
_GLsetwincursor:
    # Line 97
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    lw	$at,84($a0)
    move	$s0,$a0
    sd	$s1,24($sp)
    beq	$at,$a1,.L0f12aac0
    move	$s1,$a1
    # Line 105
    move	$a2,$s1
    lw	$a1,8($s0)
    la	$t9,XDefineCursor
    lw	$a0,4($s0)
    sd	$ra,32($sp)
    jalr	$t9
    # Line 104
    sw	$s1,84($s0)
    # Line 105
    lw	$a1,140($s0)
    beqz	$a1,.L0f12aa70
    # Line 107
    la	$t9,XDefineCursor
    move	$a2,$s1
    jalr	$t9
    lw	$a0,4($s0)
.L0f12aa70:
    lw	$a1,144($s0)
    beqz	$a1,.L0f12aa88
    # Line 110
    la	$t9,XDefineCursor
    move	$a2,$s1
    jalr	$t9
    lw	$a0,4($s0)
.L0f12aa88:
    lw	$a1,136($s0)
    beqz	$a1,.L0f12aaa0
    # Line 113
    la	$t9,XDefineCursor
    move	$a2,$s1
    jalr	$t9
    lw	$a0,4($s0)
.L0f12aaa0:
    la	$v0,_GLhaveActiveGrab
    lw	$v0,0($v0)
    bnez	$v0,.L0f12aad0
    # Line 123
    la	$t9,XFlush
.L0f12aab0:
    lw	$a0,4($s0)
    jalr	$t9
    ld	$s1,24($sp)
    ld	$ra,32($sp)
.L0f12aac0:
    # Line 125
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12aad0:
    # Line 116
    la	$t9,XGrabServer
    jalr	$t9
    lw	$a0,4($s0)
    # Line 117
    la	$t9,XUngrabPointer
    move	$a1,$zero
    jalr	$t9
    lw	$a0,4($s0)
    # Line 118
    lw	$a1,64($s0)
    lw	$a0,4($s0)
    sw	$zero,4($sp)
    move	$a7,$s1
    move	$a6,$zero
    li	$a5,1
    la	$t9,XGrabPointer
    li	$a4,1
    li	$a3,76
    jalr	$t9
    li	$a2,1
    # Line 121
    la	$t9,XUngrabServer
    lw	$a0,4($s0)
    jalr	$t9
    ld	$s1,24($sp)
    b	.L0f12aab0
    # Line 123
    la	$t9,XFlush
.end _GLsetwincursor

# Function: _GLmakedefaultcursor
# Declared: Line 127 (Source lines: 128-162)
# Address: 0x0f12ab30 - 0x0f12ac58 (Size: 296 bytes, Frame: 240)
.globl _GLmakedefaultcursor
.ent _GLmakedefaultcursor
_GLmakedefaultcursor:
    # Line 137
    li	$a1,68
    # Line 128
    addiu	$sp,$sp,-112
    sd	$s0,56($sp)
    sd	$gp,72($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-30952 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 137
    la	$t9,XCreateFontCursor
    # Line 128
    move	$s0,$a0
    sd	$ra,64($sp)
    # Line 137
    jalr	$t9
    lw	$a0,4($a0)
    # Line 142
    li	$a0,24
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    # Line 137
    sw	$v0,28($s0)
    # Line 142
    jalr	$t9
    addiu	$a1,$a1,23456
    move	$a1,$v0
    # Line 143
    lw	$a2,28($s0)
    # Line 145
    sw	$zero,4($v0)
    # Line 144
    sw	$zero,16($v0)
    sw	$zero,20($v0)
    # Line 142
    la	$a0,sub_0f040000
    # Line 146
    la	$t9,gl_insert
    # Line 143
    sw	$a2,12($v0)
    # Line 142
    addiu	$a0,$a0,-28040
    # Line 146
    jalr	$t9
    addiu	$a0,$a0,32
    # Line 150
    la	$t9,_GLgetCurrentCursorColors
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 151
    addiu	$a3,$sp,12
    la	$t9,XRecolorCursor
    addiu	$a2,$sp,0
    lw	$a1,28($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 158
    addiu	$a1,$sp,40
    # Line 155
    li	$v1,16
    # Line 156
    li	$v0,1
    li	$at,2
    sh	$at,54($sp)
    sh	$v0,52($sp)
    # Line 155
    sh	$v1,44($sp)
    # Line 158
    la	$t9,sub_0f130000
    la	$ra,sub_0f040000
    # Line 155
    sh	$v1,46($sp)
    # Line 158
    addiu	$t9,$t9,-22456
    addiu	$ra,$ra,-28040
    # Line 157
    sw	$ra,40($sp)
    # Line 158
    bal _GLgrabCurrentCursor
    lw	$a0,4($s0)
    move	$a1,$v0
    move	$at,$v0
    sd	$v0,80($sp)
    # Line 159
    move	$a6,$zero
    move	$a5,$zero
    addiu	$a4,$sp,0
    la	$t9,XCreatePixmapCursor
    addiu	$a3,$sp,0
    move	$a2,$v0
    jalr	$t9
    lw	$a0,4($s0)
    # Line 161
    la	$t9,XFreePixmap
    ld	$a1,80($sp)
    lw	$a0,4($s0)
    jalr	$t9
    # Line 159
    sw	$v0,32($s0)
    # Line 162
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end _GLmakedefaultcursor

# Function: gl_g_curstype
# Declared: Line 165 (Source lines: 166-180)
# Address: 0x0f12ac58 - 0x0f12aca0 (Size: 72 bytes, Frame: 0)
.globl gl_g_curstype
.ent gl_g_curstype
gl_g_curstype:
    # Line 166
    lui	$v0,0xfff1
    addiu	$v0,$v0,-31248
    beqz	$a0,.L0f12ac98
    addu	$at,$t9,$v0
    li	$v1,1
    beq	$a0,$v1,.L0f12ac98
    li	$a1,2
    beq	$a0,$a1,.L0f12ac98
    li	$a2,3
    beq	$a0,$a2,.L0f12ac98
    li	$v0,4
    beq	$a0,$v0,.L0f12ac98
    nop
    # Line 177
    sw	$zero,-19756($at)
    # Line 180
    jr	$ra
    nop
.L0f12ac98:
    jr	$ra
    # Line 173
    sw	$a0,-19756($at)
.end gl_g_curstype

# Function: gl_g_setcursor
# Declared: Line 182 (Source lines: 183-248)
# Address: 0x0f12aca0 - 0x0f12afa0 (Size: 768 bytes, Frame: 224)
.globl gl_g_setcursor
.ent gl_g_setcursor
gl_g_setcursor:
    # Line 183
    addiu	$sp,$sp,-224
    sd	$s1,160($sp)
    sd	$gp,152($sp)
    sd	$s2,136($sp)
    lui	$s2,0xfff1
    addiu	$s2,$s2,-31320
    addu	$gp,$t9,$s2
    # Line 185
    la	$s1,gl_wstatep
    lw	$s1,0($s1)
    lw	$s1,224($s1)
    # Line 186
    li	$v0,5
    lbu	$at,44($s1)
    sd	$s0,144($sp)
    # Line 183
    move	$s0,$a0
    # Line 186
    beq	$at,$v0,.L0f12ad78
    move	$s2,$zero
    # Line 192
    bnez	$s0,.L0f12acf0
    # Line 196
    move	$a1,$s0
    # Line 195
    b	.L0f12ad20
    lw	$s2,92($s1)
.L0f12acf0:
    # Line 196
    la	$t9,gl_find
    la	$a0,sub_0f040000
    sd	$ra,176($sp)
    jalr	$t9
    addiu	$a0,$a0,-28008
    move	$a0,$v0
    beqz	$v0,.L0f12ad20
    ld	$ra,176($sp)
    lw	$a3,12($v0)
    beqz	$a3,.L0f12ad90
    sd	$v0,168($sp)
.L0f12ad1c:
    # Line 238
    lw	$s2,12($a0)
.L0f12ad20:
    beqzl	$s2,.L0f12ad48
    ld	$gp,152($sp)
    # Line 241
    lw	$a5,12($s1)
    sh	$s0,88($s1)
    lw	$a5,0($a5)
    lw	$at,84($s1)
    lw	$a5,32($a5)
    bne	$a5,$at,.L0f12ad5c
    # Line 246
    la	$t9,sub_0f130000
.L0f12ad44:
    ld	$gp,152($sp)
.L0f12ad48:
    # Line 248
    ld	$s0,144($sp)
    ld	$s1,160($sp)
    ld	$s2,136($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f12ad5c:
    # Line 246
    move	$a0,$s1
    sd	$ra,176($sp)
    addiu	$t9,$t9,-21984
    bal _GLgrabCurrentCursor
    move	$a1,$s2
    b	.L0f12ad44
    ld	$ra,176($sp)
.L0f12ad78:
    ld	$gp,152($sp)
    # Line 192
    ld	$s0,144($sp)
    ld	$s1,160($sp)
    ld	$s2,136($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f12ad90:
    # Line 198
    la	$ra,gl_sstatep
    lw	$ra,0($ra)
    lw	$ra,28($ra)
    sd	$a0,104($sp)
    lw	$ra,4($ra)
    # Line 200
    la	$t9,_GLgetCurrentCursorColors
    addiu	$a0,$sp,32
    sd	$ra,128($sp)
    jalr	$t9
    ld	$s2,168($sp)
    lw	$v0,16($s2)
    ld	$a0,104($sp)
    beqz	$v0,.L0f12ae9c
    ld	$ra,176($sp)
    # Line 204
    la	$t9,sub_0f130000
    move	$a1,$v0
    sd	$v0,112($sp)
    addiu	$t9,$t9,-22456
    # Line 206
    bal _GLgrabCurrentCursor
    ld	$a0,128($sp)
    ld	$a1,104($sp)
    move	$s2,$v0
    move	$a5,$v0
    lw	$a1,20($a1)
    sd	$v0,120($sp)
    addiu	$a4,$sp,32
    beqz	$a1,.L0f12af64
    addiu	$a4,$a4,12
    la	$t9,sub_0f130000
    sd	$a4,96($sp)
    addiu	$t9,$t9,-22456
    # Line 208
    bal _GLgrabCurrentCursor
    ld	$a0,128($sp)
    move	$a2,$v0
    move	$s2,$v0
    # Line 209
    ld	$a0,128($sp)
    ld	$a1,120($sp)
    ld	$a7,112($sp)
    ld	$a4,96($sp)
    addiu	$a3,$sp,32
    lh	$a5,8($a7)
    lh	$a6,6($a7)
    lh	$a7,10($a7)
    la	$t9,XCreatePixmapCursor
    addiu	$a3,$a3,24
    subu	$a6,$a6,$a7
    jalr	$t9
    addiu	$a6,$a6,-1
    move	$a1,$v0
    # Line 212
    addiu	$a2,$sp,32
    la	$t9,XSGIMiscSetThirdCursorColor
    # Line 209
    ld	$t0,104($sp)
    # Line 212
    ld	$a0,128($sp)
    jalr	$t9
    # Line 209
    sw	$v0,12($t0)
    # Line 213
    la	$t9,XFreePixmap
    ld	$a0,128($sp)
    jalr	$t9
    move	$a1,$s2
.L0f12ae7c:
    # Line 219
    la	$t9,XFreePixmap
    ld	$a0,128($sp)
    jalr	$t9
    ld	$a1,120($sp)
    ld	$a0,104($sp)
    ld	$ra,176($sp)
    b	.L0f12ad20
    # Line 238
    lw	$s2,12($a0)
.L0f12ae9c:
    # Line 219
    lh	$at,8($s2)
    li	$v1,4
    bnel	$at,$v1,.L0f12ad20
    # Line 238
    lw	$s2,12($a0)
    # Line 225
    addiu	$a7,$sp,76
    li	$a6,8
    move	$a5,$zero
    li	$a4,32
    la	$a1,gl_sstatep
    move	$a3,$zero
    ld	$a0,128($sp)
    lw	$a1,0($a1)
    # Line 223
    sw	$zero,72($sp)
    # Line 225
    addiu	$t0,$sp,80
    lw	$a1,28($a1)
    addiu	$t1,$sp,84
    addiu	$t2,$sp,88
    lw	$a2,0($a1)
    addiu	$t3,$sp,72
    lw	$a1,112($a1)
    lw	$a2,24($a2)
    la	$t9,XGetWindowProperty
    lw	$a1,64($a1)
    lw	$a2,8($a2)
    sw	$t3,28($sp)
    sw	$t2,20($sp)
    sw	$t1,12($sp)
    jalr	$t9
    sw	$t0,4($sp)
    lw	$a3,76($sp)
    ld	$a0,104($sp)
    li	$a5,8
    bne	$a3,$a5,.L0f12ad1c
    ld	$ra,176($sp)
    # Line 231
    lw	$a4,72($sp)
    lw	$a4,0($a4)
    # Line 232
    addiu	$a3,$sp,44
    addiu	$a2,$sp,32
    # Line 231
    sw	$a4,12($s2)
    # Line 232
    la	$t9,XRecolorCursor
    lw	$a1,72($sp)
    ld	$a0,128($sp)
    jalr	$t9
    lw	$a1,0($a1)
    # Line 233
    la	$t9,XFree
    jalr	$t9
    lw	$a0,72($sp)
    ld	$a0,104($sp)
    b	.L0f12ad1c
    ld	$ra,176($sp)
.L0f12af64:
    ld	$a0,128($sp)
    # Line 215
    ld	$a7,112($sp)
    move	$a1,$s2
    move	$a2,$s2
    lh	$a5,8($a7)
    lh	$a6,6($a7)
    lh	$a7,10($a7)
    la	$t9,XCreatePixmapCursor
    addiu	$a3,$sp,32
    subu	$a6,$a6,$a7
    jalr	$t9
    addiu	$a6,$a6,-1
    ld	$at,104($sp)
    b	.L0f12ae7c
    sw	$v0,12($at)
.end gl_g_setcursor

# Function: gl_g_curorigin
# Declared: Line 250 (Source lines: 251-292)
# Address: 0x0f12afa0 - 0x0f12b0fc (Size: 348 bytes, Frame: 208)
.globl gl_g_curorigin
.ent gl_g_curorigin
gl_g_curorigin:
    # Line 251
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$s5,0($sp)
    move	$s5,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$gp,8($sp)
    lui	$at,0xfff1
    addiu	$at,$at,-32088
    beqz	$a0,.L0f12b0e0
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 258
    la	$t9,gl_find
.L0f12afd8:
    la	$a0,sub_0f040000
    move	$a1,$s5
    jalr	$t9
    addiu	$a0,$a0,-28008
    move	$a0,$v0
    beqz	$v0,.L0f12b0c4
    ld	$ra,32($sp)
    # Line 260
    lh	$v0,8($v0)
    # Line 265
    ld	$s5,0($sp)
    # Line 260
    li	$a3,4
    beq	$v0,$a3,.L0f12b088
    ld	$gp,8($sp)
    beqz	$v0,.L0f12b064
    li	$a4,1
    beq	$v0,$a4,.L0f12b064
    li	$at,2
    beq	$v0,$at,.L0f12b098
    li	$v1,3
    beq	$v0,$v1,.L0f12b09c
    # Line 275
    slti	$a3,$s1,32
.L0f12b028:
    # Line 280
    bltz	$s1,.L0f12b0bc
    nop
.L0f12b030:
    # Line 282
    bgezl	$s0,.L0f12b040
    # Line 286
    lw	$a4,16($a0)
    # Line 284
    move	$s0,$zero
    # Line 286
    lw	$a4,16($a0)
.L0f12b040:
    sh	$s1,8($a4)
    # Line 287
    lw	$a3,16($a0)
    sh	$s0,10($a3)
.L0f12b04c:
    ld	$gp,8($sp)
    # Line 292
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f12b064:
    # Line 268
    slti	$at,$s1,16
    bnez	$at,.L0f12b078
    # Line 269
    slti	$v1,$s0,16
    li	$s1,15
    slti	$v1,$s0,16
.L0f12b078:
    bnez	$v1,.L0f12b028
    nop
    # Line 271
    b	.L0f12b028
    li	$s0,15
.L0f12b088:
    # Line 265
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f12b098:
    # Line 275
    slti	$a3,$s1,32
.L0f12b09c:
    bnez	$a3,.L0f12b0ac
    # Line 276
    slti	$a4,$s0,32
    li	$s1,31
    slti	$a4,$s0,32
.L0f12b0ac:
    bnez	$a4,.L0f12b028
    nop
    b	.L0f12b028
    # Line 278
    li	$s0,31
.L0f12b0bc:
    b	.L0f12b030
    # Line 282
    move	$s1,$zero
.L0f12b0c4:
    # Line 290
    la	$t9,gl_ErrorHandler
    lw	$a2,-14352($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,57
    b	.L0f12b04c
    ld	$ra,32($sp)
.L0f12b0e0:
    # Line 256
    la	$t9,gl_ErrorHandler
    lw	$a2,-14352($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,55
    b	.L0f12afd8
    # Line 258
    la	$t9,gl_find
.end gl_g_curorigin

# Function: gl_g_defcursor
# Declared: Line 294 (Source lines: 295-359)
# Address: 0x0f12b0fc - 0x0f12b40c (Size: 784 bytes, Frame: 224)
.globl gl_g_defcursor
.ent gl_g_defcursor
gl_g_defcursor:
    # Line 298
    li	$v0,1
    # Line 295
    addiu	$sp,$sp,-96
    sd	$s2,40($sp)
    # Line 300
    li	$s2,16
    sd	$v0,16($sp)
    sd	$s3,56($sp)
    # Line 297
    move	$s3,$zero
    sd	$a1,24($sp)
    sd	$s1,32($sp)
    # Line 295
    move	$s1,$a0
    sd	$gp,48($sp)
    lui	$at,0xfff1
    addiu	$at,$at,-32436
    # Line 300
    blez	$a0,.L0f12b3dc
    # Line 295
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$s0,64($sp)
    # Line 305
    move	$a1,$s1
    la	$a0,sub_0f040000
    la	$t9,gl_remove
    sd	$ra,72($sp)
    addiu	$a0,$a0,-28008
    jalr	$t9
    sd	$a0,8($sp)
    beqz	$v0,.L0f12b204
    move	$s0,$v0
    lw	$a1,12($s0)
    beqzl	$a1,.L0f12b194
    # Line 307
    lw	$v0,16($s0)
    # Line 305
    lh	$a3,8($s0)
    li	$a4,4
    beq	$a3,$a4,.L0f12b190
    # Line 307
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    la	$t9,XFreeCursor
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
.L0f12b190:
    lw	$v0,16($s0)
.L0f12b194:
    beqz	$v0,.L0f12b1c0
    # Line 309
    la	$t9,gl_free
    la	$a1,sub_0f020000
    lw	$a0,0($v0)
    jalr	$t9
    addiu	$a1,$a1,23480
    # Line 310
    la	$t9,gl_free
    la	$a1,sub_0f020000
    lw	$a0,16($s0)
    jalr	$t9
    addiu	$a1,$a1,23480
.L0f12b1c0:
    lw	$v0,20($s0)
    beqz	$v0,.L0f12b1f0
    # Line 313
    la	$t9,gl_free
    la	$a1,sub_0f020000
    lw	$a0,0($v0)
    jalr	$t9
    addiu	$a1,$a1,23480
    # Line 314
    la	$t9,gl_free
    la	$a1,sub_0f020000
    lw	$a0,20($s0)
    jalr	$t9
    addiu	$a1,$a1,23480
.L0f12b1f0:
    # Line 316
    la	$t9,gl_free
    la	$a1,sub_0f020000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,23480
.L0f12b204:
    # Line 318
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    li	$a0,24
    jalr	$t9
    addiu	$a1,$a1,23480
    # Line 319
    li	$at,2
    lw	$a2,-19756($gp)
    li	$a3,1
    beq	$a2,$a3,.L0f12b3cc
    # Line 318
    move	$s0,$v0
    # Line 319
    beqz	$a2,.L0f12b3d0
    li	$a4,3
    beql	$a2,$a4,.L0f12b3f4
    # Line 324
    li	$s3,1
    # Line 319
    beq	$a2,$at,.L0f12b3f4
    li	$v1,4
    beq	$a2,$v1,.L0f12b404
.L0f12b248:
    # Line 334
    ld	$a3,16($sp)
    sw	$zero,12($s0)
    # Line 333
    sh	$a2,8($s0)
    # Line 334
    beqz	$a3,.L0f12b2f8
    # Line 332
    sw	$s1,4($s0)
    # Line 336
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    li	$a0,16
    jalr	$t9
    addiu	$a1,$a1,23480
    sw	$v0,16($s0)
    # Line 337
    sh	$s2,6($v0)
    lw	$a3,16($s0)
    sh	$s2,4($a3)
    # Line 341
    la	$t9,gl_malloc
    # Line 338
    lw	$a2,16($s0)
    # Line 341
    la	$a1,sub_0f020000
    lw	$s1,0($sp)
    # Line 338
    sh	$zero,10($a2)
    # Line 341
    addiu	$a1,$a1,23480
    # Line 338
    lw	$a5,16($s0)
    # Line 341
    addu	$s1,$s1,$s1
    # Line 339
    sra	$a4,$s2,0x3
    # Line 338
    sh	$zero,8($a5)
    # Line 339
    srl	$a4,$a4,0x1c
    lw	$a5,16($s0)
    addu	$a4,$a4,$s2
    sra	$a4,$a4,0x4
    sh	$a4,12($a5)
    # Line 341
    move	$a0,$s1
    # Line 340
    lw	$a3,16($s0)
    li	$a2,2
    # Line 341
    jalr	$t9
    # Line 340
    sh	$a2,14($a3)
    # Line 341
    lw	$a3,16($s0)
    # Line 343
    move	$a2,$s1
    # Line 341
    sw	$v0,0($a3)
    # Line 343
    la	$t9,bcopy
    lw	$a1,16($s0)
    ld	$a0,24($sp)
    jalr	$t9
    lw	$a1,0($a1)
    b	.L0f12b2fc
    nop
.L0f12b2f8:
    # Line 345
    sw	$zero,16($s0)
.L0f12b2fc:
    beqz	$s3,.L0f12b394
    # Line 348
    li	$a0,16
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    ld	$s3,8($sp)
    jalr	$t9
    addiu	$a1,$a1,23480
    # Line 350
    la	$a1,sub_0f020000
    la	$t9,gl_malloc
    addiu	$a1,$a1,23480
    lw	$s1,0($sp)
    # Line 348
    sw	$v0,20($s0)
    # Line 349
    sh	$s2,6($v0)
    # Line 350
    addu	$s1,$s1,$s1
    # Line 349
    lw	$a2,20($s0)
    # Line 350
    move	$a0,$s1
    jalr	$t9
    # Line 349
    sh	$s2,4($a2)
    # Line 350
    lw	$a5,20($s0)
    # Line 352
    sra	$a4,$s2,0x3
    # Line 350
    sw	$v0,0($a5)
    # Line 352
    srl	$a4,$a4,0x1c
    lw	$a5,20($s0)
    addu	$a4,$a4,$s2
    sra	$a4,$a4,0x4
    sh	$a4,12($a5)
    # Line 354
    move	$a2,$s1
    # Line 353
    lw	$a3,20($s0)
    # Line 354
    ld	$a0,24($sp)
    # Line 353
    li	$a1,2
    sh	$a1,14($a3)
    # Line 354
    la	$t9,bcopy
    lw	$a1,20($s0)
    addu	$a0,$s1,$a0
    jalr	$t9
    lw	$a1,0($a1)
    b	.L0f12b3a0
    # Line 358
    la	$t9,gl_insert
.L0f12b394:
    # Line 356
    sw	$zero,20($s0)
    ld	$s3,8($sp)
    # Line 358
    la	$t9,gl_insert
.L0f12b3a0:
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
    ld	$gp,48($sp)
    # Line 359
    ld	$s0,64($sp)
    ld	$s1,32($sp)
    ld	$ra,72($sp)
    ld	$s2,40($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f12b3cc:
    # Line 320
    li	$s3,1
.L0f12b3d0:
    # Line 322
    li	$at,16
    b	.L0f12b248
    sw	$at,0($sp)
.L0f12b3dc:
    ld	$gp,48($sp)
    # Line 303
    ld	$s1,32($sp)
    ld	$s2,40($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f12b3f4:
    # Line 326
    li	$s2,32
    li	$v1,64
    b	.L0f12b248
    sw	$v1,0($sp)
.L0f12b404:
    b	.L0f12b248
    sd	$zero,16($sp)
.end gl_g_defcursor

# Function: gl_g_curson
# Declared: Line 361 (Source lines: 362-377)
# Address: 0x0f12b40c - 0x0f12b4bc (Size: 176 bytes, Frame: 32)
.globl gl_g_curson
.ent gl_g_curson
gl_g_curson:
    # Line 362
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    sd	$gp,0($sp)
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,32316 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 364
    la	$s1,gl_wstatep
    lw	$s1,0($s1)
    lw	$s1,224($s1)
    # Line 366
    lbu	$at,44($s1)
    li	$v0,5
    sd	$s0,16($sp)
    beq	$at,$v0,.L0f12b4a8
    move	$s0,$zero
    # Line 370
    lh	$a1,88($s1)
    bnez	$a1,.L0f12b458
    # Line 373
    la	$t9,gl_find
    # Line 372
    b	.L0f12b474
    lw	$s0,92($s1)
.L0f12b458:
    # Line 373
    la	$a0,sub_0f040000
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$a0,-28008
    beqz	$v0,.L0f12b474
    ld	$ra,24($sp)
    # Line 374
    lw	$s0,12($v0)
.L0f12b474:
    beqz	$s0,.L0f12b494
    # Line 376
    la	$t9,sub_0f130000
    move	$a0,$s1
    sd	$ra,24($sp)
    addiu	$t9,$t9,-21984
    bal _GLgrabCurrentCursor
    move	$a1,$s0
    ld	$ra,24($sp)
.L0f12b494:
    ld	$gp,0($sp)
    # Line 377
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f12b4a8:
    ld	$gp,0($sp)
    # Line 369
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_curson

# Function: gl_g_cursoff
# Declared: Line 385 (Source lines: 386-395)
# Address: 0x0f12b4bc - 0x0f12b520 (Size: 100 bytes, Frame: 16)
.globl gl_g_cursoff
.ent gl_g_cursoff
gl_g_cursoff:
    # Line 386
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff0
    addiu	$a1,$a1,32140
    addu	$gp,$t9,$a1
    # Line 387
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    lw	$a0,224($a0)
    lbu	$at,44($a0)
    li	$v0,5
    bnel	$at,$v0,.L0f12b4f8
    # Line 394
    lw	$a1,12($a0)
    ld	$gp,0($sp)
    # Line 390
    jr	$ra
    addiu	$sp,$sp,16
.L0f12b4f8:
    # Line 394
    la	$t9,sub_0f130000
    sd	$ra,8($sp)
    lw	$a1,0($a1)
    addiu	$t9,$t9,-21984
    bal _GLgrabCurrentCursor
    lw	$a1,32($a1)
    # Line 395
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_cursoff

# Function: gl_g_getcursor
# Declared: Line 400 (Source lines: 401-409)
# Address: 0x0f12b520 - 0x0f12b580 (Size: 96 bytes, Frame: 0)
.globl gl_g_getcursor
.ent gl_g_getcursor
gl_g_getcursor:
    # Line 401
    lui	$a5,0xfff0
    addiu	$a5,$a5,32040
    addu	$at,$t9,$a5
    lw	$a5,-23296($at)
    lw	$a4,0($a5)
    lw	$a4,224($a4)
    lbu	$v0,44($a4)
    li	$v1,5
    beq	$v0,$v1,.L0f12b578
    nop
    # Line 407
    lh	$a1,88($a4)
    sh	$a1,0($a0)
    # Line 408
    lw	$v1,0($a5)
    lw	$v1,224($v1)
    lw	$v0,12($v1)
    lw	$v0,0($v0)
    lw	$v1,84($v1)
    lw	$v0,32($v0)
    xor	$v0,$v0,$v1
    sltu	$v0,$zero,$v0
    # Line 409
    jr	$ra
    # Line 408
    sw	$v0,0($a3)
.L0f12b578:
    # Line 406
    jr	$ra
    nop
.end gl_g_getcursor

# Function: _GLrecolorAllCursors
# Declared: Line 411 (Source lines: 412-457)
# Address: 0x0f12b580 - 0x0f12b6dc (Size: 348 bytes, Frame: 144)
.globl _GLrecolorAllCursors
.ent _GLrecolorAllCursors
_GLrecolorAllCursors:
    # Line 412
    addiu	$sp,$sp,-144
    sd	$s1,80($sp)
    sd	$s2,56($sp)
    sd	$s3,64($sp)
    sd	$s4,72($sp)
    sd	$s5,88($sp)
    sd	$s6,128($sp)
    sd	$gp,120($sp)
    lui	$t8,0xfff0
    addiu	$t8,$t8,31944
    addu	$gp,$t9,$t8
    # Line 416
    la	$s6,gl_sstatep
    sd	$s7,96($sp)
    sd	$s8,104($sp)
    lw	$s6,0($s6)
    # Line 418
    addiu	$a0,$sp,0
    la	$t9,_GLgetCurrentCursorColors
    # Line 416
    lw	$s6,28($s6)
    sd	$ra,112($sp)
    # Line 418
    jalr	$t9
    # Line 416
    lw	$s6,4($s6)
    sd	$s0,48($sp)
    # Line 418
    li	$s4,3
    li	$s3,1
    li	$s2,4
    li	$s1,2
    addiu	$s8,$sp,0
    addiu	$s7,$s8,12
    la	$s5,sub_0f040000
    addiu	$s8,$s8,24
    sd	$s8,40($sp)
    addiu	$s5,$s5,-28040
    b	.L0f12b610
    addiu	$s8,$s5,512
.L0f12b608:
    # Line 420
    beql	$s5,$s8,.L0f12b6ac
    ld	$gp,120($sp)
.L0f12b610:
    # Line 421
    lw	$s0,32($s5)
    beqz	$s0,.L0f12b608
    # Line 420
    addiu	$s5,$s5,4
    b	.L0f12b648
    # Line 421
    lw	$a1,12($s0)
    # Line 443
    la	$t9,XRecolorCursor
.L0f12b628:
    move	$a0,$s6
    move	$a3,$s7
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 422
    lw	$s0,0($s0)
.L0f12b63c:
    beqz	$s0,.L0f12b608
    nop
    # Line 421
    lw	$a1,12($s0)
.L0f12b648:
    beqzl	$a1,.L0f12b63c
    # Line 422
    lw	$s0,0($s0)
    # Line 424
    lh	$a0,8($s0)
    beqz	$a0,.L0f12b628
    # Line 443
    la	$t9,XRecolorCursor
    # Line 424
    beq	$a0,$s1,.L0f12b628
    # Line 443
    la	$t9,XRecolorCursor
    # Line 424
    beq	$a0,$s2,.L0f12b628
    # Line 443
    la	$t9,XRecolorCursor
    # Line 424
    beq	$a0,$s3,.L0f12b680
    # Line 448
    la	$t9,XRecolorCursor
    # Line 424
    bnel	$a0,$s4,.L0f12b63c
    # Line 422
    lw	$s0,0($s0)
    # Line 448
    la	$t9,XRecolorCursor
.L0f12b680:
    move	$a0,$s6
    ld	$a2,40($sp)
    jalr	$t9
    move	$a3,$s7
    # Line 450
    la	$t9,XSGIMiscSetThirdCursorColor
    move	$a0,$s6
    addiu	$a2,$sp,0
    jalr	$t9
    lw	$a1,12($s0)
    b	.L0f12b63c
    # Line 422
    lw	$s0,0($s0)
.L0f12b6ac:
    # Line 457
    ld	$s0,48($sp)
    ld	$s1,80($sp)
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s4,72($sp)
    ld	$s5,88($sp)
    ld	$s6,128($sp)
    ld	$ra,112($sp)
    ld	$s7,96($sp)
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end _GLrecolorAllCursors

