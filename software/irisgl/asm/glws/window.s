# Source: ../igloo/glws/window.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/window.c -o window.T
# Total Functions: 14

.text

# Function: _GLinitXWindowAttributes
# Declared: Line 13 (Source lines: 20-23)
# Address: 0x0f127f80 - 0x0f127f9c (Size: 28 bytes, Frame: 0)
.globl _GLinitXWindowAttributes
.ent _GLinitXWindowAttributes
_GLinitXWindowAttributes:
    # Line 23
    li	$v0,2072
    # Line 21
    sw	$zero,12($a0)
    # Line 20
    lui	$at,0x2
    # Line 22
    li	$v1,10
    sw	$v1,16($a0)
    # Line 23
    jr	$ra
    # Line 20
    sw	$at,40($a0)
.end _GLinitXWindowAttributes

# Function: _GLsetwmcolormaps
# Declared: Line 29 (Source lines: 30-65)
# Address: 0x0f127f9c - 0x0f1280c8 (Size: 300 bytes, Frame: 160)
.globl _GLsetwmcolormaps
.ent _GLsetwmcolormaps
_GLsetwmcolormaps:
    # Line 32
    move	$a3,$zero
    # Line 42
    li	$a6,2
    # Line 30
    addiu	$sp,$sp,-1056
    sd	$gp,1024($sp)
    lui	$at,0xfff1
    addiu	$at,$at,-19796
    # Line 32
    beqz	$a1,.L0f127fc4
    # Line 30
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 36
    sw	$a1,0($sp)
    li	$a3,1
.L0f127fc4:
    lbu	$v0,44($a0)
    li	$v1,4
    beq	$v0,$v1,.L0f1280c0
    # Line 42
    sll	$a4,$a3,0x2
.L0f127fd4:
    move	$t0,$a0
    # Line 41
    addiu	$at,$sp,0
    # Line 42
    addiu	$a7,$at,1000
    b	.L0f128010
    addu	$a4,$a4,$at
.L0f127fe8:
    # Line 57
    sw	$a5,0($a4)
    addiu	$a4,$a4,4
    lbu	$v0,44($a0)
.L0f127ff4:
    beq	$v0,$a6,.L0f12808c
    nop
    # Line 61
    lw	$a0,76($a0)
.L0f128000:
    # Line 43
    beqz	$a0,.L0f128094
    sltu	$v1,$a4,$a7
    beqz	$v1,.L0f128094
    nop
.L0f128010:
    lbu	$a2,44($a0)
    beq	$a2,$a6,.L0f128074
    lw	$a5,8($a0)
    # Line 48
    sw	$a5,0($a4)
    addiu	$a4,$a4,4
    addiu	$a3,$a3,1
.L0f128028:
    lw	$a5,140($a0)
    beqzl	$a5,.L0f128044
    # Line 50
    lw	$a5,144($a0)
    sw	$a5,0($a4)
    addiu	$a4,$a4,4
    addiu	$a3,$a3,1
    lw	$a5,144($a0)
.L0f128044:
    beqzl	$a5,.L0f12805c
    # Line 52
    lw	$a5,136($a0)
    sw	$a5,0($a4)
    addiu	$a4,$a4,4
    addiu	$a3,$a3,1
    lw	$a5,136($a0)
.L0f12805c:
    beqzl	$a5,.L0f127ff4
    # Line 57
    lbu	$v0,44($a0)
    # Line 52
    bnezl	$a1,.L0f127ff4
    # Line 57
    lbu	$v0,44($a0)
    b	.L0f127fe8
    addiu	$a3,$a3,1
.L0f128074:
    # Line 45
    sw	$a5,0($a4)
    # Line 46
    addiu	$a4,$a4,8
    lw	$at,64($a0)
    addiu	$a3,$a3,2
    b	.L0f128028
    sw	$at,-4($a4)
.L0f12808c:
    # Line 59
    b	.L0f128000
    lw	$a0,72($a0)
.L0f128094:
    # Line 43
    beqz	$a3,.L0f1280b4
    # Line 64
    addiu	$a2,$sp,0
    la	$t9,XSetWMColormapWindows
    lw	$a1,64($t0)
    sd	$ra,1032($sp)
    jalr	$t9
    lw	$a0,4($t0)
    ld	$ra,1032($sp)
.L0f1280b4:
    ld	$gp,1024($sp)
    # Line 65
    jr	$ra
    addiu	$sp,$sp,1056
.L0f1280c0:
    b	.L0f127fd4
    # Line 41
    lw	$a0,68($a0)
.end _GLsetwmcolormaps

