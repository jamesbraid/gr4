# Source: ../igloo/pickfeed.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/pickfeed.c -o pickfeed.T
# Total Functions: 38

.text

# Function: __iglooOverflowPending
# Declared: Line 74 (Source lines: 75-78)
# Address: 0x0f0f8080 - 0x0f0f80ac (Size: 44 bytes, Frame: 0)
.ent __iglooOverflowPending
__iglooOverflowPending:
    # Line 75
    lw	$a2,40($a0)
    beqz	$a2,.L0f0f8090
    # Line 76
    li	$a3,1
    move	$a3,$a2
.L0f0f8090:
    lw	$v0,28($a0)
    addu	$v0,$v0,$a3
    addiu	$v0,$v0,3
    sw	$v0,28($a0)
    # Line 78
    slti	$v0,$v0,2048
    jr	$ra
    xori	$v0,$v0,0x1
.end __iglooOverflowPending

# Function: __iglooGetPickState
# Declared: Line 81 (Source lines: 90-90)
# Address: 0x0f0f80ac - 0x0f0f80bc (Size: 16 bytes, Frame: 0)
.ent __iglooGetPickState
__iglooGetPickState:
    # Line 90
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    jr	$ra
    addiu	$v0,$v0,11528
.end __iglooGetPickState

# Function: __iglooReloadNames
# Declared: Line 93 (Source lines: 94-102)
# Address: 0x0f0f80bc - 0x0f0f8134 (Size: 120 bytes, Frame: 48)
.ent __iglooReloadNames
__iglooReloadNames:
    # Line 94
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # Line 99
    la	$t9,glInitNames
    sd	$s5,0($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 94
    move	$s5,$a0
    # Line 100
    lw	$at,40($s5)
    sd	$s1,24($sp)
    move	$s7,$zero
    blez	$at,.L0f0f8124
    ld	$ra,8($sp)
    move	$s1,$zero
    # Line 101
    lw	$a0,32($s5)
.L0f0f80f4:
    # Line 100
    addiu	$s7,$s7,1
    # Line 101
    la	$t9,glPushName
    addu	$a0,$a0,$s1
    # Line 100
    addiu	$s1,$s1,2
    # Line 101
    jalr	$t9
    lh	$a0,0($a0)
    # Line 100
    lw	$a1,40($s5)
    slt	$a1,$s7,$a1
    bnezl	$a1,.L0f0f80f4
    # Line 101
    lw	$a0,32($s5)
    ld	$s1,24($sp)
    ld	$ra,8($sp)
.L0f0f8124:
    # Line 102
    ld	$s5,0($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooReloadNames

# Function: copyNameStack
# Declared: Line 104 (Source lines: 105-186)
# Address: 0x0f0f8134 - 0x0f0f8584 (Size: 1104 bytes, Frame: 48)
.ent copyNameStack
copyNameStack:
    # Line 105
    addiu	$sp,$sp,-48
    sd	$s1,24($sp)
    # Line 111
    la	$t9,__iglooGetCurrentContextInfo
    sd	$s0,8($sp)
    sd	$ra,16($sp)
    jalr	$t9
    # Line 105
    move	$s0,$a0
    # Line 112
    lw	$s1,44($v0)
    addiu	$s1,$s1,11500
    # Line 122
    lw	$at,44($s1)
    beqz	$at,.L0f0f83ac
    li	$at,7168
    beq	$s0,$at,.L0f0f83b0
    # Line 123
    la	$t9,__iglooRenderMode
    # Line 125
    move	$v0,$zero
    # Line 130
    lw	$v1,-20532($gp)
.L0f0f8174:
    lw	$a4,68($s1)
    lw	$a1,36($s1)
    slt	$v1,$v1,$a4
    bnez	$v1,.L0f0f81b0
    # Line 129
    lw	$a6,32($s1)
    # Line 136
    addiu	$v0,$v0,-1
    li	$a5,-1
    beq	$v0,$a5,.L0f0f81c4
    # Line 133
    lw	$a4,48($s1)
    # Line 136
    lw	$t0,44($s1)
    bnezl	$t0,.L0f0f81c8
    # Line 176
    sw	$a1,36($s1)
    # Line 136
    li	$t8,1
    b	.L0f0f82d8
    addu	$a7,$a6,$a6
.L0f0f81b0:
    # Line 155
    beqz	$v0,.L0f0f81c4
    lw	$t1,60($s1)
    lw	$t0,44($s1)
    beqz	$t0,.L0f0f83d8
    # Line 159
    move	$a0,$a4
.L0f0f81c4:
    # Line 176
    sw	$a1,36($s1)
.L0f0f81c8:
    # Line 180
    li	$a3,7170
    li	$a2,4
    bne	$s0,$a3,.L0f0f81f4
    sw	$a2,56($s1)
    lw	$at,44($s1)
    bnez	$at,.L0f0f81f8
    ld	$ra,16($sp)
    # Line 183
    lw	$v1,-20532($gp)
    lw	$a2,68($s1)
    slt	$v1,$v1,$a2
    beqz	$v1,.L0f0f8510
.L0f0f81f4:
    ld	$ra,16($sp)
.L0f0f81f8:
    # Line 186
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f8208:
    # Line 142
    addiu	$a0,$a0,-1
.L0f0f820c:
    # Line 143
    addiu	$a4,$a4,4
    addi	$t2,$t2,-1
    lw	$at,28($s1)
    addiu	$ra,$ra,2
    lw	$a3,-4($a4)
    addu	$at,$at,$ra
    bnez	$t2,.L0f0f8208
    sh	$a3,-2($at)
.L0f0f822c:
    move	$t2,$a0
    ld	$v1,0($sp)
    move	$t3,$ra
    sra	$v1,$v1,0x2
    beqz	$v1,.L0f0f82b0
    move	$t9,$a4
    move	$a1,$t3
    move	$a4,$t2
    move	$a0,$t9
.L0f0f8250:
    lw	$a3,28($s1)
    lw	$a2,0($a0)
    addiu	$a1,$a1,2
    addu	$a3,$a3,$a1
    sh	$a2,-2($a3)
    lw	$a3,28($s1)
    lw	$a2,4($a0)
    addiu	$a1,$a1,2
    addu	$a3,$a3,$a1
    sh	$a2,-2($a3)
    addiu	$a0,$a0,16
    lw	$a3,28($s1)
    lw	$a2,-8($a0)
    addiu	$a1,$a1,2
    addu	$a3,$a3,$a1
    sh	$a2,-2($a3)
    # Line 142
    addiu	$a4,$a4,-4
    # Line 143
    lw	$a3,28($s1)
    addiu	$a1,$a1,2
    lw	$a2,-4($a0)
    addu	$a3,$a3,$a1
    # Line 142
    bne	$a4,$a5,.L0f0f8250
    # Line 143
    sh	$a2,-2($a3)
    move	$a4,$a0
.L0f0f82b0:
    # Line 142
    addu	$a1,$t0,$t1
    addiu	$a1,$a1,1
.L0f0f82b8:
    # Line 144
    lw	$a2,40($s1)
    addiu	$a2,$a2,1
    sw	$a2,40($s1)
.L0f0f82c4:
    # Line 136
    beql	$v0,$a5,.L0f0f81c8
    # Line 176
    sw	$a1,36($s1)
    # Line 136
    lw	$t0,44($s1)
    bnezl	$t0,.L0f0f81c8
    # Line 176
    sw	$a1,36($s1)
.L0f0f82d8:
    # Line 137
    lw	$a0,0($a4)
    # Line 136
    addiu	$v0,$v0,-1
    # Line 138
    addu	$a3,$a1,$a0
    slt	$a3,$a3,$a6
    beqz	$a3,.L0f0f832c
    addiu	$a4,$a4,12
    # Line 141
    addiu	$a1,$a1,1
    lw	$at,28($s1)
    # Line 142
    move	$t1,$a1
    # Line 141
    addu	$ra,$a1,$a1
    addu	$at,$at,$ra
    sh	$a0,-2($at)
    # Line 142
    addiu	$a0,$a0,-1
    beq	$a0,$a5,.L0f0f82b8
    addiu	$t2,$a0,1
    sd	$t2,0($sp)
    andi	$t2,$t2,0x3
    beqz	$t2,.L0f0f822c
    move	$t0,$a0
    b	.L0f0f820c
    addiu	$a0,$a0,-1
.L0f0f832c:
    # Line 144
    bne	$a6,$a1,.L0f0f833c
    nop
    # Line 146
    li	$t0,1
    sw	$t0,44($s1)
.L0f0f833c:
    beqzl	$t0,.L0f0f83c4
    # Line 147
    lw	$at,28($s1)
.L0f0f8344:
    # Line 148
    addiu	$a0,$a0,-1
    beq	$a0,$a5,.L0f0f82c4
    nop
    lw	$at,44($s1)
    bnez	$at,.L0f0f82c4
    addu	$ra,$a1,$a1
    b	.L0f0f8394
    nop
.L0f0f8364:
    # Line 150
    addiu	$a4,$a4,4
    lw	$a2,28($s1)
    lw	$v1,-4($a4)
    addiu	$ra,$ra,2
    addu	$a2,$a2,$ra
    sh	$v1,-2($a2)
.L0f0f837c:
    # Line 148
    addiu	$a0,$a0,-1
    beq	$a0,$a5,.L0f0f83a4
    nop
    lw	$a3,44($s1)
    bnez	$a3,.L0f0f83a4
    nop
.L0f0f8394:
    bnel	$ra,$a7,.L0f0f8364
    # Line 150
    addiu	$a1,$a1,1
    # Line 149
    b	.L0f0f837c
    sw	$t8,44($s1)
.L0f0f83a4:
    b	.L0f0f82c4
    nop
.L0f0f83ac:
    # Line 123
    la	$t9,__iglooRenderMode
.L0f0f83b0:
    move	$a0,$s0
    bal __iglooRenderMode
    move	$a1,$v0
    b	.L0f0f8174
    # Line 130
    lw	$v1,-20532($gp)
.L0f0f83c4:
    # Line 147
    addiu	$a1,$a1,1
    addu	$v1,$a1,$a1
    addu	$at,$at,$v1
    b	.L0f0f8344
    sh	$a0,-2($at)
.L0f0f83d8:
    # Line 159
    addu	$a2,$a1,$a4
    slt	$a2,$a2,$a6
    beqz	$a2,.L0f0f84d0
    li	$a5,-1
    # Line 162
    lw	$a3,28($s1)
    addiu	$a1,$a1,1
    addu	$ra,$a1,$a1
    addu	$a3,$a3,$ra
    sh	$a0,-2($a3)
    # Line 163
    addiu	$a0,$a0,-1
    beq	$a0,$a5,.L0f0f84c0
    move	$a7,$a0
    addiu	$a4,$a0,1
    andi	$v0,$a4,0x3
    beqz	$v0,.L0f0f843c
    move	$a6,$a1
.L0f0f8418:
    addiu	$a0,$a0,-1
    # Line 164
    addiu	$t1,$t1,2
    addi	$v0,$v0,-1
    lw	$v1,28($s1)
    addiu	$ra,$ra,2
    lh	$at,-2($t1)
    addu	$v1,$v1,$ra
    bnez	$v0,.L0f0f8418
    sh	$at,-2($v1)
.L0f0f843c:
    move	$t3,$a0
    move	$t2,$ra
    sra	$a2,$a4,0x2
    beqz	$a2,.L0f0f84b8
    move	$t0,$t1
    move	$v0,$t3
    move	$a0,$t2
    move	$a1,$t0
.L0f0f845c:
    lw	$a3,28($s1)
    lh	$a2,0($a1)
    addiu	$a0,$a0,2
    addu	$a3,$a3,$a0
    sh	$a2,-2($a3)
    lw	$a3,28($s1)
    lh	$a2,2($a1)
    addiu	$a0,$a0,2
    addu	$a3,$a3,$a0
    sh	$a2,-2($a3)
    addiu	$a1,$a1,8
    lw	$a3,28($s1)
    lh	$a2,-4($a1)
    addiu	$a0,$a0,2
    addu	$a3,$a3,$a0
    sh	$a2,-2($a3)
    # Line 163
    addiu	$v0,$v0,-4
    # Line 164
    lw	$at,28($s1)
    addiu	$a0,$a0,2
    lh	$a3,-2($a1)
    addu	$at,$at,$a0
    # Line 163
    bne	$v0,$a5,.L0f0f845c
    # Line 164
    sh	$a3,-2($at)
.L0f0f84b8:
    # Line 163
    addu	$a1,$a7,$a6
    addiu	$a1,$a1,1
.L0f0f84c0:
    # Line 165
    lw	$a2,40($s1)
    addiu	$a2,$a2,1
    b	.L0f0f81c4
    sw	$a2,40($s1)
.L0f0f84d0:
    bne	$a6,$a1,.L0f0f84e0
    nop
    # Line 167
    li	$t0,1
    sw	$t0,44($s1)
.L0f0f84e0:
    beqzl	$t0,.L0f0f8570
    # Line 168
    lw	$a3,28($s1)
.L0f0f84e8:
    # Line 169
    addiu	$a0,$a0,-1
    beql	$a0,$a5,.L0f0f81c8
    # Line 176
    sw	$a1,36($s1)
    # Line 169
    lw	$a3,44($s1)
    bnezl	$a3,.L0f0f81c8
    # Line 176
    sw	$a1,36($s1)
    # Line 169
    li	$t8,1
    addu	$a7,$a6,$a6
    b	.L0f0f8558
    addu	$ra,$a1,$a1
.L0f0f8510:
    # Line 184
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-32580
    bal gl_n_setpattern
    addiu	$a0,$s1,28
    b	.L0f0f81f8
    ld	$ra,16($sp)
.L0f0f8528:
    # Line 171
    addiu	$t1,$t1,2
    lw	$v1,28($s1)
    lh	$at,-2($t1)
    addiu	$ra,$ra,2
    addu	$v1,$v1,$ra
    sh	$at,-2($v1)
.L0f0f8540:
    # Line 169
    addiu	$a0,$a0,-1
    beq	$a0,$a5,.L0f0f8568
    nop
    lw	$a2,44($s1)
    bnez	$a2,.L0f0f8568
    nop
.L0f0f8558:
    bnel	$ra,$a7,.L0f0f8528
    # Line 171
    addiu	$a1,$a1,1
    # Line 170
    b	.L0f0f8540
    sw	$t8,44($s1)
.L0f0f8568:
    b	.L0f0f81c8
    # Line 176
    sw	$a1,36($s1)
.L0f0f8570:
    # Line 168
    addiu	$a1,$a1,1
    addu	$at,$a1,$a1
    addu	$a3,$a3,$at
    b	.L0f0f84e8
    sh	$a0,-2($a3)
.end copyNameStack

# Function: igl_initnames
# Declared: Line 188 (Source lines: 189-212)
# Address: 0x0f0f8584 - 0x0f0f8610 (Size: 140 bytes, Frame: 16)
.ent igl_initnames
igl_initnames:
    # Line 200
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    # Line 189
    addiu	$sp,$sp,-16
    # Line 200
    li	$v0,2
    lw	$at,11500($a0)
    addiu	$a0,$a0,11528
    move	$v1,$a0
    beq	$at,$v0,.L0f0f85b0
    sd	$a0,0($sp)
.L0f0f85a8:
    # Line 212
    jr	$ra
    addiu	$sp,$sp,16
.L0f0f85b0:
    # Line 203
    la	$t9,sub_0f100000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-32640
    bal gl_n_setpattern
    nop
    beqz	$v0,.L0f0f85e0
    ld	$ra,8($sp)
    # Line 204
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-32460
    bal gl_n_setpattern
    li	$a0,7170
    ld	$ra,8($sp)
.L0f0f85e0:
    ld	$v1,0($sp)
    # Line 206
    lw	$v0,32($v1)
    # Line 207
    lw	$at,16($v1)
    sw	$zero,40($v1)
    # Line 206
    addiu	$v0,$v0,-2
    # Line 207
    bnez	$at,.L0f0f85a8
    # Line 206
    sw	$v0,36($v1)
    # Line 209
    la	$t9,glInitNames
    jalr	$t9
    nop
    b	.L0f0f85a8
    ld	$ra,8($sp)
.end igl_initnames

# Function: igl_popname
# Declared: Line 214 (Source lines: 215-248)
# Address: 0x0f0f8610 - 0x0f0f86e8 (Size: 216 bytes, Frame: 16)
.ent igl_popname
igl_popname:
    # Line 226
    la	$a0,gl_wstatep
    lw	$a0,0($a0)
    # Line 215
    addiu	$sp,$sp,-16
    # Line 226
    li	$v0,2
    lw	$at,11500($a0)
    addiu	$a0,$a0,11528
    move	$v1,$a0
    beq	$at,$v0,.L0f0f863c
    sd	$a0,0($sp)
.L0f0f8634:
    # Line 248
    jr	$ra
    addiu	$sp,$sp,16
.L0f0f863c:
    # Line 229
    la	$t9,sub_0f100000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-32640
    bal gl_n_setpattern
    nop
    bnez	$v0,.L0f0f866c
    ld	$ra,8($sp)
    ld	$a2,0($sp)
    lw	$a2,40($a2)
    lw	$at,-20532($gp)
    slt	$at,$at,$a2
    beqz	$at,.L0f0f8688
.L0f0f866c:
    # Line 230
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-32460
    bal gl_n_setpattern
    li	$a0,7170
    ld	$a2,0($sp)
    ld	$ra,8($sp)
    lw	$a2,40($a2)
.L0f0f8688:
    blez	$a2,.L0f0f8634
    # Line 233
    ld	$v1,0($sp)
    # Line 234
    addiu	$a2,$a2,-1
    # Line 233
    lw	$v0,36($v1)
    # Line 234
    lw	$at,16($v1)
    sw	$a2,40($v1)
    # Line 233
    addiu	$v0,$v0,-2
    # Line 234
    bnez	$at,.L0f0f8634
    # Line 233
    sw	$v0,36($v1)
    # Line 234
    lw	$a3,-20532($gp)
    beq	$a2,$a3,.L0f0f86d0
    # Line 241
    slt	$v1,$a2,$a3
    beqz	$v1,.L0f0f8634
    # Line 243
    la	$t9,glPopName
    jalr	$t9
    nop
    b	.L0f0f8634
    ld	$ra,8($sp)
.L0f0f86d0:
    # Line 241
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-32580
    bal gl_n_setpattern
    ld	$a0,0($sp)
    b	.L0f0f8634
    ld	$ra,8($sp)
.end igl_popname

# Function: igl_pushname
# Declared: Line 250 (Source lines: 251-280)
# Address: 0x0f0f86e8 - 0x0f0f87c0 (Size: 216 bytes, Frame: 48)
.ent igl_pushname
igl_pushname:
    # Line 262
    la	$a2,gl_wstatep
    li	$v0,2
    lw	$a2,0($a2)
    # Line 251
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 262
    lw	$at,11500($a2)
    addiu	$a2,$a2,11528
    move	$v1,$a2
    beq	$at,$v0,.L0f0f8718
    sd	$a2,8($sp)
.L0f0f8710:
    # Line 280
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f8718:
    # Line 265
    la	$t9,sub_0f100000
    sd	$ra,16($sp)
    addiu	$t9,$t9,-32640
    bal gl_n_setpattern
    move	$a0,$a2
    bnez	$v0,.L0f0f874c
    ld	$ra,16($sp)
    lw	$at,-20532($gp)
    ld	$a2,8($sp)
    lw	$a2,40($a2)
    slt	$at,$a2,$at
    bnez	$at,.L0f0f876c
    # Line 266
    slti	$at,$a2,1026
.L0f0f874c:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-32460
    bal gl_n_setpattern
    li	$a0,7170
    ld	$a2,8($sp)
    ld	$ra,16($sp)
    lw	$a2,40($a2)
    slti	$at,$a2,1026
.L0f0f876c:
    beqz	$at,.L0f0f8710
    ld	$v0,8($sp)
    # Line 269
    addiu	$at,$a2,1
    # Line 270
    lw	$a1,36($v0)
    # Line 271
    ld	$v1,0($sp)
    # Line 269
    sw	$at,40($v0)
    # Line 270
    addiu	$a1,$a1,2
    sw	$a1,36($v0)
    # Line 271
    sh	$v1,0($a1)
    lw	$v0,16($v0)
    bnez	$v0,.L0f0f8710
    ld	$v1,8($sp)
    lw	$v1,40($v1)
    lw	$v0,-20532($gp)
    slt	$v0,$v0,$v1
    bnez	$v0,.L0f0f8710
    # Line 276
    la	$t9,glPushName
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0f0f8710
    ld	$ra,16($sp)
.end igl_pushname

# Function: igl_loadname
# Declared: Line 286 (Source lines: 287-315)
# Address: 0x0f0f87c0 - 0x0f0f88c0 (Size: 256 bytes, Frame: 48)
.ent igl_loadname
igl_loadname:
    # Line 298
    la	$a2,gl_wstatep
    li	$v0,2
    lw	$a2,0($a2)
    # Line 287
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 298
    lw	$at,11500($a2)
    addiu	$a2,$a2,11528
    move	$v1,$a2
    beq	$at,$v0,.L0f0f87f0
    sd	$a2,8($sp)
.L0f0f87e8:
    # Line 315
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f87f0:
    # Line 301
    la	$t9,sub_0f100000
    sd	$ra,16($sp)
    addiu	$t9,$t9,-32640
    bal gl_n_setpattern
    move	$a0,$a2
    bnez	$v0,.L0f0f8824
    ld	$ra,16($sp)
    ld	$a2,8($sp)
    lw	$a2,40($a2)
    lw	$at,-20532($gp)
    slt	$at,$at,$a2
    beqz	$at,.L0f0f8844
    ld	$a4,8($sp)
.L0f0f8824:
    # Line 302
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-32460
    bal gl_n_setpattern
    li	$a0,7170
    ld	$a2,8($sp)
    ld	$ra,16($sp)
    lw	$a2,40($a2)
    ld	$a4,8($sp)
.L0f0f8844:
    beqz	$a2,.L0f0f8888
    lw	$a4,16($a4)
    # Line 308
    beqz	$a4,.L0f0f8864
.L0f0f8850:
    ld	$a3,8($sp)
.L0f0f8854:
    # Line 310
    lw	$a3,36($a3)
.L0f0f8858:
    ld	$at,0($sp)
    b	.L0f0f87e8
    # Line 312
    sh	$at,0($a3)
.L0f0f8864:
    # Line 308
    lw	$v0,-20532($gp)
    slt	$v0,$v0,$a2
    bnez	$v0,.L0f0f8854
    ld	$a3,8($sp)
    # Line 310
    la	$t9,glLoadName
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0f0f8850
    ld	$ra,16($sp)
.L0f0f8888:
    ld	$v1,8($sp)
    # Line 306
    lw	$a3,36($v1)
    # Line 305
    addiu	$at,$a2,1
    sw	$at,40($v1)
    # Line 306
    addiu	$a3,$a3,2
    bnez	$a4,.L0f0f8858
    sw	$a3,36($v1)
    # Line 308
    la	$t9,glPushName
    jalr	$t9
    ld	$a0,0($sp)
    ld	$a3,8($sp)
    ld	$ra,16($sp)
    b	.L0f0f8858
    lw	$a3,36($a3)
.end igl_loadname

# Function: gl_g_gselect
# Declared: Line 318 (Source lines: 319-410)
# Address: 0x0f0f88c0 - 0x0f0f8a7c (Size: 444 bytes, Frame: 208)
.globl gl_g_gselect
.ent gl_g_gselect
gl_g_gselect:
    # Line 319
    addiu	$sp,$sp,-80
    sd	$gp,48($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,-22136 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 329
    la	$t9,__iglooGetCurrentContextInfo
    sd	$a1,24($sp)
    sd	$ra,56($sp)
    jalr	$t9
    sd	$a0,8($sp)
    sd	$v0,40($sp)
    lw	$a5,44($v0)
    move	$a3,$v0
    sd	$v0,16($sp)
    lw	$v0,2904($a5)
    li	$v1,1
    beq	$v0,$v1,.L0f0f8a1c
.L0f0f8904:
    # Line 336
    addiu	$a4,$a5,11500
    sd	$a4,32($sp)
    lw	$a4,0($a4)
    beqz	$a4,.L0f0f8938
    lw	$a2,-14584($gp)
    # Line 344
    la	$t9,gl_ErrorHandler
    li	$a1,2
    jalr	$t9
    li	$a0,16
    # Line 345
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f8938:
    # Line 348
    la	$t9,gl_malloc
    move	$a1,$a2
    jalr	$t9
    li	$a0,8192
    sd	$v0,40($sp)
    move	$at,$v0
    sd	$v0,0($sp)
    beqz	$v0,.L0f0f89fc
    lw	$a2,-14584($gp)
    # Line 367
    li	$a0,2050
    # Line 355
    li	$v0,2
    # Line 367
    move	$a1,$a2
    # Line 364
    li	$a2,2048
    # Line 365
    li	$a3,4
    # Line 367
    la	$t9,gl_malloc
    # Line 363
    ld	$v1,32($sp)
    ld	$a6,40($sp)
    # Line 357
    ld	$a4,8($sp)
    # Line 358
    ld	$a5,24($sp)
    # Line 363
    sw	$a6,48($v1)
    # Line 361
    sw	$zero,44($v1)
    # Line 360
    sw	$zero,40($v1)
    # Line 359
    sw	$zero,36($v1)
    # Line 358
    sw	$a5,32($v1)
    # Line 357
    sw	$a4,28($v1)
    # Line 365
    sw	$a3,56($v1)
    # Line 364
    sw	$a2,52($v1)
    # Line 367
    jalr	$t9
    # Line 355
    sw	$v0,0($v1)
    ld	$v1,32($sp)
    # Line 367
    sw	$v0,60($v1)
    lw	$at,-20532($gp)
    beqz	$at,.L0f0f8a34
.L0f0f89bc:
    # Line 406
    la	$t9,glSelectBuffer
.L0f0f89c0:
    ld	$a1,0($sp)
    jalr	$t9
    li	$a0,2048
    # Line 407
    la	$t9,__iglooRenderMode
    ld	$a1,16($sp)
    bal __iglooRenderMode
    li	$a0,7170
    # Line 408
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-31356
    bal gl_n_setpattern
    nop
    # Line 410
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f89fc:
    # Line 350
    la	$t9,gl_ErrorHandler
    li	$a1,2
    jalr	$t9
    li	$a0,2
    # Line 351
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f8a1c:
    # Line 333
    la	$t9,__iglooRestoreUsrMat
    jalr	$t9
    nop
    ld	$a5,40($sp)
    b	.L0f0f8904
    lw	$a5,44($a5)
.L0f0f8a34:
    # Line 372
    la	$t9,__iglooGetIntegerv
    addiu	$a1,$gp,-20532
    jalr	$t9
    li	$a0,3383
    # Line 378
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    nop
    # Line 379
    li	$at,3
    beq	$v0,$at,.L0f0f8a6c
    sd	$v0,40($sp)
    li	$v1,4
    ld	$a3,40($sp)
    bne	$v1,$a3,.L0f0f89c0
    # Line 406
    la	$t9,glSelectBuffer
.L0f0f8a6c:
    # Line 381
    lw	$a4,-20532($gp)
    sra	$a4,$a4,0x1
    b	.L0f0f89bc
    sw	$a4,-20532($gp)
.end gl_g_gselect

# Function: gl_g_endselect
# Declared: Line 413 (Source lines: 414-463)
# Address: 0x0f0f8a7c - 0x0f0f8b80 (Size: 260 bytes, Frame: 192)
.globl gl_g_endselect
.ent gl_g_endselect
gl_g_endselect:
    # Line 414
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$a0,0xfff4
    addiu	$a0,$a0,-22580
    addu	$gp,$t9,$a0
    # Line 415
    la	$v1,gl_wstatep
    # Line 425
    li	$v0,2
    # Line 415
    lw	$v1,0($v1)
    sd	$ra,32($sp)
    sd	$s3,16($sp)
    sd	$v1,8($sp)
    # Line 425
    lw	$at,11500($v1)
    addiu	$s3,$v1,11528
    # Line 420
    addiu	$v1,$v1,11500
    # Line 425
    beq	$at,$v0,.L0f0f8ae8
    sd	$v1,0($sp)
    # Line 432
    la	$t9,gl_ErrorHandler
    lw	$a2,-14580($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,17
    # Line 433
    move	$v0,$zero
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f8ae8:
    # Line 437
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-32460
    bal gl_n_setpattern
    li	$a0,7168
    # Line 439
    ld	$ra,0($sp)
    # Line 445
    la	$t9,gl_free
    lw	$a1,-14580($gp)
    # Line 439
    sw	$zero,0($ra)
    # Line 445
    jalr	$t9
    lw	$a0,20($s3)
    # Line 446
    la	$t9,gl_free
    lw	$a1,-14580($gp)
    jalr	$t9
    lw	$a0,32($s3)
    ld	$at,8($sp)
    lw	$at,2904($at)
    li	$v0,1
    beq	$at,$v0,.L0f0f8b6c
    ld	$ra,32($sp)
.L0f0f8b34:
    # Line 456
    lw	$v1,16($s3)
    ld	$gp,24($sp)
    beqz	$v1,.L0f0f8b58
    lw	$a2,12($s3)
    # Line 461
    negu	$v0,$a2
    # Line 460
    sw	$zero,16($s3)
    # Line 461
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f8b58:
    # Line 463
    move	$v0,$a2
    ld	$gp,24($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f8b6c:
    # Line 456
    la	$a0,slowBegin
    # Line 455
    ld	$a1,8($sp)
    sw	$v0,2908($a1)
    b	.L0f0f8b34
    # Line 456
    sw	$a0,216($a1)
.end gl_g_endselect

# Function: gl_g_pick
# Declared: Line 469 (Source lines: 470-485)
# Address: 0x0f0f8b80 - 0x0f0f8c04 (Size: 132 bytes, Frame: 192)
.globl gl_g_pick
.ent gl_g_pick
gl_g_pick:
    # Line 470
    addiu	$sp,$sp,-64
    sd	$s3,0($sp)
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,-22840 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 474
    la	$s3,gl_wstatep
    lw	$s3,0($s3)
    li	$a3,1
    sd	$ra,32($sp)
    lw	$at,2904($s3)
    sd	$a1,16($sp)
    sd	$a0,24($sp)
    beq	$at,$a3,.L0f0f8bf0
    addiu	$s3,$s3,11500
.L0f0f8bbc:
    # Line 483
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-28336
    bal __iglooGetPickingMatrix
    # Line 482
    sh	$a3,200($s3)
    # Line 484
    la	$t9,gselect
    ld	$a0,24($sp)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$s3,0($sp)
    # Line 485
    ld	$ra,32($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f8bf0:
    # Line 479
    la	$t9,__iglooRestoreUsrMat
    jalr	$t9
    nop
    b	.L0f0f8bbc
    li	$a3,1
.end gl_g_pick

# Function: gl_g_endpick
# Declared: Line 488 (Source lines: 489-500)
# Address: 0x0f0f8c04 - 0x0f0f8c4c (Size: 72 bytes, Frame: 48)
.globl gl_g_endpick
.ent gl_g_endpick
gl_g_endpick:
    # Line 489
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,-22972
    addu	$gp,$t9,$ra
    # Line 494
    la	$s8,gl_wstatep
    # Line 498
    la	$t9,endselect
    # Line 494
    lw	$s8,0($s8)
    # Line 498
    jalr	$t9
    # Line 494
    addiu	$s8,$s8,11500
    ld	$gp,16($sp)
    # Line 500
    ld	$ra,0($sp)
    # Line 499
    sh	$zero,200($s8)
    # Line 500
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_endpick

# Function: gl_g_picksize
# Declared: Line 505 (Source lines: 506-531)
# Address: 0x0f0f8c4c - 0x0f0f8cb0 (Size: 100 bytes, Frame: 32)
.globl gl_g_picksize
.ent gl_g_picksize
gl_g_picksize:
    # Line 506
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-23044
    # Line 511
    beqz	$a0,.L0f0f8c84
    # Line 506
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 511
    beqz	$a1,.L0f0f8c84
    # Line 527
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    ld	$gp,0($sp)
    # Line 531
    addiu	$sp,$sp,32
    # Line 530
    sh	$a1,11704($v0)
    # Line 531
    jr	$ra
    # Line 529
    sh	$a0,11702($v0)
.L0f0f8c84:
    # Line 512
    li	$a1,2
    li	$a0,18
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$a2,19336
    # Line 513
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_picksize

# Function: gl_i_loadname
# Declared: Line 535 (Source lines: 535-535)
# Address: 0x0f0f8cb0 - 0x0f0f8d04 (Size: 84 bytes, Frame: 48)
.globl gl_i_loadname
.ent gl_i_loadname
gl_i_loadname:
    # Line 535
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-23144 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f8ce4
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0f8ce4:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-30784
    bal gl_n_setpattern
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_loadname

# Function: gl_c_loadname
# Declared: Line 535 (Source lines: 535-535)
# Address: 0x0f0f8d04 - 0x0f0f8d7c (Size: 120 bytes, Frame: 192)
.globl gl_c_loadname
.ent gl_c_loadname
gl_c_loadname:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-23228 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20520($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f8d60
    move	$s8,$a0
.L0f0f8d2c:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_loadname
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f8d60:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25256
    li	$a1,1
    b	.L0f0f8d2c
    sw	$a1,-20520($gp)
.end gl_c_loadname

# Function: gl_n_loadname
# Declared: Line 535 (Source lines: 535-535)
# Address: 0x0f0f8d7c - 0x0f0f8ddc (Size: 96 bytes, Frame: 48)
.globl gl_n_loadname
.ent gl_n_loadname
gl_n_loadname:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-23348 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0f8db4
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f8db4:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-30784
    bal gl_n_setpattern
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_loadname

# Function: gl_i_pushname
# Declared: Line 536 (Source lines: 536-536)
# Address: 0x0f0f8ddc - 0x0f0f8e30 (Size: 84 bytes, Frame: 48)
.globl gl_i_pushname
.ent gl_i_pushname
gl_i_pushname:
    # Line 536
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-23444 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f8e10
    sd	$ra,16($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    sd	$a0,8($sp)
    ld	$a0,8($sp)
.L0f0f8e10:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-31000
    bal gl_n_setpattern
    nop
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_pushname

# Function: gl_c_pushname
# Declared: Line 536 (Source lines: 536-536)
# Address: 0x0f0f8e30 - 0x0f0f8ea8 (Size: 120 bytes, Frame: 192)
.globl gl_c_pushname
.ent gl_c_pushname
gl_c_pushname:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-23528 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20516($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0f8e8c
    move	$s8,$a0
.L0f0f8e58:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pushname
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0f8e8c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25240
    li	$a1,1
    b	.L0f0f8e58
    sw	$a1,-20516($gp)
.end gl_c_pushname

# Function: gl_n_pushname
# Declared: Line 536 (Source lines: 536-536)
# Address: 0x0f0f8ea8 - 0x0f0f8f08 (Size: 96 bytes, Frame: 48)
.globl gl_n_pushname
.ent gl_n_pushname
gl_n_pushname:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-23648 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0f8ee0
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f8ee0:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-31000
    bal gl_n_setpattern
    lh	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pushname

# Function: gl_i_popname
# Declared: Line 537 (Source lines: 537-537)
# Address: 0x0f0f8f08 - 0x0f0f8f58 (Size: 80 bytes, Frame: 16)
.globl gl_i_popname
.ent gl_i_popname
gl_i_popname:
    # Line 537
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-23744 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f8f38
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f8f38:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-31216
    bal gl_n_setpattern
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_popname

# Function: gl_c_popname
# Declared: Line 537 (Source lines: 537-537)
# Address: 0x0f0f8f58 - 0x0f0f8fbc (Size: 100 bytes, Frame: 32)
.globl gl_c_popname
.ent gl_c_popname
gl_c_popname:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-23824 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20512($gp)
    beqz	$at,.L0f0f8fa0
    sd	$ra,16($sp)
.L0f0f8f78:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_popname
    li	$a0,2
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f8fa0:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25224
    li	$at,1
    b	.L0f0f8f78
    sw	$at,-20512($gp)
.end gl_c_popname

# Function: gl_n_popname
# Declared: Line 537 (Source lines: 537-537)
# Address: 0x0f0f8fbc - 0x0f0f9014 (Size: 88 bytes, Frame: 48)
.globl gl_n_popname
.ent gl_n_popname
gl_n_popname:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-23924 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f0f8ff0
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f8ff0:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-31216
    bal gl_n_setpattern
    nop
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_popname

# Function: gl_i_initnames
# Declared: Line 538 (Source lines: 538-538)
# Address: 0x0f0f9014 - 0x0f0f9064 (Size: 80 bytes, Frame: 16)
.globl gl_i_initnames
.ent gl_i_initnames
gl_i_initnames:
    # Line 538
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-24012 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0f9044
    sd	$ra,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f9044:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-31356
    bal gl_n_setpattern
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_i_initnames

# Function: gl_c_initnames
# Declared: Line 538 (Source lines: 538-538)
# Address: 0x0f0f9064 - 0x0f0f90c8 (Size: 100 bytes, Frame: 32)
.globl gl_c_initnames
.ent gl_c_initnames
gl_c_initnames:
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-24092 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20508($gp)
    beqz	$at,.L0f0f90ac
    sd	$ra,16($sp)
.L0f0f9084:
    addiu	$a1,$sp,0
    la	$t9,gl_compile
    la	$v1,gl_n_initnames
    li	$a0,2
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f90ac:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25208
    li	$at,1
    b	.L0f0f9084
    sw	$at,-20508($gp)
.end gl_c_initnames

# Function: gl_n_initnames
# Declared: Line 538 (Source lines: 538-538)
# Address: 0x0f0f90c8 - 0x0f0f9120 (Size: 88 bytes, Frame: 48)
.globl gl_n_initnames
.ent gl_n_initnames
gl_n_initnames:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-24192 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    beqz	$at,.L0f0f90fc
    sd	$a0,0($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0f90fc:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-31356
    bal gl_n_setpattern
    nop
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_initnames

# Function: __iglooGetPickingMatrix
# Declared: Line 545 (Source lines: 546-560)
# Address: 0x0f0f9120 - 0x0f0f9150 (Size: 48 bytes, Frame: 0)
.globl __iglooGetPickingMatrix
.ent __iglooGetPickingMatrix
__iglooGetPickingMatrix:
    # Line 546
    lui	$v0,0xfff4
    addiu	$v0,$v0,-24280
    addu	$at,$t9,$v0
    lw	$a3,-23296($at)
    lw	$a3,0($a3)
    lh	$v0,11700($a3)
    beqz	$v0,.L0f0f9148
    nop
    # Line 558
    jr	$ra
    addiu	$v0,$a3,11572
.L0f0f9148:
    # Line 560
    jr	$ra
    move	$v0,$zero
.end __iglooGetPickingMatrix

# Function: gl_makepickmat
# Declared: Line 563 (Source lines: 564-623)
# Address: 0x0f0f9150 - 0x0f0f93d4 (Size: 644 bytes, Frame: 224)
.ent gl_makepickmat
gl_makepickmat:
    # Line 564
    addiu	$sp,$sp,-96
    sd	$s0,80($sp)
    # Line 575
    la	$t9,sub_0f100000
    sd	$s8,64($sp)
    sd	$ra,56($sp)
    addiu	$t9,$t9,-32596
    bal gl_n_setpattern
    sdc1	$f22,24($sp)
    # Line 577
    la	$t9,getorigin
    # Line 575
    move	$s0,$v0
    # Line 577
    addiu	$a1,$sp,4
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 579
    lw	$at,4($sp)
    mtc1	$at,$f23
    # Line 578
    lw	$ra,0($sp)
    # Line 579
    cvt.s.w	$f23,$f23
    # Line 578
    mtc1	$ra,$f22
    # Line 581
    la	$t9,getvaluator
    li	$a0,272
    # Line 578
    cvt.s.w	$f22,$f22
    # Line 581
    jalr	$t9
    sdc1	$f23,48($sp)
    # Line 582
    la	$t9,getvaluator
    sd	$v0,72($sp)
    jalr	$t9
    li	$a0,273
    # Line 599
    addiu	$a0,$sp,8
    # Line 582
    addiu	$a1,$sp,8
    # Line 599
    addiu	$a3,$a1,12
    addiu	$a2,$a1,8
    # Line 588
    mtc1	$zero,$f27
    # Line 599
    addiu	$a1,$a1,4
    la	$t9,__iglooGetViewport
    # Line 588
    swc1	$f27,48($s0)
    swc1	$f27,52($s0)
    # Line 584
    lh	$v1,176($s0)
    # Line 588
    swc1	$f27,56($s0)
    swc1	$f27,60($s0)
    # Line 584
    mtc1	$v1,$f29
    # Line 582
    move	$s8,$v0
    # Line 583
    lh	$v0,174($s0)
    # Line 584
    cvt.s.w	$f29,$f29
    # Line 588
    swc1	$f27,68($s0)
    # Line 583
    mtc1	$v0,$f25
    # Line 588
    swc1	$f27,72($s0)
    swc1	$f27,76($s0)
    # Line 583
    cvt.s.w	$f25,$f25
    # Line 588
    swc1	$f27,80($s0)
    swc1	$f27,88($s0)
    swc1	$f27,100($s0)
    sdc1	$f29,32($sp)
    # Line 599
    jalr	$t9
    sdc1	$f25,40($sp)
    # Line 602
    lw	$v1,8($sp)
    # Line 603
    lw	$v0,16($sp)
    # Line 607
    dsll32	$at,$v1,0x10
    dsra32	$at,$at,0x10
    # Line 603
    addu	$v0,$v0,$v1
    addiu	$v0,$v0,-1
    # Line 607
    dsll32	$ra,$v0,0x10
    dsra32	$ra,$ra,0x10
    subu	$ra,$ra,$at
    addiu	$ra,$ra,1
    mtc1	$ra,$f6
    nop
    cvt.s.w	$f6,$f6
    ldc1	$f2,40($sp)
    div.s	$f6,$f6,$f2
    # Line 618
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f6
    div.d	$f1,$f0,$f1
    # Line 605
    lw	$a2,20($sp)
    # Line 604
    lw	$ra,12($sp)
    # Line 605
    addu	$a2,$a2,$ra
    # Line 604
    dsll32	$ra,$ra,0x10
    dsra32	$ra,$ra,0x10
    # Line 605
    addiu	$a2,$a2,-1
    dsll32	$a2,$a2,0x10
    dsra32	$a2,$a2,0x10
    # Line 608
    subu	$a1,$a2,$ra
    addiu	$a1,$a1,1
    mtc1	$a1,$f5
    nop
    cvt.s.w	$f5,$f5
    ldc1	$f9,32($sp)
    div.s	$f5,$f5,$f9
    # Line 619
    cvt.d.s	$f3,$f5
    div.d	$f0,$f0,$f3
    # Line 609
    lwc1	$f4,_lit_40000000
    mul.s	$f3,$f22,$f4
    # Line 603
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    # Line 609
    mtc1	$v0,$f8
    ld	$a0,72($sp)
    cvt.s.w	$f8,$f8
    negu	$a0,$a0
    addu	$a0,$a0,$a0
    mtc1	$a0,$f7
    # Line 602
    dsll32	$v1,$v1,0x10
    # Line 609
    cvt.s.w	$f7,$f7
    # Line 602
    dsra32	$v1,$v1,0x10
    # Line 609
    mtc1	$v1,$f22
    nop
    cvt.s.w	$f22,$f22
    add.s	$f3,$f3,$f7
    add.s	$f22,$f22,$f3
    add.s	$f8,$f8,$f22
    div.s	$f8,$f8,$f2
    # Line 620
    neg.s	$f22,$f8
    div.s	$f22,$f22,$f6
    # Line 610
    ldc1	$f3,48($sp)
    mul.s	$f3,$f3,$f4
    mtc1	$a2,$f7
    negu	$at,$s8
    cvt.s.w	$f7,$f7
    addu	$at,$at,$at
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    mtc1	$ra,$f2
    nop
    cvt.s.w	$f2,$f2
    add.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    add.s	$f7,$f7,$f2
    div.s	$f7,$f7,$f9
    # Line 623
    ld	$s8,64($sp)
    # Line 607
    swc1	$f6,44($s0)
    # Line 608
    swc1	$f5,64($s0)
    # Line 621
    neg.s	$f9,$f7
    # Line 611
    lwc1	$f4,_lit_3f800000
    # Line 621
    div.s	$f9,$f9,$f5
    # Line 623
    ld	$ra,56($sp)
    # Line 611
    swc1	$f4,104($s0)
    swc1	$f4,84($s0)
    # Line 618
    cvt.s.d	$f1,$f1
    # Line 622
    swc1	$f4,168($s0)
    mtc1	$zero,$f3
    swc1	$f4,148($s0)
    # Line 618
    swc1	$f1,108($s0)
    # Line 614
    swc1	$f3,164($s0)
    swc1	$f3,152($s0)
    swc1	$f3,144($s0)
    swc1	$f3,140($s0)
    swc1	$f3,136($s0)
    swc1	$f3,132($s0)
    swc1	$f3,124($s0)
    # Line 619
    cvt.s.d	$f0,$f0
    # Line 614
    swc1	$f3,120($s0)
    swc1	$f3,116($s0)
    swc1	$f3,112($s0)
    # Line 619
    swc1	$f0,128($s0)
    # Line 609
    swc1	$f8,92($s0)
    # Line 610
    swc1	$f7,96($s0)
    # Line 620
    swc1	$f22,156($s0)
    # Line 623
    ldc1	$f22,24($sp)
    # Line 621
    swc1	$f9,160($s0)
    # Line 623
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_makepickmat

# Function: gl_g_feedback
# Declared: Line 631 (Source lines: 632-725)
# Address: 0x0f0f93d4 - 0x0f0f95d4 (Size: 512 bytes, Frame: 208)
.globl gl_g_feedback
.ent gl_g_feedback
gl_g_feedback:
    # Line 632
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-24972 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 639
    lw	$at,-20528($gp)
    lw	$s0,4100($zero)
    sd	$s1,24($sp)
    beqz	$at,.L0f0f9570
    # Line 632
    move	$s1,$a1
.L0f0f9400:
    # Line 671
    lw	$v0,44($s0)
    addiu	$v0,$v0,11500
    lw	$v1,0($v0)
    # Line 680
    sra	$a3,$a0,0x1f
    # Line 695
    addu	$a4,$s1,$s1
    # Line 671
    beqz	$v1,.L0f0f9448
    lw	$a2,-14576($gp)
    # Line 679
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,48($sp)
    jalr	$t9
    li	$a0,68
    ld	$gp,32($sp)
    # Line 680
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f9448:
    xor	$v1,$a0,$a3
    subu	$v1,$v1,$a3
    sra	$a3,$a0,0x1f
    andi	$v1,$v1,0x3
    xor	$v1,$v1,$a3
    subu	$v1,$v1,$a3
    beqz	$v1,.L0f0f9490
    # Line 688
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,48($sp)
    jalr	$t9
    li	$a0,68
    ld	$gp,32($sp)
    # Line 689
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f9490:
    bltzl	$s1,.L0f0f9558
    sd	$ra,48($sp)
    sd	$ra,48($sp)
    sd	$a0,0($sp)
    sd	$v0,8($sp)
    sd	$a4,16($sp)
.L0f0f94a8:
    # Line 699
    ld	$a0,16($sp)
    la	$t9,gl_malloc
    move	$a1,$a2
    sll	$a0,$a0,0x2
    jalr	$t9
    addiu	$a0,$a0,8
    bnez	$v0,.L0f0f94f4
    # Line 714
    move	$a2,$v0
    # Line 700
    la	$t9,gl_ErrorHandler
    lw	$a2,-14576($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,2
    ld	$gp,32($sp)
    # Line 701
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f94f4:
    # Line 711
    ld	$a4,8($sp)
    # Line 714
    lw	$a1,-20524($gp)
    la	$t9,glFeedbackBuffer
    # Line 711
    sw	$zero,24($a4)
    # Line 710
    sw	$v0,20($a4)
    # Line 708
    sw	$v0,12($a4)
    # Line 706
    ld	$a3,0($sp)
    # Line 707
    sw	$s1,8($a4)
    # Line 709
    ld	$a0,16($sp)
    # Line 706
    sw	$a3,4($a4)
    # Line 705
    li	$a3,1
    # Line 709
    addiu	$a0,$a0,2
    sw	$a0,16($a4)
    # Line 714
    jalr	$t9
    # Line 705
    sw	$a3,0($a4)
    # Line 722
    la	$t9,__iglooRenderMode
    move	$a1,$s0
    bal __iglooRenderMode
    li	$a0,7169
    ld	$gp,32($sp)
    # Line 725
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0f9558:
    sd	$a0,0($sp)
    sd	$v0,8($sp)
    # Line 695
    negu	$a4,$s1
    addu	$a4,$a4,$a4
    b	.L0f0f94a8
    sd	$a4,16($sp)
.L0f0f9570:
    # Line 648
    la	$t9,__iglooGetGraphicsType
    sd	$ra,48($sp)
    jalr	$t9
    sd	$a0,0($sp)
    ld	$a0,0($sp)
    # Line 667
    li	$a4,1538
    # Line 648
    li	$at,7
    beq	$v0,$at,.L0f0f95c0
    ld	$ra,48($sp)
    # Line 653
    li	$v1,5
    beq	$v0,$v1,.L0f0f95b0
    # Line 658
    li	$v1,1539
    # Line 667
    sw	$a4,-20524($gp)
    # Line 666
    li	$a3,1
    b	.L0f0f9400
    sw	$a3,-20528($gp)
.L0f0f95b0:
    # Line 658
    sw	$v1,-20524($gp)
    # Line 657
    li	$at,2
    # Line 658
    b	.L0f0f9400
    # Line 657
    sw	$at,-20528($gp)
.L0f0f95c0:
    # Line 653
    li	$a4,1538
    sw	$a4,-20524($gp)
    # Line 652
    li	$a3,1
    # Line 653
    b	.L0f0f9400
    # Line 652
    sw	$a3,-20528($gp)
.end gl_g_feedback

# Function: __iglooFreeFBdata
# Declared: Line 727 (Source lines: 728-737)
# Address: 0x0f0f95d4 - 0x0f0f9618 (Size: 68 bytes, Frame: 32)
.ent __iglooFreeFBdata
__iglooFreeFBdata:
    # Line 728
    lw	$a3,16($a0)
    addiu	$sp,$sp,-32
    beqz	$a3,.L0f0f9610
    sd	$a0,0($sp)
    # Line 731
    la	$t9,gl_free
    move	$a0,$a3
    sd	$ra,8($sp)
    jalr	$t9
    lw	$a1,-14572($gp)
    ld	$at,0($sp)
    ld	$ra,8($sp)
    # Line 735
    sw	$zero,12($at)
    # Line 734
    sw	$zero,20($at)
    # Line 733
    sw	$zero,16($at)
    # Line 732
    sw	$zero,8($at)
.L0f0f9610:
    # Line 737
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooFreeFBdata

# Function: gl_g_endfeedback
# Declared: Line 739 (Source lines: 740-999)
# Address: 0x0f0f9618 - 0x0f0fa128 (Size: 2832 bytes, Frame: 224)
.globl gl_g_endfeedback
.ent gl_g_endfeedback
gl_g_endfeedback:
    # Line 752
    li	$v0,1
    # Line 741
    lw	$a1,4100($zero)
    # Line 740
    addiu	$sp,$sp,-96
    sd	$s0,48($sp)
    # Line 752
    lw	$s0,44($a1)
    sd	$ra,64($sp)
    sd	$gp,40($sp)
    addiu	$s0,$s0,11500
    lw	$at,0($s0)
    # Line 740
    lui	$v1,0xfff4
    addiu	$v1,$v1,-25552
    # Line 752
    beq	$at,$v0,.L0f0f9678
    # Line 740
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 767
    la	$t9,gl_ErrorHandler
    lw	$a2,-14572($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,17
    # Line 768
    li	$v0,-1
    ld	$ra,64($sp)
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f9678:
    # Line 772
    la	$t9,__iglooRenderMode
    bal __iglooRenderMode
    li	$a0,7168
    sd	$s1,56($sp)
    sd	$v0,24($sp)
    move	$t8,$v0
    # Line 773
    la	$t9,getorigin
    sd	$v0,32($sp)
    addiu	$a1,$sp,4
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 776
    ld	$at,24($sp)
    li	$s1,-1
    beq	$at,$s1,.L0f0f9eec
    sw	$zero,0($s0)
    # Line 784
    lw	$a1,24($s0)
    blez	$a1,.L0f0f9b40
    ld	$v1,32($sp)
    blez	$v1,.L0f0f96dc
    # Line 847
    la	$t9,sub_0f100000
    ld	$a0,32($sp)
    addiu	$t9,$t9,-23688
    bal __iglooRenderMode
    move	$a1,$zero
    lw	$a1,24($s0)
.L0f0f96dc:
    # Line 849
    lw	$v0,20($s0)
    # Line 850
    sll	$a6,$a1,0x2
    addu	$a6,$a6,$v0
.L0f0f96e8:
    # Line 859
    sltu	$a4,$v0,$a6
    # Line 858
    move	$a7,$zero
    # Line 859
    lw	$a5,4100($zero)
    # Line 857
    lw	$a1,4($s0)
    # Line 859
    lw	$at,-20528($gp)
    lw	$a5,20($a5)
    li	$v1,2
    beq	$at,$v1,.L0f0f9b54
    lbu	$a5,19($a5)
    # Line 917
    beqz	$a4,.L0f0fa050
    addiu	$a0,$s0,4
    lwc1	$f14,_lit_3c000000
    li	$t1,5
    lwc1	$f18,_lit_42b40000
    lwc1	$f19,_lit_429a0000
    lwc1	$f16,_lit_43050000
    lwc1	$f17,_lit_42980000
    lwc1	$f21,_lit_42380000
    lwc1	$f13,_lit_42ce0000
    lwc1	$f15,_lit_43300000
    lwc1	$f10,_lit_42900000
    lwc1	$f11,_lit_42e20000
    mtc1	$zero,$f8
    lwc1	$f7,_lit_437f0000
    lwc1	$f5,_lit_40000000
    lwc1	$f4,_lit_4afffffe
    lwc1	$f6,_lit_bf000000
    b	.L0f0f977c
    lwc1	$f12,_lit_42be0000
.L0f0f975c:
    # Line 946
    beqz	$a5,.L0f0f9c9c
    nop
.L0f0f9764:
    sll	$v1,$a4,0x2
    addu	$v0,$v1,$v0
    addiu	$v0,$v0,12
.L0f0f9770:
    # Line 990
    sltu	$a2,$v0,$a6
.L0f0f9774:
    beqzl	$a2,.L0f0f97b8
    sw	$a7,16($sp)
.L0f0f977c:
    # Line 919
    lwc1	$f0,0($v0)
    trunc.w.s	$f0,$f0
    addiu	$v0,$v0,4
    # la	at,sub_0f020000
    mfc1	$a4,$f0
    # Line 922
    li	$a2,-1
    # Line 919
    la	$at,jtbl_0f024bb8
    addiu	$a4,$a4,-1792
    sltiu	$v1,$a4,8
    sll	$a4,$a4,0x2
    beqz	$v1,.L0f0f9770
    addu	$a4,$a4,$at
    lw	$at,0($a4)
    jr	$at
    # Line 946
    li	$a4,4
.L0f0f97b8:
    # Line 993
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-27180
    bal gl_g_feedback
    nop
    ld	$at,32($sp)
    beq	$at,$s1,.L0f0f9b28
    ld	$ra,64($sp)
    # Line 999
    lw	$v0,16($sp)
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f97ec:
    # Line 922
    lw	$v1,8($s0)
    addiu	$a7,$a7,7
    slt	$v1,$v1,$a7
    beqzl	$v1,.L0f0f98b0
    # Line 923
    swc1	$f12,0($a1)
    # Line 922
    b	.L0f0f9770
    sd	$a2,32($sp)
.L0f0f9808:
    # Line 928
    lw	$a3,8($s0)
    addiu	$a7,$a7,14
    slt	$a3,$a3,$a7
    beqz	$a3,.L0f0f9930
    li	$at,-1
    b	.L0f0f9770
    sd	$at,32($sp)
.L0f0f9824:
    # Line 935
    lwc1	$f1,0($v0)
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    # Line 936
    li	$at,-1
    lw	$v1,8($s0)
    sll	$t0,$a4,0x2
    subu	$t0,$t0,$a4
    sll	$t0,$t0,0x1
    addu	$a7,$t0,$a7
    addiu	$a7,$a7,2
    slt	$v1,$v1,$a7
    beqz	$v1,.L0f0f9a34
    # Line 935
    addiu	$v0,$v0,4
    # Line 936
    b	.L0f0f9770
    sd	$at,32($sp)
.L0f0f9860:
    # Line 949
    addiu	$v0,$v0,4
    # Line 950
    lw	$v1,8($s0)
    addiu	$a7,$a7,2
    # Line 949
    lwc1	$f2,-4($v0)
    # Line 950
    slt	$v1,$v1,$a7
    beqz	$v1,.L0f0f9888
    # Line 949
    swc1	$f2,8($sp)
    # Line 950
    li	$a2,-1
    b	.L0f0f9770
    sd	$a2,32($sp)
.L0f0f9888:
    # la	at,sub_0f020000
    lb	$a4,9($sp)
    la	$at,jtbl_0f024bd8
    sll	$t0,$a4,0x2
    sltiu	$v1,$a4,7
    beqz	$v1,.L0f0f9b0c
    addu	$t0,$t0,$at
    lw	$v1,0($t0)
    jr	$v1
    nop
.L0f0f98b0:
    # Line 924
    lw	$a3,0($sp)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,0($v0)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    lw	$a2,4($sp)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,4($v0)
    add.s	$f0,$f0,$f1
    swc1	$f0,8($a1)
    lwc1	$f3,8($v0)
    add.s	$f3,$f3,$f6
    mul.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f5
    beqz	$a5,.L0f0f9ffc
    swc1	$f3,12($a1)
    lwc1	$f2,12($v0)
    mul.s	$f2,$f2,$f7
    swc1	$f2,16($a1)
    lwc1	$f1,16($v0)
    mul.s	$f1,$f1,$f7
    swc1	$f1,20($a1)
    lwc1	$f0,20($v0)
    mul.s	$f0,$f0,$f7
    addiu	$v0,$v0,28
    addiu	$a1,$a1,28
    b	.L0f0f9770
    swc1	$f0,-4($a1)
.L0f0f9930:
    # Line 929
    swc1	$f13,0($a1)
    # Line 930
    lw	$v1,0($sp)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,0($v0)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    lw	$at,4($sp)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,4($v0)
    add.s	$f0,$f0,$f1
    swc1	$f0,8($a1)
    lwc1	$f3,8($v0)
    add.s	$f3,$f3,$f6
    mul.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f5
    beqz	$a5,.L0f0fa018
    swc1	$f3,12($a1)
    lwc1	$f2,12($v0)
    mul.s	$f2,$f2,$f7
    swc1	$f2,16($a1)
    lwc1	$f1,16($v0)
    mul.s	$f1,$f1,$f7
    swc1	$f1,20($a1)
    lwc1	$f0,20($v0)
    mul.s	$f0,$f0,$f7
    addiu	$v0,$v0,28
    addiu	$a1,$a1,28
    swc1	$f0,-4($a1)
.L0f0f99b0:
    # Line 931
    swc1	$f11,0($a1)
    # Line 932
    lw	$a3,0($sp)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,0($v0)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    lw	$a2,4($sp)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,4($v0)
    add.s	$f0,$f0,$f1
    swc1	$f0,8($a1)
    lwc1	$f3,8($v0)
    add.s	$f3,$f3,$f6
    mul.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f5
    beqz	$a5,.L0f0fa034
    swc1	$f3,12($a1)
    lwc1	$f2,12($v0)
    mul.s	$f2,$f2,$f7
    swc1	$f2,16($a1)
    lwc1	$f1,16($v0)
    mul.s	$f1,$f1,$f7
    swc1	$f1,20($a1)
    lwc1	$f0,20($v0)
    mul.s	$f0,$f0,$f7
    addiu	$v0,$v0,28
    addiu	$a1,$a1,28
    b	.L0f0f9770
    swc1	$f0,-4($a1)
.L0f0f9a34:
    # Line 938
    mtc1	$t0,$f3
    nop
    cvt.s.w	$f3,$f3
    addiu	$a1,$a1,8
    # Line 937
    swc1	$f10,-8($a1)
    # Line 939
    addiu	$a4,$a4,-1
    bltz	$a4,.L0f0f9770
    # Line 938
    swc1	$f3,-4($a1)
    b	.L0f0f9a90
    # Line 940
    lw	$v1,0($sp)
.L0f0f9a5c:
    lwc1	$f2,12($v0)
    mul.s	$f2,$f2,$f7
    swc1	$f2,12($a1)
    lwc1	$f1,16($v0)
    mul.s	$f1,$f1,$f7
    swc1	$f1,16($a1)
    lwc1	$f0,20($v0)
    mul.s	$f0,$f0,$f7
    addiu	$v0,$v0,28
    addiu	$a1,$a1,24
    swc1	$f0,-4($a1)
.L0f0f9a88:
    # Line 939
    beq	$a4,$s1,.L0f0f9afc
    # Line 940
    lw	$v1,0($sp)
.L0f0f9a90:
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,0($v0)
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a1)
    lw	$at,4($sp)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,4($v0)
    add.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    lwc1	$f3,8($v0)
    add.s	$f3,$f3,$f6
    mul.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f5
    # Line 939
    addiu	$a4,$a4,-1
    # Line 940
    bnez	$a5,.L0f0f9a5c
    swc1	$f3,8($a1)
    addiu	$a1,$a1,24
    addiu	$v0,$v0,16
    lwc1	$f0,-4($v0)
    swc1	$f8,-8($a1)
    swc1	$f8,-4($a1)
    b	.L0f0f9a88
    swc1	$f0,-12($a1)
.L0f0f9afc:
    b	.L0f0f9774
    # Line 990
    sltu	$a2,$v0,$a6
.L0f0f9b04:
    # Line 959
    swc1	$f17,0($a1)
    addiu	$a1,$a1,4
.L0f0f9b0c:
    # Line 975
    lh	$a2,10($sp)
    mtc1	$a2,$f9
    beq	$a4,$t1,.L0f0f9f0c
    cvt.s.w	$f9,$f9
    # Line 980
    swc1	$f9,0($a1)
    b	.L0f0f9770
    addiu	$a1,$a1,4
.L0f0f9b28:
    ld	$gp,40($sp)
    # Line 997
    lw	$v0,8($s0)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f9b40:
    # Line 855
    ld	$a6,32($sp)
    # Line 854
    lw	$v0,12($s0)
    # Line 855
    sll	$a6,$a6,0x2
    b	.L0f0f96e8
    addu	$a6,$a6,$v0
.L0f0f9b54:
    # Line 859
    beqz	$a4,.L0f0fa120
    addiu	$a0,$s0,4
    lwc1	$f15,_lit_43300000
    lwc1	$f10,_lit_42900000
    lwc1	$f9,_lit_41b00000
    lwc1	$f11,_lit_42e20000
    mtc1	$zero,$f8
    lwc1	$f7,_lit_437f0000
    lwc1	$f5,_lit_40000000
    lwc1	$f4,_lit_4afffffe
    lwc1	$f6,_lit_bf000000
    lwc1	$f13,_lit_41300000
    b	.L0f0f9bac
    lwc1	$f12,_lit_42be0000
.L0f0f9b8c:
    # Line 900
    beqz	$a5,.L0f0fa0b8
    nop
.L0f0f9b94:
    sll	$v1,$a4,0x2
    addu	$v0,$v1,$v0
    addiu	$v0,$v0,28
.L0f0f9ba0:
    # Line 917
    sltu	$a2,$v0,$a6
.L0f0f9ba4:
    beqz	$a2,.L0f0f9be8
    nop
.L0f0f9bac:
    # Line 863
    lwc1	$f0,0($v0)
    trunc.w.s	$f0,$f0
    # Line 859
    move	$t0,$zero
    # Line 863
    addiu	$v0,$v0,4
    # la	at,sub_0f020000
    mfc1	$a4,$f0
    la	$at,jtbl_0f024b98
    addiu	$a4,$a4,-1792
    sltiu	$a3,$a4,8
    sll	$a4,$a4,0x2
    beqz	$a3,.L0f0f9ba0
    addu	$a4,$a4,$at
    lw	$at,0($a4)
    jr	$at
    # Line 900
    li	$a4,4
.L0f0f9be8:
    # Line 917
    b	.L0f0f97b8
    sw	$a7,16($sp)
.L0f0f9bf0:
    # Line 866
    lw	$v1,8($s0)
    addiu	$a7,$a7,13
    slt	$v1,$v1,$a7
    beqz	$v1,.L0f0f9ca4
    li	$a2,-1
    b	.L0f0f9ba0
    sd	$a2,32($sp)
.L0f0f9c0c:
    # Line 873
    lw	$a3,8($s0)
    addiu	$a7,$a7,24
    slt	$a3,$a3,$a7
    beqz	$a3,.L0f0f9d60
    li	$at,-1
    b	.L0f0f9ba0
    sd	$at,32($sp)
.L0f0f9c28:
    # Line 889
    lwc1	$f1,0($v0)
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    # Line 890
    li	$at,-1
    lw	$v1,8($s0)
    sll	$t0,$a4,0x2
    subu	$t0,$t0,$a4
    sll	$t0,$t0,0x2
    subu	$t0,$t0,$a4
    addu	$a7,$t0,$a7
    addiu	$a7,$a7,2
    slt	$v1,$v1,$a7
    beqz	$v1,.L0f0f9ec4
    # Line 889
    addiu	$v0,$v0,4
    # Line 890
    b	.L0f0f9ba0
    sd	$at,32($sp)
.L0f0f9c68:
    # Line 903
    lwc1	$f2,0($v0)
    swc1	$f2,8($sp)
    lb	$v1,9($sp)
    bnez	$v1,.L0f0f9ba0
    addiu	$v0,$v0,4
    # Line 906
    lw	$a2,8($s0)
    addiu	$a7,$a7,3
    slt	$a2,$a2,$a7
    beqz	$a2,.L0f0fa094
    li	$t0,1
    li	$a3,-1
    b	.L0f0fa0b0
    sd	$a3,32($sp)
.L0f0f9c9c:
    b	.L0f0f9764
    # Line 946
    li	$a4,1
.L0f0f9ca4:
    # Line 867
    swc1	$f12,0($a1)
    # Line 868
    swc1	$f13,4($a1)
    # Line 869
    lw	$v1,0($sp)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,0($v0)
    add.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    lw	$at,4($sp)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,4($v0)
    add.s	$f0,$f0,$f1
    swc1	$f0,12($a1)
    lwc1	$f3,8($v0)
    add.s	$f3,$f3,$f6
    mul.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f5
    beqz	$a5,.L0f0fa0c0
    swc1	$f3,16($a1)
    lwc1	$f3,12($v0)
    mul.s	$f3,$f3,$f7
    swc1	$f3,20($a1)
    lwc1	$f2,16($v0)
    mul.s	$f2,$f2,$f7
    swc1	$f2,24($a1)
    lwc1	$f1,20($v0)
    mul.s	$f1,$f1,$f7
    swc1	$f1,28($a1)
    lwc1	$f0,24($v0)
    mul.s	$f0,$f0,$f7
    addiu	$a1,$a1,36
    addiu	$v0,$v0,28
    swc1	$f0,-4($a1)
.L0f0f9d34:
    lwc1	$f3,0($v0)
    swc1	$f3,0($a1)
    lwc1	$f2,4($v0)
    swc1	$f2,4($a1)
    lwc1	$f1,8($v0)
    swc1	$f1,8($a1)
    addiu	$a1,$a1,16
    lwc1	$f0,12($v0)
    addiu	$v0,$v0,16
    # Line 870
    b	.L0f0f9ba0
    # Line 869
    swc1	$f0,-4($a1)
.L0f0f9d60:
    # Line 880
    swc1	$f11,0($a1)
    # Line 884
    swc1	$f9,4($a1)
    # Line 885
    lw	$a3,0($sp)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,0($v0)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a1)
    lw	$a2,4($sp)
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,4($v0)
    add.s	$f1,$f1,$f2
    swc1	$f1,12($a1)
    lwc1	$f0,8($v0)
    add.s	$f0,$f0,$f6
    mul.s	$f0,$f0,$f4
    mul.s	$f0,$f0,$f5
    beqz	$a5,.L0f0fa0e0
    swc1	$f0,16($a1)
    lwc1	$f0,12($v0)
    mul.s	$f0,$f0,$f7
    swc1	$f0,20($a1)
    lwc1	$f3,16($v0)
    mul.s	$f3,$f3,$f7
    swc1	$f3,24($a1)
    lwc1	$f2,20($v0)
    mul.s	$f2,$f2,$f7
    swc1	$f2,28($a1)
    lwc1	$f1,24($v0)
    mul.s	$f1,$f1,$f7
    addiu	$a1,$a1,36
    addiu	$v0,$v0,28
    swc1	$f1,-4($a1)
.L0f0f9df0:
    lwc1	$f1,0($v0)
    swc1	$f1,0($a1)
    lwc1	$f0,4($v0)
    swc1	$f0,4($a1)
    lwc1	$f3,8($v0)
    swc1	$f3,8($a1)
    lwc1	$f2,12($v0)
    swc1	$f2,12($a1)
    # Line 886
    lw	$v1,0($sp)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,16($v0)
    add.s	$f0,$f0,$f1
    swc1	$f0,16($a1)
    lw	$at,4($sp)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,20($v0)
    add.s	$f2,$f2,$f3
    swc1	$f2,20($a1)
    lwc1	$f1,24($v0)
    add.s	$f1,$f1,$f6
    mul.s	$f1,$f1,$f4
    mul.s	$f1,$f1,$f5
    beqz	$a5,.L0f0fa100
    swc1	$f1,24($a1)
    lwc1	$f1,28($v0)
    mul.s	$f1,$f1,$f7
    swc1	$f1,28($a1)
    lwc1	$f0,32($v0)
    mul.s	$f0,$f0,$f7
    swc1	$f0,32($a1)
    lwc1	$f3,36($v0)
    mul.s	$f3,$f3,$f7
    swc1	$f3,36($a1)
    lwc1	$f2,40($v0)
    mul.s	$f2,$f2,$f7
    addiu	$a1,$a1,44
    addiu	$v0,$v0,44
    swc1	$f2,-4($a1)
.L0f0f9e98:
    lwc1	$f1,0($v0)
    swc1	$f1,0($a1)
    lwc1	$f0,4($v0)
    swc1	$f0,4($a1)
    lwc1	$f3,8($v0)
    swc1	$f3,8($a1)
    addiu	$a1,$a1,16
    lwc1	$f2,12($v0)
    addiu	$v0,$v0,16
    # Line 887
    b	.L0f0f9ba0
    # Line 886
    swc1	$f2,-4($a1)
.L0f0f9ec4:
    # Line 892
    mtc1	$t0,$f2
    nop
    cvt.s.w	$f2,$f2
    addiu	$a1,$a1,8
    # Line 893
    addiu	$a4,$a4,-1
    # Line 891
    swc1	$f10,-8($a1)
    # Line 893
    bltz	$a4,.L0f0f9ba0
    # Line 892
    swc1	$f2,-4($a1)
    b	.L0f0f9f84
    # Line 894
    lw	$at,0($sp)
.L0f0f9eec:
    # Line 784
    move	$a1,$zero
    la	$t9,memset
    lw	$a2,8($s0)
    lw	$a0,4($s0)
    jalr	$t9
    sll	$a2,$a2,0x2
    b	.L0f0f97b8
    addiu	$a0,$s0,4
.L0f0f9f0c:
    # Line 978
    mul.s	$f3,$f9,$f14
    addiu	$a1,$a1,4
    b	.L0f0f9770
    swc1	$f3,-4($a1)
.L0f0f9f1c:
    # Line 894
    lwc1	$f3,12($v0)
    mul.s	$f3,$f3,$f7
    swc1	$f3,12($a1)
    lwc1	$f2,16($v0)
    mul.s	$f2,$f2,$f7
    swc1	$f2,16($a1)
    lwc1	$f1,20($v0)
    mul.s	$f1,$f1,$f7
    swc1	$f1,20($a1)
    lwc1	$f0,24($v0)
    mul.s	$f0,$f0,$f7
    addiu	$a1,$a1,28
    addiu	$v0,$v0,28
    swc1	$f0,-4($a1)
.L0f0f9f54:
    lwc1	$f3,0($v0)
    swc1	$f3,0($a1)
    lwc1	$f2,4($v0)
    swc1	$f2,4($a1)
    lwc1	$f1,8($v0)
    swc1	$f1,8($a1)
    addiu	$a1,$a1,16
    lwc1	$f0,12($v0)
    addiu	$v0,$v0,16
    # Line 893
    beq	$a4,$s1,.L0f0f9ff4
    # Line 894
    swc1	$f0,-4($a1)
    lw	$at,0($sp)
.L0f0f9f84:
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,0($v0)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($a1)
    lw	$a3,4($sp)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,4($v0)
    add.s	$f1,$f1,$f2
    swc1	$f1,4($a1)
    lwc1	$f0,8($v0)
    add.s	$f0,$f0,$f6
    mul.s	$f0,$f0,$f4
    mul.s	$f0,$f0,$f5
    # Line 893
    addiu	$a4,$a4,-1
    # Line 894
    bnez	$a5,.L0f0f9f1c
    swc1	$f0,8($a1)
    addiu	$a1,$a1,28
    addiu	$v0,$v0,16
    lwc1	$f1,-4($v0)
    swc1	$f8,-12($a1)
    swc1	$f8,-8($a1)
    swc1	$f8,-4($a1)
    b	.L0f0f9f54
    swc1	$f1,-16($a1)
.L0f0f9ff4:
    b	.L0f0f9ba4
    # Line 917
    sltu	$a2,$v0,$a6
.L0f0f9ffc:
    # Line 924
    lwc1	$f2,12($v0)
    addiu	$a1,$a1,28
    addiu	$v0,$v0,16
    swc1	$f2,-12($a1)
    swc1	$f8,-8($a1)
    b	.L0f0f9770
    swc1	$f8,-4($a1)
.L0f0fa018:
    # Line 930
    lwc1	$f3,12($v0)
    addiu	$a1,$a1,28
    addiu	$v0,$v0,16
    swc1	$f3,-12($a1)
    swc1	$f8,-8($a1)
    b	.L0f0f99b0
    swc1	$f8,-4($a1)
.L0f0fa034:
    # Line 932
    lwc1	$f0,12($v0)
    addiu	$a1,$a1,28
    addiu	$v0,$v0,16
    swc1	$f0,-12($a1)
    swc1	$f8,-8($a1)
    b	.L0f0f9770
    swc1	$f8,-4($a1)
.L0f0fa050:
    b	.L0f0f97b8
    # Line 990
    sw	$a7,16($sp)
.L0f0fa058:
    # Line 953
    swc1	$f15,0($a1)
    # Line 954
    b	.L0f0f9b0c
    # Line 953
    addiu	$a1,$a1,4
.L0f0fa064:
    # Line 956
    swc1	$f21,0($a1)
    # Line 957
    b	.L0f0f9b0c
    # Line 956
    addiu	$a1,$a1,4
.L0f0fa070:
    # Line 962
    swc1	$f16,0($a1)
    # Line 963
    b	.L0f0f9b0c
    # Line 962
    addiu	$a1,$a1,4
.L0f0fa07c:
    # Line 966
    swc1	$f19,0($a1)
    # Line 967
    b	.L0f0f9b0c
    # Line 966
    addiu	$a1,$a1,4
.L0f0fa088:
    # Line 969
    swc1	$f18,0($a1)
    b	.L0f0f9b0c
    addiu	$a1,$a1,4
.L0f0fa094:
    # Line 908
    lh	$v1,10($sp)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a1,$a1,8
    # Line 907
    swc1	$f15,-8($a1)
    # Line 908
    swc1	$f1,-4($a1)
.L0f0fa0b0:
    b	.L0f0f9ba4
    # Line 917
    sltu	$a2,$v0,$a6
.L0f0fa0b8:
    b	.L0f0f9b94
    # Line 900
    li	$a4,1
.L0f0fa0c0:
    # Line 869
    lwc1	$f2,12($v0)
    addiu	$a1,$a1,36
    addiu	$v0,$v0,16
    swc1	$f2,-16($a1)
    swc1	$f8,-12($a1)
    swc1	$f8,-8($a1)
    b	.L0f0f9d34
    swc1	$f8,-4($a1)
.L0f0fa0e0:
    # Line 885
    lwc1	$f3,12($v0)
    addiu	$a1,$a1,36
    addiu	$v0,$v0,16
    swc1	$f3,-16($a1)
    swc1	$f8,-12($a1)
    swc1	$f8,-8($a1)
    b	.L0f0f9df0
    swc1	$f8,-4($a1)
.L0f0fa100:
    # Line 886
    lwc1	$f0,28($v0)
    addiu	$a1,$a1,44
    addiu	$v0,$v0,32
    swc1	$f0,-16($a1)
    swc1	$f8,-12($a1)
    swc1	$f8,-8($a1)
    b	.L0f0f9e98
    swc1	$f8,-4($a1)
.L0f0fa120:
    b	.L0f0f97b8
    # Line 917
    sw	$a7,16($sp)
.end gl_g_endfeedback

# Function: __iglooGetRenderMode
# Declared: Line 1003 (Source lines: 1009-1020)
# Address: 0x0f0fa128 - 0x0f0fa15c (Size: 52 bytes, Frame: 0)
.globl __iglooGetRenderMode
.ent __iglooGetRenderMode
__iglooGetRenderMode:
    # Line 1009
    lw	$a2,4100($zero)
    lw	$a2,96($a2)
    # Line 1010
    andi	$at,$a2,0x2
    beqz	$at,.L0f0fa148
    li	$v0,7168
    # Line 1014
    li	$v0,7169
.L0f0fa140:
    # Line 1020
    jr	$ra
    nop
.L0f0fa148:
    # Line 1014
    andi	$at,$a2,0x4
    beqz	$at,.L0f0fa140
    nop
    # Line 1020
    jr	$ra
    # Line 1018
    li	$v0,7170
.end __iglooGetRenderMode

# Function: gl_i_passthrough
# Declared: Line 1023 (Source lines: 1023-1023)
# Address: 0x0f0fa15c - 0x0f0fa1dc (Size: 128 bytes, Frame: 48)
.globl gl_i_passthrough
.ent gl_i_passthrough
gl_i_passthrough:
    # Line 1023
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-28436 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    beqz	$at,.L0f0fa190
    sd	$a0,8($sp)
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0fa190:
    la	$t9,__iglooGetRenderMode
    bal __iglooGetRenderMode
    nop
    li	$v1,7169
    beq	$v0,$v1,.L0f0fa1b4
    ld	$ra,24($sp)
.L0f0fa1a8:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0fa1b4:
    sb	$zero,1($sp)
    la	$t9,glPassThrough
    ld	$a0,8($sp)
    li	$a1,63
    sb	$a1,0($sp)
    sh	$a0,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f0fa1a8
    ld	$ra,24($sp)
.end gl_i_passthrough

# Function: gl_c_passthrough
# Declared: Line 1023 (Source lines: 1023-1023)
# Address: 0x0f0fa1dc - 0x0f0fa254 (Size: 120 bytes, Frame: 192)
.globl gl_c_passthrough
.ent gl_c_passthrough
gl_c_passthrough:
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-28564 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20504($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fa238
    move	$s8,$a0
.L0f0fa204:
    addiu	$a1,$sp,0
    li	$a0,4
    sh	$zero,6($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_passthrough
    sh	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fa238:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25192
    li	$a1,1
    b	.L0f0fa204
    sw	$a1,-20504($gp)
.end gl_c_passthrough

# Function: gl_n_passthrough
# Declared: Line 1023 (Source lines: 1023-1023)
# Address: 0x0f0fa254 - 0x0f0fa2e0 (Size: 140 bytes, Frame: 48)
.globl gl_n_passthrough
.ent gl_n_passthrough
gl_n_passthrough:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-28684 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,24($sp)
    sd	$s7,16($sp)
    beqz	$at,.L0f0fa28c
    move	$s7,$a0
    la	$t9,__iglooNCloseMoveDraw
    bal __iglooNCloseMoveDraw
    nop
.L0f0fa28c:
    la	$t9,__iglooGetRenderMode
    bal __iglooGetRenderMode
    nop
    li	$v1,7169
    beq	$v0,$v1,.L0f0fa2b8
    ld	$ra,24($sp)
.L0f0fa2a4:
    ld	$gp,8($sp)
    addiu	$v0,$s7,4
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0fa2b8:
    sb	$zero,1($sp)
    la	$t9,glPassThrough
    lh	$a0,0($s7)
    li	$a1,63
    sb	$a1,0($sp)
    sh	$a0,2($sp)
    jalr	$t9
    lwc1	$f12,0($sp)
    b	.L0f0fa2a4
    ld	$ra,24($sp)
.end gl_n_passthrough

# Function: __iglooRenderMode
# Declared: Line 1025 (Source lines: 1026-1070)
# Address: 0x0f0fa2e0 - 0x0f0fa378 (Size: 152 bytes, Frame: 192)
.globl __iglooRenderMode
.ent __iglooRenderMode
__iglooRenderMode:
    # Line 1026
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-28824
    beqz	$a1,.L0f0fa354
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 1037
    la	$t9,glRenderMode
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    move	$a3,$s0
    # Line 1054
    li	$a2,-7
    lw	$a0,96($s1)
    li	$v1,7169
    beq	$s0,$v1,.L0f0fa36c
    and	$a0,$a0,$a2
    # Line 1062
    li	$at,7170
    bne	$a3,$at,.L0f0fa348
    ld	$s0,8($sp)
    # Line 1066
    ori	$a0,$a0,0x4
    ld	$s0,8($sp)
.L0f0fa348:
    # Line 1068
    sw	$a0,96($s1)
    b	.L0f0fa360
    ld	$s1,16($sp)
.L0f0fa354:
    lw	$v0,0($sp)
    ld	$s1,16($sp)
    ld	$s0,8($sp)
.L0f0fa360:
    ld	$gp,24($sp)
    # Line 1070
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fa36c:
    # Line 1062
    ori	$a0,$a0,0x2
    b	.L0f0fa348
    ld	$s0,8($sp)
.end __iglooRenderMode

# Function: saveFBBuffer
# Declared: Line 1080 (Source lines: 1081-1115)
# Address: 0x0f0fa378 - 0x0f0fa420 (Size: 168 bytes, Frame: 48)
.ent saveFBBuffer
saveFBBuffer:
    # Line 1090
    la	$v1,gl_wstatep
    lw	$v1,0($v1)
    # Line 1096
    li	$at,1
    # Line 1081
    addiu	$sp,$sp,-48
    # Line 1096
    lw	$v0,11524($v1)
    sd	$s3,8($sp)
    # Line 1090
    addiu	$s3,$v1,11504
    # Line 1096
    addu	$v0,$v0,$a0
    sw	$v0,11524($v1)
    beq	$a1,$at,.L0f0fa3bc
    lw	$a4,8($s3)
.L0f0fa3a4:
    # Line 1112
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a4
    sw	$a0,8($s3)
    # Line 1115
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0fa3bc:
    # Line 1105
    lw	$a2,-14572($gp)
    sd	$ra,24($sp)
    la	$t9,gl_realloc
    lw	$a3,20($s3)
    lw	$a1,12($s3)
    sd	$a0,16($sp)
    # Line 1102
    lw	$a0,16($s3)
    # Line 1105
    addu	$a1,$a1,$a3
    sll	$a1,$a1,0x2
    # Line 1102
    subu	$a3,$a4,$a0
    sra	$a3,$a3,0x2
    # Line 1105
    jalr	$t9
    sd	$a3,0($sp)
    # Line 1109
    lw	$at,20($s3)
    lw	$ra,12($s3)
    # Line 1105
    sw	$v0,16($s3)
    ld	$a0,16($sp)
    # Line 1109
    addu	$ra,$ra,$at
    # Line 1110
    ld	$a4,0($sp)
    # Line 1109
    sw	$ra,12($s3)
    ld	$ra,24($sp)
    # Line 1110
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$v0
    b	.L0f0fa3a4
    sw	$a4,8($s3)
.end saveFBBuffer

# Function: __iglooSavePickFeedState
# Declared: Line 1117 (Source lines: 1118-1155)
# Address: 0x0f0fa420 - 0x0f0fa474 (Size: 84 bytes, Frame: 32)
.globl __iglooSavePickFeedState
.ent __iglooSavePickFeedState
__iglooSavePickFeedState:
    # Line 1126
    li	$at,1
    lw	$a2,44($a0)
    # Line 1118
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1126
    lw	$a2,11500($a2)
    # Line 1118
    lui	$v0,0xfff4
    addiu	$v0,$v0,-29144
    # Line 1126
    beq	$a2,$at,.L0f0fa450
    # Line 1118
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 1126
    li	$at,2
    beq	$a2,$at,.L0f0fa45c
    # Line 1153
    la	$t9,sub_0f100000
.L0f0fa450:
    ld	$gp,0($sp)
    # Line 1155
    jr	$ra
    addiu	$sp,$sp,32
.L0f0fa45c:
    sd	$ra,8($sp)
    # Line 1153
    addiu	$t9,$t9,-32460
    bal gl_n_setpattern
    li	$a0,7168
    b	.L0f0fa450
    ld	$ra,8($sp)
.end __iglooSavePickFeedState

# Function: __iglooRestorePickFeedState
# Declared: Line 1158 (Source lines: 1159-1195)
# Address: 0x0f0fa474 - 0x0f0fa51c (Size: 168 bytes, Frame: 48)
.globl __iglooRestorePickFeedState
.ent __iglooRestorePickFeedState
__iglooRestorePickFeedState:
    # Line 1167
    li	$at,1
    # Line 1163
    lw	$a1,44($a0)
    # Line 1159
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # Line 1163
    addiu	$a1,$a1,11500
    # Line 1167
    lw	$a3,0($a1)
    # Line 1159
    lui	$v0,0xfff4
    addiu	$v0,$v0,-29228
    # Line 1167
    beq	$a3,$at,.L0f0fa4b8
    # Line 1159
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 1167
    li	$a2,2
    bnel	$a3,$a2,.L0f0fa4bc
    ld	$gp,16($sp)
    lw	$at,44($a1)
    sd	$a1,0($sp)
    beqz	$at,.L0f0fa4c4
    sd	$a0,8($sp)
.L0f0fa4b8:
    ld	$gp,16($sp)
.L0f0fa4bc:
    # Line 1195
    jr	$ra
    addiu	$sp,$sp,48
.L0f0fa4c4:
    # Line 1189
    li	$a0,2048
    la	$t9,glSelectBuffer
    ld	$a1,0($sp)
    sd	$ra,24($sp)
    jalr	$t9
    lw	$a1,48($a1)
    # Line 1190
    la	$t9,__iglooRenderMode
    ld	$a1,8($sp)
    bal __iglooRenderMode
    li	$a0,7170
    ld	$a1,0($sp)
    lw	$a2,-20532($gp)
    lw	$ra,68($a1)
    slt	$a2,$a2,$ra
    bnez	$a2,.L0f0fa4b8
    ld	$ra,24($sp)
    # Line 1192
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-32580
    bal gl_n_setpattern
    addiu	$a0,$a1,28
    b	.L0f0fa4b8
    ld	$ra,24($sp)
.end __iglooRestorePickFeedState

.late_rodata
jtbl_0f024b98:
    .word .L0f0f9c68
    .word .L0f0f9bf0
    .word .L0f0f9c0c
    .word .L0f0f9c28
    .word .L0f0f9b8c
    .word .L0f0f9b8c
    .word .L0f0f9b8c
    .word .L0f0f9c0c
jtbl_0f024bb8:
    .word .L0f0f9860
    .word .L0f0f97ec
    .word .L0f0f9808
    .word .L0f0f9824
    .word .L0f0f975c
    .word .L0f0f975c
    .word .L0f0f975c
    .word .L0f0f9808
jtbl_0f024bd8:
    .word .L0f0fa058
    .word .L0f0fa064
    .word .L0f0f9b04
    .word .L0f0fa070
    .word .L0f0fa07c
    .word .L0f0fa07c
    .word .L0f0fa088

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3c000000:
    .word 0x3c000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_41300000:
    .word 0x41300000
_lit_41b00000:
    .word 0x41b00000
_lit_42380000:
    .word 0x42380000
_lit_42900000:
    .word 0x42900000
_lit_42980000:
    .word 0x42980000
_lit_429a0000:
    .word 0x429a0000
_lit_42b40000:
    .word 0x42b40000
_lit_42be0000:
    .word 0x42be0000
_lit_42ce0000:
    .word 0x42ce0000
_lit_42e20000:
    .word 0x42e20000
_lit_43050000:
    .word 0x43050000
_lit_43300000:
    .word 0x43300000
_lit_437f0000:
    .word 0x437f0000
_lit_4afffffe:
    .word 0x4afffffe
_lit_bf000000:
    .word 0xbf000000

