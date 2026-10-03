# Source: ../igloo/xform/viewport.c
# Category: xform
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/xform/viewport.c -o viewport.T
# Total Functions: 24

.text

# Function: gl_g_getscrmask
# Declared: Line 9 (Source lines: 13-20)
# Address: 0x0f1256fc - 0x0f125734 (Size: 56 bytes, Frame: 0)
.globl gl_g_getscrmask
.ent gl_g_getscrmask
gl_g_getscrmask:
    # Line 13
    lui	$v1,0xfff1
    addiu	$v1,$v1,-9396
    addu	$at,$t9,$v1
    # Line 14
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    # Line 16
    lh	$a4,11880($v0)
    sh	$a4,0($a0)
    # Line 17
    lh	$a0,11882($v0)
    sh	$a0,0($a1)
    # Line 18
    lh	$v1,11884($v0)
    sh	$v1,0($a2)
    # Line 19
    lh	$v0,11886($v0)
    # Line 20
    jr	$ra
    # Line 19
    sh	$v0,0($a3)
.end gl_g_getscrmask

# Function: iglooScrMask
# Declared: Line 29 (Source lines: 31-66)
# Address: 0x0f125734 - 0x0f125874 (Size: 320 bytes, Frame: 224)
.ent iglooScrMask
iglooScrMask:
    # Line 31
    addiu	$sp,$sp,-96
    sd	$s4,16($sp)
    move	$s4,$a3
    # Line 41
    addiu	$a3,$sp,6
    sd	$s2,40($sp)
    # Line 31
    move	$s2,$a2
    # Line 41
    addiu	$a2,$sp,4
    sd	$s1,32($sp)
    # Line 31
    move	$s1,$a1
    # Line 41
    addiu	$a1,$sp,2
    # Line 32
    la	$at,gl_wstatep
    sd	$s0,24($sp)
    # Line 31
    move	$s0,$a0
    # Line 32
    lw	$at,0($at)
    # Line 41
    addiu	$a0,$sp,0
    la	$t9,__GLgetviewport
    # Line 39
    sh	$s4,11886($at)
    # Line 38
    sh	$s2,11884($at)
    # Line 37
    sh	$s1,11882($at)
    # Line 36
    sh	$s0,11880($at)
    # Line 34
    lw	$at,224($at)
    sd	$ra,48($sp)
    # Line 41
    jalr	$t9
    sd	$at,8($sp)
    lh	$a0,0($sp)
    slt	$v0,$s0,$a0
    beqzl	$v0,.L0f1257ac
    # Line 48
    lh	$a0,2($sp)
    move	$s0,$a0
    lh	$a0,2($sp)
.L0f1257ac:
    slt	$v1,$a0,$s1
    beqzl	$v1,.L0f1257c0
    # Line 50
    lh	$a0,4($sp)
    move	$s1,$a0
    lh	$a0,4($sp)
.L0f1257c0:
    slt	$a4,$s2,$a0
    beqz	$a4,.L0f1257d0
    # Line 56
    slt	$v0,$s1,$s0
    # Line 52
    move	$s2,$a0
.L0f1257d0:
    lh	$a0,6($sp)
    slt	$at,$a0,$s4
    beqz	$at,.L0f1257e4
    nop
    # Line 54
    move	$s4,$a0
.L0f1257e4:
    # Line 56
    bnez	$v0,.L0f1257f0
    slt	$v1,$s4,$s2
    beqz	$v1,.L0f125834
.L0f1257f0:
    # Line 58
    move	$a0,$zero
    move	$a1,$zero
    move	$a2,$zero
    move	$a3,$zero
    ld	$s2,40($sp)
    la	$t9,__iglooScissor
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    jalr	$t9
    ld	$s4,16($sp)
.L0f125818:
    # Line 65
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,3089
    ld	$ra,48($sp)
    # Line 66
    jr	$ra
    addiu	$sp,$sp,96
