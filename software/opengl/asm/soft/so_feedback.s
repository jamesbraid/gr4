# Source: ../soft/so_feedback.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_feedback.c
# Total Functions: 10

.text

# Function: __glim_FeedbackBuffer
# Declared: Line 24 (Source lines: 25-45)
# Address: 0x0db41a88 - 0x0db41b70 (Size: 232 bytes, Frame: 48)
.globl __glim_FeedbackBuffer
.ent __glim_FeedbackBuffer
__glim_FeedbackBuffer:
    # Line 26
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 25
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 26
    lw	$at,__glBeginMode
    # Line 25
    lui	$v1,0xc
    addiu	$v1,$v1,-13296
    # Line 26
    beq	$at,$v0,.L0db41b34
    # Line 25
    addu	$gp,$t9,$v1
    # Line 28
    sltiu	$a3,$a1,1536
    bnez	$a3,.L0db41af8
    sltiu	$at,$a1,1541
    beqz	$at,.L0db41afc
    # Line 29
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 30
    bltz	$a0,.L0db41b54
    # Line 33
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 34
    lw	$v0,3092($a4)
    li	$v1,7169
    beq	$v0,$v1,.L0db41b18
    # Line 37
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 44
    sw	$a1,4584($a4)
    # Line 43
    sb	$zero,4568($a4)
    # Line 42
    sw	$a0,4580($a4)
    # Line 41
    sw	$a2,4576($a4)
    # Line 40
    sw	$a2,4572($a4)
    ld	$gp,0($sp)
    # Line 45
    jr	$ra
    addiu	$sp,$sp,48
.L0db41af8:
    # Line 29
    # lw $t9, -27320($gp) # &__glSetError
.L0db41afc:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 30
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db41b18:
    sd	$ra,8($sp)
    # Line 37
    jalr	$t9
    li	$a0,1282
    # Line 38
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db41b34:
    # Line 26
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db41b54:
    sd	$ra,8($sp)
    # Line 33
    jalr	$t9
    li	$a0,1281
    # Line 34
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_FeedbackBuffer

# Function: __glim_PassThrough
# Declared: Line 47 (Source lines: 48-55)
# Address: 0x0db41b70 - 0x0db41c0c (Size: 156 bytes, Frame: 48)
.globl __glim_PassThrough
.ent __glim_PassThrough
__glim_PassThrough:
    # Line 48
    mov.s	$f4,$f12
    # Line 49
    li	$v0,1
    # Line 48
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 49
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    # Line 48
    lui	$v1,0xc
    addiu	$v1,$v1,-13528
    # Line 49
    beq	$at,$v0,.L0db41be8
    # Line 48
    addu	$gp,$t9,$v1
    # Line 49
    lw	$a1,3092($s0)
    li	$at,7169
    beq	$a1,$at,.L0db41bbc
    sdc1	$f4,0($sp)
