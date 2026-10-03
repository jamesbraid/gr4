# Source: ../MGRAS/mgras_select.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_select.c
# Total Functions: 9

.text

# Function: __glMgrWriteSelectBuf
# Declared: Line 34 (Source lines: 36-42)
# Address: 0x0dacdb30 - 0x0dacdb70 (Size: 64 bytes, Frame: 0)
.ent __glMgrWriteSelectBuf
__glMgrWriteSelectBuf:
    # Line 36
    lw	$a2,__glCurrentContext
    lw	$at,4604($a2)
    lw	$a3,4608($a2)
    lw	$v0,4612($a2)
    subu	$at,$a3,$at
    sra	$at,$at,0x2
    slt	$at,$at,$v0
    bnez	$at,.L0dacdb5c
    # Line 39
    li	$v0,1
    # Line 42
    jr	$ra
    # Line 39
    sb	$v0,4600($a2)
.L0dacdb5c:
    # Line 41
    addiu	$v1,$a3,4
    sw	$v1,4608($a2)
    sw	$a0,-4($v1)
    # Line 42
    jr	$ra
    nop
.end __glMgrWriteSelectBuf

# Function: __glMgrGetSelectData
# Declared: Line 45 (Source lines: 46-123)
# Address: 0x0dacdb70 - 0x0dacdf38 (Size: 968 bytes, Frame: 224)
.globl __glMgrGetSelectData
.ent __glMgrGetSelectData
__glMgrGetSelectData:
    # Line 49
    li	$v0,1
    # Line 46
    addiu	$sp,$sp,-16480
    sd	$ra,16432($sp)
    sd	$s7,16440($sp)
    # Line 49
    lui	$s7,0x7
    sd	$gp,16464($sp)
    # Line 46
    lui	$at,0x13
    sd	$s0,16456($sp)
    # Line 49
    lui	$s0,0x1
    sd	$s5,16448($sp)
    # Line 48
    lw	$s5,__glCurrentContext
    # Line 46
    addiu	$at,$at,2856
    addu	$gp,$t9,$at
    # Line 49
    addu	$s0,$s5,$s0
    lbu	$at,-25437($s0)
    # Line 46
    la	$a0,SYMBOL_LOCATION
    # Line 49
    ori	$s7,$s7,0x4080
    beq	$at,$v0,.L0dacddd0
    lw	$a0,1016($a0)
    sd	$s3,16424($sp)
    # Line 75
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    sd	$s1,16408($sp)
    li	$a2,1
    jal	__Mgr_ReturnMode
    li	$a1,1
    move	$s3,$v0
    # Line 76
    beqz	$v0,.L0dacdc14
    move	$s1,$zero
    sd	$s4,16416($sp)
    addiu	$s4,$sp,8
.L0dacdbe8:
    # Line 77
    lw	$a2,-31276($s0)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    move	$a0,$s1
    # Line 76
    addiu	$s1,$s1,1
    # Line 77
    jal	__Mgr_ReturnMode
    li	$a1,-1
    # Line 76
    addiu	$s4,$s4,4
    sltu	$at,$s1,$s3
    bnez	$at,.L0dacdbe8
    # Line 77
    sw	$v0,-4($s4)
    ld	$s4,16416($sp)
.L0dacdc14:
    sd	$s4,16416($sp)
    # Line 82
    li	$a2,1
    li	$a1,1
    # Line 80
    li	$v0,24832
    # Line 82
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    # Line 80
    sw	$v0,0($s7)
    # Line 82
    jal	__Mgr_ReturnMode
    lw	$a0,1016($a0)
    sd	$s6,16400($sp)
    move	$s4,$v0
    # Line 83
    beqz	$v0,.L0dacdc74
    move	$s1,$zero
    addiu	$s6,$sp,8200
.L0dacdc4c:
    # Line 84
    lw	$a2,-31276($s0)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    move	$a0,$s1
    # Line 83
    addiu	$s1,$s1,1
    # Line 84
    jal	__Mgr_ReturnMode
    li	$a1,-1
    # Line 83
    addiu	$s6,$s6,4
    sltu	$a1,$s1,$s4
    bnez	$a1,.L0dacdc4c
    # Line 84
    sw	$v0,-4($s6)
