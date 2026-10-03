# Source: ../igloo/glws/glstring.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/glstring.c -o glstring.T
# Total Functions: 5

.text

# Function: __iglooGetOpenGLStrings
# Declared: Line 16 (Source lines: 17-31)
# Address: 0x0f0d6164 - 0x0f0d6200 (Size: 156 bytes, Frame: 192)
.globl __iglooGetOpenGLStrings
.ent __iglooGetOpenGLStrings
__iglooGetOpenGLStrings:
    # Line 17
    move	$at,$a1
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 18
    move	$s0,$zero
    sd	$a1,16($sp)
    sd	$gp,32($sp)
    # Line 17
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-12060 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 20
    la	$t9,__iglooIsGlxScreen
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    move	$a0,$a1
    beqz	$v0,.L0f0d61ec
    ld	$ra,0($sp)
    # Line 22
    la	$t9,__iglooGetCurrentContextInfo
    bal __iglooGetCurrentContextInfo
    ld	$s0,8($sp)
    bnez	$v0,.L0f0d61d8
    # Line 28
    la	$t9,sub_0f0d0000
    # Line 24
    la	$t9,sub_0f0d0000
    move	$a0,$s0
    addiu	$t9,$t9,26268
    bal __iglooGetOpenGLStrings
    ld	$a1,16($sp)
    move	$s0,$v0
    b	.L0f0d61ec
    ld	$ra,0($sp)
.L0f0d61d8:
    # Line 28
    addiu	$t9,$t9,25088
    bal __iglooGetOpenGLStrings
    move	$a0,$s0
    move	$s0,$v0
    ld	$ra,0($sp)
.L0f0d61ec:
    ld	$gp,32($sp)
    # Line 31
    move	$v0,$s0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __iglooGetOpenGLStrings

# Function: GetOpenGLStrings
# Declared: Line 50 (Source lines: 51-257)
# Address: 0x0f0d6200 - 0x0f0d669c (Size: 1180 bytes, Frame: 192)
.ent GetOpenGLStrings
GetOpenGLStrings:
    # Line 51
    addiu	$sp,$sp,-192
    sd	$s4,144($sp)
    sd	$s0,96($sp)
    # Line 64
    la	$t9,glGetString
    # Line 51
    move	$s0,$a0
    sd	$ra,104($sp)
    # Line 64
    jalr	$t9
    li	$a0,7936
    # Line 65
    la	$t9,glGetString
    sd	$s8,128($sp)
    # Line 64
    move	$s4,$v0
    # Line 65
    jalr	$t9
    li	$a0,7937
    # Line 66
    la	$t9,glGetString
    sd	$s3,136($sp)
    # Line 65
    move	$s8,$v0
    # Line 66
    jalr	$t9
    li	$a0,7938
    sd	$s2,112($sp)
    sd	$s5,160($sp)
    # Line 67
    la	$t9,glGetString
    sd	$s1,168($sp)
    # Line 66
    move	$s3,$v0
    # Line 67
    jalr	$t9
    li	$a0,7939
    move	$s5,$v0
    # Line 80
    addiu	$a2,$sp,4
    addiu	$a1,$sp,0
    move	$a0,$s0
    # Line 78
    addiu	$s2,$gp,-19056
    # Line 80
    la	$t9,glXQueryVersion
    # Line 77
    addiu	$s1,$gp,-19056
    # Line 76
    sw	$zero,4($sp)
    # Line 80
    jalr	$t9
    # Line 75
    sw	$zero,0($sp)
    # Line 80
    li	$at,1
    beq	$v0,$at,.L0f0d6560
