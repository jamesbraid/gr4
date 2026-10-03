# Source: ../igloo/_attrib.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/_attrib.c -o _attrib.T
# Total Functions: 8

.text

# Function: gl_g_pushattributes
# Declared: Line 29 (Source lines: 29-35)
# Address: 0x0f092ab4 - 0x0f092b18 (Size: 100 bytes, Frame: 32)
.globl gl_g_pushattributes
.ent gl_g_pushattributes
gl_g_pushattributes:
    # Line 29
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,1940 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21176($gp)
    beqz	$at,.L0f092afc
    sd	$ra,16($sp)
.L0f092ad4:
    # Line 33
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    # Line 32
    la	$v1,gl_n_pushattributes
    # Line 33
    li	$a0,2
    jalr	$t9
    # Line 32
    sw	$v1,0($sp)
    # Line 35
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f092afc:
    # Line 29
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28328
    li	$at,1
    b	.L0f092ad4
    sw	$at,-21176($gp)
.end gl_g_pushattributes

# Function: gl_n_pushattributes
# Declared: Line 37 (Source lines: 37-40)
# Address: 0x0f092b18 - 0x0f092b70 (Size: 88 bytes, Frame: 48)
.globl gl_n_pushattributes
.ent gl_n_pushattributes
gl_n_pushattributes:
    # Line 37
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,1840 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f092b4c
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f092b4c:
    # Line 39
    la	$t9,sub_0f090000
    addiu	$t9,$t9,11308
    bal gl_n_popattributes
    nop
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    # Line 40
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pushattributes

# Function: gl_g_popattributes
# Declared: Line 44 (Source lines: 44-50)
# Address: 0x0f092b70 - 0x0f092bd4 (Size: 100 bytes, Frame: 32)
.globl gl_g_popattributes
.ent gl_g_popattributes
gl_g_popattributes:
    # Line 44
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,1752 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21172($gp)
    beqz	$at,.L0f092bb8
    sd	$ra,16($sp)
.L0f092b90:
    # Line 48
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    # Line 47
    la	$v1,gl_n_popattributes
    # Line 48
    li	$a0,2
    jalr	$t9
    # Line 47
    sw	$v1,0($sp)
    # Line 50
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f092bb8:
    # Line 44
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28344
    li	$at,1
    b	.L0f092b90
    sw	$at,-21172($gp)
.end gl_g_popattributes

# Function: gl_n_popattributes
# Declared: Line 52 (Source lines: 52-55)
# Address: 0x0f092bd4 - 0x0f092c2c (Size: 88 bytes, Frame: 48)
.globl gl_n_popattributes
.ent gl_n_popattributes
gl_n_popattributes:
    # Line 52
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,1652 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f092c08
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f092c08:
    # Line 54
    la	$t9,sub_0f090000
    addiu	$t9,$t9,11488
    bal gl_n_popattributes
    nop
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    # Line 55
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_popattributes

# Function: _pushattributes
# Declared: Line 60 (Source lines: 61-74)
# Address: 0x0f092c2c - 0x0f092cd4 (Size: 168 bytes, Frame: 32)
.ent _pushattributes
_pushattributes:
    # Line 62
    la	$a0,gl_wstatep
    # Line 61
    addiu	$sp,$sp,-32
    # Line 62
    lw	$a0,0($a0)
    sd	$ra,16($sp)
    sd	$s3,8($sp)
    # Line 65
    lw	$s3,276($a0)
    # Line 62
    move	$v0,$a0
    # Line 65
    addiu	$at,$a0,2560
    beq	$at,$s3,.L0f092cb0
    sd	$a0,0($sp)
    # Line 69
    la	$t9,gl_dm_save
    jalr	$t9
    nop
    # Line 70
    move	$a4,$s3
    li	$a0,57
    move	$a2,$zero
    addiu	$a3,$s3,228