.L0dacdc74:
    # Line 87
    move	$a4,$zero
    addiu	$s6,$sp,8200
    addiu	$s1,$sp,8
    sltu	$v0,$zero,$s4
    sltu	$a0,$zero,$s3
    sw	$zero,16392($sp)
    move	$a3,$zero
    b	.L0dacdcd0
    sw	$zero,16396($sp)
.L0dacdc98:
    # Line 101
    addiu	$a3,$sp,16396
    # lw $t9, -30508($gp) # &writemergehit
    addiu	$a2,$sp,8200
    addiu	$a1,$sp,16392
    bal writemergehit
    addiu	$a0,$sp,8
    # Line 102
    lw	$a2,4616($s5)
    addiu	$a2,$a2,1
    sw	$a2,4616($s5)
.L0dacdcbc:
    # Line 117
    lw	$a4,16392($sp)
    lw	$a3,16396($sp)
    sltu	$a0,$a4,$s3
    beqz	$a0,.L0dacdd68
    sltu	$v0,$a3,$s4
.L0dacdcd0:
    # Line 89
    beqz	$a0,.L0dacdd24
    nop
    beqz	$v0,.L0dacddb0
    sll	$v0,$a3,0x2
    sll	$a0,$a4,0x2
    addu	$a0,$a0,$s1
    addu	$v0,$v0,$s6
    lw	$v0,0($v0)
    lw	$a0,0($a0)
    sltu	$at,$a0,$v0
    bnez	$at,.L0dacdd48
    # Line 94
    sltu	$a1,$v0,$a0
    beqz	$a1,.L0dacdc98
    # Line 97
    nop	# was lw $t9, -30512($gp) # &writehit
    addiu	$a1,$sp,16396
    bal writehit
    addiu	$a0,$sp,8200
    # Line 98
    lw	$a2,4616($s5)
    addiu	$a2,$a2,1
    b	.L0dacdcbc
    sw	$a2,4616($s5)
.L0dacdd24:
    # Line 95
    beqz	$v0,.L0dacdcbc
    # Line 112
    nop	# was lw $t9, -30512($gp) # &writehit
    addiu	$a1,$sp,16396
    bal writehit
    addiu	$a0,$sp,8200
    # Line 113
    lw	$at,4616($s5)
    addiu	$at,$at,1
    b	.L0dacdcbc
    sw	$at,4616($s5)
.L0dacdd48:
    # Line 93
    # lw $t9, -30512($gp) # &writehit
    addiu	$a1,$sp,16392
    bal writehit
    addiu	$a0,$sp,8
    # Line 94
    lw	$v1,4616($s5)
    addiu	$v1,$v1,1
    b	.L0dacdcbc
    sw	$v1,4616($s5)
.L0dacdd68:
    # Line 117
    sltu	$v0,$a3,$s4
    bnez	$v0,.L0dacdcd0
    sd	$s2,16472($sp)
.L0dacdd74:
    ld	$gp,16464($sp)
.L0dacdd78:
    # Line 122
    sw	$zero,-31284($s0)
    # Line 123
    ld	$s0,16456($sp)
    ld	$s1,16408($sp)
    ld	$s2,16472($sp)
    ld	$s3,16424($sp)
    ld	$s4,16416($sp)
    ld	$s5,16448($sp)
    ld	$s6,16400($sp)
    # Line 121
    li	$a1,25088
    # Line 123
    ld	$ra,16432($sp)
    # Line 121
    sw	$a1,0($s7)
    # Line 123
    ld	$s7,16440($sp)
    jr	$ra
    addiu	$sp,$sp,16480
.L0dacddb0:
    # Line 106
    # lw $t9, -30512($gp) # &writehit
    addiu	$a1,$sp,16392
    bal writehit
    addiu	$a0,$sp,8
    # Line 107
    lw	$a2,4616($s5)
    addiu	$a2,$a2,1
    b	.L0dacdcbc
    sw	$a2,4616($s5)
.L0dacddd0:
    sd	$s2,16472($sp)
    # Line 56
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    sd	$s3,16424($sp)
    li	$a2,1
    jal	__Mgr_ReturnMode
    li	$a1,1
    sd	$s6,16400($sp)
    sd	$s4,16416($sp)
    sd	$s1,16408($sp)
    move	$s3,$v0
    # Line 57
    beqz	$v0,.L0dacdd74
    move	$s2,$zero
    sd	$s6,16400($sp)
    la	$s4,sub_0dad0000
    sd	$s1,16408($sp)
    b	.L0dacde28
    addiu	$s4,$s4,-9424
