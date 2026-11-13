# Source: ../igloo/glws/buffers.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/buffers.c -o buffers.T
# Total Functions: 34

.text

# Function: __gl_swapbuffers
# Declared: Line 21 (Source lines: 23-30)
# Address: 0x0f0966c8 - 0x0f09672c (Size: 100 bytes, Frame: 16)
.globl __gl_swapbuffers
.ent __gl_swapbuffers
__gl_swapbuffers:
    # Line 23
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-13440 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lw	$at,276($a3)
    lw	$at,60($at)
    lw	$at,0($at)
    li	$v0,1
    beq	$at,$v0,.L0f096720
    # Line 28
    la	$a0,gl_sstatep
    sd	$ra,8($sp)
    lw	$a0,0($a0)
    lw	$a1,224($a3)
    la	$t9,glXSwapBuffers
    lw	$a0,28($a0)
    lw	$a1,8($a1)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,8($sp)
.L0f096720:
    ld	$gp,0($sp)
    # Line 30
    jr	$ra
    addiu	$sp,$sp,16
.end __gl_swapbuffers

# Function: gl_i_swapbuffers
# Declared: Line 44 (Source lines: 44-44)
# Address: 0x0f09672c - 0x0f096778 (Size: 76 bytes, Frame: 16)
.globl gl_i_swapbuffers
.ent gl_i_swapbuffers
gl_i_swapbuffers:
    # Line 44
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-13540 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09675c
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09675c:
    la	$t9,__gl_swapbuffers
    bal __gl_swapbuffers
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_swapbuffers

# Function: gl_c_swapbuffers
# Declared: Line 44 (Source lines: 44-44)
# Address: 0x0f096778 - 0x0f0967dc (Size: 100 bytes, Frame: 32)
.globl gl_c_swapbuffers
.ent gl_c_swapbuffers
gl_c_swapbuffers:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-13616 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21092($gp)
    beqz	$at,.L0f0967c0
    sd	$ra,16($sp)
.L0f096798:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_swapbuffers
    li	$a0,2
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0967c0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28768
    li	$at,1
    b	.L0f096798
    sw	$at,-21092($gp)
.end gl_c_swapbuffers

# Function: gl_n_swapbuffers
# Declared: Line 44 (Source lines: 44-44)
# Address: 0x0f0967dc - 0x0f096830 (Size: 84 bytes, Frame: 48)
.globl gl_n_swapbuffers
.ent gl_n_swapbuffers
gl_n_swapbuffers:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-13716 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f096810
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f096810:
    la	$t9,__gl_swapbuffers
    bal __gl_swapbuffers
    nop
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_swapbuffers

# Function: gl_i_swapinterval
# Declared: Line 48 (Source lines: 48-48)
# Address: 0x0f096830 - 0x0f096880 (Size: 80 bytes, Frame: 48)
.globl gl_i_swapinterval
.ent gl_i_swapinterval
gl_i_swapinterval:
    # Line 48
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-13800 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f096864
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f096864:
    la	$t9,glXSwapIntervalSGI
    jalr	$t9
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_swapinterval

