# Source: ../igloo/curve/curve.c
# Category: curve
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/curve/curve.c -o curve.T
# Total Functions: 15

.text

# Function: gl_g_crv
# Declared: Line 29 (Source lines: 30-51)
# Address: 0x0f0a10e4 - 0x0f0a118c (Size: 168 bytes, Frame: 224)
.globl gl_g_crv
.ent gl_g_crv
gl_g_crv:
    # Line 33
    lwc1	$f12,0($a0)
    # Line 30
    addiu	$sp,$sp,-96
    sd	$gp,72($sp)
    # Line 33
    swc1	$f12,0($sp)
    # Line 30
    lui	$at,0xfff9
    # Line 34
    lwc1	$f11,4($a0)
    # Line 30
    addiu	$at,$at,8548
    # addu	gp,t9,at (gp setup)
    # Line 34
    swc1	$f11,4($sp)
    # Line 36
    lwc1	$f1,_lit_3f800000
    # Line 35
    lwc1	$f10,8($a0)
    # Line 36
    swc1	$f1,12($sp)
    # Line 35
    swc1	$f10,8($sp)
    # Line 37
    lwc1	$f9,12($a0)
    swc1	$f9,16($sp)
    # Line 38
    lwc1	$f8,16($a0)
    swc1	$f8,20($sp)
    # Line 39
    lwc1	$f7,20($a0)
    # Line 40
    swc1	$f1,28($sp)
    # Line 39
    swc1	$f7,24($sp)
    # Line 41
    lwc1	$f6,24($a0)
    swc1	$f6,32($sp)
    # Line 42
    lwc1	$f5,28($a0)
    swc1	$f5,36($sp)
    # Line 43
    lwc1	$f4,32($a0)
    # Line 44
    swc1	$f1,44($sp)
    # Line 43
    swc1	$f4,40($sp)
    # Line 45
    lwc1	$f3,36($a0)
    swc1	$f3,48($sp)
    # Line 46
    lwc1	$f2,40($a0)
    sd	$ra,64($sp)
    swc1	$f2,52($sp)
    # Line 50
    la	$t9,rcrv
    # Line 47
    lwc1	$f0,44($a0)
    # Line 50
    addiu	$a0,$sp,0
    # Line 48
    swc1	$f1,60($sp)
    # Line 50
    jalr	$t9
    # Line 47
    swc1	$f0,56($sp)
    # Line 51
    ld	$ra,64($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_g_crv

# Function: freecurve
# Declared: Line 54 (Source lines: 55-59)
# Address: 0x0f0a118c - 0x0f0a11c0 (Size: 52 bytes, Frame: 32)
.ent freecurve
freecurve:
    # Line 55
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,8380 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 58
    la	$t9,__iglooFree
    sd	$ra,0($sp)
    jalr	$t9
    # Line 55
    move	$a0,$a1
    # Line 59
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end freecurve

# Function: drawcurve
# Declared: Line 79 (Source lines: 80-93)
# Address: 0x0f0a11c0 - 0x0f0a1350 (Size: 400 bytes, Frame: 128)
.ent drawcurve
drawcurve:
    # Line 80
    addiu	$sp,$sp,-128
    sd	$s7,96($sp)
    sd	$s1,64($sp)
    sd	$s5,80($sp)
    sd	$gp,88($sp)
    lui	$t8,0xfff9
    addiu	$t8,$t8,8328
    addu	$gp,$t9,$t8
    # Line 82
    la	$s5,gl_wstatep
    # Line 80
    move	$s1,$a1
    # Line 87
    li	$a1,1
    # Line 82
    lw	$s5,0($s5)
    # Line 87
    la	$t9,gl_findbasis
    sd	$ra,72($sp)
    lw	$a0,11712($s5)
    bal gl_findbasis
    # Line 82
    addiu	$s5,$s5,11712
    # Line 89
    la	$t9,__iglooSetEnable
    # Line 87
    move	$s7,$v0
    # Line 89
    li	$a1,1
    jalr	$t9
    li	$a0,3480
    # Line 90
    move	$a6,$zero
    li	$a7,4
    addiu	$a5,$sp,0
    addiu	$a4,$s1,16
    move	$a3,$s7
    ld	$s7,96($sp)
.L0f0a1230:
    move	$a1,$s1
    addiu	$a6,$a6,1
    move	$v0,$a5
    addiu	$a5,$a5,16
.L0f0a1240:
    lwc1	$f3,8($a1)
    lwc1	$f0,12($a3)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($v0)
    lwc1	$f2,16($a3)
    lwc1	$f0,24($a1)
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    swc1	$f2,0($v0)
    lwc1	$f1,20($a3)
    lwc1	$f3,40($a1)
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    swc1	$f1,0($v0)
    lwc1	$f0,24($a3)
    lwc1	$f2,56($a1)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    addiu	$v0,$v0,4
    addiu	$a1,$a1,4
    bne	$a1,$a4,.L0f0a1240
    swc1	$f0,-4($v0)
    bne	$a6,$a7,.L0f0a1230
    addiu	$a3,$a3,16
    addiu	$a5,$sp,0
    li	$a4,4
    li	$a3,4
    la	$t9,glMap1f
    li	$a0,3480
    lwc1	$f14,_lit_3f800000
    jalr	$t9
    mtc1	$zero,$f13
    lwc1	$f14,_lit_3f800000
    la	$t9,glMapGrid1f
    mtc1	$zero,$f13
    lh	$a0,4($s5)
    jalr	$t9
    ld	$s1,64($sp)
    la	$t9,glEvalMesh1
    lh	$a2,4($s5)
    move	$a1,$zero
    jalr	$t9
    li	$a0,6913
    lw	$a1,4100($zero)
    beqz	$a1,.L0f0a131c
    ld	$s5,80($sp)
    lw	$v0,48($a1)
    li	$at,1028
    beq	$v0,$at,.L0f0a133c
    li	$v1,1024
    beq	$v0,$v1,.L0f0a133c
    li	$a0,1025
    beq	$v0,$a0,.L0f0a133c
    li	$a2,1032
    beq	$v0,$a2,.L0f0a133c
.L0f0a131c:
    # Line 91
    la	$t9,__iglooSetEnable
.L0f0a1320:
    move	$a1,$zero
    jalr	$t9
    li	$a0,3480
    # Line 93
    ld	$ra,72($sp)
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0a133c:
    # Line 90
    la	$t9,glFlush
    jalr	$t9
    nop
    b	.L0f0a1320
    # Line 91
    la	$t9,__iglooSetEnable
.end drawcurve

# Function: gl_g_crvn
# Declared: Line 96 (Source lines: 97-110)
# Address: 0x0f0a1350 - 0x0f0a1470 (Size: 288 bytes, Frame: 192)
.globl gl_g_crvn
.ent gl_g_crvn
gl_g_crvn:
    # Line 97
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    sd	$gp,24($sp)
    sd	$a1,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,7928
    addu	$gp,$t9,$a1
    # Line 101
    la	$t9,__iglooMalloc
    # Line 97
    move	$s0,$a0
    # Line 101
    sll	$a0,$a0,0x2
    jalr	$t9
    sll	$a0,$a0,0x2
    move	$a4,$s0
    ld	$a3,0($sp)
    blez	$s0,.L0f0a143c
    move	$s1,$v0
    lwc1	$f4,_lit_3f800000
    move	$a0,$s1
    move	$v0,$a3
    andi	$a2,$s0,0x1
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x2
    beqz	$a2,.L0f0a13e0
    addu	$a1,$a1,$a3
    # Line 103
    lwc1	$f2,0($v0)
    swc1	$f2,0($a0)
    # Line 104
    lwc1	$f1,4($v0)
    swc1	$f1,4($a0)
    # Line 102
    addiu	$v0,$v0,12
    # Line 105
    lwc1	$f0,-4($v0)
    # Line 102
    addiu	$a0,$a0,16
    # Line 106
    swc1	$f4,-4($a0)
    # Line 105
    swc1	$f0,-8($a0)
.L0f0a13e0:
    sra	$a2,$a4,0x1
    move	$a5,$a0
    beqz	$a2,.L0f0a143c
    move	$a6,$v0
    move	$a0,$a5
    move	$v0,$a6
.L0f0a13f8:
    # Line 103
    lwc1	$f0,0($v0)
    swc1	$f0,0($a0)
    # Line 104
    lwc1	$f3,4($v0)
    swc1	$f3,4($a0)
    # Line 105
    lwc1	$f2,8($v0)
    swc1	$f2,8($a0)
    # Line 106
    swc1	$f4,12($a0)
    # Line 103
    lwc1	$f1,12($v0)
    swc1	$f1,16($a0)
    # Line 104
    lwc1	$f0,16($v0)
    # Line 102
    addiu	$a0,$a0,32
    # Line 104
    swc1	$f0,-12($a0)
    # Line 102
    addiu	$v0,$v0,24
    # Line 105
    lwc1	$f3,-4($v0)
    # Line 106
    swc1	$f4,-4($a0)
    # Line 102
    bne	$v0,$a1,.L0f0a13f8
    # Line 105
    swc1	$f3,-8($a0)
.L0f0a143c:
    # Line 108
    la	$t9,rcrvn
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 109
    la	$t9,__iglooFree
    move	$a0,$s1
    jalr	$t9
    ld	$s0,8($sp)
    # Line 110
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_crvn

# Function: freecurves
# Declared: Line 113 (Source lines: 114-122)
# Address: 0x0f0a1470 - 0x0f0a14dc (Size: 108 bytes, Frame: 48)
.ent freecurves
freecurves:
    # Line 114
    addiu	$sp,$sp,-48
    sd	$a1,0($sp)
    sd	$gp,8($sp)
    lw	$a0,12($a1)
    lui	$at,0xfff9
    addiu	$at,$at,7640
    beqz	$a0,.L0f0a14a4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 118
    la	$t9,__iglooFree
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0f0a14a4:
    ld	$a0,0($sp)
    lw	$a0,16($a0)
    beqz	$a0,.L0f0a14c0
    sd	$ra,16($sp)
    # Line 120
    la	$t9,__iglooFree
    jalr	$t9
    nop
.L0f0a14c0:
    # Line 121
    la	$t9,__iglooFree
    jalr	$t9
    ld	$a0,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 122
    jr	$ra
    addiu	$sp,$sp,48
.end freecurves

# Function: drawcurves
# Declared: Line 125 (Source lines: 126-146)
# Address: 0x0f0a14dc - 0x0f0a16e8 (Size: 524 bytes, Frame: 192)
.ent drawcurves
drawcurves:
    # Line 126
    addiu	$sp,$sp,-192
    sd	$s1,136($sp)
    sd	$s5,144($sp)
    sd	$s0,80($sp)
    sd	$s3,64($sp)
    sd	$gp,88($sp)
    lui	$t8,0xfff9
    addiu	$t8,$t8,7532
    addu	$gp,$t9,$t8
    # Line 132
    la	$s3,gl_wstatep
    # Line 126
    move	$s0,$a1
    # Line 136
    li	$a1,1
    # Line 132
    lw	$s3,0($s3)
    # Line 136
    la	$t9,gl_findbasis
    sd	$ra,72($sp)
    lw	$a0,11712($s3)
    bal gl_findbasis
    # Line 132
    addiu	$s3,$s3,11712
    sd	$s4,128($sp)
    # Line 136
    move	$s5,$v0
    # Line 140
    la	$t9,__iglooSetEnable
    li	$a1,1
    li	$a0,3480
    jalr	$t9
    # Line 139
    lw	$s1,12($s0)
    sd	$s8,160($sp)
    sd	$s7,152($sp)
    sd	$s6,120($sp)
    # Line 141
    lh	$s4,8($s0)
    sd	$s2,112($sp)
    sdc1	$f20,104($sp)
    addiu	$s4,$s4,-3
    blez	$s4,.L0f0a169c
    sdc1	$f22,96($sp)
    li	$s8,1025
    li	$s7,1024
    li	$s6,1028
    lwc1	$f22,_lit_3f800000
    mtc1	$zero,$f20
    li	$s2,4
    b	.L0f0a15a0
    addiu	$s0,$s1,16
.L0f0a1584:
    # Line 142
    la	$t9,glFlush
.L0f0a1588:
    jalr	$t9
    nop
    # Line 143
    addiu	$s0,$s0,16
.L0f0a1594:
    # Line 141
    addiu	$s4,$s4,-1
    beqz	$s4,.L0f0a169c
    # Line 143
    addiu	$s1,$s1,16
.L0f0a15a0:
    # Line 142
    move	$a5,$zero
    move	$a3,$s5
    addiu	$a4,$sp,0
.L0f0a15ac:
    move	$a1,$s1
    addiu	$a5,$a5,1
    move	$v0,$a4
    addiu	$a4,$a4,16
.L0f0a15bc:
    lwc1	$f3,0($a1)
    lwc1	$f0,12($a3)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($v0)
    lwc1	$f2,16($a3)
    lwc1	$f0,16($a1)
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    swc1	$f2,0($v0)
    lwc1	$f1,20($a3)
    lwc1	$f3,32($a1)
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    swc1	$f1,0($v0)
    lwc1	$f0,24($a3)
    lwc1	$f2,48($a1)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    addiu	$v0,$v0,4
    addiu	$a1,$a1,4
    bne	$a1,$s0,.L0f0a15bc
    swc1	$f0,-4($v0)
    bne	$a5,$s2,.L0f0a15ac
    addiu	$a3,$a3,16
    addiu	$a5,$sp,0
    li	$a4,4
    li	$a3,4
    la	$t9,glMap1f
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    jalr	$t9
    li	$a0,3480
    la	$t9,glMapGrid1f
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    jalr	$t9
    lh	$a0,4($s3)
    la	$t9,glEvalMesh1
    lh	$a2,4($s3)
    move	$a1,$zero
    jalr	$t9
    li	$a0,6913
    lw	$a1,4100($zero)
    beqzl	$a1,.L0f0a1594
    # Line 143
    addiu	$s0,$s0,16
    # Line 142
    lw	$v0,48($a1)
    beq	$s6,$v0,.L0f0a1588
    la	$t9,glFlush
    beq	$s7,$v0,.L0f0a1588
    la	$t9,glFlush
    beq	$s8,$v0,.L0f0a1584
    li	$at,1032
    bnel	$at,$v0,.L0f0a1594
    # Line 143
    addiu	$s0,$s0,16
    b	.L0f0a1588
    # Line 142
    la	$t9,glFlush
.L0f0a169c:
    # Line 145
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,3480
    ld	$gp,88($sp)
    # Line 146
    ld	$s0,80($sp)
    ld	$s1,136($sp)
    ld	$s2,112($sp)
    ld	$s3,64($sp)
    ld	$s4,128($sp)
    ld	$s5,144($sp)
    ld	$s6,120($sp)
    ld	$s7,152($sp)
    ld	$s8,160($sp)
    ld	$ra,72($sp)
    ldc1	$f20,104($sp)
    ldc1	$f22,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end drawcurves

# Function: crv_multmatrix
# Declared: Line 148 (Source lines: 154-162)
# Address: 0x0f0a16e8 - 0x0f0a176c (Size: 132 bytes, Frame: 0)
.globl crv_multmatrix
.ent crv_multmatrix
crv_multmatrix:
    # Line 154
    move	$a7,$zero
    li	$t0,4
    addiu	$a6,$a2,16
.L0f0a16f4:
    move	$a5,$a2
    addiu	$a7,$a7,1
    move	$a4,$a0
    addiu	$a0,$a0,16
.L0f0a1704:
    # Line 156
    lwc1	$f3,0($a5)
    lwc1	$f0,0($a1)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($a4)
    # Line 157
    lwc1	$f2,4($a1)
    lwc1	$f0,16($a5)
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a4)
    # Line 158
    lwc1	$f1,8($a1)
    lwc1	$f3,32($a5)
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a4)
    # Line 159
    lwc1	$f0,12($a1)
    lwc1	$f2,48($a5)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    # Line 155
    addiu	$a4,$a4,4
    addiu	$a5,$a5,4
    bne	$a5,$a6,.L0f0a1704
    # Line 159
    swc1	$f0,-4($a4)
    # Line 154
    bne	$a7,$t0,.L0f0a16f4
    addiu	$a1,$a1,16
    # Line 162
    jr	$ra
    nop