.L0f125834:
    # Line 62
    subu	$a2,$s1,$s0
    subu	$a3,$s4,$s2
    ld	$a0,8($sp)
    addiu	$a3,$a3,1
    addiu	$a2,$a2,1
    lw	$a1,176($a0)
    la	$t9,__iglooScissor
    lw	$a0,172($a0)
    addu	$a1,$a1,$s2
    jalr	$t9
    addu	$a0,$a0,$s0
    ld	$s2,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    b	.L0f125818
    ld	$s4,16($sp)
.end iglooScrMask

# Function: gl_g_scrmask
# Declared: Line 76 (Source lines: 76-83)
# Address: 0x0f125874 - 0x0f125910 (Size: 156 bytes, Frame: 224)
.globl gl_g_scrmask
.ent gl_g_scrmask
gl_g_scrmask:
    # Line 76
    move	$a5,$a1
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-9772 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19808($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1258dc
    move	$s8,$a0
.L0f1258a0:
    # Line 81
    addiu	$a1,$sp,0
    li	$a0,6
    # Line 80
    sh	$a3,10($sp)
    sh	$a2,8($sp)
    sh	$a5,6($sp)
    # Line 81
    la	$t9,gl_compile
    # Line 79
    la	$v1,gl_n_scrmask
    # Line 80
    sh	$s8,4($sp)
    # Line 81
    jalr	$t9
    # Line 79
    sw	$v1,0($sp)
    # Line 83
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f1258dc:
    sd	$a5,56($sp)
    sd	$a2,48($sp)
    # Line 76
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-21288
    ld	$a3,40($sp)
    ld	$a5,56($sp)
    li	$a2,1
    sw	$a2,-19808($gp)
    b	.L0f1258a0
    ld	$a2,48($sp)
.end gl_g_scrmask

# Function: gl_n_scrmask
# Declared: Line 86 (Source lines: 86-90)
# Address: 0x0f125910 - 0x0f12597c (Size: 108 bytes, Frame: 48)
.globl gl_n_scrmask
.ent gl_n_scrmask
gl_n_scrmask:
    # Line 86
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-9928 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f125948
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f125948:
    # Line 88
    lh	$a3,6($s8)
    la	$t9,sub_0f120000
    lh	$a2,4($s8)
    lh	$a1,2($s8)
    addiu	$t9,$t9,22324
    bal gl_g_getscrmask
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    # Line 90
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_scrmask

# Function: gl_do_viewport
# Declared: Line 103 (Source lines: 108-130)
# Address: 0x0f12597c - 0x0f1259fc (Size: 128 bytes, Frame: 192)
.globl gl_do_viewport
.ent gl_do_viewport
gl_do_viewport:
    # Line 123
    subu	$a3,$a3,$a2
    addiu	$a3,$a3,1
    # Line 108
    addiu	$sp,$sp,-64
    sd	$s7,8($sp)
    sd	$gp,16($sp)
    lui	$a5,0xfff1
    addiu	$a5,$a5,-10036
    addu	$gp,$t9,$a5
    # Line 111
    la	$s7,gl_wstatep
    sd	$ra,0($sp)
    # Line 108
    move	$a4,$a1
    # Line 111
    lw	$s7,0($s7)
    # Line 108
    move	$a1,$a2
    # Line 123
    subu	$a2,$a4,$a0
    # Line 112
    lw	$a4,224($s7)
    # Line 123
    la	$t9,__iglooExtViewport
    addiu	$a2,$a2,1
    lw	$a5,176($a4)
    bal __iglooExtViewport
    lw	$a4,172($a4)
    lw	$at,2904($s7)
    li	$a1,1
    beq	$at,$a1,.L0f1259ec
    ld	$ra,0($sp)
.L0f1259dc:
    ld	$gp,16($sp)
    # Line 130
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1259ec:
    # Line 128
    la	$v0,slowBegin
    # Line 127
    sw	$a1,2908($s7)
    b	.L0f1259dc
    # Line 128
    sw	$v0,216($s7)
.end gl_do_viewport

# Function: gl_g_viewport
# Declared: Line 132 (Source lines: 132-145)
# Address: 0x0f1259fc - 0x0f125aa8 (Size: 172 bytes, Frame: 240)
.globl gl_g_viewport
.ent gl_g_viewport
gl_g_viewport:
    # Line 132
    move	$a5,$a1
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-10164 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19804($gp)
    sd	$ra,40($sp)
    sd	$s8,24($sp)
    beqz	$at,.L0f125a74
    move	$s8,$a0
.L0f125a28:
    # Line 143
    addiu	$a1,$sp,0
    li	$a0,10
    # Line 141
    sh	$a3,18($sp)
    sh	$a5,16($sp)
    sh	$a2,14($sp)
    sh	$s8,12($sp)
    # Line 139
    sh	$a3,10($sp)
    # Line 138
    sh	$a2,8($sp)
    # Line 137
    sh	$a5,6($sp)
    # Line 143
    la	$t9,gl_compile
    # Line 135
    la	$v1,gl_n_viewport
    # Line 136
    sh	$s8,4($sp)
    # Line 143
    jalr	$t9
    # Line 135
    sw	$v1,0($sp)
    # Line 145
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f125a74:
    sd	$a5,64($sp)
    sd	$a2,56($sp)
    # Line 132
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,48($sp)
    jalr	$t9
    addiu	$a0,$a0,-21272
    ld	$a3,48($sp)
    ld	$a5,64($sp)
    li	$a2,1
    sw	$a2,-19804($gp)
    b	.L0f125a28
    ld	$a2,56($sp)
.end gl_g_viewport

# Function: gl_n_viewport
# Declared: Line 147 (Source lines: 147-159)
# Address: 0x0f125aa8 - 0x0f125b3c (Size: 148 bytes, Frame: 208)
.globl gl_n_viewport
.ent gl_n_viewport
gl_n_viewport:
    # Line 147
    addiu	$sp,$sp,-80
    sd	$gp,40($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-10336 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,48($sp)
    beqz	$at,.L0f125adc
    sd	$a0,32($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f125adc:
    ld	$a0,32($sp)
    # Line 156
    la	$t9,gl_do_viewport
    # Line 154
    lh	$a3,6($a0)
    # Line 153
    lh	$a2,4($a0)
    # Line 152
    lh	$a1,2($a0)
    # Line 151
    lh	$a0,0($a0)
    sd	$a3,24($sp)
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    # Line 156
    bal gl_do_viewport
    sd	$a0,0($sp)
    ld	$a0,0($sp)
    # Line 157
    la	$t9,sub_0f120000
    ld	$a1,8($sp)
    ld	$a2,16($sp)
    addiu	$t9,$t9,22324
    bal gl_g_getscrmask
    ld	$a3,24($sp)
    ld	$v0,32($sp)
    ld	$ra,48($sp)
    # Line 159
    addiu	$v0,$v0,16
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_n_viewport

# Function: __iglooExtViewport
# Declared: Line 163 (Source lines: 165-167)
# Address: 0x0f125b3c - 0x0f125b74 (Size: 56 bytes, Frame: 192)
.globl __iglooExtViewport
.ent __iglooExtViewport
__iglooExtViewport:
    # Line 165
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-10484 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 166
    la	$t9,__iglooViewport
    addu	$a1,$a1,$a5
    sd	$ra,0($sp)
    jalr	$t9
    addu	$a0,$a0,$a4
    # Line 167
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __iglooExtViewport

# Function: __iglooGetExtViewport
# Declared: Line 169 (Source lines: 171-176)
# Address: 0x0f125b74 - 0x0f125be0 (Size: 108 bytes, Frame: 224)
.globl __iglooGetExtViewport
.ent __iglooGetExtViewport
__iglooGetExtViewport:
    # Line 171
    addiu	$sp,$sp,-96
    sd	$a5,24($sp)
    sd	$a4,32($sp)
    sd	$a1,40($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-10540 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 172
    la	$t9,__iglooGetViewport
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 171
    move	$s8,$a0
    ld	$gp,16($sp)
    # Line 174
    ld	$ra,32($sp)
    lw	$a2,0($s8)
    # Line 175
    ld	$a0,24($sp)
    ld	$v1,40($sp)
    # Line 174
    subu	$a2,$a2,$ra
    sw	$a2,0($s8)
    # Line 176
    ld	$s8,8($sp)
    # Line 175
    lw	$v0,0($v1)
    # Line 176
    ld	$ra,0($sp)
    addiu	$sp,$sp,96
    # Line 175
    subu	$v0,$v0,$a0
    # Line 176
    jr	$ra
    # Line 175
    sw	$v0,0($v1)
.end __iglooGetExtViewport

# Function: gl_g_reshapeviewport
# Declared: Line 184 (Source lines: 185-192)
# Address: 0x0f125be0 - 0x0f125c48 (Size: 104 bytes, Frame: 32)
.globl gl_g_reshapeviewport
.ent gl_g_reshapeviewport
gl_g_reshapeviewport:
    # Line 185
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-10648 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 188
    la	$t9,__GLgetsize
    addiu	$a1,$sp,4
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 189
    move	$a0,$zero
    move	$a2,$zero
    lw	$a3,4($sp)
    lw	$a1,0($sp)
    la	$t9,__GLviewport
    addiu	$a3,$a3,-1
    addiu	$a1,$a1,-1
    dsll32	$a1,$a1,0x10
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    jalr	$t9
    dsra32	$a1,$a1,0x10
    # Line 192
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_reshapeviewport

# Function: gl_g_screenspace
# Declared: Line 195 (Source lines: 196-211)
# Address: 0x0f125c48 - 0x0f125d30 (Size: 232 bytes, Frame: 16)
.globl gl_g_screenspace
.ent gl_g_screenspace
gl_g_screenspace:
    # Line 196
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-10752 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    lw	$a1,224($a1)
    lw	$at,32($a1)
    # Line 201
    move	$a6,$zero
    # Line 196
    andi	$at,$at,0x1
    beqz	$at,.L0f125d20
    # Line 201
    move	$a5,$zero
    sd	$ra,8($sp)
.L0f125c80:
    # Line 209
    negu	$a2,$a5
    negu	$a0,$a6
    # Line 204
    la	$a1,gl_sstatep
    # Line 209
    dsll32	$a0,$a0,0x10
    dsll32	$a2,$a2,0x10
    lw	$a1,0($a1)
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    lw	$a3,4($a1)
    lw	$a1,0($a1)
    la	$t9,__GLviewport
    subu	$a3,$a3,$a5
    subu	$a1,$a1,$a6
    dsll32	$a1,$a1,0x10
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    jalr	$t9
    dsra32	$a1,$a1,0x10
    la	$a3,gl_sstatep
    # Line 210
    lw	$a3,0($a3)
    lw	$a4,4($a3)
    mtc1	$a4,$f15
    lw	$a3,0($a3)
    cvt.d.w	$f15,$f15
    mtc1	$a3,$f13
    nop
    cvt.d.w	$f13,$f13
    ldc1	$f14,_lit8_3fe0000000000000
    add.d	$f15,$f15,$f14
    add.d	$f13,$f13,$f14
    lwc1	$f12,_lit_bf000000
    la	$t9,__GLortho2
    cvt.s.d	$f15,$f15
    mov.s	$f14,$f12
    jalr	$t9
    cvt.s.d	$f13,$f13
    # Line 211
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f125d20:
    sd	$ra,8($sp)
    # Line 204
    lw	$a5,52($a1)
    b	.L0f125c80
    # Line 203
    lw	$a6,48($a1)
.end gl_g_screenspace

# Function: gl_mapzrange
# Declared: Line 219 (Source lines: 220-225)
# Address: 0x0f125d30 - 0x0f125d84 (Size: 84 bytes, Frame: 0)
.globl gl_mapzrange
.ent gl_mapzrange
gl_mapzrange:
    # Line 220
    lui	$v1,0xfff1
    addiu	$v1,$v1,-10984
    addu	$at,$t9,$v1
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    ldc1	$f0,-15768($at)
    ldc1	$f4,2872($v0)
    c.eq.d	$f4,$f0
    # Line 225
    ldc1	$f2,-15520($at)
    # Line 220
    bc1t	.L0f125d7c
    # Line 225
    move	$v0,$zero
    mtc1	$a0,$f1
    nop
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    div.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    nop
.L0f125d7c:
    jr	$ra
    nop
.end gl_mapzrange

# Function: __iglooCalcDepthExtrema
# Declared: Line 234 (Source lines: 235-275)
# Address: 0x0f125d84 - 0x0f125e4c (Size: 200 bytes, Frame: 208)
.globl __iglooCalcDepthExtrema
.ent __iglooCalcDepthExtrema
__iglooCalcDepthExtrema:
    # Line 235
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-11068 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    lw	$v0,-14360($gp)
    li	$a5,-1
    sd	$s0,0($sp)
    beq	$a5,$v0,.L0f125e18
    move	$s0,$a0
.L0f125dac:
    # Line 263
    slti	$at,$s0,32
    # Line 246
    beqz	$v0,.L0f125df0
    slti	$v1,$s0,32
    bnez	$v1,.L0f125dc4
    # Line 256
    sllv	$v0,$a5,$s0
    # Line 254
    move	$v0,$zero
.L0f125dc4:
    # Line 258
    li	$a4,1
    addiu	$s0,$s0,-1
    sllv	$a4,$a4,$s0
    ld	$s0,0($sp)
    # Line 259
    nor	$a3,$a4,$v0
    # Line 258
    or	$a4,$a4,$v0
    sw	$a4,0($a1)
    # Line 259
    sw	$a3,0($a2)
.L0f125de4:
    ld	$gp,8($sp)
    # Line 275
    jr	$ra
    addiu	$sp,$sp,80
.L0f125df0:
    # Line 263
    beqz	$at,.L0f125e0c
    sw	$zero,0($a1)
    # Line 267
    sllv	$v1,$a5,$s0
    ld	$s0,0($sp)
    nor	$v1,$v1,$zero
    b	.L0f125de4
    sw	$v1,0($a2)
.L0f125e0c:
    # Line 271
    sw	$a5,0($a2)
    b	.L0f125de4
    ld	$s0,0($sp)
.L0f125e18:
    sd	$a1,24($sp)
    sd	$a2,16($sp)
    # Line 246
    la	$t9,getenv
    la	$a0,sub_0f020000
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$a0,22712
    li	$a5,-1
    sw	$v0,-14360($gp)
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    b	.L0f125dac
    ld	$ra,32($sp)
.end __iglooCalcDepthExtrema

# Function: gl_g_setdepth
# Declared: Line 291 (Source lines: 291-299)
# Address: 0x0f125e4c - 0x0f125ed0 (Size: 132 bytes, Frame: 192)
.globl gl_g_setdepth
.ent gl_g_setdepth
gl_g_setdepth:
    # Line 291
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-11268 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19800($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f125eac
    move	$s8,$a0
.L0f125e78:
    # Line 297
    addiu	$a1,$sp,0
    li	$a0,4
    # Line 296
    sh	$a3,6($sp)
    # Line 297
    la	$t9,gl_compile
    # Line 294
    la	$v1,gl_n_setdepth
    # Line 295
    sh	$s8,4($sp)
    # Line 297
    jalr	$t9
    # Line 294
    sw	$v1,0($sp)
    # Line 299
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f125eac:
    # Line 291
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-21256
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f125e78
    sw	$a2,-19800($gp)
.end gl_g_setdepth

# Function: gl_g_lsetdepth
# Declared: Line 301 (Source lines: 301-309)
# Address: 0x0f125ed0 - 0x0f125f54 (Size: 132 bytes, Frame: 192)
.globl gl_g_lsetdepth
.ent gl_g_lsetdepth
gl_g_lsetdepth:
    # Line 301
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-11400 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19796($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f125f30
    move	$s8,$a0
.L0f125efc:
    # Line 307
    addiu	$a1,$sp,0
    li	$a0,6
    # Line 306
    sw	$a3,8($sp)
    # Line 307
    la	$t9,gl_compile
    # Line 304
    la	$v1,gl_n_lsetdepth
    # Line 305
    sw	$s8,4($sp)
    # Line 307
    jalr	$t9
    # Line 304
    sw	$v1,0($sp)
    # Line 309
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f125f30:
    # Line 301
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-21240
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f125efc
    sw	$a2,-19796($gp)
.end gl_g_lsetdepth

# Function: gl_n_setdepth
# Declared: Line 311 (Source lines: 311-320)
# Address: 0x0f125f54 - 0x0f12601c (Size: 200 bytes, Frame: 48)
.globl gl_n_setdepth
.ent gl_n_setdepth
gl_n_setdepth:
    # Line 311
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-11532 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f125f8c
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f125f8c:
    # Line 317
    lh	$a1,2($s3)
    # Line 313
    la	$v1,gl_wstatep
    # Line 319
    mtc1	$a1,$f13
    # Line 316
    lh	$a0,0($s3)
    # Line 313
    lw	$v1,0($v1)
    # Line 319
    cvt.d.w	$f13,$f13
    mtc1	$a0,$f12
    ldc1	$f14,2872($v1)
    cvt.d.w	$f12,$f12
    mul.d	$f13,$f13,$f14
    mul.d	$f12,$f12,$f14
    ldc1	$f14,2880($v1)
    la	$t9,__iglooDepthRange
    add.d	$f13,$f13,$f14
    sd	$v1,0($sp)
    sw	$a1,2852($v1)
    add.d	$f12,$f12,$f14
    sw	$a0,2848($v1)
    sdc1	$f13,2864($v1)
    jalr	$t9
    sdc1	$f12,2856($v1)
    ld	$a1,0($sp)
    ld	$ra,24($sp)
    lw	$a1,2904($a1)
    la	$at,slowBegin
    li	$a0,1
    beq	$a1,$a0,.L0f126010
    ld	$v0,0($sp)
.L0f125ffc:
    ld	$gp,8($sp)
    # Line 320
    addiu	$v0,$s3,4
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f126010:
    # Line 319
    sw	$a0,2908($v0)
    b	.L0f125ffc
    sw	$at,216($v0)
.end gl_n_setdepth

# Function: gl_n_lsetdepth
# Declared: Line 324 (Source lines: 324-333)
# Address: 0x0f12601c - 0x0f1260e4 (Size: 200 bytes, Frame: 48)
.globl gl_n_lsetdepth
.ent gl_n_lsetdepth
gl_n_lsetdepth:
    # Line 324
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-11732 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s3,16($sp)
    beqz	$at,.L0f126054
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f126054:
    # Line 330
    lw	$a1,4($s3)
    # Line 326
    la	$v1,gl_wstatep
    # Line 332
    mtc1	$a1,$f13
    # Line 329
    lw	$a0,0($s3)
    # Line 326
    lw	$v1,0($v1)
    # Line 332
    cvt.d.w	$f13,$f13
    mtc1	$a0,$f12
    ldc1	$f14,2872($v1)
    cvt.d.w	$f12,$f12
    mul.d	$f13,$f13,$f14
    mul.d	$f12,$f12,$f14
    ldc1	$f14,2880($v1)
    la	$t9,__iglooDepthRange
    add.d	$f13,$f13,$f14
    sd	$v1,0($sp)
    sw	$a1,2852($v1)
    add.d	$f12,$f12,$f14
    sw	$a0,2848($v1)
    sdc1	$f13,2864($v1)
    jalr	$t9
    sdc1	$f12,2856($v1)
    ld	$a1,0($sp)
    ld	$ra,24($sp)
    lw	$a1,2904($a1)
    la	$at,slowBegin
    li	$a0,1
    beq	$a1,$a0,.L0f1260d8
    ld	$v0,0($sp)
.L0f1260c4:
    ld	$gp,8($sp)
    # Line 333
    addiu	$v0,$s3,8
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1260d8:
    # Line 332
    sw	$a0,2908($v0)
    b	.L0f1260c4
    sw	$at,216($v0)
.end gl_n_lsetdepth

# Function: gl_g_getdepth
# Declared: Line 339 (Source lines: 340-351)
# Address: 0x0f1260e4 - 0x0f126164 (Size: 128 bytes, Frame: 0)
.globl gl_g_getdepth
.ent gl_g_getdepth
gl_g_getdepth:
    # Line 340
    lui	$v0,0xfff1
    addiu	$v0,$v0,-11932
    addu	$at,$t9,$v0
    # Line 342
    lw	$a5,-23296($at)
    lw	$a5,0($a5)
    ldc1	$f0,-15768($at)
    ldc1	$f4,2872($a5)
    c.eq.d	$f4,$f0
    nop
    bc1t	.L0f126154
    addiu	$a4,$a5,2832
    # Line 345
    ldc1	$f1,2856($a5)
    div.d	$f1,$f1,$f4
    ldc1	$f0,2880($a5)
    add.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a2,$f0
    nop
    sh	$a2,0($a0)
    # Line 346
    ldc1	$f3,40($a4)
    ldc1	$f2,32($a4)
    div.d	$f2,$f2,$f3
    ldc1	$f1,48($a4)
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$v1,$f1
    # Line 351
    jr	$ra
    # Line 346
    sh	$v1,0($a1)
.L0f126154:
    # Line 348
    sh	$zero,0($a0)
    # Line 349
    sh	$zero,0($a1)
    # Line 351
    jr	$ra
    nop
.end gl_g_getdepth

# Function: gl_g_pushviewport
# Declared: Line 356 (Source lines: 356-362)
# Address: 0x0f126164 - 0x0f1261c8 (Size: 100 bytes, Frame: 32)
.globl gl_g_pushviewport
.ent gl_g_pushviewport
gl_g_pushviewport:
    # Line 356
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-12060 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19792($gp)
    beqz	$at,.L0f1261ac
    sd	$ra,16($sp)
.L0f126184:
    # Line 360
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    # Line 359
    la	$v1,gl_n_pushviewport
    # Line 360
    li	$a0,2
    jalr	$t9
    # Line 359
    sw	$v1,0($sp)
    # Line 362
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f1261ac:
    # Line 356
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-21224
    li	$at,1
    b	.L0f126184
    sw	$at,-19792($gp)
.end gl_g_pushviewport

# Function: gl_n_pushviewport
# Declared: Line 364 (Source lines: 364-367)
# Address: 0x0f1261c8 - 0x0f12621c (Size: 84 bytes, Frame: 48)
.globl gl_n_pushviewport
.ent gl_n_pushviewport
gl_n_pushviewport:
    # Line 364
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-12160 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f1261fc
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1261fc:
    # Line 366
    la	$t9,im_pushviewport
    bal im_pushviewport
    nop
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    # Line 367
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pushviewport

# Function: im_pushviewport
# Declared: Line 371 (Source lines: 372-398)
# Address: 0x0f12621c - 0x0f12630c (Size: 240 bytes, Frame: 32)
.globl im_pushviewport
.ent im_pushviewport
im_pushviewport:
    # Line 372
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-12244 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 373
    la	$at,gl_wstatep
    lw	$at,0($at)
    lw	$a5,11888($at)
    sd	$at,8($sp)
    addiu	$at,$at,12084
    bne	$at,$a5,.L0f12626c
    sd	$ra,24($sp)
    # Line 377
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,51
    jalr	$t9
    lw	$a2,-21212($a2)
    b	.L0f126300
    ld	$ra,24($sp)
.L0f12626c:
    sd	$a5,0($sp)
    # Line 389
    move	$a0,$a5
    addiu	$a3,$a5,6
    la	$t9,__GLgetviewport
    addiu	$a2,$a5,4
    # Line 385
    move	$a1,$a5
    # Line 389
    jalr	$t9
    addiu	$a1,$a5,2
    ld	$a0,0($sp)
    # Line 390
    la	$t9,__GLgetscrmask
    addiu	$a3,$a0,14
    addiu	$a2,$a0,12
    addiu	$a1,$a0,10
    jalr	$t9
    addiu	$a0,$a0,8
    ld	$at,8($sp)
    # Line 394
    ld	$v1,0($sp)
    # Line 391
    lw	$ra,2848($at)
    # Line 394
    lw	$v0,4($v1)
    # Line 391
    sw	$ra,16($v1)
    # Line 394
    lw	$a1,0($v1)
    # Line 392
    lw	$ra,2852($at)
    # Line 394
    sw	$v0,28($v1)
    sw	$a1,24($v1)
    lw	$a1,12($v1)
    lw	$v0,8($v1)
    # Line 392
    sw	$ra,20($v1)
    # Line 394
    sw	$a1,36($v1)
    lw	$a1,16($v1)
    sw	$ra,44($v1)
    sw	$v0,32($v1)
    sw	$a1,40($v1)
    move	$v0,$ra
    # Line 396
    lw	$ra,11888($at)
    addiu	$ra,$ra,24
    sw	$ra,11888($at)
    ld	$ra,24($sp)
.L0f126300:
    ld	$gp,16($sp)
    # Line 398
    jr	$ra
    addiu	$sp,$sp,32
.end im_pushviewport

# Function: gl_g_popviewport
# Declared: Line 400 (Source lines: 400-406)
# Address: 0x0f12630c - 0x0f126370 (Size: 100 bytes, Frame: 32)
.globl gl_g_popviewport
.ent gl_g_popviewport
gl_g_popviewport:
    # Line 400
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-12484 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19788($gp)
    beqz	$at,.L0f126354
    sd	$ra,16($sp)
.L0f12632c:
    # Line 404
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    # Line 403
    la	$v1,gl_n_popviewport
    # Line 404
    li	$a0,2
    jalr	$t9
    # Line 403
    sw	$v1,0($sp)
    # Line 406
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f126354:
    # Line 400
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-21208
    li	$at,1
    b	.L0f12632c
    sw	$at,-19788($gp)
.end gl_g_popviewport

# Function: gl_n_popviewport
# Declared: Line 408 (Source lines: 408-411)
# Address: 0x0f126370 - 0x0f1263c4 (Size: 84 bytes, Frame: 48)
.globl gl_n_popviewport
.ent gl_n_popviewport
gl_n_popviewport:
    # Line 408
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-12584 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f1263a4
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1263a4:
    # Line 410
    la	$t9,im_popviewport
    bal im_popviewport
    nop
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    # Line 411
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_popviewport

# Function: im_popviewport
# Declared: Line 415 (Source lines: 416-440)
# Address: 0x0f1263c4 - 0x0f12647c (Size: 184 bytes, Frame: 32)
.globl im_popviewport
.ent im_popviewport
im_popviewport:
    # Line 416
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-12668 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 417
    la	$a7,gl_wstatep
    lw	$a7,0($a7)
    lw	$a5,11888($a7)
    sd	$ra,16($sp)
    addiu	$at,$a7,11892
    bne	$at,$a5,.L0f126414
    move	$a6,$a7
    # Line 421
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,52
    jalr	$t9
    lw	$a2,-21196($a2)
    b	.L0f126470
    ld	$ra,16($sp)
.L0f126414:
    # Line 430
    addiu	$a1,$a5,-24
    sw	$a1,11888($a7)
    # Line 432
    lw	$a0,11888($a6)
    # Line 436
    la	$t9,__GLviewport
    sd	$a0,0($sp)
    lh	$a3,6($a0)
    lh	$a2,4($a0)
    lh	$a1,2($a0)
    jalr	$t9
    lh	$a0,0($a0)
    ld	$a0,0($sp)
    # Line 437
    la	$t9,__GLscrmask
    lh	$a3,14($a0)
    lh	$a2,12($a0)
    lh	$a1,10($a0)
    jalr	$t9
    lh	$a0,8($a0)
    # Line 438
    ld	$a0,0($sp)
    la	$t9,__GLlsetdepth
    lw	$a1,20($a0)
    jalr	$t9
    lw	$a0,16($a0)
    ld	$ra,16($sp)
.L0f126470:
    ld	$gp,8($sp)
    # Line 440
    jr	$ra
    addiu	$sp,$sp,32
.end im_popviewport

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit_bf000000:
    .word 0xbf000000

