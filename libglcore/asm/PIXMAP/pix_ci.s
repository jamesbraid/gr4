# Source: ../PIXMAP/pix_ci.c
# Category: PIXMAP
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../PIXMAP/pix_ci.c
# Total Functions: 12

.text

# Function: Store_8
# Declared: Line 29 (Source lines: 30-70)
# Address: 0x0dba8f98 - 0x0dba9148 (Size: 432 bytes, Frame: 0)
.ent Store_8
Store_8:
    # Line 32
    lw	$a7,0($a0)
    # Line 38
    lw	$a6,4($a1)
    lw	$a2,3376($a7)
    lw	$v1,28($a0)
    subu	$a2,$a6,$a2
    mult	$v1,$a2
    # Line 30
    lui	$v0,0x5
    addiu	$v0,$v0,22272
    addu	$at,$t9,$v0
    # Line 41
    lwc1	$f0,_lit_3d000000
    # Line 36
    lw	$t0,1696($a7)
    # Line 38
    lw	$a4,0($a1)
    lw	$a5,16($a0)
    andi	$v0,$t0,0x8
    # Line 41
    andi	$v1,$a6,0x3
    sll	$v1,$v1,0x2
    # Line 38
    mflo	$t9
    addu	$a5,$a5,$t9
    lw	$t9,3372($a7)
    addu	$a5,$a5,$a4
    beqz	$v0,.L0dba9090
    subu	$a5,$a5,$t9
    # Line 41
    la	$v0,__glDitherTable
    andi	$a3,$a4,0x3
    addu	$a3,$a3,$v1
    addu	$a3,$a3,$v0
    lb	$a3,0($a3)
    sll	$a3,$a3,0x1
    addiu	$a3,$a3,1
    mtc1	$a3,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f0
.L0dba901c:
    # Line 46
    lwc1	$f0,12($a1)
    add.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    # Line 47
    lbu	$a6,0($a5)
    la	$a2,sub_0dbf0000
    andi	$v0,$t0,0x4
    # Line 46
    mfc1	$a4,$f0
    # Line 47
    addiu	$a2,$a2,-1808
    beqz	$v0,.L0dba9074
    # Line 46
    andi	$a4,$a4,0xff
    # Line 47
    lw	$a1,1756($a7)
    # Line 61
    nor	$v0,$a6,$zero
    # Line 47
    addiu	$a1,$a1,-5376
    sltiu	$a3,$a1,16
    sll	$a1,$a1,0x2
    beqz	$a3,.L0dba9074
    addu	$a1,$a1,$a2
    lw	$a2,%lo(jtbl_0dbef8f0)($a1)
    jr	$a2
    nop
.L0dba906c:
    # Line 61
    or	$a4,$v0,$a4
    andi	$a4,$a4,0xff
.L0dba9074:
    # Line 69
    lw	$v1,152($a0)
    lw	$a0,156($a0)
    and	$a0,$a0,$a6
    and	$v1,$v1,$a4
    or	$v1,$v1,$a0
    # Line 70
    jr	$ra
    # Line 69
    sb	$v1,0($a5)
.L0dba9090:
    b	.L0dba901c
    # Line 44
    lwc1	$f4,3280($a7)
.L0dba9098:
    # Line 50
    b	.L0dba9074
    move	$a4,$zero
.L0dba90a0:
    # Line 51
    and	$a4,$a4,$a6
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba90ac:
    # Line 52
    nor	$v0,$a6,$zero
    and	$a4,$v0,$a4
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba90bc:
    # Line 54
    nor	$a4,$a4,$zero
    and	$a4,$a4,$a6
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba90cc:
    # Line 55
    b	.L0dba9074
    move	$a4,$a6
.L0dba90d4:
    # Line 56
    xor	$a4,$a4,$a6
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba90e0:
    # Line 57
    or	$a4,$a4,$a6
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba90ec:
    # Line 58
    nor	$a4,$a4,$a6
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba90f8:
    # Line 59
    xor	$a4,$a4,$a6
    nor	$a4,$a4,$zero
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba9108:
    # Line 60
    nor	$a4,$a6,$zero
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba9114:
    # Line 62
    nor	$a4,$a4,$zero
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba9120:
    # Line 63
    nor	$a4,$a4,$zero
    or	$a4,$a4,$a6
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba9130:
    # Line 64
    and	$a4,$a4,$a6
    nor	$a4,$a4,$zero
    b	.L0dba9074
    andi	$a4,$a4,0xff