.end crv_multmatrix

# Function: gl_curveit
# Declared: Line 168 (Source lines: 169-227)
# Address: 0x0f0a176c - 0x0f0a1a8c (Size: 800 bytes, Frame: 160)
.globl gl_curveit
.ent gl_curveit
gl_curveit:
    # Line 169
    addiu	$sp,$sp,-288
    sd	$s1,200($sp)
    sd	$gp,208($sp)
    sd	$s2,192($sp)
    lui	$s2,0xfff9
    addiu	$s2,$s2,6876
    addu	$gp,$t9,$s2
    # Line 170
    la	$s1,gl_wstatep
    lw	$s1,0($s1)
    lh	$at,264($s1)
    li	$v0,2
    sd	$ra,264($sp)
    beq	$at,$v0,.L0f0a1a50
    # Line 169
    move	$s2,$a0
    # Line 187
    la	$t9,__iglooGetMatrix
    addiu	$a1,$sp,128
    jalr	$t9
    li	$a0,2982
    # Line 191
    la	$t9,__iglooLoadMatrix
.L0f0a17b8:
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,30808
    # Line 198
    lw	$t9,216($s1)
    jalr	$t9
    li	$a0,3
    sdc1	$f24,240($sp)
    sdc1	$f22,232($sp)
    sdc1	$f26,224($sp)
    sdc1	$f20,216($sp)
    # Line 202
    lwc1	$f24,188($sp)
    # Line 201
    lwc1	$f26,184($sp)
    # Line 204
    div.s	$f14,$f26,$f24
    # Line 200
    lwc1	$f20,180($sp)
    # Line 204
    div.s	$f13,$f20,$f24
    la	$t9,glVertex3f
    # Line 199
    lwc1	$f22,176($sp)
    # Line 204
    jalr	$t9
    div.s	$f12,$f22,$f24
    # Line 207
    lwc1	$f5,164($sp)
    lwc1	$f4,172($sp)
    andi	$a1,$s2,0x1
    sd	$s5,256($sp)
    move	$s5,$s2
    blez	$s2,.L0f0a1a1c
    lwc1	$f6,168($sp)
    lwc1	$f7,160($sp)
    move	$a0,$s2
    beqz	$a1,.L0f0a18d8
    ld	$s2,192($sp)
    # Line 209
    add.s	$f20,$f20,$f5
    # Line 210
    add.s	$f26,$f26,$f6
    sd	$a0,248($sp)
    # Line 211
    add.s	$f24,$f24,$f4
    ld	$s2,192($sp)
    # Line 213
    la	$t9,glVertex4f
    # Line 208
    add.s	$f22,$f22,$f7
    # Line 213
    mov.s	$f15,$f24
    mov.s	$f14,$f26
    mov.s	$f13,$f20
    jalr	$t9
    mov.s	$f12,$f22
    # Line 207
    addiu	$s5,$s5,-1
    # Line 216
    lwc1	$f8,144($sp)
    # Line 221
    lwc1	$f0,128($sp)
    add.s	$f0,$f0,$f8
    # Line 217
    lwc1	$f7,148($sp)
    # Line 222
    lwc1	$f1,132($sp)
    add.s	$f1,$f1,$f7
    # Line 218
    lwc1	$f5,152($sp)
    # Line 223
    lwc1	$f2,136($sp)
    add.s	$f2,$f2,$f5
    # Line 219
    lwc1	$f6,156($sp)
    # Line 224
    lwc1	$f3,140($sp)
    # Line 219
    lwc1	$f4,172($sp)
    # Line 224
    add.s	$f3,$f3,$f6
    # Line 219
    add.s	$f4,$f4,$f6
    # Line 218
    lwc1	$f6,168($sp)
    ld	$a0,248($sp)
    add.s	$f6,$f6,$f5
    # Line 217
    lwc1	$f5,164($sp)
    # Line 224
    swc1	$f3,156($sp)
    # Line 223
    swc1	$f2,152($sp)
    # Line 217
    add.s	$f5,$f5,$f7
    # Line 216
    lwc1	$f7,160($sp)
    # Line 222
    swc1	$f1,148($sp)
    # Line 221
    swc1	$f0,144($sp)
    # Line 216
    add.s	$f7,$f7,$f8
    # Line 219
    swc1	$f4,172($sp)
    # Line 218
    swc1	$f6,168($sp)
    # Line 217
    swc1	$f5,164($sp)
    # Line 216
    swc1	$f7,160($sp)
