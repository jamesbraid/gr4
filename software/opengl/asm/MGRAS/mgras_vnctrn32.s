# Source: /xlv55/kudzu-apr12/work/gfx/lib/opengl/MGRAS.IP28.N32.O/mgras_vnctrn32.s
# Category: MGRAS
# Compiler Options: 
# Total Functions: 132

.text

# Function: __glMgrim_Color3b
# Declared: Line 23 (Source lines: 23-37)
# Address: 0x0dbda044 - 0x0dbda080 (Size: 60 bytes, Frame: 0)
.globl __glMgrim_Color3b
.ent __glMgrim_Color3b
__glMgrim_Color3b:
    # Line 23
    andi	$a0,$a0,0xff
    # Line 24
    andi	$a1,$a1,0xff
    # Line 25
    andi	$a2,$a2,0xff
    # Line 26
    dsll	$t0,$a0,0x18
    # Line 27
    dsll	$t1,$a1,0x10
    # Line 28
    dsll	$t8,$a2,0x8
    # Line 29
    or	$t2,$t0,$t1
    # Line 30
    or	$t3,$t2,$t8
    # Line 31
    lui	$t0,0x3c80
    ori	$t0,$t0,0x203
    # Line 32
    lui	$v0,0x7
    # Line 34
    dsll32	$t0,$t0,0x0
    # Line 35
    or	$t2,$t3,$t0
    # Line 36
    jr	$ra
    # Line 37
    sd	$t2,16512($v0)
.end __glMgrim_Color3b

# Function: __glMgrim_Color3bv
# Declared: Line 48 (Source lines: 48-62)
# Address: 0x0dbda080 - 0x0dbda0bc (Size: 60 bytes, Frame: 0)
.globl __glMgrim_Color3bv
.ent __glMgrim_Color3bv
__glMgrim_Color3bv:
    # Line 48
    lbu	$t1,0($a0)
    # Line 49
    lbu	$t2,1($a0)
    # Line 50
    dsll	$t1,$t1,0x18
    # Line 51
    lbu	$t3,2($a0)
    # Line 52
    dsll	$t2,$t2,0x10
    # Line 53
    or	$t8,$t1,$t2
    # Line 54
    dsll	$t3,$t3,0x8
    # Line 55
    lui	$t0,0x3c80
    ori	$t0,$t0,0x203
    # Line 56
    or	$t8,$t8,$t3
    # Line 58
    dsll32	$t0,$t0,0x0
    # Line 59
    or	$t0,$t0,$t8
    # Line 60
    lui	$v0,0x7
    # Line 61
    jr	$ra
    # Line 62
    sd	$t0,16512($v0)
.end __glMgrim_Color3bv

# Function: __glMgrim_Color3d
# Declared: Line 74 (Source lines: 74-80)
# Address: 0x0dbda0bc - 0x0dbda0dc (Size: 32 bytes, Frame: 0)
.globl __glMgrim_Color3d
.ent __glMgrim_Color3d
__glMgrim_Color3d:
    # Line 74
    lui	$v0,0x7
    # Line 75
    lui	$t0,0x3200
    ori	$t0,$t0,0x218
    # Line 76
    sw	$t0,16512($v0)
    # Line 77
    sdc1	$f12,16512($v0)
    # Line 78
    sdc1	$f13,16512($v0)
    # Line 79
    jr	$ra
    # Line 80
    sdc1	$f14,16512($v0)
.end __glMgrim_Color3d

# Function: __glMgrim_Color3dv
# Declared: Line 86 (Source lines: 86-95)
# Address: 0x0dbda0dc - 0x0dbda108 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Color3dv
.ent __glMgrim_Color3dv
__glMgrim_Color3dv:
    # Line 86
    lui	$v0,0x7
    # Line 87
    lui	$t0,0x3200
    ori	$t0,$t0,0x218
    # Line 88
    ldc1	$f4,0($a0)
    # Line 89
    ldc1	$f5,8($a0)
    # Line 90
    ldc1	$f6,16($a0)
    # Line 91
    sw	$t0,16512($v0)
    # Line 92
    sdc1	$f4,16512($v0)
    # Line 93
    sdc1	$f5,16512($v0)
    # Line 94
    jr	$ra
    # Line 95
    sdc1	$f6,16512($v0)
.end __glMgrim_Color3dv

# Function: __glMgrim_Color3f
# Declared: Line 102 (Source lines: 102-117)
# Address: 0x0dbda108 - 0x0dbda14c (Size: 68 bytes, Frame: 0)
.globl __glMgrim_Color3f
.ent __glMgrim_Color3f
__glMgrim_Color3f:
    # Line 102
    lui	$t0,0x2000
    ori	$t0,$t0,0x20c
    # Line 103
    mfc1	$t1,$f12
    # Line 104
    mfc1	$t2,$f13
    # Line 105
    mfc1	$t3,$f14
    # Line 106
    dsll32	$t0,$t0,0x0
    # Line 107
    dsll32	$t1,$t1,0x0
    # Line 108
    dsll32	$t2,$t2,0x0
    # Line 109
    dsll32	$t3,$t3,0x0
    # Line 110
    dsrl32	$t1,$t1,0x0
    # Line 111
    dsrl32	$t3,$t3,0x0
    # Line 112
    lui	$v0,0x7
    # Line 113
    or	$t0,$t0,$t1
    # Line 114
    or	$t2,$t2,$t3
    # Line 115
    sd	$t0,16512($v0)
    # Line 116
    jr	$ra
    # Line 117
    sd	$t2,16512($v0)
.end __glMgrim_Color3f

# Function: __glMgrim_Color3fv
# Declared: Line 132 (Source lines: 132-144)
# Address: 0x0dbda14c - 0x0dbda178 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Color3fv
.ent __glMgrim_Color3fv
__glMgrim_Color3fv:
    # Line 132
    lui	$t0,0x2000
    ori	$t0,$t0,0x20c
    # Line 133
    lui	$v0,0x7
    # Line 134
    lwu	$t1,0($a0)
    # Line 136
    dsll32	$t0,$t0,0x0
    # Line 138
    ldl	$t2,4($a0)
    # Line 139
    ldr	$t2,11($a0)
    # Line 141
    or	$t0,$t0,$t1
    # Line 142
    sd	$t0,16512($v0)
    # Line 143
    jr	$ra
    # Line 144
    sd	$t2,16512($v0)
.end __glMgrim_Color3fv

# Function: __glMgrim_Color3i
# Declared: Line 157 (Source lines: 157-175)
# Address: 0x0dbda178 - 0x0dbda1b0 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_Color3i
.ent __glMgrim_Color3i
__glMgrim_Color3i:
    # Line 157
    dsll32	$a0,$a0,0x0
    # Line 158
    dsll32	$a2,$a2,0x0
    # Line 160
    lui	$t0,0x3c00
    ori	$t0,$t0,0x20c
    # Line 161
    lui	$v0,0x7
    # Line 163
    dsll32	$a1,$a1,0x0
    # Line 164
    dsll32	$t0,$t0,0x0
    # Line 167
    dsrl32	$a0,$a0,0x0
    # Line 168
    dsrl32	$a2,$a2,0x0
    # Line 171
    or	$t0,$a0,$t0
    # Line 172
    or	$a1,$a1,$a2
    # Line 173
    sd	$t0,16512($v0)
    # Line 174
    jr	$ra
    # Line 175
    sd	$a1,16512($v0)
.end __glMgrim_Color3i

# Function: __glMgrim_Color3iv
# Declared: Line 188 (Source lines: 188-200)
# Address: 0x0dbda1b0 - 0x0dbda1dc (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Color3iv
.ent __glMgrim_Color3iv
__glMgrim_Color3iv:
    # Line 188
    lui	$t0,0x3c00
    ori	$t0,$t0,0x20c
    # Line 189
    lui	$v0,0x7
    # Line 190
    lwu	$t1,0($a0)
    # Line 192
    dsll32	$t0,$t0,0x0
    # Line 194
    ldl	$t2,4($a0)
    # Line 195
    ldr	$t2,11($a0)
    # Line 197
    or	$t0,$t0,$t1
    # Line 198
    sd	$t0,16512($v0)
    # Line 199
    jr	$ra
    # Line 200
    sd	$t2,16512($v0)
.end __glMgrim_Color3iv

# Function: __glMgrim_Color3s
# Declared: Line 213 (Source lines: 213-227)
# Address: 0x0dbda1dc - 0x0dbda214 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_Color3s
.ent __glMgrim_Color3s
__glMgrim_Color3s:
    # Line 213
    andi	$a0,$a0,0xffff
    # Line 214
    andi	$a2,$a2,0xffff
    # Line 216
    andi	$a1,$a1,0xffff
    # Line 217
    dsll	$t0,$a0,0x10
    # Line 218
    dsll	$a2,$a2,0x10
    # Line 219
    or	$t1,$t0,$a1
    # Line 220
    lui	$t0,0x3d00
    ori	$t0,$t0,0x206
    # Line 221
    lui	$v0,0x7
    # Line 223
    dsll32	$t1,$t1,0x0
    # Line 224
    sw	$t0,16512($v0)
    # Line 225
    or	$t1,$t1,$a2
    # Line 226
    jr	$ra
    # Line 227
    sd	$t1,16512($v0)
.end __glMgrim_Color3s

# Function: __glMgrim_Color3sv
# Declared: Line 239 (Source lines: 239-250)
# Address: 0x0dbda214 - 0x0dbda244 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_Color3sv
.ent __glMgrim_Color3sv
__glMgrim_Color3sv:
    # Line 239
    lwl	$t0,0($a0)
    # Line 240
    lwr	$t0,3($a0)
    # Line 241
    lhu	$t2,4($a0)
    # Line 243
    dsll32	$t0,$t0,0x0
    # Line 244
    dsll	$t2,$t2,0x10
    # Line 245
    lui	$t1,0x3d00
    ori	$t1,$t1,0x206
    # Line 246
    or	$t0,$t0,$t2
    # Line 247
    lui	$v0,0x7
    # Line 248
    sw	$t1,16512($v0)
    # Line 249
    jr	$ra
    # Line 250
    sd	$t0,16512($v0)
.end __glMgrim_Color3sv

# Function: __glMgrim_Color3ub
# Declared: Line 265 (Source lines: 265-279)
# Address: 0x0dbda244 - 0x0dbda280 (Size: 60 bytes, Frame: 0)
.globl __glMgrim_Color3ub
.ent __glMgrim_Color3ub
__glMgrim_Color3ub:
    # Line 265
    andi	$a0,$a0,0xff
    # Line 266
    andi	$a1,$a1,0xff
    # Line 267
    andi	$a2,$a2,0xff
    # Line 268
    dsll	$t0,$a0,0x18
    # Line 269
    dsll	$t1,$a1,0x10
    # Line 270
    dsll	$t8,$a2,0x8
    # Line 271
    or	$t2,$t0,$t1
    # Line 272
    or	$t3,$t2,$t8
    # Line 273
    lui	$t0,0x3480
    ori	$t0,$t0,0x203
    # Line 274
    lui	$v0,0x7
    # Line 276
    dsll32	$t0,$t0,0x0
    # Line 277
    or	$t2,$t3,$t0
    # Line 278
    jr	$ra
    # Line 279
    sd	$t2,16512($v0)
.end __glMgrim_Color3ub

# Function: __glMgrim_Color3ubv
# Declared: Line 290 (Source lines: 290-304)
# Address: 0x0dbda280 - 0x0dbda2bc (Size: 60 bytes, Frame: 0)
.globl __glMgrim_Color3ubv
.ent __glMgrim_Color3ubv
__glMgrim_Color3ubv:
    # Line 290
    lbu	$t1,0($a0)
    # Line 291
    lbu	$t2,1($a0)
    # Line 292
    dsll	$t1,$t1,0x18
    # Line 293
    lbu	$t3,2($a0)
    # Line 294
    dsll	$t2,$t2,0x10
    # Line 295
    or	$t8,$t1,$t2
    # Line 296
    dsll	$t3,$t3,0x8
    # Line 297
    lui	$t0,0x3480
    ori	$t0,$t0,0x203
    # Line 298
    or	$t8,$t8,$t3
    # Line 300
    dsll32	$t0,$t0,0x0
    # Line 301
    or	$t0,$t0,$t8
    # Line 302
    lui	$v0,0x7
    # Line 303
    jr	$ra
    # Line 304
    sd	$t0,16512($v0)
.end __glMgrim_Color3ubv

# Function: __glMgrim_Color3ui
# Declared: Line 317 (Source lines: 317-335)
# Address: 0x0dbda2bc - 0x0dbda2f4 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_Color3ui
.ent __glMgrim_Color3ui
__glMgrim_Color3ui:
    # Line 317
    dsll32	$a0,$a0,0x0
    # Line 318
    dsll32	$a2,$a2,0x0
    # Line 320
    lui	$t0,0x3400
    ori	$t0,$t0,0x20c
    # Line 321
    lui	$v0,0x7
    # Line 323
    dsll32	$a1,$a1,0x0
    # Line 324
    dsll32	$t0,$t0,0x0
    # Line 327
    dsrl32	$a0,$a0,0x0
    # Line 328
    dsrl32	$a2,$a2,0x0
    # Line 331
    or	$t0,$a0,$t0
    # Line 332
    or	$a1,$a1,$a2
    # Line 333
    sd	$t0,16512($v0)
    # Line 334
    jr	$ra
    # Line 335
    sd	$a1,16512($v0)
.end __glMgrim_Color3ui

# Function: __glMgrim_Color3uiv
# Declared: Line 348 (Source lines: 348-360)
# Address: 0x0dbda2f4 - 0x0dbda320 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Color3uiv
.ent __glMgrim_Color3uiv
__glMgrim_Color3uiv:
    # Line 348
    lui	$t0,0x3400
    ori	$t0,$t0,0x20c
    # Line 349
    lui	$v0,0x7
    # Line 350
    lwu	$t1,0($a0)
    # Line 352
    dsll32	$t0,$t0,0x0
    # Line 354
    ldl	$t2,4($a0)
    # Line 355
    ldr	$t2,11($a0)
    # Line 357
    or	$t0,$t0,$t1
    # Line 358
    sd	$t0,16512($v0)
    # Line 359
    jr	$ra
    # Line 360
    sd	$t2,16512($v0)
.end __glMgrim_Color3uiv

# Function: __glMgrim_Color3us
# Declared: Line 373 (Source lines: 373-387)
# Address: 0x0dbda320 - 0x0dbda358 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_Color3us
.ent __glMgrim_Color3us
__glMgrim_Color3us:
    # Line 373
    andi	$a0,$a0,0xffff
    # Line 374
    andi	$a2,$a2,0xffff
    # Line 376
    andi	$a1,$a1,0xffff
    # Line 377
    dsll	$t0,$a0,0x10
    # Line 378
    dsll	$a2,$a2,0x10
    # Line 379
    or	$t1,$t0,$a1
    # Line 380
    lui	$t0,0x3500
    ori	$t0,$t0,0x206
    # Line 381
    lui	$v0,0x7
    # Line 383
    dsll32	$t1,$t1,0x0
    # Line 384
    sw	$t0,16512($v0)
    # Line 385
    or	$t1,$t1,$a2
    # Line 386
    jr	$ra
    # Line 387
    sd	$t1,16512($v0)
.end __glMgrim_Color3us

