# Source: ../MGRAS/mgras_lighting.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_lighting.c
# Total Functions: 16

.text

# Function: __glMgrEnableLighting
# Declared: Line 28 (Source lines: 29-35)
# Address: 0x0da72264 - 0x0da72288 (Size: 36 bytes, Frame: 0)
.globl __glMgrEnableLighting
.ent __glMgrEnableLighting
__glMgrEnableLighting:
    # Line 29
    lw	$at,1696($a0)
    # Line 33
    lui	$v1,0x7
    # Line 29
    andi	$at,$at,0x40
    beqz	$at,.L0da72280
    # Line 33
    li	$v0,3328
    ori	$v1,$v1,0x4080
    sw	$v0,0($v1)
.L0da72280:
    # Line 35
    jr	$ra
    nop
.end __glMgrEnableLighting

# Function: __glMgrDisableLighting
# Declared: Line 39 (Source lines: 43-44)
# Address: 0x0da72288 - 0x0da7229c (Size: 20 bytes, Frame: 0)
.globl __glMgrDisableLighting
.ent __glMgrDisableLighting
__glMgrDisableLighting:
    # Line 43
    li	$at,3584
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 44
    jr	$ra
    # Line 43
    sw	$at,0($v0)
.end __glMgrDisableLighting

# Function: __glMgrClampColor
# Declared: Line 53 (Source lines: 54-91)
# Address: 0x0da7229c - 0x0da7237c (Size: 224 bytes, Frame: 0)
.globl __glMgrClampColor
.ent __glMgrClampColor
__glMgrClampColor:
    # Line 55
    lwc1	$f4,3284($a0)
    # Line 60
    lwc1	$f12,412($a0)
    # Line 62
    lwc1	$f10,420($a0)
    # Line 59
    lwc1	$f13,408($a0)
    # Line 54
    lui	$v0,0x19
    addiu	$v0,$v0,-15364
    addu	$at,$t9,$v0
    # Line 62
    mtc1	$zero,$f5
    # Line 61
    lwc1	$f11,416($a0)
    # Line 62
    mov.s	$f6,$f10
    c.lt.s	$f13,$f5
    # Line 59
    mov.s	$f9,$f13
    # Line 61
    mov.s	$f8,$f11
    # Line 62
    bc1f	.L0da722e0
    # Line 60
    mov.s	$f7,$f12
    # Line 65
    b	.L0da722f4
    swc1	$f5,168($a0)
.L0da722e0:
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0da722f4
    # Line 69
    swc1	$f13,168($a0)
    # Line 67
    swc1	$f4,168($a0)
.L0da722f4:
    # Line 69
    c.lt.s	$f7,$f5
    nop
    bc1fl	.L0da7230c
    # Line 72
    c.lt.s	$f4,$f7
    b	.L0da7231c
    swc1	$f5,172($a0)
.L0da7230c:
    nop
    bc1fl	.L0da7231c
    # Line 76
    swc1	$f12,172($a0)
    # Line 74
    swc1	$f4,172($a0)
.L0da7231c:
    # Line 76
    c.lt.s	$f8,$f5
    nop
    bc1fl	.L0da72334
    # Line 79
    c.lt.s	$f4,$f8
    b	.L0da72344
    swc1	$f5,176($a0)
.L0da72334:
    nop
    bc1fl	.L0da72344
    # Line 83
    swc1	$f11,176($a0)
    # Line 81
    swc1	$f4,176($a0)
.L0da72344:
    # Line 83
    c.lt.s	$f6,$f5
    nop
    bc1t	.L0da72374
    nop
    # Line 86
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0da7236c
    # Line 90
    swc1	$f10,180($a0)
    # Line 91
    jr	$ra
    # Line 88
    swc1	$f4,180($a0)
.L0da7236c:
    # Line 91
    jr	$ra
    nop
.L0da72374:
    jr	$ra
    # Line 86
    swc1	$f5,180($a0)
.end __glMgrClampColor

# Function: __glMgrim_FrontFace
# Declared: Line 107 (Source lines: 107-117)
# Address: 0x0da7237c - 0x0da7240c (Size: 144 bytes, Frame: 32)
.globl __glMgrim_FrontFace
.ent __glMgrim_FrontFace
__glMgrim_FrontFace:
    # Line 107
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x19
    addiu	$v1,$v1,-15588
    beq	$at,$v0,.L0da723ec
    addu	$gp,$t9,$v1
    # Line 109
    li	$a1,2304
    beq	$a0,$a1,.L0da723cc
    li	$at,2305
    beq	$a0,$at,.L0da723cc
    # Line 113
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 114
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da723cc:
    ld	$gp,0($sp)
    # Line 117
    addiu	$sp,$sp,32
    # Line 116
    li	$v1,22020
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    # Line 117
    jr	$ra
    # Line 116
    sw	$a0,0($v0)
.L0da723ec:
    # Line 109
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_FrontFace