.L0f0a18d8:
    sra	$at,$a0,0x1
    beqz	$at,.L0f0a1a1c
    nop
.L0f0a18e4:
    # Line 209
    add.s	$f20,$f20,$f5
    # Line 210
    add.s	$f26,$f26,$f6
    # Line 211
    add.s	$f24,$f24,$f4
    # Line 207
    addiu	$s5,$s5,-2
    # Line 213
    la	$t9,glVertex4f
    # Line 208
    add.s	$f22,$f22,$f7
    # Line 213
    mov.s	$f15,$f24
    mov.s	$f14,$f26
    mov.s	$f13,$f20
    jalr	$t9
    mov.s	$f12,$f22
    # Line 224
    lwc1	$f13,140($sp)
    # Line 219
    lwc1	$f15,156($sp)
    # Line 223
    lwc1	$f12,136($sp)
    # Line 224
    add.s	$f13,$f13,$f15
    # Line 218
    lwc1	$f14,152($sp)
    # Line 221
    lwc1	$f9,128($sp)
    # Line 223
    add.s	$f12,$f12,$f14
    # Line 216
    lwc1	$f7,144($sp)
    # Line 222
    lwc1	$f11,132($sp)
    # Line 221
    add.s	$f9,$f9,$f7
    # Line 217
    lwc1	$f10,148($sp)
    # Line 222
    add.s	$f11,$f11,$f10
    # Line 216
    lwc1	$f4,160($sp)
    # Line 218
    lwc1	$f6,168($sp)
    # Line 216
    add.s	$f4,$f4,$f7
    # Line 217
    lwc1	$f5,164($sp)
    # Line 218
    add.s	$f6,$f6,$f14
    # Line 219
    lwc1	$f8,172($sp)
    # Line 217
    add.s	$f5,$f5,$f10
    # Line 213
    la	$t9,glVertex4f
    # Line 219
    add.s	$f8,$f8,$f15
    # Line 222
    swc1	$f11,148($sp)
    # Line 221
    swc1	$f9,144($sp)
    # Line 209
    add.s	$f20,$f20,$f5
    # Line 219
    swc1	$f8,172($sp)
    # Line 218
    swc1	$f6,168($sp)
    # Line 210
    add.s	$f26,$f26,$f6
    # Line 217
    swc1	$f5,164($sp)
    # Line 216
    swc1	$f4,160($sp)
    # Line 211
    add.s	$f24,$f24,$f8
    # Line 223
    swc1	$f12,152($sp)
    # Line 224
    swc1	$f13,156($sp)
    # Line 208
    add.s	$f22,$f22,$f4
    # Line 213
    mov.s	$f15,$f24
    mov.s	$f14,$f26
    mov.s	$f13,$f20
    jalr	$t9
    mov.s	$f12,$f22
    # Line 216
    lwc1	$f8,144($sp)
    # Line 221
    lwc1	$f0,128($sp)
    # Line 218
    lwc1	$f3,152($sp)
    # Line 223
    lwc1	$f2,136($sp)
    # Line 221
    add.s	$f0,$f0,$f8
    # Line 223
    add.s	$f2,$f2,$f3
    # Line 217
    lwc1	$f7,148($sp)
    # Line 222
    lwc1	$f1,132($sp)
    # Line 219
    lwc1	$f4,172($sp)
    # Line 222
    add.s	$f1,$f1,$f7
    # Line 219
    lwc1	$f6,156($sp)
    add.s	$f4,$f4,$f6
    # Line 224
    lwc1	$f5,140($sp)
    add.s	$f5,$f5,$f6
    # Line 218
    lwc1	$f6,168($sp)
    add.s	$f6,$f6,$f3
    # Line 224
    swc1	$f5,156($sp)
    # Line 217
    lwc1	$f5,164($sp)
    # Line 223
    swc1	$f2,152($sp)
    # Line 222
    swc1	$f1,148($sp)
    # Line 217
    add.s	$f5,$f5,$f7
    # Line 216
    lwc1	$f7,160($sp)
    # Line 221
    swc1	$f0,144($sp)
    # Line 219
    swc1	$f4,172($sp)
    # Line 216
    add.s	$f7,$f7,$f8
    # Line 218
    swc1	$f6,168($sp)
    # Line 217
    swc1	$f5,164($sp)
    # Line 207
    bnez	$s5,.L0f0a18e4
    # Line 216
    swc1	$f7,160($sp)
