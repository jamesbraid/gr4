# Source: ../MGRAS/mgras_context.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_context.c
# Total Functions: 25

.text

# Function: __glMgrIoctl
# Declared: Line 87 (Source lines: 87-91)
# Address: 0x0da6dfec - 0x0da6e020 (Size: 52 bytes, Frame: 48)
.globl __glMgrIoctl
.ent __glMgrIoctl
__glMgrIoctl:
    # Line 87
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x19
    addiu	$at,$at,1708
    addu	$gp,$t9,$at
    # Line 91
    # lw $t9, -17944($gp) # &ioctl
    sd	$ra,0($sp)
    jal	ioctl
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrIoctl

# Function: GetBoardInfo
# Declared: Line 96 (Source lines: 96-247)
# Address: 0x0da6e020 - 0x0da6e488 (Size: 1128 bytes, Frame: 144)
.ent GetBoardInfo
GetBoardInfo:
    # Line 107
    addiu	$a1,$gp,-15640
    # Line 96
    addiu	$sp,$sp,-2704
    sd	$s3,2672($sp)
    sd	$s1,2664($sp)
    # Line 105
    li	$s1,1
    # Line 107
    # lw $t9, -17940($gp) # &fopen
    sd	$s0,2656($sp)
    # Line 96
    move	$s0,$a0
    # Line 107
    la	$a0,sub_0dbe0000
    sd	$ra,2648($sp)
    jal	fopen
    addiu	$a0,$a0,-18432
    bnez	$v0,.L0da6e19c
    move	$s3,$v0
.L0da6e058:
    # Line 113
    beqz	$s1,.L0da6e39c
    # Line 118
    nop	# was lw $t9, -17936($gp) # &open
.L0da6e060:
    # Line 127
    lw	$t9,32($s0)
.L0da6e064:
    jal	open
    move	$a0,$s0
    # Line 130
    addiu	$a2,$sp,160
    li	$a1,102
    # Line 127
    sw	$v0,160($sp)
    # Line 130
    # lw $t9, -32580($gp) # &__glMgrIoctl
    # Line 128
    addiu	$a4,$sp,176
    # Line 129
    li	$a3,204
    sw	$a3,168($sp)
    # Line 128
    sw	$a4,164($sp)
    # Line 130
    bal __glMgrIoctl
    lw	$a0,31560($s0)
    bltz	$v0,.L0da6e3bc
    # Line 131
    lbu	$at,221($sp)
.L0da6e09c:
    li	$s3,1
    beq	$s3,$at,.L0da6e3d8
.L0da6e0a4:
    # Line 142
    li	$a0,25
.L0da6e0a8:
    move	$v0,$zero
    addiu	$a3,$sp,176
    lui	$a5,0x1
    addu	$a5,$s0,$a5
    addiu	$a4,$a5,-25480
.L0da6e0bc:
    addu	$v1,$v0,$a4
    addu	$at,$v0,$a3
    addiu	$v0,$v0,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da6e0bc
    sd	$at,0($v1)
    addu	$a1,$v0,$a3
    lw	$a1,0($a1)
    addu	$a2,$v0,$a4
    sw	$a1,0($a2)
    # Line 149
    lbu	$v1,-25440($a5)
    slti	$v1,$v1,2
    bnezl	$v1,.L0da6e10c
    # Line 151
    sb	$s3,-25260($a5)
    # Line 149
    lbu	$a2,-25417($a5)
    slti	$a2,$a2,3
    beqz	$a2,.L0da6e1dc
    nop
    # Line 151
    sb	$s3,-25260($a5)
.L0da6e10c:
    # Line 170
    # lw $t9, -17932($gp) # &strcmp
    addiu	$a1,$gp,-15616
    jal	strcmp
    addiu	$a0,$sp,176
    addiu	$s3,$s0,31568
    beqz	$v0,.L0da6e1e4
    # Line 173
    addiu	$a0,$sp,176
    # lw $t9, -17932($gp) # &strcmp
    la	$a1,sub_0dbe0000
    ld	$s0,2656($sp)
    jal	strcmp
    addiu	$a1,$a1,-18312
    beqz	$v0,.L0da6e218
    # Line 176
    nop	# was lw $t9, -17932($gp) # &strcmp
    la	$a1,sub_0dbe0000
    addiu	$a0,$sp,176
    jal	strcmp
    addiu	$a1,$a1,-18296
    lbu	$a5,221($sp)
    lbu	$a3,219($sp)
    beqz	$v0,.L0da6e248
    lbu	$a4,220($sp)
    # Line 180
    move	$a0,$s3
    # lw $t9, -17928($gp) # &sprintf
    la	$a1,sub_0dbe0000
    addiu	$a2,$gp,-15616
    jal	sprintf
    addiu	$a1,$a1,-18328
    ld	$s3,2672($sp)
    ld	$ra,2648($sp)
.L0da6e184:
    # Line 184
    lw	$v0,-13384($gp)
    beqz	$v0,.L0da6e26c
    # Line 205
    addiu	$a0,$sp,384
.L0da6e190:
    # Line 247
    ld	$s1,2664($sp)
    jr	$ra
    addiu	$sp,$sp,2704
.L0da6e19c:
    # Line 109
    # lw $t9, -17924($gp) # &fscanf
    move	$a0,$v0
    addiu	$a2,$sp,0
    jal	fscanf
    addiu	$a1,$gp,-15632
    # Line 110
    # lw $t9, -17932($gp) # &strcmp
    addiu	$a1,$gp,-15624
    jal	strcmp
    addiu	$a0,$sp,0
    beqz	$v0,.L0da6e3f8
    # Line 111
    li	$s1,1
.L0da6e1c8:
    # Line 113
    # lw $t9, -17920($gp) # &fclose
    jal	fclose
    move	$a0,$s3
    b	.L0da6e058
    nop
.L0da6e1dc:
    b	.L0da6e10c
    # Line 152
    sb	$zero,-25260($a5)
.L0da6e1e4:
    # Line 171
    move	$a0,$s3
    lbu	$a5,221($sp)
    lbu	$a4,220($sp)
    lbu	$a3,219($sp)
    addiu	$a2,$gp,-15616
    # lw $t9, -17928($gp) # &sprintf
    la	$a1,sub_0dbe0000
    ld	$s0,2656($sp)
    jal	sprintf
    addiu	$a1,$a1,-18328
    ld	$s3,2672($sp)
    b	.L0da6e184
    ld	$ra,2648($sp)
.L0da6e218:
    # Line 174
    move	$a0,$s3
    lbu	$a5,221($sp)
    lbu	$a4,220($sp)
    lbu	$a3,219($sp)
    # lw $t9, -17928($gp) # &sprintf
    la	$a1,sub_0dbe0000
    addiu	$a2,$gp,-15616
    jal	sprintf
    addiu	$a1,$a1,-18328
    ld	$s3,2672($sp)
    b	.L0da6e184
    ld	$ra,2648($sp)
.L0da6e248:
    # Line 177
    move	$a0,$s3
    # lw $t9, -17928($gp) # &sprintf
    la	$a1,sub_0dbe0000
    addiu	$a2,$gp,-15616
    jal	sprintf
    addiu	$a1,$a1,-18328
    ld	$s3,2672($sp)
    b	.L0da6e184
    ld	$ra,2648($sp)
.L0da6e26c:
    # Line 203
    sb	$zero,384($sp)
    # Line 196
    addiu	$a2,$v0,1
    # Line 205
    # lw $t9, -17916($gp) # &strcat
    la	$a1,sub_0dbe0000
    # Line 196
    sw	$a2,-13384($gp)
    # Line 205
    jal	strcat
    addiu	$a1,$a1,-18280
    lbu	$at,232($sp)
    slti	$at,$at,2
    bnez	$at,.L0da6e2d4
    # Line 207
    lbu	$v1,219($sp)
    li	$a1,2
    beq	$v1,$a1,.L0da6e2c8
    lbu	$at,220($sp)
.L0da6e2a4:
    beqz	$s1,.L0da6e468
    # Line 219
    addiu	$a0,$sp,384
    # lw $t9, -17916($gp) # &strcat
    la	$a1,sub_0dbe0000
    ld	$s1,2664($sp)
    jal	strcat
    addiu	$a1,$a1,-18240
    b	.L0da6e2f4
    # Line 233
    nop	# was lw $t9, -17940($gp) # &fopen
.L0da6e2c8:
    li	$a2,1
    # Line 207
    bne	$a2,$at,.L0da6e2a4
    nop
.L0da6e2d4:
    # Line 216
    beqz	$s1,.L0da6e448
    # Line 224
    addiu	$a0,$sp,384
    # lw $t9, -17916($gp) # &strcat
    la	$a1,sub_0dbe0000
    ld	$s1,2664($sp)
    jal	strcat
    addiu	$a1,$a1,-18200
    # Line 233
    # lw $t9, -17940($gp) # &fopen
.L0da6e2f4:
    addiu	$a1,$gp,-15640
    jal	fopen
    addiu	$a0,$sp,384
    beqz	$v0,.L0da6e410
    move	$a0,$v0
    sd	$a0,2640($sp)
.L0da6e30c:
    # Line 238
    move	$a3,$v0
    # lw $t9, -17912($gp) # &fread
    li	$a2,1
    li	$a1,2092
    jal	fread
    addiu	$a0,$sp,544
    li	$a2,1
    beq	$a2,$v0,.L0da6e350
    la	$a0,__iob
    # Line 239
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    addiu	$a0,$a0,32
    jal	fprintf
    addiu	$a1,$a1,-18152
    # Line 240
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
.L0da6e350:
    la	$a3,SYMBOL_LOCATION
    addiu	$a4,$sp,2592
    addiu	$v0,$sp,544
.L0da6e35c:
    # Line 242
    addiu	$a3,$a3,16
    # Line 243
    lw	$v1,56($v0)
    # Line 242
    addiu	$v0,$v0,16
    # Line 243
    lw	$at,36($v0)
    sw	$v1,-4($a3)
    lw	$a2,32($v0)
    sw	$at,-8($a3)
    lw	$a1,28($v0)
    sw	$a2,-12($a3)
    # Line 242
    bne	$v0,$a4,.L0da6e35c
    # Line 243
    sw	$a1,-16($a3)
    # Line 245
    # lw $t9, -17920($gp) # &fclose
    jal	fclose
    ld	$a0,2640($sp)
    b	.L0da6e190
    ld	$ra,2648($sp)
.L0da6e39c:
    # Line 118
    la	$a0,sub_0dbe0000
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$a0,-18400
    bgez	$v0,.L0da6e400
    # Line 120
    nop	# was lw $t9, -17900($gp) # &close
    # Line 119
    b	.L0da6e060
    li	$s1,1
.L0da6e3bc:
    # Line 131
    lw	$t9,20($s0)
    la	$a1,sub_0dbe0000
    move	$a0,$s0
    jal	close
    addiu	$a1,$a1,-18376
    b	.L0da6e09c
    lbu	$at,221($sp)
.L0da6e3d8:
    # Line 139
    # lw $t9, -17896($gp) # &getenv
    la	$a0,sub_0dbe0000
    jal	getenv
    addiu	$a0,$a0,-18352
    beqz	$v0,.L0da6e0a8
    # Line 142
    li	$a0,25
    b	.L0da6e0a4
    # Line 140
    sb	$zero,221($sp)
.L0da6e3f8:
    # Line 110
    b	.L0da6e1c8
    move	$s1,$zero
.L0da6e400:
    # Line 120
    jalr	$t9
    move	$a0,$v0
    b	.L0da6e064
    # Line 127
    lw	$t9,32($s0)
.L0da6e410:
    sd	$v0,2680($sp)
    # Line 234
    addiu	$a2,$sp,384
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    sd	$a0,2640($sp)
    la	$a0,__iob
    addiu	$a1,$a1,-18184
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 235
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0da6e30c
    ld	$v0,2680($sp)
.L0da6e448:
    # Line 222
    addiu	$a0,$sp,384
    # lw $t9, -17916($gp) # &strcat
    la	$a1,sub_0dbe0000
    ld	$s1,2664($sp)
    jal	strcat
    addiu	$a1,$a1,-18216
    b	.L0da6e2f4
    # Line 233
    nop	# was lw $t9, -17940($gp) # &fopen
.L0da6e468:
    # Line 217
    addiu	$a0,$sp,384
    # lw $t9, -17916($gp) # &strcat
    la	$a1,sub_0dbe0000
    ld	$s1,2664($sp)
    jal	strcat
    addiu	$a1,$a1,-18264
    b	.L0da6e2f4
    # Line 233
    nop	# was lw $t9, -17940($gp) # &fopen
.end GetBoardInfo

# Function: InitTables
# Declared: Line 250 (Source lines: 250-351)
# Address: 0x0da6e488 - 0x0da6e6e8 (Size: 608 bytes, Frame: 192)
.ent InitTables
InitTables:
    # Line 250
    addiu	$sp,$sp,-64
    sd	$ra,56($sp)
    sdc1	$f30,0($sp)
    # Line 270
    ldc1	$f30,_lit8_3fb0000000000000
    sd	$s0,16($sp)
    move	$s0,$zero
    sd	$s4,8($sp)
    move	$s4,$zero
    sd	$s5,24($sp)
    # Line 269
    li	$s5,128
    # Line 266
    li	$v0,512
    # Line 261
    li	$a0,32
    # Line 264
    lui	$v1,0x8000
    ori	$v1,$v1,0x214
    sd	$s8,40($sp)
    # Line 250
    la	$s8,SYMBOL_LOCATION
    sd	$s7,32($sp)
    # Line 260
    li	$s7,0x8204
    # Line 267
    lw	$at,776($s8)
    sd	$s1,48($sp)
    # Line 260
    lui	$s1,0x7
    ori	$s1,$s1,0x4080
    sw	$s7,0($s1)
    # Line 261
    sw	$a0,0($s1)
    # Line 264
    sw	$v1,0($s1)
    # Line 265
    sw	$zero,0($s1)
    # Line 266
    sw	$v0,0($s1)
    # Line 267
    sw	$at,0($s1)
    # Line 268
    sw	$zero,0($s1)
    # Line 269
    sw	$s5,0($s1)
.L0da6e500:
    # Line 271
    mtc1	$s0,$f12
    nop
    cvt.d.w	$f12,$f12
    # lw $t9, -17892($gp) # &exp
    # Line 270
    addiu	$s0,$s0,-1
    addiu	$s4,$s4,1
    # Line 271
    jal	exp
    mul.d	$f12,$f12,$f30
    cvt.s.d	$f0,$f0
    # Line 270
    bne	$s4,$s5,.L0da6e500
    # Line 272
    swc1	$f0,0($s1)
    # Line 286
    ldc1	$f30,_lit8_3f30000000000000
    move	$s0,$zero
    move	$s4,$zero
    # Line 285
    li	$s5,256
    # Line 282
    li	$at,1024
    # Line 283
    lw	$a0,780($s8)
    # Line 277
    li	$v1,64
    # Line 280
    lui	$v0,0x8000
    ori	$v0,$v0,0x414
    # Line 274
    sw	$zero,0($s1)
    # Line 276
    sw	$s7,0($s1)
    # Line 277
    sw	$v1,0($s1)
    # Line 280
    sw	$v0,0($s1)
    # Line 281
    sw	$zero,0($s1)
    # Line 282
    sw	$at,0($s1)
    # Line 283
    sw	$a0,0($s1)
    # Line 284
    sw	$zero,0($s1)
    # Line 285
    sw	$s5,0($s1)
.L0da6e574:
    # Line 287
    mtc1	$s0,$f12
    nop
    cvt.d.w	$f12,$f12
    # lw $t9, -17892($gp) # &exp
    # Line 286
    addiu	$s0,$s0,-1
    addiu	$s4,$s4,1
    # Line 287
    jal	exp
    mul.d	$f12,$f12,$f30
    cvt.s.d	$f0,$f0
    # Line 286
    bne	$s4,$s5,.L0da6e574
    # Line 288
    swc1	$f0,0($s1)
    ldc1	$f30,0($sp)
    ld	$s5,24($sp)
    ld	$s0,16($sp)
    ld	$s4,8($sp)
    ld	$ra,56($sp)
    # Line 286
    la	$a3,sub_0dbf0000
    # Line 310
    li	$a5,156
    # Line 307
    li	$a6,624
    # Line 286
    addiu	$a3,$a3,-1584
    # Line 310
    addiu	$a1,$a3,624
    move	$a2,$a3
    # Line 308
    lw	$v1,980($s8)
    # Line 302
    li	$a7,39
    # Line 305
    lui	$a4,0x8000
    ori	$a4,$a4,0x284
    # Line 290
    sw	$zero,0($s1)
    # Line 301
    sw	$s7,0($s1)
    # Line 302
    sw	$a7,0($s1)
    # Line 305
    sw	$a4,0($s1)
    # Line 306
    sw	$zero,0($s1)
    # Line 307
    sw	$a6,0($s1)
    # Line 308
    sw	$v1,0($s1)
    # Line 309
    sw	$zero,0($s1)
    # Line 310
    sw	$a5,0($s1)
.L0da6e600:
    # Line 311
    addiu	$a2,$a2,16
    # Line 312
    lw	$at,-4($a2)
    lw	$a0,-16($a2)
    lw	$v1,-12($a2)
    lw	$v0,-8($a2)
    sw	$a0,0($s1)
    sw	$v1,0($s1)
    sw	$v0,0($s1)
    # Line 311
    bne	$a2,$a1,.L0da6e600
    # Line 312
    sw	$at,0($s1)
    # Line 326
    lw	$a2,984($s8)
    # Line 314
    sw	$zero,0($s1)
    # Line 319
    sw	$s7,0($s1)
    # Line 320
    sw	$a7,0($s1)
    # Line 323
    sw	$a4,0($s1)
    # Line 324
    sw	$zero,0($s1)
    # Line 325
    sw	$a6,0($s1)
    # Line 326
    sw	$a2,0($s1)
    move	$a2,$a3
    # Line 327
    sw	$zero,0($s1)
    # Line 328
    sw	$a5,0($s1)
.L0da6e654:
    # Line 329
    addiu	$a2,$a2,16
    # Line 330
    lw	$at,620($a2)
    lw	$a0,608($a2)
    lw	$v1,612($a2)
    lw	$v0,616($a2)
    sw	$a0,0($s1)
    sw	$v1,0($s1)
    sw	$v0,0($s1)
    # Line 329
    bne	$a2,$a1,.L0da6e654
    # Line 330
    sw	$at,0($s1)
    # Line 344
    lw	$a2,988($s8)
    ld	$s8,40($sp)
    # Line 332
    sw	$zero,0($s1)
    # Line 337
    sw	$s7,0($s1)
    ld	$s7,32($sp)
    # Line 338
    sw	$a7,0($s1)
    # Line 341
    sw	$a4,0($s1)
    # Line 342
    sw	$zero,0($s1)
    # Line 343
    sw	$a6,0($s1)
    # Line 344
    sw	$a2,0($s1)
    move	$a2,$a3
    # Line 345
    sw	$zero,0($s1)
    # Line 346
    sw	$a5,0($s1)
.L0da6e6b0:
    # Line 347
    addiu	$a2,$a2,16
    # Line 348
    lw	$at,1244($a2)
    lw	$a0,1232($a2)
    lw	$v1,1236($a2)
    lw	$v0,1240($a2)
    sw	$a0,0($s1)
    sw	$v1,0($s1)
    sw	$v0,0($s1)
    # Line 347
    bne	$a2,$a1,.L0da6e6b0
    # Line 348
    sw	$at,0($s1)
    # Line 350
    sw	$zero,0($s1)
    # Line 351
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end InitTables

# Function: __glMgrAllocAccum
# Declared: Line 354 (Source lines: 354-357)
# Address: 0x0da6e6e8 - 0x0da6e728 (Size: 64 bytes, Frame: 32)
.globl __glMgrAllocAccum
.ent __glMgrAllocAccum
__glMgrAllocAccum:
    # Line 355
    lw	$a2,3416($a0)
    # Line 354
    move	$at,$a0
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-80
    addu	$gp,$t9,$v0
    # Line 355
    lw	$t9,31468($a0)
    sd	$ra,0($sp)
    # Line 354
    move	$a0,$a1
    # Line 355
    jalr	$t9
    lw	$a1,3412($at)
    # Line 357
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrAllocAccum

# Function: SwapBuffers
# Declared: Line 360 (Source lines: 360-389)
# Address: 0x0da6e728 - 0x0da6e7e4 (Size: 188 bytes, Frame: 192)
.ent SwapBuffers
SwapBuffers:
    # Line 360
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lbu	$at,3106($a0)
    lui	$v0,0x19
    addiu	$v0,$v0,-144
    beqz	$at,.L0da6e7a8
    addu	$gp,$t9,$v0
    # Line 381
    addiu	$a2,$sp,0
    li	$a1,1005
    sd	$ra,32($sp)
    # Line 377
    lw	$v1,31564($s0)
    # Line 379
    sw	$zero,4($sp)
    # Line 381
    # lw $t9, -32580($gp) # &__glMgrIoctl
    # Line 378
    sw	$zero,8($sp)
    # Line 377
    sw	$v1,0($sp)
    # Line 381
    bal __glMgrIoctl
    lw	$a0,31560($s0)
    bltz	$v0,.L0da6e7c8
    ld	$ra,32($sp)
