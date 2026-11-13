# Source: ../MGRAS/mgras_colortable.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_colortable.c
# Total Functions: 16

.text

# Function: __glMgrInitColorTableState
# Declared: Line 33 (Source lines: 34-242)
# Address: 0x0dac28d8 - 0x0dac2c8c (Size: 948 bytes, Frame: 208)
.globl __glMgrInitColorTableState
.ent __glMgrInitColorTableState
__glMgrInitColorTableState:
    # Line 34
    addiu	$sp,$sp,-80
    sd	$s3,56($sp)
    sdc1	$f28,8($sp)
    sdc1	$f30,0($sp)
    sd	$s0,40($sp)
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$ra,16($sp)
    sd	$gp,48($sp)
    lui	$at,0x14
    addiu	$at,$at,-16960
    addu	$gp,$t9,$at
    # Line 47
    lw	$t9,0($a0)
    sd	$s2,24($sp)
    lui	$s2,0x1
    jalr	$t9
    move	$a1,$s2
    addu	$s0,$s2,$s1
    beqz	$v0,.L0dac2c18
    sw	$v0,-31860($s0)
.L0dac2928:
    # Line 55
    lwc1	$f28,_lit_3f800000
    swc1	$f28,0($v0)
    # Line 56
    lw	$a3,-31860($s0)
    swc1	$f28,4($a3)
    # Line 57
    lw	$a2,-31860($s0)
    # Line 59
    li	$a0,5126
    # Line 60
    li	$v1,6408
    # Line 57
    swc1	$f28,8($a2)
    # Line 62
    li	$s3,1
    # Line 58
    lw	$a1,-31860($s0)
    # Line 70
    mtc1	$zero,$f30
    # Line 63
    li	$v0,15
    # Line 58
    swc1	$f28,12($a1)
    # Line 70
    swc1	$f30,-31816($s0)
    swc1	$f30,-31812($s0)
    swc1	$f30,-31808($s0)
    swc1	$f30,-31804($s0)
    # Line 66
    swc1	$f28,-31832($s0)
    swc1	$f28,-31828($s0)
    swc1	$f28,-31824($s0)
    swc1	$f28,-31820($s0)
    # Line 64
    sb	$zero,-31836($s0)
    # Line 63
    sw	$v0,-31840($s0)
    # Line 62
    sw	$s3,-31844($s0)
    # Line 61
    sw	$v1,-31848($s0)
    # Line 60
    sw	$v1,-31852($s0)
    # Line 59
    sw	$a0,-31856($s0)
    # Line 80
    lw	$t9,0($s1)
    li	$a1,768
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0dac2c34
    sw	$v0,-31800($s0)
.L0dac29ac:
    # Line 88
    sb	$s3,0($v0)
    # Line 89
    lw	$t0,-31800($s0)
    sb	$s3,1($t0)
    # Line 91
    li	$a6,5121
    # Line 90
    lw	$a7,-31800($s0)
    # Line 92
    li	$a5,6407
    # Line 95
    li	$a4,14
    # Line 90
    sb	$s3,2($a7)
    # Line 102
    swc1	$f30,-31756($s0)
    swc1	$f30,-31752($s0)
    swc1	$f30,-31748($s0)
    swc1	$f30,-31744($s0)
    # Line 98
    swc1	$f28,-31772($s0)
    swc1	$f28,-31768($s0)
    swc1	$f28,-31764($s0)
    swc1	$f28,-31760($s0)
    # Line 96
    sb	$zero,-31776($s0)
    # Line 95
    sw	$a4,-31780($s0)
    # Line 94
    sw	$zero,-31784($s0)
    # Line 93
    sw	$a5,-31788($s0)
    # Line 92
    sw	$a5,-31792($s0)
    # Line 91
    sw	$a6,-31796($s0)
    # Line 112
    lw	$t9,0($s1)
    move	$a1,$s2
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0dac2c50
    sw	$v0,-31740($s0)
.L0dac2a1c:
    # Line 120
    swc1	$f28,0($v0)
    # Line 121
    lw	$ra,-31740($s0)
    swc1	$f28,4($ra)
    # Line 122
    lw	$t9,-31740($s0)
    swc1	$f28,8($t9)
    li	$t3,5126
    # Line 123
    lw	$t8,-31740($s0)
    li	$t2,6408
    li	$t1,15
    swc1	$f28,12($t8)
    # Line 135
    swc1	$f30,-31696($s0)
    swc1	$f30,-31692($s0)
    swc1	$f30,-31688($s0)
    swc1	$f30,-31684($s0)
    # Line 131
    swc1	$f28,-31712($s0)
    swc1	$f28,-31708($s0)
    swc1	$f28,-31704($s0)
    swc1	$f28,-31700($s0)
    # Line 129
    sb	$zero,-31716($s0)
    # Line 128
    sw	$t1,-31720($s0)
    # Line 127
    sw	$s3,-31724($s0)
    # Line 126
    sw	$t2,-31728($s0)
    # Line 125
    sw	$t2,-31732($s0)
    # Line 124
    sw	$t3,-31736($s0)
    # Line 144
    lw	$t9,0($s1)
    move	$a1,$s2
    jalr	$t9
    move	$a0,$s1
    sw	$v0,-31680($s0)
    ld	$s2,24($sp)
    beqz	$v0,.L0dac2c6c
    ld	$ra,16($sp)
.L0dac2a9c:
    # Line 152
    swc1	$f28,0($v0)
    # Line 153
    lw	$v1,-31680($s0)
    swc1	$f28,4($v1)
    ld	$gp,48($sp)
    # Line 154
    lw	$v0,-31680($s0)
    li	$a2,14
    li	$a3,5121
    swc1	$f28,8($v0)
    li	$s1,6407
    # Line 155
    lw	$at,-31680($s0)
    li	$v1,5126
    li	$v0,6408
    swc1	$f28,12($at)
    li	$at,15
    # Line 163
    swc1	$f28,-31640($s0)
    swc1	$f28,-31644($s0)
    swc1	$f28,-31648($s0)
    swc1	$f28,-31652($s0)
    # Line 242
    ldc1	$f28,8($sp)
    # Line 167
    swc1	$f30,-31624($s0)
    swc1	$f30,-31628($s0)
    swc1	$f30,-31632($s0)
    swc1	$f30,-31636($s0)
    # Line 182
    swc1	$f30,-31580($s0)
    swc1	$f30,-31584($s0)
    swc1	$f30,-31588($s0)
    swc1	$f30,-31592($s0)
    # Line 186
    swc1	$f30,-31564($s0)
    swc1	$f30,-31568($s0)
    swc1	$f30,-31572($s0)
    swc1	$f30,-31576($s0)
    # Line 199
    swc1	$f30,-31520($s0)
    swc1	$f30,-31524($s0)
    swc1	$f30,-31528($s0)
    swc1	$f30,-31532($s0)
    # Line 203
    swc1	$f30,-31504($s0)
    swc1	$f30,-31508($s0)
    swc1	$f30,-31512($s0)
    swc1	$f30,-31516($s0)
    # Line 216
    swc1	$f30,-31460($s0)
    swc1	$f30,-31464($s0)
    swc1	$f30,-31468($s0)
    swc1	$f30,-31472($s0)
    # Line 220
    swc1	$f30,-31444($s0)
    swc1	$f30,-31448($s0)
    swc1	$f30,-31452($s0)
    swc1	$f30,-31456($s0)
    # Line 233
    swc1	$f30,-31400($s0)
    swc1	$f30,-31404($s0)
    swc1	$f30,-31408($s0)
    swc1	$f30,-31412($s0)
    # Line 237
    swc1	$f30,-31384($s0)
    swc1	$f30,-31388($s0)
    swc1	$f30,-31392($s0)
    swc1	$f30,-31396($s0)
    # Line 242
    ldc1	$f30,0($sp)
    # Line 159
    sw	$s3,-31664($s0)
    # Line 242
    ld	$s3,56($sp)
    # Line 194
    sw	$s1,-31552($s0)
    # Line 195
    sw	$s1,-31548($s0)
    # Line 242
    ld	$s1,32($sp)
    # Line 156
    sw	$v1,-31676($s0)
    # Line 157
    sw	$v0,-31672($s0)
    # Line 158
    sw	$v0,-31668($s0)
    # Line 160
    sw	$at,-31660($s0)
    # Line 161
    sb	$zero,-31656($s0)
    # Line 175
    sw	$zero,-31620($s0)
    # Line 176
    sw	$v1,-31616($s0)
    # Line 177
    sw	$v0,-31612($s0)
    # Line 178
    sw	$v0,-31608($s0)
    # Line 179
    sw	$zero,-31604($s0)
    # Line 180
    sw	$at,-31600($s0)
    # Line 181
    sb	$zero,-31596($s0)
    # Line 192
    sw	$zero,-31560($s0)
    # Line 193
    sw	$a3,-31556($s0)
    # Line 196
    sw	$zero,-31544($s0)
    # Line 197
    sw	$a2,-31540($s0)
    # Line 198
    sb	$zero,-31536($s0)
    # Line 209
    sw	$zero,-31500($s0)
    # Line 210
    sw	$v1,-31496($s0)
    # Line 211
    sw	$v0,-31492($s0)
    # Line 212
    sw	$v0,-31488($s0)
    # Line 213
    sw	$zero,-31484($s0)
    # Line 214
    sw	$at,-31480($s0)
    # Line 215
    sb	$zero,-31476($s0)
    # Line 226
    sw	$zero,-31440($s0)
    # Line 227
    sw	$v1,-31436($s0)
    # Line 228
    sw	$v0,-31432($s0)
    # Line 229
    sw	$v0,-31428($s0)
    # Line 230
    sw	$zero,-31424($s0)
    # Line 231
    sw	$at,-31420($s0)
    # Line 232
    sb	$zero,-31416($s0)
    # Line 242
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac2c18:
    # Line 51
    lw	$t9,20($s1)
    la	$a1,sub_0dbf0000
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$a1,-7096
    b	.L0dac2928
    lw	$v0,-31860($s0)
.L0dac2c34:
    # Line 84
    lw	$t9,20($s1)
    la	$a1,sub_0dbf0000
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$a1,-7096
    b	.L0dac29ac
    lw	$v0,-31800($s0)
.L0dac2c50:
    # Line 116
    lw	$t9,20($s1)
    la	$a1,sub_0dbf0000
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$a1,-7096
    b	.L0dac2a1c
    lw	$v0,-31740($s0)
.L0dac2c6c:
    # Line 148
    lw	$t9,20($s1)
    la	$a1,sub_0dbf0000
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$a1,-7096
    lw	$v0,-31680($s0)
    b	.L0dac2a9c
    ld	$ra,16($sp)
.end __glMgrInitColorTableState

# Function: __glMgrFreeColorTableState
# Declared: Line 245 (Source lines: 246-280)
# Address: 0x0dac2c8c - 0x0dac2d44 (Size: 184 bytes, Frame: 48)
.globl __glMgrFreeColorTableState
.ent __glMgrFreeColorTableState
__glMgrFreeColorTableState:
    # Line 246
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    sd	$s1,8($sp)
    lui	$s1,0x1
    addu	$s1,$a0,$s1
    lw	$a1,-31860($s1)
    lui	$at,0x14
    addiu	$at,$at,-17908
    beqz	$a1,.L0dac2cd0
    addu	$gp,$t9,$at
    # Line 272
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
.L0dac2cd0:
    lw	$a1,-31800($s1)
    beqzl	$a1,.L0dac2cf4
    # Line 274
    lw	$a1,-31740($s1)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,-31740($s1)
.L0dac2cf4:
    beqzl	$a1,.L0dac2d14
    # Line 276
    lw	$a1,-31680($s1)
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    lw	$a1,-31680($s1)
.L0dac2d14:
    beqz	$a1,.L0dac2d34
    ld	$s1,8($sp)
    # Line 278
    lw	$t9,12($s0)
    move	$a0,$s0
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s1,8($sp)
    ld	$ra,24($sp)
.L0dac2d34:
    ld	$gp,16($sp)
    # Line 280
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrFreeColorTableState

# Function: __glMgrGetTable
# Declared: Line 284 (Source lines: 284-319)
# Address: 0x0dac2d44 - 0x0dac2de8 (Size: 164 bytes, Frame: 0)
.globl __glMgrGetTable
.ent __glMgrGetTable
__glMgrGetTable:
    # Line 285
    lw	$a4,__glCurrentContext
    lui	$v0,0xffff
    ori	$v0,$v0,0x7f44
    addu	$v0,$a0,$v0
    # Line 284
    lui	$v1,0x14
    addiu	$v1,$v1,-18092
    addu	$at,$t9,$v1
    # Line 285
    la	$a0,sub_0dbf0000
    sltiu	$v1,$v0,26
    sll	$v0,$v0,0x2
    addiu	$a0,$a0,-7040
    beqz	$v1,.L0dac2d88
    addu	$v0,$v0,$a0
    lw	$v1,%lo(jtbl_0dbee480)($v0)
    # Line 312
    li	$v0,0x8530
    # Line 285
    jr	$v1
    # Line 312
    addu	$v0,$a4,$v0
.L0dac2d88:
    # Line 315
    move	$v0,$zero
.L0dac2d8c:
    # Line 319
    jr	$ra
    nop
.L0dac2d94:
    # Line 291
    li	$v0,0x838c
    # Line 319
    jr	$ra
    # Line 291
    addu	$v0,$a4,$v0
.L0dac2da0:
    # Line 294
    li	$v0,0x83c8
    # Line 319
    jr	$ra
    # Line 294
    addu	$v0,$a4,$v0
.L0dac2dac:
    # Line 297
    li	$v0,0x8404
    # Line 319
    jr	$ra
    # Line 297
    addu	$v0,$a4,$v0
.L0dac2db8:
    # Line 300
    li	$v0,0x8440
    # Line 319
    jr	$ra
    # Line 300
    addu	$v0,$a4,$v0
.L0dac2dc4:
    # Line 303
    li	$v0,0x847c
    # Line 319
    jr	$ra
    # Line 303
    addu	$v0,$a4,$v0
.L0dac2dd0:
    # Line 306
    li	$v0,0x84b8
    # Line 319
    jr	$ra
    # Line 306
    addu	$v0,$a4,$v0
.L0dac2ddc:
    # Line 309
    li	$v0,0x84f4
    # Line 319
    jr	$ra
    # Line 309
    addu	$v0,$a4,$v0
.end __glMgrGetTable

# Function: __glMgrScaleBiasClampTable
# Declared: Line 322 (Source lines: 330-370)
# Address: 0x0dac2de8 - 0x0dac2f54 (Size: 364 bytes, Frame: 0)
.ent __glMgrScaleBiasClampTable
__glMgrScaleBiasClampTable:
    # Line 337
    lwc1	$f19,56($a0)
    # Line 336
    lwc1	$f18,52($a0)
    # Line 335
    lwc1	$f17,48($a0)
    # Line 334
    lwc1	$f16,44($a0)
    # Line 333
    lwc1	$f15,40($a0)
    # Line 332
    lwc1	$f14,36($a0)
    # Line 331
    lwc1	$f13,32($a0)
    # Line 330
    lwc1	$f12,28($a0)
    # Line 342
    move	$a4,$zero
    # Line 338
    lw	$a3,0($a0)
    # Line 342
    dmtc1	$zero,$f4
    blez	$a1,.L0dac2f4c
    # Line 339
    move	$a5,$a3
    b	.L0dac2e44
    # Line 342
    ldc1	$f5,_lit8_3ff0000000000000
.L0dac2e24:
    # Line 363
    mov.d	$f6,$f8
.L0dac2e28:
    # Line 342
    addiu	$a4,$a4,1
    # Line 365
    swc1	$f1,-12($a5)
    # Line 367
    cvt.s.d	$f3,$f6
    # Line 366
    swc1	$f2,-8($a5)
    # Line 364
    swc1	$f0,-16($a5)
    # Line 342
    beq	$a1,$a4,.L0dac2f4c
    # Line 367
    swc1	$f3,-4($a5)
.L0dac2e44:
    # Line 355
    lwc1	$f9,12($a3)
    mul.s	$f9,$f9,$f15
    # Line 352
    lwc1	$f10,0($a3)
    # Line 354
    lwc1	$f6,8($a3)
    # Line 352
    mul.s	$f10,$f10,$f12
    # Line 354
    mul.s	$f6,$f6,$f14
    # Line 355
    add.s	$f9,$f9,$f19
    # Line 353
    lwc1	$f8,4($a3)
    # Line 352
    add.s	$f10,$f10,$f16
    # Line 353
    mul.s	$f8,$f8,$f13
    # Line 354
    add.s	$f6,$f6,$f18
    # Line 355
    cvt.d.s	$f10,$f10
    c.lt.d	$f10,$f4
    # Line 353
    add.s	$f8,$f8,$f17
    # Line 355
    bc1f	.L0dac2e88
    # Line 356
    mov.d	$f7,$f10
    mov.d	$f7,$f4
.L0dac2e88:
    cvt.d.s	$f11,$f8
    c.lt.d	$f11,$f4
    nop
    bc1f	.L0dac2ea0
    # Line 357
    mov.d	$f10,$f11
    mov.d	$f10,$f4
.L0dac2ea0:
    cvt.d.s	$f11,$f6
    c.lt.d	$f11,$f4
    nop
    bc1f	.L0dac2eb8
    # Line 358
    mov.d	$f8,$f11
    mov.d	$f8,$f4
.L0dac2eb8:
    cvt.d.s	$f11,$f9
    # Line 359
    cvt.s.d	$f9,$f7
    # Line 358
    c.lt.d	$f11,$f4
    # Line 360
    cvt.s.d	$f7,$f10
    # Line 359
    mov.d	$f6,$f11
    # Line 358
    bc1f	.L0dac2ed8
    # Line 359
    cvt.d.s	$f9,$f9
    mov.d	$f6,$f4
.L0dac2ed8:
    c.lt.d	$f5,$f9
    # Line 361
    cvt.s.d	$f10,$f8
    # Line 360
    mov.d	$f11,$f9
    # Line 359
    bc1f	.L0dac2ef0
    # Line 360
    cvt.d.s	$f7,$f7
    mov.d	$f11,$f5
.L0dac2ef0:
    c.lt.d	$f5,$f7
    # Line 361
    mov.d	$f9,$f5
    # Line 360
    bc1t	.L0dac2f04
    # Line 364
    cvt.s.d	$f0,$f11
    # Line 361
    mov.d	$f9,$f7
.L0dac2f04:
    # Line 365
    cvt.s.d	$f1,$f9
    # Line 361
    cvt.d.s	$f10,$f10
    c.lt.d	$f5,$f10
    # Line 368
    addiu	$a3,$a3,16
    # Line 361
    bc1f	.L0dac2f28
    # Line 362
    cvt.s.d	$f8,$f6
    mov.d	$f7,$f5
    b	.L0dac2f2c
    nop
.L0dac2f28:
    mov.d	$f7,$f10
.L0dac2f2c:
    cvt.d.s	$f8,$f8
    c.lt.d	$f5,$f8
    # Line 368
    addiu	$a5,$a5,16
    # Line 363
    mov.d	$f6,$f5
    # Line 362
    bc1f	.L0dac2e24
    # Line 366
    cvt.s.d	$f2,$f7
    b	.L0dac2e28
    nop
.L0dac2f4c:
    # Line 370
    jr	$ra
    nop
.end __glMgrScaleBiasClampTable

# Function: __glMgrLoadTextureColorLUT
# Declared: Line 373 (Source lines: 374-440)
# Address: 0x0dac2f54 - 0x0dac3190 (Size: 572 bytes, Frame: 240)
.globl __glMgrLoadTextureColorLUT
.ent __glMgrLoadTextureColorLUT
__glMgrLoadTextureColorLUT:
    # Line 374
    addiu	$sp,$sp,-112
    sd	$s2,24($sp)
    # Line 388
    lw	$s2,__glCurrentContext
    sd	$s8,0($sp)
    # Line 374
    move	$s8,$a0
    sd	$s7,8($sp)
    move	$s7,$a1
    sd	$gp,16($sp)
    lui	$at,0x14
    addiu	$at,$at,-18620
    # Line 388
    beqz	$a1,.L0dac3178
    # Line 374
    addu	$gp,$t9,$at
    sd	$s6,32($sp)
    # Line 422
    li	$a4,1
    lui	$a2,0x9000
    li	$a1,348
    move	$a0,$s2
    # lw $t9, -30696($gp) # &__glMgrasWrite
    sd	$s4,48($sp)
    # Line 391
    la	$s4,SYMBOL_LOCATION
    sd	$ra,40($sp)
    # Line 422
    bal __glMgrasWrite
    lw	$a3,312($s4)
    sd	$s1,64($sp)
    sd	$s5,56($sp)
    # Line 423
    move	$s6,$zero
    blez	$s7,.L0dac3040
    ld	$ra,40($sp)
    li	$v0,256
    div	$zero,$v0,$s7
    sd	$s3,80($sp)
    sd	$s0,72($sp)
    teq	$s7,$zero,0x7
    mflo	$s1
    b	.L0dac2ff0
    move	$s5,$zero
.L0dac2fe4:
    addiu	$s6,$s6,1
    beq	$s7,$s6,.L0dac302c
    addiu	$s5,$s5,3
.L0dac2ff0:
    # Line 424
    blez	$s1,.L0dac2fe4
    move	$s0,$zero
    addu	$s3,$s5,$s8
    # Line 425
    move	$a0,$s2
.L0dac3000:
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,312($s4)
    lbu	$a2,0($s3)
    bal __glMgrasWrite
    li	$a1,349
    # Line 424
    addiu	$s0,$s0,1
    bne	$s1,$s0,.L0dac3000
    # Line 425
    move	$a0,$s2
    b	.L0dac2fe4
    nop
.L0dac302c:
    ld	$ra,40($sp)
    ld	$s5,56($sp)
    ld	$s1,64($sp)
    ld	$s0,72($sp)
    ld	$s3,80($sp)
.L0dac3040:
    sd	$s1,64($sp)
    sd	$s5,56($sp)
    # Line 428
    blez	$s7,.L0dac30cc
    move	$s6,$zero
    li	$v1,256
    div	$zero,$v1,$s7
    sd	$s3,80($sp)
    sd	$s0,72($sp)
    teq	$s7,$zero,0x7
    mflo	$s1
    b	.L0dac307c
    move	$s5,$zero
.L0dac3070:
    addiu	$s6,$s6,1
    beq	$s7,$s6,.L0dac30b8
    addiu	$s5,$s5,3
.L0dac307c:
    # Line 429
    blez	$s1,.L0dac3070
    move	$s0,$zero
    addu	$s3,$s5,$s8
    # Line 430
    move	$a0,$s2
.L0dac308c:
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,312($s4)
    lbu	$a2,1($s3)
    bal __glMgrasWrite
    li	$a1,349
    # Line 429
    addiu	$s0,$s0,1
    bne	$s1,$s0,.L0dac308c
    # Line 430
    move	$a0,$s2
    b	.L0dac3070
    nop
.L0dac30b8:
    ld	$ra,40($sp)
    ld	$s5,56($sp)
    ld	$s1,64($sp)
    ld	$s0,72($sp)
    ld	$s3,80($sp)
.L0dac30cc:
    # Line 434
    blez	$s7,.L0dac3158
    move	$s6,$zero
    li	$a2,256
    div	$zero,$a2,$s7
    sd	$s3,80($sp)
    sd	$s0,72($sp)
    teq	$s7,$zero,0x7
    sd	$s5,56($sp)
    sd	$s1,64($sp)
    mflo	$s1
    b	.L0dac3108
    move	$s5,$zero
.L0dac30fc:
    addiu	$s6,$s6,1
    beq	$s7,$s6,.L0dac3144
    addiu	$s5,$s5,3
.L0dac3108:
    # Line 435
    blez	$s1,.L0dac30fc
    move	$s0,$zero
    addu	$s3,$s5,$s8
    # Line 436
    move	$a0,$s2
.L0dac3118:
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,312($s4)
    lbu	$a2,2($s3)
    bal __glMgrasWrite
    li	$a1,349
    # Line 435
    addiu	$s0,$s0,1
    bne	$s1,$s0,.L0dac3118
    # Line 436
    move	$a0,$s2
    b	.L0dac30fc
    nop
.L0dac3144:
    ld	$ra,40($sp)
    ld	$s5,56($sp)
    ld	$s1,64($sp)
    ld	$s0,72($sp)
    ld	$s3,80($sp)
