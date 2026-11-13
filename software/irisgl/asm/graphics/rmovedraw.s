# Source: ../igloo/graphics/rmovedraw.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/rmovedraw.c -o rmovedraw.T
# Total Functions: 72

.text

# Function: gl_i_rmv2s
# Declared: Line 22 (Source lines: 22-22)
# Address: 0x0f106a8c - 0x0f106b98 (Size: 268 bytes, Frame: 192)
.globl gl_i_rmv2s
.ent gl_i_rmv2s
gl_i_rmv2s:
    # Line 22
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-14404 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,24($sp)
    lw	$at,0($at)
    sd	$a1,0($sp)
    sd	$s8,8($sp)
    beqz	$at,.L0f106acc
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,32($sp)
.L0f106acc:
    sd	$s7,32($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f106b44
    ld	$at,0($sp)
    lw	$v1,11488($s7)
    lw	$a2,11492($s7)
    addu	$v1,$v1,$s8
    addu	$a2,$a2,$at
    sw	$a2,11492($s7)
    sw	$v1,11488($s7)
.L0f106b18:
    addiu	$a0,$s7,11488
    la	$t9,glVertex3iv
    ld	$s8,8($sp)
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f106b44:
    mtc1	$s8,$f3
    ld	$v0,0($sp)
    cvt.s.w	$f3,$f3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s7)
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s7)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$at,$f2
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f1
    sw	$at,11496($s7)
    mfc1	$v1,$f0
    sw	$a2,11492($s7)
    b	.L0f106b18
    sw	$v1,11488($s7)
.end gl_i_rmv2s