# Function: __glMgrim_Color3usv
# Declared: Line 399 (Source lines: 399-410)
# Address: 0x0dbda358 - 0x0dbda388 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_Color3usv
.ent __glMgrim_Color3usv
__glMgrim_Color3usv:
    # Line 399
    lwl	$t0,0($a0)
    # Line 400
    lwr	$t0,3($a0)
    # Line 401
    lhu	$t2,4($a0)
    # Line 403
    dsll32	$t0,$t0,0x0
    # Line 404
    dsll	$t2,$t2,0x10
    # Line 405
    lui	$t1,0x3500
    ori	$t1,$t1,0x206
    # Line 406
    or	$t0,$t0,$t2
    # Line 407
    lui	$v0,0x7
    # Line 408
    sw	$t1,16512($v0)
    # Line 409
    jr	$ra
    # Line 410
    sd	$t0,16512($v0)
.end __glMgrim_Color3usv

# Function: __glMgrim_Color4b
# Declared: Line 425 (Source lines: 425-441)
# Address: 0x0dbda388 - 0x0dbda3cc (Size: 68 bytes, Frame: 0)
.globl __glMgrim_Color4b
.ent __glMgrim_Color4b
__glMgrim_Color4b:
    # Line 425
    andi	$a0,$a0,0xff
    # Line 426
    andi	$a1,$a1,0xff
    # Line 427
    andi	$a2,$a2,0xff
    # Line 428
    andi	$a3,$a3,0xff
    # Line 429
    dsll	$t0,$a0,0x18
    # Line 430
    dsll	$t1,$a1,0x10
    # Line 431
    dsll	$t2,$a2,0x8
    # Line 432
    lui	$a4,0x1c80
    ori	$a4,$a4,0x204
    # Line 433
    or	$t3,$t0,$a3
    # Line 434
    or	$t8,$t1,$t3
    # Line 435
    or	$t0,$t2,$t8
    # Line 436
    lui	$v0,0x7
    # Line 438
    dsll32	$t1,$a4,0x0
    # Line 439
    or	$t2,$t0,$t1
    # Line 440
    jr	$ra
    # Line 441
    sd	$t2,16512($v0)
.end __glMgrim_Color4b

# Function: __glMgrim_Color4bv
# Declared: Line 452 (Source lines: 452-462)
# Address: 0x0dbda3cc - 0x0dbda3f8 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Color4bv
.ent __glMgrim_Color4bv
__glMgrim_Color4bv:
    # Line 452
    lwl	$t1,0($a0)
    # Line 453
    lwr	$t1,3($a0)
    # Line 454
    lui	$t0,0x1c80
    ori	$t0,$t0,0x204
    # Line 455
    lui	$v0,0x7
    # Line 457
    dsll32	$t1,$t1,0x0
    # Line 458
    dsll32	$t0,$t0,0x0
    # Line 459
    dsrl32	$t1,$t1,0x0
    # Line 460
    or	$t0,$t0,$t1
    # Line 461
    jr	$ra
    # Line 462
    sd	$t0,16512($v0)
.end __glMgrim_Color4bv

# Function: __glMgrim_Color4d
# Declared: Line 473 (Source lines: 473-480)
# Address: 0x0dbda3f8 - 0x0dbda41c (Size: 36 bytes, Frame: 0)
.globl __glMgrim_Color4d
.ent __glMgrim_Color4d
__glMgrim_Color4d:
    # Line 473
    lui	$v0,0x7
    # Line 474
    lui	$t0,0x1200
    ori	$t0,$t0,0x220
    # Line 475
    sw	$t0,16512($v0)
    # Line 476
    sdc1	$f12,16512($v0)
    # Line 477
    sdc1	$f13,16512($v0)
    # Line 478
    sdc1	$f14,16512($v0)
    # Line 479
    jr	$ra
    # Line 480
    sdc1	$f15,16512($v0)
.end __glMgrim_Color4d

# Function: __glMgrim_Color4dv
# Declared: Line 486 (Source lines: 486-497)
# Address: 0x0dbda41c - 0x0dbda450 (Size: 52 bytes, Frame: 0)
.globl __glMgrim_Color4dv
.ent __glMgrim_Color4dv
__glMgrim_Color4dv:
    # Line 486
    lui	$v0,0x7
    # Line 487
    lui	$t0,0x1200
    ori	$t0,$t0,0x220
    # Line 488
    ldc1	$f4,0($a0)
    # Line 489
    ldc1	$f5,8($a0)
    # Line 490
    ldc1	$f6,16($a0)
    # Line 491
    ldc1	$f7,24($a0)
    # Line 492
    sw	$t0,16512($v0)
    # Line 493
    sdc1	$f4,16512($v0)
    # Line 494
    sdc1	$f5,16512($v0)
    # Line 495
    sdc1	$f6,16512($v0)
    # Line 496
    jr	$ra
    # Line 497
    sdc1	$f7,16512($v0)
.end __glMgrim_Color4dv

# Function: __glMgrim_Color4f
# Declared: Line 504 (Source lines: 504-521)
# Address: 0x0dbda450 - 0x0dbda498 (Size: 72 bytes, Frame: 0)
.globl __glMgrim_Color4f
.ent __glMgrim_Color4f
__glMgrim_Color4f:
    # Line 504
    li	$t0,528
    # Line 505
    lui	$v0,0x7
    # Line 506
    mfc1	$t1,$f12
    # Line 507
    mfc1	$t2,$f13
    # Line 508
    mfc1	$t3,$f14
    # Line 509
    mfc1	$t8,$f15
    # Line 510
    dsll32	$t1,$t1,0x0
    # Line 511
    dsll32	$t2,$t2,0x0
    # Line 512
    dsll32	$t8,$t8,0x0
    # Line 513
    dsll32	$t3,$t3,0x0
    # Line 514
    dsrl32	$t2,$t2,0x0
    # Line 515
    dsrl32	$t8,$t8,0x0
    # Line 516
    or	$t1,$t1,$t2
    # Line 517
    or	$t3,$t3,$t8
    # Line 518
    sw	$t0,16512($v0)
    # Line 519
    sd	$t1,16512($v0)
    # Line 520
    jr	$ra
    # Line 521
    sd	$t3,16512($v0)
.end __glMgrim_Color4f

# Function: __glMgrim_Color4fv
# Declared: Line 537 (Source lines: 537-546)
# Address: 0x0dbda498 - 0x0dbda4c0 (Size: 40 bytes, Frame: 0)
.globl __glMgrim_Color4fv
.ent __glMgrim_Color4fv
__glMgrim_Color4fv:
    # Line 537
    li	$t2,528
    # Line 538
    lui	$v0,0x7
    # Line 539
    ldl	$t0,0($a0)
    # Line 540
    ldr	$t0,7($a0)
    # Line 541
    ldl	$t1,8($a0)
    # Line 542
    ldr	$t1,15($a0)
    # Line 543
    sw	$t2,16512($v0)
    # Line 544
    sd	$t0,16512($v0)
    # Line 545
    jr	$ra
    # Line 546
    sd	$t1,16512($v0)
.end __glMgrim_Color4fv

# Function: __glMgrim_Color4i
# Declared: Line 553 (Source lines: 553-572)
# Address: 0x0dbda4c0 - 0x0dbda4fc (Size: 60 bytes, Frame: 0)
.globl __glMgrim_Color4i
.ent __glMgrim_Color4i
__glMgrim_Color4i:
    # Line 553
    dsll32	$a1,$a1,0x0
    # Line 554
    dsll32	$a3,$a3,0x0
    # Line 557
    dsll32	$a0,$a0,0x0
    # Line 558
    dsll32	$a2,$a2,0x0
    # Line 561
    dsrl32	$a1,$a1,0x0
    # Line 562
    dsrl32	$a3,$a3,0x0
    # Line 564
    lui	$v0,0x7
    # Line 565
    lui	$t0,0x1c00
    ori	$t0,$t0,0x210
    # Line 567
    or	$a0,$a0,$a1
    # Line 568
    or	$a2,$a2,$a3
    # Line 569
    sw	$t0,16512($v0)
    # Line 570
    sd	$a0,16512($v0)
    # Line 571
    jr	$ra
    # Line 572
    sd	$a2,16512($v0)
.end __glMgrim_Color4i

# Function: __glMgrim_Color4iv
# Declared: Line 586 (Source lines: 586-595)
# Address: 0x0dbda4fc - 0x0dbda528 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Color4iv
.ent __glMgrim_Color4iv
__glMgrim_Color4iv:
    # Line 586
    lui	$t2,0x1c00
    ori	$t2,$t2,0x210
    # Line 587
    lui	$v0,0x7
    # Line 588
    ldl	$t0,0($a0)
    # Line 589
    ldr	$t0,7($a0)
    # Line 590
    ldl	$t1,8($a0)
    # Line 591
    ldr	$t1,15($a0)
    # Line 592
    sw	$t2,16512($v0)
    # Line 593
    sd	$t0,16512($v0)
    # Line 594
    jr	$ra
    # Line 595
    sd	$t1,16512($v0)
.end __glMgrim_Color4iv

# Function: __glMgrim_Color4s
# Declared: Line 602 (Source lines: 602-618)
# Address: 0x0dbda528 - 0x0dbda568 (Size: 64 bytes, Frame: 0)
.globl __glMgrim_Color4s
.ent __glMgrim_Color4s
__glMgrim_Color4s:
    # Line 602
    andi	$a0,$a0,0xffff
    # Line 603
    andi	$a2,$a2,0xffff
    # Line 605
    andi	$a1,$a1,0xffff
    # Line 606
    andi	$a3,$a3,0xffff
    # Line 607
    dsll	$t0,$a0,0x10
    # Line 608
    dsll	$t1,$a2,0x10
    # Line 609
    lui	$t8,0x1d00
    ori	$t8,$t8,0x208
    # Line 610
    or	$t2,$t0,$a1
    # Line 611
    or	$t3,$t1,$a3
    # Line 613
    dsll32	$t1,$t2,0x0
    # Line 614
    lui	$v0,0x7
    # Line 615
    or	$t0,$t1,$t3
    # Line 616
    sw	$t8,16512($v0)
    # Line 617
    jr	$ra
    # Line 618
    sd	$t0,16512($v0)
.end __glMgrim_Color4s

# Function: __glMgrim_Color4sv
# Declared: Line 631 (Source lines: 631-637)
# Address: 0x0dbda568 - 0x0dbda588 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_Color4sv
.ent __glMgrim_Color4sv
__glMgrim_Color4sv:
    # Line 631
    lui	$t1,0x1d00
    ori	$t1,$t1,0x208
    # Line 632
    lui	$v0,0x7
    # Line 633
    ldl	$t0,0($a0)
    # Line 634
    ldr	$t0,7($a0)
    # Line 635
    sw	$t1,16512($v0)
    # Line 636
    jr	$ra
    # Line 637
    sd	$t0,16512($v0)
.end __glMgrim_Color4sv

# Function: __glMgrim_Color4ub
# Declared: Line 643 (Source lines: 643-659)
# Address: 0x0dbda588 - 0x0dbda5cc (Size: 68 bytes, Frame: 0)
.globl __glMgrim_Color4ub
.ent __glMgrim_Color4ub
__glMgrim_Color4ub:
    # Line 643
    andi	$a0,$a0,0xff
    # Line 644
    andi	$a1,$a1,0xff
    # Line 645
    andi	$a2,$a2,0xff
    # Line 646
    andi	$a3,$a3,0xff
    # Line 647
    dsll	$t0,$a0,0x18
    # Line 648
    dsll	$t1,$a1,0x10
    # Line 649
    dsll	$t2,$a2,0x8
    # Line 650
    lui	$a4,0x1480
    ori	$a4,$a4,0x204
    # Line 651
    or	$t3,$t0,$a3
    # Line 652
    or	$t8,$t1,$t3
    # Line 653
    or	$t0,$t2,$t8
    # Line 654
    lui	$v0,0x7
    # Line 656
    dsll32	$t1,$a4,0x0
    # Line 657
    or	$t2,$t0,$t1
    # Line 658
    jr	$ra
    # Line 659
    sd	$t2,16512($v0)
.end __glMgrim_Color4ub

# Function: __glMgrim_Color4ubv
# Declared: Line 670 (Source lines: 670-680)
# Address: 0x0dbda5cc - 0x0dbda5f8 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Color4ubv
.ent __glMgrim_Color4ubv
__glMgrim_Color4ubv:
    # Line 670
    lwl	$t1,0($a0)
    # Line 671
    lwr	$t1,3($a0)
    # Line 672
    lui	$t0,0x1480
    ori	$t0,$t0,0x204
    # Line 673
    lui	$v0,0x7
    # Line 675
    dsll32	$t1,$t1,0x0
    # Line 676
    dsll32	$t0,$t0,0x0
    # Line 677
    dsrl32	$t1,$t1,0x0
    # Line 678
    or	$t0,$t0,$t1
    # Line 679
    jr	$ra
    # Line 680
    sd	$t0,16512($v0)
.end __glMgrim_Color4ubv

# Function: __glMgrim_Color4ui
# Declared: Line 692 (Source lines: 692-711)
# Address: 0x0dbda5f8 - 0x0dbda634 (Size: 60 bytes, Frame: 0)
.globl __glMgrim_Color4ui
.ent __glMgrim_Color4ui
__glMgrim_Color4ui:
    # Line 692
    dsll32	$a1,$a1,0x0
    # Line 693
    dsll32	$a3,$a3,0x0
    # Line 696
    dsll32	$a0,$a0,0x0
    # Line 697
    dsll32	$a2,$a2,0x0
    # Line 700
    dsrl32	$a1,$a1,0x0
    # Line 701
    dsrl32	$a3,$a3,0x0
    # Line 703
    lui	$v0,0x7
    # Line 704
    lui	$t0,0x1400
    ori	$t0,$t0,0x210
    # Line 706
    or	$a0,$a0,$a1
    # Line 707
    or	$a2,$a2,$a3
    # Line 708
    sw	$t0,16512($v0)
    # Line 709
    sd	$a0,16512($v0)
    # Line 710
    jr	$ra
    # Line 711
    sd	$a2,16512($v0)
.end __glMgrim_Color4ui

# Function: __glMgrim_Color4uiv
# Declared: Line 725 (Source lines: 725-734)
# Address: 0x0dbda634 - 0x0dbda660 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Color4uiv
.ent __glMgrim_Color4uiv
__glMgrim_Color4uiv:
    # Line 725
    lui	$t2,0x1400
    ori	$t2,$t2,0x210
    # Line 726
    lui	$v0,0x7
    # Line 727
    ldl	$t0,0($a0)
    # Line 728
    ldr	$t0,7($a0)
    # Line 729
    ldl	$t1,8($a0)
    # Line 730
    ldr	$t1,15($a0)
    # Line 731
    sw	$t2,16512($v0)
    # Line 732
    sd	$t0,16512($v0)
    # Line 733
    jr	$ra
    # Line 734
    sd	$t1,16512($v0)
.end __glMgrim_Color4uiv

# Function: __glMgrim_Color4us
# Declared: Line 741 (Source lines: 741-757)
# Address: 0x0dbda660 - 0x0dbda6a0 (Size: 64 bytes, Frame: 0)
.globl __glMgrim_Color4us
.ent __glMgrim_Color4us
__glMgrim_Color4us:
    # Line 741
    andi	$a0,$a0,0xffff
    # Line 742
    andi	$a2,$a2,0xffff
    # Line 744
    andi	$a1,$a1,0xffff
    # Line 745
    andi	$a3,$a3,0xffff
    # Line 746
    dsll	$t0,$a0,0x10
    # Line 747
    dsll	$t1,$a2,0x10
    # Line 748
    lui	$t8,0x1500
    ori	$t8,$t8,0x208
    # Line 749
    or	$t2,$t0,$a1
    # Line 750
    or	$t3,$t1,$a3
    # Line 752
    dsll32	$t1,$t2,0x0
    # Line 753
    lui	$v0,0x7
    # Line 754
    or	$t0,$t1,$t3
    # Line 755
    sw	$t8,16512($v0)
    # Line 756
    jr	$ra
    # Line 757
    sd	$t0,16512($v0)