.L0dacde14:
    # Line 72
    lw	$at,4616($s5)
    sltu	$v1,$s2,$s3
    addiu	$at,$at,1
    beqz	$v1,.L0dacdf30
    sw	$at,4616($s5)
.L0dacde28:
    # Line 60
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a2,-31276($s0)
    li	$a1,-1
    jal	__Mgr_ReturnMode
    addiu	$a0,$s2,1
    move	$a0,$v0
    move	$s6,$v0
    bal __glMgrim_GetMinmaxParameterfvEXT
    move	$t9,$s4
    # Line 61
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a2,-31276($s0)
    li	$a1,-1
    jal	__Mgr_ReturnMode
    addiu	$a0,$s2,2
    sw	$v0,0($sp)
    # Line 62
    lwc1	$f0,0($sp)
    ldc1	$f1,_lit8_41efffffffe00000
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    ldc1	$f2,_lit8_3fe0000000000000
    # Line 63
    cvt.d.s	$f1,$f0
    add.d	$f1,$f1,$f2
    trunc.l.d	$f1,$f1
    move	$t9,$s4
    dmfc1	$a0,$f1
    # Line 62
    swc1	$f0,0($sp)
    # Line 63
    bal __glMgrim_GetMinmaxParameterfvEXT
    sll	$a0,$a0,0x0
    # Line 65
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a2,-31276($s0)
    li	$a1,-1
    jal	__Mgr_ReturnMode
    addiu	$a0,$s2,3
    sw	$v0,4($sp)
    # Line 66
    lwc1	$f1,4($sp)
    ldc1	$f2,_lit8_41efffffffe00000
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f2
    cvt.s.d	$f1,$f1
    ldc1	$f3,_lit8_3fe0000000000000
    # Line 67
    cvt.d.s	$f2,$f1
    add.d	$f2,$f2,$f3
    trunc.l.d	$f2,$f2
    move	$t9,$s4
    dmfc1	$a0,$f2
    # Line 66
    swc1	$f1,4($sp)
    # Line 67
    bal __glMgrim_GetMinmaxParameterfvEXT
    sll	$a0,$a0,0x0
    # Line 68
    addiu	$s2,$s2,4
    # Line 69
    beqz	$s6,.L0dacde14
    move	$s1,$zero
    # Line 70
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
.L0dacdefc:
    lw	$a2,-31276($s0)
    move	$a0,$s2
    jal	__Mgr_ReturnMode
    li	$a1,-1
    addiu	$s2,$s2,1
    move	$a0,$v0
    bal __glMgrim_GetMinmaxParameterfvEXT
    move	$t9,$s4
    # Line 69
    addiu	$s1,$s1,1
    bne	$s1,$s6,.L0dacdefc
    # Line 70
    nop	# was lw $t9, -30900($gp) # &__Mgr_ReturnMode
    b	.L0dacde14
    nop
.L0dacdf30:
    b	.L0dacdd78
    ld	$gp,16464($sp)
.end __glMgrGetSelectData

