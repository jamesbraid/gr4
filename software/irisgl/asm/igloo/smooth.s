# Source: ../igloo/smooth.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/smooth.c -o smooth.T
# Total Functions: 16

.text

# Function: gl_linesmooth
# Declared: Line 21 (Source lines: 22-38)
# Address: 0x0f11214c - 0x0f11220c (Size: 192 bytes, Frame: 48)
.globl gl_linesmooth
.ent gl_linesmooth
gl_linesmooth:
    # Line 22
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff2 (gp disp hi)
    # addiu	v1,v1,4348 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 25
    la	$v0,gl_wstatep
    andi	$at,$a0,0x1
    sd	$s7,0($sp)
    lw	$v0,0($v0)
    # Line 22
    move	$s7,$a0
    # Line 25
    beqz	$at,.L0f1121bc
    sw	$a0,3008($v0)
    # Line 28
    andi	$a1,$s7,0x2
    bnez	$a1,.L0f112198
    # Line 29
    la	$t9,glHint
    # Line 28
    andi	$at,$s7,0x4
    beqz	$at,.L0f1121d4
    sd	$ra,16($sp)
    # Line 29
    la	$t9,glHint
.L0f112198:
    li	$a1,4354
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,3154
    # Line 33
    la	$t9,__iglooSetEnable
.L0f1121ac:
    li	$a1,1
    jalr	$t9
    li	$a0,2848
    ld	$ra,16($sp)
.L0f1121bc:
    move	$v0,$s7
    beqz	$v0,.L0f1121ec
    ld	$s7,0($sp)
.L0f1121c8:
    ld	$gp,8($sp)
    # Line 38
    jr	$ra
    addiu	$sp,$sp,48
.L0f1121d4:
    # Line 31
    la	$t9,glHint
    li	$a1,4353
    jalr	$t9
    li	$a0,3154
    b	.L0f1121ac
    # Line 33
    la	$t9,__iglooSetEnable
.L0f1121ec:
    # Line 36
    move	$a1,$zero
    la	$t9,__iglooSetEnable
    li	$a0,2848
    sd	$ra,16($sp)
    jalr	$t9
    ld	$s7,0($sp)
    b	.L0f1121c8
    ld	$ra,16($sp)
.end gl_linesmooth

# Function: _pntsmooth
# Declared: Line 42 (Source lines: 43-55)
# Address: 0x0f11220c - 0x0f1122b0 (Size: 164 bytes, Frame: 48)
.globl _pntsmooth
.ent _pntsmooth
_pntsmooth:
    # Line 43
    andi	$at,$a0,0x1
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    move	$s7,$a0
    sd	$gp,8($sp)
    lui	$v0,0xfff2
    addiu	$v0,$v0,4156
    beqz	$at,.L0f112260
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    andi	$v1,$s7,0x2
    beqz	$v1,.L0f112278
    sd	$ra,16($sp)
    # Line 46
    la	$t9,glHint
    li	$a1,4354
    jalr	$t9
    li	$a0,3153
    # Line 50
    la	$t9,__iglooSetEnable
.L0f112250:
    li	$a1,1
    jalr	$t9
    li	$a0,2832
    ld	$ra,16($sp)
.L0f112260:
    move	$a1,$s7
    beqz	$a1,.L0f112290
    ld	$s7,0($sp)
.L0f11226c:
    ld	$gp,8($sp)
    # Line 55
    jr	$ra
    addiu	$sp,$sp,48
.L0f112278:
    # Line 48
    la	$t9,glHint
    li	$a1,4353
    jalr	$t9
    li	$a0,3153
    b	.L0f112250
    # Line 50
    la	$t9,__iglooSetEnable
.L0f112290:
    # Line 53
    move	$a1,$zero
    la	$t9,__iglooSetEnable
    li	$a0,2832
    sd	$ra,16($sp)
    jalr	$t9
    ld	$s7,0($sp)
    b	.L0f11226c
    ld	$ra,16($sp)
.end _pntsmooth