.end __glMgrim_Color4us

# Function: __glMgrim_Color4usv
# Declared: Line 770 (Source lines: 770-776)
# Address: 0x0dbda6a0 - 0x0dbda6c0 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_Color4usv
.ent __glMgrim_Color4usv
__glMgrim_Color4usv:
    # Line 770
    lui	$t1,0x1500
    ori	$t1,$t1,0x208
    # Line 771
    lui	$v0,0x7
    # Line 772
    ldl	$t0,0($a0)
    # Line 773
    ldr	$t0,7($a0)
    # Line 774
    sw	$t1,16512($v0)
    # Line 775
    jr	$ra
    # Line 776
    sd	$t0,16512($v0)
.end __glMgrim_Color4usv

# Function: __glMgrim_Indexd
# Declared: Line 782 (Source lines: 782-786)
# Address: 0x0dbda6c0 - 0x0dbda6d8 (Size: 24 bytes, Frame: 0)
.globl __glMgrim_Indexd
.ent __glMgrim_Indexd
__glMgrim_Indexd:
    # Line 782
    lui	$v0,0x7
    # Line 783
    lui	$t0,0x1200
    ori	$t0,$t0,0x208
    # Line 784
    sw	$t0,16512($v0)
    # Line 785
    jr	$ra
    # Line 786
    sdc1	$f12,16512($v0)
.end __glMgrim_Indexd

# Function: __glMgrim_Indexdv
# Declared: Line 792 (Source lines: 792-797)
# Address: 0x0dbda6d8 - 0x0dbda6f4 (Size: 28 bytes, Frame: 0)
.globl __glMgrim_Indexdv
.ent __glMgrim_Indexdv
__glMgrim_Indexdv:
    # Line 792
    lui	$v0,0x7
    # Line 793
    lui	$t0,0x1200
    ori	$t0,$t0,0x208
    # Line 794
    ldc1	$f4,0($a0)
    # Line 795
    sw	$t0,16512($v0)
    # Line 796
    jr	$ra
    # Line 797
    sdc1	$f4,16512($v0)
.end __glMgrim_Indexdv

# Function: __glMgrim_Indexf
# Declared: Line 804 (Source lines: 804-812)
# Address: 0x0dbda6f4 - 0x0dbda718 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_Indexf
.ent __glMgrim_Indexf
__glMgrim_Indexf:
    # Line 804
    mfc1	$t1,$f12
    # Line 805
    li	$t0,516
    # Line 806
    dsll32	$t1,$t1,0x0
    # Line 807
    dsll32	$t0,$t0,0x0
    # Line 808
    lui	$v0,0x7
    # Line 809
    dsrl32	$t1,$t1,0x0
    # Line 810
    or	$t3,$t0,$t1
    # Line 811
    jr	$ra
    # Line 812
    sd	$t3,16512($v0)
.end __glMgrim_Indexf

# Function: __glMgrim_Indexfv
# Declared: Line 825 (Source lines: 825-832)
# Address: 0x0dbda718 - 0x0dbda734 (Size: 28 bytes, Frame: 0)
.globl __glMgrim_Indexfv
.ent __glMgrim_Indexfv
__glMgrim_Indexfv:
    # Line 825
    lwu	$t0,0($a0)
    # Line 827
    li	$t1,516
    # Line 828
    dsll32	$t1,$t1,0x0
    # Line 829
    lui	$v0,0x7
    # Line 830
    or	$t0,$t0,$t1
    # Line 831
    jr	$ra
    # Line 832
    sd	$t0,16512($v0)
.end __glMgrim_Indexfv

# Function: __glMgrim_Indexi
# Declared: Line 846 (Source lines: 846-857)
# Address: 0x0dbda734 - 0x0dbda758 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_Indexi
.ent __glMgrim_Indexi
__glMgrim_Indexi:
    # Line 846
    dsll32	$a0,$a0,0x0
    # Line 848
    lui	$t0,0x1800
    ori	$t0,$t0,0x204
    # Line 850
    dsrl32	$a0,$a0,0x0
    # Line 852
    lui	$v1,0x7
    # Line 854
    dsll32	$t0,$t0,0x0
    # Line 855
    or	$t1,$a0,$t0
    # Line 856
    jr	$ra
    # Line 857
    sd	$t1,16512($v1)
.end __glMgrim_Indexi

# Function: __glMgrim_Indexiv
# Declared: Line 868 (Source lines: 868-875)
# Address: 0x0dbda758 - 0x0dbda778 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_Indexiv
.ent __glMgrim_Indexiv
__glMgrim_Indexiv:
    # Line 868
    lwu	$t0,0($a0)
    # Line 870
    lui	$t1,0x1800
    ori	$t1,$t1,0x204
    # Line 871
    dsll32	$t1,$t1,0x0
    # Line 872
    lui	$v0,0x7
    # Line 873
    or	$t0,$t0,$t1
    # Line 874
    jr	$ra
    # Line 875
    sd	$t0,16512($v0)
.end __glMgrim_Indexiv

# Function: __glMgrim_Indexs
# Declared: Line 888 (Source lines: 888-896)
# Address: 0x0dbda778 - 0x0dbda79c (Size: 36 bytes, Frame: 0)
.globl __glMgrim_Indexs
.ent __glMgrim_Indexs
__glMgrim_Indexs:
    # Line 888
    andi	$t0,$a0,0xffff
    # Line 889
    lui	$t1,0x1900
    ori	$t1,$t1,0x202
    # Line 890
    dsll	$t2,$t0,0x10
    # Line 891
    lui	$v0,0x7
    # Line 893
    dsll32	$t3,$t1,0x0
    # Line 894
    or	$t0,$t3,$t2
    # Line 895
    jr	$ra
    # Line 896
    sd	$t0,16512($v0)
.end __glMgrim_Indexs

# Function: __glMgrim_Indexsv
# Declared: Line 907 (Source lines: 907-915)
# Address: 0x0dbda79c - 0x0dbda7c0 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_Indexsv
.ent __glMgrim_Indexsv
__glMgrim_Indexsv:
    # Line 907
    lui	$t1,0x1900
    ori	$t1,$t1,0x202
    # Line 908
    lhu	$t0,0($a0)
    # Line 909
    dsll	$t0,$t0,0x10
    # Line 911
    dsll32	$t1,$t1,0x0
    # Line 912
    lui	$v0,0x7
    # Line 913
    or	$t0,$t0,$t1
    # Line 914
    jr	$ra
    # Line 915
    sd	$t0,16512($v0)
.end __glMgrim_Indexsv

# Function: __glMgrim_Normal3b
# Declared: Line 927 (Source lines: 927-941)
# Address: 0x0dbda7c0 - 0x0dbda7fc (Size: 60 bytes, Frame: 0)
.globl __glMgrim_Normal3b
.ent __glMgrim_Normal3b
__glMgrim_Normal3b:
    # Line 927
    andi	$a0,$a0,0xff
    # Line 928
    andi	$a1,$a1,0xff
    # Line 929
    andi	$a2,$a2,0xff
    # Line 930
    dsll	$t0,$a0,0x18
    # Line 931
    dsll	$t1,$a1,0x10
    # Line 932
    dsll	$t8,$a2,0x8
    # Line 933
    or	$t2,$t0,$t1
    # Line 934
    or	$t3,$t2,$t8
    # Line 935
    lui	$t0,0x1c80
    ori	$t0,$t0,0x703
    # Line 936
    lui	$v0,0x7
    # Line 938
    dsll32	$t0,$t0,0x0
    # Line 939
    or	$t2,$t3,$t0
    # Line 940
    jr	$ra
    # Line 941
    sd	$t2,16512($v0)
.end __glMgrim_Normal3b

# Function: __glMgrim_Normal3bv
# Declared: Line 952 (Source lines: 952-966)
# Address: 0x0dbda7fc - 0x0dbda838 (Size: 60 bytes, Frame: 0)
.globl __glMgrim_Normal3bv
.ent __glMgrim_Normal3bv
__glMgrim_Normal3bv:
    # Line 952
    lbu	$t1,0($a0)
    # Line 953
    lbu	$t2,1($a0)
    # Line 954
    dsll	$t1,$t1,0x18
    # Line 955
    lbu	$t3,2($a0)
    # Line 956
    dsll	$t2,$t2,0x10
    # Line 957
    or	$t8,$t1,$t2
    # Line 958
    dsll	$t3,$t3,0x8
    # Line 959
    lui	$t0,0x1c80
    ori	$t0,$t0,0x703
    # Line 960
    or	$t8,$t8,$t3
    # Line 962
    dsll32	$t0,$t0,0x0
    # Line 963
    or	$t0,$t0,$t8
    # Line 964
    lui	$v0,0x7
    # Line 965
    jr	$ra
    # Line 966
    sd	$t0,16512($v0)
.end __glMgrim_Normal3bv

# Function: __glMgrim_Normal3d
# Declared: Line 978 (Source lines: 978-984)
# Address: 0x0dbda838 - 0x0dbda858 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_Normal3d
.ent __glMgrim_Normal3d
__glMgrim_Normal3d:
    # Line 978
    lui	$v0,0x7
    # Line 979
    lui	$t0,0x1200
    ori	$t0,$t0,0x718
    # Line 980
    sw	$t0,16512($v0)
    # Line 981
    sdc1	$f12,16512($v0)
    # Line 982
    sdc1	$f13,16512($v0)
    # Line 983
    jr	$ra
    # Line 984
    sdc1	$f14,16512($v0)
.end __glMgrim_Normal3d

# Function: __glMgrim_Normal3dv
# Declared: Line 990 (Source lines: 990-999)
# Address: 0x0dbda858 - 0x0dbda884 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Normal3dv
.ent __glMgrim_Normal3dv
__glMgrim_Normal3dv:
    # Line 990
    lui	$v0,0x7
    # Line 991
    lui	$t0,0x1200
    ori	$t0,$t0,0x718
    # Line 992
    ldc1	$f4,0($a0)
    # Line 993
    ldc1	$f5,8($a0)
    # Line 994
    ldc1	$f6,16($a0)
    # Line 995
    sw	$t0,16512($v0)
    # Line 996
    sdc1	$f4,16512($v0)
    # Line 997
    sdc1	$f5,16512($v0)
    # Line 998
    jr	$ra
    # Line 999
    sdc1	$f6,16512($v0)
.end __glMgrim_Normal3dv

# Function: __glMgrim_Normal3f
# Declared: Line 1006 (Source lines: 1006-1021)
# Address: 0x0dbda884 - 0x0dbda8c4 (Size: 64 bytes, Frame: 0)
.globl __glMgrim_Normal3f
.ent __glMgrim_Normal3f
__glMgrim_Normal3f:
    # Line 1006
    li	$t0,1804
    # Line 1007
    mfc1	$t1,$f12
    # Line 1008
    mfc1	$t2,$f13
    # Line 1009
    mfc1	$t3,$f14
    # Line 1010
    dsll32	$t0,$t0,0x0
    # Line 1011
    dsll32	$t1,$t1,0x0
    # Line 1012
    dsll32	$t2,$t2,0x0
    # Line 1013
    dsll32	$t3,$t3,0x0
    # Line 1014
    dsrl32	$t1,$t1,0x0
    # Line 1015
    dsrl32	$t3,$t3,0x0
    # Line 1016
    lui	$v0,0x7
    # Line 1017
    or	$t0,$t0,$t1
    # Line 1018
    or	$t2,$t2,$t3
    # Line 1019
    sd	$t0,16512($v0)
    # Line 1020
    jr	$ra
    # Line 1021
    sd	$t2,16512($v0)
.end __glMgrim_Normal3f

# Function: __glMgrim_Normal3fv
# Declared: Line 1036 (Source lines: 1036-1048)
# Address: 0x0dbda8c4 - 0x0dbda8ec (Size: 40 bytes, Frame: 0)
.globl __glMgrim_Normal3fv
.ent __glMgrim_Normal3fv
__glMgrim_Normal3fv:
    # Line 1036
    li	$t0,1804
    # Line 1037
    lui	$v0,0x7
    # Line 1038
    lwu	$t1,0($a0)
    # Line 1040
    dsll32	$t0,$t0,0x0
    # Line 1042
    ldl	$t2,4($a0)
    # Line 1043
    ldr	$t2,11($a0)
    # Line 1045
    or	$t0,$t0,$t1
    # Line 1046
    sd	$t0,16512($v0)
    # Line 1047
    jr	$ra
    # Line 1048
    sd	$t2,16512($v0)
.end __glMgrim_Normal3fv

# Function: __glMgrim_Normal3i
# Declared: Line 1061 (Source lines: 1061-1079)
# Address: 0x0dbda8ec - 0x0dbda924 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_Normal3i
.ent __glMgrim_Normal3i
__glMgrim_Normal3i:
    # Line 1061
    dsll32	$a0,$a0,0x0
    # Line 1062
    dsll32	$a2,$a2,0x0
    # Line 1064
    lui	$t0,0x1c00
    ori	$t0,$t0,0x70c
    # Line 1065
    lui	$v0,0x7
    # Line 1067
    dsll32	$a1,$a1,0x0
    # Line 1068
    dsll32	$t0,$t0,0x0
    # Line 1071
    dsrl32	$a0,$a0,0x0
    # Line 1072
    dsrl32	$a2,$a2,0x0
    # Line 1075
    or	$t0,$a0,$t0
    # Line 1076
    or	$a1,$a1,$a2
    # Line 1077
    sd	$t0,16512($v0)
    # Line 1078
    jr	$ra
    # Line 1079
    sd	$a1,16512($v0)
.end __glMgrim_Normal3i

# Function: __glMgrim_Normal3iv
# Declared: Line 1092 (Source lines: 1092-1104)
# Address: 0x0dbda924 - 0x0dbda950 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Normal3iv
.ent __glMgrim_Normal3iv
__glMgrim_Normal3iv:
    # Line 1092
    lui	$t0,0x1c00
    ori	$t0,$t0,0x70c
    # Line 1093
    lui	$v0,0x7
    # Line 1094
    lwu	$t1,0($a0)
    # Line 1096
    dsll32	$t0,$t0,0x0
    # Line 1098
    ldl	$t2,4($a0)
    # Line 1099
    ldr	$t2,11($a0)
    # Line 1101
    or	$t0,$t0,$t1
    # Line 1102
    sd	$t0,16512($v0)
    # Line 1103
    jr	$ra
    # Line 1104
    sd	$t2,16512($v0)
.end __glMgrim_Normal3iv

# Function: __glMgrim_Normal3s
# Declared: Line 1117 (Source lines: 1117-1131)
# Address: 0x0dbda950 - 0x0dbda988 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_Normal3s
.ent __glMgrim_Normal3s
__glMgrim_Normal3s:
    # Line 1117
    andi	$a0,$a0,0xffff
    # Line 1118
    andi	$a2,$a2,0xffff
    # Line 1120
    andi	$a1,$a1,0xffff
    # Line 1121
    dsll	$t0,$a0,0x10
    # Line 1122
    dsll	$a2,$a2,0x10
    # Line 1123
    or	$t1,$t0,$a1
    # Line 1124
    lui	$t0,0x1d00
    ori	$t0,$t0,0x706
    # Line 1125
    lui	$v0,0x7
    # Line 1127
    dsll32	$t1,$t1,0x0
    # Line 1128
    sw	$t0,16512($v0)
    # Line 1129
    or	$t1,$t1,$a2
    # Line 1130
    jr	$ra
    # Line 1131
    sd	$t1,16512($v0)
