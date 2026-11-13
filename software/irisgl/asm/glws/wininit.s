# Source: ../igloo/glws/wininit.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/wininit.c -o wininit.T
# Total Functions: 10

.text

# Function: __iglooEarlyDisplayAccess
# Declared: Line 55 (Source lines: 56-64)
# Address: 0x0f128e58 - 0x0f128e74 (Size: 28 bytes, Frame: 0)
.globl __iglooEarlyDisplayAccess
.ent __iglooEarlyDisplayAccess
__iglooEarlyDisplayAccess:
    # Line 56
    lui	$v1,0xfff1
    addiu	$v1,$v1,-23568
    addu	$at,$t9,$v1
    # Line 59
    lw	$v0,-19764($at)
    # Line 63
    sw	$zero,-19764($at)
    # Line 64
    jr	$ra
    # Line 59
    sw	$v0,0($a0)
.end __iglooEarlyDisplayAccess

# Function: gl_catch_x_errors
# Declared: Line 66 (Source lines: 67-75)
# Address: 0x0f128e74 - 0x0f128e88 (Size: 20 bytes, Frame: 0)
.globl gl_catch_x_errors
.ent gl_catch_x_errors
gl_catch_x_errors:
    # Line 67
    lui	$v0,0xfff1
    addiu	$v0,$v0,-23596
    addu	$at,$t9,$v0
    # Line 75
    jr	$ra
    # Line 68
    sw	$a0,-19768($at)
.end gl_catch_x_errors

