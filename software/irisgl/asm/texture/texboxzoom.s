# Source: ../igloo/texture/texboxzoom.c
# Category: texture
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/texture/texboxzoom.c -o texboxzoom.T
# Total Functions: 22

.text

# Function: charsperrow
# Declared: Line 87 (Source lines: 89-89)
# Address: 0x0f11a9e4 - 0x0f11aa0c (Size: 40 bytes, Frame: 0)
.ent charsperrow
charsperrow:
    # Line 89
    mult	$a0,$a1
    mflo	$v1
    addiu	$v1,$v1,-1
    sra	$v0,$v1,0x1
    srl	$v0,$v0,0x1e
    addu	$v0,$v0,$v1
    sra	$v0,$v0,0x2
    sll	$v0,$v0,0x2
    jr	$ra
    addiu	$v0,$v0,4
.end charsperrow

# Function: gl_limgalloc
# Declared: Line 92 (Source lines: 93-94)
# Address: 0x0f11aa0c - 0x0f11aa68 (Size: 92 bytes, Frame: 192)
.globl gl_limgalloc
.ent gl_limgalloc
gl_limgalloc:
    # Line 93
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,-30660
    addu	$gp,$t9,$s8
    # Line 94
    la	$t9,sub_0f120000
    sd	$ra,0($sp)
    # Line 93
    move	$s8,$a1
    # Line 94
    addiu	$t9,$t9,-22044
    bal gl_g_subtexload
    # Line 93
    move	$a1,$a2
    # Line 94
    mult	$v0,$s8
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    mflo	$a0
    jalr	$t9
    addiu	$a1,$a1,21504
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_limgalloc

# Function: getimgrow
# Declared: Line 103 (Source lines: 104-133)
# Address: 0x0f11aa68 - 0x0f11ad00 (Size: 664 bytes, Frame: 0)
.ent getimgrow
getimgrow:
    # Line 104
    lui	$a3,0xfff2
    addiu	$a3,$a3,-30752
    addu	$at,$t9,$a3
    # Line 108
    lw	$a2,-19924($at)
    mult	$a2,$a1
    # Line 109
    li	$v0,1
    # Line 108
    lw	$t9,-19936($at)
    # Line 127
    lw	$a3,-19916($at)
    # Line 109
    lw	$a5,-19932($at)
    li	$a1,4
    andi	$a6,$a3,0x3
    # Line 108
    lw	$v1,-19908($at)
    # Line 127
    move	$a7,$a3
    # Line 108
    mflo	$a4
    addu	$a4,$a4,$v1
    # Line 109
    beq	$a5,$v0,.L0f11ab54
    # Line 108
    addu	$a4,$a4,$t9
    # Line 109
    li	$v0,2
    beq	$a5,$v0,.L0f11abe4
    li	$v1,3
    beql	$a5,$v1,.L0f11ac74
    # Line 121
    lw	$a3,-19916($at)
    # Line 109
    beq	$a5,$a1,.L0f11aad0
    nop
.L0f11aac8:
    # Line 133
    jr	$ra
    nop
.L0f11aad0:
    # Line 127
    blez	$a3,.L0f11aac8
    move	$a5,$zero
    beqz	$a6,.L0f11ab00
    move	$t1,$a5
.L0f11aae0:
    addiu	$a5,$a5,1
    # Line 129
    addiu	$a4,$a4,4
    # Line 128
    addiu	$a0,$a0,2
    lbu	$a2,-4($a4)
    addi	$a6,$a6,-1
    bnez	$a6,.L0f11aae0
    sh	$a2,-2($a0)
    move	$t1,$a5
.L0f11ab00:
    move	$a6,$a0
    move	$t0,$a4
    sra	$v0,$a7,0x2
    beqz	$v0,.L0f11ab4c
    move	$a4,$t0
    move	$a5,$t1
    move	$a0,$a6
.L0f11ab1c:
    lbu	$v0,0($a4)
    sh	$v0,0($a0)
    lbu	$a2,4($a4)
    sh	$a2,2($a0)
    lbu	$a1,8($a4)
    # Line 129
    addiu	$a4,$a4,16
    # Line 128
    sh	$a1,4($a0)
    addiu	$a0,$a0,8
    lbu	$v1,-4($a4)
    # Line 127
    addiu	$a5,$a5,4
    bne	$a5,$a3,.L0f11ab1c
    # Line 128
    sh	$v1,-2($a0)
.L0f11ab4c:
    # Line 133
    jr	$ra
    nop
.L0f11ab54:
    # Line 111
    lw	$a3,-19916($at)
    move	$a5,$zero
    blez	$a3,.L0f11aac8
    move	$a7,$a3
    andi	$a6,$a3,0x3
    beqz	$a6,.L0f11ab90
    move	$t1,$a5
.L0f11ab70:
    addiu	$a5,$a5,1
    # Line 112
    addiu	$a0,$a0,2
    addiu	$a4,$a4,1
    lbu	$v1,-1($a4)
    addi	$a6,$a6,-1
    bnez	$a6,.L0f11ab70
    sh	$v1,-2($a0)
    move	$t1,$a5
.L0f11ab90:
    sra	$a1,$a7,0x2
    move	$a6,$a0
    beqz	$a1,.L0f11abdc
    move	$t0,$a4
    move	$a0,$a6
    move	$a4,$t1
    move	$a5,$t0
.L0f11abac:
    lbu	$a1,0($a5)
    sh	$a1,0($a0)
    lbu	$v1,1($a5)
    sh	$v1,2($a0)
    lbu	$v0,2($a5)
    addiu	$a0,$a0,8
    sh	$v0,-4($a0)
    addiu	$a5,$a5,4
    lbu	$a2,-1($a5)
    # Line 111
    addiu	$a4,$a4,4
    bne	$a4,$a3,.L0f11abac
    # Line 112
    sh	$a2,-2($a0)
.L0f11abdc:
    # Line 133
    jr	$ra
    nop
.L0f11abe4:
    # Line 115
    lw	$a3,-19916($at)
    move	$a5,$zero
    blez	$a3,.L0f11aac8
    move	$a7,$a3
    andi	$a6,$a3,0x3
    beqz	$a6,.L0f11ac20
    move	$t0,$a4
.L0f11ac00:
    addiu	$a5,$a5,1
    # Line 117
    addiu	$a4,$a4,2
    # Line 116
    addiu	$a0,$a0,2
    lbu	$a2,-2($a4)
    addi	$a6,$a6,-1
    bnez	$a6,.L0f11ac00
    sh	$a2,-2($a0)
    move	$t0,$a4
.L0f11ac20:
    sra	$v0,$a7,0x2
    move	$t1,$a5
    beqz	$v0,.L0f11ac6c
    move	$a6,$a0
    move	$a5,$t1
    move	$a0,$t0
    move	$a4,$a6
.L0f11ac3c:
    lbu	$v0,0($a0)
    sh	$v0,0($a4)
    lbu	$a2,2($a0)
    sh	$a2,2($a4)
    lbu	$a1,4($a0)
    # Line 117
    addiu	$a0,$a0,8
    # Line 116
    sh	$a1,4($a4)
    addiu	$a4,$a4,8
    lbu	$v1,-2($a0)
    # Line 115
    addiu	$a5,$a5,4
    bne	$a5,$a3,.L0f11ac3c
    # Line 116
    sh	$v1,-2($a4)
.L0f11ac6c:
    # Line 133
    jr	$ra
    nop
.L0f11ac74:
    # Line 121
    move	$a5,$zero
    blez	$a3,.L0f11aac8
    move	$a7,$a3
    andi	$a6,$a3,0x3
    beqz	$a6,.L0f11acac
    move	$t0,$a4
.L0f11ac8c:
    addiu	$a5,$a5,1
    # Line 123
    addiu	$a4,$a4,3
    # Line 122
    addiu	$a0,$a0,2
    lbu	$v1,-3($a4)
    addi	$a6,$a6,-1
    bnez	$a6,.L0f11ac8c
    sh	$v1,-2($a0)
    move	$t0,$a4
.L0f11acac:
    sra	$a1,$a7,0x2
    move	$t1,$a5
    beqz	$a1,.L0f11acf8
    move	$a6,$a0
    move	$a5,$t1
    move	$a0,$t0
    move	$a4,$a6
.L0f11acc8:
    lbu	$a1,0($a0)
    sh	$a1,0($a4)
    lbu	$v1,3($a0)
    sh	$v1,2($a4)
    lbu	$v0,6($a0)
    # Line 123
    addiu	$a0,$a0,12
    # Line 122
    sh	$v0,4($a4)
    addiu	$a4,$a4,8
    lbu	$a2,-3($a0)
    # Line 121
    addiu	$a5,$a5,4
    bne	$a5,$a3,.L0f11acc8
    # Line 122
    sh	$a2,-2($a4)
.L0f11acf8:
    # Line 133
    jr	$ra
    nop
.end getimgrow

# Function: putimgrow
# Declared: Line 135 (Source lines: 142-168)
# Address: 0x0f11ad00 - 0x0f11af84 (Size: 644 bytes, Frame: 0)
.ent putimgrow
putimgrow:
    # Line 142
    lw	$v1,-19920($gp)
    mult	$v1,$a1
    # Line 162
    move	$a3,$zero
    # Line 144
    li	$at,1
    # Line 142
    lw	$v0,-19904($gp)
    # Line 144
    lw	$a5,-19932($gp)
    # Line 142
    mflo	$a4
    addu	$a4,$a4,$v0
    # Line 144
    beq	$a5,$at,.L0f11add4
    # Line 142
    addu	$a4,$a4,$a2
    # Line 144
    li	$a1,2
    beq	$a5,$a1,.L0f11ae64
    li	$at,3
    beq	$a5,$at,.L0f11aef4
    li	$v0,4
    beq	$a5,$v0,.L0f11ad4c
    # Line 162
    lw	$a2,-19912($gp)
.L0f11ad44:
    # Line 168
    jr	$ra
    nop
.L0f11ad4c:
    # Line 162
    blez	$a2,.L0f11ad44
    move	$a6,$a2
    andi	$a5,$a2,0x3
    beqzl	$a5,.L0f11ad80
    move	$a5,$a0
.L0f11ad60:
    addiu	$a3,$a3,1
    # Line 164
    addiu	$a4,$a4,4
    # Line 163
    addiu	$a0,$a0,2
    lh	$v1,-2($a0)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f11ad60
    sb	$v1,-4($a4)
    move	$a5,$a0
.L0f11ad80:
    move	$t0,$a3
    move	$a7,$a4
    sra	$a1,$a6,0x2
    beqz	$a1,.L0f11adcc
    move	$a3,$a7
    move	$a4,$t0
    move	$a0,$a5
.L0f11ad9c:
    lh	$a1,0($a0)
    sb	$a1,0($a3)
    lh	$v1,2($a0)
    sb	$v1,4($a3)
    lh	$v0,4($a0)
    # Line 164
    addiu	$a3,$a3,16
    # Line 163
    sb	$v0,-8($a3)
    addiu	$a0,$a0,8
    lh	$at,-2($a0)
    # Line 162
    addiu	$a4,$a4,4
    bne	$a4,$a2,.L0f11ad9c
    # Line 163
    sb	$at,-4($a3)
.L0f11adcc:
    # Line 168
    jr	$ra
    nop
.L0f11add4:
    # Line 146
    lw	$a2,-19912($gp)
    move	$a3,$zero
    blez	$a2,.L0f11ad44
    move	$a6,$a2
    andi	$a5,$a2,0x3
    beqzl	$a5,.L0f11ae10
    move	$a5,$a4
.L0f11adf0:
    addiu	$a3,$a3,1
    # Line 147
    addiu	$a4,$a4,1
    addiu	$a0,$a0,2
    lh	$at,-2($a0)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f11adf0
    sb	$at,-1($a4)
    move	$a5,$a4
.L0f11ae10:
    sra	$v0,$a6,0x2
    move	$t0,$a3
    beqz	$v0,.L0f11ae5c
    move	$a7,$a0
    move	$a3,$t0
    move	$a0,$a5
    move	$a4,$a7
