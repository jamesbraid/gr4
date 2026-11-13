# Source: ../igloo/clipplane.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/clipplane.c -o clipplane.T
# Total Functions: 4

.text

# Function: __gl_clipplane
# Declared: Line 20 (Source lines: 21-54)
# Address: 0x0f09c720 - 0x0f09c864 (Size: 324 bytes, Frame: 224)
.globl __gl_clipplane
.ent __gl_clipplane
__gl_clipplane:
    # Line 21
    addiu	$sp,$sp,-96
    sd	$gp,48($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,27432 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 22
    la	$v0,gl_wstatep
    # Line 26
    li	$at,2
    # Line 22
    lw	$v0,0($v0)
    sd	$a0,40($sp)
    # Line 26
    beq	$a1,$at,.L0f09c814
    sd	$v0,32($sp)
    li	$a0,1
    beql	$a1,$a0,.L0f09c7bc
    # Line 32
    li	$a1,1
    # Line 26
    beqz	$a1,.L0f09c76c
    # Line 41
    move	$a1,$zero
.L0f09c760:
    ld	$gp,48($sp)
    # Line 54
    jr	$ra
    addiu	$sp,$sp,96
.L0f09c76c:
    # Line 41
    la	$t9,__iglooSetEnable
    ld	$a0,40($sp)
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$a0,12288
    ld	$a2,32($sp)
    li	$a1,1
    # Line 42
    ld	$at,40($sp)
    lw	$a3,2904($a2)
    lw	$ra,272($a2)
    sllv	$at,$a1,$at
    nor	$at,$at,$zero
    and	$ra,$ra,$at
    sw	$ra,272($a2)
    bne	$a3,$a1,.L0f09c760
    ld	$ra,56($sp)
    # Line 45
    la	$v0,slowBegin
    # Line 46
    sw	$a1,2908($a2)
    b	.L0f09c760
    # Line 45
    sw	$v0,216($a2)
.L0f09c7bc:
    # Line 32
    la	$t9,__iglooSetEnable
    ld	$a0,40($sp)
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$a0,12288
    # Line 33
    ld	$v1,32($sp)
    ld	$ra,40($sp)
    li	$at,1
    lw	$v0,272($v1)
    sllv	$ra,$at,$ra
    lw	$a3,2904($v1)
    or	$v0,$v0,$ra
    ld	$ra,56($sp)
    bne	$a3,$at,.L0f09c760
    sw	$v0,272($v1)
    # Line 36
    la	$t9,__iglooRestoreUsrMat
    bal __iglooRestoreUsrMat
    nop
    ld	$at,32($sp)
    ld	$ra,56($sp)
    # Line 37
    b	.L0f09c760
    sw	$zero,2908($at)
.L0f09c814:
    # Line 28
    lwc1	$f3,0($a2)
    cvt.d.s	$f3,$f3
    sdc1	$f3,0($sp)
    lwc1	$f2,4($a2)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($sp)
    lwc1	$f1,8($a2)
    # Line 29
    addiu	$a1,$sp,0
    # Line 28
    cvt.d.s	$f1,$f1
    sd	$ra,56($sp)
    sdc1	$f1,16($sp)
    # Line 29
    ld	$a0,40($sp)
    # Line 28
    lwc1	$f0,12($a2)
    # Line 29
    la	$t9,glClipPlane
    addiu	$a0,$a0,12288
    # Line 28
    cvt.d.s	$f0,$f0
    # Line 29
    jalr	$t9
    # Line 28
    sdc1	$f0,24($sp)
    b	.L0f09c760
    ld	$ra,56($sp)
.end __gl_clipplane

# Function: gl_i_clipplane
# Declared: Line 98 (Source lines: 98-98)
# Address: 0x0f09c864 - 0x0f09c8c4 (Size: 96 bytes, Frame: 208)
.globl gl_i_clipplane
.ent gl_i_clipplane
gl_i_clipplane:
    # Line 98
    addiu	$sp,$sp,-80
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,27108 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09c8a8
    sd	$ra,32($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a2,24($sp)
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
.L0f09c8a8:
    la	$t9,__gl_clipplane
    bal __gl_clipplane
    nop
    ld	$ra,32($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_i_clipplane

# Function: gl_c_clipplane
# Declared: Line 98 (Source lines: 98-98)
# Address: 0x0f09c8c4 - 0x0f09c9a4 (Size: 224 bytes, Frame: 240)
.globl gl_c_clipplane
.ent gl_c_clipplane
gl_c_clipplane:
    addiu	$sp,$sp,-112
    sd	$gp,40($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,27012 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20980($gp)
    sd	$s3,32($sp)
    beqz	$at,.L0f09c970
    move	$s3,$a0
.L0f09c8e8:
    addiu	$a0,$sp,12
    sw	$a1,8($sp)
    sw	$s3,4($sp)
    ld	$s3,32($sp)
    la	$v1,gl_n_clipplane
    li	$a3,2
    beq	$a1,$a3,.L0f09c940
    sw	$v1,0($sp)
    mtc1	$zero,$f4
    swc1	$f4,12($a0)
    swc1	$f4,8($a0)
    swc1	$f4,4($a0)
    swc1	$f4,0($a0)
    sd	$ra,56($sp)
.L0f09c920:
    la	$t9,gl_compile
    addiu	$a1,$sp,0
    jalr	$t9
    li	$a0,14
    ld	$ra,56($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f09c940:
    move	$a1,$a2
    ld	$s3,32($sp)
    lwc1	$f3,0($a1)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a1)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a1)
    swc1	$f1,8($a0)
    lwc1	$f0,12($a1)
    swc1	$f0,12($a0)
    b	.L0f09c920
    sd	$ra,56($sp)
.L0f09c970:
    sd	$a1,64($sp)
    sd	$a2,48($sp)
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$a0,29296
    ld	$a2,48($sp)
    ld	$ra,56($sp)
    li	$a1,1
    sw	$a1,-20980($gp)
    b	.L0f09c8e8
    ld	$a1,64($sp)
.end gl_c_clipplane

# Function: gl_n_clipplane
# Declared: Line 98 (Source lines: 98-98)
# Address: 0x0f09c9a4 - 0x0f09ca08 (Size: 100 bytes, Frame: 48)
.globl gl_n_clipplane
.ent gl_n_clipplane
gl_n_clipplane:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,26788 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f09c9dc
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09c9dc:
    la	$t9,__gl_clipplane
    addiu	$a2,$s8,8
    lw	$a1,4($s8)
    bal __gl_clipplane
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_clipplane

