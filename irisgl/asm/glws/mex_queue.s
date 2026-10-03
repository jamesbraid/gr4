# Source: ../igloo/glws/mex_queue.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/mex_queue.c -o mex_queue.T
# Total Functions: 58

.text

# Function: isCoreButton
# Declared: Line 129 (Source lines: 130-138)
# Address: 0x0f0e73b0 - 0x0f0e7404 (Size: 84 bytes, Frame: 0)
.ent isCoreButton
isCoreButton:
    # Line 130
    lw	$a4,-20668($gp)
    lw	$at,20($a4)
    li	$v0,1
    beql	$at,$v0,.L0f0e73cc
    # Line 134
    lh	$a5,12($a4)
    # Line 133
    jr	$ra
    move	$v0,$zero
.L0f0e73cc:
    # Line 134
    blez	$a5,.L0f0e73f4
    # Line 138
    move	$v0,$zero
    # Line 134
    lw	$a2,16($a4)
    addu	$a3,$a5,$a5
    addu	$a3,$a2,$a3
    lhu	$at,0($a2)
.L0f0e73e4:
    beq	$at,$a0,.L0f0e73fc
    # Line 135
    addiu	$a2,$a2,2
    bnel	$a2,$a3,.L0f0e73e4
    # Line 134
    lhu	$at,0($a2)
.L0f0e73f4:
    # Line 138
    jr	$ra
    nop
.L0f0e73fc:
    # Line 137
    jr	$ra
    li	$v0,1
.end isCoreButton

# Function: _GLisInterested
# Declared: Line 141 (Source lines: 142-146)
# Address: 0x0f0e7404 - 0x0f0e7444 (Size: 64 bytes, Frame: 0)
.globl _GLisInterested
.ent _GLisInterested
_GLisInterested:
    # Line 142
    slti	$v0,$a0,600
    lui	$v1,0xfff5
    addiu	$v1,$v1,-16828
    beqz	$v0,.L0f0e743c
    addu	$at,$t9,$v1
    # Line 144
    sll	$v0,$a0,0x2
    lw	$v1,-32676($at)
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addiu	$v1,$v1,20888
    addu	$v0,$v0,$v1
    lbu	$v0,717($v0)
    jr	$ra
    andi	$v0,$v0,0x3
.L0f0e743c:
    # Line 146
    jr	$ra
    move	$v0,$zero
.end _GLisInterested

# Function: _GLaddq
# Declared: Line 150 (Source lines: 151-178)
# Address: 0x0f0e7444 - 0x0f0e754c (Size: 264 bytes, Frame: 32)
.ent _GLaddq
_GLaddq:
    # Line 151
    lw	$a3,-20672($gp)
    li	$a6,600
    addiu	$v0,$a3,2
    div	$zero,$v0,$a6
    addiu	$sp,$sp,-32
    # Line 161
    li	$v1,535
    # Line 151
    teq	$a6,$zero,0x7
    # Line 161
    la	$a7,sub_0f030000
    # Line 151
    lw	$a4,-20676($gp)
    # Line 161
    sll	$a2,$a3,0x2
    # Line 151
    mfhi	$at
    bne	$at,$a4,.L0f0e749c
    # Line 161
    addiu	$a7,$a7,20888
    # Line 163
    addiu	$at,$a3,1
    div	$zero,$at,$a6
    teq	$a6,$zero,0x7
    # Line 161
    addu	$a2,$a2,$a7
    # Line 162
    sh	$zero,7914($a2)
    # Line 161
    sh	$v1,7912($a2)
    # Line 163
    mfhi	$a3
    b	.L0f0e74a4
    sw	$a3,-20672($gp)
.L0f0e749c:
    la	$a7,sub_0f030000
    addiu	$a7,$a7,20888
.L0f0e74a4:
    addiu	$at,$a3,1
    div	$zero,$at,$a6
    lw	$v0,-20648($gp)
    teq	$a6,$zero,0x7
    # Line 173
    sll	$a2,$a3,0x2
    # Line 163
    mfhi	$a5
    bne	$a5,$a4,.L0f0e74dc
    # Line 175
    slti	$at,$a0,600
    # Line 163
    beqz	$v0,.L0f0e7514
    sd	$a1,0($sp)
.L0f0e74cc:
    # Line 171
    addiu	$sp,$sp,32
    # Line 170
    li	$v1,1
    # Line 171
    jr	$ra
    # Line 170
    sw	$v1,-20648($gp)
.L0f0e74dc:
    # Line 175
    sw	$a5,-20672($gp)
    # Line 173
    addu	$a2,$a2,$a7
    # Line 174
    sh	$a1,7914($a2)
    # Line 175
    beqz	$at,.L0f0e750c
    # Line 173
    sh	$a0,7912($a2)
    # Line 177
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a7
    lbu	$at,717($v0)
    ori	$at,$at,0x8
    sb	$at,717($v0)
.L0f0e750c:
    # Line 178
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e7514:
    # Line 168
    la	$t9,_GLdevname
    sd	$ra,8($sp)
    bal _GLdevname
    nop
    move	$a2,$v0
    ld	$a3,0($sp)
    la	$a1,sub_0f020000
    la	$t9,fprintf
    la	$a0,__iob
    addiu	$a1,$a1,15800
    jalr	$t9
    addiu	$a0,$a0,32
    b	.L0f0e74cc
    ld	$ra,8($sp)
.end _GLaddq

# Function: _GLisNoiseExceed
# Declared: Line 183 (Source lines: 184-195)
# Address: 0x0f0e754c - 0x0f0e75f4 (Size: 168 bytes, Frame: 0)
.ent _GLisNoiseExceed
_GLisNoiseExceed:
    # Line 184
    la	$t1,sub_0f030000
    blez	$a0,.L0f0e75dc
    move	$a4,$a1
    addiu	$t1,$t1,20888
    addu	$t2,$a0,$a0
    move	$a5,$zero
    b	.L0f0e758c
    # Line 187
    lhu	$a3,0($a4)
.L0f0e756c:
    # Line 192
    subu	$a7,$t0,$a6
.L0f0e7570:
    lh	$at,6($a0)
    slt	$at,$a7,$at
    beqz	$at,.L0f0e75ec
.L0f0e757c:
    # Line 186
    addu	$v0,$t2,$a1
    beq	$v0,$a4,.L0f0e75dc
    addiu	$a5,$a5,2
    # Line 187
    lhu	$a3,0($a4)
.L0f0e758c:
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$t1
    addiu	$a0,$a0,712
    lbu	$a6,5($a0)
    andi	$v1,$a6,0x1
    beqz	$v1,.L0f0e757c
    # Line 186
    addiu	$a4,$a4,2
    # Line 187
    andi	$at,$a6,0x8
    beqz	$at,.L0f0e75e4
    nop
    # Line 190
    lh	$t0,0($a0)
    addu	$a6,$a5,$a2
    lh	$a6,0($a6)
    slt	$v0,$t0,$a6
    beqz	$v0,.L0f0e756c
    # Line 192
    subu	$a7,$a6,$t0
    b	.L0f0e7570
    nop
.L0f0e75dc:
    # Line 195
    jr	$ra
    move	$v0,$zero
.L0f0e75e4:
    # Line 190
    jr	$ra
    li	$v0,1
.L0f0e75ec:
    # Line 192
    jr	$ra
    li	$v0,1
.end _GLisNoiseExceed

# Function: _GLqueuedDevsExist
# Declared: Line 198 (Source lines: 199-207)
# Address: 0x0f0e75f4 - 0x0f0e7648 (Size: 84 bytes, Frame: 0)
.ent _GLqueuedDevsExist
_GLqueuedDevsExist:
    # Line 199
    blez	$a0,.L0f0e7638
    addu	$a6,$a0,$a0
    la	$a5,sub_0f030000
    move	$a4,$a1
    addiu	$a5,$a5,20888
    # Line 202
    lhu	$v0,0($a4)
.L0f0e760c:
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$at,$at,$a5
    lbu	$at,717($at)
    # Line 201
    addu	$v1,$a6,$a1
    # Line 202
    andi	$at,$at,0x1
    bnez	$at,.L0f0e7640
    # Line 201
    addiu	$a4,$a4,2
    bnel	$v1,$a4,.L0f0e760c
    # Line 202
    lhu	$v0,0($a4)
.L0f0e7638:
    # Line 207
    jr	$ra
    move	$v0,$zero
.L0f0e7640:
    # Line 204
    jr	$ra
    nop
.end _GLqueuedDevsExist

# Function: _GLupdateVal
# Declared: Line 210 (Source lines: 211-215)
# Address: 0x0f0e7648 - 0x0f0e769c (Size: 84 bytes, Frame: 0)
.globl _GLupdateVal
.ent _GLupdateVal
_GLupdateVal:
    # Line 211
    sll	$a4,$a0,0x2
    lui	$a5,0xfff5
    addiu	$a5,$a5,-17408
    addu	$at,$t9,$a5
    lw	$a5,-32676($at)
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addiu	$a5,$a5,20888
    addu	$a4,$a4,$a5
    lh	$a5,712($a4)
    slt	$v0,$a5,$a1
    bnez	$v0,.L0f0e7680
    # Line 214
    subu	$a3,$a1,$a5
    subu	$a3,$a5,$a1
.L0f0e7680:
    lh	$v0,718($a4)
    slt	$v0,$a3,$v0
    bnez	$v0,.L0f0e7694
    nop
    sh	$a1,712($a4)
.L0f0e7694:
    # Line 215
    jr	$ra
    nop
.end _GLupdateVal

# Function: _GLpostEvent
# Declared: Line 218 (Source lines: 219-308)
# Address: 0x0f0e769c - 0x0f0e79f0 (Size: 852 bytes, Frame: 208)
.globl _GLpostEvent
.ent _GLpostEvent
_GLpostEvent:
    # Line 219
    slti	$at,$a0,600
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    lui	$v0,0xfff5
    addiu	$v0,$v0,-17492
    beqz	$at,.L0f0e7878
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    sd	$s1,8($sp)
    # Line 224
    sll	$s1,$a0,0x2
    sd	$s0,0($sp)
    la	$s0,sub_0f030000
    subu	$s1,$s1,$a0
    sll	$s1,$s1,0x2
    addiu	$s0,$s0,20888
    addu	$s1,$s1,$s0
    lbu	$a4,717($s1)
    # Line 255
    li	$v0,1
    # Line 224
    andi	$v1,$a4,0x1
    beqz	$v1,.L0f0e7884
    # Line 252
    li	$at,3
    beq	$a2,$at,.L0f0e7998
    sh	$a1,712($s1)
    # Line 255
    beq	$a2,$v0,.L0f0e78dc
    # Line 258
    li	$v1,2
    beq	$a2,$v1,.L0f0e78e8
    # Line 266
    move	$a7,$zero
.L0f0e7704:
    # Line 268
    lw	$a4,-20672($gp)
    move	$a5,$zero
    blez	$a7,.L0f0e7780
    move	$a2,$a4
    lw	$t0,-20676($gp)
    beq	$t0,$a4,.L0f0e7784
    la	$t9,sub_0f0e0000
    b	.L0f0e7740
    nop
.L0f0e7728:
    addiu	$a5,$a5,1
.L0f0e772c:
    slt	$a3,$a5,$a7
    beqz	$a3,.L0f0e7784
    la	$t9,sub_0f0e0000
    beq	$a4,$t0,.L0f0e7784
    la	$t9,sub_0f0e0000
.L0f0e7740:
    beqz	$a2,.L0f0e774c
    # Line 269
    li	$a4,599
    addiu	$a4,$a2,-1
.L0f0e774c:
    sll	$a6,$a4,0x2
    addu	$a6,$a6,$s0
    lhu	$at,7912($a6)
    bne	$at,$a0,.L0f0e7728
    move	$a2,$a4
    lh	$at,7914($a6)
    bne	$at,$a1,.L0f0e772c
    # Line 268
    addiu	$a5,$a5,1
    ld	$gp,32($sp)
    # Line 271
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e7780:
    # Line 268
    la	$t9,sub_0f0e0000
.L0f0e7784:
    sd	$ra,40($sp)
    addiu	$t9,$t9,29764
    # Line 273
    bal _GLisInterested
    nop
    lbu	$at,717($s1)
    andi	$at,$at,0x4
    beqz	$at,.L0f0e7864
    ld	$ra,40($sp)
    # Line 275
    lhu	$a0,720($s1)
    lw	$v0,-20664($gp)
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    addiu	$v1,$v1,712
    beqz	$v0,.L0f0e78f0
    sd	$v1,24($sp)
.L0f0e77c8:
    la	$t9,sub_0f0e0000
    # Line 289
    ld	$a1,24($sp)
    addiu	$t9,$t9,29764
    bal _GLisInterested
    lh	$a1,0($a1)
    # Line 290
    lhu	$v1,720($s1)
    ld	$at,24($sp)
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    sh	$zero,714($v0)
    lbu	$at,5($at)
    andi	$at,$at,0x2
    beqz	$at,.L0f0e79b4
    ld	$ra,40($sp)
.L0f0e7808:
    # Line 292
    lhu	$a0,722($s1)
    beqz	$a0,.L0f0e7864
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,29764
    # Line 294
    sll	$a1,$a0,0x2
    subu	$a1,$a1,$a0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s0
    addiu	$a1,$a1,712
    sd	$a1,16($sp)
    # Line 295
    bal _GLisInterested
    lh	$a1,0($a1)
    # Line 296
    lhu	$v1,722($s1)
    ld	$at,16($sp)
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    sh	$zero,714($v0)
    lbu	$at,5($at)
    andi	$at,$at,0x2
    beqz	$at,.L0f0e79d0
    ld	$ra,40($sp)
.L0f0e7864:
    ld	$gp,32($sp)
    # Line 308
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e7878:
    ld	$gp,32($sp)
    # Line 224
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e7884:
    # Line 302
    sh	$a1,712($s1)
    # Line 303
    ori	$s0,$a4,0x8
    andi	$s0,$s0,0xff
    sb	$s0,717($s1)
    andi	$a3,$s0,0x2
    beqz	$a3,.L0f0e7864
    ld	$s0,0($sp)
    # Line 304
    lh	$at,714($s1)
    addiu	$at,$at,1
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    slti	$v0,$at,2001
    bnez	$v0,.L0f0e7864
    sh	$at,714($s1)
    # Line 305
    la	$t9,sub_0f0f0000
    li	$a1,2
    sd	$ra,40($sp)
    addiu	$t9,$t9,-29492
    bal _GLSelectInput
    ld	$s1,8($sp)
    b	.L0f0e7864
    ld	$ra,40($sp)
.L0f0e78dc:
    # Line 258
    li	$a7,1
    b	.L0f0e7704
    nop
.L0f0e78e8:
    # Line 260
    b	.L0f0e7704
    li	$a7,10
.L0f0e78f0:
    # Line 281
    beqz	$a0,.L0f0e792c
    move	$a1,$a0
    li	$at,272
    beq	$a1,$at,.L0f0e7924
    li	$v0,273
    beq	$a1,$v0,.L0f0e7924
    lw	$a2,-20668($gp)
    lhu	$v1,4($a2)
    beq	$v1,$a1,.L0f0e7924
    nop
    lhu	$a3,6($a2)
    bne	$a3,$a1,.L0f0e7930
    move	$a0,$zero
.L0f0e7924:
    b	.L0f0e7930
    li	$a0,1
.L0f0e792c:
    move	$a0,$zero
.L0f0e7930:
    bnez	$a0,.L0f0e7980
    # Line 287
    la	$t9,sub_0f0f0000
    # Line 281
    lhu	$a0,722($s1)
    beqz	$a0,.L0f0e7974
    li	$at,272
    beq	$a0,$at,.L0f0e796c
    li	$v0,273
    beq	$a0,$v0,.L0f0e796c
    lw	$a2,-20668($gp)
    lhu	$v1,4($a2)
    beq	$v1,$a0,.L0f0e796c
    nop
    lhu	$a3,6($a2)
    bne	$a3,$a0,.L0f0e7978
    move	$a0,$zero
.L0f0e796c:
    b	.L0f0e7978
    li	$a0,1
.L0f0e7974:
    move	$a0,$zero
.L0f0e7978:
    beqz	$a0,.L0f0e7990
    # Line 287
    la	$t9,sub_0f0f0000
.L0f0e7980:
    addiu	$t9,$t9,-26784
    bal _GLqueryModState
    nop
    ld	$ra,40($sp)
.L0f0e7990:
    b	.L0f0e77c8
    lhu	$a0,720($s1)
.L0f0e7998:
    ld	$gp,32($sp)
    # Line 255
    ld	$s0,0($sp)
    # Line 254
    ori	$at,$a4,0x8
    sb	$at,717($s1)
    # Line 255
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e79b4:
    # Line 292
    la	$t9,sub_0f0f0000
    li	$a1,2
    addiu	$t9,$t9,-30156
    bal _GLSelectInput
    lhu	$a0,720($s1)
    b	.L0f0e7808
    ld	$ra,40($sp)
.L0f0e79d0:
    la	$t9,sub_0f0f0000
    # Line 298
    li	$a1,2
    lhu	$a0,722($s1)
    addiu	$t9,$t9,-30156
    bal _GLSelectInput
    ld	$s0,0($sp)
    b	.L0f0e7864
    ld	$ra,40($sp)
.end _GLpostEvent

# Function: _GLpostCoreButtonEvent
# Declared: Line 310 (Source lines: 311-317)
# Address: 0x0f0e79f0 - 0x0f0e7a60 (Size: 112 bytes, Frame: 32)
.globl _GLpostCoreButtonEvent
.ent _GLpostCoreButtonEvent
_GLpostCoreButtonEvent:
    # Line 311
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v1,0xfff5 (gp disp hi)
    # addiu	v1,v1,-18344 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    lw	$a5,-20668($gp)
    lw	$at,20($a5)
    li	$v0,1
    bne	$at,$v0,.L0f0e7a30
    move	$a4,$a0
    blezl	$a4,.L0f0e7a34
    ld	$gp,0($sp)
    # Line 312
    lh	$a2,12($a5)
    slt	$a2,$a2,$a4
    beqz	$a2,.L0f0e7a3c
    # Line 315
    move	$a2,$zero
.L0f0e7a30:
    ld	$gp,0($sp)
.L0f0e7a34:
    # Line 317
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e7a3c:
    sd	$ra,8($sp)
    # Line 315
    lw	$a0,16($a5)
    la	$t9,_GLpostEvent
    addu	$a3,$a4,$a4
    addu	$a0,$a0,$a3
    bal _GLpostEvent
    lhu	$a0,-2($a0)
    b	.L0f0e7a30
    ld	$ra,8($sp)
.end _GLpostCoreButtonEvent

# Function: _GLpostMotionEvent
# Declared: Line 324 (Source lines: 329-456)
# Address: 0x0f0e7a60 - 0x0f0e7dd8 (Size: 888 bytes, Frame: 176)
.globl _GLpostMotionEvent
.ent _GLpostMotionEvent
_GLpostMotionEvent:
    # Line 329
    move	$v0,$a3
    li	$a7,1
    addiu	$sp,$sp,-176
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s3,56($sp)
    move	$s3,$a1
    sd	$gp,48($sp)
    lui	$at,0xfff5
    addiu	$at,$at,-18456
    beq	$a4,$a7,.L0f0e7cd4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 338
    lw	$a2,-20668($gp)
    addiu	$a1,$sp,0
    beqz	$a4,.L0f0e7d20
    lw	$a0,20($a2)
    sd	$s1,88($sp)
.L0f0e7aa4:
    # Line 349
    beq	$a0,$a7,.L0f0e7c98
    # Line 348
    li	$s1,2
    # Line 349
    li	$v1,2
    beq	$a0,$v1,.L0f0e7c98
.L0f0e7ab4:
    # Line 380
    addiu	$s3,$sp,0
    sd	$ra,72($sp)
    sd	$v0,32($sp)
    # Line 381
    sw	$a7,-20656($gp)
    # Line 378
    li	$a5,272
    # Line 379
    li	$a6,273
    sh	$a6,2($a1)
    # Line 378
    sh	$a5,0($a1)
.L0f0e7ad4:
    sd	$s2,64($sp)
    # Line 383
    la	$t9,sub_0f0e0000
    move	$a0,$s1
    move	$a1,$s3
    addiu	$t9,$t9,30028
    bal _GLisInterested
    move	$a2,$s0
    # Line 384
    la	$t9,sub_0f0e0000
    # Line 383
    move	$s2,$v0
    # Line 384
    move	$a0,$s1
    addiu	$t9,$t9,30196
    bal _GLisInterested
    move	$a1,$s3
    # Line 390
    lw	$a0,-20672($gp)
    # Line 384
    andi	$a4,$v0,0xffff
    beqz	$a4,.L0f0e7ce8
    ld	$ra,72($sp)
    beqz	$s2,.L0f0e7d40
    # Line 390
    lw	$v0,-20676($gp)
    subu	$v0,$a0,$v0
    bltz	$v0,.L0f0e7d50
    move	$a1,$v0
.L0f0e7b2c:
    # Line 392
    lw	$v0,-20660($gp)
    # Line 402
    la	$t0,_GLmotionThresh
    # Line 392
    beqzl	$v0,.L0f0e7b48
    # Line 402
    lw	$t0,0($t0)
    # Line 399
    addiu	$v0,$v0,1
    sw	$v0,-20660($gp)
    # Line 402
    lw	$t0,0($t0)
.L0f0e7b48:
    beqz	$t0,.L0f0e7d58
    # Line 403
    ld	$at,32($sp)
.L0f0e7b50:
    move	$a2,$zero
    beqz	$at,.L0f0e7d74
    lw	$a7,-14684($gp)
    bne	$a7,$a0,.L0f0e7bc8
    # Line 413
    lw	$t1,-14688($gp)
    beq	$t1,$a7,.L0f0e7d10
    # Line 414
    subu	$t3,$a7,$t1
    bltz	$t3,.L0f0e7dd0
    move	$t2,$t3
.L0f0e7b74:
    # Line 416
    slt	$v1,$a1,$t2
    bnez	$v1,.L0f0e7d98
    sd	$s5,80($sp)
    la	$s5,sub_0f030000
    sll	$a5,$t1,0x2
    addiu	$s5,$s5,20888
    addu	$a5,$a5,$s5
    lhu	$a5,7912($a5)
    bne	$a5,$a4,.L0f0e7bd4
    # Line 424
    lw	$v1,-20652($gp)
    ld	$at,32($sp)
    subu	$at,$at,$v1
    slt	$at,$at,$t0
    bnez	$at,.L0f0e7bb8
    slti	$a5,$v0,3
    bnez	$a5,.L0f0e7bd4
    nop
.L0f0e7bb8:
    # Line 430
    move	$a0,$t1
    # Line 431
    li	$a2,1
    b	.L0f0e7bd4
    # Line 430
    sw	$t1,-20672($gp)
.L0f0e7bc8:
    sd	$s5,80($sp)
    # Line 431
    la	$s5,sub_0f030000
    addiu	$s5,$s5,20888
.L0f0e7bd4:
    # Line 435
    beqz	$a2,.L0f0e7d84
    sw	$a0,-14688($gp)
.L0f0e7bdc:
    # Line 439
    slti	$at,$a1,591
    beqz	$at,.L0f0e7cf8
    # Line 443
    la	$t9,sub_0f0e0000
.L0f0e7be8:
    sd	$s6,112($sp)
    sd	$s4,104($sp)
    # Line 442
    blez	$s1,.L0f0e7c70
    sd	$s7,96($sp)
    move	$s6,$zero
    move	$s4,$s3
    addu	$s7,$s1,$s1
    ld	$s1,88($sp)
    b	.L0f0e7c30
    addu	$s7,$s7,$s3
.L0f0e7c10:
    # Line 452
    la	$t9,_GLpostEvent
.L0f0e7c14:
    move	$a2,$zero
    addu	$a1,$s6,$s0
    bal _GLpostEvent
    lh	$a1,0($a1)
    # Line 445
    addiu	$s4,$s4,2