.L0dba9140:
    b	.L0dba9074
    # Line 65
    li	$a4,255
.end Store_8

# Function: Store_16
# Declared: Line 73 (Source lines: 74-114)
# Address: 0x0dba9148 - 0x0dba9304 (Size: 444 bytes, Frame: 0)
.ent Store_16
Store_16:
    # Line 76
    lw	$a7,0($a0)
    # Line 82
    lw	$a4,4($a1)
    lw	$a2,3376($a7)
    lw	$v1,28($a0)
    subu	$a2,$a4,$a2
    mult	$v1,$a2
    # Line 74
    lui	$v0,0x5
    addiu	$v0,$v0,21840
    addu	$at,$t9,$v0
    # Line 85
    lwc1	$f0,_lit_3d000000
    # Line 80
    lw	$t0,1696($a7)
    # Line 82
    lw	$a6,0($a1)
    lw	$a5,16($a0)
    andi	$v0,$t0,0x8
    addu	$v1,$a6,$a6
    mflo	$t9
    addu	$t9,$t9,$t9
    addu	$a5,$a5,$t9
    lw	$t9,3372($a7)
    addu	$a5,$a5,$v1
    # Line 85
    andi	$v1,$a4,0x3
    # Line 82
    addu	$t9,$t9,$t9
    beqz	$v0,.L0dba924c
    subu	$a5,$a5,$t9
    # Line 85
    sll	$v1,$v1,0x2
    la	$v0,__glDitherTable
    andi	$a3,$a6,0x3
    addu	$a3,$a3,$v1
    addu	$a3,$a3,$v0
    lb	$a3,0($a3)
    sll	$a3,$a3,0x1
    addiu	$a3,$a3,1
    mtc1	$a3,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f0
.L0dba91d8:
    # Line 90
    lwc1	$f0,12($a1)
    add.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    # Line 91
    lhu	$a6,0($a5)
    la	$a2,sub_0dbf0000
    andi	$v0,$t0,0x4
    # Line 90
    mfc1	$a4,$f0
    # Line 91
    addiu	$a2,$a2,-1744
    beqz	$v0,.L0dba9230
    # Line 90
    andi	$a4,$a4,0xffff
    # Line 91
    lw	$a1,1756($a7)
    # Line 105
    nor	$v0,$a6,$zero
    # Line 91
    addiu	$a1,$a1,-5376
    sltiu	$a3,$a1,16
    sll	$a1,$a1,0x2
    beqz	$a3,.L0dba9230
    addu	$a1,$a1,$a2
    lw	$a2,%lo(jtbl_0dbef930)($a1)
    jr	$a2
    nop
.L0dba9228:
    # Line 105
    or	$a4,$v0,$a4
    andi	$a4,$a4,0xffff
.L0dba9230:
    # Line 113
    lw	$v1,152($a0)
    lw	$a0,156($a0)
    and	$a0,$a0,$a6
    and	$v1,$v1,$a4
    or	$v1,$v1,$a0
    # Line 114
    jr	$ra
    # Line 113
    sh	$v1,0($a5)
.L0dba924c:
    b	.L0dba91d8
    # Line 88
    lwc1	$f4,3280($a7)
.L0dba9254:
    # Line 94
    b	.L0dba9230
    move	$a4,$zero
.L0dba925c:
    # Line 95
    and	$a4,$a4,$a6
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba9268:
    # Line 96
    nor	$v0,$a6,$zero
    and	$a4,$v0,$a4
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba9278:
    # Line 98
    nor	$a4,$a4,$zero
    and	$a4,$a4,$a6
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba9288:
    # Line 99
    b	.L0dba9230
    move	$a4,$a6
