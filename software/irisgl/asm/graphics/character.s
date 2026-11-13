# Source: ../igloo/graphics/character.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/character.c -o character.T
# Total Functions: 37

.text

# Function: gl_i_charstr
# Declared: Line 110 (Source lines: 110-116)
# Address: 0x0f097d8c - 0x0f097dd8 (Size: 76 bytes, Frame: 32)
.globl gl_i_charstr
.ent gl_i_charstr
gl_i_charstr:
    # Line 110
    move	$a1,$a0
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-19268
    bnez	$a0,.L0f097db4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    ld	$gp,0($sp)
    # Line 112
    jr	$ra
    addiu	$sp,$sp,32
.L0f097db4:
    # Line 114
    la	$t9,sub_0f090000
    sd	$ra,8($sp)
    addiu	$t9,$t9,32380
    bal gl_c_charstr
    li	$a0,1
    # Line 116
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_charstr

# Function: gl_c_charstr
# Declared: Line 118 (Source lines: 118-129)
# Address: 0x0f097dd8 - 0x0f097e7c (Size: 164 bytes, Frame: 48)
.globl gl_c_charstr
.ent gl_c_charstr
gl_c_charstr:
    # Line 118
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-19344
    bnez	$a0,.L0f097e08
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    ld	$gp,0($sp)
    # Line 122
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f097e08:
    # Line 124
    la	$t9,strlen
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    la	$t9,sub_0f0a0000
    move	$a2,$v0
    move	$a0,$zero
    addiu	$t9,$t9,-26604
    bal gl_i_lcharstr
    move	$a1,$s0
    bnez	$v0,.L0f097e48
    ld	$ra,16($sp)
    # Line 126
    ld	$s0,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f097e48:
    # Line 127
    move	$a3,$v0
    li	$a2,1
    la	$a1,sub_0f0a0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f090000
    addiu	$a1,$a1,-23712
    bal gl_ecallfunc
    addiu	$a0,$a0,32380
    # Line 129
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_c_charstr

# Function: drawcharstr
# Declared: Line 133 (Source lines: 134-170)
# Address: 0x0f097e7c - 0x0f097fc0 (Size: 324 bytes, Frame: 208)
.ent drawcharstr
drawcharstr:
    # Line 134
    addiu	$sp,$sp,-80
    sd	$s2,8($sp)
    sd	$gp,32($sp)
    sd	$s5,16($sp)
    lui	$s5,0xfffa
    addiu	$s5,$s5,-19508
    addu	$gp,$t9,$s5
    # Line 137
    la	$s2,gl_wstatep
    lw	$s2,0($s2)
    lw	$at,3016($s2)
    beqz	$at,.L0f097fa4
    # Line 134
    move	$s5,$a1
.L0f097eac:
    # Line 143
    lw	$at,3016($s2)
    lw	$at,8($at)
    sd	$at,24($sp)
    lw	$at,20($at)
    beqz	$at,.L0f097ee4
    sd	$ra,40($sp)
    # Line 149
    la	$t9,__GLlcharstr
    move	$a0,$zero
    move	$a1,$s5
    jalr	$t9
    ld	$s2,8($sp)
    ld	$s5,16($sp)
    b	.L0f097f38
    ld	$ra,40($sp)
.L0f097ee4:
    # Line 155
    la	$t9,__GLgl_beginstring
    jalr	$t9
    sd	$s3,48($sp)
    # Line 158
    lw	$a0,3016($s2)
    ld	$v0,24($sp)
    lw	$a0,12($a0)
    lw	$s3,12($v0)
    # Line 157
    lw	$v0,8($v0)
    # Line 158
    beqz	$a0,.L0f097f44
    sd	$v0,0($sp)
    # Line 162
    la	$t9,__igloo_outcharmaps
    move	$a1,$s5
    ld	$s2,8($sp)
    bal __igloo_outcharmaps
    ld	$s3,48($sp)
    ld	$s5,16($sp)
.L0f097f24:
    # Line 168
    la	$t9,__GLgl_endstring
.L0f097f28:
    ld	$s2,8($sp)
    jalr	$t9
    ld	$s3,48($sp)
    ld	$ra,40($sp)
.L0f097f38:
    ld	$gp,32($sp)
    # Line 170
    jr	$ra
    addiu	$sp,$sp,80
.L0f097f44:
    # Line 164
    lbu	$a3,0($s5)
    addiu	$s2,$s5,1
    beqz	$a3,.L0f097f24
    ld	$s5,16($sp)
    b	.L0f097f68
    ld	$s5,16($sp)
    lbu	$a3,0($s2)
.L0f097f60:
    beqz	$a3,.L0f097f9c
    addiu	$s2,$s2,1
.L0f097f68:
    sltu	$a2,$a3,$s3
    beqzl	$a2,.L0f097f60
    lbu	$a3,0($s2)
    # Line 166
    move	$a1,$zero
    ld	$a2,0($sp)
    la	$t9,__GLgl_outcharmap
    sll	$a0,$a3,0x2
    addu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    jalr	$t9
    addu	$a0,$a0,$a2
    b	.L0f097f60
    # Line 164
    lbu	$a3,0($s2)
.L0f097f9c:
    b	.L0f097f28
    # Line 168
    la	$t9,__GLgl_endstring
.L0f097fa4:
    # Line 139
    la	$t9,sub_0f0a0000
    sd	$ra,40($sp)
    addiu	$t9,$t9,-23652
    bal gl_free_fonts
    nop
    b	.L0f097eac
    ld	$ra,40($sp)
.end drawcharstr

