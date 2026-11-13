# Source: ../igloo/nurbs.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/nurbs.c -o nurbs.T
# Total Functions: 36

.text

# Function: gl_nurbsinit
# Declared: Line 111 (Source lines: 112-128)
# Address: 0x0f0f335c - 0x0f0f3400 (Size: 164 bytes, Frame: 16)
.ent gl_nurbsinit
gl_nurbsinit:
    # Line 113
    la	$at,gl_wstatep
    lw	$at,0($at)
    # Line 112
    addiu	$sp,$sp,-16
    sd	$at,0($sp)
    # Line 113
    lw	$at,11736($at)
    beqz	$at,.L0f0f3380
    # Line 118
    la	$t9,gluNewNurbsRenderer
    # Line 116
    jr	$ra
    addiu	$sp,$sp,16
.L0f0f3380:
    sd	$ra,8($sp)
    # Line 118
    jalr	$t9
    nop
    # Line 122
    lwc1	$f14,_lit_47c3bb80
    lui	$a1,0x1
    ori	$a1,$a1,0x876d
    # Line 118
    move	$a0,$v0
    ld	$v0,0($sp)
    # Line 122
    la	$t9,gluNurbsProperty
    # Line 121
    lwc1	$f0,_lit_42480000
    # Line 118
    sw	$a0,11736($v0)
    # Line 122
    jalr	$t9
    # Line 121
    swc1	$f0,11740($v0)
    # Line 124
    lui	$a1,0x1
    ori	$a1,$a1,0x876b
    ld	$a2,0($sp)
    lwc1	$f15,_lit_40000000
    la	$t9,gluNurbsProperty
    lwc1	$f14,11740($a2)
    lw	$a0,11736($a2)
    jalr	$t9
    mul.s	$f14,$f14,$f15
    # Line 127
    lwc1	$f14,_lit_3f800000
    lui	$a1,0x1
    la	$t9,gluNurbsProperty
    ld	$a0,0($sp)
    ori	$a1,$a1,0x8769
    jalr	$t9
    lw	$a0,11736($a0)
    ld	$ra,8($sp)
    # Line 128
    jr	$ra
    addiu	$sp,$sp,16
.end gl_nurbsinit

# Function: gl_freebgnsurface
# Declared: Line 138 (Source lines: 142-142)
# Address: 0x0f0f3400 - 0x0f0f3408 (Size: 8 bytes, Frame: 0)
.ent gl_freebgnsurface
gl_freebgnsurface:
    # Line 142
    jr	$ra
    nop
.end gl_freebgnsurface

# Function: gl_bgnsurface
# Declared: Line 151 (Source lines: 152-179)
# Address: 0x0f0f3408 - 0x0f0f34b4 (Size: 172 bytes, Frame: 48)
.ent gl_bgnsurface
gl_bgnsurface:
    # Line 152
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,-448 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 153
    lw	$at,-20548($gp)
    la	$s7,gl_wstatep
    sd	$ra,16($sp)
    beqz	$at,.L0f0f3450
    lw	$s7,0($s7)
    # Line 160
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18152
    # Line 161
    la	$t9,endsurface
    jalr	$t9
    nop
.L0f0f3450:
    # Line 166
    lw	$t9,216($s7)
    move	$a0,$zero
    # Line 163
    li	$a1,1
    # Line 166
    jalr	$t9
    # Line 163
    sw	$a1,-20548($gp)
    # Line 166
    lw	$t9,220($s7)
    jalr	$t9
    nop
    # Line 175
    lw	$t9,192($s7)
    la	$a1,sub_0f030000
    move	$a0,$s7
    jalr	$t9
    addiu	$a1,$a1,-25448
    # Line 177
    la	$t9,__iglooSetEnable
    li	$a1,1
    jalr	$t9
    li	$a0,3456
    # Line 178
    la	$t9,gluBeginSurface
    jalr	$t9
    lw	$a0,11736($s7)
    ld	$s7,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 179
    jr	$ra
    addiu	$sp,$sp,48
.end gl_bgnsurface

# Function: gl_g_bgnsurface
# Declared: Line 189 (Source lines: 190-201)
# Address: 0x0f0f34b4 - 0x0f0f3534 (Size: 128 bytes, Frame: 16)
.globl gl_g_bgnsurface
.ent gl_g_bgnsurface
gl_g_bgnsurface:
    # Line 190
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-620
    addu	$gp,$t9,$ra
    # Line 193
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,13148
    bal gl_normalmode
    nop
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    beqz	$at,.L0f0f3510
    # Line 197
    move	$a3,$zero
    li	$a2,1
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,13312
    jalr	$t9
    addiu	$a0,$a0,13320
    b	.L0f0f3528
    ld	$ra,0($sp)
.L0f0f3510:
    # Line 199
    la	$t9,sub_0f0f0000
    move	$a1,$zero
    addiu	$t9,$t9,13320
    bal gl_normalmode
    li	$a0,1
    ld	$ra,0($sp)
.L0f0f3528:
    ld	$gp,8($sp)
    # Line 201
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_bgnsurface

# Function: gl_g_bgncurve
# Declared: Line 209 (Source lines: 210-220)
# Address: 0x0f0f3534 - 0x0f0f35b4 (Size: 128 bytes, Frame: 16)
.globl gl_g_bgncurve
.ent gl_g_bgncurve
gl_g_bgncurve:
    # Line 210
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-748
    addu	$gp,$t9,$ra
    # Line 213
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,13148
    bal gl_normalmode
    nop
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    beqz	$at,.L0f0f3590
    # Line 216
    move	$a3,$zero
    li	$a2,1
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,15280
    jalr	$t9
    addiu	$a0,$a0,13748
    b	.L0f0f35a8
    ld	$ra,0($sp)
.L0f0f3590:
    # Line 218
    la	$t9,sub_0f0f0000
    move	$a1,$zero
    addiu	$t9,$t9,13748
    bal gl_g_bgncurve
    li	$a0,1
    ld	$ra,0($sp)
.L0f0f35a8:
    ld	$gp,8($sp)
    # Line 220
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_bgncurve

# Function: gl_bgncurve
# Declared: Line 229 (Source lines: 230-246)
# Address: 0x0f0f35b4 - 0x0f0f363c (Size: 136 bytes, Frame: 48)
.ent gl_bgncurve
gl_bgncurve:
    # Line 230
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,-876 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 231
    lw	$at,-20544($gp)
    la	$s7,gl_wstatep
    sd	$ra,16($sp)
    beqz	$at,.L0f0f35fc
    lw	$s7,0($s7)
    # Line 236
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18192
    # Line 237
    la	$t9,endcurve
    jalr	$t9
    nop
.L0f0f35fc:
    # Line 243
    lw	$t9,216($s7)
    move	$a0,$zero
    # Line 240
    li	$a1,1
    # Line 243
    jalr	$t9
    # Line 240
    sw	$a1,-20544($gp)
    # Line 243
    lw	$t9,220($s7)
    jalr	$t9
    nop
    # Line 245
    la	$t9,gluBeginCurve
    jalr	$t9
    lw	$a0,11736($s7)
    ld	$s7,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 246
    jr	$ra
    addiu	$sp,$sp,48
.end gl_bgncurve

# Function: gl_g_endcurve
# Declared: Line 255 (Source lines: 256-263)
# Address: 0x0f0f363c - 0x0f0f36b8 (Size: 124 bytes, Frame: 16)
.globl gl_g_endcurve
.ent gl_g_endcurve
gl_g_endcurve:
    # Line 256
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-1012
    addu	$gp,$t9,$ra
    # Line 257
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,13148
    bal gl_normalmode
    nop
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    beqz	$at,.L0f0f3698
    # Line 259
    move	$a3,$zero
    move	$a2,$zero
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,14944
    jalr	$t9
    addiu	$a0,$a0,14008
    b	.L0f0f36ac
    ld	$ra,0($sp)
.L0f0f3698:
    # Line 261
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,14008
    bal gl_g_endcurve
    nop
    ld	$ra,0($sp)
.L0f0f36ac:
    ld	$gp,8($sp)
    # Line 263
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_endcurve

# Function: gl_endcurve
# Declared: Line 273 (Source lines: 274-295)
# Address: 0x0f0f36b8 - 0x0f0f3798 (Size: 224 bytes, Frame: 32)
.ent gl_endcurve
gl_endcurve:
    # Line 274
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v1,0xfff4 (gp disp hi)
    # addiu	v1,v1,-1136 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 276
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    lw	$at,-20544($gp)
    sd	$ra,16($sp)
    move	$v1,$v0
    beqz	$at,.L0f0f372c
    sd	$v0,0($sp)
    # Line 286
    la	$t9,gluEndCurve
    lw	$a0,11736($v0)
    jalr	$t9
    # Line 284
    sw	$zero,-20544($gp)
    ld	$a1,0($sp)
    # Line 286
    mtc1	$zero,$f1
    lwc1	$f0,11752($a1)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0f0f3720
    ld	$ra,16($sp)
    lw	$a2,-20548($gp)
    beqz	$a2,.L0f0f374c
    # Line 290
    la	$t9,glGetError
.L0f0f3720:
    ld	$gp,8($sp)
    # Line 295
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f372c:
    # Line 280
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18232
    # Line 281
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f374c:
    # Line 290
    jalr	$t9
    nop
    beqz	$v0,.L0f0f3720
    ld	$ra,16($sp)
    # Line 291
    la	$t9,gluErrorString
.L0f0f3760:
    jalr	$t9
    move	$a0,$v0
    la	$t9,printf
    la	$a0,sub_0f020000
    move	$a1,$v0
    jalr	$t9
    addiu	$a0,$a0,18272
    # Line 290
    la	$t9,glGetError
    jalr	$t9
    nop
    bnez	$v0,.L0f0f3760
    # Line 291
    la	$t9,gluErrorString
    b	.L0f0f3720
    ld	$ra,16($sp)
.end gl_endcurve

# Function: gl_freeendsurface
# Declared: Line 305 (Source lines: 307-307)
# Address: 0x0f0f3798 - 0x0f0f37a0 (Size: 8 bytes, Frame: 0)
.ent gl_freeendsurface
gl_freeendsurface:
    # Line 307
    jr	$ra
    nop
.end gl_freeendsurface

# Function: gl_endsurface
# Declared: Line 317 (Source lines: 318-341)
# Address: 0x0f0f37a0 - 0x0f0f38bc (Size: 284 bytes, Frame: 32)
.ent gl_endsurface
gl_endsurface:
    # Line 318
    addiu	$sp,$sp,-32
    sd	$s5,0($sp)
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,-1368 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 319
    lw	$at,-20540($gp)
    la	$s5,gl_wstatep
    beqz	$at,.L0f0f37ec
    lw	$s5,0($s5)
    # Line 323
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    sd	$ra,16($sp)
    bal gl_nurbserror
    addiu	$a0,$a0,18296
    # Line 324
    la	$t9,endtrim
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0f0f37ec:
    lw	$a1,-20548($gp)
    beqz	$a1,.L0f0f3898
    sd	$ra,16($sp)
    # Line 333
    la	$t9,gluEndSurface
    lw	$a0,11736($s5)
    jalr	$t9
    # Line 331
    sw	$zero,-20548($gp)
    # Line 334
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,3456
    mtc1	$zero,$f1
    lwc1	$f0,11752($s5)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0f0f3888
    ld	$ra,16($sp)
    # Line 336
    la	$t9,glGetError
    jalr	$t9
    nop
    sd	$s1,24($sp)
    beqz	$v0,.L0f0f3888
    ld	$ra,16($sp)
    la	$s1,sub_0f020000
    addiu	$s1,$s1,18272
    # Line 337
    la	$t9,gluErrorString
.L0f0f3854:
    jalr	$t9
    move	$a0,$v0
    la	$t9,printf
    move	$a1,$v0
    jalr	$t9
    move	$a0,$s1
    # Line 336
    la	$t9,glGetError
    jalr	$t9
    nop
    bnez	$v0,.L0f0f3854
    # Line 337
    la	$t9,gluErrorString
    ld	$ra,16($sp)
    ld	$s1,24($sp)