.L0dba9290:
    # Line 100
    xor	$a4,$a4,$a6
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba929c:
    # Line 101
    or	$a4,$a4,$a6
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba92a8:
    # Line 102
    nor	$a4,$a4,$a6
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba92b4:
    # Line 103
    xor	$a4,$a4,$a6
    nor	$a4,$a4,$zero
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba92c4:
    # Line 104
    nor	$a4,$a6,$zero
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba92d0:
    # Line 106
    nor	$a4,$a4,$zero
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba92dc:
    # Line 107
    nor	$a4,$a4,$zero
    or	$a4,$a4,$a6
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba92ec:
    # Line 108
    and	$a4,$a4,$a6
    nor	$a4,$a4,$zero
    b	.L0dba9230
    andi	$a4,$a4,0xffff
.L0dba92fc:
    b	.L0dba9230
    # Line 109
    li	$a4,0xffff
.end Store_16

# Function: Store_32
# Declared: Line 117 (Source lines: 118-158)
# Address: 0x0dba9304 - 0x0dba948c (Size: 392 bytes, Frame: 0)
.ent Store_32
Store_32:
    # Line 120
    lw	$a7,0($a0)
    # Line 126
    lw	$a4,4($a1)
    lw	$a2,3376($a7)
    lw	$v1,28($a0)
    subu	$a2,$a4,$a2
    mult	$v1,$a2
    # Line 118
    lui	$v0,0x5
    addiu	$v0,$v0,21396
    addu	$at,$t9,$v0
    # Line 129
    lwc1	$f0,_lit_3d000000
    # Line 124
    lw	$t0,1696($a7)
    # Line 126
    lw	$a6,0($a1)
    lw	$a5,16($a0)
    andi	$v0,$t0,0x8
    sll	$v1,$a6,0x2
    mflo	$t9
    sll	$t9,$t9,0x2
    addu	$a5,$a5,$t9
    lw	$t9,3372($a7)
    addu	$a5,$a5,$v1
    # Line 129
    andi	$v1,$a4,0x3
    # Line 126
    sll	$t9,$t9,0x2
    beqz	$v0,.L0dba9404
    subu	$a5,$a5,$t9
    # Line 129
    sll	$v1,$v1,0x2
    la	$v0,__glDitherTable
    andi	$a3,$a6,0x3
    addu	$a3,$a3,$v1
    addu	$a3,$a3,$v0
    lb	$a3,0($a3)
    sll	$a3,$a3,0x1
    addiu	$a3,$a3,1
    mtc1	$a3,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f0
.L0dba9394:
    # Line 134
    lwc1	$f0,12($a1)
    add.s	$f0,$f0,$f4
    # Line 135
    la	$a2,sub_0dbf0000
    # Line 134
    trunc.l.s	$f0,$f0
    # Line 135
    andi	$v0,$t0,0x4
    lw	$a6,0($a5)
    addiu	$a2,$a2,-1680
    # Line 134
    dmfc1	$a4,$f0
    # Line 140
    nor	$v1,$a6,$zero
    # Line 135
    beqz	$v0,.L0dba93e8
    # Line 134
    sll	$a4,$a4,0x0
    # Line 135
    lw	$a1,1756($a7)
    addiu	$a1,$a1,-5376
    sltiu	$a3,$a1,16
    sll	$a1,$a1,0x2
    beqz	$a3,.L0dba93e8
    addu	$a1,$a1,$a2
    lw	$a2,%lo(jtbl_0dbef970)($a1)
    jr	$a2
    # Line 149
    nor	$a3,$a6,$zero
.L0dba93e4:
    or	$a4,$a3,$a4
.L0dba93e8:
    # Line 157
    lw	$v1,156($a0)
    lw	$v0,152($a0)
    and	$v1,$v1,$a6
    and	$v0,$v0,$a4
    or	$v0,$v0,$v1
    # Line 158
    jr	$ra
    # Line 157
    sw	$v0,0($a5)
.L0dba9404:
    b	.L0dba9394
    # Line 132
    lwc1	$f4,3280($a7)
.L0dba940c:
    # Line 138
    b	.L0dba93e8
    move	$a4,$zero
.L0dba9414:
    # Line 139
    b	.L0dba93e8
    and	$a4,$a4,$a6
.L0dba941c:
    # Line 140
    b	.L0dba93e8
    and	$a4,$v1,$a4