.L0f0a1a1c:
    ldc1	$f24,240($sp)
    ldc1	$f22,232($sp)
    ldc1	$f26,224($sp)
    # Line 226
    lw	$t9,220($s1)
    ldc1	$f20,216($sp)
    ld	$s2,192($sp)
    jalr	$t9
    ld	$s5,256($sp)
    # Line 227
    ld	$ra,264($sp)
    ld	$gp,208($sp)
    ld	$s1,200($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0f0a1a50:
    # Line 183
    la	$t9,__iglooGetMatrix
    addiu	$a1,$sp,0
    jalr	$t9
    li	$a0,2982
    # Line 184
    la	$t9,__iglooGetMatrix
    addiu	$a1,$sp,64
    jalr	$t9
    li	$a0,2983
    # Line 185
    la	$t9,crv_multmatrix
    addiu	$a2,$sp,64
    addiu	$a1,$sp,0
    bal crv_multmatrix
    addiu	$a0,$sp,128
    b	.L0f0a17b8
    # Line 191
    la	$t9,__iglooLoadMatrix
.end gl_curveit

# Function: gl_i_curveit
# Declared: Line 230 (Source lines: 230-230)
# Address: 0x0f0a1a8c - 0x0f0a1adc (Size: 80 bytes, Frame: 48)
.globl gl_i_curveit
.ent gl_i_curveit
gl_i_curveit:
    # Line 230
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,6076 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0a1ac0
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0a1ac0:
    la	$t9,gl_curveit
    bal gl_curveit
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_curveit

# Function: gl_c_curveit
# Declared: Line 230 (Source lines: 230-230)
# Address: 0x0f0a1adc - 0x0f0a1b54 (Size: 120 bytes, Frame: 192)
.globl gl_c_curveit
.ent gl_c_curveit
gl_c_curveit:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,5996 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20872($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0a1b38
    move	$s8,$a0
.L0f0a1b04:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_curveit
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a1b38:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,30760
    li	$a1,1
    b	.L0f0a1b04
    sw	$a1,-20872($gp)
.end gl_c_curveit

# Function: gl_n_curveit
# Declared: Line 230 (Source lines: 230-230)
# Address: 0x0f0a1b54 - 0x0f0a1bb0 (Size: 92 bytes, Frame: 48)
.globl gl_n_curveit
.ent gl_n_curveit
gl_n_curveit:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,5876 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0a1b8c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0a1b8c:
    la	$t9,gl_curveit
    bal gl_curveit
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_curveit

# Function: gl_i_rcrv
# Declared: Line 233 (Source lines: 233-252)
# Address: 0x0f0a1bb0 - 0x0f0a1d60 (Size: 432 bytes, Frame: 128)
.globl gl_i_rcrv
.ent gl_i_rcrv
gl_i_rcrv:
    # Line 241
    li	$a1,1
    # Line 233
    addiu	$sp,$sp,-128
    sd	$s7,104($sp)
    sd	$s1,80($sp)
    sd	$gp,96($sp)
    sd	$s5,88($sp)
    lui	$s5,0xfff9
    addiu	$s5,$s5,5784
    addu	$gp,$t9,$s5
    # Line 235
    la	$s1,gl_wstatep
    sd	$ra,72($sp)
    sd	$s0,64($sp)
    lw	$s1,0($s1)
    # Line 241
    la	$t9,gl_findbasis
    # Line 233
    move	$s0,$a0
    # Line 241
    lw	$a0,11712($s1)
    bal gl_findbasis
    # Line 236
    addiu	$s5,$s1,11712
    # Line 246
    lw	$t9,216($s1)
    # Line 241
    move	$s7,$v0
    # Line 246
    jalr	$t9
    li	$a0,1
    lw	$t9,220($s1)
    jalr	$t9
    nop
    # Line 247
    la	$t9,__iglooSetEnable
    li	$a1,1
    li	$a0,3480
    jalr	$t9
    ld	$s1,80($sp)
    # Line 248
    move	$a6,$zero
    li	$a7,4
    addiu	$a5,$sp,0
    addiu	$a4,$s0,16
    move	$a3,$s7
    ld	$s7,104($sp)
.L0f0a1c40:
    move	$v0,$s0
    addiu	$a6,$a6,1
    move	$a0,$a5
    addiu	$a5,$a5,16
.L0f0a1c50:
    lwc1	$f3,0($v0)
    lwc1	$f0,12($a3)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    lwc1	$f2,16($a3)
    lwc1	$f0,16($v0)
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a0)
    lwc1	$f1,20($a3)
    lwc1	$f3,32($v0)
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a0)
    lwc1	$f0,24($a3)
    lwc1	$f2,48($v0)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    addiu	$a0,$a0,4
    addiu	$v0,$v0,4
    bne	$v0,$a4,.L0f0a1c50
    swc1	$f0,-4($a0)
    bne	$a6,$a7,.L0f0a1c40
    addiu	$a3,$a3,16
    addiu	$a5,$sp,0
    li	$a4,4
    li	$a3,4
    la	$t9,glMap1f
    li	$a0,3480
    lwc1	$f14,_lit_3f800000
    jalr	$t9
    mtc1	$zero,$f13
    lwc1	$f14,_lit_3f800000
    la	$t9,glMapGrid1f
    mtc1	$zero,$f13
    lh	$a0,4($s5)
    jalr	$t9
    ld	$s0,64($sp)
    la	$t9,glEvalMesh1
    lh	$a2,4($s5)
    move	$a1,$zero
    jalr	$t9
    li	$a0,6913
    lw	$a0,4100($zero)
    beqz	$a0,.L0f0a1d2c
    ld	$s5,88($sp)
    lw	$v0,48($a0)
    li	$at,1028
    beq	$v0,$at,.L0f0a1d4c
    li	$v1,1024
    beq	$v0,$v1,.L0f0a1d4c
    li	$a1,1025
    beq	$v0,$a1,.L0f0a1d4c
    li	$a2,1032
    beq	$v0,$a2,.L0f0a1d4c
