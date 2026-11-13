# Source: ../igloo/xform/rotate.c
# Category: xform
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/xform/rotate.c -o rotate.T
# Total Functions: 18

.text

# Function: gl_i_gl_rotatex
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f10a7a0 - 0x0f10a7d4 (Size: 52 bytes, Frame: 32)
.globl gl_i_gl_rotatex
.ent gl_i_gl_rotatex
gl_i_gl_rotatex:
    # Line 33
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-30040 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,im_rotatex
    sd	$ra,0($sp)
    bal im_rotatex
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_gl_rotatex

# Function: gl_c_gl_rotatex
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f10a7d4 - 0x0f10a848 (Size: 116 bytes, Frame: 192)
.globl gl_c_gl_rotatex
.ent gl_c_gl_rotatex
gl_c_gl_rotatex:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-30092 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20200($gp)
    sd	$ra,32($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f10a82c
    mov.s	$f30,$f12
.L0f10a7fc:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_gl_rotatex
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10a82c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23928
    li	$at,1
    b	.L0f10a7fc
    sw	$at,-20200($gp)
.end gl_c_gl_rotatex

# Function: gl_n_gl_rotatex
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f10a848 - 0x0f10a88c (Size: 68 bytes, Frame: 48)
.globl gl_n_gl_rotatex
.ent gl_n_gl_rotatex
gl_n_gl_rotatex:
    lwc1	$f12,0($a0)
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-30208 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,im_rotatex
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal im_rotatex
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_gl_rotatex

# Function: gl_i_gl_rotatey
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f10a88c - 0x0f10a8c0 (Size: 52 bytes, Frame: 32)
.globl gl_i_gl_rotatey
.ent gl_i_gl_rotatey
gl_i_gl_rotatey:
    # Line 34
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-30276 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,im_rotatey
    sd	$ra,0($sp)
    bal im_rotatey
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_gl_rotatey

# Function: gl_c_gl_rotatey
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f10a8c0 - 0x0f10a934 (Size: 116 bytes, Frame: 192)
.globl gl_c_gl_rotatey
.ent gl_c_gl_rotatey
gl_c_gl_rotatey:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-30328 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20196($gp)
    sd	$ra,32($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f10a918
    mov.s	$f30,$f12
.L0f10a8e8:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_gl_rotatey
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10a918:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23912
    li	$at,1
    b	.L0f10a8e8
    sw	$at,-20196($gp)
.end gl_c_gl_rotatey

# Function: gl_n_gl_rotatey
# Declared: Line 34 (Source lines: 34-34)
# Address: 0x0f10a934 - 0x0f10a978 (Size: 68 bytes, Frame: 48)
.globl gl_n_gl_rotatey
.ent gl_n_gl_rotatey
gl_n_gl_rotatey:
    lwc1	$f12,0($a0)
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-30444 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,im_rotatey
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal im_rotatey
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_gl_rotatey

# Function: gl_i_gl_rotatez
# Declared: Line 35 (Source lines: 35-35)
# Address: 0x0f10a978 - 0x0f10a9ac (Size: 52 bytes, Frame: 32)
.globl gl_i_gl_rotatez
.ent gl_i_gl_rotatez
gl_i_gl_rotatez:
    # Line 35
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-30512 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,im_rotatez
    sd	$ra,0($sp)
    bal im_rotatez
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_gl_rotatez

# Function: gl_c_gl_rotatez
# Declared: Line 35 (Source lines: 35-35)
# Address: 0x0f10a9ac - 0x0f10aa20 (Size: 116 bytes, Frame: 192)
.globl gl_c_gl_rotatez
.ent gl_c_gl_rotatez
gl_c_gl_rotatez:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-30564 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20192($gp)
    sd	$ra,32($sp)
    sdc1	$f30,16($sp)
    beqz	$at,.L0f10aa04
    mov.s	$f30,$f12
.L0f10a9d4:
    addiu	$a1,$sp,0
    li	$a0,4
    la	$t9,gl_compile
    la	$v1,gl_n_gl_rotatez
    swc1	$f30,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f10aa04:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-23896
    li	$at,1
    b	.L0f10a9d4
    sw	$at,-20192($gp)
.end gl_c_gl_rotatez

# Function: gl_n_gl_rotatez
# Declared: Line 35 (Source lines: 35-35)
# Address: 0x0f10aa20 - 0x0f10aa64 (Size: 68 bytes, Frame: 48)
.globl gl_n_gl_rotatez
.ent gl_n_gl_rotatez
gl_n_gl_rotatez:
    lwc1	$f12,0($a0)
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-30680 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t9,im_rotatez
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal im_rotatez
    move	$s8,$a0
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_gl_rotatez

# Function: gl_i_rotate
# Declared: Line 38 (Source lines: 38-59)
# Address: 0x0f10aa64 - 0x0f10ab54 (Size: 240 bytes, Frame: 32)
.globl gl_i_rotate
.ent gl_i_rotate
gl_i_rotate:
    # Line 40
    li	$at,88
    # Line 38
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xfff3
    addiu	$v0,$v0,-30748
    # Line 40
    beq	$a1,$at,.L0f10ab04
    # Line 38
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 40
    li	$v1,120
    beq	$a1,$v1,.L0f10ab04
    li	$a2,89
    beq	$a1,$a2,.L0f10ab2c
    li	$at,121
    beq	$a1,$at,.L0f10ab2c
    li	$v0,90
    beq	$a1,$v0,.L0f10aad4
    li	$v1,122
    beq	$a1,$v1,.L0f10aad4
    sd	$ra,8($sp)
    # Line 54
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,40
    jalr	$t9
    lw	$a2,-23868($a2)
    # Line 55
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f10aad4:
    # Line 51
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    la	$t9,gl_i_gl_rotatez
    lwc1	$f13,_lit_3dcccccd
    sd	$ra,8($sp)
    bal gl_i_gl_rotatez
    mul.s	$f12,$f12,$f13
    ld	$ra,8($sp)
.L0f10aaf8:
    ld	$gp,0($sp)
    # Line 59
    jr	$ra
    addiu	$sp,$sp,32
.L0f10ab04:
    # Line 43
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    la	$t9,gl_i_gl_rotatex
    lwc1	$f13,_lit_3dcccccd
    sd	$ra,8($sp)
    bal gl_i_gl_rotatex
    mul.s	$f12,$f12,$f13
    b	.L0f10aaf8
    ld	$ra,8($sp)
.L0f10ab2c:
    # Line 47
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    la	$t9,gl_i_gl_rotatey
    lwc1	$f13,_lit_3dcccccd
    sd	$ra,8($sp)
    bal gl_i_gl_rotatey
    mul.s	$f12,$f12,$f13
    b	.L0f10aaf8
    ld	$ra,8($sp)
.end gl_i_rotate

# Function: gl_c_rotate
# Declared: Line 60 (Source lines: 60-80)
# Address: 0x0f10ab54 - 0x0f10ac44 (Size: 240 bytes, Frame: 32)
.globl gl_c_rotate
.ent gl_c_rotate
gl_c_rotate:
    # Line 62
    li	$at,88
    # Line 60
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xfff3
    addiu	$v0,$v0,-30988
    # Line 62
    beq	$a1,$at,.L0f10abf4
    # Line 60
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 62
    li	$v1,120
    beq	$a1,$v1,.L0f10abf4
    li	$a2,89
    beq	$a1,$a2,.L0f10ac1c
    li	$at,121
    beq	$a1,$at,.L0f10ac1c
    li	$v0,90
    beq	$a1,$v0,.L0f10abc4
    li	$v1,122
    beq	$a1,$v1,.L0f10abc4
    sd	$ra,8($sp)
    # Line 76
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,40
    jalr	$t9
    lw	$a2,-23868($a2)
    # Line 77
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f10abc4:
    # Line 73
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    la	$t9,gl_c_gl_rotatez
    lwc1	$f13,_lit_3dcccccd
    sd	$ra,8($sp)
    bal gl_c_gl_rotatez
    mul.s	$f12,$f12,$f13
    ld	$ra,8($sp)
.L0f10abe8:
    ld	$gp,0($sp)
    # Line 80
    jr	$ra
    addiu	$sp,$sp,32
.L0f10abf4:
    # Line 65
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    la	$t9,gl_c_gl_rotatex
    lwc1	$f13,_lit_3dcccccd
    sd	$ra,8($sp)
    bal gl_c_gl_rotatex
    mul.s	$f12,$f12,$f13
    b	.L0f10abe8
    ld	$ra,8($sp)
.L0f10ac1c:
    # Line 69
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    la	$t9,gl_c_gl_rotatey
    lwc1	$f13,_lit_3dcccccd
    sd	$ra,8($sp)
    bal gl_c_gl_rotatey
    mul.s	$f12,$f12,$f13
    b	.L0f10abe8
    ld	$ra,8($sp)
.end gl_c_rotate

# Function: gl_i_rot
# Declared: Line 83 (Source lines: 83-104)
# Address: 0x0f10ac44 - 0x0f10ad04 (Size: 192 bytes, Frame: 32)
.globl gl_i_rot
.ent gl_i_rot
gl_i_rot:
    # Line 85
    li	$at,88
    # Line 83
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xfff3
    addiu	$v0,$v0,-31228
    # Line 85
    beq	$a1,$at,.L0f10acd4
    # Line 83
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 85
    li	$v1,120
    beq	$a1,$v1,.L0f10acd4
    li	$a0,89
    beq	$a1,$a0,.L0f10acec
    li	$at,121
    beq	$a1,$at,.L0f10acec
    li	$v0,90
    beq	$a1,$v0,.L0f10acb4
    li	$v1,122
    beq	$a1,$v1,.L0f10acb4
    sd	$ra,8($sp)
    # Line 99
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,40
    jalr	$t9
    lw	$a2,-23852($a2)
    # Line 100
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f10acb4:
    # Line 96
    la	$t9,gl_i_gl_rotatez
    sd	$ra,8($sp)
    bal gl_i_gl_rotatez
    nop
    ld	$ra,8($sp)
.L0f10acc8:
    ld	$gp,0($sp)
    # Line 104
    jr	$ra
    addiu	$sp,$sp,32
.L0f10acd4:
    # Line 88
    la	$t9,gl_i_gl_rotatex
    sd	$ra,8($sp)
    bal gl_i_gl_rotatex
    nop
    b	.L0f10acc8
    ld	$ra,8($sp)
.L0f10acec:
    # Line 92
    la	$t9,gl_i_gl_rotatey
    sd	$ra,8($sp)
    bal gl_i_gl_rotatey
    nop
    b	.L0f10acc8
    ld	$ra,8($sp)
.end gl_i_rot

# Function: gl_c_rot
# Declared: Line 105 (Source lines: 105-125)
# Address: 0x0f10ad04 - 0x0f10adc4 (Size: 192 bytes, Frame: 32)
.globl gl_c_rot
.ent gl_c_rot
gl_c_rot:
    # Line 107
    li	$at,88
    # Line 105
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0xfff3
    addiu	$v0,$v0,-31420
    # Line 107
    beq	$a1,$at,.L0f10ad94
    # Line 105
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 107
    li	$v1,120
    beq	$a1,$v1,.L0f10ad94
    li	$a0,89
    beq	$a1,$a0,.L0f10adac
    li	$at,121
    beq	$a1,$at,.L0f10adac
    li	$v0,90
    beq	$a1,$v0,.L0f10ad74
    li	$v1,122
    beq	$a1,$v1,.L0f10ad74
    sd	$ra,8($sp)
    # Line 121
    li	$a1,2
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    li	$a0,40
    jalr	$t9
    lw	$a2,-23868($a2)
    # Line 122
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f10ad74:
    # Line 118
    la	$t9,gl_c_gl_rotatez
    sd	$ra,8($sp)
    bal gl_c_gl_rotatez
    nop
    ld	$ra,8($sp)
.L0f10ad88:
    ld	$gp,0($sp)
    # Line 125
    jr	$ra
    addiu	$sp,$sp,32
.L0f10ad94:
    # Line 110
    la	$t9,gl_c_gl_rotatex
    sd	$ra,8($sp)
    bal gl_c_gl_rotatex
    nop
    b	.L0f10ad88
    ld	$ra,8($sp)
.L0f10adac:
    # Line 114
    la	$t9,gl_c_gl_rotatey
    sd	$ra,8($sp)
    bal gl_c_gl_rotatey
    nop
    b	.L0f10ad88
    ld	$ra,8($sp)
.end gl_c_rot

# Function: gl_rotatex
# Declared: Line 131 (Source lines: 132-136)
# Address: 0x0f10adc4 - 0x0f10ae18 (Size: 84 bytes, Frame: 32)
.globl gl_rotatex
.ent gl_rotatex
gl_rotatex:
    # Line 132
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-31612 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    bnez	$at,.L0f10adfc
    sd	$ra,8($sp)
    # Line 134
    la	$t9,gl_i_gl_rotatex
    bal gl_i_gl_rotatex
    nop
    b	.L0f10ae0c
    ld	$ra,8($sp)
.L0f10adfc:
    # Line 135
    la	$t9,gl_c_gl_rotatex
    bal gl_c_gl_rotatex
    nop
    ld	$ra,8($sp)
.L0f10ae0c:
    ld	$gp,0($sp)
    # Line 136
    jr	$ra
    addiu	$sp,$sp,32
.end gl_rotatex

# Function: gl_rotatey
# Declared: Line 141 (Source lines: 142-146)
# Address: 0x0f10ae18 - 0x0f10ae6c (Size: 84 bytes, Frame: 32)
.globl gl_rotatey
.ent gl_rotatey
gl_rotatey:
    # Line 142
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-31696 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    bnez	$at,.L0f10ae50
    sd	$ra,8($sp)
    # Line 144
    la	$t9,gl_i_gl_rotatey
    bal gl_i_gl_rotatey
    nop
    b	.L0f10ae60
    ld	$ra,8($sp)
.L0f10ae50:
    # Line 145
    la	$t9,gl_c_gl_rotatey
    bal gl_c_gl_rotatey
    nop
    ld	$ra,8($sp)
.L0f10ae60:
    ld	$gp,0($sp)
    # Line 146
    jr	$ra
    addiu	$sp,$sp,32
.end gl_rotatey

# Function: im_rotatex
# Declared: Line 149 (Source lines: 150-163)
# Address: 0x0f10ae6c - 0x0f10af04 (Size: 152 bytes, Frame: 48)
.globl im_rotatex
.ent im_rotatex
im_rotatex:
    # Line 150
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$a2,0xfff3
    addiu	$a2,$a2,-31780
    addu	$gp,$t9,$a2
    # Line 151
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    sd	$ra,24($sp)
    sdc1	$f30,0($sp)
    # Line 153
    lw	$at,2904($a1)
    # Line 150
    mov.s	$f30,$f12
    # Line 153
    li	$a2,1
    bne	$at,$a2,.L0f10aeb4
    sb	$zero,11864($a1)
    lh	$at,264($a1)
    sd	$ra,24($sp)
    beq	$at,$a2,.L0f10aee0
    sd	$a1,8($sp)
.L0f10aeb4:
    # Line 162
    lwc1	$f13,_lit_3f800000
    la	$t9,__iglooRotate
    mtc1	$zero,$f14
    mov.s	$f12,$f30
    jalr	$t9
    mov.s	$f15,$f14
    # Line 163
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10aee0:
    # Line 157
    la	$t9,__iglooRestoreUsrMat
    jalr	$t9
    nop
    # Line 158
    ld	$v1,8($sp)
    li	$a0,1
    # Line 159
    la	$v0,slowBegin
    # Line 158
    sw	$a0,2908($v1)
    b	.L0f10aeb4
    # Line 159
    sw	$v0,216($v1)
.end im_rotatex

# Function: im_rotatey
# Declared: Line 165 (Source lines: 166-179)
# Address: 0x0f10af04 - 0x0f10af90 (Size: 140 bytes, Frame: 48)
.globl im_rotatey
.ent im_rotatey
im_rotatey:
    # Line 166
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a2,0xfff3
    addiu	$a2,$a2,-31932
    addu	$gp,$t9,$a2
    # Line 167
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    sd	$ra,16($sp)
    sdc1	$f30,0($sp)
    # Line 169
    lw	$at,2904($a1)
    # Line 166
    mov.s	$f30,$f12
    # Line 169
    li	$a2,1
    bne	$at,$a2,.L0f10af48
    sb	$zero,11864($a1)
    lh	$at,264($a1)
    beq	$at,$a2,.L0f10af74
    sd	$ra,16($sp)
.L0f10af48:
    # Line 178
    lwc1	$f14,_lit_3f800000
.L0f10af4c:
    la	$t9,__iglooRotate
    mtc1	$zero,$f13
    mov.s	$f12,$f30
    jalr	$t9
    mov.s	$f15,$f13
    # Line 179
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10af74:
    # Line 175
    la	$t9,__iglooRestoreUsrMat
    # Line 174
    la	$v0,slowBegin
    # Line 173
    sw	$a2,2908($a1)
    # Line 175
    jalr	$t9
    # Line 174
    sw	$v0,216($a1)
    b	.L0f10af4c
    # Line 178
    lwc1	$f14,_lit_3f800000
.end im_rotatey

# Function: im_rotatez
# Declared: Line 181 (Source lines: 182-195)
# Address: 0x0f10af90 - 0x0f10b01c (Size: 140 bytes, Frame: 48)
.globl im_rotatez
.ent im_rotatez
im_rotatez:
    # Line 182
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a2,0xfff3
    addiu	$a2,$a2,-32072
    addu	$gp,$t9,$a2
    # Line 183
    la	$a1,gl_wstatep
    lw	$a1,0($a1)
    sd	$ra,16($sp)
    sdc1	$f30,0($sp)
    # Line 185
    lw	$at,2904($a1)
    # Line 182
    mov.s	$f30,$f12
    # Line 185
    li	$a2,1
    bne	$at,$a2,.L0f10afd4
    sb	$zero,11864($a1)
    lh	$at,264($a1)
    beq	$at,$a2,.L0f10b000
    sd	$ra,16($sp)
.L0f10afd4:
    # Line 194
    lwc1	$f15,_lit_3f800000
.L0f10afd8:
    la	$t9,__iglooRotate
    mtc1	$zero,$f13
    mov.s	$f12,$f30
    jalr	$t9
    mov.s	$f14,$f13
    # Line 195
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10b000:
    # Line 191
    la	$t9,__iglooRestoreUsrMat
    # Line 190
    la	$v0,slowBegin
    # Line 189
    sw	$a2,2908($a1)
    # Line 191
    jalr	$t9
    # Line 190
    sw	$v0,216($a1)
    b	.L0f10afd8
    # Line 194
    lwc1	$f15,_lit_3f800000
.end im_rotatez

.rdata
_lit_3dcccccd:
    .word 0x3dcccccd
_lit_3f800000:
    .word 0x3f800000

