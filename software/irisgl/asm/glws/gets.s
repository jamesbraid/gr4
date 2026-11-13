# Source: ../igloo/glws/gets.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/gets.c -o gets.T
# Total Functions: 21

.text

# Function: gl_g_getbuffer
# Declared: Line 7 (Source lines: 8-33)
# Address: 0x0f0c01bc - 0x0f0c022c (Size: 112 bytes, Frame: 0)
.globl gl_g_getbuffer
.ent gl_g_getbuffer
gl_g_getbuffer:
    # Line 8
    lui	$v0,0xfff7
    addiu	$v0,$v0,12428
    addu	$at,$t9,$v0
    # Line 13
    lw	$a4,-23296($at)
    lw	$a4,0($a4)
    lw	$a4,276($a4)
    lw	$a4,60($a4)
    lw	$v1,0($a4)
    li	$a0,1
    beq	$v1,$a0,.L0f0c0224
    # Line 10
    move	$v0,$zero
    # Line 19
    lhu	$a3,52($a4)
    andi	$v1,$a3,0x1
    beqz	$v1,.L0f0c0200
    # Line 23
    andi	$a0,$a3,0x2
    li	$v0,1
    andi	$a0,$a3,0x2
.L0f0c0200:
    beqz	$a0,.L0f0c0210
    # Line 27
    andi	$a1,$a3,0x4
    ori	$v0,$v0,0x2
    andi	$a1,$a3,0x4
.L0f0c0210:
    beqz	$a1,.L0f0c021c
    nop
    # Line 31
    ori	$v0,$v0,0x4
.L0f0c021c:
    # Line 33
    jr	$ra
    nop
.L0f0c0224:
    # Line 19
    jr	$ra
    move	$v0,$zero
.end gl_g_getbuffer

# Function: gl_g_getothermonitor
# Declared: Line 36 (Source lines: 39-39)
# Address: 0x0f0c022c - 0x0f0c0234 (Size: 8 bytes, Frame: 0)
.globl gl_g_getothermonitor
.ent gl_g_getothermonitor
gl_g_getothermonitor:
    # Line 39
    jr	$ra
    move	$v0,$zero
.end gl_g_getothermonitor

# Function: gl_g_getvideo
# Declared: Line 42 (Source lines: 46-46)
# Address: 0x0f0c0234 - 0x0f0c023c (Size: 8 bytes, Frame: 0)
.globl gl_g_getvideo
.ent gl_g_getvideo
gl_g_getvideo:
    # Line 46
    jr	$ra
    move	$v0,$zero
.end gl_g_getvideo

# Function: gl_g_getmap
# Declared: Line 49 (Source lines: 51-51)
# Address: 0x0f0c023c - 0x0f0c0244 (Size: 8 bytes, Frame: 0)
.globl gl_g_getmap
.ent gl_g_getmap
gl_g_getmap:
    # Line 51
    jr	$ra
    move	$v0,$zero
.end gl_g_getmap