# Function: writehit
# Declared: Line 126 (Source lines: 127-146)
# Address: 0x0dacdf38 - 0x0dace070 (Size: 312 bytes, Frame: 208)
.globl writehit
.ent writehit
writehit:
    # Line 127
    addiu	$sp,$sp,-80
    sd	$ra,8($sp)
    sd	$s3,16($sp)
    move	$s3,$a0
    sd	$s0,24($sp)
    sd	$gp,32($sp)
    sd	$s1,40($sp)
    lui	$s1,0x13
    addiu	$s1,$s1,1888
    addu	$gp,$t9,$s1
    la	$s0,sub_0dad0000
    sd	$s2,48($sp)
    move	$s2,$a1
    # Line 131
    lw	$a1,0($a1)
    # Line 127
    addiu	$s0,$s0,-9424
    # Line 138
    move	$t9,$s0
    # Line 131
    sll	$a1,$a1,0x2
    addu	$a0,$a1,$a0
    # Line 133
    lw	$v0,12($a0)
    # Line 132
    lw	$at,8($a0)
    # Line 131
    lw	$a0,4($a0)
    # Line 133
    sw	$v0,4($sp)
    # Line 132
    sw	$at,0($sp)
    # Line 138
    bal __glMgrim_GetMinmaxParameterfvEXT
    # Line 131
    move	$s1,$a0
    # Line 139
    lwc1	$f0,0($sp)
    ldc1	$f1,_lit8_41efffffffe00000
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    ldc1	$f1,_lit8_3fe0000000000000
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    trunc.l.d	$f0,$f0
    dmfc1	$a0,$f0
    move	$t9,$s0
    bal __glMgrim_GetMinmaxParameterfvEXT
    sll	$a0,$a0,0x0
    # Line 140
    lwc1	$f1,4($sp)
    ldc1	$f3,_lit8_41efffffffe00000
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f3
    cvt.s.d	$f1,$f1
    ldc1	$f2,_lit8_3fe0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.l.d	$f1,$f1
    sd	$s4,56($sp)
    dmfc1	$a0,$f1
    move	$t9,$s0
    bal __glMgrim_GetMinmaxParameterfvEXT
    sll	$a0,$a0,0x0
    # Line 141
    move	$s4,$zero
    beqz	$s1,.L0dace040
    ld	$ra,8($sp)
    # Line 142
    lw	$a0,0($s2)
.L0dace018:
    move	$t9,$s0
    addu	$a0,$a0,$s4
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s3
    bal __glMgrim_GetMinmaxParameterfvEXT
    lw	$a0,16($a0)
    # Line 141
    addiu	$s4,$s4,1
    bnel	$s1,$s4,.L0dace018
    # Line 142
    lw	$a0,0($s2)
    ld	$ra,8($sp)
.L0dace040:
    ld	$gp,32($sp)
    # Line 146
    ld	$s0,24($sp)
    # Line 145
    lw	$a2,0($s2)
    # Line 146
    ld	$s3,16($sp)
    ld	$s4,56($sp)
    # Line 145
    addu	$a2,$a2,$s1
    # Line 146
    ld	$s1,40($sp)
    # Line 145
    addiu	$a2,$a2,4
    sw	$a2,0($s2)
    # Line 146
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end writehit

# Function: writemergehit
# Declared: Line 149 (Source lines: 150-177)
# Address: 0x0dace070 - 0x0dace240 (Size: 464 bytes, Frame: 144)
.globl writemergehit
.ent writemergehit
writemergehit:
    # Line 150
    addiu	$sp,$sp,-144
    sd	$s8,40($sp)
    move	$s8,$a3
    sdc1	$f24,72($sp)
    sd	$gp,48($sp)
    sd	$s1,56($sp)
    lui	$s1,0x13
    addiu	$s1,$s1,1576
    addu	$gp,$t9,$s1
    sd	$s0,64($sp)
    # Line 157
    lw	$s0,0($a3)
    # Line 150
    move	$s1,$a1
    sd	$s2,32($sp)
    # Line 157
    sll	$s0,$s0,0x2
    addu	$s0,$s0,$a2
    lw	$s2,4($s0)
    # Line 154
    lw	$a5,0($a1)
    # Line 158
    lw	$t9,8($s0)
    # Line 159
    lw	$s0,12($s0)
    sd	$s2,24($sp)
    # Line 154
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a0
    # Line 155
    lw	$at,8($a5)
    # Line 150
    move	$s2,$a0
    # Line 159
    sw	$s0,12($sp)
    # Line 155
    sw	$at,0($sp)
    # Line 158
    sw	$t9,8($sp)
    # Line 159
    lwc1	$f5,0($sp)
    lwc1	$f4,8($sp)
    # Line 156
    lw	$at,12($a5)
    # Line 154
    lw	$a5,4($a5)
    # Line 159
    c.lt.s	$f5,$f4
    # Line 156
    sw	$at,4($sp)
    # Line 159
    bc1f	.L0dace108
    # Line 154
    move	$s0,$a5
    # Line 161
    mov.s	$f24,$f5
    b	.L0dace10c
    nop
.L0dace108:
    # Line 162
    mov.s	$f24,$f4
.L0dace10c:
    lwc1	$f4,4($sp)
    lwc1	$f5,12($sp)
    c.lt.s	$f5,$f4
    # Line 163
    mov.s	$f0,$f4
    # Line 162
    bc1f	.L0dace134
    # Line 164
    mov.s	$f1,$f5
    sd	$s3,88($sp)
    sd	$ra,80($sp)
    # Line 163
    b	.L0dace140
    sdc1	$f4,16($sp)