.L0f092c70:
    addu	$at,$a2,$a3
    addu	$a1,$a2,$a4
    addiu	$a2,$a2,4
    lw	$a1,0($a1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0f092c70
    sw	$a1,0($at)
    # Line 72
    la	$t9,gl_set_drawfb
    # Line 71
    ld	$a2,0($sp)
    addiu	$a0,$s3,228
    # Line 72
    jalr	$t9
    # Line 71
    sw	$a0,276($a2)
    ld	$s3,8($sp)
    ld	$ra,16($sp)
.L0f092ca8:
    # Line 74
    jr	$ra
    addiu	$sp,$sp,32
.L0f092cb0:
    # Line 67
    li	$a1,2
    li	$a0,47
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    ld	$s3,8($sp)
    jalr	$t9
    lw	$a2,28340($a2)
    b	.L0f092ca8
    ld	$ra,16($sp)
.end _pushattributes

# Function: _copy_unpushed_fbdata
# Declared: Line 77 (Source lines: 88-89)
# Address: 0x0f092cd4 - 0x0f092ce0 (Size: 12 bytes, Frame: 0)
.ent _copy_unpushed_fbdata
_copy_unpushed_fbdata:
    # Line 88
    lw	$at,48($a1)
    # Line 89
    jr	$ra
    # Line 88
    sw	$at,48($a0)
.end _copy_unpushed_fbdata

# Function: _popattributes
# Declared: Line 92 (Source lines: 93-106)
# Address: 0x0f092ce0 - 0x0f092d80 (Size: 160 bytes, Frame: 32)
.ent _popattributes
_popattributes:
    # Line 93
    addiu	$sp,$sp,-32
    sd	$s3,8($sp)
    # Line 94
    la	$s3,gl_wstatep
    lw	$s3,0($s3)
    sd	$s0,0($sp)
    # Line 97
    lw	$s0,276($s3)
    addiu	$at,$s3,280
    beq	$at,$s0,.L0f092d60
    # Line 99
    li	$a1,2
    sd	$ra,16($sp)
    # Line 100
    addiu	$s0,$s0,-228
    la	$t9,sub_0f090000
.L0f092d10:
    # Line 103
    addiu	$a1,$s0,296
    addiu	$a0,$s0,68
    # Line 100
    addiu	$t9,$t9,11476
    # Line 103
    bal gl_n_popattributes
    # Line 101
    sw	$s0,276($s3)
    la	$t9,sub_0f090000
    # Line 104
    addiu	$a1,$s0,376
    addiu	$a0,$s0,148
    addiu	$t9,$t9,11476
    bal gl_n_popattributes
    ld	$s3,8($sp)
    # Line 105
    la	$t9,sub_0f090000
    move	$a0,$s0
    addiu	$t9,$t9,11648
    bal gl_n_popattributes
    addiu	$a1,$s0,228
    ld	$ra,16($sp)
    # Line 106
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f092d60:
    # Line 99
    li	$a0,48
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a2,28356($a2)
    b	.L0f092d10
    # Line 100
    la	$t9,sub_0f090000
.end _popattributes

# Function: _loadattribs
# Declared: Line 109 (Source lines: 110-150)
# Address: 0x0f092d80 - 0x0f093014 (Size: 660 bytes, Frame: 208)
.ent _loadattribs
_loadattribs:
    # Line 110
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$s4,40($sp)
    # Line 115
    lw	$s4,60($a1)
    sd	$s2,16($sp)
    # Line 110
    la	$v0,gl_wstatep
    # Line 117
    lw	$a3,56($a0)
    lw	$at,56($a1)
    # Line 111
    lw	$v0,0($v0)
    # Line 114
    lw	$s2,60($a0)
    # Line 117
    bne	$at,$a3,.L0f092dcc
    sd	$v0,8($sp)
    lw	$a2,4($s4)
    lw	$v1,4($s2)
    beql	$v1,$a2,.L0f092de4
    # Line 119
    lw	$v0,72($s1)
.L0f092dcc:
    la	$t9,gl_set_drawmode
    sd	$ra,48($sp)
    jalr	$t9
    move	$a0,$a3
    ld	$ra,48($sp)
    lw	$v0,72($s1)
.L0f092de4:
    lw	$at,72($s0)
    bne	$at,$v0,.L0f092f0c
    # Line 128
    la	$t9,gl_set_displaymode
.L0f092df0:
    lhu	$a0,52($s2)
    lhu	$a1,52($s4)
    andi	$a3,$a0,0x1
    andi	$v1,$a1,0x1
    bne	$v1,$a3,.L0f092f20
    # Line 131
    la	$t9,gl_backbuffer
.L0f092e08:
    andi	$a3,$a0,0x2
    andi	$a2,$a1,0x2
    bne	$a2,$a3,.L0f092f3c
    # Line 133
    la	$t9,gl_frontbuffer
.L0f092e18:
    andi	$a3,$a0,0x4
    andi	$at,$a1,0x4
    bne	$at,$a3,.L0f092f58
    # Line 135
    la	$t9,gl_zdraw
.L0f092e28:
    lw	$a1,4($s0)
    lw	$v0,4($s1)
    bne	$v0,$a1,.L0f092f6c
    # Line 137
    la	$t9,gl_setlinestyle
.L0f092e38:
    lwc1	$f4,16($s0)
    lwc1	$f0,16($s1)
    c.eq.s	$f0,$f4
    la	$v1,gl_wstatep
    # Line 139
    mtc1	$zero,$f1
    # Line 137
    bc1t	.L0f092ea4
    # Line 139
    lw	$v1,0($v1)
    lw	$v1,276($v1)
    swc1	$f4,16($v1)
    lwc1	$f4,16($s0)
    c.eq.s	$f4,$f1
    nop
    bc1f	.L0f092e7c
    mov.s	$f12,$f4
    sd	$ra,48($sp)
    b	.L0f092e80
    lwc1	$f12,_lit_3f800000
.L0f092e7c:
    sd	$ra,48($sp)
.L0f092e80:
    la	$t9,__iglooLineWidth
    jalr	$t9
    nop
    la	$t9,__iglooGetRenderMode
    jalr	$t9
    nop
    li	$a2,7169
    beq	$v0,$a2,.L0f092fd8
    ld	$ra,48($sp)
.L0f092ea4:
    lw	$a0,8($s0)
    lw	$at,8($s1)
    bne	$at,$a0,.L0f092f84
    # Line 141
    la	$t9,gl_lsrepeat
.L0f092eb4:
    lw	$a1,12($s0)
    lw	$v0,12($s1)
    bne	$v0,$a1,.L0f092f98
    # Line 143
    la	$t9,gl_setpattern
.L0f092ec4:
    lw	$a0,0($s0)
    lw	$v1,0($s1)
    bne	$v1,$a0,.L0f092fb0
    # Line 145
    la	$t9,gl_findfont
.L0f092ed4:
    lw	$a0,20($s0)
    lw	$a2,20($s1)
    bne	$a2,$a0,.L0f092fc4
    sd	$ra,48($sp)
    # Line 149
    la	$t9,gl_dm_load
.L0f092ee8:
    jalr	$t9
    ld	$a0,8($sp)
    # Line 150
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,48($sp)
    ld	$s2,16($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f092f0c:
    sd	$ra,48($sp)
    # Line 128
    jalr	$t9
    nop
    b	.L0f092df0
    ld	$ra,48($sp)
.L0f092f20:
    sd	$ra,48($sp)
    # Line 131
    bal gl_backbuffer
    sltu	$a0,$zero,$a3
    lhu	$a1,52($s4)
    lhu	$a0,52($s2)
    b	.L0f092e08
    ld	$ra,48($sp)
.L0f092f3c:
    sd	$ra,48($sp)
    # Line 133
    bal gl_frontbuffer
    sltu	$a0,$zero,$a3
    lhu	$a1,52($s4)
    lhu	$a0,52($s2)
    b	.L0f092e18
    ld	$ra,48($sp)
.L0f092f58:
    sd	$ra,48($sp)
    # Line 135
    bal gl_zdraw
    sltu	$a0,$zero,$a3
    b	.L0f092e28
    ld	$ra,48($sp)
.L0f092f6c:
    sd	$ra,48($sp)
    # Line 137
    dsll32	$a0,$a1,0x10
    jalr	$t9
    dsra32	$a0,$a0,0x10
    b	.L0f092e38
    ld	$ra,48($sp)
.L0f092f84:
    sd	$ra,48($sp)
    # Line 141
    jalr	$t9
    nop
    b	.L0f092eb4
    ld	$ra,48($sp)
.L0f092f98:
    sd	$ra,48($sp)
    # Line 143
    dsll32	$a0,$a1,0x10
    jalr	$t9
    dsra32	$a0,$a0,0x10
    b	.L0f092ec4
    ld	$ra,48($sp)
.L0f092fb0:
    sd	$ra,48($sp)
    # Line 145
    bal gl_findfont
    nop
    b	.L0f092ed4
    ld	$ra,48($sp)
.L0f092fc4:
    # Line 147
    la	$t9,gl_shademodel
    bal gl_shademodel
    nop
    b	.L0f092ee8
    # Line 149
    la	$t9,gl_dm_load
.L0f092fd8:
    # Line 139
    lwc1	$f2,16($s0)
    lwc1	$f3,_lit_43000000
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    la	$t9,glPassThrough
    li	$a3,63
    sb	$a3,0($sp)
    mfc1	$a1,$f2
    li	$a2,5
    sb	$a2,1($sp)
    sh	$a1,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f092ea4
    ld	$ra,48($sp)
.end _loadattribs

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_43000000:
    .word 0x43000000