# Function: __glMgrim_Lightf
# Declared: Line 131 (Source lines: 131-167)
# Address: 0x0da7240c - 0x0da7253c (Size: 304 bytes, Frame: 48)
.globl __glMgrim_Lightf
.ent __glMgrim_Lightf
__glMgrim_Lightf:
    # Line 131
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x19
    addiu	$v1,$v1,-15732
    beq	$at,$v0,.L0da7251c
    addu	$gp,$t9,$v1
    # Line 135
    sltiu	$a2,$a0,16384
    bnez	$a2,.L0da72484
    sltiu	$at,$a0,16392
    beqz	$at,.L0da72484
    # Line 140
    li	$v0,4613
    beq	$a1,$v0,.L0da724cc
    li	$v1,4614
    beq	$a1,$v1,.L0da724e0
    li	$a2,4615
    beq	$a1,$a2,.L0da724f4
    li	$at,4616
    beq	$a1,$at,.L0da72508
    li	$v0,4617
    beq	$a1,$v0,.L0da724a4
    # Line 162
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 163
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da72484:
    # Line 136
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 137
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da724a4:
    # Line 154
    li	$v1,21768
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$v1,0($a1)
.L0da724b4:
    ld	$gp,0($sp)
    # Line 167
    addiu	$sp,$sp,48
    # Line 165
    addiu	$a2,$a0,-16384
    sw	$a2,0($a1)
    # Line 167
    jr	$ra
    # Line 166
    swc1	$f14,0($a1)
.L0da724cc:
    # Line 142
    li	$at,20744
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 143
    b	.L0da724b4
    # Line 142
    sw	$at,0($a1)
.L0da724e0:
    # Line 145
    li	$a2,21000
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 146
    b	.L0da724b4
    # Line 145
    sw	$a2,0($a1)
.L0da724f4:
    # Line 148
    li	$a2,21256
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 149
    b	.L0da724b4
    # Line 148
    sw	$a2,0($a1)
.L0da72508:
    # Line 151
    li	$a2,21512
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 152
    b	.L0da724b4
    # Line 151
    sw	$a2,0($a1)
.L0da7251c:
    # Line 133
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Lightf

# Function: __glMgrim_Lightfv
# Declared: Line 179 (Source lines: 179-257)
# Address: 0x0da7253c - 0x0da727d0 (Size: 660 bytes, Frame: 48)
.globl __glMgrim_Lightfv
.ent __glMgrim_Lightfv
__glMgrim_Lightfv:
    # Line 179
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x19
    addiu	$v1,$v1,-16036
    beq	$at,$v0,.L0da727b0
    addu	$gp,$t9,$v1
    # Line 183
    sltiu	$a3,$a0,16384
    bnez	$a3,.L0da7259c
    sltiu	$at,$a0,16392
    beqz	$at,.L0da7259c
    # Line 185
    addiu	$a4,$a1,-4608
    la	$at,sub_0dbf0000
    sltiu	$v0,$a4,10
    sll	$a4,$a4,0x2
    addiu	$at,$at,-12288
    beqz	$v0,.L0da725bc
    addu	$a4,$a4,$at
    # Line 250
    addiu	$a3,$a0,-16384
    # Line 185
    lw	$at,%lo(jtbl_0dbed000)($a4)
    # Line 245
    addiu	$v1,$a0,-16384
    # Line 185
    jr	$at
    ld	$gp,0($sp)
.L0da7259c:
    # Line 184
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 185
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da725bc:
    # Line 254
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 255
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da725dc:
    # Line 190
    lui	$v0,0x7
    # Line 191
    addiu	$v1,$a0,-16384
    # Line 192
    lwc1	$f3,0($a2)
    # Line 190
    ori	$v0,$v0,0x4080
    li	$a3,4628
    sw	$a3,0($v0)
    # Line 191
    sw	$v1,0($v0)
    # Line 192
    swc1	$f3,0($v0)
    # Line 193
    lwc1	$f2,4($a2)
    swc1	$f2,0($v0)
    # Line 194
    lwc1	$f1,8($a2)
    swc1	$f1,0($v0)
    # Line 195
    lwc1	$f0,12($a2)
    # Line 196
    b	.L0da72638
    # Line 195
    swc1	$f0,0($v0)
.L0da72618:
    # Line 240
    addiu	$a3,$a0,-16384
    # Line 241
    lwc1	$f0,0($a2)
    # Line 239
    li	$at,21256
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$at,0($v1)
    # Line 240
    sw	$a3,0($v1)
    # Line 241
    swc1	$f0,0($v1)
.L0da72638:
    # Line 257
    jr	$ra
    addiu	$sp,$sp,48
.L0da72640:
    # Line 198
    li	$v0,4884
    # Line 199
    addiu	$at,$a0,-16384
    # Line 200
    lwc1	$f0,0($a2)
    # Line 198
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    sw	$v0,0($a3)
    # Line 199
    sw	$at,0($a3)
    # Line 200
    swc1	$f0,0($a3)
    # Line 201
    lwc1	$f3,4($a2)
    swc1	$f3,0($a3)
    # Line 202
    lwc1	$f2,8($a2)
    swc1	$f2,0($a3)
    # Line 203
    lwc1	$f1,12($a2)
    # Line 204
    b	.L0da72638
    # Line 203
    swc1	$f1,0($a3)
.L0da7267c:
    # Line 207
    addiu	$v0,$a0,-16384
    # Line 208
    lwc1	$f0,0($a2)
    # Line 206
    li	$v1,5140
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v1,0($at)
    # Line 207
    sw	$v0,0($at)
    # Line 208
    swc1	$f0,0($at)
    # Line 209
    lwc1	$f3,4($a2)
    swc1	$f3,0($at)
    # Line 210
    lwc1	$f2,8($a2)
    swc1	$f2,0($at)
    # Line 211
    lwc1	$f1,12($a2)
    # Line 212
    b	.L0da72638
    # Line 211
    swc1	$f1,0($at)
