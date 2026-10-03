# Source: ../soft/so_fog.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_fog.c
# Total Functions: 8

.text

# Function: __glFogSpan
# Declared: Line 24 (Source lines: 25-55)
# Address: 0x0db427f4 - 0x0db428d0 (Size: 220 bytes, Frame: 0)
.globl __glFogSpan
.ent __glFogSpan
__glFogSpan:
    # Line 33
    lw	$a3,30516($a0)
    # Line 32
    lwc1	$f4,30296($a0)
    # Line 35
    lw	$a4,30300($a0)
    # Line 25
    lui	$v0,0xc
    addiu	$v0,$v0,-16732
    # Line 35
    addiu	$a4,$a4,-1
    bltz	$a4,.L0db428c8
    # Line 25
    addu	$at,$t9,$v0
    # Line 35
    li	$a5,-1
    b	.L0db42868
    mtc1	$zero,$f9
.L0db42820:
    # Line 38
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0db42838
    # Line 40
    lbu	$v1,3105($a0)
    # Line 39
    mov.s	$f5,$f6
.L0db42834:
    # Line 40
    lbu	$v1,3105($a0)
.L0db42838:
    # Line 35
    addiu	$a4,$a4,-1
    # Line 40
    lwc1	$f7,0($a3)
    beqz	$v1,.L0db42880
    sub.s	$f8,$f6,$f5
    # Line 44
    lwc1	$f0,1528($a0)
    mul.s	$f0,$f0,$f8
    add.s	$f0,$f0,$f7
    swc1	$f0,0($a3)
.L0db42858:
    # Line 51
    lwc1	$f1,30484($a0)
    # Line 52
    addiu	$a3,$a3,16
    # Line 35
    beq	$a4,$a5,.L0db428c8
    # Line 51
    add.s	$f4,$f1,$f4
.L0db42868:
    # Line 37
    c.lt.s	$f4,$f9
    mov.s	$f5,$f4
    bc1f	.L0db42820
    lwc1	$f6,3284($a0)
    # Line 38
    b	.L0db42834
    mov.s	$f5,$f9
.L0db42880:
    # Line 46
    mul.s	$f1,$f7,$f5
    lwc1	$f0,1496($a0)
    mul.s	$f0,$f0,$f8
    add.s	$f0,$f0,$f1
    # Line 47
    lwc1	$f3,4($a3)
    # Line 46
    swc1	$f0,0($a3)
    # Line 47
    mul.s	$f3,$f3,$f5
    lwc1	$f0,1500($a0)
    mul.s	$f0,$f0,$f8
    add.s	$f3,$f3,$f0
    # Line 48
    lwc1	$f2,8($a3)
    # Line 47
    swc1	$f3,4($a3)
    # Line 48
    mul.s	$f2,$f2,$f5
    lwc1	$f3,1504($a0)
    mul.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f3
    b	.L0db42858
    swc1	$f2,8($a3)
.L0db428c8:
    # Line 55
    jr	$ra
    move	$v0,$zero
.end __glFogSpan

# Function: __glFogStippledSpan
# Declared: Line 58 (Source lines: 59-108)
# Address: 0x0db428d0 - 0x0db42b64 (Size: 660 bytes, Frame: 0)
.globl __glFogStippledSpan
.ent __glFogStippledSpan
__glFogStippledSpan:
    # Line 70
    lw	$a3,30516($a0)
    # Line 69
    lwc1	$f4,30296($a0)
    # Line 67
    lw	$t1,30524($a0)
    # Line 66
    lw	$t0,30300($a0)
    # Line 59
    lui	$v0,0xc
    addiu	$v0,$v0,-16952
    # Line 70
    beqz	$t0,.L0db42b14
    # Line 59
    addu	$at,$t9,$v0
    # Line 70
    li	$a7,-1
    mtc1	$zero,$f9
    b	.L0db42904
    lui	$t3,0x8000
.L0db42900:
    # Line 81
    beqz	$t0,.L0db42b14
.L0db42904:
    # Line 73
    slti	$v1,$t0,33
    bnez	$v1,.L0db42914
    move	$a5,$t0
    # Line 75
    li	$a5,32