# Function: _polysmooth
# Declared: Line 59 (Source lines: 60-80)
# Address: 0x0f1122b0 - 0x0f112364 (Size: 180 bytes, Frame: 48)
.globl _polysmooth
.ent _polysmooth
_polysmooth:
    # Line 63
    andi	$at,$a0,0x1
    # Line 60
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    move	$s7,$a0
    sd	$gp,8($sp)
    lui	$v0,0xfff2
    addiu	$v0,$v0,3992
    # Line 63
    beqz	$at,.L0f112304
    # Line 60
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 63
    la	$v1,gl_wstatep
.L0f1122d8:
    lw	$v1,0($v1)
    lw	$v1,276($v1)
    lw	$v1,60($v1)
    lw	$v1,4($v1)
    beqz	$v1,.L0f112338
.L0f1122ec:
    move	$a1,$s7
.L0f1122f0:
    # Line 71
    beqz	$a1,.L0f112318
    ld	$s7,0($sp)
.L0f1122f8:
    ld	$gp,8($sp)
    # Line 80
    jr	$ra
    addiu	$sp,$sp,48
.L0f112304:
    # Line 63
    andi	$at,$s7,0x2
    beqz	$at,.L0f1122f0
    move	$a1,$s7
    b	.L0f1122d8
    la	$v1,gl_wstatep
.L0f112318:
    # Line 78
    move	$a1,$zero
    la	$t9,__iglooSetEnable
    li	$a0,2881
    sd	$ra,16($sp)
    jalr	$t9
    ld	$s7,0($sp)
    b	.L0f1122f8
    ld	$ra,16($sp)
.L0f112338:
    # Line 72
    la	$t9,glHint
    li	$a1,4353
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,3155
    # Line 73
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2881
    b	.L0f1122ec
    ld	$ra,16($sp)
.end _polysmooth

# Function: gl_i_linesmooth
# Declared: Line 90 (Source lines: 90-90)
# Address: 0x0f112364 - 0x0f1123b4 (Size: 80 bytes, Frame: 48)
.globl gl_i_linesmooth
.ent gl_i_linesmooth
gl_i_linesmooth:
    # Line 90
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,3812 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f112398
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f112398:
    la	$t9,gl_linesmooth
    bal gl_linesmooth
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_linesmooth