.end __glMgrim_Normal3s

# Function: __glMgrim_Normal3sv
# Declared: Line 1143 (Source lines: 1143-1154)
# Address: 0x0dbda988 - 0x0dbda9b8 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_Normal3sv
.ent __glMgrim_Normal3sv
__glMgrim_Normal3sv:
    # Line 1143
    lwl	$t0,0($a0)
    # Line 1144
    lwr	$t0,3($a0)
    # Line 1145
    lhu	$t2,4($a0)
    # Line 1147
    dsll32	$t0,$t0,0x0
    # Line 1148
    dsll	$t2,$t2,0x10
    # Line 1149
    lui	$t1,0x1d00
    ori	$t1,$t1,0x706
    # Line 1150
    or	$t0,$t0,$t2
    # Line 1151
    lui	$v0,0x7
    # Line 1152
    sw	$t1,16512($v0)
    # Line 1153
    jr	$ra
    # Line 1154
    sd	$t0,16512($v0)
.end __glMgrim_Normal3sv

# Function: __glMgrim_RasterPos2d
# Declared: Line 1169 (Source lines: 1169-1174)
# Address: 0x0dbda9b8 - 0x0dbda9d4 (Size: 28 bytes, Frame: 0)
.globl __glMgrim_RasterPos2d
.ent __glMgrim_RasterPos2d
__glMgrim_RasterPos2d:
    # Line 1169
    lui	$v0,0x7
    # Line 1170
    lui	$t0,0x5200
    ori	$t0,$t0,0x3810
    # Line 1171
    sw	$t0,16512($v0)
    # Line 1172
    sdc1	$f12,16512($v0)
    # Line 1173
    jr	$ra
    # Line 1174
    sdc1	$f13,16512($v0)
.end __glMgrim_RasterPos2d

# Function: __glMgrim_RasterPos2dv
# Declared: Line 1180 (Source lines: 1180-1187)
# Address: 0x0dbda9d4 - 0x0dbda9f8 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_RasterPos2dv
.ent __glMgrim_RasterPos2dv
__glMgrim_RasterPos2dv:
    # Line 1180
    lui	$v0,0x7
    # Line 1181
    lui	$t0,0x5200
    ori	$t0,$t0,0x3810
    # Line 1182
    ldc1	$f4,0($a0)
    # Line 1183
    ldc1	$f5,8($a0)
    # Line 1184
    sw	$t0,16512($v0)
    # Line 1185
    sdc1	$f4,16512($v0)
    # Line 1186
    jr	$ra
    # Line 1187
    sdc1	$f5,16512($v0)
.end __glMgrim_RasterPos2dv

# Function: __glMgrim_RasterPos2f
# Declared: Line 1194 (Source lines: 1194-1204)
# Address: 0x0dbda9f8 - 0x0dbdaa28 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_RasterPos2f
.ent __glMgrim_RasterPos2f
__glMgrim_RasterPos2f:
    # Line 1194
    mfc1	$t1,$f12
    # Line 1195
    mfc1	$t2,$f13
    # Line 1196
    dsll32	$t1,$t1,0x0
    # Line 1197
    dsll32	$t2,$t2,0x0
    # Line 1198
    lui	$t0,0x4000
    ori	$t0,$t0,0x3808
    # Line 1199
    dsrl32	$t2,$t2,0x0
    # Line 1200
    lui	$v0,0x7
    # Line 1201
    or	$t1,$t1,$t2
    # Line 1202
    sw	$t0,16512($v0)
    # Line 1203
    jr	$ra
    # Line 1204
    sd	$t1,16512($v0)
.end __glMgrim_RasterPos2f

# Function: __glMgrim_RasterPos2fv
# Declared: Line 1218 (Source lines: 1218-1224)
# Address: 0x0dbdaa28 - 0x0dbdaa48 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_RasterPos2fv
.ent __glMgrim_RasterPos2fv
__glMgrim_RasterPos2fv:
    # Line 1218
    lui	$t2,0x4000
    ori	$t2,$t2,0x3808
    # Line 1219
    lui	$v0,0x7
    # Line 1220
    ldl	$t0,0($a0)
    # Line 1221
    ldr	$t0,7($a0)
    # Line 1222
    sw	$t2,16512($v0)
    # Line 1223
    jr	$ra
    # Line 1224
    sd	$t0,16512($v0)
.end __glMgrim_RasterPos2fv

# Function: __glMgrim_RasterPos2i
# Declared: Line 1231 (Source lines: 1231-1243)
# Address: 0x0dbdaa48 - 0x0dbdaa70 (Size: 40 bytes, Frame: 0)
.globl __glMgrim_RasterPos2i
.ent __glMgrim_RasterPos2i
__glMgrim_RasterPos2i:
    # Line 1231
    dsll32	$a1,$a1,0x0
    # Line 1233
    lui	$t0,0x5800
    ori	$t0,$t0,0x3808
    # Line 1234
    lui	$v0,0x7
    # Line 1236
    dsrl32	$a1,$a1,0x0
    # Line 1239
    dsll32	$a0,$a0,0x0
    # Line 1240
    sw	$t0,16512($v0)
    # Line 1241
    or	$a0,$a0,$a1
    # Line 1242
    jr	$ra
    # Line 1243
    sd	$a0,16512($v0)
.end __glMgrim_RasterPos2i

# Function: __glMgrim_RasterPos2iv
# Declared: Line 1255 (Source lines: 1255-1261)
# Address: 0x0dbdaa70 - 0x0dbdaa90 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_RasterPos2iv
.ent __glMgrim_RasterPos2iv
__glMgrim_RasterPos2iv:
    # Line 1255
    lui	$t2,0x5800
    ori	$t2,$t2,0x3808
    # Line 1256
    lui	$v0,0x7
    # Line 1257
    ldl	$t0,0($a0)
    # Line 1258
    ldr	$t0,7($a0)
    # Line 1259
    sw	$t2,16512($v0)
    # Line 1260
    jr	$ra
    # Line 1261
    sd	$t0,16512($v0)
.end __glMgrim_RasterPos2iv

# Function: __glMgrim_RasterPos2s
# Declared: Line 1268 (Source lines: 1268-1279)
# Address: 0x0dbdaa90 - 0x0dbdaabc (Size: 44 bytes, Frame: 0)
.globl __glMgrim_RasterPos2s
.ent __glMgrim_RasterPos2s
__glMgrim_RasterPos2s:
    # Line 1268
    andi	$a0,$a0,0xffff
    # Line 1270
    andi	$a1,$a1,0xffff
    # Line 1271
    lui	$t2,0x5900
    ori	$t2,$t2,0x3804
    # Line 1272
    dsll	$t3,$a0,0x10
    # Line 1273
    or	$t8,$t3,$a1
    # Line 1274
    lui	$v0,0x7
    # Line 1276
    dsll32	$t1,$t2,0x0
    # Line 1277
    or	$t0,$t1,$t8
    # Line 1278
    jr	$ra
    # Line 1279
    sd	$t0,16512($v0)
.end __glMgrim_RasterPos2s

# Function: __glMgrim_RasterPos2sv
# Declared: Line 1290 (Source lines: 1290-1300)
# Address: 0x0dbdaabc - 0x0dbdaae8 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_RasterPos2sv
.ent __glMgrim_RasterPos2sv
__glMgrim_RasterPos2sv:
    # Line 1290
    lwl	$t0,0($a0)
    # Line 1291
    lwr	$t0,3($a0)
    # Line 1292
    lui	$t1,0x5900
    ori	$t1,$t1,0x3804
    # Line 1293
    lui	$v0,0x7
    # Line 1295
    dsll32	$t0,$t0,0x0
    # Line 1296
    dsll32	$t1,$t1,0x0
    # Line 1297
    dsrl32	$t0,$t0,0x0
    # Line 1298
    or	$t0,$t0,$t1
    # Line 1299
    jr	$ra
    # Line 1300
    sd	$t0,16512($v0)
.end __glMgrim_RasterPos2sv

# Function: __glMgrim_RasterPos3d
# Declared: Line 1311 (Source lines: 1311-1317)
# Address: 0x0dbdaae8 - 0x0dbdab08 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_RasterPos3d
.ent __glMgrim_RasterPos3d
__glMgrim_RasterPos3d:
    # Line 1311
    lui	$v0,0x7
    # Line 1312
    lui	$t0,0x3200
    ori	$t0,$t0,0x3818
    # Line 1313
    sw	$t0,16512($v0)
    # Line 1314
    sdc1	$f12,16512($v0)
    # Line 1315
    sdc1	$f13,16512($v0)
    # Line 1316
    jr	$ra
    # Line 1317
    sdc1	$f14,16512($v0)
.end __glMgrim_RasterPos3d

# Function: __glMgrim_RasterPos3dv
# Declared: Line 1323 (Source lines: 1323-1332)
# Address: 0x0dbdab08 - 0x0dbdab34 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_RasterPos3dv
.ent __glMgrim_RasterPos3dv
__glMgrim_RasterPos3dv:
    # Line 1323
    lui	$v0,0x7
    # Line 1324
    lui	$t0,0x3200
    ori	$t0,$t0,0x3818
    # Line 1325
    ldc1	$f4,0($a0)
    # Line 1326
    ldc1	$f5,8($a0)
    # Line 1327
    ldc1	$f6,16($a0)
    # Line 1328
    sw	$t0,16512($v0)
    # Line 1329
    sdc1	$f4,16512($v0)
    # Line 1330
    sdc1	$f5,16512($v0)
    # Line 1331
    jr	$ra
    # Line 1332
    sdc1	$f6,16512($v0)
.end __glMgrim_RasterPos3dv

# Function: __glMgrim_RasterPos3f
# Declared: Line 1339 (Source lines: 1339-1354)
# Address: 0x0dbdab34 - 0x0dbdab78 (Size: 68 bytes, Frame: 0)
.globl __glMgrim_RasterPos3f
.ent __glMgrim_RasterPos3f
__glMgrim_RasterPos3f:
    # Line 1339
    lui	$t0,0x2000
    ori	$t0,$t0,0x380c
    # Line 1340
    mfc1	$t1,$f12
    # Line 1341
    mfc1	$t2,$f13
    # Line 1342
    mfc1	$t3,$f14
    # Line 1343
    dsll32	$t0,$t0,0x0
    # Line 1344
    dsll32	$t1,$t1,0x0
    # Line 1345
    dsll32	$t2,$t2,0x0
    # Line 1346
    dsll32	$t3,$t3,0x0
    # Line 1347
    dsrl32	$t1,$t1,0x0
    # Line 1348
    dsrl32	$t3,$t3,0x0
    # Line 1349
    lui	$v0,0x7
    # Line 1350
    or	$t0,$t0,$t1
    # Line 1351
    or	$t2,$t2,$t3
    # Line 1352
    sd	$t0,16512($v0)
    # Line 1353
    jr	$ra
    # Line 1354
    sd	$t2,16512($v0)
.end __glMgrim_RasterPos3f

# Function: __glMgrim_RasterPos3fv
# Declared: Line 1369 (Source lines: 1369-1381)
# Address: 0x0dbdab78 - 0x0dbdaba4 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_RasterPos3fv
.ent __glMgrim_RasterPos3fv
__glMgrim_RasterPos3fv:
    # Line 1369
    lui	$t0,0x2000
    ori	$t0,$t0,0x380c
    # Line 1370
    lui	$v0,0x7
    # Line 1371
    lwu	$t1,0($a0)
    # Line 1373
    dsll32	$t0,$t0,0x0
    # Line 1375
    ldl	$t2,4($a0)
    # Line 1376
    ldr	$t2,11($a0)
    # Line 1378
    or	$t0,$t0,$t1
    # Line 1379
    sd	$t0,16512($v0)
    # Line 1380
    jr	$ra
    # Line 1381
    sd	$t2,16512($v0)
.end __glMgrim_RasterPos3fv

# Function: __glMgrim_RasterPos3i
# Declared: Line 1394 (Source lines: 1394-1412)
# Address: 0x0dbdaba4 - 0x0dbdabdc (Size: 56 bytes, Frame: 0)
.globl __glMgrim_RasterPos3i
.ent __glMgrim_RasterPos3i
__glMgrim_RasterPos3i:
    # Line 1394
    dsll32	$a0,$a0,0x0
    # Line 1395
    dsll32	$a2,$a2,0x0
    # Line 1397
    lui	$t0,0x3800
    ori	$t0,$t0,0x380c
    # Line 1398
    lui	$v0,0x7
    # Line 1400
    dsll32	$a1,$a1,0x0
    # Line 1401
    dsll32	$t0,$t0,0x0
    # Line 1404
    dsrl32	$a0,$a0,0x0
    # Line 1405
    dsrl32	$a2,$a2,0x0
    # Line 1408
    or	$t0,$a0,$t0
    # Line 1409
    or	$a1,$a1,$a2
    # Line 1410
    sd	$t0,16512($v0)
    # Line 1411
    jr	$ra
    # Line 1412
    sd	$a1,16512($v0)
.end __glMgrim_RasterPos3i

# Function: __glMgrim_RasterPos3iv
# Declared: Line 1425 (Source lines: 1425-1437)
# Address: 0x0dbdabdc - 0x0dbdac08 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_RasterPos3iv
.ent __glMgrim_RasterPos3iv
__glMgrim_RasterPos3iv:
    # Line 1425
    lui	$t0,0x3800
    ori	$t0,$t0,0x380c
    # Line 1426
    lui	$v0,0x7
    # Line 1427
    lwu	$t1,0($a0)
    # Line 1429
    dsll32	$t0,$t0,0x0
    # Line 1431
    ldl	$t2,4($a0)
    # Line 1432
    ldr	$t2,11($a0)
    # Line 1434
    or	$t0,$t0,$t1
    # Line 1435
    sd	$t0,16512($v0)
    # Line 1436
    jr	$ra
    # Line 1437
    sd	$t2,16512($v0)
.end __glMgrim_RasterPos3iv

# Function: __glMgrim_RasterPos3s
# Declared: Line 1450 (Source lines: 1450-1464)
# Address: 0x0dbdac08 - 0x0dbdac40 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_RasterPos3s
.ent __glMgrim_RasterPos3s
__glMgrim_RasterPos3s:
    # Line 1450
    andi	$a0,$a0,0xffff
    # Line 1451
    andi	$a2,$a2,0xffff
    # Line 1453
    andi	$a1,$a1,0xffff
    # Line 1454
    dsll	$t0,$a0,0x10
    # Line 1455
    dsll	$a2,$a2,0x10
    # Line 1456
    or	$t1,$t0,$a1
    # Line 1457
    lui	$t0,0x3900
    ori	$t0,$t0,0x3806
    # Line 1458
    lui	$v0,0x7
    # Line 1460
    dsll32	$t1,$t1,0x0
    # Line 1461
    sw	$t0,16512($v0)
    # Line 1462
    or	$t1,$t1,$a2
    # Line 1463
    jr	$ra
    # Line 1464
    sd	$t1,16512($v0)
.end __glMgrim_RasterPos3s

# Function: __glMgrim_RasterPos3sv
# Declared: Line 1476 (Source lines: 1476-1487)
# Address: 0x0dbdac40 - 0x0dbdac70 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_RasterPos3sv
.ent __glMgrim_RasterPos3sv
__glMgrim_RasterPos3sv:
    # Line 1476
    lwl	$t0,0($a0)
    # Line 1477
    lwr	$t0,3($a0)
    # Line 1478
    lhu	$t2,4($a0)
    # Line 1480
    dsll32	$t0,$t0,0x0
    # Line 1481
    dsll	$t2,$t2,0x10
    # Line 1482
    lui	$t1,0x3900
    ori	$t1,$t1,0x3806
    # Line 1483
    or	$t0,$t0,$t2
    # Line 1484
    lui	$v0,0x7
    # Line 1485
    sw	$t1,16512($v0)
    # Line 1486
    jr	$ra
    # Line 1487
    sd	$t0,16512($v0)