.L0da726b8:
    # Line 214
    lui	$v0,0x7
    # Line 215
    addiu	$v1,$a0,-16384
    # Line 216
    lwc1	$f0,0($a2)
    # Line 214
    ori	$v0,$v0,0x4080
    li	$a3,20244
    sw	$a3,0($v0)
    # Line 215
    sw	$v1,0($v0)
    # Line 216
    swc1	$f0,0($v0)
    # Line 217
    lwc1	$f3,4($a2)
    swc1	$f3,0($v0)
    # Line 218
    lwc1	$f2,8($a2)
    swc1	$f2,0($v0)
    # Line 219
    lwc1	$f1,12($a2)
    # Line 220
    b	.L0da72638
    # Line 219
    swc1	$f1,0($v0)
.L0da726f4:
    # Line 223
    addiu	$a3,$a0,-16384
    # Line 224
    lwc1	$f3,0($a2)
    # Line 222
    li	$at,20496
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$at,0($v1)
    # Line 223
    sw	$a3,0($v1)
    # Line 224
    swc1	$f3,0($v1)
    # Line 225
    lwc1	$f2,4($a2)
    swc1	$f2,0($v1)
    # Line 226
    lwc1	$f1,8($a2)
    # Line 227
    b	.L0da72638
    # Line 226
    swc1	$f1,0($v1)
.L0da72728:
    # Line 229
    li	$v0,20744
    # Line 230
    addiu	$at,$a0,-16384
    # Line 231
    lwc1	$f0,0($a2)
    # Line 229
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    sw	$v0,0($a3)
    # Line 230
    sw	$at,0($a3)
    # Line 232
    b	.L0da72638
    # Line 231
    swc1	$f0,0($a3)
.L0da7274c:
    # Line 235
    addiu	$v0,$a0,-16384
    # Line 236
    lwc1	$f1,0($a2)
    # Line 234
    li	$v1,21000
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v1,0($at)
    # Line 235
    sw	$v0,0($at)
    # Line 237
    b	.L0da72638
    # Line 236
    swc1	$f1,0($at)
.L0da72770:
    # Line 244
    lui	$v0,0x7
    # Line 246
    lwc1	$f2,0($a2)
    # Line 244
    ori	$v0,$v0,0x4080
    li	$a3,21512
    sw	$a3,0($v0)
    # Line 245
    sw	$v1,0($v0)
    # Line 247
    b	.L0da72638
    # Line 246
    swc1	$f2,0($v0)
.L0da72790:
    # Line 249
    lui	$v1,0x7
    # Line 251
    lwc1	$f3,0($a2)
    # Line 249
    ori	$v1,$v1,0x4080
    li	$at,21768
    sw	$at,0($v1)
    # Line 250
    sw	$a3,0($v1)
    # Line 252
    b	.L0da72638
    # Line 251
    swc1	$f3,0($v1)
.L0da727b0:
    # Line 181
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Lightfv

# Function: __glMgrim_Lighti
# Declared: Line 269 (Source lines: 269-305)
# Address: 0x0da727d0 - 0x0da7290c (Size: 316 bytes, Frame: 48)
.globl __glMgrim_Lighti
.ent __glMgrim_Lighti
__glMgrim_Lighti:
    # Line 269
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x19
    addiu	$v1,$v1,-16696
    beq	$at,$v0,.L0da728ec
    addu	$gp,$t9,$v1
    # Line 273
    sltiu	$a3,$a0,16384
    bnez	$a3,.L0da72848
    sltiu	$at,$a0,16392
    beqz	$at,.L0da72848
    # Line 278
    li	$v0,4613
    beq	$a1,$v0,.L0da7289c
    li	$v1,4614
    beq	$a1,$v1,.L0da728b0
    li	$a3,4615
    beq	$a1,$a3,.L0da728c4
    li	$at,4616
    beq	$a1,$at,.L0da728d8
    li	$v0,4617
    beq	$a1,$v0,.L0da72868
    # Line 300
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 301
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da72848:
    # Line 274
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 275
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da72868:
    # Line 292
    li	$v1,21768
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$v1,0($a1)
.L0da72878:
    # Line 304
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$gp,0($sp)
    # Line 305
    addiu	$sp,$sp,48
    # Line 303
    addiu	$a3,$a0,-16384
    sw	$a3,0($a1)
    # Line 305
    jr	$ra
    # Line 304
    swc1	$f0,0($a1)
.L0da7289c:
    # Line 280
    li	$at,20744
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 281
    b	.L0da72878
    # Line 280
    sw	$at,0($a1)
.L0da728b0:
    # Line 283
    li	$a3,21000
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 284
    b	.L0da72878
    # Line 283
    sw	$a3,0($a1)
.L0da728c4:
    # Line 286
    li	$a3,21256
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 287
    b	.L0da72878
    # Line 286
    sw	$a3,0($a1)
.L0da728d8:
    # Line 289
    li	$a3,21512
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 290
    b	.L0da72878
    # Line 289
    sw	$a3,0($a1)
.L0da728ec:
    # Line 271
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Lighti