.L0f0d6294:
    # Line 103
    la	$t9,strlen
    sd	$s7,152($sp)
    jalr	$t9
    move	$a0,$s4
    # Line 104
    la	$t9,strlen
    sd	$s6,120($sp)
    move	$a0,$s8
    jalr	$t9
    # Line 103
    addiu	$s7,$v0,1
    # Line 105
    la	$t9,strlen
    move	$a0,$s3
    jalr	$t9
    # Line 104
    addiu	$s6,$v0,1
    # Line 106
    la	$t9,strlen
    sd	$s8,88($sp)
    move	$a0,$s5
    jalr	$t9
    # Line 105
    addiu	$s0,$v0,1
    # Line 107
    la	$t9,strlen
    move	$a0,$s1
    jalr	$t9
    # Line 106
    addiu	$s8,$v0,1
    # Line 108
    la	$t9,strlen
    move	$a0,$s2
    # Line 107
    addiu	$v0,$v0,1
    # Line 108
    jalr	$t9
    sd	$v0,80($sp)
    # Line 112
    addu	$a1,$s0,$s8
    addu	$a0,$s7,$s6
    addu	$a0,$a0,$a1
    ld	$a1,80($sp)
    sd	$s0,72($sp)
    la	$t9,__iglooMalloc
    addu	$a1,$v0,$a1
    addu	$a0,$a0,$a1
    jalr	$t9
    addiu	$a0,$a0,85
    beqz	$v0,.L0f0d652c
    move	$s0,$v0
    # Line 121
    lw	$a4,0($sp)
    sw	$a4,0($v0)
    # Line 122
    lw	$a3,4($sp)
    sw	$a3,4($v0)
    # Line 129
    lbu	$a6,0($s1)
    beqz	$a6,.L0f0d637c
    move	$a0,$s1
    la	$a5,__libc_attr
    move	$a2,$a6
    lw	$a5,0($a5)
.L0f0d6358:
    # Line 131
    sll	$at,$a2,0x2
    addu	$at,$at,$a5
    lw	$at,4($at)
    andi	$at,$at,0x4
    bnez	$at,.L0f0d637c
    nop
    # Line 129
    lbu	$a2,1($a0)
    bnez	$a2,.L0f0d6358
    addiu	$a0,$a0,1
.L0f0d637c:
    # Line 135
    la	$t9,sscanf
    addiu	$a3,$v0,12
    addiu	$a2,$v0,8
    jalr	$t9
    addiu	$a1,$gp,-19048
    li	$a2,2
    beq	$v0,$a2,.L0f0d63a8
    # Line 146
    la	$t9,strcpy
    # Line 140
    sw	$zero,12($s0)
    # Line 139
    sw	$zero,8($s0)
    # Line 146
    la	$t9,strcpy
.L0f0d63a8:
    move	$a1,$s4
    # Line 145
    addiu	$a0,$s0,84
    # Line 146
    jalr	$t9
    # Line 145
    sw	$a0,16($s0)
    ld	$a1,88($sp)
    ld	$s4,80($sp)
    # Line 149
    addu	$a0,$s7,$s0
    # Line 150
    la	$t9,strcpy
    sd	$a0,40($sp)
    # Line 149
    addiu	$a0,$a0,84
    # Line 150
    jalr	$t9
    # Line 149
    sw	$a0,20($s0)
    # Line 154
    move	$a1,$s3
    # Line 153
    ld	$a0,40($sp)
    ld	$s7,152($sp)
    # Line 154
    la	$t9,strcpy
    # Line 153
    addu	$a0,$a0,$s6
    sd	$a0,48($sp)
    addiu	$a0,$a0,84
    # Line 154
    jalr	$t9
    # Line 153
    sw	$a0,24($s0)
    # Line 158
    move	$a1,$s5
    ld	$s6,120($sp)
    # Line 157
    ld	$a2,72($sp)
    ld	$a0,48($sp)
    ld	$s3,136($sp)
    # Line 158
    la	$t9,strcpy
    # Line 157
    addu	$a0,$a0,$a2
    sd	$a0,64($sp)
    addiu	$a0,$a0,84
    # Line 158
    jalr	$t9
    # Line 157
    sw	$a0,28($s0)
    # Line 162
    move	$a1,$s1
    # Line 161
    ld	$a0,64($sp)
    ld	$s5,160($sp)
    # Line 162
    la	$t9,strcpy
    # Line 161
    addu	$a0,$a0,$s8
    sd	$a0,56($sp)
    addiu	$a0,$a0,84
    # Line 162
    jalr	$t9
    # Line 161
    sw	$a0,32($s0)
    # Line 166
    move	$a1,$s2
    ld	$s8,128($sp)
    # Line 165
    ld	$a0,56($sp)
    ld	$s1,168($sp)
    # Line 166
    la	$t9,strcpy
    # Line 165
    addu	$a0,$a0,$s4
    addiu	$a0,$a0,84
    # Line 166
    jalr	$t9
    # Line 165
    sw	$a0,36($s0)
    # Line 175
    lw	$a0,-14832($gp)
    la	$t9,strlen
    # Line 173
    sw	$zero,40($s0)
    ld	$s2,112($sp)
    # Line 175
    jalr	$t9
    ld	$s4,144($sp)
    # Line 176
    la	$t9,strlen
    sd	$v0,16($sp)
    jalr	$t9
    lw	$a0,-14828($gp)
    # Line 177
    la	$t9,strlen
    sd	$v0,8($sp)
    jalr	$t9
    lw	$a0,-14824($gp)
    # Line 178
    la	$t9,strlen
    sd	$v0,24($sp)
    jalr	$t9
    lw	$a0,-14820($gp)
    sd	$v0,32($sp)
    # Line 180
    la	$t9,strncmp
    ld	$a2,16($sp)
    lw	$a1,20($s0)
    jalr	$t9
    lw	$a0,-14832($gp)
    beqz	$v0,.L0f0d65a8
    # Line 206
    la	$t9,strncmp
    ld	$a2,8($sp)
    lw	$a1,20($s0)
    jalr	$t9
    lw	$a0,-14828($gp)
    beqz	$v0,.L0f0d65f0
    # Line 227
    la	$t9,strncmp
    ld	$a2,24($sp)
    lw	$a1,20($s0)
    jalr	$t9
    lw	$a0,-14824($gp)
    beqz	$v0,.L0f0d6640
    # Line 250
    la	$t9,strncmp
    ld	$a2,32($sp)
    lw	$a1,20($s0)
    jalr	$t9
    lw	$a0,-14820($gp)
    beqz	$v0,.L0f0d659c
