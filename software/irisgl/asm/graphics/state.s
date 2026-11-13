# Source: ../igloo/graphics/state.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/state.c -o state.T
# Total Functions: 30

.text

# Function: __iglooGetAndSetEnable
# Declared: Line 39 (Source lines: 40-81)
# Address: 0x0f1168e4 - 0x0f116a40 (Size: 348 bytes, Frame: 144)
.globl __iglooGetAndSetEnable
.ent __iglooGetAndSetEnable
__iglooGetAndSetEnable:
    # Line 40
    addiu	$sp,$sp,-144
    sd	$s0,48($sp)
    sd	$s3,24($sp)
    sd	$s4,40($sp)
    sd	$s6,32($sp)
    sd	$s8,56($sp)
    sd	$s2,96($sp)
    move	$s2,$a0
    # Line 50
    li	$a0,12
    sd	$s1,80($sp)
    # Line 48
    move	$s1,$zero
    sd	$s5,72($sp)
    sd	$gp,64($sp)
    # Line 40
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-13980 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 50
    la	$t9,__iglooIsExtensionSupported
    # Line 40
    move	$s5,$a2
    sd	$ra,88($sp)
    # Line 50
    jalr	$t9
    sd	$a1,16($sp)
    sd	$s5,0($sp)
    sd	$s7,8($sp)
    # Line 52
    li	$s8,15
    li	$s6,16
    li	$s4,1
    move	$s0,$zero
    # Line 50
    andi	$at,$v0,0xff
    # Line 52
    la	$s3,sub_0f030000
    sd	$at,104($sp)
    b	.L0f1169b0
    addiu	$s3,$s3,-22072
    # Line 62
    la	$t9,__iglooIsEnabled
.L0f116968:
    # Line 61
    lw	$s5,0($s3)
    # Line 62
    jalr	$t9
    move	$a0,$s5
    andi	$a0,$v0,0xff
    beq	$s4,$a0,.L0f1169dc
    ld	$v0,16($sp)
    # Line 64
    move	$a1,$zero
    and	$v0,$s7,$v0
.L0f116988:
    beqz	$v0,.L0f1169e8
    or	$s1,$s1,$a1
    beq	$s4,$a0,.L0f1169a4
    # Line 69
    la	$t9,__iglooSetEnable
    move	$a0,$s5
    jalr	$t9
    li	$a1,1
.L0f1169a4:
    # Line 52
    addiu	$s0,$s0,1
.L0f1169a8:
    beq	$s8,$s0,.L0f116a04
    addiu	$s3,$s3,4
.L0f1169b0:
    sllv	$s7,$s4,$s0
    and	$v1,$s7,$s2
    beqzl	$v1,.L0f1169a8
    addiu	$s0,$s0,1
    # Line 58
    bne	$s7,$s6,.L0f116968
    # Line 62
    la	$t9,__iglooIsEnabled
    ld	$a3,104($sp)
    # Line 58
    bnel	$s4,$a3,.L0f1169a8
    # Line 52
    addiu	$s0,$s0,1
    b	.L0f116968
    # Line 62
    la	$t9,__iglooIsEnabled
.L0f1169dc:
    # Line 64
    move	$a1,$s7
    b	.L0f116988
    and	$v0,$s7,$v0
.L0f1169e8:
    # Line 69
    beqz	$a0,.L0f1169a4
    # Line 74
    la	$t9,__iglooSetEnable
    move	$a0,$s5
    jalr	$t9
    move	$a1,$zero
    b	.L0f1169a8
    # Line 52
    addiu	$s0,$s0,1
