# Source: ../igloo/glws/ws_input.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/ws_input.c -o ws_input.T
# Total Functions: 10

.text

# Function: postWin
# Declared: Line 113 (Source lines: 114-127)
# Address: 0x0f12b6dc - 0x0f12b764 (Size: 136 bytes, Frame: 32)
.ent postWin
postWin:
    # Line 114
    lw	$at,-19736($gp)
    addiu	$sp,$sp,-32
    sd	$s7,0($sp)
    beqz	$at,.L0f12b71c
    move	$s7,$a0
    beqz	$s7,.L0f12b730
    # Line 121
    la	$v0,_GLinputChangeBug
    lw	$v0,0($v0)
    beqz	$v0,.L0f12b71c
    # Line 122
    move	$a2,$zero
    la	$t9,_GLpostEvent
    move	$a1,$zero
    sd	$ra,8($sp)
    jalr	$t9
    li	$a0,534
    ld	$ra,8($sp)
.L0f12b71c:
    beqzl	$s7,.L0f12b734
    sd	$ra,8($sp)
    sd	$ra,8($sp)
    # Line 124
    b	.L0f12b738
    lbu	$a4,45($s7)
.L0f12b730:
    sd	$ra,8($sp)
.L0f12b734:
    move	$a4,$zero
.L0f12b738:
    # Line 125
    move	$a2,$zero
    la	$t9,_GLpostEvent
    li	$a0,534
    dsll32	$a1,$a4,0x10
    jalr	$t9
    dsra32	$a1,$a1,0x10
    # Line 127
    ld	$ra,8($sp)
    # Line 126
    sw	$s7,-19736($gp)
    # Line 127
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end postWin

# Function: _GLdeliver_inputchange
# Declared: Line 129 (Source lines: 130-178)
# Address: 0x0f12b764 - 0x0f12b8f0 (Size: 396 bytes, Frame: 48)
.globl _GLdeliver_inputchange
.ent _GLdeliver_inputchange
_GLdeliver_inputchange:
    # Line 130
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a1,0xfff0
    addiu	$a1,$a1,31460
    addu	$gp,$t9,$a1
    # Line 131
    la	$a0,_GLkeyfocusWindow
    lw	$a2,-19736($gp)
    lw	$a0,0($a0)
    sd	$s0,0($sp)
    beq	$a2,$a0,.L0f12b858
    move	$s0,$a0
    sd	$s4,32($sp)
    # Line 143
    beqz	$a2,.L0f12b7ac
    move	$s4,$a2
    li	$v0,4
    lbu	$at,44($a2)
    beq	$at,$v0,.L0f12b8b4
    sd	$s2,16($sp)
.L0f12b7ac:
    sd	$s2,16($sp)
    # Line 145
    beqz	$a0,.L0f12b7c8
    move	$s2,$zero
    lbu	$v1,44($a0)
.L0f12b7bc:
    li	$a1,4
    beq	$v1,$a1,.L0f12b8c4
    sd	$s1,24($sp)
.L0f12b7c8:
    sd	$s1,24($sp)
    # Line 146
    move	$s1,$zero
.L0f12b7d0:
    # Line 153
    la	$a2,sub_0f130000
    # Line 146
    beqz	$s2,.L0f12b8ac
    # Line 153
    addiu	$a2,$a2,-18724
    # Line 146
    bne	$s2,$a0,.L0f12b868
    # Line 153
    la	$a2,sub_0f130000
    addiu	$a2,$a2,-18724
.L0f12b7e8:
    beqz	$s4,.L0f12b820
    nop
    beqz	$s0,.L0f12b820
    nop
    # Line 160
    beq	$s1,$s4,.L0f12b820
    nop
    beq	$s2,$s0,.L0f12b820
    nop
    # Line 161
    beqz	$s1,.L0f12b8d0
    la	$t9,sub_0f130000
    beqz	$s2,.L0f12b8d0
    la	$t9,sub_0f130000
    bne	$s2,$s1,.L0f12b8d0
    la	$t9,sub_0f130000
.L0f12b820:
    beqz	$s1,.L0f12b83c
    sd	$ra,40($sp)
    beq	$s1,$s4,.L0f12b83c
    sd	$ra,40($sp)
    sd	$ra,40($sp)
    # Line 173
    bne	$s2,$s1,.L0f12b88c
    ld	$s4,32($sp)
.L0f12b83c:
    # Line 176
    move	$a0,$s0
    move	$t9,$a2
    ld	$s2,16($sp)
    ld	$s1,24($sp)
    bal _GLrecolorAllCursors
    ld	$s4,32($sp)
    ld	$ra,40($sp)
.L0f12b858:
    ld	$gp,8($sp)
    # Line 178
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12b868:
    # Line 152
    la	$t9,sub_0f130000
    sd	$ra,40($sp)
    addiu	$t9,$t9,-18724
    # Line 153
    bal _GLrecolorAllCursors
    move	$a0,$s2
    la	$a2,sub_0f130000
    ld	$ra,40($sp)
    b	.L0f12b7e8
    addiu	$a2,$a2,-18724
.L0f12b88c:
    la	$t9,sub_0f130000
    # Line 174
    move	$a0,$s1
    addiu	$t9,$t9,-18724
    bal _GLrecolorAllCursors
    ld	$s2,16($sp)
    la	$a2,sub_0f130000
    b	.L0f12b83c
    addiu	$a2,$a2,-18724
.L0f12b8ac:
    b	.L0f12b7e8
    nop
.L0f12b8b4:
    # Line 145
    beqz	$a0,.L0f12b7c8
    lw	$s2,68($a2)
    b	.L0f12b7bc
    lbu	$v1,44($a0)
.L0f12b8c4:
    # Line 146
    b	.L0f12b7d0
    lw	$s1,68($a0)
    la	$t9,sub_0f130000
.L0f12b8d0:
    sd	$ra,40($sp)
    addiu	$t9,$t9,-18724
    # Line 165
    bal _GLrecolorAllCursors
    move	$a0,$zero
    la	$a2,sub_0f130000
    ld	$ra,40($sp)
    b	.L0f12b820
    addiu	$a2,$a2,-18724
.end _GLdeliver_inputchange

# Function: _GLComputeTimeout
# Declared: Line 180 (Source lines: 181-229)
# Address: 0x0f12b8f0 - 0x0f12badc (Size: 492 bytes, Frame: 240)
.ent _GLComputeTimeout
_GLComputeTimeout:
    # Line 181
    addiu	$sp,$sp,-112
    sd	$s0,64($sp)
    sd	$s1,72($sp)
    sd	$s2,56($sp)
    sd	$s7,80($sp)
    sd	$s5,48($sp)
    # Line 183
    move	$s5,$zero
    sd	$s3,16($sp)
    # Line 184
    move	$s3,$zero
    sd	$s4,40($sp)
    # Line 185
    move	$s4,$zero
    sd	$s6,24($sp)
    # Line 187
    la	$t9,times
    # Line 181
    move	$s6,$a0
    sd	$ra,32($sp)
    # Line 187
    jalr	$t9
    addiu	$a0,$sp,0
    la	$s0,sub_0f040000
    move	$s1,$v0
    li	$s2,515
    addiu	$s0,$s0,-27440
    b	.L0f12b988
    addiu	$s7,$s0,64
.L0f12b94c:
    # Line 209
    beqz	$s6,.L0f12bac8
    # Line 212
    la	$t9,_GLupdateVal
    lh	$at,20($s0)
.L0f12b958:
    beqzl	$at,.L0f12b980
    # Line 188
    addiu	$s0,$s0,16
    # Line 217
    beqz	$s3,.L0f12b974
    lw	$v0,28($s0)
    sltu	$v1,$v0,$s4
    beqzl	$v1,.L0f12b980
    # Line 188
    addiu	$s0,$s0,16
.L0f12b974:
    # Line 219
    move	$s4,$v0
    # Line 220
    li	$s3,1
.L0f12b97c:
    # Line 188
    addiu	$s0,$s0,16
.L0f12b980:
    beq	$s0,$s7,.L0f12ba34
    addiu	$s2,$s2,1
.L0f12b988:
    # Line 187
    lh	$a3,20($s0)
    beqz	$a3,.L0f12b97c
    # Line 202
    move	$a0,$zero
    # Line 187
    lw	$v0,28($s0)
    sltu	$a1,$s1,$v0
    bnezl	$a1,.L0f12b9c8
    # Line 197
    lw	$a2,24($s0)
    lh	$a2,18($s0)
    subu	$a1,$s1,$v0
    divu	$zero,$a1,$a2
    mflo	$a0
    addiu	$a0,$a0,1
    # Line 202
    beqz	$a0,.L0f12b94c
    # Line 197
    teq	$a2,$zero,0x7
    b	.L0f12b9f4
    # Line 204
    lh	$a1,18($s0)