.L0da6e77c:
    # Line 382
    li	$a1,0x91fc
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    lw	$a1,1048($a1)
    lw	$a1,12($a1)
    bnez	$a1,.L0da6e7b8
    # Line 386
    nop	# was lw $t9, -30772($gp) # &mgrTM_ProcessTextureUsage
.L0da6e798:
    ld	$gp,16($sp)
    # Line 389
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da6e7a8:
    ld	$gp,16($sp)
    # Line 365
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da6e7b8:
    # Line 386
    jal	mgrTM_ProcessTextureUsage
    move	$a0,$s0
    b	.L0da6e798
    ld	$ra,32($sp)
.L0da6e7c8:
    # Line 382
    lw	$t9,20($s0)
    la	$a1,sub_0dbe0000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,-18112
    b	.L0da6e77c
    ld	$ra,32($sp)
.end SwapBuffers

# Function: __glMgrim_RenderMode
# Declared: Line 392 (Source lines: 393-614)
# Address: 0x0da6e7e4 - 0x0da6ee54 (Size: 1648 bytes, Frame: 208)
.globl __glMgrim_RenderMode
.ent __glMgrim_RenderMode
__glMgrim_RenderMode:
    # Line 399
    li	$a3,1
    # Line 393
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    # Line 399
    lw	$s0,__glCurrentContext
    sd	$zero,24($sp)
    sd	$s1,32($sp)
    # Line 393
    move	$s1,$a0
    sd	$gp,40($sp)
    # Line 399
    lw	$at,__glBeginMode
    # Line 393
    lui	$v0,0x19
    addiu	$v0,$v0,-332
    # Line 399
    beq	$at,$a3,.L0da6ecc4
    # Line 393
    addu	$gp,$t9,$v0
    # Line 406
    lw	$v0,3092($s0)
    sd	$s2,16($sp)
    li	$a0,7168
    beq	$a0,$v0,.L0da6ea04
    li	$s2,7169
    beq	$s2,$v0,.L0da6e9b4
    li	$v1,7170
    beql	$v1,$v0,.L0da6ec0c
    sd	$ra,56($sp)
.L0da6e83c:
    # Line 462
    beq	$s2,$s1,.L0da6e940
    li	$a1,7170
    beq	$s1,$a1,.L0da6ea0c
    # Line 485
    li	$v1,7170
