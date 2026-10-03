# Source: ../igloo/bbox.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/bbox.c -o bbox.T
# Total Functions: 10

.text

# Function: gl_bbox
# Declared: Line 72 (Source lines: 73-113)
# Address: 0x0f094d18 - 0x0f094f58 (Size: 576 bytes, Frame: 208)
.ent gl_bbox
gl_bbox:
    # Line 73
    addiu	$sp,$sp,-208
    sd	$s0,136($sp)
    sd	$a0,112($sp)
    sd	$a1,120($sp)
    sdc1	$f30,80($sp)
    mov.s	$f30,$f14
    sdc1	$f15,104($sp)
    # Line 81
    la	$t9,__iglooGetCurrentContextInfo
    sdc1	$f16,96($sp)
    sd	$ra,128($sp)
    jalr	$t9
    sdc1	$f17,88($sp)
    # Line 82
    la	$t9,__iglooGetRenderMode
    sd	$s3,144($sp)
    jalr	$t9
    # Line 81
    move	$s0,$v0
    # Line 82
    move	$s3,$v0
    # Line 83
    la	$t9,glFeedbackBuffer
    addiu	$a2,$sp,0
    li	$a1,1536
    jalr	$t9
    li	$a0,20
    # Line 84
    la	$t9,__iglooRenderMode
    move	$a1,$s0
    jalr	$t9
    li	$a0,7169
    # Line 87
    mov.s	$f12,$f30
    la	$t9,glRectf
    ldc1	$f13,104($sp)
    ldc1	$f14,96($sp)
    jalr	$t9
    ldc1	$f15,88($sp)
    # Line 89
    la	$t9,__iglooRenderMode
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
    # Line 105
    lwc1	$f5,4($sp)
    ld	$s0,136($sp)
    # Line 89
    beqz	$v0,.L0f094f44
    ld	$s3,144($sp)
    # Line 105
    mov.s	$f6,$f5
    ld	$v1,112($sp)
    # Line 103
    addiu	$v0,$sp,0
    # Line 106
    addiu	$a0,$v0,36
    lwc1	$f8,8($sp)
    addiu	$v0,$v0,12
    lwc1	$f4,0($v0)
    mov.s	$f7,$f8
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0f094df0
    # Line 108
    c.lt.s	$f5,$f4
    mov.s	$f6,$f4
    c.lt.s	$f5,$f4
.L0f094df0:
    nop
    bc1fl	.L0f094e04
    # Line 109
    lwc1	$f4,4($v0)
    mov.s	$f5,$f4
    lwc1	$f4,4($v0)
.L0f094e04:
    c.lt.s	$f4,$f7
    nop
    bc1f	.L0f094e18
    # Line 107
    addiu	$v0,$v0,8
    # Line 110
    mov.s	$f7,$f4
.L0f094e18:
    c.lt.s	$f8,$f4
    nop
    bc1f	.L0f094e2c
    nop
    # Line 111
    mov.s	$f8,$f4
.L0f094e2c:
    # Line 107
    beq	$v0,$a0,.L0f094eec
    nop
    # Line 106
    lwc1	$f4,0($v0)
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0f094e50
    # Line 108
    c.lt.s	$f5,$f4
    mov.s	$f6,$f4
    c.lt.s	$f5,$f4
.L0f094e50:
    nop
    bc1fl	.L0f094e64
    # Line 109
    lwc1	$f4,4($v0)
    mov.s	$f5,$f4
    lwc1	$f4,4($v0)
.L0f094e64:
    c.lt.s	$f4,$f7
    nop
    bc1f	.L0f094e78
    # Line 107
    addiu	$v0,$v0,8
    # Line 110
    mov.s	$f7,$f4
.L0f094e78:
    c.lt.s	$f8,$f4
    nop
    bc1f	.L0f094e8c
    nop
    # Line 111
    mov.s	$f8,$f4
.L0f094e8c:
    # Line 107
    beq	$v0,$a0,.L0f094eec
    nop
    # Line 106
    lwc1	$f4,0($v0)
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0f094eb0
    # Line 108
    c.lt.s	$f5,$f4
    mov.s	$f6,$f4
    c.lt.s	$f5,$f4
.L0f094eb0:
    nop
    bc1fl	.L0f094ec4
    # Line 109
    lwc1	$f4,4($v0)
    mov.s	$f5,$f4
    lwc1	$f4,4($v0)
.L0f094ec4:
    c.lt.s	$f4,$f7
    nop
    bc1fl	.L0f094edc
    # Line 110
    c.lt.s	$f8,$f4
    mov.s	$f7,$f4
    c.lt.s	$f8,$f4
