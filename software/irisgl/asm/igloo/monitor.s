# Source: ../igloo/monitor.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/monitor.c -o monitor.T
# Total Functions: 5

.text

# Function: gl_g_gammaramp
# Declared: Line 18 (Source lines: 20-70)
# Address: 0x0f0f0904 - 0x0f0f0aa8 (Size: 420 bytes, Frame: 128)
.globl gl_g_gammaramp
.ent gl_g_gammaramp
gl_g_gammaramp:
    # Line 20
    addiu	$sp,$sp,-128
    sd	$gp,56($sp)
    sd	$s0,64($sp)
    lui	$s0,0xfff4
    addiu	$s0,$s0,10564
    addu	$gp,$t9,$s0
    # Line 24
    la	$a4,gl_sstatep
    lw	$a4,0($a4)
    lw	$a4,28($a4)
    lw	$s0,4($a4)
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    beqz	$s0,.L0f0f0a40
    sd	$a0,32($sp)
    # Line 37
    addiu	$a2,$sp,4
    addiu	$a1,$sp,0
    move	$a0,$s0
    la	$t9,XSGIvcQueryVersion
    sd	$s1,72($sp)
    sd	$ra,80($sp)
    jalr	$t9
    # Line 35
    lw	$s1,8($a4)
    # Line 37
    beqz	$v0,.L0f0f0a7c
    # Line 45
    la	$t9,XSGIvcQueryScreenGammaMaps
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    addiu	$a2,$sp,8
    lw	$at,8($sp)
    beqz	$at,.L0f0f0a50
    # Line 54
    move	$a0,$s0
    la	$t9,XSGIvcQueryChannelGammaMap
    move	$a1,$s1
    move	$a2,$zero
    jalr	$t9
    addiu	$a3,$sp,12
    # Line 55
    move	$a0,$s0
    move	$a1,$s1
    addiu	$a5,$sp,24
    la	$t9,XSGIvcQueryGammaMap
    addiu	$a4,$sp,20
    addiu	$a3,$sp,16
    jalr	$t9
    lw	$a2,12($sp)
    # Line 62
    li	$a5,1
    lw	$a4,16($sp)
    lw	$a3,20($sp)
    lw	$a2,12($sp)
    la	$t9,sub_0f0f0000
    move	$a1,$s1
    move	$a0,$s0
    addiu	$t9,$t9,2728
    bal gl_g_gammaramp
    ld	$a6,32($sp)
    # Line 64
    move	$a0,$s0
    move	$a1,$s1
    li	$a5,2
    lw	$a4,16($sp)
    la	$t9,sub_0f0f0000
    lw	$a3,20($sp)
    lw	$a2,12($sp)
    addiu	$t9,$t9,2728
    bal gl_g_gammaramp
    ld	$a6,48($sp)
    # Line 66
    move	$a0,$s0
    move	$a1,$s1
    li	$a5,4
    lw	$a4,16($sp)
    la	$t9,sub_0f0f0000
    lw	$a3,20($sp)
    lw	$a2,12($sp)
    addiu	$t9,$t9,2728
    bal gl_g_gammaramp
    ld	$a6,40($sp)
    # Line 68
    la	$t9,XFlush
    move	$a0,$s0
    jalr	$t9
    ld	$s1,72($sp)
    ld	$ra,80($sp)