.L0f0a1d2c:
    # Line 249
    la	$t9,__iglooSetEnable
.L0f0a1d30:
    move	$a1,$zero
    jalr	$t9
    li	$a0,3480
    # Line 252
    ld	$ra,72($sp)
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0a1d4c:
    # Line 248
    la	$t9,glFlush
    jalr	$t9
    nop
    b	.L0f0a1d30
    # Line 249
    la	$t9,__iglooSetEnable
.end gl_i_rcrv

# Function: gl_c_rcrv
# Declared: Line 253 (Source lines: 253-290)
# Address: 0x0f0a1d60 - 0x0f0a1e54 (Size: 244 bytes, Frame: 48)
.globl gl_c_rcrv
.ent gl_c_rcrv
gl_c_rcrv:
    # Line 253
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,5352 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 259
    la	$t9,__iglooCalloc
    # Line 253
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 259
    jalr	$t9
    li	$a0,136
    move	$a3,$v0
    sd	$v0,24($sp)
    # Line 261
    li	$a2,1
    la	$a1,sub_0f0a0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0a0000
    addiu	$a1,$a1,4492
    jalr	$t9
    addiu	$a0,$a0,4544
    # Line 267
    ld	$a2,24($sp)
    lwc1	$f0,0($s8)
    swc1	$f0,8($a2)
    # Line 268
    lwc1	$f4,4($s8)
    swc1	$f4,12($a2)
    # Line 269
    lwc1	$f3,8($s8)
    swc1	$f3,16($a2)
    # Line 270
    lwc1	$f2,12($s8)
    swc1	$f2,20($a2)
    # Line 272
    lwc1	$f1,16($s8)
    swc1	$f1,24($a2)
    # Line 273
    lwc1	$f0,20($s8)
    swc1	$f0,28($a2)
    # Line 274
    lwc1	$f4,24($s8)
    swc1	$f4,32($a2)
    # Line 275
    lwc1	$f3,28($s8)
    swc1	$f3,36($a2)
    # Line 277
    lwc1	$f2,32($s8)
    swc1	$f2,40($a2)
    # Line 278
    lwc1	$f1,36($s8)
    swc1	$f1,44($a2)
    # Line 279
    lwc1	$f0,40($s8)
    swc1	$f0,48($a2)
    # Line 280
    lwc1	$f4,44($s8)
    swc1	$f4,52($a2)
    # Line 282
    lwc1	$f3,48($s8)
    swc1	$f3,56($a2)
    # Line 283
    lwc1	$f2,52($s8)
    swc1	$f2,60($a2)
    # Line 284
    lwc1	$f1,56($s8)
    ld	$gp,16($sp)
    swc1	$f1,64($a2)
    # Line 288
    li	$ra,-1
    # Line 285
    lwc1	$f0,60($s8)
    # Line 287
    sh	$zero,0($a2)
    # Line 288
    sw	$ra,4($a2)
    # Line 290
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 285
    swc1	$f0,68($a2)