.L0db42914:
    # Line 79
    lw	$a6,0($t1)
    # Line 80
    move	$a4,$t3
    # Line 77
    subu	$t0,$t0,$a5
    # Line 81
    addiu	$a5,$a5,-1
    bltz	$a5,.L0db42900
    # Line 79
    addiu	$t1,$t1,4
    # Line 81
    addiu	$t2,$a5,1
    andi	$a1,$t2,0x1
    beqz	$a1,.L0db42988
    and	$a2,$a6,$a4
    # Line 101
    srl	$a4,$a4,0x1
    # Line 81
    beqz	$a2,.L0db4297c
    addiu	$a5,$a5,-1
    # Line 84
    c.lt.s	$f4,$f9
    mov.s	$f5,$f4
    bc1f	.L0db42afc
    lwc1	$f6,3284($a0)
    # Line 85
    mov.s	$f5,$f9
.L0db4295c:
    # Line 87
    lbu	$v0,3105($a0)
.L0db42960:
    lwc1	$f7,0($a3)
    beqz	$v0,.L0db42b1c
    sub.s	$f8,$f6,$f5
    # Line 91
    lwc1	$f0,1528($a0)
    mul.s	$f0,$f0,$f8
    add.s	$f0,$f0,$f7
    swc1	$f0,0($a3)
.L0db4297c:
    # Line 98
    lwc1	$f1,30484($a0)
    # Line 99
    addiu	$a3,$a3,16
    # Line 98
    add.s	$f4,$f1,$f4
.L0db42988:
    sra	$v1,$t2,0x1
    beqz	$v1,.L0db42900
    nop
    b	.L0db429e4
    # Line 81
    and	$a2,$a6,$a4
.L0db4299c:
    # Line 85
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0db429b4
    # Line 87
    lbu	$a1,3105($a0)
    # Line 86
    mov.s	$f5,$f6
.L0db429b0:
    # Line 87
    lbu	$a1,3105($a0)
.L0db429b4:
    lwc1	$f7,0($a3)
    beqz	$a1,.L0db42ab4
    sub.s	$f8,$f6,$f5
    # Line 91
    lwc1	$f2,1528($a0)
    mul.s	$f2,$f2,$f8
    add.s	$f2,$f2,$f7
    swc1	$f2,0($a3)
.L0db429d0:
    # Line 98
    lwc1	$f3,30484($a0)
    # Line 99
    addiu	$a3,$a3,16
    # Line 81
    beq	$a5,$a7,.L0db42900
    # Line 98
    add.s	$f4,$f3,$f4
    # Line 81
    and	$a2,$a6,$a4
.L0db429e4:
    # Line 101
    srl	$a4,$a4,0x1
    # Line 81
    beqz	$a2,.L0db42a24
    addiu	$a5,$a5,-2
    # Line 84
    c.lt.s	$f4,$f9
    mov.s	$f5,$f4
    bc1f	.L0db42a54
    lwc1	$f6,3284($a0)
    # Line 85
    mov.s	$f5,$f9
.L0db42a04:
    # Line 87
    lbu	$v0,3105($a0)
.L0db42a08:
    lwc1	$f7,0($a3)
    beqz	$v0,.L0db42a6c
    sub.s	$f8,$f6,$f5
    # Line 91
    lwc1	$f0,1528($a0)
    mul.s	$f0,$f0,$f8
    add.s	$f0,$f0,$f7
    swc1	$f0,0($a3)
.L0db42a24:
    # Line 99
    addiu	$a3,$a3,16
    # Line 81
    and	$v1,$a6,$a4
    # Line 98
    lwc1	$f1,30484($a0)
    # Line 101
    srl	$a4,$a4,0x1
    # Line 81
    beqz	$v1,.L0db429d0
    # Line 98
    add.s	$f4,$f1,$f4
    # Line 84
    c.lt.s	$f4,$f9
    mov.s	$f5,$f4
    bc1f	.L0db4299c
    lwc1	$f6,3284($a0)
    # Line 85
    b	.L0db429b0
    mov.s	$f5,$f9
.L0db42a54:
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0db42a08
    # Line 87
    lbu	$v0,3105($a0)
    b	.L0db42a04
    # Line 86
    mov.s	$f5,$f6
