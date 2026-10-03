# Source: ../igloo/graphics/circle.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/circle.c -o circle.T
# Total Functions: 31

.text

# Function: circle_init
# Declared: Line 48 (Source lines: 49-64)
# Address: 0x0f09a6d0 - 0x0f09a748 (Size: 120 bytes, Frame: 48)
.ent circle_init
circle_init:
    # Line 49
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$s1,24($sp)
    # Line 54
    move	$s1,$zero
    sd	$s5,16($sp)
    # Line 55
    la	$s5,sub_0f030000
    sd	$s7,8($sp)
    # Line 57
    li	$s7,80
    # Line 55
    addiu	$s5,$s5,-952
.L0f09a6f4:
    # Line 58
    addiu	$a2,$sp,4
    move	$a0,$s1
    la	$t9,gl_sincos
    # Line 60
    addiu	$s5,$s5,8
    # Line 57
    addiu	$s7,$s7,-1
    # Line 58
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 59
    lwc1	$f1,4($sp)
    # Line 61
    addiu	$s1,$s1,45
    # Line 60
    lwc1	$f0,0($sp)
    # Line 59
    swc1	$f1,-8($s5)
    # Line 57
    bnez	$s7,.L0f09a6f4
    # Line 60
    swc1	$f0,-4($s5)
    # Line 64
    ld	$s1,24($sp)
    ld	$s5,16($sp)
    # Line 63
    li	$s7,1
    ld	$ra,32($sp)
    sh	$s7,-21048($gp)
    # Line 64
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end circle_init

