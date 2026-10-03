# Source: ../igloo/curve/curvutils.c
# Category: curve
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/curve/curvutils.c -o curvutils.T
# Total Functions: 20

.text

# Function: gl_findb
# Declared: Line 77 (Source lines: 78-97)
# Address: 0x0f0a21b4 - 0x0f0a2260 (Size: 172 bytes, Frame: 0)
.globl gl_findb
.ent gl_findb
gl_findb:
    # Line 78
    lui	$v0,0xfff9
    addiu	$v0,$v0,4244
    addu	$at,$t9,$v0
    # Line 81
    lw	$a6,-20868($at)
    move	$a5,$a6
    beqz	$a1,.L0f0a2228
    move	$v0,$a6
    beqz	$a6,.L0f0a2200
    nop
    lw	$v1,8($a6)
    beq	$v1,$a0,.L0f0a2200
    nop
    # Line 84
    move	$a5,$v0
.L0f0a21e8:
    # Line 85
    lw	$v0,0($v0)
    beqz	$v0,.L0f0a2220
    nop
    lw	$a1,8($v0)
    bnel	$a1,$a0,.L0f0a21e8
    # Line 84
    move	$a5,$v0
.L0f0a2200:
    # Line 90
    beqz	$v0,.L0f0a2220
    nop
    beq	$a5,$v0,.L0f0a2220
    nop
    # Line 93
    lw	$a2,0($v0)
    # Line 95
    sw	$v0,-20868($at)
    # Line 93
    sw	$a2,0($a5)
    # Line 94
    sw	$a6,0($v0)
.L0f0a2220:
    # Line 97
    jr	$ra
    nop
.L0f0a2228:
    # Line 85
    beqz	$v0,.L0f0a2220
    nop
    lw	$a3,4($v0)
    beq	$a3,$a0,.L0f0a2200
    nop
    # Line 89
    move	$a5,$v0
.L0f0a2240:
    # Line 90
    lw	$v0,0($v0)
    beqz	$v0,.L0f0a2220
    nop
    lw	$v1,4($v0)
    bnel	$v1,$a0,.L0f0a2240
    # Line 89
    move	$a5,$v0
    b	.L0f0a2200
    nop
.end gl_findb

# Function: gl_findbasis
# Declared: Line 102 (Source lines: 103-111)
# Address: 0x0f0a2260 - 0x0f0a22c0 (Size: 96 bytes, Frame: 32)
.globl gl_findbasis
.ent gl_findbasis
gl_findbasis:
    # Line 103
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,4072 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 106
    la	$t9,gl_findb
    sd	$ra,0($sp)
    bal gl_findb
    nop
    beqz	$v0,.L0f0a2298
    ld	$ra,0($sp)
.L0f0a228c:
    ld	$gp,8($sp)
    # Line 111
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a2298:
    # Line 108
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,8
    jalr	$t9
    addiu	$a2,$a2,9224
    # Line 109
    la	$v0,sub_0f020000
    ld	$ra,0($sp)
    b	.L0f0a228c
    addiu	$v0,$v0,30872
.end gl_findbasis

# Function: gl_g_defbasis
# Declared: Line 114 (Source lines: 115-174)
# Address: 0x0f0a22c0 - 0x0f0a2498 (Size: 472 bytes, Frame: 48)
.globl gl_g_defbasis
.ent gl_g_defbasis
gl_g_defbasis:
    # Line 115
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,3976 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 123
    la	$t9,gl_findb
    move	$a1,$zero
    sd	$ra,16($sp)
    bal gl_findb
    sd	$a0,0($sp)
    beqz	$v0,.L0f0a2454
    move	$a7,$v0
.L0f0a22f8:
    # Line 147
    li	$v0,4
    move	$a0,$zero
    move	$a4,$zero
    la	$a1,sub_0f020000
    # Line 141
    lw	$v1,-20864($gp)
    # Line 174
    ld	$ra,16($sp)
    # Line 147
    addiu	$a1,$a1,30872
    # Line 141
    addiu	$v1,$v1,1
    sw	$v1,-20864($gp)
    addiu	$v1,$v1,-1
    sw	$v1,8($a7)
    # Line 147
    move	$a5,$s0