# Function: __glMgrim_Lightiv
# Declared: Line 318 (Source lines: 318-396)
# Address: 0x0da7290c - 0x0da72d64 (Size: 1112 bytes, Frame: 48)
.globl __glMgrim_Lightiv
.ent __glMgrim_Lightiv
__glMgrim_Lightiv:
    # Line 320
    lw	$a5,__glCurrentContext
    li	$v0,1
    # Line 318
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 320
    lw	$at,__glBeginMode
    # Line 318
    lui	$v1,0x19
    addiu	$v1,$v1,-17012
    # Line 320
    beq	$at,$v0,.L0da72d44
    # Line 318
    addu	$gp,$t9,$v1
    # Line 322
    sltiu	$a3,$a0,16384
    bnez	$a3,.L0da72978
    sltiu	$at,$a0,16392
    beqz	$at,.L0da72978
    # Line 324
    addiu	$a4,$a1,-4608
    la	$at,sub_0dbf0000
    sltiu	$v0,$a4,10
    sll	$a4,$a4,0x2
    addiu	$at,$at,-12248
    beqz	$v0,.L0da72998
    addu	$a4,$a4,$at
    # Line 388
    lui	$a3,0x7
    # Line 362
    addiu	$v1,$a0,-16384
    # Line 324
    lw	$at,%lo(jtbl_0dbed028)($a4)
    # Line 347
    lwc1	$f1,_lit_3f800000
    # Line 331
    lwc1	$f2,_lit_3f800000
    # Line 324
    jr	$at
    # Line 388
    li	$v0,21768
