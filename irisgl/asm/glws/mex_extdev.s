# Source: ../igloo/glws/mex_extdev.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/mex_extdev.c -o mex_extdev.T
# Total Functions: 44

.text

# Function: initGLDevDesc
# Declared: Line 202 (Source lines: 203-206)
# Address: 0x0f0e406c - 0x0f0e40a4 (Size: 56 bytes, Frame: 16)
.ent initGLDevDesc
initGLDevDesc:
    # Line 204
    li	$a2,176
    # Line 203
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 204
    la	$a1,sub_0f030000
    la	$t9,bcopy
    la	$a0,sub_0f030000
    addiu	$a1,$a1,20264
    jalr	$t9
    addiu	$a0,$a0,-27104
    # Line 205
    lw	$ra,-14708($gp)
    sw	$ra,-20708($gp)
    # Line 206
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end initGLDevDesc

# Function: lookupListedDev
# Declared: Line 211 (Source lines: 214-219)
# Address: 0x0f0e40a4 - 0x0f0e40dc (Size: 56 bytes, Frame: 0)
.ent lookupListedDev
lookupListedDev:
    # Line 215
    lw	$a4,-20704($gp)
    # Line 214
    la	$v0,sub_0f030000
    # Line 215
    move	$a3,$zero
    blez	$a4,.L0f0e40cc
    # Line 214
    addiu	$v0,$v0,20576
.L0f0e40b8:
    # Line 215
    lw	$v1,24($v0)
    beq	$v1,$a0,.L0f0e40d4
    addiu	$a3,$a3,1
    bne	$a3,$a4,.L0f0e40b8
    addiu	$v0,$v0,32
.L0f0e40cc:
    # Line 219
    jr	$ra
    move	$v0,$zero
.L0f0e40d4:
    # Line 217
    jr	$ra
    nop
.end lookupListedDev

# Function: findDevIndex
# Declared: Line 226 (Source lines: 231-264)
# Address: 0x0f0e40dc - 0x0f0e42bc (Size: 480 bytes, Frame: 240)
.ent findDevIndex
findDevIndex:
    # Line 231
    move	$v0,$a1
    addiu	$sp,$sp,-112
    sd	$s1,56($sp)
    move	$s1,$a0
    # Line 233
    lw	$a5,-20708($gp)
    sd	$s0,64($sp)
    la	$s0,sub_0f030000
    sd	$a2,48($sp)
    beqz	$a5,.L0f0e4294
    addiu	$s0,$s0,20264
.L0f0e4104:
    sd	$s6,0($sp)
    sd	$s4,8($sp)
    sd	$ra,16($sp)
    sd	$s5,32($sp)
    sd	$s3,24($sp)
    # Line 236
    andi	$s3,$v0,0x1
    sd	$s2,40($sp)
    blez	$a5,.L0f0e4228
    move	$s2,$zero
    andi	$s5,$v0,0x2
    sd	$s6,0($sp)
    sd	$s4,8($sp)
    b	.L0f0e4178
    sd	$ra,16($sp)
.L0f0e413c:
    # Line 252
    beqz	$s5,.L0f0e4168
    # Line 236
    lw	$a3,-20708($gp)
    # Line 256
    lhu	$v0,20($s0)
    slt	$at,$s1,$v0
    bnez	$at,.L0f0e4168
    # Line 236
    lw	$a3,-20708($gp)
    # Line 256
    lh	$v1,18($s0)
    addu	$v1,$v1,$v0
    slt	$v1,$s1,$v1
    bnez	$v1,.L0f0e4254
    # Line 236
    lw	$a3,-20708($gp)
.L0f0e4168:
    addiu	$s2,$s2,1
    slt	$a3,$s2,$a3
    beqz	$a3,.L0f0e4228
    addiu	$s0,$s0,44
.L0f0e4178:
    beqz	$s3,.L0f0e413c
    nop
    # Line 239
    lw	$s4,28($s0)
    # Line 241
    li	$a1,1
    move	$a0,$s0
    jalr	$s4
    move	$t9,$s4
    # Line 242
    lh	$a1,24($s0)
    move	$a0,$s0
    # Line 241
    andi	$s6,$v0,0xffff
    # Line 242
    jalr	$s4
    move	$t9,$s4
    andi	$a1,$v0,0xffff
    slt	$a0,$a1,$s6
    beqz	$a0,.L0f0e4214
    # Line 246
    move	$v0,$a1
    beqz	$a0,.L0f0e4220
    # Line 247
    move	$a0,$s6
.L0f0e41c0:
    slt	$a4,$s1,$v0
    bnez	$a4,.L0f0e413c
    slt	$at,$a0,$s1
    bnez	$at,.L0f0e413c
    nop
    # Line 252
    ld	$s1,56($sp)
    move	$v0,$s2
    ld	$s2,40($sp)
    ld	$s3,24($sp)
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$v1,48($sp)
    ld	$s5,32($sp)
    # Line 249
    beqz	$v1,.L0f0e4208
    # Line 252
    ld	$s0,64($sp)
    # Line 251
    li	$a3,1
    ld	$a4,48($sp)
    sw	$a3,0($a4)
.L0f0e4208:
    # Line 252
    ld	$s6,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e4214:
    # Line 246
    move	$v0,$s6
    bnez	$a0,.L0f0e41c0
    # Line 247
    move	$a0,$s6
.L0f0e4220:
    b	.L0f0e41c0
    move	$a0,$a1
.L0f0e4228:
    # Line 264
    li	$v0,-1
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,40($sp)
    ld	$s3,24($sp)
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s5,32($sp)
    ld	$s6,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e4254:
    # Line 260
    ld	$s1,56($sp)
    move	$v0,$s2
    ld	$s2,40($sp)
    ld	$s3,24($sp)
    ld	$s4,8($sp)
    ld	$ra,16($sp)
    ld	$s5,32($sp)
    ld	$at,48($sp)
    ld	$s6,0($sp)
    # Line 257
    beqz	$at,.L0f0e428c
    # Line 260
    ld	$s0,64($sp)
    # Line 259
    li	$v1,2
    ld	$a3,48($sp)
    sw	$v1,0($a3)
.L0f0e428c:
    # Line 260
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e4294:
    # Line 235
    la	$t9,sub_0f0e0000
    sd	$ra,16($sp)
    addiu	$t9,$t9,16492
    bal _GLdevname
    sd	$v0,72($sp)
    sd	$s2,40($sp)
    lw	$a5,-20708($gp)
    ld	$v0,72($sp)
    b	.L0f0e4104
    ld	$ra,16($sp)
.end findDevIndex

# Function: findListedDevFromType
# Declared: Line 272 (Source lines: 273-287)
# Address: 0x0f0e42bc - 0x0f0e435c (Size: 160 bytes, Frame: 32)
.ent findListedDevFromType
findListedDevFromType:
    # Line 273
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    beqz	$a1,.L0f0e432c
    move	$s0,$a1
    # Line 278
    lw	$a3,-20704($gp)
    beqz	$a3,.L0f0e433c
.L0f0e42d4:
    # Line 281
    la	$a4,sub_0f030000
    # Line 283
    move	$a1,$zero
    # Line 281
    addiu	$a4,$a4,3560
    # Line 283
    blez	$a3,.L0f0e4304
    addiu	$a0,$a4,17016
    lw	$at,28($a0)
.L0f0e42ec:
    lw	$at,8($at)
    beq	$at,$s0,.L0f0e4314
    addiu	$a0,$a0,32
    addiu	$a1,$a1,1
    bnel	$a1,$a3,.L0f0e42ec
    lw	$at,28($a0)
.L0f0e4304:
    # Line 287
    move	$v0,$zero
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e4314:
    # Line 285
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    sll	$v0,$a1,0x5
    addu	$v0,$v0,$a4
    jr	$ra
    addiu	$v0,$v0,17016
.L0f0e432c:
    # Line 278
    move	$v0,$zero
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e433c:
    # Line 281
    la	$t9,sub_0f0e0000
    sd	$ra,8($sp)
    addiu	$t9,$t9,22228
    bal _GLInitExtInput
    nop
    lw	$a3,-20704($gp)
    b	.L0f0e42d4
    ld	$ra,8($sp)
.end findListedDevFromType

