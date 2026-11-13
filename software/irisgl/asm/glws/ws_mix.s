# Source: ../igloo/glws/ws_mix.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/ws_mix.c -o ws_mix.T
# Total Functions: 10

.text

# Function: gl_InitKnownAtoms
# Declared: Line 22 (Source lines: 23-56)
# Address: 0x0f12d0d4 - 0x0f12d1d0 (Size: 252 bytes, Frame: 224)
.globl gl_InitKnownAtoms
.ent gl_InitKnownAtoms
gl_InitKnownAtoms:
    # Line 23
    addiu	$sp,$sp,-96
    sd	$s7,64($sp)
    move	$s7,$a0
    # Line 37
    li	$a0,48
    sd	$gp,56($sp)
    # Line 23
    lui	$a2,0xfff0
    addiu	$a2,$a2,24948
    addu	$gp,$t9,$a2
    # Line 37
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a1,$a1,24032
    # Line 38
    addiu	$a4,$sp,0
    move	$a3,$zero
    li	$a2,12
    lw	$a0,4($s7)
    la	$t9,XInternAtoms
    la	$a1,sub_0f030000
    # Line 37
    sw	$v0,24($s7)
    # Line 38
    jalr	$t9
    addiu	$a1,$a1,-20888
    # Line 39
    lw	$a1,24($s7)
    lw	$a0,0($sp)
    sw	$a0,0($a1)
    # Line 40
    lw	$v1,24($s7)
    lw	$v0,4($sp)
    sw	$v0,4($v1)
    # Line 41
    lw	$at,24($s7)
    lw	$ra,8($sp)
    sw	$ra,8($at)
    # Line 42
    lw	$a1,24($s7)
    li	$a0,7
    sw	$a0,12($a1)
    # Line 43
    lw	$v1,24($s7)
    lw	$v0,12($sp)
    sw	$v0,16($v1)
    # Line 44
    lw	$at,24($s7)
    lw	$ra,16($sp)
    sw	$ra,20($at)
    # Line 45
    lw	$a1,24($s7)
    lw	$a0,20($sp)
    sw	$a0,24($a1)
    # Line 46
    lw	$v1,24($s7)
    lw	$v0,24($sp)
    sw	$v0,28($v1)
    # Line 47
    lw	$at,24($s7)
    lw	$ra,28($sp)
    sw	$ra,32($at)
    # Line 48
    lw	$a1,24($s7)
    lw	$a0,32($sp)
    sw	$a0,36($a1)
    # Line 49
    lw	$v1,24($s7)
    lw	$v0,36($sp)
    sw	$v0,40($v1)
    # Line 50
    lw	$at,24($s7)
    lw	$ra,40($sp)
    sw	$ra,44($at)
    # Line 56
    ld	$ra,48($sp)
    ld	$gp,56($sp)
    ld	$s7,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_InitKnownAtoms

# Function: gl_glx_findwindow
# Declared: Line 79 (Source lines: 80-96)
# Address: 0x0f12d1d0 - 0x0f12d298 (Size: 200 bytes, Frame: 48)
.globl gl_glx_findwindow
.ent gl_glx_findwindow
gl_glx_findwindow:
    # Line 80
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$gp,0($sp)
    lui	$at,0xfff0
    addiu	$at,$at,24696
    beqz	$a1,.L0f12d284
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 86
    la	$t9,gl_glx_finddisplay
    sd	$ra,16($sp)
    jalr	$t9
    nop
    move	$a0,$v0
    beqz	$v0,.L0f12d260
    ld	$ra,16($sp)
    # Line 88
    lw	$v0,20($a0)
    beqzl	$v0,.L0f12d264
    # Line 96
    move	$v0,$zero
    # Line 89
    lw	$v1,64($v0)
.L0f12d21c:
    beq	$v1,$s0,.L0f12d278
    ld	$gp,0($sp)
    lw	$a2,8($v0)
    beq	$a2,$s0,.L0f12d278
    ld	$gp,0($sp)
    lw	$a3,136($v0)
    beq	$a3,$s0,.L0f12d278
    ld	$gp,0($sp)
    lw	$at,140($v0)
    beq	$at,$s0,.L0f12d278
    ld	$gp,0($sp)
    lw	$v1,144($v0)
    beq	$v1,$s0,.L0f12d278
    ld	$gp,0($sp)
    # Line 88
    lw	$v0,0($v0)
    bnezl	$v0,.L0f12d21c
    # Line 89
    lw	$v1,64($v0)
.L0f12d260:
    # Line 96
    move	$v0,$zero
.L0f12d264:
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
    ld	$gp,0($sp)
.L0f12d278:
    # Line 93
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12d284:
    # Line 85
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_glx_findwindow

# Function: gl_g_gconfig
# Declared: Line 107 (Source lines: 108-128)
# Address: 0x0f12d298 - 0x0f12d348 (Size: 176 bytes, Frame: 16)
.globl gl_g_gconfig
.ent gl_g_gconfig
gl_g_gconfig:
    # Line 108
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,24496 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a2,gl_wstatep
    lw	$a2,0($a2)
    beqz	$a2,.L0f12d304
    # Line 111
    li	$v1,5
    lw	$a1,224($a2)
    lbu	$v0,44($a1)
    beql	$v0,$v1,.L0f12d328
    # Line 116
    li	$a1,2
    beqz	$a1,.L0f12d2e8
    # Line 126
    la	$t9,gl_gconfig
    # Line 123
    lw	$a0,32($a1)
    sd	$ra,8($sp)
    ori	$a0,$a0,0x3000
    sw	$a0,32($a1)
    # Line 126
    la	$t9,gl_gconfig
.L0f12d2e8:
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f12d2f8:
    ld	$gp,0($sp)
    # Line 128
    jr	$ra
    addiu	$sp,$sp,16
.L0f12d304:
    # Line 111
    li	$a1,2
    li	$a0,86
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$a2,24048
    b	.L0f12d2f8
    ld	$ra,8($sp)
.L0f12d328:
    # Line 116
    li	$a0,4
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$a2,24080
    b	.L0f12d2f8
    ld	$ra,8($sp)
.end gl_g_gconfig

# Function: FindGLScreen
# Declared: Line 133 (Source lines: 137-156)
# Address: 0x0f12d348 - 0x0f12d3b0 (Size: 104 bytes, Frame: 0)
.ent FindGLScreen
FindGLScreen:
    # Line 150
    la	$a6,gl_nscrns
    lw	$a6,0($a6)
    move	$v0,$zero
    blez	$a6,.L0f12d3a0
    # Line 137
    li	$a7,-1
    # Line 150
    la	$a4,gl_scrntab
    b	.L0f12d374
    lw	$a4,0($a4)
.L0f12d368:
    addiu	$v0,$v0,1
.L0f12d36c:
    beq	$v0,$a6,.L0f12d3a0
    nop