.L0f0e7c28:
    beq	$s4,$s7,.L0f0e7c60
    addiu	$s6,$s6,2
.L0f0e7c30:
    # Line 451
    bnez	$s2,.L0f0e7c10
    # Line 450
    lhu	$a0,0($s4)
    # Line 451
    sll	$a5,$a0,0x2
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$s5
    lbu	$a5,717($a5)
    andi	$a5,$a5,0x1
    bnezl	$a5,.L0f0e7c28
    # Line 445
    addiu	$s4,$s4,2
    b	.L0f0e7c14
    # Line 452
    la	$t9,_GLpostEvent
.L0f0e7c60:
    ld	$ra,72($sp)
    ld	$s7,96($sp)
    ld	$s4,104($sp)
    ld	$s6,112($sp)
.L0f0e7c70:
    # Line 456
    ld	$s0,40($sp)
    ld	$s1,88($sp)
    ld	$s2,64($sp)
    # Line 455
    lw	$a6,-20672($gp)
    # Line 456
    ld	$s3,56($sp)
    ld	$s5,80($sp)
    # Line 455
    sw	$a6,-14684($gp)
    ld	$gp,48($sp)
    # Line 456
    jr	$ra
    addiu	$sp,$sp,176
.L0f0e7c98:
    # Line 349
    beqz	$a4,.L0f0e7da4
    # Line 370
    addiu	$a1,$sp,4
.L0f0e7ca0:
    # Line 369
    lhu	$v1,4($a2)
.L0f0e7ca4:
    sh	$v1,0($sp)
    # Line 370
    lhu	$at,6($a2)
    sh	$at,2($sp)
.L0f0e7cb0:
    # Line 372
    lh	$a6,0($s0)
    sh	$a6,20($sp)
    sh	$a6,16($sp)
    # Line 373
    lh	$a5,2($s0)
    # Line 374
    li	$s1,4
    # Line 375
    addiu	$s0,$sp,16
    # Line 373
    sh	$a5,18($sp)
    b	.L0f0e7ab4
    sh	$a5,22($sp)
.L0f0e7cd4:
    sd	$ra,72($sp)
    sd	$v0,32($sp)
    sd	$s1,88($sp)
    # Line 336
    b	.L0f0e7ad4
    move	$s1,$a0
.L0f0e7ce8:
    sd	$s5,80($sp)
    # Line 443
    la	$s5,sub_0f030000
    b	.L0f0e7be8
    addiu	$s5,$s5,20888
.L0f0e7cf8:
    move	$a0,$s1
    addiu	$t9,$t9,32216
    bal _GLpostMotionEvent
    move	$a1,$s3
    b	.L0f0e7be8
    ld	$ra,72($sp)
.L0f0e7d10:
    sd	$s5,80($sp)
    # Line 431
    la	$s5,sub_0f030000
    b	.L0f0e7bd4
    addiu	$s5,$s5,20888