.end gl_c_rcrv

# Function: gl_i_rcrvn
# Declared: Line 294 (Source lines: 294-326)
# Address: 0x0f0a1e54 - 0x0f0a20bc (Size: 616 bytes, Frame: 192)
.globl gl_i_rcrvn
.ent gl_i_rcrvn
gl_i_rcrvn:
    # Line 294
    move	$v0,$a1
    addiu	$sp,$sp,-192
    sd	$gp,80($sp)
    sd	$s0,72($sp)
    lui	$s0,0xfff9
    addiu	$s0,$s0,5108
    addu	$gp,$t9,$s0
    # Line 296
    la	$a4,gl_wstatep
    slti	$at,$a0,4
    sd	$ra,128($sp)
    lw	$a4,0($a4)
    sd	$a0,64($sp)
    bnez	$at,.L0f0a2090
    move	$s0,$a4
    sd	$s5,160($sp)
    # Line 312
    li	$a1,1
    lw	$a0,11712($a4)
    sd	$s1,152($sp)
    la	$t9,gl_findbasis
    # Line 311
    move	$s1,$v0
    sd	$s3,136($sp)
    # Line 312
    bal gl_findbasis
    # Line 310
    addiu	$s3,$a4,11712
    # Line 318
    lw	$t9,216($s0)
    # Line 312
    move	$s5,$v0
    # Line 318
    jalr	$t9
    li	$a0,1
    lw	$t9,220($s0)
    jalr	$t9
    nop
    # Line 319
    la	$t9,__iglooSetEnable
    sd	$s4,144($sp)
    li	$a1,1
    jalr	$t9
    li	$a0,3480
    sd	$s2,168($sp)
    sd	$s6,112($sp)
    sd	$s8,120($sp)
    sd	$s7,104($sp)
    ld	$v0,64($sp)
    sdc1	$f22,88($sp)
    sdc1	$f20,96($sp)
    # Line 320
    slti	$at,$v0,4
    addiu	$v0,$v0,-3
    bnez	$at,.L0f0a2044
    move	$s4,$v0
    li	$s8,1025
    li	$s7,1024
    li	$s6,1028
    lwc1	$f22,_lit_3f800000
    mtc1	$zero,$f20
    li	$s2,4
    b	.L0f0a1f48
    addiu	$s0,$s1,16
