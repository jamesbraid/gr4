# Source: ../igloo/xform/xform.c
# Category: xform
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/xform/xform.c -o xform.T
# Total Functions: 33

.text

# Function: gl_g_getmatrix
# Declared: Line 27 (Source lines: 28-47)
# Address: 0x0f12ed84 - 0x0f12ee1c (Size: 152 bytes, Frame: 192)
.globl gl_g_getmatrix
.ent gl_g_getmatrix
gl_g_getmatrix:
    # Line 28
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    sd	$gp,24($sp)
    sd	$ra,16($sp)
    lui	$ra,0xfff0
    addiu	$ra,$ra,17604
    addu	$gp,$t9,$ra
    # Line 29
    la	$s0,gl_wstatep
    # Line 32
    la	$t9,sub_0f130000
    sd	$a0,0($sp)
    # Line 29
    lw	$s0,0($s0)
    # Line 32
    addiu	$t9,$t9,-2136
    bal gl_n_pushmatrix
    lh	$a0,264($s0)
    lw	$at,2904($s0)
    li	$a0,1
    bne	$at,$a0,.L0f12edd8
    # Line 46
    la	$t9,__iglooGetMatrix
    # Line 32
    lh	$v1,264($s0)
    beq	$v1,$a0,.L0f12edf8
.L0f12edd4:
    # Line 46
    la	$t9,__iglooGetMatrix
.L0f12edd8:
    move	$a0,$v0
    ld	$a1,0($sp)
    jalr	$t9
    ld	$s0,8($sp)
    # Line 47
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12edf8:
    # Line 41
    la	$t9,__iglooRestoreUsrMat
    jalr	$t9
    sd	$v0,32($sp)
    ld	$v0,32($sp)
    li	$a3,1
    # Line 43
    la	$a2,slowBegin
    # Line 42
    sw	$a3,2908($s0)
    b	.L0f12edd4
    # Line 43
    sw	$a2,216($s0)
.end gl_g_getmatrix

# Function: gl_matrixmode
# Declared: Line 49 (Source lines: 50-82)
# Address: 0x0f12ee1c - 0x0f12ef08 (Size: 236 bytes, Frame: 192)
.globl gl_matrixmode
.ent gl_matrixmode
gl_matrixmode:
    # Line 50
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,17452 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 51
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$at,8($sp)
    lh	$at,264($at)
    sd	$s0,24($sp)
    bne	$at,$a0,.L0f12ee5c
    # Line 50
    move	$s0,$a0
    ld	$gp,16($sp)
    # Line 56
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12ee5c:
    # Line 61
    la	$t9,sub_0f130000
    sd	$ra,32($sp)
    addiu	$t9,$t9,-2208
    bal gl_n_pushmatrix
    move	$a0,$s0
    li	$at,-1
    beq	$v0,$at,.L0f12eeec
    sd	$v0,0($sp)
    # Line 69
    beqz	$s0,.L0f12eeb4
    ld	$v1,8($sp)
    lh	$v1,264($v1)
    beqz	$v1,.L0f12eeb4
    # Line 80
    la	$t9,__iglooMatrixMode
.L0f12ee90:
    # Line 78
    ld	$a1,8($sp)
    # Line 80
    ld	$a0,0($sp)
    jalr	$t9
    # Line 78
    sh	$s0,264($a1)
    ld	$ra,32($sp)
.L0f12eea4:
    ld	$gp,16($sp)
    # Line 82
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12eeb4:
    # Line 69
    la	$t9,sub_0f130000
    addiu	$t9,$t9,36
    # Line 71
    bal gl_g_polarview
    li	$a0,5888
    la	$t9,sub_0f130000
    addiu	$t9,$t9,36
    # Line 72
    bal gl_g_polarview
    li	$a0,5889
    la	$t9,sub_0f130000
    addiu	$t9,$t9,36
    # Line 73
    bal gl_g_polarview
    li	$a0,5890
    b	.L0f12ee90
    # Line 80
    la	$t9,__iglooMatrixMode
.L0f12eeec:
    # Line 65
    la	$t9,gl_ErrorHandler
    addiu	$a2,$gp,-15800
    li	$a1,2
    jalr	$t9
    li	$a0,98
    b	.L0f12eea4
    ld	$ra,32($sp)
.end gl_matrixmode

# Function: gl_i_mmode
# Declared: Line 86 (Source lines: 86-86)
# Address: 0x0f12ef08 - 0x0f12ef58 (Size: 80 bytes, Frame: 48)
.globl gl_i_mmode
.ent gl_i_mmode
gl_i_mmode:
    # Line 86
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,17216 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f12ef3c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f12ef3c:
    la	$t9,gl_matrixmode
    bal gl_matrixmode
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_mmode