.L0db42a6c:
    # Line 93
    mul.s	$f1,$f7,$f5
    lwc1	$f0,1496($a0)
    mul.s	$f0,$f0,$f8
    add.s	$f0,$f0,$f1
    # Line 94
    lwc1	$f3,4($a3)
    # Line 93
    swc1	$f0,0($a3)
    # Line 94
    mul.s	$f3,$f3,$f5
    lwc1	$f0,1500($a0)
    mul.s	$f0,$f0,$f8
    add.s	$f3,$f3,$f0
    # Line 95
    lwc1	$f2,8($a3)
    # Line 94
    swc1	$f3,4($a3)
    # Line 95
    mul.s	$f2,$f2,$f5
    lwc1	$f3,1504($a0)
    mul.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f3
    b	.L0db42a24
    swc1	$f2,8($a3)
.L0db42ab4:
    # Line 93
    mul.s	$f0,$f7,$f5
    lwc1	$f3,1496($a0)
    mul.s	$f3,$f3,$f8
    add.s	$f3,$f3,$f0
    # Line 94
    lwc1	$f2,4($a3)
    # Line 93
    swc1	$f3,0($a3)
    # Line 94
    mul.s	$f2,$f2,$f5
    lwc1	$f3,1500($a0)
    mul.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f3
    # Line 95
    lwc1	$f1,8($a3)
    # Line 94
    swc1	$f2,4($a3)
    # Line 95
    mul.s	$f1,$f1,$f5
    lwc1	$f2,1504($a0)
    mul.s	$f2,$f2,$f8
    add.s	$f1,$f1,$f2
    b	.L0db429d0
    swc1	$f1,8($a3)
.L0db42afc:
    # Line 85
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0db42960
    # Line 87
    lbu	$v0,3105($a0)
    b	.L0db4295c
    # Line 86
    mov.s	$f5,$f6
.L0db42b14:
    # Line 108
    jr	$ra
    move	$v0,$zero
.L0db42b1c:
    # Line 93
    mul.s	$f3,$f7,$f5
    lwc1	$f2,1496($a0)
    mul.s	$f2,$f2,$f8
    add.s	$f2,$f2,$f3
    # Line 94
    lwc1	$f1,4($a3)
    # Line 93
    swc1	$f2,0($a3)
    # Line 94
    mul.s	$f1,$f1,$f5
    lwc1	$f2,1500($a0)
    mul.s	$f2,$f2,$f8
    add.s	$f1,$f1,$f2
    # Line 95
    lwc1	$f0,8($a3)
    # Line 94
    swc1	$f1,4($a3)
    # Line 95
    mul.s	$f0,$f0,$f5
    lwc1	$f1,1504($a0)
    mul.s	$f1,$f1,$f8
    add.s	$f0,$f0,$f1
    b	.L0db4297c
    swc1	$f0,8($a3)
.end __glFogStippledSpan

# Function: __glFogSpanSlow
# Declared: Line 113 (Source lines: 114-162)
# Address: 0x0db42b64 - 0x0db42d54 (Size: 496 bytes, Frame: 144)
.globl __glFogSpanSlow
.ent __glFogSpanSlow
__glFogSpanSlow:
    # Line 114
    addiu	$sp,$sp,-144
    sd	$s0,40($sp)
    move	$s0,$a0
    sdc1	$f24,16($sp)
    # Line 127
    lwc1	$f24,1520($a0)
    sdc1	$f28,24($sp)
    # Line 125
    lwc1	$f28,1512($a0)
    sd	$s1,48($sp)
    # Line 123
    lw	$s1,30516($a0)
    sdc1	$f20,8($sp)
    # Line 122
    lwc1	$f20,30296($a0)
    sd	$gp,56($sp)
    sd	$s4,32($sp)
    # Line 128
    lw	$s4,30300($a0)
    # Line 114
    lui	$at,0xc
    addiu	$at,$at,-17612
    # Line 128
    addiu	$s4,$s4,-1
    bltz	$s4,.L0db42d2c
    # Line 114
    addu	$gp,$t9,$at
    # Line 128
    lwc1	$f0,0($sp)
    sd	$ra,64($sp)
    sd	$s6,72($sp)
    li	$s6,-1
    sdc1	$f26,104($sp)
    lwc1	$f26,_lit_402df854
    sd	$s8,96($sp)
    li	$s8,9729
    sd	$s7,88($sp)
    li	$s7,2049
    sd	$s5,80($sp)
    li	$s5,2048
    sdc1	$f22,112($sp)
    mtc1	$zero,$f22
    sdc1	$f30,120($sp)
    b	.L0db42c38
    mul.s	$f30,$f28,$f28
.L0db42bf4:
    # Line 145
    c.lt.s	$f5,$f0
    nop
    bc1fl	.L0db42c0c
    # Line 147
    lbu	$v0,3105($s0)
    # Line 146
    mov.s	$f0,$f5
.L0db42c08:
    # Line 147
    lbu	$v0,3105($s0)
.L0db42c0c:
    lwc1	$f7,0($s1)
    beqz	$v0,.L0db42c84
    sub.s	$f6,$f5,$f0
    # Line 151
    lwc1	$f1,1528($s0)
    mul.s	$f1,$f1,$f6
    add.s	$f1,$f1,$f7
    swc1	$f1,0($s1)
.L0db42c28:
    # Line 158
    lwc1	$f2,30484($s0)
    # Line 159
    addiu	$s1,$s1,16
    # Line 128
    beq	$s4,$s6,.L0db42d0c
    # Line 158
    add.s	$f20,$f2,$f20
.L0db42c38:
    # Line 130
    c.lt.s	$f20,$f22
    nop
    bc1f	.L0db42c4c
    mov.s	$f5,$f20
    # Line 131
    neg.s	$f5,$f20
.L0db42c4c:
    # Line 132
    lw	$a0,1492($s0)
    # Line 128
    addiu	$s4,$s4,-1
    # Line 132
    beql	$s5,$a0,.L0db42cd8
    # Line 134
    mul.s	$f13,$f28,$f5
    # Line 132
    beql	$s7,$a0,.L0db42cf0
    # Line 137
    mul.s	$f13,$f30,$f5
    # Line 132
    beql	$s8,$a0,.L0db42ccc
    # Line 140
    sub.s	$f1,$f24,$f5
.L0db42c6c:
    # Line 142
    c.lt.s	$f0,$f22
.L0db42c70:
    nop
    bc1f	.L0db42bf4
    lwc1	$f5,3284($s0)
    # Line 145
    b	.L0db42c08
    mov.s	$f0,$f22
.L0db42c84:
    # Line 153
    mul.s	$f2,$f7,$f0
    lwc1	$f1,1496($s0)
    mul.s	$f1,$f1,$f6
    add.s	$f1,$f1,$f2
    # Line 154
    lwc1	$f4,4($s1)
    # Line 153
    swc1	$f1,0($s1)
    # Line 154
    mul.s	$f4,$f4,$f0
    lwc1	$f1,1500($s0)
    mul.s	$f1,$f1,$f6
    add.s	$f4,$f4,$f1
    # Line 155
    lwc1	$f3,8($s1)
    # Line 154
    swc1	$f4,4($s1)
    # Line 155
    mul.s	$f3,$f3,$f0
    lwc1	$f4,1504($s0)
    mul.s	$f4,$f4,$f6
    add.s	$f3,$f3,$f4
    b	.L0db42c28
    swc1	$f3,8($s1)
.L0db42ccc:
    # Line 140
    lwc1	$f0,1524($s0)
    b	.L0db42c6c
    mul.s	$f0,$f0,$f1
.L0db42cd8:
    # Line 134
    # lw $t9, -17724($gp) # &powf
    mov.s	$f12,$f26
    jal	powf
    neg.s	$f13,$f13
    # Line 135
    b	.L0db42c70
    # Line 142
    c.lt.s	$f0,$f22
.L0db42cf0:
    # Line 137
    mul.s	$f13,$f13,$f5
    # lw $t9, -17724($gp) # &powf
    mov.s	$f12,$f26
    jal	powf
    neg.s	$f13,$f13
    # Line 138
    b	.L0db42c70
    # Line 142
    c.lt.s	$f0,$f22
.L0db42d0c:
    ldc1	$f30,120($sp)
    ldc1	$f22,112($sp)
    ldc1	$f26,104($sp)
    ld	$s8,96($sp)
    ld	$s7,88($sp)
    ld	$s5,80($sp)
    ld	$ra,64($sp)
    ld	$s6,72($sp)
.L0db42d2c:
    # Line 162
    move	$v0,$zero
    ld	$gp,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s4,32($sp)
    ldc1	$f20,8($sp)
    ldc1	$f24,16($sp)
    ldc1	$f28,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glFogSpanSlow

# Function: __glFogStippledSpanSlow
# Declared: Line 165 (Source lines: 166-233)
# Address: 0x0db42d54 - 0x0db42fb4 (Size: 608 bytes, Frame: 176)
.globl __glFogStippledSpanSlow
.ent __glFogStippledSpanSlow
__glFogStippledSpanSlow:
    # Line 166
    addiu	$sp,$sp,-176
    sd	$s5,112($sp)
    sd	$s6,136($sp)
    sd	$s7,104($sp)
    sd	$s8,96($sp)
    sdc1	$f22,80($sp)
    sdc1	$f26,88($sp)
    sdc1	$f30,72($sp)
    sd	$s0,40($sp)
    move	$s0,$a0
    sdc1	$f24,16($sp)
    # Line 182
    lwc1	$f24,1520($a0)
    sdc1	$f28,8($sp)
    # Line 180
    lwc1	$f28,1512($a0)
    sd	$s1,32($sp)
    # Line 178
    lw	$s1,30516($a0)
    sdc1	$f20,24($sp)
    # Line 177
    lwc1	$f20,30296($a0)
    sd	$gp,48($sp)
    # Line 166
    lui	$v0,0xc
    addiu	$v0,$v0,-18108
    # Line 175
    lw	$v1,30524($a0)
    # Line 174
    lw	$at,30300($a0)
    # Line 166
    addu	$gp,$t9,$v0
    sd	$v1,56($sp)
    # Line 182
    beqz	$at,.L0db42f90
    sd	$at,64($sp)
    sd	$s2,152($sp)
    sd	$s3,144($sp)
    sd	$ra,128($sp)
    sd	$s4,120($sp)
    li	$s5,-1
    lwc1	$f26,_lit_402df854
    li	$s8,9729
    li	$s7,2049
    li	$s6,2048
    mtc1	$zero,$f22
    lwc1	$f0,0($sp)
    b	.L0db42dfc
    mul.s	$f30,$f28,$f28
.L0db42df4:
    ld	$a1,64($sp)
    # Line 192
    beqz	$a1,.L0db42f64
.L0db42dfc:
    ld	$at,64($sp)
    # Line 184
    move	$s3,$at
    slti	$at,$at,33
    bnez	$at,.L0db42e14
    # Line 190
    ld	$v0,56($sp)
    # Line 186
    li	$s3,32
.L0db42e14:
    lui	$s2,0x8000
    # Line 190
    lw	$s4,0($v0)
    # Line 188
    ld	$v1,64($sp)
    # Line 190
    addiu	$v0,$v0,4
    sd	$v0,56($sp)
    # Line 188
    subu	$v1,$v1,$s3
    # Line 192
    addiu	$s3,$s3,-1
    bltz	$s3,.L0db42df4
    sd	$v1,64($sp)
    b	.L0db42e88
    addiu	$s3,$s3,-1
.L0db42e40:
    # Line 210
    c.lt.s	$f5,$f0
    nop
    bc1fl	.L0db42e58
    # Line 212
    lbu	$a1,3105($s0)
    # Line 211
    mov.s	$f0,$f5
.L0db42e54:
    # Line 212
    lbu	$a1,3105($s0)
.L0db42e58:
    lwc1	$f7,0($s1)
    beqz	$a1,.L0db42edc
    sub.s	$f6,$f5,$f0
    # Line 216
    lwc1	$f1,1528($s0)
    mul.s	$f1,$f1,$f6
    add.s	$f1,$f1,$f7
    swc1	$f1,0($s1)
.L0db42e74:
    # Line 223
    lwc1	$f2,30484($s0)
    # Line 224
    addiu	$s1,$s1,16
    # Line 192
    beq	$s3,$s5,.L0db42df4
    # Line 223
    add.s	$f20,$f2,$f20
    # Line 192
    addiu	$s3,$s3,-1
.L0db42e88:
    and	$at,$s4,$s2
    beqz	$at,.L0db42e74
    # Line 226
    srl	$s2,$s2,0x1
    # Line 195
    c.lt.s	$f20,$f22
    mov.s	$f5,$f20
    bc1fl	.L0db42eac
    # Line 197
    lw	$a0,1492($s0)
    # Line 196
    neg.s	$f5,$f20
    # Line 197
    lw	$a0,1492($s0)