.L0f0f3888:
    ld	$gp,8($sp)
    # Line 341
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f3898:
    # Line 328
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18336
    # Line 329
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_endsurface

# Function: gl_g_endsurface
# Declared: Line 352 (Source lines: 353-362)
# Address: 0x0f0f38bc - 0x0f0f3938 (Size: 124 bytes, Frame: 16)
.globl gl_g_endsurface
.ent gl_g_endsurface
gl_g_endsurface:
    # Line 353
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-1652
    addu	$gp,$t9,$ra
    # Line 355
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,13148
    bal gl_normalmode
    nop
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    beqz	$at,.L0f0f3918
    # Line 358
    move	$a3,$zero
    move	$a2,$zero
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,14232
    jalr	$t9
    addiu	$a0,$a0,14240
    b	.L0f0f392c
    ld	$ra,0($sp)
.L0f0f3918:
    # Line 360
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,14240
    bal gl_g_endcurve
    nop
    ld	$ra,0($sp)
.L0f0f392c:
    ld	$gp,8($sp)
    # Line 362
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_endsurface

# Function: gl_freebgntrim
# Declared: Line 373 (Source lines: 377-377)
# Address: 0x0f0f3938 - 0x0f0f3940 (Size: 8 bytes, Frame: 0)
.ent gl_freebgntrim
gl_freebgntrim:
    # Line 377
    jr	$ra
    nop
.end gl_freebgntrim

# Function: gl_bgntrim
# Declared: Line 386 (Source lines: 387-406)
# Address: 0x0f0f3940 - 0x0f0f39e0 (Size: 160 bytes, Frame: 48)
.ent gl_bgntrim
gl_bgntrim:
    # Line 387
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff4 (gp disp hi)
    # addiu	v1,v1,-1784 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 388
    la	$v0,gl_wstatep
    lw	$at,-20548($gp)
    lw	$v0,0($v0)
    beqz	$at,.L0f0f39b8
    sd	$v0,0($sp)
.L0f0f3968:
    # Line 395
    lw	$a0,-20540($gp)
    beqz	$a0,.L0f0f3990
    sd	$ra,16($sp)
    # Line 399
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18416
    # Line 400
    la	$t9,endtrim
    jalr	$t9
    nop
.L0f0f3990:
    # Line 402
    li	$a1,1
    # Line 404
    la	$t9,gluBeginTrim
    ld	$a0,0($sp)
    # Line 402
    sw	$a1,-20540($gp)
    # Line 404
    jalr	$t9
    lw	$a0,11736($a0)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 406
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f39b8:
    # Line 394
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    sd	$ra,16($sp)
    bal gl_nurbserror
    addiu	$a0,$a0,18376
    # Line 395
    la	$t9,bgnsurface
    jalr	$t9
    nop
    b	.L0f0f3968
    ld	$ra,16($sp)
.end gl_bgntrim

# Function: gl_g_bgntrim
# Declared: Line 416 (Source lines: 417-427)
# Address: 0x0f0f39e0 - 0x0f0f3a60 (Size: 128 bytes, Frame: 16)
.globl gl_g_bgntrim
.ent gl_g_bgntrim
gl_g_bgntrim:
    # Line 417
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-1944
    addu	$gp,$t9,$ra
    # Line 420
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,13148
    bal gl_normalmode
    nop
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    beqz	$at,.L0f0f3a3c
    # Line 423
    move	$a3,$zero
    li	$a2,1
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,14648
    jalr	$t9
    addiu	$a0,$a0,14656
    b	.L0f0f3a54
    ld	$ra,0($sp)
.L0f0f3a3c:
    # Line 425
    la	$t9,sub_0f0f0000
    move	$a1,$zero
    addiu	$t9,$t9,14656
    bal gl_g_endsurface
    li	$a0,1
    ld	$ra,0($sp)
.L0f0f3a54:
    ld	$gp,8($sp)
    # Line 427
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_bgntrim

# Function: gl_freeendcurve
# Declared: Line 438 (Source lines: 440-440)
# Address: 0x0f0f3a60 - 0x0f0f3a68 (Size: 8 bytes, Frame: 0)
.ent gl_freeendcurve
gl_freeendcurve:
    # Line 440
    jr	$ra
    nop
.end gl_freeendcurve

# Function: gl_freeendtrim
# Declared: Line 450 (Source lines: 452-452)
# Address: 0x0f0f3a68 - 0x0f0f3a70 (Size: 8 bytes, Frame: 0)
.ent gl_freeendtrim
gl_freeendtrim:
    # Line 452
    jr	$ra
    nop
.end gl_freeendtrim

# Function: gl_endtrim
# Declared: Line 461 (Source lines: 462-473)
# Address: 0x0f0f3a70 - 0x0f0f3ad8 (Size: 104 bytes, Frame: 16)
.ent gl_endtrim
gl_endtrim:
    # Line 462
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-2088 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20540($gp)
    beqz	$at,.L0f0f3ab8
    sd	$ra,8($sp)
    # Line 471
    la	$a0,gl_wstatep
    la	$t9,gluEndTrim
    lw	$a0,0($a0)
    # Line 469
    sw	$zero,-20540($gp)
    # Line 471
    jalr	$t9
    lw	$a0,11736($a0)
    # Line 473
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0f3ab8:
    # Line 466
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18448
    # Line 467
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_endtrim

# Function: gl_g_endtrim
# Declared: Line 482 (Source lines: 483-490)
# Address: 0x0f0f3ad8 - 0x0f0f3b54 (Size: 124 bytes, Frame: 16)
.globl gl_g_endtrim
.ent gl_g_endtrim
gl_g_endtrim:
    # Line 483
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-2192
    addu	$gp,$t9,$ra
    # Line 484
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,13148
    bal gl_normalmode
    nop
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    beqz	$at,.L0f0f3b34
    # Line 486
    move	$a3,$zero
    move	$a2,$zero
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,14952
    jalr	$t9
    addiu	$a0,$a0,14960
    b	.L0f0f3b48
    ld	$ra,0($sp)
.L0f0f3b34:
    # Line 488
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,14960
    bal gl_g_bgntrim
    nop
    ld	$ra,0($sp)
.L0f0f3b48:
    ld	$gp,8($sp)
    # Line 490
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_endtrim

