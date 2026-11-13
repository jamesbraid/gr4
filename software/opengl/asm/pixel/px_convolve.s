# Source: ../pixel/px_convolve.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_convolve.c
# Total Functions: 35

.text

# Function: __glRowScaleSumRGBA
# Declared: Line 40 (Source lines: 48-55)
# Address: 0x0db1e7dc - 0x0db1e95c (Size: 384 bytes, Frame: 0)
.globl __glRowScaleSumRGBA
.ent __glRowScaleSumRGBA
__glRowScaleSumRGBA:
    # Line 48
    lw	$a5,184($a1)
    # Line 49
    move	$a6,$zero
    blez	$a5,.L0db1e954
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1e868
    move	$t1,$a6
    # Line 50
    lwc1	$f3,0($a3)
    lwc1	$f2,0($a2)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,0($a4)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a4)
    # Line 51
    lwc1	$f0,4($a3)
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,4($a4)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    # Line 52
    lwc1	$f1,8($a3)
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,8($a4)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a4)
    # Line 53
    lwc1	$f2,12($a2)
    lwc1	$f1,12($a3)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,12($a4)
    add.s	$f0,$f0,$f1
    # Line 49
    addiu	$a6,$a6,1
    # Line 53
    addiu	$a4,$a4,16
    addiu	$a3,$a3,16
    swc1	$f0,-4($a4)
    move	$t1,$a6
.L0db1e868:
    sra	$v0,$a1,0x1
    move	$a7,$a3
    beqz	$v0,.L0db1e954
    move	$t0,$a4
    move	$a1,$a7
    move	$a4,$t1
    move	$a3,$t0