.L0f12d374:
    lw	$a5,28($a4)
    beqz	$a5,.L0f12d368
    addiu	$a4,$a4,40
    lw	$at,8($a5)
    bnel	$at,$a1,.L0f12d36c
    addiu	$v0,$v0,1
    # Line 151
    lw	$v1,16($a5)
    beq	$v1,$a0,.L0f12d3a8
    # Line 155
    move	$a7,$v0
    b	.L0f12d36c
    # Line 150
    addiu	$v0,$v0,1
.L0f12d3a0:
    # Line 156
    jr	$ra
    move	$v0,$a7
.L0f12d3a8:
    # Line 153
    jr	$ra
    nop
.end FindGLScreen

# Function: gl_g_gl_glx_getconfig
# Declared: Line 160 (Source lines: 162-443)
# Address: 0x0f12d3b0 - 0x0f12db38 (Size: 1928 bytes, Frame: 240)
.globl gl_g_gl_glx_getconfig
.ent gl_g_gl_glx_getconfig
gl_g_gl_glx_getconfig:
    # Line 172
    li	$at,1
    # Line 162
    addiu	$sp,$sp,-240
    sd	$s0,104($sp)
    move	$s0,$a5
    sd	$s1,88($sp)
    move	$s1,$a4
    sd	$s8,136($sp)
    move	$s8,$a3
    sd	$s5,96($sp)
    move	$s5,$a2
    sd	$s7,80($sp)
    move	$s7,$a1
    sd	$s4,112($sp)
    move	$s4,$a0
    sd	$gp,128($sp)
    # lui	v1,0xfff0 (gp disp hi)
    # addiu	v1,v1,24216 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 173
    la	$t9,__iglooCancelSoftPup
    # Line 172
    la	$v0,__iglooMixedModel
    sd	$ra,120($sp)
    # Line 173
    jalr	$t9
    # Line 172
    sw	$at,0($v0)
    # Line 176
    la	$t9,_GLinitgl
    bal _GLinitgl
    nop
    # Line 185
    la	$a2,gl_template_size
    move	$a1,$s0
    la	$t9,bcopy
    lw	$a2,0($a2)
    la	$a0,gl_mix_template
    jalr	$t9
    sll	$a2,$a2,0x2
    # Line 187
    la	$t9,sub_0f130000
    move	$a0,$s4
    addiu	$t9,$t9,-11448
    bal gl_g_gconfig
    move	$a1,$s7
    bltzl	$v0,.L0f12da80
    # Line 190
    li	$v0,-2
    sd	$s8,72($sp)
    # Line 210
    li	$a0,16
    sd	$s3,168($sp)
    # Line 208
    move	$s3,$zero
    sd	$s2,160($sp)
    move	$s2,$zero
    sd	$zero,32($sp)
    sd	$zero,40($sp)
    move	$s7,$zero
    sd	$s6,176($sp)
    move	$s6,$zero
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    move	$s4,$zero
    # Line 210
    la	$t9,__GLgetgdesc
    # Line 202
    la	$ra,gl_scrntab
    # Line 190
    la	$at,gl_sstatep
    # Line 202
    sll	$v1,$v0,0x2
    lw	$ra,0($ra)
    addu	$v0,$v1,$v0
    sll	$v0,$v0,0x3
    addu	$ra,$ra,$v0
    # Line 201
    lw	$v0,0($at)
    # Line 202
    sw	$ra,0($at)
    # Line 210
    jalr	$t9
    sd	$v0,64($sp)
    blez	$s5,.L0f12d524
    move	$s8,$v0
    li	$a0,4096
    sll	$a2,$s5,0x2
    ld	$a6,72($sp)
    li	$at,3
    teq	$at,$zero,0x7
    move	$v0,$a6
    b	.L0f12d4f4
    addu	$a2,$a2,$a6
.L0f12d4e0:
    # Line 213
    lw	$s8,8($v0)
.L0f12d4e4:
    # Line 211
    addiu	$v0,$v0,12
    sltu	$a7,$v0,$a2
    beqz	$a7,.L0f12d524
    nop
.L0f12d4f4:
    # Line 210
    lw	$at,0($v0)
    bne	$at,$a0,.L0f12d4e4
    nop	# was la	$a6,sub_0f020000
    lw	$a4,4($v0)
    la	$a6,jtbl_0f025e38
    sltiu	$a7,$a4,15
    sll	$a4,$a4,0x2
    beqz	$a7,.L0f12d4e4
    addu	$a4,$a4,$a6
    lw	$a6,0($a4)
    jr	$a6
    # Line 222
    li	$a6,1
.L0f12d524:
    # Line 211
    beqz	$s3,.L0f12d5c0
    nop
    beqz	$s2,.L0f12daa8
    # Line 231
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,9
    # Line 232
    la	$t9,__GLgetgdesc
    sd	$v0,48($sp)
    li	$a0,10
    jalr	$t9
    # Line 231
    sw	$v0,0($sp)
    # Line 233
    la	$t9,__GLgetgdesc
    sd	$v0,56($sp)
    li	$a0,11
    jalr	$t9
    # Line 232
    sw	$v0,4($sp)
    # Line 234
    ld	$a7,48($sp)
    beqz	$a7,.L0f12d584
    # Line 233
    sw	$v0,8($sp)
    ld	$at,56($sp)
    # Line 234
    beqzl	$at,.L0f12d588
    # Line 235
    move	$s2,$zero
    # Line 234
    bnez	$v0,.L0f12d588
    nop
.L0f12d584:
    # Line 235
    move	$s2,$zero
.L0f12d588:
    beqz	$s2,.L0f12daa8
    # Line 240
    lw	$a0,0($sp)
    lw	$a1,4($sp)
    lw	$v0,8($sp)
.L0f12d598:
    # Line 242
    beqzl	$a0,.L0f12d5b4
    # Line 243
    move	$s3,$zero
    # Line 242
    beqzl	$a1,.L0f12d5b4
    # Line 243
    move	$s3,$zero
    # Line 242
    bnez	$v0,.L0f12d5b8
    # Line 244
    addu	$v1,$a1,$a0
    # Line 243
    move	$s3,$zero
.L0f12d5b4:
    # Line 244
    addu	$v1,$a1,$a0
.L0f12d5b8:
    addu	$v1,$v1,$v0
    sw	$v1,12($sp)
.L0f12d5c0:
    beqz	$s7,.L0f12d5e0
    # Line 248
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,70
    slt	$a6,$v0,$s7
    beqz	$a6,.L0f12d5e0
    nop
    # Line 250
    move	$s7,$v0
.L0f12d5e0:
    beqz	$s6,.L0f12d600
    # Line 254
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,72
    slt	$a7,$v0,$s6
    beqz	$a7,.L0f12d600
    nop
    # Line 256
    move	$s6,$v0
.L0f12d600:
    beqz	$s3,.L0f12dae0
    nop