# Function: findListedDev
# Declared: Line 295 (Source lines: 299-304)
# Address: 0x0f0e435c - 0x0f0e43e0 (Size: 132 bytes, Frame: 192)
.ent findListedDev
findListedDev:
    # Line 299
    move	$v0,$a2
    addiu	$sp,$sp,-64
    lw	$at,-20704($gp)
    sd	$ra,8($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0e43c8
    move	$s8,$a1
.L0f0e4378:
    # Line 303
    la	$t9,sub_0f0e0000
    move	$a0,$s8
    move	$a1,$v0
    addiu	$t9,$t9,16604
    bal _GLdevname
    move	$a2,$zero
    move	$a0,$v0
    ld	$s8,0($sp)
    li	$at,-1
    beq	$v0,$at,.L0f0e43c0
    ld	$ra,8($sp)
    # Line 304
    la	$v1,sub_0f030000
    addiu	$v1,$v1,3560
    sll	$v0,$a0,0x5
    addu	$v0,$v0,$v1
    addiu	$v0,$v0,17016
.L0f0e43b8:
    jr	$ra
    addiu	$sp,$sp,64
.L0f0e43c0:
    b	.L0f0e43b8
    move	$v0,$zero
.L0f0e43c8:
    # Line 302
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,22228
    bal _GLInitExtInput
    sd	$v0,16($sp)
    b	.L0f0e4378
    ld	$v0,16($sp)
.end findListedDev

# Function: _GLGetDevType
# Declared: Line 311 (Source lines: 314-322)
# Address: 0x0f0e43e0 - 0x0f0e449c (Size: 188 bytes, Frame: 192)
.globl _GLGetDevType
.ent _GLGetDevType
_GLGetDevType:
    # Line 314
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    move	$s0,$a1
    # Line 315
    li	$a1,7
    sd	$gp,0($sp)
    sd	$ra,8($sp)
    # Line 314
    lui	$ra,0xfff5
    addiu	$ra,$ra,-4504
    addu	$gp,$t9,$ra
    # Line 315
    la	$t9,sub_0f0e0000
    sd	$s1,16($sp)
    # Line 314
    move	$s1,$a2
    # Line 315
    addiu	$t9,$t9,16604
    bal _GLdevname
    # Line 314
    move	$a2,$a3
    # Line 315
    li	$at,-1
    beq	$v0,$at,.L0f0e4480
    # Line 317
    sll	$a1,$v0,0x2
    # Line 322
    ld	$ra,8($sp)
    # Line 317
    la	$a2,sub_0f030000
    subu	$a1,$a1,$v0
    sll	$a1,$a1,0x2
    subu	$a1,$a1,$v0
    addiu	$a2,$a2,3560
    sll	$a1,$a1,0x2
    beqz	$s0,.L0f0e4454
    addu	$a1,$a1,$a2
    # Line 319
    lh	$a3,16730($a1)
    sw	$a3,0($s0)
.L0f0e4454:
    beqz	$s1,.L0f0e446c
    # Line 322
    ld	$s0,24($sp)
    # Line 321
    sll	$at,$v0,0x5
    addu	$at,$at,$a2
    lbu	$at,17026($at)
    sw	$at,0($s1)
.L0f0e446c:
    # Line 322
    lw	$v0,16712($a1)
    ld	$gp,0($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0e4480:
    # Line 317
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$ra,8($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end _GLGetDevType

# Function: _GLExtDevExists
# Declared: Line 329 (Source lines: 330-332)
# Address: 0x0f0e449c - 0x0f0e4508 (Size: 108 bytes, Frame: 48)
.globl _GLExtDevExists
.ent _GLExtDevExists
_GLExtDevExists:
    # Line 330
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-4692 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 331
    la	$t9,_GLinitgl
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 330
    move	$s8,$a0
    # Line 332
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    la	$t9,sub_0f0e0000
    move	$a1,$s8
    lw	$a0,28($a0)
    addiu	$t9,$t9,17084
    bal _GLdevname
    lw	$a0,4($a0)
    ld	$s8,8($sp)
    beqz	$v0,.L0f0e44f8
    ld	$ra,0($sp)
    b	.L0f0e44fc
    li	$v0,1
.L0f0e44f8:
    move	$v0,$zero
.L0f0e44fc:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLExtDevExists

# Function: _GLExtDialsExist
# Declared: Line 338 (Source lines: 339-340)
# Address: 0x0f0e4508 - 0x0f0e453c (Size: 52 bytes, Frame: 16)
.globl _GLExtDialsExist
.ent _GLExtDialsExist
_GLExtDialsExist:
    # Line 339
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-4800 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 340
    la	$t9,_GLExtDevExists
    sd	$ra,0($sp)
    bal _GLExtDevExists
    li	$a0,1
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end _GLExtDialsExist

# Function: initCoreButtons
# Declared: Line 343 (Source lines: 344-355)
# Address: 0x0f0e453c - 0x0f0e45f0 (Size: 180 bytes, Frame: 208)
.ent initCoreButtons
initCoreButtons:
    # Line 344
    addiu	$sp,$sp,-80
    sd	$s3,0($sp)
    # Line 347
    lh	$a1,24($a0)
    # Line 344
    move	$s3,$a0
    sd	$s4,8($sp)
    # Line 347
    slti	$at,$a1,5
    beqz	$at,.L0f0e4568
    lw	$s4,28($a0)
    sd	$s2,16($sp)
    # Line 348
    b	.L0f0e4570
    move	$a0,$a1
.L0f0e4568:
    sd	$s2,16($sp)
    li	$a0,5
.L0f0e4570:
    sd	$s0,40($sp)
    la	$s2,sub_0f030000
    sd	$s1,32($sp)
    sd	$s5,24($sp)
    addiu	$s2,$s2,3560
    # Line 352
    sh	$a0,17316($s2)
    # Line 351
    addiu	$v0,$s2,17240
    # Line 352
    blez	$a0,.L0f0e45dc
    # Line 351
    sw	$v0,17320($s2)
    sd	$ra,48($sp)
    # Line 352
    addiu	$s5,$a0,1
    li	$s0,1
    move	$s1,$zero
.L0f0e45a4:
    # Line 354
    move	$a0,$s3
    move	$a1,$s0
    jalr	$s4
    move	$t9,$s4
    # Line 353
    addiu	$s0,$s0,1
    # Line 354
    lw	$at,17320($s2)
    addu	$at,$at,$s1
    # Line 353
    addiu	$s1,$s1,2
    bne	$s0,$s5,.L0f0e45a4
    # Line 354
    sh	$v0,0($at)
    ld	$s5,24($sp)
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    ld	$ra,48($sp)
.L0f0e45dc:
    # Line 355
    ld	$s2,16($sp)
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end initCoreButtons

# Function: _GLFindCoreDevice
# Declared: Line 360 (Source lines: 361-428)
# Address: 0x0f0e45f0 - 0x0f0e47fc (Size: 524 bytes, Frame: 224)
.globl _GLFindCoreDevice
.ent _GLFindCoreDevice
_GLFindCoreDevice:
    # Line 365
    li	$v0,5
    # Line 361
    addiu	$sp,$sp,-96
    sd	$s2,40($sp)
    sd	$s6,32($sp)
    sd	$s4,8($sp)
    sd	$gp,24($sp)
    sd	$s7,16($sp)
    lui	$s7,0xfff5
    addiu	$s7,$s7,-5032
    addu	$gp,$t9,$s7
    # Line 365
    la	$s4,gl_sstatep
    # Line 361
    la	$s6,sub_0f030000
    # Line 362
    move	$s2,$zero
    # Line 365
    lw	$s4,0($s4)
    # Line 361
    addiu	$s6,$s6,3560
    # Line 365
    lw	$at,17304($s6)
    lw	$s4,28($s4)
    addiu	$s7,$s6,17304
    beq	$at,$v0,.L0f0e47b4
    lw	$s4,4($s4)
    # Line 368
    lw	$at,-20700($gp)
    beqz	$at,.L0f0e47d4
    # Line 373
    la	$t9,sub_0f0e0000
.L0f0e464c:
    sd	$s3,80($sp)
    sd	$s5,72($sp)
    sd	$s1,56($sp)
    # Line 375
    lw	$v0,-20704($gp)
    move	$s1,$zero
    sd	$s0,48($sp)
    blez	$v0,.L0f0e46e0
    addiu	$s0,$s6,17016
    sd	$ra,64($sp)
    la	$s5,sub_0f0e0000
    li	$s3,2
    b	.L0f0e4690
    addiu	$s5,$s5,22744
.L0f0e4680:
    # Line 381
    sw	$s0,0($sp)
.L0f0e4684:
    # Line 375
    slt	$at,$s1,$v0
    beqz	$at,.L0f0e46d4
    addiu	$s0,$s0,32
.L0f0e4690:
    lw	$v1,12($s0)
    beqz	$v1,.L0f0e4684
    addiu	$s1,$s1,1
    lw	$a2,0($s0)
    lw	$a2,16($a2)
    beq	$a2,$s3,.L0f0e46c0
    # Line 378
    move	$a0,$s0
    lbu	$a3,8($s0)
.L0f0e46b0:
    beqz	$a3,.L0f0e4684
    # Line 381
    lw	$v0,-20704($gp)
    b	.L0f0e4680
    # Line 380
    addiu	$s2,$s2,1
.L0f0e46c0:
    # Line 378
    move	$a1,$s4
    bal _GLInitExtInput
    move	$t9,$s5
    b	.L0f0e46b0
    lbu	$a3,8($s0)
.L0f0e46d4:
    ld	$ra,64($sp)
    ld	$s5,72($sp)
    ld	$s3,80($sp)
.L0f0e46e0:
    ld	$s0,48($sp)
    # Line 375
    slti	$at,$s2,2
    beqz	$at,.L0f0e4738
    ld	$s1,56($sp)
    # Line 395
    li	$s4,1
    beq	$s2,$s4,.L0f0e4754
    # Line 426
    la	$v1,sub_0f030000
    addiu	$v1,$v1,-26920
    ld	$a3,16($v1)
    ld	$a2,8($v1)
    ld	$v1,0($v1)
    sd	$a3,17320($s6)
    sd	$a2,17312($s6)
    sd	$v1,17304($s6)
.L0f0e4718:
    ld	$gp,24($sp)
    # Line 428
    ld	$s2,40($sp)
    ld	$s4,8($sp)
    ld	$s6,32($sp)
    move	$v0,$s7
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e4738:
    # Line 395
    li	$a2,3
    # Line 394
    sw	$zero,17304($s6)
    # Line 393
    sh	$zero,17316($s6)
    # Line 392
    sh	$zero,17308($s6)
    sh	$zero,17310($s6)
    # Line 395
    b	.L0f0e4718
    sw	$a2,17324($s6)
.L0f0e4754:
    # Line 403
    lw	$s2,0($sp)
    lw	$a3,28($s2)
    # Line 405
    la	$t9,sub_0f0e0000
    # Line 403
    lhu	$a3,20($a3)
    sd	$ra,64($sp)
    # Line 405
    addiu	$t9,$t9,17724
    # Line 403
    sh	$a3,17308($s6)
    # Line 404
    addiu	$a3,$a3,1
    sh	$a3,17310($s6)
    # Line 405
    bal _GLExtDialsExist
    lw	$a0,28($s2)
    # Line 406
    lw	$a2,28($s2)
    lw	$a2,8($a2)
    sw	$a2,17304($s6)
    # Line 407
    lw	$v0,28($s2)
    lw	$at,8($v0)
    li	$v1,4
    beq	$at,$v1,.L0f0e47f4
    ld	$ra,64($sp)
    lh	$a3,26($v0)
    beqz	$a3,.L0f0e47f4
    nop
    b	.L0f0e4718
    # Line 418
    sw	$zero,17324($s6)
.L0f0e47b4:
    ld	$gp,24($sp)
    # Line 368
    ld	$s2,40($sp)
    ld	$s4,8($sp)
    ld	$s6,32($sp)
    move	$v0,$s7
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e47d4:
    sd	$ra,64($sp)
    # Line 373
    addiu	$t9,$t9,18428
    bal _GLFindCoreDevice
    move	$a0,$s4
    sd	$s0,48($sp)
    sd	$s1,56($sp)
    b	.L0f0e464c
    ld	$ra,64($sp)
.L0f0e47f4:
    # Line 412
    b	.L0f0e4718
    sw	$s4,17324($s6)
.end _GLFindCoreDevice

# Function: findPushPointerDevs
# Declared: Line 434 (Source lines: 435-464)
# Address: 0x0f0e47fc - 0x0f0e4994 (Size: 408 bytes, Frame: 240)
.ent findPushPointerDevs
findPushPointerDevs:
    # Line 435
    lw	$a1,-20704($gp)
    addiu	$sp,$sp,-112
    sd	$s6,32($sp)
    beqz	$a1,.L0f0e495c
    move	$s6,$a0
.L0f0e4810:
    sd	$s1,48($sp)
    # Line 443
    move	$s1,$zero
    sd	$s2,24($sp)
    sd	$s0,40($sp)
    la	$s0,sub_0f030000
    blez	$a1,.L0f0e4984
    addiu	$s0,$s0,20576
    li	$s2,1
    sd	$ra,56($sp)
    sd	$s4,72($sp)
    li	$s4,2
    sd	$s3,64($sp)
    sd	$s5,80($sp)
    la	$s5,sub_0f0e0000
    li	$s3,-1
    b	.L0f0e4894
    addiu	$s5,$s5,22744
.L0f0e4854:
    # Line 449
    addiu	$a1,$gp,-17736
    jalr	$t9
    addiu	$a0,$sp,0
    beqz	$v0,.L0f0e4908
    la	$t9,strcmp
    la	$a1,sub_0f020000
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,15712
    beqzl	$v0,.L0f0e490c
    # Line 455
    sb	$s2,9($s0)
    # Line 461
    sw	$zero,12($s0)
.L0f0e4884:
    # Line 449
    lw	$a1,-20704($gp)
.L0f0e4888:
    # Line 443
    slt	$a2,$s1,$a1
    beqz	$a2,.L0f0e4930
    addiu	$s0,$s0,32
.L0f0e4894:
    lw	$a0,0($s0)
    lw	$a0,16($a0)
    # Line 448
    lw	$a2,-20696($gp)
    # Line 443
    beqz	$a0,.L0f0e48f4
    addiu	$s1,$s1,1
    # Line 448
    beqz	$a2,.L0f0e48e4
    nop
    b	.L0f0e4884
    # Line 461
    sw	$zero,12($s0)
.L0f0e48b8:
    # Line 449
    move	$a0,$s6
    addiu	$a3,$sp,0
    la	$t9,XSGIDeviceQuery
    la	$a2,sub_0f020000
    lw	$a1,24($s0)
    jalr	$t9
    addiu	$a2,$a2,15696
    beqzl	$v0,.L0f0e4884
    # Line 461
    sw	$zero,12($s0)
    b	.L0f0e4854
    # Line 449
    la	$t9,strcmp
.L0f0e48e4:
    # Line 448
    bnel	$a0,$s4,.L0f0e4884
    # Line 461
    sw	$zero,12($s0)
    b	.L0f0e48b8
    # Line 449
    li	$a0,1
.L0f0e48f4:
    # Line 448
    sb	$s2,9($s0)
    # Line 447
    sh	$s3,20($s0)
    sh	$s3,22($s0)
    # Line 448
    b	.L0f0e4888
    # Line 446
    sw	$s2,12($s0)
.L0f0e4908:
    # Line 455
    sb	$s2,9($s0)
.L0f0e490c:
    # Line 454
    sh	$s3,20($s0)
    sh	$s3,22($s0)
    # Line 453
    sw	$s2,12($s0)
    # Line 459
    move	$a0,$s0
    move	$a1,$s6
    bal _GLInitExtInput
    move	$t9,$s5
    b	.L0f0e4888
    # Line 449
    lw	$a1,-20704($gp)
.L0f0e4930:
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s5,80($sp)
    ld	$s4,72($sp)
    ld	$ra,56($sp)
    ld	$s3,64($sp)
.L0f0e4948:
    # Line 463
    sw	$s2,-20700($gp)
    # Line 464
    ld	$s2,24($sp)
    ld	$s6,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e495c:
    # Line 441
    la	$t9,sub_0f0e0000
    sd	$ra,56($sp)
    addiu	$t9,$t9,22228
    bal _GLInitExtInput
    move	$a0,$s6
    sd	$s0,40($sp)
    sd	$s1,48($sp)
    lw	$a1,-20704($gp)
    b	.L0f0e4810
    ld	$ra,56($sp)
.L0f0e4984:
    # Line 443
    li	$s2,1
    ld	$s0,40($sp)
    b	.L0f0e4948
    ld	$s1,48($sp)
.end findPushPointerDevs

# Function: countPushPointers
# Declared: Line 470 (Source lines: 472-481)
# Address: 0x0f0e4994 - 0x0f0e4a1c (Size: 136 bytes, Frame: 0)
.ent countPushPointers
countPushPointers:
    # Line 472
    move	$v0,$zero
    # Line 475
    lw	$a5,-20704($gp)
    move	$a4,$zero
    la	$a3,sub_0f030000
    move	$a6,$a5
    blez	$a5,.L0f0e49e0
    addiu	$a3,$a3,20576
    andi	$at,$a5,0x1
    beqz	$at,.L0f0e49d8
    sra	$a1,$a6,0x1
    lw	$v1,12($a3)
    beqz	$v1,.L0f0e49d0
    addiu	$a4,$a4,1
    # Line 478
    sw	$a3,0($a0)
    # Line 477
    addiu	$v0,$v0,1
.L0f0e49d0:
    # Line 475
    addiu	$a3,$a3,32
    sra	$a1,$a6,0x1
.L0f0e49d8:
    bnezl	$a1,.L0f0e4a08
    lw	$at,12($a3)
.L0f0e49e0:
    # Line 481
    jr	$ra
    nop
.L0f0e49e8:
    # Line 475
    lw	$a2,44($a3)
    beqz	$a2,.L0f0e49fc
    addiu	$a3,$a3,32
    # Line 478
    sw	$a3,0($a0)
    # Line 477
    addiu	$v0,$v0,1
.L0f0e49fc:
    # Line 475
    beq	$a4,$a5,.L0f0e49e0
    addiu	$a3,$a3,32
    lw	$at,12($a3)
.L0f0e4a08:
    beqz	$at,.L0f0e49e8
    addiu	$a4,$a4,2
    # Line 478
    sw	$a3,0($a0)
    b	.L0f0e49e8
    # Line 477
    addiu	$v0,$v0,1
.end countPushPointers

# Function: _GLExtChangePtrDev
# Declared: Line 487 (Source lines: 488-626)
# Address: 0x0f0e4a1c - 0x0f0e4fe8 (Size: 1484 bytes, Frame: 144)
.globl _GLExtChangePtrDev
.ent _GLExtChangePtrDev
_GLExtChangePtrDev:
    # Line 488
    addiu	$sp,$sp,-144
    sd	$s1,72($sp)
    move	$s1,$a2
    sd	$gp,64($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,-6100 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20700($gp)
    sd	$s0,80($sp)
    move	$s0,$a1
    beqz	$at,.L0f0e4c8c
    sd	$a0,40($sp)
.L0f0e4a4c:
    # Line 501
    li	$v0,274
    beq	$v0,$s0,.L0f0e4bfc
    li	$v1,275
    beq	$s1,$v1,.L0f0e4bf4
    nop
    # Line 531
    la	$v0,sub_0f030000
    addiu	$v0,$v0,3560
    lw	$a4,17304($v0)
    li	$a5,5
    bne	$a4,$a5,.L0f0e4aac
    lw	$v1,17324($v0)
    li	$a4,2
    beq	$v1,$a4,.L0f0e4aac
    sd	$ra,88($sp)
    # Line 537
    la	$t9,_GLFindCoreDevice
    bal _GLFindCoreDevice
    # Line 536
    sw	$zero,17304($v0)
    # Line 538
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$ra,88($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4aac:
    ld	$a0,40($sp)
    # Line 541
    la	$t9,sub_0f0e0000
    move	$a1,$s0
    sd	$ra,88($sp)
    addiu	$t9,$t9,17244
    bal _GLdevname
    li	$a2,2
    move	$a2,$v0
    # Line 542
    beqz	$v0,.L0f0e4ae4
    ld	$ra,88($sp)
    li	$v1,2
    lw	$at,0($v0)
    lw	$at,16($at)
    beq	$at,$v1,.L0f0e4ca8
.L0f0e4ae4:
    li	$a3,1
.L0f0e4ae8:
    la	$a4,sub_0f030000
    bnezl	$a3,.L0f0e4be0
    # Line 544
    move	$v0,$zero
    # Line 542
    lw	$v0,28($v0)
    beqz	$v0,.L0f0e4bdc
    la	$v1,sub_0f030000
    addiu	$v1,$v1,3560
    lhu	$v1,17308($v1)
    bne	$v1,$s0,.L0f0e4b34
    addiu	$a4,$a4,3560
    lhu	$a4,17310($a4)
    bnel	$a4,$s1,.L0f0e4b38
    # Line 551
    lhu	$a3,20($v0)
    # Line 546
    lw	$a3,12($a2)
    li	$a5,1
    beq	$a3,$a5,.L0f0e4f10
    li	$at,2
    beql	$a3,$at,.L0f0e4f14
    # Line 549
    move	$v0,$zero
.L0f0e4b34:
    # Line 551
    lhu	$a3,20($v0)
.L0f0e4b38:
    # Line 557
    slt	$v1,$s1,$a3
    bnez	$v1,.L0f0e4c20
    # Line 552
    lh	$a6,18($v0)
    sd	$a2,32($sp)
    # Line 557
    addu	$a4,$a6,$a3
    andi	$a4,$a4,0xffff
    slt	$a4,$s1,$a4
    beqz	$a4,.L0f0e4c20
    sd	$a3,56($sp)
    # Line 559
    la	$t9,sub_0f0e0000
    ld	$a0,32($sp)
    addiu	$t9,$t9,22744
    bal _GLInitExtInput
    ld	$a1,40($sp)
    beqz	$v0,.L0f0e4e10
    ld	$ra,88($sp)
    # Line 562
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,18836
    bal _GLFindCoreDevice
    addiu	$a0,$sp,0
    ld	$a2,56($sp)
    lw	$at,-20696($gp)
    move	$a1,$v0
    subu	$a3,$s1,$a2
    beqz	$at,.L0f0e4cb0
    subu	$a2,$s0,$a2
    sd	$a1,24($sp)
    ld	$s0,40($sp)
    # Line 569
    la	$t9,XChangePointerDevice
    ld	$s1,32($sp)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,4($s1)
    beqz	$v0,.L0f0e4ea8
    ld	$ra,88($sp)
    # Line 571
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4bdc:
    # Line 544
    move	$v0,$zero
.L0f0e4be0:
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4bf4:
    # Line 502
    bnel	$v0,$s0,.L0f0e4c0c
    # Line 507
    move	$v0,$zero
.L0f0e4bfc:
    # Line 502
    li	$a1,275
    beq	$a1,$s1,.L0f0e4c38
    # Line 507
    la	$a4,sub_0f030000
    move	$v0,$zero
.L0f0e4c0c:
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4c20:
    # Line 558
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4c38:
    la	$v1,sub_0f030000
    # Line 507
    addiu	$a4,$a4,3560
    lw	$a4,17304($a4)
    li	$a0,5
    addiu	$v1,$v1,3560
    beq	$a4,$a0,.L0f0e4ef8
    # Line 512
    lhu	$at,17308($v1)
    # Line 513
    lhu	$a4,17310($v1)
    # Line 515
    sh	$a1,17310($v1)
    # Line 514
    sh	$v0,17308($v1)
    # Line 515
    lw	$a5,-20696($gp)
    # Line 511
    sw	$a0,17304($v1)
    # Line 512
    sh	$at,17312($v1)
    # Line 515
    beqz	$a5,.L0f0e4e28
    # Line 513
    sh	$a4,17314($v1)
.L0f0e4c74:
    # Line 531
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4c8c:
    # Line 499
    la	$t9,sub_0f0e0000
    sd	$ra,88($sp)
    addiu	$t9,$t9,18428
    bal _GLFindCoreDevice
    ld	$a0,40($sp)
    b	.L0f0e4a4c
    ld	$ra,88($sp)
.L0f0e4ca8:
    b	.L0f0e4ae8
    # Line 542
    move	$a3,$zero
.L0f0e4cb0:
    la	$v1,sub_0f030000
    # Line 596
    ld	$s0,32($sp)
    addiu	$v1,$v1,3560
    # Line 586
    sw	$zero,17304($v1)
    # Line 596
    lh	$at,20($s0)
    bnel	$at,$a2,.L0f0e4ce0
    sd	$a2,48($sp)
    lh	$a4,22($s0)
    sd	$a2,48($sp)
    beq	$a4,$a3,.L0f0e4d50
    sd	$a3,96($sp)
    sd	$a2,48($sp)
.L0f0e4ce0:
    sd	$a3,96($sp)
    sd	$a1,24($sp)
    # Line 597
    la	$t9,sprintf
    addiu	$a1,$gp,-17720
    addiu	$a0,$sp,8
    jalr	$t9
    move	$s1,$a3
    # Line 598
    la	$t9,sprintf
    move	$a2,$s1
    addiu	$a1,$gp,-17720
    jalr	$t9
    addiu	$a0,$sp,16
    ld	$a0,40($sp)
    # Line 599
    la	$t9,XSGIDeviceControl
    addiu	$a3,$sp,8
    addiu	$a2,$gp,-17712
    jalr	$t9
    lw	$a1,24($s0)
    ld	$a0,40($sp)
    # Line 600
    la	$t9,XSGIDeviceControl
    addiu	$a3,$sp,16
    addiu	$a2,$gp,-17704
    jalr	$t9
    lw	$a1,24($s0)
    # Line 601
    ld	$a5,48($sp)
    # Line 602
    sh	$s1,22($s0)
    ld	$a1,24($sp)
    # Line 601
    sh	$a5,20($s0)
.L0f0e4d50:
    # Line 602
    lbu	$at,9($s0)
    beqzl	$at,.L0f0e4f30
    lw	$a4,28($s0)
    b	.L0f0e4f28
    nop
.L0f0e4d64:
    # Line 604
    la	$t9,strcmp
    lw	$a0,28($s0)
    addiu	$a1,$gp,-17696
    jalr	$t9
    lw	$a0,0($a0)
    li	$s1,1
    beqz	$v0,.L0f0e4fc0
    ld	$a1,24($sp)
.L0f0e4d84:
    beq	$a1,$s1,.L0f0e4f48
    # Line 615
    la	$s1,sub_0f020000
    addiu	$s1,$s1,15616
.L0f0e4d90:
    lw	$at,12($s0)
    li	$v1,2
    beq	$at,$v1,.L0f0e4dec
    # Line 625
    la	$t9,XFlush
    # Line 621
    lw	$a1,24($s0)
    ld	$a0,40($sp)
    addiu	$s1,$gp,-17736
    la	$t9,XSGIDeviceControl
    la	$a2,sub_0f020000
    move	$a3,$s1
    jalr	$t9
    addiu	$a2,$a2,15728
    # Line 622
    ld	$a0,40($sp)
    move	$a3,$s1
    la	$a2,sub_0f020000
    la	$t9,XSGIDeviceControl
    lw	$a1,24($s0)
    addiu	$a2,$a2,15616
    jalr	$t9
    addiu	$a2,$a2,80
    li	$a4,2
    # Line 623
    sw	$a4,12($s0)
    # Line 625
    la	$t9,XFlush
.L0f0e4dec:
    jalr	$t9
    ld	$a0,40($sp)
    # Line 626
    li	$v0,1
    ld	$gp,64($sp)
    ld	$ra,88($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4e10:
    # Line 560
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4e28:
    # Line 517
    la	$t9,sub_0f0e0000
    sd	$ra,88($sp)
    addiu	$t9,$t9,18836
    bal _GLFindCoreDevice
    addiu	$a0,$sp,0
    li	$at,1
    bne	$v0,$at,.L0f0e4c74
    ld	$ra,88($sp)
    ld	$a0,40($sp)
    # Line 519
    addiu	$a3,$gp,-17728
    la	$a2,sub_0f020000
    la	$t9,XSGIDeviceControl
    lw	$a1,0($sp)
    addiu	$a2,$a2,15696
    jalr	$t9
    lw	$a1,24($a1)
    # Line 521
    la	$t9,XFlush
    # Line 520
    lw	$a3,0($sp)
    # Line 521
    ld	$a0,40($sp)
    jalr	$t9
    # Line 520
    sw	$zero,12($a3)
    # Line 528
    li	$v0,1
    la	$a5,sub_0f030000
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    ld	$ra,88($sp)
    addiu	$sp,$sp,144
    # Line 527
    li	$a4,2
    addiu	$a5,$a5,3560
    # Line 528
    jr	$ra
    # Line 527
    sw	$a4,17324($a5)
.L0f0e4ea8:
    # Line 571
    ld	$at,24($sp)
    li	$v1,1
    beq	$at,$v1,.L0f0e4f5c
    lw	$v0,0($sp)
.L0f0e4eb8:
    # Line 577
    lw	$a3,28($s1)
.L0f0e4ebc:
    sh	$zero,26($a3)
    # Line 579
    move	$a0,$s0
    # Line 577
    lw	$a2,0($s1)
    # Line 579
    la	$t9,XFlush
    li	$a1,2
    # Line 577
    sw	$zero,16($a2)
    # Line 579
    jalr	$t9
    # Line 578
    sw	$a1,12($s1)
    # Line 580
    li	$v0,1
    ld	$gp,64($sp)
    ld	$ra,88($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4ef8:
    # Line 510
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4f10:
    # Line 549
    move	$v0,$zero
.L0f0e4f14:
    ld	$gp,64($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0e4f28:
    b	.L0f0e4d84
    # Line 608
    li	$s1,1
.L0f0e4f30:
    # Line 602
    lw	$a4,32($a4)
    bnez	$a4,.L0f0e4f28
    nop
    sd	$a1,24($sp)
    b	.L0f0e4d64
    # Line 604
    li	$v0,1
.L0f0e4f48:
    lw	$v0,0($sp)
    bne	$s0,$v0,.L0f0e4f94
    # Line 615
    la	$s1,sub_0f020000
    b	.L0f0e4d90
    addiu	$s1,$s1,15616
.L0f0e4f5c:
    # Line 571
    lw	$v0,28($v0)
    lh	$at,26($v0)
    bnezl	$at,.L0f0e4ebc
    # Line 577
    lw	$a3,28($s1)
    li	$a5,2
    # Line 573
    sh	$a5,26($v0)
    lw	$at,0($sp)
    lw	$at,0($at)
    sw	$a5,16($at)
    # Line 574
    lw	$a4,0($sp)
    sw	$zero,12($a4)
    # Line 575
    lw	$v1,0($sp)
    b	.L0f0e4eb8
    sb	$zero,10($v1)
.L0f0e4f94:
    # Line 614
    addiu	$a3,$gp,-17728
    lw	$a1,24($v0)
    # Line 610
    la	$s1,sub_0f020000
    # Line 614
    la	$t9,XSGIDeviceControl
    ld	$a0,40($sp)
    # Line 610
    addiu	$s1,$s1,15616
    # Line 614
    jalr	$t9
    addiu	$a2,$s1,80
    # Line 615
    lw	$at,0($sp)
    b	.L0f0e4d90
    sw	$zero,12($at)
.L0f0e4fc0:
    ld	$a0,40($sp)
    # Line 607
    addiu	$a2,$gp,-17688
    la	$t9,XSGIDeviceControl
    la	$a3,_GLtabletScale
    lw	$a1,24($s0)
    jalr	$t9
    lw	$a3,0($a3)
    # Line 608
    sb	$s1,9($s0)
    b	.L0f0e4d84
    ld	$a1,24($sp)
.end _GLExtChangePtrDev

# Function: select_dev_win
# Declared: Line 629 (Source lines: 630-659)
# Address: 0x0f0e4fe8 - 0x0f0e503c (Size: 84 bytes, Frame: 32)
.ent select_dev_win
select_dev_win:
    # Line 630
    addiu	$sp,$sp,-32
    lbu	$at,44($a0)
    move	$a5,$a0
    li	$v0,1
    bne	$at,$v0,.L0f0e5008
    move	$a6,$a1
    # Line 635
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e5008:
    # Line 657
    la	$a0,gl_sstatep
    lw	$a3,0($a6)
    addiu	$a2,$a6,4
    lw	$a0,0($a0)
    lw	$a1,64($a5)
    la	$t9,XSelectExtensionEvent
    lw	$a0,28($a0)
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,0($sp)
    # Line 659
    jr	$ra
    addiu	$sp,$sp,32
.end select_dev_win

# Function: _GLSelectExtDevs
# Declared: Line 740 (Source lines: 741-782)
# Address: 0x0f0e503c - 0x0f0e51d0 (Size: 404 bytes, Frame: 176)
.globl _GLSelectExtDevs
.ent _GLSelectExtDevs
_GLSelectExtDevs:
    # Line 741
    addiu	$sp,$sp,-176
    sd	$s2,152($sp)
    sd	$s4,128($sp)
    sd	$s6,144($sp)
    sd	$s1,72($sp)
    # Line 747
    move	$s1,$zero
    sd	$s3,96($sp)
    # Line 741
    move	$s3,$a0
    sd	$s0,80($sp)
    sd	$gp,88($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-7668 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 744
    la	$at,gl_sstatep
    sd	$s8,64($sp)
    # Line 741
    la	$s8,sub_0f030000
    # Line 744
    lw	$at,0($at)
    # Line 747
    lw	$a1,-20704($gp)
    # Line 741
    addiu	$s8,$s8,3560
    # Line 744
    lw	$at,28($at)
    # Line 747
    addiu	$s0,$s8,17016
    blez	$a1,.L0f0e51b4
    sd	$at,104($sp)
    sd	$ra,136($sp)
    sd	$s5,120($sp)
    sd	$s7,112($sp)
    li	$s2,2
    la	$s6,sub_0f0e0000
    li	$s4,1
    b	.L0f0e50e4
    addiu	$s6,$s6,20456
.L0f0e50b8:
    # Line 755
    lw	$a1,4($s0)
.L0f0e50bc:
    beqzl	$a1,.L0f0e50d8
    lw	$a1,-20704($gp)
    lw	$at,0($s0)
    lw	$at,16($at)
    beq	$at,$s2,.L0f0e5114
    nop
    lw	$a1,-20704($gp)
.L0f0e50d8:
    # Line 747
    slt	$v0,$s1,$a1
.L0f0e50dc:
    beqz	$v0,.L0f0e519c
    addiu	$s0,$s0,32
.L0f0e50e4:
    # Line 754
    lw	$a0,16($s0)
    ld	$s5,104($sp)
    # Line 755
    beq	$a0,$s4,.L0f0e50b8
    # Line 747
    addiu	$s1,$s1,1
    # Line 755
    beql	$a0,$s2,.L0f0e50bc
    lw	$a1,4($s0)
    beqz	$s3,.L0f0e50dc
    # Line 747
    slt	$v0,$s1,$a1
    # Line 755
    beqz	$a0,.L0f0e50d8
    lw	$a1,-20704($gp)
    b	.L0f0e50bc
    lw	$a1,4($s0)
.L0f0e5114:
    beq	$a0,$s2,.L0f0e5168
    # Line 766
    addiu	$s7,$sp,0
    li	$at,3
    # Line 769
    lw	$s7,0($a1)
    # Line 770
    sw	$at,16($s0)
    # Line 769
    sll	$s7,$s7,0x6
    # Line 770
    bnez	$s3,.L0f0e5184
    # Line 769
    addu	$s7,$s7,$s8
.L0f0e5134:
    # Line 777
    lw	$s5,0($s5)
    lw	$s5,20($s5)
    beqz	$s5,.L0f0e50d8
    # Line 755
    lw	$a1,-20704($gp)
    # Line 778
    move	$a0,$s5
.L0f0e5148:
    move	$a1,$s7
    bal _GLExtChangePtrDev
    move	$t9,$s6
    # Line 777
    lw	$s5,0($s5)
    bnez	$s5,.L0f0e5148
    # Line 778
    move	$a0,$s5
    b	.L0f0e50d8
    # Line 755
    lw	$a1,-20704($gp)
.L0f0e5168:
    # Line 761
    sw	$s4,0($sp)
    # Line 765
    lw	$at,0($a1)
    # Line 767
    sw	$zero,16($s0)
    # Line 765
    sll	$at,$at,0x8
    ori	$at,$at,0x9
    # Line 770
    beqz	$s3,.L0f0e5134
    # Line 765
    sw	$at,4($sp)
.L0f0e5184:
    # Line 774
    move	$a0,$s3
    move	$a1,$s7
    bal _GLExtChangePtrDev
    move	$t9,$s6
    b	.L0f0e50d8
    # Line 755
    lw	$a1,-20704($gp)
.L0f0e519c:
    ld	$s7,112($sp)
    ld	$s5,120($sp)
    ld	$s4,128($sp)
    ld	$ra,136($sp)
    ld	$s6,144($sp)
    ld	$s2,152($sp)
.L0f0e51b4:
    ld	$gp,88($sp)
    # Line 782
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    ld	$s3,96($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end _GLSelectExtDevs

# Function: _GLExtMarkInterested
# Declared: Line 814 (Source lines: 815-826)
# Address: 0x0f0e51d0 - 0x0f0e5240 (Size: 112 bytes, Frame: 32)
.globl _GLExtMarkInterested
.ent _GLExtMarkInterested
_GLExtMarkInterested:
    # Line 815
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-8072 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    lw	$v0,-20688($gp)
    beqz	$v0,.L0f0e5214
    move	$a1,$a0
    lw	$v1,-20692($gp)
    bne	$v1,$a1,.L0f0e5218
    # Line 823
    la	$a0,gl_sstatep
.L0f0e51fc:
    beqz	$v0,.L0f0e5208
    # Line 825
    li	$a2,1
    sb	$a2,8($v0)
.L0f0e5208:
    ld	$gp,0($sp)
    # Line 826
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e5214:
    # Line 823
    la	$a0,gl_sstatep
.L0f0e5218:
    lw	$a0,0($a0)
    la	$t9,sub_0f0e0000
    sd	$ra,8($sp)
    lw	$a0,28($a0)
    addiu	$t9,$t9,17084
    bal _GLdevname
    lw	$a0,4($a0)
    sw	$v0,-20688($gp)
    b	.L0f0e51fc
    ld	$ra,8($sp)
.end _GLExtMarkInterested

# Function: _GLMarkExtDevsForSelection
# Declared: Line 834 (Source lines: 835-877)
# Address: 0x0f0e5240 - 0x0f0e53c0 (Size: 384 bytes, Frame: 224)
.globl _GLMarkExtDevsForSelection
.ent _GLMarkExtDevsForSelection
_GLMarkExtDevsForSelection:
    # Line 835
    addiu	$sp,$sp,-96
    sd	$s2,8($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,-8184 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 840
    la	$at,gl_sstatep
    # Line 843
    move	$s2,$zero
    sd	$s0,16($sp)
    # Line 840
    lw	$at,0($at)
    sd	$s1,24($sp)
    # Line 835
    la	$s1,sub_0f030000
    # Line 840
    lw	$at,28($at)
    # Line 843
    lw	$a0,-20704($gp)
    # Line 835
    addiu	$s1,$s1,3560
    # Line 840
    lw	$at,4($at)
    # Line 843
    addiu	$s0,$s1,17016
    blez	$a0,.L0f0e53a8
    sd	$at,0($sp)
    sd	$s6,64($sp)
    sd	$ra,56($sp)
    sd	$s5,48($sp)
    sd	$s8,40($sp)
    sd	$s3,72($sp)
    li	$s3,2
    sd	$s7,88($sp)
    sd	$s4,80($sp)
    la	$s4,sub_0f0e0000
    li	$s7,1
    b	.L0f0e52e0
    addiu	$s4,$s4,23788
.L0f0e52bc:
    # Line 855
    lbu	$at,8($s0)
.L0f0e52c0:
    beqz	$at,.L0f0e52d8
    # Line 843
    slt	$v1,$s2,$a0
    # Line 855
    lw	$v0,0($s0)
    lw	$v0,16($v0)
    beq	$v0,$s3,.L0f0e5320
.L0f0e52d4:
    # Line 843
    slt	$v1,$s2,$a0
.L0f0e52d8:
    beqz	$v1,.L0f0e538c
    addiu	$s0,$s0,32
.L0f0e52e0:
    # Line 844
    lw	$s5,28($s0)
    lw	$at,17304($s1)
    lw	$a2,8($s5)
    lw	$v0,17324($s1)
    bne	$a2,$at,.L0f0e52bc
    # Line 843
    addiu	$s2,$s2,1
    # Line 844
    bnel	$v0,$s7,.L0f0e52c0
    # Line 855
    lbu	$at,8($s0)
    # Line 846
    lw	$a1,16($s0)
    li	$v1,3
    beq	$a1,$v1,.L0f0e5384
    nop
    # Line 852
    bne	$a1,$s7,.L0f0e52d8
    # Line 843
    slt	$v1,$s2,$a0
    # Line 854
    b	.L0f0e52d4
    sw	$zero,16($s0)
.L0f0e5320:
    # Line 855
    lw	$a2,16($s0)
    bnez	$a2,.L0f0e52d8
    # Line 843
    slt	$v1,$s2,$a0
    la	$t9,sub_0f0e0000
    # Line 867
    move	$a0,$s0
    addiu	$t9,$t9,22744
    bal _GLInitExtInput
    ld	$a1,0($sp)
    beqz	$v0,.L0f0e537c
    nop
    # Line 868
    sw	$s7,16($s0)
    # Line 870
    lw	$s6,12($s5)
    beqz	$s6,.L0f0e537c
    # Line 869
    lh	$s8,18($s5)
    # Line 871
    blez	$s8,.L0f0e537c
    move	$s5,$zero
    # Line 872
    move	$a0,$s6
.L0f0e5364:
    # Line 871
    addiu	$s6,$s6,16
    # Line 872
    bal _GLInitExtInput
    move	$t9,$s4
    # Line 871
    addiu	$s5,$s5,1
    bne	$s8,$s5,.L0f0e5364
    # Line 872
    move	$a0,$s6
.L0f0e537c:
    b	.L0f0e52d4
    # Line 871
    lw	$a0,-20704($gp)
.L0f0e5384:
    # Line 852
    b	.L0f0e52d4
    sw	$s3,16($s0)
.L0f0e538c:
    ld	$s8,40($sp)
    ld	$s7,88($sp)
    ld	$s5,48($sp)
    ld	$s4,80($sp)
    ld	$ra,56($sp)
    ld	$s6,64($sp)
    ld	$s3,72($sp)
.L0f0e53a8:
    ld	$gp,32($sp)
    # Line 877
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end _GLMarkExtDevsForSelection

# Function: _GLExtDevNeedsSelection
# Declared: Line 880 (Source lines: 881-890)
# Address: 0x0f0e53c0 - 0x0f0e5430 (Size: 112 bytes, Frame: 0)
.globl _GLExtDevNeedsSelection
.ent _GLExtDevNeedsSelection
_GLExtDevNeedsSelection:
    # Line 884
    li	$a7,1
    # Line 881
    lui	$a3,0xfff5
    addiu	$a3,$a3,-8568
    addu	$at,$t9,$a3
    # Line 884
    lw	$a5,-20704($at)
    lw	$a2,-32676($at)
    move	$a3,$zero
    blez	$a5,.L0f0e5420
    addiu	$a2,$a2,20576
    b	.L0f0e5404
    li	$a6,2
.L0f0e53ec:
    # Line 886
    lw	$v0,0($a2)
.L0f0e53f0:
    lw	$v0,16($v0)
    beq	$v0,$a6,.L0f0e5428
    nop
.L0f0e53fc:
    # Line 884
    beq	$a3,$a5,.L0f0e5420
    addiu	$a2,$a2,32
.L0f0e5404:
    # Line 885
    lw	$a4,16($a2)
    # Line 886
    beq	$a4,$a7,.L0f0e53ec
    # Line 884
    addiu	$a3,$a3,1
    # Line 886
    bne	$a4,$a6,.L0f0e53fc
    nop
    b	.L0f0e53f0
    lw	$v0,0($a2)
.L0f0e5420:
    # Line 890
    jr	$ra
    move	$v0,$zero
.L0f0e5428:
    # Line 888
    jr	$ra
    li	$v0,1
.end _GLExtDevNeedsSelection

# Function: _GLExtGetDevNumbers
# Declared: Line 898 (Source lines: 901-919)
# Address: 0x0f0e5430 - 0x0f0e5540 (Size: 272 bytes, Frame: 128)
.globl _GLExtGetDevNumbers
.ent _GLExtGetDevNumbers
_GLExtGetDevNumbers:
    # Line 901
    addiu	$sp,$sp,-128
    sd	$a4,8($sp)
    sd	$a3,16($sp)
    sd	$ra,56($sp)
    sd	$gp,48($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-8680 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 907
    la	$ra,gl_sstatep
    sd	$a2,40($sp)
    sd	$a1,32($sp)
    lw	$ra,0($ra)
    la	$t9,sub_0f0e0000
    # Line 901
    move	$a1,$a0
    # Line 907
    lw	$a0,28($ra)
    addiu	$t9,$t9,17084
    bal _GLdevname
    lw	$a0,4($a0)
    # Line 908
    beqz	$v0,.L0f0e551c
    # Line 909
    ld	$ra,56($sp)
    # Line 908
    lw	$v0,28($v0)
    move	$v1,$v0
    beqz	$v0,.L0f0e5518
    sd	$v0,24($sp)
    # Line 910
    ld	$a3,32($sp)
    lhu	$a2,20($v0)
    sh	$a2,0($a3)
    # Line 911
    lh	$a0,18($v0)
    addu	$a0,$a0,$a2
    ld	$a2,40($sp)
    sh	$a0,0($a2)
    # Line 913
    lw	$t9,28($v0)
    # Line 914
    li	$a1,1
    move	$a0,$v0
    jalr	$t9
    sd	$t9,0($sp)
    andi	$a4,$v0,0xffff
    # Line 915
    ld	$t9,0($sp)
    ld	$a0,24($sp)
    sd	$a4,64($sp)
    jalr	$t9
    lh	$a1,24($a0)
    ld	$a2,64($sp)
    ld	$a1,16($sp)
    andi	$a3,$v0,0xffff
    slt	$a4,$a3,$a2
    beqz	$a4,.L0f0e552c
    ld	$a0,8($sp)
    # Line 917
    move	$v0,$a3
.L0f0e54f4:
    ld	$gp,48($sp)
    beqz	$a4,.L0f0e5538
    sh	$v0,0($a1)
    # Line 918
    addiu	$a1,$a2,1
.L0f0e5504:
    # Line 919
    ld	$ra,56($sp)
    li	$v0,1
    # Line 918
    sh	$a1,0($a0)
    # Line 919
    jr	$ra
    addiu	$sp,$sp,128
.L0f0e5518:
    # Line 909
    ld	$ra,56($sp)
.L0f0e551c:
    move	$v0,$zero
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0e552c:
    # Line 917
    move	$v0,$a2
    b	.L0f0e54f4
    nop
.L0f0e5538:
    b	.L0f0e5504
    # Line 918
    addiu	$a1,$a3,1
.end _GLExtGetDevNumbers

# Function: _GLExtCloseDev
# Declared: Line 922 (Source lines: 923-942)
# Address: 0x0f0e5540 - 0x0f0e5658 (Size: 280 bytes, Frame: 192)
.globl _GLExtCloseDev
.ent _GLExtCloseDev
_GLExtCloseDev:
    # Line 923
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,-8952 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 926
    la	$at,gl_sstatep
    lw	$at,0($at)
    # Line 923
    move	$a1,$a0
    # Line 926
    lw	$at,28($at)
    sd	$s0,24($sp)
    # Line 930
    la	$t9,sub_0f0e0000
    # Line 926
    lw	$at,4($at)
    sd	$ra,16($sp)
    # Line 930
    addiu	$t9,$t9,17084
    sd	$at,0($sp)
    bal _GLdevname
    move	$a0,$at
    move	$s0,$v0
    # Line 931
    beqz	$v0,.L0f0e562c
    # Line 930
    move	$a1,$v0
    # Line 931
    lw	$s0,28($s0)
    beqz	$s0,.L0f0e562c
    move	$v0,$s0
    lw	$v1,4($a1)
    bnez	$v1,.L0f0e5640
    # Line 935
    la	$t9,sub_0f0e0000
.L0f0e55a8:
    # Line 937
    lw	$a0,12($s0)
    # Line 942
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 937
    beqz	$a0,.L0f0e5624
    ld	$s0,24($sp)
    # Line 938
    lh	$a1,18($v0)
    # Line 939
    move	$a4,$zero
    ld	$s0,24($sp)
    blez	$a1,.L0f0e5624
    move	$a5,$a1
    andi	$v0,$a1,0x3
    beqz	$v0,.L0f0e55f4
    sra	$a2,$a5,0x2
.L0f0e55dc:
    addiu	$a0,$a0,16
    addiu	$a4,$a4,1
    addi	$v0,$v0,-1
    bnez	$v0,.L0f0e55dc
    # Line 940
    sh	$zero,-16($a0)
    sra	$a2,$a5,0x2
.L0f0e55f4:
    move	$a7,$a4
    beqz	$a2,.L0f0e5624
    move	$a6,$a0
    move	$v0,$a7
    move	$a0,$a6
.L0f0e5608:
    # Line 939
    addiu	$a0,$a0,64
    # Line 940
    sh	$zero,-16($a0)
    sh	$zero,-32($a0)
    sh	$zero,-48($a0)
    # Line 939
    addiu	$v0,$v0,4
    bne	$a1,$v0,.L0f0e5608
    # Line 940
    sh	$zero,-64($a0)
.L0f0e5624:
    # Line 942
    jr	$ra
    addiu	$sp,$sp,64
.L0f0e562c:
    # Line 932
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0e5640:
    sd	$v0,32($sp)
    # Line 935
    addiu	$t9,$t9,23696
    bal _GLInitExtInput
    ld	$a0,0($sp)
    b	.L0f0e55a8
    ld	$v0,32($sp)
.end _GLExtCloseDev

# Function: _GLInitExtInput
# Declared: Line 945 (Source lines: 946-956)
# Address: 0x0f0e5658 - 0x0f0e56d4 (Size: 124 bytes, Frame: 16)
.globl _GLInitExtInput
.ent _GLInitExtInput
_GLInitExtInput:
    # Line 946
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,-9232 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20704($gp)
    beqz	$at,.L0f0e56ac
.L0f0e5674:
    # Line 954
    la	$a0,sub_0f030000
    # Line 955
    la	$v1,sub_0f030000
    ld	$gp,0($sp)
    # Line 954
    addiu	$a0,$a0,3560
    # Line 956
    addiu	$v0,$a0,17304
    # Line 955
    addiu	$v1,$v1,-26920
    ld	$a2,16($v1)
    ld	$a1,8($v1)
    ld	$v1,0($v1)
    # Line 956
    addiu	$sp,$sp,16
    # Line 955
    sd	$a2,17320($a0)
    sd	$a1,17312($a0)
    # Line 956
    jr	$ra
    # Line 955
    sd	$v1,17304($a0)
.L0f0e56ac:
    # Line 954
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    la	$t9,sub_0f0e0000
    sd	$ra,8($sp)
    lw	$a0,28($a0)
    addiu	$t9,$t9,22228
    bal _GLInitExtInput
    lw	$a0,4($a0)
    b	.L0f0e5674
    ld	$ra,8($sp)
.end _GLInitExtInput

# Function: list_input_devices
# Declared: Line 963 (Source lines: 964-1020)
# Address: 0x0f0e56d4 - 0x0f0e58d8 (Size: 516 bytes, Frame: 240)
.ent list_input_devices
list_input_devices:
    # Line 964
    addiu	$sp,$sp,-112
    sd	$s3,48($sp)
    sd	$s4,56($sp)
    sd	$s8,64($sp)
    move	$s8,$a0
    # Line 972
    addiu	$a1,$sp,0
    la	$t9,XListInputDevices
    sd	$s2,80($sp)
    # Line 969
    la	$s2,sub_0f030000
    sd	$ra,72($sp)
    # Line 972
    jalr	$t9
    # Line 969
    addiu	$s2,$s2,-27104
    sd	$s6,8($sp)
    sd	$s7,16($sp)
    sd	$s0,24($sp)
    sd	$s1,40($sp)
    sd	$s5,32($sp)
    # Line 972
    move	$s4,$v0
    # Line 975
    lw	$at,-14708($gp)
    # Line 973
    move	$a0,$zero
    # Line 975
    move	$s3,$zero
    blez	$at,.L0f0e589c
    # Line 973
    sw	$zero,-20708($gp)
    sd	$s6,8($sp)
    sd	$s7,16($sp)
    sd	$s0,24($sp)
    sd	$s5,32($sp)
    b	.L0f0e5764
    # Line 975
    li	$s1,2
.L0f0e5748:
    # Line 993
    bnez	$s5,.L0f0e57f8
    # Line 997
    li	$a2,44
    # Line 975
    addiu	$s3,$s3,1
.L0f0e5754:
    lw	$v1,-14708($gp)
    slt	$v1,$s3,$v1
    beqz	$v1,.L0f0e5898
    # Line 1016
    addiu	$s2,$s2,44
.L0f0e5764:
    # Line 976
    move	$s5,$zero
    # Line 977
    la	$t9,XInternAtom
    move	$a0,$s8
    move	$a2,$zero
    jalr	$t9
    lw	$a1,4($s2)
    # Line 979
    lw	$a0,0($sp)
    # Line 977
    move	$s7,$v0
    # Line 979
    move	$s6,$zero
    blez	$a0,.L0f0e5748
    move	$s0,$s4
    b	.L0f0e57ac
    # Line 980
    lw	$v0,16($s0)
.L0f0e5798:
    # Line 981
    beqz	$v0,.L0f0e57c0
.L0f0e579c:
    # Line 979
    slt	$a1,$s6,$a0
    beqz	$a1,.L0f0e5748
    addiu	$s0,$s0,24
    # Line 980
    lw	$v0,16($s0)
.L0f0e57ac:
    beq	$v0,$s1,.L0f0e57bc
    # Line 979
    addiu	$s6,$s6,1
    # Line 980
    bnez	$v0,.L0f0e5798
    # Line 981
    li	$v0,1
.L0f0e57bc:
    move	$v0,$zero
.L0f0e57c0:
    # Line 984
    la	$t9,strcmp
    lw	$a1,8($s0)
    jalr	$t9
    lw	$a0,0($s2)
    beqzl	$v0,.L0f0e5748
    # Line 985
    move	$s5,$s0
    # Line 986
    bnez	$s5,.L0f0e57f0
    nop
    lw	$a2,4($s0)
    bne	$a2,$s7,.L0f0e57f0
    nop
    # Line 990
    move	$s5,$s0
.L0f0e57f0:
    b	.L0f0e579c
    lw	$a0,0($sp)
.L0f0e57f8:
    # Line 997
    move	$a0,$s2
    # Line 994
    lw	$ra,-20708($gp)
    la	$t8,sub_0f030000
    # Line 997
    la	$t9,bcopy
    # Line 995
    sll	$s6,$ra,0x5
    addiu	$t8,$t8,3560
    addu	$s6,$s6,$t8
    addiu	$s6,$s6,17016
    # Line 994
    sll	$s0,$ra,0x2
    subu	$s0,$s0,$ra
    sll	$s0,$s0,0x2
    subu	$s0,$s0,$ra
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$t8
    addiu	$s0,$s0,16704
    # Line 997
    jalr	$t9
    move	$a1,$s0
    # Line 998
    sw	$s5,0($s6)
    # Line 999
    sw	$zero,4($s6)
    # Line 1000
    sw	$zero,16($s6)
    # Line 1001
    sw	$zero,12($s6)
    # Line 1003
    sb	$zero,9($s6)
    # Line 1004
    sb	$zero,10($s6)
    # Line 1005
    sw	$s0,28($s6)
    li	$a1,-1
    # Line 1002
    sh	$a1,22($s6)
    sh	$a1,20($s6)
    # Line 1006
    lw	$v1,0($s5)
    # Line 1011
    lw	$a0,-20708($gp)
    # Line 1006
    sw	$v1,24($s6)
    li	$a1,1
    # Line 1007
    lh	$at,18($s5)
    # Line 1011
    addiu	$a0,$a0,1
    # Line 1012
    slti	$a2,$a0,7
    # Line 1007
    beqz	$at,.L0f0e58d0
    sh	$at,26($s0)
.L0f0e5888:
    # Line 1012
    beqz	$a2,.L0f0e589c
    # Line 1011
    sw	$a0,-20708($gp)
    b	.L0f0e5754
    # Line 975
    addiu	$s3,$s3,1
.L0f0e5898:
    lw	$a0,-20708($gp)
.L0f0e589c:
    # Line 1019
    sw	$a0,-20704($gp)
    # Line 1020
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,80($sp)
    ld	$s3,48($sp)
    ld	$s4,56($sp)
    ld	$s5,32($sp)
    ld	$s6,8($sp)
    ld	$ra,72($sp)
    ld	$s7,16($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e58d0:
    b	.L0f0e5888
    # Line 1009
    sw	$a1,-20696($gp)
.end list_input_devices

# Function: open_device
# Declared: Line 1026 (Source lines: 1027-1121)
# Address: 0x0f0e58d8 - 0x0f0e5c90 (Size: 952 bytes, Frame: 48)
.ent open_device
open_device:
    # Line 1027
    move	$v0,$a1
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    beqz	$a0,.L0f0e5b98
    move	$s0,$a0
    # Line 1035
    lw	$at,4($s0)
    beqzl	$at,.L0f0e5908
    # Line 1038
    lw	$a4,0($s0)
    # Line 1037
    li	$v0,1
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e5908:
    # Line 1039
    lw	$a0,16($a4)
    sd	$s1,8($sp)
    li	$s1,1
    beql	$a0,$s1,.L0f0e5c28
    # Line 1040
    move	$v0,$zero
    # Line 1039
    beqz	$a0,.L0f0e5c24
    # Line 1042
    la	$t9,XOpenDevice
    move	$a0,$v0
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a1,0($a4)
    move	$t1,$v0
    beqz	$v0,.L0f0e5c38
    ld	$ra,16($sp)
    # Line 1045
    sw	$v0,4($s0)
    # Line 1046
    lw	$t0,0($v0)
    la	$at,sub_0f030000
    # Line 1047
    move	$a7,$zero
    # Line 1046
    sll	$t0,$t0,0x6
    addiu	$at,$at,3560
    addu	$t0,$t0,$at
    # Line 1047
    sw	$zero,0($t0)
    # Line 1048
    lw	$a0,4($t1)
    move	$a5,$zero
    blez	$a0,.L0f0e5a68
    lw	$a1,8($v0)
    li	$a6,2
    lw	$t2,-14720($gp)
    lw	$t3,-14716($gp)
    b	.L0f0e59a8
    lw	$t8,-14712($gp)
.L0f0e5984:
    # Line 1050
    sw	$t9,-20720($gp)
.L0f0e5988:
    beqz	$t2,.L0f0e599c
    lw	$a7,0($t0)
    # Line 1053
    addiu	$a7,$a7,1
    sw	$a7,0($t0)
    lw	$a0,4($t1)
.L0f0e599c:
    # Line 1048
    slt	$at,$a5,$a0
    beqz	$at,.L0f0e5a6c
    slti	$a2,$a7,16
.L0f0e59a8:
    lbu	$v0,0($a1)
    addiu	$a1,$a1,2
    # Line 1050
    move	$a4,$zero
    # Line 1048
    beq	$a6,$v0,.L0f0e59e8
    addiu	$a5,$a5,1
    # Line 1053
    bne	$s1,$v0,.L0f0e599c
    # Line 1061
    move	$a4,$zero
    sll	$v0,$a7,0x2
    addu	$v0,$v0,$t0
    sw	$zero,4($v0)
    lw	$a0,4($t1)
    move	$t9,$zero
    blez	$a0,.L0f0e5c80
    lw	$v0,8($t1)
    b	.L0f0e5ab4
    lbu	$v1,0($v0)
.L0f0e59e8:
    # Line 1050
    sll	$v1,$a7,0x2
    addu	$v1,$v1,$t0
    sw	$zero,4($v1)
    lw	$a0,4($t1)
    move	$t9,$zero
    blez	$a0,.L0f0e5c78
    lw	$v0,8($t1)
    b	.L0f0e5a1c
    lbu	$a3,0($v0)
.L0f0e5a0c:
    slt	$a2,$a4,$a0
.L0f0e5a10:
    beqz	$a2,.L0f0e5984
    addiu	$v0,$v0,4
    lbu	$a3,0($v0)
.L0f0e5a1c:
    beq	$a3,$a6,.L0f0e5ba8
    addiu	$a4,$a4,1
.L0f0e5a24:
    slt	$at,$a4,$a0
    beqzl	$at,.L0f0e5988
    sw	$t9,-20720($gp)
    lbu	$v1,2($v0)
    addiu	$a4,$a4,1
    bne	$v1,$a6,.L0f0e5a10
    slt	$a2,$a4,$a0
    lw	$a0,0($t1)
    lw	$a2,0($t0)
    lbu	$t9,3($v0)
    sll	$a0,$a0,0x8
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$t0
    or	$a0,$a0,$t9
    sw	$a0,4($a2)
    b	.L0f0e5a0c
    lw	$a0,4($t1)
.L0f0e5a68:
    # Line 1048
    slti	$a2,$a7,16
.L0f0e5a6c:
    beqz	$a2,.L0f0e5c4c
    ld	$s1,8($sp)
.L0f0e5a74:
    # Line 1121
    li	$v0,1
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e5a84:
    # Line 1061
    lw	$at,0($t0)
    lbu	$t9,3($v0)
    sll	$a3,$a3,0x8
    sll	$at,$at,0x2
    addu	$at,$at,$t0
    or	$a3,$a3,$t9
    sw	$a3,4($at)
    lw	$a0,4($t1)
    slt	$at,$a4,$a0
.L0f0e5aa8:
    beqz	$at,.L0f0e5ae0
    addiu	$v0,$v0,4
    lbu	$v1,0($v0)
.L0f0e5ab4:
    beq	$v1,$s1,.L0f0e5bd0
    addiu	$a4,$a4,1
.L0f0e5abc:
    slt	$a2,$a4,$a0
    beqzl	$a2,.L0f0e5ae4
    sw	$t9,-20716($gp)
    lbu	$a3,2($v0)
    addiu	$a4,$a4,1
    bne	$a3,$s1,.L0f0e5aa8
    slt	$at,$a4,$a0
    b	.L0f0e5a84
    lw	$a3,0($t1)
.L0f0e5ae0:
    sw	$t9,-20716($gp)
.L0f0e5ae4:
    beqz	$t3,.L0f0e5af4
    lw	$a7,0($t0)
    # Line 1064
    addiu	$a7,$a7,1
    sw	$a7,0($t0)
.L0f0e5af4:
    # Line 1065
    sll	$a4,$a7,0x2
    addu	$a4,$a4,$t0
    sw	$zero,4($a4)
    lw	$a0,4($t1)
    move	$t9,$zero
    move	$a4,$zero
    blez	$a0,.L0f0e5c88
    lw	$v0,8($t1)
    b	.L0f0e5b50
    lbu	$a2,0($v0)
.L0f0e5b1c:
    lw	$at,0($t1)
    lw	$v1,0($t0)
    addiu	$t9,$t9,1
    sll	$at,$at,0x8
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$t0
    or	$at,$at,$t9
    sw	$at,4($v1)
    lw	$a0,4($t1)
    slt	$v1,$a4,$a0
.L0f0e5b44:
    beqz	$v1,.L0f0e5b7c
    addiu	$v0,$v0,4
    lbu	$a2,0($v0)
.L0f0e5b50:
    beq	$a2,$s1,.L0f0e5bf8
    addiu	$a4,$a4,1
.L0f0e5b58:
    slt	$a3,$a4,$a0
    beqzl	$a3,.L0f0e5b80
    sw	$t9,-20712($gp)
    lbu	$at,2($v0)
    addiu	$a4,$a4,1
    bne	$at,$s1,.L0f0e5b44
    slt	$v1,$a4,$a0
    b	.L0f0e5b1c
    lbu	$t9,3($v0)
.L0f0e5b7c:
    sw	$t9,-20712($gp)
.L0f0e5b80:
    beqz	$t8,.L0f0e599c
    lw	$a7,0($t0)
    # Line 1068
    addiu	$a7,$a7,1
    sw	$a7,0($t0)
    b	.L0f0e599c
    lw	$a0,4($t1)
.L0f0e5b98:
    # Line 1035
    move	$v0,$zero
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e5ba8:
    # Line 1050
    lw	$v1,0($t1)
    lw	$a0,0($t0)
    lbu	$t9,1($v0)
    sll	$v1,$v1,0x8
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$t0
    or	$v1,$v1,$t9
    sw	$v1,4($a0)
    b	.L0f0e5a24
    lw	$a0,4($t1)
.L0f0e5bd0:
    # Line 1061
    lw	$a0,0($t1)
    lw	$a2,0($t0)
    lbu	$t9,1($v0)
    sll	$a0,$a0,0x8
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$t0
    or	$a0,$a0,$t9
    sw	$a0,4($a2)
    b	.L0f0e5abc
    lw	$a0,4($t1)
.L0f0e5bf8:
    # Line 1065
    lbu	$t9,1($v0)
    lw	$a2,0($t1)
    lw	$a3,0($t0)
    addiu	$t9,$t9,1
    sll	$a2,$a2,0x8
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$t0
    or	$a2,$a2,$t9
    sw	$a2,4($a3)
    b	.L0f0e5b58
    lw	$a0,4($t1)
.L0f0e5c24:
    # Line 1040
    move	$v0,$zero
.L0f0e5c28:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e5c38:
    # Line 1044
    move	$v0,$zero
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e5c4c:
    # Line 1118
    li	$a1,2
    li	$a0,93
    ld	$s1,8($sp)
    # Line 1117
    li	$a3,15
    # Line 1118
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    # Line 1117
    sw	$a3,0($t0)
    # Line 1118
    jalr	$t9
    addiu	$a2,$a2,15744
    b	.L0f0e5a74
    ld	$ra,16($sp)
.L0f0e5c78:
    b	.L0f0e5988
    # Line 1050
    sw	$t9,-20720($gp)
.L0f0e5c80:
    b	.L0f0e5ae4
    # Line 1061
    sw	$t9,-20716($gp)
.L0f0e5c88:
    b	.L0f0e5b80
    # Line 1065
    sw	$t9,-20712($gp)
.end open_device

# Function: close_device
# Declared: Line 1128 (Source lines: 1129-1141)
# Address: 0x0f0e5c90 - 0x0f0e5cec (Size: 92 bytes, Frame: 32)
.ent close_device
close_device:
    # Line 1129
    lw	$a3,4($a1)
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    beqz	$a3,.L0f0e5ccc
    move	$s0,$a1
    lw	$at,0($s0)
    lw	$at,16($at)
    li	$v0,2
    beq	$at,$v0,.L0f0e5cd8
    # Line 1134
    la	$t9,XCloseDevice
.L0f0e5cb8:
    # Line 1139
    sb	$zero,10($s0)
    # Line 1138
    sw	$zero,12($s0)
    # Line 1137
    sb	$zero,8($s0)
    # Line 1136
    sw	$zero,16($s0)
    # Line 1135
    sw	$zero,4($s0)
.L0f0e5ccc:
    # Line 1141
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e5cd8:
    sd	$ra,8($sp)
    # Line 1134
    jalr	$t9
    move	$a1,$a3
    b	.L0f0e5cb8
    ld	$ra,8($sp)
.end close_device

# Function: init_soft_value
# Declared: Line 1145 (Source lines: 1146-1152)
# Address: 0x0f0e5cec - 0x0f0e5d18 (Size: 44 bytes, Frame: 0)
.ent init_soft_value
init_soft_value:
    # Line 1146
    lh	$at,0($a0)
    beqz	$at,.L0f0e5d00
    # Line 1148
    li	$v0,1
    # Line 1152
    jr	$ra
    nop
.L0f0e5d00:
    # Line 1150
    li	$a1,-32767
    # Line 1148
    sh	$v0,0($a0)
    # Line 1150
    sh	$a1,12($a0)
    # Line 1149
    li	$v1,32767
    # Line 1152
    jr	$ra
    # Line 1149
    sh	$v1,14($a0)
.end init_soft_value

# Function: find_soft_value
# Declared: Line 1159 (Source lines: 1160-1171)
# Address: 0x0f0e5d18 - 0x0f0e5d68 (Size: 80 bytes, Frame: 32)
.ent find_soft_value
find_soft_value:
    # Line 1160
    lw	$a4,12($a0)
    addiu	$sp,$sp,-32
    bnez	$a4,.L0f0e5d34
    move	$a5,$a0
    # Line 1164
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e5d34:
    # Line 1170
    la	$t9,sub_0f0e0000
    # Line 1165
    lhu	$a0,20($a5)
    sd	$ra,8($sp)
    # Line 1170
    addiu	$t9,$t9,23788
    # Line 1165
    subu	$a0,$a1,$a0
    sll	$a0,$a0,0x4
    addu	$a0,$a0,$a4
    # Line 1170
    bal _GLInitExtInput
    sd	$a0,0($sp)
    # Line 1171
    ld	$ra,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end find_soft_value

# Function: _GLExtSetSoftval
# Declared: Line 1174 (Source lines: 1176-1201)
# Address: 0x0f0e5d68 - 0x0f0e5eac (Size: 324 bytes, Frame: 224)
.globl _GLExtSetSoftval
.ent _GLExtSetSoftval
_GLExtSetSoftval:
    # Line 1176
    move	$at,$a0
    addiu	$sp,$sp,-96
    sd	$a2,24($sp)
    # Line 1181
    li	$a2,2
    sd	$a4,16($sp)
    sd	$a3,8($sp)
    sd	$gp,32($sp)
    sd	$ra,40($sp)
    # Line 1176
    lui	$ra,0xfff5
    addiu	$ra,$ra,-11040
    addu	$gp,$t9,$ra
    # Line 1181
    la	$t9,sub_0f0e0000
    sd	$a0,0($sp)
    # Line 1176
    move	$a0,$a1
    # Line 1181
    addiu	$t9,$t9,17244
    bal _GLdevname
    move	$a1,$at
    # Line 1182
    move	$a0,$zero
    beqz	$v0,.L0f0e5dc8
    li	$v1,2
    lw	$at,0($v0)
    lw	$at,16($at)
    beq	$at,$v1,.L0f0e5e88
    nop
.L0f0e5dc8:
    li	$a0,1
.L0f0e5dcc:
    bnez	$a0,.L0f0e5de4
    # Line 1184
    ld	$ra,40($sp)
    # Line 1182
    lw	$v0,28($v0)
    bnez	$v0,.L0f0e5df4
    # Line 1185
    la	$t9,sub_0f0e0000
    # Line 1184
    ld	$ra,40($sp)
.L0f0e5de4:
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e5df4:
    # Line 1185
    move	$a0,$v0
    addiu	$t9,$t9,23832
    bal _GLInitExtInput
    ld	$a1,0($sp)
    ld	$a3,24($sp)
    ld	$a2,16($sp)
    beqz	$v0,.L0f0e5e90
    ld	$a1,8($sp)
    # Line 1186
    li	$a0,-1
    beq	$a1,$a0,.L0f0e5e2c
    slt	$at,$a3,$a1
    beqz	$at,.L0f0e5e2c
    nop
    # Line 1188
    move	$a3,$a1
.L0f0e5e2c:
    beq	$a2,$a0,.L0f0e5e40
    slt	$v1,$a2,$a3
    beqzl	$v1,.L0f0e5e44
    # Line 1192
    lh	$a6,2($v0)
    # Line 1190
    move	$a3,$a2
.L0f0e5e40:
    # Line 1192
    lh	$a6,2($v0)
.L0f0e5e44:
    li	$a5,2
    beqz	$a6,.L0f0e5ea4
    sh	$a5,0($v0)
    # Line 1196
    lw	$at,4($v0)
    subu	$at,$a3,$at
    sw	$at,8($v0)
.L0f0e5e5c:
    beq	$a1,$a0,.L0f0e5e68
    nop
    # Line 1198
    sh	$a1,12($v0)
.L0f0e5e68:
    beq	$a2,$a0,.L0f0e5e78
    ld	$gp,32($sp)
    # Line 1200
    sh	$a2,14($v0)
    ld	$gp,32($sp)
.L0f0e5e78:
    # Line 1201
    ld	$ra,40($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e5e88:
    b	.L0f0e5dcc
    nop
.L0f0e5e90:
    ld	$gp,32($sp)
    # Line 1186
    ld	$ra,40($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e5ea4:
    # Line 1194
    b	.L0f0e5e5c
    sw	$a3,8($v0)
.end _GLExtSetSoftval

# Function: _GLExtGetSoftval
# Declared: Line 1209 (Source lines: 1210-1227)
# Address: 0x0f0e5eac - 0x0f0e5fac (Size: 256 bytes, Frame: 48)
.globl _GLExtGetSoftval
.ent _GLExtGetSoftval
_GLExtGetSoftval:
    # Line 1215
    li	$a2,2
    # Line 1210
    move	$at,$a0
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    sd	$ra,16($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,-11364
    addu	$gp,$t9,$ra
    # Line 1215
    la	$t9,sub_0f0e0000
    sd	$a0,0($sp)
    # Line 1210
    move	$a0,$a1
    # Line 1215
    addiu	$t9,$t9,17244
    bal _GLdevname
    move	$a1,$at
    # Line 1216
    beqz	$v0,.L0f0e5f00
    # Line 1215
    move	$a0,$v0
    # Line 1216
    lw	$at,0($a0)
    lw	$at,16($at)
    li	$v1,2
    beq	$at,$v1,.L0f0e5f80
    move	$v0,$zero
.L0f0e5f00:
    li	$v0,1
.L0f0e5f04:
    bnez	$v0,.L0f0e5f1c
    # Line 1218
    ld	$ra,16($sp)
    # Line 1216
    lw	$a0,28($a0)
    bnez	$a0,.L0f0e5f2c
    # Line 1220
    la	$t9,sub_0f0e0000
    # Line 1218
    ld	$ra,16($sp)
.L0f0e5f1c:
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e5f2c:
    # Line 1220
    addiu	$t9,$t9,23832
    bal _GLInitExtInput
    ld	$a1,0($sp)
    # Line 1225
    ld	$ra,16($sp)
    # Line 1220
    beqz	$v0,.L0f0e5f88
    move	$a0,$v0
    lh	$at,0($a0)
    li	$v1,2
    bnel	$at,$v1,.L0f0e5f64
    # Line 1225
    lw	$v0,4($a0)
    # Line 1220
    lh	$a2,2($a0)
    beqzl	$a2,.L0f0e5f9c
    # Line 1223
    ld	$ra,16($sp)
    # Line 1225
    lw	$v0,4($a0)
.L0f0e5f64:
    lw	$v1,8($a0)
    ld	$gp,8($sp)
    addiu	$sp,$sp,48
    addu	$v0,$v0,$v1
    dsll32	$v0,$v0,0x10
    jr	$ra
    dsra32	$v0,$v0,0x10
.L0f0e5f80:
    b	.L0f0e5f04
    nop
.L0f0e5f88:
    ld	$gp,8($sp)
    # Line 1227
    ld	$ra,16($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e5f9c:
    # Line 1223
    lh	$v0,10($a0)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLExtGetSoftval

# Function: check_rawvals
# Declared: Line 1233 (Source lines: 1234-1241)
# Address: 0x0f0e5fac - 0x0f0e5ff0 (Size: 68 bytes, Frame: 0)
.ent check_rawvals
check_rawvals:
    # Line 1234
    blez	$a0,.L0f0e5fe0
    move	$a3,$a1
    sll	$a4,$a0,0x2
    # Line 1237
    lw	$a0,0($a3)
.L0f0e5fbc:
    # Line 1236
    addu	$v1,$a4,$a1
    # Line 1237
    slti	$at,$a0,-32767
    bnez	$at,.L0f0e5fe8
    li	$v0,32767
    slt	$v0,$v0,$a0
    bnez	$v0,.L0f0e5fe8
    # Line 1236
    addiu	$a3,$a3,4
    bnel	$v1,$a3,.L0f0e5fbc
    # Line 1237
    lw	$a0,0($a3)
.L0f0e5fe0:
    # Line 1241
    jr	$ra
    li	$v0,1
.L0f0e5fe8:
    # Line 1239
    jr	$ra
    move	$v0,$zero
.end check_rawvals

# Function: set_softvals
# Declared: Line 1244 (Source lines: 1247-1271)
# Address: 0x0f0e5ff0 - 0x0f0e61c4 (Size: 468 bytes, Frame: 0)
.ent set_softvals
set_softvals:
    # Line 1247
    li	$t0,1
    move	$t2,$a0
    lw	$a5,12($a1)
    sll	$at,$a2,0x4
    blez	$a0,.L0f0e6050
    addu	$a5,$a5,$at
    move	$a4,$a3
    li	$t1,2
    sll	$a6,$a0,0x2
    andi	$at,$a0,0x1
    beqz	$at,.L0f0e6044
    addu	$a6,$a6,$a3
    # Line 1250
    lh	$v0,2($a5)
    lw	$a0,0($a4)
    # Line 1249
    addiu	$a4,$a4,4
    # Line 1250
    beqz	$v0,.L0f0e6188
    sw	$a0,4($a5)
.L0f0e6034:
    # Line 1255
    lw	$v1,40($a1)
    beqzl	$v1,.L0f0e6160
    # Line 1264
    lw	$a3,8($a5)
.L0f0e6040:
    # Line 1249
    addiu	$a5,$a5,16
.L0f0e6044:
    sra	$a2,$t2,0x1
    bnezl	$a2,.L0f0e6078
    # Line 1250
    lh	$v1,2($a5)
.L0f0e6050:
    # Line 1271
    jr	$ra
    nop
.L0f0e6058:
    # Line 1266
    slt	$at,$a7,$a0
    beqz	$at,.L0f0e606c
    # Line 1268
    subu	$v0,$a0,$a7
    subu	$v0,$a3,$v0
    sw	$v0,24($a5)
.L0f0e606c:
    # Line 1249
    beq	$a4,$a6,.L0f0e6050
    addiu	$a5,$a5,32
    # Line 1250
    lh	$v1,2($a5)
.L0f0e6078:
    lw	$a0,0($a4)
    beqz	$v1,.L0f0e6104
    sw	$a0,4($a5)
.L0f0e6084:
    # Line 1255
    lw	$a2,40($a1)
    beqzl	$a2,.L0f0e60dc
    # Line 1264
    lw	$a3,8($a5)
.L0f0e6090:
    # Line 1250
    lh	$at,18($a5)
.L0f0e6094:
    lw	$a0,4($a4)
    # Line 1249
    addiu	$a4,$a4,8
    # Line 1250
    beqz	$at,.L0f0e6124
    sw	$a0,20($a5)
.L0f0e60a4:
    # Line 1255
    lw	$v0,40($a1)
    bnez	$v0,.L0f0e606c
    nop
    # Line 1264
    lw	$a3,24($a5)
    lw	$a0,20($a5)
    lh	$a7,28($a5)
    addu	$a0,$a0,$a3
    slt	$v1,$a0,$a7
    beqzl	$v1,.L0f0e6058
    # Line 1266
    lh	$a7,30($a5)
    subu	$a2,$a7,$a0
    addu	$a2,$a2,$a3
    b	.L0f0e606c
    sw	$a2,24($a5)
.L0f0e60dc:
    # Line 1264
    lw	$a0,4($a5)
    lh	$a7,12($a5)
    addu	$a0,$a0,$a3
    slt	$at,$a0,$a7
    beqzl	$at,.L0f0e6144
    # Line 1266
    lh	$a7,14($a5)
    subu	$a2,$a7,$a0
    addu	$a2,$a2,$a3
    b	.L0f0e6090
    sw	$a2,8($a5)
.L0f0e6104:
    # Line 1252
    lh	$at,0($a5)
    bne	$at,$t1,.L0f0e6084
    sh	$t0,2($a5)
    # Line 1255
    lw	$v0,8($a5)
    # Line 1254
    sh	$t0,0($a5)
    # Line 1255
    subu	$v0,$v0,$a0
    b	.L0f0e6084
    sw	$v0,8($a5)
.L0f0e6124:
    # Line 1252
    lh	$v1,16($a5)
    bne	$v1,$t1,.L0f0e60a4
    sh	$t0,18($a5)
    # Line 1255
    lw	$a2,24($a5)
    # Line 1254
    sh	$t0,16($a5)
    # Line 1255
    subu	$a2,$a2,$a0
    b	.L0f0e60a4
    sw	$a2,24($a5)
.L0f0e6144:
    # Line 1266
    slt	$at,$a7,$a0
    beqzl	$at,.L0f0e6094
    # Line 1250
    lh	$at,18($a5)
    # Line 1268
    subu	$v0,$a0,$a7
    subu	$v0,$a3,$v0
    b	.L0f0e6090
    sw	$v0,8($a5)
.L0f0e6160:
    # Line 1264
    lw	$a0,4($a5)
    lh	$a7,12($a5)
    addu	$a0,$a0,$a3
    slt	$v1,$a0,$a7
    beqzl	$v1,.L0f0e61a8
    # Line 1266
    lh	$a7,14($a5)
    subu	$a2,$a7,$a0
    addu	$a2,$a2,$a3
    b	.L0f0e6040
    sw	$a2,8($a5)
.L0f0e6188:
    # Line 1252
    lh	$at,0($a5)
    bne	$at,$t1,.L0f0e6034
    sh	$t0,2($a5)
    # Line 1255
    lw	$v0,8($a5)
    # Line 1254
    sh	$t0,0($a5)
    # Line 1255
    subu	$v0,$v0,$a0
    b	.L0f0e6034
    sw	$v0,8($a5)
.L0f0e61a8:
    # Line 1266
    slt	$v1,$a7,$a0
    beqzl	$v1,.L0f0e6044
    # Line 1249
    addiu	$a5,$a5,16
    # Line 1268
    subu	$a2,$a0,$a7
    subu	$a2,$a3,$a2
    b	.L0f0e6040
    sw	$a2,8($a5)
.end set_softvals

# Function: set_vals_from_softvals
# Declared: Line 1273 (Source lines: 1275-1292)
# Address: 0x0f0e61c4 - 0x0f0e62c8 (Size: 260 bytes, Frame: 0)
.ent set_vals_from_softvals
set_vals_from_softvals:
    # Line 1275
    move	$t0,$a0
    andi	$at,$a0,0x1
    blez	$a0,.L0f0e620c
    move	$a5,$a2
    li	$a6,1
    addu	$a7,$a0,$a0
    beqz	$at,.L0f0e6200
    addu	$a7,$a7,$a2
    # Line 1283
    lw	$a4,8($a1)
    lw	$a0,4($a1)
    # Line 1277
    addiu	$a5,$a5,2
    # Line 1283
    beq	$a3,$a6,.L0f0e629c
    addu	$a0,$a0,$a4
.L0f0e61f8:
    # Line 1277
    addiu	$a1,$a1,16
.L0f0e61fc:
    # Line 1290
    sh	$a0,-2($a5)
.L0f0e6200:
    sra	$at,$t0,0x1
    bnezl	$at,.L0f0e6234
    # Line 1283
    lw	$a4,8($a1)
.L0f0e620c:
    # Line 1292
    jr	$ra
    nop
.L0f0e6214:
    # Line 1286
    slt	$v0,$a2,$a0
    beqzl	$v0,.L0f0e6228
    # Line 1277
    addiu	$a1,$a1,32
    # Line 1288
    move	$a0,$a2
.L0f0e6224:
    # Line 1277
    addiu	$a1,$a1,32
.L0f0e6228:
    beq	$a5,$a7,.L0f0e620c
    # Line 1290
    sh	$a0,-2($a5)
    # Line 1283
    lw	$a4,8($a1)
.L0f0e6234:
    lw	$a0,4($a1)
    beq	$a3,$a6,.L0f0e6270
    addu	$a0,$a0,$a4
.L0f0e6240:
    # Line 1290
    sh	$a0,0($a5)
.L0f0e6244:
    # Line 1283
    lw	$a4,24($a1)
    lw	$a0,20($a1)
    # Line 1277
    addiu	$a5,$a5,4
    # Line 1283
    bne	$a3,$a6,.L0f0e6224
    addu	$a0,$a0,$a4
    lh	$a2,28($a1)
    slt	$at,$a0,$a2
    beqzl	$at,.L0f0e6214
    # Line 1286
    lh	$a2,30($a1)
    b	.L0f0e6224
    move	$a0,$a2
.L0f0e6270:
    # Line 1283
    lh	$a2,12($a1)
    slt	$v0,$a0,$a2
    beqzl	$v0,.L0f0e6288
    # Line 1286
    lh	$a2,14($a1)
    b	.L0f0e6240
    move	$a0,$a2
.L0f0e6288:
    slt	$v1,$a2,$a0
    beqzl	$v1,.L0f0e6244
    # Line 1290
    sh	$a0,0($a5)
    b	.L0f0e6240
    # Line 1288
    move	$a0,$a2
.L0f0e629c:
    # Line 1283
    lh	$a2,12($a1)
    slt	$a4,$a0,$a2
    beqzl	$a4,.L0f0e62b4
    # Line 1286
    lh	$a2,14($a1)
    b	.L0f0e61f8
    move	$a0,$a2
.L0f0e62b4:
    slt	$at,$a2,$a0
    beqzl	$at,.L0f0e61fc
    # Line 1277
    addiu	$a1,$a1,16
    b	.L0f0e61f8
    # Line 1288
    move	$a0,$a2
.end set_vals_from_softvals

# Function: set_devs
# Declared: Line 1294 (Source lines: 1295-1299)
# Address: 0x0f0e62c8 - 0x0f0e6340 (Size: 120 bytes, Frame: 0)
.ent set_devs
set_devs:
    # Line 1295
    move	$t0,$a0
    addu	$a4,$a0,$a2
    blez	$a0,.L0f0e6338
    move	$a5,$a1
    andi	$a7,$a0,0x3
    beqz	$a7,.L0f0e62f8
    move	$a6,$a2
.L0f0e62e4:
    # Line 1298
    sh	$a6,0($a5)
    # Line 1297
    addiu	$a6,$a6,1
    addi	$a7,$a7,-1
    bnez	$a7,.L0f0e62e4
    addiu	$a5,$a5,2
.L0f0e62f8:
    sra	$at,$t0,0x2
    move	$a2,$a5
    beqz	$at,.L0f0e6338
    move	$a7,$a6
    move	$a1,$a2
    move	$a0,$a7
.L0f0e6310:
    addiu	$a1,$a1,8
    addiu	$v0,$a0,1
    # Line 1298
    sh	$v0,-6($a1)
    # Line 1297
    addiu	$v0,$v0,1
    # Line 1298
    sh	$v0,-4($a1)
    # Line 1297
    addiu	$v0,$v0,1
    # Line 1298
    sh	$a0,-8($a1)
    # Line 1297
    addiu	$a0,$v0,1
    bne	$a0,$a4,.L0f0e6310
    # Line 1298
    sh	$v0,-2($a1)
.L0f0e6338:
    # Line 1299
    jr	$ra
    nop
.end set_devs

# Function: _GLExtClearGotEventFlags
# Declared: Line 1301 (Source lines: 1302-1307)
# Address: 0x0f0e6340 - 0x0f0e63c0 (Size: 128 bytes, Frame: 0)
.globl _GLExtClearGotEventFlags
.ent _GLExtClearGotEventFlags
_GLExtClearGotEventFlags:
    # Line 1302
    lui	$a3,0xfff5
    addiu	$a3,$a3,-12536
    addu	$at,$t9,$a3
    # Line 1305
    lw	$a4,-20704($at)
    move	$a3,$zero
    # Line 1304
    lw	$a2,-32676($at)
    # Line 1305
    move	$a6,$a4
    blez	$a4,.L0f0e63b8
    # Line 1304
    addiu	$a2,$a2,20576
    andi	$a5,$a4,0x3
    beqz	$a5,.L0f0e6388
    sra	$v0,$a6,0x2
.L0f0e6370:
    # Line 1305
    addiu	$a2,$a2,32
    addiu	$a3,$a3,1
    addi	$a5,$a5,-1
    bnez	$a5,.L0f0e6370
    # Line 1306
    sb	$zero,-22($a2)
    sra	$v0,$a6,0x2
.L0f0e6388:
    move	$a7,$a3
    beqz	$v0,.L0f0e63b8
    move	$a5,$a2
    move	$a3,$a7
    move	$a2,$a5
.L0f0e639c:
    # Line 1305
    addiu	$a2,$a2,128
    # Line 1306
    sb	$zero,-22($a2)
    sb	$zero,-54($a2)
    sb	$zero,-86($a2)
    # Line 1305
    addiu	$a3,$a3,4
    bne	$a3,$a4,.L0f0e639c
    # Line 1306
    sb	$zero,-118($a2)
.L0f0e63b8:
    # Line 1307
    jr	$ra
    nop
.end _GLExtClearGotEventFlags

# Function: _GLProcessExtEvent
# Declared: Line 1313 (Source lines: 1314-1463)
# Address: 0x0f0e63c0 - 0x0f0e6874 (Size: 1204 bytes, Frame: 160)
.globl _GLProcessExtEvent
.ent _GLProcessExtEvent
_GLProcessExtEvent:
    # Line 1314
    addiu	$sp,$sp,-160
    sd	$s0,128($sp)
    sd	$gp,120($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,-12664 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20704($gp)
    move	$s0,$a0
    # Line 1348
    lw	$a5,-20720($gp)
    # Line 1314
    beqz	$at,.L0f0e67ac
    # Line 1338
    lw	$a4,-20712($gp)
    # Line 1325
    lw	$v0,0($s0)
    lw	$v1,-20716($gp)
    beq	$v1,$v0,.L0f0e669c
    # Line 1329
    la	$t9,sub_0f0e0000
    # Line 1338
    beq	$a4,$v0,.L0f0e6724
    # Line 1342
    la	$t9,sub_0f0e0000
    # Line 1348
    bnel	$a5,$v0,.L0f0e6690
    ld	$gp,120($sp)
    # Line 1352
    la	$t9,sub_0f0e0000
    sd	$ra,136($sp)
    addiu	$t9,$t9,16548
    bal _GLdevname
    lw	$a0,20($s0)
    move	$a1,$v0
    beqz	$v0,.L0f0e668c
    ld	$ra,136($sp)
    # Line 1354
    lw	$v0,28($v0)
    move	$at,$v0
    beqz	$v0,.L0f0e668c
    sd	$v0,104($sp)
    la	$a2,sub_0f030000
    lw	$a6,8($v0)
    addiu	$a2,$a2,3560
    lw	$v1,17304($a2)
    bne	$v1,$a6,.L0f0e645c
    lw	$a4,17324($a2)
    li	$a5,1
    beq	$a4,$a5,.L0f0e6808
.L0f0e645c:
    li	$a0,1
.L0f0e6460:
    beqz	$a0,.L0f0e668c
    # Line 1357
    move	$a4,$a6
    # Line 1362
    lbu	$a3,69($s0)
    # Line 1363
    lbu	$a2,68($s0)
    lh	$a0,18($v0)
    # Line 1362
    andi	$a3,$a3,0xffff
    # Line 1363
    addu	$at,$a2,$a3
    slt	$at,$a0,$at
    beqz	$at,.L0f0e6494
    sd	$a6,72($sp)
    # Line 1368
    subu	$a2,$a0,$a3
    blezl	$a2,.L0f0e6850
    ld	$gp,120($sp)
.L0f0e6494:
    # Line 1370
    lh	$a7,16($v0)
    li	$a6,1
    beq	$a7,$a6,.L0f0e67bc
    # Line 1376
    move	$v0,$zero
    sd	$zero,96($sp)
    # Line 1377
    move	$a5,$a7
    slt	$a5,$a7,$a2
    beqz	$a5,.L0f0e64d0
    sd	$a7,112($sp)
    sd	$a1,48($sp)
    sd	$a2,64($sp)
    sd	$v0,96($sp)
    sd	$a3,88($sp)
    # Line 1378
    move	$at,$a2
    sd	$a2,112($sp)
.L0f0e64d0:
    sd	$a2,64($sp)
    sd	$a3,88($sp)
    # Line 1380
    move	$a0,$a2
    la	$t9,sub_0f0e0000
    sd	$a1,48($sp)
    addiu	$a1,$s0,72
    addiu	$t9,$t9,24492
    bal _GLExtGetSoftval
    sd	$a1,80($sp)
    ld	$ra,136($sp)
    beqz	$v0,.L0f0e6818
    ld	$a0,64($sp)
    # Line 1382
    ld	$at,72($sp)
    li	$v1,2
    beq	$at,$v1,.L0f0e6528
    ld	$a4,104($sp)
    lh	$a4,16($a4)
    slt	$a4,$a0,$a4
    beqz	$a4,.L0f0e6528
    ld	$a5,48($sp)
    # Line 1384
    lbu	$a5,10($a5)
    beqz	$a5,.L0f0e685c
.L0f0e6528:
    # Line 1393
    ld	$a3,80($sp)
    ld	$a2,88($sp)
    ld	$a1,104($sp)
    la	$t9,sub_0f0e0000
    li	$a6,1
    # Line 1392
    ld	$a7,48($sp)
    # Line 1393
    addiu	$t9,$t9,24560
    bal _GLExtGetSoftval
    # Line 1392
    sb	$a6,10($a7)
    ld	$at,72($sp)
    li	$v0,2
    # Line 1393
    bne	$at,$v0,.L0f0e6568
    ld	$ra,136($sp)
    ld	$v1,88($sp)
    li	$a4,6
    beq	$v1,$a4,.L0f0e6828
.L0f0e6568:
    ld	$a0,112($sp)
    # Line 1402
    ld	$a2,104($sp)
    ld	$a3,96($sp)
    la	$t9,sub_0f0e0000
    lhu	$a2,20($a2)
    addiu	$a1,$sp,0
    addiu	$t9,$t9,25288
    addu	$a2,$a2,$a3
    bal _GLExtGetSoftval
    andi	$a2,$a2,0xffff
    ld	$a0,112($sp)
    # Line 1404
    addiu	$a2,$sp,24
    ld	$a4,96($sp)
    ld	$a1,104($sp)
    la	$t9,sub_0f0e0000
    sll	$a4,$a4,0x4
    lw	$a3,40($a1)
    lw	$a1,12($a1)
    addiu	$t9,$t9,25028
    bal _GLExtGetSoftval
    addu	$a1,$a1,$a4
    ld	$a4,72($sp)
    li	$a1,2
    beq	$a4,$a1,.L0f0e67dc
    ld	$v0,104($sp)
.L0f0e65cc:
    # Line 1411
    lw	$a0,36($v0)
.L0f0e65d0:
    li	$a5,1
    beql	$a0,$a5,.L0f0e65f4
    ld	$a1,48($sp)
    bne	$a0,$a1,.L0f0e6670
    ld	$a0,112($sp)
    ld	$at,48($sp)
    lw	$at,12($at)
    beqz	$at,.L0f0e666c
    ld	$a1,48($sp)
.L0f0e65f4:
    lh	$a1,22($a1)
    li	$v1,-1
    beq	$a1,$v1,.L0f0e6848
    # Line 1415
    move	$a0,$a1
.L0f0e6604:
    lh	$a2,18($v0)
    addiu	$a2,$a2,-1
    slt	$a4,$a0,$a2
    beqz	$a4,.L0f0e661c
    # Line 1416
    move	$a1,$a2
    move	$a1,$a0
.L0f0e661c:
    ld	$v0,96($sp)
    subu	$v0,$a1,$v0
    bltz	$v0,.L0f0e666c
    ld	$v1,112($sp)
    slt	$v1,$v0,$v1
    beqz	$v1,.L0f0e6670
    ld	$a0,112($sp)
    # Line 1422
    addiu	$a2,$sp,24
    la	$a0,gl_sstatep
    addu	$a1,$v0,$v0
    addu	$a1,$a1,$a2
    lw	$a0,0($a0)
    sd	$a1,56($sp)
    la	$t9,_GLinvertY
    lw	$a0,28($a0)
    lh	$a1,0($a1)
    jalr	$t9
    lw	$a0,112($a0)
    ld	$a4,56($sp)
    sh	$v0,0($a4)
.L0f0e666c:
    ld	$a0,112($sp)
.L0f0e6670:
    # Line 1424
    li	$a4,1
    la	$t9,_GLpostMotionEvent
    lw	$a3,32($s0)
    addiu	$a2,$sp,24
    bal _GLpostMotionEvent
    addiu	$a1,$sp,0
    ld	$ra,136($sp)
.L0f0e668c:
    ld	$gp,120($sp)
.L0f0e6690:
    # Line 1463
    ld	$s0,128($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f0e669c:
    sd	$ra,136($sp)
    # Line 1329
    addiu	$t9,$t9,16548
    bal _GLdevname
    lw	$a0,20($s0)
    move	$a0,$v0
    beqz	$v0,.L0f0e668c
    ld	$ra,136($sp)
    # Line 1331
    lw	$v0,28($v0)
    beqz	$v0,.L0f0e668c
    la	$a2,sub_0f030000
    lw	$at,8($v0)
    addiu	$a2,$a2,3560
    lw	$v1,17304($a2)
    bne	$at,$v1,.L0f0e66e0
    lw	$a4,17324($a2)
    li	$a5,1
    beq	$a4,$a5,.L0f0e6810
.L0f0e66e0:
    li	$a1,1
.L0f0e66e4:
    beqz	$a1,.L0f0e668c
    sd	$a0,48($sp)
    # Line 1336
    lw	$t9,28($v0)
    move	$a0,$v0
    jalr	$t9
    lw	$a1,56($s0)
    # Line 1337
    move	$a2,$zero
    la	$t9,_GLpostEvent
    li	$a1,1
    andi	$a0,$v0,0xffff
    bal _GLpostEvent
    ld	$s0,48($sp)
    # Line 1338
    li	$ra,1
    sb	$ra,10($s0)
    b	.L0f0e668c
    ld	$ra,136($sp)
.L0f0e6724:
    sd	$ra,136($sp)
    # Line 1342
    addiu	$t9,$t9,16548
    bal _GLdevname
    lw	$a0,20($s0)
    move	$a0,$v0
    beqz	$v0,.L0f0e668c
    ld	$ra,136($sp)
    # Line 1344
    lw	$v0,28($v0)
    beqz	$v0,.L0f0e668c
    la	$a2,sub_0f030000
    lw	$at,8($v0)
    addiu	$a2,$a2,3560
    lw	$v1,17304($a2)
    bne	$at,$v1,.L0f0e6768
    lw	$a4,17324($a2)
    li	$a5,1
    beq	$a4,$a5,.L0f0e6840
.L0f0e6768:
    li	$a1,1
.L0f0e676c:
    beqz	$a1,.L0f0e668c
    sd	$a0,48($sp)
    # Line 1346
    lw	$t9,28($v0)
    move	$a0,$v0
    jalr	$t9
    lw	$a1,56($s0)
    # Line 1347
    la	$t9,_GLpostEvent
    move	$a2,$zero
    move	$a1,$zero
    bal _GLpostEvent
    andi	$a0,$v0,0xffff
    # Line 1348
    ld	$at,48($sp)
    li	$ra,1
    sb	$ra,10($at)
    b	.L0f0e668c
    ld	$ra,136($sp)
.L0f0e67ac:
    ld	$gp,120($sp)
    # Line 1325
    ld	$s0,128($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f0e67bc:
    sd	$a1,48($sp)
    sd	$a2,64($sp)
    sd	$a3,88($sp)
    # Line 1373
    move	$a4,$a3
    sd	$a3,96($sp)
    # Line 1374
    move	$v1,$a2
    b	.L0f0e64d0
    sd	$a2,112($sp)
.L0f0e67dc:
    # Line 1404
    lw	$a5,-20684($gp)
    bnezl	$a5,.L0f0e65d0
    # Line 1411
    lw	$a0,36($v0)
    # Line 1407
    la	$t9,sub_0f0e0000
    lw	$a1,32($s0)
    addiu	$t9,$t9,26812
    bal _GLProcessExtEvent
    addiu	$a0,$sp,24
    li	$a1,2
    b	.L0f0e65cc
    ld	$v0,104($sp)
.L0f0e6808:
    b	.L0f0e6460
    # Line 1354
    move	$a0,$zero
.L0f0e6810:
    b	.L0f0e66e4
    # Line 1331
    move	$a1,$zero
.L0f0e6818:
    ld	$gp,120($sp)
    # Line 1382
    ld	$s0,128($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f0e6828:
    # Line 1400
    ld	$s0,128($sp)
    li	$at,1
    # Line 1399
    sw	$at,-20684($gp)
    ld	$gp,120($sp)
    # Line 1400
    jr	$ra
    addiu	$sp,$sp,160
.L0f0e6840:
    b	.L0f0e676c
    # Line 1344
    move	$a1,$zero
.L0f0e6848:
    # Line 1415
    b	.L0f0e6604
    li	$a0,1
.L0f0e6850:
    # Line 1370
    ld	$s0,128($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f0e685c:
    # Line 1390
    la	$t9,_GLExtQueryDevice
    ld	$a0,72($sp)
    bal _GLExtQueryDevice
    li	$a1,2
    b	.L0f0e6528
    ld	$a0,64($sp)
.end _GLProcessExtEvent

# Function: default_map
# Declared: Line 1466 (Source lines: 1468-1468)
# Address: 0x0f0e6874 - 0x0f0e6888 (Size: 20 bytes, Frame: 0)
.ent default_map
default_map:
    # Line 1468
    lhu	$v0,22($a0)
    addu	$v0,$v0,$a1
    addiu	$v0,$v0,-1
    jr	$ra
    andi	$v0,$v0,0xffff
.end default_map

# Function: mouse_map
# Declared: Line 1471 (Source lines: 1473-1473)
# Address: 0x0f0e6888 - 0x0f0e689c (Size: 20 bytes, Frame: 0)
.ent mouse_map
mouse_map:
    # Line 1473
    lhu	$v0,22($a0)
    subu	$v0,$v0,$a1
    addiu	$v0,$v0,1
    jr	$ra
    andi	$v0,$v0,0xffff
.end mouse_map

# Function: sball_map
# Declared: Line 1476 (Source lines: 1477-1483)
# Address: 0x0f0e689c - 0x0f0e68bc (Size: 32 bytes, Frame: 0)
.ent sball_map
sball_map:
    # Line 1477
    li	$at,9
    beq	$a1,$at,.L0f0e68b0
    # Line 1483
    addiu	$v0,$a1,182
    jr	$ra
    andi	$v0,$v0,0xffff
.L0f0e68b0:
    # Line 1481
    li	$v0,182
    jr	$ra
    nop
.end sball_map

# Function: sb_set_period
# Declared: Line 1489 (Source lines: 1490-1517)
# Address: 0x0f0e68bc - 0x0f0e692c (Size: 112 bytes, Frame: 0)
.ent sb_set_period
sb_set_period:
    # Line 1507
    li	$a5,50
    # Line 1490
    beqz	$a1,.L0f0e6920
    # Line 1500
    move	$a3,$a0
    move	$a4,$zero
    # Line 1509
    li	$a2,6
.L0f0e68d0:
    # Line 1501
    lh	$at,0($a3)
    # Line 1500
    addiu	$v0,$a0,12
    # Line 1501
    bnez	$at,.L0f0e68e8
    # Line 1500
    addiu	$a3,$a3,2
    bne	$v0,$a3,.L0f0e68d0
    addiu	$a4,$a4,1
.L0f0e68e8:
    # Line 1504
    lw	$a3,-20680($gp)
    beqz	$a3,.L0f0e6900
    nop
    beq	$a3,$a1,.L0f0e6900
    nop
    # Line 1505
    subu	$a5,$a1,$a3
.L0f0e6900:
    # Line 1509
    sll	$v1,$a5,0x4
    beq	$a4,$a2,.L0f0e6918
    sh	$v1,12($a0)
    # Line 1515
    sw	$a1,-20680($gp)
    # Line 1517
    jr	$ra
    nop
.L0f0e6918:
    jr	$ra
    # Line 1513
    sw	$zero,-20680($gp)
.L0f0e6920:
    # Line 1497
    li	$at,800
    # Line 1498
    jr	$ra
    # Line 1497
    sh	$at,12($a0)
.end sb_set_period

# Function: _GLExtQueryDevice
# Declared: Line 1519 (Source lines: 1520-1582)
# Address: 0x0f0e692c - 0x0f0e6c98 (Size: 876 bytes, Frame: 208)
.globl _GLExtQueryDevice
.ent _GLExtQueryDevice
_GLExtQueryDevice:
    # Line 1520
    addiu	$sp,$sp,-208
    sd	$ra,96($sp)
    sd	$gp,104($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-14052 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$ra,gl_sstatep
    sd	$a1,72($sp)
    move	$a1,$a0
    # Line 1528
    lw	$ra,0($ra)
    la	$t9,sub_0f0e0000
    sd	$a0,48($sp)
    lw	$a0,28($ra)
    addiu	$t9,$t9,17084
    bal _GLdevname
    lw	$a0,4($a0)
    sd	$s3,120($sp)
    # Line 1529
    beqz	$v0,.L0f0e6bd0
    # Line 1528
    move	$a0,$v0
    # Line 1529
    lw	$s3,28($v0)
    beqz	$s3,.L0f0e6bd0
    sd	$a0,56($sp)
    la	$a0,gl_sstatep
    sd	$s2,128($sp)
    # Line 1531
    lw	$a0,0($a0)
    ld	$a1,56($sp)
    la	$t9,XQueryDeviceState
    lw	$a0,28($a0)
    lw	$a1,4($a1)
    jalr	$t9
    lw	$a0,4($a0)
    beqz	$v0,.L0f0e6c4c
    move	$s2,$v0
    sd	$s8,176($sp)
    sd	$s4,168($sp)
    sd	$s1,144($sp)
    # Line 1535
    lw	$a3,4($v0)
    move	$s1,$zero
    sd	$s0,136($sp)
    blez	$a3,.L0f0e6ba4
    # Line 1534
    lw	$s0,8($v0)
    sd	$s6,184($sp)
    sd	$s5,160($sp)
    sd	$s7,152($sp)
    # Line 1535
    li	$s4,2
    li	$s8,1
    addiu	$a4,$sp,0
    ld	$at,72($sp)
    addiu	$a4,$a4,12
    sd	$a4,64($sp)
    andi	$v1,$at,0x2
    andi	$at,$at,0x1
    sd	$v1,80($sp)
    b	.L0f0e6acc
    sd	$at,88($sp)
.L0f0e6a08:
    # Line 1558
    ld	$a0,112($sp)
    la	$t9,sub_0f0e0000
    move	$a1,$s3
    move	$a2,$zero
    addiu	$t9,$t9,24560
    bal _GLExtGetSoftval
    lw	$a3,4($s0)
    la	$t9,sub_0f0e0000
    # Line 1559
    ld	$a0,112($sp)
    lhu	$a2,20($s3)
    addiu	$t9,$t9,25288
    bal _GLExtGetSoftval
    addiu	$a1,$sp,24
    # Line 1560
    ld	$a0,112($sp)
    la	$t9,sub_0f0e0000
    lw	$a3,40($s3)
    addiu	$a2,$sp,0
    addiu	$t9,$t9,25028
    bal _GLExtGetSoftval
    lw	$a1,12($s3)
    ld	$at,48($sp)
    beq	$at,$s4,.L0f0e6c64
    ld	$a3,112($sp)
    # Line 1569
    lw	$v0,36($s3)
.L0f0e6a68:
    beq	$v0,$s8,.L0f0e6bf0
    li	$v1,-1
    beq	$v0,$s4,.L0f0e6be4
.L0f0e6a74:
    # Line 1574
    ld	$s7,112($sp)
    ld	$v1,112($sp)
    addiu	$at,$sp,24
    blez	$v1,.L0f0e6ab8
    addiu	$s5,$sp,0
    addu	$s7,$s7,$s7
    addiu	$s6,$sp,24
    addu	$s7,$s7,$at
    # Line 1577
    li	$a2,3
.L0f0e6a98:
    la	$t9,_GLpostEvent
    lh	$a1,0($s5)
    # Line 1576
    addiu	$s5,$s5,2
    # Line 1577
    bal _GLpostEvent
    lhu	$a0,0($s6)
    # Line 1576
    addiu	$s6,$s6,2
    bne	$s6,$s7,.L0f0e6a98
    # Line 1577
    li	$a2,3
.L0f0e6ab8:
    # Line 1535
    lw	$v1,4($s2)
.L0f0e6abc:
    # Line 1579
    lbu	$at,1($s0)
    # Line 1535
    slt	$v1,$s1,$v1
    beqz	$v1,.L0f0e6b90
    # Line 1579
    addu	$s0,$at,$s0
.L0f0e6acc:
    # Line 1535
    lbu	$v0,0($s0)
    ld	$v1,88($sp)
    beq	$s8,$v0,.L0f0e6b10
    addiu	$s1,$s1,1
.L0f0e6adc:
    # Line 1545
    bnel	$s4,$v0,.L0f0e6abc
    # Line 1535
    lw	$v1,4($s2)
    ld	$a3,80($sp)
    # Line 1545
    beqzl	$a3,.L0f0e6abc
    # Line 1535
    lw	$v1,4($s2)
    # Line 1556
    lbu	$a4,2($s0)
    lh	$v0,18($s3)
    sd	$a4,112($sp)
    slt	$a4,$v0,$a4
    beqz	$a4,.L0f0e6a08
    # Line 1557
    move	$at,$v0
    b	.L0f0e6a08
    sd	$v0,112($sp)
.L0f0e6b10:
    # Line 1535
    beqz	$v1,.L0f0e6adc
    # Line 1544
    li	$a1,1
    lw	$t9,28($s3)
    # Line 1543
    lh	$s6,2($s0)
    # Line 1544
    move	$a0,$s3
    jalr	$t9
    # Line 1543
    addiu	$s6,$s6,1
    # Line 1545
    li	$s7,1
    slti	$at,$s6,2
    bnez	$at,.L0f0e6ab8
    # Line 1544
    andi	$s5,$v0,0xffff
.L0f0e6b3c:
    # Line 1548
    li	$a2,3
    move	$a0,$s5
    andi	$a3,$s7,0x7
    sra	$a1,$s7,0x2
    srl	$a1,$a1,0x1d
    addu	$a1,$a1,$s7
    sra	$a1,$a1,0x3
    addu	$a1,$a1,$s0
    lbu	$a1,4($a1)
    # Line 1545
    addiu	$s7,$s7,1
    # Line 1548
    la	$t9,_GLpostEvent
    srav	$a1,$a1,$a3
    andi	$a1,$a1,0x1
    dsll32	$a1,$a1,0x10
    bal _GLpostEvent
    dsra32	$a1,$a1,0x10
    # Line 1545
    addiu	$s5,$s5,1
    bne	$s6,$s7,.L0f0e6b3c
    andi	$s5,$s5,0xffff
    b	.L0f0e6abc
    # Line 1535
    lw	$v1,4($s2)
.L0f0e6b90:
    ld	$s7,152($sp)
    ld	$s5,160($sp)
    ld	$s4,168($sp)
    ld	$s8,176($sp)
    ld	$s6,184($sp)
.L0f0e6ba4:
    # Line 1581
    move	$a0,$s2
    la	$t9,XFreeDeviceState
    ld	$s3,120($sp)
    ld	$s0,136($sp)
    jalr	$t9
    ld	$s1,144($sp)
    # Line 1582
    ld	$ra,96($sp)
    ld	$gp,104($sp)
    ld	$s2,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0e6bd0:
    # Line 1530
    ld	$ra,96($sp)
    ld	$gp,104($sp)
    ld	$s3,120($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0e6be4:
    ld	$at,56($sp)
    # Line 1569
    lw	$at,12($at)
    beqz	$at,.L0f0e6a74
.L0f0e6bf0:
    ld	$a1,56($sp)
    lh	$a1,22($a1)
    beq	$a1,$v1,.L0f0e6c04
    # Line 1572
    li	$v0,1
    move	$v0,$a1
.L0f0e6c04:
    lh	$a1,18($s3)
    addiu	$a1,$a1,-1
    slt	$a3,$v0,$a1
    bnez	$a3,.L0f0e6c1c
    # Line 1573
    move	$a5,$v0
    move	$a5,$a1
.L0f0e6c1c:
    la	$a0,gl_sstatep
    addiu	$t8,$sp,0
    # Line 1574
    addu	$s5,$a5,$a5
    lw	$a0,0($a0)
    addu	$s5,$s5,$t8
    la	$t9,_GLinvertY
    lw	$a0,28($a0)
    lh	$a1,0($s5)
    jalr	$t9
    lw	$a0,112($a0)
    b	.L0f0e6a74
    sh	$v0,0($s5)
.L0f0e6c4c:
    ld	$gp,104($sp)
    # Line 1533
    ld	$ra,96($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0e6c64:
    # Line 1560
    slti	$a3,$a3,7
    beqzl	$a3,.L0f0e6a68
    # Line 1569
    lw	$v0,36($s3)
    # Line 1566
    lw	$a3,40($s3)
    ld	$a2,64($sp)
    la	$t9,sub_0f0e0000
    li	$a0,1
    lw	$a1,12($s3)
    addiu	$t9,$t9,25028
    bal _GLExtGetSoftval
    addiu	$a1,$a1,96
    b	.L0f0e6a68
    # Line 1569
    lw	$v0,36($s3)
.end _GLExtQueryDevice

# Function: gl_g_setdblights
# Declared: Line 1585 (Source lines: 1586-1606)
# Address: 0x0f0e6c98 - 0x0f0e6d84 (Size: 236 bytes, Frame: 208)
.globl gl_g_setdblights
.ent gl_g_setdblights
gl_g_setdblights:
    # Line 1586
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    sd	$gp,32($sp)
    lui	$t8,0xfff5
    addiu	$t8,$t8,-14928
    addu	$gp,$t9,$t8
    # Line 1588
    la	$s0,gl_sstatep
    # Line 1593
    li	$a1,1
    # Line 1588
    lw	$s0,0($s0)
    sd	$s1,56($sp)
    sd	$a0,24($sp)
    lw	$s0,28($s0)
    # Line 1593
    la	$t9,sub_0f0e0000
    sd	$ra,40($sp)
    # Line 1588
    lw	$s0,4($s0)
    # Line 1593
    addiu	$t9,$t9,17084
    bal _GLdevname
    move	$a0,$s0
    # Line 1594
    la	$t9,sub_0f0e0000
    # Line 1593
    move	$a0,$v0
    move	$s1,$v0
    # Line 1594
    addiu	$t9,$t9,22744
    bal _GLInitExtInput
    move	$a1,$s0
    beqz	$v0,.L0f0e6d14
    # Line 1595
    ld	$ra,40($sp)
    # Line 1594
    lw	$at,28($s1)
    lh	$at,26($at)
    bnez	$at,.L0f0e6d28
    # Line 1604
    addiu	$a3,$sp,0
    # Line 1595
    ld	$ra,40($sp)
.L0f0e6d14:
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e6d28:
    # Line 1604
    li	$a2,16
    move	$a0,$s0
    # Line 1596
    lw	$a1,4($s1)
    # Line 1601
    sw	$zero,8($sp)
    # Line 1599
    li	$v0,4
    # Line 1600
    li	$v1,12
    # Line 1602
    li	$a4,-1
    sw	$a4,12($sp)
    # Line 1600
    sw	$v1,4($sp)
    # Line 1604
    la	$t9,XChangeFeedbackControl
    # Line 1603
    ld	$a5,24($sp)
    # Line 1599
    sw	$v0,0($sp)
    # Line 1604
    jalr	$t9
    # Line 1603
    sw	$a5,16($sp)
    # Line 1605
    la	$t9,XFlush
    move	$a0,$s0
    jalr	$t9
    ld	$s1,56($sp)
    # Line 1606
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_g_setdblights

# Function: gl_g_dbtext
# Declared: Line 1614 (Source lines: 1615-1692)
# Address: 0x0f0e6d84 - 0x0f0e7090 (Size: 780 bytes, Frame: 144)
.globl gl_g_dbtext
.ent gl_g_dbtext
gl_g_dbtext:
    # Line 1615
    addiu	$sp,$sp,-1168
    sd	$s0,1072($sp)
    move	$s0,$a0
    sd	$gp,1080($sp)
    lui	$at,0xfff5
    addiu	$at,$at,-15164
    # Line 1620
    beqz	$a0,.L0f0e6e88
    # Line 1615
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 1620
    lbu	$v1,0($s0)
    beqz	$v1,.L0f0e6e88
    # Line 1622
    la	$t9,_GLinitgl
    sd	$ra,1088($sp)
    jalr	$t9
    sd	$s1,1096($sp)
    # Line 1623
    la	$s1,gl_sstatep
    lw	$s1,0($s1)
    lw	$s1,28($s1)
    la	$t9,sub_0f0e0000
    # Line 1624
    li	$a1,2
    # Line 1623
    lw	$s1,4($s1)
    addiu	$t9,$t9,17084
    # Line 1624
    bal _GLdevname
    move	$a0,$s1
    lbu	$at,0($s0)
    slti	$at,$at,3
    beqz	$at,.L0f0e6e00
    move	$a1,$v0
    beqz	$v0,.L0f0e6e04
    # Line 1625
    move	$a0,$zero
    b	.L0f0e6e04
    li	$a0,1
.L0f0e6e00:
    move	$a0,$zero
.L0f0e6e04:
    beqz	$a0,.L0f0e6e98
    sd	$a1,1056($sp)
    la	$t9,sub_0f0e0000
    move	$a0,$v0
    addiu	$t9,$t9,22744
    bal _GLInitExtInput
    move	$a1,$s1
    beqz	$v0,.L0f0e6e9c
    la	$t9,sub_0f0e0000
    # Line 1633
    lbu	$ra,0($s0)
    la	$t9,sub_0f0e0000
    # Line 1634
    ld	$a0,1056($sp)
    sd	$ra,1064($sp)
    addiu	$t9,$t9,22744
    bal _GLInitExtInput
    move	$a1,$s1
    # Line 1636
    li	$v1,1
    # Line 1634
    beqz	$v0,.L0f0e7048
    ld	$ra,1088($sp)
    # Line 1636
    ld	$a2,1056($sp)
    ld	$at,1064($sp)
    lw	$a2,4($a2)
    beq	$at,$v1,.L0f0e705c
    sd	$a2,1048($sp)
    # Line 1644
    lbu	$v0,1($s0)
    beqz	$v0,.L0f0e6f44
    # Line 1651
    addiu	$a3,$s0,1
    # Line 1644
    blez	$v0,.L0f0e6f30
    slti	$a3,$v0,11
    beqz	$a3,.L0f0e6f34
    # Line 1649
    li	$a0,1
    b	.L0f0e6f34
    move	$a0,$v0
.L0f0e6e88:
    ld	$gp,1080($sp)
    # Line 1621
    ld	$s0,1072($sp)
    jr	$ra
    addiu	$sp,$sp,1168
.L0f0e6e98:
    la	$t9,sub_0f0e0000
.L0f0e6e9c:
    # Line 1657
    move	$a0,$s1
    addiu	$t9,$t9,17084
    bal _GLdevname
    li	$a1,1
    move	$a0,$v0
    la	$t9,sub_0f0e0000
    sd	$v0,1056($sp)
    move	$ra,$v0
    addiu	$t9,$t9,22744
    # Line 1658
    bal _GLInitExtInput
    move	$a1,$s1
    beqz	$v0,.L0f0e6f68
    ld	$ra,1088($sp)
    ld	$at,1056($sp)
    lw	$at,28($at)
    lh	$at,26($at)
    li	$v0,2
    bnel	$at,$v0,.L0f0e6f6c
    ld	$gp,1080($sp)
    # Line 1667
    sw	$zero,8($sp)
    # Line 1665
    sw	$v0,0($sp)
    # Line 1666
    li	$a2,20
    sw	$a2,4($sp)
    # Line 1668
    lbu	$v1,0($s0)
    sd	$s4,1104($sp)
    beqz	$v1,.L0f0e6ffc
    move	$s4,$zero
    sd	$s3,1112($sp)
    move	$s3,$s0
    sd	$s6,1128($sp)
    la	$s6,__libc_attr
    sd	$s5,1136($sp)
    li	$s5,32
    sd	$s2,1120($sp)
    addiu	$s2,$sp,24
    b	.L0f0e6f9c
    lbu	$a0,0($s0)
.L0f0e6f30:
    # Line 1649
    li	$a0,1
.L0f0e6f34:
    la	$t9,sleep
    jalr	$t9
    nop
    # Line 1651
    addiu	$a3,$s0,1
.L0f0e6f44:
    move	$a0,$s1
    # Line 1650
    sb	$zero,0($s0)
    # Line 1651
    ld	$a1,1048($sp)
    la	$t9,XSGIDeviceQuery
    la	$a2,sub_0f020000
    lw	$a1,0($a1)
    jalr	$t9
    addiu	$a2,$a2,15784
    ld	$ra,1088($sp)
.L0f0e6f68:
    ld	$gp,1080($sp)
.L0f0e6f6c:
    # Line 1692
    ld	$s0,1072($sp)
    ld	$s1,1096($sp)
    jr	$ra
    addiu	$sp,$sp,1168
.L0f0e6f7c:
    # Line 1682
    sw	$a0,0($s2)
.L0f0e6f80:
    # Line 1668
    addiu	$s4,$s4,1
    lbu	$a0,1($s3)
    addiu	$s3,$s3,1
    beqz	$a0,.L0f0e6fec
    addiu	$s2,$s2,4
    addiu	$a2,$s0,255
    beq	$a2,$s3,.L0f0e6fec
.L0f0e6f9c:
    # Line 1669
    slti	$a3,$a0,32
    beqz	$a3,.L0f0e6fb0
    move	$v0,$a0
    # Line 1675
    b	.L0f0e6f80
    sw	$s5,0($s2)
.L0f0e6fb0:
    slti	$at,$v0,96
    bnez	$at,.L0f0e6f7c
    lw	$v1,0($s6)
    sll	$a2,$a0,0x2
    addu	$v1,$v1,$a2
    lw	$v1,4($v1)
    andi	$v1,$v1,0x2
    beqz	$v1,.L0f0e6fe4
    # Line 1678
    la	$t9,toupper
    jalr	$t9
    nop
    b	.L0f0e6f80
    sw	$v0,0($s2)
.L0f0e6fe4:
    b	.L0f0e6f80
    # Line 1680
    sw	$s5,0($s2)
.L0f0e6fec:
    ld	$s5,1136($sp)
    ld	$s6,1128($sp)
    ld	$s2,1120($sp)
    ld	$s3,1112($sp)
.L0f0e6ffc:
    # Line 1687
    addiu	$a3,$sp,0
    li	$a2,1
    move	$a0,$s1
    # Line 1685
    sw	$s4,12($sp)
    # Line 1687
    ld	$a1,1056($sp)
    la	$t9,XChangeFeedbackControl
    # Line 1668
    addiu	$a4,$sp,24
    # Line 1686
    sw	$a4,16($sp)
    # Line 1684
    sll	$a5,$s4,0x2
    addu	$a5,$a5,$a4
    sw	$zero,0($a5)
    # Line 1687
    jalr	$t9
    lw	$a1,4($a1)
    # Line 1689
    la	$t9,XFlush
    move	$a0,$s1
    jalr	$t9
    ld	$s4,1104($sp)
    b	.L0f0e6f68
    ld	$ra,1088($sp)
.L0f0e7048:
    ld	$gp,1080($sp)
    # Line 1635
    ld	$s0,1072($sp)
    ld	$s1,1096($sp)
    jr	$ra
    addiu	$sp,$sp,1168
.L0f0e705c:
    # Line 1641
    move	$a0,$s1
    addiu	$a3,$s0,2
    ld	$a1,1048($sp)
    la	$t9,XSGIDeviceControl
    la	$a2,sub_0f020000
    lw	$a1,0($a1)
    jalr	$t9
    addiu	$a2,$a2,15680
    # Line 1642
    la	$t9,XFlush
    jalr	$t9
    move	$a0,$s1
    b	.L0f0e6f68
    ld	$ra,1088($sp)
.end gl_g_dbtext

# Function: _GLExtGetDialFeedback
# Declared: Line 1694 (Source lines: 1696-1722)
# Address: 0x0f0e7090 - 0x0f0e71bc (Size: 300 bytes, Frame: 128)
.globl _GLExtGetDialFeedback
.ent _GLExtGetDialFeedback
_GLExtGetDialFeedback:
    # Line 1696
    addiu	$sp,$sp,-128
    sd	$s4,80($sp)
    sd	$s5,48($sp)
    move	$s5,$a1
    # Line 1703
    li	$a1,1
    sd	$s3,72($sp)
    # Line 1701
    move	$s3,$zero
    sd	$s1,56($sp)
    move	$s1,$zero
    sd	$s0,64($sp)
    move	$s0,$zero
    sd	$s8,24($sp)
    # Line 1696
    move	$s8,$a3
    sd	$s7,40($sp)
    sd	$gp,32($sp)
    sd	$ra,16($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,-15944
    addu	$gp,$t9,$ra
    # Line 1703
    la	$t9,sub_0f0e0000
    # Line 1696
    move	$s7,$a2
    sd	$s2,8($sp)
    # Line 1703
    addiu	$t9,$t9,17084
    bal _GLdevname
    # Line 1696
    move	$s2,$a0
    # Line 1704
    la	$t9,sub_0f0e0000
    # Line 1703
    move	$a0,$v0
    move	$s4,$v0
    # Line 1704
    addiu	$t9,$t9,22744
    bal _GLInitExtInput
    move	$a1,$s2
    beqz	$v0,.L0f0e7128
    ld	$ra,16($sp)
    lw	$at,28($s4)
    lh	$at,26($at)
    li	$v1,2
    beq	$at,$v1,.L0f0e7160
    # Line 1707
    la	$t9,XGetFeedbackControl
.L0f0e7128:
    ld	$gp,32($sp)
.L0f0e712c:
    # Line 1719
    sw	$s0,0($s5)
    # Line 1722
    ld	$s0,64($sp)
    ld	$s2,8($sp)
    ld	$s4,80($sp)
    ld	$s5,48($sp)
    # Line 1720
    sw	$s1,0($s7)
    # Line 1722
    ld	$s1,56($sp)
    ld	$s7,40($sp)
    # Line 1721
    sw	$s3,0($s8)
    # Line 1722
    ld	$s3,72($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0e7160:
    # Line 1707
    move	$a0,$s2
    addiu	$a2,$sp,0
    jalr	$t9
    lw	$a1,4($s4)
    # Line 1708
    move	$a0,$zero
    lw	$a1,0($sp)
    ld	$s4,80($sp)
    ld	$ra,16($sp)
    blez	$a1,.L0f0e7128
    ld	$s2,8($sp)
    li	$a2,1
.L0f0e718c:
    lw	$v1,0($v0)
    beq	$v1,$a2,.L0f0e71ac
    addiu	$a0,$a0,1
    # Line 1716
    lw	$a4,4($v0)
    # Line 1708
    bne	$a0,$a1,.L0f0e718c
    # Line 1716
    addu	$v0,$a4,$v0
    b	.L0f0e712c
    ld	$gp,32($sp)
.L0f0e71ac:
    # Line 1713
    lw	$s3,20($v0)
    # Line 1712
    lw	$s1,16($v0)
    # Line 1714
    b	.L0f0e7128
    # Line 1711
    lw	$s0,12($v0)
.end _GLExtGetDialFeedback

# Function: _GLExtChangeDialFeedback
# Declared: Line 1724 (Source lines: 1726-1745)
# Address: 0x0f0e71bc - 0x0f0e729c (Size: 224 bytes, Frame: 240)
.globl _GLExtChangeDialFeedback
.ent _GLExtChangeDialFeedback
_GLExtChangeDialFeedback:
    # Line 1726
    addiu	$sp,$sp,-112
    sd	$s1,72($sp)
    sd	$a1,40($sp)
    # Line 1732
    li	$a1,1
    sd	$a3,32($sp)
    sd	$gp,48($sp)
    sd	$ra,56($sp)
    # Line 1726
    lui	$ra,0xfff5
    addiu	$ra,$ra,-16244
    addu	$gp,$t9,$ra
    # Line 1732
    la	$t9,sub_0f0e0000
    sd	$a2,24($sp)
    sd	$s0,64($sp)
    addiu	$t9,$t9,17084
    bal _GLdevname
    # Line 1726
    move	$s0,$a0
    # Line 1733
    la	$t9,sub_0f0e0000
    # Line 1732
    move	$a0,$v0
    move	$s1,$v0
    # Line 1733
    addiu	$t9,$t9,22744
    bal _GLInitExtInput
    move	$a1,$s0
    beqz	$v0,.L0f0e7230
    # Line 1734
    ld	$ra,56($sp)
    # Line 1733
    lw	$at,28($s1)
    lh	$at,26($at)
    bnez	$at,.L0f0e7244
    # Line 1744
    addiu	$a3,$sp,0
    # Line 1734
    ld	$ra,56($sp)
.L0f0e7230:
    ld	$gp,48($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e7244:
    # Line 1744
    li	$a2,7
    move	$a0,$s0
    # Line 1735
    lw	$a1,4($s1)
    # Line 1740
    sw	$zero,8($sp)
    # Line 1738
    li	$v0,1
    # Line 1739
    li	$v1,24
    sw	$v1,4($sp)
    # Line 1738
    sw	$v0,0($sp)
    # Line 1741
    ld	$a4,40($sp)
    # Line 1743
    ld	$a6,32($sp)
    # Line 1742
    ld	$a5,24($sp)
    # Line 1744
    la	$t9,XChangeFeedbackControl
    # Line 1743
    sw	$a6,20($sp)
    # Line 1742
    sw	$a5,16($sp)
    # Line 1744
    jalr	$t9
    # Line 1741
    sw	$a4,12($sp)
    ld	$gp,48($sp)
    # Line 1745
    ld	$ra,56($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end _GLExtChangeDialFeedback

# Function: _GLExtConstrainMouse
# Declared: Line 1747 (Source lines: 1748-1769)
# Address: 0x0f0e729c - 0x0f0e73b0 (Size: 276 bytes, Frame: 224)
.globl _GLExtConstrainMouse
.ent _GLExtConstrainMouse
_GLExtConstrainMouse:
    # Line 1748
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s0,24($sp)
    sd	$gp,40($sp)
    sd	$s1,32($sp)
    lui	$s1,0xfff5
    addiu	$s1,$s1,-16468
    addu	$gp,$t9,$s1
    # Line 1751
    la	$s0,gl_sstatep
    sd	$a3,16($sp)
    sd	$a2,8($sp)
    lw	$s0,0($s0)
    sd	$a0,0($sp)
    lw	$at,-20700($gp)
    lw	$s0,28($s0)
    # Line 1748
    move	$s1,$a1
    # Line 1751
    beqz	$at,.L0f0e7398
    lw	$s0,4($s0)
    # Line 1755
    la	$t9,sub_0f0e0000
.L0f0e72e8:
    move	$a0,$s0
    addiu	$t9,$t9,17084
    bal _GLdevname
    li	$a1,4
    ld	$a3,0($sp)
    lw	$at,12($v0)
    # Line 1758
    li	$a5,257
    # Line 1755
    beqz	$at,.L0f0e7358
    ld	$ra,48($sp)
    lh	$a4,22($v0)
    li	$v1,-1
    beq	$a4,$v1,.L0f0e738c
    # Line 1757
    move	$a1,$a4
.L0f0e731c:
    # Line 1758
    beq	$a1,$s1,.L0f0e736c
    # Line 1764
    ld	$a4,16($sp)
    # Line 1758
    beql	$s1,$a5,.L0f0e7370
    # Line 1761
    ld	$a4,8($sp)
    ld	$a3,8($sp)
.L0f0e7330:
    # Line 1766
    la	$t9,XSGIMiscConstrainValuator
    move	$a0,$s0
    move	$a2,$s1
    jalr	$t9
    lw	$a1,24($v0)
    # Line 1767
    la	$t9,XFlush
    move	$a0,$s0
    jalr	$t9
    ld	$s1,32($sp)
    ld	$ra,48($sp)
.L0f0e7358:
    ld	$gp,40($sp)
    # Line 1769
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e736c:
    # Line 1761
    ld	$a4,8($sp)
.L0f0e7370:
    # Line 1760
    lw	$a3,120($a3)
    ld	$a5,16($sp)
    # Line 1761
    subu	$a4,$a3,$a4
    # Line 1760
    subu	$a3,$a3,$a5
    # Line 1761
    addiu	$a4,$a4,-1
    b	.L0f0e7330
    # Line 1760
    addiu	$a3,$a3,-1
.L0f0e738c:
    # Line 1757
    li	$a1,1
    b	.L0f0e731c
    nop
.L0f0e7398:
    # Line 1754
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,18428
    bal _GLFindCoreDevice
    move	$a0,$s0
    b	.L0f0e72e8
    # Line 1755
    la	$t9,sub_0f0e0000
.end _GLExtConstrainMouse