# Function: gl_g_gRGBcolor
# Declared: Line 56 (Source lines: 57-65)
# Address: 0x0f0c0244 - 0x0f0c02e0 (Size: 156 bytes, Frame: 224)
.globl gl_g_gRGBcolor
.ent gl_g_gRGBcolor
gl_g_gRGBcolor:
    # Line 57
    addiu	$sp,$sp,-96
    sd	$a1,48($sp)
    # Line 60
    addiu	$a1,$sp,0
    sd	$s8,24($sp)
    # Line 57
    move	$s8,$a0
    sd	$gp,32($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,12292 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 60
    la	$t9,__iglooGetFloatv
    li	$a0,2816
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a2,40($sp)
    # Line 62
    lwc1	$f1,_lit_437f0000
    lwc1	$f3,0($sp)
    mul.s	$f3,$f3,$f1
    trunc.w.s	$f3,$f3
    mfc1	$ra,$f3
    nop
    sh	$ra,0($s8)
    # Line 63
    lwc1	$f2,4($sp)
    mul.s	$f2,$f2,$f1
    trunc.w.s	$f2,$f2
    ld	$a3,48($sp)
    mfc1	$a0,$f2
    nop
    sh	$a0,0($a3)
    # Line 64
    lwc1	$f0,8($sp)
    mul.s	$f0,$f0,$f1
    ld	$gp,32($sp)
    trunc.w.s	$f0,$f0
    ld	$v1,40($sp)
    # Line 65
    ld	$s8,24($sp)
    ld	$ra,16($sp)
    # Line 64
    mfc1	$v0,$f0
    # Line 65
    addiu	$sp,$sp,96
    jr	$ra
    # Line 64
    sh	$v0,0($v1)
.end gl_g_gRGBcolor

# Function: gl_g_getbackface
# Declared: Line 68 (Source lines: 69-80)
# Address: 0x0f0c02e0 - 0x0f0c0350 (Size: 112 bytes, Frame: 32)
.globl gl_g_getbackface
.ent gl_g_getbackface
gl_g_getbackface:
    # Line 73
    li	$a0,2884
    # Line 69
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,12136 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 73
    la	$t9,__iglooIsEnabled
    sd	$s7,24($sp)
    sd	$ra,8($sp)
    bal __iglooIsEnabled
    # Line 71
    move	$s7,$zero
    # Line 73
    beqz	$v0,.L0f0c0334
    ld	$ra,8($sp)
    # Line 75
    la	$t9,__iglooGetIntegerv
    addiu	$a1,$sp,0
    jalr	$t9
    li	$a0,2885
    lw	$v1,0($sp)
    li	$a0,1029
    beq	$v1,$a0,.L0f0c0348
    ld	$ra,8($sp)
.L0f0c0334:
    ld	$gp,16($sp)
    # Line 80
    move	$v0,$s7
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0c0348:
    b	.L0f0c0334
    # Line 78
    li	$s7,1
.end gl_g_getbackface

# Function: gl_g_getcolor
# Declared: Line 88 (Source lines: 89-103)
# Address: 0x0f0c0350 - 0x0f0c03ac (Size: 92 bytes, Frame: 32)
.globl gl_g_getcolor
.ent gl_g_getcolor
gl_g_getcolor:
    # Line 96
    li	$a0,2817
    # Line 89
    addiu	$sp,$sp,-32
    sd	$s8,16($sp)
    sd	$gp,24($sp)
    sd	$ra,8($sp)
    lui	$ra,0xfff7
    addiu	$ra,$ra,12024
    addu	$gp,$t9,$ra
    # Line 96
    la	$t9,__iglooGetFloatv
    # Line 91
    la	$s8,gl_wstatep
    # Line 96
    addiu	$a1,$sp,0
    jalr	$t9
    # Line 91
    lw	$s8,0($s8)
    # Line 103
    lwc1	$f0,0($sp)
    ld	$gp,24($sp)
    trunc.w.s	$f0,$f0
    lw	$v1,12112($s8)
    ld	$s8,16($sp)
    ld	$ra,8($sp)
    mfc1	$v0,$f0
    addiu	$sp,$sp,32
    jr	$ra
    srav	$v0,$v0,$v1
.end gl_g_getcolor

# Function: gl_g_getcpos
# Declared: Line 110 (Source lines: 111-121)
# Address: 0x0f0c03ac - 0x0f0c0428 (Size: 124 bytes, Frame: 208)
.globl gl_g_getcpos
.ent gl_g_getcpos
gl_g_getcpos:
    # Line 111
    addiu	$sp,$sp,-80
    sd	$a1,48($sp)
    # Line 115
    addiu	$a1,$sp,4
    sd	$s8,32($sp)
    sd	$gp,40($sp)
    # Line 111
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,11932 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 115
    la	$t9,__GLgetorigin
    # Line 111
    move	$s8,$a0
    sd	$ra,24($sp)
    # Line 115
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 117
    la	$t9,__iglooGetIntegerv
    addiu	$a1,$sp,8
    jalr	$t9
    li	$a0,2823
    # Line 119
    lw	$a2,0($sp)
    lw	$a0,8($sp)
    addu	$a0,$a0,$a2
    sh	$a0,0($s8)
    ld	$gp,40($sp)
    # Line 120
    lw	$v1,12($sp)
    lw	$v0,4($sp)
    # Line 121
    ld	$ra,24($sp)
    ld	$s8,32($sp)
    # Line 120
    addu	$v0,$v0,$v1
    ld	$v1,48($sp)
    # Line 121
    addiu	$sp,$sp,80
    jr	$ra
    # Line 120
    sh	$v0,0($v1)
.end gl_g_getcpos

# Function: gl_g_getgpos
# Declared: Line 123 (Source lines: 124-199)
# Address: 0x0f0c0428 - 0x0f0c0630 (Size: 520 bytes, Frame: 128)
.globl gl_g_getgpos
.ent gl_g_getgpos
gl_g_getgpos:
    # Line 124
    addiu	$sp,$sp,-256
    sd	$s1,208($sp)
    sd	$a3,176($sp)
    sd	$a2,184($sp)
    sd	$a1,192($sp)
    sd	$a0,200($sp)
    sd	$s0,144($sp)
    sd	$gp,168($sp)
    lui	$t8,0xfff7
    addiu	$t8,$t8,11808
    addu	$gp,$t9,$t8
    # Line 149
    la	$t9,__iglooGetCurrentContextInfo
    # Line 147
    la	$s0,gl_wstatep
    sd	$ra,160($sp)
    # Line 149
    jalr	$t9
    # Line 147
    lw	$s0,0($s0)
    # Line 149
    move	$s1,$v0
    # Line 151
    addiu	$a3,$sp,12
    la	$t9,__iglooGetViewport
    addiu	$a2,$sp,8
    addiu	$a1,$sp,4
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 154
    lw	$at,4($sp)
    mtc1	$at,$f1
    # Line 155
    lw	$v0,8($sp)
    # Line 154
    cvt.s.w	$f1,$f1
    # Line 155
    mtc1	$v0,$f2
    # Line 156
    lw	$v1,12($sp)
    # Line 155
    cvt.s.w	$f2,$f2
    # Line 156
    mtc1	$v1,$f3
    # Line 153
    lw	$ra,0($sp)
    # Line 156
    cvt.s.w	$f3,$f3
    # Line 153
    mtc1	$ra,$f0
    # Line 158
    addiu	$a1,$sp,24
    addiu	$a0,$sp,16
    # Line 153
    cvt.s.w	$f0,$f0
    # Line 158
    la	$t9,__iglooGetDepthRange
    sdc1	$f3,112($sp)
    sdc1	$f2,120($sp)
    sdc1	$f1,128($sp)
    jalr	$t9
    sdc1	$f0,136($sp)
    # Line 160
    la	$t9,__iglooGetRenderMode
    jalr	$t9
    nop
    sd	$v0,152($sp)
    # Line 161
    la	$t9,glFeedbackBuffer
    addiu	$a2,$sp,32
    li	$a1,1540
    jalr	$t9
    li	$a0,20
    # Line 162
    la	$t9,__iglooRenderMode
    move	$a1,$s1
    jalr	$t9
    li	$a0,7169
    # Line 167
    la	$t9,glBegin
    jalr	$t9
    move	$a0,$zero
    lw	$a4,11484($s0)
    li	$a5,1
    beq	$a4,$a5,.L0f0c0614
    # Line 173
    la	$t9,glVertex3i
    lw	$a2,11496($s0)
    lw	$a1,11492($s0)
    jalr	$t9
    lw	$a0,11488($s0)
    ld	$s0,144($sp)
.L0f0c0538:
    # Line 177
    la	$t9,glEnd
    jalr	$t9
    nop
    ld	$v0,152($sp)
    # Line 178
    la	$t9,__iglooRenderMode
    move	$a0,$v0
    jalr	$t9
    move	$a1,$s1
    ld	$ra,160($sp)
    # Line 194
    lwc1	$f2,36($sp)
    ld	$a4,200($sp)
    # Line 195
    ld	$v1,192($sp)
    # Line 190
    ld	$a5,192($sp)
    # Line 178
    slti	$at,$v0,5
    beqz	$at,.L0f0c059c
    ld	$s1,208($sp)
    # Line 189
    ld	$at,200($sp)
    mtc1	$zero,$f0
    # Line 192
    ld	$v1,176($sp)
    # Line 191
    ld	$a4,184($sp)
    # Line 189
    swc1	$f0,0($at)
    # Line 190
    swc1	$f0,0($a5)
    # Line 191
    swc1	$f0,0($a4)
    # Line 192
    b	.L0f0c0608
    swc1	$f0,0($v1)
.L0f0c059c:
    # Line 197
    ld	$a5,176($sp)
    # Line 194
    ldc1	$f3,136($sp)
    sub.s	$f2,$f2,$f3
    lwc1	$f0,_lit_40000000
    mul.s	$f2,$f2,$f0
    ldc1	$f3,120($sp)
    div.s	$f2,$f2,$f3
    lwc1	$f3,_lit_bf800000
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a4)
    # Line 195
    ldc1	$f1,128($sp)
    lwc1	$f2,40($sp)
    sub.s	$f2,$f2,$f1
    mul.s	$f2,$f2,$f0
    ldc1	$f1,112($sp)
    div.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f3
    swc1	$f2,0($v1)
    # Line 196
    ldc1	$f1,136($sp)
    lwc1	$f2,44($sp)
    sub.s	$f2,$f2,$f1
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    ld	$at,184($sp)
    swc1	$f2,0($at)
    # Line 197
    lwc1	$f1,48($sp)
    swc1	$f1,0($a5)