.L0dace134:
    sd	$s3,88($sp)
    sd	$ra,80($sp)
    sdc1	$f5,16($sp)
.L0dace140:
    # Line 164
    la	$s3,sub_0dad0000
    # Line 169
    move	$a0,$a5
    # Line 164
    addiu	$s3,$s3,-9424
    # Line 169
    bal __glMgrim_GetMinmaxParameterfvEXT
    move	$t9,$s3
    # Line 170
    ldc1	$f3,_lit8_41efffffffe00000
    cvt.d.s	$f2,$f24
    mul.d	$f2,$f2,$f3
    cvt.s.d	$f2,$f2
    ldc1	$f3,_lit8_3fe0000000000000
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f3
    trunc.l.d	$f2,$f2
    dmfc1	$a0,$f2
    move	$t9,$s3
    bal __glMgrim_GetMinmaxParameterfvEXT
    sll	$a0,$a0,0x0
    # Line 171
    ldc1	$f4,16($sp)
    ldc1	$f6,_lit8_41efffffffe00000
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f6
    cvt.s.d	$f4,$f4
    ldc1	$f5,_lit8_3fe0000000000000
    cvt.d.s	$f4,$f4
    add.d	$f4,$f4,$f5
    trunc.l.d	$f4,$f4
    sd	$s4,96($sp)
    move	$t9,$s3
    dmfc1	$a0,$f4
    ldc1	$f24,72($sp)
    bal __glMgrim_GetMinmaxParameterfvEXT
    sll	$a0,$a0,0x0
    # Line 172
    move	$s4,$zero
    beqz	$s0,.L0dace1f8
    ld	$ra,80($sp)
    # Line 173
    lw	$a0,0($s1)
.L0dace1d0:
    move	$t9,$s3
    addu	$a0,$a0,$s4
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s2
    bal __glMgrim_GetMinmaxParameterfvEXT
    lw	$a0,16($a0)
    # Line 172
    addiu	$s4,$s4,1
    bnel	$s0,$s4,.L0dace1d0
    # Line 173
    lw	$a0,0($s1)
    ld	$ra,80($sp)
.L0dace1f8:
    ld	$gp,48($sp)
    # Line 175
    lw	$s2,0($s1)
    # Line 177
    ld	$s3,88($sp)
    ld	$s4,96($sp)
    # Line 175
    addu	$s2,$s2,$s0
    addiu	$s2,$s2,4
    sw	$s2,0($s1)
    # Line 176
    ld	$s0,24($sp)
    lw	$a2,0($s8)
    # Line 177
    ld	$s1,56($sp)
    ld	$s2,32($sp)
    # Line 176
    addu	$a2,$a2,$s0
    # Line 177
    ld	$s0,64($sp)
    # Line 176
    addiu	$a2,$a2,4
    sw	$a2,0($s8)
    # Line 177
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end writemergehit

# Function: __glMgrim_SelectBuffer
# Declared: Line 180 (Source lines: 181-197)
# Address: 0x0dace240 - 0x0dace2f4 (Size: 180 bytes, Frame: 32)
.globl __glMgrim_SelectBuffer
.ent __glMgrim_SelectBuffer
__glMgrim_SelectBuffer:
    # Line 182
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 181
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 182
    lw	$at,__glBeginMode
    # Line 181
    lui	$v1,0x13
    addiu	$v1,$v1,1112
    # Line 182
    beq	$at,$v0,.L0dace2b8
    # Line 181
    addu	$gp,$t9,$v1
    # Line 182
    bltz	$a0,.L0dace2d8
    # Line 185
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 186
    lw	$a2,3092($a3)
    li	$at,7170
    beq	$a2,$at,.L0dace29c
    # Line 189
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 196
    sw	$zero,4616($a3)
    # Line 195
    sw	$a1,4608($a3)
    # Line 194
    sw	$a0,4612($a3)
    # Line 193
    sw	$a1,4604($a3)
    # Line 192
    sb	$zero,4600($a3)
    ld	$gp,0($sp)
    # Line 197
    jr	$ra
    addiu	$sp,$sp,32
