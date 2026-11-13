# Source: ../igloo/texture/tevbind.c
# Category: texture
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/texture/tevbind.c -o tevbind.T
# Total Functions: 7

.text

# Function: gl_init_texturing
# Declared: Line 31 (Source lines: 32-61)
# Address: 0x0f118c7c - 0x0f118d40 (Size: 196 bytes, Frame: 48)
.globl gl_init_texturing
.ent gl_init_texturing
gl_init_texturing:
    # Line 32
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lw	$v0,11708($a0)
    lui	$at,0xfff2
    addiu	$at,$at,-23092
    beqz	$v0,.L0f118d1c
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f118ca0:
    # Line 44
    sw	$zero,20($v0)
    # Line 45
    lw	$a1,11708($s0)
    sw	$zero,4($a1)
    # Line 46
    lw	$v1,11708($s0)
    sw	$zero,8($v1)
    # Line 47
    lw	$v0,11708($s0)
    sw	$zero,412($v0)
    # Line 48
    lw	$at,11708($s0)
    sw	$zero,416($at)
    # Line 51
    lw	$a2,11708($s0)
    sw	$zero,0($a2)
    # Line 53
    lw	$a1,11708($s0)
    sw	$zero,40($a1)
    # Line 54
    lw	$v1,11708($s0)
    sw	$zero,32($v1)
    # Line 55
    lw	$v0,11708($s0)
    sw	$zero,136($v0)
    # Line 56
    lw	$at,11708($s0)
    sw	$zero,128($at)
    # Line 57
    lw	$a2,11708($s0)
    sw	$zero,232($a2)
    # Line 58
    lw	$a1,11708($s0)
    sw	$zero,224($a1)
    # Line 59
    lw	$v1,11708($s0)
    sw	$zero,328($v1)
    ld	$gp,0($sp)
    # Line 60
    lw	$v0,11708($s0)
    # Line 61
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 60
    sw	$zero,320($v0)
.L0f118d1c:
    # Line 37
    li	$a0,420
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a1,$a1,21232
    sw	$v0,11708($s0)
    b	.L0f118ca0
    ld	$ra,16($sp)
.end gl_init_texturing

# Function: gl_tevbind
# Declared: Line 70 (Source lines: 71-94)
# Address: 0x0f118d40 - 0x0f118dd4 (Size: 148 bytes, Frame: 48)
.globl gl_tevbind
.ent gl_tevbind
gl_tevbind:
    # Line 71
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$t8,0xfff2
    addiu	$t8,$t8,-23288
    addu	$gp,$t9,$t8
    # Line 78
    la	$t9,gl_find
    # Line 73
    la	$s7,gl_wstatep
    # Line 78
    la	$a0,gl_tevtab
    jalr	$t9
    # Line 73
    lw	$s7,0($s7)
    # Line 78
    lw	$a2,11708($s7)
    bnez	$v0,.L0f118da4
    ld	$ra,0($sp)
    # Line 83
    sw	$zero,20($a2)
    lw	$at,11708($s7)
    lw	$at,0($at)
    beqz	$at,.L0f118db4
    ld	$s7,8($sp)
    # Line 86
    la	$t9,gl_notexturing
    bal gl_notexturing
    ld	$s7,8($sp)
    b	.L0f118db4
    ld	$ra,0($sp)
.L0f118da4:
    lw	$a3,4($v0)
    lw	$v1,20($a2)
    bne	$v1,$a3,.L0f118dc0
    ld	$s7,8($sp)
.L0f118db4:
    ld	$gp,16($sp)
    # Line 94
    jr	$ra
    addiu	$sp,$sp,48
.L0f118dc0:
    # Line 91
    la	$t9,gl_dotexturing
    bal gl_dotexturing
    # Line 90
    sw	$a3,20($a2)
    b	.L0f118db4
    ld	$ra,0($sp)
.end gl_tevbind

# Function: gl_i_tevbind
# Declared: Line 96 (Source lines: 96-96)
# Address: 0x0f118dd4 - 0x0f118e2c (Size: 88 bytes, Frame: 48)
.globl gl_i_tevbind
.ent gl_i_tevbind
gl_i_tevbind:
    # Line 96
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-23436 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f118e10
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
.L0f118e10:
    la	$t9,gl_tevbind
    bal gl_tevbind
    nop
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_tevbind