# Function: gl_n_circ_draw
# Declared: Line 66 (Source lines: 66-80)
# Address: 0x0f09a748 - 0x0f09a7e0 (Size: 152 bytes, Frame: 192)
.globl gl_n_circ_draw
.ent gl_n_circ_draw
gl_n_circ_draw:
    # Line 66
    addiu	$sp,$sp,-64
    sd	$s8,24($sp)
    sd	$gp,32($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfffa
    addiu	$ra,$ra,-29952
    addu	$gp,$t9,$ra
    # Line 70
    la	$s8,gl_wstatep
    sd	$s7,40($sp)
    lw	$s8,0($s8)
    sd	$a0,16($sp)
    sd	$s5,8($sp)
    # Line 73
    lw	$t9,216($s8)
    # Line 72
    la	$s5,sub_0f030000
    # Line 73
    li	$a0,2
    jalr	$t9
    # Line 72
    addiu	$s5,$s5,-952
    # Line 74
    li	$s7,80
.L0f09a790:
    # Line 75
    la	$t9,glVertex2fv
    # Line 74
    addiu	$s7,$s7,-1
    # Line 75
    jalr	$t9
    move	$a0,$s5
    # Line 74
    bnez	$s7,.L0f09a790
    # Line 76
    addiu	$s5,$s5,8
    # Line 78
    lw	$t9,220($s8)
    jalr	$t9
    nop
    # Line 79
    la	$t9,popmatrix
    ld	$s8,16($sp)
    ld	$s7,40($sp)
    jalr	$t9
    ld	$s5,8($sp)
    ld	$gp,32($sp)
    # Line 80
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_circ_draw

# Function: gl_n_circf_draw
# Declared: Line 84 (Source lines: 84-100)
# Address: 0x0f09a7e0 - 0x0f09a890 (Size: 176 bytes, Frame: 192)
.globl gl_n_circf_draw
.ent gl_n_circf_draw
gl_n_circf_draw:
    # Line 84
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    sd	$gp,24($sp)
    sd	$s2,16($sp)
    lui	$s2,0xfffa
    addiu	$s2,$s2,-30104
    addu	$gp,$t9,$s2
    # Line 88
    la	$s1,gl_wstatep
    lw	$s1,0($s1)
    sd	$a0,32($sp)
    # Line 91
    li	$a0,6
    lw	$t9,216($s1)
    # Line 84
    la	$s2,sub_0f030000
    sd	$ra,0($sp)
    # Line 91
    jalr	$t9
    # Line 84
    addiu	$s2,$s2,-952
    # Line 92
    lw	$t9,4($s1)
    mtc1	$zero,$f12
    sd	$s5,40($sp)
    jalr	$t9
    mov.s	$f13,$f12
    # Line 93
    li	$s5,80
.L0f09a838:
    # Line 94
    lw	$t9,8($s1)
    # Line 93
    addiu	$s5,$s5,-1
    # Line 94
    jalr	$t9
    move	$a0,$s2
    # Line 93
    bnez	$s5,.L0f09a838
    # Line 95
    addiu	$s2,$s2,8
    # Line 97
    lw	$t9,8($s1)
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-952
    # Line 98
    lw	$t9,220($s1)
    ld	$s2,16($sp)
    jalr	$t9
    ld	$s5,40($sp)
    # Line 99
    la	$t9,popmatrix
    jalr	$t9
    ld	$s1,8($sp)
    # Line 100
    ld	$ra,0($sp)
    ld	$v0,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_n_circf_draw

# Function: gl_n_circF_setup
# Declared: Line 197 (Source lines: 197-197)
# Address: 0x0f09a890 - 0x0f09a904 (Size: 116 bytes, Frame: 48)
.globl gl_n_circF_setup
.ent gl_n_circF_setup
gl_n_circF_setup:
    # Line 197
    addiu	$sp,$sp,-48
    sd	$s7,24($sp)
    move	$s7,$a0
    sd	$gp,16($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-30280 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,pushmatrix
    sdc1	$f24,0($sp)
    sd	$ra,8($sp)
    jalr	$t9
    lwc1	$f24,8($a0)
    la	$t9,translate
    lwc1	$f13,4($s7)
    mtc1	$zero,$f14
    jalr	$t9
    lwc1	$f12,0($s7)
    la	$t9,scale
    mtc1	$zero,$f14
    mov.s	$f12,$f24
    jalr	$t9
    mov.s	$f13,$f24
    ld	$gp,16($sp)
    addiu	$v0,$s7,12
    ld	$ra,8($sp)
    ld	$s7,24($sp)
    ldc1	$f24,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_circF_setup

# Function: gl_g_circs
# Declared: Line 199 (Source lines: 199-199)
# Address: 0x0f09a904 - 0x0f09a9e4 (Size: 224 bytes, Frame: 224)
.globl gl_g_circs
.ent gl_g_circs
gl_g_circs:
    # Line 199
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-30396 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21044($gp)
    move	$a4,$a1
    sd	$s8,24($sp)
    beqz	$at,.L0f09a9b0
    move	$s8,$a0
.L0f09a92c:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09a990
    sd	$ra,40($sp)
.L0f09a938:
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a2,$f2
    addiu	$a1,$sp,0
    cvt.s.w	$f2,$f2
    li	$a0,8
    mtc1	$s8,$f0
    sh	$zero,16($sp)
    la	$a2,gl_n_circs
    cvt.s.w	$f0,$f0
    la	$t9,gl_compile
    sw	$a2,0($sp)
    swc1	$f2,12($sp)
    swc1	$f1,8($sp)
    jalr	$t9
    swc1	$f0,4($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09a990:
    la	$t9,sub_0f0a0000
    sd	$a4,56($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sd	$a2,48($sp)
    ld	$a2,48($sp)
    b	.L0f09a938
    ld	$a4,56($sp)
.L0f09a9b0:
    sd	$a4,56($sp)
    sd	$a2,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29040
    ld	$ra,40($sp)
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-21044($gp)
    b	.L0f09a92c
    ld	$a2,48($sp)
.end gl_g_circs

# Function: gl_n_circs
# Declared: Line 200 (Source lines: 200-200)
# Address: 0x0f09a9e4 - 0x0f09aa40 (Size: 92 bytes, Frame: 48)
.globl gl_n_circs
.ent gl_n_circs
gl_n_circs:
    # Line 200
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-30620 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09aa18
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09aa18:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_circ_draw
    bal gl_n_circ_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_circs

# Function: gl_g_circi
# Declared: Line 201 (Source lines: 201-201)
# Address: 0x0f09aa40 - 0x0f09ab20 (Size: 224 bytes, Frame: 224)
.globl gl_g_circi
.ent gl_g_circi
gl_g_circi:
    # Line 201
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-30712 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21040($gp)
    move	$a4,$a1
    sd	$s8,24($sp)
    beqz	$at,.L0f09aaec
    move	$s8,$a0
.L0f09aa68:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09aacc
    sd	$ra,40($sp)
.L0f09aa74:
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$a1,$sp,0
    mtc1	$s8,$f0
    li	$a0,8
    la	$a2,gl_n_circi
    cvt.s.w	$f0,$f0
    la	$t9,gl_compile
    sw	$a2,0($sp)
    swc1	$f2,12($sp)
    swc1	$f1,8($sp)
    jalr	$t9
    swc1	$f0,4($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09aacc:
    la	$t9,sub_0f0a0000
    sd	$a4,56($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sd	$a2,48($sp)
    ld	$a2,48($sp)
    b	.L0f09aa74
    ld	$a4,56($sp)
.L0f09aaec:
    sd	$a4,56($sp)
    sd	$a2,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29056
    ld	$ra,40($sp)
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-21040($gp)
    b	.L0f09aa68
    ld	$a2,48($sp)
.end gl_g_circi

# Function: gl_n_circi
# Declared: Line 202 (Source lines: 202-202)
# Address: 0x0f09ab20 - 0x0f09ab7c (Size: 92 bytes, Frame: 48)
.globl gl_n_circi
.ent gl_n_circi
gl_n_circi:
    # Line 202
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-30936 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09ab54
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09ab54:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_circ_draw
    bal gl_n_circ_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_circi

# Function: gl_g_circ
# Declared: Line 203 (Source lines: 203-203)
# Address: 0x0f09ab7c - 0x0f09ac40 (Size: 196 bytes, Frame: 224)
.globl gl_g_circ
.ent gl_g_circ
gl_g_circ:
    # Line 203
    mov.s	$f5,$f14
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-31028 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21036($gp)
    mov.s	$f4,$f13
    sdc1	$f30,24($sp)
    beqz	$at,.L0f09ac0c
    mov.s	$f30,$f12
.L0f09aba8:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09abec
    sd	$ra,56($sp)
.L0f09abb4:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$a2,gl_n_circ
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$a2,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09abec:
    la	$t9,sub_0f0a0000
    sdc1	$f4,48($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sdc1	$f5,40($sp)
    ldc1	$f5,40($sp)
    b	.L0f09abb4
    ldc1	$f4,48($sp)
.L0f09ac0c:
    sdc1	$f4,48($sp)
    sdc1	$f5,40($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$a0,29072
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$ra,1
    sw	$ra,-21036($gp)
    b	.L0f09aba8
    ld	$ra,56($sp)
.end gl_g_circ

# Function: gl_n_circ
# Declared: Line 204 (Source lines: 204-204)
# Address: 0x0f09ac40 - 0x0f09ac9c (Size: 92 bytes, Frame: 48)
.globl gl_n_circ
.ent gl_n_circ
gl_n_circ:
    # Line 204
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-31224 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09ac74
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09ac74:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_circ_draw
    bal gl_n_circ_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_circ

# Function: gl_g_circfs
# Declared: Line 206 (Source lines: 206-206)
# Address: 0x0f09ac9c - 0x0f09ad7c (Size: 224 bytes, Frame: 224)
.globl gl_g_circfs
.ent gl_g_circfs
gl_g_circfs:
    # Line 206
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-31316 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21032($gp)
    move	$a4,$a1
    sd	$s8,24($sp)
    beqz	$at,.L0f09ad48
    move	$s8,$a0
.L0f09acc4:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09ad28
    sd	$ra,40($sp)
.L0f09acd0:
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a2,$f2
    addiu	$a1,$sp,0
    cvt.s.w	$f2,$f2
    li	$a0,8
    mtc1	$s8,$f0
    sh	$zero,16($sp)
    la	$a2,gl_n_circfs
    cvt.s.w	$f0,$f0
    la	$t9,gl_compile
    sw	$a2,0($sp)
    swc1	$f2,12($sp)
    swc1	$f1,8($sp)
    jalr	$t9
    swc1	$f0,4($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09ad28:
    la	$t9,sub_0f0a0000
    sd	$a4,56($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sd	$a2,48($sp)
    ld	$a2,48($sp)
    b	.L0f09acd0
    ld	$a4,56($sp)
.L0f09ad48:
    sd	$a4,56($sp)
    sd	$a2,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29088
    ld	$ra,40($sp)
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-21032($gp)
    b	.L0f09acc4
    ld	$a2,48($sp)
.end gl_g_circfs

# Function: gl_n_circfs
# Declared: Line 207 (Source lines: 207-207)
# Address: 0x0f09ad7c - 0x0f09add8 (Size: 92 bytes, Frame: 48)
.globl gl_n_circfs
.ent gl_n_circfs
gl_n_circfs:
    # Line 207
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-31540 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09adb0
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09adb0:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_circf_draw
    bal gl_n_circf_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_circfs

# Function: gl_g_circfi
# Declared: Line 208 (Source lines: 208-208)
# Address: 0x0f09add8 - 0x0f09aeb8 (Size: 224 bytes, Frame: 224)
.globl gl_g_circfi
.ent gl_g_circfi
gl_g_circfi:
    # Line 208
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-31632 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21028($gp)
    move	$a4,$a1
    sd	$s8,24($sp)
    beqz	$at,.L0f09ae84
    move	$s8,$a0
.L0f09ae00:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09ae64
    sd	$ra,40($sp)
.L0f09ae0c:
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$a1,$sp,0
    mtc1	$s8,$f0
    li	$a0,8
    la	$a2,gl_n_circfi
    cvt.s.w	$f0,$f0
    la	$t9,gl_compile
    sw	$a2,0($sp)
    swc1	$f2,12($sp)
    swc1	$f1,8($sp)
    jalr	$t9
    swc1	$f0,4($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09ae64:
    la	$t9,sub_0f0a0000
    sd	$a4,56($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sd	$a2,48($sp)
    ld	$a2,48($sp)
    b	.L0f09ae0c
    ld	$a4,56($sp)
.L0f09ae84:
    sd	$a4,56($sp)
    sd	$a2,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$a0,29104
    ld	$ra,40($sp)
    ld	$a4,56($sp)
    li	$a2,1
    sw	$a2,-21028($gp)
    b	.L0f09ae00
    ld	$a2,48($sp)
.end gl_g_circfi

# Function: gl_n_circfi
# Declared: Line 209 (Source lines: 209-209)
# Address: 0x0f09aeb8 - 0x0f09af14 (Size: 92 bytes, Frame: 48)
.globl gl_n_circfi
.ent gl_n_circfi
gl_n_circfi:
    # Line 209
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-31856 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09aeec
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09aeec:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_circf_draw
    bal gl_n_circf_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_circfi

# Function: gl_g_circf
# Declared: Line 210 (Source lines: 210-210)
# Address: 0x0f09af14 - 0x0f09afd8 (Size: 196 bytes, Frame: 224)
.globl gl_g_circf
.ent gl_g_circf
gl_g_circf:
    # Line 210
    mov.s	$f5,$f14
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-31948 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21024($gp)
    mov.s	$f4,$f13
    sdc1	$f30,24($sp)
    beqz	$at,.L0f09afa4
    mov.s	$f30,$f12
.L0f09af40:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09af84
    sd	$ra,56($sp)
.L0f09af4c:
    addiu	$a1,$sp,0
    li	$a0,8
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,gl_compile
    la	$a2,gl_n_circf
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$a2,0($sp)
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09af84:
    la	$t9,sub_0f0a0000
    sdc1	$f4,48($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sdc1	$f5,40($sp)
    ldc1	$f5,40($sp)
    b	.L0f09af4c
    ldc1	$f4,48($sp)
.L0f09afa4:
    sdc1	$f4,48($sp)
    sdc1	$f5,40($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$a0,29120
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    li	$ra,1
    sw	$ra,-21024($gp)
    b	.L0f09af40
    ld	$ra,56($sp)
.end gl_g_circf

# Function: gl_n_circf
# Declared: Line 211 (Source lines: 211-211)
# Address: 0x0f09afd8 - 0x0f09b034 (Size: 92 bytes, Frame: 48)
.globl gl_n_circf
.ent gl_n_circf
gl_n_circf:
    # Line 211
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-32144 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09b00c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09b00c:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_circf_draw
    bal gl_n_circf_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_circf

# Function: endpt_cmplr
# Declared: Line 221 (Source lines: 226-251)
# Address: 0x0f09b034 - 0x0f09b2b0 (Size: 636 bytes, Frame: 208)
.ent endpt_cmplr
endpt_cmplr:
    # Line 226
    slti	$at,$a1,3600
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s2,8($sp)
    move	$s2,$a1
    sd	$s0,16($sp)
    bnez	$at,.L0f09b0b4
    move	$s0,$a2
    li	$v0,3600
    div	$zero,$s2,$v0
    mflo	$a0
    andi	$v1,$a0,0x1
    beqz	$v1,.L0f09b07c
    teq	$v0,$zero,0x7
    # Line 230
    addiu	$s2,$s2,-3600
    dsll32	$s2,$s2,0x10
    dsra32	$s2,$s2,0x10
.L0f09b07c:
    sra	$at,$a0,0x1
    beqz	$at,.L0f09b0b4
    move	$a1,$s2
    move	$a0,$a1
    addiu	$a0,$a0,-3600
.L0f09b090:
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    addiu	$a0,$a0,-3600
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    slti	$v0,$a0,3600
    beqzl	$v0,.L0f09b090
    addiu	$a0,$a0,-3600
    move	$s2,$a0
.L0f09b0b4:
    bgez	$s2,.L0f09b118
    li	$v0,3599
    subu	$v0,$v0,$s2
    li	$a3,3600
    div	$zero,$v0,$a3
    mflo	$a0
    andi	$at,$a0,0x1
    beqz	$at,.L0f09b0e4
    teq	$a3,$zero,0x7
    # Line 231
    addiu	$s2,$s2,3600
    dsll32	$s2,$s2,0x10
    dsra32	$s2,$s2,0x10
.L0f09b0e4:
    sra	$at,$a0,0x1
    beqz	$at,.L0f09b118
    move	$a1,$s2
    move	$a0,$a1
    addiu	$a0,$a0,3600
.L0f09b0f8:
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    addiu	$a0,$a0,3600
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    bltzl	$a0,.L0f09b0f8
    addiu	$a0,$a0,3600
    move	$s2,$a0
.L0f09b118:
    slti	$a3,$s0,3600
    bnez	$a3,.L0f09b17c
    li	$at,3600
    div	$zero,$s0,$at
    mflo	$a0
    andi	$v0,$a0,0x1
    beqz	$v0,.L0f09b144
    teq	$at,$zero,0x7
    # Line 232
    addiu	$s0,$s0,-3600
    dsll32	$s0,$s0,0x10
    dsra32	$s0,$s0,0x10
.L0f09b144:
    sra	$at,$a0,0x1
    beqz	$at,.L0f09b17c
    move	$a1,$s0
    move	$a0,$a1
    addiu	$a0,$a0,-3600
.L0f09b158:
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    addiu	$a0,$a0,-3600
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    slti	$v0,$a0,3600
    beqzl	$v0,.L0f09b158
    addiu	$a0,$a0,-3600
    move	$s0,$a0
.L0f09b17c:
    bgez	$s0,.L0f09b1e4
    li	$v0,3599
    li	$a3,3600
    subu	$v0,$v0,$s0
    div	$zero,$v0,$a3
    mflo	$a0
    andi	$at,$a0,0x1
    beqz	$at,.L0f09b1ac
    teq	$a3,$zero,0x7
    # Line 233
    addiu	$s0,$s0,3600
    dsll32	$s0,$s0,0x10
    dsra32	$s0,$s0,0x10
.L0f09b1ac:
    sra	$at,$a0,0x1
    beqz	$at,.L0f09b1e0
    move	$a1,$s0
    move	$a0,$a1
    addiu	$a0,$a0,3600
.L0f09b1c0:
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    addiu	$a0,$a0,3600
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    bltzl	$a0,.L0f09b1c0
    addiu	$a0,$a0,3600
    move	$s0,$a0
.L0f09b1e0:
    sd	$ra,32($sp)
.L0f09b1e4:
    # Line 235
    move	$a0,$s2
    la	$t9,gl_sincos
    addiu	$a2,$sp,4
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 239
    li	$v0,45
    div	$zero,$s2,$v0
    mflo	$at
    nop
    nop
    # Line 242
    div	$zero,$s0,$v0
    # Line 236
    lwc1	$f1,4($sp)
    # Line 242
    teq	$v0,$zero,0x7
    # Line 236
    swc1	$f1,0($s1)
    # Line 239
    la	$a4,sub_0f030000
    # Line 237
    lwc1	$f0,0($sp)
    # Line 239
    teq	$v0,$zero,0x7
    addiu	$a4,$a4,-952
    # Line 237
    swc1	$f0,4($s1)
    # Line 239
    sll	$a3,$at,0x3
    addu	$a3,$a3,$a4
    addiu	$a3,$a3,8
    # Line 242
    mflo	$a4
    subu	$a4,$a4,$at
    bgtz	$a4,.L0f09b264
    # Line 239
    sw	$a3,8($s1)
    # Line 242
    bltz	$a4,.L0f09b2a8
    # Line 244
    slt	$v1,$s0,$s2
    beqz	$v1,.L0f09b268
    # Line 248
    addiu	$a2,$sp,4
    # Line 245
    li	$a4,80
.L0f09b264:
    # Line 248
    addiu	$a2,$sp,4
.L0f09b268:
    addiu	$a1,$sp,0
    la	$t9,gl_sincos
    move	$a0,$s0
    # Line 246
    sw	$a4,12($s1)
    # Line 248
    jalr	$t9
    ld	$s2,8($sp)
    # Line 249
    lwc1	$f3,4($sp)
    swc1	$f3,16($s1)
    # Line 251
    ld	$s0,16($sp)
    # Line 250
    lwc1	$f2,0($sp)
    # Line 251
    addiu	$v0,$s1,24
    ld	$ra,32($sp)
    # Line 250
    swc1	$f2,20($s1)
    # Line 251
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f09b2a8:
    # Line 244
    b	.L0f09b264
    addiu	$a4,$a4,80
.end endpt_cmplr

# Function: gl_n_arc_draw
# Declared: Line 254 (Source lines: 254-279)
# Address: 0x0f09b2b0 - 0x0f09b398 (Size: 232 bytes, Frame: 208)
.globl gl_n_arc_draw
.ent gl_n_arc_draw
gl_n_arc_draw:
    # Line 254
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff9
    addiu	$ra,$ra,32664
    addu	$gp,$t9,$ra
    # Line 258
    la	$s8,gl_wstatep
    lw	$s8,0($s8)
    # Line 261
    lw	$t9,216($s8)
    sd	$s4,24($sp)
    # Line 254
    move	$s4,$a0
    # Line 261
    jalr	$t9
    li	$a0,3
    # Line 262
    la	$t9,glVertex2fv
    sd	$s1,40($sp)
    sd	$s0,32($sp)
    jalr	$t9
    move	$a0,$s4
    # Line 264
    lw	$s1,12($s4)
    blez	$s1,.L0f09b354
    # Line 263
    lw	$s0,8($s4)
    sd	$s7,56($sp)
    # Line 264
    la	$s7,sub_0f030000
    sd	$s5,48($sp)
    addiu	$s7,$s7,-952
    b	.L0f09b338
    addiu	$s5,$s7,636
.L0f09b320:
    addiu	$s1,$s1,-1
.L0f09b324:
    # Line 268
    la	$t9,glVertex2fv
    jalr	$t9
    move	$a0,$s0
    # Line 264
    beqz	$s1,.L0f09b34c
    # Line 269
    addiu	$s0,$s0,8
.L0f09b338:
    # Line 264
    sltu	$at,$s5,$s0
    beqzl	$at,.L0f09b324
    addiu	$s1,$s1,-1
    b	.L0f09b320
    # Line 267
    move	$s0,$s7
.L0f09b34c:
    ld	$s7,56($sp)
    ld	$s5,48($sp)
.L0f09b354:
    # Line 274
    la	$t9,glVertex2fv
    addiu	$a0,$s4,16
    ld	$s1,40($sp)
    jalr	$t9
    ld	$s0,32($sp)
    # Line 275
    lw	$t9,220($s8)
    jalr	$t9
    nop
    # Line 278
    la	$t9,popmatrix
    jalr	$t9
    ld	$s8,8($sp)
    ld	$gp,16($sp)
    # Line 279
    ld	$ra,0($sp)
    addiu	$v0,$s4,24
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_arc_draw

# Function: gl_n_arcf_draw
# Declared: Line 283 (Source lines: 283-327)
# Address: 0x0f09b398 - 0x0f09b49c (Size: 260 bytes, Frame: 208)
.globl gl_n_arcf_draw
.ent gl_n_arcf_draw
gl_n_arcf_draw:
    # Line 283
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff9
    addiu	$ra,$ra,32432
    addu	$gp,$t9,$ra
    # Line 288
    la	$s8,gl_wstatep
    lw	$s8,0($s8)
    # Line 290
    lw	$t9,216($s8)
    sd	$s5,24($sp)
    # Line 283
    move	$s5,$a0
    # Line 290
    jalr	$t9
    li	$a0,6
    # Line 292
    la	$t9,glVertex2i
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    sd	$s1,40($sp)
    # Line 296
    la	$t9,glVertex2f
    sd	$s0,32($sp)
    lwc1	$f13,4($s5)
    jalr	$t9
    lwc1	$f12,0($s5)
    # Line 299
    lw	$s1,12($s5)
    blez	$s1,.L0f09b454
    # Line 298
    lw	$s0,8($s5)
    sd	$s7,56($sp)
    # Line 299
    la	$s7,sub_0f030000
    sd	$s4,48($sp)
    addiu	$s7,$s7,-952
    b	.L0f09b438
    addiu	$s4,$s7,636
.L0f09b41c:
    addiu	$s1,$s1,-1
.L0f09b420:
    # Line 314
    la	$t9,glVertex2f
    lwc1	$f13,4($s0)
    jalr	$t9
    lwc1	$f12,0($s0)
    # Line 299
    beqz	$s1,.L0f09b44c
    # Line 315
    addiu	$s0,$s0,8
.L0f09b438:
    # Line 299
    sltu	$at,$s4,$s0
    beqzl	$at,.L0f09b420
    addiu	$s1,$s1,-1
    b	.L0f09b41c
    # Line 302
    move	$s0,$s7
.L0f09b44c:
    ld	$s7,56($sp)
    ld	$s4,48($sp)
.L0f09b454:
    # Line 322
    lwc1	$f13,20($s5)
    la	$t9,glVertex2f
    lwc1	$f12,16($s5)
    ld	$s1,40($sp)
    jalr	$t9
    ld	$s0,32($sp)
    # Line 323
    lw	$t9,220($s8)
    jalr	$t9
    nop
    # Line 326
    la	$t9,popmatrix
    jalr	$t9
    ld	$s8,8($sp)
    ld	$gp,16($sp)
    # Line 327
    ld	$ra,0($sp)
    addiu	$v0,$s5,24
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_arcf_draw

# Function: gl_g_arcs
# Declared: Line 331 (Source lines: 331-331)
# Address: 0x0f09b49c - 0x0f09b5b4 (Size: 280 bytes, Frame: 160)
.globl gl_g_arcs
.ent gl_g_arcs
gl_g_arcs:
    # Line 331
    move	$a7,$a2
    addiu	$sp,$sp,-160
    sd	$gp,56($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,32172 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21020($gp)
    move	$a6,$a1
    sd	$s8,48($sp)
    beqz	$at,.L0f09b570
    move	$s8,$a0
.L0f09b4c8:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09b540
    sd	$ra,64($sp)
.L0f09b4d4:
    mtc1	$a6,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a7,$f2
    move	$a2,$a4
    move	$a1,$a3
    cvt.s.w	$f2,$f2
    addiu	$a0,$sp,16
    mtc1	$s8,$f0
    la	$ra,gl_n_arcs
    la	$t9,sub_0f0a0000
    cvt.s.w	$f0,$f0
    sw	$ra,0($sp)
    addiu	$t9,$t9,-20428
    swc1	$f2,12($sp)
    swc1	$f1,8($sp)
    bal gl_n_circf
    swc1	$f0,4($sp)
    la	$t9,gl_compile
    addiu	$a1,$sp,0
    li	$a0,20
    jalr	$t9
    ld	$s8,48($sp)
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f09b540:
    sd	$a6,96($sp)
    la	$t9,sub_0f0a0000
    sd	$a7,88($sp)
    sd	$a3,80($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sd	$a4,72($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$a7,88($sp)
    b	.L0f09b4d4
    ld	$a6,96($sp)
.L0f09b570:
    sd	$a6,96($sp)
    sd	$a7,88($sp)
    sd	$a3,80($sp)
    sd	$a4,72($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,64($sp)
    jalr	$t9
    addiu	$a0,$a0,29136
    ld	$ra,64($sp)
    ld	$a4,72($sp)
    ld	$a7,88($sp)
    ld	$a6,96($sp)
    li	$a3,1
    sw	$a3,-21020($gp)
    b	.L0f09b4c8
    ld	$a3,80($sp)
.end gl_g_arcs

# Function: gl_n_arcs
# Declared: Line 332 (Source lines: 332-332)
# Address: 0x0f09b5b4 - 0x0f09b610 (Size: 92 bytes, Frame: 48)
.globl gl_n_arcs
.ent gl_n_arcs
gl_n_arcs:
    # Line 332
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,31892 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09b5e8
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09b5e8:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_arc_draw
    bal gl_n_arc_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_arcs

# Function: gl_g_arci
# Declared: Line 333 (Source lines: 333-333)
# Address: 0x0f09b610 - 0x0f09b728 (Size: 280 bytes, Frame: 160)
.globl gl_g_arci
.ent gl_g_arci
gl_g_arci:
    # Line 333
    move	$a7,$a2
    addiu	$sp,$sp,-160
    sd	$gp,56($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,31800 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21016($gp)
    move	$a6,$a1
    sd	$s8,48($sp)
    beqz	$at,.L0f09b6e4
    move	$s8,$a0
.L0f09b63c:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09b6b4
    sd	$ra,64($sp)
.L0f09b648:
    mtc1	$a6,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a7,$f2
    move	$a2,$a4
    move	$a1,$a3
    cvt.s.w	$f2,$f2
    addiu	$a0,$sp,16
    mtc1	$s8,$f0
    la	$ra,gl_n_arci
    la	$t9,sub_0f0a0000
    cvt.s.w	$f0,$f0
    sw	$ra,0($sp)
    addiu	$t9,$t9,-20428
    swc1	$f2,12($sp)
    swc1	$f1,8($sp)
    bal gl_n_circf
    swc1	$f0,4($sp)
    la	$t9,gl_compile
    addiu	$a1,$sp,0
    li	$a0,20
    jalr	$t9
    ld	$s8,48($sp)
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f09b6b4:
    sd	$a6,96($sp)
    la	$t9,sub_0f0a0000
    sd	$a7,88($sp)
    sd	$a3,80($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sd	$a4,72($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$a7,88($sp)
    b	.L0f09b648
    ld	$a6,96($sp)
.L0f09b6e4:
    sd	$a6,96($sp)
    sd	$a7,88($sp)
    sd	$a3,80($sp)
    sd	$a4,72($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,64($sp)
    jalr	$t9
    addiu	$a0,$a0,29152
    ld	$ra,64($sp)
    ld	$a4,72($sp)
    ld	$a7,88($sp)
    ld	$a6,96($sp)
    li	$a3,1
    sw	$a3,-21016($gp)
    b	.L0f09b63c
    ld	$a3,80($sp)
.end gl_g_arci

# Function: gl_n_arci
# Declared: Line 334 (Source lines: 334-334)
# Address: 0x0f09b728 - 0x0f09b784 (Size: 92 bytes, Frame: 48)
.globl gl_n_arci
.ent gl_n_arci
gl_n_arci:
    # Line 334
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,31520 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09b75c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09b75c:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_arc_draw
    bal gl_n_arc_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_arci

# Function: gl_g_arc
# Declared: Line 335 (Source lines: 335-335)
# Address: 0x0f09b784 - 0x0f09b87c (Size: 248 bytes, Frame: 160)
.globl gl_g_arc
.ent gl_g_arc
gl_g_arc:
    # Line 335
    move	$a2,$a4
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-160
    sd	$s8,56($sp)
    sd	$gp,64($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,31428 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21012($gp)
    move	$s8,$a3
    sdc1	$f30,48($sp)
    beqz	$at,.L0f09b840
    mov.s	$f30,$f12
.L0f09b7bc:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09b818
    sd	$ra,88($sp)
.L0f09b7c8:
    move	$a1,$s8
    addiu	$a0,$sp,16
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,sub_0f0a0000
    swc1	$f30,4($sp)
    la	$a3,gl_n_arc
    addiu	$t9,$t9,-20428
    bal gl_n_circf
    sw	$a3,0($sp)
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    li	$a0,20
    ldc1	$f30,48($sp)
    jalr	$t9
    ld	$s8,56($sp)
    ld	$ra,88($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f09b818:
    la	$t9,sub_0f0a0000
    sd	$a2,96($sp)
    sdc1	$f4,80($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sdc1	$f5,72($sp)
    ldc1	$f5,72($sp)
    ldc1	$f4,80($sp)
    b	.L0f09b7c8
    ld	$a2,96($sp)
.L0f09b840:
    sd	$a2,96($sp)
    sdc1	$f4,80($sp)
    sdc1	$f5,72($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,88($sp)
    jalr	$t9
    addiu	$a0,$a0,29168
    ldc1	$f5,72($sp)
    ldc1	$f4,80($sp)
    ld	$ra,88($sp)
    li	$a2,1
    sw	$a2,-21012($gp)
    b	.L0f09b7bc
    ld	$a2,96($sp)
.end gl_g_arc

# Function: gl_n_arc
# Declared: Line 336 (Source lines: 336-336)
# Address: 0x0f09b87c - 0x0f09b8d8 (Size: 92 bytes, Frame: 48)
.globl gl_n_arc
.ent gl_n_arc
gl_n_arc:
    # Line 336
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,31180 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09b8b0
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09b8b0:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_arc_draw
    bal gl_n_arc_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_arc

# Function: gl_g_arcfs
# Declared: Line 338 (Source lines: 338-338)
# Address: 0x0f09b8d8 - 0x0f09b9f0 (Size: 280 bytes, Frame: 160)
.globl gl_g_arcfs
.ent gl_g_arcfs
gl_g_arcfs:
    # Line 338
    move	$a7,$a2
    addiu	$sp,$sp,-160
    sd	$gp,56($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,31088 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21008($gp)
    move	$a6,$a1
    sd	$s8,48($sp)
    beqz	$at,.L0f09b9ac
    move	$s8,$a0
.L0f09b904:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09b97c
    sd	$ra,64($sp)
.L0f09b910:
    mtc1	$a6,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a7,$f2
    move	$a2,$a4
    move	$a1,$a3
    cvt.s.w	$f2,$f2
    addiu	$a0,$sp,16
    mtc1	$s8,$f0
    la	$ra,gl_n_arcfs
    la	$t9,sub_0f0a0000
    cvt.s.w	$f0,$f0
    sw	$ra,0($sp)
    addiu	$t9,$t9,-20428
    swc1	$f2,12($sp)
    swc1	$f1,8($sp)
    bal gl_n_circf
    swc1	$f0,4($sp)
    la	$t9,gl_compile
    addiu	$a1,$sp,0
    li	$a0,20
    jalr	$t9
    ld	$s8,48($sp)
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f09b97c:
    sd	$a6,96($sp)
    la	$t9,sub_0f0a0000
    sd	$a7,88($sp)
    sd	$a3,80($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sd	$a4,72($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$a7,88($sp)
    b	.L0f09b910
    ld	$a6,96($sp)
.L0f09b9ac:
    sd	$a6,96($sp)
    sd	$a7,88($sp)
    sd	$a3,80($sp)
    sd	$a4,72($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,64($sp)
    jalr	$t9
    addiu	$a0,$a0,29184
    ld	$ra,64($sp)
    ld	$a4,72($sp)
    ld	$a7,88($sp)
    ld	$a6,96($sp)
    li	$a3,1
    sw	$a3,-21008($gp)
    b	.L0f09b904
    ld	$a3,80($sp)
.end gl_g_arcfs

# Function: gl_n_arcfs
# Declared: Line 339 (Source lines: 339-339)
# Address: 0x0f09b9f0 - 0x0f09ba4c (Size: 92 bytes, Frame: 48)
.globl gl_n_arcfs
.ent gl_n_arcfs
gl_n_arcfs:
    # Line 339
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,30808 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09ba24
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09ba24:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_arcf_draw
    bal gl_n_arcf_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_arcfs

# Function: gl_g_arcfi
# Declared: Line 340 (Source lines: 340-340)
# Address: 0x0f09ba4c - 0x0f09bb64 (Size: 280 bytes, Frame: 160)
.globl gl_g_arcfi
.ent gl_g_arcfi
gl_g_arcfi:
    # Line 340
    move	$a7,$a2
    addiu	$sp,$sp,-160
    sd	$gp,56($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,30716 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21004($gp)
    move	$a6,$a1
    sd	$s8,48($sp)
    beqz	$at,.L0f09bb20
    move	$s8,$a0
.L0f09ba78:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09baf0
    sd	$ra,64($sp)
.L0f09ba84:
    mtc1	$a6,$f1
    nop
    cvt.s.w	$f1,$f1
    mtc1	$a7,$f2
    move	$a2,$a4
    move	$a1,$a3
    cvt.s.w	$f2,$f2
    addiu	$a0,$sp,16
    mtc1	$s8,$f0
    la	$ra,gl_n_arcfi
    la	$t9,sub_0f0a0000
    cvt.s.w	$f0,$f0
    sw	$ra,0($sp)
    addiu	$t9,$t9,-20428
    swc1	$f2,12($sp)
    swc1	$f1,8($sp)
    bal gl_n_circf
    swc1	$f0,4($sp)
    la	$t9,gl_compile
    addiu	$a1,$sp,0
    li	$a0,20
    jalr	$t9
    ld	$s8,48($sp)
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f09baf0:
    sd	$a6,96($sp)
    la	$t9,sub_0f0a0000
    sd	$a7,88($sp)
    sd	$a3,80($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sd	$a4,72($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$a7,88($sp)
    b	.L0f09ba84
    ld	$a6,96($sp)
.L0f09bb20:
    sd	$a6,96($sp)
    sd	$a7,88($sp)
    sd	$a3,80($sp)
    sd	$a4,72($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,64($sp)
    jalr	$t9
    addiu	$a0,$a0,29200
    ld	$ra,64($sp)
    ld	$a4,72($sp)
    ld	$a7,88($sp)
    ld	$a6,96($sp)
    li	$a3,1
    sw	$a3,-21004($gp)
    b	.L0f09ba78
    ld	$a3,80($sp)
.end gl_g_arcfi

# Function: gl_n_arcfi
# Declared: Line 341 (Source lines: 341-341)
# Address: 0x0f09bb64 - 0x0f09bbc0 (Size: 92 bytes, Frame: 48)
.globl gl_n_arcfi
.ent gl_n_arcfi
gl_n_arcfi:
    # Line 341
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,30436 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09bb98
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09bb98:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_arcf_draw
    bal gl_n_arcf_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_arcfi

# Function: gl_g_arcf
# Declared: Line 342 (Source lines: 342-342)
# Address: 0x0f09bbc0 - 0x0f09bcb8 (Size: 248 bytes, Frame: 160)
.globl gl_g_arcf
.ent gl_g_arcf
gl_g_arcf:
    # Line 342
    move	$a2,$a4
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-160
    sd	$s8,56($sp)
    sd	$gp,64($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,30344 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21000($gp)
    move	$s8,$a3
    sdc1	$f30,48($sp)
    beqz	$at,.L0f09bc7c
    mov.s	$f30,$f12
.L0f09bbf8:
    lh	$v1,-21048($gp)
    beqz	$v1,.L0f09bc54
    sd	$ra,88($sp)
.L0f09bc04:
    move	$a1,$s8
    addiu	$a0,$sp,16
    swc1	$f5,12($sp)
    swc1	$f4,8($sp)
    la	$t9,sub_0f0a0000
    swc1	$f30,4($sp)
    la	$a3,gl_n_arcf
    addiu	$t9,$t9,-20428
    bal gl_n_circf
    sw	$a3,0($sp)
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    li	$a0,20
    ldc1	$f30,48($sp)
    jalr	$t9
    ld	$s8,56($sp)
    ld	$ra,88($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f09bc54:
    la	$t9,sub_0f0a0000
    sd	$a2,96($sp)
    sdc1	$f4,80($sp)
    addiu	$t9,$t9,-22832
    bal gl_i_mswapbuffers
    sdc1	$f5,72($sp)
    ldc1	$f5,72($sp)
    ldc1	$f4,80($sp)
    b	.L0f09bc04
    ld	$a2,96($sp)
.L0f09bc7c:
    sd	$a2,96($sp)
    sdc1	$f4,80($sp)
    sdc1	$f5,72($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,88($sp)
    jalr	$t9
    addiu	$a0,$a0,29216
    ldc1	$f5,72($sp)
    ldc1	$f4,80($sp)
    ld	$ra,88($sp)
    li	$a2,1
    sw	$a2,-21000($gp)
    b	.L0f09bbf8
    ld	$a2,96($sp)
.end gl_g_arcf

# Function: gl_n_arcf
# Declared: Line 343 (Source lines: 343-343)
# Address: 0x0f09bcb8 - 0x0f09bd14 (Size: 92 bytes, Frame: 48)
.globl gl_n_arcf
.ent gl_n_arcf
gl_n_arcf:
    # Line 343
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,30096 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09bcec
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09bcec:
    la	$t9,gl_n_circF_setup
    bal gl_n_circF_setup
    nop
    la	$t9,gl_n_arcf_draw
    bal gl_n_arcf_draw
    move	$a0,$v0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_arcf