.end __glMgrim_RasterPos3sv

# Function: __glMgrim_RasterPos4d
# Declared: Line 1502 (Source lines: 1502-1509)
# Address: 0x0dbdac70 - 0x0dbdac94 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_RasterPos4d
.ent __glMgrim_RasterPos4d
__glMgrim_RasterPos4d:
    # Line 1502
    lui	$v0,0x7
    # Line 1503
    lui	$t0,0x1200
    ori	$t0,$t0,0x3820
    # Line 1504
    sw	$t0,16512($v0)
    # Line 1505
    sdc1	$f12,16512($v0)
    # Line 1506
    sdc1	$f13,16512($v0)
    # Line 1507
    sdc1	$f14,16512($v0)
    # Line 1508
    jr	$ra
    # Line 1509
    sdc1	$f15,16512($v0)
.end __glMgrim_RasterPos4d

# Function: __glMgrim_RasterPos4dv
# Declared: Line 1515 (Source lines: 1515-1526)
# Address: 0x0dbdac94 - 0x0dbdacc8 (Size: 52 bytes, Frame: 0)
.globl __glMgrim_RasterPos4dv
.ent __glMgrim_RasterPos4dv
__glMgrim_RasterPos4dv:
    # Line 1515
    lui	$v0,0x7
    # Line 1516
    lui	$t0,0x1200
    ori	$t0,$t0,0x3820
    # Line 1517
    ldc1	$f4,0($a0)
    # Line 1518
    ldc1	$f5,8($a0)
    # Line 1519
    ldc1	$f6,16($a0)
    # Line 1520
    ldc1	$f7,24($a0)
    # Line 1521
    sw	$t0,16512($v0)
    # Line 1522
    sdc1	$f4,16512($v0)
    # Line 1523
    sdc1	$f5,16512($v0)
    # Line 1524
    sdc1	$f6,16512($v0)
    # Line 1525
    jr	$ra
    # Line 1526
    sdc1	$f7,16512($v0)
.end __glMgrim_RasterPos4dv

# Function: __glMgrim_RasterPos4f
# Declared: Line 1533 (Source lines: 1533-1550)
# Address: 0x0dbdacc8 - 0x0dbdad10 (Size: 72 bytes, Frame: 0)
.globl __glMgrim_RasterPos4f
.ent __glMgrim_RasterPos4f
__glMgrim_RasterPos4f:
    # Line 1533
    li	$t0,14352
    # Line 1534
    lui	$v0,0x7
    # Line 1535
    mfc1	$t1,$f12
    # Line 1536
    mfc1	$t2,$f13
    # Line 1537
    mfc1	$t3,$f14
    # Line 1538
    mfc1	$t8,$f15
    # Line 1539
    dsll32	$t1,$t1,0x0
    # Line 1540
    dsll32	$t2,$t2,0x0
    # Line 1541
    dsll32	$t8,$t8,0x0
    # Line 1542
    dsll32	$t3,$t3,0x0
    # Line 1543
    dsrl32	$t2,$t2,0x0
    # Line 1544
    dsrl32	$t8,$t8,0x0
    # Line 1545
    or	$t1,$t1,$t2
    # Line 1546
    or	$t3,$t3,$t8
    # Line 1547
    sw	$t0,16512($v0)
    # Line 1548
    sd	$t1,16512($v0)
    # Line 1549
    jr	$ra
    # Line 1550
    sd	$t3,16512($v0)
.end __glMgrim_RasterPos4f

# Function: __glMgrim_RasterPos4fv
# Declared: Line 1566 (Source lines: 1566-1575)
# Address: 0x0dbdad10 - 0x0dbdad38 (Size: 40 bytes, Frame: 0)
.globl __glMgrim_RasterPos4fv
.ent __glMgrim_RasterPos4fv
__glMgrim_RasterPos4fv:
    # Line 1566
    li	$t2,14352
    # Line 1567
    lui	$v0,0x7
    # Line 1568
    ldl	$t0,0($a0)
    # Line 1569
    ldr	$t0,7($a0)
    # Line 1570
    ldl	$t1,8($a0)
    # Line 1571
    ldr	$t1,15($a0)
    # Line 1572
    sw	$t2,16512($v0)
    # Line 1573
    sd	$t0,16512($v0)
    # Line 1574
    jr	$ra
    # Line 1575
    sd	$t1,16512($v0)
.end __glMgrim_RasterPos4fv

# Function: __glMgrim_RasterPos4i
# Declared: Line 1582 (Source lines: 1582-1601)
# Address: 0x0dbdad38 - 0x0dbdad74 (Size: 60 bytes, Frame: 0)
.globl __glMgrim_RasterPos4i
.ent __glMgrim_RasterPos4i
__glMgrim_RasterPos4i:
    # Line 1582
    dsll32	$a1,$a1,0x0
    # Line 1583
    dsll32	$a3,$a3,0x0
    # Line 1586
    dsll32	$a0,$a0,0x0
    # Line 1587
    dsll32	$a2,$a2,0x0
    # Line 1590
    dsrl32	$a1,$a1,0x0
    # Line 1591
    dsrl32	$a3,$a3,0x0
    # Line 1593
    lui	$v0,0x7
    # Line 1594
    lui	$t0,0x1800
    ori	$t0,$t0,0x3810
    # Line 1596
    or	$a0,$a0,$a1
    # Line 1597
    or	$a2,$a2,$a3
    # Line 1598
    sw	$t0,16512($v0)
    # Line 1599
    sd	$a0,16512($v0)
    # Line 1600
    jr	$ra
    # Line 1601
    sd	$a2,16512($v0)
.end __glMgrim_RasterPos4i

# Function: __glMgrim_RasterPos4iv
# Declared: Line 1615 (Source lines: 1615-1624)
# Address: 0x0dbdad74 - 0x0dbdada0 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_RasterPos4iv
.ent __glMgrim_RasterPos4iv
__glMgrim_RasterPos4iv:
    # Line 1615
    lui	$t2,0x1800
    ori	$t2,$t2,0x3810
    # Line 1616
    lui	$v0,0x7
    # Line 1617
    ldl	$t0,0($a0)
    # Line 1618
    ldr	$t0,7($a0)
    # Line 1619
    ldl	$t1,8($a0)
    # Line 1620
    ldr	$t1,15($a0)
    # Line 1621
    sw	$t2,16512($v0)
    # Line 1622
    sd	$t0,16512($v0)
    # Line 1623
    jr	$ra
    # Line 1624
    sd	$t1,16512($v0)
.end __glMgrim_RasterPos4iv

# Function: __glMgrim_RasterPos4s
# Declared: Line 1631 (Source lines: 1631-1647)
# Address: 0x0dbdada0 - 0x0dbdade0 (Size: 64 bytes, Frame: 0)
.globl __glMgrim_RasterPos4s
.ent __glMgrim_RasterPos4s
__glMgrim_RasterPos4s:
    # Line 1631
    andi	$a0,$a0,0xffff
    # Line 1632
    andi	$a2,$a2,0xffff
    # Line 1634
    andi	$a1,$a1,0xffff
    # Line 1635
    andi	$a3,$a3,0xffff
    # Line 1636
    dsll	$t0,$a0,0x10
    # Line 1637
    dsll	$t1,$a2,0x10
    # Line 1638
    lui	$t8,0x1900
    ori	$t8,$t8,0x3808
    # Line 1639
    or	$t2,$t0,$a1
    # Line 1640
    or	$t3,$t1,$a3
    # Line 1642
    dsll32	$t1,$t2,0x0
    # Line 1643
    lui	$v0,0x7
    # Line 1644
    or	$t0,$t1,$t3
    # Line 1645
    sw	$t8,16512($v0)
    # Line 1646
    jr	$ra
    # Line 1647
    sd	$t0,16512($v0)
.end __glMgrim_RasterPos4s

# Function: __glMgrim_RasterPos4sv
# Declared: Line 1660 (Source lines: 1660-1666)
# Address: 0x0dbdade0 - 0x0dbdae00 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_RasterPos4sv
.ent __glMgrim_RasterPos4sv
__glMgrim_RasterPos4sv:
    # Line 1660
    lui	$t1,0x1900
    ori	$t1,$t1,0x3808
    # Line 1661
    lui	$v0,0x7
    # Line 1662
    ldl	$t0,0($a0)
    # Line 1663
    ldr	$t0,7($a0)
    # Line 1664
    sw	$t1,16512($v0)
    # Line 1665
    jr	$ra
    # Line 1666
    sd	$t0,16512($v0)
.end __glMgrim_RasterPos4sv

# Function: __glMgrim_TexCoord1d
# Declared: Line 1672 (Source lines: 1672-1676)
# Address: 0x0dbdae00 - 0x0dbdae18 (Size: 24 bytes, Frame: 0)
.globl __glMgrim_TexCoord1d
.ent __glMgrim_TexCoord1d
__glMgrim_TexCoord1d:
    # Line 1672
    lui	$v0,0x7
    # Line 1673
    lui	$t0,0x7200
    ori	$t0,$t0,0x808
    # Line 1674
    sw	$t0,16512($v0)
    # Line 1675
    jr	$ra
    # Line 1676
    sdc1	$f12,16512($v0)
.end __glMgrim_TexCoord1d

# Function: __glMgrim_TexCoord1dv
# Declared: Line 1682 (Source lines: 1682-1687)
# Address: 0x0dbdae18 - 0x0dbdae34 (Size: 28 bytes, Frame: 0)
.globl __glMgrim_TexCoord1dv
.ent __glMgrim_TexCoord1dv
__glMgrim_TexCoord1dv:
    # Line 1682
    lui	$v0,0x7
    # Line 1683
    lui	$t0,0x7200
    ori	$t0,$t0,0x808
    # Line 1684
    ldc1	$f4,0($a0)
    # Line 1685
    sw	$t0,16512($v0)
    # Line 1686
    jr	$ra
    # Line 1687
    sdc1	$f4,16512($v0)
.end __glMgrim_TexCoord1dv

# Function: __glMgrim_TexCoord1f
# Declared: Line 1694 (Source lines: 1694-1702)
# Address: 0x0dbdae34 - 0x0dbdae5c (Size: 40 bytes, Frame: 0)
.globl __glMgrim_TexCoord1f
.ent __glMgrim_TexCoord1f
__glMgrim_TexCoord1f:
    # Line 1694
    mfc1	$t1,$f12
    # Line 1695
    lui	$t0,0x6000
    ori	$t0,$t0,0x804
    # Line 1696
    dsll32	$t1,$t1,0x0
    # Line 1697
    dsll32	$t0,$t0,0x0
    # Line 1698
    lui	$v0,0x7
    # Line 1699
    dsrl32	$t1,$t1,0x0
    # Line 1700
    or	$t3,$t0,$t1
    # Line 1701
    jr	$ra
    # Line 1702
    sd	$t3,16512($v0)
.end __glMgrim_TexCoord1f

# Function: __glMgrim_TexCoord1fv
# Declared: Line 1715 (Source lines: 1715-1722)
# Address: 0x0dbdae5c - 0x0dbdae7c (Size: 32 bytes, Frame: 0)
.globl __glMgrim_TexCoord1fv
.ent __glMgrim_TexCoord1fv
__glMgrim_TexCoord1fv:
    # Line 1715
    lwu	$t0,0($a0)
    # Line 1717
    lui	$t1,0x6000
    ori	$t1,$t1,0x804
    # Line 1718
    dsll32	$t1,$t1,0x0
    # Line 1719
    lui	$v0,0x7
    # Line 1720
    or	$t0,$t0,$t1
    # Line 1721
    jr	$ra
    # Line 1722
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord1fv

# Function: __glMgrim_TexCoord1i
# Declared: Line 1736 (Source lines: 1736-1747)
# Address: 0x0dbdae7c - 0x0dbdaea0 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_TexCoord1i
.ent __glMgrim_TexCoord1i
__glMgrim_TexCoord1i:
    # Line 1736
    dsll32	$a0,$a0,0x0
    # Line 1738
    lui	$t0,0x7800
    ori	$t0,$t0,0x804
    # Line 1740
    dsrl32	$a0,$a0,0x0
    # Line 1742
    lui	$v1,0x7
    # Line 1744
    dsll32	$t0,$t0,0x0
    # Line 1745
    or	$t1,$a0,$t0
    # Line 1746
    jr	$ra
    # Line 1747
    sd	$t1,16512($v1)
.end __glMgrim_TexCoord1i

# Function: __glMgrim_TexCoord1iv
# Declared: Line 1758 (Source lines: 1758-1765)
# Address: 0x0dbdaea0 - 0x0dbdaec0 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_TexCoord1iv
.ent __glMgrim_TexCoord1iv
__glMgrim_TexCoord1iv:
    # Line 1758
    lwu	$t0,0($a0)
    # Line 1760
    lui	$t1,0x7800
    ori	$t1,$t1,0x804
    # Line 1761
    dsll32	$t1,$t1,0x0
    # Line 1762
    lui	$v0,0x7
    # Line 1763
    or	$t0,$t0,$t1
    # Line 1764
    jr	$ra
    # Line 1765
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord1iv

# Function: __glMgrim_TexCoord1s
# Declared: Line 1778 (Source lines: 1778-1786)
# Address: 0x0dbdaec0 - 0x0dbdaee4 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_TexCoord1s
.ent __glMgrim_TexCoord1s
__glMgrim_TexCoord1s:
    # Line 1778
    andi	$t0,$a0,0xffff
    # Line 1779
    lui	$t1,0x7900
    ori	$t1,$t1,0x802
    # Line 1780
    dsll	$t2,$t0,0x10
    # Line 1781
    lui	$v0,0x7
    # Line 1783
    dsll32	$t3,$t1,0x0
    # Line 1784
    or	$t0,$t3,$t2
    # Line 1785
    jr	$ra
    # Line 1786
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord1s

# Function: __glMgrim_TexCoord1sv
# Declared: Line 1797 (Source lines: 1797-1805)
# Address: 0x0dbdaee4 - 0x0dbdaf08 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_TexCoord1sv
.ent __glMgrim_TexCoord1sv
__glMgrim_TexCoord1sv:
    # Line 1797
    lui	$t1,0x7900
    ori	$t1,$t1,0x802
    # Line 1798
    lhu	$t0,0($a0)
    # Line 1799
    dsll	$t0,$t0,0x10
    # Line 1801
    dsll32	$t1,$t1,0x0
    # Line 1802
    lui	$v0,0x7
    # Line 1803
    or	$t0,$t0,$t1
    # Line 1804
    jr	$ra
    # Line 1805
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord1sv

# Function: __glMgrim_TexCoord2d
# Declared: Line 1817 (Source lines: 1817-1822)
# Address: 0x0dbdaf08 - 0x0dbdaf24 (Size: 28 bytes, Frame: 0)
.globl __glMgrim_TexCoord2d
.ent __glMgrim_TexCoord2d
__glMgrim_TexCoord2d:
    # Line 1817
    lui	$v0,0x7
    # Line 1818
    lui	$t0,0x5200
    ori	$t0,$t0,0x810
    # Line 1819
    sw	$t0,16512($v0)
    # Line 1820
    sdc1	$f12,16512($v0)
    # Line 1821
    jr	$ra
    # Line 1822
    sdc1	$f13,16512($v0)
.end __glMgrim_TexCoord2d

