# Source: ../igloo/graphics/zbuffer.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/zbuffer.c -o zbuffer.T
# Total Functions: 18

.text

# Function: im_zbuffer
# Declared: Line 27 (Source lines: 28-55)
# Address: 0x0f130b6c - 0x0f130c78 (Size: 268 bytes, Frame: 192)
.globl im_zbuffer
.ent im_zbuffer
im_zbuffer:
    # Line 28
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$a3,0xfff0
    addiu	$a3,$a3,9948
    addu	$gp,$t9,$a3
    # Line 29
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$a3,276($a2)
    lw	$at,56($a3)
    li	$v0,16
    sd	$ra,32($sp)
    beq	$at,$v0,.L0f130bc4
    sd	$a0,8($sp)
.L0f130ba0:
    # Line 54
    la	$t9,__iglooGetRenderMode
.L0f130ba4:
    jalr	$t9
    nop
    li	$at,7169
    beq	$v0,$at,.L0f130c08
    ld	$ra,32($sp)
.L0f130bb8:
    ld	$gp,24($sp)
    # Line 55
    jr	$ra
    addiu	$sp,$sp,64
.L0f130bc4:
    # Line 29
    beqzl	$a0,.L0f130c54
    sd	$a2,16($sp)
    lw	$v0,60($a3)
    lhu	$v0,52($v0)
    sd	$a0,8($sp)
    sd	$ra,32($sp)
    andi	$v0,$v0,0x4
    beqz	$v0,.L0f130c34
    sd	$a2,16($sp)
    # Line 39
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,98
    jalr	$t9
    addiu	$a2,$a2,28280
    b	.L0f130ba4
    # Line 54
    la	$t9,__iglooGetRenderMode
.L0f130c08:
    la	$t9,glPassThrough
    li	$a5,63
    li	$a4,1
    ld	$a3,8($sp)
    sb	$a4,1($sp)
    sb	$a5,0($sp)
    sh	$a3,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f130bb8
    ld	$ra,32($sp)
.L0f130c34:
    # Line 44
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,2929
    # Line 45
    ld	$v0,16($sp)
    li	$at,1
    b	.L0f130ba0
    sb	$at,2836($v0)
.L0f130c54:
    # Line 50
    move	$a1,$zero
    la	$t9,__iglooSetEnable
    sd	$a0,8($sp)
    sd	$ra,32($sp)
    jalr	$t9
    li	$a0,2929
    ld	$v1,16($sp)
    b	.L0f130ba0
    # Line 51
    sb	$zero,2836($v1)
.end im_zbuffer

# Function: gl_i_zbuffer
# Declared: Line 57 (Source lines: 57-57)
# Address: 0x0f130c78 - 0x0f130cc8 (Size: 80 bytes, Frame: 48)
.globl gl_i_zbuffer
.ent gl_i_zbuffer
gl_i_zbuffer:
    # Line 57
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,9680 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f130cac
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f130cac:
    la	$t9,im_zbuffer
    bal im_zbuffer
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_zbuffer