.L0f12d608:
    # Line 259
    beqz	$s8,.L0f12d628
    # Line 264
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,16
    slt	$at,$v0,$s8
    beqz	$at,.L0f12d628
    nop
    # Line 266
    move	$s8,$v0
.L0f12d628:
    beqz	$s4,.L0f12d658
    ld	$a6,24($sp)
    beqz	$s2,.L0f12db10
    # Line 271
    li	$a0,9
.L0f12d638:
    la	$t9,__GLgetgdesc
    jalr	$t9
    nop
    slt	$v1,$v0,$s4
    beqz	$v1,.L0f12d658
    ld	$a6,24($sp)
    # Line 274
    move	$s4,$v0
    ld	$a6,24($sp)
.L0f12d658:
    beqz	$a6,.L0f12d678
    # Line 279
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,84
    li	$a7,1
    beq	$v0,$a7,.L0f12d67c
    ld	$at,16($sp)
    sd	$zero,24($sp)
.L0f12d678:
    ld	$at,16($sp)
.L0f12d67c:
    # Line 280
    beqz	$at,.L0f12d690
    # Line 284
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,50
    sd	$v0,16($sp)
.L0f12d690:
    # Line 286
    li	$t1,-1
    blez	$s1,.L0f12d714
    li	$t0,-1
    li	$a0,4096
    lw	$t2,12($sp)
    move	$a2,$s0
    li	$v0,2
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$s0
    li	$v1,3
    b	.L0f12d6d8
    teq	$v1,$zero,0x7
.L0f12d6c0:
    ld	$a6,16($sp)
    # Line 289
    sw	$a6,8($a2)
.L0f12d6c8:
    # Line 287
    addiu	$a2,$a2,12
    sltu	$a7,$a2,$a4
    beqz	$a7,.L0f12d70c
    addiu	$v0,$v0,3
.L0f12d6d8:
    # Line 286
    lw	$at,0($a2)
    bne	$at,$a0,.L0f12d6c8
    nop	# was la	$a6,sub_0f020000
    lw	$a5,4($a2)
    ld	$at,40($sp)
    la	$a6,jtbl_0f025e78
    sltiu	$a7,$a5,15
    sll	$a5,$a5,0x2
    beqz	$a7,.L0f12d6c8
    addu	$a5,$a5,$a6
    lw	$a6,0($a5)
    jr	$a6
    ld	$a7,24($sp)
.L0f12d70c:
    sd	$t1,152($sp)
    sd	$t0,144($sp)
.L0f12d714:
    la	$s8,gl_sstatep
    sd	$t1,152($sp)
    sd	$t0,144($sp)
    # Line 308
    lw	$a0,0($s8)
    move	$s7,$t0
    move	$s4,$t1
    lw	$a0,28($a0)
    ld	$s6,176($sp)
    beqz	$s3,.L0f12dafc
    addiu	$a0,$a0,20
    beqz	$s2,.L0f12db18
    ld	$s3,168($sp)
    # Line 312
    addiu	$a0,$a0,32
    ld	$s2,160($sp)
.L0f12d74c:
    # Line 323
    la	$t9,__iglooChooseVisual
    bal __iglooChooseVisual
    move	$a1,$s0
    # Line 332
    move	$a3,$s0
    move	$a2,$s1
    ld	$a1,72($sp)
    # Line 325
    lw	$a6,0($v0)
    # Line 332
    move	$a0,$s5
    # Line 326
    sll	$a5,$s7,0x2
    # Line 325
    lw	$a6,4($a6)
    sll	$a7,$s4,0x2
    addu	$a7,$a7,$s0
    sw	$a6,0($a7)
    # Line 332
    la	$t9,gl_hwd_getconfig
    # Line 326
    lw	$a4,4($v0)
    addu	$a5,$a5,$s0
    # Line 332
    jalr	$t9
    # Line 326
    sw	$a4,0($a5)
    # Line 336
    move	$t8,$zero
    # Line 337
    lw	$a0,0($s8)
    # Line 336
    move	$t9,$zero
    move	$t3,$zero
    # Line 337
    lw	$a0,28($a0)
    ld	$s4,64($sp)
    blez	$s1,.L0f12d988
    addiu	$a0,$a0,20
    li	$t2,8
    li	$t1,7
    li	$t0,4
    li	$a5,16384
    li	$a3,12288
    li	$a1,8192
    move	$a2,$s0
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$s0
    li	$a6,3
    b	.L0f12d80c
    teq	$a6,$zero,0x7
.L0f12d7e4:
    # Line 343
    beql	$t0,$v0,.L0f12d884
    # Line 346
    lw	$s0,8($a2)
    # Line 343
    beq	$t1,$v0,.L0f12d8d0
    nop
    beq	$t2,$v0,.L0f12d8f8
    nop
.L0f12d7fc:
    # Line 338
    addiu	$a2,$a2,12
.L0f12d800:
    sltu	$a6,$a2,$a4
    beqz	$a6,.L0f12d988
    ld	$s2,160($sp)
.L0f12d80c:
    # Line 340
    lw	$v0,0($a2)
    beql	$a1,$v0,.L0f12d7e4
    # Line 343
    lw	$v0,4($a2)
    # Line 340
    beql	$a3,$v0,.L0f12d858
    # Line 377
    lw	$v0,4($a2)
    # Line 340
    bnel	$a5,$v0,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 400
    lw	$v0,4($a2)
    beql	$t0,$v0,.L0f12d924
    # Line 403
    lw	$s0,8($a2)
    # Line 400
    beq	$t1,$v0,.L0f12d970
    nop
    bnel	$t2,$v0,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 426
    beqzl	$t9,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 428
    lw	$a7,4($t9)
    b	.L0f12d7fc
    sw	$a7,8($a2)
.L0f12d858:
    # Line 377
    beql	$t0,$v0,.L0f12d8e8
    # Line 380
    lw	$a7,8($a2)
    # Line 377
    beq	$t1,$v0,.L0f12d90c
    nop
    bnel	$t2,$v0,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 392
    beqzl	$t8,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 394
    lw	$at,4($t8)
    b	.L0f12d7fc
    sw	$at,8($a2)
.L0f12d884:
    # Line 346
    beqzl	$s0,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 350
    lw	$s2,40($a0)
    blez	$s2,.L0f12d7fc
    lw	$ra,44($a0)
    move	$v0,$ra
    sll	$s1,$s2,0x2
    addu	$s1,$s1,$s2
    sll	$s1,$s1,0x4
    lw	$at,0($v0)
.L0f12d8ac:
    lw	$at,12($at)
    beq	$at,$s0,.L0f12d9b8
    # Line 351
    addu	$v1,$s1,$ra
    addiu	$v0,$v0,80
    sltu	$v1,$v0,$v1
    bnezl	$v1,.L0f12d8ac
    # Line 350
    lw	$at,0($v0)
    b	.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