.L0f116a04:
    ld	$gp,64($sp)
    # Line 81
    ld	$s2,96($sp)
    ld	$s3,24($sp)
    ld	$s4,40($sp)
    ld	$s5,72($sp)
    ld	$s6,32($sp)
    ld	$s7,8($sp)
    ld	$s0,0($sp)
    ld	$s8,56($sp)
    ld	$ra,88($sp)
    # Line 79
    sw	$s1,0($s0)
    # Line 81
    ld	$s0,48($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __iglooGetAndSetEnable

# Function: __iglooSetSavedEnable
# Declared: Line 83 (Source lines: 84-120)
# Address: 0x0f116a40 - 0x0f116b4c (Size: 268 bytes, Frame: 128)
.globl __iglooSetSavedEnable
.ent __iglooSetSavedEnable
__iglooSetSavedEnable:
    # Line 84
    addiu	$sp,$sp,-128
    sd	$s0,16($sp)
    sd	$s4,8($sp)
    sd	$s5,24($sp)
    sd	$s6,0($sp)
    sd	$s7,32($sp)
    sd	$s8,40($sp)
    sd	$s1,56($sp)
    move	$s1,$a0
    # Line 93
    li	$a0,12
    sd	$s3,72($sp)
    # Line 84
    move	$s3,$a2
    sd	$gp,48($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-14328 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 93
    la	$t9,__iglooIsExtensionSupported
    sd	$s2,80($sp)
    sd	$ra,64($sp)
    jalr	$t9
    # Line 84
    move	$s2,$a1
    # Line 95
    move	$s0,$zero
    li	$s6,15
    li	$s7,16
    li	$s5,1
    la	$s4,sub_0f030000
    andi	$s8,$v0,0xff
    b	.L0f116ac4
    addiu	$s4,$s4,-22072
.L0f116ab4:
    # Line 103
    beq	$s5,$s8,.L0f116ae4
    nop
.L0f116abc:
    # Line 95
    beq	$s6,$s0,.L0f116b04
    addiu	$s4,$s4,4
.L0f116ac4:
    sllv	$a1,$s5,$s0
    addiu	$s0,$s0,1
    # Line 105
    and	$v0,$a1,$s2
    # Line 95
    and	$at,$a1,$s1
    beqz	$at,.L0f116abc
    # Line 105
    and	$a2,$a1,$s3
    # Line 103
    beq	$a1,$s7,.L0f116ab4
    nop
.L0f116ae4:
    # Line 105
    beq	$v0,$a2,.L0f116abc
    lw	$a0,0($s4)
    beqz	$a2,.L0f116b38
    # Line 111
    la	$t9,__iglooSetEnable
    jalr	$t9
    li	$a1,1
    b	.L0f116abc
    nop
.L0f116b04:
    ld	$gp,48($sp)
    # Line 120
    ld	$s0,16($sp)
    ld	$s1,56($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s4,8($sp)
    ld	$s5,24($sp)
    ld	$s6,0($sp)
    ld	$ra,64($sp)
    ld	$s7,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f116b38:
    # Line 113
    la	$t9,__iglooSetEnable
    jalr	$t9
    move	$a1,$zero
    b	.L0f116abc
    nop
.end __iglooSetSavedEnable

# Function: findPackMode
# Declared: Line 122 (Source lines: 126-144)
# Address: 0x0f116b4c - 0x0f116ba8 (Size: 92 bytes, Frame: 0)
.ent findPackMode
findPackMode:
    # Line 126
    li	$at,3317
    beq	$a0,$at,.L0f116b78
    li	$v1,3333
    beq	$a0,$v1,.L0f116b84
    li	$a2,3314
    beq	$a0,$a2,.L0f116b90
    li	$a3,3330
    beq	$a0,$a3,.L0f116b9c
    # Line 141
    move	$v0,$zero
    # Line 144
    jr	$ra
    nop
.L0f116b78:
    # Line 129
    addiu	$v0,$a1,4
    # Line 144
    jr	$ra
    nop
.L0f116b84:
    # Line 132
    move	$v0,$a1
    # Line 144
    jr	$ra
    nop
.L0f116b90:
    # Line 135
    addiu	$v0,$a1,12
    # Line 144
    jr	$ra
    nop
.L0f116b9c:
    # Line 138
    addiu	$v0,$a1,8
    # Line 144
    jr	$ra
    nop
.end findPackMode

# Function: __iglooPixelStorei
# Declared: Line 164 (Source lines: 165-201)
# Address: 0x0f116ba8 - 0x0f116c28 (Size: 128 bytes, Frame: 192)
.globl __iglooPixelStorei
.ent __iglooPixelStorei
__iglooPixelStorei:
    # Line 165
    addiu	$sp,$sp,-64
    sd	$a1,16($sp)
    sd	$a0,8($sp)
    sd	$gp,24($sp)
    # Line 166
    lw	$v0,4100($zero)
    # Line 165
    lui	$at,0xfff2
    addiu	$at,$at,-14688
    # Line 166
    beqz	$v0,.L0f116bf8
    # Line 165
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 177
    la	$t9,sub_0f110000
    ld	$a0,8($sp)
    sd	$ra,32($sp)
    addiu	$t9,$t9,27468
    bal __iglooSetSavedEnable
    addiu	$a1,$v0,264
    sd	$v0,0($sp)
    lw	$at,0($v0)
    ld	$v0,16($sp)
    bne	$at,$v0,.L0f116c04
    ld	$ra,32($sp)
.L0f116bf8:
    ld	$gp,24($sp)
    # Line 201
    jr	$ra
    addiu	$sp,$sp,64
.L0f116c04:
    # Line 195
    la	$t9,glPixelStorei
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a1,16($sp)
    ld	$a2,0($sp)
    # Line 197
    ld	$v1,16($sp)
    ld	$ra,32($sp)
    b	.L0f116bf8
    sw	$v1,0($a2)
.end __iglooPixelStorei

# Function: __iglooGetPixelStorei
# Declared: Line 203 (Source lines: 204-232)
# Address: 0x0f116c28 - 0x0f116ca0 (Size: 120 bytes, Frame: 48)
.globl __iglooGetPixelStorei
.ent __iglooGetPixelStorei
__iglooGetPixelStorei:
    # Line 207
    move	$v0,$zero
    # Line 204
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    # Line 205
    lw	$a4,4100($zero)
    # Line 207
    sw	$zero,0($sp)
    sd	$gp,16($sp)
    # Line 204
    lui	$at,0xfff2
    addiu	$at,$at,-14816
    # Line 207
    beqz	$a4,.L0f116c7c
    # Line 204
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 213
    la	$t9,sub_0f110000
    ld	$a0,8($sp)
    sd	$ra,24($sp)
    addiu	$t9,$t9,27468
    bal __iglooSetSavedEnable
    addiu	$a1,$a4,264
    beqz	$v0,.L0f116c88
    ld	$ra,24($sp)
    # Line 224
    lw	$at,0($v0)
    sw	$at,0($sp)
.L0f116c78:
    # Line 228
    lw	$v0,0($sp)
.L0f116c7c:
    ld	$gp,16($sp)
    # Line 232
    jr	$ra
    addiu	$sp,$sp,48
.L0f116c88:
    # Line 228
    la	$t9,glGetIntegerv
    ld	$a0,8($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0f116c78
    ld	$ra,24($sp)
.end __iglooGetPixelStorei

# Function: GetPixelTransferLocation
# Declared: Line 259 (Source lines: 260-315)
# Address: 0x0f116ca0 - 0x0f116d48 (Size: 168 bytes, Frame: 0)
.globl GetPixelTransferLocation
.ent GetPixelTransferLocation
GetPixelTransferLocation:
    # Line 260
    addiu	$v0,$a0,-3344
    lui	$v1,0xfff2
    addiu	$v1,$v1,-14936
    addu	$at,$t9,$v1
    lw	$a0,-32680($at)
    sltiu	$v1,$v0,16
    sll	$v0,$v0,0x2
    addiu	$a0,$a0,21120
    beqz	$v1,.L0f116cd4
    addu	$v0,$v0,$a0
    lw	$a0,0($v0)
    jr	$a0
    # Line 307
    addiu	$v0,$a1,52
.L0f116cd4:
    # Line 312
    move	$v0,$zero
    # Line 315
    jr	$ra
    nop
    jr	$ra
    # Line 268
    move	$v0,$a1
    # Line 315
    jr	$ra
    # Line 271
    addiu	$v0,$a1,8
    # Line 315
    jr	$ra
    # Line 274
    addiu	$v0,$a1,16
    # Line 315
    jr	$ra
    # Line 277
    addiu	$v0,$a1,24
    # Line 315
    jr	$ra
    # Line 280
    addiu	$v0,$a1,32
    # Line 315
    jr	$ra
    # Line 283
    addiu	$v0,$a1,4
    # Line 315
    jr	$ra
    # Line 286
    addiu	$v0,$a1,12
    # Line 315
    jr	$ra
    # Line 289
    addiu	$v0,$a1,20
    # Line 315
    jr	$ra
    # Line 292
    addiu	$v0,$a1,28
    # Line 315
    jr	$ra
    # Line 295
    addiu	$v0,$a1,36
    # Line 315
    jr	$ra
    # Line 298
    addiu	$v0,$a1,40
    # Line 315
    jr	$ra
    # Line 301
    addiu	$v0,$a1,44
    # Line 315
    jr	$ra
    # Line 304
    addiu	$v0,$a1,48
.end GetPixelTransferLocation

# Function: __iglooPixelTransferf
# Declared: Line 318 (Source lines: 319-342)
# Address: 0x0f116d48 - 0x0f116dd0 (Size: 136 bytes, Frame: 192)
.globl __iglooPixelTransferf
.ent __iglooPixelTransferf
__iglooPixelTransferf:
    # Line 319
    addiu	$sp,$sp,-64
    sdc1	$f13,0($sp)
    sd	$a0,16($sp)
    sd	$gp,24($sp)
    # Line 321
    lw	$v0,4100($zero)
    # Line 319
    lui	$at,0xfff2
    addiu	$at,$at,-15104
    # Line 321
    beqz	$v0,.L0f116da0
    # Line 319
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 327
    la	$t9,GetPixelTransferLocation
    ld	$a0,16($sp)
    sd	$ra,32($sp)
    bal GetPixelTransferLocation
    addiu	$a1,$v0,280
    beqz	$v0,.L0f116da0
    ld	$ra,32($sp)
    ldc1	$f1,0($sp)
    lwc1	$f0,0($v0)
    c.eq.s	$f0,$f1
    nop
    bc1f	.L0f116dac
    sd	$v0,8($sp)
.L0f116da0:
    ld	$gp,24($sp)
    # Line 342
    jr	$ra
    addiu	$sp,$sp,64
.L0f116dac:
    # Line 335
    la	$t9,glPixelTransferf
    ld	$a0,16($sp)
    jalr	$t9
    ldc1	$f13,0($sp)
    # Line 336
    ld	$v1,8($sp)
    ldc1	$f2,0($sp)
    ld	$ra,32($sp)
    b	.L0f116da0
    swc1	$f2,0($v1)
.end __iglooPixelTransferf

# Function: __iglooGetPixelTransferf
# Declared: Line 344 (Source lines: 345-362)
# Address: 0x0f116dd0 - 0x0f116e28 (Size: 88 bytes, Frame: 48)
.globl __iglooGetPixelTransferf
.ent __iglooGetPixelTransferf
__iglooGetPixelTransferf:
    # Line 345
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 347
    lw	$v0,4100($zero)
    # Line 345
    lui	$at,0xfff2
    addiu	$at,$at,-15240
    # Line 347
    beqz	$v0,.L0f116e0c
    # Line 345
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 353
    la	$t9,GetPixelTransferLocation
    sd	$ra,16($sp)
    bal GetPixelTransferLocation
    addiu	$a1,$v0,280
    beqz	$v0,.L0f116e1c
    ld	$ra,16($sp)
    # Line 357
    b	.L0f116e10
    lwc1	$f0,0($v0)
.L0f116e0c:
    lwc1	$f0,0($sp)
.L0f116e10:
    ld	$gp,8($sp)
.L0f116e14:
    # Line 362
    jr	$ra
    addiu	$sp,$sp,48
.L0f116e1c:
    # Line 357
    lwc1	$f0,0($sp)
    b	.L0f116e14
    ld	$gp,8($sp)
.end __iglooGetPixelTransferf

# Function: __iglooPixelZoom
# Declared: Line 381 (Source lines: 382-397)
# Address: 0x0f116e28 - 0x0f116e88 (Size: 96 bytes, Frame: 32)
.globl __iglooPixelZoom
.ent __iglooPixelZoom
__iglooPixelZoom:
    # Line 386
    lw	$a1,4100($zero)
    # Line 389
    lwc1	$f0,88($a1)
    # Line 382
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 389
    c.eq.s	$f0,$f12
    # Line 382
    lui	$at,0xfff2
    addiu	$at,$at,-15328
    # Line 389
    bc1f	.L0f116e6c
    # Line 382
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 389
    lwc1	$f1,92($a1)
    c.eq.s	$f1,$f13
    nop
    bc1f	.L0f116e70
    # Line 394
    la	$t9,glPixelZoom
.L0f116e60:
    ld	$gp,0($sp)
    # Line 397
    jr	$ra
    addiu	$sp,$sp,32
.L0f116e6c:
    # Line 394
    la	$t9,glPixelZoom
.L0f116e70:
    # Line 392
    swc1	$f13,92($a1)
    sd	$ra,8($sp)
    # Line 394
    jalr	$t9
    # Line 391
    swc1	$f12,88($a1)
    b	.L0f116e60
    ld	$ra,8($sp)
.end __iglooPixelZoom

# Function: __iglooDrawBuffer
# Declared: Line 415 (Source lines: 416-476)
# Address: 0x0f116e88 - 0x0f116f6c (Size: 228 bytes, Frame: 32)
.globl __iglooDrawBuffer
.ent __iglooDrawBuffer
__iglooDrawBuffer:
    # Line 417
    lw	$a2,4100($zero)
    # Line 416
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 417
    lw	$at,48($a2)
    # Line 416
    lui	$v0,0xfff2
    addiu	$v0,$v0,-15424
    # Line 417
    beq	$at,$a0,.L0f116ef8
    # Line 416
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 427
    lw	$a3,20($a2)
    lw	$v1,20($a3)
    beqz	$v1,.L0f116f04
    # Line 435
    li	$at,1032
.L0f116eb8:
    # Line 451
    lw	$a1,24($a3)
.L0f116ebc:
    # Line 456
    li	$v0,1025
    # Line 451
    bnez	$a1,.L0f116ee4
    # Line 456
    li	$at,1024
    beq	$a0,$at,.L0f116f3c
    li	$a1,1027
    beq	$a0,$v0,.L0f116f3c
    li	$v1,1026
    beql	$a0,$v1,.L0f116f4c
    sd	$ra,8($sp)
    beq	$a0,$a1,.L0f116f48
.L0f116ee4:
    # Line 470
    la	$t9,glDrawBuffer
    sd	$ra,8($sp)
    jalr	$t9
    # Line 469
    sw	$a0,48($a2)
    ld	$ra,8($sp)
.L0f116ef8:
    ld	$gp,0($sp)
    # Line 476
    jr	$ra
    addiu	$sp,$sp,32
.L0f116f04:
    # Line 435
    beq	$a0,$at,.L0f116f5c
    li	$v0,1026
    beq	$a0,$v0,.L0f116f54
    li	$v1,1027
    beq	$a0,$v1,.L0f116f54
    li	$a1,1029
    beq	$a0,$a1,.L0f116f54
    li	$at,1030
    beq	$a0,$at,.L0f116f64
    li	$v0,1031
    bnel	$a0,$v0,.L0f116ebc
    # Line 451
    lw	$a1,24($a3)
    b	.L0f116eb8
    # Line 449
    li	$a0,1025
.L0f116f3c:
    sd	$ra,8($sp)
    # Line 461
    b	.L0f116ee4
    # Line 460
    li	$a0,1028
.L0f116f48:
    sd	$ra,8($sp)
.L0f116f4c:
    b	.L0f116ee4
    # Line 464
    li	$a0,1029
.L0f116f54:
    # Line 444
    b	.L0f116eb8
    # Line 443
    move	$a0,$zero
.L0f116f5c:
    # Line 439
    b	.L0f116eb8
    # Line 438
    li	$a0,1028
.L0f116f64:
    # Line 447
    b	.L0f116eb8
    # Line 446
    li	$a0,1024
.end __iglooDrawBuffer

# Function: __iglooReadBuffer
# Declared: Line 494 (Source lines: 495-548)
# Address: 0x0f116f6c - 0x0f117040 (Size: 212 bytes, Frame: 32)
.globl __iglooReadBuffer
.ent __iglooReadBuffer
__iglooReadBuffer:
    # Line 496
    lw	$a2,4100($zero)
    # Line 495
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 496
    lw	$at,52($a2)
    # Line 495
    lui	$v0,0xfff2
    addiu	$v0,$v0,-15652
    # Line 496
    beq	$at,$a0,.L0f116fdc
    # Line 495
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 506
    lw	$a3,20($a2)
    lw	$v1,20($a3)
    beqz	$v1,.L0f116fe8
    # Line 510
    li	$at,1026
.L0f116f9c:
    # Line 523
    lw	$a1,24($a3)
.L0f116fa0:
    # Line 528
    li	$v0,1025
    # Line 523
    bnez	$a1,.L0f116fc8
    # Line 528
    li	$at,1024
    beq	$a0,$at,.L0f117018
    li	$a1,1027
    beq	$a0,$v0,.L0f117018
    li	$v1,1026
    beql	$a0,$v1,.L0f117028
    sd	$ra,8($sp)
    beq	$a0,$a1,.L0f117024
.L0f116fc8:
    # Line 542
    la	$t9,glReadBuffer
    sd	$ra,8($sp)
    jalr	$t9
    # Line 541
    sw	$a0,52($a2)
    ld	$ra,8($sp)
.L0f116fdc:
    ld	$gp,0($sp)
    # Line 548
    jr	$ra
    addiu	$sp,$sp,32
.L0f116fe8:
    # Line 510
    beq	$a0,$at,.L0f117030
    li	$v0,1027
    beq	$a0,$v0,.L0f117030
    li	$v1,1029
    beq	$a0,$v1,.L0f117030
    li	$a1,1030
    beq	$a0,$a1,.L0f117038
    li	$at,1031
    bnel	$a0,$at,.L0f116fa0
    # Line 523
    lw	$a1,24($a3)
    b	.L0f116f9c
    # Line 521
    li	$a0,1025
.L0f117018:
    sd	$ra,8($sp)
    # Line 533
    b	.L0f116fc8
    # Line 532
    li	$a0,1028
.L0f117024:
    sd	$ra,8($sp)
.L0f117028:
    b	.L0f116fc8
    # Line 536
    li	$a0,1029
.L0f117030:
    # Line 516
    b	.L0f116f9c
    # Line 515
    move	$a0,$zero
.L0f117038:
    # Line 519
    b	.L0f116f9c
    # Line 518
    li	$a0,1024
.end __iglooReadBuffer

# Function: __iglooLogicOp
# Declared: Line 566 (Source lines: 567-584)
# Address: 0x0f117040 - 0x0f1170a0 (Size: 96 bytes, Frame: 48)
.globl __iglooLogicOp
.ent __iglooLogicOp
__iglooLogicOp:
    # Line 567
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    # Line 568
    lw	$a2,4100($zero)
    # Line 567
    lui	$at,0xfff2
    addiu	$at,$at,-15864
    # Line 568
    beqz	$a2,.L0f117070
    # Line 567
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 568
    lw	$v0,72($a2)
    bne	$v0,$s0,.L0f117080
    sd	$a2,0($sp)
.L0f117070:
    ld	$gp,16($sp)
    # Line 584
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f117080:
    # Line 578
    la	$t9,glLogicOp
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$v1,0($sp)
    ld	$ra,24($sp)
    b	.L0f117070
    # Line 579
    sw	$s0,72($v1)
.end __iglooLogicOp

# Function: __iglooBlendFunc
# Declared: Line 604 (Source lines: 605-622)
# Address: 0x0f1170a0 - 0x0f117124 (Size: 132 bytes, Frame: 192)
.globl __iglooBlendFunc
.ent __iglooBlendFunc
__iglooBlendFunc:
    # Line 605
    addiu	$sp,$sp,-64
    sd	$s2,0($sp)
    move	$s2,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,24($sp)
    sd	$s0,8($sp)
    # Line 606
    lw	$s0,4100($zero)
    # Line 605
    lui	$at,0xfff2
    addiu	$at,$at,-15960
    # Line 606
    beqz	$s0,.L0f1170e8
    # Line 605
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 614
    lw	$v0,76($s0)
    bne	$v0,$s1,.L0f117104
    # Line 616
    la	$t9,glBlendFunc
    # Line 614
    lw	$v1,80($s0)
    bne	$v1,$s2,.L0f117104
    # Line 616
    la	$t9,glBlendFunc
.L0f1170e8:
    ld	$gp,24($sp)
    # Line 622
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
    # Line 616
    la	$t9,glBlendFunc
.L0f117104:
    move	$a0,$s1
    sd	$ra,32($sp)
    jalr	$t9
    move	$a1,$s2
    # Line 618
    sw	$s2,80($s0)
    # Line 617
    sw	$s1,76($s0)
    b	.L0f1170e8
    ld	$ra,32($sp)
.end __iglooBlendFunc

# Function: __iglooBlendEquationEXT
# Declared: Line 641 (Source lines: 642-658)
# Address: 0x0f117124 - 0x0f117184 (Size: 96 bytes, Frame: 48)
.globl __iglooBlendEquationEXT
.ent __iglooBlendEquationEXT
__iglooBlendEquationEXT:
    # Line 642
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    # Line 643
    lw	$a2,4100($zero)
    # Line 642
    lui	$at,0xfff2
    addiu	$at,$at,-16092
    # Line 643
    beqz	$a2,.L0f117154
    # Line 642
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 643
    lw	$v0,84($a2)
    bne	$v0,$s0,.L0f117164
    sd	$a2,0($sp)
.L0f117154:
    ld	$gp,16($sp)
    # Line 658
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f117164:
    # Line 653
    la	$t9,glBlendEquationEXT
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$v1,0($sp)
    ld	$ra,24($sp)
    b	.L0f117154
    # Line 654
    sw	$s0,84($v1)
.end __iglooBlendEquationEXT

# Function: __iglooDepthFunc
# Declared: Line 678 (Source lines: 679-695)
# Address: 0x0f117184 - 0x0f1171e4 (Size: 96 bytes, Frame: 48)
.globl __iglooDepthFunc
.ent __iglooDepthFunc
__iglooDepthFunc:
    # Line 679
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    # Line 680
    lw	$a2,4100($zero)
    # Line 679
    lui	$at,0xfff2
    addiu	$at,$at,-16188
    # Line 680
    beqz	$a2,.L0f1171b4
    # Line 679
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 680
    lw	$v0,56($a2)
    bne	$v0,$s0,.L0f1171c4
    sd	$a2,0($sp)
.L0f1171b4:
    ld	$gp,16($sp)
    # Line 695
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1171c4:
    # Line 690
    la	$t9,glDepthFunc
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$v1,0($sp)
    ld	$ra,24($sp)
    b	.L0f1171b4
    # Line 691
    sw	$s0,56($v1)
.end __iglooDepthFunc

# Function: __iglooDepthMask
# Declared: Line 714 (Source lines: 715-732)
# Address: 0x0f1171e4 - 0x0f117244 (Size: 96 bytes, Frame: 48)
.globl __iglooDepthMask
.ent __iglooDepthMask
__iglooDepthMask:
    # Line 715
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    # Line 716
    lw	$a2,4100($zero)
    # Line 715
    lui	$at,0xfff2
    addiu	$at,$at,-16284
    # Line 716
    beqz	$a2,.L0f117214
    # Line 715
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 716
    lbu	$v0,344($a2)
    bne	$v0,$s0,.L0f117224
    sd	$a2,0($sp)
.L0f117214:
    ld	$gp,16($sp)
    # Line 732
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f117224:
    # Line 727
    la	$t9,glDepthMask
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$v1,0($sp)
    ld	$ra,24($sp)
    b	.L0f117214
    # Line 728
    sb	$s0,344($v1)
.end __iglooDepthMask

# Function: __iglooIndexMask
# Declared: Line 758 (Source lines: 759-786)
# Address: 0x0f117244 - 0x0f1172d4 (Size: 144 bytes, Frame: 48)
.globl __iglooIndexMask
.ent __iglooIndexMask
__iglooIndexMask:
    # Line 759
    addiu	$sp,$sp,-48
    sd	$s5,8($sp)
    move	$s5,$a0
    sd	$gp,16($sp)
    sd	$s1,0($sp)
    # Line 760
    lw	$s1,4100($zero)
    # Line 759
    lui	$at,0xfff2
    addiu	$at,$at,-16380
    # Line 760
    beqz	$s1,.L0f1172a4
    # Line 759
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 766
    lw	$a0,20($s1)
    lw	$a0,8($a0)
    sltiu	$v0,$a0,32
    beqz	$v0,.L0f117298
    # Line 774
    li	$a2,-1
    # Line 766
    beqz	$a0,.L0f117294
    # Line 770
    li	$a2,-1
    sllv	$a2,$a2,$a0
    b	.L0f117298
    nor	$a2,$a2,$zero
.L0f117294:
    # Line 774
    li	$a2,-1
.L0f117298:
    lw	$at,336($s1)
    bne	$at,$s5,.L0f1172b8
    # Line 781
    la	$t9,glIndexMask
.L0f1172a4:
    ld	$gp,16($sp)
    # Line 786
    ld	$s1,0($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1172b8:
    sd	$ra,24($sp)
    # Line 780
    and	$s5,$s5,$a2
    # Line 781
    jalr	$t9
    move	$a0,$s5
    # Line 782
    sw	$s5,336($s1)
    b	.L0f1172a4
    ld	$ra,24($sp)
.end __iglooIndexMask

# Function: __iglooGetIndexMask
# Declared: Line 788 (Source lines: 790-801)
# Address: 0x0f1172d4 - 0x0f1172f0 (Size: 28 bytes, Frame: 0)
.globl __iglooGetIndexMask
.ent __iglooGetIndexMask
__iglooGetIndexMask:
    # Line 790
    lw	$a2,4100($zero)
    beqz	$a2,.L0f1172e8
    nop
    # Line 799
    lw	$at,336($a2)
    sw	$at,0($a0)
.L0f1172e8:
    # Line 801
    jr	$ra
    nop
.end __iglooGetIndexMask

# Function: __iglooColorMask
# Declared: Line 824 (Source lines: 825-855)
# Address: 0x0f1172f0 - 0x0f1173b4 (Size: 196 bytes, Frame: 224)
.globl __iglooColorMask
.ent __iglooColorMask
__iglooColorMask:
    # Line 825
    addiu	$sp,$sp,-96
    sd	$s4,24($sp)
    move	$s4,$a3
    sd	$s3,32($sp)
    move	$s3,$a2
    sd	$s2,40($sp)
    move	$s2,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$gp,0($sp)
    sd	$s0,16($sp)
    # Line 826
    lw	$s0,4100($zero)
    # Line 825
    lui	$at,0xfff2
    addiu	$at,$at,-16552
    # Line 826
    beqz	$s0,.L0f117360
    # Line 825
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 841
    lbu	$v0,340($s0)
    bne	$v0,$s1,.L0f117384
    # Line 846
    move	$a0,$s1
    # Line 841
    lbu	$v1,341($s0)
    bne	$v1,$s2,.L0f117384
    # Line 846
    move	$a0,$s1
    # Line 841
    lbu	$a4,342($s0)
    bne	$a4,$s3,.L0f117384
    # Line 846
    move	$a0,$s1
    # Line 841
    lbu	$at,343($s0)
    bne	$at,$s4,.L0f117384
    # Line 846
    move	$a0,$s1
.L0f117360:
    ld	$gp,0($sp)
    # Line 855
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,40($sp)
    ld	$s3,32($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
    # Line 846
    move	$a0,$s1
.L0f117384:
    move	$a1,$s2
    la	$t9,glColorMask
    move	$a2,$s3
    sd	$ra,48($sp)
    jalr	$t9
    move	$a3,$s4
    # Line 851
    sb	$s4,343($s0)
    # Line 850
    sb	$s3,342($s0)
    # Line 849
    sb	$s2,341($s0)
    # Line 848
    sb	$s1,340($s0)
    b	.L0f117360
    ld	$ra,48($sp)
.end __iglooColorMask

# Function: __iglooGetColorMask
# Declared: Line 857 (Source lines: 859-876)
# Address: 0x0f1173b4 - 0x0f1173e8 (Size: 52 bytes, Frame: 0)
.globl __iglooGetColorMask
.ent __iglooGetColorMask
__iglooGetColorMask:
    # Line 859
    lw	$a2,4100($zero)
    beqz	$a2,.L0f1173e0
    nop
    # Line 871
    lbu	$a1,340($a2)
    sb	$a1,0($a0)
    # Line 872
    lbu	$v1,341($a2)
    sb	$v1,1($a0)
    # Line 873
    lbu	$v0,342($a2)
    sb	$v0,2($a0)
    # Line 874
    lbu	$at,343($a2)
    sb	$at,3($a0)
.L0f1173e0:
    # Line 876
    jr	$ra
    nop
.end __iglooGetColorMask

# Function: __iglooShadeModel
# Declared: Line 894 (Source lines: 895-908)
# Address: 0x0f1173e8 - 0x0f117440 (Size: 88 bytes, Frame: 48)
.globl __iglooShadeModel
.ent __iglooShadeModel
__iglooShadeModel:
    # Line 895
    addiu	$sp,$sp,-48
    # Line 896
    lw	$at,4100($zero)
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    sd	$at,0($sp)
    lw	$at,348($at)
    # Line 895
    lui	$v0,0xfff2
    addiu	$v0,$v0,-16800
    # Line 896
    bne	$at,$a0,.L0f11741c
    # Line 895
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
.L0f117410:
    ld	$gp,16($sp)
    # Line 908
    jr	$ra
    addiu	$sp,$sp,48
.L0f11741c:
    # Line 904
    la	$t9,glShadeModel
    sd	$ra,24($sp)
    jalr	$t9
    ld	$a0,8($sp)
    ld	$v1,0($sp)
    # Line 905
    ld	$v0,8($sp)
    ld	$ra,24($sp)
    b	.L0f117410
    sw	$v0,348($v1)
.end __iglooShadeModel

# Function: __iglooLineWidth
# Declared: Line 926 (Source lines: 927-938)
# Address: 0x0f117440 - 0x0f11749c (Size: 92 bytes, Frame: 48)
.globl __iglooLineWidth
.ent __iglooLineWidth
__iglooLineWidth:
    # Line 928
    lw	$v0,4100($zero)
    # Line 927
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    # Line 928
    lwc1	$f0,352($v0)
    sd	$gp,16($sp)
    # Line 927
    lui	$at,0xfff2
    # Line 928
    c.eq.s	$f0,$f12
    # Line 927
    addiu	$at,$at,-16888
    # addu	gp,t9,at (gp setup)
    # Line 928
    bc1f	.L0f117478
    sd	$v0,8($sp)
.L0f11746c:
    ld	$gp,16($sp)
    # Line 938
    jr	$ra
    addiu	$sp,$sp,48
.L0f117478:
    # Line 934
    la	$t9,glLineWidth
    sd	$ra,24($sp)
    jalr	$t9
    ldc1	$f12,0($sp)
    # Line 935
    ld	$v1,8($sp)
    ldc1	$f1,0($sp)
    ld	$ra,24($sp)
    b	.L0f11746c
    swc1	$f1,352($v1)
.end __iglooLineWidth

# Function: __iglooInitializeOpenglState
# Declared: Line 940 (Source lines: 941-1015)
# Address: 0x0f11749c - 0x0f117600 (Size: 356 bytes, Frame: 32)
.globl __iglooInitializeOpenglState
.ent __iglooInitializeOpenglState
__iglooInitializeOpenglState:
    # Line 983
    li	$v1,5379
    # Line 941
    addiu	$sp,$sp,-32
    sd	$s7,0($sp)
    # Line 942
    lw	$s7,4100($zero)
    # Line 985
    li	$a3,1
    # Line 963
    li	$a0,4
    # Line 942
    lw	$a1,20($s7)
    sd	$gp,8($sp)
    lw	$at,20($a1)
    # Line 941
    lui	$v0,0xfff2
    addiu	$v0,$v0,-16980
    # Line 942
    beqz	$at,.L0f1175dc
    # Line 941
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 948
    li	$a2,1029
.L0f1174d4:
    # Line 950
    sw	$zero,96($s7)
    # Line 952
    sw	$a2,48($s7)
    # Line 953
    sw	$a2,52($s7)
    # Line 954
    sb	$zero,60($s7)
    # Line 955
    sb	$zero,61($s7)
    # Line 965
    sw	$zero,276($s7)
    # Line 966
    sw	$zero,272($s7)
    # Line 986
    sw	$zero,80($s7)
    # Line 996
    sw	$zero,64($s7)
    # Line 985
    sw	$a3,76($s7)
    # Line 995
    sw	$a3,68($s7)
    # Line 983
    sw	$v1,72($s7)
    # Line 990
    li	$at,513
    # Line 988
    li	$v0,0x8006
    # Line 963
    sw	$a0,268($s7)
    # Line 964
    sw	$a0,264($s7)
    # Line 992
    li	$a0,7425
    sw	$a0,348($s7)
    # Line 988
    sw	$v0,84($s7)
    # Line 990
    sw	$at,56($s7)
    # Line 969
    mtc1	$zero,$f1
    # Line 957
    lwc1	$f0,_lit_3f800000
    # Line 961
    ldc1	$f2,_lit8_3ff0000000000000
    # Line 960
    dmtc1	$zero,$f3
    # Line 957
    swc1	$f0,88($s7)
    # Line 958
    swc1	$f0,92($s7)
    # Line 960
    sdc1	$f3,248($s7)
    # Line 961
    sdc1	$f2,256($s7)
    # Line 968
    swc1	$f0,280($s7)
    # Line 969
    swc1	$f1,284($s7)
    # Line 970
    swc1	$f0,288($s7)
    # Line 971
    swc1	$f1,292($s7)
    # Line 972
    swc1	$f0,296($s7)
    # Line 973
    swc1	$f1,300($s7)
    # Line 974
    swc1	$f0,304($s7)
    # Line 975
    swc1	$f1,308($s7)
    # Line 976
    swc1	$f0,312($s7)
    # Line 977
    swc1	$f1,316($s7)
    # Line 978
    swc1	$f1,320($s7)
    # Line 979
    swc1	$f1,324($s7)
    # Line 980
    swc1	$f1,328($s7)
    # Line 981
    swc1	$f1,332($s7)
    # Line 993
    swc1	$f0,352($s7)
    # Line 996
    lw	$v1,16($a1)
    beqz	$v1,.L0f1175e8
    # Line 998
    li	$a2,-1
    sd	$ra,16($sp)
.L0f117590:
    # Line 1010
    addiu	$a0,$s7,148
    # Line 1008
    sb	$zero,244($s7)
    # Line 1007
    sb	$zero,224($s7)
    # Line 1005
    sb	$a3,344($s7)
    # Line 1003
    sb	$a3,343($s7)
    # Line 1002
    sb	$a3,342($s7)
    # Line 1010
    la	$t9,__iglooInitializeMatrices
    # Line 1001
    sb	$a3,341($s7)
    # Line 1000
    sb	$a3,340($s7)
    # Line 1010
    bal __iglooInitializeMatrices
    # Line 998
    sw	$a2,336($s7)
    # Line 1012
    la	$t9,__iglooInitializeEnables
    jalr	$t9
    addiu	$a0,$s7,100
    # Line 1015
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f1175dc:
    # Line 948
    li	$a2,1028
    b	.L0f1174d4
    nop
.L0f1175e8:
    # Line 998
    lw	$at,8($a1)
    sd	$ra,16($sp)
    li	$a2,-1
    sllv	$a2,$a2,$at
    b	.L0f117590
    nor	$a2,$a2,$zero
.end __iglooInitializeOpenglState

# Function: __iglooUnInitializeOpenglState
# Declared: Line 1017 (Source lines: 1018-1022)
# Address: 0x0f117600 - 0x0f117634 (Size: 52 bytes, Frame: 32)
.globl __iglooUnInitializeOpenglState
.ent __iglooUnInitializeOpenglState
__iglooUnInitializeOpenglState:
    # Line 1018
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-17336 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1021
    la	$t9,__iglooUnInitializeMatrices
    sd	$ra,0($sp)
    bal __iglooUnInitializeMatrices
    addiu	$a0,$a0,100
    # Line 1022
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooUnInitializeOpenglState

# Function: __iglooCloneOpenglState
# Declared: Line 1029 (Source lines: 1030-1115)
# Address: 0x0f117634 - 0x0f1178bc (Size: 648 bytes, Frame: 48)
.globl __iglooCloneOpenglState
.ent __iglooCloneOpenglState
__iglooCloneOpenglState:
    # Line 1030
    addiu	$sp,$sp,-48
    sd	$s5,8($sp)
    # Line 1031
    lw	$s5,4100($zero)
    sd	$s3,16($sp)
    sd	$gp,24($sp)
    # Line 1030
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-17388 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1045
    la	$t9,__iglooDrawBuffer
    # Line 1030
    move	$s3,$a0
    sd	$ra,0($sp)
    # Line 1045
    bal __iglooDrawBuffer
    lw	$a0,0($a0)
    # Line 1046
    la	$t9,__iglooReadBuffer
    bal __iglooReadBuffer
    lw	$a0,4($s3)
    # Line 1048
    la	$t9,__iglooPixelStorei
    lw	$a1,268($s5)
    bal __iglooPixelStorei
    li	$a0,3317
    # Line 1049
    la	$t9,__iglooPixelStorei
    lw	$a1,264($s5)
    bal __iglooPixelStorei
    li	$a0,3333
    # Line 1050
    la	$t9,__iglooPixelStorei
    lw	$a1,276($s5)
    bal __iglooPixelStorei
    li	$a0,3314
    # Line 1051
    la	$t9,__iglooPixelStorei
    lw	$a1,272($s5)
    bal __iglooPixelStorei
    li	$a0,3330
    # Line 1053
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,232($s3)
    li	$a0,3358
    bal __iglooPixelTransferf
    ld	$s5,8($sp)
    # Line 1054
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,240($s3)
    bal __iglooPixelTransferf
    li	$a0,3348
    # Line 1055
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,248($s3)
    bal __iglooPixelTransferf
    li	$a0,3352
    # Line 1056
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,256($s3)
    bal __iglooPixelTransferf
    li	$a0,3354
    # Line 1057
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,264($s3)
    bal __iglooPixelTransferf
    li	$a0,3356
    # Line 1058
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,236($s3)
    bal __iglooPixelTransferf
    li	$a0,3359
    # Line 1059
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,244($s3)
    bal __iglooPixelTransferf
    li	$a0,3349
    # Line 1060
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,252($s3)
    bal __iglooPixelTransferf
    li	$a0,3353
    # Line 1061
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,260($s3)
    bal __iglooPixelTransferf
    li	$a0,3355
    # Line 1062
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,268($s3)
    bal __iglooPixelTransferf
    li	$a0,3357
    # Line 1063
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,272($s3)
    bal __iglooPixelTransferf
    li	$a0,3344
    # Line 1064
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,276($s3)
    bal __iglooPixelTransferf
    li	$a0,3345
    # Line 1065
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,280($s3)
    bal __iglooPixelTransferf
    li	$a0,3346
    # Line 1066
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,284($s3)
    bal __iglooPixelTransferf
    li	$a0,3347
    # Line 1068
    la	$t9,__iglooPixelZoom
    lwc1	$f13,44($s3)
    bal __iglooPixelZoom
    lwc1	$f12,40($s3)
    # Line 1070
    la	$t9,__iglooDepthRange
    ldc1	$f13,208($s3)
    bal __iglooDepthRange
    ldc1	$f12,200($s3)
    # Line 1073
    la	$t9,__iglooLogicOp
    bal __iglooLogicOp
    lw	$a0,24($s3)
    # Line 1074
    la	$t9,__iglooBlendFunc
    lw	$a1,32($s3)
    bal __iglooBlendFunc
    lw	$a0,28($s3)
    # Line 1075
    la	$t9,__iglooBlendEquationEXT
    bal __iglooBlendEquationEXT
    lw	$a0,36($s3)
    # Line 1076
    la	$t9,__iglooDepthFunc
    bal __iglooDepthFunc
    lw	$a0,8($s3)
    # Line 1078
    la	$t9,__iglooDepthMask
    bal __iglooDepthMask
    lbu	$a0,296($s3)
    # Line 1080
    la	$t9,__iglooShadeModel
    bal __iglooShadeModel
    lw	$a0,300($s3)
    # Line 1081
    la	$t9,__iglooLineWidth
    bal __iglooLineWidth
    lwc1	$f12,304($s3)
    # Line 1083
    lbu	$a3,295($s3)
    la	$t9,__iglooColorMask
    lbu	$a2,294($s3)
    lbu	$a1,293($s3)
    bal __iglooColorMask
    lbu	$a0,292($s3)
    # Line 1087
    la	$t9,__iglooIndexMask
    bal __iglooIndexMask
    lw	$a0,288($s3)
    lbu	$v0,176($s3)
    li	$a0,1
    beql	$v0,$a0,.L0f117884
    # Line 1091
    lw	$a3,172($s3)
    # Line 1096
    sb	$zero,176($s3)
.L0f117848:
    lbu	$v1,196($s3)
    beql	$v1,$a0,.L0f1178a0
    # Line 1102
    lw	$a3,192($s3)
    # Line 1107
    sb	$zero,196($s3)
    # Line 1111
    la	$t9,__iglooCloneMatrices
.L0f11785c:
    bal __iglooCloneMatrices
    addiu	$a0,$s3,100
    # Line 1112
    la	$t9,__iglooCloneEnables
    jalr	$t9
    addiu	$a0,$s3,52
    # Line 1115
    ld	$ra,0($sp)
    ld	$gp,24($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f117884:
    # Line 1091
    la	$t9,__iglooViewport
    lw	$a2,168($s3)
    lw	$a1,164($s3)
    bal __iglooViewport
    lw	$a0,160($s3)
    b	.L0f117848
    li	$a0,1
.L0f1178a0:
    # Line 1102
    la	$t9,__iglooScissor
    lw	$a2,188($s3)
    lw	$a1,184($s3)
    bal __iglooScissor
    lw	$a0,180($s3)
    b	.L0f11785c
    # Line 1111
    la	$t9,__iglooCloneMatrices
.end __iglooCloneOpenglState

# Function: __iglooNewList
# Declared: Line 1117 (Source lines: 1118-1133)
# Address: 0x0f1178bc - 0x0f117904 (Size: 72 bytes, Frame: 32)
.globl __iglooNewList
.ent __iglooNewList
__iglooNewList:
    # Line 1118
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1119
    lw	$a3,4100($zero)
    # Line 1118
    lui	$at,0xfff2
    addiu	$at,$at,-18036
    # Line 1119
    bnez	$a3,.L0f1178e4
    # Line 1118
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f1178d8:
    ld	$gp,0($sp)
    # Line 1133
    jr	$ra
    addiu	$sp,$sp,32
.L0f1178e4:
    # Line 1129
    lw	$v0,96($a3)
    # Line 1131
    la	$t9,glNewList
    sd	$ra,8($sp)
    # Line 1129
    ori	$v0,$v0,0x8
    # Line 1131
    jalr	$t9
    # Line 1129
    sw	$v0,96($a3)
    b	.L0f1178d8
    ld	$ra,8($sp)
.end __iglooNewList

# Function: __iglooEndList
# Declared: Line 1135 (Source lines: 1136-1151)
# Address: 0x0f117904 - 0x0f117950 (Size: 76 bytes, Frame: 16)
.globl __iglooEndList
.ent __iglooEndList
__iglooEndList:
    # Line 1136
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # Line 1137
    lw	$a1,4100($zero)
    # Line 1136
    lui	$at,0xfff2
    addiu	$at,$at,-18108
    # Line 1137
    bnez	$a1,.L0f11792c
    # Line 1136
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f117920:
    ld	$gp,0($sp)
    # Line 1151
    jr	$ra
    addiu	$sp,$sp,16
.L0f11792c:
    sd	$ra,8($sp)
    # Line 1147
    lw	$v0,96($a1)
    # Line 1149
    la	$t9,glEndList
    # Line 1147
    li	$v1,-9
    and	$v0,$v0,$v1
    # Line 1149
    jalr	$t9
    # Line 1147
    sw	$v0,96($a1)
    b	.L0f117920
    ld	$ra,8($sp)
.end __iglooEndList

# Function: __iglooGetBooleanv
# Declared: Line 1157 (Source lines: 1158-1166)
# Address: 0x0f117950 - 0x0f117984 (Size: 52 bytes, Frame: 32)
.globl __iglooGetBooleanv
.ent __iglooGetBooleanv
__iglooGetBooleanv:
    # Line 1158
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-18184 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1163
    la	$t9,glGetBooleanv
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 1166
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooGetBooleanv

# Function: __iglooGetFloatv
# Declared: Line 1168 (Source lines: 1169-1181)
# Address: 0x0f117984 - 0x0f1179b8 (Size: 52 bytes, Frame: 32)
.globl __iglooGetFloatv
.ent __iglooGetFloatv
__iglooGetFloatv:
    # Line 1169
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-18236 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1178
    la	$t9,glGetFloatv
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 1181
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooGetFloatv

# Function: __iglooGetIntegerv
# Declared: Line 1183 (Source lines: 1184-1197)
# Address: 0x0f1179b8 - 0x0f1179ec (Size: 52 bytes, Frame: 32)
.globl __iglooGetIntegerv
.ent __iglooGetIntegerv
__iglooGetIntegerv:
    # Line 1184
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-18288 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1194
    la	$t9,glGetIntegerv
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 1197
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooGetIntegerv

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000