# Function: gl_freepwlcurve
# Declared: Line 501 (Source lines: 502-510)
# Address: 0x0f0f3b54 - 0x0f0f3bb0 (Size: 92 bytes, Frame: 48)
.ent gl_freepwlcurve
gl_freepwlcurve:
    # Line 502
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$gp,8($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-2316
    beqz	$a1,.L0f0f3ba0
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    lw	$a0,0($s0)
    beqz	$a0,.L0f0f3b8c
    sd	$ra,16($sp)
    # Line 507
    la	$t9,gl_free
    jalr	$t9
    lw	$a1,-14652($gp)
.L0f0f3b8c:
    # Line 508
    la	$t9,gl_free
    move	$a0,$s0
    jalr	$t9
    lw	$a1,-14652($gp)
    ld	$ra,16($sp)
.L0f0f3ba0:
    ld	$gp,8($sp)
    # Line 510
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_freepwlcurve

# Function: gl_freebgncurve
# Declared: Line 513 (Source lines: 517-517)
# Address: 0x0f0f3bb0 - 0x0f0f3bb8 (Size: 8 bytes, Frame: 0)
.ent gl_freebgncurve
gl_freebgncurve:
    # Line 517
    jr	$ra
    nop
.end gl_freebgncurve

# Function: gl_pwlcurve
# Declared: Line 531 (Source lines: 532-547)
# Address: 0x0f0f3bb8 - 0x0f0f3c34 (Size: 124 bytes, Frame: 32)
.ent gl_pwlcurve
gl_pwlcurve:
    # Line 532
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-2416 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20540($gp)
    move	$a6,$a1
    beqz	$at,.L0f0f3c14
    sd	$ra,8($sp)
    # Line 542
    li	$a3,2
    lw	$a2,0($a6)
    lw	$a1,4($a6)
    la	$a0,gl_wstatep
    lui	$a4,0x1
    la	$t9,gluPwlCurve
    lw	$a0,0($a0)
    ori	$a4,$a4,0x8772
    jalr	$t9
    lw	$a0,11736($a0)
    # Line 547
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f3c14:
    # Line 538
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18488
    # Line 539
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_pwlcurve

# Function: gl_g_pwlcurve
# Declared: Line 562 (Source lines: 563-618)
# Address: 0x0f0f3c34 - 0x0f0f3edc (Size: 680 bytes, Frame: 224)
.globl gl_g_pwlcurve
.ent gl_g_pwlcurve
gl_g_pwlcurve:
    # Line 563
    addiu	$sp,$sp,-96
    sd	$s1,48($sp)
    move	$s1,$a3
    sd	$s0,56($sp)
    sd	$gp,32($sp)
    sd	$ra,40($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-2540
    addu	$gp,$t9,$ra
    # Line 570
    la	$t9,sub_0f0f0000
    # Line 563
    move	$s0,$a2
    sd	$a1,16($sp)
    # Line 570
    addiu	$t9,$t9,13148
    bal gl_normalmode
    sd	$a0,24($sp)
    li	$v0,8
    beq	$s1,$v0,.L0f0f3ca8
    li	$at,13
    beq	$s1,$at,.L0f0f3ca8
    # Line 575
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18528
    ld	$gp,32($sp)
    # Line 576
    ld	$ra,40($sp)
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f3ca8:
    # Line 579
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    li	$a0,12
    jalr	$t9
    addiu	$a1,$a1,18560
    sd	$v0,8($sp)
    # Line 581
    la	$a1,sub_0f020000
    ld	$a0,24($sp)
    la	$t9,gl_malloc
    addiu	$a1,$a1,18560
    addu	$a0,$a0,$a0
    sll	$a0,$a0,0x2
    jalr	$t9
    sd	$a0,0($sp)
    # Line 587
    ld	$a2,16($sp)
    # Line 584
    ld	$a5,8($sp)
    # Line 583
    ld	$at,24($sp)
    li	$a4,8
    # Line 584
    sw	$s1,8($a5)
    # Line 583
    sw	$at,4($a5)
    # Line 588
    beq	$s1,$a4,.L0f0f3d80
    # Line 581
    sw	$v0,0($a5)
    # Line 588
    li	$v1,13
    beq	$s1,$v1,.L0f0f3e4c
.L0f0f3d08:
    # Line 610
    la	$a4,gl_openobjhdr
.L0f0f3d0c:
    lw	$a4,0($a4)
    beqz	$a4,.L0f0f3d3c
    ld	$a3,8($sp)
    # Line 613
    li	$a2,1
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,15188
    jalr	$t9
    addiu	$a0,$a0,15288
    b	.L0f0f3d68
    nop
.L0f0f3d3c:
    # Line 615
    la	$t9,sub_0f0f0000
    li	$a0,1
    ld	$s0,8($sp)
    addiu	$t9,$t9,15288
    bal gl_g_endtrim
    move	$a1,$s0
    # Line 616
    la	$t9,sub_0f0f0000
    move	$a1,$s0
    addiu	$t9,$t9,15188
    bal gl_g_endtrim
    li	$a0,1
.L0f0f3d68:
    ld	$gp,32($sp)
    # Line 618
    ld	$ra,40($sp)
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f3d80:
    # Line 591
    ld	$a1,0($sp)
    # Line 590
    move	$a0,$v0
    # Line 591
    addu	$a1,$a1,$v0
    sltu	$at,$v0,$a1
    beqz	$at,.L0f0f3d08
    ld	$v0,0($sp)
    addiu	$v0,$v0,7
    sra	$at,$v0,0x2
    srl	$at,$at,0x1d
    addu	$at,$at,$v0
    li	$v0,1
    sra	$at,$at,0x3
    slt	$a5,$at,$v0
    beqzl	$a5,.L0f0f3dbc
    move	$v0,$at
.L0f0f3dbc:
    andi	$a4,$v0,0x1
    beqz	$a4,.L0f0f3dec
    sra	$v1,$v0,0x1
    # Line 592
    ldc1	$f1,0($a2)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a0)
    # Line 593
    ldc1	$f0,8($a2)
    cvt.s.d	$f0,$f0
    addiu	$a0,$a0,8
    # Line 594
    addu	$a2,$s0,$a2
    # Line 593
    swc1	$f0,-4($a0)
    sra	$v1,$v0,0x1
.L0f0f3dec:
    move	$a6,$a0
    beqz	$v1,.L0f0f3e44
    move	$a3,$a2
    move	$v0,$a6
    move	$a0,$a3
.L0f0f3e00:
    # Line 592
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 593
    ldc1	$f0,8($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($v0)
    # Line 594
    addu	$a0,$s0,$a0
    # Line 592
    ldc1	$f3,0($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,8($v0)
    # Line 593
    ldc1	$f2,8($a0)
    addiu	$v0,$v0,16
    cvt.s.d	$f2,$f2
    # Line 594
    sltu	$a4,$v0,$a1
    addu	$a0,$s0,$a0
    bnez	$a4,.L0f0f3e00
    # Line 593
    swc1	$f2,-4($v0)
.L0f0f3e44:
    b	.L0f0f3d0c
    # Line 610
    la	$a4,gl_openobjhdr
.L0f0f3e4c:
    # Line 599
    ld	$a1,0($sp)
    # Line 598
    move	$a0,$v0
    # Line 599
    addu	$a1,$a1,$v0
    sltu	$a4,$v0,$a1
    beqz	$a4,.L0f0f3d08
    dmtc1	$zero,$f5
.L0f0f3e64:
    # Line 600
    ldc1	$f4,16($a2)
    cvt.s.d	$f4,$f4
    cvt.d.s	$f2,$f4
    c.eq.d	$f2,$f5
    nop
    bc1t	.L0f0f3eb8
    # Line 602
    la	$t9,gl_nurbserror
    # Line 605
    ldc1	$f1,0($a2)
    cvt.s.d	$f1,$f1
    div.s	$f1,$f1,$f4
    swc1	$f1,0($a0)
    # Line 606
    ldc1	$f0,8($a2)
    cvt.s.d	$f0,$f0
    div.s	$f0,$f0,$f4
    addiu	$a0,$a0,8
    # Line 607
    sltu	$a4,$a0,$a1
    addu	$a2,$s0,$a2
    bnez	$a4,.L0f0f3e64
    # Line 606
    swc1	$f0,-4($a0)
    b	.L0f0f3d0c
    # Line 610
    la	$a4,gl_openobjhdr
.L0f0f3eb8:
    # Line 602
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18576
    ld	$gp,32($sp)
    # Line 603
    ld	$ra,40($sp)
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_g_pwlcurve

# Function: gl_freenurbscurve
# Declared: Line 629 (Source lines: 630-638)
# Address: 0x0f0f3edc - 0x0f0f3f48 (Size: 108 bytes, Frame: 48)
.ent gl_freenurbscurve
gl_freenurbscurve:
    # Line 630
    addiu	$sp,$sp,-48
    sd	$a1,0($sp)
    sd	$gp,8($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-3220
    bnez	$a1,.L0f0f3f04
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f0f3ef8:
    ld	$gp,8($sp)
    # Line 638
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f3f04:
    # Line 634
    lw	$a1,-14648($gp)
    la	$t9,gl_free
    ld	$a0,0($sp)
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a0,0($a0)
    # Line 635
    la	$t9,gl_free
    ld	$a0,0($sp)
    lw	$a1,-14648($gp)
    jalr	$t9
    lw	$a0,28($a0)
    # Line 636
    la	$t9,gl_free
    ld	$a0,0($sp)
    jalr	$t9
    lw	$a1,-14648($gp)
    b	.L0f0f3ef8
    ld	$ra,16($sp)
.end gl_freenurbscurve

# Function: gl_nurbscurve
# Declared: Line 647 (Source lines: 648-663)
# Address: 0x0f0f3f48 - 0x0f0f3f9c (Size: 84 bytes, Frame: 32)
.ent gl_nurbscurve
gl_nurbscurve:
    # Line 655
    lw	$a6,8($a1)
    lw	$a5,16($a1)
    lw	$a4,0($a1)
    lw	$a3,12($a1)
    # Line 648
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a2,0xfff4
    addiu	$a2,$a2,-3328
    addu	$gp,$t9,$a2
    # Line 655
    la	$a0,gl_wstatep
    lw	$a2,28($a1)
    la	$t9,gluNurbsCurve
    lw	$a0,0($a0)
    lw	$a1,20($a1)
    jalr	$t9
    lw	$a0,11736($a0)
    # Line 663
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_nurbscurve

# Function: gl_g_nurbscurve
# Declared: Line 680 (Source lines: 681-778)
# Address: 0x0f0f3f9c - 0x0f0f4588 (Size: 1516 bytes, Frame: 128)
.globl gl_g_nurbscurve
.ent gl_g_nurbscurve
gl_g_nurbscurve:
    # Line 681
    addiu	$sp,$sp,-128
    sd	$s4,56($sp)
    move	$s4,$a5
    sd	$s2,64($sp)
    move	$s2,$a4
    sd	$a3,8($sp)
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s5,24($sp)
    sd	$gp,40($sp)
    sd	$ra,48($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-3412
    addu	$gp,$t9,$ra
    # Line 688
    la	$t9,sub_0f0f0000
    # Line 681
    move	$s5,$a1
    sd	$s1,32($sp)
    # Line 688
    addiu	$t9,$t9,13148
    bal gl_normalmode
    # Line 681
    move	$s1,$a0
    # Line 691
    la	$t9,sub_0f0f0000
    move	$a0,$s5
    move	$a1,$s1
    addiu	$t9,$t9,20900
    bal gl_g_nurbssurface
    move	$a2,$s2
    beqz	$v0,.L0f0f4048
    # Line 692
    move	$a0,$s5
    la	$t9,sub_0f0f0000
    move	$a1,$s1
    move	$a2,$s2
    addiu	$t9,$t9,22656
    bal gl_nurbserror
    addiu	$a3,$gp,-17024
    ld	$gp,40($sp)
    # Line 693
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$ra,48($sp)
    ld	$s4,56($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0f4048:
    # Line 696
    la	$t9,gl_malloc
    sd	$s3,72($sp)
    lw	$a1,-14640($gp)
    jalr	$t9
    li	$a0,32
    # Line 699
    li	$a0,8
    beq	$s4,$a0,.L0f0f432c
    # Line 696
    move	$s3,$v0
    # Line 699
    li	$at,13
    beq	$s4,$at,.L0f0f4344
    li	$v1,76
    beq	$s4,$v1,.L0f0f435c
    li	$a6,81
    beq	$s4,$a6,.L0f0f40b8
    # Line 717
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    ld	$s3,72($sp)
    bal gl_nurbserror
    addiu	$a0,$a0,18616
    ld	$gp,40($sp)
    # Line 718
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$ra,48($sp)
    ld	$s4,56($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0f40b8:
    # Line 714
    li	$a6,3480
    # Line 713
    li	$a7,4
    sd	$a7,0($sp)
    # Line 714
    sw	$a6,8($s3)
.L0f0f40c8:
    # Line 730
    lw	$a1,-14640($gp)
    sll	$a0,$s1,0x2
    # Line 727
    sw	$s2,16($s3)
    # Line 726
    sw	$s1,20($s3)
    # Line 730
    la	$t9,gl_malloc
    # Line 722
    ld	$t0,0($sp)
    # Line 723
    sw	$s4,4($s3)
    # Line 730
    jalr	$t9
    # Line 722
    sw	$t0,12($s3)
    # Line 730
    move	$a2,$s1
    andi	$a6,$s1,0x1
    blez	$s1,.L0f0f417c
    sw	$v0,28($s3)
    move	$a0,$zero
    move	$v0,$s5
    sll	$a1,$s1,0x3
    beqz	$a6,.L0f0f412c
    addu	$a1,$a1,$s5
    # Line 733
    ldc1	$f0,0($v0)
    lw	$a7,28($s3)
    cvt.s.d	$f0,$f0
    # Line 732
    addiu	$v0,$v0,8
    # Line 733
    addu	$a7,$a7,$a0
    # Line 732
    addiu	$a0,$a0,4
    # Line 733
    swc1	$f0,0($a7)
.L0f0f412c:
    move	$a4,$a0
    sra	$at,$a2,0x1
    beqz	$at,.L0f0f417c
    move	$a3,$v0
    move	$v0,$a4
    move	$a0,$a3
.L0f0f4144:
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    lw	$a7,28($s3)
    addu	$a7,$a7,$v0
    swc1	$f2,0($a7)
    ldc1	$f1,8($a0)
    # Line 732
    addiu	$a0,$a0,16
    # Line 733
    cvt.s.d	$f1,$f1
    lw	$v1,28($s3)
    # Line 732
    addiu	$a6,$v0,4
    addiu	$v0,$a6,4
    # Line 733
    addu	$v1,$v1,$a6
    # Line 732
    bne	$a0,$a1,.L0f0f4144
    # Line 733
    swc1	$f1,0($v1)
.L0f0f417c:
    # Line 737
    ld	$a1,0($sp)
    subu	$s5,$s1,$s2
    multu	$s5,$a1
    la	$t9,gl_malloc
    lw	$a1,-14640($gp)
    mflo	$a0
    jalr	$t9
    sll	$a0,$a0,0x2
    # Line 742
    ld	$a1,0($sp)
    mult	$s5,$a1
    # Line 737
    sw	$v0,0($s3)
    li	$a6,8
    # Line 740
    ld	$a1,8($sp)
    # Line 742
    mflo	$a0
    sll	$a0,$a0,0x2
    # Line 744
    beq	$s4,$a6,.L0f0f4370
    # Line 742
    addu	$a0,$a0,$v0
    # Line 744
    li	$a6,13
    beq	$s4,$a6,.L0f0f425c
    li	$a7,76
    beq	$s4,$a7,.L0f0f425c
    li	$at,81
    beq	$s4,$at,.L0f0f4420
.L0f0f41d8:
    # Line 770
    la	$v1,gl_openobjhdr
.L0f0f41dc:
    lw	$v1,0($v1)
    beqz	$v1,.L0f0f420c
    # Line 773
    move	$a3,$s3
    li	$a2,1
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,16092
    jalr	$t9
    addiu	$a0,$a0,16200
    b	.L0f0f4238
    ld	$s3,72($sp)
.L0f0f420c:
    # Line 775
    la	$t9,sub_0f0f0000
    move	$a1,$s3
    addiu	$t9,$t9,16200
    bal gl_g_pwlcurve
    li	$a0,1
    # Line 776
    la	$t9,sub_0f0f0000
    move	$a1,$s3
    addiu	$t9,$t9,16092
    bal gl_g_pwlcurve
    li	$a0,1
    ld	$s3,72($sp)
.L0f0f4238:
    ld	$gp,40($sp)
    # Line 778
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$ra,48($sp)
    ld	$s4,56($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0f425c:
    # Line 754
    sltu	$at,$v0,$a0
    beqz	$at,.L0f0f41d8
    subu	$a7,$a0,$v0
    addiu	$a7,$a7,11
    li	$v1,12
    div	$zero,$a7,$v1
    mflo	$a2
    andi	$a6,$a2,0x1
    beqz	$a6,.L0f0f42b0
    teq	$v1,$zero,0x7
    # Line 755
    ldc1	$f1,0($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 756
    ldc1	$f0,8($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($v0)
    # Line 757
    ldc1	$f3,16($a1)
    cvt.s.d	$f3,$f3
    addiu	$v0,$v0,12
    # Line 758
    addu	$a1,$s0,$a1
    # Line 757
    swc1	$f3,-4($v0)
.L0f0f42b0:
    move	$a4,$v0
    sra	$at,$a2,0x1
    beqz	$at,.L0f0f4324
    move	$a3,$a1
    move	$a1,$a4
    move	$v0,$a3
.L0f0f42c8:
    # Line 755
    ldc1	$f3,0($v0)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a1)
    # Line 756
    ldc1	$f2,8($v0)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($a1)
    # Line 757
    ldc1	$f1,16($v0)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($a1)
    # Line 758
    addu	$v0,$s0,$v0
    # Line 755
    ldc1	$f0,0($v0)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($a1)
    # Line 756
    ldc1	$f3,8($v0)
    cvt.s.d	$f3,$f3
    swc1	$f3,16($a1)
    # Line 757
    ldc1	$f2,16($v0)
    addiu	$a1,$a1,24
    cvt.s.d	$f2,$f2
    # Line 758
    sltu	$v1,$a1,$a0
    addu	$v0,$s0,$v0
    bnez	$v1,.L0f0f42c8
    # Line 757
    swc1	$f2,-4($a1)
.L0f0f4324:
    b	.L0f0f41dc
    # Line 770
    la	$v1,gl_openobjhdr
.L0f0f432c:
    # Line 701
    li	$a6,2
    sd	$a6,0($sp)
    # Line 702
    lui	$v1,0x1
    ori	$v1,$v1,0x8772
    # Line 703
    b	.L0f0f40c8
    # Line 702
    sw	$v1,8($s3)
.L0f0f4344:
    # Line 705
    li	$at,3
    sd	$at,0($sp)
    # Line 706
    lui	$a7,0x1
    ori	$a7,$a7,0x8773
    # Line 707
    b	.L0f0f40c8
    # Line 706
    sw	$a7,8($s3)
.L0f0f435c:
    # Line 710
    li	$v1,3479
    # Line 709
    li	$a6,3
    sd	$a6,0($sp)
    # Line 711
    b	.L0f0f40c8
    # Line 710
    sw	$v1,8($s3)
.L0f0f4370:
    # Line 746
    sltu	$a7,$v0,$a0
    beqz	$a7,.L0f0f41d8
    subu	$a6,$a0,$v0
    addiu	$a6,$a6,7
    sra	$a2,$a6,0x2
    srl	$a2,$a2,0x1d
    addu	$a2,$a2,$a6
    sra	$a2,$a2,0x3
    andi	$at,$a2,0x1
    beqz	$at,.L0f0f43c0
    move	$a3,$v0
    # Line 747
    ldc1	$f1,0($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 748
    ldc1	$f0,8($a1)
    cvt.s.d	$f0,$f0
    addiu	$v0,$v0,8
    # Line 749
    addu	$a1,$s0,$a1
    # Line 748
    swc1	$f0,-4($v0)
    move	$a3,$v0
.L0f0f43c0:
    sra	$a7,$a2,0x1
    beqz	$a7,.L0f0f4418
    move	$a4,$a1
    move	$a1,$a3
    move	$v0,$a4
.L0f0f43d4:
    # Line 747
    ldc1	$f1,0($v0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a1)
    # Line 748
    ldc1	$f0,8($v0)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($a1)
    # Line 749
    addu	$v0,$s0,$v0
    # Line 747
    ldc1	$f3,0($v0)
    cvt.s.d	$f3,$f3
    swc1	$f3,8($a1)
    # Line 748
    ldc1	$f2,8($v0)
    addiu	$a1,$a1,16
    cvt.s.d	$f2,$f2
    # Line 749
    sltu	$at,$a1,$a0
    addu	$v0,$s0,$v0
    bnez	$at,.L0f0f43d4
    # Line 748
    swc1	$f2,-4($a1)
.L0f0f4418:
    b	.L0f0f41dc
    # Line 770
    la	$v1,gl_openobjhdr
.L0f0f4420:
    # Line 762
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0f0f41d8
    subu	$a6,$a0,$v0
    addiu	$a6,$a6,15
    sra	$a3,$a6,0x3
    srl	$a3,$a3,0x1c
    addu	$a3,$a3,$a6
    sra	$a3,$a3,0x4
    andi	$a2,$a3,0x3
    beqz	$a2,.L0f0f4490
    move	$a4,$v0
.L0f0f444c:
    # Line 763
    ldc1	$f1,0($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 764
    ldc1	$f0,8($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($v0)
    # Line 765
    ldc1	$f3,16($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,8($v0)
    # Line 766
    ldc1	$f2,24($a1)
    addiu	$v0,$v0,16
    cvt.s.d	$f2,$f2
    addi	$a2,$a2,-1
    # Line 767
    addu	$a1,$s0,$a1
    bnez	$a2,.L0f0f444c
    # Line 766
    swc1	$f2,-4($v0)
    move	$a4,$v0
.L0f0f4490:
    sra	$a7,$a3,0x2
    beqz	$a7,.L0f0f4580
    move	$a2,$a1
    move	$v0,$a4
    move	$a1,$a2
.L0f0f44a4:
    # Line 763
    ldc1	$f1,0($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 764
    ldc1	$f0,8($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($v0)
    # Line 765
    ldc1	$f3,16($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,8($v0)
    # Line 766
    ldc1	$f2,24($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,12($v0)
    # Line 767
    addu	$a1,$s0,$a1
    # Line 763
    ldc1	$f1,0($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,16($v0)
    # Line 764
    ldc1	$f0,8($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,20($v0)
    # Line 765
    ldc1	$f3,16($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,24($v0)
    # Line 766
    ldc1	$f2,24($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,28($v0)
    # Line 767
    addu	$a1,$s0,$a1
    # Line 763
    ldc1	$f1,0($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,32($v0)
    # Line 764
    ldc1	$f0,8($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,36($v0)
    # Line 765
    ldc1	$f3,16($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,40($v0)
    # Line 766
    ldc1	$f2,24($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,44($v0)
    # Line 767
    addu	$a1,$s0,$a1
    # Line 763
    ldc1	$f1,0($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,48($v0)
    # Line 764
    ldc1	$f0,8($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,52($v0)
    # Line 765
    ldc1	$f3,16($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,56($v0)
    # Line 766
    ldc1	$f2,24($a1)
    addiu	$v0,$v0,64
    cvt.s.d	$f2,$f2
    # Line 767
    sltu	$at,$v0,$a0
    addu	$a1,$s0,$a1
    bnez	$at,.L0f0f44a4
    # Line 766
    swc1	$f2,-4($v0)
.L0f0f4580:
    b	.L0f0f41dc
    # Line 770
    la	$v1,gl_openobjhdr
.end gl_g_nurbscurve

# Function: gl_freenurbssurface
# Declared: Line 790 (Source lines: 791-806)
# Address: 0x0f0f4588 - 0x0f0f461c (Size: 148 bytes, Frame: 48)
.ent gl_freenurbssurface
gl_freenurbssurface:
    # Line 791
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$gp,8($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-4928
    beqz	$a1,.L0f0f460c
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    lw	$a0,28($s0)
    beqz	$a0,.L0f0f45c4
    # Line 796
    la	$t9,gl_free
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a1,-14644($gp)
    ld	$ra,16($sp)
.L0f0f45c4:
    lw	$a0,44($s0)
    beqz	$a0,.L0f0f45e0
    # Line 799
    la	$t9,gl_free
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a1,-14644($gp)
    ld	$ra,16($sp)
.L0f0f45e0:
    lw	$a0,48($s0)
    beqz	$a0,.L0f0f45f8
    sd	$ra,16($sp)
    # Line 802
    la	$t9,gl_free
    jalr	$t9
    lw	$a1,-14644($gp)
.L0f0f45f8:
    # Line 804
    la	$t9,gl_free
    move	$a0,$s0
    jalr	$t9
    lw	$a1,-14644($gp)
    ld	$ra,16($sp)
.L0f0f460c:
    ld	$gp,8($sp)
    # Line 806
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_freenurbssurface

# Function: gl_nurbssurface
# Declared: Line 816 (Source lines: 817-845)
# Address: 0x0f0f461c - 0x0f0f46d4 (Size: 184 bytes, Frame: 224)
.ent gl_nurbssurface
gl_nurbssurface:
    # Line 817
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    sd	$gp,40($sp)
    sd	$s8,32($sp)
    lui	$s8,0xfff4
    addiu	$s8,$s8,-5076
    addu	$gp,$t9,$s8
    # Line 818
    la	$t1,gl_wstatep
    # Line 823
    lw	$at,-20548($gp)
    # Line 817
    move	$s8,$a1
    # Line 818
    lw	$t1,0($t1)
    # Line 823
    sltiu	$t9,$at,1
    beqz	$at,.L0f0f46c0
    sd	$t9,48($sp)
.L0f0f4654:
    # Line 829
    lw	$a7,48($s8)
    lw	$a6,12($s8)
    lw	$a5,8($s8)
    lw	$a4,44($s8)
    lw	$a3,36($s8)
    lw	$a2,28($s8)
    lw	$v1,16($s8)
    lw	$a1,20($s8)
    lw	$a0,11736($t1)
    sw	$v1,4($sp)
    lw	$v0,32($s8)
    sw	$v0,12($sp)
    la	$t9,gluNurbsSurface
    lw	$at,4($s8)
    jalr	$t9
    sw	$at,20($sp)
    ld	$a0,48($sp)
    ld	$s8,32($sp)
    beqz	$a0,.L0f0f46b4
    ld	$ra,56($sp)
    # Line 842
    la	$t9,endsurface
    jalr	$t9
    nop
    ld	$ra,56($sp)
.L0f0f46b4:
    ld	$gp,40($sp)
    # Line 845
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f46c0:
    # Line 826
    la	$t9,bgnsurface
    jalr	$t9
    sd	$t1,64($sp)
    b	.L0f0f4654
    ld	$t1,64($sp)
.end gl_nurbssurface

# Function: gl_g_nurbssurface
# Declared: Line 868 (Source lines: 869-1043)
# Address: 0x0f0f46d4 - 0x0f0f51a4 (Size: 2768 bytes, Frame: 176)
.globl gl_g_nurbssurface
.ent gl_g_nurbssurface
gl_g_nurbssurface:
    # Line 869
    addiu	$sp,$sp,-176
    sd	$s3,64($sp)
    move	$s3,$a7
    sd	$a6,16($sp)
    sd	$s1,24($sp)
    move	$s1,$a5
    sd	$s0,48($sp)
    move	$s0,$a4
    sd	$a3,0($sp)
    sd	$s6,72($sp)
    move	$s6,$a2
    sd	$s5,32($sp)
    sd	$gp,56($sp)
    sd	$ra,40($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-5260
    addu	$gp,$t9,$ra
    # Line 875
    la	$t9,sub_0f0f0000
    # Line 869
    move	$s5,$a1
    sd	$s2,80($sp)
    # Line 875
    addiu	$t9,$t9,13148
    bal gl_normalmode
    # Line 869
    move	$s2,$a0
    # Line 877
    la	$t9,sub_0f0f0000
    move	$a0,$s5
    move	$a1,$s2
    addiu	$t9,$t9,20900
    bal gl_g_nurbssurface
    move	$a2,$s3
    beqz	$v0,.L0f0f4794
    # Line 878
    move	$a0,$s5
    move	$a1,$s2
    la	$t9,sub_0f0f0000
    move	$a2,$s3
    la	$a3,sub_0f020000
    addiu	$t9,$t9,22656
    bal gl_nurbserror
    addiu	$a3,$a3,18640
    ld	$gp,56($sp)
    # Line 879
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,80($sp)
    ld	$s3,64($sp)
    ld	$ra,40($sp)
    ld	$s5,32($sp)
    ld	$s6,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0f4794:
    # Line 881
    ld	$a0,0($sp)
    la	$t9,sub_0f0f0000
    move	$a1,$s6
    lw	$a2,180($sp)
    addiu	$t9,$t9,20900
    bal gl_g_nurbssurface
    sd	$a2,8($sp)
    beqz	$v0,.L0f0f47fc
    ld	$a0,0($sp)
    # Line 882
    move	$a1,$s6
    la	$t9,sub_0f0f0000
    ld	$a2,8($sp)
    la	$a3,sub_0f020000
    addiu	$t9,$t9,22656
    bal gl_nurbserror
    addiu	$a3,$a3,18656
    ld	$gp,56($sp)
    # Line 883
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,80($sp)
    ld	$s3,64($sp)
    ld	$ra,40($sp)
    ld	$s5,32($sp)
    ld	$s6,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0f47fc:
    # Line 887
    la	$t9,gl_malloc
    sd	$s4,88($sp)
    lw	$a1,-14644($gp)
    jalr	$t9
    li	$a0,52
    move	$s4,$v0
    # Line 900
    sw	$s1,40($v0)
    # Line 899
    sw	$s6,36($v0)
    # Line 897
    sw	$s3,16($v0)
    # Line 896
    sw	$s0,24($v0)
    # Line 895
    sw	$s2,20($v0)
    # Line 901
    ld	$at,8($sp)
    # Line 904
    lw	$a0,188($sp)
    # Line 905
    li	$a1,136
    # Line 901
    sw	$at,32($v0)
    # Line 905
    beq	$a0,$a1,.L0f0f4eb0
    # Line 904
    sw	$a0,0($v0)
    # Line 905
    li	$v1,141
    beq	$a0,$v1,.L0f0f4fc8
    li	$t0,76
    beq	$a0,$t0,.L0f0f512c
    li	$t1,81
    beq	$a0,$t1,.L0f0f5148
    li	$at,208
    beq	$a0,$at,.L0f0f4af0
    li	$v1,213
    beq	$a0,$v1,.L0f0f4af0
    # Line 928
    la	$t9,gl_nurbserror
    sd	$a0,104($sp)
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18672
    sd	$s7,96($sp)
    lw	$v0,8($s4)
.L0f0f4884:
    # Line 934
    subu	$s7,$s2,$s3
    mult	$v0,$s7
    # Line 936
    lw	$a1,-14644($gp)
    la	$t9,gl_malloc
    sll	$a0,$s2,0x2
    # Line 934
    mflo	$a2
    # Line 936
    jalr	$t9
    # Line 934
    sw	$a2,12($s4)
    # Line 939
    la	$t9,gl_malloc
    lw	$a1,-14644($gp)
    sll	$a0,$s6,0x2
    jalr	$t9
    # Line 936
    sw	$v0,28($s4)
    # Line 942
    lw	$t9,12($s4)
    lw	$t8,8($s4)
    multu	$t8,$t9
    ld	$s3,8($sp)
    mflo	$a1
    nop
    subu	$s3,$s6,$s3
    multu	$a1,$s3
    # Line 939
    sw	$v0,44($s4)
    # Line 942
    la	$t9,gl_malloc
    lw	$a1,-14644($gp)
    mflo	$a0
    jalr	$t9
    sll	$a0,$a0,0x2
    li	$a2,136
    sw	$v0,48($s4)
    ld	$a1,104($sp)
    blez	$s2,.L0f0f498c
    ld	$a0,16($sp)
    move	$a5,$s5
    move	$a4,$zero
    sll	$v0,$s2,0x3
    move	$a6,$s2
    andi	$v1,$s2,0x1
    beqz	$v1,.L0f0f493c
    addu	$v0,$v0,$s5
    # Line 951
    ldc1	$f0,0($a5)
    lw	$t0,28($s4)
    cvt.s.d	$f0,$f0
    # Line 950
    addiu	$a5,$a5,8
    # Line 951
    addu	$t0,$t0,$a4
    # Line 950
    addiu	$a4,$a4,4
    # Line 951
    swc1	$f0,0($t0)
.L0f0f493c:
    move	$a7,$a4
    sra	$t1,$a6,0x1
    beqz	$t1,.L0f0f498c
    move	$t2,$a5
    move	$a4,$a7
    move	$a5,$t2
.L0f0f4954:
    ldc1	$f2,0($a5)
    cvt.s.d	$f2,$f2
    lw	$t0,28($s4)
    addu	$t0,$t0,$a4
    swc1	$f2,0($t0)
    ldc1	$f1,8($a5)
    # Line 950
    addiu	$a5,$a5,16
    # Line 951
    cvt.s.d	$f1,$f1
    lw	$at,28($s4)
    # Line 950
    addiu	$v1,$a4,4
    addiu	$a4,$v1,4
    # Line 951
    addu	$at,$at,$v1
    # Line 950
    bne	$a5,$v0,.L0f0f4954
    # Line 951
    swc1	$f1,0($at)
.L0f0f498c:
    # Line 950
    blez	$s6,.L0f0f4a1c
    move	$a4,$zero
    move	$a6,$s6
    ld	$t0,0($sp)
    sll	$a5,$s6,0x3
    andi	$t1,$s6,0x1
    move	$v0,$t0
    beqz	$t1,.L0f0f49cc
    addu	$a5,$a5,$t0
    # Line 954
    ldc1	$f3,0($v0)
    lw	$t1,44($s4)
    cvt.s.d	$f3,$f3
    # Line 953
    addiu	$v0,$v0,8
    # Line 954
    addu	$t1,$t1,$a4
    # Line 953
    addiu	$a4,$a4,4
    # Line 954
    swc1	$f3,0($t1)
.L0f0f49cc:
    move	$t2,$a4
    sra	$at,$a6,0x1
    beqz	$at,.L0f0f4a1c
    move	$a7,$v0
    move	$a3,$t2
    move	$v0,$a7
.L0f0f49e4:
    ldc1	$f1,0($v0)
    cvt.s.d	$f1,$f1
    lw	$t1,44($s4)
    addu	$t1,$t1,$a3
    swc1	$f1,0($t1)
    ldc1	$f0,8($v0)
    # Line 953
    addiu	$v0,$v0,16
    # Line 954
    cvt.s.d	$f0,$f0
    lw	$v1,44($s4)
    # Line 953
    addiu	$t0,$a3,4
    addiu	$a3,$t0,4
    # Line 954
    addu	$v1,$v1,$t0
    # Line 953
    bne	$v0,$a5,.L0f0f49e4
    # Line 954
    swc1	$f0,0($v1)
.L0f0f4a1c:
    # Line 956
    lw	$a4,48($s4)
    # Line 960
    beq	$a1,$a2,.L0f0f4ca0
    # Line 958
    move	$a3,$a0
    # Line 960
    li	$at,141
    beq	$a1,$at,.L0f0f4ecc
    li	$v1,76
    beq	$a1,$v1,.L0f0f4fe4
    li	$t0,81
    beq	$a1,$t0,.L0f0f4b0c
    li	$t1,208
    beq	$a1,$t1,.L0f0f4b0c
    li	$at,213
    beq	$a1,$at,.L0f0f4b1c
    # Line 1033
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18672
.L0f0f4a60:
    # Line 1035
    la	$t0,gl_openobjhdr
.L0f0f4a64:
    lw	$t0,0($t0)
    beqz	$t0,.L0f0f4a98
    # Line 1038
    move	$a3,$s4
    li	$a2,1
    ld	$s7,96($sp)
    la	$a1,sub_0f0f0000
    la	$t9,gl_ecallfunc
    la	$a0,sub_0f0f0000
    addiu	$a1,$a1,17800
    jalr	$t9
    addiu	$a0,$a0,17948
    b	.L0f0f4ac8
    ld	$s4,88($sp)
.L0f0f4a98:
    # Line 1040
    la	$t9,sub_0f0f0000
    move	$a1,$s4
    li	$a0,1
    addiu	$t9,$t9,17948
    bal gl_g_nurbscurve
    ld	$s7,96($sp)
    # Line 1041
    la	$t9,sub_0f0f0000
    move	$a1,$s4
    addiu	$t9,$t9,17800
    bal gl_g_nurbscurve
    li	$a0,1
    ld	$s4,88($sp)
.L0f0f4ac8:
    ld	$gp,56($sp)
    # Line 1043
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,80($sp)
    ld	$s3,64($sp)
    ld	$ra,40($sp)
    ld	$s5,32($sp)
    ld	$s6,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0f4af0:
    sd	$s7,96($sp)
    sd	$a0,104($sp)
    # Line 924
    li	$v0,4
    # Line 925
    li	$at,3504
    sw	$at,4($s4)
    # Line 926
    b	.L0f0f4884
    # Line 924
    sw	$v0,8($s4)
.L0f0f4b0c:
    # Line 999
    blez	$s3,.L0f0f4a60
    move	$a2,$zero
    b	.L0f0f4c38
    move	$v0,$a3
.L0f0f4b1c:
    # Line 1015
    blez	$s3,.L0f0f4a60
    move	$a2,$zero
    b	.L0f0f4d74
    dmtc1	$zero,$f5
    move	$a6,$a4
.L0f0f4b30:
    sra	$v1,$t2,0x2
    move	$a5,$a0
    beqz	$v1,.L0f0f4c2c
    move	$a7,$v0
    move	$a1,$a5
    move	$v0,$a6
    move	$a0,$a7
.L0f0f4b4c:
    # Line 1001
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 1002
    ldc1	$f0,8($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($v0)
    # Line 1003
    ldc1	$f3,16($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,8($v0)
    # Line 1004
    ldc1	$f2,24($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,12($v0)
    # Line 1005
    addu	$a0,$s0,$a0
    # Line 1001
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,16($v0)
    # Line 1002
    ldc1	$f0,8($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,20($v0)
    # Line 1003
    ldc1	$f3,16($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,24($v0)
    # Line 1004
    ldc1	$f2,24($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,28($v0)
    # Line 1005
    addu	$a0,$s0,$a0
    # Line 1001
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,32($v0)
    # Line 1002
    ldc1	$f0,8($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,36($v0)
    # Line 1003
    ldc1	$f3,16($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,40($v0)
    # Line 1004
    ldc1	$f2,24($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,44($v0)
    # Line 1005
    addu	$a0,$s0,$a0
    # Line 1001
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,48($v0)
    # Line 1002
    ldc1	$f0,8($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,52($v0)
    # Line 1003
    ldc1	$f3,16($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,56($v0)
    # Line 1004
    ldc1	$f2,24($a0)
    addiu	$v0,$v0,64
    cvt.s.d	$f2,$f2
    # Line 1000
    addiu	$a1,$a1,4
    # Line 1005
    addu	$a0,$s0,$a0
    # Line 1000
    bne	$s7,$a1,.L0f0f4b4c
    # Line 1004
    swc1	$f2,-4($v0)
    move	$a4,$v0
.L0f0f4c2c:
    # Line 999
    addiu	$a2,$a2,1
    beq	$s3,$a2,.L0f0f4a60
    move	$v0,$a3
.L0f0f4c38:
    # Line 1007
    addu	$a3,$s1,$a3
    # Line 1000
    move	$t2,$s7
    blez	$s7,.L0f0f4c2c
    move	$a0,$zero
    andi	$a1,$s7,0x3
    beqz	$a1,.L0f0f4b30
    move	$a6,$a4
.L0f0f4c54:
    # Line 1001
    ldc1	$f1,0($v0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a4)
    # Line 1002
    ldc1	$f0,8($v0)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($a4)
    # Line 1003
    ldc1	$f3,16($v0)
    cvt.s.d	$f3,$f3
    swc1	$f3,8($a4)
    # Line 1004
    ldc1	$f2,24($v0)
    # Line 1000
    addiu	$a0,$a0,1
    # Line 1004
    addiu	$a4,$a4,16
    cvt.s.d	$f2,$f2
    addi	$a1,$a1,-1
    # Line 1005
    addu	$v0,$s0,$v0
    bnez	$a1,.L0f0f4c54
    # Line 1004
    swc1	$f2,-4($a4)
    b	.L0f0f4b30
    move	$a6,$a4
.L0f0f4ca0:
    # Line 962
    blez	$s3,.L0f0f4a60
    move	$a2,$zero
    b	.L0f0f4e68
    move	$v0,$a3
.L0f0f4cb0:
    move	$a6,$a4
.L0f0f4cb4:
    sra	$t0,$a1,0x1
    move	$a5,$a0
    beqz	$t0,.L0f0f4d68
    move	$a7,$v0
    move	$a1,$a5
    move	$v0,$a6
    move	$a0,$a7
.L0f0f4cd0:
    # Line 1022
    ldc1	$f1,0($a0)
    div.d	$f1,$f1,$f4
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 1023
    ldc1	$f0,8($a0)
    div.d	$f0,$f0,$f4
    cvt.s.d	$f0,$f0
    swc1	$f0,4($v0)
    # Line 1024
    ldc1	$f3,16($a0)
    div.d	$f3,$f3,$f4
    cvt.s.d	$f3,$f3
    swc1	$f3,8($v0)
    # Line 1025
    ldc1	$f2,24($a0)
    div.d	$f2,$f2,$f4
    cvt.s.d	$f2,$f2
    swc1	$f2,12($v0)
    # Line 1026
    addu	$a0,$s0,$a0
    # Line 1022
    ldc1	$f1,0($a0)
    div.d	$f1,$f1,$f4
    cvt.s.d	$f1,$f1
    swc1	$f1,16($v0)
    # Line 1023
    ldc1	$f0,8($a0)
    div.d	$f0,$f0,$f4
    cvt.s.d	$f0,$f0
    swc1	$f0,20($v0)
    # Line 1024
    ldc1	$f3,16($a0)
    div.d	$f3,$f3,$f4
    cvt.s.d	$f3,$f3
    swc1	$f3,24($v0)
    # Line 1025
    ldc1	$f2,24($a0)
    div.d	$f2,$f2,$f4
    addiu	$v0,$v0,32
    cvt.s.d	$f2,$f2
    # Line 1021
    addiu	$a1,$a1,2
    # Line 1026
    addu	$a0,$s0,$a0
    # Line 1021
    bne	$s7,$a1,.L0f0f4cd0
    # Line 1025
    swc1	$f2,-4($v0)
    move	$a4,$v0
.L0f0f4d68:
    # Line 1015
    addiu	$a2,$a2,1
    beq	$s3,$a2,.L0f0f4a64
    # Line 1035
    la	$t0,gl_openobjhdr
.L0f0f4d74:
    # Line 1016
    ldc1	$f4,32($a3)
    c.eq.d	$f4,$f5
    andi	$t0,$s7,0x1
    # Line 1021
    move	$a1,$s7
    # Line 1016
    bc1t	.L0f0f5164
    # Line 1015
    move	$v0,$a3
    # Line 1021
    move	$a0,$zero
    blez	$s7,.L0f0f4d68
    # Line 1028
    addu	$a3,$s1,$a3
    beqz	$t0,.L0f0f4cb4
    move	$a6,$a4
    # Line 1022
    ldc1	$f1,0($v0)
    div.d	$f1,$f1,$f4
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a4)
    # Line 1023
    ldc1	$f0,8($v0)
    div.d	$f0,$f0,$f4
    cvt.s.d	$f0,$f0
    swc1	$f0,4($a4)
    # Line 1024
    ldc1	$f3,16($v0)
    div.d	$f3,$f3,$f4
    cvt.s.d	$f3,$f3
    swc1	$f3,8($a4)
    # Line 1025
    ldc1	$f2,24($v0)
    div.d	$f2,$f2,$f4
    cvt.s.d	$f2,$f2
    # Line 1021
    addiu	$a0,$a0,1
    # Line 1025
    addiu	$a4,$a4,16
    # Line 1026
    addu	$v0,$s0,$v0
    # Line 1025
    swc1	$f2,-4($a4)
    b	.L0f0f4cb0
    nop
.L0f0f4df4:
    move	$a6,$a4
.L0f0f4df8:
    sra	$t1,$a1,0x1
    move	$a5,$a0
    beqz	$t1,.L0f0f4e5c
    move	$a7,$v0
    move	$a1,$a5
    move	$v0,$a6
    move	$a0,$a7
.L0f0f4e14:
    # Line 964
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 965
    ldc1	$f0,8($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($v0)
    # Line 966
    addu	$a0,$s0,$a0
    # Line 964
    ldc1	$f3,0($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,8($v0)
    # Line 965
    ldc1	$f2,8($a0)
    addiu	$v0,$v0,16
    cvt.s.d	$f2,$f2
    # Line 963
    addiu	$a1,$a1,2
    # Line 966
    addu	$a0,$s0,$a0
    # Line 963
    bne	$s7,$a1,.L0f0f4e14
    # Line 965
    swc1	$f2,-4($v0)
    move	$a4,$v0
.L0f0f4e5c:
    # Line 962
    addiu	$a2,$a2,1
    beq	$s3,$a2,.L0f0f4a60
    move	$v0,$a3
.L0f0f4e68:
    # Line 968
    addu	$a3,$s1,$a3
    # Line 963
    move	$a1,$s7
    blez	$s7,.L0f0f4e5c
    move	$a0,$zero
    andi	$t0,$s7,0x1
    beqz	$t0,.L0f0f4df8
    move	$a6,$a4
    # Line 964
    ldc1	$f3,0($v0)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a4)
    # Line 965
    ldc1	$f2,8($v0)
    cvt.s.d	$f2,$f2
    # Line 963
    addiu	$a0,$a0,1
    # Line 965
    addiu	$a4,$a4,8
    # Line 966
    addu	$v0,$s0,$v0
    # Line 965
    swc1	$f2,-4($a4)
    b	.L0f0f4df4
    nop
.L0f0f4eb0:
    sd	$s7,96($sp)
    sd	$a0,104($sp)
    # Line 907
    li	$v0,2
    # Line 908
    li	$t1,3508
    sw	$t1,4($s4)
    # Line 909
    b	.L0f0f4884
    # Line 907
    sw	$v0,8($s4)
.L0f0f4ecc:
    # Line 973
    blez	$s3,.L0f0f4a60
    move	$a2,$zero
    b	.L0f0f4f6c
    lwc1	$f4,_lit_3f800000
.L0f0f4edc:
    move	$a6,$a4
.L0f0f4ee0:
    sra	$at,$a1,0x1
    move	$a5,$a0
    beqz	$at,.L0f0f4f64
    move	$a7,$v0
    move	$a1,$a5
    move	$v0,$a6
    move	$a0,$a7
.L0f0f4efc:
    # Line 975
    ldc1	$f1,0($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 976
    ldc1	$f0,8($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($v0)
    # Line 977
    swc1	$f4,8($v0)
    # Line 978
    ldc1	$f3,16($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,12($v0)
    # Line 979
    addu	$a0,$s0,$a0
    # Line 975
    ldc1	$f2,0($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,16($v0)
    # Line 976
    ldc1	$f1,8($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,20($v0)
    # Line 977
    swc1	$f4,24($v0)
    # Line 978
    ldc1	$f0,16($a0)
    addiu	$v0,$v0,32
    cvt.s.d	$f0,$f0
    # Line 974
    addiu	$a1,$a1,2
    # Line 979
    addu	$a0,$s0,$a0
    # Line 974
    bne	$s7,$a1,.L0f0f4efc
    # Line 978
    swc1	$f0,-4($v0)
    move	$a4,$v0
.L0f0f4f64:
    # Line 973
    addiu	$a2,$a2,1
    beq	$s3,$a2,.L0f0f4a60
.L0f0f4f6c:
    move	$v0,$a3
    # Line 981
    addu	$a3,$s1,$a3
    # Line 974
    move	$a1,$s7
    blez	$s7,.L0f0f4f64
    move	$a0,$zero
    andi	$t0,$s7,0x1
    beqz	$t0,.L0f0f4ee0
    move	$a6,$a4
    # Line 975
    ldc1	$f0,0($v0)
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a4)
    # Line 976
    ldc1	$f3,8($v0)
    cvt.s.d	$f3,$f3
    # Line 977
    swc1	$f4,8($a4)
    # Line 976
    swc1	$f3,4($a4)
    # Line 978
    ldc1	$f2,16($v0)
    cvt.s.d	$f2,$f2
    # Line 974
    addiu	$a0,$a0,1
    # Line 978
    addiu	$a4,$a4,16
    # Line 979
    addu	$v0,$s0,$v0
    # Line 978
    swc1	$f2,-4($a4)
    b	.L0f0f4edc
    nop
.L0f0f4fc8:
    sd	$s7,96($sp)
    sd	$a0,104($sp)
    # Line 911
    li	$v0,4
    # Line 912
    li	$t1,3510
    sw	$t1,4($s4)
    # Line 913
    b	.L0f0f4884
    # Line 911
    sw	$v0,8($s4)
.L0f0f4fe4:
    # Line 986
    blez	$s3,.L0f0f4a60
    move	$a2,$zero
    b	.L0f0f5108
    move	$v0,$a3
.L0f0f4ff4:
    # Line 988
    ldc1	$f3,0($v0)
.L0f0f4ff8:
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a4)
    # Line 989
    ldc1	$f2,8($v0)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($a4)
    # Line 990
    ldc1	$f1,16($v0)
    # Line 987
    addiu	$a0,$a0,1
    # Line 990
    addiu	$a4,$a4,12
    cvt.s.d	$f1,$f1
    addi	$a1,$a1,-1
    # Line 991
    addu	$v0,$s0,$v0
    bnez	$a1,.L0f0f4ff4
    # Line 990
    swc1	$f1,-4($a4)
    move	$a6,$a4
.L0f0f5030:
    sra	$at,$t2,0x2
    move	$a5,$a0
    beqz	$at,.L0f0f50fc
    move	$a7,$v0
    move	$a0,$a5
    move	$v0,$a6
    move	$a1,$a7
.L0f0f504c:
    # Line 988
    ldc1	$f3,0($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($v0)
    # Line 989
    ldc1	$f2,8($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($v0)
    # Line 990
    ldc1	$f1,16($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($v0)
    # Line 991
    addu	$a1,$s0,$a1
    # Line 988
    ldc1	$f0,0($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($v0)
    # Line 989
    ldc1	$f3,8($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,16($v0)
    # Line 990
    ldc1	$f2,16($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,20($v0)
    # Line 991
    addu	$a1,$s0,$a1
    # Line 988
    ldc1	$f1,0($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,24($v0)
    # Line 989
    ldc1	$f0,8($a1)
    cvt.s.d	$f0,$f0
    swc1	$f0,28($v0)
    # Line 990
    ldc1	$f3,16($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,32($v0)
    # Line 991
    addu	$a1,$s0,$a1
    # Line 988
    ldc1	$f2,0($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,36($v0)
    # Line 989
    ldc1	$f1,8($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,40($v0)
    # Line 990
    ldc1	$f0,16($a1)
    addiu	$v0,$v0,48
    cvt.s.d	$f0,$f0
    # Line 987
    addiu	$a0,$a0,4
    # Line 991
    addu	$a1,$s0,$a1
    # Line 987
    bne	$s7,$a0,.L0f0f504c
    # Line 990
    swc1	$f0,-4($v0)
    move	$a4,$v0
.L0f0f50fc:
    # Line 986
    addiu	$a2,$a2,1
    beq	$s3,$a2,.L0f0f4a60
    move	$v0,$a3
.L0f0f5108:
    # Line 993
    addu	$a3,$s1,$a3
    # Line 987
    move	$t2,$s7
    blez	$s7,.L0f0f50fc
    move	$a0,$zero
    andi	$a1,$s7,0x3
    beqz	$a1,.L0f0f5030
    move	$a6,$a4
    b	.L0f0f4ff8
    # Line 988
    ldc1	$f3,0($v0)
.L0f0f512c:
    sd	$s7,96($sp)
    sd	$a0,104($sp)
    # Line 915
    li	$v0,3
    # Line 916
    li	$t0,3511
    sw	$t0,4($s4)
    # Line 917
    b	.L0f0f4884
    # Line 915
    sw	$v0,8($s4)
.L0f0f5148:
    sd	$s7,96($sp)
    sd	$a0,104($sp)
    # Line 919
    li	$v0,4
    # Line 920
    li	$t1,3512
    sw	$t1,4($s4)
    # Line 921
    b	.L0f0f4884
    # Line 919
    sw	$v0,8($s4)
.L0f0f5164:
    # Line 1018
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,18704
    ld	$gp,56($sp)
    # Line 1019
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,80($sp)
    ld	$s3,64($sp)
    ld	$s4,88($sp)
    ld	$s5,32($sp)
    ld	$ra,40($sp)
    ld	$s6,72($sp)
    ld	$s7,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end gl_g_nurbssurface

# Function: gl_check_knots
# Declared: Line 1054 (Source lines: 1058-1122)
# Address: 0x0f0f51a4 - 0x0f0f537c (Size: 472 bytes, Frame: 144)
.ent gl_check_knots
gl_check_knots:
    # Line 1078
    subu	$a4,$a1,$a2
    # Line 1086
    move	$a5,$a0
    # Line 1071
    blez	$a2,.L0f0f52c8
    # Line 1058
    addiu	$sp,$sp,-144
    # Line 1071
    slti	$at,$a2,9
    beqz	$at,.L0f0f52c8
    # Line 1073
    addu	$v0,$a2,$a2
    slt	$v0,$a1,$v0
    bnez	$v0,.L0f0f5310
    # Line 1078
    sll	$v1,$a2,0x3
    sll	$a4,$a4,0x3
    addu	$a4,$a4,$a0
    addu	$v1,$v1,$a0
    ldc1	$f1,-8($v1)
    ldc1	$f0,0($a4)
    sub.d	$f0,$f0,$f1
    ldc1	$f4,_lit8_3ee4f8b588e368f1
    c.lt.d	$f0,$f4
    nop
    bc1t	.L0f0f5334
    # Line 1105
    slti	$v0,$a1,4
    # Line 1086
    move	$a3,$zero
    slti	$at,$a1,2
    bnez	$at,.L0f0f522c
    addiu	$a6,$a1,-1
    ldc1	$f3,0($a5)
.L0f0f520c:
    ldc1	$f2,8($a5)
    c.lt.d	$f2,$f3
    nop
    bc1t	.L0f0f5290
    addiu	$a5,$a5,8
    addiu	$a3,$a3,1
    bnel	$a6,$a3,.L0f0f520c
    ldc1	$f3,0($a5)
.L0f0f522c:
    # Line 1105
    addiu	$a6,$a1,-2
    bnez	$v0,.L0f0f527c
    # Line 1104
    li	$a5,1
    # Line 1105
    sll	$a3,$a6,0x3
    b	.L0f0f5258
    addu	$a3,$a3,$a0
.L0f0f5244:
    # Line 1107
    slt	$a4,$a2,$a5
    bnez	$a4,.L0f0f52ec
    # Line 1114
    li	$a5,1
.L0f0f5250:
    # Line 1105
    beq	$at,$a3,.L0f0f5280
    slt	$v0,$a2,$a5
.L0f0f5258:
    ldc1	$f1,-8($a3)
    ldc1	$f0,0($a3)
    sub.d	$f0,$f0,$f1
    c.lt.d	$f0,$f4
    addiu	$at,$a0,8
    bc1f	.L0f0f5244
    addiu	$a3,$a3,-8
    # Line 1107
    b	.L0f0f5250
    addiu	$a5,$a5,1
.L0f0f527c:
    # Line 1105
    slt	$v0,$a2,$a5
.L0f0f5280:
    bnez	$v0,.L0f0f5358
    # Line 1122
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f5290:
    # Line 1089
    addiu	$a2,$a3,1
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,18832
    # Line 1091
    la	$t9,gl_nurbserror
    bal gl_nurbserror
    addiu	$a0,$sp,0
    # Line 1092
    ld	$ra,104($sp)
    li	$v0,4
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f52c8:
    # Line 1072
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    sd	$ra,104($sp)
    bal gl_nurbserror
    addiu	$a0,$a0,18752
    # Line 1073
    ld	$ra,104($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f52ec:
    # Line 1111
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    sd	$ra,104($sp)
    bal gl_nurbserror
    addiu	$a0,$a0,18880
    # Line 1112
    ld	$ra,104($sp)
    li	$v0,5
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f5310:
    # Line 1077
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    sd	$ra,104($sp)
    bal gl_nurbserror
    addiu	$a0,$a0,18784
    # Line 1078
    ld	$ra,104($sp)
    li	$v0,2
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f5334:
    # Line 1082
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    sd	$ra,104($sp)
    bal gl_nurbserror
    addiu	$a0,$a0,18800
    # Line 1083
    ld	$ra,104($sp)
    li	$v0,3
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f5358:
    # Line 1118
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    sd	$ra,104($sp)
    bal gl_nurbserror
    addiu	$a0,$a0,18880
    # Line 1119
    ld	$ra,104($sp)
    li	$v0,6
    jr	$ra
    addiu	$sp,$sp,144
.end gl_check_knots

# Function: gl_freenurbsproperty
# Declared: Line 1133 (Source lines: 1134-1137)
# Address: 0x0f0f537c - 0x0f0f53b4 (Size: 56 bytes, Frame: 32)
.globl gl_freenurbsproperty
.ent gl_freenurbsproperty
gl_freenurbsproperty:
    # Line 1134
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,-8500 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1136
    la	$t9,gl_free
    # Line 1134
    move	$a0,$a1
    sd	$ra,0($sp)
    # Line 1136
    jalr	$t9
    lw	$a1,-14636($gp)
    # Line 1137
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_freenurbsproperty

# Function: gl_setnurbsproperty
# Declared: Line 1146 (Source lines: 1147-1237)
# Address: 0x0f0f53b4 - 0x0f0f55a4 (Size: 496 bytes, Frame: 48)
.globl gl_setnurbsproperty
.ent gl_setnurbsproperty
gl_setnurbsproperty:
    # Line 1147
    move	$a4,$a1
    # Line 1171
    li	$a0,5
    # Line 1148
    lw	$a2,0($a1)
    # Line 1147
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a3,0xfff4
    addiu	$a3,$a3,-8556
    addu	$gp,$t9,$a3
    # Line 1148
    sltiu	$at,$a2,15
    # la	a3,sub_0f020000
    la	$a5,gl_wstatep
    sll	$a2,$a2,0x2
    la	$a3,jtbl_0f0249f0
    lw	$a5,0($a5)
    addu	$a2,$a2,$a3
    beqz	$at,.L0f0f545c
    move	$a3,$a5
    lw	$at,0($a2)
    jr	$at
    sd	$a3,0($sp)
.L0f0f5404:
    # Line 1170
    lwc1	$f1,4($a4)
    swc1	$f1,11748($a5)
    # Line 1171
    lwc1	$f0,11748($a3)
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    li	$v0,1
    beq	$a1,$v0,.L0f0f557c
    li	$at,12
    li	$v1,2
    beql	$a1,$v1,.L0f0f5588
    sd	$ra,16($sp)
    beql	$a1,$a0,.L0f0f5590
    sd	$ra,16($sp)
    beq	$a1,$at,.L0f0f5598
    # Line 1187
    lwc1	$f14,_lit_47c35600
    sd	$ra,16($sp)
.L0f0f5444:
    # Line 1190
    la	$t9,gluNurbsProperty
    lw	$a0,11736($a3)
    lui	$a1,0x1
    jalr	$t9
    ori	$a1,$a1,0x876c
    ld	$ra,16($sp)
.L0f0f545c:
    ld	$gp,8($sp)
    # Line 1237
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f5468:
    # Line 1155
    lwc1	$f14,_lit_47c3bb80
    sd	$ra,16($sp)
    lui	$a1,0x1
    ori	$a1,$a1,0x876d
    # Line 1154
    lwc1	$f2,4($a4)
    # Line 1155
    la	$t9,gluNurbsProperty
    ld	$a0,0($sp)
    # Line 1154
    swc1	$f2,11740($a5)
    # Line 1155
    jalr	$t9
    lw	$a0,11736($a0)
    # Line 1157
    lui	$a1,0x1
    ori	$a1,$a1,0x876b
    ld	$a2,0($sp)
    lwc1	$f15,_lit_40000000
    la	$t9,gluNurbsProperty
    lwc1	$f14,11740($a2)
    lw	$a0,11736($a2)
    jalr	$t9
    mul.s	$f14,$f14,$f15
    b	.L0f0f545c
    ld	$ra,16($sp)
.L0f0f54bc:
    # Line 1165
    lwc1	$f17,4($a4)
    swc1	$f17,11744($a5)
    # Line 1166
    mtc1	$zero,$f16
    lwc1	$f15,4($a4)
    c.eq.s	$f15,$f16
    li	$a4,1
    bc1tl	.L0f0f54dc
    move	$a4,$zero
.L0f0f54dc:
    sd	$ra,16($sp)
    lui	$a1,0x1
    ori	$a1,$a1,0x8769
    la	$t9,gluNurbsProperty
    mtc1	$a4,$f14
    lw	$a0,11736($a3)
    jalr	$t9
    cvt.s.w	$f14,$f14
    b	.L0f0f545c
    ld	$ra,16($sp)
.L0f0f5504:
    # Line 1193
    lwc1	$f0,4($a4)
    # Line 1194
    b	.L0f0f545c
    # Line 1193
    swc1	$f0,11752($a5)
.L0f0f5510:
    # Line 1196
    lwc1	$f1,4($a4)
    # Line 1198
    b	.L0f0f545c
    # Line 1196
    swc1	$f1,11760($a5)
.L0f0f551c:
    # Line 1200
    lwc1	$f2,4($a4)
    # Line 1202
    b	.L0f0f545c
    # Line 1200
    swc1	$f2,11764($a5)
.L0f0f5528:
    # Line 1207
    lwc1	$f3,4($a4)
    # Line 1209
    b	.L0f0f545c
    # Line 1207
    swc1	$f3,11756($a5)
.L0f0f5534:
    # Line 1211
    lwc1	$f0,4($a4)
    # Line 1213
    b	.L0f0f545c
    # Line 1211
    swc1	$f0,11768($a5)
.L0f0f5540:
    # Line 1215
    lwc1	$f1,4($a4)
    # Line 1217
    b	.L0f0f545c
    # Line 1215
    swc1	$f1,11772($a5)
.L0f0f554c:
    # Line 1219
    lwc1	$f2,4($a4)
    # Line 1221
    b	.L0f0f545c
    # Line 1219
    swc1	$f2,11776($a5)
.L0f0f5558:
    # Line 1223
    lwc1	$f3,4($a4)
    # Line 1225
    b	.L0f0f545c
    # Line 1223
    swc1	$f3,11780($a5)
.L0f0f5564:
    # Line 1227
    lwc1	$f0,4($a4)
    # Line 1229
    b	.L0f0f545c
    # Line 1227
    swc1	$f0,11784($a5)
.L0f0f5570:
    # Line 1231
    lwc1	$f1,4($a4)
    b	.L0f0f545c
    swc1	$f1,11788($a5)
.L0f0f557c:
    sd	$ra,16($sp)
    # Line 1174
    b	.L0f0f5444
    # Line 1173
    lwc1	$f14,_lit_47c35600
.L0f0f5588:
    # Line 1177
    b	.L0f0f5444
    # Line 1176
    lwc1	$f14,_lit_47c3c800
.L0f0f5590:
    # Line 1180
    b	.L0f0f5444
    # Line 1179
    lwc1	$f14,_lit_47c3c880
.L0f0f5598:
    sd	$ra,16($sp)
    # Line 1185
    b	.L0f0f5444
    # Line 1183
    lwc1	$f14,_lit_47c3c800
.end gl_setnurbsproperty

# Function: gl_g_setnurbsproperty
# Declared: Line 1245 (Source lines: 1246-1261)
# Address: 0x0f0f55a4 - 0x0f0f5674 (Size: 208 bytes, Frame: 192)
.globl gl_g_setnurbsproperty
.ent gl_g_setnurbsproperty
gl_g_setnurbsproperty:
    # Line 1246
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    sd	$gp,24($sp)
    sd	$ra,8($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-9052
    addu	$gp,$t9,$ra
    # Line 1249
    la	$t9,sub_0f0f0000
    # Line 1246
    mov.s	$f30,$f13
    sd	$s7,16($sp)
    # Line 1249
    addiu	$t9,$t9,13148
    bal gl_normalmode
    # Line 1246
    move	$s7,$a0
    # Line 1251
    la	$t9,gl_malloc
    sd	$s0,32($sp)
    lw	$a1,-14636($gp)
    jalr	$t9
    li	$a0,12
    # Line 1253
    la	$at,gl_openobjhdr
    # Line 1251
    move	$s0,$v0
    # Line 1252
    swc1	$f30,4($v0)
    # Line 1253
    dsll32	$v0,$s7,0x10
    dsra32	$v0,$v0,0x10
    sw	$v0,0($s0)
    lw	$at,0($at)
    beqz	$at,.L0f0f5638
    # Line 1256
    move	$a3,$s0
    li	$a2,1
    la	$a1,gl_freenurbsproperty
    la	$t9,gl_ecallfunc
    la	$a0,gl_setnurbsproperty
    ldc1	$f30,0($sp)
    jalr	$t9
    ld	$s7,16($sp)
    ld	$ra,8($sp)
    b	.L0f0f5668
    ld	$s0,32($sp)
.L0f0f5638:
    # Line 1258
    move	$a1,$s0
    la	$t9,gl_setnurbsproperty
    li	$a0,1
    ldc1	$f30,0($sp)
    bal gl_setnurbsproperty
    ld	$s7,16($sp)
    # Line 1259
    la	$t9,gl_freenurbsproperty
    move	$a1,$s0
    bal gl_freenurbsproperty
    li	$a0,1
    ld	$ra,8($sp)
    ld	$s0,32($sp)
.L0f0f5668:
    ld	$gp,24($sp)
    # Line 1261
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_setnurbsproperty

# Function: gl_g_getnurbsproperty
# Declared: Line 1272 (Source lines: 1273-1335)
# Address: 0x0f0f5674 - 0x0f0f5810 (Size: 412 bytes, Frame: 192)
.globl gl_g_getnurbsproperty
.ent gl_g_getnurbsproperty
gl_g_getnurbsproperty:
    # Line 1273
    addiu	$sp,$sp,-64
    sd	$a1,24($sp)
    sd	$s3,8($sp)
    sd	$gp,32($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-9260
    addu	$gp,$t9,$ra
    # Line 1274
    la	$at,gl_wstatep
    # Line 1276
    la	$t9,sub_0f0f0000
    # Line 1273
    move	$s3,$a0
    # Line 1274
    lw	$at,0($at)
    # Line 1276
    addiu	$t9,$t9,13148
    bal gl_normalmode
    sd	$at,16($sp)
    sltiu	$at,$s3,15
    sll	$a0,$s3,0x2
    ld	$s3,8($sp)
    # la	a2,sub_0f020000
    ld	$ra,0($sp)
    la	$a2,jtbl_0f024a30
    beqz	$at,.L0f0f56e4
    addu	$a0,$a0,$a2
    lw	$at,0($a0)
    ld	$a2,16($sp)
    # Line 1324
    ld	$v1,24($sp)
    # Line 1276
    jr	$at
    ld	$s3,8($sp)
.L0f0f56e4:
    # Line 1332
    la	$t9,gl_nurbserror
    la	$a0,sub_0f020000
    bal gl_nurbserror
    addiu	$a0,$a0,19056
    ld	$ra,0($sp)
.L0f0f56f8:
    ld	$gp,32($sp)
    # Line 1335
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f5704:
    ld	$at,16($sp)
    # Line 1280
    ld	$a2,24($sp)
    lwc1	$f0,11740($at)
    # Line 1281
    b	.L0f0f56f8
    # Line 1280
    swc1	$f0,0($a2)
.L0f0f5718:
    # Line 1283
    ld	$v0,24($sp)
    ld	$v1,16($sp)
    lwc1	$f1,11744($v1)
    # Line 1284
    b	.L0f0f56f8
    # Line 1283
    swc1	$f1,0($v0)
.L0f0f572c:
    ld	$at,16($sp)
    # Line 1286
    ld	$a2,24($sp)
    lwc1	$f2,11748($at)
    # Line 1287
    b	.L0f0f56f8
    # Line 1286
    swc1	$f2,0($a2)
.L0f0f5740:
    # Line 1289
    ld	$v0,24($sp)
    ld	$v1,16($sp)
    lwc1	$f3,11752($v1)
    # Line 1290
    b	.L0f0f56f8
    # Line 1289
    swc1	$f3,0($v0)
.L0f0f5754:
    ld	$at,16($sp)
    # Line 1292
    ld	$a2,24($sp)
    lwc1	$f0,11760($at)
    # Line 1294
    b	.L0f0f56f8
    # Line 1292
    swc1	$f0,0($a2)
.L0f0f5768:
    # Line 1296
    ld	$v0,24($sp)
    ld	$v1,16($sp)
    lwc1	$f1,11764($v1)
    # Line 1298
    b	.L0f0f56f8
    # Line 1296
    swc1	$f1,0($v0)
.L0f0f577c:
    # Line 1300
    mtc1	$zero,$f2
    ld	$a2,24($sp)
    # Line 1302
    b	.L0f0f56f8
    # Line 1300
    swc1	$f2,0($a2)
.L0f0f578c:
    ld	$v0,16($sp)
    # Line 1304
    ld	$at,24($sp)
    lwc1	$f3,11756($v0)
    # Line 1306
    b	.L0f0f56f8
    # Line 1304
    swc1	$f3,0($at)
.L0f0f57a0:
    ld	$a2,16($sp)
    # Line 1308
    ld	$v1,24($sp)
    lwc1	$f0,11768($a2)
    # Line 1310
    b	.L0f0f56f8
    # Line 1308
    swc1	$f0,0($v1)
.L0f0f57b4:
    ld	$v0,16($sp)
    # Line 1312
    ld	$at,24($sp)
    lwc1	$f1,11772($v0)
    # Line 1314
    b	.L0f0f56f8
    # Line 1312
    swc1	$f1,0($at)
.L0f0f57c8:
    ld	$a2,16($sp)
    # Line 1316
    ld	$v1,24($sp)
    lwc1	$f2,11776($a2)
    # Line 1318
    b	.L0f0f56f8
    # Line 1316
    swc1	$f2,0($v1)
.L0f0f57dc:
    ld	$v0,16($sp)
    # Line 1320
    ld	$at,24($sp)
    lwc1	$f3,11780($v0)
    # Line 1322
    b	.L0f0f56f8
    # Line 1320
    swc1	$f3,0($at)
.L0f0f57f0:
    # Line 1324
    lwc1	$f0,11784($a2)
    # Line 1326
    b	.L0f0f56f8
    # Line 1324
    swc1	$f0,0($v1)
.L0f0f57fc:
    ld	$v0,16($sp)
    # Line 1328
    ld	$at,24($sp)
    lwc1	$f1,11788($v0)
    # Line 1330
    b	.L0f0f56f8
    # Line 1328
    swc1	$f1,0($at)
.end gl_g_getnurbsproperty

# Function: gl_nurbserror
# Declared: Line 1339 (Source lines: 1340-1347)
# Address: 0x0f0f5810 - 0x0f0f5880 (Size: 112 bytes, Frame: 48)
.globl gl_nurbserror
.ent gl_nurbserror
gl_nurbserror:
    # Line 1340
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-9672 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 1341
    la	$at,gl_wstatep
    lw	$at,0($at)
    mtc1	$zero,$f1
    lwc1	$f0,11752($at)
    c.eq.s	$f0,$f1
    # Line 1340
    move	$a2,$a0
    # Line 1341
    bc1f	.L0f0f5850
    sd	$at,0($sp)
.L0f0f5844:
    ld	$gp,8($sp)
    # Line 1347
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f5850:
    # Line 1344
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,91
    # Line 1345
    ld	$v1,0($sp)
    lwc1	$f3,_lit_3f800000
    lwc1	$f2,11752($v1)
    add.s	$f2,$f2,$f3
    ld	$ra,16($sp)
    b	.L0f0f5844
    swc1	$f2,11752($v1)
.end gl_nurbserror

# Function: gl_show_knots
# Declared: Line 1350 (Source lines: 1355-1365)
# Address: 0x0f0f5880 - 0x0f0f595c (Size: 220 bytes, Frame: 224)
.ent gl_show_knots
gl_show_knots:
    # Line 1355
    la	$at,gl_wstatep
    lw	$at,0($at)
    mtc1	$zero,$f1
    lwc1	$f0,11752($at)
    addiu	$sp,$sp,-96
    sd	$a0,0($sp)
    c.eq.s	$f0,$f1
    sd	$s0,16($sp)
    move	$s0,$a1
    bc1f	.L0f0f58b8
    sd	$a2,8($sp)
    # Line 1360
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f58b8:
    # Line 1361
    move	$a2,$a3
    addiu	$a1,$gp,-17016
    sd	$s1,32($sp)
    la	$s1,__iob
    la	$t9,fprintf
    sd	$ra,24($sp)
    addiu	$s1,$s1,32
    jalr	$t9
    move	$a0,$s1
    sd	$s2,40($sp)
    # Line 1362
    move	$a0,$s1
    move	$a3,$s0
    la	$t9,fprintf
    la	$a1,sub_0f020000
    ld	$a2,8($sp)
    jalr	$t9
    addiu	$a1,$a1,19080
    sd	$s4,48($sp)
    # Line 1363
    move	$s2,$zero
    blez	$s0,.L0f0f5948
    ld	$ra,24($sp)
    ld	$s4,0($sp)
    # Line 1364
    move	$a0,$s1
.L0f0f5914:
    move	$a2,$s2
    # Line 1363
    addiu	$s4,$s4,8
    # Line 1364
    ldc1	$f2,-8($s4)
    la	$t9,fprintf
    la	$a1,sub_0f020000
    dmfc1	$a3,$f2
    jalr	$t9
    addiu	$a1,$a1,19112
    # Line 1363
    addiu	$s2,$s2,1
    bne	$s0,$s2,.L0f0f5914
    # Line 1364
    move	$a0,$s1
    ld	$ra,24($sp)
    ld	$s4,48($sp)
.L0f0f5948:
    # Line 1365
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_show_knots

# Function: gl_free_nurbs
# Declared: Line 1367 (Source lines: 1368-1373)
# Address: 0x0f0f595c - 0x0f0f59ac (Size: 80 bytes, Frame: 48)
.globl gl_free_nurbs
.ent gl_free_nurbs
gl_free_nurbs:
    # Line 1368
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-10004
    beqz	$a0,.L0f0f599c
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    lw	$a0,11736($s0)
    beqz	$a0,.L0f0f599c
    # Line 1370
    la	$t9,gluDeleteNurbsRenderer
    sd	$ra,16($sp)
    jalr	$t9
    nop
    # Line 1371
    sw	$zero,11736($s0)
    ld	$ra,16($sp)
.L0f0f599c:
    ld	$gp,8($sp)
    # Line 1373
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_free_nurbs

.late_rodata
jtbl_0f0249f0:
    .word .L0f0f545c
    .word .L0f0f5468
    .word .L0f0f54bc
    .word .L0f0f5404
    .word .L0f0f5504
    .word .L0f0f5528
    .word .L0f0f5510
    .word .L0f0f551c
    .word .L0f0f545c
    .word .L0f0f5534
    .word .L0f0f5540
    .word .L0f0f554c
    .word .L0f0f5558
    .word .L0f0f5564
    .word .L0f0f5570
jtbl_0f024a30:
    .word .L0f0f56e4
    .word .L0f0f5704
    .word .L0f0f5718
    .word .L0f0f572c
    .word .L0f0f5740
    .word .L0f0f578c
    .word .L0f0f5754
    .word .L0f0f5768
    .word .L0f0f577c
    .word .L0f0f57a0
    .word .L0f0f57b4
    .word .L0f0f57c8
    .word .L0f0f57dc
    .word .L0f0f57f0
    .word .L0f0f57fc

.rdata
_lit8_3ee4f8b588e368f1:
    .word 0x3ee4f8b5, 0x88e368f1
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_42480000:
    .word 0x42480000
_lit_47c35600:
    .word 0x47c35600
_lit_47c3bb80:
    .word 0x47c3bb80
_lit_47c3c800:
    .word 0x47c3c800
_lit_47c3c880:
    .word 0x47c3c880