# Function: __glMgrim_TexCoord2dv
# Declared: Line 1828 (Source lines: 1828-1835)
# Address: 0x0dbdaf24 - 0x0dbdaf48 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_TexCoord2dv
.ent __glMgrim_TexCoord2dv
__glMgrim_TexCoord2dv:
    # Line 1828
    lui	$v0,0x7
    # Line 1829
    lui	$t0,0x5200
    ori	$t0,$t0,0x810
    # Line 1830
    ldc1	$f4,0($a0)
    # Line 1831
    ldc1	$f5,8($a0)
    # Line 1832
    sw	$t0,16512($v0)
    # Line 1833
    sdc1	$f4,16512($v0)
    # Line 1834
    jr	$ra
    # Line 1835
    sdc1	$f5,16512($v0)
.end __glMgrim_TexCoord2dv

# Function: __glMgrim_TexCoord2f
# Declared: Line 1842 (Source lines: 1842-1852)
# Address: 0x0dbdaf48 - 0x0dbdaf78 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_TexCoord2f
.ent __glMgrim_TexCoord2f
__glMgrim_TexCoord2f:
    # Line 1842
    mfc1	$t1,$f12
    # Line 1843
    mfc1	$t2,$f13
    # Line 1844
    dsll32	$t1,$t1,0x0
    # Line 1845
    dsll32	$t2,$t2,0x0
    # Line 1846
    lui	$t0,0x4000
    ori	$t0,$t0,0x808
    # Line 1847
    dsrl32	$t2,$t2,0x0
    # Line 1848
    lui	$v0,0x7
    # Line 1849
    or	$t1,$t1,$t2
    # Line 1850
    sw	$t0,16512($v0)
    # Line 1851
    jr	$ra
    # Line 1852
    sd	$t1,16512($v0)
.end __glMgrim_TexCoord2f

# Function: __glMgrim_TexCoord2fv
# Declared: Line 1866 (Source lines: 1866-1872)
# Address: 0x0dbdaf78 - 0x0dbdaf98 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_TexCoord2fv
.ent __glMgrim_TexCoord2fv
__glMgrim_TexCoord2fv:
    # Line 1866
    lui	$t2,0x4000
    ori	$t2,$t2,0x808
    # Line 1867
    lui	$v0,0x7
    # Line 1868
    ldl	$t0,0($a0)
    # Line 1869
    ldr	$t0,7($a0)
    # Line 1870
    sw	$t2,16512($v0)
    # Line 1871
    jr	$ra
    # Line 1872
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord2fv

# Function: __glMgrim_TexCoord2i
# Declared: Line 1879 (Source lines: 1879-1891)
# Address: 0x0dbdaf98 - 0x0dbdafc0 (Size: 40 bytes, Frame: 0)
.globl __glMgrim_TexCoord2i
.ent __glMgrim_TexCoord2i
__glMgrim_TexCoord2i:
    # Line 1879
    dsll32	$a1,$a1,0x0
    # Line 1881
    lui	$t0,0x5800
    ori	$t0,$t0,0x808
    # Line 1882
    lui	$v0,0x7
    # Line 1884
    dsrl32	$a1,$a1,0x0
    # Line 1887
    dsll32	$a0,$a0,0x0
    # Line 1888
    sw	$t0,16512($v0)
    # Line 1889
    or	$a0,$a0,$a1
    # Line 1890
    jr	$ra
    # Line 1891
    sd	$a0,16512($v0)
.end __glMgrim_TexCoord2i

# Function: __glMgrim_TexCoord2iv
# Declared: Line 1903 (Source lines: 1903-1909)
# Address: 0x0dbdafc0 - 0x0dbdafe0 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_TexCoord2iv
.ent __glMgrim_TexCoord2iv
__glMgrim_TexCoord2iv:
    # Line 1903
    lui	$t2,0x5800
    ori	$t2,$t2,0x808
    # Line 1904
    lui	$v0,0x7
    # Line 1905
    ldl	$t0,0($a0)
    # Line 1906
    ldr	$t0,7($a0)
    # Line 1907
    sw	$t2,16512($v0)
    # Line 1908
    jr	$ra
    # Line 1909
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord2iv

# Function: __glMgrim_TexCoord2s
# Declared: Line 1916 (Source lines: 1916-1927)
# Address: 0x0dbdafe0 - 0x0dbdb00c (Size: 44 bytes, Frame: 0)
.globl __glMgrim_TexCoord2s
.ent __glMgrim_TexCoord2s
__glMgrim_TexCoord2s:
    # Line 1916
    andi	$a0,$a0,0xffff
    # Line 1918
    andi	$a1,$a1,0xffff
    # Line 1919
    lui	$t2,0x5900
    ori	$t2,$t2,0x804
    # Line 1920
    dsll	$t3,$a0,0x10
    # Line 1921
    or	$t8,$t3,$a1
    # Line 1922
    lui	$v0,0x7
    # Line 1924
    dsll32	$t1,$t2,0x0
    # Line 1925
    or	$t0,$t1,$t8
    # Line 1926
    jr	$ra
    # Line 1927
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord2s

# Function: __glMgrim_TexCoord2sv
# Declared: Line 1938 (Source lines: 1938-1948)
# Address: 0x0dbdb00c - 0x0dbdb038 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_TexCoord2sv
.ent __glMgrim_TexCoord2sv
__glMgrim_TexCoord2sv:
    # Line 1938
    lwl	$t0,0($a0)
    # Line 1939
    lwr	$t0,3($a0)
    # Line 1940
    lui	$t1,0x5900
    ori	$t1,$t1,0x804
    # Line 1941
    lui	$v0,0x7
    # Line 1943
    dsll32	$t0,$t0,0x0
    # Line 1944
    dsll32	$t1,$t1,0x0
    # Line 1945
    dsrl32	$t0,$t0,0x0
    # Line 1946
    or	$t0,$t0,$t1
    # Line 1947
    jr	$ra
    # Line 1948
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord2sv

# Function: __glMgrim_TexCoord3d
# Declared: Line 1959 (Source lines: 1959-1965)
# Address: 0x0dbdb038 - 0x0dbdb058 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_TexCoord3d
.ent __glMgrim_TexCoord3d
__glMgrim_TexCoord3d:
    # Line 1959
    lui	$v0,0x7
    # Line 1960
    lui	$t0,0x3200
    ori	$t0,$t0,0x818
    # Line 1961
    sw	$t0,16512($v0)
    # Line 1962
    sdc1	$f12,16512($v0)
    # Line 1963
    sdc1	$f13,16512($v0)
    # Line 1964
    jr	$ra
    # Line 1965
    sdc1	$f14,16512($v0)
.end __glMgrim_TexCoord3d

# Function: __glMgrim_TexCoord3dv
# Declared: Line 1971 (Source lines: 1971-1980)
# Address: 0x0dbdb058 - 0x0dbdb084 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_TexCoord3dv
.ent __glMgrim_TexCoord3dv
__glMgrim_TexCoord3dv:
    # Line 1971
    lui	$v0,0x7
    # Line 1972
    lui	$t0,0x3200
    ori	$t0,$t0,0x818
    # Line 1973
    ldc1	$f4,0($a0)
    # Line 1974
    ldc1	$f5,8($a0)
    # Line 1975
    ldc1	$f6,16($a0)
    # Line 1976
    sw	$t0,16512($v0)
    # Line 1977
    sdc1	$f4,16512($v0)
    # Line 1978
    sdc1	$f5,16512($v0)
    # Line 1979
    jr	$ra
    # Line 1980
    sdc1	$f6,16512($v0)
.end __glMgrim_TexCoord3dv

# Function: __glMgrim_TexCoord3f
# Declared: Line 1987 (Source lines: 1987-2002)
# Address: 0x0dbdb084 - 0x0dbdb0c8 (Size: 68 bytes, Frame: 0)
.globl __glMgrim_TexCoord3f
.ent __glMgrim_TexCoord3f
__glMgrim_TexCoord3f:
    # Line 1987
    lui	$t0,0x2000
    ori	$t0,$t0,0x80c
    # Line 1988
    mfc1	$t1,$f12
    # Line 1989
    mfc1	$t2,$f13
    # Line 1990
    mfc1	$t3,$f14
    # Line 1991
    dsll32	$t0,$t0,0x0
    # Line 1992
    dsll32	$t1,$t1,0x0
    # Line 1993
    dsll32	$t2,$t2,0x0
    # Line 1994
    dsll32	$t3,$t3,0x0
    # Line 1995
    dsrl32	$t1,$t1,0x0
    # Line 1996
    dsrl32	$t3,$t3,0x0
    # Line 1997
    lui	$v0,0x7
    # Line 1998
    or	$t0,$t0,$t1
    # Line 1999
    or	$t2,$t2,$t3
    # Line 2000
    sd	$t0,16512($v0)
    # Line 2001
    jr	$ra
    # Line 2002
    sd	$t2,16512($v0)
.end __glMgrim_TexCoord3f

# Function: __glMgrim_TexCoord3fv
# Declared: Line 2017 (Source lines: 2017-2029)
# Address: 0x0dbdb0c8 - 0x0dbdb0f4 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_TexCoord3fv
.ent __glMgrim_TexCoord3fv
__glMgrim_TexCoord3fv:
    # Line 2017
    lui	$t0,0x2000
    ori	$t0,$t0,0x80c
    # Line 2018
    lui	$v0,0x7
    # Line 2019
    lwu	$t1,0($a0)
    # Line 2021
    dsll32	$t0,$t0,0x0
    # Line 2023
    ldl	$t2,4($a0)
    # Line 2024
    ldr	$t2,11($a0)
    # Line 2026
    or	$t0,$t0,$t1
    # Line 2027
    sd	$t0,16512($v0)
    # Line 2028
    jr	$ra
    # Line 2029
    sd	$t2,16512($v0)
.end __glMgrim_TexCoord3fv

# Function: __glMgrim_TexCoord3i
# Declared: Line 2042 (Source lines: 2042-2060)
# Address: 0x0dbdb0f4 - 0x0dbdb12c (Size: 56 bytes, Frame: 0)
.globl __glMgrim_TexCoord3i
.ent __glMgrim_TexCoord3i
__glMgrim_TexCoord3i:
    # Line 2042
    dsll32	$a0,$a0,0x0
    # Line 2043
    dsll32	$a2,$a2,0x0
    # Line 2045
    lui	$t0,0x3800
    ori	$t0,$t0,0x80c
    # Line 2046
    lui	$v0,0x7
    # Line 2048
    dsll32	$a1,$a1,0x0
    # Line 2049
    dsll32	$t0,$t0,0x0
    # Line 2052
    dsrl32	$a0,$a0,0x0
    # Line 2053
    dsrl32	$a2,$a2,0x0
    # Line 2056
    or	$t0,$a0,$t0
    # Line 2057
    or	$a1,$a1,$a2
    # Line 2058
    sd	$t0,16512($v0)
    # Line 2059
    jr	$ra
    # Line 2060
    sd	$a1,16512($v0)
.end __glMgrim_TexCoord3i

# Function: __glMgrim_TexCoord3iv
# Declared: Line 2073 (Source lines: 2073-2085)
# Address: 0x0dbdb12c - 0x0dbdb158 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_TexCoord3iv
.ent __glMgrim_TexCoord3iv
__glMgrim_TexCoord3iv:
    # Line 2073
    lui	$t0,0x3800
    ori	$t0,$t0,0x80c
    # Line 2074
    lui	$v0,0x7
    # Line 2075
    lwu	$t1,0($a0)
    # Line 2077
    dsll32	$t0,$t0,0x0
    # Line 2079
    ldl	$t2,4($a0)
    # Line 2080
    ldr	$t2,11($a0)
    # Line 2082
    or	$t0,$t0,$t1
    # Line 2083
    sd	$t0,16512($v0)
    # Line 2084
    jr	$ra
    # Line 2085
    sd	$t2,16512($v0)
.end __glMgrim_TexCoord3iv

# Function: __glMgrim_TexCoord3s
# Declared: Line 2098 (Source lines: 2098-2112)
# Address: 0x0dbdb158 - 0x0dbdb190 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_TexCoord3s
.ent __glMgrim_TexCoord3s
__glMgrim_TexCoord3s:
    # Line 2098
    andi	$a0,$a0,0xffff
    # Line 2099
    andi	$a2,$a2,0xffff
    # Line 2101
    andi	$a1,$a1,0xffff
    # Line 2102
    dsll	$t0,$a0,0x10
    # Line 2103
    dsll	$a2,$a2,0x10
    # Line 2104
    or	$t1,$t0,$a1
    # Line 2105
    lui	$t0,0x3900
    ori	$t0,$t0,0x806
    # Line 2106
    lui	$v0,0x7
    # Line 2108
    dsll32	$t1,$t1,0x0
    # Line 2109
    sw	$t0,16512($v0)
    # Line 2110
    or	$t1,$t1,$a2
    # Line 2111
    jr	$ra
    # Line 2112
    sd	$t1,16512($v0)
.end __glMgrim_TexCoord3s

# Function: __glMgrim_TexCoord3sv
# Declared: Line 2124 (Source lines: 2124-2135)
# Address: 0x0dbdb190 - 0x0dbdb1c0 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_TexCoord3sv
.ent __glMgrim_TexCoord3sv
__glMgrim_TexCoord3sv:
    # Line 2124
    lwl	$t0,0($a0)
    # Line 2125
    lwr	$t0,3($a0)
    # Line 2126
    lhu	$t2,4($a0)
    # Line 2128
    dsll32	$t0,$t0,0x0
    # Line 2129
    dsll	$t2,$t2,0x10
    # Line 2130
    lui	$t1,0x3900
    ori	$t1,$t1,0x806
    # Line 2131
    or	$t0,$t0,$t2
    # Line 2132
    lui	$v0,0x7
    # Line 2133
    sw	$t1,16512($v0)
    # Line 2134
    jr	$ra
    # Line 2135
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord3sv

# Function: __glMgrim_TexCoord4d
# Declared: Line 2150 (Source lines: 2150-2157)
# Address: 0x0dbdb1c0 - 0x0dbdb1e4 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_TexCoord4d
.ent __glMgrim_TexCoord4d
__glMgrim_TexCoord4d:
    # Line 2150
    lui	$v0,0x7
    # Line 2151
    lui	$t0,0x1200
    ori	$t0,$t0,0x820
    # Line 2152
    sw	$t0,16512($v0)
    # Line 2153
    sdc1	$f12,16512($v0)
    # Line 2154
    sdc1	$f13,16512($v0)
    # Line 2155
    sdc1	$f14,16512($v0)
    # Line 2156
    jr	$ra
    # Line 2157
    sdc1	$f15,16512($v0)
.end __glMgrim_TexCoord4d

# Function: __glMgrim_TexCoord4dv
# Declared: Line 2163 (Source lines: 2163-2174)
# Address: 0x0dbdb1e4 - 0x0dbdb218 (Size: 52 bytes, Frame: 0)
.globl __glMgrim_TexCoord4dv
.ent __glMgrim_TexCoord4dv
__glMgrim_TexCoord4dv:
    # Line 2163
    lui	$v0,0x7
    # Line 2164
    lui	$t0,0x1200
    ori	$t0,$t0,0x820
    # Line 2165
    ldc1	$f4,0($a0)
    # Line 2166
    ldc1	$f5,8($a0)
    # Line 2167
    ldc1	$f6,16($a0)
    # Line 2168
    ldc1	$f7,24($a0)
    # Line 2169
    sw	$t0,16512($v0)
    # Line 2170
    sdc1	$f4,16512($v0)
    # Line 2171
    sdc1	$f5,16512($v0)
    # Line 2172
    sdc1	$f6,16512($v0)
    # Line 2173
    jr	$ra
    # Line 2174
    sdc1	$f7,16512($v0)