.L0da6e84c:
    # Line 482
    sw	$s1,3092($s0)
    # Line 483
    li	$at,2
    sw	$at,__glBeginMode
    lw	$a2,11828($s0)
    # Line 485
    lw	$v0,3092($s0)
    # Line 568
    li	$at,-2
    # Line 483
    ori	$a2,$a2,0x1
    # Line 485
    beq	$a0,$v0,.L0da6e97c
    # Line 483
    sw	$a2,11828($s0)
    # Line 485
    beql	$s2,$v0,.L0da6ea48
    # Line 513
    lbu	$a1,4568($s0)
    # Line 485
    beq	$v0,$v1,.L0da6e8b0
    # Line 567
    lui	$s1,0x1
    # Line 611
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 612
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    ld	$ra,56($sp)
    ld	$s1,32($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6e8b0:
    # Line 567
    addu	$s1,$s0,$s1
    lw	$v0,-28068($s1)
    andi	$a1,$v0,0x1
    beqz	$a1,.L0da6eb04
    # Line 568
    and	$at,$v0,$at
    beqz	$at,.L0da6eae8
    sw	$at,-28068($s1)
    # Line 570
    lbu	$v1,-28064($s1)
.L0da6e8d0:
    beqz	$v1,.L0da6ecf0
.L0da6e8d4:
    # Line 590
    li	$a2,4
.L0da6e8d8:
    # Line 579
    lw	$v0,4604($s0)
    # Line 592
    li	$at,2048
    # Line 579
    beqz	$v0,.L0da6ed24
    lw	$s2,0($sp)
    # Line 593
    ld	$a1,24($sp)
    # Line 587
    sw	$v0,4608($s0)
    # Line 588
    sb	$zero,4600($s0)
    # Line 589
    sw	$zero,4616($s0)
    # Line 593
    sw	$zero,-31272($s1)
    # Line 592
    sw	$at,-31280($s1)
    # Line 591
    sw	$zero,-31284($s1)
    # Line 593
    beqz	$a1,.L0da6ebb4
    # Line 590
    sw	$a2,-31288($s1)
.L0da6e90c:
    # Line 607
    li	$a2,0xcb04
    lw	$v1,-31276($s1)
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$a2,0($a1)
    sw	$v1,0($a1)
.L0da6e924:
    ld	$gp,40($sp)
.L0da6e928:
    # Line 614
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    move	$v0,$s2
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6e940:
    # Line 464
    lw	$a2,4572($s0)
    bnez	$a2,.L0da6e84c
    # Line 485
    li	$v1,7170
    # Line 465
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 466
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    ld	$ra,56($sp)
    ld	$s1,32($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6e97c:
    # Line 487
    lui	$s1,0x1
    addu	$s1,$s0,$s1
    lw	$v0,-28068($s1)
    andi	$at,$v0,0x1
    beqz	$at,.L0da6e9a0
    # Line 488
    li	$at,-2
    and	$at,$v0,$at
    beqz	$at,.L0da6ed54
    sw	$at,-28068($s1)
.L0da6e9a0:
    # Line 490
    lbu	$v1,-28064($s1)
    beql	$v1,$a3,.L0da6eb88
    # Line 498
    lw	$v0,-28068($s1)
.L0da6e9ac:
    # Line 510
    b	.L0da6e924
    lw	$s2,0($sp)
.L0da6e9b4:
    # Line 411
    li	$a1,0x85dc
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    beqzl	$a1,.L0da6eb14
    # Line 425
    lbu	$a1,4568($s0)
    sd	$ra,56($sp)
    # Line 412
    li	$a2,0xc800
    # Line 413
    # lw $t9, -30476($gp) # &__glMgrGetFeedbackData
    # Line 412
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    # Line 413
    jal	__glMgrGetFeedbackData
    # Line 412
    sw	$a2,0($a3)
    li	$a0,7168
    li	$a3,1
    # Line 413
    sw	$v0,0($sp)
    bne	$s2,$s1,.L0da6eb24
    ld	$ra,56($sp)
    # Line 419
    li	$at,1
    b	.L0da6e83c
    sd	$at,24($sp)
.L0da6ea04:
    # Line 409
    b	.L0da6e83c
    # Line 408
    sw	$zero,0($sp)
.L0da6ea0c:
    # Line 470
    lw	$v1,4604($s0)
    bnez	$v1,.L0da6e84c
    # Line 485
    li	$v1,7170
    # Line 471
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 472
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    ld	$ra,56($sp)
    ld	$s1,32($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6ea48:
    # Line 513
    beqz	$a1,.L0da6ecb4
    lw	$v0,4572($s0)
    li	$s1,-1
.L0da6ea54:
    beqz	$v0,.L0da6edd8
    move	$s2,$s1
    # Line 521
    lui	$s1,0x1
    # Line 520
    sw	$v0,4576($s0)
    # Line 521
    sb	$zero,4568($s0)
    addu	$s1,$s0,$s1
    lw	$a2,-31268($s1)
    beqz	$a2,.L0da6ec90
    # Line 528
    ld	$at,24($sp)
    sw	$zero,-31252($s1)
    # Line 527
    li	$v1,2048
    # Line 528
    beqz	$at,.L0da6ed70
    # Line 527
    sw	$v1,-31260($s1)
.L0da6ea88:
    # Line 539
    lw	$a1,-31256($s1)
    # Line 538
    lw	$at,4584($s0)
    # Line 537
    li	$v1,0xca08
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    sw	$v1,0($a2)
    # Line 538
    sw	$at,0($a2)
    # Line 539
    sw	$a1,0($a2)
.L0da6eaa8:
    # Line 544
    lbu	$at,-28064($s1)
.L0da6eaac:
    bnel	$at,$a3,.L0da6e928
    ld	$gp,40($sp)
    # Line 552
    lw	$v0,-28068($s1)
    beqz	$v0,.L0da6e924
    sb	$zero,-28064($s1)
    sd	$v0,8($sp)
    # Line 560
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    move	$a0,$s0
    sd	$ra,56($sp)
    jal	__glMgrEnterSoftPath
    # Line 559
    sw	$zero,-28068($s1)
    ld	$v1,8($sp)
    ld	$ra,56($sp)
    # Line 561
    b	.L0da6e924
    sw	$v1,-28068($s1)
.L0da6eae8:
    # Line 570
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,56($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    li	$a3,1
    lw	$v0,-28068($s1)
    ld	$ra,56($sp)
.L0da6eb04:
    beqz	$v0,.L0da6e8d8
    # Line 590
    li	$a2,4
    b	.L0da6e8d0
    # Line 570
    lbu	$v1,-28064($s1)
.L0da6eb14:
    # Line 425
    beqz	$a1,.L0da6ed10
    # Line 429
    li	$v0,-1
.L0da6eb1c:
    b	.L0da6e83c
    sw	$v0,0($sp)
.L0da6eb24:
    # Line 421
    # lw $t9, -32128($gp) # &__glMgrim_Flush
    jal	__glMgrim_Flush
    nop
    # Line 422
    lw	$a0,31560($s0)
    li	$a2,0x85e4
    # lw $t9, -17944($gp) # &ioctl
    addu	$a2,$s0,$a2
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0x13
    li	$a0,7168
    li	$a3,1
    bgez	$v0,.L0da6e83c
    ld	$ra,56($sp)
    # Line 424
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-18088
    # Line 425
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    li	$a0,7168
    li	$a3,1
    b	.L0da6e83c
    ld	$ra,56($sp)
.L0da6eb88:
    # Line 498
    beqz	$v0,.L0da6e9ac
    sb	$zero,-28064($s1)
    # Line 504
    move	$s2,$v0
    # Line 506
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    move	$a0,$s0
    sd	$ra,56($sp)
    jal	__glMgrEnterSoftPath
    # Line 505
    sw	$zero,-28068($s1)
    # Line 507
    sw	$s2,-28068($s1)
    b	.L0da6e9ac
    ld	$ra,56($sp)
.L0da6ebb4:
    # Line 599
    # lw $t9, -32128($gp) # &__glMgrim_Flush
    sd	$ra,56($sp)
    jal	__glMgrim_Flush
    nop
    # Line 600
    lw	$a0,31560($s0)
    li	$a2,0x85d0
    # lw $t9, -17944($gp) # &ioctl
    addu	$a2,$s0,$a2
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0x12
    bgez	$v0,.L0da6e90c
    ld	$ra,56($sp)
    # Line 602
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-18064
    # Line 603
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0da6e90c
    ld	$ra,56($sp)
.L0da6ec0c:
    # Line 434
    li	$a1,0xc900
    # Line 436
    # lw $t9, -30516($gp) # &__glMgrGetSelectData
    # Line 434
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    # Line 436
    jal	__glMgrGetSelectData
    # Line 434
    sw	$a1,0($a2)
    li	$a0,7168
    li	$a3,1
    li	$at,7170
    # Line 436
    bne	$at,$s1,.L0da6ec44
    ld	$ra,56($sp)
    # Line 443
    li	$v1,1
    b	.L0da6ec7c
    sd	$v1,24($sp)
.L0da6ec44:
    # Line 445
    # lw $t9, -32128($gp) # &__glMgrim_Flush
    jal	__glMgrim_Flush
    nop
    # Line 446
    lw	$a0,31560($s0)
    li	$a2,0x85d0
    # lw $t9, -17944($gp) # &ioctl
    addu	$a2,$s0,$a2
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0x13
    li	$a0,7168
    li	$a3,1
    bltz	$v0,.L0da6ee28
    ld	$ra,56($sp)
.L0da6ec7c:
    # Line 449
    lbu	$at,4600($s0)
    beqz	$at,.L0da6edd0
    # Line 453
    li	$v0,-1
.L0da6ec88:
    b	.L0da6e83c
    sw	$v0,0($sp)
.L0da6ec90:
    # Line 539
    lw	$v0,-28068($s1)
    nor	$v1,$v0,$zero
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0da6eaac
    # Line 544
    lbu	$at,-28064($s1)
    # Line 539
    beqz	$v0,.L0da6ee08
.L0da6eca8:
    # Line 544
    ori	$a1,$v0,0x1
    b	.L0da6eaa8
    sw	$a1,-28068($s1)
.L0da6ecb4:
    # Line 513
    lw	$s1,4576($s0)
    subu	$s1,$s1,$v0
    b	.L0da6ea54
    sra	$s1,$s1,0x2
.L0da6ecc4:
    # Line 399
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1282
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$ra,56($sp)
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6ecf0:
    # Line 578
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,56($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    li	$ra,1
    # Line 579
    sb	$ra,-28064($s1)
    b	.L0da6e8d4
    ld	$ra,56($sp)
.L0da6ed10:
    # Line 429
    lw	$v0,4576($s0)
    lw	$v1,4572($s0)
    subu	$v0,$v0,$v1
    b	.L0da6eb1c
    sra	$v0,$v0,0x2
.L0da6ed24:
    # Line 583
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    # Line 584
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$ra,56($sp)
    move	$v0,$s2
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6ed54:
    # Line 490
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,56($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    li	$a3,1
    b	.L0da6e9a0
    ld	$ra,56($sp)
.L0da6ed70:
    # Line 530
    # lw $t9, -32128($gp) # &__glMgrim_Flush
    sd	$ra,56($sp)
    jal	__glMgrim_Flush
    nop
    # Line 531
    lw	$a0,31560($s0)
    li	$a2,0x85e4
    # lw $t9, -17944($gp) # &ioctl
    addu	$a2,$s0,$a2
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0x12
    li	$a3,1
    bgez	$v0,.L0da6ea88
    ld	$ra,56($sp)
    # Line 533
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-18064
    # Line 534
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    li	$a3,1
    b	.L0da6ea88
    ld	$ra,56($sp)
.L0da6edd0:
    b	.L0da6ec88
    # Line 453
    lw	$v0,4616($s0)
.L0da6edd8:
    # Line 517
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    # Line 518
    ld	$s0,48($sp)
    move	$v0,$s1
    ld	$ra,56($sp)
    ld	$s1,32($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6ee08:
    # Line 543
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    sd	$ra,56($sp)
    jal	__glMgrEnterSoftPath
    move	$a0,$s0
    li	$a3,1
    lw	$v0,-28068($s1)
    b	.L0da6eca8
    ld	$ra,56($sp)
.L0da6ee28:
    # Line 448
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-18088
    # Line 449
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    li	$a0,7168
    li	$a3,1
    b	.L0da6ec7c
    ld	$ra,56($sp)
.end __glMgrim_RenderMode

# Function: DestroyContext
# Declared: Line 618 (Source lines: 618-642)
# Address: 0x0da6ee54 - 0x0da6ef28 (Size: 212 bytes, Frame: 48)
.ent DestroyContext
DestroyContext:
    # Line 618
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x19
    addiu	$at,$at,-1980
    addu	$gp,$t9,$at
    # Line 624
    # lw $t9, -31624($gp) # &__glMgrTermDLPool
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jal	__glMgrTermDLPool
    # Line 618
    move	$s0,$a0
    # Line 625
    # lw $t9, -30708($gp) # &__glMgrFreeTextureManager
    jal	__glMgrFreeTextureManager
    move	$a0,$s0
    # Line 626
    # lw $t9, -30652($gp) # &__glMgrFreeColorTableState
    jal	__glMgrFreeColorTableState
    move	$a0,$s0
    # Line 627
    # lw $t9, -30416($gp) # &__glMgrFreeConvolutionState
    jal	__glMgrFreeConvolutionState
    move	$a0,$s0
    # Line 628
    # lw $t9, -31012($gp) # &__glMgrFreeEvaluators
    jal	__glMgrFreeEvaluators
    move	$a0,$s0
    # Line 629
    # lw $t9, -30592($gp) # &__glMgrFreePixelStatState
    jal	__glMgrFreePixelStatState
    move	$a0,$s0
    # Line 630
    # lw $t9, -29824($gp) # &__glMgrFreePixelState
    jal	__glMgrFreePixelState
    move	$a0,$s0
    # Line 631
    # lw $t9, -31120($gp) # &__glMgrFreeAttributeState
    jal	__glMgrFreeAttributeState
    move	$a0,$s0
    # Line 633
    move	$a0,$s0
    lw	$t9,48($s0)
    sd	$s8,24($sp)
    # Line 634
    lui	$s8,0x1
    # Line 633
    jalr	$t9
    # Line 634
    addu	$s8,$s0,$s8
    sw	$zero,-25276($s8)
    # Line 638
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,-25252($s8)
    # Line 641
    # lw $t9, -27328($gp) # &__glDestroyContext
    move	$a0,$s0
    # Line 639
    sw	$zero,-25252($s8)
    # Line 641
    jal	__glDestroyContext
    # Line 639
    sw	$zero,-25256($s8)
    ld	$gp,16($sp)
    # Line 642
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end DestroyContext

# Function: __glMgrPassStateToHW
# Declared: Line 645 (Source lines: 645-700)
# Address: 0x0da6ef28 - 0x0da6f150 (Size: 552 bytes, Frame: 48)
.ent __glMgrPassStateToHW
__glMgrPassStateToHW:
    # Line 645
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    # Line 646
    lw	$s1,152($a0)
    sd	$s0,8($sp)
    andi	$at,$s1,0x200
    beqz	$at,.L0da6ef58
    # Line 645
    move	$s0,$a0
    # Line 649
    # lw $t9, -29668($gp) # &__glMgrPassAccum
    sd	$ra,16($sp)
    jal	__glMgrPassAccum
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6ef58:
    andi	$v0,$s1,0x4000
    beqz	$v0,.L0da6ef78
    # Line 652
    nop	# was lw $t9, -29664($gp) # &__glMgrPassColorBuffer
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glMgrPassColorBuffer
    li	$a1,1
    ld	$ra,16($sp)
.L0da6ef78:
    andi	$v1,$s1,0x1
    beqz	$v1,.L0da6ef94
    # Line 655
    nop	# was lw $t9, -29660($gp) # &__glMgrPassCurrentBuffer
    sd	$ra,16($sp)
    jal	__glMgrPassCurrentBuffer
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6ef94:
    andi	$a1,$s1,0x100
    beqz	$a1,.L0da6efb4
    # Line 658
    nop	# was lw $t9, -29656($gp) # &__glMgrPassDepthBuffer
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glMgrPassDepthBuffer
    li	$a1,1
    ld	$ra,16($sp)
.L0da6efb4:
    andi	$at,$s1,0x2000
    beqz	$at,.L0da6efd0
    # Line 661
    nop	# was lw $t9, -29652($gp) # &__glMgrPassEnables
    sd	$ra,16($sp)
    jal	__glMgrPassEnables
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6efd0:
    lui	$v0,0x1
    and	$v0,$s1,$v0
    beqz	$v0,.L0da6eff0
    # Line 664
    nop	# was lw $t9, -29648($gp) # &__glMgrPassEval
    sd	$ra,16($sp)
    jal	__glMgrPassEval
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6eff0:
    andi	$v1,$s1,0x80
    beqz	$v1,.L0da6f00c
    # Line 667
    nop	# was lw $t9, -29644($gp) # &__glMgrPassFog
    sd	$ra,16($sp)
    jal	__glMgrPassFog
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f00c:
    andi	$a1,$s1,0x40
    beqz	$a1,.L0da6f028
    # Line 670
    nop	# was lw $t9, -29640($gp) # &__glMgrPassLighting
    sd	$ra,16($sp)
    jal	__glMgrPassLighting
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f028:
    andi	$at,$s1,0x4
    beqz	$at,.L0da6f044
    # Line 673
    nop	# was lw $t9, -29636($gp) # &__glMgrPassLine
    sd	$ra,16($sp)
    jal	__glMgrPassLine
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f044:
    andi	$v0,$s1,0x20
    beqz	$v0,.L0da6f060
    # Line 676
    nop	# was lw $t9, -29632($gp) # &__glMgrPassPixel
    sd	$ra,16($sp)
    jal	__glMgrPassPixel
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f060:
    andi	$v1,$s1,0x2
    beqz	$v1,.L0da6f07c
    # Line 679
    nop	# was lw $t9, -29628($gp) # &__glMgrPassPoint
    sd	$ra,16($sp)
    jal	__glMgrPassPoint
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f07c:
    andi	$a1,$s1,0x8
    beqz	$a1,.L0da6f098
    # Line 682
    nop	# was lw $t9, -29624($gp) # &__glMgrPassPolygon
    sd	$ra,16($sp)
    jal	__glMgrPassPolygon
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f098:
    lui	$at,0x8
    and	$at,$s1,$at
    beqz	$at,.L0da6f0b8
    # Line 685
    nop	# was lw $t9, -29620($gp) # &__glMgrPassScissor
    sd	$ra,16($sp)
    jal	__glMgrPassScissor
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f0b8:
    andi	$v0,$s1,0x400
    beqz	$v0,.L0da6f0d8
    # Line 688
    nop	# was lw $t9, -29616($gp) # &__glMgrPassStencil
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glMgrPassStencil
    li	$a1,1
    ld	$ra,16($sp)
.L0da6f0d8:
    lui	$v1,0x4
    and	$v1,$s1,$v1
    beqz	$v1,.L0da6f0f8
    # Line 691
    nop	# was lw $t9, -29596($gp) # &__glMgrPassTexture
    sd	$ra,16($sp)
    jal	__glMgrPassTexture
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f0f8:
    andi	$a1,$s1,0x1000
    beqz	$a1,.L0da6f114
    # Line 694
    nop	# was lw $t9, -29612($gp) # &__glMgrPassTransform
    sd	$ra,16($sp)
    jal	__glMgrPassTransform
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f114:
    andi	$at,$s1,0x800
    beqz	$at,.L0da6f13c
    ld	$s1,0($sp)
    # Line 697
    move	$a0,$s0
    # lw $t9, -29608($gp) # &__glMgrPassViewport
    li	$a1,1
    sd	$ra,16($sp)
    jal	__glMgrPassViewport
    ld	$s1,0($sp)
    ld	$ra,16($sp)
.L0da6f13c:
    # Line 699
    li	$v0,1
    sb	$v0,31612($s0)
    # Line 700
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrPassStateToHW

# Function: __glMgrGetStateFromHW
# Declared: Line 703 (Source lines: 703-752)
# Address: 0x0da6f150 - 0x0da6f340 (Size: 496 bytes, Frame: 48)
.ent __glMgrGetStateFromHW
__glMgrGetStateFromHW:
    # Line 703
    andi	$at,$a1,0x200
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    beqz	$at,.L0da6f180
    move	$s1,$a1
    # Line 705
    # lw $t9, -29764($gp) # &__glMgrGetAccum
    sd	$ra,16($sp)
    jal	__glMgrGetAccum
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f180:
    andi	$v0,$s1,0x4000
    beqz	$v0,.L0da6f19c
    # Line 708
    nop	# was lw $t9, -29760($gp) # &__glMgrGetColorBuffer
    sd	$ra,16($sp)
    jal	__glMgrGetColorBuffer
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f19c:
    andi	$v1,$s1,0x1
    beqz	$v1,.L0da6f1b8
    # Line 711
    nop	# was lw $t9, -29756($gp) # &__glMgrGetCurrentBuffer
    sd	$ra,16($sp)
    jal	__glMgrGetCurrentBuffer
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f1b8:
    andi	$a2,$s1,0x100
    beqz	$a2,.L0da6f1d4
    # Line 714
    nop	# was lw $t9, -29752($gp) # &__glMgrGetDepthBuffer
    sd	$ra,16($sp)
    jal	__glMgrGetDepthBuffer
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f1d4:
    andi	$at,$s1,0x2000
    beqz	$at,.L0da6f1f0
    # Line 717
    nop	# was lw $t9, -29748($gp) # &__glMgrGetEnables
    sd	$ra,16($sp)
    jal	__glMgrGetEnables
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f1f0:
    andi	$v0,$s1,0x80
    beqz	$v0,.L0da6f20c
    # Line 720
    nop	# was lw $t9, -29740($gp) # &__glMgrGetFog
    sd	$ra,16($sp)
    jal	__glMgrGetFog
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f20c:
    andi	$v1,$s1,0x40
    beqz	$v1,.L0da6f228
    # Line 723
    nop	# was lw $t9, -29736($gp) # &__glMgrGetLighting
    sd	$ra,16($sp)
    jal	__glMgrGetLighting
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f228:
    andi	$a2,$s1,0x4
    beqz	$a2,.L0da6f244
    # Line 726
    nop	# was lw $t9, -29732($gp) # &__glMgrGetLine
    sd	$ra,16($sp)
    jal	__glMgrGetLine
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f244:
    andi	$at,$s1,0x20
    beqz	$at,.L0da6f260
    # Line 729
    nop	# was lw $t9, -29728($gp) # &__glMgrGetPixel
    sd	$ra,16($sp)
    jal	__glMgrGetPixel
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f260:
    andi	$v0,$s1,0x2
    beqz	$v0,.L0da6f27c
    # Line 732
    nop	# was lw $t9, -29724($gp) # &__glMgrGetPoint
    sd	$ra,16($sp)
    jal	__glMgrGetPoint
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f27c:
    andi	$v1,$s1,0x8
    beqz	$v1,.L0da6f298
    # Line 735
    nop	# was lw $t9, -29720($gp) # &__glMgrGetPolygon
    sd	$ra,16($sp)
    jal	__glMgrGetPolygon
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f298:
    lui	$a2,0x8
    and	$a2,$s1,$a2
    beqz	$a2,.L0da6f2b8
    # Line 738
    nop	# was lw $t9, -29716($gp) # &__glMgrGetScissor
    sd	$ra,16($sp)
    jal	__glMgrGetScissor
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f2b8:
    andi	$at,$s1,0x400
    beqz	$at,.L0da6f2d4
    # Line 741
    nop	# was lw $t9, -29712($gp) # &__glMgrGetStencil
    sd	$ra,16($sp)
    jal	__glMgrGetStencil
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f2d4:
    lui	$v0,0x4
    and	$v0,$s1,$v0
    beqz	$v0,.L0da6f2f4
    # Line 744
    nop	# was lw $t9, -29600($gp) # &__glMgrGetTexture
    sd	$ra,16($sp)
    jal	__glMgrGetTexture
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f2f4:
    andi	$v1,$s1,0x1000
    beqz	$v1,.L0da6f310
    # Line 747
    nop	# was lw $t9, -29708($gp) # &__glMgrGetTransform
    sd	$ra,16($sp)
    jal	__glMgrGetTransform
    move	$a0,$s0
    ld	$ra,16($sp)
.L0da6f310:
    andi	$a2,$s1,0x800
    beqz	$a2,.L0da6f334
    ld	$s1,8($sp)
    # Line 750
    # lw $t9, -29704($gp) # &__glMgrGetViewport
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glMgrGetViewport
    ld	$s1,8($sp)
    ld	$ra,16($sp)
.L0da6f334:
    # Line 752
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrGetStateFromHW

# Function: CopyContext
# Declared: Line 755 (Source lines: 755-822)
# Address: 0x0da6f340 - 0x0da6f4dc (Size: 412 bytes, Frame: 208)
.ent CopyContext
CopyContext:
    # Line 755
    addiu	$sp,$sp,-80
    sd	$s2,24($sp)
    move	$s2,$a2
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,0($sp)
    move	$s1,$a1
    sd	$s3,32($sp)
    sd	$gp,8($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-3240
    # Line 756
    lw	$at,148($a1)
    # Line 755
    addu	$gp,$t9,$v0
    # Line 756
    lw	$a4,__glCurrentContext
    andi	$at,$at,0x1
    beqz	$at,.L0da6f49c
    move	$s3,$a4
    beql	$a4,$s1,.L0da6f3ac
    # Line 784
    lw	$v1,3092($s3)
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6f3ac:
    li	$a3,7168
    beq	$v1,$a3,.L0da6f4bc
.L0da6f3b4:
    # Line 797
    move	$a1,$zero
    # Line 793
    andi	$at,$s2,0x20
    beqz	$at,.L0da6f3f8
    # Line 791
    sb	$zero,31612($s0)
    # Line 797
    lui	$a4,0x1
    li	$a0,8
    addu	$a2,$a4,$s0
    addu	$a4,$a4,$s1
    addiu	$a2,$a2,-32164
    addiu	$a4,$a4,-32164
.L0da6f3dc:
    addu	$at,$a1,$a2
    addu	$a3,$a1,$a4
    addiu	$a1,$a1,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da6f3dc
    sw	$a3,0($at)
.L0da6f3f8:
    # Line 803
    lw	$a1,1488($s0)
    sd	$ra,40($sp)
    beqz	$a1,.L0da6f414
    sw	$s2,152($s0)
    # Line 809
    lw	$t9,12($s3)
    jalr	$t9
    move	$a0,$s3
.L0da6f414:
    # Line 810
    lw	$a2,3328($s3)
    move	$a0,$s3
    lw	$t9,0($s3)
    sll	$a1,$a2,0x3
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    jalr	$t9
    sll	$a1,$a1,0x2
    lw	$a1,1652($s0)
    beqz	$a1,.L0da6f450
    sw	$v0,1488($s0)
    # Line 816
    lw	$t9,12($s3)
    jalr	$t9
    move	$a0,$s3
.L0da6f450:
    # Line 817
    lw	$t9,0($s3)
    lw	$a1,3332($s3)
    move	$a0,$s3
    jalr	$t9
    sll	$a1,$a1,0x4
    # Line 822
    move	$a2,$s2
    # lw $t9, -31116($gp) # &__glMgrCopyContext
    move	$a1,$s1
    move	$a0,$s0
    jal	__glMgrCopyContext
    # Line 817
    sw	$v0,1652($s0)
    ld	$gp,8($sp)
    # Line 822
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    ld	$ra,40($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6f49c:
    # Line 793
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6f4bc:
    # Line 788
    # lw $t9, -32744($gp) # &sub_0da70000
    move	$a0,$s1
    sd	$ra,40($sp)
    addiu	$t9,$t9,-3760
    bal __glMgrim_RenderMode
    move	$a1,$s2
    b	.L0da6f3b4
    ld	$ra,40($sp)
.end CopyContext

# Function: LoseCurrent
# Declared: Line 826 (Source lines: 826-868)
# Address: 0x0da6f4dc - 0x0da6f5c8 (Size: 236 bytes, Frame: 48)
.ent LoseCurrent
LoseCurrent:
    # Line 832
    li	$v0,7168
    # Line 826
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 832
    lw	$at,3092($a0)
    # Line 826
    lui	$v1,0x19
    addiu	$v1,$v1,-3652
    # Line 832
    bne	$at,$v0,.L0da6f59c
    # Line 826
    addu	$gp,$t9,$v1
    # Line 832
    lw	$a1,__glBeginMode
    li	$at,1
    beq	$a1,$at,.L0da6f59c
    sd	$a0,0($sp)
    # Line 835
    # lw $t9, -27300($gp) # &__glLoseCurrentBuffers
    ld	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glLoseCurrentBuffers
    move	$a1,$zero
    ld	$a0,0($sp)
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    lw	$v0,-25276($a2)
    beqz	$v0,.L0da6f554
    ld	$ra,16($sp)
    # Line 845
    lw	$a3,-25256($a2)
    beqz	$a3,.L0da6f5b0
    # Line 851
    lui	$a1,0x10
    # Line 845
    lw	$at,0($a3)
    srl	$at,$at,0x1f
    beqz	$at,.L0da6f5b0
    # Line 851
    lui	$a1,0x10
.L0da6f554:
    # Line 855
    lw	$v1,__glBeginMode
    sw	$v1,3088($a0)
    # Line 856
    sw	$zero,__glCurrentContext
    lw	$v0,4688($a0)
    ld	$gp,8($sp)
    beqz	$v0,.L0da6f594
    # Line 868
    li	$v0,1
    # Line 861
    lw	$v1,4128($zero)
    sw	$v1,4752($a0)
    # Line 862
    lw	$v0,4132($zero)
    sw	$v0,4756($a0)
    # Line 863
    lw	$at,4136($zero)
    sw	$at,4760($a0)
    # Line 864
    lw	$a1,4140($zero)
    sw	$a1,4764($a0)
    # Line 868
    li	$v0,1
.L0da6f594:
    jr	$ra
    addiu	$sp,$sp,48
.L0da6f59c:
    # Line 833
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
    # Line 851
    lui	$a1,0x10
.L0da6f5b0:
    lw	$v0,-25272($a2)
    lui	$at,0x7
    ori	$at,$at,0x8
    addu	$at,$at,$v0
    b	.L0da6f554
    sw	$a1,0($at)
.end LoseCurrent

# Function: ChangeWindowSize
# Declared: Line 871 (Source lines: 871-878)
# Address: 0x0da6f5c8 - 0x0da6f628 (Size: 96 bytes, Frame: 192)
.ent ChangeWindowSize
ChangeWindowSize:
    # Line 876
    move	$a3,$a2
    # Line 871
    move	$at,$a2
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    # Line 876
    move	$a2,$a1
    sd	$s8,8($sp)
    # Line 871
    move	$s8,$a1
    # Line 876
    move	$a1,$zero
    # Line 875
    sw	$at,3416($a0)
    # Line 876
    # lw $t9, -31212($gp) # &__glMgrim_Viewport
    sd	$ra,0($sp)
    # Line 874
    sw	$s8,3412($a0)
    # Line 876
    jal	__glMgrim_Viewport
    move	$a0,$zero
    # Line 877
    move	$a0,$zero
    # lw $t9, -31284($gp) # &__glMgrim_Scissor
    move	$a1,$zero
    move	$a2,$s8
    jal	__glMgrim_Scissor
    ld	$a3,16($sp)
    ld	$ra,0($sp)
    # Line 878
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end ChangeWindowSize

# Function: FindWindowSize
# Declared: Line 889 (Source lines: 889-899)
# Address: 0x0da6f628 - 0x0da6f6b0 (Size: 136 bytes, Frame: 192)
.ent FindWindowSize
FindWindowSize:
    # Line 889
    addiu	$sp,$sp,-64
    # Line 895
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    sd	$s7,32($sp)
    sd	$s0,24($sp)
    # Line 889
    move	$s0,$a0
    # Line 895
    lw	$t9,28($s0)
    # Line 889
    move	$s7,$a1
    sd	$ra,16($sp)
    # Line 895
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 897
    lw	$a1,8($sp)
    beqz	$s7,.L0da6f68c
    ld	$ra,16($sp)
    lw	$a2,12($sp)
    ld	$s7,32($sp)
.L0da6f66c:
    # Line 898
    # lw $t9, -32744($gp) # &sub_0da70000
.L0da6f670:
    addiu	$t9,$t9,-2616
    bal __glMgrim_RenderMode
    move	$a0,$s0
    ld	$ra,16($sp)
    # Line 899
    ld	$s0,24($sp)
.L0da6f684:
    jr	$ra
    addiu	$sp,$sp,64
.L0da6f68c:
    # Line 897
    lw	$at,3412($s0)
    lw	$a2,12($sp)
    bne	$at,$a1,.L0da6f66c
    ld	$s7,32($sp)
    lw	$v0,3416($s0)
    beql	$v0,$a2,.L0da6f684
    # Line 899
    ld	$s0,24($sp)
    b	.L0da6f670
    # Line 898
    nop	# was lw $t9, -32744($gp) # &sub_0da70000
.end FindWindowSize

# Function: ApplyViewport
# Declared: Line 902 (Source lines: 902-909)
# Address: 0x0da6f6b0 - 0x0da6f70c (Size: 92 bytes, Frame: 32)
.ent ApplyViewport
ApplyViewport:
    # Line 902
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    li	$at,0x9ca5
    addu	$at,$at,$a0
    lbu	$at,0($at)
    lui	$v0,0x19
    addiu	$v0,$v0,-4120
    beqz	$at,.L0da6f6f8
    addu	$gp,$t9,$v0
    # Line 906
    # lw $t9, -32744($gp) # &sub_0da70000
    addiu	$t9,$t9,-2520
    bal __glMgrim_RenderMode
    move	$a1,$zero
    ld	$ra,8($sp)
.L0da6f6ec:
    ld	$gp,0($sp)
    # Line 909
    jr	$ra
    addiu	$sp,$sp,32
.L0da6f6f8:
    # Line 908
    # lw $t9, -27308($gp) # &__glFindWindowSize
    jal	__glFindWindowSize
    nop
    b	.L0da6f6ec
    ld	$ra,8($sp)
.end ApplyViewport

# Function: ApplyScissor
# Declared: Line 912 (Source lines: 912-921)
# Address: 0x0da6f70c - 0x0da6f78c (Size: 128 bytes, Frame: 192)
.ent ApplyScissor
ApplyScissor:
    # Line 912
    addiu	$sp,$sp,-64
    # Line 917
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    sd	$s7,16($sp)
    # Line 912
    move	$s7,$a0
    sd	$gp,32($sp)
    lui	$at,0x19
    addiu	$at,$at,-4212
    addu	$gp,$t9,$at
    # Line 917
    lw	$t9,28($a0)
    addiu	$a2,$sp,4
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 919
    lw	$a2,8($sp)
    lw	$v0,3412($s7)
    lw	$a3,12($sp)
    bne	$v0,$a2,.L0da6f770
    ld	$ra,24($sp)
    lw	$v1,3416($s7)
    bne	$v1,$a3,.L0da6f770
    ld	$s7,16($sp)
.L0da6f764:
    ld	$gp,32($sp)
    # Line 921
    jr	$ra
    addiu	$sp,$sp,64
.L0da6f770:
    # Line 920
    # lw $t9, -31284($gp) # &__glMgrim_Scissor
    move	$a0,$zero
    move	$a1,$zero
    jal	__glMgrim_Scissor
    ld	$s7,16($sp)
    b	.L0da6f764
    ld	$ra,24($sp)
.end ApplyScissor

# Function: InitFnPtrs
# Declared: Line 927 (Source lines: 927-1038)
# Address: 0x0da6f78c - 0x0da6fa48 (Size: 700 bytes, Frame: 0)
.ent InitFnPtrs
InitFnPtrs:
    # Line 1030
    la	$a1,__glSpanRenderDepth
    sw	$a1,12516($a0)
    # Line 1025
    la	$a1,__glSpanReadStencil2
    sw	$a1,12496($a0)
    # Line 1020
    la	$a1,__glSpanReadRGBA
    # Line 1031
    la	$a2,__glSpanRenderDepth2
    # Line 1020
    sw	$a1,12476($a0)
    # Line 1013
    la	$a1,__glGenericPickCopyImage
    # Line 1031
    sw	$a2,12520($a0)
    # Line 1026
    la	$a2,__glSpanRenderCI
    # Line 1013
    sw	$a1,12632($a0)
    # Line 1005
    la	$a1,__glGenericPickTextureProcs
    # Line 1026
    sw	$a2,12500($a0)
    # Line 1021
    la	$a2,__glSpanReadRGBA2
    # Line 1005
    sw	$a1,11868($a0)
    # Line 1001
    la	$a1,__glGenericPickPointProcs
    # Line 1021
    sw	$a2,12480($a0)
    # Line 1014
    la	$a2,__glGenericPickReadImage
    # Line 1001
    sw	$a1,11880($a0)
    # Line 997
    la	$a1,__glGenericPickInvTransposeProcs
    # Line 1014
    sw	$a2,12636($a0)
    # Line 927
    la	$a2,__glNop
    # Line 997
    sw	$a1,11928($a0)
    # Line 993
    la	$a1,__glGenericPickFogProcs
    # Line 1009
    sw	$a2,12020($a0)
    # Line 1008
    sw	$a2,11936($a0)
    # Line 993
    sw	$a1,11872($a0)
    # Line 988
    la	$a1,__glMgrPickAllProcs
    # Line 989
    sw	$a2,11860($a0)
    # Line 979
    la	$a2,__glSecondLinesVertex
    # Line 988
    sw	$a1,11940($a0)
    # Line 978
    la	$a1,__glFirstLinesVertex
    # Line 979
    sw	$a2,12036($a0)
    # Line 972
    la	$a2,__glMgrBeginQuads
    # Line 978
    sw	$a1,12032($a0)
    # Line 971
    la	$a1,__glMgrBeginQStrip
    # Line 972
    sw	$a2,12128($a0)
    # Line 967
    la	$a2,__glMgrBeginPolygon
    # Line 971
    sw	$a1,12132($a0)
    # Line 966
    la	$a1,__glMgrBeginPoints
    # Line 967
    sw	$a2,12136($a0)
    # Line 960
    la	$a2,__glMgrim_Flush
    # Line 966
    sw	$a1,12100($a0)
    # Line 959
    la	$a1,__glMgrim_Finish
    # Line 960
    sw	$a2,11840($a0)
    # Line 945
    la	$a2,__glMakeIdentity
    # Line 959
    sw	$a1,11844($a0)
    # Line 944
    la	$a1,__glInvertTransposeMatrix
    # Line 945
    sw	$a2,11952($a0)
    # Line 939
    la	$a2,__glPushModelViewMatrix
    # Line 944
    sw	$a1,11948($a0)
    # Line 937
    la	$a1,__glMgrConvertStipple
    # Line 939
    sw	$a2,11960($a0)
    # Line 933
    la	$a2,__glMgrDoCopyPixels
    # Line 937
    sw	$a1,12716($a0)
    # Line 932
    la	$a1,__glMgrDrawPixels
    # Line 933
    sw	$a2,12624($a0)
    # Line 928
    la	$a2,__glDoEvalCoord1
    # Line 932
    sw	$a1,12620($a0)
    # Line 1037
    la	$a1,sub_0da70000
    # Line 928
    sw	$a2,12060($a0)
    # Line 1037
    addiu	$a1,$a1,-6360
    sw	$a1,120($a0)
    # Line 927
    la	$v1,__glComputeClipBox
    # Line 1032
    la	$at,__glSpanRenderStencil
    # Line 1033
    la	$v0,__glSpanRenderStencil2
    # Line 1034
    sw	$v1,11988($a0)
    # Line 1029
    la	$v1,__glSpanRenderRGBA2
    # Line 1033
    sw	$v0,12528($a0)
    # Line 1028
    la	$v0,__glSpanRenderRGBA
    # Line 1032
    sw	$at,12524($a0)
    # Line 1027
    la	$at,__glSpanRenderCI2
    # Line 1028
    sw	$v0,12508($a0)
    # Line 1023
    la	$v0,__glSpanReadDepth2
    # Line 1027
    sw	$at,12504($a0)
    # Line 1022
    la	$at,__glSpanReadDepth
    # Line 1029
    sw	$v1,12512($a0)
    # Line 1024
    la	$v1,__glSpanReadStencil
    # Line 1022
    sw	$at,12484($a0)
    # Line 1016
    la	$at,__glColorTableSGI
    # Line 1024
    sw	$v1,12492($a0)
    # Line 1019
    la	$v1,__glSpanReadCI2
    # Line 1023
    sw	$v0,12488($a0)
    # Line 1018
    la	$v0,__glSpanReadCI
    # Line 1019
    sw	$v1,12472($a0)
    # Line 1011
    la	$v1,__gl_varray_funcs
    # Line 1018
    sw	$v0,12468($a0)
    # Line 1007
    la	$v0,__glGenericPickVertexProcs
    # Line 1016
    sw	$at,12724($a0)
    # Line 1006
    la	$at,__glGenericPickTriangleProcs
    # Line 1007
    sw	$v0,11920($a0)
    # Line 1003
    la	$v0,__glMgrPickSpanProcs
    # Line 1006
    sw	$at,11888($a0)
    # Line 1002
    la	$at,__glMgrPickRenderBitmapProcs
    # Line 1011
    sw	$v1,12720($a0)
    # Line 1004
    la	$v1,__glMgrPickStoreProcs
    # Line 1002
    sw	$at,11892($a0)
    # Line 998
    la	$at,__glGenericPickMvpMatrixProcs
    # Line 1004
    sw	$v1,11912($a0)
    # Line 1000
    la	$v1,__glMgrPickPixelProcs
    # Line 1003
    sw	$v0,11916($a0)
    # Line 999
    la	$v0,__glGenericPickParameterClipProcs
    # Line 1000
    sw	$v1,11896($a0)
    # Line 996
    la	$v1,__glGenericPickMatrixProcs
    # Line 999
    sw	$v0,11904($a0)
    # Line 995
    la	$v0,__glMgrPickLineProcs
    # Line 998
    sw	$at,11932($a0)
    # Line 994
    la	$at,__glGenericPickTransformProcs
    # Line 995
    sw	$v0,11884($a0)
    # Line 991
    la	$v0,__glGenericPickClipProcs
    # Line 994
    sw	$at,11876($a0)
    # Line 990
    la	$at,__glGenericPickBufferProcs
    # Line 996
    sw	$v1,11924($a0)
    # Line 992
    la	$v1,__glGenericPickColorMaterialProcs
    # Line 990
    sw	$at,11908($a0)
    # Line 980
    la	$at,__glRasterPos2
    # Line 992
    sw	$v1,11864($a0)
    # Line 982
    la	$v1,__glRasterPos4
    # Line 991
    sw	$v0,11900($a0)
    # Line 981
    la	$v0,__glRasterPos3
    # Line 982
    sw	$v1,12684($a0)
    # Line 977
    la	$v1,__glOddTStripVertex
    # Line 981
    sw	$v0,12680($a0)
    # Line 976
    la	$v0,__glEvenTStripVertex
    # Line 980
    sw	$at,12676($a0)
    # Line 973
    la	$at,__glEndPrim
    # Line 976
    sw	$v0,12044($a0)
    # Line 969
    la	$v0,__glMgrBeginTFan
    # Line 973
    sw	$at,12140($a0)
    # Line 968
    la	$at,__glMgrBeginTStrip
    # Line 977
    sw	$v1,12040($a0)
    # Line 970
    la	$v1,__glMgrBeginTriangles
    # Line 968
    sw	$at,12120($a0)
    # Line 963
    la	$at,__glMgrBeginLLoop
    # Line 970
    sw	$v1,12116($a0)
    # Line 965
    la	$v1,__glMgrBeginLines
    # Line 969
    sw	$v0,12124($a0)
    # Line 964
    la	$v0,__glMgrBeginLStrip
    # Line 965
    sw	$v1,12104($a0)
    # Line 955
    la	$v1,__glNormalize
    # Line 964
    sw	$v0,12112($a0)
    # Line 951
    la	$v0,__glComputeInverseTranspose
    # Line 963
    sw	$at,12108($a0)
    # Line 949
    la	$at,__glMultMatrix
    # Line 951
    sw	$v0,11972($a0)
    # Line 941
    la	$v0,__glLoadIdentityModelViewMatrix
    # Line 949
    sw	$at,11956($a0)
    # Line 940
    la	$at,__glPopModelViewMatrix
    # Line 955
    sw	$v1,11976($a0)
    # Line 943
    la	$v1,__glCopyMatrix
    # Line 940
    sw	$at,11964($a0)
    # Line 934
    la	$at,__glRect
    # Line 943
    sw	$v1,11944($a0)
    # Line 936
    la	$v1,__glGenericValidate
    # Line 941
    sw	$v0,11968($a0)
    # Line 935
    la	$v0,__glClipPolygon
    # Line 936
    sw	$v1,11856($a0)
    # Line 931
    la	$v1,__glMgrRenderBitmap
    # Line 935
    sw	$v0,12164($a0)
    # Line 930
    la	$v0,__glDrawBitmap
    # Line 934
    sw	$at,12172($a0)
    # Line 929
    la	$at,__glDoEvalCoord2
    # Line 930
    sw	$v0,12568($a0)
    # Line 958
    la	$v0,sub_0da70000
    # Line 929
    sw	$at,12064($a0)
    # Line 957
    la	$at,sub_0da70000
    # Line 931
    sw	$v1,12572($a0)
    # Line 1036
    la	$v1,sub_0da70000
    # Line 957
    addiu	$at,$at,-2292
    # Line 958
    addiu	$v0,$v0,-2384
    # Line 1036
    addiu	$v1,$v1,-4524
    sw	$v1,84($a0)
    # Line 958
    sw	$v0,11984($a0)
    # Line 1038
    jr	$ra
    # Line 957
    sw	$at,11980($a0)
.end InitFnPtrs

# Function: InitBuffers
# Declared: Line 1044 (Source lines: 1044-1118)
# Address: 0x0da6fa48 - 0x0da6fc1c (Size: 468 bytes, Frame: 48)
.ent InitBuffers
InitBuffers:
    # Line 1058
    addiu	$a3,$a0,30716
    # Line 1044
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 1053
    li	$v1,2
    sw	$v1,__glBeginMode
    # Line 1059
    sw	$a3,11836($a0)
    # Line 1053
    lw	$v0,11828($a0)
    # Line 1059
    lbu	$at,3106($a0)
    # Line 1058
    sw	$a3,30708($a0)
    # Line 1053
    ori	$v0,$v0,0xff
    # Line 1059
    beqz	$at,.L0da6fbb4
    # Line 1053
    sw	$v0,11828($a0)
    sd	$ra,8($sp)
    # Line 1062
    lbu	$a2,3105($s0)
    # Line 1061
    addiu	$at,$s0,30936
    # Line 1062
    sw	$at,11832($s0)
    beqz	$a2,.L0da6fbdc
    # Line 1061
    sw	$at,30712($s0)
    # Line 1064
    # lw $t9, -32584($gp) # &__glMgrInitCI
    move	$a0,$a3
    bal __glMgrInitCI
    move	$a1,$s0
    # Line 1065
    # lw $t9, -32584($gp) # &__glMgrInitCI
    move	$a1,$s0
    bal __glMgrInitCI
    lw	$a0,30712($s0)
    # Line 1075
    lw	$v0,3180($s0)
.L0da6fab8:
    blezl	$v0,.L0da6fb24
    # Line 1084
    lbu	$at,3108($s0)
    sd	$s2,16($sp)
    move	$s2,$zero
    sd	$s1,24($sp)
    b	.L0da6faf4
    move	$s1,$zero
.L0da6fad4:
    # Line 1086
    # lw $t9, -32584($gp) # &__glMgrInitCI
    bal __glMgrInitCI
    move	$a1,$s0
.L0da6fae0:
    # Line 1084
    lw	$v1,3180($s0)
    addiu	$s2,$s2,1
    slt	$v1,$s2,$v1
    beqz	$v1,.L0da6fb18
    addiu	$s1,$s1,220
.L0da6faf4:
    lbu	$a2,3105($s0)
    lw	$a0,31156($s0)
    bnez	$a2,.L0da6fad4
    addu	$a0,$a0,$s1
    # Line 1088
    # lw $t9, -31452($gp) # &__glMgrInitRGB
    jal	__glMgrInitRGB
    move	$a1,$s0
    b	.L0da6fae0
    nop
.L0da6fb18:
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    # Line 1084
    lbu	$at,3108($s0)
.L0da6fb24:
    beqz	$at,.L0da6fb58
    # Line 1103
    nop	# was lw $t9, -28048($gp) # &__glInitAccum64
    move	$a1,$s0
    jal	__glInitAccum64
    addiu	$a0,$s0,31412
    # Line 1106
    la	$v0,__glMgrim_SoftAccumClear
    # Line 1105
    li	$a2,0x9268
    # Line 1104
    la	$at,__glMgrAllocAccum
    # Line 1105
    lw	$v1,31520($s0)
    addu	$a2,$a2,$s0
    # Line 1104
    sw	$at,31544($s0)
    # Line 1105
    sw	$v1,0($a2)
    # Line 1106
    sw	$v0,31520($s0)
.L0da6fb58:
    lbu	$at,3109($s0)
    beqz	$at,.L0da6fb7c
    # Line 1112
    li	$v0,1
    # Line 1110
    # lw $t9, -32556($gp) # &__glMgrInitDepth
    move	$a1,$s0
    bal __glMgrInitDepth
    addiu	$a0,$s0,31280
    b	.L0da6fb84
    # Line 1112
    lbu	$v1,3110($s0)
.L0da6fb7c:
    sw	$v0,31356($s0)
    lbu	$v1,3110($s0)
.L0da6fb84:
    beqz	$v1,.L0da6fb98
    # Line 1115
    nop	# was lw $t9, -31444($gp) # &__glMgrInitStencil
    move	$a1,$s0
    jal	__glMgrInitStencil
    addiu	$a0,$s0,31160
.L0da6fb98:
    # Line 1117
    # lw $t9, -24244($gp) # &__glUpdateDepthRange
    jal	__glUpdateDepthRange
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 1118
    jr	$ra
    addiu	$sp,$sp,48
.L0da6fbb4:
    # Line 1071
    lbu	$a2,3105($s0)
    sd	$ra,8($sp)
    beqz	$a2,.L0da6fc04
    sw	$a3,11832($s0)
    # Line 1073
    # lw $t9, -32584($gp) # &__glMgrInitCI
    move	$a0,$a3
    bal __glMgrInitCI
    move	$a1,$s0
    b	.L0da6fab8
    # Line 1075
    lw	$v0,3180($s0)
.L0da6fbdc:
    # Line 1067
    # lw $t9, -31452($gp) # &__glMgrInitRGB
    move	$a0,$a3
    jal	__glMgrInitRGB
    move	$a1,$s0
    # Line 1068
    # lw $t9, -31452($gp) # &__glMgrInitRGB
    move	$a1,$s0
    jal	__glMgrInitRGB
    lw	$a0,30712($s0)
    b	.L0da6fab8
    # Line 1075
    lw	$v0,3180($s0)
.L0da6fc04:
    # lw $t9, -31452($gp) # &__glMgrInitRGB
    move	$a0,$a3
    jal	__glMgrInitRGB
    move	$a1,$s0
    b	.L0da6fab8
    lw	$v0,3180($s0)
.end InitBuffers

# Function: InitFormatValues
# Declared: Line 1121 (Source lines: 1121-1295)
# Address: 0x0da6fc1c - 0x0da6ffb8 (Size: 924 bytes, Frame: 208)
.ent InitFormatValues
InitFormatValues:
    # Line 1121
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,40($sp)
    # Line 1127
    move	$s1,$zero
    # Line 1128
    lbu	$at,3104($a0)
    sd	$s7,24($sp)
    sd	$s5,32($sp)
    beqz	$at,.L0da6fd3c
    move	$s5,$zero
    # Line 1131
    lw	$a0,3140($s0)
    # Line 1135
    lui	$s7,0x1
    # Line 1131
    li	$v0,4
    beq	$a0,$v0,.L0da6fdf0
    li	$at,12
    li	$v1,5
    beq	$a0,$v1,.L0da6fe18
    # Line 1143
    lui	$s7,0x1
    # Line 1131
    li	$a1,8
    beq	$a0,$a1,.L0da6fe6c
    # Line 1151
    lui	$s7,0x1
    # Line 1131
    beq	$a0,$at,.L0da6fe40
    lui	$s7,0x1
    addu	$s7,$s0,$s7
.L0da6fc7c:
    # Line 1183
    li	$a2,-1793
.L0da6fc80:
    # Line 1233
    lbu	$at,3192($s0)
    # Line 1237
    li	$v1,5
    # Line 1233
    beqz	$at,.L0da6fda8
    # Line 1237
    li	$v0,4
    lw	$a0,3228($s0)
    beq	$a0,$v0,.L0da6fec8
    li	$at,12
    beq	$a0,$v1,.L0da6fed0
    li	$a1,8
    beq	$a0,$a1,.L0da6fed8
    nop
    beql	$a0,$at,.L0da6fd20
    # Line 1254
    lw	$a1,3232($s0)
.L0da6fcb4:
    # Line 1295
    ld	$s0,16($sp)
.L0da6fcb8:
    # Line 1289
    lw	$v0,-26620($s7)
    # Line 1292
    li	$a0,0x9a08
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a0,0($v1)
    # Line 1293
    sw	$s1,0($v1)
    # Line 1295
    ld	$s1,40($sp)
    # Line 1289
    and	$v0,$v0,$a2
    # Line 1294
    sw	$s5,0($v1)
    # Line 1289
    andi	$v1,$s5,0x7ff
    srl	$v1,$v1,0x8
    andi	$v1,$v1,0x7
    sll	$v1,$v1,0x8
    or	$v0,$v0,$v1
    # Line 1290
    li	$v1,-8193
    and	$v0,$v0,$v1
    andi	$v1,$s5,0x3fff
    # Line 1295
    ld	$s5,32($sp)
    # Line 1290
    srl	$v1,$v1,0xd
    andi	$v1,$v1,0x1
    sll	$v1,$v1,0xd
    or	$v0,$v0,$v1
    sw	$v0,-26620($s7)
    # Line 1295
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da6fd20:
    # Line 1254
    bnez	$a1,.L0da6fd34
    # Line 1262
    li	$s1,8960
    # Line 1254
    lw	$at,3240($s0)
    beqz	$at,.L0da6ff84
    nop
.L0da6fd34:
    b	.L0da6fcb8
    # Line 1295
    ld	$s0,16($sp)
.L0da6fd3c:
    # Line 1183
    lbu	$at,3105($s0)
    lui	$s7,0x1
    beqz	$at,.L0da6fee8
    addu	$s7,$s0,$s7
    # Line 1185
    lw	$v1,-26944($s7)
    # Line 1186
    sw	$zero,-26616($s7)
    # Line 1185
    ori	$v1,$v1,0x8000
    sw	$v1,-26944($s7)
    # Line 1187
    lw	$a0,3136($s0)
    slti	$v0,$a0,5
    beqz	$v0,.L0da6fe88
    move	$s5,$zero
    lw	$a1,3184($s0)
    beqz	$a1,.L0da6ff8c
    # Line 1202
    lui	$v0,0x83c1
    ori	$v0,$v0,0xe0f0
    # Line 1195
    lui	$v1,0x783c
    ori	$v1,$v1,0x1e0f
    sw	$v1,-26612($s7)
    # Line 1197
    sw	$zero,-26616($s7)
    # Line 1202
    sw	$v0,-26608($s7)
    # Line 1204
    lw	$at,-26616($s7)
    ori	$at,$at,0x70
    sw	$at,-26616($s7)
.L0da6fd9c:
    # Line 1209
    li	$a2,-1793
    b	.L0da6fc80
    li	$s5,1536
.L0da6fda8:
    # Line 1265
    lbu	$v1,3193($s0)
    beqzl	$v1,.L0da6fcb8
    # Line 1295
    ld	$s0,16($sp)
    # Line 1267
    lw	$a0,3224($s0)
    slti	$a1,$a0,5
    bnez	$a1,.L0da6fee0
    move	$s1,$zero
    # Line 1270
    slti	$at,$a0,9
    beqz	$at,.L0da6fef0
    nop
    lw	$v0,3272($s0)
    beqz	$v0,.L0da6fde4
    ld	$s0,16($sp)
    # Line 1276
    li	$s1,8192
    ld	$s0,16($sp)
.L0da6fde4:
    # Line 1278
    and	$s1,$a2,$s1
    b	.L0da6fcb4
    ori	$s1,$s1,0x500
.L0da6fdf0:
    # Line 1135
    addu	$s7,$s0,$s7
    # Line 1134
    move	$s5,$zero
    # Line 1136
    lui	$at,0xf0ff
    ori	$at,$at,0xf000
    # Line 1135
    lui	$v0,0xf00
    ori	$v0,$v0,0xfff
    sw	$v0,-26612($s7)
    # Line 1136
    sw	$at,-26608($s7)
    # Line 1138
    b	.L0da6fc7c
    # Line 1137
    sw	$zero,-26616($s7)
.L0da6fe18:
    # Line 1143
    addu	$s7,$s0,$s7
    # Line 1142
    li	$s5,256
    # Line 1144
    lui	$v0,0xbfff
    ori	$v0,$v0,0x8000
    # Line 1143
    lui	$v1,0x4000
    ori	$v1,$v1,0x7fff
    sw	$v1,-26612($s7)
    # Line 1144
    sw	$v0,-26608($s7)
    # Line 1146
    b	.L0da6fc7c
    # Line 1145
    sw	$zero,-26616($s7)
.L0da6fe40:
    # Line 1180
    li	$a1,15
    # Line 1157
    lw	$v1,3144($s0)
    # Line 1178
    lui	$s7,0x1
    # Line 1157
    beqz	$v1,.L0da6ff14
    # Line 1177
    li	$s5,8960
    # Line 1178
    addu	$s7,$s0,$s7
.L0da6fe58:
    li	$at,-1
    sw	$at,-26612($s7)
    # Line 1179
    sw	$at,-26608($s7)
    b	.L0da6fc7c
    # Line 1180
    sw	$a1,-26616($s7)
.L0da6fe6c:
    # Line 1150
    li	$s5,8704
    # Line 1151
    addu	$s7,$s0,$s7
    li	$at,-1
    sw	$at,-26612($s7)
    # Line 1152
    sw	$at,-26608($s7)
    # Line 1154
    b	.L0da6fc7c
    # Line 1153
    sw	$zero,-26616($s7)
.L0da6fe88:
    # Line 1209
    slti	$at,$a0,9
    beqz	$at,.L0da6fef8
    li	$a2,-1793
    lw	$v0,3184($s0)
    beqz	$v0,.L0da6ffa4
    # Line 1224
    lui	$v0,0xf
    # Line 1221
    li	$s5,8192
    # Line 1220
    li	$v1,7
    # Line 1214
    lui	$a1,0xfbfd
    ori	$a1,$a1,0xfeff
    sw	$a1,-26612($s7)
    # Line 1218
    sw	$zero,-26608($s7)
    # Line 1220
    sw	$v1,-26616($s7)
.L0da6febc:
    # Line 1226
    and	$s5,$a2,$s5
    b	.L0da6fc80
    ori	$s5,$s5,0x500
.L0da6fec8:
    # Line 1241
    b	.L0da6fcb4
    # Line 1240
    move	$s1,$zero
.L0da6fed0:
    # Line 1246
    b	.L0da6fcb4
    # Line 1245
    li	$s1,256
.L0da6fed8:
    # Line 1251
    b	.L0da6fcb4
    # Line 1250
    li	$s1,8704
.L0da6fee0:
    # Line 1270
    b	.L0da6fcb4
    li	$s1,1536
.L0da6fee8:
    b	.L0da6fc80
    # Line 1233
    li	$a2,-1793
.L0da6fef0:
    b	.L0da6fcb4
    # Line 1283
    li	$s1,1024
.L0da6fef8:
    # Line 1231
    li	$s5,1024
    # Line 1233
    lui	$at,0xff
    ori	$at,$at,0xf000
    # Line 1232
    li	$v0,4095
    sw	$v0,-26612($s7)
    b	.L0da6fc80
    # Line 1233
    sw	$at,-26608($s7)
.L0da6ff14:
    # Line 1157
    lw	$v0,3152($s0)
    bnez	$v0,.L0da6fe58
    # Line 1178
    addu	$s7,$s0,$s7
    # Line 1166
    lui	$a1,0xff
    ori	$a1,$a1,0xf000
    # Line 1165
    li	$s5,4095
    # Line 1164
    lui	$s7,0x1
    addu	$s7,$s0,$s7
    sw	$zero,-26616($s7)
    # Line 1165
    sw	$s5,-26612($s7)
    # Line 1166
    sw	$a1,-26608($s7)
    lw	$v1,148($s0)
    andi	$v1,$v1,0x6
    bnez	$v1,.L0da6fc7c
    # Line 1163
    li	$s5,9216
    # Line 1174
    addiu	$a0,$sp,0
    sd	$ra,48($sp)
    # Line 1173
    lwc1	$f0,_lit_3f800000
    # Line 1174
    # lw $t9, -18116($gp) # &__glMgrim_shadowIndexcolorDispatchTable
    # Line 1173
    mtc1	$zero,$f1
    swc1	$f0,12($sp)
    # Line 1174
    lw	$t9,84($t9)
    # Line 1173
    swc1	$f1,8($sp)
    swc1	$f1,4($sp)
    # Line 1174
    jal	__glMgrim_shadowIndexcolorDispatchTable
    # Line 1173
    swc1	$f0,0($sp)
    b	.L0da6fc7c
    ld	$ra,48($sp)
.L0da6ff84:
    # Line 1260
    b	.L0da6fcb4
    li	$s1,9216
.L0da6ff8c:
    # Line 1207
    lui	$at,0xf
    ori	$at,$at,0xf000
    # Line 1206
    li	$v0,255
    sw	$v0,-26612($s7)
    b	.L0da6fd9c
    # Line 1207
    sw	$at,-26608($s7)
.L0da6ffa4:
    # Line 1224
    ori	$v0,$v0,0xf000
    # Line 1223
    li	$v1,255
    sw	$v1,-26612($s7)
    b	.L0da6febc
    # Line 1224
    sw	$v0,-26608($s7)
.end InitFormatValues

# Function: InitTexmode1
# Declared: Line 1300 (Source lines: 1300-1310)
# Address: 0x0da6ffb8 - 0x0da70048 (Size: 144 bytes, Frame: 48)
.ent InitTexmode1
InitTexmode1:
    # Line 1300
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 1302
    li	$s0,0x8a2c
    addu	$s0,$s0,$a0
    lw	$s0,0($s0)
    sd	$s8,8($sp)
    beqz	$s0,.L0da7000c
    # Line 1300
    move	$s8,$a0
    # Line 1302
    lw	$at,196($s0)
    beqz	$at,.L0da70034
    # Line 1304
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da6ffe4:
    beqz	$s0,.L0da7000c
    sd	$ra,16($sp)
    # Line 1306
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    move	$a0,$s8
    jal	mgrTM_SendTexmode1
    lw	$a1,196($s0)
    ld	$s8,8($sp)
    ld	$ra,16($sp)
    b	.L0da7002c
    ld	$s0,0($sp)
.L0da7000c:
    # Line 1308
    move	$a0,$s8
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    move	$a1,$zero
    sd	$ra,16($sp)
    jal	mgrTM_SendTexmode1
    ld	$s0,0($sp)
    ld	$s8,8($sp)
    ld	$ra,16($sp)
.L0da7002c:
    # Line 1310
    jr	$ra
    addiu	$sp,$sp,48
.L0da70034:
    sd	$ra,16($sp)
    # Line 1304
    jalr	$t9
    move	$a0,$s0
    b	.L0da6ffe4
    ld	$ra,16($sp)
.end InitTexmode1

# Function: MakeCurrentRead
# Declared: Line 1317 (Source lines: 1323-1980)
# Address: 0x0da70048 - 0x0da711e0 (Size: 4504 bytes, Frame: 176)
.ent MakeCurrentRead
MakeCurrentRead:
    # Line 1328
    move	$a5,$zero
    # Line 1323
    addiu	$sp,$sp,-176
    sd	$zero,64($sp)
    sd	$zero,56($sp)
    sd	$zero,80($sp)
    sd	$s2,120($sp)
    move	$s2,$a2
    sd	$s1,104($sp)
    move	$s1,$a1
    sd	$s0,96($sp)
    move	$s0,$a0
    sd	$gp,112($sp)
    # Line 1331
    lui	$at,0x1
    addu	$at,$a0,$at
    sd	$at,40($sp)
    lbu	$at,-28044($at)
    # Line 1323
    lui	$v0,0x19
    addiu	$v0,$v0,-6576
    # Line 1331
    andi	$at,$at,0x80
    beqz	$at,.L0da70a34
    # Line 1323
    addu	$gp,$t9,$v0
.L0da7009c:
    # Line 1356
    xor	$a3,$s1,$s2
    sltiu	$a3,$a3,1
    sb	$a3,3276($s0)
    # Line 1367
    move	$a0,$zero
    # Line 1356
    lw	$v0,0($s2)
    # Line 1367
    addiu	$a1,$s0,3188
    # Line 1356
    li	$v1,3
    beq	$v0,$v1,.L0da7020c
    lw	$v0,3188($s0)
    # Line 1361
    lw	$a6,4($s2)
    lw	$a4,0($a6)
    beq	$a4,$v0,.L0da700f4
    # Line 1367
    move	$a2,$a6
    li	$v0,22
    # Line 1366
    li	$a5,1
.L0da700d8:
    # Line 1367
    addu	$v1,$a0,$a1
    addu	$at,$a0,$a2
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da700d8
    sw	$at,0($v1)
.L0da700f4:
    lw	$a1,3100($s0)
.L0da700f8:
    lw	$a6,4($s1)
.L0da700fc:
    lw	$v1,0($a6)
    beq	$v1,$a1,.L0da70170
    # Line 1381
    move	$a2,$a6
    # Line 1372
    lbu	$v0,3104($s0)
    # Line 1381
    move	$a0,$zero
    # Line 1372
    li	$a3,1
    beqz	$v0,.L0da70144
    sd	$a3,80($sp)
    lw	$a4,3144($s0)
    beqz	$a4,.L0da70134
    nop
    # Line 1373
    lw	$at,44($a6)
    beqz	$at,.L0da7098c
    # Line 1375
    li	$a3,1
.L0da70134:
    beqz	$v0,.L0da70148
    # Line 1381
    addiu	$a1,$s0,3100
    # Line 1375
    lw	$v1,3144($s0)
    beqz	$v1,.L0da70994
.L0da70144:
    # Line 1381
    addiu	$a1,$s0,3100
.L0da70148:
    li	$v0,22
.L0da7014c:
    addu	$a4,$a0,$a1
    addu	$a3,$a0,$a2
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da7014c
    sw	$a3,0($a4)
    sd	$ra,128($sp)
    sd	$a5,48($sp)
.L0da70170:
    # Line 1389
    sw	$s0,__glCurrentContext
    # Line 1390
    lw	$a4,3088($s0)
    sw	$a4,__glBeginMode
    # Line 1392
    lw	$t9,56($s0)
    sd	$a5,48($sp)
    sd	$ra,128($sp)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,148($s0)
    beqz	$v0,.L0da701c4
    ld	$ra,128($sp)
    andi	$at,$a0,0x2
    beqz	$at,.L0da701e8
    nop
    # Line 1407
    move	$v0,$zero
    ld	$gp,112($sp)
    ld	$s0,96($sp)
    ld	$s1,104($sp)
    ld	$s2,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da701c4:
    # Line 1446
    ld	$s2,120($sp)
    # Line 1442
    andi	$v1,$a0,0x4
    beqz	$v1,.L0da702a8
    # Line 1446
    ld	$s1,104($sp)
    move	$v0,$zero
    ld	$gp,112($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da701e8:
    # Line 1407
    beq	$s1,$s2,.L0da7024c
    # Line 1420
    andi	$at,$a0,0x4
    # Line 1412
    move	$v0,$zero
    ld	$gp,112($sp)
    ld	$s0,96($sp)
    ld	$s1,104($sp)
    ld	$s2,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da7020c:
    # Line 1356
    lw	$a1,3100($s0)
    beq	$a1,$v0,.L0da700f8
    # Line 1361
    li	$a0,22
    move	$v0,$zero
    addiu	$a6,$s0,3188
    addiu	$a2,$s0,3100
    # Line 1360
    li	$a5,1
.L0da70228:
    # Line 1361
    addu	$a4,$v0,$a6
    addu	$a3,$v0,$a2
    addiu	$v0,$v0,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70228
    sw	$a3,0($a4)
    b	.L0da700fc
    # Line 1367
    lw	$a6,4($s1)
.L0da7024c:
    # Line 1420
    la	$v1,__gl_GenericDlOps
    # Line 1419
    la	$a4,__glListExecTable
    # Line 1412
    la	$a3,__glNop
    # Line 1420
    sw	$v1,4660($s0)
    # Line 1419
    sw	$a4,4656($s0)
    # Line 1418
    sw	$a3,4652($s0)
    # Line 1416
    la	$v1,__glGenericDlistOptimizer
    # Line 1417
    sw	$a3,4648($s0)
    # Line 1415
    la	$a4,__glGenericDlistCompiler
    # Line 1416
    sw	$v1,4640($s0)
    # Line 1420
    beqz	$at,.L0da70af8
    # Line 1415
    sw	$a4,4644($s0)
.L0da7027c:
    # Line 1442
    # lw $t9, -23892($gp) # &__glPixmapMakeCurrent
    move	$a0,$s0
    jal	__glPixmapMakeCurrent
    move	$a1,$v0
    ld	$gp,112($sp)
    ld	$s0,96($sp)
    ld	$ra,128($sp)
    ld	$s1,104($sp)
    ld	$s2,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da702a8:
    # Line 1461
    sw	$zero,4660($s0)
    # Line 1460
    sw	$zero,4656($s0)
    # Line 1458
    sw	$zero,4648($s0)
    # Line 1472
    la	$v1,__pglce_dispatchState
    # Line 1459
    la	$a3,__glMgrDlistInitState
    # Line 1457
    la	$a4,__glMgrDlistOptimizer
    # Line 1455
    la	$s2,__glSPDlistCompiler
    # Line 1459
    sw	$a3,4652($s0)
    # Line 1457
    sw	$a4,4640($s0)
    # Line 1455
    sw	$s2,4644($s0)
    # Line 1467
    addiu	$s2,$s0,7712
    sw	$s2,5640($s0)
    # Line 1472
    lw	$v1,0($v1)
    # Line 1493
    li	$at,2
    # Line 1472
    sw	$v1,7704($s0)
    # Line 1493
    sw	$at,__glBeginMode
    lw	$a3,11828($s0)
    lw	$a4,148($s0)
    ori	$a3,$a3,0x80
    andi	$a4,$a4,0x1
    beqz	$a4,.L0da70b58
    sw	$a3,11828($s0)
.L0da70300:
    ld	$a2,40($sp)
    # Line 1515
    lw	$a2,-28068($a2)
    beqz	$a2,.L0da70434
    ld	$a3,40($sp)
    lbu	$a3,-28064($a3)
    bnez	$a3,.L0da70438
    ld	$a3,40($sp)
    # Line 1525
    li	$v0,371
    # Line 1521
    la	$s1,sub_0dc00000
    # Line 1525
    move	$a0,$zero
    la	$a5,__glSoftim_dispatchTable
    # Line 1521
    addiu	$s1,$s1,-19768
    # Line 1525
    addiu	$a1,$s1,4104
.L0da70334:
    addu	$at,$a0,$a5
    addu	$v1,$a0,$a1
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da70334
    sw	$at,0($v1)
    # Line 1526
    li	$a0,24
    move	$v0,$zero
    addiu	$a5,$s1,5588
    la	$a1,__glSoftim_vertexDispatchTable
.L0da70360:
    addu	$v1,$v0,$a1
    addu	$a3,$v0,$a5
    addiu	$v0,$v0,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70360
    sw	$v1,0($a3)
    # Line 1527
    li	$v0,10
    move	$a0,$zero
    addiu	$a1,$s1,5852
    la	$a5,__glSoftim_normalDispatchTable
.L0da7038c:
    addu	$a3,$a0,$a5
    addu	$a4,$a0,$a1
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da7038c
    sw	$a3,0($a4)
    # Line 1528
    li	$a0,32
    move	$v0,$zero
    addiu	$a1,$s1,5892
    la	$a5,__glSoftim_texCoordDispatchTable
.L0da703b8:
    addu	$a4,$v0,$a5
    addu	$at,$v0,$a1
    addiu	$v0,$v0,4
    lw	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da703b8
    sw	$a4,0($at)
    # Line 1529
    li	$v0,24
    move	$a0,$zero
    addiu	$a1,$s1,6020
    la	$a5,__glMG10im_rasterPosDispatchTable
.L0da703e4:
    addu	$at,$a0,$a5
    addu	$v1,$a0,$a1
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da703e4
    sw	$at,0($v1)
    # Line 1530
    li	$v0,8
    move	$a0,$zero
    addiu	$a1,$s1,6116
    la	$a5,__glSoftim_rectDispatchTable
.L0da70410:
    addu	$v1,$a0,$a5
    addu	$a3,$a0,$a1
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da70410
    sw	$v1,0($a3)
    b	.L0da70554
    la	$v0,__glMgrim_dispatchTable
.L0da70434:
    ld	$a3,40($sp)
.L0da70438:
    lbu	$a3,-25435($a3)
    beqz	$a3,.L0da70c78
    # Line 1535
    li	$a0,371
    la	$v0,__glMgrim_dispatchTable
    la	$s1,sub_0dc00000
    move	$a1,$zero
    move	$a6,$v0
    addiu	$s1,$s1,-19768
    addiu	$a5,$s1,4104
.L0da7045c:
    addu	$at,$a1,$a6
    addu	$v1,$a1,$a5
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7045c
    sw	$at,0($v1)
    # Line 1536
    li	$a0,24
    move	$a1,$zero
    addiu	$a5,$s1,5588
    la	$a6,__glMgrim_vertexDispatchTable
.L0da70488:
    addu	$v1,$a1,$a6
    addu	$a3,$a1,$a5
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70488
    sw	$v1,0($a3)
    # Line 1537
    li	$a1,10
    move	$a0,$zero
    addiu	$a5,$s1,5852
    la	$a6,__glMgrim_normalDispatchTable
.L0da704b4:
    addu	$a3,$a0,$a6
    addu	$a4,$a0,$a5
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da704b4
    sw	$a3,0($a4)
    # Line 1538
    li	$a1,32
    move	$a0,$zero
    addiu	$a5,$s1,5892
    la	$a6,__glMgrim_texCoordDispatchTable
.L0da704e0:
    addu	$a4,$a0,$a6
    addu	$at,$a0,$a5
    addiu	$a0,$a0,4
    lw	$a4,0($a4)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da704e0
    sw	$a4,0($at)
    # Line 1539
    li	$a1,24
    move	$a0,$zero
    addiu	$a5,$s1,6020
    la	$a6,__glMgrim_rasterPosDispatchTable
.L0da7050c:
    addu	$at,$a0,$a6
    addu	$v1,$a0,$a5
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da7050c
    sw	$at,0($v1)
    # Line 1540
    li	$a0,8
    move	$a1,$zero
    addiu	$a5,$s1,6116
    la	$a6,__glMgrim_rectDispatchTable
.L0da70538:
    addu	$v1,$a1,$a6
    addu	$a3,$a1,$a5
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70538
    sw	$v1,0($a3)
.L0da70554:
    # Line 1553
    li	$a0,371
    move	$a1,$zero
    addiu	$a6,$s1,2048
    la	$a5,__glmglc_dispatchTable
.L0da70564:
    addu	$a3,$a1,$a5
    addu	$a4,$a1,$a6
    addiu	$a1,$a1,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70564
    sw	$a3,0($a4)
    # Line 1554
    li	$a1,24
    move	$a0,$zero
    addiu	$a5,$s1,3532
    la	$a6,__glmglc_vertexDispatchTable
.L0da70590:
    addu	$a4,$a0,$a6
    addu	$at,$a0,$a5
    addiu	$a0,$a0,4
    lw	$a4,0($a4)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da70590
    sw	$a4,0($at)
    # Line 1555
    li	$a1,10
    move	$a0,$zero
    addiu	$a5,$s1,3796
    la	$a6,__glmglc_normalDispatchTable
.L0da705bc:
    addu	$at,$a0,$a6
    addu	$v1,$a0,$a5
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da705bc
    sw	$at,0($v1)
    # Line 1556
    li	$a1,24
    move	$a0,$zero
    addiu	$a5,$s1,3964
    la	$a6,__glmglc_rasterPosDispatchTable
.L0da705e8:
    addu	$v1,$a0,$a6
    addu	$a3,$a0,$a5
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da705e8
    sw	$v1,0($a3)
    # Line 1557
    li	$a1,8
    move	$a0,$zero
    addiu	$a6,$s1,4060
    la	$a5,__glmglc_rectDispatchTable
.L0da70614:
    addu	$a3,$a0,$a5
    addu	$a4,$a0,$a6
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da70614
    sw	$a3,0($a4)
    # Line 1558
    li	$a1,32
    move	$a0,$zero
    addiu	$a5,$s1,3836
    la	$a6,__glmglc_texCoordDispatchTable
.L0da70640:
    addu	$a4,$a0,$a6
    addu	$at,$a0,$a5
    addiu	$a0,$a0,4
    lw	$a4,0($a4)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da70640
    sw	$a4,0($at)
    lbu	$at,3104($s0)
    beqz	$at,.L0da70bec
    nop
    beqz	$a2,.L0da70678
    ld	$v1,40($sp)
    lbu	$v1,-28064($v1)
    beqz	$v1,.L0da70d98
.L0da70678:
    # Line 1564
    li	$a0,42
    move	$a1,$zero
    addiu	$a5,$s1,5684
    la	$a2,__glMgrim_shadowIndexcolorDispatchTable
.L0da70688:
    addu	$a3,$a1,$a2
    addu	$a4,$a1,$a5
    addiu	$a1,$a1,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70688
    sw	$a3,0($a4)
    # Line 1567
    li	$a0,42
.L0da706a8:
    move	$a1,$zero
    addiu	$a2,$s1,3628
    # Line 1566
    la	$at,__glim_IndexMask
    # Line 1565
    la	$a4,__glMgrim_ColorMask
    # Line 1567
    la	$a5,__glmglc_shadowIndexcolorDispatchTable
    # Line 1566
    sw	$at,4400($s1)
    # Line 1565
    sw	$a4,4392($s1)
.L0da706c4:
    # Line 1567
    addu	$v1,$a1,$a5
    addu	$a3,$a1,$a2
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da706c4
    sw	$v1,0($a3)
    # Line 1569
    la	$a4,__glsplc_IndexMask
    # Line 1568
    la	$a3,__glMgrlc_ColorMask
    # Line 1569
    sw	$a4,2344($s1)
    # Line 1568
    sw	$a3,2336($s1)
.L0da706f0:
    # Line 1582
    li	$a0,257
    move	$a1,$zero
    addiu	$a2,$s0,7712
    addiu	$a5,$s1,4104
.L0da70700:
    addu	$at,$a1,$a5
    addu	$v1,$a1,$a2
    addiu	$a1,$a1,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70700
    sd	$at,0($v1)
    # Line 1583
    li	$a0,257
    move	$a1,$zero
    addiu	$a2,$s0,5648
    addiu	$a5,$s1,2048
.L0da7072c:
    addu	$v1,$a1,$a5
    addu	$a3,$a1,$a2
    addiu	$a1,$a1,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7072c
    sd	$v1,0($a3)
    # Line 1587
    lw	$t9,40($s0)
    ld	$a1,40($sp)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,-25272($a1)
    # Line 1588
    lw	$t9,52($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 1587
    sw	$v0,31560($s0)
    # Line 1588
    lw	$a0,148($s0)
    andi	$a3,$a0,0x1
    beqz	$a3,.L0da70f30
.L0da70778:
    # Line 1649
    andi	$a4,$a0,0x2
.L0da7077c:
    beqz	$a4,.L0da70794
    ld	$at,80($sp)
    bnez	$at,.L0da70798
    # Line 1651
    nop	# was lw $t9, -32744($gp) # &sub_0da70000
    ld	$v1,48($sp)
    # Line 1649
    beqz	$v1,.L0da707b4
.L0da70794:
    # Line 1651
    nop	# was lw $t9, -32744($gp) # &sub_0da70000
.L0da70798:
    addiu	$t9,$t9,-1464
    bal __glMgrim_RenderMode
    move	$a0,$s0
    # Line 1652
    # lw $t9, -32744($gp) # &sub_0da70000
    addiu	$t9,$t9,-996
    bal __glMgrim_RenderMode
    move	$a0,$s0
.L0da707b4:
    ld	$at,80($sp)
    beqz	$at,.L0da707dc
    ld	$a4,56($sp)
    # Line 1657
    lbu	$v1,3104($s0)
    # Line 1656
    li	$a4,0x9f04
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    sw	$a4,0($a3)
    # Line 1657
    sw	$v1,0($a3)
    ld	$a4,56($sp)
.L0da707dc:
    # Line 1659
    bnez	$a4,.L0da707f0
    # Line 1661
    nop	# was lw $t9, -32744($gp) # &sub_0da70000
    ld	$at,64($sp)
    # Line 1659
    beqz	$at,.L0da707fc
    # Line 1661
    nop	# was lw $t9, -32744($gp) # &sub_0da70000
.L0da707f0:
    addiu	$t9,$t9,-72
    bal __glMgrim_RenderMode
    move	$a0,$s0
.L0da707fc:
    ld	$at,56($sp)
    beqz	$at,.L0da70814
    # Line 1687
    li	$v1,0x9e00
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    sw	$v1,0($a3)
.L0da70814:
    sd	$s2,72($sp)
    # Line 1695
    # lw $t9, -27304($gp) # &__glMakeCurrentBuffers
    addiu	$a1,$sp,16
    move	$a0,$s0
    jal	__glMakeCurrentBuffers
    # Line 1694
    sw	$zero,16($sp)
    # Line 1695
    lw	$a0,148($s0)
    andi	$a4,$a0,0x2
    beqz	$a4,.L0da70dd4
    move	$s2,$v0
.L0da7083c:
    # Line 1702
    andi	$at,$a0,0x6
    beqz	$at,.L0da70dec
    # Line 1843
    andi	$v1,$s2,0xff
    beqz	$v1,.L0da70858
    # Line 1852
    nop	# was lw $t9, -27308($gp) # &__glFindWindowSize
    jal	__glFindWindowSize
    move	$a0,$s0
.L0da70858:
    ld	$a3,80($sp)
    beqz	$a3,.L0da7086c
    # Line 1870
    nop	# was lw $t9, -32056($gp) # &__glMgrasDrawBuffer
    jal	__glMgrasDrawBuffer
    lw	$a0,1788($s0)
.L0da7086c:
    ld	$a4,48($sp)
    beqz	$a4,.L0da70880
    # Line 1873
    nop	# was lw $t9, -32068($gp) # &__glMgrasReadBuffer
    jal	__glMgrasReadBuffer
    lw	$a0,1148($s0)
.L0da70880:
    ld	$at,80($sp)
    beqz	$at,.L0da708a0
    ld	$v1,40($sp)
    lbu	$v1,-28059($v1)
    beqz	$v1,.L0da708a0
    # Line 1881
    lw	$t9,4412($s1)
    jalr	$t9
    li	$a0,2929
.L0da708a0:
    # Line 1885
    # lw $t9, -24164($gp) # &__glUpdateViewport
    jal	__glUpdateViewport
    move	$a0,$s0
    lw	$a3,148($s0)
.L0da708b0:
    andi	$a3,$a3,0x1
    beqz	$a3,.L0da70ed0
    # Line 1916
    nop	# was lw $t9, -30788($gp) # &mgrTM_SetBasereg
.L0da708bc:
    jal	mgrTM_SetBasereg
    move	$a0,$s0
    # Line 1921
    # lw $t9, -27336($gp) # &__glContextSetColorScales
    jal	__glContextSetColorScales
    move	$a0,$s0
    lw	$a4,4160($zero)
    lw	$a5,4688($s0)
    beqz	$a4,.L0da709a8
    ld	$ra,128($sp)
    beqz	$a5,.L0da70d90
    ld	$a3,72($sp)
    # Line 1929
    lw	$v1,4684($s0)
    addiu	$at,$s0,9768
    li	$a3,4864
    beq	$v1,$a3,.L0da70dcc
    sw	$at,5640($s0)
    # Line 1931
    lw	$a6,7704($s0)
.L0da70900:
    move	$a1,$a6
    li	$a0,257
    move	$v0,$zero
    addiu	$a2,$s0,7712
.L0da70910:
    addu	$at,$v0,$a2
    addu	$a4,$v0,$a1
    addiu	$v0,$v0,8
    ld	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70910
    sd	$a4,0($at)
.L0da7092c:
    # Line 1952
    beqzl	$a5,.L0da70958
    # Line 1961
    lbu	$at,31612($s0)
    # Line 1958
    lw	$a4,4752($s0)
    sw	$a4,4128($zero)
    # Line 1959
    lw	$a3,4756($s0)
    sw	$a3,4132($zero)
    # Line 1960
    lw	$v1,4760($s0)
    sw	$v1,4136($zero)
    # Line 1961
    lw	$at,4764($s0)
    sw	$at,4140($zero)
    lbu	$at,31612($s0)
.L0da70958:
    beqz	$at,.L0da70eb8
.L0da7095c:
    # Line 1980
    li	$v0,1
    ld	$gp,112($sp)
    ld	$s1,104($sp)
    # Line 1977
    lw	$v1,148($s0)
    # Line 1980
    ld	$s2,120($sp)
    # Line 1978
    li	$a3,-5
    # Line 1977
    ori	$v1,$v1,0x3
    # Line 1978
    and	$v1,$v1,$a3
    sw	$v1,148($s0)
    # Line 1980
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da7098c:
    b	.L0da70134
    sd	$a3,56($sp)
.L0da70994:
    # Line 1377
    lw	$a4,44($a6)
    beqz	$a4,.L0da70144
    # Line 1379
    li	$at,1
    b	.L0da70144
    sd	$at,64($sp)
.L0da709a8:
    # Line 1938
    beqz	$a5,.L0da709fc
    # Line 1952
    li	$a0,257
    # Line 1942
    lw	$a3,4684($s0)
    addiu	$v1,$s0,9768
    li	$a4,4864
    beq	$a3,$a4,.L0da71024
    sw	$v1,5640($s0)
    # Line 1944
    lw	$a5,7704($s0)
.L0da709c8:
    move	$a2,$a5
    li	$a0,257
    move	$v0,$zero
    li	$a1,4168
.L0da709d8:
    addu	$v1,$v0,$a1
    addu	$at,$v0,$a2
    addiu	$v0,$v0,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da709d8
    sd	$at,0($v1)
    b	.L0da70a2c
    nop
.L0da709fc:
    # Line 1952
    move	$v0,$zero
    li	$a1,4168
    addiu	$a2,$s0,7712
    # Line 1951
    li	$v1,4168
    sw	$v1,5640($s0)
.L0da70a10:
    # Line 1952
    addu	$a4,$v0,$a1
    addu	$a3,$v0,$a2
    addiu	$v0,$v0,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70a10
    sd	$a3,0($a4)
.L0da70a2c:
    b	.L0da7092c
    lw	$a5,4688($s0)
.L0da70a34:
    sd	$a5,48($sp)
    # Line 1337
    # lw $t9, -17896($gp) # &getenv
    la	$a0,sub_0dbe0000
    sd	$ra,128($sp)
    jal	getenv
    addiu	$a0,$a0,-18040
    sd	$v0,88($sp)
    move	$a5,$v0
    ld	$a5,48($sp)
    ld	$ra,128($sp)
    # Line 1339
    ld	$a4,40($sp)
    li	$a3,128
    beqz	$v0,.L0da7009c
    sb	$a3,-28044($a4)
    # Line 1342
    # lw $t9, -17932($gp) # &strcmp
    move	$a0,$v0
    jal	strcmp
    addiu	$a1,$gp,-15608
    ld	$a5,48($sp)
    beqz	$v0,.L0da7009c
    ld	$ra,128($sp)
    # Line 1343
    # lw $t9, -17932($gp) # &strcmp
    la	$a1,sub_0dbe0000
    ld	$a0,88($sp)
    jal	strcmp
    addiu	$a1,$a1,-18024
    ld	$a1,40($sp)
    beqz	$v0,.L0da710cc
    lbu	$a1,-28044($a1)
    # Line 1346
    ld	$a4,40($sp)
    ori	$a3,$a1,0x1
    sb	$a3,-28044($a4)
.L0da70ab4:
    # Line 1347
    # lw $t9, -17932($gp) # &strcmp
    ld	$a0,88($sp)
    jal	strcmp
    addiu	$a1,$gp,-15600
    beqz	$v0,.L0da710dc
.L0da70ac8:
    # Line 1349
    nop	# was lw $t9, -17932($gp) # &strcmp
    la	$a1,sub_0dbe0000
    ld	$a0,88($sp)
    jal	strcmp
    addiu	$a1,$a1,-18008
    beqz	$v0,.L0da710f0
.L0da70ae0:
    # Line 1351
    nop	# was lw $t9, -31448($gp) # &__glMgrSimInit
    jal	__glMgrSimInit
    move	$a0,$s0
    ld	$a5,48($sp)
    b	.L0da7009c
    ld	$ra,128($sp)
.L0da70af8:
    ld	$a1,40($sp)
    # Line 1431
    lw	$a4,-28164($a1)
    lw	$a4,1180($a4)
    lw	$a3,8($a4)
    addiu	$a3,$a3,-1
    sw	$a3,8($a4)
    lw	$a1,-28164($a1)
    lw	$a1,1180($a1)
    lw	$a3,8($a1)
    beqz	$a3,.L0da71070
    sd	$v0,136($sp)
.L0da70b24:
    # Line 1436
    # lw $t9, -31120($gp) # &__glMgrFreeAttributeState
    jal	__glMgrFreeAttributeState
    move	$a0,$s0
    # Line 1438
    lw	$t9,12($s0)
    ld	$a1,40($sp)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,-25252($a1)
    ld	$a3,40($sp)
    ld	$v0,136($sp)
    # Line 1439
    sw	$zero,-25252($a3)
    b	.L0da7027c
    sw	$zero,-25256($a3)
.L0da70b58:
    ld	$a4,40($sp)
    # Line 1493
    lbu	$a4,-28044($a4)
    andi	$a4,$a4,0x4
    beqz	$a4,.L0da7102c
    # Line 1503
    ld	$at,40($sp)
    lui	$a1,0x22
    sw	$a1,-25272($at)
.L0da70b74:
    # Line 1506
    lw	$t9,40($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1507
    move	$a0,$s0
    lw	$t9,44($s0)
    ld	$a1,40($sp)
    # Line 1506
    sw	$v0,31560($s0)
    # Line 1507
    jalr	$t9
    lw	$a1,-25272($a1)
    # Line 1508
    li	$a4,1
    # Line 1509
    ld	$at,40($sp)
    li	$a3,-1
    # Line 1507
    sw	$v0,31564($s0)
    # Line 1509
    sw	$zero,-25264($at)
    beq	$v0,$a3,.L0da7109c
    # Line 1508
    sw	$a4,-25276($at)
    # Line 1514
    # lw $t9, -32744($gp) # &sub_0da70000
    addiu	$t9,$t9,-8160
    bal __glMgrIoctl
    move	$a0,$s0
    # Line 1515
    move	$a2,$zero
    # lw $t9, -17944($gp) # &ioctl
    lw	$a0,31560($s0)
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0xa
    ld	$a3,40($sp)
    ld	$ra,128($sp)
    b	.L0da70300
    sw	$v0,-32296($a3)
.L0da70bec:
    # Line 1569
    beqz	$a2,.L0da70bfc
    ld	$a4,40($sp)
    lbu	$a4,-28064($a4)
    beqz	$a4,.L0da7103c
.L0da70bfc:
    # Line 1574
    li	$a1,42
    move	$a0,$zero
    addiu	$a2,$s1,5684
    la	$a5,__glMgrim_shadowRGBcolorDispatchTable
.L0da70c0c:
    addu	$at,$a0,$a5
    addu	$v1,$a0,$a2
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da70c0c
    sw	$at,0($v1)
    # Line 1577
    li	$a0,42
.L0da70c2c:
    move	$a1,$zero
    addiu	$a2,$s1,3628
    # Line 1576
    la	$a3,__glim_ColorMask
    # Line 1575
    la	$v1,__glMgrim_IndexMask
    # Line 1577
    la	$a5,__glmglc_shadowRGBcolorDispatchTable
    # Line 1576
    sw	$a3,4392($s1)
    # Line 1575
    sw	$v1,4400($s1)
.L0da70c48:
    # Line 1577
    addu	$a4,$a1,$a5
    addu	$at,$a1,$a2
    addiu	$a1,$a1,4
    lw	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70c48
    sw	$a4,0($at)
    # Line 1579
    la	$v1,__glMgrlc_IndexMask
    # Line 1578
    la	$at,__glsplc_ColorMask
    # Line 1579
    sw	$v1,2344($s1)
    b	.L0da706f0
    # Line 1578
    sw	$at,2336($s1)
.L0da70c78:
    # Line 1545
    li	$a0,371
    # Line 1540
    la	$s1,sub_0dc00000
    # Line 1545
    move	$v0,$zero
    la	$a1,__glMG10im_dispatchTable
    # Line 1540
    addiu	$s1,$s1,-19768
    # Line 1545
    addiu	$a5,$s1,4104
.L0da70c90:
    addu	$at,$v0,$a1
    addu	$v1,$v0,$a5
    addiu	$v0,$v0,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70c90
    sw	$at,0($v1)
    # Line 1546
    li	$a0,24
    move	$v0,$zero
    addiu	$a1,$s1,5588
    la	$a5,__glMgrim_vertexDispatchTable
.L0da70cbc:
    addu	$v1,$v0,$a5
    addu	$a3,$v0,$a1
    addiu	$v0,$v0,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70cbc
    sw	$v1,0($a3)
    # Line 1547
    li	$v0,10
    move	$a0,$zero
    addiu	$a1,$s1,5852
    la	$a5,__glMgrim_normalDispatchTable
.L0da70ce8:
    addu	$a3,$a0,$a5
    addu	$a4,$a0,$a1
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da70ce8
    sw	$a3,0($a4)
    # Line 1548
    li	$v0,32
    move	$a0,$zero
    addiu	$a5,$s1,5892
    la	$a1,__glMgrim_texCoordDispatchTable
.L0da70d14:
    addu	$a4,$a0,$a1
    addu	$at,$a0,$a5
    addiu	$a0,$a0,4
    lw	$a4,0($a4)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da70d14
    sw	$a4,0($at)
    # Line 1549
    li	$v0,24
    move	$a0,$zero
    addiu	$a1,$s1,6020
    la	$a5,__glMG10im_rasterPosDispatchTable
.L0da70d40:
    addu	$at,$a0,$a5
    addu	$v1,$a0,$a1
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da70d40
    sw	$at,0($v1)
    # Line 1550
    li	$v0,8
    move	$a0,$zero
    addiu	$a1,$s1,6116
    la	$a5,__glMgrim_rectDispatchTable
.L0da70d6c:
    addu	$v1,$a0,$a5
    addu	$a3,$a0,$a1
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da70d6c
    sw	$v1,0($a3)
    b	.L0da70554
    la	$v0,__glMgrim_dispatchTable
.L0da70d90:
    b	.L0da7092c
    # Line 1938
    sw	$a3,5640($s0)
.L0da70d98:
    # Line 1562
    li	$a0,42
    move	$a1,$zero
    addiu	$a2,$s1,5684
    la	$a5,__glSoftim_colorDispatchTable
.L0da70da8:
    addu	$a4,$a1,$a5
    addu	$at,$a1,$a2
    addiu	$a1,$a1,4
    lw	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da70da8
    sw	$a4,0($at)
    b	.L0da706a8
    # Line 1567
    li	$a0,42
.L0da70dcc:
    # Line 1931
    b	.L0da70900
    addiu	$a6,$s0,5648
.L0da70dd4:
    # Line 1702
    # lw $t9, -32744($gp) # &sub_0da70000
    addiu	$t9,$t9,-2164
    bal __glMgrim_RenderMode
    move	$a0,$s0
    b	.L0da7083c
    lw	$a0,148($s0)
.L0da70dec:
    # Line 1708
    # lw $t9, -27332($gp) # &__glSoftResetContext
    jal	__glSoftResetContext
    move	$a0,$s0
    ld	$v0,40($sp)
    # Line 1714
    lbu	$v0,-25435($v0)
    li	$at,4
    beq	$v0,$at,.L0da7112c
    li	$v1,1
    beq	$v0,$v1,.L0da7113c
    # Line 1752
    la	$at,sub_0dbe0000
    # Line 1714
    beqz	$v0,.L0da71148
.L0da70e18:
    # Line 1823
    move	$a0,$s0
    addiu	$a4,$sp,32
    lw	$t9,28($s0)
    addiu	$a3,$sp,28
    addiu	$a2,$sp,24
    jalr	$t9
    addiu	$a1,$sp,20
    # Line 1824
    lw	$at,28($sp)
    sw	$at,3412($s0)
    # Line 1825
    lw	$ra,32($sp)
    # lw $t9, -18132($gp) # &__glMgrim_dispatchTable
    sw	$ra,3416($s0)
    # Line 1826
    move	$a1,$zero
    lw	$t9,668($t9)
    move	$a0,$zero
    lw	$a3,32($sp)
    jal	__glMgrim_dispatchTable
    lw	$a2,28($sp)
    # lw $t9, -18132($gp) # &__glMgrim_dispatchTable
    # Line 1827
    move	$a0,$zero
    lw	$t9,152($t9)
    move	$a1,$zero
    lw	$a3,32($sp)
    jal	__glMgrim_dispatchTable
    lw	$a2,28($sp)
    # Line 1833
    # lw $t9, -32560($gp) # &__glMgrasInitDefaultValues
    bal __glMgrasInitDefaultValues
    move	$a0,$s0
    lbu	$at,3106($s0)
    beqz	$at,.L0da71104
    # Line 1836
    nop	# was lw $t9, -32052($gp) # &__glMgrim_DrawBuffer
    jal	__glMgrim_DrawBuffer
    li	$a0,1029
.L0da70e9c:
    # Line 1838
    lbu	$v1,3194($s0)
    beqz	$v1,.L0da71118
    # Line 1841
    nop	# was lw $t9, -32060($gp) # &__glMgrim_ReadBuffer
    jal	__glMgrim_ReadBuffer
    li	$a0,1029
    b	.L0da708b0
    # Line 1885
    lw	$a3,148($s0)
.L0da70eb8:
    # Line 1966
    # lw $t9, -32744($gp) # &sub_0da70000
    addiu	$t9,$t9,-4312
    bal __glMgrim_RenderMode
    move	$a0,$s0
    b	.L0da7095c
    ld	$ra,128($sp)
.L0da70ed0:
    # Line 1897
    # lw $t9, -30780($gp) # &mgrTM_Init
    # Line 1892
    addiu	$at,$s0,31568
    # Line 1897
    jal	mgrTM_Init
    # Line 1892
    sw	$at,3316($s0)
    # Line 1898
    # lw $t9, -31016($gp) # &__glMgrInitEvaluators
    jal	__glMgrInitEvaluators
    move	$a0,$s0
    # Line 1899
    # lw $t9, -29828($gp) # &__glMgrInitPixels
    jal	__glMgrInitPixels
    move	$a0,$s0
    # Line 1900
    # lw $t9, -30420($gp) # &__glMgrInitConvolutionState
    jal	__glMgrInitConvolutionState
    move	$a0,$s0
    # Line 1901
    # lw $t9, -30656($gp) # &__glMgrInitColorTableState
    jal	__glMgrInitColorTableState
    move	$a0,$s0
    # Line 1905
    # lw $t9, -31632($gp) # &__glMgrInitDLDMA
    jal	__glMgrInitDLDMA
    move	$a0,$s0
    # Line 1913
    lw	$t9,11856($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0da708bc
    # Line 1916
    nop	# was lw $t9, -30788($gp) # &mgrTM_SetBasereg
.L0da70f30:
    # Line 1596
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    # Line 1594
    ld	$v1,40($sp)
    # Line 1596
    ori	$a1,$a1,0x27
    # lw $t9, -17944($gp) # &ioctl
    # Line 1594
    lw	$v1,-25256($v1)
    # Line 1595
    li	$v0,4
    sw	$v0,4($sp)
    # Line 1594
    sw	$v1,0($sp)
    # Line 1596
    jal	ioctl
    lw	$a0,31560($s0)
    bltzl	$v0,.L0da71158
    # Line 1599
    lw	$t9,12($s0)
.L0da70f64:
    # Line 1600
    lw	$a0,148($s0)
    andi	$a3,$a0,0x1
    bnez	$a3,.L0da7077c
    # Line 1649
    andi	$a4,$a0,0x2
    # Line 1608
    li	$a6,0x8c04
    # Line 1607
    li	$a7,1536
    # Line 1615
    # lw $t9, -32744($gp) # &sub_0da70000
    # Line 1607
    lui	$a5,0x7
    # Line 1609
    ld	$a4,40($sp)
    # Line 1607
    ori	$a5,$a5,0x4080
    sw	$a7,0($a5)
    # Line 1609
    lbu	$a4,-25436($a4)
    # Line 1608
    sw	$a6,0($a5)
    # Line 1615
    addiu	$t9,$t9,-7032
    # Line 1609
    sra	$a4,$a4,0x1
    # Line 1615
    bal __glMgrIoctl
    # Line 1609
    sw	$a4,0($a5)
    ld	$a5,40($sp)
    # Line 1618
    lw	$a5,-28164($a5)
    # Line 1619
    addiu	$a2,$sp,8
    lui	$a1,0x6d67
    # Line 1618
    ld	$a5,1184($a5)
    # Line 1619
    # lw $t9, -17944($gp) # &ioctl
    ori	$a1,$a1,0x1e
    # Line 1618
    sd	$a5,8($sp)
    # Line 1619
    jal	ioctl
    lw	$a0,31560($s0)
    bltz	$v0,.L0da711c8
    # Line 1623
    ld	$a6,8($sp)
.L0da70fd8:
    ld	$a7,40($sp)
    # Line 1628
    la	$a0,sub_0dbe0000
    # lw $t9, -17896($gp) # &getenv
    # Line 1623
    lw	$a7,-28164($a7)
    # Line 1628
    addiu	$a0,$a0,-17968
    jal	getenv
    # Line 1623
    sd	$a6,1184($a7)
    # Line 1628
    beqz	$v0,.L0da7101c
    nop
    # Line 1629
    lbu	$a0,0($v0)
    li	$at,121
    beq	$a0,$at,.L0da71178
    li	$v1,89
    beq	$a0,$v1,.L0da71178
    li	$a3,49
    beq	$a0,$a3,.L0da7117c
    # Line 1632
    nop	# was lw $t9, -17884($gp) # &printf
.L0da7101c:
    b	.L0da70778
    # Line 1633
    lw	$a0,148($s0)
.L0da71024:
    # Line 1944
    b	.L0da709c8
    addiu	$a5,$s0,5648
.L0da7102c:
    # Line 1505
    ld	$a4,40($sp)
    li	$a1,16384
    b	.L0da70b74
    sw	$a1,-25272($a4)
.L0da7103c:
    # Line 1572
    li	$a0,42
    move	$a1,$zero
    addiu	$a5,$s1,5684
    la	$a2,__glSoftim_colorDispatchTable
.L0da7104c:
    addu	$at,$a1,$a2
    addu	$v1,$a1,$a5
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7104c
    sw	$at,0($v1)
    b	.L0da70c2c
    # Line 1577
    li	$a0,42
.L0da71070:
    # Line 1432
    # lw $t9, -26228($gp) # &__glNamesFreeArray
    jal	__glNamesFreeArray
    move	$a0,$s0
    # Line 1433
    lw	$t9,12($s0)
    ld	$a1,40($sp)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,-28164($a1)
    ld	$a3,40($sp)
    b	.L0da70b24
    # Line 1434
    sw	$zero,-28164($a3)
.L0da7109c:
    # Line 1511
    lw	$t9,12($s0)
    move	$a0,$zero
    jalr	$t9
    move	$a1,$s0
    # Line 1512
    move	$v0,$zero
    ld	$gp,112($sp)
    ld	$s0,96($sp)
    ld	$ra,128($sp)
    ld	$s1,104($sp)
    ld	$s2,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da710cc:
    # Line 1344
    ld	$at,40($sp)
    ori	$a4,$a1,0x4
    b	.L0da70ab4
    sb	$a4,-28044($at)
.L0da710dc:
    ld	$a3,40($sp)
    # Line 1348
    lbu	$v1,-28044($a3)
    ori	$v1,$v1,0x2
    b	.L0da70ac8
    sb	$v1,-28044($a3)
.L0da710f0:
    ld	$a4,40($sp)
    # Line 1350
    lbu	$a3,-28044($a4)
    ori	$a3,$a3,0x10
    b	.L0da70ae0
    sb	$a3,-28044($a4)
.L0da71104:
    # Line 1838
    # lw $t9, -32052($gp) # &__glMgrim_DrawBuffer
    jal	__glMgrim_DrawBuffer
    li	$a0,1028
    b	.L0da70e9c
    nop
.L0da71118:
    # Line 1843
    # lw $t9, -32060($gp) # &__glMgrim_ReadBuffer
    jal	__glMgrim_ReadBuffer
    li	$a0,1028
    b	.L0da708b0
    # Line 1885
    lw	$a3,148($s0)
.L0da7112c:
    # Line 1716
    la	$a4,sub_0dbe0000
    addiu	$a4,$a4,-17888
    # Line 1749
    b	.L0da70e18
    # Line 1716
    sw	$a4,3324($s0)
.L0da7113c:
    # Line 1752
    addiu	$at,$at,-17360
    # Line 1784
    b	.L0da70e18
    # Line 1752
    sw	$at,3324($s0)
.L0da71148:
    # Line 1790
    la	$v1,sub_0dbe0000
    addiu	$v1,$v1,-16856
    b	.L0da70e18
    sw	$v1,3324($s0)
.L0da71158:
    # Line 1599
    ld	$a1,40($sp)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,-25252($a1)
    ld	$a3,40($sp)
    # Line 1600
    sw	$zero,-25252($a3)
    b	.L0da70f64
    sw	$zero,-25256($a3)
.L0da71178:
    # Line 1632
    # lw $t9, -17884($gp) # &printf
.L0da7117c:
    la	$a0,sub_0dbe0000
    jal	printf
    addiu	$a0,$a0,-17944
    # Line 1633
    li	$a2,1
    # lw $t9, -17944($gp) # &ioctl
    lw	$a0,31560($s0)
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0x1a
    beqz	$v0,.L0da7101c
    # Line 1634
    nop	# was lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-17920
    # Line 1635
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0da7101c
    nop
.L0da711c8:
    # Line 1621
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-17992
    b	.L0da70fd8
    # Line 1623
    ld	$a6,8($sp)
.end MakeCurrentRead

# Function: MakeCurrent
# Declared: Line 1985 (Source lines: 1986-1991)
# Address: 0x0da711e0 - 0x0da7124c (Size: 108 bytes, Frame: 48)
.ent MakeCurrent
MakeCurrent:
    # Line 1986
    addiu	$sp,$sp,-48
    sd	$s8,24($sp)
    sd	$gp,16($sp)
    lui	$at,0x19
    addiu	$at,$at,-11080
    addu	$gp,$t9,$at
    # Line 1989
    lw	$t9,60($a0)
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 1986
    move	$s0,$a0
    # Line 1990
    lw	$t9,64($s0)
    # Line 1989
    move	$s8,$v0
    # Line 1990
    jalr	$t9
    move	$a0,$s0
    # Line 1991
    # lw $t9, -32744($gp) # &sub_0da70000
    # Line 1990
    move	$a2,$v0
    # Line 1991
    move	$a0,$s0
    addiu	$t9,$t9,72
    bal __glMgrim_RenderMode
    move	$a1,$s8
    ld	$gp,16($sp)
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end MakeCurrent

# Function: VisualsMatch
# Declared: Line 2052 (Source lines: 2055-2071)
# Address: 0x0da7124c - 0x0da71298 (Size: 76 bytes, Frame: 0)
.ent VisualsMatch
VisualsMatch:
    # Line 2055
    lbu	$at,9($a3)
    beqz	$at,.L0da71274
    nop
    lbu	$v0,9($a1)
    beqz	$v0,.L0da71274
    # Line 2063
    li	$a1,4
    beq	$a1,$a4,.L0da7127c
    # Line 2065
    move	$v0,$zero
    # Line 2063
    beq	$a1,$a2,.L0da71280
    li	$a1,1
.L0da71274:
    # Line 2071
    jr	$ra
    li	$v0,1
.L0da7127c:
    # Line 2063
    li	$a1,1
.L0da71280:
    beq	$a1,$a4,.L0da71290
    nop
    bne	$a1,$a2,.L0da71274
    nop
.L0da71290:
    # Line 2065
    jr	$ra
    nop
.end VisualsMatch

# Function: __glMgrCreateContext
# Declared: Line 2079 (Source lines: 2080-2296)
# Address: 0x0da71298 - 0x0da71704 (Size: 1132 bytes, Frame: 224)
.globl __glMgrCreateContext
.ent __glMgrCreateContext
__glMgrCreateContext:
    # Line 2080
    addiu	$sp,$sp,-96
    sd	$s0,24($sp)
    sd	$s2,32($sp)
    move	$s2,$a2
    # Line 2085
    li	$a2,0xba48
    sd	$a1,16($sp)
    li	$a1,1
    sd	$s3,56($sp)
    sd	$gp,40($sp)
    # Line 2080
    lui	$at,0x19
    addiu	$at,$at,-11264
    addu	$gp,$t9,$at
    # Line 2085
    lw	$t9,4($a0)
    # Line 2080
    move	$s3,$a0
    sd	$ra,48($sp)
    # Line 2085
    jalr	$t9
    move	$a0,$zero
    bnez	$v0,.L0da71304
    move	$s0,$v0
    # Line 2087
    ld	$ra,48($sp)
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da71304:
    # Line 2092
    # lw $t9, -17880($gp) # &sysconf
    jal	sysconf
    li	$a0,11
    # Line 2093
    lw	$t9,0($s3)
    sd	$v0,8($sp)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$v0,3
    ld	$at,8($sp)
    # Line 2109
    move	$a5,$s0
    # Line 2102
    lui	$a0,0x1
    # Line 2093
    addiu	$t0,$at,-1
    nor	$t0,$t0,$zero
    addu	$at,$at,$v0
    addiu	$at,$at,-1
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    and	$t0,$t0,$at
    sll	$a7,$t0,0x0
    beqz	$a7,.L0da716d4
    # Line 2109
    move	$a1,$zero
    move	$a6,$s3
    li	$a2,19
    sd	$s1,0($sp)
    # Line 2102
    addu	$s1,$a0,$s0
    # Line 2103
    sw	$t0,-25256($s1)
    # Line 2102
    sw	$v0,-25252($s1)
    # Line 2110
    li	$v0,22
    # Line 2105
    lw	$at,0($a7)
    lui	$v1,0x7fff
    ori	$v1,$v1,0xffff
    and	$at,$at,$v1
    sw	$at,0($a7)
.L0da71388:
    # Line 2109
    addu	$a4,$a1,$a5
    addu	$a3,$a1,$a6
    addiu	$a1,$a1,4
    lw	$a3,0($a3)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0da71388
    sw	$a3,0($a4)
    ld	$a5,16($sp)
    # Line 2110
    move	$a1,$zero
    addiu	$a2,$s0,3188
.L0da713b0:
    addu	$at,$a1,$a2
    addu	$a4,$a1,$a5
    addiu	$a1,$a1,4
    lw	$a4,0($a4)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da713b0
    sw	$a4,0($at)
    li	$v0,22
    move	$a1,$zero
    addiu	$a5,$s0,3100
    addiu	$a2,$s0,3188
.L0da713dc:
    addu	$v1,$a1,$a5
    addu	$at,$a1,$a2
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da713dc
    sw	$at,0($v1)
    # Line 2116
    sb	$zero,-28064($s1)
    # Line 2121
    # lw $t9, -17896($gp) # &getenv
    la	$a0,sub_0dbe0000
    # Line 2115
    sw	$zero,-28068($s1)
    # Line 2121
    jal	getenv
    addiu	$a0,$a0,-16448
    beqz	$v0,.L0da71420
    li	$s3,1
    # Line 2122
    b	.L0da71424
    sb	$s3,-28063($s1)
.L0da71420:
    # Line 2124
    sb	$zero,-28063($s1)
.L0da71424:
    # Line 2126
    # lw $t9, -17896($gp) # &getenv
    la	$a0,sub_0dbe0000
    jal	getenv
    addiu	$a0,$a0,-16424
    # Line 2134
    li	$at,2048
    # Line 2171
    lwc1	$f1,_lit_41200000
    # Line 2126
    beqz	$v0,.L0da7144c
    # Line 2138
    li	$a3,3
    # Line 2127
    b	.L0da71450
    sb	$s3,-28062($s1)
.L0da7144c:
    # Line 2129
    sb	$zero,-28062($s1)
.L0da71450:
    # Line 2143
    sw	$s3,3340($s0)
    # Line 2142
    sw	$s3,3336($s0)
    # Line 2138
    sw	$a3,3440($s0)
    # Line 2140
    li	$v1,8
    # Line 2134
    sw	$at,3344($s0)
    # Line 2135
    sw	$at,3348($s0)
    # Line 2141
    li	$at,6
    sw	$at,3332($s0)
    # Line 2140
    sw	$v1,3328($s0)
    # Line 2136
    li	$a4,0xc000
    sw	$a4,3372($s0)
    # Line 2137
    sw	$a4,3376($s0)
    # Line 2144
    li	$a4,8192
    sw	$a4,3428($s0)
    lbu	$a3,-25435($s1)
    # Line 2172
    lwc1	$f2,_lit_3e000000
    # Line 2151
    li	$v1,14
    # Line 2144
    beqz	$a3,.L0da716c8
    # Line 2162
    li	$a4,16
    # Line 2151
    sw	$v1,3436($s0)
.L0da714a0:
    # Line 2196
    sw	$zero,4664($s0)
    # Line 2195
    sw	$zero,4660($s0)
    # Line 2194
    sw	$zero,4656($s0)
    # Line 2193
    sw	$zero,4648($s0)
    # Line 2177
    sw	$s3,4556($s0)
    # Line 2174
    swc1	$f1,3464($s0)
    # Line 2171
    swc1	$f1,3452($s0)
    # Line 2170
    lwc1	$f0,_lit_3f000000
    # Line 2175
    swc1	$f2,3468($s0)
    # Line 2172
    swc1	$f2,3456($s0)
    # Line 2173
    swc1	$f0,3460($s0)
    # Line 2163
    sw	$a4,3484($s0)
    # Line 2162
    sw	$a4,3480($s0)
    # Line 2154
    li	$a4,30
    # Line 2153
    li	$a3,64
    # Line 2164
    sw	$a3,3488($s0)
    # Line 2153
    sw	$a3,3444($s0)
    # Line 2204
    la	$a3,__glMgrSPBalloc
    # Line 2154
    sw	$a4,3472($s0)
    # Line 2205
    la	$a4,__glMgrSPBfree
    # Line 2204
    sw	$a3,4728($s0)
    # Line 2200
    la	$a3,__glMgrDlistFreeArray
    # Line 2205
    sw	$a4,4732($s0)
    # Line 2201
    la	$a4,__glMgrSPFreeDlist
    # Line 2200
    sw	$a3,4636($s0)
    # Line 2187
    la	$a3,__glSPDlistCompiler
    # Line 2201
    sw	$a4,4668($s0)
    # Line 2190
    la	$a4,__glMgrDlistOptimizer
    # Line 2170
    swc1	$f0,3448($s0)
    # Line 2187
    sw	$a3,4644($s0)
    # Line 2190
    sw	$a4,4640($s0)
    # Line 2166
    li	$v1,2
    # Line 2165
    li	$at,32
    sw	$at,3492($s0)
    # Line 2155
    li	$at,4096
    # Line 2168
    sw	$v1,3504($s0)
    # Line 2167
    sw	$v1,3500($s0)
    # Line 2166
    sw	$v1,3496($s0)
    # Line 2156
    li	$v1,7
    # Line 2160
    sw	$v1,3368($s0)
    # Line 2159
    sw	$v1,3364($s0)
    # Line 2158
    sw	$v1,3360($s0)
    # Line 2157
    sw	$v1,3356($s0)
    # Line 2156
    sw	$v1,3352($s0)
    # Line 2207
    la	$v1,__glMgrSPCompMachdep
    # Line 2155
    sw	$at,3476($s0)
    # Line 2206
    la	$at,__glMgr_dlerror
    # Line 2207
    sw	$v1,4736($s0)
    # Line 2203
    la	$v1,__glMgrSPValidateDLExec
    # Line 2206
    sw	$at,4740($s0)
    # Line 2202
    la	$at,__glMgrSPMoreBlocks
    # Line 2203
    sw	$v1,4676($s0)
    # Line 2199
    la	$v1,__glMgrDlistNewArray
    # Line 2202
    sw	$at,4672($s0)
    # Line 2191
    la	$at,__glMgrDlistInitState
    # Line 2199
    sw	$v1,4632($s0)
    # Line 2207
    beqz	$s2,.L0da715cc
    # Line 2191
    sw	$at,4652($s0)
    # Line 2247
    # lw $t9, -29560($gp) # &__glShareDlist
    move	$a0,$s0
    jal	__glShareDlist
    move	$a1,$s2
    # Line 2248
    # lw $t9, -25268($gp) # &__glShareTextureObjects
    move	$a0,$s0
    jal	__glShareTextureObjects
    move	$a1,$s2
    lui	$a4,0x1
    # Line 2250
    addu	$a4,$a4,$s2
    lw	$a4,-28164($a4)
    sw	$a4,-28164($s1)
    # Line 2251
    lw	$a4,1180($a4)
    lw	$a3,8($a4)
    addiu	$a3,$a3,1
    b	.L0da71618
    sw	$a3,8($a4)
.L0da715cc:
    # Line 2255
    lw	$t9,0($s0)
    move	$a0,$s0
    jalr	$t9
    li	$a1,1256
    move	$a0,$v0
    # Line 2256
    # lw $t9, -17876($gp) # &memset
    li	$a2,1256
    move	$a1,$zero
    jal	memset
    # Line 2255
    sw	$v0,-28164($s1)
    # Line 2257
    # lw $t9, -26236($gp) # &__glNamesNewArray
    move	$a0,$s0
    jal	__glNamesNewArray
    li	$a1,1
    # Line 2258
    # lw $t9, -30784($gp) # &mgrTM_InitTMhw
    # Line 2257
    lw	$a5,-28164($s1)
    # Line 2258
    move	$a0,$s0
    jal	mgrTM_InitTMhw
    # Line 2257
    sw	$v0,1180($a5)
.L0da71618:
    # Line 2261
    # lw $t9, -27340($gp) # &__glEarlyInitContext
    jal	__glEarlyInitContext
    move	$a0,$s0
    # Line 2275
    move	$a0,$s0
    # Line 2269
    la	$t2,sub_0da70000
    # Line 2273
    sb	$s3,31612($s0)
    # Line 2275
    # lw $t9, -30596($gp) # &__glMgr_InitPixelStatState
    # Line 2269
    addiu	$t2,$t2,-3264
    # Line 2268
    la	$t1,sub_0da70000
    # Line 2269
    sw	$t2,116($s0)
    # Line 2267
    la	$t0,sub_0da70000
    # Line 2268
    addiu	$t1,$t1,4684
    sw	$t1,100($s0)
    # Line 2267
    addiu	$t0,$t0,72
    # Line 2266
    la	$a7,sub_0da70000
    # Line 2267
    sw	$t0,96($s0)
    # Line 2265
    la	$a6,sub_0da70000
    # Line 2266
    addiu	$a7,$a7,4576
    sw	$a7,92($s0)
    # Line 2265
    addiu	$a6,$a6,-2852
    # Line 2275
    jal	__glMgr_InitPixelStatState
    # Line 2265
    sw	$a6,88($s0)
    # Line 2276
    # lw $t9, -31124($gp) # &__glMgrInitAttributeState
    jal	__glMgrInitAttributeState
    move	$a0,$s0
    li	$a1,255
    addiu	$a0,$s0,128
    move	$v0,$s0
.L0da71688:
    # Line 2290
    sb	$a1,491($v0)
    sb	$a1,490($v0)
    sb	$a1,489($v0)
    # Line 2289
    addiu	$v0,$v0,4
    bne	$v0,$a0,.L0da71688
    # Line 2290
    sb	$a1,484($v0)
    ld	$gp,40($sp)
    # Line 2296
    move	$v0,$s0
    ld	$s0,24($sp)
    # Line 2294
    sw	$zero,-25276($s1)
    # Line 2296
    ld	$s1,0($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da716c8:
    # Line 2149
    li	$at,11
    b	.L0da714a0
    sw	$at,3436($s0)
.L0da716d4:
    # Line 2099
    lw	$t9,12($s3)
    move	$a0,$zero
    jalr	$t9
    move	$a1,$s0
    # Line 2100
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrCreateContext

# Function: __glMgrasInitOpenGLDefaultValues
# Declared: Line 2300 (Source lines: 2300-2342)
# Address: 0x0da71704 - 0x0da719b8 (Size: 692 bytes, Frame: 144)
.globl __glMgrasInitOpenGLDefaultValues
.ent __glMgrasInitOpenGLDefaultValues
__glMgrasInitOpenGLDefaultValues:
    # Line 2308
    li	$a2,9216
    li	$a1,9472
    # Line 2300
    addiu	$sp,$sp,-144
    sd	$s8,104($sp)
    move	$s8,$a0
    # Line 2308
    li	$a0,8192
    sd	$ra,96($sp)
    sdc1	$f24,80($sp)
    sd	$gp,112($sp)
    # Line 2300
    lui	$t8,0x19
    addiu	$t8,$t8,-12396
    addu	$gp,$t9,$t8
    # Line 2306
    dmtc1	$zero,$f1
    # Line 2303
    lwc1	$f24,_lit_3f800000
    mtc1	$zero,$f0
    # Line 2306
    sdc1	$f1,72($sp)
    sdc1	$f1,64($sp)
    sdc1	$f1,56($sp)
    sdc1	$f1,48($sp)
    # Line 2305
    swc1	$f0,44($sp)
    swc1	$f0,40($sp)
    swc1	$f0,36($sp)
    swc1	$f0,32($sp)
    # Line 2304
    swc1	$f0,28($sp)
    swc1	$f0,24($sp)
    swc1	$f24,20($sp)
    sd	$s0,88($sp)
    # Line 2300
    la	$s0,sub_0dc00000
    # Line 2304
    swc1	$f0,16($sp)
    # Line 2303
    swc1	$f0,12($sp)
    # Line 2300
    addiu	$s0,$s0,-19768
    # Line 2308
    lw	$t9,4320($s0)
    # Line 2303
    swc1	$f0,8($sp)
    swc1	$f0,4($sp)
    # Line 2308
    jalr	$t9
    # Line 2303
    swc1	$f24,0($sp)
    # Line 2309
    lw	$t9,4320($s0)
    li	$a2,9216
    li	$a1,9472
    jalr	$t9
    li	$a0,8193
    # Line 2310
    lw	$t9,4320($s0)
    li	$a2,9216
    li	$a1,9472
    jalr	$t9
    li	$a0,8194
    # Line 2311
    lw	$t9,4320($s0)
    li	$a2,9216
    li	$a1,9472
    jalr	$t9
    li	$a0,8195
    # Line 2313
    lw	$t9,4316($s0)
    addiu	$a2,$sp,0
    li	$a1,9474
    jalr	$t9
    li	$a0,8192
    # Line 2314
    lw	$t9,4316($s0)
    addiu	$a2,$sp,16
    li	$a1,9474
    jalr	$t9
    li	$a0,8193
    # Line 2315
    lw	$t9,4316($s0)
    addiu	$a2,$sp,32
    li	$a1,9474
    jalr	$t9
    li	$a0,8194
    # Line 2316
    lw	$t9,4316($s0)
    addiu	$a2,$sp,32
    li	$a1,9474
    jalr	$t9
    li	$a0,8195
    # Line 2318
    lw	$t9,4316($s0)
    addiu	$a2,$sp,0
    li	$a1,9473
    jalr	$t9
    li	$a0,8192
    # Line 2319
    lw	$t9,4316($s0)
    addiu	$a2,$sp,16
    li	$a1,9473
    jalr	$t9
    li	$a0,8193
    # Line 2320
    lw	$t9,4316($s0)
    addiu	$a2,$sp,32
    li	$a1,9473
    jalr	$t9
    li	$a0,8194
    # Line 2321
    lw	$t9,4316($s0)
    addiu	$a2,$sp,32
    li	$a1,9473
    jalr	$t9
    li	$a0,8195
    # Line 2322
    lw	$t9,4780($s0)
    jalr	$t9
    li	$a0,0x8006
    # Line 2323
    lw	$t9,4516($s0)
    move	$a1,$zero
    jalr	$t9
    li	$a0,1
    # Line 2324
    lw	$t9,4412($s0)
    jalr	$t9
    li	$a0,3024
    # Line 2325
    lw	$t9,4224($s0)
    jalr	$t9
    mov.s	$f12,$f24
    # Line 2326
    lw	$t9,4220($s0)
    li	$a1,0xffff
    jalr	$t9
    li	$a0,1
    lbu	$at,3194($s8)
    beqz	$at,.L0da719ac
    # Line 2327
    li	$a0,1029
    ld	$s8,104($sp)
.L0da718c4:
    lw	$t9,4568($s0)
    jalr	$t9
    nop
    # Line 2328
    lw	$t9,4244($s0)
    jalr	$t9
    mov.s	$f12,$f24
    # Line 2329
    lw	$t9,4160($s0)
    li	$a0,1029
    jalr	$t9
    ldc1	$f24,80($sp)
    # Line 2330
    lw	$t9,4248($s0)
    li	$a1,6914
    jalr	$t9
    li	$a0,1032
    # Line 2331
    lw	$t9,4180($s0)
    jalr	$t9
    li	$a0,2305
    # Line 2332
    lw	$t9,4140($s0)
    jalr	$t9
    li	$a0,1
    # Line 2333
    lw	$t9,4152($s0)
    addiu	$a1,$sp,48
    jalr	$t9
    li	$a0,12288
    # Line 2334
    lw	$t9,4152($s0)
    addiu	$a1,$sp,48
    jalr	$t9
    li	$a0,12289
    # Line 2335
    lw	$t9,4152($s0)
    addiu	$a1,$sp,48
    jalr	$t9
    li	$a0,12290
    # Line 2336
    lw	$t9,4152($s0)
    addiu	$a1,$sp,48
    jalr	$t9
    li	$a0,12291
    # Line 2337
    lw	$t9,4152($s0)
    addiu	$a1,$sp,48
    jalr	$t9
    li	$a0,12292
    # Line 2338
    lw	$t9,4152($s0)
    addiu	$a1,$sp,48
    jalr	$t9
    li	$a0,12293
    # Line 2339
    lw	$t9,4380($s0)
    jalr	$t9
    move	$a0,$zero
    # Line 2340
    lw	$t9,4372($s0)
    jalr	$t9
    mtc1	$zero,$f12
    # Line 2341
    lw	$t9,4408($s0)
    jalr	$t9
    li	$a0,2929
    # Line 2342
    ld	$ra,96($sp)
    ld	$gp,112($sp)
    ld	$s0,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da719ac:
    # Line 2327
    li	$a0,1028
    b	.L0da718c4
    ld	$s8,104($sp)
.end __glMgrasInitOpenGLDefaultValues

# Function: __glMgrasInitDefaultValues
# Declared: Line 2345 (Source lines: 2345-2641)
# Address: 0x0da719b8 - 0x0da721cc (Size: 2068 bytes, Frame: 224)
.globl __glMgrasInitDefaultValues
.ent __glMgrasInitDefaultValues
__glMgrasInitDefaultValues:
    # Line 2464
    lui	$a1,0x6d67
    # Line 2345
    addiu	$sp,$sp,-96
    # Line 2464
    addiu	$a2,$sp,0
    ori	$a1,$a1,0x17
    sd	$gp,64($sp)
    # Line 2345
    lui	$t8,0x19
    addiu	$t8,$t8,-13088
    addu	$gp,$t9,$t8
    # Line 2464
    # lw $t9, -17944($gp) # &ioctl
    # Line 2398
    li	$a5,0xff00
    nor	$a5,$a5,$zero
    sd	$s1,56($sp)
    # Line 2349
    lui	$s1,0x1
    addu	$s1,$a0,$s1
    # Line 2389
    lw	$t1,-26728($s1)
    # Line 2372
    lui	$t0,0x4
    # Line 2371
    li	$a6,-3585
    # Line 2374
    lw	$t3,-26936($s1)
    # Line 2353
    li	$a3,1023
    sd	$ra,48($sp)
    # Line 2366
    li	$ra,-25
    sd	$s0,40($sp)
    # Line 2349
    lw	$v1,-26944($s1)
    # Line 2345
    move	$s0,$a0
    # Line 2349
    lui	$a0,0x1000
    or	$v1,$v1,$a0
    # Line 2363
    li	$a0,-8193
    # Line 2362
    ori	$v0,$v1,0x1000
    # Line 2363
    and	$v0,$v0,$a0
    # Line 2375
    li	$a0,-9
    # Line 2352
    li	$a4,1279
    # Line 2351
    sw	$zero,-26924($s1)
    # Line 2352
    sw	$a4,-26724($s1)
    # Line 2353
    sw	$a3,-26720($s1)
    # Line 2354
    sw	$a4,-26716($s1)
    # Line 2355
    sw	$a3,-26712($s1)
    # Line 2356
    sw	$a4,-26708($s1)
    # Line 2357
    sw	$a3,-26704($s1)
    # Line 2358
    sw	$a4,-26700($s1)
    # Line 2359
    sw	$a3,-26696($s1)
    # Line 2360
    sw	$zero,-26692($s1)
    # Line 2374
    li	$a4,-8
    and	$t3,$t3,$a4
    # Line 2364
    lw	$at,-26940($s1)
    # Line 2365
    li	$v1,-7
    # Line 2363
    sw	$v0,-26944($s1)
    # Line 2364
    li	$v0,-2
    and	$at,$at,$v0
    # Line 2365
    and	$at,$at,$v1
    sw	$at,-26940($s1)
    # Line 2374
    ori	$t3,$t3,0x4
    # Line 2375
    and	$t2,$a0,$t3
    # Line 2370
    li	$v1,-97
    # Line 2366
    and	$ra,$at,$ra
    # Line 2370
    and	$ra,$ra,$v1
    # Line 2372
    lui	$v1,0x7
    nor	$v1,$v1,$zero
    # Line 2370
    ori	$ra,$ra,0x40
    # Line 2371
    and	$t8,$a6,$ra
    ori	$t8,$t8,0x400
    # Line 2372
    and	$t8,$t8,$v1
    or	$t8,$t8,$t0
    sw	$t8,-26940($s1)
    # Line 2376
    li	$t8,-4081
    and	$t2,$t2,$t8
    sw	$t2,-26936($s1)
    # Line 2394
    lw	$a7,-26652($s1)
    # Line 2378
    lw	$t3,2412($s0)
    lw	$t2,2420($s0)
    # Line 2403
    lui	$at,0x20
    # Line 2394
    or	$a7,$a7,$t0
    # Line 2378
    addu	$t2,$t2,$t3
    sll	$t3,$t3,0x10
    addiu	$t2,$t2,-1
    or	$t2,$t2,$t3
    sw	$t2,-26932($s1)
    # Line 2397
    lw	$a3,-26644($s1)
    # Line 2380
    lw	$t2,2424($s0)
    lw	$t3,2416($s0)
    # Line 2394
    sw	$a7,-26652($s1)
    # Line 2397
    lui	$a7,0xf
    or	$a3,$a3,$a7
    # Line 2420
    lw	$a7,-26620($s1)
    # Line 2403
    nor	$at,$at,$zero
    # Line 2405
    lui	$ra,0x8
    # Line 2420
    ori	$a7,$a7,0x1
    sw	$a7,-26620($s1)
    # Line 2389
    li	$v1,-256
    and	$t1,$t1,$v1
    # Line 2398
    and	$a5,$a3,$a5
    # Line 2399
    and	$v1,$v1,$a5
    # Line 2421
    ori	$a5,$a7,0x2
    # Line 2443
    li	$a7,-57
    # Line 2380
    addu	$t2,$t2,$t3
    sll	$t3,$t3,0x10
    addiu	$t2,$t2,-1
    or	$t2,$t2,$t3
    sw	$t2,-26928($s1)
    # Line 2383
    sw	$zero,-26744($s1)
    # Line 2384
    sw	$zero,-26740($s1)
    # Line 2386
    sw	$zero,-26736($s1)
    # Line 2389
    sw	$t1,-26728($s1)
    # Line 2399
    sw	$v1,-26644($s1)
    # Line 2401
    lw	$v1,-26496($s1)
    lui	$a3,0x80
    nor	$a3,$a3,$zero
    and	$v1,$v1,$a3
    # Line 2402
    lui	$a3,0x40
    nor	$a3,$a3,$zero
    and	$v1,$v1,$a3
    # Line 2404
    lui	$a3,0x10
    nor	$a3,$a3,$zero
    # Line 2403
    and	$at,$v1,$at
    # Line 2404
    and	$at,$at,$a3
    sw	$at,-26496($s1)
    # Line 2406
    li	$a3,0x8000
    nor	$a3,$a3,$zero
    # Line 2405
    or	$ra,$at,$ra
    # Line 2406
    and	$ra,$ra,$a3
    # Line 2407
    ori	$t8,$ra,0x4000
    # Line 2408
    ori	$t8,$t8,0x100
    sw	$t8,-26496($s1)
    # Line 2409
    ori	$t1,$t8,0x80
    # Line 2436
    lw	$t8,-26604($s1)
    # Line 2387
    sw	$zero,-26732($s1)
    # Line 2436
    li	$ra,-16
    and	$t8,$t8,$ra
    # Line 2437
    li	$ra,-241
    # Line 2436
    ori	$t8,$t8,0x1
    # Line 2437
    and	$t8,$t8,$ra
    sw	$t8,-26604($s1)
    # Line 2425
    li	$v1,-33
    # Line 2427
    li	$at,-129
    # Line 2410
    ori	$t1,$t1,0x40
    # Line 2411
    ori	$t0,$t1,0x20
    # Line 2391
    li	$t1,-1
    sw	$t1,-26664($s1)
    # Line 2392
    sw	$t1,-26660($s1)
    # Line 2396
    sw	$t1,-26648($s1)
    # Line 2444
    li	$t1,-449
    # Line 2414
    sw	$zero,-26480($s1)
    # Line 2415
    sw	$zero,-26476($s1)
    # Line 2418
    sw	$zero,-26624($s1)
    # Line 2412
    li	$a3,-13
    and	$t0,$t0,$a3
    ori	$t0,$t0,0x4
    sw	$t0,-26496($s1)
    # Line 2422
    li	$t0,-5
    and	$a5,$a5,$t0
    # Line 2423
    and	$a3,$a0,$a5
    # Line 2448
    lw	$a5,-26596($s1)
    # Line 2439
    sw	$zero,-26580($s1)
    # Line 2440
    sw	$zero,-26576($s1)
    # Line 2448
    ori	$a5,$a5,0xff
    # Line 2449
    ori	$a5,$a5,0xff00
    # Line 2424
    li	$t0,-17
    and	$a3,$a3,$t0
    # Line 2426
    li	$t0,-65
    # Line 2425
    and	$v1,$a3,$v1
    # Line 2426
    and	$v1,$v1,$t0
    # Line 2427
    and	$at,$v1,$at
    # Line 2455
    lw	$v1,-26588($s1)
    # Line 2424
    sw	$a3,-26620($s1)
    # Line 2451
    lw	$a3,-26592($s1)
    # Line 2449
    sw	$a5,-26596($s1)
    # Line 2455
    ori	$v1,$v1,0x7
    # Line 2451
    and	$a3,$a3,$a4
    # Line 2453
    lui	$a4,0xfff
    ori	$a4,$a4,0xfff0
    # Line 2451
    ori	$a3,$a3,0x1
    # Line 2452
    and	$a0,$a0,$a3
    # Line 2453
    or	$a0,$a0,$a4
    # Line 2435
    lui	$t0,0x3c00
    nor	$t0,$t0,$zero
    and	$at,$at,$t0
    lui	$t0,0xc00
    or	$at,$at,$t0
    # Line 2442
    lw	$t0,-26600($s1)
    # Line 2453
    sw	$a0,-26592($s1)
    # Line 2456
    li	$a0,-32761
    # Line 2442
    ori	$t0,$t0,0x7
    sw	$t0,-26600($s1)
    # Line 2435
    sw	$at,-26620($s1)
    # Line 2458
    lw	$at,-26584($s1)
    # Line 2456
    and	$v1,$v1,$a0
    sw	$v1,-26588($s1)
    # Line 2458
    and	$at,$at,$v0
    # Line 2459
    lui	$v0,0x3
    ori	$v0,$v0,0xfff0
    # Line 2443
    and	$a7,$t0,$a7
    # Line 2444
    and	$a7,$a7,$t1
    # Line 2445
    and	$a6,$a6,$a7
    # Line 2459
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,-26584($s1)
    # Line 2446
    lui	$t1,0xf
    ori	$t1,$t1,0xf000
    nor	$t1,$t1,$zero
    and	$a6,$a6,$t1
    sw	$a6,-26600($s1)
    # Line 2464
    jal	ioctl
    lw	$a0,31560($s0)
    bltzl	$v0,.L0da721b4
    # Line 2465
    lw	$t9,20($s0)
    lw	$at,3184($s0)
.L0da71cec:
    beqz	$at,.L0da721a4
    # Line 2470
    lw	$v0,4($sp)
    sd	$s2,72($sp)
    sw	$v0,-26572($s1)
.L0da71cfc:
    # Line 2488
    move	$a4,$zero
    li	$a1,272
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 2470
    la	$s2,SYMBOL_LOCATION
    # Line 2472
    li	$v1,63
    sw	$v1,-27472($s1)
    # Line 2478
    sw	$zero,-26564($s1)
    # Line 2483
    sw	$zero,31604($s0)
    # Line 2488
    move	$a0,$s0
    lw	$a3,340($s2)
    jal	__glMgrasWrite
    lw	$a2,-26944($s1)
    # Line 2490
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,212($s2)
    lw	$a2,-26940($s1)
    jal	__glMgrasWrite
    li	$a1,273
    # Line 2492
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,4($s2)
    lw	$a2,-26936($s1)
    jal	__glMgrasWrite
    li	$a1,274
    # Line 2495
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,8($s2)
    lw	$a2,-26932($s1)
    jal	__glMgrasWrite
    li	$a1,275
    # Line 2497
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,12($s2)
    lw	$a2,-26928($s1)
    jal	__glMgrasWrite
    li	$a1,276
    # Line 2501
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,28($s2)
    lw	$a2,-26744($s1)
    jal	__glMgrasWrite
    li	$a1,322
    # Line 2503
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,32($s2)
    lw	$a2,-26740($s1)
    jal	__glMgrasWrite
    li	$a1,323
    # Line 2506
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,36($s2)
    lw	$a2,-26736($s1)
    jal	__glMgrasWrite
    li	$a1,324
    # Line 2508
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,40($s2)
    lw	$a2,-26732($s1)
    jal	__glMgrasWrite
    li	$a1,325
    # Line 2511
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,44($s2)
    lw	$a2,-26728($s1)
    jal	__glMgrasWrite
    li	$a1,278
    # Line 2552
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,96($s2)
    lw	$a2,-26664($s1)
    jal	__glMgrasWrite
    li	$a1,342
    # Line 2554
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,100($s2)
    lw	$a2,-26660($s1)
    jal	__glMgrasWrite
    li	$a1,343
    # Line 2557
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,276($s2)
    lw	$a2,-26424($s1)
    jal	__glMgrasWrite
    li	$a1,402
    # Line 2559
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,224($s2)
    lw	$a2,-26488($s1)
    jal	__glMgrasWrite
    li	$a1,386
    # Line 2562
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,232($s2)
    lw	$a2,-26480($s1)
    jal	__glMgrasWrite
    li	$a1,388
    # Line 2564
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,236($s2)
    lw	$a2,-26476($s1)
    jal	__glMgrasWrite
    li	$a1,389
    # Line 2566
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,0($s2)
    lw	$a2,-27472($s1)
    jal	__glMgrasWrite
    li	$a1,140
    # Line 2574
    move	$a4,$zero
    li	$a1,392
    move	$a0,$s0
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 2572
    lui	$a6,0x7f
    ori	$a6,$a6,0xf7ff
    sw	$a6,-26464($s1)
    # Line 2573
    sw	$a6,-26460($s1)
    # Line 2569
    lw	$a3,-26468($s1)
    # Line 2574
    lw	$a2,-26464($s1)
    li	$a5,-256
    # Line 2569
    and	$a3,$a3,$a5
    # Line 2570
    li	$a5,-3841
    # Line 2569
    ori	$a3,$a3,0x1
    # Line 2570
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x100
    sw	$a3,-26468($s1)
    # Line 2574
    jal	__glMgrasWrite
    lw	$a3,248($s2)
    # Line 2576
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,252($s2)
    lw	$a2,-26460($s1)
    jal	__glMgrasWrite
    li	$a1,393
    # Line 2579
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,260($s2)
    lw	$a2,-26452($s1)
    jal	__glMgrasWrite
    li	$a1,395
    # Line 2582
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,116($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26624($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x160
    # Line 2584
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,344($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26620($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x161
    # Line 2586
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,144($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26592($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x168
    # Line 2588
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,120($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26616($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x162
    # Line 2590
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,124($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26612($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x163
    # Line 2592
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,128($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26608($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x164
    # Line 2602
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,132($s2)
    lui	$a1,0xc00
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a2,sub_0dbf0000
    ori	$a1,$a1,0x165
    jal	__glMgrasWrite
    lw	$a2,-1580($a2)
    # Line 2605
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,156($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26580($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x16b
    # Line 2607
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,160($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26576($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x16c
    # Line 2610
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,136($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26600($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x166
    # Line 2612
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,140($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26596($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x167
    # Line 2615
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,148($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26588($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x169
    # Line 2617
    move	$a0,$s0
    li	$a4,1
    lw	$a3,152($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26584($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x16a
    # Line 2633
    move	$a0,$s0
    li	$a4,1
    lw	$a3,168($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,-26564($s1)
    lui	$a1,0xc00
    jal	__glMgrasWrite
    ori	$a1,$a1,0x16f
    # Line 2636
    move	$a0,$s0
    move	$a3,$zero
    # lw $t9, -30692($gp) # &__glMgrasSet
    lw	$a2,-26648($s1)
    li	$a1,346
    jal	__glMgrasSet
    ld	$s2,72($sp)
    # Line 2637
    move	$a0,$s0
    # lw $t9, -30692($gp) # &__glMgrasSet
    move	$a3,$zero
    lw	$a2,-26644($s1)
    jal	__glMgrasSet
    li	$a1,347
    # Line 2638
    move	$a0,$s0
    # lw $t9, -30692($gp) # &__glMgrasSet
    li	$a3,1
    lw	$a2,-26468($s1)
    jal	__glMgrasSet
    li	$a1,391
    # Line 2640
    # lw $t9, -32564($gp) # &__glMgrasInitOpenGLDefaultValues
    move	$a0,$s0
    bal __glMgrasInitOpenGLDefaultValues
    ld	$s1,56($sp)
    # Line 2641
    ld	$ra,48($sp)
    ld	$gp,64($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da721a4:
    # Line 2468
    lw	$at,8($sp)
    sd	$s2,72($sp)
    b	.L0da71cfc
    sw	$at,-26572($s1)
.L0da721b4:
    # Line 2465
    la	$a1,sub_0dbe0000
    move	$a0,$s0
    jal	__glMgrasInitOpenGLDefaultValues
    addiu	$a1,$a1,-16408
    b	.L0da71cec
    lw	$at,3184($s0)
.end __glMgrasInitDefaultValues

.rdata
_lit8_3f30000000000000:
    .word 0x3f300000, 0x00000000
_lit8_3fb0000000000000:
    .word 0x3fb00000, 0x00000000
_lit_3e000000:
    .word 0x3e000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_41200000:
    .word 0x41200000