.L0f11ae2c:
    lh	$v0,0($a4)
    sb	$v0,0($a0)
    lh	$at,2($a4)
    sb	$at,1($a0)
    lh	$a1,4($a4)
    addiu	$a0,$a0,4
    sb	$a1,-2($a0)
    addiu	$a4,$a4,8
    lh	$v1,-2($a4)
    # Line 146
    addiu	$a3,$a3,4
    bne	$a3,$a2,.L0f11ae2c
    # Line 147
    sb	$v1,-1($a0)
.L0f11ae5c:
    # Line 168
    jr	$ra
    nop
.L0f11ae64:
    # Line 150
    lw	$a2,-19912($gp)
    move	$a3,$zero
    blez	$a2,.L0f11ad44
    move	$a6,$a2
    andi	$a5,$a2,0x3
    beqzl	$a5,.L0f11aea0
    move	$a5,$a0
.L0f11ae80:
    addiu	$a3,$a3,1
    # Line 152
    addiu	$a4,$a4,2
    # Line 151
    addiu	$a0,$a0,2
    lh	$v1,-2($a0)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f11ae80
    sb	$v1,-2($a4)
    move	$a5,$a0
.L0f11aea0:
    move	$t0,$a3
    move	$a7,$a4
    sra	$a1,$a6,0x2
    beqz	$a1,.L0f11aeec
    move	$a3,$a7
    move	$a4,$t0
    move	$a0,$a5
.L0f11aebc:
    lh	$a1,0($a0)
    sb	$a1,0($a3)
    lh	$v1,2($a0)
    sb	$v1,2($a3)
    lh	$v0,4($a0)
    # Line 152
    addiu	$a3,$a3,8
    # Line 151
    sb	$v0,-4($a3)
    addiu	$a0,$a0,8
    lh	$at,-2($a0)
    # Line 150
    addiu	$a4,$a4,4
    bne	$a4,$a2,.L0f11aebc
    # Line 151
    sb	$at,-2($a3)
.L0f11aeec:
    # Line 168
    jr	$ra
    nop
.L0f11aef4:
    # Line 156
    lw	$a2,-19912($gp)
    move	$a3,$zero
    blez	$a2,.L0f11ad44
    move	$a6,$a2
    andi	$a5,$a2,0x3
    beqz	$a5,.L0f11af30
    move	$a7,$a4
.L0f11af10:
    addiu	$a3,$a3,1
    # Line 158
    addiu	$a4,$a4,3
    # Line 157
    addiu	$a0,$a0,2
    lh	$at,-2($a0)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f11af10
    sb	$at,-3($a4)
    move	$a7,$a4
.L0f11af30:
    sra	$v0,$a6,0x2
    move	$t0,$a3
    beqz	$v0,.L0f11af7c
    move	$a5,$a0
    move	$a3,$t0
    move	$a0,$a7
    move	$a4,$a5
.L0f11af4c:
    lh	$v0,0($a4)
    sb	$v0,0($a0)
    lh	$at,2($a4)
    sb	$at,3($a0)
    lh	$a1,4($a4)
    # Line 158
    addiu	$a0,$a0,12
    # Line 157
    sb	$a1,-6($a0)
    addiu	$a4,$a4,8
    lh	$v1,-2($a4)
    # Line 156
    addiu	$a3,$a3,4
    bne	$a3,$a2,.L0f11af4c
    # Line 157
    sb	$v1,-3($a0)
.L0f11af7c:
    # Line 168
    jr	$ra
    nop
.end putimgrow