.L0f0d651c:
    # Line 255
    la	$t9,sub_0f0d0000
.L0f0d6520:
    addiu	$t9,$t9,26692
    bal __iglooGetOpenGLStrings
    move	$a0,$s0
.L0f0d652c:
    # Line 257
    move	$v0,$s0
    ld	$s0,96($sp)
    ld	$s1,168($sp)
    ld	$s2,112($sp)
    ld	$s3,136($sp)
    ld	$s4,144($sp)
    ld	$s5,160($sp)
    ld	$s6,120($sp)
    ld	$ra,104($sp)
    ld	$s7,152($sp)
    ld	$s8,128($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0f0d6560:
    # Line 80
    lw	$at,0($sp)
    blez	$at,.L0f0d6294
    lw	$v1,4($sp)
    blez	$v1,.L0f0d6294
    # Line 90
    la	$t9,gluGetString
    lui	$a0,0x1
    jalr	$t9
    ori	$a0,$a0,0x89c0
    # Line 91
    la	$t9,gluGetString
    # Line 90
    move	$s1,$v0
    # Line 91
    lui	$a0,0x1
    jalr	$t9
    ori	$a0,$a0,0x89c1
    b	.L0f0d6294
    move	$s2,$v0
.L0f0d659c:
    # Line 253
    li	$a3,8
    b	.L0f0d651c
    sw	$a3,40($s0)
.L0f0d65a8:
    # Line 186
    addiu	$a4,$s0,52
    addiu	$a3,$s0,48
    addiu	$a2,$s0,44
    # Line 184
    sw	$zero,52($s0)
    # Line 183
    sw	$zero,48($s0)
    # Line 182
    sw	$zero,44($s0)
    # Line 186
    ld	$a5,16($sp)
    la	$a1,sub_0f020000
    la	$t9,sscanf
    lw	$a0,20($s0)
    addiu	$a1,$a1,13224
    jalr	$t9
    addu	$a0,$a0,$a5
    lw	$a3,52($s0)
    beqz	$a3,.L0f0d6690
    # Line 203
    li	$a4,3
    b	.L0f0d651c
    sw	$a4,40($s0)
.L0f0d65f0:
    # Line 215
    li	$a1,47
    lw	$a0,20($s0)
    # Line 213
    sw	$zero,56($s0)
    # Line 212
    sw	$zero,52($s0)
    # Line 215
    la	$t9,strchr
    # Line 211
    sb	$zero,48($s0)
    li	$a5,2
    # Line 215
    jalr	$t9
    # Line 210
    sw	$a5,40($s0)
    # Line 215
    beqz	$v0,.L0f0d651c
    # Line 217
    move	$a0,$v0
    addiu	$a4,$s0,56
    addiu	$a3,$s0,52
    la	$t9,sscanf
    la	$a1,sub_0f020000
    addiu	$a2,$s0,48
    jalr	$t9
    addiu	$a1,$a1,13240
    b	.L0f0d6520
    # Line 255
    la	$t9,sub_0f0d0000
.L0f0d6640:
    # Line 237
    li	$a1,47
    lw	$a0,20($s0)
    # Line 235
    sw	$zero,56($s0)
    # Line 234
    sw	$zero,52($s0)
    # Line 237
    la	$t9,strchr
    # Line 233
    sb	$zero,48($s0)
    # Line 232
    li	$a2,5
    # Line 237
    jalr	$t9
    # Line 232
    sw	$a2,40($s0)
    # Line 237
    beqz	$v0,.L0f0d651c
    # Line 239
    move	$a0,$v0
    addiu	$a4,$s0,56
    addiu	$a3,$s0,52
    la	$t9,sscanf
    la	$a1,sub_0f020000
    addiu	$a2,$s0,48
    jalr	$t9
    addiu	$a1,$a1,13240
    b	.L0f0d6520
    # Line 255
    la	$t9,sub_0f0d0000
.L0f0d6690:
    # Line 198
    li	$a3,4
    b	.L0f0d651c
    sw	$a3,40($s0)
.end GetOpenGLStrings

# Function: ByAllMeansGetOpenGLStrings
# Declared: Line 264 (Source lines: 266-332)
# Address: 0x0f0d669c - 0x0f0d6844 (Size: 424 bytes, Frame: 176)
.ent ByAllMeansGetOpenGLStrings
ByAllMeansGetOpenGLStrings:
    # Line 276
    addiu	$a2,$gp,-14816
    # Line 266
    addiu	$sp,$sp,-176
    sd	$s2,152($sp)
    sd	$s0,136($sp)
    move	$s0,$a0
    sd	$a1,128($sp)
    # Line 276
    la	$t9,glXChooseVisual
    sd	$s1,144($sp)
    sd	$ra,120($sp)
    jalr	$t9
    # Line 271
    move	$s1,$zero
    # Line 276
    move	$s2,$v0
    beqz	$v0,.L0f0d6814
    ld	$ra,120($sp)
    # Line 288
    move	$a0,$s0
    move	$a1,$v0
    la	$t9,glXCreateContext
    move	$a2,$zero
    li	$a3,1
    jalr	$t9
    ld	$s1,128($sp)
    sd	$v0,104($sp)
    # Line 292
    move	$a3,$zero
    lw	$a2,0($s2)
    move	$a0,$s0
    la	$t9,XCreateColormap
    lw	$a1,140($s0)
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$s1
    sll	$a4,$a4,0x4
    sd	$a4,96($sp)
    addu	$a1,$a1,$a4
    jalr	$t9
    lw	$a1,8($a1)
    # Line 301
    move	$a6,$zero
    li	$a5,100
    li	$a4,100
    move	$a3,$zero
    move	$a2,$zero
    move	$a0,$s0
    li	$t1,10250
    # Line 299
    sw	$zero,72($sp)
    # Line 298
    sw	$zero,36($sp)
    # Line 297
    sw	$zero,44($sp)
    # Line 292
    sw	$v0,84($sp)
    # Line 301
    ld	$a7,96($sp)
    lw	$a1,140($s0)
    addiu	$t2,$sp,32
    li	$t3,1
    addu	$a1,$a1,$a7
    lw	$a7,12($s2)
    lw	$a1,8($a1)
    sw	$t3,4($sp)
    la	$t9,XCreateWindow
    lw	$t0,0($s2)
    sw	$t2,28($sp)
    sw	$t1,20($sp)
    jalr	$t9
    sw	$t0,12($sp)
    move	$a1,$v0
    move	$t0,$v0
    # Line 313
    la	$t9,glXMakeCurrent
    sd	$v0,112($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a2,104($sp)
    # Line 317
    la	$t9,sub_0f0d0000
    addiu	$t9,$t9,25088
    bal __iglooGetOpenGLStrings
    move	$a0,$s0
    move	$s1,$v0
    # Line 319
    la	$t9,glXMakeCurrent
    move	$a0,$s0
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    ld	$v0,104($sp)
    bnez	$v0,.L0f0d682c
    ld	$at,112($sp)
.L0f0d67d8:
    # Line 322
    beqz	$at,.L0f0d67ec
    # Line 325
    la	$t9,XDestroyWindow
    move	$a0,$s0
    jalr	$t9
    ld	$a1,112($sp)
.L0f0d67ec:
    lw	$a1,84($sp)
    beqz	$a1,.L0f0d6800
    # Line 328
    la	$t9,XFreeColormap
    jalr	$t9
    move	$a0,$s0
.L0f0d6800:
    # Line 330
    la	$t9,XFree
    move	$a0,$s2
    jalr	$t9
    ld	$s0,136($sp)
    ld	$ra,120($sp)
.L0f0d6814:
    # Line 332
    ld	$s0,136($sp)
    move	$v0,$s1
    ld	$s1,144($sp)
    ld	$s2,152($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0d682c:
    # Line 322
    la	$t9,glXDestroyContext
    move	$a0,$s0
    jalr	$t9
    move	$a1,$v0
    b	.L0f0d67d8
    ld	$at,112($sp)
.end ByAllMeansGetOpenGLStrings

# Function: parseExtensions
# Declared: Line 335 (Source lines: 336-386)
# Address: 0x0f0d6844 - 0x0f0d691c (Size: 216 bytes, Frame: 208)
.ent parseExtensions
parseExtensions:
    # Line 336
    addiu	$sp,$sp,-80
    sd	$ra,0($sp)
    sd	$s3,40($sp)
    move	$s3,$a0
    sd	$s4,32($sp)
    # Line 349
    la	$s4,__libc_attr
    sd	$s5,8($sp)
    li	$s5,1
    sd	$s2,48($sp)
    li	$s2,24
    sd	$s1,16($sp)
    lui	$s1,0x8000
    sd	$s0,24($sp)
    # Line 344
    la	$s0,sub_0f030000
    # Line 349
    ori	$s1,$s1,0x8
    b	.L0f0d689c
    # Line 344
    addiu	$s0,$s0,-30568
.L0f0d6888:
    # Line 372
    lw	$at,8($s0)
    addu	$at,$at,$s3
    sb	$s5,60($at)
.L0f0d6894:
    # Line 349
    beqz	$s2,.L0f0d68f8
    addiu	$s0,$s0,12
.L0f0d689c:
    # Line 356
    lw	$v1,8($s0)
    addu	$v1,$v1,$s3
    sb	$zero,60($v1)
    # Line 349
    addiu	$s2,$s2,-1
    # Line 358
    lw	$a0,28($s3)
    # Line 360
    la	$t9,strstr
.L0f0d68b4:
    jalr	$t9
    lw	$a1,0($s0)
    beqz	$v0,.L0f0d6894
    nop
    # Line 366
    lw	$a0,4($s0)
    addu	$a0,$a0,$v0
    # Line 368
    lbu	$a0,0($a0)
    beqz	$a0,.L0f0d6888
    lw	$a1,0($s4)
    sll	$a2,$a0,0x2
    addu	$a1,$a1,$a2
    lw	$a1,4($a1)
    and	$a1,$a1,$s1
    bnez	$a1,.L0f0d6888
    # Line 377
    addiu	$a0,$v0,1
    # Line 373
    b	.L0f0d68b4
    # Line 360
    la	$t9,strstr
.L0f0d68f8:
    # Line 386
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$ra,0($sp)
    ld	$s4,32($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end parseExtensions

# Function: __iglooIsExtensionSupported
# Declared: Line 395 (Source lines: 396-406)
# Address: 0x0f0d691c - 0x0f0d6944 (Size: 40 bytes, Frame: 0)
.globl __iglooIsExtensionSupported
.ent __iglooIsExtensionSupported
__iglooIsExtensionSupported:
    # Line 396
    lui	$v1,0xfff6
    addiu	$v1,$v1,-14036
    addu	$at,$t9,$v1
    # Line 406
    lw	$v0,-32368($at)
    lw	$v0,0($v0)
    lw	$v0,28($v0)
    lw	$v0,256($v0)
    addu	$v0,$v0,$a0
    jr	$ra
    lbu	$v0,60($v0)
.end __iglooIsExtensionSupported