.L0f0c0608:
    ld	$gp,168($sp)
    # Line 199
    jr	$ra
    addiu	$sp,$sp,256
.L0f0c0614:
    # Line 169
    la	$t9,glVertex3f
    lwc1	$f14,11496($s0)
    lwc1	$f13,11492($s0)
    jalr	$t9
    lwc1	$f12,11488($s0)
    b	.L0f0c0538
    ld	$s0,144($sp)
.end gl_g_getgpos

# Function: gl_g_gethgram
# Declared: Line 201 (Source lines: 205-205)
# Address: 0x0f0c0630 - 0x0f0c0638 (Size: 8 bytes, Frame: 0)
.globl gl_g_gethgram
.ent gl_g_gethgram
gl_g_gethgram:
    # Line 205
    jr	$ra
    nop
.end gl_g_gethgram

# Function: gl_g_gethitcode
# Declared: Line 207 (Source lines: 210-210)
# Address: 0x0f0c0638 - 0x0f0c0640 (Size: 8 bytes, Frame: 0)
.globl gl_g_gethitcode
.ent gl_g_gethitcode
gl_g_gethitcode:
    # Line 210
    jr	$ra
    move	$v0,$zero
.end gl_g_gethitcode

# Function: gl_g_getlsbackup
# Declared: Line 213 (Source lines: 215-215)
# Address: 0x0f0c0640 - 0x0f0c0648 (Size: 8 bytes, Frame: 0)
.globl gl_g_getlsbackup
.ent gl_g_getlsbackup
gl_g_getlsbackup:
    # Line 215
    jr	$ra
    move	$v0,$zero
