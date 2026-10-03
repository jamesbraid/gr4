# Source: ../pixel/px_histogram.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_histogram.c
# Total Functions: 21

.text

# Function: __glFClamp
# Declared: Line 28 (Source lines: 29-35)
# Address: 0x0db24450 - 0x0db2449c (Size: 76 bytes, Frame: 0)
.globl __glFClamp
.ent __glFClamp
__glFClamp:
    # Line 29
    lui	$v0,0xe
    addiu	$v0,$v0,-23992
    addu	$at,$t9,$v0
    # Line 30
    mtc1	$zero,$f0
    c.lt.s	$f12,$f0
    nop
    bc1t	.L0db24494
    lw	$a2,__glCurrentContext
    # Line 32
    lwc1	$f0,3284($a2)
    c.lt.s	$f0,$f12
    nop
    bc1f	.L0db2448c
    nop
    # Line 34
    jr	$ra
    nop
.L0db2448c:
    # Line 35
    jr	$ra
    mov.s	$f0,$f12
.L0db24494:
    # Line 32
    jr	$ra
    nop
.end __glFClamp

# Function: __glSpanMinmaxA
# Declared: Line 43 (Source lines: 54-69)
# Address: 0x0db2449c - 0x0db24600 (Size: 356 bytes, Frame: 0)
.globl __glSpanMinmaxA
.ent __glSpanMinmaxA
__glSpanMinmaxA:
    # Line 57
    lw	$a6,184($a1)
    # Line 54
    lwc1	$f5,30864($a0)
    # Line 59
    move	$a5,$zero
    blez	$a6,.L0db2452c
    move	$a4,$a6
    andi	$at,$a6,0x1
    beqz	$at,.L0db24524
    sra	$v0,$a4,0x1
    # Line 60
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 61
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    # Line 62
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f5
    lwc1	$f0,1244($a0)
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0db244fc
    # Line 59
    addiu	$a5,$a5,1
    # Line 64
    swc1	$f4,1244($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f5
.L0db244fc:
    lwc1	$f0,1248($a0)
    c.lt.s	$f0,$f4
    nop
    bc1f	.L0db24514
    # Line 67
    addiu	$a3,$a3,16
    # Line 66
    swc1	$f4,1248($a0)
.L0db24514:
    # Line 67
    lwc1	$f1,12($a2)
    addiu	$a2,$a2,16
    swc1	$f1,-4($a3)
    sra	$v0,$a4,0x1
.L0db24524:
    bnezl	$v0,.L0db24560
    # Line 60
    lwc1	$f2,0($a2)
.L0db2452c:
    # Line 69
    jr	$ra
    nop
.L0db24534:
    # Line 64
    lwc1	$f2,1248($a0)
    c.lt.s	$f2,$f4
    nop
    bc1f	.L0db2454c
    # Line 67
    addiu	$a2,$a2,32
    # Line 66
    swc1	$f4,1248($a0)
.L0db2454c:
    # Line 59
    addiu	$a5,$a5,2
    # Line 67
    lwc1	$f3,-4($a2)
    # Line 59
    beq	$a6,$a5,.L0db2452c
    # Line 67
    swc1	$f3,-4($a3)
    # Line 60
    lwc1	$f2,0($a2)
.L0db24560:
    swc1	$f2,0($a3)
    # Line 61
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    # Line 62
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f5
    lwc1	$f0,1244($a0)
    c.lt.s	$f4,$f0
    nop
    bc1fl	.L0db245a0
    # Line 64
    lwc1	$f0,1248($a0)
    swc1	$f4,1244($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f5
    lwc1	$f0,1248($a0)
.L0db245a0:
    c.lt.s	$f0,$f4
    nop
    bc1fl	.L0db245b8
    # Line 67
    lwc1	$f3,12($a2)
    # Line 66
    swc1	$f4,1248($a0)
    # Line 67
    lwc1	$f3,12($a2)
.L0db245b8:
    swc1	$f3,12($a3)
    # Line 60
    lwc1	$f2,16($a2)
    swc1	$f2,16($a3)
    # Line 61
    lwc1	$f1,20($a2)
    swc1	$f1,20($a3)
    # Line 62
    lwc1	$f0,24($a2)
    swc1	$f0,24($a3)
    lwc1	$f4,28($a2)
    mul.s	$f4,$f4,$f5
    lwc1	$f1,1244($a0)
    c.lt.s	$f4,$f1
    nop
    bc1f	.L0db24534
    # Line 67
    addiu	$a3,$a3,32
    # Line 64
    swc1	$f4,1244($a0)
    lwc1	$f4,28($a2)
    b	.L0db24534
    mul.s	$f4,$f4,$f5
.end __glSpanMinmaxA

# Function: __glSpanMinmaxL
# Declared: Line 71 (Source lines: 82-97)
# Address: 0x0db24600 - 0x0db2476c (Size: 364 bytes, Frame: 0)
.globl __glSpanMinmaxL
.ent __glSpanMinmaxL
__glSpanMinmaxL:
    # Line 85
    lw	$a6,184($a1)
    # Line 82
    lwc1	$f6,30852($a0)
    # Line 87
    move	$a5,$zero
    blez	$a6,.L0db24694
    move	$a4,$a6
    andi	$at,$a6,0x1
    beqz	$at,.L0db2468c
    sra	$v0,$a4,0x1
    lwc1	$f5,0($a2)
    mul.s	$f4,$f5,$f6
    lwc1	$f0,1244($a0)
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0db24648
    addiu	$a5,$a5,1
    # Line 89
    swc1	$f4,1244($a0)
    lwc1	$f5,0($a2)
    mul.s	$f4,$f5,$f6
.L0db24648:
    lwc1	$f1,1248($a0)
    c.lt.s	$f1,$f4
    nop
    bc1fl	.L0db24668
    # Line 92
    swc1	$f5,0($a3)
    # Line 91
    swc1	$f4,1248($a0)
    lwc1	$f5,0($a2)
    # Line 92
    swc1	$f5,0($a3)
.L0db24668:
    # Line 93
    lwc1	$f0,4($a2)
    swc1	$f0,4($a3)
    # Line 94
    lwc1	$f3,8($a2)
    swc1	$f3,8($a3)
    # Line 95
    lwc1	$f2,12($a2)
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    swc1	$f2,-4($a3)
    sra	$v0,$a4,0x1
.L0db2468c:
    bnezl	$v0,.L0db24744
    # Line 87
    lwc1	$f5,0($a2)
.L0db24694:
    # Line 97
    jr	$ra
    nop
.L0db2469c:
    # Line 89
    lwc1	$f1,1248($a0)
    c.lt.s	$f1,$f4
    nop
    bc1fl	.L0db246bc
    # Line 92
    swc1	$f5,0($a3)
    # Line 91
    swc1	$f4,1248($a0)
    lwc1	$f5,0($a2)
    # Line 92
    swc1	$f5,0($a3)
.L0db246bc:
    # Line 93
    lwc1	$f5,4($a2)
    swc1	$f5,4($a3)
    # Line 94
    lwc1	$f4,8($a2)
    swc1	$f4,8($a3)
    # Line 95
    lwc1	$f3,12($a2)
    swc1	$f3,12($a3)
    # Line 87
    lwc1	$f5,16($a2)
    mul.s	$f4,$f5,$f6
    lwc1	$f2,1244($a0)
    c.lt.s	$f4,$f2
    nop
    bc1fl	.L0db24700
    # Line 89
    lwc1	$f0,1248($a0)
    swc1	$f4,1244($a0)
    lwc1	$f5,16($a2)
    mul.s	$f4,$f5,$f6
    lwc1	$f0,1248($a0)
.L0db24700:
    c.lt.s	$f0,$f4
    nop
    bc1fl	.L0db2471c
    # Line 92
    swc1	$f5,16($a3)
    # Line 91
    swc1	$f4,1248($a0)
    lwc1	$f5,16($a2)
    # Line 92
    swc1	$f5,16($a3)
.L0db2471c:
    # Line 93
    lwc1	$f3,20($a2)
    swc1	$f3,20($a3)
    # Line 94
    lwc1	$f2,24($a2)
    swc1	$f2,24($a3)
    # Line 95
    addiu	$a3,$a3,32
    lwc1	$f1,28($a2)
    addiu	$a2,$a2,32
    # Line 87
    beq	$a6,$a5,.L0db24694
    # Line 95
    swc1	$f1,-4($a3)
    # Line 87
    lwc1	$f5,0($a2)
.L0db24744:
    mul.s	$f4,$f5,$f6
    lwc1	$f0,1244($a0)
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0db2469c
    addiu	$a5,$a5,2
    # Line 89
    swc1	$f4,1244($a0)
    lwc1	$f5,0($a2)
    b	.L0db2469c
    mul.s	$f4,$f5,$f6
.end __glSpanMinmaxL

# Function: __glSpanMinmaxLA
# Declared: Line 99 (Source lines: 110-130)
# Address: 0x0db2476c - 0x0db24994 (Size: 552 bytes, Frame: 0)
.globl __glSpanMinmaxLA
.ent __glSpanMinmaxLA
__glSpanMinmaxLA:
    # Line 111
    lwc1	$f7,30864($a0)
    # Line 114
    lw	$a6,184($a1)
    # Line 110
    lwc1	$f6,30852($a0)
    # Line 116
    move	$a5,$zero
    blez	$a6,.L0db24840
    move	$a4,$a6
    andi	$at,$a6,0x1
    beqz	$at,.L0db24838
    sra	$v0,$a4,0x1
    lwc1	$f5,0($a2)
    mul.s	$f4,$f5,$f6
    lwc1	$f0,1244($a0)
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0db247b8
    addiu	$a5,$a5,1
    # Line 118
    swc1	$f4,1244($a0)
    lwc1	$f5,0($a2)
    mul.s	$f4,$f5,$f6
.L0db247b8:
    lwc1	$f1,1252($a0)
    c.lt.s	$f1,$f4
    nop
    bc1fl	.L0db247d8
    # Line 121
    swc1	$f5,0($a3)
    # Line 120
    swc1	$f4,1252($a0)
    lwc1	$f5,0($a2)
    # Line 121
    swc1	$f5,0($a3)
.L0db247d8:
    # Line 122
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    # Line 123
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f7
    lwc1	$f2,1248($a0)
    c.lt.s	$f4,$f2
    nop
    bc1fl	.L0db24814
    # Line 125
    lwc1	$f0,1256($a0)
    swc1	$f4,1248($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f7
    lwc1	$f0,1256($a0)
.L0db24814:
    c.lt.s	$f0,$f4
    nop
    bc1f	.L0db24828
    # Line 128
    addiu	$a3,$a3,16
    # Line 127
    swc1	$f4,1256($a0)
.L0db24828:
    # Line 128
    lwc1	$f1,12($a2)
    addiu	$a2,$a2,16
    swc1	$f1,-4($a3)
    sra	$v0,$a4,0x1
.L0db24838:
    bnezl	$v0,.L0db248cc
    # Line 116
    lwc1	$f5,0($a2)
.L0db24840:
    # Line 130
    jr	$ra
    nop
.L0db24848:
    # Line 118
    lwc1	$f2,1252($a0)
.L0db2484c:
    c.lt.s	$f2,$f4
    nop
    bc1fl	.L0db24868
    # Line 121
    swc1	$f5,16($a3)
    # Line 120
    swc1	$f4,1252($a0)
    lwc1	$f5,16($a2)
    # Line 121
    swc1	$f5,16($a3)
.L0db24868:
    # Line 122
    lwc1	$f1,20($a2)
    swc1	$f1,20($a3)
    # Line 123
    lwc1	$f0,24($a2)
    swc1	$f0,24($a3)
    lwc1	$f4,28($a2)
    mul.s	$f4,$f4,$f7
    lwc1	$f3,1248($a0)
    c.lt.s	$f4,$f3
    nop
    bc1f	.L0db248a0
    # Line 128
    addiu	$a3,$a3,32
    # Line 125
    swc1	$f4,1248($a0)
    lwc1	$f4,28($a2)
    mul.s	$f4,$f4,$f7
.L0db248a0:
    lwc1	$f0,1256($a0)
    c.lt.s	$f0,$f4
    nop
    bc1f	.L0db248b8
    # Line 128
    addiu	$a2,$a2,32
    # Line 127
    swc1	$f4,1256($a0)
.L0db248b8:
    # Line 116
    addiu	$a5,$a5,2
    # Line 128
    lwc1	$f1,-4($a2)
    # Line 116
    beq	$a6,$a5,.L0db24840
    # Line 128
    swc1	$f1,-4($a3)
    # Line 116
    lwc1	$f5,0($a2)
.L0db248cc:
    mul.s	$f4,$f5,$f6
    lwc1	$f2,1244($a0)
    c.lt.s	$f4,$f2
    nop
    bc1fl	.L0db248f4
    # Line 118
    lwc1	$f3,1252($a0)
    swc1	$f4,1244($a0)
    lwc1	$f5,0($a2)
    mul.s	$f4,$f5,$f6
    lwc1	$f3,1252($a0)
.L0db248f4:
    c.lt.s	$f3,$f4
    nop
    bc1fl	.L0db24910
    # Line 121
    swc1	$f5,0($a3)
    # Line 120
    swc1	$f4,1252($a0)
    lwc1	$f5,0($a2)
    # Line 121
    swc1	$f5,0($a3)
.L0db24910:
    # Line 122
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    # Line 123
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f7
    lwc1	$f0,1248($a0)
    c.lt.s	$f4,$f0
    nop
    bc1fl	.L0db2494c
    # Line 125
    lwc1	$f0,1256($a0)
    swc1	$f4,1248($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f7
    lwc1	$f0,1256($a0)
.L0db2494c:
    c.lt.s	$f0,$f4
    nop
    bc1fl	.L0db24964
    # Line 128
    lwc1	$f2,12($a2)
    # Line 127
    swc1	$f4,1256($a0)
    # Line 128
    lwc1	$f2,12($a2)
.L0db24964:
    swc1	$f2,12($a3)
    # Line 116
    lwc1	$f5,16($a2)
    mul.s	$f4,$f5,$f6
    lwc1	$f1,1244($a0)
    c.lt.s	$f4,$f1
    nop
    bc1fl	.L0db2484c
    # Line 118
    lwc1	$f2,1252($a0)
    swc1	$f4,1244($a0)
    lwc1	$f5,16($a2)
    b	.L0db24848
    mul.s	$f4,$f5,$f6
.end __glSpanMinmaxLA

# Function: __glSpanMinmaxRGB
# Declared: Line 132 (Source lines: 143-168)
# Address: 0x0db24994 - 0x0db24aa8 (Size: 276 bytes, Frame: 0)
.globl __glSpanMinmaxRGB
.ent __glSpanMinmaxRGB
__glSpanMinmaxRGB:
    # Line 145
    lwc1	$f8,30860($a0)
    # Line 148
    lw	$a6,184($a1)
    # Line 144
    lwc1	$f9,30856($a0)
    # Line 143
    lwc1	$f7,30852($a0)
    # Line 150
    blez	$a6,.L0db24aa0
    move	$a5,$zero
    b	.L0db249e8
    lwc1	$f5,0($a2)
.L0db249b4:
    # Line 162
    lwc1	$f0,1264($a0)
    c.lt.s	$f0,$f4
    nop
    bc1f	.L0db249d0
    # Line 150
    addiu	$a5,$a5,1
    # Line 164
    swc1	$f4,1264($a0)
    lwc1	$f5,8($a2)
.L0db249d0:
    # Line 165
    swc1	$f5,-8($a3)
    # Line 166
    lwc1	$f1,12($a2)
    addiu	$a2,$a2,16
    # Line 150
    beq	$a6,$a5,.L0db24aa0
    # Line 166
    swc1	$f1,-4($a3)
    # Line 150
    lwc1	$f5,0($a2)
.L0db249e8:
    mul.s	$f4,$f5,$f7
    lwc1	$f2,1244($a0)
    c.lt.s	$f4,$f2
    nop
    bc1fl	.L0db24a10
    # Line 152
    lwc1	$f3,1256($a0)
    swc1	$f4,1244($a0)
    lwc1	$f5,0($a2)
    mul.s	$f4,$f5,$f7
    lwc1	$f3,1256($a0)
.L0db24a10:
    c.lt.s	$f3,$f4
    nop
    bc1fl	.L0db24a2c
    # Line 155
    swc1	$f5,0($a3)
    # Line 154
    swc1	$f4,1256($a0)
    lwc1	$f5,0($a2)
    # Line 155
    swc1	$f5,0($a3)
.L0db24a2c:
    lwc1	$f6,4($a2)
    mul.s	$f4,$f6,$f9
    lwc1	$f0,1248($a0)
    c.lt.s	$f4,$f0
    nop
    bc1fl	.L0db24a58
    # Line 157
    lwc1	$f1,1260($a0)
    swc1	$f4,1248($a0)
    lwc1	$f6,4($a2)
    mul.s	$f4,$f6,$f9
    lwc1	$f1,1260($a0)
.L0db24a58:
    c.lt.s	$f1,$f4
    nop
    bc1fl	.L0db24a74
    # Line 160
    swc1	$f6,4($a3)
    # Line 159
    swc1	$f4,1260($a0)
    lwc1	$f6,4($a2)
    # Line 160
    swc1	$f6,4($a3)
.L0db24a74:
    lwc1	$f5,8($a2)
    mul.s	$f4,$f5,$f8
    lwc1	$f2,1252($a0)
    c.lt.s	$f4,$f2
    nop
    bc1f	.L0db249b4
    # Line 166
    addiu	$a3,$a3,16
    # Line 162
    swc1	$f4,1252($a0)
    lwc1	$f5,8($a2)
    b	.L0db249b4
    mul.s	$f4,$f5,$f8
.L0db24aa0:
    # Line 168
    jr	$ra
    nop
.end __glSpanMinmaxRGB

# Function: __glSpanMinmaxRGBA
# Declared: Line 170 (Source lines: 181-211)
# Address: 0x0db24aa8 - 0x0db24c00 (Size: 344 bytes, Frame: 0)
.globl __glSpanMinmaxRGBA
.ent __glSpanMinmaxRGBA
__glSpanMinmaxRGBA:
    # Line 184
    lwc1	$f10,30864($a0)
    # Line 183
    lwc1	$f8,30860($a0)
    # Line 187
    lw	$a6,184($a1)
    # Line 182
    lwc1	$f9,30856($a0)
    # Line 181
    lwc1	$f7,30852($a0)
    # Line 189
    blez	$a6,.L0db24bf8
    move	$a5,$zero
    b	.L0db24bd0
    lwc1	$f6,0($a2)
.L0db24acc:
    # Line 191
    lwc1	$f0,1260($a0)
.L0db24ad0:
    c.lt.s	$f0,$f4
    nop
    bc1fl	.L0db24aec
    # Line 194
    swc1	$f6,0($a3)
    # Line 193
    swc1	$f4,1260($a0)
    lwc1	$f6,0($a2)
    # Line 194
    swc1	$f6,0($a3)
.L0db24aec:
    lwc1	$f5,4($a2)
    mul.s	$f4,$f5,$f9
    lwc1	$f1,1248($a0)
    c.lt.s	$f4,$f1
    nop
    bc1fl	.L0db24b18
    # Line 196
    lwc1	$f2,1264($a0)
    swc1	$f4,1248($a0)
    lwc1	$f5,4($a2)
    mul.s	$f4,$f5,$f9
    lwc1	$f2,1264($a0)
.L0db24b18:
    c.lt.s	$f2,$f4
    nop
    bc1fl	.L0db24b34
    # Line 199
    swc1	$f5,4($a3)
    # Line 198
    swc1	$f4,1264($a0)
    lwc1	$f5,4($a2)
    # Line 199
    swc1	$f5,4($a3)
.L0db24b34:
    lwc1	$f6,8($a2)
    mul.s	$f4,$f6,$f8
    lwc1	$f3,1252($a0)
    c.lt.s	$f4,$f3
    nop
    bc1fl	.L0db24b60
    # Line 201
    lwc1	$f0,1268($a0)
    swc1	$f4,1252($a0)
    lwc1	$f6,8($a2)
    mul.s	$f4,$f6,$f8
    lwc1	$f0,1268($a0)
.L0db24b60:
    c.lt.s	$f0,$f4
    nop
    bc1fl	.L0db24b7c
    # Line 204
    swc1	$f6,8($a3)
    # Line 203
    swc1	$f4,1268($a0)
    lwc1	$f6,8($a2)
    # Line 204
    swc1	$f6,8($a3)
.L0db24b7c:
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f10
    lwc1	$f1,1256($a0)
    c.lt.s	$f4,$f1
    nop
    bc1f	.L0db24ba4
    # Line 209
    addiu	$a3,$a3,16
    # Line 206
    swc1	$f4,1256($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f10
.L0db24ba4:
    lwc1	$f0,1272($a0)
    c.lt.s	$f0,$f4
    nop
    bc1f	.L0db24bbc
    # Line 209
    addiu	$a2,$a2,16
    # Line 208
    swc1	$f4,1272($a0)
.L0db24bbc:
    # Line 189
    addiu	$a5,$a5,1
    # Line 209
    lwc1	$f1,-4($a2)
    # Line 189
    beq	$a6,$a5,.L0db24bf8
    # Line 209
    swc1	$f1,-4($a3)
    # Line 189
    lwc1	$f6,0($a2)
.L0db24bd0:
    mul.s	$f4,$f6,$f7
    lwc1	$f2,1244($a0)
    c.lt.s	$f4,$f2
    nop
    bc1fl	.L0db24ad0
    # Line 191
    lwc1	$f0,1260($a0)
    swc1	$f4,1244($a0)
    lwc1	$f6,0($a2)
    b	.L0db24acc
    mul.s	$f4,$f6,$f7
.L0db24bf8:
    # Line 211
    jr	$ra
    nop
.end __glSpanMinmaxRGBA

# Function: __glSpanMinmaxSinkA
# Declared: Line 220 (Source lines: 230-241)
# Address: 0x0db24c00 - 0x0db24d08 (Size: 264 bytes, Frame: 0)
.globl __glSpanMinmaxSinkA
.ent __glSpanMinmaxSinkA
__glSpanMinmaxSinkA:
    # Line 235
    move	$a5,$zero
    # Line 233
    lw	$a6,184($a1)
    # Line 235
    addiu	$a4,$a2,12
    # Line 230
    lwc1	$f5,30864($a0)
    # Line 235
    blez	$a6,.L0db24c74
    andi	$at,$a6,0x1
    move	$a2,$a6
    lwc1	$f6,1248($a0)
    beqz	$at,.L0db24c68
    lwc1	$f7,1244($a0)
    lwc1	$f4,0($a4)
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f7
    nop
    bc1fl	.L0db24c54
    # Line 237
    c.lt.s	$f6,$f4
    swc1	$f4,1244($a0)
    mov.s	$f7,$f4
    lwc1	$f4,0($a4)
    mul.s	$f4,$f4,$f5
    c.lt.s	$f6,$f4
.L0db24c54:
    # Line 235
    addiu	$a5,$a5,1
    # Line 237
    bc1f	.L0db24c68
    # Line 235
    addiu	$a4,$a4,16
    # Line 239
    mov.s	$f6,$f4
    swc1	$f4,1248($a0)
.L0db24c68:
    sra	$v0,$a2,0x1
    bnezl	$v0,.L0db24ca0
    # Line 235
    lwc1	$f4,0($a4)
.L0db24c74:
    # Line 241
    jr	$ra
    nop
.L0db24c7c:
    # Line 237
    c.lt.s	$f6,$f4
.L0db24c80:
    nop
    bc1f	.L0db24c94
    # Line 235
    addiu	$a4,$a4,32
    # Line 239
    mov.s	$f6,$f4
    swc1	$f4,1248($a0)
.L0db24c94:
    # Line 235
    beq	$a6,$a5,.L0db24c74
    nop
    lwc1	$f4,0($a4)
.L0db24ca0:
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f7
    nop
    bc1f	.L0db24cc4
    addiu	$a5,$a5,2
    # Line 237
    swc1	$f4,1244($a0)
    mov.s	$f7,$f4
    lwc1	$f4,0($a4)
    mul.s	$f4,$f4,$f5
.L0db24cc4:
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0db24ce0
    # Line 235
    lwc1	$f4,16($a4)
    # Line 239
    mov.s	$f6,$f4
    swc1	$f4,1248($a0)
    # Line 235
    lwc1	$f4,16($a4)
.L0db24ce0:
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f7
    nop
    bc1fl	.L0db24c80
    # Line 237
    c.lt.s	$f6,$f4
    swc1	$f4,1244($a0)
    mov.s	$f7,$f4
    lwc1	$f4,16($a4)
    b	.L0db24c7c
    mul.s	$f4,$f4,$f5
.end __glSpanMinmaxSinkA

# Function: __glSpanMinmaxSinkL
# Declared: Line 244 (Source lines: 254-265)
# Address: 0x0db24d08 - 0x0db24e0c (Size: 260 bytes, Frame: 0)
.globl __glSpanMinmaxSinkL
.ent __glSpanMinmaxSinkL
__glSpanMinmaxSinkL:
    # Line 257
    lw	$a5,184($a1)
    # Line 254
    lwc1	$f5,30864($a0)
    # Line 259
    move	$a4,$zero
    blez	$a5,.L0db24d78
    andi	$at,$a5,0x1
    move	$a3,$a5
    lwc1	$f6,1248($a0)
    beqz	$at,.L0db24d6c
    lwc1	$f7,1244($a0)
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f7
    nop
    bc1fl	.L0db24d58
    # Line 261
    c.lt.s	$f6,$f4
    swc1	$f4,1244($a0)
    mov.s	$f7,$f4
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f5
    c.lt.s	$f6,$f4
.L0db24d58:
    # Line 259
    addiu	$a4,$a4,1
    # Line 261
    bc1f	.L0db24d6c
    # Line 259
    addiu	$a2,$a2,16
    # Line 263
    mov.s	$f6,$f4
    swc1	$f4,1248($a0)
.L0db24d6c:
    sra	$v0,$a3,0x1
    bnezl	$v0,.L0db24da4
    # Line 259
    lwc1	$f4,0($a2)
.L0db24d78:
    # Line 265
    jr	$ra
    nop
.L0db24d80:
    # Line 261
    c.lt.s	$f6,$f4
.L0db24d84:
    nop
    bc1f	.L0db24d98
    # Line 259
    addiu	$a2,$a2,32
    # Line 263
    mov.s	$f6,$f4
    swc1	$f4,1248($a0)
.L0db24d98:
    # Line 259
    beq	$a5,$a4,.L0db24d78
    nop
    lwc1	$f4,0($a2)
.L0db24da4:
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f7
    nop
    bc1f	.L0db24dc8
    addiu	$a4,$a4,2
    # Line 261
    swc1	$f4,1244($a0)
    mov.s	$f7,$f4
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f5
.L0db24dc8:
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0db24de4
    # Line 259
    lwc1	$f4,16($a2)
    # Line 263
    mov.s	$f6,$f4
    swc1	$f4,1248($a0)
    # Line 259
    lwc1	$f4,16($a2)
.L0db24de4:
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f7
    nop
    bc1fl	.L0db24d84
    # Line 261
    c.lt.s	$f6,$f4
    swc1	$f4,1244($a0)
    mov.s	$f7,$f4
    lwc1	$f4,16($a2)
    b	.L0db24d80
    mul.s	$f4,$f4,$f5
.end __glSpanMinmaxSinkL

# Function: __glSpanMinmaxSinkLA
# Declared: Line 268 (Source lines: 278-295)
# Address: 0x0db24e0c - 0x0db24ec8 (Size: 188 bytes, Frame: 0)
.globl __glSpanMinmaxSinkLA
.ent __glSpanMinmaxSinkLA
__glSpanMinmaxSinkLA:
    # Line 282
    lw	$a5,184($a1)
    # Line 279
    lwc1	$f6,30864($a0)
    # Line 278
    lwc1	$f5,30852($a0)
    # Line 284
    blez	$a5,.L0db24ec0
    move	$a4,$zero
    lwc1	$f10,1256($a0)
    lwc1	$f7,1248($a0)
    lwc1	$f8,1252($a0)
    b	.L0db24e3c
    lwc1	$f9,1244($a0)
.L0db24e34:
    beq	$a5,$a4,.L0db24ec0
    nop
.L0db24e3c:
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f9
    nop
    bc1f	.L0db24e64
    addiu	$a4,$a4,1
    # Line 286
    swc1	$f4,1244($a0)
    mov.s	$f9,$f4
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f5
.L0db24e64:
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0db24e80
    # Line 288
    lwc1	$f4,12($a2)
    mov.s	$f8,$f4
    swc1	$f4,1252($a0)
    lwc1	$f4,12($a2)
.L0db24e80:
    mul.s	$f4,$f4,$f6
    c.lt.s	$f4,$f7
    nop
    bc1fl	.L0db24ea8
    # Line 291
    c.lt.s	$f10,$f4
    swc1	$f4,1248($a0)
    mov.s	$f7,$f4
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f6
    c.lt.s	$f10,$f4
.L0db24ea8:
    nop
    bc1f	.L0db24e34
    # Line 284
    addiu	$a2,$a2,16
    # Line 293
    mov.s	$f10,$f4
    b	.L0db24e34
    swc1	$f4,1256($a0)
.L0db24ec0:
    # Line 295
    jr	$ra
    nop
.end __glSpanMinmaxSinkLA

# Function: __glSpanMinmaxSinkRGB
# Declared: Line 298 (Source lines: 308-331)
# Address: 0x0db24ec8 - 0x0db24fd0 (Size: 264 bytes, Frame: 0)
.globl __glSpanMinmaxSinkRGB
.ent __glSpanMinmaxSinkRGB
__glSpanMinmaxSinkRGB:
    # Line 310
    lwc1	$f7,30860($a0)
    # Line 313
    lw	$a5,184($a1)
    # Line 309
    lwc1	$f6,30856($a0)
    # Line 308
    lwc1	$f5,30852($a0)
    # Line 315
    blez	$a5,.L0db24fc8
    move	$a4,$zero
    lwc1	$f12,1264($a0)
    lwc1	$f13,1252($a0)
    lwc1	$f8,1260($a0)
    lwc1	$f9,1248($a0)
    lwc1	$f10,1256($a0)
    b	.L0db24f1c
    lwc1	$f11,1244($a0)
.L0db24efc:
    # Line 327
    c.lt.s	$f12,$f4
.L0db24f00:
    nop
    bc1f	.L0db24f14
    # Line 315
    addiu	$a2,$a2,16
    # Line 329
    mov.s	$f12,$f4
    swc1	$f4,1264($a0)
.L0db24f14:
    # Line 315
    beq	$a5,$a4,.L0db24fc8
    nop
.L0db24f1c:
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f11
    nop
    bc1f	.L0db24f44
    addiu	$a4,$a4,1
    # Line 317
    swc1	$f4,1244($a0)
    mov.s	$f11,$f4
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f5
.L0db24f44:
    c.lt.s	$f10,$f4
    nop
    bc1fl	.L0db24f60
    # Line 319
    lwc1	$f4,4($a2)
    mov.s	$f10,$f4
    swc1	$f4,1256($a0)
    lwc1	$f4,4($a2)
.L0db24f60:
    mul.s	$f4,$f4,$f6
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0db24f88
    # Line 322
    c.lt.s	$f8,$f4
    swc1	$f4,1248($a0)
    mov.s	$f9,$f4
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f6
    c.lt.s	$f8,$f4
.L0db24f88:
    nop
    bc1fl	.L0db24fa0
    # Line 324
    lwc1	$f4,8($a2)
    mov.s	$f8,$f4
    swc1	$f4,1260($a0)
    lwc1	$f4,8($a2)
.L0db24fa0:
    mul.s	$f4,$f4,$f7
    c.lt.s	$f4,$f13
    nop
    bc1fl	.L0db24f00
    # Line 327
    c.lt.s	$f12,$f4
    swc1	$f4,1252($a0)
    mov.s	$f13,$f4
    lwc1	$f4,8($a2)
    b	.L0db24efc
    mul.s	$f4,$f4,$f7
.L0db24fc8:
    # Line 331
    jr	$ra
    nop
.end __glSpanMinmaxSinkRGB

# Function: __glSpanMinmaxSinkRGBA
# Declared: Line 334 (Source lines: 344-373)
# Address: 0x0db24fd0 - 0x0db25124 (Size: 340 bytes, Frame: 0)
.globl __glSpanMinmaxSinkRGBA
.ent __glSpanMinmaxSinkRGBA
__glSpanMinmaxSinkRGBA:
    # Line 347
    lwc1	$f7,30864($a0)
    # Line 346
    lwc1	$f5,30860($a0)
    # Line 350
    lw	$a5,184($a1)
    # Line 345
    lwc1	$f8,30856($a0)
    # Line 344
    lwc1	$f6,30852($a0)
    # Line 352
    blez	$a5,.L0db2511c
    move	$a4,$zero
    lwc1	$f11,1272($a0)
    lwc1	$f14,1256($a0)
    lwc1	$f10,1268($a0)
    lwc1	$f12,1252($a0)
    lwc1	$f15,1264($a0)
    lwc1	$f9,1248($a0)
    lwc1	$f13,1260($a0)
    b	.L0db250f0
    lwc1	$f16,1244($a0)
.L0db25010:
    # Line 354
    c.lt.s	$f13,$f4
    nop
    bc1fl	.L0db2502c
    # Line 356
    lwc1	$f4,4($a2)
    mov.s	$f13,$f4
    swc1	$f4,1260($a0)
    lwc1	$f4,4($a2)
.L0db2502c:
    mul.s	$f4,$f4,$f8
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0db25054
    # Line 359
    c.lt.s	$f15,$f4
    swc1	$f4,1248($a0)
    mov.s	$f9,$f4
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f8
    c.lt.s	$f15,$f4
.L0db25054:
    nop
    bc1fl	.L0db2506c
    # Line 361
    lwc1	$f4,8($a2)
    mov.s	$f15,$f4
    swc1	$f4,1264($a0)
    lwc1	$f4,8($a2)
.L0db2506c:
    mul.s	$f4,$f4,$f5
    c.lt.s	$f4,$f12
    nop
    bc1fl	.L0db25094
    # Line 364
    c.lt.s	$f10,$f4
    swc1	$f4,1252($a0)
    mov.s	$f12,$f4
    lwc1	$f4,8($a2)
    mul.s	$f4,$f4,$f5
    c.lt.s	$f10,$f4
.L0db25094:
    nop
    bc1fl	.L0db250ac
    # Line 366
    lwc1	$f4,12($a2)
    mov.s	$f10,$f4
    swc1	$f4,1268($a0)
    lwc1	$f4,12($a2)
.L0db250ac:
    mul.s	$f4,$f4,$f7
    c.lt.s	$f4,$f14
    nop
    bc1fl	.L0db250d4
    # Line 369
    c.lt.s	$f11,$f4
    swc1	$f4,1256($a0)
    mov.s	$f14,$f4
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f7
    c.lt.s	$f11,$f4
.L0db250d4:
    nop
    bc1f	.L0db250e8
    # Line 352
    addiu	$a2,$a2,16
    # Line 371
    mov.s	$f11,$f4
    swc1	$f4,1272($a0)
.L0db250e8:
    # Line 352
    beq	$a5,$a4,.L0db2511c
    nop
.L0db250f0:
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f6
    c.lt.s	$f4,$f16
    nop
    bc1f	.L0db25010
    addiu	$a4,$a4,1
    # Line 354
    swc1	$f4,1244($a0)
    mov.s	$f16,$f4
    lwc1	$f4,0($a2)
    b	.L0db25010
    mul.s	$f4,$f4,$f6
.L0db2511c:
    # Line 373
    jr	$ra
    nop
.end __glSpanMinmaxSinkRGBA

# Function: __glSpanHistogramA
# Declared: Line 376 (Source lines: 378-399)
# Address: 0x0db25124 - 0x0db25358 (Size: 564 bytes, Frame: 240)
.globl __glSpanHistogramA
.ent __glSpanHistogramA
__glSpanHistogramA:
    # Line 378
    addiu	$sp,$sp,-112
    sd	$s1,40($sp)
    move	$s1,$a3
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$s3,8($sp)
    # Line 392
    move	$s3,$zero
    sd	$s4,16($sp)
    # Line 378
    move	$s4,$a0
    sdc1	$f28,0($sp)
    # Line 387
    lwc1	$f28,30864($a0)
    sd	$gp,48($sp)
    # Line 378
    lui	$at,0xe
    sd	$s5,32($sp)
    # Line 390
    lw	$s5,184($a1)
    # Line 378
    addiu	$at,$at,-27276
    addu	$gp,$t9,$at
    # Line 392
    blez	$s5,.L0db25334
    andi	$v0,$s5,0x1
    move	$a0,$s5
    sdc1	$f30,72($sp)
    beqz	$v0,.L0db25218
    ldc1	$f30,_lit8_3fe0000000000000
    # Line 393
    lwc1	$f15,0($s0)
    swc1	$f15,0($s1)
    # Line 394
    lwc1	$f14,4($s0)
    swc1	$f14,4($s1)
    # Line 395
    lwc1	$f13,8($s0)
    sd	$a0,56($sp)
    swc1	$f13,8($s1)
    # Line 396
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    sd	$ra,64($sp)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # Line 397
    addiu	$s1,$s1,16
    # Line 396
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # Line 397
    addiu	$s0,$s0,16
    # Line 396
    lw	$ra,1196($s4)
    mtc1	$ra,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f0,$f1
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f30
    trunc.w.d	$f1,$f1
    mfc1	$a1,$f1
    lw	$a0,1156($s4)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$v1,0($a0)
    addiu	$v1,$v1,1
    sw	$v1,0($a0)
    # Line 392
    addiu	$s3,$s3,1
    # Line 397
    lwc1	$f0,-4($s0)
    ld	$ra,64($sp)
    ld	$a0,56($sp)
    swc1	$f0,-4($s1)
.L0db25218:
    sra	$at,$a0,0x1
    beqz	$at,.L0db2532c
    sd	$ra,64($sp)
.L0db25224:
    # Line 393
    lwc1	$f15,0($s0)
    swc1	$f15,0($s1)
    # Line 394
    lwc1	$f14,4($s0)
    swc1	$f14,4($s1)
    # Line 395
    lwc1	$f13,8($s0)
    swc1	$f13,8($s1)
    # Line 396
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    # Line 392
    addiu	$s3,$s3,2
    # Line 396
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s4)
    mtc1	$a1,$f17
    nop
    cvt.s.w	$f17,$f17
    mul.s	$f17,$f0,$f17
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f30
    trunc.w.d	$f17,$f17
    mfc1	$a0,$f17
    lw	$v1,1156($s4)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 397
    lwc1	$f16,12($s0)
    swc1	$f16,12($s1)
    # Line 393
    lwc1	$f15,16($s0)
    swc1	$f15,16($s1)
    # Line 394
    lwc1	$f14,20($s0)
    swc1	$f14,20($s1)
    # Line 395
    lwc1	$f13,24($s0)
    swc1	$f13,24($s1)
    # Line 396
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,28($s0)
    # Line 397
    addiu	$s1,$s1,32
    # Line 396
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,28($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s4)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f0,$f1
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f30
    trunc.w.d	$f1,$f1
    mfc1	$v1,$f1
    lw	$v0,1156($s4)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,0($v0)
    addiu	$at,$at,1
    sw	$at,0($v0)
    # Line 397
    lwc1	$f0,28($s0)
    addiu	$s0,$s0,32
    # Line 392
    bne	$s5,$s3,.L0db25224
    # Line 397
    swc1	$f0,-4($s1)
.L0db2532c:
    ldc1	$f30,72($sp)
    ld	$ra,64($sp)
.L0db25334:
    ld	$gp,48($sp)
    # Line 399
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s5,32($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanHistogramA

# Function: __glSpanHistogramL
# Declared: Line 401 (Source lines: 403-424)
# Address: 0x0db25358 - 0x0db2558c (Size: 564 bytes, Frame: 240)
.globl __glSpanHistogramL
.ent __glSpanHistogramL
__glSpanHistogramL:
    # Line 403
    addiu	$sp,$sp,-112
    sdc1	$f30,56($sp)
    sd	$s1,40($sp)
    move	$s1,$a3
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$s3,8($sp)
    # Line 417
    move	$s3,$zero
    sd	$s4,16($sp)
    # Line 403
    move	$s4,$a0
    sdc1	$f28,0($sp)
    # Line 412
    lwc1	$f28,30852($a0)
    sd	$gp,48($sp)
    # Line 403
    lui	$at,0xe
    sd	$s5,32($sp)
    # Line 415
    lw	$s5,184($a1)
    # Line 403
    addiu	$at,$at,-27840
    addu	$gp,$t9,$at
    # Line 417
    blez	$s5,.L0db25568
    andi	$v0,$s5,0x1
    move	$a0,$s5
    beqz	$v0,.L0db2544c
    ldc1	$f30,_lit8_3fe0000000000000
    sd	$a0,64($sp)
    # Line 418
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    sd	$ra,72($sp)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # Line 417
    addiu	$s3,$s3,1
    # Line 418
    lw	$ra,1196($s4)
    mtc1	$ra,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f0,$f4
    cvt.d.s	$f4,$f4
    add.d	$f4,$f4,$f30
    trunc.w.d	$f4,$f4
    mfc1	$a1,$f4
    lw	$a0,1156($s4)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$v1,0($a0)
    addiu	$v1,$v1,1
    sw	$v1,0($a0)
    # Line 419
    lwc1	$f3,0($s0)
    swc1	$f3,0($s1)
    # Line 420
    lwc1	$f2,4($s0)
    swc1	$f2,4($s1)
    # Line 421
    lwc1	$f1,8($s0)
    # Line 422
    addiu	$s1,$s1,16
    # Line 421
    swc1	$f1,-8($s1)
    # Line 422
    addiu	$s0,$s0,16
    lwc1	$f0,-4($s0)
    ld	$ra,72($sp)
    ld	$a0,64($sp)
    swc1	$f0,-4($s1)
.L0db2544c:
    sra	$at,$a0,0x1
    beqz	$at,.L0db25560
    sd	$ra,72($sp)
.L0db25458:
    # Line 418
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    # Line 417
    addiu	$s3,$s3,2
    # Line 418
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s4)
    mtc1	$a1,$f17
    nop
    cvt.s.w	$f17,$f17
    mul.s	$f17,$f0,$f17
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f30
    trunc.w.d	$f17,$f17
    mfc1	$a0,$f17
    lw	$v1,1156($s4)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 419
    lwc1	$f16,0($s0)
    swc1	$f16,0($s1)
    # Line 420
    lwc1	$f15,4($s0)
    swc1	$f15,4($s1)
    # Line 421
    lwc1	$f14,8($s0)
    swc1	$f14,8($s1)
    # Line 422
    lwc1	$f13,12($s0)
    swc1	$f13,12($s1)
    # Line 418
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,16($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,16($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s4)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f0,$f4
    cvt.d.s	$f4,$f4
    add.d	$f4,$f4,$f30
    trunc.w.d	$f4,$f4
    mfc1	$v1,$f4
    lw	$v0,1156($s4)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,0($v0)
    addiu	$at,$at,1
    sw	$at,0($v0)
    # Line 419
    lwc1	$f3,16($s0)
    swc1	$f3,16($s1)
    # Line 420
    lwc1	$f2,20($s0)
    swc1	$f2,20($s1)
    # Line 421
    lwc1	$f1,24($s0)
    swc1	$f1,24($s1)
    # Line 422
    addiu	$s1,$s1,32
    lwc1	$f0,28($s0)
    addiu	$s0,$s0,32
    # Line 417
    bne	$s5,$s3,.L0db25458
    # Line 422
    swc1	$f0,-4($s1)
.L0db25560:
    ldc1	$f30,56($sp)
    ld	$ra,72($sp)
.L0db25568:
    ld	$gp,48($sp)
    # Line 424
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s5,32($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanHistogramL

# Function: __glSpanHistogramLA
# Declared: Line 426 (Source lines: 428-451)
# Address: 0x0db2558c - 0x0db25708 (Size: 380 bytes, Frame: 240)
.globl __glSpanHistogramLA
.ent __glSpanHistogramLA
__glSpanHistogramLA:
    # Line 428
    addiu	$sp,$sp,-112
    sdc1	$f30,64($sp)
    sd	$s1,40($sp)
    move	$s1,$a3
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s3,16($sp)
    move	$s3,$a0
    sdc1	$f24,0($sp)
    # Line 438
    lwc1	$f24,30864($a0)
    sdc1	$f28,8($sp)
    # Line 437
    lwc1	$f28,30852($a0)
    sd	$s4,24($sp)
    # Line 443
    move	$s4,$zero
    sd	$gp,56($sp)
    sd	$s5,48($sp)
    # Line 441
    lw	$s5,184($a1)
    # Line 428
    lui	$at,0xe
    addiu	$at,$at,-28404
    # Line 443
    blez	$s5,.L0db256e0
    # Line 428
    addu	$gp,$t9,$at
    sd	$ra,72($sp)
    # Line 443
    ldc1	$f30,_lit8_3fe0000000000000
.L0db255e8:
    # Line 444
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    # Line 443
    addiu	$s4,$s4,1
    # Line 444
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s3)
    mtc1	$a1,$f16
    nop
    cvt.s.w	$f16,$f16
    mul.s	$f16,$f0,$f16
    cvt.d.s	$f16,$f16
    add.d	$f16,$f16,$f30
    trunc.w.d	$f16,$f16
    mfc1	$a0,$f16
    lw	$v1,1156($s3)
    addu	$a0,$a0,$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 445
    lwc1	$f15,0($s0)
    swc1	$f15,0($s1)
    # Line 446
    lwc1	$f14,4($s0)
    swc1	$f14,4($s1)
    # Line 447
    lwc1	$f13,8($s0)
    swc1	$f13,8($s1)
    # Line 448
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    # Line 449
    addiu	$s1,$s1,16
    # Line 448
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    lw	$a1,1196($s3)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f0,$f1
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f30
    trunc.w.d	$f1,$f1
    mfc1	$v1,$f1
    lw	$v0,1156($s3)
    addu	$v1,$v1,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,4($v0)
    addiu	$at,$at,1
    sw	$at,4($v0)
    # Line 449
    lwc1	$f0,12($s0)
    addiu	$s0,$s0,16
    # Line 443
    bne	$s5,$s4,.L0db255e8
    # Line 449
    swc1	$f0,-4($s1)
    ldc1	$f30,64($sp)
    ld	$ra,72($sp)
.L0db256e0:
    ld	$gp,56($sp)
    # Line 451
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s3,16($sp)
    ld	$s4,24($sp)
    ld	$s5,48($sp)
    ldc1	$f24,0($sp)
    ldc1	$f28,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanHistogramLA

# Function: __glSpanHistogramRGB
# Declared: Line 453 (Source lines: 455-480)
# Address: 0x0db25708 - 0x0db258fc (Size: 500 bytes, Frame: 128)
.globl __glSpanHistogramRGB
.ent __glSpanHistogramRGB
__glSpanHistogramRGB:
    # Line 455
    addiu	$sp,$sp,-128
    sdc1	$f22,72($sp)
    sd	$s1,48($sp)
    move	$s1,$a3
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s3,24($sp)
    move	$s3,$a0
    sdc1	$f30,16($sp)
    # Line 466
    lwc1	$f30,30860($a0)
    sdc1	$f24,0($sp)
    # Line 465
    lwc1	$f24,30856($a0)
    sdc1	$f28,8($sp)
    # Line 464
    lwc1	$f28,30852($a0)
    sd	$s4,32($sp)
    # Line 471
    move	$s4,$zero
    sd	$gp,64($sp)
    sd	$s5,56($sp)
    # Line 469
    lw	$s5,184($a1)
    # Line 455
    lui	$at,0xe
    addiu	$at,$at,-28784
    # Line 471
    blez	$s5,.L0db258d0
    # Line 455
    addu	$gp,$t9,$at
    sd	$ra,80($sp)
    # Line 471
    ldc1	$f22,_lit8_3fe0000000000000
.L0db2576c:
    # Line 472
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a2,1196($s3)
    mtc1	$a2,$f14
    nop
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f0,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f22
    trunc.w.d	$f14,$f14
    mfc1	$a1,$f14
    lw	$v1,1156($s3)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 473
    lwc1	$f13,0($s0)
    swc1	$f13,0($s1)
    # Line 474
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    lw	$a7,1196($s3)
    mtc1	$a7,$f14
    nop
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f0,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f22
    trunc.w.d	$f14,$f14
    mfc1	$a6,$f14
    lw	$a4,1156($s3)
    sll	$a5,$a6,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lw	$a3,4($a4)
    addiu	$a3,$a3,1
    sw	$a3,4($a4)
    # Line 475
    lwc1	$f13,4($s0)
    swc1	$f13,4($s1)
    # Line 476
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,8($s0)
    # Line 478
    addiu	$s1,$s1,16
    # Line 476
    bal __glFClamp
    mul.s	$f12,$f12,$f30
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,8($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f30
    # Line 471
    addiu	$s4,$s4,1
    # Line 476
    lw	$at,1196($s3)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f0,$f2
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f22
    trunc.w.d	$f2,$f2
    mfc1	$a1,$f2
    lw	$v0,1156($s3)
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,8($v0)
    addiu	$at,$at,1
    sw	$at,8($v0)
    # Line 477
    lwc1	$f1,8($s0)
    swc1	$f1,-8($s1)
    # Line 478
    lwc1	$f0,12($s0)
    addiu	$s0,$s0,16
    # Line 471
    bne	$s5,$s4,.L0db2576c
    # Line 478
    swc1	$f0,-4($s1)
    ldc1	$f22,72($sp)
    ld	$ra,80($sp)
.L0db258d0:
    ld	$gp,64($sp)
    # Line 480
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s3,24($sp)
    ld	$s4,32($sp)
    ld	$s5,56($sp)
    ldc1	$f24,0($sp)
    ldc1	$f28,8($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glSpanHistogramRGB

# Function: __glSpanHistogramRGBA
# Declared: Line 482 (Source lines: 484-511)
# Address: 0x0db258fc - 0x0db25b50 (Size: 596 bytes, Frame: 128)
.globl __glSpanHistogramRGBA
.ent __glSpanHistogramRGBA
__glSpanHistogramRGBA:
    # Line 484
    addiu	$sp,$sp,-128
    sdc1	$f22,80($sp)
    sd	$s1,56($sp)
    move	$s1,$a3
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s3,32($sp)
    move	$s3,$a0
    sdc1	$f30,24($sp)
    # Line 496
    lwc1	$f30,30864($a0)
    sdc1	$f24,8($sp)
    # Line 495
    lwc1	$f24,30860($a0)
    sdc1	$f26,0($sp)
    # Line 494
    lwc1	$f26,30856($a0)
    sdc1	$f28,16($sp)
    # Line 493
    lwc1	$f28,30852($a0)
    sd	$s4,40($sp)
    # Line 501
    move	$s4,$zero
    sd	$gp,72($sp)
    sd	$s5,64($sp)
    # Line 499
    lw	$s5,184($a1)
    # Line 484
    lui	$at,0xe
    addiu	$at,$at,-29284
    # Line 501
    blez	$s5,.L0db25b20
    # Line 484
    addu	$gp,$t9,$at
    sd	$ra,88($sp)
    # Line 501
    ldc1	$f22,_lit8_3fe0000000000000
.L0db25968:
    # Line 502
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s3)
    mtc1	$a1,$f14
    nop
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f0,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f22
    trunc.w.d	$f14,$f14
    mfc1	$a0,$f14
    lw	$v1,1156($s3)
    sll	$a0,$a0,0x2
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 503
    lwc1	$f13,0($s0)
    swc1	$f13,0($s1)
    # Line 504
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f26
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f26
    lw	$a5,1196($s3)
    mtc1	$a5,$f14
    nop
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f0,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f22
    trunc.w.d	$f14,$f14
    mfc1	$a4,$f14
    lw	$a3,1156($s3)
    sll	$a4,$a4,0x2
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lw	$a2,4($a3)
    addiu	$a2,$a2,1
    sw	$a2,4($a3)
    # Line 505
    lwc1	$f13,4($s0)
    swc1	$f13,4($s1)
    # Line 506
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,8($s0)
    # Line 509
    addiu	$s1,$s1,16
    # Line 506
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,8($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    # Line 501
    addiu	$s4,$s4,1
    # Line 506
    lw	$t1,1196($s3)
    mtc1	$t1,$f14
    nop
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f0,$f14
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f22
    trunc.w.d	$f14,$f14
    mfc1	$t0,$f14
    lw	$a7,1156($s3)
    sll	$t0,$t0,0x2
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a6,8($a7)
    addiu	$a6,$a6,1
    sw	$a6,8($a7)
    # Line 507
    lwc1	$f13,8($s0)
    swc1	$f13,-8($s1)
    # Line 508
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f30
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f30
    lw	$a1,1196($s3)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f0,$f1
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f22
    trunc.w.d	$f1,$f1
    mfc1	$v1,$f1
    lw	$v0,1156($s3)
    sll	$v1,$v1,0x2
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,12($v0)
    addiu	$at,$at,1
    sw	$at,12($v0)
    # Line 509
    lwc1	$f0,12($s0)
    addiu	$s0,$s0,16
    # Line 501
    bne	$s5,$s4,.L0db25968
    # Line 509
    swc1	$f0,-4($s1)
    ldc1	$f22,80($sp)
    ld	$ra,88($sp)
.L0db25b20:
    ld	$gp,72($sp)
    # Line 511
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s3,32($sp)
    ld	$s4,40($sp)
    ld	$s5,64($sp)
    ldc1	$f24,8($sp)
    ldc1	$f26,0($sp)
    ldc1	$f28,16($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glSpanHistogramRGBA

# Function: __glSpanHistogramSinkA
# Declared: Line 515 (Source lines: 517-533)
# Address: 0x0db25b50 - 0x0db25d10 (Size: 448 bytes, Frame: 240)
.globl __glSpanHistogramSinkA
.ent __glSpanHistogramSinkA
__glSpanHistogramSinkA:
    # Line 517
    addiu	$sp,$sp,-112
    sdc1	$f30,48($sp)
    sd	$s0,16($sp)
    # Line 530
    addiu	$s0,$a2,12
    sd	$s1,32($sp)
    move	$s1,$zero
    sd	$s4,8($sp)
    # Line 517
    move	$s4,$a0
    sdc1	$f28,0($sp)
    # Line 525
    lwc1	$f28,30864($a0)
    sd	$gp,40($sp)
    # Line 517
    lui	$at,0xe
    sd	$s5,24($sp)
    # Line 528
    lw	$s5,184($a1)
    # Line 517
    addiu	$at,$at,-29880
    addu	$gp,$t9,$at
    # Line 530
    blez	$s5,.L0db25cf0
    andi	$v0,$s5,0x1
    move	$a0,$s5
    beqz	$v0,.L0db25c18
    ldc1	$f30,_lit8_3fe0000000000000
    sd	$a0,56($sp)
    # Line 531
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    sd	$ra,64($sp)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # Line 530
    addiu	$s1,$s1,1
    # Line 531
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$ra,1196($s4)
    mtc1	$ra,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f30
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    lw	$a0,1156($s4)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$v1,0($a0)
    # Line 530
    addiu	$s0,$s0,16
    ld	$ra,64($sp)
    # Line 531
    addiu	$v1,$v1,1
    sw	$v1,0($a0)
    ld	$a0,56($sp)
.L0db25c18:
    sra	$at,$a0,0x1
    beqz	$at,.L0db25ce8
    sd	$ra,64($sp)
.L0db25c24:
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s4)
    mtc1	$a1,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f0,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f30
    trunc.w.d	$f13,$f13
    mfc1	$a0,$f13
    lw	$v1,1156($s4)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,16($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,16($s0)
    # Line 530
    addiu	$s0,$s0,32
    # Line 531
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # Line 530
    addiu	$s1,$s1,2
    # Line 531
    lw	$a1,1196($s4)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f30
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    lw	$v0,1156($s4)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,0($v0)
    addiu	$at,$at,1
    # Line 530
    bne	$s5,$s1,.L0db25c24
    # Line 531
    sw	$at,0($v0)
.L0db25ce8:
    ldc1	$f30,48($sp)
    ld	$ra,64($sp)
.L0db25cf0:
    ld	$gp,40($sp)
    # Line 533
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    ld	$s4,8($sp)
    ld	$s5,24($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanHistogramSinkA

# Function: __glSpanHistogramSinkL
# Declared: Line 536 (Source lines: 538-554)
# Address: 0x0db25d10 - 0x0db25ed0 (Size: 448 bytes, Frame: 240)
.globl __glSpanHistogramSinkL
.ent __glSpanHistogramSinkL
__glSpanHistogramSinkL:
    # Line 538
    addiu	$sp,$sp,-112
    sdc1	$f30,48($sp)
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s1,32($sp)
    # Line 551
    move	$s1,$zero
    sd	$s4,8($sp)
    # Line 538
    move	$s4,$a0
    sdc1	$f28,0($sp)
    # Line 546
    lwc1	$f28,30852($a0)
    sd	$gp,40($sp)
    # Line 538
    lui	$at,0xe
    sd	$s5,24($sp)
    # Line 549
    lw	$s5,184($a1)
    # Line 538
    addiu	$at,$at,-30328
    addu	$gp,$t9,$at
    # Line 551
    blez	$s5,.L0db25eb0
    andi	$v0,$s5,0x1
    move	$a0,$s5
    beqz	$v0,.L0db25dd8
    ldc1	$f30,_lit8_3fe0000000000000
    sd	$a0,56($sp)
    # Line 552
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    sd	$ra,64($sp)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # Line 551
    addiu	$s1,$s1,1
    # Line 552
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$ra,1196($s4)
    mtc1	$ra,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f30
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    lw	$a0,1156($s4)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$v1,0($a0)
    # Line 551
    addiu	$s0,$s0,16
    ld	$ra,64($sp)
    # Line 552
    addiu	$v1,$v1,1
    sw	$v1,0($a0)
    ld	$a0,56($sp)
.L0db25dd8:
    sra	$at,$a0,0x1
    beqz	$at,.L0db25ea8
    sd	$ra,64($sp)
.L0db25de4:
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s4)
    mtc1	$a1,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f0,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f30
    trunc.w.d	$f13,$f13
    mfc1	$a0,$f13
    lw	$v1,1156($s4)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,16($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,16($s0)
    # Line 551
    addiu	$s0,$s0,32
    # Line 552
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # Line 551
    addiu	$s1,$s1,2
    # Line 552
    lw	$a1,1196($s4)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f30
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    lw	$v0,1156($s4)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,0($v0)
    addiu	$at,$at,1
    # Line 551
    bne	$s5,$s1,.L0db25de4
    # Line 552
    sw	$at,0($v0)
.L0db25ea8:
    ldc1	$f30,48($sp)
    ld	$ra,64($sp)
.L0db25eb0:
    ld	$gp,40($sp)
    # Line 554
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    ld	$s4,8($sp)
    ld	$s5,24($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanHistogramSinkL

# Function: __glSpanHistogramSinkLA
# Declared: Line 557 (Source lines: 559-578)
# Address: 0x0db25ed0 - 0x0db2601c (Size: 332 bytes, Frame: 240)
.globl __glSpanHistogramSinkLA
.ent __glSpanHistogramSinkLA
__glSpanHistogramSinkLA:
    # Line 559
    addiu	$sp,$sp,-112
    sdc1	$f30,56($sp)
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$s4,16($sp)
    move	$s4,$a0
    sdc1	$f24,0($sp)
    # Line 568
    lwc1	$f24,30864($a0)
    sdc1	$f28,8($sp)
    # Line 567
    lwc1	$f28,30852($a0)
    sd	$s1,32($sp)
    # Line 573
    move	$s1,$zero
    sd	$gp,48($sp)
    sd	$s5,40($sp)
    # Line 571
    lw	$s5,184($a1)
    # Line 559
    lui	$at,0xe
    addiu	$at,$at,-30776
    # Line 573
    blez	$s5,.L0db25ff8
    # Line 559
    addu	$gp,$t9,$at
    sd	$ra,64($sp)
    # Line 573
    ldc1	$f30,_lit8_3fe0000000000000
.L0db25f24:
    # Line 574
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s4)
    mtc1	$a1,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f0,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f30
    trunc.w.d	$f13,$f13
    mfc1	$a0,$f13
    lw	$v1,1156($s4)
    addu	$a0,$a0,$a0
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 576
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,12($s0)
    # Line 573
    addiu	$s0,$s0,16
    # Line 576
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    # Line 573
    addiu	$s1,$s1,1
    # Line 576
    lw	$a1,1196($s4)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f30
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    lw	$v0,1156($s4)
    addu	$v1,$v1,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,4($v0)
    addiu	$at,$at,1
    # Line 573
    bne	$s5,$s1,.L0db25f24
    # Line 576
    sw	$at,4($v0)
    ldc1	$f30,56($sp)
    ld	$ra,64($sp)
.L0db25ff8:
    ld	$gp,48($sp)
    # Line 578
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s4,16($sp)
    ld	$s5,40($sp)
    ldc1	$f24,0($sp)
    ldc1	$f28,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanHistogramSinkLA

# Function: __glSpanHistogramSinkRGB
# Declared: Line 581 (Source lines: 583-603)
# Address: 0x0db2601c - 0x0db261e0 (Size: 452 bytes, Frame: 240)
.globl __glSpanHistogramSinkRGB
.ent __glSpanHistogramSinkRGB
__glSpanHistogramSinkRGB:
    # Line 583
    addiu	$sp,$sp,-112
    sdc1	$f22,64($sp)
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s1,40($sp)
    move	$s1,$a0
    sdc1	$f30,16($sp)
    # Line 593
    lwc1	$f30,30860($a0)
    sdc1	$f24,0($sp)
    # Line 592
    lwc1	$f24,30856($a0)
    sdc1	$f28,8($sp)
    # Line 591
    lwc1	$f28,30852($a0)
    sd	$s4,24($sp)
    # Line 598
    move	$s4,$zero
    sd	$gp,56($sp)
    sd	$s5,48($sp)
    # Line 596
    lw	$s5,184($a1)
    # Line 583
    lui	$at,0xe
    addiu	$at,$at,-31108
    # Line 598
    blez	$s5,.L0db261b8
    # Line 583
    addu	$gp,$t9,$at
    sd	$ra,72($sp)
    # Line 598
    ldc1	$f22,_lit8_3fe0000000000000
.L0db26078:
    # Line 599
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a2,1196($s1)
    mtc1	$a2,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f0,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f22
    trunc.w.d	$f13,$f13
    mfc1	$a1,$f13
    lw	$v1,1156($s1)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 600
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    lw	$a7,1196($s1)
    mtc1	$a7,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f0,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f22
    trunc.w.d	$f13,$f13
    mfc1	$a6,$f13
    lw	$a4,1156($s1)
    sll	$a5,$a6,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lw	$a3,4($a4)
    addiu	$a3,$a3,1
    sw	$a3,4($a4)
    # Line 601
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,8($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f30
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,8($s0)
    # Line 598
    addiu	$s0,$s0,16
    # Line 601
    bal __glFClamp
    mul.s	$f12,$f12,$f30
    # Line 598
    addiu	$s4,$s4,1
    # Line 601
    lw	$at,1196($s1)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f22
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    lw	$v0,1156($s1)
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,8($v0)
    addiu	$at,$at,1
    # Line 598
    bne	$s5,$s4,.L0db26078
    # Line 601
    sw	$at,8($v0)
    ldc1	$f22,64($sp)
    ld	$ra,72($sp)
.L0db261b8:
    ld	$gp,56($sp)
    # Line 603
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s4,24($sp)
    ld	$s5,48($sp)
    ldc1	$f24,0($sp)
    ldc1	$f28,8($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSpanHistogramSinkRGB

# Function: __glSpanHistogramSinkRGBA
# Declared: Line 606 (Source lines: 608-630)
# Address: 0x0db261e0 - 0x0db26404 (Size: 548 bytes, Frame: 128)
.globl __glSpanHistogramSinkRGBA
.ent __glSpanHistogramSinkRGBA
__glSpanHistogramSinkRGBA:
    # Line 608
    addiu	$sp,$sp,-128
    sdc1	$f22,72($sp)
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s1,48($sp)
    move	$s1,$a0
    sdc1	$f30,24($sp)
    # Line 619
    lwc1	$f30,30864($a0)
    sdc1	$f24,8($sp)
    # Line 618
    lwc1	$f24,30860($a0)
    sdc1	$f26,0($sp)
    # Line 617
    lwc1	$f26,30856($a0)
    sdc1	$f28,16($sp)
    # Line 616
    lwc1	$f28,30852($a0)
    sd	$s4,32($sp)
    # Line 624
    move	$s4,$zero
    sd	$gp,64($sp)
    sd	$s5,56($sp)
    # Line 622
    lw	$s5,184($a1)
    # Line 608
    lui	$at,0xe
    addiu	$at,$at,-31560
    # Line 624
    blez	$s5,.L0db263d8
    # Line 608
    addu	$gp,$t9,$at
    sd	$ra,80($sp)
    # Line 624
    ldc1	$f22,_lit8_3fe0000000000000
.L0db26244:
    # Line 625
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,0($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f28
    lw	$a1,1196($s1)
    mtc1	$a1,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f0,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f22
    trunc.w.d	$f13,$f13
    mfc1	$a0,$f13
    lw	$v1,1156($s1)
    sll	$a0,$a0,0x2
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lw	$v0,0($v1)
    addiu	$v0,$v0,1
    sw	$v0,0($v1)
    # Line 626
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f26
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f26
    lw	$a5,1196($s1)
    mtc1	$a5,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f0,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f22
    trunc.w.d	$f13,$f13
    mfc1	$a4,$f13
    lw	$a3,1156($s1)
    sll	$a4,$a4,0x2
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    lw	$a2,4($a3)
    addiu	$a2,$a2,1
    sw	$a2,4($a3)
    # Line 627
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,8($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,8($s0)
    # Line 628
    addiu	$s0,$s0,16
    # Line 627
    bal __glFClamp
    mul.s	$f12,$f12,$f24
    # Line 624
    addiu	$s4,$s4,1
    # Line 627
    lw	$t1,1196($s1)
    mtc1	$t1,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f0,$f13
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f22
    trunc.w.d	$f13,$f13
    mfc1	$t0,$f13
    lw	$a7,1156($s1)
    sll	$t0,$t0,0x2
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$a6,8($a7)
    addiu	$a6,$a6,1
    sw	$a6,8($a7)
    # Line 628
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,-4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f30
    # lw $t9, -28152($gp) # &__glFClamp
    lwc1	$f12,-4($s0)
    bal __glFClamp
    mul.s	$f12,$f12,$f30
    lw	$a1,1196($s1)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f22
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    lw	$v0,1156($s1)
    sll	$v1,$v1,0x2
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$at,12($v0)
    addiu	$at,$at,1
    # Line 624
    bne	$s5,$s4,.L0db26244
    # Line 628
    sw	$at,12($v0)
    ldc1	$f22,72($sp)
    ld	$ra,80($sp)
.L0db263d8:
    ld	$gp,64($sp)
    # Line 630
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s4,32($sp)
    ld	$s5,56($sp)
    ldc1	$f24,8($sp)
    ldc1	$f26,0($sp)
    ldc1	$f28,16($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glSpanHistogramSinkRGBA

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000