# Function: gl_c_mmode
# Declared: Line 86 (Source lines: 86-86)
# Address: 0x0f12ef58 - 0x0f12efd0 (Size: 120 bytes, Frame: 192)
.globl gl_c_mmode
.ent gl_c_mmode
gl_c_mmode:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,17136 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19716($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f12efb4
    move	$s8,$a0
.L0f12ef80:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_mmode
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12efb4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-20840
    li	$a1,1
    b	.L0f12ef80
    sw	$a1,-19716($gp)
.end gl_c_mmode

# Function: gl_n_mmode
# Declared: Line 86 (Source lines: 86-86)
# Address: 0x0f12efd0 - 0x0f12f02c (Size: 92 bytes, Frame: 48)
.globl gl_n_mmode
.ent gl_n_mmode
gl_n_mmode:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,17016 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f12f008
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f12f008:
    la	$t9,gl_matrixmode
    bal gl_matrixmode
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_mmode

# Function: gl_g_getmmode
# Declared: Line 88 (Source lines: 89-92)
# Address: 0x0f12f02c - 0x0f12f048 (Size: 28 bytes, Frame: 0)
.globl gl_g_getmmode
.ent gl_g_getmmode
gl_g_getmmode:
    # Line 89
    lui	$v1,0xfff0
    addiu	$v1,$v1,16924
    addu	$at,$t9,$v1
    # Line 92
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    jr	$ra
    lh	$v0,264($v0)
.end gl_g_getmmode

# Function: igl_loadMatrix
# Declared: Line 95 (Source lines: 96-124)
# Address: 0x0f12f048 - 0x0f12f138 (Size: 240 bytes, Frame: 192)
.globl igl_loadMatrix
.ent igl_loadMatrix
igl_loadMatrix:
    # Line 96
    addiu	$sp,$sp,-64
    sd	$s1,0($sp)
    sd	$gp,40($sp)
    sd	$s2,16($sp)
    lui	$s2,0xfff0
    addiu	$s2,$s2,16896
    addu	$gp,$t9,$s2
    # Line 97
    la	$s1,gl_wstatep
    sd	$s6,32($sp)
    # Line 96
    move	$s6,$a0
    # Line 97
    lw	$s1,0($s1)
    sd	$ra,24($sp)
    # Line 106
    la	$t9,__iglooGetPickingMatrix
    sd	$s1,8($sp)
    # Line 104
    sb	$zero,11864($s1)
    # Line 103
    addiu	$s2,$s1,2904
    # Line 106
    jalr	$t9
    # Line 102
    lh	$s1,264($s1)
    # Line 112
    li	$a2,3
    # Line 106
    beqz	$v0,.L0f12f0dc
    # Line 108
    li	$v1,3
    # Line 106
    li	$at,2
    beql	$s1,$at,.L0f12f0e0
    # Line 112
    lw	$a1,0($s2)
    # Line 108
    beql	$s1,$v1,.L0f12f0e0
    # Line 112
    lw	$a1,0($s2)
    # Line 111
    la	$t9,__iglooLoadMatrix
    move	$a0,$v0
    ld	$s2,16($sp)
    jalr	$t9
    ld	$s1,0($sp)
    # Line 112
    la	$t9,__iglooMultMatrix
    jalr	$t9
    move	$a0,$s6
    ld	$s6,32($sp)
    b	.L0f12f12c
    ld	$ra,24($sp)
.L0f12f0dc:
    lw	$a1,0($s2)
.L0f12f0e0:
    li	$v0,1
    bne	$a1,$v0,.L0f12f114
    # Line 122
    la	$t9,__iglooLoadMatrix
    # Line 112
    beq	$s1,$a2,.L0f12f110
    # Line 118
    la	$t9,__iglooRestoreUsrMat
    jalr	$t9
    ld	$s1,0($sp)
    # Line 120
    ld	$v1,8($sp)
    la	$at,slowBegin
    li	$a1,1
    # Line 119
    sw	$a1,4($s2)
    # Line 120
    sw	$at,216($v1)
.L0f12f110:
    # Line 122
    la	$t9,__iglooLoadMatrix
.L0f12f114:
    move	$a0,$s6
    ld	$s2,16($sp)
    jalr	$t9
    ld	$s1,0($sp)
    ld	$s6,32($sp)
    ld	$ra,24($sp)
.L0f12f12c:
    ld	$gp,40($sp)
    # Line 124
    jr	$ra
    addiu	$sp,$sp,64
.end igl_loadMatrix

# Function: gl_i_loadmatrix
# Declared: Line 128 (Source lines: 128-128)
# Address: 0x0f12f138 - 0x0f12f188 (Size: 80 bytes, Frame: 48)
.globl gl_i_loadmatrix
.ent gl_i_loadmatrix
gl_i_loadmatrix:
    # Line 128
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,16656 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f12f16c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f12f16c:
    la	$t9,igl_loadMatrix
    bal igl_loadMatrix
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_loadmatrix

# Function: gl_c_loadmatrix
# Declared: Line 128 (Source lines: 128-128)
# Address: 0x0f12f188 - 0x0f12f20c (Size: 132 bytes, Frame: 240)
.globl gl_c_loadmatrix
.ent gl_c_loadmatrix
gl_c_loadmatrix:
    addiu	$sp,$sp,-112
    sd	$gp,80($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,16576 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19712($gp)
    sd	$ra,88($sp)
    sd	$s8,72($sp)
    beqz	$at,.L0f12f1f0
    move	$s8,$a0
.L0f12f1b0:
    move	$a1,$s8
    la	$t9,sub_0f130000
    addiu	$a0,$sp,4
    la	$v1,gl_n_loadmatrix
    addiu	$t9,$t9,-96
    bal gl_g_polarview
    sw	$v1,0($sp)
    la	$t9,gl_compile
    addiu	$a1,$sp,0
    li	$a0,34
    jalr	$t9
    ld	$s8,72($sp)
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f12f1f0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-20824
    li	$a2,1
    b	.L0f12f1b0
    sw	$a2,-19712($gp)
.end gl_c_loadmatrix

# Function: gl_n_loadmatrix
# Declared: Line 128 (Source lines: 128-128)
# Address: 0x0f12f20c - 0x0f12f268 (Size: 92 bytes, Frame: 48)
.globl gl_n_loadmatrix
.ent gl_n_loadmatrix
gl_n_loadmatrix:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,16444 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f12f244
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f12f244:
    la	$t9,igl_loadMatrix
    bal igl_loadMatrix
    move	$a0,$s8
    ld	$ra,16($sp)
    addiu	$v0,$s8,64
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_loadmatrix

# Function: gl_i_multmatrix
# Declared: Line 143 (Source lines: 143-143)
# Address: 0x0f12f268 - 0x0f12f308 (Size: 160 bytes, Frame: 48)
.globl gl_i_multmatrix
.ent gl_i_multmatrix
gl_i_multmatrix:
    # Line 143
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,16352 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s8,0($sp)
    beqz	$at,.L0f12f2a4
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0f12f2a4:
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    lw	$v1,2904($a0)
    sd	$ra,16($sp)
    li	$a2,1
    bne	$v1,$a2,.L0f12f2cc
    sb	$zero,11864($a0)
    lh	$a1,264($a0)
    beq	$a1,$a2,.L0f12f2ec
    sd	$ra,16($sp)
.L0f12f2cc:
    la	$t9,__iglooMultMatrix
.L0f12f2d0:
    jalr	$t9
    move	$a0,$s8
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12f2ec:
    la	$t9,__iglooRestoreUsrMat
    la	$a3,slowBegin
    sw	$a2,2908($a0)
    jalr	$t9
    sw	$a3,216($a0)
    b	.L0f12f2d0
    la	$t9,__iglooMultMatrix
.end gl_i_multmatrix

# Function: gl_c_multmatrix
# Declared: Line 143 (Source lines: 143-143)
# Address: 0x0f12f308 - 0x0f12f38c (Size: 132 bytes, Frame: 240)
.globl gl_c_multmatrix
.ent gl_c_multmatrix
gl_c_multmatrix:
    addiu	$sp,$sp,-112
    sd	$gp,80($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,16192 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19708($gp)
    sd	$ra,88($sp)
    sd	$s8,72($sp)
    beqz	$at,.L0f12f370
    move	$s8,$a0
.L0f12f330:
    move	$a1,$s8
    la	$t9,sub_0f130000
    addiu	$a0,$sp,4
    la	$v1,gl_n_multmatrix
    addiu	$t9,$t9,-96
    bal gl_g_polarview
    sw	$v1,0($sp)
    la	$t9,gl_compile
    addiu	$a1,$sp,0
    li	$a0,34
    jalr	$t9
    ld	$s8,72($sp)
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f12f370:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-20808
    li	$a2,1
    b	.L0f12f330
    sw	$a2,-19708($gp)
.end gl_c_multmatrix

# Function: gl_n_multmatrix
# Declared: Line 143 (Source lines: 143-143)
# Address: 0x0f12f38c - 0x0f12f430 (Size: 164 bytes, Frame: 48)
.globl gl_n_multmatrix
.ent gl_n_multmatrix
gl_n_multmatrix:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,16060 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s0,8($sp)
    beqz	$at,.L0f12f3c8
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0f12f3c8:
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    lw	$v1,2904($a0)
    sd	$ra,16($sp)
    li	$a2,1
    bne	$v1,$a2,.L0f12f3f0
    sb	$zero,11864($a0)
    lh	$a1,264($a0)
    beq	$a1,$a2,.L0f12f414
    sd	$ra,16($sp)
.L0f12f3f0:
    la	$t9,__iglooMultMatrix
.L0f12f3f4:
    jalr	$t9
    move	$a0,$s0
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    addiu	$v0,$s0,64
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12f414:
    la	$t9,__iglooRestoreUsrMat
    la	$a3,slowBegin
    sw	$a2,2908($a0)
    jalr	$t9
    sw	$a3,216($a0)
    b	.L0f12f3f4
    la	$t9,__iglooMultMatrix
.end gl_n_multmatrix

# Function: gl_i_popmatrix
# Declared: Line 181 (Source lines: 181-181)
# Address: 0x0f12f430 - 0x0f12f4b8 (Size: 136 bytes, Frame: 16)
.globl gl_i_popmatrix
.ent gl_i_popmatrix
gl_i_popmatrix:
    # Line 181
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,15896 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f12f464
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f12f464:
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    lw	$v1,2904($a1)
    sd	$ra,8($sp)
    li	$a2,1
    beq	$v1,$a2,.L0f12f49c
    sb	$zero,11864($a1)
    la	$t9,__iglooPopMatrix
.L0f12f484:
    jalr	$t9
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f12f49c:
    la	$t9,__iglooRestoreUsrMat
    la	$a3,slowBegin
    sw	$a2,2908($a1)
    jalr	$t9
    sw	$a3,216($a1)
    b	.L0f12f484
    la	$t9,__iglooPopMatrix
.end gl_i_popmatrix

# Function: gl_c_popmatrix
# Declared: Line 181 (Source lines: 181-181)
# Address: 0x0f12f4b8 - 0x0f12f51c (Size: 100 bytes, Frame: 32)
.globl gl_c_popmatrix
.ent gl_c_popmatrix
gl_c_popmatrix:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,15760 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19704($gp)
    beqz	$at,.L0f12f500
    sd	$ra,16($sp)
.L0f12f4d8:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_popmatrix
    li	$a0,2
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f12f500:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-20792
    li	$at,1
    b	.L0f12f4d8
    sw	$at,-19704($gp)
.end gl_c_popmatrix

# Function: gl_n_popmatrix
# Declared: Line 181 (Source lines: 181-181)
# Address: 0x0f12f51c - 0x0f12f5b4 (Size: 152 bytes, Frame: 48)
.globl gl_n_popmatrix
.ent gl_n_popmatrix
gl_n_popmatrix:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,15660 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s8,0($sp)
    beqz	$at,.L0f12f558
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0f12f558:
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    lw	$v1,2904($v0)
    sd	$ra,16($sp)
    li	$a0,1
    beq	$v1,$a0,.L0f12f598
    sb	$zero,11864($v0)
    la	$t9,__iglooPopMatrix
.L0f12f578:
    jalr	$t9
    nop
    ld	$gp,8($sp)
    ld	$ra,16($sp)
    move	$v0,$s8
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12f598:
    la	$t9,__iglooRestoreUsrMat
    la	$v1,slowBegin
    sw	$a0,2908($v0)
    jalr	$t9
    sw	$v1,216($v0)
    b	.L0f12f578
    la	$t9,__iglooPopMatrix
.end gl_n_popmatrix

# Function: gl_i_pushmatrix
# Declared: Line 182 (Source lines: 182-182)
# Address: 0x0f12f5b4 - 0x0f12f650 (Size: 156 bytes, Frame: 32)
.globl gl_i_pushmatrix
.ent gl_i_pushmatrix
gl_i_pushmatrix:
    # Line 182
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,15508 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f12f5e8
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f12f5e8:
    la	$at,gl_wstatep
    lw	$at,0($at)
    sd	$ra,24($sp)
    li	$a0,1
    lw	$v1,2904($at)
    sd	$at,0($sp)
    addiu	$at,$at,2904
    beq	$v1,$a0,.L0f12f628
    sd	$at,8($sp)
.L0f12f60c:
    la	$t9,__iglooPushMatrix
    jalr	$t9
    nop
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f12f628:
    la	$t9,__iglooRestoreUsrMat
    jalr	$t9
    nop
    li	$a0,1
    ld	$at,8($sp)
    ld	$v1,0($sp)
    la	$v0,slowBegin
    sw	$a0,4($at)
    b	.L0f12f60c
    sw	$v0,216($v1)
.end gl_i_pushmatrix

# Function: gl_c_pushmatrix
# Declared: Line 182 (Source lines: 182-182)
# Address: 0x0f12f650 - 0x0f12f6b4 (Size: 100 bytes, Frame: 32)
.globl gl_c_pushmatrix
.ent gl_c_pushmatrix
gl_c_pushmatrix:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,15352 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19700($gp)
    beqz	$at,.L0f12f698
    sd	$ra,16($sp)
.L0f12f670:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_pushmatrix
    li	$a0,2
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f12f698:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-20776
    li	$at,1
    b	.L0f12f670
    sw	$at,-19700($gp)
.end gl_c_pushmatrix

# Function: gl_n_pushmatrix
# Declared: Line 182 (Source lines: 182-182)
# Address: 0x0f12f6b4 - 0x0f12f760 (Size: 172 bytes, Frame: 192)
.globl gl_n_pushmatrix
.ent gl_n_pushmatrix
gl_n_pushmatrix:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,15252 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s0,16($sp)
    beqz	$at,.L0f12f6f0
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,32($sp)
    jalr	$t9
    nop
    ld	$ra,32($sp)
.L0f12f6f0:
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    sd	$ra,32($sp)
    li	$a1,1
    lw	$v1,2904($a2)
    sd	$a2,0($sp)
    addiu	$a2,$a2,2904
    beq	$v1,$a1,.L0f12f738
    sd	$a2,8($sp)
.L0f12f714:
    la	$t9,__iglooPushMatrix
    jalr	$t9
    nop
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    move	$v0,$s0
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12f738:
    la	$t9,__iglooRestoreUsrMat
    jalr	$t9
    nop
    li	$a1,1
    ld	$a2,8($sp)
    ld	$v1,0($sp)
    la	$at,slowBegin
    sw	$a1,4($a2)
    b	.L0f12f714
    sw	$at,216($v1)
.end gl_n_pushmatrix

# Function: IglToOglMatrixMode
# Declared: Line 189 (Source lines: 193-212)
# Address: 0x0f12f760 - 0x0f12f7a8 (Size: 72 bytes, Frame: 0)
.ent IglToOglMatrixMode
IglToOglMatrixMode:
    # Line 193
    li	$a1,3
    beqz	$a0,.L0f12f790
    li	$v1,1
    li	$at,2
    beq	$a0,$at,.L0f12f794
    # Line 197
    li	$v0,5888
    # Line 193
    beq	$a0,$v1,.L0f12f788
    # Line 201
    li	$v0,5889
    # Line 193
    beq	$a0,$a1,.L0f12f79c
    # Line 209
    li	$v0,-1
.L0f12f788:
    # Line 212
    jr	$ra
    nop
.L0f12f790:
    # Line 197
    li	$v0,5888
.L0f12f794:
    # Line 212
    jr	$ra
    nop
.L0f12f79c:
    # Line 205
    li	$v0,5890
    # Line 212
    jr	$ra
    nop
.end IglToOglMatrixMode

# Function: mmodeToMatrixName
# Declared: Line 220 (Source lines: 224-243)
# Address: 0x0f12f7a8 - 0x0f12f7f0 (Size: 72 bytes, Frame: 0)
.ent mmodeToMatrixName
mmodeToMatrixName:
    # Line 224
    li	$a1,3
    beqz	$a0,.L0f12f7d8
    li	$v1,1
    li	$at,2
    beq	$a0,$at,.L0f12f7dc
    # Line 228
    li	$v0,2982
    # Line 224
    beq	$a0,$v1,.L0f12f7d0
    # Line 232
    li	$v0,2983
    # Line 224
    beq	$a0,$a1,.L0f12f7e4
    # Line 240
    li	$v0,-1
.L0f12f7d0:
    # Line 243
    jr	$ra
    nop
.L0f12f7d8:
    # Line 228
    li	$v0,2982
.L0f12f7dc:
    # Line 243
    jr	$ra
    nop
.L0f12f7e4:
    # Line 236
    li	$v0,2984
    # Line 243
    jr	$ra
    nop
.end mmodeToMatrixName

# Function: gl_i_scale
# Declared: Line 260 (Source lines: 260-260)
# Address: 0x0f12f7f0 - 0x0f12f8b8 (Size: 200 bytes, Frame: 208)
.globl gl_i_scale
.ent gl_i_scale
gl_i_scale:
    # Line 260
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,14936 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    mov.s	$f5,$f14
    lw	$at,0($at)
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    beqz	$at,.L0f12f840
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    sdc1	$f4,24($sp)
    sd	$ra,32($sp)
    jalr	$t9
    sdc1	$f5,16($sp)
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    ld	$ra,32($sp)
.L0f12f840:
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    lw	$v1,2904($a1)
    sd	$ra,32($sp)
    li	$a2,1
    bne	$v1,$a2,.L0f12f868
    sb	$zero,11864($a1)
    lh	$at,264($a1)
    beq	$at,$a2,.L0f12f890
    sd	$ra,32($sp)
.L0f12f868:
    la	$t9,__iglooScale
    mov.s	$f12,$f30
    mov.s	$f13,$f4
    jalr	$t9
    mov.s	$f14,$f5
    ld	$ra,32($sp)
    ld	$gp,8($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f12f890:
    sdc1	$f4,24($sp)
    sdc1	$f5,16($sp)
    la	$t9,__iglooRestoreUsrMat
    la	$v0,slowBegin
    sw	$a2,2908($a1)
    jalr	$t9
    sw	$v0,216($a1)
    ldc1	$f5,16($sp)
    b	.L0f12f868
    ldc1	$f4,24($sp)
.end gl_i_scale

# Function: gl_c_scale
# Declared: Line 260 (Source lines: 260-260)
# Address: 0x0f12f8b8 - 0x0f12f94c (Size: 148 bytes, Frame: 224)
.globl gl_c_scale
.ent gl_c_scale
gl_c_scale:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,14736 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19696($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f12f920
    mov.s	$f30,$f12
.L0f12f8e8:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_scale
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f12f920:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-20760
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f12f8e8
    sw	$at,-19696($gp)
.end gl_c_scale

# Function: gl_n_scale
# Declared: Line 260 (Source lines: 260-260)
# Address: 0x0f12f94c - 0x0f12f9f8 (Size: 172 bytes, Frame: 48)
.globl gl_n_scale
.ent gl_n_scale
gl_n_scale:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,14588 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s7,8($sp)
    beqz	$at,.L0f12f988
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0f12f988:
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    lw	$v1,2904($a0)
    sd	$ra,16($sp)
    li	$a2,1
    bne	$v1,$a2,.L0f12f9b0
    sb	$zero,11864($a0)
    lh	$a1,264($a0)
    beq	$a1,$a2,.L0f12f9dc
    sd	$ra,16($sp)
.L0f12f9b0:
    la	$t9,__iglooScale
.L0f12f9b4:
    lwc1	$f14,8($s7)
    lwc1	$f13,4($s7)
    jalr	$t9
    lwc1	$f12,0($s7)
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    addiu	$v0,$s7,12
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12f9dc:
    la	$t9,__iglooRestoreUsrMat
    la	$a3,slowBegin
    sw	$a2,2908($a0)
    jalr	$t9
    sw	$a3,216($a0)
    b	.L0f12f9b4
    la	$t9,__iglooScale
.end gl_n_scale

# Function: gl_i_translate
# Declared: Line 275 (Source lines: 275-275)
# Address: 0x0f12f9f8 - 0x0f12facc (Size: 212 bytes, Frame: 208)
.globl gl_i_translate
.ent gl_i_translate
gl_i_translate:
    # Line 275
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,14416 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    mov.s	$f5,$f14
    lw	$at,0($at)
    mov.s	$f4,$f13
    sdc1	$f30,0($sp)
    beqz	$at,.L0f12fa48
    mov.s	$f30,$f12
    la	$t9,__iglooNCloseMoveDraw
    sdc1	$f4,32($sp)
    sd	$ra,40($sp)
    jalr	$t9
    sdc1	$f5,24($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    ld	$ra,40($sp)
.L0f12fa48:
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    lw	$v1,2904($a1)
    sd	$ra,40($sp)
    li	$a2,1
    bne	$v1,$a2,.L0f12fa74
    sb	$zero,11864($a1)
    lh	$at,264($a1)
    sd	$ra,40($sp)
    beq	$at,$a2,.L0f12fa9c
    sd	$a1,8($sp)
.L0f12fa74:
    la	$t9,__iglooTranslate
    mov.s	$f12,$f30
    mov.s	$f13,$f4
    jalr	$t9
    mov.s	$f14,$f5
    ld	$ra,40($sp)
    ld	$gp,16($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f12fa9c:
    la	$t9,__iglooRestoreUsrMat
    sdc1	$f4,32($sp)
    jalr	$t9
    sdc1	$f5,24($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    ld	$v1,8($sp)
    li	$a0,1
    la	$v0,slowBegin
    sw	$a0,2908($v1)
    b	.L0f12fa74
    sw	$v0,216($v1)
.end gl_i_translate

# Function: gl_c_translate
# Declared: Line 275 (Source lines: 275-275)
# Address: 0x0f12facc - 0x0f12fb60 (Size: 148 bytes, Frame: 224)
.globl gl_c_translate
.ent gl_c_translate
gl_c_translate:
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,14204 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19692($gp)
    sd	$ra,56($sp)
    sdc1	$f30,24($sp)
    beqz	$at,.L0f12fb34
    mov.s	$f30,$f12
.L0f12fafc:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_translate
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f12fb34:
    sdc1	$f4,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sdc1	$f5,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-20744
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$at,1
    b	.L0f12fafc
    sw	$at,-19692($gp)
.end gl_c_translate

# Function: gl_n_translate
# Declared: Line 275 (Source lines: 275-275)
# Address: 0x0f12fb60 - 0x0f12fc18 (Size: 184 bytes, Frame: 48)
.globl gl_n_translate
.ent gl_n_translate
gl_n_translate:
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,14056 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s3,8($sp)
    beqz	$at,.L0f12fb9c
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f12fb9c:
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    lw	$v1,2904($a0)
    sd	$ra,24($sp)
    li	$a2,1
    bne	$v1,$a2,.L0f12fbc8
    sb	$zero,11864($a0)
    lh	$a1,264($a0)
    sd	$ra,24($sp)
    beq	$a1,$a2,.L0f12fbf4
    sd	$a0,0($sp)
.L0f12fbc8:
    la	$t9,__iglooTranslate
    lwc1	$f14,8($s3)
    lwc1	$f13,4($s3)
    jalr	$t9
    lwc1	$f12,0($s3)
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    addiu	$v0,$s3,12
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12fbf4:
    la	$t9,__iglooRestoreUsrMat
    jalr	$t9
    nop
    ld	$v0,0($sp)
    li	$v1,1
    la	$at,slowBegin
    sw	$v1,2908($v0)
    b	.L0f12fbc8
    sw	$at,216($v0)
.end gl_n_translate

# Function: gl_rotatex_multmat
# Declared: Line 282 (Source lines: 283-292)
# Address: 0x0f12fc18 - 0x0f12fc94 (Size: 124 bytes, Frame: 240)
.globl gl_rotatex_multmat
.ent gl_rotatex_multmat
gl_rotatex_multmat:
    # Line 283
    addiu	$sp,$sp,-112
    # Line 291
    addiu	$a0,$sp,0
    # Line 288
    swc1	$f15,40($sp)
    swc1	$f14,36($sp)
    # Line 287
    swc1	$f13,24($sp)
    swc1	$f12,20($sp)
    sd	$ra,64($sp)
    sd	$gp,72($sp)
    # Line 283
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,13872 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 286
    lwc1	$f0,_lit_3f800000
    mtc1	$zero,$f1
    # Line 291
    la	$t9,__GLmultmatrix
    # Line 289
    swc1	$f0,60($sp)
    swc1	$f1,56($sp)
    swc1	$f1,52($sp)
    swc1	$f1,48($sp)
    # Line 288
    swc1	$f1,44($sp)
    swc1	$f1,32($sp)
    # Line 287
    swc1	$f1,28($sp)
    swc1	$f1,16($sp)
    # Line 286
    swc1	$f1,12($sp)
    swc1	$f1,8($sp)
    swc1	$f1,4($sp)
    # Line 291
    jalr	$t9
    # Line 286
    swc1	$f0,0($sp)
    # Line 292
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_rotatex_multmat

# Function: gl_rotatey_multmat
# Declared: Line 294 (Source lines: 295-304)
# Address: 0x0f12fc94 - 0x0f12fd10 (Size: 124 bytes, Frame: 240)
.globl gl_rotatey_multmat
.ent gl_rotatey_multmat
gl_rotatey_multmat:
    # Line 295
    addiu	$sp,$sp,-112
    # Line 303
    addiu	$a0,$sp,0
    # Line 300
    swc1	$f15,40($sp)
    swc1	$f14,32($sp)
    # Line 298
    swc1	$f13,8($sp)
    swc1	$f12,0($sp)
    sd	$ra,64($sp)
    sd	$gp,72($sp)
    # Line 295
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,13748 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 299
    lwc1	$f1,_lit_3f800000
    # Line 298
    mtc1	$zero,$f0
    # Line 303
    la	$t9,__GLmultmatrix
    # Line 301
    swc1	$f1,60($sp)
    swc1	$f0,56($sp)
    swc1	$f0,52($sp)
    swc1	$f0,48($sp)
    # Line 300
    swc1	$f0,44($sp)
    swc1	$f0,36($sp)
    # Line 299
    swc1	$f0,28($sp)
    swc1	$f0,24($sp)
    swc1	$f1,20($sp)
    swc1	$f0,16($sp)
    # Line 298
    swc1	$f0,12($sp)
    # Line 303
    jalr	$t9
    # Line 298
    swc1	$f0,4($sp)
    # Line 304
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_rotatey_multmat

# Function: gl_g_lookat
# Declared: Line 310 (Source lines: 311-347)
# Address: 0x0f12fd10 - 0x0f12febc (Size: 428 bytes, Frame: 176)
.globl gl_g_lookat
.ent gl_g_lookat
gl_g_lookat:
    # Line 314
    li	$a0,84
    # Line 311
    addiu	$sp,$sp,-176
    sd	$a6,72($sp)
    sdc1	$f28,48($sp)
    mov.s	$f28,$f17
    sdc1	$f30,32($sp)
    mov.s	$f30,$f16
    sdc1	$f15,24($sp)
    sdc1	$f20,64($sp)
    mov.s	$f20,$f14
    sdc1	$f22,56($sp)
    mov.s	$f22,$f13
    sd	$gp,80($sp)
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,13624 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 314
    la	$t9,gl_nonprim_checkspace
    sdc1	$f24,40($sp)
    sd	$ra,88($sp)
    jalr	$t9
    # Line 311
    mov.s	$f24,$f12
    # Line 314
    beqz	$v0,.L0f12fe98
    addiu	$a1,$sp,0
    li	$a0,4
    li	$v1,84
    la	$t9,gl_compile
    la	$v0,gl_n_nonprim
    sw	$v1,4($sp)
    jalr	$t9
    sw	$v0,0($sp)
    sdc1	$f26,96($sp)
    # Line 316
    ld	$a0,72($sp)
    li	$a1,122
    la	$t9,__GLrotate
    negu	$a0,$a0
    dsll32	$a0,$a0,0x10
    jalr	$t9
    dsra32	$a0,$a0,0x10
    sub.s	$f0,$f28,$f20
    ldc1	$f5,24($sp)
    sub.s	$f5,$f5,$f24
    mul.s	$f0,$f0,$f0
    sub.s	$f7,$f30,$f22
    mul.s	$f26,$f5,$f5
    mul.s	$f7,$f7,$f7
    add.s	$f26,$f26,$f0
    add.s	$f7,$f7,$f26
    sqrt.s	$f7,$f7
    mtc1	$zero,$f4
    c.eq.s	$f7,$f4
    nop
    bc1t	.L0f12fdfc
    sqrt.s	$f26,$f26
    # Line 328
    div.s	$f15,$f26,$f7
    # Line 327
    sub.s	$f6,$f22,$f30
    sdc1	$f5,16($sp)
    mtc1	$zero,$f30
    # Line 328
    b	.L0f12fe0c
    # Line 327
    div.s	$f6,$f6,$f7
.L0f12fdfc:
    # Line 331
    lwc1	$f15,_lit_3f800000
    mtc1	$zero,$f30
    sdc1	$f5,16($sp)
    # Line 330
    mov.s	$f6,$f30
.L0f12fe0c:
    # Line 334
    la	$t9,gl_rotatex_multmat
    mov.s	$f12,$f15
    mov.s	$f13,$f6
    bal gl_rotatex_multmat
    neg.s	$f14,$f6
    c.eq.s	$f26,$f30
    # Line 341
    lwc1	$f15,_lit_3f800000
    # Line 334
    bc1t	.L0f12fe48
    # Line 340
    mov.s	$f6,$f30
    ldc1	$f6,16($sp)
    # Line 337
    div.s	$f6,$f6,$f26
    # Line 338
    sub.s	$f15,$f20,$f28
    div.s	$f15,$f15,$f26
    b	.L0f12fe4c
    ldc1	$f26,96($sp)
.L0f12fe48:
    ldc1	$f26,96($sp)
.L0f12fe4c:
    # Line 344
    la	$t9,gl_rotatey_multmat
    mov.s	$f12,$f15
    mov.s	$f14,$f6
    bal gl_rotatey_multmat
    neg.s	$f13,$f6
    # Line 346
    la	$t9,__GLtranslate
    neg.s	$f14,$f20
    neg.s	$f13,$f22
    jalr	$t9
    neg.s	$f12,$f24
    ld	$gp,80($sp)
    # Line 347
    ldc1	$f20,64($sp)
    ldc1	$f22,56($sp)
    ldc1	$f24,40($sp)
    ld	$ra,88($sp)
    ldc1	$f28,48($sp)
    ldc1	$f30,32($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f12fe98:
    # Line 314
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    ldc1	$f20,64($sp)
    ldc1	$f22,56($sp)
    ldc1	$f24,40($sp)
    ldc1	$f28,48($sp)
    ldc1	$f30,32($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end gl_g_lookat

# Function: gl_g_polarview
# Declared: Line 356 (Source lines: 357-364)
# Address: 0x0f12febc - 0x0f12ffa0 (Size: 228 bytes, Frame: 224)
.globl gl_g_polarview
.ent gl_g_polarview
gl_g_polarview:
    # Line 358
    li	$a0,24
    # Line 357
    addiu	$sp,$sp,-96
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    sd	$gp,48($sp)
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,13196 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 358
    la	$t9,gl_nonprim_checkspace
    sd	$a1,40($sp)
    sd	$ra,56($sp)
    jalr	$t9
    sdc1	$f12,16($sp)
    bnez	$v0,.L0f12ff08
    addiu	$a1,$sp,0
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f12ff08:
    li	$a0,4
    li	$v1,24
    la	$t9,gl_compile
    la	$v0,gl_n_nonprim
    sw	$v1,4($sp)
    jalr	$t9
    sw	$v0,0($sp)
    # Line 359
    ldc1	$f14,16($sp)
    la	$t9,__GLtranslate
    mtc1	$zero,$f12
    neg.s	$f14,$f14
    jalr	$t9
    mov.s	$f13,$f12
    # Line 360
    ld	$a0,24($sp)
    li	$a1,122
    la	$t9,__GLrotate
    negu	$a0,$a0
    dsll32	$a0,$a0,0x10
    jalr	$t9
    dsra32	$a0,$a0,0x10
    # Line 361
    ld	$a0,32($sp)
    li	$a1,120
    la	$t9,__GLrotate
    negu	$a0,$a0
    dsll32	$a0,$a0,0x10
    jalr	$t9
    dsra32	$a0,$a0,0x10
    # Line 362
    ld	$a0,40($sp)
    li	$a1,122
    la	$t9,__GLrotate
    negu	$a0,$a0
    dsll32	$a0,$a0,0x10
    jalr	$t9
    dsra32	$a0,$a0,0x10
    # Line 364
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_g_polarview

# Function: gl_copymatrix4dEx
# Declared: Line 371 (Source lines: 373-389)
# Address: 0x0f12ffa0 - 0x0f130024 (Size: 132 bytes, Frame: 0)
.ent gl_copymatrix4dEx
gl_copymatrix4dEx:
    # Line 373
    lwc1	$f0,0($a1)
    swc1	$f0,0($a0)
    # Line 374
    lwc1	$f4,4($a1)
    swc1	$f4,4($a0)
    # Line 375
    lwc1	$f3,8($a1)
    swc1	$f3,8($a0)
    # Line 376
    lwc1	$f2,12($a1)
    swc1	$f2,12($a0)
    # Line 377
    lwc1	$f1,16($a1)
    swc1	$f1,16($a0)
    # Line 378
    lwc1	$f0,20($a1)
    swc1	$f0,20($a0)
    # Line 379
    lwc1	$f4,24($a1)
    swc1	$f4,24($a0)
    # Line 380
    lwc1	$f3,28($a1)
    swc1	$f3,28($a0)
    # Line 381
    lwc1	$f2,32($a1)
    swc1	$f2,32($a0)
    # Line 382
    lwc1	$f1,36($a1)
    swc1	$f1,36($a0)
    # Line 383
    lwc1	$f0,40($a1)
    swc1	$f0,40($a0)
    # Line 384
    lwc1	$f4,44($a1)
    swc1	$f4,44($a0)
    # Line 385
    lwc1	$f3,48($a1)
    swc1	$f3,48($a0)
    # Line 386
    lwc1	$f2,52($a1)
    swc1	$f2,52($a0)
    # Line 387
    lwc1	$f1,56($a1)
    swc1	$f1,56($a0)
    # Line 388
    lwc1	$f0,60($a1)
    # Line 389
    jr	$ra
    # Line 388
    swc1	$f0,60($a0)
.end gl_copymatrix4dEx

# Function: InitMatrix
# Declared: Line 391 (Source lines: 392-435)
# Address: 0x0f130024 - 0x0f1300b8 (Size: 148 bytes, Frame: 48)
.ent InitMatrix
InitMatrix:
    # Line 392
    addiu	$sp,$sp,-48
    sd	$s3,16($sp)
    move	$s3,$a0
    # Line 404
    la	$t9,__iglooMatrixMode
    # Line 398
    lw	$at,4100($zero)
    sd	$ra,24($sp)
    # Line 404
    jalr	$t9
    sd	$at,8($sp)
    # Line 406
    li	$v0,5888
    beq	$s3,$v0,.L0f130094
    li	$v1,5889
    beq	$s3,$v1,.L0f1300a0
    li	$a1,5890
    beq	$s3,$a1,.L0f1300ac
    lw	$a0,0($sp)
.L0f130060:
    # Line 419
    beqz	$a0,.L0f13007c
    move	$s3,$a0
    # Line 421
    la	$t9,__iglooPopMatrix
.L0f13006c:
    jalr	$t9
    # Line 419
    addiu	$s3,$s3,-1
    bnez	$s3,.L0f13006c
    # Line 421
    la	$t9,__iglooPopMatrix
.L0f13007c:
    # Line 434
    la	$t9,__iglooLoadIdentity
    jalr	$t9
    ld	$s3,16($sp)
    ld	$ra,24($sp)
    # Line 435
    jr	$ra
    addiu	$sp,$sp,48
.L0f130094:
    ld	$a0,8($sp)
    # Line 410
    b	.L0f130060
    # Line 409
    lw	$a0,168($a0)
.L0f1300a0:
    ld	$a0,8($sp)
    # Line 413
    b	.L0f130060
    # Line 412
    lw	$a0,180($a0)
.L0f1300ac:
    ld	$a0,8($sp)
    b	.L0f130060
    # Line 415
    lw	$a0,192($a0)
.end InitMatrix

.rdata
_lit_3f800000:
    .word 0x3f800000