.L0dace29c:
    sd	$ra,8($sp)
    # Line 189
    jal	__glSetError
    li	$a0,1282
    # Line 190
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dace2b8:
    # Line 182
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dace2d8:
    sd	$ra,8($sp)
    # Line 185
    jalr	$t9
    li	$a0,1281
    # Line 186
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_SelectBuffer

# Function: __glMgrim_InitNames
# Declared: Line 199 (Source lines: 200-215)
# Address: 0x0dace2f4 - 0x0dace3ac (Size: 184 bytes, Frame: 32)
.globl __glMgrim_InitNames
.ent __glMgrim_InitNames
__glMgrim_InitNames:
    # Line 203
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 200
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 203
    lw	$at,__glBeginMode
    # Line 200
    lui	$v1,0x13
    addiu	$v1,$v1,932
    # Line 203
    beq	$at,$v0,.L0dace38c
    # Line 200
    addu	$gp,$t9,$v1
    # Line 203
    lw	$a0,3092($a2)
    li	$at,7170
    beq	$a0,$at,.L0dace334
    # Line 209
    lui	$a1,0x1
.L0dace328:
    ld	$gp,0($sp)
    # Line 215
    jr	$ra
    addiu	$sp,$sp,32
.L0dace334:
    # Line 208
    li	$a0,0xc400
    lui	$at,0x7
    # Line 209
    addu	$a1,$a2,$a1
    lw	$v1,-31284($a1)
    lw	$v0,-31288($a1)
    # Line 208
    ori	$at,$at,0x4080
    sw	$a0,0($at)
    # Line 209
    addu	$v0,$v0,$v1
    addiu	$v1,$v0,68
    sltiu	$v1,$v1,2049
    beqz	$v1,.L0dace370
    sw	$v0,-31284($a1)
.L0dace364:
    # Line 213
    li	$at,4
    b	.L0dace328
    sw	$at,-31288($a1)
.L0dace370:
    # Line 211
    # lw $t9, -30516($gp) # &__glMgrGetSelectData
    sd	$ra,8($sp)
    bal __glMgrGetSelectData
    sd	$a1,16($sp)
    ld	$a1,16($sp)
    b	.L0dace364
    ld	$ra,8($sp)
.L0dace38c:
    # Line 203
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_InitNames

# Function: __glMgrim_LoadName
# Declared: Line 217 (Source lines: 218-232)
# Address: 0x0dace3ac - 0x0dace458 (Size: 172 bytes, Frame: 32)
.globl __glMgrim_LoadName
.ent __glMgrim_LoadName
__glMgrim_LoadName:
    # Line 221
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 218
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 221
    lw	$at,__glBeginMode
    # Line 218
    lui	$v1,0x13
    addiu	$v1,$v1,748
    # Line 221
    beq	$at,$v0,.L0dace438
    # Line 218
    addu	$gp,$t9,$v1
    # Line 221
    lw	$a1,3092($a2)
    # Line 227
    lui	$v1,0x1
    # Line 221
    li	$at,7170
    beq	$a1,$at,.L0dace3f0
    # Line 226
    lui	$a3,0x7
.L0dace3e4:
    ld	$gp,0($sp)
    # Line 232
    jr	$ra
    addiu	$sp,$sp,32
.L0dace3f0:
    # Line 226
    ori	$a3,$a3,0x4080
    li	$at,0xc504
    # Line 227
    addu	$v1,$a2,$v1
    lw	$a1,-31284($v1)
    lw	$v0,-31288($v1)
    # Line 226
    sw	$at,0($a3)
    sw	$a0,0($a3)
    # Line 227
    addu	$v0,$v0,$a1
    addiu	$a1,$v0,68
    sltiu	$a1,$a1,2049
    bnez	$a1,.L0dace3e4
    sw	$v0,-31284($v1)
    # Line 229
    # lw $t9, -30516($gp) # &__glMgrGetSelectData
    sd	$ra,8($sp)
    bal __glMgrGetSelectData
    nop
    b	.L0dace3e4
    ld	$ra,8($sp)
.L0dace438:
    # Line 221
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_LoadName

