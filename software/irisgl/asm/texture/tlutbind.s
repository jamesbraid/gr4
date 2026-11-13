# Source: ../igloo/texture/tlutbind.c
# Category: texture
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/texture/tlutbind.c -o tlutbind.T
# Total Functions: 7

.text

# Function: __iglooIgl2OglCTFmtandIFmt
# Declared: Line 28 (Source lines: 31-50)
# Address: 0x0f123fb4 - 0x0f124008 (Size: 84 bytes, Frame: 0)
.globl __iglooIgl2OglCTFmtandIFmt
.ent __iglooIgl2OglCTFmtandIFmt
__iglooIgl2OglCTFmtandIFmt:
    # Line 31
    lw	$a4,1036($a0)
    li	$v1,4
    li	$at,2
    beq	$a4,$at,.L0f123fec
    li	$v0,3
    beq	$a4,$v0,.L0f123ffc
    # Line 38
    li	$v0,6407
    # Line 31
    beq	$a4,$v1,.L0f123fe0
    # Line 42
    li	$a0,6408
    # Line 50
    jr	$ra
    nop
.L0f123fe0:
    # Line 42
    sw	$a0,0($a1)
    # Line 50
    jr	$ra
    # Line 43
    sw	$a0,0($a2)
.L0f123fec:
    # Line 34
    li	$at,6410
    sw	$at,0($a1)
    # Line 50
    jr	$ra
    # Line 35
    sw	$at,0($a2)
.L0f123ffc:
    # Line 38
    sw	$v0,0($a1)
    # Line 50
    jr	$ra
    # Line 39
    sw	$v0,0($a2)
.end __iglooIgl2OglCTFmtandIFmt

# Function: gl_tlutbind
# Declared: Line 52 (Source lines: 53-113)
# Address: 0x0f124008 - 0x0f124164 (Size: 348 bytes, Frame: 224)
.globl gl_tlutbind
.ent gl_tlutbind
gl_tlutbind:
    # Line 53
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-3520 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 54
    la	$at,gl_wstatep
    sd	$a0,16($sp)
    # Line 59
    la	$t9,__iglooGetGraphicsType
    # Line 54
    lw	$at,0($at)
    sd	$ra,48($sp)
    # Line 59
    jalr	$t9
    sd	$at,8($sp)
    # Line 61
    li	$v1,3
    beq	$v0,$v1,.L0f1240c0
    # Line 59
    move	$s0,$v0
    # Line 61
    li	$a3,4
    beq	$s0,$a3,.L0f1240c0
    # Line 67
    la	$t9,gl_find
    ld	$a1,32($sp)
    jalr	$t9
    la	$a0,gl_tluttab
    ld	$a0,8($sp)
    lw	$a0,11708($a0)
    beqz	$a0,.L0f124130
    move	$s0,$v0
.L0f124078:
    # Line 72
    ld	$a3,16($sp)
    bnez	$a3,.L0f1240ac
    move	$v0,$a0
    beqzl	$s0,.L0f124148
    # Line 78
    move	$a0,$v0
    # Line 81
    lw	$a4,416($v0)
    bne	$a4,$s0,.L0f1240d4
    ld	$at,24($sp)
    li	$v1,1
    beq	$at,$v1,.L0f1240d4
    # Line 102
    la	$t9,__iglooTexColTabEnable
    bal __iglooTexColTabEnable
    ld	$s0,56($sp)
.L0f1240ac:
    # Line 113
    ld	$ra,48($sp)
.L0f1240b0:
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1240c0:
    # Line 64
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1240d4:
    # Line 92
    addiu	$a2,$sp,4
    addiu	$a1,$sp,0
    move	$a0,$s0
    la	$t9,__iglooIgl2OglCTFmtandIFmt
    # Line 83
    lw	$a3,4($s0)
    # Line 84
    sw	$s0,416($v0)
    # Line 92
    bal __iglooIgl2OglCTFmtandIFmt
    # Line 83
    sw	$a3,412($v0)
    # Line 93
    addiu	$a5,$s0,12
    li	$a4,5121
    lw	$a3,0($sp)
    la	$t9,glColorTableSGI
    li	$a2,256
    lw	$a1,4($sp)
    jalr	$t9
    li	$a0,0x80bc
    # Line 98
    la	$t9,__iglooTexColTabEnable
    ld	$a0,8($sp)
    ld	$s0,56($sp)
    bal __iglooTexColTabEnable
    lw	$a0,11708($a0)
    b	.L0f1240b0
    # Line 113
    ld	$ra,48($sp)
.L0f124130:
    # Line 70
    la	$t9,gl_init_texturing
    jalr	$t9
    ld	$a0,8($sp)
    ld	$a0,8($sp)
    b	.L0f124078
    lw	$a0,11708($a0)