.L0f12b9c8:
    # Line 197
    sltu	$a2,$s1,$a2
    beqz	$a2,.L0f12b9e8
    nop
    # Line 200
    lh	$a1,18($s0)
    divu	$zero,$s1,$a1
    teq	$a1,$zero,0x7
    mflo	$a0
    addiu	$a0,$a0,1
.L0f12b9e8:
    # Line 202
    beqz	$a0,.L0f12b94c
    nop
    # Line 204
    lh	$a1,18($s0)
.L0f12b9f4:
    mult	$a1,$a0
    # Line 206
    li	$s5,1
    # Line 205
    addu	$v1,$s1,$a3
    # Line 204
    lw	$a2,24($s0)
    # Line 205
    sw	$v1,28($s0)
    # Line 204
    mflo	$at
    addu	$a2,$a2,$at
    # Line 206
    beqz	$a0,.L0f12b94c
    # Line 204
    sw	$a2,24($s0)
    # Line 209
    la	$t9,_GLpostEvent
    move	$a2,$zero
    lh	$a1,26($s0)
    jalr	$t9
    andi	$a0,$s2,0xffff
    b	.L0f12b958
    # Line 212
    lh	$at,20($s0)
.L0f12ba34:
    ld	$s7,80($sp)
    ld	$s0,64($sp)
    ld	$ra,32($sp)
    ld	$s6,24($sp)
    move	$a2,$s3
    ld	$s3,16($sp)
    # Line 188
    beqz	$a2,.L0f12bab0
    ld	$s2,56($sp)
    # Line 226
    li	$s6,100
    # Line 224
    subu	$s7,$s4,$s1
    # Line 226
    divu	$zero,$s7,$s6
    ld	$ra,32($sp)
    # Line 225
    li	$s3,1
    ld	$s7,80($sp)
    # Line 226
    teq	$s6,$zero,0x7
    ld	$s6,24($sp)
    # Line 225
    sw	$s3,-19748($gp)
    # Line 226
    mflo	$s2
    ld	$s3,16($sp)
    sw	$s2,-19744($gp)
    mfhi	$s2
    # Line 227
    sll	$s0,$s2,0x2
    addu	$s0,$s0,$s2
    sll	$s0,$s0,0x3
    subu	$s0,$s0,$s2
    sll	$s0,$s0,0x4
    addu	$s0,$s0,$s2
    ld	$s2,56($sp)
    sll	$s0,$s0,0x4
    sw	$s0,-19740($gp)
    ld	$s0,64($sp)
.L0f12bab0:
    # Line 229
    move	$v0,$s5
    ld	$s1,72($sp)
    ld	$s4,40($sp)
    ld	$s5,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f12bac8:
    # Line 212
    lh	$a1,26($s0)
    jalr	$t9
    andi	$a0,$s2,0xffff
    b	.L0f12b958
    lh	$at,20($s0)
.end _GLComputeTimeout

# Function: _GLSetTimer
# Declared: Line 234 (Source lines: 235-263)
# Address: 0x0f12badc - 0x0f12bc08 (Size: 300 bytes, Frame: 192)
.globl _GLSetTimer
.ent _GLSetTimer
_GLSetTimer:
    # Line 240
    slti	$at,$a0,515
    # Line 235
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lui	$v0,0xfff0
    addiu	$v0,$v0,30572
    # Line 240
    bnez	$at,.L0f12bbd0
    # Line 235
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 240
    slti	$v1,$s0,519
    beqz	$v1,.L0f12bbd0
    # Line 243
    lw	$a2,-19752($gp)
    sd	$ra,40($sp)
    beqz	$a2,.L0f12bbf4
    sw	$zero,-19748($gp)
.L0f12bb20:
    # Line 246
    la	$t9,times
    jalr	$t9
    addiu	$a0,$sp,0
    la	$a2,sub_0f040000
    sll	$a0,$s0,0x4
    addiu	$a2,$a2,-27440
    beqz	$s1,.L0f12bbe4
    addu	$a0,$a0,$a2
    # Line 249
    lh	$a3,-8222($a0)
    bne	$a3,$s1,.L0f12bb58
    # Line 250
    li	$a2,1
    # Line 249
    lh	$at,-8224($a0)
    bnez	$at,.L0f12bbac
    # Line 262
    la	$t9,sub_0f130000
.L0f12bb58:
    # Line 252
    lw	$a3,-19752($gp)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,_lit_42c80000
    div.s	$f1,$f1,$f2
    mtc1	$s1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 253
    sw	$v0,-8216($a0)
    # Line 252
    mfc1	$v1,$f0
    # Line 251
    sh	$s1,-8222($a0)
    # Line 250
    sh	$a2,-8224($a0)
    # Line 252
    sh	$v1,-8220($a0)
    # Line 254
    dsll32	$v1,$v1,0x10
    dsra32	$v1,$v1,0x10
    addu	$v1,$v1,$v0
    sw	$v1,-8212($a0)
.L0f12bba8:
    # Line 262
    la	$t9,sub_0f130000
.L0f12bbac:
    addiu	$t9,$t9,-18192
    bal _GLdeliver_inputchange
    li	$a0,1
    ld	$gp,16($sp)
    # Line 263
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12bbd0:
    ld	$gp,16($sp)
    # Line 241
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12bbe4:
    # Line 259
    sw	$zero,-8212($a0)
    # Line 258
    sh	$zero,-8220($a0)
    b	.L0f12bba8
    # Line 257
    sh	$zero,-8222($a0)
.L0f12bbf4:
    # Line 245
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,66
    b	.L0f12bb20
    sw	$v0,-19752($gp)
.end _GLSetTimer

# Function: _GLWaitForEvent
# Declared: Line 276 (Source lines: 277-320)
# Address: 0x0f12bc08 - 0x0f12bd78 (Size: 368 bytes, Frame: 192)
.globl _GLWaitForEvent
.ent _GLWaitForEvent
_GLWaitForEvent:
    # Line 277
    addiu	$sp,$sp,-192
    sd	$ra,136($sp)
    sd	$s1,160($sp)
    addiu	$s1,$sp,0
    sd	$s4,176($sp)
    li	$s4,-1
    sd	$s2,152($sp)
    li	$s2,1
    sd	$s0,168($sp)
    sd	$gp,144($sp)
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,30272 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    b	.L0f12bc6c
    la	$s0,gl_sstatep
.L0f12bc44:
    # Line 289
    lw	$a0,28($v0)
    move	$a3,$zero
    lw	$a0,4($a0)
    move	$a2,$zero
    la	$t9,select
    lw	$a0,8($a0)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a0,1
    # Line 292
    bne	$v0,$s4,.L0f12bcf8
.L0f12bc6c:
    # Line 287
    li	$a2,128
.L0f12bc70:
    move	$a1,$zero
    addiu	$a0,$sp,0
    # Line 285
    lw	$a4,-19740($gp)
    # Line 287
    la	$t9,memset
    # Line 285
    lw	$a3,-19744($gp)
    sw	$a4,132($sp)
    # Line 287
    jalr	$t9
    # Line 285
    sw	$a3,128($sp)
    # Line 288
    lw	$v0,0($s0)
    lw	$at,28($v0)
    lw	$at,4($at)
    lw	$at,8($at)
    # Line 289
    addiu	$a4,$sp,128
    # Line 288
    lw	$a0,-19748($gp)
    sra	$a2,$at,0x1f
    xor	$a1,$at,$a2
    subu	$a1,$a1,$a2
    sra	$a2,$at,0x1f
    andi	$a1,$a1,0x1f
    xor	$a1,$a1,$a2
    sra	$v1,$at,0x4
    srl	$v1,$v1,0x1b
    addu	$v1,$v1,$at
    sra	$v1,$v1,0x5
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s1
    lw	$at,0($v1)
    subu	$a1,$a1,$a2
    sllv	$a1,$s2,$a1
    or	$at,$at,$a1
    bnez	$a0,.L0f12bc44
    sw	$at,0($v1)
    b	.L0f12bc44
    # Line 289
    move	$a4,$zero