# Function: _GLnewwindow
# Declared: Line 75 (Source lines: 76-164)
# Address: 0x0f1280c8 - 0x0f128390 (Size: 712 bytes, Frame: 176)
.globl _GLnewwindow
.ent _GLnewwindow
_GLnewwindow:
    # Line 76
    addiu	$sp,$sp,-176
    sd	$s0,120($sp)
    sd	$s5,104($sp)
    move	$s5,$a0
    # Line 86
    li	$a0,188
    sd	$gp,112($sp)
    # Line 76
    lui	$a2,0xfff1
    addiu	$a2,$a2,-20096
    addu	$gp,$t9,$a2
    # Line 86
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    sd	$ra,96($sp)
    jalr	$t9
    addiu	$a1,$a1,22840
    # Line 87
    la	$t9,bzero
    # Line 86
    move	$a0,$v0
    move	$s0,$v0
    # Line 87
    jalr	$t9
    li	$a1,188
    beqz	$s5,.L0f128134
    # Line 93
    la	$t9,_GLinitXWindowAttributes
    # Line 89
    lw	$v0,72($s5)
    beqz	$v0,.L0f12812c
    sw	$v0,76($s0)
    # Line 90
    sw	$s0,80($v0)
.L0f12812c:
    # Line 91
    sw	$s0,72($s5)
    # Line 93
    la	$t9,_GLinitXWindowAttributes
.L0f128134:
    sd	$s1,152($sp)
    sd	$s4,128($sp)
    bal _GLinitXWindowAttributes
    addiu	$a0,$sp,32
    la	$a1,sub_0f030000
    addiu	$a1,$a1,-21192
    # Line 94
    lw	$at,8($a1)
    lw	$s1,12($s5)
    # Line 93
    ori	$s4,$v0,0x4000
    # Line 94
    beqz	$at,.L0f12835c
    addiu	$s1,$s1,28
.L0f128160:
    # Line 99
    la	$t9,__iglooChooseVisual
    bal __iglooChooseVisual
    move	$a0,$s1
    # Line 100
    sw	$s5,68($s0)
    # Line 101
    lw	$a5,4($s5)
    sw	$a5,4($s0)
    # Line 102
    lw	$a4,92($s5)
    sw	$a4,84($s0)
    sw	$a4,92($s0)
    sw	$a4,88($sp)
    # Line 103
    lw	$a3,4($v0)
    # Line 108
    addiu	$a0,$gp,-15928
    # Line 103
    sw	$a3,84($sp)
    # Line 106
    sw	$v0,20($s0)
    # Line 105
    sw	$s1,16($s0)
    # Line 108
    la	$t9,_GLstrdup
    # Line 107
    lw	$a2,12($s5)
    # Line 126
    ori	$s1,$s4,0x2000
    # Line 108
    bal _GLstrdup
    # Line 107
    sw	$a2,12($s0)
    # Line 109
    sw	$zero,32($s0)
    lw	$a4,12($s0)
    # Line 108
    sw	$v0,104($s0)
    # Line 109
    lw	$at,112($a4)
    bne	$at,$s5,.L0f1281d8
    # Line 110
    li	$v0,4
    sd	$s3,144($sp)
    sd	$s2,136($sp)
    b	.L0f1281e0
    li	$v0,2
.L0f1281d8:
    sd	$s3,144($sp)
    sd	$s2,136($sp)
.L0f1281e0:
    sb	$v0,44($s0)
    # Line 111
    lw	$v1,0($a4)
    lw	$v1,20($v1)
    sw	$v1,0($s0)
    # Line 112
    lw	$at,0($a4)
    # Line 121
    li	$s3,100
    # Line 112
    sw	$s0,20($at)
    # Line 126
    la	$at,_GLuseCIvisual
    # Line 122
    sw	$s3,60($s0)
    # Line 124
    lw	$s2,20($s0)
    # Line 121
    sw	$s3,56($s0)
    # Line 126
    lw	$a0,4($s0)
    # Line 124
    lw	$s2,0($s2)
    # Line 126
    lw	$at,0($at)
    lw	$a1,8($s5)
    lw	$s3,0($s2)
    beqz	$at,.L0f128314
    # Line 125
    lw	$s2,12($s2)
    # Line 128
    sw	$s1,20($sp)
    sw	$s3,12($sp)
    move	$a7,$s2
    move	$a6,$zero
    li	$a5,100
    li	$a4,100
    li	$a3,500
    li	$a2,500
    ld	$s5,104($sp)
    ld	$s4,128($sp)
    li	$t0,1
    la	$t9,XCreateWindow
    addiu	$t1,$sp,32
    sw	$t1,28($sp)
    jalr	$t9
    sw	$t0,4($sp)
    move	$a1,$v0