# Function: _GLioerrorhandler
# Declared: Line 82 (Source lines: 83-89)
# Address: 0x0f128e88 - 0x0f128ec0 (Size: 56 bytes, Frame: 32)
.globl _GLioerrorhandler
.ent _GLioerrorhandler
_GLioerrorhandler:
    # Line 83
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-23616 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 88
    la	$t9,exit
    sd	$ra,0($sp)
    jalr	$t9
    move	$a0,$zero
    # Line 89
    ld	$ra,0($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end _GLioerrorhandler

# Function: _GLerrorhandler
# Declared: Line 93 (Source lines: 94-140)
# Address: 0x0f128ec0 - 0x0f129054 (Size: 404 bytes, Frame: 240)
.globl _GLerrorhandler
.ent _GLerrorhandler
_GLerrorhandler:
    # Line 94
    addiu	$sp,$sp,-112
    sd	$s0,48($sp)
    sd	$gp,56($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-23672 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19768($gp)
    move	$s0,$a1
    sd	$s1,40($sp)
    beqz	$at,.L0f128f04
    move	$s1,$a0
    # Line 100
    move	$v0,$zero
    ld	$gp,56($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f128f04:
    lbu	$t0,17($s0)
    sd	$ra,64($sp)
    la	$v0,__iob
    slti	$v1,$t0,35
    beqz	$v1,.L0f128f6c
    addiu	$v0,$v0,32
    # Line 106
    move	$a0,$v0
    lbu	$a3,16($s0)
    la	$t9,fprintf
    la	$a1,sub_0f020000
    move	$a2,$t0
    jalr	$t9
    addiu	$a1,$a1,22920
    # Line 137
    li	$a1,1
.L0f128f3c:
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,93
    jalr	$t9
    addiu	$a2,$a2,23024
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    # Line 140
    ld	$s1,40($sp)
    move	$v0,$zero
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f128f6c:
    sd	$s4,80($sp)
    sd	$s3,72($sp)
    sd	$v0,32($sp)
    # Line 116
    addiu	$a1,$sp,0
    # Line 114
    la	$a3,sub_0f020000
    # Line 116
    la	$t9,XListExtensions
    move	$a0,$s1
    # Line 114
    addiu	$a3,$a3,22896
    # Line 116
    jalr	$t9
    sd	$a3,16($sp)
    # Line 118
    lw	$a4,0($sp)
    # Line 116
    move	$s3,$v0
    sd	$v0,24($sp)
    # Line 118
    blez	$a4,.L0f129004
    move	$s4,$zero
    b	.L0f128fc8
    # Line 120
    move	$a0,$s1
    # Line 118
    addiu	$s4,$s4,1
.L0f128fb4:
    lw	$a5,0($sp)
    slt	$a5,$s4,$a5
    beqz	$a5,.L0f129004
    addiu	$s3,$s3,4
    # Line 120
    move	$a0,$s1
.L0f128fc8:
    addiu	$a4,$sp,12
    la	$t9,XQueryExtension
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    jalr	$t9
    lw	$a1,0($s3)
    beqzl	$v0,.L0f128fb4
    # Line 118
    addiu	$s4,$s4,1
    # Line 120
    lbu	$t0,17($s0)
    lw	$at,4($sp)
    bne	$at,$t0,.L0f128fb4
    # Line 118
    addiu	$s4,$s4,1
    # Line 123
    lw	$v1,0($s3)
    # Line 124
    b	.L0f129008
    sd	$v1,16($sp)
.L0f129004:
    # Line 118
    lbu	$t0,17($s0)
.L0f129008:
    ld	$a0,32($sp)
    # Line 128
    lbu	$a5,16($s0)
    lbu	$a4,18($s0)
    move	$a3,$t0
    ld	$a2,16($sp)
    ld	$s3,72($sp)
    la	$t9,fprintf
    la	$a1,sub_0f020000
    ld	$s4,80($sp)
    jalr	$t9
    addiu	$a1,$a1,22960
    ld	$a4,24($sp)
    beqz	$a4,.L0f128f3c
    # Line 137
    li	$a1,1
    # Line 134
    la	$t9,XFreeExtensionList
    jalr	$t9
    ld	$a0,24($sp)
    b	.L0f128f3c
    # Line 137
    li	$a1,1
.end _GLerrorhandler

# Function: _GLmakeglwindow
# Declared: Line 143 (Source lines: 144-153)
# Address: 0x0f129054 - 0x0f1290ec (Size: 152 bytes, Frame: 192)
.globl _GLmakeglwindow
.ent _GLmakeglwindow
_GLmakeglwindow:
    # Line 144
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 145
    li	$a0,188
    sd	$a1,32($sp)
    sd	$gp,16($sp)
    # Line 144
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-24076 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 145
    la	$t9,gl_malloc
    la	$at,sub_0f020000
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$at,23072
    move	$a0,$v0
    # Line 147
    la	$t9,bzero
    # Line 145
    move	$v1,$v0
    sd	$v0,24($sp)
    # Line 147
    jalr	$t9
    li	$a1,188
    ld	$v0,24($sp)
    # Line 149
    ld	$a2,32($sp)
    sw	$a2,12($v0)
    # Line 148
    sw	$s8,8($v0)
    sw	$s8,64($v0)
    # Line 150
    lw	$s8,0($a2)
    lw	$s8,20($s8)
    sw	$s8,0($v0)
    # Line 151
    lw	$a3,0($a2)
    lw	$a3,4($a3)
    ld	$gp,16($sp)
    # Line 153
    ld	$ra,0($sp)
    # Line 151
    sw	$a3,4($v0)
    # Line 153
    ld	$s8,8($sp)
    # Line 152
    lw	$a2,0($a2)
    # Line 153
    addiu	$sp,$sp,64
    jr	$ra
    # Line 152
    sw	$v0,20($a2)
.end _GLmakeglwindow

# Function: board_number_of_screen
# Declared: Line 156 (Source lines: 157-195)
# Address: 0x0f1290ec - 0x0f1291c4 (Size: 216 bytes, Frame: 224)
.ent board_number_of_screen
board_number_of_screen:
    # Line 171
    move	$a5,$zero
    li	$a4,1
    move	$a3,$zero
    # Line 157
    addiu	$sp,$sp,-96
    sd	$s8,64($sp)
    # Line 171
    addiu	$a7,$sp,36
    sd	$ra,56($sp)
    addiu	$a6,$sp,32
    addiu	$at,$sp,40
    addiu	$v0,$sp,44
    addiu	$v1,$sp,48
    # Line 158
    la	$a2,gl_thedisplay
    # Line 171
    la	$t9,XGetWindowProperty
    sd	$s0,72($sp)
    # Line 158
    lw	$a2,0($a2)
    # Line 157
    move	$s0,$a0
    # Line 171
    sll	$t0,$s0,0x2
    # Line 158
    lw	$a0,4($a2)
    # Line 162
    sw	$zero,32($sp)
    # Line 171
    addu	$t0,$t0,$s0
    lw	$a1,140($a0)
    sll	$t0,$t0,0x4
    lw	$a2,24($a2)
    addu	$a1,$a1,$t0
    lw	$a1,8($a1)
    lw	$a2,40($a2)
    sw	$v1,20($sp)
    sw	$v0,12($sp)
    sw	$at,4($sp)
    sw	$a6,28($sp)
    jalr	$t9
    move	$a6,$a2
    bnez	$v0,.L0f129190
    ld	$ra,56($sp)
    lw	$a0,32($sp)
    beqz	$a0,.L0f129190
    # Line 187
    la	$t9,XFree
    jalr	$t9
    # Line 186
    lw	$s8,0($a0)
    b	.L0f129194
    ld	$ra,56($sp)
.L0f129190:
    # Line 191
    move	$s8,$s0
.L0f129194:
    # Line 194
    la	$at,gl_scrntab
    sll	$v0,$s0,0x2
    lw	$at,0($at)
    addu	$v0,$v0,$s0
    sll	$v0,$v0,0x3
    addu	$at,$at,$v0
    # Line 195
    move	$v0,$s0
    ld	$s0,72($sp)
    # Line 194
    sw	$s8,24($at)
    # Line 195
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end board_number_of_screen

# Function: _GLmakescreen
# Declared: Line 198 (Source lines: 199-245)
# Address: 0x0f1291c4 - 0x0f129390 (Size: 460 bytes, Frame: 192)
.globl _GLmakescreen
.ent _GLmakescreen
_GLmakescreen:
    # Line 199
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    sd	$s8,32($sp)
    sd	$s7,8($sp)
    move	$s7,$a0
    # Line 205
    li	$a0,276
    sd	$gp,16($sp)
    # Line 199
    lui	$a2,0xfff1
    addiu	$a2,$a2,-24444
    addu	$gp,$t9,$a2
    # Line 205
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$a1,23088
    move	$s8,$v0
    # Line 206
    la	$t9,bzero
    # Line 205
    move	$s0,$v0
    # Line 206
    move	$a0,$v0
    jalr	$t9
    li	$a1,276
    # Line 208
    la	$a3,gl_thedisplay
    lw	$a4,0($a3)
    lw	$a4,4($a4)
    # Line 211
    la	$t9,sub_0f130000
    # Line 209
    sw	$s7,8($s8)
    # Line 208
    sw	$a4,4($s8)
    # Line 211
    move	$a0,$s7
    # Line 210
    lw	$a3,0($a3)
    # Line 211
    addiu	$t9,$t9,-28436
    bal _GLmakeglwindow
    # Line 210
    sw	$a3,0($s8)
    # Line 215
    move	$a1,$s0
    ld	$s8,32($sp)
    # Line 213
    lw	$a0,4($s0)
    # Line 211
    sw	$v0,12($s0)
    ld	$s7,8($sp)
    # Line 213
    lw	$a2,132($a0)
    # Line 215
    lw	$a3,8($s0)
    la	$t9,_GLmakeglwindow
    # Line 213
    sw	$a2,16($s0)
    # Line 215
    sll	$a2,$a3,0x2
    lw	$a0,140($a0)
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x4
    addu	$a0,$a0,$a2
    bal _GLmakeglwindow
    lw	$a0,8($a0)
    sw	$v0,112($s0)
    # Line 216
    li	$t9,1
    sb	$t9,44($v0)
    # Line 217
    lw	$t9,112($s0)
    lw	$t8,32($t9)
    ori	$t8,$t8,0x2
    sw	$t8,32($t9)
    # Line 221
    lw	$t3,0($s0)
    lw	$t8,112($s0)
    lw	$t3,28($t3)
    sw	$t3,92($t8)
    # Line 222
    lw	$t2,112($s0)
    lw	$t1,92($t2)
    sw	$t1,84($t2)
    # Line 223
    lw	$t0,112($s0)
    sh	$zero,88($t0)
    # Line 225
    lw	$a5,4($s0)
    lw	$a7,8($s0)
    lw	$t0,140($a5)
    sll	$a6,$a7,0x2
    addu	$a6,$a6,$a7
    sll	$a6,$a6,0x4
    addu	$t0,$t0,$a6
    lw	$t0,16($t0)
    sw	$t0,120($s0)
    # Line 226
    lw	$a7,140($a5)
    addu	$a7,$a7,$a6
    lw	$a7,12($a7)
    # Line 236
    sw	$zero,132($s0)
    # Line 226
    sw	$a7,116($s0)
    # Line 238
    lw	$a5,140($a5)
    mtc1	$a7,$f1
    addu	$a5,$a5,$a6
    lw	$a5,20($a5)
    cvt.d.w	$f1,$f1
    mtc1	$a5,$f2
    nop
    cvt.d.w	$f2,$f2
    div.d	$f1,$f1,$f2
    # Line 240
    ldc1	$f0,_lit8_4039666666666666
    mul.d	$f0,$f1,$f0
    # Line 239
    ldc1	$f2,_lit8_3fe0000000000000
    add.d	$f1,$f1,$f2
    # Line 240
    add.d	$f0,$f0,$f2
    # Line 239
    trunc.w.d	$f1,$f1
    # Line 240
    trunc.w.d	$f0,$f0
    # Line 242
    move	$a0,$s0
    # Line 239
    mfc1	$a4,$f1
    # Line 242
    la	$t9,__iglooGetFullVisualInfo
    # Line 240
    mfc1	$a3,$f0
    # Line 239
    sw	$a4,128($s0)
    # Line 242
    bal __iglooGetFullVisualInfo
    # Line 240
    sw	$a3,124($s0)
    # Line 244
    la	$ra,gl_scrntab
    lw	$v0,12($s0)
    ld	$gp,16($sp)
    lw	$ra,0($ra)
    sll	$at,$v0,0x2
    addu	$at,$at,$v0
    sll	$at,$at,0x3
    addu	$ra,$ra,$at
    sw	$s0,28($ra)
    # Line 245
    ld	$ra,0($sp)
    move	$v0,$s0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end _GLmakescreen

# Function: IOErrorHandler
# Declared: Line 248 (Source lines: 249-257)
# Address: 0x0f129390 - 0x0f1293c8 (Size: 56 bytes, Frame: 32)
.ent IOErrorHandler
IOErrorHandler:
    # Line 249
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-24904 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 256
    la	$t9,exit
    sd	$ra,0($sp)
    jalr	$t9
    move	$a0,$zero
    # Line 257
    ld	$ra,0($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end IOErrorHandler

# Function: _GLinitgl
# Declared: Line 260 (Source lines: 261-373)
# Address: 0x0f1293c8 - 0x0f129698 (Size: 720 bytes, Frame: 208)
.globl _GLinitgl
.ent _GLinitgl
_GLinitgl:
    # Line 261
    addiu	$sp,$sp,-336
    sd	$gp,304($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-24960 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 266
    la	$t9,__iglooTlsInit
    sd	$ra,296($sp)
    bal __iglooTlsInit
    nop
    lw	$v1,4108($zero)
    bnez	$v1,.L0f129504
    # Line 373
    ld	$ra,296($sp)
    # Line 272
    la	$t9,__iglooInitCriticalSection
    jalr	$t9
    nop
    # Line 288
    la	$a1,gl_curdname
    sd	$a1,288($sp)
    lbu	$a1,0($a1)
    beqz	$a1,.L0f129510
.L0f129414:
    # Line 292
    la	$t9,XOpenDisplay
    sd	$s0,320($sp)
    jalr	$t9
    ld	$a0,288($sp)
    beqz	$v0,.L0f12951c
    move	$s0,$v0
.L0f12942c:
    # Line 303
    lw	$a3,-19760($gp)
    sw	$v0,-19764($gp)
    # Line 312
    la	$v1,gl_thedisplay
    # Line 303
    beqz	$a3,.L0f129554
    # Line 299
    sw	$v0,4108($zero)
    # Line 312
    lw	$v1,0($v1)
    sw	$v0,4($v1)
    # Line 314
    lw	$at,136($v0)
    sd	$s1,312($sp)
    blez	$at,.L0f1294b0
    move	$s1,$zero
    sd	$s3,328($sp)
    la	$s3,sub_0f130000
    addiu	$s3,$s3,-28436
    # Line 315
    move	$a0,$s1
.L0f129468:
    bal _GLmakeglwindow
    move	$t9,$s3
    # Line 314
    addiu	$s1,$s1,1
    la	$v1,gl_scrntab
    # Line 316
    sll	$a1,$v0,0x2
    lw	$v1,0($v1)
    addu	$v0,$a1,$v0
    sll	$v0,$v0,0x3
    addu	$v0,$v1,$v0
    lw	$v0,28($v0)
    # Line 317
    lw	$v1,112($v0)
    sw	$s0,4($v1)
    sw	$s0,4($v0)
    # Line 314
    lw	$at,136($s0)
    slt	$at,$s1,$at
    bnez	$at,.L0f129468
    # Line 315
    move	$a0,$s1
    ld	$s3,328($sp)
.L0f1294b0:
    ld	$gp,304($sp)
    # Line 319
    ld	$ra,296($sp)
    ld	$s0,320($sp)
    ld	$s1,312($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L0f1294c8:
    ld	$s1,312($sp)
    ld	$s0,320($sp)
.L0f1294d0:
    # Line 369
    la	$t9,gl_parse_hostname
    la	$a2,gl_selected_scrn
    ld	$a0,288($sp)
    jalr	$t9
    addiu	$a1,$sp,256
    # Line 370
    la	$t9,gl_devdepattach
    la	$a0,gl_selected_scrn
    jalr	$t9
    lw	$a0,0($a0)
    # Line 371
    la	$t9,_GLInitInput
    jalr	$t9
    nop
    # Line 373
    ld	$ra,296($sp)
.L0f129504:
    ld	$gp,304($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L0f129510:
    # Line 290
    addiu	$a1,$gp,-15920
    b	.L0f129414
    sd	$a1,288($sp)
.L0f12951c:
    sd	$v0,280($sp)
    ld	$a2,288($sp)
    # Line 295
    la	$t9,sprintf
    la	$a1,sub_0f020000
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,23104
    # Line 296
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,1
    jalr	$t9
    li	$a0,106
    b	.L0f12942c
    ld	$v0,280($sp)
.L0f129554:
    sd	$v0,280($sp)
    # Line 322
    li	$a1,1
    # Line 324
    la	$t9,XSetIOErrorHandler
    la	$a0,sub_0f130000
    # Line 322
    sw	$a1,-19760($gp)
    # Line 324
    jalr	$t9
    addiu	$a0,$a0,-27760
    # Line 326
    la	$t9,gl_init
    jalr	$t9
    nop
    # Line 329
    la	$t9,_GLloadCurrentCursorMap
    jalr	$t9
    nop
    # Line 332
    la	$t9,gl_initdisplay
    sd	$s1,312($sp)
    ld	$a0,280($sp)
    jalr	$t9
    move	$a1,$zero
    la	$a4,gl_nscrns
    # Line 334
    lw	$at,0($a4)
    # Line 332
    la	$a3,gl_thedisplay
    # Line 334
    move	$s1,$zero
    blez	$at,.L0f1295dc
    # Line 332
    sw	$v0,0($a3)
    # Line 334
    move	$v0,$zero
.L0f1295b8:
    la	$a1,gl_scrntab
    # Line 335
    lw	$a1,0($a1)
    addu	$a1,$a1,$v0
    sw	$zero,28($a1)
    # Line 334
    lw	$v1,0($a4)
    addiu	$s1,$s1,1
    slt	$v1,$s1,$v1
    bnez	$v1,.L0f1295b8
    addiu	$v0,$v0,40
.L0f1295dc:
    # Line 339
    lw	$a3,136($s0)
    blez	$a3,.L0f12968c
    move	$s1,$zero
    la	$at,sub_0f040000
    addiu	$at,$at,-28128
    b	.L0f129614
    sd	$at,264($sp)
.L0f1295f8:
    addiu	$s1,$s1,1
.L0f1295fc:
    ld	$a1,264($sp)
    lw	$v1,136($s0)
    addiu	$a1,$a1,4
    slt	$v1,$s1,$v1
    beqz	$v1,.L0f1294c8
    sd	$a1,264($sp)
.L0f129614:
    # Line 343
    la	$t9,_GLmakescreen
    bal _GLmakescreen
    move	$a0,$s1
    sd	$v0,272($sp)
    # Line 345
    ld	$a7,264($sp)
    li	$a6,1
    # Line 351
    la	$t9,gl_devdepattach
    # Line 345
    sw	$a6,0($a7)
    la	$a1,_GLappinstance
    la	$a3,_GLappclass
    la	$a5,gl_selected_scrn
    # Line 344
    lw	$a4,12($v0)
    la	$a0,sub_0f020000
    la	$a2,sub_0f020000
    sw	$a4,0($a5)
    addiu	$a0,$a0,23160
    addiu	$a2,$a2,23144
    # Line 346
    sw	$a2,0($a3)
    # Line 347
    sw	$a0,0($a1)
    # Line 351
    jalr	$t9
    lw	$a0,12($v0)
    # Line 356
    la	$t9,__iglooIsGlxScreen
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0f1295f8
    # Line 358
    la	$t9,__iglooFindAllGLVisualsAndColormaps
    jalr	$t9
    ld	$a0,272($sp)
    b	.L0f1295fc
    # Line 339
    addiu	$s1,$s1,1
.L0f12968c:
    ld	$s1,312($sp)
    b	.L0f1294d0
    ld	$s0,320($sp)
.end _GLinitgl

# Function: gl_g_scrnselect
# Declared: Line 383 (Source lines: 384-408)
# Address: 0x0f129698 - 0x0f1297c8 (Size: 304 bytes, Frame: 48)
.globl gl_g_scrnselect
.ent gl_g_scrnselect
gl_g_scrnselect:
    # Line 384
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-25680 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 387
    la	$t9,_GLinitgl
    sd	$s0,16($sp)
    sd	$ra,8($sp)
    bal _GLinitgl
    # Line 384
    move	$s0,$a0
    # Line 392
    la	$t9,__iglooIsGlxScreen
    jalr	$t9
    move	$a0,$s0
    # Line 396
    move	$a3,$zero
    # Line 392
    beqz	$v0,.L0f129780
    # Line 395
    la	$a4,gl_scrntab
    # Line 393
    la	$a6,gl_selected_scrn
    # Line 396
    la	$a5,gl_nscrns
    # Line 395
    lw	$v1,0($a6)
    # Line 396
    lw	$a5,0($a5)
    # Line 395
    lw	$a4,0($a4)
    sll	$v0,$v1,0x2
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a4
    lw	$v0,28($v0)
    # Line 396
    move	$a0,$a4
    blez	$a5,.L0f129768
    # Line 395
    lw	$v0,8($v0)
    b	.L0f129724
    # Line 396
    lw	$a4,28($a0)
.L0f129714:
    addiu	$a3,$a3,1
.L0f129718:
    beq	$a3,$a5,.L0f12976c
    # Line 408
    ld	$ra,8($sp)
    # Line 396
    lw	$a4,28($a0)
.L0f129724:
    beqz	$a4,.L0f129714
    addiu	$a0,$a0,40
    lw	$at,8($a4)
    bnel	$at,$s0,.L0f129718
    addiu	$a3,$a3,1
    # Line 397
    la	$a1,sub_0f040000
    sll	$v1,$s0,0x2
    addiu	$a1,$a1,-28128
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    # Line 406
    ld	$s0,16($sp)
    # Line 397
    beqz	$v1,.L0f129798
    # Line 406
    ld	$ra,8($sp)
    # Line 405
    sw	$a3,0($a6)
    ld	$gp,0($sp)
    # Line 406
    jr	$ra
    addiu	$sp,$sp,48
.L0f129768:
    # Line 408
    ld	$ra,8($sp)
.L0f12976c:
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f129780:
    # Line 393
    ld	$ra,8($sp)
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f129798:
    # Line 401
    la	$a1,sub_0f020000
    la	$t9,fprintf
    la	$a0,__iob
    addiu	$a1,$a1,23176
    jalr	$t9
    addiu	$a0,$a0,32
    # Line 402
    li	$v0,-1
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_scrnselect

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_4039666666666666:
    .word 0x40396666, 0x66666666