.end gl_g_getlsbackup

# Function: gl_g_getlwidth
# Declared: Line 218 (Source lines: 219-222)
# Address: 0x0f0c0648 - 0x0f0c067c (Size: 52 bytes, Frame: 0)
.globl gl_g_getlwidth
.ent gl_g_getlwidth
gl_g_getlwidth:
    # Line 219
    lui	$v1,0xfff7
    addiu	$v1,$v1,11264
    addu	$at,$t9,$v1
    # Line 222
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    lwc1	$f1,-19612($at)
    lwc1	$f0,16($v0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    jr	$ra
    nop
.end gl_g_getlwidth

# Function: gl_g_getminmax
# Declared: Line 225 (Source lines: 229-229)
# Address: 0x0f0c067c - 0x0f0c0684 (Size: 8 bytes, Frame: 0)
.globl gl_g_getminmax
.ent gl_g_getminmax
gl_g_getminmax:
    # Line 229
    jr	$ra
    nop
.end gl_g_getminmax

# Function: gl_g_getresetls
# Declared: Line 231 (Source lines: 234-234)
# Address: 0x0f0c0684 - 0x0f0c068c (Size: 8 bytes, Frame: 0)
.globl gl_g_getresetls
.ent gl_g_getresetls
gl_g_getresetls:
    # Line 234
    jr	$ra
    move	$v0,$zero
.end gl_g_getresetls

# Function: gl_g_getscrbox
# Declared: Line 237 (Source lines: 244-244)
# Address: 0x0f0c068c - 0x0f0c0694 (Size: 8 bytes, Frame: 0)
.globl gl_g_getscrbox
.ent gl_g_getscrbox
gl_g_getscrbox:
    # Line 244
    jr	$ra
    nop
.end gl_g_getscrbox

# Function: gl_g_getshade
# Declared: Line 246 (Source lines: 247-248)
# Address: 0x0f0c0694 - 0x0f0c06c8 (Size: 52 bytes, Frame: 16)
.globl gl_g_getshade
.ent gl_g_getshade
gl_g_getshade:
    # Line 247
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,11188 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 248
    la	$t9,__GLgetcolor
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_getshade

# Function: gl_g_getsm
# Declared: Line 251 (Source lines: 252-255)
# Address: 0x0f0c06c8 - 0x0f0c06e8 (Size: 32 bytes, Frame: 0)
.globl gl_g_getsm
.ent gl_g_getsm
gl_g_getsm:
    # Line 252
    lui	$v1,0xfff7
    addiu	$v1,$v1,11136
    addu	$at,$t9,$v1
    # Line 255
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    jr	$ra
    lw	$v0,20($v0)
.end gl_g_getsm

# Function: gl_g_getviewport
# Declared: Line 259 (Source lines: 260-272)
# Address: 0x0f0c06e8 - 0x0f0c0798 (Size: 176 bytes, Frame: 224)
.globl gl_g_getviewport
.ent gl_g_getviewport
gl_g_getviewport:
    # Line 260
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    # Line 266
    addiu	$a3,$sp,12
    sd	$a2,48($sp)
    addiu	$a2,$sp,8
    sd	$a1,56($sp)
    sd	$gp,32($sp)
    # Line 260
    lui	$a5,0xfff7
    addiu	$a5,$a5,11104
    addu	$gp,$t9,$a5
    # Line 264
    la	$a4,gl_wstatep
    # Line 266
    addiu	$a1,$sp,4
    sd	$s8,24($sp)
    # Line 264
    lw	$a4,0($a4)
    # Line 260
    move	$s8,$a0
    # Line 266
    addiu	$a0,$sp,0
    # Line 264
    lw	$a4,224($a4)
    # Line 266
    la	$t9,__iglooGetExtViewport
    sd	$ra,16($sp)
    lw	$a5,176($a4)
    jalr	$t9
    lw	$a4,172($a4)
    # Line 268
    lw	$a4,0($sp)
    sh	$a4,0($s8)
    # Line 269
    ld	$a0,48($sp)
    lw	$v1,4($sp)
    sh	$v1,0($a0)
    # Line 270
    lw	$v0,8($sp)
    lw	$at,0($sp)
    addu	$at,$at,$v0
    ld	$v0,56($sp)
    addiu	$at,$at,-1
    sh	$at,0($v0)
    # Line 271
    lw	$ra,12($sp)
    lw	$s8,4($sp)
    addu	$s8,$s8,$ra
    ld	$ra,40($sp)
    addiu	$s8,$s8,-1
    sh	$s8,0($ra)
    # Line 272
    ld	$ra,16($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_g_getviewport

# Function: gl_g_getwritemask
# Declared: Line 274 (Source lines: 275-295)
# Address: 0x0f0c0798 - 0x0f0c0834 (Size: 156 bytes, Frame: 48)
.globl gl_g_getwritemask
.ent gl_g_getwritemask
gl_g_getwritemask:
    # Line 278
    move	$v0,$zero
    # Line 275
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    lui	$a0,0xfff7
    addiu	$a0,$a0,10928
    addu	$gp,$t9,$a0
    # Line 276
    la	$v1,gl_wstatep
    # Line 277
    lw	$at,4100($zero)
    # Line 278
    sw	$zero,0($sp)
    # Line 276
    lw	$v1,0($v1)
    sd	$at,16($sp)
    # Line 278
    beqz	$at,.L0f0c0820
    sd	$v1,8($sp)
    # Line 287
    la	$t9,__iglooGetIndexMask
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    ld	$a1,16($sp)
    lw	$a1,20($a1)
    lw	$a1,12($a1)
    # Line 292
    lw	$v0,0($sp)
    ld	$v1,8($sp)
    # Line 287
    blez	$a1,.L0f0c082c
    ld	$ra,32($sp)
    la	$at,__iglooMixedModel
    lw	$at,0($at)
    bnez	$at,.L0f0c0820
    nop
    # Line 289
    la	$v0,__iglooSoftPupShift
    lw	$v0,0($v0)
    beqz	$v0,.L0f0c0820
    lw	$v0,0($sp)
    # Line 292
    lw	$v1,12112($v1)
    srlv	$v0,$v0,$v1
.L0f0c0820:
    ld	$gp,24($sp)
    # Line 295
    jr	$ra
    addiu	$sp,$sp,48
.L0f0c082c:
    b	.L0f0c0820
    # Line 292
    lw	$v0,0($sp)
.end gl_g_getwritemask

# Function: gl_g_getzbuffer
# Declared: Line 299 (Source lines: 300-301)
# Address: 0x0f0c0834 - 0x0f0c0868 (Size: 52 bytes, Frame: 16)
.globl gl_g_getzbuffer
.ent gl_g_getzbuffer
gl_g_getzbuffer:
    # Line 300
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,10772 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 301
    la	$t9,__iglooIsEnabled
    sd	$ra,0($sp)
    bal __iglooIsEnabled
    li	$a0,2929
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_getzbuffer

.rdata
_lit_40000000:
    .word 0x40000000
_lit_437f0000:
    .word 0x437f0000
_lit_bf800000:
    .word 0xbf800000