.L0f12826c:
    # Line 138
    move	$a7,$s2
    move	$a6,$zero
    li	$a5,100
    li	$a4,100
    move	$a3,$zero
    move	$a2,$zero
    lw	$a0,4($s0)
    li	$t2,1
    # Line 128
    sw	$a1,64($s0)
    # Line 138
    addiu	$t3,$sp,32
    sw	$t3,28($sp)
    la	$t9,XCreateWindow
    sw	$s1,20($sp)
    sw	$s3,12($sp)
    jalr	$t9
    sw	$t2,4($sp)
    # Line 152
    move	$a1,$zero
    move	$a0,$s0
    # Line 138
    sw	$v0,8($s0)
    # Line 152
    la	$t9,_GLsetwmcolormaps
    ld	$s1,152($sp)
    ld	$s3,144($sp)
    bal _GLsetwmcolormaps
    ld	$s2,136($sp)
    # Line 153
    la	$t9,XMapWindow
    lw	$a1,8($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 159
    move	$a3,$zero
    move	$a1,$s0
    la	$t9,__iglooCreateContextInfo
    lw	$a2,20($s0)
    lw	$a0,4($s0)
    jalr	$t9
    lw	$a2,0($a2)
    ld	$gp,112($sp)
    sw	$v0,24($s0)
    # Line 164
    ld	$ra,96($sp)
    move	$v0,$s0
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f128314:
    # Line 128
    sw	$s4,20($sp)
    sw	$zero,12($sp)
    move	$a7,$zero
    move	$a6,$zero
    li	$a5,100
    li	$a4,100
    li	$a3,500
    li	$a2,500
    ld	$s5,104($sp)
    li	$t0,1
    la	$t9,XCreateWindow
    addiu	$t1,$sp,32
    sw	$t1,28($sp)
    jalr	$t9
    sw	$t0,4($sp)
    move	$a1,$v0
    b	.L0f12826c
    ld	$s4,128($sp)
.L0f12835c:
    # Line 96
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,12
    la	$t2,sub_0f030000
    # Line 97
    la	$t9,__GLgetgdesc
    li	$a0,16
    addiu	$t2,$t2,-21192
    jalr	$t9
    # Line 96
    sw	$v0,8($t2)
    la	$a1,sub_0f030000
    addiu	$a1,$a1,-21192
    b	.L0f128160
    # Line 97
    sw	$v0,20($a1)
.end _GLnewwindow

# Function: _GLdestroywindow
# Declared: Line 167 (Source lines: 168-235)
# Address: 0x0f128390 - 0x0f128544 (Size: 436 bytes, Frame: 48)
.globl _GLdestroywindow
.ent _GLdestroywindow
_GLdestroywindow:
    # Line 168
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lbu	$at,44($a0)
    lui	$v1,0xfff1
    addiu	$v1,$v1,-20808
    beq	$at,$v0,.L0f128524
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 172
    lw	$a1,32($s0)
    andi	$a1,$a1,0x4
    beqz	$a1,.L0f1283e0
    # Line 174
    la	$t9,sub_0f130000
    sd	$ra,16($sp)
    addiu	$t9,$t9,-30088
    bal _GLsetmakebgprop
    move	$a0,$s0
    sd	$s1,24($sp)
    ld	$ra,16($sp)
.L0f1283e0:
    # Line 176
    lw	$a0,12($s0)
    lw	$a0,0($a0)
    lw	$a2,20($a0)
    sd	$s1,24($sp)
    bne	$a2,$s0,.L0f1284f0
    lw	$s1,4($s0)
    # Line 183
    lw	$a1,0($s0)
    sw	$a1,20($a0)
.L0f128400:
    # Line 194
    lw	$a0,68($s0)
.L0f128404:
    beqz	$a0,.L0f128444
    # Line 212
    la	$t9,_GLdestroyOvWindows
    # Line 194
    lw	$a2,72($a0)
    bne	$a2,$s0,.L0f128424
    lw	$a2,76($s0)
    sd	$ra,16($sp)
    # Line 200
    b	.L0f128440
    sw	$a2,72($a0)
.L0f128424:
    # Line 202
    lw	$at,80($s0)
    beqz	$a2,.L0f128440
    sw	$a2,76($at)
    # Line 203
    lw	$v1,76($s0)
    lw	$v0,80($s0)
    sd	$ra,16($sp)
    sw	$v0,80($v1)
.L0f128440:
    # Line 212
    la	$t9,_GLdestroyOvWindows
.L0f128444:
    sd	$ra,16($sp)
    jalr	$t9
    move	$a0,$s0
    # Line 213
    la	$t9,__iglooDestroyContextInfo
    move	$a0,$s1
    jalr	$t9
    lw	$a1,24($s0)
    # Line 215
    lbu	$a1,44($s0)
    li	$at,5
    beq	$a1,$at,.L0f128490
    sw	$zero,24($s0)
    # Line 223
    la	$t9,XDestroyWindow
    move	$a0,$s1
    jalr	$t9
    lw	$a1,8($s0)
    # Line 224
    la	$t9,XDestroyWindow
    move	$a0,$s1
    jalr	$t9
    lw	$a1,64($s0)
.L0f128490:
    # Line 230
    la	$t9,XSync
    move	$a0,$s1
    jalr	$t9
    move	$a1,$zero
    ld	$s1,24($sp)
    lw	$a0,104($s0)
    beqz	$a0,.L0f1284bc
    # Line 233
    la	$t9,gl_free
    la	$a1,sub_0f020000
    jalr	$t9
    addiu	$a1,$a1,22856
.L0f1284bc:
    # Line 234
    la	$t9,gl_free
    la	$a1,sub_0f020000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,22856
    ld	$ra,16($sp)
    # Line 235
    la	$a2,GLlasterror
    ld	$s0,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    sw	$zero,0($a2)
.L0f1284f0:
    # Line 187
    lw	$a0,0($a2)
    # Line 186
    move	$a3,$a2
    # Line 187
    beqzl	$a0,.L0f128404
    # Line 194
    lw	$a0,68($s0)
.L0f128500:
    # Line 187
    beq	$s0,$a0,.L0f12851c
    lw	$a2,0($a0)
    # Line 192
    move	$a3,$a0
    # Line 187
    bnez	$a2,.L0f128500
    move	$a0,$a2
    b	.L0f128404
    # Line 194
    lw	$a0,68($s0)
.L0f12851c:
    # Line 190
    b	.L0f128400
    # Line 189
    sw	$a2,0($a3)
.L0f128524:
    # Line 172
    li	$v0,-8
    la	$at,GLlasterror
    ld	$gp,0($sp)
    li	$s0,-8
    sw	$s0,0($at)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLdestroywindow

# Function: gl_free_windows
# Declared: Line 238 (Source lines: 239-261)
# Address: 0x0f128544 - 0x0f1285f4 (Size: 176 bytes, Frame: 32)
.globl gl_free_windows
.ent gl_free_windows
gl_free_windows:
    # Line 239
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-21244 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a2,gl_valid_cxs
    lw	$a2,0($a2)
    beqz	$a2,.L0f12858c
    # Line 245
    move	$a0,$a2
    sd	$s5,16($sp)
    sd	$ra,8($sp)
.L0f128570:
    # Line 247
    la	$t9,_GLdestroycontext
    bal _GLdestroycontext
    # Line 246
    lw	$s5,0($a0)
    # Line 245
    bnez	$s5,.L0f128570
    move	$a0,$s5
    ld	$ra,8($sp)
    ld	$s5,16($sp)
.L0f12858c:
    la	$a2,gl_thedisplay
    lw	$a2,0($a2)
    beqz	$a2,.L0f1285c8
    sd	$ra,8($sp)
    # Line 254
    lw	$a0,20($a2)
    beqz	$a0,.L0f1285c8
    sd	$ra,8($sp)
    sd	$s5,16($sp)
    sd	$ra,8($sp)
.L0f1285b0:
    # Line 256
    la	$t9,_GLdestroywindow
    bal _GLdestroywindow
    # Line 255
    lw	$s5,0($a0)
    # Line 254
    bnez	$s5,.L0f1285b0
    move	$a0,$s5
    ld	$s5,16($sp)
.L0f1285c8:
    # Line 259
    la	$t9,_GLclearSlots
    jalr	$t9
    nop
    # Line 260
    la	$t9,_GLattachScreen
    move	$a1,$zero
    bal _GLattachScreen
    li	$a0,-1
    # Line 261
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_free_windows

# Function: _GLclearHints
# Declared: Line 263 (Source lines: 264-269)
# Address: 0x0f1285f4 - 0x0f12861c (Size: 40 bytes, Frame: 0)
.globl _GLclearHints
.ent _GLclearHints
_GLclearHints:
    # Line 264
    lw	$a2,96($a0)
    beqzl	$a2,.L0f128608
    # Line 266
    lw	$a2,100($a0)
    sw	$zero,0($a2)
    lw	$a2,100($a0)
.L0f128608:
    beqz	$a2,.L0f128614
    nop
    # Line 268
    sw	$zero,0($a2)
.L0f128614:
    # Line 269
    jr	$ra
    nop
.end _GLclearHints

# Function: _GLsendHints
# Declared: Line 271 (Source lines: 272-287)
# Address: 0x0f12861c - 0x0f1286e4 (Size: 200 bytes, Frame: 48)
.globl _GLsendHints
.ent _GLsendHints
_GLsendHints:
    # Line 272
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lw	$at,32($a0)
    lui	$v0,0xfff1
    addiu	$v0,$v0,-21460
    andi	$at,$at,0x80
    beqz	$at,.L0f128674
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 274
    move	$a0,$s0
    la	$t9,_GLminwinsize
    lw	$a2,116($s0)
    sd	$ra,16($sp)
    bal _GLminwinsize
    lw	$a1,112($s0)
    # Line 275
    la	$t9,_GLmaxwinsize
    move	$a0,$s0
    lw	$a2,116($s0)
    bal _GLmaxwinsize
    lw	$a1,112($s0)
    ld	$ra,16($sp)
.L0f128674:
    lw	$a2,96($s0)
    beqz	$a2,.L0f1286a4
    # Line 278
    la	$t9,XSetWMNormalHints
    lw	$a1,64($s0)
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 279
    la	$t9,XFree
    jalr	$t9
    lw	$a0,96($s0)
    # Line 280
    sw	$zero,96($s0)
    ld	$ra,16($sp)
.L0f1286a4:
    lw	$a2,100($s0)
    beqz	$a2,.L0f1286d4
    # Line 283
    la	$t9,XSetWMHints
    lw	$a1,64($s0)
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 284
    la	$t9,XFree
    jalr	$t9
    lw	$a0,100($s0)
    # Line 285
    sw	$zero,100($s0)
    ld	$ra,16($sp)
.L0f1286d4:
    ld	$gp,8($sp)
    # Line 287
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLsendHints

# Function: _GLsetWM_COMMAND
# Declared: Line 298 (Source lines: 299-326)
# Address: 0x0f1286e4 - 0x0f128878 (Size: 404 bytes, Frame: 224)
.globl _GLsetWM_COMMAND
.ent _GLsetWM_COMMAND
_GLsetWM_COMMAND:
    # Line 299
    addiu	$sp,$sp,-96
    sd	$s1,64($sp)
    sd	$s4,72($sp)
    sd	$ra,48($sp)
    sd	$a0,0($sp)
    sd	$s0,16($sp)
    # Line 307
    move	$s0,$zero
    sd	$gp,8($sp)
    # Line 299
    # lui	v1,0xfff1 (gp disp hi)
    # addiu	v1,v1,-21660 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 302
    la	$v0,__Argc
    sd	$s3,24($sp)
    # Line 303
    la	$s3,__Argv
    # Line 302
    lw	$v0,0($v0)
    sd	$s2,32($sp)
    # Line 303
    lw	$s3,0($s3)
    # Line 307
    blez	$v0,.L0f128780
    # Line 302
    move	$s2,$v0
    sd	$ra,48($sp)
    # Line 307
    move	$s1,$s3
    sll	$s4,$s2,0x2
    b	.L0f128754
    addu	$s4,$s4,$s3
.L0f128744:
    # Line 309
    addu	$s0,$s0,$v0
.L0f128748:
    # Line 307
    sltu	$at,$s1,$s4
    beqz	$at,.L0f128778
    # Line 309
    addiu	$s0,$s0,1
.L0f128754:
    # Line 307
    lw	$a1,0($s1)
    # Line 308
    move	$v0,$zero
    # Line 307
    beqz	$a1,.L0f128744
    addiu	$s1,$s1,4
    # Line 308
    la	$t9,strlen
    jalr	$t9
    move	$a0,$a1
    b	.L0f128748
    # Line 309
    addu	$s0,$s0,$v0
.L0f128778:
    ld	$s1,64($sp)
    ld	$s4,72($sp)
.L0f128780:
    sd	$s6,40($sp)
    sd	$s5,56($sp)
    # Line 311
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,22872
    move	$s6,$v0
    move	$s5,$v0
    beqz	$v0,.L0f128858
    ld	$ra,48($sp)
    blez	$s2,.L0f128814
    # Line 322
    move	$a7,$s0
    sd	$s1,64($sp)
    # Line 311
    move	$s1,$s3
    sd	$s4,72($sp)
    sll	$s4,$s2,0x2
    b	.L0f1287e0
    addu	$s4,$s4,$s3
.L0f1287cc:
    # Line 320
    sb	$zero,0($s5)
    addiu	$s5,$s5,1
.L0f1287d4:
    # Line 315
    addiu	$s1,$s1,4
    beql	$s1,$s4,.L0f12880c
    ld	$s1,64($sp)
.L0f1287e0:
    # Line 311
    lw	$a1,0($s1)
    beqz	$a1,.L0f1287cc
    # Line 317
    la	$t9,strcpy
    jalr	$t9
    move	$a0,$s5
    # Line 318
    la	$t9,strlen
    jalr	$t9
    lw	$a0,0($s1)
    addu	$s5,$v0,$s5
    b	.L0f1287d4
    addiu	$s5,$s5,1
.L0f12880c:
    ld	$s4,72($sp)
    # Line 322
    move	$a7,$s0
.L0f128814:
    move	$a6,$s6
    move	$a5,$zero
    li	$a4,8
    li	$a3,31
    li	$a2,34
    ld	$a0,0($sp)
    la	$t9,XChangeProperty
    ld	$s5,56($sp)
    lw	$a1,64($a0)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 324
    la	$t9,gl_free
    la	$a1,sub_0f020000
    move	$a0,$s6
    jalr	$t9
    addiu	$a1,$a1,22872
    ld	$ra,48($sp)
.L0f128858:
    ld	$gp,8($sp)
    # Line 326
    ld	$s0,16($sp)
    ld	$s2,32($sp)
    ld	$s3,24($sp)
    ld	$s5,56($sp)
    ld	$s6,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end _GLsetWM_COMMAND

# Function: _GLkillmakebgclient
# Declared: Line 336 (Source lines: 337-364)
# Address: 0x0f128878 - 0x0f1289d4 (Size: 348 bytes, Frame: 224)
.globl _GLkillmakebgclient
.ent _GLkillmakebgclient
_GLkillmakebgclient:
    # Line 344
    li	$a6,33
    li	$a5,1
    li	$a4,1
    move	$a3,$zero
    # Line 337
    addiu	$sp,$sp,-96
    # Line 344
    addiu	$a7,$sp,40
    sd	$ra,56($sp)
    sd	$a0,64($sp)
    addiu	$at,$sp,44
    addiu	$v0,$sp,48
    addiu	$v1,$sp,52
    sd	$gp,72($sp)
    # Line 337
    lui	$t0,0xfff1
    addiu	$t0,$t0,-22064
    addu	$gp,$t9,$t0
    # Line 342
    sw	$zero,36($sp)
    # Line 341
    sw	$zero,32($sp)
    # Line 344
    addiu	$t0,$sp,32
    lw	$a2,0($a0)
    lw	$a1,112($a0)
    lw	$a0,4($a0)
    lw	$a2,24($a2)
    la	$t9,XGetWindowProperty
    lw	$a1,64($a1)
    lw	$a2,4($a2)
    sw	$t0,28($sp)
    sw	$v1,20($sp)
    sw	$v0,12($sp)
    jalr	$t9
    sw	$at,4($sp)
    lw	$v0,40($sp)
    li	$at,33
    beq	$at,$v0,.L0f12890c
    ld	$ra,56($sp)
.L0f128900:
    ld	$gp,72($sp)
    # Line 364
    jr	$ra
    addiu	$sp,$sp,96
.L0f12890c:
    # Line 350
    la	$t9,__iglooCatchXErrors
    bal __iglooCatchXErrors
    li	$a0,1
    # Line 352
    addiu	$a7,$sp,40
    li	$a6,33
    li	$a5,1
    li	$a4,1
    move	$a3,$zero
    addiu	$v1,$sp,44
    addiu	$t0,$sp,48
    addiu	$t1,$sp,52
    ld	$a0,64($sp)
    # Line 351
    sw	$zero,40($sp)
    # Line 352
    addiu	$t2,$sp,36
    lw	$a2,0($a0)
    lw	$a1,32($sp)
    la	$t9,XGetWindowProperty
    lw	$a2,24($a2)
    lw	$a1,0($a1)
    lw	$a0,4($a0)
    lw	$a2,4($a2)
    sw	$t2,28($sp)
    sw	$t1,20($sp)
    sw	$t0,12($sp)
    jalr	$t9
    sw	$v1,4($sp)
    lw	$v0,40($sp)
    li	$at,33
    beq	$at,$v0,.L0f1289a0
    # Line 361
    la	$t9,__iglooCatchXErrors
.L0f128984:
    bal __iglooCatchXErrors
    move	$a0,$zero
    # Line 362
    la	$t9,XFree
    jalr	$t9
    lw	$a0,32($sp)
    b	.L0f128900
    ld	$ra,56($sp)
.L0f1289a0:
    # Line 358
    ld	$a0,64($sp)
    la	$t9,XKillClient
    lw	$a1,32($sp)
    lw	$a0,4($a0)
    jalr	$t9
    lw	$a1,0($a1)
    # Line 359
    la	$t9,XSync
    ld	$a0,64($sp)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,4($a0)
    b	.L0f128984
    # Line 361
    la	$t9,__iglooCatchXErrors
.end _GLkillmakebgclient

# Function: _GLsetmakebgprop
# Declared: Line 374 (Source lines: 375-384)
# Address: 0x0f1289d4 - 0x0f128a78 (Size: 164 bytes, Frame: 48)
.globl _GLsetmakebgprop
.ent _GLsetmakebgprop
_GLsetmakebgprop:
    # Line 376
    li	$a7,1
    move	$a5,$zero
    li	$a4,32
    li	$a3,33
    # Line 375
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 376
    lw	$a0,4($a0)
    sd	$ra,0($sp)
    addiu	$a6,$s8,64
    sd	$a6,24($sp)
    sd	$gp,16($sp)
    # Line 375
    lui	$a2,0xfff1
    # Line 376
    lw	$a1,12($s8)
    # Line 375
    addiu	$a2,$a2,-22412
    addu	$gp,$t9,$a2
    # Line 376
    lw	$a2,0($a1)
    lw	$a1,112($a1)
    la	$t9,XChangeProperty
    lw	$a2,24($a2)
    lw	$a1,64($a1)
    jalr	$t9
    lw	$a2,4($a2)
    # Line 380
    li	$a7,1
    ld	$a6,24($sp)
    move	$a5,$zero
    lw	$a2,12($s8)
    li	$a4,32
    li	$a3,33
    lw	$a2,0($a2)
    lw	$a1,64($s8)
    la	$t9,XChangeProperty
    lw	$a2,24($a2)
    lw	$a0,4($s8)
    jalr	$t9
    lw	$a2,4($a2)
    # Line 384
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLsetmakebgprop

# Function: _GLdeletemakebgprop
# Declared: Line 386 (Source lines: 387-390)
# Address: 0x0f128a78 - 0x0f128ab0 (Size: 56 bytes, Frame: 32)
.ent _GLdeletemakebgprop
_GLdeletemakebgprop:
    # Line 388
    lw	$a1,12($a0)
    lw	$a0,4($a0)
    # Line 387
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 388
    lw	$a2,0($a1)
    lw	$a1,112($a1)
    la	$t9,XDeleteProperty
    lw	$a2,24($a2)
    lw	$a1,64($a1)
    jalr	$t9
    lw	$a2,4($a2)
    ld	$ra,0($sp)
    # Line 390
    jr	$ra
    addiu	$sp,$sp,32
.end _GLdeletemakebgprop

# Function: gl_adjust_window
# Declared: Line 398 (Source lines: 399-432)
# Address: 0x0f128ab0 - 0x0f128c5c (Size: 428 bytes, Frame: 240)
.globl gl_adjust_window
.ent gl_adjust_window
gl_adjust_window:
.L0f128ab0:
    # Line 399
    move	$a5,$a1
    move	$a3,$a2
    addiu	$sp,$sp,-112
    sd	$s0,48($sp)
    move	$s0,$a0
    sw	$a2,100($sp)
    sw	$a1,92($sp)
    sd	$gp,56($sp)
    lw	$t2,64($a0)
    lw	$t1,8($a0)
    lui	$at,0xfff1
    addiu	$at,$at,-22632
    beq	$t1,$t2,.L0f128bd0
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$s1,72($sp)
    # Line 403
    beqz	$a5,.L0f128c14
    lw	$s1,4($s0)
.L0f128af4:
    # Line 412
    lw	$v0,56($s0)
    bne	$v0,$a5,.L0f128b10
    # Line 413
    move	$a0,$s1
    # Line 412
    lw	$v1,60($s0)
    beq	$v1,$a3,.L0f128b58
    sd	$ra,64($sp)
    # Line 413
    move	$a0,$s1
.L0f128b10:
    la	$t9,XResizeWindow
    move	$a1,$t1
    sd	$ra,64($sp)
    jalr	$t9
    move	$a2,$a5
    # Line 414
    la	$t9,_GLresizeOvWindows
    move	$a0,$s0
    lw	$a2,100($sp)
    jalr	$t9
    lw	$a1,92($sp)
    # Line 415
    la	$t9,XFlush
    jalr	$t9
    move	$a0,$s1
    # Line 416
    lw	$t1,92($sp)
    sw	$t1,56($s0)
    # Line 417
    lw	$a4,100($sp)
    lw	$t1,8($s0)
    sw	$a4,60($s0)
.L0f128b58:
    # Line 419
    move	$a0,$s1
    move	$a1,$t1
    addiu	$a7,$sp,44
    addiu	$a6,$sp,40
    addiu	$a5,$sp,36
    lw	$a2,12($s0)
    move	$a4,$zero
    la	$t9,XTranslateCoordinates
    lw	$a2,112($a2)
    move	$a3,$zero
    jalr	$t9
    lw	$a2,64($a2)
    # Line 421
    lw	$a3,36($sp)
    sw	$a3,48($s0)
    # Line 422
    move	$a0,$s0
    lw	$a2,100($sp)
    lw	$a1,40($sp)
    la	$t9,_GLinvertY
    ld	$s1,72($sp)
    addu	$a1,$a1,$a2
    bal _GLinvertY
    addiu	$a1,$a1,-1
    # Line 424
    lbu	$a0,44($s0)
    # Line 422
    sw	$v0,52($s0)
    # Line 424
    li	$a4,2
    beq	$a0,$a4,.L0f128be0
    ld	$ra,64($sp)
    li	$at,4
    beql	$a0,$at,.L0f128be4
    # Line 429
    lw	$s0,72($s0)
.L0f128bd0:
    ld	$gp,56($sp)
.L0f128bd4:
    # Line 432
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f128be0:
    # Line 429
    lw	$s0,72($s0)
.L0f128be4:
    beqzl	$s0,.L0f128bd4
    ld	$gp,56($sp)
    # Line 430
    la	$t9,gl_adjust_window
.L0f128bf0:
    move	$a0,$s0
    move	$a1,$zero
    bal .L0f128ab0
    move	$a2,$zero
    # Line 429
    lw	$s0,76($s0)
    bnez	$s0,.L0f128bf0
    # Line 430
    la	$t9,gl_adjust_window
    b	.L0f128bd0
    ld	$ra,64($sp)
.L0f128c14:
    # Line 409
    move	$a0,$s1
    move	$a1,$t2
    addiu	$a7,$sp,28
    addiu	$a6,$sp,100
    addiu	$a5,$sp,92
    addiu	$a4,$sp,24
    addiu	$a3,$sp,20
    addiu	$a2,$sp,16
    la	$t9,XGetGeometry
    sd	$ra,64($sp)
    addiu	$v0,$sp,32
    jalr	$t9
    sw	$v0,4($sp)
    lw	$a5,92($sp)
    lw	$a3,100($sp)
    lw	$t1,8($s0)
    b	.L0f128af4
    ld	$ra,64($sp)
.end gl_adjust_window

# Function: _GLmapwindow
# Declared: Line 434 (Source lines: 435-464)
# Address: 0x0f128c5c - 0x0f128de4 (Size: 392 bytes, Frame: 240)
.globl _GLmapwindow
.ent _GLmapwindow
_GLmapwindow:
    # Line 436
    li	$v0,2
    # Line 435
    addiu	$sp,$sp,-112
    sd	$ra,80($sp)
    sd	$gp,72($sp)
    lui	$v1,0xfff1
    addiu	$v1,$v1,-23060
    sd	$s0,88($sp)
    move	$s0,$a0
    # Line 436
    lbu	$at,44($s0)
    lw	$a0,120($a0)
    # Line 435
    # addu	gp,t9,v1 (gp setup)
    # Line 436
    beq	$at,$v0,.L0f128db4
    sd	$a0,64($sp)
    # Line 439
    lw	$a0,32($s0)
.L0f128c94:
    andi	$a1,$a0,0x18
    beqz	$a1,.L0f128d08
    # Line 444
    addiu	$a3,$sp,0
    la	$t9,XChangeWindowAttributes
    # Line 443
    li	$a2,1
    sw	$a2,48($sp)
    # Line 444
    li	$a2,512
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 445
    move	$a3,$zero
    move	$a2,$zero
    lw	$a1,64($s0)
    lw	$a4,12($s0)
    la	$t9,XMoveResizeWindow
    lw	$a0,4($s0)
    lw	$a5,120($a4)
    jalr	$t9
    lw	$a4,116($a4)
    # Line 447
    move	$a3,$zero
    move	$a2,$zero
    lw	$a1,8($s0)
    lw	$a4,12($s0)
    la	$t9,XMoveResizeWindow
    lw	$a0,4($s0)
    lw	$a5,120($a4)
    jalr	$t9
    lw	$a4,116($a4)
    lw	$a0,32($s0)
.L0f128d08:
    andi	$at,$a0,0x4
    beqz	$at,.L0f128d20
    # Line 452
    la	$t9,XLowerWindow
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
.L0f128d20:
    # Line 454
    la	$t9,XMapWindow
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 455
    la	$t9,XFlush
    jalr	$t9
    lw	$a0,4($s0)
    lw	$v0,32($s0)
    ld	$a1,64($sp)
    andi	$v0,$v0,0x2
    bnez	$v0,.L0f128d94
    ld	$v1,64($sp)
    # Line 460
    beqz	$v1,.L0f128d78
    # Line 462
    la	$t9,_GLupdateQueue
    # Line 460
    lw	$a1,32($a1)
    andi	$a1,$a1,0x2
    bnez	$a1,.L0f128d98
    # Line 464
    move	$v0,$zero
    b	.L0f128d78
    # Line 462
    la	$t9,_GLupdateQueue
.L0f128d70:
    bnez	$at,.L0f128dc8
    la	$t9,_GLupdateQueue
.L0f128d78:
    move	$a1,$zero
    bal _GLupdateQueue
    li	$a0,1
    lw	$v0,32($s0)
    andi	$v0,$v0,0x2
    beqz	$v0,.L0f128d70
    ld	$at,64($sp)
.L0f128d94:
    # Line 464
    move	$v0,$zero
.L0f128d98:
    la	$v1,GLlasterror
    ld	$gp,72($sp)
    ld	$ra,80($sp)
    ld	$s0,88($sp)
    addiu	$sp,$sp,112
    jr	$ra
    sw	$zero,0($v1)
.L0f128db4:
    # Line 439
    la	$t9,_GLquit_close_setup
    jalr	$t9
    move	$a0,$s0
    b	.L0f128c94
    lw	$a0,32($s0)
.L0f128dc8:
    ld	$a1,64($sp)
    # Line 462
    lw	$a1,32($a1)
    andi	$a1,$a1,0x2
    beqz	$a1,.L0f128d78
    la	$t9,_GLupdateQueue
    b	.L0f128d98
    # Line 464
    move	$v0,$zero
.end _GLmapwindow

# Function: _GLfindbgwin
# Declared: Line 467 (Source lines: 468-476)
# Address: 0x0f128de4 - 0x0f128e58 (Size: 116 bytes, Frame: 32)
.globl _GLfindbgwin
.ent _GLfindbgwin
_GLfindbgwin:
    # Line 468
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-23452 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 471
    la	$t9,gl_glx_finddisplay
    sd	$ra,8($sp)
    jalr	$t9
    nop
    beqz	$v0,.L0f128e44
    move	$a2,$v0
    # Line 473
    lw	$v0,20($a2)
    beqz	$v0,.L0f128e48
    # Line 476
    ld	$ra,8($sp)
    # Line 473
    lw	$v1,32($v0)
.L0f128e20:
    andi	$v1,$v1,0x4
    beqzl	$v1,.L0f128e3c
    lw	$v0,0($v0)
    ld	$gp,0($sp)
    # Line 475
    ld	$ra,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f128e3c:
    # Line 473
    bnezl	$v0,.L0f128e20
    lw	$v1,32($v0)
.L0f128e44:
    # Line 476
    ld	$ra,8($sp)
.L0f128e48:
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end _GLfindbgwin

