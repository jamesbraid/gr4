# Source: ../igloo/graphics/points.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/points.c -o points.T
# Total Functions: 18

.text

# Function: gl_i_pnt2s
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f0fec28 - 0x0f0fed00 (Size: 216 bytes, Frame: 192)
.globl gl_i_pnt2s
.ent gl_i_pnt2s
gl_i_pnt2s:
    # Line 30
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,17952 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,40($sp)
    sd	$s1,24($sp)
    lw	$at,0($at)
    move	$s1,$a1
    sd	$s0,16($sp)
    beqz	$at,.L0f0fec68
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fec68:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex2s
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,8($sp)
    li	$ra,2
    la	$t9,glVertex3iv
    addiu	$a0,$at,11488
    sw	$zero,11496($at)
    sw	$s1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$s0,11488($at)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s0,16($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_pnt2s

# Function: gl_c_pnt2s
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f0fed00 - 0x0f0fed84 (Size: 132 bytes, Frame: 192)
.globl gl_c_pnt2s
.ent gl_c_pnt2s
gl_c_pnt2s:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,17736 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20440($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fed60
    move	$s8,$a0
.L0f0fed2c:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pnt2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fed60:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24936
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0fed2c
    sw	$a2,-20440($gp)
.end gl_c_pnt2s

# Function: gl_n_pnt2s
# Declared: Line 30 (Source lines: 30-30)
# Address: 0x0f0fed84 - 0x0f0fee5c (Size: 216 bytes, Frame: 192)
.globl gl_n_pnt2s
.ent gl_n_pnt2s
gl_n_pnt2s:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,17604 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0fedbc
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fedbc:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex2s
    lh	$a1,2($s3)
    jalr	$t9
    lh	$a0,0($s3)
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,8($sp)
    lh	$v1,0($s3)
    li	$v0,2
    sw	$v1,11488($at)
    la	$t9,glVertex3iv
    lh	$ra,2($s3)
    addiu	$a0,$at,11488
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    ld	$ra,32($sp)
    addiu	$v0,$s3,4
    ld	$s3,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_pnt2s

# Function: gl_i_pnt2i
# Declared: Line 42 (Source lines: 42-42)
# Address: 0x0f0fee5c - 0x0f0fef34 (Size: 216 bytes, Frame: 192)
.globl gl_i_pnt2i
.ent gl_i_pnt2i
gl_i_pnt2i:
    # Line 42
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,17388 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,40($sp)
    sd	$s1,24($sp)
    lw	$at,0($at)
    move	$s1,$a1
    sd	$s0,16($sp)
    beqz	$at,.L0f0fee9c
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fee9c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex2i
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,8($sp)
    li	$ra,2
    la	$t9,glVertex3iv
    addiu	$a0,$at,11488
    sw	$zero,11496($at)
    sw	$s1,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$s0,11488($at)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s0,16($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_pnt2i

# Function: gl_c_pnt2i
# Declared: Line 42 (Source lines: 42-42)
# Address: 0x0f0fef34 - 0x0f0fefb8 (Size: 132 bytes, Frame: 192)
.globl gl_c_pnt2i
.ent gl_c_pnt2i
gl_c_pnt2i:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,17172 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20436($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fef94
    move	$s8,$a0
.L0f0fef60:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pnt2i
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fef94:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24920
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0fef60
    sw	$a2,-20436($gp)
.end gl_c_pnt2i

# Function: gl_n_pnt2i
# Declared: Line 42 (Source lines: 42-42)
# Address: 0x0f0fefb8 - 0x0f0ff090 (Size: 216 bytes, Frame: 192)
.globl gl_n_pnt2i
.ent gl_n_pnt2i
gl_n_pnt2i:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,17040 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0feff0
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0feff0:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex2i
    lw	$a1,4($s3)
    jalr	$t9
    lw	$a0,0($s3)
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,8($sp)
    lw	$v1,0($s3)
    li	$v0,2
    sw	$v1,11488($at)
    la	$t9,glVertex3iv
    lw	$ra,4($s3)
    addiu	$a0,$at,11488
    sw	$v0,11484($at)
    sw	$ra,11492($at)
    jalr	$t9
    sw	$zero,11496($at)
    ld	$ra,32($sp)
    addiu	$v0,$s3,8
    ld	$s3,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_pnt2i

# Function: gl_i_pnt2
# Declared: Line 54 (Source lines: 54-54)
# Address: 0x0f0ff090 - 0x0f0ff170 (Size: 224 bytes, Frame: 192)
.globl gl_i_pnt2
.ent gl_i_pnt2
gl_i_pnt2:
    # Line 54
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,16824 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    sd	$ra,40($sp)
    sdc1	$f22,0($sp)
    lw	$at,0($at)
    mov.s	$f22,$f13
    sdc1	$f20,8($sp)
    beqz	$at,.L0f0ff0d0
    mov.s	$f20,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0ff0d0:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,16($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex2f
    mov.s	$f12,$f20
    jalr	$t9
    mov.s	$f13,$f22
    ld	$t9,16($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,24($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    li	$at,1
    ld	$ra,24($sp)
    la	$t9,glVertex3fv
    mtc1	$zero,$f0
    addiu	$a0,$ra,11488
    swc1	$f22,11492($ra)
    swc1	$f20,11488($ra)
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    nop
    ldc1	$f20,8($sp)
    ldc1	$f22,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_pnt2

# Function: gl_c_pnt2
# Declared: Line 54 (Source lines: 54-54)
# Address: 0x0f0ff170 - 0x0f0ff1f4 (Size: 132 bytes, Frame: 192)
.globl gl_c_pnt2
.ent gl_c_pnt2
gl_c_pnt2:
    mov.s	$f4,$f13
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,16600 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20432($gp)
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f0ff1d0
    mov.s	$f30,$f12
.L0f0ff19c:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pnt2
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ff1d0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f4,32($sp)
    jalr	$t9
    addiu	$a0,$a0,-24904
    ldc1	$f4,32($sp)
    li	$at,1
    b	.L0f0ff19c
    sw	$at,-20432($gp)
.end gl_c_pnt2

# Function: gl_n_pnt2
# Declared: Line 54 (Source lines: 54-54)
# Address: 0x0f0ff1f4 - 0x0f0ff2d4 (Size: 224 bytes, Frame: 192)
.globl gl_n_pnt2
.ent gl_n_pnt2
gl_n_pnt2:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,16468 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0ff22c
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0ff22c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex2f
    lwc1	$f13,4($s3)
    jalr	$t9
    lwc1	$f12,0($s3)
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    li	$at,1
    ld	$ra,8($sp)
    lwc1	$f2,0($s3)
    la	$t9,glVertex3fv
    mtc1	$zero,$f1
    swc1	$f2,11488($ra)
    addiu	$a0,$ra,11488
    lwc1	$f0,4($s3)
    sw	$at,11484($ra)
    swc1	$f1,11496($ra)
    swc1	$f0,11492($ra)
    jalr	$t9
    nop
    ld	$ra,32($sp)
    addiu	$v0,$s3,8
    ld	$s3,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_pnt2

# Function: gl_i_pnts
# Declared: Line 66 (Source lines: 66-66)
# Address: 0x0f0ff2d4 - 0x0f0ff3e0 (Size: 268 bytes, Frame: 224)
.globl gl_i_pnts
.ent gl_i_pnts
gl_i_pnts:
    # Line 66
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s2,32($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,16244 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s2,$a2
    sd	$s0,16($sp)
    lw	$at,0($at)
    move	$s0,$a1
    sd	$s1,24($sp)
    beqz	$at,.L0f0ff31c
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0ff31c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex3s
    move	$a0,$s1
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    mtc1	$s0,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$s2,$f2
    nop
    cvt.s.w	$f2,$f2
    mtc1	$s1,$f0
    li	$at,1
    ld	$ra,8($sp)
    cvt.s.w	$f0,$f0
    la	$t9,glVertex3fv
    addiu	$a0,$ra,11488
    sw	$at,11484($ra)
    swc1	$f2,11496($ra)
    swc1	$f1,11492($ra)
    swc1	$f0,11488($ra)
    jalr	$t9
    nop
    ld	$s2,32($sp)
    ld	$s1,24($sp)
    ld	$ra,48($sp)
    ld	$s0,16($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_pnts

# Function: gl_c_pnts
# Declared: Line 66 (Source lines: 66-66)
# Address: 0x0f0ff3e0 - 0x0f0ff474 (Size: 148 bytes, Frame: 224)
.globl gl_c_pnts
.ent gl_c_pnts
gl_c_pnts:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,15976 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20428($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0ff448
    move	$s8,$a0
.L0f0ff40c:
    addiu	$a1,$sp,0
    li	$a0,6
    sh	$zero,10($sp)
    sh	$a2,8($sp)
    sh	$a4,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pnts
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ff448:
    sd	$a4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24888
    ld	$a4,48($sp)
    li	$a2,1
    sw	$a2,-20428($gp)
    b	.L0f0ff40c
    ld	$a2,40($sp)
.end gl_c_pnts

# Function: gl_n_pnts
# Declared: Line 66 (Source lines: 66-66)
# Address: 0x0f0ff474 - 0x0f0ff57c (Size: 264 bytes, Frame: 192)
.globl gl_n_pnts
.ent gl_n_pnts
gl_n_pnts:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,15828 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0ff4ac
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0ff4ac:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex3s
    lh	$a2,4($s3)
    lh	$a1,2($s3)
    jalr	$t9
    lh	$a0,0($s3)
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    lh	$a0,0($s3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$ra,8($sp)
    swc1	$f2,11488($ra)
    lh	$v1,2($s3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,11492($ra)
    lh	$v0,4($s3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    li	$at,1
    la	$t9,glVertex3fv
    addiu	$a0,$ra,11488
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    nop
    ld	$ra,32($sp)
    addiu	$v0,$s3,8
    ld	$s3,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_pnts

# Function: gl_i_pnti
# Declared: Line 78 (Source lines: 78-78)
# Address: 0x0f0ff57c - 0x0f0ff664 (Size: 232 bytes, Frame: 224)
.globl gl_i_pnti
.ent gl_i_pnti
gl_i_pnti:
    # Line 78
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s2,32($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,15564 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    move	$s2,$a2
    sd	$s0,16($sp)
    lw	$at,0($at)
    move	$s0,$a1
    sd	$s1,24($sp)
    beqz	$at,.L0f0ff5c4
    move	$s1,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0ff5c4:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex3i
    move	$a0,$s1
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,8($sp)
    li	$ra,2
    la	$t9,glVertex3iv
    addiu	$a0,$at,11488
    sw	$s2,11496($at)
    sw	$s0,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    sw	$s1,11488($at)
    ld	$s2,32($sp)
    ld	$s1,24($sp)
    ld	$ra,48($sp)
    ld	$s0,16($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_pnti

# Function: gl_c_pnti
# Declared: Line 78 (Source lines: 78-78)
# Address: 0x0f0ff664 - 0x0f0ff6f4 (Size: 144 bytes, Frame: 224)
.globl gl_c_pnti
.ent gl_c_pnti
gl_c_pnti:
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,15332 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20424($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f0ff6c8
    move	$s8,$a0
.L0f0ff690:
    addiu	$a1,$sp,0
    li	$a0,8
    sw	$a2,12($sp)
    sw	$a4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pnti
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ff6c8:
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a2,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-24872
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-20424($gp)
    b	.L0f0ff690
    ld	$a2,48($sp)
.end gl_c_pnti

# Function: gl_n_pnti
# Declared: Line 78 (Source lines: 78-78)
# Address: 0x0f0ff6f4 - 0x0f0ff7d4 (Size: 224 bytes, Frame: 192)
.globl gl_n_pnti
.ent gl_n_pnti
gl_n_pnti:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,15188 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0ff72c
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0ff72c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex3i
    lw	$a2,8($s3)
    lw	$a1,4($s3)
    jalr	$t9
    lw	$a0,0($s3)
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,8($sp)
    lw	$a0,0($s3)
    sw	$a0,11488($at)
    lw	$v1,4($s3)
    sw	$v1,11492($at)
    li	$v0,2
    lw	$ra,8($s3)
    la	$t9,glVertex3iv
    addiu	$a0,$at,11488
    sw	$ra,11496($at)
    jalr	$t9
    sw	$v0,11484($at)
    ld	$ra,32($sp)
    addiu	$v0,$s3,12
    ld	$s3,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_pnti

# Function: gl_i_pnt
# Declared: Line 90 (Source lines: 90-90)
# Address: 0x0f0ff7d4 - 0x0f0ff8bc (Size: 232 bytes, Frame: 224)
.globl gl_i_pnt
.ent gl_i_pnt
gl_i_pnt:
    # Line 90
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sdc1	$f24,16($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,14964 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    mov.s	$f24,$f14
    sdc1	$f22,8($sp)
    lw	$at,0($at)
    mov.s	$f22,$f13
    sdc1	$f20,0($sp)
    beqz	$at,.L0f0ff81c
    mov.s	$f20,$f12
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0ff81c:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,24($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex3f
    mov.s	$f12,$f20
    mov.s	$f13,$f22
    jalr	$t9
    mov.s	$f14,$f24
    ld	$t9,24($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,32($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$at,32($sp)
    li	$ra,1
    la	$t9,glVertex3fv
    addiu	$a0,$at,11488
    swc1	$f24,11496($at)
    swc1	$f22,11492($at)
    sw	$ra,11484($at)
    jalr	$t9
    swc1	$f20,11488($at)
    ldc1	$f24,16($sp)
    ldc1	$f22,8($sp)
    ldc1	$f20,0($sp)
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_i_pnt

# Function: gl_c_pnt
# Declared: Line 90 (Source lines: 90-90)
# Address: 0x0f0ff8bc - 0x0f0ff950 (Size: 148 bytes, Frame: 224)
.globl gl_c_pnt
.ent gl_c_pnt
gl_c_pnt:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,14732 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20420($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f0ff924
    mov.s	$f30,$f12
.L0f0ff8ec:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pnt
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ff924:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-24856
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f0ff8ec
    sw	$at,-20420($gp)
.end gl_c_pnt

# Function: gl_n_pnt
# Declared: Line 90 (Source lines: 90-90)
# Address: 0x0f0ff950 - 0x0f0ffa34 (Size: 228 bytes, Frame: 192)
.globl gl_n_pnt
.ent gl_n_pnt
gl_n_pnt:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,14584 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,32($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f0ff988
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0ff988:
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,0($sp)
    lw	$t9,216($t9)
    jalr	$t9
    move	$a0,$zero
    la	$t9,glVertex3f
    lwc1	$f14,8($s3)
    lwc1	$f13,4($s3)
    jalr	$t9
    lwc1	$f12,0($s3)
    ld	$t9,0($sp)
    lw	$t9,220($t9)
    jalr	$t9
    nop
    la	$t9,gl_wstatep
    lw	$t9,0($t9)
    sd	$t9,8($sp)
    lw	$t9,216($t9)
    jalr	$t9
    li	$a0,3
    la	$t9,__iglooSetMoveDraw
    jalr	$t9
    li	$a0,1
    ld	$ra,8($sp)
    lwc1	$f2,0($s3)
    swc1	$f2,11488($ra)
    lwc1	$f1,4($s3)
    li	$at,1
    swc1	$f1,11492($ra)
    la	$t9,glVertex3fv
    lwc1	$f0,8($s3)
    addiu	$a0,$ra,11488
    sw	$at,11484($ra)
    swc1	$f0,11496($ra)
    jalr	$t9
    nop
    ld	$ra,32($sp)
    addiu	$v0,$s3,12
    ld	$s3,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_pnt