.L0f124148:
    # Line 78
    la	$t9,__iglooTexColTabDisable
    # Line 77
    sw	$zero,416($v0)
    # Line 76
    sw	$zero,412($v0)
    # Line 78
    bal __iglooTexColTabDisable
    ld	$s0,56($sp)
    b	.L0f1240b0
    # Line 113
    ld	$ra,48($sp)
.end gl_tlutbind

# Function: gl_i_tlutbind
# Declared: Line 116 (Source lines: 116-116)
# Address: 0x0f124164 - 0x0f124198 (Size: 52 bytes, Frame: 32)
.globl gl_i_tlutbind
.ent gl_i_tlutbind
gl_i_tlutbind:
    # Line 116
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-3868 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,gl_tlutbind
    sd	$ra,0($sp)
    bal gl_tlutbind
    move	$a2,$zero
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_tlutbind

# Function: gl_c_tlutbind
# Declared: Line 116 (Source lines: 116-116)
# Address: 0x0f124198 - 0x0f12421c (Size: 132 bytes, Frame: 192)
.globl gl_c_tlutbind
.ent gl_c_tlutbind
gl_c_tlutbind:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-3920 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19848($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1241f8
    move	$s8,$a0
.L0f1241c4:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_tlutbind
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1241f8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-21496
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f1241c4
    sw	$a2,-19848($gp)
.end gl_c_tlutbind

# Function: gl_n_tlutbind
# Declared: Line 116 (Source lines: 116-116)
# Address: 0x0f12421c - 0x0f124268 (Size: 76 bytes, Frame: 48)
.globl gl_n_tlutbind
.ent gl_n_tlutbind
gl_n_tlutbind:
    move	$a2,$zero
    lw	$a1,4($a0)
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-4052 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,gl_tlutbind
    move	$s8,$a0
    sd	$ra,0($sp)
    bal gl_tlutbind
    lw	$a0,0($a0)
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_tlutbind

# Function: __iglooTexColTabEnable
# Declared: Line 125 (Source lines: 126-169)
# Address: 0x0f124268 - 0x0f1243a8 (Size: 320 bytes, Frame: 48)
.globl __iglooTexColTabEnable
.ent __iglooTexColTabEnable
__iglooTexColTabEnable:
    # Line 130
    lw	$a1,412($a0)
    # Line 126
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$s7,8($sp)
    sd	$gp,0($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-4128 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 130
    la	$t9,gl_find
    # Line 126
    move	$s7,$a0
    sd	$ra,16($sp)
    # Line 130
    jalr	$t9
    la	$a0,gl_tluttab
    # Line 131
    la	$t9,gl_find
    # Line 130
    move	$s0,$v0
    # Line 131
    lw	$a1,4($s7)
    jalr	$t9
    la	$a0,gl_texturetab
    beqz	$s0,.L0f1242f0
    move	$a0,$v0
    beqzl	$v0,.L0f1242f4
    ld	$gp,0($sp)
    # Line 135
    lw	$v0,1036($s0)
    li	$a3,2
    beq	$v0,$a3,.L0f124308
    ld	$s0,24($sp)
    li	$a3,3
    beq	$v0,$a3,.L0f12434c
    li	$v1,4
    beq	$v0,$v1,.L0f124334
    # Line 164
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x80bc
.L0f1242f0:
    ld	$gp,0($sp)
.L0f1242f4:
    # Line 169
    ld	$ra,16($sp)
    ld	$s0,24($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f124308:
    # Line 138
    lw	$v0,32($a0)
    li	$a1,1
    beq	$v0,$a1,.L0f124378
    ld	$s0,24($sp)
    beq	$v0,$a3,.L0f124378
    # Line 144
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x80bc
    b	.L0f1242f4
    ld	$gp,0($sp)
.L0f124334:
    # Line 160
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,0x80bc
    b	.L0f1242f4
    ld	$gp,0($sp)
.L0f12434c:
    # Line 149
    lw	$v0,32($a0)
    li	$a2,1
    beq	$v0,$a2,.L0f124394
    # Line 151
    la	$t9,__iglooSetEnable
    # Line 149
    beq	$v0,$a3,.L0f124390
    # Line 155
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x80bc
    b	.L0f1242f4
    ld	$gp,0($sp)
.L0f124378:
    # Line 140
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,0x80bc
    b	.L0f1242f4
    ld	$gp,0($sp)
.L0f124390:
    # Line 151
    la	$t9,__iglooSetEnable
.L0f124394:
    li	$a1,1
    jalr	$t9
    li	$a0,0x80bc
    b	.L0f1242f4
    ld	$gp,0($sp)
.end __iglooTexColTabEnable

# Function: __iglooTexColTabDisable
# Declared: Line 171 (Source lines: 172-176)
# Address: 0x0f1243a8 - 0x0f1243e0 (Size: 56 bytes, Frame: 32)
.globl __iglooTexColTabDisable
.ent __iglooTexColTabDisable
__iglooTexColTabDisable:
    # Line 172
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-4448 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 173
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,0x80bc
    # Line 176
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooTexColTabDisable

