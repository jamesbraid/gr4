# Source: ../MGRAS/mgras_eval.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_eval.c
# Total Functions: 53

.text

# Function: __glMgrSendMapSpec1D
# Declared: Line 63 (Source lines: 64-76)
# Address: 0x0daa7698 - 0x0daa76d8 (Size: 64 bytes, Frame: 0)
.globl __glMgrSendMapSpec1D
.ent __glMgrSendMapSpec1D
__glMgrSendMapSpec1D:
    # Line 64
    lui	$a2,0x7
    beqz	$a0,.L0daa76c4
    ori	$a2,$a2,0x4080
    # Line 70
    lw	$at,44($a0)
    # Line 68
    lw	$v1,8($a0)
    # Line 69
    lw	$v0,4($a0)
    # Line 70
    sll	$at,$at,0x2
    # Line 68
    sw	$v1,0($a2)
    # Line 69
    sw	$v0,0($a2)
    # Line 76
    jr	$ra
    # Line 70
    sw	$at,0($a2)
.L0daa76c4:
    # Line 72
    sw	$zero,0($a2)
    # Line 73
    sw	$zero,0($a2)
    # Line 74
    sw	$zero,0($a2)
    # Line 76
    jr	$ra
    nop
.end __glMgrSendMapSpec1D

# Function: __glMgrSendMapData1D
# Declared: Line 78 (Source lines: 79-101)
# Address: 0x0daa76d8 - 0x0daa7780 (Size: 168 bytes, Frame: 0)
.globl __glMgrSendMapData1D
.ent __glMgrSendMapData1D
__glMgrSendMapData1D:
    # Line 84
    li	$a1,0xb218
    lui	$a4,0x7
    # Line 79
    beqz	$a0,.L0daa7778
    # Line 84
    ori	$a4,$a4,0x4080
    # Line 95
    move	$a2,$zero
    # Line 88
    lwc1	$f0,36($a0)
    # Line 89
    lw	$a5,44($a0)
    # Line 87
    lwc1	$f1,24($a0)
    # Line 91
    li	$v1,-2
    addiu	$v0,$a5,1
    and	$v0,$v0,$v1
    # Line 94
    lui	$v1,0xf
    ori	$v1,$v1,0xffff
    sll	$at,$v0,0x2
    and	$at,$at,$v1
    lui	$v1,0x8000
    or	$at,$at,$v1
    # Line 85
    lw	$v1,0($a0)
    # Line 84
    sw	$a1,0($a4)
    # Line 86
    lwc1	$f2,20($a0)
    # Line 85
    sll	$v1,$v1,0x2
    sw	$v1,0($a4)
    # Line 86
    swc1	$f2,0($a4)
    # Line 87
    swc1	$f1,0($a4)
    # Line 88
    swc1	$f0,0($a4)
    # Line 89
    sw	$a5,0($a4)
    # Line 92
    sw	$v0,0($a4)
    # Line 95
    blez	$a5,.L0daa7768
    # Line 94
    sw	$at,0($a4)
    # Line 95
    lw	$a3,48($a0)
.L0daa7750:
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    # Line 96
    lwc1	$f3,-4($a3)
    # Line 95
    slt	$a1,$a2,$a5
    bnez	$a1,.L0daa7750
    # Line 96
    swc1	$f3,0($a4)
.L0daa7768:
    # Line 95
    andi	$at,$a5,0x1
    beqz	$at,.L0daa7778
    nop
    # Line 98
    sw	$zero,0($a4)
.L0daa7778:
    # Line 101
    jr	$ra
    nop
.end __glMgrSendMapData1D

# Function: changebasis
# Declared: Line 104 (Source lines: 105-322)
# Address: 0x0daa7780 - 0x0daa9a80 (Size: 8960 bytes, Frame: 208)
.ent changebasis
changebasis:
    # Line 109
    sll	$a5,$a1,0x2
    sltiu	$at,$a1,16
    # Line 105
    addiu	$sp,$sp,-208
    sd	$s0,80($sp)
    move	$s0,$a1
    sd	$s1,72($sp)
    # Line 109
    lwc1	$f0,0($a0)
    la	$v0,sub_0dbf0000
    # Line 105
    move	$s1,$a3
    # Line 109
    swc1	$f0,0($a2)
    addiu	$v0,$v0,-7840
    beqz	$at,.L0daa7818
    addu	$a5,$a5,$v0
    # Line 233
    sll	$a4,$s1,0x2
    # Line 239
    ldc1	$f9,_lit8_4075000000000000
    # Line 235
    ldc1	$f3,_lit8_4024000000000000
    sll	$at,$s1,0x2
    # Line 236
    ldc1	$f2,_lit8_405b000000000000
    ldc1	$f8,_lit8_4022000000000000
    # Line 243
    ldc1	$f16,_lit8_4066800000000000
    # Line 245
    ldc1	$f23,_lit8_406e000000000000
    # Line 217
    ldc1	$f31,_lit8_c04c000000000000
    # Line 214
    ldc1	$f1,_lit8_4042000000000000
    ldc1	$f4,_lit8_4056000000000000
    # Line 217
    ldc1	$f15,_lit8_4074a00000000000
    # Line 223
    ldc1	$f25,_lit8_c02e000000000000
    # Line 195
    ldc1	$f14,_lit8_403c000000000000
    # Line 198
    ldc1	$f12,_lit8_c041800000000000
    # Line 196
    ldc1	$f13,_lit8_c035000000000000
    # Line 198
    ldc1	$f10,_lit8_402e000000000000
    # Line 179
    ldc1	$f29,_lit8_4018000000000000
    # Line 180
    ldc1	$f21,_lit8_c02e000000000000
    # Line 164
    ldc1	$f6,_lit8_4018000000000000
    # Line 109
    lw	$v1,%lo(jtbl_0dbee160)($a5)
    # Line 150
    sll	$v0,$s1,0x3
    # Line 153
    ldc1	$f0,_lit8_403c000000000000
    # Line 109
    jr	$v1
    # Line 241
    ldc1	$f27,_lit8_404c000000000000
.L0daa7818:
    sd	$a2,88($sp)
    # Line 317
    move	$a1,$s0
    # lw $t9, -17884($gp) # &printf
    la	$a0,sub_0dbf0000
    sd	$ra,96($sp)
    jal	printf
    addiu	$a0,$a0,-7776
    # Line 318
    # lw $t9, -17836($gp) # &exit
    jal	exit
    move	$a0,$zero
    ld	$a2,88($sp)
    ld	$ra,96($sp)
.L0daa7848:
    # Line 319
    sll	$a5,$s0,0x2
    addiu	$a7,$s0,-1
    slti	$a4,$s0,2
    bnez	$a4,.L0daa78e0
    addiu	$a1,$sp,0
    sll	$a3,$s1,0x2
    addu	$a5,$a5,$a1
    addiu	$a1,$a1,4
    sll	$a0,$s1,0x2
    andi	$a6,$a7,0x3
    beqz	$a6,.L0daa7890
    addu	$a0,$a0,$a2
.L0daa7878:
    # Line 321
    lwc1	$f1,0($a1)
    # Line 320
    addiu	$a1,$a1,4
    addi	$a6,$a6,-1
    # Line 321
    swc1	$f1,0($a0)
    bnez	$a6,.L0daa7878
    # Line 320
    addu	$a0,$a3,$a0
.L0daa7890:
    sra	$a4,$a7,0x2
    move	$a6,$a0
    beqz	$a4,.L0daa78e0
    move	$a2,$a1
    move	$a0,$a6
    move	$a1,$a2
.L0daa78a8:
    addiu	$a1,$a1,16
    addu	$v1,$a3,$a0
    # Line 321
    lwc1	$f1,-16($a1)
    # Line 320
    addu	$v0,$a3,$v1
    addu	$at,$a3,$v0
    # Line 321
    swc1	$f1,0($a0)
    # Line 320
    addu	$a0,$a3,$at
    # Line 321
    lwc1	$f0,-12($a1)
    lwc1	$f3,-8($a1)
    lwc1	$f2,-4($a1)
    swc1	$f0,0($v1)
    swc1	$f3,0($v0)
    # Line 320
    bne	$a1,$a5,.L0daa78a8
    # Line 321
    swc1	$f2,0($at)
.L0daa78e0:
    # Line 322
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0daa78f0:
    sd	$a2,88($sp)
    # Line 112
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0daa7904:
    # Line 114
    sll	$a4,$s1,0x2
    # Line 115
    ld	$s1,72($sp)
    # Line 114
    addu	$s0,$a4,$a0
    addu	$a0,$a4,$a2
    lwc1	$f2,0($s0)
    # Line 115
    ld	$s0,80($sp)
    addiu	$sp,$sp,208
    jr	$ra
    # Line 114
    swc1	$f2,0($a0)
.L0daa7928:
    # Line 118
    sll	$v0,$s1,0x2
    addu	$v0,$v0,$a0
    lwc1	$f3,0($v0)
    ldc1	$f0,_lit8_4000000000000000
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f0
    lwc1	$f0,0($a0)
    # Line 117
    addu	$at,$s1,$s1
    sll	$at,$at,0x2
    # Line 118
    cvt.d.s	$f0,$f0
    # Line 117
    addu	$at,$at,$a0
    # Line 118
    sub.d	$f3,$f3,$f0
    # Line 117
    lwc1	$f0,0($at)
    # Line 118
    cvt.d.s	$f1,$f0
    sub.d	$f3,$f3,$f1
    cvt.s.d	$f3,$f3
    # Line 117
    swc1	$f0,4($sp)
    # Line 119
    b	.L0daa7848
    # Line 118
    swc1	$f3,8($sp)
.L0daa7974:
    # Line 122
    ldc1	$f2,_lit8_4000000000000000
    lwc1	$f4,0($a0)
    sll	$at,$s1,0x2
    addu	$at,$at,$a0
    lwc1	$f0,0($at)
    cvt.d.s	$f4,$f4
    ldc1	$f3,_lit8_4008000000000000
    cvt.d.s	$f0,$f0
    # Line 123
    addu	$a4,$s1,$s1
    # Line 122
    mul.d	$f0,$f0,$f3
    # Line 123
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    lwc1	$f1,0($a4)
    # Line 122
    mul.d	$f2,$f4,$f2
    # Line 123
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f3
    sub.d	$f4,$f4,$f0
    # Line 121
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    # Line 122
    sub.d	$f0,$f0,$f2
    # Line 121
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    # Line 123
    add.d	$f4,$f4,$f1
    # Line 121
    lwc1	$f1,0($v1)
    # Line 122
    cvt.d.s	$f2,$f1
    sub.d	$f0,$f0,$f2
    # Line 123
    sub.d	$f4,$f4,$f2
    # Line 122
    cvt.s.d	$f0,$f0
    # Line 123
    cvt.s.d	$f4,$f4
    # Line 121
    swc1	$f1,4($sp)
    # Line 122
    swc1	$f0,8($sp)
    # Line 124
    b	.L0daa7848
    # Line 123
    swc1	$f4,12($sp)
.L0daa79f8:
    # Line 127
    lwc1	$f1,0($a0)
    ldc1	$f3,_lit8_c008000000000000
    cvt.d.s	$f1,$f1
    sll	$at,$s1,0x2
    addu	$at,$at,$a0
    lwc1	$f9,0($at)
    mul.d	$f3,$f1,$f3
    ldc1	$f10,_lit8_4010000000000000
    cvt.d.s	$f9,$f9
    # Line 126
    sll	$a4,$s1,0x2
    # Line 127
    mul.d	$f9,$f9,$f10
    # Line 126
    sll	$a4,$a4,0x2
    # Line 128
    ldc1	$f6,_lit8_4000000000000000
    # Line 126
    addu	$a4,$a4,$a0
    lwc1	$f4,0($a4)
    # Line 128
    mul.d	$f2,$f1,$f6
    # Line 127
    cvt.d.s	$f5,$f4
    # Line 128
    mul.d	$f6,$f5,$f6
    # Line 127
    add.d	$f3,$f3,$f9
    # Line 128
    sll	$v0,$s1,0x2
    subu	$v0,$v0,$s1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f7,0($v0)
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f10
    # Line 127
    sub.d	$f3,$f3,$f5
    # Line 129
    addu	$v1,$s1,$s1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f8,0($v1)
    ldc1	$f0,_lit8_4018000000000000
    cvt.d.s	$f8,$f8
    # Line 127
    cvt.s.d	$f3,$f3
    # Line 129
    mul.d	$f8,$f8,$f0
    sub.d	$f1,$f1,$f9
    # Line 128
    sub.d	$f2,$f2,$f9
    # Line 129
    add.d	$f1,$f1,$f8
    # Line 128
    add.d	$f2,$f2,$f7
    # Line 129
    sub.d	$f1,$f1,$f7
    # Line 128
    sub.d	$f2,$f2,$f6
    # Line 129
    add.d	$f1,$f1,$f5
    # Line 128
    cvt.s.d	$f2,$f2
    # Line 126
    swc1	$f4,4($sp)
    # Line 129
    cvt.s.d	$f1,$f1
    # Line 127
    swc1	$f3,8($sp)
    # Line 128
    swc1	$f2,12($sp)
    # Line 130
    b	.L0daa7848
    # Line 129
    swc1	$f1,16($sp)
.L0daa7abc:
    # Line 133
    ldc1	$f5,_lit8_c010000000000000
    lwc1	$f10,0($a0)
    cvt.d.s	$f10,$f10
    sll	$v0,$s1,0x2
    addu	$v0,$v0,$a0
    lwc1	$f8,0($v0)
    mul.d	$f5,$f10,$f5
    ldc1	$f1,_lit8_4014000000000000
    cvt.d.s	$f8,$f8
    mul.d	$f2,$f8,$f1
    add.d	$f5,$f5,$f2
    # Line 132
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$s1
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    lwc1	$f6,0($a4)
    # Line 134
    ldc1	$f0,_lit8_4008000000000000
    sll	$at,$s1,0x2
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f9,0($at)
    mul.d	$f3,$f10,$f0
    cvt.d.s	$f9,$f9
    # Line 133
    cvt.d.s	$f7,$f6
    # Line 134
    mul.d	$f9,$f9,$f1
    # Line 135
    ldc1	$f1,_lit8_4024000000000000
    # Line 133
    sub.d	$f5,$f5,$f7
    # Line 135
    mul.d	$f8,$f8,$f1
    # Line 134
    sub.d	$f4,$f3,$f2
    mul.d	$f0,$f7,$f0
    # Line 135
    addu	$v1,$s1,$s1
    sll	$v1,$v1,0x2
    # Line 134
    add.d	$f4,$f4,$f9
    # Line 135
    addu	$v1,$v1,$a0
    # Line 136
    sll	$v0,$s1,0x2
    # Line 135
    sub.d	$f3,$f3,$f8
    # Line 136
    subu	$v0,$v0,$s1
    # Line 135
    lwc1	$f8,_lit_41200000
    # Line 134
    sub.d	$f4,$f4,$f0
    # Line 135
    lwc1	$f0,0($v1)
    # Line 136
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    # Line 135
    mul.s	$f0,$f0,$f8
    # Line 136
    sub.d	$f2,$f2,$f10
    lwc1	$f10,0($v0)
    cvt.d.s	$f10,$f10
    # Line 133
    cvt.s.d	$f5,$f5
    # Line 136
    mul.d	$f10,$f10,$f1
    # Line 135
    ldc1	$f8,_lit8_4000000000000000
    # Line 134
    cvt.s.d	$f4,$f4
    # Line 135
    mul.d	$f8,$f7,$f8
    cvt.d.s	$f0,$f0
    # Line 136
    sub.d	$f2,$f2,$f0
    # Line 135
    add.d	$f3,$f3,$f0
    # Line 136
    add.d	$f2,$f2,$f10
    # Line 135
    sub.d	$f3,$f3,$f9
    # Line 136
    sub.d	$f2,$f2,$f9
    # Line 135
    add.d	$f3,$f3,$f8
    # Line 136
    add.d	$f2,$f2,$f7
    # Line 135
    cvt.s.d	$f3,$f3
    # Line 132
    swc1	$f6,4($sp)
    # Line 133
    swc1	$f5,8($sp)
    # Line 136
    cvt.s.d	$f2,$f2
    # Line 134
    swc1	$f4,12($sp)
    # Line 135
    swc1	$f3,16($sp)
    # Line 138
    b	.L0daa7848
    # Line 136
    swc1	$f2,20($sp)
.L0daa7bc8:
    # Line 142
    ldc1	$f5,_lit8_4010000000000000
    # Line 141
    lwc1	$f9,0($a0)
    ldc1	$f15,_lit8_c014000000000000
    cvt.d.s	$f9,$f9
    mul.d	$f15,$f9,$f15
    ldc1	$f2,_lit8_4018000000000000
    # Line 143
    mul.d	$f13,$f9,$f2
    # Line 142
    sll	$v0,$s1,0x2
    addu	$v0,$v0,$s1
    # Line 141
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$a0
    lwc1	$f4,0($a4)
    # Line 142
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    # Line 141
    cvt.d.s	$f4,$f4
    # Line 142
    lwc1	$f3,0($v0)
    # Line 141
    mul.d	$f11,$f4,$f2
    # Line 144
    ldc1	$f6,_lit8_4028000000000000
    # Line 142
    cvt.d.s	$f3,$f3
    # Line 143
    addu	$at,$s1,$s1
    # Line 142
    mul.d	$f2,$f3,$f2
    # Line 143
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f7,0($at)
    # Line 144
    mul.d	$f3,$f3,$f6
    # Line 143
    ldc1	$f8,_lit8_402e000000000000
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f8
    ldc1	$f1,_lit8_4032000000000000
    # Line 141
    add.d	$f15,$f15,$f11
    # Line 143
    mul.d	$f1,$f4,$f1
    # Line 140
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f16,0($v1)
    # Line 142
    mul.d	$f14,$f9,$f5
    # Line 141
    cvt.d.s	$f0,$f16
    sub.d	$f15,$f15,$f0
    # Line 143
    sub.d	$f13,$f13,$f1
    ldc1	$f1,_lit8_4008000000000000
    # Line 141
    cvt.s.d	$f15,$f15
    # Line 143
    mul.d	$f1,$f0,$f1
    add.d	$f13,$f13,$f7
    # Line 142
    mul.d	$f5,$f0,$f5
    sub.d	$f14,$f14,$f11
    # Line 143
    sub.d	$f13,$f13,$f2
    # Line 144
    ldc1	$f12,_lit8_c008000000000000
    # Line 142
    add.d	$f14,$f14,$f2
    # Line 144
    mul.d	$f12,$f9,$f12
    # Line 142
    sub.d	$f14,$f14,$f5
    # Line 143
    add.d	$f13,$f13,$f1
    # Line 142
    cvt.s.d	$f14,$f14
    # Line 144
    mul.d	$f4,$f4,$f6
    # Line 146
    ldc1	$f10,_lit8_4034000000000000
    # Line 143
    cvt.s.d	$f13,$f13
    # Line 144
    sll	$v1,$s1,0x2
    # Line 146
    sll	$a4,$s1,0x2
    subu	$a4,$a4,$s1
    sub.d	$f11,$f11,$f9
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    # Line 144
    add.d	$f12,$f12,$f4
    # Line 146
    lwc1	$f5,0($a4)
    # Line 144
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    # Line 146
    cvt.d.s	$f5,$f5
    # Line 144
    lwc1	$f4,0($v1)
    # Line 146
    mul.d	$f5,$f5,$f10
    # Line 144
    cvt.d.s	$f4,$f4
    # Line 146
    sub.d	$f11,$f11,$f7
    # Line 144
    mul.d	$f4,$f4,$f8
    sub.d	$f12,$f12,$f7
    # Line 146
    add.d	$f11,$f11,$f5
    # Line 144
    add.d	$f12,$f12,$f4
    # Line 146
    sub.d	$f11,$f11,$f4
    # Line 144
    sub.d	$f12,$f12,$f3
    # Line 146
    add.d	$f11,$f11,$f2
    # Line 144
    add.d	$f12,$f12,$f1
    # Line 146
    sub.d	$f11,$f11,$f0
    # Line 140
    swc1	$f16,4($sp)
    # Line 144
    cvt.s.d	$f12,$f12
    # Line 141
    swc1	$f15,8($sp)
    # Line 142
    swc1	$f14,12($sp)
    # Line 146
    cvt.s.d	$f11,$f11
    # Line 143
    swc1	$f13,16($sp)
    # Line 144
    swc1	$f12,20($sp)
    # Line 148
    b	.L0daa7848
    # Line 146
    swc1	$f11,24($sp)
.L0daa7d30:
    # Line 156
    ldc1	$f11,_lit8_c010000000000000
    # Line 150
    subu	$v0,$v0,$s1
    # Line 151
    lwc1	$f10,0($a0)
    # Line 150
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    # Line 151
    cvt.d.s	$f10,$f10
    # Line 150
    lwc1	$f16,0($v0)
    # Line 156
    mul.d	$f11,$f10,$f11
    # Line 153
    ldc1	$f5,_lit8_4010000000000000
    # Line 151
    cvt.d.s	$f17,$f16
    # Line 153
    mul.d	$f5,$f17,$f5
    # Line 151
    ldc1	$f12,_lit8_c018000000000000
    # Line 153
    addu	$a4,$s1,$s1
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    # Line 151
    sll	$v1,$s1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f9,0($v1)
    mul.d	$f12,$f10,$f12
    ldc1	$f1,_lit8_401c000000000000
    cvt.d.s	$f9,$f9
    # Line 153
    lwc1	$f7,0($a4)
    # Line 151
    mul.d	$f4,$f9,$f1
    # Line 153
    ldc1	$f8,_lit8_4035000000000000
    cvt.d.s	$f7,$f7
    mul.d	$f6,$f7,$f8
    ldc1	$f13,_lit8_4024000000000000
    mul.d	$f13,$f10,$f13
    # Line 151
    add.d	$f15,$f12,$f4
    # Line 153
    mul.d	$f0,$f9,$f0
    # Line 151
    sub.d	$f15,$f15,$f17
    cvt.s.d	$f15,$f15
    # Line 154
    mul.d	$f9,$f9,$f8
    # Line 152
    ldc1	$f3,_lit8_4014000000000000
    sll	$at,$s1,0x2
    subu	$at,$at,$s1
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f2,0($at)
    mul.d	$f14,$f10,$f3
    cvt.d.s	$f2,$f2
    # Line 153
    sub.d	$f13,$f13,$f0
    # Line 152
    mul.d	$f1,$f2,$f1
    # Line 153
    add.d	$f13,$f13,$f6
    # Line 152
    sub.d	$f14,$f14,$f4
    mul.d	$f3,$f17,$f3
    add.d	$f14,$f14,$f1
    # Line 153
    sub.d	$f13,$f13,$f1
    # Line 152
    sub.d	$f14,$f14,$f3
    # Line 153
    add.d	$f13,$f13,$f5
    # Line 152
    cvt.s.d	$f14,$f14
    # Line 153
    cvt.s.d	$f13,$f13
    # Line 156
    add.d	$f11,$f11,$f9
    # Line 154
    sll	$v1,$s1,0x2
    addu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f3,0($v1)
    cvt.d.s	$f3,$f3
    add.d	$f12,$f12,$f9
    mul.d	$f3,$f3,$f8
    # Line 158
    sll	$at,$s1,0x2
    sll	$at,$at,0x2
    sub.d	$f10,$f10,$f4
    addu	$at,$at,$a0
    # Line 156
    sll	$v0,$s1,0x2
    # Line 154
    sub.d	$f12,$f12,$f6
    mul.d	$f0,$f2,$f8
    # Line 156
    subu	$v0,$v0,$s1
    sll	$v0,$v0,0x2
    # Line 154
    add.d	$f12,$f12,$f3
    ldc1	$f8,_lit8_4018000000000000
    # Line 156
    addu	$v0,$v0,$a0
    # Line 158
    add.d	$f10,$f10,$f6
    # Line 154
    mul.d	$f8,$f17,$f8
    # Line 156
    ldc1	$f5,_lit8_4045000000000000
    # Line 154
    sub.d	$f12,$f12,$f0
    # Line 156
    lwc1	$f0,0($v0)
    mul.d	$f7,$f7,$f5
    ldc1	$f5,_lit8_4041800000000000
    cvt.d.s	$f0,$f0
    # Line 158
    lwc1	$f4,0($at)
    # Line 156
    mul.d	$f0,$f0,$f5
    # Line 158
    cvt.d.s	$f4,$f4
    # Line 154
    add.d	$f12,$f12,$f8
    # Line 158
    mul.d	$f4,$f4,$f5
    # Line 156
    ldc1	$f5,_lit8_402c000000000000
    sub.d	$f11,$f11,$f7
    mul.d	$f2,$f2,$f5
    add.d	$f11,$f11,$f0
    # Line 158
    sub.d	$f10,$f10,$f0
    # Line 156
    ldc1	$f0,_lit8_4008000000000000
    # Line 154
    cvt.s.d	$f12,$f12
    # Line 156
    mul.d	$f0,$f17,$f0
    # Line 158
    add.d	$f10,$f10,$f4
    # Line 156
    sub.d	$f11,$f11,$f3
    # Line 158
    sub.d	$f10,$f10,$f3
    # Line 156
    add.d	$f11,$f11,$f2
    # Line 158
    add.d	$f10,$f10,$f1
    # Line 156
    sub.d	$f11,$f11,$f0
    # Line 158
    sub.d	$f10,$f10,$f17
    # Line 150
    swc1	$f16,4($sp)
    # Line 151
    swc1	$f15,8($sp)
    # Line 156
    cvt.s.d	$f11,$f11
    # Line 152
    swc1	$f14,12($sp)
    # Line 153
    swc1	$f13,16($sp)
    # Line 158
    cvt.s.d	$f10,$f10
    # Line 154
    swc1	$f12,20($sp)
    # Line 156
    swc1	$f11,24($sp)
    # Line 160
    b	.L0daa7848
    # Line 158
    swc1	$f10,28($sp)
.L0daa7ef0:
    # Line 162
    sll	$v0,$s1,0x3
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f19,0($v0)
    # Line 166
    ldc1	$f8,_lit8_4024000000000000
    # Line 163
    cvt.d.s	$f18,$f19
    lwc1	$f11,0($a0)
    # Line 166
    mul.d	$f8,$f18,$f8
    # Line 163
    ldc1	$f17,_lit8_c01c000000000000
    cvt.d.s	$f11,$f11
    sll	$v1,$s1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f7,0($v1)
    mul.d	$f17,$f11,$f17
    ldc1	$f23,_lit8_4020000000000000
    cvt.d.s	$f7,$f7
    mul.d	$f0,$f7,$f23
    # Line 168
    sll	$v0,$s1,0x2
    subu	$v0,$v0,$s1
    # Line 164
    mul.d	$f16,$f11,$f6
    # Line 168
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f3,0($v0)
    # Line 164
    mul.d	$f6,$f18,$f6
    # Line 168
    ldc1	$f4,_lit8_404c000000000000
    cvt.d.s	$f3,$f3
    # Line 163
    add.d	$f17,$f17,$f0
    # Line 168
    mul.d	$f3,$f3,$f4
    ldc1	$f13,_lit8_4048000000000000
    # Line 163
    sub.d	$f17,$f17,$f18
    # Line 168
    mul.d	$f13,$f7,$f13
    # Line 164
    sll	$at,$s1,0x3
    subu	$at,$at,$s1
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f25,0($at)
    cvt.d.s	$f25,$f25
    # Line 163
    cvt.s.d	$f17,$f17
    # Line 164
    mul.d	$f23,$f25,$f23
    # Line 165
    ldc1	$f15,_lit8_402e000000000000
    ldc1	$f21,_lit8_4044000000000000
    addu	$a4,$s1,$s1
    mul.d	$f15,$f11,$f15
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    lwc1	$f2,0($a4)
    mul.d	$f21,$f7,$f21
    ldc1	$f27,_lit8_403c000000000000
    cvt.d.s	$f2,$f2
    # Line 164
    sub.d	$f16,$f16,$f0
    # Line 165
    mul.d	$f5,$f2,$f27
    # Line 166
    ldc1	$f9,_lit8_c024000000000000
    # Line 164
    add.d	$f16,$f16,$f23
    # Line 166
    mul.d	$f9,$f11,$f9
    # Line 165
    ldc1	$f1,_lit8_4014000000000000
    sub.d	$f15,$f15,$f21
    mul.d	$f1,$f18,$f1
    # Line 166
    ldc1	$f21,_lit8_4040000000000000
    # Line 165
    add.d	$f15,$f15,$f5
    # Line 166
    mul.d	$f14,$f7,$f21
    # Line 165
    sub.d	$f15,$f15,$f23
    # Line 164
    sub.d	$f16,$f16,$f6
    # Line 165
    add.d	$f15,$f15,$f1
    # Line 164
    cvt.s.d	$f16,$f16
    # Line 168
    ldc1	$f10,_lit8_4055000000000000
    # Line 165
    cvt.s.d	$f15,$f15
    # Line 168
    mul.d	$f10,$f2,$f10
    add.d	$f13,$f13,$f9
    # Line 166
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x1
    mul.d	$f21,$f25,$f21
    sll	$v1,$v1,0x2
    add.d	$f14,$f14,$f9
    # Line 168
    ldc1	$f9,_lit8_4038000000000000
    # Line 166
    addu	$v1,$v1,$a0
    lwc1	$f1,0($v1)
    # Line 168
    mul.d	$f25,$f25,$f9
    # Line 166
    cvt.d.s	$f1,$f1
    # Line 168
    sub.d	$f13,$f13,$f10
    # Line 166
    mul.d	$f27,$f1,$f27
    # Line 168
    add.d	$f13,$f13,$f3
    # Line 170
    mul.d	$f2,$f2,$f4
    # Line 166
    sub.d	$f14,$f14,$f5
    # Line 168
    sub.d	$f13,$f13,$f27
    # Line 166
    add.d	$f14,$f14,$f27
    # Line 170
    mul.d	$f7,$f7,$f9
    # Line 166
    sub.d	$f14,$f14,$f21
    # Line 170
    ldc1	$f21,_lit8_4010000000000000
    # Line 168
    add.d	$f13,$f13,$f25
    # Line 170
    mul.d	$f12,$f11,$f21
    # Line 168
    sub.d	$f13,$f13,$f6
    # Line 166
    add.d	$f14,$f14,$f8
    # Line 172
    sll	$a4,$s1,0x2
    sll	$a4,$a4,0x2
    # Line 168
    cvt.s.d	$f13,$f13
    # Line 170
    sll	$at,$s1,0x2
    addu	$at,$at,$s1
    # Line 166
    cvt.s.d	$f14,$f14
    # Line 170
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    # Line 172
    sub.d	$f11,$f11,$f0
    # Line 170
    mul.d	$f21,$f18,$f21
    lwc1	$f0,0($at)
    sub.d	$f12,$f12,$f7
    # Line 172
    addu	$a4,$a4,$a0
    # Line 170
    mul.d	$f1,$f1,$f4
    cvt.d.s	$f0,$f0
    add.d	$f12,$f12,$f2
    # Line 172
    lwc1	$f2,0($a4)
    # Line 170
    mul.d	$f0,$f0,$f4
    # Line 172
    ldc1	$f4,_lit8_4051800000000000
    cvt.d.s	$f2,$f2
    add.d	$f11,$f11,$f5
    mul.d	$f2,$f2,$f4
    sub.d	$f11,$f11,$f3
    # Line 170
    sub.d	$f12,$f12,$f3
    # Line 172
    add.d	$f11,$f11,$f2
    # Line 170
    add.d	$f12,$f12,$f0
    # Line 172
    sub.d	$f11,$f11,$f0
    # Line 170
    sub.d	$f12,$f12,$f1
    # Line 172
    add.d	$f11,$f11,$f27
    # Line 170
    add.d	$f12,$f12,$f25
    # Line 172
    sub.d	$f11,$f11,$f23
    # Line 170
    sub.d	$f12,$f12,$f21
    # Line 162
    swc1	$f19,4($sp)
    # Line 172
    add.d	$f11,$f11,$f18
    # Line 163
    swc1	$f17,8($sp)
    # Line 164
    swc1	$f16,12($sp)
    # Line 170
    cvt.s.d	$f12,$f12
    # Line 165
    swc1	$f15,16($sp)
    # Line 166
    swc1	$f14,20($sp)
    # Line 172
    cvt.s.d	$f11,$f11
    # Line 168
    swc1	$f13,24($sp)
    # Line 170
    swc1	$f12,28($sp)
    # Line 174
    b	.L0daa7848
    # Line 172
    swc1	$f11,32($sp)
.L0daa8114:
    # Line 182
    ldc1	$f19,_lit8_c034000000000000
    # Line 177
    sll	$v0,$s1,0x2
    addu	$v0,$v0,$a0
    lwc1	$f8,0($v0)
    # Line 182
    ldc1	$f6,_lit8_4056800000000000
    # Line 177
    cvt.d.s	$f8,$f8
    # Line 182
    mul.d	$f6,$f8,$f6
    # Line 179
    addu	$a4,$s1,$s1
    # Line 176
    sll	$v1,$s1,0x3
    addu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f31,0($v1)
    # Line 179
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    # Line 177
    cvt.d.s	$f0,$f31
    # Line 179
    lwc1	$f10,0($a4)
    mul.d	$f29,$f0,$f29
    ldc1	$f13,_lit8_4042000000000000
    cvt.d.s	$f10,$f10
    # Line 177
    lwc1	$f16,0($a0)
    # Line 179
    mul.d	$f18,$f10,$f13
    ldc1	$f23,_lit8_4035000000000000
    # Line 177
    cvt.d.s	$f16,$f16
    # Line 179
    mul.d	$f23,$f16,$f23
    # Line 177
    ldc1	$f2,_lit8_4022000000000000
    mul.d	$f17,$f8,$f2
    # Line 178
    ldc1	$f25,_lit8_401c000000000000
    mul.d	$f27,$f0,$f25
    # Line 179
    ldc1	$f12,_lit8_404b000000000000
    # Line 178
    sll	$at,$s1,0x3
    mul.d	$f25,$f16,$f25
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f1,0($at)
    # Line 179
    mul.d	$f11,$f8,$f12
    # Line 178
    cvt.d.s	$f1,$f1
    mul.d	$f2,$f1,$f2
    sub.d	$f25,$f25,$f17
    # Line 179
    sub.d	$f23,$f23,$f11
    # Line 178
    add.d	$f25,$f25,$f2
    # Line 180
    sll	$v1,$s1,0x3
    subu	$v1,$v1,$s1
    # Line 179
    add.d	$f23,$f23,$f18
    # Line 180
    ldc1	$f5,_lit8_4046800000000000
    sll	$v1,$v1,0x2
    # Line 178
    sub.d	$f25,$f25,$f27
    # Line 180
    mul.d	$f27,$f8,$f5
    addu	$v1,$v1,$a0
    lwc1	$f4,0($v1)
    # Line 179
    sub.d	$f23,$f23,$f2
    # Line 186
    mul.d	$f8,$f8,$f13
    # Line 180
    cvt.d.s	$f4,$f4
    # Line 179
    add.d	$f23,$f23,$f29
    # Line 180
    mul.d	$f29,$f4,$f13
    # Line 182
    mul.d	$f13,$f1,$f13
    # Line 180
    mul.d	$f21,$f16,$f21
    # Line 182
    ldc1	$f3,_lit8_4062000000000000
    mul.d	$f3,$f10,$f3
    mul.d	$f19,$f16,$f19
    # Line 180
    add.d	$f21,$f21,$f27
    # Line 177
    ldc1	$f27,_lit8_c020000000000000
    mul.d	$f27,$f16,$f27
    # Line 182
    add.d	$f19,$f19,$f6
    # Line 184
    mul.d	$f12,$f1,$f12
    # Line 182
    sub.d	$f19,$f19,$f3
    # Line 177
    add.d	$f27,$f27,$f17
    # Line 188
    sub.d	$f17,$f17,$f16
    # Line 180
    sub.d	$f21,$f21,$f18
    # Line 182
    ldc1	$f3,_lit8_4024000000000000
    # Line 188
    sub.d	$f17,$f17,$f18
    # Line 184
    mul.d	$f18,$f16,$f3
    # Line 182
    mul.d	$f3,$f0,$f3
    # Line 178
    cvt.s.d	$f25,$f25
    # Line 179
    cvt.s.d	$f23,$f23
    # Line 180
    mul.d	$f5,$f1,$f5
    # Line 177
    sub.d	$f27,$f27,$f0
    # Line 182
    ldc1	$f9,_lit8_4055000000000000
    # Line 184
    ldc1	$f14,_lit8_405b000000000000
    sll	$v0,$s1,0x2
    subu	$v0,$v0,$s1
    # Line 180
    add.d	$f21,$f21,$f29
    # Line 184
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    # Line 180
    sub.d	$f21,$f21,$f5
    # Line 184
    lwc1	$f5,0($v0)
    mul.d	$f10,$f10,$f14
    # Line 182
    sll	$at,$s1,0x2
    # Line 184
    cvt.d.s	$f5,$f5
    # Line 182
    subu	$at,$at,$s1
    # Line 184
    mul.d	$f5,$f5,$f9
    # Line 182
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f7,0($at)
    cvt.d.s	$f7,$f7
    # Line 177
    cvt.s.d	$f27,$f27
    # Line 182
    mul.d	$f9,$f7,$f9
    # Line 184
    sub.d	$f18,$f18,$f11
    mul.d	$f6,$f4,$f14
    add.d	$f18,$f18,$f10
    # Line 182
    add.d	$f19,$f19,$f9
    # Line 184
    sub.d	$f18,$f18,$f9
    # Line 182
    sub.d	$f19,$f19,$f29
    # Line 180
    ldc1	$f11,_lit8_402e000000000000
    # Line 184
    add.d	$f18,$f18,$f5
    # Line 180
    mul.d	$f11,$f0,$f11
    # Line 184
    sub.d	$f18,$f18,$f6
    # Line 186
    ldc1	$f6,_lit8_4014000000000000
    # Line 182
    add.d	$f19,$f19,$f13
    # Line 186
    mul.d	$f16,$f16,$f6
    # Line 180
    add.d	$f21,$f21,$f11
    # Line 188
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$s1
    # Line 182
    sub.d	$f19,$f19,$f3
    # Line 188
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    # Line 180
    cvt.s.d	$f21,$f21
    # Line 186
    ldc1	$f11,_lit8_4065000000000000
    sll	$v1,$s1,0x2
    # Line 182
    cvt.s.d	$f19,$f19
    # Line 186
    mul.d	$f7,$f7,$f11
    # Line 188
    lwc1	$f6,0($a4)
    # Line 184
    add.d	$f18,$f18,$f12
    # Line 186
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    # Line 188
    cvt.d.s	$f6,$f6
    # Line 186
    ldc1	$f12,_lit8_405f800000000000
    sub.d	$f16,$f16,$f8
    lwc1	$f8,0($v1)
    # Line 188
    mul.d	$f6,$f6,$f12
    # Line 186
    cvt.d.s	$f8,$f8
    add.d	$f16,$f16,$f10
    mul.d	$f8,$f8,$f12
    sub.d	$f16,$f16,$f7
    ldc1	$f7,_lit8_4052000000000000
    # Line 188
    add.d	$f17,$f17,$f9
    # Line 186
    mul.d	$f4,$f4,$f7
    add.d	$f16,$f16,$f8
    # Line 188
    sub.d	$f17,$f17,$f8
    # Line 186
    sub.d	$f16,$f16,$f5
    # Line 188
    add.d	$f17,$f17,$f6
    # Line 186
    add.d	$f16,$f16,$f4
    ldc1	$f4,_lit8_403b000000000000
    # Line 188
    sub.d	$f17,$f17,$f5
    # Line 186
    mul.d	$f1,$f1,$f4
    # Line 184
    sub.d	$f18,$f18,$f3
    # Line 188
    add.d	$f17,$f17,$f29
    # Line 184
    cvt.s.d	$f18,$f18
    # Line 186
    ldc1	$f29,_lit8_4010000000000000
    # Line 188
    sub.d	$f17,$f17,$f2
    # Line 186
    mul.d	$f29,$f0,$f29
    sub.d	$f16,$f16,$f1
    # Line 188
    add.d	$f17,$f17,$f0
    # Line 176
    swc1	$f31,4($sp)
    # Line 178
    swc1	$f25,12($sp)
    # Line 186
    add.d	$f16,$f16,$f29
    # Line 179
    swc1	$f23,16($sp)
    # Line 177
    swc1	$f27,8($sp)
    # Line 188
    cvt.s.d	$f17,$f17
    # Line 180
    swc1	$f21,20($sp)
    # Line 182
    swc1	$f19,24($sp)
    # Line 186
    cvt.s.d	$f16,$f16
    # Line 184
    swc1	$f18,28($sp)
    # Line 188
    swc1	$f17,36($sp)
    # Line 190
    b	.L0daa7848
    # Line 186
    swc1	$f16,32($sp)
.L0daa83b0:
    # Line 193
    lwc1	$f2,0($a0)
    # Line 200
    ldc1	$f11,_lit8_4034000000000000
    # Line 193
    cvt.d.s	$f2,$f2
    # Line 200
    mul.d	$f11,$f2,$f11
    # Line 196
    ldc1	$f4,_lit8_4035000000000000
    # Line 194
    sll	$a4,$s1,0x3
    addu	$a4,$a4,$s1
    sll	$a4,$a4,0x2
    # Line 192
    sll	$at,$s1,0x2
    addu	$at,$at,$s1
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    # Line 193
    sll	$v1,$s1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f7,0($v1)
    # Line 195
    mul.d	$f14,$f2,$f14
    ldc1	$f18,_lit8_4051800000000000
    # Line 193
    cvt.d.s	$f7,$f7
    lwc1	$f16,0($at)
    # Line 195
    mul.d	$f18,$f7,$f18
    # Line 194
    addu	$a4,$a4,$a0
    # Line 193
    cvt.d.s	$f16,$f16
    # Line 194
    lwc1	$f23,0($a4)
    # Line 196
    mul.d	$f4,$f16,$f4
    # Line 198
    ldc1	$f0,_lit8_4049000000000000
    # Line 194
    cvt.d.s	$f23,$f23
    # Line 198
    mul.d	$f0,$f23,$f0
    # Line 196
    ldc1	$f3,_lit8_404e000000000000
    # Line 195
    sub.d	$f14,$f14,$f18
    # Line 196
    mul.d	$f18,$f7,$f3
    mul.d	$f3,$f23,$f3
    # Line 198
    mul.d	$f12,$f2,$f12
    # Line 195
    ldc1	$f29,_lit8_401c000000000000
    mul.d	$f29,$f16,$f29
    # Line 193
    ldc1	$f1,_lit8_4024000000000000
    mul.d	$f8,$f7,$f1
    # Line 194
    ldc1	$f15,_lit8_4020000000000000
    mul.d	$f27,$f16,$f15
    mul.d	$f15,$f2,$f15
    mul.d	$f21,$f23,$f1
    # Line 198
    ldc1	$f31,_lit8_406c200000000000
    # Line 195
    addu	$v0,$s1,$s1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f17,0($v0)
    # Line 194
    sub.d	$f15,$f15,$f8
    # Line 196
    mul.d	$f13,$f2,$f13
    # Line 195
    ldc1	$f25,_lit8_4046800000000000
    cvt.d.s	$f17,$f17
    # Line 194
    add.d	$f15,$f15,$f21
    # Line 195
    mul.d	$f19,$f17,$f25
    # Line 196
    sll	$a4,$s1,0x3
    sll	$a4,$a4,0x2
    # Line 194
    sub.d	$f15,$f15,$f27
    # Line 198
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    # Line 196
    add.d	$f13,$f13,$f18
    # Line 198
    ldc1	$f18,_lit8_4062c00000000000
    sll	$v1,$v1,0x2
    # Line 195
    add.d	$f14,$f14,$f19
    # Line 198
    mul.d	$f18,$f7,$f18
    addu	$v1,$v1,$a0
    lwc1	$f5,0($v1)
    # Line 195
    sub.d	$f14,$f14,$f21
    # Line 198
    mul.d	$f31,$f17,$f31
    # Line 196
    addu	$a4,$a4,$a0
    # Line 198
    cvt.d.s	$f5,$f5
    # Line 195
    add.d	$f14,$f14,$f29
    # Line 198
    ldc1	$f29,_lit8_405e000000000000
    # Line 196
    lwc1	$f27,0($a4)
    # Line 198
    add.d	$f12,$f12,$f18
    mul.d	$f18,$f5,$f29
    # Line 196
    cvt.d.s	$f27,$f27
    sub.d	$f13,$f13,$f19
    mul.d	$f25,$f27,$f25
    # Line 198
    sub.d	$f12,$f12,$f31
    mul.d	$f31,$f16,$f10
    add.d	$f12,$f12,$f18
    # Line 196
    add.d	$f13,$f13,$f25
    # Line 198
    sub.d	$f12,$f12,$f25
    # Line 196
    sub.d	$f13,$f13,$f3
    # Line 198
    add.d	$f12,$f12,$f0
    # Line 200
    ldc1	$f0,_lit8_4059000000000000
    # Line 196
    add.d	$f13,$f13,$f4
    # Line 200
    mul.d	$f6,$f7,$f0
    ldc1	$f4,_lit8_4066800000000000
    # Line 198
    sub.d	$f12,$f12,$f31
    # Line 200
    mul.d	$f31,$f17,$f4
    # Line 204
    ldc1	$f9,_lit8_c014000000000000
    # Line 200
    sll	$v0,$s1,0x3
    sub.d	$f11,$f11,$f6
    subu	$v0,$v0,$s1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    add.d	$f11,$f11,$f31
    lwc1	$f31,0($v0)
    # Line 204
    mul.d	$f9,$f2,$f9
    # Line 200
    cvt.d.s	$f31,$f31
    mul.d	$f29,$f31,$f29
    mul.d	$f4,$f27,$f4
    sub.d	$f11,$f11,$f18
    # Line 202
    mul.d	$f10,$f2,$f10
    # Line 200
    add.d	$f11,$f11,$f29
    mul.d	$f0,$f23,$f0
    sub.d	$f11,$f11,$f4
    # Line 202
    ldc1	$f4,_lit8_4070e00000000000
    mul.d	$f4,$f17,$f4
    # Line 200
    add.d	$f11,$f11,$f0
    # Line 204
    ldc1	$f0,_lit8_4044000000000000
    # Line 202
    sub.d	$f10,$f10,$f6
    # Line 204
    mul.d	$f7,$f7,$f0
    # Line 202
    ldc1	$f6,_lit8_4060e00000000000
    # Line 204
    mul.d	$f17,$f17,$f6
    # Line 202
    add.d	$f10,$f10,$f4
    ldc1	$f4,_lit8_4076800000000000
    # Line 204
    add.d	$f9,$f9,$f7
    # Line 202
    mul.d	$f4,$f5,$f4
    # Line 204
    sub.d	$f9,$f9,$f17
    # Line 193
    ldc1	$f17,_lit8_c022000000000000
    mul.d	$f17,$f2,$f17
    # Line 202
    sub.d	$f10,$f10,$f4
    # Line 204
    ldc1	$f4,_lit8_406e000000000000
    mul.d	$f5,$f5,$f4
    # Line 193
    add.d	$f17,$f17,$f8
    # Line 202
    sll	$a4,$s1,0x2
    sll	$a4,$a4,0x2
    # Line 206
    sub.d	$f8,$f8,$f2
    # Line 202
    addu	$a4,$a4,$a0
    lwc1	$f2,0($a4)
    # Line 204
    add.d	$f9,$f9,$f5
    # Line 202
    mul.d	$f1,$f16,$f1
    ldc1	$f5,_lit8_406a400000000000
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f5
    # Line 194
    cvt.s.d	$f15,$f15
    # Line 195
    cvt.s.d	$f14,$f14
    # Line 196
    cvt.s.d	$f13,$f13
    # Line 198
    cvt.s.d	$f12,$f12
    # Line 202
    add.d	$f10,$f10,$f2
    mul.d	$f27,$f27,$f6
    sub.d	$f10,$f10,$f29
    # Line 206
    sub.d	$f8,$f8,$f19
    sll	$v0,$s1,0x2
    addu	$v0,$v0,$s1
    # Line 202
    add.d	$f10,$f10,$f27
    # Line 206
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    add.d	$f8,$f8,$f18
    lwc1	$f18,0($v0)
    # Line 204
    mul.d	$f31,$f31,$f4
    # Line 206
    ldc1	$f4,_lit8_406f800000000000
    cvt.d.s	$f18,$f18
    # Line 202
    sub.d	$f10,$f10,$f3
    # Line 206
    mul.d	$f18,$f18,$f4
    sub.d	$f8,$f8,$f2
    # Line 204
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    sub.d	$f9,$f9,$f2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    # Line 206
    add.d	$f8,$f8,$f18
    # Line 200
    lwc1	$f2,_lit_41a00000
    lwc1	$f18,0($at)
    # Line 193
    sub.d	$f17,$f17,$f16
    # Line 204
    addu	$v1,$v1,$a0
    # Line 200
    mul.s	$f2,$f18,$f2
    # Line 202
    add.d	$f10,$f10,$f1
    # Line 204
    lwc1	$f19,0($v1)
    cvt.d.s	$f19,$f19
    # Line 193
    cvt.s.d	$f17,$f17
    # Line 204
    mul.d	$f19,$f19,$f5
    # Line 202
    cvt.s.d	$f10,$f10
    # Line 204
    mul.d	$f23,$f23,$f0
    # Line 200
    cvt.d.s	$f2,$f2
    sub.d	$f11,$f11,$f2
    # Line 204
    add.d	$f9,$f9,$f19
    # Line 200
    cvt.s.d	$f11,$f11
    # Line 204
    sub.d	$f9,$f9,$f31
    # Line 206
    sub.d	$f8,$f8,$f19
    # Line 204
    add.d	$f9,$f9,$f27
    ldc1	$f19,_lit8_4014000000000000
    # Line 206
    add.d	$f8,$f8,$f29
    # Line 204
    mul.d	$f19,$f16,$f19
    # Line 206
    sub.d	$f8,$f8,$f25
    # Line 204
    sub.d	$f9,$f9,$f23
    # Line 206
    add.d	$f8,$f8,$f21
    # Line 194
    swc1	$f15,12($sp)
    # Line 204
    add.d	$f9,$f9,$f19
    # Line 195
    swc1	$f14,16($sp)
    # Line 196
    swc1	$f13,20($sp)
    # Line 206
    sub.d	$f8,$f8,$f16
    # Line 198
    swc1	$f12,24($sp)
    # Line 193
    swc1	$f17,8($sp)
    # Line 204
    cvt.s.d	$f9,$f9
    # Line 192
    swc1	$f18,4($sp)
    # Line 202
    swc1	$f10,32($sp)
    # Line 206
    cvt.s.d	$f8,$f8
    # Line 200
    swc1	$f11,28($sp)
    # Line 204
    swc1	$f9,36($sp)
    # Line 209
    b	.L0daa7848
    # Line 206
    swc1	$f8,40($sp)
.L0daa86d8:
    # Line 213
    sll	$v0,$s1,0x2
    addu	$v0,$v0,$s1
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f6,0($v0)
    # Line 217
    ldc1	$f11,_lit8_4050800000000000
    # Line 213
    cvt.d.s	$f6,$f6
    # Line 212
    lwc1	$f23,0($a0)
    # Line 217
    mul.d	$f11,$f6,$f11
    # Line 212
    cvt.d.s	$f23,$f23
    # Line 214
    ldc1	$f10,_lit8_4020000000000000
    # Line 217
    mul.d	$f31,$f23,$f31
    # Line 214
    addu	$at,$s1,$s1
    # Line 211
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    # Line 212
    lwc1	$f14,0($v1)
    # Line 214
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    # Line 212
    cvt.d.s	$f5,$f14
    # Line 214
    lwc1	$f13,0($at)
    mul.d	$f10,$f5,$f10
    ldc1	$f2,_lit8_404b800000000000
    cvt.d.s	$f13,$f13
    sdc1	$f20,104($sp)
    mul.d	$f20,$f13,$f2
    # Line 212
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$a0
    lwc1	$f17,0($a4)
    # Line 214
    mul.d	$f1,$f23,$f1
    # Line 212
    ldc1	$f7,_lit8_4026000000000000
    cvt.d.s	$f17,$f17
    mul.d	$f21,$f17,$f7
    # Line 213
    ldc1	$f3,_lit8_4022000000000000
    mul.d	$f8,$f5,$f3
    mul.d	$f3,$f23,$f3
    mul.d	$f7,$f6,$f7
    # Line 214
    mul.d	$f4,$f17,$f4
    # Line 215
    ldc1	$f0,_lit8_c03c000000000000
    # Line 213
    sub.d	$f3,$f3,$f21
    # Line 215
    mul.d	$f0,$f23,$f0
    sll	$a4,$s1,0x3
    addu	$a4,$a4,$s1
    # Line 213
    add.d	$f3,$f3,$f7
    # Line 215
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    # Line 214
    sub.d	$f1,$f1,$f4
    # Line 215
    ldc1	$f4,_lit8_4053400000000000
    lwc1	$f9,0($a4)
    # Line 213
    sub.d	$f3,$f3,$f8
    # Line 215
    mul.d	$f8,$f17,$f4
    cvt.d.s	$f9,$f9
    # Line 214
    add.d	$f1,$f1,$f20
    # Line 215
    mul.d	$f2,$f9,$f2
    # Line 214
    sub.d	$f1,$f1,$f7
    # Line 215
    add.d	$f0,$f0,$f8
    mul.d	$f4,$f6,$f4
    # Line 217
    ldc1	$f8,_lit8_406ce00000000000
    # Line 215
    sub.d	$f0,$f0,$f20
    # Line 217
    mul.d	$f8,$f17,$f8
    # Line 215
    add.d	$f0,$f0,$f2
    # Line 217
    sll	$v0,$s1,0x2
    subu	$v0,$v0,$s1
    # Line 214
    add.d	$f1,$f1,$f10
    # Line 217
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    # Line 215
    sub.d	$f0,$f0,$f4
    # Line 217
    mul.d	$f4,$f13,$f15
    # Line 215
    ldc1	$f10,_lit8_403c000000000000
    # Line 217
    lwc1	$f16,0($v0)
    add.d	$f31,$f31,$f8
    # Line 215
    mul.d	$f10,$f5,$f10
    # Line 217
    ldc1	$f8,_lit8_4064a00000000000
    cvt.d.s	$f16,$f16
    mul.d	$f18,$f16,$f8
    sub.d	$f31,$f31,$f4
    # Line 215
    add.d	$f0,$f0,$f10
    # Line 217
    ldc1	$f10,_lit8_4035000000000000
    add.d	$f31,$f31,$f18
    mul.d	$f10,$f5,$f10
    # Line 219
    ldc1	$f27,_lit8_4041800000000000
    # Line 217
    sub.d	$f31,$f31,$f2
    # Line 219
    mul.d	$f27,$f23,$f27
    # Line 217
    add.d	$f31,$f31,$f11
    # Line 219
    mul.d	$f29,$f17,$f8
    ldc1	$f11,_lit8_4071300000000000
    # Line 217
    sub.d	$f31,$f31,$f10
    # Line 219
    mul.d	$f10,$f13,$f11
    sll	$at,$s1,0x3
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f12,0($at)
    sub.d	$f29,$f27,$f29
    cvt.d.s	$f12,$f12
    add.d	$f29,$f29,$f10
    mul.d	$f10,$f12,$f8
    mul.d	$f11,$f9,$f11
    sub.d	$f29,$f29,$f18
    mul.d	$f8,$f6,$f8
    add.d	$f29,$f29,$f10
    sub.d	$f29,$f29,$f11
    # Line 221
    ldc1	$f11,_lit8_406b800000000000
    # Line 219
    add.d	$f29,$f29,$f8
    # Line 221
    mul.d	$f8,$f17,$f11
    sub.d	$f27,$f27,$f8
    ldc1	$f8,_lit8_4081300000000000
    mul.d	$f8,$f13,$f8
    add.d	$f27,$f27,$f8
    ldc1	$f8,_lit8_4084a00000000000
    mul.d	$f8,$f16,$f8
    # Line 219
    lwc1	$f19,_lit_420c0000
    mul.s	$f14,$f14,$f19
    # Line 221
    sll	$a4,$s1,0x2
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sub.d	$f27,$f27,$f8
    lwc1	$f8,0($a4)
    # Line 219
    cvt.d.s	$f14,$f14
    # Line 221
    cvt.d.s	$f8,$f8
    # Line 219
    sub.d	$f29,$f29,$f14
    # Line 221
    mul.d	$f14,$f8,$f15
    mul.d	$f11,$f9,$f11
    add.d	$f27,$f27,$f14
    sub.d	$f27,$f27,$f10
    # Line 223
    mul.d	$f25,$f23,$f25
    # Line 221
    ldc1	$f19,_lit8_405b800000000000
    add.d	$f27,$f27,$f11
    # Line 223
    mul.d	$f11,$f17,$f19
    # Line 221
    mul.d	$f19,$f6,$f19
    # Line 223
    add.d	$f25,$f25,$f11
    # Line 221
    ldc1	$f11,_lit8_4034000000000000
    sub.d	$f27,$f27,$f19
    mul.d	$f11,$f5,$f11
    # Line 223
    sll	$v0,$s1,0x3
    subu	$v0,$v0,$s1
    sub.d	$f25,$f25,$f4
    ldc1	$f4,_lit8_407ef00000000000
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    mul.d	$f16,$f16,$f4
    # Line 221
    add.d	$f27,$f27,$f11
    # Line 223
    lwc1	$f11,0($v0)
    cvt.d.s	$f11,$f11
    mul.d	$f11,$f11,$f15
    add.d	$f25,$f25,$f16
    mul.d	$f4,$f12,$f4
    sub.d	$f25,$f25,$f14
    sdc1	$f22,112($sp)
    # Line 225
    ldc1	$f22,_lit8_c018000000000000
    # Line 223
    add.d	$f25,$f25,$f11
    # Line 225
    mul.d	$f22,$f23,$f22
    # Line 223
    sub.d	$f25,$f25,$f4
    # Line 212
    ldc1	$f4,_lit8_c024000000000000
    mul.d	$f4,$f23,$f4
    # Line 228
    sub.d	$f23,$f23,$f21
    add.d	$f23,$f23,$f20
    # Line 225
    ldc1	$f20,_lit8_404b800000000000
    mul.d	$f17,$f17,$f20
    # Line 228
    sub.d	$f23,$f23,$f18
    # Line 225
    ldc1	$f18,_lit8_406b800000000000
    mul.d	$f13,$f13,$f18
    # Line 214
    cvt.s.d	$f1,$f1
    # Line 213
    cvt.s.d	$f3,$f3
    # Line 215
    cvt.s.d	$f0,$f0
    # Line 217
    cvt.s.d	$f31,$f31
    # Line 225
    add.d	$f22,$f22,$f17
    # Line 219
    cvt.s.d	$f29,$f29
    # Line 225
    sub.d	$f22,$f22,$f13
    # Line 221
    cvt.s.d	$f27,$f27
    # Line 228
    sll	$at,$s1,0x2
    subu	$at,$at,$s1
    # Line 225
    add.d	$f22,$f22,$f16
    ldc1	$f16,_lit8_4084a00000000000
    # Line 228
    sll	$at,$at,0x1
    # Line 212
    add.d	$f4,$f4,$f21
    # Line 225
    mul.d	$f8,$f8,$f16
    # Line 228
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    # Line 212
    sub.d	$f4,$f4,$f5
    # Line 225
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$s1
    sll	$a4,$a4,0x2
    # Line 212
    cvt.s.d	$f4,$f4
    # Line 223
    mul.d	$f21,$f9,$f15
    # Line 225
    addu	$a4,$a4,$a0
    # Line 228
    add.d	$f23,$f23,$f14
    # Line 225
    lwc1	$f14,0($a4)
    mul.d	$f12,$f12,$f15
    ldc1	$f17,_lit8_407ce00000000000
    cvt.d.s	$f14,$f14
    sub.d	$f22,$f22,$f8
    mul.d	$f14,$f14,$f17
    # Line 223
    ldc1	$f8,_lit8_402e000000000000
    add.d	$f25,$f25,$f21
    # Line 228
    lwc1	$f13,0($at)
    # Line 223
    mul.d	$f8,$f5,$f8
    # Line 228
    cvt.d.s	$f13,$f13
    # Line 223
    sub.d	$f25,$f25,$f19
    # Line 228
    mul.d	$f13,$f13,$f17
    sub.d	$f23,$f23,$f14
    # Line 225
    add.d	$f22,$f22,$f14
    # Line 228
    add.d	$f23,$f23,$f13
    # Line 225
    ldc1	$f13,_lit8_4064a00000000000
    sub.d	$f22,$f22,$f11
    mul.d	$f9,$f9,$f13
    add.d	$f22,$f22,$f12
    # Line 228
    sub.d	$f23,$f23,$f11
    # Line 225
    sub.d	$f22,$f22,$f9
    ldc1	$f9,_lit8_4046000000000000
    # Line 228
    add.d	$f23,$f23,$f10
    # Line 225
    mul.d	$f6,$f6,$f9
    # Line 223
    add.d	$f25,$f25,$f8
    # Line 228
    sub.d	$f23,$f23,$f2
    # Line 223
    cvt.s.d	$f25,$f25
    # Line 225
    ldc1	$f2,_lit8_4014000000000000
    # Line 228
    add.d	$f23,$f23,$f7
    # Line 225
    mul.d	$f2,$f5,$f2
    # Line 213
    swc1	$f3,12($sp)
    # Line 225
    add.d	$f22,$f22,$f6
    # Line 214
    swc1	$f1,16($sp)
    # Line 215
    swc1	$f0,20($sp)
    # Line 228
    sub.d	$f23,$f23,$f5
    # Line 217
    swc1	$f31,24($sp)
    # Line 219
    swc1	$f29,28($sp)
    # Line 225
    sub.d	$f22,$f22,$f2
    # Line 221
    swc1	$f27,32($sp)
    ldc1	$f20,104($sp)
    # Line 228
    cvt.s.d	$f23,$f23
    # Line 212
    swc1	$f4,8($sp)
    # Line 211
    lwc1	$f6,0($v1)
    # Line 225
    cvt.s.d	$f22,$f22
    # Line 223
    swc1	$f25,36($sp)
    # Line 228
    swc1	$f23,44($sp)
    # Line 211
    swc1	$f6,4($sp)
    # Line 225
    swc1	$f22,40($sp)
    # Line 231
    b	.L0daa7848
    ldc1	$f22,112($sp)
.L0daa8a9c:
    # Line 233
    subu	$a4,$a4,$s1
    sll	$a4,$a4,0x2
    sdc1	$f22,112($sp)
    # Line 234
    lwc1	$f22,0($a0)
    # Line 233
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    # Line 234
    cvt.d.s	$f22,$f22
    lwc1	$f11,0($a4)
    # Line 241
    mul.d	$f27,$f22,$f27
    # Line 237
    ldc1	$f10,_lit8_4042000000000000
    # Line 234
    cvt.d.s	$f31,$f11
    # Line 237
    mul.d	$f10,$f31,$f10
    sdc1	$f28,136($sp)
    # Line 239
    ldc1	$f28,_lit8_c055000000000000
    # Line 234
    sll	$v0,$s1,0x2
    addu	$v0,$v0,$a0
    lwc1	$f19,0($v0)
    # Line 239
    mul.d	$f28,$f22,$f28
    # Line 234
    cvt.d.s	$f19,$f19
    # Line 239
    mul.d	$f9,$f19,$f9
    # Line 236
    ldc1	$f0,_lit8_4046800000000000
    mul.d	$f0,$f22,$f0
    # Line 234
    ldc1	$f4,_lit8_4028000000000000
    # Line 235
    mul.d	$f1,$f22,$f3
    subu	$at,$at,$s1
    sll	$at,$at,0x2
    subu	$at,$at,$s1
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f5,0($at)
    # Line 234
    mul.d	$f17,$f19,$f4
    # Line 235
    cvt.d.s	$f5,$f5
    mul.d	$f4,$f5,$f4
    # Line 236
    ldc1	$f6,_lit8_4050800000000000
    # Line 237
    ldc1	$f29,_lit8_c042000000000000
    # Line 236
    addu	$v1,$s1,$s1
    mul.d	$f2,$f19,$f2
    sll	$v1,$v1,0x2
    # Line 237
    sll	$v0,$s1,0x2
    # Line 235
    sub.d	$f1,$f1,$f17
    mul.d	$f3,$f31,$f3
    # Line 236
    addu	$v1,$v1,$a0
    lwc1	$f21,0($v1)
    # Line 235
    add.d	$f1,$f1,$f4
    # Line 237
    addu	$v0,$v0,$s1
    sll	$v0,$v0,0x1
    # Line 236
    sub.d	$f0,$f0,$f2
    # Line 237
    mul.d	$f29,$f22,$f29
    ldc1	$f2,_lit8_4058000000000000
    # Line 235
    sub.d	$f1,$f1,$f3
    # Line 237
    sll	$v0,$v0,0x2
    mul.d	$f3,$f19,$f2
    # Line 236
    cvt.d.s	$f21,$f21
    # Line 237
    addu	$v0,$v0,$a0
    lwc1	$f7,0($v0)
    # Line 236
    mul.d	$f12,$f21,$f6
    # Line 237
    cvt.d.s	$f7,$f7
    # Line 239
    add.d	$f28,$f28,$f9
    # Line 237
    mul.d	$f6,$f7,$f6
    add.d	$f29,$f29,$f3
    # Line 236
    mul.d	$f8,$f31,$f8
    # Line 237
    sub.d	$f29,$f29,$f12
    mul.d	$f2,$f5,$f2
    add.d	$f29,$f29,$f6
    # Line 236
    add.d	$f0,$f0,$f12
    # Line 239
    ldc1	$f9,_lit8_4055000000000000
    sll	$at,$s1,0x2
    # Line 237
    sub.d	$f29,$f29,$f2
    # Line 239
    subu	$at,$at,$s1
    ldc1	$f2,_lit8_407ce00000000000
    # Line 236
    sub.d	$f0,$f0,$f4
    # Line 239
    sll	$at,$at,0x2
    mul.d	$f2,$f21,$f2
    addu	$at,$at,$a0
    # Line 236
    add.d	$f0,$f0,$f8
    # Line 239
    lwc1	$f3,0($at)
    mul.d	$f9,$f5,$f9
    ldc1	$f8,_lit8_406b800000000000
    cvt.d.s	$f3,$f3
    mul.d	$f13,$f3,$f8
    sub.d	$f28,$f28,$f2
    # Line 237
    add.d	$f29,$f29,$f10
    # Line 239
    ldc1	$f10,_lit8_403c000000000000
    add.d	$f28,$f28,$f13
    mul.d	$f10,$f31,$f10
    # Line 241
    ldc1	$f14,_lit8_406f800000000000
    sll	$v1,$s1,0x3
    # Line 239
    sub.d	$f28,$f28,$f6
    # Line 241
    mul.d	$f15,$f19,$f14
    ldc1	$f2,_lit8_4078c00000000000
    sdc1	$f26,128($sp)
    # Line 239
    add.d	$f28,$f28,$f9
    # Line 241
    mul.d	$f9,$f21,$f2
    # Line 243
    ldc1	$f26,_lit8_4051800000000000
    # Line 241
    addu	$v1,$v1,$s1
    # Line 239
    sub.d	$f28,$f28,$f10
    # Line 243
    mul.d	$f26,$f22,$f26
    ldc1	$f10,_lit8_407a400000000000
    # Line 241
    sub.d	$f27,$f27,$f15
    sll	$v1,$v1,0x2
    # Line 243
    mul.d	$f10,$f19,$f10
    # Line 241
    addu	$v1,$v1,$a0
    add.d	$f27,$f27,$f9
    lwc1	$f9,0($v1)
    mul.d	$f2,$f7,$f2
    cvt.d.s	$f9,$f9
    mul.d	$f8,$f9,$f8
    # Line 243
    sub.d	$f26,$f26,$f10
    ldc1	$f10,_lit8_408ef00000000000
    # Line 241
    sub.d	$f27,$f27,$f13
    # Line 243
    mul.d	$f10,$f21,$f10
    # Line 241
    add.d	$f27,$f27,$f8
    mul.d	$f14,$f5,$f14
    sub.d	$f27,$f27,$f2
    # Line 243
    add.d	$f26,$f26,$f10
    ldc1	$f10,_lit8_4091300000000000
    # Line 241
    add.d	$f27,$f27,$f14
    # Line 243
    mul.d	$f10,$f3,$f10
    # Line 241
    lwc1	$f14,_lit_42600000
    mul.s	$f11,$f11,$f14
    # Line 243
    sll	$v0,$s1,0x2
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f18,0($v0)
    sub.d	$f26,$f26,$f10
    ldc1	$f10,_lit8_407ef00000000000
    cvt.d.s	$f18,$f18
    # Line 241
    cvt.d.s	$f11,$f11
    # Line 243
    mul.d	$f15,$f18,$f10
    # Line 241
    sub.d	$f27,$f27,$f11
    # Line 243
    ldc1	$f11,_lit8_4074a00000000000
    mul.d	$f11,$f7,$f11
    add.d	$f26,$f26,$f15
    sub.d	$f26,$f26,$f8
    add.d	$f26,$f26,$f11
    mul.d	$f11,$f5,$f16
    # Line 245
    ldc1	$f25,_lit8_c041800000000000
    mul.d	$f25,$f22,$f25
    # Line 243
    sub.d	$f26,$f26,$f11
    # Line 245
    mul.d	$f11,$f19,$f23
    sdc1	$f20,104($sp)
    ldc1	$f20,_lit8_4084a00000000000
    sdc1	$f24,120($sp)
    mul.d	$f14,$f21,$f20
    ldc1	$f24,_lit8_408b800000000000
    add.d	$f25,$f25,$f11
    mul.d	$f11,$f3,$f24
    sub.d	$f25,$f25,$f14
    sll	$at,$s1,0x3
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    add.d	$f25,$f25,$f11
    lwc1	$f11,0($at)
    cvt.d.s	$f11,$f11
    mul.d	$f10,$f11,$f10
    mul.d	$f24,$f9,$f24
    sub.d	$f25,$f25,$f15
    add.d	$f25,$f25,$f10
    sub.d	$f25,$f25,$f24
    mul.d	$f24,$f7,$f20
    # Line 247
    mul.d	$f16,$f19,$f16
    # Line 245
    add.d	$f25,$f25,$f24
    # Line 247
    ldc1	$f24,_lit8_c035000000000000
    mul.d	$f24,$f22,$f24
    add.d	$f24,$f24,$f16
    sub.d	$f24,$f24,$f14
    ldc1	$f14,_lit8_4094a00000000000
    mul.d	$f14,$f3,$f14
    # Line 245
    mul.d	$f23,$f5,$f23
    # Line 243
    ldc1	$f16,_lit8_4041800000000000
    mul.d	$f16,$f31,$f16
    # Line 247
    add.d	$f24,$f24,$f14
    ldc1	$f14,_lit8_4097340000000000
    # Line 245
    sub.d	$f25,$f25,$f23
    # Line 247
    mul.d	$f14,$f18,$f14
    # Line 243
    add.d	$f26,$f26,$f16
    # Line 247
    sll	$v1,$s1,0x2
    addu	$v1,$v1,$s1
    # Line 245
    add.d	$f25,$f25,$f16
    # Line 247
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    sub.d	$f24,$f24,$f14
    lwc1	$f14,0($v1)
    ldc1	$f16,_lit8_4088c00000000000
    cvt.d.s	$f14,$f14
    mul.d	$f14,$f14,$f16
    mul.d	$f9,$f9,$f20
    add.d	$f24,$f24,$f14
    sub.d	$f24,$f24,$f10
    add.d	$f24,$f24,$f9
    sub.d	$f24,$f24,$f2
    ldc1	$f2,_lit8_405e000000000000
    mul.d	$f2,$f5,$f2
    # Line 250
    ldc1	$f23,_lit8_404e000000000000
    mul.d	$f19,$f19,$f23
    mul.d	$f5,$f5,$f23
    # Line 247
    add.d	$f24,$f24,$f2
    # Line 250
    ldc1	$f2,_lit8_4018000000000000
    mul.d	$f23,$f22,$f2
    sub.d	$f23,$f23,$f19
    ldc1	$f19,_lit8_4070800000000000
    mul.d	$f21,$f21,$f19
    mul.d	$f3,$f3,$f20
    # Line 247
    ldc1	$f20,_lit8_402e000000000000
    mul.d	$f20,$f31,$f20
    # Line 250
    add.d	$f23,$f23,$f21
    mul.d	$f2,$f31,$f2
    sub.d	$f23,$f23,$f3
    # Line 234
    ldc1	$f3,_lit8_c026000000000000
    mul.d	$f3,$f22,$f3
    # Line 235
    cvt.s.d	$f1,$f1
    # Line 236
    cvt.s.d	$f0,$f0
    # Line 237
    cvt.s.d	$f29,$f29
    # Line 239
    cvt.s.d	$f28,$f28
    # Line 241
    cvt.s.d	$f27,$f27
    # Line 243
    cvt.s.d	$f26,$f26
    # Line 247
    sub.d	$f24,$f24,$f20
    # Line 245
    cvt.s.d	$f25,$f25
    # Line 247
    cvt.s.d	$f24,$f24
    # Line 250
    mul.d	$f7,$f7,$f19
    sll	$v0,$s1,0x3
    subu	$v0,$v0,$s1
    # Line 234
    add.d	$f3,$f3,$f17
    # Line 250
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    # Line 253
    sub.d	$f22,$f22,$f17
    # Line 250
    ldc1	$f17,_lit8_408ef00000000000
    # Line 253
    sll	$at,$s1,0x2
    # Line 234
    sub.d	$f3,$f3,$f31
    # Line 250
    mul.d	$f11,$f11,$f17
    # Line 253
    subu	$at,$at,$s1
    add.d	$f22,$f22,$f12
    # Line 250
    lwc1	$f12,0($v0)
    # Line 253
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    # Line 250
    cvt.d.s	$f12,$f12
    # Line 234
    cvt.s.d	$f3,$f3
    # Line 250
    mul.d	$f12,$f12,$f16
    # Line 253
    addu	$at,$at,$a0
    sub.d	$f22,$f22,$f13
    lwc1	$f13,0($at)
    # Line 250
    mul.d	$f18,$f18,$f17
    # Line 253
    ldc1	$f16,_lit8_408ce00000000000
    cvt.d.s	$f13,$f13
    add.d	$f22,$f22,$f15
    mul.d	$f13,$f13,$f16
    sub.d	$f22,$f22,$f14
    # Line 250
    add.d	$f23,$f23,$f18
    # Line 253
    add.d	$f22,$f22,$f13
    # Line 250
    sub.d	$f23,$f23,$f14
    # Line 253
    sub.d	$f22,$f22,$f12
    # Line 250
    add.d	$f23,$f23,$f12
    # Line 253
    add.d	$f22,$f22,$f10
    # Line 250
    sub.d	$f23,$f23,$f11
    # Line 253
    sub.d	$f22,$f22,$f8
    # Line 250
    add.d	$f23,$f23,$f9
    # Line 235
    swc1	$f1,12($sp)
    # Line 253
    add.d	$f22,$f22,$f6
    # Line 236
    swc1	$f0,16($sp)
    # Line 237
    swc1	$f29,20($sp)
    # Line 250
    sub.d	$f23,$f23,$f7
    # Line 239
    swc1	$f28,24($sp)
    ldc1	$f28,136($sp)
    # Line 253
    sub.d	$f22,$f22,$f4
    # Line 241
    swc1	$f27,28($sp)
    # Line 245
    swc1	$f25,36($sp)
    # Line 250
    add.d	$f23,$f23,$f5
    # Line 243
    swc1	$f26,32($sp)
    ldc1	$f26,128($sp)
    # Line 253
    add.d	$f22,$f22,$f31
    ldc1	$f20,104($sp)
    # Line 247
    swc1	$f24,40($sp)
    # Line 250
    sub.d	$f23,$f23,$f2
    ldc1	$f24,120($sp)
    # Line 233
    lwc1	$f4,0($a4)
    # Line 253
    cvt.s.d	$f22,$f22
    # Line 234
    swc1	$f3,8($sp)
    # Line 233
    swc1	$f4,4($sp)
    # Line 250
    cvt.s.d	$f23,$f23
    # Line 253
    swc1	$f22,48($sp)
    ldc1	$f22,112($sp)
    # Line 256
    b	.L0daa7848
    # Line 250
    swc1	$f23,44($sp)
.L0daa8f08:
    sdc1	$f26,128($sp)
    # Line 259
    lwc1	$f26,0($a0)
    # Line 268
    ldc1	$f31,_lit8_405f800000000000
    # Line 259
    cvt.d.s	$f26,$f26
    # Line 268
    mul.d	$f31,$f26,$f31
    # Line 266
    ldc1	$f14,_lit8_4055000000000000
    sdc1	$f20,104($sp)
    # Line 261
    addu	$a4,$s1,$s1
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    lwc1	$f20,0($a4)
    # Line 266
    mul.d	$f0,$f26,$f14
    # Line 264
    ldc1	$f15,_lit8_4083800000000000
    # Line 261
    cvt.d.s	$f20,$f20
    # Line 264
    ldc1	$f1,_lit8_c05e000000000000
    mul.d	$f15,$f20,$f15
    # Line 258
    sll	$at,$s1,0x2
    subu	$at,$at,$s1
    sll	$at,$at,0x2
    addu	$at,$at,$s1
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    # Line 259
    lwc1	$f5,0($at)
    # Line 264
    mul.d	$f1,$f26,$f1
    # Line 261
    ldc1	$f12,_lit8_4024000000000000
    # Line 259
    cvt.d.s	$f5,$f5
    # Line 261
    mul.d	$f12,$f5,$f12
    # Line 262
    ldc1	$f3,_lit8_c046800000000000
    mul.d	$f3,$f26,$f3
    # Line 261
    ldc1	$f4,_lit8_404b800000000000
    mul.d	$f4,$f26,$f4
    # Line 260
    ldc1	$f7,_lit8_4026000000000000
    # Line 259
    sll	$v0,$s1,0x2
    addu	$v0,$v0,$a0
    lwc1	$f21,0($v0)
    ldc1	$f11,_lit8_402a000000000000
    # Line 260
    mul.d	$f6,$f26,$f7
    # Line 259
    cvt.d.s	$f21,$f21
    # Line 260
    sll	$v0,$s1,0x2
    subu	$v0,$v0,$s1
    sll	$v0,$v0,0x2
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f8,0($v0)
    # Line 259
    mul.d	$f27,$f21,$f11
    # Line 260
    cvt.d.s	$f8,$f8
    mul.d	$f11,$f8,$f11
    # Line 261
    ldc1	$f9,_lit8_4060400000000000
    mul.d	$f9,$f21,$f9
    sdc1	$f24,120($sp)
    # Line 260
    sub.d	$f6,$f6,$f27
    mul.d	$f7,$f5,$f7
    # Line 261
    ldc1	$f2,_lit8_4053800000000000
    # Line 262
    sll	$v1,$s1,0x2
    # Line 260
    add.d	$f6,$f6,$f11
    # Line 262
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    # Line 261
    sub.d	$f4,$f4,$f9
    # Line 262
    ldc1	$f9,_lit8_405d400000000000
    subu	$v1,$v1,$s1
    # Line 260
    sub.d	$f6,$f6,$f7
    # Line 262
    mul.d	$f7,$f21,$f9
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f10,0($v1)
    # Line 261
    mul.d	$f24,$f20,$f2
    # Line 262
    cvt.d.s	$f10,$f10
    mul.d	$f2,$f10,$f2
    add.d	$f3,$f3,$f7
    # Line 261
    add.d	$f4,$f4,$f24
    # Line 262
    sub.d	$f3,$f3,$f24
    mul.d	$f9,$f8,$f9
    add.d	$f3,$f3,$f2
    # Line 261
    sub.d	$f4,$f4,$f11
    # Line 264
    ldc1	$f7,_lit8_407d400000000000
    # Line 262
    sub.d	$f3,$f3,$f9
    # Line 264
    mul.d	$f9,$f21,$f7
    # Line 261
    add.d	$f4,$f4,$f12
    # Line 266
    ldc1	$f12,_lit8_4076c00000000000
    sdc1	$f11,152($sp)
    mul.d	$f13,$f21,$f12
    # Line 262
    ldc1	$f11,_lit8_4046800000000000
    # Line 264
    add.d	$f1,$f1,$f9
    # Line 262
    mul.d	$f11,$f5,$f11
    # Line 266
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$s1
    # Line 264
    sub.d	$f1,$f1,$f15
    # Line 266
    ldc1	$f15,_lit8_4081100000000000
    sll	$a4,$a4,0x1
    sub.d	$f0,$f0,$f13
    mul.d	$f13,$f20,$f15
    sll	$a4,$a4,0x2
    # Line 264
    sll	$v0,$s1,0x2
    subu	$v0,$v0,$s1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    # Line 262
    add.d	$f3,$f3,$f11
    # Line 264
    lwc1	$f9,0($v0)
    # Line 266
    addu	$a4,$a4,$a0
    # Line 264
    ldc1	$f11,_lit8_4071e00000000000
    cvt.d.s	$f9,$f9
    # Line 266
    add.d	$f0,$f0,$f13
    lwc1	$f13,0($a4)
    # Line 264
    mul.d	$f23,$f9,$f11
    # Line 266
    cvt.d.s	$f13,$f13
    mul.d	$f11,$f13,$f11
    mul.d	$f15,$f10,$f15
    sub.d	$f0,$f0,$f23
    mul.d	$f12,$f8,$f12
    add.d	$f0,$f0,$f11
    mul.d	$f14,$f5,$f14
    sub.d	$f0,$f0,$f15
    # Line 268
    ldc1	$f15,_lit8_4086c00000000000
    mul.d	$f15,$f21,$f15
    # Line 266
    add.d	$f0,$f0,$f12
    # Line 268
    ldc1	$f12,_lit8_4099980000000000
    mul.d	$f12,$f20,$f12
    sll	$v1,$s1,0x2
    sub.d	$f31,$f31,$f15
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    # Line 266
    sub.d	$f0,$f0,$f14
    # Line 268
    ldc1	$f14,_lit8_409ad00000000000
    lwc1	$f18,0($v1)
    add.d	$f31,$f31,$f12
    mul.d	$f14,$f9,$f14
    ldc1	$f12,_lit8_4086580000000000
    cvt.d.s	$f18,$f18
    sdc1	$f22,112($sp)
    mul.d	$f22,$f18,$f12
    # Line 264
    ldc1	$f16,_lit8_405a000000000000
    # Line 268
    sub.d	$f31,$f31,$f14
    # Line 264
    mul.d	$f16,$f8,$f16
    # Line 268
    add.d	$f31,$f31,$f22
    mul.d	$f7,$f10,$f7
    sub.d	$f31,$f31,$f11
    # Line 264
    add.d	$f1,$f1,$f23
    # Line 268
    add.d	$f31,$f31,$f7
    ldc1	$f7,_lit8_4071100000000000
    # Line 264
    sub.d	$f1,$f1,$f2
    # Line 268
    mul.d	$f7,$f8,$f7
    # Line 264
    add.d	$f1,$f1,$f16
    ldc1	$f16,_lit8_4042000000000000
    mul.d	$f16,$f5,$f16
    # Line 268
    sub.d	$f31,$f31,$f7
    ldc1	$f7,_lit8_404c000000000000
    sdc1	$f30,144($sp)
    mul.d	$f7,$f5,$f7
    # Line 270
    ldc1	$f30,_lit8_c051800000000000
    mul.d	$f30,$f26,$f30
    # Line 264
    sub.d	$f1,$f1,$f16
    # Line 270
    ldc1	$f16,_lit8_407c700000000000
    # Line 268
    add.d	$f31,$f31,$f7
    # Line 270
    mul.d	$f7,$f21,$f16
    ldc1	$f17,_lit8_4092480000000000
    mul.d	$f15,$f20,$f17
    add.d	$f30,$f30,$f7
    ldc1	$f19,_lit8_4096580000000000
    sub.d	$f30,$f30,$f15
    mul.d	$f15,$f9,$f19
    # Line 272
    ldc1	$f29,_lit8_c04c000000000000
    # Line 270
    sll	$v0,$s1,0x3
    addu	$v0,$v0,$s1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    add.d	$f30,$f30,$f15
    lwc1	$f15,0($v0)
    # Line 272
    mul.d	$f29,$f26,$f29
    # Line 270
    cvt.d.s	$f15,$f15
    mul.d	$f12,$f15,$f12
    mul.d	$f19,$f13,$f19
    sub.d	$f30,$f30,$f22
    mul.d	$f17,$f10,$f17
    add.d	$f30,$f30,$f12
    mul.d	$f16,$f8,$f16
    sub.d	$f30,$f30,$f19
    # Line 272
    add.d	$f29,$f29,$f7
    ldc1	$f7,_lit8_4098600000000000
    # Line 270
    add.d	$f30,$f30,$f17
    # Line 272
    mul.d	$f7,$f20,$f7
    # Line 270
    sub.d	$f30,$f30,$f16
    ldc1	$f16,_lit8_4051800000000000
    mul.d	$f16,$f5,$f16
    # Line 272
    sub.d	$f29,$f29,$f7
    ldc1	$f7,_lit8_40a6580000000000
    # Line 270
    add.d	$f30,$f30,$f16
    # Line 272
    mul.d	$f16,$f9,$f7
    sll	$a4,$s1,0x2
    addu	$a4,$a4,$s1
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    mul.d	$f7,$f18,$f7
    add.d	$f29,$f29,$f16
    lwc1	$f16,0($a4)
    ldc1	$f19,_lit8_40941c0000000000
    cvt.d.s	$f16,$f16
    mul.d	$f17,$f16,$f19
    sub.d	$f29,$f29,$f7
    ldc1	$f7,_lit8_4091e00000000000
    mul.d	$f7,$f13,$f7
    add.d	$f29,$f29,$f17
    sdc1	$f28,136($sp)
    # Line 275
    ldc1	$f28,_lit8_4035000000000000
    # Line 272
    sub.d	$f29,$f29,$f12
    # Line 275
    mul.d	$f28,$f26,$f28
    # Line 272
    add.d	$f29,$f29,$f7
    # Line 275
    ldc1	$f7,_lit8_4068600000000000
    mul.d	$f7,$f21,$f7
    sub.d	$f28,$f28,$f7
    # Line 272
    ldc1	$f7,_lit8_4088600000000000
    # Line 275
    mul.d	$f25,$f20,$f7
    add.d	$f28,$f28,$f25
    sll	$v1,$s1,0x3
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    sub.d	$f28,$f28,$f14
    lwc1	$f14,0($v1)
    cvt.d.s	$f14,$f14
    mul.d	$f14,$f14,$f19
    ldc1	$f19,_lit8_40a0c20000000000
    mul.d	$f18,$f18,$f19
    # Line 272
    mul.d	$f7,$f10,$f7
    ldc1	$f25,_lit8_4070400000000000
    # Line 275
    add.d	$f28,$f28,$f18
    # Line 272
    mul.d	$f25,$f8,$f25
    # Line 275
    sub.d	$f28,$f28,$f17
    mul.d	$f19,$f15,$f19
    add.d	$f28,$f28,$f14
    # Line 272
    sub.d	$f29,$f29,$f7
    # Line 275
    sub.d	$f28,$f28,$f19
    ldc1	$f19,_lit8_409ad00000000000
    # Line 272
    add.d	$f29,$f29,$f25
    # Line 275
    mul.d	$f25,$f13,$f19
    add.d	$f28,$f28,$f25
    sub.d	$f28,$f28,$f7
    ldc1	$f7,_lit8_4068600000000000
    mul.d	$f7,$f8,$f7
    add.d	$f28,$f28,$f7
    # Line 259
    ldc1	$f7,_lit8_c028000000000000
    mul.d	$f7,$f26,$f7
    add.d	$f7,$f7,$f27
    # Line 281
    sub.d	$f27,$f27,$f26
    sub.d	$f27,$f27,$f24
    # Line 278
    ldc1	$f24,_lit8_401c000000000000
    mul.d	$f26,$f26,$f24
    # Line 281
    add.d	$f27,$f27,$f23
    # Line 278
    ldc1	$f23,_lit8_4053800000000000
    mul.d	$f21,$f21,$f23
    ldc1	$f23,_lit8_4078600000000000
    mul.d	$f20,$f20,$f23
    # Line 260
    cvt.s.d	$f6,$f6
    # Line 261
    cvt.s.d	$f4,$f4
    # Line 262
    cvt.s.d	$f3,$f3
    # Line 278
    sub.d	$f26,$f26,$f21
    ldc1	$f21,_lit8_4091e00000000000
    # Line 264
    cvt.s.d	$f1,$f1
    # Line 278
    mul.d	$f9,$f9,$f21
    # Line 266
    cvt.s.d	$f0,$f0
    # Line 281
    sll	$v0,$s1,0x3
    # Line 272
    ldc1	$f25,_lit8_4041800000000000
    # Line 278
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    add.d	$f26,$f26,$f20
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    sub.d	$f26,$f26,$f9
    lwc1	$f9,0($v1)
    # Line 272
    mul.d	$f25,$f5,$f25
    # Line 281
    subu	$v0,$v0,$s1
    # Line 278
    cvt.d.s	$f9,$f9
    add.d	$f26,$f26,$f18
    mul.d	$f9,$f9,$f19
    ldc1	$f18,_lit8_40a41c0000000000
    # Line 281
    sub.d	$f27,$f27,$f22
    sll	$v0,$v0,0x2
    # Line 278
    mul.d	$f16,$f16,$f18
    # Line 281
    addu	$v0,$v0,$a0
    add.d	$f27,$f27,$f17
    lwc1	$f17,0($v0)
    cvt.d.s	$f17,$f17
    # Line 268
    cvt.s.d	$f31,$f31
    # Line 281
    mul.d	$f17,$f17,$f19
    # Line 278
    sub.d	$f26,$f26,$f16
    # Line 281
    sub.d	$f27,$f27,$f9
    # Line 278
    add.d	$f26,$f26,$f9
    # Line 275
    ldc1	$f9,_lit8_4035000000000000
    # Line 270
    cvt.s.d	$f30,$f30
    # Line 275
    mul.d	$f9,$f5,$f9
    # Line 272
    sub.d	$f29,$f29,$f25
    # Line 259
    sub.d	$f7,$f7,$f5
    # Line 272
    cvt.s.d	$f29,$f29
    # Line 259
    cvt.s.d	$f7,$f7
    # Line 275
    sub.d	$f28,$f28,$f9
    # Line 278
    ldc1	$f16,_lit8_408ad00000000000
    # Line 281
    add.d	$f27,$f27,$f17
    # Line 278
    mul.d	$f13,$f13,$f16
    ldc1	$f16,_lit8_4096580000000000
    # Line 281
    sub.d	$f27,$f27,$f14
    # Line 278
    mul.d	$f15,$f15,$f16
    sub.d	$f26,$f26,$f14
    # Line 281
    add.d	$f27,$f27,$f12
    # Line 278
    ldc1	$f14,_lit8_4073800000000000
    add.d	$f26,$f26,$f15
    mul.d	$f10,$f10,$f14
    sub.d	$f26,$f26,$f13
    # Line 281
    sub.d	$f27,$f27,$f11
    # Line 260
    swc1	$f6,12($sp)
    # Line 261
    swc1	$f4,16($sp)
    # Line 278
    add.d	$f26,$f26,$f10
    ldc1	$f10,_lit8_4050400000000000
    # Line 262
    swc1	$f3,20($sp)
    # Line 275
    cvt.s.d	$f28,$f28
    # Line 278
    mul.d	$f8,$f8,$f10
    # Line 264
    swc1	$f1,24($sp)
    # Line 281
    add.d	$f27,$f27,$f2
    ldc1	$f9,152($sp)
    # Line 278
    ldc1	$f2,_lit8_4018000000000000
    # Line 266
    swc1	$f0,28($sp)
    # Line 281
    sub.d	$f27,$f27,$f9
    # Line 278
    mul.d	$f2,$f5,$f2
    # Line 268
    swc1	$f31,32($sp)
    # Line 270
    swc1	$f30,36($sp)
    # Line 278
    sub.d	$f26,$f26,$f8
    ldc1	$f30,144($sp)
    # Line 272
    swc1	$f29,40($sp)
    # Line 281
    add.d	$f27,$f27,$f5
    ldc1	$f24,120($sp)
    # Line 259
    swc1	$f7,8($sp)
    # Line 278
    add.d	$f26,$f26,$f2
    ldc1	$f22,112($sp)
    ldc1	$f20,104($sp)
    # Line 281
    cvt.s.d	$f27,$f27
    # Line 275
    swc1	$f28,44($sp)
    # Line 258
    lwc1	$f9,0($at)
    # Line 278
    cvt.s.d	$f26,$f26
    ldc1	$f28,136($sp)
    # Line 258
    swc1	$f9,4($sp)
    # Line 281
    swc1	$f27,52($sp)
    # Line 278
    swc1	$f26,48($sp)
    b	.L0daa7848
    ldc1	$f26,128($sp)
.L0daa9460:
    sdc1	$f28,136($sp)
    # Line 292
    ldc1	$f28,_lit8_c064a00000000000
    # Line 289
    addu	$a4,$s1,$s1
    # Line 287
    lwc1	$f4,0($a0)
    # Line 289
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    # Line 287
    cvt.d.s	$f4,$f4
    # Line 289
    lwc1	$f27,0($a4)
    # Line 292
    mul.d	$f28,$f4,$f28
    # Line 289
    ldc1	$f14,_lit8_4056c00000000000
    cvt.d.s	$f27,$f27
    mul.d	$f15,$f27,$f14
    ldc1	$f0,_lit8_4050800000000000
    ldc1	$f2,_lit8_4063400000000000
    mul.d	$f0,$f4,$f0
    # Line 286
    sll	$at,$s1,0x3
    subu	$at,$at,$s1
    # Line 287
    sll	$v0,$s1,0x2
    addu	$v0,$v0,$a0
    lwc1	$f5,0($v0)
    # Line 286
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    # Line 287
    cvt.d.s	$f5,$f5
    # Line 286
    addu	$at,$at,$a0
    # Line 289
    mul.d	$f2,$f5,$f2
    # Line 287
    ldc1	$f16,_lit8_402c000000000000
    # Line 288
    sll	$v0,$s1,0x2
    subu	$v0,$v0,$s1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f19,0($v0)
    # Line 287
    mul.d	$f18,$f5,$f16
    lwc1	$f17,0($at)
    # Line 288
    cvt.d.s	$f19,$f19
    # Line 289
    ldc1	$f6,_lit8_4026000000000000
    # Line 288
    mul.d	$f16,$f19,$f16
    # Line 287
    cvt.d.s	$f17,$f17
    # Line 289
    sub.d	$f0,$f0,$f2
    mul.d	$f6,$f17,$f6
    # Line 288
    ldc1	$f3,_lit8_4028000000000000
    # Line 289
    add.d	$f0,$f0,$f15
    # Line 288
    mul.d	$f1,$f4,$f3
    # Line 292
    ldc1	$f7,_lit8_4083b00000000000
    # Line 289
    sub.d	$f0,$f0,$f16
    # Line 292
    mul.d	$f7,$f5,$f7
    # Line 289
    add.d	$f0,$f0,$f6
    # Line 292
    ldc1	$f6,_lit8_4089980000000000
    # Line 288
    mul.d	$f3,$f17,$f3
    # Line 290
    sll	$a1,$s1,0x2
    # Line 288
    sub.d	$f1,$f1,$f18
    sdc1	$f30,144($sp)
    # Line 290
    ldc1	$f30,_lit8_c04b800000000000
    subu	$a1,$a1,$s1
    # Line 288
    add.d	$f1,$f1,$f16
    # Line 290
    mul.d	$f30,$f4,$f30
    ldc1	$f2,_lit8_4061800000000000
    sll	$a1,$a1,0x2
    # Line 288
    sub.d	$f1,$f1,$f3
    # Line 290
    mul.d	$f3,$f5,$f2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    lwc1	$f21,0($a1)
    # Line 292
    mul.d	$f6,$f27,$f6
    # Line 290
    cvt.d.s	$f21,$f21
    mul.d	$f14,$f21,$f14
    add.d	$f30,$f30,$f3
    mul.d	$f2,$f19,$f2
    ldc1	$f31,_lit8_404b800000000000
    sub.d	$f30,$f30,$f15
    sdc1	$f24,120($sp)
    mul.d	$f31,$f17,$f31
    # Line 296
    ldc1	$f24,_lit8_406a400000000000
    # Line 290
    add.d	$f30,$f30,$f14
    # Line 296
    mul.d	$f24,$f4,$f24
    # Line 294
    ldc1	$f3,_lit8_405e000000000000
    # Line 290
    sub.d	$f30,$f30,$f2
    # Line 292
    sll	$v1,$s1,0x2
    sdc1	$f26,128($sp)
    # Line 294
    mul.d	$f26,$f4,$f3
    # Line 290
    add.d	$f30,$f30,$f31
    # Line 294
    ldc1	$f31,_lit8_407f800000000000
    # Line 292
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    # Line 294
    mul.d	$f2,$f5,$f31
    # Line 292
    addu	$v1,$v1,$a0
    lwc1	$f29,0($v1)
    ldc1	$f12,_lit8_4076c00000000000
    cvt.d.s	$f29,$f29
    # Line 294
    sll	$v0,$s1,0x2
    subu	$v0,$v0,$s1
    sub.d	$f26,$f26,$f2
    ldc1	$f2,_lit8_4086c00000000000
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$s1
    mul.d	$f8,$f27,$f2
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f23,0($v0)
    # Line 292
    mul.d	$f13,$f29,$f12
    # Line 294
    cvt.d.s	$f23,$f23
    mul.d	$f12,$f23,$f12
    # Line 296
    ldc1	$f25,_lit8_4092600000000000
    # Line 294
    add.d	$f26,$f26,$f8
    # Line 296
    mul.d	$f25,$f5,$f25
    # Line 294
    sub.d	$f26,$f26,$f13
    mul.d	$f2,$f21,$f2
    add.d	$f26,$f26,$f12
    # Line 296
    sub.d	$f24,$f24,$f25
    ldc1	$f25,_lit8_40a3e80000000000
    # Line 294
    sub.d	$f26,$f26,$f2
    # Line 296
    mul.d	$f2,$f27,$f25
    # Line 294
    mul.d	$f31,$f19,$f31
    # Line 296
    mul.d	$f25,$f29,$f25
    sdc1	$f20,104($sp)
    # Line 300
    ldc1	$f20,_lit8_408ea00000000000
    # Line 296
    add.d	$f24,$f24,$f2
    sll	$a4,$s1,0x2
    sll	$a4,$a4,0x2
    # Line 294
    add.d	$f26,$f26,$f31
    # Line 296
    addu	$a4,$a4,$a0
    lwc1	$f31,0($a4)
    sub.d	$f24,$f24,$f25
    # Line 300
    mul.d	$f20,$f5,$f20
    # Line 296
    ldc1	$f25,_lit8_408f480000000000
    cvt.d.s	$f31,$f31
    # Line 292
    add.d	$f28,$f28,$f7
    # Line 296
    mul.d	$f10,$f31,$f25
    # Line 292
    ldc1	$f7,_lit8_405f800000000000
    sub.d	$f28,$f28,$f6
    mul.d	$f6,$f19,$f7
    add.d	$f28,$f28,$f13
    # Line 296
    ldc1	$f2,_lit8_4083e80000000000
    add.d	$f24,$f24,$f10
    mul.d	$f2,$f21,$f2
    sub.d	$f24,$f24,$f12
    # Line 292
    sub.d	$f28,$f28,$f14
    # Line 294
    mul.d	$f3,$f17,$f3
    # Line 296
    add.d	$f24,$f24,$f2
    ldc1	$f2,_lit8_4078800000000000
    mul.d	$f2,$f19,$f2
    # Line 292
    add.d	$f28,$f28,$f6
    ldc1	$f6,_lit8_4046800000000000
    mul.d	$f6,$f17,$f6
    # Line 294
    sub.d	$f26,$f26,$f3
    # Line 298
    ldc1	$f3,_lit8_c05f800000000000
    mul.d	$f3,$f4,$f3
    # Line 296
    sub.d	$f24,$f24,$f2
    ldc1	$f2,_lit8_4055000000000000
    mul.d	$f2,$f17,$f2
    # Line 298
    ldc1	$f8,_lit8_4088800000000000
    sdc1	$f22,112($sp)
    mul.d	$f22,$f5,$f8
    # Line 300
    add.d	$f20,$f20,$f3
    # Line 298
    ldc1	$f9,_lit8_409ddc0000000000
    # Line 296
    add.d	$f24,$f24,$f2
    # Line 298
    mul.d	$f2,$f27,$f9
    add.d	$f22,$f22,$f3
    # Line 300
    ldc1	$f3,_lit8_40a8e20000000000
    mul.d	$f3,$f27,$f3
    # Line 298
    sub.d	$f22,$f22,$f2
    ldc1	$f2,_lit8_40a1100000000000
    sdc1	$f29,64($sp)
    # Line 292
    sub.d	$f28,$f28,$f6
    # Line 298
    mul.d	$f6,$f29,$f2
    sll	$a1,$s1,0x2
    addu	$a1,$a1,$s1
    sll	$a1,$a1,0x1
    mul.d	$f9,$f21,$f9
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    # Line 300
    sub.d	$f20,$f20,$f3
    # Line 298
    mul.d	$f2,$f23,$f2
    # Line 300
    ldc1	$f3,_lit8_40b5540000000000
    # Line 298
    add.d	$f22,$f22,$f6
    lwc1	$f6,0($a1)
    # Line 300
    mul.d	$f29,$f29,$f3
    # Line 298
    cvt.d.s	$f6,$f6
    mul.d	$f25,$f6,$f25
    sub.d	$f22,$f22,$f10
    # Line 300
    add.d	$f20,$f20,$f29
    ldc1	$f29,_lit8_40b38d0000000000
    # Line 298
    add.d	$f22,$f22,$f25
    # Line 300
    mul.d	$f29,$f31,$f29
    # Line 298
    sub.d	$f22,$f22,$f2
    mul.d	$f8,$f19,$f8
    # Line 300
    sll	$v1,$s1,0x2
    # Line 298
    add.d	$f22,$f22,$f9
    # Line 300
    addu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    sub.d	$f20,$f20,$f29
    addu	$v1,$v1,$a0
    lwc1	$f29,0($v1)
    # Line 298
    sub.d	$f22,$f22,$f8
    # Line 300
    ldc1	$f8,_lit8_409f480000000000
    cvt.d.s	$f29,$f29
    mul.d	$f9,$f29,$f8
    add.d	$f20,$f20,$f9
    sdc1	$f25,160($sp)
    sub.d	$f20,$f20,$f25
    ldc1	$f25,_lit8_409c700000000000
    mul.d	$f3,$f23,$f25
    add.d	$f20,$f20,$f3
    ldc1	$f3,_lit8_4095540000000000
    mul.d	$f3,$f21,$f3
    # Line 303
    ldc1	$f11,_lit8_404c000000000000
    mul.d	$f11,$f4,$f11
    # Line 298
    mul.d	$f7,$f17,$f7
    # Line 300
    sub.d	$f20,$f20,$f3
    # Line 303
    ldc1	$f3,_lit8_407ea00000000000
    mul.d	$f3,$f5,$f3
    # Line 298
    add.d	$f22,$f22,$f7
    # Line 303
    ldc1	$f7,_lit8_40ac700000000000
    mul.d	$f25,$f27,$f25
    sub.d	$f11,$f11,$f3
    ldc1	$f3,64($sp)
    sdc1	$f10,168($sp)
    mul.d	$f3,$f3,$f7
    ldc1	$f10,_lit8_40af480000000000
    add.d	$f11,$f11,$f25
    mul.d	$f25,$f31,$f10
    sll	$v0,$s1,0x3
    sub.d	$f11,$f11,$f3
    addu	$v0,$v0,$s1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    add.d	$f11,$f11,$f25
    lwc1	$f25,0($v0)
    cvt.d.s	$f25,$f25
    mul.d	$f8,$f25,$f8
    mul.d	$f10,$f6,$f10
    sub.d	$f11,$f11,$f9
    mul.d	$f7,$f23,$f7
    add.d	$f11,$f11,$f8
    sub.d	$f11,$f11,$f10
    add.d	$f11,$f11,$f7
    ldc1	$f7,_lit8_409c700000000000
    mul.d	$f7,$f21,$f7
    sub.d	$f11,$f11,$f7
    # Line 300
    ldc1	$f7,_lit8_407ea00000000000
    mul.d	$f7,$f19,$f7
    ldc1	$f10,_lit8_4051800000000000
    mul.d	$f10,$f17,$f10
    # Line 303
    add.d	$f11,$f11,$f7
    # Line 300
    add.d	$f20,$f20,$f7
    # Line 306
    ldc1	$f7,_lit8_4072600000000000
    mul.d	$f7,$f5,$f7
    # Line 300
    sub.d	$f20,$f20,$f10
    # Line 306
    ldc1	$f10,_lit8_403c000000000000
    mul.d	$f10,$f4,$f10
    sub.d	$f10,$f10,$f7
    ldc1	$f7,_lit8_4095540000000000
    mul.d	$f7,$f27,$f7
    add.d	$f10,$f10,$f7
    # Line 303
    ldc1	$f7,_lit8_404c000000000000
    mul.d	$f7,$f17,$f7
    # Line 306
    sub.d	$f10,$f10,$f3
    # Line 303
    sub.d	$f11,$f11,$f7
    # Line 286
    lwc1	$f7,0($at)
    # Line 306
    ldc1	$f3,_lit8_40b7760000000000
    # Line 286
    swc1	$f7,4($sp)
    # Line 306
    mul.d	$f7,$f31,$f3
    mul.d	$f3,$f29,$f3
    sll	$a4,$s1,0x2
    subu	$a4,$a4,$s1
    sll	$a4,$a4,0x1
    add.d	$f10,$f10,$f7
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    lwc1	$f7,0($a4)
    sub.d	$f10,$f10,$f3
    ldc1	$f3,_lit8_40a7760000000000
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f3
    mul.d	$f6,$f6,$f3
    add.d	$f10,$f10,$f7
    sub.d	$f10,$f10,$f8
    add.d	$f10,$f10,$f6
    sub.d	$f10,$f10,$f2
    ldc1	$f2,_lit8_408c700000000000
    mul.d	$f2,$f21,$f2
    add.d	$f10,$f10,$f2
    ldc1	$f2,_lit8_406a400000000000
    mul.d	$f2,$f19,$f2
    sub.d	$f10,$f10,$f2
    ldc1	$f2,_lit8_4035000000000000
    mul.d	$f2,$f17,$f2
    add.d	$f10,$f10,$f2
    # Line 287
    ldc1	$f2,_lit8_c02a000000000000
    mul.d	$f2,$f4,$f2
    # Line 288
    cvt.s.d	$f1,$f1
    # Line 289
    cvt.s.d	$f0,$f0
    # Line 290
    cvt.s.d	$f30,$f30
    # Line 292
    cvt.s.d	$f28,$f28
    # Line 288
    swc1	$f1,12($sp)
    # Line 294
    cvt.s.d	$f26,$f26
    # Line 289
    swc1	$f0,16($sp)
    # Line 290
    swc1	$f30,20($sp)
    # Line 296
    cvt.s.d	$f24,$f24
    ldc1	$f30,144($sp)
    # Line 292
    swc1	$f28,24($sp)
    # Line 298
    cvt.s.d	$f22,$f22
    ldc1	$f28,136($sp)
    # Line 294
    swc1	$f26,28($sp)
    # Line 300
    cvt.s.d	$f20,$f20
    ldc1	$f26,128($sp)
    # Line 296
    swc1	$f24,32($sp)
    # Line 287
    add.d	$f2,$f2,$f18
    ldc1	$f24,120($sp)
    # Line 309
    sll	$a1,$s1,0x3
    # Line 303
    cvt.s.d	$f11,$f11
    # Line 309
    sll	$a1,$a1,0x2
    # Line 298
    swc1	$f22,36($sp)
    # Line 287
    sub.d	$f2,$f2,$f17
    ldc1	$f22,112($sp)
    # Line 300
    swc1	$f20,40($sp)
    # Line 306
    cvt.s.d	$f10,$f10
    ldc1	$f20,104($sp)
    # Line 303
    swc1	$f11,44($sp)
    # Line 287
    cvt.s.d	$f2,$f2
    ldc1	$f11,168($sp)
    # Line 306
    swc1	$f10,48($sp)
    ldc1	$f10,160($sp)
    # Line 287
    swc1	$f2,8($sp)
    # Line 309
    ldc1	$f3,_lit8_4055000000000000
    mul.d	$f3,$f5,$f3
    ldc1	$f2,_lit8_c01c000000000000
    mul.d	$f2,$f4,$f2
    ldc1	$f0,_lit8_407c700000000000
    sdc1	$f20,104($sp)
    ldc1	$f20,64($sp)
    mul.d	$f0,$f27,$f0
    add.d	$f2,$f2,$f3
    ldc1	$f3,_lit8_4096c00000000000
    mul.d	$f20,$f20,$f3
    sub.d	$f2,$f2,$f0
    ldc1	$f1,_lit8_40a7760000000000
    add.d	$f2,$f2,$f20
    mul.d	$f20,$f31,$f1
    addu	$a4,$a1,$a0
    lwc1	$f0,0($a4)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    sub.d	$f2,$f2,$f20
    ldc1	$f20,_lit8_40af480000000000
    mul.d	$f1,$f29,$f20
    add.d	$f2,$f2,$f1
    mul.d	$f20,$f25,$f20
    sub.d	$f2,$f2,$f7
    add.d	$f2,$f2,$f0
    mul.d	$f3,$f23,$f3
    sub.d	$f2,$f2,$f20
    # Line 312
    sll	$v1,$s1,0x3
    subu	$v1,$v1,$s1
    # Line 309
    add.d	$f2,$f2,$f6
    # Line 312
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f1,0($v1)
    # Line 309
    sub.d	$f2,$f2,$f3
    # Line 312
    ldc1	$f3,_lit8_40aad00000000000
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f3
    sub.d	$f3,$f18,$f4
    sub.d	$f3,$f3,$f15
    add.d	$f3,$f3,$f13
    sub.d	$f3,$f3,$f11
    add.d	$f3,$f3,$f9
    sub.d	$f3,$f3,$f7
    # Line 309
    ldc1	$f20,_lit8_407c700000000000
    # Line 312
    add.d	$f3,$f3,$f1
    # Line 309
    mul.d	$f20,$f21,$f20
    # Line 312
    sub.d	$f3,$f3,$f0
    add.d	$f3,$f3,$f8
    # Line 309
    add.d	$f2,$f2,$f20
    ldc1	$f1,_lit8_4055000000000000
    # Line 312
    sub.d	$f3,$f3,$f10
    # Line 309
    mul.d	$f1,$f19,$f1
    ldc1	$f20,_lit8_401c000000000000
    # Line 312
    add.d	$f3,$f3,$f12
    # Line 309
    mul.d	$f20,$f17,$f20
    # Line 312
    sub.d	$f3,$f3,$f14
    # Line 309
    sub.d	$f2,$f2,$f1
    # Line 312
    add.d	$f3,$f3,$f16
    # Line 309
    add.d	$f2,$f2,$f20
    # Line 312
    sub.d	$f3,$f3,$f17
    # Line 309
    cvt.s.d	$f2,$f2
    # Line 312
    cvt.s.d	$f3,$f3
    ldc1	$f20,104($sp)
    # Line 309
    swc1	$f2,52($sp)
    # Line 315
    b	.L0daa7848
    # Line 312
    swc1	$f3,56($sp)
.end changebasis

# Function: __glMgrHostMapData1D
# Declared: Line 324 (Source lines: 325-334)
# Address: 0x0daa9a80 - 0x0daa9b40 (Size: 192 bytes, Frame: 192)
.globl __glMgrHostMapData1D
.ent __glMgrHostMapData1D
__glMgrHostMapData1D:
    # Line 325
    addiu	$sp,$sp,-64
    sd	$s5,32($sp)
    sd	$s0,8($sp)
    # Line 332
    move	$s0,$zero
    sd	$s1,16($sp)
    # Line 325
    move	$s1,$a0
    # Line 332
    lw	$at,4($a0)
    sd	$s4,0($sp)
    # Line 330
    li	$s4,0x85fc
    sd	$gp,24($sp)
    # Line 325
    lui	$a1,0x15
    addiu	$a1,$a1,19480
    # Line 330
    lw	$v1,0($a0)
    # Line 325
    addu	$gp,$t9,$a1
    # Line 330
    lw	$t9,__glCurrentContext
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$t9,$t9,$v0
    addu	$s4,$s4,$t9
    # Line 332
    blez	$at,.L0daa9b28
    # Line 330
    lw	$s4,0($s4)
    # Line 332
    la	$s5,sub_0daa0000
    sd	$ra,40($sp)
    addiu	$s5,$s5,30592
    # Line 333
    lw	$a1,8($s1)
.L0daa9ae8:
    mult	$a1,$s0
    li	$a3,1
    move	$t9,$s5
    lw	$a0,48($s1)
    mflo	$a4
    sll	$a4,$a4,0x2
    addu	$a2,$a4,$s4
    bal __glMgrSendMapData1D
    addu	$a0,$a0,$a4
    # Line 332
    addiu	$s0,$s0,1
    lw	$at,4($s1)
    slt	$at,$s0,$at
    bnezl	$at,.L0daa9ae8
    # Line 333
    lw	$a1,8($s1)
    ld	$s5,32($sp)
    ld	$ra,40($sp)
.L0daa9b28:
    ld	$gp,24($sp)
    # Line 334
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s4,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrHostMapData1D

# Function: __glMgrCleanUp1D
# Declared: Line 336 (Source lines: 337-405)
# Address: 0x0daa9b40 - 0x0daa9f44 (Size: 1028 bytes, Frame: 48)
.globl __glMgrCleanUp1D
.ent __glMgrCleanUp1D
__glMgrCleanUp1D:
    # Line 347
    move	$a1,$zero
    # Line 346
    move	$a0,$zero
    # Line 347
    lui	$a6,0x1
    # Line 337
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x15
    sd	$s1,8($sp)
    # Line 342
    lw	$s1,__glCurrentContext
    # Line 337
    addiu	$at,$at,19288
    addu	$gp,$t9,$at
    # Line 347
    addu	$a5,$a6,$s1
    # Line 349
    lw	$a3,-31244($a5)
    beqzl	$a3,.L0daa9b94
    lw	$a3,-31232($a5)
    # Line 350
    lw	$a4,8($a3)
    lw	$v0,44($a3)
    slt	$v1,$a1,$a4
    beqz	$v1,.L0daa9b90
    addu	$a0,$v0,$a0
    # Line 351
    move	$a1,$a4
.L0daa9b90:
    # Line 349
    lw	$a3,-31232($a5)
.L0daa9b94:
    beqzl	$a3,.L0daa9bb8
    lw	$a3,-31220($a5)
    # Line 350
    lw	$a4,8($a3)
    lw	$a2,44($a3)
    slt	$at,$a1,$a4
    beqz	$at,.L0daa9bb4
    addu	$a0,$a2,$a0
    # Line 351
    move	$a1,$a4
.L0daa9bb4:
    # Line 349
    lw	$a3,-31220($a5)
.L0daa9bb8:
    beqzl	$a3,.L0daa9bdc
    lw	$a3,-31208($a5)
    # Line 350
    lw	$a4,8($a3)
    lw	$v0,44($a3)
    slt	$v1,$a1,$a4
    beqz	$v1,.L0daa9bd8
    addu	$a0,$v0,$a0
    # Line 351
    move	$a1,$a4
.L0daa9bd8:
    # Line 349
    lw	$a3,-31208($a5)
.L0daa9bdc:
    beqz	$a3,.L0daa9bfc
    nop
    # Line 350
    lw	$a4,8($a3)
    lw	$a2,44($a3)
    slt	$at,$a1,$a4
    beqz	$at,.L0daa9bfc
    addu	$a0,$a2,$a0
    # Line 351
    move	$a1,$a4
.L0daa9bfc:
    # Line 348
    beqz	$a0,.L0daa9f34
    # Line 359
    la	$at,__glMgrEvalCoord1DHost
    # Line 357
    slti	$v0,$a0,209
    bnez	$v0,.L0daa9de4
    slti	$a2,$a1,9
.L0daa9c10:
    sd	$s0,24($sp)
    # Line 365
    addu	$s0,$a6,$s1
    # Line 358
    addu	$a2,$a6,$s1
    # Line 359
    sw	$at,-30204($a2)
    # Line 363
    lw	$at,-31208($a2)
    # Line 360
    la	$v0,__glMgrEvalMesh1DHost
    # Line 358
    li	$v1,1
    sb	$v1,-30208($a2)
    # Line 365
    lw	$v1,-31220($a2)
    # Line 360
    sw	$v0,-30196($a2)
    # Line 364
    lw	$v0,-31232($a2)
    # Line 365
    sw	$v1,-31216($a2)
    # Line 362
    lw	$v1,-31244($a2)
    # Line 363
    sw	$at,-31204($a2)
    # Line 364
    sw	$v0,-31228($a2)
    # Line 362
    sw	$v1,-31240($a2)
    # Line 365
    lw	$a1,-31236($s0)
    beqzl	$a1,.L0daa9c7c
    # Line 372
    lw	$a3,-31244($s0)
    # Line 369
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    sd	$s2,40($sp)
    # Line 370
    sw	$zero,-31236($s0)
    ld	$ra,32($sp)
    # Line 372
    lw	$a3,-31244($s0)
.L0daa9c7c:
    sd	$s2,40($sp)
    beqz	$a3,.L0daa9cb4
    move	$s2,$a3
    # Line 373
    move	$a0,$s1
    lw	$t9,0($s1)
    lw	$a1,44($a3)
    sd	$ra,32($sp)
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 374
    # lw $t9, -31072($gp) # &__glMgrHostMapData1D
    move	$a0,$s2
    bal __glMgrHostMapData1D
    # Line 373
    sw	$v0,-31236($s0)
    ld	$ra,32($sp)
.L0daa9cb4:
    # Line 365
    lw	$a1,-31224($s0)
    beqzl	$a1,.L0daa9cdc
    # Line 372
    lw	$a3,-31232($s0)
    # Line 369
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jal	__glMgrHostMapData1D
    move	$a0,$s1
    # Line 370
    sw	$zero,-31224($s0)
    ld	$ra,32($sp)
    # Line 372
    lw	$a3,-31232($s0)
.L0daa9cdc:
    beqz	$a3,.L0daa9d10
    move	$s2,$a3
    # Line 373
    move	$a0,$s1
    lw	$t9,0($s1)
    lw	$a1,44($a3)
    sd	$ra,32($sp)
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 374
    # lw $t9, -31072($gp) # &__glMgrHostMapData1D
    move	$a0,$s2
    bal __glMgrHostMapData1D
    # Line 373
    sw	$v0,-31224($s0)
    ld	$ra,32($sp)
.L0daa9d10:
    # Line 365
    lw	$a1,-31212($s0)
    beqzl	$a1,.L0daa9d38
    # Line 372
    lw	$a3,-31220($s0)
    # Line 369
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jal	__glMgrHostMapData1D
    move	$a0,$s1
    # Line 370
    sw	$zero,-31212($s0)
    ld	$ra,32($sp)
    # Line 372
    lw	$a3,-31220($s0)
.L0daa9d38:
    beqz	$a3,.L0daa9d6c
    move	$s2,$a3
    # Line 373
    move	$a0,$s1
    lw	$t9,0($s1)
    lw	$a1,44($a3)
    sd	$ra,32($sp)
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 374
    # lw $t9, -31072($gp) # &__glMgrHostMapData1D
    move	$a0,$s2
    bal __glMgrHostMapData1D
    # Line 373
    sw	$v0,-31212($s0)
    ld	$ra,32($sp)
.L0daa9d6c:
    # Line 365
    lw	$a1,-31200($s0)
    beqzl	$a1,.L0daa9d94
    # Line 372
    lw	$a3,-31208($s0)
    # Line 369
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jal	__glMgrHostMapData1D
    move	$a0,$s1
    # Line 370
    sw	$zero,-31200($s0)
    ld	$ra,32($sp)
    # Line 372
    lw	$a3,-31208($s0)
.L0daa9d94:
    beqz	$a3,.L0daa9dcc
    move	$s2,$a3
    # Line 373
    move	$a0,$s1
    lw	$t9,0($s1)
    lw	$a1,44($a3)
    sd	$ra,32($sp)
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 374
    # lw $t9, -31072($gp) # &__glMgrHostMapData1D
    move	$a0,$s2
    bal __glMgrHostMapData1D
    # Line 373
    sw	$v0,-31200($s0)
    ld	$ra,32($sp)
    ld	$s2,40($sp)
.L0daa9dcc:
    ld	$s0,24($sp)
    ld	$s2,40($sp)
.L0daa9dd4:
    ld	$gp,16($sp)
    # Line 405
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daa9de4:
    # Line 357
    beqz	$a2,.L0daa9c10
    sd	$s0,24($sp)
    # Line 385
    addu	$s0,$a6,$s1
    # Line 378
    addu	$v0,$a6,$s1
    sd	$v0,0($sp)
    # Line 379
    la	$v1,__glMgrEvalCoord1DGe11
    # Line 378
    sb	$zero,-30208($v0)
    # Line 380
    la	$a2,__glMgrEvalMesh1DGe11
    # Line 379
    sw	$v1,-30204($v0)
    # Line 383
    lw	$v1,-31208($v0)
    # Line 385
    lw	$at,-31220($v0)
    # Line 380
    sw	$a2,-30196($v0)
    # Line 384
    lw	$a2,-31232($v0)
    # Line 385
    sw	$at,-31216($v0)
    # Line 382
    lw	$at,-31244($v0)
    # Line 384
    sw	$a2,-31228($v0)
    # Line 383
    sw	$v1,-31204($v0)
    # Line 382
    sw	$at,-31240($v0)
    # Line 385
    lw	$a1,-31236($s0)
    beqzl	$a1,.L0daa9e54
    lw	$a1,-31224($s0)
    # Line 389
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jal	__glMgrHostMapData1D
    move	$a0,$s1
    # Line 390
    sw	$zero,-31236($s0)
    ld	$ra,32($sp)
    # Line 385
    lw	$a1,-31224($s0)
.L0daa9e54:
    beqzl	$a1,.L0daa9e78
    lw	$a1,-31212($s0)
    # Line 389
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 390
    sw	$zero,-31224($s0)
    ld	$ra,32($sp)
    # Line 385
    lw	$a1,-31212($s0)
.L0daa9e78:
    beqzl	$a1,.L0daa9e9c
    lw	$a1,-31200($s0)
    # Line 389
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 390
    sw	$zero,-31212($s0)
    ld	$ra,32($sp)
    # Line 385
    lw	$a1,-31200($s0)
.L0daa9e9c:
    beqz	$a1,.L0daa9eb4
    sd	$ra,32($sp)
    # Line 389
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 390
    sw	$zero,-31200($s0)
.L0daa9eb4:
    ld	$s0,24($sp)
    # Line 394
    li	$a3,0xb030
    lui	$a4,0x7
    ori	$a4,$a4,0x4080
    # Line 395
    # lw $t9, -31080($gp) # &__glMgrSendMapSpec1D
    ld	$s1,0($sp)
    # Line 394
    sw	$a3,0($a4)
    # Line 395
    bal __glMgrSendMapSpec1D
    lw	$a0,-31240($s1)
    # Line 396
    # lw $t9, -31080($gp) # &__glMgrSendMapSpec1D
    bal __glMgrSendMapSpec1D
    lw	$a0,-31204($s1)
    # Line 397
    # lw $t9, -31080($gp) # &__glMgrSendMapSpec1D
    bal __glMgrSendMapSpec1D
    lw	$a0,-31228($s1)
    # Line 398
    # lw $t9, -31080($gp) # &__glMgrSendMapSpec1D
    bal __glMgrSendMapSpec1D
    lw	$a0,-31216($s1)
    # Line 400
    # lw $t9, -31076($gp) # &__glMgrSendMapData1D
    bal __glMgrSendMapData1D
    lw	$a0,-31240($s1)
    # Line 401
    # lw $t9, -31076($gp) # &__glMgrSendMapData1D
    bal __glMgrSendMapData1D
    lw	$a0,-31204($s1)
    # Line 402
    # lw $t9, -31076($gp) # &__glMgrSendMapData1D
    bal __glMgrSendMapData1D
    lw	$a0,-31228($s1)
    # Line 403
    # lw $t9, -31076($gp) # &__glMgrSendMapData1D
    bal __glMgrSendMapData1D
    lw	$a0,-31216($s1)
    b	.L0daa9dd4
    ld	$ra,32($sp)
.L0daa9f34:
    ld	$gp,16($sp)
    # Line 355
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrCleanUp1D

# Function: __glMgrSendMapSpec2D
# Declared: Line 407 (Source lines: 408-422)
# Address: 0x0daa9f44 - 0x0daa9f90 (Size: 76 bytes, Frame: 0)
.globl __glMgrSendMapSpec2D
.ent __glMgrSendMapSpec2D
__glMgrSendMapSpec2D:
    # Line 408
    lui	$a2,0x7
    beqz	$a0,.L0daa9f78
    ori	$a2,$a2,0x4080
    # Line 414
    lw	$v0,4($a0)
    # Line 415
    lw	$at,44($a0)
    # Line 412
    lw	$a1,8($a0)
    # Line 413
    lw	$v1,12($a0)
    # Line 415
    sll	$at,$at,0x2
    # Line 412
    sw	$a1,0($a2)
    # Line 413
    sw	$v1,0($a2)
    # Line 414
    sw	$v0,0($a2)
    # Line 422
    jr	$ra
    # Line 415
    sw	$at,0($a2)
.L0daa9f78:
    # Line 417
    sw	$zero,0($a2)
    # Line 418
    sw	$zero,0($a2)
    # Line 419
    sw	$zero,0($a2)
    # Line 420
    sw	$zero,0($a2)
    # Line 422
    jr	$ra
    nop
.end __glMgrSendMapSpec2D

# Function: __glMgrSendMapData2D
# Declared: Line 424 (Source lines: 425-450)
# Address: 0x0daa9f90 - 0x0daaa050 (Size: 192 bytes, Frame: 0)
.globl __glMgrSendMapData2D
.ent __glMgrSendMapData2D
__glMgrSendMapData2D:
    # Line 430
    li	$a1,0xb324
    lui	$a4,0x7
    # Line 425
    beqz	$a0,.L0daaa048
    # Line 430
    ori	$a4,$a4,0x4080
    # Line 444
    move	$a2,$zero
    # Line 437
    lwc1	$f0,40($a0)
    # Line 436
    lwc1	$f1,32($a0)
    # Line 435
    lwc1	$f2,28($a0)
    # Line 434
    lwc1	$f3,36($a0)
    # Line 438
    lw	$a5,44($a0)
    # Line 433
    lwc1	$f4,24($a0)
    # Line 440
    li	$v1,-2
    addiu	$v0,$a5,1
    and	$v0,$v0,$v1
    # Line 443
    lui	$v1,0xf
    ori	$v1,$v1,0xffff
    sll	$at,$v0,0x2
    and	$at,$at,$v1
    lui	$v1,0x8000
    or	$at,$at,$v1
    # Line 431
    lw	$v1,0($a0)
    # Line 430
    sw	$a1,0($a4)
    # Line 432
    lwc1	$f5,20($a0)
    # Line 431
    sll	$v1,$v1,0x2
    sw	$v1,0($a4)
    # Line 432
    swc1	$f5,0($a4)
    # Line 433
    swc1	$f4,0($a4)
    # Line 434
    swc1	$f3,0($a4)
    # Line 435
    swc1	$f2,0($a4)
    # Line 436
    swc1	$f1,0($a4)
    # Line 437
    swc1	$f0,0($a4)
    # Line 438
    sw	$a5,0($a4)
    # Line 441
    sw	$v0,0($a4)
    # Line 444
    blez	$a5,.L0daaa038
    # Line 443
    sw	$at,0($a4)
    # Line 444
    lw	$a3,48($a0)
.L0daaa020:
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    # Line 445
    lwc1	$f0,-4($a3)
    # Line 444
    slt	$a1,$a2,$a5
    bnez	$a1,.L0daaa020
    # Line 445
    swc1	$f0,0($a4)
.L0daaa038:
    # Line 444
    andi	$at,$a5,0x1
    beqz	$at,.L0daaa048
    nop
    # Line 447
    sw	$zero,0($a4)
.L0daaa048:
    # Line 450
    jr	$ra
    nop
.end __glMgrSendMapData2D

# Function: __glMgrHostMapData2D
# Declared: Line 452 (Source lines: 453-476)
# Address: 0x0daaa050 - 0x0daaa210 (Size: 448 bytes, Frame: 224)
.globl __glMgrHostMapData2D
.ent __glMgrHostMapData2D
__glMgrHostMapData2D:
    # Line 453
    addiu	$sp,$sp,-96
    sd	$s3,48($sp)
    sd	$s5,24($sp)
    # Line 461
    move	$s5,$zero
    sd	$s2,8($sp)
    # Line 453
    move	$s2,$a0
    sd	$s4,16($sp)
    # Line 459
    lw	$s4,48($a0)
    sd	$gp,40($sp)
    # Line 453
    lui	$at,0x15
    addiu	$at,$at,17992
    addu	$gp,$t9,$at
    # Line 461
    lw	$a1,4($a0)
    # Line 458
    lui	$a2,0x1
    lw	$v0,0($a0)
    sd	$s0,32($sp)
    # Line 456
    lw	$s0,__glCurrentContext
    # Line 458
    sll	$a4,$v0,0x2
    subu	$a4,$a4,$v0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    addu	$a2,$a2,$a4
    lw	$a2,-30716($a2)
    sd	$s0,0($sp)
    # Line 461
    blez	$a1,.L0daaa200
    # Line 458
    move	$s0,$a2
    sd	$ra,64($sp)
    sd	$s1,56($sp)
    # Line 461
    la	$s3,sub_0daa0000
    lw	$a0,12($s2)
    b	.L0daaa0e0
    addiu	$s3,$s3,30592
.L0daaa0d0:
    addiu	$s5,$s5,1
    slt	$at,$s5,$a1
    beqzl	$at,.L0daaa12c
    lw	$s1,0($s2)
.L0daaa0e0:
    # Line 462
    blez	$a0,.L0daaa0d0
    move	$s1,$zero
    lw	$a5,8($s2)
.L0daaa0ec:
    # Line 463
    move	$a0,$s4
    move	$a1,$a5
    move	$a2,$s0
    li	$a3,1
    bal __glMgrSendMapData1D
    move	$t9,$s3
    # Line 462
    addiu	$s1,$s1,1
    lw	$a0,12($s2)
    # Line 464
    lw	$a5,8($s2)
    # Line 462
    slt	$v1,$s1,$a0
    # Line 464
    sll	$v0,$a5,0x2
    # Line 465
    addu	$s0,$v0,$s0
    # Line 462
    bnez	$v1,.L0daaa0ec
    # Line 464
    addu	$s4,$v0,$s4
    b	.L0daaa0d0
    # Line 462
    lw	$a1,4($s2)
.L0daaa12c:
    ld	$s4,16($sp)
    ld	$ra,64($sp)
    # Line 461
    sll	$a4,$s1,0x2
    subu	$a4,$a4,$s1
    ld	$s1,0($sp)
    lui	$a2,0x1
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s1
    ld	$s1,56($sp)
    addu	$a2,$a2,$a4
    lw	$a2,-30716($a2)
.L0daaa158:
    # Line 468
    move	$s0,$a2
    # Line 469
    blez	$a1,.L0daaa1e4
    move	$s5,$zero
    sd	$ra,64($sp)
    sd	$s1,56($sp)
    lw	$a5,8($s2)
    b	.L0daaa19c
    lw	$a0,12($s2)
.L0daaa178:
    # Line 470
    lw	$a1,4($s2)
.L0daaa17c:
    # Line 469
    addiu	$s5,$s5,1
    # Line 474
    addiu	$v0,$a0,-1
    mult	$v0,$a5
    # Line 469
    slt	$v0,$s5,$a1
    # Line 474
    mflo	$at
    sll	$at,$at,0x2
    # Line 469
    beqz	$v0,.L0daaa1dc
    # Line 474
    addu	$s0,$at,$s0
.L0daaa19c:
    # Line 470
    blez	$a5,.L0daaa17c
    move	$s1,$zero
    # Line 471
    lw	$a1,12($s2)
.L0daaa1a8:
    move	$a3,$a5
    move	$a0,$s0
    move	$a2,$s0
    # Line 472
    addiu	$s0,$s0,4
    # Line 471
    bal __glMgrSendMapData1D
    move	$t9,$s3
    # Line 470
    lw	$a5,8($s2)
    addiu	$s1,$s1,1
    slt	$v1,$s1,$a5
    bnezl	$v1,.L0daaa1a8
    # Line 471
    lw	$a1,12($s2)
    b	.L0daaa178
    # Line 470
    lw	$a0,12($s2)
.L0daaa1dc:
    ld	$s1,56($sp)
    ld	$ra,64($sp)
.L0daaa1e4:
    ld	$gp,40($sp)
    # Line 476
    ld	$s0,32($sp)
    ld	$s2,8($sp)
    ld	$s3,48($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daaa200:
    # Line 461
    la	$s3,sub_0daa0000
    ld	$s4,16($sp)
    b	.L0daaa158
    addiu	$s3,$s3,30592
.end __glMgrHostMapData2D

# Function: __glMgrCleanUp2D
# Declared: Line 479 (Source lines: 480-551)
# Address: 0x0daaa210 - 0x0daaa674 (Size: 1124 bytes, Frame: 48)
.globl __glMgrCleanUp2D
.ent __glMgrCleanUp2D
__glMgrCleanUp2D:
    # Line 490
    move	$a0,$zero
    # Line 489
    move	$a1,$zero
    # Line 490
    lui	$a6,0x1
    # Line 480
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x15
    sd	$s1,8($sp)
    # Line 485
    lw	$s1,__glCurrentContext
    # Line 480
    addiu	$at,$at,17544
    addu	$gp,$t9,$at
    # Line 490
    addu	$a5,$a6,$s1
    # Line 492
    lw	$a3,-30724($a5)
    beqzl	$a3,.L0daaa278
    lw	$a3,-30712($a5)
    # Line 493
    lw	$a4,8($a3)
    lw	$v0,44($a3)
    slt	$v1,$a0,$a4
    beqz	$v1,.L0daaa260
    addu	$a1,$v0,$a1
    # Line 494
    move	$a0,$a4
.L0daaa260:
    lw	$a4,12($a3)
    slt	$a2,$a0,$a4
    beqzl	$a2,.L0daaa278
    # Line 492
    lw	$a3,-30712($a5)
    # Line 495
    move	$a0,$a4
    # Line 492
    lw	$a3,-30712($a5)
.L0daaa278:
    beqzl	$a3,.L0daaa2b0
    lw	$a3,-30700($a5)
    # Line 493
    lw	$a4,8($a3)
    lw	$at,44($a3)
    slt	$v0,$a0,$a4
    beqz	$v0,.L0daaa298
    addu	$a1,$at,$a1
    # Line 494
    move	$a0,$a4
.L0daaa298:
    lw	$a4,12($a3)
    slt	$v1,$a0,$a4
    beqzl	$v1,.L0daaa2b0
    # Line 492
    lw	$a3,-30700($a5)
    # Line 495
    move	$a0,$a4
    # Line 492
    lw	$a3,-30700($a5)
.L0daaa2b0:
    beqzl	$a3,.L0daaa2e8
    lw	$a3,-30688($a5)
    # Line 493
    lw	$a4,8($a3)
    lw	$a2,44($a3)
    slt	$at,$a0,$a4
    beqz	$at,.L0daaa2d0
    addu	$a1,$a2,$a1
    # Line 494
    move	$a0,$a4
.L0daaa2d0:
    lw	$a4,12($a3)
    slt	$v0,$a0,$a4
    beqzl	$v0,.L0daaa2e8
    # Line 492
    lw	$a3,-30688($a5)
    # Line 495
    move	$a0,$a4
    # Line 492
    lw	$a3,-30688($a5)
.L0daaa2e8:
    beqz	$a3,.L0daaa31c
    nop
    # Line 493
    lw	$a4,8($a3)
    lw	$v1,44($a3)
    slt	$a2,$a0,$a4
    beqz	$a2,.L0daaa308
    addu	$a1,$v1,$a1
    # Line 494
    move	$a0,$a4
.L0daaa308:
    lw	$a4,12($a3)
    slt	$at,$a0,$a4
    beqz	$at,.L0daaa31c
    nop
    # Line 495
    move	$a0,$a4
.L0daaa31c:
    # Line 491
    beqz	$a1,.L0daaa664
    # Line 502
    li	$v1,1
    # Line 501
    slti	$v0,$a1,209
    bnez	$v0,.L0daaa504
    slti	$a2,$a0,9
.L0daaa330:
    sd	$s0,24($sp)
    # Line 509
    addu	$s0,$a6,$s1
    # Line 504
    la	$v0,__glMgrEvalMesh2DHost
    # Line 503
    la	$at,__glMgrEvalCoord2DHost
    # Line 502
    addu	$a2,$a6,$s1
    # Line 504
    sw	$v0,-30192($a2)
    # Line 508
    lw	$v0,-30712($a2)
    # Line 502
    sb	$v1,-30208($a2)
    # Line 509
    lw	$v1,-30700($a2)
    # Line 503
    sw	$at,-30200($a2)
    # Line 507
    lw	$at,-30688($a2)
    # Line 509
    sw	$v1,-30696($a2)
    # Line 506
    lw	$v1,-30724($a2)
    # Line 507
    sw	$at,-30684($a2)
    # Line 508
    sw	$v0,-30708($a2)
    # Line 506
    sw	$v1,-30720($a2)
    # Line 509
    lw	$a1,-30716($s0)
    beqzl	$a1,.L0daaa39c
    # Line 516
    lw	$a3,-30724($s0)
    # Line 513
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    sd	$s2,40($sp)
    # Line 514
    sw	$zero,-30716($s0)
    ld	$ra,32($sp)
    # Line 516
    lw	$a3,-30724($s0)
.L0daaa39c:
    sd	$s2,40($sp)
    beqz	$a3,.L0daaa3d4
    move	$s2,$a3
    # Line 517
    move	$a0,$s1
    lw	$t9,0($s1)
    lw	$a1,44($a3)
    sd	$ra,32($sp)
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 518
    # lw $t9, -31056($gp) # &__glMgrHostMapData2D
    move	$a0,$s2
    bal __glMgrHostMapData2D
    # Line 517
    sw	$v0,-30716($s0)
    ld	$ra,32($sp)
.L0daaa3d4:
    # Line 509
    lw	$a1,-30704($s0)
    beqzl	$a1,.L0daaa3fc
    # Line 516
    lw	$a3,-30712($s0)
    # Line 513
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jal	__glMgrHostMapData2D
    move	$a0,$s1
    # Line 514
    sw	$zero,-30704($s0)
    ld	$ra,32($sp)
    # Line 516
    lw	$a3,-30712($s0)
.L0daaa3fc:
    beqz	$a3,.L0daaa430
    move	$s2,$a3
    # Line 517
    move	$a0,$s1
    lw	$t9,0($s1)
    lw	$a1,44($a3)
    sd	$ra,32($sp)
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 518
    # lw $t9, -31056($gp) # &__glMgrHostMapData2D
    move	$a0,$s2
    bal __glMgrHostMapData2D
    # Line 517
    sw	$v0,-30704($s0)
    ld	$ra,32($sp)
.L0daaa430:
    # Line 509
    lw	$a1,-30692($s0)
    beqzl	$a1,.L0daaa458
    # Line 516
    lw	$a3,-30700($s0)
    # Line 513
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jal	__glMgrHostMapData2D
    move	$a0,$s1
    # Line 514
    sw	$zero,-30692($s0)
    ld	$ra,32($sp)
    # Line 516
    lw	$a3,-30700($s0)
.L0daaa458:
    beqz	$a3,.L0daaa48c
    move	$s2,$a3
    # Line 517
    move	$a0,$s1
    lw	$t9,0($s1)
    lw	$a1,44($a3)
    sd	$ra,32($sp)
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 518
    # lw $t9, -31056($gp) # &__glMgrHostMapData2D
    move	$a0,$s2
    bal __glMgrHostMapData2D
    # Line 517
    sw	$v0,-30692($s0)
    ld	$ra,32($sp)
.L0daaa48c:
    # Line 509
    lw	$a1,-30680($s0)
    beqzl	$a1,.L0daaa4b4
    # Line 516
    lw	$a3,-30688($s0)
    # Line 513
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jal	__glMgrHostMapData2D
    move	$a0,$s1
    # Line 514
    sw	$zero,-30680($s0)
    ld	$ra,32($sp)
    # Line 516
    lw	$a3,-30688($s0)
.L0daaa4b4:
    beqz	$a3,.L0daaa4ec
    move	$s2,$a3
    # Line 517
    move	$a0,$s1
    lw	$t9,0($s1)
    lw	$a1,44($a3)
    sd	$ra,32($sp)
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 518
    # lw $t9, -31056($gp) # &__glMgrHostMapData2D
    move	$a0,$s2
    bal __glMgrHostMapData2D
    # Line 517
    sw	$v0,-30680($s0)
    ld	$ra,32($sp)
    ld	$s2,40($sp)
.L0daaa4ec:
    ld	$s0,24($sp)
    ld	$s2,40($sp)
.L0daaa4f4:
    ld	$gp,16($sp)
    # Line 551
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daaa504:
    # Line 501
    beqz	$a2,.L0daaa330
    sd	$s0,24($sp)
    # Line 530
    addu	$s0,$a6,$s1
    # Line 523
    la	$a2,__glMgrEvalCoord2DGe11
    # Line 522
    addu	$v0,$a6,$s1
    sd	$v0,0($sp)
    sb	$zero,-30208($v0)
    # Line 523
    sw	$a2,-30200($v0)
    # Line 524
    la	$at,__glMgrEvalMesh2DGe11
    # Line 528
    lw	$a2,-30688($v0)
    # Line 530
    lw	$v1,-30700($v0)
    # Line 524
    sw	$at,-30192($v0)
    # Line 529
    lw	$at,-30712($v0)
    # Line 530
    sw	$v1,-30696($v0)
    # Line 527
    lw	$v1,-30724($v0)
    # Line 529
    sw	$at,-30708($v0)
    # Line 526
    lbu	$at,-30188($v0)
    # Line 528
    sw	$a2,-30684($v0)
    # Line 527
    sw	$v1,-30720($v0)
    # Line 526
    sb	$at,-30187($v0)
    # Line 530
    lw	$a1,-30716($s0)
    beqzl	$a1,.L0daaa57c
    lw	$a1,-30704($s0)
    # Line 534
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jal	__glMgrHostMapData2D
    move	$a0,$s1
    # Line 535
    sw	$zero,-30716($s0)
    ld	$ra,32($sp)
    # Line 530
    lw	$a1,-30704($s0)
.L0daaa57c:
    beqzl	$a1,.L0daaa5a0
    lw	$a1,-30692($s0)
    # Line 534
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 535
    sw	$zero,-30704($s0)
    ld	$ra,32($sp)
    # Line 530
    lw	$a1,-30692($s0)
.L0daaa5a0:
    beqzl	$a1,.L0daaa5c4
    lw	$a1,-30680($s0)
    # Line 534
    lw	$t9,12($s1)
    sd	$ra,32($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 535
    sw	$zero,-30692($s0)
    ld	$ra,32($sp)
    # Line 530
    lw	$a1,-30680($s0)
.L0daaa5c4:
    beqz	$a1,.L0daaa5dc
    sd	$ra,32($sp)
    # Line 534
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 535
    sw	$zero,-30680($s0)
.L0daaa5dc:
    ld	$s0,24($sp)
    # Line 539
    li	$a1,0xb144
    # Line 541
    # lw $t9, -31064($gp) # &__glMgrSendMapSpec2D
    # Line 539
    lui	$v1,0x7
    ld	$s1,0($sp)
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    # Line 540
    lbu	$v0,-30188($s1)
    # Line 541
    lw	$a0,-30720($s1)
    bal __glMgrSendMapSpec2D
    # Line 540
    sw	$v0,0($v1)
    # Line 542
    # lw $t9, -31064($gp) # &__glMgrSendMapSpec2D
    bal __glMgrSendMapSpec2D
    lw	$a0,-30684($s1)
    # Line 543
    # lw $t9, -31064($gp) # &__glMgrSendMapSpec2D
    bal __glMgrSendMapSpec2D
    lw	$a0,-30708($s1)
    # Line 544
    # lw $t9, -31064($gp) # &__glMgrSendMapSpec2D
    bal __glMgrSendMapSpec2D
    lw	$a0,-30696($s1)
    # Line 546
    # lw $t9, -31060($gp) # &__glMgrSendMapData2D
    bal __glMgrSendMapData2D
    lw	$a0,-30720($s1)
    # Line 547
    # lw $t9, -31060($gp) # &__glMgrSendMapData2D
    bal __glMgrSendMapData2D
    lw	$a0,-30684($s1)
    # Line 548
    # lw $t9, -31060($gp) # &__glMgrSendMapData2D
    bal __glMgrSendMapData2D
    lw	$a0,-30708($s1)
    # Line 549
    # lw $t9, -31060($gp) # &__glMgrSendMapData2D
    bal __glMgrSendMapData2D
    lw	$a0,-30696($s1)
    b	.L0daaa4f4
    ld	$ra,32($sp)
.L0daaa664:
    ld	$gp,16($sp)
    # Line 499
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrCleanUp2D

# Function: EvalV
# Declared: Line 561 (Source lines: 562-595)
# Address: 0x0daaa674 - 0x0daaa858 (Size: 484 bytes, Frame: 0)
.ent EvalV
EvalV:
    # Line 562
    lw	$a5,12($a1)
    li	$at,1
    beq	$a5,$at,.L0daaa7f4
    lw	$a4,4($a1)
    # Line 573
    lwc1	$f0,32($a1)
    c.eq.s	$f0,$f14
    nop
    bc1fl	.L0daaa6a0
    # Line 576
    lwc1	$f0,28($a1)
    b	.L0daaa6b0
    ldc1	$f4,_lit8_3ff0000000000000
.L0daaa6a0:
    sub.s	$f0,$f14,$f0
    lwc1	$f4,40($a1)
    mul.s	$f4,$f4,$f0
    cvt.d.s	$f4,$f4
.L0daaa6b0:
    # Line 579
    move	$t0,$a0
    # Line 580
    blez	$a4,.L0daaa7ec
    move	$t9,$zero
    cvt.s.d	$f6,$f4
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f6
    sub.d	$f5,$f5,$f7
    mtc1	$zero,$f7
    lw	$t2,8($a1)
    b	.L0daaa70c
    cvt.s.d	$f5,$f5
.L0daaa6dc:
    # Line 581
    lw	$a4,4($a1)
    lw	$a5,12($a1)
.L0daaa6e4:
    # Line 593
    addiu	$a2,$a5,-1
    mult	$a2,$t2
    # Line 592
    sll	$v1,$t2,0x2
    addu	$a3,$v1,$a3
    # Line 580
    addiu	$t9,$t9,1
    slt	$v1,$t9,$a4
    # Line 593
    mflo	$v0
    sll	$v0,$v0,0x2
    # Line 580
    beqz	$v1,.L0daaa7ec
    # Line 593
    addu	$t0,$v0,$t0
.L0daaa70c:
    # Line 581
    blez	$t2,.L0daaa6e4
    move	$t3,$zero
    b	.L0daaa748
    move	$t8,$a3
.L0daaa71c:
    addiu	$t3,$t3,1
.L0daaa720:
    # Line 589
    mul.s	$f1,$f6,$f4
    lwc1	$f0,0($t0)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f1
    swc1	$f0,0($t8)
    # Line 581
    lw	$t2,8($a1)
    addiu	$t8,$t8,4
    slt	$at,$t3,$t2
    beqz	$at,.L0daaa6dc
    # Line 590
    addiu	$t0,$t0,4
.L0daaa748:
    # Line 582
    lw	$t1,12($a1)
    andi	$v0,$t1,0x1
    beqz	$v0,.L0daaa7d0
    # Line 584
    mov.s	$f4,$f7
.L0daaa758:
    negu	$a7,$t2
    slti	$v1,$t1,2
    bnez	$v1,.L0daaa71c
    negu	$a6,$t2
    mult	$t2,$t1
    mflo	$a5
    nop
    addiu	$a4,$t1,-1
    mult	$t2,$a4
    addu	$a6,$a6,$a6
    addu	$a7,$a7,$a7
    sll	$a7,$a7,0x2
    sll	$a6,$a6,0x2
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$t0
    mflo	$a0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$t0
.L0daaa7a0:
    # Line 586
    mul.s	$f1,$f6,$f4
    lwc1	$f0,0($a0)
    add.s	$f0,$f0,$f1
    # Line 587
    mul.s	$f0,$f5,$f0
    addu	$a0,$a6,$a0
    addu	$a5,$a7,$a5
    lwc1	$f4,0($a5)
    addiu	$a4,$a4,-2
    bgtz	$a4,.L0daaa7a0
    add.s	$f4,$f4,$f0
    b	.L0daaa720
    # Line 581
    addiu	$t3,$t3,1
.L0daaa7d0:
    # Line 583
    addiu	$t1,$t1,-1
    mult	$t2,$t1
    mflo	$at
    sll	$at,$at,0x2
    addu	$at,$at,$t0
    b	.L0daaa758
    lwc1	$f4,0($at)
.L0daaa7ec:
    # Line 595
    jr	$ra
    nop
.L0daaa7f4:
    # Line 568
    blez	$a4,.L0daaa850
    move	$t9,$zero
    lw	$t2,8($a1)
.L0daaa800:
    # Line 569
    blez	$t2,.L0daaa840
    move	$t3,$zero
.L0daaa808:
    # Line 570
    mult	$t2,$t9
    mflo	$v1
    addu	$v1,$v1,$t3
    sll	$v1,$v1,0x2
    addu	$a2,$v1,$a0
    lwc1	$f2,0($a2)
    addu	$v1,$v1,$a3
    swc1	$f2,0($v1)
    # Line 569
    lw	$t2,8($a1)
    addiu	$t3,$t3,1
    slt	$v0,$t3,$t2
    bnez	$v0,.L0daaa808
    nop
    lw	$a4,4($a1)
.L0daaa840:
    # Line 568
    addiu	$t9,$t9,1
    slt	$a2,$t9,$a4
    bnez	$a2,.L0daaa800
    nop
.L0daaa850:
    # Line 573
    jr	$ra
    nop
.end EvalV

# Function: EvalU
# Declared: Line 605 (Source lines: 606-637)
# Address: 0x0daaa858 - 0x0daaaa2c (Size: 468 bytes, Frame: 192)
.ent EvalU
EvalU:
    # Line 606
    lw	$t3,8($a1)
    li	$at,1
    beq	$t3,$at,.L0daaa9c4
    addiu	$sp,$sp,-64
    # Line 620
    blez	$a4,.L0daaa9bc
    move	$t8,$zero
    mtc1	$zero,$f7
    ldc1	$f9,_lit8_3ff0000000000000
    move	$t9,$a3
    lw	$t1,4($a1)
    addu	$v0,$a3,$a4
    b	.L0daaa89c
    sd	$v0,0($sp)
.L0daaa88c:
    ld	$v1,0($sp)
    addiu	$t9,$t9,1
    beq	$t9,$v1,.L0daaa9bc
    addiu	$t8,$t8,1
.L0daaa89c:
    # Line 621
    lw	$a6,12($a2)
    bne	$a6,$t9,.L0daaa8b0
    move	$t0,$a0
    # Line 622
    b	.L0daaa8cc
    lwc1	$f4,4($a2)
.L0daaa8b0:
    mtc1	$t9,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f4,0($a2)
    add.s	$f4,$f4,$f0
.L0daaa8cc:
    lwc1	$f2,24($a1)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0daaa8e8
    # Line 623
    lwc1	$f0,20($a1)
    b	.L0daaa8f8
    mov.d	$f8,$f9
.L0daaa8e8:
    sub.s	$f0,$f4,$f0
    lwc1	$f8,36($a1)
    mul.s	$f8,$f8,$f0
    cvt.d.s	$f8,$f8
.L0daaa8f8:
    # Line 625
    blez	$t1,.L0daaa88c
    move	$t2,$zero
    cvt.s.d	$f6,$f8
    cvt.d.s	$f5,$f6
    sub.d	$f5,$f9,$f5
    b	.L0daaa958
    cvt.s.d	$f5,$f5
.L0daaa914:
    # Line 633
    mult	$t1,$t8
    mul.s	$f1,$f6,$f4
    lwc1	$f0,0($t0)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f1
    mflo	$v1
    addu	$v1,$v1,$t2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    swc1	$f0,0($v1)
    # Line 634
    lw	$t3,8($a1)
    # Line 625
    lw	$t1,4($a1)
    addiu	$t2,$t2,1
    # Line 634
    sll	$at,$t3,0x2
    # Line 625
    slt	$v0,$t2,$t1
    beqz	$v0,.L0daaa88c
    # Line 634
    addu	$t0,$at,$t0
.L0daaa958:
    # Line 626
    andi	$a6,$t3,0x1
    beqz	$a6,.L0daaa9a8
    move	$a7,$t3
    # Line 628
    mov.s	$f4,$f7
.L0daaa968:
    slti	$at,$a7,2
    bnez	$at,.L0daaa914
    sll	$a3,$a7,0x2
    addu	$a3,$a3,$t0
    addiu	$a4,$t0,4
.L0daaa97c:
    # Line 630
    mul.s	$f1,$f6,$f4
    lwc1	$f0,-4($a3)
    add.s	$f0,$f0,$f1
    # Line 631
    mul.s	$f0,$f5,$f0
    addiu	$a3,$a3,-8
    lwc1	$f4,0($a3)
    sltu	$a6,$a4,$a3
    bnez	$a6,.L0daaa97c
    add.s	$f4,$f4,$f0
    b	.L0daaa914
    nop
.L0daaa9a8:
    # Line 627
    addiu	$a7,$a7,-1
    sll	$at,$a7,0x2
    addu	$at,$at,$t0
    b	.L0daaa968
    lwc1	$f4,0($at)
.L0daaa9bc:
    # Line 637
    jr	$ra
    addiu	$sp,$sp,64
.L0daaa9c4:
    # Line 612
    blez	$a4,.L0daaaa24
    move	$t8,$zero
    b	.L0daaa9e0
    lw	$t1,4($a1)
.L0daaa9d4:
    addiu	$t8,$t8,1
.L0daaa9d8:
    beq	$a4,$t8,.L0daaaa24
    nop
.L0daaa9e0:
    # Line 613
    blez	$t1,.L0daaa9d4
    move	$t2,$zero
    move	$a2,$a0
.L0daaa9ec:
    # Line 614
    mult	$t1,$t8
    mflo	$v1
    addu	$v1,$v1,$t2
    lwc1	$f2,0($a2)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    swc1	$f2,0($v1)
    # Line 613
    lw	$t1,4($a1)
    addiu	$t2,$t2,1
    slt	$v0,$t2,$t1
    bnez	$v0,.L0daaa9ec
    addiu	$a2,$a2,4
    b	.L0daaa9d8
    # Line 612
    addiu	$t8,$t8,1
.L0daaaa24:
    # Line 617
    jr	$ra
    addiu	$sp,$sp,64
.end EvalU

# Function: EvalVdV
# Declared: Line 648 (Source lines: 649-682)
# Address: 0x0daaaa2c - 0x0daaabe8 (Size: 444 bytes, Frame: 192)
.ent EvalVdV
EvalVdV:
    # Line 649
    lwc1	$f0,32($a1)
    c.eq.s	$f0,$f14
    nop
    bc1f	.L0daaaa48
    addiu	$sp,$sp,-64
    # Line 654
    b	.L0daaaa5c
    ldc1	$f4,_lit8_3ff0000000000000
.L0daaaa48:
    lwc1	$f0,28($a1)
    sub.s	$f0,$f14,$f0
    lwc1	$f4,40($a1)
    mul.s	$f4,$f4,$f0
    cvt.d.s	$f4,$f4
.L0daaaa5c:
    # Line 658
    lw	$a5,4($a1)
    # Line 657
    move	$t1,$a0
    # Line 658
    blez	$a5,.L0daaabe0
    sd	$zero,0($sp)
    cvt.s.d	$f7,$f4
    ldc1	$f6,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f7
    mtc1	$zero,$f8
    sub.d	$f6,$f6,$f0
    lw	$a0,12($a1)
    lw	$t3,8($a1)
    b	.L0daaaacc
    cvt.s.d	$f6,$f6
.L0daaaa90:
    # Line 659
    lw	$a0,12($a1)
    lw	$a5,4($a1)
.L0daaaa98:
    # Line 680
    addiu	$v1,$a0,-1
    mult	$v1,$t3
    # Line 678
    sll	$v0,$t3,0x2
    # Line 658
    ld	$at,0($sp)
    # Line 679
    addu	$a4,$v0,$a4
    # Line 678
    addu	$a3,$v0,$a3
    # Line 658
    addiu	$at,$at,1
    sd	$at,0($sp)
    slt	$at,$at,$a5
    # Line 680
    mflo	$v0
    sll	$v0,$v0,0x2
    # Line 658
    beqz	$at,.L0daaabe0
    # Line 680
    addu	$t1,$v0,$t1
.L0daaaacc:
    # Line 659
    blez	$t3,.L0daaaa98
    move	$t8,$zero
    move	$a2,$a3
    sd	$a3,8($sp)
    b	.L0daaab24
    move	$t9,$a4
.L0daaaae4:
    addiu	$t8,$t8,1
.L0daaaae8:
    # Line 674
    mul.s	$f3,$f7,$f4
    lwc1	$f2,0($t1)
    mul.s	$f2,$f2,$f6
    add.s	$f2,$f2,$f3
    ld	$v0,8($sp)
    swc1	$f2,0($v0)
    # Line 675
    lwc1	$f1,0($t1)
    sub.s	$f1,$f5,$f1
    swc1	$f1,-4($t9)
    # Line 659
    lw	$t3,8($a1)
    # Line 676
    addiu	$t1,$t1,4
    # Line 659
    addiu	$v0,$v0,4
    slt	$at,$t8,$t3
    beqz	$at,.L0daaaa90
    sd	$v0,8($sp)
.L0daaab24:
    # Line 660
    lw	$t2,12($a1)
    andi	$v1,$t2,0x1
    beqz	$v1,.L0daaabc4
    # Line 665
    mov.s	$f4,$f8
.L0daaab34:
    # Line 659
    addiu	$t9,$t9,4
    # Line 665
    negu	$a7,$t3
    negu	$t0,$t3
    slti	$a2,$t2,2
    bnez	$a2,.L0daaaae4
    mov.s	$f5,$f4
    mult	$t3,$t2
    mflo	$a6
    nop
    addiu	$a0,$t2,-1
    mult	$t3,$a0
    addu	$a7,$a7,$a7
    addu	$t0,$t0,$t0
    sll	$t0,$t0,0x2
    sll	$a7,$a7,0x2
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$t1
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$t1
.L0daaab84:
    # Line 669
    mul.s	$f1,$f7,$f4
    # Line 670
    mul.s	$f5,$f6,$f5
    # Line 669
    lwc1	$f0,0($a5)
    add.s	$f0,$f0,$f1
    # Line 670
    sub.s	$f5,$f5,$f0
    # Line 671
    mul.s	$f0,$f6,$f0
    # Line 672
    mul.s	$f5,$f7,$f5
    # Line 671
    addu	$a6,$t0,$a6
    lwc1	$f4,0($a6)
    add.s	$f4,$f4,$f0
    addu	$a5,$a7,$a5
    addiu	$a0,$a0,-2
    # Line 672
    bgtz	$a0,.L0daaab84
    add.s	$f5,$f5,$f4
    b	.L0daaaae8
    # Line 659
    addiu	$t8,$t8,1
.L0daaabc4:
    # Line 662
    addiu	$t2,$t2,-1
    mult	$t3,$t2
    mflo	$at
    sll	$at,$at,0x2
    addu	$at,$at,$t1
    b	.L0daaab34
    lwc1	$f4,0($at)
.L0daaabe0:
    # Line 682
    jr	$ra
    addiu	$sp,$sp,64
.end EvalVdV

# Function: EvalUdU
# Declared: Line 694 (Source lines: 696-750)
# Address: 0x0daaabe8 - 0x0daaaf38 (Size: 848 bytes, Frame: 208)
.ent EvalUdU
EvalUdU:
    # Line 696
    addiu	$sp,$sp,-208
    sd	$s4,64($sp)
    sd	$s5,72($sp)
    sd	$s6,56($sp)
    sdc1	$f28,32($sp)
    sdc1	$f30,40($sp)
    sd	$ra,48($sp)
    sd	$s8,88($sp)
    move	$s8,$a0
    sd	$s7,112($sp)
    move	$s7,$a1
    sd	$s0,104($sp)
    move	$s0,$a2
    sd	$s3,120($sp)
    move	$s3,$a3
    sd	$s2,128($sp)
    move	$s2,$a6
    sd	$s1,96($sp)
    # Line 697
    lw	$at,__glCurrentContext
    # Line 704
    move	$s1,$zero
    blez	$a5,.L0daaaf00
    sd	$at,80($sp)
    sd	$ra,48($sp)
    move	$s4,$a4
    li	$a0,4
    mtc1	$zero,$f28
    ldc1	$f30,_lit8_3ff0000000000000
    move	$s5,$a7
    move	$s6,$zero
    addu	$v0,$a4,$a5
    b	.L0daaace4
    sd	$v0,136($sp)
.L0daaac68:
    # Line 710
    lwc1	$f5,0($sp)
    lwc1	$f4,4($sp)
    lwc1	$f6,8($sp)
    lwc1	$f7,16($sp)
    lwc1	$f8,20($sp)
    beq	$a7,$a0,.L0daaae80
    lwc1	$f9,24($sp)
.L0daaac84:
    # Line 746
    mul.s	$f3,$f8,$f5
    # Line 744
    mul.s	$f2,$f8,$f6
    # Line 745
    mul.s	$f6,$f7,$f6
    mul.s	$f1,$f9,$f5
    # Line 746
    mul.s	$f0,$f7,$f4
    # Line 744
    mul.s	$f10,$f9,$f4
    # Line 745
    sub.s	$f1,$f1,$f6
    # Line 746
    sub.s	$f0,$f0,$f3
    # Line 744
    sub.s	$f2,$f2,$f10
    # Line 748
    ld	$t9,80($sp)
    # Line 746
    swc1	$f0,8($s5)
    # Line 745
    swc1	$f1,4($s5)
    # Line 744
    swc1	$f2,0($s5)
    # Line 748
    lw	$t9,11976($t9)
    move	$a1,$s5
    jalr	$t9
    move	$a0,$s5
    li	$a0,4
    # Line 704
    addiu	$s6,$s6,16
    ld	$at,136($sp)
    addiu	$s5,$s5,12
    addiu	$s4,$s4,1
    beq	$s4,$at,.L0daaaf00
    addiu	$s1,$s1,1
.L0daaace4:
    # Line 706
    lw	$v0,12($s3)
    # Line 705
    move	$a5,$s8
    # Line 706
    bne	$v0,$s4,.L0daaacfc
    move	$a6,$s7
    # Line 707
    b	.L0daaad18
    lwc1	$f4,4($s3)
.L0daaacfc:
    mtc1	$s4,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,8($s3)
    mul.s	$f0,$f0,$f1
    lwc1	$f4,0($s3)
    add.s	$f4,$f4,$f0
.L0daaad18:
    lwc1	$f2,24($s0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0daaad34
    # Line 708
    lwc1	$f0,20($s0)
    b	.L0daaad44
    mov.d	$f5,$f30
.L0daaad34:
    sub.s	$f0,$f4,$f0
    lwc1	$f5,36($s0)
    mul.s	$f5,$f5,$f0
    cvt.d.s	$f5,$f5
.L0daaad44:
    # Line 710
    lw	$a7,4($s0)
    blez	$a7,.L0daaac68
    move	$t1,$zero
    cvt.s.d	$f7,$f5
    cvt.d.s	$f8,$f7
    addiu	$t3,$sp,16
    sub.d	$f8,$f30,$f8
    addiu	$t2,$sp,0
    lw	$a1,8($s0)
    b	.L0daaae30
    cvt.s.d	$f8,$f8
.L0daaad70:
    # Line 719
    addiu	$a3,$a5,4
.L0daaad74:
    # Line 722
    mul.s	$f2,$f7,$f4
    # Line 724
    mul.s	$f1,$f7,$f6
    # Line 722
    lwc1	$f6,-4($a1)
    # Line 723
    mul.s	$f5,$f8,$f5
    # Line 724
    lwc1	$f0,-4($a2)
    # Line 722
    add.s	$f6,$f6,$f2
    # Line 724
    add.s	$f0,$f0,$f1
    # Line 725
    mul.s	$f1,$f8,$f6
    # Line 723
    sub.s	$f5,$f5,$f6
    # Line 727
    mul.s	$f0,$f8,$f0
    # Line 725
    lwc1	$f4,-8($a1)
    # Line 726
    mul.s	$f5,$f7,$f5
    # Line 727
    lwc1	$f6,-8($a2)
    # Line 725
    add.s	$f4,$f4,$f1
    addiu	$a2,$a2,-8
    addiu	$a1,$a1,-8
    # Line 727
    add.s	$f6,$f6,$f0
    sltu	$t0,$a3,$a1
    bnez	$t0,.L0daaad74
    # Line 726
    add.s	$f5,$f5,$f4
.L0daaadc4:
    # Line 729
    mult	$a7,$s1
    mul.s	$f1,$f7,$f4
    lwc1	$f0,0($a5)
    mul.s	$f0,$f0,$f8
    add.s	$f0,$f0,$f1
    mflo	$v1
    addu	$v1,$v1,$t1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    swc1	$f0,0($v1)
    # Line 731
    mul.s	$f1,$f7,$f6
    lwc1	$f3,0($a6)
    # Line 710
    addiu	$t2,$t2,4
    addiu	$t1,$t1,1
    # Line 731
    mul.s	$f3,$f3,$f8
    # Line 710
    lw	$a7,4($s0)
    # Line 730
    lwc1	$f0,0($a5)
    # Line 732
    lw	$a1,8($s0)
    # Line 710
    slt	$at,$t1,$a7
    # Line 730
    sub.s	$f0,$f5,$f0
    # Line 732
    sll	$v0,$a1,0x2
    # Line 733
    addu	$a6,$v0,$a6
    # Line 731
    add.s	$f3,$f3,$f1
    # Line 732
    addu	$a5,$v0,$a5
    # Line 730
    swc1	$f0,-4($t2)
    # Line 710
    beqz	$at,.L0daaac68
    # Line 731
    swc1	$f3,-4($t3)
.L0daaae30:
    # Line 719
    mov.s	$f6,$f28
    # Line 711
    andi	$t0,$a1,0x1
    beqz	$t0,.L0daaae64
    move	$a4,$a1
    # Line 717
    mov.s	$f4,$f28
.L0daaae44:
    # Line 710
    addiu	$t3,$t3,4
    # Line 719
    slti	$at,$a4,2
    bnez	$at,.L0daaadc4
    mov.s	$f5,$f4
    sll	$a1,$a4,0x2
    addu	$a2,$a1,$a6
    b	.L0daaad70
    addu	$a1,$a1,$a5
.L0daaae64:
    # Line 713
    addiu	$a4,$a4,-1
    sll	$v0,$a4,0x2
    # Line 715
    addu	$v1,$v0,$a6
    # Line 713
    addu	$v0,$v0,$a5
    # Line 715
    lwc1	$f6,0($v1)
    b	.L0daaae44
    # Line 713
    lwc1	$f4,0($v0)
.L0daaae80:
    # Line 739
    lwc1	$f0,28($sp)
    # Line 736
    addu	$t0,$s6,$s2
    # Line 738
    lwc1	$f12,8($t0)
    # Line 736
    lwc1	$f1,12($sp)
    # Line 741
    mul.s	$f3,$f12,$f0
    # Line 737
    lwc1	$f11,4($t0)
    # Line 738
    mul.s	$f12,$f12,$f1
    # Line 740
    mul.s	$f2,$f11,$f0
    # Line 736
    lwc1	$f10,0($t0)
    # Line 737
    mul.s	$f11,$f11,$f1
    # Line 739
    mul.s	$f0,$f10,$f0
    # Line 736
    lwc1	$f13,12($t0)
    mul.s	$f10,$f10,$f1
    mul.s	$f5,$f13,$f5
    # Line 737
    mul.s	$f4,$f13,$f4
    # Line 739
    mul.s	$f7,$f13,$f7
    # Line 736
    sub.s	$f5,$f5,$f10
    # Line 740
    mul.s	$f8,$f13,$f8
    # Line 737
    sub.s	$f4,$f4,$f11
    # Line 741
    mul.s	$f9,$f13,$f9
    # Line 739
    sub.s	$f7,$f7,$f0
    # Line 738
    mul.s	$f6,$f13,$f6
    # Line 740
    sub.s	$f8,$f8,$f2
    # Line 741
    sub.s	$f9,$f9,$f3
    # Line 738
    sub.s	$f6,$f6,$f12
    # Line 741
    swc1	$f9,24($sp)
    # Line 740
    swc1	$f8,20($sp)
    # Line 739
    swc1	$f7,16($sp)
    # Line 738
    swc1	$f6,8($sp)
    # Line 737
    swc1	$f4,4($sp)
    b	.L0daaac84
    # Line 736
    swc1	$f5,0($sp)
.L0daaaf00:
    # Line 750
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,64($sp)
    ld	$s5,72($sp)
    ld	$s6,56($sp)
    ld	$s7,112($sp)
    ld	$s8,88($sp)
    ld	$ra,48($sp)
    ldc1	$f28,32($sp)
    ldc1	$f30,40($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end EvalUdU

# Function: EvalRow1D
# Declared: Line 753 (Source lines: 754-809)
# Address: 0x0daaaf38 - 0x0daab214 (Size: 732 bytes, Frame: 192)
.ent EvalRow1D
EvalRow1D:
    # Line 754
    move	$a4,$a2
    addiu	$sp,$sp,-192
    sd	$a2,24($sp)
    move	$v0,$a0
    # Line 774
    move	$a2,$v0
    sd	$s0,104($sp)
    # Line 754
    move	$s0,$a3
    move	$at,$a1
    # Line 774
    move	$a3,$at
    move	$a5,$s0
    # Line 754
    # lw $t9, -32728($gp) # &sub_0dab0000
    sd	$s2,80($sp)
    sd	$ra,40($sp)
    sd	$s3,88($sp)
    sd	$a1,48($sp)
    sd	$a0,56($sp)
    addiu	$t9,$t9,-22440
    sd	$s1,112($sp)
    # Line 755
    lw	$s1,__glCurrentContext
    sd	$s4,96($sp)
    # Line 761
    lui	$s4,0x1
    addu	$s4,$s1,$s4
    # Line 774
    lw	$a0,-31236($s4)
    # Line 768
    lw	$a1,-31200($s4)
    # Line 767
    lw	$s3,-31208($s4)
    # Line 766
    lw	$v1,-31212($s4)
    # Line 765
    lw	$ra,-31220($s4)
    # Line 764
    lw	$t8,-31224($s4)
    # Line 763
    lw	$s2,-31232($s4)
    # Line 761
    lw	$s4,-31244($s4)
    sd	$v1,72($sp)
    sd	$t8,64($sp)
    sd	$a1,32($sp)
    sd	$ra,16($sp)
    # Line 774
    bal __glMgrCleanUp2D
    move	$a1,$s4
    ld	$at,16($sp)
    bnez	$at,.L0daab190
    ld	$ra,40($sp)
    # Line 776
    bnez	$s2,.L0daab1c0
    ld	$a0,64($sp)
.L0daaafdc:
    # Line 779
    bnez	$s3,.L0daab1e8
.L0daaafe0:
    # Line 782
    ld	$v1,24($sp)
    ld	$v0,24($sp)
    blez	$v0,.L0daab174
    sll	$v1,$v1,0x2
    sd	$zero,0($sp)
    sd	$s6,128($sp)
    li	$s6,3
    sd	$s7,152($sp)
    li	$s7,1
    sd	$s8,136($sp)
    move	$s8,$zero
    sd	$zero,8($sp)
    sd	$s5,144($sp)
    move	$s5,$zero
    b	.L0daab078
    sd	$v1,120($sp)
.L0daab020:
    # Line 799
    addu	$a0,$s5,$s0
    jal	sub_0dab0000
    addiu	$a0,$a0,12288
    ld	$a6,16($sp)
.L0daab030:
    bnezl	$a6,.L0daab0e4
    # Line 802
    lw	$t9,5640($s1)
    lw	$at,4($s4)
.L0daab03c:
    beq	$at,$s6,.L0daab0fc
    lw	$a2,5640($s1)
    # Line 807
    lw	$t9,1560($a2)
    jalr	$t9
    addu	$a0,$s5,$s0
    # Line 784
    addiu	$s5,$s5,16
.L0daab054:
    addiu	$s8,$s8,12
    ld	$v0,0($sp)
    ld	$a6,8($sp)
    ld	$v1,120($sp)
    addiu	$v0,$v0,4
    addiu	$a6,$a6,8
    sd	$a6,8($sp)
    beq	$v0,$v1,.L0daab160
    sd	$v0,0($sp)
.L0daab078:
    # Line 782
    beqz	$s2,.L0daab09c
    nop
    lw	$at,4($s2)
    beq	$at,$s7,.L0daab110
    lw	$a2,5640($s1)
    # Line 789
    lw	$t9,1664($a2)
    addu	$a0,$s5,$s0
    jalr	$t9
    addiu	$a0,$a0,4096
.L0daab09c:
    beqz	$s3,.L0daab030
    ld	$a6,16($sp)
    lw	$a0,4($s3)
    li	$a6,2
    beq	$a0,$s7,.L0daab12c
    lw	$a2,5640($s1)
    # Line 793
    beql	$a0,$a6,.L0daab148
    # Line 795
    ld	$a0,8($sp)
    bnel	$a0,$s6,.L0daab020
    # Line 799
    lw	$t9,1896($a2)
    # Line 797
    lw	$t9,1864($a2)
    addu	$a0,$s8,$s0
    jalr	$t9
    addiu	$a0,$a0,12288
    ld	$a6,16($sp)
    # Line 799
    beqzl	$a6,.L0daab03c
    # Line 802
    lw	$at,4($s4)
    lw	$t9,5640($s1)
.L0daab0e4:
    lw	$t9,1768($t9)
    addu	$a0,$s8,$s0
    jalr	$t9
    addiu	$a0,$a0,8192
    b	.L0daab03c
    lw	$at,4($s4)
.L0daab0fc:
    # Line 805
    lw	$t9,1528($a2)
    jalr	$t9
    addu	$a0,$s8,$s0
    b	.L0daab054
    # Line 784
    addiu	$s5,$s5,16
.L0daab110:
    # Line 787
    ld	$a0,0($sp)
    lw	$t9,1720($a2)
    addu	$a0,$a0,$s0
    jalr	$t9
    addiu	$a0,$a0,4096
    b	.L0daab09c
    nop
.L0daab12c:
    # Line 793
    ld	$a0,0($sp)
    lw	$t9,1800($a2)
    addu	$a0,$a0,$s0
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab030
    ld	$a6,16($sp)
.L0daab148:
    # Line 795
    lw	$t9,1832($a2)
    addu	$a0,$a0,$s0
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab030
    ld	$a6,16($sp)
.L0daab160:
    ld	$s7,152($sp)
    ld	$s5,144($sp)
    ld	$ra,40($sp)
    ld	$s8,136($sp)
    ld	$s6,128($sp)
.L0daab174:
    # Line 809
    ld	$s0,104($sp)
    ld	$s1,112($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    ld	$s4,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0daab190:
    ld	$a0,72($sp)
    # Line 776
    ld	$a1,16($sp)
    ld	$a2,56($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    ld	$a3,48($sp)
    ld	$a4,24($sp)
    addiu	$t9,$t9,-22440
    bal __glMgrCleanUp2D
    addiu	$a5,$s0,8192
    beqz	$s2,.L0daaafdc
    ld	$ra,40($sp)
    ld	$a0,64($sp)
.L0daab1c0:
    # Line 779
    move	$a1,$s2
    ld	$a2,56($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    ld	$a3,48($sp)
    ld	$a4,24($sp)
    addiu	$t9,$t9,-22440
    bal __glMgrCleanUp2D
    addiu	$a5,$s0,4096
    beqz	$s3,.L0daaafe0
    ld	$ra,40($sp)
.L0daab1e8:
    ld	$a0,32($sp)
    # Line 782
    move	$a1,$s3
    ld	$a2,56($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    ld	$a3,48($sp)
    ld	$a4,24($sp)
    addiu	$t9,$t9,-22440
    bal __glMgrCleanUp2D
    addiu	$a5,$s0,12288
    b	.L0daaafe0
    ld	$ra,40($sp)
.end EvalRow1D

# Function: EvalRow2D
# Declared: Line 812 (Source lines: 813-883)
# Address: 0x0daab214 - 0x0daab600 (Size: 1004 bytes, Frame: 176)
.ent EvalRow2D
EvalRow2D:
    # Line 813
    addiu	$sp,$sp,-688
    sd	$ra,624($sp)
    sdc1	$f20,480($sp)
    mov.s	$f20,$f12
    sd	$s5,576($sp)
    move	$s5,$a3
    sd	$s0,568($sp)
    move	$s0,$a4
    sd	$s8,544($sp)
    move	$s8,$a5
    sd	$s2,608($sp)
    sd	$s3,600($sp)
    sd	$s7,560($sp)
    move	$s7,$a1
    sd	$s6,592($sp)
    move	$s6,$a2
    sd	$s1,552($sp)
    # Line 820
    lw	$s1,__glCurrentContext
    sd	$s4,584($sp)
    # Line 822
    lui	$s4,0x1
    addu	$s4,$s1,$s4
    # Line 828
    lw	$s3,-30688($s4)
    # Line 824
    lw	$s2,-30712($s4)
    # Line 822
    lw	$v0,-30724($s4)
    # Line 829
    lbu	$at,-30188($s4)
    # Line 826
    lw	$a0,-30700($s4)
    # Line 829
    lw	$a2,-30680($s4)
    # Line 827
    lw	$a1,-30692($s4)
    # Line 825
    lw	$v1,-30704($s4)
    sd	$a2,536($sp)
    sd	$a1,520($sp)
    sd	$v1,528($sp)
    sd	$a0,488($sp)
    # Line 823
    lw	$a0,-30716($s4)
    # Line 829
    beqz	$at,.L0daab544
    sd	$v0,512($sp)
    # Line 836
    ld	$a1,512($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    mov.s	$f14,$f20
    addiu	$a4,$sp,240
    addiu	$t9,$t9,-21972
    bal __glMgrCleanUp2D
    addiu	$a3,$sp,0
    # Line 837
    addiu	$a7,$s0,8192
    move	$a6,$s0
    move	$a5,$s5
    move	$a4,$s6
    move	$a3,$s7
    # lw $t9, -32728($gp) # &sub_0dab0000
    ld	$a2,512($sp)
    addiu	$a1,$sp,240
    addiu	$t9,$t9,-21528
    bal __glMgrCleanUp2D
    addiu	$a0,$sp,0
    ld	$ra,624($sp)
.L0daab2f0:
    # Line 843
    bnez	$s2,.L0daab4b8
    # Line 847
    ld	$a0,528($sp)
    # Line 848
    bnez	$s3,.L0daab500
    # Line 851
    ld	$a0,536($sp)
.L0daab300:
    # Line 855
    ld	$s7,560($sp)
    # Line 852
    beqz	$s8,.L0daab5d4
    # Line 855
    move	$s6,$zero
    blez	$s5,.L0daab488
    sd	$s5,632($sp)
    li	$s8,3
    li	$s7,1
    sd	$zero,496($sp)
    ld	$at,632($sp)
    sd	$zero,504($sp)
    move	$s5,$zero
    sll	$at,$at,0x2
    b	.L0daab390
    sd	$at,616($sp)
    # Line 875
    lw	$t9,5640($s1)
.L0daab33c:
    lw	$t9,1768($t9)
    addu	$a0,$s6,$s0
    jal	sub_0dab0000
    addiu	$a0,$a0,8192
    ld	$at,512($sp)
.L0daab350:
    lw	$at,4($at)
    beq	$at,$s8,.L0daab40c
    lw	$a3,5640($s1)
    # Line 880
    lw	$t9,1560($a3)
    jalr	$t9
    addu	$a0,$s5,$s0
.L0daab368:
    # Line 857
    addiu	$s5,$s5,16
    addiu	$s6,$s6,12
    ld	$v0,496($sp)
    ld	$a7,504($sp)
    ld	$v1,616($sp)
    addiu	$v0,$v0,4
    addiu	$a7,$a7,8
    sd	$a7,504($sp)
    beq	$v0,$v1,.L0daab484
    sd	$v0,496($sp)
.L0daab390:
    # Line 855
    beqz	$s2,.L0daab3b4
    nop
    lw	$at,4($s2)
    beq	$at,$s7,.L0daab420
    lw	$a3,5640($s1)
    # Line 862
    lw	$t9,1664($a3)
    addu	$a0,$s5,$s0
    jalr	$t9
    addiu	$a0,$a0,4096
.L0daab3b4:
    beqz	$s3,.L0daab3f0
    ld	$a7,488($sp)
    lw	$a0,4($s3)
    li	$a7,2
    beq	$a0,$s7,.L0daab450
    lw	$a3,5640($s1)
    # Line 866
    beql	$a0,$a7,.L0daab46c
    # Line 868
    ld	$a0,504($sp)
    beql	$a0,$s8,.L0daab43c
    # Line 870
    lw	$t9,1864($a3)
    # Line 872
    lw	$t9,1896($a3)
    addu	$a0,$s5,$s0
    jalr	$t9
    addiu	$a0,$a0,12288
    ld	$a7,488($sp)
.L0daab3f0:
    # Line 874
    bnezl	$a7,.L0daab33c
    # Line 875
    lw	$t9,5640($s1)
    # Line 874
    lbu	$at,-30188($s4)
    beqz	$at,.L0daab350
    ld	$at,512($sp)
    b	.L0daab33c
    # Line 875
    lw	$t9,5640($s1)
.L0daab40c:
    # Line 878
    lw	$t9,1528($a3)
    jalr	$t9
    addu	$a0,$s6,$s0
    b	.L0daab368
    nop
.L0daab420:
    # Line 860
    ld	$a0,496($sp)
    lw	$t9,1720($a3)
    addu	$a0,$a0,$s0
    jalr	$t9
    addiu	$a0,$a0,4096
    b	.L0daab3b4
    nop
.L0daab43c:
    # Line 870
    addu	$a0,$s6,$s0
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab3f0
    ld	$a7,488($sp)
.L0daab450:
    # Line 866
    ld	$a0,496($sp)
    lw	$t9,1800($a3)
    addu	$a0,$a0,$s0
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab3f0
    ld	$a7,488($sp)
.L0daab46c:
    # Line 868
    lw	$t9,1832($a3)
    addu	$a0,$a0,$s0
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab3f0
    ld	$a7,488($sp)
.L0daab484:
    ld	$ra,624($sp)
.L0daab488:
    # Line 883
    ld	$s0,568($sp)
    ld	$s1,552($sp)
    ld	$s2,608($sp)
    ld	$s3,600($sp)
    ld	$s4,584($sp)
    ld	$s5,576($sp)
    ld	$s6,592($sp)
    ld	$s7,560($sp)
    ld	$s8,544($sp)
    ldc1	$f20,480($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0daab4b8:
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 847
    move	$a1,$s2
    mov.s	$f14,$f20
    addiu	$t9,$t9,-22924
    bal __glMgrCleanUp2D
    addiu	$a3,$sp,0
    # Line 848
    addiu	$a5,$s0,4096
    move	$a4,$s5
    move	$a3,$s6
    # lw $t9, -32728($gp) # &sub_0dab0000
    move	$a2,$s7
    move	$a1,$s2
    addiu	$t9,$t9,-22440
    bal __glMgrCleanUp2D
    addiu	$a0,$sp,0
    beqz	$s3,.L0daab300
    ld	$ra,624($sp)
    # Line 851
    ld	$a0,536($sp)
.L0daab500:
    # lw $t9, -32728($gp) # &sub_0dab0000
    move	$a1,$s3
    mov.s	$f14,$f20
    addiu	$t9,$t9,-22924
    bal __glMgrCleanUp2D
    addiu	$a3,$sp,0
    # Line 852
    addiu	$a5,$s0,12288
    move	$a4,$s5
    move	$a3,$s6
    # lw $t9, -32728($gp) # &sub_0dab0000
    move	$a2,$s7
    move	$a1,$s3
    addiu	$t9,$t9,-22440
    bal __glMgrCleanUp2D
    addiu	$a0,$sp,0
    b	.L0daab300
    ld	$ra,624($sp)
.L0daab544:
    # Line 837
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 839
    addiu	$a3,$sp,0
    mov.s	$f14,$f20
    # Line 837
    addiu	$t9,$t9,-22924
    # Line 839
    bal __glMgrCleanUp2D
    ld	$a1,512($sp)
    # Line 840
    addiu	$a0,$sp,0
    ld	$a1,512($sp)
    move	$a2,$s7
    # lw $t9, -32728($gp) # &sub_0dab0000
    move	$a3,$s6
    move	$a4,$s5
    addiu	$t9,$t9,-22440
    bal __glMgrCleanUp2D
    move	$a5,$s0
    ld	$at,488($sp)
    beqz	$at,.L0daab2f0
    ld	$ra,624($sp)
    # Line 842
    ld	$a0,520($sp)
    # lw $t9, -32728($gp) # &sub_0dab0000
    ld	$a1,488($sp)
    mov.s	$f14,$f20
    addiu	$t9,$t9,-22924
    bal __glMgrCleanUp2D
    addiu	$a3,$sp,0
    # Line 843
    addiu	$a5,$s0,8192
    move	$a4,$s5
    move	$a3,$s6
    # lw $t9, -32728($gp) # &sub_0dab0000
    move	$a2,$s7
    ld	$a1,488($sp)
    addiu	$t9,$t9,-22440
    bal __glMgrCleanUp2D
    addiu	$a0,$sp,0
    b	.L0daab2f0
    ld	$ra,624($sp)
.L0daab5d4:
    # Line 855
    ldc1	$f20,480($sp)
    ld	$s0,568($sp)
    ld	$s1,552($sp)
    ld	$s2,608($sp)
    ld	$s3,600($sp)
    ld	$s4,584($sp)
    ld	$s5,576($sp)
    ld	$s6,592($sp)
    ld	$s8,544($sp)
    jr	$ra
    addiu	$sp,$sp,688
.end EvalRow2D

# Function: Eval2Rows
# Declared: Line 886 (Source lines: 887-957)
# Address: 0x0daab600 - 0x0daab924 (Size: 804 bytes, Frame: 160)
.ent Eval2Rows
Eval2Rows:
    # Line 887
    addiu	$sp,$sp,-160
    sd	$s1,64($sp)
    move	$s1,$a1
    sd	$s2,32($sp)
    move	$s2,$a2
    sd	$s3,40($sp)
    sd	$s4,48($sp)
    sd	$s0,56($sp)
    # Line 892
    lw	$s0,__glCurrentContext
    sd	$s5,72($sp)
    # Line 894
    lui	$s5,0x1
    addu	$s5,$s0,$s5
    # Line 897
    lw	$s4,-30688($s5)
    # Line 896
    lw	$v0,-30700($s5)
    # Line 895
    lw	$s3,-30712($s5)
    # Line 894
    lw	$at,-30724($s5)
    sd	$v0,16($sp)
    # Line 897
    blez	$a0,.L0daab904
    sd	$at,8($sp)
    sd	$ra,88($sp)
    sd	$zero,24($sp)
    sd	$s8,112($sp)
    li	$s8,1
    sd	$s7,104($sp)
    move	$s7,$zero
    sd	$zero,0($sp)
    sd	$s6,96($sp)
    move	$s6,$zero
    sll	$at,$a0,0x2
    b	.L0daab784
    sd	$at,80($sp)
    # Line 926
    lw	$t9,5640($s0)
.L0daab680:
    lw	$t9,1768($t9)
    addu	$a0,$s7,$s2
    jalr	$t9
    addiu	$a0,$a0,8192
    ld	$at,8($sp)
.L0daab694:
    lw	$at,4($at)
    li	$v0,3
    beq	$at,$v0,.L0daab804
    lw	$a1,5640($s0)
    # Line 931
    lw	$t9,1560($a1)
    jalr	$t9
    addu	$a0,$s6,$s2
.L0daab6b0:
    beqz	$s3,.L0daab6d4
    nop
    lw	$v0,4($s3)
    beq	$v0,$s8,.L0daab848
    lw	$a1,5640($s0)
    # Line 937
    lw	$t9,1664($a1)
    addu	$a0,$s6,$s1
    jalr	$t9
    addiu	$a0,$a0,4096
.L0daab6d4:
    beqz	$s4,.L0daab714
    ld	$a3,16($sp)
    lw	$a0,4($s4)
    li	$a3,2
    li	$at,3
    beq	$a0,$s8,.L0daab8a8
    lw	$a1,5640($s0)
    # Line 941
    beql	$a0,$a3,.L0daab8dc
    # Line 943
    ld	$a0,0($sp)
    beql	$a0,$at,.L0daab878
    # Line 945
    lw	$t9,1864($a1)
    # Line 947
    lw	$t9,1896($a1)
    addu	$a0,$s6,$s1
    jalr	$t9
    addiu	$a0,$a0,12288
    ld	$a3,16($sp)
.L0daab714:
    # Line 949
    bnezl	$a3,.L0daab72c
    # Line 950
    lw	$t9,5640($s0)
    # Line 949
    lbu	$at,-30188($s5)
    beqz	$at,.L0daab740
    # Line 950
    ld	$at,8($sp)
    lw	$t9,5640($s0)
.L0daab72c:
    lw	$t9,1768($t9)
    addu	$a0,$s7,$s1
    jalr	$t9
    addiu	$a0,$a0,8192
    ld	$at,8($sp)
.L0daab740:
    lw	$at,4($at)
    li	$v0,3
    beq	$at,$v0,.L0daab818
    lw	$a1,5640($s0)
    # Line 955
    lw	$t9,1560($a1)
    jalr	$t9
    addu	$a0,$s6,$s1
    # Line 908
    addiu	$s6,$s6,16
.L0daab760:
    addiu	$s7,$s7,12
    ld	$v0,24($sp)
    ld	$a3,0($sp)
    ld	$v1,80($sp)
    addiu	$v0,$v0,4
    addiu	$a3,$a3,8
    sd	$a3,0($sp)
    beq	$v0,$v1,.L0daab8f4
    sd	$v0,24($sp)
.L0daab784:
    # Line 897
    beqz	$s3,.L0daab7a8
    nop
    lw	$at,4($s3)
    beq	$at,$s8,.L0daab82c
    lw	$a1,5640($s0)
    # Line 913
    lw	$t9,1664($a1)
    addu	$a0,$s6,$s2
    jalr	$t9
    addiu	$a0,$a0,4096
.L0daab7a8:
    beqz	$s4,.L0daab7e8
    ld	$a3,16($sp)
    lw	$a0,4($s4)
    li	$a3,2
    li	$at,3
    beq	$a0,$s8,.L0daab88c
    lw	$a1,5640($s0)
    # Line 917
    beql	$a0,$a3,.L0daab8c4
    # Line 919
    ld	$a0,0($sp)
    beql	$a0,$at,.L0daab864
    # Line 921
    lw	$t9,1864($a1)
    # Line 923
    lw	$t9,1896($a1)
    addu	$a0,$s6,$s2
    jalr	$t9
    addiu	$a0,$a0,12288
    ld	$a3,16($sp)
.L0daab7e8:
    # Line 925
    bnezl	$a3,.L0daab680
    # Line 926
    lw	$t9,5640($s0)
    # Line 925
    lbu	$at,-30188($s5)
    beqz	$at,.L0daab694
    ld	$at,8($sp)
    b	.L0daab680
    # Line 926
    lw	$t9,5640($s0)
.L0daab804:
    # Line 929
    lw	$t9,1528($a1)
    jalr	$t9
    addu	$a0,$s7,$s2
    b	.L0daab6b0
    nop
.L0daab818:
    # Line 953
    lw	$t9,1528($a1)
    jalr	$t9
    addu	$a0,$s7,$s1
    b	.L0daab760
    # Line 908
    addiu	$s6,$s6,16
.L0daab82c:
    # Line 911
    ld	$a0,24($sp)
    lw	$t9,1720($a1)
    addu	$a0,$a0,$s2
    jalr	$t9
    addiu	$a0,$a0,4096
    b	.L0daab7a8
    nop
.L0daab848:
    # Line 935
    ld	$a0,24($sp)
    lw	$t9,1720($a1)
    addu	$a0,$a0,$s1
    jalr	$t9
    addiu	$a0,$a0,4096
    b	.L0daab6d4
    nop
.L0daab864:
    # Line 921
    addu	$a0,$s7,$s2
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab7e8
    ld	$a3,16($sp)
.L0daab878:
    # Line 945
    addu	$a0,$s7,$s1
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab714
    ld	$a3,16($sp)
.L0daab88c:
    # Line 917
    ld	$a0,24($sp)
    lw	$t9,1800($a1)
    addu	$a0,$a0,$s2
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab7e8
    ld	$a3,16($sp)
.L0daab8a8:
    # Line 941
    ld	$a0,24($sp)
    lw	$t9,1800($a1)
    addu	$a0,$a0,$s1
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab714
    ld	$a3,16($sp)
.L0daab8c4:
    # Line 919
    lw	$t9,1832($a1)
    addu	$a0,$a0,$s2
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab7e8
    ld	$a3,16($sp)
.L0daab8dc:
    # Line 943
    lw	$t9,1832($a1)
    addu	$a0,$a0,$s1
    jalr	$t9
    addiu	$a0,$a0,12288
    b	.L0daab714
    ld	$a3,16($sp)
.L0daab8f4:
    ld	$s8,112($sp)
    ld	$s7,104($sp)
    ld	$ra,88($sp)
    ld	$s6,96($sp)
.L0daab904:
    # Line 957
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    ld	$s4,48($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end Eval2Rows

# Function: __glMgrEvalCoord1DHost
# Declared: Line 960 (Source lines: 961-967)
# Address: 0x0daab924 - 0x0daab970 (Size: 76 bytes, Frame: 176)
.globl __glMgrEvalCoord1DHost
.ent __glMgrEvalCoord1DHost
__glMgrEvalCoord1DHost:
    # Line 966
    li	$a2,1
    move	$a1,$zero
    # Line 961
    addiu	$sp,$sp,-16432
    # Line 966
    addiu	$a3,$sp,16
    sd	$gp,16408($sp)
    sd	$ra,16400($sp)
    # Line 961
    lui	$ra,0x15
    addiu	$ra,$ra,11636
    addu	$gp,$t9,$ra
    # Line 966
    # lw $t9, -32728($gp) # &sub_0dab0000
    addiu	$a0,$sp,0
    # Line 965
    swc1	$f12,4($sp)
    # Line 966
    addiu	$t9,$t9,-20680
    bal __glMgrCleanUp2D
    # Line 965
    sw	$zero,12($sp)
    # Line 967
    ld	$ra,16400($sp)
    ld	$gp,16408($sp)
    jr	$ra
    addiu	$sp,$sp,16432
.end __glMgrEvalCoord1DHost

# Function: __glMgrEvalMesh1DHost
# Declared: Line 970 (Source lines: 971-1004)
# Address: 0x0daab970 - 0x0daabbb4 (Size: 580 bytes, Frame: 224)
.globl __glMgrEvalMesh1DHost
.ent __glMgrEvalMesh1DHost
__glMgrEvalMesh1DHost:
    # Line 971
    addiu	$sp,$sp,-16480
    sd	$s0,16392($sp)
    move	$s0,$a1
    sd	$s4,16400($sp)
    sd	$s1,16384($sp)
    # Line 974
    lw	$s1,__glCurrentContext
    # Line 971
    move	$s4,$a2
    sd	$gp,16408($sp)
    # Line 974
    lw	$at,1836($s1)
    # Line 971
    lui	$v0,0x15
    addiu	$v0,$v0,11560
    # Line 974
    beqz	$at,.L0daabb9c
    # Line 971
    addu	$gp,$t9,$v0
    # Line 978
    slt	$v1,$s4,$s0
    bnez	$v1,.L0daab9d8
    # Line 982
    li	$a3,6912
    beq	$a0,$a3,.L0daabac8
    li	$at,6913
    beql	$a0,$at,.L0daab9f0
    sd	$s3,16432($sp)
.L0daab9c0:
    ld	$gp,16408($sp)
    # Line 1004
    ld	$s0,16392($sp)
    ld	$s1,16384($sp)
    ld	$s4,16400($sp)
    jr	$ra
    addiu	$sp,$sp,16480
.L0daab9d8:
    ld	$gp,16408($sp)
    # Line 980
    ld	$s0,16392($sp)
    ld	$s1,16384($sp)
    ld	$s4,16400($sp)
    jr	$ra
    addiu	$sp,$sp,16480
.L0daab9f0:
    sd	$s2,16440($sp)
    # Line 994
    addiu	$s2,$s0,256
    slt	$v0,$s4,$s2
    bnez	$v0,.L0daaba6c
    sd	$s5,16416($sp)
    li	$at,255
    sd	$ra,16424($sp)
    la	$s3,sub_0dab0000
    addiu	$s5,$s1,1824
    teq	$at,$zero,0x7
    addiu	$s3,$s3,-20680
    # Line 995
    lw	$t9,5640($s1)
.L0daaba20:
    lw	$t9,28($t9)
    # Line 994
    addiu	$s2,$s2,255
    # Line 995
    jalr	$t9
    li	$a0,3
    # Line 996
    move	$a0,$s5
    addiu	$a3,$sp,0
    li	$a2,256
    move	$a1,$s0
    bal __glMgrCleanUp2D
    move	$t9,$s3
    # Line 997
    lw	$t9,5640($s1)
    lw	$t9,44($t9)
    jalr	$t9
    # Line 994
    addiu	$s0,$s0,255
    slt	$at,$s4,$s2
    beqzl	$at,.L0daaba20
    # Line 995
    lw	$t9,5640($s1)
    b	.L0daaba80
    ld	$s2,16440($sp)
.L0daaba6c:
    # Line 994
    la	$s3,sub_0dab0000
    sd	$ra,16424($sp)
    addiu	$s5,$s1,1824
    ld	$s2,16440($sp)
    addiu	$s3,$s3,-20680
.L0daaba80:
    # Line 999
    lw	$t9,5640($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    # Line 1000
    move	$a0,$s5
    move	$a1,$s0
    addiu	$a3,$sp,0
    move	$t9,$s3
    subu	$a2,$s4,$s0
    bal __glMgrCleanUp2D
    addiu	$a2,$a2,1
    # Line 1001
    lw	$t9,5640($s1)
    lw	$t9,44($t9)
    ld	$s5,16416($sp)
    jalr	$t9
    ld	$s3,16432($sp)
    b	.L0daab9c0
    ld	$ra,16424($sp)
.L0daabac8:
    sd	$s3,16432($sp)
    sd	$s2,16440($sp)
    # Line 984
    addiu	$s2,$s0,256
    slt	$at,$s4,$s2
    bnez	$at,.L0daabb40
    sd	$s5,16416($sp)
    la	$s3,sub_0dab0000
    sd	$ra,16424($sp)
    addiu	$s5,$s1,1824
    addiu	$s3,$s3,-20680
    # Line 985
    lw	$t9,5640($s1)
.L0daabaf4:
    lw	$t9,28($t9)
    # Line 984
    addiu	$s2,$s2,256
    # Line 985
    jalr	$t9
    move	$a0,$zero
    # Line 986
    move	$a0,$s5
    addiu	$a3,$sp,0
    li	$a2,256
    move	$a1,$s0
    bal __glMgrCleanUp2D
    move	$t9,$s3
    # Line 987
    lw	$t9,5640($s1)
    lw	$t9,44($t9)
    jalr	$t9
    # Line 984
    addiu	$s0,$s0,256
    slt	$at,$s4,$s2
    beqzl	$at,.L0daabaf4
    # Line 985
    lw	$t9,5640($s1)
    b	.L0daabb54
    ld	$s2,16440($sp)
.L0daabb40:
    # Line 984
    la	$s3,sub_0dab0000
    sd	$ra,16424($sp)
    addiu	$s5,$s1,1824
    ld	$s2,16440($sp)
    addiu	$s3,$s3,-20680
.L0daabb54:
    # Line 989
    lw	$t9,5640($s1)
    lw	$t9,28($t9)
    jalr	$t9
    move	$a0,$zero
    # Line 990
    move	$a0,$s5
    move	$a1,$s0
    addiu	$a3,$sp,0
    move	$t9,$s3
    subu	$a2,$s4,$s0
    bal __glMgrCleanUp2D
    addiu	$a2,$a2,1
    # Line 991
    lw	$t9,5640($s1)
    lw	$t9,44($t9)
    ld	$s5,16416($sp)
    jalr	$t9
    ld	$s3,16432($sp)
    b	.L0daab9c0
    ld	$ra,16424($sp)
.L0daabb9c:
    ld	$gp,16408($sp)
    # Line 978
    ld	$s0,16392($sp)
    ld	$s1,16384($sp)
    ld	$s4,16400($sp)
    jr	$ra
    addiu	$sp,$sp,16480
.end __glMgrEvalMesh1DHost

# Function: __glMgrEvalCoord2DHost
# Declared: Line 1007 (Source lines: 1008-1014)
# Address: 0x0daabbb4 - 0x0daabc0c (Size: 88 bytes, Frame: 176)
.globl __glMgrEvalCoord2DHost
.ent __glMgrEvalCoord2DHost
__glMgrEvalCoord2DHost:
    # Line 1013
    li	$a5,1
    li	$a3,1
    move	$a2,$zero
    # Line 1008
    mov.s	$f0,$f13
    addiu	$sp,$sp,-16432
    # Line 1013
    addiu	$a4,$sp,16
    addiu	$a1,$sp,0
    sd	$gp,16408($sp)
    sd	$ra,16400($sp)
    # Line 1008
    lui	$ra,0x15
    addiu	$ra,$ra,10980
    addu	$gp,$t9,$ra
    # Line 1013
    # lw $t9, -32728($gp) # &sub_0dab0000
    # Line 1012
    sw	$zero,12($sp)
    swc1	$f12,4($sp)
    # Line 1013
    addiu	$t9,$t9,-19948
    bal __glMgrCleanUp2D
    mov.s	$f12,$f13
    # Line 1014
    ld	$ra,16400($sp)
    ld	$gp,16408($sp)
    jr	$ra
    addiu	$sp,$sp,16432
.end __glMgrEvalCoord2DHost

# Function: __glMgrEvalMesh2DHost
# Declared: Line 1017 (Source lines: 1018-1110)
# Address: 0x0daabc0c - 0x0daac5b4 (Size: 2472 bytes, Frame: 0)
.globl __glMgrEvalMesh2DHost
.ent __glMgrEvalMesh2DHost
__glMgrEvalMesh2DHost:
    # Line 1018
    lui	$v0,0x15
    addiu	$v0,$v0,10892
    move	$v1,$s8
    li	$at,0x80f0
    subu	$sp,$sp,$at
    sd	$v1,88($sp)
    sd	$a4,40($sp)
    sd	$s0,80($sp)
    # Line 1024
    lw	$s0,__glCurrentContext
    sd	$a3,104($sp)
    # Line 1018
    addu	$s8,$sp,$at
    # Line 1029
    lw	$at,1852($s0)
    sd	$a2,24($sp)
    sd	$gp,96($sp)
    beqz	$at,.L0daabcf4
    # Line 1018
    addu	$gp,$t9,$v0
    # Line 1029
    lw	$a2,1868($s0)
    beqz	$a2,.L0daabcf4
    ld	$a5,24($sp)
    # Line 1030
    slt	$a5,$a5,$a1
    bnez	$a5,.L0daabcdc
    ld	$v0,104($sp)
    ld	$at,40($sp)
    slt	$at,$at,$v0
    bnez	$at,.L0daabcdc
    # Line 1032
    li	$v1,6912
    beq	$a0,$v1,.L0daac020
    li	$a5,6913
    beql	$a0,$a5,.L0daac084
    sd	$s5,176($sp)
    sd	$s1,184($sp)
    sd	$s5,176($sp)
    sd	$s2,168($sp)
    sd	$s3,160($sp)
    sd	$s4,144($sp)
    sd	$s6,136($sp)
    li	$at,6914
    beq	$a0,$at,.L0daabd0c
    sd	$s7,128($sp)
.L0daabca8:
    ld	$gp,96($sp)
    # Line 1110
    ld	$s0,80($sp)
    ld	$s1,184($sp)
    ld	$s2,168($sp)
    ld	$s3,160($sp)
    ld	$s4,144($sp)
    ld	$s5,176($sp)
    ld	$s6,136($sp)
    ld	$s7,128($sp)
    ld	$v0,88($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.L0daabcdc:
    ld	$gp,96($sp)
    # Line 1030
    ld	$s0,80($sp)
    ld	$v1,88($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0daabcf4:
    ld	$gp,96($sp)
    # Line 1029
    ld	$s0,80($sp)
    ld	$a0,88($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0daabd0c:
    sd	$s5,176($sp)
    # Line 1084
    ld	$a5,24($sp)
    sd	$s4,144($sp)
    move	$s6,$a1
    addiu	$a5,$a5,-256
    sd	$a5,56($sp)
    slt	$a5,$a5,$a1
    bnez	$a5,.L0daabed0
    addiu	$s7,$s0,1840
    sd	$s1,184($sp)
    sd	$s2,168($sp)
    sd	$s3,160($sp)
    sd	$ra,152($sp)
    li	$at,255
    la	$s5,sub_0dab0000
    ld	$v0,104($sp)
    ld	$v1,40($sp)
    teq	$at,$zero,0x7
    addiu	$s5,$s5,-18944
    subu	$a5,$v1,$v0
    addiu	$s4,$v1,1
    slt	$v1,$v0,$v1
    addiu	$v0,$v0,1
    sd	$a5,48($sp)
    sd	$v1,72($sp)
    sd	$s4,32($sp)
    la	$s4,sub_0dab0000
    sd	$v0,64($sp)
    b	.L0daabd98
    addiu	$s4,$s4,-19948
.L0daabd84:
    ld	$at,56($sp)
    addiu	$s6,$s6,255
    slt	$at,$at,$s6
    bnez	$at,.L0daabea8
    lw	$a2,1868($s0)
.L0daabd98:
    ld	$v0,104($sp)
    addiu	$a0,$s8,-16432
    bne	$a2,$v0,.L0daabdb4
    ld	$v1,104($sp)
    addiu	$a0,$s8,-16432
    # Line 1085
    b	.L0daabdd0
    lwc1	$f12,1860($s0)
.L0daabdb4:
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f12,1856($s0)
    add.s	$f12,$f12,$f0
.L0daabdd0:
    # Line 1086
    move	$a1,$s7
    move	$a2,$s6
    li	$a3,256
    move	$a4,$a0
    move	$a5,$zero
    bal __glMgrCleanUp2D
    move	$t9,$s4
    addiu	$s3,$s8,-16432
    # Line 1088
    ld	$s1,64($sp)
    ld	$a5,72($sp)
    lui	$s2,0xffff
    addu	$s2,$s2,$s8
    beqz	$a5,.L0daabd84
    addiu	$s2,$s2,32720
    b	.L0daabe98
    lw	$v1,1868($s0)
.L0daabe10:
    # Line 1089
    mtc1	$s1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f12,1856($s0)
    add.s	$f12,$f12,$f0
.L0daabe2c:
    # Line 1090
    move	$a1,$s7
    move	$a2,$s6
    li	$a3,256
    move	$a4,$s2
    move	$a5,$zero
    bal __glMgrCleanUp2D
    move	$t9,$s4
    # Line 1091
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,8
    # Line 1092
    li	$a0,256
    move	$a1,$s3
    move	$a2,$s2
    bal __glMgrCleanUp2D
    move	$t9,$s5
    # Line 1088
    addiu	$s1,$s1,1
    # Line 1093
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1088
    ld	$at,32($sp)
    # Line 1094
    move	$v0,$s3
    move	$s3,$s2
    # Line 1088
    beq	$at,$s1,.L0daabd84
    # Line 1094
    move	$s2,$v0
    # Line 1088
    lw	$v1,1868($s0)
.L0daabe98:
    bne	$v1,$s1,.L0daabe10
    nop
    # Line 1089
    b	.L0daabe2c
    lwc1	$f12,1860($s0)
.L0daabea8:
    ld	$ra,152($sp)
    # Line 1084
    ld	$a5,104($sp)
    lw	$a2,1868($s0)
    ld	$s3,160($sp)
    ld	$s2,168($sp)
    bne	$a2,$a5,.L0daabef0
    ld	$s1,184($sp)
.L0daabec4:
    sd	$ra,152($sp)
    # Line 1097
    b	.L0daabf14
    lwc1	$f12,1860($s0)
.L0daabed0:
    # Line 1084
    la	$s5,sub_0dab0000
    la	$s4,sub_0dab0000
    ld	$at,104($sp)
    addiu	$s5,$s5,-18944
    addiu	$s4,$s4,-19948
    addiu	$v0,$at,1
    beq	$a2,$at,.L0daabec4
    sd	$v0,64($sp)
.L0daabef0:
    ld	$v1,104($sp)
    # Line 1097
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f12,1856($s0)
    sd	$ra,152($sp)
    add.s	$f12,$f12,$f0
.L0daabf14:
    sd	$s1,184($sp)
    sd	$s2,168($sp)
    sd	$s3,160($sp)
    addiu	$a4,$s8,-16432
    # Line 1098
    move	$a1,$s7
    move	$a2,$s6
    ld	$a3,24($sp)
    move	$a5,$zero
    move	$t9,$s4
    subu	$a3,$a3,$s6
    addiu	$a3,$a3,1
    bal __glMgrCleanUp2D
    sd	$a3,112($sp)
    addiu	$s3,$s8,-16432
    lui	$s2,0xffff
    addu	$s2,$s2,$s8
    # Line 1100
    ld	$ra,64($sp)
    ld	$a5,40($sp)
    addiu	$s2,$s2,32720
    move	$s1,$ra
    slt	$a5,$a5,$ra
    bnez	$a5,.L0daabca8
    ld	$ra,152($sp)
    ld	$at,40($sp)
    addiu	$at,$at,1
    b	.L0daac004
    sd	$at,32($sp)
.L0daabf80:
    # Line 1101
    mtc1	$s1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f12,1856($s0)
    add.s	$f12,$f12,$f0
.L0daabf9c:
    # Line 1102
    move	$a1,$s7
    move	$a2,$s6
    ld	$a3,112($sp)
    move	$a4,$s2
    move	$a5,$zero
    bal __glMgrCleanUp2D
    move	$t9,$s4
    # Line 1103
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,8
    ld	$a0,112($sp)
    # Line 1104
    move	$a1,$s3
    move	$a2,$s2
    bal __glMgrCleanUp2D
    move	$t9,$s5
    # Line 1100
    addiu	$s1,$s1,1
    # Line 1105
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1100
    ld	$at,32($sp)
    # Line 1106
    move	$v0,$s3
    move	$s3,$s2
    # Line 1100
    beq	$at,$s1,.L0daac018
    # Line 1106
    move	$s2,$v0
.L0daac004:
    # Line 1100
    lw	$v1,1868($s0)
    bne	$v1,$s1,.L0daabf80
    nop
    # Line 1101
    b	.L0daabf9c
    lwc1	$f12,1860($s0)
.L0daac018:
    b	.L0daabca8
    ld	$ra,152($sp)
.L0daac020:
    sd	$s2,168($sp)
    sd	$s4,144($sp)
    sd	$s6,136($sp)
    # Line 1034
    ld	$a5,24($sp)
    move	$s6,$a1
    sd	$s7,128($sp)
    addiu	$a5,$a5,-256
    sd	$a5,56($sp)
    slt	$a5,$a5,$a1
    bnez	$a5,.L0daac580
    addiu	$s7,$s0,1840
    sd	$s1,184($sp)
    sd	$ra,152($sp)
    sdc1	$f22,120($sp)
    la	$s4,sub_0dab0000
    addiu	$s2,$s8,-16432
    ld	$at,40($sp)
    addiu	$s4,$s4,-19948
    ld	$v0,104($sp)
    addiu	$v1,$at,1
    sd	$v1,32($sp)
    subu	$at,$at,$v0
    addiu	$at,$at,1
    b	.L0daac114
    sd	$at,16($sp)
.L0daac084:
    sd	$s4,144($sp)
    sd	$s6,136($sp)
    # Line 1050
    ld	$a5,24($sp)
    move	$s6,$a1
    sd	$s7,128($sp)
    addiu	$a5,$a5,-256
    sd	$a5,56($sp)
    slt	$a5,$a5,$a1
    bnez	$a5,.L0daac550
    addiu	$s7,$s0,1840
    sd	$s1,184($sp)
    sd	$s2,168($sp)
    sd	$s3,160($sp)
    sd	$ra,152($sp)
    sdc1	$f22,120($sp)
    li	$at,255
    la	$s5,sub_0dab0000
    ld	$v0,104($sp)
    ld	$v1,40($sp)
    teq	$at,$zero,0x7
    addiu	$s5,$s5,-18944
    subu	$a5,$v1,$v0
    addiu	$s4,$v1,1
    slt	$v1,$v0,$v1
    addiu	$v0,$v0,1
    sd	$a5,48($sp)
    sd	$v1,72($sp)
    sd	$s4,32($sp)
    la	$s4,sub_0dab0000
    sd	$v0,64($sp)
    b	.L0daac260
    addiu	$s4,$s4,-19948
.L0daac104:
    # Line 1034
    addiu	$s6,$s6,256
    slt	$at,$at,$s6
    bnezl	$at,.L0daac19c
    sd	$s3,160($sp)
.L0daac114:
    b	.L0daac188
    ld	$s1,104($sp)
.L0daac11c:
    # Line 1036
    mtc1	$s1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f22,1856($s0)
    add.s	$f22,$f22,$f0
.L0daac138:
    # Line 1037
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    move	$a0,$zero
    # Line 1038
    mov.s	$f12,$f22
    move	$a1,$s7
    move	$a2,$s6
    li	$a5,1
    move	$a4,$s2
    li	$a3,256
    bal __glMgrCleanUp2D
    move	$t9,$s4
    # Line 1035
    addiu	$s1,$s1,1
    # Line 1039
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1035
    ld	$at,32($sp)
    beq	$at,$s1,.L0daac104
    # Line 1034
    ld	$at,56($sp)
.L0daac188:
    # Line 1035
    lw	$v0,1868($s0)
    bne	$v0,$s1,.L0daac11c
    nop
    # Line 1036
    b	.L0daac138
    lwc1	$f22,1860($s0)
.L0daac19c:
    ldc1	$f22,120($sp)
    ld	$ra,152($sp)
.L0daac1a4:
    sd	$ra,152($sp)
    # Line 1042
    ld	$s3,24($sp)
    sdc1	$f22,120($sp)
    ld	$s1,104($sp)
    subu	$s3,$s3,$s6
    b	.L0daac22c
    addiu	$s3,$s3,1
.L0daac1c0:
    # Line 1043
    mtc1	$s1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f22,1856($s0)
    add.s	$f22,$f22,$f0
.L0daac1dc:
    # Line 1044
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    move	$a0,$zero
    # Line 1045
    mov.s	$f12,$f22
    move	$a1,$s7
    move	$a2,$s6
    move	$a3,$s3
    move	$a4,$s2
    li	$a5,1
    bal __glMgrCleanUp2D
    move	$t9,$s4
    # Line 1042
    addiu	$s1,$s1,1
    # Line 1046
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1042
    ld	$at,32($sp)
    beql	$at,$s1,.L0daac240
    sd	$s5,176($sp)
.L0daac22c:
    lw	$v0,1868($s0)
    bne	$v0,$s1,.L0daac1c0
    nop
    # Line 1043
    b	.L0daac1dc
    lwc1	$f22,1860($s0)
.L0daac240:
    ldc1	$f22,120($sp)
    b	.L0daabca8
    ld	$ra,152($sp)
.L0daac24c:
    # Line 1050
    ld	$v1,56($sp)
    addiu	$s6,$s6,255
    slt	$v1,$v1,$s6
    bnez	$v1,.L0daac3b0
    lw	$a2,1868($s0)
.L0daac260:
    ld	$a5,104($sp)
    bne	$a2,$a5,.L0daac274
    ld	$at,104($sp)
    # Line 1051
    b	.L0daac290
    lwc1	$f22,1860($s0)
.L0daac274:
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f22,1856($s0)
    add.s	$f22,$f22,$f0
.L0daac290:
    # Line 1052
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    addiu	$a4,$s8,-16432
    # Line 1053
    mov.s	$f12,$f22
    move	$a1,$s7
    move	$a2,$s6
    li	$a5,1
    li	$a3,256
    bal __glMgrCleanUp2D
    move	$t9,$s4
    # Line 1054
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    lui	$s2,0xffff
    jalr	$t9
    nop
    addiu	$s3,$s8,-16432
    # Line 1056
    ld	$at,72($sp)
    ld	$s1,64($sp)
    addu	$s2,$s2,$s8
    beqz	$at,.L0daac24c
    addiu	$s2,$s2,32720
    b	.L0daac3a0
    lw	$v1,1868($s0)
.L0daac2f4:
    # Line 1057
    mtc1	$s1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f22,1856($s0)
    add.s	$f22,$f22,$f0
.L0daac310:
    # Line 1058
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    # Line 1059
    mov.s	$f12,$f22
    move	$a1,$s7
    move	$a2,$s6
    li	$a5,1
    move	$a4,$s2
    li	$a3,256
    bal __glMgrCleanUp2D
    move	$t9,$s4
    # Line 1060
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1061
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,1
    # Line 1062
    li	$a0,255
    move	$a1,$s3
    move	$a2,$s2
    bal __glMgrCleanUp2D
    move	$t9,$s5
    # Line 1056
    addiu	$s1,$s1,1
    # Line 1063
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1056
    ld	$at,32($sp)
    # Line 1064
    move	$v0,$s3
    move	$s3,$s2
    # Line 1056
    beq	$at,$s1,.L0daac24c
    # Line 1064
    move	$s2,$v0
    # Line 1056
    lw	$v1,1868($s0)
.L0daac3a0:
    bne	$v1,$s1,.L0daac2f4
    nop
    # Line 1057
    b	.L0daac310
    lwc1	$f22,1860($s0)
.L0daac3b0:
    ldc1	$f22,120($sp)
    ld	$ra,152($sp)
    # Line 1050
    ld	$a5,104($sp)
    lw	$a2,1868($s0)
    ld	$s3,160($sp)
    ld	$s2,168($sp)
    beq	$a2,$a5,.L0daac570
    ld	$s1,184($sp)
.L0daac3d0:
    ld	$at,104($sp)
    # Line 1067
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,1864($s0)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,1856($s0)
    add.s	$f2,$f2,$f3
    sd	$ra,152($sp)
    sdc1	$f2,8($sp)
.L0daac3f8:
    # Line 1068
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    addiu	$a4,$s8,-16432
    # Line 1069
    li	$a5,1
    move	$a2,$s6
    move	$a1,$s7
    ld	$a3,24($sp)
    ldc1	$f12,8($sp)
    move	$t9,$s4
    subu	$a3,$a3,$s6
    addiu	$a3,$a3,1
    bal __glMgrCleanUp2D
    sd	$a3,112($sp)
    # Line 1070
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    sd	$s1,184($sp)
    sd	$s2,168($sp)
    jalr	$t9
    sd	$s3,160($sp)
    addiu	$s3,$s8,-16432
    ld	$ra,152($sp)
    lui	$s2,0xffff
    # Line 1072
    ld	$v0,64($sp)
    ld	$at,40($sp)
    addu	$s2,$s2,$s8
    addiu	$s2,$s2,32720
    slt	$at,$at,$v0
    bnez	$at,.L0daabca8
    move	$s1,$v0
    ld	$at,40($sp)
    sdc1	$f22,120($sp)
    addiu	$at,$at,1
    b	.L0daac530
    sd	$at,32($sp)
.L0daac488:
    # Line 1073
    mtc1	$s1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f22,1856($s0)
    add.s	$f22,$f22,$f0
.L0daac4a4:
    # Line 1074
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    # Line 1075
    mov.s	$f12,$f22
    move	$a1,$s7
    move	$a2,$s6
    ld	$a3,112($sp)
    move	$a4,$s2
    li	$a5,1
    bal __glMgrCleanUp2D
    move	$t9,$s4
    # Line 1076
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1077
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,1
    ld	$a0,112($sp)
    # Line 1078
    move	$a1,$s3
    move	$a2,$s2
    bal __glMgrCleanUp2D
    move	$t9,$s5
    # Line 1072
    addiu	$s1,$s1,1
    # Line 1079
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1072
    ld	$at,32($sp)
    # Line 1080
    move	$v0,$s3
    move	$s3,$s2
    # Line 1072
    beq	$at,$s1,.L0daac544
    # Line 1080
    move	$s2,$v0
.L0daac530:
    # Line 1072
    lw	$v1,1868($s0)
    bne	$v1,$s1,.L0daac488
    nop
    # Line 1073
    b	.L0daac4a4
    lwc1	$f22,1860($s0)
.L0daac544:
    ldc1	$f22,120($sp)
    b	.L0daabca8
    ld	$ra,152($sp)
.L0daac550:
    # Line 1050
    la	$s5,sub_0dab0000
    la	$s4,sub_0dab0000
    ld	$a5,104($sp)
    addiu	$s5,$s5,-18944
    addiu	$s4,$s4,-19948
    addiu	$at,$a5,1
    bne	$a2,$a5,.L0daac3d0
    sd	$at,64($sp)
.L0daac570:
    # Line 1067
    lwc1	$f2,1860($s0)
    sd	$ra,152($sp)
    b	.L0daac3f8
    sdc1	$f2,8($sp)
.L0daac580:
    sd	$s1,184($sp)
    sd	$s3,160($sp)
    # Line 1034
    la	$s4,sub_0dab0000
    addiu	$s2,$s8,-16432
    ld	$at,40($sp)
    addiu	$s4,$s4,-19948
    ld	$v0,104($sp)
    addiu	$v1,$at,1
    sd	$v1,32($sp)
    subu	$at,$at,$v0
    addiu	$at,$at,1
    b	.L0daac1a4
    sd	$at,16($sp)
.end __glMgrEvalMesh2DHost

# Function: __glMgrEvalCoord1DGe11
# Declared: Line 1113 (Source lines: 1114-1121)
# Address: 0x0daac5b4 - 0x0daac5f4 (Size: 64 bytes, Frame: 0)
.globl __glMgrEvalCoord1DGe11
.ent __glMgrEvalCoord1DGe11
__glMgrEvalCoord1DGe11:
    # Line 1120
    li	$v0,0xad00
    # Line 1118
    lui	$a0,0x4000
    ori	$a0,$a0,0x8
    # Line 1117
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 1114
    lui	$a1,0x15
    addiu	$a1,$a1,8420
    addu	$at,$t9,$a1
    # Line 1117
    li	$a1,0xab00
    # Line 1119
    mtc1	$zero,$f0
    # Line 1117
    sw	$a1,0($v1)
    # Line 1118
    sw	$a0,0($v1)
    swc1	$f12,0($v1)
    # Line 1119
    swc1	$f0,0($v1)
    # Line 1121
    jr	$ra
    # Line 1120
    sw	$v0,0($v1)
.end __glMgrEvalCoord1DGe11

# Function: __glMgrEvalCoord2DGe11
# Declared: Line 1124 (Source lines: 1128-1132)
# Address: 0x0daac5f4 - 0x0daac624 (Size: 48 bytes, Frame: 0)
.globl __glMgrEvalCoord2DGe11
.ent __glMgrEvalCoord2DGe11
__glMgrEvalCoord2DGe11:
    # Line 1131
    li	$at,0xad00
    # Line 1128
    li	$a0,0xac00
    # Line 1129
    lui	$v1,0x4000
    ori	$v1,$v1,0x8
    # Line 1128
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$a0,0($v0)
    # Line 1129
    sw	$v1,0($v0)
    swc1	$f12,0($v0)
    # Line 1130
    swc1	$f13,0($v0)
    # Line 1132
    jr	$ra
    # Line 1131
    sw	$at,0($v0)
.end __glMgrEvalCoord2DGe11

# Function: __glMgrEvalMesh1DGe11
# Declared: Line 1135 (Source lines: 1136-1176)
# Address: 0x0daac624 - 0x0daac820 (Size: 508 bytes, Frame: 224)
.globl __glMgrEvalMesh1DGe11
.ent __glMgrEvalMesh1DGe11
__glMgrEvalMesh1DGe11:
    # Line 1138
    slt	$at,$a2,$a1
    # Line 1136
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 1138
    lw	$s3,__glCurrentContext
    sd	$s2,32($sp)
    # Line 1136
    move	$s2,$a0
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$s1,0($sp)
    move	$s1,$a2
    sd	$gp,24($sp)
    lui	$v0,0x15
    addiu	$v0,$v0,8308
    # Line 1138
    bnez	$at,.L0daac724
    # Line 1136
    addu	$gp,$t9,$v0
    # Line 1141
    lui	$a2,0x1
    addu	$a2,$s3,$a2
    lw	$a0,-30164($a2)
    beqzl	$a0,.L0daac6a0
    # Line 1176
    ld	$s3,8($sp)
    # Line 1141
    lw	$a1,196($a0)
    beqz	$a1,.L0daac7e8
.L0daac67c:
    # Line 1144
    la	$a3,MgrasPrevVidTexture
    lw	$a3,0($a3)
    bnez	$a3,.L0daac740
    # Line 1146
    move	$a0,$s3
.L0daac68c:
    lw	$at,-28164($a2)
    lw	$at,484($at)
    bne	$at,$a1,.L0daac768
    # Line 1148
    nop	# was lw $t9, -30744($gp) # &mgrTM_DrawSetup
.L0daac69c:
    # Line 1176
    ld	$s3,8($sp)
.L0daac6a0:
    # Line 1148
    addiu	$a4,$s2,-6912
    lui	$a2,0x7
    li	$a3,6912
    addiu	$a0,$s0,6
    slt	$a1,$s1,$a0
    beq	$s2,$a3,.L0daac77c
    xori	$a1,$a1,0x1
    beqz	$a1,.L0daac7d4
    ori	$a2,$a2,0x4080
    li	$a5,6
    li	$a1,0xa90c
    li	$at,5
    teq	$at,$zero,0x7
.L0daac6d4:
    # Line 1154
    addiu	$a0,$a0,5
    slt	$a3,$s1,$a0
    # Line 1155
    sw	$a1,0($a2)
    # Line 1156
    sw	$a4,0($a2)
    # Line 1157
    sw	$s0,0($a2)
    # Line 1154
    addiu	$s0,$s0,5
    beqz	$a3,.L0daac6d4
    # Line 1158
    sw	$a5,0($a2)
.L0daac6f4:
    # Line 1163
    subu	$at,$s1,$s0
    addiu	$at,$at,1
    # Line 1160
    sw	$a1,0($a2)
    # Line 1161
    sw	$a4,0($a2)
    # Line 1162
    sw	$s0,0($a2)
    # Line 1163
    sw	$at,0($a2)
.L0daac70c:
    ld	$gp,24($sp)
    # Line 1176
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daac724:
    ld	$gp,24($sp)
    # Line 1141
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    ld	$s2,32($sp)
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daac740:
    # Line 1146
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    sd	$a2,40($sp)
    sd	$ra,48($sp)
    jal	mgrTM_VidTexWait
    li	$a2,1
    ld	$a2,40($sp)
    lw	$a1,-30164($a2)
    ld	$ra,48($sp)
    b	.L0daac68c
    lw	$a1,196($a1)
.L0daac768:
    sd	$ra,48($sp)
    # Line 1148
    jalr	$t9
    move	$a0,$s3
    b	.L0daac69c
    ld	$ra,48($sp)
.L0daac77c:
    # Line 1163
    lui	$a2,0x7
    beqz	$a1,.L0daac80c
    ori	$a2,$a2,0x4080
    addiu	$a4,$s2,-6912
    li	$a1,0xa90c
    li	$a5,6
    teq	$a5,$zero,0x7
.L0daac798:
    # Line 1165
    addiu	$a0,$a0,6
    slt	$a3,$s1,$a0
    # Line 1166
    sw	$a1,0($a2)
    # Line 1167
    sw	$a4,0($a2)
    # Line 1168
    sw	$s0,0($a2)
    # Line 1165
    addiu	$s0,$s0,6
    beqz	$a3,.L0daac798
    # Line 1169
    sw	$a5,0($a2)
.L0daac7b8:
    # Line 1174
    subu	$at,$s1,$s0
    addiu	$at,$at,1
    # Line 1171
    sw	$a1,0($a2)
    # Line 1172
    sw	$a4,0($a2)
    # Line 1173
    sw	$s0,0($a2)
    b	.L0daac70c
    # Line 1174
    sw	$at,0($a2)
.L0daac7d4:
    # Line 1154
    li	$a1,0xa90c
    addiu	$a4,$s2,-6912
    lui	$a2,0x7
    b	.L0daac6f4
    ori	$a2,$a2,0x4080
.L0daac7e8:
    # Line 1144
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,48($sp)
    jal	mgrTM_RefreshDim
    sd	$a2,40($sp)
    ld	$a2,40($sp)
    lw	$a1,-30164($a2)
    ld	$ra,48($sp)
    b	.L0daac67c
    lw	$a1,196($a1)
.L0daac80c:
    # Line 1165
    li	$a1,0xa90c
    addiu	$a4,$s2,-6912
    lui	$a2,0x7
    b	.L0daac7b8
    ori	$a2,$a2,0x4080
.end __glMgrEvalMesh1DGe11

# Function: __glMgrEvalMesh2DGe11
# Declared: Line 1178 (Source lines: 1179-1268)
# Address: 0x0daac820 - 0x0daacc00 (Size: 992 bytes, Frame: 128)
.globl __glMgrEvalMesh2DGe11
.ent __glMgrEvalMesh2DGe11
__glMgrEvalMesh2DGe11:
    # Line 1181
    lw	$a6,__glCurrentContext
    # Line 1185
    slt	$at,$a2,$a1
    # Line 1179
    addiu	$sp,$sp,-128
    sd	$s0,32($sp)
    move	$s0,$a4
    sd	$s1,16($sp)
    move	$s1,$a3
    sd	$s3,48($sp)
    move	$s3,$a0
    sd	$s2,24($sp)
    move	$s2,$a2
    sd	$s4,40($sp)
    move	$s4,$a1
    sd	$gp,56($sp)
    lui	$v0,0x15
    addiu	$v0,$v0,7800
    # Line 1185
    bnez	$at,.L0daac90c
    # Line 1179
    addu	$gp,$t9,$v0
    # Line 1185
    slt	$v1,$s0,$s1
    bnez	$v1,.L0daac90c
    lui	$a2,0x1
    addu	$a2,$a6,$a2
    lw	$a0,-30164($a2)
    beqz	$a0,.L0daac8ac
    # Line 1192
    li	$a5,6912
    # Line 1185
    lw	$a1,196($a0)
    beqz	$a1,.L0daacbb8
.L0daac88c:
    # Line 1188
    la	$a5,MgrasPrevVidTexture
    lw	$a5,0($a5)
    bnezl	$a5,.L0daaca2c
    sd	$a6,8($sp)
.L0daac89c:
    # Line 1190
    lw	$at,-28164($a2)
    lw	$at,484($at)
    bne	$at,$a1,.L0daaca5c
.L0daac8a8:
    # Line 1192
    li	$a5,6912
.L0daac8ac:
    addiu	$t1,$s2,-6
    slt	$a0,$t1,$s4
    beq	$s3,$a5,.L0daaca80
    xori	$a0,$a0,0x1
    # Line 1198
    beqz	$a0,.L0daacb94
    move	$a2,$s4
    li	$t3,18
    li	$a7,50
    li	$a6,6
    li	$t0,16
    li	$a0,0xaa18
    li	$t8,49
    addiu	$a3,$s3,-6912
    li	$at,5
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    teq	$at,$zero,0x7
    subu	$v0,$s0,$s1
    addiu	$a4,$s0,-50
    slt	$t2,$a4,$s1
    addiu	$v0,$v0,-1
    sd	$v0,0($sp)
    b	.L0daac95c
    xori	$t2,$t2,0x1
.L0daac90c:
    ld	$gp,56($sp)
    # Line 1185
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    ld	$s3,48($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daac92c:
    # Line 1214
    subu	$a5,$s0,$t9
.L0daac930:
    addiu	$a5,$a5,1
    # Line 1208
    sw	$a0,0($a1)
    # Line 1209
    sw	$a3,0($a1)
    # Line 1210
    sw	$t3,0($a1)
    # Line 1211
    sw	$a2,0($a1)
    # Line 1198
    addiu	$a2,$a2,5
    slt	$at,$t1,$a2
    # Line 1212
    sw	$a6,0($a1)
    # Line 1213
    sw	$t9,0($a1)
    # Line 1198
    bnez	$at,.L0daac998
    # Line 1214
    sw	$a5,0($a1)
.L0daac95c:
    # Line 1199
    beqz	$t2,.L0daac92c
    move	$t9,$s1
    teq	$t8,$zero,0x7
.L0daac968:
    # Line 1200
    sw	$a0,0($a1)
    # Line 1201
    sw	$a3,0($a1)
    # Line 1202
    sw	$t0,0($a1)
    # Line 1203
    sw	$a2,0($a1)
    # Line 1204
    sw	$a6,0($a1)
    # Line 1205
    sw	$t9,0($a1)
    # Line 1199
    addiu	$t9,$t9,49
    slt	$at,$a4,$t9
    beqz	$at,.L0daac968
    # Line 1206
    sw	$a7,0($a1)
    b	.L0daac930
    # Line 1214
    subu	$a5,$s0,$t9
.L0daac998:
    # Line 1216
    slt	$v0,$a4,$s1
    bnez	$v0,.L0daaca74
    move	$t9,$s1
    li	$t0,17
    li	$a7,50
    subu	$a6,$s2,$a2
    addiu	$a6,$a6,1
    li	$v1,49
    teq	$v1,$zero,0x7
.L0daac9bc:
    # Line 1217
    sw	$a0,0($a1)
    # Line 1218
    sw	$a3,0($a1)
    # Line 1219
    sw	$t0,0($a1)
    # Line 1220
    sw	$a2,0($a1)
    # Line 1221
    sw	$a6,0($a1)
    # Line 1222
    sw	$t9,0($a1)
    # Line 1216
    addiu	$t9,$t9,49
    slt	$at,$a4,$t9
    beqz	$at,.L0daac9bc
    # Line 1223
    sw	$a7,0($a1)
.L0daac9e4:
    # Line 1231
    subu	$v0,$s0,$t9
    addiu	$v0,$v0,1
    # Line 1227
    li	$v1,19
    # Line 1225
    sw	$a0,0($a1)
    # Line 1226
    sw	$a3,0($a1)
    # Line 1227
    sw	$v1,0($a1)
    # Line 1228
    sw	$a2,0($a1)
    # Line 1229
    sw	$a6,0($a1)
    # Line 1230
    sw	$t9,0($a1)
    # Line 1231
    sw	$v0,0($a1)
.L0daaca0c:
    ld	$gp,56($sp)
    # Line 1268
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    ld	$s3,48($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daaca2c:
    move	$a0,$a6
    # Line 1190
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    sd	$a2,64($sp)
    sd	$ra,72($sp)
    jal	mgrTM_VidTexWait
    li	$a2,1
    ld	$a2,64($sp)
    ld	$a6,8($sp)
    lw	$a1,-30164($a2)
    ld	$ra,72($sp)
    b	.L0daac89c
    lw	$a1,196($a1)
.L0daaca5c:
    # Line 1192
    # lw $t9, -30744($gp) # &mgrTM_DrawSetup
    sd	$ra,72($sp)
    jal	mgrTM_DrawSetup
    move	$a0,$a6
    b	.L0daac8a8
    ld	$ra,72($sp)
.L0daaca74:
    # Line 1216
    subu	$a6,$s2,$a2
    b	.L0daac9e4
    addiu	$a6,$a6,1
.L0daaca80:
    # Line 1233
    beqz	$a0,.L0daacbe4
    move	$a2,$s4
    li	$t0,19
    li	$a7,50
    li	$a0,0xaa18
    addiu	$a3,$s3,-6912
    subu	$t3,$s0,$s1
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    li	$a6,6
    teq	$a6,$zero,0x7
    addiu	$a4,$s0,-50
    slt	$t2,$a4,$s1
    b	.L0daacaec
    xori	$t2,$t2,0x1
.L0daacabc:
    # Line 1249
    subu	$a5,$s0,$t9
.L0daacac0:
    addiu	$a5,$a5,1
    # Line 1243
    sw	$a0,0($a1)
    # Line 1244
    sw	$a3,0($a1)
    # Line 1245
    sw	$t0,0($a1)
    # Line 1246
    sw	$a2,0($a1)
    # Line 1233
    addiu	$a2,$a2,6
    slt	$at,$t1,$a2
    # Line 1247
    sw	$a6,0($a1)
    # Line 1248
    sw	$t9,0($a1)
    # Line 1233
    bnez	$at,.L0daacb28
    # Line 1249
    sw	$a5,0($a1)
.L0daacaec:
    # Line 1234
    beqz	$t2,.L0daacabc
    move	$t9,$s1
    teq	$a7,$zero,0x7
.L0daacaf8:
    # Line 1235
    sw	$a0,0($a1)
    # Line 1236
    sw	$a3,0($a1)
    # Line 1237
    sw	$t0,0($a1)
    # Line 1238
    sw	$a2,0($a1)
    # Line 1239
    sw	$a6,0($a1)
    # Line 1240
    sw	$t9,0($a1)
    # Line 1234
    addiu	$t9,$t9,50
    slt	$at,$a4,$t9
    beqz	$at,.L0daacaf8
    # Line 1241
    sw	$a7,0($a1)
    b	.L0daacac0
    # Line 1249
    subu	$a5,$s0,$t9
.L0daacb28:
    # Line 1251
    slt	$v0,$a4,$s1
    bnez	$v0,.L0daacbac
    move	$t9,$s1
    subu	$a6,$s2,$a2
    addiu	$a6,$a6,1
    li	$a7,50
    teq	$a7,$zero,0x7
.L0daacb44:
    # Line 1252
    sw	$a0,0($a1)
    # Line 1253
    sw	$a3,0($a1)
    # Line 1254
    sw	$t0,0($a1)
    # Line 1255
    sw	$a2,0($a1)
    # Line 1256
    sw	$a6,0($a1)
    # Line 1257
    sw	$t9,0($a1)
    # Line 1251
    addiu	$t9,$t9,50
    slt	$at,$a4,$t9
    beqz	$at,.L0daacb44
    # Line 1258
    sw	$a7,0($a1)
.L0daacb6c:
    # Line 1266
    subu	$v0,$s0,$t9
    addiu	$v0,$v0,1
    # Line 1260
    sw	$a0,0($a1)
    # Line 1261
    sw	$a3,0($a1)
    # Line 1262
    sw	$t0,0($a1)
    # Line 1263
    sw	$a2,0($a1)
    # Line 1264
    sw	$a6,0($a1)
    # Line 1265
    sw	$t9,0($a1)
    b	.L0daaca0c
    # Line 1266
    sw	$v0,0($a1)
.L0daacb94:
    # Line 1198
    li	$a0,0xaa18
    addiu	$a3,$s3,-6912
    addiu	$a4,$s0,-50
    lui	$a1,0x7
    b	.L0daac998
    ori	$a1,$a1,0x4080
.L0daacbac:
    # Line 1251
    subu	$a6,$s2,$a2
    b	.L0daacb6c
    addiu	$a6,$a6,1
.L0daacbb8:
    # Line 1188
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$a6,8($sp)
    sd	$ra,72($sp)
    jal	mgrTM_RefreshDim
    sd	$a2,64($sp)
    ld	$a2,64($sp)
    ld	$a6,8($sp)
    lw	$a1,-30164($a2)
    ld	$ra,72($sp)
    b	.L0daac88c
    lw	$a1,196($a1)
.L0daacbe4:
    # Line 1233
    li	$t0,19
    li	$a0,0xaa18
    addiu	$a3,$s3,-6912
    addiu	$a4,$s0,-50
    lui	$a1,0x7
    b	.L0daacb28
    ori	$a1,$a1,0x4080
.end __glMgrEvalMesh2DGe11

# Function: __glMgrInitEvaluators
# Declared: Line 1271 (Source lines: 1272-1328)
# Address: 0x0daacc00 - 0x0daace3c (Size: 572 bytes, Frame: 240)
.globl __glMgrInitEvaluators
.ent __glMgrInitEvaluators
__glMgrInitEvaluators:
    # Line 1272
    addiu	$sp,$sp,-112
    sd	$s0,48($sp)
    sd	$s1,40($sp)
    sd	$s2,88($sp)
    sd	$s3,80($sp)
    sd	$s5,32($sp)
    sd	$s6,72($sp)
    sd	$s7,24($sp)
    sdc1	$f28,8($sp)
    sdc1	$f30,0($sp)
    sd	$ra,64($sp)
    # Line 1277
    lui	$v0,0x1
    # Line 1281
    addu	$a2,$v0,$a0
    # Line 1277
    addu	$v0,$v0,$a0
    # Line 1281
    sb	$zero,-30208($v0)
    sd	$s4,56($sp)
    # Line 1272
    move	$s4,$a0
    sd	$gp,16($sp)
    lui	$v1,0x15
    addiu	$v1,$v1,6808
    addu	$gp,$t9,$v1
    # Line 1277
    la	$at,__glMgrEvalCoord1DGe11
    # Line 1280
    la	$a1,__glMgrEvalMesh2DGe11
    # Line 1279
    la	$a0,__glMgrEvalCoord2DGe11
    # Line 1278
    la	$v1,__glMgrEvalMesh1DGe11
    # Line 1280
    sw	$a1,-30192($v0)
    # Line 1279
    sw	$a0,-30200($v0)
    # Line 1278
    sw	$v1,-30196($v0)
    # Line 1277
    sw	$at,-30204($v0)
    # Line 1291
    sw	$zero,-30680($a2)
    # Line 1290
    sw	$zero,-30684($a2)
    # Line 1289
    sw	$zero,-30688($a2)
    # Line 1288
    sw	$zero,-31200($a2)
    # Line 1287
    sw	$zero,-31204($a2)
    # Line 1286
    sw	$zero,-31208($a2)
    # Line 1291
    sw	$zero,-30692($a2)
    # Line 1290
    sw	$zero,-30696($a2)
    # Line 1289
    sw	$zero,-30700($a2)
    # Line 1288
    sw	$zero,-31212($a2)
    # Line 1287
    sw	$zero,-31216($a2)
    # Line 1286
    sw	$zero,-31220($a2)
    # Line 1291
    sw	$zero,-30704($a2)
    # Line 1290
    sw	$zero,-30708($a2)
    # Line 1289
    sw	$zero,-30712($a2)
    # Line 1288
    sw	$zero,-31224($a2)
    # Line 1287
    sw	$zero,-31228($a2)
    # Line 1286
    sw	$zero,-31232($a2)
    # Line 1291
    sw	$zero,-30716($a2)
    # Line 1290
    sw	$zero,-30720($a2)
    # Line 1289
    sw	$zero,-30724($a2)
    # Line 1288
    sw	$zero,-31236($a2)
    # Line 1287
    sw	$zero,-31240($a2)
    # Line 1286
    sw	$zero,-31244($a2)
    # Line 1285
    lwc1	$f30,_lit_3f800000
    mtc1	$zero,$f28
    la	$s3,sub_0dbf0000
    li	$s7,1
    lui	$s5,0xfffe
    addiu	$s3,$s3,-8128
    addiu	$s6,$s3,288
    # Line 1307
    lw	$s1,4($s3)
.L0daaccf4:
    # Line 1297
    lw	$a2,8($s3)
    # Line 1307
    sll	$s0,$s1,0x2
    subu	$s0,$s0,$s1
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$s1
    # Line 1298
    lw	$s1,12($s3)
    # Line 1307
    sll	$s0,$s0,0x2
    # Line 1297
    lw	$t8,0($s3)
    # Line 1307
    addu	$s0,$s0,$s4
    addu	$s0,$s5,$s0
    # Line 1297
    sll	$s2,$t8,0x2
    subu	$s2,$s2,$t8
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$t8
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$s4
    addu	$s2,$s5,$s2
    # Line 1306
    sw	$s1,-15088($s2)
    # Line 1305
    swc1	$f30,-15100($s2)
    # Line 1304
    swc1	$f28,-15104($s2)
    # Line 1303
    swc1	$f30,-15108($s2)
    # Line 1302
    swc1	$f28,-15112($s2)
    # Line 1301
    sb	$zero,-15116($s2)
    # Line 1300
    sw	$s7,-15120($s2)
    # Line 1299
    sw	$s7,-15124($s2)
    # Line 1298
    sw	$s1,-15128($s2)
    # Line 1297
    sw	$a2,-15132($s2)
    # Line 1316
    sw	$s1,-16232($s0)
    # Line 1315
    swc1	$f30,-16244($s0)
    # Line 1314
    swc1	$f28,-16248($s0)
    # Line 1313
    swc1	$f30,-16252($s0)
    # Line 1312
    swc1	$f28,-16256($s0)
    # Line 1311
    sb	$zero,-16260($s0)
    # Line 1310
    sw	$s7,-16264($s0)
    # Line 1309
    sw	$s7,-16268($s0)
    # Line 1308
    sw	$s1,-16272($s0)
    # Line 1307
    sw	$a2,-16276($s0)
    # Line 1317
    lw	$t9,0($s4)
    lw	$a1,-15088($s2)
    move	$a0,$s4
    jalr	$t9
    sll	$a1,$a1,0x2
    sw	$v0,-15084($s2)
    # Line 1319
    lw	$t9,0($s4)
    lw	$a1,-16232($s0)
    move	$a0,$s4
    jalr	$t9
    sll	$a1,$a1,0x2
    sw	$v0,-16228($s0)
    # Line 1321
    move	$a3,$s3
    blez	$s1,.L0daacdf8
    move	$a0,$zero
    move	$a2,$zero
.L0daacdc8:
    # Line 1322
    lw	$v0,-15084($s2)
    lwc1	$f0,16($a3)
    addu	$v0,$v0,$a2
    swc1	$f0,0($v0)
    # Line 1321
    addiu	$a3,$a3,4
    # Line 1323
    lw	$at,-16228($s0)
    # Line 1321
    addiu	$a0,$a0,1
    slt	$v0,$a0,$s1
    # Line 1323
    addu	$at,$at,$a2
    # Line 1321
    addiu	$a2,$a2,4
    bnez	$v0,.L0daacdc8
    # Line 1323
    swc1	$f0,0($at)
.L0daacdf8:
    # Line 1294
    addiu	$s3,$s3,32
    bnel	$s3,$s6,.L0daaccf4
    # Line 1307
    lw	$s1,4($s3)
    ld	$gp,16($sp)
    # Line 1328
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$s4,56($sp)
    ld	$s5,32($sp)
    ld	$s6,72($sp)
    ld	$s7,24($sp)
    ld	$ra,64($sp)
    ldc1	$f28,8($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrInitEvaluators

# Function: __glMgrFreeEvaluators
# Declared: Line 1330 (Source lines: 1331-1344)
# Address: 0x0daace3c - 0x0daaced8 (Size: 156 bytes, Frame: 192)
.globl __glMgrFreeEvaluators
.ent __glMgrFreeEvaluators
__glMgrFreeEvaluators:
    # Line 1331
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$gp,0($sp)
    sd	$s0,24($sp)
    lui	$at,0x15
    addiu	$at,$at,6236
    sd	$ra,16($sp)
    addiu	$ra,$a0,468
    sd	$s2,32($sp)
    lui	$s2,0x1
    addu	$s0,$s2,$a0
    addu	$s2,$s2,$ra
    b	.L0daacea0
    addu	$gp,$t9,$at
.L0daace78:
    # Line 1337
    lw	$a1,-30628($s0)
.L0daace7c:
    beqzl	$a1,.L0daace98
    # Line 1334
    addiu	$s0,$s0,52
    # Line 1340
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1341
    sw	$zero,-30628($s0)
    # Line 1334
    addiu	$s0,$s0,52
.L0daace98:
    beql	$s0,$s2,.L0daacec0
    ld	$gp,0($sp)
.L0daacea0:
    # Line 1331
    lw	$a1,-31148($s0)
    beqzl	$a1,.L0daace7c
    # Line 1337
    lw	$a1,-30628($s0)
    # Line 1336
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    b	.L0daace78
    # Line 1337
    sw	$zero,-31148($s0)
.L0daacec0:
    # Line 1344
    ld	$s0,24($sp)
    ld	$ra,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrFreeEvaluators

# Function: __glMgSetUpMap1
# Declared: Line 1352 (Source lines: 1354-1389)
# Address: 0x0daaced8 - 0x0daad040 (Size: 360 bytes, Frame: 208)
.globl __glMgSetUpMap1
.ent __glMgSetUpMap1
__glMgSetUpMap1:
    # Line 1356
    lw	$a7,__glCurrentContext
    # Line 1354
    move	$a6,$a1
    # Line 1356
    addiu	$a3,$a0,-3472
    # Line 1354
    addiu	$sp,$sp,-80
    sd	$gp,16($sp)
    lui	$at,0x15
    addiu	$at,$at,6080
    addu	$gp,$t9,$at
    # Line 1356
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$at,$a3,9
    sll	$a3,$a3,0x2
    addiu	$t9,$t9,-7744
    beqz	$at,.L0daad01c
    addu	$a3,$a3,$t9
    # Line 1374
    c.eq.s	$f14,$f15
    sd	$s3,0($sp)
    sll	$a3,$a0,0x2
    bc1t	.L0daacff4
    subu	$a3,$a3,$a0
    blez	$a6,.L0daacff4
    sd	$s3,0($sp)
    slti	$v0,$a6,16
    beqz	$v0,.L0daacff4
    sd	$s3,0($sp)
    lui	$s3,0xfffe
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a7
    addu	$s3,$a3,$s3
    lw	$v1,-15128($s3)
    slt	$v1,$a4,$v1
    bnez	$v1,.L0daacff4
    # Line 1378
    li	$v0,1
    # Line 1376
    lw	$at,-15124($s3)
    beql	$at,$a6,.L0daacf7c
    sd	$ra,24($sp)
    sd	$ra,24($sp)
    sd	$a3,8($sp)
    # Line 1378
    b	.L0daacf84
    sw	$v0,0($a5)
.L0daacf7c:
    sd	$a3,8($sp)
    # Line 1379
    sw	$zero,0($a5)
.L0daacf84:
    # Line 1383
    sub.s	$f1,$f15,$f14
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    div.d	$f0,$f0,$f1
    # Line 1385
    lw	$a3,-15128($s3)
    mult	$a3,$a6
    # Line 1382
    swc1	$f15,-15108($s3)
    # Line 1381
    swc1	$f14,-15112($s3)
    # Line 1383
    cvt.s.d	$f0,$f0
    # Line 1380
    sw	$a6,-15124($s3)
    # Line 1385
    mflo	$a2
    sw	$a2,-15088($s3)
    # Line 1383
    swc1	$f0,-15096($s3)
    # Line 1386
    lw	$t9,8($a7)
    lw	$a1,-15084($s3)
    move	$a0,$a7
    jal	sub_0dbf0000
    sll	$a2,$a2,0x2
    ld	$gp,16($sp)
    sw	$v0,-15084($s3)
    # Line 1389
    ld	$s3,0($sp)
    ld	$v0,8($sp)
    ld	$ra,24($sp)
    addiu	$sp,$sp,80
    lui	$v1,0xfffd
    ori	$v1,$v1,0xc4e4
    jr	$ra
    addu	$v0,$v0,$v1
.L0daacff4:
    # Line 1375
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1281
    sd	$ra,24($sp)
    jal	__glSetError
    ld	$s3,0($sp)
    # Line 1376
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daad01c:
    # Line 1371
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1372
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgSetUpMap1

# Function: __glMgSetUpMap2
# Declared: Line 1398 (Source lines: 1401-1444)
# Address: 0x0daad040 - 0x0daad21c (Size: 476 bytes, Frame: 224)
.globl __glMgSetUpMap2
.ent __glMgSetUpMap2
__glMgSetUpMap2:
    # Line 1403
    lw	$t0,__glCurrentContext
    # Line 1401
    move	$a5,$a1
    move	$a6,$a2
    # Line 1403
    addiu	$a4,$a0,-3504
    # Line 1401
    addiu	$sp,$sp,-96
    sd	$gp,16($sp)
    lui	$at,0x15
    addiu	$at,$at,5720
    addu	$gp,$t9,$at
    # Line 1403
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$at,$a4,9
    sll	$a4,$a4,0x2
    addiu	$t9,$t9,-7704
    beqz	$at,.L0daad1f8
    addu	$a4,$a4,$t9
    # Line 1421
    c.eq.s	$f15,$f16
    sd	$s3,0($sp)
    sll	$a4,$a0,0x2
    bc1t	.L0daad1c0
    subu	$a4,$a4,$a0
    c.eq.s	$f17,$f18
    nop
    bc1t	.L0daad1c0
    sd	$s3,0($sp)
    blez	$a5,.L0daad1c0
    sd	$s3,0($sp)
    slti	$v0,$a5,16
    beqz	$v0,.L0daad1c0
    sd	$s3,0($sp)
    blez	$a6,.L0daad1c0
    sd	$s3,0($sp)
    slti	$v1,$a6,16
    beqz	$v1,.L0daad1c0
    sd	$s3,0($sp)
    lui	$s3,0xfffe
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$t0
    addu	$s3,$a4,$s3
    lw	$a1,-16272($s3)
    slt	$a3,$a7,$a1
    bnez	$a3,.L0daad1c0
    lw	$at,100($sp)
    slt	$at,$at,$a1
    bnez	$at,.L0daad1c0
    # Line 1428
    li	$a3,1
    lw	$v0,-16268($s3)
    bne	$v0,$a5,.L0daad114
    lw	$at,108($sp)
    lw	$v1,-16264($s3)
    beql	$v1,$a6,.L0daad1e8
    sd	$ra,24($sp)
.L0daad114:
    sd	$ra,24($sp)
    sd	$a4,8($sp)
    sw	$a3,0($at)
.L0daad120:
    # Line 1434
    sub.s	$f1,$f16,$f15
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    div.d	$f1,$f0,$f1
    # Line 1438
    sub.s	$f2,$f18,$f17
    cvt.d.s	$f2,$f2
    div.d	$f0,$f0,$f2
    # Line 1440
    mult	$a5,$a6
    lw	$a3,-16272($s3)
    mflo	$a4
    nop
    nop
    mult	$a3,$a4
    # Line 1437
    swc1	$f18,-16244($s3)
    # Line 1436
    swc1	$f17,-16248($s3)
    # Line 1433
    swc1	$f16,-16252($s3)
    # Line 1432
    swc1	$f15,-16256($s3)
    # Line 1438
    cvt.s.d	$f0,$f0
    # Line 1431
    sw	$a6,-16264($s3)
    # Line 1430
    sw	$a5,-16268($s3)
    # Line 1434
    cvt.s.d	$f1,$f1
    # Line 1440
    mflo	$a2
    sw	$a2,-16232($s3)
    # Line 1438
    swc1	$f0,-16236($s3)
    # Line 1434
    swc1	$f1,-16240($s3)
    # Line 1441
    lw	$t9,8($t0)
    lw	$a1,-16228($s3)
    move	$a0,$t0
    jal	sub_0dbf0000
    sll	$a2,$a2,0x2
    ld	$gp,16($sp)
    sw	$v0,-16228($s3)
    # Line 1444
    ld	$s3,0($sp)
    ld	$v0,8($sp)
    ld	$ra,24($sp)
    addiu	$sp,$sp,96
    lui	$v1,0xfffd
    ori	$v1,$v1,0xc06c
    jr	$ra
    addu	$v0,$v0,$v1
.L0daad1c0:
    # Line 1425
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1281
    sd	$ra,24($sp)
    jal	__glSetError
    ld	$s3,0($sp)
    # Line 1426
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daad1e8:
    # Line 1429
    lw	$a3,108($sp)
    sd	$a4,8($sp)
    b	.L0daad120
    sw	$zero,0($a3)
.L0daad1f8:
    # Line 1418
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1419
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgSetUpMap2

# Function: __glMgrim_Map1d
# Declared: Line 1448 (Source lines: 1450-1478)
# Address: 0x0daad21c - 0x0daad3cc (Size: 432 bytes, Frame: 240)
.globl __glMgrim_Map1d
.ent __glMgrim_Map1d
__glMgrim_Map1d:
    # Line 1450
    mov.d	$f4,$f14
    # Line 1455
    li	$v0,1
    # Line 1450
    addiu	$sp,$sp,-112
    sd	$ra,48($sp)
    sd	$s3,40($sp)
    # Line 1455
    lw	$s3,__glCurrentContext
    sd	$s0,16($sp)
    # Line 1450
    move	$s0,$a5
    sd	$s1,8($sp)
    move	$s1,$a4
    sd	$s2,32($sp)
    move	$s2,$a3
    sd	$gp,24($sp)
    # Line 1455
    lw	$at,__glBeginMode
    # Line 1450
    lui	$v1,0x15
    addiu	$v1,$v1,5244
    # Line 1455
    beq	$at,$v0,.L0daad38c
    # Line 1450
    addu	$gp,$t9,$v1
    # Line 1457
    move	$a1,$s1
    addiu	$a5,$sp,0
    # lw $t9, -31008($gp) # &__glMgSetUpMap1
    cvt.s.d	$f15,$f4
    move	$a4,$s2
    bal __glMgSetUpMap1
    cvt.s.d	$f14,$f13
    beqz	$v0,.L0daad370
    ld	$ra,48($sp)
    # Line 1459
    lw	$at,0($v0)
    sll	$t2,$at,0x2
    subu	$t2,$t2,$at
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$s3
    li	$at,0x85f4
    blez	$s1,.L0daad30c
    addu	$t2,$t2,$at
    sll	$a7,$s1,0x2
    move	$a0,$zero
    sll	$t1,$s2,0x3
    move	$t0,$zero
    b	.L0daad2fc
    lw	$a5,4($v0)
.L0daad2c0:
    # Line 1462
    move	$a3,$a0
.L0daad2c4:
    # Line 1463
    ldc1	$f0,0($a4)
    cvt.s.d	$f0,$f0
    lw	$a2,48($v0)
    addu	$a2,$a2,$a3
    swc1	$f0,0($a2)
    # Line 1462
    lw	$a5,4($v0)
    addiu	$a4,$a4,8
    addiu	$a1,$a1,1
    slt	$v1,$a1,$a5
    bnez	$v1,.L0daad2c4
    addu	$a3,$a3,$a7
.L0daad2f0:
    # Line 1461
    addiu	$a0,$a0,4
    beq	$a0,$a7,.L0daad30c
    addu	$t0,$t0,$t1
.L0daad2fc:
    # Line 1462
    blez	$a5,.L0daad2f0
    move	$a1,$zero
    b	.L0daad2c0
    addu	$a4,$t0,$s0
.L0daad30c:
    # Line 1461
    lw	$a6,4($t2)
    bne	$a6,$v0,.L0daad354
    lw	$at,0($sp)
    beqz	$at,.L0daad334
    # Line 1469
    li	$v1,0x8a00
    # lw $t9, -31068($gp) # &__glMgrCleanUp1D
    bal __glMgrCleanUp1D
    nop
    b	.L0daad354
    ld	$ra,48($sp)
.L0daad334:
    addu	$v1,$v1,$s3
    lbu	$v1,0($v1)
    li	$a2,1
    beq	$v1,$a2,.L0daad3b8
    # Line 1474
    nop	# was lw $t9, -31076($gp) # &__glMgrSendMapData1D
    bal __glMgrSendMapData1D
    move	$a0,$v0
    ld	$ra,48($sp)
.L0daad354:
    ld	$gp,24($sp)
    # Line 1478
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daad370:
    ld	$gp,24($sp)
    # Line 1458
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daad38c:
    # Line 1455
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daad3b8:
    # Line 1472
    # lw $t9, -31072($gp) # &__glMgrHostMapData1D
    bal __glMgrHostMapData1D
    move	$a0,$v0
    b	.L0daad354
    ld	$ra,48($sp)
.end __glMgrim_Map1d

# Function: __glMgrim_SoftMap1d
# Declared: Line 1481 (Source lines: 1483-1487)
# Address: 0x0daad3cc - 0x0daad444 (Size: 120 bytes, Frame: 240)
.globl __glMgrim_SoftMap1d
.ent __glMgrim_SoftMap1d
__glMgrim_SoftMap1d:
    # Line 1483
    addiu	$sp,$sp,-112
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sdc1	$f14,8($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f13
    sd	$gp,32($sp)
    lui	$at,0x15
    addiu	$at,$at,4812
    addu	$gp,$t9,$at
    # Line 1485
    # lw $t9, -27156($gp) # &__glim_Map1d
    sd	$s8,24($sp)
    sd	$ra,16($sp)
    jal	__glim_Map1d
    # Line 1483
    move	$s8,$a0
    # Line 1486
    move	$a0,$s8
    mov.d	$f13,$f30
    ldc1	$f14,8($sp)
    # lw $t9, -31000($gp) # &__glMgrim_Map1d
    ld	$a3,56($sp)
    ld	$a4,48($sp)
    bal __glMgrim_Map1d
    ld	$a5,40($sp)
    ld	$gp,32($sp)
    # Line 1487
    ld	$ra,16($sp)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrim_SoftMap1d

# Function: __glMgrim_Map1f
# Declared: Line 1489 (Source lines: 1491-1518)
# Address: 0x0daad444 - 0x0daad5ec (Size: 424 bytes, Frame: 240)
.globl __glMgrim_Map1f
.ent __glMgrim_Map1f
__glMgrim_Map1f:
    # Line 1491
    mov.s	$f15,$f14
    # Line 1496
    li	$v0,1
    # Line 1491
    addiu	$sp,$sp,-112
    sd	$ra,48($sp)
    sd	$s3,40($sp)
    # Line 1496
    lw	$s3,__glCurrentContext
    sd	$s0,16($sp)
    # Line 1491
    move	$s0,$a5
    sd	$s1,8($sp)
    move	$s1,$a4
    sd	$s2,32($sp)
    move	$s2,$a3
    sd	$gp,24($sp)
    # Line 1496
    lw	$at,__glBeginMode
    # Line 1491
    lui	$v1,0x15
    addiu	$v1,$v1,4692
    # Line 1496
    beq	$at,$v0,.L0daad5ac
    # Line 1491
    addu	$gp,$t9,$v1
    # Line 1498
    move	$a1,$s1
    # lw $t9, -31008($gp) # &__glMgSetUpMap1
    mov.s	$f14,$f13
    move	$a4,$s2
    bal __glMgSetUpMap1
    addiu	$a5,$sp,0
    beqz	$v0,.L0daad590
    ld	$ra,48($sp)
    # Line 1500
    lw	$at,0($v0)
    sll	$t2,$at,0x2
    subu	$t2,$t2,$at
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$s3
    li	$at,0x85f4
    blez	$s1,.L0daad52c
    addu	$t2,$t2,$at
    sll	$a7,$s1,0x2
    move	$a0,$zero
    sll	$t1,$s2,0x2
    move	$t0,$zero
    b	.L0daad51c
    lw	$a5,4($v0)
.L0daad4e4:
    # Line 1503
    move	$a3,$a0
.L0daad4e8:
    # Line 1504
    lw	$a2,48($v0)
    lwc1	$f0,0($a4)
    addu	$a2,$a2,$a3
    swc1	$f0,0($a2)
    # Line 1503
    lw	$a5,4($v0)
    addiu	$a4,$a4,4
    addiu	$a1,$a1,1
    slt	$v1,$a1,$a5
    bnez	$v1,.L0daad4e8
    addu	$a3,$a3,$a7
.L0daad510:
    # Line 1502
    addiu	$a0,$a0,4
    beq	$a0,$a7,.L0daad52c
    addu	$t0,$t0,$t1
.L0daad51c:
    # Line 1503
    blez	$a5,.L0daad510
    move	$a1,$zero
    b	.L0daad4e4
    addu	$a4,$t0,$s0
.L0daad52c:
    # Line 1502
    lw	$a6,4($t2)
    bne	$a6,$v0,.L0daad574
    lw	$at,0($sp)
    beqz	$at,.L0daad554
    # Line 1510
    li	$v1,0x8a00
    # lw $t9, -31068($gp) # &__glMgrCleanUp1D
    bal __glMgrCleanUp1D
    nop
    b	.L0daad574
    ld	$ra,48($sp)
.L0daad554:
    addu	$v1,$v1,$s3
    lbu	$v1,0($v1)
    li	$a2,1
    beq	$v1,$a2,.L0daad5d8
    # Line 1515
    nop	# was lw $t9, -31076($gp) # &__glMgrSendMapData1D
    bal __glMgrSendMapData1D
    move	$a0,$v0
    ld	$ra,48($sp)
.L0daad574:
    ld	$gp,24($sp)
    # Line 1518
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daad590:
    ld	$gp,24($sp)
    # Line 1499
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daad5ac:
    # Line 1496
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daad5d8:
    # Line 1513
    # lw $t9, -31072($gp) # &__glMgrHostMapData1D
    bal __glMgrHostMapData1D
    move	$a0,$v0
    b	.L0daad574
    ld	$ra,48($sp)
.end __glMgrim_Map1f

# Function: __glMgrim_SoftMap1f
# Declared: Line 1521 (Source lines: 1523-1527)
# Address: 0x0daad5ec - 0x0daad664 (Size: 120 bytes, Frame: 240)
.globl __glMgrim_SoftMap1f
.ent __glMgrim_SoftMap1f
__glMgrim_SoftMap1f:
    # Line 1523
    addiu	$sp,$sp,-112
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sdc1	$f14,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$gp,32($sp)
    lui	$at,0x15
    addiu	$at,$at,4268
    addu	$gp,$t9,$at
    # Line 1525
    # lw $t9, -27152($gp) # &__glim_Map1f
    sd	$s8,24($sp)
    sd	$ra,16($sp)
    jal	__glim_Map1f
    # Line 1523
    move	$s8,$a0
    # Line 1526
    move	$a0,$s8
    mov.s	$f13,$f30
    ldc1	$f14,8($sp)
    # lw $t9, -30992($gp) # &__glMgrim_Map1f
    ld	$a3,56($sp)
    ld	$a4,48($sp)
    bal __glMgrim_Map1f
    ld	$a5,40($sp)
    ld	$gp,32($sp)
    # Line 1527
    ld	$ra,16($sp)
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrim_SoftMap1f

# Function: __glMgrim_Map2d
# Declared: Line 1529 (Source lines: 1532-1563)
# Address: 0x0daad664 - 0x0daad894 (Size: 560 bytes, Frame: 160)
.globl __glMgrim_Map2d
.ent __glMgrim_Map2d
__glMgrim_Map2d:
    # Line 1532
    mov.d	$f5,$f18
    mov.d	$f4,$f17
    # Line 1537
    li	$v0,1
    # Line 1532
    addiu	$sp,$sp,-160
    sd	$ra,72($sp)
    sd	$s4,48($sp)
    # Line 1537
    lw	$s4,__glCurrentContext
    sd	$s1,32($sp)
    # Line 1532
    move	$s1,$a7
    sd	$s0,40($sp)
    move	$s0,$a4
    sd	$s2,64($sp)
    move	$s2,$a3
    sd	$gp,56($sp)
    # Line 1537
    lw	$at,__glBeginMode
    # Line 1532
    lui	$v1,0x15
    addiu	$v1,$v1,4148
    # Line 1537
    beq	$at,$v0,.L0daad854
    # Line 1532
    addu	$gp,$t9,$v1
    # Line 1539
    cvt.s.d	$f18,$f5
    cvt.s.d	$f17,$f4
    cvt.s.d	$f16,$f14
    sd	$s3,80($sp)
    lw	$s3,164($sp)
    sw	$s1,4($sp)
    move	$a7,$s2
    cvt.s.d	$f15,$f13
    move	$a1,$s0
    # lw $t9, -31004($gp) # &__glMgSetUpMap2
    addiu	$a2,$sp,16
    sw	$a2,12($sp)
    bal __glMgSetUpMap2
    move	$a2,$s3
    beqz	$v0,.L0daad834
    ld	$ra,72($sp)
    # Line 1542
    lw	$a6,0($v0)
    # Line 1544
    move	$t3,$zero
    # Line 1542
    sll	$a5,$a6,0x2
    subu	$a5,$a5,$a6
    li	$a6,0x87fc
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$s4
    addu	$a5,$a5,$a6
    # Line 1544
    blez	$s3,.L0daad7c4
    sd	$a5,24($sp)
    mult	$s0,$s3
    sll	$ra,$s0,0x2
    sll	$a7,$s0,0x2
    sll	$t9,$s0,0x2
    move	$t2,$zero
    sll	$t0,$s2,0x3
    sll	$t8,$s1,0x3
    move	$t1,$zero
    mflo	$a0
    b	.L0daad758
    sll	$a0,$a0,0x2
.L0daad744:
    addu	$t1,$t1,$t8
.L0daad748:
    addu	$a7,$a7,$ra
    addiu	$t3,$t3,1
    beq	$t3,$s3,.L0daad7c4
    addu	$t2,$t2,$t9
.L0daad758:
    blezl	$s0,.L0daad748
    addu	$t1,$t1,$t8
    lw	$a4,4($v0)
    move	$s1,$t1
    b	.L0daad77c
    move	$s2,$t2
.L0daad770:
    # Line 1545
    addiu	$s2,$s2,4
    beq	$s2,$a7,.L0daad744
    addu	$s1,$s1,$t0
.L0daad77c:
    # Line 1546
    blez	$a4,.L0daad770
    move	$a1,$zero
    move	$a2,$s2
    lw	$a3,172($sp)
    addu	$a3,$a3,$s1
.L0daad790:
    # Line 1547
    ldc1	$f0,0($a3)
    cvt.s.d	$f0,$f0
    lw	$a6,48($v0)
    addu	$a6,$a6,$a2
    swc1	$f0,0($a6)
    # Line 1546
    lw	$a4,4($v0)
    addiu	$a3,$a3,8
    addiu	$a1,$a1,1
    slt	$a5,$a1,$a4
    bnez	$a5,.L0daad790
    addu	$a2,$a2,$a0
    b	.L0daad770
    nop
.L0daad7c4:
    ld	$at,24($sp)
    # Line 1544
    lw	$at,4($at)
    bne	$at,$v0,.L0daad814
    ld	$s3,80($sp)
    lw	$v1,16($sp)
    beqz	$v1,.L0daad7f4
    ld	$s3,80($sp)
    # Line 1555
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    bal __glMgrCleanUp2D
    nop
    b	.L0daad818
    ld	$gp,56($sp)
.L0daad7f4:
    li	$a5,0x8a00
    addu	$a5,$a5,$s4
    lbu	$a5,0($a5)
    li	$a6,1
    beq	$a5,$a6,.L0daad880
    # Line 1560
    nop	# was lw $t9, -31060($gp) # &__glMgrSendMapData2D
    bal __glMgrSendMapData2D
    move	$a0,$v0
.L0daad814:
    ld	$gp,56($sp)
.L0daad818:
    # Line 1563
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,72($sp)
    ld	$s2,64($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daad834:
    ld	$gp,56($sp)
    # Line 1541
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s3,80($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daad854:
    # Line 1537
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,56($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,72($sp)
    ld	$s2,64($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daad880:
    # Line 1558
    # lw $t9, -31056($gp) # &__glMgrHostMapData2D
    bal __glMgrHostMapData2D
    move	$a0,$v0
    b	.L0daad818
    ld	$gp,56($sp)
.end __glMgrim_Map2d

# Function: __glMgrim_SoftMap2d
# Declared: Line 1566 (Source lines: 1569-1576)
# Address: 0x0daad894 - 0x0daad944 (Size: 176 bytes, Frame: 176)
.globl __glMgrim_SoftMap2d
.ent __glMgrim_SoftMap2d
__glMgrim_SoftMap2d:
    # Line 1569
    addiu	$sp,$sp,-176
    sd	$a7,88($sp)
    sdc1	$f18,24($sp)
    sdc1	$f17,32($sp)
    sd	$a4,96($sp)
    sd	$a3,104($sp)
    sdc1	$f14,40($sp)
    sdc1	$f30,16($sp)
    mov.d	$f30,$f13
    sd	$s8,56($sp)
    move	$s8,$a0
    # Line 1571
    lw	$v0,188($sp)
    sd	$ra,48($sp)
    lw	$at,180($sp)
    sd	$v0,80($sp)
    sd	$gp,64($sp)
    # Line 1569
    lui	$v1,0x15
    addiu	$v1,$v1,3588
    addu	$gp,$t9,$v1
    # Line 1571
    # lw $t9, -27148($gp) # &__glim_Map2d
    sd	$at,72($sp)
    sw	$v0,12($sp)
    jal	__glim_Map2d
    sw	$at,4($sp)
    # Line 1574
    move	$a0,$s8
    mov.d	$f13,$f30
    ldc1	$f14,40($sp)
    ld	$a3,104($sp)
    ld	$a4,96($sp)
    ldc1	$f17,32($sp)
    ldc1	$f18,24($sp)
    ld	$a7,88($sp)
    ld	$a2,80($sp)
    # lw $t9, -30984($gp) # &__glMgrim_Map2d
    ld	$a1,72($sp)
    sw	$a2,12($sp)
    bal __glMgrim_Map2d
    sw	$a1,4($sp)
    ld	$gp,64($sp)
    # Line 1576
    ld	$ra,48($sp)
    ld	$s8,56($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glMgrim_SoftMap2d

# Function: __glMgrim_Map2f
# Declared: Line 1578 (Source lines: 1581-1612)
# Address: 0x0daad944 - 0x0daadb60 (Size: 540 bytes, Frame: 160)
.globl __glMgrim_Map2f
.ent __glMgrim_Map2f
__glMgrim_Map2f:
    # Line 1586
    li	$v0,1
    # Line 1581
    addiu	$sp,$sp,-160
    sd	$ra,72($sp)
    sd	$s4,48($sp)
    # Line 1586
    lw	$s4,__glCurrentContext
    sd	$s1,32($sp)
    # Line 1581
    move	$s1,$a7
    sd	$s0,40($sp)
    move	$s0,$a4
    sd	$s2,64($sp)
    move	$s2,$a3
    sd	$gp,56($sp)
    # Line 1586
    lw	$at,__glBeginMode
    # Line 1581
    lui	$v1,0x15
    addiu	$v1,$v1,3412
    # Line 1586
    beq	$at,$v0,.L0daadb20
    # Line 1581
    addu	$gp,$t9,$v1
    sd	$s3,80($sp)
    # Line 1588
    lw	$s3,164($sp)
    sw	$s1,4($sp)
    move	$a7,$s2
    mov.s	$f16,$f14
    mov.s	$f15,$f13
    move	$a1,$s0
    # lw $t9, -31004($gp) # &__glMgSetUpMap2
    addiu	$a2,$sp,16
    sw	$a2,12($sp)
    bal __glMgSetUpMap2
    move	$a2,$s3
    beqz	$v0,.L0daadb00
    ld	$ra,72($sp)
    # Line 1591
    lw	$a6,0($v0)
    # Line 1593
    move	$t3,$zero
    # Line 1591
    sll	$a5,$a6,0x2
    subu	$a5,$a5,$a6
    li	$a6,0x87fc
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$s4
    addu	$a5,$a5,$a6
    # Line 1593
    blez	$s3,.L0daada90
    sd	$a5,24($sp)
    mult	$s0,$s3
    sll	$ra,$s0,0x2
    sll	$a7,$s0,0x2
    sll	$t9,$s0,0x2
    move	$t2,$zero
    sll	$t0,$s2,0x2
    sll	$t8,$s1,0x2
    move	$t1,$zero
    mflo	$a0
    b	.L0daada28
    sll	$a0,$a0,0x2
.L0daada14:
    addu	$t1,$t1,$t8
.L0daada18:
    addu	$a7,$a7,$ra
    addiu	$t3,$t3,1
    beq	$t3,$s3,.L0daada90
    addu	$t2,$t2,$t9
.L0daada28:
    blezl	$s0,.L0daada18
    addu	$t1,$t1,$t8
    lw	$a4,4($v0)
    move	$s1,$t1
    b	.L0daada4c
    move	$s2,$t2
.L0daada40:
    # Line 1594
    addiu	$s2,$s2,4
    beq	$s2,$a7,.L0daada14
    addu	$s1,$s1,$t0
.L0daada4c:
    # Line 1595
    blez	$a4,.L0daada40
    move	$a1,$zero
    move	$a2,$s2
    lw	$a3,172($sp)
    addu	$a3,$a3,$s1
.L0daada60:
    # Line 1596
    lw	$a6,48($v0)
    lwc1	$f0,0($a3)
    addu	$a6,$a6,$a2
    swc1	$f0,0($a6)
    # Line 1595
    lw	$a4,4($v0)
    addiu	$a3,$a3,4
    addiu	$a1,$a1,1
    slt	$a5,$a1,$a4
    bnez	$a5,.L0daada60
    addu	$a2,$a2,$a0
    b	.L0daada40
    nop
.L0daada90:
    ld	$at,24($sp)
    # Line 1593
    lw	$at,4($at)
    bne	$at,$v0,.L0daadae0
    ld	$s3,80($sp)
    lw	$v1,16($sp)
    beqz	$v1,.L0daadac0
    ld	$s3,80($sp)
    # Line 1604
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    bal __glMgrCleanUp2D
    nop
    b	.L0daadae4
    ld	$gp,56($sp)
.L0daadac0:
    li	$a5,0x8a00
    addu	$a5,$a5,$s4
    lbu	$a5,0($a5)
    li	$a6,1
    beq	$a5,$a6,.L0daadb4c
    # Line 1609
    nop	# was lw $t9, -31060($gp) # &__glMgrSendMapData2D
    bal __glMgrSendMapData2D
    move	$a0,$v0
.L0daadae0:
    ld	$gp,56($sp)
.L0daadae4:
    # Line 1612
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,72($sp)
    ld	$s2,64($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daadb00:
    ld	$gp,56($sp)
    # Line 1590
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s3,80($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daadb20:
    # Line 1586
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,56($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,72($sp)
    ld	$s2,64($sp)
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daadb4c:
    # Line 1607
    # lw $t9, -31056($gp) # &__glMgrHostMapData2D
    bal __glMgrHostMapData2D
    move	$a0,$v0
    b	.L0daadae4
    ld	$gp,56($sp)
.end __glMgrim_Map2f

# Function: __glMgrim_SoftMap2f
# Declared: Line 1615 (Source lines: 1618-1625)
# Address: 0x0daadb60 - 0x0daadc10 (Size: 176 bytes, Frame: 176)
.globl __glMgrim_SoftMap2f
.ent __glMgrim_SoftMap2f
__glMgrim_SoftMap2f:
    # Line 1618
    addiu	$sp,$sp,-176
    sd	$a7,88($sp)
    sdc1	$f18,24($sp)
    sdc1	$f17,32($sp)
    sd	$a4,96($sp)
    sd	$a3,104($sp)
    sdc1	$f14,40($sp)
    sdc1	$f30,16($sp)
    mov.s	$f30,$f13
    sd	$s8,56($sp)
    move	$s8,$a0
    # Line 1620
    lw	$v0,188($sp)
    sd	$ra,48($sp)
    lw	$at,180($sp)
    sd	$v0,80($sp)
    sd	$gp,64($sp)
    # Line 1618
    lui	$v1,0x15
    addiu	$v1,$v1,2872
    addu	$gp,$t9,$v1
    # Line 1620
    # lw $t9, -27144($gp) # &__glim_Map2f
    sd	$at,72($sp)
    sw	$v0,12($sp)
    jal	__glim_Map2f
    sw	$at,4($sp)
    # Line 1623
    move	$a0,$s8
    mov.s	$f13,$f30
    ldc1	$f14,40($sp)
    ld	$a3,104($sp)
    ld	$a4,96($sp)
    ldc1	$f17,32($sp)
    ldc1	$f18,24($sp)
    ld	$a7,88($sp)
    ld	$a2,80($sp)
    # lw $t9, -30976($gp) # &__glMgrim_Map2f
    ld	$a1,72($sp)
    sw	$a2,12($sp)
    bal __glMgrim_Map2f
    sw	$a1,4($sp)
    ld	$gp,64($sp)
    # Line 1625
    ld	$ra,48($sp)
    ld	$s8,56($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glMgrim_SoftMap2f

# Function: __glMgrim_EvalCoord1d
# Declared: Line 1627 (Source lines: 1628-1634)
# Address: 0x0daadc10 - 0x0daadc68 (Size: 88 bytes, Frame: 32)
.globl __glMgrim_EvalCoord1d
.ent __glMgrim_EvalCoord1d
__glMgrim_EvalCoord1d:
    # Line 1628
    mov.d	$f4,$f12
    addiu	$sp,$sp,-32
    # Line 1629
    lw	$a1,__glCurrentContext
    sd	$gp,0($sp)
    lui	$at,0x1
    addu	$a1,$a1,$at
    lw	$at,-31244($a1)
    # Line 1628
    lui	$v0,0x15
    addiu	$v0,$v0,2696
    # Line 1629
    bnez	$at,.L0daadc48
    # Line 1628
    addu	$gp,$t9,$v0
    ld	$gp,0($sp)
    # Line 1631
    jr	$ra
    addiu	$sp,$sp,32
.L0daadc48:
    # Line 1633
    lw	$t9,-30204($a1)
    sd	$ra,8($sp)
    jalr	$t9
    cvt.s.d	$f12,$f4
    # Line 1634
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalCoord1d

# Function: __glMgrim_EvalCoord1dv
# Declared: Line 1636 (Source lines: 1637-1643)
# Address: 0x0daadc68 - 0x0daadcc0 (Size: 88 bytes, Frame: 32)
.globl __glMgrim_EvalCoord1dv
.ent __glMgrim_EvalCoord1dv
__glMgrim_EvalCoord1dv:
    # Line 1637
    addiu	$sp,$sp,-32
    # Line 1638
    lw	$a2,__glCurrentContext
    sd	$gp,0($sp)
    lui	$at,0x1
    addu	$a2,$a2,$at
    lw	$at,-31244($a2)
    # Line 1637
    lui	$v0,0x15
    addiu	$v0,$v0,2608
    # Line 1638
    bnez	$at,.L0daadc9c
    # Line 1637
    addu	$gp,$t9,$v0
    ld	$gp,0($sp)
    # Line 1640
    jr	$ra
    addiu	$sp,$sp,32
.L0daadc9c:
    # Line 1642
    lw	$t9,-30204($a2)
    ldc1	$f12,0($a0)
    sd	$ra,8($sp)
    jalr	$t9
    cvt.s.d	$f12,$f12
    # Line 1643
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalCoord1dv

# Function: __glMgrim_EvalCoord1f
# Declared: Line 1645 (Source lines: 1646-1652)
# Address: 0x0daadcc0 - 0x0daadd14 (Size: 84 bytes, Frame: 32)
.globl __glMgrim_EvalCoord1f
.ent __glMgrim_EvalCoord1f
__glMgrim_EvalCoord1f:
    # Line 1646
    addiu	$sp,$sp,-32
    # Line 1647
    lw	$a1,__glCurrentContext
    sd	$gp,0($sp)
    lui	$at,0x1
    addu	$a1,$a1,$at
    lw	$at,-31244($a1)
    # Line 1646
    lui	$v0,0x15
    addiu	$v0,$v0,2520
    # Line 1647
    bnez	$at,.L0daadcf4
    # Line 1646
    addu	$gp,$t9,$v0
    ld	$gp,0($sp)
    # Line 1649
    jr	$ra
    addiu	$sp,$sp,32
.L0daadcf4:
    # Line 1651
    lw	$t9,-30204($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    # Line 1652
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalCoord1f

# Function: __glMgrim_EvalCoord1fv
# Declared: Line 1654 (Source lines: 1655-1661)
# Address: 0x0daadd14 - 0x0daadd68 (Size: 84 bytes, Frame: 32)
.globl __glMgrim_EvalCoord1fv
.ent __glMgrim_EvalCoord1fv
__glMgrim_EvalCoord1fv:
    # Line 1655
    addiu	$sp,$sp,-32
    # Line 1656
    lw	$a2,__glCurrentContext
    sd	$gp,0($sp)
    lui	$at,0x1
    addu	$a2,$a2,$at
    lw	$at,-31244($a2)
    # Line 1655
    lui	$v0,0x15
    addiu	$v0,$v0,2436
    # Line 1656
    bnez	$at,.L0daadd48
    # Line 1655
    addu	$gp,$t9,$v0
    ld	$gp,0($sp)
    # Line 1658
    jr	$ra
    addiu	$sp,$sp,32
.L0daadd48:
    # Line 1660
    lw	$t9,-30204($a2)
    sd	$ra,8($sp)
    jalr	$t9
    lwc1	$f12,0($a0)
    # Line 1661
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalCoord1fv

# Function: __glMgrim_EvalCoord2d
# Declared: Line 1663 (Source lines: 1664-1670)
# Address: 0x0daadd68 - 0x0daaddc8 (Size: 96 bytes, Frame: 32)
.globl __glMgrim_EvalCoord2d
.ent __glMgrim_EvalCoord2d
__glMgrim_EvalCoord2d:
    # Line 1664
    mov.d	$f5,$f13
    mov.d	$f4,$f12
    addiu	$sp,$sp,-32
    # Line 1665
    lw	$a1,__glCurrentContext
    sd	$gp,0($sp)
    lui	$at,0x1
    addu	$a1,$a1,$at
    lw	$at,-30724($a1)
    # Line 1664
    lui	$v0,0x15
    addiu	$v0,$v0,2352
    # Line 1665
    bnez	$at,.L0daadda4
    # Line 1664
    addu	$gp,$t9,$v0
    ld	$gp,0($sp)
    # Line 1667
    jr	$ra
    addiu	$sp,$sp,32
.L0daadda4:
    # Line 1669
    lw	$t9,-30200($a1)
    cvt.s.d	$f13,$f5
    sd	$ra,8($sp)
    jalr	$t9
    cvt.s.d	$f12,$f4
    # Line 1670
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalCoord2d

# Function: __glMgrim_EvalCoord2dv
# Declared: Line 1672 (Source lines: 1673-1679)
# Address: 0x0daaddc8 - 0x0daade28 (Size: 96 bytes, Frame: 32)
.globl __glMgrim_EvalCoord2dv
.ent __glMgrim_EvalCoord2dv
__glMgrim_EvalCoord2dv:
    # Line 1673
    addiu	$sp,$sp,-32
    # Line 1674
    lw	$a2,__glCurrentContext
    sd	$gp,0($sp)
    lui	$at,0x1
    addu	$a2,$a2,$at
    lw	$at,-30724($a2)
    # Line 1673
    lui	$v0,0x15
    addiu	$v0,$v0,2256
    # Line 1674
    bnez	$at,.L0daaddfc
    # Line 1673
    addu	$gp,$t9,$v0
    ld	$gp,0($sp)
    # Line 1676
    jr	$ra
    addiu	$sp,$sp,32
.L0daaddfc:
    # Line 1678
    ldc1	$f13,8($a0)
    ldc1	$f12,0($a0)
    lw	$t9,-30200($a2)
    cvt.s.d	$f13,$f13
    sd	$ra,8($sp)
    jalr	$t9
    cvt.s.d	$f12,$f12
    # Line 1679
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalCoord2dv

# Function: __glMgrim_EvalCoord2f
# Declared: Line 1681 (Source lines: 1682-1688)
# Address: 0x0daade28 - 0x0daade7c (Size: 84 bytes, Frame: 32)
.globl __glMgrim_EvalCoord2f
.ent __glMgrim_EvalCoord2f
__glMgrim_EvalCoord2f:
    # Line 1682
    addiu	$sp,$sp,-32
    # Line 1683
    lw	$a1,__glCurrentContext
    sd	$gp,0($sp)
    lui	$at,0x1
    addu	$a1,$a1,$at
    lw	$at,-30724($a1)
    # Line 1682
    lui	$v0,0x15
    addiu	$v0,$v0,2160
    # Line 1683
    bnez	$at,.L0daade5c
    # Line 1682
    addu	$gp,$t9,$v0
    ld	$gp,0($sp)
    # Line 1685
    jr	$ra
    addiu	$sp,$sp,32
.L0daade5c:
    # Line 1687
    lw	$t9,-30200($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    # Line 1688
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalCoord2f

# Function: __glMgrim_EvalCoord2fv
# Declared: Line 1690 (Source lines: 1691-1697)
# Address: 0x0daade7c - 0x0daaded4 (Size: 88 bytes, Frame: 32)
.globl __glMgrim_EvalCoord2fv
.ent __glMgrim_EvalCoord2fv
__glMgrim_EvalCoord2fv:
    # Line 1691
    addiu	$sp,$sp,-32
    # Line 1692
    lw	$a2,__glCurrentContext
    sd	$gp,0($sp)
    lui	$at,0x1
    addu	$a2,$a2,$at
    lw	$at,-30724($a2)
    # Line 1691
    lui	$v0,0x15
    addiu	$v0,$v0,2076
    # Line 1692
    bnez	$at,.L0daadeb0
    # Line 1691
    addu	$gp,$t9,$v0
    ld	$gp,0($sp)
    # Line 1694
    jr	$ra
    addiu	$sp,$sp,32
.L0daadeb0:
    # Line 1696
    lw	$t9,-30200($a2)
    lwc1	$f13,4($a0)
    sd	$ra,8($sp)
    jalr	$t9
    lwc1	$f12,0($a0)
    # Line 1697
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalCoord2fv

# Function: __glMgrim_MapGrid1d
# Declared: Line 1699 (Source lines: 1700-1717)
# Address: 0x0daaded4 - 0x0daadf88 (Size: 180 bytes, Frame: 48)
.globl __glMgrim_MapGrid1d
.ent __glMgrim_MapGrid1d
__glMgrim_MapGrid1d:
    # Line 1702
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 1700
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1702
    lw	$at,__glBeginMode
    # Line 1700
    lui	$v1,0x15
    addiu	$v1,$v1,1988
    # Line 1702
    beq	$at,$v0,.L0daadf68
    # Line 1700
    addu	$gp,$t9,$v1
    # Line 1706
    sw	$a0,1836($a2)
    # Line 1712
    li	$at,0xae10
    # Line 1705
    cvt.s.d	$f6,$f14
    # Line 1712
    lui	$a1,0x7
    # Line 1704
    cvt.s.d	$f5,$f13
    # Line 1712
    ori	$a1,$a1,0x4080
    # Line 1705
    swc1	$f6,1828($a2)
    # Line 1706
    blez	$a0,.L0daadf5c
    # Line 1704
    swc1	$f5,1824($a2)
    # Line 1708
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    sub.s	$f4,$f6,$f5
    div.s	$f4,$f4,$f0
    swc1	$f4,1832($a2)
.L0daadf34:
    # Line 1714
    cvt.s.d	$f2,$f13
    ld	$gp,0($sp)
    # Line 1717
    addiu	$sp,$sp,48
    # Line 1715
    cvt.s.d	$f1,$f14
    # Line 1712
    sw	$at,0($a1)
    # Line 1713
    sw	$a0,0($a1)
    # Line 1714
    swc1	$f2,0($a1)
    # Line 1715
    swc1	$f1,0($a1)
    # Line 1717
    jr	$ra
    # Line 1716
    swc1	$f4,0($a1)
.L0daadf5c:
    # Line 1710
    mtc1	$zero,$f4
    b	.L0daadf34
    swc1	$f4,1832($a2)
.L0daadf68:
    # Line 1702
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_MapGrid1d

# Function: __glMgrim_MapGrid1f
# Declared: Line 1719 (Source lines: 1720-1737)
# Address: 0x0daadf88 - 0x0daae02c (Size: 164 bytes, Frame: 48)
.globl __glMgrim_MapGrid1f
.ent __glMgrim_MapGrid1f
__glMgrim_MapGrid1f:
    # Line 1722
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 1720
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1722
    lw	$at,__glBeginMode
    # Line 1720
    lui	$v1,0x15
    addiu	$v1,$v1,1808
    # Line 1722
    beq	$at,$v0,.L0daae00c
    # Line 1720
    addu	$gp,$t9,$v1
    # Line 1726
    sw	$a0,1836($a2)
    # Line 1725
    swc1	$f14,1828($a2)
    # Line 1724
    swc1	$f13,1824($a2)
    # Line 1732
    lui	$a1,0x7
    # Line 1726
    blez	$a0,.L0daae000
    # Line 1732
    ori	$a1,$a1,0x4080
    # Line 1728
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    sub.s	$f4,$f14,$f13
    div.s	$f4,$f4,$f0
    swc1	$f4,1832($a2)
.L0daadfdc:
    ld	$gp,0($sp)
    # Line 1737
    addiu	$sp,$sp,48
    # Line 1732
    li	$at,0xae10
    sw	$at,0($a1)
    # Line 1733
    sw	$a0,0($a1)
    # Line 1734
    swc1	$f13,0($a1)
    # Line 1735
    swc1	$f14,0($a1)
    # Line 1737
    jr	$ra
    # Line 1736
    swc1	$f4,0($a1)
.L0daae000:
    # Line 1730
    mtc1	$zero,$f4
    b	.L0daadfdc
    swc1	$f4,1832($a2)
.L0daae00c:
    # Line 1722
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_MapGrid1f

# Function: __glMgrim_MapGrid2d
# Declared: Line 1739 (Source lines: 1741-1769)
# Address: 0x0daae02c - 0x0daae134 (Size: 264 bytes, Frame: 192)
.globl __glMgrim_MapGrid2d
.ent __glMgrim_MapGrid2d
__glMgrim_MapGrid2d:
    # Line 1743
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 1741
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # Line 1743
    lw	$at,__glBeginMode
    # Line 1741
    lui	$v1,0x15
    addiu	$v1,$v1,1644
    # Line 1743
    beq	$at,$v0,.L0daae114
    # Line 1741
    addu	$gp,$t9,$v1
    # Line 1767
    cvt.s.d	$f1,$f17
    # Line 1753
    cvt.s.d	$f7,$f17
    # Line 1747
    sw	$a0,1852($a2)
    # Line 1760
    li	$at,0xaf20
    # Line 1746
    cvt.s.d	$f4,$f14
    # Line 1751
    mtc1	$zero,$f5
    # Line 1760
    lui	$a1,0x7
    # Line 1745
    cvt.s.d	$f6,$f13
    # Line 1760
    ori	$a1,$a1,0x4080
    # Line 1746
    swc1	$f4,1844($a2)
    # Line 1747
    blez	$a0,.L0daae104
    # Line 1745
    swc1	$f6,1840($a2)
    # Line 1749
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    sub.s	$f5,$f4,$f6
    div.s	$f5,$f5,$f0
    swc1	$f5,1848($a2)
.L0daae098:
    # Line 1763
    cvt.s.d	$f3,$f14
    # Line 1754
    sw	$a3,1868($a2)
    # Line 1752
    cvt.s.d	$f6,$f16
    # Line 1753
    swc1	$f7,1860($a2)
    # Line 1758
    mtc1	$zero,$f4
    # Line 1754
    blez	$a3,.L0daae10c
    # Line 1752
    swc1	$f6,1856($a2)
    # Line 1756
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    sub.s	$f4,$f7,$f6
    div.s	$f4,$f4,$f0
    swc1	$f4,1864($a2)
.L0daae0cc:
    # Line 1762
    cvt.s.d	$f0,$f13
    ld	$gp,0($sp)
    # Line 1769
    addiu	$sp,$sp,64
    # Line 1766
    cvt.s.d	$f2,$f16
    # Line 1760
    sw	$at,0($a1)
    # Line 1761
    sw	$a0,0($a1)
    # Line 1762
    swc1	$f0,0($a1)
    # Line 1763
    swc1	$f3,0($a1)
    # Line 1764
    swc1	$f5,0($a1)
    # Line 1765
    sw	$a3,0($a1)
    # Line 1766
    swc1	$f2,0($a1)
    # Line 1767
    swc1	$f1,0($a1)
    # Line 1769
    jr	$ra
    # Line 1768
    swc1	$f4,0($a1)
.L0daae104:
    b	.L0daae098
    # Line 1751
    swc1	$f5,1848($a2)
.L0daae10c:
    b	.L0daae0cc
    # Line 1758
    swc1	$f4,1864($a2)
.L0daae114:
    # Line 1743
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_MapGrid2d

# Function: __glMgrim_MapGrid2f
# Declared: Line 1771 (Source lines: 1773-1801)
# Address: 0x0daae134 - 0x0daae21c (Size: 232 bytes, Frame: 192)
.globl __glMgrim_MapGrid2f
.ent __glMgrim_MapGrid2f
__glMgrim_MapGrid2f:
    # Line 1775
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 1773
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # Line 1775
    lw	$at,__glBeginMode
    # Line 1773
    lui	$v1,0x15
    addiu	$v1,$v1,1380
    # Line 1775
    beq	$at,$v0,.L0daae1fc
    # Line 1773
    addu	$gp,$t9,$v1
    # Line 1792
    lui	$a1,0x7
    # Line 1779
    sw	$a0,1852($a2)
    # Line 1778
    swc1	$f14,1844($a2)
    # Line 1779
    blez	$a0,.L0daae1e4
    # Line 1777
    swc1	$f13,1840($a2)
    # Line 1781
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    sub.s	$f4,$f14,$f13
    div.s	$f4,$f4,$f0
    swc1	$f4,1848($a2)
.L0daae184:
    # Line 1786
    sw	$a3,1868($a2)
    # Line 1785
    swc1	$f17,1860($a2)
    # Line 1786
    blez	$a3,.L0daae1f0
    # Line 1784
    swc1	$f16,1856($a2)
    # Line 1788
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    sub.s	$f5,$f17,$f16
    div.s	$f5,$f5,$f0
    swc1	$f5,1864($a2)
.L0daae1ac:
    # Line 1792
    ori	$a1,$a1,0x4080
    ld	$gp,0($sp)
    # Line 1801
    addiu	$sp,$sp,64
    # Line 1792
    li	$at,0xaf20
    sw	$at,0($a1)
    # Line 1793
    sw	$a0,0($a1)
    # Line 1794
    swc1	$f13,0($a1)
    # Line 1795
    swc1	$f14,0($a1)
    # Line 1796
    swc1	$f4,0($a1)
    # Line 1797
    sw	$a3,0($a1)
    # Line 1798
    swc1	$f16,0($a1)
    # Line 1799
    swc1	$f17,0($a1)
    # Line 1801
    jr	$ra
    # Line 1800
    swc1	$f5,0($a1)
.L0daae1e4:
    # Line 1783
    mtc1	$zero,$f4
    b	.L0daae184
    swc1	$f4,1848($a2)
.L0daae1f0:
    # Line 1790
    mtc1	$zero,$f5
    b	.L0daae1ac
    swc1	$f5,1864($a2)
.L0daae1fc:
    # Line 1775
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_MapGrid2f

# Function: __glMgrim_EvalMesh1
# Declared: Line 1803 (Source lines: 1804-1818)
# Address: 0x0daae21c - 0x0daae2d0 (Size: 180 bytes, Frame: 48)
.globl __glMgrim_EvalMesh1
.ent __glMgrim_EvalMesh1
__glMgrim_EvalMesh1:
    # Line 1805
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 1804
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1805
    lw	$at,__glBeginMode
    # Line 1804
    lui	$v1,0x15
    addiu	$v1,$v1,1148
    # Line 1805
    beq	$at,$v0,.L0daae2b0
    # Line 1804
    addu	$gp,$t9,$v1
    # Line 1805
    lui	$a5,0x1
    addu	$a5,$a4,$a5
    lw	$a3,-31244($a5)
    # Line 1807
    li	$v0,6913
    # Line 1805
    beqz	$a3,.L0daae284
    # Line 1807
    li	$at,6912
    beql	$a0,$at,.L0daae294
    # Line 1812
    lw	$t9,-30196($a5)
    # Line 1807
    beq	$a0,$v0,.L0daae290
    sd	$ra,8($sp)
    # Line 1815
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1816
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae284:
    ld	$gp,0($sp)
    # Line 1807
    jr	$ra
    addiu	$sp,$sp,48
.L0daae290:
    # Line 1812
    lw	$t9,-30196($a5)
.L0daae294:
    sd	$ra,8($sp)
    jalr	$t9
    nop
    # Line 1818
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daae2b0:
    # Line 1805
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_EvalMesh1

# Function: __glMgrim_EvalPoint1
# Declared: Line 1820 (Source lines: 1821-1834)
# Address: 0x0daae2d0 - 0x0daae358 (Size: 136 bytes, Frame: 32)
.globl __glMgrim_EvalPoint1
.ent __glMgrim_EvalPoint1
__glMgrim_EvalPoint1:
    # Line 1821
    addiu	$sp,$sp,-32
    # Line 1824
    lw	$a2,__glCurrentContext
    sd	$gp,0($sp)
    lui	$a3,0x1
    addu	$a3,$a2,$a3
    lw	$at,-31244($a3)
    # Line 1821
    lui	$v0,0x15
    addiu	$v0,$v0,968
    # Line 1824
    beqz	$at,.L0daae34c
    # Line 1821
    addu	$gp,$t9,$v0
    # Line 1826
    lw	$at,1836($a2)
    bne	$at,$a0,.L0daae310
    nop
    sd	$ra,8($sp)
    # Line 1830
    b	.L0daae330
    lwc1	$f12,1828($a2)
.L0daae310:
    # Line 1831
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1832($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f12,1824($a2)
    sd	$ra,8($sp)
    add.s	$f12,$f12,$f0
.L0daae330:
    # Line 1833
    lw	$t9,-30204($a3)
    jalr	$t9
    nop
    # Line 1834
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daae34c:
    ld	$gp,0($sp)
    # Line 1826
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalPoint1

# Function: __glMgrim_EvalMesh2
# Declared: Line 1836 (Source lines: 1838-1853)
# Address: 0x0daae358 - 0x0daae414 (Size: 188 bytes, Frame: 192)
.globl __glMgrim_EvalMesh2
.ent __glMgrim_EvalMesh2
__glMgrim_EvalMesh2:
    # Line 1839
    lw	$a6,__glCurrentContext
    li	$v0,1
    # Line 1838
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # Line 1839
    lw	$at,__glBeginMode
    # Line 1838
    lui	$v1,0x15
    addiu	$v1,$v1,832
    # Line 1839
    beq	$at,$v0,.L0daae3f4
    # Line 1838
    addu	$gp,$t9,$v1
    # Line 1839
    lui	$a7,0x1
    addu	$a7,$a6,$a7
    lw	$a5,-30724($a7)
    # Line 1841
    li	$v0,6913
    # Line 1839
    beqz	$a5,.L0daae3c8
    # Line 1841
    li	$at,6912
    beql	$a0,$at,.L0daae3d8
    # Line 1847
    lw	$t9,-30192($a7)
    # Line 1841
    beq	$a0,$v0,.L0daae3d4
    li	$v1,6914
    beq	$a0,$v1,.L0daae3d4
    sd	$ra,8($sp)
    # Line 1850
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1851
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daae3c8:
    ld	$gp,0($sp)
    # Line 1841
    jr	$ra
    addiu	$sp,$sp,64
.L0daae3d4:
    # Line 1847
    lw	$t9,-30192($a7)
.L0daae3d8:
    sd	$ra,8($sp)
    jalr	$t9
    nop
    # Line 1853
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daae3f4:
    # Line 1839
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_EvalMesh2

# Function: __glMgrim_EvalPoint2
# Declared: Line 1855 (Source lines: 1856-1871)
# Address: 0x0daae414 - 0x0daae4cc (Size: 184 bytes, Frame: 32)
.globl __glMgrim_EvalPoint2
.ent __glMgrim_EvalPoint2
__glMgrim_EvalPoint2:
    # Line 1856
    addiu	$sp,$sp,-32
    # Line 1860
    lw	$a3,__glCurrentContext
    sd	$gp,0($sp)
    lui	$a4,0x1
    addu	$a4,$a3,$a4
    lw	$at,-30724($a4)
    # Line 1856
    lui	$v0,0x15
    addiu	$v0,$v0,644
    # Line 1860
    beqz	$at,.L0daae4c0
    # Line 1856
    addu	$gp,$t9,$v0
    # Line 1862
    lw	$at,1852($a3)
    bne	$at,$a0,.L0daae450
    nop
    # Line 1867
    b	.L0daae46c
    lwc1	$f12,1844($a3)
.L0daae450:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1848($a3)
    mul.s	$f0,$f0,$f1
    lwc1	$f12,1840($a3)
    add.s	$f12,$f12,$f0
.L0daae46c:
    lw	$v0,1868($a3)
    bne	$v0,$a1,.L0daae484
    nop
    sd	$ra,8($sp)
    # Line 1868
    b	.L0daae4a4
    lwc1	$f13,1860($a3)
.L0daae484:
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,1864($a3)
    mul.s	$f0,$f0,$f1
    lwc1	$f13,1856($a3)
    sd	$ra,8($sp)
    add.s	$f13,$f13,$f0
.L0daae4a4:
    # Line 1870
    lw	$t9,-30200($a4)
    jalr	$t9
    nop
    # Line 1871
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daae4c0:
    ld	$gp,0($sp)
    # Line 1862
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_EvalPoint2

# Function: __glMgrUpdateEvalAttributes
# Declared: Line 1881 (Source lines: 1882-2015)
# Address: 0x0daae4cc - 0x0daae884 (Size: 952 bytes, Frame: 32)
.globl __glMgrUpdateEvalAttributes
.ent __glMgrUpdateEvalAttributes
__glMgrUpdateEvalAttributes:
    # Line 1882
    addiu	$sp,$sp,-32
    lui	$a4,0x1
    addu	$a2,$a4,$a0
    sd	$gp,0($sp)
    lui	$v1,0x80
    lw	$at,1696($a0)
    lui	$v0,0x15
    addiu	$v0,$v0,460
    and	$at,$at,$v1
    beqz	$at,.L0daae860
    addu	$gp,$t9,$v0
    # Line 1888
    li	$v1,1
    sb	$v1,-30188($a2)
.L0daae500:
    # Line 1890
    addu	$a3,$a4,$a0
    # Line 1894
    sb	$zero,-30244($a3)
    # Line 1893
    sb	$zero,-30764($a3)
    # Line 1894
    sb	$zero,-30296($a3)
    # Line 1893
    sb	$zero,-30816($a3)
    # Line 1894
    sb	$zero,-30348($a3)
    # Line 1893
    sb	$zero,-30868($a3)
    # Line 1894
    sb	$zero,-30400($a3)
    # Line 1893
    sb	$zero,-30920($a3)
    # Line 1894
    sb	$zero,-30452($a3)
    # Line 1893
    sb	$zero,-30972($a3)
    # Line 1894
    sb	$zero,-30504($a3)
    # Line 1893
    sb	$zero,-31024($a3)
    # Line 1894
    sb	$zero,-30556($a3)
    # Line 1893
    sb	$zero,-31076($a3)
    # Line 1894
    sb	$zero,-30608($a3)
    # Line 1893
    sb	$zero,-31128($a3)
    # Line 1894
    sb	$zero,-30660($a3)
    # Line 1893
    sb	$zero,-31180($a3)
    # Line 1897
    move	$a3,$zero
    lw	$a4,1712($a0)
    andi	$a1,$a4,0x80
    beqz	$a1,.L0daae578
    # Line 1900
    andi	$at,$a4,0x100
    # Line 1899
    li	$a3,0x8790
    # Line 1900
    li	$a4,1
    sb	$a4,-30816($a2)
    # Line 1899
    addu	$a3,$a0,$a3
    # Line 1900
    lw	$a4,1712($a0)
    andi	$at,$a4,0x100
.L0daae578:
    beqz	$at,.L0daae58c
    # Line 1904
    li	$at,1
    sb	$at,-30764($a2)
    # Line 1903
    li	$a3,0x87c4
    addu	$a3,$a0,$a3
.L0daae58c:
    # Line 1906
    sw	$a3,-31244($a2)
    # Line 1908
    lw	$a4,1712($a0)
    andi	$v0,$a4,0x8
    beqz	$v0,.L0daae5b4
    move	$a3,$zero
    # Line 1910
    li	$a3,0x86c0
    # Line 1911
    li	$a4,1
    sb	$a4,-31024($a2)
    # Line 1910
    addu	$a3,$a0,$a3
    # Line 1911
    lw	$a4,1712($a0)
.L0daae5b4:
    andi	$at,$a4,0x10
    beqz	$at,.L0daae5d8
    # Line 1915
    andi	$at,$a4,0x20
    # Line 1914
    li	$a3,0x86f4
    # Line 1915
    li	$a4,1
    sb	$a4,-30972($a2)
    # Line 1914
    addu	$a3,$a0,$a3
    # Line 1915
    lw	$a4,1712($a0)
    andi	$at,$a4,0x20
.L0daae5d8:
    beqz	$at,.L0daae5f8
    # Line 1919
    andi	$at,$a4,0x40
    # Line 1918
    li	$a3,0x86c0
    # Line 1919
    li	$a4,1
    sb	$a4,-31024($a2)
    # Line 1918
    addu	$a3,$a0,$a3
    # Line 1919
    lw	$a4,1712($a0)
    andi	$at,$a4,0x40
.L0daae5f8:
    beqz	$at,.L0daae60c
    # Line 1923
    li	$at,1
    sb	$at,-30972($a2)
    # Line 1922
    li	$a3,0x86f4
    addu	$a3,$a0,$a3
.L0daae60c:
    # Line 1927
    sw	$zero,-31232($a2)
    # Line 1925
    sw	$a3,-31208($a2)
    # Line 1927
    lw	$a4,1712($a0)
    andi	$v0,$a4,0x2
    beqz	$v0,.L0daae640
    # Line 1930
    li	$a1,1
    sb	$a1,-31128($a2)
    lbu	$v1,3105($a0)
    beqz	$v1,.L0daae63c
    # Line 1931
    li	$at,0x8658
    addu	$at,$a0,$at
    sw	$at,-31232($a2)
.L0daae63c:
    lw	$a4,1712($a0)
.L0daae640:
    andi	$v0,$a4,0x1
    beqz	$v0,.L0daae658
    # Line 1936
    li	$a1,1
    sb	$a1,-31180($a2)
    lbu	$v1,3105($a0)
    beqz	$v1,.L0daae868
.L0daae658:
    # Line 1947
    move	$a3,$zero
    # Line 1940
    sw	$zero,-31220($a2)
    lw	$at,1712($a0)
    andi	$at,$at,0x4
    beqz	$at,.L0daae680
    # Line 1943
    li	$v1,1
    sb	$v1,-31076($a2)
    # Line 1944
    li	$v0,0x868c
    addu	$v0,$a0,$v0
    sw	$v0,-31220($a2)
.L0daae680:
    # Line 1947
    lw	$a4,1716($a0)
    andi	$a1,$a4,0x80
    beqz	$a1,.L0daae6a8
    # Line 1950
    andi	$at,$a4,0x100
    # Line 1949
    li	$a3,0x8998
    # Line 1950
    li	$a4,1
    sb	$a4,-30296($a2)
    # Line 1949
    addu	$a3,$a0,$a3
    # Line 1950
    lw	$a4,1716($a0)
    andi	$at,$a4,0x100
.L0daae6a8:
    beqz	$at,.L0daae6bc
    # Line 1954
    li	$at,1
    sb	$at,-30244($a2)
    # Line 1953
    li	$a3,0x89cc
    addu	$a3,$a0,$a3
.L0daae6bc:
    # Line 1956
    sw	$a3,-30724($a2)
    # Line 1958
    lw	$a4,1716($a0)
    andi	$v0,$a4,0x8
    beqz	$v0,.L0daae6e4
    move	$a3,$zero
    # Line 1960
    li	$a3,0x88c8
    # Line 1961
    li	$a4,1
    sb	$a4,-30504($a2)
    # Line 1960
    addu	$a3,$a0,$a3
    # Line 1961
    lw	$a4,1716($a0)
.L0daae6e4:
    andi	$at,$a4,0x10
    beqz	$at,.L0daae708
    # Line 1965
    andi	$at,$a4,0x20
    # Line 1964
    li	$a3,0x88fc
    # Line 1965
    li	$a4,1
    sb	$a4,-30452($a2)
    # Line 1964
    addu	$a3,$a0,$a3
    # Line 1965
    lw	$a4,1716($a0)
    andi	$at,$a4,0x20
.L0daae708:
    beqz	$at,.L0daae728
    # Line 1969
    andi	$at,$a4,0x40
    # Line 1968
    li	$a3,0x88c8
    # Line 1969
    li	$a4,1
    sb	$a4,-30504($a2)
    # Line 1968
    addu	$a3,$a0,$a3
    # Line 1969
    lw	$a4,1716($a0)
    andi	$at,$a4,0x40
.L0daae728:
    beqz	$at,.L0daae73c
    # Line 1973
    li	$at,1
    sb	$at,-30452($a2)
    # Line 1972
    li	$a3,0x88fc
    addu	$a3,$a0,$a3
.L0daae73c:
    # Line 1977
    sw	$zero,-30712($a2)
    # Line 1975
    sw	$a3,-30688($a2)
    # Line 1977
    lw	$a4,1716($a0)
    andi	$v0,$a4,0x2
    beqz	$v0,.L0daae770
    # Line 1980
    li	$a1,1
    sb	$a1,-30608($a2)
    lbu	$v1,3105($a0)
    beqz	$v1,.L0daae76c
    # Line 1981
    li	$at,0x8860
    addu	$at,$a0,$at
    sw	$at,-30712($a2)
.L0daae76c:
    lw	$a4,1716($a0)
.L0daae770:
    andi	$v0,$a4,0x1
    beqz	$v0,.L0daae78c
    # Line 1986
    li	$a1,1
    sb	$a1,-30660($a2)
    lbu	$v1,3105($a0)
    beqz	$v1,.L0daae878
    # Line 1987
    li	$v0,0x882c
.L0daae78c:
    # Line 1990
    sw	$zero,-30700($a2)
    lw	$at,1716($a0)
    andi	$at,$at,0x4
    beqz	$at,.L0daae7ac
    # Line 1993
    li	$v0,1
    lbu	$v1,-30188($a2)
    beqz	$v1,.L0daae84c
    sb	$v0,-30556($a2)
.L0daae7ac:
    sd	$ra,8($sp)
    # Line 2013
    # lw $t9, -31068($gp) # &__glMgrCleanUp1D
    # Line 2003
    li	$a3,0xaf20
    # Line 1997
    li	$a5,0xae10
    # Line 2011
    lwc1	$f0,1864($a0)
    # Line 2010
    lwc1	$f1,1860($a0)
    # Line 2009
    lwc1	$f2,1856($a0)
    # Line 2008
    lw	$a1,1868($a0)
    # Line 2007
    lwc1	$f3,1848($a0)
    # Line 2006
    lwc1	$f4,1844($a0)
    # Line 2005
    lwc1	$f5,1840($a0)
    # Line 2004
    lw	$a2,1852($a0)
    # Line 2001
    lwc1	$f6,1832($a0)
    # Line 2000
    lwc1	$f7,1828($a0)
    # Line 1999
    lwc1	$f8,1824($a0)
    # Line 1998
    lw	$a4,1836($a0)
    # Line 1997
    lui	$a0,0x7
    ori	$a0,$a0,0x4080
    sw	$a5,0($a0)
    # Line 1998
    sw	$a4,0($a0)
    # Line 1999
    swc1	$f8,0($a0)
    # Line 2000
    swc1	$f7,0($a0)
    # Line 2001
    swc1	$f6,0($a0)
    # Line 2003
    sw	$a3,0($a0)
    # Line 2004
    sw	$a2,0($a0)
    # Line 2005
    swc1	$f5,0($a0)
    # Line 2006
    swc1	$f4,0($a0)
    # Line 2007
    swc1	$f3,0($a0)
    # Line 2008
    sw	$a1,0($a0)
    # Line 2009
    swc1	$f2,0($a0)
    # Line 2010
    swc1	$f1,0($a0)
    # Line 2013
    bal __glMgrCleanUp1D
    # Line 2011
    swc1	$f0,0($a0)
    # Line 2014
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    bal __glMgrCleanUp2D
    nop
    # Line 2015
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daae84c:
    sd	$ra,8($sp)
    # Line 1994
    li	$a1,0x8894
    addu	$a1,$a0,$a1
    b	.L0daae7ac
    sw	$a1,-30700($a2)
.L0daae860:
    b	.L0daae500
    # Line 1890
    sb	$zero,-30188($a2)
.L0daae868:
    # Line 1937
    li	$at,0x8624
    addu	$at,$a0,$at
    b	.L0daae658
    sw	$at,-31232($a2)
.L0daae878:
    # Line 1987
    addu	$v0,$a0,$v0
    b	.L0daae78c
    sw	$v0,-30712($a2)
.end __glMgrUpdateEvalAttributes

.late_rodata
jtbl_0dbee160:
    .word .L0daa7818
    .word .L0daa78f0
    .word .L0daa7904
    .word .L0daa7928
    .word .L0daa7974
    .word .L0daa79f8
    .word .L0daa7abc
    .word .L0daa7bc8
    .word .L0daa7d30
    .word .L0daa7ef0
    .word .L0daa8114
    .word .L0daa83b0
    .word .L0daa86d8
    .word .L0daa8a9c
    .word .L0daa8f08
    .word .L0daa9460

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_4010000000000000:
    .word 0x40100000, 0x00000000
_lit8_4014000000000000:
    .word 0x40140000, 0x00000000
_lit8_4018000000000000:
    .word 0x40180000, 0x00000000
_lit8_401c000000000000:
    .word 0x401c0000, 0x00000000
_lit8_4020000000000000:
    .word 0x40200000, 0x00000000
_lit8_4022000000000000:
    .word 0x40220000, 0x00000000
_lit8_4024000000000000:
    .word 0x40240000, 0x00000000
_lit8_4026000000000000:
    .word 0x40260000, 0x00000000
_lit8_4028000000000000:
    .word 0x40280000, 0x00000000
_lit8_402a000000000000:
    .word 0x402a0000, 0x00000000
_lit8_402c000000000000:
    .word 0x402c0000, 0x00000000
_lit8_402e000000000000:
    .word 0x402e0000, 0x00000000
_lit8_4032000000000000:
    .word 0x40320000, 0x00000000
_lit8_4034000000000000:
    .word 0x40340000, 0x00000000
_lit8_4035000000000000:
    .word 0x40350000, 0x00000000
_lit8_4038000000000000:
    .word 0x40380000, 0x00000000
_lit8_403b000000000000:
    .word 0x403b0000, 0x00000000
_lit8_403c000000000000:
    .word 0x403c0000, 0x00000000
_lit8_4040000000000000:
    .word 0x40400000, 0x00000000
_lit8_4041800000000000:
    .word 0x40418000, 0x00000000
_lit8_4042000000000000:
    .word 0x40420000, 0x00000000
_lit8_4044000000000000:
    .word 0x40440000, 0x00000000
_lit8_4045000000000000:
    .word 0x40450000, 0x00000000
_lit8_4046000000000000:
    .word 0x40460000, 0x00000000
_lit8_4046800000000000:
    .word 0x40468000, 0x00000000
_lit8_4048000000000000:
    .word 0x40480000, 0x00000000
_lit8_4049000000000000:
    .word 0x40490000, 0x00000000
_lit8_404b000000000000:
    .word 0x404b0000, 0x00000000
_lit8_404b800000000000:
    .word 0x404b8000, 0x00000000
_lit8_404c000000000000:
    .word 0x404c0000, 0x00000000
_lit8_404e000000000000:
    .word 0x404e0000, 0x00000000
_lit8_4050400000000000:
    .word 0x40504000, 0x00000000
_lit8_4050800000000000:
    .word 0x40508000, 0x00000000
_lit8_4051800000000000:
    .word 0x40518000, 0x00000000
_lit8_4052000000000000:
    .word 0x40520000, 0x00000000
_lit8_4053400000000000:
    .word 0x40534000, 0x00000000
_lit8_4053800000000000:
    .word 0x40538000, 0x00000000
_lit8_4055000000000000:
    .word 0x40550000, 0x00000000
_lit8_4056000000000000:
    .word 0x40560000, 0x00000000
_lit8_4056800000000000:
    .word 0x40568000, 0x00000000
_lit8_4056c00000000000:
    .word 0x4056c000, 0x00000000
_lit8_4058000000000000:
    .word 0x40580000, 0x00000000
_lit8_4059000000000000:
    .word 0x40590000, 0x00000000
_lit8_405a000000000000:
    .word 0x405a0000, 0x00000000
_lit8_405b000000000000:
    .word 0x405b0000, 0x00000000
_lit8_405b800000000000:
    .word 0x405b8000, 0x00000000
_lit8_405d400000000000:
    .word 0x405d4000, 0x00000000
_lit8_405e000000000000:
    .word 0x405e0000, 0x00000000
_lit8_405f800000000000:
    .word 0x405f8000, 0x00000000
_lit8_4060400000000000:
    .word 0x40604000, 0x00000000
_lit8_4060e00000000000:
    .word 0x4060e000, 0x00000000
_lit8_4061800000000000:
    .word 0x40618000, 0x00000000
_lit8_4062000000000000:
    .word 0x40620000, 0x00000000
_lit8_4062c00000000000:
    .word 0x4062c000, 0x00000000
_lit8_4063400000000000:
    .word 0x40634000, 0x00000000
_lit8_4064a00000000000:
    .word 0x4064a000, 0x00000000
_lit8_4065000000000000:
    .word 0x40650000, 0x00000000
_lit8_4066800000000000:
    .word 0x40668000, 0x00000000
_lit8_4068600000000000:
    .word 0x40686000, 0x00000000
_lit8_406a400000000000:
    .word 0x406a4000, 0x00000000
_lit8_406b800000000000:
    .word 0x406b8000, 0x00000000
_lit8_406c200000000000:
    .word 0x406c2000, 0x00000000
_lit8_406ce00000000000:
    .word 0x406ce000, 0x00000000
_lit8_406e000000000000:
    .word 0x406e0000, 0x00000000
_lit8_406f800000000000:
    .word 0x406f8000, 0x00000000
_lit8_4070400000000000:
    .word 0x40704000, 0x00000000
_lit8_4070800000000000:
    .word 0x40708000, 0x00000000
_lit8_4070e00000000000:
    .word 0x4070e000, 0x00000000
_lit8_4071100000000000:
    .word 0x40711000, 0x00000000
_lit8_4071300000000000:
    .word 0x40713000, 0x00000000
_lit8_4071e00000000000:
    .word 0x4071e000, 0x00000000
_lit8_4072600000000000:
    .word 0x40726000, 0x00000000
_lit8_4073800000000000:
    .word 0x40738000, 0x00000000
_lit8_4074a00000000000:
    .word 0x4074a000, 0x00000000
_lit8_4075000000000000:
    .word 0x40750000, 0x00000000
_lit8_4076800000000000:
    .word 0x40768000, 0x00000000
_lit8_4076c00000000000:
    .word 0x4076c000, 0x00000000
_lit8_4078600000000000:
    .word 0x40786000, 0x00000000
_lit8_4078800000000000:
    .word 0x40788000, 0x00000000
_lit8_4078c00000000000:
    .word 0x4078c000, 0x00000000
_lit8_407a400000000000:
    .word 0x407a4000, 0x00000000
_lit8_407c700000000000:
    .word 0x407c7000, 0x00000000
_lit8_407ce00000000000:
    .word 0x407ce000, 0x00000000
_lit8_407d400000000000:
    .word 0x407d4000, 0x00000000
_lit8_407ea00000000000:
    .word 0x407ea000, 0x00000000
_lit8_407ef00000000000:
    .word 0x407ef000, 0x00000000
_lit8_407f800000000000:
    .word 0x407f8000, 0x00000000
_lit8_4081100000000000:
    .word 0x40811000, 0x00000000
_lit8_4081300000000000:
    .word 0x40813000, 0x00000000
_lit8_4083800000000000:
    .word 0x40838000, 0x00000000
_lit8_4083b00000000000:
    .word 0x4083b000, 0x00000000
_lit8_4083e80000000000:
    .word 0x4083e800, 0x00000000
_lit8_4084a00000000000:
    .word 0x4084a000, 0x00000000
_lit8_4086580000000000:
    .word 0x40865800, 0x00000000
_lit8_4086c00000000000:
    .word 0x4086c000, 0x00000000
_lit8_4088600000000000:
    .word 0x40886000, 0x00000000
_lit8_4088800000000000:
    .word 0x40888000, 0x00000000
_lit8_4088c00000000000:
    .word 0x4088c000, 0x00000000
_lit8_4089980000000000:
    .word 0x40899800, 0x00000000
_lit8_408ad00000000000:
    .word 0x408ad000, 0x00000000
_lit8_408b800000000000:
    .word 0x408b8000, 0x00000000
_lit8_408c700000000000:
    .word 0x408c7000, 0x00000000
_lit8_408ce00000000000:
    .word 0x408ce000, 0x00000000
_lit8_408ea00000000000:
    .word 0x408ea000, 0x00000000
_lit8_408ef00000000000:
    .word 0x408ef000, 0x00000000
_lit8_408f480000000000:
    .word 0x408f4800, 0x00000000
_lit8_4091300000000000:
    .word 0x40913000, 0x00000000
_lit8_4091e00000000000:
    .word 0x4091e000, 0x00000000
_lit8_4092480000000000:
    .word 0x40924800, 0x00000000
_lit8_4092600000000000:
    .word 0x40926000, 0x00000000
_lit8_40941c0000000000:
    .word 0x40941c00, 0x00000000
_lit8_4094a00000000000:
    .word 0x4094a000, 0x00000000
_lit8_4095540000000000:
    .word 0x40955400, 0x00000000
_lit8_4096580000000000:
    .word 0x40965800, 0x00000000
_lit8_4096c00000000000:
    .word 0x4096c000, 0x00000000
_lit8_4097340000000000:
    .word 0x40973400, 0x00000000
_lit8_4098600000000000:
    .word 0x40986000, 0x00000000
_lit8_4099980000000000:
    .word 0x40999800, 0x00000000
_lit8_409ad00000000000:
    .word 0x409ad000, 0x00000000
_lit8_409c700000000000:
    .word 0x409c7000, 0x00000000
_lit8_409ddc0000000000:
    .word 0x409ddc00, 0x00000000
_lit8_409f480000000000:
    .word 0x409f4800, 0x00000000
_lit8_40a0c20000000000:
    .word 0x40a0c200, 0x00000000
_lit8_40a1100000000000:
    .word 0x40a11000, 0x00000000
_lit8_40a3e80000000000:
    .word 0x40a3e800, 0x00000000
_lit8_40a41c0000000000:
    .word 0x40a41c00, 0x00000000
_lit8_40a6580000000000:
    .word 0x40a65800, 0x00000000
_lit8_40a7760000000000:
    .word 0x40a77600, 0x00000000
_lit8_40a8e20000000000:
    .word 0x40a8e200, 0x00000000
_lit8_40aad00000000000:
    .word 0x40aad000, 0x00000000
_lit8_40ac700000000000:
    .word 0x40ac7000, 0x00000000
_lit8_40af480000000000:
    .word 0x40af4800, 0x00000000
_lit8_40b38d0000000000:
    .word 0x40b38d00, 0x00000000
_lit8_40b5540000000000:
    .word 0x40b55400, 0x00000000
_lit8_40b7760000000000:
    .word 0x40b77600, 0x00000000
_lit8_c008000000000000:
    .word 0xc0080000, 0x00000000
_lit8_c010000000000000:
    .word 0xc0100000, 0x00000000
_lit8_c014000000000000:
    .word 0xc0140000, 0x00000000
_lit8_c018000000000000:
    .word 0xc0180000, 0x00000000
_lit8_c01c000000000000:
    .word 0xc01c0000, 0x00000000
_lit8_c020000000000000:
    .word 0xc0200000, 0x00000000
_lit8_c022000000000000:
    .word 0xc0220000, 0x00000000
_lit8_c024000000000000:
    .word 0xc0240000, 0x00000000
_lit8_c026000000000000:
    .word 0xc0260000, 0x00000000
_lit8_c028000000000000:
    .word 0xc0280000, 0x00000000
_lit8_c02a000000000000:
    .word 0xc02a0000, 0x00000000
_lit8_c02e000000000000:
    .word 0xc02e0000, 0x00000000
_lit8_c034000000000000:
    .word 0xc0340000, 0x00000000
_lit8_c035000000000000:
    .word 0xc0350000, 0x00000000
_lit8_c03c000000000000:
    .word 0xc03c0000, 0x00000000
_lit8_c041800000000000:
    .word 0xc0418000, 0x00000000
_lit8_c042000000000000:
    .word 0xc0420000, 0x00000000
_lit8_c046800000000000:
    .word 0xc0468000, 0x00000000
_lit8_c04b800000000000:
    .word 0xc04b8000, 0x00000000
_lit8_c04c000000000000:
    .word 0xc04c0000, 0x00000000
_lit8_c051800000000000:
    .word 0xc0518000, 0x00000000
_lit8_c055000000000000:
    .word 0xc0550000, 0x00000000
_lit8_c05e000000000000:
    .word 0xc05e0000, 0x00000000
_lit8_c05f800000000000:
    .word 0xc05f8000, 0x00000000
_lit8_c064a00000000000:
    .word 0xc064a000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_41200000:
    .word 0x41200000
_lit_41a00000:
    .word 0x41a00000
_lit_420c0000:
    .word 0x420c0000
_lit_42600000:
    .word 0x42600000