.L0f0a1f2c:
    # Line 321
    la	$t9,glFlush
.L0f0a1f30:
    jalr	$t9
    nop
    # Line 322
    addiu	$s0,$s0,16
.L0f0a1f3c:
    # Line 320
    addiu	$s4,$s4,-1
    beqz	$s4,.L0f0a2044
    # Line 322
    addiu	$s1,$s1,16
.L0f0a1f48:
    # Line 321
    move	$a5,$zero
    move	$a1,$s5
    addiu	$a4,$sp,0
.L0f0a1f54:
    move	$v0,$s1
    addiu	$a5,$a5,1
    move	$a0,$a4
    addiu	$a4,$a4,16
.L0f0a1f64:
    lwc1	$f3,0($v0)
    lwc1	$f0,12($a1)
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    lwc1	$f2,16($a1)
    lwc1	$f0,16($v0)
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a0)
    lwc1	$f1,20($a1)
    lwc1	$f3,32($v0)
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a0)
    lwc1	$f0,24($a1)
    lwc1	$f2,48($v0)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    addiu	$a0,$a0,4
    addiu	$v0,$v0,4
    bne	$v0,$s0,.L0f0a1f64
    swc1	$f0,-4($a0)
    bne	$a5,$s2,.L0f0a1f54
    addiu	$a1,$a1,16
    addiu	$a5,$sp,0
    li	$a4,4
    li	$a3,4
    la	$t9,glMap1f
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    jalr	$t9
    li	$a0,3480
    la	$t9,glMapGrid1f
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    jalr	$t9
    lh	$a0,4($s3)
    la	$t9,glEvalMesh1
    lh	$a2,4($s3)
    move	$a1,$zero
    jalr	$t9
    li	$a0,6913
    lw	$a0,4100($zero)
    beqzl	$a0,.L0f0a1f3c
    # Line 322
    addiu	$s0,$s0,16
    # Line 321
    lw	$v0,48($a0)
    beq	$s6,$v0,.L0f0a1f30
    la	$t9,glFlush
    beq	$s7,$v0,.L0f0a1f30
    la	$t9,glFlush
    beq	$s8,$v0,.L0f0a1f2c
    li	$v1,1032
    bnel	$v1,$v0,.L0f0a1f3c
    # Line 322
    addiu	$s0,$s0,16
    b	.L0f0a1f30
    # Line 321
    la	$t9,glFlush