.L0db42eac:
    beql	$s6,$a0,.L0db42f30
    # Line 199
    mul.s	$f13,$f28,$f5
    # Line 197
    beql	$s7,$a0,.L0db42f48
    # Line 202
    mul.s	$f13,$f30,$f5
    # Line 197
    beql	$s8,$a0,.L0db42f24
    # Line 205
    sub.s	$f1,$f24,$f5
.L0db42ec4:
    # Line 207
    c.lt.s	$f0,$f22
.L0db42ec8:
    nop
    bc1f	.L0db42e40
    lwc1	$f5,3284($s0)
    # Line 210
    b	.L0db42e54
    mov.s	$f0,$f22
.L0db42edc:
    # Line 218
    mul.s	$f2,$f7,$f0
    lwc1	$f1,1496($s0)
    mul.s	$f1,$f1,$f6
    add.s	$f1,$f1,$f2
    # Line 219
    lwc1	$f4,4($s1)
    # Line 218
    swc1	$f1,0($s1)
    # Line 219
    mul.s	$f4,$f4,$f0
    lwc1	$f1,1500($s0)
    mul.s	$f1,$f1,$f6
    add.s	$f4,$f4,$f1
    # Line 220
    lwc1	$f3,8($s1)
    # Line 219
    swc1	$f4,4($s1)
    # Line 220
    mul.s	$f3,$f3,$f0
    lwc1	$f4,1504($s0)
    mul.s	$f4,$f4,$f6
    add.s	$f3,$f3,$f4
    b	.L0db42e74
    swc1	$f3,8($s1)
.L0db42f24:
    # Line 205
    lwc1	$f0,1524($s0)
    b	.L0db42ec4
    mul.s	$f0,$f0,$f1
.L0db42f30:
    # Line 199
    # lw $t9, -17724($gp) # &powf
    mov.s	$f12,$f26
    jal	powf
    neg.s	$f13,$f13
    # Line 200
    b	.L0db42ec8
    # Line 207
    c.lt.s	$f0,$f22
.L0db42f48:
    # Line 202
    mul.s	$f13,$f13,$f5
    # lw $t9, -17724($gp) # &powf
    mov.s	$f12,$f26
    jal	powf
    neg.s	$f13,$f13
    # Line 203
    b	.L0db42ec8
    # Line 207
    c.lt.s	$f0,$f22
.L0db42f64:
    ldc1	$f30,72($sp)
    ldc1	$f22,80($sp)
    ldc1	$f26,88($sp)
    ld	$s8,96($sp)
    ld	$s7,104($sp)
    ld	$s5,112($sp)
    ld	$s4,120($sp)
    ld	$ra,128($sp)
    ld	$s6,136($sp)
    ld	$s3,144($sp)
    ld	$s2,152($sp)