.L0f0a2328:
    lwc1	$f6,92($a1)
    lwc1	$f5,88($a1)
    lwc1	$f7,84($a1)
    lwc1	$f4,80($a1)
    sll	$a6,$a0,0x2
    addu	$a6,$a6,$a7
    # Line 149
    lwc1	$f3,0($a5)
    mul.s	$f3,$f3,$f4
    swc1	$f3,12($a6)
    # Line 150
    lwc1	$f2,16($a5)
    mul.s	$f2,$f2,$f7
    add.s	$f2,$f2,$f3
    swc1	$f2,12($a6)
    # Line 151
    lwc1	$f1,32($a5)
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f2
    swc1	$f1,12($a6)
    # Line 152
    lwc1	$f0,48($a5)
    mul.s	$f0,$f0,$f6
    add.s	$f0,$f0,$f1
    swc1	$f0,12($a6)
    # Line 149
    lwc1	$f3,4($a5)
    mul.s	$f3,$f3,$f4
    swc1	$f3,16($a6)
    # Line 150
    lwc1	$f2,20($a5)
    mul.s	$f2,$f2,$f7
    add.s	$f2,$f2,$f3
    swc1	$f2,16($a6)
    # Line 151
    lwc1	$f1,36($a5)
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f2
    swc1	$f1,16($a6)
    # Line 152
    lwc1	$f0,52($a5)
    mul.s	$f0,$f0,$f6
    add.s	$f0,$f0,$f1
    swc1	$f0,16($a6)
    # Line 149
    lwc1	$f3,8($a5)
    mul.s	$f3,$f3,$f4
    swc1	$f3,20($a6)
    # Line 150
    lwc1	$f2,24($a5)
    mul.s	$f2,$f2,$f7
    add.s	$f2,$f2,$f3
    swc1	$f2,20($a6)
    # Line 151
    lwc1	$f1,40($a5)
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f2
    swc1	$f1,20($a6)
    # Line 152
    lwc1	$f0,56($a5)
    mul.s	$f0,$f0,$f6
    add.s	$f0,$f0,$f1
    swc1	$f0,20($a6)
    # Line 149
    lwc1	$f3,12($a5)
    mul.s	$f3,$f3,$f4
    swc1	$f3,24($a6)
    # Line 150
    lwc1	$f2,28($a5)
    mul.s	$f2,$f2,$f7
    add.s	$f2,$f2,$f3
    swc1	$f2,24($a6)
    # Line 151
    lwc1	$f1,44($a5)
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f2
    swc1	$f1,24($a6)
    # Line 152
    lwc1	$f0,60($a5)
    mul.s	$f0,$f0,$f6
    add.s	$f0,$f0,$f1
    # Line 147
    addiu	$a1,$a1,16
    addiu	$a4,$a4,1
    addiu	$a0,$a0,4
    # Line 152
    swc1	$f0,24($a6)
    # Line 147
    bne	$a4,$v0,.L0f0a2328
    move	$a5,$s0
    ld	$gp,8($sp)
    # Line 174
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a2454:
    # Line 125
    la	$t9,gl_malloc
    lw	$a1,-15260($gp)
    jalr	$t9
    li	$a0,76
    # Line 132
    lw	$at,-20868($gp)
    # Line 125
    beqz	$v0,.L0f0a2484
    move	$a7,$v0
    # Line 134
    sw	$v0,-20868($gp)
    # Line 133
    ld	$v1,0($sp)
    # Line 132
    sw	$at,0($v0)
    b	.L0f0a22f8
    # Line 133
    sw	$v1,4($v0)
.L0f0a2484:
    # Line 127
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_defbasis

# Function: gl_i_curvebasis
# Declared: Line 206 (Source lines: 206-206)
# Address: 0x0f0a2498 - 0x0f0a24f8 (Size: 96 bytes, Frame: 48)
.globl gl_i_curvebasis
.ent gl_i_curvebasis
gl_i_curvebasis:
    # Line 206
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,3504 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0a24cc
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0a24cc:
    la	$t9,gl_findbasis
    bal gl_findbasis
    move	$a1,$zero
    la	$a0,gl_wstatep
    ld	$gp,0($sp)
    lw	$v1,8($v0)
    ld	$ra,16($sp)
    lw	$a0,0($a0)
    addiu	$sp,$sp,48
    jr	$ra
    sw	$v1,11712($a0)