.L0f12d8d0:
    # Line 363
    beqzl	$t3,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 365
    lw	$a6,0($t3)
    lw	$a6,4($a6)
    b	.L0f12d7fc
    sw	$a6,8($a2)
.L0f12d8e8:
    # Line 380
    beqzl	$a7,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 382
    b	.L0f12d7fc
    lw	$t8,4($a0)
.L0f12d8f8:
    # Line 369
    beqzl	$t3,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 371
    lw	$at,4($t3)
    b	.L0f12d7fc
    sw	$at,8($a2)
.L0f12d90c:
    # Line 386
    beqzl	$t8,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 388
    lw	$v1,0($t8)
    lw	$v1,4($v1)
    b	.L0f12d7fc
    sw	$v1,8($a2)
.L0f12d924:
    # Line 403
    beqzl	$s0,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 407
    lw	$s2,64($a0)
    blez	$s2,.L0f12d7fc
    lw	$ra,68($a0)
    move	$v0,$ra
    sll	$s1,$s2,0x2
    addu	$s1,$s1,$s2
    sll	$s1,$s1,0x4
    lw	$at,0($v0)
.L0f12d94c:
    lw	$at,12($at)
    beq	$at,$s0,.L0f12d9c0
    # Line 408
    addu	$v1,$s1,$ra
    addiu	$v0,$v0,80
    sltu	$v1,$v0,$v1
    bnezl	$v1,.L0f12d94c
    # Line 407
    lw	$at,0($v0)
    b	.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
.L0f12d970:
    # Line 420
    beqzl	$t9,.L0f12d800
    # Line 338
    addiu	$a2,$a2,12
    # Line 422
    lw	$a6,0($t9)
    lw	$a6,4($a6)
    b	.L0f12d7fc
    sw	$a6,8($a2)