.L0dba9424:
    # Line 142
    nor	$a4,$a4,$zero
    b	.L0dba93e8
    and	$a4,$a4,$a6
.L0dba9430:
    # Line 143
    b	.L0dba93e8
    move	$a4,$a6
.L0dba9438:
    # Line 144
    b	.L0dba93e8
    xor	$a4,$a4,$a6
.L0dba9440:
    # Line 145
    b	.L0dba93e8
    or	$a4,$a4,$a6
.L0dba9448:
    # Line 146
    b	.L0dba93e8
    nor	$a4,$a4,$a6
.L0dba9450:
    # Line 147
    xor	$a4,$a4,$a6
    b	.L0dba93e8
    nor	$a4,$a4,$zero
.L0dba945c:
    # Line 148
    b	.L0dba93e8
    nor	$a4,$a6,$zero
.L0dba9464:
    # Line 150
    b	.L0dba93e8
    nor	$a4,$a4,$zero
.L0dba946c:
    # Line 151
    nor	$a4,$a4,$zero
    b	.L0dba93e8
    or	$a4,$a4,$a6
.L0dba9478:
    # Line 152
    and	$a4,$a4,$a6
    b	.L0dba93e8
    nor	$a4,$a4,$zero
.L0dba9484:
    b	.L0dba93e8
    # Line 153
    li	$a4,-1
.end Store_32

# Function: Fetch_8
# Declared: Line 166 (Source lines: 172-173)
# Address: 0x0dba948c - 0x0dba94d0 (Size: 68 bytes, Frame: 0)
.ent Fetch_8
Fetch_8:
    # Line 172
    lw	$v0,0($a0)
    lw	$a4,3376($v0)
    lw	$v1,28($a0)
    subu	$a2,$a2,$a4
    mult	$v1,$a2
    lw	$at,16($a0)
    lw	$v0,3372($v0)
    mflo	$v1
    addu	$at,$at,$v1
    addu	$at,$at,$a1
    subu	$at,$at,$v0
    lbu	$at,0($at)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 173
    jr	$ra
    # Line 172
    swc1	$f0,0($a3)
.end Fetch_8

# Function: Fetch_16
# Declared: Line 175 (Source lines: 181-182)
# Address: 0x0dba94d0 - 0x0dba9520 (Size: 80 bytes, Frame: 0)
.ent Fetch_16
Fetch_16:
    # Line 181
    lw	$v0,0($a0)
    lw	$at,3376($v0)
    lw	$a4,28($a0)
    subu	$at,$a2,$at
    mult	$a4,$at
    lw	$v0,3372($v0)
    addu	$v0,$v0,$v0
    lw	$at,16($a0)
    mflo	$v1
    addu	$v1,$v1,$v1
    addu	$at,$at,$v1
    addu	$v1,$a1,$a1
    addu	$at,$at,$v1
    subu	$at,$at,$v0
    lhu	$at,0($at)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 182
    jr	$ra
    # Line 181
    swc1	$f0,0($a3)
.end Fetch_16

# Function: Fetch_32
# Declared: Line 184 (Source lines: 190-191)
# Address: 0x0dba9520 - 0x0dba9578 (Size: 88 bytes, Frame: 0)
.ent Fetch_32
Fetch_32:
    # Line 190
    lw	$v0,0($a0)
    lw	$at,3376($v0)
    lw	$a4,28($a0)
    subu	$at,$a2,$at
    mult	$a4,$at
    lw	$v0,3372($v0)
    sll	$v0,$v0,0x2
    lw	$at,16($a0)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    sll	$v1,$a1,0x2
    addu	$at,$at,$v1
    subu	$at,$at,$v0
    lw	$at,0($at)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 191
    jr	$ra
    # Line 190
    swc1	$f0,0($a3)
.end Fetch_32