.end __glMgrim_TexCoord4dv

# Function: __glMgrim_TexCoord4f
# Declared: Line 2181 (Source lines: 2181-2198)
# Address: 0x0dbdb218 - 0x0dbdb260 (Size: 72 bytes, Frame: 0)
.globl __glMgrim_TexCoord4f
.ent __glMgrim_TexCoord4f
__glMgrim_TexCoord4f:
    # Line 2181
    li	$t0,2064
    # Line 2182
    lui	$v0,0x7
    # Line 2183
    mfc1	$t1,$f12
    # Line 2184
    mfc1	$t2,$f13
    # Line 2185
    mfc1	$t3,$f14
    # Line 2186
    mfc1	$t8,$f15
    # Line 2187
    dsll32	$t1,$t1,0x0
    # Line 2188
    dsll32	$t2,$t2,0x0
    # Line 2189
    dsll32	$t8,$t8,0x0
    # Line 2190
    dsll32	$t3,$t3,0x0
    # Line 2191
    dsrl32	$t2,$t2,0x0
    # Line 2192
    dsrl32	$t8,$t8,0x0
    # Line 2193
    or	$t1,$t1,$t2
    # Line 2194
    or	$t3,$t3,$t8
    # Line 2195
    sw	$t0,16512($v0)
    # Line 2196
    sd	$t1,16512($v0)
    # Line 2197
    jr	$ra
    # Line 2198
    sd	$t3,16512($v0)
.end __glMgrim_TexCoord4f

# Function: __glMgrim_TexCoord4fv
# Declared: Line 2214 (Source lines: 2214-2223)
# Address: 0x0dbdb260 - 0x0dbdb288 (Size: 40 bytes, Frame: 0)
.globl __glMgrim_TexCoord4fv
.ent __glMgrim_TexCoord4fv
__glMgrim_TexCoord4fv:
    # Line 2214
    li	$t2,2064
    # Line 2215
    lui	$v0,0x7
    # Line 2216
    ldl	$t0,0($a0)
    # Line 2217
    ldr	$t0,7($a0)
    # Line 2218
    ldl	$t1,8($a0)
    # Line 2219
    ldr	$t1,15($a0)
    # Line 2220
    sw	$t2,16512($v0)
    # Line 2221
    sd	$t0,16512($v0)
    # Line 2222
    jr	$ra
    # Line 2223
    sd	$t1,16512($v0)
.end __glMgrim_TexCoord4fv

# Function: __glMgrim_TexCoord4i
# Declared: Line 2230 (Source lines: 2230-2249)
# Address: 0x0dbdb288 - 0x0dbdb2c4 (Size: 60 bytes, Frame: 0)
.globl __glMgrim_TexCoord4i
.ent __glMgrim_TexCoord4i
__glMgrim_TexCoord4i:
    # Line 2230
    dsll32	$a1,$a1,0x0
    # Line 2231
    dsll32	$a3,$a3,0x0
    # Line 2234
    dsll32	$a0,$a0,0x0
    # Line 2235
    dsll32	$a2,$a2,0x0
    # Line 2238
    dsrl32	$a1,$a1,0x0
    # Line 2239
    dsrl32	$a3,$a3,0x0
    # Line 2241
    lui	$v0,0x7
    # Line 2242
    lui	$t0,0x1800
    ori	$t0,$t0,0x810
    # Line 2244
    or	$a0,$a0,$a1
    # Line 2245
    or	$a2,$a2,$a3
    # Line 2246
    sw	$t0,16512($v0)
    # Line 2247
    sd	$a0,16512($v0)
    # Line 2248
    jr	$ra
    # Line 2249
    sd	$a2,16512($v0)
.end __glMgrim_TexCoord4i

# Function: __glMgrim_TexCoord4iv
# Declared: Line 2263 (Source lines: 2263-2272)
# Address: 0x0dbdb2c4 - 0x0dbdb2f0 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_TexCoord4iv
.ent __glMgrim_TexCoord4iv
__glMgrim_TexCoord4iv:
    # Line 2263
    lui	$t2,0x1800
    ori	$t2,$t2,0x810
    # Line 2264
    lui	$v0,0x7
    # Line 2265
    ldl	$t0,0($a0)
    # Line 2266
    ldr	$t0,7($a0)
    # Line 2267
    ldl	$t1,8($a0)
    # Line 2268
    ldr	$t1,15($a0)
    # Line 2269
    sw	$t2,16512($v0)
    # Line 2270
    sd	$t0,16512($v0)
    # Line 2271
    jr	$ra
    # Line 2272
    sd	$t1,16512($v0)
.end __glMgrim_TexCoord4iv

# Function: __glMgrim_TexCoord4s
# Declared: Line 2279 (Source lines: 2279-2295)
# Address: 0x0dbdb2f0 - 0x0dbdb330 (Size: 64 bytes, Frame: 0)
.globl __glMgrim_TexCoord4s
.ent __glMgrim_TexCoord4s
__glMgrim_TexCoord4s:
    # Line 2279
    andi	$a0,$a0,0xffff
    # Line 2280
    andi	$a2,$a2,0xffff
    # Line 2282
    andi	$a1,$a1,0xffff
    # Line 2283
    andi	$a3,$a3,0xffff
    # Line 2284
    dsll	$t0,$a0,0x10
    # Line 2285
    dsll	$t1,$a2,0x10
    # Line 2286
    lui	$t8,0x1900
    ori	$t8,$t8,0x808
    # Line 2287
    or	$t2,$t0,$a1
    # Line 2288
    or	$t3,$t1,$a3
    # Line 2290
    dsll32	$t1,$t2,0x0
    # Line 2291
    lui	$v0,0x7
    # Line 2292
    or	$t0,$t1,$t3
    # Line 2293
    sw	$t8,16512($v0)
    # Line 2294
    jr	$ra
    # Line 2295
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord4s

# Function: __glMgrim_TexCoord4sv
# Declared: Line 2308 (Source lines: 2308-2314)
# Address: 0x0dbdb330 - 0x0dbdb350 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_TexCoord4sv
.ent __glMgrim_TexCoord4sv
__glMgrim_TexCoord4sv:
    # Line 2308
    lui	$t1,0x1900
    ori	$t1,$t1,0x808
    # Line 2309
    lui	$v0,0x7
    # Line 2310
    ldl	$t0,0($a0)
    # Line 2311
    ldr	$t0,7($a0)
    # Line 2312
    sw	$t1,16512($v0)
    # Line 2313
    jr	$ra
    # Line 2314
    sd	$t0,16512($v0)
.end __glMgrim_TexCoord4sv

# Function: __glMgrim_Vertex2d
# Declared: Line 2320 (Source lines: 2320-2325)
# Address: 0x0dbdb350 - 0x0dbdb36c (Size: 28 bytes, Frame: 0)
.globl __glMgrim_Vertex2d
.ent __glMgrim_Vertex2d
__glMgrim_Vertex2d:
    # Line 2320
    lui	$v0,0x7
    # Line 2321
    lui	$t0,0x5200
    ori	$t0,$t0,0x10
    # Line 2322
    sw	$t0,16512($v0)
    # Line 2323
    sdc1	$f12,16512($v0)
    # Line 2324
    jr	$ra
    # Line 2325
    sdc1	$f13,16512($v0)
.end __glMgrim_Vertex2d

# Function: __glMgrim_Vertex2dv
# Declared: Line 2331 (Source lines: 2331-2338)
# Address: 0x0dbdb36c - 0x0dbdb390 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_Vertex2dv
.ent __glMgrim_Vertex2dv
__glMgrim_Vertex2dv:
    # Line 2331
    lui	$v0,0x7
    # Line 2332
    lui	$t0,0x5200
    ori	$t0,$t0,0x10
    # Line 2333
    ldc1	$f4,0($a0)
    # Line 2334
    ldc1	$f5,8($a0)
    # Line 2335
    sw	$t0,16512($v0)
    # Line 2336
    sdc1	$f4,16512($v0)
    # Line 2337
    jr	$ra
    # Line 2338
    sdc1	$f5,16512($v0)
.end __glMgrim_Vertex2dv

# Function: __glMgrim_Vertex2f
# Declared: Line 2345 (Source lines: 2345-2355)
# Address: 0x0dbdb390 - 0x0dbdb3c0 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_Vertex2f
.ent __glMgrim_Vertex2f
__glMgrim_Vertex2f:
    # Line 2345
    mfc1	$t1,$f12
    # Line 2346
    mfc1	$t2,$f13
    # Line 2347
    dsll32	$t1,$t1,0x0
    # Line 2348
    dsll32	$t2,$t2,0x0
    # Line 2349
    lui	$t0,0x4000
    ori	$t0,$t0,0x8
    # Line 2350
    dsrl32	$t2,$t2,0x0
    # Line 2351
    lui	$v0,0x7
    # Line 2352
    or	$t1,$t1,$t2
    # Line 2353
    sw	$t0,16512($v0)
    # Line 2354
    jr	$ra
    # Line 2355
    sd	$t1,16512($v0)
.end __glMgrim_Vertex2f

# Function: __glMgrim_Vertex2fv
# Declared: Line 2369 (Source lines: 2369-2375)
# Address: 0x0dbdb3c0 - 0x0dbdb3e0 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_Vertex2fv
.ent __glMgrim_Vertex2fv
__glMgrim_Vertex2fv:
    # Line 2369
    lui	$t2,0x4000
    ori	$t2,$t2,0x8
    # Line 2370
    lui	$v0,0x7
    # Line 2371
    ldl	$t0,0($a0)
    # Line 2372
    ldr	$t0,7($a0)
    # Line 2373
    sw	$t2,16512($v0)
    # Line 2374
    jr	$ra
    # Line 2375
    sd	$t0,16512($v0)
.end __glMgrim_Vertex2fv

# Function: __glMgrim_Vertex2i
# Declared: Line 2382 (Source lines: 2382-2394)
# Address: 0x0dbdb3e0 - 0x0dbdb408 (Size: 40 bytes, Frame: 0)
.globl __glMgrim_Vertex2i
.ent __glMgrim_Vertex2i
__glMgrim_Vertex2i:
    # Line 2382
    dsll32	$a1,$a1,0x0
    # Line 2384
    lui	$t0,0x5800
    ori	$t0,$t0,0x8
    # Line 2385
    lui	$v0,0x7
    # Line 2387
    dsrl32	$a1,$a1,0x0
    # Line 2390
    dsll32	$a0,$a0,0x0
    # Line 2391
    sw	$t0,16512($v0)
    # Line 2392
    or	$a0,$a0,$a1
    # Line 2393
    jr	$ra
    # Line 2394
    sd	$a0,16512($v0)
.end __glMgrim_Vertex2i

# Function: __glMgrim_Vertex2iv
# Declared: Line 2406 (Source lines: 2406-2412)
# Address: 0x0dbdb408 - 0x0dbdb428 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_Vertex2iv
.ent __glMgrim_Vertex2iv
__glMgrim_Vertex2iv:
    # Line 2406
    lui	$t2,0x5800
    ori	$t2,$t2,0x8
    # Line 2407
    lui	$v0,0x7
    # Line 2408
    ldl	$t0,0($a0)
    # Line 2409
    ldr	$t0,7($a0)
    # Line 2410
    sw	$t2,16512($v0)
    # Line 2411
    jr	$ra
    # Line 2412
    sd	$t0,16512($v0)
.end __glMgrim_Vertex2iv

# Function: __glMgrim_Vertex2s
# Declared: Line 2419 (Source lines: 2419-2430)
# Address: 0x0dbdb428 - 0x0dbdb454 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Vertex2s
.ent __glMgrim_Vertex2s
__glMgrim_Vertex2s:
    # Line 2419
    andi	$a0,$a0,0xffff
    # Line 2421
    andi	$a1,$a1,0xffff
    # Line 2422
    lui	$t2,0x5900
    ori	$t2,$t2,0x4
    # Line 2423
    dsll	$t3,$a0,0x10
    # Line 2424
    or	$t8,$t3,$a1
    # Line 2425
    lui	$v0,0x7
    # Line 2427
    dsll32	$t1,$t2,0x0
    # Line 2428
    or	$t0,$t1,$t8
    # Line 2429
    jr	$ra
    # Line 2430
    sd	$t0,16512($v0)
.end __glMgrim_Vertex2s

# Function: __glMgrim_Vertex2sv
# Declared: Line 2441 (Source lines: 2441-2451)
# Address: 0x0dbdb454 - 0x0dbdb480 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Vertex2sv
.ent __glMgrim_Vertex2sv
__glMgrim_Vertex2sv:
    # Line 2441
    lwl	$t0,0($a0)
    # Line 2442
    lwr	$t0,3($a0)
    # Line 2443
    lui	$t1,0x5900
    ori	$t1,$t1,0x4
    # Line 2444
    lui	$v0,0x7
    # Line 2446
    dsll32	$t0,$t0,0x0
    # Line 2447
    dsll32	$t1,$t1,0x0
    # Line 2448
    dsrl32	$t0,$t0,0x0
    # Line 2449
    or	$t0,$t0,$t1
    # Line 2450
    jr	$ra
    # Line 2451
    sd	$t0,16512($v0)
.end __glMgrim_Vertex2sv

# Function: __glMgrim_Vertex3d
# Declared: Line 2462 (Source lines: 2462-2468)
# Address: 0x0dbdb480 - 0x0dbdb4a0 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_Vertex3d
.ent __glMgrim_Vertex3d
__glMgrim_Vertex3d:
    # Line 2462
    lui	$v0,0x7
    # Line 2463
    lui	$t0,0x3200
    ori	$t0,$t0,0x18
    # Line 2464
    sw	$t0,16512($v0)
    # Line 2465
    sdc1	$f12,16512($v0)
    # Line 2466
    sdc1	$f13,16512($v0)
    # Line 2467
    jr	$ra
    # Line 2468
    sdc1	$f14,16512($v0)
.end __glMgrim_Vertex3d

# Function: __glMgrim_Vertex3dv
# Declared: Line 2474 (Source lines: 2474-2483)
# Address: 0x0dbdb4a0 - 0x0dbdb4cc (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Vertex3dv
.ent __glMgrim_Vertex3dv
__glMgrim_Vertex3dv:
    # Line 2474
    lui	$v0,0x7
    # Line 2475
    lui	$t0,0x3200
    ori	$t0,$t0,0x18
    # Line 2476
    ldc1	$f4,0($a0)
    # Line 2477
    ldc1	$f5,8($a0)
    # Line 2478
    ldc1	$f6,16($a0)
    # Line 2479
    sw	$t0,16512($v0)
    # Line 2480
    sdc1	$f4,16512($v0)
    # Line 2481
    sdc1	$f5,16512($v0)
    # Line 2482
    jr	$ra
    # Line 2483
    sdc1	$f6,16512($v0)
.end __glMgrim_Vertex3dv

# Function: __glMgrim_Vertex3f
# Declared: Line 2490 (Source lines: 2490-2505)
# Address: 0x0dbdb4cc - 0x0dbdb510 (Size: 68 bytes, Frame: 0)
.globl __glMgrim_Vertex3f
.ent __glMgrim_Vertex3f
__glMgrim_Vertex3f:
    # Line 2490
    lui	$t0,0x2000
    ori	$t0,$t0,0xc
    # Line 2491
    mfc1	$t1,$f12
    # Line 2492
    mfc1	$t2,$f13
    # Line 2493
    mfc1	$t3,$f14
    # Line 2494
    dsll32	$t0,$t0,0x0
    # Line 2495
    dsll32	$t1,$t1,0x0
    # Line 2496
    dsll32	$t2,$t2,0x0
    # Line 2497
    dsll32	$t3,$t3,0x0
    # Line 2498
    dsrl32	$t1,$t1,0x0
    # Line 2499
    dsrl32	$t3,$t3,0x0
    # Line 2500
    lui	$v0,0x7
    # Line 2501
    or	$t0,$t0,$t1
    # Line 2502
    or	$t2,$t2,$t3
    # Line 2503
    sd	$t0,16512($v0)
    # Line 2504
    jr	$ra
    # Line 2505
    sd	$t2,16512($v0)