.L0f12d988:
    # Line 443
    move	$v0,$zero
    ld	$gp,128($sp)
    ld	$s0,104($sp)
    ld	$s1,88($sp)
    # Line 435
    sw	$s4,0($s8)
    # Line 443
    ld	$s4,112($sp)
    ld	$s5,96($sp)
    ld	$ra,120($sp)
    ld	$s7,80($sp)
    ld	$s8,136($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0f12d9b8:
    # Line 356
    b	.L0f12d7fc
    # Line 355
    move	$t3,$v0
.L0f12d9c0:
    # Line 413
    b	.L0f12d7fc
    # Line 412
    move	$t9,$v0
.L0f12d9c8:
    # Line 214
    b	.L0f12d4e4
    lw	$s7,8($v0)
.L0f12d9d0:
    # Line 215
    b	.L0f12d4e4
    lw	$s6,8($v0)
.L0f12d9d8:
    # Line 216
    b	.L0f12d4e4
    lw	$s4,8($v0)
.L0f12d9e0:
    # Line 217
    b	.L0f12d4e4
    lw	$s2,8($v0)
.L0f12d9e8:
    # Line 218
    b	.L0f12d4e4
    lw	$s3,8($v0)
.L0f12d9f0:
    # Line 219
    lw	$a7,8($v0)
    b	.L0f12d4e4
    sd	$a7,24($sp)
.L0f12d9fc:
    # Line 220
    lw	$at,8($v0)
    b	.L0f12d4e4
    sd	$at,40($sp)
.L0f12da08:
    # Line 221
    lw	$v1,8($v0)
    b	.L0f12d4e4
    sd	$v1,32($sp)
.L0f12da14:
    b	.L0f12d4e4
    sd	$a6,16($sp)
.L0f12da1c:
    # Line 290
    b	.L0f12d6c8
    sw	$t2,8($a2)
.L0f12da24:
    # Line 291
    b	.L0f12d6c8
    sw	$s8,8($a2)
.L0f12da2c:
    # Line 292
    b	.L0f12d6c8
    sw	$s4,8($a2)
.L0f12da34:
    # Line 293
    b	.L0f12d6c8
    sw	$s2,8($a2)
.L0f12da3c:
    # Line 294
    b	.L0f12d6c8
    sw	$s3,8($a2)
.L0f12da44:
    # Line 295
    b	.L0f12d6c8
    sw	$a7,8($a2)
.L0f12da4c:
    # Line 296
    b	.L0f12d6c8
    sw	$at,8($a2)
.L0f12da54:
    ld	$v1,32($sp)
    # Line 297
    b	.L0f12d6c8
    sw	$v1,8($a2)
.L0f12da60:
    # Line 298
    b	.L0f12d6c8
    sw	$s7,8($a2)
.L0f12da68:
    # Line 299
    b	.L0f12d6c8
    sw	$s6,8($a2)
.L0f12da70:
    # Line 300
    b	.L0f12d6c8
    move	$t0,$v0
.L0f12da78:
    b	.L0f12d6c8
    # Line 301
    move	$t1,$v0
.L0f12da80:
    ld	$gp,128($sp)
    # Line 190
    ld	$s0,104($sp)
    ld	$s1,88($sp)
    ld	$s4,112($sp)
    ld	$s5,96($sp)
    ld	$ra,120($sp)
    ld	$s7,80($sp)
    ld	$s8,136($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0f12daa8:
    # Line 238
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,6
    # Line 239
    la	$t9,__GLgetgdesc
    sd	$v0,48($sp)
    jalr	$t9
    li	$a0,7
    # Line 240
    la	$t9,__GLgetgdesc
    sd	$v0,56($sp)
    jalr	$t9
    li	$a0,8
    ld	$a1,56($sp)
    b	.L0f12d598
    ld	$a0,48($sp)
.L0f12dae0:
    # Line 256
    beqz	$s2,.L0f12db24
    # Line 259
    li	$a0,13
.L0f12dae8:
    la	$t9,__GLgetgdesc
    jalr	$t9
    nop
    b	.L0f12d608
    sw	$v0,12($sp)
.L0f12dafc:
    # Line 314
    beqz	$s2,.L0f12db2c
    ld	$s3,168($sp)
    # Line 319
    addiu	$a0,$a0,24
    b	.L0f12d74c
    ld	$s2,160($sp)
.L0f12db10:
    b	.L0f12d638
    # Line 271
    li	$a0,6
.L0f12db18:
    # Line 314
    addiu	$a0,$a0,16
    b	.L0f12d74c
    ld	$s2,160($sp)
.L0f12db24:
    b	.L0f12dae8
    # Line 259
    li	$a0,12
.L0f12db2c:
    # Line 321
    addiu	$a0,$a0,8
    b	.L0f12d74c
    ld	$s2,160($sp)
.end gl_g_gl_glx_getconfig

# Function: extract
# Declared: Line 447 (Source lines: 448-455)
# Address: 0x0f12db38 - 0x0f12db78 (Size: 64 bytes, Frame: 0)
.ent extract
extract:
    # Line 448
    blez	$a1,.L0f12db70
    li	$at,3
    b	.L0f12db50
    teq	$at,$zero,0x7
.L0f12db48:
    # Line 453
    blez	$a1,.L0f12db70
    # Line 452
    addiu	$a0,$a0,12
.L0f12db50:
    # Line 448
    lw	$v0,0($a0)
    bne	$v0,$a2,.L0f12db48
    # Line 453
    addiu	$a1,$a1,-3
    # Line 448
    lw	$v1,4($a0)
    bne	$v1,$a3,.L0f12db48
    nop
    # Line 451
    jr	$ra
    lw	$v0,8($a0)
.L0f12db70:
    # Line 455
    jr	$ra
    move	$v0,$zero
.end extract

# Function: BadAuxWindow
# Declared: Line 459 (Source lines: 460-553)
# Address: 0x0f12db78 - 0x0f12de58 (Size: 736 bytes, Frame: 208)
.ent BadAuxWindow
BadAuxWindow:
    # Line 460
    addiu	$sp,$sp,-208
    sd	$s1,160($sp)
    sd	$a1,112($sp)
    sd	$s0,152($sp)
    move	$s0,$a0
    move	$a0,$a2
    sd	$a2,120($sp)
    move	$a2,$a3
    la	$t9,sub_0f130000
    sd	$a3,104($sp)
    sd	$ra,144($sp)
    addiu	$t9,$t9,-9416
    # Line 461
    bal gl_g_gl_glx_getconfig
    li	$a3,9
    move	$v1,$v0
    sd	$v0,136($sp)
    # Line 468
    lw	$s1,4($s0)
    # Line 462
    li	$at,1
    # Line 468
    beqz	$v0,.L0f12dc40
    sd	$at,128($sp)
    # Line 473
    la	$t9,gl_glx_findwindow
    move	$a0,$s1
    bal gl_glx_findwindow
    move	$a1,$v0
    beqz	$v0,.L0f12dc00
    # Line 478
    la	$t9,XGetWindowAttributes
    # Line 473
    beq	$v0,$s0,.L0f12dbfc
    ld	$ra,144($sp)
    # Line 476
    li	$v0,1
    ld	$s0,152($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f12dbfc:
    # Line 478
    la	$t9,XGetWindowAttributes
.L0f12dc00:
    move	$a0,$s1
    ld	$a1,136($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 479
    la	$t9,XScreenNumberOfScreen
    jalr	$t9
    lw	$a0,88($sp)
    lw	$a4,12($s0)
    lw	$a4,8($a4)
    beq	$a4,$v0,.L0f12dc58
    ld	$ra,144($sp)
    # Line 481
    li	$v0,1
    ld	$s0,152($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f12dc40:
    ld	$ra,144($sp)
    # Line 471
    move	$v0,$zero
    ld	$s0,152($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f12dc58:
    # Line 484
    ld	$a0,120($sp)
    la	$t9,sub_0f130000
    ld	$a1,112($sp)
    ld	$a2,104($sp)
    addiu	$t9,$t9,-9416
    bal gl_g_gl_glx_getconfig
    li	$a3,4
    beqz	$v0,.L0f12dcd0
    sd	$v0,96($sp)
    # Line 488
    ld	$a0,120($sp)
    la	$t9,sub_0f130000
    ld	$a1,112($sp)
    ld	$a2,104($sp)
    addiu	$t9,$t9,-9416
    bal gl_g_gl_glx_getconfig
    li	$a3,7
    beqz	$v0,.L0f12dde4
    ld	$a0,104($sp)
    # Line 491
    li	$at,8192
    beq	$a0,$at,.L0f12dce8
    # Line 513
    li	$v1,12288
    beq	$a0,$v1,.L0f12dd94
.L0f12dcb0:
    ld	$a4,128($sp)
.L0f12dcb4:
    # Line 536
    beqz	$a4,.L0f12ddfc
    ld	$v0,128($sp)
.L0f12dcbc:
    ld	$ra,144($sp)
    # Line 553
    ld	$s0,152($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f12dcd0:
    ld	$ra,144($sp)
    # Line 487
    li	$v0,1
    ld	$s0,152($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f12dce8:
    # Line 496
    lw	$a7,12($s0)
    addiu	$a7,$a7,60
    lw	$a2,0($a7)
    blez	$a2,.L0f12dd54
    # Line 494
    move	$a6,$zero
    # Line 496
    lw	$a0,4($a7)
    sll	$a3,$a2,0x2
    addu	$a3,$a3,$a2
    sll	$a3,$a3,0x4
    b	.L0f12dd2c
    addu	$a3,$a0,$a3
.L0f12dd14:
    # Line 498
    addiu	$a0,$a0,80
.L0f12dd18:
    sltu	$a4,$a0,$a3
    beqz	$a4,.L0f12dd54
    nop
    bnezl	$a6,.L0f12dd60
    ld	$a3,136($sp)
.L0f12dd2c:
    # Line 499
    lw	$a2,0($a0)
    ld	$at,96($sp)
    lw	$a5,12($a2)
    bne	$a5,$at,.L0f12dd14
    move	$a7,$a0
    lw	$v1,4($a2)
    bnel	$v1,$v0,.L0f12dd18
    # Line 498
    addiu	$a0,$a0,80
    b	.L0f12dd14
    # Line 501
    move	$a6,$a7
.L0f12dd54:
    # Line 498
    beqz	$a6,.L0f12dcb4
    ld	$a4,128($sp)
    ld	$a3,136($sp)
.L0f12dd60:
    # Line 506
    sw	$a3,140($s0)
    # Line 507
    lw	$a2,0($a6)
    # Line 511
    move	$a1,$s0
    move	$a0,$s1
    # Line 507
    lw	$a2,0($a2)
    # Line 511
    la	$t9,__iglooCreateContextInfo
    li	$a3,1
    # Line 507
    sw	$a2,152($s0)
    # Line 511
    jalr	$t9
    lw	$a2,0($a6)
    sw	$v0,164($s0)
    # Line 513
    b	.L0f12dcb0
    sd	$zero,128($sp)
.L0f12dd94:
    # Line 522
    lw	$a7,12($s0)
    lw	$a7,24($a7)
    lw	$a4,0($a7)
    lw	$a4,4($a4)
    bne	$a4,$v0,.L0f12dcb4
    ld	$a4,128($sp)
    # Line 531
    ld	$t1,136($sp)
    sw	$t1,136($s0)
    sd	$zero,128($sp)
    # Line 532
    lw	$t0,0($a7)
    # Line 536
    li	$a3,1
    move	$a1,$s0
    # Line 532
    lw	$t0,0($t0)
    # Line 536
    la	$t9,__iglooCreateContextInfo
    move	$a0,$s1
    # Line 532
    sw	$t0,148($s0)
    # Line 536
    jalr	$t9
    lw	$a2,0($a7)
    b	.L0f12dcb0
    sw	$v0,160($s0)
.L0f12dde4:
    # Line 491
    li	$v0,1
    ld	$ra,144($sp)
    ld	$s0,152($sp)
    ld	$s1,160($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f12ddfc:
    # Line 545
    la	$t9,XUnmapWindow
    move	$a0,$s1
    jalr	$t9
    ld	$a1,136($sp)
    # Line 546
    move	$a0,$s1
    ld	$a1,136($sp)
    la	$t9,XReparentWindow
    move	$a4,$zero
    move	$a3,$zero
    jalr	$t9
    lw	$a2,8($s0)
    # Line 549
    move	$a0,$s1
    la	$t9,XResizeWindow
    ld	$a1,136($sp)
    li	$a3,2000
    jalr	$t9
    li	$a2,2000
    # Line 551
    la	$t9,XMapWindow
    move	$a0,$s1
    jalr	$t9
    ld	$a1,136($sp)
    b	.L0f12dcbc
    ld	$v0,128($sp)
.end BadAuxWindow

# Function: gl_g_gl_glx_link
# Declared: Line 557 (Source lines: 558-707)
# Address: 0x0f12de58 - 0x0f12e2dc (Size: 1156 bytes, Frame: 224)
.globl gl_g_gl_glx_link
.ent gl_g_gl_glx_link
gl_g_gl_glx_link:
    # Line 565
    li	$at,1
    # Line 558
    addiu	$sp,$sp,-224
    sd	$s3,136($sp)
    move	$s3,$a2
    sd	$s1,144($sp)
    move	$s1,$a1
    sd	$s0,168($sp)
    move	$s0,$a0
    sd	$gp,152($sp)
    # lui	v1,0xfff0 (gp disp hi)
    # addiu	v1,v1,21488 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 566
    la	$t9,__iglooCancelSoftPup
    # Line 565
    la	$v0,__iglooMixedModel
    sd	$ra,160($sp)
    # Line 566
    jalr	$t9
    # Line 565
    sw	$at,0($v0)
    sd	$s2,176($sp)
    # Line 569
    move	$a0,$s3
    la	$t9,sub_0f130000
    move	$a1,$s1
    li	$a3,9
    addiu	$t9,$t9,-9416
    bal gl_g_gl_glx_getconfig
    li	$a2,4096
    move	$s2,$v0
    move	$at,$v0
    beqz	$v0,.L0f12e168
    sd	$v0,96($sp)
    # Line 575
    la	$a7,gl_nscrns
    lw	$a7,0($a7)
    # Line 570
    la	$v0,gl_scrntab
    # Line 575
    move	$a5,$zero
    blez	$a7,.L0f12df28
    lw	$a2,0($v0)
    move	$a0,$a2
    sll	$a6,$a7,0x2
    addu	$a6,$a6,$a7
    b	.L0f12df0c
    sll	$a6,$a6,0x3
.L0f12def8:
    # Line 577
    move	$a1,$zero
    bnez	$a1,.L0f12df28
    nop
    # Line 575
    beq	$at,$a0,.L0f12df28
    addiu	$a5,$a5,1
.L0f12df0c:
    lw	$a1,28($a0)
    addu	$at,$a6,$a2
    beqz	$a1,.L0f12def8
    addiu	$a0,$a0,40
    lw	$v1,16($a1)
    bne	$v1,$s0,.L0f12def8
    # Line 577
    li	$a1,1
.L0f12df28:
    # Line 583
    bne	$a5,$a7,.L0f12df38
    # Line 586
    sll	$a0,$a5,0x2
    # Line 584
    move	$a5,$zero
    # Line 586
    sll	$a0,$a5,0x2
.L0f12df38:
    addu	$a0,$a0,$a5
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a2
    lw	$a0,28($a0)
    # Line 587
    la	$t9,gl_glx_findwindow
    # Line 586
    lw	$a0,4($a0)
    # Line 587
    move	$a1,$s2
    bal gl_glx_findwindow
    sd	$a0,128($sp)
    bnez	$v0,.L0f12dfd0
    ld	$s2,176($sp)
    # Line 594
    la	$t9,XGetWindowAttributes
    ld	$a0,128($sp)
    ld	$a1,96($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 596
    la	$t9,XScreenNumberOfScreen
    jalr	$t9
    lw	$a0,88($sp)
    la	$t9,sub_0f130000
    move	$a1,$v0
    addiu	$t9,$t9,-11448
    bal gl_g_gconfig
    move	$a0,$s0
    bltz	$v0,.L0f12e248
    # Line 614
    lw	$t2,24($sp)
    move	$a5,$zero
    la	$a2,gl_scrntab
    # Line 612
    move	$s0,$zero
    # Line 600
    sll	$a3,$v0,0x2
    lw	$a2,0($a2)
    addu	$a3,$a3,$v0
    sll	$a3,$a3,0x3
    addu	$a2,$a2,$a3
    lw	$a2,28($a2)
    # Line 602
    li	$a0,11
    b	.L0f12e008
    # Line 601
    addiu	$a6,$a2,20
.L0f12dfd0:
    # Line 707
    li	$v0,-3
    ld	$gp,152($sp)
    ld	$s0,168($sp)
    ld	$ra,160($sp)
    ld	$s1,144($sp)
    ld	$s3,136($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f12dff0:
    # Line 614
    addiu	$a5,$a5,1
.L0f12dff4:
    slti	$a3,$a5,11
    beqz	$a3,.L0f12e068
    addiu	$a6,$a6,8
    bnezl	$s0,.L0f12e06c
    sd	$a0,120($sp)
.L0f12e008:
    lw	$t1,0($a6)
    blezl	$t1,.L0f12dff4
    addiu	$a5,$a5,1
    bnez	$s0,.L0f12dff0
    # Line 618
    sll	$t0,$t1,0x2
    lw	$a7,4($t2)
    addu	$t0,$t0,$t1
    lw	$v0,4($a6)
    sll	$t0,$t0,0x4
    b	.L0f12e04c
    addu	$t0,$v0,$t0
.L0f12e034:
    addiu	$v0,$v0,80
.L0f12e038:
    sltu	$at,$v0,$t0
    beqz	$at,.L0f12dff0
    nop
    bnez	$s0,.L0f12dff0
    nop
.L0f12e04c:
    lw	$v1,0($v0)
    lw	$v1,4($v1)
    bnel	$v1,$a7,.L0f12e038
    addiu	$v0,$v0,80
    # Line 622
    move	$a0,$a5
    b	.L0f12e034
    # Line 623
    move	$s0,$v0
.L0f12e068:
    sd	$a0,120($sp)
.L0f12e06c:
    # Line 614
    li	$a3,11
    beq	$a0,$a3,.L0f12e18c
    sd	$a2,104($sp)
    # Line 656
    la	$t9,gl_malloc
    addiu	$a1,$gp,-15896
    jalr	$t9
    li	$a0,188
    move	$s2,$v0
    move	$a4,$v0
    # Line 657
    la	$t9,bzero
    sd	$v0,112($sp)
    move	$a0,$v0
    jalr	$t9
    li	$a1,188
    # Line 672
    li	$a1,1
    # Line 669
    sw	$zero,84($s2)
    # Line 662
    sw	$s0,20($s2)
    # Line 671
    li	$a7,5
    # Line 658
    li	$t3,-1
    sw	$t3,180($s2)
    # Line 672
    la	$t9,_GLnewcontext
    ld	$t1,104($sp)
    # Line 670
    ld	$a5,96($sp)
    # Line 671
    ld	$a6,112($sp)
    # Line 672
    move	$a0,$t1
    # Line 659
    ld	$t2,128($sp)
    # Line 661
    ld	$t0,120($sp)
    # Line 660
    sw	$t1,12($s2)
    # Line 659
    sw	$t2,4($s2)
    # Line 661
    sll	$t0,$t0,0x3
    addu	$t0,$t0,$t1
    addiu	$t0,$t0,20
    sw	$t0,16($s2)
    # Line 671
    sb	$a7,44($a6)
    # Line 670
    sw	$a5,8($a6)
    # Line 672
    bal _GLnewcontext
    # Line 670
    sw	$a5,64($a6)
    # Line 675
    li	$a3,8192
    # Line 672
    ld	$s2,112($sp)
    # Line 675
    move	$a2,$s3
    # Line 673
    ld	$s0,104($sp)
    # Line 672
    sw	$v0,124($s2)
    # Line 675
    move	$a1,$s1
    # Line 673
    lw	$t8,0($s0)
    # Line 672
    la	$t9,sub_0f130000
    # Line 675
    move	$a0,$s2
    # Line 673
    lw	$t8,20($t8)
    # Line 672
    addiu	$t9,$t9,-9352
    # Line 675
    bal gl_g_gl_glx_getconfig
    # Line 673
    sw	$t8,0($s2)
    # Line 675
    beqz	$v0,.L0f12e1b8
    # Line 679
    li	$v0,-8
.L0f12e13c:
    la	$at,GLlasterror
    ld	$gp,152($sp)
    ld	$s0,168($sp)
    ld	$s1,144($sp)
    li	$ra,-8
    sw	$ra,0($at)
    ld	$ra,160($sp)
    ld	$s2,176($sp)
    ld	$s3,136($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f12e168:
    # Line 570
    li	$v0,-3
    ld	$gp,152($sp)
    ld	$s0,168($sp)
    ld	$s1,144($sp)
    ld	$ra,160($sp)
    ld	$s2,176($sp)
    ld	$s3,136($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f12e18c:
    # Line 651
    li	$v0,-6
    la	$a3,GLlasterror
    ld	$gp,152($sp)
    ld	$s0,168($sp)
    ld	$s1,144($sp)
    ld	$s3,136($sp)
    ld	$ra,160($sp)
    addiu	$sp,$sp,224
    li	$v1,-6
    jr	$ra
    sw	$v1,0($a3)
.L0f12e1b8:
    # Line 675
    move	$a0,$s2
    la	$t9,sub_0f130000
    move	$a1,$s1
    move	$a2,$s3
    addiu	$t9,$t9,-9352
    bal gl_g_gl_glx_getconfig
    li	$a3,12288
    bnez	$v0,.L0f12e13c
    # Line 679
    li	$v0,-8
    ld	$a0,128($sp)
    # Line 687
    move	$a1,$s2
    la	$t9,__iglooCreateContextInfo
    lw	$a2,20($s2)
    move	$a3,$zero
    jalr	$t9
    lw	$a2,0($a2)
    # Line 690
    la	$t9,_GLbindcontext
    lw	$a1,124($s2)
    move	$a0,$s2
    bal _GLbindcontext
    # Line 687
    sw	$v0,24($s2)
    # Line 690
    beqz	$v0,.L0f12e268
    # Line 695
    la	$t9,gl_free
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$gp,-15896
    # Line 696
    la	$v0,GLlasterror
    ld	$gp,152($sp)
    ld	$s0,168($sp)
    ld	$s1,144($sp)
    ld	$s2,176($sp)
    ld	$ra,160($sp)
    ld	$s3,136($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,224
.L0f12e248:
    # Line 598
    li	$v0,-2
    ld	$gp,152($sp)
    ld	$s0,168($sp)
    ld	$ra,160($sp)
    ld	$s1,144($sp)
    ld	$s3,136($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f12e268:
    # Line 698
    lw	$v1,0($s0)
    # Line 699
    la	$t9,_GLunblock
    li	$a1,1
    # Line 698
    sw	$s2,20($v1)
    # Line 699
    bal _GLunblock
    lw	$a0,124($s2)
    # Line 700
    la	$t9,gl_malloc
    addiu	$a1,$gp,-15896
    sll	$s0,$s1,0x2
    jalr	$t9
    move	$a0,$s0
    move	$a1,$v0
    # Line 704
    move	$a2,$s0
    move	$a0,$s3
    # Line 702
    sw	$s1,132($s2)
    # Line 704
    la	$t9,bcopy
    # Line 700
    sw	$v0,128($s2)
    # Line 703
    li	$a3,16
    # Line 704
    jalr	$t9
    # Line 703
    sw	$a3,180($s2)
    # Line 705
    move	$v0,$zero
    ld	$gp,152($sp)
    ld	$s0,168($sp)
    ld	$s1,144($sp)
    ld	$ra,160($sp)
    ld	$s2,176($sp)
    ld	$s3,136($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end gl_g_gl_glx_link

# Function: gl_g_gl_glx_unlink
# Declared: Line 711 (Source lines: 712-737)
# Address: 0x0f12e2dc - 0x0f12e3f8 (Size: 284 bytes, Frame: 48)
.globl gl_g_gl_glx_unlink
.ent gl_g_gl_glx_unlink
gl_g_gl_glx_unlink:
    # Line 712
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,20332 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 717
    la	$t0,gl_nscrns
    lw	$t0,0($t0)
    la	$a6,gl_scrntab
    move	$a5,$zero
    blez	$t0,.L0f12e34c
    lw	$a6,0($a6)
    sll	$a7,$t0,0x2
    move	$v0,$a6
    addu	$a7,$a7,$t0
    b	.L0f12e330
    sll	$a7,$a7,0x3
.L0f12e31c:
    # Line 719
    move	$a4,$zero
    bnez	$a4,.L0f12e34c
    nop
    # Line 717
    beq	$at,$v0,.L0f12e34c
    addiu	$a5,$a5,1
.L0f12e330:
    lw	$a4,28($v0)
    addu	$at,$a7,$a6
    beqz	$a4,.L0f12e31c
    addiu	$v0,$v0,40
    lw	$v1,16($a4)
    bne	$v1,$a0,.L0f12e31c
    # Line 719
    li	$a4,1
.L0f12e34c:
    # Line 726
    bne	$a5,$t0,.L0f12e360
    # Line 730
    la	$t9,gl_glx_findwindow
    sd	$ra,16($sp)
    # Line 727
    move	$a5,$zero
    # Line 730
    la	$t9,gl_glx_findwindow
.L0f12e360:
    sll	$a0,$a5,0x2
    addu	$a0,$a0,$a5
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a6
    lw	$a0,28($a0)
    sd	$ra,16($sp)
    bal gl_glx_findwindow
    lw	$a0,4($a0)
    move	$a2,$v0
    sd	$v0,0($sp)
    beqz	$v0,.L0f12e3c8
    ld	$ra,16($sp)
    # Line 731
    la	$t9,_GLdestroycontext
    bal _GLdestroycontext
    lw	$a0,124($v0)
    bltz	$v0,.L0f12e3d8
    ld	$ra,16($sp)
    # Line 733
    la	$t9,_GLdestroywindow
    bal _GLdestroywindow
    ld	$a0,0($sp)
    bltz	$v0,.L0f12e3e8
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 735
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0f12e3c8:
    # Line 737
    li	$v0,-3
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12e3d8:
    # Line 732
    li	$v0,-1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12e3e8:
    ld	$gp,8($sp)
    # Line 734
    li	$v0,-3
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_gl_glx_unlink

# Function: gl_g_gl_glx_winset
# Declared: Line 741 (Source lines: 742-809)
# Address: 0x0f12e3f8 - 0x0f12e5dc (Size: 484 bytes, Frame: 192)
.globl gl_g_gl_glx_winset
.ent gl_g_gl_glx_winset
gl_g_gl_glx_winset:
    # Line 742
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    sd	$s0,24($sp)
    lui	$s0,0xfff0
    addiu	$s0,$s0,20048
    addu	$gp,$t9,$s0
    # Line 747
    la	$a7,gl_nscrns
    move	$a4,$zero
    lw	$a7,0($a7)
    la	$a5,gl_scrntab
    # Line 742
    move	$s0,$a1
    # Line 747
    blez	$a7,.L0f12e470
    lw	$a5,0($a5)
    sll	$a6,$a7,0x2
    move	$v0,$a5
    addu	$a6,$a6,$a7
    b	.L0f12e454
    sll	$a6,$a6,0x3
.L0f12e440:
    # Line 749
    move	$a1,$zero
    bnez	$a1,.L0f12e470
    nop
    # Line 747
    beq	$at,$v0,.L0f12e470
    addiu	$a4,$a4,1
.L0f12e454:
    lw	$a1,28($v0)
    addu	$at,$a6,$a5
    beqz	$a1,.L0f12e440
    addiu	$v0,$v0,40
    lw	$v1,16($a1)
    bne	$v1,$a0,.L0f12e440
    # Line 749
    li	$a1,1
.L0f12e470:
    # Line 756
    bne	$a4,$a7,.L0f12e484
    # Line 759
    sll	$a0,$a4,0x2
    sd	$ra,32($sp)
    # Line 757
    move	$a4,$zero
    # Line 759
    sll	$a0,$a4,0x2
.L0f12e484:
    addu	$a0,$a0,$a4
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a5
    lw	$a0,28($a0)
    # Line 761
    la	$t9,__iglooCheckCurrentContextInfo
    # Line 759
    lw	$a0,4($a0)
    sd	$ra,32($sp)
    # Line 761
    jalr	$t9
    sd	$a0,8($sp)
    bnez	$s0,.L0f12e4d0
    ld	$ra,32($sp)
    la	$a2,__iglooNoReleaseContext
    lw	$a2,0($a2)
    # Line 777
    ld	$s0,24($sp)
    # Line 761
    beqz	$a2,.L0f12e5a4
    # Line 777
    li	$v0,-3
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12e4d0:
    # Line 781
    la	$t9,gl_glx_findwindow
    ld	$a0,8($sp)
    bal gl_glx_findwindow
    move	$a1,$s0
    move	$a3,$v0
    sd	$v0,0($sp)
    beqz	$v0,.L0f12e548
    ld	$ra,32($sp)
    # Line 786
    la	$t9,_GLsetcontext
    bal _GLsetcontext
    lw	$a0,124($v0)
    bltz	$v0,.L0f12e594
    ld	$ra,32($sp)
    ld	$at,0($sp)
    # Line 787
    lw	$at,140($at)
    ld	$a2,0($sp)
    bne	$at,$s0,.L0f12e55c
    ld	$v1,0($sp)
    # Line 789
    li	$s0,64
.L0f12e51c:
    # Line 804
    la	$t9,__GLdrawmode
    jalr	$t9
    move	$a0,$s0
    ld	$v0,0($sp)
    ld	$gp,16($sp)
    # Line 807
    ld	$ra,32($sp)
    # Line 805
    sw	$s0,180($v0)
    # Line 807
    move	$v0,$zero
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12e548:
    # Line 809
    li	$v0,-3
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12e55c:
    # Line 789
    lw	$v1,136($v1)
    bne	$v1,$s0,.L0f12e570
    ld	$a3,0($sp)
    # Line 791
    b	.L0f12e51c
    li	$s0,32
.L0f12e570:
    lw	$a2,144($a2)
    bnel	$a2,$s0,.L0f12e584
    # Line 793
    lw	$a3,8($a3)
    b	.L0f12e51c
    li	$s0,128
.L0f12e584:
    bne	$a3,$s0,.L0f12e5cc
    # Line 797
    li	$v0,-3
    # Line 795
    b	.L0f12e51c
    li	$s0,16
.L0f12e594:
    ld	$gp,16($sp)
    # Line 787
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12e5a4:
    # Line 772
    la	$t9,__iglooMakeNoCurrent
    ld	$a0,8($sp)
    jalr	$t9
    li	$a1,1
    # Line 773
    move	$v0,$zero
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12e5cc:
    ld	$gp,16($sp)
    # Line 797
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_gl_glx_winset

.late_rodata
jtbl_0f025e38:
    .word .L0f12d4e4
    .word .L0f12d9e8
    .word .L0f12d9e0
    .word .L0f12d4e0
    .word .L0f12d4e4
    .word .L0f12d9d0
    .word .L0f12d9c8
    .word .L0f12d4e4
    .word .L0f12d4e4
    .word .L0f12d4e4
    .word .L0f12d9f0
    .word .L0f12d9fc
    .word .L0f12da08
    .word .L0f12da14
    .word .L0f12d9d8
jtbl_0f025e78:
    .word .L0f12d6c8
    .word .L0f12da3c
    .word .L0f12da34
    .word .L0f12da24
    .word .L0f12da1c
    .word .L0f12da68
    .word .L0f12da60
    .word .L0f12da78
    .word .L0f12da70
    .word .L0f12d6c8
    .word .L0f12da44
    .word .L0f12da4c
    .word .L0f12da54
    .word .L0f12d6c0
    .word .L0f12da2c