.L0f12bcf8:
    # Line 292
    beqz	$v0,.L0f12bd3c
    # Line 304
    lw	$a0,0($s0)
    la	$t9,XEventsQueued
    lw	$a0,28($a0)
    li	$a1,1
    jalr	$t9
    lw	$a0,4($a0)
    beqz	$v0,.L0f12bc70
    # Line 287
    li	$a2,128
    ld	$gp,144($sp)
    # Line 320
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    ld	$ra,136($sp)
    ld	$s2,152($sp)
    ld	$s4,176($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0f12bd3c:
    la	$t9,sub_0f130000
    addiu	$t9,$t9,-18192
    # Line 300
    bal _GLdeliver_inputchange
    li	$a0,1
    beqz	$v0,.L0f12bc70
    # Line 287
    li	$a2,128
    # Line 301
    move	$v0,$zero
    ld	$gp,144($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    ld	$ra,136($sp)
    ld	$s2,152($sp)
    ld	$s4,176($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end _GLWaitForEvent

# Function: _GLgrabEverything
# Declared: Line 360 (Source lines: 361-422)
# Address: 0x0f12bd78 - 0x0f12c02c (Size: 692 bytes, Frame: 208)
.globl _GLgrabEverything
.ent _GLgrabEverything
_GLgrabEverything:
    # Line 367
    li	$a2,3
    # Line 361
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,29904 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,_GLsoftAttach
    # Line 367
    li	$a3,4
    # Line 386
    li	$a5,1
    # Line 361
    lw	$at,0($at)
    # Line 386
    la	$t1,sub_0f040000
    # Line 361
    move	$v0,$a1
    beqz	$at,.L0f12bf1c
    # Line 386
    addiu	$t1,$t1,-27440
    sd	$s1,32($sp)
    # Line 367
    lw	$s1,0($a0)
    li	$v1,2
    beq	$s1,$v1,.L0f12be48
    li	$at,5
    beq	$s1,$a2,.L0f12be54
    # Line 373
    move	$a4,$zero
    # Line 367
    beq	$s1,$a3,.L0f12be5c
    # Line 377
    li	$a4,1
    # Line 367
    beq	$s1,$at,.L0f12bdec
    # Line 381
    move	$a4,$zero
    ld	$gp,24($sp)
    # Line 385
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f12bdec:
    ld	$s1,32($sp)
.L0f12bdf0:
    # Line 386
    la	$a1,_GLhaveActiveGrab
    lw	$t0,52($a0)
    lw	$a7,0($a1)
    sllv	$a5,$a5,$t0
    sra	$t0,$t0,0x5
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$t1
    beqz	$a4,.L0f12be64
    lw	$a6,88($t0)
    # Line 389
    or	$at,$a5,$a6
    bnez	$a7,.L0f12be3c
    sw	$at,88($t0)
    beqz	$v0,.L0f12be3c
    # Line 391
    la	$v1,gl_sstatep
    lw	$v1,0($v1)
    lw	$v1,28($v1)
    lw	$v1,132($v1)
    beqz	$v1,.L0f12bf28
    sd	$v0,16($sp)
.L0f12be3c:
    ld	$gp,24($sp)
.L0f12be40:
    # Line 422
    jr	$ra
    addiu	$sp,$sp,80
.L0f12be48:
    # Line 369
    li	$a4,1
    # Line 371
    b	.L0f12bdf0
    ld	$s1,32($sp)
.L0f12be54:
    # Line 375
    b	.L0f12bdf0
    ld	$s1,32($sp)
.L0f12be5c:
    # Line 379
    b	.L0f12bdf0
    ld	$s1,32($sp)
.L0f12be64:
    # Line 415
    nor	$a2,$a5,$zero
    and	$a2,$a2,$a6
    beqz	$a7,.L0f12be3c
    sw	$a2,88($t0)
    lw	$a3,88($t1)
    bnez	$a3,.L0f12be3c
    lw	$at,92($t1)
    bnezl	$at,.L0f12be40
    ld	$gp,24($sp)
    # Line 416
    lw	$v1,96($t1)
    bnezl	$v1,.L0f12be40
    ld	$gp,24($sp)
    lw	$a2,100($t1)
    bnezl	$a2,.L0f12be40
    ld	$gp,24($sp)
    lw	$a3,104($t1)
    bnezl	$a3,.L0f12be40
    ld	$gp,24($sp)
    lw	$at,108($t1)
    bnezl	$at,.L0f12be40
    ld	$gp,24($sp)
    lw	$v1,112($t1)
    bnezl	$v1,.L0f12be40
    ld	$gp,24($sp)
    lw	$a2,116($t1)
    bnezl	$a2,.L0f12be40
    ld	$gp,24($sp)
    la	$a0,gl_sstatep
    # Line 417
    lw	$a0,0($a0)
    move	$a1,$zero
    la	$t9,XUngrabPointer
    lw	$a0,28($a0)
    sd	$ra,48($sp)
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 418
    lw	$a0,0($a0)
    la	$t9,XUngrabKeyboard
    lw	$a0,28($a0)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,4($a0)
    la	$a2,_GLhaveActiveGrab
    ld	$ra,48($sp)
    b	.L0f12be3c
    # Line 419
    sw	$zero,0($a2)
.L0f12bf1c:
    ld	$gp,24($sp)
    # Line 365
    jr	$ra
    addiu	$sp,$sp,80
.L0f12bf28:
    # Line 395
    la	$t9,_GLgrabCurrentCursor
    ld	$s1,16($sp)
    sd	$ra,48($sp)
    bal _GLgrabCurrentCursor
    move	$a0,$s1
    move	$a7,$v0
    # Line 396
    move	$a6,$zero
    la	$a0,gl_sstatep
    li	$a5,1
    li	$a4,1
    lw	$a0,0($a0)
    li	$a3,76
    li	$a2,1
    lw	$a0,28($a0)
    la	$t9,XGrabPointer
    lw	$a1,64($s1)
    lw	$a0,4($a0)
    jalr	$t9
    sw	$zero,4($sp)
    sd	$v0,40($sp)
    # Line 399
    move	$a5,$zero
    la	$a0,gl_sstatep
    li	$a4,1
    li	$a3,1
    lw	$a0,0($a0)
    li	$a2,1
    la	$t9,XGrabKeyboard
    lw	$a0,28($a0)
    lw	$a1,64($s1)
    jalr	$t9
    lw	$a0,4($a0)
    move	$s1,$v0
    ld	$a4,40($sp)
    beqz	$v0,.L0f12bfec
    ld	$ra,48($sp)
    # Line 403
    beqz	$a4,.L0f12c008
.L0f12bfb8:
    move	$a2,$s1
.L0f12bfbc:
    # Line 407
    bnez	$a2,.L0f12be3c
    ld	$s1,32($sp)
    la	$a0,gl_sstatep
    # Line 410
    lw	$a0,0($a0)
    move	$a1,$zero
    la	$t9,XUngrabKeyboard
    lw	$a0,28($a0)
    ld	$s1,32($sp)
    jalr	$t9
    lw	$a0,4($a0)
    b	.L0f12be3c
    ld	$ra,48($sp)
.L0f12bfec:
    # Line 399
    bnez	$a4,.L0f12bfbc
    move	$a2,$s1
    la	$a3,_GLhaveActiveGrab
    ld	$a2,16($sp)
    ld	$s1,32($sp)
    # Line 403
    b	.L0f12be3c
    sw	$a2,0($a3)
.L0f12c008:
    la	$a0,gl_sstatep
    # Line 407
    lw	$a0,0($a0)
    la	$t9,XUngrabPointer
    lw	$a0,28($a0)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,4($a0)
    b	.L0f12bfb8
    ld	$ra,48($sp)
.end _GLgrabEverything

# Function: _GLnextLockState
# Declared: Line 448 (Source lines: 449-486)
# Address: 0x0f12c02c - 0x0f12c188 (Size: 348 bytes, Frame: 48)
.ent _GLnextLockState
_GLnextLockState:
    # Line 451
    li	$v0,-1
    li	$at,4
    # Line 449
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$s1,16($sp)
    # Line 451
    beq	$a1,$at,.L0f12c11c
    sw	$v0,0($sp)
    # Line 452
    la	$s1,_GLnumLockMask
    lw	$s1,0($s1)
.L0f12c054:
    lw	$at,0($a0)
    li	$v1,2
    bne	$at,$v1,.L0f12c0a4
    # Line 455
    li	$v0,3
    # Line 452
    lw	$a2,48($a0)
    and	$a2,$a2,$s1
    beqz	$a2,.L0f12c138
    nop
.L0f12c074:
    sd	$ra,24($sp)
    # Line 455
    move	$s1,$v0
.L0f12c07c:
    # Line 485
    la	$t9,_GLsetLockState
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 486
    ld	$s0,8($sp)
    ld	$ra,24($sp)
    move	$v0,$s1
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12c0a4:
    # Line 458
    la	$t9,_GLgetLockState
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    li	$a3,3
    dsll32	$a1,$v0,0x10
    dsra32	$a1,$a1,0x10
    beq	$a1,$a3,.L0f12c128
    # Line 460
    li	$a0,1
    bne	$a1,$a0,.L0f12c0f0
    # Line 479
    la	$t9,_GLqueryModState
    # Line 460
    lw	$a1,-14348($gp)
    li	$a2,2
    beq	$a1,$a2,.L0f12c140
    # Line 466
    la	$t9,_GLqueryModState
.L0f12c0e0:
    # Line 469
    beq	$a1,$a0,.L0f12c16c
.L0f12c0e4:
    # Line 471
    move	$v0,$zero
.L0f12c0e8:
    b	.L0f12c07c
    move	$s1,$v0
.L0f12c0f0:
    # Line 479
    jalr	$t9
    addiu	$a0,$sp,0
    beqz	$v0,.L0f12c130
    lw	$v0,0($sp)
    li	$a3,-1
    beq	$v0,$a3,.L0f12c130
    and	$at,$s1,$v0
    beqz	$at,.L0f12c174
    # Line 480
    li	$v0,2
.L0f12c114:
    b	.L0f12c07c
    move	$s1,$v0
.L0f12c11c:
    # Line 452
    la	$s1,_GLcapsLockMask
    b	.L0f12c054
    lw	$s1,0($s1)
.L0f12c128:
    # Line 460
    b	.L0f12c07c
    move	$s1,$zero
.L0f12c130:
    b	.L0f12c07c
    # Line 482
    li	$s1,13
.L0f12c138:
    b	.L0f12c074
    # Line 455
    li	$v0,1
.L0f12c140:
    # Line 466
    jalr	$t9
    addiu	$a0,$sp,0
    beqz	$v0,.L0f12c17c
    li	$a0,1
    lw	$v0,0($sp)
    li	$at,-1
    beq	$v0,$at,.L0f12c17c
    # Line 467
    and	$a1,$s1,$v0
    sltu	$a1,$zero,$a1
    # Line 469
    bne	$a1,$a0,.L0f12c0e4
    # Line 467
    sw	$a1,-14348($gp)
.L0f12c16c:
    # Line 471
    b	.L0f12c0e8
    li	$v0,2
.L0f12c174:
    b	.L0f12c114
    # Line 480
    move	$v0,$zero
.L0f12c17c:
    # Line 469
    li	$a1,1
    b	.L0f12c0e0
    sw	$a1,-14348($gp)
.end _GLnextLockState

# Function: _GLWaitForEventType
# Declared: Line 489 (Source lines: 490-505)
# Address: 0x0f12c188 - 0x0f12c1fc (Size: 116 bytes, Frame: 192)
.globl _GLWaitForEventType
.ent _GLWaitForEventType
_GLWaitForEventType:
    # Line 490
    li	$v0,5
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lbu	$at,44($a0)
    lui	$v1,0xfff0
    addiu	$v1,$v1,28864
    beq	$at,$v0,.L0f12c1ec
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    sd	$ra,0($sp)
    # Line 501
    sw	$a2,40($s0)
    # Line 500
    sw	$a1,36($s0)
    # Line 503
    la	$t9,_GLupdateQueue
.L0f12c1c0:
    move	$a1,$zero
    bal _GLupdateQueue
    li	$a0,1
    lw	$a3,36($s0)
    bnez	$a3,.L0f12c1c0
    la	$t9,_GLupdateQueue
    # Line 505
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f12c1ec:
    ld	$gp,8($sp)
    # Line 492
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end _GLWaitForEventType

# Function: _GLupdateQueue
# Declared: Line 514 (Source lines: 515-1085)
# Address: 0x0f12c1fc - 0x0f12cf84 (Size: 3464 bytes, Frame: 144)
.globl _GLupdateQueue
.ent _GLupdateQueue
_GLupdateQueue:
    # Line 515
    addiu	$sp,$sp,-1424
    sd	$s0,1320($sp)
    # Line 519
    move	$s0,$zero
    sd	$s3,1296($sp)
    # Line 518
    move	$s3,$zero
    sd	$s6,1288($sp)
    # Line 515
    move	$s6,$zero
    sd	$zero,1248($sp)
    sd	$zero,1240($sp)
    sd	$zero,1232($sp)
    sd	$s7,1304($sp)
    move	$s7,$zero
    sd	$zero,1264($sp)
    sd	$zero,1256($sp)
    sd	$zero,1216($sp)
    sd	$zero,1208($sp)
    sd	$gp,1328($sp)
    # lui	at,0xfff0 (gp disp hi)
    # addiu	at,at,28748 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 521
    la	$t9,_GLinitgl
    sd	$a1,1224($sp)
    sd	$ra,1312($sp)
    bal _GLinitgl
    sd	$a0,1280($sp)
    la	$v1,_GLdirtycmaps
    lw	$v1,0($v1)
    beqz	$v1,.L0f12c278
    # Line 523
    la	$t9,_GLflushcmaps
    jalr	$t9
    nop
.L0f12c278:
    lw	$a2,-19748($gp)
    beqz	$a2,.L0f12c2a0
    # Line 528
    la	$t9,sub_0f130000
    addiu	$t9,$t9,-18192
    bal _GLdeliver_inputchange
    li	$a0,1
    beqzl	$v0,.L0f12c2a4
    sd	$s4,1352($sp)
    sd	$s4,1352($sp)
    sd	$zero,1280($sp)
.L0f12c2a0:
    sd	$s4,1352($sp)
.L0f12c2a4:
    # Line 529
    la	$s4,gl_sstatep
    # Line 535
    lw	$a0,0($s4)
    la	$t9,XEventsQueued
    lw	$a0,28($a0)
    li	$a1,2
    jalr	$t9
    lw	$a0,4($a0)
    beqz	$v0,.L0f12cf10
    sd	$v0,1336($sp)
.L0f12c2c8:
    sd	$s1,1368($sp)
    sd	$s8,1360($sp)
    sd	$s2,1344($sp)
    ld	$s2,1336($sp)
    sd	$s5,1376($sp)
    b	.L0f12c314
    # Line 539
    li	$s5,-1
.L0f12c2e4:
    ld	$a2,1336($sp)
.L0f12c2e8:
    # Line 541
    beqz	$a2,.L0f12cc6c
    # Line 1074
    lw	$a0,0($s4)
    la	$t9,XEventsQueued
    lw	$a0,28($a0)
    li	$a1,2
    jalr	$t9
    lw	$a0,4($a0)
    move	$s2,$v0
    move	$a2,$v0
    beqz	$v0,.L0f12cc6c
    sd	$v0,1336($sp)
.L0f12c314:
    # Line 541
    addiu	$s2,$s2,-1
    beq	$s2,$s5,.L0f12c2e8
    ld	$a2,1336($sp)
    b	.L0f12c344
    # Line 545
    lw	$a0,0($s4)
.L0f12c328:
    # Line 1068
    la	$t9,_GLProcessExtEvent
    jalr	$t9
    addiu	$a0,$sp,1056
.L0f12c334:
    # Line 1071
    move	$s6,$zero
.L0f12c338:
    # Line 541
    addiu	$s2,$s2,-1
    beq	$s2,$s5,.L0f12c2e4
    # Line 545
    lw	$a0,0($s4)
.L0f12c344:
    la	$t9,XNextEvent
    lw	$a0,28($a0)
    addiu	$a1,$sp,1056
    jalr	$t9
    lw	$a0,4($a0)
    lw	$a1,1072($sp)
    bne	$s3,$a1,.L0f12c450
.L0f12c360:
    # Line 739
    li	$a6,528
    # Line 551
    beqz	$s0,.L0f12c3fc
    # Line 561
    move	$s1,$zero
    lw	$a0,1056($sp)
    lw	$a2,36($s0)
    bnel	$a2,$a0,.L0f12c39c
    # Line 565
    lw	$a4,12($s0)
    # Line 563
    lw	$v0,40($s0)
    beqz	$v0,.L0f12c390
    lw	$a3,1072($sp)
    bne	$a3,$v0,.L0f12c398
    # Line 565
    lw	$a0,1056($sp)
.L0f12c390:
    sw	$zero,36($s0)
    lw	$a0,1056($sp)
.L0f12c398:
    lw	$a4,12($s0)
.L0f12c39c:
    # Line 600
    sltiu	$v1,$a0,34
    # Line 565
    lw	$at,112($a4)
    li	$a3,26
    li	$a2,4
    bne	$at,$s0,.L0f12c42c
    # Line 600
    sll	$a5,$a0,0x2
    li	$v1,19
    # Line 565
    beq	$a0,$v1,.L0f12c3d0
    li	$a2,22
    beq	$a0,$a2,.L0f12c3d4
    # Line 577
    la	$t9,__GLisqueued
    # Line 565
    bne	$a0,$a3,.L0f12c404
    # Line 1002
    lw	$v0,1056($sp)
.L0f12c3d0:
    # Line 577
    la	$t9,__GLisqueued
.L0f12c3d4:
    jalr	$t9
    li	$a0,543
    beqz	$v0,.L0f12c61c
    la	$s8,gl_thedisplay
    # Line 578
    lw	$s8,0($s8)
    lw	$s8,20($s8)
    beqz	$s8,.L0f12c620
    # Line 592
    la	$t9,_GLfindbgwin
    b	.L0f12c5ec
    # Line 578
    lbu	$a5,45($s8)
.L0f12c3fc:
    # Line 1002
    li	$s1,1
.L0f12c400:
    lw	$v0,1056($sp)
.L0f12c404:
    beqz	$s1,.L0f12c338
    nop	# was la	$v1,sub_0f020000
    la	$v1,jtbl_0f025c50
    sltiu	$a2,$v0,35
    sll	$v0,$v0,0x2
    beqz	$a2,.L0f12c328
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    # Line 1032
    lw	$a2,1076($sp)
.L0f12c42c:
    # Line 600
    # la	at,sub_0f020000
    la	$at,jtbl_0f025bc8
    beqz	$v1,.L0f12c470
    addu	$a5,$a5,$at
    lw	$v1,0($a5)
    la	$a3,_GLkeyfocusWindow
    li	$at,4
    jr	$v1
    la	$v0,_GLpointerWindow
.L0f12c450:
    # Line 551
    lw	$a0,0($s4)
    la	$t9,gl_glx_findwindow
    lw	$a0,28($a0)
    # Line 550
    move	$s3,$a1
    # Line 551
    bal gl_glx_findwindow
    lw	$a0,4($a0)
    b	.L0f12c360
    move	$s0,$v0
.L0f12c470:
    # Line 997
    li	$s1,1
.L0f12c474:
    sd	$zero,1208($sp)
.L0f12c478:
    sd	$zero,1216($sp)
    sd	$zero,1256($sp)
    sd	$zero,1264($sp)
    # Line 1000
    move	$s7,$zero
    sd	$zero,1232($sp)
    sd	$zero,1240($sp)
    b	.L0f12c400
    sd	$zero,1248($sp)
.L0f12c498:
    # Line 1016
    move	$a4,$zero
    addiu	$a3,$sp,1200
    la	$t9,XLookupString
    li	$a2,8
    addiu	$a1,$sp,1192
    jalr	$t9
    addiu	$a0,$sp,1056
    # Line 1017
    lw	$v0,1200($sp)
    li	$v1,0xff7f
    li	$a2,0xffe1
    sltu	$a2,$v0,$a2
    bnez	$a2,.L0f12c4dc
    li	$at,0xff7e
    li	$a3,0xffee
    sltu	$a3,$a3,$v0
    beqzl	$a3,.L0f12c4f0
    move	$v0,$zero
.L0f12c4dc:
    beql	$at,$v0,.L0f12c4f0
    move	$v0,$zero
    beq	$v1,$v0,.L0f12c4f0
    move	$v0,$zero
    li	$v0,1
.L0f12c4f0:
    bnez	$v0,.L0f12c338
    # Line 1071
    move	$s6,$zero
.L0f12c4f8:
    # Line 1023
    la	$t9,_GLgrabEverything
    move	$a1,$zero
    bal _GLgrabEverything
    addiu	$a0,$sp,1056
    # Line 1024
    la	$t9,_GLupdatePointer
    jalr	$t9
    addiu	$a0,$sp,1056
    b	.L0f12c338
    # Line 1071
    move	$s6,$zero
.L0f12c51c:
    # Line 1032
    bnez	$a2,.L0f12c334
    sw	$zero,-19732($gp)
    # Line 1036
    la	$t9,_GLdeliver_inputchange
    la	$a3,_GLkeyfocusWindow
    # Line 1035
    sw	$zero,-19728($gp)
    # Line 1036
    bal _GLdeliver_inputchange
    # Line 1034
    sw	$zero,0($a3)
    b	.L0f12c338
    # Line 1071
    move	$s6,$zero
.L0f12c540:
    # Line 1041
    la	$t9,_GLupdatePointer
    jalr	$t9
    addiu	$a0,$sp,1056
    # Line 1042
    la	$t9,_GLupdateLockKeys
    jalr	$t9
    lw	$a0,1120($sp)
    # Line 1043
    lw	$at,1104($sp)
    beqz	$at,.L0f12cc50
    sw	$zero,-19732($gp)
.L0f12c564:
    # Line 1047
    bnez	$s6,.L0f12c338
    # Line 1071
    move	$s6,$zero
    # Line 1047
    lw	$v1,1116($sp)
    la	$at,_GLkeyfocusWindow
    beqz	$v1,.L0f12c334
    la	$a3,_GLpointerWindow
    # Line 1051
    lw	$a2,-19732($gp)
    lw	$a3,0($a3)
    bnez	$a2,.L0f12c334
    sw	$a3,0($at)
    # Line 1053
    la	$t9,_GLdeliver_inputchange
    bal _GLdeliver_inputchange
    nop
    b	.L0f12c338
    # Line 1071
    move	$s6,$zero
.L0f12c5a0:
    # Line 1058
    la	$t9,_GLRefreshKeyboardMapping
    jalr	$t9
    addiu	$a0,$sp,1056
    b	.L0f12c338
    # Line 1071
    move	$s6,$zero
.L0f12c5b4:
    # Line 1063
    la	$t9,_GLSetButtonState
    jalr	$t9
    addiu	$a0,$sp,1056
    b	.L0f12c338
    # Line 1071
    move	$s6,$zero
.L0f12c5c8:
    # Line 583
    la	$t9,_GLpostEvent
    li	$a0,543
    dsll32	$a1,$a5,0x10
    jalr	$t9
    dsra32	$a1,$a1,0x10
    # Line 578
    lw	$s8,0($s8)
.L0f12c5e0:
    beqz	$s8,.L0f12c61c
    nop
    lbu	$a5,45($s8)
.L0f12c5ec:
    beqzl	$a5,.L0f12c5e0
    lw	$s8,0($s8)
    lw	$a2,32($s8)
    andi	$a2,$a2,0x2
    beqzl	$a2,.L0f12c5e0
    lw	$s8,0($s8)
    # Line 579
    lw	$at,12($s8)
    lw	$a3,12($s0)
    bnel	$a3,$at,.L0f12c5e0
    # Line 578
    lw	$s8,0($s8)
    b	.L0f12c5c8
    # Line 583
    li	$a2,2
.L0f12c61c:
    # Line 592
    la	$t9,_GLfindbgwin
.L0f12c620:
    bal _GLfindbgwin
    lw	$a0,4($s0)
    beqz	$v0,.L0f12c400
    move	$s8,$v0
    # Line 593
    la	$t9,XLowerWindow
    lw	$a1,64($s8)
    jalr	$t9
    lw	$a0,4($s8)
    # Line 594
    la	$t9,XFlush
    jalr	$t9
    lw	$a0,4($s8)
    b	.L0f12c404
    # Line 1002
    lw	$v0,1056($sp)
.L0f12c654:
    # Line 612
    lw	$s7,0($a4)
    lw	$s7,24($s7)
    lw	$v0,1076($sp)
    lw	$v1,36($s7)
    beq	$v1,$v0,.L0f12cd14
    # Line 626
    addiu	$a7,$sp,1156
    # Line 647
    lw	$at,32($s0)
    andi	$at,$at,0x800
    beqz	$at,.L0f12c474
    li	$v1,40
    # Line 648
    beq	$v1,$v0,.L0f12c694
    # Line 665
    la	$t9,gl_adjust_window
    # Line 648
    lw	$a2,20($s7)
    bnel	$a2,$v0,.L0f12c478
    sd	$zero,1208($sp)
    # Line 665
    la	$t9,gl_adjust_window
.L0f12c694:
    move	$a0,$s0
    move	$a1,$zero
    bal gl_adjust_window
    move	$a2,$zero
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12c6ac:
    # Line 678
    lw	$a1,64($s0)
    lw	$a3,1072($sp)
    bnel	$a3,$a1,.L0f12c478
    sd	$zero,1208($sp)
    lw	$a0,32($s0)
    andi	$at,$a0,0x4
    beqz	$at,.L0f12c6e4
    # Line 680
    la	$t9,XLowerWindow
    jalr	$t9
    lw	$a0,4($s0)
    # Line 681
    la	$t9,XFlush
    jalr	$t9
    lw	$a0,4($s0)
    lw	$a0,32($s0)
.L0f12c6e4:
    # Line 683
    ori	$v1,$a0,0x2
    b	.L0f12c474
    sw	$v1,32($s0)
.L0f12c6f0:
    # Line 687
    lw	$a3,1072($sp)
    lw	$a2,64($s0)
    bnel	$a2,$a3,.L0f12c478
    sd	$zero,1208($sp)
    li	$v1,-3
    # Line 688
    lw	$at,32($s0)
    and	$at,$at,$v1
    b	.L0f12c474
    sw	$at,32($s0)
.L0f12c714:
    # Line 692
    lw	$a2,32($s0)
    andi	$a2,$a2,0x4
    beqz	$a2,.L0f12c474
    # Line 693
    la	$t9,XLowerWindow
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 694
    la	$t9,XFlush
    jalr	$t9
    lw	$a0,4($s0)
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12c744:
    # Line 703
    lw	$a1,60($s0)
    lw	$s7,1076($sp)
    lw	$a3,64($s0)
    # Line 702
    lw	$v0,56($s0)
    # Line 701
    lw	$s8,52($s0)
    # Line 703
    beq	$a3,$s7,.L0f12ccec
    # Line 700
    lw	$s7,48($s0)
.L0f12c760:
    # Line 705
    lw	$a0,32($s0)
    # Line 723
    li	$a6,528
    # Line 705
    andi	$at,$a0,0x4
    beqz	$at,.L0f12cdc8
    lw	$v1,1100($sp)
    beqz	$v1,.L0f12c474
    # Line 716
    la	$t9,XLowerWindow
    lw	$a1,64($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 717
    la	$t9,XFlush
    jalr	$t9
    lw	$a0,4($s0)
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12c79c:
    # Line 731
    lw	$a2,1092($sp)
    bnez	$a2,.L0f12c474
    li	$at,3
    lbu	$a5,45($s0)
    beqzl	$a5,.L0f12c478
    sd	$zero,1208($sp)
    lbu	$a3,44($s0)
    beq	$a3,$at,.L0f12cf4c
    # Line 735
    lw	$a2,1072($sp)
    lw	$v1,8($s0)
    beq	$v1,$a2,.L0f12cf08
    nop
    # Line 737
    li	$a6,547
.L0f12c7d0:
    # Line 740
    li	$a2,2
.L0f12c7d4:
    la	$t9,_GLpostEvent
    andi	$a0,$a6,0xffff
    dsll32	$a1,$a5,0x10
    jalr	$t9
    dsra32	$a1,$a1,0x10
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12c7f0:
    # Line 746
    lbu	$a2,45($s0)
    beqz	$a2,.L0f12c474
    # Line 749
    lw	$a1,1100($sp)
    la	$t9,_GLinvertY
    # Line 748
    lw	$a3,1096($sp)
    # Line 749
    move	$a0,$s0
    bal _GLinvertY
    # Line 748
    sh	$a3,1176($sp)
    # Line 750
    move	$a4,$zero
    lw	$a3,1084($sp)
    addiu	$a2,$sp,1176
    la	$t9,_GLpostMotionEvent
    move	$a1,$zero
    li	$a0,2
    jalr	$t9
    # Line 749
    sh	$v0,1178($sp)
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12c838:
    # Line 757
    la	$t9,_GLgrabEverything
    move	$a1,$s0
    bal _GLgrabEverything
    addiu	$a0,$sp,1056
    # Line 758
    la	$t9,_GLupdatePointer
    jalr	$t9
    addiu	$a0,$sp,1056
    lbu	$at,45($s0)
    beqz	$at,.L0f12c474
    # Line 760
    lh	$a0,1110($sp)
    lw	$a1,1056($sp)
    la	$t9,_GLpostCoreButtonEvent
    li	$a2,4
    xor	$a1,$a1,$a2
    jalr	$t9
    sltiu	$a1,$a1,1
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12c880:
    # Line 768
    lw	$v0,0($v0)
    beqz	$v0,.L0f12c8ac
    sw	$s0,0($a3)
    beql	$s0,$v0,.L0f12c8b0
    # Line 777
    move	$v0,$zero
    lbu	$v1,44($s0)
    beql	$v1,$a2,.L0f12cec0
    lw	$a2,68($s0)
    lbu	$a3,44($v0)
.L0f12c8a4:
    beql	$a3,$at,.L0f12ced0
    lw	$a3,68($v0)
.L0f12c8ac:
    move	$v0,$zero
.L0f12c8b0:
    bnezl	$v0,.L0f12c478
    sd	$zero,1208($sp)
    # Line 782
    la	$t9,_GLdeliver_inputchange
    li	$v0,1
    bal _GLdeliver_inputchange
    # Line 781
    sw	$v0,-19728($gp)
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12c8d0:
    la	$v1,_GLpointerWindow
    # Line 788
    lw	$v1,0($v1)
    la	$a2,_GLkeyfocusWindow
    bnez	$v1,.L0f12c474
    sw	$zero,0($a2)
    # Line 797
    la	$t9,_GLdeliver_inputchange
    bal _GLdeliver_inputchange
    # Line 796
    sw	$zero,-19728($gp)
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12c8f8:
    # Line 803
    la	$t9,_GLupdatePointer
    jalr	$t9
    addiu	$a0,$sp,1056
    # Line 804
    la	$t9,_GLupdateLockKeys
    jalr	$t9
    lw	$a0,1120($sp)
    lw	$v0,1104($sp)
    la	$at,_GLpointerWindow
    li	$a2,1
    beq	$v0,$a2,.L0f12ce3c
    # Line 821
    lw	$v1,1116($sp)
    li	$a3,2
    # Line 819
    beq	$v0,$a3,.L0f12ce74
    sw	$s0,0($at)
.L0f12c930:
    la	$at,_GLkeyfocusWindow
    # Line 821
    beqz	$v1,.L0f12c474
    la	$a3,_GLpointerWindow
    # Line 824
    lw	$a2,-19732($gp)
    lw	$a3,0($a3)
    bnez	$a2,.L0f12c474
    sw	$a3,0($at)
    # Line 826
    la	$t9,_GLdeliver_inputchange
    bal _GLdeliver_inputchange
    nop
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12c960:
    # Line 835
    addiu	$a0,$sp,1056
    # Line 832
    lbu	$s7,44($s0)
    # Line 833
    lw	$ra,1072($sp)
    lw	$s8,64($s0)
    # Line 835
    la	$t9,_GLupdatePointer
    # Line 832
    andi	$s7,$s7,0x4
    # Line 833
    xor	$s8,$s8,$ra
    # Line 835
    jalr	$t9
    # Line 833
    sltiu	$s8,$s8,1
    # Line 836
    la	$t9,_GLupdateLockKeys
    jalr	$t9
    lw	$a0,1120($sp)
    lw	$at,1104($sp)
    li	$a2,2
    li	$v1,2
    beq	$at,$v1,.L0f12ce48
    # Line 847
    lw	$v0,1108($sp)
    beq	$a2,$v0,.L0f12c9d0
    # Line 882
    lw	$v1,1116($sp)
    # Line 847
    beqz	$v0,.L0f12ce58
    nop
    # Line 870
    beqz	$s8,.L0f12c9d0
    # Line 882
    lw	$v1,1116($sp)
    # Line 870
    beqz	$s7,.L0f12cf34
    la	$at,_GLpointerWindow
    # Line 878
    lw	$a3,68($s0)
    sw	$a3,0($at)
.L0f12c9cc:
    # Line 882
    lw	$v1,1116($sp)
.L0f12c9d0:
    la	$a3,_GLpointerWindow
    beqz	$v1,.L0f12c474
    lw	$a2,-19728($gp)
    beqz	$a2,.L0f12ca14
    ld	$a2,1208($sp)
    beqz	$s7,.L0f12ce7c
    # Line 903
    li	$a2,1
    # Line 900
    lw	$at,68($s0)
    lw	$a3,0($a3)
    xor	$a3,$a3,$at
    sltu	$a3,$zero,$a3
    sd	$a3,1216($sp)
.L0f12ca00:
    ld	$at,1216($sp)
    move	$v1,$at
    beqz	$at,.L0f12ce84
    sd	$at,1208($sp)
.L0f12ca10:
    ld	$a2,1208($sp)
.L0f12ca14:
    bnezl	$a2,.L0f12c478
    sd	$zero,1208($sp)
    ld	$a3,1256($sp)
    la	$a2,_GLkeyfocusWindow
    # Line 903
    bnez	$a3,.L0f12c474
    la	$v1,_GLpointerWindow
    # Line 905
    lw	$at,-19732($gp)
    lw	$v1,0($v1)
    bnez	$at,.L0f12c474
    sw	$v1,0($a2)
    # Line 907
    la	$t9,_GLdeliver_inputchange
    bal _GLdeliver_inputchange
    nop
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12ca50:
    # Line 919
    la	$t9,_GLupdatePointer
    jalr	$t9
    addiu	$a0,$sp,1056
    # Line 920
    move	$a4,$zero
    addiu	$a3,$sp,1184
    la	$t9,XLookupString
    li	$a2,1024
    addiu	$a1,$sp,32
    jalr	$t9
    addiu	$a0,$sp,1056
    lw	$a0,1184($sp)
    li	$v1,0xff7f
    li	$a2,0xffe1
    sltu	$a2,$a0,$a2
    bnez	$a2,.L0f12ca9c
    sd	$v0,1272($sp)
    li	$a3,0xffee
    # Line 921
    sltu	$a3,$a3,$a0
    beqz	$a3,.L0f12cc28
.L0f12ca9c:
    li	$at,0xff7e
    beql	$at,$a0,.L0f12cc2c
    li	$v1,0xffe9
    beq	$v1,$a0,.L0f12cc28
.L0f12caac:
    # Line 925
    la	$t9,_GLKeycodeToDevice
.L0f12cab0:
    jalr	$t9
    lw	$a0,1108($sp)
    lw	$a0,1184($sp)
    # Line 945
    move	$a4,$zero
    li	$a3,1
    # Line 925
    andi	$a2,$v0,0xffff
    beq	$a2,$a3,.L0f12cda8
    andi	$s8,$v0,0xffff
.L0f12cad0:
    li	$at,0xffe5
.L0f12cad4:
    # Line 945
    beq	$at,$a0,.L0f12cdbc
    li	$v1,0xff7f
    # Line 947
    beql	$v1,$a0,.L0f12ce50
    la	$a4,_GLnumLockMask
.L0f12cae4:
    # Line 949
    beqz	$a4,.L0f12cb34
    nop
    la	$s7,sub_0f130000
    # Line 954
    addiu	$a0,$sp,1056
    move	$a1,$s8
    addiu	$s7,$s7,-16340
    bal _GLgrabEverything
    move	$t9,$s7
    lw	$at,1056($sp)
    dsll32	$a0,$v0,0x10
    li	$v1,2
    beq	$at,$v1,.L0f12ce90
    dsra32	$a0,$a0,0x10
    li	$a2,2
    # Line 961
    xor	$a2,$a0,$a2
    sltiu	$a2,$a2,1
    sd	$a2,1248($sp)
.L0f12cb28:
    ld	$a3,1232($sp)
    # Line 956
    beqz	$a3,.L0f12cea4
    move	$s7,$a3
.L0f12cb34:
    bnezl	$s7,.L0f12c478
    sd	$zero,1208($sp)
    ld	$at,1240($sp)
    # Line 961
    bnezl	$at,.L0f12c478
    sd	$zero,1208($sp)
    # Line 967
    move	$a0,$s8
    move	$a2,$zero
    lw	$a1,1056($sp)
    la	$t9,_GLpostEvent
    li	$a3,2
    xor	$a1,$a1,$a3
    jalr	$t9
    sltiu	$a1,$a1,1
    # Line 969
    la	$t9,__GLisqueued
    jalr	$t9
    li	$a0,513
    beqz	$v0,.L0f12c474
    lw	$at,1056($sp)
    li	$v1,2
    bnel	$at,$v1,.L0f12c478
    sd	$zero,1208($sp)
    ld	$a2,1272($sp)
    beqz	$a2,.L0f12c474
    ld	$a3,1272($sp)
    blez	$a3,.L0f12c474
    ld	$s8,1272($sp)
    addiu	$s7,$sp,32
    addiu	$at,$sp,32
    addu	$s8,$s8,$at
    # Line 972
    move	$a2,$zero
.L0f12cbac:
    lbu	$a1,0($s7)
    la	$t9,_GLpostEvent
    li	$a0,513
    dsll32	$a1,$a1,0x10
    jalr	$t9
    dsra32	$a1,$a1,0x10
    # Line 971
    addiu	$s7,$s7,1
    bne	$s7,$s8,.L0f12cbac
    # Line 972
    move	$a2,$zero
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12cbd8:
    # Line 978
    lw	$s7,0($a4)
    lw	$s7,24($s7)
    lw	$a3,1076($sp)
    lw	$a2,32($s7)
    bnel	$a2,$a3,.L0f12c478
    sd	$zero,1208($sp)
    lbu	$a5,45($s0)
    lw	$v0,1084($sp)
    beqz	$a5,.L0f12cee0
    lw	$a0,24($s7)
    beq	$a0,$v0,.L0f12ceb0
    # Line 983
    la	$t9,_GLwinshut
.L0f12cc08:
    lw	$at,28($s7)
    bnel	$at,$v0,.L0f12c478
    sd	$zero,1208($sp)
    # Line 985
    la	$t9,_GLwinquit
    jalr	$t9
    lbu	$a0,45($s0)
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12cc28:
    li	$v1,0xffe9
.L0f12cc2c:
    # Line 921
    beq	$v1,$a0,.L0f12caac
    li	$a2,0xffea
    beq	$a2,$a0,.L0f12caac
    # Line 924
    la	$t9,_GLgrabEverything
    move	$a1,$s0
    bal _GLgrabEverything
    addiu	$a0,$sp,1056
    b	.L0f12cab0
    # Line 925
    la	$t9,_GLKeycodeToDevice
.L0f12cc50:
    # Line 1046
    la	$t9,_GLInvalidatePtr
    la	$a3,_GLpointerWindow
    jalr	$t9
    # Line 1045
    sw	$zero,0($a3)
    # Line 1047
    lw	$s6,-19728($gp)
    b	.L0f12c564
    sltu	$s6,$zero,$s6
.L0f12cc6c:
    ld	$s5,1376($sp)
    ld	$s1,1368($sp)
    ld	$s8,1360($sp)
    ld	$s0,1320($sp)
    ld	$ra,1312($sp)
    ld	$s7,1304($sp)
    ld	$s4,1352($sp)
    # Line 1074
    ld	$at,1224($sp)
    ld	$s3,1296($sp)
    ld	$s6,1288($sp)
    beqz	$at,.L0f12cce0
    ld	$s2,1344($sp)
    ld	$s5,1376($sp)
    ld	$s1,1368($sp)
    ld	$s8,1360($sp)
    ld	$s0,1320($sp)
    ld	$ra,1312($sp)
    la	$v1,_GLqgetfd_was_called
    ld	$s7,1304($sp)
    ld	$s4,1352($sp)
    lw	$v1,0($v1)
    ld	$s3,1296($sp)
    ld	$s6,1288($sp)
    beqz	$v1,.L0f12cce0
    ld	$s2,1344($sp)
    # Line 1084
    la	$t9,_GLqread_hack
    jalr	$t9
    nop
    ld	$ra,1312($sp)
.L0f12cce0:
    ld	$gp,1328($sp)
    # Line 1085
    jr	$ra
    addiu	$sp,$sp,1424
.L0f12ccec:
    sd	$v0,1392($sp)
    # Line 705
    move	$a0,$s0
    la	$t9,gl_adjust_window
    lw	$a2,1092($sp)
    sd	$a1,1384($sp)
    bal gl_adjust_window
    lw	$a1,1088($sp)
    ld	$a1,1384($sp)
    b	.L0f12c760
    ld	$v0,1392($sp)
.L0f12cd14:
    # Line 626
    move	$a5,$zero
    li	$a4,8
    move	$a3,$zero
    addiu	$t0,$sp,1160
    addiu	$t1,$sp,1164
    addiu	$t2,$sp,1168
    addiu	$t3,$sp,1152
    # Line 618
    sw	$zero,1152($sp)
    # Line 626
    lw	$a0,0($s4)
    lw	$a1,64($s0)
    lw	$a2,36($s7)
    lw	$a0,28($a0)
    la	$t9,XGetWindowProperty
    move	$a6,$a2
    lw	$a0,4($a0)
    sw	$t3,28($sp)
    sw	$t2,20($sp)
    sw	$t1,12($sp)
    jalr	$t9
    sw	$t0,4($sp)
    lw	$a3,1156($sp)
    lw	$a2,36($s7)
    bne	$a2,$a3,.L0f12cd94
    lw	$at,1164($sp)
    sltiu	$at,$at,2
    bnez	$at,.L0f12cd94
    li	$v1,3
    # Line 630
    lw	$a0,1152($sp)
    lw	$a0,0($a0)
    beq	$a0,$v1,.L0f12cf5c
    li	$a2,1
    # Line 641
    beq	$a0,$a2,.L0f12cf70
.L0f12cd94:
    # Line 647
    la	$t9,XFree
.L0f12cd98:
    jalr	$t9
    lw	$a0,1152($sp)
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12cda8:
    li	$a3,0xff13
    # Line 925
    bne	$a3,$a0,.L0f12cad4
    li	$at,0xffe5
    b	.L0f12cad0
    # Line 931
    li	$s8,160
.L0f12cdbc:
    la	$a4,_GLcapsLockMask
    # Line 947
    b	.L0f12cae4
    lw	$a4,0($a4)
.L0f12cdc8:
    # Line 717
    lbu	$a5,45($s0)
    beqz	$a5,.L0f12c474
    andi	$at,$a0,0x2
    beqzl	$at,.L0f12c478
    sd	$zero,1208($sp)
    # Line 720
    lw	$v1,48($s0)
    bnel	$v1,$s7,.L0f12ce10
    lbu	$v1,44($s0)
    lw	$a2,52($s0)
    bnel	$a2,$s8,.L0f12ce10
    lbu	$v1,44($s0)
    lw	$a3,56($s0)
    bnel	$a3,$v0,.L0f12ce10
    lbu	$v1,44($s0)
    lw	$at,60($s0)
    beql	$at,$a1,.L0f12c478
    sd	$zero,1208($sp)
    lbu	$v1,44($s0)
.L0f12ce10:
    li	$a2,3
    beq	$v1,$a2,.L0f12cf54
    nop
.L0f12ce1c:
    # Line 723
    li	$a2,2
    la	$t9,_GLpostEvent
    andi	$a0,$a6,0xffff
    dsll32	$a1,$a5,0x10
    jalr	$t9
    dsra32	$a1,$a1,0x10
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12ce3c:
    li	$a2,1
    # Line 813
    b	.L0f12c930
    sw	$a2,-19732($gp)
.L0f12ce48:
    # Line 847
    b	.L0f12c9cc
    sw	$zero,-19732($gp)
.L0f12ce50:
    b	.L0f12cae4
    # Line 949
    lw	$a4,0($a4)
.L0f12ce58:
    # Line 847
    beqz	$s7,.L0f12c9d0
    # Line 882
    lw	$v1,1116($sp)
    # Line 847
    beqz	$s8,.L0f12c9cc
    la	$v1,_GLpointerWindow
    # Line 870
    lw	$at,68($s0)
    b	.L0f12c9cc
    sw	$at,0($v1)
.L0f12ce74:
    b	.L0f12c930
    # Line 821
    sw	$zero,-19732($gp)
.L0f12ce7c:
    b	.L0f12ca00
    sd	$a2,1264($sp)
.L0f12ce84:
    ld	$a3,1264($sp)
    b	.L0f12ca10
    sd	$a3,1256($sp)
.L0f12ce90:
    li	$at,3
    # Line 956
    xor	$at,$a0,$at
    sltiu	$at,$at,1
    b	.L0f12cb28
    sd	$at,1232($sp)
.L0f12cea4:
    ld	$v1,1248($sp)
    b	.L0f12cb34
    sd	$v1,1240($sp)
.L0f12ceb0:
    # Line 983
    jalr	$t9
    move	$a0,$a5
    b	.L0f12cc08
    lw	$v0,1084($sp)
.L0f12cec0:
    # Line 777
    beq	$a2,$v0,.L0f12ced8
    nop
    b	.L0f12c8a4
    lbu	$a3,44($v0)
.L0f12ced0:
    bne	$a3,$s0,.L0f12c8b0
    move	$v0,$zero
.L0f12ced8:
    b	.L0f12c8b0
    li	$v0,1
.L0f12cee0:
    # Line 987
    beq	$a0,$v0,.L0f12cef8
    # Line 991
    la	$t9,_GLioerrorhandler
    # Line 987
    lw	$at,28($s7)
    bnel	$at,$v0,.L0f12c478
    sd	$zero,1208($sp)
    # Line 991
    la	$t9,_GLioerrorhandler
.L0f12cef8:
    bal _GLioerrorhandler
    lw	$a0,4($s0)
    b	.L0f12c478
    sd	$zero,1208($sp)
.L0f12cf08:
    b	.L0f12c7d4
    # Line 740
    li	$a2,2
.L0f12cf10:
    ld	$v1,1280($sp)
    # Line 535
    beqz	$v1,.L0f12c2c8
    # Line 537
    la	$t9,_GLWaitForEvent
    bal _GLWaitForEvent
    nop
    sd	$s5,1376($sp)
    sd	$s2,1344($sp)
    b	.L0f12c2c8
    sd	$v0,1336($sp)
.L0f12cf34:
    # Line 882
    la	$t9,_GLInvalidatePtr
    la	$a0,_GLpointerWindow
    jalr	$t9
    # Line 881
    sw	$zero,0($a0)
    b	.L0f12c9d0
    # Line 882
    lw	$v1,1116($sp)
.L0f12cf4c:
    # Line 735
    b	.L0f12c7d0
    li	$a6,541
.L0f12cf54:
    # Line 723
    b	.L0f12ce1c
    li	$a6,541
.L0f12cf5c:
    # Line 641
    la	$t9,_GLbecomeIconic
    jalr	$t9
    move	$a0,$s0
    b	.L0f12cd98
    # Line 647
    la	$t9,XFree
.L0f12cf70:
    # Line 644
    la	$t9,_GLbecomeNormal
    jalr	$t9
    move	$a0,$s0
    b	.L0f12cd98
    # Line 647
    la	$t9,XFree
.end _GLupdateQueue

# Function: gl_fast_qcheck
# Declared: Line 1093 (Source lines: 1094-1123)
# Address: 0x0f12cf84 - 0x0f12d0d4 (Size: 336 bytes, Frame: 192)
.globl gl_fast_qcheck
.ent gl_fast_qcheck
gl_fast_qcheck:
    # Line 1094
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,25284 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 1095
    la	$at,_GLdirtycmaps
    sd	$ra,40($sp)
    lw	$at,0($at)
    sw	$zero,0($sp)
    sd	$a1,24($sp)
    beqz	$at,.L0f12cfc0
    sd	$a0,16($sp)
    # Line 1098
    la	$t9,_GLflushcmaps
    jalr	$t9
    nop
.L0f12cfc0:
    la	$a0,gl_sstatep
    # Line 1099
    lw	$a0,0($a0)
    la	$t9,XEventsQueued
    lw	$a0,28($a0)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,4($a0)
    beqz	$v0,.L0f12d008
    # Line 1100
    li	$a3,1
    sw	$a3,0($sp)
.L0f12cfe8:
    # Line 1120
    la	$t9,_GLupdateQueue
    move	$a0,$zero
    bal _GLupdateQueue
    move	$a1,$zero
    ld	$ra,40($sp)
.L0f12cffc:
    ld	$gp,32($sp)
.L0f12d000:
    # Line 1123
    jr	$ra
    addiu	$sp,$sp,64
.L0f12d008:
    la	$a0,gl_sstatep
    # Line 1102
    lw	$a0,0($a0)
    lw	$a0,28($a0)
    # Line 1103
    addiu	$a2,$sp,0
    # Line 1102
    lw	$a0,4($a0)
    # Line 1103
    lui	$a1,0x4004
    la	$t9,ioctl
    # Line 1102
    lw	$a0,8($a0)
    # Line 1103
    ori	$a1,$a1,0x730a
    jalr	$t9
    sd	$a0,8($sp)
    bltz	$v0,.L0f12d070
    ld	$ra,40($sp)
.L0f12d03c:
    # Line 1116
    lw	$a2,0($sp)
.L0f12d040:
    ld	$at,16($sp)
    bnez	$a2,.L0f12cfe8
    # Line 1120
    lw	$v0,-19748($gp)
    beqzl	$at,.L0f12d000
    ld	$gp,32($sp)
    beqz	$v0,.L0f12cffc
    # Line 1122
    la	$t9,sub_0f130000
    addiu	$t9,$t9,-18192
    bal _GLdeliver_inputchange
    ld	$a0,24($sp)
    b	.L0f12cffc
    ld	$ra,40($sp)
.L0f12d070:
    # Line 1104
    la	$a3,errno
    lw	$a3,0($a3)
    li	$at,22
    beq	$a3,$at,.L0f12d0b4
    li	$at,131
    beq	$a3,$at,.L0f12d094
    li	$v0,145
    bne	$a3,$v0,.L0f12d040
    # Line 1116
    lw	$a2,0($sp)
.L0f12d094:
    la	$a0,gl_sstatep
    # Line 1115
    lw	$a0,0($a0)
    la	$t9,_GLioerrorhandler
    lw	$a0,28($a0)
    bal _GLioerrorhandler
    lw	$a0,4($a0)
    b	.L0f12d03c
    ld	$ra,40($sp)
.L0f12d0b4:
    ld	$a0,8($sp)
    # Line 1107
    la	$t9,ioctl
    addiu	$a2,$sp,0
    lui	$a1,0x4004
    jalr	$t9
    ori	$a1,$a1,0x667f
    b	.L0f12d03c
    ld	$ra,40($sp)
.end gl_fast_qcheck

.late_rodata
jtbl_0f025bc8:
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12ca50
    .word .L0f12ca50
    .word .L0f12c838
    .word .L0f12c838
    .word .L0f12c7f0
    .word .L0f12c8f8
    .word .L0f12c960
    .word .L0f12c880
    .word .L0f12c8d0
    .word .L0f12c470
    .word .L0f12c79c
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12c6f0
    .word .L0f12c6ac
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12c744
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12c714
    .word .L0f12c470
    .word .L0f12c654
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12c470
    .word .L0f12cbd8
jtbl_0f025c50:
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c498
    .word .L0f12c498
    .word .L0f12c4f8
    .word .L0f12c4f8
    .word .L0f12c328
    .word .L0f12c334
    .word .L0f12c540
    .word .L0f12c334
    .word .L0f12c51c
    .word .L0f12c5b4
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c328
    .word .L0f12c5a0

.rdata
_lit_42c80000:
    .word 0x42c80000