# Function: gl_c_rmv2s
# Declared: Line 22 (Source lines: 22-22)
# Address: 0x0f106b98 - 0x0f106c1c (Size: 132 bytes, Frame: 192)
.globl gl_c_rmv2s
.ent gl_c_rmv2s
gl_c_rmv2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-14672 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20296($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f106bf8
    move	$s8,$a0
.L0f106bc4:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rmv2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f106bf8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24312
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f106bc4
    sw	$a2,-20296($gp)
.end gl_c_rmv2s

# Function: gl_n_rmv2s
# Declared: Line 22 (Source lines: 22-22)
# Address: 0x0f106c1c - 0x0f106d34 (Size: 280 bytes, Frame: 48)
.globl gl_n_rmv2s
.ent gl_n_rmv2s
gl_n_rmv2s:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-14804 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f106c58
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f106c58:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f106cd8
    lh	$a0,0($s5)
    lw	$at,11488($s7)
    addu	$at,$at,$a0
    sw	$at,11488($s7)
    lw	$a1,11492($s7)
    lh	$v1,2($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11492($s7)
.L0f106ca8:
    la	$t9,glVertex3iv
    addiu	$a0,$s7,11488
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,4
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f106cd8:
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($s7)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    sw	$v0,11488($s7)
    lh	$at,2($s5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,11492($s7)
    lwc1	$f1,11496($s7)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f1
    mfc1	$v1,$f0
    sw	$a1,11496($s7)
    b	.L0f106ca8
    sw	$v1,11492($s7)
.end gl_n_rmv2s

# Function: gl_i_rmv2i
# Declared: Line 23 (Source lines: 23-23)
# Address: 0x0f106d34 - 0x0f106e40 (Size: 268 bytes, Frame: 192)
.globl gl_i_rmv2i
.ent gl_i_rmv2i
gl_i_rmv2i:
    # Line 23
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-15084 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,24($sp)
    lw	$at,0($at)
    sd	$a1,0($sp)
    sd	$s8,8($sp)
    beqz	$at,.L0f106d74
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,32($sp)
.L0f106d74:
    sd	$s7,32($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f106dec
    ld	$at,0($sp)
    lw	$v1,11488($s7)
    lw	$a2,11492($s7)
    addu	$v1,$v1,$s8
    addu	$a2,$a2,$at
    sw	$a2,11492($s7)
    sw	$v1,11488($s7)
.L0f106dc0:
    addiu	$a0,$s7,11488
    la	$t9,glVertex3iv
    ld	$s8,8($sp)
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f106dec:
    mtc1	$s8,$f3
    ld	$v0,0($sp)
    cvt.s.w	$f3,$f3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s7)
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s7)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$at,$f2
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f1
    sw	$at,11496($s7)
    mfc1	$v1,$f0
    sw	$a2,11492($s7)
    b	.L0f106dc0
    sw	$v1,11488($s7)
.end gl_i_rmv2i

# Function: gl_c_rmv2i
# Declared: Line 23 (Source lines: 23-23)
# Address: 0x0f106e40 - 0x0f106ec4 (Size: 132 bytes, Frame: 192)
.globl gl_c_rmv2i
.ent gl_c_rmv2i
gl_c_rmv2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-15352 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20292($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f106ea0
    move	$s8,$a0
.L0f106e6c:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rmv2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f106ea0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24296
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f106e6c
    sw	$a2,-20292($gp)
.end gl_c_rmv2i

# Function: gl_n_rmv2i
# Declared: Line 23 (Source lines: 23-23)
# Address: 0x0f106ec4 - 0x0f106fdc (Size: 280 bytes, Frame: 48)
.globl gl_n_rmv2i
.ent gl_n_rmv2i
gl_n_rmv2i:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-15484 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f106f00
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f106f00:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f106f80
    lw	$a0,0($s5)
    lw	$at,11488($s7)
    addu	$at,$at,$a0
    sw	$at,11488($s7)
    lw	$a1,11492($s7)
    lw	$v1,4($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11492($s7)
.L0f106f50:
    la	$t9,glVertex3iv
    addiu	$a0,$s7,11488
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,8
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f106f80:
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($s7)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    sw	$v0,11488($s7)
    lw	$at,4($s5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,11492($s7)
    lwc1	$f1,11496($s7)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f1
    mfc1	$v1,$f0
    sw	$a1,11496($s7)
    b	.L0f106f50
    sw	$v1,11492($s7)
.end gl_n_rmv2i

# Function: gl_i_rmv2
# Declared: Line 24 (Source lines: 24-24)
# Address: 0x0f106fdc - 0x0f1070d4 (Size: 248 bytes, Frame: 192)
.globl gl_i_rmv2
.ent gl_i_rmv2
gl_i_rmv2:
    # Line 24
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-15764 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,24($sp)
    lw	$at,0($at)
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    beqz	$at,.L0f10701c
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,32($sp)
.L0f10701c:
    sd	$s7,32($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    ldc1	$f1,8($sp)
    li	$a2,1
    beq	$at,$a2,.L0f1070b8
    ldc1	$f3,8($sp)
    lw	$a0,11496($s7)
    mtc1	$a0,$f2
    lw	$v1,11492($s7)
    cvt.s.w	$f2,$f2
    mtc1	$v1,$f1
    lw	$v0,11488($s7)
    cvt.s.w	$f1,$f1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    add.s	$f1,$f1,$f3
    add.s	$f0,$f0,$f30
    swc1	$f2,11496($s7)
    swc1	$f1,11492($s7)
    swc1	$f0,11488($s7)
.L0f107090:
    la	$t9,glVertex3fv
    addiu	$a0,$s7,11488
    sw	$a2,11484($s7)
    jalr	$t9
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1070b8:
    lwc1	$f0,11492($s7)
    lwc1	$f3,11488($s7)
    add.s	$f0,$f0,$f1
    add.s	$f3,$f3,$f30
    swc1	$f0,11492($s7)
    b	.L0f107090
    swc1	$f3,11488($s7)
.end gl_i_rmv2

# Function: gl_c_rmv2
# Declared: Line 24 (Source lines: 24-24)
# Address: 0x0f1070d4 - 0x0f107158 (Size: 132 bytes, Frame: 192)
.globl gl_c_rmv2
.ent gl_c_rmv2
gl_c_rmv2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-16012 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20288($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f107134
    mov.s	$f30,$f12
.L0f107100:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rmv2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f107134:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,-24280
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f107100
    sw	$at,-20288($gp)
.end gl_c_rmv2

# Function: gl_n_rmv2
# Declared: Line 24 (Source lines: 24-24)
# Address: 0x0f107158 - 0x0f107254 (Size: 252 bytes, Frame: 48)
.globl gl_n_rmv2
.ent gl_n_rmv2
gl_n_rmv2:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-16144 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f107194
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f107194:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$a2,1
    beq	$at,$a2,.L0f107234
    lwc1	$f4,0($s5)
    lw	$a1,11488($s7)
    mtc1	$a1,$f3
    lw	$v1,11496($s7)
    cvt.s.w	$f3,$f3
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lw	$v0,11492($s7)
    mtc1	$v0,$f2
    add.s	$f3,$f3,$f4
    cvt.s.w	$f2,$f2
    swc1	$f3,11488($s7)
    lwc1	$f0,4($s5)
    add.s	$f0,$f0,$f2
    swc1	$f1,11496($s7)
    swc1	$f0,11492($s7)
.L0f107208:
    la	$t9,glVertex3fv
    addiu	$a0,$s7,11488
    jalr	$t9
    sw	$a2,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,8
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f107234:
    lwc1	$f2,11488($s7)
    add.s	$f2,$f2,$f4
    swc1	$f2,11488($s7)
    lwc1	$f1,11492($s7)
    lwc1	$f0,4($s5)
    add.s	$f0,$f0,$f1
    b	.L0f107208
    swc1	$f0,11492($s7)
.end gl_n_rmv2

# Function: gl_i_rmvs
# Declared: Line 25 (Source lines: 25-25)
# Address: 0x0f107254 - 0x0f107388 (Size: 308 bytes, Frame: 208)
.globl gl_i_rmvs
.ent gl_i_rmvs
gl_i_rmvs:
    # Line 25
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-16396 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,32($sp)
    sd	$a2,8($sp)
    lw	$at,0($at)
    sd	$a1,0($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f107298
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,40($sp)
.L0f107298:
    sd	$s7,40($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f107320
    ld	$v1,8($sp)
    ld	$at,0($sp)
    lw	$a3,11492($s7)
    lw	$v0,11496($s7)
    addu	$a3,$a3,$at
    addu	$v0,$v0,$v1
    lw	$v1,11488($s7)
    sw	$v0,11496($s7)
    sw	$a3,11492($s7)
    addu	$v1,$v1,$s8
    sw	$v1,11488($s7)
.L0f1072f4:
    addiu	$a0,$s7,11488
    la	$t9,glVertex3iv
    ld	$s8,16($sp)
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f107320:
    ld	$a3,8($sp)
    mtc1	$s8,$f3
    nop
    cvt.s.w	$f3,$f3
    mtc1	$a3,$f1
    ld	$v1,0($sp)
    cvt.s.w	$f1,$f1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s7)
    add.s	$f2,$f2,$f1
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s7)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f2
    trunc.w.s	$f0,$f0
    mfc1	$at,$f1
    sw	$v0,11496($s7)
    mfc1	$a3,$f0
    sw	$at,11492($s7)
    b	.L0f1072f4
    sw	$a3,11488($s7)
.end gl_i_rmvs

# Function: gl_c_rmvs
# Declared: Line 25 (Source lines: 25-25)
# Address: 0x0f107388 - 0x0f10741c (Size: 148 bytes, Frame: 224)
.globl gl_c_rmvs
.ent gl_c_rmvs
gl_c_rmvs:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-16704 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20284($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1073f0
    move	$s8,$a0
.L0f1073b4:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rmvs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1073f0:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24264
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20284($gp)
    b	.L0f1073b4
    ld	$a2,40($sp)
.end gl_c_rmvs

# Function: gl_n_rmvs
# Declared: Line 25 (Source lines: 25-25)
# Address: 0x0f10741c - 0x0f10755c (Size: 320 bytes, Frame: 48)
.globl gl_n_rmvs
.ent gl_n_rmvs
gl_n_rmvs:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-16852 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f107458
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f107458:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f1074e8
    lh	$a0,0($s5)
    lw	$v1,11488($s7)
    addu	$v1,$v1,$a0
    sw	$v1,11488($s7)
    lw	$v0,11492($s7)
    lh	$at,2($s5)
    addu	$at,$at,$v0
    sw	$at,11492($s7)
    lw	$a1,11496($s7)
    lh	$v1,4($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11496($s7)
.L0f1074b8:
    la	$t9,glVertex3iv
    addiu	$a0,$s7,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,8
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1074e8:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sw	$at,11488($s7)
    lh	$a1,2($s5)
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,11492($s7)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sw	$v1,11492($s7)
    lh	$v0,4($s5)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11496($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    b	.L0f1074b8
    sw	$at,11496($s7)
.end gl_n_rmvs

# Function: gl_i_rmvi
# Declared: Line 26 (Source lines: 26-26)
# Address: 0x0f10755c - 0x0f107690 (Size: 308 bytes, Frame: 208)
.globl gl_i_rmvi
.ent gl_i_rmvi
gl_i_rmvi:
    # Line 26
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-17172 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,32($sp)
    sd	$a2,8($sp)
    lw	$at,0($at)
    sd	$a1,0($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1075a0
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,40($sp)
.L0f1075a0:
    sd	$s7,40($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f107628
    ld	$v1,8($sp)
    ld	$at,0($sp)
    lw	$a3,11492($s7)
    lw	$v0,11496($s7)
    addu	$a3,$a3,$at
    addu	$v0,$v0,$v1
    lw	$v1,11488($s7)
    sw	$v0,11496($s7)
    sw	$a3,11492($s7)
    addu	$v1,$v1,$s8
    sw	$v1,11488($s7)
.L0f1075fc:
    addiu	$a0,$s7,11488
    la	$t9,glVertex3iv
    ld	$s8,16($sp)
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f107628:
    ld	$a3,8($sp)
    mtc1	$s8,$f3
    nop
    cvt.s.w	$f3,$f3
    mtc1	$a3,$f1
    ld	$v1,0($sp)
    cvt.s.w	$f1,$f1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s7)
    add.s	$f2,$f2,$f1
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s7)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f2
    trunc.w.s	$f0,$f0
    mfc1	$at,$f1
    sw	$v0,11496($s7)
    mfc1	$a3,$f0
    sw	$at,11492($s7)
    b	.L0f1075fc
    sw	$a3,11488($s7)
.end gl_i_rmvi

# Function: gl_c_rmvi
# Declared: Line 26 (Source lines: 26-26)
# Address: 0x0f107690 - 0x0f107720 (Size: 144 bytes, Frame: 224)
.globl gl_c_rmvi
.ent gl_c_rmvi
gl_c_rmvi:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-17480 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20280($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f1076f4
    move	$s8,$a0
.L0f1076bc:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rmvi
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1076f4:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-24248
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20280($gp)
    b	.L0f1076bc
    ld	$a2,48($sp)
.end gl_c_rmvi

# Function: gl_n_rmvi
# Declared: Line 26 (Source lines: 26-26)
# Address: 0x0f107720 - 0x0f107860 (Size: 320 bytes, Frame: 48)
.globl gl_n_rmvi
.ent gl_n_rmvi
gl_n_rmvi:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-17624 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f10775c
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f10775c:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f1077ec
    lw	$a0,0($s5)
    lw	$v1,11488($s7)
    addu	$v1,$v1,$a0
    sw	$v1,11488($s7)
    lw	$v0,11492($s7)
    lw	$at,4($s5)
    addu	$at,$at,$v0
    sw	$at,11492($s7)
    lw	$a1,11496($s7)
    lw	$v1,8($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11496($s7)
.L0f1077bc:
    la	$t9,glVertex3iv
    addiu	$a0,$s7,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,12
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1077ec:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sw	$at,11488($s7)
    lw	$a1,4($s5)
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,11492($s7)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sw	$v1,11492($s7)
    lw	$v0,8($s5)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11496($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    b	.L0f1077bc
    sw	$at,11496($s7)
.end gl_n_rmvi

# Function: gl_i_rmv
# Declared: Line 27 (Source lines: 27-27)
# Address: 0x0f107860 - 0x0f107974 (Size: 276 bytes, Frame: 208)
.globl gl_i_rmv
.ent gl_i_rmv
gl_i_rmv:
    # Line 27
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-17944 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,32($sp)
    sdc1	$f14,8($sp)
    lw	$at,0($at)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    beqz	$at,.L0f1078a4
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,40($sp)
.L0f1078a4:
    sd	$s7,40($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$a2,1
    beq	$at,$a2,.L0f107948
    ldc1	$f2,8($sp)
    ldc1	$f3,8($sp)
    lw	$v1,11492($s7)
    mtc1	$v1,$f1
    lw	$v0,11488($s7)
    cvt.s.w	$f1,$f1
    mtc1	$v0,$f0
    lw	$a0,11496($s7)
    cvt.s.w	$f0,$f0
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    add.s	$f0,$f0,$f30
    add.s	$f2,$f2,$f3
    ldc1	$f3,16($sp)
    add.s	$f1,$f1,$f3
    swc1	$f2,11496($s7)
    swc1	$f0,11488($s7)
    swc1	$f1,11492($s7)
.L0f107920:
    la	$t9,glVertex3fv
    addiu	$a0,$s7,11488
    sw	$a2,11484($s7)
    jalr	$t9
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f107948:
    lwc1	$f3,11488($s7)
    add.s	$f3,$f3,$f30
    lwc1	$f1,11496($s7)
    lwc1	$f0,11492($s7)
    add.s	$f1,$f1,$f2
    ldc1	$f2,16($sp)
    add.s	$f0,$f0,$f2
    swc1	$f1,11496($s7)
    swc1	$f3,11488($s7)
    b	.L0f107920
    swc1	$f0,11492($s7)
.end gl_i_rmv

# Function: gl_c_rmv
# Declared: Line 27 (Source lines: 27-27)
# Address: 0x0f107974 - 0x0f107a08 (Size: 148 bytes, Frame: 224)
.globl gl_c_rmv
.ent gl_c_rmv
gl_c_rmv:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-18220 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20276($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f1079dc
    mov.s	$f30,$f12
.L0f1079a4:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rmv
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1079dc:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24232
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f1079a4
    sw	$at,-20276($gp)
.end gl_c_rmv

# Function: gl_n_rmv
# Declared: Line 27 (Source lines: 27-27)
# Address: 0x0f107a08 - 0x0f107b1c (Size: 276 bytes, Frame: 48)
.globl gl_n_rmv
.ent gl_n_rmv
gl_n_rmv:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-18368 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f107a44
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f107a44:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lw	$at,11484($s7)
    li	$a2,1
    beq	$at,$a2,.L0f107aec
    lwc1	$f4,0($s5)
    lw	$a1,11488($s7)
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    lw	$v1,11492($s7)
    mtc1	$v1,$f3
    add.s	$f0,$f0,$f4
    cvt.s.w	$f3,$f3
    swc1	$f0,11488($s7)
    lw	$v0,11496($s7)
    lwc1	$f2,4($s5)
    mtc1	$v0,$f1
    add.s	$f2,$f2,$f3
    cvt.s.w	$f1,$f1
    swc1	$f2,11492($s7)
    lwc1	$f0,8($s5)
    add.s	$f0,$f0,$f1
    swc1	$f0,11496($s7)
.L0f107ac0:
    la	$t9,glVertex3fv
    addiu	$a0,$s7,11488
    jalr	$t9
    sw	$a2,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,12
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f107aec:
    lwc1	$f1,11488($s7)
    add.s	$f1,$f1,$f4
    swc1	$f1,11488($s7)
    lwc1	$f0,11492($s7)
    lwc1	$f3,4($s5)
    add.s	$f3,$f3,$f0
    swc1	$f3,11492($s7)
    lwc1	$f2,11496($s7)
    lwc1	$f1,8($s5)
    add.s	$f1,$f1,$f2
    b	.L0f107ac0
    swc1	$f1,11496($s7)
.end gl_n_rmv

# Function: gl_i_rdr2s
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f107b1c - 0x0f107bfc (Size: 224 bytes, Frame: 192)
.globl gl_i_rdr2s
.ent gl_i_rdr2s
gl_i_rdr2s:
    # Line 29
    addiu	$sp,$sp,-64
    sd	$a1,32($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-18644
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s0,gl_wstatep
    sd	$ra,8($sp)
    jalr	$t9
    lw	$s0,0($s0)
    lw	$at,11484($s0)
    li	$v0,1
    beq	$at,$v0,.L0f107ba8
    ld	$at,32($sp)
    lw	$v1,11488($s0)
    lw	$a2,11492($s0)
    addu	$v1,$v1,$s8
    addu	$a2,$a2,$at
    sw	$a2,11492($s0)
    sw	$v1,11488($s0)
.L0f107b7c:
    addiu	$a0,$s0,11488
    la	$t9,glVertex3iv
    ld	$s8,16($sp)
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s0)
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f107ba8:
    mtc1	$s8,$f3
    ld	$v0,32($sp)
    cvt.s.w	$f3,$f3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s0)
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s0)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s0)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$at,$f2
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f1
    sw	$at,11496($s0)
    mfc1	$v1,$f0
    sw	$a2,11492($s0)
    b	.L0f107b7c
    sw	$v1,11488($s0)
.end gl_i_rdr2s

# Function: gl_c_rdr2s
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f107bfc - 0x0f107c80 (Size: 132 bytes, Frame: 192)
.globl gl_c_rdr2s
.ent gl_c_rdr2s
gl_c_rdr2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-18868 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20272($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f107c5c
    move	$s8,$a0
.L0f107c28:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rdr2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f107c5c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24216
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f107c28
    sw	$a2,-20272($gp)
.end gl_c_rdr2s

# Function: gl_n_rdr2s
# Declared: Line 29 (Source lines: 29-29)
# Address: 0x0f107c80 - 0x0f107d6c (Size: 236 bytes, Frame: 48)
.globl gl_n_rdr2s
.ent gl_n_rdr2s
gl_n_rdr2s:
    addiu	$sp,$sp,-48
    sd	$s5,24($sp)
    move	$s5,$a0
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-19000
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s7,gl_wstatep
    sd	$ra,0($sp)
    jalr	$t9
    lw	$s7,0($s7)
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f107d10
    lh	$a0,0($s5)
    lw	$at,11488($s7)
    addu	$at,$at,$a0
    sw	$at,11488($s7)
    lw	$a1,11492($s7)
    lh	$v1,2($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11492($s7)
.L0f107ce0:
    la	$t9,glVertex3iv
    addiu	$a0,$s7,11488
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$gp,16($sp)
    addiu	$v0,$s5,4
    ld	$ra,0($sp)
    ld	$s5,24($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f107d10:
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($s7)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    sw	$v0,11488($s7)
    lh	$at,2($s5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,11492($s7)
    lwc1	$f1,11496($s7)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f1
    mfc1	$v1,$f0
    sw	$a1,11496($s7)
    b	.L0f107ce0
    sw	$v1,11492($s7)
.end gl_n_rdr2s

# Function: gl_i_rdr2i
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f107d6c - 0x0f107e4c (Size: 224 bytes, Frame: 192)
.globl gl_i_rdr2i
.ent gl_i_rdr2i
gl_i_rdr2i:
    # Line 30
    addiu	$sp,$sp,-64
    sd	$a1,32($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-19236
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s0,gl_wstatep
    sd	$ra,8($sp)
    jalr	$t9
    lw	$s0,0($s0)
    lw	$at,11484($s0)
    li	$v0,1
    beq	$at,$v0,.L0f107df8
    ld	$at,32($sp)
    lw	$v1,11488($s0)
    lw	$a2,11492($s0)
    addu	$v1,$v1,$s8
    addu	$a2,$a2,$at
    sw	$a2,11492($s0)
    sw	$v1,11488($s0)
.L0f107dcc:
    addiu	$a0,$s0,11488
    la	$t9,glVertex3iv
    ld	$s8,16($sp)
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s0)
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f107df8:
    mtc1	$s8,$f3
    ld	$v0,32($sp)
    cvt.s.w	$f3,$f3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s0)
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s0)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s0)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$at,$f2
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f1
    sw	$at,11496($s0)
    mfc1	$v1,$f0
    sw	$a2,11492($s0)
    b	.L0f107dcc
    sw	$v1,11488($s0)
.end gl_i_rdr2i

# Function: gl_c_rdr2i
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f107e4c - 0x0f107ed0 (Size: 132 bytes, Frame: 192)
.globl gl_c_rdr2i
.ent gl_c_rdr2i
gl_c_rdr2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-19460 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20268($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f107eac
    move	$s8,$a0
.L0f107e78:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rdr2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f107eac:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24200
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f107e78
    sw	$a2,-20268($gp)
.end gl_c_rdr2i

# Function: gl_n_rdr2i
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f107ed0 - 0x0f107fbc (Size: 236 bytes, Frame: 48)
.globl gl_n_rdr2i
.ent gl_n_rdr2i
gl_n_rdr2i:
    addiu	$sp,$sp,-48
    sd	$s5,24($sp)
    move	$s5,$a0
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-19592
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s7,gl_wstatep
    sd	$ra,0($sp)
    jalr	$t9
    lw	$s7,0($s7)
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f107f60
    lw	$a0,0($s5)
    lw	$at,11488($s7)
    addu	$at,$at,$a0
    sw	$at,11488($s7)
    lw	$a1,11492($s7)
    lw	$v1,4($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11492($s7)
.L0f107f30:
    la	$t9,glVertex3iv
    addiu	$a0,$s7,11488
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$gp,16($sp)
    addiu	$v0,$s5,8
    ld	$ra,0($sp)
    ld	$s5,24($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f107f60:
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($s7)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    sw	$v0,11488($s7)
    lw	$at,4($s5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,11492($s7)
    lwc1	$f1,11496($s7)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f1
    mfc1	$v1,$f0
    sw	$a1,11496($s7)
    b	.L0f107f30
    sw	$v1,11492($s7)
.end gl_n_rdr2i

# Function: gl_i_rdr2
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f107fbc - 0x0f108088 (Size: 204 bytes, Frame: 192)
.globl gl_i_rdr2
.ent gl_i_rdr2
gl_i_rdr2:
    # Line 31
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$s7,24($sp)
    sd	$gp,32($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-19828
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s7,gl_wstatep
    sd	$ra,16($sp)
    jalr	$t9
    lw	$s7,0($s7)
    lw	$at,11484($s7)
    ldc1	$f1,8($sp)
    li	$a2,1
    beq	$at,$a2,.L0f10806c
    ldc1	$f3,8($sp)
    lw	$a0,11496($s7)
    mtc1	$a0,$f2
    lw	$v1,11492($s7)
    cvt.s.w	$f2,$f2
    mtc1	$v1,$f1
    lw	$v0,11488($s7)
    cvt.s.w	$f1,$f1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    add.s	$f1,$f1,$f3
    add.s	$f0,$f0,$f30
    swc1	$f2,11496($s7)
    swc1	$f1,11492($s7)
    swc1	$f0,11488($s7)
.L0f108044:
    la	$t9,glVertex3fv
    addiu	$a0,$s7,11488
    sw	$a2,11484($s7)
    jalr	$t9
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$gp,32($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10806c:
    lwc1	$f0,11492($s7)
    lwc1	$f3,11488($s7)
    add.s	$f0,$f0,$f1
    add.s	$f3,$f3,$f30
    swc1	$f0,11492($s7)
    b	.L0f108044
    swc1	$f3,11488($s7)
.end gl_i_rdr2

# Function: gl_c_rdr2
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f108088 - 0x0f10810c (Size: 132 bytes, Frame: 192)
.globl gl_c_rdr2
.ent gl_c_rdr2
gl_c_rdr2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-20032 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20264($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f1080e8
    mov.s	$f30,$f12
.L0f1080b4:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rdr2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1080e8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,-24184
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f1080b4
    sw	$at,-20264($gp)
.end gl_c_rdr2

# Function: gl_n_rdr2
# Declared: Line 31 (Source lines: 31-31)
# Address: 0x0f10810c - 0x0f1081dc (Size: 208 bytes, Frame: 48)
.globl gl_n_rdr2
.ent gl_n_rdr2
gl_n_rdr2:
    addiu	$sp,$sp,-48
    sd	$s5,24($sp)
    move	$s5,$a0
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-20164
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s7,gl_wstatep
    sd	$ra,0($sp)
    jalr	$t9
    lw	$s7,0($s7)
    lw	$at,11484($s7)
    li	$a2,1
    beq	$at,$a2,.L0f1081bc
    lwc1	$f4,0($s5)
    lw	$a1,11488($s7)
    mtc1	$a1,$f3
    lw	$v1,11496($s7)
    cvt.s.w	$f3,$f3
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lw	$v0,11492($s7)
    mtc1	$v0,$f2
    add.s	$f3,$f3,$f4
    cvt.s.w	$f2,$f2
    swc1	$f3,11488($s7)
    lwc1	$f0,4($s5)
    add.s	$f0,$f0,$f2
    swc1	$f1,11496($s7)
    swc1	$f0,11492($s7)
.L0f108190:
    la	$t9,glVertex3fv
    addiu	$a0,$s7,11488
    jalr	$t9
    sw	$a2,11484($s7)
    ld	$gp,16($sp)
    addiu	$v0,$s5,8
    ld	$ra,0($sp)
    ld	$s5,24($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1081bc:
    lwc1	$f2,11488($s7)
    add.s	$f2,$f2,$f4
    swc1	$f2,11488($s7)
    lwc1	$f1,11492($s7)
    lwc1	$f0,4($s5)
    add.s	$f0,$f0,$f1
    b	.L0f108190
    swc1	$f0,11492($s7)
.end gl_n_rdr2

# Function: gl_i_rdrs
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f1081dc - 0x0f1082e4 (Size: 264 bytes, Frame: 208)
.globl gl_i_rdrs
.ent gl_i_rdrs
gl_i_rdrs:
    # Line 32
    addiu	$sp,$sp,-80
    sd	$a2,32($sp)
    sd	$a1,40($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-20372
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s0,gl_wstatep
    sd	$ra,8($sp)
    jalr	$t9
    lw	$s0,0($s0)
    lw	$at,11484($s0)
    li	$v0,1
    beq	$at,$v0,.L0f10827c
    ld	$v1,32($sp)
    ld	$at,40($sp)
    lw	$a3,11492($s0)
    lw	$v0,11496($s0)
    addu	$a3,$a3,$at
    addu	$v0,$v0,$v1
    lw	$v1,11488($s0)
    sw	$v0,11496($s0)
    sw	$a3,11492($s0)
    addu	$v1,$v1,$s8
    sw	$v1,11488($s0)
.L0f108250:
    addiu	$a0,$s0,11488
    la	$t9,glVertex3iv
    ld	$s8,16($sp)
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s0)
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f10827c:
    ld	$a3,32($sp)
    mtc1	$s8,$f3
    nop
    cvt.s.w	$f3,$f3
    mtc1	$a3,$f1
    ld	$v1,40($sp)
    cvt.s.w	$f1,$f1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s0)
    add.s	$f2,$f2,$f1
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s0)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s0)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f2
    trunc.w.s	$f0,$f0
    mfc1	$at,$f1
    sw	$v0,11496($s0)
    mfc1	$a3,$f0
    sw	$at,11492($s0)
    b	.L0f108250
    sw	$a3,11488($s0)
.end gl_i_rdrs

# Function: gl_c_rdrs
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f1082e4 - 0x0f108378 (Size: 148 bytes, Frame: 224)
.globl gl_c_rdrs
.ent gl_c_rdrs
gl_c_rdrs:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-20636 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20260($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10834c
    move	$s8,$a0
.L0f108310:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rdrs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f10834c:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24168
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20260($gp)
    b	.L0f108310
    ld	$a2,40($sp)
.end gl_c_rdrs

# Function: gl_n_rdrs
# Declared: Line 32 (Source lines: 32-32)
# Address: 0x0f108378 - 0x0f10848c (Size: 276 bytes, Frame: 48)
.globl gl_n_rdrs
.ent gl_n_rdrs
gl_n_rdrs:
    addiu	$sp,$sp,-48
    sd	$s5,24($sp)
    move	$s5,$a0
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-20784
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s7,gl_wstatep
    sd	$ra,0($sp)
    jalr	$t9
    lw	$s7,0($s7)
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f108418
    lh	$a0,0($s5)
    lw	$v1,11488($s7)
    addu	$v1,$v1,$a0
    sw	$v1,11488($s7)
    lw	$v0,11492($s7)
    lh	$at,2($s5)
    addu	$at,$at,$v0
    sw	$at,11492($s7)
    lw	$a1,11496($s7)
    lh	$v1,4($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11496($s7)
.L0f1083e8:
    la	$t9,glVertex3iv
    addiu	$a0,$s7,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$gp,16($sp)
    addiu	$v0,$s5,8
    ld	$ra,0($sp)
    ld	$s5,24($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f108418:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sw	$at,11488($s7)
    lh	$a1,2($s5)
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,11492($s7)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sw	$v1,11492($s7)
    lh	$v0,4($s5)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11496($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    b	.L0f1083e8
    sw	$at,11496($s7)
.end gl_n_rdrs

# Function: gl_i_rdri
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f10848c - 0x0f108594 (Size: 264 bytes, Frame: 208)
.globl gl_i_rdri
.ent gl_i_rdri
gl_i_rdri:
    # Line 33
    addiu	$sp,$sp,-80
    sd	$a2,32($sp)
    sd	$a1,40($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-21060
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s0,gl_wstatep
    sd	$ra,8($sp)
    jalr	$t9
    lw	$s0,0($s0)
    lw	$at,11484($s0)
    li	$v0,1
    beq	$at,$v0,.L0f10852c
    ld	$v1,32($sp)
    ld	$at,40($sp)
    lw	$a3,11492($s0)
    lw	$v0,11496($s0)
    addu	$a3,$a3,$at
    addu	$v0,$v0,$v1
    lw	$v1,11488($s0)
    sw	$v0,11496($s0)
    sw	$a3,11492($s0)
    addu	$v1,$v1,$s8
    sw	$v1,11488($s0)
.L0f108500:
    addiu	$a0,$s0,11488
    la	$t9,glVertex3iv
    ld	$s8,16($sp)
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s0)
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f10852c:
    ld	$a3,32($sp)
    mtc1	$s8,$f3
    nop
    cvt.s.w	$f3,$f3
    mtc1	$a3,$f1
    ld	$v1,40($sp)
    cvt.s.w	$f1,$f1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s0)
    add.s	$f2,$f2,$f1
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s0)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s0)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f2
    trunc.w.s	$f0,$f0
    mfc1	$at,$f1
    sw	$v0,11496($s0)
    mfc1	$a3,$f0
    sw	$at,11492($s0)
    b	.L0f108500
    sw	$a3,11488($s0)
.end gl_i_rdri

# Function: gl_c_rdri
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f108594 - 0x0f108624 (Size: 144 bytes, Frame: 224)
.globl gl_c_rdri
.ent gl_c_rdri
gl_c_rdri:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-21324 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20256($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f1085f8
    move	$s8,$a0
.L0f1085c0:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rdri
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1085f8:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-24152
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20256($gp)
    b	.L0f1085c0
    ld	$a2,48($sp)
.end gl_c_rdri

# Function: gl_n_rdri
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f108624 - 0x0f108738 (Size: 276 bytes, Frame: 48)
.globl gl_n_rdri
.ent gl_n_rdri
gl_n_rdri:
    addiu	$sp,$sp,-48
    sd	$s5,24($sp)
    move	$s5,$a0
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-21468
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s7,gl_wstatep
    sd	$ra,0($sp)
    jalr	$t9
    lw	$s7,0($s7)
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f1086c4
    lw	$a0,0($s5)
    lw	$v1,11488($s7)
    addu	$v1,$v1,$a0
    sw	$v1,11488($s7)
    lw	$v0,11492($s7)
    lw	$at,4($s5)
    addu	$at,$at,$v0
    sw	$at,11492($s7)
    lw	$a1,11496($s7)
    lw	$v1,8($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11496($s7)
.L0f108694:
    la	$t9,glVertex3iv
    addiu	$a0,$s7,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$gp,16($sp)
    addiu	$v0,$s5,12
    ld	$ra,0($sp)
    ld	$s5,24($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1086c4:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sw	$at,11488($s7)
    lw	$a1,4($s5)
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,11492($s7)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sw	$v1,11492($s7)
    lw	$v0,8($s5)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11496($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    b	.L0f108694
    sw	$at,11496($s7)
.end gl_n_rdri

# Function: gl_i_rdr
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f108738 - 0x0f108820 (Size: 232 bytes, Frame: 208)
.globl gl_i_rdr
.ent gl_i_rdr
gl_i_rdr:
    # Line 34
    addiu	$sp,$sp,-80
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$s7,32($sp)
    sd	$gp,40($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-21744
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s7,gl_wstatep
    sd	$ra,24($sp)
    jalr	$t9
    lw	$s7,0($s7)
    lw	$at,11484($s7)
    li	$a2,1
    beq	$at,$a2,.L0f1087f4
    ldc1	$f2,8($sp)
    ldc1	$f3,8($sp)
    lw	$v1,11492($s7)
    mtc1	$v1,$f1
    lw	$v0,11488($s7)
    cvt.s.w	$f1,$f1
    mtc1	$v0,$f0
    lw	$a0,11496($s7)
    cvt.s.w	$f0,$f0
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    add.s	$f0,$f0,$f30
    add.s	$f2,$f2,$f3
    ldc1	$f3,16($sp)
    add.s	$f1,$f1,$f3
    swc1	$f2,11496($s7)
    swc1	$f0,11488($s7)
    swc1	$f1,11492($s7)
.L0f1087cc:
    la	$t9,glVertex3fv
    addiu	$a0,$s7,11488
    sw	$a2,11484($s7)
    jalr	$t9
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$gp,40($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f1087f4:
    lwc1	$f3,11488($s7)
    add.s	$f3,$f3,$f30
    lwc1	$f1,11496($s7)
    lwc1	$f0,11492($s7)
    add.s	$f1,$f1,$f2
    ldc1	$f2,16($sp)
    add.s	$f0,$f0,$f2
    swc1	$f1,11496($s7)
    swc1	$f3,11488($s7)
    b	.L0f1087cc
    swc1	$f0,11492($s7)
.end gl_i_rdr

# Function: gl_c_rdr
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f108820 - 0x0f1088b4 (Size: 148 bytes, Frame: 224)
.globl gl_c_rdr
.ent gl_c_rdr
gl_c_rdr:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-21976 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20252($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f108888
    mov.s	$f30,$f12
.L0f108850:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rdr
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f108888:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24136
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f108850
    sw	$at,-20252($gp)
.end gl_c_rdr

# Function: gl_n_rdr
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f1088b4 - 0x0f10899c (Size: 232 bytes, Frame: 48)
.globl gl_n_rdr
.ent gl_n_rdr
gl_n_rdr:
    addiu	$sp,$sp,-48
    sd	$s5,24($sp)
    move	$s5,$a0
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$t8,0xfff3
    addiu	$t8,$t8,-22124
    addu	$gp,$t9,$t8
    la	$t9,__iglooCheckDrawRestart
    la	$s7,gl_wstatep
    sd	$ra,0($sp)
    jalr	$t9
    lw	$s7,0($s7)
    lw	$at,11484($s7)
    li	$a2,1
    beq	$at,$a2,.L0f10896c
    lwc1	$f4,0($s5)
    lw	$a1,11488($s7)
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    lw	$v1,11492($s7)
    mtc1	$v1,$f3
    add.s	$f0,$f0,$f4
    cvt.s.w	$f3,$f3
    swc1	$f0,11488($s7)
    lw	$v0,11496($s7)
    lwc1	$f2,4($s5)
    mtc1	$v0,$f1
    add.s	$f2,$f2,$f3
    cvt.s.w	$f1,$f1
    swc1	$f2,11492($s7)
    lwc1	$f0,8($s5)
    add.s	$f0,$f0,$f1
    swc1	$f0,11496($s7)
.L0f108940:
    la	$t9,glVertex3fv
    addiu	$a0,$s7,11488
    jalr	$t9
    sw	$a2,11484($s7)
    ld	$gp,16($sp)
    addiu	$v0,$s5,12
    ld	$ra,0($sp)
    ld	$s5,24($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10896c:
    lwc1	$f1,11488($s7)
    add.s	$f1,$f1,$f4
    swc1	$f1,11488($s7)
    lwc1	$f0,11492($s7)
    lwc1	$f3,4($s5)
    add.s	$f3,$f3,$f0
    swc1	$f3,11492($s7)
    lwc1	$f2,11496($s7)
    lwc1	$f1,8($s5)
    add.s	$f1,$f1,$f2
    b	.L0f108940
    swc1	$f1,11496($s7)
.end gl_n_rdr

# Function: gl_i_rpmv2s
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f10899c - 0x0f108aa8 (Size: 268 bytes, Frame: 192)
.globl gl_i_rpmv2s
.ent gl_i_rpmv2s
gl_i_rpmv2s:
    # Line 36
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-22356 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,24($sp)
    lw	$at,0($at)
    sd	$a1,0($sp)
    sd	$s8,8($sp)
    beqz	$at,.L0f1089dc
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,32($sp)
.L0f1089dc:
    sd	$s7,32($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f108a54
    ld	$at,0($sp)
    lw	$v1,11488($s7)
    lw	$a2,11492($s7)
    addu	$v1,$v1,$s8
    addu	$a2,$a2,$at
    sw	$a2,11492($s7)
    sw	$v1,11488($s7)
.L0f108a28:
    addiu	$a0,$s7,11488
    lw	$t9,28($s7)
    ld	$s8,8($sp)
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f108a54:
    mtc1	$s8,$f3
    ld	$v0,0($sp)
    cvt.s.w	$f3,$f3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s7)
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s7)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$at,$f2
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f1
    sw	$at,11496($s7)
    mfc1	$v1,$f0
    sw	$a2,11492($s7)
    b	.L0f108a28
    sw	$v1,11488($s7)
.end gl_i_rpmv2s

# Function: gl_c_rpmv2s
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f108aa8 - 0x0f108b2c (Size: 132 bytes, Frame: 192)
.globl gl_c_rpmv2s
.ent gl_c_rpmv2s
gl_c_rpmv2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-22624 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20248($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f108b08
    move	$s8,$a0
.L0f108ad4:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpmv2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f108b08:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24120
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f108ad4
    sw	$a2,-20248($gp)
.end gl_c_rpmv2s

# Function: gl_n_rpmv2s
# Declared: Line 36 (Source lines: 36-36)
# Address: 0x0f108b2c - 0x0f108c44 (Size: 280 bytes, Frame: 48)
.globl gl_n_rpmv2s
.ent gl_n_rpmv2s
gl_n_rpmv2s:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-22756 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f108b68
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f108b68:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f108be8
    lh	$a0,0($s5)
    lw	$at,11488($s7)
    addu	$at,$at,$a0
    sw	$at,11488($s7)
    lw	$a1,11492($s7)
    lh	$v1,2($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11492($s7)
.L0f108bb8:
    lw	$t9,28($s7)
    addiu	$a0,$s7,11488
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,4
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f108be8:
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($s7)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    sw	$v0,11488($s7)
    lh	$at,2($s5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,11492($s7)
    lwc1	$f1,11496($s7)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f1
    mfc1	$v1,$f0
    sw	$a1,11496($s7)
    b	.L0f108bb8
    sw	$v1,11492($s7)
.end gl_n_rpmv2s

# Function: gl_i_rpmv2i
# Declared: Line 37 (Source lines: 37-37)
# Address: 0x0f108c44 - 0x0f108d50 (Size: 268 bytes, Frame: 192)
.globl gl_i_rpmv2i
.ent gl_i_rpmv2i
gl_i_rpmv2i:
    # Line 37
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-23036 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,24($sp)
    lw	$at,0($at)
    sd	$a1,0($sp)
    sd	$s8,8($sp)
    beqz	$at,.L0f108c84
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,32($sp)
.L0f108c84:
    sd	$s7,32($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f108cfc
    ld	$at,0($sp)
    lw	$v1,11488($s7)
    lw	$a2,11492($s7)
    addu	$v1,$v1,$s8
    addu	$a2,$a2,$at
    sw	$a2,11492($s7)
    sw	$v1,11488($s7)
.L0f108cd0:
    addiu	$a0,$s7,11488
    lw	$t9,28($s7)
    ld	$s8,8($sp)
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f108cfc:
    mtc1	$s8,$f3
    ld	$v0,0($sp)
    cvt.s.w	$f3,$f3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s7)
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s7)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$at,$f2
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f1
    sw	$at,11496($s7)
    mfc1	$v1,$f0
    sw	$a2,11492($s7)
    b	.L0f108cd0
    sw	$v1,11488($s7)
.end gl_i_rpmv2i

# Function: gl_c_rpmv2i
# Declared: Line 37 (Source lines: 37-37)
# Address: 0x0f108d50 - 0x0f108dd4 (Size: 132 bytes, Frame: 192)
.globl gl_c_rpmv2i
.ent gl_c_rpmv2i
gl_c_rpmv2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-23304 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20244($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f108db0
    move	$s8,$a0
.L0f108d7c:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpmv2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f108db0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24104
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f108d7c
    sw	$a2,-20244($gp)
.end gl_c_rpmv2i

# Function: gl_n_rpmv2i
# Declared: Line 37 (Source lines: 37-37)
# Address: 0x0f108dd4 - 0x0f108eec (Size: 280 bytes, Frame: 48)
.globl gl_n_rpmv2i
.ent gl_n_rpmv2i
gl_n_rpmv2i:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-23436 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f108e10
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f108e10:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f108e90
    lw	$a0,0($s5)
    lw	$at,11488($s7)
    addu	$at,$at,$a0
    sw	$at,11488($s7)
    lw	$a1,11492($s7)
    lw	$v1,4($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11492($s7)
.L0f108e60:
    lw	$t9,28($s7)
    addiu	$a0,$s7,11488
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,8
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f108e90:
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($s7)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    sw	$v0,11488($s7)
    lw	$at,4($s5)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,11492($s7)
    lwc1	$f1,11496($s7)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f1
    mfc1	$v1,$f0
    sw	$a1,11496($s7)
    b	.L0f108e60
    sw	$v1,11492($s7)
.end gl_n_rpmv2i

# Function: gl_i_rpmv2
# Declared: Line 38 (Source lines: 38-38)
# Address: 0x0f108eec - 0x0f108fe4 (Size: 248 bytes, Frame: 192)
.globl gl_i_rpmv2
.ent gl_i_rpmv2
gl_i_rpmv2:
    # Line 38
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-23716 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,24($sp)
    lw	$at,0($at)
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    beqz	$at,.L0f108f2c
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,32($sp)
.L0f108f2c:
    sd	$s7,32($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    ldc1	$f1,8($sp)
    li	$a2,1
    beq	$at,$a2,.L0f108fc8
    ldc1	$f3,8($sp)
    lw	$a0,11496($s7)
    mtc1	$a0,$f2
    lw	$v1,11492($s7)
    cvt.s.w	$f2,$f2
    mtc1	$v1,$f1
    lw	$v0,11488($s7)
    cvt.s.w	$f1,$f1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    add.s	$f1,$f1,$f3
    add.s	$f0,$f0,$f30
    swc1	$f2,11496($s7)
    swc1	$f1,11492($s7)
    swc1	$f0,11488($s7)
.L0f108fa0:
    lw	$t9,24($s7)
    addiu	$a0,$s7,11488
    sw	$a2,11484($s7)
    jalr	$t9
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f108fc8:
    lwc1	$f0,11492($s7)
    lwc1	$f3,11488($s7)
    add.s	$f0,$f0,$f1
    add.s	$f3,$f3,$f30
    swc1	$f0,11492($s7)
    b	.L0f108fa0
    swc1	$f3,11488($s7)
.end gl_i_rpmv2

# Function: gl_c_rpmv2
# Declared: Line 38 (Source lines: 38-38)
# Address: 0x0f108fe4 - 0x0f109068 (Size: 132 bytes, Frame: 192)
.globl gl_c_rpmv2
.ent gl_c_rpmv2
gl_c_rpmv2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-23964 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20240($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f109044
    mov.s	$f30,$f12
.L0f109010:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpmv2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f109044:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,-24088
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f109010
    sw	$at,-20240($gp)
.end gl_c_rpmv2

# Function: gl_n_rpmv2
# Declared: Line 38 (Source lines: 38-38)
# Address: 0x0f109068 - 0x0f109164 (Size: 252 bytes, Frame: 48)
.globl gl_n_rpmv2
.ent gl_n_rpmv2
gl_n_rpmv2:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-24096 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f1090a4
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f1090a4:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$a2,1
    beq	$at,$a2,.L0f109144
    lwc1	$f4,0($s5)
    lw	$a1,11488($s7)
    mtc1	$a1,$f3
    lw	$v1,11496($s7)
    cvt.s.w	$f3,$f3
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lw	$v0,11492($s7)
    mtc1	$v0,$f2
    add.s	$f3,$f3,$f4
    cvt.s.w	$f2,$f2
    swc1	$f3,11488($s7)
    lwc1	$f0,4($s5)
    add.s	$f0,$f0,$f2
    swc1	$f1,11496($s7)
    swc1	$f0,11492($s7)
.L0f109118:
    lw	$t9,24($s7)
    addiu	$a0,$s7,11488
    jalr	$t9
    sw	$a2,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,8
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f109144:
    lwc1	$f2,11488($s7)
    add.s	$f2,$f2,$f4
    swc1	$f2,11488($s7)
    lwc1	$f1,11492($s7)
    lwc1	$f0,4($s5)
    add.s	$f0,$f0,$f1
    b	.L0f109118
    swc1	$f0,11492($s7)
.end gl_n_rpmv2

# Function: gl_i_rpmvs
# Declared: Line 39 (Source lines: 39-39)
# Address: 0x0f109164 - 0x0f109298 (Size: 308 bytes, Frame: 208)
.globl gl_i_rpmvs
.ent gl_i_rpmvs
gl_i_rpmvs:
    # Line 39
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-24348 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,32($sp)
    sd	$a2,8($sp)
    lw	$at,0($at)
    sd	$a1,0($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1091a8
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,40($sp)
.L0f1091a8:
    sd	$s7,40($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f109230
    ld	$v1,8($sp)
    ld	$at,0($sp)
    lw	$a3,11492($s7)
    lw	$v0,11496($s7)
    addu	$a3,$a3,$at
    addu	$v0,$v0,$v1
    lw	$v1,11488($s7)
    sw	$v0,11496($s7)
    sw	$a3,11492($s7)
    addu	$v1,$v1,$s8
    sw	$v1,11488($s7)
.L0f109204:
    addiu	$a0,$s7,11488
    lw	$t9,28($s7)
    ld	$s8,16($sp)
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f109230:
    ld	$a3,8($sp)
    mtc1	$s8,$f3
    nop
    cvt.s.w	$f3,$f3
    mtc1	$a3,$f1
    ld	$v1,0($sp)
    cvt.s.w	$f1,$f1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s7)
    add.s	$f2,$f2,$f1
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s7)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f2
    trunc.w.s	$f0,$f0
    mfc1	$at,$f1
    sw	$v0,11496($s7)
    mfc1	$a3,$f0
    sw	$at,11492($s7)
    b	.L0f109204
    sw	$a3,11488($s7)
.end gl_i_rpmvs

# Function: gl_c_rpmvs
# Declared: Line 39 (Source lines: 39-39)
# Address: 0x0f109298 - 0x0f10932c (Size: 148 bytes, Frame: 224)
.globl gl_c_rpmvs
.ent gl_c_rpmvs
gl_c_rpmvs:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-24656 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20236($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f109300
    move	$s8,$a0
.L0f1092c4:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpmvs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f109300:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24072
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20236($gp)
    b	.L0f1092c4
    ld	$a2,40($sp)
.end gl_c_rpmvs

# Function: gl_n_rpmvs
# Declared: Line 39 (Source lines: 39-39)
# Address: 0x0f10932c - 0x0f10946c (Size: 320 bytes, Frame: 48)
.globl gl_n_rpmvs
.ent gl_n_rpmvs
gl_n_rpmvs:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-24804 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f109368
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f109368:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f1093f8
    lh	$a0,0($s5)
    lw	$v1,11488($s7)
    addu	$v1,$v1,$a0
    sw	$v1,11488($s7)
    lw	$v0,11492($s7)
    lh	$at,2($s5)
    addu	$at,$at,$v0
    sw	$at,11492($s7)
    lw	$a1,11496($s7)
    lh	$v1,4($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11496($s7)
.L0f1093c8:
    lw	$t9,28($s7)
    addiu	$a0,$s7,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,8
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1093f8:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sw	$at,11488($s7)
    lh	$a1,2($s5)
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,11492($s7)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sw	$v1,11492($s7)
    lh	$v0,4($s5)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11496($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    b	.L0f1093c8
    sw	$at,11496($s7)
.end gl_n_rpmvs

# Function: gl_i_rpmvi
# Declared: Line 40 (Source lines: 40-40)
# Address: 0x0f10946c - 0x0f1095a0 (Size: 308 bytes, Frame: 208)
.globl gl_i_rpmvi
.ent gl_i_rpmvi
gl_i_rpmvi:
    # Line 40
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-25124 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,32($sp)
    sd	$a2,8($sp)
    lw	$at,0($at)
    sd	$a1,0($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1094b0
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,40($sp)
.L0f1094b0:
    sd	$s7,40($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f109538
    ld	$v1,8($sp)
    ld	$at,0($sp)
    lw	$a3,11492($s7)
    lw	$v0,11496($s7)
    addu	$a3,$a3,$at
    addu	$v0,$v0,$v1
    lw	$v1,11488($s7)
    sw	$v0,11496($s7)
    sw	$a3,11492($s7)
    addu	$v1,$v1,$s8
    sw	$v1,11488($s7)
.L0f10950c:
    addiu	$a0,$s7,11488
    lw	$t9,28($s7)
    ld	$s8,16($sp)
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f109538:
    ld	$a3,8($sp)
    mtc1	$s8,$f3
    nop
    cvt.s.w	$f3,$f3
    mtc1	$a3,$f1
    ld	$v1,0($sp)
    cvt.s.w	$f1,$f1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f2,11496($s7)
    add.s	$f2,$f2,$f1
    trunc.w.s	$f2,$f2
    lwc1	$f1,11492($s7)
    add.s	$f1,$f1,$f0
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f3
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f2
    trunc.w.s	$f0,$f0
    mfc1	$at,$f1
    sw	$v0,11496($s7)
    mfc1	$a3,$f0
    sw	$at,11492($s7)
    b	.L0f10950c
    sw	$a3,11488($s7)
.end gl_i_rpmvi

# Function: gl_c_rpmvi
# Declared: Line 40 (Source lines: 40-40)
# Address: 0x0f1095a0 - 0x0f109630 (Size: 144 bytes, Frame: 224)
.globl gl_c_rpmvi
.ent gl_c_rpmvi
gl_c_rpmvi:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-25432 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20232($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f109604
    move	$s8,$a0
.L0f1095cc:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpmvi
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f109604:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-24056
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20232($gp)
    b	.L0f1095cc
    ld	$a2,48($sp)
.end gl_c_rpmvi

# Function: gl_n_rpmvi
# Declared: Line 40 (Source lines: 40-40)
# Address: 0x0f109630 - 0x0f109770 (Size: 320 bytes, Frame: 48)
.globl gl_n_rpmvi
.ent gl_n_rpmvi
gl_n_rpmvi:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-25576 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f10966c
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f10966c:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$v0,1
    beq	$at,$v0,.L0f1096fc
    lw	$a0,0($s5)
    lw	$v1,11488($s7)
    addu	$v1,$v1,$a0
    sw	$v1,11488($s7)
    lw	$v0,11492($s7)
    lw	$at,4($s5)
    addu	$at,$at,$v0
    sw	$at,11492($s7)
    lw	$a1,11496($s7)
    lw	$v1,8($s5)
    addu	$v1,$v1,$a1
    sw	$v1,11496($s7)
.L0f1096cc:
    lw	$t9,28($s7)
    addiu	$a0,$s7,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,12
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1096fc:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sw	$at,11488($s7)
    lw	$a1,4($s5)
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,11492($s7)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sw	$v1,11492($s7)
    lw	$v0,8($s5)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11496($s7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    b	.L0f1096cc
    sw	$at,11496($s7)
.end gl_n_rpmvi

# Function: gl_i_rpmv
# Declared: Line 41 (Source lines: 41-41)
# Address: 0x0f109770 - 0x0f109884 (Size: 276 bytes, Frame: 208)
.globl gl_i_rpmv
.ent gl_i_rpmv
gl_i_rpmv:
    # Line 41
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-25896 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,32($sp)
    sdc1	$f14,8($sp)
    lw	$at,0($at)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    beqz	$at,.L0f1097b4
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,40($sp)
.L0f1097b4:
    sd	$s7,40($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$a2,1
    beq	$at,$a2,.L0f109858
    ldc1	$f2,8($sp)
    ldc1	$f3,8($sp)
    lw	$v1,11492($s7)
    mtc1	$v1,$f1
    lw	$v0,11488($s7)
    cvt.s.w	$f1,$f1
    mtc1	$v0,$f0
    lw	$a0,11496($s7)
    cvt.s.w	$f0,$f0
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    add.s	$f0,$f0,$f30
    add.s	$f2,$f2,$f3
    ldc1	$f3,16($sp)
    add.s	$f1,$f1,$f3
    swc1	$f2,11496($s7)
    swc1	$f0,11488($s7)
    swc1	$f1,11492($s7)
.L0f109830:
    lw	$t9,24($s7)
    addiu	$a0,$s7,11488
    sw	$a2,11484($s7)
    jalr	$t9
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f109858:
    lwc1	$f3,11488($s7)
    add.s	$f3,$f3,$f30
    lwc1	$f1,11496($s7)
    lwc1	$f0,11492($s7)
    add.s	$f1,$f1,$f2
    ldc1	$f2,16($sp)
    add.s	$f0,$f0,$f2
    swc1	$f1,11496($s7)
    swc1	$f3,11488($s7)
    b	.L0f109830
    swc1	$f0,11492($s7)
.end gl_i_rpmv

# Function: gl_c_rpmv
# Declared: Line 41 (Source lines: 41-41)
# Address: 0x0f109884 - 0x0f109918 (Size: 148 bytes, Frame: 224)
.globl gl_c_rpmv
.ent gl_c_rpmv
gl_c_rpmv:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-26172 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20228($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f1098ec
    mov.s	$f30,$f12
.L0f1098b4:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpmv
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1098ec:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24040
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f1098b4
    sw	$at,-20228($gp)
.end gl_c_rpmv

# Function: gl_n_rpmv
# Declared: Line 41 (Source lines: 41-41)
# Address: 0x0f109918 - 0x0f109a2c (Size: 276 bytes, Frame: 48)
.globl gl_n_rpmv
.ent gl_n_rpmv
gl_n_rpmv:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-26320 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s5,8($sp)
    beqz	$at,.L0f109954
    move	$s5,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
    sd	$s7,24($sp)
.L0f109954:
    sd	$s7,24($sp)
    la	$s7,gl_wstatep
    lw	$s7,0($s7)
    lw	$t9,216($s7)
    jalr	$t9
    li	$a0,9
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    move	$a0,$zero
    lw	$at,11484($s7)
    li	$a2,1
    beq	$at,$a2,.L0f1099fc
    lwc1	$f4,0($s5)
    lw	$a1,11488($s7)
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    lw	$v1,11492($s7)
    mtc1	$v1,$f3
    add.s	$f0,$f0,$f4
    cvt.s.w	$f3,$f3
    swc1	$f0,11488($s7)
    lw	$v0,11496($s7)
    lwc1	$f2,4($s5)
    mtc1	$v0,$f1
    add.s	$f2,$f2,$f3
    cvt.s.w	$f1,$f1
    swc1	$f2,11492($s7)
    lwc1	$f0,8($s5)
    add.s	$f0,$f0,$f1
    swc1	$f0,11496($s7)
.L0f1099d0:
    lw	$t9,24($s7)
    addiu	$a0,$s7,11488
    jalr	$t9
    sw	$a2,11484($s7)
    ld	$gp,0($sp)
    addiu	$v0,$s5,12
    ld	$ra,16($sp)
    ld	$s5,8($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1099fc:
    lwc1	$f1,11488($s7)
    add.s	$f1,$f1,$f4
    swc1	$f1,11488($s7)
    lwc1	$f0,11492($s7)
    lwc1	$f3,4($s5)
    add.s	$f3,$f3,$f0
    swc1	$f3,11492($s7)
    lwc1	$f2,11496($s7)
    lwc1	$f1,8($s5)
    add.s	$f1,$f1,$f2
    b	.L0f1099d0
    swc1	$f1,11496($s7)
.end gl_n_rpmv

# Function: gl_i_rpdr2s
# Declared: Line 43 (Source lines: 43-43)
# Address: 0x0f109a2c - 0x0f109aec (Size: 192 bytes, Frame: 32)
.globl gl_i_rpdr2s
.ent gl_i_rpdr2s
gl_i_rpdr2s:
    # Line 43
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-26596 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    lw	$at,11484($a4)
    li	$v0,1
    beq	$at,$v0,.L0f109a98
    move	$a3,$a4
    lw	$v1,11488($a4)
    addu	$v1,$v1,$a0
    sw	$v1,11488($a4)
    lw	$v0,11492($a3)
    sd	$ra,8($sp)
    addu	$v0,$v0,$a1
    sw	$v0,11492($a3)
.L0f109a74:
    lw	$t9,28($a3)
    addiu	$a0,$a3,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($a3)
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f109a98:
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($a4)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mtc1	$a1,$f2
    mfc1	$v0,$f3
    cvt.s.w	$f2,$f2
    sw	$v0,11488($a4)
    lwc1	$f0,11492($a3)
    lwc1	$f1,11496($a3)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f1
    sd	$ra,8($sp)
    mfc1	$a2,$f0
    sw	$at,11496($a3)
    b	.L0f109a74
    sw	$a2,11492($a3)
.end gl_i_rpdr2s

# Function: gl_c_rpdr2s
# Declared: Line 43 (Source lines: 43-43)
# Address: 0x0f109aec - 0x0f109b70 (Size: 132 bytes, Frame: 192)
.globl gl_c_rpdr2s
.ent gl_c_rpdr2s
gl_c_rpdr2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-26788 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20224($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f109b4c
    move	$s8,$a0
.L0f109b18:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpdr2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f109b4c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24024
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f109b18
    sw	$a2,-20224($gp)
.end gl_c_rpdr2s

# Function: gl_n_rpdr2s
# Declared: Line 43 (Source lines: 43-43)
# Address: 0x0f109b70 - 0x0f109c54 (Size: 228 bytes, Frame: 48)
.globl gl_n_rpdr2s
.ent gl_n_rpdr2s
gl_n_rpdr2s:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    sd	$s7,8($sp)
    lui	$s7,0xfff3
    addiu	$s7,$s7,-26920
    addu	$gp,$t9,$s7
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    lh	$a3,0($a0)
    lw	$at,11484($a4)
    li	$v0,1
    move	$s7,$a0
    beq	$at,$v0,.L0f109bf4
    move	$a2,$a4
    lw	$v1,11488($a4)
    addu	$v1,$v1,$a3
    sw	$v1,11488($a4)
    lw	$v0,11492($a2)
    lh	$at,2($s7)
    sd	$ra,16($sp)
    addu	$at,$at,$v0
    sw	$at,11492($a2)
.L0f109bc8:
    lw	$t9,28($a2)
    addiu	$a0,$a2,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($a2)
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    addiu	$v0,$s7,4
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f109bf4:
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($a4)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    sw	$a1,11488($a4)
    lh	$v1,2($s7)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,11492($a2)
    lwc1	$f1,11496($a2)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f1
    sd	$ra,16($sp)
    mfc1	$at,$f0
    sw	$v0,11496($a2)
    b	.L0f109bc8
    sw	$at,11492($a2)
.end gl_n_rpdr2s

# Function: gl_i_rpdr2i
# Declared: Line 44 (Source lines: 44-44)
# Address: 0x0f109c54 - 0x0f109d14 (Size: 192 bytes, Frame: 32)
.globl gl_i_rpdr2i
.ent gl_i_rpdr2i
gl_i_rpdr2i:
    # Line 44
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-27148 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    lw	$at,11484($a4)
    li	$v0,1
    beq	$at,$v0,.L0f109cc0
    move	$a3,$a4
    lw	$v1,11488($a4)
    addu	$v1,$v1,$a0
    sw	$v1,11488($a4)
    lw	$v0,11492($a3)
    sd	$ra,8($sp)
    addu	$v0,$v0,$a1
    sw	$v0,11492($a3)
.L0f109c9c:
    lw	$t9,28($a3)
    addiu	$a0,$a3,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($a3)
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f109cc0:
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($a4)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mtc1	$a1,$f2
    mfc1	$v0,$f3
    cvt.s.w	$f2,$f2
    sw	$v0,11488($a4)
    lwc1	$f0,11492($a3)
    lwc1	$f1,11496($a3)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f1
    sd	$ra,8($sp)
    mfc1	$a2,$f0
    sw	$at,11496($a3)
    b	.L0f109c9c
    sw	$a2,11492($a3)
.end gl_i_rpdr2i

# Function: gl_c_rpdr2i
# Declared: Line 44 (Source lines: 44-44)
# Address: 0x0f109d14 - 0x0f109d98 (Size: 132 bytes, Frame: 192)
.globl gl_c_rpdr2i
.ent gl_c_rpdr2i
gl_c_rpdr2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-27340 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20220($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f109d74
    move	$s8,$a0
.L0f109d40:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpdr2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f109d74:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24008
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f109d40
    sw	$a2,-20220($gp)
.end gl_c_rpdr2i

# Function: gl_n_rpdr2i
# Declared: Line 44 (Source lines: 44-44)
# Address: 0x0f109d98 - 0x0f109e7c (Size: 228 bytes, Frame: 48)
.globl gl_n_rpdr2i
.ent gl_n_rpdr2i
gl_n_rpdr2i:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    sd	$s7,8($sp)
    lui	$s7,0xfff3
    addiu	$s7,$s7,-27472
    addu	$gp,$t9,$s7
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    lw	$a3,0($a0)
    lw	$at,11484($a4)
    li	$v0,1
    move	$s7,$a0
    beq	$at,$v0,.L0f109e1c
    move	$a2,$a4
    lw	$v1,11488($a4)
    addu	$v1,$v1,$a3
    sw	$v1,11488($a4)
    lw	$v0,11492($a2)
    lw	$at,4($s7)
    sd	$ra,16($sp)
    addu	$at,$at,$v0
    sw	$at,11492($a2)
.L0f109df0:
    lw	$t9,28($a2)
    addiu	$a0,$a2,11488
    li	$a1,2
    jalr	$t9
    sw	$a1,11484($a2)
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    addiu	$v0,$s7,8
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f109e1c:
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,11488($a4)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    sw	$a1,11488($a4)
    lw	$v1,4($s7)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,11492($a2)
    lwc1	$f1,11496($a2)
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f1
    sd	$ra,16($sp)
    mfc1	$at,$f0
    sw	$v0,11496($a2)
    b	.L0f109df0
    sw	$at,11492($a2)
.end gl_n_rpdr2i

# Function: gl_i_rpdr2
# Declared: Line 45 (Source lines: 45-45)
# Address: 0x0f109e7c - 0x0f109f2c (Size: 176 bytes, Frame: 32)
.globl gl_i_rpdr2
.ent gl_i_rpdr2
gl_i_rpdr2:
    # Line 45
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a2,0xfff3
    addiu	$a2,$a2,-27700
    addu	$gp,$t9,$a2
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    lw	$at,11484($a1)
    li	$a3,1
    beq	$at,$a3,.L0f109f0c
    move	$a2,$a1
    lw	$v1,11488($a1)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    add.s	$f1,$f1,$f12
    swc1	$f1,11488($a1)
    lw	$v0,11492($a2)
    mtc1	$v0,$f0
    lw	$at,11496($a2)
    cvt.s.w	$f0,$f0
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    add.s	$f0,$f0,$f13
    sd	$ra,8($sp)
    swc1	$f1,11496($a2)
    swc1	$f0,11492($a2)
.L0f109eec:
    lw	$t9,24($a2)
    addiu	$a0,$a2,11488
    jalr	$t9
    sw	$a3,11484($a2)
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f109f0c:
    lwc1	$f3,11488($a1)
    add.s	$f3,$f3,$f12
    swc1	$f3,11488($a1)
    lwc1	$f2,11492($a2)
    add.s	$f2,$f2,$f13
    sd	$ra,8($sp)
    b	.L0f109eec
    swc1	$f2,11492($a2)
.end gl_i_rpdr2

# Function: gl_c_rpdr2
# Declared: Line 45 (Source lines: 45-45)
# Address: 0x0f109f2c - 0x0f109fb0 (Size: 132 bytes, Frame: 192)
.globl gl_c_rpdr2
.ent gl_c_rpdr2
gl_c_rpdr2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-27876 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20216($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f109f8c
    mov.s	$f30,$f12
.L0f109f58:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpdr2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f109f8c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,-23992
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f109f58
    sw	$at,-20216($gp)
.end gl_c_rpdr2

# Function: gl_n_rpdr2
# Declared: Line 45 (Source lines: 45-45)
# Address: 0x0f109fb0 - 0x0f10a07c (Size: 204 bytes, Frame: 48)
.globl gl_n_rpdr2
.ent gl_n_rpdr2
gl_n_rpdr2:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a4,0xfff3
    addiu	$a4,$a4,-28008
    addu	$gp,$t9,$a4
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lwc1	$f4,0($a0)
    sd	$s7,8($sp)
    lw	$at,11484($a3)
    move	$s7,$a0
    li	$a4,1
    beq	$at,$a4,.L0f10a058
    move	$a2,$a3
    lw	$v1,11488($a3)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    add.s	$f3,$f3,$f4
    swc1	$f3,11488($a3)
    lw	$v0,11492($a2)
    mtc1	$v0,$f2
    lw	$at,11496($a2)
    cvt.s.w	$f2,$f2
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,4($s7)
    add.s	$f0,$f0,$f2
    sd	$ra,16($sp)
    swc1	$f1,11496($a2)
    swc1	$f0,11492($a2)
.L0f10a030:
    lw	$t9,24($a2)
    addiu	$a0,$a2,11488
    jalr	$t9
    sw	$a4,11484($a2)
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    addiu	$v0,$s7,8
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10a058:
    lwc1	$f2,11488($a3)
    add.s	$f2,$f2,$f4
    swc1	$f2,11488($a3)
    lwc1	$f1,11492($a2)
    lwc1	$f0,4($s7)
    add.s	$f0,$f0,$f1
    sd	$ra,16($sp)
    b	.L0f10a030
    swc1	$f0,11492($a2)
.end gl_n_rpdr2

# Function: gl_i_rpdrs
# Declared: Line 46 (Source lines: 46-46)
# Address: 0x0f10a07c - 0x0f10a154 (Size: 216 bytes, Frame: 48)
.globl gl_i_rpdrs
.ent gl_i_rpdrs
gl_i_rpdrs:
    # Line 46
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-28212 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a5,gl_wstatep
    lw	$a5,0($a5)
    lw	$at,11484($a5)
    li	$v0,1
    beq	$at,$v0,.L0f10a0f4
    move	$a4,$a5
    lw	$a3,11488($a5)
    addu	$a3,$a3,$a0
    sw	$a3,11488($a5)
    lw	$v0,11492($a4)
    lw	$v1,11496($a4)
    sd	$ra,8($sp)
    addu	$v0,$v0,$a1
    addu	$v1,$v1,$a2
    sw	$v1,11496($a4)
    sw	$v0,11492($a4)
.L0f10a0d0:
    lw	$t9,28($a4)
    addiu	$a0,$a4,11488
    li	$a5,2
    jalr	$t9
    sw	$a5,11484($a4)
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10a0f4:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($a5)
    add.s	$f0,$f0,$f1
    mtc1	$a1,$f2
    trunc.w.s	$f0,$f0
    cvt.s.w	$f2,$f2
    mtc1	$a2,$f3
    mfc1	$v1,$f0
    cvt.s.w	$f3,$f3
    sw	$v1,11488($a5)
    lwc1	$f1,11496($a4)
    lwc1	$f0,11492($a4)
    add.s	$f1,$f1,$f3
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f1
    sd	$ra,8($sp)
    mfc1	$at,$f0
    sw	$v0,11496($a4)
    b	.L0f10a0d0
    sw	$at,11492($a4)
.end gl_i_rpdrs

# Function: gl_c_rpdrs
# Declared: Line 46 (Source lines: 46-46)
# Address: 0x0f10a154 - 0x0f10a1e8 (Size: 148 bytes, Frame: 224)
.globl gl_c_rpdrs
.ent gl_c_rpdrs
gl_c_rpdrs:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-28428 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20212($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f10a1bc
    move	$s8,$a0
.L0f10a180:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpdrs
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f10a1bc:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-23976
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20212($gp)
    b	.L0f10a180
    ld	$a2,40($sp)
.end gl_c_rpdrs

# Function: gl_n_rpdrs
# Declared: Line 46 (Source lines: 46-46)
# Address: 0x0f10a1e8 - 0x0f10a2f4 (Size: 268 bytes, Frame: 48)
.globl gl_n_rpdrs
.ent gl_n_rpdrs
gl_n_rpdrs:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    sd	$s7,8($sp)
    lui	$s7,0xfff3
    addiu	$s7,$s7,-28576
    addu	$gp,$t9,$s7
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    lh	$a3,0($a0)
    lw	$at,11484($a4)
    li	$v0,1
    move	$s7,$a0
    beq	$at,$v0,.L0f10a27c
    move	$a2,$a4
    lw	$at,11488($a4)
    addu	$at,$at,$a3
    sw	$at,11488($a4)
    lw	$a1,11492($a2)
    lh	$v1,2($s7)
    addu	$v1,$v1,$a1
    sw	$v1,11492($a2)
    lw	$v0,11496($a2)
    lh	$at,4($s7)
    sd	$ra,16($sp)
    addu	$at,$at,$v0
    sw	$at,11496($a2)
.L0f10a250:
    lw	$t9,28($a2)
    addiu	$a0,$a2,11488
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($a2)
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    addiu	$v0,$s7,8
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10a27c:
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($a4)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    sw	$v1,11488($a4)
    lh	$v0,2($s7)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,11492($a2)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    nop
    sw	$at,11492($a2)
    lh	$a1,4($s7)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11496($a2)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    sd	$ra,16($sp)
    b	.L0f10a250
    sw	$v1,11496($a2)
.end gl_n_rpdrs

# Function: gl_i_rpdri
# Declared: Line 47 (Source lines: 47-47)
# Address: 0x0f10a2f4 - 0x0f10a3cc (Size: 216 bytes, Frame: 48)
.globl gl_i_rpdri
.ent gl_i_rpdri
gl_i_rpdri:
    # Line 47
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-28844 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a5,gl_wstatep
    lw	$a5,0($a5)
    lw	$at,11484($a5)
    li	$v0,1
    beq	$at,$v0,.L0f10a36c
    move	$a4,$a5
    lw	$a3,11488($a5)
    addu	$a3,$a3,$a0
    sw	$a3,11488($a5)
    lw	$v0,11492($a4)
    lw	$v1,11496($a4)
    sd	$ra,8($sp)
    addu	$v0,$v0,$a1
    addu	$v1,$v1,$a2
    sw	$v1,11496($a4)
    sw	$v0,11492($a4)
.L0f10a348:
    lw	$t9,28($a4)
    addiu	$a0,$a4,11488
    li	$a5,2
    jalr	$t9
    sw	$a5,11484($a4)
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10a36c:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($a5)
    add.s	$f0,$f0,$f1
    mtc1	$a1,$f2
    trunc.w.s	$f0,$f0
    cvt.s.w	$f2,$f2
    mtc1	$a2,$f3
    mfc1	$v1,$f0
    cvt.s.w	$f3,$f3
    sw	$v1,11488($a5)
    lwc1	$f1,11496($a4)
    lwc1	$f0,11492($a4)
    add.s	$f1,$f1,$f3
    add.s	$f0,$f0,$f2
    trunc.w.s	$f1,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f1
    sd	$ra,8($sp)
    mfc1	$at,$f0
    sw	$v0,11496($a4)
    b	.L0f10a348
    sw	$at,11492($a4)
.end gl_i_rpdri

# Function: gl_c_rpdri
# Declared: Line 47 (Source lines: 47-47)
# Address: 0x0f10a3cc - 0x0f10a45c (Size: 144 bytes, Frame: 224)
.globl gl_c_rpdri
.ent gl_c_rpdri
gl_c_rpdri:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-29060 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20208($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f10a430
    move	$s8,$a0
.L0f10a3f8:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpdri
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f10a430:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-23960
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20208($gp)
    b	.L0f10a3f8
    ld	$a2,48($sp)
.end gl_c_rpdri

# Function: gl_n_rpdri
# Declared: Line 47 (Source lines: 47-47)
# Address: 0x0f10a45c - 0x0f10a568 (Size: 268 bytes, Frame: 48)
.globl gl_n_rpdri
.ent gl_n_rpdri
gl_n_rpdri:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    sd	$s7,8($sp)
    lui	$s7,0xfff3
    addiu	$s7,$s7,-29204
    addu	$gp,$t9,$s7
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    lw	$a3,0($a0)
    lw	$at,11484($a4)
    li	$v0,1
    move	$s7,$a0
    beq	$at,$v0,.L0f10a4f0
    move	$a2,$a4
    lw	$at,11488($a4)
    addu	$at,$at,$a3
    sw	$at,11488($a4)
    lw	$a1,11492($a2)
    lw	$v1,4($s7)
    addu	$v1,$v1,$a1
    sw	$v1,11492($a2)
    lw	$v0,11496($a2)
    lw	$at,8($s7)
    sd	$ra,16($sp)
    addu	$at,$at,$v0
    sw	$at,11496($a2)
.L0f10a4c4:
    lw	$t9,28($a2)
    addiu	$a0,$a2,11488
    li	$v0,2
    jalr	$t9
    sw	$v0,11484($a2)
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    addiu	$v0,$s7,12
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10a4f0:
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11488($a4)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    sw	$v1,11488($a4)
    lw	$v0,4($s7)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,11492($a2)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    nop
    sw	$at,11492($a2)
    lw	$a1,8($s7)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,11496($a2)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    sd	$ra,16($sp)
    b	.L0f10a4c4
    sw	$v1,11496($a2)
.end gl_n_rpdri

# Function: gl_i_rpdr
# Declared: Line 48 (Source lines: 48-48)
# Address: 0x0f10a568 - 0x0f10a628 (Size: 192 bytes, Frame: 48)
.globl gl_i_rpdr
.ent gl_i_rpdr
gl_i_rpdr:
    # Line 48
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a2,0xfff3
    addiu	$a2,$a2,-29472
    addu	$gp,$t9,$a2
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    lw	$at,11484($a1)
    li	$a3,1
    beq	$at,$a3,.L0f10a5fc
    move	$a2,$a1
    lw	$v1,11488($a1)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    add.s	$f2,$f2,$f12
    swc1	$f2,11488($a1)
    lw	$v0,11496($a2)
    mtc1	$v0,$f1
    lw	$at,11492($a2)
    cvt.s.w	$f1,$f1
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    add.s	$f1,$f1,$f14
    add.s	$f0,$f0,$f13
    sd	$ra,8($sp)
    swc1	$f1,11496($a2)
    swc1	$f0,11492($a2)
.L0f10a5dc:
    lw	$t9,24($a2)
    addiu	$a0,$a2,11488
    jalr	$t9
    sw	$a3,11484($a2)
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10a5fc:
    lwc1	$f1,11488($a1)
    add.s	$f1,$f1,$f12
    swc1	$f1,11488($a1)
    lwc1	$f0,11496($a2)
    lwc1	$f3,11492($a2)
    add.s	$f0,$f0,$f14
    add.s	$f3,$f3,$f13
    sd	$ra,8($sp)
    swc1	$f0,11496($a2)
    b	.L0f10a5dc
    swc1	$f3,11492($a2)
.end gl_i_rpdr

# Function: gl_c_rpdr
# Declared: Line 48 (Source lines: 48-48)
# Address: 0x0f10a628 - 0x0f10a6bc (Size: 148 bytes, Frame: 224)
.globl gl_c_rpdr
.ent gl_c_rpdr
gl_c_rpdr:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-29664 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20204($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f10a690
    mov.s	$f30,$f12
.L0f10a658:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_rpdr
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f10a690:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-23944
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f10a658
    sw	$at,-20204($gp)
.end gl_c_rpdr

# Function: gl_n_rpdr
# Declared: Line 48 (Source lines: 48-48)
# Address: 0x0f10a6bc - 0x0f10a7a0 (Size: 228 bytes, Frame: 48)
.globl gl_n_rpdr
.ent gl_n_rpdr
gl_n_rpdr:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a4,0xfff3
    addiu	$a4,$a4,-29812
    addu	$gp,$t9,$a4
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lwc1	$f4,0($a0)
    sd	$s7,8($sp)
    lw	$at,11484($a3)
    move	$s7,$a0
    li	$a4,1
    beq	$at,$a4,.L0f10a76c
    move	$a2,$a3
    lw	$v1,11488($a3)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    add.s	$f0,$f0,$f4
    swc1	$f0,11488($a3)
    lw	$v0,11492($a2)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    lw	$at,11496($a2)
    lwc1	$f2,4($s7)
    mtc1	$at,$f1
    add.s	$f2,$f2,$f3
    cvt.s.w	$f1,$f1
    swc1	$f2,11492($a2)
    lwc1	$f0,8($s7)
    add.s	$f0,$f0,$f1
    sd	$ra,16($sp)
    swc1	$f0,11496($a2)
.L0f10a744:
    lw	$t9,24($a2)
    addiu	$a0,$a2,11488
    jalr	$t9
    sw	$a4,11484($a2)
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    addiu	$v0,$s7,12
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10a76c:
    lwc1	$f1,11488($a3)
    add.s	$f1,$f1,$f4
    swc1	$f1,11488($a3)
    lwc1	$f0,11492($a2)
    lwc1	$f3,4($s7)
    add.s	$f3,$f3,$f0
    swc1	$f3,11492($a2)
    lwc1	$f2,11496($a2)
    lwc1	$f1,8($s7)
    add.s	$f1,$f1,$f2
    sd	$ra,16($sp)
    b	.L0f10a744
    swc1	$f1,11496($a2)
.end gl_n_rpdr