# Function: gl_c_tevbind
# Declared: Line 96 (Source lines: 96-96)
# Address: 0x0f118e2c - 0x0f118eb0 (Size: 132 bytes, Frame: 192)
.globl gl_c_tevbind
.ent gl_c_tevbind
gl_c_tevbind:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-23524 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19944($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f118e8c
    move	$s8,$a0
.L0f118e58:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_tevbind
    sw	$s8,4($sp)
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f118e8c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-21976
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f118e58
    sw	$a2,-19944($gp)
.end gl_c_tevbind

# Function: gl_n_tevbind
# Declared: Line 96 (Source lines: 96-96)
# Address: 0x0f118eb0 - 0x0f118f10 (Size: 96 bytes, Frame: 48)
.globl gl_n_tevbind
.ent gl_n_tevbind
gl_n_tevbind:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-23656 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f118ee8
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f118ee8:
    la	$t9,gl_tevbind
    lw	$a1,4($s8)
    bal gl_tevbind
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_tevbind

# Function: gl_dotexturing
# Declared: Line 98 (Source lines: 99-286)
# Address: 0x0f118f10 - 0x0f119154 (Size: 580 bytes, Frame: 192)
.globl gl_dotexturing
.ent gl_dotexturing
gl_dotexturing:
    # Line 99
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    sd	$gp,24($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-23752 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 100
    la	$s0,gl_wstatep
    lw	$s0,0($s0)
    lw	$a1,11708($s0)
    lw	$a1,4($a1)
    beqz	$a1,.L0f118f5c
    # Line 110
    la	$t9,gl_find
    sd	$s1,32($sp)
    sd	$ra,48($sp)
    jalr	$t9
    la	$a0,gl_texturetab
    move	$s1,$v0
    b	.L0f118f64
    ld	$ra,48($sp)
.L0f118f5c:
    sd	$s1,32($sp)
    # Line 115
    move	$s1,$zero
.L0f118f64:
    lw	$a0,11708($s0)
    lw	$a1,20($a0)
    beqz	$a1,.L0f118f90
    # Line 119
    la	$t9,gl_find
    sd	$ra,48($sp)
    jalr	$t9
    la	$a0,gl_tevtab
    sd	$v0,0($sp)
    lw	$a0,11708($s0)
    b	.L0f118f94
    ld	$ra,48($sp)
.L0f118f90:
    sd	$zero,0($sp)
.L0f118f94:
    # Line 124
    lw	$a1,412($a0)
    beqz	$a1,.L0f118fb4
    # Line 134
    move	$v0,$zero
    # Line 129
    la	$t9,gl_find
    sd	$ra,48($sp)
    jalr	$t9
    la	$a0,gl_tluttab
    ld	$ra,48($sp)
.L0f118fb4:
    # Line 134
    beqz	$s1,.L0f11906c
    ld	$v1,0($sp)
    beqz	$v1,.L0f11906c
    sd	$v0,16($sp)
    # Line 174
    la	$t9,__iglooGetGraphicsType
    sd	$ra,48($sp)
    jalr	$t9
    nop
    # Line 175
    li	$a3,3
    beq	$a3,$v0,.L0f119094
    ld	$a4,16($sp)
.L0f118fe0:
    beqz	$a4,.L0f119080
    lw	$a0,11708($s0)
    # Line 180
    la	$t9,__iglooTexColTabEnable
    jalr	$t9
    nop
    ld	$v0,0($sp)
.L0f118ff8:
    # Line 211
    lw	$v0,12($v0)
    li	$at,258
    beq	$v0,$at,.L0f119100
    li	$v1,257
    beq	$v0,$v1,.L0f1190e8
    li	$a3,259
    beq	$v0,$a3,.L0f1190f0
    li	$a4,768
    beq	$v0,$a4,.L0f1190f8
    # Line 236
    li	$v0,3042
.L0f119020:
    # Line 240
    la	$t9,glTexEnvi
    move	$a2,$v0
    li	$a1,8704
    jalr	$t9
    li	$a0,8960
    # Line 272
    li	$a0,12
    la	$t9,__iglooIsExtensionSupported
    # Line 271
    lw	$a6,11708($s0)
    li	$a5,1
    # Line 272
    jalr	$t9
    # Line 271
    sw	$a5,0($a6)
    # Line 272
    li	$a1,2
    lw	$a0,28($s1)
    ld	$s0,8($sp)
    li	$at,1
    beq	$at,$v0,.L0f1190a8
    ld	$ra,48($sp)
    # Line 275
    beq	$a0,$a1,.L0f119128
    ld	$s1,32($sp)
.L0f11906c:
    ld	$gp,24($sp)
    # Line 286
    ld	$s0,8($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f119080:
    # Line 184
    la	$t9,__iglooTexColTabDisable
    jalr	$t9
    nop
    b	.L0f118ff8
    ld	$v0,0($sp)
.L0f119094:
    # Line 175
    li	$v1,4
    beq	$v0,$v1,.L0f118ff8
    ld	$v0,0($sp)
    b	.L0f118fe0
    ld	$a4,16($sp)
.L0f1190a8:
    li	$a3,3
    # Line 272
    beq	$a0,$a3,.L0f119140
    # Line 274
    li	$a0,3553
.L0f1190b4:
    la	$t9,__iglooSetEnable
    jalr	$t9
    li	$a1,1
    lw	$a4,28($s1)
    li	$at,2
    beq	$a4,$at,.L0f119148
    # Line 275
    li	$a0,3553
    ld	$s1,32($sp)
.L0f1190d4:
    la	$t9,__iglooSetEnable
    jalr	$t9
    move	$a1,$zero
    b	.L0f11906c
    ld	$ra,48($sp)
.L0f1190e8:
    # Line 221
    b	.L0f119020
    # Line 219
    li	$v0,8448
.L0f1190f0:
    # Line 225
    b	.L0f119020
    # Line 223
    li	$v0,8449
.L0f1190f8:
    # Line 229
    b	.L0f119020
    # Line 227
    li	$v0,0x8062
.L0f119100:
    # Line 216
    li	$a1,8705
    li	$a0,8960
    # Line 214
    li	$v0,3042
    # Line 216
    la	$t9,glTexEnvfv
    ld	$a2,0($sp)
    sd	$v0,40($sp)
    jalr	$t9
    addiu	$a2,$a2,16
    b	.L0f119020
    ld	$v0,40($sp)
.L0f119128:
    # Line 282
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,3553
    b	.L0f11906c
    ld	$ra,48($sp)
.L0f119140:
    # Line 274
    b	.L0f1190b4
    li	$a0,0x806f
.L0f119148:
    # Line 275
    li	$a0,0x806f
    b	.L0f1190d4
    ld	$s1,32($sp)
.end gl_dotexturing

# Function: gl_notexturing
# Declared: Line 288 (Source lines: 289-299)
# Address: 0x0f119154 - 0x0f1191c8 (Size: 116 bytes, Frame: 16)
.globl gl_notexturing
.ent gl_notexturing
gl_notexturing:
    # Line 289
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-24332 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 292
    la	$at,gl_wstatep
    # Line 293
    move	$a1,$zero
    # Line 292
    lw	$at,0($at)
    # Line 293
    li	$a0,3553
    la	$t9,__iglooSetEnable
    # Line 292
    lw	$at,11708($at)
    sd	$ra,0($sp)
    # Line 293
    jalr	$t9
    # Line 292
    sw	$zero,0($at)
    # Line 295
    la	$t9,__iglooIsExtensionSupported
    jalr	$t9
    li	$a0,12
    li	$v1,1
    beq	$v0,$v1,.L0f1191b0
    ld	$ra,0($sp)
.L0f1191a4:
    ld	$gp,8($sp)
    # Line 299
    jr	$ra
    addiu	$sp,$sp,16
.L0f1191b0:
    # Line 297
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x806f
    b	.L0f1191a4
    ld	$ra,0($sp)
.end gl_notexturing