# Function: __glMgrim_PopName
# Declared: Line 234 (Source lines: 235-250)
# Address: 0x0dace458 - 0x0dace528 (Size: 208 bytes, Frame: 32)
.globl __glMgrim_PopName
.ent __glMgrim_PopName
__glMgrim_PopName:
    # Line 238
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 235
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 238
    lw	$at,__glBeginMode
    # Line 235
    lui	$v1,0x13
    addiu	$v1,$v1,576
    # Line 238
    beq	$at,$v0,.L0dace508
    # Line 235
    addu	$gp,$t9,$v1
    # Line 238
    lw	$a0,3092($a2)
    # Line 244
    lui	$a1,0x1
    # Line 238
    li	$at,7170
    beq	$a0,$at,.L0dace49c
    # Line 243
    li	$v1,0xc600
.L0dace490:
    ld	$gp,0($sp)
    # Line 250
    jr	$ra
    addiu	$sp,$sp,32
.L0dace49c:
    # Line 243
    lui	$a0,0x7
    # Line 244
    addu	$a1,$a2,$a1
    lw	$a3,-31288($a1)
    lw	$v0,-31284($a1)
    # Line 243
    ori	$a0,$a0,0x4080
    sw	$v1,0($a0)
    # Line 244
    addu	$v0,$v0,$a3
    addiu	$v1,$v0,68
    sltiu	$v1,$v1,2049
    beqz	$v1,.L0dace4e8
    sw	$v0,-31284($a1)
.L0dace4c8:
    # Line 246
    sltiu	$at,$a3,5
    bnez	$at,.L0dace4dc
    # Line 248
    addiu	$a2,$a3,-1
    b	.L0dace4e0
    nop
.L0dace4dc:
    li	$a2,4
.L0dace4e0:
    b	.L0dace490
    sw	$a2,-31288($a1)
.L0dace4e8:
    # Line 246
    # lw $t9, -30516($gp) # &__glMgrGetSelectData
    sd	$ra,8($sp)
    bal __glMgrGetSelectData
    sd	$a1,16($sp)
    ld	$a1,16($sp)
    ld	$ra,8($sp)
    b	.L0dace4c8
    lw	$a3,-31288($a1)
.L0dace508:
    # Line 238
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_PopName

# Function: __glMgrim_PushName
# Declared: Line 252 (Source lines: 253-268)
# Address: 0x0dace528 - 0x0dace5fc (Size: 212 bytes, Frame: 48)
.globl __glMgrim_PushName
.ent __glMgrim_PushName
__glMgrim_PushName:
    # Line 256
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 253
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 256
    lw	$at,__glBeginMode
    # Line 253
    lui	$v1,0x13
    addiu	$v1,$v1,368
    # Line 256
    beq	$at,$v0,.L0dace5dc
    # Line 253
    addu	$gp,$t9,$v1
    # Line 256
    lw	$a1,3092($a3)
    # Line 262
    lui	$a2,0x1
    # Line 256
    li	$at,7170
    beq	$a1,$at,.L0dace56c
    # Line 261
    lui	$v1,0x7
.L0dace560:
    ld	$gp,0($sp)
    # Line 268
    jr	$ra
    addiu	$sp,$sp,48
.L0dace56c:
    # Line 261
    ori	$v1,$v1,0x4080
    li	$a1,0xc704
    # Line 262
    addu	$a2,$a3,$a2
    lw	$a4,-31288($a2)
    lw	$v0,-31284($a2)
    # Line 261
    sw	$a1,0($v1)
    sw	$a0,0($v1)
    # Line 262
    addu	$v0,$v0,$a4
    addiu	$v1,$v0,68
    sltiu	$v1,$v1,2049
    beqz	$v1,.L0dace5bc
    sw	$v0,-31284($a2)
.L0dace59c:
    # Line 264
    sltiu	$a1,$a4,68
    beqz	$a1,.L0dace5b0
    # Line 266
    addiu	$a0,$a4,1
    b	.L0dace5b4
    nop
.L0dace5b0:
    li	$a0,68
.L0dace5b4:
    b	.L0dace560
    sw	$a0,-31288($a2)
.L0dace5bc:
    # Line 264
    # lw $t9, -30516($gp) # &__glMgrGetSelectData
    sd	$ra,8($sp)
    bal __glMgrGetSelectData
    sd	$a2,16($sp)
    ld	$a2,16($sp)
    ld	$ra,8($sp)
    b	.L0dace59c
    lw	$a4,-31288($a2)
.L0dace5dc:
    # Line 256
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_PushName

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_41efffffffe00000:
    .word 0x41efffff, 0xffe00000