.L0f0a2044:
    # Line 324
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,3480
    ld	$gp,80($sp)
    # Line 326
    ld	$s0,72($sp)
    ld	$s1,152($sp)
    ld	$s2,168($sp)
    ld	$s3,136($sp)
    ld	$s4,144($sp)
    ld	$s5,160($sp)
    ld	$s6,112($sp)
    ld	$s7,104($sp)
    ld	$s8,120($sp)
    ld	$ra,128($sp)
    ldc1	$f20,96($sp)
    ldc1	$f22,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0f0a2090:
    # Line 306
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,63
    jalr	$t9
    lw	$a2,30804($a2)
    # Line 307
    ld	$ra,128($sp)
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end gl_i_rcrvn

# Function: gl_c_rcrvn
# Declared: Line 327 (Source lines: 327-348)
# Address: 0x0f0a20bc - 0x0f0a21b4 (Size: 248 bytes, Frame: 192)
.globl gl_c_rcrvn
.ent gl_c_rcrvn
gl_c_rcrvn:
    # Line 327
    slti	$at,$a0,4
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$a1,16($sp)
    sd	$a0,24($sp)
    sd	$gp,32($sp)
    lui	$v0,0xfff9
    addiu	$v0,$v0,4492
    bnez	$at,.L0f0a2110
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 336
    la	$t9,__iglooCalloc
    jalr	$t9
    li	$a0,20
    sd	$v0,0($sp)
    move	$v1,$v0
    sd	$v0,8($sp)
    bnez	$v0,.L0f0a2138
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 337
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a2110:
    # Line 332
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,63
    jalr	$t9
    lw	$a2,30804($a2)
    # Line 333
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a2138:
    ld	$a3,0($sp)
    # Line 339
    li	$a2,1
    la	$a1,sub_0f0a0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0a0000
    addiu	$a1,$a1,5232
    jalr	$t9
    addiu	$a0,$a0,5340
    # Line 342
    ld	$a2,24($sp)
    la	$t9,__iglooMalloc
    # Line 341
    ld	$a3,0($sp)
    # Line 342
    sll	$a0,$a2,0x4
    jalr	$t9
    # Line 341
    sh	$a2,8($a3)
    # Line 342
    move	$a1,$v0
    # Line 344
    ld	$a0,16($sp)
    # Line 342
    ld	$a3,8($sp)
    # Line 344
    ld	$a2,24($sp)
    la	$t9,bcopy
    # Line 342
    sw	$v0,12($a3)
    # Line 344
    sll	$a2,$a2,0x2
    jalr	$t9
    sll	$a2,$a2,0x2
    ld	$ra,8($sp)
    # Line 346
    li	$a4,-1
    # Line 345
    sh	$zero,0($ra)
    # Line 346
    sw	$a4,4($ra)
    # Line 348
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_c_rcrvn

.rdata
_lit_3f800000:
    .word 0x3f800000