# Function: Clear
# Declared: Line 193 (Source lines: 194-220)
# Address: 0x0dba9578 - 0x0dba9674 (Size: 252 bytes, Frame: 176)
.ent Clear
Clear:
    # Line 194
    addiu	$sp,$sp,-176
    sd	$s7,128($sp)
    sd	$s4,104($sp)
    sd	$s5,88($sp)
    sd	$s1,96($sp)
    sd	$gp,64($sp)
    lui	$a1,0x5
    # Line 195
    lw	$v1,0($a0)
    # Line 194
    addiu	$a1,$a1,20768
    addu	$gp,$t9,$a1
    sd	$v1,80($sp)
    # Line 204
    lw	$s1,29764($v1)
    # Line 202
    lw	$s5,29756($v1)
    sd	$s3,120($sp)
    # Line 194
    move	$s3,$a0
    # Line 207
    li	$a0,-5
    sd	$s6,112($sp)
    # Line 209
    lwc1	$f0,1776($v1)
    # Line 201
    lw	$a2,29752($v1)
    # Line 203
    lw	$s6,29760($v1)
    # Line 199
    lw	$v0,1696($v1)
    # Line 210
    move	$s4,$a2
    slt	$at,$a2,$s6
    sd	$v0,72($sp)
    # Line 207
    and	$v0,$v0,$a0
    sw	$v0,1696($v1)
    # Line 210
    beqz	$at,.L0dba9648
    # Line 209
    swc1	$f0,12($sp)
    sd	$ra,144($sp)
    sd	$s0,136($sp)
    # Line 210
    subu	$s7,$s1,$s5
    sd	$s7,56($sp)
    b	.L0dba960c
    slt	$s7,$s5,$s1
.L0dba9600:
    addiu	$s4,$s4,1
    beql	$s6,$s4,.L0dba9640
    ld	$s7,128($sp)
.L0dba960c:
    # Line 211
    sw	$s4,0($sp)
    # Line 212
    beqz	$s7,.L0dba9600
    move	$s0,$s5
    # Line 213
    sw	$s0,4($sp)
.L0dba961c:
    # Line 215
    lw	$t9,164($s3)
    addiu	$a1,$sp,0
    # Line 212
    addiu	$s0,$s0,1
    # Line 215
    jalr	$t9
    move	$a0,$s3
    # Line 212
    bnel	$s1,$s0,.L0dba961c
    # Line 213
    sw	$s0,4($sp)
    b	.L0dba9600
    nop
.L0dba9640:
    ld	$s0,136($sp)
    ld	$ra,144($sp)
.L0dba9648:
    ld	$gp,64($sp)
    # Line 220
    ld	$s1,96($sp)
    ld	$s3,120($sp)
    ld	$s4,104($sp)
    ld	$s5,88($sp)
    ld	$s6,112($sp)
    ld	$at,72($sp)
    # Line 219
    ld	$v0,80($sp)
    # Line 220
    addiu	$sp,$sp,176
    jr	$ra
    # Line 219
    sw	$at,1696($v0)
.end Clear

# Function: StoreSpan
# Declared: Line 222 (Source lines: 223-247)
# Address: 0x0dba9674 - 0x0dba9710 (Size: 156 bytes, Frame: 128)
.ent StoreSpan
StoreSpan:
    # Line 223
    addiu	$sp,$sp,-128
    sd	$ra,96($sp)
    sd	$s1,72($sp)
    sd	$s4,88($sp)
    sd	$gp,56($sp)
    lui	$at,0x5
    addiu	$at,$at,20516
    # Line 233
    lw	$v0,30252($a0)
    sd	$s5,64($sp)
    # Line 231
    lw	$s5,30300($a0)
    # Line 233
    sw	$v0,4($sp)
    sd	$s0,80($sp)
    # Line 234
    lw	$s0,30248($a0)
    # Line 223
    addu	$gp,$t9,$at
    # Line 237
    lw	$s4,30532($a0)
    # Line 235
    addu	$s5,$s0,$s5
    # Line 239
    slt	$at,$s0,$s5
    beqz	$at,.L0dba96f0
    # Line 236
    lw	$s1,30516($a0)
    # Line 240
    sw	$s0,0($sp)
.L0dba96c4:
    # Line 241
    lwc1	$f0,0($s1)
    swc1	$f0,12($sp)
    # Line 244
    addiu	$a1,$sp,0
    lw	$t9,164($s4)
    move	$a0,$s4
    # Line 239
    addiu	$s0,$s0,1
    # Line 244
    jalr	$t9
    # Line 242
    addiu	$s1,$s1,16
    # Line 239
    bnel	$s5,$s0,.L0dba96c4
    # Line 240
    sw	$s0,0($sp)
    ld	$ra,96($sp)