.L0db41bac:
    ld	$gp,8($sp)
    # Line 55
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db41bbc:
    # Line 52
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,24($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e00000
    # Line 53
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    ldc1	$f13,0($sp)
    b	.L0db41bac
    ld	$ra,24($sp)
.L0db41be8:
    # Line 49
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_PassThrough

# Function: __glFeedbackTag
# Declared: Line 59 (Source lines: 60-70)
# Address: 0x0db41c0c - 0x0db41c54 (Size: 72 bytes, Frame: 0)
.globl __glFeedbackTag
.ent __glFeedbackTag
__glFeedbackTag:
    # Line 60
    lbu	$at,4568($a0)
    bnez	$at,.L0db41c3c
    # Line 64
    li	$a1,1
    # Line 60
    lw	$v1,4580($a0)
    lw	$v0,4572($a0)
    lw	$a2,4576($a0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    sltu	$v0,$a2,$v0
    bnezl	$v0,.L0db41c44
    # Line 66
    swc1	$f13,0($a2)
    # Line 64
    sb	$a1,4568($a0)
.L0db41c3c:
    # Line 70
    jr	$ra
    nop
.L0db41c44:
    # Line 67
    lw	$at,4576($a0)
    addiu	$at,$at,4
    # Line 70
    jr	$ra
    # Line 67
    sw	$at,4576($a0)
.end __glFeedbackTag

# Function: feedback
# Declared: Line 72 (Source lines: 73-160)
# Address: 0x0db41c54 - 0x0db41ff0 (Size: 924 bytes, Frame: 192)
.ent feedback
feedback:
    # Line 76
    li	$at,1536
    # Line 73
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s0,8($sp)
    # Line 74
    lw	$s0,4584($a0)
    # Line 76
    li	$a0,1538
    sd	$s2,16($sp)
    beq	$s0,$at,.L0db41e78
    # Line 73
    move	$s2,$a1
    # Line 76
    li	$v0,1537
    beq	$s0,$v0,.L0db41dc4
    sd	$s3,32($sp)
    beq	$a0,$s0,.L0db41dcc
    li	$s3,1539
    beq	$s3,$s0,.L0db41dcc
    li	$v1,1540
    beql	$s0,$v1,.L0db41efc
    # Line 101
    move	$a0,$s1
.L0db41ca0:
    # Line 118
    beql	$a0,$s0,.L0db41d40
    # Line 123
    lw	$v0,4($s2)
    # Line 118
    beq	$s3,$s0,.L0db41d3c
    li	$a2,1540
    beq	$s0,$a2,.L0db41d3c
.L0db41cb4:
    # Line 138
    li	$v1,1540
    move	$at,$s3
    beq	$at,$s0,.L0db41cd4
    ld	$s3,32($sp)
    move	$v0,$s0
    ld	$s0,8($sp)
    bne	$v0,$v1,.L0db41d2c
    ld	$s3,32($sp)
.L0db41cd4:
    # Line 147
    lw	$a2,0($s2)
    sd	$ra,40($sp)
    andi	$a2,$a2,0x4
    beqz	$a2,.L0db41f9c
    ld	$s0,8($sp)
    # Line 150
    # lw $t9, -27000($gp) # &__glFeedbackTag
.L0db41cec:
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,48($s2)
    # Line 151
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,52($s2)
    # Line 152
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,56($s2)
    # Line 153
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,60($s2)
    ld	$ra,40($sp)
.L0db41d2c:
    # Line 160
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db41d3c:
    # Line 123
    lw	$v0,4($s2)
.L0db41d40:
    lbu	$at,3104($s1)
    sd	$ra,40($sp)
    sd	$v0,0($sp)
    beqz	$at,.L0db41e60
    lwc1	$f4,0($v0)
    # Line 125
    # lw $t9, -27000($gp) # &__glFeedbackTag
    lwc1	$f13,30852($s1)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f4
    # Line 126
    ld	$v1,0($sp)
    lwc1	$f14,30856($s1)
    # lw $t9, -27000($gp) # &__glFeedbackTag
    lwc1	$f13,4($v1)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f14
    # Line 127
    ld	$a1,0($sp)
    lwc1	$f14,30860($s1)
    # lw $t9, -27000($gp) # &__glFeedbackTag
    lwc1	$f13,8($a1)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f14
    # Line 128
    ld	$a2,0($sp)
    lwc1	$f14,30864($s1)
    # lw $t9, -27000($gp) # &__glFeedbackTag
    lwc1	$f13,12($a2)
    move	$a0,$s1
    bal __glFeedbackTag
    mul.s	$f13,$f13,$f14
    b	.L0db41cb4
    ld	$ra,40($sp)
.L0db41dc4:
    sd	$ra,40($sp)
    # Line 86
    li	$s3,1539
.L0db41dcc:
    # Line 90
    move	$a0,$s1
    lwc1	$f14,3380($s1)
    # lw $t9, -27000($gp) # &__glFeedbackTag
    lwc1	$f13,128($s2)
    sd	$ra,40($sp)
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    lwc1	$f0,3384($s1)
    lbu	$at,4552($s1)
    lwc1	$f4,132($s2)
    beqz	$at,.L0db41ee4
    sub.s	$f4,$f4,$f0
    # Line 92
    lw	$v0,3416($s1)
    mtc1	$v0,$f13
    nop
    cvt.s.w	$f13,$f13
    # lw $t9, -27000($gp) # &__glFeedbackTag
    sub.s	$f13,$f13,$f4
    lwc1	$f14,3388($s1)
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    # Line 98
    lw	$v1,31356($s1)
.L0db41e28:
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f14
    nop
    cvt.s.l	$f14,$f14
    # lw $t9, -27000($gp) # &__glFeedbackTag
    lwc1	$f13,136($s2)
    move	$a0,$s1
    bal __glFeedbackTag
    div.s	$f13,$f13,$f14
    li	$a0,1538
    ld	$ra,40($sp)
    b	.L0db41ca0
    nop
.L0db41e60:
    # Line 130
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0db41cb4
    ld	$ra,40($sp)
.L0db41e78:
    # Line 78
    move	$a0,$s1
    lwc1	$f14,3380($s1)
    # lw $t9, -27000($gp) # &__glFeedbackTag
    lwc1	$f13,128($s2)
    sd	$ra,40($sp)
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    lbu	$a2,4552($s1)
    lwc1	$f4,132($s2)
    lwc1	$f0,3384($s1)
    beqz	$a2,.L0db41fbc
    sub.s	$f4,$f4,$f0
    # Line 80
    lw	$a3,3416($s1)
    mtc1	$a3,$f13
    nop
    cvt.s.w	$f13,$f13
    # lw $t9, -27000($gp) # &__glFeedbackTag
    sub.s	$f13,$f13,$f4
    lwc1	$f14,3388($s1)
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    sd	$s3,32($sp)
    ld	$ra,40($sp)
.L0db41ed8:
    # Line 86
    li	$s3,1539
    b	.L0db41ca0
    li	$a0,1538
.L0db41ee4:
    # Line 96
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0db41e28
    # Line 98
    lw	$v1,31356($s1)
.L0db41efc:
    # Line 101
    lwc1	$f14,3380($s1)
    # lw $t9, -27000($gp) # &__glFeedbackTag
    lwc1	$f13,128($s2)
    sd	$ra,40($sp)
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
    lbu	$at,4552($s1)
    lwc1	$f4,132($s2)
    lwc1	$f0,3384($s1)
    beqz	$at,.L0db41fd8
    sub.s	$f4,$f4,$f0
    # Line 103
    lw	$v0,3416($s1)
    mtc1	$v0,$f13
    nop
    cvt.s.w	$f13,$f13
    # lw $t9, -27000($gp) # &__glFeedbackTag
    sub.s	$f13,$f13,$f4
    lwc1	$f14,3388($s1)
    move	$a0,$s1
    bal __glFeedbackTag
    sub.s	$f13,$f13,$f14
.L0db41f50:
    # Line 109
    lw	$v1,31356($s1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f14
    nop
    cvt.s.l	$f14,$f14
    # lw $t9, -27000($gp) # &__glFeedbackTag
    lwc1	$f13,136($s2)
    move	$a0,$s1
    bal __glFeedbackTag
    div.s	$f13,$f13,$f14
    # Line 115
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    lwc1	$f13,124($s2)
    li	$a0,1538
    ld	$ra,40($sp)
    b	.L0db41ca0
    nop
.L0db41f9c:
    # Line 148
    move	$a0,$s1
    lw	$t9,8($s2)
    lw	$a2,28132($s1)
    move	$a1,$s2
    jal	__glFeedbackTag
    ori	$a2,$a2,0x4
    b	.L0db41cec
    # Line 150
    nop	# was lw $t9, -27000($gp) # &__glFeedbackTag
.L0db41fbc:
    # Line 84
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    sd	$s3,32($sp)
    b	.L0db41ed8
    ld	$ra,40($sp)
.L0db41fd8:
    # Line 107
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s1
    bal __glFeedbackTag
    mov.s	$f13,$f4
    b	.L0db41f50
    nop
.end feedback

# Function: __glFeedbackCopyPixels
# Declared: Line 162 (Source lines: 163-166)
# Address: 0x0db41ff0 - 0x0db42048 (Size: 88 bytes, Frame: 48)
.globl __glFeedbackCopyPixels
.ent __glFeedbackCopyPixels
__glFeedbackCopyPixels:
    # Line 163
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xc
    addiu	$at,$at,-14680
    addu	$gp,$t9,$at
    # Line 164
    # lw $t9, -27000($gp) # &__glFeedbackTag
    # Line 163
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 164
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e0c000
    # Line 165
    # lw $t9, -32692($gp) # &sub_0db40000
    move	$a0,$s8
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    ld	$a1,24($sp)
    # Line 166
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFeedbackCopyPixels

# Function: __glFeedbackDrawPixels
# Declared: Line 168 (Source lines: 169-172)
# Address: 0x0db42048 - 0x0db420a0 (Size: 88 bytes, Frame: 48)
.globl __glFeedbackDrawPixels
.ent __glFeedbackDrawPixels
__glFeedbackDrawPixels:
    # Line 169
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xc
    addiu	$at,$at,-14768
    addu	$gp,$t9,$at
    # Line 170
    # lw $t9, -27000($gp) # &__glFeedbackTag
    # Line 169
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 170
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e0a000
    # Line 171
    # lw $t9, -32692($gp) # &sub_0db40000
    move	$a0,$s8
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    ld	$a1,24($sp)
    # Line 172
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFeedbackDrawPixels

# Function: __glFeedbackBitmap
# Declared: Line 174 (Source lines: 175-178)
# Address: 0x0db420a0 - 0x0db420f8 (Size: 88 bytes, Frame: 48)
.globl __glFeedbackBitmap
.ent __glFeedbackBitmap
__glFeedbackBitmap:
    # Line 175
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xc
    addiu	$at,$at,-14856
    addu	$gp,$t9,$at
    # Line 176
    # lw $t9, -27000($gp) # &__glFeedbackTag
    # Line 175
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 176
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e08000
    # Line 177
    # lw $t9, -32692($gp) # &sub_0db40000
    move	$a0,$s8
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    ld	$a1,24($sp)
    # Line 178
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFeedbackBitmap

# Function: __glFeedbackPoint
# Declared: Line 181 (Source lines: 182-185)
# Address: 0x0db420f8 - 0x0db42150 (Size: 88 bytes, Frame: 48)
.globl __glFeedbackPoint
.ent __glFeedbackPoint
__glFeedbackPoint:
    # Line 182
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xc
    addiu	$at,$at,-14944
    addu	$gp,$t9,$at
    # Line 183
    # lw $t9, -27000($gp) # &__glFeedbackTag
    # Line 182
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 183
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # Line 184
    # lw $t9, -32692($gp) # &sub_0db40000
    move	$a0,$s8
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    ld	$a1,24($sp)
    # Line 185
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFeedbackPoint

# Function: __glFeedbackLine
# Declared: Line 188 (Source lines: 189-208)
# Address: 0x0db42150 - 0x0db42228 (Size: 216 bytes, Frame: 208)
.globl __glFeedbackLine
.ent __glFeedbackLine
__glFeedbackLine:
    # Line 193
    lw	$a4,4($a1)
    # Line 189
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,32($sp)
    # Line 193
    lui	$v1,0x2
    lw	$at,30488($a0)
    # Line 189
    lui	$v0,0xc
    addiu	$v0,$v0,-15032
    # Line 193
    and	$at,$at,$v1
    beqz	$at,.L0db421fc
    # Line 189
    addu	$gp,$t9,$v0
.L0db42188:
    # Line 195
    lbu	$v1,29900($s0)
    sd	$a1,0($sp)
    sd	$a4,8($sp)
    beqz	$v1,.L0db42208
    sd	$ra,40($sp)
    # Line 199
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # Line 202
    # lw $t9, -32692($gp) # &sub_0db40000
.L0db421b0:
    # Line 204
    move	$a0,$s0
    # Line 202
    addiu	$t9,$t9,7252
    # Line 204
    bal __glFeedbackTag
    ld	$a1,0($sp)
    la	$a2,sub_0db40000
    addiu	$a2,$a2,7252
    # Line 205
    move	$a0,$s0
    move	$a1,$s1
    bal __glFeedbackTag
    move	$t9,$a2
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s0,16($sp)
    ld	$at,0($sp)
    # Line 207
    ld	$a3,8($sp)
    ld	$gp,32($sp)
    # Line 208
    addiu	$sp,$sp,80
    jr	$ra
    # Line 207
    sw	$a3,4($at)
.L0db421fc:
    # Line 195
    lw	$v0,4($s1)
    b	.L0db42188
    sw	$v0,4($a1)
.L0db42208:
    # Line 202
    lwc1	$f13,_lit_44e0e000
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    # Line 201
    li	$v1,1
    # Line 202
    bal __glFeedbackTag
    # Line 201
    sb	$v1,29900($s0)
    b	.L0db421b0
    # Line 202
    nop	# was lw $t9, -32692($gp) # &sub_0db40000
.end __glFeedbackLine

# Function: __glFeedbackTriangle
# Declared: Line 211 (Source lines: 213-359)
# Address: 0x0db42228 - 0x0db42734 (Size: 1292 bytes, Frame: 224)
.globl __glFeedbackTriangle
.ent __glFeedbackTriangle
__glFeedbackTriangle:
    # Line 222
    lwc1	$f0,132($a3)
    # Line 223
    lwc1	$f4,132($a2)
    sub.s	$f4,$f4,$f0
    # Line 220
    lwc1	$f3,128($a3)
    lwc1	$f1,128($a1)
    # Line 221
    lwc1	$f2,128($a2)
    # Line 220
    sub.s	$f1,$f1,$f3
    # Line 221
    sub.s	$f2,$f2,$f3
    # Line 222
    lwc1	$f3,132($a1)
    sub.s	$f3,$f3,$f0
    # Line 240
    mul.s	$f1,$f1,$f4
    mul.s	$f2,$f2,$f3
    # Line 213
    addiu	$sp,$sp,-96
    sd	$gp,32($sp)
    lui	$v1,0xc
    addiu	$v1,$v1,-15248
    addu	$gp,$t9,$v1
    # Line 240
    sub.s	$f1,$f1,$f2
    mtc1	$zero,$f0
    c.le.s	$f0,$f1
    li	$v0,1
    bc1fl	.L0db42284
    move	$v0,$zero
.L0db42284:
    sd	$s2,40($sp)
    # Line 213
    move	$s2,$a1
    sd	$s4,24($sp)
    move	$s4,$a3
    sd	$s3,16($sp)
    move	$s3,$a2
    # Line 240
    lbu	$at,30573($a0)
    addu	$v0,$v0,$a0
    lbu	$v0,30568($v0)
    sd	$s0,8($sp)
    # Line 213
    move	$s0,$a0
    # Line 240
    beq	$at,$v0,.L0db42400
    sd	$v0,0($sp)
    sd	$s1,48($sp)
    # Line 250
    lw	$s1,28132($s0)
    lw	$a4,1304($s0)
    # Line 249
    lw	$a0,30488($s0)
    # Line 250
    li	$at,7424
    beq	$a4,$at,.L0db4241c
    andi	$a0,$a0,0x400
    # Line 272
    beqz	$a0,.L0db42540
    ld	$a4,0($sp)
    # Line 278
    move	$a0,$a4
    # Line 279
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    lw	$a4,28136($a4)
    or	$s1,$a4,$s1
.L0db422f0:
    # Line 285
    sll	$v1,$a0,0x4
    # Line 287
    addu	$at,$v1,$s4
    addiu	$at,$at,144
    # Line 286
    addu	$v0,$v1,$s3
    addiu	$v0,$v0,144
    # Line 285
    addu	$v1,$v1,$s2
    addiu	$v1,$v1,144
    sw	$v1,4($s2)
    # Line 286
    sw	$v0,4($s3)
    # Line 287
    sw	$at,4($s4)
.L0db42318:
    lw	$v0,0($s2)
.L0db4231c:
    nor	$v0,$v0,$zero
    and	$v0,$v0,$s1
    beqz	$v0,.L0db42344
    # Line 289
    move	$a0,$s0
    lw	$t9,8($s2)
    move	$a1,$s2
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,56($sp)
.L0db42344:
    lw	$v1,0($s3)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s1
    beqz	$v1,.L0db42370
    # Line 290
    move	$a0,$s0
    lw	$t9,8($s3)
    move	$a1,$s3
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,56($sp)
.L0db42370:
    lw	$a4,0($s4)
    nor	$a4,$a4,$zero
    and	$a4,$a4,$s1
    beqz	$a4,.L0db4239c
    # Line 291
    move	$a0,$s0
    lw	$t9,8($s4)
    move	$a1,$s4
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,56($sp)
.L0db4239c:
    ld	$a0,0($sp)
    # Line 294
    addu	$a0,$a0,$s0
    lbu	$a0,30570($a0)
    beqz	$a0,.L0db42490
    ld	$s1,48($sp)
    li	$a4,1
    beq	$a0,$a4,.L0db42550
    li	$at,2
    beq	$a0,$at,.L0db42658
.L0db423c0:
    # Line 353
    addiu	$a4,$s4,144
.L0db423c4:
    # Line 352
    addiu	$at,$s3,144
    # Line 351
    addiu	$v0,$s2,144
    sw	$v0,4($s2)
    # Line 352
    sw	$at,4($s3)
    # Line 353
    sw	$a4,4($s4)
    ld	$gp,32($sp)
    lw	$v0,1304($s0)
    li	$v1,7424
    # Line 359
    ld	$s2,40($sp)
    # Line 353
    beq	$v0,$v1,.L0db42530
    # Line 359
    ld	$s3,16($sp)
.L0db423f0:
    ld	$s4,24($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db42400:
    ld	$gp,32($sp)
    # Line 243
    ld	$s0,8($sp)
    ld	$s2,40($sp)
    ld	$s3,16($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db4241c:
    # Line 252
    beqz	$a0,.L0db426c0
    lw	$a1,28128($s0)
    ld	$a3,0($sp)
    # Line 258
    move	$a0,$a3
    # Line 259
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    lw	$a3,28136($a3)
.L0db42438:
    # Line 265
    sll	$v1,$a0,0x4
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,144
    sw	$v1,4($a1)
    # Line 266
    sw	$v1,4($s2)
    # Line 267
    lw	$v0,4($a1)
    sw	$v0,4($s3)
    # Line 268
    lw	$at,4($a1)
    sw	$at,4($s4)
    lw	$a4,0($a1)
    nor	$a4,$a4,$zero
    and	$a4,$a4,$a3
    andi	$a4,$a4,0x1b
    beqzl	$a4,.L0db4231c
    # Line 287
    lw	$v0,0($s2)
    # Line 272
    lw	$t9,8($a1)
    move	$a0,$s0
    sd	$ra,56($sp)
    jalr	$t9
    andi	$a2,$a3,0x1b
    b	.L0db42318
    ld	$ra,56($sp)
.L0db42490:
    # Line 296
    lbu	$a4,184($s2)
    beqz	$a4,.L0db424c4
    # Line 297
    nop	# was lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,56($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # Line 298
    # lw $t9, -32692($gp) # &sub_0db40000
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s2
    ld	$ra,56($sp)
.L0db424c4:
    lbu	$at,184($s3)
    beqz	$at,.L0db424f8
    # Line 301
    nop	# was lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,56($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # lw $t9, -32692($gp) # &sub_0db40000
    # Line 302
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s3
    ld	$ra,56($sp)
.L0db424f8:
    lbu	$at,184($s4)
    beqz	$at,.L0db423c0
    # Line 305
    nop	# was lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,56($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e02000
    # lw $t9, -32692($gp) # &sub_0db40000
    # Line 306
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s4
    b	.L0db423c0
    ld	$ra,56($sp)
.L0db42530:
    # Line 355
    lw	$v0,28128($s0)
    # Line 357
    addiu	$at,$v0,144
    b	.L0db423f0
    sw	$at,4($v0)
.L0db42540:
    # Line 282
    lw	$v1,28136($s0)
    # Line 281
    move	$a0,$zero
    b	.L0db422f0
    # Line 282
    or	$s1,$v1,$s1
.L0db42550:
    # Line 310
    lbu	$a4,184($s2)
    beqz	$a4,.L0db426cc
    nop
    lbu	$at,29900($s0)
    beqz	$at,.L0db426d4
    sd	$ra,56($sp)
    # Line 315
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # lw $t9, -32692($gp) # &sub_0db40000
.L0db4257c:
    # Line 317
    move	$a0,$s0
    # Line 315
    addiu	$t9,$t9,7252
    # Line 317
    bal __glFeedbackTag
    move	$a1,$s2
    # lw $t9, -32692($gp) # &sub_0db40000
    # Line 318
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s3
    ld	$ra,56($sp)
    lbu	$at,184($s3)
.L0db425a8:
    beqzl	$at,.L0db425fc
    # Line 328
    lbu	$at,184($s4)
    # Line 318
    lbu	$v0,29900($s0)
    beqz	$v0,.L0db426f4
    sd	$ra,56($sp)
    # Line 325
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # lw $t9, -32692($gp) # &sub_0db40000
.L0db425d0:
    # Line 327
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s3
    # lw $t9, -32692($gp) # &sub_0db40000
    # Line 328
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s4
    ld	$ra,56($sp)
    lbu	$at,184($s4)
.L0db425fc:
    beqz	$at,.L0db423c4
    # Line 353
    addiu	$a4,$s4,144
    # Line 328
    lbu	$v0,29900($s0)
    beqz	$v0,.L0db42714
    sd	$ra,56($sp)
    # Line 335
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e04000
    # lw $t9, -32692($gp) # &sub_0db40000
.L0db42624:
    # Line 337
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s4
    la	$a2,sub_0db40000
    addiu	$a2,$a2,7252
    # Line 338
    move	$a0,$s0
    move	$a1,$s2
    bal __glFeedbackTag
    move	$t9,$a2
    ld	$ra,56($sp)
    b	.L0db423c4
    # Line 353
    addiu	$a4,$s4,144
.L0db42658:
    # Line 342
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    sd	$ra,56($sp)
    bal __glFeedbackTag
    lwc1	$f13,_lit_44e06000
    # Line 343
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    bal __glFeedbackTag
    lwc1	$f13,_lit_40400000
    # Line 344
    # lw $t9, -32692($gp) # &sub_0db40000
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s2
    # lw $t9, -32692($gp) # &sub_0db40000
    # Line 345
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s3
    # lw $t9, -32692($gp) # &sub_0db40000
    # Line 346
    move	$a0,$s0
    addiu	$t9,$t9,7252
    bal __glFeedbackTag
    move	$a1,$s4
    b	.L0db423c0
    ld	$ra,56($sp)
.L0db426c0:
    # Line 261
    move	$a0,$zero
    b	.L0db42438
    # Line 262
    lw	$a3,28136($s0)
.L0db426cc:
    b	.L0db425a8
    # Line 318
    lbu	$at,184($s3)
.L0db426d4:
    # Line 313
    lwc1	$f13,_lit_44e0e000
    # lw $t9, -27000($gp) # &__glFeedbackTag
    li	$ra,1
    # Line 312
    sb	$ra,29900($s0)
    # Line 313
    bal __glFeedbackTag
    move	$a0,$s0
    b	.L0db4257c
    # Line 315
    nop	# was lw $t9, -32692($gp) # &sub_0db40000
.L0db426f4:
    # Line 323
    lwc1	$f13,_lit_44e0e000
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    li	$at,1
    bal __glFeedbackTag
    # Line 322
    sb	$at,29900($s0)
    b	.L0db425d0
    nop	# was lw $t9, -32692($gp) # &sub_0db40000
.L0db42714:
    # Line 333
    lwc1	$f13,_lit_44e0e000
    # lw $t9, -27000($gp) # &__glFeedbackTag
    move	$a0,$s0
    li	$v0,1
    bal __glFeedbackTag
    # Line 332
    sb	$v0,29900($s0)
    b	.L0db42624
    nop	# was lw $t9, -32692($gp) # &sub_0db40000
.end __glFeedbackTriangle

.rdata
_lit_40400000:
    .word 0x40400000
_lit_44e00000:
    .word 0x44e00000
_lit_44e02000:
    .word 0x44e02000
_lit_44e04000:
    .word 0x44e04000
_lit_44e06000:
    .word 0x44e06000
_lit_44e08000:
    .word 0x44e08000
_lit_44e0a000:
    .word 0x44e0a000
_lit_44e0c000:
    .word 0x44e0c000
_lit_44e0e000:
    .word 0x44e0e000