# Function: gl_c_swapinterval
# Declared: Line 48 (Source lines: 48-48)
# Address: 0x0f096880 - 0x0f0968f8 (Size: 120 bytes, Frame: 192)
.globl gl_c_swapinterval
.ent gl_c_swapinterval
gl_c_swapinterval:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-13880 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21088($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0968dc
    move	$s8,$a0
.L0f0968a8:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_swapinterval
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0968dc:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28784
    li	$a1,1
    b	.L0f0968a8
    sw	$a1,-21088($gp)
.end gl_c_swapinterval

# Function: gl_n_swapinterval
# Declared: Line 48 (Source lines: 48-48)
# Address: 0x0f0968f8 - 0x0f096954 (Size: 92 bytes, Frame: 48)
.globl gl_n_swapinterval
.ent gl_n_swapinterval
gl_n_swapinterval:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-14000 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f096930
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f096930:
    la	$t9,glXSwapIntervalSGI
    jalr	$t9
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_swapinterval

# Function: gl_zdraw
# Declared: Line 51 (Source lines: 52-79)
# Address: 0x0f096954 - 0x0f0969e4 (Size: 144 bytes, Frame: 32)
.globl gl_zdraw
.ent gl_zdraw
gl_zdraw:
    # Line 52
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-14092 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lw	$a2,276($a3)
    lw	$at,56($a2)
    li	$v0,16
    bnel	$at,$v0,.L0f0969b8
    ld	$gp,0($sp)
    # Line 60
    beqz	$a0,.L0f0969d0
    lw	$a4,60($a2)
    lbu	$v0,2836($a3)
    beqz	$v0,.L0f0969c0
    # Line 66
    li	$a1,2
    li	$a0,98
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$a2,8608
    ld	$ra,8($sp)
.L0f0969b4:
    ld	$gp,0($sp)
.L0f0969b8:
    # Line 79
    jr	$ra
    addiu	$sp,$sp,32
.L0f0969c0:
    # Line 71
    lhu	$at,52($a4)
    ori	$at,$at,0x4
    b	.L0f0969b4
    sh	$at,52($a4)
.L0f0969d0:
    # Line 76
    lhu	$v0,52($a4)
    li	$v1,-5
    and	$v0,$v0,$v1
    b	.L0f0969b4
    sh	$v0,52($a4)
.end gl_zdraw

# Function: gl_i_zdraw
# Declared: Line 81 (Source lines: 81-81)
# Address: 0x0f0969e4 - 0x0f096a34 (Size: 80 bytes, Frame: 48)
.globl gl_i_zdraw
.ent gl_i_zdraw
gl_i_zdraw:
    # Line 81
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-14236 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f096a18
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f096a18:
    la	$t9,gl_zdraw
    bal gl_zdraw
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_zdraw

# Function: gl_c_zdraw
# Declared: Line 81 (Source lines: 81-81)
# Address: 0x0f096a34 - 0x0f096aa8 (Size: 116 bytes, Frame: 192)
.globl gl_c_zdraw
.ent gl_c_zdraw
gl_c_zdraw:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-14316 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21084($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f096a8c
    move	$s8,$a0
.L0f096a5c:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_zdraw
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f096a8c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28800
    li	$a1,1
    b	.L0f096a5c
    sw	$a1,-21084($gp)
.end gl_c_zdraw

# Function: gl_n_zdraw
# Declared: Line 81 (Source lines: 81-81)
# Address: 0x0f096aa8 - 0x0f096b04 (Size: 92 bytes, Frame: 48)
.globl gl_n_zdraw
.ent gl_n_zdraw
gl_n_zdraw:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-14432 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f096ae0
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f096ae0:
    la	$t9,gl_zdraw
    bal gl_zdraw
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_zdraw

# Function: gl_g_RGBsize
# Declared: Line 89 (Source lines: 90-101)
# Address: 0x0f096b04 - 0x0f096b3c (Size: 56 bytes, Frame: 0)
.globl gl_g_RGBsize
.ent gl_g_RGBsize
gl_g_RGBsize:
    # Line 90
    lui	$v0,0xfffa
    addiu	$v0,$v0,-14524
    addu	$at,$t9,$v0
    lw	$a3,-23296($at)
    lw	$a3,0($a3)
    lw	$a3,276($a3)
    lw	$v0,56($a3)
    li	$v1,16
    beql	$v0,$v1,.L0f096b34
    # Line 99
    lw	$v1,60($a3)
    # Line 101
    jr	$ra
    nop
.L0f096b34:
    jr	$ra
    # Line 99
    sw	$a0,36($v1)
.end gl_g_RGBsize

# Function: gl_g_overlay
# Declared: Line 103 (Source lines: 104-125)
# Address: 0x0f096b3c - 0x0f096b98 (Size: 92 bytes, Frame: 0)
.globl gl_g_overlay
.ent gl_g_overlay
gl_g_overlay:
    # Line 104
    lui	$v0,0xfffa
    addiu	$v0,$v0,-14580
    addu	$at,$t9,$v0
    lw	$a3,-23296($at)
    lw	$a3,0($a3)
    lw	$a3,276($a3)
    lw	$v0,56($a3)
    li	$a2,8
    li	$v1,16
    bne	$v0,$v1,.L0f096b88
    li	$a1,4
    beqz	$a0,.L0f096b90
    li	$v1,2
    beq	$a0,$v1,.L0f096b90
    nop
    beq	$a0,$a1,.L0f096b90
    nop
    beq	$a0,$a2,.L0f096b90
    nop
.L0f096b88:
    # Line 125
    jr	$ra
    nop
.L0f096b90:
    jr	$ra
    # Line 121
    sw	$a0,28($a3)
.end gl_g_overlay

# Function: gl_g_underlay
# Declared: Line 127 (Source lines: 128-149)
# Address: 0x0f096b98 - 0x0f096bf4 (Size: 92 bytes, Frame: 0)
.globl gl_g_underlay
.ent gl_g_underlay
gl_g_underlay:
    # Line 128
    lui	$v0,0xfffa
    addiu	$v0,$v0,-14672
    addu	$at,$t9,$v0
    lw	$a3,-23296($at)
    lw	$a3,0($a3)
    lw	$a3,276($a3)
    lw	$v0,56($a3)
    li	$a2,8
    li	$v1,16
    bne	$v0,$v1,.L0f096be4
    li	$a1,4
    beqz	$a0,.L0f096bec
    li	$v1,2
    beq	$a0,$v1,.L0f096bec
    nop
    beq	$a0,$a1,.L0f096bec
    nop
    beq	$a0,$a2,.L0f096bec
    nop
.L0f096be4:
    # Line 149
    jr	$ra
    nop
.L0f096bec:
    jr	$ra
    # Line 145
    sw	$a0,32($a3)
.end gl_g_underlay

# Function: gl_g_zbsize
# Declared: Line 151 (Source lines: 152-163)
# Address: 0x0f096bf4 - 0x0f096c2c (Size: 56 bytes, Frame: 0)
.globl gl_g_zbsize
.ent gl_g_zbsize
gl_g_zbsize:
    # Line 152
    lui	$v0,0xfffa
    addiu	$v0,$v0,-14764
    addu	$at,$t9,$v0
    lw	$a3,-23296($at)
    lw	$a3,0($a3)
    lw	$a3,276($a3)
    lw	$v0,56($a3)
    li	$v1,16
    beql	$v0,$v1,.L0f096c24
    # Line 159
    lw	$v1,60($a3)
    # Line 163
    jr	$ra
    nop
.L0f096c24:
    jr	$ra
    # Line 159
    sw	$a0,44($v1)
.end gl_g_zbsize

# Function: gl_g_acsize
# Declared: Line 165 (Source lines: 166-175)
# Address: 0x0f096c2c - 0x0f096c64 (Size: 56 bytes, Frame: 0)
.globl gl_g_acsize
.ent gl_g_acsize
gl_g_acsize:
    # Line 166
    lui	$v0,0xfffa
    addiu	$v0,$v0,-14820
    addu	$at,$t9,$v0
    lw	$a3,-23296($at)
    lw	$a3,0($a3)
    lw	$a3,276($a3)
    lw	$v0,56($a3)
    li	$v1,16
    beq	$v0,$v1,.L0f096c5c
    nop
    # Line 175
    jr	$ra
    nop
.L0f096c5c:
    jr	$ra
    # Line 173
    sw	$a0,36($a3)
.end gl_g_acsize

# Function: gl_g_stensize
# Declared: Line 177 (Source lines: 178-194)
# Address: 0x0f096c64 - 0x0f096cac (Size: 72 bytes, Frame: 0)
.globl gl_g_stensize
.ent gl_g_stensize
gl_g_stensize:
    # Line 178
    lui	$v0,0xfffa
    addiu	$v0,$v0,-14876
    addu	$at,$t9,$v0
    lw	$a3,-23296($at)
    lw	$a3,0($a3)
    lw	$a3,276($a3)
    lw	$v0,56($a3)
    li	$v1,16
    bne	$v0,$v1,.L0f096ca4
    nop
    # Line 189
    bgezl	$a0,.L0f096ca4
    # Line 191
    sw	$a0,40($a3)
    # Line 189
    slti	$v1,$a0,9
    beqz	$v1,.L0f096ca4
    nop
    # Line 191
    sw	$a0,40($a3)
.L0f096ca4:
    # Line 194
    jr	$ra
    nop
.end gl_g_stensize

# Function: DrawBufferIrisToOpen
# Declared: Line 196 (Source lines: 197-247)
# Address: 0x0f096cac - 0x0f096d34 (Size: 136 bytes, Frame: 0)
.ent DrawBufferIrisToOpen
DrawBufferIrisToOpen:
    # Line 197
    # la	v1,sub_0f020000
    la	$v1,jtbl_0f0221c8
    li	$v0,-5
    and	$v0,$a0,$v0
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sltiu	$at,$v0,28
    sll	$v0,$v0,0x2
    beqz	$at,.L0f096ce0
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    # Line 240
    li	$v0,1027
.L0f096ce0:
    # Line 243
    move	$v0,$zero
.L0f096ce4:
    # Line 247
    jr	$ra
    nop
.L0f096cec:
    jr	$ra
    # Line 210
    move	$v0,$zero
.L0f096cf4:
    # Line 247
    jr	$ra
    # Line 214
    li	$v0,1029
.L0f096cfc:
    # Line 247
    jr	$ra
    # Line 218
    li	$v0,1028
.L0f096d04:
    # Line 247
    jr	$ra
    # Line 222
    li	$v0,1032
.L0f096d0c:
    # Line 247
    jr	$ra
    # Line 225
    li	$v0,1030
.L0f096d14:
    # Line 247
    jr	$ra
    # Line 228
    li	$v0,1031
.L0f096d1c:
    # Line 247
    jr	$ra
    # Line 231
    li	$v0,1024
.L0f096d24:
    # Line 247
    jr	$ra
    # Line 234
    li	$v0,1025
.L0f096d2c:
    # Line 247
    jr	$ra
    # Line 237
    li	$v0,1026
.end DrawBufferIrisToOpen

# Function: gl_frontbuffer
# Declared: Line 255 (Source lines: 256-273)
# Address: 0x0f096d34 - 0x0f096df4 (Size: 192 bytes, Frame: 32)
.globl gl_frontbuffer
.ent gl_frontbuffer
gl_frontbuffer:
    # Line 256
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a3,0xfffa
    addiu	$a3,$a3,-15084
    addu	$gp,$t9,$a3
    # Line 260
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$a2,276($a2)
    lw	$a2,60($a2)
    beqz	$a0,.L0f096d98
    lhu	$a3,52($a2)
    sd	$ra,8($sp)
    # Line 264
    ori	$a0,$a3,0x2
    andi	$a0,$a0,0xffff
    # Line 265
    la	$t9,sub_0f090000
    # Line 264
    sh	$a0,52($a2)
    # Line 265
    dsll32	$a0,$a0,0x10
    addiu	$t9,$t9,27820
    bal gl_g_stensize
    dsra32	$a0,$a0,0x10
    la	$t9,__iglooDrawBuffer
    jalr	$t9
    move	$a0,$v0
    b	.L0f096de8
    ld	$ra,8($sp)
.L0f096d98:
    # Line 267
    lw	$at,0($a2)
    li	$v0,2
    beq	$at,$v0,.L0f096db0
    andi	$v1,$a3,0x4
    beqzl	$v1,.L0f096dec
    ld	$gp,0($sp)
.L0f096db0:
    sd	$ra,8($sp)
    # Line 271
    la	$t9,sub_0f090000
    # Line 270
    li	$a0,-3
    and	$a0,$a3,$a0
    andi	$a0,$a0,0xffff
    sh	$a0,52($a2)
    # Line 271
    dsll32	$a0,$a0,0x10
    addiu	$t9,$t9,27820
    bal gl_g_stensize
    dsra32	$a0,$a0,0x10
    la	$t9,__iglooDrawBuffer
    jalr	$t9
    move	$a0,$v0
    ld	$ra,8($sp)
.L0f096de8:
    ld	$gp,0($sp)
.L0f096dec:
    # Line 273
    jr	$ra
    addiu	$sp,$sp,32
.end gl_frontbuffer

# Function: gl_backbuffer
# Declared: Line 275 (Source lines: 276-291)
# Address: 0x0f096df4 - 0x0f096e88 (Size: 148 bytes, Frame: 32)
.globl gl_backbuffer
.ent gl_backbuffer
gl_backbuffer:
    # Line 276
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-15276 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 280
    la	$a3,gl_wstatep
    lw	$a3,0($a3)
    lw	$a3,276($a3)
    lw	$a3,60($a3)
    lw	$at,0($a3)
    li	$v0,1
    beql	$at,$v0,.L0f096e68
    ld	$gp,0($sp)
    beqz	$a0,.L0f096e70
    lhu	$a2,52($a3)
    sd	$ra,8($sp)
    # Line 285
    ori	$a2,$a2,0x1
    andi	$a2,$a2,0xffff
    sh	$a2,52($a3)
.L0f096e40:
    # Line 289
    la	$t9,sub_0f090000
    dsll32	$a0,$a2,0x10
    addiu	$t9,$t9,27820
    bal gl_g_stensize
    dsra32	$a0,$a0,0x10
    la	$t9,__iglooDrawBuffer
    jalr	$t9
    move	$a0,$v0
    ld	$ra,8($sp)
    ld	$gp,0($sp)
.L0f096e68:
    # Line 291
    jr	$ra
    addiu	$sp,$sp,32
.L0f096e70:
    # Line 287
    li	$at,-2
    sd	$ra,8($sp)
    and	$a2,$a2,$at
    andi	$a2,$a2,0xffff
    b	.L0f096e40
    sh	$a2,52($a3)
.end gl_backbuffer

# Function: gl_leftbuffer
# Declared: Line 294 (Source lines: 295-310)
# Address: 0x0f096e88 - 0x0f096f24 (Size: 156 bytes, Frame: 32)
.globl gl_leftbuffer
.ent gl_leftbuffer
gl_leftbuffer:
    # Line 295
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-15424 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 299
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$a2,276($a2)
    lw	$at,56($a2)
    li	$v0,16
    bne	$at,$v0,.L0f096f00
    lw	$a2,60($a2)
    lw	$v0,8($a2)
    beqzl	$v0,.L0f096f04
    ld	$gp,0($sp)
    # Line 301
    beqz	$a0,.L0f096f0c
    lhu	$a3,52($a2)
    sd	$ra,8($sp)
    # Line 304
    ori	$a3,$a3,0x8
    andi	$a3,$a3,0xffff
    sh	$a3,52($a2)
.L0f096edc:
    # Line 308
    la	$t9,sub_0f090000
    dsll32	$a0,$a3,0x10
    addiu	$t9,$t9,27820
    bal gl_g_stensize
    dsra32	$a0,$a0,0x10
    la	$t9,__iglooDrawBuffer
    jalr	$t9
    move	$a0,$v0
    ld	$ra,8($sp)
.L0f096f00:
    ld	$gp,0($sp)
.L0f096f04:
    # Line 310
    jr	$ra
    addiu	$sp,$sp,32
.L0f096f0c:
    # Line 306
    li	$at,-9
    sd	$ra,8($sp)
    and	$a3,$a3,$at
    andi	$a3,$a3,0xffff
    b	.L0f096edc
    sh	$a3,52($a2)
.end gl_leftbuffer

# Function: gl_rightbuffer
# Declared: Line 313 (Source lines: 314-329)
# Address: 0x0f096f24 - 0x0f096fc0 (Size: 156 bytes, Frame: 32)
.globl gl_rightbuffer
.ent gl_rightbuffer
gl_rightbuffer:
    # Line 314
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-15580 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 318
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$a2,276($a2)
    lw	$at,56($a2)
    li	$v0,16
    bne	$at,$v0,.L0f096f9c
    lw	$a2,60($a2)
    lw	$v0,8($a2)
    beqzl	$v0,.L0f096fa0
    ld	$gp,0($sp)
    # Line 320
    beqz	$a0,.L0f096fa8
    lhu	$a3,52($a2)
    sd	$ra,8($sp)
    # Line 323
    ori	$a3,$a3,0x10
    andi	$a3,$a3,0xffff
    sh	$a3,52($a2)
.L0f096f78:
    # Line 327
    la	$t9,sub_0f090000
    dsll32	$a0,$a3,0x10
    addiu	$t9,$t9,27820
    bal gl_g_stensize
    dsra32	$a0,$a0,0x10
    la	$t9,__iglooDrawBuffer
    jalr	$t9
    move	$a0,$v0
    ld	$ra,8($sp)
.L0f096f9c:
    ld	$gp,0($sp)
.L0f096fa0:
    # Line 329
    jr	$ra
    addiu	$sp,$sp,32
.L0f096fa8:
    # Line 325
    li	$at,-17
    sd	$ra,8($sp)
    and	$a3,$a3,$at
    andi	$a3,$a3,0xffff
    b	.L0f096f78
    sh	$a3,52($a2)
.end gl_rightbuffer

# Function: gl_i_frontbuffer
# Declared: Line 333 (Source lines: 333-333)
# Address: 0x0f096fc0 - 0x0f097010 (Size: 80 bytes, Frame: 48)
.globl gl_i_frontbuffer
.ent gl_i_frontbuffer
gl_i_frontbuffer:
    # Line 333
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-15736 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f096ff4
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f096ff4:
    la	$t9,gl_frontbuffer
    bal gl_frontbuffer
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_frontbuffer

# Function: gl_c_frontbuffer
# Declared: Line 333 (Source lines: 333-333)
# Address: 0x0f097010 - 0x0f097084 (Size: 116 bytes, Frame: 192)
.globl gl_c_frontbuffer
.ent gl_c_frontbuffer
gl_c_frontbuffer:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-15816 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21080($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f097068
    move	$s8,$a0
.L0f097038:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_frontbuffer
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f097068:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28816
    li	$a1,1
    b	.L0f097038
    sw	$a1,-21080($gp)
.end gl_c_frontbuffer

# Function: gl_n_frontbuffer
# Declared: Line 333 (Source lines: 333-333)
# Address: 0x0f097084 - 0x0f0970e0 (Size: 92 bytes, Frame: 48)
.globl gl_n_frontbuffer
.ent gl_n_frontbuffer
gl_n_frontbuffer:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-15932 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0970bc
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0970bc:
    la	$t9,gl_frontbuffer
    bal gl_frontbuffer
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_frontbuffer

# Function: gl_i_backbuffer
# Declared: Line 334 (Source lines: 334-334)
# Address: 0x0f0970e0 - 0x0f097130 (Size: 80 bytes, Frame: 48)
.globl gl_i_backbuffer
.ent gl_i_backbuffer
gl_i_backbuffer:
    # Line 334
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-16024 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f097114
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f097114:
    la	$t9,gl_backbuffer
    bal gl_backbuffer
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_backbuffer

# Function: gl_c_backbuffer
# Declared: Line 334 (Source lines: 334-334)
# Address: 0x0f097130 - 0x0f0971a4 (Size: 116 bytes, Frame: 192)
.globl gl_c_backbuffer
.ent gl_c_backbuffer
gl_c_backbuffer:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-16104 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21076($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f097188
    move	$s8,$a0
.L0f097158:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_backbuffer
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f097188:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28832
    li	$a1,1
    b	.L0f097158
    sw	$a1,-21076($gp)
.end gl_c_backbuffer

# Function: gl_n_backbuffer
# Declared: Line 334 (Source lines: 334-334)
# Address: 0x0f0971a4 - 0x0f097200 (Size: 92 bytes, Frame: 48)
.globl gl_n_backbuffer
.ent gl_n_backbuffer
gl_n_backbuffer:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-16220 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0971dc
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0971dc:
    la	$t9,gl_backbuffer
    bal gl_backbuffer
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_backbuffer

# Function: gl_i_leftbuffer
# Declared: Line 335 (Source lines: 335-335)
# Address: 0x0f097200 - 0x0f097250 (Size: 80 bytes, Frame: 48)
.globl gl_i_leftbuffer
.ent gl_i_leftbuffer
gl_i_leftbuffer:
    # Line 335
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-16312 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f097234
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f097234:
    la	$t9,gl_leftbuffer
    bal gl_leftbuffer
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_leftbuffer

# Function: gl_c_leftbuffer
# Declared: Line 335 (Source lines: 335-335)
# Address: 0x0f097250 - 0x0f0972c4 (Size: 116 bytes, Frame: 192)
.globl gl_c_leftbuffer
.ent gl_c_leftbuffer
gl_c_leftbuffer:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-16392 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21072($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0972a8
    move	$s8,$a0
.L0f097278:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_leftbuffer
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0972a8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28848
    li	$a1,1
    b	.L0f097278
    sw	$a1,-21072($gp)
.end gl_c_leftbuffer

# Function: gl_n_leftbuffer
# Declared: Line 335 (Source lines: 335-335)
# Address: 0x0f0972c4 - 0x0f097320 (Size: 92 bytes, Frame: 48)
.globl gl_n_leftbuffer
.ent gl_n_leftbuffer
gl_n_leftbuffer:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-16508 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0972fc
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0972fc:
    la	$t9,gl_leftbuffer
    bal gl_leftbuffer
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_leftbuffer

# Function: gl_i_rightbuffer
# Declared: Line 336 (Source lines: 336-336)
# Address: 0x0f097320 - 0x0f097370 (Size: 80 bytes, Frame: 48)
.globl gl_i_rightbuffer
.ent gl_i_rightbuffer
gl_i_rightbuffer:
    # Line 336
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-16600 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f097354
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f097354:
    la	$t9,gl_rightbuffer
    bal gl_rightbuffer
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_rightbuffer

# Function: gl_c_rightbuffer
# Declared: Line 336 (Source lines: 336-336)
# Address: 0x0f097370 - 0x0f0973e4 (Size: 116 bytes, Frame: 192)
.globl gl_c_rightbuffer
.ent gl_c_rightbuffer
gl_c_rightbuffer:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-16680 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21068($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0973c8
    move	$s8,$a0
.L0f097398:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_rightbuffer
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0973c8:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,28864
    li	$a1,1
    b	.L0f097398
    sw	$a1,-21068($gp)
.end gl_c_rightbuffer

# Function: gl_n_rightbuffer
# Declared: Line 336 (Source lines: 336-336)
# Address: 0x0f0973e4 - 0x0f097440 (Size: 92 bytes, Frame: 48)
.globl gl_n_rightbuffer
.ent gl_n_rightbuffer
gl_n_rightbuffer:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-16796 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f09741c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f09741c:
    la	$t9,gl_rightbuffer
    bal gl_rightbuffer
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_rightbuffer

.late_rodata
jtbl_0f0221c8:
    .word .L0f096cec
    .word .L0f096cf4
    .word .L0f096cfc
    .word .L0f096d04
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096d2c
    .word .L0f096d1c
    .word .L0f096d0c
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce4
    .word .L0f096d24
    .word .L0f096d14
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096ce0
    .word .L0f096cf4
    .word .L0f096cfc
    .word .L0f096d04