.L0dba96f0:
    # Line 247
    move	$v0,$zero
    ld	$gp,56($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    ld	$s4,88($sp)
    ld	$s5,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end StoreSpan

# Function: StoreStippledSpan
# Declared: Line 250 (Source lines: 251-294)
# Address: 0x0dba9710 - 0x0dba983c (Size: 300 bytes, Frame: 176)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 251
    addiu	$sp,$sp,-176
    sd	$s5,120($sp)
    sd	$s1,72($sp)
    sd	$s2,96($sp)
    sd	$s6,88($sp)
    sd	$gp,80($sp)
    lui	$at,0x5
    addiu	$at,$at,20360
    sd	$s8,56($sp)
    # Line 261
    lw	$s8,30524($a0)
    # Line 263
    lw	$v0,30252($a0)
    sd	$s7,64($sp)
    # Line 260
    lw	$s7,30300($a0)
    # Line 263
    sw	$v0,4($sp)
    # Line 251
    addu	$gp,$t9,$at
    # Line 266
    lw	$s6,30532($a0)
    # Line 265
    lw	$s2,30516($a0)
    # Line 266
    beqz	$s7,.L0dba9818
    # Line 264
    lw	$s1,30248($a0)
    sd	$s3,152($sp)
    sd	$ra,144($sp)
    sd	$s4,136($sp)
    sd	$s0,128($sp)
    b	.L0dba9788
    # Line 266
    li	$s5,-1
.L0dba9774:
    # Line 277
    ld	$at,112($sp)
    ld	$s1,104($sp)
    addu	$s1,$s1,$at
    addiu	$s1,$s1,1
.L0dba9784:
    beqz	$s7,.L0dba9804
.L0dba9788:
    # Line 269
    slti	$v0,$s7,33
    bnez	$v0,.L0dba9798
    move	$s3,$s7
    # Line 271
    li	$s3,32
.L0dba9798:
    lui	$s0,0x8000
    # Line 275
    lw	$s4,0($s8)
    # Line 277
    move	$v1,$s1
    # Line 273
    subu	$s7,$s7,$s3
    # Line 277
    addiu	$s3,$s3,-1
    bltz	$s3,.L0dba9784
    # Line 275
    addiu	$s8,$s8,4
    # Line 277
    move	$a1,$s3
    sd	$s3,104($sp)
    b	.L0dba97d0
    sd	$s1,112($sp)
.L0dba97c4:
    # Line 285
    addiu	$s2,$s2,16
.L0dba97c8:
    # Line 277
    beq	$s3,$s5,.L0dba9774
    # Line 284
    addiu	$s1,$s1,1
.L0dba97d0:
    # Line 277
    addiu	$s3,$s3,-1
    and	$at,$s4,$s0
    beqz	$at,.L0dba97c4
    # Line 287
    srl	$s0,$s0,0x1
    # Line 279
    sw	$s1,0($sp)
    # Line 280
    lwc1	$f0,0($s2)
    swc1	$f0,12($sp)
    # Line 282
    lw	$t9,164($s6)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s6
    b	.L0dba97c8
    # Line 285
    addiu	$s2,$s2,16
.L0dba9804:
    ld	$s5,120($sp)
    ld	$s0,128($sp)
    ld	$s4,136($sp)
    ld	$ra,144($sp)
    ld	$s3,152($sp)
.L0dba9818:
    # Line 294
    move	$v0,$zero
    ld	$gp,80($sp)
    ld	$s1,72($sp)
    ld	$s2,96($sp)
    ld	$s6,88($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end StoreStippledSpan

# Function: Pick
# Declared: Line 297 (Source lines: 298-320)
# Address: 0x0dba983c - 0x0dba98d0 (Size: 148 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 299
    move	$a4,$zero
    lw	$v0,1788($a0)
    # Line 298
    lui	$v1,0x5
    addiu	$v1,$v1,20060
    # Line 299
    beqz	$v0,.L0dba98b0
    # Line 298
    addu	$at,$t9,$v1
    # Line 305
    lw	$a3,72($a1)
    lw	$v0,1780($a0)
    and	$v0,$v0,$a3
    sw	$v0,152($a1)
    # Line 306
    lw	$a2,1780($a0)
    nor	$a2,$a2,$zero
    and	$a2,$a2,$a3
    sw	$a2,156($a1)
.L0dba9874:
    # Line 309
    lw	$a0,24($a1)
    li	$a3,4
    li	$v1,1
    beq	$a0,$v1,.L0dba9894
    li	$a2,2
    beq	$a0,$a2,.L0dba98c8
    nop
    beq	$a0,$a3,.L0dba98c0
.L0dba9894:
    # Line 319
    la	$v1,sub_0dbf0000
    sll	$v0,$a4,0x2
    addiu	$v1,$v1,20808
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    # Line 320
    jr	$ra
    # Line 319
    sw	$v0,164($a1)
.L0dba98b0:
    # Line 303
    lw	$a2,72($a1)
    # Line 302
    sw	$zero,152($a1)
    # Line 303
    b	.L0dba9874
    sw	$a2,156($a1)
.L0dba98c0:
    b	.L0dba9894
    # Line 316
    li	$a4,2
.L0dba98c8:
    # Line 314
    b	.L0dba9894
    # Line 313
    li	$a4,1
.end Pick

# Function: Resize
# Declared: Line 322 (Source lines: 323-336)
# Address: 0x0dba98d0 - 0x0dba9974 (Size: 164 bytes, Frame: 208)
.ent Resize
Resize:
    # Line 326
    lw	$v0,24($a0)
    multu	$a1,$v0
    # Line 323
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    # Line 326
    li	$a1,-4
    mflo	$a0
    addiu	$a0,$a0,3
    and	$a0,$a0,$a1
    divu	$zero,$a0,$v0
    sd	$s0,24($sp)
    # Line 323
    move	$s0,$a2
    sd	$s2,32($sp)
    sd	$gp,8($sp)
    lui	$v1,0x5
    addiu	$v1,$v1,19912
    # Line 326
    lw	$at,16($s1)
    # Line 323
    addu	$gp,$t9,$v1
    # Line 326
    mflo	$s2
    beqz	$at,.L0dba9954
    teq	$v0,$zero,0x7
.L0dba992c:
    ld	$gp,8($sp)
    # Line 334
    sw	$s0,8($s1)
    # Line 336
    ld	$s0,24($sp)
    # Line 335
    sw	$s2,28($s1)
    # Line 333
    sw	$s8,4($s1)
    # Line 336
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dba9954:
    # Line 330
    move	$a0,$s1
    # lw $t9, -27584($gp) # &__glResizeBuffer
    move	$a1,$s2
    sd	$ra,40($sp)
    jal	__glResizeBuffer
    move	$a2,$s0
    b	.L0dba992c
    ld	$ra,40($sp)
.end Resize

# Function: __glPixInitCI
# Declared: Line 339 (Source lines: 340-382)
# Address: 0x0dba9974 - 0x0dba9ab8 (Size: 324 bytes, Frame: 48)
.globl __glPixInitCI
.ent __glPixInitCI
__glPixInitCI:
    # Line 340
    addiu	$sp,$sp,-48
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,19748
    addu	$gp,$t9,$at
    # Line 343
    # lw $t9, -27596($gp) # &__glInitBuffer
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    jal	__glInitBuffer
    # Line 340
    move	$s0,$a0
    # Line 357
    lwc1	$f0,_lit_3f800000
    # Line 348
    la	$v0,__glReturnSpan
    # Line 345
    la	$a2,__glFetchSpan
    # Line 360
    swc1	$f0,128($s0)
    # Line 359
    swc1	$f0,96($s0)
    # Line 358
    swc1	$f0,92($s0)
    # Line 357
    swc1	$f0,88($s0)
    # Line 353
    sw	$a2,204($s0)
    # Line 352
    sw	$a2,200($s0)
    # Line 350
    la	$at,sub_0dbb0000
    # Line 351
    la	$ra,sub_0dbb0000
    # Line 348
    sw	$v0,180($s0)
    # Line 350
    addiu	$at,$at,-27272
    # Line 351
    addiu	$ra,$ra,-26564
    sw	$ra,160($s0)
    # Line 347
    la	$v1,__glReadSpan
    # Line 350
    sw	$at,216($s0)
    # Line 345
    la	$a0,sub_0dbb0000
    # Line 347
    sw	$v1,176($s0)
    # Line 355
    la	$v1,sub_0dbb0000
    # Line 345
    addiu	$a0,$a0,-26416
    sw	$a0,56($s0)
    # Line 354
    la	$a0,sub_0dbb0000
    # Line 355
    addiu	$v1,$v1,-26864
    sw	$v1,188($s0)
    # Line 354
    addiu	$a0,$a0,-27020
    sw	$a0,184($s0)
    # Line 362
    lw	$a0,3136($s8)
    # Line 366
    li	$a1,-1
    ld	$ra,8($sp)
    # Line 362
    slti	$v0,$a0,32
    beqz	$v0,.L0dba9a3c
    ld	$s8,16($sp)
    # Line 364
    li	$a1,1
    sllv	$a1,$a1,$a0
    addiu	$a1,$a1,-1
    b	.L0dba9a44
    sw	$a1,152($s0)
.L0dba9a3c:
    ld	$s8,16($sp)
    # Line 366
    sw	$a1,152($s0)
.L0dba9a44:
    # Line 368
    slti	$a2,$a0,17
    beqz	$a2,.L0dba9a9c
    sw	$a1,72($s0)
    # Line 373
    slti	$at,$a0,9
    bnez	$at,.L0dba9a74
    # Line 375
    li	$v1,2
    la	$v0,sub_0dbb0000
    sw	$v1,24($s0)
    addiu	$v0,$v0,-27440
    # Line 376
    sw	$v0,168($s0)
    b	.L0dba9a8c
    sw	$v0,172($s0)
.L0dba9a74:
    la	$a2,sub_0dbb0000
    addiu	$a2,$a2,-27508
    # Line 378
    li	$at,1
    sw	$at,24($s0)
    # Line 379
    sw	$a2,168($s0)
    sw	$a2,172($s0)
.L0dba9a8c:
    ld	$gp,24($sp)
    # Line 382
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dba9a9c:
    # Line 372
    li	$v1,4
    la	$v0,sub_0dbb0000
    sw	$v1,24($s0)
    addiu	$v0,$v0,-27360
    # Line 373
    sw	$v0,168($s0)
    b	.L0dba9a8c
    sw	$v0,172($s0)
.end __glPixInitCI

.late_rodata
jtbl_0dbef8f0:
    .word .L0dba9098
    .word .L0dba90a0
    .word .L0dba90ac
    .word .L0dba9074
    .word .L0dba90bc
    .word .L0dba90cc
    .word .L0dba90d4
    .word .L0dba90e0
    .word .L0dba90ec
    .word .L0dba90f8
    .word .L0dba9108
    .word .L0dba906c
    .word .L0dba9114
    .word .L0dba9120
    .word .L0dba9130
    .word .L0dba9140
jtbl_0dbef930:
    .word .L0dba9254
    .word .L0dba925c
    .word .L0dba9268
    .word .L0dba9230
    .word .L0dba9278
    .word .L0dba9288
    .word .L0dba9290
    .word .L0dba929c
    .word .L0dba92a8
    .word .L0dba92b4
    .word .L0dba92c4
    .word .L0dba9228
    .word .L0dba92d0
    .word .L0dba92dc
    .word .L0dba92ec
    .word .L0dba92fc
jtbl_0dbef970:
    .word .L0dba940c
    .word .L0dba9414
    .word .L0dba941c
    .word .L0dba93e8
    .word .L0dba9424
    .word .L0dba9430
    .word .L0dba9438
    .word .L0dba9440
    .word .L0dba9448
    .word .L0dba9450
    .word .L0dba945c
    .word .L0dba93e4
    .word .L0dba9464
    .word .L0dba946c
    .word .L0dba9478
    .word .L0dba9484

.rdata
_lit_3d000000:
    .word 0x3d000000
_lit_3f800000:
    .word 0x3f800000