.L0db42f90:
    # Line 233
    move	$v0,$zero
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ldc1	$f20,24($sp)
    ldc1	$f24,16($sp)
    ldc1	$f28,8($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glFogStippledSpanSlow

# Function: __glFogFragmentSlow
# Declared: Line 244 (Source lines: 245-287)
# Address: 0x0db42fb4 - 0x0db43118 (Size: 356 bytes, Frame: 208)
.globl __glFogFragmentSlow
.ent __glFogFragmentSlow
__glFogFragmentSlow:
    # Line 245
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    lui	$at,0xc
    addiu	$at,$at,-18716
    addu	$gp,$t9,$at
    mtc1	$zero,$f5
    sd	$s5,16($sp)
    c.lt.s	$f14,$f5
    move	$s5,$a1
    sd	$s1,8($sp)
    bc1f	.L0db42fe8
    move	$s1,$a0
    # Line 249
    neg.s	$f14,$f14
.L0db42fe8:
    # Line 251
    lw	$a0,1492($s1)
    li	$a2,9729
    li	$v0,2048
    beq	$a0,$v0,.L0db430c4
    li	$v1,2049
    beql	$a0,$v1,.L0db430ec
    # Line 257
    lwc1	$f15,1512($s1)
    # Line 251
    beq	$a0,$a2,.L0db430b0
    lwc1	$f0,0($sp)
.L0db4300c:
    # Line 264
    c.lt.s	$f0,$f5
    ld	$gp,24($sp)
    bc1f	.L0db43050
    lwc1	$f6,3284($s1)
    # Line 270
    mov.s	$f0,$f5
.L0db43020:
    # Line 274
    lbu	$at,3105($s1)
.L0db43024:
    lwc1	$f7,12($s5)
    beqz	$at,.L0db43068
    sub.s	$f5,$f6,$f0
    # Line 281
    lwc1	$f1,1528($s1)
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f7
    swc1	$f1,12($s5)
.L0db43040:
    # Line 287
    ld	$s1,8($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db43050:
    # Line 270
    c.lt.s	$f6,$f0
    nop
    bc1fl	.L0db43024
    # Line 274
    lbu	$at,3105($s1)
    b	.L0db43020
    # Line 273
    mov.s	$f0,$f6
.L0db43068:
    # Line 283
    mul.s	$f1,$f7,$f0
    lwc1	$f4,1496($s1)
    mul.s	$f4,$f4,$f5
    add.s	$f4,$f4,$f1
    # Line 284
    lwc1	$f3,16($s5)
    # Line 283
    swc1	$f4,12($s5)
    # Line 284
    mul.s	$f3,$f3,$f0
    lwc1	$f4,1500($s1)
    mul.s	$f4,$f4,$f5
    add.s	$f3,$f3,$f4
    # Line 285
    lwc1	$f2,20($s5)
    # Line 284
    swc1	$f3,16($s5)
    # Line 285
    mul.s	$f2,$f2,$f0
    lwc1	$f3,1504($s1)
    mul.s	$f3,$f3,$f5
    add.s	$f2,$f2,$f3
    b	.L0db43040
    swc1	$f2,20($s5)
.L0db430b0:
    # Line 262
    lwc1	$f1,1520($s1)
    sub.s	$f1,$f1,$f14
    lwc1	$f0,1524($s1)
    b	.L0db4300c
    mul.s	$f0,$f0,$f1
.L0db430c4:
    # Line 254
    lwc1	$f13,1512($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17724($gp) # &powf
    lwc1	$f12,_lit_402df854
    sd	$ra,32($sp)
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f5
    # Line 255
    b	.L0db4300c
    ld	$ra,32($sp)
.L0db430ec:
    # Line 258
    mul.s	$f13,$f14,$f15
    mul.s	$f13,$f13,$f15
    mul.s	$f13,$f13,$f14
    # lw $t9, -17724($gp) # &powf
    lwc1	$f12,_lit_402df854
    sd	$ra,32($sp)
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f5
    # Line 259
    b	.L0db4300c
    ld	$ra,32($sp)
.end __glFogFragmentSlow

# Function: __glFogVertex
# Declared: Line 293 (Source lines: 294-324)
# Address: 0x0db43118 - 0x0db43214 (Size: 252 bytes, Frame: 48)
.globl __glFogVertex
.ent __glFogVertex
__glFogVertex:
    # Line 297
    lwc1	$f6,104($a1)
    # Line 294
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0xc
    addiu	$at,$at,-19072
    addu	$gp,$t9,$at
    # Line 297
    mtc1	$zero,$f5
    c.lt.s	$f6,$f5
    sd	$s7,8($sp)
    bc1f	.L0db43148
    # Line 294
    move	$s7,$a0
    # Line 298
    neg.s	$f6,$f6
.L0db43148:
    # Line 300
    lw	$a0,1492($s7)
    li	$a1,9729
    li	$v0,2048
    beq	$a0,$v0,.L0db431c0
    li	$v1,2049
    beql	$a0,$v1,.L0db431e8
    # Line 306
    lwc1	$f14,1512($s7)
    # Line 300
    beq	$a0,$a1,.L0db431ac
    lwc1	$f0,0($sp)
.L0db4316c:
    # Line 313
    c.lt.s	$f0,$f5
    nop
    bc1t	.L0db431a0
    ld	$gp,16($sp)
    # Line 320
    lwc1	$f5,3284($s7)
    c.lt.s	$f5,$f0
    nop
    bc1f	.L0db43198
    ld	$s7,8($sp)
    # Line 322
    mov.s	$f0,$f5
    ld	$s7,8($sp)
.L0db43198:
    # Line 324
    jr	$ra
    addiu	$sp,$sp,48
.L0db431a0:
    # Line 320
    mov.s	$f0,$f5
    b	.L0db43198
    ld	$s7,8($sp)
.L0db431ac:
    # Line 311
    lwc1	$f1,1520($s7)
    sub.s	$f1,$f1,$f6
    lwc1	$f0,1524($s7)
    b	.L0db4316c
    mul.s	$f0,$f0,$f1
.L0db431c0:
    # Line 303
    lwc1	$f13,1512($s7)
    mul.s	$f13,$f13,$f6
    # lw $t9, -17724($gp) # &powf
    lwc1	$f12,_lit_402df854
    sd	$ra,24($sp)
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f5
    # Line 304
    b	.L0db4316c
    ld	$ra,24($sp)
.L0db431e8:
    # Line 307
    mul.s	$f13,$f6,$f14
    mul.s	$f13,$f13,$f14
    mul.s	$f13,$f13,$f6
    # lw $t9, -17724($gp) # &powf
    lwc1	$f12,_lit_402df854
    sd	$ra,24($sp)
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f5
    # Line 308
    b	.L0db4316c
    ld	$ra,24($sp)
.end __glFogVertex

# Function: __glFogVertexLinear
# Declared: Line 330 (Source lines: 331-345)
# Address: 0x0db43214 - 0x0db43284 (Size: 112 bytes, Frame: 0)
.globl __glFogVertexLinear
.ent __glFogVertexLinear
__glFogVertexLinear:
    # Line 334
    lwc1	$f5,104($a1)
    # Line 331
    lui	$v0,0xc
    addiu	$v0,$v0,-19324
    addu	$at,$t9,$v0
    # Line 334
    mtc1	$zero,$f6
    c.lt.s	$f5,$f6
    nop
    bc1fl	.L0db43240
    # Line 338
    lwc1	$f1,1520($a0)
    # Line 335
    neg.s	$f5,$f5
    # Line 338
    lwc1	$f1,1520($a0)
.L0db43240:
    sub.s	$f1,$f1,$f5
    lwc1	$f0,1524($a0)
    mul.s	$f0,$f0,$f1
    c.lt.s	$f0,$f6
    nop
    bc1t	.L0db4327c
    nop
    # Line 341
    lwc1	$f5,3284($a0)
    c.lt.s	$f5,$f0
    nop
    bc1f	.L0db43274
    nop
    # Line 343
    mov.s	$f0,$f5
.L0db43274:
    # Line 345
    jr	$ra
    nop
.L0db4327c:
    jr	$ra
    # Line 341
    mov.s	$f0,$f6
.end __glFogVertexLinear

# Function: __glFogColorSlow
# Declared: Line 352 (Source lines: 359-383)
# Address: 0x0db43284 - 0x0db43300 (Size: 124 bytes, Frame: 0)
.globl __glFogColorSlow
.ent __glFogColorSlow
__glFogColorSlow:
    # Line 359
    lbu	$at,3105($a0)
    lwc1	$f4,3284($a0)
    lwc1	$f5,0($a2)
    beqz	$at,.L0db432b0
    sub.s	$f4,$f4,$f15
    # Line 366
    lwc1	$f0,1528($a0)
    mul.s	$f0,$f0,$f4
    add.s	$f0,$f0,$f5
    swc1	$f0,0($a1)
    # Line 383
    jr	$ra
    nop
.L0db432b0:
    # Line 378
    mul.s	$f1,$f5,$f15
    # Line 377
    lwc1	$f7,1504($a0)
    # Line 376
    lwc1	$f0,1500($a0)
    # Line 377
    mul.s	$f7,$f7,$f4
    # Line 376
    lwc1	$f3,4($a2)
    mul.s	$f0,$f0,$f4
    # Line 377
    lwc1	$f2,8($a2)
    # Line 376
    mul.s	$f3,$f3,$f15
    # Line 378
    lwc1	$f6,1496($a0)
    # Line 377
    mul.s	$f2,$f2,$f15
    # Line 378
    mul.s	$f6,$f6,$f4
    # Line 376
    add.s	$f3,$f3,$f0
    # Line 377
    add.s	$f2,$f2,$f7
    # Line 378
    add.s	$f6,$f6,$f1
    # Line 380
    swc1	$f2,8($a1)
    # Line 379
    swc1	$f3,4($a1)
    # Line 378
    swc1	$f6,0($a1)
    # Line 381
    lwc1	$f1,12($a2)
    # Line 383
    jr	$ra
    # Line 381
    swc1	$f1,12($a1)
.end __glFogColorSlow

.rdata
_lit_402df854:
    .word 0x402df854