# Function: gl_c_zbuffer
# Declared: Line 57 (Source lines: 57-57)
# Address: 0x0f130cc8 - 0x0f130d3c (Size: 116 bytes, Frame: 192)
.globl gl_c_zbuffer
.ent gl_c_zbuffer
gl_c_zbuffer:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,9600 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19684($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f130d20
    move	$s8,$a0
.L0f130cf0:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_zbuffer
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f130d20:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-19960
    li	$a1,1
    b	.L0f130cf0
    sw	$a1,-19684($gp)
.end gl_c_zbuffer

# Function: gl_n_zbuffer
# Declared: Line 57 (Source lines: 57-57)
# Address: 0x0f130d3c - 0x0f130d98 (Size: 92 bytes, Frame: 48)
.globl gl_n_zbuffer
.ent gl_n_zbuffer
gl_n_zbuffer:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,9484 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f130d74
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f130d74:
    la	$t9,im_zbuffer
    bal im_zbuffer
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_zbuffer

# Function: gl_i_zfunction
# Declared: Line 106 (Source lines: 106-106)
# Address: 0x0f130d98 - 0x0f130e20 (Size: 136 bytes, Frame: 48)
.globl gl_i_zfunction
.ent gl_i_zfunction
gl_i_zfunction:
    # Line 106
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,9392 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f130dd0
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f130dd0:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    sd	$v1,8($sp)
    lw	$v1,276($v1)
    lw	$v1,56($v1)
    li	$a1,16
    beq	$v1,$a1,.L0f130dfc
    la	$t9,__iglooDepthFunc
.L0f130df0:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f130dfc:
    ld	$a0,0($sp)
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$a0,512
    ld	$ra,8($sp)
    ld	$a1,0($sp)
    sw	$a1,2840($ra)
    b	.L0f130df0
    ld	$ra,24($sp)
.end gl_i_zfunction

# Function: gl_c_zfunction
# Declared: Line 106 (Source lines: 106-106)
# Address: 0x0f130e20 - 0x0f130e94 (Size: 116 bytes, Frame: 192)
.globl gl_c_zfunction
.ent gl_c_zfunction
gl_c_zfunction:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,9256 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19680($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f130e78
    move	$s8,$a0
.L0f130e48:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_zfunction
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f130e78:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-19944
    li	$a1,1
    b	.L0f130e48
    sw	$a1,-19680($gp)
.end gl_c_zfunction

# Function: gl_n_zfunction
# Declared: Line 106 (Source lines: 106-106)
# Address: 0x0f130e94 - 0x0f130f28 (Size: 148 bytes, Frame: 48)
.globl gl_n_zfunction
.ent gl_n_zfunction
gl_n_zfunction:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,9140 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$s3,16($sp)
    beqz	$at,.L0f130ed0
    move	$s3,$a0
    la	$t9,__iglooNCloseMoveDraw
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$ra,24($sp)
.L0f130ed0:
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    sd	$v1,0($sp)
    lw	$v1,276($v1)
    lw	$v1,56($v1)
    li	$a1,16
    beq	$v1,$a1,.L0f130f04
    la	$t9,__iglooDepthFunc
.L0f130ef0:
    ld	$gp,8($sp)
    addiu	$v0,$s3,4
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f130f04:
    lw	$a0,0($s3)
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$a0,512
    ld	$ra,0($sp)
    lw	$a1,0($s3)
    sw	$a1,2840($ra)
    b	.L0f130ef0
    ld	$ra,24($sp)
.end gl_n_zfunction

# Function: gl_i_zwritemask
# Declared: Line 121 (Source lines: 121-121)
# Address: 0x0f130f28 - 0x0f130f88 (Size: 96 bytes, Frame: 48)
.globl gl_i_zwritemask
.ent gl_i_zwritemask
gl_i_zwritemask:
    # Line 121
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,8992 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    move	$a2,$a0
    beqz	$at,.L0f130f60
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a2,8($sp)
    ld	$a2,8($sp)
.L0f130f60:
    la	$v1,gl_wstatep
    la	$t9,__iglooDepthMask
    lw	$v1,0($v1)
    sltu	$a0,$zero,$a2
    jalr	$t9
    sb	$a0,2844($v1)
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_zwritemask

# Function: gl_c_zwritemask
# Declared: Line 121 (Source lines: 121-121)
# Address: 0x0f130f88 - 0x0f130ffc (Size: 116 bytes, Frame: 192)
.globl gl_c_zwritemask
.ent gl_c_zwritemask
gl_c_zwritemask:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,8896 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19676($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f130fe0
    move	$s8,$a0
.L0f130fb0:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_zwritemask
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f130fe0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-19928
    li	$a1,1
    b	.L0f130fb0
    sw	$a1,-19676($gp)
.end gl_c_zwritemask

# Function: gl_n_zwritemask
# Declared: Line 121 (Source lines: 121-121)
# Address: 0x0f130ffc - 0x0f131068 (Size: 108 bytes, Frame: 48)
.globl gl_n_zwritemask
.ent gl_n_zwritemask
gl_n_zwritemask:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,8780 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f131034
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f131034:
    la	$v1,gl_wstatep
    lw	$a0,0($s8)
    la	$t9,__iglooDepthMask
    lw	$v1,0($v1)
    sltu	$a0,$zero,$a0
    jalr	$t9
    sb	$a0,2844($v1)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_zwritemask

# Function: gl_polygonOffset
# Declared: Line 123 (Source lines: 124-139)
# Address: 0x0f131068 - 0x0f1310f4 (Size: 140 bytes, Frame: 48)
.globl gl_polygonOffset
.ent gl_polygonOffset
gl_polygonOffset:
    # Line 124
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,8672 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 131
    la	$t9,__iglooIsExtensionSupported
    li	$a0,9
    sd	$ra,8($sp)
    jalr	$t9
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    li	$v1,1
    bne	$v0,$v1,.L0f1310e8
    ld	$ra,8($sp)
    mtc1	$zero,$f13
    c.eq.s	$f0,$f13
    nop
    bc1t	.L0f1310d4
    # Line 133
    la	$t9,glPolygonOffsetEXT
    jalr	$t9
    ldc1	$f12,0($sp)
    # Line 134
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,0x8037
    b	.L0f1310e8
    ld	$ra,8($sp)
.L0f1310d4:
    # Line 136
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x8037
    ld	$ra,8($sp)
.L0f1310e8:
    ld	$gp,16($sp)
    # Line 139
    jr	$ra
    addiu	$sp,$sp,48
.end gl_polygonOffset

# Function: gl_i_displacepolygon
# Declared: Line 143 (Source lines: 143-143)
# Address: 0x0f1310f4 - 0x0f131148 (Size: 84 bytes, Frame: 48)
.globl gl_i_displacepolygon
.ent gl_i_displacepolygon
gl_i_displacepolygon:
    # Line 143
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,8532 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    mov.s	$f4,$f12
    beqz	$at,.L0f13112c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sdc1	$f4,8($sp)
    ldc1	$f4,8($sp)
.L0f13112c:
    la	$t9,gl_polygonOffset
    bal gl_polygonOffset
    mov.s	$f12,$f4
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_displacepolygon

# Function: gl_c_displacepolygon
# Declared: Line 143 (Source lines: 143-143)
# Address: 0x0f131148 - 0x0f1311bc (Size: 116 bytes, Frame: 192)
.globl gl_c_displacepolygon
.ent gl_c_displacepolygon
gl_c_displacepolygon:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,8448 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19672($gp)
    sd	$ra,32($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f1311a0
    mov.s	$f30,$f12
.L0f131170:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_displacepolygon
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1311a0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-19912
    li	$at,1
    b	.L0f131170
    sw	$at,-19672($gp)
.end gl_c_displacepolygon

# Function: gl_n_displacepolygon
# Declared: Line 143 (Source lines: 143-143)
# Address: 0x0f1311bc - 0x0f131218 (Size: 92 bytes, Frame: 48)
.globl gl_n_displacepolygon
.ent gl_n_displacepolygon
gl_n_displacepolygon:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,8332 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f1311f4
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f1311f4:
    la	$t9,gl_polygonOffset
    bal gl_polygonOffset
    lwc1	$f12,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_displacepolygon

# Function: im_zsource
# Declared: Line 146 (Source lines: 159-159)
# Address: 0x0f131218 - 0x0f131220 (Size: 8 bytes, Frame: 0)
.globl im_zsource
.ent im_zsource
im_zsource:
    # Line 159
    jr	$ra
    nop
.end im_zsource

# Function: gl_i_zsource
# Declared: Line 161 (Source lines: 161-161)
# Address: 0x0f131220 - 0x0f131270 (Size: 80 bytes, Frame: 48)
.globl gl_i_zsource
.ent gl_i_zsource
gl_i_zsource:
    # Line 161
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,8232 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f131254
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f131254:
    la	$t9,im_zsource
    bal im_zsource
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_zsource

# Function: gl_c_zsource
# Declared: Line 161 (Source lines: 161-161)
# Address: 0x0f131270 - 0x0f1312e4 (Size: 116 bytes, Frame: 192)
.globl gl_c_zsource
.ent gl_c_zsource
gl_c_zsource:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,8152 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19668($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f1312c8
    move	$s8,$a0
.L0f131298:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_zsource
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1312c8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-19896
    li	$a1,1
    b	.L0f131298
    sw	$a1,-19668($gp)
.end gl_c_zsource

# Function: gl_n_zsource
# Declared: Line 161 (Source lines: 161-161)
# Address: 0x0f1312e4 - 0x0f131340 (Size: 92 bytes, Frame: 48)
.globl gl_n_zsource
.ent gl_n_zsource
gl_n_zsource:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,8036 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f13131c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f13131c:
    la	$t9,im_zsource
    bal im_zsource
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_zsource

