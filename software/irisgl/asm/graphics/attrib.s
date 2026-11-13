# Source: ../igloo/graphics/attrib.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/attrib.c -o attrib.T
# Total Functions: 38

.text

# Function: gl_i_pntsize
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f093adc - 0x0f093b30 (Size: 84 bytes, Frame: 48)
.globl gl_i_pntsize
.ent gl_i_pntsize
gl_i_pntsize:
    # Line 29
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-2196 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f093b10
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f093b10:
    la	$t9,glPointSize
    mtc1	$a0,$f12
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_pntsize

# Function: gl_c_pntsize
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f093b30 - 0x0f093ba8 (Size: 120 bytes, Frame: 192)
.globl gl_c_pntsize
.ent gl_c_pntsize
gl_c_pntsize:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-2280 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21164($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f093b8c
    move	$s8,$a0
.L0f093b58:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pntsize
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f093b8c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28376
    li	$a1,1
    b	.L0f093b58
    sw	$a1,-21164($gp)
.end gl_c_pntsize

# Function: gl_n_pntsize
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f093ba8 - 0x0f093c0c (Size: 100 bytes, Frame: 48)
.globl gl_n_pntsize
.ent gl_n_pntsize
gl_n_pntsize:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-2400 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f093be0
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f093be0:
    lh	$v1,0($s8)
    la	$t9,glPointSize
    mtc1	$v1,$f12
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pntsize

# Function: gl_i_pntsizef
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f093c0c - 0x0f093c60 (Size: 84 bytes, Frame: 48)
.globl gl_i_pntsizef
.ent gl_i_pntsizef
gl_i_pntsizef:
    # Line 30
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-2500 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    mov.s	$f4,$f12
    beqz	$at,.L0f093c44
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sdc1	$f4,8($sp)
    ldc1	$f4,8($sp)
.L0f093c44:
    la	$t9,glPointSize
    jalr	$t9
    mov.s	$f12,$f4
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_pntsizef

# Function: gl_c_pntsizef
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f093c60 - 0x0f093cd4 (Size: 116 bytes, Frame: 192)
.globl gl_c_pntsizef
.ent gl_c_pntsizef
gl_c_pntsizef:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-2584 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21160($gp)
    sd	$ra,32($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f093cb8
    mov.s	$f30,$f12
.L0f093c88:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_pntsizef
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f093cb8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28392
    li	$at,1
    b	.L0f093c88
    sw	$at,-21160($gp)
.end gl_c_pntsizef

# Function: gl_n_pntsizef
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f093cd4 - 0x0f093d30 (Size: 92 bytes, Frame: 48)
.globl gl_n_pntsizef
.ent gl_n_pntsizef
gl_n_pntsizef:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-2700 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f093d0c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f093d0c:
    la	$t9,glPointSize
    jalr	$t9
    lwc1	$f12,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pntsizef

# Function: gl_i_linewidth
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f093d30 - 0x0f093dfc (Size: 204 bytes, Frame: 48)
.globl gl_i_linewidth
.ent gl_i_linewidth
gl_i_linewidth:
    # Line 32
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-2792 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s7,8($sp)
    beqz	$at,.L0f093d6c
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f093d6c:
    mtc1	$s7,$f0
    la	$v1,gl_wstatep
    cvt.s.w	$f0,$f0
    lw	$v1,0($v1)
    lw	$v1,276($v1)
    move	$a0,$s7
    beqz	$s7,.L0f093dc8
    swc1	$f0,16($v1)
    sd	$ra,24($sp)
.L0f093d90:
    la	$t9,__iglooLineWidth
    mtc1	$a0,$f12
    jalr	$t9
    cvt.s.w	$f12,$f12
    la	$t9,__iglooGetRenderMode
    jalr	$t9
    nop
    li	$a1,7169
    beq	$v0,$a1,.L0f093dd4
    ld	$ra,24($sp)
.L0f093db8:
    ld	$gp,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f093dc8:
    sd	$ra,24($sp)
    b	.L0f093d90
    li	$a0,1
.L0f093dd4:
    sh	$s7,2($sp)
    la	$t9,glPassThrough
    li	$a3,63
    li	$a2,4
    sb	$a2,1($sp)
    sb	$a3,0($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f093db8
    ld	$ra,24($sp)
.end gl_i_linewidth

# Function: gl_c_linewidth
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f093dfc - 0x0f093e74 (Size: 120 bytes, Frame: 192)
.globl gl_c_linewidth
.ent gl_c_linewidth
gl_c_linewidth:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-2996 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21156($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f093e58
    move	$s8,$a0
.L0f093e24:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_linewidth
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f093e58:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28408
    li	$a1,1
    b	.L0f093e24
    sw	$a1,-21156($gp)
.end gl_c_linewidth

# Function: gl_n_linewidth
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f093e74 - 0x0f093f50 (Size: 220 bytes, Frame: 48)
.globl gl_n_linewidth
.ent gl_n_linewidth
gl_n_linewidth:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-3116 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s7,16($sp)
    beqz	$at,.L0f093eb0
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f093eb0:
    lh	$a1,0($s7)
    la	$v1,gl_wstatep
    mtc1	$a1,$f0
    lw	$v1,0($v1)
    cvt.s.w	$f0,$f0
    lw	$v1,276($v1)
    swc1	$f0,16($v1)
    lh	$a2,0($s7)
    beqz	$a2,.L0f093f1c
    li	$a0,1
    move	$a0,$a2
    sd	$ra,24($sp)
.L0f093ee0:
    la	$t9,__iglooLineWidth
    mtc1	$a0,$f12
    jalr	$t9
    cvt.s.w	$f12,$f12
    la	$t9,__iglooGetRenderMode
    jalr	$t9
    nop
    li	$a2,7169
    beq	$v0,$a2,.L0f093f24
    ld	$ra,24($sp)
.L0f093f08:
    ld	$gp,8($sp)
    addiu	$v0,$s7,4
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f093f1c:
    b	.L0f093ee0
    sd	$ra,24($sp)
.L0f093f24:
    la	$t9,glPassThrough
    li	$a5,63
    li	$a4,4
    lh	$a3,0($s7)
    sb	$a4,1($sp)
    sb	$a5,0($sp)
    sh	$a3,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f093f08
    ld	$ra,24($sp)
.end gl_n_linewidth

# Function: gl_i_linewidthf
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f093f50 - 0x0f094028 (Size: 216 bytes, Frame: 48)
.globl gl_i_linewidthf
.ent gl_i_linewidthf
gl_i_linewidthf:
    # Line 33
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-3336 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f093f88
    sdc1	$f12,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f093f88:
    la	$v1,gl_wstatep
    mtc1	$zero,$f1
    ldc1	$f0,8($sp)
    lw	$v1,0($v1)
    c.eq.s	$f0,$f1
    lw	$v1,276($v1)
    lwc1	$f12,_lit_3f800000
    bc1f	.L0f093fb4
    swc1	$f0,16($v1)
    b	.L0f093fbc
    sd	$ra,24($sp)
.L0f093fb4:
    ldc1	$f12,8($sp)
    sd	$ra,24($sp)
.L0f093fbc:
    la	$t9,__iglooLineWidth
    jalr	$t9
    nop
    la	$t9,__iglooGetRenderMode
    jalr	$t9
    nop
    li	$a0,7169
    beq	$v0,$a0,.L0f093fec
    ld	$ra,24($sp)
.L0f093fe0:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f093fec:
    lwc1	$f3,_lit_43000000
    ldc1	$f2,8($sp)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    la	$t9,glPassThrough
    li	$a3,63
    li	$a2,5
    mfc1	$a1,$f2
    sb	$a2,1($sp)
    sb	$a3,0($sp)
    sh	$a1,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f093fe0
    ld	$ra,24($sp)
.end gl_i_linewidthf

# Function: gl_c_linewidthf
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f094028 - 0x0f09409c (Size: 116 bytes, Frame: 192)
.globl gl_c_linewidthf
.ent gl_c_linewidthf
gl_c_linewidthf:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-3552 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21152($gp)
    sd	$ra,32($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f094080
    mov.s	$f30,$f12
.L0f094050:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_linewidthf
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f094080:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28424
    li	$at,1
    b	.L0f094050
    sw	$at,-21152($gp)
.end gl_c_linewidthf

# Function: gl_n_linewidthf
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f09409c - 0x0f094188 (Size: 236 bytes, Frame: 48)
.globl gl_n_linewidthf
.ent gl_n_linewidthf
gl_n_linewidthf:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-3668 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s7,16($sp)
    beqz	$at,.L0f0940d8
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f0940d8:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    lwc1	$f1,0($s7)
    lw	$v1,276($v1)
    swc1	$f1,16($v1)
    mtc1	$zero,$f0
    lwc1	$f4,0($s7)
    c.eq.s	$f4,$f0
    nop
    bc1f	.L0f094110
    mov.s	$f12,$f4
    sd	$ra,24($sp)
    b	.L0f094114
    lwc1	$f12,_lit_3f800000
.L0f094110:
    sd	$ra,24($sp)
.L0f094114:
    la	$t9,__iglooLineWidth
    jalr	$t9
    nop
    la	$t9,__iglooGetRenderMode
    jalr	$t9
    nop
    li	$a1,7169
    beq	$v0,$a1,.L0f09414c
    ld	$ra,24($sp)
.L0f094138:
    ld	$gp,8($sp)
    addiu	$v0,$s7,4
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09414c:
    lwc1	$f3,_lit_43000000
    lwc1	$f2,0($s7)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    la	$t9,glPassThrough
    li	$a4,63
    li	$a3,5
    mfc1	$a2,$f2
    sb	$a3,1($sp)
    sb	$a4,0($sp)
    sh	$a2,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f094138
    ld	$ra,24($sp)
.end gl_n_linewidthf

# Function: _CallOpenGLCulling
# Declared: Line 51 (Source lines: 52-72)
# Address: 0x0f094188 - 0x0f094228 (Size: 160 bytes, Frame: 32)
.ent _CallOpenGLCulling
_CallOpenGLCulling:
    # Line 52
    beqz	$a1,.L0f0941c0
    addiu	$sp,$sp,-32
    beqz	$a0,.L0f0941ec
    sd	$ra,0($sp)
    # Line 58
    la	$t9,glCullFace
    jalr	$t9
    li	$a0,1032
    # Line 59
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2884
    ld	$ra,0($sp)
.L0f0941b8:
    # Line 72
    jr	$ra
    addiu	$sp,$sp,32
.L0f0941c0:
    # Line 62
    beqz	$a0,.L0f094210
    sd	$ra,0($sp)
    # Line 66
    la	$t9,glCullFace
    jalr	$t9
    li	$a0,1028
    # Line 67
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2884
    b	.L0f0941b8
    ld	$ra,0($sp)
.L0f0941ec:
    # Line 61
    la	$t9,glCullFace
    jalr	$t9
    li	$a0,1029
    # Line 62
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2884
    b	.L0f0941b8
    ld	$ra,0($sp)
.L0f094210:
    # Line 69
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,2884
    b	.L0f0941b8
    ld	$ra,0($sp)
.end _CallOpenGLCulling

# Function: __gl_backface
# Declared: Line 74 (Source lines: 75-87)
# Address: 0x0f094228 - 0x0f094294 (Size: 108 bytes, Frame: 32)
.globl __gl_backface
.ent __gl_backface
__gl_backface:
    # Line 75
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a4,0xfffa
    addiu	$a4,$a4,-4064
    addu	$gp,$t9,$a4
    # Line 77
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lh	$a5,3020($a3)
    # Line 75
    move	$a1,$a0
    # Line 84
    li	$at,-5
    # Line 77
    beqz	$a0,.L0f094284
    andi	$a4,$a5,0x8
    # Line 82
    ori	$at,$a5,0x4
    sd	$ra,8($sp)
    sh	$at,3020($a3)
.L0f094264:
    # Line 86
    la	$t9,sub_0f090000
    addiu	$t9,$t9,16776
    bal gl_n_linewidthf
    move	$a0,$a4
    # Line 87
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f094284:
    # Line 84
    and	$at,$a5,$at
    sd	$ra,8($sp)
    b	.L0f094264
    sh	$at,3020($a3)
.end __gl_backface

# Function: __gl_frontface
# Declared: Line 89 (Source lines: 90-102)
# Address: 0x0f094294 - 0x0f0942fc (Size: 104 bytes, Frame: 32)
.globl __gl_frontface
.ent __gl_frontface
__gl_frontface:
    # Line 90
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a4,0xfffa
    addiu	$a4,$a4,-4172
    addu	$gp,$t9,$a4
    # Line 92
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lh	$a4,3020($a3)
    # Line 99
    li	$at,-9
    # Line 92
    beqz	$a0,.L0f0942ec
    andi	$a1,$a4,0x4
    # Line 97
    ori	$at,$a4,0x8
    sd	$ra,8($sp)
    sh	$at,3020($a3)
.L0f0942cc:
    # Line 101
    la	$t9,sub_0f090000
    addiu	$t9,$t9,16776
    bal gl_n_linewidthf
    nop
    # Line 102
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0942ec:
    # Line 99
    and	$at,$a4,$at
    sd	$ra,8($sp)
    b	.L0f0942cc
    sh	$at,3020($a3)
.end __gl_frontface

# Function: gl_i_backface
# Declared: Line 105 (Source lines: 105-105)
# Address: 0x0f0942fc - 0x0f09434c (Size: 80 bytes, Frame: 48)
.globl gl_i_backface
.ent gl_i_backface
gl_i_backface:
    # Line 105
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-4276 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f094330
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f094330:
    la	$t9,__gl_backface
    bal __gl_backface
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_backface

# Function: gl_c_backface
# Declared: Line 105 (Source lines: 105-105)
# Address: 0x0f09434c - 0x0f0943c0 (Size: 116 bytes, Frame: 192)
.globl gl_c_backface
.ent gl_c_backface
gl_c_backface:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-4356 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21148($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0943a4
    move	$s8,$a0
.L0f094374:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_backface
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0943a4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28440
    li	$a1,1
    b	.L0f094374
    sw	$a1,-21148($gp)
.end gl_c_backface

# Function: gl_n_backface
# Declared: Line 105 (Source lines: 105-105)
# Address: 0x0f0943c0 - 0x0f09441c (Size: 92 bytes, Frame: 48)
.globl gl_n_backface
.ent gl_n_backface
gl_n_backface:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-4472 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0943f8
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0943f8:
    la	$t9,__gl_backface
    bal __gl_backface
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_backface

# Function: gl_i_frontface
# Declared: Line 106 (Source lines: 106-106)
# Address: 0x0f09441c - 0x0f09446c (Size: 80 bytes, Frame: 48)
.globl gl_i_frontface
.ent gl_i_frontface
gl_i_frontface:
    # Line 106
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-4564 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f094450
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f094450:
    la	$t9,__gl_frontface
    bal __gl_frontface
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_frontface

# Function: gl_c_frontface
# Declared: Line 106 (Source lines: 106-106)
# Address: 0x0f09446c - 0x0f0944e0 (Size: 116 bytes, Frame: 192)
.globl gl_c_frontface
.ent gl_c_frontface
gl_c_frontface:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-4644 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21144($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0944c4
    move	$s8,$a0
.L0f094494:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_frontface
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0944c4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28456
    li	$a1,1
    b	.L0f094494
    sw	$a1,-21144($gp)
.end gl_c_frontface

# Function: gl_n_frontface
# Declared: Line 106 (Source lines: 106-106)
# Address: 0x0f0944e0 - 0x0f09453c (Size: 92 bytes, Frame: 48)
.globl gl_n_frontface
.ent gl_n_frontface
gl_n_frontface:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-4760 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f094518
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f094518:
    la	$t9,__gl_frontface
    bal __gl_frontface
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_frontface

# Function: gl_writemask
# Declared: Line 115 (Source lines: 116-121)
# Address: 0x0f09453c - 0x0f094584 (Size: 72 bytes, Frame: 32)
.globl gl_writemask
.ent gl_writemask
gl_writemask:
    # Line 116
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-4852 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 119
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$ra,0($sp)
    lw	$a1,12112($at)
    la	$t9,__iglooIndexMask
    lw	$at,12116($at)
    sllv	$a0,$a0,$a1
    jalr	$t9
    and	$a0,$at,$a0
    # Line 121
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_writemask

# Function: gl_i_writemask
# Declared: Line 124 (Source lines: 124-124)
# Address: 0x0f094584 - 0x0f0945d4 (Size: 80 bytes, Frame: 48)
.globl gl_i_writemask
.ent gl_i_writemask
gl_i_writemask:
    # Line 124
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-4924 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0945b8
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0945b8:
    la	$t9,gl_writemask
    bal gl_writemask
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_writemask

# Function: gl_c_writemask
# Declared: Line 124 (Source lines: 124-124)
# Address: 0x0f0945d4 - 0x0f09464c (Size: 120 bytes, Frame: 192)
.globl gl_c_writemask
.ent gl_c_writemask
gl_c_writemask:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-5004 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21140($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f094630
    move	$s8,$a0
.L0f0945fc:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_writemask
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f094630:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28472
    li	$a1,1
    b	.L0f0945fc
    sw	$a1,-21140($gp)
.end gl_c_writemask

# Function: gl_n_writemask
# Declared: Line 124 (Source lines: 124-124)
# Address: 0x0f09464c - 0x0f0946a8 (Size: 92 bytes, Frame: 48)
.globl gl_n_writemask
.ent gl_n_writemask
gl_n_writemask:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-5124 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f094684
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f094684:
    la	$t9,gl_writemask
    bal gl_writemask
    lhu	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_writemask

# Function: __gl_RGBwritemask
# Declared: Line 131 (Source lines: 132-169)
# Address: 0x0f0946a8 - 0x0f0946e8 (Size: 64 bytes, Frame: 48)
.globl __gl_RGBwritemask
.ent __gl_RGBwritemask
__gl_RGBwritemask:
    # Line 168
    li	$a3,1
    sltu	$a2,$zero,$a2
    # Line 132
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-5216 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 168
    la	$t9,__iglooColorMask
    sltu	$a1,$zero,$a1
    sd	$ra,0($sp)
    jalr	$t9
    sltu	$a0,$zero,$a0
    # Line 169
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gl_RGBwritemask

# Function: gl_i_RGBwritemask
# Declared: Line 172 (Source lines: 172-172)
# Address: 0x0f0946e8 - 0x0f094748 (Size: 96 bytes, Frame: 208)
.globl gl_i_RGBwritemask
.ent gl_i_RGBwritemask
gl_i_RGBwritemask:
    # Line 172
    addiu	$sp,$sp,-80
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-5280 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09472c
    sd	$ra,32($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a2,24($sp)
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
.L0f09472c:
    la	$t9,__gl_RGBwritemask
    bal __gl_RGBwritemask
    nop
    ld	$ra,32($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_RGBwritemask

# Function: gl_c_RGBwritemask
# Declared: Line 172 (Source lines: 172-172)
# Address: 0x0f094748 - 0x0f0947dc (Size: 148 bytes, Frame: 224)
.globl gl_c_RGBwritemask
.ent gl_c_RGBwritemask
gl_c_RGBwritemask:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-5376 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21136($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0947b0
    move	$s8,$a0
.L0f094774:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_RGBwritemask
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0947b0:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,28488
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-21136($gp)
    b	.L0f094774
    ld	$a2,40($sp)
.end gl_c_RGBwritemask

# Function: gl_n_RGBwritemask
# Declared: Line 172 (Source lines: 172-172)
# Address: 0x0f0947dc - 0x0f094840 (Size: 100 bytes, Frame: 48)
.globl gl_n_RGBwritemask
.ent gl_n_RGBwritemask
gl_n_RGBwritemask:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-5524 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f094814
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f094814:
    la	$t9,__gl_RGBwritemask
    lh	$a2,4($s8)
    lh	$a1,2($s8)
    bal __gl_RGBwritemask
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_RGBwritemask

# Function: gl_g_gRGBmask
# Declared: Line 175 (Source lines: 176-183)
# Address: 0x0f094840 - 0x0f0948e0 (Size: 160 bytes, Frame: 208)
.globl gl_g_gRGBmask
.ent gl_g_gRGBmask
gl_g_gRGBmask:
    # Line 176
    addiu	$sp,$sp,-80
    sd	$s8,16($sp)
    move	$s8,$a0
    # Line 178
    addiu	$a0,$sp,0
    sd	$gp,24($sp)
    # Line 176
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-5624 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 178
    la	$t9,__iglooGetColorMask
    sd	$a2,32($sp)
    sd	$ra,8($sp)
    jalr	$t9
    sd	$a1,40($sp)
    ld	$a1,32($sp)
    lbu	$v0,0($sp)
    ld	$a0,40($sp)
    beqz	$v0,.L0f0948c0
    ld	$ra,8($sp)
    # Line 180
    li	$a2,255
.L0f09488c:
    sh	$a2,0($s8)
    lbu	$v1,1($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    beqz	$v1,.L0f0948cc
    # Line 181
    li	$a2,255
.L0f0948a4:
    sh	$a2,0($a0)
    lbu	$a3,2($sp)
    beqz	$a3,.L0f0948d8
    # Line 182
    li	$a0,255
.L0f0948b4:
    sh	$a0,0($a1)
    # Line 183
    jr	$ra
    addiu	$sp,$sp,80
.L0f0948c0:
    # Line 180
    move	$a2,$zero
    b	.L0f09488c
    nop
.L0f0948cc:
    # Line 181
    move	$a2,$zero
    b	.L0f0948a4
    ld	$s8,16($sp)
.L0f0948d8:
    b	.L0f0948b4
    # Line 182
    move	$a0,$zero
.end gl_g_gRGBmask

# Function: __gl_wmpack
# Declared: Line 185 (Source lines: 186-213)
# Address: 0x0f0948e0 - 0x0f094938 (Size: 88 bytes, Frame: 32)
.globl __gl_wmpack
.ent __gl_wmpack
__gl_wmpack:
    # Line 212
    andi	$a1,$a0,0xff00
    sltu	$a1,$zero,$a1
    # Line 186
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 212
    lui	$a2,0xff
    lui	$a3,0xff00
    and	$a3,$a0,$a3
    and	$a2,$a0,$a2
    andi	$a0,$a0,0xff
    sd	$gp,8($sp)
    # Line 186
    lui	$a4,0xfffa
    addiu	$a4,$a4,-5784
    addu	$gp,$t9,$a4
    # Line 212
    la	$t9,__iglooColorMask
    sltu	$a3,$zero,$a3
    sltu	$a2,$zero,$a2
    jalr	$t9
    sltu	$a0,$zero,$a0
    # Line 213
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gl_wmpack

# Function: gl_i_wmpack
# Declared: Line 215 (Source lines: 215-215)
# Address: 0x0f094938 - 0x0f094988 (Size: 80 bytes, Frame: 48)
.globl gl_i_wmpack
.ent gl_i_wmpack
gl_i_wmpack:
    # Line 215
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-5872 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09496c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09496c:
    la	$t9,__gl_wmpack
    bal __gl_wmpack
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_wmpack

# Function: gl_c_wmpack
# Declared: Line 215 (Source lines: 215-215)
# Address: 0x0f094988 - 0x0f0949fc (Size: 116 bytes, Frame: 192)
.globl gl_c_wmpack
.ent gl_c_wmpack
gl_c_wmpack:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-5952 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21132($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0949e0
    move	$s8,$a0
.L0f0949b0:
    addiu	$a1,$sp,0
    li	$a0,6
    la	$t9,gl_compile
    la	$v1,gl_n_wmpack
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0949e0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28504
    li	$a1,1
    b	.L0f0949b0
    sw	$a1,-21132($gp)
.end gl_c_wmpack

# Function: gl_n_wmpack
# Declared: Line 215 (Source lines: 215-215)
# Address: 0x0f0949fc - 0x0f094a58 (Size: 92 bytes, Frame: 48)
.globl gl_n_wmpack
.ent gl_n_wmpack
gl_n_wmpack:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-6068 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f094a34
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f094a34:
    la	$t9,__gl_wmpack
    bal __gl_wmpack
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_wmpack

# Function: gl_shademodel
# Declared: Line 225 (Source lines: 226-263)
# Address: 0x0f094a58 - 0x0f094b0c (Size: 180 bytes, Frame: 48)
.globl gl_shademodel
.ent gl_shademodel
gl_shademodel:
    # Line 226
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-6160 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 227
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    sd	$a0,0($sp)
    move	$at,$a2
    beqz	$a0,.L0f094a9c
    sd	$a2,8($sp)
    # Line 233
    la	$t9,__iglooShadeModel
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,7425
    b	.L0f094adc
    ld	$ra,24($sp)
.L0f094a9c:
    la	$v0,gl_iglooGouraudCIDepthCue
    lw	$v0,0($v0)
    beqz	$v0,.L0f094af8
    # Line 256
    la	$t9,__iglooShadeModel
    # Line 246
    lw	$v1,4100($zero)
    lw	$v1,20($v1)
    lw	$v1,16($v1)
    bnez	$v1,.L0f094ac8
    li	$at,1
    lw	$a1,2904($a2)
    beq	$a1,$at,.L0f094adc
.L0f094ac8:
    # Line 248
    la	$t9,__iglooShadeModel
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,7424
    ld	$ra,24($sp)
.L0f094adc:
    ld	$v1,8($sp)
    ld	$gp,16($sp)
    # Line 262
    ld	$v0,0($sp)
    lw	$v1,276($v1)
    # Line 263
    addiu	$sp,$sp,48
    jr	$ra
    # Line 262
    sw	$v0,20($v1)
.L0f094af8:
    sd	$ra,24($sp)
    # Line 256
    jalr	$t9
    li	$a0,7424
    b	.L0f094adc
    ld	$ra,24($sp)
.end gl_shademodel

# Function: gl_i_shademodel
# Declared: Line 265 (Source lines: 265-265)
# Address: 0x0f094b0c - 0x0f094b5c (Size: 80 bytes, Frame: 48)
.globl gl_i_shademodel
.ent gl_i_shademodel
gl_i_shademodel:
    # Line 265
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-6340 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f094b40
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f094b40:
    la	$t9,gl_shademodel
    bal gl_shademodel
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_shademodel

# Function: gl_c_shademodel
# Declared: Line 265 (Source lines: 265-265)
# Address: 0x0f094b5c - 0x0f094bd0 (Size: 116 bytes, Frame: 192)
.globl gl_c_shademodel
.ent gl_c_shademodel
gl_c_shademodel:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-6420 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21128($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f094bb4
    move	$s8,$a0
.L0f094b84:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_shademodel
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f094bb4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28520
    li	$a1,1
    b	.L0f094b84
    sw	$a1,-21128($gp)
.end gl_c_shademodel

# Function: gl_n_shademodel
# Declared: Line 265 (Source lines: 265-265)
# Address: 0x0f094bd0 - 0x0f094c2c (Size: 92 bytes, Frame: 48)
.globl gl_n_shademodel
.ent gl_n_shademodel
gl_n_shademodel:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-6536 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f094c08
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f094c08:
    la	$t9,gl_shademodel
    bal gl_shademodel
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_shademodel

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_43000000:
    .word 0x43000000