.L0da72978:
    # Line 323
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 324
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da72998:
    # Line 393
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 394
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da729b8:
    # Line 331
    lw	$v1,0($a2)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,_lit_40000000
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    lwc1	$f1,3308($a5)
    mul.s	$f0,$f0,$f1
    # Line 329
    li	$a3,4628
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$a3,0($v0)
    # Line 330
    addiu	$v1,$a0,-16384
    sw	$v1,0($v0)
    # Line 331
    swc1	$f0,0($v0)
    # Line 332
    lw	$at,4($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($v0)
    # Line 333
    lw	$a3,8($a2)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($v0)
    # Line 334
    lw	$v1,12($a2)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    # Line 335
    b	.L0da72a84
    # Line 334
    swc1	$f0,0($v0)
.L0da72a5c:
    # Line 380
    lw	$at,0($a2)
    mtc1	$at,$f1
    # Line 378
    li	$v0,21256
    # Line 380
    cvt.s.w	$f1,$f1
    # Line 378
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    sw	$v0,0($a3)
    # Line 379
    addiu	$at,$a0,-16384
    sw	$at,0($a3)
    # Line 380
    swc1	$f1,0($a3)
.L0da72a84:
    ld	$gp,0($sp)
    # Line 396
    jr	$ra
    addiu	$sp,$sp,48
.L0da72a90:
    # Line 339
    lwc1	$f0,_lit_3f800000
    lw	$v1,0($a2)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,_lit_40000000
    mul.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f0
    lwc1	$f3,3308($a5)
    mul.s	$f2,$f2,$f3
    # Line 337
    li	$a3,4884
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$a3,0($v0)
    # Line 338
    addiu	$v1,$a0,-16384
    sw	$v1,0($v0)
    # Line 339
    swc1	$f2,0($v0)
    # Line 340
    lw	$at,4($a2)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f0
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($v0)
    # Line 341
    lw	$a3,8($a2)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f0
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($v0)
    # Line 342
    lw	$v1,12($a2)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    add.s	$f2,$f2,$f0
    mul.s	$f2,$f2,$f3
    # Line 343
    b	.L0da72a84
    # Line 342
    swc1	$f2,0($v0)
.L0da72b38:
    # Line 347
    lw	$at,0($a2)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,_lit_40000000
    mul.s	$f3,$f3,$f2
    add.s	$f3,$f3,$f1
    lwc1	$f0,3308($a5)
    mul.s	$f3,$f3,$f0
    # Line 345
    li	$v0,5140
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    sw	$v0,0($a3)
    # Line 346
    addiu	$at,$a0,-16384
    sw	$at,0($a3)
    # Line 347
    swc1	$f3,0($a3)
    # Line 348
    lw	$v1,4($a2)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f2
    add.s	$f3,$f3,$f1
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($a3)
    # Line 349
    lw	$v0,8($a2)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f2
    add.s	$f3,$f3,$f1
    mul.s	$f3,$f3,$f0
    swc1	$f3,0($a3)
    # Line 350
    lw	$at,12($a2)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f2
    add.s	$f3,$f3,$f1
    mul.s	$f3,$f3,$f0
    # Line 351
    b	.L0da72a84
    # Line 350
    swc1	$f3,0($a3)
.L0da72bdc:
    # Line 355
    lw	$v1,0($a2)
    mtc1	$v1,$f3
    # Line 353
    li	$a3,20244
    # Line 355
    cvt.s.w	$f3,$f3
    # Line 353
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$a3,0($v0)
    # Line 354
    addiu	$v1,$a0,-16384
    sw	$v1,0($v0)
    # Line 355
    swc1	$f3,0($v0)
    # Line 356
    lw	$at,4($a2)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($v0)
    # Line 357
    lw	$a3,8($a2)
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($v0)
    # Line 358
    lw	$v1,12($a2)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 359
    b	.L0da72a84
    # Line 358
    swc1	$f0,0($v0)
.L0da72c44:
    # Line 363
    lw	$at,0($a2)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 361
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    li	$at,20496
    sw	$at,0($a3)
    # Line 362
    sw	$v1,0($a3)
    # Line 363
    swc1	$f2,0($a3)
    # Line 364
    lw	$v0,4($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a3)
    # Line 365
    lw	$at,8($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 366
    b	.L0da72a84
    # Line 365
    swc1	$f0,0($a3)
.L0da72c98:
    # Line 370
    lw	$v1,0($a2)
    mtc1	$v1,$f3
    # Line 368
    li	$a3,20744
    lui	$v0,0x7
    # Line 370
    cvt.s.w	$f3,$f3
    # Line 368
    ori	$v0,$v0,0x4080
    sw	$a3,0($v0)
    # Line 369
    addiu	$v1,$a0,-16384
    sw	$v1,0($v0)
    # Line 371
    b	.L0da72a84
    # Line 370
    swc1	$f3,0($v0)
.L0da72cc4:
    # Line 375
    lw	$at,0($a2)
    mtc1	$at,$f0
    # Line 373
    li	$v0,21000
    lui	$a3,0x7
    # Line 375
    cvt.s.w	$f0,$f0
    # Line 373
    ori	$a3,$a3,0x4080
    sw	$v0,0($a3)
    # Line 374
    addiu	$at,$a0,-16384
    sw	$at,0($a3)
    # Line 376
    b	.L0da72a84
    # Line 375
    swc1	$f0,0($a3)
.L0da72cf0:
    # Line 385
    lw	$v1,0($a2)
    mtc1	$v1,$f1
    # Line 383
    li	$a3,21512
    lui	$v0,0x7
    # Line 385
    cvt.s.w	$f1,$f1
    # Line 383
    ori	$v0,$v0,0x4080
    sw	$a3,0($v0)
    # Line 384
    addiu	$v1,$a0,-16384
    sw	$v1,0($v0)
    # Line 386
    b	.L0da72a84
    # Line 385
    swc1	$f1,0($v0)
.L0da72d1c:
    # Line 388
    ori	$a3,$a3,0x4080
    # Line 390
    lw	$at,0($a2)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 388
    sw	$v0,0($a3)
    # Line 389
    addiu	$at,$a0,-16384
    sw	$at,0($a3)
    # Line 391
    b	.L0da72a84
    # Line 390
    swc1	$f2,0($a3)
.L0da72d44:
    # Line 320
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Lightiv

# Function: __glMgrim_LightModelf
# Declared: Line 411 (Source lines: 411-428)
# Address: 0x0da72d64 - 0x0da72e1c (Size: 184 bytes, Frame: 32)
.globl __glMgrim_LightModelf
.ent __glMgrim_LightModelf
__glMgrim_LightModelf:
    # Line 411
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x19
    addiu	$v1,$v1,-18124
    beq	$at,$v0,.L0da72dfc
    addu	$gp,$t9,$v1
    # Line 415
    li	$a1,2897
    # Line 417
    lui	$at,0x7
    # Line 415
    beq	$a0,$a1,.L0da72de4
    # Line 417
    ori	$at,$at,0x4080
    # Line 415
    li	$at,2898
    beq	$a0,$at,.L0da72dbc
    # Line 425
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 426
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da72dbc:
    # Line 421
    li	$a1,22788
    trunc.w.s	$f0,$f13
    lui	$v1,0x7
    mfc1	$v0,$f0
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    sw	$v0,0($v1)
.L0da72dd8:
    ld	$gp,0($sp)
    # Line 428
    jr	$ra
    addiu	$sp,$sp,32
.L0da72de4:
    # Line 417
    trunc.w.s	$f1,$f13
    li	$v0,22532
    mfc1	$a1,$f1
    sw	$v0,0($at)
    b	.L0da72dd8
    sw	$a1,0($at)
.L0da72dfc:
    # Line 413
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_LightModelf

# Function: __glMgrim_LightModelfv
# Declared: Line 441 (Source lines: 441-464)
# Address: 0x0da72e1c - 0x0da72f10 (Size: 244 bytes, Frame: 32)
.globl __glMgrim_LightModelfv
.ent __glMgrim_LightModelfv
__glMgrim_LightModelfv:
    # Line 441
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x19
    addiu	$v1,$v1,-18308
    beq	$at,$v0,.L0da72ef0
    addu	$gp,$t9,$v1
    # Line 445
    li	$a2,2899
    # Line 447
    lui	$at,0x7
    # Line 445
    beq	$a0,$a2,.L0da72eac
    # Line 447
    ori	$at,$at,0x4080
    # Line 445
    li	$at,2897
    # Line 453
    lui	$v1,0x7
    # Line 445
    beq	$a0,$at,.L0da72ed0
    li	$v0,2898
    beq	$a0,$v0,.L0da72e80
    # Line 461
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 462
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da72e80:
    # Line 457
    li	$at,22788
    lwc1	$f0,0($a1)
    trunc.w.s	$f0,$f0
    lui	$a2,0x7
    mfc1	$v1,$f0
    ori	$a2,$a2,0x4080
    sw	$at,0($a2)
    sw	$v1,0($a2)
.L0da72ea0:
    ld	$gp,0($sp)
    # Line 464
    jr	$ra
    addiu	$sp,$sp,32
.L0da72eac:
    # Line 449
    lwc1	$f1,8($a1)
    # Line 448
    lwc1	$f2,4($a1)
    # Line 447
    lwc1	$f3,0($a1)
    li	$v0,22284
    sw	$v0,0($at)
    swc1	$f3,0($at)
    # Line 448
    swc1	$f2,0($at)
    # Line 450
    b	.L0da72ea0
    # Line 449
    swc1	$f1,0($at)
.L0da72ed0:
    # Line 453
    ori	$v1,$v1,0x4080
    lwc1	$f0,0($a1)
    trunc.w.s	$f0,$f0
    li	$a2,22532
    mfc1	$v0,$f0
    sw	$a2,0($v1)
    b	.L0da72ea0
    sw	$v0,0($v1)
.L0da72ef0:
    # Line 443
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_LightModelfv

# Function: __glMgrim_LightModeli
# Declared: Line 476 (Source lines: 476-492)
# Address: 0x0da72f10 - 0x0da72fb8 (Size: 168 bytes, Frame: 32)
.globl __glMgrim_LightModeli
.ent __glMgrim_LightModeli
__glMgrim_LightModeli:
    # Line 476
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x19
    addiu	$v1,$v1,-18552
    beq	$at,$v0,.L0da72f98
    addu	$gp,$t9,$v1
    # Line 480
    li	$a2,2897
    beq	$a0,$a2,.L0da72f80
    # Line 485
    lui	$v0,0x7
    # Line 480
    li	$at,2898
    beq	$a0,$at,.L0da72f64
    # Line 489
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 490
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da72f64:
    # Line 485
    ori	$v0,$v0,0x4080
    li	$v1,22788
    sw	$v1,0($v0)
    sw	$a1,0($v0)
.L0da72f74:
    ld	$gp,0($sp)
    # Line 492
    jr	$ra
    addiu	$sp,$sp,32
.L0da72f80:
    # Line 482
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    li	$a2,22532
    sw	$a2,0($v1)
    b	.L0da72f74
    sw	$a1,0($v1)
.L0da72f98:
    # Line 478
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_LightModeli

# Function: __glMgrim_LightModeliv
# Declared: Line 503 (Source lines: 503-523)
# Address: 0x0da72fb8 - 0x0da730f4 (Size: 316 bytes, Frame: 32)
.globl __glMgrim_LightModeliv
.ent __glMgrim_LightModeliv
__glMgrim_LightModeliv:
    # Line 505
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 503
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 505
    lw	$at,__glBeginMode
    # Line 503
    lui	$v1,0x19
    addiu	$v1,$v1,-18720
    # Line 505
    beq	$at,$v0,.L0da730d4
    # Line 503
    addu	$gp,$t9,$v1
    # Line 515
    lui	$v1,0x7
    # Line 507
    li	$a2,2897
    beq	$a0,$a2,.L0da7309c
    # Line 515
    lwc1	$f2,_lit_3f800000
    # Line 507
    li	$at,2898
    beq	$a0,$at,.L0da730b8
    li	$v0,2899
    beq	$a0,$v0,.L0da7301c
    # Line 520
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 521
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7301c:
    # Line 515
    ori	$v1,$v1,0x4080
    lw	$a2,0($a1)
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,_lit_40000000
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    lwc1	$f1,3308($a3)
    mul.s	$f0,$f0,$f1
    li	$v0,22284
    sw	$v0,0($v1)
    swc1	$f0,0($v1)
    # Line 516
    lw	$at,4($a1)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($v1)
    # Line 517
    lw	$a2,8($a1)
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($v1)
.L0da73090:
    ld	$gp,0($sp)
    # Line 523
    jr	$ra
    addiu	$sp,$sp,32
.L0da7309c:
    # Line 509
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    li	$v1,22532
    lw	$at,0($a1)
    sw	$v1,0($v0)
    b	.L0da73090
    sw	$at,0($v0)
.L0da730b8:
    # Line 512
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    li	$at,22788
    lw	$v1,0($a1)
    sw	$at,0($a2)
    b	.L0da73090
    sw	$v1,0($a2)
.L0da730d4:
    # Line 505
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_LightModeliv

# Function: __glMgrim_Materialf
# Declared: Line 534 (Source lines: 534-554)
# Address: 0x0da730f4 - 0x0da731a4 (Size: 176 bytes, Frame: 48)
.globl __glMgrim_Materialf
.ent __glMgrim_Materialf
__glMgrim_Materialf:
    # Line 536
    sltiu	$at,$a0,1028
    # Line 534
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-19036
    # Line 536
    bnez	$at,.L0da73118
    # Line 534
    addu	$gp,$t9,$v0
    # Line 536
    sltiu	$v1,$a0,1030
    bnez	$v1,.L0da73144
.L0da73118:
    li	$a2,1032
    beq	$a0,$a2,.L0da73148
    # Line 539
    li	$at,5633
    # Line 538
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 539
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da73144:
    li	$at,5633
.L0da73148:
    # Line 546
    lui	$v0,0x7
    # Line 539
    beq	$a1,$at,.L0da73174
    # Line 546
    li	$v1,4376
    # Line 542
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 543
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da73174:
    # Line 546
    ori	$v0,$v0,0x4080
    # Line 550
    mtc1	$zero,$f0
    ld	$gp,0($sp)
    # Line 554
    addiu	$sp,$sp,48
    # Line 546
    sw	$v1,0($v0)
    # Line 547
    sw	$a0,0($v0)
    # Line 548
    sw	$a1,0($v0)
    # Line 549
    swc1	$f14,0($v0)
    # Line 550
    swc1	$f0,0($v0)
    # Line 551
    swc1	$f0,0($v0)
    # Line 554
    jr	$ra
    # Line 552
    swc1	$f0,0($v0)
.end __glMgrim_Materialf

# Function: __glMgrim_Materialfv
# Declared: Line 565 (Source lines: 565-594)
# Address: 0x0da731a4 - 0x0da732c4 (Size: 288 bytes, Frame: 48)
.globl __glMgrim_Materialfv
.ent __glMgrim_Materialfv
__glMgrim_Materialfv:
    # Line 567
    sltiu	$at,$a0,1028
    # Line 565
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-19212
    # Line 567
    bnez	$at,.L0da731c8
    # Line 565
    addu	$gp,$t9,$v0
    # Line 567
    sltiu	$v1,$a0,1030
    bnez	$v1,.L0da731f4
.L0da731c8:
    li	$a3,1032
    beq	$a0,$a3,.L0da731f8
    # Line 570
    sltiu	$at,$a1,5632
    # Line 569
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 570
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da731f4:
    sltiu	$at,$a1,5632
.L0da731f8:
    bnez	$at,.L0da7323c
    # Line 572
    sltiu	$v0,$a1,5633
    bnez	$v0,.L0da7326c
    sltiu	$v1,$a1,5634
    bnez	$v1,.L0da732b0
    sltiu	$a3,$a1,5635
    bnez	$a3,.L0da7326c
    li	$at,5635
    beq	$a1,$at,.L0da7326c
    # Line 582
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da73220:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 583
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7323c:
    # Line 572
    sltiu	$v0,$a1,4609
    bnez	$v0,.L0da73260
    sltiu	$v1,$a1,4610
    bnez	$v1,.L0da7326c
    li	$a3,4610
    bne	$a1,$a3,.L0da73220
    # Line 582
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da73270
    # Line 590
    lwc1	$f3,0($a2)
.L0da73260:
    # Line 572
    li	$at,4608
    bne	$a1,$at,.L0da73220
    # Line 582
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7326c:
    # Line 590
    lwc1	$f3,0($a2)
.L0da73270:
    # Line 587
    li	$v1,4376
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    # Line 588
    sw	$a0,0($v0)
    # Line 589
    sw	$a1,0($v0)
    # Line 590
    swc1	$f3,0($v0)
    # Line 591
    lwc1	$f2,4($a2)
    swc1	$f2,0($v0)
    # Line 592
    lwc1	$f1,8($a2)
    swc1	$f1,0($v0)
    ld	$gp,0($sp)
    # Line 593
    lwc1	$f0,12($a2)
    # Line 594
    addiu	$sp,$sp,48
    jr	$ra
    # Line 593
    swc1	$f0,0($v0)
.L0da732b0:
    # Line 572
    li	$v1,5633
    bne	$a1,$v1,.L0da73220
    # Line 582
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da73270
    # Line 590
    lwc1	$f3,0($a2)
.end __glMgrim_Materialfv

# Function: __glMgrim_Materiali
# Declared: Line 606 (Source lines: 606-626)
# Address: 0x0da732c4 - 0x0da7337c (Size: 184 bytes, Frame: 48)
.globl __glMgrim_Materiali
.ent __glMgrim_Materiali
__glMgrim_Materiali:
    # Line 608
    sltiu	$at,$a0,1028
    # Line 606
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-19500
    # Line 608
    bnez	$at,.L0da732e8
    # Line 606
    addu	$gp,$t9,$v0
    # Line 608
    sltiu	$v1,$a0,1030
    bnez	$v1,.L0da73314
.L0da732e8:
    li	$a3,1032
    beq	$a0,$a3,.L0da73318
    # Line 611
    li	$at,5633
    # Line 610
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 611
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da73314:
    li	$at,5633
.L0da73318:
    # Line 618
    lui	$v0,0x7
    # Line 611
    beq	$a1,$at,.L0da73344
    # Line 618
    li	$v1,4376
    # Line 614
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 615
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da73344:
    # Line 618
    ori	$v0,$v0,0x4080
    # Line 621
    mtc1	$a2,$f1
    # Line 622
    mtc1	$zero,$f0
    # Line 621
    cvt.s.w	$f1,$f1
    ld	$gp,0($sp)
    # Line 626
    addiu	$sp,$sp,48
    # Line 618
    sw	$v1,0($v0)
    # Line 619
    sw	$a0,0($v0)
    # Line 620
    sw	$a1,0($v0)
    # Line 621
    swc1	$f1,0($v0)
    # Line 622
    swc1	$f0,0($v0)
    # Line 623
    swc1	$f0,0($v0)
    # Line 626
    jr	$ra
    # Line 624
    swc1	$f0,0($v0)
.end __glMgrim_Materiali

# Function: __glMgrim_Materialiv
# Declared: Line 638 (Source lines: 638-685)
# Address: 0x0da7337c - 0x0da73578 (Size: 508 bytes, Frame: 48)
.globl __glMgrim_Materialiv
.ent __glMgrim_Materialiv
__glMgrim_Materialiv:
    # Line 640
    lw	$a4,__glCurrentContext
    # Line 642
    sltiu	$at,$a0,1028
    # Line 638
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-19684
    # Line 642
    bnez	$at,.L0da733a4
    # Line 638
    addu	$gp,$t9,$v0
    # Line 642
    sltiu	$v1,$a0,1030
    bnez	$v1,.L0da733d0
.L0da733a4:
    li	$a3,1032
    beq	$a0,$a3,.L0da733d4
    # Line 648
    sltiu	$v0,$a1,4609
    # Line 644
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 645
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da733d0:
    # Line 648
    sltiu	$v0,$a1,4609
.L0da733d4:
    # Line 645
    sltiu	$at,$a1,5632
    bnez	$at,.L0da73454
    # Line 658
    lwc1	$f1,_lit_3f800000
    # Line 648
    sltiu	$v0,$a1,5633
    bnez	$v0,.L0da73490
    sltiu	$v1,$a1,5634
    bnez	$v1,.L0da73530
    sltiu	$a3,$a1,5635
    bnez	$a3,.L0da73490
    li	$at,5635
    # Line 673
    lui	$v0,0x7
    # Line 648
    bne	$a1,$at,.L0da73470
    # Line 673
    ori	$v0,$v0,0x4080
    # Line 677
    lw	$a3,4($a2)
    mtc1	$a3,$f2
    # Line 676
    lw	$v1,0($a2)
    # Line 677
    cvt.s.w	$f2,$f2
    # Line 676
    mtc1	$v1,$f3
    # Line 678
    lw	$at,8($a2)
    # Line 676
    cvt.s.w	$f3,$f3
    # Line 678
    mtc1	$at,$f1
    # Line 679
    mtc1	$zero,$f0
    # Line 673
    li	$v1,4376
    # Line 678
    cvt.s.w	$f1,$f1
    # Line 673
    sw	$v1,0($v0)
    # Line 674
    sw	$a0,0($v0)
    # Line 675
    sw	$a1,0($v0)
    # Line 676
    swc1	$f3,0($v0)
    # Line 677
    swc1	$f2,0($v0)
    # Line 678
    swc1	$f1,0($v0)
    # Line 680
    b	.L0da73524
    # Line 679
    swc1	$f0,0($v0)
.L0da73454:
    # Line 648
    bnez	$v0,.L0da73488
    li	$at,4608
    sltiu	$v1,$a1,4610
    bnez	$v1,.L0da73490
    li	$a3,4610
    beql	$a1,$a3,.L0da73494
    # Line 661
    lw	$v0,12($a2)
.L0da73470:
    # Line 682
    # lw $t9, -27320($gp) # &__glSetError
.L0da73474:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da73524
    ld	$ra,8($sp)
.L0da73488:
    # Line 648
    bne	$a1,$at,.L0da73474
    # Line 682
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da73490:
    # Line 661
    lw	$v0,12($a2)
.L0da73494:
    mtc1	$v0,$f2
    # Line 660
    lw	$at,8($a2)
    # Line 661
    cvt.s.w	$f2,$f2
    # Line 660
    mtc1	$at,$f3
    # Line 658
    lwc1	$f0,_lit_40000000
    # Line 660
    cvt.s.w	$f3,$f3
    # Line 661
    mul.s	$f2,$f2,$f0
    # Line 660
    mul.s	$f3,$f3,$f0
    # Line 659
    lw	$a3,4($a2)
    mtc1	$a3,$f4
    # Line 658
    lw	$v1,0($a2)
    # Line 659
    cvt.s.w	$f4,$f4
    # Line 658
    mtc1	$v1,$f5
    nop
    cvt.s.w	$f5,$f5
    # Line 659
    mul.s	$f4,$f4,$f0
    # Line 658
    mul.s	$f5,$f5,$f0
    # Line 660
    add.s	$f3,$f3,$f1
    # Line 658
    lwc1	$f0,3308($a4)
    # Line 659
    add.s	$f4,$f4,$f1
    # Line 660
    mul.s	$f3,$f3,$f0
    # Line 658
    add.s	$f5,$f5,$f1
    # Line 659
    mul.s	$f4,$f4,$f0
    # Line 655
    li	$v1,4376
    # Line 661
    add.s	$f2,$f2,$f1
    # Line 658
    mul.s	$f5,$f5,$f0
    # Line 655
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 661
    mul.s	$f2,$f2,$f0
    # Line 655
    sw	$v1,0($v0)
    # Line 656
    sw	$a0,0($v0)
    # Line 657
    sw	$a1,0($v0)
    # Line 658
    swc1	$f5,0($v0)
    # Line 659
    swc1	$f4,0($v0)
    # Line 660
    swc1	$f3,0($v0)
    # Line 661
    swc1	$f2,0($v0)
.L0da73524:
    ld	$gp,0($sp)
    # Line 685
    jr	$ra
    addiu	$sp,$sp,48
.L0da73530:
    # Line 648
    li	$v1,5633
    # Line 664
    lui	$a3,0x7
    # Line 648
    bne	$a1,$v1,.L0da73470
    # Line 664
    ori	$a3,$a3,0x4080
    # Line 667
    lw	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 668
    mtc1	$zero,$f3
    # Line 664
    li	$at,4376
    sw	$at,0($a3)
    # Line 665
    sw	$a0,0($a3)
    # Line 666
    sw	$a1,0($a3)
    # Line 667
    swc1	$f0,0($a3)
    # Line 668
    swc1	$f3,0($a3)
    # Line 669
    swc1	$f3,0($a3)
    # Line 671
    b	.L0da73524
    # Line 670
    swc1	$f3,0($a3)
.end __glMgrim_Materialiv

.late_rodata
jtbl_0dbed000:
    .word .L0da725dc
    .word .L0da72640
    .word .L0da7267c
    .word .L0da726b8
    .word .L0da726f4
    .word .L0da72728
    .word .L0da7274c
    .word .L0da72618
    .word .L0da72770
    .word .L0da72790
jtbl_0dbed028:
    .word .L0da729b8
    .word .L0da72a90
    .word .L0da72b38
    .word .L0da72bdc
    .word .L0da72c44
    .word .L0da72c98
    .word .L0da72cc4
    .word .L0da72a5c
    .word .L0da72cf0
    .word .L0da72d1c

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