.L0db1e884:
    # Line 50
    lwc1	$f2,0($a2)
    lwc1	$f3,0($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,0($a3)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a3)
    # Line 51
    lwc1	$f3,4($a2)
    lwc1	$f0,4($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,4($a3)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a3)
    # Line 52
    lwc1	$f0,8($a2)
    lwc1	$f1,8($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,8($a3)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a3)
    # Line 53
    lwc1	$f1,12($a1)
    lwc1	$f2,12($a2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,12($a3)
    add.s	$f0,$f0,$f1
    swc1	$f0,12($a3)
    # Line 50
    lwc1	$f2,0($a2)
    lwc1	$f3,16($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,16($a3)
    add.s	$f1,$f1,$f2
    swc1	$f1,16($a3)
    # Line 51
    lwc1	$f3,4($a2)
    lwc1	$f0,20($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,20($a3)
    add.s	$f2,$f2,$f3
    swc1	$f2,20($a3)
    # Line 52
    lwc1	$f0,8($a2)
    lwc1	$f1,24($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,24($a3)
    add.s	$f3,$f3,$f0
    swc1	$f3,24($a3)
    # Line 53
    lwc1	$f1,28($a1)
    lwc1	$f2,12($a2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,28($a3)
    addiu	$a3,$a3,32
    add.s	$f0,$f0,$f1
    addiu	$a1,$a1,32
    # Line 49
    addiu	$a4,$a4,2
    bne	$a5,$a4,.L0db1e884
    # Line 53
    swc1	$f0,-4($a3)
.L0db1e954:
    # Line 55
    jr	$ra
    nop
.end __glRowScaleSumRGBA

# Function: __glRowScaleSumRGB
# Declared: Line 61 (Source lines: 69-77)
# Address: 0x0db1e95c - 0x0db1ea94 (Size: 312 bytes, Frame: 0)
.globl __glRowScaleSumRGB
.ent __glRowScaleSumRGB
__glRowScaleSumRGB:
    # Line 69
    lw	$a5,184($a1)
    # Line 70
    move	$a6,$zero
    blez	$a5,.L0db1ea8c
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1e9d0
    move	$t1,$a6
    # Line 71
    lwc1	$f0,0($a3)
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,0($a4)
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a4)
    # Line 72
    lwc1	$f1,4($a3)
    lwc1	$f0,4($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,4($a4)
    add.s	$f3,$f3,$f0
    swc1	$f3,4($a4)
    # Line 73
    lwc1	$f2,8($a3)
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,8($a4)
    add.s	$f0,$f0,$f1
    # Line 70
    addiu	$a6,$a6,1
    # Line 75
    addiu	$a4,$a4,16
    # Line 74
    addiu	$a3,$a3,16
    # Line 73
    swc1	$f0,-8($a4)
    move	$t1,$a6
.L0db1e9d0:
    sra	$v0,$a1,0x1
    move	$a7,$a3
    beqz	$v0,.L0db1ea8c
    move	$t0,$a4
    move	$a1,$a7
    move	$a4,$t1
    move	$a3,$t0
.L0db1e9ec:
    # Line 71
    lwc1	$f1,0($a2)
    lwc1	$f2,0($a1)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,0($a3)
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 72
    lwc1	$f2,4($a2)
    lwc1	$f3,4($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,4($a3)
    add.s	$f1,$f1,$f2
    swc1	$f1,4($a3)
    # Line 73
    lwc1	$f3,8($a2)
    lwc1	$f0,8($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,8($a3)
    add.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    # Line 71
    lwc1	$f0,0($a2)
    lwc1	$f1,16($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,16($a3)
    add.s	$f3,$f3,$f0
    swc1	$f3,16($a3)
    # Line 72
    lwc1	$f1,4($a2)
    lwc1	$f2,20($a1)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,20($a3)
    add.s	$f0,$f0,$f1
    swc1	$f0,20($a3)
    # Line 73
    lwc1	$f2,8($a2)
    lwc1	$f3,24($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,24($a3)
    # Line 75
    addiu	$a3,$a3,32
    # Line 73
    add.s	$f1,$f1,$f2
    # Line 74
    addiu	$a1,$a1,32
    # Line 70
    addiu	$a4,$a4,2
    bne	$a5,$a4,.L0db1e9ec
    # Line 73
    swc1	$f1,-8($a3)
.L0db1ea8c:
    # Line 77
    jr	$ra
    nop
.end __glRowScaleSumRGB

# Function: __glRowScaleSumL
# Declared: Line 83 (Source lines: 91-99)
# Address: 0x0db1ea94 - 0x0db1ebcc (Size: 312 bytes, Frame: 0)
.globl __glRowScaleSumL
.ent __glRowScaleSumL
__glRowScaleSumL:
    # Line 91
    lw	$a5,184($a1)
    # Line 92
    move	$a6,$zero
    blez	$a5,.L0db1ebc4
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1eb08
    move	$t1,$a6
    # Line 93
    lwc1	$f0,0($a3)
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,0($a4)
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a4)
    # Line 94
    lwc1	$f1,4($a3)
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,4($a4)
    add.s	$f3,$f3,$f0
    swc1	$f3,4($a4)
    # Line 95
    lwc1	$f2,8($a3)
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,8($a4)
    add.s	$f0,$f0,$f1
    # Line 92
    addiu	$a6,$a6,1
    # Line 97
    addiu	$a4,$a4,16
    # Line 96
    addiu	$a3,$a3,16
    # Line 95
    swc1	$f0,-8($a4)
    move	$t1,$a6
.L0db1eb08:
    sra	$v0,$a1,0x1
    move	$a7,$a3
    beqz	$v0,.L0db1ebc4
    move	$t0,$a4
    move	$a1,$a7
    move	$a4,$t1
    move	$a3,$t0
.L0db1eb24:
    # Line 93
    lwc1	$f1,0($a2)
    lwc1	$f2,0($a1)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,0($a3)
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 94
    lwc1	$f2,0($a2)
    lwc1	$f3,4($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,4($a3)
    add.s	$f1,$f1,$f2
    swc1	$f1,4($a3)
    # Line 95
    lwc1	$f3,0($a2)
    lwc1	$f0,8($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,8($a3)
    add.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    # Line 93
    lwc1	$f0,0($a2)
    lwc1	$f1,16($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,16($a3)
    add.s	$f3,$f3,$f0
    swc1	$f3,16($a3)
    # Line 94
    lwc1	$f1,0($a2)
    lwc1	$f2,20($a1)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,20($a3)
    add.s	$f0,$f0,$f1
    swc1	$f0,20($a3)
    # Line 95
    lwc1	$f2,0($a2)
    lwc1	$f3,24($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,24($a3)
    # Line 97
    addiu	$a3,$a3,32
    # Line 95
    add.s	$f1,$f1,$f2
    # Line 96
    addiu	$a1,$a1,32
    # Line 92
    addiu	$a4,$a4,2
    bne	$a5,$a4,.L0db1eb24
    # Line 95
    swc1	$f1,-8($a3)
.L0db1ebc4:
    # Line 99
    jr	$ra
    nop
.end __glRowScaleSumL

# Function: __glRowScaleSumLA
# Declared: Line 105 (Source lines: 113-120)
# Address: 0x0db1ebcc - 0x0db1ed4c (Size: 384 bytes, Frame: 0)
.globl __glRowScaleSumLA
.ent __glRowScaleSumLA
__glRowScaleSumLA:
    # Line 113
    lw	$a5,184($a1)
    # Line 114
    move	$a6,$zero
    blez	$a5,.L0db1ed44
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1ec58
    move	$t1,$a6
    # Line 115
    lwc1	$f3,0($a3)
    lwc1	$f2,0($a2)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,0($a4)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a4)
    # Line 116
    lwc1	$f0,4($a3)
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,4($a4)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    # Line 117
    lwc1	$f1,8($a3)
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,8($a4)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a4)
    # Line 118
    lwc1	$f2,4($a2)
    lwc1	$f1,12($a3)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,12($a4)
    add.s	$f0,$f0,$f1
    # Line 114
    addiu	$a6,$a6,1
    # Line 118
    addiu	$a4,$a4,16
    addiu	$a3,$a3,16
    swc1	$f0,-4($a4)
    move	$t1,$a6
.L0db1ec58:
    sra	$v0,$a1,0x1
    move	$a7,$a3
    beqz	$v0,.L0db1ed44
    move	$t0,$a4
    move	$a1,$a7
    move	$a4,$t1
    move	$a3,$t0
.L0db1ec74:
    # Line 115
    lwc1	$f2,0($a2)
    lwc1	$f3,0($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,0($a3)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a3)
    # Line 116
    lwc1	$f3,0($a2)
    lwc1	$f0,4($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,4($a3)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a3)
    # Line 117
    lwc1	$f0,0($a2)
    lwc1	$f1,8($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,8($a3)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a3)
    # Line 118
    lwc1	$f1,12($a1)
    lwc1	$f2,4($a2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,12($a3)
    add.s	$f0,$f0,$f1
    swc1	$f0,12($a3)
    # Line 115
    lwc1	$f2,0($a2)
    lwc1	$f3,16($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,16($a3)
    add.s	$f1,$f1,$f2
    swc1	$f1,16($a3)
    # Line 116
    lwc1	$f3,0($a2)
    lwc1	$f0,20($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,20($a3)
    add.s	$f2,$f2,$f3
    swc1	$f2,20($a3)
    # Line 117
    lwc1	$f0,0($a2)
    lwc1	$f1,24($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,24($a3)
    add.s	$f3,$f3,$f0
    swc1	$f3,24($a3)
    # Line 118
    lwc1	$f1,28($a1)
    lwc1	$f2,4($a2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,28($a3)
    addiu	$a3,$a3,32
    add.s	$f0,$f0,$f1
    addiu	$a1,$a1,32
    # Line 114
    addiu	$a4,$a4,2
    bne	$a5,$a4,.L0db1ec74
    # Line 118
    swc1	$f0,-4($a3)
.L0db1ed44:
    # Line 120
    jr	$ra
    nop
.end __glRowScaleSumLA

# Function: __glRowScaleSumI
# Declared: Line 126 (Source lines: 134-141)
# Address: 0x0db1ed4c - 0x0db1eecc (Size: 384 bytes, Frame: 0)
.globl __glRowScaleSumI
.ent __glRowScaleSumI
__glRowScaleSumI:
    # Line 134
    lw	$a5,184($a1)
    # Line 135
    move	$a6,$zero
    blez	$a5,.L0db1eec4
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1edd8
    move	$t1,$a6
    # Line 136
    lwc1	$f3,0($a3)
    lwc1	$f2,0($a2)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,0($a4)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a4)
    # Line 137
    lwc1	$f0,4($a3)
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,4($a4)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    # Line 138
    lwc1	$f1,8($a3)
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,8($a4)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a4)
    # Line 139
    lwc1	$f2,0($a2)
    lwc1	$f1,12($a3)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,12($a4)
    add.s	$f0,$f0,$f1
    # Line 135
    addiu	$a6,$a6,1
    # Line 139
    addiu	$a4,$a4,16
    addiu	$a3,$a3,16
    swc1	$f0,-4($a4)
    move	$t1,$a6
.L0db1edd8:
    sra	$v0,$a1,0x1
    move	$a7,$a3
    beqz	$v0,.L0db1eec4
    move	$t0,$a4
    move	$a1,$a7
    move	$a4,$t1
    move	$a3,$t0
.L0db1edf4:
    # Line 136
    lwc1	$f2,0($a2)
    lwc1	$f3,0($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,0($a3)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a3)
    # Line 137
    lwc1	$f3,0($a2)
    lwc1	$f0,4($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,4($a3)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a3)
    # Line 138
    lwc1	$f0,0($a2)
    lwc1	$f1,8($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,8($a3)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a3)
    # Line 139
    lwc1	$f1,12($a1)
    lwc1	$f2,0($a2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,12($a3)
    add.s	$f0,$f0,$f1
    swc1	$f0,12($a3)
    # Line 136
    lwc1	$f2,0($a2)
    lwc1	$f3,16($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,16($a3)
    add.s	$f1,$f1,$f2
    swc1	$f1,16($a3)
    # Line 137
    lwc1	$f3,0($a2)
    lwc1	$f0,20($a1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,20($a3)
    add.s	$f2,$f2,$f3
    swc1	$f2,20($a3)
    # Line 138
    lwc1	$f0,0($a2)
    lwc1	$f1,24($a1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,24($a3)
    add.s	$f3,$f3,$f0
    swc1	$f3,24($a3)
    # Line 139
    lwc1	$f1,28($a1)
    lwc1	$f2,0($a2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,28($a3)
    addiu	$a3,$a3,32
    add.s	$f0,$f0,$f1
    addiu	$a1,$a1,32
    # Line 135
    addiu	$a4,$a4,2
    bne	$a5,$a4,.L0db1edf4
    # Line 139
    swc1	$f0,-4($a3)
.L0db1eec4:
    # Line 141
    jr	$ra
    nop
.end __glRowScaleSumI

# Function: __glSpanPostConvScaleBiasRGBA
# Declared: Line 148 (Source lines: 157-184)
# Address: 0x0db1eecc - 0x0db1f0b4 (Size: 488 bytes, Frame: 0)
.globl __glSpanPostConvScaleBiasRGBA
.ent __glSpanPostConvScaleBiasRGBA
__glSpanPostConvScaleBiasRGBA:
    # Line 165
    lwc1	$f5,668($a0)
    # Line 164
    lwc1	$f11,664($a0)
    # Line 173
    lwc1	$f6,30812($a0)
    lwc1	$f4,680($a0)
    # Line 163
    lwc1	$f10,660($a0)
    # Line 178
    move	$a6,$zero
    # Line 173
    mul.s	$f4,$f4,$f6
    # Line 175
    lwc1	$f8,30844($a0)
    lwc1	$f7,684($a0)
    # Line 169
    lwc1	$f0,30804($a0)
    # Line 171
    lwc1	$f9,30808($a0)
    # Line 175
    mul.s	$f7,$f7,$f8
    # Line 171
    lwc1	$f8,676($a0)
    # Line 157
    lw	$a5,184($a1)
    # Line 162
    lwc1	$f6,656($a0)
    # Line 171
    mul.s	$f8,$f8,$f9
    # Line 169
    lwc1	$f9,672($a0)
    # Line 178
    move	$a4,$a5
    blez	$a5,.L0db1f0ac
    # Line 169
    mul.s	$f9,$f9,$f0
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db1ef80
    move	$a7,$a3
.L0db1ef28:
    # Line 179
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,0($a3)
    # Line 180
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,4($a3)
    # Line 181
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,8($a3)
    # Line 182
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f5
    # Line 178
    addiu	$a6,$a6,1
    # Line 182
    addiu	$a3,$a3,16
    add.s	$f0,$f0,$f7
    addiu	$a2,$a2,16
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1ef28
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1ef80:
    sra	$at,$a4,0x2
    move	$t1,$a6
    beqz	$at,.L0db1f0ac
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1ef9c:
    # Line 179
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,0($a2)
    # Line 180
    lwc1	$f2,4($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,4($a2)
    # Line 181
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,8($a2)
    # Line 182
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f7
    swc1	$f0,12($a2)
    # Line 179
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,16($a2)
    # Line 180
    lwc1	$f2,20($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,20($a2)
    # Line 181
    lwc1	$f1,24($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,24($a2)
    # Line 182
    lwc1	$f0,28($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f7
    swc1	$f0,28($a2)
    # Line 179
    lwc1	$f3,32($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,32($a2)
    # Line 180
    lwc1	$f2,36($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,36($a2)
    # Line 181
    lwc1	$f1,40($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,40($a2)
    # Line 182
    lwc1	$f0,44($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f7
    swc1	$f0,44($a2)
    # Line 179
    lwc1	$f3,48($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,48($a2)
    # Line 180
    lwc1	$f2,52($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,52($a2)
    # Line 181
    lwc1	$f1,56($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,56($a2)
    # Line 182
    lwc1	$f0,60($a3)
    mul.s	$f0,$f0,$f5
    addiu	$a2,$a2,64
    add.s	$f0,$f0,$f7
    addiu	$a3,$a3,64
    # Line 178
    addiu	$a1,$a1,4
    bne	$a5,$a1,.L0db1ef9c
    # Line 182
    swc1	$f0,-4($a2)
.L0db1f0ac:
    # Line 184
    jr	$ra
    nop
.end __glSpanPostConvScaleBiasRGBA

# Function: __glRowSetNoAlpha
# Declared: Line 202 (Source lines: 204-220)
# Address: 0x0db1f0b4 - 0x0db1f190 (Size: 220 bytes, Frame: 0)
.globl __glRowSetNoAlpha
.ent __glRowSetNoAlpha
__glRowSetNoAlpha:
    # Line 213
    move	$a6,$zero
    # Line 212
    addiu	$a7,$a2,12
    # Line 204
    lui	$v0,0xe
    # Line 210
    lw	$a5,184($a1)
    # Line 204
    addiu	$v0,$v0,-2588
    addu	$at,$t9,$v0
    # Line 213
    blez	$a5,.L0db1f188
    andi	$a2,$a5,0x3
    move	$a4,$a5
    beqz	$a2,.L0db1f108
    mtc1	$zero,$f4
.L0db1f0e0:
    addiu	$a6,$a6,1
    # Line 218
    addiu	$a7,$a7,16
    # Line 214
    swc1	$f4,0($a3)
    # Line 215
    swc1	$f4,4($a3)
    # Line 216
    swc1	$f4,8($a3)
    # Line 217
    addiu	$a3,$a3,16
    lwc1	$f0,-16($a7)
    addi	$a2,$a2,-1
    bnez	$a2,.L0db1f0e0
    swc1	$f0,-4($a3)
.L0db1f108:
    move	$t0,$a7
    sra	$v1,$a4,0x2
    move	$t2,$a6
    beqz	$v1,.L0db1f188
    move	$t1,$a3
    move	$a2,$t2
    move	$a3,$t0
    move	$a4,$t1
.L0db1f128:
    # Line 214
    swc1	$f4,0($a4)
    # Line 215
    swc1	$f4,4($a4)
    # Line 216
    swc1	$f4,8($a4)
    # Line 217
    lwc1	$f0,0($a3)
    swc1	$f0,12($a4)
    # Line 214
    swc1	$f4,16($a4)
    # Line 215
    swc1	$f4,20($a4)
    # Line 216
    swc1	$f4,24($a4)
    # Line 217
    lwc1	$f3,16($a3)
    swc1	$f3,28($a4)
    # Line 214
    swc1	$f4,32($a4)
    # Line 215
    swc1	$f4,36($a4)
    # Line 216
    swc1	$f4,40($a4)
    # Line 217
    lwc1	$f2,32($a3)
    # Line 218
    addiu	$a3,$a3,64
    # Line 217
    swc1	$f2,44($a4)
    # Line 214
    swc1	$f4,48($a4)
    # Line 215
    swc1	$f4,52($a4)
    # Line 216
    swc1	$f4,56($a4)
    # Line 217
    addiu	$a4,$a4,64
    lwc1	$f1,-16($a3)
    # Line 213
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0db1f128
    # Line 217
    swc1	$f1,-4($a4)
.L0db1f188:
    # Line 220
    jr	$ra
    nop
.end __glRowSetNoAlpha

# Function: __glRowSetAll
# Declared: Line 223 (Source lines: 225-237)
# Address: 0x0db1f190 - 0x0db1f244 (Size: 180 bytes, Frame: 0)
.globl __glRowSetAll
.ent __glRowSetAll
__glRowSetAll:
    # Line 231
    move	$a5,$zero
    # Line 225
    lui	$v0,0xe
    # Line 230
    lw	$a4,184($a1)
    # Line 225
    addiu	$v0,$v0,-2808
    addu	$at,$t9,$v0
    # Line 231
    blez	$a4,.L0db1f23c
    andi	$a2,$a4,0x3
    move	$a6,$a4
    beqz	$a2,.L0db1f1d8
    mtc1	$zero,$f4
.L0db1f1b8:
    addiu	$a5,$a5,1
    # Line 235
    addiu	$a3,$a3,16
    addi	$a2,$a2,-1
    # Line 232
    swc1	$f4,-16($a3)
    # Line 233
    swc1	$f4,-12($a3)
    # Line 234
    swc1	$f4,-8($a3)
    bnez	$a2,.L0db1f1b8
    # Line 235
    swc1	$f4,-4($a3)
.L0db1f1d8:
    sra	$v1,$a6,0x2
    move	$t0,$a5
    beqz	$v1,.L0db1f23c
    move	$a7,$a3
    move	$a2,$t0
    move	$a3,$a7
.L0db1f1f0:
    addiu	$a3,$a3,64
    # Line 231
    addiu	$a2,$a2,4
    # Line 232
    swc1	$f4,-64($a3)
    # Line 233
    swc1	$f4,-60($a3)
    # Line 234
    swc1	$f4,-56($a3)
    # Line 235
    swc1	$f4,-52($a3)
    # Line 232
    swc1	$f4,-48($a3)
    # Line 233
    swc1	$f4,-44($a3)
    # Line 234
    swc1	$f4,-40($a3)
    # Line 235
    swc1	$f4,-36($a3)
    # Line 232
    swc1	$f4,-32($a3)
    # Line 233
    swc1	$f4,-28($a3)
    # Line 234
    swc1	$f4,-24($a3)
    # Line 235
    swc1	$f4,-20($a3)
    # Line 232
    swc1	$f4,-16($a3)
    # Line 233
    swc1	$f4,-12($a3)
    # Line 234
    swc1	$f4,-8($a3)
    # Line 231
    bne	$a4,$a2,.L0db1f1f0
    # Line 235
    swc1	$f4,-4($a3)
.L0db1f23c:
    # Line 237
    jr	$ra
    nop
.end __glRowSetAll

# Function: __glSpanConvolveReduceRGB
# Declared: Line 246 (Source lines: 254-272)
# Address: 0x0db1f244 - 0x0db1f430 (Size: 492 bytes, Frame: 0)
.globl __glSpanConvolveReduceRGB
.ent __glSpanConvolveReduceRGB
__glSpanConvolveReduceRGB:
    # Line 255
    lw	$t3,184($a1)
    # Line 254
    lw	$a7,436($a1)
    # Line 260
    move	$t1,$zero
    blez	$t3,.L0db1f428
    # Line 254
    lw	$a7,48($a7)
    b	.L0db1f3f8
    # Line 261
    lw	$a4,256($a1)
.L0db1f260:
    # Line 264
    lwc1	$f0,0($a4)
.L0db1f264:
    lwc1	$f1,0($a6)
    mul.s	$f0,$f0,$f1
    add.s	$f4,$f0,$f4
    swc1	$f4,0($a3)
    # Line 265
    lwc1	$f2,4($a4)
    lwc1	$f3,4($a6)
    mul.s	$f2,$f2,$f3
    add.s	$f5,$f2,$f5
    swc1	$f5,4($a3)
    # Line 266
    lwc1	$f0,8($a4)
    lwc1	$f1,8($a6)
    mul.s	$f0,$f0,$f1
    # Line 263
    addiu	$a5,$a5,1
    # Line 267
    addiu	$a6,$a6,16
    # Line 266
    add.s	$f6,$f0,$f6
    addiu	$a4,$a4,12
    addi	$t0,$t0,-1
    bnez	$t0,.L0db1f260
    swc1	$f6,8($a3)
.L0db1f2b0:
    mov.s	$f8,$f4
    move	$t8,$a5
    sra	$at,$t2,0x2
    move	$t0,$a4
    move	$t9,$a6
    mov.s	$f9,$f6
    mov.s	$f7,$f5
    mov.s	$f6,$f7
    move	$a5,$t9
    beqz	$at,.L0db1f3e8
    mov.s	$f4,$f9
    move	$a4,$t0
    mov.s	$f5,$f8
    move	$a6,$t8
.L0db1f2e8:
    # Line 264
    lwc1	$f1,0($a4)
    lwc1	$f2,0($a5)
    mul.s	$f1,$f1,$f2
    add.s	$f1,$f1,$f5
    swc1	$f1,0($a3)
    # Line 265
    lwc1	$f5,4($a4)
    lwc1	$f0,4($a5)
    mul.s	$f5,$f5,$f0
    add.s	$f5,$f5,$f6
    swc1	$f5,4($a3)
    # Line 266
    lwc1	$f3,8($a4)
    lwc1	$f6,8($a5)
    mul.s	$f3,$f3,$f6
    add.s	$f4,$f3,$f4
    swc1	$f4,8($a3)
    # Line 264
    lwc1	$f0,12($a4)
    lwc1	$f2,16($a5)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 265
    lwc1	$f3,16($a4)
    lwc1	$f6,20($a5)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f5
    swc1	$f3,4($a3)
    # Line 266
    lwc1	$f2,20($a4)
    lwc1	$f5,24($a5)
    mul.s	$f2,$f2,$f5
    add.s	$f2,$f2,$f4
    swc1	$f2,8($a3)
    # Line 264
    lwc1	$f6,24($a4)
    lwc1	$f1,32($a5)
    mul.s	$f6,$f6,$f1
    add.s	$f6,$f6,$f0
    swc1	$f6,0($a3)
    # Line 265
    lwc1	$f1,28($a4)
    lwc1	$f4,36($a5)
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    swc1	$f1,4($a3)
    # Line 266
    lwc1	$f0,32($a4)
    lwc1	$f3,40($a5)
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    swc1	$f0,8($a3)
    # Line 264
    lwc1	$f5,36($a4)
    lwc1	$f2,48($a5)
    mul.s	$f5,$f5,$f2
    add.s	$f5,$f5,$f6
    swc1	$f5,0($a3)
    # Line 265
    lwc1	$f6,40($a4)
    lwc1	$f2,52($a5)
    mul.s	$f6,$f6,$f2
    add.s	$f6,$f6,$f1
    swc1	$f6,4($a3)
    # Line 266
    lwc1	$f4,44($a4)
    lwc1	$f1,56($a5)
    mul.s	$f4,$f4,$f1
    # Line 267
    addiu	$a5,$a5,64
    # Line 266
    add.s	$f4,$f4,$f0
    addiu	$a4,$a4,48
    # Line 263
    addiu	$a6,$a6,4
    bne	$a7,$a6,.L0db1f2e8
    # Line 266
    swc1	$f4,8($a3)
.L0db1f3e8:
    # Line 270
    addiu	$a2,$a2,16
    # Line 260
    beq	$t3,$t1,.L0db1f428
    # Line 269
    addiu	$a3,$a3,16
    # Line 261
    lw	$a4,256($a1)
.L0db1f3f8:
    # Line 262
    move	$a6,$a2
    # Line 260
    addiu	$t1,$t1,1
    andi	$t0,$a7,0x3
    # Line 263
    blez	$a7,.L0db1f3e8
    move	$a5,$zero
    move	$t2,$a7
    lwc1	$f6,8($a3)
    lwc1	$f5,4($a3)
    beqz	$t0,.L0db1f2b0
    lwc1	$f4,0($a3)
    b	.L0db1f264
    # Line 264
    lwc1	$f0,0($a4)
.L0db1f428:
    # Line 272
    jr	$ra
    nop
.end __glSpanConvolveReduceRGB

# Function: __glSpanConvolveReduceRGBA
# Declared: Line 280 (Source lines: 288-306)
# Address: 0x0db1f430 - 0x0db1f5e4 (Size: 436 bytes, Frame: 0)
.globl __glSpanConvolveReduceRGBA
.ent __glSpanConvolveReduceRGBA
__glSpanConvolveReduceRGBA:
    # Line 289
    lw	$t3,184($a1)
    # Line 288
    lw	$a7,436($a1)
    # Line 294
    move	$t0,$zero
    blez	$t3,.L0db1f5dc
    # Line 288
    lw	$a7,48($a7)
    b	.L0db1f54c
    # Line 295
    lw	$a4,256($a1)
.L0db1f44c:
    move	$t9,$a5
    move	$t8,$a6
    mov.s	$f10,$f7
    sra	$at,$t1,0x1
    move	$t2,$a4
    mov.s	$f8,$f6
    mov.s	$f9,$f4
    mov.s	$f11,$f5
    mov.s	$f7,$f11
    mov.s	$f6,$f9
    move	$a4,$t2
    beqz	$at,.L0db1f53c
    mov.s	$f5,$f8
    move	$a6,$t8
    mov.s	$f4,$f10
    move	$a5,$t9
.L0db1f48c:
    # Line 298
    lwc1	$f3,0($a4)
    lwc1	$f0,0($a6)
    mul.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f6
    swc1	$f3,0($a3)
    # Line 299
    lwc1	$f2,4($a4)
    lwc1	$f6,4($a6)
    mul.s	$f2,$f2,$f6
    add.s	$f2,$f2,$f4
    swc1	$f2,4($a3)
    # Line 300
    lwc1	$f1,8($a4)
    lwc1	$f4,8($a6)
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f7
    swc1	$f1,8($a3)
    # Line 301
    lwc1	$f0,12($a4)
    lwc1	$f4,12($a6)
    mul.s	$f0,$f0,$f4
    add.s	$f0,$f0,$f5
    swc1	$f0,12($a3)
    # Line 298
    lwc1	$f6,16($a4)
    lwc1	$f7,16($a6)
    mul.s	$f6,$f6,$f7
    add.s	$f6,$f6,$f3
    swc1	$f6,0($a3)
    # Line 299
    lwc1	$f4,20($a4)
    lwc1	$f5,20($a6)
    mul.s	$f4,$f4,$f5
    add.s	$f4,$f4,$f2
    swc1	$f4,4($a3)
    # Line 300
    lwc1	$f7,24($a4)
    lwc1	$f2,24($a6)
    mul.s	$f7,$f7,$f2
    add.s	$f7,$f7,$f1
    swc1	$f7,8($a3)
    # Line 301
    lwc1	$f5,28($a4)
    lwc1	$f1,28($a6)
    mul.s	$f5,$f5,$f1
    addiu	$a4,$a4,32
    add.s	$f5,$f5,$f0
    addiu	$a6,$a6,32
    # Line 297
    addiu	$a5,$a5,2
    bne	$a7,$a5,.L0db1f48c
    # Line 301
    swc1	$f5,12($a3)
.L0db1f53c:
    # Line 304
    addiu	$a2,$a2,16
    # Line 294
    beq	$t3,$t0,.L0db1f5dc
    # Line 303
    addiu	$a3,$a3,16
    # Line 295
    lw	$a4,256($a1)
.L0db1f54c:
    # Line 296
    move	$a6,$a2
    # Line 294
    addiu	$t0,$t0,1
    andi	$v0,$a7,0x1
    # Line 297
    blez	$a7,.L0db1f53c
    move	$a5,$zero
    move	$t1,$a7
    lwc1	$f6,12($a3)
    lwc1	$f5,8($a3)
    lwc1	$f7,4($a3)
    beqz	$v0,.L0db1f44c
    lwc1	$f4,0($a3)
    # Line 298
    lwc1	$f0,0($a6)
    lwc1	$f3,0($a4)
    mul.s	$f3,$f3,$f0
    add.s	$f4,$f3,$f4
    swc1	$f4,0($a3)
    # Line 299
    lwc1	$f2,4($a6)
    lwc1	$f1,4($a4)
    mul.s	$f1,$f1,$f2
    add.s	$f7,$f1,$f7
    swc1	$f7,4($a3)
    # Line 300
    lwc1	$f0,8($a6)
    lwc1	$f3,8($a4)
    mul.s	$f3,$f3,$f0
    add.s	$f5,$f3,$f5
    swc1	$f5,8($a3)
    # Line 301
    lwc1	$f2,12($a6)
    lwc1	$f1,12($a4)
    mul.s	$f1,$f1,$f2
    add.s	$f6,$f1,$f6
    # Line 297
    addiu	$a5,$a5,1
    # Line 301
    addiu	$a4,$a4,16
    addiu	$a6,$a6,16
    swc1	$f6,12($a3)
    b	.L0db1f44c
    nop
.L0db1f5dc:
    # Line 306
    jr	$ra
    nop
.end __glSpanConvolveReduceRGBA

# Function: __glSpanConvolveReduceL
# Declared: Line 314 (Source lines: 322-340)
# Address: 0x0db1f5e4 - 0x0db1f7d0 (Size: 492 bytes, Frame: 0)
.globl __glSpanConvolveReduceL
.ent __glSpanConvolveReduceL
__glSpanConvolveReduceL:
    # Line 323
    lw	$t3,184($a1)
    # Line 322
    lw	$a7,436($a1)
    # Line 328
    move	$t1,$zero
    blez	$t3,.L0db1f7c8
    # Line 322
    lw	$a7,48($a7)
    b	.L0db1f798
    # Line 329
    lw	$a4,256($a1)
.L0db1f600:
    # Line 332
    lwc1	$f0,0($a4)
.L0db1f604:
    lwc1	$f1,0($a6)
    mul.s	$f0,$f0,$f1
    add.s	$f4,$f0,$f4
    swc1	$f4,0($a3)
    # Line 333
    lwc1	$f2,0($a4)
    lwc1	$f3,4($a6)
    mul.s	$f2,$f2,$f3
    add.s	$f5,$f2,$f5
    swc1	$f5,4($a3)
    # Line 334
    lwc1	$f0,0($a4)
    lwc1	$f1,8($a6)
    mul.s	$f0,$f0,$f1
    # Line 331
    addiu	$a5,$a5,1
    # Line 335
    addiu	$a6,$a6,16
    # Line 334
    add.s	$f6,$f0,$f6
    addiu	$a4,$a4,4
    addi	$t0,$t0,-1
    bnez	$t0,.L0db1f600
    swc1	$f6,8($a3)
.L0db1f650:
    mov.s	$f8,$f4
    move	$t8,$a5
    sra	$at,$t2,0x2
    move	$t0,$a4
    move	$t9,$a6
    mov.s	$f9,$f6
    mov.s	$f7,$f5
    mov.s	$f6,$f7
    move	$a5,$t9
    beqz	$at,.L0db1f788
    mov.s	$f4,$f9
    move	$a4,$t0
    mov.s	$f5,$f8
    move	$a6,$t8
.L0db1f688:
    # Line 332
    lwc1	$f1,0($a4)
    lwc1	$f2,0($a5)
    mul.s	$f1,$f1,$f2
    add.s	$f1,$f1,$f5
    swc1	$f1,0($a3)
    # Line 333
    lwc1	$f5,0($a4)
    lwc1	$f0,4($a5)
    mul.s	$f5,$f5,$f0
    add.s	$f5,$f5,$f6
    swc1	$f5,4($a3)
    # Line 334
    lwc1	$f3,0($a4)
    lwc1	$f6,8($a5)
    mul.s	$f3,$f3,$f6
    add.s	$f4,$f3,$f4
    swc1	$f4,8($a3)
    # Line 332
    lwc1	$f0,4($a4)
    lwc1	$f2,16($a5)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 333
    lwc1	$f3,4($a4)
    lwc1	$f6,20($a5)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f5
    swc1	$f3,4($a3)
    # Line 334
    lwc1	$f2,4($a4)
    lwc1	$f5,24($a5)
    mul.s	$f2,$f2,$f5
    add.s	$f2,$f2,$f4
    swc1	$f2,8($a3)
    # Line 332
    lwc1	$f6,8($a4)
    lwc1	$f1,32($a5)
    mul.s	$f6,$f6,$f1
    add.s	$f6,$f6,$f0
    swc1	$f6,0($a3)
    # Line 333
    lwc1	$f1,8($a4)
    lwc1	$f4,36($a5)
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f3
    swc1	$f1,4($a3)
    # Line 334
    lwc1	$f0,8($a4)
    lwc1	$f3,40($a5)
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    swc1	$f0,8($a3)
    # Line 332
    lwc1	$f5,12($a4)
    lwc1	$f2,48($a5)
    mul.s	$f5,$f5,$f2
    add.s	$f5,$f5,$f6
    swc1	$f5,0($a3)
    # Line 333
    lwc1	$f6,12($a4)
    lwc1	$f2,52($a5)
    mul.s	$f6,$f6,$f2
    add.s	$f6,$f6,$f1
    swc1	$f6,4($a3)
    # Line 334
    lwc1	$f4,12($a4)
    lwc1	$f1,56($a5)
    mul.s	$f4,$f4,$f1
    # Line 335
    addiu	$a5,$a5,64
    # Line 334
    add.s	$f4,$f4,$f0
    addiu	$a4,$a4,16
    # Line 331
    addiu	$a6,$a6,4
    bne	$a7,$a6,.L0db1f688
    # Line 334
    swc1	$f4,8($a3)
.L0db1f788:
    # Line 338
    addiu	$a2,$a2,16
    # Line 328
    beq	$t3,$t1,.L0db1f7c8
    # Line 337
    addiu	$a3,$a3,16
    # Line 329
    lw	$a4,256($a1)
.L0db1f798:
    # Line 330
    move	$a6,$a2
    # Line 328
    addiu	$t1,$t1,1
    andi	$t0,$a7,0x3
    # Line 331
    blez	$a7,.L0db1f788
    move	$a5,$zero
    move	$t2,$a7
    lwc1	$f6,8($a3)
    lwc1	$f5,4($a3)
    beqz	$t0,.L0db1f650
    lwc1	$f4,0($a3)
    b	.L0db1f604
    # Line 332
    lwc1	$f0,0($a4)
.L0db1f7c8:
    # Line 340
    jr	$ra
    nop
.end __glSpanConvolveReduceL

# Function: __glSpanConvolveReduceLA
# Declared: Line 349 (Source lines: 357-375)
# Address: 0x0db1f7d0 - 0x0db1f984 (Size: 436 bytes, Frame: 0)
.globl __glSpanConvolveReduceLA
.ent __glSpanConvolveReduceLA
__glSpanConvolveReduceLA:
    # Line 358
    lw	$t3,184($a1)
    # Line 357
    lw	$a7,436($a1)
    # Line 363
    move	$t0,$zero
    blez	$t3,.L0db1f97c
    # Line 357
    lw	$a7,48($a7)
    b	.L0db1f8ec
    # Line 364
    lw	$a4,256($a1)
.L0db1f7ec:
    move	$t9,$a5
    move	$t8,$a6
    mov.s	$f10,$f7
    sra	$at,$t1,0x1
    move	$t2,$a4
    mov.s	$f8,$f6
    mov.s	$f9,$f4
    mov.s	$f11,$f5
    mov.s	$f7,$f11
    mov.s	$f6,$f9
    move	$a4,$t2
    beqz	$at,.L0db1f8dc
    mov.s	$f5,$f8
    move	$a6,$t8
    mov.s	$f4,$f10
    move	$a5,$t9
.L0db1f82c:
    # Line 367
    lwc1	$f3,0($a4)
    lwc1	$f0,0($a6)
    mul.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f6
    swc1	$f3,0($a3)
    # Line 368
    lwc1	$f2,0($a4)
    lwc1	$f6,4($a6)
    mul.s	$f2,$f2,$f6
    add.s	$f2,$f2,$f4
    swc1	$f2,4($a3)
    # Line 369
    lwc1	$f1,0($a4)
    lwc1	$f4,8($a6)
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f7
    swc1	$f1,8($a3)
    # Line 370
    lwc1	$f0,4($a4)
    lwc1	$f4,12($a6)
    mul.s	$f0,$f0,$f4
    add.s	$f0,$f0,$f5
    swc1	$f0,12($a3)
    # Line 367
    lwc1	$f6,8($a4)
    lwc1	$f7,16($a6)
    mul.s	$f6,$f6,$f7
    add.s	$f6,$f6,$f3
    swc1	$f6,0($a3)
    # Line 368
    lwc1	$f4,8($a4)
    lwc1	$f5,20($a6)
    mul.s	$f4,$f4,$f5
    add.s	$f4,$f4,$f2
    swc1	$f4,4($a3)
    # Line 369
    lwc1	$f7,8($a4)
    lwc1	$f2,24($a6)
    mul.s	$f7,$f7,$f2
    add.s	$f7,$f7,$f1
    swc1	$f7,8($a3)
    # Line 370
    lwc1	$f5,12($a4)
    lwc1	$f1,28($a6)
    mul.s	$f5,$f5,$f1
    addiu	$a4,$a4,16
    add.s	$f5,$f5,$f0
    addiu	$a6,$a6,32
    # Line 366
    addiu	$a5,$a5,2
    bne	$a7,$a5,.L0db1f82c
    # Line 370
    swc1	$f5,12($a3)
.L0db1f8dc:
    # Line 373
    addiu	$a2,$a2,16
    # Line 363
    beq	$t3,$t0,.L0db1f97c
    # Line 372
    addiu	$a3,$a3,16
    # Line 364
    lw	$a4,256($a1)
.L0db1f8ec:
    # Line 365
    move	$a6,$a2
    # Line 363
    addiu	$t0,$t0,1
    andi	$v0,$a7,0x1
    # Line 366
    blez	$a7,.L0db1f8dc
    move	$a5,$zero
    move	$t1,$a7
    lwc1	$f6,12($a3)
    lwc1	$f5,8($a3)
    lwc1	$f7,4($a3)
    beqz	$v0,.L0db1f7ec
    lwc1	$f4,0($a3)
    # Line 367
    lwc1	$f0,0($a6)
    lwc1	$f3,0($a4)
    mul.s	$f3,$f3,$f0
    add.s	$f4,$f3,$f4
    swc1	$f4,0($a3)
    # Line 368
    lwc1	$f2,4($a6)
    lwc1	$f1,0($a4)
    mul.s	$f1,$f1,$f2
    add.s	$f7,$f1,$f7
    swc1	$f7,4($a3)
    # Line 369
    lwc1	$f0,8($a6)
    lwc1	$f3,0($a4)
    mul.s	$f3,$f3,$f0
    add.s	$f5,$f3,$f5
    swc1	$f5,8($a3)
    # Line 370
    lwc1	$f2,12($a6)
    lwc1	$f1,4($a4)
    mul.s	$f1,$f1,$f2
    add.s	$f6,$f1,$f6
    # Line 366
    addiu	$a5,$a5,1
    # Line 370
    addiu	$a4,$a4,8
    addiu	$a6,$a6,16
    swc1	$f6,12($a3)
    b	.L0db1f7ec
    nop
.L0db1f97c:
    # Line 375
    jr	$ra
    nop
.end __glSpanConvolveReduceLA

# Function: __glSpanConvolveReduceI
# Declared: Line 384 (Source lines: 392-410)
# Address: 0x0db1f984 - 0x0db1fb38 (Size: 436 bytes, Frame: 0)
.globl __glSpanConvolveReduceI
.ent __glSpanConvolveReduceI
__glSpanConvolveReduceI:
    # Line 393
    lw	$t3,184($a1)
    # Line 392
    lw	$a7,436($a1)
    # Line 398
    move	$t0,$zero
    blez	$t3,.L0db1fb30
    # Line 392
    lw	$a7,48($a7)
    b	.L0db1faa0
    # Line 399
    lw	$a4,256($a1)
.L0db1f9a0:
    move	$t9,$a5
    move	$t8,$a6
    mov.s	$f10,$f7
    sra	$at,$t1,0x1
    move	$t2,$a4
    mov.s	$f8,$f6
    mov.s	$f9,$f4
    mov.s	$f11,$f5
    mov.s	$f7,$f11
    mov.s	$f6,$f9
    move	$a4,$t2
    beqz	$at,.L0db1fa90
    mov.s	$f5,$f8
    move	$a6,$t8
    mov.s	$f4,$f10
    move	$a5,$t9
.L0db1f9e0:
    # Line 402
    lwc1	$f3,0($a4)
    lwc1	$f0,0($a6)
    mul.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f6
    swc1	$f3,0($a3)
    # Line 403
    lwc1	$f2,0($a4)
    lwc1	$f6,4($a6)
    mul.s	$f2,$f2,$f6
    add.s	$f2,$f2,$f4
    swc1	$f2,4($a3)
    # Line 404
    lwc1	$f1,0($a4)
    lwc1	$f4,8($a6)
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f7
    swc1	$f1,8($a3)
    # Line 405
    lwc1	$f0,0($a4)
    lwc1	$f4,12($a6)
    mul.s	$f0,$f0,$f4
    add.s	$f0,$f0,$f5
    swc1	$f0,12($a3)
    # Line 402
    lwc1	$f6,4($a4)
    lwc1	$f7,16($a6)
    mul.s	$f6,$f6,$f7
    add.s	$f6,$f6,$f3
    swc1	$f6,0($a3)
    # Line 403
    lwc1	$f4,4($a4)
    lwc1	$f5,20($a6)
    mul.s	$f4,$f4,$f5
    add.s	$f4,$f4,$f2
    swc1	$f4,4($a3)
    # Line 404
    lwc1	$f7,4($a4)
    lwc1	$f2,24($a6)
    mul.s	$f7,$f7,$f2
    add.s	$f7,$f7,$f1
    swc1	$f7,8($a3)
    # Line 405
    lwc1	$f5,4($a4)
    lwc1	$f1,28($a6)
    mul.s	$f5,$f5,$f1
    addiu	$a4,$a4,8
    add.s	$f5,$f5,$f0
    addiu	$a6,$a6,32
    # Line 401
    addiu	$a5,$a5,2
    bne	$a7,$a5,.L0db1f9e0
    # Line 405
    swc1	$f5,12($a3)
.L0db1fa90:
    # Line 408
    addiu	$a2,$a2,16
    # Line 398
    beq	$t3,$t0,.L0db1fb30
    # Line 407
    addiu	$a3,$a3,16
    # Line 399
    lw	$a4,256($a1)
.L0db1faa0:
    # Line 400
    move	$a6,$a2
    # Line 398
    addiu	$t0,$t0,1
    andi	$v0,$a7,0x1
    # Line 401
    blez	$a7,.L0db1fa90
    move	$a5,$zero
    move	$t1,$a7
    lwc1	$f6,12($a3)
    lwc1	$f5,8($a3)
    lwc1	$f7,4($a3)
    beqz	$v0,.L0db1f9a0
    lwc1	$f4,0($a3)
    # Line 402
    lwc1	$f0,0($a6)
    lwc1	$f3,0($a4)
    mul.s	$f3,$f3,$f0
    add.s	$f4,$f3,$f4
    swc1	$f4,0($a3)
    # Line 403
    lwc1	$f2,4($a6)
    lwc1	$f1,0($a4)
    mul.s	$f1,$f1,$f2
    add.s	$f7,$f1,$f7
    swc1	$f7,4($a3)
    # Line 404
    lwc1	$f0,8($a6)
    lwc1	$f3,0($a4)
    mul.s	$f3,$f3,$f0
    add.s	$f5,$f3,$f5
    swc1	$f5,8($a3)
    # Line 405
    lwc1	$f2,12($a6)
    lwc1	$f1,0($a4)
    mul.s	$f1,$f1,$f2
    add.s	$f6,$f1,$f6
    # Line 401
    addiu	$a5,$a5,1
    # Line 405
    addiu	$a4,$a4,4
    addiu	$a6,$a6,16
    swc1	$f6,12($a3)
    b	.L0db1f9a0
    nop
.L0db1fb30:
    # Line 410
    jr	$ra
    nop
.end __glSpanConvolveReduceI

# Function: __glSpanConvolve1DReduceRGB
# Declared: Line 424 (Source lines: 426-458)
# Address: 0x0db1fb38 - 0x0db1fcb8 (Size: 384 bytes, Frame: 48)
.globl __glSpanConvolve1DReduceRGB
.ent __glSpanConvolve1DReduceRGB
__glSpanConvolve1DReduceRGB:
    # Line 426
    addiu	$sp,$sp,-48
    lui	$t1,0xe
    addiu	$t1,$t1,-5280
    addu	$at,$t9,$t1
    # Line 434
    lw	$t3,184($a1)
    # Line 433
    lw	$t0,436($a1)
    # Line 439
    move	$t1,$zero
    blez	$t3,.L0db1fcb0
    # Line 433
    lw	$t0,48($t0)
    b	.L0db1fc34
    # Line 439
    mtc1	$zero,$f14
.L0db1fb64:
    mov.s	$f12,$f8
.L0db1fb68:
    move	$v1,$a6
    sd	$a6,0($sp)
    mov.s	$f11,$f9
    sra	$v0,$t2,0x1
    move	$t8,$a5
    move	$t9,$a7
    mov.s	$f13,$f7
    mov.s	$f4,$f13
    move	$a6,$t9
    beqz	$v0,.L0db1fc1c
    mov.s	$f5,$f11
    move	$a5,$t8
    mov.s	$f6,$f12
    ld	$a7,0($sp)
.L0db1fba0:
    # Line 449
    lwc1	$f0,20($a5)
    lwc1	$f1,24($a6)
    mul.s	$f0,$f0,$f1
    lwc1	$f2,8($a5)
    lwc1	$f3,8($a6)
    mul.s	$f2,$f2,$f3
    # Line 448
    lwc1	$f7,16($a5)
    lwc1	$f1,20($a6)
    mul.s	$f7,$f7,$f1
    lwc1	$f3,4($a5)
    lwc1	$f1,4($a6)
    # Line 449
    add.s	$f5,$f2,$f5
    # Line 448
    mul.s	$f3,$f3,$f1
    # Line 447
    lwc1	$f1,0($a5)
    lwc1	$f2,0($a6)
    mul.s	$f1,$f1,$f2
    # Line 449
    add.s	$f5,$f0,$f5
    # Line 447
    lwc1	$f0,12($a5)
    lwc1	$f2,16($a6)
    # Line 448
    add.s	$f4,$f3,$f4
    # Line 447
    mul.s	$f0,$f0,$f2
    add.s	$f6,$f1,$f6
    # Line 450
    addiu	$a6,$a6,32
    # Line 449
    addiu	$a5,$a5,24
    # Line 448
    add.s	$f4,$f7,$f4
    # Line 446
    addiu	$a7,$a7,2
    bne	$t0,$a7,.L0db1fba0
    # Line 447
    add.s	$f6,$f0,$f6
    mov.s	$f8,$f6
    mov.s	$f7,$f4
    mov.s	$f9,$f5
.L0db1fc1c:
    # Line 456
    addiu	$a2,$a2,16
    # Line 452
    swc1	$f8,-16($a3)
    # Line 453
    swc1	$f7,-12($a3)
    # Line 454
    swc1	$f9,-8($a3)
    # Line 439
    beq	$t3,$t1,.L0db1fcb0
    # Line 455
    swc1	$f10,-4($a3)
.L0db1fc34:
    # Line 440
    mov.s	$f8,$f14
    # Line 441
    mov.s	$f7,$f14
    # Line 442
    mov.s	$f9,$f14
    # Line 444
    lw	$a5,256($a1)
    # Line 443
    lwc1	$f10,12($a2)
    # Line 445
    move	$a7,$a2
    # Line 455
    addiu	$a3,$a3,16
    # Line 439
    addiu	$t1,$t1,1
    # Line 446
    move	$t2,$t0
    blez	$t0,.L0db1fc1c
    move	$a6,$zero
    andi	$a0,$t0,0x1
    beqz	$a0,.L0db1fb68
    mov.s	$f12,$f8
    # Line 449
    lwc1	$f1,8($a7)
    lwc1	$f0,8($a5)
    # Line 448
    lwc1	$f3,4($a5)
    # Line 449
    mul.s	$f0,$f0,$f1
    # Line 448
    lwc1	$f1,4($a7)
    # Line 447
    lwc1	$f2,0($a5)
    # Line 448
    mul.s	$f3,$f3,$f1
    # Line 447
    lwc1	$f1,0($a7)
    mul.s	$f2,$f2,$f1
    # Line 449
    add.s	$f9,$f0,$f9
    # Line 446
    addiu	$a6,$a6,1
    # Line 448
    add.s	$f7,$f3,$f7
    # Line 450
    addiu	$a7,$a7,16
    # Line 449
    addiu	$a5,$a5,12
    # Line 447
    add.s	$f8,$f2,$f8
    b	.L0db1fb64
    nop
.L0db1fcb0:
    # Line 458
    jr	$ra
    addiu	$sp,$sp,48
.end __glSpanConvolve1DReduceRGB

# Function: __glSpanConvolve1DReduceRGBA
# Declared: Line 466 (Source lines: 468-500)
# Address: 0x0db1fcb8 - 0x0db1fe74 (Size: 444 bytes, Frame: 48)
.globl __glSpanConvolve1DReduceRGBA
.ent __glSpanConvolve1DReduceRGBA
__glSpanConvolve1DReduceRGBA:
    # Line 468
    addiu	$sp,$sp,-48
    lui	$t1,0xe
    addiu	$t1,$t1,-5664
    addu	$at,$t9,$t1
    # Line 476
    lw	$t3,184($a1)
    # Line 475
    lw	$t0,436($a1)
    # Line 481
    move	$t1,$zero
    blez	$t3,.L0db1fe6c
    # Line 475
    lw	$t0,48($t0)
    b	.L0db1fde0
    # Line 481
    mtc1	$zero,$f16
.L0db1fce4:
    mov.s	$f14,$f8
.L0db1fce8:
    move	$t9,$a7
    move	$v1,$a6
    sd	$a6,0($sp)
    mov.s	$f15,$f10
    sra	$v0,$t2,0x1
    move	$t8,$a5
    mov.s	$f12,$f9
    mov.s	$f13,$f11
    mov.s	$f5,$f13
    mov.s	$f7,$f12
    move	$a6,$t8
    beqz	$v0,.L0db1fdc8
    mov.s	$f6,$f15
    move	$a5,$t9
    mov.s	$f4,$f14
    ld	$a7,0($sp)
.L0db1fd28:
    # Line 492
    lwc1	$f0,28($a6)
    lwc1	$f1,28($a5)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($a6)
    lwc1	$f2,12($a5)
    mul.s	$f1,$f1,$f2
    # Line 491
    lwc1	$f3,24($a6)
    lwc1	$f8,24($a5)
    mul.s	$f3,$f3,$f8
    lwc1	$f9,8($a6)
    lwc1	$f10,8($a5)
    mul.s	$f9,$f9,$f10
    # Line 490
    lwc1	$f8,20($a6)
    lwc1	$f10,20($a5)
    mul.s	$f8,$f8,$f10
    lwc1	$f2,4($a6)
    lwc1	$f10,4($a5)
    # Line 492
    add.s	$f6,$f1,$f6
    # Line 490
    mul.s	$f2,$f2,$f10
    # Line 491
    add.s	$f5,$f9,$f5
    # Line 489
    lwc1	$f9,0($a6)
    lwc1	$f10,0($a5)
    # Line 492
    add.s	$f6,$f0,$f6
    # Line 489
    mul.s	$f9,$f9,$f10
    # Line 491
    add.s	$f5,$f3,$f5
    # Line 489
    lwc1	$f0,16($a6)
    lwc1	$f1,16($a5)
    # Line 490
    add.s	$f4,$f2,$f4
    # Line 489
    mul.s	$f0,$f0,$f1
    add.s	$f7,$f9,$f7
    # Line 492
    addiu	$a6,$a6,32
    addiu	$a5,$a5,32
    # Line 490
    add.s	$f4,$f8,$f4
    # Line 488
    addiu	$a7,$a7,2
    bne	$t0,$a7,.L0db1fd28
    # Line 489
    add.s	$f7,$f0,$f7
    mov.s	$f9,$f7
    mov.s	$f8,$f4
    mov.s	$f11,$f5
    mov.s	$f10,$f6
.L0db1fdc8:
    # Line 498
    addiu	$a2,$a2,16
    # Line 494
    swc1	$f9,-16($a3)
    # Line 495
    swc1	$f8,-12($a3)
    # Line 496
    swc1	$f11,-8($a3)
    # Line 481
    beq	$t3,$t1,.L0db1fe6c
    # Line 497
    swc1	$f10,-4($a3)
.L0db1fde0:
    # Line 482
    mov.s	$f9,$f16
    # Line 483
    mov.s	$f8,$f16
    # Line 484
    mov.s	$f11,$f16
    # Line 485
    mov.s	$f10,$f16
    # Line 486
    lw	$a5,256($a1)
    # Line 487
    move	$a7,$a2
    # Line 497
    addiu	$a3,$a3,16
    # Line 481
    addiu	$t1,$t1,1
    # Line 488
    move	$t2,$t0
    blez	$t0,.L0db1fdc8
    move	$a6,$zero
    andi	$a0,$t0,0x1
    beqz	$a0,.L0db1fce8
    mov.s	$f14,$f8
    # Line 492
    lwc1	$f2,12($a7)
    lwc1	$f1,12($a5)
    mul.s	$f1,$f1,$f2
    # Line 491
    lwc1	$f0,8($a7)
    lwc1	$f4,8($a5)
    # Line 490
    lwc1	$f3,4($a5)
    # Line 491
    mul.s	$f4,$f4,$f0
    # Line 490
    lwc1	$f0,4($a7)
    mul.s	$f3,$f3,$f0
    # Line 489
    lwc1	$f2,0($a5)
    lwc1	$f0,0($a7)
    # Line 492
    add.s	$f10,$f1,$f10
    # Line 489
    mul.s	$f2,$f2,$f0
    # Line 491
    add.s	$f11,$f4,$f11
    # Line 488
    addiu	$a6,$a6,1
    # Line 490
    add.s	$f8,$f3,$f8
    # Line 492
    addiu	$a5,$a5,16
    addiu	$a7,$a7,16
    # Line 489
    add.s	$f9,$f2,$f9
    b	.L0db1fce4
    nop
.L0db1fe6c:
    # Line 500
    jr	$ra
    addiu	$sp,$sp,48
.end __glSpanConvolve1DReduceRGBA

# Function: __glSpanConvolve1DReduceL
# Declared: Line 508 (Source lines: 510-542)
# Address: 0x0db1fe74 - 0x0db1ffe8 (Size: 372 bytes, Frame: 48)
.globl __glSpanConvolve1DReduceL
.ent __glSpanConvolve1DReduceL
__glSpanConvolve1DReduceL:
    # Line 510
    addiu	$sp,$sp,-48
    lui	$t1,0xe
    addiu	$t1,$t1,-6108
    addu	$at,$t9,$t1
    # Line 518
    lw	$t3,184($a1)
    # Line 517
    lw	$t0,436($a1)
    # Line 523
    move	$t1,$zero
    blez	$t3,.L0db1ffe0
    # Line 517
    lw	$t0,48($t0)
    b	.L0db1ff68
    # Line 523
    mtc1	$zero,$f14
.L0db1fea0:
    mov.s	$f12,$f8
.L0db1fea4:
    move	$v1,$a6
    sd	$a6,0($sp)
    mov.s	$f11,$f9
    sra	$v0,$t2,0x1
    move	$t8,$a5
    move	$t9,$a7
    mov.s	$f13,$f7
    mov.s	$f4,$f13
    move	$a6,$t9
    beqz	$v0,.L0db1ff50
    mov.s	$f5,$f11
    move	$a5,$t8
    mov.s	$f6,$f12
    ld	$a7,0($sp)
.L0db1fedc:
    # Line 532
    lwc1	$f0,20($a6)
    # Line 531
    lwc1	$f3,4($a5)
    # Line 532
    mul.s	$f0,$f0,$f3
    lwc1	$f2,4($a6)
    # Line 531
    lwc1	$f1,0($a5)
    # Line 532
    mul.s	$f2,$f2,$f1
    # Line 531
    lwc1	$f7,16($a6)
    mul.s	$f7,$f7,$f3
    lwc1	$f3,0($a6)
    # Line 532
    add.s	$f4,$f2,$f4
    # Line 531
    mul.s	$f3,$f3,$f1
    # Line 533
    lwc1	$f1,0($a5)
    lwc1	$f2,8($a6)
    mul.s	$f1,$f1,$f2
    # Line 532
    add.s	$f4,$f0,$f4
    # Line 533
    lwc1	$f0,4($a5)
    lwc1	$f2,24($a6)
    # Line 531
    add.s	$f6,$f3,$f6
    # Line 533
    mul.s	$f0,$f0,$f2
    add.s	$f5,$f1,$f5
    # Line 534
    addiu	$a6,$a6,32
    # Line 533
    addiu	$a5,$a5,8
    # Line 531
    add.s	$f6,$f7,$f6
    # Line 530
    addiu	$a7,$a7,2
    bne	$t0,$a7,.L0db1fedc
    # Line 533
    add.s	$f5,$f0,$f5
    mov.s	$f8,$f6
    mov.s	$f7,$f4
    mov.s	$f9,$f5
.L0db1ff50:
    # Line 540
    addiu	$a2,$a2,16
    # Line 536
    swc1	$f8,-16($a3)
    # Line 537
    swc1	$f7,-12($a3)
    # Line 538
    swc1	$f9,-8($a3)
    # Line 523
    beq	$t3,$t1,.L0db1ffe0
    # Line 539
    swc1	$f10,-4($a3)
.L0db1ff68:
    # Line 524
    mov.s	$f8,$f14
    # Line 525
    mov.s	$f7,$f14
    # Line 526
    mov.s	$f9,$f14
    # Line 528
    lw	$a5,256($a1)
    # Line 527
    lwc1	$f10,12($a2)
    # Line 529
    move	$a7,$a2
    # Line 539
    addiu	$a3,$a3,16
    # Line 523
    addiu	$t1,$t1,1
    # Line 530
    move	$t2,$t0
    blez	$t0,.L0db1ff50
    move	$a6,$zero
    andi	$a0,$t0,0x1
    beqz	$a0,.L0db1fea4
    mov.s	$f12,$f8
    # Line 533
    lwc1	$f0,8($a7)
    lwc1	$f3,0($a5)
    # Line 532
    lwc1	$f2,4($a7)
    # Line 533
    mul.s	$f3,$f3,$f0
    # Line 531
    lwc1	$f0,0($a5)
    lwc1	$f1,0($a7)
    # Line 532
    mul.s	$f2,$f2,$f0
    # Line 531
    mul.s	$f1,$f1,$f0
    # Line 533
    add.s	$f9,$f3,$f9
    # Line 530
    addiu	$a6,$a6,1
    # Line 532
    add.s	$f7,$f2,$f7
    # Line 534
    addiu	$a7,$a7,16
    # Line 533
    addiu	$a5,$a5,4
    # Line 531
    add.s	$f8,$f1,$f8
    b	.L0db1fea0
    nop
.L0db1ffe0:
    # Line 542
    jr	$ra
    addiu	$sp,$sp,48
.end __glSpanConvolve1DReduceL

# Function: __glSpanConvolve1DReduceLA
# Declared: Line 551 (Source lines: 553-585)
# Address: 0x0db1ffe8 - 0x0db2018c (Size: 420 bytes, Frame: 48)
.globl __glSpanConvolve1DReduceLA
.ent __glSpanConvolve1DReduceLA
__glSpanConvolve1DReduceLA:
    # Line 553
    addiu	$sp,$sp,-48
    lui	$t1,0xe
    addiu	$t1,$t1,-6480
    addu	$at,$t9,$t1
    # Line 561
    lw	$t3,184($a1)
    # Line 560
    lw	$t0,436($a1)
    # Line 566
    move	$t1,$zero
    blez	$t3,.L0db20184
    # Line 560
    lw	$t0,48($t0)
    b	.L0db20100
    # Line 566
    mtc1	$zero,$f16
.L0db20014:
    mov.s	$f12,$f8
.L0db20018:
    move	$t9,$a7
    move	$v1,$a6
    sd	$a6,0($sp)
    mov.s	$f15,$f10
    sra	$v0,$t2,0x1
    move	$t8,$a5
    mov.s	$f13,$f9
    mov.s	$f14,$f11
    mov.s	$f7,$f14
    mov.s	$f4,$f13
    move	$a6,$t8
    beqz	$v0,.L0db200e8
    mov.s	$f6,$f15
    move	$a5,$t9
    mov.s	$f5,$f12
    ld	$a7,0($sp)
.L0db20058:
    # Line 577
    lwc1	$f11,12($a6)
    lwc1	$f0,28($a5)
    mul.s	$f11,$f11,$f0
    lwc1	$f0,4($a6)
    lwc1	$f1,12($a5)
    mul.s	$f0,$f0,$f1
    # Line 576
    lwc1	$f3,24($a5)
    # Line 574
    lwc1	$f1,8($a6)
    # Line 576
    mul.s	$f3,$f3,$f1
    lwc1	$f9,8($a5)
    # Line 574
    lwc1	$f10,0($a6)
    # Line 576
    mul.s	$f9,$f9,$f10
    # Line 575
    lwc1	$f8,20($a5)
    mul.s	$f8,$f8,$f1
    lwc1	$f2,4($a5)
    # Line 577
    add.s	$f6,$f0,$f6
    # Line 575
    mul.s	$f2,$f2,$f10
    # Line 576
    add.s	$f7,$f9,$f7
    # Line 574
    lwc1	$f9,0($a5)
    # Line 577
    add.s	$f6,$f11,$f6
    # Line 574
    mul.s	$f9,$f9,$f10
    # Line 576
    add.s	$f7,$f3,$f7
    # Line 574
    lwc1	$f0,16($a5)
    # Line 575
    add.s	$f5,$f2,$f5
    # Line 574
    mul.s	$f0,$f0,$f1
    add.s	$f4,$f9,$f4
    # Line 577
    addiu	$a6,$a6,16
    addiu	$a5,$a5,32
    # Line 575
    add.s	$f5,$f8,$f5
    # Line 573
    addiu	$a7,$a7,2
    bne	$t0,$a7,.L0db20058
    # Line 574
    add.s	$f4,$f0,$f4
    mov.s	$f9,$f4
    mov.s	$f8,$f5
    mov.s	$f11,$f7
    mov.s	$f10,$f6
.L0db200e8:
    # Line 583
    addiu	$a2,$a2,16
    # Line 579
    swc1	$f9,-16($a3)
    # Line 580
    swc1	$f8,-12($a3)
    # Line 581
    swc1	$f11,-8($a3)
    # Line 566
    beq	$t3,$t1,.L0db20184
    # Line 582
    swc1	$f10,-4($a3)
.L0db20100:
    # Line 567
    mov.s	$f9,$f16
    # Line 568
    mov.s	$f8,$f16
    # Line 569
    mov.s	$f11,$f16
    # Line 570
    mov.s	$f10,$f16
    # Line 571
    lw	$a5,256($a1)
    # Line 572
    move	$a7,$a2
    # Line 582
    addiu	$a3,$a3,16
    # Line 566
    addiu	$t1,$t1,1
    # Line 573
    move	$t2,$t0
    blez	$t0,.L0db200e8
    move	$a6,$zero
    andi	$a0,$t0,0x1
    beqz	$a0,.L0db20018
    mov.s	$f12,$f8
    # Line 574
    lwc1	$f4,0($a5)
    # Line 575
    lwc1	$f2,4($a7)
    mul.s	$f2,$f2,$f4
    # Line 577
    lwc1	$f1,12($a7)
    lwc1	$f0,4($a5)
    # Line 576
    lwc1	$f3,8($a7)
    # Line 577
    mul.s	$f0,$f0,$f1
    # Line 576
    mul.s	$f3,$f3,$f4
    # Line 574
    lwc1	$f1,0($a7)
    # Line 577
    add.s	$f10,$f0,$f10
    # Line 574
    mul.s	$f1,$f1,$f4
    # Line 576
    add.s	$f11,$f3,$f11
    # Line 573
    addiu	$a6,$a6,1
    # Line 575
    add.s	$f8,$f2,$f8
    # Line 577
    addiu	$a5,$a5,8
    addiu	$a7,$a7,16
    # Line 574
    add.s	$f9,$f1,$f9
    b	.L0db20014
    nop
.L0db20184:
    # Line 585
    jr	$ra
    addiu	$sp,$sp,48
.end __glSpanConvolve1DReduceLA

# Function: __glSpanConvolve1DReduceI
# Declared: Line 594 (Source lines: 596-628)
# Address: 0x0db2018c - 0x0db20330 (Size: 420 bytes, Frame: 48)
.globl __glSpanConvolve1DReduceI
.ent __glSpanConvolve1DReduceI
__glSpanConvolve1DReduceI:
    # Line 596
    addiu	$sp,$sp,-48
    lui	$t1,0xe
    addiu	$t1,$t1,-6900
    addu	$at,$t9,$t1
    # Line 604
    lw	$t3,184($a1)
    # Line 603
    lw	$t0,436($a1)
    # Line 609
    move	$t1,$zero
    blez	$t3,.L0db20328
    # Line 603
    lw	$t0,48($t0)
    b	.L0db202a4
    # Line 609
    mtc1	$zero,$f16
.L0db201b8:
    mov.s	$f14,$f8
.L0db201bc:
    move	$t9,$a7
    move	$v1,$a6
    sd	$a6,0($sp)
    mov.s	$f15,$f10
    sra	$v0,$t2,0x1
    move	$t8,$a5
    mov.s	$f12,$f9
    mov.s	$f13,$f11
    mov.s	$f5,$f13
    mov.s	$f7,$f12
    move	$a6,$t8
    beqz	$v0,.L0db2028c
    mov.s	$f6,$f15
    move	$a5,$t9
    mov.s	$f4,$f14
    ld	$a7,0($sp)
.L0db201fc:
    # Line 619
    lwc1	$f0,24($a5)
    # Line 617
    lwc1	$f2,4($a6)
    # Line 619
    mul.s	$f0,$f0,$f2
    lwc1	$f1,8($a5)
    # Line 617
    lwc1	$f10,0($a6)
    # Line 619
    mul.s	$f1,$f1,$f10
    # Line 618
    lwc1	$f3,20($a5)
    mul.s	$f3,$f3,$f2
    lwc1	$f9,4($a5)
    mul.s	$f9,$f9,$f10
    # Line 617
    lwc1	$f8,16($a5)
    mul.s	$f8,$f8,$f2
    lwc1	$f2,0($a5)
    # Line 619
    add.s	$f5,$f1,$f5
    # Line 617
    mul.s	$f2,$f2,$f10
    # Line 618
    add.s	$f4,$f9,$f4
    # Line 620
    lwc1	$f9,0($a6)
    lwc1	$f10,12($a5)
    # Line 619
    add.s	$f5,$f0,$f5
    # Line 620
    mul.s	$f9,$f9,$f10
    # Line 618
    add.s	$f4,$f3,$f4
    # Line 620
    lwc1	$f0,4($a6)
    lwc1	$f1,28($a5)
    # Line 617
    add.s	$f7,$f2,$f7
    # Line 620
    mul.s	$f0,$f0,$f1
    add.s	$f6,$f9,$f6
    addiu	$a6,$a6,8
    addiu	$a5,$a5,32
    # Line 617
    add.s	$f7,$f8,$f7
    # Line 616
    addiu	$a7,$a7,2
    bne	$t0,$a7,.L0db201fc
    # Line 620
    add.s	$f6,$f0,$f6
    mov.s	$f9,$f7
    mov.s	$f8,$f4
    mov.s	$f11,$f5
    mov.s	$f10,$f6
.L0db2028c:
    # Line 626
    addiu	$a2,$a2,16
    # Line 622
    swc1	$f9,-16($a3)
    # Line 623
    swc1	$f8,-12($a3)
    # Line 624
    swc1	$f11,-8($a3)
    # Line 609
    beq	$t3,$t1,.L0db20328
    # Line 625
    swc1	$f10,-4($a3)
.L0db202a4:
    # Line 610
    mov.s	$f9,$f16
    # Line 611
    mov.s	$f8,$f16
    # Line 612
    mov.s	$f11,$f16
    # Line 613
    mov.s	$f10,$f16
    # Line 614
    lw	$a5,256($a1)
    # Line 615
    move	$a7,$a2
    # Line 625
    addiu	$a3,$a3,16
    # Line 609
    addiu	$t1,$t1,1
    # Line 616
    move	$t2,$t0
    blez	$t0,.L0db2028c
    move	$a6,$zero
    andi	$a0,$t0,0x1
    beqz	$a0,.L0db201bc
    mov.s	$f14,$f8
    # Line 618
    lwc1	$f2,4($a7)
    # Line 620
    lwc1	$f0,0($a5)
    # Line 617
    lwc1	$f4,0($a5)
    # Line 618
    mul.s	$f2,$f2,$f4
    # Line 620
    lwc1	$f1,12($a7)
    # Line 619
    lwc1	$f3,8($a7)
    # Line 620
    mul.s	$f0,$f0,$f1
    # Line 619
    mul.s	$f3,$f3,$f4
    # Line 617
    lwc1	$f1,0($a7)
    # Line 620
    add.s	$f10,$f0,$f10
    # Line 617
    mul.s	$f1,$f1,$f4
    # Line 619
    add.s	$f11,$f3,$f11
    # Line 616
    addiu	$a6,$a6,1
    # Line 618
    add.s	$f8,$f2,$f8
    # Line 620
    addiu	$a5,$a5,4
    addiu	$a7,$a7,16
    # Line 617
    add.s	$f9,$f1,$f9
    b	.L0db201b8
    nop
.L0db20328:
    # Line 628
    jr	$ra
    addiu	$sp,$sp,48
.end __glSpanConvolve1DReduceI

# Function: __glSlowPickConvolutionFilter
# Declared: Line 634 (Source lines: 637-678)
# Address: 0x0db20330 - 0x0db2055c (Size: 556 bytes, Frame: 144)
.globl __glSlowPickConvolutionFilter
.ent __glSlowPickConvolutionFilter
__glSlowPickConvolutionFilter:
    # Line 637
    move	$t3,$a5
    move	$t8,$a3
    move	$t1,$a2
    move	$t2,$a1
    # Line 642
    li	$at,0x8010
    # Line 637
    addiu	$sp,$sp,-656
    sd	$s2,560($sp)
    # Line 640
    move	$s2,$zero
    sd	$s8,536($sp)
    # Line 637
    move	$s8,$a7
    sd	$s5,544($sp)
    move	$s5,$a4
    sd	$s0,552($sp)
    move	$s0,$a0
    sd	$gp,528($sp)
    lui	$v0,0xe
    addiu	$v0,$v0,-7320
    # Line 642
    beq	$a6,$at,.L0db20540
    # Line 637
    addu	$gp,$t9,$v0
    # Line 642
    li	$v1,0x8011
    beq	$a6,$v1,.L0db20550
    sd	$s1,568($sp)
    sd	$ra,576($sp)
    lw	$s1,16($sp)
.L0db20390:
    # Line 651
    move	$a0,$s0
    sw	$s8,4($sp)
    move	$a7,$t3
    move	$a6,$s5
    move	$a5,$t8
    move	$a4,$zero
    # lw $t9, -28736($gp) # &__glInitMemUnpack
    move	$a3,$t1
    move	$a2,$t2
    jal	__glInitMemUnpack
    addiu	$a1,$sp,24
    # Line 654
    move	$a0,$s0
    # lw $t9, -28744($gp) # &__glInitMemLoad
    lw	$a3,64($s1)
    lw	$a2,8($s1)
    jal	__glInitMemLoad
    addiu	$a1,$sp,24
    # Line 655
    lwc1	$f4,16($s1)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db2049c
    # Line 660
    swc1	$f4,340($sp)
    # Line 655
    lwc1	$f1,20($s1)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db2049c
    # Line 660
    swc1	$f4,340($sp)
    # Line 655
    lwc1	$f2,24($s1)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db2049c
    # Line 660
    swc1	$f4,340($sp)
    # Line 655
    lwc1	$f3,28($s1)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1f	.L0db20498
    dmtc1	$zero,$f5
    lwc1	$f0,32($s1)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db2049c
    # Line 660
    swc1	$f4,340($sp)
    # Line 655
    lwc1	$f1,36($s1)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db2049c
    # Line 660
    swc1	$f4,340($sp)
    # Line 655
    lwc1	$f2,40($s1)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db2049c
    # Line 660
    swc1	$f4,340($sp)
    # Line 655
    lwc1	$f3,44($s1)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1t	.L0db204dc
    # Line 669
    nop	# was lw $t9, -28576($gp) # &__glInitUnpacker
.L0db20498:
    # Line 660
    swc1	$f4,340($sp)
.L0db2049c:
    # Line 661
    lwc1	$f2,20($s1)
    swc1	$f2,344($sp)
    # Line 662
    lwc1	$f1,24($s1)
    swc1	$f1,348($sp)
    # Line 663
    lwc1	$f0,28($s1)
    swc1	$f0,352($sp)
    # Line 664
    lwc1	$f3,32($s1)
    swc1	$f3,356($sp)
    # Line 665
    lwc1	$f2,36($s1)
    swc1	$f2,360($sp)
    # Line 666
    lwc1	$f1,40($s1)
    swc1	$f1,364($sp)
    # Line 667
    lwc1	$f0,44($s1)
    # Line 659
    li	$s2,1
    # Line 667
    swc1	$f0,368($sp)
    # Line 669
    # lw $t9, -28576($gp) # &__glInitUnpacker
.L0db204dc:
    move	$a0,$s0
    addiu	$a1,$sp,24
    jal	__glInitUnpacker
    ld	$s1,568($sp)
    # Line 670
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,24
    # Line 677
    move	$a2,$zero
    addiu	$a1,$sp,24
    move	$a0,$s0
    # Line 675
    sw	$zero,456($sp)
    # Line 677
    # lw $t9, -28756($gp) # &__glGenericPickCopyImage
    # Line 674
    sb	$zero,452($sp)
    # Line 673
    sb	$s2,451($sp)
    # Line 677
    jal	__glGenericPickCopyImage
    # Line 672
    sb	$zero,449($sp)
    ld	$gp,528($sp)
    # Line 678
    ld	$s0,552($sp)
    ld	$s2,560($sp)
    ld	$ra,576($sp)
    ld	$s5,544($sp)
    ld	$s8,536($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0db20540:
    sd	$ra,576($sp)
    sd	$s1,568($sp)
    # Line 645
    b	.L0db20390
    # Line 644
    addiu	$s1,$s0,744
.L0db20550:
    sd	$ra,576($sp)
    b	.L0db20390
    # Line 647
    addiu	$s1,$s0,812
.end __glSlowPickConvolutionFilter

# Function: __glSlowPickSeparableFilter
# Declared: Line 681 (Source lines: 685-747)
# Address: 0x0db2055c - 0x0db207fc (Size: 672 bytes, Frame: 160)
.globl __glSlowPickSeparableFilter
.ent __glSlowPickSeparableFilter
__glSlowPickSeparableFilter:
    # Line 685
    move	$a7,$a5
    move	$v1,$a1
    move	$t0,$a3
    move	$t1,$a4
    addiu	$sp,$sp,-672
    sd	$a4,584($sp)
    # Line 696
    move	$a4,$zero
    sd	$a3,592($sp)
    li	$a3,1
    sd	$a1,544($sp)
    addiu	$a1,$sp,16
    sd	$s1,528($sp)
    # Line 688
    move	$s1,$zero
    sd	$a6,576($sp)
    # Line 696
    move	$a6,$t1
    move	$a5,$t0
    sd	$s8,552($sp)
    # Line 685
    move	$s8,$a2
    # Line 696
    move	$a2,$v1
    sd	$s0,520($sp)
    # Line 685
    move	$s0,$a0
    # Line 696
    lbu	$at,679($sp)
    sd	$gp,560($sp)
    # Line 685
    lui	$v0,0xe
    addiu	$v0,$v0,-7876
    addu	$gp,$t9,$v0
    # Line 696
    # lw $t9, -28736($gp) # &__glInitMemUnpack
    sd	$ra,536($sp)
    sd	$at,568($sp)
    jal	__glInitMemUnpack
    sw	$at,4($sp)
    # Line 698
    move	$a0,$s0
    # lw $t9, -28744($gp) # &__glInitMemLoad
    lw	$a3,944($s0)
    lw	$a2,888($s0)
    jal	__glInitMemLoad
    addiu	$a1,$sp,16
    # Line 699
    lwc1	$f4,896($s0)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db20670
    # Line 704
    swc1	$f4,332($sp)
    # Line 699
    lwc1	$f1,900($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db20670
    # Line 704
    swc1	$f4,332($sp)
    # Line 699
    lwc1	$f2,904($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db20670
    # Line 704
    swc1	$f4,332($sp)
    # Line 699
    lwc1	$f3,908($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1f	.L0db2066c
    dmtc1	$zero,$f1
    lwc1	$f0,912($s0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0db206b0
    # Line 713
    nop	# was lw $t9, -28576($gp) # &__glInitUnpacker
.L0db2066c:
    # Line 704
    swc1	$f4,332($sp)
.L0db20670:
    # Line 705
    lwc1	$f3,900($s0)
    swc1	$f3,336($sp)
    # Line 706
    lwc1	$f2,904($s0)
    swc1	$f2,340($sp)
    # Line 707
    lwc1	$f1,908($s0)
    swc1	$f1,344($sp)
    # Line 708
    lwc1	$f0,912($s0)
    swc1	$f0,348($sp)
    # Line 709
    lwc1	$f3,916($s0)
    swc1	$f3,352($sp)
    # Line 710
    lwc1	$f2,920($s0)
    swc1	$f2,356($sp)
    # Line 711
    lwc1	$f1,924($s0)
    # Line 703
    li	$s1,1
    # Line 711
    swc1	$f1,360($sp)
    # Line 713
    # lw $t9, -28576($gp) # &__glInitUnpacker
.L0db206b0:
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 714
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 721
    move	$a2,$zero
    addiu	$a1,$sp,16
    move	$a0,$s0
    # Line 719
    sw	$zero,448($sp)
    # Line 721
    # lw $t9, -28756($gp) # &__glGenericPickCopyImage
    # Line 718
    sb	$zero,444($sp)
    # Line 717
    sb	$s1,443($sp)
    # Line 721
    jal	__glGenericPickCopyImage
    # Line 716
    sb	$zero,441($sp)
    # Line 725
    move	$a0,$s0
    ld	$a7,576($sp)
    ld	$a6,584($sp)
    ld	$a5,592($sp)
    move	$a4,$zero
    li	$a3,1
    move	$a2,$s8
    # lw $t9, -28736($gp) # &__glInitMemUnpack
    ld	$t2,568($sp)
    addiu	$a1,$sp,16
    jal	__glInitMemUnpack
    sw	$t2,4($sp)
    # Line 726
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    lw	$a0,888($s0)
    jal	__glElementsPerGroup
    ld	$s8,544($sp)
    mult	$v0,$s8
    move	$a0,$s0
    lw	$a2,888($s0)
    addiu	$a1,$sp,16
    lw	$a3,944($s0)
    # lw $t9, -28744($gp) # &__glInitMemLoad
    mflo	$a4
    sll	$a4,$a4,0x2
    jal	__glInitMemLoad
    addu	$a3,$a3,$a4
    beqz	$s1,.L0db207a0
    ld	$s8,552($sp)
    # Line 729
    lwc1	$f3,896($s0)
    swc1	$f3,332($sp)
    # Line 730
    lwc1	$f2,900($s0)
    swc1	$f2,336($sp)
    # Line 731
    lwc1	$f1,904($s0)
    swc1	$f1,340($sp)
    # Line 732
    lwc1	$f0,908($s0)
    swc1	$f0,344($sp)
    # Line 733
    lwc1	$f3,912($s0)
    swc1	$f3,348($sp)
    # Line 734
    lwc1	$f2,916($s0)
    swc1	$f2,352($sp)
    # Line 735
    lwc1	$f1,920($s0)
    swc1	$f1,356($sp)
    # Line 736
    lwc1	$f0,924($s0)
    swc1	$f0,360($sp)
.L0db207a0:
    # Line 738
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 739
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 746
    move	$a2,$zero
    addiu	$a1,$sp,16
    move	$a0,$s0
    # Line 744
    sw	$zero,448($sp)
    # Line 746
    # lw $t9, -28756($gp) # &__glGenericPickCopyImage
    # Line 743
    sb	$zero,444($sp)
    # Line 742
    sb	$s1,443($sp)
    # Line 746
    jal	__glGenericPickCopyImage
    # Line 741
    sb	$zero,441($sp)
    ld	$gp,560($sp)
    # Line 747
    ld	$ra,536($sp)
    ld	$s0,520($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,672
.end __glSlowPickSeparableFilter

# Function: __glSlowPickGetConvolutionFilter
# Declared: Line 750 (Source lines: 753-781)
# Address: 0x0db207fc - 0x0db20920 (Size: 292 bytes, Frame: 240)
.globl __glSlowPickGetConvolutionFilter
.ent __glSlowPickGetConvolutionFilter
__glSlowPickGetConvolutionFilter:
    # Line 757
    li	$at,0x8010
    # Line 753
    addiu	$sp,$sp,-624
    sd	$s8,528($sp)
    move	$s8,$a2
    sd	$s0,544($sp)
    move	$s0,$a0
    sd	$gp,536($sp)
    lui	$v0,0xe
    addiu	$v0,$v0,-8548
    # Line 757
    beq	$a1,$at,.L0db208f4
    # Line 753
    addu	$gp,$t9,$v0
    # Line 757
    li	$v1,0x8011
    beq	$a1,$v1,.L0db2090c
    sd	$s1,552($sp)
    sd	$ra,560($sp)
    sd	$a3,512($sp)
    sd	$a4,520($sp)
    lw	$s1,0($sp)
.L0db20844:
    # Line 766
    move	$a0,$s0
    lw	$a5,64($s1)
    lw	$a4,8($s1)
    # lw $t9, -28740($gp) # &__glInitMemGet
    lw	$a3,52($s1)
    lw	$a2,48($s1)
    jal	__glInitMemGet
    addiu	$a1,$sp,8
    # Line 768
    move	$a0,$s0
    ld	$a7,520($sp)
    ld	$a6,512($sp)
    move	$a5,$s8
    move	$a4,$zero
    # lw $t9, -28732($gp) # &__glInitMemPack
    lw	$a3,52($s1)
    lw	$a2,48($s1)
    jal	__glInitMemPack
    addiu	$a1,$sp,8
    # Line 770
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s0
    addiu	$a1,$sp,8
    jal	__glInitUnpacker
    ld	$s1,552($sp)
    # Line 771
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,8
    # Line 779
    move	$a2,$zero
    addiu	$a1,$sp,8
    move	$a0,$s0
    # Line 776
    sb	$zero,433($sp)
    # Line 774
    sb	$zero,436($sp)
    # Line 773
    li	$a3,1
    # Line 779
    # lw $t9, -28756($gp) # &__glGenericPickCopyImage
    # Line 777
    sb	$a3,434($sp)
    # Line 775
    sb	$a3,438($sp)
    # Line 779
    jal	__glGenericPickCopyImage
    # Line 773
    sb	$a3,432($sp)
    ld	$gp,536($sp)
    # Line 781
    ld	$ra,560($sp)
    ld	$s0,544($sp)
    ld	$s8,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db208f4:
    sd	$ra,560($sp)
    sd	$a3,512($sp)
    sd	$a4,520($sp)
    sd	$s1,552($sp)
    # Line 760
    b	.L0db20844
    # Line 759
    addiu	$s1,$s0,744
.L0db2090c:
    sd	$ra,560($sp)
    sd	$a3,512($sp)
    sd	$a4,520($sp)
    b	.L0db20844
    # Line 762
    addiu	$s1,$s0,812
.end __glSlowPickGetConvolutionFilter

# Function: __glSlowPickGetSeparableFilter
# Declared: Line 784 (Source lines: 789-817)
# Address: 0x0db20920 - 0x0db20aac (Size: 396 bytes, Frame: 240)
.globl __glSlowPickGetSeparableFilter
.ent __glSlowPickGetSeparableFilter
__glSlowPickGetSeparableFilter:
    # Line 789
    addiu	$sp,$sp,-624
    sd	$s2,504($sp)
    move	$s2,$a3
    # Line 795
    li	$a3,1
    addiu	$a1,$sp,0
    sd	$s0,512($sp)
    # Line 789
    move	$s0,$a0
    sd	$a5,544($sp)
    # Line 795
    lw	$a5,944($a0)
    sd	$a4,552($sp)
    lw	$a4,888($a0)
    sd	$s1,520($sp)
    sd	$gp,536($sp)
    # Line 789
    lui	$at,0xe
    addiu	$at,$at,-8840
    addu	$gp,$t9,$at
    # Line 795
    # lw $t9, -28740($gp) # &__glInitMemGet
    # Line 789
    move	$s1,$a2
    sd	$ra,528($sp)
    # Line 795
    jal	__glInitMemGet
    lw	$a2,928($a0)
    # Line 796
    move	$a0,$s0
    ld	$a7,552($sp)
    move	$a6,$s2
    move	$a5,$s1
    move	$a4,$zero
    # lw $t9, -28732($gp) # &__glInitMemPack
    li	$a3,1
    lw	$a2,928($s0)
    jal	__glInitMemPack
    addiu	$a1,$sp,0
    # Line 797
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 798
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 804
    move	$a2,$zero
    addiu	$a1,$sp,0
    move	$a0,$s0
    # Line 802
    sb	$zero,425($sp)
    # Line 800
    sb	$zero,428($sp)
    # Line 799
    li	$v0,1
    # Line 804
    # lw $t9, -28756($gp) # &__glGenericPickCopyImage
    # Line 803
    sb	$v0,426($sp)
    # Line 801
    sb	$v0,430($sp)
    # Line 804
    jal	__glGenericPickCopyImage
    # Line 799
    sb	$v0,424($sp)
    # Line 806
    lw	$t0,928($s0)
    lw	$a7,892($s0)
    mult	$a7,$t0
    move	$a0,$s0
    lw	$a4,888($s0)
    li	$a3,1
    lw	$a2,932($s0)
    addiu	$a1,$sp,0
    lw	$a5,944($s0)
    # lw $t9, -28740($gp) # &__glInitMemGet
    mflo	$a6
    sll	$a6,$a6,0x2
    jal	__glInitMemGet
    addu	$a5,$a5,$a6
    # Line 808
    move	$a0,$s0
    ld	$a7,544($sp)
    move	$a6,$s2
    move	$a5,$s1
    move	$a4,$zero
    # lw $t9, -28732($gp) # &__glInitMemPack
    li	$a3,1
    lw	$a2,932($s0)
    jal	__glInitMemPack
    addiu	$a1,$sp,0
    # Line 809
    move	$a0,$s0
    # lw $t9, -28576($gp) # &__glInitUnpacker
    addiu	$a1,$sp,0
    ld	$s1,520($sp)
    jal	__glInitUnpacker
    ld	$s2,504($sp)
    # Line 810
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 815
    move	$a2,$zero
    addiu	$a1,$sp,0
    move	$a0,$s0
    # Line 813
    sb	$zero,425($sp)
    # Line 812
    sb	$zero,428($sp)
    # Line 815
    # lw $t9, -28756($gp) # &__glGenericPickCopyImage
    li	$t1,1
    # Line 814
    sb	$t1,426($sp)
    # Line 815
    jal	__glGenericPickCopyImage
    # Line 811
    sb	$t1,424($sp)
    # Line 817
    ld	$ra,528($sp)
    ld	$gp,536($sp)
    ld	$s0,512($sp)
    jr	$ra
    addiu	$sp,$sp,624
.end __glSlowPickGetSeparableFilter

# Function: __glSlowPickCopyConvolutionFilter1D
# Declared: Line 821 (Source lines: 825-856)
# Address: 0x0db20aac - 0x0db20c98 (Size: 492 bytes, Frame: 208)
.globl __glSlowPickCopyConvolutionFilter1D
.ent __glSlowPickCopyConvolutionFilter1D
__glSlowPickCopyConvolutionFilter1D:
    # Line 825
    addiu	$sp,$sp,-592
    sd	$s7,512($sp)
    move	$s7,$a2
    move	$a2,$a3
    move	$a3,$a4
    move	$a4,$a5
    # Line 832
    li	$a5,1
    addiu	$a1,$sp,0
    sd	$s1,528($sp)
    # Line 828
    move	$s1,$zero
    sd	$gp,504($sp)
    # Line 825
    lui	$at,0xe
    addiu	$at,$at,-9236
    addu	$gp,$t9,$at
    # Line 832
    # lw $t9, -28752($gp) # &__glInitReadImageSrcInfo
    sd	$s0,536($sp)
    sd	$ra,520($sp)
    jal	__glInitReadImageSrcInfo
    # Line 825
    move	$s0,$a0
    # Line 833
    move	$a0,$s0
    # lw $t9, -28744($gp) # &__glInitMemLoad
    lw	$a3,808($s0)
    move	$a2,$s7
    jal	__glInitMemLoad
    addiu	$a1,$sp,0
    # Line 834
    lwc1	$f4,760($s0)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db20bd8
    # Line 839
    swc1	$f4,316($sp)
    # Line 834
    lwc1	$f1,764($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db20bd8
    # Line 839
    swc1	$f4,316($sp)
    # Line 834
    lwc1	$f2,768($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db20bd8
    # Line 839
    swc1	$f4,316($sp)
    # Line 834
    lwc1	$f3,772($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1f	.L0db20bd4
    dmtc1	$zero,$f5
    lwc1	$f0,776($s0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db20bd8
    # Line 839
    swc1	$f4,316($sp)
    # Line 834
    lwc1	$f1,780($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db20bd8
    # Line 839
    swc1	$f4,316($sp)
    # Line 834
    lwc1	$f2,784($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db20bd8
    # Line 839
    swc1	$f4,316($sp)
    # Line 834
    lwc1	$f3,788($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1t	.L0db20c18
    # Line 848
    nop	# was lw $t9, -28576($gp) # &__glInitUnpacker
.L0db20bd4:
    # Line 839
    swc1	$f4,316($sp)
.L0db20bd8:
    # Line 840
    lwc1	$f2,764($s0)
    swc1	$f2,320($sp)
    # Line 841
    lwc1	$f1,768($s0)
    swc1	$f1,324($sp)
    # Line 842
    lwc1	$f0,772($s0)
    swc1	$f0,328($sp)
    # Line 843
    lwc1	$f3,776($s0)
    swc1	$f3,332($sp)
    # Line 844
    lwc1	$f2,780($s0)
    swc1	$f2,336($sp)
    # Line 845
    lwc1	$f1,784($s0)
    swc1	$f1,340($sp)
    # Line 846
    lwc1	$f0,788($s0)
    # Line 838
    li	$s1,1
    # Line 846
    swc1	$f0,344($sp)
    # Line 848
    # lw $t9, -28576($gp) # &__glInitUnpacker
.L0db20c18:
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 849
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 854
    addiu	$a1,$sp,0
    # lw $t9, -28848($gp) # &__glClipReadPixels
    move	$a0,$s0
    # Line 852
    sw	$zero,432($sp)
    # Line 854
    jal	__glClipReadPixels
    # Line 851
    sb	$s1,427($sp)
    # Line 854
    ld	$s7,512($sp)
    bnez	$v0,.L0db20c6c
    ld	$s1,528($sp)
    ld	$ra,520($sp)
    ld	$gp,504($sp)
    ld	$s0,536($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0db20c6c:
    # Line 855
    lw	$t9,12636($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$gp,504($sp)
    # Line 856
    ld	$s0,536($sp)
    ld	$ra,520($sp)
    ld	$s1,528($sp)
    ld	$s7,512($sp)
    jr	$ra
    addiu	$sp,$sp,592
.end __glSlowPickCopyConvolutionFilter1D

# Function: __glSlowPickCopyConvolutionFilter2D
# Declared: Line 859 (Source lines: 863-895)
# Address: 0x0db20c98 - 0x0db20e84 (Size: 492 bytes, Frame: 224)
.globl __glSlowPickCopyConvolutionFilter2D
.ent __glSlowPickCopyConvolutionFilter2D
__glSlowPickCopyConvolutionFilter2D:
    # Line 863
    addiu	$sp,$sp,-608
    # Line 870
    addiu	$a1,$sp,0
    sd	$s1,528($sp)
    # Line 866
    move	$s1,$zero
    sd	$s7,512($sp)
    # Line 863
    move	$s7,$a2
    move	$a2,$a3
    move	$a3,$a4
    move	$a4,$a5
    move	$a5,$a6
    sd	$gp,504($sp)
    lui	$at,0xe
    addiu	$at,$at,-9728
    addu	$gp,$t9,$at
    # Line 870
    # lw $t9, -28752($gp) # &__glInitReadImageSrcInfo
    sd	$s0,536($sp)
    sd	$ra,520($sp)
    jal	__glInitReadImageSrcInfo
    # Line 863
    move	$s0,$a0
    # Line 871
    move	$a0,$s0
    # lw $t9, -28744($gp) # &__glInitMemLoad
    lw	$a3,876($s0)
    move	$a2,$s7
    jal	__glInitMemLoad
    addiu	$a1,$sp,0
    # Line 872
    lwc1	$f4,828($s0)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db20dc4
    # Line 877
    swc1	$f4,316($sp)
    # Line 872
    lwc1	$f1,832($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db20dc4
    # Line 877
    swc1	$f4,316($sp)
    # Line 872
    lwc1	$f2,836($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db20dc4
    # Line 877
    swc1	$f4,316($sp)
    # Line 872
    lwc1	$f3,840($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1f	.L0db20dc0
    dmtc1	$zero,$f5
    lwc1	$f0,844($s0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f5
    nop
    bc1fl	.L0db20dc4
    # Line 877
    swc1	$f4,316($sp)
    # Line 872
    lwc1	$f1,848($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f5
    nop
    bc1fl	.L0db20dc4
    # Line 877
    swc1	$f4,316($sp)
    # Line 872
    lwc1	$f2,852($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0db20dc4
    # Line 877
    swc1	$f4,316($sp)
    # Line 872
    lwc1	$f3,856($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1t	.L0db20e04
    # Line 886
    nop	# was lw $t9, -28576($gp) # &__glInitUnpacker
.L0db20dc0:
    # Line 877
    swc1	$f4,316($sp)
.L0db20dc4:
    # Line 878
    lwc1	$f2,832($s0)
    swc1	$f2,320($sp)
    # Line 879
    lwc1	$f1,836($s0)
    swc1	$f1,324($sp)
    # Line 880
    lwc1	$f0,840($s0)
    swc1	$f0,328($sp)
    # Line 881
    lwc1	$f3,844($s0)
    swc1	$f3,332($sp)
    # Line 882
    lwc1	$f2,848($s0)
    swc1	$f2,336($sp)
    # Line 883
    lwc1	$f1,852($s0)
    swc1	$f1,340($sp)
    # Line 884
    lwc1	$f0,856($s0)
    # Line 876
    li	$s1,1
    # Line 884
    swc1	$f0,344($sp)
    # Line 886
    # lw $t9, -28576($gp) # &__glInitUnpacker
.L0db20e04:
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 887
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 892
    addiu	$a1,$sp,0
    # lw $t9, -28848($gp) # &__glClipReadPixels
    move	$a0,$s0
    # Line 890
    sw	$zero,432($sp)
    # Line 892
    jal	__glClipReadPixels
    # Line 889
    sb	$s1,427($sp)
    # Line 892
    ld	$s7,512($sp)
    bnez	$v0,.L0db20e58
    ld	$s1,528($sp)
    ld	$ra,520($sp)
    ld	$gp,504($sp)
    ld	$s0,536($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db20e58:
    # Line 893
    lw	$t9,12636($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$gp,504($sp)
    # Line 895
    ld	$s0,536($sp)
    ld	$ra,520($sp)
    ld	$s1,528($sp)
    ld	$s7,512($sp)
    jr	$ra
    addiu	$sp,$sp,608
.end __glSlowPickCopyConvolutionFilter2D

# Function: __glSep2dZoomDrawPixels
# Declared: Line 902 (Source lines: 903-1021)
# Address: 0x0db20e84 - 0x0db21380 (Size: 1276 bytes, Frame: 0)
.globl __glSep2dZoomDrawPixels
.ent __glSep2dZoomDrawPixels
__glSep2dZoomDrawPixels:
    # Line 903
    move	$a3,$s8
    lui	$at,0x1
    ori	$at,$at,0x90e0
    subu	$sp,$sp,$at
    sd	$a3,152($sp)
    sdc1	$f28,8($sp)
    sdc1	$f30,16($sp)
    sd	$ra,144($sp)
    addu	$s8,$sp,$at
    # Line 924
    addiu	$at,$s8,-4112
    # Line 903
    lui	$a2,0xe
    addiu	$a2,$a2,-10220
    sd	$gp,160($sp)
    addu	$gp,$t9,$a2
    sd	$s6,128($sp)
    move	$s6,$a0
    # Line 911
    lw	$v1,30700($s6)
    sd	$s0,136($sp)
    # Line 903
    move	$s0,$a1
    # Line 921
    lw	$v0,436($s0)
    # Line 925
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    sd	$v1,40($sp)
    sd	$v0,56($sp)
    # Line 923
    lw	$v0,52($v0)
    # Line 924
    sw	$at,312($s0)
    # Line 925
    jal	__glComputeSpanPixelArray
    sd	$v0,64($sp)
    # Line 930
    lwc1	$f28,200($s0)
    # Line 929
    lwc1	$f30,164($s0)
    # Line 933
    ld	$v1,56($sp)
    ld	$v0,64($sp)
    # Line 927
    lw	$a5,412($s0)
    # Line 933
    lw	$v1,64($v1)
    # Line 931
    lw	$at,12($s0)
    sd	$a5,72($sp)
    # Line 926
    lw	$a5,360($s0)
    sd	$at,176($sp)
    # Line 932
    lw	$at,172($s0)
    # Line 933
    sw	$v1,256($s0)
    sd	$a5,192($sp)
    slt	$a5,$at,$v0
    # Line 932
    subu	$at,$at,$v0
    addiu	$at,$at,1
    # Line 933
    bnez	$a5,.L0db21358
    sd	$at,168($sp)
    ld	$v1,56($sp)
    sd	$s4,120($sp)
    # Line 942
    lw	$s4,48($v1)
    lw	$a5,12($v1)
    mult	$a5,$s4
    sd	$s1,104($sp)
    sd	$s2,80($sp)
    sd	$s3,88($sp)
    sd	$s7,96($sp)
    sd	$s5,112($sp)
    # Line 944
    move	$s5,$zero
    sd	$zero,184($sp)
    # Line 946
    ld	$v0,168($sp)
    # Line 944
    li	$s4,1
    # Line 942
    lw	$v1,64($v1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$v1,$v1,$a5
    # Line 946
    blez	$v0,.L0db212f0
    sd	$v1,48($sp)
    sd	$s2,80($sp)
    sd	$s3,88($sp)
    sd	$s7,96($sp)
    lui	$s1,0xffff
    addu	$s1,$s1,$s8
    b	.L0db20fd8
    addiu	$s1,$s1,-4112
.L0db20fa4:
    # Line 1012
    lw	$a2,12($s0)
.L0db20fa8:
    # Line 1015
    mov.s	$f28,$f4
.L0db20fac:
    # Line 1016
    addu	$v1,$a0,$a2
    # Line 946
    ld	$at,184($sp)
    sd	$v1,176($sp)
    ld	$v0,168($sp)
    addiu	$at,$at,1
    sd	$at,184($sp)
    slt	$at,$at,$v0
    # Line 1019
    ld	$v0,40($sp)
    # Line 1016
    sw	$v1,12($s0)
    # Line 946
    beqz	$at,.L0db212f0
    # Line 1019
    sw	$v0,30700($s6)
.L0db20fd8:
    # Line 947
    ld	$a5,56($sp)
    ld	$at,64($sp)
    lw	$a5,12($a5)
    mult	$a5,$at
    mflo	$v1
    blez	$v1,.L0db21164
    sd	$zero,32($sp)
    b	.L0db210ac
    lw	$a2,12($s0)
.L0db20ffc:
    # Line 957
    addu	$s7,$s7,$s1
.L0db21000:
    ld	$at,32($sp)
    beqz	$at,.L0db212c0
    # Line 965
    move	$a0,$s6
.L0db2100c:
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    move	$a3,$s7
.L0db21028:
    # Line 975
    move	$a0,$s6
    move	$a1,$s0
    move	$a3,$s7
    lui	$a4,0xfffe
    addu	$a4,$a4,$s8
    addiu	$a4,$a4,28656
    ld	$a2,32($sp)
    lw	$t9,420($s0)
    ld	$a5,48($sp)
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a2,$a2,$a5
    ld	$a0,32($sp)
    # Line 981
    lw	$a2,16($s0)
    # Line 947
    ld	$at,56($sp)
    # Line 981
    lw	$a5,12($s0)
    addu	$a2,$a2,$a5
    sw	$a2,12($s0)
    # Line 983
    lw	$v0,4556($s6)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,200($s0)
    add.s	$f0,$f0,$f1
    swc1	$f0,200($s0)
    # Line 947
    ld	$v0,64($sp)
    lw	$at,12($at)
    mult	$at,$v0
    addu	$a0,$at,$a0
    mflo	$a5
    slt	$a5,$a0,$a5
    beqz	$a5,.L0db21164
    sd	$a0,32($sp)
.L0db210ac:
    # Line 950
    move	$a0,$s6
    move	$a1,$s0
    ld	$t9,192($sp)
    sll	$s2,$s4,0xf
    addu	$s2,$s2,$s1
    jalr	$t9
    move	$a3,$s2
    lw	$at,260($s0)
    # Line 957
    li	$s3,1
    # Line 950
    beqz	$at,.L0db21144
    ld	$v1,40($sp)
    # Line 954
    sw	$v1,30700($s6)
    # Line 957
    lw	$v0,260($s0)
    slti	$v0,$v0,2
    bnez	$v0,.L0db20ffc
    sll	$s7,$s5,0xf
    addiu	$s2,$s0,4
    # Line 959
    move	$a1,$s0
.L0db210f4:
    move	$a0,$s6
    # Line 957
    addiu	$s2,$s2,4
    # Line 959
    lw	$t9,356($s2)
    # Line 958
    move	$a3,$s5
    move	$s5,$s4
    move	$s4,$a3
    # Line 959
    sll	$a3,$a3,0xf
    sll	$s7,$s5,0xf
    addu	$s7,$s7,$s1
    addu	$a3,$a3,$s1
    sd	$a3,24($sp)
    jalr	$t9
    move	$a2,$s7
    # Line 957
    lw	$a5,260($s0)
    addiu	$s3,$s3,1
    slt	$a5,$s3,$a5
    bnez	$a5,.L0db210f4
    # Line 959
    move	$a1,$s0
    # Line 957
    b	.L0db21000
    ld	$s2,24($sp)
.L0db21144:
    ld	$at,32($sp)
    # Line 965
    beqz	$at,.L0db21330
    # Line 973
    move	$at,$s5
.L0db21150:
    move	$s5,$s4
    move	$s4,$at
    sll	$s7,$s5,0xf
    b	.L0db21028
    addu	$s7,$s7,$s1
.L0db21164:
    # Line 986
    lw	$v0,264($s0)
    lw	$a6,260($s0)
    # Line 985
    swc1	$f28,200($s0)
    # Line 986
    ld	$v1,176($sp)
    slt	$v0,$a6,$v0
    beqz	$v0,.L0db2122c
    sw	$v1,12($s0)
    # Line 991
    move	$a1,$s0
    move	$a0,$s6
    lui	$a2,0xfffe
    sll	$s7,$s4,0xf
    addu	$s7,$s7,$s1
    addiu	$s3,$a6,2
    sll	$s2,$s3,0x2
    addu	$s2,$s2,$s0
    lw	$t9,356($s2)
    addu	$a2,$a2,$s8
    addiu	$a2,$a2,28656
    jalr	$t9
    move	$a3,$s7
    lw	$a5,264($s0)
    slt	$a5,$a5,$s3
    bnez	$a5,.L0db21214
    # Line 1000
    ld	$t9,72($sp)
    # Line 996
    move	$a0,$s6
.L0db211c8:
    move	$a1,$s0
    # Line 994
    addiu	$s2,$s2,4
    # Line 995
    move	$a3,$s5
    move	$s5,$s4
    # Line 996
    sll	$a2,$s5,0xf
    # Line 995
    move	$s4,$a3
    # Line 996
    lw	$t9,356($s2)
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s1
    jalr	$t9
    addu	$a2,$a2,$s1
    # Line 994
    lw	$a5,264($s0)
    addiu	$s3,$s3,1
    slt	$a5,$a5,$s3
    beqz	$a5,.L0db211c8
    # Line 996
    move	$a0,$s6
    # Line 994
    sll	$s7,$s4,0xf
    addu	$s7,$s7,$s1
    # Line 1000
    ld	$t9,72($sp)
.L0db21214:
    move	$a0,$s6
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s7
    b	.L0db21248
    nop
.L0db2122c:
    # Line 1002
    move	$a0,$s6
    move	$a1,$s0
    ld	$t9,72($sp)
    lui	$a2,0xfffe
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
.L0db21248:
    # Line 1006
    add.s	$f4,$f30,$f28
    trunc.w.s	$f3,$f4
    trunc.w.s	$f2,$f28
    mfc1	$a5,$f3
    mfc1	$a1,$f2
    nop
    bnel	$a5,$a1,.L0db20fa4
    # Line 1012
    lw	$a0,16($s0)
    # Line 1006
    lw	$a6,172($s0)
    ld	$at,184($sp)
    slt	$at,$at,$a6
    beqzl	$at,.L0db212e8
    # Line 1012
    lw	$a0,16($s0)
    # Line 1008
    lw	$a0,16($s0)
    lw	$a2,12($s0)
    # Line 1011
    add.s	$f4,$f30,$f4
.L0db21288:
    # Line 1012
    trunc.w.s	$f0,$f4
    # Line 1009
    addu	$a2,$a0,$a2
    # Line 1012
    ld	$v1,184($sp)
    mfc1	$v0,$f0
    # Line 1009
    sw	$a2,12($s0)
    # Line 1012
    addiu	$v1,$v1,1
    bne	$v0,$a1,.L0db20fa8
    sd	$v1,184($sp)
    ld	$a5,184($sp)
    slt	$a5,$a5,$a6
    bnezl	$a5,.L0db21288
    # Line 1011
    add.s	$f4,$f30,$f4
    b	.L0db20fac
    # Line 1015
    mov.s	$f28,$f4
.L0db212c0:
    # Line 964
    move	$a0,$s6
    move	$a1,$s0
    move	$a2,$s2
    lw	$t9,416($s0)
    lui	$a3,0xfffe
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0db2100c
    # Line 965
    move	$a0,$s6
.L0db212e8:
    b	.L0db20fa8
    # Line 1012
    lw	$a2,12($s0)
.L0db212f0:
    ld	$gp,160($sp)
    # Line 1021
    ld	$s0,136($sp)
    ld	$s1,104($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    ld	$s4,120($sp)
    ld	$s5,112($sp)
    ld	$s6,128($sp)
    ld	$s7,96($sp)
    ldc1	$f28,8($sp)
    ldc1	$f30,16($sp)
    ld	$ra,144($sp)
    ld	$a5,152($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.L0db21330:
    # Line 971
    move	$a0,$s6
    move	$a1,$s0
    lw	$a2,12($s0)
    lw	$t9,416($s0)
    lui	$a3,0xfffe
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0db21150
    # Line 973
    move	$at,$s5
.L0db21358:
    ld	$gp,160($sp)
    # Line 940
    ld	$s0,136($sp)
    ld	$s6,128($sp)
    ldc1	$f28,8($sp)
    ldc1	$f30,16($sp)
    ld	$ra,144($sp)
    ld	$a5,152($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.end __glSep2dZoomDrawPixels

# Function: __glConv2dDrawPixels
# Declared: Line 1029 (Source lines: 1030-1136)
# Address: 0x0db21380 - 0x0db21814 (Size: 1172 bytes, Frame: 0)
.globl __glConv2dDrawPixels
.ent __glConv2dDrawPixels
__glConv2dDrawPixels:
    # Line 1030
    move	$a6,$s8
    lui	$at,0x1
    ori	$at,$at,0x90e0
    subu	$sp,$sp,$at
    sd	$a6,144($sp)
    sd	$s4,88($sp)
    sd	$s6,96($sp)
    sdc1	$f28,16($sp)
    sdc1	$f30,24($sp)
    sd	$ra,136($sp)
    sd	$s0,128($sp)
    # Line 1049
    lw	$v1,436($a1)
    # Line 1030
    move	$s0,$a1
    addu	$s8,$sp,$at
    # Line 1052
    lw	$a5,48($v1)
    lw	$a4,12($v1)
    # Line 1053
    addiu	$at,$s8,-4112
    sd	$v1,104($sp)
    # Line 1052
    mult	$a4,$a5
    # Line 1051
    lw	$v1,52($v1)
    sd	$s5,152($sp)
    # Line 1030
    move	$s5,$a0
    # Line 1038
    lw	$a3,30700($s5)
    # Line 1053
    sw	$at,312($s0)
    # Line 1030
    lui	$a2,0xe
    addiu	$a2,$a2,-11496
    sd	$v1,48($sp)
    sd	$gp,120($sp)
    addu	$gp,$t9,$a2
    # Line 1054
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    sd	$a3,184($sp)
    # Line 1052
    mflo	$v0
    # Line 1054
    jal	__glComputeSpanPixelArray
    sd	$v0,32($sp)
    sd	$s1,56($sp)
    sd	$s2,64($sp)
    sd	$s7,72($sp)
    sd	$s3,80($sp)
    # Line 1063
    li	$s4,1
    move	$s6,$zero
    # Line 1059
    lwc1	$f28,200($s0)
    # Line 1058
    lwc1	$f30,164($s0)
    sd	$zero,176($sp)
    # Line 1055
    lw	$v1,360($s0)
    # Line 1061
    lw	$at,12($s0)
    # Line 1056
    lw	$a4,412($s0)
    # Line 1060
    ld	$v0,48($sp)
    sd	$at,168($sp)
    lw	$at,172($s0)
    sd	$a4,40($sp)
    sd	$v1,200($sp)
    subu	$at,$at,$v0
    addiu	$at,$at,1
    # Line 1065
    blez	$at,.L0db217d4
    sd	$at,160($sp)
    sd	$s2,64($sp)
    sd	$s7,72($sp)
    lw	$s3,8($sp)
    lui	$s1,0xffff
    ld	$at,32($sp)
    addu	$s1,$s1,$s8
    addiu	$s1,$s1,-4112
    sll	$at,$at,0x2
    b	.L0db214b8
    sd	$at,192($sp)
.L0db21484:
    # Line 1127
    lw	$a0,12($s0)
.L0db21488:
    # Line 1132
    mov.s	$f28,$f4
.L0db2148c:
    # Line 1130
    addu	$a4,$a1,$a0
    # Line 1065
    ld	$v0,176($sp)
    sd	$a4,168($sp)
    ld	$v1,160($sp)
    addiu	$v0,$v0,1
    sd	$v0,176($sp)
    slt	$v0,$v0,$v1
    # Line 1134
    ld	$v1,184($sp)
    # Line 1130
    sw	$a4,12($s0)
    # Line 1065
    beqz	$v0,.L0db217d4
    # Line 1134
    sw	$v1,30700($s5)
.L0db214b8:
    ld	$s7,104($sp)
    # Line 1066
    lw	$s7,64($s7)
    # Line 1067
    ld	$a4,48($sp)
    # Line 1066
    sw	$s7,256($s0)
    # Line 1067
    blez	$a4,.L0db21660
    move	$s7,$zero
    b	.L0db2154c
    lw	$v0,260($s0)
.L0db214d8:
    # Line 1083
    beqz	$s7,.L0db21638
    # Line 1090
    move	$a0,$s5
.L0db214e0:
    move	$a1,$s0
    lw	$a2,12($s0)
    ld	$t9,200($sp)
    lui	$a3,0xfffe
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    # Line 1091
    li	$s3,1
    # Line 1096
    ld	$v1,192($sp)
.L0db21504:
    # Line 1094
    lw	$at,12($s0)
    lw	$a4,16($s0)
    # Line 1096
    lw	$v0,256($s0)
    # Line 1094
    addu	$a4,$a4,$at
    # Line 1096
    addu	$v0,$v0,$v1
    sw	$v0,256($s0)
    # Line 1094
    sw	$a4,12($s0)
    # Line 1097
    lw	$at,4556($s5)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,200($s0)
    # Line 1067
    ld	$a4,48($sp)
    # Line 1097
    add.s	$f0,$f0,$f1
    # Line 1067
    addiu	$s7,$s7,1
    beq	$a4,$s7,.L0db21660
    # Line 1097
    swc1	$f0,200($s0)
    # Line 1067
    lw	$v0,260($s0)
.L0db2154c:
    # Line 1072
    sll	$s2,$s4,0xf
    # Line 1067
    beqz	$v0,.L0db214d8
    # Line 1072
    addu	$s2,$s2,$s1
    move	$a1,$s0
    move	$a0,$s5
    # Line 1070
    ld	$t8,184($sp)
    # Line 1072
    ld	$t9,200($sp)
    move	$a3,$s2
    # Line 1070
    sw	$t8,30700($s5)
    # Line 1072
    jalr	$t9
    lw	$a2,12($s0)
    # Line 1073
    lw	$at,260($s0)
    slti	$at,$at,2
    bnez	$at,.L0db215d8
    li	$s3,1
    addiu	$s2,$s0,4
    # Line 1075
    move	$a1,$s0
.L0db21590:
    move	$a0,$s5
    # Line 1073
    addiu	$s2,$s2,4
    # Line 1074
    move	$a3,$s6
    move	$s6,$s4
    # Line 1075
    sll	$a2,$s6,0xf
    addu	$a2,$a2,$s1
    lw	$t9,356($s2)
    # Line 1074
    move	$s4,$a3
    # Line 1075
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s1
    jalr	$t9
    sd	$a3,112($sp)
    # Line 1073
    lw	$a4,260($s0)
    addiu	$s3,$s3,1
    slt	$a4,$s3,$a4
    bnez	$a4,.L0db21590
    # Line 1075
    move	$a1,$s0
    ld	$s2,112($sp)
.L0db215d8:
    # Line 1073
    beqz	$s7,.L0db21614
    # Line 1080
    move	$a0,$s5
    # Line 1083
    addiu	$s3,$s3,1
.L0db215e4:
    move	$a2,$s2
    move	$a1,$s0
    move	$a0,$s5
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    lui	$a3,0xfffe
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0db21504
    # Line 1096
    ld	$v1,192($sp)
.L0db21614:
    # Line 1080
    move	$a1,$s0
    move	$a2,$s2
    lw	$t9,416($s0)
    lui	$a3,0xfffe
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0db215e4
    # Line 1083
    addiu	$s3,$s3,1
.L0db21638:
    # Line 1088
    move	$a0,$s5
    move	$a1,$s0
    lw	$a2,12($s0)
    lw	$t9,416($s0)
    lui	$a3,0xfffe
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0db214e0
    # Line 1090
    move	$a0,$s5
.L0db21660:
    # Line 1101
    lw	$a0,264($s0)
    lw	$a4,260($s0)
    swc1	$f28,200($s0)
    # Line 1100
    ld	$at,168($sp)
    # Line 1101
    slt	$a4,$a4,$a0
    bnez	$a4,.L0db21794
    # Line 1100
    sw	$at,12($s0)
.L0db2167c:
    # Line 1105
    slt	$at,$a0,$s3
    bnezl	$at,.L0db216d8
    # Line 1108
    lw	$at,260($s0)
    # Line 1105
    sll	$s2,$s3,0x2
    addu	$s2,$s2,$s0
    # Line 1110
    move	$a0,$s5
.L0db21694:
    move	$a1,$s0
    # Line 1108
    addiu	$s2,$s2,4
    # Line 1109
    move	$a3,$s6
    move	$s6,$s4
    # Line 1110
    sll	$a2,$s6,0xf
    # Line 1109
    move	$s4,$a3
    # Line 1110
    lw	$t9,356($s2)
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s1
    jalr	$t9
    addu	$a2,$a2,$s1
    # Line 1108
    lw	$a0,264($s0)
    addiu	$s3,$s3,1
    slt	$a4,$a0,$s3
    beqzl	$a4,.L0db21694
    # Line 1110
    move	$a0,$s5
    # Line 1108
    lw	$at,260($s0)
.L0db216d8:
    bne	$at,$a0,.L0db21700
    # Line 1115
    move	$a0,$s5
    move	$a1,$s0
    ld	$t9,40($sp)
    lui	$a2,0xfffe
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
    b	.L0db21718
    nop
.L0db21700:
    # Line 1117
    move	$a0,$s5
    ld	$t9,40($sp)
    move	$a1,$s0
    sll	$a2,$s4,0xf
    jalr	$t9
    addu	$a2,$a2,$s1
.L0db21718:
    # Line 1120
    add.s	$f4,$f30,$f28
    trunc.w.s	$f3,$f4
    trunc.w.s	$f2,$f28
    mfc1	$a4,$f3
    mfc1	$a2,$f2
    nop
    bnel	$a4,$a2,.L0db21484
    # Line 1127
    lw	$a1,16($s0)
    # Line 1120
    lw	$a3,172($s0)
    ld	$at,176($sp)
    slt	$at,$at,$a3
    beqzl	$at,.L0db217cc
    # Line 1127
    lw	$a1,16($s0)
    # Line 1122
    lw	$a1,16($s0)
    lw	$a0,12($s0)
    # Line 1123
    swc1	$f4,200($s0)
.L0db21758:
    # Line 1126
    add.s	$f4,$f30,$f4
    # Line 1127
    trunc.w.s	$f0,$f4
    # Line 1124
    addu	$a0,$a1,$a0
    # Line 1127
    ld	$v1,176($sp)
    mfc1	$v0,$f0
    # Line 1124
    sw	$a0,12($s0)
    # Line 1127
    addiu	$v1,$v1,1
    bne	$v0,$a2,.L0db21488
    sd	$v1,176($sp)
    ld	$a4,176($sp)
    slt	$a4,$a4,$a3
    bnezl	$a4,.L0db21758
    # Line 1123
    swc1	$f4,200($s0)
    b	.L0db2148c
    # Line 1132
    mov.s	$f28,$f4
.L0db21794:
    # Line 1105
    move	$a1,$s0
    move	$a0,$s5
    sll	$a3,$s4,0xf
    addu	$a3,$a3,$s1
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    lui	$a2,0xfffe
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
    b	.L0db2167c
    lw	$a0,264($s0)
.L0db217cc:
    b	.L0db21488
    # Line 1127
    lw	$a0,12($s0)
.L0db217d4:
    ld	$gp,120($sp)
    # Line 1136
    ld	$s0,128($sp)
    ld	$s1,56($sp)
    ld	$s2,64($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    ld	$s5,152($sp)
    ld	$s6,96($sp)
    ld	$s7,72($sp)
    ldc1	$f28,16($sp)
    ldc1	$f30,24($sp)
    ld	$ra,136($sp)
    ld	$a4,144($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.end __glConv2dDrawPixels

# Function: __glSep2dDrawPixels
# Declared: Line 1143 (Source lines: 1144-1270)
# Address: 0x0db21814 - 0x0db21e14 (Size: 1536 bytes, Frame: 0)
.globl __glSep2dDrawPixels
.ent __glSep2dDrawPixels
__glSep2dDrawPixels:
    # Line 1144
    move	$a5,$s8
    lui	$at,0x1
    ori	$at,$at,0x10f0
    subu	$sp,$sp,$at
    sd	$a5,112($sp)
    sd	$ra,96($sp)
    sd	$s5,120($sp)
    sd	$s6,80($sp)
    sd	$s3,104($sp)
    # Line 1164
    lw	$s3,436($a1)
    sd	$s0,88($sp)
    # Line 1144
    move	$s0,$a1
    # Line 1166
    lw	$a4,48($s3)
    lw	$a3,12($s3)
    sd	$s1,128($sp)
    # Line 1144
    move	$s1,$a0
    # Line 1166
    mult	$a3,$a4
    # Line 1162
    lw	$s6,948($s1)
    # Line 1144
    addu	$s8,$sp,$at
    # Line 1167
    addiu	$at,$s8,-4112
    # Line 1144
    lui	$v1,0xe
    addiu	$v1,$v1,-12668
    # Line 1165
    lw	$s5,52($s3)
    # Line 1151
    lw	$a2,30700($s1)
    # Line 1167
    sw	$at,312($s0)
    sd	$gp,136($sp)
    # Line 1144
    addu	$gp,$t9,$v1
    # Line 1168
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    sd	$a2,24($sp)
    # Line 1166
    mflo	$v0
    # Line 1168
    jal	__glComputeSpanPixelArray
    sd	$v0,8($sp)
    sd	$zero,16($sp)
    # Line 1174
    addiu	$a0,$s5,-1
    move	$a5,$a0
    sd	$a0,168($sp)
    # Line 1170
    lw	$v0,412($s0)
    # Line 1175
    lw	$v1,64($s3)
    # Line 1169
    lw	$at,360($s0)
    sd	$v0,32($sp)
    # Line 1172
    lw	$v0,172($s0)
    # Line 1175
    sw	$v1,256($s0)
    sd	$at,40($sp)
    slt	$at,$v0,$s5
    # Line 1172
    subu	$v0,$v0,$s5
    addiu	$v0,$v0,1
    # Line 1175
    bnez	$at,.L0db21dd8
    sd	$v0,152($sp)
    sd	$s4,200($sp)
    sd	$s7,192($sp)
    # Line 1185
    move	$s7,$zero
    li	$a5,1
    slti	$v1,$s5,2
    bnez	$v1,.L0db21e04
    sd	$a5,56($sp)
    sd	$s2,208($sp)
    move	$v0,$s6
    sd	$s6,48($sp)
    sll	$at,$a0,0xf
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    addu	$at,$at,$s6
    sd	$at,144($sp)
    b	.L0db21980
    addiu	$s4,$s4,-4112
.L0db21918:
    # Line 1194
    addu	$s2,$s2,$s4
.L0db2191c:
    # Line 1200
    move	$a0,$s1
    lw	$t9,416($s0)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$a3,48($sp)
    # Line 1201
    ld	$t9,64($sp)
    move	$a0,$s1
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$a3,48($sp)
.L0db21958:
    # Line 1210
    lw	$a5,12($s0)
    # Line 1188
    ld	$at,48($sp)
    # Line 1210
    lw	$v1,16($s0)
    li	$v0,0x8000
    # Line 1188
    addu	$at,$v0,$at
    ld	$v0,144($sp)
    # Line 1210
    addu	$v1,$v1,$a5
    sd	$at,48($sp)
    # Line 1188
    beq	$at,$v0,.L0db21a64
    # Line 1210
    sw	$v1,12($s0)
.L0db21980:
    # Line 1185
    lw	$v1,260($s0)
    beqz	$v1,.L0db21a2c
    # Line 1193
    move	$a1,$s0
    move	$a0,$s1
    # Line 1191
    ld	$t8,24($sp)
    # Line 1193
    ld	$s2,56($sp)
    ld	$t9,40($sp)
    # Line 1191
    sw	$t8,30700($s1)
    # Line 1193
    sll	$s2,$s2,0xf
    addu	$s2,$s2,$s4
    lw	$a2,12($s0)
    jalr	$t9
    move	$a3,$s2
    # Line 1194
    lw	$at,260($s0)
    li	$v0,1
    slti	$at,$at,2
    bnez	$at,.L0db2191c
    sd	$v0,64($sp)
    addiu	$s2,$s0,4
    # Line 1196
    move	$a0,$s1
.L0db219d0:
    move	$a1,$s0
    # Line 1195
    move	$a3,$s7
    ld	$a4,56($sp)
    sd	$a3,56($sp)
    # Line 1196
    lw	$t9,360($s2)
    # Line 1195
    move	$s7,$a4
    move	$a4,$a3
    # Line 1196
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s4
    sll	$a2,$s7,0xf
    jalr	$t9
    addu	$a2,$a2,$s4
    # Line 1194
    addiu	$s2,$s2,4
    ld	$a5,64($sp)
    lw	$at,260($s0)
    addiu	$a5,$a5,1
    sd	$a5,64($sp)
    slt	$a5,$a5,$at
    bnez	$a5,.L0db219d0
    # Line 1196
    move	$a0,$s1
    ld	$s2,56($sp)
    b	.L0db21918
    # Line 1194
    sll	$s2,$s2,0xf
.L0db21a2c:
    # Line 1205
    move	$a0,$s1
    lw	$t9,416($s0)
    move	$a1,$s0
    ld	$a3,48($sp)
    jalr	$t9
    lw	$a2,12($s0)
    # Line 1207
    move	$a0,$s1
    ld	$t9,40($sp)
    move	$a1,$s0
    lw	$a2,12($s0)
    jalr	$t9
    ld	$a3,48($sp)
    b	.L0db21958
    nop
.L0db21a64:
    ld	$s2,208($sp)
.L0db21a68:
    # Line 1214
    lw	$v1,436($s0)
    ld	$a0,8($sp)
    lw	$v1,64($v1)
    # Line 1216
    ld	$v0,152($sp)
    # Line 1214
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    # Line 1216
    move	$a0,$zero
    blez	$v0,.L0db21d9c
    sd	$v1,184($sp)
    sd	$s2,208($sp)
    ld	$s2,56($sp)
    sd	$s3,176($sp)
    ld	$s3,56($sp)
    sll	$s2,$s2,0xf
    b	.L0db21cb4
    addu	$s2,$s2,$s4
.L0db21aa8:
    # Line 1228
    move	$a0,$s1
    lw	$t9,416($s0)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$a3,160($sp)
    sd	$s3,56($sp)
    # Line 1229
    ld	$t9,64($sp)
    sd	$s7,72($sp)
    ld	$a3,160($sp)
    addiu	$t9,$t9,1
    sd	$t9,64($sp)
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    move	$a2,$s2
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s1
    lui	$s4,0xffff
    ld	$s7,72($sp)
    ld	$s3,56($sp)
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-4112
.L0db21b08:
    sd	$s3,56($sp)
    sd	$s7,72($sp)
    # Line 1240
    move	$a0,$s1
    move	$a1,$s0
    ld	$a2,16($sp)
    lw	$t9,416($s0)
    move	$a3,$s2
    sll	$a2,$a2,0xf
    jalr	$t9
    addu	$a2,$a2,$s6
    # Line 1241
    move	$s3,$zero
    ld	$s7,64($sp)
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    blez	$s5,.L0db21bc0
    addiu	$s4,$s4,-4112
    ld	$s7,16($sp)
    move	$s4,$s7
    addu	$s7,$s5,$s7
    # Line 1242
    ld	$a3,176($sp)
.L0db21b58:
    lw	$a3,12($a3)
    mult	$a3,$s3
    mflo	$a2
    nop
    nop
    div	$zero,$s4,$s5
    move	$a0,$s1
    move	$a1,$s0
    move	$a4,$s2
    teq	$s5,$zero,0x7
    lw	$t9,420($s0)
    # Line 1241
    addiu	$s3,$s3,1
    # Line 1242
    ld	$a3,184($sp)
    # Line 1241
    addiu	$s4,$s4,1
    # Line 1242
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    mfhi	$a3
    sll	$a3,$a3,0xf
    jalr	$t9
    addu	$a3,$a3,$s6
    # Line 1241
    bne	$s4,$s7,.L0db21b58
    # Line 1242
    ld	$a3,176($sp)
    ld	$s7,64($sp)
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-4112
.L0db21bc0:
    # Line 1241
    lw	$at,264($s0)
    slt	$at,$at,$s7
    bnez	$at,.L0db21c2c
    ld	$s3,56($sp)
    sll	$s2,$s7,0x2
    addu	$s2,$s2,$s0
    # Line 1253
    move	$a0,$s1
.L0db21bdc:
    move	$a1,$s0
    # Line 1251
    addiu	$s2,$s2,4
    ld	$a2,72($sp)
    sd	$s3,72($sp)
    # Line 1253
    lw	$t9,356($s2)
    # Line 1252
    move	$a3,$a2
    move	$a2,$s3
    # Line 1253
    sll	$a2,$a2,0xf
    # Line 1252
    move	$s3,$a3
    # Line 1253
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s4
    jalr	$t9
    addu	$a2,$a2,$s4
    # Line 1251
    lw	$a5,264($s0)
    addiu	$s7,$s7,1
    slt	$a5,$a5,$s7
    beqz	$a5,.L0db21bdc
    # Line 1253
    move	$a0,$s1
    # Line 1251
    sll	$s2,$s3,0xf
    addu	$s2,$s2,$s4
.L0db21c2c:
    # Line 1257
    move	$a0,$s1
    ld	$t9,32($sp)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$s7,72($sp)
    ld	$v0,16($sp)
    # Line 1261
    addiu	$v1,$v0,1
    div	$zero,$v1,$s5
    mfhi	$v0
    sd	$v0,16($sp)
    # Line 1262
    ld	$v0,168($sp)
    addiu	$at,$v0,1
    div	$zero,$at,$s5
    # Line 1264
    lw	$a5,12($s0)
    lw	$a0,16($s0)
    addu	$a0,$a0,$a5
    sw	$a0,12($s0)
    # Line 1266
    lw	$v1,4556($s1)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    sd	$s3,56($sp)
    lwc1	$f0,200($s0)
    # Line 1262
    teq	$s5,$zero,0x7
    # Line 1216
    ld	$a0,216($sp)
    # Line 1266
    add.s	$f0,$f0,$f1
    # Line 1261
    teq	$s5,$zero,0x7
    # Line 1216
    addiu	$a0,$a0,1
    ld	$at,152($sp)
    # Line 1266
    swc1	$f0,200($s0)
    # Line 1262
    mfhi	$v0
    # Line 1216
    beq	$at,$a0,.L0db21d98
    sd	$v0,168($sp)
.L0db21cb4:
    ld	$v0,24($sp)
    # Line 1218
    ld	$at,168($sp)
    sd	$a0,216($sp)
    sw	$v0,30700($s1)
    sll	$at,$at,0xf
    lw	$a5,260($s0)
    addu	$at,$at,$s6
    sd	$at,160($sp)
    beqz	$a5,.L0db21d60
    lw	$a2,12($s0)
    # Line 1221
    ld	$t9,40($sp)
    move	$a0,$s1
    move	$a1,$s0
    jalr	$t9
    move	$a3,$s2
    # Line 1222
    lw	$v1,260($s0)
    li	$a5,1
    slti	$v1,$v1,2
    bnez	$v1,.L0db21aa8
    sd	$a5,64($sp)
    addiu	$s2,$s0,4
    # Line 1224
    move	$a0,$s1
.L0db21d0c:
    move	$a1,$s0
    # Line 1223
    move	$a3,$s7
    move	$s7,$s3
    # Line 1224
    sll	$a2,$s7,0xf
    # Line 1223
    move	$s3,$a3
    # Line 1224
    lw	$t9,360($s2)
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s4
    jalr	$t9
    addu	$a2,$a2,$s4
    # Line 1222
    addiu	$s2,$s2,4
    ld	$a5,64($sp)
    lw	$at,260($s0)
    addiu	$a5,$a5,1
    sd	$a5,64($sp)
    slt	$a5,$a5,$at
    bnez	$a5,.L0db21d0c
    # Line 1224
    move	$a0,$s1
    # Line 1222
    sll	$s2,$s3,0xf
    b	.L0db21aa8
    addu	$s2,$s2,$s4
.L0db21d60:
    # Line 1233
    lw	$t9,416($s0)
    move	$a0,$s1
    move	$a1,$s0
    jalr	$t9
    ld	$a3,160($sp)
    # Line 1235
    move	$a0,$s1
    ld	$t9,40($sp)
    move	$a1,$s0
    lw	$a2,12($s0)
    jalr	$t9
    ld	$a3,160($sp)
    # Line 1236
    li	$at,1
    b	.L0db21b08
    sd	$at,64($sp)
.L0db21d98:
    ld	$s2,208($sp)
.L0db21d9c:
    ld	$gp,136($sp)
    # Line 1270
    ld	$s0,88($sp)
    ld	$s3,104($sp)
    ld	$s4,200($sp)
    ld	$s5,120($sp)
    ld	$s6,80($sp)
    ld	$s7,192($sp)
    ld	$v1,24($sp)
    ld	$ra,96($sp)
    ld	$v0,112($sp)
    # Line 1269
    sw	$v1,30700($s1)
    # Line 1270
    ld	$s1,128($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L0db21dd8:
    ld	$gp,136($sp)
    # Line 1182
    ld	$s0,88($sp)
    ld	$s1,128($sp)
    ld	$s3,104($sp)
    ld	$s5,120($sp)
    ld	$s6,80($sp)
    ld	$ra,96($sp)
    ld	$a0,112($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0db21e04:
    # Line 1188
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    b	.L0db21a68
    addiu	$s4,$s4,-4112
.end __glSep2dDrawPixels

# Function: __glConv2dReadPixels
# Declared: Line 1276 (Source lines: 1277-1362)
# Address: 0x0db21e14 - 0x0db2219c (Size: 904 bytes, Frame: 0)
.globl __glConv2dReadPixels
.ent __glConv2dReadPixels
__glConv2dReadPixels:
    # Line 1277
    lui	$a4,0xe
    addiu	$a4,$a4,-14204
    lui	$v0,0x1
    ori	$v0,$v0,0x80d0
    subu	$sp,$sp,$v0
    sd	$s4,48($sp)
    sd	$s5,112($sp)
    sd	$s7,96($sp)
    sdc1	$f28,24($sp)
    sd	$ra,72($sp)
    # Line 1284
    lw	$a5,30700($a0)
    sd	$gp,80($sp)
    # Line 1277
    addu	$gp,$t9,$a4
    sd	$a5,32($sp)
    sdc1	$f30,16($sp)
    move	$at,$s8
    sd	$s0,56($sp)
    move	$s0,$a1
    # Line 1300
    lwc1	$f30,192($s0)
    # Line 1298
    lw	$a3,4556($a0)
    sd	$s1,120($sp)
    # Line 1292
    lw	$a1,436($a1)
    sd	$s2,104($sp)
    sd	$s3,88($sp)
    # Line 1295
    lw	$s3,48($a1)
    lw	$s2,12($a1)
    sd	$at,64($sp)
    # Line 1277
    addu	$s8,$sp,$v0
    # Line 1295
    mult	$s2,$s3
    sd	$a1,136($sp)
    # Line 1300
    lw	$v0,264($s0)
    lw	$at,260($s0)
    # Line 1296
    lw	$s1,356($s0)
    sd	$s6,40($sp)
    # Line 1277
    move	$s6,$a0
    # Line 1294
    lw	$a0,52($a1)
    # Line 1299
    lw	$v1,172($s0)
    sd	$s1,160($sp)
    sd	$a0,168($sp)
    subu	$v1,$v1,$a0
    addiu	$v1,$v1,1
    # Line 1295
    mflo	$a5
    # Line 1300
    bne	$at,$v0,.L0db21ed0
    sd	$v1,128($sp)
    # Line 1303
    lw	$v0,92($s0)
    b	.L0db21ee0
    sd	$v0,176($sp)
.L0db21ed0:
    lui	$v1,0xffff
    addu	$v1,$v1,$s8
    addiu	$v1,$v1,32752
    sd	$v1,176($sp)
.L0db21ee0:
    # Line 1309
    ld	$a4,128($sp)
    # Line 1307
    move	$s5,$zero
    li	$s4,1
    # Line 1309
    blez	$a4,.L0db22154
    sd	$zero,144($sp)
    lw	$s3,8($sp)
    sll	$at,$a5,0x2
    sd	$at,152($sp)
    lui	$s1,0xfffe
    addu	$s1,$s1,$s8
    mtc1	$a3,$f28
    addiu	$s1,$s1,32752
    b	.L0db21f5c
    cvt.s.w	$f28,$f28
.L0db21f18:
    # Line 1351
    move	$a0,$s6
    move	$a1,$s0
    sll	$a2,$s4,0xf
    jalr	$t9
    addu	$a2,$a2,$s1
    # Line 1309
    ld	$a4,128($sp)
.L0db21f30:
    # Line 1357
    lw	$v1,92($s0)
    lw	$v0,96($s0)
    # Line 1309
    ld	$at,144($sp)
    # Line 1359
    lwc1	$f30,192($s0)
    # Line 1357
    addu	$v0,$v0,$v1
    # Line 1309
    addiu	$at,$at,1
    # Line 1359
    add.s	$f30,$f30,$f28
    sd	$at,144($sp)
    # Line 1357
    sw	$v0,92($s0)
    # Line 1309
    beq	$a4,$at,.L0db22154
    # Line 1359
    swc1	$f30,192($s0)
.L0db21f5c:
    ld	$at,136($sp)
    # Line 1311
    ld	$a4,168($sp)
    # Line 1310
    lw	$at,64($at)
    sd	$zero,184($sp)
    # Line 1311
    blez	$a4,.L0db22078
    # Line 1310
    sw	$at,256($s0)
    # Line 1311
    sll	$s2,$s4,0xf
    b	.L0db21fd8
    addu	$s2,$s2,$s1
.L0db21f80:
    ld	$at,184($sp)
    # Line 1317
    beqz	$at,.L0db22054
    # Line 1325
    move	$a0,$s6
.L0db21f8c:
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$a3,176($sp)
    # Line 1311
    ld	$at,168($sp)
    # Line 1329
    ld	$a4,152($sp)
    lw	$v1,256($s0)
    # Line 1311
    ld	$v0,184($sp)
    # Line 1328
    lwc1	$f0,192($s0)
    # Line 1329
    addu	$v1,$v1,$a4
    # Line 1311
    addiu	$v0,$v0,1
    # Line 1328
    add.s	$f0,$f0,$f28
    sd	$v0,184($sp)
    # Line 1329
    sw	$v1,256($s0)
    # Line 1311
    beq	$at,$v0,.L0db22074
    # Line 1328
    swc1	$f0,192($s0)
.L0db21fd8:
    # Line 1312
    ld	$t9,160($sp)
    move	$a0,$s6
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    ld	$v0,32($sp)
    # Line 1315
    sw	$v0,30700($s6)
    # Line 1317
    lw	$at,260($s0)
    blez	$at,.L0db21f80
    move	$s3,$zero
    move	$s2,$s0
    # Line 1319
    move	$a1,$s0
.L0db22008:
    move	$a0,$s6
    # Line 1317
    addiu	$s2,$s2,4
    # Line 1318
    move	$s7,$s5
    move	$s5,$s4
    # Line 1319
    sll	$a2,$s5,0xf
    addu	$a2,$a2,$s1
    lw	$t9,356($s2)
    # Line 1318
    move	$s4,$s7
    # Line 1319
    sll	$s7,$s7,0xf
    addu	$s7,$s7,$s1
    jalr	$t9
    move	$a3,$s7
    # Line 1317
    lw	$a4,260($s0)
    addiu	$s3,$s3,1
    slt	$a4,$s3,$a4
    bnez	$a4,.L0db22008
    # Line 1319
    move	$a1,$s0
    b	.L0db21f80
    # Line 1317
    move	$s2,$s7
.L0db22054:
    # Line 1324
    move	$a0,$s6
    lw	$t9,416($s0)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$a3,176($sp)
    b	.L0db21f8c
    # Line 1325
    move	$a0,$s6
.L0db22074:
    # Line 1311
    addiu	$s3,$s3,1
.L0db22078:
    # Line 1331
    lw	$a0,264($s0)
    slt	$a1,$s3,$a0
    beqz	$a1,.L0db220c0
    swc1	$f30,192($s0)
    # Line 1334
    move	$a1,$s0
    move	$a0,$s6
    sll	$a3,$s4,0xf
    addu	$a3,$a3,$s1
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,32752
    lw	$a0,264($s0)
    slt	$a1,$s3,$a0
.L0db220c0:
    beqz	$a1,.L0db22110
    sll	$s2,$s3,0x2
    addu	$s2,$s2,$s0
    # Line 1340
    move	$a0,$s6
.L0db220d0:
    move	$a1,$s0
    # Line 1338
    addiu	$s2,$s2,4
    # Line 1339
    move	$a3,$s5
    move	$s5,$s4
    # Line 1340
    sll	$a2,$s5,0xf
    # Line 1339
    move	$s4,$a3
    # Line 1340
    lw	$t9,356($s2)
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s1
    jalr	$t9
    addu	$a2,$a2,$s1
    # Line 1338
    lw	$a0,264($s0)
    addiu	$s3,$s3,1
    slt	$a4,$s3,$a0
    bnezl	$a4,.L0db220d0
    # Line 1340
    move	$a0,$s6
.L0db22110:
    # Line 1338
    bne	$a0,$s3,.L0db21f30
    # Line 1309
    ld	$a4,128($sp)
    # Line 1338
    lw	$a3,92($s0)
    sll	$t9,$s3,0x2
    lw	$at,260($s0)
    addu	$t9,$t9,$s0
    addiu	$v0,$a0,-1
    bne	$at,$v0,.L0db21f18
    lw	$t9,360($t9)
    # Line 1346
    move	$a0,$s6
    move	$a1,$s0
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,32752
    b	.L0db21f30
    # Line 1309
    ld	$a4,128($sp)
.L0db22154:
    ld	$gp,80($sp)
    # Line 1362
    ld	$s1,120($sp)
    ld	$s2,104($sp)
    ld	$s3,88($sp)
    ld	$s4,48($sp)
    ld	$s5,112($sp)
    ld	$s7,96($sp)
    ldc1	$f28,24($sp)
    ldc1	$f30,16($sp)
    ld	$s0,32($sp)
    ld	$ra,72($sp)
    ld	$a4,64($sp)
    # Line 1361
    sw	$s0,30700($s6)
    # Line 1362
    ld	$s0,56($sp)
    ld	$s6,40($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.end __glConv2dReadPixels

# Function: __glSep2dReadPixels
# Declared: Line 1368 (Source lines: 1369-1480)
# Address: 0x0db2219c - 0x0db22744 (Size: 1448 bytes, Frame: 0)
.globl __glSep2dReadPixels
.ent __glSep2dReadPixels
__glSep2dReadPixels:
    # Line 1384
    lw	$a2,436($a1)
    # Line 1369
    lui	$v0,0x1
    ori	$v0,$v0,0x100
    subu	$sp,$sp,$v0
    sd	$zero,24($sp)
    sd	$s3,88($sp)
    # Line 1384
    move	$s3,$a2
    sd	$gp,104($sp)
    sd	$s5,120($sp)
    sd	$s0,80($sp)
    # Line 1369
    move	$s0,$a1
    # Line 1389
    lw	$a5,356($a1)
    # Line 1369
    lui	$a1,0xe
    addiu	$a1,$a1,-15108
    addu	$gp,$t9,$a1
    move	$at,$s8
    sd	$s1,128($sp)
    # Line 1388
    lw	$s1,48($a2)
    sd	$a5,64($sp)
    lw	$a5,12($a2)
    # Line 1369
    addu	$s8,$sp,$v0
    # Line 1395
    lw	$v0,64($a2)
    # Line 1388
    mult	$a5,$s1
    # Line 1369
    move	$s1,$a0
    # Line 1386
    lw	$s5,948($s1)
    sd	$s2,112($sp)
    # Line 1387
    lw	$s2,52($a2)
    # Line 1376
    lw	$a0,30700($a0)
    # Line 1391
    lw	$v1,4556($s1)
    # Line 1395
    sw	$v0,256($s0)
    # Line 1394
    addiu	$v0,$s2,-1
    sd	$at,96($sp)
    # Line 1392
    lw	$at,172($s0)
    sd	$v0,56($sp)
    sd	$a0,40($sp)
    subu	$at,$at,$s2
    addiu	$at,$at,1
    sd	$at,152($sp)
    # Line 1395
    slt	$at,$at,$s2
    sd	$v1,136($sp)
    # Line 1388
    mflo	$v1
    # Line 1395
    bnez	$at,.L0db2271c
    sd	$v1,16($sp)
    sd	$s6,200($sp)
    # Line 1405
    lw	$v1,264($s0)
    lw	$v0,260($s0)
    sd	$zero,72($sp)
    li	$a5,1
    bne	$v0,$v1,.L0db22280
    sd	$a5,32($sp)
    sd	$s7,208($sp)
    # Line 1410
    bgtz	$s2,.L0db22294
    # Line 1408
    lw	$s6,92($s0)
.L0db22270:
    # Line 1413
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    b	.L0db223ec
    addiu	$s7,$s7,-16
.L0db22280:
    sd	$s7,208($sp)
    # Line 1410
    lui	$s6,0xffff
    addu	$s6,$s6,$s8
    blez	$s2,.L0db22270
    addiu	$s6,$s6,32752
.L0db22294:
    sd	$ra,224($sp)
    move	$v0,$s5
    sd	$s5,176($sp)
    sd	$s4,216($sp)
    li	$s4,0x8000
    sdc1	$f30,232($sp)
    lui	$s7,0xffff
    sll	$at,$s2,0xf
    addu	$at,$at,$s5
    sd	$at,144($sp)
    ld	$at,136($sp)
    addu	$s7,$s7,$s8
    addiu	$s7,$s7,-16
    mtc1	$at,$f30
    addu	$s4,$s4,$s7
    b	.L0db22344
    cvt.s.w	$f30,$f30
.L0db222d8:
    sd	$a0,48($sp)
    # Line 1417
    sll	$s4,$s4,0xf
    addu	$s4,$s4,$s7
.L0db222e4:
    # Line 1423
    move	$a0,$s1
    lw	$t9,416($s0)
    move	$a1,$s0
    move	$a2,$s4
    jalr	$t9
    ld	$a3,176($sp)
    # Line 1424
    ld	$t9,48($sp)
    move	$a0,$s1
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    move	$a1,$s0
    move	$a2,$s4
    jalr	$t9
    ld	$a3,176($sp)
    li	$v1,0x8000
    # Line 1427
    lwc1	$f0,192($s0)
    # Line 1413
    ld	$at,176($sp)
    ld	$v0,144($sp)
    # Line 1427
    add.s	$f0,$f0,$f30
    # Line 1413
    addu	$at,$v1,$at
    sd	$at,176($sp)
    beq	$at,$v0,.L0db223d0
    # Line 1427
    swc1	$f0,192($s0)
.L0db22344:
    # Line 1414
    ld	$t9,64($sp)
    move	$a0,$s1
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s4
    ld	$at,40($sp)
    # Line 1416
    sw	$at,30700($s1)
    # Line 1417
    lw	$a5,260($s0)
    blez	$a5,.L0db222e4
    sd	$zero,48($sp)
    move	$s4,$s0
.L0db22370:
    # Line 1419
    move	$a0,$s1
    move	$a1,$s0
    # Line 1418
    ld	$a4,32($sp)
    ld	$a2,72($sp)
    # Line 1419
    lw	$t9,360($s4)
    sd	$a4,72($sp)
    # Line 1418
    move	$a3,$a2
    move	$a2,$a4
    # Line 1419
    sll	$a2,$a2,0xf
    # Line 1418
    move	$a4,$a3
    sd	$a3,32($sp)
    # Line 1419
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s7
    jalr	$t9
    addu	$a2,$a2,$s7
    # Line 1417
    addiu	$s4,$s4,4
    ld	$a0,48($sp)
    lw	$a5,260($s0)
    addiu	$a0,$a0,1
    slt	$a5,$a0,$a5
    bnez	$a5,.L0db22370
    sd	$a0,48($sp)
    b	.L0db222d8
    ld	$s4,32($sp)
.L0db223d0:
    # Line 1413
    lw	$a2,436($s0)
    ld	$s4,48($sp)
    ldc1	$f30,232($sp)
    ld	$ra,224($sp)
    addiu	$s4,$s4,1
    sw	$s4,8($sp)
    ld	$s4,216($sp)
.L0db223ec:
    sd	$zero,168($sp)
    # Line 1429
    ld	$a5,16($sp)
    # Line 1431
    ld	$at,152($sp)
    # Line 1429
    lw	$a0,64($a2)
    sll	$a5,$a5,0x2
    # Line 1431
    blez	$at,.L0db226e4
    # Line 1429
    addu	$a0,$a0,$a5
    sd	$a0,192($sp)
    sd	$ra,224($sp)
    sd	$s4,216($sp)
    sd	$s3,184($sp)
    ld	$at,136($sp)
    # Line 1431
    lw	$s3,8($sp)
    sdc1	$f30,232($sp)
    mtc1	$at,$f30
    sd	$s3,48($sp)
    b	.L0db22584
    cvt.s.w	$f30,$f30
.L0db22434:
    # Line 1443
    ld	$v0,48($sp)
    sll	$s4,$s3,0xf
    beq	$a0,$v0,.L0db226ac
    addu	$s4,$s4,$s7
    ld	$at,24($sp)
.L0db22448:
    # Line 1455
    addiu	$v0,$at,1
    div	$zero,$v0,$s2
    # Line 1456
    ld	$t8,56($sp)
    # Line 1455
    mfhi	$at
    nop
    # Line 1456
    addiu	$ra,$t8,1
    div	$zero,$ra,$s2
    teq	$s2,$zero,0x7
    sd	$s3,32($sp)
    # Line 1455
    teq	$s2,$zero,0x7
    # Line 1463
    move	$a0,$s1
    # Line 1459
    ld	$t9,40($sp)
    # Line 1463
    move	$a1,$s0
    move	$a2,$s4
    # Line 1459
    sw	$t9,30700($s1)
    # Line 1463
    ld	$t9,64($sp)
    sd	$at,24($sp)
    # Line 1456
    mfhi	$t8
    # Line 1463
    jalr	$t9
    sd	$t8,56($sp)
    # Line 1464
    lw	$v1,260($s0)
    blez	$v1,.L0db22508
    move	$s3,$zero
    move	$s4,$s0
    # Line 1466
    move	$a0,$s1
.L0db224ac:
    move	$a1,$s0
    # Line 1464
    addiu	$s4,$s4,4
    # Line 1465
    ld	$a4,32($sp)
    ld	$a2,72($sp)
    # Line 1466
    lw	$t9,356($s4)
    sd	$a4,72($sp)
    # Line 1465
    move	$a3,$a2
    move	$a2,$a4
    # Line 1466
    sll	$a2,$a2,0xf
    # Line 1465
    move	$a4,$a3
    sd	$a3,32($sp)
    # Line 1466
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s7
    jalr	$t9
    addu	$a2,$a2,$s7
    # Line 1464
    lw	$a5,260($s0)
    addiu	$s3,$s3,1
    slt	$a5,$s3,$a5
    bnez	$a5,.L0db224ac
    # Line 1466
    move	$a0,$s1
    ld	$s4,32($sp)
    # Line 1464
    sll	$s4,$s4,0xf
    addu	$s4,$s4,$s7
.L0db22508:
    # Line 1470
    move	$a2,$s4
    move	$a1,$s0
    ld	$a3,56($sp)
    move	$a0,$s1
    lw	$t9,416($s0)
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s5
    jalr	$t9
    sd	$a3,160($sp)
    # Line 1471
    addiu	$s3,$s3,1
    ld	$a3,160($sp)
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    move	$a2,$s4
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s1
    sd	$s3,48($sp)
    # Line 1431
    ld	$at,152($sp)
    # Line 1474
    lw	$a5,92($s0)
    lw	$v1,96($s0)
    # Line 1431
    ld	$v0,168($sp)
    # Line 1477
    lwc1	$f0,192($s0)
    # Line 1474
    addu	$v1,$v1,$a5
    # Line 1431
    addiu	$v0,$v0,1
    # Line 1477
    add.s	$f0,$f0,$f30
    sd	$v0,168($sp)
    # Line 1474
    sw	$v1,92($s0)
    # Line 1431
    beq	$at,$v0,.L0db226d8
    # Line 1477
    swc1	$f0,192($s0)
.L0db22584:
    sd	$s3,48($sp)
    sd	$zero,72($sp)
    # Line 1433
    move	$a3,$s6
    move	$a1,$s0
    move	$a0,$s1
    # Line 1432
    li	$a4,1
    # Line 1433
    ld	$a2,24($sp)
    lw	$t9,416($s0)
    sd	$a4,32($sp)
    sll	$a2,$a2,0xf
    jalr	$t9
    addu	$a2,$a2,$s5
    # Line 1434
    blez	$s2,.L0db22630
    move	$s3,$zero
    ld	$s7,24($sp)
    move	$s4,$s7
    addu	$s7,$s2,$s7
    # Line 1435
    ld	$a3,184($sp)
.L0db225cc:
    lw	$a3,12($a3)
    mult	$a3,$s3
    mflo	$a2
    nop
    nop
    div	$zero,$s4,$s2
    move	$a0,$s1
    move	$a1,$s0
    move	$a4,$s6
    teq	$s2,$zero,0x7
    lw	$t9,420($s0)
    # Line 1434
    addiu	$s3,$s3,1
    # Line 1435
    ld	$a3,192($sp)
    # Line 1434
    addiu	$s4,$s4,1
    # Line 1435
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    mfhi	$a3
    sll	$a3,$a3,0xf
    jalr	$t9
    addu	$a3,$a3,$s5
    # Line 1434
    bne	$s4,$s7,.L0db225cc
    # Line 1435
    ld	$a3,184($sp)
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    addiu	$s7,$s7,-16
.L0db22630:
    # Line 1434
    lw	$a0,264($s0)
    ld	$at,48($sp)
    slt	$at,$at,$a0
    beqz	$at,.L0db22434
    ld	$s3,32($sp)
    ld	$s4,48($sp)
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$s0
    # Line 1445
    move	$a0,$s1
.L0db22654:
    move	$a1,$s0
    ld	$a2,72($sp)
    sd	$s3,72($sp)
    lw	$t9,360($s4)
    # Line 1444
    move	$a3,$a2
    move	$a2,$s3
    # Line 1445
    sll	$a2,$a2,0xf
    # Line 1444
    move	$s3,$a3
    # Line 1445
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s7
    jalr	$t9
    addu	$a2,$a2,$s7
    # Line 1443
    addiu	$s4,$s4,4
    ld	$a5,48($sp)
    lw	$a0,264($s0)
    addiu	$a5,$a5,1
    sd	$a5,48($sp)
    slt	$a5,$a5,$a0
    bnezl	$a5,.L0db22654
    # Line 1445
    move	$a0,$s1
    b	.L0db22434
    nop
.L0db226ac:
    # Line 1450
    ld	$t9,48($sp)
    move	$a0,$s1
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    move	$a1,$s0
    move	$a2,$s4
    jalr	$t9
    lw	$a3,92($s0)
    b	.L0db22448
    ld	$at,24($sp)
.L0db226d8:
    ldc1	$f30,232($sp)
    ld	$s4,216($sp)
    ld	$ra,224($sp)
.L0db226e4:
    ld	$gp,104($sp)
    # Line 1480
    ld	$s0,80($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$s5,120($sp)
    ld	$s6,200($sp)
    ld	$v0,40($sp)
    ld	$s7,208($sp)
    ld	$at,96($sp)
    # Line 1479
    sw	$v0,30700($s1)
    # Line 1480
    ld	$s1,128($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db2271c:
    ld	$gp,104($sp)
    # Line 1403
    ld	$s0,80($sp)
    ld	$s1,128($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$s5,120($sp)
    ld	$v1,96($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glSep2dReadPixels

# Function: savePixelTransferState
# Declared: Line 1483 (Source lines: 1483-1550)
# Address: 0x0db22744 - 0x0db2291c (Size: 472 bytes, Frame: 32)
.ent savePixelTransferState
savePixelTransferState:
    # Line 1483
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 1487
    lw	$t9,4($s0)
    li	$a2,4
    sd	$ra,0($sp)
    jalr	$t9
    li	$a1,38
    # Line 1488
    lw	$a5,1696($s0)
    lui	$ra,0x3c00
    and	$a5,$a5,$ra
    sw	$a5,0($v0)
    ld	$ra,0($sp)
    # Line 1494
    lw	$a1,1700($s0)
    # Line 1492
    lw	$a2,1696($s0)
    nor	$a5,$a5,$zero
    # Line 1494
    andi	$a1,$a1,0x7
    # Line 1492
    and	$a2,$a2,$a5
    sw	$a2,1696($s0)
    # Line 1494
    sw	$a1,4($v0)
    # Line 1500
    addiu	$a5,$v0,12
    # Line 1498
    lw	$v1,1700($s0)
    nor	$a1,$a1,$zero
    # Line 1500
    lbu	$at,30697($s0)
    # Line 1498
    and	$v1,$v1,$a1
    sw	$v1,1700($s0)
    # Line 1500
    beqz	$at,.L0db22824
    sw	$at,-4($a5)
    # Line 1501
    lwc1	$f1,688($s0)
    swc1	$f1,0($a5)
    # Line 1502
    lwc1	$f0,692($s0)
    swc1	$f0,4($a5)
    # Line 1503
    lwc1	$f3,696($s0)
    swc1	$f3,8($a5)
    # Line 1504
    lwc1	$f2,700($s0)
    swc1	$f2,12($a5)
    # Line 1505
    lwc1	$f1,704($s0)
    swc1	$f1,16($a5)
    # Line 1506
    lwc1	$f0,708($s0)
    swc1	$f0,20($a5)
    # Line 1507
    lwc1	$f3,712($s0)
    swc1	$f3,24($a5)
    # Line 1508
    addiu	$a5,$a5,32
    lwc1	$f2,716($s0)
    # Line 1513
    mtc1	$zero,$f1
    # Line 1509
    lwc1	$f0,_lit_3f800000
    # Line 1508
    swc1	$f2,-4($a5)
    # Line 1517
    sb	$zero,30697($s0)
    # Line 1516
    swc1	$f1,716($s0)
    # Line 1515
    swc1	$f1,712($s0)
    # Line 1514
    swc1	$f1,708($s0)
    # Line 1513
    swc1	$f1,704($s0)
    # Line 1512
    swc1	$f0,700($s0)
    # Line 1511
    swc1	$f0,696($s0)
    # Line 1510
    swc1	$f0,692($s0)
    # Line 1509
    swc1	$f0,688($s0)
.L0db22824:
    # Line 1522
    move	$a4,$zero
    # Line 1519
    lw	$v1,30688($s0)
    # Line 1520
    addiu	$a5,$a5,4
    li	$a7,0x8421
    # Line 1519
    sw	$v1,-4($a5)
    # Line 1520
    beq	$v1,$a7,.L0db22874
    move	$at,$v1
    move	$a0,$a5
    # Line 1522
    li	$a6,16
    # Line 1521
    lw	$a3,29740($s0)
.L0db2284c:
    # Line 1523
    lwc1	$f3,0($a3)
    addiu	$a0,$a0,8
    swc1	$f3,-8($a0)
    addiu	$a3,$a3,8
    lwc1	$f2,-4($a3)
    # Line 1522
    addiu	$a4,$a4,2
    bne	$a6,$a4,.L0db2284c
    # Line 1523
    swc1	$f2,-4($a0)
    move	$a5,$a0
    # Line 1525
    sw	$a7,30688($s0)
.L0db22874:
    # Line 1527
    lbu	$a1,30576($s0)
    # Line 1549
    li	$v1,2
    # Line 1527
    beqz	$a1,.L0db22900
    sw	$a1,0($a5)
    # Line 1528
    lbu	$a2,736($s0)
    beqz	$a2,.L0db22894
    sw	$a2,4($a5)
    # Line 1529
    sb	$zero,736($s0)
.L0db22894:
    # Line 1531
    lwc1	$f1,616($s0)
    swc1	$f1,8($a5)
    # Line 1532
    lwc1	$f0,620($s0)
    swc1	$f0,12($a5)
    # Line 1533
    lwc1	$f3,624($s0)
    swc1	$f3,16($a5)
    # Line 1534
    lwc1	$f2,628($s0)
    swc1	$f2,20($a5)
    # Line 1535
    lwc1	$f1,636($s0)
    swc1	$f1,24($a5)
    # Line 1536
    lwc1	$f0,640($s0)
    swc1	$f0,28($a5)
    # Line 1537
    lwc1	$f3,644($s0)
    swc1	$f3,32($a5)
    # Line 1538
    lwc1	$f2,648($s0)
    # Line 1543
    mtc1	$zero,$f1
    # Line 1539
    lwc1	$f0,_lit_3f800000
    # Line 1538
    swc1	$f2,36($a5)
    # Line 1547
    sb	$zero,30576($s0)
    # Line 1546
    swc1	$f1,648($s0)
    # Line 1545
    swc1	$f1,644($s0)
    # Line 1544
    swc1	$f1,640($s0)
    # Line 1543
    swc1	$f1,636($s0)
    # Line 1542
    swc1	$f0,628($s0)
    # Line 1541
    swc1	$f0,624($s0)
    # Line 1540
    swc1	$f0,620($s0)
    # Line 1539
    swc1	$f0,616($s0)
.L0db22900:
    # Line 1549
    sw	$v1,__glBeginMode
    lw	$at,11828($s0)
    ori	$at,$at,0x1
    sw	$at,11828($s0)
    # Line 1550
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end savePixelTransferState

# Function: restorePixelTransferState
# Declared: Line 1554 (Source lines: 1554-1591)
# Address: 0x0db2291c - 0x0db22a64 (Size: 328 bytes, Frame: 32)
.ent restorePixelTransferState
restorePixelTransferState:
    # Line 1558
    lw	$a6,1696($a0)
    lw	$a2,0($a1)
    or	$a2,$a2,$a6
    sw	$a2,1696($a0)
    # Line 1559
    lw	$v1,1700($a0)
    lw	$v0,4($a1)
    or	$v0,$v0,$v1
    sw	$v0,1700($a0)
    # Line 1561
    lbu	$at,11($a1)
    # Line 1554
    addiu	$sp,$sp,-32
    # Line 1561
    addiu	$a6,$a1,12
    beqz	$at,.L0db22994
    sb	$at,30697($a0)
    # Line 1562
    lwc1	$f3,12($a1)
    swc1	$f3,688($a0)
    # Line 1563
    lwc1	$f2,16($a1)
    swc1	$f2,692($a0)
    # Line 1564
    lwc1	$f1,20($a1)
    swc1	$f1,696($a0)
    # Line 1565
    lwc1	$f0,24($a1)
    swc1	$f0,700($a0)
    # Line 1566
    lwc1	$f3,28($a1)
    swc1	$f3,704($a0)
    # Line 1567
    lwc1	$f2,32($a1)
    swc1	$f2,708($a0)
    # Line 1568
    lwc1	$f1,36($a1)
    swc1	$f1,712($a0)
    # Line 1569
    lwc1	$f0,40($a1)
    addiu	$a6,$a1,44
    swc1	$f0,716($a0)
.L0db22994:
    # Line 1571
    lw	$v1,0($a6)
    sw	$v1,30688($a0)
    # Line 1574
    li	$a7,16
    # Line 1572
    lw	$at,0($a6)
    # Line 1574
    move	$a4,$zero
    # Line 1572
    li	$v0,0x8421
    beq	$at,$v0,.L0db229e0
    addiu	$a6,$a6,4
    # Line 1573
    lw	$a5,29740($a0)
    move	$a3,$a6
.L0db229bc:
    # Line 1575
    lwc1	$f1,0($a3)
    addiu	$a5,$a5,8
    swc1	$f1,-8($a5)
    addiu	$a3,$a3,8
    lwc1	$f0,-4($a3)
    # Line 1574
    addiu	$a4,$a4,2
    bne	$a7,$a4,.L0db229bc
    # Line 1575
    swc1	$f0,-4($a5)
    move	$a6,$a3
.L0db229e0:
    # Line 1578
    lbu	$a2,3($a6)
    beqz	$a2,.L0db22a38
    sb	$a2,30576($a0)
    # Line 1579
    lw	$at,4($a6)
    sb	$at,736($a0)
    # Line 1580
    lwc1	$f1,8($a6)
    swc1	$f1,616($a0)
    # Line 1581
    lwc1	$f0,12($a6)
    swc1	$f0,620($a0)
    # Line 1582
    lwc1	$f3,16($a6)
    swc1	$f3,624($a0)
    # Line 1583
    lwc1	$f2,20($a6)
    swc1	$f2,628($a0)
    # Line 1584
    lwc1	$f1,24($a6)
    swc1	$f1,636($a0)
    # Line 1585
    lwc1	$f0,28($a6)
    swc1	$f0,640($a0)
    # Line 1586
    lwc1	$f3,32($a6)
    swc1	$f3,644($a0)
    # Line 1587
    lwc1	$f2,36($a6)
    sd	$ra,0($sp)
    swc1	$f2,648($a0)
.L0db22a38:
    # Line 1589
    li	$v1,2
    sw	$v1,__glBeginMode
    lw	$v0,11828($a0)
    # Line 1590
    lw	$t9,12($a0)
    sd	$ra,0($sp)
    # Line 1589
    ori	$v0,$v0,0x1
    # Line 1590
    jalr	$t9
    # Line 1589
    sw	$v0,11828($a0)
    ld	$ra,0($sp)
    # Line 1591
    jr	$ra
    addiu	$sp,$sp,32
.end restorePixelTransferState

# Function: __glConv2dCopyPixels
# Declared: Line 1598 (Source lines: 1599-1756)
# Address: 0x0db22a64 - 0x0db231e4 (Size: 1920 bytes, Frame: 0)
.globl __glConv2dCopyPixels
.ent __glConv2dCopyPixels
__glConv2dCopyPixels:
    # Line 1599
    lui	$v0,0xe
    addiu	$v0,$v0,-17356
    # Line 1608
    lw	$v1,30700($a0)
    # Line 1599
    move	$a5,$s8
    lui	$at,0x1
    ori	$at,$at,0x9160
    subu	$sp,$sp,$at
    sd	$a5,280($sp)
    sd	$ra,200($sp)
    sd	$s6,272($sp)
    move	$s6,$a0
    sd	$v1,184($sp)
    sd	$gp,288($sp)
    addu	$s8,$sp,$at
    sd	$s0,264($sp)
    move	$s0,$a1
    # Line 1618
    lbu	$at,224($s0)
    lw	$a1,436($a1)
    # Line 1599
    addu	$gp,$t9,$v0
    # Line 1618
    beqz	$at,.L0db22d9c
    sd	$a1,224($sp)
    sd	$s1,168($sp)
    # Line 1630
    lw	$s1,172($s0)
    sd	$s2,160($sp)
    # Line 1634
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 1631
    lw	$a0,80($s0)
    # Line 1629
    lw	$s2,168($s0)
    # Line 1634
    jal	__glElementsPerGroup
    sd	$a0,240($sp)
    mult	$s2,$s1
    mflo	$a2
    nop
    nop
    mult	$a2,$v0
    sd	$s3,176($sp)
    lw	$t9,0($s6)
    move	$a0,$s6
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0db231ac
    move	$s3,$v0
    # Line 1642
    lw	$v1,3372($s6)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,188($s0)
    sub.s	$f0,$f0,$f1
    lw	$at,3376($s6)
    trunc.w.s	$f0,$f0
    lwc1	$f4,192($s0)
    mtc1	$at,$f5
    lbu	$a5,4552($s6)
    mfc1	$a7,$f0
    cvt.s.w	$f5,$f5
    beqz	$a5,.L0db23194
    sd	$a7,248($sp)
    # Line 1644
    lw	$a7,3416($s6)
    mtc1	$a7,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f3,$f5,$f4
    lwc1	$f0,_lit_bf800000
    add.s	$f3,$f3,$f0
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    ld	$s0,240($sp)
    sd	$a5,256($sp)
.L0db22b78:
    # Line 1650
    li	$a1,36
    addiu	$a0,$s6,1072
    # lw $t9, -17868($gp) # &bzero
    # Line 1649
    lw	$ra,1104($s6)
    ld	$t8,1096($s6)
    addiu	$t1,$sp,8
    sw	$ra,32($t1)
    ld	$t3,1088($s6)
    sd	$t8,24($t1)
    ld	$t2,1080($s6)
    sd	$t3,16($t1)
    ld	$t0,1072($s6)
    sd	$t2,8($t1)
    # Line 1650
    jal	bzero
    # Line 1649
    sd	$t0,0($t1)
    # Line 1653
    move	$a6,$s3
    li	$a5,5126
    move	$a4,$s0
    move	$a3,$s1
    move	$a2,$s2
    ld	$a1,256($sp)
    # lw $t9, -29152($gp) # &__glim_ReadPixels
    ld	$a0,248($sp)
    # Line 1651
    li	$at,4
    # Line 1653
    jal	__glim_ReadPixels
    # Line 1651
    sw	$at,1088($s6)
    # Line 1655
    lw	$v0,1696($s6)
    lui	$a5,0x2000
    addiu	$v1,$sp,8
    lw	$at,32($v1)
    and	$a5,$v0,$a5
    ld	$a7,24($v1)
    sw	$at,1104($s6)
    ld	$at,16($v1)
    sd	$a7,1096($s6)
    ld	$a7,8($v1)
    sd	$at,1088($s6)
    ld	$v1,0($v1)
    sd	$a7,1080($s6)
    beqz	$a5,.L0db22c30
    sd	$v1,1072($s6)
    lbu	$a7,1276($s6)
    beqz	$a7,.L0db22c34
    # Line 1657
    lui	$v1,0x1000
    lbu	$at,1288($s6)
    bnez	$at,.L0db22c54
.L0db22c30:
    lui	$v1,0x1000
.L0db22c34:
    and	$v1,$v0,$v1
    beqz	$v1,.L0db22c94
    # Line 1666
    nop	# was lw $t9, -32700($gp) # &sub_0db20000
    # Line 1657
    lw	$a5,1160($s6)
    beqz	$a5,.L0db22c94
    # Line 1666
    nop	# was lw $t9, -32700($gp) # &sub_0db20000
    # Line 1657
    lbu	$a7,1192($s6)
    beqz	$a7,.L0db22c90
.L0db22c54:
    # Line 1663
    move	$a0,$s6
    lw	$t9,12($s6)
    move	$a1,$s3
    ld	$s1,168($sp)
    jal	sub_0db20000
    ld	$s2,160($sp)
    ld	$gp,288($sp)
    # Line 1664
    ld	$s0,264($sp)
    ld	$s3,176($sp)
    ld	$s6,272($sp)
    ld	$ra,200($sp)
    ld	$at,280($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db22c90:
    # Line 1666
    # lw $t9, -32700($gp) # &sub_0db20000
.L0db22c94:
    addiu	$t9,$t9,10052
    bal __glSep2dReadPixels
    move	$a0,$s6
    sd	$v0,136($sp)
    # Line 1668
    li	$a1,9
    move	$a0,$zero
    addiu	$a2,$sp,48
    addiu	$a3,$s6,1108
.L0db22cb4:
    addu	$at,$a0,$a3
    addu	$v1,$a0,$a2
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db22cb4
    sw	$at,0($v1)
    # Line 1669
    # lw $t9, -17868($gp) # &bzero
    li	$a1,36
    jal	bzero
    addiu	$a0,$s6,1108
    # Line 1675
    move	$a4,$s3
    # Line 1670
    sw	$s2,1112($s6)
    # Line 1674
    ld	$a0,224($sp)
    li	$a1,4
    # Line 1671
    sw	$a1,1124($s6)
    # Line 1675
    li	$a3,5126
    # Line 1674
    lw	$a1,52($a0)
    # Line 1673
    lw	$a0,48($a0)
    # Line 1675
    move	$a2,$s0
    # lw $t9, -29156($gp) # &__glim_DrawPixels
    # Line 1673
    subu	$a0,$s2,$a0
    # Line 1674
    subu	$a1,$s1,$a1
    addiu	$a1,$a1,1
    # Line 1675
    jal	__glim_DrawPixels
    # Line 1673
    addiu	$a0,$a0,1
    # Line 1677
    li	$a0,9
    move	$a1,$zero
    addiu	$a2,$s6,1108
    addiu	$a3,$sp,48
    ld	$v0,136($sp)
    ld	$s1,168($sp)
    ld	$s2,160($sp)
.L0db22d38:
    addu	$a5,$a1,$a3
    addu	$a7,$a1,$a2
    addiu	$a1,$a1,4
    lw	$a5,0($a5)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db22d38
    sw	$a5,0($a7)
    # Line 1678
    # lw $t9, -32700($gp) # &sub_0db20000
    move	$a0,$s6
    addiu	$t9,$t9,10524
    bal __glSep2dReadPixels
    move	$a1,$v0
    # Line 1681
    lw	$t9,12($s6)
    move	$a0,$s6
    jal	sub_0db20000
    move	$a1,$s3
    ld	$gp,288($sp)
    # Line 1682
    ld	$s0,264($sp)
    ld	$s3,176($sp)
    ld	$s6,272($sp)
    ld	$ra,200($sp)
    ld	$at,280($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db22d9c:
    ld	$a2,224($sp)
    # Line 1686
    lw	$a4,48($a2)
    lw	$a3,12($a2)
    mult	$a3,$a4
    sd	$s5,208($sp)
    sd	$s4,216($sp)
    sdc1	$f24,120($sp)
    # Line 1688
    move	$a1,$s0
    move	$a0,$s6
    # Line 1687
    addiu	$v0,$s8,-4112
    # Line 1685
    lw	$a2,52($a2)
    # Line 1688
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    # Line 1687
    sw	$v0,312($s0)
    sd	$a2,144($sp)
    # Line 1686
    mflo	$v1
    # Line 1688
    jal	__glComputeSpanPixelArray
    sd	$v1,128($sp)
    sd	$s1,168($sp)
    sd	$s2,160($sp)
    sd	$s7,192($sp)
    sd	$s3,176($sp)
    sdc1	$f30,96($sp)
    sdc1	$f22,104($sp)
    # Line 1699
    li	$s4,1
    move	$s5,$zero
    # Line 1696
    lwc1	$f24,200($s0)
    # Line 1693
    lw	$v0,4556($s6)
    sd	$zero,304($sp)
    # Line 1694
    lwc1	$f3,164($s0)
    # Line 1690
    lw	$at,356($s0)
    # Line 1691
    lw	$v1,412($s0)
    sdc1	$f3,112($sp)
    # Line 1697
    ld	$a7,144($sp)
    lw	$a5,172($s0)
    sd	$v1,152($sp)
    sd	$at,320($sp)
    subu	$a5,$a5,$a7
    addiu	$a5,$a5,1
    # Line 1700
    blez	$a5,.L0db23148
    sd	$a5,232($sp)
    sd	$s2,160($sp)
    sd	$s7,192($sp)
    sdc1	$f30,96($sp)
    lw	$s3,88($sp)
    lwc1	$f4,192($s0)
    lui	$s1,0xffff
    addu	$s1,$s1,$s8
    mtc1	$v0,$f22
    trunc.w.s	$f0,$f24
    ld	$at,128($sp)
    addiu	$s1,$s1,-4112
    cvt.s.w	$f22,$f22
    sll	$at,$at,0x2
    mfc1	$a5,$f0
    sd	$at,312($sp)
    b	.L0db22ea8
    sd	$a5,296($sp)
.L0db22e80:
    # Line 1748
    lwc1	$f4,192($s0)
.L0db22e84:
    # Line 1752
    swc1	$f24,200($s0)
.L0db22e88:
    # Line 1700
    ld	$v1,304($sp)
    # Line 1751
    add.s	$f4,$f4,$f22
    # Line 1700
    ld	$a5,232($sp)
    addiu	$v1,$v1,1
    sd	$v1,304($sp)
    slt	$v1,$v1,$a5
    beqz	$v1,.L0db23148
    # Line 1751
    swc1	$f4,192($s0)
.L0db22ea8:
    # Line 1702
    ld	$at,224($sp)
    # Line 1701
    mov.s	$f30,$f4
    # Line 1703
    ld	$a7,144($sp)
    # Line 1702
    lw	$at,64($at)
    sd	$zero,328($sp)
    # Line 1703
    blez	$a7,.L0db22fd8
    # Line 1702
    sw	$at,256($s0)
    # Line 1703
    sll	$s2,$s4,0xf
    b	.L0db22f30
    addu	$s2,$s2,$s1
.L0db22ed0:
    ld	$at,328($sp)
    # Line 1709
    beqz	$at,.L0db22fac
    # Line 1717
    move	$a0,$s6
.L0db22edc:
    move	$a1,$s0
    move	$a2,$s2
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    lui	$a3,0xfffe
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    # Line 1703
    ld	$a5,144($sp)
    # Line 1721
    ld	$v1,312($sp)
    lw	$at,256($s0)
    # Line 1703
    ld	$a7,328($sp)
    # Line 1720
    lwc1	$f1,192($s0)
    # Line 1721
    addu	$at,$at,$v1
    # Line 1703
    addiu	$a7,$a7,1
    # Line 1720
    add.s	$f1,$f1,$f22
    sd	$a7,328($sp)
    # Line 1721
    sw	$at,256($s0)
    # Line 1703
    beq	$a5,$a7,.L0db22fd4
    # Line 1720
    swc1	$f1,192($s0)
.L0db22f30:
    # Line 1704
    ld	$t9,320($sp)
    move	$a0,$s6
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    ld	$a7,184($sp)
    # Line 1707
    sw	$a7,30700($s6)
    # Line 1709
    lw	$a5,260($s0)
    blez	$a5,.L0db22ed0
    move	$s3,$zero
    move	$s2,$s0
    # Line 1711
    move	$a1,$s0
.L0db22f60:
    move	$a0,$s6
    # Line 1709
    addiu	$s2,$s2,4
    # Line 1710
    move	$s7,$s5
    move	$s5,$s4
    # Line 1711
    sll	$a2,$s5,0xf
    addu	$a2,$a2,$s1
    lw	$t9,356($s2)
    # Line 1710
    move	$s4,$s7
    # Line 1711
    sll	$s7,$s7,0xf
    addu	$s7,$s7,$s1
    jalr	$t9
    move	$a3,$s7
    # Line 1709
    lw	$a5,260($s0)
    addiu	$s3,$s3,1
    slt	$a5,$s3,$a5
    bnez	$a5,.L0db22f60
    # Line 1711
    move	$a1,$s0
    b	.L0db22ed0
    # Line 1709
    move	$s2,$s7
.L0db22fac:
    # Line 1716
    move	$a0,$s6
    move	$a1,$s0
    move	$a2,$s2
    lw	$t9,416($s0)
    lui	$a3,0xfffe
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0db22edc
    # Line 1717
    move	$a0,$s6
.L0db22fd4:
    # Line 1703
    addiu	$s3,$s3,1
.L0db22fd8:
    # Line 1723
    lw	$v0,264($s0)
    slt	$a5,$v0,$s3
    xori	$a5,$a5,0x1
    beqz	$a5,.L0db23078
    swc1	$f30,192($s0)
    # Line 1726
    move	$a1,$s0
    move	$a0,$s6
    sll	$a3,$s4,0xf
    addu	$a3,$a3,$s1
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    lui	$a2,0xfffe
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
    lw	$v0,264($s0)
    slt	$a5,$v0,$s3
    xori	$a5,$a5,0x1
    beqz	$a5,.L0db23078
    sll	$s2,$s3,0x2
    addu	$s2,$s2,$s0
    # Line 1732
    move	$a0,$s6
.L0db23038:
    move	$a1,$s0
    # Line 1730
    addiu	$s2,$s2,4
    # Line 1731
    move	$a3,$s5
    move	$s5,$s4
    # Line 1732
    sll	$a2,$s5,0xf
    # Line 1731
    move	$s4,$a3
    # Line 1732
    lw	$t9,356($s2)
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s1
    jalr	$t9
    addu	$a2,$a2,$s1
    # Line 1730
    lw	$v0,264($s0)
    addiu	$s3,$s3,1
    slt	$a5,$v0,$s3
    beqz	$a5,.L0db23038
    # Line 1732
    move	$a0,$s6
.L0db23078:
    # Line 1730
    lw	$a7,260($s0)
    bne	$a7,$v0,.L0db230a4
    # Line 1738
    move	$a0,$s6
    move	$a1,$s0
    ld	$t9,152($sp)
    lui	$a2,0xfffe
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
    b	.L0db230bc
    nop
.L0db230a4:
    # Line 1740
    move	$a0,$s6
    ld	$t9,152($sp)
    move	$a1,$s0
    sll	$a2,$s4,0xf
    jalr	$t9
    addu	$a2,$a2,$s1
.L0db230bc:
    # Line 1743
    ldc1	$f3,112($sp)
    add.s	$f24,$f3,$f24
    ld	$a5,296($sp)
    trunc.w.s	$f2,$f24
    # Line 1742
    move	$v0,$a5
    # Line 1743
    mfc1	$a5,$f2
    nop
    bne	$a5,$v0,.L0db22e80
    sd	$a5,296($sp)
    lw	$a0,172($s0)
    ld	$a7,304($sp)
    slt	$a7,$a7,$a0
    beqz	$a7,.L0db23140
    nop
    # Line 1744
    lwc1	$f4,192($s0)
    # Line 1747
    ldc1	$f1,112($sp)
.L0db230fc:
    # Line 1746
    swc1	$f24,200($s0)
    # Line 1747
    add.s	$f24,$f1,$f24
    # Line 1748
    trunc.w.s	$f0,$f24
    ld	$v1,304($sp)
    # Line 1745
    add.s	$f4,$f4,$f22
    # Line 1748
    addiu	$v1,$v1,1
    sd	$v1,304($sp)
    mfc1	$at,$f0
    # Line 1745
    swc1	$f4,192($s0)
    # Line 1748
    bne	$at,$v0,.L0db22e84
    sd	$at,296($sp)
    ld	$a5,304($sp)
    slt	$a5,$a5,$a0
    bnez	$a5,.L0db230fc
    # Line 1747
    ldc1	$f1,112($sp)
    b	.L0db22e88
    # Line 1752
    swc1	$f24,200($s0)
.L0db23140:
    b	.L0db22e84
    # Line 1748
    lwc1	$f4,192($s0)
.L0db23148:
    ld	$gp,288($sp)
    # Line 1756
    ld	$s1,168($sp)
    ld	$s2,160($sp)
    ld	$s3,176($sp)
    ld	$s4,216($sp)
    ld	$s5,208($sp)
    ld	$s7,192($sp)
    ldc1	$f22,104($sp)
    ldc1	$f24,120($sp)
    ldc1	$f30,96($sp)
    ld	$s0,184($sp)
    ld	$ra,200($sp)
    ld	$a7,280($sp)
    # Line 1755
    sw	$s0,30700($s6)
    # Line 1756
    ld	$s0,264($sp)
    ld	$s6,272($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a7
.L0db23194:
    # Line 1647
    sub.s	$f2,$f4,$f5
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    ld	$s0,240($sp)
    b	.L0db22b78
    sd	$at,256($sp)
.L0db231ac:
    # Line 1638
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$gp,288($sp)
    # Line 1639
    ld	$s0,264($sp)
    ld	$s1,168($sp)
    ld	$s2,160($sp)
    ld	$s3,176($sp)
    ld	$s6,272($sp)
    ld	$ra,200($sp)
    ld	$v0,280($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glConv2dCopyPixels

# Function: __glSep2dCopyPixels
# Declared: Line 1764 (Source lines: 1765-1947)
# Address: 0x0db231e4 - 0x0db23a94 (Size: 2224 bytes, Frame: 0)
.globl __glSep2dCopyPixels
.ent __glSep2dCopyPixels
__glSep2dCopyPixels:
    # Line 1765
    move	$a5,$s8
    lui	$v1,0xe
    addiu	$v1,$v1,-19276
    lui	$at,0x1
    ori	$at,$at,0x1190
    subu	$sp,$sp,$at
    sd	$a5,232($sp)
    sd	$s0,216($sp)
    move	$s0,$a1
    sd	$gp,240($sp)
    addu	$gp,$t9,$v1
    # Line 1784
    lw	$v0,172($a1)
    # Line 1765
    addu	$s8,$sp,$at
    sd	$s3,224($sp)
    # Line 1783
    lw	$s3,436($a1)
    sd	$s1,248($sp)
    sd	$s5,256($sp)
    # Line 1784
    lw	$s5,52($s3)
    # Line 1765
    move	$s1,$a0
    # Line 1773
    lw	$a0,30700($a0)
    # Line 1784
    slt	$at,$v0,$s5
    bnez	$at,.L0db2344c
    sd	$a0,192($sp)
    # Line 1798
    lbu	$a7,224($s0)
    bnezl	$a7,.L0db23274
    sd	$ra,336($sp)
    lw	$at,4556($s1)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,164($s0)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0db23574
    sd	$ra,336($sp)
    sd	$ra,336($sp)
.L0db23274:
    # Line 1812
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 1809
    lw	$a0,80($s0)
    # Line 1808
    move	$s5,$v0
    # Line 1807
    lw	$v0,168($s0)
    sd	$a0,160($sp)
    # Line 1812
    jal	__glElementsPerGroup
    sd	$v0,136($sp)
    ld	$a3,136($sp)
    mult	$a3,$s5
    mflo	$a2
    nop
    nop
    mult	$a2,$v0
    lw	$t9,0($s1)
    move	$a0,$s1
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0db23a54
    # Line 1816
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1820
    lw	$v1,3372($s1)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,188($s0)
    sub.s	$f0,$f0,$f1
    lw	$at,3376($s1)
    trunc.w.s	$f0,$f0
    lwc1	$f4,192($s0)
    mtc1	$at,$f5
    lbu	$a5,4552($s1)
    mfc1	$a7,$f0
    cvt.s.w	$f5,$f5
    beqz	$a5,.L0db23a38
    sd	$a7,144($sp)
    # Line 1822
    lw	$a7,3416($s1)
    mtc1	$a7,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f3,$f5,$f4
    lwc1	$f0,_lit_bf800000
    add.s	$f3,$f3,$f0
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a5,$f2
    sd	$v0,96($sp)
    ld	$s0,136($sp)
    sd	$a5,152($sp)
.L0db23334:
    # Line 1828
    li	$a1,36
    addiu	$a0,$s1,1072
    # lw $t9, -17868($gp) # &bzero
    # Line 1827
    lw	$ra,1104($s1)
    ld	$t8,1096($s1)
    addiu	$t1,$sp,8
    sw	$ra,32($t1)
    ld	$t3,1088($s1)
    sd	$t8,24($t1)
    ld	$t2,1080($s1)
    sd	$t3,16($t1)
    ld	$t0,1072($s1)
    sd	$t2,8($t1)
    # Line 1828
    jal	bzero
    # Line 1827
    sd	$t0,0($t1)
    ld	$a6,96($sp)
    # Line 1831
    li	$a5,5126
    ld	$a4,160($sp)
    move	$a3,$s5
    move	$a2,$s0
    ld	$a1,152($sp)
    # lw $t9, -29152($gp) # &__glim_ReadPixels
    ld	$a0,144($sp)
    # Line 1829
    li	$at,4
    # Line 1831
    jal	__glim_ReadPixels
    # Line 1829
    sw	$at,1088($s1)
    # Line 1833
    lw	$v0,1696($s1)
    lui	$a5,0x2000
    addiu	$v1,$sp,8
    lw	$at,32($v1)
    and	$a5,$v0,$a5
    ld	$a7,24($v1)
    sw	$at,1104($s1)
    ld	$at,16($v1)
    sd	$a7,1096($s1)
    ld	$a7,8($v1)
    sd	$at,1088($s1)
    ld	$v1,0($v1)
    sd	$a7,1080($s1)
    beqz	$a5,.L0db233ec
    sd	$v1,1072($s1)
    lbu	$a7,1276($s1)
    beqz	$a7,.L0db233f0
    # Line 1835
    lui	$v1,0x1000
    lbu	$at,1288($s1)
    bnez	$at,.L0db23414
.L0db233ec:
    lui	$v1,0x1000
.L0db233f0:
    and	$v1,$v0,$v1
    beqz	$v1,.L0db23474
    # Line 1844
    nop	# was lw $t9, -32700($gp) # &sub_0db20000
    # Line 1835
    lw	$a5,1160($s1)
    beqz	$a5,.L0db23474
    # Line 1844
    nop	# was lw $t9, -32700($gp) # &sub_0db20000
    # Line 1835
    lbu	$a7,1192($s1)
    beqz	$a7,.L0db23474
    # Line 1844
    nop	# was lw $t9, -32700($gp) # &sub_0db20000
.L0db23414:
    # Line 1841
    lw	$t9,12($s1)
    move	$a0,$s1
    jal	sub_0db20000
    ld	$a1,96($sp)
    ld	$gp,240($sp)
    # Line 1842
    ld	$s0,216($sp)
    ld	$s1,248($sp)
    ld	$s3,224($sp)
    ld	$s5,256($sp)
    ld	$ra,336($sp)
    ld	$at,232($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db2344c:
    ld	$gp,240($sp)
    # Line 1791
    ld	$s0,216($sp)
    ld	$s1,248($sp)
    ld	$s3,224($sp)
    ld	$s5,256($sp)
    ld	$v0,232($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
    # Line 1844
    # lw $t9, -32700($gp) # &sub_0db20000
.L0db23474:
    addiu	$t9,$t9,10052
    bal __glSep2dReadPixels
    move	$a0,$s1
    sd	$v0,112($sp)
    # Line 1846
    li	$a3,9
    move	$t0,$zero
    addiu	$t2,$sp,48
    addiu	$t1,$s1,1108
.L0db23494:
    addu	$at,$t0,$t1
    addu	$v1,$t0,$t2
    addiu	$t0,$t0,4
    lw	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0db23494
    sw	$at,0($v1)
    # Line 1847
    # lw $t9, -17868($gp) # &bzero
    li	$a1,36
    jal	bzero
    addiu	$a0,$s1,1108
    ld	$a4,96($sp)
    # Line 1853
    li	$a3,5126
    # Line 1848
    sw	$s0,1112($s1)
    li	$a2,4
    # Line 1849
    sw	$a2,1124($s1)
    # Line 1853
    ld	$a2,160($sp)
    # Line 1851
    lw	$a0,48($s3)
    # Line 1852
    lw	$a1,52($s3)
    # Line 1853
    # lw $t9, -29156($gp) # &__glim_DrawPixels
    # Line 1851
    subu	$a0,$s0,$a0
    # Line 1852
    subu	$a1,$s5,$a1
    addiu	$a1,$a1,1
    # Line 1853
    jal	__glim_DrawPixels
    # Line 1851
    addiu	$a0,$a0,1
    ld	$a2,112($sp)
    # Line 1855
    li	$a3,9
    move	$a0,$zero
    addiu	$t1,$s1,1108
    addiu	$t0,$sp,48
.L0db2350c:
    addu	$a5,$a0,$t0
    addu	$a7,$a0,$t1
    addiu	$a0,$a0,4
    lw	$a5,0($a5)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0db2350c
    sw	$a5,0($a7)
    # Line 1856
    # lw $t9, -32700($gp) # &sub_0db20000
    move	$a0,$s1
    addiu	$t9,$t9,10524
    bal __glSep2dReadPixels
    move	$a1,$a2
    # Line 1859
    lw	$t9,12($s1)
    move	$a0,$s1
    jal	sub_0db20000
    ld	$a1,96($sp)
    ld	$ra,336($sp)
    ld	$gp,240($sp)
    # Line 1860
    ld	$s0,216($sp)
    ld	$s1,248($sp)
    ld	$s3,224($sp)
    ld	$s5,256($sp)
    ld	$at,232($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db23574:
    # Line 1864
    lw	$a1,48($s3)
    lw	$a0,12($s3)
    mult	$a0,$a1
    sd	$s7,328($sp)
    sd	$s6,352($sp)
    # Line 1863
    lw	$s6,948($s1)
    # Line 1865
    addiu	$v0,$s8,-4112
    sw	$v0,312($s0)
    # Line 1866
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    move	$a1,$s0
    move	$a0,$s1
    # Line 1864
    mflo	$v1
    # Line 1866
    jal	__glComputeSpanPixelArray
    sd	$v1,104($sp)
    sd	$s4,344($sp)
    # Line 1878
    move	$s7,$zero
    sd	$zero,176($sp)
    # Line 1869
    lw	$v1,412($s0)
    # Line 1868
    lw	$at,356($s0)
    # Line 1871
    lw	$ra,4556($s1)
    sd	$v1,208($sp)
    sd	$at,200($sp)
    sd	$ra,128($sp)
    # Line 1878
    li	$a7,1
    sd	$a7,168($sp)
    # Line 1876
    lw	$a7,64($s3)
    # Line 1874
    addiu	$a5,$s5,-1
    sd	$a5,184($sp)
    # Line 1872
    lw	$a5,172($s0)
    ld	$ra,336($sp)
    # Line 1876
    sw	$a7,256($s0)
    # Line 1872
    subu	$a5,$a5,$s5
    addiu	$a5,$a5,1
    # Line 1878
    blez	$s5,.L0db23a84
    sd	$a5,272($sp)
    move	$v1,$s6
    sd	$s6,296($sp)
    sd	$s2,360($sp)
    li	$s2,0x8000
    sdc1	$f30,368($sp)
    lui	$s4,0xffff
    sll	$at,$s5,0xf
    addu	$at,$at,$s6
    sd	$at,264($sp)
    ld	$at,128($sp)
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-4112
    mtc1	$at,$f30
    addu	$s2,$s2,$s4
    b	.L0db236a4
    cvt.s.w	$f30,$f30
.L0db23640:
    # Line 1885
    addu	$s2,$s2,$s4
.L0db23644:
    # Line 1891
    move	$a0,$s1
    lw	$t9,416($s0)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$a3,296($sp)
    # Line 1892
    ld	$t9,120($sp)
    move	$a0,$s1
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$a3,296($sp)
    li	$a5,0x8000
    # Line 1896
    lwc1	$f0,192($s0)
    # Line 1879
    ld	$at,296($sp)
    ld	$v1,264($sp)
    # Line 1896
    add.s	$f0,$f0,$f30
    # Line 1879
    addu	$at,$a5,$at
    sd	$at,296($sp)
    beq	$at,$v1,.L0db23730
    # Line 1896
    swc1	$f0,192($s0)
.L0db236a4:
    # Line 1880
    ld	$t9,200($sp)
    move	$a0,$s1
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    ld	$at,192($sp)
    # Line 1883
    sw	$at,30700($s1)
    # Line 1885
    lw	$a7,260($s0)
    blez	$a7,.L0db23644
    sd	$zero,120($sp)
    move	$s2,$s0
    # Line 1887
    move	$a0,$s1
.L0db236d4:
    move	$a1,$s0
    # Line 1886
    move	$a3,$s7
    ld	$a4,168($sp)
    sd	$a3,168($sp)
    # Line 1887
    lw	$t9,360($s2)
    # Line 1886
    move	$s7,$a4
    move	$a4,$a3
    # Line 1887
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s4
    sll	$a2,$s7,0xf
    jalr	$t9
    addu	$a2,$a2,$s4
    # Line 1885
    addiu	$s2,$s2,4
    ld	$a5,120($sp)
    lw	$a7,260($s0)
    addiu	$a5,$a5,1
    sd	$a5,120($sp)
    slt	$a5,$a5,$a7
    bnez	$a5,.L0db236d4
    # Line 1887
    move	$a0,$s1
    ld	$s2,168($sp)
    b	.L0db23640
    # Line 1885
    sll	$s2,$s2,0xf
.L0db23730:
    ld	$s2,120($sp)
    ldc1	$f30,368($sp)
    ld	$ra,336($sp)
    # Line 1879
    addiu	$s2,$s2,1
    sw	$s2,88($sp)
    ld	$s2,360($sp)
.L0db23748:
    sd	$s7,304($sp)
    sd	$zero,288($sp)
    # Line 1900
    lw	$v0,436($s0)
    ld	$v1,104($sp)
    # Line 1902
    ld	$at,272($sp)
    # Line 1900
    lw	$v0,64($v0)
    sll	$v1,$v1,0x2
    # Line 1902
    blez	$at,.L0db23a00
    # Line 1900
    addu	$v0,$v0,$v1
    sd	$v0,320($sp)
    # Line 1902
    lw	$s7,88($sp)
    sdc1	$f30,368($sp)
    sd	$s3,312($sp)
    ld	$s3,128($sp)
    sd	$s2,360($sp)
    ld	$s2,168($sp)
    mtc1	$s3,$f30
    ld	$s3,168($sp)
    sll	$s2,$s2,0xf
    addu	$s2,$s2,$s4
    b	.L0db238e0
    cvt.s.w	$f30,$f30
.L0db237a0:
    # Line 1915
    addu	$s2,$s2,$s4
.L0db237a4:
    # Line 1921
    ld	$t9,208($sp)
    move	$a0,$s1
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s2
    ld	$at,176($sp)
    # Line 1925
    addiu	$v0,$at,1
    div	$zero,$v0,$s5
    # Line 1926
    ld	$t8,184($sp)
    # Line 1925
    mfhi	$at
    nop
    # Line 1926
    addiu	$ra,$t8,1
    div	$zero,$ra,$s5
    teq	$s5,$zero,0x7
    # Line 1925
    teq	$s5,$zero,0x7
    # Line 1931
    move	$a0,$s1
    # Line 1929
    ld	$t9,192($sp)
    # Line 1931
    move	$a1,$s0
    move	$a2,$s2
    # Line 1929
    sw	$t9,30700($s1)
    # Line 1931
    ld	$t9,200($sp)
    sd	$at,176($sp)
    # Line 1926
    mfhi	$t8
    # Line 1931
    jalr	$t9
    sd	$t8,184($sp)
    # Line 1932
    lw	$v1,260($s0)
    blez	$v1,.L0db2386c
    move	$s7,$zero
    move	$s2,$s0
    # Line 1934
    move	$a0,$s1
.L0db2381c:
    move	$a1,$s0
    # Line 1932
    addiu	$s2,$s2,4
    ld	$a2,304($sp)
    sd	$s3,304($sp)
    # Line 1934
    lw	$t9,356($s2)
    # Line 1933
    move	$a3,$a2
    move	$a2,$s3
    # Line 1934
    sll	$a2,$a2,0xf
    # Line 1933
    move	$s3,$a3
    # Line 1934
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s4
    jalr	$t9
    addu	$a2,$a2,$s4
    # Line 1932
    lw	$a5,260($s0)
    addiu	$s7,$s7,1
    slt	$a5,$s7,$a5
    bnez	$a5,.L0db2381c
    # Line 1934
    move	$a0,$s1
    # Line 1932
    sll	$s2,$s3,0xf
    addu	$s2,$s2,$s4
.L0db2386c:
    # Line 1938
    move	$a2,$s2
    move	$a1,$s0
    ld	$a3,184($sp)
    move	$a0,$s1
    lw	$t9,416($s0)
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s6
    jalr	$t9
    sd	$a3,280($sp)
    # Line 1939
    move	$a0,$s1
    sll	$t9,$s7,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$a3,280($sp)
    sd	$s3,168($sp)
    # Line 1944
    lwc1	$f1,200($s0)
    # Line 1902
    ld	$v1,288($sp)
    # Line 1943
    lwc1	$f0,192($s0)
    # Line 1944
    add.s	$f1,$f1,$f30
    # Line 1902
    ld	$at,272($sp)
    addiu	$v1,$v1,1
    # Line 1943
    add.s	$f0,$f0,$f30
    sd	$v1,288($sp)
    # Line 1944
    swc1	$f1,200($s0)
    # Line 1902
    beq	$at,$v1,.L0db239f4
    # Line 1943
    swc1	$f0,192($s0)
.L0db238e0:
    sd	$s3,168($sp)
    # Line 1903
    move	$a0,$s1
    move	$a1,$s0
    ld	$a2,176($sp)
    lw	$t9,416($s0)
    move	$a3,$s2
    sll	$a2,$a2,0xf
    jalr	$t9
    addu	$a2,$a2,$s6
    # Line 1904
    blez	$s5,.L0db23988
    move	$s3,$zero
    sd	$s7,120($sp)
    ld	$s7,176($sp)
    move	$s4,$s7
    addu	$s7,$s5,$s7
    # Line 1905
    ld	$a3,312($sp)
.L0db23920:
    lw	$a3,12($a3)
    mult	$a3,$s3
    mflo	$a2
    nop
    nop
    div	$zero,$s4,$s5
    move	$a0,$s1
    move	$a1,$s0
    move	$a4,$s2
    teq	$s5,$zero,0x7
    lw	$t9,420($s0)
    # Line 1904
    addiu	$s3,$s3,1
    # Line 1905
    ld	$a3,320($sp)
    # Line 1904
    addiu	$s4,$s4,1
    # Line 1905
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    mfhi	$a3
    sll	$a3,$a3,0xf
    jalr	$t9
    addu	$a3,$a3,$s6
    # Line 1904
    bne	$s4,$s7,.L0db23920
    # Line 1905
    ld	$a3,312($sp)
    ld	$s7,120($sp)
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-4112
.L0db23988:
    # Line 1904
    lw	$at,264($s0)
    slt	$at,$at,$s7
    bnez	$at,.L0db237a4
    ld	$s3,168($sp)
    sll	$s2,$s7,0x2
    addu	$s2,$s2,$s0
    # Line 1917
    move	$a0,$s1
.L0db239a4:
    move	$a1,$s0
    # Line 1915
    addiu	$s2,$s2,4
    ld	$a2,304($sp)
    sd	$s3,304($sp)
    # Line 1917
    lw	$t9,356($s2)
    # Line 1916
    move	$a3,$a2
    move	$a2,$s3
    # Line 1917
    sll	$a2,$a2,0xf
    # Line 1916
    move	$s3,$a3
    # Line 1917
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s4
    jalr	$t9
    addu	$a2,$a2,$s4
    # Line 1915
    lw	$a5,264($s0)
    addiu	$s7,$s7,1
    slt	$a5,$a5,$s7
    beqz	$a5,.L0db239a4
    # Line 1917
    move	$a0,$s1
    b	.L0db237a0
    # Line 1915
    sll	$s2,$s3,0xf
.L0db239f4:
    ldc1	$f30,368($sp)
    ld	$ra,336($sp)
    ld	$s2,360($sp)
.L0db23a00:
    ld	$gp,240($sp)
    # Line 1947
    ld	$s3,224($sp)
    ld	$s4,344($sp)
    ld	$s5,256($sp)
    ld	$s6,352($sp)
    ld	$s0,192($sp)
    ld	$s7,328($sp)
    ld	$a7,232($sp)
    # Line 1946
    sw	$s0,30700($s1)
    # Line 1947
    ld	$s0,216($sp)
    ld	$s1,248($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a7
.L0db23a38:
    # Line 1825
    sub.s	$f2,$f4,$f5
    trunc.w.s	$f2,$f2
    sd	$v0,96($sp)
    mfc1	$at,$f2
    ld	$s0,136($sp)
    b	.L0db23334
    sd	$at,152($sp)
.L0db23a54:
    # Line 1816
    jalr	$t9
    li	$a0,1285
    ld	$gp,240($sp)
    # Line 1817
    ld	$s0,216($sp)
    ld	$s1,248($sp)
    ld	$s3,224($sp)
    ld	$s5,256($sp)
    ld	$ra,336($sp)
    ld	$v0,232($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L0db23a84:
    # Line 1879
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    b	.L0db23748
    addiu	$s4,$s4,-4112
.end __glSep2dCopyPixels

# Function: __glConv2dCopyImage
# Declared: Line 1952 (Source lines: 1953-2047)
# Address: 0x0db23a94 - 0x0db23e90 (Size: 1020 bytes, Frame: 0)
.globl __glConv2dCopyImage
.ent __glConv2dCopyImage
__glConv2dCopyImage:
    # Line 1962
    lw	$a4,30700($a0)
    # Line 1953
    lui	$at,0x1
    ori	$at,$at,0x80d0
    subu	$sp,$sp,$at
    sd	$a4,168($sp)
    sd	$gp,120($sp)
    move	$a3,$s8
    sd	$a3,112($sp)
    lui	$a3,0xe
    addiu	$a3,$a3,-21500
    sd	$s0,104($sp)
    move	$s0,$a1
    # Line 1967
    lw	$a1,436($a1)
    # Line 1953
    addu	$gp,$t9,$a3
    addu	$s8,$sp,$at
    # Line 1970
    lw	$v1,48($a1)
    lw	$v0,12($a1)
    # Line 1973
    lw	$at,12($s0)
    sd	$s6,96($sp)
    # Line 1970
    mult	$v0,$v1
    # Line 1971
    lw	$s6,360($s0)
    sd	$a1,136($sp)
    sd	$at,144($sp)
    sd	$s6,24($sp)
    # Line 1953
    move	$s6,$a0
    # Line 1969
    lw	$a0,52($a1)
    # Line 1974
    lw	$at,260($s0)
    lw	$v1,172($s0)
    sd	$a0,176($sp)
    lw	$v0,264($s0)
    subu	$v1,$v1,$a0
    addiu	$v1,$v1,1
    # Line 1970
    mflo	$a3
    # Line 1974
    bne	$at,$v0,.L0db23b34
    sd	$v1,128($sp)
    sd	$s5,72($sp)
    # Line 1977
    lw	$a4,92($s0)
    sd	$s4,80($sp)
    b	.L0db23b4c
    sd	$a4,16($sp)
.L0db23b34:
    sd	$s5,72($sp)
    sd	$s4,80($sp)
    lui	$at,0xffff
    addu	$at,$at,$s8
    addiu	$at,$at,32752
    sd	$at,16($sp)
.L0db23b4c:
    sd	$s1,32($sp)
    sd	$s2,40($sp)
    sd	$s7,48($sp)
    sd	$s3,64($sp)
    sd	$ra,56($sp)
    # Line 1982
    ld	$v0,128($sp)
    # Line 1981
    move	$s5,$zero
    li	$s4,1
    # Line 1982
    blez	$v0,.L0db23e58
    sd	$zero,152($sp)
    sd	$s2,40($sp)
    sd	$s7,48($sp)
    sd	$ra,56($sp)
    lw	$s3,8($sp)
    sll	$at,$a3,0x2
    sd	$at,160($sp)
    lui	$s1,0xfffe
    addu	$s1,$s1,$s8
    b	.L0db23cb4
    addiu	$s1,$s1,32752
.L0db23b9c:
    # Line 1984
    lw	$a0,264($s0)
    slt	$a1,$s3,$a0
    beqz	$a1,.L0db23be4
    nop
    # Line 2017
    move	$a1,$s0
    move	$a0,$s6
    sll	$a3,$s4,0xf
    addu	$a3,$a3,$s1
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,32752
    lw	$a0,264($s0)
    slt	$a1,$s3,$a0
.L0db23be4:
    beqz	$a1,.L0db23c34
    sll	$s2,$s3,0x2
    addu	$s2,$s2,$s0
    # Line 2023
    move	$a0,$s6
.L0db23bf4:
    move	$a1,$s0
    # Line 2021
    addiu	$s2,$s2,4
    # Line 2022
    move	$a3,$s5
    move	$s5,$s4
    # Line 2023
    sll	$a2,$s5,0xf
    # Line 2022
    move	$s4,$a3
    # Line 2023
    lw	$t9,356($s2)
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s1
    jalr	$t9
    addu	$a2,$a2,$s1
    # Line 2021
    lw	$a0,264($s0)
    addiu	$s3,$s3,1
    slt	$a4,$s3,$a0
    bnezl	$a4,.L0db23bf4
    # Line 2023
    move	$a0,$s6
.L0db23c34:
    # Line 2021
    bnel	$a0,$s3,.L0db23c78
    # Line 2042
    lw	$v1,92($s0)
    # Line 2021
    lw	$at,260($s0)
    addiu	$v0,$a0,-1
    bne	$at,$v0,.L0db23e30
    lw	$a3,92($s0)
    # Line 2030
    move	$a1,$s0
    move	$a0,$s6
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,32752
    # Line 2042
    lw	$v1,92($s0)
.L0db23c78:
    lw	$v0,96($s0)
    # Line 2040
    ld	$a4,144($sp)
    lw	$at,16($s0)
    # Line 2042
    addu	$v0,$v0,$v1
    sw	$v0,92($s0)
    # Line 2040
    addu	$a4,$at,$a4
    # Line 2045
    ld	$at,168($sp)
    sd	$a4,144($sp)
    # Line 2040
    sw	$a4,12($s0)
    ld	$a4,152($sp)
    # Line 1982
    ld	$v1,128($sp)
    # Line 2045
    sw	$at,30700($s6)
    # Line 1982
    addiu	$a4,$a4,1
    beq	$v1,$a4,.L0db23e58
    sd	$a4,152($sp)
.L0db23cb4:
    ld	$v1,136($sp)
    # Line 1984
    ld	$v0,176($sp)
    # Line 1983
    lw	$v1,64($v1)
    sd	$zero,88($sp)
    # Line 1984
    blez	$v0,.L0db23b9c
    # Line 1983
    sw	$v1,256($s0)
    b	.L0db23d2c
    # Line 1984
    lw	$at,260($s0)
.L0db23cd4:
    # Line 2004
    li	$s3,1
    beqz	$a4,.L0db23e10
    # Line 2008
    move	$a0,$s6
.L0db23ce0:
    ld	$t9,24($sp)
    move	$a1,$s0
    lw	$a2,12($s0)
    jalr	$t9
    ld	$a3,16($sp)
.L0db23cf4:
    # Line 1984
    ld	$v0,88($sp)
    # Line 2012
    lw	$a4,12($s0)
    lw	$at,16($s0)
    # Line 2011
    lw	$v1,256($s0)
    # Line 1984
    addiu	$v0,$v0,1
    # Line 2012
    addu	$at,$at,$a4
    # Line 2011
    ld	$a4,160($sp)
    # Line 2012
    sw	$at,12($s0)
    # Line 1984
    ld	$at,176($sp)
    sd	$v0,88($sp)
    # Line 2011
    addu	$v1,$v1,$a4
    # Line 1984
    beq	$at,$v0,.L0db23b9c
    # Line 2011
    sw	$v1,256($s0)
    # Line 1984
    lw	$at,260($s0)
.L0db23d2c:
    # Line 2004
    ld	$a4,88($sp)
    # Line 1989
    sll	$s2,$s4,0xf
    # Line 1984
    beqz	$at,.L0db23cd4
    # Line 1989
    addu	$s2,$s2,$s1
    move	$a1,$s0
    move	$a0,$s6
    # Line 1987
    ld	$t8,168($sp)
    # Line 1989
    ld	$t9,24($sp)
    move	$a3,$s2
    # Line 1987
    sw	$t8,30700($s6)
    # Line 1989
    jalr	$t9
    lw	$a2,12($s0)
    # Line 1990
    lw	$at,260($s0)
    slti	$at,$at,2
    bnez	$at,.L0db23dbc
    li	$s3,1
    addiu	$s2,$s0,4
    # Line 1992
    move	$a1,$s0
.L0db23d74:
    move	$a0,$s6
    # Line 1990
    addiu	$s2,$s2,4
    # Line 1991
    move	$s7,$s5
    move	$s5,$s4
    # Line 1992
    sll	$a2,$s5,0xf
    addu	$a2,$a2,$s1
    lw	$t9,356($s2)
    # Line 1991
    move	$s4,$s7
    # Line 1992
    sll	$s7,$s7,0xf
    addu	$s7,$s7,$s1
    jalr	$t9
    move	$a3,$s7
    # Line 1990
    lw	$a4,260($s0)
    addiu	$s3,$s3,1
    slt	$a4,$s3,$a4
    bnez	$a4,.L0db23d74
    # Line 1992
    move	$a1,$s0
    # Line 1990
    move	$s2,$s7
.L0db23dbc:
    ld	$at,88($sp)
    beqz	$at,.L0db23df0
    # Line 1999
    addiu	$s3,$s3,1
    ld	$a3,16($sp)
.L0db23dcc:
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    move	$a2,$s2
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s6
    b	.L0db23cf4
    nop
.L0db23df0:
    # Line 1997
    move	$a0,$s6
    lw	$t9,416($s0)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    ld	$a3,16($sp)
    b	.L0db23dcc
    ld	$a3,16($sp)
.L0db23e10:
    # Line 2006
    move	$a0,$s6
    lw	$t9,416($s0)
    move	$a1,$s0
    ld	$a3,16($sp)
    jalr	$t9
    lw	$a2,12($s0)
    b	.L0db23ce0
    # Line 2008
    move	$a0,$s6
.L0db23e30:
    # Line 2035
    move	$a1,$s0
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    move	$a0,$s6
    sll	$a2,$s4,0xf
    jalr	$t9
    addu	$a2,$a2,$s1
    b	.L0db23c78
    # Line 2042
    lw	$v1,92($s0)
.L0db23e58:
    ld	$gp,120($sp)
    # Line 2047
    ld	$s0,104($sp)
    ld	$s1,32($sp)
    ld	$s2,40($sp)
    ld	$s3,64($sp)
    ld	$s4,80($sp)
    ld	$s5,72($sp)
    ld	$s6,96($sp)
    ld	$s7,48($sp)
    ld	$ra,56($sp)
    ld	$at,112($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.end __glConv2dCopyImage

# Function: __glSep2dCopyImage
# Declared: Line 2053 (Source lines: 2054-2177)
# Address: 0x0db23e90 - 0x0db24450 (Size: 1472 bytes, Frame: 0)
.globl __glSep2dCopyImage
.ent __glSep2dCopyImage
__glSep2dCopyImage:
    # Line 2054
    lui	$v0,0x1
    ori	$v0,$v0,0xf0
    subu	$sp,$sp,$v0
    sd	$zero,32($sp)
    # Line 2072
    lw	$a2,436($a1)
    sd	$s3,96($sp)
    # Line 2062
    lw	$v1,30700($a0)
    # Line 2072
    move	$s3,$a2
    sd	$gp,112($sp)
    sd	$v1,48($sp)
    sd	$s5,128($sp)
    # Line 2070
    lw	$s5,948($a0)
    sd	$s0,88($sp)
    # Line 2054
    move	$s0,$a1
    sd	$s2,120($sp)
    # Line 2077
    lw	$s2,360($a1)
    # Line 2054
    lui	$a1,0xe
    sd	$s1,136($sp)
    # Line 2076
    lw	$s1,48($a2)
    lw	$a5,12($a2)
    # Line 2054
    addiu	$a1,$a1,-22520
    addu	$gp,$t9,$a1
    # Line 2076
    mult	$a5,$s1
    # Line 2054
    move	$s1,$a0
    move	$at,$s8
    addu	$s8,$sp,$v0
    # Line 2082
    lw	$v0,64($a2)
    sd	$s2,56($sp)
    # Line 2075
    lw	$s2,52($a2)
    # Line 2082
    sw	$v0,256($s0)
    sd	$at,104($sp)
    # Line 2079
    lw	$at,172($s0)
    # Line 2081
    addiu	$v0,$s2,-1
    sd	$v0,64($sp)
    # Line 2079
    subu	$at,$at,$s2
    addiu	$at,$at,1
    sd	$at,152($sp)
    # Line 2082
    slt	$at,$at,$s2
    # Line 2076
    mflo	$v1
    # Line 2082
    bnez	$at,.L0db24418
    sd	$v1,16($sp)
    sd	$s6,184($sp)
    # Line 2091
    lw	$v1,264($s0)
    lw	$v0,260($s0)
    sd	$zero,80($sp)
    li	$a5,1
    bne	$v0,$v1,.L0db23f58
    sd	$a5,40($sp)
    # Line 2094
    b	.L0db23f64
    lw	$s6,92($s0)
.L0db23f58:
    # Line 2096
    lui	$s6,0xffff
    addu	$s6,$s6,$s8
    addiu	$s6,$s6,32752
.L0db23f64:
    blez	$s2,.L0db24440
    sd	$s7,192($sp)
    sd	$ra,208($sp)
    sd	$s4,200($sp)
    move	$v0,$s5
    sd	$s5,72($sp)
    sll	$at,$s2,0xf
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    addu	$at,$at,$s5
    sd	$at,144($sp)
    b	.L0db24008
    addiu	$s7,$s7,-16
.L0db23f98:
    # Line 2105
    addu	$s4,$s4,$s7
.L0db23f9c:
    # Line 2111
    move	$a0,$s1
    lw	$t9,416($s0)
    move	$a1,$s0
    move	$a2,$s4
    jalr	$t9
    ld	$a3,72($sp)
    # Line 2112
    ld	$t9,24($sp)
    ld	$a3,72($sp)
    addiu	$t9,$t9,1
    sd	$t9,24($sp)
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    move	$a2,$s4
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s1
    # Line 2122
    lw	$a5,12($s0)
.L0db23fe4:
    # Line 2099
    ld	$at,72($sp)
    # Line 2122
    lw	$v1,16($s0)
    li	$v0,0x8000
    # Line 2099
    addu	$at,$v0,$at
    ld	$v0,144($sp)
    # Line 2122
    addu	$v1,$v1,$a5
    sd	$at,72($sp)
    # Line 2099
    beq	$at,$v0,.L0db240fc
    # Line 2122
    sw	$v1,12($s0)
.L0db24008:
    # Line 2096
    lw	$v1,260($s0)
    beqz	$v1,.L0db240bc
    # Line 2104
    move	$a1,$s0
    move	$a0,$s1
    # Line 2102
    ld	$t8,48($sp)
    # Line 2104
    ld	$s4,40($sp)
    ld	$t9,56($sp)
    # Line 2102
    sw	$t8,30700($s1)
    # Line 2104
    sll	$s4,$s4,0xf
    addu	$s4,$s4,$s7
    lw	$a2,12($s0)
    jalr	$t9
    move	$a3,$s4
    # Line 2105
    lw	$at,260($s0)
    li	$v0,1
    slti	$at,$at,2
    bnez	$at,.L0db23f9c
    sd	$v0,24($sp)
    addiu	$s4,$s0,4
    # Line 2107
    move	$a0,$s1
.L0db24058:
    move	$a1,$s0
    # Line 2106
    ld	$a4,40($sp)
    ld	$a2,80($sp)
    # Line 2107
    lw	$t9,360($s4)
    sd	$a4,80($sp)
    # Line 2106
    move	$a3,$a2
    move	$a2,$a4
    # Line 2107
    sll	$a2,$a2,0xf
    # Line 2106
    move	$a4,$a3
    sd	$a3,40($sp)
    # Line 2107
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s7
    jalr	$t9
    addu	$a2,$a2,$s7
    # Line 2105
    addiu	$s4,$s4,4
    ld	$a5,24($sp)
    lw	$at,260($s0)
    addiu	$a5,$a5,1
    sd	$a5,24($sp)
    slt	$a5,$a5,$at
    bnez	$a5,.L0db24058
    # Line 2107
    move	$a0,$s1
    ld	$s4,40($sp)
    b	.L0db23f98
    # Line 2105
    sll	$s4,$s4,0xf
.L0db240bc:
    ld	$a3,72($sp)
    # Line 2117
    lw	$a2,12($s0)
    move	$a1,$s0
    lw	$t9,416($s0)
    move	$a0,$s1
    # Line 2116
    li	$v0,1
    # Line 2117
    jalr	$t9
    sd	$v0,24($sp)
    # Line 2119
    move	$a0,$s1
    ld	$t9,56($sp)
    move	$a1,$s0
    lw	$a2,12($s0)
    jalr	$t9
    ld	$a3,72($sp)
    b	.L0db23fe4
    # Line 2122
    lw	$a5,12($s0)
.L0db240fc:
    # Line 2099
    lw	$a2,436($s0)
    ld	$v1,24($sp)
    ld	$s4,200($sp)
    ld	$ra,208($sp)
    sw	$v1,8($sp)
.L0db24110:
    # Line 2126
    ld	$a5,16($sp)
    lw	$a0,64($a2)
    sll	$a5,$a5,0x2
    addu	$a0,$a0,$a5
    # Line 2129
    ld	$a5,152($sp)
    blez	$a5,.L0db243e0
    sd	$zero,160($sp)
    sd	$a0,176($sp)
    sd	$ra,208($sp)
    sd	$s3,168($sp)
    lw	$s3,8($sp)
    sd	$s4,200($sp)
    b	.L0db241ac
    sd	$s3,24($sp)
.L0db24148:
    # Line 2166
    move	$a2,$s4
    move	$a1,$s0
    ld	$a3,64($sp)
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$t9,$s0
    lw	$t9,356($t9)
    move	$a0,$s1
    sll	$a3,$a3,0xf
    jalr	$t9
    addu	$a3,$a3,$s5
    # Line 2172
    lw	$at,92($s0)
    lw	$a5,96($s0)
    # Line 2170
    lw	$v1,12($s0)
    lw	$v0,16($s0)
    sd	$s3,24($sp)
    # Line 2172
    addu	$a5,$a5,$at
    # Line 2170
    addu	$v0,$v0,$v1
    ld	$v1,160($sp)
    sw	$v0,12($s0)
    # Line 2129
    ld	$v0,152($sp)
    # Line 2172
    sw	$a5,92($s0)
    # Line 2129
    addiu	$v1,$v1,1
    beq	$v0,$v1,.L0db243d8
    sd	$v1,160($sp)
.L0db241ac:
    sd	$s3,24($sp)
    sd	$zero,80($sp)
    # Line 2131
    move	$a3,$s6
    move	$a1,$s0
    move	$a0,$s1
    # Line 2130
    li	$a4,1
    # Line 2131
    ld	$a2,32($sp)
    lw	$t9,416($s0)
    sd	$a4,40($sp)
    sll	$a2,$a2,0xf
    jalr	$t9
    addu	$a2,$a2,$s5
    # Line 2132
    blez	$s2,.L0db24258
    move	$s3,$zero
    ld	$s7,32($sp)
    move	$s4,$s7
    addu	$s7,$s2,$s7
    # Line 2133
    ld	$a3,168($sp)
.L0db241f4:
    lw	$a3,12($a3)
    mult	$a3,$s3
    mflo	$a2
    nop
    nop
    div	$zero,$s4,$s2
    move	$a0,$s1
    move	$a1,$s0
    move	$a4,$s6
    teq	$s2,$zero,0x7
    lw	$t9,420($s0)
    # Line 2132
    addiu	$s3,$s3,1
    # Line 2133
    ld	$a3,176($sp)
    # Line 2132
    addiu	$s4,$s4,1
    # Line 2133
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    mfhi	$a3
    sll	$a3,$a3,0xf
    jalr	$t9
    addu	$a3,$a3,$s5
    # Line 2132
    bne	$s4,$s7,.L0db241f4
    # Line 2133
    ld	$a3,168($sp)
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    addiu	$s7,$s7,-16
.L0db24258:
    # Line 2132
    lw	$a0,264($s0)
    ld	$at,24($sp)
    slt	$at,$at,$a0
    beqz	$at,.L0db242cc
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$s0
    # Line 2142
    move	$a0,$s1
.L0db2427c:
    move	$a1,$s0
    ld	$a2,80($sp)
    sd	$s3,80($sp)
    lw	$t9,360($s4)
    # Line 2141
    move	$a3,$a2
    move	$a2,$s3
    # Line 2142
    sll	$a2,$a2,0xf
    # Line 2141
    move	$s3,$a3
    # Line 2142
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s7
    jalr	$t9
    addu	$a2,$a2,$s7
    # Line 2140
    addiu	$s4,$s4,4
    ld	$a5,24($sp)
    lw	$a0,264($s0)
    addiu	$a5,$a5,1
    sd	$a5,24($sp)
    slt	$a5,$a5,$a0
    bnezl	$a5,.L0db2427c
    # Line 2142
    move	$a0,$s1
.L0db242cc:
    # Line 2140
    ld	$at,24($sp)
    sll	$s4,$s3,0xf
    beq	$a0,$at,.L0db243ac
    addu	$s4,$s4,$s7
    ld	$at,32($sp)
.L0db242e0:
    # Line 2153
    addiu	$v0,$at,1
    div	$zero,$v0,$s2
    # Line 2154
    ld	$t8,64($sp)
    # Line 2153
    mfhi	$at
    nop
    # Line 2154
    addiu	$ra,$t8,1
    div	$zero,$ra,$s2
    sd	$s3,40($sp)
    # Line 2159
    move	$a1,$s0
    # Line 2154
    teq	$s2,$zero,0x7
    # Line 2157
    ld	$t9,48($sp)
    # Line 2159
    move	$a0,$s1
    # Line 2153
    teq	$s2,$zero,0x7
    # Line 2157
    sw	$t9,30700($s1)
    # Line 2159
    move	$a3,$s4
    lw	$a2,12($s0)
    ld	$t9,56($sp)
    sd	$at,32($sp)
    # Line 2154
    mfhi	$t8
    # Line 2159
    jalr	$t9
    sd	$t8,64($sp)
    # Line 2160
    lw	$v1,260($s0)
    slti	$v1,$v1,2
    bnez	$v1,.L0db24148
    li	$s3,1
    addiu	$s4,$s0,4
    # Line 2162
    move	$a0,$s1
.L0db2434c:
    move	$a1,$s0
    # Line 2160
    addiu	$s4,$s4,4
    # Line 2161
    ld	$a4,40($sp)
    ld	$a2,80($sp)
    # Line 2162
    lw	$t9,356($s4)
    sd	$a4,80($sp)
    # Line 2161
    move	$a3,$a2
    move	$a2,$a4
    # Line 2162
    sll	$a2,$a2,0xf
    # Line 2161
    move	$a4,$a3
    sd	$a3,40($sp)
    # Line 2162
    sll	$a3,$a3,0xf
    addu	$a3,$a3,$s7
    jalr	$t9
    addu	$a2,$a2,$s7
    # Line 2160
    lw	$a5,260($s0)
    addiu	$s3,$s3,1
    slt	$a5,$s3,$a5
    bnez	$a5,.L0db2434c
    # Line 2162
    move	$a0,$s1
    ld	$s4,40($sp)
    # Line 2160
    sll	$s4,$s4,0xf
    b	.L0db24148
    addu	$s4,$s4,$s7
.L0db243ac:
    # Line 2147
    ld	$t9,24($sp)
    move	$a0,$s1
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$s0
    lw	$t9,360($t9)
    move	$a1,$s0
    move	$a2,$s4
    jalr	$t9
    lw	$a3,92($s0)
    b	.L0db242e0
    ld	$at,32($sp)
.L0db243d8:
    ld	$s4,200($sp)
    ld	$ra,208($sp)
.L0db243e0:
    ld	$gp,112($sp)
    # Line 2177
    ld	$s0,88($sp)
    ld	$s2,120($sp)
    ld	$s3,96($sp)
    ld	$s5,128($sp)
    ld	$s6,184($sp)
    ld	$v0,48($sp)
    ld	$s7,192($sp)
    ld	$at,104($sp)
    # Line 2176
    sw	$v0,30700($s1)
    # Line 2177
    ld	$s1,136($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db24418:
    ld	$gp,112($sp)
    # Line 2089
    ld	$s0,88($sp)
    ld	$s1,136($sp)
    ld	$s2,120($sp)
    ld	$s3,96($sp)
    ld	$s5,128($sp)
    ld	$v1,104($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0db24440:
    # Line 2099
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    b	.L0db24110
    addiu	$s7,$s7,-16
.end __glSep2dCopyImage

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