.L0f094edc:
    nop
    bc1f	.L0f094eec
    nop
    # Line 111
    mov.s	$f8,$f4
.L0f094eec:
    # Line 113
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    sub.s	$f1,$f5,$f6
    c.le.s	$f0,$f1
    nop
    bc1t	.L0f094f3c
    ld	$a2,120($sp)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f2,$f8,$f7
    c.le.s	$f1,$f2
    nop
    bc1t	.L0f094f3c
    move	$v0,$zero
.L0f094f2c:
    ldc1	$f30,80($sp)
    ld	$ra,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f094f3c:
    b	.L0f094f2c
    li	$v0,1
.L0f094f44:
    ld	$ra,128($sp)
    # Line 103
    move	$v0,$zero
    ldc1	$f30,80($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end gl_bbox

# Function: gl_i_bbox2s
# Declared: Line 118 (Source lines: 118-118)
# Address: 0x0f094f58 - 0x0f094f98 (Size: 64 bytes, Frame: 192)
.globl gl_i_bbox2s
.ent gl_i_bbox2s
gl_i_bbox2s:
    # Line 118
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-7440 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f094f8c
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f094f8c:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_bbox2s

# Function: gl_c_bbox2s
# Declared: Line 118 (Source lines: 118-118)
# Address: 0x0f094f98 - 0x0f09504c (Size: 180 bytes, Frame: 144)
.globl gl_c_bbox2s
.ent gl_c_bbox2s
gl_c_bbox2s:
    move	$a7,$a1
    addiu	$sp,$sp,-144
    sd	$gp,32($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-7504 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21124($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f095008
    move	$s8,$a0
.L0f094fc4:
    addiu	$a1,$sp,0
    li	$a0,8
    sh	$a5,14($sp)
    sh	$a4,12($sp)
    sh	$a3,10($sp)
    sh	$a2,8($sp)
    sh	$a7,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_bbox2s
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f095008:
    sd	$a7,80($sp)
    sd	$a2,72($sp)
    sd	$a3,64($sp)
    sd	$a4,56($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a5,48($sp)
    jalr	$t9
    addiu	$a0,$a0,28536
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    ld	$a7,80($sp)
    li	$a2,1
    sw	$a2,-21124($gp)
    b	.L0f094fc4
    ld	$a2,72($sp)
.end gl_c_bbox2s

# Function: gl_n_bbox2s
# Declared: Line 118 (Source lines: 118-118)
# Address: 0x0f09504c - 0x0f0950f0 (Size: 164 bytes, Frame: 48)
.globl gl_n_bbox2s
.ent gl_n_bbox2s
gl_n_bbox2s:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-7684 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    beqz	$at,.L0f095084
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f095084:
    lh	$v1,10($s0)
    mtc1	$v1,$f17
    lh	$v0,8($s0)
    cvt.s.w	$f17,$f17
    mtc1	$v0,$f16
    lh	$a1,2($s0)
    lh	$at,6($s0)
    cvt.s.w	$f16,$f16
    lh	$a0,0($s0)
    mtc1	$at,$f15
    la	$t9,sub_0f090000
    lh	$ra,4($s0)
    cvt.s.w	$f15,$f15
    addiu	$s0,$s0,12
    mtc1	$ra,$f14
    addiu	$t9,$t9,19736
    bal gl_remove
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0f0950e8
    ld	$ra,16($sp)
.L0f0950d4:
    ld	$gp,0($sp)
    move	$v0,$s0
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0950e8:
    b	.L0f0950d4
    addiu	$s0,$gp,-15504
.end gl_n_bbox2s

# Function: gl_i_bbox2i
# Declared: Line 119 (Source lines: 119-119)
# Address: 0x0f0950f0 - 0x0f095130 (Size: 64 bytes, Frame: 192)
.globl gl_i_bbox2i
.ent gl_i_bbox2i
gl_i_bbox2i:
    # Line 119
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-7848 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f095124
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f095124:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_bbox2i

# Function: gl_c_bbox2i
# Declared: Line 119 (Source lines: 119-119)
# Address: 0x0f095130 - 0x0f0951e4 (Size: 180 bytes, Frame: 144)
.globl gl_c_bbox2i
.ent gl_c_bbox2i
gl_c_bbox2i:
    move	$a7,$a1
    addiu	$sp,$sp,-144
    sd	$gp,40($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-7912 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21120($gp)
    sd	$ra,48($sp)
    sd	$s8,32($sp)
    beqz	$at,.L0f0951a0
    move	$s8,$a0
.L0f09515c:
    addiu	$a1,$sp,0
    li	$a0,12
    sw	$a5,20($sp)
    sw	$a4,16($sp)
    sw	$a3,12($sp)
    sw	$a2,8($sp)
    sh	$a7,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_bbox2i
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0951a0:
    sd	$a7,88($sp)
    sd	$a2,80($sp)
    sd	$a3,72($sp)
    sd	$a4,64($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$a5,56($sp)
    jalr	$t9
    addiu	$a0,$a0,28552
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a7,88($sp)
    li	$a2,1
    sw	$a2,-21120($gp)
    b	.L0f09515c
    ld	$a2,80($sp)
.end gl_c_bbox2i

# Function: gl_n_bbox2i
# Declared: Line 119 (Source lines: 119-119)
# Address: 0x0f0951e4 - 0x0f095288 (Size: 164 bytes, Frame: 48)
.globl gl_n_bbox2i
.ent gl_n_bbox2i
gl_n_bbox2i:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-8092 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    beqz	$at,.L0f09521c
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09521c:
    lw	$v1,16($s0)
    mtc1	$v1,$f17
    lw	$v0,12($s0)
    cvt.s.w	$f17,$f17
    mtc1	$v0,$f16
    lh	$a1,2($s0)
    lw	$at,8($s0)
    cvt.s.w	$f16,$f16
    lh	$a0,0($s0)
    mtc1	$at,$f15
    la	$t9,sub_0f090000
    lw	$ra,4($s0)
    cvt.s.w	$f15,$f15
    addiu	$s0,$s0,20
    mtc1	$ra,$f14
    addiu	$t9,$t9,19736
    bal gl_remove
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0f095280
    ld	$ra,16($sp)
.L0f09526c:
    ld	$gp,0($sp)
    move	$v0,$s0
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f095280:
    b	.L0f09526c
    addiu	$s0,$gp,-15504
.end gl_n_bbox2i

# Function: gl_i_bbox2
# Declared: Line 120 (Source lines: 120-120)
# Address: 0x0f095288 - 0x0f0952c8 (Size: 64 bytes, Frame: 192)
.globl gl_i_bbox2
.ent gl_i_bbox2
gl_i_bbox2:
    # Line 120
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-8256 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0952bc
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f0952bc:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_bbox2

# Function: gl_c_bbox2
# Declared: Line 120 (Source lines: 120-120)
# Address: 0x0f0952c8 - 0x0f09538c (Size: 196 bytes, Frame: 144)
.globl gl_c_bbox2
.ent gl_c_bbox2
gl_c_bbox2:
    mov.s	$f6,$f17
    mov.s	$f5,$f16
    mov.s	$f4,$f15
    move	$a3,$a1
    addiu	$sp,$sp,-144
    sd	$ra,80($sp)
    sdc1	$f30,32($sp)
    sd	$gp,48($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-8320 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21116($gp)
    mov.s	$f30,$f14
    sd	$s8,40($sp)
    beqz	$at,.L0f095350
    move	$s8,$a0
.L0f095308:
    addiu	$a1,$sp,0
    li	$a0,12
    swc1	$f6,20($sp)
    swc1	$f5,16($sp)
    swc1	$f4,12($sp)
    swc1	$f30,8($sp)
    sh	$a3,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_bbox2
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$gp,48($sp)
    ld	$ra,80($sp)
    ld	$s8,40($sp)
    ldc1	$f30,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f095350:
    sd	$a3,88($sp)
    sdc1	$f4,72($sp)
    sdc1	$f5,64($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sdc1	$f6,56($sp)
    jalr	$t9
    addiu	$a0,$a0,28568
    ldc1	$f6,56($sp)
    ldc1	$f5,64($sp)
    ldc1	$f4,72($sp)
    ld	$a3,88($sp)
    li	$a2,1
    b	.L0f095308
    sw	$a2,-21116($gp)
.end gl_c_bbox2

# Function: gl_n_bbox2
# Declared: Line 120 (Source lines: 120-120)
# Address: 0x0f09538c - 0x0f095410 (Size: 132 bytes, Frame: 48)
.globl gl_n_bbox2
.ent gl_n_bbox2
gl_n_bbox2:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-8516 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    beqz	$at,.L0f0953c4
    move	$s0,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0953c4:
    lwc1	$f17,16($s0)
    lwc1	$f16,12($s0)
    lwc1	$f15,8($s0)
    la	$t9,sub_0f090000
    lwc1	$f14,4($s0)
    lh	$a1,2($s0)
    addiu	$t9,$t9,19736
    bal gl_remove
    lh	$a0,0($s0)
    addiu	$s0,$s0,20
    beqz	$v0,.L0f095408
    ld	$ra,16($sp)
.L0f0953f4:
    ld	$gp,0($sp)
    move	$v0,$s0
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f095408:
    b	.L0f0953f4
    addiu	$s0,$gp,-15504
.end gl_n_bbox2