# Function: gl_c_linesmooth
# Declared: Line 90 (Source lines: 90-90)
# Address: 0x0f1123b4 - 0x0f112428 (Size: 116 bytes, Frame: 192)
.globl gl_c_linesmooth
.ent gl_c_linesmooth
gl_c_linesmooth:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,3732 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19996($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f11240c
    move	$s8,$a0
.L0f1123dc:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_linesmooth
    sw	$s8,4($sp)
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f11240c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23128
    li	$a1,1
    b	.L0f1123dc
    sw	$a1,-19996($gp)
.end gl_c_linesmooth

# Function: gl_n_linesmooth
# Declared: Line 90 (Source lines: 90-90)
# Address: 0x0f112428 - 0x0f112484 (Size: 92 bytes, Frame: 48)
.globl gl_n_linesmooth
.ent gl_n_linesmooth
gl_n_linesmooth:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,3616 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f112460
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f112460:
    la	$t9,gl_linesmooth
    bal gl_linesmooth
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_linesmooth

# Function: gl_i_subpixel
# Declared: Line 91 (Source lines: 91-91)
# Address: 0x0f112484 - 0x0f1124c4 (Size: 64 bytes, Frame: 32)
.globl gl_i_subpixel
.ent gl_i_subpixel
gl_i_subpixel:
    # Line 91
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,3524 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f1124b8
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f1124b8:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_subpixel

# Function: gl_c_subpixel
# Declared: Line 91 (Source lines: 91-91)
# Address: 0x0f1124c4 - 0x0f112538 (Size: 116 bytes, Frame: 192)
.globl gl_c_subpixel
.ent gl_c_subpixel
gl_c_subpixel:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,3460 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19992($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f11251c
    move	$s8,$a0
.L0f1124ec:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_subpixel
    sw	$s8,4($sp)
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f11251c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23112
    li	$a1,1
    b	.L0f1124ec
    sw	$a1,-19992($gp)
.end gl_c_subpixel

# Function: gl_n_subpixel
# Declared: Line 91 (Source lines: 91-91)
# Address: 0x0f112538 - 0x0f112580 (Size: 72 bytes, Frame: 48)
.globl gl_n_subpixel
.ent gl_n_subpixel
gl_n_subpixel:
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,3344 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f112570
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$ra,16($sp)
.L0f112570:
    addiu	$v0,$a0,4
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_subpixel

# Function: gl_i_pntsmooth
# Declared: Line 92 (Source lines: 92-92)
# Address: 0x0f112580 - 0x0f1125d0 (Size: 80 bytes, Frame: 48)
.globl gl_i_pntsmooth
.ent gl_i_pntsmooth
gl_i_pntsmooth:
    # Line 92
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,3272 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f1125b4
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f1125b4:
    la	$t9,_pntsmooth
    bal _pntsmooth
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_pntsmooth

# Function: gl_c_pntsmooth
# Declared: Line 92 (Source lines: 92-92)
# Address: 0x0f1125d0 - 0x0f112644 (Size: 116 bytes, Frame: 192)
.globl gl_c_pntsmooth
.ent gl_c_pntsmooth
gl_c_pntsmooth:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,3192 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19988($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f112628
    move	$s8,$a0
.L0f1125f8:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_pntsmooth
    sw	$s8,4($sp)
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f112628:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23096
    li	$a1,1
    b	.L0f1125f8
    sw	$a1,-19988($gp)
.end gl_c_pntsmooth

# Function: gl_n_pntsmooth
# Declared: Line 92 (Source lines: 92-92)
# Address: 0x0f112644 - 0x0f1126a0 (Size: 92 bytes, Frame: 48)
.globl gl_n_pntsmooth
.ent gl_n_pntsmooth
gl_n_pntsmooth:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,3076 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f11267c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f11267c:
    la	$t9,_pntsmooth
    bal _pntsmooth
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pntsmooth

# Function: gl_i_polysmooth
# Declared: Line 93 (Source lines: 93-93)
# Address: 0x0f1126a0 - 0x0f1126f0 (Size: 80 bytes, Frame: 48)
.globl gl_i_polysmooth
.ent gl_i_polysmooth
gl_i_polysmooth:
    # Line 93
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,2984 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f1126d4
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f1126d4:
    la	$t9,_polysmooth
    bal _polysmooth
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_polysmooth

# Function: gl_c_polysmooth
# Declared: Line 93 (Source lines: 93-93)
# Address: 0x0f1126f0 - 0x0f112764 (Size: 116 bytes, Frame: 192)
.globl gl_c_polysmooth
.ent gl_c_polysmooth
gl_c_polysmooth:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,2904 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19984($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f112748
    move	$s8,$a0
.L0f112718:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_polysmooth
    sw	$s8,4($sp)
    bal gl_compile
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f112748:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23080
    li	$a1,1
    b	.L0f112718
    sw	$a1,-19984($gp)
.end gl_c_polysmooth

# Function: gl_n_polysmooth
# Declared: Line 93 (Source lines: 93-93)
# Address: 0x0f112764 - 0x0f1127c0 (Size: 92 bytes, Frame: 48)
.globl gl_n_polysmooth
.ent gl_n_polysmooth
gl_n_polysmooth:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,2788 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f11279c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f11279c:
    la	$t9,_polysmooth
    bal _polysmooth
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_polysmooth

# Function: gl_g_smoothline
# Declared: Line 96 (Source lines: 97-99)
# Address: 0x0f1127c0 - 0x0f1127f4 (Size: 52 bytes, Frame: 32)
.globl gl_g_smoothline
.ent gl_g_smoothline
gl_g_smoothline:
    # Line 97
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,2696 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 98
    la	$t9,gl_linesmooth
    sd	$ra,0($sp)
    bal gl_linesmooth
    nop
    # Line 99
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_smoothline