.L0f0e7d20:
    # Line 338
    li	$at,2
    bnel	$a0,$at,.L0f0e7aa4
    sd	$s1,88($sp)
    ld	$gp,48($sp)
    # Line 346
    ld	$s0,40($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0e7d40:
    sd	$s5,80($sp)
    # Line 443
    la	$s5,sub_0f030000
    b	.L0f0e7be8
    addiu	$s5,$s5,20888
.L0f0e7d50:
    b	.L0f0e7b2c
    # Line 392
    addiu	$a1,$v0,600
.L0f0e7d58:
    # Line 402
    slti	$at,$v0,3
    beqz	$at,.L0f0e7b50
    # Line 403
    ld	$at,32($sp)
    sd	$s5,80($sp)
    # Line 440
    la	$s5,sub_0f030000
    b	.L0f0e7bdc
    addiu	$s5,$s5,20888
.L0f0e7d74:
    sd	$s5,80($sp)
    # Line 431
    la	$s5,sub_0f030000
    b	.L0f0e7bd4
    addiu	$s5,$s5,20888
.L0f0e7d84:
    ld	$at,32($sp)
    # Line 435
    beqz	$at,.L0f0e7bdc
    ld	$v1,32($sp)
    # Line 440
    b	.L0f0e7bdc
    sw	$v1,-20652($gp)
.L0f0e7d98:
    # Line 431
    la	$s5,sub_0f030000
    b	.L0f0e7bd4
    addiu	$s5,$s5,20888
.L0f0e7da4:
    # Line 354
    bnez	$a4,.L0f0e7ca0
    sw	$a7,-20664($gp)
    lw	$at,0($a2)
    li	$v1,5
    bnel	$at,$v1,.L0f0e7ca4
    # Line 369
    lhu	$v1,4($a2)
    # Line 361
    lhu	$a6,8($a2)
    sh	$a6,0($sp)
    # Line 362
    lhu	$a5,10($a2)
    b	.L0f0e7cb0
    sh	$a5,2($sp)
.L0f0e7dd0:
    b	.L0f0e7b74
    # Line 416
    addiu	$t2,$t3,600
.end _GLpostMotionEvent

# Function: collapseQ
# Declared: Line 465 (Source lines: 466-512)
# Address: 0x0f0e7dd8 - 0x0f0e80a0 (Size: 712 bytes, Frame: 128)
.ent collapseQ
collapseQ:
    # Line 466
    addiu	$sp,$sp,-128
    sd	$s4,72($sp)
    sd	$s5,48($sp)
    sd	$s7,40($sp)
    sd	$ra,80($sp)
    sd	$s3,96($sp)
    move	$s3,$a1
    sd	$s1,56($sp)
    # Line 479
    move	$s1,$zero
    sd	$s6,88($sp)
    sd	$s0,64($sp)
    # Line 471
    lw	$a6,-20672($gp)
    # Line 475
    lw	$a7,-20676($gp)
    sd	$s2,104($sp)
    # Line 466
    la	$s2,sub_0f030000
    # Line 471
    sll	$a6,$a6,0x2
    # Line 475
    sll	$a7,$a7,0x2
    # Line 466
    addiu	$s2,$s2,20888
    # Line 471
    addu	$s6,$a6,$s2
    addiu	$s6,$s6,7912
    # Line 475
    addu	$s0,$a7,$s2
    addiu	$s0,$s0,7912
    move	$v0,$s0
    # Line 479
    blez	$a0,.L0f0e7e98
    # Line 475
    sw	$s0,0($sp)
    # Line 479
    addiu	$a4,$sp,8
    move	$a1,$s3
    addu	$a5,$a0,$a0
    move	$t0,$a0
    andi	$at,$a0,0x1
    beqz	$at,.L0f0e7e8c
    addu	$a5,$a5,$s3
    # Line 481
    lhu	$a0,0($a1)
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    lbu	$v1,717($v1)
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0f0e7e8c
    # Line 480
    addiu	$a1,$a1,2
    # Line 483
    sh	$a0,0($a4)
    addiu	$a4,$a4,2
    addiu	$s1,$s1,1
    # Line 480
    addiu	$a1,$a1,2
.L0f0e7e8c:
    sra	$a2,$t0,0x1
    bnezl	$a2,.L0f0e7eec
    # Line 481
    lhu	$a0,0($a1)
.L0f0e7e98:
    # Line 480
    beq	$a6,$a7,.L0f0e8064
    addiu	$s5,$s2,7912
    la	$s7,sub_0f0f0000
    addiu	$s4,$s2,10308
    b	.L0f0e7f30
    addiu	$s7,$s7,-32608
.L0f0e7eb0:
    # Line 481
    lhu	$a0,2($a1)
.L0f0e7eb4:
    sll	$at,$a0,0x2
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$s2
    lbu	$at,717($at)
    andi	$at,$at,0x1
    beqz	$at,.L0f0e7ee0
    # Line 480
    addiu	$a1,$a1,4
    # Line 483
    sh	$a0,0($a4)
    addiu	$a4,$a4,2
    addiu	$s1,$s1,1
.L0f0e7ee0:
    # Line 480
    beq	$a1,$a5,.L0f0e7e98
    nop
    # Line 481
    lhu	$a0,0($a1)
.L0f0e7eec:
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    lbu	$v1,717($v1)
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0f0e7eb4
    lhu	$a0,2($a1)
    # Line 483
    sh	$a0,0($a4)
    addiu	$a4,$a4,2
    b	.L0f0e7eb0
    addiu	$s1,$s1,1
.L0f0e7f1c:
    # Line 496
    lw	$v0,0($sp)
.L0f0e7f20:
    beqzl	$a4,.L0f0e8024
    # Line 506
    lhu	$a2,0($v0)
.L0f0e7f28:
    # Line 508
    beql	$s6,$v0,.L0f0e8068
    # Line 512
    ld	$s1,56($sp)
.L0f0e7f30:
    # Line 487
    lhu	$a3,0($v0)
    lhu	$a2,0($s3)
    bne	$a2,$a3,.L0f0e7f20
    move	$a4,$zero
    # Line 494
    addiu	$a3,$sp,32
    addiu	$a2,$sp,8
    move	$a1,$s1
    addiu	$a0,$sp,0
    bal _GLpostMotionEvent
    move	$t9,$s7
    move	$a5,$v0
    sll	$a1,$v0,0x2
    beqz	$v0,.L0f0e7f1c
    move	$a4,$v0
    blez	$v0,.L0f0e7f1c
    andi	$at,$v0,0x1
    beqz	$at,.L0f0e7fa8
    move	$a0,$zero
    # Line 497
    lw	$v1,32($sp)
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    lhu	$a2,0($v1)
    # Line 498
    addiu	$s0,$s0,4
    # Line 497
    sh	$a2,-4($s0)
    # Line 496
    addiu	$a0,$a0,4
    # Line 497
    lh	$v1,2($v1)
    # Line 498
    sltu	$a2,$s4,$s0
    beqz	$a2,.L0f0e7fa8
    # Line 497
    sh	$v1,-2($s0)
    # Line 498
    move	$s0,$s5
.L0f0e7fa8:
    sra	$a2,$a5,0x1
    beqz	$a2,.L0f0e7f1c
    nop
    b	.L0f0e7fc4
    # Line 497
    lw	$a3,32($sp)
.L0f0e7fbc:
    # Line 496
    beq	$a0,$a1,.L0f0e7f1c
    # Line 497
    lw	$a3,32($sp)
.L0f0e7fc4:
    addu	$a3,$a3,$a0
    lw	$a3,0($a3)
    lhu	$at,0($a3)
    # Line 498
    addiu	$s0,$s0,4
    # Line 497
    sh	$at,-4($s0)
    # Line 496
    addiu	$a0,$a0,4
    # Line 497
    lh	$a3,2($a3)
    # Line 498
    sltu	$at,$s4,$s0
    beqz	$at,.L0f0e7ff0
    # Line 497
    sh	$a3,-2($s0)
    # Line 498
    move	$s0,$s5
.L0f0e7ff0:
    # Line 497
    lw	$at,32($sp)
    addu	$at,$at,$a0
    lw	$at,0($at)
    lhu	$v1,0($at)
    # Line 498
    addiu	$s0,$s0,4
    # Line 497
    sh	$v1,-4($s0)
    # Line 496
    addiu	$a0,$a0,4
    # Line 497
    lh	$at,2($at)
    # Line 498
    sltu	$v1,$s4,$s0
    beqz	$v1,.L0f0e7fbc
    # Line 497
    sh	$at,-2($s0)
    b	.L0f0e7fbc
    # Line 498
    move	$s0,$s5
.L0f0e8024:
    # Line 506
    sh	$a2,0($s0)
    lh	$v1,2($v0)
    sh	$v1,2($s0)
    # Line 507
    lw	$v0,0($sp)
    # Line 508
    addiu	$s0,$s0,4
    sltu	$a3,$s4,$s0
    # Line 507
    addiu	$v0,$v0,4
    sltu	$v1,$s4,$v0
    beqz	$v1,.L0f0e8054
    sw	$v0,0($sp)
    move	$v0,$s5
    sw	$s5,0($sp)
.L0f0e8054:
    # Line 508
    beqz	$a3,.L0f0e7f28
    nop
    bne	$s6,$v0,.L0f0e7f30
    move	$s0,$s5
.L0f0e8064:
    # Line 512
    ld	$s1,56($sp)
.L0f0e8068:
    # Line 511
    subu	$s0,$s0,$s2
    # Line 512
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,72($sp)
    ld	$s5,48($sp)
    ld	$s6,88($sp)
    ld	$s7,40($sp)
    ld	$ra,80($sp)
    # Line 511
    addiu	$s0,$s0,-7912
    sra	$s0,$s0,0x2
    sw	$s0,-20672($gp)
    # Line 512
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end collapseQ

# Function: keepSearchingForEvent
# Declared: Line 519 (Source lines: 528-563)
# Address: 0x0f0e80a0 - 0x0f0e818c (Size: 236 bytes, Frame: 192)
.ent keepSearchingForEvent
keepSearchingForEvent:
    # Line 528
    addiu	$sp,$sp,-64
    # Line 532
    move	$v0,$zero
    # Line 537
    addu	$at,$a1,$a1
    # Line 528
    la	$a7,sub_0f030000
    # Line 537
    lw	$a6,0($a0)
    lw	$t2,-20672($gp)
    # Line 528
    addiu	$a7,$a7,20888
    # Line 535
    addiu	$t8,$a7,10424
    # Line 537
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$a7
    addiu	$t2,$t2,7912
    beq	$t2,$a6,.L0f0e8174
    # Line 535
    move	$t3,$t8
    # Line 537
    addiu	$v1,$a7,7912
    sd	$at,16($sp)
    sd	$v1,0($sp)
    addiu	$t9,$a7,10384
    sd	$t9,24($sp)
    beq	$t8,$t3,.L0f0e8168
    addiu	$t9,$a7,10308
    # Line 539
    move	$a4,$t8
.L0f0e80f4:
    sd	$t8,8($sp)
.L0f0e80f8:
    # Line 540
    move	$t0,$zero
    move	$a7,$a2
    ld	$t1,8($sp)
    # Line 545
    lhu	$at,0($a6)
.L0f0e8108:
    lhu	$a5,0($a7)
    bne	$a5,$at,.L0f0e8148
    # Line 549
    addiu	$a7,$a7,2
    # Line 547
    sw	$a6,0($t1)
    # Line 548
    addiu	$a6,$a6,4
    sltu	$v1,$t9,$a6
    beqz	$v1,.L0f0e812c
    # Line 549
    addiu	$t0,$t0,1
    ld	$a6,0($sp)
.L0f0e812c:
    # Line 544
    ld	$a4,16($sp)
    addu	$a4,$a4,$a2
    sltu	$a4,$a7,$a4
    beqz	$a4,.L0f0e8148
    # Line 549
    addiu	$t1,$t1,4
    # Line 544
    bnel	$t2,$a6,.L0f0e8108
    # Line 545
    lhu	$at,0($a6)
.L0f0e8148:
    # Line 550
    slt	$a5,$t0,$a1
    bnez	$a5,.L0f0e8174
    nop
    # Line 552
    move	$v0,$t0
    # Line 553
    beq	$t2,$a6,.L0f0e8174
    ld	$t3,8($sp)
    # Line 537
    bne	$t8,$t3,.L0f0e80f4
    # Line 539
    move	$a4,$t8
.L0f0e8168:
    ld	$at,24($sp)
    b	.L0f0e80f8
    sd	$at,8($sp)
.L0f0e8174:
    # Line 555
    beqz	$v0,.L0f0e8184
    nop
    # Line 560
    sw	$t3,0($a3)
    # Line 561
    sw	$a6,0($a0)
.L0f0e8184:
    # Line 563
    jr	$ra
    addiu	$sp,$sp,64
.end keepSearchingForEvent

# Function: _GLInvalidatePtr
# Declared: Line 569 (Source lines: 570-572)
# Address: 0x0f0e818c - 0x0f0e81a0 (Size: 20 bytes, Frame: 0)
.globl _GLInvalidatePtr
.ent _GLInvalidatePtr
_GLInvalidatePtr:
    # Line 570
    lui	$v0,0xfff5
    addiu	$v0,$v0,-20292
    addu	$at,$t9,$v0
    # Line 572
    jr	$ra
    # Line 571
    sw	$zero,-20664($at)
.end _GLInvalidatePtr

# Function: gl_g_attachcursor
# Declared: Line 574 (Source lines: 575-659)
# Address: 0x0f0e81a0 - 0x0f0e8558 (Size: 952 bytes, Frame: 224)
.globl gl_g_attachcursor
.ent gl_g_attachcursor
gl_g_attachcursor:
    # Line 575
    addiu	$sp,$sp,-96
    sd	$gp,48($sp)
    # lui	v1,0xfff5 (gp disp hi)
    # addiu	v1,v1,-20312 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 577
    la	$v0,gl_sstatep
    lw	$v0,0($v0)
    # Line 575
    move	$a5,$a0
    move	$a2,$a1
    # Line 577
    lw	$v0,28($v0)
    # Line 578
    slti	$a4,$a2,600
    beqz	$a0,.L0f0e81f0
    # Line 577
    lw	$v0,4($v0)
    # Line 578
    slti	$a3,$a5,600
    beqzl	$a3,.L0f0e81f4
    ld	$gp,48($sp)
    beqzl	$a2,.L0f0e81f4
    ld	$gp,48($sp)
    bnez	$a4,.L0f0e81fc
    sd	$v0,40($sp)
.L0f0e81f0:
    ld	$gp,48($sp)
.L0f0e81f4:
    # Line 579
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e81fc:
    # Line 582
    ld	$a0,40($sp)
    sd	$ra,64($sp)
    move	$a1,$a5
    # Line 581
    lw	$a5,-20668($gp)
    addiu	$a6,$sp,0
    # Line 582
    la	$t9,_GLExtChangePtrDev
    # Line 581
    lw	$t3,20($a5)
    lw	$t2,16($a5)
    lw	$t1,12($a5)
    lw	$t0,8($a5)
    lw	$a7,4($a5)
    lw	$a5,0($a5)
    sw	$t3,20($a6)
    sw	$t2,16($a6)
    sw	$t1,12($a6)
    sw	$t0,8($a6)
    sw	$a7,4($a6)
    # Line 582
    bal _GLExtChangePtrDev
    # Line 581
    sw	$a5,0($a6)
    # Line 582
    beqz	$v0,.L0f0e83c4
    ld	$ra,64($sp)
    # Line 586
    la	$t9,_GLFindCoreDevice
    bal _GLFindCoreDevice
    nop
    move	$a2,$v0
    lw	$a5,0($sp)
    li	$a1,5
    beq	$a5,$a1,.L0f0e83e0
    sw	$v0,-20668($gp)
    lw	$at,0($v0)
    beql	$at,$a1,.L0f0e8450
    sd	$s0,56($sp)
    # Line 588
    beqz	$a5,.L0f0e845c
    sd	$s0,56($sp)
    # Line 590
    lhu	$a4,6($sp)
    la	$s0,sub_0f030000
    lhu	$a3,4($sp)
    addiu	$s0,$s0,20888
    sll	$v1,$a3,0x2
    subu	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    sll	$a3,$a4,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    sh	$zero,718($a3)
    sh	$zero,718($v1)
.L0f0e82bc:
    # Line 591
    sh	$zero,3982($s0)
    sh	$zero,3994($s0)
.L0f0e82c4:
    lw	$a4,0($a2)
    beql	$a4,$a1,.L0f0e83f0
    # Line 598
    lhu	$a4,4($a2)
.L0f0e82d0:
    # Line 607
    lhu	$t9,4($a2)
    sll	$t8,$t9,0x2
    subu	$t8,$t8,$t9
    sll	$t8,$t8,0x2
    addu	$t8,$t8,$s0
    lbu	$t3,717($t8)
    li	$a6,-9
    and	$t3,$t3,$a6
    sb	$t3,717($t8)
    # Line 608
    lhu	$t2,6($a2)
    sll	$t1,$t2,0x2
    subu	$t1,$t1,$t2
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$s0
    lbu	$t0,717($t1)
    and	$t0,$t0,$a6
    sb	$t0,717($t1)
    # Line 609
    lbu	$a5,3981($s0)
    # Line 610
    lbu	$a7,3993($s0)
    # Line 614
    la	$t9,_GLInvalidatePtr
    # Line 609
    and	$a5,$a5,$a6
    # Line 610
    and	$a7,$a7,$a6
    sb	$a7,3993($s0)
    # Line 614
    bal _GLInvalidatePtr
    # Line 609
    sb	$a5,3981($s0)
    # Line 616
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    beqz	$v0,.L0f0e83d0
    ld	$ra,64($sp)
    li	$a3,5
    lw	$v1,224($v0)
    lbu	$v1,44($v1)
    beq	$v1,$a3,.L0f0e83d0
    # Line 628
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-30284
    bal _GLSelectInput
    nop
    # Line 635
    la	$t9,_GLMarkExtDevsForSelection
    bal _GLMarkExtDevsForSelection
    sd	$v0,32($sp)
    # Line 641
    la	$t9,_GLExtClearGotEventFlags
    bal _GLExtClearGotEventFlags
    nop
    lw	$a2,-20668($gp)
    lw	$at,20($a2)
    li	$v1,1
    beq	$at,$v1,.L0f0e8468
.L0f0e838c:
    ld	$a3,32($sp)
    # Line 655
    bnez	$a3,.L0f0e83a8
    ld	$s0,56($sp)
    la	$t9,_GLExtDevNeedsSelection
    bal _GLExtDevNeedsSelection
    nop
    beqz	$v0,.L0f0e83b4
.L0f0e83a8:
    # Line 656
    la	$t9,_GLSelectInput
    bal _GLSelectInput
    move	$a0,$zero
.L0f0e83b4:
    # Line 657
    la	$t9,XFlush
    jalr	$t9
    ld	$a0,40($sp)
    ld	$ra,64($sp)
.L0f0e83c4:
    ld	$gp,48($sp)
    # Line 659
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e83d0:
    ld	$gp,48($sp)
    # Line 617
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e83e0:
    sd	$s0,56($sp)
    # Line 591
    la	$s0,sub_0f030000
    b	.L0f0e82c4
    addiu	$s0,$s0,20888
.L0f0e83f0:
    # Line 598
    lhu	$a3,8($a2)
    sll	$v1,$a4,0x2
    subu	$v1,$v1,$a4
    sll	$at,$a3,0x2
    subu	$at,$at,$a3
    sll	$at,$at,0x2
    addu	$at,$at,$s0
    lh	$at,712($at)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s0
    sh	$at,712($v1)
    # Line 599
    lhu	$a4,6($a2)
    sll	$v1,$a4,0x2
    lhu	$a3,10($a2)
    subu	$v1,$v1,$a4
    sll	$v1,$v1,0x2
    sll	$at,$a3,0x2
    subu	$at,$at,$a3
    sll	$at,$at,0x2
    addu	$at,$at,$s0
    lh	$at,712($at)
    addu	$v1,$v1,$s0
    b	.L0f0e82d0
    sh	$at,712($v1)
.L0f0e8450:
    # Line 591
    la	$s0,sub_0f030000
    b	.L0f0e82c4
    addiu	$s0,$s0,20888
.L0f0e845c:
    # Line 590
    la	$s0,sub_0f030000
    b	.L0f0e82bc
    addiu	$s0,$s0,20888
.L0f0e8468:
    # Line 641
    lh	$a5,12($a2)
    blez	$a5,.L0f0e84b4
    # Line 644
    lw	$v1,24($sp)
    # Line 641
    lw	$v0,16($a2)
    addu	$a1,$a5,$a5
    addu	$a1,$v0,$a1
    lhu	$a4,0($v0)
.L0f0e8484:
    sll	$a3,$a4,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    lbu	$a3,717($a3)
    # Line 644
    addiu	$v0,$v0,2
    # Line 641
    andi	$a3,$a3,0x3
    bnez	$a3,.L0f0e8544
    # Line 644
    sltu	$at,$v0,$a1
    bnezl	$at,.L0f0e8484
    # Line 641
    lhu	$a4,0($v0)
    # Line 644
    lw	$v1,24($sp)
.L0f0e84b4:
    # Line 650
    beqz	$v1,.L0f0e854c
.L0f0e84b8:
    # Line 651
    la	$t9,sub_0f0f0000
    lw	$a0,16($a2)
    addiu	$t9,$t9,-30696
    bal _GLSelectInput
    lhu	$a0,0($a0)
    la	$a1,sub_0f0f0000
    ld	$a3,32($sp)
    lw	$a2,-20668($gp)
    addiu	$a1,$a1,-30696
    or	$a3,$v0,$a3
    sd	$a3,32($sp)
.L0f0e84e4:
    # Line 652
    lhu	$a0,4($a2)
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    lbu	$a3,717($a3)
    andi	$a3,$a3,0x3
    bnez	$a3,.L0f0e852c
    # Line 653
    move	$t9,$a1
    # Line 652
    lhu	$at,6($a2)
    sll	$a4,$at,0x2
    subu	$a4,$a4,$at
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    lbu	$a4,717($a4)
    andi	$a4,$a4,0x3
    beqz	$a4,.L0f0e838c
    # Line 653
    move	$t9,$a1
.L0f0e852c:
    bal _GLSelectInput
    ld	$s0,56($sp)
    ld	$v1,32($sp)
    or	$v1,$v0,$v1
    b	.L0f0e838c
    sd	$v1,32($sp)
.L0f0e8544:
    b	.L0f0e84b8
    # Line 646
    li	$v0,1
.L0f0e854c:
    # Line 651
    la	$a1,sub_0f0f0000
    b	.L0f0e84e4
    addiu	$a1,$a1,-30696
.end gl_g_attachcursor

# Function: gl_g_qenter
# Declared: Line 672 (Source lines: 673-695)
# Address: 0x0f0e8558 - 0x0f0e8614 (Size: 188 bytes, Frame: 32)
.globl gl_g_qenter
.ent gl_g_qenter
gl_g_qenter:
    # Line 673
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,-21264
    addu	$gp,$t9,$ra
    # Line 678
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,29764
    bal _GLisInterested
    nop
    # Line 679
    la	$t9,_GLupdateQueue
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    la	$a6,gl_wstatep
    lw	$a6,0($a6)
    lw	$at,224($a6)
    bnez	$at,.L0f0e85b0
    ld	$ra,0($sp)
.L0f0e85a4:
    ld	$gp,8($sp)
    # Line 695
    jr	$ra
    addiu	$sp,$sp,32
.L0f0e85b0:
    # Line 686
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    lw	$a2,28($a0)
    la	$a4,dummy_ev
    lw	$a2,4($a2)
    sw	$a2,12($a4)
    # Line 687
    lw	$a1,224($a6)
    lw	$a1,8($a1)
    # Line 688
    li	$a3,19
    # Line 687
    sw	$a1,16($a4)
    # Line 688
    la	$t9,XSendEvent
    lw	$a1,224($a6)
    li	$a2,1
    lw	$a0,28($a0)
    lw	$a1,8($a1)
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 693
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    b	.L0f0e85a4
    ld	$ra,0($sp)
.end gl_g_qenter

# Function: _GLSelectInput
# Declared: Line 697 (Source lines: 698-737)
# Address: 0x0f0e8614 - 0x0f0e8818 (Size: 516 bytes, Frame: 224)
.globl _GLSelectInput
.ent _GLSelectInput
_GLSelectInput:
    # Line 698
    addiu	$sp,$sp,-96
    sd	$s2,24($sp)
    sd	$s1,0($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-21452 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 703
    la	$t9,__GLisqueued
    # Line 698
    move	$s1,$a0
    sd	$ra,8($sp)
    # Line 703
    jalr	$t9
    li	$a0,543
    # Line 705
    la	$t9,_GLinitgl
    sd	$s0,32($sp)
    jalr	$t9
    # Line 703
    move	$s2,$v0
    # Line 706
    la	$v0,gl_sstatep
    lw	$v0,0($v0)
    lw	$v0,28($v0)
    # Line 707
    li	$a1,5
    beqz	$s1,.L0f0e878c
    lw	$s0,4($v0)
    lbu	$v0,44($s1)
    li	$v1,1
    beq	$v0,$v1,.L0f0e86cc
    sd	$s3,56($sp)
    beq	$v0,$a1,.L0f0e86cc
    sd	$s3,56($sp)
    # Line 710
    lw	$a3,32($s1)
    andi	$a3,$a3,0x4
    beqz	$a3,.L0f0e869c
    # Line 713
    move	$a0,$s0
    # Line 712
    li	$s2,1
    # Line 713
    move	$a0,$s0
.L0f0e869c:
    la	$t9,XSelectInput
    la	$a2,_GLframeMask
    lw	$a1,64($s1)
    jalr	$t9
    lw	$a2,0($a2)
    # Line 714
    move	$a0,$s0
    la	$t9,XSelectInput
    la	$a2,_GLcanvasMask
    lw	$a1,8($s1)
    jalr	$t9
    lw	$a2,0($a2)
    sd	$s3,56($sp)
.L0f0e86cc:
    sd	$s6,64($sp)
    move	$a3,$s2
    # Line 717
    beqz	$a3,.L0f0e8754
    ld	$s2,24($sp)
    # Line 727
    la	$s6,gl_nscrns
    move	$s3,$zero
    lw	$a0,0($s6)
    sd	$s4,48($sp)
    sd	$s5,40($sp)
    blez	$a0,.L0f0e8754
    ld	$s2,24($sp)
    move	$s2,$zero
    la	$s4,gl_scrntab
    b	.L0f0e8728
    lui	$s5,0x8
.L0f0e8708:
    # Line 732
    la	$t9,XSelectInput
    lw	$a1,112($v0)
    move	$a2,$s5
    jalr	$t9
    lw	$a1,64($a1)
    lw	$a0,0($s6)
.L0f0e8720:
    # Line 727
    slt	$a3,$s3,$a0
    beqz	$a3,.L0f0e8748
.L0f0e8728:
    # Line 728
    lw	$v0,0($s4)
    addu	$v0,$v0,$s2
    lw	$v0,28($v0)
    # Line 727
    addiu	$s3,$s3,1
    # Line 728
    beqz	$v0,.L0f0e8720
    # Line 727
    addiu	$s2,$s2,40
    b	.L0f0e8708
    # Line 732
    move	$a0,$s0
.L0f0e8748:
    ld	$s2,24($sp)
    ld	$s5,40($sp)
    ld	$s4,48($sp)
.L0f0e8754:
    # Line 735
    la	$t9,_GLSelectExtDevs
    move	$a0,$s1
    ld	$s3,56($sp)
    bal _GLSelectExtDevs
    ld	$s6,64($sp)
    # Line 736
    la	$t9,XFlush
    jalr	$t9
    move	$a0,$s0
    ld	$gp,16($sp)
    # Line 737
    ld	$ra,8($sp)
    ld	$s0,32($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e878c:
    sd	$s3,56($sp)
    # Line 717
    lw	$s3,0($v0)
    lw	$s3,20($s3)
    beqz	$s3,.L0f0e86cc
    sd	$s4,48($sp)
    b	.L0f0e87e4
    li	$s4,1
.L0f0e87a8:
    # Line 721
    move	$a0,$s0
.L0f0e87ac:
    la	$t9,XSelectInput
    la	$a2,_GLframeMask
    lw	$a1,64($s3)
    jalr	$t9
    lw	$a2,0($a2)
    # Line 722
    move	$a0,$s0
    la	$t9,XSelectInput
    la	$a2,_GLcanvasMask
    lw	$a1,8($s3)
    jalr	$t9
    lw	$a2,0($a2)
.L0f0e87d8:
    # Line 717
    lw	$s3,0($s3)
.L0f0e87dc:
    beqz	$s3,.L0f0e8810
    nop
.L0f0e87e4:
    lbu	$v0,44($s3)
    beq	$s4,$v0,.L0f0e87d8
    li	$a3,5
    beql	$a3,$v0,.L0f0e87dc
    lw	$s3,0($s3)
    # Line 718
    lw	$at,32($s3)
    andi	$at,$at,0x4
    beqz	$at,.L0f0e87ac
    # Line 721
    move	$a0,$s0
    b	.L0f0e87a8
    # Line 720
    li	$s2,1
.L0f0e8810:
    b	.L0f0e86cc
    ld	$s4,48($sp)
.end _GLSelectInput

# Function: _GLxmask
# Declared: Line 744 (Source lines: 745-788)
# Address: 0x0f0e8818 - 0x0f0e89b4 (Size: 412 bytes, Frame: 48)
.ent _GLxmask
_GLxmask:
    # Line 745
    la	$v0,_GLframeMask
    addiu	$sp,$sp,-48
    la	$a5,_GLcanvasMask
    # Line 746
    lw	$a6,0($v0)
    # Line 754
    slti	$a1,$a0,84
    # Line 746
    lw	$a7,0($a5)
    move	$a3,$a6
    beqz	$a0,.L0f0e8980
    move	$a4,$a7
    # Line 749
    la	$at,_GLsoftAttach
    lw	$at,0($at)
    beqz	$at,.L0f0e8858
    # Line 751
    lui	$v1,0x100
    ori	$v1,$v1,0x400f
    or	$a6,$a6,$v1
    sw	$a6,0($v0)
.L0f0e8858:
    blez	$a0,.L0f0e8868
    # Line 754
    slti	$a2,$a0,143
    bnez	$a1,.L0f0e8878
    slti	$a2,$a0,143
.L0f0e8868:
    bnez	$a2,.L0f0e88a8
    slti	$at,$a0,171
    beqz	$at,.L0f0e88ac
    # Line 755
    lw	$t1,-20668($gp)
.L0f0e8878:
    ori	$a6,$a6,0x4003
    sw	$a6,0($v0)
.L0f0e8880:
    # Line 788
    bne	$a3,$a6,.L0f0e88a0
    li	$v0,1
    lw	$v1,0($a5)
    bne	$v1,$a4,.L0f0e88a0
    nop
    move	$v0,$zero
.L0f0e8898:
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e88a0:
    b	.L0f0e8898
    nop
.L0f0e88a8:
    # Line 755
    lw	$t1,-20668($gp)
.L0f0e88ac:
    lw	$t0,20($t1)
    li	$a1,1
    beq	$t0,$a1,.L0f0e8960
    # Line 756
    li	$at,273
    li	$a2,272
.L0f0e88c0:
    beq	$a0,$a2,.L0f0e8940
    li	$v1,2
    beq	$a0,$at,.L0f0e893c
    # Line 760
    li	$v1,513
.L0f0e88d0:
    beq	$a0,$v1,.L0f0e8954
    li	$a1,514
    beq	$a0,$a1,.L0f0e8954
    li	$a2,528
    beq	$a0,$a2,.L0f0e8994
    li	$at,534
    beq	$a0,$at,.L0f0e89a0
    li	$v1,543
    beq	$a0,$v1,.L0f0e898c
    # Line 783
    la	$t9,sub_0f0e0000
    sd	$a3,8($sp)
    sd	$ra,16($sp)
    addiu	$t9,$t9,29616
    bal _GLExtConstrainMouse
    sd	$a4,0($sp)
    la	$a5,_GLcanvasMask
    ld	$a4,0($sp)
    ld	$a3,8($sp)
    la	$a0,_GLframeMask
    ld	$ra,16($sp)
    beqz	$v0,.L0f0e8880
    lw	$a6,0($a0)
    # Line 784
    lui	$at,0x100
    ori	$at,$at,0xc
    or	$a6,$a6,$at
    b	.L0f0e8880
    sw	$a6,0($a0)
.L0f0e893c:
    # Line 756
    li	$v1,2
.L0f0e8940:
    beq	$t0,$v1,.L0f0e88d0
    # Line 760
    li	$v1,513
    # Line 759
    ori	$a6,$a6,0x40
.L0f0e894c:
    b	.L0f0e8880
    sw	$a6,0($v0)
.L0f0e8954:
    # Line 763
    ori	$a6,$a6,0x4003
    # Line 764
    b	.L0f0e8880
    # Line 763
    sw	$a6,0($v0)
.L0f0e8960:
    # Line 756
    lhu	$a1,4($t1)
    beql	$a1,$a0,.L0f0e894c
    # Line 759
    ori	$a6,$a6,0x40
    # Line 756
    lhu	$a2,6($t1)
    beql	$a2,$a0,.L0f0e894c
    # Line 759
    ori	$a6,$a6,0x40
    b	.L0f0e88c0
    # Line 756
    li	$a2,272
.L0f0e8980:
    # Line 749
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e898c:
    # Line 780
    b	.L0f0e8880
    # Line 779
    nor	$a3,$a6,$zero
.L0f0e8994:
    # Line 767
    ori	$at,$a7,0x8000
    # Line 768
    b	.L0f0e8880
    # Line 767
    sw	$at,0($a5)
.L0f0e89a0:
    # Line 771
    lui	$v1,0x20
    ori	$v1,$v1,0x30
    or	$a6,$a6,$v1
    # Line 772
    b	.L0f0e8880
    # Line 771
    sw	$a6,0($v0)
.end _GLxmask

# Function: _GLcheckRemoveCoreMasks
# Declared: Line 791 (Source lines: 792-804)
# Address: 0x0f0e89b4 - 0x0f0e8a34 (Size: 128 bytes, Frame: 0)
.ent _GLcheckRemoveCoreMasks
_GLcheckRemoveCoreMasks:
    # Line 793
    lw	$a1,-20668($gp)
    # Line 792
    la	$a4,_GLframeMask
    # Line 793
    lw	$a1,20($a1)
    lw	$a2,0($a4)
    li	$at,1
    beq	$a1,$at,.L0f0e89fc
    move	$a3,$a2
    # Line 796
    li	$at,2
    beq	$a1,$at,.L0f0e8a14
    la	$a1,sub_0f030000
    addiu	$a1,$a1,20888
    lbu	$v1,3993($a1)
    lbu	$v0,3981($a1)
    andi	$v0,$v0,0x3
    beqz	$v0,.L0f0e8a08
.L0f0e89f0:
    # Line 798
    la	$at,_GLsoftAttach
.L0f0e89f4:
    lw	$at,0($at)
    beqz	$at,.L0f0e8a24
.L0f0e89fc:
    # Line 804
    xor	$v0,$a3,$a2
    jr	$ra
    sltu	$v0,$zero,$v0
.L0f0e8a08:
    # Line 796
    andi	$v1,$v1,0x3
    bnez	$v1,.L0f0e89f4
    # Line 798
    la	$at,_GLsoftAttach
.L0f0e8a14:
    li	$a0,-65
    and	$a2,$a2,$a0
    b	.L0f0e89f0
    sw	$a2,0($a4)
.L0f0e8a24:
    # Line 800
    ld	$at,-15744($gp)
    and	$a2,$a2,$at
    b	.L0f0e89fc
    sw	$a2,0($a4)
.end _GLcheckRemoveCoreMasks

# Function: _GLexpressinterest
# Declared: Line 808 (Source lines: 809-890)
# Address: 0x0f0e8a34 - 0x0f0e8ccc (Size: 664 bytes, Frame: 224)
.ent _GLexpressinterest
_GLexpressinterest:
    # Line 809
    slti	$at,$a0,600
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    beqz	$at,.L0f0e8a90
    move	$s0,$a0
    # Line 812
    sll	$a3,$s0,0x2
    la	$a4,sub_0f030000
    subu	$a3,$a3,$s0
    sll	$a3,$a3,0x2
    addiu	$a4,$a4,20888
    addu	$a3,$a3,$a4
    lbu	$a2,717($a3)
    sd	$a3,40($sp)
    # Line 816
    sh	$zero,714($a3)
    # Line 812
    andi	$v1,$a2,0x3
    # Line 817
    or	$a2,$a1,$a2
    sd	$v1,48($sp)
    beqz	$v1,.L0f0e8aa0
    sb	$a2,717($a3)
.L0f0e8a80:
    ld	$v0,48($sp)
    # Line 890
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e8a90:
    # Line 814
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e8aa0:
    # Line 819
    li	$at,514
    bne	$s0,$at,.L0f0e8bb4
    sd	$zero,8($sp)
    li	$v1,1
    bne	$a1,$v1,.L0f0e8bb4
    li	$v0,3
    # Line 820
    addiu	$a0,$a4,1008
    addiu	$a1,$a4,12
.L0f0e8ac0:
    # Line 822
    lbu	$a2,717($a1)
    # Line 821
    addiu	$a1,$a1,12
    addi	$v0,$v0,-1
    # Line 822
    ori	$a2,$a2,0x1
    bnez	$v0,.L0f0e8ac0
    sb	$a2,705($a1)
    move	$v0,$a1
.L0f0e8adc:
    lbu	$a2,753($v0)
    # Line 821
    addiu	$v0,$v0,48
    # Line 822
    lbu	$v1,693($v0)
    ori	$a2,$a2,0x1
    sb	$a2,705($v0)
    ori	$v1,$v1,0x1
    lbu	$at,681($v0)
    sb	$v1,693($v0)
    lbu	$a3,669($v0)
    ori	$at,$at,0x1
    sb	$at,681($v0)
    ori	$a3,$a3,0x1
    # Line 821
    bne	$v0,$a0,.L0f0e8adc
    # Line 822
    sb	$a3,669($v0)
    # Line 821
    addiu	$a0,$a4,2052
    addiu	$v0,$a4,1716
.L0f0e8b1c:
    # Line 824
    lbu	$a2,753($v0)
    # Line 823
    addiu	$v0,$v0,48
    # Line 824
    lbu	$v1,693($v0)
    ori	$a2,$a2,0x1
    sb	$a2,705($v0)
    ori	$v1,$v1,0x1
    lbu	$at,681($v0)
    sb	$v1,693($v0)
    lbu	$a3,669($v0)
    ori	$at,$at,0x1
    sb	$at,681($v0)
    ori	$a3,$a3,0x1
    # Line 823
    bne	$v0,$a0,.L0f0e8b1c
    # Line 824
    sb	$a3,669($v0)
.L0f0e8b54:
    # Line 841
    slti	$a3,$s0,515
.L0f0e8b58:
    bnez	$a3,.L0f0e8b6c
    sd	$ra,64($sp)
    slti	$at,$s0,519
    bnez	$at,.L0f0e8cb0
    sd	$ra,64($sp)
.L0f0e8b6c:
    # Line 887
    la	$t9,sub_0f0f0000
.L0f0e8b70:
    addiu	$t9,$t9,-30696
    bal _GLSelectInput
    move	$a0,$s0
    beqz	$v0,.L0f0e8c9c
    li	$a0,1
.L0f0e8b84:
    bnez	$a0,.L0f0e8ba4
    # Line 888
    la	$t9,_GLSelectInput
    # Line 887
    la	$t9,_GLExtDevNeedsSelection
    bal _GLExtDevNeedsSelection
    nop
    beqz	$v0,.L0f0e8a80
    ld	$ra,64($sp)
    # Line 888
    la	$t9,_GLSelectInput
.L0f0e8ba4:
    bal _GLSelectInput
    move	$a0,$zero
    b	.L0f0e8a80
    ld	$ra,64($sp)
.L0f0e8bb4:
    # Line 839
    move	$a0,$s0
    move	$a1,$zero
    la	$t9,_GLGetDevType
    move	$a2,$zero
    sd	$ra,64($sp)
    bal _GLGetDevType
    move	$a3,$zero
    sd	$v0,32($sp)
    sd	$zero,24($sp)
    move	$ra,$v0
    # Line 840
    beqz	$v0,.L0f0e8b54
    ld	$ra,64($sp)
    # Line 842
    lw	$at,-20668($gp)
    # Line 852
    move	$a0,$v0
    # Line 843
    lw	$v0,20($at)
    # Line 852
    la	$t9,_GLExtMarkInterested
    # Line 842
    lw	$at,0($at)
    sd	$v0,0($sp)
    # Line 852
    bal _GLExtMarkInterested
    sd	$at,16($sp)
    # Line 853
    la	$t9,_GLFindCoreDevice
    bal _GLFindCoreDevice
    nop
    # Line 855
    ld	$a2,16($sp)
    lw	$v1,0($v0)
    # Line 853
    move	$a0,$v0
    sw	$v0,-20668($gp)
    # Line 855
    bne	$v1,$a2,.L0f0e8c38
    ld	$ra,64($sp)
    ld	$at,0($sp)
    lw	$a3,20($v0)
    beq	$a3,$at,.L0f0e8c74
    # Line 860
    ld	$v1,32($sp)
.L0f0e8c38:
    # Line 855
    lw	$v1,20($a0)
    li	$a2,1
    beq	$v1,$a2,.L0f0e8c6c
    # Line 861
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-30284
    bal _GLSelectInput
    nop
    # Line 869
    la	$t9,_GLMarkExtDevsForSelection
    bal _GLMarkExtDevsForSelection
    sd	$v0,8($sp)
    # Line 870
    li	$ra,1
    sd	$ra,24($sp)
    ld	$ra,64($sp)
.L0f0e8c6c:
    lw	$a0,-20668($gp)
    # Line 860
    ld	$v1,32($sp)
.L0f0e8c74:
    lw	$at,0($a0)
    beq	$at,$v1,.L0f0e8b54
    ld	$a2,24($sp)
    bnez	$a2,.L0f0e8b58
    # Line 841
    slti	$a3,$s0,515
    # Line 877
    la	$t9,_GLMarkExtDevsForSelection
    bal _GLMarkExtDevsForSelection
    nop
    b	.L0f0e8b54
    ld	$ra,64($sp)
.L0f0e8c9c:
    ld	$a3,8($sp)
    # Line 887
    bnez	$a3,.L0f0e8b84
    li	$a0,1
    b	.L0f0e8b84
    move	$a0,$zero
.L0f0e8cb0:
    # Line 886
    la	$t9,_GLSetTimer
    ld	$a1,40($sp)
    move	$a0,$s0
    jalr	$t9
    lh	$a1,718($a1)
    b	.L0f0e8b70
    # Line 887
    la	$t9,sub_0f0f0000
.end _GLexpressinterest

# Function: _GLrevokeinterest
# Declared: Line 893 (Source lines: 894-944)
# Address: 0x0f0e8ccc - 0x0f0e8fd4 (Size: 776 bytes, Frame: 224)
.ent _GLrevokeinterest
_GLrevokeinterest:
    # Line 897
    nor	$a4,$a1,$zero
    # Line 906
    lui	$a1,0x62
    # Line 907
    la	$a2,_GLcanvasMask
    # Line 897
    li	$at,514
    # Line 894
    addiu	$sp,$sp,-96
    sd	$s4,24($sp)
    # Line 897
    sll	$v1,$a0,0x2
    # Line 894
    la	$a5,sub_0f030000
    # Line 897
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    # Line 894
    addiu	$a5,$a5,20888
    # Line 897
    addu	$v1,$v1,$a5
    lbu	$v0,717($v1)
    # Line 894
    move	$s4,$a0
    sd	$s1,32($sp)
    # Line 897
    and	$v0,$v0,$a4
    beq	$a0,$at,.L0f0e8e2c
    sb	$v0,717($v1)
    # Line 908
    move	$s1,$a5
    sd	$ra,40($sp)
    sd	$s7,64($sp)
    li	$s7,600
    sd	$s0,72($sp)
    move	$s0,$zero
    sd	$s5,56($sp)
    move	$s5,$zero
    # Line 906
    ori	$a1,$a1,0x30
    sd	$s6,48($sp)
    # Line 908
    la	$s6,sub_0f0f0000
    # Line 907
    sw	$zero,0($a2)
    # Line 906
    la	$a2,_GLframeMask
    # Line 908
    addiu	$s6,$s6,-30696
    b	.L0f0e8d60
    # Line 906
    sw	$a1,0($a2)
.L0f0e8d54:
    # Line 908
    addiu	$s5,$s5,1
    beql	$s5,$s7,.L0f0e8d84
    ld	$s6,48($sp)
.L0f0e8d60:
    lbu	$at,717($s1)
    andi	$at,$at,0x3
    beqz	$at,.L0f0e8d54
    addiu	$s1,$s1,12
    # Line 910
    andi	$a0,$s5,0xffff
    bal _GLSelectInput
    move	$t9,$s6
    b	.L0f0e8d54
    or	$s0,$v0,$s0
.L0f0e8d84:
    ld	$s5,56($sp)
    ld	$s1,32($sp)
    # Line 908
    slti	$a1,$s4,519
    slti	$v1,$s4,515
    bnez	$v1,.L0f0e8dc8
    ld	$s7,64($sp)
    ld	$s1,32($sp)
    ld	$s6,48($sp)
    ld	$s5,56($sp)
    beqz	$a1,.L0f0e8dc8
    ld	$s7,64($sp)
    # Line 912
    la	$t9,_GLSetTimer
    move	$a0,$s4
    jalr	$t9
    move	$a1,$zero
    b	.L0f0e8dfc
    move	$v1,$s0
.L0f0e8dc8:
    # Line 915
    move	$a0,$s4
    la	$t9,_GLGetDevType
    move	$a3,$zero
    move	$a2,$zero
    bal _GLGetDevType
    addiu	$a1,$sp,0
    move	$s1,$v0
    beqz	$v0,.L0f0e8df8
    ld	$ra,40($sp)
    lw	$a2,0($sp)
    li	$at,2
    beq	$a2,$at,.L0f0e8edc
.L0f0e8df8:
    move	$v1,$s0
.L0f0e8dfc:
    ld	$s0,72($sp)
    ld	$s1,32($sp)
    # Line 916
    beqz	$v1,.L0f0e8e20
    ld	$ra,40($sp)
    # Line 943
    la	$t9,_GLSelectInput
    move	$a0,$zero
    bal _GLSelectInput
    ld	$s0,72($sp)
    ld	$ra,40($sp)
.L0f0e8e20:
    # Line 944
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e8e2c:
    # Line 897
    addiu	$s1,$a5,12
    li	$v0,3
    addiu	$a0,$a5,1008
.L0f0e8e38:
    # Line 900
    lbu	$a1,717($s1)
    # Line 899
    addiu	$s1,$s1,12
    addi	$v0,$v0,-1
    # Line 900
    and	$a1,$a1,$a4
    bnez	$v0,.L0f0e8e38
    sb	$a1,705($s1)
    move	$v0,$s1
    ld	$s1,32($sp)
.L0f0e8e58:
    lbu	$a1,753($v0)
    # Line 899
    addiu	$v0,$v0,48
    # Line 900
    lbu	$v1,693($v0)
    and	$a1,$a1,$a4
    sb	$a1,705($v0)
    and	$v1,$v1,$a4
    lbu	$at,681($v0)
    sb	$v1,693($v0)
    lbu	$a2,669($v0)
    and	$at,$at,$a4
    sb	$at,681($v0)
    and	$a2,$a2,$a4
    # Line 899
    bne	$v0,$a0,.L0f0e8e58
    # Line 900
    sb	$a2,669($v0)
    # Line 899
    addiu	$a0,$a5,2052
    addiu	$v0,$a5,1716
.L0f0e8e98:
    # Line 902
    lbu	$a1,753($v0)
    # Line 901
    addiu	$v0,$v0,48
    # Line 902
    lbu	$v1,693($v0)
    and	$a1,$a1,$a4
    sb	$a1,705($v0)
    and	$v1,$v1,$a4
    lbu	$at,681($v0)
    sb	$v1,693($v0)
    lbu	$a2,669($v0)
    and	$at,$at,$a4
    sb	$at,681($v0)
    and	$a2,$a2,$a4
    # Line 901
    bne	$v0,$a0,.L0f0e8e98
    # Line 902
    sb	$a2,669($v0)
    # Line 903
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0e8edc:
    sd	$zero,16($sp)
    # Line 923
    move	$a0,$v0
    addiu	$a4,$sp,10
    la	$t9,_GLExtGetDevNumbers
    addiu	$a3,$sp,8
    addiu	$a2,$sp,6
    bal _GLExtGetDevNumbers
    addiu	$a1,$sp,4
    beqz	$v0,.L0f0e8fb4
    # Line 925
    lhu	$s4,4($sp)
    lhu	$a2,6($sp)
    slt	$a2,$s4,$a2
    beqz	$a2,.L0f0e8f58
    ld	$v1,16($sp)
    # Line 927
    la	$t9,_GLisInterested
.L0f0e8f18:
    bal _GLisInterested
    move	$a0,$s4
    beqz	$v0,.L0f0e8f2c
    # Line 928
    li	$at,1
    sd	$at,16($sp)
.L0f0e8f2c:
    # Line 926
    lhu	$v1,6($sp)
    addiu	$s4,$s4,1
    andi	$s4,$s4,0xffff
    slt	$v1,$s4,$v1
    beqz	$v1,.L0f0e8f54
    ld	$at,16($sp)
    beqz	$at,.L0f0e8f18
    # Line 927
    la	$t9,_GLisInterested
    b	.L0f0e8dfc
    move	$v1,$s0
.L0f0e8f54:
    ld	$v1,16($sp)
.L0f0e8f58:
    # Line 926
    bnez	$v1,.L0f0e8dfc
    move	$v1,$s0
    # Line 931
    lhu	$s4,8($sp)
    lhu	$a1,10($sp)
    slt	$a1,$s4,$a1
    beqz	$a1,.L0f0e8fb8
    ld	$v1,16($sp)
    # Line 933
    la	$t9,_GLisInterested
.L0f0e8f78:
    bal _GLisInterested
    move	$a0,$s4
    beqz	$v0,.L0f0e8f8c
    # Line 934
    li	$a2,1
    sd	$a2,16($sp)
.L0f0e8f8c:
    # Line 932
    lhu	$at,10($sp)
    addiu	$s4,$s4,1
    andi	$s4,$s4,0xffff
    slt	$at,$s4,$at
    beqz	$at,.L0f0e8fb4
    ld	$at,16($sp)
    beqz	$at,.L0f0e8f78
    # Line 933
    la	$t9,_GLisInterested
    b	.L0f0e8dfc
    move	$v1,$s0
.L0f0e8fb4:
    ld	$v1,16($sp)
.L0f0e8fb8:
    # Line 932
    bnez	$v1,.L0f0e8dfc
    move	$v1,$s0
    # Line 939
    la	$t9,_GLExtCloseDev
    bal _GLExtCloseDev
    move	$a0,$s1
    b	.L0f0e8dfc
    move	$v1,$s0
.end _GLrevokeinterest

# Function: _GLfunctions
# Declared: Line 946 (Source lines: 947-953)
# Address: 0x0f0e8fd4 - 0x0f0e903c (Size: 104 bytes, Frame: 0)
.globl _GLfunctions
.ent _GLfunctions
_GLfunctions:
    # Line 947
    lui	$v0,0xfff5
    addiu	$v0,$v0,-23948
    addu	$at,$t9,$v0
    lw	$a4,-32676($at)
    addiu	$a4,$a4,20888
    # Line 949
    lbu	$v1,7269($a4)
    # Line 948
    lui	$v0,0x80
    # Line 949
    andi	$v1,$v1,0x1
    beqz	$v1,.L0f0e901c
    # Line 948
    ori	$v0,$v0,0xc
    # Line 950
    lui	$v0,0x80
.L0f0e9000:
    ori	$v0,$v0,0x2c
    lw	$v1,32($a0)
.L0f0e9008:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0f0e9034
    nop
    # Line 953
    jr	$ra
    nop
.L0f0e901c:
    # Line 949
    lbu	$a1,7221($a4)
    andi	$a1,$a1,0x1
    bnezl	$a1,.L0f0e9008
    # Line 950
    lw	$v1,32($a0)
    b	.L0f0e9000
    lui	$v0,0x80
.L0f0e9034:
    # Line 953
    jr	$ra
    # Line 952
    ori	$v0,$v0,0x12
.end _GLfunctions

# Function: _GLquit_close_setup
# Declared: Line 956 (Source lines: 957-983)
# Address: 0x0f0e903c - 0x0f0e91a8 (Size: 364 bytes, Frame: 192)
.globl _GLquit_close_setup
.ent _GLquit_close_setup
_GLquit_close_setup:
    # Line 957
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    sd	$s1,8($sp)
    lui	$s1,0xfff5
    addiu	$s1,$s1,-24052
    addu	$gp,$t9,$s1
    la	$a2,sub_0f030000
    addiu	$a2,$a2,20888
    # Line 958
    lbu	$at,7221($a2)
    andi	$at,$at,0x1
    beqz	$at,.L0f0e914c
    # Line 957
    move	$s1,$a0
.L0f0e906c:
    sd	$s2,24($sp)
    # Line 963
    la	$s2,gl_sstatep
    lw	$s2,0($s2)
    lw	$v0,28($s2)
    lw	$v0,0($v0)
    lw	$v0,24($v0)
    lw	$v0,24($v0)
    sw	$v0,0($sp)
    # Line 964
    lw	$at,28($s2)
    lw	$at,0($at)
    lw	$at,24($at)
    lw	$at,28($at)
    sw	$at,4($sp)
    # Line 965
    lw	$s2,28($s2)
    lw	$s2,0($s2)
    lw	$s2,20($s2)
    li	$a2,2
    beqz	$s2,.L0f0e9138
    li	$a0,3
    bnez	$s1,.L0f0e90dc
.L0f0e90bc:
    # Line 966
    move	$a3,$zero
.L0f0e90c0:
    beqzl	$a3,.L0f0e90ec
    # Line 968
    lbu	$a3,44($s2)
.L0f0e90c8:
    # Line 965
    lw	$s2,0($s2)
.L0f0e90cc:
    beqz	$s2,.L0f0e9138
    nop
    beqz	$s1,.L0f0e90c0
    # Line 966
    move	$a3,$zero
.L0f0e90dc:
    # Line 965
    beq	$s1,$s2,.L0f0e90bc
    # Line 966
    li	$a3,1
    b	.L0f0e90cc
    # Line 965
    lw	$s2,0($s2)
.L0f0e90ec:
    # Line 968
    beql	$a2,$a3,.L0f0e9100
    lw	$t1,32($s2)
    bnel	$a0,$a3,.L0f0e90cc
    # Line 965
    lw	$s2,0($s2)
    # Line 968
    lw	$t1,32($s2)
.L0f0e9100:
    andi	$at,$t1,0x40
    beqz	$at,.L0f0e9164
    sd	$ra,32($sp)
    # Line 979
    la	$t9,_GLfunctions
.L0f0e9110:
    bal _GLfunctions
    move	$a0,$s2
    la	$t9,_GLsetwmfunction
    move	$a1,$v0
    jalr	$t9
    move	$a0,$s2
    li	$a0,3
    li	$a2,2
    b	.L0f0e90c8
    ld	$ra,32($sp)
.L0f0e9138:
    ld	$gp,16($sp)
    # Line 983
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0e914c:
    # Line 958
    lbu	$v0,7269($a2)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0f0e9138
    sd	$s2,24($sp)
    b	.L0f0e906c
    sd	$s2,24($sp)
.L0f0e9164:
    # Line 971
    li	$a7,2
    addiu	$a6,$sp,0
    li	$a5,2
    li	$a4,32
    lw	$a2,12($s2)
    # Line 970
    ori	$a3,$t1,0x40
    sw	$a3,32($s2)
    # Line 971
    li	$a3,4
    lw	$a2,0($a2)
    lw	$a1,64($s2)
    la	$t9,XChangeProperty
    lw	$a2,24($a2)
    lw	$a0,4($s2)
    jalr	$t9
    lw	$a2,32($a2)
    b	.L0f0e9110
    # Line 979
    la	$t9,_GLfunctions
.end _GLquit_close_setup

# Function: freeze_thaw_check
# Declared: Line 985 (Source lines: 986-998)
# Address: 0x0f0e91a8 - 0x0f0e920c (Size: 100 bytes, Frame: 16)
.ent freeze_thaw_check
freeze_thaw_check:
    # Line 986
    la	$a1,sub_0f030000
    # Line 987
    move	$a2,$zero
    # Line 986
    addiu	$a1,$a1,20888
    # Line 987
    lbu	$at,7185($a1)
    # Line 986
    addiu	$sp,$sp,-16
    # Line 987
    la	$a3,_GLblockWhenStowed
    andi	$at,$at,0x1
    beqz	$at,.L0f0e91ec
    lw	$v0,0($a3)
    lbu	$at,7197($a1)
    andi	$at,$at,0x1
    beqz	$at,.L0f0e91ec
    nop
.L0f0e91dc:
    bne	$v0,$a2,.L0f0e91f4
    # Line 996
    la	$t9,_GLfreezeWindows
.L0f0e91e4:
    # Line 998
    jr	$ra
    addiu	$sp,$sp,16
.L0f0e91ec:
    # Line 987
    b	.L0f0e91dc
    li	$a2,1
.L0f0e91f4:
    # Line 996
    sltiu	$a0,$a2,1
    sd	$ra,0($sp)
    jalr	$t9
    # Line 995
    sw	$a2,0($a3)
    b	.L0f0e91e4
    ld	$ra,0($sp)
.end freeze_thaw_check

# Function: gl_g_unqdevice
# Declared: Line 1000 (Source lines: 1001-1010)
# Address: 0x0f0e920c - 0x0f0e9254 (Size: 72 bytes, Frame: 32)
.globl gl_g_unqdevice
.ent gl_g_unqdevice
gl_g_unqdevice:
    # Line 1001
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,-24516
    addu	$gp,$t9,$ra
    # Line 1008
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-29492
    bal _GLSelectInput
    li	$a1,1
    # Line 1009
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-28248
    bal _GLquit_close_setup
    nop
    # Line 1010
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_unqdevice

# Function: gl_g_qdevice
# Declared: Line 1012 (Source lines: 1013-1024)
# Address: 0x0f0e9254 - 0x0f0e92d4 (Size: 128 bytes, Frame: 48)
.globl gl_g_qdevice
.ent gl_g_qdevice
gl_g_qdevice:
    # Line 1013
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$ra,8($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,-24588
    addu	$gp,$t9,$ra
    # Line 1020
    la	$t9,sub_0f0f0000
    li	$a1,1
    sd	$s7,0($sp)
    addiu	$t9,$t9,-30156
    bal _GLSelectInput
    # Line 1013
    move	$s7,$a0
    # Line 1021
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-28248
    bal _GLquit_close_setup
    nop
    move	$v0,$s7
    # Line 1022
    li	$at,542
    beq	$s7,$at,.L0f0e92bc
    ld	$ra,8($sp)
    li	$v1,546
    beq	$v0,$v1,.L0f0e92bc
    ld	$s7,0($sp)
.L0f0e92b0:
    ld	$gp,16($sp)
    # Line 1024
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e92bc:
    # Line 1023
    la	$t9,_GLquit_close_setup
    move	$a0,$zero
    bal _GLquit_close_setup
    ld	$s7,0($sp)
    b	.L0f0e92b0
    ld	$ra,8($sp)
.end gl_g_qdevice

# Function: add_extdev_to_query
# Declared: Line 1030 (Source lines: 1035-1045)
# Address: 0x0f0e92d4 - 0x0f0e9350 (Size: 124 bytes, Frame: 0)
.ent add_extdev_to_query
add_extdev_to_query:
    # Line 1035
    la	$a7,sub_0f030000
    lw	$a6,-20644($gp)
    blez	$a6,.L0f0e9344
    move	$a4,$zero
    la	$a7,sub_0f030000
    sll	$a5,$a6,0x2
    addiu	$a7,$a7,20888
    addu	$a5,$a5,$a7
    move	$a3,$a7
.L0f0e92f8:
    lw	$at,10320($a3)
    beql	$at,$a0,.L0f0e9318
    # Line 1037
    lw	$v0,10352($a3)
    # Line 1035
    addiu	$a3,$a3,4
    bne	$a3,$a5,.L0f0e92f8
    addiu	$a4,$a4,1
    b	.L0f0e9324
    # Line 1041
    sll	$v1,$a4,0x2
.L0f0e9318:
    # Line 1037
    or	$v0,$v0,$a1
    sw	$v0,10352($a3)
    # Line 1041
    sll	$v1,$a4,0x2
.L0f0e9324:
    # Line 1040
    bne	$a4,$a6,.L0f0e933c
    # Line 1041
    addu	$v1,$v1,$a7
    # Line 1042
    sw	$a1,10352($v1)
    # Line 1041
    sw	$a0,10320($v1)
    # Line 1043
    addiu	$a2,$a6,1
    sw	$a2,-20644($gp)
.L0f0e933c:
    # Line 1045
    jr	$ra
    nop
.L0f0e9344:
    # Line 1035
    addiu	$a7,$a7,20888
    b	.L0f0e9324
    # Line 1041
    sll	$v1,$a4,0x2
.end add_extdev_to_query

# Function: _GLupdatePointer
# Declared: Line 1053 (Source lines: 1054-1103)
# Address: 0x0f0e9350 - 0x0f0e95b0 (Size: 608 bytes, Frame: 48)
.globl _GLupdatePointer
.ent _GLupdatePointer
_GLupdatePointer:
    # Line 1059
    li	$at,2
    # Line 1054
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1057
    li	$a3,8
    # Line 1054
    lui	$a7,0xfff5
    addiu	$a7,$a7,-24840
    # Line 1057
    lw	$a1,0($a0)
    # Line 1054
    addu	$gp,$t9,$a7
    move	$a7,$a0
    # Line 1057
    xor	$a4,$a1,$a3
    # Line 1059
    beq	$a1,$at,.L0f0e93b8
    # Line 1057
    sltu	$a4,$zero,$a4
    # Line 1059
    li	$at,3
    beq	$a1,$at,.L0f0e93b8
    li	$v0,4
    beq	$a1,$v0,.L0f0e9410
    li	$v1,5
    beq	$a1,$v1,.L0f0e9410
    li	$a2,7
    beq	$a1,$a2,.L0f0e9408
    nop
    beq	$a1,$a3,.L0f0e9408
    nop
    ld	$gp,0($sp)
    # Line 1079
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e93b8:
    # Line 1064
    lw	$a5,48($a7)
.L0f0e93bc:
    # Line 1081
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    li	$a6,1
    lw	$a2,-20660($gp)
    lw	$a0,28($a0)
    # Line 1080
    lw	$a1,44($a7)
    # Line 1081
    beqz	$a2,.L0f0e94b4
    lw	$a0,112($a0)
    # Line 1093
    la	$a0,sub_0f030000
    lw	$a7,-20668($gp)
    addiu	$a0,$a0,20888
    lw	$a1,20($a7)
.L0f0e93ec:
    beql	$a1,$a6,.L0f0e9418
    # Line 1096
    lh	$a2,12($a7)
.L0f0e93f4:
    beqz	$a4,.L0f0e94a0
    # Line 1102
    la	$t9,_GLExtClearGotEventFlags
.L0f0e93fc:
    ld	$gp,0($sp)
    # Line 1103
    jr	$ra
    addiu	$sp,$sp,48
.L0f0e9408:
    # Line 1077
    b	.L0f0e93bc
    # Line 1076
    lw	$a5,64($a7)
.L0f0e9410:
    # Line 1071
    b	.L0f0e93bc
    # Line 1070
    lw	$a5,48($a7)
.L0f0e9418:
    # Line 1096
    blez	$a2,.L0f0e93f4
    move	$a1,$zero
    move	$a6,$zero
    la	$a3,sub_0f030000
    addiu	$a3,$a3,-26896
.L0f0e942c:
    # Line 1097
    lw	$v1,16($a7)
    lw	$at,8($a3)
    addu	$v1,$v1,$a6
    lhu	$v1,0($v1)
    and	$at,$at,$a5
    sltu	$at,$zero,$at
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    sh	$at,712($v0)
    # Line 1098
    lw	$a2,16($a7)
    addu	$a2,$a2,$a6
    lhu	$a2,0($a2)
    sll	$v1,$a2,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lbu	$v0,717($v1)
    ori	$v0,$v0,0x8
    sb	$v0,717($v1)
    # Line 1096
    lh	$at,12($a7)
    addiu	$a3,$a3,4
    addiu	$a1,$a1,1
    slt	$at,$a1,$at
    bnez	$at,.L0f0e942c
    addiu	$a6,$a6,2
    b	.L0f0e93f4
    nop
.L0f0e94a0:
    sd	$ra,24($sp)
    # Line 1102
    bal _GLExtClearGotEventFlags
    nop
    b	.L0f0e93fc
    ld	$ra,24($sp)
.L0f0e94b4:
    sd	$a4,16($sp)
    sd	$a5,8($sp)
    sd	$ra,24($sp)
    # Line 1083
    la	$a3,sub_0f030000
    # Line 1084
    la	$t9,_GLinvertY
    # Line 1083
    lw	$a2,40($a7)
    addiu	$a3,$a3,20888
    # Line 1084
    jalr	$t9
    # Line 1083
    sh	$a2,3976($a3)
    la	$a0,sub_0f030000
    # Line 1086
    lw	$a7,-20668($gp)
    addiu	$a0,$a0,20888
    # Line 1085
    lbu	$a5,3981($a0)
    # Line 1086
    lbu	$a4,3993($a0)
    # Line 1084
    sh	$v0,3988($a0)
    # Line 1085
    ori	$a5,$a5,0x8
    # Line 1086
    ori	$a4,$a4,0x8
    sb	$a4,3993($a0)
    # Line 1085
    sb	$a5,3981($a0)
    ld	$ra,24($sp)
    # Line 1086
    lw	$a1,20($a7)
    li	$a6,1
    ld	$a5,8($sp)
    beq	$a1,$a6,.L0f0e9520
    ld	$a4,16($sp)
.L0f0e9518:
    # Line 1093
    b	.L0f0e93ec
    sw	$a6,-20664($gp)
.L0f0e9520:
    # Line 1086
    lw	$a2,0($a7)
    li	$at,4
    bne	$a2,$at,.L0f0e9518
    nop
    # Line 1088
    lhu	$v1,4($a7)
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    lh	$at,3976($a0)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    sh	$at,712($v0)
    # Line 1089
    lhu	$a2,6($a7)
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    lh	$v1,3988($a0)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    sh	$v1,712($a1)
    # Line 1090
    lhu	$v0,4($a7)
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lbu	$a2,717($at)
    ori	$a2,$a2,0x8
    sb	$a2,717($at)
    # Line 1091
    lhu	$a1,6($a7)
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lbu	$v0,717($v1)
    ori	$v0,$v0,0x8
    sb	$v0,717($v1)
    b	.L0f0e9518
    lw	$a1,20($a7)
.end _GLupdatePointer

# Function: _GLsetLockState
# Declared: Line 1105 (Source lines: 1106-1108)
# Address: 0x0f0e95b0 - 0x0f0e95dc (Size: 44 bytes, Frame: 0)
.globl _GLsetLockState
.ent _GLsetLockState
_GLsetLockState:
    # Line 1107
    sll	$v0,$a0,0x2
    # Line 1106
    lui	$v1,0xfff5
    addiu	$v1,$v1,-25448
    addu	$at,$t9,$v1
    # Line 1107
    lw	$v1,-32676($at)
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addiu	$v1,$v1,20888
    addu	$v0,$v0,$v1
    # Line 1108
    jr	$ra
    # Line 1107
    sb	$a1,716($v0)
.end _GLsetLockState

# Function: _GLgetLockState
# Declared: Line 1110 (Source lines: 1111-1112)
# Address: 0x0f0e95dc - 0x0f0e9610 (Size: 52 bytes, Frame: 0)
.globl _GLgetLockState
.ent _GLgetLockState
_GLgetLockState:
    # Line 1112
    sll	$v0,$a0,0x2
    # Line 1111
    lui	$v1,0xfff5
    addiu	$v1,$v1,-25492
    addu	$at,$t9,$v1
    # Line 1112
    lw	$v1,-32676($at)
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addiu	$v1,$v1,20888
    addu	$v0,$v0,$v1
    lbu	$v0,716($v0)
    dsll32	$v0,$v0,0x10
    jr	$ra
    dsra32	$v0,$v0,0x10
.end _GLgetLockState

# Function: _GLupdateLockKey
# Declared: Line 1118 (Source lines: 1119-1127)
# Address: 0x0f0e9610 - 0x0f0e9680 (Size: 112 bytes, Frame: 0)
.ent _GLupdateLockKey
_GLupdateLockKey:
    # Line 1119
    li	$at,4
    beq	$a0,$at,.L0f0e9668
    # Line 1120
    la	$a3,_GLnumLockMask
    lw	$a3,0($a3)
.L0f0e9620:
    # Line 1123
    la	$v1,sub_0f030000
    # Line 1120
    beqz	$a3,.L0f0e9660
    # Line 1123
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    addiu	$v1,$v1,20888
    and	$v0,$a3,$a1
    sltu	$at,$zero,$v0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$v1
    beqz	$v0,.L0f0e9674
    sh	$at,712($a4)
    # Line 1124
    li	$a0,13
    # Line 1125
    lbu	$at,717($a4)
.L0f0e9654:
    # Line 1124
    sb	$a0,716($a4)
    # Line 1125
    ori	$at,$at,0x8
    sb	$at,717($a4)
.L0f0e9660:
    # Line 1127
    jr	$ra
    nop
.L0f0e9668:
    # Line 1120
    la	$a3,_GLcapsLockMask
    b	.L0f0e9620
    lw	$a3,0($a3)
.L0f0e9674:
    # Line 1124
    move	$a0,$zero
    b	.L0f0e9654
    # Line 1125
    lbu	$at,717($a4)
.end _GLupdateLockKey

# Function: _GLupdateLockKeys
# Declared: Line 1129 (Source lines: 1130-1133)
# Address: 0x0f0e9680 - 0x0f0e96dc (Size: 92 bytes, Frame: 48)
.globl _GLupdateLockKeys
.ent _GLupdateLockKeys
_GLupdateLockKeys:
    # Line 1130
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,-25656
    addu	$gp,$t9,$ra
    la	$t9,sub_0f0f0000
    move	$s3,$a0
    # Line 1131
    li	$a0,4
    # Line 1130
    addiu	$t9,$t9,-27120
    # Line 1131
    bal _GLgetLockState
    move	$a1,$s3
    la	$t9,sub_0f0f0000
    # Line 1132
    li	$a0,166
    addiu	$t9,$t9,-27120
    bal _GLgetLockState
    move	$a1,$s3
    # Line 1133
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLupdateLockKeys

# Function: _GLqueryModState
# Declared: Line 1138 (Source lines: 1139-1147)
# Address: 0x0f0e96dc - 0x0f0e9760 (Size: 132 bytes, Frame: 208)
.globl _GLqueryModState
.ent _GLqueryModState
_GLqueryModState:
    # Line 1139
    move	$at,$a0
    addiu	$sp,$sp,-80
    # Line 1143
    addiu	$a7,$sp,36
    sd	$gp,40($sp)
    # Line 1139
    lui	$t1,0xfff5
    addiu	$t1,$t1,-25748
    addu	$gp,$t9,$t1
    # Line 1143
    la	$t0,gl_sstatep
    addiu	$a6,$sp,32
    addiu	$a5,$sp,28
    lw	$t0,0($t0)
    addiu	$a4,$sp,24
    addiu	$a3,$sp,20
    lw	$t0,28($t0)
    addiu	$a2,$sp,16
    sd	$ra,48($sp)
    lw	$a1,112($t0)
    la	$t9,XQueryPointer
    lw	$a0,4($t0)
    lw	$a1,64($a1)
    jalr	$t9
    sw	$at,4($sp)
    ld	$gp,40($sp)
    beqz	$v0,.L0f0e9754
    # Line 1147
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    # Line 1145
    ld	$ra,48($sp)
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e9754:
    # Line 1147
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,80
.end _GLqueryModState

# Function: _GLqueryPointer
# Declared: Line 1150 (Source lines: 1151-1170)
# Address: 0x0f0e9760 - 0x0f0e98dc (Size: 380 bytes, Frame: 208)
.ent _GLqueryPointer
_GLqueryPointer:
    # Line 1151
    addiu	$sp,$sp,-80
    # Line 1157
    addiu	$a7,$sp,40
    addiu	$a6,$sp,36
    addiu	$a5,$sp,32
    # Line 1154
    la	$a0,gl_sstatep
    # Line 1157
    addiu	$a4,$sp,28
    addiu	$a3,$sp,24
    # Line 1154
    lw	$a0,0($a0)
    sd	$ra,56($sp)
    # Line 1157
    addiu	$at,$sp,16
    # Line 1154
    lw	$a1,28($a0)
    # Line 1157
    la	$t9,XQueryPointer
    # Line 1155
    li	$a2,-1
    # Line 1154
    lw	$a1,112($a1)
    # Line 1155
    sw	$a2,16($sp)
    # Line 1157
    addiu	$a2,$sp,20
    lw	$a0,28($a0)
    sd	$a1,48($sp)
    lw	$a1,64($a1)
    lw	$a0,4($a0)
    jalr	$t9
    sw	$at,4($sp)
    beqz	$v0,.L0f0e9820
    # Line 1160
    lw	$a1,32($sp)
    ld	$a0,48($sp)
    sd	$s4,64($sp)
    # Line 1159
    la	$s4,sub_0f030000
    # Line 1160
    la	$t9,_GLinvertY
    # Line 1159
    lw	$a2,28($sp)
    addiu	$s4,$s4,20888
    # Line 1160
    jalr	$t9
    # Line 1159
    sh	$a2,3976($s4)
    # Line 1160
    lw	$a0,-20668($gp)
    sh	$v0,3988($s4)
    lw	$at,20($a0)
    li	$a1,4
    li	$v0,1
    bne	$at,$v0,.L0f0e9810
    ld	$ra,56($sp)
    lw	$v1,0($a0)
    beq	$v1,$a1,.L0f0e9830
    # Line 1164
    lw	$v0,16($sp)
    b	.L0f0e9818
    ld	$s4,64($sp)
.L0f0e9810:
    lw	$v0,16($sp)
    ld	$s4,64($sp)
.L0f0e9818:
    # Line 1168
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e9820:
    ld	$ra,56($sp)
    # Line 1170
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e9830:
    # Line 1162
    lhu	$a3,4($a0)
    lh	$a1,3976($s4)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s4
    sh	$a1,712($a2)
    # Line 1163
    lhu	$v1,6($a0)
    lh	$a3,3988($s4)
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    sll	$at,$at,0x2
    addu	$at,$at,$s4
    sh	$a3,712($at)
    # Line 1164
    lh	$a2,12($a0)
    lw	$v0,16($sp)
    blez	$a2,.L0f0e98d0
    move	$a3,$zero
    la	$a5,sub_0f030000
    move	$a4,$zero
    addiu	$a5,$a5,-26896
.L0f0e9884:
    # Line 1165
    lw	$a2,16($a0)
    lw	$v1,8($a5)
    addu	$a2,$a2,$a4
    lhu	$a2,0($a2)
    and	$v1,$v1,$v0
    sltu	$v1,$zero,$v1
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s4
    sh	$v1,712($a1)
    # Line 1164
    lh	$at,12($a0)
    addiu	$a5,$a5,4
    addiu	$a3,$a3,1
    slt	$at,$a3,$at
    bnez	$at,.L0f0e9884
    addiu	$a4,$a4,2
    b	.L0f0e9818
    ld	$s4,64($sp)
.L0f0e98d0:
    lw	$v0,16($sp)
    b	.L0f0e9818
    ld	$s4,64($sp)
.end _GLqueryPointer

# Function: gl_g_getdev
# Declared: Line 1173 (Source lines: 1174-1278)
# Address: 0x0f0e98dc - 0x0f0e9f44 (Size: 1640 bytes, Frame: 224)
.globl gl_g_getdev
.ent gl_g_getdev
gl_g_getdev:
    # Line 1174
    addiu	$sp,$sp,-224
    sd	$s0,96($sp)
    # Line 1179
    move	$s0,$zero
    sd	$s7,80($sp)
    # Line 1178
    move	$s7,$zero
    sd	$s2,144($sp)
    # Line 1177
    move	$s2,$zero
    sd	$s4,104($sp)
    # Line 1176
    move	$s4,$zero
    sd	$s6,128($sp)
    # Line 1174
    move	$s6,$a2
    sd	$s5,88($sp)
    move	$s5,$a1
    sd	$s3,136($sp)
    move	$s3,$a0
    sd	$ra,112($sp)
    sd	$gp,120($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-26260 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1183
    la	$t9,_GLinitgl
    sd	$s8,152($sp)
    # Line 1181
    li	$s8,-1
    # Line 1183
    jalr	$t9
    # Line 1181
    sw	$s8,0($sp)
    sd	$s1,168($sp)
    # Line 1189
    blez	$s3,.L0f0e9e84
    sw	$zero,-20644($gp)
    sd	$s3,176($sp)
    sd	$s0,56($sp)
    sd	$s2,64($sp)
    move	$s2,$s5
    la	$s1,sub_0f030000
    sd	$s7,72($sp)
    addu	$s7,$s3,$s3
    addu	$s7,$s7,$s5
    sd	$s7,48($sp)
    la	$s7,sub_0f0f0000
    addiu	$s1,$s1,20888
    b	.L0f0e99b4
    addiu	$s7,$s7,-30156
.L0f0e9980:
    # Line 1203
    addiu	$s4,$s4,1
.L0f0e9984:
    dsll32	$s4,$s4,0x10
    dsra32	$s4,$s4,0x10
.L0f0e998c:
    # Line 1190
    addiu	$s2,$s2,2
.L0f0e9990:
    # Line 1234
    sll	$a3,$s0,0x2
    subu	$a3,$a3,$s0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s1
    lbu	$v1,717($a3)
    # Line 1190
    ld	$at,48($sp)
    # Line 1234
    ori	$v1,$v1,0x8
    # Line 1190
    beq	$s2,$at,.L0f0e9afc
    # Line 1234
    sb	$v1,717($a3)
.L0f0e99b4:
    # Line 1197
    li	$a1,2
    # Line 1196
    lhu	$s0,0($s2)
    # Line 1197
    move	$t9,$s7
    bal _GLSelectInput
    move	$a0,$s0
    lw	$a1,-20668($gp)
    lw	$a4,20($a1)
    li	$v1,272
    li	$at,1
    beq	$a4,$at,.L0f0e9a2c
    move	$s3,$v0
    # Line 1199
    move	$v0,$zero
.L0f0e99e4:
    beq	$v1,$s0,.L0f0e9a44
    li	$a3,273
    beq	$a3,$s0,.L0f0e9a44
    nop
    beqz	$v0,.L0f0e9a4c
.L0f0e99f8:
    la	$v1,_GLmenuIsUp
.L0f0e99fc:
    # Line 1201
    beqz	$s3,.L0f0e9980
    lw	$at,-20664($gp)
    la	$a4,_GLpointerWindow
    lw	$a4,0($a4)
    beqzl	$a4,.L0f0e9984
    # Line 1203
    addiu	$s4,$s4,1
    # Line 1201
    beqz	$at,.L0f0e9980
    lw	$v1,0($v1)
    beqzl	$v1,.L0f0e9990
    # Line 1190
    addiu	$s2,$s2,2
    b	.L0f0e9984
    # Line 1203
    addiu	$s4,$s4,1
.L0f0e9a2c:
    # Line 1199
    lhu	$a3,4($a1)
    beq	$a3,$s0,.L0f0e9a44
    nop
    lhu	$a4,6($a1)
    bne	$a4,$s0,.L0f0e99e4
    move	$v0,$zero
.L0f0e9a44:
    b	.L0f0e99f8
    li	$v0,1
.L0f0e9a4c:
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,29616
    bal _GLExtConstrainMouse
    move	$a0,$s0
    bnez	$v0,.L0f0e99fc
    la	$v1,_GLmenuIsUp
    blez	$s0,.L0f0e9a74
    # Line 1205
    slti	$v1,$s0,143
    slti	$at,$s0,84
    bnez	$at,.L0f0e9a88
.L0f0e9a74:
    slti	$a3,$s0,171
    bnez	$v1,.L0f0e9e68
    # Line 1206
    slti	$at,$s0,515
    # Line 1205
    beqz	$a3,.L0f0e9e6c
    # Line 1214
    li	$a3,1
.L0f0e9a88:
    la	$at,_GLmenuIsUp
    # Line 1206
    beqz	$s3,.L0f0e9aa8
    # Line 1207
    ld	$a3,64($sp)
    la	$a4,_GLkeyfocusWindow
    # Line 1206
    lw	$a4,0($a4)
    beqz	$a4,.L0f0e9aa8
    lw	$at,0($at)
    beqz	$at,.L0f0e998c
.L0f0e9aa8:
    la	$v1,_GLcapsLockMask
    # Line 1207
    addiu	$a4,$a3,1
    dsll32	$a4,$a4,0x10
    lw	$v1,0($v1)
    dsra32	$a3,$a4,0x10
    la	$a4,_GLnumLockMask
    beqz	$v1,.L0f0e9ad0
    sd	$a3,64($sp)
    li	$a3,4
    # Line 1208
    beq	$a3,$s0,.L0f0e9ae4
.L0f0e9ad0:
    lw	$a4,0($a4)
    beqz	$a4,.L0f0e998c
    li	$at,166
    bnel	$at,$s0,.L0f0e9990
    # Line 1190
    addiu	$s2,$s2,2
.L0f0e9ae4:
    ld	$v1,72($sp)
    # Line 1210
    addiu	$a3,$v1,1
    dsll32	$a3,$a3,0x10
    dsra32	$v1,$a3,0x10
    b	.L0f0e998c
    sd	$v1,72($sp)
.L0f0e9afc:
    ld	$s0,56($sp)
    ld	$s7,72($sp)
    ld	$s2,64($sp)
    ld	$s3,176($sp)
.L0f0e9b0c:
    # Line 1237
    la	$t9,gl_fast_qcheck
    move	$a0,$s0
    jalr	$t9
    move	$a1,$zero
    beqz	$s4,.L0f0e9b34
    # Line 1240
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-26784
    bal _GLqueryModState
    nop
    sw	$v0,0($sp)
.L0f0e9b34:
    beqz	$s2,.L0f0e9b60
    # Line 1249
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    la	$t9,XQueryKeymap
    lw	$a0,28($a0)
    addiu	$a1,$sp,16
    jalr	$t9
    lw	$a0,4($a0)
    beqz	$s7,.L0f0e9b60
    lw	$a3,0($sp)
    beq	$a3,$s8,.L0f0e9f30
.L0f0e9b60:
    # Line 1253
    lw	$a4,-20644($gp)
.L0f0e9b64:
    move	$s0,$s1
    blez	$a4,.L0f0e9b94
    move	$s4,$zero
.L0f0e9b70:
    # Line 1254
    la	$t9,_GLExtQueryDevice
    lw	$a1,10352($s0)
    # Line 1253
    addiu	$s4,$s4,1
    # Line 1254
    bal _GLExtQueryDevice
    lw	$a0,10320($s0)
    # Line 1253
    lw	$at,-20644($gp)
    slt	$at,$s4,$at
    bnez	$at,.L0f0e9b70
    addiu	$s0,$s0,4
.L0f0e9b94:
    # Line 1259
    li	$s4,4
    li	$v0,166
    addiu	$s3,$s3,-1
    bltz	$s3,.L0f0e9c74
    addiu	$a2,$s3,1
    andi	$v1,$a2,0x1
    beqz	$v1,.L0f0e9c68
    addiu	$a0,$sp,16
    # Line 1260
    lhu	$s0,0($s5)
    beqz	$s2,.L0f0e9c1c
    addiu	$s5,$s5,2
    blez	$s0,.L0f0e9bcc
    # Line 1262
    slti	$a3,$s0,84
    bnez	$a3,.L0f0e9bdc
.L0f0e9bcc:
    slti	$a4,$s0,143
    bnez	$a4,.L0f0e9c1c
    slti	$at,$s0,171
    beqz	$at,.L0f0e9c1c
.L0f0e9bdc:
    # Line 1263
    addu	$a4,$s0,$s1
    lbu	$a4,528($a4)
    li	$a3,1
    sra	$v1,$a4,0x3
    addu	$v1,$v1,$a0
    lbu	$v1,0($v1)
    andi	$a4,$a4,0x7
    sllv	$a3,$a3,$a4
    and	$v1,$v1,$a3
    beqz	$v1,.L0f0e9f04
    # Line 1266
    li	$a1,1
.L0f0e9c08:
    # Line 1269
    sll	$at,$s0,0x2
    subu	$at,$at,$s0
    sll	$at,$at,0x2
    addu	$at,$at,$s1
    sh	$a1,712($at)
.L0f0e9c1c:
    # Line 1259
    addiu	$s3,$s3,-1
    # Line 1269
    beqz	$s7,.L0f0e9c3c
    lw	$a1,0($sp)
    beq	$a1,$s8,.L0f0e9c40
    # Line 1272
    slti	$v1,$s0,600
    beq	$s4,$s0,.L0f0e9f10
    la	$t9,sub_0f0f0000
    beq	$v0,$s0,.L0f0e9f0c
.L0f0e9c3c:
    slti	$v1,$s0,600
.L0f0e9c40:
    beqz	$v1,.L0f0e9c60
    # Line 1276
    addiu	$s6,$s6,2
    # Line 1275
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s1
    b	.L0f0e9c64
    lh	$a1,712($a1)
.L0f0e9c60:
    move	$a1,$zero
.L0f0e9c64:
    sh	$a1,-2($s6)
.L0f0e9c68:
    sra	$a3,$a2,0x1
    bnez	$a3,.L0f0e9cb4
    nop
.L0f0e9c74:
    ld	$gp,120($sp)
    # Line 1278
    ld	$s0,96($sp)
    ld	$s1,168($sp)
    ld	$s2,144($sp)
    ld	$s3,136($sp)
    ld	$s4,104($sp)
    ld	$s5,88($sp)
    ld	$s6,128($sp)
    ld	$ra,112($sp)
    ld	$s7,80($sp)
    ld	$s8,152($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f0e9ca8:
    # Line 1275
    move	$a1,$zero
.L0f0e9cac:
    # Line 1259
    beq	$s3,$s8,.L0f0e9c74
    # Line 1275
    sh	$a1,-2($s6)
.L0f0e9cb4:
    # Line 1260
    beqz	$s2,.L0f0e9d1c
    lhu	$s0,0($s5)
    blez	$s0,.L0f0e9cd0
    # Line 1262
    slti	$at,$s0,143
    slti	$a4,$s0,84
    bnez	$a4,.L0f0e9ce0
    # Line 1269
    sll	$v1,$s0,0x2
.L0f0e9cd0:
    # Line 1262
    bnez	$at,.L0f0e9d1c
    slti	$v1,$s0,171
    beqz	$v1,.L0f0e9d1c
    # Line 1269
    sll	$v1,$s0,0x2
.L0f0e9ce0:
    # Line 1263
    addu	$at,$s0,$s1
    lbu	$at,528($at)
    # Line 1269
    subu	$v1,$v1,$s0
    li	$a4,1
    # Line 1263
    sra	$a3,$at,0x3
    addu	$a3,$a3,$a0
    lbu	$a3,0($a3)
    andi	$at,$at,0x7
    sllv	$a4,$a4,$at
    and	$a3,$a3,$a4
    beqz	$a3,.L0f0e9e18
    # Line 1269
    sll	$v1,$v1,0x2
    # Line 1266
    li	$a1,1
    # Line 1269
    addu	$v1,$v1,$s1
.L0f0e9d18:
    sh	$a1,712($v1)
.L0f0e9d1c:
    beqz	$s7,.L0f0e9d3c
    lw	$a1,0($sp)
    beql	$a1,$s8,.L0f0e9d40
    # Line 1260
    addiu	$s5,$s5,4
    # Line 1272
    beq	$s4,$s0,.L0f0e9e34
    la	$t9,sub_0f0f0000
    beq	$v0,$s0,.L0f0e9e34
    la	$t9,sub_0f0f0000
.L0f0e9d3c:
    # Line 1260
    addiu	$s5,$s5,4
.L0f0e9d40:
    # Line 1272
    slti	$a3,$s0,600
    beqz	$a3,.L0f0e9d60
    # Line 1275
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s1
    b	.L0f0e9d64
    lh	$a1,712($a1)
.L0f0e9d60:
    move	$a1,$zero
.L0f0e9d64:
    sh	$a1,0($s6)
    # Line 1260
    beqz	$s2,.L0f0e9dd0
    lhu	$s0,-2($s5)
    blez	$s0,.L0f0e9d84
    # Line 1262
    slti	$a4,$s0,143
    slti	$a3,$s0,84
    bnez	$a3,.L0f0e9d94
    # Line 1269
    sll	$at,$s0,0x2
.L0f0e9d84:
    # Line 1262
    bnez	$a4,.L0f0e9dd0
    slti	$at,$s0,171
    beqz	$at,.L0f0e9dd0
    # Line 1269
    sll	$at,$s0,0x2
.L0f0e9d94:
    # Line 1263
    addu	$a4,$s0,$s1
    lbu	$a4,528($a4)
    # Line 1269
    subu	$at,$at,$s0
    li	$a3,1
    # Line 1263
    sra	$v1,$a4,0x3
    addu	$v1,$v1,$a0
    lbu	$v1,0($v1)
    andi	$a4,$a4,0x7
    sllv	$a3,$a3,$a4
    and	$v1,$v1,$a3
    beqz	$v1,.L0f0e9e24
    # Line 1269
    sll	$at,$at,0x2
    # Line 1266
    li	$a1,1
    # Line 1269
    addu	$at,$at,$s1
.L0f0e9dcc:
    sh	$a1,712($at)
.L0f0e9dd0:
    # Line 1276
    addiu	$s6,$s6,4
    # Line 1269
    beqz	$s7,.L0f0e9df4
    lw	$a1,0($sp)
    beql	$a1,$s8,.L0f0e9df8
    # Line 1259
    addiu	$s3,$s3,-2
    # Line 1272
    beq	$s4,$s0,.L0f0e9e50
    la	$t9,sub_0f0f0000
    beq	$v0,$s0,.L0f0e9e50
    la	$t9,sub_0f0f0000
.L0f0e9df4:
    # Line 1259
    addiu	$s3,$s3,-2
.L0f0e9df8:
    # Line 1272
    slti	$v1,$s0,600
    beqz	$v1,.L0f0e9ca8
    # Line 1275
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s1
    b	.L0f0e9cac
    lh	$a1,712($a1)
.L0f0e9e18:
    # Line 1268
    move	$a1,$zero
    b	.L0f0e9d18
    # Line 1269
    addu	$v1,$v1,$s1
.L0f0e9e24:
    # Line 1268
    move	$a1,$zero
    b	.L0f0e9dcc
    # Line 1269
    addu	$at,$at,$s1
    la	$t9,sub_0f0f0000
.L0f0e9e34:
    addiu	$t9,$t9,-27120
    # Line 1273
    bal _GLgetLockState
    move	$a0,$s0
    li	$v0,166
    b	.L0f0e9d3c
    addiu	$a0,$sp,16
    la	$t9,sub_0f0f0000
.L0f0e9e50:
    addiu	$t9,$t9,-27120
    bal _GLgetLockState
    move	$a0,$s0
    li	$v0,166
    b	.L0f0e9df4
    addiu	$a0,$sp,16
.L0f0e9e68:
    # Line 1214
    li	$a3,1
.L0f0e9e6c:
    # Line 1206
    bnez	$at,.L0f0e9e90
    slti	$v1,$s0,519
    beqz	$v1,.L0f0e9e94
    # Line 1220
    move	$a0,$s0
    # Line 1214
    b	.L0f0e998c
    sd	$a3,56($sp)
.L0f0e9e84:
    # Line 1190
    la	$s1,sub_0f030000
    b	.L0f0e9b0c
    addiu	$s1,$s1,20888
.L0f0e9e90:
    # Line 1220
    move	$a0,$s0
.L0f0e9e94:
    la	$t9,_GLGetDevType
    addiu	$a3,$sp,12
    addiu	$a2,$sp,8
    bal _GLGetDevType
    addiu	$a1,$sp,4
    beqz	$v0,.L0f0e998c
    lw	$at,4($sp)
    li	$v1,2
    bnel	$at,$v1,.L0f0e9990
    # Line 1190
    addiu	$s2,$s2,2
    # Line 1229
    beqz	$s3,.L0f0e9ee8
    la	$a3,_GLpointerWindow
    lw	$a3,0($a3)
    beqz	$a3,.L0f0e9ee8
    la	$a4,_GLmenuIsUp
    lw	$a4,0($a4)
    bnez	$a4,.L0f0e9eec
    la	$t9,sub_0f0f0000
    lw	$at,8($sp)
    bnezl	$at,.L0f0e9990
    # Line 1190
    addiu	$s2,$s2,2
.L0f0e9ee8:
    la	$t9,sub_0f0f0000
.L0f0e9eec:
    # Line 1231
    move	$a0,$v0
    addiu	$t9,$t9,-27948
    bal gl_g_qdevice
    lw	$a1,12($sp)
    b	.L0f0e9990
    # Line 1190
    addiu	$s2,$s2,2
.L0f0e9f04:
    b	.L0f0e9c08
    # Line 1268
    move	$a1,$zero
.L0f0e9f0c:
    la	$t9,sub_0f0f0000
.L0f0e9f10:
    sd	$a2,160($sp)
    addiu	$t9,$t9,-27120
    # Line 1273
    bal _GLgetLockState
    move	$a0,$s0
    li	$v0,166
    addiu	$a0,$sp,16
    b	.L0f0e9c3c
    ld	$a2,160($sp)
.L0f0e9f30:
    # Line 1251
    la	$t9,_GLqueryModState
    bal _GLqueryModState
    addiu	$a0,$sp,0
    b	.L0f0e9b64
    # Line 1253
    lw	$a4,-20644($gp)
.end gl_g_getdev

# Function: gl_g_getvaluator
# Declared: Line 1280 (Source lines: 1281-1298)
# Address: 0x0f0e9f44 - 0x0f0e9f88 (Size: 68 bytes, Frame: 48)
.globl gl_g_getvaluator
.ent gl_g_getvaluator
gl_g_getvaluator:
    # Line 1281
    addiu	$sp,$sp,-48
    # Line 1290
    addiu	$a2,$sp,0
    addiu	$a1,$sp,38
    sd	$gp,16($sp)
    # Line 1281
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-27900 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1290
    la	$t9,__GLgetdev
    # Line 1281
    sh	$a0,38($sp)
    sd	$ra,8($sp)
    # Line 1290
    jalr	$t9
    li	$a0,1
    # Line 1298
    ld	$ra,8($sp)
    lh	$v0,0($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_getvaluator

# Function: gl_g_getbutton
# Declared: Line 1301 (Source lines: 1302-1312)
# Address: 0x0f0e9f88 - 0x0f0e9fcc (Size: 68 bytes, Frame: 48)
.globl gl_g_getbutton
.ent gl_g_getbutton
gl_g_getbutton:
    # Line 1302
    addiu	$sp,$sp,-48
    # Line 1304
    addiu	$a2,$sp,0
    addiu	$a1,$sp,38
    sd	$gp,16($sp)
    # Line 1302
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-27968 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1304
    la	$t9,getdev
    # Line 1302
    sh	$a0,38($sp)
    sd	$ra,8($sp)
    # Line 1304
    jalr	$t9
    li	$a0,1
    # Line 1312
    ld	$ra,8($sp)
    lh	$v0,0($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_getbutton

# Function: postAndWarp
# Declared: Line 1318 (Source lines: 1319-1452)
# Address: 0x0f0e9fcc - 0x0f0ea320 (Size: 852 bytes, Frame: 224)
.ent postAndWarp
postAndWarp:
    # Line 1319
    addiu	$sp,$sp,-96
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s1,48($sp)
    beqz	$a2,.L0f0ea22c
    move	$s1,$a3
    sll	$a3,$a0,0x2
    la	$a2,sub_0f030000
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addiu	$a2,$a2,20888
    addu	$a3,$a3,$a2
    lh	$at,712($a3)
    bnel	$at,$s0,.L0f0ea124
    sd	$ra,56($sp)
    # Line 1330
    beqz	$s1,.L0f0ea2a4
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a2
    lh	$a5,712($a0)
    bne	$a5,$s1,.L0f0ea224
    nop
    lbu	$a1,717($a3)
    # Line 1351
    lw	$t2,-20676($gp)
    move	$a6,$zero
    # Line 1330
    andi	$a5,$a1,0x8
    beqz	$a5,.L0f0ea2c0
    # Line 1350
    move	$a7,$zero
    # Line 1330
    lbu	$a3,717($a0)
    andi	$at,$a3,0x8
    beqz	$at,.L0f0ea2c8
    # Line 1351
    lw	$a0,-20672($gp)
    # Line 1330
    andi	$v0,$a1,0x1
    beqz	$v0,.L0f0ea2d0
    # Line 1351
    move	$a4,$zero
.L0f0ea05c:
    beq	$a0,$t2,.L0f0ea124
    # Line 1350
    move	$a3,$zero
    li	$v1,1
    # Line 1355
    lw	$t0,-20668($gp)
    lw	$a1,20($t0)
    beq	$a1,$v1,.L0f0ea2ac
    li	$a5,2
    beq	$a1,$a5,.L0f0ea2ac
    # Line 1359
    move	$t1,$zero
    beqz	$a0,.L0f0ea2b8
    move	$t3,$zero
.L0f0ea088:
    # Line 1363
    addiu	$t0,$a0,-1
.L0f0ea08c:
    # Line 1365
    li	$at,273
    # Line 1364
    sll	$a0,$t0,0x2
    addu	$a0,$a0,$a2
    lhu	$a0,7912($a0)
    # Line 1365
    beq	$a0,$at,.L0f0ea0ac
    # Line 1363
    move	$a1,$t0
    # Line 1365
    bne	$t1,$a0,.L0f0ea234
    # Line 1372
    li	$a5,272
.L0f0ea0ac:
    # Line 1367
    sll	$a5,$a1,0x2
    addu	$a5,$a5,$a2
    lh	$a5,7914($a5)
    # Line 1366
    move	$a3,$a0
    # Line 1367
    beq	$a1,$t2,.L0f0ea248
    sh	$a5,16($sp)
    beqz	$a1,.L0f0ea2ec
    # Line 1369
    addiu	$a0,$a1,-1
.L0f0ea0cc:
    # Line 1370
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a2
    lhu	$a7,7912($a7)
    # Line 1372
    bnez	$a7,.L0f0ea24c
    # Line 1369
    move	$a1,$a0
.L0f0ea0e0:
    # Line 1378
    lbu	$at,3981($a2)
    andi	$at,$at,0x1
    beqz	$at,.L0f0ea2f4
    nop
.L0f0ea0f0:
    # Line 1390
    beqz	$a3,.L0f0ea268
.L0f0ea0f4:
    lh	$v0,16($sp)
    bne	$v0,$s1,.L0f0ea104
    nop
    # Line 1395
    li	$a6,1
.L0f0ea104:
    # Line 1398
    beqz	$a4,.L0f0ea128
    # Line 1404
    la	$t1,gl_sstatep
    # Line 1398
    beqz	$a6,.L0f0ea128
    # Line 1404
    la	$t1,gl_sstatep
    # Line 1401
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ea124:
    # Line 1404
    la	$t1,gl_sstatep
.L0f0ea128:
    # Line 1410
    move	$a7,$s0
    move	$a6,$zero
    # Line 1404
    lw	$t1,0($t1)
    # Line 1410
    move	$a5,$zero
    move	$a4,$zero
    # Line 1404
    lw	$t1,28($t1)
    # Line 1410
    move	$a3,$zero
    move	$a1,$zero
    lw	$v1,120($t1)
    sd	$ra,56($sp)
    la	$t9,XWarpPointer
    subu	$v1,$v1,$s1
    # Line 1405
    lw	$a2,4($t1)
    # Line 1410
    addiu	$v1,$v1,-1
    lw	$t1,8($t1)
    sd	$a2,32($sp)
    move	$a0,$a2
    lw	$a2,140($a2)
    sll	$t0,$t1,0x2
    addu	$t0,$t0,$t1
    sll	$t0,$t0,0x4
    addu	$a2,$a2,$t0
    lw	$a2,8($a2)
    jalr	$t9
    sw	$v1,4($sp)
    # Line 1417
    la	$t9,XSync
    ld	$a0,32($sp)
    jalr	$t9
    move	$a1,$zero
    # Line 1428
    move	$a1,$zero
    move	$a0,$zero
    la	$t9,_GLupdateQueue
    # Line 1427
    sw	$zero,-20656($gp)
    li	$t2,1
    # Line 1428
    jalr	$t9
    # Line 1426
    sw	$t2,-20660($gp)
    # Line 1429
    li	$a1,5
    ld	$ra,56($sp)
    # Line 1442
    move	$a3,$zero
    # Line 1429
    lw	$at,-20656($gp)
    lw	$a0,-20668($gp)
    beqz	$at,.L0f0ea1e4
    lw	$a0,0($a0)
    bnel	$a0,$a1,.L0f0ea214
    # Line 1451
    sw	$zero,-20660($gp)
.L0f0ea1dc:
    # Line 1442
    b	.L0f0ea1f0
    # Line 1441
    li	$a4,2
.L0f0ea1e4:
    # Line 1429
    beq	$a0,$a1,.L0f0ea1dc
    # Line 1444
    move	$a4,$zero
    # Line 1445
    lw	$a3,-20652($gp)
.L0f0ea1f0:
    # Line 1449
    addiu	$a2,$sp,24
    move	$a1,$zero
    la	$t9,_GLpostMotionEvent
    li	$a0,2
    # Line 1448
    sh	$s1,26($sp)
    # Line 1449
    bal _GLpostMotionEvent
    # Line 1447
    sh	$s0,24($sp)
    ld	$ra,56($sp)
    # Line 1451
    sw	$zero,-20660($gp)
.L0f0ea214:
    # Line 1452
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ea224:
    # Line 1401
    b	.L0f0ea124
    sd	$ra,56($sp)
.L0f0ea22c:
    b	.L0f0ea124
    sd	$ra,56($sp)
.L0f0ea234:
    # Line 1372
    beql	$a0,$a5,.L0f0ea248
    # Line 1373
    move	$a7,$a0
    # Line 1372
    bne	$t3,$a0,.L0f0ea248
    nop
    # Line 1373
    move	$a7,$a0
.L0f0ea248:
    # Line 1372
    beqz	$a7,.L0f0ea0e0
.L0f0ea24c:
    sll	$at,$a1,0x2
    addu	$at,$at,$a2
    lh	$at,7914($at)
    bne	$at,$s0,.L0f0ea0f0
    nop
    # Line 1390
    bnez	$a3,.L0f0ea0f4
    # Line 1378
    li	$a4,1
.L0f0ea268:
    # Line 1395
    lbu	$v0,3993($a2)
    andi	$v0,$v0,0x1
    bnez	$v0,.L0f0ea104
    nop
    # Line 1396
    beqz	$t1,.L0f0ea29c
    sll	$v1,$t1,0x2
    subu	$v1,$v1,$t1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a2
    lbu	$v1,717($v1)
    andi	$v1,$v1,0x1
    bnez	$v1,.L0f0ea104
    nop
.L0f0ea29c:
    b	.L0f0ea104
    # Line 1398
    li	$a6,1
.L0f0ea2a4:
    # Line 1401
    b	.L0f0ea124
    sd	$ra,56($sp)
.L0f0ea2ac:
    # Line 1357
    lhu	$t1,6($t0)
    # Line 1359
    bnez	$a0,.L0f0ea088
    # Line 1356
    lhu	$t3,4($t0)
.L0f0ea2b8:
    b	.L0f0ea08c
    # Line 1363
    li	$t0,599
.L0f0ea2c0:
    # Line 1401
    b	.L0f0ea124
    sd	$ra,56($sp)
.L0f0ea2c8:
    b	.L0f0ea124
    sd	$ra,56($sp)
.L0f0ea2d0:
    # Line 1330
    andi	$a5,$a3,0x1
    bnez	$a5,.L0f0ea05c
    # Line 1351
    move	$a4,$zero
    # Line 1345
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ea2ec:
    b	.L0f0ea0cc
    # Line 1369
    li	$a0,599
.L0f0ea2f4:
    # Line 1388
    beqz	$t3,.L0f0ea318
    sll	$at,$t3,0x2
    subu	$at,$at,$t3
    sll	$at,$at,0x2
    addu	$at,$at,$a2
    lbu	$at,717($at)
    andi	$at,$at,0x1
    bnez	$at,.L0f0ea0f0
    nop
.L0f0ea318:
    b	.L0f0ea0f0
    # Line 1390
    li	$a4,1
.end postAndWarp

# Function: check_screen_bounds
# Declared: Line 1553 (Source lines: 1555-1565)
# Address: 0x0f0ea320 - 0x0f0ea358 (Size: 56 bytes, Frame: 0)
.ent check_screen_bounds
check_screen_bounds:
    # Line 1555
    lh	$at,0($a0)
    bltz	$at,.L0f0ea34c
    move	$v0,$zero
.L0f0ea32c:
    # Line 1559
    lh	$v1,0($a1)
    slt	$v1,$v1,$a2
    bnez	$v1,.L0f0ea344
    # Line 1562
    addiu	$a3,$a2,-1
    # Line 1563
    li	$v0,1
    # Line 1562
    sh	$a3,0($a1)
.L0f0ea344:
    # Line 1565
    jr	$ra
    nop
.L0f0ea34c:
    # Line 1559
    li	$v0,1
    b	.L0f0ea32c
    # Line 1558
    sh	$zero,0($a0)
.end check_screen_bounds

# Function: gl_g_setvaluator
# Declared: Line 1568 (Source lines: 1569-1706)
# Address: 0x0f0ea358 - 0x0f0ea83c (Size: 1252 bytes, Frame: 240)
.globl gl_g_setvaluator
.ent gl_g_setvaluator
gl_g_setvaluator:
    # Line 1569
    addiu	$sp,$sp,-112
    andi	$a6,$a0,0xffff
    sh	$a6,86($sp)
    sd	$gp,64($sp)
    dsll32	$t0,$a3,0x10
    dsll32	$a7,$a2,0x10
    dsll32	$v0,$a1,0x10
    lui	$at,0xfff5
    addiu	$at,$at,-28944
    dsra32	$v0,$v0,0x10
    dsra32	$a7,$a7,0x10
    dsra32	$t0,$t0,0x10
    sh	$t0,110($sp)
    sh	$a7,102($sp)
    sh	$v0,94($sp)
    # Line 1581
    beqz	$a6,.L0f0ea508
    # Line 1569
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 1581
    slti	$at,$a6,600
    beqz	$at,.L0f0ea508
    # Line 1587
    lw	$a0,-20668($gp)
    # Line 1582
    slt	$v1,$t0,$a7
    beqz	$v1,.L0f0ea3c4
    # Line 1583
    slt	$at,$v0,$a7
    addiu	$t0,$a7,1
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    sh	$t0,110($sp)
.L0f0ea3c4:
    beqz	$at,.L0f0ea3d8
    # Line 1584
    slt	$v1,$t0,$v0
    move	$v0,$a7
    sh	$a7,94($sp)
    slt	$v1,$t0,$v0
.L0f0ea3d8:
    beqz	$v1,.L0f0ea3e4
    # Line 1587
    li	$a4,1
    # Line 1585
    sh	$t0,94($sp)
.L0f0ea3e4:
    # Line 1587
    lw	$v0,20($a0)
    beq	$v0,$a4,.L0f0ea514
    li	$a5,2
    beql	$v0,$a5,.L0f0ea518
    # Line 1595
    lhu	$a5,6($a0)
    sd	$ra,72($sp)
    sd	$zero,56($sp)
    sd	$zero,48($sp)
.L0f0ea404:
    # Line 1599
    la	$t9,_GLupdateQueue
    move	$a0,$zero
    jalr	$t9
    move	$a1,$zero
    # Line 1601
    lhu	$a6,86($sp)
    ld	$at,48($sp)
    ld	$a4,56($sp)
    beq	$at,$a6,.L0f0ea52c
    li	$v1,272
    beq	$a6,$v1,.L0f0ea530
    # Line 1603
    la	$a2,gl_sstatep
    # Line 1632
    beq	$a4,$a6,.L0f0ea660
    li	$a5,273
    beq	$a6,$a5,.L0f0ea660
    # Line 1663
    la	$a7,gl_sstatep
    lw	$a7,0($a7)
    # Line 1682
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    # Line 1663
    lw	$a7,28($a7)
    # Line 1682
    la	$t9,_GLGetDevType
    move	$a0,$a6
    # Line 1663
    lw	$a6,4($a7)
    # Line 1682
    addiu	$a1,$sp,0
    bal _GLGetDevType
    sd	$a6,32($sp)
    beqz	$v0,.L0f0ea47c
    lw	$at,0($sp)
    li	$v1,2
    beq	$at,$v1,.L0f0ea7b0
    sd	$v0,40($sp)
.L0f0ea47c:
    # Line 1692
    lh	$a4,110($sp)
.L0f0ea480:
    lh	$a3,102($sp)
    la	$t9,_GLExtSetSoftval
    lh	$a2,94($sp)
    ld	$a1,32($sp)
    bal _GLExtSetSoftval
    lhu	$a0,86($sp)
    beqz	$v0,.L0f0ea4b0
    # Line 1696
    la	$t9,_GLExtGetSoftval
    ld	$a1,32($sp)
    bal _GLExtGetSoftval
    lhu	$a0,86($sp)
    sh	$v0,94($sp)
.L0f0ea4b0:
    # Line 1702
    la	$t9,sub_0f0e0000
    addiu	$a2,$sp,94
    addiu	$a1,$sp,86
    addiu	$t9,$t9,30028
    bal _GLisInterested
    li	$a0,1
    lhu	$a6,86($sp)
    bnez	$v0,.L0f0ea794
    ld	$ra,72($sp)
    sll	$at,$a6,0x2
    la	$v1,sub_0f030000
    subu	$at,$at,$a6
    sll	$at,$at,0x2
    addiu	$v1,$v1,20888
    addu	$at,$at,$v1
    lbu	$at,717($at)
    andi	$at,$at,0x1
    beqz	$at,.L0f0ea798
    # Line 1704
    la	$t9,_GLpostEvent
.L0f0ea4fc:
    ld	$gp,64($sp)
.L0f0ea500:
    # Line 1706
    jr	$ra
    addiu	$sp,$sp,112
.L0f0ea508:
    ld	$gp,64($sp)
    # Line 1582
    jr	$ra
    addiu	$sp,$sp,112
.L0f0ea514:
    # Line 1595
    lhu	$a5,6($a0)
.L0f0ea518:
    sd	$ra,72($sp)
    # Line 1594
    lhu	$a4,4($a0)
    sd	$a5,56($sp)
    # Line 1595
    b	.L0f0ea404
    sd	$a4,48($sp)
.L0f0ea52c:
    # Line 1603
    la	$a2,gl_sstatep
.L0f0ea530:
    lw	$a2,0($a2)
    # Line 1604
    addiu	$a1,$sp,110
    la	$t9,sub_0f0f0000
    # Line 1603
    lw	$a2,28($a2)
    # Line 1604
    addiu	$a0,$sp,102
    addiu	$t9,$t9,-23776
    sd	$a2,24($sp)
    bal gl_g_getbutton
    lh	$a2,118($a2)
    beqz	$v0,.L0f0ea58c
    ld	$ra,72($sp)
    lh	$v0,94($sp)
    lh	$a7,102($sp)
    slt	$a4,$v0,$a7
    beqz	$a4,.L0f0ea57c
    # Line 1605
    lh	$t0,110($sp)
    move	$v0,$a7
    sh	$a7,94($sp)
    lh	$t0,110($sp)
.L0f0ea57c:
    slt	$a5,$t0,$v0
    beqz	$a5,.L0f0ea590
    # Line 1606
    la	$at,_GLsetvalDoesConstrain
    sh	$t0,94($sp)
.L0f0ea58c:
    la	$at,_GLsetvalDoesConstrain
.L0f0ea590:
    lw	$at,0($at)
    beqz	$at,.L0f0ea5b4
    ld	$a0,24($sp)
    # Line 1610
    la	$t9,_GLExtConstrainMouse
    lh	$a3,110($sp)
    lh	$a2,102($sp)
    bal _GLExtConstrainMouse
    li	$a1,256
    ld	$ra,72($sp)
.L0f0ea5b4:
    la	$a4,sub_0f030000
    ld	$a5,48($sp)
    # Line 1625
    lh	$v0,94($sp)
    # Line 1610
    addiu	$a4,$a4,20888
    # Line 1625
    sll	$a0,$a5,0x2
    subu	$a0,$a0,$a5
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a4
    lh	$v1,712($a0)
    bne	$v1,$v0,.L0f0ea5f4
    la	$a4,sub_0f030000
    lbu	$at,717($a0)
    andi	$at,$at,0x8
    bnezl	$at,.L0f0ea500
    ld	$gp,64($sp)
    la	$a4,sub_0f030000
.L0f0ea5f4:
    # Line 1627
    ld	$a5,56($sp)
    addiu	$a4,$a4,20888
    sll	$a3,$a5,0x2
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a4
    lh	$a3,712($a3)
    li	$v1,-1
    bne	$a3,$v1,.L0f0ea640
    # Line 1630
    lhu	$a0,86($sp)
    # Line 1627
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    beqz	$a0,.L0f0ea82c
    nop
    # Line 1629
    lw	$a1,224($a0)
    lw	$a1,52($a1)
.L0f0ea634:
    dsll32	$a3,$a1,0x10
    dsra32	$a3,$a3,0x10
    # Line 1630
    lhu	$a0,86($sp)
.L0f0ea640:
    la	$t9,sub_0f0f0000
    move	$a2,$v0
    addiu	$a1,$a0,1
    addiu	$t9,$t9,-24628
    bal gl_g_getbutton
    andi	$a1,$a1,0xffff
    b	.L0f0ea4fc
    ld	$ra,72($sp)
.L0f0ea660:
    # Line 1634
    la	$a2,gl_sstatep
    lw	$a2,0($a2)
    # Line 1635
    addiu	$a1,$sp,110
    la	$t9,sub_0f0f0000
    # Line 1634
    lw	$a2,28($a2)
    # Line 1635
    addiu	$a0,$sp,102
    addiu	$t9,$t9,-23776
    sd	$a2,16($sp)
    bal gl_g_getbutton
    lh	$a2,122($a2)
    beqz	$v0,.L0f0ea6c0
    ld	$ra,72($sp)
    lh	$v0,94($sp)
    lh	$a7,102($sp)
    slt	$a4,$v0,$a7
    beqz	$a4,.L0f0ea6b0
    # Line 1636
    lh	$t0,110($sp)
    move	$v0,$a7
    sh	$a7,94($sp)
    lh	$t0,110($sp)
.L0f0ea6b0:
    slt	$a5,$t0,$v0
    beqz	$a5,.L0f0ea6c4
    # Line 1637
    la	$at,_GLsetvalDoesConstrain
    sh	$t0,94($sp)
.L0f0ea6c0:
    la	$at,_GLsetvalDoesConstrain
.L0f0ea6c4:
    lw	$at,0($at)
    beqz	$at,.L0f0ea6e8
    ld	$a0,16($sp)
    # Line 1641
    la	$t9,_GLExtConstrainMouse
    lh	$a3,110($sp)
    lh	$a2,102($sp)
    bal _GLExtConstrainMouse
    li	$a1,257
    ld	$ra,72($sp)
.L0f0ea6e8:
    la	$a4,sub_0f030000
    ld	$a5,56($sp)
    # Line 1655
    lh	$v0,94($sp)
    # Line 1641
    addiu	$a4,$a4,20888
    # Line 1655
    sll	$a0,$a5,0x2
    subu	$a0,$a0,$a5
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a4
    lh	$v1,712($a0)
    bne	$v1,$v0,.L0f0ea728
    la	$a4,sub_0f030000
    lbu	$at,717($a0)
    andi	$at,$at,0x8
    bnezl	$at,.L0f0ea500
    ld	$gp,64($sp)
    la	$a4,sub_0f030000
.L0f0ea728:
    # Line 1657
    ld	$a5,48($sp)
    addiu	$a4,$a4,20888
    sll	$a2,$a5,0x2
    subu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a4
    lh	$a2,712($a2)
    li	$v1,-1
    bne	$a2,$v1,.L0f0ea774
    # Line 1660
    lhu	$a1,86($sp)
    # Line 1657
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    beqz	$a0,.L0f0ea834
    nop
    # Line 1659
    lw	$a1,224($a0)
    lw	$a1,48($a1)
.L0f0ea768:
    dsll32	$a2,$a1,0x10
    dsra32	$a2,$a2,0x10
    # Line 1660
    lhu	$a1,86($sp)
.L0f0ea774:
    la	$t9,sub_0f0f0000
    move	$a3,$v0
    addiu	$a0,$a1,-1
    addiu	$t9,$t9,-24628
    bal gl_g_getbutton
    andi	$a0,$a0,0xffff
    b	.L0f0ea4fc
    ld	$ra,72($sp)
.L0f0ea794:
    # Line 1704
    la	$t9,_GLpostEvent
.L0f0ea798:
    move	$a0,$a6
    li	$a2,1
    bal _GLpostEvent
    lh	$a1,94($sp)
    b	.L0f0ea4fc
    ld	$ra,72($sp)
.L0f0ea7b0:
    # Line 1684
    la	$t9,_GLinitgl
    jalr	$t9
    nop
    # Line 1685
    la	$t9,sub_0f0f0000
    li	$a1,2
    addiu	$t9,$t9,-30156
    bal _GLSelectInput
    lhu	$a0,86($sp)
    la	$a4,sub_0f030000
    # Line 1686
    lhu	$a5,86($sp)
    # Line 1685
    addiu	$a4,$a4,20888
    # Line 1686
    sll	$v1,$a5,0x2
    subu	$v1,$v1,$a5
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a4
    lbu	$at,717($v1)
    ori	$at,$at,0x8
    # Line 1687
    beqz	$v0,.L0f0ea814
    # Line 1686
    sb	$at,717($v1)
    # Line 1687
    la	$at,_GLpointerWindow
    lw	$at,0($at)
    beqz	$at,.L0f0ea814
    lw	$v1,4($sp)
    bnez	$v1,.L0f0ea480
    # Line 1692
    lh	$a4,110($sp)
.L0f0ea814:
    # Line 1689
    la	$t9,_GLExtQueryDevice
    ld	$a0,40($sp)
    bal _GLExtQueryDevice
    lw	$a1,8($sp)
    b	.L0f0ea480
    # Line 1692
    lh	$a4,110($sp)
.L0f0ea82c:
    b	.L0f0ea634
    # Line 1629
    move	$a1,$zero
.L0f0ea834:
    b	.L0f0ea768
    # Line 1659
    move	$a1,$zero
.end gl_g_setvaluator

# Function: gl_g_qtest
# Declared: Line 1709 (Source lines: 1710-1719)
# Address: 0x0f0ea83c - 0x0f0ea8fc (Size: 192 bytes, Frame: 16)
.globl gl_g_qtest
.ent gl_g_qtest
gl_g_qtest:
    # Line 1710
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,-30196 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,_GLdirtycmaps
    lw	$at,0($at)
    beqz	$at,.L0f0ea870
    # Line 1712
    la	$t9,_GLflushcmaps
    sd	$ra,8($sp)
    bal _GLflushcmaps
    nop
    ld	$ra,8($sp)
.L0f0ea870:
    lw	$a2,-20676($gp)
    lw	$v1,-20672($gp)
    beq	$v1,$a2,.L0f0ea89c
    # Line 1714
    sll	$v0,$a2,0x2
    la	$v1,sub_0f030000
    ld	$gp,0($sp)
    addiu	$v1,$v1,20888
    addu	$v0,$v0,$v1
    lhu	$v0,7912($v0)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0ea89c:
    # Line 1715
    la	$t9,_GLinitgl
    sd	$ra,8($sp)
    jalr	$t9
    nop
    # Line 1716
    la	$t9,gl_fast_qcheck
    li	$a1,1
    jalr	$t9
    li	$a0,1
    # Line 1718
    la	$v1,sub_0f030000
    # Line 1716
    lw	$a2,-20676($gp)
    lw	$a0,-20672($gp)
    ld	$gp,0($sp)
    ld	$ra,8($sp)
    beq	$a0,$a2,.L0f0ea8ec
    # Line 1718
    sll	$v0,$a2,0x2
    addiu	$v1,$v1,20888
    addu	$v0,$v0,$v1
    lhu	$v0,7912($v0)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0ea8ec:
    # Line 1719
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_qtest

# Function: gl_g_qread
# Declared: Line 1722 (Source lines: 1723-1742)
# Address: 0x0f0ea8fc - 0x0f0ea994 (Size: 152 bytes, Frame: 48)
.globl gl_g_qread
.ent gl_g_qread
gl_g_qread:
    # Line 1723
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,-30388 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$a3,-20676($gp)
    lw	$at,-20672($gp)
    sd	$s8,0($sp)
    bne	$at,$a3,.L0f0ea950
    move	$s8,$a0
    sd	$ra,16($sp)
    # Line 1730
    la	$t9,_GLupdateQueue
.L0f0ea92c:
    li	$a1,1
    li	$a0,1
    jalr	$t9
    # Line 1729
    sw	$zero,-20648($gp)
    # Line 1730
    lw	$a3,-20676($gp)
    lw	$v1,-20672($gp)
    beq	$v1,$a3,.L0f0ea92c
    la	$t9,_GLupdateQueue
    ld	$ra,16($sp)
.L0f0ea950:
    # Line 1734
    li	$v1,600
    addiu	$a1,$a3,1
    div	$zero,$a1,$v1
    # Line 1732
    la	$a0,sub_0f030000
    sll	$v0,$a3,0x2
    addiu	$a0,$a0,20888
    addu	$v0,$v0,$a0
    # Line 1733
    lh	$a1,7914($v0)
    # Line 1734
    teq	$v1,$zero,0x7
    # Line 1732
    lhu	$v0,7912($v0)
    # Line 1733
    sh	$a1,0($s8)
    # Line 1742
    ld	$s8,0($sp)
    # Line 1734
    mfhi	$a0
    sw	$a0,-20676($gp)
    ld	$gp,8($sp)
    # Line 1742
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_qread

# Function: gl_g_blkqread
# Declared: Line 1745 (Source lines: 1746-1758)
# Address: 0x0f0ea994 - 0x0f0eaa34 (Size: 160 bytes, Frame: 192)
.globl gl_g_blkqread
.ent gl_g_blkqread
gl_g_blkqread:
    # Line 1746
    addiu	$sp,$sp,-64
    sd	$s5,32($sp)
    sd	$s0,24($sp)
    # Line 1750
    move	$s0,$zero
    sd	$s1,8($sp)
    # Line 1746
    move	$s1,$a0
    sd	$gp,16($sp)
    lui	$at,0xfff5
    addiu	$at,$at,-30540
    sd	$s4,0($sp)
    # Line 1750
    sra	$s4,$a1,0x1
    blez	$s4,.L0f0eaa18
    # Line 1746
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$ra,40($sp)
    # Line 1750
    addiu	$s5,$s1,2
    # Line 1751
    la	$t9,__GLqread
.L0f0ea9d4:
    jalr	$t9
    move	$a0,$s5
    # Line 1753
    la	$t9,qtest
    # Line 1752
    addiu	$s1,$s1,4
    addiu	$s5,$s5,4
    # Line 1753
    jalr	$t9
    # Line 1751
    sh	$v0,-4($s1)
    # Line 1753
    beqzl	$v0,.L0f0eaa10
    # Line 1754
    addiu	$s0,$s0,1
    # Line 1750
    addiu	$s0,$s0,1
    bne	$s4,$s0,.L0f0ea9d4
    # Line 1751
    la	$t9,__GLqread
    ld	$s5,32($sp)
    b	.L0f0eaa18
    ld	$ra,40($sp)
.L0f0eaa10:
    ld	$s5,32($sp)
    ld	$ra,40($sp)
.L0f0eaa18:
    ld	$gp,16($sp)
    # Line 1758
    sll	$v0,$s0,0x1
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    ld	$s4,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_blkqread

# Function: gl_g_tie
# Declared: Line 1761 (Source lines: 1762-1773)
# Address: 0x0f0eaa34 - 0x0f0eaae4 (Size: 176 bytes, Frame: 192)
.globl gl_g_tie
.ent gl_g_tie
gl_g_tie:
    # Line 1762
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    move	$s0,$a2
    # Line 1763
    sll	$a4,$a0,0x2
    sd	$gp,8($sp)
    # Line 1762
    lui	$a5,0xfff5
    addiu	$a5,$a5,-30700
    addu	$gp,$t9,$a5
    # Line 1763
    la	$a5,sub_0f030000
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addiu	$a5,$a5,20888
    addu	$a4,$a4,$a5
    # Line 1762
    move	$a5,$a1
    # Line 1764
    sh	$a2,722($a4)
    bnez	$a1,.L0f0eaa7c
    # Line 1763
    sh	$a1,720($a4)
    # Line 1764
    beqz	$s0,.L0f0eaad0
.L0f0eaa7c:
    # Line 1769
    li	$a1,2
    move	$a0,$a5
    # Line 1768
    lbu	$a6,717($a4)
    # Line 1766
    la	$t9,sub_0f0f0000
    sd	$ra,16($sp)
    # Line 1768
    ori	$a6,$a6,0x4
    # Line 1766
    addiu	$t9,$t9,-30156
    # Line 1769
    bal _GLSelectInput
    # Line 1768
    sb	$a6,717($a4)
    # Line 1769
    beqz	$s0,.L0f0eaac0
    ld	$ra,16($sp)
    la	$t9,sub_0f0f0000
    # Line 1771
    move	$a0,$s0
    addiu	$t9,$t9,-30156
    bal _GLSelectInput
    li	$a1,2
    ld	$ra,16($sp)
.L0f0eaac0:
    ld	$gp,8($sp)
    # Line 1773
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0eaad0:
    # Line 1766
    li	$v0,-5
    lbu	$at,717($a4)
    and	$at,$at,$v0
    b	.L0f0eaac0
    sb	$at,717($a4)
.end gl_g_tie

# Function: gl_g_qgetfd
# Declared: Line 1775 (Source lines: 1776-1779)
# Address: 0x0f0eaae4 - 0x0f0eab38 (Size: 84 bytes, Frame: 16)
.globl gl_g_qgetfd
.ent gl_g_qgetfd
gl_g_qgetfd:
    # Line 1776
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-30876 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1777
    la	$t9,_GLinitgl
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 1779
    la	$v0,gl_sstatep
    # Line 1778
    la	$a0,_GLqgetfd_was_called
    li	$v1,1
    # Line 1779
    lw	$v0,0($v0)
    # Line 1778
    sw	$v1,0($a0)
    # Line 1779
    lw	$v0,28($v0)
    lw	$v0,4($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,8($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_qgetfd

# Function: _GLwinquit
# Declared: Line 1782 (Source lines: 1783-1788)
# Address: 0x0f0eab38 - 0x0f0eaba0 (Size: 104 bytes, Frame: 32)
.globl _GLwinquit
.ent _GLwinquit
_GLwinquit:
    # Line 1783
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,-30960 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,sub_0f030000
    lbu	$at,28109($at)
    move	$a4,$a0
    andi	$at,$at,0x1
    beqz	$at,.L0f0eab8c
    sd	$ra,8($sp)
    # Line 1785
    move	$a2,$zero
    la	$t9,_GLpostEvent
    li	$a0,542
    dsll32	$a1,$a4,0x10
    bal _GLpostEvent
    dsra32	$a1,$a1,0x10
    ld	$ra,8($sp)
.L0f0eab80:
    ld	$gp,0($sp)
    # Line 1788
    jr	$ra
    addiu	$sp,$sp,32
.L0f0eab8c:
    # Line 1787
    la	$t9,exit
    jalr	$t9
    move	$a0,$zero
    b	.L0f0eab80
    ld	$ra,8($sp)
.end _GLwinquit

# Function: _GLwinshut
# Declared: Line 1793 (Source lines: 1794-1799)
# Address: 0x0f0eaba0 - 0x0f0eac14 (Size: 116 bytes, Frame: 48)
.globl _GLwinshut
.ent _GLwinshut
_GLwinshut:
    # Line 1794
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-31064 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1795
    la	$t9,_GLmex_countwins
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal _GLmex_countwins
    # Line 1794
    move	$s8,$a0
    # Line 1795
    li	$v1,1
    beq	$v0,$v1,.L0f0eabfc
    # Line 1798
    move	$a2,$zero
    la	$t9,_GLpostEvent
    li	$a0,546
    dsll32	$a1,$s8,0x10
    bal _GLpostEvent
    dsra32	$a1,$a1,0x10
    ld	$s8,8($sp)
    ld	$ra,0($sp)
.L0f0eabf0:
    ld	$gp,16($sp)
    # Line 1799
    jr	$ra
    addiu	$sp,$sp,48
.L0f0eabfc:
    # Line 1796
    la	$t9,_GLwinquit
    bal _GLwinquit
    move	$a0,$s8
    ld	$s8,8($sp)
    b	.L0f0eabf0
    ld	$ra,0($sp)
.end _GLwinshut

# Function: gl_g_isqueued
# Declared: Line 1801 (Source lines: 1802-1811)
# Address: 0x0f0eac14 - 0x0f0eac6c (Size: 88 bytes, Frame: 0)
.globl gl_g_isqueued
.ent gl_g_isqueued
gl_g_isqueued:
    # Line 1802
    slti	$v0,$a0,600
    lui	$v1,0xfff5
    addiu	$v1,$v1,-31180
    beqz	$v0,.L0f0eac58
    addu	$at,$t9,$v1
    li	$a1,538
    beq	$a0,$a1,.L0f0eac60
    # Line 1808
    lw	$v1,-32676($at)
    addiu	$v1,$v1,20888
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    lbu	$v0,717($v0)
    andi	$v0,$v0,0x1
    jr	$ra
    sltu	$v0,$zero,$v0
.L0f0eac58:
    # Line 1811
    jr	$ra
    move	$v0,$zero
.L0f0eac60:
    # Line 1806
    li	$v0,1
    jr	$ra
    nop
.end gl_g_isqueued

# Function: gl_g_qcontrol
# Declared: Line 1820 (Source lines: 1822-1936)
# Address: 0x0f0eac6c - 0x0f0eb118 (Size: 1196 bytes, Frame: 208)
.globl gl_g_qcontrol
.ent gl_g_qcontrol
gl_g_qcontrol:
    # Line 1822
    addiu	$sp,$sp,-208
    sd	$a0,112($sp)
    sd	$a1,104($sp)
    sd	$s0,136($sp)
    move	$s0,$a2
    sd	$s1,128($sp)
    move	$s1,$a3
    sd	$gp,120($sp)
    lui	$at,0xfff5
    addiu	$at,$at,-31268
    beqz	$a1,.L0f0eaca4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 1829
    beqz	$s0,.L0f0ead08
    # Line 1830
    li	$v0,-22
.L0f0eaca4:
    # Line 1829
    beqz	$s1,.L0f0eacb8
    # Line 1833
    la	$t9,_GLinitgl
    # Line 1829
    beqz	$a4,.L0f0ead04
    sd	$a4,96($sp)
    # Line 1833
    la	$t9,_GLinitgl
.L0f0eacb8:
    sd	$ra,144($sp)
    jalr	$t9
    sd	$a4,96($sp)
    ld	$ra,144($sp)
    # Line 1834
    # la	a6,sub_0f020000
    ld	$a2,112($sp)
    la	$a0,gl_sstatep
    la	$a6,jtbl_0f023de0
    addiu	$a3,$a2,-21
    lw	$a0,0($a0)
    sltiu	$v0,$a3,29
    sll	$a3,$a3,0x2
    lw	$a0,28($a0)
    addu	$a3,$a3,$a6
    beqz	$v0,.L0f0ead70
    lw	$a0,4($a0)
    lw	$a6,0($a3)
    jr	$a6
    # Line 1883
    li	$v0,31
.L0f0ead04:
    # Line 1830
    li	$v0,-22
.L0f0ead08:
    ld	$gp,120($sp)
    ld	$s0,136($sp)
    ld	$s1,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0ead1c:
    ld	$at,104($sp)
    # Line 1919
    slti	$at,$at,2
    bnez	$at,.L0f0eb014
    # Line 1920
    li	$v0,-22
    lh	$a1,0($s0)
    beqzl	$a1,.L0f0eb0bc
    lh	$at,2($s0)
    sd	$a0,88($sp)
.L0f0ead3c:
    # Line 1925
    sw	$a1,80($sp)
    move	$a5,$a1
    # Line 1926
    lh	$a7,2($s0)
    # Line 1927
    li	$a4,16
    sw	$a4,76($sp)
    # Line 1926
    sw	$a7,72($sp)
.L0f0ead54:
    ld	$a0,88($sp)
    # Line 1929
    la	$t9,_GLExtChangeDialFeedback
    move	$a1,$a7
    move	$a2,$a4
    bal _GLExtChangeDialFeedback
    move	$a3,$a5
    ld	$a0,88($sp)
.L0f0ead70:
    # Line 1935
    la	$t9,XFlush
    jalr	$t9
    nop
    ld	$ra,144($sp)
    ld	$gp,120($sp)
    # Line 1936
    ld	$s1,128($sp)
    move	$v0,$zero
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0ead98:
    # Line 1839
    slti	$v0,$s1,2
    beqz	$v0,.L0f0eaf68
    sd	$a0,88($sp)
    # Line 1840
    li	$v0,-22
    ld	$gp,120($sp)
    ld	$s0,136($sp)
    ld	$s1,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0eadbc:
    ld	$v1,104($sp)
    # Line 1867
    slti	$v1,$v1,2
    bnez	$v1,.L0f0eafec
    # Line 1868
    li	$v0,-22
    lh	$a6,0($s0)
    bnez	$a6,.L0f0eade8
    # Line 1873
    la	$t9,XAutoRepeatOn
    # Line 1868
    lh	$at,2($s0)
    beqz	$at,.L0f0eb104
    sd	$a0,88($sp)
    # Line 1873
    la	$t9,XAutoRepeatOn
.L0f0eade8:
    jalr	$t9
    sd	$a0,88($sp)
    # Line 1874
    la	$t9,XSGIMiscQueryExtension
    ld	$a0,88($sp)
    addiu	$a2,$sp,68
    jalr	$t9
    addiu	$a1,$sp,68
    beqz	$v0,.L0f0eb07c
    ld	$ra,144($sp)
    # Line 1875
    la	$t9,XSGIMiscSetAutoRepeatRate
    ld	$a0,88($sp)
    lh	$a2,2($s0)
    jalr	$t9
    lh	$a1,0($s0)
    b	.L0f0ead70
    ld	$a0,88($sp)
.L0f0eae28:
    # Line 1883
    beq	$a2,$v0,.L0f0eaecc
    # Line 1887
    slti	$v1,$s1,2
.L0f0eae30:
    beqz	$v1,.L0f0eaf10
    sd	$a0,88($sp)
    # Line 1889
    li	$v0,-22
    ld	$gp,120($sp)
    ld	$s0,136($sp)
    ld	$s1,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0eae50:
    ld	$a6,104($sp)
    # Line 1896
    slti	$a6,$a6,2
    bnez	$a6,.L0f0eb000
    # Line 1897
    li	$v0,-22
    lh	$a1,0($s0)
    beqzl	$a1,.L0f0eb094
    lh	$a6,2($s0)
    sd	$a0,88($sp)
.L0f0eae70:
    # Line 1902
    sw	$a1,80($sp)
    move	$a5,$a1
    # Line 1903
    lh	$a7,2($s0)
    # Line 1904
    li	$a4,16
    sw	$a4,76($sp)
    # Line 1903
    sw	$a7,72($sp)
.L0f0eae88:
    ld	$a0,88($sp)
    # Line 1906
    la	$t9,XChangePointerControl
    move	$a3,$a7
    li	$a2,1
    jalr	$t9
    li	$a1,1
    b	.L0f0ead70
    ld	$a0,88($sp)
.L0f0eaea8:
    # Line 1911
    slti	$at,$s1,2
    beqz	$at,.L0f0eaf94
    sd	$a0,88($sp)
    # Line 1912
    li	$v0,-22
    ld	$gp,120($sp)
    ld	$s0,136($sp)
    ld	$s1,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0eaecc:
    # Line 1883
    bnez	$s1,.L0f0eae30
    # Line 1887
    slti	$v1,$s1,2
    ld	$v0,104($sp)
    # Line 1883
    slti	$v0,$v0,2
    bnez	$v0,.L0f0eae30
    # Line 1887
    slti	$v1,$s1,2
    # Line 1883
    beqz	$s0,.L0f0eae30
    # Line 1887
    slti	$v1,$s1,2
    ld	$a4,96($sp)
    addu	$a3,$s1,$s1
    move	$a2,$s0
    sd	$a0,88($sp)
    la	$t9,qcontrol
    ld	$a1,104($sp)
    li	$a0,32
    jalr	$t9
    addu	$a1,$a1,$a1
.L0f0eaf10:
    ld	$a0,88($sp)
    # Line 1890
    la	$t9,XGetPointerControl
    addiu	$a3,$sp,80
    addiu	$a2,$sp,76
    jalr	$t9
    addiu	$a1,$sp,72
    ld	$a0,88($sp)
    # Line 1891
    ld	$a6,96($sp)
    lw	$a4,80($sp)
    sh	$a4,0($a6)
    lw	$a4,76($sp)
    beqz	$a4,.L0f0eb0f4
    # Line 1892
    lw	$at,72($sp)
    sll	$at,$at,0x4
    div	$zero,$at,$a4
    teq	$a4,$zero,0x7
    mflo	$a1
    nop
    nop
.L0f0eaf5c:
    ld	$v0,96($sp)
    # Line 1893
    b	.L0f0ead70
    # Line 1892
    sh	$a1,2($v0)
.L0f0eaf68:
    # Line 1841
    la	$t9,XGetKeyboardControl
    ld	$a0,88($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    lw	$v1,20($sp)
    bnez	$v1,.L0f0eb028
    ld	$a0,88($sp)
    ld	$a6,96($sp)
    # Line 1845
    sh	$zero,2($a6)
    b	.L0f0ead70
    # Line 1844
    sh	$zero,0($a6)
.L0f0eaf94:
    ld	$a0,88($sp)
    # Line 1913
    la	$t9,_GLExtGetDialFeedback
    addiu	$a3,$sp,80
    addiu	$a2,$sp,76
    bal _GLExtGetDialFeedback
    addiu	$a1,$sp,72
    # Line 1914
    ld	$v0,96($sp)
    lw	$at,80($sp)
    sh	$at,0($v0)
    lw	$a4,76($sp)
    beqz	$a4,.L0f0eb0fc
    ld	$a0,88($sp)
    # Line 1915
    lw	$v1,72($sp)
    sll	$v1,$v1,0x4
    div	$zero,$v1,$a4
    teq	$a4,$zero,0x7
    mflo	$a1
    nop
    nop
.L0f0eafe0:
    ld	$a6,96($sp)
    # Line 1916
    b	.L0f0ead70
    # Line 1915
    sh	$a1,2($a6)
.L0f0eafec:
    ld	$gp,120($sp)
    # Line 1868
    ld	$s0,136($sp)
    ld	$s1,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0eb000:
    ld	$gp,120($sp)
    # Line 1897
    ld	$s0,136($sp)
    ld	$s1,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0eb014:
    ld	$gp,120($sp)
    # Line 1920
    ld	$s0,136($sp)
    ld	$s1,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0eb028:
    # Line 1849
    la	$t9,XSGIMiscQueryExtension
    ld	$a0,88($sp)
    addiu	$a2,$sp,56
    jalr	$t9
    addiu	$a1,$sp,56
    beqz	$v0,.L0f0eb0e4
    ld	$a0,88($sp)
    # Line 1853
    addiu	$a2,$sp,64
    addiu	$a1,$sp,60
    la	$t9,XSGIMiscGetAutoRepeatRate
    ld	$a0,88($sp)
    # Line 1852
    sw	$zero,64($sp)
    # Line 1853
    jalr	$t9
    # Line 1852
    sw	$zero,60($sp)
    # Line 1855
    ld	$v0,96($sp)
    lw	$v1,60($sp)
    sh	$v1,0($v0)
    # Line 1856
    lw	$at,64($sp)
    ld	$a0,88($sp)
    b	.L0f0ead70
    sh	$at,2($v0)
.L0f0eb07c:
    # Line 1877
    li	$v0,-22
    ld	$gp,120($sp)
    ld	$s0,136($sp)
    ld	$s1,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0eb094:
    # Line 1897
    bnezl	$a6,.L0f0eae70
    sd	$a0,88($sp)
    sd	$a0,88($sp)
    # Line 1900
    li	$a4,-1
    li	$a7,-1
    li	$a5,-1
    sw	$a5,80($sp)
    sw	$a7,72($sp)
    b	.L0f0eae88
    sw	$a4,76($sp)
.L0f0eb0bc:
    # Line 1920
    bnezl	$at,.L0f0ead3c
    sd	$a0,88($sp)
    sd	$a0,88($sp)
    # Line 1923
    li	$a4,-1
    li	$a7,-1
    li	$a5,-1
    sw	$a5,80($sp)
    sw	$a7,72($sp)
    b	.L0f0ead54
    sw	$a4,76($sp)
.L0f0eb0e4:
    ld	$v0,96($sp)
    # Line 1860
    sh	$zero,2($v0)
    b	.L0f0ead70
    # Line 1859
    sh	$zero,0($v0)
.L0f0eb0f4:
    b	.L0f0eaf5c
    # Line 1892
    move	$a1,$zero
.L0f0eb0fc:
    b	.L0f0eafe0
    # Line 1915
    move	$a1,$zero
.L0f0eb104:
    # Line 1870
    la	$t9,XAutoRepeatOff
    jalr	$t9
    ld	$a0,88($sp)
    b	.L0f0ead70
    ld	$a0,88($sp)
.end gl_g_qcontrol

# Function: _GLqread_hack
# Declared: Line 1939 (Source lines: 1940-1943)
# Address: 0x0f0eb118 - 0x0f0eb164 (Size: 76 bytes, Frame: 16)
.globl _GLqread_hack
.ent _GLqread_hack
_GLqread_hack:
    # Line 1940
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v1,0xfff5 (gp disp hi)
    # addiu	v1,v1,-32464 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    lw	$v0,-20672($gp)
    lw	$at,-20676($gp)
    beq	$at,$v0,.L0f0eb148
    # Line 1942
    la	$t9,sub_0f0e0000
.L0f0eb13c:
    ld	$gp,0($sp)
    # Line 1943
    jr	$ra
    addiu	$sp,$sp,16
.L0f0eb148:
    # Line 1942
    move	$a0,$zero
    sd	$ra,8($sp)
    addiu	$t9,$t9,29764
    bal _GLisInterested
    move	$a1,$zero
    b	.L0f0eb13c
    ld	$ra,8($sp)
.end _GLqread_hack

# Function: gl_g_qreset
# Declared: Line 1945 (Source lines: 1946-1952)
# Address: 0x0f0eb164 - 0x0f0eb1ec (Size: 136 bytes, Frame: 16)
.globl gl_g_qreset
.ent gl_g_qreset
gl_g_qreset:
    # Line 1946
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-32540 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 1948
    la	$t9,_GLupdateQueue
    move	$a1,$zero
    sd	$ra,0($sp)
    jalr	$t9
    move	$a0,$zero
    # Line 1949
    li	$a3,-9
    ld	$ra,0($sp)
    la	$a1,sub_0f030000
    sw	$zero,-20676($gp)
    sw	$zero,-20672($gp)
    addiu	$a1,$a1,20888
    addiu	$a2,$a1,7200
.L0f0eb1a8:
    # Line 1951
    lbu	$a0,753($a1)
    # Line 1950
    addiu	$a1,$a1,48
    # Line 1951
    lbu	$v1,693($a1)
    and	$a0,$a0,$a3
    sb	$a0,705($a1)
    and	$v1,$v1,$a3
    lbu	$v0,681($a1)
    sb	$v1,693($a1)
    lbu	$at,669($a1)
    and	$v0,$v0,$a3
    sb	$v0,681($a1)
    and	$at,$at,$a3
    # Line 1950
    bne	$a1,$a2,.L0f0eb1a8
    # Line 1951
    sb	$at,669($a1)
    ld	$gp,8($sp)
    # Line 1952
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_qreset

# Function: gl_g_noise
# Declared: Line 1954 (Source lines: 1955-1965)
# Address: 0x0f0eb1ec - 0x0f0eb2c0 (Size: 212 bytes, Frame: 32)
.globl gl_g_noise
.ent gl_g_noise
gl_g_noise:
    # Line 1956
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    # Line 1955
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a2,0xfff5
    addiu	$a2,$a2,-32676
    addu	$gp,$t9,$a2
    la	$a4,sub_0f030000
    # Line 1956
    sll	$v1,$v1,0x2
    lw	$a3,-20668($gp)
    # Line 1955
    addiu	$a4,$a4,20888
    # Line 1956
    addu	$v1,$v1,$a4
    sh	$a1,718($v1)
    lw	$at,20($a3)
    li	$v0,1
    beq	$at,$v0,.L0f0eb250
    li	$a2,4
.L0f0eb230:
    # Line 1960
    slti	$at,$a0,515
.L0f0eb234:
    bnez	$at,.L0f0eb244
    slti	$v0,$a0,519
    bnez	$v0,.L0f0eb28c
    # Line 1964
    la	$t9,_GLSetTimer
.L0f0eb244:
    ld	$gp,0($sp)
    # Line 1965
    jr	$ra
    addiu	$sp,$sp,32
.L0f0eb250:
    # Line 1956
    lw	$v1,0($a3)
    bne	$v1,$a2,.L0f0eb230
    # Line 1957
    li	$at,272
    beq	$a0,$at,.L0f0eb2a0
.L0f0eb260:
    # Line 1959
    li	$v0,273
    bne	$a0,$v0,.L0f0eb234
    # Line 1960
    slti	$at,$a0,515
    # Line 1961
    lhu	$at,6($a3)
    sll	$a2,$at,0x2
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    lh	$v1,3994($a4)
    addu	$a2,$a2,$a4
    b	.L0f0eb230
    sh	$v1,718($a2)
.L0f0eb28c:
    sd	$ra,8($sp)
    # Line 1964
    jalr	$t9
    nop
    b	.L0f0eb244
    ld	$ra,8($sp)
.L0f0eb2a0:
    # Line 1959
    lhu	$a2,4($a3)
    sll	$v1,$a2,0x2
    subu	$v1,$v1,$a2
    sll	$v1,$v1,0x2
    lh	$v0,3982($a4)
    addu	$v1,$v1,$a4
    b	.L0f0eb260
    sh	$v0,718($v1)
.end gl_g_noise

# Function: gl_findEndOfQueue
# Declared: Line 1967 (Source lines: 1968-1969)
# Address: 0x0f0eb2c0 - 0x0f0eb2d4 (Size: 20 bytes, Frame: 0)
.globl gl_findEndOfQueue
.ent gl_findEndOfQueue
gl_findEndOfQueue:
    # Line 1968
    lui	$v0,0xfff4
    addiu	$v0,$v0,32648
    addu	$at,$t9,$v0
    # Line 1969
    jr	$ra
    lw	$v0,-20672($at)
.end gl_findEndOfQueue

# Function: gl_rightmouseinqueue
# Declared: Line 1972 (Source lines: 1973-1979)
# Address: 0x0f0eb2d4 - 0x0f0eb340 (Size: 108 bytes, Frame: 0)
.globl gl_rightmouseinqueue
.ent gl_rightmouseinqueue
gl_rightmouseinqueue:
    # Line 1973
    lui	$v0,0xfff4
    addiu	$v0,$v0,32628
    addu	$at,$t9,$v0
    # Line 1976
    lw	$a5,-20672($at)
    li	$a6,101
    li	$a7,600
    beq	$a0,$a5,.L0f0eb338
    lw	$a3,-32676($at)
    b	.L0f0eb310
    addiu	$a3,$a3,20888
    addiu	$v0,$a0,1
.L0f0eb300:
    div	$zero,$v0,$a7
    mfhi	$a0
    beq	$a0,$a5,.L0f0eb338
    teq	$a7,$zero,0x7
.L0f0eb310:
    sll	$a4,$a0,0x2
    addu	$a4,$a4,$a3
    lhu	$v1,7912($a4)
    bne	$v1,$a6,.L0f0eb300
    addiu	$v0,$a0,1
    lh	$v0,7914($a4)
    bnez	$v0,.L0f0eb300
    addiu	$v0,$a0,1
    # Line 1978
    jr	$ra
    li	$v0,1
.L0f0eb338:
    # Line 1979
    jr	$ra
    move	$v0,$zero
.end gl_rightmouseinqueue

# Function: _GLKeycodeToDevice
# Declared: Line 1982 (Source lines: 1983-1984)
# Address: 0x0f0eb340 - 0x0f0eb364 (Size: 36 bytes, Frame: 0)
.globl _GLKeycodeToDevice
.ent _GLKeycodeToDevice
_GLKeycodeToDevice:
    # Line 1983
    lui	$a1,0xfff4
    addiu	$a1,$a1,32520
    addu	$at,$t9,$a1
    # Line 1984
    lw	$v1,-32676($at)
    addu	$v0,$a0,$a0
    addiu	$v1,$v1,20888
    addu	$v0,$v0,$v1
    jr	$ra
    lhu	$v0,16($v0)
.end _GLKeycodeToDevice

# Function: _GLSetButtonState
# Declared: Line 1987 (Source lines: 1988-2007)
# Address: 0x0f0eb364 - 0x0f0eb458 (Size: 244 bytes, Frame: 0)
.globl _GLSetButtonState
.ent _GLSetButtonState
_GLSetButtonState:
    # Line 1988
    lui	$v0,0xfff4
    addiu	$v0,$v0,32484
    addu	$at,$t9,$v0
    # Line 1990
    lw	$t1,-32368($at)
    lw	$v0,-32448($at)
    lw	$t1,0($t1)
    # Line 1991
    li	$t3,166
    # Line 1990
    lw	$v0,0($v0)
    lw	$t1,28($t1)
    # Line 1991
    lw	$v1,-32444($at)
    # Line 1990
    beqz	$v0,.L0f0eb448
    lw	$t1,4($t1)
.L0f0eb394:
    # Line 1991
    lw	$v1,0($v1)
    beqz	$v1,.L0f0eb450
    # Line 1992
    li	$a4,4
.L0f0eb3a0:
    # Line 1994
    lw	$t2,-32676($at)
    move	$a7,$a4
    lw	$a5,152($t1)
    lw	$a6,156($t1)
    dsll32	$t0,$t3,0x10
    slt	$a1,$a6,$a5
    bnez	$a1,.L0f0eb440
    li	$t8,1
    dsra32	$t0,$t0,0x10
    addiu	$t2,$t2,20888
    addu	$a3,$a5,$a5
    b	.L0f0eb3e4
    addu	$a3,$a3,$t2
.L0f0eb3d4:
    addiu	$a5,$a5,1
.L0f0eb3d8:
    slt	$v0,$a6,$a5
    bnez	$v0,.L0f0eb440
    nop
.L0f0eb3e4:
    # Line 1995
    lhu	$a4,16($a3)
    beqz	$a4,.L0f0eb3d4
    # Line 1994
    addiu	$a3,$a3,2
    # Line 1995
    beq	$a7,$a4,.L0f0eb3d4
    # Line 2003
    sll	$a1,$a4,0x2
    # Line 2000
    beql	$t0,$a4,.L0f0eb3d8
    # Line 1994
    addiu	$a5,$a5,1
    # Line 2003
    subu	$a1,$a1,$a4
    andi	$a6,$a5,0x7
    sllv	$a6,$t8,$a6
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$t2
    # Line 2004
    lbu	$v1,717($a1)
    # Line 2003
    sra	$a2,$a5,0x3
    addu	$a2,$a2,$a0
    lbu	$a2,20($a2)
    # Line 2004
    ori	$v1,$v1,0x8
    sb	$v1,717($a1)
    # Line 2003
    and	$a2,$a2,$a6
    sltu	$a2,$zero,$a2
    sh	$a2,712($a1)
    b	.L0f0eb3d4
    # Line 2004
    lw	$a6,156($t1)
.L0f0eb440:
    # Line 2007
    jr	$ra
    nop
.L0f0eb448:
    b	.L0f0eb394
    # Line 1991
    move	$t3,$zero
.L0f0eb450:
    b	.L0f0eb3a0
    # Line 1992
    move	$a4,$zero
.end _GLSetButtonState

# Function: _GLBuildKeycodeToDeviceTable
# Declared: Line 2009 (Source lines: 2010-2033)
# Address: 0x0f0eb458 - 0x0f0eb604 (Size: 428 bytes, Frame: 208)
.ent _GLBuildKeycodeToDeviceTable
_GLBuildKeycodeToDeviceTable:
    # Line 2014
    li	$a1,512
    # Line 2010
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    sd	$s1,24($sp)
    sd	$s2,72($sp)
    sd	$s5,16($sp)
    sd	$s6,56($sp)
    sd	$s7,8($sp)
    sd	$s8,0($sp)
    sd	$ra,48($sp)
    sd	$s4,40($sp)
    # Line 2012
    la	$s4,gl_sstatep
    sd	$s3,64($sp)
    # Line 2010
    la	$s3,sub_0f030000
    # Line 2012
    lw	$s4,0($s4)
    # Line 2014
    la	$t9,bzero
    # Line 2010
    addiu	$s3,$s3,20888
    # Line 2012
    lw	$s4,28($s4)
    # Line 2014
    addiu	$a0,$s3,16
    jalr	$t9
    # Line 2012
    lw	$s4,4($s4)
    # Line 2015
    la	$t9,bzero
    li	$a1,170
    jalr	$t9
    addiu	$a0,$s3,528
    # Line 2018
    lw	$s0,152($s4)
    # Line 2017
    lw	$v0,156($s4)
    # Line 2018
    lui	$s7,0x1
    la	$s8,keysymToDevice1
    slt	$at,$v0,$s0
    addu	$s2,$s0,$s0
    bnez	$at,.L0f0eb5d4
    addiu	$s6,$v0,1
    addu	$s2,$s2,$s3
    li	$s5,0xff00
    b	.L0f0eb510
    # Line 2019
    move	$s1,$zero
.L0f0eb4ec:
    # Line 2026
    move	$a0,$zero
.L0f0eb4f0:
    beqz	$a0,.L0f0eb500
    # Line 2029
    addu	$at,$a0,$s3
    # Line 2028
    sh	$a0,16($s2)
    # Line 2029
    sb	$s0,528($at)
.L0f0eb500:
    # Line 2018
    addiu	$s0,$s0,1
    beq	$s6,$s0,.L0f0eb5d4
    addiu	$s2,$s2,2
    # Line 2019
    move	$s1,$zero
.L0f0eb510:
    # Line 2020
    la	$t9,XKeycodeToKeysym
    move	$a0,$s4
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    sltiu	$v1,$v0,256
    beqz	$v1,.L0f0eb578
    # Line 2022
    addu	$a0,$v0,$v0
    addu	$a0,$a0,$s8
    lhu	$a0,0($a0)
.L0f0eb538:
    # Line 2026
    beqz	$a0,.L0f0eb548
    # Line 2029
    addu	$a3,$a0,$s3
    # Line 2028
    sh	$a0,16($s2)
    # Line 2029
    sb	$s0,528($a3)
.L0f0eb548:
    # Line 2020
    move	$a1,$s0
    la	$t9,XKeycodeToKeysym
    move	$a0,$s4
    # Line 2019
    addiu	$s1,$s1,1
    # Line 2020
    jalr	$t9
    move	$a2,$s1
    sltiu	$a4,$v0,256
    beqz	$a4,.L0f0eb5a0
    # Line 2022
    addu	$a0,$v0,$v0
    addu	$a0,$a0,$s8
    b	.L0f0eb4f0
    lhu	$a0,0($a0)
.L0f0eb578:
    sltu	$a3,$v0,$s5
    bnez	$a3,.L0f0eb5c8
    sltu	$a4,$v0,$s7
    beqz	$a4,.L0f0eb5c8
    # Line 2024
    andi	$a0,$v0,0xff
    la	$a3,keysymToDevice2
    addu	$a0,$a0,$a0
    addu	$a0,$a0,$a3
    b	.L0f0eb538
    lhu	$a0,0($a0)
.L0f0eb5a0:
    # Line 2022
    sltu	$a3,$v0,$s5
    bnez	$a3,.L0f0eb4ec
    sltu	$a4,$v0,$s7
    beqz	$a4,.L0f0eb4ec
    # Line 2024
    andi	$a0,$v0,0xff
    la	$a3,keysymToDevice2
    addu	$a0,$a0,$a0
    addu	$a0,$a0,$a3
    b	.L0f0eb4f0
    lhu	$a0,0($a0)
.L0f0eb5c8:
    # Line 2026
    move	$a0,$zero
    b	.L0f0eb538
    nop
.L0f0eb5d4:
    # Line 2033
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$s6,56($sp)
    ld	$ra,48($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end _GLBuildKeycodeToDeviceTable

# Function: _GLfindModiferMasks
# Declared: Line 2043 (Source lines: 2044-2063)
# Address: 0x0f0eb604 - 0x0f0eb734 (Size: 304 bytes, Frame: 48)
.ent _GLfindModiferMasks
_GLfindModiferMasks:
    # Line 2044
    addiu	$sp,$sp,-48
    sd	$s3,40($sp)
    sd	$s4,24($sp)
    # Line 2045
    la	$s4,gl_sstatep
    sd	$ra,16($sp)
    # Line 2051
    la	$t9,XGetModifierMapping
    # Line 2045
    lw	$s4,0($s4)
    sd	$s0,0($sp)
    # Line 2044
    la	$s0,_GLnumLockMask
    # Line 2045
    lw	$s4,28($s4)
    sd	$s1,8($sp)
    # Line 2044
    la	$s1,_GLcapsLockMask
    # Line 2045
    lw	$s4,4($s4)
    # Line 2050
    sw	$zero,0($s0)
    sw	$zero,0($s1)
    # Line 2051
    jalr	$t9
    move	$a0,$s4
    sd	$s5,32($sp)
    # Line 2052
    la	$t9,XKeysymToKeycode
    # Line 2051
    move	$s3,$v0
    # Line 2052
    move	$a0,$s4
    jalr	$t9
    li	$a1,0xff7f
    # Line 2053
    la	$t9,XKeysymToKeycode
    li	$a1,0xffe5
    move	$a0,$s4
    jalr	$t9
    # Line 2052
    andi	$s5,$v0,0xff
    # Line 2054
    lw	$a6,0($s3)
    # Line 2055
    lw	$t2,4($s3)
    # Line 2056
    move	$a0,$zero
    blez	$a6,.L0f0eb70c
    ld	$s4,24($sp)
    lw	$a4,0($s0)
    beqz	$a4,.L0f0eb698
    lw	$t1,0($s1)
    bnez	$t1,.L0f0eb70c
.L0f0eb698:
    li	$t0,1
    sll	$a5,$a6,0x3
    andi	$a7,$v0,0xff
.L0f0eb6a4:
    b	.L0f0eb6e0
    addu	$v0,$a0,$t2
.L0f0eb6ac:
    # Line 2058
    bnel	$a7,$a3,.L0f0eb6cc
    # Line 2056
    addiu	$a0,$a0,1
    # Line 2060
    div	$zero,$a0,$a6
    teq	$a6,$zero,0x7
    mflo	$t1
    sllv	$t1,$t0,$t1
    sw	$t1,0($s1)
.L0f0eb6c8:
    # Line 2056
    addiu	$a0,$a0,1
.L0f0eb6cc:
    slt	$at,$a0,$a5
    beqz	$at,.L0f0eb70c
    nop
    bnez	$a4,.L0f0eb704
    nop
.L0f0eb6e0:
    lbu	$a3,0($v0)
    bne	$s5,$a3,.L0f0eb6ac
    addiu	$v0,$v0,1
    # Line 2058
    div	$zero,$a0,$a6
    teq	$a6,$zero,0x7
    mflo	$a4
    sllv	$a4,$t0,$a4
    b	.L0f0eb6c8
    sw	$a4,0($s0)
.L0f0eb704:
    # Line 2056
    beqz	$t1,.L0f0eb6a4
    nop
.L0f0eb70c:
    # Line 2062
    move	$a0,$s3
    la	$t9,XFreeModifiermap
    ld	$s5,32($sp)
    ld	$s1,8($sp)
    jalr	$t9
    ld	$s0,0($sp)
    ld	$ra,16($sp)
    # Line 2063
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLfindModiferMasks

# Function: _GLInitInput
# Declared: Line 2065 (Source lines: 2066-2085)
# Address: 0x0f0eb734 - 0x0f0eb810 (Size: 220 bytes, Frame: 16)
.globl _GLInitInput
.ent _GLInitInput
_GLInitInput:
    # Line 2066
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,31508
    addu	$gp,$t9,$ra
    # Line 2069
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-19368
    bal _GLSetButtonState
    nop
    # Line 2072
    li	$a5,1
    la	$a0,gl_sstatep
    addiu	$a4,$gp,-17680
    li	$a3,2
    lw	$a0,0($a0)
    addiu	$a2,$gp,-14696
    la	$t9,XRebindKeysym
    lw	$a0,28($a0)
    li	$a1,32
    jalr	$t9
    lw	$a0,4($a0)
    # Line 2074
    la	$t9,_GLInitExtInput
    bal _GLInitExtInput
    nop
    la	$a2,sub_0f030000
    # Line 2078
    lhu	$a3,6($v0)
    li	$a1,-1
    # Line 2074
    addiu	$a2,$a2,20888
    # Line 2078
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a2
    sh	$a1,712($a0)
    lhu	$v1,4($v0)
    # Line 2074
    sw	$v0,-20668($gp)
    # Line 2079
    li	$a3,10000
    # Line 2078
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    sll	$at,$at,0x2
    addu	$at,$at,$a2
    sh	$a1,712($at)
    # Line 2079
    sh	$a1,3976($a2)
    sh	$a1,3988($a2)
    # Line 2082
    sh	$a3,6934($a2)
    sh	$a3,6922($a2)
    sh	$a3,6910($a2)
    sh	$a3,6898($a2)
    # Line 2084
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-18940
    bal _GLSetButtonState
    nop
    # Line 2085
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end _GLInitInput

# Function: _GLRefreshKeyboardMapping
# Declared: Line 2087 (Source lines: 2088-2092)
# Address: 0x0f0eb810 - 0x0f0eb864 (Size: 84 bytes, Frame: 32)
.globl _GLRefreshKeyboardMapping
.ent _GLRefreshKeyboardMapping
_GLRefreshKeyboardMapping:
    # Line 2088
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,31288 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 2089
    la	$t9,XRefreshKeyboardMapping
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 2090
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-19368
    bal _GLSetButtonState
    nop
    # Line 2091
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-18940
    bal _GLSetButtonState
    nop
    # Line 2092
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end _GLRefreshKeyboardMapping

.late_rodata
jtbl_0f023de0:
    .word .L0f0ead98
    .word .L0f0eadbc
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0eae28
    .word .L0f0eae50
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0eaea8
    .word .L0f0ead1c
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0ead70
    .word .L0f0eadbc
    .word .L0f0ead98
    .word .L0f0eae28