.L0f0f0a40:
    ld	$gp,56($sp)
    # Line 70
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0f0a50:
    # Line 49
    lw	$a2,-14668($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,115
    jalr	$t9
    ld	$s1,72($sp)
    # Line 50
    ld	$ra,80($sp)
    ld	$gp,56($sp)
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0f0a7c:
    # Line 41
    lw	$a2,-14668($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,115
    jalr	$t9
    ld	$s1,72($sp)
    # Line 42
    ld	$ra,80($sp)
    ld	$gp,56($sp)
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_g_gammaramp

# Function: loadGamma
# Declared: Line 72 (Source lines: 75-133)
# Address: 0x0f0f0aa8 - 0x0f0f0cc0 (Size: 536 bytes, Frame: 144)
.ent loadGamma
loadGamma:
    # Line 75
    slti	$at,$a3,9
    addiu	$sp,$sp,-144
    sd	$ra,64($sp)
    sd	$a0,40($sp)
    sd	$a1,48($sp)
    sd	$a2,32($sp)
    sd	$s0,56($sp)
    move	$s0,$a4
    sd	$a5,24($sp)
    beqz	$at,.L0f0f0be0
    sd	$a6,16($sp)
    # Line 82
    la	$t9,__iglooMalloc
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0f0f0bd4
    ld	$ra,64($sp)
    beqz	$s0,.L0f0f0b6c
    move	$t2,$v0
    move	$t8,$s0
    ld	$at,16($sp)
    addu	$t1,$s0,$s0
    andi	$t3,$s0,0x3
    move	$a3,$at
    beqz	$t3,.L0f0f0b24
    addu	$t1,$t1,$at
.L0f0f0b0c:
    # Line 88
    addiu	$a3,$a3,2
    addiu	$t2,$t2,1
    # Line 90
    lh	$v1,-2($a3)
    addi	$t3,$t3,-1
    bnez	$t3,.L0f0f0b0c
    sb	$v1,-1($t2)
.L0f0f0b24:
    move	$t9,$t2
    sra	$a7,$t8,0x2
    beqz	$a7,.L0f0f0b68
    move	$t3,$a3
    move	$a3,$t9
    move	$a6,$t3
.L0f0f0b3c:
    lh	$a7,0($a6)
    sb	$a7,0($a3)
    lh	$v1,2($a6)
    sb	$v1,1($a3)
    lh	$at,4($a6)
    sb	$at,2($a3)
    # Line 88
    addiu	$a3,$a3,4
    # Line 90
    lh	$t0,6($a6)
    # Line 88
    addiu	$a6,$a6,8
    bne	$a6,$t1,.L0f0f0b3c
    # Line 90
    sb	$t0,-1($a3)
.L0f0f0b68:
    sd	$v0,8($sp)
.L0f0f0b6c:
    sd	$v0,8($sp)
    ld	$a0,40($sp)
    # Line 93
    ld	$a1,48($sp)
    ld	$a2,32($sp)
    la	$t9,XSGIvcStoreGammaColors8
    move	$a3,$s0
    ld	$a4,24($sp)
    jalr	$t9
    move	$a5,$v0
    # Line 96
    la	$t9,__iglooFree
    jalr	$t9
    ld	$a0,8($sp)
    b	.L0f0f0bd4
    ld	$ra,64($sp)
.L0f0f0ba4:
    ld	$a0,40($sp)
    # Line 128
    ld	$a1,48($sp)
    ld	$a2,32($sp)
    la	$t9,XSGIvcStoreGammaColors16
    move	$a3,$s0
    ld	$a4,24($sp)
    jalr	$t9
    ld	$a5,0($sp)
    # Line 131
    la	$t9,__iglooFree
    jalr	$t9
    ld	$a0,0($sp)
    ld	$ra,64($sp)
.L0f0f0bd4:
    # Line 133
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0f0be0:
    # Line 106
    la	$t9,__iglooMalloc
    jalr	$t9
    addu	$a0,$s0,$s0
    move	$a3,$v0
    sd	$v0,0($sp)
    # Line 112
    move	$t3,$zero
    ld	$t1,16($sp)
    li	$t8,256
    sra	$t2,$s0,0x7
    srl	$t2,$t2,0x18
    addu	$t2,$t2,$s0
    b	.L0f0f0c90
    sra	$t2,$t2,0x8
.L0f0f0c14:
    # Line 117
    addiu	$v0,$v0,1
.L0f0f0c18:
    # Line 119
    lhu	$at,0($t1)
    # Line 123
    addiu	$a3,$a3,2
    addi	$a6,$a6,-1
    # Line 119
    sll	$at,$at,0x8
    bnez	$a6,.L0f0f0c14
    sh	$at,-2($a3)
    move	$a6,$v0
.L0f0f0c34:
    sra	$v1,$t9,0x2
    beqz	$v1,.L0f0f0c88
    move	$ra,$a3
    move	$a3,$a6
    move	$v0,$ra
.L0f0f0c48:
    lhu	$v1,0($t1)
    sll	$v1,$v1,0x8
    sh	$v1,0($v0)
    lhu	$at,0($t1)
    sll	$at,$at,0x8
    sh	$at,2($v0)
    lhu	$t0,0($t1)
    sll	$t0,$t0,0x8
    sh	$t0,4($v0)
    lhu	$a7,0($t1)
    # Line 123
    addiu	$v0,$v0,8
    # Line 117
    addiu	$a3,$a3,4
    # Line 119
    sll	$a7,$a7,0x8
    # Line 117
    bne	$t2,$a3,.L0f0f0c48
    # Line 119
    sh	$a7,-2($v0)
    move	$a3,$v0
.L0f0f0c88:
    # Line 113
    beq	$t8,$t3,.L0f0f0ba4
    # Line 125
    addiu	$t1,$t1,2
.L0f0f0c90:
    # Line 117
    move	$v0,$zero
    # Line 115
    lhu	$a7,0($t1)
    # Line 113
    addiu	$t3,$t3,1
    # Line 117
    move	$t9,$t2
    # Line 115
    sll	$a7,$a7,0x8
    # Line 117
    beqz	$t2,.L0f0f0c88
    # Line 115
    sh	$a7,0($a3)
    andi	$a6,$t2,0x3
    beqzl	$a6,.L0f0f0c34
    move	$a6,$v0
    b	.L0f0f0c18
    # Line 117
    addiu	$v0,$v0,1
.end loadGamma

# Function: initMonitor
# Declared: Line 144 (Source lines: 145-157)
# Address: 0x0f0f0cc0 - 0x0f0f0d00 (Size: 64 bytes, Frame: 16)
.ent initMonitor
initMonitor:
    # Line 145
    addiu	$sp,$sp,-16
    # Line 152
    la	$t9,getenv
    la	$a0,sub_0f020000
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a0,$a0,17744
    bnez	$v0,.L0f0f0ce8
    ld	$ra,0($sp)
.L0f0f0ce0:
    # Line 157
    jr	$ra
    addiu	$sp,$sp,16
.L0f0f0ce8:
    # Line 154
    la	$t9,atoi
    jalr	$t9
    move	$a0,$v0
    sh	$v0,-14672($gp)
    b	.L0f0f0ce0
    ld	$ra,0($sp)
.end initMonitor

# Function: gl_g_getmonitor
# Declared: Line 159 (Source lines: 160-165)
# Address: 0x0f0f0d00 - 0x0f0f0d3c (Size: 60 bytes, Frame: 16)
.globl gl_g_getmonitor
.ent gl_g_getmonitor
gl_g_getmonitor:
    # Line 160
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff4
    addiu	$ra,$ra,9544
    addu	$gp,$t9,$ra
    # Line 161
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,3264
    bal gl_g_gammaramp
    nop
    # Line 165
    ld	$ra,0($sp)
    lh	$v0,-14672($gp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_getmonitor

# Function: gl_g_setmonitor
# Declared: Line 168 (Source lines: 169-225)
# Address: 0x0f0f0d3c - 0x0f0f0e24 (Size: 232 bytes, Frame: 176)
.globl gl_g_setmonitor
.ent gl_g_setmonitor
gl_g_setmonitor:
    # Line 169
    addiu	$sp,$sp,-304
    sd	$gp,264($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,9484 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # la	t9,sub_0f020000
    sll	$a2,$a0,0x2
    sltiu	$at,$a0,29
    la	$t9,jtbl_0f024568
    beqz	$at,.L0f0f0d74
    addu	$a2,$a2,$t9
    lw	$v0,0($a2)
    jr	$v0
    # Line 208
    addiu	$a2,$gp,-17160
.L0f0f0d74:
    # Line 211
    move	$a2,$zero
.L0f0f0d78:
    # Line 214
    bnez	$a2,.L0f0f0d8c
    sd	$a0,256($sp)
.L0f0f0d80:
    ld	$gp,264($sp)
    # Line 225
    jr	$ra
    addiu	$sp,$sp,304
.L0f0f0d8c:
    # Line 220
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,272($sp)
    jalr	$t9
    addiu	$a1,$a1,17904
    # Line 221
    la	$t9,system
    jalr	$t9
    addiu	$a0,$sp,0
    ld	$ra,256($sp)
    # Line 223
    sh	$ra,-14672($gp)
    b	.L0f0f0d80
    ld	$ra,272($sp)
.L0f0f0dc0:
    # Line 176
    b	.L0f0f0d78
    # Line 175
    addiu	$a2,$gp,-17240
.L0f0f0dc8:
    # Line 179
    b	.L0f0f0d78
    # Line 178
    addiu	$a2,$gp,-17232
.L0f0f0dd0:
    # Line 182
    b	.L0f0f0d78
    # Line 181
    addiu	$a2,$gp,-17224
.L0f0f0dd8:
    # Line 185
    b	.L0f0f0d78
    # Line 184
    addiu	$a2,$gp,-17216
.L0f0f0de0:
    # Line 188
    b	.L0f0f0d78
    # Line 187
    addiu	$a2,$gp,-17208
.L0f0f0de8:
    # Line 191
    b	.L0f0f0d78
    # Line 190
    addiu	$a2,$gp,-17200
.L0f0f0df0:
    # Line 194
    b	.L0f0f0d78
    # Line 193
    addiu	$a2,$gp,-17192
.L0f0f0df8:
    # Line 197
    b	.L0f0f0d78
    # Line 196
    addiu	$a2,$gp,-17184
.L0f0f0e00:
    # Line 199
    la	$a2,sub_0f020000
    # Line 200
    b	.L0f0f0d78
    # Line 199
    addiu	$a2,$a2,17888
.L0f0f0e0c:
    # Line 203
    b	.L0f0f0d78
    # Line 202
    addiu	$a2,$gp,-17176
.L0f0f0e14:
    # Line 206
    b	.L0f0f0d78
    # Line 205
    addiu	$a2,$gp,-17168
.L0f0f0e1c:
    # Line 209
    b	.L0f0f0d78
    nop
.end gl_g_setmonitor

.late_rodata
jtbl_0f024568:
    .word .L0f0f0d74
    .word .L0f0f0dd0
    .word .L0f0f0df0
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0df8
    .word .L0f0f0d74
    .word .L0f0f0dc0
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0e1c
    .word .L0f0f0e00
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0d74
    .word .L0f0f0de0
    .word .L0f0f0dc8
    .word .L0f0f0de8
    .word .L0f0f0dd8
    .word .L0f0f0e0c
    .word .L0f0f0e14

