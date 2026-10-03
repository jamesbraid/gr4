# Source: ../igloo/depthcue.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/depthcue.c -o depthcue.T
# Total Functions: 17

.text

# Function: __iglooRestoreUsrMat
# Declared: Line 49 (Source lines: 50-92)
# Address: 0x0f0a335c - 0x0f0a34c8 (Size: 364 bytes, Frame: 240)
.globl __iglooRestoreUsrMat
.ent __iglooRestoreUsrMat
__iglooRestoreUsrMat:
    # Line 50
    addiu	$sp,$sp,-112
    sd	$gp,88($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-276 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 51
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    sdc1	$f30,64($sp)
    # Line 53
    dmtc1	$zero,$f30
    ldc1	$f0,2984($v0)
    c.eq.d	$f0,$f30
    sd	$s0,80($sp)
    bc1f	.L0f0a33a8
    # Line 51
    move	$s0,$v0
    # Line 53
    ldc1	$f1,2992($v0)
    c.eq.d	$f1,$f30
    nop
    bc1tl	.L0f0a3404
    ld	$gp,88($sp)
.L0f0a33a8:
    # Line 59
    la	$t9,__iglooGetMatrixMode
    sd	$ra,104($sp)
    # Line 58
    addiu	$a0,$v0,2904
    # Line 59
    jalr	$t9
    sd	$a0,72($sp)
    ldc1	$f2,2992($s0)
    c.eq.d	$f2,$f30
    nop
    bc1f	.L0f0a3414
    # Line 64
    la	$t9,__iglooGetMatrix
.L0f0a33d0:
    # Line 70
    ldc1	$f3,2984($s0)
    c.eq.d	$f3,$f30
    nop
    bc1f	.L0f0a3478
.L0f0a33e0:
    # Line 82
    la	$t9,__iglooMatrixMode
    jalr	$t9
    move	$a0,$v0
    ld	$v0,72($sp)
    lw	$a1,0($v0)
    li	$a0,1
    beq	$a1,$a0,.L0f0a34b8
    ld	$ra,104($sp)
.L0f0a3400:
    ld	$gp,88($sp)
.L0f0a3404:
    # Line 92
    ld	$s0,80($sp)
    ldc1	$f30,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a3414:
    sd	$v0,96($sp)
    # Line 64
    addiu	$a1,$sp,0
    jalr	$t9
    li	$a0,2982
    # Line 66
    la	$t9,__iglooMatrixMode
    jalr	$t9
    li	$a0,5888
    # Line 67
    la	$t9,__iglooLoadIdentity
    jalr	$t9
    nop
    # Line 68
    ld	$a2,72($sp)
    mtc1	$zero,$f12
    ldc1	$f14,88($a2)
    la	$t9,__iglooTranslate
    mov.s	$f13,$f12
    neg.d	$f14,$f14
    jalr	$t9
    cvt.s.d	$f14,$f14
    # Line 69
    la	$t9,__iglooMultMatrix
    jalr	$t9
    addiu	$a0,$sp,0
    ld	$at,72($sp)
    ld	$v0,96($sp)
    b	.L0f0a33d0
    # Line 70
    sdc1	$f30,88($at)
.L0f0a3478:
    # Line 75
    la	$t9,__iglooMatrixMode
    sd	$v0,96($sp)
    jalr	$t9
    li	$a0,5889
    # Line 76
    ld	$v0,72($sp)
    mtc1	$zero,$f12
    ldc1	$f14,80($v0)
    la	$t9,__iglooTranslate
    mov.s	$f13,$f12
    neg.d	$f14,$f14
    jalr	$t9
    cvt.s.d	$f14,$f14
    ld	$v1,72($sp)
    ld	$v0,96($sp)
    b	.L0f0a33e0
    # Line 77
    sdc1	$f30,80($v1)
.L0f0a34b8:
    # Line 87
    la	$a1,slowBegin
    # Line 86
    sw	$a0,4($v0)
    b	.L0f0a3400
    # Line 87
    sw	$a1,216($s0)
.end __iglooRestoreUsrMat

# Function: gl_depthcue
# Declared: Line 100 (Source lines: 101-204)
# Address: 0x0f0a34c8 - 0x0f0a3710 (Size: 584 bytes, Frame: 48)
.globl gl_depthcue
.ent gl_depthcue
gl_depthcue:
    # Line 101
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    sd	$s0,16($sp)
    lui	$s0,0xfff9
    addiu	$s0,$s0,-640
    addu	$gp,$t9,$s0
    # Line 103
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    # Line 107
    lw	$at,2904($a3)
    sd	$s1,8($sp)
    addiu	$s1,$a3,2904
    bne	$at,$a0,.L0f0a351c
    # Line 103
    move	$s0,$a3
    # Line 107
    li	$at,1
    beql	$a1,$at,.L0f0a3520
    sd	$ra,24($sp)
    ld	$gp,0($sp)
    # Line 111
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a351c:
    sd	$ra,24($sp)
.L0f0a3520:
    # Line 114
    beqz	$a0,.L0f0a35c4
    sw	$a0,2904($a3)
    # Line 117
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2912
    # Line 118
    la	$t9,glFogi
    li	$a1,9729
    jalr	$t9
    li	$a0,2917
    # Line 126
    la	$v1,slowBegin
    # Line 125
    li	$a2,1
    sw	$a2,4($s1)
    # Line 126
    sw	$v1,216($s0)
    lw	$v0,4100($zero)
    lw	$v0,20($v0)
    lw	$v0,16($v0)
    beqz	$v0,.L0f0a3664
    # Line 139
    la	$t9,glColor4fv
    jalr	$t9
    addiu	$a0,$s1,8
    # Line 140
    la	$t9,glFogfv
    addiu	$a1,$s1,24
    jalr	$t9
    li	$a0,2918
.L0f0a3584:
    # Line 158
    la	$t9,__iglooSetColorProcsToDepthCue
.L0f0a3588:
    bal __iglooSetColorProcsToDepthCue
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$at,3076($s0)
    beqz	$at,.L0f0a35b0
    # Line 160
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,2896
    ld	$ra,24($sp)
.L0f0a35b0:
    ld	$gp,0($sp)
    # Line 204
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a35c4:
    # Line 164
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,2912
    # Line 165
    la	$t9,__iglooRestoreUsrMat
    bal __iglooRestoreUsrMat
    nop
    # Line 176
    la	$t9,__iglooSyncLmcolor
    move	$a0,$s0
    bal __iglooSyncLmcolor
    # Line 166
    sw	$zero,4($s1)
    # Line 184
    la	$t9,glColor4fv
    jalr	$t9
    addiu	$a0,$s0,3120
    # Line 185
    lwc1	$f13,96($s1)
    trunc.w.s	$f13,$f13
    mfc1	$v0,$f13
    lw	$v1,12112($s0)
    la	$t9,glIndexf
    andi	$v0,$v0,0xffff
    sllv	$v0,$v0,$v1
    mtc1	$v0,$f12
    jalr	$t9
    cvt.s.w	$f12,$f12
    la	$v1,gl_iglooGouraudCIDepthCue
    lw	$v1,0($v1)
    beqz	$v1,.L0f0a3648
    ld	$ra,24($sp)
    lw	$a2,4100($zero)
    lw	$a2,20($a2)
    lw	$a2,16($a2)
    beqzl	$a2,.L0f0a36f0
    lw	$at,276($s0)
.L0f0a3648:
    # Line 192
    lw	$at,3076($s0)
.L0f0a364c:
    beqz	$at,.L0f0a35b0
    # Line 196
    la	$t9,__iglooOglLightingOn
    jalr	$t9
    move	$a0,$s0
    b	.L0f0a35b0
    ld	$ra,24($sp)
.L0f0a3664:
    # Line 143
    la	$t9,__iglooGetFloatv
    addiu	$a1,$s1,96
    jalr	$t9
    li	$a0,2817
    # Line 145
    lwc1	$f14,96($s1)
    trunc.w.s	$f14,$f14
    mfc1	$a0,$f14
    lw	$a1,12112($s0)
    andi	$a0,$a0,0xffff
    srav	$a0,$a0,$a1
    mtc1	$a0,$f13
    nop
    cvt.s.w	$f13,$f13
    swc1	$f13,96($s1)
    # Line 147
    lhu	$v0,40($s1)
    lw	$v1,12112($s0)
    la	$t9,glIndexf
    sllv	$v0,$v0,$v1
    mtc1	$v0,$f12
    jalr	$t9
    cvt.s.w	$f12,$f12
    # Line 148
    lhu	$a1,42($s1)
    la	$t9,glFogf
    mtc1	$a1,$f13
    li	$a0,2913
    jalr	$t9
    cvt.s.w	$f13,$f13
    la	$a2,gl_iglooGouraudCIDepthCue
    lw	$a2,0($a2)
    beqz	$a2,.L0f0a3584
    # Line 153
    la	$t9,__iglooShadeModel
    jalr	$t9
    li	$a0,7425
    b	.L0f0a3588
    # Line 158
    la	$t9,__iglooSetColorProcsToDepthCue
.L0f0a36f0:
    # Line 185
    lw	$at,20($at)
    bnezl	$at,.L0f0a364c
    # Line 192
    lw	$at,3076($s0)
    la	$t9,__iglooShadeModel
    jalr	$t9
    li	$a0,7424
    b	.L0f0a3648
    ld	$ra,24($sp)
.end gl_depthcue

# Function: gl_i_depthcue
# Declared: Line 207 (Source lines: 207-207)
# Address: 0x0f0a3710 - 0x0f0a3760 (Size: 80 bytes, Frame: 48)
.globl gl_i_depthcue
.ent gl_i_depthcue
gl_i_depthcue:
    # Line 207
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-1224 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0a3744
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0a3744:
    la	$t9,gl_depthcue
    bal gl_depthcue
    move	$a1,$zero
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_depthcue

# Function: gl_c_depthcue
# Declared: Line 207 (Source lines: 207-207)
# Address: 0x0f0a3760 - 0x0f0a37d4 (Size: 116 bytes, Frame: 192)
.globl gl_c_depthcue
.ent gl_c_depthcue
gl_c_depthcue:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-1304 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20840($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0a37b8
    move	$s8,$a0
.L0f0a3788:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_depthcue
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a37b8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,31152
    li	$a1,1
    b	.L0f0a3788
    sw	$a1,-20840($gp)
.end gl_c_depthcue

# Function: gl_n_depthcue
# Declared: Line 207 (Source lines: 207-207)
# Address: 0x0f0a37d4 - 0x0f0a3834 (Size: 96 bytes, Frame: 48)
.globl gl_n_depthcue
.ent gl_n_depthcue
gl_n_depthcue:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-1420 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0a380c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0a380c:
    la	$t9,gl_depthcue
    move	$a1,$zero
    bal gl_depthcue
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_depthcue

# Function: gl_g_shaderange
# Declared: Line 209 (Source lines: 209-219)
# Address: 0x0f0a3834 - 0x0f0a38d0 (Size: 156 bytes, Frame: 224)
.globl gl_g_shaderange
.ent gl_g_shaderange
gl_g_shaderange:
    # Line 209
    move	$a5,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-1516 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20836($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0a389c
    move	$s8,$a0
.L0f0a3860:
    # Line 217
    addiu	$a1,$sp,0
    li	$a0,6
    # Line 216
    sh	$a3,10($sp)
    # Line 215
    sh	$a2,8($sp)
    # Line 214
    sh	$a5,6($sp)
    # Line 217
    la	$t9,gl_compile
    # Line 212
    la	$v1,gl_n_shaderange
    # Line 213
    sh	$s8,4($sp)
    # Line 217
    jalr	$t9
    # Line 212
    sw	$v1,0($sp)
    # Line 219
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0a389c:
    sd	$a5,56($sp)
    sd	$a2,48($sp)
    # Line 209
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,31168
    ld	$a3,40($sp)
    ld	$a5,56($sp)
    li	$a2,1
    sw	$a2,-20836($gp)
    b	.L0f0a3860
    ld	$a2,48($sp)
.end gl_g_shaderange

# Function: gl_n_shaderange
# Declared: Line 221 (Source lines: 221-228)
# Address: 0x0f0a38d0 - 0x0f0a3938 (Size: 104 bytes, Frame: 48)
.globl gl_n_shaderange
.ent gl_n_shaderange
gl_n_shaderange:
    # Line 221
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-1672 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0a3908
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0a3908:
    # Line 224
    lh	$a3,6($s8)
    la	$t9,gl_lshaderange
    lh	$a2,4($s8)
    lhu	$a1,2($s8)
    bal gl_lshaderange
    lhu	$a0,0($s8)
    ld	$ra,16($sp)
    # Line 228
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_shaderange

# Function: gl_g_lshaderange
# Declared: Line 233 (Source lines: 233-243)
# Address: 0x0f0a3938 - 0x0f0a39d4 (Size: 156 bytes, Frame: 240)
.globl gl_g_lshaderange
.ent gl_g_lshaderange
gl_g_lshaderange:
    # Line 233
    move	$a5,$a1
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-1776 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20832($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f0a39a0
    move	$s8,$a0
.L0f0a3964:
    # Line 241
    addiu	$a1,$sp,0
    li	$a0,8
    # Line 240
    sw	$a3,12($sp)
    # Line 239
    sw	$a2,8($sp)
    # Line 238
    sh	$a5,6($sp)
    # Line 241
    la	$t9,gl_compile
    # Line 236
    la	$v1,gl_n_lshaderange
    # Line 237
    sh	$s8,4($sp)
    # Line 241
    jalr	$t9
    # Line 236
    sw	$v1,0($sp)
    # Line 243
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a39a0:
    sd	$a5,64($sp)
    sd	$a2,56($sp)
    # Line 233
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a3,48($sp)
    jalr	$t9
    addiu	$a0,$a0,31184
    ld	$a3,48($sp)
    ld	$a5,64($sp)
    li	$a2,1
    sw	$a2,-20832($gp)
    b	.L0f0a3964
    ld	$a2,56($sp)
.end gl_g_lshaderange

# Function: gl_n_lshaderange
# Declared: Line 245 (Source lines: 245-258)
# Address: 0x0f0a39d4 - 0x0f0a3a90 (Size: 188 bytes, Frame: 192)
.globl gl_n_lshaderange
.ent gl_n_lshaderange
gl_n_lshaderange:
    # Line 245
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-1932 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s0,8($sp)
    beqz	$at,.L0f0a3a18
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    sd	$s1,32($sp)
    sd	$s2,16($sp)
    ld	$ra,24($sp)
.L0f0a3a18:
    # Line 250
    la	$v1,gl_zrangemap
    sd	$ra,24($sp)
    sd	$s2,16($sp)
    lw	$v1,0($v1)
    lw	$s2,8($s0)
    sd	$s1,32($sp)
    beqz	$v1,.L0f0a3a58
    # Line 249
    lw	$s1,4($s0)
    # Line 252
    la	$t9,gl_mapzrange
    jalr	$t9
    move	$a0,$s1
    # Line 253
    la	$t9,gl_mapzrange
    # Line 252
    move	$s1,$v0
    # Line 253
    jalr	$t9
    move	$a0,$s2
    move	$s2,$v0
.L0f0a3a58:
    # Line 255
    move	$a3,$s2
    la	$t9,gl_lshaderange
    move	$a2,$s1
    lhu	$a1,2($s0)
    bal gl_lshaderange
    lhu	$a0,0($s0)
    ld	$gp,0($sp)
    # Line 258
    addiu	$v0,$s0,12
    ld	$s0,8($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_lshaderange

# Function: gl_g_RGBrange
# Declared: Line 263 (Source lines: 263-277)
# Address: 0x0f0a3a90 - 0x0f0a3b5c (Size: 204 bytes, Frame: 176)
.globl gl_g_RGBrange
.ent gl_g_RGBrange
gl_g_RGBrange:
    # Line 263
    move	$t1,$a1
    addiu	$sp,$sp,-176
    sd	$gp,32($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-2120 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20828($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f0a3b08
    move	$s8,$a0
.L0f0a3abc:
    # Line 275
    addiu	$a1,$sp,0
    li	$a0,10
    # Line 274
    sh	$a7,18($sp)
    # Line 273
    sh	$a6,16($sp)
    # Line 272
    sh	$a5,14($sp)
    # Line 271
    sh	$a4,12($sp)
    # Line 270
    sh	$a3,10($sp)
    # Line 269
    sh	$a2,8($sp)
    # Line 268
    sh	$t1,6($sp)
    # Line 275
    la	$t9,gl_compile
    # Line 266
    la	$v1,gl_n_RGBrange
    # Line 267
    sh	$s8,4($sp)
    # Line 275
    jalr	$t9
    # Line 266
    sw	$v1,0($sp)
    # Line 277
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0a3b08:
    sd	$t1,96($sp)
    sd	$a2,88($sp)
    sd	$a3,80($sp)
    sd	$a4,72($sp)
    sd	$a5,64($sp)
    sd	$a6,56($sp)
    # Line 263
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a7,48($sp)
    jalr	$t9
    addiu	$a0,$a0,31200
    ld	$a7,48($sp)
    ld	$a6,56($sp)
    ld	$a5,64($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$t1,96($sp)
    li	$a2,1
    sw	$a2,-20828($gp)
    b	.L0f0a3abc
    ld	$a2,88($sp)
.end gl_g_RGBrange

# Function: gl_n_RGBrange
# Declared: Line 279 (Source lines: 279-290)
# Address: 0x0f0a3b5c - 0x0f0a3bd4 (Size: 120 bytes, Frame: 48)
.globl gl_n_RGBrange
.ent gl_n_RGBrange
gl_n_RGBrange:
    # Line 279
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-2324 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0a3b94
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0a3b94:
    # Line 282
    lh	$a7,14($s8)
    lh	$a6,12($s8)
    lh	$a5,10($s8)
    lh	$a4,8($s8)
    lh	$a3,6($s8)
    la	$t9,gl_lRGBrange
    lh	$a2,4($s8)
    lh	$a1,2($s8)
    bal gl_lRGBrange
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    # Line 290
    addiu	$v0,$s8,16
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_RGBrange

# Function: gl_g_lRGBrange
# Declared: Line 295 (Source lines: 295-309)
# Address: 0x0f0a3bd4 - 0x0f0a3ca0 (Size: 204 bytes, Frame: 176)
.globl gl_g_lRGBrange
.ent gl_g_lRGBrange
gl_g_lRGBrange:
    # Line 295
    move	$t1,$a1
    addiu	$sp,$sp,-176
    sd	$gp,40($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-2444 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20824($gp)
    sd	$ra,48($sp)
    sd	$s8,32($sp)
    beqz	$at,.L0f0a3c4c
    move	$s8,$a0
.L0f0a3c00:
    # Line 307
    addiu	$a1,$sp,0
    li	$a0,12
    # Line 306
    sw	$a7,20($sp)
    # Line 305
    sw	$a6,16($sp)
    # Line 304
    sh	$a5,14($sp)
    # Line 303
    sh	$a4,12($sp)
    # Line 302
    sh	$a3,10($sp)
    # Line 301
    sh	$a2,8($sp)
    # Line 300
    sh	$t1,6($sp)
    # Line 307
    la	$t9,gl_compile
    # Line 298
    la	$v1,gl_n_lRGBrange
    # Line 299
    sh	$s8,4($sp)
    # Line 307
    jalr	$t9
    # Line 298
    sw	$v1,0($sp)
    # Line 309
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0a3c4c:
    sd	$t1,104($sp)
    sd	$a2,96($sp)
    sd	$a3,88($sp)
    sd	$a4,80($sp)
    sd	$a5,72($sp)
    sd	$a6,64($sp)
    # Line 295
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a7,56($sp)
    jalr	$t9
    addiu	$a0,$a0,31216
    ld	$a7,56($sp)
    ld	$a6,64($sp)
    ld	$a5,72($sp)
    ld	$a4,80($sp)
    ld	$a3,88($sp)
    ld	$t1,104($sp)
    li	$a2,1
    sw	$a2,-20824($gp)
    b	.L0f0a3c00
    ld	$a2,96($sp)
.end gl_g_lRGBrange

# Function: gl_n_lRGBrange
# Declared: Line 311 (Source lines: 311-328)
# Address: 0x0f0a3ca0 - 0x0f0a3d6c (Size: 204 bytes, Frame: 192)
.globl gl_n_lRGBrange
.ent gl_n_lRGBrange
gl_n_lRGBrange:
    # Line 311
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-2648 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s0,8($sp)
    beqz	$at,.L0f0a3ce4
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    sd	$s1,32($sp)
    sd	$s2,16($sp)
    ld	$ra,24($sp)
.L0f0a3ce4:
    # Line 316
    la	$v1,gl_zrangemap
    sd	$ra,24($sp)
    sd	$s2,16($sp)
    lw	$v1,0($v1)
    lw	$s2,16($s0)
    sd	$s1,32($sp)
    beqz	$v1,.L0f0a3d24
    # Line 315
    lw	$s1,12($s0)
    # Line 318
    la	$t9,gl_mapzrange
    jalr	$t9
    move	$a0,$s1
    # Line 319
    la	$t9,gl_mapzrange
    # Line 318
    move	$s1,$v0
    # Line 319
    jalr	$t9
    move	$a0,$s2
    move	$s2,$v0
.L0f0a3d24:
    # Line 321
    move	$a7,$s2
    move	$a6,$s1
    lh	$a5,10($s0)
    lh	$a4,8($s0)
    lh	$a3,6($s0)
    la	$t9,gl_lRGBrange
    lh	$a2,4($s0)
    lh	$a1,2($s0)
    bal gl_lRGBrange
    lh	$a0,0($s0)
    ld	$gp,0($sp)
    # Line 328
    addiu	$v0,$s0,20
    ld	$s0,8($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_lRGBrange

# Function: gl_lshaderange
# Declared: Line 338 (Source lines: 339-388)
# Address: 0x0f0a3d6c - 0x0f0a3e8c (Size: 288 bytes, Frame: 192)
.globl gl_lshaderange
.ent gl_lshaderange
gl_lshaderange:
    # Line 362
    subu	$v0,$a0,$a1
    # Line 348
    slt	$at,$a0,$a1
    mtc1	$a3,$f5
    mtc1	$a2,$f4
    # Line 339
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    # Line 348
    cvt.d.w	$f4,$f4
    # Line 339
    lui	$a7,0xfff9
    addiu	$a7,$a7,-2852
    addu	$gp,$t9,$a7
    # Line 344
    la	$a6,gl_wstatep
    sd	$s0,0($sp)
    # Line 348
    cvt.d.w	$f5,$f5
    # Line 344
    lw	$a6,0($a6)
    # Line 362
    la	$v1,gl_zrangemap
    # Line 359
    mov.d	$f7,$f4
    # Line 348
    addiu	$s0,$a6,2904
    # Line 347
    addiu	$a5,$a6,2832
    # Line 348
    beqz	$at,.L0f0a3dd4
    # Line 344
    move	$a7,$a6
    # Line 354
    mov.d	$f6,$f4
    # Line 353
    mov.d	$f7,$f5
    # Line 352
    sh	$a0,2944($a6)
    # Line 355
    subu	$at,$a1,$a0
    b	.L0f0a3de0
    sh	$at,42($s0)
.L0f0a3dd4:
    # Line 360
    mov.d	$f6,$f5
    # Line 361
    sh	$a1,2944($a6)
    # Line 362
    sh	$v0,42($s0)
.L0f0a3de0:
    lw	$v1,0($v1)
    ldc1	$f4,40($a5)
    # Line 374
    li	$a1,1
    # Line 362
    beqz	$v1,.L0f0a3e20
    mul.d	$f4,$f4,$f7
    # Line 368
    sdc1	$f4,48($s0)
    # Line 369
    ldc1	$f0,40($a5)
    mul.d	$f0,$f0,$f6
    sdc1	$f0,56($s0)
.L0f0a3e04:
    # Line 374
    lw	$a2,0($s0)
    beq	$a2,$a1,.L0f0a3e44
    # Line 384
    la	$a2,slowBegin
.L0f0a3e10:
    ld	$gp,8($sp)
    # Line 388
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a3e20:
    # Line 373
    ldc1	$f3,48($a5)
    add.d	$f3,$f3,$f4
    sdc1	$f3,48($s0)
    # Line 374
    ldc1	$f2,40($a5)
    mul.d	$f2,$f2,$f6
    ldc1	$f1,48($a5)
    add.d	$f1,$f1,$f2
    b	.L0f0a3e04
    sdc1	$f1,56($s0)
.L0f0a3e44:
    # Line 383
    sw	$a1,4($s0)
    # Line 384
    sw	$a2,216($a7)
    # Line 385
    lw	$a1,12112($a7)
    lhu	$a0,40($s0)
    sd	$ra,16($sp)
    la	$t9,glIndexs
    sllv	$a0,$a0,$a1
    dsll32	$a0,$a0,0x10
    jalr	$t9
    dsra32	$a0,$a0,0x10
    # Line 386
    lhu	$a3,42($s0)
    la	$t9,glFogf
    mtc1	$a3,$f13
    li	$a0,2913
    jalr	$t9
    cvt.s.w	$f13,$f13
    b	.L0f0a3e10
    ld	$ra,16($sp)
.end gl_lshaderange

# Function: gl_lRGBrange
# Declared: Line 391 (Source lines: 394-431)
# Address: 0x0f0a3e8c - 0x0f0a3fdc (Size: 336 bytes, Frame: 224)
.globl gl_lRGBrange
.ent gl_lRGBrange
gl_lRGBrange:
    # Line 400
    mtc1	$a7,$f4
    # Line 394
    addiu	$sp,$sp,-96
    sd	$s0,0($sp)
    # Line 400
    cvt.d.w	$f4,$f4
    sd	$gp,8($sp)
    # Line 394
    lui	$t2,0xfff9
    addiu	$t2,$t2,-3140
    addu	$gp,$t9,$t2
    # Line 397
    la	$t1,gl_wstatep
    # Line 400
    mtc1	$a6,$f0
    la	$at,gl_zrangemap
    # Line 397
    lw	$t1,0($t1)
    # Line 400
    cvt.d.w	$f0,$f0
    lw	$at,0($at)
    addiu	$t2,$t1,2832
    # Line 399
    addiu	$s0,$t1,2904
    # Line 400
    ldc1	$f5,2872($t1)
    # Line 397
    move	$t3,$t1
    # Line 400
    beqz	$at,.L0f0a3f84
    mul.d	$f5,$f5,$f0
    # Line 404
    sdc1	$f5,2952($t1)
    # Line 405
    ldc1	$f0,40($t2)
    mul.d	$f0,$f0,$f4
    sdc1	$f0,56($s0)
.L0f0a3eec:
    # Line 416
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 415
    lwc1	$f0,_lit_437f0000
    # Line 416
    div.s	$f2,$f2,$f0
    # Line 417
    mtc1	$a5,$f3
    nop
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f0
    # Line 421
    mtc1	$a0,$f4
    nop
    cvt.s.w	$f4,$f4
    div.s	$f4,$f4,$f0
    # Line 422
    mtc1	$a1,$f5
    nop
    cvt.s.w	$f5,$f5
    div.s	$f5,$f5,$f0
    # Line 423
    mtc1	$a2,$f6
    nop
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f0
    # Line 415
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f0
    # Line 423
    li	$a7,1
    lw	$at,0($s0)
    swc1	$f6,32($s0)
    # Line 422
    swc1	$f5,28($s0)
    # Line 421
    swc1	$f4,24($s0)
    # Line 417
    swc1	$f3,16($s0)
    # Line 416
    swc1	$f2,12($s0)
    # Line 423
    beq	$at,$a7,.L0f0a3fa8
    # Line 415
    swc1	$f1,8($s0)
.L0f0a3f74:
    ld	$gp,8($sp)
    # Line 431
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0a3f84:
    # Line 409
    ldc1	$f2,2880($t1)
    add.d	$f2,$f2,$f5
    sdc1	$f2,2952($t1)
    # Line 410
    ldc1	$f1,40($t2)
    mul.d	$f1,$f1,$f4
    ldc1	$f0,48($t2)
    add.d	$f0,$f0,$f1
    b	.L0f0a3eec
    sdc1	$f0,56($s0)
.L0f0a3fa8:
    # Line 428
    addiu	$a0,$s0,8
    sd	$ra,16($sp)
    la	$t9,glColor4fv
    # Line 427
    la	$v0,slowBegin
    # Line 426
    sw	$a7,4($s0)
    # Line 428
    jalr	$t9
    # Line 427
    sw	$v0,216($t3)
    # Line 429
    la	$t9,glFogfv
    addiu	$a1,$s0,24
    jalr	$t9
    li	$a0,2918
    b	.L0f0a3f74
    ld	$ra,16($sp)
.end gl_lRGBrange

# Function: SyncDepthCueGeom
# Declared: Line 433 (Source lines: 434-582)
# Address: 0x0f0a3fdc - 0x0f0a4270 (Size: 660 bytes, Frame: 144)
.globl SyncDepthCueGeom
.ent SyncDepthCueGeom
SyncDepthCueGeom:
    # Line 434
    addiu	$sp,$sp,-144
    sd	$s0,120($sp)
    sd	$gp,104($sp)
    lui	$t8,0xfff9
    addiu	$t8,$t8,-3476
    addu	$gp,$t9,$t8
    # Line 444
    la	$t9,__iglooRestoreUsrMat
    # Line 435
    la	$s0,gl_wstatep
    sd	$ra,112($sp)
    # Line 444
    bal __iglooRestoreUsrMat
    # Line 435
    lw	$s0,0($s0)
    # Line 449
    addiu	$a1,$sp,8
    addiu	$a0,$sp,0
    # Line 447
    ldc1	$f1,2960($s0)
    # Line 449
    la	$t9,__iglooGetDepthRange
    # Line 446
    ldc1	$f0,2952($s0)
    sdc1	$f1,88($sp)
    # Line 449
    jalr	$t9
    sdc1	$f0,80($sp)
    # Line 451
    la	$t9,__iglooGetMatrix
    addiu	$a1,$sp,16
    jalr	$t9
    li	$a0,2983
    # Line 468
    ldc1	$f8,80($sp)
    # Line 451
    ldc1	$f5,0($sp)
    ldc1	$f4,8($sp)
    # Line 468
    lwc1	$f9,56($sp)
    dmtc1	$zero,$f12
    # Line 451
    c.eq.d	$f4,$f5
    # Line 490
    lwc1	$f17,76($sp)
    ldc1	$f14,88($sp)
    # Line 451
    bc1t	.L0f0a423c
    # Line 468
    ldc1	$f18,_lit8_4000000000000000
    mul.d	$f8,$f8,$f18
    add.d	$f10,$f4,$f5
    sub.d	$f7,$f4,$f5
    sub.d	$f8,$f8,$f10
    div.d	$f8,$f8,$f7
    lwc1	$f6,60($sp)
    cvt.d.s	$f6,$f6
    mul.d	$f11,$f6,$f8
    cvt.d.s	$f9,$f9
    sub.d	$f11,$f9,$f11
    c.eq.d	$f11,$f12
    nop
    bc1t	.L0f0a4250
    # Line 488
    ld	$ra,112($sp)
    # Line 490
    cvt.d.s	$f17,$f17
    mul.d	$f16,$f17,$f8
    lwc1	$f15,72($sp)
    cvt.d.s	$f15,$f15
    sub.d	$f16,$f16,$f15
    div.d	$f16,$f16,$f11
    mul.d	$f14,$f14,$f18
    sub.d	$f14,$f14,$f10
    div.d	$f14,$f14,$f7
    mul.d	$f13,$f6,$f14
    sub.d	$f13,$f9,$f13
    c.eq.d	$f13,$f12
    # Line 495
    ld	$ra,112($sp)
    # Line 490
    bc1t	.L0f0a4260
    mov.d	$f4,$f16
    # Line 497
    mul.d	$f6,$f17,$f14
    sub.d	$f6,$f6,$f15
    div.d	$f6,$f6,$f13
    # Line 501
    c.lt.d	$f12,$f16
    nop
    bc1t	.L0f0a4100
    # Line 497
    mov.d	$f5,$f6
    # Line 501
    c.lt.d	$f12,$f6
    nop
    bc1f	.L0f0a41f8
    # Line 578
    li	$a0,2915
.L0f0a4100:
    # Line 501
    lw	$at,11500($s0)
    li	$v1,2
    beq	$at,$v1,.L0f0a41f8
    # Line 578
    li	$a0,2915
    # Line 501
    lw	$a1,272($s0)
    andi	$a1,$a1,0x3f
    bnez	$a1,.L0f0a41f8
    # Line 578
    li	$a0,2915
    # Line 507
    c.lt.d	$f5,$f4
    nop
    bc1fl	.L0f0a4140
    sdc1	$f4,136($sp)
    sdc1	$f4,136($sp)
    sdc1	$f5,128($sp)
    # Line 516
    b	.L0f0a4148
    mov.d	$f6,$f4
.L0f0a4140:
    sdc1	$f5,128($sp)
    mov.d	$f6,$f5
.L0f0a4148:
    # Line 519
    addiu	$a1,$sp,16
    li	$a0,2982
    la	$t9,__iglooGetMatrix
    # Line 516
    sdc1	$f6,2984($s0)
    # Line 517
    neg.d	$f7,$f6
    # Line 519
    jalr	$t9
    # Line 517
    sdc1	$f7,2992($s0)
    # Line 521
    la	$t9,__iglooGetMatrixMode
    jalr	$t9
    nop
    # Line 526
    la	$t9,__iglooMatrixMode
    sd	$v0,96($sp)
    jalr	$t9
    li	$a0,5889
    # Line 527
    ldc1	$f14,2984($s0)
    la	$t9,__iglooTranslate
    mtc1	$zero,$f12
    cvt.s.d	$f14,$f14
    jalr	$t9
    mov.s	$f13,$f12
    # Line 529
    la	$t9,__iglooMatrixMode
    jalr	$t9
    li	$a0,5888
    # Line 530
    la	$t9,__iglooLoadIdentity
    jalr	$t9
    nop
    mtc1	$zero,$f13
    # Line 531
    la	$t9,__iglooTranslate
    ldc1	$f14,2992($s0)
    mov.s	$f12,$f13
    jalr	$t9
    cvt.s.d	$f14,$f14
    # Line 532
    la	$t9,__iglooMultMatrix
    jalr	$t9
    addiu	$a0,$sp,16
    # Line 534
    la	$t9,__iglooMatrixMode
    jalr	$t9
    ld	$a0,96($sp)
    # Line 547
    ldc1	$f0,2984($s0)
    # Line 548
    ldc1	$f5,128($sp)
    # Line 547
    ldc1	$f4,136($sp)
    # Line 548
    sub.d	$f5,$f5,$f0
    # Line 547
    sub.d	$f4,$f4,$f0
    # Line 578
    li	$a0,2915
.L0f0a41f8:
    # Line 575
    neg.d	$f2,$f5
    # Line 574
    neg.d	$f1,$f4
    # Line 578
    la	$t9,glFogf
    cvt.s.d	$f13,$f1
    # Line 575
    sdc1	$f2,2976($s0)
    # Line 578
    jalr	$t9
    # Line 574
    sdc1	$f1,2968($s0)
    # Line 579
    la	$t9,glFogf
    ldc1	$f13,2976($s0)
    li	$a0,2916
    jalr	$t9
    cvt.s.d	$f13,$f13
    # Line 582
    ld	$ra,112($sp)
    ld	$gp,104($sp)
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a423c:
    # Line 468
    ld	$ra,112($sp)
    ld	$gp,104($sp)
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a4250:
    ld	$gp,104($sp)
    # Line 488
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a4260:
    ld	$gp,104($sp)
    # Line 495
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end SyncDepthCueGeom

# Function: gl_g_getdcm
# Declared: Line 584 (Source lines: 585-591)
# Address: 0x0f0a4270 - 0x0f0a428c (Size: 28 bytes, Frame: 0)
.globl gl_g_getdcm
.ent gl_g_getdcm
gl_g_getdcm:
    # Line 585
    lui	$v1,0xfff9
    addiu	$v1,$v1,-4136
    addu	$at,$t9,$v1
    # Line 591
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    jr	$ra
    lw	$v0,2904($v0)
.end gl_g_getdcm

.rdata
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit_437f0000:
    .word 0x437f0000