.L0dac3158:
    ld	$gp,16($sp)
    # Line 440
    ld	$s2,24($sp)
    ld	$s4,48($sp)
    ld	$s6,32($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dac3178:
    ld	$gp,16($sp)
    # Line 391
    ld	$s2,24($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrLoadTextureColorLUT

# Function: __glMgrTextureColorTable
# Declared: Line 448 (Source lines: 451-517)
# Address: 0x0dac3190 - 0x0dac33f4 (Size: 612 bytes, Frame: 144)
.globl __glMgrTextureColorTable
.ent __glMgrTextureColorTable
__glMgrTextureColorTable:
    # Line 455
    li	$v0,1
    # Line 451
    addiu	$sp,$sp,-144
    sd	$ra,64($sp)
    sd	$s2,56($sp)
    move	$s2,$a6
    sd	$a5,8($sp)
    sd	$s3,48($sp)
    move	$s3,$a4
    sd	$s4,32($sp)
    move	$s4,$a3
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,40($sp)
    lui	$v1,0x14
    addiu	$v1,$v1,-19192
    # Line 455
    lw	$at,__glBeginMode
    lw	$a7,__glCurrentContext
    # Line 451
    addu	$gp,$t9,$v1
    # Line 455
    beq	$at,$v0,.L0dac337c
    sd	$a7,0($sp)
    # Line 461
    # lw $t9, -30648($gp) # &__glMgrGetTable
    bal __glMgrGetTable
    move	$a0,$s1
    move	$a1,$v0
    ld	$ra,64($sp)
    li	$a0,256
    li	$t0,0x80bd
    beq	$s1,$t0,.L0dac3348
    slt	$a0,$a0,$s0
    # Line 477
    beqzl	$a0,.L0dac3250
    # Line 490
    sw	$s2,12($v0)
    # Line 482
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,0x8031
    # Line 483
    # lw $t9, -30604($gp) # &__glMgrUpdateTextureColorTableState
    bal __glMgrUpdateTextureColorTableState
    nop
    ld	$gp,40($sp)
    # Line 484
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,56($sp)
    ld	$ra,64($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dac3250:
    # Line 489
    sw	$s0,16($v0)
    # Line 488
    sw	$s4,8($v0)
    # Line 492
    li	$a7,6408
    beq	$s2,$a7,.L0dac3270
    # Line 487
    sw	$s3,4($v0)
    # Line 492
    li	$t0,0x8049
    bne	$s2,$t0,.L0dac328c
    # Line 507
    move	$a0,$s2
.L0dac3270:
    # Line 495
    li	$at,0x9cb1
    ld	$v1,0($sp)
    addu	$at,$at,$v1
    lbu	$at,0($at)
    beqz	$at,.L0dac33b8
    sd	$a1,72($sp)
    # Line 507
    move	$a0,$s2
.L0dac328c:
    sd	$a1,72($sp)
    move	$a1,$s0
    move	$a2,$s4
    move	$a3,$s3
    # lw $t9, -30600($gp) # &image1D_to_texturecolortable
    ld	$s1,72($sp)
    ld	$a4,8($sp)
    bal image1D_to_texturecolortable
    lw	$a5,0($s1)
    beqz	$v0,.L0dac32f0
    # Line 509
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    # Line 510
    # lw $t9, -30604($gp) # &__glMgrUpdateTextureColorTableState
    bal __glMgrUpdateTextureColorTableState
    nop
    ld	$gp,40($sp)
    # Line 511
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,56($sp)
    ld	$ra,64($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dac32f0:
    # Line 514
    # lw $t9, -30644($gp) # &__glMgrLoadTextureColorLUT
    lw	$a1,16($s1)
    bal __glMgrLoadTextureColorLUT
    lw	$a0,0($s1)
    ld	$t0,0($sp)
    li	$a7,0x83e0
    addu	$a7,$a7,$t0
    lbu	$a7,0($a7)
    beqz	$a7,.L0dac3328
    ld	$ra,64($sp)
    # Line 516
    # lw $t9, -30604($gp) # &__glMgrUpdateTextureColorTableState
    bal __glMgrUpdateTextureColorTableState
    nop
    ld	$ra,64($sp)
.L0dac3328:
    ld	$gp,40($sp)
    # Line 517
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dac3348:
    # Line 477
    ld	$s1,16($sp)
    # Line 466
    sw	$s4,8($v0)
    # Line 477
    ld	$s4,32($sp)
    # Line 466
    beqz	$a0,.L0dac33ac
    # Line 465
    sw	$s3,4($v0)
    # Line 470
    sw	$zero,12($v0)
    # Line 469
    sw	$zero,16($v0)
.L0dac3364:
    ld	$gp,40($sp)
    # Line 477
    ld	$s0,24($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dac337c:
    # Line 455
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,56($sp)
    ld	$ra,64($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dac33ac:
    # Line 475
    sw	$s2,12($v0)
    b	.L0dac3364
    # Line 474
    sw	$s0,16($v0)
.L0dac33b8:
    # Line 496
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 497
    # lw $t9, -30604($gp) # &__glMgrUpdateTextureColorTableState
    bal __glMgrUpdateTextureColorTableState
    nop
    ld	$gp,40($sp)
    # Line 498
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,56($sp)
    ld	$ra,64($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glMgrTextureColorTable

# Function: __glMgrColorTable
# Declared: Line 521 (Source lines: 524-607)
# Address: 0x0dac33f4 - 0x0dac3670 (Size: 636 bytes, Frame: 144)
.globl __glMgrColorTable
.ent __glMgrColorTable
__glMgrColorTable:
    # Line 529
    li	$v0,1
    # Line 524
    addiu	$sp,$sp,-144
    sd	$ra,64($sp)
    sd	$a6,16($sp)
    sd	$a5,0($sp)
    sd	$s3,56($sp)
    move	$s3,$a4
    sd	$s4,40($sp)
    move	$s4,$a3
    sd	$s1,32($sp)
    move	$s1,$a2
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,48($sp)
    lui	$v1,0x14
    addiu	$v1,$v1,-19804
    # Line 529
    lw	$at,__glBeginMode
    lw	$a7,__glCurrentContext
    # Line 524
    addu	$gp,$t9,$v1
    # Line 529
    beq	$at,$v0,.L0dac3608
    sd	$a7,8($sp)
    # Line 536
    # lw $t9, -30648($gp) # &__glMgrGetTable
    sd	$s2,72($sp)
    bal __glMgrGetTable
    move	$a0,$s0
    move	$s2,$v0
    # Line 538
    li	$t0,0x80d3
    beq	$s0,$t0,.L0dac35c0
    ld	$ra,64($sp)
    li	$at,0x80d4
    beq	$s0,$at,.L0dac35c0
    li	$v1,0x80d5
    beq	$s0,$v1,.L0dac35c0
    # Line 554
    slti	$a7,$s1,4097
    bnezl	$a7,.L0dac34b4
    # Line 565
    sw	$s1,16($v0)
    # Line 559
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,0x8031
    jal	__glSetError
    ld	$s2,72($sp)
    ld	$gp,48($sp)
    # Line 560
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$ra,64($sp)
    ld	$s3,56($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dac34b4:
    # Line 564
    sw	$s4,8($v0)
    ld	$t0,16($sp)
    # Line 567
    # lw $t9, -30472($gp) # &getchannels
    # Line 563
    sw	$s3,4($v0)
    # Line 567
    move	$a0,$t0
    jal	getchannels
    # Line 566
    sw	$t0,12($v0)
    # Line 570
    li	$at,0x80d0
    beq	$s0,$at,.L0dac3634
    # Line 567
    sw	$v0,20($s2)
    # Line 570
    li	$v1,0x80d1
    beq	$s0,$v1,.L0dac3648
    li	$a7,0x80d2
    beq	$s0,$a7,.L0dac365c
.L0dac34ec:
    ld	$a0,8($sp)
    # Line 584
    move	$a1,$s1
    lw	$a6,0($s2)
    ld	$a5,0($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    move	$a4,$s3
    move	$a3,$s4
    jal	__glFillImage
    li	$a2,1
    # Line 587
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    move	$a0,$s4
    # Line 591
    mult	$v0,$s1
    move	$a2,$s3
    # lw $t9, -30460($gp) # &__glMgrCvtToFloat
    lw	$a0,0($s2)
    mflo	$s0
    jal	__glMgrCvtToFloat
    move	$a1,$s0
    # Line 592
    # lw $t9, -30456($gp) # &__glMgrCvtScaleBias
    move	$a2,$s3
    move	$a1,$s0
    jal	__glMgrCvtScaleBias
    lw	$a0,0($s2)
    # Line 599
    move	$a3,$s4
    move	$a2,$s1
    # Line 597
    sll	$a0,$s0,0x2
    # Line 596
    sll	$a1,$s1,0x2
    # Line 595
    lw	$a4,0($s2)
    # Line 599
    # lw $t9, -30452($gp) # &__glMgrCvtToRGBA
    # Line 596
    sll	$a1,$a1,0x2
    # Line 597
    addu	$a0,$a0,$a4
    # Line 599
    jal	__glMgrCvtToRGBA
    # Line 596
    addu	$a1,$a1,$a4
    # Line 603
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s2
    addiu	$t9,$t9,11752
    bal __glMgrGetTable
    move	$a1,$s1
    # Line 606
    # lw $t9, -30448($gp) # &__glMgrCvtToInternalFmt
    ld	$a2,16($sp)
    move	$a1,$s1
    jal	__glMgrCvtToInternalFmt
    lw	$a0,0($s2)
    ld	$gp,48($sp)
    # Line 607
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$ra,64($sp)
    ld	$s3,56($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dac35c0:
    # Line 554
    ld	$s0,24($sp)
    # Line 542
    sw	$s3,4($v0)
    # Line 554
    ld	$s3,56($sp)
    # Line 543
    sw	$s4,8($v0)
    # Line 554
    ld	$s4,40($sp)
    # Line 543
    slti	$at,$s1,4097
    bnez	$at,.L0dac35ec
    ld	$s2,72($sp)
    # Line 547
    sw	$zero,12($v0)
    b	.L0dac35f8
    # Line 546
    sw	$zero,16($v0)
.L0dac35ec:
    ld	$v1,16($sp)
    # Line 551
    sw	$s1,16($v0)
    # Line 552
    sw	$v1,12($v0)
.L0dac35f8:
    ld	$gp,48($sp)
    # Line 554
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dac3608:
    # Line 529
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$ra,64($sp)
    ld	$s3,56($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dac3634:
    ld	$t0,8($sp)
    # Line 573
    lw	$a7,32096($t0)
    ori	$a7,$a7,0x1000
    # Line 574
    b	.L0dac34ec
    # Line 573
    sw	$a7,32096($t0)
.L0dac3648:
    ld	$at,8($sp)
    # Line 576
    lw	$t0,32096($at)
    ori	$t0,$t0,0x2000
    # Line 577
    b	.L0dac34ec
    # Line 576
    sw	$t0,32096($at)
.L0dac365c:
    ld	$v1,8($sp)
    # Line 579
    lw	$at,32096($v1)
    ori	$at,$at,0x4000
    b	.L0dac34ec
    sw	$at,32096($v1)
.end __glMgrColorTable

# Function: __glMgrim_ColorTableSGI
# Declared: Line 611 (Source lines: 613-706)
# Address: 0x0dac3670 - 0x0dac39d8 (Size: 872 bytes, Frame: 128)
.globl __glMgrim_ColorTableSGI
.ent __glMgrim_ColorTableSGI
__glMgrim_ColorTableSGI:
    # Line 617
    lw	$v0,__glCurrentContext
    li	$a6,1
    # Line 613
    addiu	$sp,$sp,-128
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$s1,40($sp)
    move	$s1,$a3
    sd	$s2,32($sp)
    move	$s2,$a2
    sd	$a1,0($sp)
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$gp,48($sp)
    # Line 617
    lw	$at,__glBeginMode
    # Line 613
    lui	$v1,0x14
    addiu	$v1,$v1,-20440
    # Line 617
    beq	$at,$a6,.L0dac3958
    # Line 613
    addu	$gp,$t9,$v1
    # Line 617
    lw	$a7,3088($v0)
    # Line 635
    li	$v1,0x80d0
    # Line 631
    la	$a1,__glMgrTextureColorTable
    # Line 617
    beq	$a7,$a6,.L0dac3984
    # Line 631
    li	$at,0x80bd
    li	$t0,0x80bc
    beql	$s0,$t0,.L0dac3880
    # Line 633
    move	$at,$a1
    # Line 631
    beq	$s0,$at,.L0dac387c
    # Line 635
    li	$t0,0x80d2
    beq	$s0,$v1,.L0dac3710
    li	$at,0x80d3
    li	$a7,0x80d1
    beq	$s0,$a7,.L0dac3714
    la	$a1,__glMgrTextureColorTable
    beq	$s0,$t0,.L0dac3710
    li	$a7,0x80d5
    beq	$s0,$at,.L0dac3710
    li	$v1,0x80d4
    beq	$s0,$v1,.L0dac3714
    la	$a1,__glMgrTextureColorTable
    bne	$s0,$a7,.L0dac3904
.L0dac3710:
    la	$a1,__glMgrTextureColorTable
.L0dac3714:
    # Line 642
    la	$t0,__glMgrColorTable
    sd	$t0,24($sp)
.L0dac371c:
    # Line 635
    sltiu	$at,$s1,6408
    bnez	$at,.L0dac3790
    # Line 651
    sltiu	$v1,$s1,6409
    bnez	$v1,.L0dac37d0
    li	$a0,0x8000
    sltu	$a7,$s1,$a0
    bnez	$a7,.L0dac38e8
    sltu	$t0,$a0,$s1
    beqz	$t0,.L0dac37d0
    li	$at,0x8049
    bne	$s1,$at,.L0dac38bc
    ld	$v1,24($sp)
    # Line 654
    bne	$v1,$a1,.L0dac3764
    li	$a7,0x9cb1
    addu	$a7,$a7,$v0
    lbu	$a7,0($a7)
    bnez	$a7,.L0dac37d0
    sd	$ra,64($sp)
.L0dac3764:
    # Line 655
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac3790:
    # Line 651
    sltiu	$t0,$s1,6405
    bnez	$t0,.L0dac37bc
    sltiu	$at,$s1,6406
    bnez	$at,.L0dac37d0
    sltiu	$v1,$s1,6407
    bnez	$v1,.L0dac3930
    sltiu	$a7,$s1,6408
    beqz	$a7,.L0dac38c0
    # Line 667
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dac37d0
    sd	$ra,64($sp)
.L0dac37bc:
    # Line 651
    sltiu	$t0,$s1,6404
    bnez	$t0,.L0dac38b0
    sltiu	$at,$s1,6405
    beqz	$at,.L0dac38bc
    sd	$ra,64($sp)
.L0dac37d0:
    # Line 672
    # lw $t9, -30468($gp) # &getbaseformat
    sd	$ra,64($sp)
    jal	getbaseformat
    ld	$a0,0($sp)
    ld	$t1,8($sp)
    beqz	$v0,.L0dac39b0
    # Line 682
    la	$at,sub_0dbf0000
    # Line 679
    bltz	$s2,.L0dac3800
    addiu	$v1,$s2,-1
    and	$v1,$v1,$s2
    beqz	$v1,.L0dac3828
    # Line 682
    addiu	$at,$at,-6936
.L0dac3800:
    # Line 681
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$gp,48($sp)
    # Line 682
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac3828:
    addiu	$t1,$t1,-5120
    sltiu	$a7,$t1,7
    sll	$t1,$t1,0x2
    beqz	$a7,.L0dac3888
    addu	$t1,$t1,$at
    # Line 705
    move	$a0,$s0
    ld	$a1,0($sp)
    move	$a2,$s2
    move	$a3,$s1
    ld	$t9,24($sp)
    ld	$a4,8($sp)
    ld	$a5,16($sp)
    jalr	$t9
    move	$a6,$v0
    ld	$gp,48($sp)
    # Line 706
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac387c:
    # Line 633
    move	$at,$a1
.L0dac3880:
    b	.L0dac371c
    sd	$a1,24($sp)
.L0dac3888:
    # Line 697
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 698
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac38b0:
    # Line 651
    li	$v1,6403
    beq	$s1,$v1,.L0dac37d0
    sd	$ra,64($sp)
.L0dac38bc:
    # Line 667
    # lw $t9, -27320($gp) # &__glSetError
.L0dac38c0:
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 668
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac38e8:
    # Line 651
    sltiu	$a7,$s1,6410
    bnez	$a7,.L0dac3944
    sltiu	$t0,$s1,6411
    beqz	$t0,.L0dac38c0
    # Line 667
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dac37d0
    sd	$ra,64($sp)
.L0dac3904:
    # Line 646
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 647
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac3930:
    # Line 651
    li	$at,6406
    bne	$s1,$at,.L0dac38c0
    # Line 667
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dac37d0
    sd	$ra,64($sp)
.L0dac3944:
    # Line 651
    li	$v1,6409
    bne	$s1,$v1,.L0dac38c0
    # Line 667
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dac37d0
    sd	$ra,64($sp)
.L0dac3958:
    # Line 617
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac3984:
    # Line 626
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,48($sp)
    # Line 627
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac39b0:
    # Line 674
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 675
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glMgrim_ColorTableSGI

# Function: __glMgrim_ColorTableParameterfvSGI
# Declared: Line 709 (Source lines: 710-742)
# Address: 0x0dac39d8 - 0x0dac3afc (Size: 292 bytes, Frame: 192)
.globl __glMgrim_ColorTableParameterfvSGI
.ent __glMgrim_ColorTableParameterfvSGI
__glMgrim_ColorTableParameterfvSGI:
    # Line 710
    li	$v0,1
    addiu	$sp,$sp,-64
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x14
    addiu	$v1,$v1,-21312
    beq	$at,$v0,.L0dac3adc
    addu	$gp,$t9,$v1
    # Line 712
    li	$a3,0x80bc
    beq	$a0,$a3,.L0dac3a40
    li	$a4,0x80d0
    beq	$a0,$a4,.L0dac3a40
    # Line 714
    li	$at,0x80d1
    beq	$a0,$at,.L0dac3a40
    li	$v1,0x80d2
    beq	$a0,$v1,.L0dac3a40
    sd	$ra,24($sp)
    # Line 719
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 720
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dac3a40:
    # Line 723
    # lw $t9, -30648($gp) # &__glMgrGetTable
    sd	$ra,24($sp)
    bal __glMgrGetTable
    nop
    ld	$at,0($sp)
    # Line 725
    ld	$a0,8($sp)
    li	$a3,0x80d6
    beq	$a0,$a3,.L0dac3ab4
    ld	$ra,24($sp)
    li	$a4,0x80d7
    beq	$a0,$a4,.L0dac3a88
    # Line 739
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 740
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dac3a88:
    # Line 733
    lwc1	$f3,0($at)
    swc1	$f3,44($v0)
    # Line 734
    lwc1	$f2,4($at)
    swc1	$f2,48($v0)
    # Line 735
    lwc1	$f1,8($at)
    swc1	$f1,52($v0)
    # Line 736
    lwc1	$f0,12($at)
    swc1	$f0,56($v0)
.L0dac3aa8:
    ld	$gp,16($sp)
    # Line 742
    jr	$ra
    addiu	$sp,$sp,64
.L0dac3ab4:
    ld	$v1,0($sp)
    # Line 727
    lwc1	$f3,0($v1)
    swc1	$f3,28($v0)
    # Line 728
    lwc1	$f2,4($v1)
    swc1	$f2,32($v0)
    # Line 729
    lwc1	$f1,8($v1)
    swc1	$f1,36($v0)
    # Line 730
    lwc1	$f0,12($v1)
    # Line 731
    b	.L0dac3aa8
    # Line 730
    swc1	$f0,40($v0)
.L0dac3adc:
    # Line 712
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_ColorTableParameterfvSGI

# Function: __glMgrim_ColorTableParameterivSGI
# Declared: Line 746 (Source lines: 747-762)
# Address: 0x0dac3afc - 0x0dac3b9c (Size: 160 bytes, Frame: 192)
.globl __glMgrim_ColorTableParameterivSGI
.ent __glMgrim_ColorTableParameterivSGI
__glMgrim_ColorTableParameterivSGI:
    # Line 747
    li	$at,0x80d6
    addiu	$sp,$sp,-64
    # Line 755
    addiu	$a4,$sp,0
    sd	$gp,16($sp)
    # Line 747
    lui	$v0,0x14
    addiu	$v0,$v0,-21604
    beq	$a1,$at,.L0dac3b24
    addu	$gp,$t9,$v0
    li	$v1,0x80d7
    bne	$a1,$v1,.L0dac3b7c
.L0dac3b24:
    # Line 755
    move	$a5,$a2
    # Line 757
    lw	$v1,0($a5)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a4)
    lw	$v0,4($a5)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($a4)
    lw	$at,8($a5)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($a4)
    lw	$a3,12($a5)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a4)
    sd	$ra,24($sp)
.L0dac3b7c:
    # Line 761
    # lw $t9, -30628($gp) # &__glMgrim_ColorTableParameterfvSGI
    sd	$ra,24($sp)
    bal __glMgrim_ColorTableParameterfvSGI
    addiu	$a2,$sp,0
    # Line 762
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_ColorTableParameterivSGI

# Function: __glMgrim_CopyColorTableSGI
# Declared: Line 765 (Source lines: 766-807)
# Address: 0x0dac3b9c - 0x0dac3cec (Size: 336 bytes, Frame: 128)
.globl __glMgrim_CopyColorTableSGI
.ent __glMgrim_CopyColorTableSGI
__glMgrim_CopyColorTableSGI:
    # Line 772
    li	$v0,1
    # Line 766
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$s0,56($sp)
    # Line 772
    lw	$s0,__glCurrentContext
    sd	$s1,48($sp)
    # Line 766
    move	$s1,$a4
    sd	$a3,32($sp)
    sd	$a2,24($sp)
    sd	$a1,16($sp)
    sd	$a0,8($sp)
    sd	$gp,40($sp)
    # Line 772
    lw	$at,__glBeginMode
    # Line 766
    lui	$v1,0x14
    addiu	$v1,$v1,-21764
    # Line 772
    beq	$at,$v0,.L0dac3cc8
    # Line 766
    addu	$gp,$t9,$v1
    # Line 783
    lw	$t9,0($s0)
    sd	$s2,72($sp)
    move	$a0,$s0
    jalr	$t9
    sll	$a1,$s1,0x3
    beqz	$v0,.L0dac3cac
    move	$s2,$v0
    # Line 796
    move	$a7,$s2
.L0dac3c00:
    li	$a6,5123
    li	$a5,6408
    li	$a4,1
    move	$a3,$s1
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    move	$a0,$s0
    li	$t0,1
    # Line 795
    li	$t2,0x9600
    lui	$t3,0x7
    # Line 792
    lui	$t1,0x1
    addu	$t1,$s0,$t1
    # Line 795
    ori	$t3,$t3,0x4080
    # Line 796
    # lw $t9, -31856($gp) # &__glMgrDoReadPixels
    # Line 795
    sw	$t2,0($t3)
    sd	$t1,0($sp)
    # Line 796
    jal	__glMgrDoReadPixels
    # Line 792
    sb	$t0,-25268($t1)
    # Line 803
    move	$a5,$s2
    li	$a4,5123
    li	$a3,6408
    move	$a2,$s1
    ld	$a1,16($sp)
    ld	$a0,8($sp)
    # Line 797
    li	$t8,0x9700
    lui	$ra,0x7
    ori	$ra,$ra,0x4080
    # Line 803
    # lw $t9, -30632($gp) # &__glMgrim_ColorTableSGI
    # Line 800
    ld	$at,0($sp)
    # Line 797
    sw	$t8,0($ra)
    # Line 803
    bal __glMgrim_ColorTableSGI
    # Line 800
    sb	$zero,-25268($at)
    # Line 806
    lw	$t9,12($s0)
    move	$a0,$s0
    jal	__glMgrim_ColorTableSGI
    move	$a1,$s2
    ld	$gp,40($sp)
    # Line 807
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,48($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dac3cac:
    # Line 787
    lw	$t9,20($s0)
    la	$a1,sub_0dbf0000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,-6904
    b	.L0dac3c00
    # Line 796
    move	$a7,$s2
.L0dac3cc8:
    # Line 772
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    ld	$ra,64($sp)
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glMgrim_CopyColorTableSGI

# Function: __glMgrim_GetColorTableSGI
# Declared: Line 810 (Source lines: 811-929)
# Address: 0x0dac3cec - 0x0dac4020 (Size: 820 bytes, Frame: 144)
.globl __glMgrim_GetColorTableSGI
.ent __glMgrim_GetColorTableSGI
__glMgrim_GetColorTableSGI:
    # Line 811
    move	$v0,$a3
    # Line 812
    li	$a4,1
    # Line 811
    addiu	$sp,$sp,-656
    sd	$s1,568($sp)
    # Line 812
    lw	$s1,__glCurrentContext
    sd	$s0,584($sp)
    # Line 811
    move	$s0,$a1
    sd	$gp,576($sp)
    # Line 812
    lw	$at,__glBeginMode
    # Line 811
    lui	$v1,0x14
    addiu	$v1,$v1,-22100
    # Line 812
    beq	$at,$a4,.L0dac3ff8
    # Line 811
    addu	$gp,$t9,$v1
    # Line 822
    li	$a7,0x80d0
    beq	$a0,$a7,.L0dac3d38
    li	$t0,0x80d1
    beq	$a0,$t0,.L0dac3d38
    # Line 825
    li	$at,0x80d2
    bne	$a0,$at,.L0dac3f3c
.L0dac3d38:
    # Line 834
    sltiu	$at,$s0,6410
    # Line 825
    beqz	$v0,.L0dac3f3c
    # Line 834
    sltiu	$a7,$s0,6408
    # Line 831
    sltiu	$v1,$s0,6407
    bnez	$v1,.L0dac3ed8
    # Line 834
    sltiu	$t0,$s0,6405
    beqz	$a7,.L0dac3f80
    nop
.L0dac3d58:
    sd	$ra,592($sp)
.L0dac3d5c:
    sd	$v0,600($sp)
    sd	$a2,608($sp)
    # Line 849
    addiu	$a1,$a2,-5120
    la	$a7,sub_0dbf0000
    sltiu	$t0,$a1,7
    sll	$a1,$a1,0x2
    addiu	$a7,$a7,-6840
    beqz	$t0,.L0dac3f18
    addu	$a1,$a1,$a7
    # Line 867
    # lw $t9, -30648($gp) # &__glMgrGetTable
    bal __glMgrGetTable
    nop
    ld	$a6,600($sp)
    ld	$a5,608($sp)
    # Line 883
    lwc1	$f0,_lit_3f800000
    # Line 879
    lwc1	$f3,30808($s1)
    # Line 881
    lwc1	$f2,30844($s1)
    # Line 883
    swc1	$f0,30844($s1)
    # Line 880
    lwc1	$f1,30812($s1)
    # Line 883
    swc1	$f0,30812($s1)
    swc1	$f0,30808($s1)
    sdc1	$f2,560($sp)
    # Line 878
    lwc1	$f2,30804($s1)
    # Line 883
    swc1	$f0,30804($s1)
    sdc1	$f1,552($sp)
    # Line 877
    lwc1	$f1,30864($s1)
    # Line 883
    swc1	$f0,30864($s1)
    sdc1	$f3,544($sp)
    # Line 876
    lwc1	$f3,30860($s1)
    # Line 883
    swc1	$f0,30860($s1)
    sdc1	$f2,536($sp)
    # Line 875
    lwc1	$f2,30856($s1)
    # Line 883
    swc1	$f0,30856($s1)
    sdc1	$f1,528($sp)
    # Line 874
    lwc1	$f1,30852($s1)
    # Line 883
    swc1	$f0,30852($s1)
    # Line 892
    li	$a7,6409
    lw	$a0,12($v0)
    sdc1	$f3,520($sp)
    sdc1	$f2,512($sp)
    beq	$a0,$a7,.L0dac3fd0
    sdc1	$f1,504($sp)
    li	$t0,0x8049
    beq	$a0,$t0,.L0dac3fd0
    li	$at,6410
    beq	$a0,$at,.L0dac3ff0
    li	$at,1
    # Line 902
    lw	$v1,12($v0)
    sw	$v1,0($sp)
.L0dac3e20:
    # Line 906
    lw	$a7,0($v0)
    # Line 909
    move	$a4,$s0
    li	$a3,1
    # Line 906
    sw	$a7,8($sp)
    # Line 909
    addiu	$a1,$sp,0
    # Line 907
    lw	$a2,4($v0)
    # Line 909
    # lw $t9, -26888($gp) # &__glInitImagePack
    move	$a0,$s1
    # Line 907
    sw	$a2,4($sp)
    # Line 909
    jal	__glInitImagePack
    lw	$a2,16($v0)
    # Line 910
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s1
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 911
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s1
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 918
    lw	$t9,12632($s1)
    move	$a0,$s1
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$gp,576($sp)
    # Line 929
    ld	$s0,584($sp)
    # Line 925
    ldc1	$f2,536($sp)
    # Line 924
    ldc1	$f1,528($sp)
    # Line 929
    ld	$ra,592($sp)
    # Line 925
    swc1	$f2,30804($s1)
    # Line 924
    swc1	$f1,30864($s1)
    # Line 927
    ldc1	$f4,552($sp)
    # Line 926
    ldc1	$f3,544($sp)
    ldc1	$f0,560($sp)
    # Line 927
    swc1	$f4,30812($s1)
    # Line 922
    ldc1	$f4,512($sp)
    # Line 928
    swc1	$f0,30844($s1)
    # Line 923
    ldc1	$f0,520($sp)
    # Line 926
    swc1	$f3,30808($s1)
    # Line 921
    ldc1	$f3,504($sp)
    # Line 923
    swc1	$f0,30860($s1)
    # Line 922
    swc1	$f4,30856($s1)
    # Line 921
    swc1	$f3,30852($s1)
    # Line 929
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0dac3ed8:
    # Line 834
    bnez	$t0,.L0dac3f64
    sltiu	$at,$s0,6406
    bnez	$at,.L0dac3d58
    li	$v1,6406
    beql	$s0,$v1,.L0dac3d5c
    sd	$ra,592($sp)
.L0dac3ef0:
    # Line 847
    # lw $t9, -27320($gp) # &__glSetError
.L0dac3ef4:
    sd	$ra,592($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,576($sp)
    # Line 848
    ld	$ra,592($sp)
    ld	$s0,584($sp)
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0dac3f18:
    # Line 863
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,576($sp)
    # Line 864
    ld	$ra,592($sp)
    ld	$s0,584($sp)
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0dac3f3c:
    # Line 830
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,592($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,576($sp)
    # Line 831
    ld	$ra,592($sp)
    ld	$s0,584($sp)
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0dac3f64:
    # Line 834
    sltiu	$a7,$s0,6404
    bnez	$a7,.L0dac3fa0
    sltiu	$t0,$s0,6405
    beqz	$t0,.L0dac3ef4
    # Line 847
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dac3d5c
    sd	$ra,592($sp)
.L0dac3f80:
    # Line 834
    bnez	$at,.L0dac3fb4
    sltiu	$v1,$s0,6411
    bnez	$v1,.L0dac3d58
    li	$a7,0x8000
    beql	$s0,$a7,.L0dac3d5c
    sd	$ra,592($sp)
    b	.L0dac3ef0
    sd	$ra,592($sp)
.L0dac3fa0:
    li	$t0,6403
    bne	$s0,$t0,.L0dac3ef4
    # Line 847
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dac3d5c
    sd	$ra,592($sp)
.L0dac3fb4:
    # Line 834
    sltiu	$at,$s0,6409
    bnez	$at,.L0dac3fdc
    sltiu	$v1,$s0,6410
    beqz	$v1,.L0dac3ef4
    # Line 847
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dac3d5c
    sd	$ra,592($sp)
.L0dac3fd0:
    # Line 896
    li	$a7,6403
    # Line 897
    b	.L0dac3e20
    # Line 896
    sw	$a7,0($sp)
.L0dac3fdc:
    # Line 834
    li	$t0,6408
    bne	$s0,$t0,.L0dac3ef4
    # Line 847
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dac3d5c
    sd	$ra,592($sp)
.L0dac3ff0:
    # Line 900
    b	.L0dac3e20
    # Line 899
    sw	$at,0($sp)
.L0dac3ff8:
    # Line 821
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,592($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,576($sp)
    # Line 822
    ld	$ra,592($sp)
    ld	$s0,584($sp)
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.end __glMgrim_GetColorTableSGI

# Function: __glMgrim_GetColorTableParameterfvSGI
# Declared: Line 932 (Source lines: 933-1017)
# Address: 0x0dac4020 - 0x0dac4498 (Size: 1144 bytes, Frame: 208)
.globl __glMgrim_GetColorTableParameterfvSGI
.ent __glMgrim_GetColorTableParameterfvSGI
__glMgrim_GetColorTableParameterfvSGI:
    # Line 933
    li	$v0,1
    addiu	$sp,$sp,-80
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x14
    addiu	$v1,$v1,-22920
    beq	$at,$v0,.L0dac4364
    addu	$gp,$t9,$v1
    # Line 935
    li	$v0,0x80bc
    beq	$v0,$s0,.L0dac40b4
    li	$a3,0x80bd
    beq	$s0,$a3,.L0dac40b4
    # Line 937
    li	$a4,0x80d0
    beq	$s0,$a4,.L0dac40b4
    li	$at,0x80d1
    beq	$s0,$at,.L0dac40b4
    li	$v1,0x80d2
    beq	$s0,$v1,.L0dac40b4
    li	$a3,0x80d3
    beq	$s0,$a3,.L0dac40b4
    li	$a4,0x80d4
    beq	$s0,$a4,.L0dac40b4
    li	$at,0x80d5
    beq	$s0,$at,.L0dac40b4
    sd	$ra,32($sp)
    # Line 946
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 947
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac40b4:
    # Line 950
    # lw $t9, -30648($gp) # &__glMgrGetTable
    sd	$ra,32($sp)
    bal __glMgrGetTable
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$a0,0($sp)
    lui	$a3,0xffff
    ori	$a3,$a3,0x7f2a
    addu	$a0,$a0,$a3
    la	$a3,sub_0dbf0000
    sltiu	$v1,$a0,10
    sll	$a0,$a0,0x2
    addiu	$a3,$a3,-6808
    beqz	$v1,.L0dac4100
    addu	$a0,$a0,$a3
    lw	$a4,%lo(jtbl_0dbee568)($a0)
    li	$v1,0x80bc
    jr	$a4
    li	$a3,0x80bc
.L0dac4100:
    # Line 1014
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1015
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac4120:
    # Line 954
    ld	$at,8($sp)
    lwc1	$f3,28($v0)
    swc1	$f3,0($at)
    # Line 955
    lwc1	$f2,32($v0)
    swc1	$f2,4($at)
    # Line 956
    lwc1	$f1,36($v0)
    swc1	$f1,8($at)
    # Line 957
    lwc1	$f0,40($v0)
    # Line 958
    b	.L0dac4160
    # Line 957
    swc1	$f0,12($at)
.L0dac4148:
    # Line 969
    lw	$a3,16($v0)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$v1,8($sp)
    swc1	$f0,0($v1)
.L0dac4160:
    ld	$gp,16($sp)
    # Line 1017
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac4170:
    # Line 960
    ld	$a4,8($sp)
    lwc1	$f0,44($v0)
    swc1	$f0,0($a4)
    # Line 961
    lwc1	$f3,48($v0)
    swc1	$f3,4($a4)
    # Line 962
    lwc1	$f2,52($v0)
    swc1	$f2,8($a4)
    # Line 963
    lwc1	$f1,56($v0)
    # Line 964
    b	.L0dac4160
    # Line 963
    swc1	$f1,12($a4)
.L0dac4198:
    # Line 966
    ld	$at,8($sp)
    lw	$v1,12($v0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    # Line 967
    b	.L0dac4160
    # Line 966
    swc1	$f1,0($at)
.L0dac41bc:
    li	$a3,0x80bc
    # Line 972
    beq	$a3,$s0,.L0dac4388
    li	$a4,0x80bd
    beql	$s0,$a4,.L0dac438c
    lw	$at,12($v0)
    # Line 975
    lw	$at,12($v0)
    beqz	$at,.L0dac4438
    nop
    lw	$v1,20($v0)
    andi	$v1,$v1,0x8
    beqz	$v1,.L0dac4438
    li	$v0,16
.L0dac41ec:
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$a3,8($sp)
    b	.L0dac4160
    swc1	$f2,0($a3)
.L0dac4204:
    li	$a4,0x80bc
    # Line 979
    beq	$a4,$s0,.L0dac43b0
    li	$at,0x80bd
    beql	$s0,$at,.L0dac43b4
    lw	$a4,12($v0)
    # Line 982
    lw	$v1,12($v0)
    beqz	$v1,.L0dac4440
    nop
    lw	$a3,20($v0)
    andi	$a3,$a3,0x4
    beqz	$a3,.L0dac4440
    li	$v0,16
.L0dac4234:
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$a4,8($sp)
    b	.L0dac4160
    swc1	$f3,0($a4)
.L0dac424c:
    li	$at,0x80bc
    # Line 986
    beq	$at,$s0,.L0dac43d8
    li	$v1,0x80bd
    beql	$s0,$v1,.L0dac43dc
    lw	$a3,12($v0)
    # Line 989
    lw	$a3,12($v0)
    beqz	$a3,.L0dac4448
    nop
    lw	$a4,20($v0)
    andi	$a4,$a4,0x2
    beqz	$a4,.L0dac4448
    li	$v0,16
.L0dac427c:
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$at,8($sp)
    b	.L0dac4160
    swc1	$f0,0($at)
.L0dac4294:
    # Line 993
    beq	$v1,$s0,.L0dac4458
    li	$a3,0x80bd
    beq	$s0,$a3,.L0dac445c
    # Line 994
    ld	$at,8($sp)
    # Line 996
    lw	$a4,12($v0)
    beqz	$a4,.L0dac4428
    nop
    lw	$at,20($v0)
    andi	$at,$at,0x1
    beqz	$at,.L0dac4428
    li	$v0,16
.L0dac42c0:
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$v1,8($sp)
    b	.L0dac4160
    swc1	$f1,0($v1)
.L0dac42d8:
    # Line 1000
    beq	$a3,$s0,.L0dac4400
    li	$a4,0x80bd
    beql	$s0,$a4,.L0dac4404
    lw	$v1,12($v0)
    # Line 1003
    lw	$at,12($v0)
    beqz	$at,.L0dac4450
    nop
    lw	$v1,20($v0)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0dac4450
    li	$v0,16
.L0dac4304:
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$a3,8($sp)
    b	.L0dac4160
    swc1	$f2,0($a3)
.L0dac431c:
    li	$a4,0x80bc
    # Line 1007
    beq	$a4,$s0,.L0dac4468
    li	$at,0x80bd
    beq	$s0,$at,.L0dac446c
    # Line 1008
    ld	$v1,8($sp)
    # Line 1010
    lw	$v1,12($v0)
    beqz	$v1,.L0dac4430
    nop
    lw	$a3,20($v0)
    andi	$a3,$a3,0x20
    beqz	$a3,.L0dac4430
    li	$v0,16
.L0dac434c:
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$a4,8($sp)
    b	.L0dac4160
    swc1	$f3,0($a4)
.L0dac4364:
    # Line 935
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac4388:
    # Line 972
    lw	$at,12($v0)
.L0dac438c:
    li	$v1,6407
    beq	$at,$v1,.L0dac4478
    # Line 973
    move	$v0,$zero
.L0dac4398:
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$a3,8($sp)
    b	.L0dac4160
    swc1	$f0,0($a3)
.L0dac43b0:
    # Line 979
    lw	$a4,12($v0)
.L0dac43b4:
    li	$at,6407
    beq	$a4,$at,.L0dac4480
    # Line 980
    move	$v0,$zero
.L0dac43c0:
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$v1,8($sp)
    b	.L0dac4160
    swc1	$f1,0($v1)
.L0dac43d8:
    # Line 986
    lw	$a3,12($v0)
.L0dac43dc:
    li	$a4,6407
    beq	$a3,$a4,.L0dac4488
    # Line 987
    move	$v0,$zero
.L0dac43e8:
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$at,8($sp)
    b	.L0dac4160
    swc1	$f2,0($at)
.L0dac4400:
    # Line 1000
    lw	$v1,12($v0)
.L0dac4404:
    li	$a3,6409
    beq	$v1,$a3,.L0dac4490
    # Line 1001
    move	$v0,$zero
.L0dac4410:
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$a4,8($sp)
    b	.L0dac4160
    swc1	$f3,0($a4)
.L0dac4428:
    # Line 996
    b	.L0dac42c0
    move	$v0,$zero
.L0dac4430:
    # Line 1010
    b	.L0dac434c
    move	$v0,$zero
.L0dac4438:
    # Line 975
    b	.L0dac41ec
    move	$v0,$zero
.L0dac4440:
    # Line 982
    b	.L0dac4234
    move	$v0,$zero
.L0dac4448:
    # Line 989
    b	.L0dac427c
    move	$v0,$zero
.L0dac4450:
    # Line 1003
    b	.L0dac4304
    move	$v0,$zero
.L0dac4458:
    # Line 994
    ld	$at,8($sp)
.L0dac445c:
    mtc1	$zero,$f0
    b	.L0dac4160
    swc1	$f0,0($at)
.L0dac4468:
    # Line 1008
    ld	$v1,8($sp)
.L0dac446c:
    mtc1	$zero,$f1
    b	.L0dac4160
    swc1	$f1,0($v1)
.L0dac4478:
    # Line 973
    b	.L0dac4398
    li	$v0,8
.L0dac4480:
    # Line 980
    b	.L0dac43c0
    li	$v0,8
.L0dac4488:
    # Line 987
    b	.L0dac43e8
    li	$v0,8
.L0dac4490:
    # Line 1001
    b	.L0dac4410
    li	$v0,8
.end __glMgrim_GetColorTableParameterfvSGI

# Function: __glMgrim_GetColorTableParameterivSGI
# Declared: Line 1020 (Source lines: 1021-1066)
# Address: 0x0dac4498 - 0x0dac4654 (Size: 444 bytes, Frame: 208)
.globl __glMgrim_GetColorTableParameterivSGI
.ent __glMgrim_GetColorTableParameterivSGI
__glMgrim_GetColorTableParameterivSGI:
    # Line 1021
    li	$at,0x80bc
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    lui	$v0,0x14
    addiu	$v0,$v0,-24064
    beq	$a0,$at,.L0dac4510
    addu	$gp,$t9,$v0
    li	$v1,0x80bd
    beq	$a0,$v1,.L0dac4510
    # Line 1025
    li	$a3,0x80d0
    beq	$a0,$a3,.L0dac4510
    li	$at,0x80d1
    beq	$a0,$at,.L0dac4510
    li	$v0,0x80d2
    beq	$a0,$v0,.L0dac4510
    li	$v1,0x80d3
    beq	$a0,$v1,.L0dac4510
    li	$a3,0x80d4
    beq	$a0,$a3,.L0dac4510
    li	$at,0x80d5
    beq	$a0,$at,.L0dac4514
    # Line 1035
    la	$at,sub_0dbf0000
    # Line 1034
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1035
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac4510:
    la	$at,sub_0dbf0000
.L0dac4514:
    lui	$a4,0xffff
    ori	$a4,$a4,0x7f2a
    addu	$a4,$a1,$a4
    addiu	$at,$at,-6768
    sltiu	$v0,$a4,10
    sll	$a4,$a4,0x2
    beqz	$v0,.L0dac4634
    addu	$a4,$a4,$at
    lw	$at,%lo(jtbl_0dbee590)($a4)
    jr	$at
    sd	$s0,40($sp)
.L0dac4540:
    sd	$ra,32($sp)
    sd	$a2,16($sp)
    # Line 1042
    li	$s0,4
.L0dac454c:
    # Line 1059
    # lw $t9, -30612($gp) # &__glMgrim_GetColorTableParameterfvSGI
    bal __glMgrim_GetColorTableParameterfvSGI
    addiu	$a2,$sp,0
    addiu	$a1,$sp,0
    addiu	$at,$sp,0
    sll	$a4,$s0,0x2
    blez	$s0,.L0dac4614
    ld	$ra,32($sp)
    addu	$a4,$a4,$at
    ld	$a0,16($sp)
    move	$a6,$s0
    andi	$a5,$s0,0x3
    beqz	$a5,.L0dac45a4
    ld	$s0,40($sp)
.L0dac4584:
    # Line 1063
    lwc1	$f0,0($a1)
    trunc.w.s	$f0,$f0
    # Line 1061
    addiu	$a1,$a1,4
    addiu	$a0,$a0,4
    # Line 1063
    mfc1	$v0,$f0
    addi	$a5,$a5,-1
    bnez	$a5,.L0dac4584
    sw	$v0,-4($a0)
.L0dac45a4:
    move	$a2,$a0
    sra	$v1,$a6,0x2
    beqz	$v1,.L0dac4614
    move	$a5,$a1
    move	$a1,$a2
    move	$a0,$a5
.L0dac45bc:
    lwc1	$f0,0($a0)
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    sw	$v1,0($a1)
    lwc1	$f3,4($a0)
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    sw	$v0,4($a1)
    lwc1	$f2,8($a0)
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    nop
    sw	$at,8($a1)
    lwc1	$f1,12($a0)
    trunc.w.s	$f1,$f1
    # Line 1061
    addiu	$a1,$a1,16
    # Line 1063
    mfc1	$a3,$f1
    # Line 1061
    addiu	$a0,$a0,16
    bne	$a0,$a4,.L0dac45bc
    # Line 1063
    sw	$a3,-4($a1)
.L0dac4614:
    ld	$gp,24($sp)
    # Line 1066
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac4624:
    sd	$ra,32($sp)
    sd	$a2,16($sp)
    # Line 1053
    b	.L0dac454c
    # Line 1052
    li	$s0,1
.L0dac4634:
    # Line 1055
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1056
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_GetColorTableParameterivSGI

# Function: __glMgrUpdateTextureColorTableState
# Declared: Line 1069 (Source lines: 1070-1077)
# Address: 0x0dac4654 - 0x0dac46c8 (Size: 116 bytes, Frame: 32)
.globl __glMgrUpdateTextureColorTableState
.ent __glMgrUpdateTextureColorTableState
__glMgrUpdateTextureColorTableState:
    # Line 1070
    addiu	$sp,$sp,-32
    # Line 1071
    lw	$a3,__glCurrentContext
    sd	$gp,8($sp)
    lui	$a4,0x1
    addu	$a4,$a3,$a4
    lw	$a0,-30164($a4)
    # Line 1070
    lui	$at,0x14
    addiu	$at,$at,-24508
    # Line 1071
    beqz	$a0,.L0dac469c
    # Line 1070
    addu	$gp,$t9,$at
    # Line 1071
    lw	$a1,196($a0)
    sd	$ra,24($sp)
    beqz	$a1,.L0dac46a8
    sd	$a4,0($sp)
.L0dac468c:
    # Line 1075
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    bal mgrTM_SendTexmode1
    move	$a0,$a3
    ld	$ra,24($sp)
.L0dac469c:
    ld	$gp,8($sp)
    # Line 1077
    jr	$ra
    addiu	$sp,$sp,32
.L0dac46a8:
    # Line 1074
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    jal	mgrTM_RefreshDim
    sd	$a3,16($sp)
    ld	$a1,0($sp)
    lw	$a1,-30164($a1)
    ld	$a3,16($sp)
    b	.L0dac468c
    lw	$a1,196($a1)
.end __glMgrUpdateTextureColorTableState

# Function: image1D_to_texturecolortable
# Declared: Line 1080 (Source lines: 1081-1618)
# Address: 0x0dac46c8 - 0x0dac9584 (Size: 20156 bytes, Frame: 0)
.globl image1D_to_texturecolortable
.ent image1D_to_texturecolortable
image1D_to_texturecolortable:
    # Line 1352
    move	$a7,$a4
    # Line 1083
    addiu	$t0,$a3,-5120
    # Line 1081
    lui	$v0,0x14
    addiu	$v0,$v0,-24624
    addu	$at,$t9,$v0
    # Line 1083
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$v0,$t0,7
    sll	$t0,$t0,0x2
    addiu	$t9,$t9,-6728
    beqz	$v0,.L0dac470c
    addu	$t0,$t0,$t9
    lw	$v1,%lo(jtbl_0dbee5b8)($t0)
    jr	$v1
    # Line 1547
    sltiu	$v0,$a2,6409
.L0dac4700:
    # Line 1483
    li	$a4,6406
    beq	$a4,$a2,.L0dac6a60
    nop
.L0dac470c:
    # Line 1618
    jr	$ra
    li	$v0,1280
.L0dac4714:
    # Line 1091
    sltiu	$a3,$a2,6409
    bnez	$a3,.L0dac4e00
    move	$a7,$a4
    # Line 1092
    sltiu	$a6,$a2,6410
    beqz	$a6,.L0dac5768
    li	$t0,0x8000
.L0dac472c:
    # Line 1109
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac4794
    move	$a4,$a1
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac75f0
    # Line 1110
    move	$a2,$zero
.L0dac4750:
    and	$a6,$a2,$a0
    sb	$a6,0($a5)
    lbu	$a0,0($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac75f8
    # Line 1111
    move	$a2,$zero
.L0dac4768:
    and	$v1,$a2,$a0
    sb	$v1,1($a5)
    # Line 1112
    lbu	$a0,0($a7)
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac7600
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac4784:
    # Line 1109
    addiu	$t0,$t0,1
    # Line 1112
    addiu	$a7,$a7,1
    and	$a3,$a2,$a0
    sb	$a3,-1($a5)
.L0dac4794:
    sra	$a6,$a4,0x1
    bnezl	$a6,.L0dac54b4
    # Line 1109
    lbu	$a0,0($a7)
.L0dac47a0:
    b	.L0dac4aa4
    nop
.L0dac47a8:
    # Line 1178
    sltiu	$v0,$a2,6409
    bnez	$v0,.L0dac4e98
    move	$a7,$a4
    # Line 1179
    sltiu	$v1,$a2,6410
    beqz	$v1,.L0dac5830
    li	$t0,0x8000
.L0dac47c0:
    # Line 1195
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac4834
    move	$a4,$a1
    lhu	$a0,0($a7)
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac7608
    # Line 1196
    move	$a2,$zero
.L0dac47e4:
    sra	$v1,$a0,0x7
    and	$v1,$v1,$a2
    sb	$v1,0($a5)
    lhu	$a0,0($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac7610
    # Line 1197
    move	$a2,$zero
.L0dac4800:
    sra	$a6,$a0,0x7
    and	$a6,$a6,$a2
    sb	$a6,1($a5)
    # Line 1198
    lhu	$a0,0($a7)
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac7618
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac4820:
    # Line 1195
    addiu	$t0,$t0,1
    # Line 1198
    addiu	$a7,$a7,2
    sra	$v0,$a0,0x7
    and	$v0,$v0,$a2
    sb	$v0,-1($a5)
.L0dac4834:
    sra	$v1,$a4,0x1
    bnezl	$v1,.L0dac55a8
    # Line 1195
    lhu	$a0,0($a7)
.L0dac4840:
    b	.L0dac4aa4
    nop
.L0dac4848:
    # Line 1265
    sltiu	$a3,$a2,6409
    bnez	$a3,.L0dac4f3c
    move	$a7,$a4
    # Line 1266
    sltiu	$a6,$a2,6410
    bnez	$a6,.L0dac4a20
    li	$t0,0x8000
    sltu	$v0,$a2,$t0
    bnez	$v0,.L0dac5e6c
    sltu	$v1,$t0,$a2
    bnez	$v1,.L0dac4a18
    li	$a6,0x8049
    # Line 1329
    li	$a2,6409
    beq	$a0,$a2,.L0dac84b0
    addiu	$a2,$a4,12
    # Line 1338
    move	$a7,$a2
    # Line 1339
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$t3,$a1
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac48fc
    lui	$a0,0x8000
    lw	$a2,0($a7)
    and	$a6,$a0,$a2
    beqz	$a6,.L0dac9404
    # Line 1340
    move	$a4,$zero
.L0dac48ac:
    srl	$v1,$a2,0x17
    and	$v1,$v1,$a4
    sb	$v1,0($a5)
    lw	$t2,-4($a7)
    and	$v0,$a0,$t2
    beqz	$v0,.L0dac940c
    # Line 1341
    move	$a2,$zero
.L0dac48c8:
    srl	$a6,$t2,0x17
    and	$a6,$a6,$a2
    sb	$a6,1($a5)
    # Line 1342
    lw	$t1,-8($a7)
    and	$a3,$a0,$t1
    beqz	$a3,.L0dac9414
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac48e8:
    # Line 1339
    addiu	$t0,$t0,1
    # Line 1343
    addiu	$a7,$a7,16
    # Line 1342
    srl	$v0,$t1,0x17
    and	$v0,$v0,$a4
    sb	$v0,-1($a5)
.L0dac48fc:
    sra	$v1,$t3,0x1
    bnezl	$v1,.L0dac7128
    # Line 1339
    lw	$a2,0($a7)
.L0dac4908:
    b	.L0dac4aa4
    nop
.L0dac4910:
    # Line 1352
    sltiu	$a3,$a2,6409
    bnez	$a3,.L0dac4fec
    # Line 1353
    sltiu	$a6,$a2,6410
    bnez	$a6,.L0dac4940
    li	$t0,0x8000
    sltu	$v0,$a2,$t0
    bnez	$v0,.L0dac5f84
    sltu	$v1,$t0,$a2
    beqz	$v1,.L0dac6c1c
    li	$a3,0x8049
    bne	$a2,$a3,.L0dac470c
    nop
.L0dac4940:
    # Line 1368
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac4980
    move	$a2,$a1
.L0dac4954:
    # Line 1369
    lbu	$v1,0($a7)
    sb	$v1,0($a5)
    lbu	$v0,0($a7)
    # Line 1368
    addiu	$t0,$t0,1
    # Line 1369
    addiu	$a5,$a5,3
    sb	$v0,-2($a5)
    addiu	$a7,$a7,1
    lbu	$a6,-1($a7)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac4954
    sb	$a6,-1($a5)
.L0dac4980:
    move	$t2,$t0
    move	$t1,$a5
    sra	$a3,$a2,0x2
    beqz	$a3,.L0dac4a10
    move	$t3,$a7
    move	$a2,$t2
    move	$a4,$t1
    move	$a0,$t3
.L0dac49a0:
    lbu	$a3,0($a0)
    sb	$a3,0($a4)
    lbu	$v1,0($a0)
    sb	$v1,1($a4)
    lbu	$v0,0($a0)
    sb	$v0,2($a4)
    lbu	$a6,1($a0)
    sb	$a6,3($a4)
    lbu	$a3,1($a0)
    sb	$a3,4($a4)
    lbu	$v1,1($a0)
    sb	$v1,5($a4)
    lbu	$v0,2($a0)
    sb	$v0,6($a4)
    lbu	$a6,2($a0)
    sb	$a6,7($a4)
    lbu	$a3,2($a0)
    sb	$a3,8($a4)
    lbu	$v1,3($a0)
    sb	$v1,9($a4)
    lbu	$v0,3($a0)
    addiu	$a4,$a4,12
    sb	$v0,-2($a4)
    addiu	$a0,$a0,4
    lbu	$a6,-1($a0)
    # Line 1368
    addiu	$a2,$a2,4
    bne	$a1,$a2,.L0dac49a0
    # Line 1369
    sb	$a6,-1($a4)
.L0dac4a10:
    b	.L0dac4aa4
    nop
.L0dac4a18:
    # Line 1266
    bne	$a2,$a6,.L0dac470c
    nop
.L0dac4a20:
    # Line 1282
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$t1,$a1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac4a98
    lui	$a0,0x8000
    lw	$a2,0($a7)
    and	$v1,$a0,$a2
    beqz	$v1,.L0dac7620
    # Line 1283
    move	$a4,$zero
.L0dac4a48:
    srl	$a6,$a2,0x17
    and	$a6,$a6,$a4
    sb	$a6,0($a5)
    lw	$a2,0($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac7628
    # Line 1284
    move	$a4,$zero
.L0dac4a64:
    srl	$v1,$a2,0x17
    and	$v1,$v1,$a4
    sb	$v1,1($a5)
    # Line 1285
    lw	$a2,0($a7)
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac7630
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac4a84:
    # Line 1282
    addiu	$t0,$t0,1
    # Line 1285
    addiu	$a7,$a7,4
    srl	$a3,$a2,0x17
    and	$a3,$a3,$a4
    sb	$a3,-1($a5)
.L0dac4a98:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dac5690
    # Line 1282
    lw	$a2,0($a7)
.L0dac4aa4:
    # Line 1615
    jr	$ra
    move	$v0,$zero
.L0dac4aac:
    # Line 1417
    move	$a7,$a4
    sltiu	$v0,$a2,6409
    bnez	$v0,.L0dac50e8
    # Line 1418
    sltiu	$v1,$a2,6410
    bnez	$v1,.L0dac4ae0
    li	$t0,0x8000
    sltu	$a3,$a2,$t0
    bnez	$a3,.L0dac6138
    sltu	$a6,$t0,$a2
    beqz	$a6,.L0dac6d00
    li	$v0,0x8049
    bne	$a2,$v0,.L0dac470c
    nop
.L0dac4ae0:
    # Line 1433
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dac4b24
    move	$a0,$a1
    # Line 1434
    lhu	$v0,0($a7)
    sra	$v0,$v0,0x8
    sb	$v0,0($a5)
    lhu	$a6,0($a7)
    sra	$a6,$a6,0x8
    sb	$a6,1($a5)
    # Line 1433
    addiu	$t0,$t0,1
    # Line 1434
    lhu	$a3,0($a7)
    addiu	$a5,$a5,3
    addiu	$a7,$a7,2
    sra	$a3,$a3,0x8
    sb	$a3,-1($a5)
.L0dac4b24:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v1,$a0,0x1
    beqz	$v1,.L0dac4b9c
    move	$t1,$a7
    move	$a2,$t3
    move	$a0,$t2
    move	$a4,$t1
.L0dac4b44:
    lhu	$a6,0($a4)
    sra	$a6,$a6,0x8
    sb	$a6,0($a0)
    lhu	$a3,0($a4)
    sra	$a3,$a3,0x8
    sb	$a3,1($a0)
    lhu	$v1,0($a4)
    sra	$v1,$v1,0x8
    sb	$v1,2($a0)
    lhu	$v0,2($a4)
    sra	$v0,$v0,0x8
    sb	$v0,3($a0)
    lhu	$a6,2($a4)
    sra	$a6,$a6,0x8
    sb	$a6,4($a0)
    addiu	$a0,$a0,6
    lhu	$a3,2($a4)
    addiu	$a4,$a4,4
    # Line 1433
    addiu	$a2,$a2,2
    # Line 1434
    sra	$a3,$a3,0x8
    # Line 1433
    bne	$a1,$a2,.L0dac4b44
    # Line 1434
    sb	$a3,-1($a0)
.L0dac4b9c:
    b	.L0dac4aa4
    nop
.L0dac4ba4:
    # Line 1482
    move	$a7,$a4
    sltiu	$v0,$a2,6409
    bnez	$v0,.L0dac51d0
    # Line 1483
    sltiu	$v1,$a2,6410
    bnez	$v1,.L0dac4bd8
    li	$t0,0x8000
    sltu	$a3,$a2,$t0
    bnez	$a3,.L0dac6300
    sltu	$a6,$t0,$a2
    beqz	$a6,.L0dac6dd0
    li	$v0,0x8049
    bne	$a2,$v0,.L0dac470c
    nop
.L0dac4bd8:
    # Line 1498
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dac4c1c
    move	$a0,$a1
    # Line 1499
    lw	$v0,0($a7)
    srl	$v0,$v0,0x18
    sb	$v0,0($a5)
    lw	$a6,0($a7)
    srl	$a6,$a6,0x18
    sb	$a6,1($a5)
    # Line 1498
    addiu	$t0,$t0,1
    # Line 1499
    lw	$a3,0($a7)
    addiu	$a5,$a5,3
    addiu	$a7,$a7,4
    srl	$a3,$a3,0x18
    sb	$a3,-1($a5)
.L0dac4c1c:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v1,$a0,0x1
    beqz	$v1,.L0dac4c94
    move	$t1,$a7
    move	$a2,$t3
    move	$a4,$t2
    move	$a0,$t1
.L0dac4c3c:
    lw	$a6,0($a0)
    srl	$a6,$a6,0x18
    sb	$a6,0($a4)
    lw	$a3,0($a0)
    srl	$a3,$a3,0x18
    sb	$a3,1($a4)
    lw	$v1,0($a0)
    srl	$v1,$v1,0x18
    sb	$v1,2($a4)
    lw	$v0,4($a0)
    srl	$v0,$v0,0x18
    sb	$v0,3($a4)
    lw	$a6,4($a0)
    srl	$a6,$a6,0x18
    sb	$a6,4($a4)
    addiu	$a4,$a4,6
    lw	$a3,4($a0)
    addiu	$a0,$a0,8
    # Line 1498
    addiu	$a2,$a2,2
    # Line 1499
    srl	$a3,$a3,0x18
    # Line 1498
    bne	$a1,$a2,.L0dac4c3c
    # Line 1499
    sb	$a3,-1($a4)
.L0dac4c94:
    b	.L0dac4aa4
    nop
.L0dac4c9c:
    # Line 1547
    move	$a7,$a4
    bnez	$v0,.L0dac52b8
    # Line 1548
    sltiu	$v1,$a2,6410
    beqz	$v1,.L0dac5ae4
    li	$t0,0x8000
.L0dac4cb0:
    # Line 1563
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a0,$a1
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac4d24
    ldc1	$f4,_lit8_406fffff2e48e8a7
    # Line 1564
    lwc1	$f2,0($a7)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v1,$f2
    nop
    sb	$v1,0($a5)
    lwc1	$f1,0($a7)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    nop
    sb	$v0,1($a5)
    lwc1	$f0,0($a7)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    # Line 1563
    addiu	$t0,$t0,1
    # Line 1564
    mfc1	$a6,$f0
    addiu	$a5,$a5,3
    addiu	$a7,$a7,4
    sb	$a6,-1($a5)
.L0dac4d24:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a3,$a0,0x1
    beqz	$a3,.L0dac4df8
    move	$t1,$a7
    move	$a2,$t3
    move	$a4,$t2
    move	$a0,$t1
.L0dac4d44:
    lwc1	$f0,0($a0)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$v0,$f0
    nop
    sb	$v0,0($a4)
    lwc1	$f3,0($a0)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a6,$f3
    nop
    sb	$a6,1($a4)
    lwc1	$f2,0($a0)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$a3,$f2
    nop
    sb	$a3,2($a4)
    lwc1	$f1,4($a0)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v1,$f1
    nop
    sb	$v1,3($a4)
    lwc1	$f0,4($a0)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$v0,$f0
    nop
    sb	$v0,4($a4)
    lwc1	$f3,4($a0)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    addiu	$a4,$a4,6
    addiu	$a0,$a0,8
    mfc1	$a6,$f3
    # Line 1563
    addiu	$a2,$a2,2
    bne	$a1,$a2,.L0dac4d44
    # Line 1564
    sb	$a6,-1($a4)
.L0dac4df8:
    b	.L0dac4aa4
    nop
.L0dac4e00:
    # Line 1092
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0dac56c4
    sltiu	$a3,$a2,6408
    beqz	$a3,.L0dac5c50
    # Line 1123
    li	$a6,6409
    beq	$a0,$a6,.L0dac7638
    nop
    # Line 1131
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac4e84
    move	$t1,$a1
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac8ba0
    # Line 1132
    move	$a4,$zero
.L0dac4e40:
    and	$a6,$a4,$a0
    sb	$a6,0($a5)
    lbu	$a2,1($a7)
    andi	$a3,$a2,0x80
    beqz	$a3,.L0dac8ba8
    # Line 1133
    move	$a0,$zero
.L0dac4e58:
    and	$v1,$a0,$a2
    sb	$v1,1($a5)
    # Line 1134
    lbu	$a4,2($a7)
    andi	$v0,$a4,0x80
    beqz	$v0,.L0dac8bb0
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac4e74:
    # Line 1131
    addiu	$t0,$t0,1
    # Line 1134
    addiu	$a7,$a7,3
    and	$a3,$a2,$a4
    sb	$a3,-1($a5)
.L0dac4e84:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dac6854
    # Line 1131
    lbu	$a0,0($a7)
.L0dac4e90:
    b	.L0dac4aa4
    nop
.L0dac4e98:
    # Line 1179
    sltiu	$v0,$a2,6407
    bnez	$v0,.L0dac578c
    sltiu	$v1,$a2,6408
    beqz	$v1,.L0dac5d54
    # Line 1209
    li	$a3,6409
    beq	$a0,$a3,.L0dac76b4
    nop
    # Line 1217
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a6,$a1,0x1
    beqz	$a6,.L0dac4f28
    move	$t1,$a1
    lhu	$a0,0($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac8bb8
    # Line 1218
    move	$a4,$zero
.L0dac4ed8:
    sra	$a2,$a0,0x7
    and	$a2,$a2,$a4
    sb	$a2,0($a5)
    lhu	$a2,2($a7)
    andi	$v1,$a2,0x8000
    beqz	$v1,.L0dac8bc0
    # Line 1219
    move	$a0,$zero
.L0dac4ef4:
    sra	$a4,$a2,0x7
    and	$a4,$a4,$a0
    sb	$a4,1($a5)
    # Line 1220
    lhu	$a4,4($a7)
    andi	$a3,$a4,0x8000
    beqz	$a3,.L0dac8bc8
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac4f14:
    # Line 1217
    addiu	$t0,$t0,1
    # Line 1220
    addiu	$a7,$a7,6
    sra	$a6,$a4,0x7
    and	$a6,$a6,$a2
    sb	$a6,-1($a5)
.L0dac4f28:
    sra	$v0,$t1,0x1
    bnezl	$v0,.L0dac68e8
    # Line 1217
    lhu	$a0,0($a7)
.L0dac4f34:
    b	.L0dac4aa4
    nop
.L0dac4f3c:
    # Line 1266
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0dac5854
    sltiu	$a3,$a2,6408
    bnez	$a3,.L0dac5eec
    li	$a6,6408
    bne	$a2,$a6,.L0dac470c
    # Line 1312
    li	$v0,6409
    beq	$a0,$v0,.L0dac8cec
    nop
    # Line 1320
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$t2,$a1
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dac4fd8
    lui	$a0,0x8000
    lw	$a2,0($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac947c
    # Line 1321
    move	$t1,$zero
.L0dac4f88:
    srl	$v0,$a2,0x17
    and	$v0,$v0,$t1
    sb	$v0,0($a5)
    lw	$a4,4($a7)
    and	$a6,$a0,$a4
    beqz	$a6,.L0dac9484
    # Line 1322
    move	$a2,$zero
.L0dac4fa4:
    srl	$a3,$a4,0x17
    and	$a3,$a3,$a2
    sb	$a3,1($a5)
    # Line 1323
    lw	$t1,8($a7)
    and	$v1,$a0,$t1
    beqz	$v1,.L0dac948c
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac4fc4:
    # Line 1320
    addiu	$t0,$t0,1
    # Line 1324
    addiu	$a7,$a7,16
    # Line 1323
    srl	$a6,$t1,0x17
    and	$a6,$a6,$a4
    sb	$a6,-1($a5)
.L0dac4fd8:
    sra	$v0,$t2,0x1
    bnezl	$v0,.L0dac75ac
    # Line 1320
    lw	$a2,0($a7)
.L0dac4fe4:
    b	.L0dac4aa4
    nop
.L0dac4fec:
    # Line 1353
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0dac58f8
    sltiu	$a3,$a2,6408
    bnez	$a3,.L0dac6054
    li	$a6,6408
    bne	$a2,$a6,.L0dac470c
    # Line 1389
    li	$v0,6409
    beq	$a0,$v0,.L0dac8d78
    nop
    # Line 1394
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac5050
    move	$a2,$a1
.L0dac5024:
    # Line 1395
    lbu	$a6,0($a7)
    sb	$a6,0($a5)
    lbu	$a3,1($a7)
    # Line 1394
    addiu	$t0,$t0,1
    # Line 1395
    addiu	$a7,$a7,4
    sb	$a3,1($a5)
    addiu	$a5,$a5,3
    lbu	$v1,-2($a7)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac5024
    sb	$v1,-1($a5)
.L0dac5050:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v0,$a2,0x2
    beqz	$v0,.L0dac50e0
    move	$t1,$a7
    move	$a0,$t3
    move	$a4,$t2
    move	$a2,$t1
.L0dac5070:
    lbu	$v0,0($a2)
    sb	$v0,0($a4)
    lbu	$a6,1($a2)
    sb	$a6,1($a4)
    lbu	$a3,2($a2)
    sb	$a3,2($a4)
    lbu	$v1,4($a2)
    sb	$v1,3($a4)
    lbu	$v0,5($a2)
    sb	$v0,4($a4)
    lbu	$a6,6($a2)
    sb	$a6,5($a4)
    lbu	$a3,8($a2)
    sb	$a3,6($a4)
    lbu	$v1,9($a2)
    sb	$v1,7($a4)
    lbu	$v0,10($a2)
    sb	$v0,8($a4)
    lbu	$a6,12($a2)
    sb	$a6,9($a4)
    lbu	$a3,13($a2)
    addiu	$a2,$a2,16
    sb	$a3,10($a4)
    addiu	$a4,$a4,12
    lbu	$v1,-2($a2)
    # Line 1394
    addiu	$a0,$a0,4
    bne	$a1,$a0,.L0dac5070
    # Line 1395
    sb	$v1,-1($a4)
.L0dac50e0:
    b	.L0dac4aa4
    nop
.L0dac50e8:
    # Line 1418
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0dac599c
    sltiu	$a3,$a2,6408
    bnez	$a3,.L0dac6230
    li	$a6,6408
    bne	$a2,$a6,.L0dac470c
    # Line 1454
    li	$v0,6409
    beq	$a0,$v0,.L0dac8e50
    nop
    # Line 1459
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dac5150
    move	$a0,$a1
    # Line 1460
    lhu	$v0,0($a7)
    sra	$v0,$v0,0x8
    sb	$v0,0($a5)
    lhu	$a6,2($a7)
    sra	$a6,$a6,0x8
    sb	$a6,1($a5)
    # Line 1459
    addiu	$t0,$t0,1
    # Line 1460
    lhu	$a3,4($a7)
    addiu	$a7,$a7,8
    addiu	$a5,$a5,3
    sra	$a3,$a3,0x8
    sb	$a3,-1($a5)
.L0dac5150:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v1,$a0,0x1
    beqz	$v1,.L0dac51c8
    move	$t1,$a7
    move	$a4,$t3
    move	$a0,$t2
    move	$a2,$t1
.L0dac5170:
    lhu	$a6,0($a2)
    sra	$a6,$a6,0x8
    sb	$a6,0($a0)
    lhu	$a3,2($a2)
    sra	$a3,$a3,0x8
    sb	$a3,1($a0)
    lhu	$v1,4($a2)
    sra	$v1,$v1,0x8
    sb	$v1,2($a0)
    lhu	$v0,8($a2)
    sra	$v0,$v0,0x8
    sb	$v0,3($a0)
    lhu	$a6,10($a2)
    sra	$a6,$a6,0x8
    sb	$a6,4($a0)
    addiu	$a2,$a2,16
    lhu	$a3,-4($a2)
    addiu	$a0,$a0,6
    # Line 1459
    addiu	$a4,$a4,2
    # Line 1460
    sra	$a3,$a3,0x8
    # Line 1459
    bne	$a1,$a4,.L0dac5170
    # Line 1460
    sb	$a3,-1($a0)
.L0dac51c8:
    b	.L0dac4aa4
    nop
.L0dac51d0:
    # Line 1483
    sltiu	$v0,$a2,6407
    bnez	$v0,.L0dac4700
    sltiu	$v1,$a2,6408
    bnez	$v1,.L0dac63f8
    li	$a3,6408
    bne	$a2,$a3,.L0dac470c
    # Line 1519
    li	$a6,6409
    beq	$a0,$a6,.L0dac8f14
    nop
    # Line 1524
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac5238
    move	$a0,$a1
    # Line 1525
    lw	$a6,0($a7)
    srl	$a6,$a6,0x18
    sb	$a6,0($a5)
    lw	$a3,4($a7)
    srl	$a3,$a3,0x18
    sb	$a3,1($a5)
    # Line 1524
    addiu	$t0,$t0,1
    # Line 1525
    lw	$v1,8($a7)
    addiu	$a7,$a7,16
    addiu	$a5,$a5,3
    srl	$v1,$v1,0x18
    sb	$v1,-1($a5)
.L0dac5238:
    move	$t1,$t0
    move	$t3,$a5
    sra	$v0,$a0,0x1
    beqz	$v0,.L0dac52b0
    move	$t2,$a7
    move	$a2,$t1
    move	$a0,$t3
    move	$a4,$t2
.L0dac5258:
    lw	$a3,0($a4)
    srl	$a3,$a3,0x18
    sb	$a3,0($a0)
    lw	$v1,4($a4)
    srl	$v1,$v1,0x18
    sb	$v1,1($a0)
    lw	$v0,8($a4)
    srl	$v0,$v0,0x18
    sb	$v0,2($a0)
    lw	$a6,16($a4)
    srl	$a6,$a6,0x18
    sb	$a6,3($a0)
    lw	$a3,20($a4)
    srl	$a3,$a3,0x18
    sb	$a3,4($a0)
    addiu	$a4,$a4,32
    lw	$v1,-8($a4)
    addiu	$a0,$a0,6
    # Line 1524
    addiu	$a2,$a2,2
    # Line 1525
    srl	$v1,$v1,0x18
    # Line 1524
    bne	$a1,$a2,.L0dac5258
    # Line 1525
    sb	$v1,-1($a0)
.L0dac52b0:
    b	.L0dac4aa4
    nop
.L0dac52b8:
    # Line 1548
    sltiu	$a6,$a2,6407
    bnez	$a6,.L0dac5a40
    sltiu	$v0,$a2,6408
    beqz	$v0,.L0dac64c8
    # Line 1573
    li	$v1,6409
    beq	$a0,$v1,.L0dac7a28
    nop
    # Line 1578
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a0,$a1
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac5348
    ldc1	$f4,_lit8_406fffff2e48e8a7
    # Line 1579
    lwc1	$f3,0($a7)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$v1,$f3
    nop
    sb	$v1,0($a5)
    lwc1	$f2,4($a7)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v0,$f2
    nop
    sb	$v0,1($a5)
    lwc1	$f1,8($a7)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    # Line 1578
    addiu	$t0,$t0,1
    # Line 1579
    mfc1	$a6,$f1
    addiu	$a5,$a5,3
    addiu	$a7,$a7,12
    sb	$a6,-1($a5)
.L0dac5348:
    move	$t2,$t0
    move	$t1,$a5
    sra	$a3,$a0,0x1
    beqz	$a3,.L0dac541c
    move	$t3,$a7
    move	$a4,$t2
    move	$a0,$t1
    move	$a2,$t3
.L0dac5368:
    lwc1	$f1,0($a2)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    nop
    sb	$v0,0($a0)
    lwc1	$f0,4($a2)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$a6,$f0
    nop
    sb	$a6,1($a0)
    lwc1	$f3,8($a2)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a3,$f3
    nop
    sb	$a3,2($a0)
    lwc1	$f2,12($a2)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v1,$f2
    nop
    sb	$v1,3($a0)
    lwc1	$f1,16($a2)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    nop
    sb	$v0,4($a0)
    lwc1	$f0,20($a2)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    addiu	$a0,$a0,6
    addiu	$a2,$a2,24
    mfc1	$a6,$f0
    # Line 1578
    addiu	$a4,$a4,2
    bne	$a1,$a4,.L0dac5368
    # Line 1579
    sb	$a6,-1($a0)
.L0dac541c:
    b	.L0dac4aa4
    nop
.L0dac5424:
    # Line 1110
    and	$a0,$a2,$a0
    sb	$a0,0($a5)
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac54ec
    # Line 1111
    move	$a2,$zero
.L0dac543c:
    and	$a6,$a2,$a0
    sb	$a6,1($a5)
    # Line 1112
    lbu	$a0,0($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac54cc
    move	$a2,$zero
.L0dac5454:
    and	$v1,$a2,$a0
    sb	$v1,2($a5)
    # Line 1109
    lbu	$a0,1($a7)
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac54d4
    # Line 1110
    move	$a2,$zero
.L0dac546c:
    and	$a6,$a2,$a0
    sb	$a6,3($a5)
    lbu	$a0,1($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac54dc
    # Line 1111
    move	$a2,$zero
.L0dac5484:
    and	$v1,$a2,$a0
    sb	$v1,4($a5)
    # Line 1112
    lbu	$a0,1($a7)
    addiu	$a7,$a7,2
    move	$a2,$zero
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac54e4
    addiu	$a5,$a5,6
.L0dac54a4:
    and	$a3,$a2,$a0
    # Line 1109
    beq	$a1,$t0,.L0dac47a0
    # Line 1112
    sb	$a3,-1($a5)
    # Line 1109
    lbu	$a0,0($a7)
.L0dac54b4:
    # Line 1110
    move	$a2,$zero
    # Line 1109
    andi	$a6,$a0,0x80
    bnez	$a6,.L0dac5424
    addiu	$t0,$t0,2
    b	.L0dac5424
    # Line 1110
    li	$a2,255
.L0dac54cc:
    b	.L0dac5454
    # Line 1112
    li	$a2,255
.L0dac54d4:
    b	.L0dac546c
    # Line 1110
    li	$a2,255
.L0dac54dc:
    b	.L0dac5484
    # Line 1111
    li	$a2,255
.L0dac54e4:
    b	.L0dac54a4
    # Line 1112
    li	$a2,255
.L0dac54ec:
    b	.L0dac543c
    # Line 1111
    li	$a2,255
.L0dac54f4:
    # Line 1196
    and	$v1,$v1,$a2
    sb	$v1,0($a5)
    lhu	$a0,0($a7)
    # Line 1197
    li	$a2,255
    # Line 1196
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac55d4
    # Line 1197
    sra	$a6,$a0,0x7
    move	$a2,$zero
    and	$a6,$a6,$a2
.L0dac5518:
    sb	$a6,1($a5)
    # Line 1198
    lhu	$a0,0($a7)
    li	$a2,255
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac5534
    sra	$v1,$a0,0x7
    move	$a2,$zero
.L0dac5534:
    and	$v1,$v1,$a2
    sb	$v1,2($a5)
    # Line 1195
    lhu	$a0,2($a7)
    # Line 1196
    li	$a2,255
    # Line 1195
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac5554
    # Line 1196
    sra	$a6,$a0,0x7
    move	$a2,$zero
.L0dac5554:
    and	$a6,$a6,$a2
    sb	$a6,3($a5)
    lhu	$a0,2($a7)
    # Line 1197
    move	$a2,$zero
    # Line 1196
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac55c0
    # Line 1197
    sra	$v1,$a0,0x7
.L0dac5570:
    # Line 1195
    addiu	$t0,$t0,2
    # Line 1197
    and	$v1,$v1,$a2
    sb	$v1,4($a5)
    # Line 1198
    addiu	$a7,$a7,4
    lhu	$a0,-2($a7)
    addiu	$a5,$a5,6
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac55c8
    sra	$a3,$a0,0x7
    move	$a2,$zero
.L0dac5598:
    and	$a3,$a3,$a2
    # Line 1195
    beq	$a1,$t0,.L0dac4840
    # Line 1198
    sb	$a3,-1($a5)
    # Line 1195
    lhu	$a0,0($a7)
.L0dac55a8:
    # Line 1196
    move	$a2,$zero
    # Line 1195
    andi	$a6,$a0,0x8000
    bnez	$a6,.L0dac54f4
    # Line 1196
    sra	$v1,$a0,0x7
    b	.L0dac54f4
    li	$a2,255
.L0dac55c0:
    b	.L0dac5570
    # Line 1197
    li	$a2,255
.L0dac55c8:
    # Line 1198
    li	$a2,255
    b	.L0dac5598
    nop
.L0dac55d4:
    b	.L0dac5518
    # Line 1197
    and	$a6,$a6,$a2
.L0dac55dc:
    # Line 1283
    and	$v1,$v1,$a4
    sb	$v1,0($a5)
    lw	$a2,0($a7)
    # Line 1284
    li	$a4,255
    # Line 1283
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac56bc
    # Line 1284
    srl	$a6,$a2,0x17
    move	$a4,$zero
    and	$a6,$a6,$a4
.L0dac5600:
    sb	$a6,1($a5)
    # Line 1285
    lw	$a2,0($a7)
    li	$a4,255
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac561c
    srl	$v1,$a2,0x17
    move	$a4,$zero
.L0dac561c:
    and	$v1,$v1,$a4
    sb	$v1,2($a5)
    # Line 1282
    lw	$a2,4($a7)
    # Line 1283
    li	$a4,255
    # Line 1282
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac563c
    # Line 1283
    srl	$a6,$a2,0x17
    move	$a4,$zero
.L0dac563c:
    and	$a6,$a6,$a4
    sb	$a6,3($a5)
    lw	$a2,4($a7)
    # Line 1284
    move	$a4,$zero
    # Line 1283
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac56a8
    # Line 1284
    srl	$v1,$a2,0x17
.L0dac5658:
    # Line 1282
    addiu	$t0,$t0,2
    # Line 1284
    and	$v1,$v1,$a4
    sb	$v1,4($a5)
    # Line 1285
    addiu	$a7,$a7,8
    lw	$a2,-4($a7)
    addiu	$a5,$a5,6
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac56b0
    srl	$a3,$a2,0x17
    move	$a4,$zero
.L0dac5680:
    and	$a3,$a3,$a4
    # Line 1282
    beq	$a1,$t0,.L0dac4aa4
    # Line 1285
    sb	$a3,-1($a5)
    # Line 1282
    lw	$a2,0($a7)
.L0dac5690:
    # Line 1283
    move	$a4,$zero
    # Line 1282
    and	$a6,$a0,$a2
    bnez	$a6,.L0dac55dc
    # Line 1283
    srl	$v1,$a2,0x17
    b	.L0dac55dc
    li	$a4,255
.L0dac56a8:
    b	.L0dac5658
    # Line 1284
    li	$a4,255
.L0dac56b0:
    # Line 1285
    li	$a4,255
    b	.L0dac5680
    nop
.L0dac56bc:
    b	.L0dac5600
    # Line 1284
    and	$a6,$a6,$a4
.L0dac56c4:
    # Line 1092
    li	$a4,6406
    bne	$a4,$a2,.L0dac470c
    nop
    # Line 1094
    beq	$a4,$a0,.L0dac7e18
    nop
    # Line 1102
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a4,$a1
    andi	$a2,$a1,0x3
    beqz	$a2,.L0dac570c
    li	$a0,1
.L0dac56f0:
    addiu	$t0,$t0,1
    # Line 1103
    addiu	$a5,$a5,3
    addi	$a2,$a2,-1
    sb	$a0,-3($a5)
    sb	$a0,-2($a5)
    bnez	$a2,.L0dac56f0
    sb	$a0,-1($a5)
.L0dac570c:
    move	$t1,$t0
    sra	$v0,$a4,0x2
    beqz	$v0,.L0dac5760
    move	$a7,$a5
    move	$a2,$t1
    move	$a4,$a7
.L0dac5724:
    addiu	$a4,$a4,12
    # Line 1102
    addiu	$a2,$a2,4
    # Line 1103
    sb	$a0,-12($a4)
    sb	$a0,-11($a4)
    sb	$a0,-10($a4)
    sb	$a0,-9($a4)
    sb	$a0,-8($a4)
    sb	$a0,-7($a4)
    sb	$a0,-6($a4)
    sb	$a0,-5($a4)
    sb	$a0,-4($a4)
    sb	$a0,-3($a4)
    sb	$a0,-2($a4)
    # Line 1102
    bne	$a1,$a2,.L0dac5724
    # Line 1103
    sb	$a0,-1($a4)
.L0dac5760:
    b	.L0dac4aa4
    nop
.L0dac5768:
    # Line 1092
    sltu	$v1,$a2,$t0
    bnez	$v1,.L0dac5ce0
    sltu	$a3,$t0,$a2
    beqz	$a3,.L0dac6af8
    li	$a6,0x8049
    bne	$a2,$a6,.L0dac470c
    nop
    b	.L0dac472c
    nop
.L0dac578c:
    # Line 1179
    li	$a4,6406
    bne	$a4,$a2,.L0dac470c
    nop
    # Line 1181
    beq	$a4,$a0,.L0dac7e6c
    nop
    # Line 1188
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a4,$a1
    andi	$a2,$a1,0x3
    beqz	$a2,.L0dac57d4
    li	$a0,1
.L0dac57b8:
    addiu	$t0,$t0,1
    # Line 1189
    addiu	$a5,$a5,3
    addi	$a2,$a2,-1
    sb	$a0,-3($a5)
    sb	$a0,-2($a5)
    bnez	$a2,.L0dac57b8
    sb	$a0,-1($a5)
.L0dac57d4:
    move	$a7,$t0
    sra	$v0,$a4,0x2
    beqz	$v0,.L0dac5828
    move	$t1,$a5
    move	$a2,$a7
    move	$a4,$t1
.L0dac57ec:
    addiu	$a4,$a4,12
    # Line 1188
    addiu	$a2,$a2,4
    # Line 1189
    sb	$a0,-12($a4)
    sb	$a0,-11($a4)
    sb	$a0,-10($a4)
    sb	$a0,-9($a4)
    sb	$a0,-8($a4)
    sb	$a0,-7($a4)
    sb	$a0,-6($a4)
    sb	$a0,-5($a4)
    sb	$a0,-4($a4)
    sb	$a0,-3($a4)
    sb	$a0,-2($a4)
    # Line 1188
    bne	$a1,$a2,.L0dac57ec
    # Line 1189
    sb	$a0,-1($a4)
.L0dac5828:
    b	.L0dac4aa4
    nop
.L0dac5830:
    # Line 1179
    sltu	$v1,$a2,$t0
    bnez	$v1,.L0dac5df0
    sltu	$a3,$t0,$a2
    beqz	$a3,.L0dac6b84
    li	$a6,0x8049
    bne	$a2,$a6,.L0dac470c
    nop
    b	.L0dac47c0
    nop
.L0dac5854:
    # Line 1266
    li	$a4,6406
    bne	$a4,$a2,.L0dac470c
    nop
    # Line 1268
    beq	$a4,$a0,.L0dac7ec4
    nop
    # Line 1275
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a4,$a1
    andi	$a2,$a1,0x3
    beqz	$a2,.L0dac589c
    li	$a0,1
.L0dac5880:
    addiu	$t0,$t0,1
    # Line 1276
    addiu	$a5,$a5,3
    addi	$a2,$a2,-1
    sb	$a0,-3($a5)
    sb	$a0,-2($a5)
    bnez	$a2,.L0dac5880
    sb	$a0,-1($a5)
.L0dac589c:
    move	$t1,$t0
    sra	$v0,$a4,0x2
    beqz	$v0,.L0dac58f0
    move	$a7,$a5
    move	$a2,$t1
    move	$a4,$a7
.L0dac58b4:
    addiu	$a4,$a4,12
    # Line 1275
    addiu	$a2,$a2,4
    # Line 1276
    sb	$a0,-12($a4)
    sb	$a0,-11($a4)
    sb	$a0,-10($a4)
    sb	$a0,-9($a4)
    sb	$a0,-8($a4)
    sb	$a0,-7($a4)
    sb	$a0,-6($a4)
    sb	$a0,-5($a4)
    sb	$a0,-4($a4)
    sb	$a0,-3($a4)
    sb	$a0,-2($a4)
    # Line 1275
    bne	$a1,$a2,.L0dac58b4
    # Line 1276
    sb	$a0,-1($a4)
.L0dac58f0:
    b	.L0dac4aa4
    nop
.L0dac58f8:
    # Line 1353
    li	$a4,6406
    bne	$a4,$a2,.L0dac470c
    nop
    # Line 1355
    beq	$a4,$a0,.L0dac7f20
    nop
    # Line 1361
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a4,$a1
    andi	$a2,$a1,0x3
    beqz	$a2,.L0dac5940
    li	$a0,1
.L0dac5924:
    addiu	$t0,$t0,1
    # Line 1362
    addiu	$a5,$a5,3
    addi	$a2,$a2,-1
    sb	$a0,-3($a5)
    sb	$a0,-2($a5)
    bnez	$a2,.L0dac5924
    sb	$a0,-1($a5)
.L0dac5940:
    move	$t1,$t0
    sra	$v1,$a4,0x2
    beqz	$v1,.L0dac5994
    move	$a7,$a5
    move	$a4,$t1
    move	$a2,$a7
.L0dac5958:
    addiu	$a2,$a2,12
    # Line 1361
    addiu	$a4,$a4,4
    # Line 1362
    sb	$a0,-12($a2)
    sb	$a0,-11($a2)
    sb	$a0,-10($a2)
    sb	$a0,-9($a2)
    sb	$a0,-8($a2)
    sb	$a0,-7($a2)
    sb	$a0,-6($a2)
    sb	$a0,-5($a2)
    sb	$a0,-4($a2)
    sb	$a0,-3($a2)
    sb	$a0,-2($a2)
    # Line 1361
    bne	$a1,$a4,.L0dac5958
    # Line 1362
    sb	$a0,-1($a2)
.L0dac5994:
    b	.L0dac4aa4
    nop
.L0dac599c:
    # Line 1418
    li	$a4,6406
    bne	$a4,$a2,.L0dac470c
    nop
    # Line 1420
    beq	$a4,$a0,.L0dac7fd0
    nop
    # Line 1426
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a4,$a1
    andi	$a2,$a1,0x3
    beqz	$a2,.L0dac59e4
    li	$a0,1
.L0dac59c8:
    addiu	$t0,$t0,1
    # Line 1427
    addiu	$a5,$a5,3
    addi	$a2,$a2,-1
    sb	$a0,-3($a5)
    sb	$a0,-2($a5)
    bnez	$a2,.L0dac59c8
    sb	$a0,-1($a5)
.L0dac59e4:
    move	$t1,$t0
    sra	$a3,$a4,0x2
    beqz	$a3,.L0dac5a38
    move	$a7,$a5
    move	$a2,$t1
    move	$a4,$a7
.L0dac59fc:
    addiu	$a4,$a4,12
    # Line 1426
    addiu	$a2,$a2,4
    # Line 1427
    sb	$a0,-12($a4)
    sb	$a0,-11($a4)
    sb	$a0,-10($a4)
    sb	$a0,-9($a4)
    sb	$a0,-8($a4)
    sb	$a0,-7($a4)
    sb	$a0,-6($a4)
    sb	$a0,-5($a4)
    sb	$a0,-4($a4)
    sb	$a0,-3($a4)
    sb	$a0,-2($a4)
    # Line 1426
    bne	$a1,$a2,.L0dac59fc
    # Line 1427
    sb	$a0,-1($a4)
.L0dac5a38:
    b	.L0dac4aa4
    nop
.L0dac5a40:
    # Line 1548
    li	$a4,6406
    bne	$a4,$a2,.L0dac470c
    nop
    # Line 1550
    beq	$a4,$a0,.L0dac8158
    nop
    # Line 1556
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a4,$a1
    andi	$a2,$a1,0x3
    beqz	$a2,.L0dac5a88
    li	$a0,1
.L0dac5a6c:
    addiu	$t0,$t0,1
    # Line 1557
    addiu	$a5,$a5,3
    addi	$a2,$a2,-1
    sb	$a0,-3($a5)
    sb	$a0,-2($a5)
    bnez	$a2,.L0dac5a6c
    sb	$a0,-1($a5)
.L0dac5a88:
    move	$t1,$t0
    sra	$a6,$a4,0x2
    beqz	$a6,.L0dac5adc
    move	$a7,$a5
    move	$a2,$t1
    move	$a4,$a7
.L0dac5aa0:
    addiu	$a4,$a4,12
    # Line 1556
    addiu	$a2,$a2,4
    # Line 1557
    sb	$a0,-12($a4)
    sb	$a0,-11($a4)
    sb	$a0,-10($a4)
    sb	$a0,-9($a4)
    sb	$a0,-8($a4)
    sb	$a0,-7($a4)
    sb	$a0,-6($a4)
    sb	$a0,-5($a4)
    sb	$a0,-4($a4)
    sb	$a0,-3($a4)
    sb	$a0,-2($a4)
    # Line 1556
    bne	$a1,$a2,.L0dac5aa0
    # Line 1557
    sb	$a0,-1($a4)
.L0dac5adc:
    b	.L0dac4aa4
    nop
.L0dac5ae4:
    # Line 1548
    sltu	$v0,$a2,$t0
    bnez	$v0,.L0dac662c
    sltu	$v1,$t0,$a2
    bnez	$v1,.L0dac6ea0
    # Line 1595
    li	$a3,6409
    beq	$a0,$a3,.L0dac87ac
    # Line 1601
    addiu	$a7,$a4,4
    # Line 1602
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a0,$a1
    andi	$a6,$a1,0x1
    beqz	$a6,.L0dac5b74
    ldc1	$f4,_lit8_406fffff2e48e8a7
    # Line 1603
    lwc1	$f0,8($a7)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$a3,$f0
    nop
    sb	$a3,0($a5)
    lwc1	$f3,4($a7)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$v1,$f3
    nop
    sb	$v1,1($a5)
    lwc1	$f2,0($a7)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    # Line 1602
    addiu	$t0,$t0,1
    # Line 1603
    mfc1	$v0,$f2
    addiu	$a7,$a7,16
    addiu	$a5,$a5,3
    sb	$v0,-1($a5)
.L0dac5b74:
    move	$t2,$t0
    move	$t1,$a5
    sra	$a6,$a0,0x1
    beqz	$a6,.L0dac5c48
    move	$t3,$a7
    move	$a4,$t2
    move	$a0,$t1
    move	$a2,$t3
.L0dac5b94:
    lwc1	$f2,8($a2)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v1,$f2
    nop
    sb	$v1,0($a0)
    lwc1	$f1,4($a2)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    nop
    sb	$v0,1($a0)
    lwc1	$f0,0($a2)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$a6,$f0
    nop
    sb	$a6,2($a0)
    lwc1	$f3,24($a2)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a3,$f3
    nop
    sb	$a3,3($a0)
    lwc1	$f2,20($a2)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v1,$f2
    nop
    sb	$v1,4($a0)
    lwc1	$f1,16($a2)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    addiu	$a2,$a2,32
    addiu	$a0,$a0,6
    mfc1	$v0,$f1
    # Line 1602
    addiu	$a4,$a4,2
    bne	$a1,$a4,.L0dac5b94
    # Line 1603
    sb	$v0,-1($a0)
.L0dac5c48:
    b	.L0dac4aa4
    nop
.L0dac5c50:
    # Line 1092
    li	$a3,6408
    bne	$a2,$a3,.L0dac470c
    # Line 1139
    li	$a6,6409
    beq	$a0,$a6,.L0dac8be8
    nop
    # Line 1147
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac5ccc
    move	$t1,$a1
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac944c
    # Line 1148
    move	$a4,$zero
.L0dac5c88:
    and	$a6,$a4,$a0
    sb	$a6,0($a5)
    lbu	$a2,1($a7)
    andi	$a3,$a2,0x80
    beqz	$a3,.L0dac9454
    # Line 1149
    move	$a0,$zero
.L0dac5ca0:
    and	$v1,$a0,$a2
    sb	$v1,1($a5)
    # Line 1150
    lbu	$a4,2($a7)
    andi	$v0,$a4,0x80
    beqz	$v0,.L0dac945c
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac5cbc:
    # Line 1147
    addiu	$t0,$t0,1
    # Line 1151
    addiu	$a7,$a7,4
    # Line 1150
    and	$a3,$a2,$a4
    sb	$a3,-1($a5)
.L0dac5ccc:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dac73d8
    # Line 1147
    lbu	$a0,0($a7)
.L0dac5cd8:
    b	.L0dac4aa4
    nop
.L0dac5ce0:
    # Line 1092
    li	$v0,6410
    bne	$a2,$v0,.L0dac470c
    nop
    # Line 1116
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dac5d40
    move	$t1,$a1
    lbu	$a0,0($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac941c
    # Line 1117
    move	$a4,$zero
.L0dac5d10:
    and	$v0,$a4,$a0
    sb	$v0,0($a5)
    # Line 1118
    sb	$zero,1($a5)
    # Line 1119
    lbu	$a2,1($a7)
    andi	$a6,$a2,0x80
    beqz	$a6,.L0dac9424
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac5d30:
    # Line 1116
    addiu	$t0,$t0,1
    # Line 1119
    addiu	$a7,$a7,2
    and	$v1,$a4,$a2
    sb	$v1,-1($a5)
.L0dac5d40:
    sra	$a3,$t1,0x1
    bnezl	$a3,.L0dac71c0
    # Line 1116
    lbu	$a0,0($a7)
.L0dac5d4c:
    b	.L0dac4aa4
    nop
.L0dac5d54:
    # Line 1179
    li	$a6,6408
    bne	$a2,$a6,.L0dac470c
    # Line 1225
    li	$v0,6409
    beq	$a0,$v0,.L0dac8c64
    nop
    # Line 1233
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dac5ddc
    move	$t1,$a1
    lhu	$a0,0($a7)
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac9464
    # Line 1234
    move	$a4,$zero
.L0dac5d8c:
    sra	$v0,$a0,0x7
    and	$v0,$v0,$a4
    sb	$v0,0($a5)
    lhu	$a2,2($a7)
    andi	$a6,$a2,0x8000
    beqz	$a6,.L0dac946c
    # Line 1235
    move	$a0,$zero
.L0dac5da8:
    sra	$a3,$a2,0x7
    and	$a3,$a3,$a0
    sb	$a3,1($a5)
    # Line 1236
    lhu	$a4,4($a7)
    andi	$v1,$a4,0x8000
    beqz	$v1,.L0dac9474
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac5dc8:
    # Line 1233
    addiu	$t0,$t0,1
    # Line 1237
    addiu	$a7,$a7,8
    # Line 1236
    sra	$a6,$a4,0x7
    and	$a6,$a6,$a2
    sb	$a6,-1($a5)
.L0dac5ddc:
    sra	$v0,$t1,0x1
    bnezl	$v0,.L0dac74c0
    # Line 1233
    lhu	$a0,0($a7)
.L0dac5de8:
    b	.L0dac4aa4
    nop
.L0dac5df0:
    # Line 1179
    li	$v1,6410
    bne	$a2,$v1,.L0dac470c
    nop
    # Line 1202
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac5e58
    move	$t1,$a1
    lhu	$a0,0($a7)
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac942c
    # Line 1203
    move	$a4,$zero
.L0dac5e20:
    sra	$v1,$a0,0x7
    and	$v1,$v1,$a4
    sb	$v1,0($a5)
    # Line 1204
    sb	$zero,1($a5)
    # Line 1205
    lhu	$a2,2($a7)
    andi	$v0,$a2,0x8000
    beqz	$v0,.L0dac9434
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac5e44:
    # Line 1202
    addiu	$t0,$t0,1
    # Line 1205
    addiu	$a7,$a7,4
    sra	$a3,$a2,0x7
    and	$a3,$a3,$a4
    sb	$a3,-1($a5)
.L0dac5e58:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dac7270
    # Line 1202
    lhu	$a0,0($a7)
.L0dac5e64:
    b	.L0dac4aa4
    nop
.L0dac5e6c:
    # Line 1266
    li	$v0,6410
    bne	$a2,$v0,.L0dac470c
    nop
    # Line 1289
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$t2,$a1
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dac5ed8
    lui	$a0,0x8000
    lw	$a2,0($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac943c
    # Line 1290
    move	$t1,$zero
.L0dac5ea0:
    srl	$v0,$a2,0x17
    and	$v0,$v0,$t1
    sb	$v0,0($a5)
    # Line 1291
    sb	$zero,1($a5)
    # Line 1292
    lw	$a4,4($a7)
    and	$a6,$a0,$a4
    beqz	$a6,.L0dac9444
    addiu	$a5,$a5,3
    move	$t1,$zero
.L0dac5ec4:
    # Line 1289
    addiu	$t0,$t0,1
    # Line 1292
    addiu	$a7,$a7,8
    srl	$v1,$a4,0x17
    and	$v1,$v1,$t1
    sb	$v1,-1($a5)
.L0dac5ed8:
    sra	$a3,$t2,0x1
    bnezl	$a3,.L0dac731c
    # Line 1289
    lw	$a2,0($a7)
.L0dac5ee4:
    b	.L0dac4aa4
    nop
.L0dac5eec:
    # Line 1296
    li	$a6,6409
    beq	$a0,$a6,.L0dac773c
    nop
    # Line 1304
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$t2,$a1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac5f70
    lui	$a0,0x8000
    lw	$a2,0($a7)
    and	$v1,$a0,$a2
    beqz	$v1,.L0dac8bd0
    # Line 1305
    move	$t1,$zero
.L0dac5f20:
    srl	$a4,$a2,0x17
    and	$a4,$a4,$t1
    sb	$a4,0($a5)
    lw	$a4,4($a7)
    and	$a3,$a0,$a4
    beqz	$a3,.L0dac8bd8
    # Line 1306
    move	$a2,$zero
.L0dac5f3c:
    srl	$t1,$a4,0x17
    and	$t1,$t1,$a2
    sb	$t1,1($a5)
    # Line 1307
    lw	$t1,8($a7)
    and	$a6,$a0,$t1
    beqz	$a6,.L0dac8be0
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac5f5c:
    # Line 1304
    addiu	$t0,$t0,1
    # Line 1307
    addiu	$a7,$a7,12
    srl	$v0,$t1,0x17
    and	$v0,$v0,$a4
    sb	$v0,-1($a5)
.L0dac5f70:
    sra	$v1,$t2,0x1
    bnezl	$v1,.L0dac6a34
    # Line 1304
    lw	$a2,0($a7)
.L0dac5f7c:
    b	.L0dac4aa4
    nop
.L0dac5f84:
    # Line 1353
    li	$a3,6410
    bne	$a2,$a3,.L0dac470c
    nop
    # Line 1373
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac5fcc
    move	$a2,$a1
.L0dac5fa4:
    # Line 1374
    lbu	$v0,0($a7)
    # Line 1373
    addiu	$t0,$t0,1
    # Line 1374
    addiu	$a5,$a5,3
    sb	$v0,-3($a5)
    sb	$zero,-2($a5)
    addiu	$a7,$a7,2
    lbu	$a6,-1($a7)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac5fa4
    sb	$a6,-1($a5)
.L0dac5fcc:
    move	$t2,$t0
    move	$t3,$a5
    sra	$v1,$a2,0x2
    beqz	$v1,.L0dac604c
    move	$t1,$a7
    move	$a2,$t2
    move	$a4,$t3
    move	$a0,$t1
.L0dac5fec:
    lbu	$v1,0($a0)
    sb	$v1,0($a4)
    sb	$zero,1($a4)
    lbu	$v0,1($a0)
    sb	$v0,2($a4)
    lbu	$a6,2($a0)
    sb	$a6,3($a4)
    sb	$zero,4($a4)
    lbu	$a3,3($a0)
    sb	$a3,5($a4)
    lbu	$v1,4($a0)
    sb	$v1,6($a4)
    sb	$zero,7($a4)
    lbu	$v0,5($a0)
    sb	$v0,8($a4)
    lbu	$a6,6($a0)
    addiu	$a4,$a4,12
    sb	$a6,-3($a4)
    sb	$zero,-2($a4)
    addiu	$a0,$a0,8
    lbu	$a3,-1($a0)
    # Line 1373
    addiu	$a2,$a2,4
    bne	$a1,$a2,.L0dac5fec
    # Line 1374
    sb	$a3,-1($a4)
.L0dac604c:
    b	.L0dac4aa4
    nop
.L0dac6054:
    # Line 1378
    li	$a3,6409
    beq	$a0,$a3,.L0dac77c8
    nop
    # Line 1383
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac60a0
    move	$a2,$a1
.L0dac6074:
    # Line 1384
    lbu	$v1,0($a7)
    sb	$v1,0($a5)
    lbu	$v0,1($a7)
    # Line 1383
    addiu	$t0,$t0,1
    # Line 1384
    addiu	$a5,$a5,3
    sb	$v0,-2($a5)
    addiu	$a7,$a7,3
    lbu	$a6,-1($a7)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac6074
    sb	$a6,-1($a5)
.L0dac60a0:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a3,$a2,0x2
    beqz	$a3,.L0dac6130
    move	$t1,$a7
    move	$a2,$t3
    move	$a4,$t2
    move	$a0,$t1
.L0dac60c0:
    lbu	$a3,0($a0)
    sb	$a3,0($a4)
    lbu	$v1,1($a0)
    sb	$v1,1($a4)
    lbu	$v0,2($a0)
    sb	$v0,2($a4)
    lbu	$a6,3($a0)
    sb	$a6,3($a4)
    lbu	$a3,4($a0)
    sb	$a3,4($a4)
    lbu	$v1,5($a0)
    sb	$v1,5($a4)
    lbu	$v0,6($a0)
    sb	$v0,6($a4)
    lbu	$a6,7($a0)
    sb	$a6,7($a4)
    lbu	$a3,8($a0)
    sb	$a3,8($a4)
    lbu	$v1,9($a0)
    sb	$v1,9($a4)
    lbu	$v0,10($a0)
    addiu	$a4,$a4,12
    sb	$v0,-2($a4)
    addiu	$a0,$a0,12
    lbu	$a6,-1($a0)
    # Line 1383
    addiu	$a2,$a2,4
    bne	$a1,$a2,.L0dac60c0
    # Line 1384
    sb	$a6,-1($a4)
.L0dac6130:
    b	.L0dac4aa4
    nop
.L0dac6138:
    # Line 1418
    li	$a6,6410
    bne	$a2,$a6,.L0dac470c
    nop
    # Line 1438
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac6188
    move	$a2,$a1
.L0dac6158:
    # Line 1439
    lhu	$v1,0($a7)
    # Line 1438
    addiu	$t0,$t0,1
    # Line 1439
    sra	$v1,$v1,0x8
    sb	$v1,0($a5)
    sb	$zero,1($a5)
    addiu	$a5,$a5,3
    lhu	$v0,2($a7)
    addiu	$a7,$a7,4
    addi	$a0,$a0,-1
    sra	$v0,$v0,0x8
    bnez	$a0,.L0dac6158
    sb	$v0,-1($a5)
.L0dac6188:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a3,$a2,0x2
    beqz	$a3,.L0dac6228
    move	$t1,$a7
    move	$a0,$t3
    move	$a2,$t2
    move	$a4,$t1
.L0dac61a8:
    lhu	$a3,0($a4)
    sra	$a3,$a3,0x8
    sb	$a3,0($a2)
    sb	$zero,1($a2)
    lhu	$v1,2($a4)
    sra	$v1,$v1,0x8
    sb	$v1,2($a2)
    lhu	$v0,4($a4)
    sra	$v0,$v0,0x8
    sb	$v0,3($a2)
    sb	$zero,4($a2)
    lhu	$a6,6($a4)
    sra	$a6,$a6,0x8
    sb	$a6,5($a2)
    lhu	$a3,8($a4)
    sra	$a3,$a3,0x8
    sb	$a3,6($a2)
    sb	$zero,7($a2)
    lhu	$v1,10($a4)
    sra	$v1,$v1,0x8
    sb	$v1,8($a2)
    lhu	$v0,12($a4)
    sra	$v0,$v0,0x8
    sb	$v0,9($a2)
    sb	$zero,10($a2)
    addiu	$a2,$a2,12
    lhu	$a6,14($a4)
    addiu	$a4,$a4,16
    # Line 1438
    addiu	$a0,$a0,4
    # Line 1439
    sra	$a6,$a6,0x8
    # Line 1438
    bne	$a1,$a0,.L0dac61a8
    # Line 1439
    sb	$a6,-1($a2)
.L0dac6228:
    b	.L0dac4aa4
    nop
.L0dac6230:
    # Line 1443
    li	$a6,6409
    beq	$a0,$a6,.L0dac78a0
    nop
    # Line 1448
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac6280
    move	$a0,$a1
    # Line 1449
    lhu	$a6,0($a7)
    sra	$a6,$a6,0x8
    sb	$a6,0($a5)
    lhu	$a3,2($a7)
    sra	$a3,$a3,0x8
    sb	$a3,1($a5)
    # Line 1448
    addiu	$t0,$t0,1
    # Line 1449
    lhu	$v1,4($a7)
    addiu	$a5,$a5,3
    addiu	$a7,$a7,6
    sra	$v1,$v1,0x8
    sb	$v1,-1($a5)
.L0dac6280:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v0,$a0,0x1
    beqz	$v0,.L0dac62f8
    move	$t1,$a7
    move	$a4,$t3
    move	$a2,$t2
    move	$a0,$t1
.L0dac62a0:
    lhu	$a3,0($a0)
    sra	$a3,$a3,0x8
    sb	$a3,0($a2)
    lhu	$v1,2($a0)
    sra	$v1,$v1,0x8
    sb	$v1,1($a2)
    lhu	$v0,4($a0)
    sra	$v0,$v0,0x8
    sb	$v0,2($a2)
    lhu	$a6,6($a0)
    sra	$a6,$a6,0x8
    sb	$a6,3($a2)
    lhu	$a3,8($a0)
    sra	$a3,$a3,0x8
    sb	$a3,4($a2)
    addiu	$a2,$a2,6
    lhu	$v1,10($a0)
    addiu	$a0,$a0,12
    # Line 1448
    addiu	$a4,$a4,2
    # Line 1449
    sra	$v1,$v1,0x8
    # Line 1448
    bne	$a1,$a4,.L0dac62a0
    # Line 1449
    sb	$v1,-1($a2)
.L0dac62f8:
    b	.L0dac4aa4
    nop
.L0dac6300:
    # Line 1483
    li	$a6,6410
    bne	$a2,$a6,.L0dac470c
    nop
    # Line 1503
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac6350
    move	$a2,$a1
.L0dac6320:
    # Line 1504
    lw	$v1,0($a7)
    # Line 1503
    addiu	$t0,$t0,1
    # Line 1504
    srl	$v1,$v1,0x18
    sb	$v1,0($a5)
    sb	$zero,1($a5)
    addiu	$a5,$a5,3
    lw	$v0,4($a7)
    addiu	$a7,$a7,8
    addi	$a0,$a0,-1
    srl	$v0,$v0,0x18
    bnez	$a0,.L0dac6320
    sb	$v0,-1($a5)
.L0dac6350:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a3,$a2,0x2
    beqz	$a3,.L0dac63f0
    move	$t1,$a7
    move	$a0,$t3
    move	$a2,$t2
    move	$a4,$t1
.L0dac6370:
    lw	$a3,0($a4)
    srl	$a3,$a3,0x18
    sb	$a3,0($a2)
    sb	$zero,1($a2)
    lw	$v1,4($a4)
    srl	$v1,$v1,0x18
    sb	$v1,2($a2)
    lw	$v0,8($a4)
    srl	$v0,$v0,0x18
    sb	$v0,3($a2)
    sb	$zero,4($a2)
    lw	$a6,12($a4)
    srl	$a6,$a6,0x18
    sb	$a6,5($a2)
    lw	$a3,16($a4)
    srl	$a3,$a3,0x18
    sb	$a3,6($a2)
    sb	$zero,7($a2)
    lw	$v1,20($a4)
    srl	$v1,$v1,0x18
    sb	$v1,8($a2)
    lw	$v0,24($a4)
    srl	$v0,$v0,0x18
    sb	$v0,9($a2)
    sb	$zero,10($a2)
    addiu	$a2,$a2,12
    lw	$a6,28($a4)
    addiu	$a4,$a4,32
    # Line 1503
    addiu	$a0,$a0,4
    # Line 1504
    srl	$a6,$a6,0x18
    # Line 1503
    bne	$a1,$a0,.L0dac6370
    # Line 1504
    sb	$a6,-1($a2)
.L0dac63f0:
    b	.L0dac4aa4
    nop
.L0dac63f8:
    # Line 1508
    li	$a6,6409
    beq	$a0,$a6,.L0dac7964
    nop
    # Line 1513
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac6448
    move	$a0,$a1
    # Line 1514
    lw	$a6,0($a7)
    srl	$a6,$a6,0x18
    sb	$a6,0($a5)
    lw	$a3,4($a7)
    srl	$a3,$a3,0x18
    sb	$a3,1($a5)
    # Line 1513
    addiu	$t0,$t0,1
    # Line 1514
    lw	$v1,8($a7)
    addiu	$a5,$a5,3
    addiu	$a7,$a7,12
    srl	$v1,$v1,0x18
    sb	$v1,-1($a5)
.L0dac6448:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v0,$a0,0x1
    beqz	$v0,.L0dac64c0
    move	$t1,$a7
    move	$a0,$t3
    move	$a2,$t2
    move	$a4,$t1
.L0dac6468:
    lw	$a3,0($a4)
    srl	$a3,$a3,0x18
    sb	$a3,0($a2)
    lw	$v1,4($a4)
    srl	$v1,$v1,0x18
    sb	$v1,1($a2)
    lw	$v0,8($a4)
    srl	$v0,$v0,0x18
    sb	$v0,2($a2)
    lw	$a6,12($a4)
    srl	$a6,$a6,0x18
    sb	$a6,3($a2)
    lw	$a3,16($a4)
    srl	$a3,$a3,0x18
    sb	$a3,4($a2)
    addiu	$a2,$a2,6
    lw	$v1,20($a4)
    addiu	$a4,$a4,24
    # Line 1513
    addiu	$a0,$a0,2
    # Line 1514
    srl	$v1,$v1,0x18
    # Line 1513
    bne	$a1,$a0,.L0dac6468
    # Line 1514
    sb	$v1,-1($a2)
.L0dac64c0:
    b	.L0dac4aa4
    nop
.L0dac64c8:
    # Line 1548
    li	$a6,6408
    bne	$a2,$a6,.L0dac470c
    # Line 1584
    li	$v0,6409
    beq	$a0,$v0,.L0dac8fd8
    nop
    # Line 1589
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a0,$a1
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dac6550
    ldc1	$f4,_lit8_406fffff2e48e8a7
    # Line 1590
    lwc1	$f1,0($a7)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    nop
    sb	$v0,0($a5)
    lwc1	$f0,4($a7)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$a6,$f0
    nop
    sb	$a6,1($a5)
    lwc1	$f3,8($a7)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    # Line 1589
    addiu	$t0,$t0,1
    # Line 1590
    mfc1	$a3,$f3
    addiu	$a7,$a7,16
    addiu	$a5,$a5,3
    sb	$a3,-1($a5)
.L0dac6550:
    move	$t2,$t0
    move	$t1,$a5
    sra	$v1,$a0,0x1
    beqz	$v1,.L0dac6624
    move	$t3,$a7
    move	$a4,$t2
    move	$a2,$t1
    move	$a0,$t3
.L0dac6570:
    lwc1	$f3,0($a0)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a6,$f3
    nop
    sb	$a6,0($a2)
    lwc1	$f2,4($a0)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$a3,$f2
    nop
    sb	$a3,1($a2)
    lwc1	$f1,8($a0)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v1,$f1
    nop
    sb	$v1,2($a2)
    lwc1	$f0,16($a0)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$v0,$f0
    nop
    sb	$v0,3($a2)
    lwc1	$f3,20($a0)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a6,$f3
    nop
    sb	$a6,4($a2)
    lwc1	$f2,24($a0)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    addiu	$a0,$a0,32
    addiu	$a2,$a2,6
    mfc1	$a3,$f2
    # Line 1589
    addiu	$a4,$a4,2
    bne	$a1,$a4,.L0dac6570
    # Line 1590
    sb	$a3,-1($a2)
.L0dac6624:
    b	.L0dac4aa4
    nop
.L0dac662c:
    # Line 1548
    li	$v0,6410
    bne	$a2,$v0,.L0dac470c
    nop
    # Line 1568
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a2,$a1
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac669c
    ldc1	$f4,_lit8_406fffff2e48e8a7
.L0dac6650:
    # Line 1569
    lwc1	$f1,0($a7)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$a3,$f1
    nop
    sb	$a3,0($a5)
    sb	$zero,1($a5)
    lwc1	$f0,4($a7)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    # Line 1568
    addiu	$t0,$t0,1
    # Line 1569
    addiu	$a5,$a5,3
    addiu	$a7,$a7,8
    mfc1	$v1,$f0
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac6650
    sb	$v1,-1($a5)
.L0dac669c:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a6,$a2,0x2
    beqz	$a6,.L0dac67b8
    move	$t1,$a7
    move	$a0,$t3
    move	$a2,$t2
    move	$a4,$t1
.L0dac66bc:
    lwc1	$f1,0($a4)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$a6,$f1
    nop
    sb	$a6,0($a2)
    sb	$zero,1($a2)
    lwc1	$f0,4($a4)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$a3,$f0
    nop
    sb	$a3,2($a2)
    lwc1	$f3,8($a4)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$v1,$f3
    nop
    sb	$v1,3($a2)
    sb	$zero,4($a2)
    lwc1	$f2,12($a4)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v0,$f2
    nop
    sb	$v0,5($a2)
    lwc1	$f1,16($a4)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$a6,$f1
    nop
    sb	$a6,6($a2)
    sb	$zero,7($a2)
    lwc1	$f0,20($a4)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$a3,$f0
    nop
    sb	$a3,8($a2)
    lwc1	$f3,24($a4)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$v1,$f3
    nop
    sb	$v1,9($a2)
    sb	$zero,10($a2)
    lwc1	$f2,28($a4)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    addiu	$a2,$a2,12
    addiu	$a4,$a4,32
    mfc1	$v0,$f2
    # Line 1568
    addiu	$a0,$a0,4
    bne	$a1,$a0,.L0dac66bc
    # Line 1569
    sb	$v0,-1($a2)
.L0dac67b8:
    b	.L0dac4aa4
    nop
.L0dac67c0:
    # Line 1132
    li	$a4,255
.L0dac67c4:
    and	$v1,$a4,$a0
    sb	$v1,0($a5)
    lbu	$a2,1($a7)
    andi	$v0,$a2,0x80
    beqz	$v0,.L0dac686c
    # Line 1133
    move	$a0,$zero
.L0dac67dc:
    and	$a4,$a0,$a2
    sb	$a4,1($a5)
    # Line 1134
    lbu	$a4,2($a7)
    andi	$a3,$a4,0x80
    beqz	$a3,.L0dac6874
    move	$a2,$zero
.L0dac67f4:
    and	$v0,$a2,$a4
    sb	$v0,2($a5)
    # Line 1131
    lbu	$a0,3($a7)
    andi	$a6,$a0,0x80
    beqz	$a6,.L0dac687c
    # Line 1132
    move	$a4,$zero
.L0dac680c:
    and	$a2,$a4,$a0
    sb	$a2,3($a5)
    lbu	$a2,4($a7)
    andi	$v1,$a2,0x80
    beqz	$v1,.L0dac6884
    # Line 1133
    move	$a0,$zero
.L0dac6824:
    and	$a4,$a0,$a2
    sb	$a4,4($a5)
    # Line 1134
    lbu	$a4,5($a7)
    addiu	$a7,$a7,6
    move	$a2,$zero
    andi	$a3,$a4,0x80
    beqz	$a3,.L0dac688c
    addiu	$a5,$a5,6
.L0dac6844:
    and	$a6,$a2,$a4
    # Line 1131
    beq	$a1,$t0,.L0dac4e90
    # Line 1134
    sb	$a6,-1($a5)
    # Line 1131
    lbu	$a0,0($a7)
.L0dac6854:
    # Line 1132
    move	$a4,$zero
    # Line 1131
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac67c0
    addiu	$t0,$t0,2
    b	.L0dac67c4
    nop
.L0dac686c:
    b	.L0dac67dc
    # Line 1133
    li	$a0,255
.L0dac6874:
    b	.L0dac67f4
    # Line 1134
    li	$a2,255
.L0dac687c:
    b	.L0dac680c
    # Line 1132
    li	$a4,255
.L0dac6884:
    b	.L0dac6824
    # Line 1133
    li	$a0,255
.L0dac688c:
    b	.L0dac6844
    # Line 1134
    li	$a2,255
.L0dac6894:
    # Line 1218
    and	$a2,$a2,$a4
    sb	$a2,3($a5)
    lhu	$a2,8($a7)
    # Line 1219
    move	$a0,$zero
    # Line 1218
    andi	$v1,$a2,0x8000
    beqz	$v1,.L0dac6968
    # Line 1219
    sra	$a4,$a2,0x7
.L0dac68b0:
    # Line 1217
    addiu	$t0,$t0,2
    # Line 1219
    and	$a4,$a4,$a0
    sb	$a4,4($a5)
    # Line 1220
    addiu	$a7,$a7,12
    lhu	$a4,-2($a7)
    addiu	$a5,$a5,6
    andi	$a3,$a4,0x8000
    beqz	$a3,.L0dac6970
    sra	$a6,$a4,0x7
    move	$a2,$zero
.L0dac68d8:
    and	$a6,$a6,$a2
    # Line 1217
    beq	$a1,$t0,.L0dac4f34
    # Line 1220
    sb	$a6,-1($a5)
    # Line 1217
    lhu	$a0,0($a7)
.L0dac68e8:
    # Line 1218
    move	$a4,$zero
    # Line 1217
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac6960
    # Line 1218
    sra	$a2,$a0,0x7
.L0dac68f8:
    and	$a2,$a2,$a4
    sb	$a2,0($a5)
    lhu	$a2,2($a7)
    # Line 1219
    li	$a0,255
    # Line 1218
    andi	$v1,$a2,0x8000
    beqz	$v1,.L0dac6918
    # Line 1219
    sra	$a4,$a2,0x7
    move	$a0,$zero
.L0dac6918:
    and	$a4,$a4,$a0
    sb	$a4,1($a5)
    # Line 1220
    lhu	$a4,4($a7)
    li	$a2,255
    andi	$a3,$a4,0x8000
    beqz	$a3,.L0dac6938
    sra	$v0,$a4,0x7
    move	$a2,$zero
.L0dac6938:
    and	$v0,$v0,$a2
    sb	$v0,2($a5)
    # Line 1217
    lhu	$a0,6($a7)
    # Line 1218
    li	$a4,255
    # Line 1217
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac6894
    # Line 1218
    sra	$a2,$a0,0x7
    move	$a4,$zero
    b	.L0dac6894
    nop
.L0dac6960:
    b	.L0dac68f8
    li	$a4,255
.L0dac6968:
    b	.L0dac68b0
    # Line 1219
    li	$a0,255
.L0dac6970:
    # Line 1220
    li	$a2,255
    b	.L0dac68d8
    nop
.L0dac697c:
    # Line 1305
    li	$t1,255
.L0dac6980:
    and	$a3,$a3,$t1
    sb	$a3,0($a5)
    lw	$a4,4($a7)
    # Line 1306
    li	$a2,255
    # Line 1305
    and	$v1,$a0,$a4
    beqz	$v1,.L0dac69a0
    # Line 1306
    srl	$t1,$a4,0x17
    move	$a2,$zero
.L0dac69a0:
    and	$t1,$t1,$a2
    sb	$t1,1($a5)
    # Line 1307
    lw	$t1,8($a7)
    li	$a4,255
    and	$a6,$a0,$t1
    beqz	$a6,.L0dac69c0
    srl	$v1,$t1,0x17
    move	$a4,$zero
.L0dac69c0:
    and	$v1,$v1,$a4
    sb	$v1,2($a5)
    # Line 1304
    lw	$a2,12($a7)
    # Line 1305
    li	$t1,255
    # Line 1304
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac69e0
    # Line 1305
    srl	$a4,$a2,0x17
    move	$t1,$zero
.L0dac69e0:
    and	$a4,$a4,$t1
    sb	$a4,3($a5)
    lw	$a4,16($a7)
    # Line 1306
    move	$a2,$zero
    # Line 1305
    and	$a3,$a0,$a4
    beqz	$a3,.L0dac6a4c
    # Line 1306
    srl	$t1,$a4,0x17
.L0dac69fc:
    # Line 1304
    addiu	$t0,$t0,2
    # Line 1306
    and	$t1,$t1,$a2
    sb	$t1,4($a5)
    # Line 1307
    addiu	$a7,$a7,24
    lw	$t1,-4($a7)
    addiu	$a5,$a5,6
    and	$a6,$a0,$t1
    beqz	$a6,.L0dac6a54
    srl	$v0,$t1,0x17
    move	$a4,$zero
.L0dac6a24:
    and	$v0,$v0,$a4
    # Line 1304
    beq	$a1,$t0,.L0dac5f7c
    # Line 1307
    sb	$v0,-1($a5)
    # Line 1304
    lw	$a2,0($a7)
.L0dac6a34:
    # Line 1305
    move	$t1,$zero
    # Line 1304
    and	$v1,$a0,$a2
    beqz	$v1,.L0dac697c
    # Line 1305
    srl	$a3,$a2,0x17
    b	.L0dac6980
    nop
.L0dac6a4c:
    b	.L0dac69fc
    # Line 1306
    li	$a2,255
.L0dac6a54:
    # Line 1307
    li	$a4,255
    b	.L0dac6a24
    nop
.L0dac6a60:
    # Line 1485
    beq	$a4,$a0,.L0dac8094
    nop
    # Line 1491
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a4,$a1
    andi	$a2,$a1,0x3
    beqz	$a2,.L0dac6a9c
    li	$a0,1
.L0dac6a80:
    addiu	$t0,$t0,1
    # Line 1492
    addiu	$a5,$a5,3
    addi	$a2,$a2,-1
    sb	$a0,-3($a5)
    sb	$a0,-2($a5)
    bnez	$a2,.L0dac6a80
    sb	$a0,-1($a5)
.L0dac6a9c:
    move	$a7,$t0
    sra	$a3,$a4,0x2
    beqz	$a3,.L0dac6af0
    move	$t1,$a5
    move	$a4,$a7
    move	$a2,$t1
.L0dac6ab4:
    addiu	$a2,$a2,12
    # Line 1491
    addiu	$a4,$a4,4
    # Line 1492
    sb	$a0,-12($a2)
    sb	$a0,-11($a2)
    sb	$a0,-10($a2)
    sb	$a0,-9($a2)
    sb	$a0,-8($a2)
    sb	$a0,-7($a2)
    sb	$a0,-6($a2)
    sb	$a0,-5($a2)
    sb	$a0,-4($a2)
    sb	$a0,-3($a2)
    sb	$a0,-2($a2)
    # Line 1491
    bne	$a1,$a4,.L0dac6ab4
    # Line 1492
    sb	$a0,-1($a2)
.L0dac6af0:
    b	.L0dac4aa4
    nop
.L0dac6af8:
    # Line 1156
    li	$a6,6409
    beq	$a0,$a6,.L0dac83a4
    addiu	$a2,$a4,3
    # Line 1165
    move	$a7,$a2
    # Line 1166
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac6b70
    move	$t2,$a1
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac93d4
    # Line 1167
    move	$a2,$zero
.L0dac6b2c:
    and	$a4,$a2,$a0
    sb	$a4,0($a5)
    lbu	$a4,-1($a7)
    andi	$a3,$a4,0x80
    beqz	$a3,.L0dac93dc
    # Line 1168
    move	$a0,$zero
.L0dac6b44:
    and	$t1,$a0,$a4
    sb	$t1,1($a5)
    # Line 1169
    lbu	$t1,-2($a7)
    andi	$a6,$t1,0x80
    beqz	$a6,.L0dac93e4
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac6b60:
    # Line 1166
    addiu	$t0,$t0,1
    # Line 1169
    addiu	$a7,$a7,4
    and	$v0,$a2,$t1
    sb	$v0,-1($a5)
.L0dac6b70:
    sra	$v1,$t2,0x1
    bnezl	$v1,.L0dac6ee8
    # Line 1166
    lbu	$a0,0($a7)
.L0dac6b7c:
    b	.L0dac4aa4
    nop
.L0dac6b84:
    # Line 1242
    li	$a2,6409
    beq	$a0,$a2,.L0dac8424
    addiu	$a2,$a4,6
    # Line 1251
    move	$a7,$a2
    # Line 1252
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac6c08
    move	$t2,$a1
    lhu	$a0,0($a7)
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac93ec
    # Line 1253
    move	$a2,$zero
.L0dac6bb8:
    sra	$v1,$a0,0x7
    and	$v1,$v1,$a2
    sb	$v1,0($a5)
    lhu	$t1,-2($a7)
    andi	$v0,$t1,0x8000
    beqz	$v0,.L0dac93f4
    # Line 1254
    move	$a0,$zero
.L0dac6bd4:
    sra	$a4,$t1,0x7
    and	$a4,$a4,$a0
    sb	$a4,1($a5)
    # Line 1255
    lhu	$a4,-4($a7)
    andi	$a3,$a4,0x8000
    beqz	$a3,.L0dac93fc
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac6bf4:
    # Line 1252
    addiu	$t0,$t0,1
    # Line 1256
    addiu	$a7,$a7,8
    # Line 1255
    sra	$a6,$a4,0x7
    and	$a6,$a6,$a2
    sb	$a6,-1($a5)
.L0dac6c08:
    sra	$v0,$t2,0x1
    bnezl	$v0,.L0dac6fdc
    # Line 1252
    lhu	$a0,0($a7)
.L0dac6c14:
    b	.L0dac4aa4
    nop
.L0dac6c1c:
    # Line 1400
    li	$v1,6409
    beq	$a0,$v1,.L0dac8540
    # Line 1406
    addiu	$a7,$a4,1
    # Line 1407
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac6c68
    move	$a2,$a1
.L0dac6c3c:
    # Line 1408
    lbu	$v0,2($a7)
    sb	$v0,0($a5)
    lbu	$a6,1($a7)
    # Line 1407
    addiu	$t0,$t0,1
    # Line 1408
    addiu	$a7,$a7,4
    sb	$a6,1($a5)
    addiu	$a5,$a5,3
    lbu	$a3,-2($a7)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac6c3c
    sb	$a3,-1($a5)
.L0dac6c68:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v1,$a2,0x2
    beqz	$v1,.L0dac6cf8
    move	$t1,$a7
    move	$a0,$t3
    move	$a4,$t2
    move	$a2,$t1
.L0dac6c88:
    lbu	$v1,2($a2)
    sb	$v1,0($a4)
    lbu	$v0,1($a2)
    sb	$v0,1($a4)
    lbu	$a6,2($a2)
    sb	$a6,2($a4)
    lbu	$a3,6($a2)
    sb	$a3,3($a4)
    lbu	$v1,5($a2)
    sb	$v1,4($a4)
    lbu	$v0,6($a2)
    sb	$v0,5($a4)
    lbu	$a6,10($a2)
    sb	$a6,6($a4)
    lbu	$a3,9($a2)
    sb	$a3,7($a4)
    lbu	$v1,10($a2)
    sb	$v1,8($a4)
    lbu	$v0,14($a2)
    sb	$v0,9($a4)
    lbu	$a6,13($a2)
    addiu	$a2,$a2,16
    sb	$a6,10($a4)
    addiu	$a4,$a4,12
    lbu	$a3,-2($a2)
    # Line 1407
    addiu	$a0,$a0,4
    bne	$a1,$a0,.L0dac6c88
    # Line 1408
    sb	$a3,-1($a4)
.L0dac6cf8:
    b	.L0dac4aa4
    nop
.L0dac6d00:
    # Line 1465
    li	$a3,6409
    beq	$a0,$a3,.L0dac861c
    # Line 1471
    addiu	$a7,$a4,2
    # Line 1472
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a6,$a1,0x1
    beqz	$a6,.L0dac6d50
    move	$a0,$a1
    # Line 1473
    lhu	$a3,4($a7)
    sra	$a3,$a3,0x8
    sb	$a3,0($a5)
    lhu	$v1,2($a7)
    sra	$v1,$v1,0x8
    sb	$v1,1($a5)
    # Line 1472
    addiu	$t0,$t0,1
    # Line 1473
    lhu	$v0,4($a7)
    addiu	$a7,$a7,8
    addiu	$a5,$a5,3
    sra	$v0,$v0,0x8
    sb	$v0,-1($a5)
.L0dac6d50:
    move	$t3,$t0
    move	$t1,$a5
    sra	$a6,$a0,0x1
    beqz	$a6,.L0dac6dc8
    move	$t2,$a7
    move	$a0,$t3
    move	$a4,$t1
    move	$a2,$t2
.L0dac6d70:
    lhu	$v1,4($a2)
    sra	$v1,$v1,0x8
    sb	$v1,0($a4)
    lhu	$v0,2($a2)
    sra	$v0,$v0,0x8
    sb	$v0,1($a4)
    lhu	$a6,4($a2)
    sra	$a6,$a6,0x8
    sb	$a6,2($a4)
    lhu	$a3,12($a2)
    sra	$a3,$a3,0x8
    sb	$a3,3($a4)
    lhu	$v1,10($a2)
    sra	$v1,$v1,0x8
    sb	$v1,4($a4)
    addiu	$a2,$a2,16
    lhu	$v0,-4($a2)
    addiu	$a4,$a4,6
    # Line 1472
    addiu	$a0,$a0,2
    # Line 1473
    sra	$v0,$v0,0x8
    # Line 1472
    bne	$a1,$a0,.L0dac6d70
    # Line 1473
    sb	$v0,-1($a4)
.L0dac6dc8:
    b	.L0dac4aa4
    nop
.L0dac6dd0:
    # Line 1530
    li	$a3,6409
    beq	$a0,$a3,.L0dac86e4
    # Line 1536
    addiu	$a7,$a4,4
    # Line 1537
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a6,$a1,0x1
    beqz	$a6,.L0dac6e20
    move	$a0,$a1
    # Line 1538
    lw	$a3,8($a7)
    srl	$a3,$a3,0x18
    sb	$a3,0($a5)
    lw	$v1,4($a7)
    srl	$v1,$v1,0x18
    sb	$v1,1($a5)
    # Line 1537
    addiu	$t0,$t0,1
    # Line 1538
    lw	$v0,8($a7)
    addiu	$a7,$a7,16
    addiu	$a5,$a5,3
    srl	$v0,$v0,0x18
    sb	$v0,-1($a5)
.L0dac6e20:
    move	$t2,$t0
    move	$t3,$a5
    sra	$a6,$a0,0x1
    beqz	$a6,.L0dac6e98
    move	$t1,$a7
    move	$a0,$t2
    move	$a2,$t3
    move	$a4,$t1
.L0dac6e40:
    lw	$v1,8($a4)
    srl	$v1,$v1,0x18
    sb	$v1,0($a2)
    lw	$v0,4($a4)
    srl	$v0,$v0,0x18
    sb	$v0,1($a2)
    lw	$a6,8($a4)
    srl	$a6,$a6,0x18
    sb	$a6,2($a2)
    lw	$a3,24($a4)
    srl	$a3,$a3,0x18
    sb	$a3,3($a2)
    lw	$v1,20($a4)
    srl	$v1,$v1,0x18
    sb	$v1,4($a2)
    addiu	$a4,$a4,32
    lw	$v0,-8($a4)
    addiu	$a2,$a2,6
    # Line 1537
    addiu	$a0,$a0,2
    # Line 1538
    srl	$v0,$v0,0x18
    # Line 1537
    bne	$a1,$a0,.L0dac6e40
    # Line 1538
    sb	$v0,-1($a2)
.L0dac6e98:
    b	.L0dac4aa4
    nop
.L0dac6ea0:
    # Line 1548
    li	$a3,0x8049
    bne	$a2,$a3,.L0dac470c
    nop
    b	.L0dac4cb0
    nop
.L0dac6eb4:
    # Line 1168
    li	$a0,255
.L0dac6eb8:
    and	$t1,$a0,$a4
    sb	$t1,4($a5)
    # Line 1169
    lbu	$t1,2($a7)
    addiu	$a7,$a7,8
    move	$a2,$zero
    andi	$a6,$t1,0x80
    beqz	$a6,.L0dac6f80
    addiu	$a5,$a5,6
.L0dac6ed8:
    and	$v0,$a2,$t1
    # Line 1166
    beq	$a1,$t0,.L0dac6b7c
    # Line 1169
    sb	$v0,-1($a5)
    # Line 1166
    lbu	$a0,0($a7)
.L0dac6ee8:
    # Line 1167
    move	$a2,$zero
    # Line 1166
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac6f60
    addiu	$t0,$t0,2
.L0dac6ef8:
    # Line 1167
    and	$a4,$a2,$a0
    sb	$a4,0($a5)
    lbu	$a4,-1($a7)
    andi	$a3,$a4,0x80
    beqz	$a3,.L0dac6f68
    # Line 1168
    move	$a0,$zero
.L0dac6f10:
    and	$t1,$a0,$a4
    sb	$t1,1($a5)
    # Line 1169
    lbu	$t1,-2($a7)
    andi	$a6,$t1,0x80
    beqz	$a6,.L0dac6f70
    move	$a2,$zero
.L0dac6f28:
    and	$v1,$a2,$t1
    sb	$v1,2($a5)
    # Line 1166
    lbu	$a0,4($a7)
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac6f78
    # Line 1167
    move	$a2,$zero
.L0dac6f40:
    and	$a4,$a2,$a0
    sb	$a4,3($a5)
    lbu	$a4,3($a7)
    andi	$a3,$a4,0x80
    beqz	$a3,.L0dac6eb4
    # Line 1168
    move	$a0,$zero
    b	.L0dac6eb8
    nop
.L0dac6f60:
    b	.L0dac6ef8
    # Line 1167
    li	$a2,255
.L0dac6f68:
    b	.L0dac6f10
    # Line 1168
    li	$a0,255
.L0dac6f70:
    b	.L0dac6f28
    # Line 1169
    li	$a2,255
.L0dac6f78:
    b	.L0dac6f40
    # Line 1167
    li	$a2,255
.L0dac6f80:
    b	.L0dac6ed8
    # Line 1169
    li	$a2,255
.L0dac6f88:
    # Line 1253
    and	$t1,$t1,$a2
    sb	$t1,3($a5)
    lhu	$t1,6($a7)
    # Line 1254
    move	$a0,$zero
    # Line 1253
    andi	$a6,$t1,0x8000
    beqz	$a6,.L0dac705c
    # Line 1254
    sra	$v1,$t1,0x7
.L0dac6fa4:
    # Line 1252
    addiu	$t0,$t0,2
    # Line 1254
    and	$v1,$v1,$a0
    sb	$v1,4($a5)
    # Line 1256
    addiu	$a7,$a7,16
    # Line 1255
    lhu	$a4,-12($a7)
    addiu	$a5,$a5,6
    andi	$v0,$a4,0x8000
    beqz	$v0,.L0dac7064
    sra	$a3,$a4,0x7
    move	$a2,$zero
.L0dac6fcc:
    and	$a3,$a3,$a2
    # Line 1252
    beq	$a1,$t0,.L0dac6c14
    # Line 1255
    sb	$a3,-1($a5)
    # Line 1252
    lhu	$a0,0($a7)
.L0dac6fdc:
    # Line 1253
    move	$a2,$zero
    # Line 1252
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac7054
    # Line 1253
    sra	$v1,$a0,0x7
.L0dac6fec:
    and	$v1,$v1,$a2
    sb	$v1,0($a5)
    lhu	$t1,-2($a7)
    # Line 1254
    li	$a0,255
    # Line 1253
    andi	$v0,$t1,0x8000
    beqz	$v0,.L0dac700c
    # Line 1254
    sra	$a4,$t1,0x7
    move	$a0,$zero
.L0dac700c:
    and	$a4,$a4,$a0
    sb	$a4,1($a5)
    # Line 1255
    lhu	$a4,-4($a7)
    li	$a2,255
    andi	$a3,$a4,0x8000
    beqz	$a3,.L0dac702c
    sra	$v0,$a4,0x7
    move	$a2,$zero
.L0dac702c:
    and	$v0,$v0,$a2
    sb	$v0,2($a5)
    # Line 1252
    lhu	$a0,8($a7)
    # Line 1253
    li	$a2,255
    # Line 1252
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac6f88
    # Line 1253
    sra	$t1,$a0,0x7
    move	$a2,$zero
    b	.L0dac6f88
    nop
.L0dac7054:
    b	.L0dac6fec
    li	$a2,255
.L0dac705c:
    b	.L0dac6fa4
    # Line 1254
    li	$a0,255
.L0dac7064:
    # Line 1255
    li	$a2,255
    b	.L0dac6fcc
    nop
.L0dac7070:
    # Line 1340
    li	$a4,255
.L0dac7074:
    and	$a3,$a3,$a4
    sb	$a3,0($a5)
    lw	$t2,-4($a7)
    # Line 1341
    li	$a2,255
    # Line 1340
    and	$v1,$a0,$t2
    beqz	$v1,.L0dac7094
    # Line 1341
    srl	$t1,$t2,0x17
    move	$a2,$zero
.L0dac7094:
    and	$t1,$t1,$a2
    sb	$t1,1($a5)
    # Line 1342
    lw	$t1,-8($a7)
    li	$a4,255
    and	$a6,$a0,$t1
    beqz	$a6,.L0dac70b4
    srl	$v1,$t1,0x17
    move	$a4,$zero
.L0dac70b4:
    and	$v1,$v1,$a4
    sb	$v1,2($a5)
    # Line 1339
    lw	$a2,16($a7)
    # Line 1340
    li	$a4,255
    # Line 1339
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac70d4
    # Line 1340
    srl	$a6,$a2,0x17
    move	$a4,$zero
.L0dac70d4:
    and	$a6,$a6,$a4
    sb	$a6,3($a5)
    lw	$t2,12($a7)
    # Line 1341
    move	$a2,$zero
    # Line 1340
    and	$a3,$a0,$t2
    beqz	$a3,.L0dac7140
    # Line 1341
    srl	$v1,$t2,0x17
.L0dac70f0:
    # Line 1339
    addiu	$t0,$t0,2
    # Line 1341
    and	$v1,$v1,$a2
    sb	$v1,4($a5)
    # Line 1343
    addiu	$a7,$a7,32
    # Line 1342
    lw	$t1,-24($a7)
    addiu	$a5,$a5,6
    and	$v0,$a0,$t1
    beqz	$v0,.L0dac7148
    srl	$a3,$t1,0x17
    move	$a4,$zero
.L0dac7118:
    and	$a3,$a3,$a4
    # Line 1339
    beq	$a1,$t0,.L0dac4908
    # Line 1342
    sb	$a3,-1($a5)
    # Line 1339
    lw	$a2,0($a7)
.L0dac7128:
    # Line 1340
    move	$a4,$zero
    # Line 1339
    and	$a6,$a0,$a2
    beqz	$a6,.L0dac7070
    # Line 1340
    srl	$a3,$a2,0x17
    b	.L0dac7074
    nop
.L0dac7140:
    b	.L0dac70f0
    # Line 1341
    li	$a2,255
.L0dac7148:
    # Line 1342
    li	$a4,255
    b	.L0dac7118
    nop
.L0dac7154:
    # Line 1117
    li	$a4,255
.L0dac7158:
    # Line 1118
    sb	$zero,1($a5)
    # Line 1117
    and	$v1,$a4,$a0
    sb	$v1,0($a5)
    # Line 1119
    lbu	$a2,1($a7)
    andi	$v0,$a2,0x80
    beqz	$v0,.L0dac71d8
    move	$a4,$zero
.L0dac7174:
    and	$a6,$a4,$a2
    sb	$a6,2($a5)
    # Line 1116
    lbu	$a0,2($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac71e0
    # Line 1117
    move	$a4,$zero
.L0dac718c:
    # Line 1118
    sb	$zero,4($a5)
    # Line 1117
    and	$v1,$a4,$a0
    sb	$v1,3($a5)
    # Line 1119
    lbu	$a2,3($a7)
    addiu	$a7,$a7,4
    move	$a4,$zero
    andi	$v0,$a2,0x80
    beqz	$v0,.L0dac71e8
    addiu	$a5,$a5,6
.L0dac71b0:
    and	$a3,$a4,$a2
    # Line 1116
    beq	$a1,$t0,.L0dac5d4c
    # Line 1119
    sb	$a3,-1($a5)
    # Line 1116
    lbu	$a0,0($a7)
.L0dac71c0:
    # Line 1117
    move	$a4,$zero
    # Line 1116
    andi	$a6,$a0,0x80
    beqz	$a6,.L0dac7154
    addiu	$t0,$t0,2
    b	.L0dac7158
    nop
.L0dac71d8:
    b	.L0dac7174
    # Line 1119
    li	$a4,255
.L0dac71e0:
    b	.L0dac718c
    # Line 1117
    li	$a4,255
.L0dac71e8:
    b	.L0dac71b0
    # Line 1119
    li	$a4,255
.L0dac71f0:
    # Line 1203
    li	$a4,255
.L0dac71f4:
    # Line 1204
    sb	$zero,1($a5)
    # Line 1203
    and	$v1,$v1,$a4
    sb	$v1,0($a5)
    # Line 1205
    lhu	$a2,2($a7)
    li	$a4,255
    andi	$v0,$a2,0x8000
    beqz	$v0,.L0dac7218
    sra	$a6,$a2,0x7
    move	$a4,$zero
.L0dac7218:
    and	$a6,$a6,$a4
    sb	$a6,2($a5)
    # Line 1202
    lhu	$a0,4($a7)
    # Line 1203
    move	$a4,$zero
    # Line 1202
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac7288
    # Line 1203
    sra	$v1,$a0,0x7
.L0dac7234:
    # Line 1202
    addiu	$t0,$t0,2
    # Line 1204
    sb	$zero,4($a5)
    # Line 1203
    and	$v1,$v1,$a4
    sb	$v1,3($a5)
    # Line 1205
    addiu	$a7,$a7,8
    lhu	$a2,-2($a7)
    addiu	$a5,$a5,6
    andi	$v0,$a2,0x8000
    beqz	$v0,.L0dac7290
    sra	$a3,$a2,0x7
    move	$a4,$zero
.L0dac7260:
    and	$a3,$a3,$a4
    # Line 1202
    beq	$a1,$t0,.L0dac5e64
    # Line 1205
    sb	$a3,-1($a5)
    # Line 1202
    lhu	$a0,0($a7)
.L0dac7270:
    # Line 1203
    move	$a4,$zero
    # Line 1202
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac71f0
    # Line 1203
    sra	$v1,$a0,0x7
    b	.L0dac71f4
    nop
.L0dac7288:
    b	.L0dac7234
    li	$a4,255
.L0dac7290:
    # Line 1205
    li	$a4,255
    b	.L0dac7260
    nop
.L0dac729c:
    # Line 1290
    li	$t1,255
.L0dac72a0:
    # Line 1291
    sb	$zero,1($a5)
    # Line 1290
    and	$v1,$v1,$t1
    sb	$v1,0($a5)
    # Line 1292
    lw	$a4,4($a7)
    li	$t1,255
    and	$v0,$a0,$a4
    beqz	$v0,.L0dac72c4
    srl	$a6,$a4,0x17
    move	$t1,$zero
.L0dac72c4:
    and	$a6,$a6,$t1
    sb	$a6,2($a5)
    # Line 1289
    lw	$a2,8($a7)
    # Line 1290
    move	$t1,$zero
    # Line 1289
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac7334
    # Line 1290
    srl	$v1,$a2,0x17
.L0dac72e0:
    # Line 1289
    addiu	$t0,$t0,2
    # Line 1291
    sb	$zero,4($a5)
    # Line 1290
    and	$v1,$v1,$t1
    sb	$v1,3($a5)
    # Line 1292
    addiu	$a7,$a7,16
    lw	$a4,-4($a7)
    addiu	$a5,$a5,6
    and	$v0,$a0,$a4
    beqz	$v0,.L0dac733c
    srl	$a3,$a4,0x17
    move	$t1,$zero
.L0dac730c:
    and	$a3,$a3,$t1
    # Line 1289
    beq	$a1,$t0,.L0dac5ee4
    # Line 1292
    sb	$a3,-1($a5)
    # Line 1289
    lw	$a2,0($a7)
.L0dac731c:
    # Line 1290
    move	$t1,$zero
    # Line 1289
    and	$a6,$a0,$a2
    beqz	$a6,.L0dac729c
    # Line 1290
    srl	$v1,$a2,0x17
    b	.L0dac72a0
    nop
.L0dac7334:
    b	.L0dac72e0
    li	$t1,255
.L0dac733c:
    # Line 1292
    li	$t1,255
    b	.L0dac730c
    nop
.L0dac7348:
    # Line 1148
    and	$v1,$a4,$a0
    sb	$v1,0($a5)
    lbu	$a2,1($a7)
    andi	$v0,$a2,0x80
    beqz	$v0,.L0dac7410
    # Line 1149
    move	$a0,$zero
.L0dac7360:
    and	$a4,$a0,$a2
    sb	$a4,1($a5)
    # Line 1150
    lbu	$a4,2($a7)
    andi	$a3,$a4,0x80
    beqz	$a3,.L0dac73f0
    move	$a2,$zero
.L0dac7378:
    and	$v0,$a2,$a4
    sb	$v0,2($a5)
    # Line 1147
    lbu	$a0,4($a7)
    andi	$a6,$a0,0x80
    beqz	$a6,.L0dac73f8
    # Line 1148
    move	$a4,$zero
.L0dac7390:
    and	$a2,$a4,$a0
    sb	$a2,3($a5)
    lbu	$a2,5($a7)
    andi	$v1,$a2,0x80
    beqz	$v1,.L0dac7400
    # Line 1149
    move	$a0,$zero
.L0dac73a8:
    and	$a4,$a0,$a2
    sb	$a4,4($a5)
    # Line 1150
    lbu	$a4,6($a7)
    # Line 1151
    addiu	$a7,$a7,8
    # Line 1150
    move	$a2,$zero
    andi	$a3,$a4,0x80
    beqz	$a3,.L0dac7408
    addiu	$a5,$a5,6
.L0dac73c8:
    and	$a6,$a2,$a4
    # Line 1147
    beq	$a1,$t0,.L0dac5cd8
    # Line 1150
    sb	$a6,-1($a5)
    # Line 1147
    lbu	$a0,0($a7)
.L0dac73d8:
    # Line 1148
    move	$a4,$zero
    # Line 1147
    andi	$v0,$a0,0x80
    bnez	$v0,.L0dac7348
    addiu	$t0,$t0,2
    b	.L0dac7348
    # Line 1148
    li	$a4,255
.L0dac73f0:
    b	.L0dac7378
    # Line 1150
    li	$a2,255
.L0dac73f8:
    b	.L0dac7390
    # Line 1148
    li	$a4,255
.L0dac7400:
    b	.L0dac73a8
    # Line 1149
    li	$a0,255
.L0dac7408:
    b	.L0dac73c8
    # Line 1150
    li	$a2,255
.L0dac7410:
    b	.L0dac7360
    # Line 1149
    li	$a0,255
.L0dac7418:
    # Line 1234
    move	$a4,$zero
    and	$a2,$a2,$a4
.L0dac7420:
    sb	$a2,0($a5)
    lhu	$a2,2($a7)
    andi	$v1,$a2,0x8000
    beqz	$v1,.L0dac74fc
    # Line 1235
    move	$a0,$zero
.L0dac7434:
    sra	$a4,$a2,0x7
    and	$a4,$a4,$a0
    sb	$a4,1($a5)
    # Line 1236
    lhu	$a4,4($a7)
    move	$a2,$zero
    andi	$a3,$a4,0x8000
    beqz	$a3,.L0dac74dc
    sra	$v0,$a4,0x7
.L0dac7454:
    and	$v0,$v0,$a2
    sb	$v0,2($a5)
    # Line 1233
    lhu	$a0,8($a7)
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac74e4
    # Line 1234
    move	$a4,$zero
.L0dac746c:
    sra	$a2,$a0,0x7
    and	$a2,$a2,$a4
    sb	$a2,3($a5)
    lhu	$a2,10($a7)
    # Line 1235
    move	$a0,$zero
    # Line 1234
    andi	$v1,$a2,0x8000
    beqz	$v1,.L0dac74ec
    # Line 1235
    sra	$a4,$a2,0x7
.L0dac748c:
    and	$a4,$a4,$a0
    sb	$a4,4($a5)
    # Line 1236
    lhu	$a4,12($a7)
    # Line 1237
    addiu	$a7,$a7,16
    # Line 1236
    move	$a2,$zero
    andi	$a3,$a4,0x8000
    beqz	$a3,.L0dac74f4
    addiu	$a5,$a5,6
.L0dac74ac:
    sra	$a6,$a4,0x7
    and	$a6,$a6,$a2
    # Line 1233
    beq	$a1,$t0,.L0dac5de8
    # Line 1236
    sb	$a6,-1($a5)
    # Line 1233
    lhu	$a0,0($a7)
.L0dac74c0:
    addiu	$t0,$t0,2
    # Line 1234
    li	$a4,255
    # Line 1233
    andi	$v0,$a0,0x8000
    bnez	$v0,.L0dac7418
    # Line 1234
    sra	$a2,$a0,0x7
    b	.L0dac7420
    and	$a2,$a2,$a4
.L0dac74dc:
    b	.L0dac7454
    # Line 1236
    li	$a2,255
.L0dac74e4:
    b	.L0dac746c
    # Line 1234
    li	$a4,255
.L0dac74ec:
    b	.L0dac748c
    # Line 1235
    li	$a0,255
.L0dac74f4:
    b	.L0dac74ac
    # Line 1236
    li	$a2,255
.L0dac74fc:
    b	.L0dac7434
    # Line 1235
    li	$a0,255
.L0dac7504:
    # Line 1321
    move	$t1,$zero
    and	$a3,$a3,$t1
.L0dac750c:
    sb	$a3,0($a5)
    lw	$a4,4($a7)
    and	$v1,$a0,$a4
    beqz	$v1,.L0dac75e8
    # Line 1322
    move	$a2,$zero
.L0dac7520:
    srl	$t1,$a4,0x17
    and	$t1,$t1,$a2
    sb	$t1,1($a5)
    # Line 1323
    lw	$t1,8($a7)
    move	$a4,$zero
    and	$a6,$a0,$t1
    beqz	$a6,.L0dac75c8
    srl	$v1,$t1,0x17
.L0dac7540:
    and	$v1,$v1,$a4
    sb	$v1,2($a5)
    # Line 1320
    lw	$a2,16($a7)
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac75d0
    # Line 1321
    move	$t1,$zero
.L0dac7558:
    srl	$a4,$a2,0x17
    and	$a4,$a4,$t1
    sb	$a4,3($a5)
    lw	$a4,20($a7)
    # Line 1322
    move	$a2,$zero
    # Line 1321
    and	$a3,$a0,$a4
    beqz	$a3,.L0dac75d8
    # Line 1322
    srl	$t1,$a4,0x17
.L0dac7578:
    and	$t1,$t1,$a2
    sb	$t1,4($a5)
    # Line 1323
    lw	$t1,24($a7)
    # Line 1324
    addiu	$a7,$a7,32
    # Line 1323
    move	$a4,$zero
    and	$a6,$a0,$t1
    beqz	$a6,.L0dac75e0
    addiu	$a5,$a5,6
.L0dac7598:
    srl	$v0,$t1,0x17
    and	$v0,$v0,$a4
    # Line 1320
    beq	$a1,$t0,.L0dac4fe4
    # Line 1323
    sb	$v0,-1($a5)
    # Line 1320
    lw	$a2,0($a7)
.L0dac75ac:
    addiu	$t0,$t0,2
    # Line 1321
    li	$t1,255
    # Line 1320
    and	$v1,$a0,$a2
    bnez	$v1,.L0dac7504
    # Line 1321
    srl	$a3,$a2,0x17
    b	.L0dac750c
    and	$a3,$a3,$t1
.L0dac75c8:
    b	.L0dac7540
    # Line 1323
    li	$a4,255
.L0dac75d0:
    b	.L0dac7558
    # Line 1321
    li	$t1,255
.L0dac75d8:
    b	.L0dac7578
    # Line 1322
    li	$a2,255
.L0dac75e0:
    b	.L0dac7598
    # Line 1323
    li	$a4,255
.L0dac75e8:
    b	.L0dac7520
    # Line 1322
    li	$a2,255
.L0dac75f0:
    b	.L0dac4750
    # Line 1110
    li	$a2,255
.L0dac75f8:
    b	.L0dac4768
    # Line 1111
    li	$a2,255
.L0dac7600:
    b	.L0dac4784
    # Line 1112
    li	$a2,255
.L0dac7608:
    b	.L0dac47e4
    # Line 1196
    li	$a2,255
.L0dac7610:
    b	.L0dac4800
    # Line 1197
    li	$a2,255
.L0dac7618:
    b	.L0dac4820
    # Line 1198
    li	$a2,255
.L0dac7620:
    b	.L0dac4a48
    # Line 1283
    li	$a4,255
.L0dac7628:
    b	.L0dac4a64
    # Line 1284
    li	$a4,255
.L0dac7630:
    b	.L0dac4a84
    # Line 1285
    li	$a4,255
.L0dac7638:
    # Line 1124
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac76a0
    move	$a4,$a1
    lbu	$a0,0($a7)
    andi	$a6,$a0,0x80
    beqz	$a6,.L0dac9494
    # Line 1125
    move	$a2,$zero
.L0dac765c:
    and	$v1,$a2,$a0
    sb	$v1,0($a5)
    lbu	$a0,0($a7)
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac94ac
    # Line 1126
    move	$a2,$zero
.L0dac7674:
    and	$a6,$a2,$a0
    sb	$a6,1($a5)
    # Line 1127
    lbu	$a0,0($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac94b4
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac7690:
    # Line 1124
    addiu	$t0,$t0,1
    # Line 1128
    addiu	$a7,$a7,3
    # Line 1127
    and	$v0,$a2,$a0
    sb	$v0,-1($a5)
.L0dac76a0:
    sra	$v1,$a4,0x1
    bnezl	$v1,.L0dac7c08
    # Line 1124
    lbu	$a0,0($a7)
.L0dac76ac:
    b	.L0dac4aa4
    nop
.L0dac76b4:
    # Line 1210
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac7728
    move	$a4,$a1
    lhu	$a0,0($a7)
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac949c
    # Line 1211
    move	$a2,$zero
.L0dac76d8:
    sra	$v1,$a0,0x7
    and	$v1,$v1,$a2
    sb	$v1,0($a5)
    lhu	$a0,0($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac94bc
    # Line 1212
    move	$a2,$zero
.L0dac76f4:
    sra	$a6,$a0,0x7
    and	$a6,$a6,$a2
    sb	$a6,1($a5)
    # Line 1213
    lhu	$a0,0($a7)
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac94c4
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac7714:
    # Line 1210
    addiu	$t0,$t0,1
    # Line 1214
    addiu	$a7,$a7,6
    # Line 1213
    sra	$v0,$a0,0x7
    and	$v0,$v0,$a2
    sb	$v0,-1($a5)
.L0dac7728:
    sra	$v1,$a4,0x1
    bnezl	$v1,.L0dac7cf0
    # Line 1210
    lhu	$a0,0($a7)
.L0dac7734:
    b	.L0dac4aa4
    nop
.L0dac773c:
    # Line 1297
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$t1,$a1
    andi	$a0,$a1,0x1
    beqz	$a0,.L0dac77b4
    lui	$a0,0x8000
    lw	$a2,0($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac94a4
    # Line 1298
    move	$a4,$zero
.L0dac7764:
    srl	$v0,$a2,0x17
    and	$v0,$v0,$a4
    sb	$v0,0($a5)
    lw	$a2,0($a7)
    and	$a6,$a0,$a2
    beqz	$a6,.L0dac94cc
    # Line 1299
    move	$a4,$zero
.L0dac7780:
    srl	$a2,$a2,0x17
    and	$a2,$a2,$a4
    sb	$a2,1($a5)
    # Line 1300
    lw	$a2,0($a7)
    and	$v1,$a0,$a2
    beqz	$v1,.L0dac94d4
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac77a0:
    # Line 1297
    addiu	$t0,$t0,1
    # Line 1301
    addiu	$a7,$a7,12
    # Line 1300
    srl	$a3,$a2,0x17
    and	$a3,$a3,$a4
    sb	$a3,-1($a5)
.L0dac77b4:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dac7dd8
    # Line 1297
    lw	$a2,0($a7)
.L0dac77c0:
    b	.L0dac4aa4
    nop
.L0dac77c8:
    # Line 1379
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac7808
    move	$a2,$a1
.L0dac77dc:
    # Line 1380
    lbu	$a3,0($a7)
    sb	$a3,0($a5)
    lbu	$v1,0($a7)
    # Line 1379
    addiu	$t0,$t0,1
    # Line 1380
    addiu	$a7,$a7,3
    sb	$v1,1($a5)
    addiu	$a5,$a5,3
    lbu	$v0,-3($a7)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac77dc
    sb	$v0,-1($a5)
.L0dac7808:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a6,$a2,0x2
    beqz	$a6,.L0dac7898
    move	$t1,$a7
    move	$a2,$t3
    move	$a0,$t2
    move	$a4,$t1
.L0dac7828:
    lbu	$a6,0($a4)
    sb	$a6,0($a0)
    lbu	$a3,0($a4)
    sb	$a3,1($a0)
    lbu	$v1,0($a4)
    sb	$v1,2($a0)
    lbu	$v0,3($a4)
    sb	$v0,3($a0)
    lbu	$a6,3($a4)
    sb	$a6,4($a0)
    lbu	$a3,3($a4)
    sb	$a3,5($a0)
    lbu	$v1,6($a4)
    sb	$v1,6($a0)
    lbu	$v0,6($a4)
    sb	$v0,7($a0)
    lbu	$a6,6($a4)
    sb	$a6,8($a0)
    lbu	$a3,9($a4)
    sb	$a3,9($a0)
    lbu	$v1,9($a4)
    addiu	$a4,$a4,12
    sb	$v1,10($a0)
    addiu	$a0,$a0,12
    lbu	$v0,-3($a4)
    # Line 1379
    addiu	$a2,$a2,4
    bne	$a1,$a2,.L0dac7828
    # Line 1380
    sb	$v0,-1($a0)
.L0dac7898:
    b	.L0dac4aa4
    nop
.L0dac78a0:
    # Line 1444
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac78e4
    move	$a0,$a1
    # Line 1445
    lhu	$a6,0($a7)
    sra	$a6,$a6,0x8
    sb	$a6,0($a5)
    lhu	$a3,0($a7)
    sra	$a3,$a3,0x8
    sb	$a3,1($a5)
    # Line 1444
    addiu	$t0,$t0,1
    # Line 1445
    lhu	$v1,0($a7)
    addiu	$a7,$a7,6
    addiu	$a5,$a5,3
    sra	$v1,$v1,0x8
    sb	$v1,-1($a5)
.L0dac78e4:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v0,$a0,0x1
    beqz	$v0,.L0dac795c
    move	$t1,$a7
    move	$a0,$t3
    move	$a4,$t2
    move	$a2,$t1
.L0dac7904:
    lhu	$a3,0($a2)
    sra	$a3,$a3,0x8
    sb	$a3,0($a4)
    lhu	$v1,0($a2)
    sra	$v1,$v1,0x8
    sb	$v1,1($a4)
    lhu	$v0,0($a2)
    sra	$v0,$v0,0x8
    sb	$v0,2($a4)
    lhu	$a6,6($a2)
    sra	$a6,$a6,0x8
    sb	$a6,3($a4)
    lhu	$a3,6($a2)
    sra	$a3,$a3,0x8
    sb	$a3,4($a4)
    addiu	$a2,$a2,12
    lhu	$v1,-6($a2)
    addiu	$a4,$a4,6
    # Line 1444
    addiu	$a0,$a0,2
    # Line 1445
    sra	$v1,$v1,0x8
    # Line 1444
    bne	$a1,$a0,.L0dac7904
    # Line 1445
    sb	$v1,-1($a4)
.L0dac795c:
    b	.L0dac4aa4
    nop
.L0dac7964:
    # Line 1509
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a6,$a1,0x1
    beqz	$a6,.L0dac79a8
    move	$a0,$a1
    # Line 1510
    lw	$a3,0($a7)
    srl	$a3,$a3,0x18
    sb	$a3,0($a5)
    lw	$v1,0($a7)
    srl	$v1,$v1,0x18
    sb	$v1,1($a5)
    # Line 1509
    addiu	$t0,$t0,1
    # Line 1510
    lw	$v0,0($a7)
    addiu	$a7,$a7,12
    addiu	$a5,$a5,3
    srl	$v0,$v0,0x18
    sb	$v0,-1($a5)
.L0dac79a8:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a6,$a0,0x1
    beqz	$a6,.L0dac7a20
    move	$t1,$a7
    move	$a2,$t3
    move	$a0,$t2
    move	$a4,$t1
.L0dac79c8:
    lw	$v1,0($a4)
    srl	$v1,$v1,0x18
    sb	$v1,0($a0)
    lw	$v0,0($a4)
    srl	$v0,$v0,0x18
    sb	$v0,1($a0)
    lw	$a6,0($a4)
    srl	$a6,$a6,0x18
    sb	$a6,2($a0)
    lw	$a3,12($a4)
    srl	$a3,$a3,0x18
    sb	$a3,3($a0)
    lw	$v1,12($a4)
    srl	$v1,$v1,0x18
    sb	$v1,4($a0)
    addiu	$a4,$a4,24
    lw	$v0,-12($a4)
    addiu	$a0,$a0,6
    # Line 1509
    addiu	$a2,$a2,2
    # Line 1510
    srl	$v0,$v0,0x18
    # Line 1509
    bne	$a1,$a2,.L0dac79c8
    # Line 1510
    sb	$v0,-1($a0)
.L0dac7a20:
    b	.L0dac4aa4
    nop
.L0dac7a28:
    # Line 1574
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a0,$a1
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac7a9c
    ldc1	$f4,_lit8_406fffff2e48e8a7
    # Line 1575
    lwc1	$f0,0($a7)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    nop
    sb	$v1,0($a5)
    lwc1	$f3,0($a7)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$v0,$f3
    nop
    sb	$v0,1($a5)
    lwc1	$f2,0($a7)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    # Line 1574
    addiu	$t0,$t0,1
    # Line 1575
    mfc1	$a6,$f2
    addiu	$a7,$a7,12
    addiu	$a5,$a5,3
    sb	$a6,-1($a5)
.L0dac7a9c:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a3,$a0,0x1
    beqz	$a3,.L0dac7b70
    move	$t1,$a7
    move	$a0,$t3
    move	$a2,$t2
    move	$a4,$t1
.L0dac7abc:
    lwc1	$f2,0($a4)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v0,$f2
    nop
    sb	$v0,0($a2)
    lwc1	$f1,0($a4)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$a6,$f1
    nop
    sb	$a6,1($a2)
    lwc1	$f0,0($a4)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$a3,$f0
    nop
    sb	$a3,2($a2)
    lwc1	$f3,12($a4)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$v1,$f3
    nop
    sb	$v1,3($a2)
    lwc1	$f2,12($a4)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v0,$f2
    nop
    sb	$v0,4($a2)
    lwc1	$f1,12($a4)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    addiu	$a4,$a4,24
    addiu	$a2,$a2,6
    mfc1	$a6,$f1
    # Line 1574
    addiu	$a0,$a0,2
    bne	$a1,$a0,.L0dac7abc
    # Line 1575
    sb	$a6,-1($a2)
.L0dac7b70:
    b	.L0dac4aa4
    nop
.L0dac7b78:
    # Line 1125
    and	$a0,$a2,$a0
    sb	$a0,0($a5)
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac7c38
    # Line 1126
    move	$a2,$zero
.L0dac7b90:
    and	$a6,$a2,$a0
    sb	$a6,1($a5)
    # Line 1127
    lbu	$a0,0($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac7c40
    move	$a2,$zero
.L0dac7ba8:
    and	$v1,$a2,$a0
    sb	$v1,2($a5)
    # Line 1124
    lbu	$a0,3($a7)
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac7c20
    # Line 1125
    move	$a2,$zero
.L0dac7bc0:
    and	$a6,$a2,$a0
    sb	$a6,3($a5)
    lbu	$a0,3($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac7c28
    # Line 1126
    move	$a2,$zero
.L0dac7bd8:
    and	$v1,$a2,$a0
    sb	$v1,4($a5)
    # Line 1127
    lbu	$a0,3($a7)
    # Line 1128
    addiu	$a7,$a7,6
    # Line 1127
    move	$a2,$zero
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac7c30
    addiu	$a5,$a5,6
.L0dac7bf8:
    and	$a3,$a2,$a0
    # Line 1124
    beq	$a1,$t0,.L0dac76ac
    # Line 1127
    sb	$a3,-1($a5)
    # Line 1124
    lbu	$a0,0($a7)
.L0dac7c08:
    # Line 1125
    move	$a2,$zero
    # Line 1124
    andi	$a6,$a0,0x80
    bnez	$a6,.L0dac7b78
    addiu	$t0,$t0,2
    b	.L0dac7b78
    # Line 1125
    li	$a2,255
.L0dac7c20:
    b	.L0dac7bc0
    li	$a2,255
.L0dac7c28:
    b	.L0dac7bd8
    # Line 1126
    li	$a2,255
.L0dac7c30:
    b	.L0dac7bf8
    # Line 1127
    li	$a2,255
.L0dac7c38:
    b	.L0dac7b90
    # Line 1126
    li	$a2,255
.L0dac7c40:
    b	.L0dac7ba8
    # Line 1127
    li	$a2,255
.L0dac7c48:
    # Line 1211
    and	$v1,$v1,$a2
    sb	$v1,0($a5)
    lhu	$a0,0($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac7d20
    # Line 1212
    sra	$a6,$a0,0x7
    move	$a2,$zero
.L0dac7c64:
    and	$a6,$a6,$a2
    sb	$a6,1($a5)
    # Line 1213
    lhu	$a0,0($a7)
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac7d28
    sra	$v1,$a0,0x7
    move	$a2,$zero
.L0dac7c80:
    and	$v1,$v1,$a2
    sb	$v1,2($a5)
    # Line 1210
    lhu	$a0,6($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac7d08
    # Line 1211
    sra	$a6,$a0,0x7
    move	$a2,$zero
.L0dac7c9c:
    and	$a6,$a6,$a2
    sb	$a6,3($a5)
    lhu	$a0,6($a7)
    # Line 1212
    move	$a2,$zero
    # Line 1211
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac7d10
    # Line 1212
    sra	$v1,$a0,0x7
.L0dac7cb8:
    # Line 1210
    addiu	$t0,$t0,2
    # Line 1212
    and	$v1,$v1,$a2
    sb	$v1,4($a5)
    # Line 1214
    addiu	$a7,$a7,12
    # Line 1213
    lhu	$a0,-6($a7)
    addiu	$a5,$a5,6
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac7d18
    sra	$a3,$a0,0x7
    move	$a2,$zero
.L0dac7ce0:
    and	$a3,$a3,$a2
    # Line 1210
    beq	$a1,$t0,.L0dac7734
    # Line 1213
    sb	$a3,-1($a5)
    # Line 1210
    lhu	$a0,0($a7)
.L0dac7cf0:
    # Line 1211
    move	$a2,$zero
    # Line 1210
    andi	$a6,$a0,0x8000
    bnez	$a6,.L0dac7c48
    # Line 1211
    sra	$v1,$a0,0x7
    b	.L0dac7c48
    li	$a2,255
.L0dac7d08:
    b	.L0dac7c9c
    li	$a2,255
.L0dac7d10:
    b	.L0dac7cb8
    # Line 1212
    li	$a2,255
.L0dac7d18:
    b	.L0dac7ce0
    # Line 1213
    li	$a2,255
.L0dac7d20:
    b	.L0dac7c64
    # Line 1212
    li	$a2,255
.L0dac7d28:
    b	.L0dac7c80
    # Line 1213
    li	$a2,255
.L0dac7d30:
    # Line 1298
    and	$v1,$v1,$a4
    sb	$v1,0($a5)
    lw	$a2,0($a7)
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac7e08
    # Line 1299
    srl	$a6,$a2,0x17
    move	$a4,$zero
.L0dac7d4c:
    and	$a6,$a6,$a4
    sb	$a6,1($a5)
    # Line 1300
    lw	$a2,0($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac7e10
    srl	$v1,$a2,0x17
    move	$a4,$zero
.L0dac7d68:
    and	$v1,$v1,$a4
    sb	$v1,2($a5)
    # Line 1297
    lw	$a2,12($a7)
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac7df0
    # Line 1298
    srl	$a6,$a2,0x17
    move	$a4,$zero
.L0dac7d84:
    and	$a6,$a6,$a4
    sb	$a6,3($a5)
    lw	$a2,12($a7)
    # Line 1299
    move	$a4,$zero
    # Line 1298
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac7df8
    # Line 1299
    srl	$v1,$a2,0x17
.L0dac7da0:
    # Line 1297
    addiu	$t0,$t0,2
    # Line 1299
    and	$v1,$v1,$a4
    sb	$v1,4($a5)
    # Line 1301
    addiu	$a7,$a7,24
    # Line 1300
    lw	$a2,-12($a7)
    addiu	$a5,$a5,6
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac7e00
    srl	$a3,$a2,0x17
    move	$a4,$zero
.L0dac7dc8:
    and	$a3,$a3,$a4
    # Line 1297
    beq	$a1,$t0,.L0dac77c0
    # Line 1300
    sb	$a3,-1($a5)
    # Line 1297
    lw	$a2,0($a7)
.L0dac7dd8:
    # Line 1298
    move	$a4,$zero
    # Line 1297
    and	$a6,$a0,$a2
    bnez	$a6,.L0dac7d30
    # Line 1298
    srl	$v1,$a2,0x17
    b	.L0dac7d30
    li	$a4,255
.L0dac7df0:
    b	.L0dac7d84
    li	$a4,255
.L0dac7df8:
    b	.L0dac7da0
    # Line 1299
    li	$a4,255
.L0dac7e00:
    b	.L0dac7dc8
    # Line 1300
    li	$a4,255
.L0dac7e08:
    b	.L0dac7d4c
    # Line 1299
    li	$a4,255
.L0dac7e10:
    b	.L0dac7d68
    # Line 1300
    li	$a4,255
.L0dac7e18:
    # Line 1095
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac7e58
    move	$a4,$a1
    # Line 1096
    sb	$zero,0($a5)
    # Line 1097
    sb	$zero,1($a5)
    # Line 1098
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac94dc
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac7e48:
    # Line 1095
    addiu	$t0,$t0,1
    # Line 1098
    addiu	$a7,$a7,1
    and	$a3,$a2,$a0
    sb	$a3,-1($a5)
.L0dac7e58:
    sra	$a6,$a4,0x1
    bnezl	$a6,.L0dac827c
    # Line 1096
    sb	$zero,0($a5)
.L0dac7e64:
    b	.L0dac4aa4
    nop
.L0dac7e6c:
    # Line 1182
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac7eb0
    move	$a4,$a1
    # Line 1183
    sb	$zero,0($a5)
    sb	$zero,1($a5)
    # Line 1184
    lhu	$a0,0($a7)
    andi	$v1,$a0,0x8000
    beqz	$v1,.L0dac94e4
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac7e9c:
    # Line 1182
    addiu	$t0,$t0,1
    # Line 1184
    addiu	$a7,$a7,2
    sra	$a3,$a0,0x7
    and	$a3,$a3,$a2
    sb	$a3,-1($a5)
.L0dac7eb0:
    sra	$a6,$a4,0x1
    bnezl	$a6,.L0dac8310
    # Line 1183
    sb	$zero,1($a5)
.L0dac7ebc:
    b	.L0dac4aa4
    nop
.L0dac7ec4:
    # Line 1269
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$t1,$a1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac7f0c
    lui	$a0,0x8000
    # Line 1270
    sb	$zero,0($a5)
    sb	$zero,1($a5)
    # Line 1271
    lw	$a2,0($a7)
    and	$v1,$a0,$a2
    beqz	$v1,.L0dac94ec
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac7ef8:
    # Line 1269
    addiu	$t0,$t0,1
    # Line 1271
    addiu	$a7,$a7,4
    srl	$a3,$a2,0x17
    and	$a3,$a3,$a4
    sb	$a3,-1($a5)
.L0dac7f0c:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dac837c
    # Line 1270
    sb	$zero,1($a5)
.L0dac7f18:
    b	.L0dac4aa4
    nop
.L0dac7f20:
    # Line 1356
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac7f58
    move	$a2,$a1
.L0dac7f34:
    addiu	$t0,$t0,1
    # Line 1357
    addiu	$a5,$a5,3
    sb	$zero,-3($a5)
    sb	$zero,-2($a5)
    addiu	$a7,$a7,1
    lbu	$v0,-1($a7)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac7f34
    sb	$v0,-1($a5)
.L0dac7f58:
    move	$t3,$t0
    move	$t2,$a7
    sra	$v1,$a2,0x2
    beqz	$v1,.L0dac7fc8
    move	$t1,$a5
    move	$a2,$t3
    move	$a4,$t2
    move	$a0,$t1
.L0dac7f78:
    sb	$zero,0($a0)
    sb	$zero,1($a0)
    lbu	$v1,0($a4)
    sb	$v1,2($a0)
    sb	$zero,3($a0)
    sb	$zero,4($a0)
    lbu	$v0,1($a4)
    sb	$v0,5($a0)
    sb	$zero,6($a0)
    sb	$zero,7($a0)
    lbu	$a6,2($a4)
    addiu	$a0,$a0,12
    sb	$a6,-4($a0)
    sb	$zero,-3($a0)
    sb	$zero,-2($a0)
    addiu	$a4,$a4,4
    lbu	$a3,-1($a4)
    # Line 1356
    addiu	$a2,$a2,4
    bne	$a1,$a2,.L0dac7f78
    # Line 1357
    sb	$a3,-1($a0)
.L0dac7fc8:
    b	.L0dac4aa4
    nop
.L0dac7fd0:
    # Line 1421
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac800c
    move	$a2,$a1
.L0dac7fe4:
    addiu	$t0,$t0,1
    # Line 1422
    sb	$zero,0($a5)
    sb	$zero,1($a5)
    addiu	$a5,$a5,3
    lhu	$a3,0($a7)
    addiu	$a7,$a7,2
    addi	$a0,$a0,-1
    sra	$a3,$a3,0x8
    bnez	$a0,.L0dac7fe4
    sb	$a3,-1($a5)
.L0dac800c:
    move	$t3,$t0
    move	$t2,$a7
    sra	$a6,$a2,0x2
    beqz	$a6,.L0dac808c
    move	$t1,$a5
    move	$a0,$t3
    move	$a4,$t2
    move	$a2,$t1
.L0dac802c:
    sb	$zero,0($a2)
    sb	$zero,1($a2)
    lhu	$a6,0($a4)
    sra	$a6,$a6,0x8
    sb	$a6,2($a2)
    sb	$zero,3($a2)
    sb	$zero,4($a2)
    lhu	$a3,2($a4)
    sra	$a3,$a3,0x8
    sb	$a3,5($a2)
    sb	$zero,6($a2)
    sb	$zero,7($a2)
    lhu	$v1,4($a4)
    sra	$v1,$v1,0x8
    sb	$v1,8($a2)
    sb	$zero,9($a2)
    sb	$zero,10($a2)
    addiu	$a2,$a2,12
    lhu	$v0,6($a4)
    addiu	$a4,$a4,8
    # Line 1421
    addiu	$a0,$a0,4
    # Line 1422
    sra	$v0,$v0,0x8
    # Line 1421
    bne	$a1,$a0,.L0dac802c
    # Line 1422
    sb	$v0,-1($a2)
.L0dac808c:
    b	.L0dac4aa4
    nop
.L0dac8094:
    # Line 1486
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac80d0
    move	$a2,$a1
.L0dac80a8:
    addiu	$t0,$t0,1
    # Line 1487
    sb	$zero,0($a5)
    sb	$zero,1($a5)
    addiu	$a5,$a5,3
    lw	$v0,0($a7)
    addiu	$a7,$a7,4
    addi	$a0,$a0,-1
    srl	$v0,$v0,0x18
    bnez	$a0,.L0dac80a8
    sb	$v0,-1($a5)
.L0dac80d0:
    move	$t3,$t0
    move	$t2,$a7
    sra	$v1,$a2,0x2
    beqz	$v1,.L0dac8150
    move	$t1,$a5
    move	$a0,$t3
    move	$a4,$t2
    move	$a2,$t1
.L0dac80f0:
    sb	$zero,0($a2)
    sb	$zero,1($a2)
    lw	$v1,0($a4)
    srl	$v1,$v1,0x18
    sb	$v1,2($a2)
    sb	$zero,3($a2)
    sb	$zero,4($a2)
    lw	$v0,4($a4)
    srl	$v0,$v0,0x18
    sb	$v0,5($a2)
    sb	$zero,6($a2)
    sb	$zero,7($a2)
    lw	$a6,8($a4)
    srl	$a6,$a6,0x18
    sb	$a6,8($a2)
    sb	$zero,9($a2)
    sb	$zero,10($a2)
    addiu	$a2,$a2,12
    lw	$a3,12($a4)
    addiu	$a4,$a4,16
    # Line 1486
    addiu	$a0,$a0,4
    # Line 1487
    srl	$a3,$a3,0x18
    # Line 1486
    bne	$a1,$a0,.L0dac80f0
    # Line 1487
    sb	$a3,-1($a2)
.L0dac8150:
    b	.L0dac4aa4
    nop
.L0dac8158:
    # Line 1551
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a2,$a1
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac81a4
    ldc1	$f4,_lit8_406fffff2e48e8a7
.L0dac8170:
    # Line 1552
    sb	$zero,0($a5)
    sb	$zero,1($a5)
    lwc1	$f3,0($a7)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    # Line 1551
    addiu	$t0,$t0,1
    # Line 1552
    addiu	$a5,$a5,3
    addiu	$a7,$a7,4
    mfc1	$a3,$f3
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac8170
    sb	$a3,-1($a5)
.L0dac81a4:
    move	$t3,$t0
    move	$t2,$a7
    sra	$a6,$a2,0x2
    beqz	$a6,.L0dac8260
    move	$t1,$a5
    move	$a4,$t3
    move	$a2,$t2
    move	$a0,$t1
.L0dac81c4:
    sb	$zero,0($a0)
    sb	$zero,1($a0)
    lwc1	$f3,0($a2)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a6,$f3
    nop
    sb	$a6,2($a0)
    sb	$zero,3($a0)
    sb	$zero,4($a0)
    lwc1	$f2,4($a2)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$a3,$f2
    nop
    sb	$a3,5($a0)
    sb	$zero,6($a0)
    sb	$zero,7($a0)
    lwc1	$f1,8($a2)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v1,$f1
    nop
    sb	$v1,8($a0)
    sb	$zero,9($a0)
    sb	$zero,10($a0)
    lwc1	$f0,12($a2)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    addiu	$a0,$a0,12
    addiu	$a2,$a2,16
    mfc1	$v0,$f0
    # Line 1551
    addiu	$a4,$a4,4
    bne	$a1,$a4,.L0dac81c4
    # Line 1552
    sb	$v0,-1($a0)
.L0dac8260:
    b	.L0dac4aa4
    nop
.L0dac8268:
    # Line 1098
    li	$a2,255
.L0dac826c:
    and	$v0,$a2,$a0
    # Line 1095
    beq	$a1,$t0,.L0dac7e64
    # Line 1098
    sb	$v0,-1($a5)
    # Line 1096
    sb	$zero,0($a5)
.L0dac827c:
    # Line 1097
    sb	$zero,1($a5)
    # Line 1098
    lbu	$a0,0($a7)
    move	$a2,$zero
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac82c4
    # Line 1095
    addiu	$t0,$t0,2
.L0dac8294:
    # Line 1096
    sb	$zero,3($a5)
    # Line 1097
    sb	$zero,4($a5)
    # Line 1098
    and	$a6,$a2,$a0
    sb	$a6,2($a5)
    lbu	$a0,1($a7)
    addiu	$a7,$a7,2
    move	$a2,$zero
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac8268
    addiu	$a5,$a5,6
    b	.L0dac826c
    nop
.L0dac82c4:
    b	.L0dac8294
    li	$a2,255
.L0dac82cc:
    # Line 1184
    li	$a2,255
.L0dac82d0:
    # Line 1182
    addiu	$t0,$t0,2
    # Line 1183
    sb	$zero,4($a5)
    sb	$zero,3($a5)
    # Line 1184
    and	$v1,$v1,$a2
    sb	$v1,2($a5)
    addiu	$a7,$a7,4
    lhu	$a0,-2($a7)
    addiu	$a5,$a5,6
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac8330
    sra	$a3,$a0,0x7
    move	$a2,$zero
.L0dac8300:
    and	$a3,$a3,$a2
    # Line 1182
    beq	$a1,$t0,.L0dac7ebc
    # Line 1184
    sb	$a3,-1($a5)
    # Line 1183
    sb	$zero,1($a5)
.L0dac8310:
    sb	$zero,0($a5)
    # Line 1184
    lhu	$a0,0($a7)
    move	$a2,$zero
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac82cc
    sra	$v1,$a0,0x7
    b	.L0dac82d0
    nop
.L0dac8330:
    b	.L0dac8300
    li	$a2,255
.L0dac8338:
    # Line 1271
    li	$a4,255
.L0dac833c:
    # Line 1269
    addiu	$t0,$t0,2
    # Line 1270
    sb	$zero,4($a5)
    sb	$zero,3($a5)
    # Line 1271
    and	$v1,$v1,$a4
    sb	$v1,2($a5)
    addiu	$a7,$a7,8
    lw	$a2,-4($a7)
    addiu	$a5,$a5,6
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac839c
    srl	$a3,$a2,0x17
    move	$a4,$zero
.L0dac836c:
    and	$a3,$a3,$a4
    # Line 1269
    beq	$a1,$t0,.L0dac7f18
    # Line 1271
    sb	$a3,-1($a5)
    # Line 1270
    sb	$zero,1($a5)
.L0dac837c:
    sb	$zero,0($a5)
    # Line 1271
    lw	$a2,0($a7)
    move	$a4,$zero
    and	$a6,$a0,$a2
    beqz	$a6,.L0dac8338
    srl	$v1,$a2,0x17
    b	.L0dac833c
    nop
.L0dac839c:
    b	.L0dac836c
    li	$a4,255
.L0dac83a4:
    # Line 1157
    move	$a7,$a2
    # Line 1158
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac8410
    move	$a4,$a1
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac94f4
    # Line 1159
    move	$a2,$zero
.L0dac83cc:
    and	$a6,$a2,$a0
    sb	$a6,0($a5)
    lbu	$a0,0($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac950c
    # Line 1160
    move	$a2,$zero
.L0dac83e4:
    and	$v1,$a2,$a0
    sb	$v1,1($a5)
    # Line 1161
    lbu	$a0,0($a7)
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac9514
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac8400:
    # Line 1158
    addiu	$t0,$t0,1
    # Line 1162
    addiu	$a7,$a7,4
    # Line 1161
    and	$a3,$a2,$a0
    sb	$a3,-1($a5)
.L0dac8410:
    sra	$a6,$a4,0x1
    bnezl	$a6,.L0dac8990
    # Line 1158
    lbu	$a0,0($a7)
.L0dac841c:
    b	.L0dac4aa4
    nop
.L0dac8424:
    # Line 1243
    move	$a7,$a2
    # Line 1244
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac849c
    move	$a4,$a1
    lhu	$a0,0($a7)
    andi	$v1,$a0,0x8000
    beqz	$v1,.L0dac94fc
    # Line 1245
    move	$a2,$zero
.L0dac844c:
    sra	$a6,$a0,0x7
    and	$a6,$a6,$a2
    sb	$a6,0($a5)
    lhu	$a0,0($a7)
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac951c
    # Line 1246
    move	$a2,$zero
.L0dac8468:
    sra	$v1,$a0,0x7
    and	$v1,$v1,$a2
    sb	$v1,1($a5)
    # Line 1247
    lhu	$a0,0($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac9524
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac8488:
    # Line 1244
    addiu	$t0,$t0,1
    # Line 1248
    addiu	$a7,$a7,8
    # Line 1247
    sra	$a3,$a0,0x7
    and	$a3,$a3,$a2
    sb	$a3,-1($a5)
.L0dac849c:
    sra	$a6,$a4,0x1
    bnezl	$a6,.L0dac8a78
    # Line 1244
    lhu	$a0,0($a7)
.L0dac84a8:
    b	.L0dac4aa4
    nop
.L0dac84b0:
    # Line 1330
    move	$a7,$a2
    # Line 1331
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$t1,$a1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac852c
    lui	$a0,0x8000
    lw	$a2,0($a7)
    and	$v1,$a0,$a2
    beqz	$v1,.L0dac9504
    # Line 1332
    move	$a4,$zero
.L0dac84dc:
    srl	$a6,$a2,0x17
    and	$a6,$a6,$a4
    sb	$a6,0($a5)
    lw	$a2,0($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac952c
    # Line 1333
    move	$a4,$zero
.L0dac84f8:
    srl	$v1,$a2,0x17
    and	$v1,$v1,$a4
    sb	$v1,1($a5)
    # Line 1334
    lw	$a2,0($a7)
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac9534
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac8518:
    # Line 1331
    addiu	$t0,$t0,1
    # Line 1335
    addiu	$a7,$a7,16
    # Line 1334
    srl	$a3,$a2,0x17
    and	$a3,$a3,$a4
    sb	$a3,-1($a5)
.L0dac852c:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dac8b60
    # Line 1331
    lw	$a2,0($a7)
.L0dac8538:
    b	.L0dac4aa4
    nop
.L0dac8540:
    # Line 1401
    addiu	$a7,$a4,3
    # Line 1402
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac8584
    move	$a2,$a1
.L0dac8558:
    # Line 1403
    lbu	$a3,0($a7)
    sb	$a3,0($a5)
    lbu	$v1,0($a7)
    # Line 1402
    addiu	$t0,$t0,1
    # Line 1403
    addiu	$a7,$a7,4
    sb	$v1,1($a5)
    addiu	$a5,$a5,3
    lbu	$v0,-4($a7)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac8558
    sb	$v0,-1($a5)
.L0dac8584:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a6,$a2,0x2
    beqz	$a6,.L0dac8614
    move	$t1,$a7
    move	$a0,$t3
    move	$a4,$t2
    move	$a2,$t1
.L0dac85a4:
    lbu	$a6,0($a2)
    sb	$a6,0($a4)
    lbu	$a3,0($a2)
    sb	$a3,1($a4)
    lbu	$v1,0($a2)
    sb	$v1,2($a4)
    lbu	$v0,4($a2)
    sb	$v0,3($a4)
    lbu	$a6,4($a2)
    sb	$a6,4($a4)
    lbu	$a3,4($a2)
    sb	$a3,5($a4)
    lbu	$v1,8($a2)
    sb	$v1,6($a4)
    lbu	$v0,8($a2)
    sb	$v0,7($a4)
    lbu	$a6,8($a2)
    sb	$a6,8($a4)
    lbu	$a3,12($a2)
    sb	$a3,9($a4)
    lbu	$v1,12($a2)
    addiu	$a2,$a2,16
    sb	$v1,10($a4)
    addiu	$a4,$a4,12
    lbu	$v0,-4($a2)
    # Line 1402
    addiu	$a0,$a0,4
    bne	$a1,$a0,.L0dac85a4
    # Line 1403
    sb	$v0,-1($a4)
.L0dac8614:
    b	.L0dac4aa4
    nop
.L0dac861c:
    # Line 1466
    addiu	$a7,$a4,6
    # Line 1467
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac8664
    move	$a0,$a1
    # Line 1468
    lhu	$a6,0($a7)
    sra	$a6,$a6,0x8
    sb	$a6,0($a5)
    lhu	$a3,0($a7)
    sra	$a3,$a3,0x8
    sb	$a3,1($a5)
    # Line 1467
    addiu	$t0,$t0,1
    # Line 1468
    lhu	$v1,0($a7)
    addiu	$a7,$a7,10
    addiu	$a5,$a5,3
    sra	$v1,$v1,0x8
    sb	$v1,-1($a5)
.L0dac8664:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v0,$a0,0x1
    beqz	$v0,.L0dac86dc
    move	$t1,$a7
    move	$a0,$t3
    move	$a2,$t2
    move	$a4,$t1
.L0dac8684:
    lhu	$a3,0($a4)
    sra	$a3,$a3,0x8
    sb	$a3,0($a2)
    lhu	$v1,0($a4)
    sra	$v1,$v1,0x8
    sb	$v1,1($a2)
    lhu	$v0,0($a4)
    sra	$v0,$v0,0x8
    sb	$v0,2($a2)
    lhu	$a6,10($a4)
    sra	$a6,$a6,0x8
    sb	$a6,3($a2)
    lhu	$a3,10($a4)
    sra	$a3,$a3,0x8
    sb	$a3,4($a2)
    addiu	$a4,$a4,20
    lhu	$v1,-10($a4)
    addiu	$a2,$a2,6
    # Line 1467
    addiu	$a0,$a0,2
    # Line 1468
    sra	$v1,$v1,0x8
    # Line 1467
    bne	$a1,$a0,.L0dac8684
    # Line 1468
    sb	$v1,-1($a2)
.L0dac86dc:
    b	.L0dac4aa4
    nop
.L0dac86e4:
    # Line 1531
    addiu	$a7,$a4,12
    # Line 1532
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a6,$a1,0x1
    beqz	$a6,.L0dac872c
    move	$a0,$a1
    # Line 1533
    lw	$a3,0($a7)
    srl	$a3,$a3,0x18
    sb	$a3,0($a5)
    lw	$v1,0($a7)
    srl	$v1,$v1,0x18
    sb	$v1,1($a5)
    # Line 1532
    addiu	$t0,$t0,1
    # Line 1533
    lw	$v0,0($a7)
    addiu	$a7,$a7,20
    addiu	$a5,$a5,3
    srl	$v0,$v0,0x18
    sb	$v0,-1($a5)
.L0dac872c:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a6,$a0,0x1
    beqz	$a6,.L0dac87a4
    move	$t1,$a7
    move	$a4,$t3
    move	$a2,$t2
    move	$a0,$t1
.L0dac874c:
    lw	$v1,0($a0)
    srl	$v1,$v1,0x18
    sb	$v1,0($a2)
    lw	$v0,0($a0)
    srl	$v0,$v0,0x18
    sb	$v0,1($a2)
    lw	$a6,0($a0)
    srl	$a6,$a6,0x18
    sb	$a6,2($a2)
    lw	$a3,20($a0)
    srl	$a3,$a3,0x18
    sb	$a3,3($a2)
    lw	$v1,20($a0)
    srl	$v1,$v1,0x18
    sb	$v1,4($a2)
    addiu	$a0,$a0,40
    lw	$v0,-20($a0)
    addiu	$a2,$a2,6
    # Line 1532
    addiu	$a4,$a4,2
    # Line 1533
    srl	$v0,$v0,0x18
    # Line 1532
    bne	$a1,$a4,.L0dac874c
    # Line 1533
    sb	$v0,-1($a2)
.L0dac87a4:
    b	.L0dac4aa4
    nop
.L0dac87ac:
    # Line 1596
    addiu	$a7,$a4,12
    # Line 1597
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a0,$a1
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac8824
    ldc1	$f4,_lit8_406fffff2e48e8a7
    # Line 1598
    lwc1	$f2,0($a7)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v1,$f2
    nop
    sb	$v1,0($a5)
    lwc1	$f1,0($a7)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    nop
    sb	$v0,1($a5)
    lwc1	$f0,0($a7)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    # Line 1597
    addiu	$t0,$t0,1
    # Line 1598
    mfc1	$a6,$f0
    addiu	$a7,$a7,16
    addiu	$a5,$a5,3
    sb	$a6,-1($a5)
.L0dac8824:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a3,$a0,0x1
    beqz	$a3,.L0dac88f8
    move	$t1,$a7
    move	$a0,$t3
    move	$a4,$t2
    move	$a2,$t1
.L0dac8844:
    lwc1	$f0,0($a2)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$v0,$f0
    nop
    sb	$v0,0($a4)
    lwc1	$f3,0($a2)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a6,$f3
    nop
    sb	$a6,1($a4)
    lwc1	$f2,0($a2)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$a3,$f2
    nop
    sb	$a3,2($a4)
    lwc1	$f1,16($a2)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v1,$f1
    nop
    sb	$v1,3($a4)
    lwc1	$f0,16($a2)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$v0,$f0
    nop
    sb	$v0,4($a4)
    lwc1	$f3,16($a2)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    addiu	$a2,$a2,32
    addiu	$a4,$a4,6
    mfc1	$a6,$f3
    # Line 1597
    addiu	$a0,$a0,2
    bne	$a1,$a0,.L0dac8844
    # Line 1598
    sb	$a6,-1($a4)
.L0dac88f8:
    b	.L0dac4aa4
    nop
.L0dac8900:
    # Line 1159
    and	$a0,$a2,$a0
    sb	$a0,0($a5)
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac89c0
    # Line 1160
    move	$a2,$zero
.L0dac8918:
    and	$a6,$a2,$a0
    sb	$a6,1($a5)
    # Line 1161
    lbu	$a0,0($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac89c8
    move	$a2,$zero
.L0dac8930:
    and	$v1,$a2,$a0
    sb	$v1,2($a5)
    # Line 1158
    lbu	$a0,4($a7)
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac89a8
    # Line 1159
    move	$a2,$zero
.L0dac8948:
    and	$a6,$a2,$a0
    sb	$a6,3($a5)
    lbu	$a0,4($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac89b0
    # Line 1160
    move	$a2,$zero
.L0dac8960:
    and	$v1,$a2,$a0
    sb	$v1,4($a5)
    # Line 1161
    lbu	$a0,4($a7)
    # Line 1162
    addiu	$a7,$a7,8
    # Line 1161
    move	$a2,$zero
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac89b8
    addiu	$a5,$a5,6
.L0dac8980:
    and	$a3,$a2,$a0
    # Line 1158
    beq	$a1,$t0,.L0dac841c
    # Line 1161
    sb	$a3,-1($a5)
    # Line 1158
    lbu	$a0,0($a7)
.L0dac8990:
    # Line 1159
    move	$a2,$zero
    # Line 1158
    andi	$a6,$a0,0x80
    bnez	$a6,.L0dac8900
    addiu	$t0,$t0,2
    b	.L0dac8900
    # Line 1159
    li	$a2,255
.L0dac89a8:
    b	.L0dac8948
    li	$a2,255
.L0dac89b0:
    b	.L0dac8960
    # Line 1160
    li	$a2,255
.L0dac89b8:
    b	.L0dac8980
    # Line 1161
    li	$a2,255
.L0dac89c0:
    b	.L0dac8918
    # Line 1160
    li	$a2,255
.L0dac89c8:
    b	.L0dac8930
    # Line 1161
    li	$a2,255
.L0dac89d0:
    # Line 1245
    and	$v1,$v1,$a2
    sb	$v1,0($a5)
    lhu	$a0,0($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac8aa8
    # Line 1246
    sra	$a6,$a0,0x7
    move	$a2,$zero
.L0dac89ec:
    and	$a6,$a6,$a2
    sb	$a6,1($a5)
    # Line 1247
    lhu	$a0,0($a7)
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac8ab0
    sra	$v1,$a0,0x7
    move	$a2,$zero
.L0dac8a08:
    and	$v1,$v1,$a2
    sb	$v1,2($a5)
    # Line 1244
    lhu	$a0,8($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac8a90
    # Line 1245
    sra	$a6,$a0,0x7
    move	$a2,$zero
.L0dac8a24:
    and	$a6,$a6,$a2
    sb	$a6,3($a5)
    lhu	$a0,8($a7)
    # Line 1246
    move	$a2,$zero
    # Line 1245
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac8a98
    # Line 1246
    sra	$v1,$a0,0x7
.L0dac8a40:
    # Line 1244
    addiu	$t0,$t0,2
    # Line 1246
    and	$v1,$v1,$a2
    sb	$v1,4($a5)
    # Line 1248
    addiu	$a7,$a7,16
    # Line 1247
    lhu	$a0,-8($a7)
    addiu	$a5,$a5,6
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac8aa0
    sra	$a3,$a0,0x7
    move	$a2,$zero
.L0dac8a68:
    and	$a3,$a3,$a2
    # Line 1244
    beq	$a1,$t0,.L0dac84a8
    # Line 1247
    sb	$a3,-1($a5)
    # Line 1244
    lhu	$a0,0($a7)
.L0dac8a78:
    # Line 1245
    move	$a2,$zero
    # Line 1244
    andi	$a6,$a0,0x8000
    bnez	$a6,.L0dac89d0
    # Line 1245
    sra	$v1,$a0,0x7
    b	.L0dac89d0
    li	$a2,255
.L0dac8a90:
    b	.L0dac8a24
    li	$a2,255
.L0dac8a98:
    b	.L0dac8a40
    # Line 1246
    li	$a2,255
.L0dac8aa0:
    b	.L0dac8a68
    # Line 1247
    li	$a2,255
.L0dac8aa8:
    b	.L0dac89ec
    # Line 1246
    li	$a2,255
.L0dac8ab0:
    b	.L0dac8a08
    # Line 1247
    li	$a2,255
.L0dac8ab8:
    # Line 1332
    and	$v1,$v1,$a4
    sb	$v1,0($a5)
    lw	$a2,0($a7)
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac8b90
    # Line 1333
    srl	$a6,$a2,0x17
    move	$a4,$zero
.L0dac8ad4:
    and	$a6,$a6,$a4
    sb	$a6,1($a5)
    # Line 1334
    lw	$a2,0($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac8b98
    srl	$v1,$a2,0x17
    move	$a4,$zero
.L0dac8af0:
    and	$v1,$v1,$a4
    sb	$v1,2($a5)
    # Line 1331
    lw	$a2,16($a7)
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac8b78
    # Line 1332
    srl	$a6,$a2,0x17
    move	$a4,$zero
.L0dac8b0c:
    and	$a6,$a6,$a4
    sb	$a6,3($a5)
    lw	$a2,16($a7)
    # Line 1333
    move	$a4,$zero
    # Line 1332
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac8b80
    # Line 1333
    srl	$v1,$a2,0x17
.L0dac8b28:
    # Line 1331
    addiu	$t0,$t0,2
    # Line 1333
    and	$v1,$v1,$a4
    sb	$v1,4($a5)
    # Line 1335
    addiu	$a7,$a7,32
    # Line 1334
    lw	$a2,-16($a7)
    addiu	$a5,$a5,6
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac8b88
    srl	$a3,$a2,0x17
    move	$a4,$zero
.L0dac8b50:
    and	$a3,$a3,$a4
    # Line 1331
    beq	$a1,$t0,.L0dac8538
    # Line 1334
    sb	$a3,-1($a5)
    # Line 1331
    lw	$a2,0($a7)
.L0dac8b60:
    # Line 1332
    move	$a4,$zero
    # Line 1331
    and	$a6,$a0,$a2
    bnez	$a6,.L0dac8ab8
    # Line 1332
    srl	$v1,$a2,0x17
    b	.L0dac8ab8
    li	$a4,255
.L0dac8b78:
    b	.L0dac8b0c
    li	$a4,255
.L0dac8b80:
    b	.L0dac8b28
    # Line 1333
    li	$a4,255
.L0dac8b88:
    b	.L0dac8b50
    # Line 1334
    li	$a4,255
.L0dac8b90:
    b	.L0dac8ad4
    # Line 1333
    li	$a4,255
.L0dac8b98:
    b	.L0dac8af0
    # Line 1334
    li	$a4,255
.L0dac8ba0:
    b	.L0dac4e40
    # Line 1132
    li	$a4,255
.L0dac8ba8:
    b	.L0dac4e58
    # Line 1133
    li	$a0,255
.L0dac8bb0:
    b	.L0dac4e74
    # Line 1134
    li	$a2,255
.L0dac8bb8:
    b	.L0dac4ed8
    # Line 1218
    li	$a4,255
.L0dac8bc0:
    b	.L0dac4ef4
    # Line 1219
    li	$a0,255
.L0dac8bc8:
    b	.L0dac4f14
    # Line 1220
    li	$a2,255
.L0dac8bd0:
    b	.L0dac5f20
    # Line 1305
    li	$t1,255
.L0dac8bd8:
    b	.L0dac5f3c
    # Line 1306
    li	$a2,255
.L0dac8be0:
    b	.L0dac5f5c
    # Line 1307
    li	$a4,255
.L0dac8be8:
    # Line 1140
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac8c50
    move	$a4,$a1
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac953c
    # Line 1141
    move	$a2,$zero
.L0dac8c0c:
    and	$a6,$a2,$a0
    sb	$a6,0($a5)
    lbu	$a0,0($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac9544
    # Line 1142
    move	$a2,$zero
.L0dac8c24:
    and	$v1,$a2,$a0
    sb	$v1,1($a5)
    # Line 1143
    lbu	$a0,0($a7)
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac954c
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac8c40:
    # Line 1140
    addiu	$t0,$t0,1
    # Line 1144
    addiu	$a7,$a7,4
    # Line 1143
    and	$a3,$a2,$a0
    sb	$a3,-1($a5)
.L0dac8c50:
    sra	$a6,$a4,0x1
    bnezl	$a6,.L0dac91bc
    # Line 1140
    lbu	$a0,0($a7)
.L0dac8c5c:
    b	.L0dac4aa4
    nop
.L0dac8c64:
    # Line 1226
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac8cd8
    move	$a4,$a1
    lhu	$a0,0($a7)
    andi	$v1,$a0,0x8000
    beqz	$v1,.L0dac9554
    # Line 1227
    move	$a2,$zero
.L0dac8c88:
    sra	$a6,$a0,0x7
    and	$a6,$a6,$a2
    sb	$a6,0($a5)
    lhu	$a0,0($a7)
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac955c
    # Line 1228
    move	$a2,$zero
.L0dac8ca4:
    sra	$v1,$a0,0x7
    and	$v1,$v1,$a2
    sb	$v1,1($a5)
    # Line 1229
    lhu	$a0,0($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac9564
    addiu	$a5,$a5,3
    move	$a2,$zero
.L0dac8cc4:
    # Line 1226
    addiu	$t0,$t0,1
    # Line 1230
    addiu	$a7,$a7,8
    # Line 1229
    sra	$a3,$a0,0x7
    and	$a3,$a3,$a2
    sb	$a3,-1($a5)
.L0dac8cd8:
    sra	$a6,$a4,0x1
    bnezl	$a6,.L0dac9270
    # Line 1226
    lhu	$a0,0($a7)
.L0dac8ce4:
    b	.L0dac4aa4
    nop
.L0dac8cec:
    # Line 1313
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$t1,$a1
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac8d64
    lui	$a0,0x8000
    lw	$a2,0($a7)
    and	$v1,$a0,$a2
    beqz	$v1,.L0dac956c
    # Line 1314
    move	$a4,$zero
.L0dac8d14:
    srl	$a6,$a2,0x17
    and	$a6,$a6,$a4
    sb	$a6,0($a5)
    lw	$a2,0($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac9574
    # Line 1315
    move	$a4,$zero
.L0dac8d30:
    srl	$v1,$a2,0x17
    and	$v1,$v1,$a4
    sb	$v1,1($a5)
    # Line 1316
    lw	$a2,0($a7)
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac957c
    addiu	$a5,$a5,3
    move	$a4,$zero
.L0dac8d50:
    # Line 1313
    addiu	$t0,$t0,1
    # Line 1317
    addiu	$a7,$a7,16
    # Line 1316
    srl	$a3,$a2,0x17
    and	$a3,$a3,$a4
    sb	$a3,-1($a5)
.L0dac8d64:
    sra	$a6,$t1,0x1
    bnezl	$a6,.L0dac92fc
    # Line 1313
    lw	$a2,0($a7)
.L0dac8d70:
    b	.L0dac4aa4
    nop
.L0dac8d78:
    # Line 1390
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dac8db8
    move	$a2,$a1
.L0dac8d8c:
    # Line 1391
    lbu	$a3,0($a7)
    sb	$a3,0($a5)
    lbu	$v1,0($a7)
    # Line 1390
    addiu	$t0,$t0,1
    # Line 1391
    addiu	$a7,$a7,4
    sb	$v1,1($a5)
    addiu	$a5,$a5,3
    lbu	$v0,-4($a7)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dac8d8c
    sb	$v0,-1($a5)
.L0dac8db8:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a6,$a2,0x2
    beqz	$a6,.L0dac8e48
    move	$t1,$a7
    move	$a0,$t3
    move	$a4,$t2
    move	$a2,$t1
.L0dac8dd8:
    lbu	$a6,0($a2)
    sb	$a6,0($a4)
    lbu	$a3,0($a2)
    sb	$a3,1($a4)
    lbu	$v1,0($a2)
    sb	$v1,2($a4)
    lbu	$v0,4($a2)
    sb	$v0,3($a4)
    lbu	$a6,4($a2)
    sb	$a6,4($a4)
    lbu	$a3,4($a2)
    sb	$a3,5($a4)
    lbu	$v1,8($a2)
    sb	$v1,6($a4)
    lbu	$v0,8($a2)
    sb	$v0,7($a4)
    lbu	$a6,8($a2)
    sb	$a6,8($a4)
    lbu	$a3,12($a2)
    sb	$a3,9($a4)
    lbu	$v1,12($a2)
    addiu	$a2,$a2,16
    sb	$v1,10($a4)
    addiu	$a4,$a4,12
    lbu	$v0,-4($a2)
    # Line 1390
    addiu	$a0,$a0,4
    bne	$a1,$a0,.L0dac8dd8
    # Line 1391
    sb	$v0,-1($a4)
.L0dac8e48:
    b	.L0dac4aa4
    nop
.L0dac8e50:
    # Line 1455
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$v0,$a1,0x1
    beqz	$v0,.L0dac8e94
    move	$a0,$a1
    # Line 1456
    lhu	$a6,0($a7)
    sra	$a6,$a6,0x8
    sb	$a6,0($a5)
    lhu	$a3,0($a7)
    sra	$a3,$a3,0x8
    sb	$a3,1($a5)
    # Line 1455
    addiu	$t0,$t0,1
    # Line 1456
    lhu	$v1,0($a7)
    addiu	$a7,$a7,8
    addiu	$a5,$a5,3
    sra	$v1,$v1,0x8
    sb	$v1,-1($a5)
.L0dac8e94:
    move	$t3,$t0
    move	$t2,$a5
    sra	$v0,$a0,0x1
    beqz	$v0,.L0dac8f0c
    move	$t1,$a7
    move	$a0,$t3
    move	$a2,$t2
    move	$a4,$t1
.L0dac8eb4:
    lhu	$a3,0($a4)
    sra	$a3,$a3,0x8
    sb	$a3,0($a2)
    lhu	$v1,0($a4)
    sra	$v1,$v1,0x8
    sb	$v1,1($a2)
    lhu	$v0,0($a4)
    sra	$v0,$v0,0x8
    sb	$v0,2($a2)
    lhu	$a6,8($a4)
    sra	$a6,$a6,0x8
    sb	$a6,3($a2)
    lhu	$a3,8($a4)
    sra	$a3,$a3,0x8
    sb	$a3,4($a2)
    addiu	$a4,$a4,16
    lhu	$v1,-8($a4)
    addiu	$a2,$a2,6
    # Line 1455
    addiu	$a0,$a0,2
    # Line 1456
    sra	$v1,$v1,0x8
    # Line 1455
    bne	$a1,$a0,.L0dac8eb4
    # Line 1456
    sb	$v1,-1($a2)
.L0dac8f0c:
    b	.L0dac4aa4
    nop
.L0dac8f14:
    # Line 1520
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    andi	$a6,$a1,0x1
    beqz	$a6,.L0dac8f58
    move	$a0,$a1
    # Line 1521
    lw	$a3,0($a7)
    srl	$a3,$a3,0x18
    sb	$a3,0($a5)
    lw	$v1,0($a7)
    srl	$v1,$v1,0x18
    sb	$v1,1($a5)
    # Line 1520
    addiu	$t0,$t0,1
    # Line 1521
    lw	$v0,0($a7)
    addiu	$a7,$a7,16
    addiu	$a5,$a5,3
    srl	$v0,$v0,0x18
    sb	$v0,-1($a5)
.L0dac8f58:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a6,$a0,0x1
    beqz	$a6,.L0dac8fd0
    move	$t1,$a7
    move	$a0,$t3
    move	$a2,$t2
    move	$a4,$t1
.L0dac8f78:
    lw	$v1,0($a4)
    srl	$v1,$v1,0x18
    sb	$v1,0($a2)
    lw	$v0,0($a4)
    srl	$v0,$v0,0x18
    sb	$v0,1($a2)
    lw	$a6,0($a4)
    srl	$a6,$a6,0x18
    sb	$a6,2($a2)
    lw	$a3,16($a4)
    srl	$a3,$a3,0x18
    sb	$a3,3($a2)
    lw	$v1,16($a4)
    srl	$v1,$v1,0x18
    sb	$v1,4($a2)
    addiu	$a4,$a4,32
    lw	$v0,-16($a4)
    addiu	$a2,$a2,6
    # Line 1520
    addiu	$a0,$a0,2
    # Line 1521
    srl	$v0,$v0,0x18
    # Line 1520
    bne	$a1,$a0,.L0dac8f78
    # Line 1521
    sb	$v0,-1($a2)
.L0dac8fd0:
    b	.L0dac4aa4
    nop
.L0dac8fd8:
    # Line 1585
    blez	$a1,.L0dac4aa4
    move	$t0,$zero
    move	$a0,$a1
    andi	$a3,$a1,0x1
    beqz	$a3,.L0dac904c
    ldc1	$f4,_lit8_406fffff2e48e8a7
    # Line 1586
    lwc1	$f3,0($a7)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$v1,$f3
    nop
    sb	$v1,0($a5)
    lwc1	$f2,0($a7)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v0,$f2
    nop
    sb	$v0,1($a5)
    lwc1	$f1,0($a7)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    # Line 1585
    addiu	$t0,$t0,1
    # Line 1586
    mfc1	$a6,$f1
    addiu	$a7,$a7,16
    addiu	$a5,$a5,3
    sb	$a6,-1($a5)
.L0dac904c:
    move	$t3,$t0
    move	$t2,$a5
    sra	$a3,$a0,0x1
    beqz	$a3,.L0dac9120
    move	$t1,$a7
    move	$a4,$t3
    move	$a0,$t2
    move	$a2,$t1
.L0dac906c:
    lwc1	$f1,0($a2)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    nop
    sb	$v0,0($a0)
    lwc1	$f0,0($a2)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    mfc1	$a6,$f0
    nop
    sb	$a6,1($a0)
    lwc1	$f3,0($a2)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a3,$f3
    nop
    sb	$a3,2($a0)
    lwc1	$f2,16($a2)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    mfc1	$v1,$f2
    nop
    sb	$v1,3($a0)
    lwc1	$f1,16($a2)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    nop
    sb	$v0,4($a0)
    lwc1	$f0,16($a2)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    addiu	$a2,$a2,32
    addiu	$a0,$a0,6
    mfc1	$a6,$f0
    # Line 1585
    addiu	$a4,$a4,2
    bne	$a1,$a4,.L0dac906c
    # Line 1586
    sb	$a6,-1($a0)
.L0dac9120:
    b	.L0dac4aa4
    nop
.L0dac9128:
    # Line 1141
    li	$a2,255
.L0dac912c:
    and	$a0,$a2,$a0
    sb	$a0,0($a5)
    lbu	$a0,0($a7)
    andi	$v1,$a0,0x80
    beqz	$v1,.L0dac91d4
    # Line 1142
    move	$a2,$zero
.L0dac9144:
    and	$a6,$a2,$a0
    sb	$a6,1($a5)
    # Line 1143
    lbu	$a0,0($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac91dc
    move	$a2,$zero
.L0dac915c:
    and	$v1,$a2,$a0
    sb	$v1,2($a5)
    # Line 1140
    lbu	$a0,4($a7)
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac91e4
    # Line 1141
    move	$a2,$zero
.L0dac9174:
    and	$a6,$a2,$a0
    sb	$a6,3($a5)
    lbu	$a0,4($a7)
    andi	$a3,$a0,0x80
    beqz	$a3,.L0dac91ec
    # Line 1142
    move	$a2,$zero
.L0dac918c:
    and	$v1,$a2,$a0
    sb	$v1,4($a5)
    # Line 1143
    lbu	$a0,4($a7)
    # Line 1144
    addiu	$a7,$a7,8
    # Line 1143
    move	$a2,$zero
    andi	$v0,$a0,0x80
    beqz	$v0,.L0dac91f4
    addiu	$a5,$a5,6
.L0dac91ac:
    and	$a3,$a2,$a0
    # Line 1140
    beq	$a1,$t0,.L0dac8c5c
    # Line 1143
    sb	$a3,-1($a5)
    # Line 1140
    lbu	$a0,0($a7)
.L0dac91bc:
    # Line 1141
    move	$a2,$zero
    # Line 1140
    andi	$a6,$a0,0x80
    beqz	$a6,.L0dac9128
    addiu	$t0,$t0,2
    b	.L0dac912c
    nop
.L0dac91d4:
    b	.L0dac9144
    # Line 1142
    li	$a2,255
.L0dac91dc:
    b	.L0dac915c
    # Line 1143
    li	$a2,255
.L0dac91e4:
    b	.L0dac9174
    # Line 1141
    li	$a2,255
.L0dac91ec:
    b	.L0dac918c
    # Line 1142
    li	$a2,255
.L0dac91f4:
    b	.L0dac91ac
    # Line 1143
    li	$a2,255
.L0dac91fc:
    # Line 1229
    li	$a2,255
.L0dac9200:
    and	$v1,$v1,$a2
    sb	$v1,2($a5)
    # Line 1226
    lhu	$a0,8($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac92d0
    # Line 1227
    sra	$a6,$a0,0x7
    move	$a2,$zero
.L0dac921c:
    and	$a6,$a6,$a2
    sb	$a6,3($a5)
    lhu	$a0,8($a7)
    # Line 1228
    move	$a2,$zero
    # Line 1227
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac92d8
    # Line 1228
    sra	$v1,$a0,0x7
.L0dac9238:
    # Line 1226
    addiu	$t0,$t0,2
    # Line 1228
    and	$v1,$v1,$a2
    sb	$v1,4($a5)
    # Line 1230
    addiu	$a7,$a7,16
    # Line 1229
    lhu	$a0,-8($a7)
    addiu	$a5,$a5,6
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac92e0
    sra	$a3,$a0,0x7
    move	$a2,$zero
.L0dac9260:
    and	$a3,$a3,$a2
    # Line 1226
    beq	$a1,$t0,.L0dac8ce4
    # Line 1229
    sb	$a3,-1($a5)
    # Line 1226
    lhu	$a0,0($a7)
.L0dac9270:
    # Line 1227
    move	$a2,$zero
    # Line 1226
    andi	$a6,$a0,0x8000
    beqz	$a6,.L0dac92c0
    # Line 1227
    sra	$v1,$a0,0x7
.L0dac9280:
    and	$v1,$v1,$a2
    sb	$v1,0($a5)
    lhu	$a0,0($a7)
    andi	$v0,$a0,0x8000
    beqz	$v0,.L0dac92c8
    # Line 1228
    sra	$a6,$a0,0x7
    move	$a2,$zero
.L0dac929c:
    and	$a6,$a6,$a2
    sb	$a6,1($a5)
    # Line 1229
    lhu	$a0,0($a7)
    andi	$a3,$a0,0x8000
    beqz	$a3,.L0dac91fc
    sra	$v1,$a0,0x7
    move	$a2,$zero
    b	.L0dac9200
    nop
.L0dac92c0:
    b	.L0dac9280
    # Line 1227
    li	$a2,255
.L0dac92c8:
    b	.L0dac929c
    # Line 1228
    li	$a2,255
.L0dac92d0:
    b	.L0dac921c
    # Line 1227
    li	$a2,255
.L0dac92d8:
    b	.L0dac9238
    # Line 1228
    li	$a2,255
.L0dac92e0:
    b	.L0dac9260
    # Line 1229
    li	$a2,255
.L0dac92e8:
    # Line 1316
    li	$a4,255
.L0dac92ec:
    and	$v0,$v0,$a4
    # Line 1313
    beq	$a1,$t0,.L0dac8d70
    # Line 1316
    sb	$v0,-1($a5)
    # Line 1313
    lw	$a2,0($a7)
.L0dac92fc:
    # Line 1314
    move	$a4,$zero
    # Line 1313
    and	$v1,$a0,$a2
    beqz	$v1,.L0dac93ac
    # Line 1314
    srl	$a6,$a2,0x17
.L0dac930c:
    and	$a6,$a6,$a4
    sb	$a6,0($a5)
    lw	$a2,0($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac93b4
    # Line 1315
    srl	$v1,$a2,0x17
    move	$a4,$zero
.L0dac9328:
    and	$v1,$v1,$a4
    sb	$v1,1($a5)
    # Line 1316
    lw	$a2,0($a7)
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac93bc
    srl	$a6,$a2,0x17
    move	$a4,$zero
.L0dac9344:
    and	$a6,$a6,$a4
    sb	$a6,2($a5)
    # Line 1313
    lw	$a2,16($a7)
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac93c4
    # Line 1314
    srl	$v1,$a2,0x17
    move	$a4,$zero
.L0dac9360:
    and	$v1,$v1,$a4
    sb	$v1,3($a5)
    lw	$a2,16($a7)
    # Line 1315
    move	$a4,$zero
    # Line 1314
    and	$v0,$a0,$a2
    beqz	$v0,.L0dac93cc
    # Line 1315
    srl	$a6,$a2,0x17
.L0dac937c:
    # Line 1313
    addiu	$t0,$t0,2
    # Line 1315
    and	$a6,$a6,$a4
    sb	$a6,4($a5)
    # Line 1317
    addiu	$a7,$a7,32
    # Line 1316
    lw	$a2,-16($a7)
    addiu	$a5,$a5,6
    and	$a3,$a0,$a2
    beqz	$a3,.L0dac92e8
    srl	$v0,$a2,0x17
    move	$a4,$zero
    b	.L0dac92ec
    nop
.L0dac93ac:
    b	.L0dac930c
    # Line 1314
    li	$a4,255
.L0dac93b4:
    b	.L0dac9328
    # Line 1315
    li	$a4,255
.L0dac93bc:
    b	.L0dac9344
    # Line 1316
    li	$a4,255
.L0dac93c4:
    b	.L0dac9360
    # Line 1314
    li	$a4,255
.L0dac93cc:
    b	.L0dac937c
    # Line 1315
    li	$a4,255
.L0dac93d4:
    b	.L0dac6b2c
    # Line 1167
    li	$a2,255
.L0dac93dc:
    b	.L0dac6b44
    # Line 1168
    li	$a0,255
.L0dac93e4:
    b	.L0dac6b60
    # Line 1169
    li	$a2,255
.L0dac93ec:
    b	.L0dac6bb8
    # Line 1253
    li	$a2,255
.L0dac93f4:
    b	.L0dac6bd4
    # Line 1254
    li	$a0,255
.L0dac93fc:
    b	.L0dac6bf4
    # Line 1255
    li	$a2,255
.L0dac9404:
    b	.L0dac48ac
    # Line 1340
    li	$a4,255
.L0dac940c:
    b	.L0dac48c8
    # Line 1341
    li	$a2,255
.L0dac9414:
    b	.L0dac48e8
    # Line 1342
    li	$a4,255
.L0dac941c:
    b	.L0dac5d10
    # Line 1117
    li	$a4,255
.L0dac9424:
    b	.L0dac5d30
    # Line 1119
    li	$a4,255
.L0dac942c:
    b	.L0dac5e20
    # Line 1203
    li	$a4,255
.L0dac9434:
    b	.L0dac5e44
    # Line 1205
    li	$a4,255
.L0dac943c:
    b	.L0dac5ea0
    # Line 1290
    li	$t1,255
.L0dac9444:
    b	.L0dac5ec4
    # Line 1292
    li	$t1,255
.L0dac944c:
    b	.L0dac5c88
    # Line 1148
    li	$a4,255
.L0dac9454:
    b	.L0dac5ca0
    # Line 1149
    li	$a0,255
.L0dac945c:
    b	.L0dac5cbc
    # Line 1150
    li	$a2,255
.L0dac9464:
    b	.L0dac5d8c
    # Line 1234
    li	$a4,255
.L0dac946c:
    b	.L0dac5da8
    # Line 1235
    li	$a0,255
.L0dac9474:
    b	.L0dac5dc8
    # Line 1236
    li	$a2,255
.L0dac947c:
    b	.L0dac4f88
    # Line 1321
    li	$t1,255
.L0dac9484:
    b	.L0dac4fa4
    # Line 1322
    li	$a2,255
.L0dac948c:
    b	.L0dac4fc4
    # Line 1323
    li	$a4,255
.L0dac9494:
    b	.L0dac765c
    # Line 1125
    li	$a2,255
.L0dac949c:
    b	.L0dac76d8
    # Line 1211
    li	$a2,255
.L0dac94a4:
    b	.L0dac7764
    # Line 1298
    li	$a4,255
.L0dac94ac:
    b	.L0dac7674
    # Line 1126
    li	$a2,255
.L0dac94b4:
    b	.L0dac7690
    # Line 1127
    li	$a2,255
.L0dac94bc:
    b	.L0dac76f4
    # Line 1212
    li	$a2,255
.L0dac94c4:
    b	.L0dac7714
    # Line 1213
    li	$a2,255
.L0dac94cc:
    b	.L0dac7780
    # Line 1299
    li	$a4,255
.L0dac94d4:
    b	.L0dac77a0
    # Line 1300
    li	$a4,255
.L0dac94dc:
    b	.L0dac7e48
    # Line 1098
    li	$a2,255
.L0dac94e4:
    b	.L0dac7e9c
    # Line 1184
    li	$a2,255
.L0dac94ec:
    b	.L0dac7ef8
    # Line 1271
    li	$a4,255
.L0dac94f4:
    b	.L0dac83cc
    # Line 1159
    li	$a2,255
.L0dac94fc:
    b	.L0dac844c
    # Line 1245
    li	$a2,255
.L0dac9504:
    b	.L0dac84dc
    # Line 1332
    li	$a4,255
.L0dac950c:
    b	.L0dac83e4
    # Line 1160
    li	$a2,255
.L0dac9514:
    b	.L0dac8400
    # Line 1161
    li	$a2,255
.L0dac951c:
    b	.L0dac8468
    # Line 1246
    li	$a2,255
.L0dac9524:
    b	.L0dac8488
    # Line 1247
    li	$a2,255
.L0dac952c:
    b	.L0dac84f8
    # Line 1333
    li	$a4,255
.L0dac9534:
    b	.L0dac8518
    # Line 1334
    li	$a4,255
.L0dac953c:
    b	.L0dac8c0c
    # Line 1141
    li	$a2,255
.L0dac9544:
    b	.L0dac8c24
    # Line 1142
    li	$a2,255
.L0dac954c:
    b	.L0dac8c40
    # Line 1143
    li	$a2,255
.L0dac9554:
    b	.L0dac8c88
    # Line 1227
    li	$a2,255
.L0dac955c:
    b	.L0dac8ca4
    # Line 1228
    li	$a2,255
.L0dac9564:
    b	.L0dac8cc4
    # Line 1229
    li	$a2,255
.L0dac956c:
    b	.L0dac8d14
    # Line 1314
    li	$a4,255
.L0dac9574:
    b	.L0dac8d30
    # Line 1315
    li	$a4,255
.L0dac957c:
    b	.L0dac8d50
    # Line 1316
    li	$a4,255
.end image1D_to_texturecolortable

.late_rodata
jtbl_0dbee480:
    .word .L0dac2da0
    .word .L0dac2dd0
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d88
    .word .L0dac2d94
    .word .L0dac2dac
    .word .L0dac2db8
    .word .L0dac2dc4
    .word .L0dac2ddc
    .word .L0dac2d8c
jtbl_0dbee568:
    .word .L0dac4120
    .word .L0dac4170
    .word .L0dac4198
    .word .L0dac4148
    .word .L0dac41bc
    .word .L0dac4204
    .word .L0dac424c
    .word .L0dac4294
    .word .L0dac42d8
    .word .L0dac431c
jtbl_0dbee590:
    .word .L0dac4540
    .word .L0dac4540
    .word .L0dac4624
    .word .L0dac4624
    .word .L0dac4624
    .word .L0dac4624
    .word .L0dac4624
    .word .L0dac4624
    .word .L0dac4624
    .word .L0dac4624
jtbl_0dbee5b8:
    .word .L0dac4714
    .word .L0dac4910
    .word .L0dac47a8
    .word .L0dac4aac
    .word .L0dac4848
    .word .L0dac4ba4
    .word .L0dac4c9c

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fffff2e48e8a7:
    .word 0x406fffff, 0x2e48e8a7
_lit_3f800000:
    .word 0x3f800000