.end gl_i_curvebasis

# Function: gl_c_curvebasis
# Declared: Line 206 (Source lines: 206-206)
# Address: 0x0f0a24f8 - 0x0f0a2570 (Size: 120 bytes, Frame: 192)
.globl gl_c_curvebasis
.ent gl_c_curvebasis
gl_c_curvebasis:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,3408 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20860($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0a2554
    move	$s8,$a0
.L0f0a2520:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_curvebasis
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a2554:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,31016
    li	$a1,1
    b	.L0f0a2520
    sw	$a1,-20860($gp)
.end gl_c_curvebasis

# Function: gl_n_curvebasis
# Declared: Line 206 (Source lines: 206-206)
# Address: 0x0f0a2570 - 0x0f0a25e0 (Size: 112 bytes, Frame: 48)
.globl gl_n_curvebasis
.ent gl_n_curvebasis
gl_n_curvebasis:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,3288 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
    beqz	$at,.L0f0a25a8
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0a25a8:
    la	$t9,gl_findbasis
    move	$a1,$zero
    bal gl_findbasis
    lh	$a0,0($s7)
    la	$a0,gl_wstatep
    ld	$gp,0($sp)
    lw	$v1,8($v0)
    addiu	$v0,$s7,4
    ld	$s7,8($sp)
    ld	$ra,16($sp)
    lw	$a0,0($a0)
    addiu	$sp,$sp,48
    jr	$ra
    sw	$v1,11712($a0)
.end gl_n_curvebasis

# Function: gl_i_curveprecision
# Declared: Line 207 (Source lines: 207-207)
# Address: 0x0f0a25e0 - 0x0f0a2630 (Size: 80 bytes, Frame: 48)
.globl gl_i_curveprecision
.ent gl_i_curveprecision
gl_i_curveprecision:
    # Line 207
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,3176 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0a2618
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$ra,16($sp)
.L0f0a2618:
    la	$v1,gl_wstatep
    ld	$gp,0($sp)
    lw	$v1,0($v1)
    addiu	$sp,$sp,48
    jr	$ra
    sh	$a0,11716($v1)
.end gl_i_curveprecision

# Function: gl_c_curveprecision
# Declared: Line 207 (Source lines: 207-207)
# Address: 0x0f0a2630 - 0x0f0a26a8 (Size: 120 bytes, Frame: 192)
.globl gl_c_curveprecision
.ent gl_c_curveprecision
gl_c_curveprecision:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,3096 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20856($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0a268c
    move	$s8,$a0
.L0f0a2658:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_curveprecision
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a268c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,31032
    li	$a1,1
    b	.L0f0a2658
    sw	$a1,-20856($gp)
.end gl_c_curveprecision

# Function: gl_n_curveprecision
# Declared: Line 207 (Source lines: 207-207)
# Address: 0x0f0a26a8 - 0x0f0a2700 (Size: 88 bytes, Frame: 48)
.globl gl_n_curveprecision
.ent gl_n_curveprecision
gl_n_curveprecision:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,2976 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0a26e0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$ra,16($sp)
.L0f0a26e0:
    addiu	$v0,$a0,4
    la	$a1,gl_wstatep
    ld	$gp,0($sp)
    lh	$v1,0($a0)
    lw	$a1,0($a1)
    addiu	$sp,$sp,48
    jr	$ra
    sh	$v1,11716($a1)
.end gl_n_curveprecision

# Function: gl_i_patchprecision
# Declared: Line 208 (Source lines: 208-208)
# Address: 0x0f0a2700 - 0x0f0a2760 (Size: 96 bytes, Frame: 48)
.globl gl_i_patchprecision
.ent gl_i_patchprecision
gl_i_patchprecision:
    # Line 208
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,2888 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0a2740
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0f0a2740:
    la	$v1,gl_wstatep
    lw	$a2,0($v1)
    sh	$a0,11728($a2)
    ld	$gp,0($sp)
    lw	$v1,0($v1)
    addiu	$sp,$sp,48
    jr	$ra
    sh	$a1,11730($v1)
.end gl_i_patchprecision

# Function: gl_c_patchprecision
# Declared: Line 208 (Source lines: 208-208)
# Address: 0x0f0a2760 - 0x0f0a27e4 (Size: 132 bytes, Frame: 192)
.globl gl_c_patchprecision
.ent gl_c_patchprecision
gl_c_patchprecision:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,2792 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20852($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0a27c0
    move	$s8,$a0
.L0f0a278c:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_patchprecision
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a27c0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,31048
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0a278c
    sw	$a2,-20852($gp)
.end gl_c_patchprecision

# Function: gl_n_patchprecision
# Declared: Line 208 (Source lines: 208-208)
# Address: 0x0f0a27e4 - 0x0f0a2848 (Size: 100 bytes, Frame: 48)
.globl gl_n_patchprecision
.ent gl_n_patchprecision
gl_n_patchprecision:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,2660 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0a281c
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$ra,16($sp)
.L0f0a281c:
    la	$a1,gl_wstatep
    lw	$a2,0($a0)
    lw	$at,0($a1)
    addiu	$v0,$a0,8
    sh	$a2,11728($at)
    ld	$gp,0($sp)
    lw	$v1,4($a0)
    lw	$a1,0($a1)
    addiu	$sp,$sp,48
    jr	$ra
    sh	$v1,11730($a1)
.end gl_n_patchprecision

# Function: gl_i_patchbasis
# Declared: Line 209 (Source lines: 209-209)
# Address: 0x0f0a2848 - 0x0f0a28d4 (Size: 140 bytes, Frame: 48)
.globl gl_i_patchbasis
.ent gl_i_patchbasis
gl_i_patchbasis:
    # Line 209
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,2560 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s3,0($sp)
    beqz	$at,.L0f0a2884
    move	$s3,$a1
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,24($sp)
    ld	$a0,24($sp)
.L0f0a2884:
    la	$t9,gl_findbasis
    bal gl_findbasis
    move	$a1,$zero
    move	$a1,$zero
    la	$a2,gl_wstatep
    lw	$v1,8($v0)
    la	$t9,gl_findbasis
    lw	$a2,0($a2)
    move	$a0,$s3
    bal gl_findbasis
    sw	$v1,11720($a2)
    la	$s3,gl_wstatep
    lw	$a3,8($v0)
    lw	$s3,0($s3)
    ld	$gp,8($sp)
    ld	$ra,16($sp)
    sw	$a3,11724($s3)
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_patchbasis

# Function: gl_c_patchbasis
# Declared: Line 209 (Source lines: 209-209)
# Address: 0x0f0a28d4 - 0x0f0a2958 (Size: 132 bytes, Frame: 192)
.globl gl_c_patchbasis
.ent gl_c_patchbasis
gl_c_patchbasis:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,2420 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20848($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0a2934
    move	$s8,$a0
.L0f0a2900:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_patchbasis
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a2934:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,31064
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0a2900
    sw	$a2,-20848($gp)
.end gl_c_patchbasis

# Function: gl_n_patchbasis
# Declared: Line 209 (Source lines: 209-209)
# Address: 0x0f0a2958 - 0x0f0a29e8 (Size: 144 bytes, Frame: 48)
.globl gl_n_patchbasis
.ent gl_n_patchbasis
gl_n_patchbasis:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,2288 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s3,8($sp)
    beqz	$at,.L0f0a2990
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0a2990:
    la	$t9,gl_findbasis
    move	$a1,$zero
    bal gl_findbasis
    lw	$a0,0($s3)
    la	$a0,gl_wstatep
    lw	$v1,8($v0)
    lw	$a0,0($a0)
    la	$t9,gl_findbasis
    move	$a1,$zero
    sw	$v1,11720($a0)
    bal gl_findbasis
    lw	$a0,4($s3)
    la	$a2,gl_wstatep
    ld	$gp,0($sp)
    lw	$a1,8($v0)
    addiu	$v0,$s3,8
    ld	$s3,8($sp)
    ld	$ra,16($sp)
    lw	$a2,0($a2)
    addiu	$sp,$sp,48
    jr	$ra
    sw	$a1,11724($a2)
.end gl_n_patchbasis

# Function: gl_i_patchcurves
# Declared: Line 210 (Source lines: 210-210)
# Address: 0x0f0a29e8 - 0x0f0a2a48 (Size: 96 bytes, Frame: 48)
.globl gl_i_patchcurves
.ent gl_i_patchcurves
gl_i_patchcurves:
    # Line 210
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,2144 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0a2a28
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0f0a2a28:
    la	$v1,gl_wstatep
    lw	$a2,0($v1)
    sh	$a0,11732($a2)
    ld	$gp,0($sp)
    lw	$v1,0($v1)
    addiu	$sp,$sp,48
    jr	$ra
    sh	$a1,11734($v1)
.end gl_i_patchcurves

# Function: gl_c_patchcurves
# Declared: Line 210 (Source lines: 210-210)
# Address: 0x0f0a2a48 - 0x0f0a2acc (Size: 132 bytes, Frame: 192)
.globl gl_c_patchcurves
.ent gl_c_patchcurves
gl_c_patchcurves:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,2048 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20844($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0a2aa8
    move	$s8,$a0
.L0f0a2a74:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_patchcurves
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a2aa8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,31080
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0a2a74
    sw	$a2,-20844($gp)
.end gl_c_patchcurves

# Function: gl_n_patchcurves
# Declared: Line 210 (Source lines: 210-210)
# Address: 0x0f0a2acc - 0x0f0a2b30 (Size: 100 bytes, Frame: 48)
.globl gl_n_patchcurves
.ent gl_n_patchcurves
gl_n_patchcurves:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,1916 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0a2b04
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$ra,16($sp)
.L0f0a2b04:
    la	$a1,gl_wstatep
    lw	$a2,0($a0)
    lw	$at,0($a1)
    addiu	$v0,$a0,8
    sh	$a2,11732($at)
    ld	$gp,0($sp)
    lw	$v1,4($a0)
    lw	$a1,0($a1)
    addiu	$sp,$sp,48
    jr	$ra
    sh	$v1,11734($a1)
.end gl_n_patchcurves

# Function: gl_init_curves
# Declared: Line 212 (Source lines: 217-226)
# Address: 0x0f0a2b30 - 0x0f0a2b5c (Size: 44 bytes, Frame: 0)
.globl gl_init_curves
.ent gl_init_curves
gl_init_curves:
    # Line 221
    sw	$zero,11724($a0)
    # Line 220
    sw	$zero,11720($a0)
    # Line 217
    sw	$zero,11712($a0)
    # Line 218
    li	$at,10
    # Line 224
    li	$v0,2
    # Line 225
    sh	$v0,11734($a0)
    # Line 224
    sh	$v0,11732($a0)
    # Line 223
    sh	$at,11730($a0)
    # Line 222
    sh	$at,11728($a0)
    # Line 226
    jr	$ra
    # Line 218
    sh	$at,11716($a0)
.end gl_init_curves

# Function: gl_free_bases
# Declared: Line 228 (Source lines: 229-238)
# Address: 0x0f0a2b5c - 0x0f0a2bb4 (Size: 88 bytes, Frame: 32)
.globl gl_free_bases
.ent gl_free_bases
gl_free_bases:
    # Line 229
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,1772 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 233
    lw	$a0,-20868($gp)
    beqzl	$a0,.L0f0a2ba8
    # Line 237
    sw	$zero,-20868($gp)
    sd	$ra,16($sp)
    sd	$s7,8($sp)
.L0f0a2b84:
    # Line 235
    la	$t9,gl_free
    lw	$a1,-15256($gp)
    jalr	$t9
    # Line 234
    lw	$s7,0($a0)
    # Line 233
    bnez	$s7,.L0f0a2b84
    move	$a0,$s7
    ld	$s7,8($sp)
    ld	$ra,16($sp)
    # Line 237
    sw	$zero,-20868($gp)
.L0f0a2ba8:
    ld	$gp,0($sp)
    # Line 238
    jr	$ra
    addiu	$sp,$sp,32
.end gl_free_bases