# Function: gl_g_charst
# Declared: Line 173 (Source lines: 174-205)
# Address: 0x0f097fc0 - 0x0f098154 (Size: 404 bytes, Frame: 176)
.globl gl_g_charst
.ent gl_g_charst
gl_g_charst:
    # Line 174
    move	$a6,$a0
    move	$a2,$a1
    addiu	$sp,$sp,-560
    sd	$gp,528($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-19832
    beqz	$a0,.L0f09813c
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 180
    la	$v0,gl_openobjhdr
    lw	$a7,0($v0)
    bnez	$a7,.L0f0980dc
    # Line 193
    la	$t9,sub_0f0a0000
    # Line 187
    addiu	$v0,$sp,0
    # Line 180
    slti	$v1,$a2,511
    beqz	$v1,.L0f0980d8
    # Line 188
    li	$a3,-1
    # Line 187
    addiu	$a1,$sp,0
    # Line 188
    addiu	$a2,$a2,-1
    beq	$a2,$a3,.L0f09808c
    addiu	$t0,$a2,1
    andi	$a0,$t0,0x3
    beqz	$a0,.L0f09803c
    move	$t2,$a2
.L0f09801c:
    addiu	$a2,$a2,-1
    # Line 189
    addiu	$a1,$a1,1
    addiu	$a6,$a6,1
    lbu	$a4,-1($a6)
    addi	$a0,$a0,-1
    bnez	$a0,.L0f09801c
    sb	$a4,-1($a1)
    move	$t2,$a2
.L0f09803c:
    move	$t1,$a6
    move	$t3,$a1
    sra	$a5,$t0,0x2
    beqz	$a5,.L0f09808c
    move	$a0,$t3
    move	$a2,$t2
    move	$a1,$t1
.L0f098058:
    lbu	$a5,0($a1)
    sb	$a5,0($a0)
    lbu	$a4,1($a1)
    sb	$a4,1($a0)
    lbu	$v1,2($a1)
    addiu	$a0,$a0,4
    sb	$v1,-2($a0)
    addiu	$a1,$a1,4
    lbu	$at,-1($a1)
    # Line 188
    addiu	$a2,$a2,-4
    bne	$a2,$a3,.L0f098058
    # Line 189
    sb	$at,-1($a0)
    move	$a1,$a0
.L0f09808c:
    sd	$ra,536($sp)
    # Line 190
    sb	$zero,0($a1)
    # Line 196
    bnez	$a7,.L0f09810c
    sd	$zero,520($sp)
.L0f09809c:
    # Line 200
    la	$t9,sub_0f090000
    sd	$v0,512($sp)
    move	$a1,$v0
    addiu	$t9,$t9,32380
    bal gl_c_charstr
    li	$a0,1
    ld	$at,520($sp)
    beqz	$at,.L0f098130
    ld	$ra,536($sp)
    # Line 201
    la	$t9,gl_free
    ld	$a0,512($sp)
    jalr	$t9
    lw	$a1,-15484($gp)
    b	.L0f098130
    ld	$ra,536($sp)
.L0f0980d8:
    # Line 193
    la	$t9,sub_0f0a0000
.L0f0980dc:
    move	$a0,$zero
    sd	$ra,536($sp)
    addiu	$t9,$t9,-26604
    bal gl_i_lcharstr
    move	$a1,$a6
    beqz	$v0,.L0f098148
    ld	$ra,536($sp)
    # Line 196
    li	$v1,1
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    beqz	$at,.L0f09809c
    sd	$v1,520($sp)
.L0f09810c:
    # Line 203
    move	$a3,$v0
    li	$a2,1
    la	$a1,sub_0f0a0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f090000
    addiu	$a1,$a1,-23712
    bal gl_ecallfunc
    addiu	$a0,$a0,32380
    ld	$ra,536($sp)
.L0f098130:
    ld	$gp,528($sp)
    # Line 205
    jr	$ra
    addiu	$sp,$sp,560
.L0f09813c:
    ld	$gp,528($sp)
    # Line 180
    jr	$ra
    addiu	$sp,$sp,560
.L0f098148:
    ld	$gp,528($sp)
    # Line 195
    jr	$ra
    addiu	$sp,$sp,560
.end gl_g_charst

# Function: gl_findfont
# Declared: Line 209 (Source lines: 210-223)
# Address: 0x0f098154 - 0x0f0981dc (Size: 136 bytes, Frame: 48)
.globl gl_findfont
.ent gl_findfont
gl_findfont:
    # Line 211
    move	$v0,$zero
    # Line 210
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-20236
    # Line 211
    beqz	$a0,.L0f098194
    # Line 210
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 214
    move	$a1,$s0
    la	$t9,gl_find
    la	$a0,sub_0f030000
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$a0,-1464
    ld	$ra,16($sp)
.L0f098194:
    beqz	$v0,.L0f0981c0
    # Line 218
    la	$a2,gl_wstatep
    # Line 220
    lw	$a3,0($a2)
    sw	$v0,3016($a3)
    # Line 221
    lw	$a2,0($a2)
    lw	$a2,276($a2)
    sw	$s0,0($a2)
    ld	$s0,0($sp)
.L0f0981b4:
    ld	$gp,8($sp)
    # Line 223
    jr	$ra
    addiu	$sp,$sp,48
.L0f0981c0:
    # Line 218
    la	$t9,sub_0f0a0000
    sd	$ra,16($sp)
    addiu	$t9,$t9,-23652
    bal gl_free_fonts
    ld	$s0,0($sp)
    b	.L0f0981b4
    ld	$ra,16($sp)
.end gl_findfont

# Function: gl_g_getfont
# Declared: Line 225 (Source lines: 226-228)
# Address: 0x0f0981dc - 0x0f098238 (Size: 92 bytes, Frame: 16)
.globl gl_g_getfont
.ent gl_g_getfont
gl_g_getfont:
    # Line 226
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-20372 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$a2,3016($a2)
    beqz	$a2,.L0f098214
    # Line 227
    la	$t9,sub_0f0a0000
.L0f098204:
    # Line 228
    lw	$v0,4($a2)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f098214:
    sd	$ra,8($sp)
    # Line 227
    addiu	$t9,$t9,-23652
    bal gl_free_fonts
    nop
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    ld	$ra,8($sp)
    b	.L0f098204
    lw	$a2,3016($a2)
.end gl_g_getfont

# Function: gl_g_getheight
# Declared: Line 231 (Source lines: 232-234)
# Address: 0x0f098238 - 0x0f098298 (Size: 96 bytes, Frame: 16)
.globl gl_g_getheight
.ent gl_g_getheight
gl_g_getheight:
    # Line 232
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-20464 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$a2,3016($a2)
    beqz	$a2,.L0f098274
    # Line 233
    la	$t9,sub_0f0a0000
.L0f098260:
    # Line 234
    lw	$v0,8($a2)
    ld	$gp,0($sp)
    lh	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.L0f098274:
    sd	$ra,8($sp)
    # Line 233
    addiu	$t9,$t9,-23652
    bal gl_free_fonts
    nop
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    ld	$ra,8($sp)
    b	.L0f098260
    lw	$a2,3016($a2)
.end gl_g_getheight

# Function: gl_g_getdescender
# Declared: Line 237 (Source lines: 238-240)
# Address: 0x0f098298 - 0x0f0982f8 (Size: 96 bytes, Frame: 16)
.globl gl_g_getdescender
.ent gl_g_getdescender
gl_g_getdescender:
    # Line 238
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-20560 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    lw	$a2,3016($a2)
    beqz	$a2,.L0f0982d4
    # Line 239
    la	$t9,sub_0f0a0000
.L0f0982c0:
    # Line 240
    lw	$v0,8($a2)
    ld	$gp,0($sp)
    lh	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0982d4:
    sd	$ra,8($sp)
    # Line 239
    addiu	$t9,$t9,-23652
    bal gl_free_fonts
    nop
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    ld	$ra,8($sp)
    b	.L0f0982c0
    lw	$a2,3016($a2)
.end gl_g_getdescender

# Function: gl_i_font
# Declared: Line 244 (Source lines: 244-244)
# Address: 0x0f0982f8 - 0x0f098348 (Size: 80 bytes, Frame: 48)
.globl gl_i_font
.ent gl_i_font
gl_i_font:
    # Line 244
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-20656 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f09832c
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f09832c:
    la	$t9,gl_findfont
    bal gl_findfont
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_font

# Function: gl_c_font
# Declared: Line 244 (Source lines: 244-244)
# Address: 0x0f098348 - 0x0f0983c0 (Size: 120 bytes, Frame: 192)
.globl gl_c_font
.ent gl_c_font
gl_c_font:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-20736 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-21052($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0983a4
    move	$s8,$a0
.L0f098370:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_font
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0983a4:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,29024
    li	$a1,1
    b	.L0f098370
    sw	$a1,-21052($gp)
.end gl_c_font

# Function: gl_n_font
# Declared: Line 244 (Source lines: 244-244)
# Address: 0x0f0983c0 - 0x0f09841c (Size: 92 bytes, Frame: 48)
.globl gl_n_font
.ent gl_n_font
gl_n_font:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-20856 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0983f8
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0983f8:
    la	$t9,gl_findfont
    bal gl_findfont
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_font

# Function: gl_g_strwidth
# Declared: Line 246 (Source lines: 247-274)
# Address: 0x0f09841c - 0x0f098504 (Size: 232 bytes, Frame: 48)
.globl gl_g_strwidth
.ent gl_g_strwidth
gl_g_strwidth:
    # Line 247
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfffa (gp disp hi)
    # addiu	at,at,-20948 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 254
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    # Line 247
    move	$a1,$a0
    # Line 254
    beqz	$a0,.L0f0984b8
    move	$v0,$a4
    # Line 256
    lw	$v1,3016($a4)
    beqz	$v1,.L0f0984c8
    # Line 258
    la	$t9,sub_0f0a0000
.L0f098450:
    # Line 259
    lw	$a6,3016($v0)
    lw	$a6,8($a6)
    lw	$a2,20($a6)
    bnez	$a2,.L0f0984ec
    # Line 267
    addiu	$a4,$a1,1
    lbu	$a0,0($a1)
    beqz	$a0,.L0f0984ac
    # Line 263
    move	$v0,$zero
    # Line 267
    lw	$a1,12($a6)
    b	.L0f098488
    lw	$a5,8($a6)
.L0f09847c:
    lbu	$a0,0($a4)
    beqz	$a0,.L0f0984ac
    addiu	$a4,$a4,1
.L0f098488:
    sltu	$at,$a0,$a1
    beqz	$at,.L0f09847c
    # Line 269
    sll	$v1,$a0,0x2
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    lh	$v1,12($v1)
    b	.L0f09847c
    addu	$v0,$v1,$v0
.L0f0984ac:
    ld	$gp,0($sp)
    # Line 274
    jr	$ra
    addiu	$sp,$sp,48
.L0f0984b8:
    # Line 256
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0984c8:
    sd	$a1,16($sp)
    sd	$ra,24($sp)
    # Line 258
    addiu	$t9,$t9,-23652
    bal gl_free_fonts
    sd	$v0,8($sp)
    ld	$v0,8($sp)
    ld	$a1,16($sp)
    b	.L0f098450
    ld	$ra,24($sp)
.L0f0984ec:
    # Line 272
    la	$t9,__GLlstrwidth
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$zero
    b	.L0f0984ac
    ld	$ra,24($sp)
.end gl_g_strwidth

# Function: gl_g_strwid
# Declared: Line 279 (Source lines: 280-308)
# Address: 0x0f098504 - 0x0f098678 (Size: 372 bytes, Frame: 192)
.globl gl_g_strwid
.ent gl_g_strwid
gl_g_strwid:
    # Line 280
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$a3,0xfffa
    addiu	$a3,$a3,-21180
    addu	$gp,$t9,$a3
    # Line 286
    la	$a2,gl_wstatep
    # Line 280
    move	$a5,$a0
    sd	$s0,8($sp)
    # Line 286
    lw	$a2,0($a2)
    # Line 280
    move	$s0,$a1
    # Line 286
    beqz	$a0,.L0f098620
    move	$v0,$a2
    # Line 288
    lw	$a4,3016($a2)
    beqz	$a4,.L0f098634
    # Line 290
    la	$t9,sub_0f0a0000
.L0f098540:
    # Line 291
    lw	$a1,3016($v0)
    lw	$a1,8($a1)
    lw	$at,20($a1)
    # Line 298
    move	$a0,$a5
    # Line 291
    bnez	$at,.L0f098658
    # Line 295
    move	$v0,$zero
    # Line 300
    addiu	$s0,$s0,-1
    slti	$a3,$s0,0
    bnez	$a3,.L0f0985b4
    li	$a6,-1
    lw	$a2,12($a1)
    addiu	$a7,$s0,1
    andi	$a4,$a7,0x1
    beqz	$a4,.L0f0985a8
    lw	$a5,8($a1)
    # Line 301
    lbu	$a1,0($a0)
    # Line 300
    addiu	$s0,$s0,-1
    # Line 301
    slt	$at,$a1,$a2
    beqz	$at,.L0f0985a8
    addiu	$a0,$a0,1
    # Line 303
    sll	$v1,$a1,0x2
    addu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    lh	$v1,12($v1)
    addu	$v0,$v1,$v0
.L0f0985a8:
    sra	$a3,$a7,0x1
    bnezl	$a3,.L0f0985f8
    # Line 301
    lbu	$a1,0($a0)
.L0f0985b4:
    ld	$gp,0($sp)
    # Line 308
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0985c4:
    # Line 301
    lbu	$a1,1($a0)
    slt	$a4,$a1,$a2
    beqz	$a4,.L0f0985ec
    addiu	$a0,$a0,2
    # Line 303
    sll	$at,$a1,0x2
    addu	$at,$at,$a1
    sll	$at,$at,0x2
    addu	$at,$at,$a5
    lh	$at,12($at)
    addu	$v0,$at,$v0
.L0f0985ec:
    # Line 300
    beq	$s0,$a6,.L0f0985b4
    nop
    # Line 301
    lbu	$a1,0($a0)
.L0f0985f8:
    slt	$v1,$a1,$a2
    beqz	$v1,.L0f0985c4
    # Line 300
    addiu	$s0,$s0,-2
    # Line 303
    sll	$a3,$a1,0x2
    addu	$a3,$a3,$a1
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a5
    lh	$a3,12($a3)
    b	.L0f0985c4
    addu	$v0,$a3,$v0
.L0f098620:
    # Line 288
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f098634:
    sd	$a5,24($sp)
    sd	$ra,32($sp)
    # Line 290
    addiu	$t9,$t9,-23652
    bal gl_free_fonts
    sd	$v0,16($sp)
    ld	$v0,16($sp)
    ld	$a5,24($sp)
    b	.L0f098540
    ld	$ra,32($sp)
.L0f098658:
    # Line 306
    move	$a0,$zero
    la	$t9,__GLlstwid
    move	$a1,$a5
    sd	$ra,32($sp)
    jalr	$t9
    move	$a2,$s0
    b	.L0f0985b4
    ld	$ra,32($sp)
.end gl_g_strwid

# Function: gl_g_defrasterfont
# Declared: Line 313 (Source lines: 315-435)
# Address: 0x0f098678 - 0x0f098c20 (Size: 1448 bytes, Frame: 176)
.globl gl_g_defrasterfont
.ent gl_g_defrasterfont
gl_g_defrasterfont:
    # Line 315
    addiu	$sp,$sp,-176
    sd	$ra,80($sp)
    sd	$s5,40($sp)
    move	$s5,$a0
    sd	$a1,16($sp)
    sd	$s2,64($sp)
    move	$s2,$a2
    sd	$s0,48($sp)
    move	$s0,$a3
    sd	$a4,24($sp)
    sd	$s1,32($sp)
    move	$s1,$a5
    sd	$gp,56($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-21552
    beqz	$a0,.L0f098bec
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 333
    la	$t9,gl_find
    # Line 329
    la	$a0,sub_0f030000
    # Line 333
    move	$a1,$s5
    jalr	$t9
    # Line 329
    addiu	$a0,$a0,-1464
    # Line 336
    bnez	$v0,.L0f098b84
    ld	$ra,80($sp)
    beqz	$s2,.L0f098b84
.L0f0986dc:
    # Line 348
    move	$a5,$s0
    # Line 349
    move	$a3,$zero
    sd	$s6,96($sp)
    ld	$a2,24($sp)
    # Line 350
    move	$s6,$zero
    blez	$s2,.L0f098754
    # Line 347
    addu	$a2,$a2,$a2
    andi	$a6,$s2,0x1
    beqz	$a6,.L0f098748
    # Line 350
    move	$t0,$s2
    lbu	$at,2($a5)
    lbu	$v0,3($a5)
    addiu	$at,$at,15
    sra	$at,$at,0x4
    mult	$at,$v0
    lhu	$a4,0($a5)
    addu	$a7,$a4,$a4
    slt	$a7,$a2,$a7
    mflo	$v0
    beqzl	$a7,.L0f09873c
    addiu	$s6,$s6,1
    # Line 352
    addu	$a2,$v0,$a4
    addu	$a2,$a2,$a2
    # Line 350
    addiu	$s6,$s6,1
.L0f09873c:
    # Line 356
    addiu	$a5,$a5,8
    # Line 355
    addu	$a6,$v0,$v0
    addu	$a3,$a6,$a3
.L0f098748:
    sra	$a7,$t0,0x1
    bnezl	$a7,.L0f098844
    # Line 350
    lbu	$at,2($a5)
.L0f098754:
    slt	$at,$a2,$a3
    beqz	$at,.L0f098764
    ld	$s6,96($sp)
    # Line 359
    move	$a2,$a3
.L0f098764:
    # Line 362
    la	$t9,sub_0f0a0000
    sd	$s8,88($sp)
    move	$a0,$s2
    addiu	$t9,$t9,-24668
    bal gl_free_fonts
    move	$a1,$zero
    move	$at,$v0
    sd	$v0,72($sp)
    move	$s8,$v0
    beqz	$v0,.L0f098bcc
    ld	$ra,80($sp)
    sd	$s7,120($sp)
    ld	$s7,72($sp)
    sd	$s3,104($sp)
    # Line 365
    lw	$s3,8($s7)
    # Line 366
    lw	$s7,12($s7)
    sd	$s4,112($sp)
    # Line 367
    move	$s4,$zero
    beqz	$s7,.L0f0987d4
    # Line 365
    lw	$s3,8($s3)
    # Line 371
    la	$t9,__iglooPixelStorei
    li	$a1,2
    jalr	$t9
    li	$a0,3317
    # Line 372
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3314
.L0f0987d4:
    sd	$s5,0($sp)
    sd	$s8,8($sp)
    # Line 375
    blez	$s2,.L0f098ae0
    move	$s6,$zero
    la	$s8,sub_0f020000
    move	$s5,$zero
    b	.L0f098884
    addiu	$s8,$s8,28992
.L0f0987f4:
    # Line 350
    lbu	$a4,10($a5)
.L0f0987f8:
    lbu	$a6,11($a5)
    addiu	$a4,$a4,15
    sra	$a4,$a4,0x4
    mult	$a4,$a6
    addiu	$s6,$s6,2
    # Line 356
    addiu	$a5,$a5,16
    # Line 350
    lhu	$a4,-8($a5)
    # Line 355
    addu	$at,$v0,$v0
    addu	$a3,$at,$a3
    # Line 350
    addu	$v1,$a4,$a4
    slt	$v1,$a2,$v1
    mflo	$v0
    beqz	$v1,.L0f098838
    # Line 355
    addu	$a6,$v0,$v0
    # Line 352
    addu	$a2,$v0,$a4
    addu	$a2,$a2,$a2
.L0f098838:
    # Line 350
    beq	$s2,$s6,.L0f098754
    # Line 355
    addu	$a3,$a6,$a3
    # Line 350
    lbu	$at,2($a5)
.L0f098844:
    lbu	$v0,3($a5)
    addiu	$at,$at,15
    sra	$at,$at,0x4
    mult	$at,$v0
    lhu	$a4,0($a5)
    addu	$a7,$a4,$a4
    slt	$a7,$a2,$a7
    mflo	$v0
    beqzl	$a7,.L0f0987f8
    lbu	$a4,10($a5)
    # Line 352
    addu	$a2,$v0,$a4
    b	.L0f0987f4
    addu	$a2,$a2,$a2
.L0f098878:
    # Line 425
    addiu	$s0,$s0,8
.L0f09887c:
    # Line 375
    beq	$s2,$s6,.L0f098ae0
    # Line 424
    addiu	$s3,$s3,20
.L0f098884:
    # Line 376
    lbu	$a6,2($s0)
    sh	$a6,4($s3)
    # Line 377
    lbu	$a5,3($s0)
    sh	$a5,6($s3)
    # Line 378
    lb	$v1,4($s0)
    negu	$v1,$v1
    sh	$v1,8($s3)
    # Line 379
    lb	$at,5($s0)
    negu	$at,$at
    sh	$at,10($s3)
    # Line 380
    lh	$t0,6($s0)
    # Line 381
    sh	$zero,14($s3)
    # Line 380
    sh	$t0,12($s3)
    # Line 382
    lbu	$a7,2($s0)
    addiu	$a7,$a7,15
    sra	$a7,$a7,0x4
    # Line 383
    dsll32	$t0,$a7,0x10
    dsra32	$t0,$t0,0x10
    sh	$t0,16($s3)
    # Line 384
    lbu	$a5,3($s0)
    mult	$a7,$a5
    # Line 396
    ld	$a3,72($sp)
    # Line 400
    move	$a2,$zero
    # Line 384
    mflo	$a6
    beqz	$a6,.L0f098ad8
    # Line 375
    addiu	$s6,$s6,1
    # Line 398
    mult	$t0,$a5
    # Line 396
    lw	$a3,8($a3)
    lw	$a3,16($a3)
    lw	$a3,0($a3)
    # Line 397
    move	$a4,$t0
    # Line 399
    addu	$a3,$s5,$a3
    # Line 398
    mflo	$v0
    # Line 400
    blez	$v0,.L0f098a00
    # Line 399
    sw	$a3,0($s3)
    # Line 400
    move	$a5,$v0
    andi	$t0,$v0,0x3
    beqz	$t0,.L0f098954
    move	$t1,$a2
.L0f098920:
    # Line 401
    addiu	$a3,$a3,2
    addiu	$s5,$s5,2
    lhu	$a6,0($s0)
    addiu	$s4,$s4,1
    addi	$t0,$t0,-1
    addu	$a6,$a6,$a2
    addu	$a6,$a6,$a6
    addu	$a6,$a6,$s1
    lhu	$a6,0($a6)
    # Line 400
    addiu	$a2,$a2,1
    bnez	$t0,.L0f098920
    # Line 401
    sh	$a6,-2($a3)
    move	$t1,$a2
.L0f098954:
    sra	$a7,$a5,0x2
    move	$t3,$s4
    move	$t0,$a3
    move	$t2,$s5
    move	$a3,$t2
    beqz	$a7,.L0f098a00
    move	$a5,$t0
    move	$a2,$t3
    move	$t8,$t1
.L0f098978:
    lhu	$v1,0($s0)
    addu	$v1,$v1,$t8
    addu	$v1,$v1,$v1
    addu	$v1,$v1,$s1
    lhu	$v1,0($v1)
    sh	$v1,0($a5)
    lhu	$at,0($s0)
    # Line 400
    addiu	$t8,$t8,1
    # Line 401
    addu	$at,$at,$t8
    addu	$at,$at,$at
    addu	$at,$at,$s1
    lhu	$at,0($at)
    sh	$at,2($a5)
    lhu	$at,0($s0)
    # Line 400
    addiu	$t8,$t8,1
    # Line 401
    addu	$at,$at,$t8
    addu	$at,$at,$at
    addu	$at,$at,$s1
    lhu	$at,0($at)
    addiu	$a5,$a5,8
    sh	$at,-4($a5)
    addiu	$a3,$a3,8
    lhu	$at,0($s0)
    addiu	$a2,$a2,4
    # Line 400
    addiu	$t8,$t8,1
    # Line 401
    addu	$at,$at,$t8
    addu	$at,$at,$at
    addu	$at,$at,$s1
    lhu	$at,0($at)
    # Line 400
    addiu	$t8,$t8,1
    bne	$v0,$t8,.L0f098978
    # Line 401
    sh	$at,-2($a5)
    move	$s4,$a2
    move	$s5,$a3
.L0f098a00:
    # Line 405
    sll	$t0,$a4,0x4
    # Line 400
    andi	$a6,$s4,0x1
    beqz	$a6,.L0f098a18
    # Line 407
    move	$a2,$zero
    # Line 403
    addiu	$s5,$s5,2
    addiu	$s4,$s4,1
.L0f098a18:
    # Line 407
    lbu	$v1,3($s0)
    # Line 405
    lbu	$at,2($s0)
    # Line 407
    blez	$v1,.L0f098a64
    # Line 405
    subu	$t0,$t0,$at
    # Line 407
    addu	$a3,$a4,$a4
    move	$v0,$a3
    addu	$a5,$t0,$t0
    addu	$a5,$a5,$s8
    lh	$a5,0($a5)
.L0f098a3c:
    # Line 408
    lw	$at,0($s3)
    addu	$at,$at,$v0
    lhu	$a7,-2($at)
    and	$a7,$a7,$a5
    sh	$a7,-2($at)
    # Line 407
    lbu	$a6,3($s0)
    addiu	$a2,$a2,1
    slt	$a6,$a2,$a6
    bnez	$a6,.L0f098a3c
    addu	$v0,$v0,$a3
.L0f098a64:
    beqz	$s7,.L0f098878
    # Line 412
    la	$t9,__iglooNewList
    move	$a0,$s7
    jalr	$t9
    li	$a1,4864
    # Line 421
    addiu	$s7,$s7,1
    # Line 413
    lh	$a5,14($s3)
    mtc1	$a5,$f17
    lh	$a4,12($s3)
    cvt.s.w	$f17,$f17
    mtc1	$a4,$f16
    lw	$a6,0($s3)
    lh	$a3,10($s3)
    cvt.s.w	$f16,$f16
    lh	$a1,6($s3)
    mtc1	$a3,$f15
    lh	$a0,16($s3)
    lh	$a2,8($s3)
    cvt.s.w	$f15,$f15
    la	$t9,glBitmap
    mtc1	$a2,$f14
    sll	$a0,$a0,0x4
    jalr	$t9
    cvt.s.w	$f14,$f14
    # Line 420
    la	$t9,__iglooEndList
    jalr	$t9
    nop
    b	.L0f09887c
    # Line 425
    addiu	$s0,$s0,8
.L0f098ad8:
    # Line 387
    b	.L0f098a64
    sw	$zero,0($s3)
.L0f098ae0:
    ld	$a0,72($sp)
    # Line 427
    ld	$ra,16($sp)
    lw	$at,8($a0)
    sh	$ra,4($at)
    # Line 430
    la	$t9,sub_0f0a0000
    # Line 429
    lw	$a1,8($a0)
    # Line 430
    addiu	$t9,$t9,-23120
    # Line 429
    sw	$s2,12($a1)
    # Line 430
    bal gl_free_fonts
    lw	$a0,8($a0)
    ld	$s6,96($sp)
    ld	$s3,104($sp)
    ld	$s8,88($sp)
    ld	$s4,112($sp)
    ld	$s7,120($sp)
    ld	$a0,8($sp)
    la	$s0,sub_0f030000
    # Line 431
    la	$t9,sub_0f0a0000
    # Line 430
    lw	$a1,8($a0)
    addiu	$s0,$s0,-1464
    # Line 431
    addiu	$t9,$t9,-23344
    # Line 430
    sh	$v0,2($a1)
    # Line 431
    bal gl_free_fonts
    lw	$a0,8($a0)
    ld	$ra,8($sp)
    # Line 434
    la	$t9,gl_insert
    # Line 431
    lw	$at,8($ra)
    # Line 433
    ld	$t8,0($sp)
    # Line 434
    move	$a1,$ra
    # Line 431
    sh	$v0,0($at)
    # Line 433
    sw	$t8,4($ra)
    # Line 434
    bal gl_insert
    move	$a0,$s0
    ld	$gp,56($sp)
    # Line 435
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$ra,80($sp)
    ld	$s2,64($sp)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f098b84:
    # Line 338
    la	$t9,gl_remove
    la	$a0,sub_0f030000
    move	$a1,$s5
    bal gl_remove
    addiu	$a0,$a0,-1464
    # Line 339
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-24792
    bal gl_free_fonts
    # Line 338
    move	$a0,$v0
    # Line 339
    bnez	$s2,.L0f0986dc
    ld	$ra,80($sp)
    ld	$gp,56($sp)
    # Line 340
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f098bcc:
    ld	$gp,56($sp)
    # Line 363
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s5,40($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f098bec:
    # Line 328
    la	$t9,gl_ErrorHandler
    lw	$a2,-15480($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,55
    ld	$gp,56($sp)
    # Line 329
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$ra,80($sp)
    ld	$s2,64($sp)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end gl_g_defrasterfont

# Function: gl_g_deflfont
# Declared: Line 439 (Source lines: 442-564)
# Address: 0x0f098c20 - 0x0f0991c8 (Size: 1448 bytes, Frame: 160)
.globl gl_g_deflfont
.ent gl_g_deflfont
gl_g_deflfont:
    # Line 442
    addiu	$sp,$sp,-160
    sd	$s6,56($sp)
    move	$s6,$a0
    sd	$s7,32($sp)
    move	$s7,$a1
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s1,24($sp)
    move	$s1,$a4
    sd	$gp,48($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-23000
    beqz	$a0,.L0f099148
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 454
    beqz	$s7,.L0f099180
    # Line 468
    move	$a1,$s0
    # Line 469
    move	$a0,$zero
    sd	$s3,88($sp)
    # Line 470
    addu	$s3,$a3,$a3
    sd	$s5,96($sp)
    # Line 471
    blez	$s7,.L0f098ccc
    move	$s5,$zero
    andi	$v1,$s7,0x1
    beqz	$v1,.L0f098cc0
    move	$a3,$s7
    lh	$a6,8($a1)
    lh	$a5,10($a1)
    addiu	$a6,$a6,15
    sra	$a6,$a6,0x4
    mult	$a5,$a6
    lw	$a2,4($a1)
    addu	$a2,$a2,$a2
    sltu	$v1,$s3,$a2
    mflo	$v0
    beqz	$v1,.L0f098cb4
    addu	$v0,$v0,$v0
    # Line 473
    addu	$s3,$v0,$a2
.L0f098cb4:
    # Line 471
    addiu	$s5,$s5,1
    # Line 477
    addiu	$a1,$a1,20
    # Line 476
    addu	$a0,$v0,$a0
.L0f098cc0:
    sra	$at,$a3,0x1
    bnezl	$at,.L0f098d90
    # Line 471
    lh	$a6,8($a1)
.L0f098ccc:
    slt	$v1,$s3,$a0
    beqz	$v1,.L0f098ce4
    # Line 485
    move	$a1,$s6
    sd	$ra,72($sp)
    # Line 480
    move	$s3,$a0
    # Line 485
    move	$a1,$s6
.L0f098ce4:
    # Line 480
    la	$s5,sub_0f030000
    # Line 485
    la	$t9,gl_find
    sd	$ra,72($sp)
    # Line 480
    addiu	$s5,$s5,-1464
    # Line 485
    jalr	$t9
    move	$a0,$s5
    move	$at,$v0
    bnez	$v0,.L0f098dc4
    sd	$v0,0($sp)
    # Line 491
    move	$a2,$s3
    move	$a1,$s7
    la	$t9,sub_0f0a0000
    move	$a0,$zero
    # Line 490
    li	$v0,1
    # Line 491
    addiu	$t9,$t9,-24668
    bal gl_free_fonts
    sd	$v0,8($sp)
    sd	$v0,0($sp)
    ld	$s3,88($sp)
    move	$ra,$v0
    beqz	$v0,.L0f099128
    ld	$ra,72($sp)
    sd	$s4,104($sp)
    sd	$s2,80($sp)
    # Line 493
    b	.L0f098dfc
    lw	$s2,8($v0)
.L0f098d4c:
    # Line 471
    lh	$a6,28($a1)
    lh	$a5,30($a1)
    addiu	$a6,$a6,15
    sra	$a6,$a6,0x4
    mult	$a5,$a6
    lw	$a2,24($a1)
    # Line 477
    addiu	$a1,$a1,40
    # Line 476
    addu	$a0,$v0,$a0
    # Line 471
    addu	$a2,$a2,$a2
    sltu	$v1,$s3,$a2
    mflo	$at
    beqz	$v1,.L0f098d84
    addu	$v0,$at,$at
    # Line 473
    addu	$s3,$v0,$a2
.L0f098d84:
    # Line 471
    beq	$s7,$s5,.L0f098ccc
    # Line 476
    addu	$a0,$v0,$a0
    # Line 471
    lh	$a6,8($a1)
.L0f098d90:
    lh	$a5,10($a1)
    addiu	$a6,$a6,15
    sra	$a6,$a6,0x4
    mult	$a5,$a6
    lw	$a2,4($a1)
    addiu	$s5,$s5,2
    addu	$a2,$a2,$a2
    sltu	$v1,$s3,$a2
    mflo	$v0
    beqz	$v1,.L0f098d4c
    addu	$v0,$v0,$v0
    b	.L0f098d4c
    # Line 473
    addu	$s3,$v0,$a2
.L0f098dc4:
    # Line 495
    move	$s5,$zero
    # Line 499
    move	$a3,$s3
    move	$a2,$s7
    move	$a1,$zero
    la	$t9,sub_0f0a0000
    sd	$s2,80($sp)
    # Line 496
    lw	$s2,8($v0)
    # Line 499
    addiu	$t9,$t9,-24228
    bal gl_free_fonts
    move	$a0,$s2
    sd	$s5,8($sp)
    ld	$s3,88($sp)
    beqz	$v0,.L0f099104
    ld	$ra,72($sp)
.L0f098dfc:
    sd	$s6,16($sp)
    sd	$s8,64($sp)
    sd	$s4,104($sp)
    # Line 503
    move	$s4,$zero
    # Line 505
    lw	$s3,16($s2)
    move	$s5,$zero
    blez	$s7,.L0f099060
    lw	$s3,4($s3)
    la	$s8,sub_0f020000
    move	$s6,$zero
    b	.L0f098f70
    addiu	$s8,$s8,28992
    move	$t1,$a2
.L0f098e30:
    sra	$at,$a7,0x2
    move	$t3,$s4
    move	$t0,$a3
    move	$t2,$s6
    move	$a3,$t2
    beqz	$at,.L0f098edc
    move	$a7,$t0
    move	$a2,$t3
    move	$t8,$t1
.L0f098e54:
    # Line 535
    lw	$v1,4($s0)
    addu	$v1,$v1,$t8
    addu	$v1,$v1,$v1
    addu	$v1,$v1,$s1
    lhu	$v1,0($v1)
    sh	$v1,0($a7)
    lw	$at,4($s0)
    # Line 534
    addiu	$t8,$t8,1
    # Line 535
    addu	$at,$at,$t8
    addu	$at,$at,$at
    addu	$at,$at,$s1
    lhu	$at,0($at)
    sh	$at,2($a7)
    lw	$at,4($s0)
    # Line 534
    addiu	$t8,$t8,1
    # Line 535
    addu	$at,$at,$t8
    addu	$at,$at,$at
    addu	$at,$at,$s1
    lhu	$at,0($at)
    addiu	$a7,$a7,8
    sh	$at,-4($a7)
    addiu	$a3,$a3,8
    lw	$v1,4($s0)
    addiu	$a2,$a2,4
    # Line 534
    addiu	$t8,$t8,1
    # Line 535
    addu	$v1,$v1,$t8
    addu	$v1,$v1,$v1
    addu	$v1,$v1,$s1
    lhu	$v1,0($v1)
    # Line 534
    addiu	$t8,$t8,1
    bne	$v0,$t8,.L0f098e54
    # Line 535
    sh	$v1,-2($a7)
    move	$s4,$a2
    move	$s6,$a3
.L0f098edc:
    # Line 534
    andi	$a5,$s4,0x1
    beqz	$a5,.L0f098ef0
    # Line 539
    sll	$t0,$a4,0x4
    # Line 537
    addiu	$s6,$s6,2
    addiu	$s4,$s4,1
.L0f098ef0:
    # Line 541
    lh	$v1,10($s0)
    # Line 539
    lh	$at,8($s0)
    # Line 541
    move	$a2,$zero
    blez	$v1,.L0f098f40
    # Line 539
    subu	$t0,$t0,$at
    # Line 541
    addu	$a3,$a4,$a4
    move	$v0,$a3
    addu	$a7,$t0,$t0
    addu	$a7,$a7,$s8
    lh	$a7,0($a7)
.L0f098f18:
    # Line 542
    lw	$a5,8($s3)
    addu	$a5,$a5,$v0
    lhu	$v1,-2($a5)
    and	$v1,$v1,$a7
    sh	$v1,-2($a5)
    # Line 541
    lh	$at,10($s0)
    addiu	$a2,$a2,1
    slt	$at,$a2,$at
    bnez	$at,.L0f098f18
    addu	$v0,$v0,$a3
.L0f098f40:
    lw	$a1,4($s3)
.L0f098f44:
    # Line 546
    la	$t9,gl_remove
    bal gl_remove
    lw	$a0,20($s2)
    # Line 548
    la	$t9,gl_insert
    move	$a1,$s3
    # Line 505
    addiu	$s3,$s3,28
    # Line 548
    bal gl_insert
    lw	$a0,20($s2)
    # Line 505
    addiu	$s0,$s0,20
    beq	$s7,$s5,.L0f099064
    # Line 554
    la	$t9,sub_0f0a0000
.L0f098f70:
    # Line 508
    sw	$zero,0($s3)
    # Line 509
    lh	$t0,8($s0)
    sh	$t0,12($s3)
    # Line 510
    lh	$a7,10($s0)
    sh	$a7,14($s3)
    # Line 511
    lw	$a1,0($s0)
    sw	$a1,4($s3)
    # Line 512
    lh	$a6,12($s0)
    negu	$a6,$a6
    sh	$a6,16($s3)
    # Line 513
    lh	$a5,14($s0)
    negu	$a5,$a5
    sh	$a5,18($s3)
    # Line 514
    lh	$v1,16($s0)
    sh	$v1,20($s3)
    # Line 515
    lh	$at,18($s0)
    sh	$at,22($s3)
    # Line 516
    lh	$t0,8($s0)
    addiu	$t0,$t0,15
    sra	$t0,$t0,0x4
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    sh	$t0,24($s3)
    # Line 519
    lh	$a7,10($s0)
    # Line 529
    ld	$a3,0($sp)
    # Line 534
    move	$a2,$zero
    # Line 519
    beqz	$a7,.L0f099058
    # Line 505
    addiu	$s5,$s5,1
    # Line 519
    lh	$at,8($s0)
    beqz	$at,.L0f099058
    nop
    # Line 531
    mult	$a7,$t0
    # Line 529
    lw	$a3,8($a3)
    lw	$a3,16($a3)
    lw	$a3,0($a3)
    # Line 530
    move	$a4,$t0
    # Line 533
    addu	$a3,$s6,$a3
    # Line 531
    mflo	$v0
    # Line 534
    blez	$v0,.L0f098edc
    # Line 533
    sw	$a3,8($s3)
    # Line 534
    move	$a7,$v0
    andi	$t0,$v0,0x3
    beqz	$t0,.L0f098e30
    move	$t1,$a2
.L0f099020:
    # Line 535
    addiu	$a3,$a3,2
    addiu	$s6,$s6,2
    lw	$a5,4($s0)
    addiu	$s4,$s4,1
    addi	$t0,$t0,-1
    addu	$a5,$a5,$a2
    addu	$a5,$a5,$a5
    addu	$a5,$a5,$s1
    lhu	$a5,0($a5)
    # Line 534
    addiu	$a2,$a2,1
    bnez	$t0,.L0f099020
    # Line 535
    sh	$a5,-2($a3)
    b	.L0f098e30
    move	$t1,$a2
.L0f099058:
    # Line 520
    b	.L0f098f44
    sw	$zero,8($s3)
.L0f099060:
    # Line 554
    la	$t9,sub_0f0a0000
.L0f099064:
    move	$a0,$s2
    addiu	$t9,$t9,-23344
    bal gl_free_fonts
    # Line 551
    sw	$zero,12($s2)
    # Line 555
    move	$a0,$s2
    # Line 554
    sh	$v0,0($s2)
    ld	$s8,64($sp)
    ld	$s4,104($sp)
    # Line 555
    la	$t9,sub_0f0a0000
    ld	$s0,8($sp)
    ld	$s5,96($sp)
    addiu	$t9,$t9,-23120
    bal gl_free_fonts
    ld	$s3,88($sp)
    # Line 556
    la	$t9,sub_0f0a0000
    move	$a0,$s2
    addiu	$t9,$t9,-23568
    bal gl_free_fonts
    # Line 555
    sh	$v0,2($s2)
    # Line 556
    sh	$v0,4($s2)
    ld	$s2,80($sp)
    beqz	$s0,.L0f0990e8
    ld	$ra,72($sp)
    ld	$s2,80($sp)
    # Line 562
    ld	$at,0($sp)
    la	$a0,sub_0f030000
    # Line 561
    ld	$ra,16($sp)
    # Line 562
    la	$t9,gl_insert
    addiu	$a0,$a0,-1464
    # Line 561
    sw	$ra,4($at)
    # Line 562
    bal gl_insert
    move	$a1,$at
    ld	$ra,72($sp)
.L0f0990e8:
    ld	$gp,48($sp)
    # Line 564
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$s6,56($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f099104:
    ld	$gp,48($sp)
    # Line 500
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$s2,80($sp)
    ld	$s5,96($sp)
    ld	$s6,56($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f099128:
    ld	$gp,48($sp)
    # Line 492
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$s5,96($sp)
    ld	$s6,56($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f099148:
    # Line 453
    lw	$a2,-15476($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,72($sp)
    jalr	$t9
    li	$a0,55
    ld	$gp,48($sp)
    # Line 454
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$ra,72($sp)
    ld	$s6,56($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f099180:
    # Line 459
    move	$a1,$s6
    la	$t9,gl_remove
    la	$a0,sub_0f030000
    sd	$ra,72($sp)
    bal gl_remove
    addiu	$a0,$a0,-1464
    # Line 460
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-24792
    bal gl_free_fonts
    # Line 459
    move	$a0,$v0
    ld	$gp,48($sp)
    # Line 461
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$ra,72($sp)
    ld	$s6,56($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end gl_g_deflfont

# Function: gl_g_lstrwidth
# Declared: Line 567 (Source lines: 568-605)
# Address: 0x0f0991c8 - 0x0f099368 (Size: 416 bytes, Frame: 208)
.globl gl_g_lstrwidth
.ent gl_g_lstrwidth
gl_g_lstrwidth:
    # Line 568
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    sd	$s2,24($sp)
    lui	$s2,0xfffa
    addiu	$s2,$s2,-24448
    addu	$gp,$t9,$s2
    # Line 573
    la	$a4,gl_wstatep
    # Line 568
    sw	$a1,76($sp)
    # Line 573
    lw	$a4,0($a4)
    # Line 568
    move	$s2,$a0
    # Line 573
    beqz	$a1,.L0f099354
    move	$v0,$a4
    # Line 575
    lw	$at,3016($a4)
    beqz	$at,.L0f099330
    # Line 577
    la	$t9,sub_0f0a0000
.L0f099204:
    # Line 579
    lw	$a4,3016($v0)
    lw	$a4,8($a4)
    sd	$ra,32($sp)
    sd	$s3,40($sp)
    # Line 580
    lw	$s3,20($a4)
    sd	$s0,56($sp)
    sd	$s1,8($sp)
    # Line 581
    bnez	$s3,.L0f099260
    move	$s1,$zero
    # Line 590
    addiu	$a1,$sp,76
    # Line 589
    lw	$s3,8($a4)
    # Line 590
    move	$a0,$s2
    # Line 588
    la	$s0,sub_0f0a0000
    sd	$s3,0($sp)
    lw	$s3,12($a4)
    addiu	$s0,$s0,-26260
    # Line 590
    bal gl_i_lcharstr
    move	$t9,$s0
    move	$a1,$v0
    beqz	$v0,.L0f0992c8
    ld	$ra,32($sp)
    b	.L0f099304
    sltu	$v1,$a1,$s3
.L0f099260:
    la	$s0,sub_0f0a0000
    # Line 596
    addiu	$a1,$sp,76
    move	$a0,$s2
    # Line 590
    addiu	$s0,$s0,-26260
    # Line 596
    bal gl_i_lcharstr
    move	$t9,$s0
    move	$a1,$v0
    beqz	$v0,.L0f0992c8
    ld	$ra,32($sp)
    b	.L0f0992a8
    # Line 598
    la	$t9,gl_find
.L0f09928c:
    # Line 596
    move	$a0,$s2
.L0f099290:
    addiu	$a1,$sp,76
    bal gl_i_lcharstr
    move	$t9,$s0
    beqz	$v0,.L0f0992c4
    move	$a1,$v0
    # Line 598
    la	$t9,gl_find
.L0f0992a8:
    jalr	$t9
    move	$a0,$s3
    beqz	$v0,.L0f099290
    # Line 596
    move	$a0,$s2
    # Line 601
    lh	$at,20($v0)
    b	.L0f09928c
    addu	$s1,$at,$s1
.L0f0992c4:
    ld	$ra,32($sp)
.L0f0992c8:
    ld	$gp,16($sp)
    # Line 605
    ld	$s0,56($sp)
    move	$v0,$s1
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0992e8:
    # Line 590
    move	$a0,$s2
    addiu	$a1,$sp,76
    bal gl_i_lcharstr
    move	$t9,$s0
    beqz	$v0,.L0f099328
    move	$a1,$v0
    sltu	$v1,$a1,$s3
.L0f099304:
    # Line 592
    sll	$a2,$a1,0x2
    # Line 590
    beqz	$v1,.L0f0992e8
    # Line 592
    addu	$a2,$a2,$a1
    ld	$a3,0($sp)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    lh	$a2,12($a2)
    b	.L0f0992e8
    addu	$s1,$a2,$s1
.L0f099328:
    b	.L0f0992c8
    ld	$ra,32($sp)
.L0f099330:
    sd	$ra,32($sp)
    # Line 577
    addiu	$t9,$t9,-23652
    bal gl_free_fonts
    sd	$v0,48($sp)
    sd	$s3,40($sp)
    sd	$s1,8($sp)
    ld	$v0,48($sp)
    b	.L0f099204
    ld	$ra,32($sp)
.L0f099354:
    # Line 575
    move	$v0,$zero
    ld	$gp,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_g_lstrwidth

# Function: gl_g_lstwid
# Declared: Line 610 (Source lines: 612-626)
# Address: 0x0f099368 - 0x0f099404 (Size: 156 bytes, Frame: 208)
.globl gl_g_lstwid
.ent gl_g_lstwid
gl_g_lstwid:
    # Line 612
    addiu	$sp,$sp,-80
    sd	$a0,24($sp)
    sd	$a1,16($sp)
    sd	$gp,32($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-24864
    bnez	$a1,.L0f099398
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 617
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f099398:
    # Line 619
    la	$t9,sub_0f0a0000
    ld	$a0,24($sp)
    sd	$ra,40($sp)
    addiu	$t9,$t9,-26604
    bal gl_i_lcharstr
    ld	$a1,16($sp)
    sd	$v0,8($sp)
    bnez	$v0,.L0f0993cc
    ld	$ra,40($sp)
    # Line 621
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0993cc:
    # Line 623
    la	$t9,__GLlstrwidth
    ld	$a0,24($sp)
    jalr	$t9
    ld	$a1,16($sp)
    # Line 624
    la	$t9,gl_free
    sd	$v0,0($sp)
    ld	$a0,8($sp)
    jalr	$t9
    lw	$a1,-15472($gp)
    # Line 626
    ld	$ra,40($sp)
    ld	$v0,0($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_g_lstwid

# Function: mbdrawcharstr
# Declared: Line 630 (Source lines: 631-667)
# Address: 0x0f099404 - 0x0f0995a8 (Size: 420 bytes, Frame: 224)
.ent mbdrawcharstr
mbdrawcharstr:
    # Line 631
    addiu	$sp,$sp,-96
    sd	$gp,24($sp)
    lui	$a3,0xfffa
    addiu	$a3,$a3,-25020
    addu	$gp,$t9,$a3
    # Line 635
    la	$a0,gl_wstatep
    sd	$s1,16($sp)
    # Line 631
    move	$s1,$a2
    # Line 635
    lw	$a0,0($a0)
    # Line 631
    sw	$a1,76($sp)
    # Line 635
    beqz	$a1,.L0f099598
    move	$v0,$a0
    # Line 639
    lw	$a4,3016($a0)
    sd	$ra,32($sp)
    beqz	$a4,.L0f099580
    sd	$v0,0($sp)
    # Line 642
    la	$t9,__GLgl_beginstring
.L0f099448:
    jalr	$t9
    sd	$s2,40($sp)
    ld	$s2,0($sp)
    # Line 644
    lw	$s2,3016($s2)
    lw	$s2,8($s2)
    sd	$s2,8($sp)
    # Line 645
    lw	$s2,20($s2)
    bnez	$s2,.L0f09949c
    sd	$s0,48($sp)
    # Line 652
    addiu	$a1,$sp,76
    # Line 651
    ld	$s2,8($sp)
    la	$s0,sub_0f0a0000
    # Line 652
    move	$a0,$s1
    # Line 651
    lw	$s2,12($s2)
    addiu	$s0,$s0,-26260
    # Line 652
    bal gl_i_lcharstr
    move	$t9,$s0
    beqz	$v0,.L0f09950c
    # Line 666
    la	$t9,__GLgl_endstring
    b	.L0f099544
    # Line 652
    sltu	$at,$v0,$s2
.L0f09949c:
    la	$s0,sub_0f0a0000
    # Line 656
    addiu	$a1,$sp,76
    move	$a0,$s1
    # Line 652
    addiu	$s0,$s0,-26260
    # Line 656
    bal gl_i_lcharstr
    move	$t9,$s0
    beqz	$v0,.L0f09950c
    # Line 666
    la	$t9,__GLgl_endstring
    b	.L0f0994dc
    # Line 658
    la	$t9,gl_find
    # Line 656
    move	$a0,$s1
.L0f0994c8:
    addiu	$a1,$sp,76
    bal gl_i_lcharstr
    move	$t9,$s0
    beqz	$v0,.L0f099508
    # Line 658
    la	$t9,gl_find
.L0f0994dc:
    move	$a0,$s2
    jalr	$t9
    move	$a1,$v0
    beqz	$v0,.L0f0994c8
    # Line 656
    move	$a0,$s1
    # Line 661
    la	$t9,__GLgl_outcharmap
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$v0,8
    b	.L0f0994c8
    # Line 656
    move	$a0,$s1
.L0f099508:
    # Line 666
    la	$t9,__GLgl_endstring
.L0f09950c:
    ld	$s2,40($sp)
    jalr	$t9
    ld	$s0,48($sp)
    # Line 667
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
    # Line 652
    move	$a0,$s1
.L0f099530:
    addiu	$a1,$sp,76
    bal gl_i_lcharstr
    move	$t9,$s0
    beqz	$v0,.L0f099578
    sltu	$at,$v0,$s2
.L0f099544:
    beqz	$at,.L0f099530
    move	$a0,$s1
    # Line 654
    move	$a1,$zero
    la	$t9,__GLgl_outcharmap
    ld	$a0,8($sp)
    sll	$a2,$v0,0x2
    addu	$a2,$a2,$v0
    lw	$a0,8($a0)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a0,$a0,$a2
    b	.L0f099530
    # Line 652
    move	$a0,$s1
.L0f099578:
    b	.L0f09950c
    # Line 666
    la	$t9,__GLgl_endstring
.L0f099580:
    # Line 641
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-23652
    bal gl_free_fonts
    nop
    b	.L0f099448
    # Line 642
    la	$t9,__GLgl_beginstring
.L0f099598:
    ld	$gp,24($sp)
    # Line 639
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end mbdrawcharstr

# Function: gl_c_lchstr
# Declared: Line 670 (Source lines: 670-679)
# Address: 0x0f0995a8 - 0x0f099618 (Size: 112 bytes, Frame: 192)
.globl gl_c_lchstr
.ent gl_c_lchstr
gl_c_lchstr:
    # Line 670
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-25440
    bnez	$a1,.L0f0995d0
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    ld	$gp,8($sp)
    # Line 674
    jr	$ra
    addiu	$sp,$sp,64
.L0f0995d0:
    # Line 676
    la	$t9,sub_0f0a0000
    sd	$ra,16($sp)
    addiu	$t9,$t9,-26604
    bal gl_i_lcharstr
    ld	$a0,0($sp)
    move	$a3,$v0
    # Line 677
    ld	$a4,0($sp)
    li	$a2,2
    la	$a1,sub_0f0a0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0a0000
    addiu	$a1,$a1,-23712
    bal gl_ecallfunc
    addiu	$a0,$a0,-27644
    # Line 679
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_c_lchstr

# Function: gl_i_lchstr
# Declared: Line 681 (Source lines: 681-693)
# Address: 0x0f099618 - 0x0f099690 (Size: 120 bytes, Frame: 192)
.globl gl_i_lchstr
.ent gl_i_lchstr
gl_i_lchstr:
    # Line 681
    addiu	$sp,$sp,-64
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-25552
    bnez	$a1,.L0f099640
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    ld	$gp,16($sp)
    # Line 686
    jr	$ra
    addiu	$sp,$sp,64
.L0f099640:
    # Line 688
    la	$t9,sub_0f0a0000
    sd	$ra,24($sp)
    addiu	$t9,$t9,-26604
    bal gl_i_lcharstr
    ld	$a0,8($sp)
    move	$a1,$v0
    # Line 690
    la	$t9,sub_0f0a0000
    sd	$v0,0($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,-27644
    bal gl_g_lstwid
    li	$a0,1
    # Line 691
    la	$t9,gl_free
    ld	$a0,0($sp)
    jalr	$t9
    lw	$a1,-15468($gp)
    # Line 693
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_i_lchstr

# Function: gl_c_lcharstr
# Declared: Line 695 (Source lines: 695-709)
# Address: 0x0f099690 - 0x0f099754 (Size: 196 bytes, Frame: 48)
.globl gl_c_lcharstr
.ent gl_c_lcharstr
gl_c_lcharstr:
    # Line 695
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$gp,0($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-25672
    bnez	$a1,.L0f0996cc
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    ld	$gp,0($sp)
    # Line 700
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0996cc:
    # Line 702
    la	$t9,sub_0f0a0000
    move	$a0,$s0
    sd	$ra,24($sp)
    addiu	$t9,$t9,-26720
    bal gl_i_lcharstr
    move	$a1,$s1
    # Line 703
    la	$t9,sub_0f0a0000
    # Line 702
    move	$a2,$v0
    # Line 703
    move	$a0,$s0
    addiu	$t9,$t9,-26604
    bal gl_i_lcharstr
    move	$a1,$s1
    bnez	$v0,.L0f099718
    ld	$ra,24($sp)
    # Line 705
    ld	$s1,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f099718:
    # Line 707
    move	$a4,$s0
    move	$a3,$v0
    li	$a2,2
    la	$a1,sub_0f0a0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0a0000
    addiu	$a1,$a1,-23712
    bal gl_ecallfunc
    addiu	$a0,$a0,-27644
    ld	$gp,0($sp)
    # Line 709
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_c_lcharstr

# Function: gl_i_lcharstr
# Declared: Line 711 (Source lines: 711-717)
# Address: 0x0f099754 - 0x0f0997a0 (Size: 76 bytes, Frame: 32)
.globl gl_i_lcharstr
.ent gl_i_lcharstr
gl_i_lcharstr:
    # Line 711
    move	$a2,$a0
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfffa
    addiu	$at,$at,-25868
    bnez	$a1,.L0f09977c
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    ld	$gp,0($sp)
    # Line 713
    jr	$ra
    addiu	$sp,$sp,32
.L0f09977c:
    # Line 715
    la	$t9,sub_0f0a0000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-27644
    bal gl_g_lstwid
    li	$a0,1
    # Line 717
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_i_lcharstr

# Function: mbstrlen
# Declared: Line 727 (Source lines: 728-735)
# Address: 0x0f0997a0 - 0x0f099814 (Size: 116 bytes, Frame: 48)
.ent mbstrlen
mbstrlen:
    # Line 728
    addiu	$sp,$sp,-48
    sd	$s2,8($sp)
    move	$s2,$a0
    sw	$a1,44($sp)
    # Line 732
    addiu	$a1,$sp,44
    sd	$s0,24($sp)
    sd	$s1,16($sp)
    # Line 728
    la	$s1,sub_0f0a0000
    # Line 731
    move	$s0,$zero
    sd	$ra,0($sp)
    # Line 728
    addiu	$s1,$s1,-26260
    # Line 732
    bal gl_i_lcharstr
    move	$t9,$s1
    beqz	$v0,.L0f0997fc
    ld	$ra,0($sp)
    addiu	$a1,$sp,44
.L0f0997e0:
    move	$a0,$s2
    # Line 733
    addiu	$s0,$s0,1
    # Line 732
    bal gl_i_lcharstr
    move	$t9,$s1
    bnez	$v0,.L0f0997e0
    addiu	$a1,$sp,44
    ld	$ra,0($sp)
.L0f0997fc:
    # Line 735
    move	$v0,$s0
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end mbstrlen

# Function: mbmkstr
# Declared: Line 745 (Source lines: 746-785)
# Address: 0x0f099814 - 0x0f09996c (Size: 344 bytes, Frame: 208)
.ent mbmkstr
mbmkstr:
    # Line 746
    move	$v0,$a2
    addiu	$sp,$sp,-80
    # Line 751
    beqz	$a0,.L0f099954
    sd	$a1,8($sp)
    li	$at,1
    beq	$a0,$at,.L0f09985c
    li	$v1,256
    beq	$a0,$v1,.L0f09985c
    li	$a3,16
    beq	$a0,$a3,.L0f099960
    li	$a4,17
    beq	$a0,$a4,.L0f099948
    li	$at,257
    beql	$a0,$at,.L0f09994c
    sd	$s0,40($sp)
    # Line 767
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,80
.L0f09985c:
    sd	$s0,40($sp)
    # Line 757
    li	$s0,2
.L0f099864:
    # Line 768
    lui	$a0,0x1
    ori	$a0,$a0,0x86a0
    slt	$v1,$a0,$v0
    beqz	$v1,.L0f099880
    nop
    sd	$ra,32($sp)
    # Line 771
    move	$v0,$a0
.L0f099880:
    # Line 775
    mult	$v0,$s0
    lw	$a1,-15464($gp)
    sd	$ra,32($sp)
    la	$t9,gl_malloc
    mflo	$a0
    sd	$a0,16($sp)
    addu	$a0,$a0,$s0
    jalr	$t9
    sd	$a0,0($sp)
    sd	$v0,24($sp)
    bnez	$v0,.L0f0998c0
    ld	$ra,32($sp)
    # Line 777
    move	$v0,$zero
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0998c0:
    # Line 779
    la	$t9,bcopy
    ld	$a0,8($sp)
    ld	$a1,24($sp)
    jalr	$t9
    ld	$a2,16($sp)
    andi	$a5,$s0,0x3
    ld	$a2,0($sp)
    blez	$s0,.L0f099938
    ld	$ra,32($sp)
    move	$a6,$s0
    ld	$a3,24($sp)
    ld	$s0,40($sp)
    ld	$a0,16($sp)
    addu	$a2,$a2,$a3
    beqz	$a5,.L0f099910
    addu	$a0,$a0,$a3
.L0f099900:
    # Line 782
    addiu	$a0,$a0,1
    addi	$a5,$a5,-1
    bnez	$a5,.L0f099900
    # Line 783
    sb	$zero,-1($a0)
.L0f099910:
    sra	$a3,$a6,0x2
    beqz	$a3,.L0f099938
    move	$a5,$a0
    move	$a0,$a5
.L0f099920:
    sb	$zero,3($a0)
    sb	$zero,2($a0)
    sb	$zero,1($a0)
    # Line 782
    addiu	$a0,$a0,4
    bne	$a0,$a2,.L0f099920
    # Line 783
    sb	$zero,-4($a0)
.L0f099938:
    ld	$v0,24($sp)
    # Line 785
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f099948:
    sd	$s0,40($sp)
.L0f09994c:
    # Line 765
    b	.L0f099864
    # Line 764
    li	$s0,4
.L0f099954:
    sd	$s0,40($sp)
    # Line 754
    b	.L0f099864
    # Line 753
    li	$s0,1
.L0f099960:
    sd	$s0,40($sp)
    # Line 761
    b	.L0f099864
    # Line 760
    li	$s0,3
.end mbmkstr

# Function: mbgetnext
# Declared: Line 795 (Source lines: 799-820)
# Address: 0x0f09996c - 0x0f099a38 (Size: 204 bytes, Frame: 0)
.ent mbgetnext
mbgetnext:
    # Line 800
    li	$at,17
    beq	$a0,$at,.L0f099a00
    # Line 799
    move	$v0,$zero
    # Line 800
    li	$v1,16
    beq	$a0,$v1,.L0f0999b8
    li	$a2,1
    beq	$a0,$a2,.L0f099a14
    nop
    beqz	$a0,.L0f099a1c
    li	$a3,256
    beq	$a0,$a3,.L0f099a24
    li	$at,257
    bne	$a0,$at,.L0f0999f8
    nop
    # Line 816
    lw	$v0,0($a1)
    addiu	$v0,$v0,4
    sw	$v0,0($a1)
    # Line 820
    jr	$ra
    # Line 816
    lw	$v0,-4($v0)
.L0f0999b8:
    # Line 804
    lw	$a0,0($a1)
.L0f0999bc:
    # Line 806
    addiu	$a0,$a0,1
    sw	$a0,0($a1)
    lbu	$v1,-1($a0)
    sll	$v0,$v0,0x8
    addu	$v0,$v1,$v0
.L0f0999d0:
    # Line 808
    addiu	$a0,$a0,1
    sw	$a0,0($a1)
    lbu	$v1,-1($a0)
    sll	$v0,$v0,0x8
    addu	$v0,$v1,$v0
.L0f0999e4:
    # Line 810
    addiu	$v1,$a0,1
    sw	$v1,0($a1)
    lbu	$v1,-1($v1)
    sll	$v0,$v0,0x8
    addu	$v0,$v1,$v0
.L0f0999f8:
    # Line 820
    jr	$ra
    nop
.L0f099a00:
    # Line 804
    lw	$a0,0($a1)
    addiu	$a0,$a0,1
    sw	$a0,0($a1)
    b	.L0f0999bc
    lbu	$v0,-1($a0)
.L0f099a14:
    b	.L0f0999d0
    # Line 806
    lw	$a0,0($a1)
.L0f099a1c:
    b	.L0f0999e4
    # Line 808
    lw	$a0,0($a1)
.L0f099a24:
    # Line 813
    lw	$v0,0($a1)
    addiu	$v0,$v0,2
    sw	$v0,0($a1)
    # Line 820
    jr	$ra
    # Line 813
    lhu	$v0,-2($v0)
.end mbgetnext

# Function: gl_free_fonts
# Declared: Line 835 (Source lines: 836-849)
# Address: 0x0f099a38 - 0x0f099ad4 (Size: 156 bytes, Frame: 48)
.globl gl_free_fonts
.ent gl_free_fonts
gl_free_fonts:
    # Line 836
    addiu	$sp,$sp,-48
    sd	$s0,40($sp)
    sd	$ra,32($sp)
    sd	$s1,8($sp)
    sd	$gp,24($sp)
    sd	$s4,0($sp)
    lui	$s4,0xfffa
    addiu	$s4,$s4,-26608
    addu	$gp,$t9,$s4
    la	$s1,sub_0f0a0000
    la	$s4,sub_0f030000
    sd	$s5,16($sp)
    addiu	$s1,$s1,-24792
    addiu	$s4,$s4,-1464
    b	.L0f099a80
    addiu	$s5,$s4,512
.L0f099a78:
    # Line 840
    beq	$s4,$s5,.L0f099aa8
    # Line 845
    sw	$zero,-4($s4)
.L0f099a80:
    # Line 841
    lw	$a0,0($s4)
    beqz	$a0,.L0f099a78
    # Line 840
    addiu	$s4,$s4,4
.L0f099a8c:
    # Line 842
    lw	$s0,0($a0)
    # Line 843
    bal gl_free_fonts
    move	$t9,$s1
    # Line 841
    bnez	$s0,.L0f099a8c
    move	$a0,$s0
    b	.L0f099a78
    nop
.L0f099aa8:
    # Line 848
    lw	$a0,-21056($gp)
    bal gl_free_fonts
    move	$t9,$s1
    ld	$gp,24($sp)
    # Line 849
    ld	$s0,40($sp)
    ld	$s1,8($sp)
    ld	$ra,32($sp)
    ld	$s4,0($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_free_fonts

# Function: fntfromfile
# Declared: Line 852 (Source lines: 853-946)
# Address: 0x0f099ad4 - 0x0f099e84 (Size: 944 bytes, Frame: 208)
.ent fntfromfile
fntfromfile:
    # Line 863
    li	$a2,1
    li	$a1,8
    move	$a3,$a0
    # Line 853
    addiu	$sp,$sp,-208
    sd	$s2,128($sp)
    # Line 863
    la	$t9,fread
    # Line 853
    move	$s2,$a0
    sd	$ra,120($sp)
    # Line 863
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 864
    lw	$at,0($sp)
    li	$v0,21810
    bne	$at,$v0,.L0f099b10
    lw	$v1,4($sp)
    beq	$v1,$v0,.L0f099b4c
.L0f099b10:
    # Line 866
    la	$t9,sprintf
    la	$a1,sub_0f020000
    addiu	$a0,$sp,8
    jalr	$t9
    addiu	$a1,$a1,8872
    # Line 867
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,8
    li	$a1,2
    jalr	$t9
    li	$a0,109
    ld	$ra,120($sp)
    # Line 868
    move	$v0,$zero
    ld	$s2,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f099b4c:
    # Line 872
    move	$a3,$s2
    la	$t9,fread
    li	$a2,1
    li	$a1,2
    jalr	$t9
    addiu	$a0,$sp,88
    # Line 873
    move	$a3,$s2
    la	$t9,fread
    li	$a2,1
    li	$a1,2
    jalr	$t9
    addiu	$a0,$sp,90
    # Line 874
    move	$a3,$s2
    la	$t9,fread
    li	$a2,1
    li	$a1,2
    jalr	$t9
    addiu	$a0,$sp,92
    # Line 875
    move	$a3,$s2
    la	$t9,fread
    li	$a2,1
    li	$a1,2
    jalr	$t9
    addiu	$a0,$sp,94
    # Line 876
    move	$a3,$s2
    la	$t9,fread
    li	$a2,1
    li	$a1,2
    jalr	$t9
    addiu	$a0,$sp,96
    # Line 877
    move	$a3,$s2
    la	$t9,fread
    li	$a2,1
    li	$a1,4
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 879
    lh	$v1,90($sp)
    lh	$v0,92($sp)
    addiu	$v1,$v1,15
    sra	$at,$v1,0x3
    srl	$at,$at,0x1c
    addu	$at,$at,$v1
    sra	$at,$at,0x4
    mult	$at,$v0
    lh	$a0,94($sp)
    mflo	$ra
    nop
    nop
    mult	$ra,$a0
    sd	$s7,144($sp)
    sd	$s0,152($sp)
    la	$t9,sub_0f0a0000
    sd	$s1,168($sp)
    move	$a1,$zero
    addiu	$t9,$t9,-24668
    mflo	$a2
    bal gl_free_fonts
    addu	$a2,$a2,$a2
    # Line 880
    lw	$s7,8($v0)
    # Line 884
    lh	$a5,88($sp)
    # Line 882
    lw	$s0,12($v0)
    # Line 884
    sh	$a5,0($s7)
    # Line 885
    lh	$a4,90($sp)
    sh	$a4,2($s7)
    # Line 886
    lh	$a3,92($sp)
    sh	$a3,4($s7)
    # Line 887
    lh	$a2,94($sp)
    sd	$v0,104($sp)
    # Line 893
    lw	$a1,-15488($gp)
    # Line 887
    sw	$a2,12($s7)
    # Line 893
    la	$t9,gl_malloc
    lh	$a0,94($sp)
    # Line 881
    lw	$s1,8($s7)
    # Line 893
    jalr	$t9
    sll	$a0,$a0,0x2
    sd	$s3,136($sp)
    move	$a0,$v0
    sd	$v0,112($sp)
    # Line 894
    move	$a3,$s2
    # Line 893
    move	$a2,$v0
    # Line 894
    la	$t9,fread
    lh	$a1,94($sp)
    li	$a2,1
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 897
    lh	$a4,94($sp)
    blez	$a4,.L0f099d1c
    move	$s3,$zero
    sd	$s4,184($sp)
    b	.L0f099ce8
    ld	$s4,112($sp)
.L0f099cb8:
    # Line 902
    sh	$zero,12($s1)
    sh	$zero,14($s1)
    sh	$zero,8($s1)
    sh	$zero,10($s1)
    sh	$zero,4($s1)
    sh	$zero,6($s1)
    sh	$zero,16($s1)
    # Line 904
    sw	$zero,0($s1)
.L0f099cd8:
    # Line 897
    lh	$at,94($sp)
    slt	$at,$s3,$at
    beqz	$at,.L0f099d18
    # Line 905
    addiu	$s1,$s1,20
.L0f099ce8:
    # Line 897
    lw	$v1,0($s4)
    addiu	$s3,$s3,1
    beqz	$v1,.L0f099cb8
    addiu	$s4,$s4,4
    # Line 900
    move	$a0,$s1
    la	$t9,fread
    move	$a3,$s2
    li	$a2,1
    jalr	$t9
    li	$a1,18
    b	.L0f099cd8
    # Line 904
    sw	$zero,0($s1)
.L0f099d18:
    ld	$s4,184($sp)
.L0f099d1c:
    sd	$s5,160($sp)
    # Line 914
    la	$t9,gl_free
    ld	$a0,112($sp)
    lw	$a1,-15488($gp)
    jalr	$t9
    ld	$s1,168($sp)
    # Line 915
    beqz	$s0,.L0f099d5c
    move	$s5,$zero
    # Line 919
    la	$t9,__iglooPixelStorei
    li	$a1,2
    jalr	$t9
    li	$a0,3317
    # Line 920
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3314
.L0f099d5c:
    # Line 923
    lh	$a2,94($sp)
    blez	$a2,.L0f099e60
    move	$s3,$zero
    sd	$s6,176($sp)
    sd	$s4,184($sp)
    b	.L0f099df8
    move	$s4,$zero
.L0f099d78:
    # Line 931
    beqz	$s0,.L0f099de4
    # Line 934
    la	$t9,__iglooNewList
    move	$a0,$s0
    jalr	$t9
    li	$a1,4864
    # Line 943
    addiu	$s0,$s0,1
    # Line 935
    lh	$a5,14($s1)
    mtc1	$a5,$f17
    lh	$a4,12($s1)
    cvt.s.w	$f17,$f17
    mtc1	$a4,$f16
    lw	$a6,0($s1)
    lh	$a3,10($s1)
    cvt.s.w	$f16,$f16
    lh	$a1,6($s1)
    mtc1	$a3,$f15
    lh	$a0,16($s1)
    lh	$a2,8($s1)
    cvt.s.w	$f15,$f15
    la	$t9,glBitmap
    mtc1	$a2,$f14
    sll	$a0,$a0,0x4
    jalr	$t9
    cvt.s.w	$f14,$f14
    # Line 942
    la	$t9,__iglooEndList
    jalr	$t9
    nop
.L0f099de4:
    # Line 923
    lh	$at,94($sp)
    addiu	$s3,$s3,1
    slt	$at,$s3,$at
    beqz	$at,.L0f099e58
    ld	$s1,168($sp)
.L0f099df8:
    # Line 924
    lw	$s1,8($s7)
    addu	$s1,$s1,$s4
    # Line 925
    lh	$a2,16($s1)
    lh	$v1,6($s1)
    mult	$v1,$a2
    mflo	$s6
    beqz	$s6,.L0f099d78
    # Line 923
    addiu	$s4,$s4,20
    # Line 928
    move	$a3,$s2
    li	$a2,2
    # Line 927
    lw	$a0,16($s7)
    # Line 928
    move	$a1,$s6
    # Line 927
    addu	$a4,$s5,$s5
    lw	$a0,0($a0)
    # Line 928
    la	$t9,fread
    # Line 929
    addu	$s5,$s5,$s6
    # Line 927
    addu	$a0,$a0,$a4
    # Line 928
    jalr	$t9
    # Line 927
    sw	$a0,0($s1)
    # Line 929
    andi	$a2,$s5,0x1
    beqz	$a2,.L0f099d78
    nop
    b	.L0f099d78
    # Line 931
    addiu	$s5,$s5,1
.L0f099e58:
    ld	$s4,184($sp)
    ld	$s6,176($sp)
.L0f099e60:
    ld	$v0,104($sp)
    # Line 946
    ld	$s0,152($sp)
    ld	$s2,128($sp)
    ld	$s3,136($sp)
    ld	$ra,120($sp)
    ld	$s5,160($sp)
    ld	$s7,144($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end fntfromfile

# Function: fntread
# Declared: Line 950 (Source lines: 951-966)
# Address: 0x0f099e84 - 0x0f099f28 (Size: 164 bytes, Frame: 128)
.ent fntread
fntread:
    # Line 955
    addiu	$a1,$gp,-19352
    # Line 951
    addiu	$sp,$sp,-128
    # Line 955
    la	$t9,fopen
    sd	$s0,80($sp)
    sd	$ra,104($sp)
    jalr	$t9
    sd	$a0,88($sp)
    move	$s0,$v0
    move	$at,$v0
    bnez	$v0,.L0f099ef0
    sd	$v0,96($sp)
    ld	$a2,88($sp)
    # Line 959
    la	$t9,sprintf
    la	$a1,sub_0f020000
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,8904
    # Line 960
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,2
    jalr	$t9
    li	$a0,75
    ld	$ra,104($sp)
    # Line 961
    move	$v0,$zero
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f099ef0:
    # Line 963
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-25900
    bal gl_free_fonts
    move	$a0,$s0
    # Line 965
    la	$t9,fclose
    # Line 963
    move	$s0,$v0
    # Line 965
    ld	$a0,96($sp)
    jalr	$t9
    # Line 964
    sw	$zero,4($v0)
    ld	$ra,104($sp)
    # Line 966
    move	$v0,$s0
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end fntread

# Function: fntrecfree
# Declared: Line 969 (Source lines: 970-983)
# Address: 0x0f099f28 - 0x0f099fa4 (Size: 124 bytes, Frame: 32)
.ent fntrecfree
fntrecfree:
    # Line 970
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    beqz	$a0,.L0f099f90
    move	$s0,$a0
    # Line 973
    lw	$at,4($s0)
    beqz	$at,.L0f099f9c
    nop
.L0f099f44:
    # Line 976
    lw	$a0,12($s0)
    beqz	$a0,.L0f099f60
    sd	$ra,8($sp)
    # Line 979
    la	$t9,glDeleteLists
    lw	$a1,8($s0)
    jalr	$t9
    lw	$a1,12($a1)
.L0f099f60:
    # Line 981
    la	$t9,sub_0f0a0000
    addiu	$t9,$t9,-23948
    bal gl_free_fonts
    lw	$a0,8($s0)
    # Line 982
    la	$t9,gl_free
    move	$a0,$s0
    jalr	$t9
    lw	$a1,-15460($gp)
    ld	$ra,8($sp)
    # Line 983
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f099f90:
    # Line 973
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f099f9c:
    b	.L0f099f44
    # Line 976
    sw	$zero,-21056($gp)
.end fntrecfree

# Function: fntrecnew
# Declared: Line 986 (Source lines: 987-1033)
# Address: 0x0f099fa4 - 0x0f09a15c (Size: 440 bytes, Frame: 224)
.ent fntrecnew
fntrecnew:
    # Line 987
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    sd	$a2,16($sp)
    sd	$a1,24($sp)
    # Line 993
    lw	$a1,-15456($gp)
    la	$t9,gl_malloc
    sd	$a0,32($sp)
    sd	$ra,48($sp)
    jalr	$t9
    li	$a0,16
    move	$s0,$v0
    move	$at,$v0
    bnez	$v0,.L0f099ff0
    sd	$v0,40($sp)
    ld	$ra,48($sp)
    # Line 994
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f099ff0:
    # Line 995
    la	$t9,bzero
    move	$a0,$s0
    jalr	$t9
    li	$a1,16
    # Line 997
    la	$t9,gl_malloc
    lw	$a1,-15456($gp)
    jalr	$t9
    li	$a0,24
    move	$s0,$v0
    bnez	$s0,.L0f09a030
    sd	$v0,8($sp)
    ld	$ra,48($sp)
    # Line 998
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09a030:
    # Line 999
    la	$t9,bzero
    move	$a0,$s0
    jalr	$t9
    li	$a1,24
    ld	$a3,16($sp)
    # Line 1005
    ld	$a2,24($sp)
    ld	$a1,32($sp)
    la	$t9,sub_0f0a0000
    move	$a0,$s0
    # Line 1002
    ld	$v1,40($sp)
    # Line 1005
    addiu	$t9,$t9,-24228
    bal gl_free_fonts
    # Line 1002
    sw	$s0,8($v1)
    # Line 1005
    lw	$at,16($s0)
    # Line 1006
    lw	$a1,-15456($gp)
    ld	$s0,56($sp)
    # Line 1005
    beqz	$at,.L0f09a0ac
    # Line 1006
    ld	$v1,24($sp)
    beqz	$v1,.L0f09a0e0
    # Line 1012
    la	$t9,gl_malloc
    jalr	$t9
    li	$a0,512
    ld	$a4,8($sp)
    move	$s0,$v0
    bnez	$v0,.L0f09a0bc
    sw	$v0,20($a4)
    ld	$ra,48($sp)
    # Line 1013
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09a0ac:
    ld	$ra,48($sp)
    # Line 1006
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,96
.L0f09a0bc:
    # Line 1014
    la	$t9,bzero
    move	$a0,$s0
    jalr	$t9
    li	$a1,512
    ld	$s0,56($sp)
.L0f09a0d0:
    ld	$ra,48($sp)
    ld	$v0,40($sp)
    # Line 1033
    jr	$ra
    addiu	$sp,$sp,96
.L0f09a0e0:
    # Line 1018
    ld	$a2,32($sp)
    la	$t9,gl_malloc
    sll	$a0,$a2,0x2
    addu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    jalr	$t9
    sd	$a0,0($sp)
    ld	$a4,8($sp)
    move	$s0,$v0
    bnez	$v0,.L0f09a120
    sw	$v0,8($a4)
    ld	$ra,48($sp)
    # Line 1020
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09a120:
    # Line 1021
    la	$t9,bzero
    move	$a0,$s0
    jalr	$t9
    ld	$a1,0($sp)
    la	$a5,gl_DisplayListCharStr
    lw	$a5,0($a5)
    li	$at,1
    bne	$a5,$at,.L0f09a0d0
    ld	$s0,56($sp)
    # Line 1029
    la	$t9,glGenLists
    jalr	$t9
    ld	$a0,32($sp)
    ld	$at,40($sp)
    b	.L0f09a0d0
    sw	$v0,12($at)
.end fntrecnew

# Function: ras_new
# Declared: Line 1050 (Source lines: 1051-1090)
# Address: 0x0f09a15c - 0x0f09a274 (Size: 280 bytes, Frame: 224)
.ent ras_new
ras_new:
    # Line 1051
    addiu	$sp,$sp,-96
    sd	$s0,24($sp)
    sd	$a2,16($sp)
    sd	$a3,40($sp)
    sd	$a1,32($sp)
    # Line 1057
    lw	$a1,-15452($gp)
    la	$t9,gl_malloc
    sd	$a0,48($sp)
    sd	$ra,56($sp)
    jalr	$t9
    li	$a0,12
    bnez	$v0,.L0f09a1a4
    move	$s0,$v0
    ld	$ra,56($sp)
    # Line 1058
    move	$v0,$zero
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09a1a4:
    # Line 1059
    la	$t9,bzero
    move	$a0,$v0
    jalr	$t9
    li	$a1,12
    ld	$v0,32($sp)
    ld	$a3,16($sp)
    beqz	$v0,.L0f09a1c8
    ld	$a2,40($sp)
    # Line 1070
    move	$a3,$v0
.L0f09a1c8:
    # Line 1071
    lw	$a1,-15452($gp)
    la	$t9,gl_malloc
    addu	$a0,$a3,$a3
    addu	$a0,$a0,$a2
    jalr	$t9
    sd	$a0,8($sp)
    bnez	$v0,.L0f09a1fc
    sw	$v0,0($s0)
    ld	$ra,56($sp)
    # Line 1072
    move	$v0,$zero
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09a1fc:
    # Line 1073
    la	$t9,bzero
    move	$a0,$v0
    jalr	$t9
    ld	$a1,8($sp)
    ld	$v0,16($sp)
    beqz	$v0,.L0f09a24c
    # Line 1079
    lw	$a1,-15452($gp)
    la	$t9,gl_malloc
    sll	$a0,$v0,0x3
    subu	$a0,$a0,$v0
    sll	$a0,$a0,0x2
    jalr	$t9
    sd	$a0,0($sp)
    # Line 1081
    la	$t9,bzero
    # Line 1079
    move	$a0,$v0
    # Line 1081
    ld	$a1,0($sp)
    jalr	$t9
    # Line 1079
    sw	$v0,4($s0)
    b	.L0f09a254
    ld	$a4,48($sp)
.L0f09a24c:
    # Line 1084
    sw	$zero,4($s0)
    ld	$a4,48($sp)
.L0f09a254:
    # Line 1087
    lw	$a5,16($a4)
    # Line 1090
    move	$v0,$s0
    ld	$ra,56($sp)
    # Line 1087
    sw	$a5,8($s0)
    # Line 1088
    sw	$s0,16($a4)
    # Line 1090
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end ras_new

# Function: fntfree
# Declared: Line 1096 (Source lines: 1097-1127)
# Address: 0x0f09a274 - 0x0f09a360 (Size: 236 bytes, Frame: 48)
.ent fntfree
fntfree:
    # Line 1097
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    beqz	$a0,.L0f09a354
    move	$s0,$a0
    # Line 1101
    lw	$a0,8($s0)
    beqz	$a0,.L0f09a2a0
    # Line 1104
    la	$t9,gl_free
    sd	$ra,8($sp)
    jalr	$t9
    lw	$a1,-15448($gp)
    ld	$ra,8($sp)
.L0f09a2a0:
    lw	$a0,20($s0)
    beqz	$a0,.L0f09a2c0
    # Line 1107
    la	$t9,gl_free
    sd	$ra,8($sp)
    jalr	$t9
    lw	$a1,-15448($gp)
    sd	$s1,16($sp)
    ld	$ra,8($sp)
.L0f09a2c0:
    sd	$s1,16($sp)
    # Line 1113
    lw	$s1,16($s0)
    beqz	$s1,.L0f09a330
    sd	$ra,8($sp)
    b	.L0f09a2ec
    sd	$ra,8($sp)
.L0f09a2d8:
    # Line 1120
    move	$a0,$s1
.L0f09a2dc:
    # Line 1121
    bnez	$a0,.L0f09a31c
    lw	$s1,8($s1)
    # Line 1122
    beqz	$s1,.L0f09a330
    nop
.L0f09a2ec:
    # Line 1113
    lw	$a0,0($s1)
.L0f09a2f0:
    beqz	$a0,.L0f09a300
    # Line 1118
    la	$t9,gl_free
    jalr	$t9
    lw	$a1,-15448($gp)
.L0f09a300:
    lw	$a0,4($s1)
    beqz	$a0,.L0f09a2d8
    # Line 1119
    la	$t9,gl_free
    jalr	$t9
    lw	$a1,-15448($gp)
    b	.L0f09a2dc
    # Line 1120
    move	$a0,$s1
.L0f09a31c:
    # Line 1122
    la	$t9,gl_free
    jalr	$t9
    lw	$a1,-15448($gp)
    bnezl	$s1,.L0f09a2f0
    # Line 1113
    lw	$a0,0($s1)
.L0f09a330:
    # Line 1126
    la	$t9,gl_free
    move	$a0,$s0
    lw	$a1,-15448($gp)
    jalr	$t9
    ld	$s1,16($sp)
    ld	$ra,8($sp)
    # Line 1127
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f09a354:
    # Line 1101
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end fntfree

# Function: freecharstr
# Declared: Line 1130 (Source lines: 1131-1134)
# Address: 0x0f09a360 - 0x0f09a39c (Size: 60 bytes, Frame: 32)
.ent freecharstr
freecharstr:
    # Line 1131
    move	$a0,$a1
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfffa (gp disp hi)
    # addiu	v0,v0,-28952 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 1133
    la	$t9,gl_free
    la	$at,sub_0f020000
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$at,8944
    # Line 1134
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end freecharstr

# Function: set_def_font
# Declared: Line 1137 (Source lines: 1138-1147)
# Address: 0x0f09a39c - 0x0f09a3f0 (Size: 84 bytes, Frame: 16)
.ent set_def_font
set_def_font:
    # Line 1139
    lw	$v0,-21056($gp)
    # Line 1138
    addiu	$sp,$sp,-16
    sd	$s8,0($sp)
    # Line 1139
    la	$s8,gl_wstatep
    beqz	$v0,.L0f09a3cc
    lw	$s8,0($s8)
.L0f09a3b4:
    # Line 1145
    sw	$v0,3016($s8)
    # Line 1146
    lw	$at,276($s8)
    # Line 1147
    ld	$s8,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1146
    sw	$zero,0($at)
.L0f09a3cc:
    # Line 1143
    la	$t9,sub_0f0a0000
    sd	$ra,8($sp)
    la	$a0,sub_0f020000
    addiu	$t9,$t9,-24956
    bal gl_free_fonts
    addiu	$a0,$a0,8960
    sw	$v0,-21056($gp)
    b	.L0f09a3b4
    ld	$ra,8($sp)
.end set_def_font

# Function: fntheight
# Declared: Line 1150 (Source lines: 1154-1183)
# Address: 0x0f09a3f0 - 0x0f09a4d0 (Size: 224 bytes, Frame: 0)
.ent fntheight
fntheight:
    # Line 1154
    lw	$a6,8($a0)
    beqz	$a6,.L0f09a47c
    move	$v0,$zero
    # Line 1162
    lw	$a5,12($a0)
    # Line 1161
    move	$a3,$a6
    # Line 1163
    blez	$a5,.L0f09a440
    move	$a4,$zero
    andi	$at,$a5,0x1
    beqz	$at,.L0f09a434
    move	$a6,$a5
    lh	$a0,6($a3)
    slt	$v1,$v0,$a0
    beqzl	$v1,.L0f09a430
    addiu	$a4,$a4,1
    # Line 1165
    move	$v0,$a0
    # Line 1163
    addiu	$a4,$a4,1
.L0f09a430:
    # Line 1166
    addiu	$a3,$a3,20
.L0f09a434:
    sra	$a1,$a6,0x1
    bnezl	$a1,.L0f09a454
    # Line 1163
    lh	$a0,6($a3)
.L0f09a440:
    # Line 1183
    jr	$ra
    nop
.L0f09a448:
    # Line 1163
    beq	$a5,$a4,.L0f09a440
    nop
    lh	$a0,6($a3)
.L0f09a454:
    slt	$a2,$v0,$a0
    beqz	$a2,.L0f09a464
    addiu	$a4,$a4,2
    # Line 1165
    move	$v0,$a0
.L0f09a464:
    # Line 1163
    lh	$a0,26($a3)
    slt	$at,$v0,$a0
    beqz	$at,.L0f09a448
    # Line 1166
    addiu	$a3,$a3,40
    b	.L0f09a448
    # Line 1165
    move	$v0,$a0
.L0f09a47c:
    # Line 1163
    lw	$a4,20($a0)
    b	.L0f09a490
    addiu	$a5,$a4,512
.L0f09a488:
    # Line 1171
    beq	$a4,$a5,.L0f09a4c8
    nop
.L0f09a490:
    # Line 1173
    lw	$a0,0($a4)
    beqz	$a0,.L0f09a488
    # Line 1171
    addiu	$a4,$a4,4
    b	.L0f09a4b4
    # Line 1173
    lh	$a3,14($a0)
.L0f09a4a4:
    # Line 1178
    lw	$a0,0($a0)
.L0f09a4a8:
    beqz	$a0,.L0f09a488
    nop
    # Line 1173
    lh	$a3,14($a0)
.L0f09a4b4:
    slt	$v1,$v0,$a3
    beqzl	$v1,.L0f09a4a8
    # Line 1178
    lw	$a0,0($a0)
    b	.L0f09a4a4
    # Line 1177
    move	$v0,$a3
.L0f09a4c8:
    # Line 1183
    jr	$ra
    nop
.end fntheight

# Function: fntdescender
# Declared: Line 1187 (Source lines: 1191-1220)
# Address: 0x0f09a4d0 - 0x0f09a5b0 (Size: 224 bytes, Frame: 0)
.ent fntdescender
fntdescender:
    # Line 1191
    lw	$a6,8($a0)
    beqz	$a6,.L0f09a55c
    move	$v0,$zero
    # Line 1199
    lw	$a5,12($a0)
    # Line 1198
    move	$a3,$a6
    # Line 1200
    blez	$a5,.L0f09a520
    move	$a4,$zero
    andi	$at,$a5,0x1
    beqz	$at,.L0f09a514
    move	$a6,$a5
    lh	$a0,10($a3)
    slt	$v1,$v0,$a0
    beqzl	$v1,.L0f09a510
    addiu	$a4,$a4,1
    # Line 1202
    move	$v0,$a0
    # Line 1200
    addiu	$a4,$a4,1
.L0f09a510:
    # Line 1203
    addiu	$a3,$a3,20
.L0f09a514:
    sra	$a1,$a6,0x1
    bnezl	$a1,.L0f09a534
    # Line 1200
    lh	$a0,10($a3)
.L0f09a520:
    # Line 1220
    jr	$ra
    nop
.L0f09a528:
    # Line 1200
    beq	$a5,$a4,.L0f09a520
    nop
    lh	$a0,10($a3)
.L0f09a534:
    slt	$a2,$v0,$a0
    beqz	$a2,.L0f09a544
    addiu	$a4,$a4,2
    # Line 1202
    move	$v0,$a0
.L0f09a544:
    # Line 1200
    lh	$a0,30($a3)
    slt	$at,$v0,$a0
    beqz	$at,.L0f09a528
    # Line 1203
    addiu	$a3,$a3,40
    b	.L0f09a528
    # Line 1202
    move	$v0,$a0
.L0f09a55c:
    # Line 1200
    lw	$a4,20($a0)
    b	.L0f09a570
    addiu	$a5,$a4,512
.L0f09a568:
    # Line 1208
    beq	$a4,$a5,.L0f09a5a8
    nop
.L0f09a570:
    # Line 1210
    lw	$a0,0($a4)
    beqz	$a0,.L0f09a568
    # Line 1208
    addiu	$a4,$a4,4
    b	.L0f09a594
    # Line 1210
    lh	$a3,18($a0)
.L0f09a584:
    # Line 1215
    lw	$a0,0($a0)
.L0f09a588:
    beqz	$a0,.L0f09a568
    nop
    # Line 1210
    lh	$a3,18($a0)
.L0f09a594:
    slt	$v1,$v0,$a3
    beqzl	$v1,.L0f09a588
    # Line 1215
    lw	$a0,0($a0)
    b	.L0f09a584
    # Line 1214
    move	$v0,$a3
.L0f09a5a8:
    # Line 1220
    jr	$ra
    nop
.end fntdescender

# Function: fntwidth
# Declared: Line 1227 (Source lines: 1231-1261)
# Address: 0x0f09a5b0 - 0x0f09a6b0 (Size: 256 bytes, Frame: 0)
.ent fntwidth
fntwidth:
    # Line 1231
    lw	$a6,8($a0)
    beqz	$a6,.L0f09a65c
    move	$v0,$zero
    # Line 1239
    lw	$a5,12($a0)
    # Line 1238
    move	$a3,$a6
    # Line 1240
    blez	$a5,.L0f09a608
    move	$a4,$zero
    andi	$at,$a5,0x1
    beqz	$at,.L0f09a5fc
    move	$a6,$a5
    beqzl	$a3,.L0f09a5f8
    addiu	$a4,$a4,1
    lh	$a0,12($a3)
    slt	$v1,$v0,$a0
    beqzl	$v1,.L0f09a5f8
    addiu	$a4,$a4,1
    # Line 1243
    move	$v0,$a0
    # Line 1240
    addiu	$a4,$a4,1
.L0f09a5f8:
    # Line 1245
    addiu	$a3,$a3,20
.L0f09a5fc:
    sra	$a1,$a6,0x1
    bnez	$a1,.L0f09a618
    nop
.L0f09a608:
    # Line 1261
    jr	$ra
    nop
.L0f09a610:
    # Line 1240
    beq	$a5,$a4,.L0f09a608
    # Line 1245
    addiu	$a3,$a3,20
.L0f09a618:
    # Line 1240
    beqzl	$a3,.L0f09a638
    addiu	$a4,$a4,2
    lh	$a0,12($a3)
    slt	$a2,$v0,$a0
    beqzl	$a2,.L0f09a638
    addiu	$a4,$a4,2
    # Line 1243
    move	$v0,$a0
    # Line 1240
    addiu	$a4,$a4,2
.L0f09a638:
    # Line 1245
    addiu	$a3,$a3,20
    # Line 1240
    beqz	$a3,.L0f09a610
    nop
    lh	$a0,12($a3)
    slt	$at,$v0,$a0
    beqz	$at,.L0f09a610
    nop
    b	.L0f09a610
    # Line 1243
    move	$v0,$a0
.L0f09a65c:
    # Line 1240
    lw	$a4,20($a0)
    b	.L0f09a670
    addiu	$a5,$a4,512
.L0f09a668:
    # Line 1250
    beq	$a4,$a5,.L0f09a6a8
    nop
.L0f09a670:
    # Line 1252
    lw	$a0,0($a4)
    beqz	$a0,.L0f09a668
    # Line 1250
    addiu	$a4,$a4,4
    b	.L0f09a694
    # Line 1252
    lh	$a3,20($a0)
.L0f09a684:
    # Line 1257
    lw	$a0,0($a0)
.L0f09a688:
    beqz	$a0,.L0f09a668
    nop
    # Line 1252
    lh	$a3,20($a0)
.L0f09a694:
    slt	$v1,$v0,$a3
    beqzl	$v1,.L0f09a688
    # Line 1257
    lw	$a0,0($a0)
    b	.L0f09a684
    # Line 1256
    move	$v0,$a3
.L0f09a6a8:
    # Line 1261
    jr	$ra
    nop
.end fntwidth