.end __glMgrim_Vertex3f

# Function: __glMgrim_Vertex3fv
# Declared: Line 2520 (Source lines: 2520-2532)
# Address: 0x0dbdb510 - 0x0dbdb53c (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Vertex3fv
.ent __glMgrim_Vertex3fv
__glMgrim_Vertex3fv:
    # Line 2520
    lui	$t0,0x2000
    ori	$t0,$t0,0xc
    # Line 2521
    lui	$v0,0x7
    # Line 2522
    lwu	$t1,0($a0)
    # Line 2524
    dsll32	$t0,$t0,0x0
    # Line 2526
    ldl	$t2,4($a0)
    # Line 2527
    ldr	$t2,11($a0)
    # Line 2529
    or	$t0,$t0,$t1
    # Line 2530
    sd	$t0,16512($v0)
    # Line 2531
    jr	$ra
    # Line 2532
    sd	$t2,16512($v0)
.end __glMgrim_Vertex3fv

# Function: __glMgrim_Vertex3i
# Declared: Line 2545 (Source lines: 2545-2563)
# Address: 0x0dbdb53c - 0x0dbdb574 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_Vertex3i
.ent __glMgrim_Vertex3i
__glMgrim_Vertex3i:
    # Line 2545
    dsll32	$a0,$a0,0x0
    # Line 2546
    dsll32	$a2,$a2,0x0
    # Line 2548
    lui	$t0,0x3800
    ori	$t0,$t0,0xc
    # Line 2549
    lui	$v0,0x7
    # Line 2551
    dsll32	$a1,$a1,0x0
    # Line 2552
    dsll32	$t0,$t0,0x0
    # Line 2555
    dsrl32	$a0,$a0,0x0
    # Line 2556
    dsrl32	$a2,$a2,0x0
    # Line 2559
    or	$t0,$a0,$t0
    # Line 2560
    or	$a1,$a1,$a2
    # Line 2561
    sd	$t0,16512($v0)
    # Line 2562
    jr	$ra
    # Line 2563
    sd	$a1,16512($v0)
.end __glMgrim_Vertex3i

# Function: __glMgrim_Vertex3iv
# Declared: Line 2576 (Source lines: 2576-2588)
# Address: 0x0dbdb574 - 0x0dbdb5a0 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Vertex3iv
.ent __glMgrim_Vertex3iv
__glMgrim_Vertex3iv:
    # Line 2576
    lui	$t0,0x3800
    ori	$t0,$t0,0xc
    # Line 2577
    lui	$v0,0x7
    # Line 2578
    lwu	$t1,0($a0)
    # Line 2580
    dsll32	$t0,$t0,0x0
    # Line 2582
    ldl	$t2,4($a0)
    # Line 2583
    ldr	$t2,11($a0)
    # Line 2585
    or	$t0,$t0,$t1
    # Line 2586
    sd	$t0,16512($v0)
    # Line 2587
    jr	$ra
    # Line 2588
    sd	$t2,16512($v0)
.end __glMgrim_Vertex3iv

# Function: __glMgrim_Vertex3s
# Declared: Line 2601 (Source lines: 2601-2615)
# Address: 0x0dbdb5a0 - 0x0dbdb5d8 (Size: 56 bytes, Frame: 0)
.globl __glMgrim_Vertex3s
.ent __glMgrim_Vertex3s
__glMgrim_Vertex3s:
    # Line 2601
    andi	$a0,$a0,0xffff
    # Line 2602
    andi	$a2,$a2,0xffff
    # Line 2604
    andi	$a1,$a1,0xffff
    # Line 2605
    dsll	$t0,$a0,0x10
    # Line 2606
    dsll	$a2,$a2,0x10
    # Line 2607
    or	$t1,$t0,$a1
    # Line 2608
    lui	$t0,0x3900
    ori	$t0,$t0,0x6
    # Line 2609
    lui	$v0,0x7
    # Line 2611
    dsll32	$t1,$t1,0x0
    # Line 2612
    sw	$t0,16512($v0)
    # Line 2613
    or	$t1,$t1,$a2
    # Line 2614
    jr	$ra
    # Line 2615
    sd	$t1,16512($v0)
.end __glMgrim_Vertex3s

# Function: __glMgrim_Vertex3sv
# Declared: Line 2627 (Source lines: 2627-2638)
# Address: 0x0dbdb5d8 - 0x0dbdb608 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_Vertex3sv
.ent __glMgrim_Vertex3sv
__glMgrim_Vertex3sv:
    # Line 2627
    lwl	$t0,0($a0)
    # Line 2628
    lwr	$t0,3($a0)
    # Line 2629
    lhu	$t2,4($a0)
    # Line 2631
    dsll32	$t0,$t0,0x0
    # Line 2632
    dsll	$t2,$t2,0x10
    # Line 2633
    lui	$t1,0x3900
    ori	$t1,$t1,0x6
    # Line 2634
    or	$t0,$t0,$t2
    # Line 2635
    lui	$v0,0x7
    # Line 2636
    sw	$t1,16512($v0)
    # Line 2637
    jr	$ra
    # Line 2638
    sd	$t0,16512($v0)
.end __glMgrim_Vertex3sv

# Function: __glMgrim_Vertex4d
# Declared: Line 2653 (Source lines: 2653-2660)
# Address: 0x0dbdb608 - 0x0dbdb62c (Size: 36 bytes, Frame: 0)
.globl __glMgrim_Vertex4d
.ent __glMgrim_Vertex4d
__glMgrim_Vertex4d:
    # Line 2653
    lui	$v0,0x7
    # Line 2654
    lui	$t0,0x1200
    ori	$t0,$t0,0x20
    # Line 2655
    sw	$t0,16512($v0)
    # Line 2656
    sdc1	$f12,16512($v0)
    # Line 2657
    sdc1	$f13,16512($v0)
    # Line 2658
    sdc1	$f14,16512($v0)
    # Line 2659
    jr	$ra
    # Line 2660
    sdc1	$f15,16512($v0)
.end __glMgrim_Vertex4d

# Function: __glMgrim_Vertex4dv
# Declared: Line 2666 (Source lines: 2666-2677)
# Address: 0x0dbdb62c - 0x0dbdb660 (Size: 52 bytes, Frame: 0)
.globl __glMgrim_Vertex4dv
.ent __glMgrim_Vertex4dv
__glMgrim_Vertex4dv:
    # Line 2666
    lui	$v0,0x7
    # Line 2667
    lui	$t0,0x1200
    ori	$t0,$t0,0x20
    # Line 2668
    ldc1	$f4,0($a0)
    # Line 2669
    ldc1	$f5,8($a0)
    # Line 2670
    ldc1	$f6,16($a0)
    # Line 2671
    ldc1	$f7,24($a0)
    # Line 2672
    sw	$t0,16512($v0)
    # Line 2673
    sdc1	$f4,16512($v0)
    # Line 2674
    sdc1	$f5,16512($v0)
    # Line 2675
    sdc1	$f6,16512($v0)
    # Line 2676
    jr	$ra
    # Line 2677
    sdc1	$f7,16512($v0)
.end __glMgrim_Vertex4dv

# Function: __glMgrim_Vertex4f
# Declared: Line 2684 (Source lines: 2684-2701)
# Address: 0x0dbdb660 - 0x0dbdb6a8 (Size: 72 bytes, Frame: 0)
.globl __glMgrim_Vertex4f
.ent __glMgrim_Vertex4f
__glMgrim_Vertex4f:
    # Line 2684
    li	$t0,16
    # Line 2685
    lui	$v0,0x7
    # Line 2686
    mfc1	$t1,$f12
    # Line 2687
    mfc1	$t2,$f13
    # Line 2688
    mfc1	$t3,$f14
    # Line 2689
    mfc1	$t8,$f15
    # Line 2690
    dsll32	$t1,$t1,0x0
    # Line 2691
    dsll32	$t2,$t2,0x0
    # Line 2692
    dsll32	$t8,$t8,0x0
    # Line 2693
    dsll32	$t3,$t3,0x0
    # Line 2694
    dsrl32	$t2,$t2,0x0
    # Line 2695
    dsrl32	$t8,$t8,0x0
    # Line 2696
    or	$t1,$t1,$t2
    # Line 2697
    or	$t3,$t3,$t8
    # Line 2698
    sw	$t0,16512($v0)
    # Line 2699
    sd	$t1,16512($v0)
    # Line 2700
    jr	$ra
    # Line 2701
    sd	$t3,16512($v0)
.end __glMgrim_Vertex4f

# Function: __glMgrim_Vertex4fv
# Declared: Line 2717 (Source lines: 2717-2726)
# Address: 0x0dbdb6a8 - 0x0dbdb6d0 (Size: 40 bytes, Frame: 0)
.globl __glMgrim_Vertex4fv
.ent __glMgrim_Vertex4fv
__glMgrim_Vertex4fv:
    # Line 2717
    li	$t2,16
    # Line 2718
    lui	$v0,0x7
    # Line 2719
    ldl	$t0,0($a0)
    # Line 2720
    ldr	$t0,7($a0)
    # Line 2721
    ldl	$t1,8($a0)
    # Line 2722
    ldr	$t1,15($a0)
    # Line 2723
    sw	$t2,16512($v0)
    # Line 2724
    sd	$t0,16512($v0)
    # Line 2725
    jr	$ra
    # Line 2726
    sd	$t1,16512($v0)
.end __glMgrim_Vertex4fv

# Function: __glMgrim_Vertex4i
# Declared: Line 2733 (Source lines: 2733-2752)
# Address: 0x0dbdb6d0 - 0x0dbdb70c (Size: 60 bytes, Frame: 0)
.globl __glMgrim_Vertex4i
.ent __glMgrim_Vertex4i
__glMgrim_Vertex4i:
    # Line 2733
    dsll32	$a1,$a1,0x0
    # Line 2734
    dsll32	$a3,$a3,0x0
    # Line 2737
    dsll32	$a0,$a0,0x0
    # Line 2738
    dsll32	$a2,$a2,0x0
    # Line 2741
    dsrl32	$a1,$a1,0x0
    # Line 2742
    dsrl32	$a3,$a3,0x0
    # Line 2744
    lui	$v0,0x7
    # Line 2745
    lui	$t0,0x1800
    ori	$t0,$t0,0x10
    # Line 2747
    or	$a0,$a0,$a1
    # Line 2748
    or	$a2,$a2,$a3
    # Line 2749
    sw	$t0,16512($v0)
    # Line 2750
    sd	$a0,16512($v0)
    # Line 2751
    jr	$ra
    # Line 2752
    sd	$a2,16512($v0)
.end __glMgrim_Vertex4i

# Function: __glMgrim_Vertex4iv
# Declared: Line 2766 (Source lines: 2766-2775)
# Address: 0x0dbdb70c - 0x0dbdb738 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_Vertex4iv
.ent __glMgrim_Vertex4iv
__glMgrim_Vertex4iv:
    # Line 2766
    lui	$t2,0x1800
    ori	$t2,$t2,0x10
    # Line 2767
    lui	$v0,0x7
    # Line 2768
    ldl	$t0,0($a0)
    # Line 2769
    ldr	$t0,7($a0)
    # Line 2770
    ldl	$t1,8($a0)
    # Line 2771
    ldr	$t1,15($a0)
    # Line 2772
    sw	$t2,16512($v0)
    # Line 2773
    sd	$t0,16512($v0)
    # Line 2774
    jr	$ra
    # Line 2775
    sd	$t1,16512($v0)
.end __glMgrim_Vertex4iv

# Function: __glMgrim_Vertex4s
# Declared: Line 2782 (Source lines: 2782-2798)
# Address: 0x0dbdb738 - 0x0dbdb778 (Size: 64 bytes, Frame: 0)
.globl __glMgrim_Vertex4s
.ent __glMgrim_Vertex4s
__glMgrim_Vertex4s:
    # Line 2782
    andi	$a0,$a0,0xffff
    # Line 2783
    andi	$a2,$a2,0xffff
    # Line 2785
    andi	$a1,$a1,0xffff
    # Line 2786
    andi	$a3,$a3,0xffff
    # Line 2787
    dsll	$t0,$a0,0x10
    # Line 2788
    dsll	$t1,$a2,0x10
    # Line 2789
    lui	$t8,0x1900
    ori	$t8,$t8,0x8
    # Line 2790
    or	$t2,$t0,$a1
    # Line 2791
    or	$t3,$t1,$a3
    # Line 2793
    dsll32	$t1,$t2,0x0
    # Line 2794
    lui	$v0,0x7
    # Line 2795
    or	$t0,$t1,$t3
    # Line 2796
    sw	$t8,16512($v0)
    # Line 2797
    jr	$ra
    # Line 2798
    sd	$t0,16512($v0)
.end __glMgrim_Vertex4s

# Function: __glMgrim_Vertex4sv
# Declared: Line 2811 (Source lines: 2811-2817)
# Address: 0x0dbdb778 - 0x0dbdb798 (Size: 32 bytes, Frame: 0)
.globl __glMgrim_Vertex4sv
.ent __glMgrim_Vertex4sv
__glMgrim_Vertex4sv:
    # Line 2811
    lui	$t1,0x1900
    ori	$t1,$t1,0x8
    # Line 2812
    lui	$v0,0x7
    # Line 2813
    ldl	$t0,0($a0)
    # Line 2814
    ldr	$t0,7($a0)
    # Line 2815
    sw	$t1,16512($v0)
    # Line 2816
    jr	$ra
    # Line 2817
    sd	$t0,16512($v0)
.end __glMgrim_Vertex4sv

# Function: __glMgrim_Indexub
# Declared: Line 2823 (Source lines: 2823-2831)
# Address: 0x0dbdb798 - 0x0dbdb7bc (Size: 36 bytes, Frame: 0)
.globl __glMgrim_Indexub
.ent __glMgrim_Indexub
__glMgrim_Indexub:
    # Line 2823
    andi	$a0,$a0,0xff
    # Line 2824
    lui	$t1,0x1080
    ori	$t1,$t1,0x201
    # Line 2825
    dsll	$t0,$a0,0x18
    # Line 2827
    dsll32	$t1,$t1,0x0
    # Line 2828
    or	$t1,$t1,$t0
    # Line 2829
    lui	$v0,0x7
    # Line 2830
    jr	$ra
    # Line 2831
    sd	$t1,16512($v0)
.end __glMgrim_Indexub

# Function: __glMgrim_Indexubv
# Declared: Line 2843 (Source lines: 2843-2851)
# Address: 0x0dbdb7bc - 0x0dbdb7e0 (Size: 36 bytes, Frame: 0)
.globl __glMgrim_Indexubv
.ent __glMgrim_Indexubv
__glMgrim_Indexubv:
    # Line 2843
    lui	$t1,0x1080
    ori	$t1,$t1,0x201
    # Line 2844
    lbu	$t0,0($a0)
    # Line 2846
    dsll32	$t1,$t1,0x0
    # Line 2847
    dsll	$t0,$t0,0x18
    # Line 2848
    or	$t0,$t0,$t1
    # Line 2849
    lui	$v0,0x7
    # Line 2850
    jr	$ra
    # Line 2851
    sd	$t0,16512($v0)
.end __glMgrim_Indexubv