# Function: gl_limgzoom
# Declared: Line 171 (Source lines: 173-235)
# Address: 0x0f11af84 - 0x0f11b1e8 (Size: 612 bytes, Frame: 160)
.globl gl_limgzoom
.ent gl_limgzoom
gl_limgzoom:
    # Line 173
    addiu	$sp,$sp,-160
    sd	$s4,32($sp)
    move	$s4,$a5
    sd	$s1,16($sp)
    move	$s1,$a3
    sd	$s0,24($sp)
    move	$s0,$a4
    sd	$s2,56($sp)
    move	$s2,$a2
    sd	$ra,40($sp)
    sd	$gp,8($sp)
    sd	$s8,48($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,-32060
    addu	$gp,$t9,$s8
    move	$s8,$a6
    # Line 182
    sw	$a4,-19912($gp)
    # Line 181
    sw	$a2,-19916($gp)
    # Line 178
    sw	$a6,-19932($gp)
    # Line 179
    sw	$a0,-19908($gp)
    # Line 173
    la	$t9,sub_0f120000
    # Line 183
    move	$a0,$a2
    # Line 180
    sw	$a1,-19904($gp)
    # Line 173
    addiu	$t9,$t9,-22044
    # Line 183
    bal gl_g_subtexload
    move	$a1,$a6
    la	$t9,sub_0f120000
    sw	$v0,-19924($gp)
    # Line 184
    move	$a0,$s0
    addiu	$t9,$t9,-22044
    bal gl_g_subtexload
    move	$a1,$s8
    sd	$s6,72($sp)
    # Line 185
    li	$a6,1
    li	$a5,2
    move	$a4,$s4
    move	$a3,$s0
    move	$a2,$s1
    move	$a1,$s2
    la	$t9,sub_0f120000
    # Line 184
    sw	$v0,-19920($gp)
    # Line 185
    la	$a0,sub_0f120000
    addiu	$t9,$t9,-19992
    bal gl_limgzoom
    addiu	$a0,$a0,-21912
    move	$s6,$v0
    # Line 186
    la	$t9,gl_malloc
    la	$a1,sub_0f020000
    addu	$a0,$s0,$s0
    jalr	$t9
    addiu	$a1,$a1,21520
    # Line 195
    lw	$a0,-19932($gp)
    # Line 186
    move	$s1,$v0
    # Line 195
    li	$a7,2
    beq	$a0,$a7,.L0f11b1b8
    lw	$a1,-19936($gp)
    li	$t0,3
    beq	$a0,$t0,.L0f11b194
    nop
    sd	$s7,64($sp)
    # Line 208
    sw	$a1,0($sp)
.L0f11b078:
    sd	$s3,88($sp)
.L0f11b07c:
    sd	$s5,80($sp)
    sd	$s7,64($sp)
    # Line 211
    blez	$s8,.L0f11b148
    move	$s7,$zero
    la	$s2,sub_0f120000
    lw	$s5,0($sp)
    la	$s3,sub_0f120000
    addiu	$s2,$s2,-19420
    b	.L0f11b0ec
    addiu	$s3,$s3,-21248
.L0f11b0a4:
    # Line 215
    sltiu	$s5,$s7,1
.L0f11b0a8:
    # Line 228
    move	$s0,$zero
.L0f11b0ac:
    blez	$s4,.L0f11b0e4
    # Line 229
    move	$a0,$s6
.L0f11b0b4:
    move	$a1,$s1
    move	$a2,$s0
    bal gl_limgzoom
    move	$t9,$s2
    # Line 230
    move	$a0,$s1
    move	$a2,$s5
    move	$a1,$s0
    bal gl_limgalloc
    move	$t9,$s3
    # Line 228
    addiu	$s0,$s0,1
    bne	$s4,$s0,.L0f11b0b4
    # Line 229
    move	$a0,$s6
.L0f11b0e4:
    # Line 211
    addiu	$s7,$s7,1
    beq	$s8,$s7,.L0f11b140
.L0f11b0ec:
    # Line 213
    lw	$a0,-19932($gp)
    li	$v1,3
    li	$at,2
    beq	$a0,$at,.L0f11b0a4
    # Line 212
    sw	$s7,-19936($gp)
    # Line 213
    beq	$a0,$v1,.L0f11b110
    nop
    b	.L0f11b0a8
    # Line 225
    move	$s5,$s7
.L0f11b110:
    # Line 218
    beqz	$s7,.L0f11b130
    li	$a7,1
    beq	$s7,$a7,.L0f11b138
    li	$t0,2
    bne	$s7,$t0,.L0f11b0ac
    # Line 228
    move	$s0,$zero
    # Line 221
    b	.L0f11b0a8
    move	$s5,$zero
.L0f11b130:
    # Line 219
    b	.L0f11b0a8
    li	$s5,2
.L0f11b138:
    # Line 220
    b	.L0f11b0a8
    li	$s5,1
.L0f11b140:
    ld	$s5,80($sp)
    ld	$s3,88($sp)
.L0f11b148:
    # Line 233
    la	$t9,sub_0f120000
    move	$a0,$s6
    addiu	$t9,$t9,-18116
    bal gl_limgzoom
    ld	$s7,64($sp)
    # Line 234
    la	$t9,gl_free
    move	$a0,$s1
    lw	$a1,-14404($gp)
    jalr	$t9
    ld	$s6,72($sp)
    ld	$gp,8($sp)
    # Line 235
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,56($sp)
    ld	$ra,40($sp)
    ld	$s4,32($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f11b194:
    # Line 201
    beqz	$a1,.L0f11b1c8
    li	$at,1
    beq	$a1,$at,.L0f11b1d8
    li	$v1,2
    bnel	$a1,$v1,.L0f11b07c
    sd	$s3,88($sp)
    sd	$s7,64($sp)
    # Line 204
    b	.L0f11b078
    sw	$zero,0($sp)
.L0f11b1b8:
    sd	$s7,64($sp)
    # Line 197
    sltiu	$a7,$a1,1
    # Line 199
    b	.L0f11b078
    # Line 197
    sw	$a7,-19928($gp)
.L0f11b1c8:
    sd	$s7,64($sp)
    li	$t0,2
    # Line 202
    b	.L0f11b078
    sw	$t0,0($sp)
.L0f11b1d8:
    sd	$s7,64($sp)
    li	$at,1
    # Line 203
    b	.L0f11b078
    sw	$at,0($sp)
.end gl_limgzoom

# Function: newzoom
# Declared: Line 262 (Source lines: 263-301)
# Address: 0x0f11b1e8 - 0x0f11b424 (Size: 572 bytes, Frame: 160)
.ent newzoom
newzoom:
    # Line 263
    addiu	$sp,$sp,-160
    sd	$s0,80($sp)
    sd	$s3,16($sp)
    move	$s3,$a2
    sd	$s1,72($sp)
    move	$s1,$a3
    sd	$s4,24($sp)
    move	$s4,$a4
    sd	$s5,0($sp)
    move	$s5,$a5
    sd	$a6,56($sp)
    sd	$s2,32($sp)
    move	$s2,$a1
    # Line 268
    addiu	$a1,$gp,-16008
    sd	$s7,48($sp)
    la	$t9,gl_malloc
    # Line 263
    move	$s7,$a0
    sd	$ra,8($sp)
    # Line 268
    jalr	$t9
    li	$a0,76
    move	$s0,$v0
    # Line 270
    la	$t9,gl_malloc
    addiu	$a1,$gp,-16008
    addu	$a0,$s2,$s2
    jalr	$t9
    # Line 269
    sw	$s7,0($v0)
    # Line 271
    addiu	$a1,$gp,-16008
    # Line 270
    sw	$v0,4($s0)
    # Line 271
    la	$t9,gl_malloc
    ld	$s7,48($sp)
    addu	$a0,$s1,$s1
    jalr	$t9
    sd	$a0,64($sp)
    # Line 278
    sw	$s5,32($s0)
    # Line 277
    sw	$zero,40($s0)
    # Line 275
    sw	$s4,24($s0)
    # Line 274
    sw	$s1,20($s0)
    # Line 273
    sw	$s3,16($s0)
    # Line 272
    sw	$s2,12($s0)
    # Line 271
    sw	$v0,8($s0)
    ld	$ra,8($sp)
    # Line 276
    li	$at,-1
    # Line 278
    li	$a0,1
    beq	$s5,$a0,.L0f11b3c0
    # Line 276
    sw	$at,36($s0)
    ld	$a7,56($sp)
    # Line 287
    mtc1	$a7,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 286
    sw	$s5,-19896($gp)
    # Line 287
    li	$v1,5
    beq	$s5,$v1,.L0f11b418
    swc1	$f0,-19892($gp)
    # Line 291
    sw	$zero,60($s0)
    ld	$s5,0($sp)
.L0f11b2c4:
    # Line 292
    la	$t9,gl_malloc
    ld	$a0,64($sp)
    jalr	$t9
    addiu	$a1,$gp,-16008
    # Line 293
    lw	$a0,4($s0)
    # Line 292
    sw	$v0,52($s0)
    # Line 293
    move	$a1,$s2
    # Line 292
    la	$t9,sub_0f120000
    # Line 293
    move	$a2,$s1
    addiu	$a3,$s0,56
    # Line 292
    addiu	$t9,$t9,-16444
    # Line 293
    bal gl_limgzoom
    sd	$a3,40($sp)
    sw	$v0,44($s0)
    # Line 294
    move	$a0,$zero
    move	$a1,$s3
    la	$t9,sub_0f120000
    move	$a2,$s4
    ld	$a3,40($sp)
    addiu	$t9,$t9,-16444
    bal gl_limgzoom
    ld	$s2,32($sp)
    # Line 295
    addiu	$a1,$gp,-16008
    # Line 294
    sw	$v0,48($s0)
    ld	$s4,24($sp)
    # Line 295
    la	$t9,gl_malloc
    lw	$a0,56($s0)
    ld	$s3,16($sp)
    jalr	$t9
    sll	$a0,$a0,0x2
    # Line 296
    lw	$a7,56($s0)
    move	$s1,$zero
    blez	$a7,.L0f11b388
    # Line 295
    sw	$v0,68($s0)
    # Line 296
    move	$s5,$zero
.L0f11b350:
    # Line 297
    la	$t9,gl_malloc
    lw	$a0,20($s0)
    addiu	$a1,$gp,-16008
    jalr	$t9
    addu	$a0,$a0,$a0
    # Line 296
    addiu	$s1,$s1,1
    # Line 297
    lw	$t0,68($s0)
    addu	$t0,$t0,$s5
    sw	$v0,0($t0)
    # Line 296
    lw	$a7,56($s0)
    slt	$a7,$s1,$a7
    bnez	$a7,.L0f11b350
    addiu	$s5,$s5,4
    ld	$s5,0($sp)
.L0f11b388:
    # Line 298
    addiu	$a1,$gp,-16008
    la	$t9,gl_malloc
    lw	$a0,20($s0)
    ld	$s1,72($sp)
    jalr	$t9
    sll	$a0,$a0,0x2
    # Line 299
    sw	$zero,64($s0)
    # Line 298
    sw	$v0,72($s0)
    ld	$ra,8($sp)
.L0f11b3ac:
    # Line 301
    move	$v0,$s0
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f11b3c0:
    move	$a7,$s2
    ld	$s2,32($sp)
    ld	$s5,0($sp)
    ld	$s4,24($sp)
    # Line 278
    beq	$a7,$s1,.L0f11b3ac
    ld	$s3,16($sp)
    # Line 281
    la	$t9,gl_malloc
    addiu	$a1,$gp,-16008
    sll	$a0,$s1,0x2
    jalr	$t9
    ld	$s2,32($sp)
    move	$a1,$v0
    # Line 282
    lw	$a3,20($s0)
    lw	$a2,12($s0)
    la	$t9,sub_0f120000
    lw	$a0,4($s0)
    # Line 281
    sw	$v0,28($s0)
    # Line 282
    addiu	$t9,$t9,-17820
    bal gl_limgzoom
    ld	$s1,72($sp)
    b	.L0f11b3ac
    ld	$ra,8($sp)
.L0f11b418:
    # Line 289
    sw	$a0,60($s0)
    b	.L0f11b2c4
    ld	$s5,0($sp)
.end newzoom

# Function: getzoomrow
# Declared: Line 304 (Source lines: 305-391)
# Address: 0x0f11b424 - 0x0f11b93c (Size: 1304 bytes, Frame: 224)
.ent getzoomrow
getzoomrow:
    # Line 305
    addiu	$sp,$sp,-96
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s7,8($sp)
    beqz	$a2,.L0f11b7b0
    move	$s7,$a1
.L0f11b43c:
    # Line 315
    lw	$at,32($s0)
    li	$v0,1
    beq	$at,$v0,.L0f11b700
    lw	$a1,16($s0)
    li	$v1,1
    # Line 337
    beql	$a1,$v1,.L0f11b7c4
    lw	$a3,24($s0)
    sd	$s1,40($sp)
.L0f11b45c:
    sd	$s4,56($sp)
    # Line 354
    lw	$s4,40($s0)
    lw	$s1,48($s0)
    sll	$s4,$s4,0x4
    addu	$s1,$s1,$s4
    # Line 355
    lw	$s4,8($s1)
    lw	$a5,0($s1)
    lw	$a2,64($s0)
    srl	$s4,$s4,0x1
    addu	$s4,$s4,$a5
    addiu	$s4,$s4,-1
    slt	$a3,$s4,$a2
    bnezl	$a3,.L0f11b4bc
    # Line 364
    lw	$a4,20($s0)
    sd	$s5,32($sp)
    sd	$s2,48($sp)
    # Line 355
    la	$s2,sub_0f120000
    sd	$ra,24($sp)
    b	.L0f11b640
    addiu	$s2,$s2,-15112
.L0f11b4ac:
    ld	$ra,24($sp)
    ld	$s5,32($sp)
    ld	$s2,48($sp)
    # Line 364
    lw	$a4,20($s0)
.L0f11b4bc:
    li	$at,1
    bne	$a5,$at,.L0f11b524
    ld	$s4,56($sp)
    sd	$ra,24($sp)
    ld	$s1,40($sp)
    lw	$a3,56($s0)
    lw	$a0,68($s0)
    lw	$v0,60($s0)
    sll	$a3,$a3,0x2
    addu	$a0,$a0,$a3
    beqz	$v0,.L0f11b904
    lw	$a0,-4($a0)
    # Line 368
    la	$t9,sub_0f120000
    move	$a2,$a4
    addiu	$t9,$t9,-13668
    bal gl_limgzoom
    lw	$a1,52($s0)
    # Line 369
    move	$a1,$s7
    la	$t9,bcopy
    lw	$a2,20($s0)
    lw	$a0,52($s0)
    jalr	$t9
    addu	$a2,$a2,$a2
    ld	$s7,8($sp)
    b	.L0f11b618
    ld	$ra,24($sp)
.L0f11b524:
    sd	$s5,32($sp)
    # Line 376
    la	$t9,bzero
    sll	$a1,$a4,0x2
    sd	$ra,24($sp)
    jalr	$t9
    lw	$a0,72($s0)
    # Line 377
    lw	$a5,0($s1)
    sd	$s2,48($sp)
    blez	$a5,.L0f11b5b0
    move	$s5,$zero
    la	$s4,sub_0f120000
    move	$s2,$zero
    addiu	$s4,$s4,-17012
    # Line 378
    lw	$a3,20($s0)
.L0f11b55c:
    lw	$a2,12($s1)
    lw	$a0,72($s0)
    move	$t9,$s4
    addu	$a2,$a2,$s2
    # Line 377
    addiu	$s2,$s2,2
    # Line 378
    lw	$a4,56($s0)
    lw	$a1,68($s0)
    lh	$a2,0($a2)
    addu	$a4,$a4,$s5
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a1,$a1,$a4
    bal gl_limgzoom
    lw	$a1,0($a1)
    # Line 377
    lw	$a5,0($s1)
    addiu	$s5,$s5,1
    slt	$a3,$s5,$a5
    bnezl	$a3,.L0f11b55c
    # Line 378
    lw	$a3,20($s0)
    ld	$s2,48($sp)
    ld	$s4,56($sp)
.L0f11b5b0:
    # Line 380
    lw	$a3,20($s0)
    lw	$a2,4($s1)
    la	$t9,sub_0f120000
    lw	$a1,8($s0)
    lw	$a0,72($s0)
    addiu	$t9,$t9,-16728
    bal gl_limgzoom
    ld	$s5,32($sp)
    lw	$at,60($s0)
    lw	$a0,8($s0)
    lw	$a4,20($s0)
    beqz	$at,.L0f11b8e8
    ld	$s1,40($sp)
    # Line 382
    la	$t9,sub_0f120000
    move	$a2,$a4
    addiu	$t9,$t9,-13668
    bal gl_limgzoom
    lw	$a1,52($s0)
    # Line 383
    move	$a1,$s7
    la	$t9,bcopy
    lw	$a2,20($s0)
    lw	$a0,52($s0)
    jalr	$t9
    addu	$a2,$a2,$a2
    ld	$s7,8($sp)
    ld	$ra,24($sp)
.L0f11b618:
    # Line 390
    lw	$a3,40($s0)
    addiu	$a3,$a3,1
    sw	$a3,40($s0)
    # Line 391
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
    # Line 364
    lw	$a2,64($s0)
.L0f11b634:
    slt	$at,$s4,$a2
    bnezl	$at,.L0f11b4ac
    lw	$a5,0($s1)
.L0f11b640:
    # Line 357
    lw	$a0,4($s0)
    lw	$t9,0($s0)
    addiu	$v0,$a2,1
    addiu	$a1,$v0,-1
    jalr	$t9
    sw	$v0,64($s0)
    # Line 359
    lw	$a4,56($s0)
    move	$s5,$zero
    # Line 358
    lw	$a5,68($s0)
    # Line 359
    slti	$v1,$a4,2
    bnez	$v1,.L0f11b6a0
    # Line 358
    lw	$a6,0($a5)
    # Line 359
    move	$a0,$zero
.L0f11b674:
    # Line 360
    lw	$at,68($s0)
    addu	$at,$at,$a0
    lw	$a4,4($at)
    sw	$a4,0($at)
    # Line 359
    lw	$a4,56($s0)
    addiu	$s5,$s5,1
    addiu	$a3,$a4,-1
    slt	$a3,$s5,$a3
    bnez	$a3,.L0f11b674
    addiu	$a0,$a0,4
    lw	$a5,68($s0)
.L0f11b6a0:
    # Line 361
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a5
    sw	$a6,-4($a4)
    # Line 362
    move	$t9,$s2
    lw	$a2,20($s0)
    lw	$a3,56($s0)
    lw	$a0,68($s0)
    lw	$a1,44($s0)
    sll	$a3,$a3,0x2
    addu	$a0,$a0,$a3
    bal gl_limgzoom
    lw	$a0,-4($a0)
    lw	$t9,-19900($gp)
    beqzl	$t9,.L0f11b634
    # Line 364
    lw	$a2,64($s0)
    lw	$a2,56($s0)
    lw	$a0,68($s0)
    lw	$a1,20($s0)
    sll	$a2,$a2,0x2
    addu	$a0,$a0,$a2
    jalr	$t9
    lw	$a0,-4($a0)
    b	.L0f11b634
    lw	$a2,64($s0)
.L0f11b700:
    # Line 319
    lw	$at,40($s0)
    mtc1	$at,$f1
    lw	$a4,24($s0)
    cvt.d.w	$f1,$f1
    mtc1	$a4,$f2
    nop
    cvt.d.w	$f2,$f2
    ldc1	$f3,_lit8_3fe0000000000000
    add.d	$f1,$f1,$f3
    div.d	$f1,$f1,$f2
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    cvt.s.d	$f1,$f1
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$a3,12($s0)
    lw	$a4,20($s0)
    mfc1	$a0,$f0
    bne	$a3,$a4,.L0f11b874
    lw	$a2,36($s0)
    sd	$ra,24($sp)
    beq	$a2,$a0,.L0f11b790
    sd	$a0,0($sp)
    # Line 322
    lw	$t9,0($s0)
    ld	$a1,0($sp)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 323
    lw	$t9,-19900($gp)
    ld	$v0,0($sp)
    beqz	$t9,.L0f11b78c
    sw	$v0,36($s0)
    # Line 325
    lw	$a1,20($s0)
    jalr	$t9
    lw	$a0,4($s0)
.L0f11b78c:
    lw	$a4,20($s0)
.L0f11b790:
    # Line 327
    la	$t9,bcopy
    addu	$a2,$a4,$a4
    move	$a1,$s7
    jalr	$t9
    lw	$a0,4($s0)
    ld	$s7,8($sp)
    b	.L0f11b618
    ld	$ra,24($sp)
.L0f11b7b0:
    # Line 315
    sw	$zero,64($s0)
    # Line 314
    sw	$zero,40($s0)
    # Line 313
    li	$v1,-1
    b	.L0f11b43c
    sw	$v1,36($s0)
.L0f11b7c4:
    li	$at,1
    # Line 337
    bnel	$a3,$at,.L0f11b45c
    sd	$s1,40($sp)
    # Line 341
    lw	$a0,4($s0)
    lw	$v0,64($s0)
    sd	$ra,24($sp)
    lw	$t9,0($s0)
    addiu	$v0,$v0,1
    addiu	$a1,$v0,-1
    jalr	$t9
    sw	$v0,64($s0)
    # Line 342
    lw	$a2,20($s0)
    la	$t9,sub_0f120000
    lw	$a1,44($s0)
    lw	$a0,68($s0)
    addiu	$t9,$t9,-15112
    bal gl_limgzoom
    lw	$a0,0($a0)
    lw	$t9,-19900($gp)
    beqzl	$t9,.L0f11b82c
    # Line 344
    lw	$a3,60($s0)
    lw	$a0,68($s0)
    lw	$a1,20($s0)
    jalr	$t9
    lw	$a0,0($a0)
    lw	$a3,60($s0)
.L0f11b82c:
    lw	$a0,68($s0)
    lw	$a4,20($s0)
    beqz	$a3,.L0f11b920
    lw	$a0,0($a0)
    # Line 346
    la	$t9,sub_0f120000
    move	$a2,$a4
    addiu	$t9,$t9,-13668
    bal gl_limgzoom
    lw	$a1,52($s0)
    # Line 347
    move	$a1,$s7
    la	$t9,bcopy
    lw	$a2,20($s0)
    lw	$a0,52($s0)
    jalr	$t9
    addu	$a2,$a2,$a2
    ld	$s7,8($sp)
    b	.L0f11b618
    ld	$ra,24($sp)
.L0f11b874:
    sd	$ra,24($sp)
    # Line 327
    beq	$a2,$a0,.L0f11b8c8
    sd	$a0,0($sp)
    # Line 331
    lw	$t9,0($s0)
    ld	$a1,0($sp)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 332
    la	$t9,sub_0f120000
    lw	$a2,20($s0)
    lw	$a1,8($s0)
    addiu	$t9,$t9,-17576
    bal gl_limgzoom
    lw	$a0,28($s0)
    # Line 333
    lw	$t9,-19900($gp)
    ld	$at,0($sp)
    beqz	$t9,.L0f11b8c4
    sw	$at,36($s0)
    # Line 335
    lw	$a1,20($s0)
    jalr	$t9
    lw	$a0,8($s0)
.L0f11b8c4:
    lw	$a4,20($s0)
.L0f11b8c8:
    # Line 337
    la	$t9,bcopy
    addu	$a2,$a4,$a4
    move	$a1,$s7
    jalr	$t9
    lw	$a0,8($s0)
    ld	$s7,8($sp)
    b	.L0f11b618
    ld	$ra,24($sp)
.L0f11b8e8:
    # Line 386
    la	$t9,bcopy
    move	$a1,$s7
    jalr	$t9
    addu	$a2,$a4,$a4
    ld	$s7,8($sp)
    b	.L0f11b618
    ld	$ra,24($sp)
.L0f11b904:
    # Line 372
    la	$t9,bcopy
    move	$a1,$s7
    jalr	$t9
    addu	$a2,$a4,$a4
    ld	$s7,8($sp)
    b	.L0f11b618
    ld	$ra,24($sp)
.L0f11b920:
    # Line 350
    la	$t9,bcopy
    move	$a1,$s7
    jalr	$t9
    addu	$a2,$a4,$a4
    ld	$s7,8($sp)
    b	.L0f11b618
    ld	$ra,24($sp)
.end getzoomrow

# Function: freezoom
# Declared: Line 393 (Source lines: 394-414)
# Address: 0x0f11b93c - 0x0f11ba64 (Size: 296 bytes, Frame: 48)
.ent freezoom
freezoom:
    # Line 394
    lw	$a1,20($a0)
    li	$v0,1
    lw	$at,32($a0)
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    bne	$at,$v0,.L0f11b97c
    move	$s1,$a0
    lw	$v1,12($s1)
    beq	$v1,$a1,.L0f11ba24
    sd	$ra,8($sp)
    # Line 399
    la	$t9,gl_free
    lw	$a1,-14404($gp)
    jalr	$t9
    lw	$a0,28($s1)
    b	.L0f11ba28
    # Line 410
    la	$t9,gl_free
.L0f11b97c:
    # Line 399
    la	$t9,sub_0f120000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-15228
    # Line 402
    bal gl_limgzoom
    lw	$a0,44($s1)
    la	$t9,sub_0f120000
    # Line 403
    lw	$a1,24($s1)
    addiu	$t9,$t9,-15228
    bal gl_limgzoom
    lw	$a0,48($s1)
    # Line 404
    la	$t9,gl_free
    sd	$s5,16($sp)
    lw	$a1,-14404($gp)
    jalr	$t9
    lw	$a0,52($s1)
    # Line 405
    lw	$at,56($s1)
    sd	$s3,24($sp)
    blez	$at,.L0f11ba00
    move	$s5,$zero
    move	$s3,$zero
    # Line 406
    lw	$a0,68($s1)
.L0f11b9d0:
    lw	$a1,-14404($gp)
    la	$t9,gl_free
    addu	$a0,$a0,$s3
    # Line 405
    addiu	$s3,$s3,4
    # Line 406
    jalr	$t9
    lw	$a0,0($a0)
    # Line 405
    lw	$a2,56($s1)
    addiu	$s5,$s5,1
    slt	$a2,$s5,$a2
    bnezl	$a2,.L0f11b9d0
    # Line 406
    lw	$a0,68($s1)
    ld	$s3,24($sp)
.L0f11ba00:
    # Line 407
    la	$t9,gl_free
    lw	$a1,-14404($gp)
    lw	$a0,68($s1)
    jalr	$t9
    ld	$s5,16($sp)
    # Line 408
    la	$t9,gl_free
    lw	$a1,-14404($gp)
    jalr	$t9
    lw	$a0,72($s1)
.L0f11ba24:
    # Line 410
    la	$t9,gl_free
.L0f11ba28:
    lw	$a1,-14404($gp)
    jalr	$t9
    lw	$a0,4($s1)
    # Line 411
    la	$t9,gl_free
    lw	$a1,-14404($gp)
    jalr	$t9
    lw	$a0,8($s1)
    # Line 412
    la	$t9,gl_free
    move	$a0,$s1
    jalr	$t9
    lw	$a1,-14404($gp)
    ld	$s1,0($sp)
    ld	$ra,8($sp)
    # Line 414
    jr	$ra
    addiu	$sp,$sp,48
.end freezoom

# Function: makexmap
# Declared: Line 420 (Source lines: 425-430)
# Address: 0x0f11ba64 - 0x0f11bb58 (Size: 244 bytes, Frame: 0)
.ent makexmap
makexmap:
    # Line 425
    move	$a6,$a1
    andi	$at,$a3,0x1
    blez	$a3,.L0f11bb50
    move	$a5,$zero
    mtc1	$a3,$f5
    move	$a7,$a3
    cvt.d.w	$f5,$f5
    mtc1	$a2,$f4
    ldc1	$f6,_lit8_3fe0000000000000
    beqz	$at,.L0f11bac8
    cvt.s.w	$f4,$f4
    # Line 428
    mtc1	$a5,$f0
    nop
    cvt.d.w	$f0,$f0
    add.d	$f0,$f0,$f6
    div.d	$f0,$f0,$f5
    cvt.s.d	$f0,$f0
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    # Line 425
    addiu	$a6,$a6,4
    addiu	$a5,$a5,1
    # Line 428
    addu	$v0,$v0,$v0
    addu	$v0,$v0,$a0
    sw	$v0,-4($a6)
.L0f11bac8:
    sra	$v1,$a7,0x1
    move	$t1,$a6
    beqz	$v1,.L0f11bb50
    move	$t0,$a5
    move	$a1,$t1
    move	$a2,$t0
.L0f11bae0:
    mtc1	$a2,$f2
    nop
    cvt.d.w	$f2,$f2
    add.d	$f2,$f2,$f6
    div.d	$f2,$f2,$f5
    # Line 425
    addiu	$a2,$a2,1
    # Line 428
    mtc1	$a2,$f1
    nop
    cvt.d.w	$f1,$f1
    add.d	$f1,$f1,$f6
    div.d	$f1,$f1,$f5
    cvt.s.d	$f2,$f2
    cvt.s.d	$f1,$f1
    mul.s	$f2,$f2,$f4
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    trunc.w.s	$f1,$f1
    # Line 425
    addiu	$a1,$a1,8
    addiu	$a2,$a2,1
    # Line 428
    addu	$at,$at,$at
    mfc1	$a4,$f1
    addu	$at,$at,$a0
    sw	$at,-8($a1)
    addu	$a4,$a4,$a4
    addu	$a4,$a4,$a0
    # Line 425
    bne	$a3,$a2,.L0f11bae0
    # Line 428
    sw	$a4,-4($a1)
.L0f11bb50:
    # Line 430
    jr	$ra
    nop
.end makexmap

# Function: xscalebuf
# Declared: Line 432 (Source lines: 433-449)
# Address: 0x0f11bb58 - 0x0f11bd8c (Size: 564 bytes, Frame: 0)
.ent xscalebuf
xscalebuf:
    # Line 433
    slti	$at,$a2,8
    bnez	$at,.L0f11bce8
    sra	$a4,$a2,0x2
    srl	$a4,$a4,0x1d
    addu	$a4,$a4,$a2
    sra	$a4,$a4,0x3
    andi	$v0,$a4,0x1
    beqz	$v0,.L0f11bbec
    move	$t1,$a2
    # Line 435
    lw	$a3,0($a0)
    lh	$a3,0($a3)
    sh	$a3,0($a1)
    # Line 436
    lw	$v1,4($a0)
    lh	$v1,0($v1)
    sh	$v1,2($a1)
    # Line 437
    lw	$v0,8($a0)
    lh	$v0,0($v0)
    sh	$v0,4($a1)
    # Line 438
    lw	$at,12($a0)
    lh	$at,0($at)
    sh	$at,6($a1)
    # Line 439
    lw	$a3,16($a0)
    lh	$a3,0($a3)
    sh	$a3,8($a1)
    # Line 440
    lw	$v1,20($a0)
    lh	$v1,0($v1)
    sh	$v1,10($a1)
    # Line 441
    lw	$v0,24($a0)
    lh	$v0,0($v0)
    sh	$v0,12($a1)
    # Line 442
    lw	$at,28($a0)
    # Line 445
    addiu	$a2,$a2,-8
    # Line 442
    lh	$at,0($at)
    # Line 444
    addiu	$a0,$a0,32
    # Line 443
    addiu	$a1,$a1,16
    # Line 442
    sh	$at,-2($a1)
    move	$t1,$a2
.L0f11bbec:
    move	$a7,$a0
    move	$t0,$a1
    sra	$at,$a4,0x1
    beqz	$at,.L0f11bce8
    move	$a6,$t0
    move	$a4,$t1
    move	$a5,$a7
.L0f11bc08:
    # Line 435
    lw	$at,0($a5)
    lh	$at,0($at)
    sh	$at,0($a6)
    # Line 436
    lw	$a3,4($a5)
    lh	$a3,0($a3)
    sh	$a3,2($a6)
    # Line 437
    lw	$v1,8($a5)
    lh	$v1,0($v1)
    sh	$v1,4($a6)
    # Line 438
    lw	$v0,12($a5)
    lh	$v0,0($v0)
    sh	$v0,6($a6)
    # Line 439
    lw	$at,16($a5)
    lh	$at,0($at)
    sh	$at,8($a6)
    # Line 440
    lw	$a3,20($a5)
    lh	$a3,0($a3)
    sh	$a3,10($a6)
    # Line 441
    lw	$v1,24($a5)
    lh	$v1,0($v1)
    sh	$v1,12($a6)
    # Line 442
    lw	$v0,28($a5)
    lh	$v0,0($v0)
    sh	$v0,14($a6)
    # Line 435
    lw	$at,32($a5)
    lh	$at,0($at)
    sh	$at,16($a6)
    # Line 436
    lw	$a3,36($a5)
    lh	$a3,0($a3)
    sh	$a3,18($a6)
    # Line 437
    lw	$v1,40($a5)
    lh	$v1,0($v1)
    sh	$v1,20($a6)
    # Line 438
    lw	$v0,44($a5)
    lh	$v0,0($v0)
    sh	$v0,22($a6)
    # Line 439
    lw	$at,48($a5)
    lh	$at,0($at)
    sh	$at,24($a6)
    # Line 440
    lw	$a3,52($a5)
    lh	$a3,0($a3)
    sh	$a3,26($a6)
    # Line 441
    lw	$v1,56($a5)
    lh	$v1,0($v1)
    sh	$v1,28($a6)
    # Line 444
    addiu	$a5,$a5,64
    # Line 442
    lw	$v0,-4($a5)
    # Line 443
    addiu	$a6,$a6,32
    # Line 445
    addiu	$a4,$a4,-16
    # Line 442
    lh	$v0,0($v0)
    # Line 445
    slti	$v1,$a4,8
    beqz	$v1,.L0f11bc08
    # Line 442
    sh	$v0,-2($a6)
    move	$a1,$a6
    move	$a0,$a5
    move	$a2,$a4
.L0f11bce8:
    # Line 447
    li	$a4,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a4,.L0f11bd84
    addiu	$a6,$a2,1
    andi	$a5,$a6,0x3
    beqz	$a5,.L0f11bd28
    move	$t0,$a1
.L0f11bd04:
    addiu	$a2,$a2,-1
    # Line 448
    lw	$v0,0($a0)
    addiu	$a1,$a1,2
    addiu	$a0,$a0,4
    lh	$v0,0($v0)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f11bd04
    sh	$v0,-2($a1)
    move	$t0,$a1
.L0f11bd28:
    sra	$v1,$a6,0x2
    move	$a7,$a2
    beqz	$v1,.L0f11bd84
    move	$a5,$a0
    move	$a2,$a7
    move	$a0,$t0
    move	$a1,$a5
.L0f11bd44:
    lw	$v1,0($a1)
    lh	$v1,0($v1)
    sh	$v1,0($a0)
    lw	$v0,4($a1)
    lh	$v0,0($v0)
    sh	$v0,2($a0)
    lw	$at,8($a1)
    lh	$at,0($at)
    sh	$at,4($a0)
    lw	$a3,12($a1)
    addiu	$a0,$a0,8
    addiu	$a1,$a1,16
    lh	$a3,0($a3)
    # Line 447
    addiu	$a2,$a2,-4
    bne	$a2,$a4,.L0f11bd44
    # Line 448
    sh	$a3,-2($a0)
.L0f11bd84:
    # Line 449
    jr	$ra
    nop
.end xscalebuf

# Function: addrow
# Declared: Line 455 (Source lines: 456-472)
# Address: 0x0f11bd8c - 0x0f11bea8 (Size: 284 bytes, Frame: 0)
.ent addrow
addrow:
    # Line 456
    slti	$at,$a3,8
    bnez	$at,.L0f11be6c
    # Line 470
    li	$a5,-1
.L0f11bd98:
    # Line 458
    lh	$v0,0($a1)
    mult	$v0,$a2
    lw	$a4,0($a0)
    mflo	$at
    addu	$a4,$a4,$at
    sw	$a4,0($a0)
    # Line 459
    lh	$v1,2($a1)
    mult	$v1,$a2
    lw	$at,4($a0)
    mflo	$v0
    addu	$at,$at,$v0
    sw	$at,4($a0)
    # Line 460
    lh	$a4,4($a1)
    mult	$a4,$a2
    lw	$v0,8($a0)
    mflo	$v1
    addu	$v0,$v0,$v1
    sw	$v0,8($a0)
    # Line 461
    lh	$at,6($a1)
    mult	$at,$a2
    lw	$v1,12($a0)
    mflo	$a4
    addu	$v1,$v1,$a4
    sw	$v1,12($a0)
    # Line 462
    lh	$v0,8($a1)
    mult	$v0,$a2
    lw	$a4,16($a0)
    mflo	$at
    addu	$a4,$a4,$at
    sw	$a4,16($a0)
    # Line 463
    lh	$v1,10($a1)
    mult	$v1,$a2
    lw	$at,20($a0)
    mflo	$v0
    addu	$at,$at,$v0
    sw	$at,20($a0)
    # Line 464
    lh	$a4,12($a1)
    mult	$a4,$a2
    lw	$v0,24($a0)
    mflo	$v1
    addu	$v0,$v0,$v1
    sw	$v0,24($a0)
    # Line 465
    lh	$at,14($a1)
    mult	$at,$a2
    # Line 467
    addiu	$a1,$a1,16
    # Line 466
    addiu	$a0,$a0,32
    # Line 468
    addiu	$a3,$a3,-8
    # Line 465
    lw	$v0,-4($a0)
    # Line 468
    slti	$v1,$a3,8
    # Line 465
    mflo	$a4
    addu	$v0,$v0,$a4
    # Line 468
    beqz	$v1,.L0f11bd98
    # Line 465
    sw	$v0,-4($a0)
.L0f11be6c:
    # Line 470
    addiu	$a3,$a3,-1
    beq	$a3,$a5,.L0f11bea0
    nop
.L0f11be78:
    # Line 471
    lh	$at,0($a1)
    mult	$at,$a2
    addiu	$a0,$a0,4
    addiu	$a1,$a1,2
    lw	$v1,-4($a0)
    # Line 470
    addiu	$a3,$a3,-1
    # Line 471
    mflo	$a4
    addu	$v1,$v1,$a4
    # Line 470
    bne	$a3,$a5,.L0f11be78
    # Line 471
    sw	$v1,-4($a0)
.L0f11bea0:
    # Line 472
    jr	$ra
    nop
.end addrow

# Function: divrow
# Declared: Line 474 (Source lines: 475-491)
# Address: 0x0f11bea8 - 0x0f11bfa0 (Size: 248 bytes, Frame: 0)
.ent divrow
divrow:
    # Line 475
    slti	$at,$a3,8
    bnez	$at,.L0f11bf68
    # Line 489
    li	$a5,-1
.L0f11beb4:
    # Line 477
    lw	$v0,0($a0)
    div	$zero,$v0,$a2
    mflo	$at
    sh	$at,0($a1)
    # Line 478
    lw	$a4,4($a0)
    div	$zero,$a4,$a2
    mflo	$v1
    sh	$v1,2($a1)
    # Line 479
    lw	$v0,8($a0)
    div	$zero,$v0,$a2
    mflo	$at
    sh	$at,4($a1)
    # Line 480
    lw	$a4,12($a0)
    div	$zero,$a4,$a2
    mflo	$v1
    sh	$v1,6($a1)
    # Line 481
    lw	$v0,16($a0)
    div	$zero,$v0,$a2
    mflo	$at
    sh	$at,8($a1)
    # Line 482
    lw	$a4,20($a0)
    div	$zero,$a4,$a2
    mflo	$v1
    sh	$v1,10($a1)
    # Line 483
    lw	$v0,24($a0)
    div	$zero,$v0,$a2
    mflo	$at
    sh	$at,12($a1)
    # Line 484
    lw	$a4,28($a0)
    div	$zero,$a4,$a2
    teq	$a2,$zero,0x7
    # Line 483
    teq	$a2,$zero,0x7
    # Line 482
    teq	$a2,$zero,0x7
    # Line 481
    teq	$a2,$zero,0x7
    # Line 480
    teq	$a2,$zero,0x7
    # Line 479
    teq	$a2,$zero,0x7
    # Line 486
    addiu	$a0,$a0,32
    # Line 478
    teq	$a2,$zero,0x7
    # Line 485
    addiu	$a1,$a1,16
    # Line 477
    teq	$a2,$zero,0x7
    # Line 487
    addiu	$a3,$a3,-8
    slti	$v1,$a3,8
    # Line 484
    mflo	$v0
    # Line 487
    beqz	$v1,.L0f11beb4
    # Line 484
    sh	$v0,-2($a1)
.L0f11bf68:
    # Line 489
    addiu	$a3,$a3,-1
    beq	$a3,$a5,.L0f11bf98
    nop
.L0f11bf74:
    # Line 490
    lw	$a4,0($a0)
    div	$zero,$a4,$a2
    teq	$a2,$zero,0x7
    addiu	$a1,$a1,2
    addiu	$a0,$a0,4
    # Line 489
    addiu	$a3,$a3,-1
    # Line 490
    mflo	$v1
    # Line 489
    bne	$a3,$a5,.L0f11bf74
    # Line 490
    sh	$v1,-2($a1)
.L0f11bf98:
    # Line 491
    jr	$ra
    nop
.end divrow

# Function: myfloor
# Declared: Line 493 (Source lines: 497-500)
# Address: 0x0f11bfa0 - 0x0f11bfc4 (Size: 36 bytes, Frame: 0)
.ent myfloor
myfloor:
    # Line 497
    trunc.w.s	$f0,$f12
    cvt.s.w	$f1,$f0
    c.lt.s	$f12,$f1
    mfc1	$a2,$f0
    bc1f	.L0f11bfbc
    move	$v0,$a2
    # Line 499
    addiu	$v0,$a2,-1
.L0f11bfbc:
    # Line 500
    jr	$ra
    nop
.end myfloor

# Function: makefilt
# Declared: Line 504 (Source lines: 505-568)
# Address: 0x0f11bfc4 - 0x0f11c484 (Size: 1216 bytes, Frame: 144)
.ent makefilt
makefilt:
    # Line 505
    addiu	$sp,$sp,-272
    sd	$s1,160($sp)
    sd	$s7,168($sp)
    sd	$a2,48($sp)
    sd	$a3,40($sp)
    sd	$a0,64($sp)
    # Line 514
    sll	$a0,$a2,0x4
    sd	$a1,72($sp)
    la	$a1,sub_0f020000
    la	$t9,gl_malloc
    sd	$ra,88($sp)
    addiu	$a1,$a1,21488
    jalr	$t9
    sd	$a1,56($sp)
    sd	$s0,192($sp)
    sd	$s5,184($sp)
    sd	$s8,176($sp)
    sdc1	$f20,152($sp)
    sdc1	$f26,144($sp)
    sdc1	$f30,112($sp)
    move	$s1,$v0
    sd	$v0,96($sp)
    # Line 516
    sw	$zero,-19888($gp)
    # Line 517
    ld	$a4,48($sp)
    # Line 515
    ld	$a5,40($sp)
    # Line 517
    move	$s7,$zero
    blez	$a4,.L0f11c46c
    # Line 515
    sw	$zero,0($a5)
    sd	$s2,224($sp)
    sd	$s3,216($sp)
    sd	$s6,208($sp)
    sd	$s4,200($sp)
    sdc1	$f22,136($sp)
    sdc1	$f24,128($sp)
    sdc1	$f28,120($sp)
    # Line 517
    ldc1	$f30,_lit8_3fe0000000000000
    ld	$v1,48($sp)
    la	$s0,sub_0f120000
    ld	$at,72($sp)
    mtc1	$v1,$f26
    addiu	$s0,$s0,-14696
    mtc1	$at,$f20
    cvt.s.w	$f26,$f26
    slt	$s5,$v1,$at
    mtc1	$v1,$f1
    addiu	$s8,$at,-1
    sd	$s8,80($sp)
    cvt.d.w	$f1,$f1
    la	$s8,sub_0f120000
    sd	$s5,104($sp)
    la	$s5,sub_0f120000
    cvt.s.w	$f20,$f20
    addiu	$s8,$s8,-14948
    addiu	$s5,$s5,-16480
    b	.L0f11c1dc
    sdc1	$f1,0($sp)
.L0f11c0a4:
    ld	$a1,56($sp)
.L0f11c0a8:
    # Line 529
    addu	$v1,$s2,$s2
    # Line 527
    subu	$at,$a6,$s2
    addiu	$v0,$at,1
    # Line 530
    addu	$a0,$at,$at
    addiu	$a0,$a0,2
    # Line 527
    sw	$v0,0($s1)
    # Line 529
    ld	$a2,64($sp)
    # Line 528
    lw	$ra,-19888($gp)
    # Line 530
    la	$t9,gl_malloc
    # Line 529
    addu	$v1,$v1,$a2
    # Line 528
    addu	$ra,$ra,$at
    addiu	$ra,$ra,1
    sw	$ra,-19888($gp)
    # Line 530
    jalr	$t9
    # Line 529
    sw	$v1,8($s1)
    # Line 532
    move	$s3,$zero
    lw	$a2,0($s1)
    # Line 531
    sw	$zero,4($s1)
    # Line 532
    blez	$a2,.L0f11c1b0
    # Line 530
    sw	$v0,12($s1)
    # Line 532
    move	$s4,$zero
    mtc1	$s2,$f1
    nop
    cvt.s.w	$f1,$f1
    sdc1	$f1,32($sp)
.L0f11c10c:
    # Line 535
    mtc1	$s3,$f28
    nop
    cvt.s.w	$f28,$f28
    ldc1	$f29,32($sp)
    add.s	$f28,$f28,$f29
    lwc1	$f12,_lit_3f800000
    add.s	$f12,$f28,$f12
    div.s	$f12,$f12,$f20
    sub.s	$f12,$f12,$f24
    li	$a1,1
    move	$t9,$s0
    bal gl_limgzoom
    mul.s	$f12,$f12,$f26
    div.s	$f12,$f28,$f20
    mov.s	$f22,$f0
    sub.s	$f12,$f12,$f24
    move	$a1,$zero
    move	$t9,$s0
    bal gl_limgzoom
    mul.s	$f12,$f12,$f26
    # Line 532
    addiu	$s3,$s3,1
    # Line 536
    sub.s	$f0,$f22,$f0
    lwc1	$f1,_lit_45800000
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f30
    trunc.w.d	$f0,$f0
    lw	$v1,12($s1)
    mfc1	$at,$f0
    addu	$v1,$v1,$s4
    sh	$at,0($v1)
    # Line 537
    lw	$a5,12($s1)
    lw	$at,4($s1)
    # Line 532
    lw	$a2,0($s1)
    # Line 537
    addu	$a5,$a5,$s4
    lh	$a5,0($a5)
    # Line 532
    addiu	$s4,$s4,2
    slt	$a4,$s3,$a2
    # Line 537
    addu	$a5,$a5,$at
    # Line 532
    bnez	$a4,.L0f11c10c
    # Line 537
    sw	$a5,4($s1)
.L0f11c1b0:
    ld	$a4,40($sp)
.L0f11c1b4:
    # Line 555
    lw	$a4,0($a4)
    # Line 517
    addiu	$s7,$s7,1
    ld	$a5,40($sp)
    # Line 555
    slt	$a4,$a4,$a2
    beqz	$a4,.L0f11c1d0
    # Line 517
    ld	$at,48($sp)
    # Line 565
    sw	$a2,0($a5)
.L0f11c1d0:
    # Line 566
    addiu	$s1,$s1,16
    # Line 517
    beql	$at,$s7,.L0f11c43c
    ldc1	$f30,112($sp)
.L0f11c1dc:
    mtc1	$s7,$f28
    nop
    cvt.s.w	$f28,$f28
    ld	$v1,104($sp)
    beqz	$v1,.L0f11c274
    cvt.d.s	$f22,$f28
    # Line 519
    bal gl_limgzoom
    move	$t9,$s8
    # Line 521
    add.d	$f24,$f22,$f30
    ldc1	$f25,0($sp)
    div.d	$f24,$f24,$f25
    div.s	$f28,$f0,$f26
    cvt.s.d	$f24,$f24
    sub.s	$f12,$f24,$f28
    mul.s	$f12,$f12,$f20
    ldc1	$f13,_lit8_3f1a36e2eb1c432d
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f13
    move	$t9,$s5
    bal gl_limgzoom
    cvt.s.d	$f12,$f12
    # Line 522
    add.s	$f12,$f28,$f24
    mul.s	$f12,$f12,$f20
    ldc1	$f13,_lit8_bf1a36e2eb1c432d
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f13
    # Line 521
    move	$s2,$v0
    # Line 522
    move	$t9,$s5
    bal gl_limgzoom
    cvt.s.d	$f12,$f12
    ld	$a4,72($sp)
    bltz	$s2,.L0f11c42c
    move	$a6,$v0
.L0f11c260:
    # Line 524
    slt	$a4,$v0,$a4
    bnez	$a4,.L0f11c0a8
    ld	$a1,56($sp)
    b	.L0f11c0a4
    ld	$a6,80($sp)
.L0f11c274:
    # Line 544
    div.s	$f24,$f28,$f26
    # Line 541
    bal gl_limgzoom
    move	$t9,$s8
    # Line 544
    div.s	$f12,$f0,$f20
    sdc1	$f12,16($sp)
    sub.s	$f12,$f24,$f12
    mul.s	$f12,$f12,$f20
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f30
    ldc1	$f13,_lit8_3f1a36e2eb1c432d
    add.d	$f12,$f12,$f13
    move	$t9,$s5
    bal gl_limgzoom
    cvt.s.d	$f12,$f12
    ldc1	$f28,_lit8_3ff0000000000000
    # Line 545
    add.d	$f28,$f22,$f28
    ldc1	$f29,0($sp)
    div.d	$f28,$f28,$f29
    cvt.s.d	$f28,$f28
    ldc1	$f12,16($sp)
    add.s	$f12,$f12,$f28
    mul.s	$f12,$f12,$f20
    ldc1	$f14,_lit8_bfe0000000000000
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f14
    ldc1	$f13,_lit8_bf1a36e2eb1c432d
    add.d	$f12,$f12,$f13
    # Line 544
    move	$s2,$v0
    # Line 545
    move	$t9,$s5
    bal gl_limgzoom
    cvt.s.d	$f12,$f12
    ld	$a5,72($sp)
    bltz	$s2,.L0f11c434
    move	$a6,$v0
.L0f11c2fc:
    # Line 547
    slt	$a5,$v0,$a5
    bnez	$a5,.L0f11c310
    ld	$a1,56($sp)
    ld	$a6,80($sp)
    ld	$a1,56($sp)
.L0f11c310:
    # Line 552
    addu	$t1,$s2,$s2
    # Line 550
    subu	$a7,$a6,$s2
    addiu	$t0,$a7,1
    # Line 553
    addu	$a0,$a7,$a7
    addiu	$a0,$a0,2
    # Line 550
    sw	$t0,0($s1)
    # Line 552
    ld	$t2,64($sp)
    # Line 553
    la	$t9,gl_malloc
    # Line 551
    lw	$a6,-19888($gp)
    # Line 552
    addu	$t1,$t1,$t2
    sw	$t1,8($s1)
    # Line 551
    addu	$a6,$a6,$a7
    addiu	$a6,$a6,1
    # Line 553
    jalr	$t9
    # Line 551
    sw	$a6,-19888($gp)
    # Line 555
    move	$s3,$zero
    lw	$a2,0($s1)
    # Line 554
    sw	$zero,4($s1)
    # Line 555
    move	$s6,$s2
    blez	$a2,.L0f11c1b0
    # Line 553
    sw	$v0,12($s1)
    # Line 555
    ld	$a4,72($sp)
    mtc1	$a4,$f1
    nop
    cvt.d.w	$f1,$f1
    move	$s4,$zero
    sdc1	$f24,8($sp)
    sdc1	$f1,24($sp)
.L0f11c380:
    # Line 559
    mtc1	$s6,$f24
    nop
    cvt.d.w	$f24,$f24
    add.d	$f24,$f24,$f30
    ldc1	$f25,24($sp)
    div.d	$f24,$f24,$f25
    cvt.s.d	$f24,$f24
    sub.s	$f12,$f28,$f24
    li	$a1,1
    move	$t9,$s0
    bal gl_limgzoom
    mul.s	$f12,$f12,$f20
    # Line 555
    addiu	$s3,$s3,1
    # Line 559
    ldc1	$f12,8($sp)
    mov.s	$f22,$f0
    sub.s	$f12,$f12,$f24
    move	$a1,$zero
    move	$t9,$s0
    bal gl_limgzoom
    mul.s	$f12,$f12,$f20
    # Line 560
    sub.s	$f0,$f22,$f0
    lwc1	$f1,_lit_45800000
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f30
    trunc.w.d	$f0,$f0
    lw	$a2,12($s1)
    mfc1	$v1,$f0
    addu	$a2,$a2,$s4
    sh	$v1,0($a2)
    # Line 555
    addiu	$s6,$s6,1
    # Line 561
    lw	$at,12($s1)
    lw	$v1,4($s1)
    # Line 555
    lw	$a2,0($s1)
    # Line 561
    addu	$at,$at,$s4
    lh	$at,0($at)
    # Line 555
    addiu	$s4,$s4,2
    slt	$a5,$s3,$a2
    # Line 561
    addu	$at,$at,$v1
    # Line 555
    bnez	$a5,.L0f11c380
    # Line 561
    sw	$at,4($s1)
    b	.L0f11c1b4
    ld	$a4,40($sp)
.L0f11c42c:
    b	.L0f11c260
    # Line 524
    move	$s2,$zero
.L0f11c434:
    b	.L0f11c2fc
    # Line 547
    move	$s2,$zero
.L0f11c43c:
    ldc1	$f28,120($sp)
    ldc1	$f24,128($sp)
    ldc1	$f22,136($sp)
    ldc1	$f26,144($sp)
    ldc1	$f20,152($sp)
    ld	$s8,176($sp)
    ld	$s5,184($sp)
    ld	$s0,192($sp)
    ld	$s4,200($sp)
    ld	$s6,208($sp)
    ld	$s3,216($sp)
    ld	$s2,224($sp)
.L0f11c46c:
    ld	$v0,96($sp)
    ld	$ra,88($sp)
    # Line 568
    ld	$s1,160($sp)
    ld	$s7,168($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end makefilt

# Function: freefilt
# Declared: Line 571 (Source lines: 572-581)
# Address: 0x0f11c484 - 0x0f11c4f8 (Size: 116 bytes, Frame: 192)
.ent freefilt
freefilt:
    # Line 572
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s8,24($sp)
    move	$s8,$a0
    sd	$s1,0($sp)
    sd	$s7,16($sp)
    # Line 576
    li	$s7,-1
    sd	$s5,8($sp)
    addiu	$s5,$a1,-1
    beq	$s5,$s7,.L0f11c4cc
    # Line 575
    move	$s1,$a0
.L0f11c4b0:
    # Line 577
    la	$t9,gl_free
    lw	$a1,-14404($gp)
    # Line 576
    addiu	$s5,$s5,-1
    # Line 577
    jalr	$t9
    lw	$a0,12($s1)
    # Line 576
    bne	$s5,$s7,.L0f11c4b0
    # Line 578
    addiu	$s1,$s1,16
.L0f11c4cc:
    # Line 580
    move	$a0,$s8
    lw	$a1,-14404($gp)
    la	$t9,gl_free
    ld	$s7,16($sp)
    ld	$s5,8($sp)
    jalr	$t9
    ld	$s1,0($sp)
    ld	$ra,32($sp)
    # Line 581
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end freefilt

# Function: applyxfilt
# Declared: Line 583 (Source lines: 589-604)
# Address: 0x0f11c4f8 - 0x0f11c59c (Size: 164 bytes, Frame: 0)
.ent applyxfilt
applyxfilt:
    # Line 589
    li	$a7,-1
    addiu	$t0,$a2,-1
    beq	$t0,$a7,.L0f11c594
    nop
    b	.L0f11c534
    li	$t3,1
.L0f11c510:
    # Line 600
    addiu	$a0,$a0,2
    lw	$v0,4($a1)
    div	$zero,$a3,$v0
    teq	$v0,$zero,0x7
    mflo	$at
    nop
    sh	$at,-2($a0)
.L0f11c52c:
    # Line 589
    beq	$t0,$a7,.L0f11c594
    # Line 602
    addiu	$a1,$a1,16
.L0f11c534:
    # Line 589
    lw	$t2,0($a1)
    addiu	$t0,$t0,-1
    # Line 596
    move	$a3,$zero
    # Line 589
    beq	$t2,$t3,.L0f11c584
    lw	$t1,8($a1)
    # Line 595
    move	$a4,$t1
    # Line 598
    addiu	$a6,$t2,-1
    beq	$a6,$a7,.L0f11c510
    # Line 594
    lw	$a5,12($a1)
.L0f11c558:
    # Line 599
    lh	$a2,0($a5)
    lh	$at,0($a4)
    mult	$a2,$at
    addiu	$a4,$a4,2
    addiu	$a5,$a5,2
    # Line 598
    addiu	$a6,$a6,-1
    # Line 599
    mflo	$v1
    # Line 598
    bne	$a6,$a7,.L0f11c558
    # Line 599
    addu	$a3,$v1,$a3
    b	.L0f11c510
    nop
.L0f11c584:
    # Line 591
    lh	$v0,0($t1)
    addiu	$a0,$a0,2
    b	.L0f11c52c
    sh	$v0,-2($a0)
.L0f11c594:
    # Line 604
    jr	$ra
    nop
.end applyxfilt

# Function: filterrad
# Declared: Line 606 (Source lines: 608-618)
# Address: 0x0f11c59c - 0x0f11c614 (Size: 120 bytes, Frame: 0)
.ent filterrad
filterrad:
    # Line 608
    li	$v1,4
    lw	$a1,-19896($gp)
    li	$at,2
    beq	$a1,$at,.L0f11c5e8
    li	$v0,3
    beq	$a1,$v0,.L0f11c600
    # Line 612
    lwc1	$f0,-19892($gp)
    # Line 608
    beq	$a1,$v1,.L0f11c608
    li	$a0,5
    beq	$a1,$a0,.L0f11c5d0
    # Line 618
    mtc1	$zero,$f0
    jr	$ra
    nop
.L0f11c5d0:
    # Line 616
    ldc1	$f1,_lit8_4000000000000000
    lwc1	$f0,-19892($gp)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    jr	$ra
    cvt.s.d	$f0,$f0
.L0f11c5e8:
    # Line 610
    ldc1	$f1,_lit8_3fe0000000000000
    lwc1	$f0,-19892($gp)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    jr	$ra
    cvt.s.d	$f0,$f0
.L0f11c600:
    # Line 612
    jr	$ra
    nop
.L0f11c608:
    # Line 614
    lwc1	$f0,-19892($gp)
    jr	$ra
    nop
.end filterrad

# Function: quadinteg
# Declared: Line 621 (Source lines: 622-628)
# Address: 0x0f11c614 - 0x0f11c698 (Size: 132 bytes, Frame: 0)
.ent quadinteg
quadinteg:
    # Line 622
    ldc1	$f0,_lit8_bff0000000000000
    cvt.d.s	$f5,$f12
    c.lt.d	$f5,$f0
    nop
    bc1t	.L0f11c690
    # Line 624
    ldc1	$f1,_lit8_bfe0000000000000
    c.lt.d	$f5,$f1
    # Line 628
    ldc1	$f1,_lit8_3fe0000000000000
    # Line 624
    bc1f	.L0f11c674
    # Line 628
    ldc1	$f0,_lit8_bfe5555555555555
    # Line 626
    ldc1	$f2,_lit8_3ff0000000000000
    mul.s	$f0,$f12,$f12
    mul.s	$f1,$f0,$f12
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    ldc1	$f2,_lit8_3fd5555555555555
    mul.d	$f1,$f1,$f2
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    add.d	$f0,$f0,$f5
    ldc1	$f1,_lit8_4000000000000000
    mul.d	$f0,$f0,$f1
    jr	$ra
    cvt.s.d	$f0,$f0
.L0f11c674:
    # Line 628
    mul.d	$f0,$f5,$f0
    mul.d	$f0,$f0,$f5
    mul.d	$f0,$f0,$f5
    add.d	$f0,$f0,$f5
    add.d	$f0,$f0,$f1
    jr	$ra
    cvt.s.d	$f0,$f0
.L0f11c690:
    # Line 624
    jr	$ra
    mtc1	$zero,$f0
.end quadinteg

# Function: filterinteg
# Declared: Line 631 (Source lines: 632-672)
# Address: 0x0f11c698 - 0x0f11c82c (Size: 404 bytes, Frame: 32)
.ent filterinteg
filterinteg:
    # Line 632
    addiu	$sp,$sp,-32
    # Line 637
    li	$at,2
    # Line 636
    lwc1	$f5,-19892($gp)
    # Line 637
    lw	$a1,-19896($gp)
    # Line 634
    mtc1	$zero,$f7
    # Line 636
    div.s	$f5,$f12,$f5
    # Line 637
    beq	$a1,$at,.L0f11c6dc
    # Line 634
    mov.s	$f6,$f7
    # Line 637
    li	$v0,3
    beq	$a1,$v0,.L0f11c70c
    li	$v1,4
    beq	$a1,$v1,.L0f11c768
    li	$a0,5
    beq	$a1,$a0,.L0f11c7dc
.L0f11c6d0:
    # Line 672
    mov.s	$f0,$f6
.L0f11c6d4:
    jr	$ra
    addiu	$sp,$sp,32
.L0f11c6dc:
    # Line 639
    ldc1	$f1,_lit8_bfe0000000000000
    cvt.d.s	$f0,$f5
    c.lt.d	$f0,$f1
    # Line 642
    lwc1	$f6,_lit_3f800000
    # Line 639
    bc1t	.L0f11c7b0
    # Line 640
    ldc1	$f5,_lit8_3fe0000000000000
    c.lt.d	$f5,$f0
    nop
    bc1fl	.L0f11c7a8
    # Line 644
    add.d	$f6,$f0,$f5
    # Line 642
    b	.L0f11c6d4
    # Line 672
    mov.s	$f0,$f6
.L0f11c70c:
    # Line 647
    ldc1	$f2,_lit8_bff0000000000000
    cvt.d.s	$f0,$f5
    c.lt.d	$f0,$f2
    nop
    bc1t	.L0f11c7b8
    # Line 648
    mov.s	$f6,$f7
    ldc1	$f7,_lit8_3ff0000000000000
    c.lt.d	$f7,$f0
    nop
    bc1t	.L0f11c7fc
    # Line 650
    lwc1	$f6,_lit_3f800000
    dmtc1	$zero,$f3
    c.lt.d	$f0,$f3
    ldc1	$f5,_lit8_3fe0000000000000
    bc1fl	.L0f11c7c0
    # Line 657
    sub.d	$f1,$f7,$f0
    # Line 653
    add.d	$f1,$f0,$f7
    cvt.s.d	$f1,$f1
    cvt.d.s	$f1,$f1
    mul.d	$f6,$f1,$f5
    mul.d	$f6,$f6,$f1
    b	.L0f11c6d0
    cvt.s.d	$f6,$f6
.L0f11c768:
    # Line 661
    dmtc1	$zero,$f3
    cvt.d.s	$f2,$f5
    c.lt.d	$f2,$f3
    # Line 662
    la	$a1,sub_0f120000
    # Line 661
    bc1t	.L0f11c804
    # Line 662
    addiu	$a1,$a1,-14828
    sd	$ra,8($sp)
.L0f11c784:
    # Line 663
    neg.s	$f12,$f5
    bal gl_limgzoom
    move	$t9,$a1
    ldc1	$f6,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    sub.d	$f6,$f6,$f0
    ld	$ra,8($sp)
    # Line 664
    b	.L0f11c6d0
    # Line 663
    cvt.s.d	$f6,$f6
.L0f11c7a8:
    b	.L0f11c6d0
    # Line 644
    cvt.s.d	$f6,$f6
.L0f11c7b0:
    # Line 640
    b	.L0f11c6d0
    mov.s	$f6,$f7
.L0f11c7b8:
    # Line 648
    b	.L0f11c6d4
    # Line 672
    mov.s	$f0,$f6
.L0f11c7c0:
    # Line 657
    cvt.s.d	$f1,$f1
    cvt.d.s	$f1,$f1
    mul.d	$f6,$f1,$f5
    mul.d	$f6,$f6,$f1
    sub.d	$f6,$f7,$f6
    b	.L0f11c6d0
    cvt.s.d	$f6,$f6
.L0f11c7dc:
    # Line 669
    la	$t9,sub_0f120000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-14292
    bal gl_limgzoom
    mov.s	$f12,$f5
    mov.s	$f6,$f0
    b	.L0f11c6d0
    ld	$ra,8($sp)
.L0f11c7fc:
    # Line 650
    b	.L0f11c6d4
    # Line 672
    mov.s	$f0,$f6
.L0f11c804:
    # Line 662
    la	$t9,sub_0f120000
    sdc1	$f5,0($sp)
    sd	$ra,8($sp)
    addiu	$t9,$t9,-14828
    bal gl_limgzoom
    mov.s	$f12,$f5
    la	$a1,sub_0f120000
    ldc1	$f5,0($sp)
    b	.L0f11c784
    addiu	$a1,$a1,-14828
.end filterinteg

# Function: mitchell
# Declared: Line 681 (Source lines: 682-699)
# Address: 0x0f11c82c - 0x0f11c9c0 (Size: 404 bytes, Frame: 32)
.ent mitchell
mitchell:
    # Line 682
    lw	$at,-19856($gp)
    addiu	$sp,$sp,-32
    sdc1	$f28,0($sp)
    beqz	$at,.L0f11c998
    mov.s	$f28,$f12
.L0f11c840:
    # Line 687
    ldc1	$f0,_lit8_c000000000000000
    cvt.d.s	$f4,$f28
    # Line 690
    ldc1	$f5,_lit8_4000000000000000
    # Line 687
    c.lt.d	$f4,$f0
    # Line 694
    ldc1	$f3,_lit8_3ff0000000000000
    # Line 690
    ldc1	$f1,_lit8_bff0000000000000
    # Line 687
    bc1t	.L0f11c8e0
    # Line 690
    mtc1	$zero,$f0
    c.lt.d	$f4,$f1
    # Line 692
    lwc1	$f0,-19872($gp)
    # Line 690
    bc1t	.L0f11c8ec
    # Line 692
    lwc1	$f1,-19868($gp)
    dmtc1	$zero,$f2
    c.lt.d	$f4,$f2
    # Line 694
    lwc1	$f0,-19880($gp)
    # Line 692
    bc1t	.L0f11c924
    # Line 694
    lwc1	$f2,-19876($gp)
    c.lt.d	$f4,$f3
    nop
    bc1t	.L0f11c960
    # Line 699
    mtc1	$zero,$f0
    # Line 696
    c.lt.d	$f4,$f5
    nop
    bc1f	.L0f11c954
    # Line 698
    lwc1	$f1,-19864($gp)
    lwc1	$f0,-19860($gp)
    mul.s	$f0,$f0,$f28
    add.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f28
    lwc1	$f1,-19868($gp)
    add.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f28
    lwc1	$f1,-19872($gp)
    add.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f5
    ldc1	$f28,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    cvt.s.d	$f0,$f0
.L0f11c8e0:
    # Line 690
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f11c8ec:
    # Line 692
    lwc1	$f3,-19860($gp)
    mul.s	$f3,$f3,$f28
    lwc1	$f2,-19864($gp)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f28
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f28
    sub.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f5
    ldc1	$f28,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    cvt.s.d	$f0,$f0
.L0f11c924:
    # Line 694
    mul.s	$f2,$f2,$f28
    mul.s	$f1,$f28,$f28
    sub.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    lwc1	$f1,-19884($gp)
    add.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f5
    ldc1	$f28,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    cvt.s.d	$f0,$f0
.L0f11c954:
    # Line 699
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f11c960:
    # Line 696
    lwc1	$f2,-19880($gp)
    lwc1	$f0,-19876($gp)
    mul.s	$f0,$f0,$f28
    mul.s	$f1,$f28,$f28
    add.s	$f0,$f0,$f2
    mul.s	$f0,$f0,$f1
    lwc1	$f1,-19884($gp)
    add.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f5
    ldc1	$f28,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    cvt.s.d	$f0,$f0
.L0f11c998:
    # Line 686
    la	$t9,sub_0f120000
    sd	$ra,8($sp)
    lwc1	$f12,_lit_3eaaaaab
    addiu	$t9,$t9,-13888
    bal gl_limgzoom
    mov.s	$f13,$f12
    # Line 687
    li	$ra,1
    sw	$ra,-19856($gp)
    b	.L0f11c840
    ld	$ra,8($sp)
.end mitchell

# Function: mitchellinit
# Declared: Line 702 (Source lines: 705-712)
# Address: 0x0f11c9c0 - 0x0f11ca9c (Size: 220 bytes, Frame: 0)
.ent mitchellinit
mitchellinit:
    # Line 705
    ldc1	$f7,_lit8_4018000000000000
    # Line 706
    cvt.d.s	$f9,$f13
    mul.d	$f8,$f9,$f7
    # Line 711
    neg.s	$f6,$f12
    cvt.d.s	$f6,$f6
    sub.d	$f6,$f6,$f8
    div.d	$f6,$f6,$f7
    # Line 705
    cvt.d.s	$f0,$f12
    # Line 710
    ldc1	$f12,_lit8_403e000000000000
    mul.d	$f12,$f9,$f12
    mul.d	$f5,$f0,$f7
    add.d	$f5,$f5,$f12
    div.d	$f5,$f5,$f7
    # Line 705
    ldc1	$f2,_lit8_4000000000000000
    mul.d	$f2,$f0,$f2
    sub.d	$f2,$f7,$f2
    div.d	$f2,$f2,$f7
    # Line 709
    ldc1	$f4,_lit8_c028000000000000
    mul.d	$f4,$f0,$f4
    ldc1	$f12,_lit8_4048000000000000
    mul.d	$f12,$f9,$f12
    sub.d	$f4,$f4,$f12
    div.d	$f4,$f4,$f7
    # Line 708
    ldc1	$f3,_lit8_4020000000000000
    mul.d	$f3,$f0,$f3
    ldc1	$f12,_lit8_4038000000000000
    mul.d	$f9,$f9,$f12
    add.d	$f3,$f3,$f9
    div.d	$f3,$f3,$f7
    # Line 707
    ldc1	$f1,_lit8_4022000000000000
    mul.d	$f1,$f0,$f1
    # Line 706
    ldc1	$f9,_lit8_4028000000000000
    # Line 707
    sub.d	$f1,$f9,$f1
    sub.d	$f1,$f1,$f8
    div.d	$f1,$f1,$f7
    # Line 706
    mul.d	$f0,$f0,$f9
    ldc1	$f9,_lit8_c032000000000000
    add.d	$f0,$f0,$f9
    add.d	$f0,$f0,$f8
    div.d	$f0,$f0,$f7
    # Line 705
    cvt.s.d	$f2,$f2
    # Line 710
    cvt.s.d	$f5,$f5
    # Line 711
    cvt.s.d	$f6,$f6
    # Line 709
    cvt.s.d	$f4,$f4
    # Line 708
    cvt.s.d	$f3,$f3
    # Line 711
    swc1	$f6,-19860($gp)
    # Line 710
    swc1	$f5,-19864($gp)
    # Line 707
    cvt.s.d	$f1,$f1
    # Line 705
    swc1	$f2,-19884($gp)
    # Line 709
    swc1	$f4,-19868($gp)
    # Line 706
    cvt.s.d	$f0,$f0
    # Line 708
    swc1	$f3,-19872($gp)
    # Line 707
    swc1	$f1,-19876($gp)
    # Line 712
    jr	$ra
    # Line 706
    swc1	$f0,-19880($gp)
.end mitchellinit

# Function: clamprow
# Declared: Line 716 (Source lines: 717-736)
# Address: 0x0f11ca9c - 0x0f11ccb4 (Size: 536 bytes, Frame: 0)
.ent clamprow
clamprow:
    # Line 717
    slti	$at,$a2,8
    bnez	$at,.L0f11cbf0
    # Line 731
    li	$a7,-1
    b	.L0f11cac4
    # Line 717
    lh	$a4,0($a0)
.L0f11cab0:
    # Line 726
    move	$a4,$a5
.L0f11cab4:
    # Line 729
    slti	$v0,$a2,8
    bnez	$v0,.L0f11cbf0
    # Line 726
    sh	$a4,-2($a1)
    # Line 717
    lh	$a4,0($a0)
.L0f11cac4:
    # Line 719
    li	$a6,255
    move	$a5,$zero
    # Line 717
    bltz	$a4,.L0f11cae4
    # Line 729
    addiu	$a2,$a2,-8
    # Line 719
    slti	$v1,$a4,256
    bnezl	$v1,.L0f11cae0
    move	$a6,$a4
.L0f11cae0:
    move	$a5,$a6
.L0f11cae4:
    sh	$a5,0($a1)
    lh	$a4,2($a0)
    # Line 720
    move	$a5,$zero
    # Line 719
    bltz	$a4,.L0f11cb08
    # Line 720
    li	$a6,255
    slti	$a3,$a4,256
    bnezl	$a3,.L0f11cb04
    move	$a6,$a4
.L0f11cb04:
    move	$a5,$a6
.L0f11cb08:
    sh	$a5,2($a1)
    lh	$a4,4($a0)
    # Line 721
    move	$a5,$zero
    # Line 720
    bltz	$a4,.L0f11cb2c
    # Line 721
    li	$a6,255
    slti	$at,$a4,256
    bnezl	$at,.L0f11cb28
    move	$a6,$a4
.L0f11cb28:
    move	$a5,$a6
.L0f11cb2c:
    sh	$a5,4($a1)
    lh	$a4,6($a0)
    # Line 722
    move	$a5,$zero
    # Line 721
    bltz	$a4,.L0f11cb50
    # Line 722
    li	$a6,255
    slti	$v0,$a4,256
    bnezl	$v0,.L0f11cb4c
    move	$a6,$a4
.L0f11cb4c:
    move	$a5,$a6
.L0f11cb50:
    sh	$a5,6($a1)
    lh	$a4,8($a0)
    # Line 723
    move	$a5,$zero
    # Line 722
    bltz	$a4,.L0f11cb74
    # Line 723
    li	$a6,255
    slti	$v1,$a4,256
    bnezl	$v1,.L0f11cb70
    move	$a6,$a4
.L0f11cb70:
    move	$a5,$a6
.L0f11cb74:
    sh	$a5,8($a1)
    lh	$a4,10($a0)
    # Line 724
    move	$a5,$zero
    # Line 723
    bltz	$a4,.L0f11cb98
    # Line 724
    li	$a6,255
    slti	$a3,$a4,256
    bnezl	$a3,.L0f11cb94
    move	$a6,$a4
.L0f11cb94:
    move	$a5,$a6
.L0f11cb98:
    sh	$a5,10($a1)
    lh	$a4,12($a0)
    # Line 725
    move	$a5,$zero
    # Line 724
    bltz	$a4,.L0f11cbbc
    # Line 725
    li	$a6,255
    slti	$at,$a4,256
    bnezl	$at,.L0f11cbb8
    move	$a6,$a4
.L0f11cbb8:
    move	$a5,$a6
.L0f11cbbc:
    sh	$a5,12($a1)
    lh	$a4,14($a0)
    # Line 727
    addiu	$a0,$a0,16
    # Line 726
    li	$a5,255
    # Line 725
    bltz	$a4,.L0f11cbe8
    # Line 728
    addiu	$a1,$a1,16
    # Line 726
    slti	$v0,$a4,256
    bnezl	$v0,.L0f11cab0
    move	$a5,$a4
    b	.L0f11cab0
    nop
.L0f11cbe8:
    b	.L0f11cab4
    move	$a4,$zero
.L0f11cbf0:
    # Line 731
    addiu	$a2,$a2,-1
    beq	$a2,$a7,.L0f11cc40
    addiu	$t0,$a2,1
    andi	$v1,$t0,0x1
    beqz	$v1,.L0f11cc38
    sra	$at,$t0,0x1
    lh	$a4,0($a0)
    # Line 734
    addiu	$a1,$a1,2
    # Line 731
    bltz	$a4,.L0f11cca8
    addiu	$a2,$a2,-1
    # Line 732
    slti	$a3,$a4,256
    beqz	$a3,.L0f11cc28
    li	$a6,255
    move	$a6,$a4
.L0f11cc28:
    move	$a5,$a6
.L0f11cc2c:
    # Line 733
    addiu	$a0,$a0,2
    # Line 732
    sh	$a5,-2($a1)
    sra	$at,$t0,0x1
.L0f11cc38:
    bnezl	$at,.L0f11cc5c
    # Line 731
    lh	$a4,0($a0)
.L0f11cc40:
    # Line 736
    jr	$ra
    nop
.L0f11cc48:
    # Line 732
    move	$a5,$a6
.L0f11cc4c:
    # Line 731
    addiu	$a2,$a2,-2
    beq	$a2,$a7,.L0f11cc40
    # Line 732
    sh	$a5,-2($a1)
    # Line 731
    lh	$a4,0($a0)
.L0f11cc5c:
    # Line 732
    move	$a5,$zero
    # Line 731
    bltz	$a4,.L0f11cc78
    # Line 732
    li	$a6,255
    slti	$v0,$a4,256
    bnezl	$v0,.L0f11cc74
    move	$a6,$a4
.L0f11cc74:
    move	$a5,$a6
.L0f11cc78:
    sh	$a5,0($a1)
    # Line 733
    addiu	$a0,$a0,4
    # Line 731
    lh	$a4,-2($a0)
    # Line 732
    li	$a6,255
    move	$a5,$zero
    # Line 731
    bltz	$a4,.L0f11cc4c
    # Line 734
    addiu	$a1,$a1,4
    # Line 732
    slti	$v1,$a4,256
    bnezl	$v1,.L0f11cc48
    move	$a6,$a4
    b	.L0f11cc48
    nop
.L0f11cca8:
    move	$a5,$zero
    b	.L0f11cc2c
    nop
.end clamprow

.rdata
_lit8_3f1a36e2eb1c432d:
    .word 0x3f1a36e2, 0xeb1c432d
_lit8_3fd5555555555555:
    .word 0x3fd55555, 0x55555555
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4018000000000000:
    .word 0x40180000, 0x00000000
_lit8_4020000000000000:
    .word 0x40200000, 0x00000000
_lit8_4022000000000000:
    .word 0x40220000, 0x00000000
_lit8_4028000000000000:
    .word 0x40280000, 0x00000000
_lit8_4038000000000000:
    .word 0x40380000, 0x00000000
_lit8_403e000000000000:
    .word 0x403e0000, 0x00000000
_lit8_4048000000000000:
    .word 0x40480000, 0x00000000
_lit8_bf1a36e2eb1c432d:
    .word 0xbf1a36e2, 0xeb1c432d
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit8_bfe5555555555555:
    .word 0xbfe55555, 0x55555555
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit8_c000000000000000:
    .word 0xc0000000, 0x00000000
_lit8_c028000000000000:
    .word 0xc0280000, 0x00000000
_lit8_c032000000000000:
    .word 0xc0320000, 0x00000000
_lit_3eaaaaab:
    .word 0x3eaaaaab
_lit_3f800000:
    .word 0x3f800000
_lit_45800000:
    .word 0x45800000

