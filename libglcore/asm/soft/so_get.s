# Source: ../soft/so_get.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_get.c
# Total Functions: 33

.text

# Function: __glim_GetTexEnvfv
# Declared: Line 36 (Source lines: 38-56)
# Address: 0x0db43300 - 0x0db433ec (Size: 236 bytes, Frame: 48)
.globl __glim_GetTexEnvfv
.ent __glim_GetTexEnvfv
__glim_GetTexEnvfv:
    # Line 39
    lw	$a5,__glCurrentContext
    # Line 38
    move	$a4,$a2
    # Line 39
    li	$v0,1
    # Line 38
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 39
    lw	$at,__glBeginMode
    # Line 38
    lui	$v1,0xc
    addiu	$v1,$v1,-19560
    # Line 39
    beq	$at,$v0,.L0db433cc
    # Line 38
    addu	$gp,$t9,$v1
    # Line 39
    li	$a3,8960
    beq	$a0,$a3,.L0db43354
    # Line 45
    li	$at,8704
    # Line 42
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 43
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db43354:
    # Line 45
    beq	$a1,$at,.L0db433a8
    li	$v0,8705
    beq	$a1,$v0,.L0db43380
    sd	$ra,8($sp)
    # Line 53
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 54
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db43380:
    # Line 50
    move	$a0,$a5
    # lw $t9, -26684($gp) # &__glUnScaleColorf
    lw	$a2,2376($a5)
    move	$a1,$a4
    jal	__glUnScaleColorf
    addiu	$a2,$a2,4
    ld	$ra,8($sp)
.L0db4339c:
    ld	$gp,0($sp)
    # Line 56
    jr	$ra
    addiu	$sp,$sp,48
.L0db433a8:
    # Line 47
    lw	$a3,2376($a5)
    lw	$a3,0($a3)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 48
    b	.L0db4339c
    # Line 47
    swc1	$f0,0($a4)
.L0db433cc:
    # Line 39
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetTexEnvfv

# Function: __glim_GetTexEnviv
# Declared: Line 58 (Source lines: 60-78)
# Address: 0x0db433ec - 0x0db434c4 (Size: 216 bytes, Frame: 48)
.globl __glim_GetTexEnviv
.ent __glim_GetTexEnviv
__glim_GetTexEnviv:
    # Line 61
    lw	$a5,__glCurrentContext
    # Line 60
    move	$a4,$a2
    # Line 61
    li	$v0,1
    # Line 60
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 61
    lw	$at,__glBeginMode
    # Line 60
    lui	$v1,0xc
    addiu	$v1,$v1,-19796
    # Line 61
    beq	$at,$v0,.L0db434a4
    # Line 60
    addu	$gp,$t9,$v1
    # Line 61
    li	$a3,8960
    beq	$a0,$a3,.L0db43440
    # Line 67
    li	$at,8704
    # Line 64
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 65
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db43440:
    # Line 67
    beq	$a1,$at,.L0db43494
    li	$v0,8705
    beq	$a1,$v0,.L0db4346c
    sd	$ra,8($sp)
    # Line 75
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 76
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db4346c:
    # Line 72
    move	$a0,$a5
    # lw $t9, -26680($gp) # &__glUnScaleColori
    lw	$a2,2376($a5)
    move	$a1,$a4
    jal	__glUnScaleColori
    addiu	$a2,$a2,4
    ld	$ra,8($sp)
.L0db43488:
    ld	$gp,0($sp)
    # Line 78
    jr	$ra
    addiu	$sp,$sp,48
.L0db43494:
    # Line 69
    lw	$a3,2376($a5)
    lw	$a3,0($a3)
    # Line 70
    b	.L0db43488
    # Line 69
    sw	$a3,0($a4)
.L0db434a4:
    # Line 61
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetTexEnviv

# Function: __glim_GetTexGenfv
# Declared: Line 82 (Source lines: 84-125)
# Address: 0x0db434c4 - 0x0db4360c (Size: 328 bytes, Frame: 48)
.globl __glim_GetTexGenfv
.ent __glim_GetTexGenfv
__glim_GetTexGenfv:
    # Line 86
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 84
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 86
    lw	$at,__glBeginMode
    # Line 84
    lui	$v1,0xc
    addiu	$v1,$v1,-20012
    # Line 86
    beq	$at,$v0,.L0db435ec
    # Line 84
    addu	$gp,$t9,$v1
    # Line 88
    li	$a3,8192
    beq	$a0,$a3,.L0db43564
    li	$at,8193
    beq	$a0,$at,.L0db4356c
    li	$v0,8194
    beq	$a0,$v0,.L0db43574
    li	$v1,8195
    beq	$a0,$v1,.L0db43528
    # Line 102
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 103
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db43528:
    # Line 99
    addiu	$a0,$a4,2248
.L0db4352c:
    # Line 105
    li	$a3,9472
    beq	$a1,$a3,.L0db435a8
    li	$at,9473
    beq	$a1,$at,.L0db435c8
    li	$v0,9474
    beq	$a1,$v0,.L0db4357c
    # Line 122
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 123
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db43564:
    # Line 91
    b	.L0db4352c
    # Line 90
    addiu	$a0,$a4,1876
.L0db4356c:
    # Line 94
    b	.L0db4352c
    # Line 93
    addiu	$a0,$a4,2000
.L0db43574:
    # Line 97
    b	.L0db4352c
    # Line 96
    addiu	$a0,$a4,2124
.L0db4357c:
    # Line 116
    lwc1	$f3,4($a0)
    swc1	$f3,0($a2)
    # Line 117
    lwc1	$f2,8($a0)
    swc1	$f2,4($a2)
    # Line 118
    lwc1	$f1,12($a0)
    swc1	$f1,8($a2)
    # Line 119
    lwc1	$f0,16($a0)
    swc1	$f0,12($a2)
.L0db4359c:
    ld	$gp,0($sp)
    # Line 125
    jr	$ra
    addiu	$sp,$sp,48
.L0db435a8:
    # Line 107
    lw	$v1,0($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 108
    b	.L0db4359c
    # Line 107
    swc1	$f0,0($a2)
.L0db435c8:
    # Line 110
    lwc1	$f0,20($a0)
    swc1	$f0,0($a2)
    # Line 111
    lwc1	$f3,24($a0)
    swc1	$f3,4($a2)
    # Line 112
    lwc1	$f2,28($a0)
    swc1	$f2,8($a2)
    # Line 113
    lwc1	$f1,32($a0)
    # Line 114
    b	.L0db4359c
    # Line 113
    swc1	$f1,12($a2)
.L0db435ec:
    # Line 86
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetTexGenfv

# Function: __glim_GetTexGendv
# Declared: Line 127 (Source lines: 129-170)
# Address: 0x0db4360c - 0x0db43774 (Size: 360 bytes, Frame: 48)
.globl __glim_GetTexGendv
.ent __glim_GetTexGendv
__glim_GetTexGendv:
    # Line 131
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 129
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 131
    lw	$at,__glBeginMode
    # Line 129
    lui	$v1,0xc
    addiu	$v1,$v1,-20340
    # Line 131
    beq	$at,$v0,.L0db43754
    # Line 129
    addu	$gp,$t9,$v1
    # Line 133
    li	$a3,8192
    beq	$a0,$a3,.L0db436ac
    li	$at,8193
    beq	$a0,$at,.L0db436b4
    li	$v0,8194
    beq	$a0,$v0,.L0db436bc
    li	$v1,8195
    beq	$a0,$v1,.L0db43670
    # Line 147
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 148
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db43670:
    # Line 144
    addiu	$a0,$a4,2248
.L0db43674:
    # Line 150
    li	$a3,9472
    beq	$a1,$a3,.L0db43700
    li	$at,9473
    beq	$a1,$at,.L0db43720
    li	$v0,9474
    beq	$a1,$v0,.L0db436c4
    # Line 167
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 168
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db436ac:
    # Line 136
    b	.L0db43674
    # Line 135
    addiu	$a0,$a4,1876
.L0db436b4:
    # Line 139
    b	.L0db43674
    # Line 138
    addiu	$a0,$a4,2000
.L0db436bc:
    # Line 142
    b	.L0db43674
    # Line 141
    addiu	$a0,$a4,2124
.L0db436c4:
    # Line 161
    lwc1	$f3,4($a0)
    cvt.d.s	$f3,$f3
    sdc1	$f3,0($a2)
    # Line 162
    lwc1	$f2,8($a0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($a2)
    # Line 163
    lwc1	$f1,12($a0)
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a2)
    # Line 164
    lwc1	$f0,16($a0)
    cvt.d.s	$f0,$f0
    sdc1	$f0,24($a2)
.L0db436f4:
    ld	$gp,0($sp)
    # Line 170
    jr	$ra
    addiu	$sp,$sp,48
.L0db43700:
    # Line 152
    lw	$v1,0($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.d.l	$f0,$f0
    # Line 153
    b	.L0db436f4
    # Line 152
    sdc1	$f0,0($a2)
.L0db43720:
    # Line 155
    lwc1	$f0,20($a0)
    cvt.d.s	$f0,$f0
    sdc1	$f0,0($a2)
    # Line 156
    lwc1	$f3,24($a0)
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a2)
    # Line 157
    lwc1	$f2,28($a0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,16($a2)
    # Line 158
    lwc1	$f1,32($a0)
    cvt.d.s	$f1,$f1
    # Line 159
    b	.L0db436f4
    # Line 158
    sdc1	$f1,24($a2)
.L0db43754:
    # Line 131
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetTexGendv

# Function: __glim_GetTexGeniv
# Declared: Line 172 (Source lines: 174-211)
# Address: 0x0db43774 - 0x0db438bc (Size: 328 bytes, Frame: 48)
.globl __glim_GetTexGeniv
.ent __glim_GetTexGeniv
__glim_GetTexGeniv:
    # Line 174
    move	$a4,$a2
    # Line 176
    lw	$a7,__glCurrentContext
    li	$v0,1
    # Line 174
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 176
    lw	$at,__glBeginMode
    # Line 174
    lui	$v1,0xc
    addiu	$v1,$v1,-20700
    # Line 176
    beq	$at,$v0,.L0db43874
    # Line 174
    addu	$gp,$t9,$v1
    # Line 178
    li	$a3,8192
    beq	$a0,$a3,.L0db43818
    li	$at,8193
    beq	$a0,$at,.L0db43824
    li	$v0,8194
    beq	$a0,$v0,.L0db4385c
    li	$v1,8195
    beq	$a0,$v1,.L0db437dc
    # Line 192
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 193
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db437dc:
    # Line 189
    addiu	$t0,$a7,2248
    # Line 195
    li	$a3,9472
.L0db437e4:
    beq	$a1,$a3,.L0db43868
    li	$at,9473
    beq	$a1,$at,.L0db43894
    li	$v0,9474
    beq	$a1,$v0,.L0db43830
    sd	$ra,8($sp)
    # Line 208
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 209
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db43818:
    # Line 180
    addiu	$t0,$a7,1876
    # Line 181
    b	.L0db437e4
    # Line 195
    li	$a3,9472
.L0db43824:
    # Line 183
    addiu	$t0,$a7,2000
    # Line 184
    b	.L0db437e4
    # Line 195
    li	$a3,9472
.L0db43830:
    # Line 204
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -26836($gp) # &__glConvertResult
    li	$a5,4
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,4
    ld	$ra,8($sp)
.L0db43850:
    ld	$gp,0($sp)
    # Line 211
    jr	$ra
    addiu	$sp,$sp,48
.L0db4385c:
    # Line 186
    addiu	$t0,$a7,2124
    # Line 187
    b	.L0db437e4
    # Line 195
    li	$a3,9472
.L0db43868:
    # Line 197
    lw	$v1,0($t0)
    # Line 198
    b	.L0db43850
    # Line 197
    sw	$v1,0($a4)
.L0db43874:
    # Line 176
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db43894:
    # Line 200
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,4
    # lw $t9, -26836($gp) # &__glConvertResult
    li	$a3,3
    sd	$ra,8($sp)
    bal __glConvertResult
    addiu	$a2,$t0,20
    b	.L0db43850
    ld	$ra,8($sp)
.end __glim_GetTexGeniv

# Function: __glim_GetTexParameterfv
# Declared: Line 215 (Source lines: 217-286)
# Address: 0x0db438bc - 0x0db43c08 (Size: 844 bytes, Frame: 208)
.globl __glim_GetTexParameterfv
.ent __glim_GetTexParameterfv
__glim_GetTexParameterfv:
    # Line 219
    li	$v0,1
    # Line 217
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 219
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$s2,8($sp)
    # Line 217
    move	$s2,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 219
    lw	$at,__glBeginMode
    # Line 217
    lui	$v1,0xc
    addiu	$v1,$v1,-21028
    # Line 219
    beq	$at,$v0,.L0db43b10
    # Line 217
    addu	$gp,$t9,$v1
    # Line 221
    # lw $t9, -25296($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    move	$a1,$s1
    beqz	$v0,.L0db43b38
    ld	$ra,40($sp)
    # Line 225
    li	$a0,0x8067
    sltu	$a3,$s2,$a0
    bnez	$a3,.L0db43970
    # Line 228
    sltu	$a4,$a0,$s2
    beqz	$a4,.L0db43a88
    li	$a0,0x8179
    sltu	$at,$s2,$a0
    bnez	$at,.L0db43a34
    sltu	$v1,$a0,$s2
    beqz	$v1,.L0db43ae8
    li	$a0,0x8191
    sltu	$a3,$s2,$a0
    bnez	$a3,.L0db43bb4
    sltu	$a4,$a0,$s2
    bnez	$a4,.L0db43998
    # Line 283
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 280
    lbu	$v1,212($v0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$at,0($sp)
    # Line 281
    b	.L0db43a1c
    # Line 280
    swc1	$f0,0($at)
.L0db43970:
    # Line 228
    sltiu	$a3,$s2,10242
    bnez	$a3,.L0db439bc
    sltiu	$a4,$s2,10243
    bnez	$a4,.L0db439fc
    li	$a0,0x8066
    sltu	$at,$s2,$a0
    bnez	$at,.L0db43b60
    sltu	$v1,$a0,$s2
    beqz	$v1,.L0db43be4
.L0db43994:
    # Line 283
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db43998:
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 284
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db439bc:
    # Line 228
    sltiu	$a3,$s2,10240
    bnez	$a3,.L0db43a58
    sltiu	$a4,$s2,10241
    bnez	$a4,.L0db43b90
    li	$at,10241
    bne	$s2,$at,.L0db43998
    # Line 283
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 251
    lw	$a3,12($v0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f1
    nop
    cvt.s.l	$f1,$f1
    ld	$v1,0($sp)
    # Line 252
    b	.L0db43a1c
    # Line 251
    swc1	$f1,0($v1)
.L0db439fc:
    # Line 242
    lw	$at,0($v0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    ld	$a4,0($sp)
    swc1	$f2,0($a4)
.L0db43a1c:
    ld	$gp,24($sp)
    # Line 286
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db43a34:
    # Line 228
    li	$a0,0x8147
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0db43ab8
    sltu	$a3,$a0,$s2
    bnez	$a3,.L0db43994
    # Line 257
    ld	$a4,0($sp)
    lwc1	$f3,_lit_42040000
    # Line 258
    b	.L0db43a1c
    # Line 257
    swc1	$f3,0($a4)
.L0db43a58:
    # Line 228
    li	$at,4100
    bne	$s2,$at,.L0db43994
    # Line 260
    ld	$v1,0($sp)
    lwc1	$f3,152($v0)
    swc1	$f3,0($v1)
    # Line 261
    lwc1	$f2,156($v0)
    swc1	$f2,4($v1)
    # Line 262
    lwc1	$f1,160($v0)
    swc1	$f1,8($v1)
    # Line 263
    lwc1	$f0,164($v0)
    # Line 264
    b	.L0db43a1c
    # Line 263
    swc1	$f0,12($v1)
.L0db43a88:
    # Line 275
    # lw $t9, -25284($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    move	$a1,$s1
    # Line 276
    lbu	$a4,12($v0)
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$a3,0($sp)
    ld	$ra,40($sp)
    # Line 278
    b	.L0db43a1c
    # Line 276
    swc1	$f0,0($a3)
.L0db43ab8:
    # Line 228
    li	$at,0x8072
    bne	$s2,$at,.L0db43998
    # Line 283
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 248
    lw	$a3,8($v0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f1
    nop
    cvt.s.l	$f1,$f1
    ld	$v1,0($sp)
    # Line 249
    b	.L0db43a1c
    # Line 248
    swc1	$f1,0($v1)
.L0db43ae8:
    # Line 230
    ld	$a4,0($sp)
    lwc1	$f1,184($v0)
    swc1	$f1,0($a4)
    # Line 231
    lwc1	$f0,188($v0)
    swc1	$f0,4($a4)
    # Line 232
    lwc1	$f3,192($v0)
    swc1	$f3,8($a4)
    # Line 233
    lwc1	$f2,196($v0)
    # Line 234
    b	.L0db43a1c
    # Line 233
    swc1	$f2,12($a4)
.L0db43b10:
    # Line 219
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db43b38:
    # Line 224
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 225
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db43b60:
    # Line 228
    li	$at,10243
    bne	$s2,$at,.L0db43998
    # Line 283
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 245
    lw	$a3,4($v0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f2
    nop
    cvt.s.l	$f2,$f2
    ld	$v1,0($sp)
    # Line 246
    b	.L0db43a1c
    # Line 245
    swc1	$f2,0($v1)
.L0db43b90:
    # Line 254
    lw	$at,16($v0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    ld	$a4,0($sp)
    # Line 255
    b	.L0db43a1c
    # Line 254
    swc1	$f3,0($a4)
.L0db43bb4:
    # Line 228
    li	$v1,0x817a
    bne	$s2,$v1,.L0db43994
    # Line 236
    ld	$a3,0($sp)
    lwc1	$f3,168($v0)
    swc1	$f3,0($a3)
    # Line 237
    lwc1	$f2,172($v0)
    swc1	$f2,4($a3)
    # Line 238
    lwc1	$f1,176($v0)
    swc1	$f1,8($a3)
    # Line 239
    lwc1	$f0,180($v0)
    # Line 240
    b	.L0db43a1c
    # Line 239
    swc1	$f0,12($a3)
.L0db43be4:
    # Line 268
    # lw $t9, -25292($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    jal	__glLookUpTextureTexobjs
    move	$a1,$s1
    # Line 269
    ld	$a4,0($sp)
    lwc1	$f0,4($v0)
    ld	$ra,40($sp)
    # Line 271
    b	.L0db43a1c
    # Line 269
    swc1	$f0,0($a4)
.end __glim_GetTexParameterfv

# Function: __glim_GetTexParameteriv
# Declared: Line 288 (Source lines: 290-347)
# Address: 0x0db43c08 - 0x0db43f24 (Size: 796 bytes, Frame: 224)
.globl __glim_GetTexParameteriv
.ent __glim_GetTexParameteriv
__glim_GetTexParameteriv:
    # Line 292
    li	$v0,1
    # Line 290
    addiu	$sp,$sp,-96
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 292
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$s2,8($sp)
    # Line 290
    move	$s2,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 292
    lw	$at,__glBeginMode
    # Line 290
    lui	$v1,0xc
    addiu	$v1,$v1,-21872
    # Line 292
    beq	$at,$v0,.L0db43df0
    # Line 290
    addu	$gp,$t9,$v1
    # Line 294
    # lw $t9, -25296($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    move	$a1,$s1
    beqz	$v0,.L0db43e18
    ld	$ra,40($sp)
    # Line 298
    li	$a0,0x8066
    sltu	$a3,$s2,$a0
    bnez	$a3,.L0db43ca0
    # Line 301
    sltu	$a4,$a0,$s2
    beqz	$a4,.L0db43d6c
    li	$a0,0x8147
    sltu	$at,$s2,$a0
    bnez	$at,.L0db43d14
    sltu	$v1,$a0,$s2
    beqz	$v1,.L0db43de0
    li	$a3,0x8191
    bne	$s2,$a3,.L0db43d44
    # Line 341
    ld	$at,0($sp)
    lbu	$a4,212($v0)
    # Line 342
    b	.L0db43cfc
    # Line 341
    sw	$a4,0($at)
.L0db43ca0:
    # Line 301
    sltiu	$v1,$s2,10241
    bnez	$v1,.L0db43cd0
    sltiu	$a3,$s2,10242
    bnez	$a3,.L0db43cf0
    sltiu	$a4,$s2,10243
    bnez	$a4,.L0db43e40
    sltiu	$at,$s2,10244
    beqz	$at,.L0db43d44
    # Line 306
    ld	$a3,0($sp)
    lw	$v1,4($v0)
    # Line 307
    b	.L0db43cfc
    # Line 306
    sw	$v1,0($a3)
.L0db43cd0:
    # Line 301
    sltiu	$a4,$s2,10240
    bnez	$a4,.L0db43d38
    sltiu	$at,$s2,10241
    beqz	$at,.L0db43d44
    # Line 315
    ld	$a3,0($sp)
    lw	$v1,16($v0)
    # Line 316
    b	.L0db43cfc
    # Line 315
    sw	$v1,0($a3)
.L0db43cf0:
    # Line 312
    ld	$at,0($sp)
    lw	$a4,12($v0)
    sw	$a4,0($at)
.L0db43cfc:
    ld	$gp,24($sp)
    # Line 347
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db43d14:
    # Line 301
    li	$a0,0x8072
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0db43db0
    sltu	$a3,$a0,$s2
    bnez	$a3,.L0db43d44
    # Line 309
    ld	$at,0($sp)
    lw	$a4,8($v0)
    # Line 310
    b	.L0db43cfc
    # Line 309
    sw	$a4,0($at)
.L0db43d38:
    # Line 301
    li	$v1,4100
    beq	$s2,$v1,.L0db43e58
    sd	$v0,48($sp)
.L0db43d44:
    # Line 344
    # lw $t9, -27320($gp) # &__glSetError
.L0db43d48:
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 345
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db43d6c:
    # Line 329
    # lw $t9, -25292($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    jal	__glLookUpTextureTexobjs
    move	$a1,$s1
    # Line 330
    lwc1	$f14,3304($s0)
    lwc1	$f13,4($v0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$a4,0($sp)
    mfc1	$a3,$f0
    ld	$ra,40($sp)
    # Line 332
    b	.L0db43cfc
    # Line 330
    sw	$a3,0($a4)
.L0db43db0:
    # Line 301
    li	$at,0x8067
    bne	$s2,$at,.L0db43d48
    # Line 344
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 336
    # lw $t9, -25284($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    move	$a1,$s1
    # Line 337
    ld	$v1,0($sp)
    lbu	$v0,12($v0)
    ld	$ra,40($sp)
    # Line 339
    b	.L0db43cfc
    # Line 337
    sw	$v0,0($v1)
.L0db43de0:
    # Line 318
    ld	$a4,0($sp)
    li	$a3,33
    # Line 319
    b	.L0db43cfc
    # Line 318
    sw	$a3,0($a4)
.L0db43df0:
    # Line 292
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db43e18:
    # Line 297
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 298
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db43e40:
    # Line 301
    li	$at,10242
    bne	$s2,$at,.L0db43d44
    # Line 303
    ld	$a3,0($sp)
    lw	$v1,0($v0)
    # Line 304
    b	.L0db43cfc
    # Line 303
    sw	$v1,0($a3)
.L0db43e58:
    ld	$s1,48($sp)
    # Line 321
    lwc1	$f14,3304($s0)
    lwc1	$f13,152($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a5,0($sp)
    mfc1	$a4,$f15
    nop
    sw	$a4,0($a5)
    # Line 322
    lwc1	$f14,3304($s0)
    lwc1	$f13,156($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a7,0($sp)
    mfc1	$a6,$f15
    nop
    sw	$a6,4($a7)
    # Line 323
    lwc1	$f14,3304($s0)
    lwc1	$f13,160($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t1,0($sp)
    mfc1	$t0,$f15
    nop
    sw	$t0,8($t1)
    # Line 324
    lwc1	$f14,3304($s0)
    lwc1	$f13,164($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$at,0($sp)
    mfc1	$ra,$f0
    nop
    sw	$ra,12($at)
    # Line 325
    b	.L0db43cfc
    ld	$ra,40($sp)
.end __glim_GetTexParameteriv

# Function: __glim_GetTexLevelParameterfv
# Declared: Line 351 (Source lines: 353-416)
# Address: 0x0db43f24 - 0x0db442c0 (Size: 924 bytes, Frame: 208)
.globl __glim_GetTexLevelParameterfv
.ent __glim_GetTexLevelParameterfv
__glim_GetTexLevelParameterfv:
    # Line 356
    li	$v1,1
    # Line 353
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s2,8($sp)
    # Line 356
    lw	$s2,__glCurrentContext
    sd	$a3,0($sp)
    sd	$s0,32($sp)
    # Line 353
    move	$s0,$a2
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    move	$v0,$a0
    # Line 356
    lw	$at,__glBeginMode
    # Line 353
    lui	$a0,0xc
    addiu	$a0,$a0,-22668
    # Line 356
    beq	$at,$v1,.L0db44184
    # Line 353
    addu	$gp,$t9,$a0
    # Line 358
    # lw $t9, -25288($gp) # &__glLookUpTexture
    move	$a0,$s2
    jal	__glLookUpTexture
    move	$a1,$v0
    move	$a1,$v0
    beqz	$v0,.L0db441d4
    ld	$ra,40($sp)
    # Line 364
    bltz	$s1,.L0db4411c
    # Line 365
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 364
    lw	$a4,3436($s2)
    slt	$a4,$s1,$a4
    beqz	$a4,.L0db44118
    # Line 416
    ld	$s2,8($sp)
    # Line 368
    li	$a2,0x805d
    sltu	$a5,$s0,$a2
    lw	$a0,228($v0)
    sll	$a4,$s1,0x2
    subu	$a4,$a4,$s1
    sll	$a4,$a4,0x3
    addu	$a4,$a4,$s1
    sll	$a4,$a4,0x2
    bnez	$a5,.L0db4402c
    addu	$a0,$a0,$a4
    # Line 370
    sltu	$a5,$a2,$s0
    beqz	$a5,.L0db44070
    li	$v0,0x8060
    sltu	$at,$s0,$v0
    bnez	$at,.L0db440e4
    sltu	$v1,$v0,$s0
    beqz	$v1,.L0db4424c
    li	$v0,0x8071
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0db44280
    sltu	$a5,$v0,$s0
    bnez	$a5,.L0db441b0
    # Line 413
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 382
    lw	$at,232($a1)
    slti	$at,$at,3
    beqz	$at,.L0db442a8
    lw	$v0,12($a0)
    # Line 383
    lw	$a4,56($a0)
    addu	$a4,$a4,$a4
    subu	$a4,$v0,$a4
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$v1,0($sp)
    b	.L0db44088
    swc1	$f0,0($v1)
.L0db4402c:
    # Line 370
    sltiu	$a5,$s0,4099
    bnez	$a5,.L0db4409c
    sltiu	$at,$s0,4100
    bnez	$at,.L0db44168
    li	$v0,0x805c
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0db441fc
    sltu	$a4,$v0,$s0
    bnez	$a4,.L0db441b0
    # Line 413
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 395
    lw	$at,72($a0)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$a5,0($sp)
    # Line 396
    b	.L0db44088
    # Line 395
    swc1	$f1,0($a5)
.L0db44070:
    # Line 398
    ld	$v1,0($sp)
    lw	$a4,76($a0)
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($v1)
.L0db44088:
    # Line 416
    ld	$s1,16($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db4409c:
    # Line 370
    sltiu	$a5,$s0,4097
    bnez	$a5,.L0db44140
    sltiu	$at,$s0,4098
    beqz	$at,.L0db441b0
    # Line 413
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 375
    lw	$v0,232($a1)
    slti	$v0,$v0,2
    beqz	$v0,.L0db44268
    lw	$v0,8($a0)
    # Line 376
    lw	$a4,56($a0)
    addu	$a4,$a4,$a4
    subu	$a4,$v0,$a4
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$v1,0($sp)
    b	.L0db44088
    swc1	$f3,0($v1)
.L0db440e4:
    # Line 370
    li	$v0,0x805f
    sltu	$a5,$s0,$v0
    bnez	$a5,.L0db44224
    sltu	$at,$v0,$s0
    bnez	$at,.L0db441b0
    # Line 413
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 404
    lw	$a4,84($a0)
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$v1,0($sp)
    # Line 405
    b	.L0db44088
    # Line 404
    swc1	$f0,0($v1)
.L0db44118:
    # Line 365
    # lw $t9, -27320($gp) # &__glSetError
.L0db4411c:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 366
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db44140:
    # Line 370
    li	$a5,4096
    bne	$s0,$a5,.L0db441b0
    # Line 413
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 372
    lw	$v1,4($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$at,0($sp)
    # Line 373
    b	.L0db44088
    # Line 372
    swc1	$f1,0($at)
.L0db44168:
    # Line 389
    ld	$a4,0($sp)
    lw	$a5,60($a0)
    mtc1	$a5,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 390
    b	.L0db44088
    # Line 389
    swc1	$f2,0($a4)
.L0db44184:
    # Line 356
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
    # Line 413
    # lw $t9, -27320($gp) # &__glSetError
.L0db441b0:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 414
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db441d4:
    # Line 361
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 362
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db441fc:
    # Line 370
    li	$at,4101
    bne	$s0,$at,.L0db441b0
    # Line 413
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 392
    lw	$a4,56($a0)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$v1,0($sp)
    # Line 393
    b	.L0db44088
    # Line 392
    swc1	$f3,0($v1)
.L0db44224:
    # Line 370
    li	$a5,0x805e
    bne	$s0,$a5,.L0db441b0
    # Line 413
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 401
    lw	$v1,80($a0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$at,0($sp)
    # Line 402
    b	.L0db44088
    # Line 401
    swc1	$f0,0($at)
.L0db4424c:
    # Line 407
    lw	$a5,88($a0)
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$a4,0($sp)
    # Line 408
    b	.L0db44088
    # Line 407
    swc1	$f1,0($a4)
.L0db44268:
    # Line 378
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$at,0($sp)
    b	.L0db44088
    swc1	$f2,0($at)
.L0db44280:
    # Line 370
    li	$v1,0x8061
    bne	$s0,$v1,.L0db441b0
    # Line 413
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 410
    lw	$a5,92($a0)
    mtc1	$a5,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$a4,0($sp)
    # Line 411
    b	.L0db44088
    # Line 410
    swc1	$f3,0($a4)
.L0db442a8:
    # Line 385
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$at,0($sp)
    b	.L0db44088
    swc1	$f0,0($at)
.end __glim_GetTexLevelParameterfv

# Function: __glim_GetTexLevelParameteriv
# Declared: Line 418 (Source lines: 420-483)
# Address: 0x0db442c0 - 0x0db445a8 (Size: 744 bytes, Frame: 208)
.globl __glim_GetTexLevelParameteriv
.ent __glim_GetTexLevelParameteriv
__glim_GetTexLevelParameteriv:
    # Line 423
    li	$v1,1
    # Line 420
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s2,8($sp)
    # Line 423
    lw	$s2,__glCurrentContext
    sd	$a3,0($sp)
    sd	$s0,32($sp)
    # Line 420
    move	$s0,$a2
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    move	$v0,$a0
    # Line 423
    lw	$at,__glBeginMode
    # Line 420
    lui	$a0,0xc
    addiu	$a0,$a0,-23592
    # Line 423
    beq	$at,$v1,.L0db444c0
    # Line 420
    addu	$gp,$t9,$a0
    # Line 425
    # lw $t9, -25288($gp) # &__glLookUpTexture
    move	$a0,$s2
    jal	__glLookUpTexture
    move	$a1,$v0
    move	$a1,$v0
    beqz	$v0,.L0db44510
    ld	$ra,40($sp)
    # Line 431
    bltz	$s1,.L0db44474
    # Line 432
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 431
    lw	$a4,3436($s2)
    slt	$a4,$s1,$a4
    beqz	$a4,.L0db44470
    # Line 483
    ld	$s2,8($sp)
    # Line 435
    li	$a2,0x805d
    sltu	$a5,$s0,$a2
    lw	$a0,228($v0)
    sll	$a4,$s1,0x2
    subu	$a4,$a4,$s1
    sll	$a4,$a4,0x3
    addu	$a4,$a4,$s1
    sll	$a4,$a4,0x2
    bnez	$a5,.L0db443bc
    addu	$a0,$a0,$a4
    # Line 437
    sltu	$a5,$a2,$s0
    beqz	$a5,.L0db443f0
    li	$v0,0x8060
    sltu	$at,$s0,$v0
    bnez	$at,.L0db4444c
    sltu	$v1,$v0,$s0
    beqz	$v1,.L0db44568
    li	$v0,0x8071
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0db44584
    sltu	$a5,$v0,$s0
    bnez	$a5,.L0db444ec
    # Line 480
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 449
    lw	$at,232($a1)
    slti	$at,$at,3
    beqz	$at,.L0db4459c
    lw	$v0,12($a0)
    # Line 450
    lw	$v1,56($a0)
    ld	$a4,0($sp)
    addu	$v1,$v1,$v1
    subu	$v1,$v0,$v1
    b	.L0db443fc
    sw	$v1,0($a4)
.L0db443bc:
    # Line 437
    sltiu	$a4,$s0,4099
    bnez	$a4,.L0db44410
    sltiu	$a5,$s0,4100
    bnez	$a5,.L0db444b0
    li	$v0,0x805c
    sltu	$at,$s0,$v0
    bnez	$at,.L0db44538
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0db444e8
    # Line 462
    ld	$a5,0($sp)
    lw	$a4,72($a0)
    # Line 463
    b	.L0db443fc
    # Line 462
    sw	$a4,0($a5)
.L0db443f0:
    # Line 465
    ld	$v1,0($sp)
    lw	$at,76($a0)
    sw	$at,0($v1)
.L0db443fc:
    # Line 483
    ld	$s1,16($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db44410:
    # Line 437
    sltiu	$a4,$s0,4097
    bnez	$a4,.L0db44498
    sltiu	$a5,$s0,4098
    beqz	$a5,.L0db444ec
    # Line 480
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 442
    lw	$at,232($a1)
    slti	$at,$at,2
    beqz	$at,.L0db44578
    lw	$v0,8($a0)
    # Line 443
    lw	$v1,56($a0)
    ld	$a4,0($sp)
    addu	$v1,$v1,$v1
    subu	$v1,$v0,$v1
    b	.L0db443fc
    sw	$v1,0($a4)
.L0db4444c:
    # Line 437
    li	$v0,0x805f
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0db44550
    sltu	$a5,$v0,$s0
    bnez	$a5,.L0db444e8
    # Line 471
    ld	$v1,0($sp)
    lw	$at,84($a0)
    # Line 472
    b	.L0db443fc
    # Line 471
    sw	$at,0($v1)
.L0db44470:
    # Line 432
    # lw $t9, -27320($gp) # &__glSetError
.L0db44474:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 433
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db44498:
    # Line 437
    li	$a4,4096
    bne	$s0,$a4,.L0db444e8
    # Line 439
    ld	$at,0($sp)
    lw	$a5,4($a0)
    # Line 440
    b	.L0db443fc
    # Line 439
    sw	$a5,0($at)
.L0db444b0:
    # Line 456
    ld	$a4,0($sp)
    lw	$v1,60($a0)
    # Line 457
    b	.L0db443fc
    # Line 456
    sw	$v1,0($a4)
.L0db444c0:
    # Line 423
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db444e8:
    # Line 480
    # lw $t9, -27320($gp) # &__glSetError
.L0db444ec:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 481
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db44510:
    # Line 428
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 429
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db44538:
    # Line 437
    li	$a5,4101
    bne	$s0,$a5,.L0db444e8
    # Line 459
    ld	$v1,0($sp)
    lw	$at,56($a0)
    # Line 460
    b	.L0db443fc
    # Line 459
    sw	$at,0($v1)
.L0db44550:
    # Line 437
    li	$a4,0x805e
    bne	$s0,$a4,.L0db444e8
    # Line 468
    ld	$at,0($sp)
    lw	$a5,80($a0)
    # Line 469
    b	.L0db443fc
    # Line 468
    sw	$a5,0($at)
.L0db44568:
    # Line 474
    ld	$a4,0($sp)
    lw	$v1,88($a0)
    # Line 475
    b	.L0db443fc
    # Line 474
    sw	$v1,0($a4)
.L0db44578:
    ld	$a5,0($sp)
    b	.L0db443fc
    # Line 445
    sw	$v0,0($a5)
.L0db44584:
    # Line 437
    li	$at,0x8061
    bne	$s0,$at,.L0db444e8
    # Line 477
    ld	$a4,0($sp)
    lw	$v1,92($a0)
    # Line 478
    b	.L0db443fc
    # Line 477
    sw	$v1,0($a4)
.L0db4459c:
    ld	$a5,0($sp)
    b	.L0db443fc
    # Line 452
    sw	$v0,0($a5)
.end __glim_GetTexLevelParameteriv

# Function: __glim_GetTexFilterFuncSGIS
# Declared: Line 486 (Source lines: 486-504)
# Address: 0x0db445a8 - 0x0db446b8 (Size: 272 bytes, Frame: 192)
.globl __glim_GetTexFilterFuncSGIS
.ent __glim_GetTexFilterFuncSGIS
__glim_GetTexFilterFuncSGIS:
    # Line 486
    li	$v1,1
    addiu	$sp,$sp,-64
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    sd	$gp,16($sp)
    move	$v0,$a0
    lw	$at,__glBeginMode
    lui	$a0,0xc
    addiu	$a0,$a0,-24336
    beq	$at,$v1,.L0db44698
    addu	$gp,$t9,$a0
    # Line 489
    li	$a3,3552
    beq	$v0,$a3,.L0db44604
    li	$a4,3553
    beq	$v0,$a4,.L0db44604
    sd	$ra,24($sp)
    # Line 492
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 493
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db44604:
    # Line 496
    # lw $t9, -25296($gp) # &__glLookUpTextureParams
    move	$a1,$v0
    sd	$ra,24($sp)
    jal	__glLookUpTextureParams
    lw	$a0,__glCurrentContext
    # Line 502
    ld	$a0,8($sp)
    # Line 497
    beqz	$v0,.L0db4467c
    ld	$ra,24($sp)
    ld	$at,0($sp)
    li	$v1,0x8146
    bne	$at,$v1,.L0db4467c
    # Line 499
    addiu	$a5,$v0,132
    # Line 501
    addiu	$a1,$v0,4
    # Line 502
    lwc1	$f0,20($v0)
    ld	$gp,16($sp)
    addiu	$a0,$a0,4
    swc1	$f0,-4($a0)
.L0db44648:
    lwc1	$f0,20($a1)
    swc1	$f0,0($a0)
    lwc1	$f3,24($a1)
    swc1	$f3,4($a0)
    lwc1	$f2,28($a1)
    swc1	$f2,8($a0)
    addiu	$a0,$a0,16
    lwc1	$f1,32($a1)
    # Line 501
    addiu	$a1,$a1,16
    bne	$a1,$a5,.L0db44648
    # Line 502
    swc1	$f1,-4($a0)
    # Line 504
    jr	$ra
    addiu	$sp,$sp,64
.L0db4467c:
    # Line 498
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 499
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db44698:
    # Line 489
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_GetTexFilterFuncSGIS

# Function: __glim_GetClipPlane
# Declared: Line 508 (Source lines: 509-522)
# Address: 0x0db446b8 - 0x0db447ac (Size: 244 bytes, Frame: 32)
.globl __glim_GetClipPlane
.ent __glim_GetClipPlane
__glim_GetClipPlane:
    # Line 511
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 509
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 511
    lw	$at,__glBeginMode
    # Line 509
    lui	$v1,0xc
    addiu	$v1,$v1,-24608
    # Line 511
    beq	$at,$v0,.L0db4478c
    # Line 509
    addu	$gp,$t9,$v1
    # Line 514
    slti	$a2,$a0,12288
    bnez	$a2,.L0db44770
    # Line 515
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 514
    lw	$v0,3332($a3)
    addiu	$at,$a0,-12288
    slt	$at,$at,$v0
    beqz	$at,.L0db4476c
    # Line 518
    sll	$a2,$a0,0x4
    lw	$v1,1652($a3)
    lui	$a0,0xfffd
    addu	$v1,$v1,$a2
    addu	$v1,$v1,$a0
    lwc1	$f3,0($v1)
    cvt.d.s	$f3,$f3
    sdc1	$f3,0($a1)
    # Line 519
    lw	$v0,1652($a3)
    addu	$v0,$v0,$a2
    addu	$v0,$v0,$a0
    lwc1	$f2,4($v0)
    cvt.d.s	$f2,$f2
    sdc1	$f2,8($a1)
    # Line 520
    lw	$at,1652($a3)
    addu	$at,$at,$a2
    addu	$at,$at,$a0
    lwc1	$f1,8($at)
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a1)
    # Line 521
    lw	$v1,1652($a3)
    addu	$v1,$v1,$a2
    addu	$v1,$v1,$a0
    lwc1	$f0,12($v1)
    ld	$gp,0($sp)
    # Line 522
    addiu	$sp,$sp,32
    # Line 521
    cvt.d.s	$f0,$f0
    # Line 522
    jr	$ra
    # Line 521
    sdc1	$f0,24($a1)
.L0db4476c:
    # Line 515
    # lw $t9, -27320($gp) # &__glSetError
.L0db44770:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 516
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4478c:
    # Line 511
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetClipPlane

# Function: __glInitImagePack
# Declared: Line 526 (Source lines: 529-554)
# Address: 0x0db447ac - 0x0db4483c (Size: 144 bytes, Frame: 208)
.globl __glInitImagePack
.ent __glInitImagePack
__glInitImagePack:
    # Line 534
    li	$at,1
    # Line 535
    li	$v0,2
    # Line 529
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    lui	$a7,0xc
    addiu	$a7,$a7,-24852
    addu	$gp,$t9,$a7
    # Line 530
    mtc1	$zero,$f1
    # Line 537
    li	$v1,4
    sd	$ra,0($sp)
    # Line 530
    swc1	$f1,196($a1)
    # Line 553
    # lw $t9, -28844($gp) # &__glLoadPackModes
    # Line 531
    lwc1	$f0,3284($a0)
    # Line 552
    sw	$a6,88($a1)
    # Line 551
    sw	$a5,84($a1)
    # Line 550
    sw	$a4,80($a1)
    # Line 548
    sw	$a3,64($a1)
    # Line 547
    sw	$a2,60($a1)
    # Line 543
    sw	$zero,44($a1)
    # Line 541
    sw	$zero,40($a1)
    # Line 540
    sw	$zero,56($a1)
    # Line 539
    sw	$zero,52($a1)
    # Line 538
    sw	$zero,48($a1)
    # Line 537
    sw	$v1,68($a1)
    # Line 535
    sw	$v0,432($a1)
    # Line 534
    sw	$at,176($a1)
    # Line 533
    sw	$a3,172($a1)
    # Line 532
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 553
    jal	__glLoadPackModes
    # Line 531
    swc1	$f0,160($a1)
    # Line 554
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitImagePack

# Function: __glim_GetTexImage
# Declared: Line 556 (Source lines: 558-657)
# Address: 0x0db4483c - 0x0db44d60 (Size: 1316 bytes, Frame: 240)
.globl __glim_GetTexImage
.ent __glim_GetTexImage
__glim_GetTexImage:
    # Line 563
    li	$v0,1
    # Line 558
    addiu	$sp,$sp,-624
    sd	$ra,560($sp)
    sd	$s0,512($sp)
    # Line 563
    lw	$s0,__glCurrentContext
    sd	$a4,504($sp)
    sd	$s3,544($sp)
    # Line 558
    move	$s3,$a3
    sd	$s2,552($sp)
    move	$s2,$a2
    sd	$s4,528($sp)
    move	$s4,$a1
    sd	$s1,520($sp)
    move	$s1,$a0
    sd	$gp,536($sp)
    # Line 563
    lw	$at,__glBeginMode
    # Line 558
    lui	$v1,0xc
    addiu	$v1,$v1,-24996
    # Line 563
    beq	$at,$v0,.L0db44c68
    # Line 558
    addu	$gp,$t9,$v1
    # Line 565
    # lw $t9, -25288($gp) # &__glLookUpTexture
    sd	$s5,568($sp)
    move	$a0,$s0
    jal	__glLookUpTexture
    move	$a1,$s1
    move	$s5,$v0
    # Line 567
    beqz	$v0,.L0db44b14
    ld	$ra,560($sp)
    li	$t0,0x8063
    beq	$s1,$t0,.L0db44b14
    li	$t1,0x8064
    beq	$s1,$t1,.L0db44b14
    li	$at,0x8070
    beq	$s1,$at,.L0db44b18
    # Line 570
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 574
    bltz	$s4,.L0db44b8c
    # Line 575
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 574
    lw	$v1,3436($s0)
    slt	$v1,$s4,$v1
    beqz	$v1,.L0db44b88
    # Line 576
    sltiu	$t0,$s2,6407
    bnez	$t0,.L0db44910
    # Line 578
    sltiu	$t1,$s2,6408
    bnez	$t1,.L0db44920
    sltiu	$at,$s2,6410
    bnez	$at,.L0db44bd0
    sltiu	$v1,$s2,6411
    bnez	$v1,.L0db44920
    li	$t0,0x8000
    beq	$s2,$t0,.L0db44924
    # Line 592
    sltiu	$v1,$s3,5126
    b	.L0db44b58
    # Line 590
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db44910:
    # Line 578
    sltiu	$t1,$s2,6405
    bnez	$t1,.L0db44aa8
    sltiu	$at,$s2,6406
    beqz	$at,.L0db44b48
.L0db44920:
    # Line 592
    sltiu	$v1,$s3,5126
.L0db44924:
    bnez	$v1,.L0db4498c
    # Line 593
    sltiu	$t0,$s3,5127
    bnez	$t0,.L0db4499c
    li	$v0,0x8034
    sltu	$t1,$s3,$v0
    bnez	$t1,.L0db44c48
    sltu	$at,$v0,$s3
    bnez	$at,.L0db44d2c
    # Line 615
    li	$v1,6408
.L0db44948:
    beq	$s2,$v1,.L0db4499c
    li	$t0,0x8000
    beq	$s2,$t0,.L0db449a0
    # Line 629
    sll	$a0,$s4,0x2
    # Line 620
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1282
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 621
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db4498c:
    # Line 593
    sltiu	$t1,$s3,5123
    bnez	$t1,.L0db44ac4
    sltiu	$at,$s3,5124
    beqz	$at,.L0db44c2c
.L0db4499c:
    # Line 629
    sll	$a0,$s4,0x2
.L0db449a0:
    # Line 631
    lw	$a1,232($s5)
    # Line 629
    lw	$v0,228($s5)
    # Line 631
    slti	$v1,$a1,2
    # Line 629
    subu	$a0,$a0,$s4
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$s4
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    # Line 631
    lw	$a0,8($v0)
    beqz	$v1,.L0db449dc
    lw	$a2,4($v0)
    # Line 633
    lw	$a3,56($v0)
    addu	$a3,$a3,$a3
    b	.L0db449e0
    subu	$a3,$a0,$a3
.L0db449dc:
    # Line 635
    move	$a3,$a0
.L0db449e0:
    # Line 639
    beqzl	$a2,.L0db44c9c
    ld	$gp,536($sp)
    beqz	$a3,.L0db44c98
    slti	$t0,$a1,3
    beqz	$t0,.L0db44a08
    lw	$a0,12($v0)
    # Line 642
    lw	$a4,56($v0)
    addu	$a4,$a4,$a4
    b	.L0db44a0c
    subu	$a4,$a0,$a4
.L0db44a08:
    # Line 644
    move	$a4,$a0
.L0db44a0c:
    # Line 646
    move	$a0,$s0
    ld	$a7,504($sp)
    # lw $t9, -25048($gp) # &__glInitTexDestPack
    move	$a6,$s3
    move	$a5,$s2
    jal	__glInitTexDestPack
    addiu	$a1,$sp,0
    # Line 648
    move	$a0,$s0
    # lw $t9, -25056($gp) # &__glInitTexImageGet
    move	$a3,$s4
    move	$a2,$s5
    jal	__glInitTexImageGet
    addiu	$a1,$sp,0
    lw	$t0,232($s5)
    slti	$t0,$t0,3
    beqz	$t0,.L0db44ae8
    # Line 650
    nop	# was lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    addiu	$a1,$sp,0
    jal	__glInitPacker
    ld	$s5,568($sp)
    # Line 651
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 656
    lw	$t9,12632($s0)
.L0db44a74:
    move	$a0,$s0
    li	$a2,1
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,560($sp)
    # Line 657
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    ld	$gp,536($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db44aa8:
    # Line 578
    sltiu	$t1,$s2,6404
    bnez	$t1,.L0db44bbc
    sltiu	$at,$s2,6405
    beqz	$at,.L0db44b58
    # Line 590
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db44924
    # Line 592
    sltiu	$v1,$s3,5126
.L0db44ac4:
    # Line 593
    sltiu	$v1,$s3,5121
    bnez	$v1,.L0db44bec
    sltiu	$t0,$s3,5122
    bnez	$t0,.L0db4499c
    li	$t1,5122
    bne	$s3,$t1,.L0db44bfc
    # Line 625
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db449a0
    # Line 629
    sll	$a0,$s4,0x2
.L0db44ae8:
    # Line 653
    # lw $t9, -29072($gp) # &__glInitPacker3D
    move	$a0,$s0
    addiu	$a1,$sp,0
    jal	__glInitPacker3D
    ld	$s5,568($sp)
    # Line 654
    # lw $t9, -28572($gp) # &__glInitUnpacker3D
    move	$a0,$s0
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,0
    b	.L0db44a74
    # Line 656
    lw	$t9,12632($s0)
.L0db44b14:
    # Line 570
    # lw $t9, -27320($gp) # &__glSetError
.L0db44b18:
    li	$a0,1280
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 571
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db44b48:
    # Line 578
    li	$at,6406
    beq	$s2,$at,.L0db44924
    # Line 592
    sltiu	$v1,$s3,5126
    # Line 590
    # lw $t9, -27320($gp) # &__glSetError
.L0db44b58:
    li	$a0,1281
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 591
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db44b88:
    # Line 575
    # lw $t9, -27320($gp) # &__glSetError
.L0db44b8c:
    li	$a0,1281
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 576
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db44bbc:
    # Line 578
    li	$v1,6403
    bne	$s2,$v1,.L0db44b58
    # Line 590
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db44924
    # Line 592
    sltiu	$v1,$s3,5126
.L0db44bd0:
    # Line 578
    sltiu	$t0,$s2,6409
    bnez	$t0,.L0db44cbc
    sltiu	$t1,$s2,6410
    beqz	$t1,.L0db44b58
    # Line 590
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db44924
    # Line 592
    sltiu	$v1,$s3,5126
.L0db44bec:
    # Line 593
    li	$at,5120
    beq	$s3,$at,.L0db449a0
    # Line 629
    sll	$a0,$s4,0x2
.L0db44bf8:
    # Line 625
    # lw $t9, -27320($gp) # &__glSetError
.L0db44bfc:
    li	$a0,1281
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 626
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db44c2c:
    # Line 593
    sltiu	$v1,$s3,5125
    bnez	$v1,.L0db44cd0
    sltiu	$t0,$s3,5126
    beqz	$t0,.L0db44bfc
    # Line 625
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db449a0
    # Line 629
    sll	$a0,$s4,0x2
.L0db44c48:
    # Line 593
    li	$v0,0x8033
    sltu	$t1,$s3,$v0
    bnez	$t1,.L0db44ce4
    sltu	$at,$v0,$s3
    bnez	$at,.L0db44bfc
    # Line 625
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db44948
    # Line 615
    li	$v1,6408
.L0db44c68:
    # Line 563
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,536($sp)
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db44c98:
    ld	$gp,536($sp)
.L0db44c9c:
    # Line 639
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    ld	$s5,568($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db44cbc:
    # Line 578
    li	$v1,6408
    bne	$s2,$v1,.L0db44b58
    # Line 590
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db44924
    # Line 592
    sltiu	$v1,$s3,5126
.L0db44cd0:
    # Line 593
    li	$t0,5124
    bne	$s3,$t0,.L0db44bfc
    # Line 625
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db449a0
    # Line 629
    sll	$a0,$s4,0x2
.L0db44ce4:
    # Line 593
    li	$t1,0x8032
    bne	$s3,$t1,.L0db44bf8
    # Line 603
    li	$at,6407
    beq	$s2,$at,.L0db449a0
    # Line 629
    sll	$a0,$s4,0x2
    # Line 607
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1282
    jal	__glSetError
    ld	$s5,568($sp)
    ld	$gp,536($sp)
    # Line 608
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    ld	$s2,552($sp)
    ld	$ra,560($sp)
    ld	$s3,544($sp)
    ld	$s4,528($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0db44d2c:
    # Line 593
    li	$v0,0x8036
    sltu	$v1,$s3,$v0
    bnez	$v1,.L0db44d4c
    sltu	$t0,$v0,$s3
    bnez	$t0,.L0db44bfc
    # Line 625
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db44948
    # Line 615
    li	$v1,6408
.L0db44d4c:
    # Line 593
    li	$t1,0x8035
    bne	$s3,$t1,.L0db44bfc
    # Line 625
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db44948
    # Line 615
    li	$v1,6408
.end __glim_GetTexImage

# Function: __glim_GetPolygonStipple
# Declared: Line 661 (Source lines: 662-674)
# Address: 0x0db44d60 - 0x0db44e30 (Size: 208 bytes, Frame: 160)
.globl __glim_GetPolygonStipple
.ent __glim_GetPolygonStipple
__glim_GetPolygonStipple:
    # Line 662
    move	$a6,$a0
    # Line 664
    li	$v0,1
    # Line 662
    addiu	$sp,$sp,-544
    sd	$ra,520($sp)
    sd	$s0,512($sp)
    # Line 664
    lw	$s0,__glCurrentContext
    sd	$gp,504($sp)
    lw	$at,__glBeginMode
    # Line 662
    lui	$v1,0xc
    addiu	$v1,$v1,-26312
    # Line 664
    beq	$at,$v0,.L0db44e10
    # Line 662
    addu	$gp,$t9,$v1
    # Line 669
    li	$a5,6656
    li	$a4,6400
    li	$a3,32
    li	$a2,32
    addiu	$a1,$sp,0
    move	$a0,$s0
    # Line 666
    addiu	$a7,$s0,488
    # Line 667
    li	$t0,6656
    # Line 668
    li	$t1,6400
    # Line 669
    # lw $t9, -26888($gp) # &__glInitImagePack
    # Line 668
    sw	$t1,0($sp)
    # Line 667
    sw	$t0,4($sp)
    # Line 669
    bal __glInitImagePack
    # Line 666
    sw	$a7,8($sp)
    # Line 671
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 672
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 673
    lw	$t9,12632($s0)
    move	$a0,$s0
    li	$a2,1
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 674
    ld	$ra,520($sp)
    ld	$gp,504($sp)
    ld	$s0,512($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0db44e10:
    # Line 664
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,520($sp)
    ld	$gp,504($sp)
    ld	$s0,512($sp)
    jr	$ra
    addiu	$sp,$sp,544
.end __glim_GetPolygonStipple

# Function: __glim_GetLightfv
# Declared: Line 678 (Source lines: 680-732)
# Address: 0x0db44e30 - 0x0db45000 (Size: 464 bytes, Frame: 48)
.globl __glim_GetLightfv
.ent __glim_GetLightfv
__glim_GetLightfv:
    # Line 683
    lw	$a4,__glCurrentContext
    # Line 680
    move	$a5,$a2
    # Line 683
    li	$v0,1
    # Line 680
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 683
    lw	$at,__glBeginMode
    # Line 680
    lui	$v1,0xc
    addiu	$v1,$v1,-26520
    # Line 683
    beq	$at,$v0,.L0db44fe0
    # Line 680
    addu	$gp,$t9,$v1
    # Line 686
    slti	$a3,$a0,16384
    bnez	$a3,.L0db44ec4
    # Line 687
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 686
    lw	$v0,3328($a4)
    addiu	$at,$a0,-16384
    slt	$at,$at,$v0
    beqz	$at,.L0db44ec0
    # Line 691
    la	$a3,sub_0dbf0000
    addiu	$a3,$a3,-3048
    addiu	$a2,$a1,-4608
    sltiu	$v0,$a2,10
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    lw	$a6,1488($a4)
    sll	$at,$a0,0x3
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lui	$at,0xffe3
    beqz	$v0,.L0db44ee0
    addu	$a6,$a6,$at
    lw	$a3,%lo(jtbl_0dbef418)($a2)
    jr	$a3
    # Line 700
    move	$a0,$a4
.L0db44ec0:
    # Line 687
    # lw $t9, -27320($gp) # &__glSetError
.L0db44ec4:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 688
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db44ee0:
    # Line 729
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 730
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db44f00:
    # Line 694
    move	$a0,$a4
    # lw $t9, -26684($gp) # &__glUnScaleColorf
    move	$a1,$a5
    sd	$ra,8($sp)
    jal	__glUnScaleColorf
    move	$a2,$a6
    b	.L0db44f28
    ld	$ra,8($sp)
.L0db44f20:
    # Line 720
    lwc1	$f0,104($a6)
    swc1	$f0,0($a5)
.L0db44f28:
    ld	$gp,0($sp)
    # Line 732
    jr	$ra
    addiu	$sp,$sp,48
.L0db44f34:
    # Line 697
    move	$a0,$a4
    # lw $t9, -26684($gp) # &__glUnScaleColorf
    move	$a1,$a5
    sd	$ra,8($sp)
    jal	__glUnScaleColorf
    addiu	$a2,$a6,16
    b	.L0db44f28
    ld	$ra,8($sp)
.L0db44f54:
    # Line 700
    # lw $t9, -26684($gp) # &__glUnScaleColorf
    move	$a1,$a5
    sd	$ra,8($sp)
    jal	__glUnScaleColorf
    addiu	$a2,$a6,32
    b	.L0db44f28
    ld	$ra,8($sp)
.L0db44f70:
    # Line 703
    lwc1	$f0,64($a6)
    swc1	$f0,0($a5)
    # Line 704
    lwc1	$f3,68($a6)
    swc1	$f3,4($a5)
    # Line 705
    lwc1	$f2,72($a6)
    swc1	$f2,8($a5)
    # Line 706
    lwc1	$f1,76($a6)
    # Line 707
    b	.L0db44f28
    # Line 706
    swc1	$f1,12($a5)
.L0db44f94:
    # Line 709
    lwc1	$f3,80($a6)
    swc1	$f3,0($a5)
    # Line 710
    lwc1	$f2,84($a6)
    swc1	$f2,4($a5)
    # Line 711
    lwc1	$f1,88($a6)
    # Line 712
    b	.L0db44f28
    # Line 711
    swc1	$f1,8($a5)
.L0db44fb0:
    # Line 714
    lwc1	$f0,96($a6)
    # Line 715
    b	.L0db44f28
    # Line 714
    swc1	$f0,0($a5)
.L0db44fbc:
    # Line 717
    lwc1	$f1,100($a6)
    # Line 718
    b	.L0db44f28
    # Line 717
    swc1	$f1,0($a5)
.L0db44fc8:
    # Line 723
    lwc1	$f2,108($a6)
    # Line 724
    b	.L0db44f28
    # Line 723
    swc1	$f2,0($a5)
.L0db44fd4:
    # Line 726
    lwc1	$f3,112($a6)
    # Line 727
    b	.L0db44f28
    # Line 726
    swc1	$f3,0($a5)
.L0db44fe0:
    # Line 683
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetLightfv

# Function: __glim_GetLightiv
# Declared: Line 734 (Source lines: 736-790)
# Address: 0x0db45000 - 0x0db45248 (Size: 584 bytes, Frame: 48)
.globl __glim_GetLightiv
.ent __glim_GetLightiv
__glim_GetLightiv:
    # Line 739
    lw	$a7,__glCurrentContext
    # Line 736
    move	$a4,$a2
    # Line 739
    li	$v0,1
    # Line 736
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 739
    lw	$at,__glBeginMode
    # Line 736
    lui	$v1,0xc
    addiu	$v1,$v1,-26984
    # Line 739
    beq	$at,$v0,.L0db45228
    # Line 736
    addu	$gp,$t9,$v1
    # Line 742
    slti	$a3,$a0,16384
    bnez	$a3,.L0db45094
    # Line 743
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 742
    lw	$v0,3328($a7)
    addiu	$at,$a0,-16384
    slt	$at,$at,$v0
    beqz	$at,.L0db45090
    # Line 747
    la	$a3,sub_0dbf0000
    addiu	$a3,$a3,-3008
    addiu	$a2,$a1,-4608
    sltiu	$v0,$a2,10
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    lw	$t0,1488($a7)
    sll	$at,$a0,0x3
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$t0,$t0,$at
    lui	$at,0xffe3
    beqz	$v0,.L0db450b0
    addu	$t0,$t0,$at
    lw	$a3,%lo(jtbl_0dbef440)($a2)
    jr	$a3
    sd	$ra,8($sp)
.L0db45090:
    # Line 743
    # lw $t9, -27320($gp) # &__glSetError
.L0db45094:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 744
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db450b0:
    # Line 787
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 788
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db450d0:
    # Line 750
    # lw $t9, -26680($gp) # &__glUnScaleColori
    move	$a0,$a7
    move	$a1,$a4
    bal __glUnScaleColori
    move	$a2,$t0
    b	.L0db4510c
    ld	$ra,8($sp)
.L0db450ec:
    # Line 775
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -26836($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,104
    ld	$ra,8($sp)
.L0db4510c:
    ld	$gp,0($sp)
    # Line 790
    jr	$ra
    addiu	$sp,$sp,48
.L0db45118:
    # Line 753
    # lw $t9, -26680($gp) # &__glUnScaleColori
    move	$a0,$a7
    move	$a1,$a4
    bal __glUnScaleColori
    addiu	$a2,$t0,16
    b	.L0db4510c
    ld	$ra,8($sp)
.L0db45134:
    # Line 756
    # lw $t9, -26680($gp) # &__glUnScaleColori
    move	$a0,$a7
    move	$a1,$a4
    bal __glUnScaleColori
    addiu	$a2,$t0,32
    b	.L0db4510c
    ld	$ra,8($sp)
.L0db45150:
    # Line 759
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -26836($gp) # &__glConvertResult
    li	$a5,4
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,64
    b	.L0db4510c
    ld	$ra,8($sp)
.L0db45174:
    # Line 763
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -26836($gp) # &__glConvertResult
    li	$a5,3
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,80
    b	.L0db4510c
    ld	$ra,8($sp)
.L0db45198:
    # Line 767
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -26836($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,96
    b	.L0db4510c
    ld	$ra,8($sp)
.L0db451bc:
    # Line 771
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -26836($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,100
    b	.L0db4510c
    ld	$ra,8($sp)
.L0db451e0:
    # Line 779
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -26836($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,108
    b	.L0db4510c
    ld	$ra,8($sp)
.L0db45204:
    # Line 783
    move	$a0,$a7
    move	$a1,$zero
    # lw $t9, -26836($gp) # &__glConvertResult
    li	$a5,1
    li	$a3,3
    bal __glConvertResult
    addiu	$a2,$t0,112
    b	.L0db4510c
    ld	$ra,8($sp)
.L0db45228:
    # Line 739
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_GetLightiv

# Function: __glim_GetMaterialfv
# Declared: Line 794 (Source lines: 796-846)
# Address: 0x0db45248 - 0x0db453dc (Size: 404 bytes, Frame: 48)
.globl __glim_GetMaterialfv
.ent __glim_GetMaterialfv
__glim_GetMaterialfv:
    # Line 796
    move	$a5,$a2
    # Line 798
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 796
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 798
    lw	$at,__glBeginMode
    # Line 796
    lui	$v1,0xc
    addiu	$v1,$v1,-27568
    # Line 798
    beq	$at,$v0,.L0db4539c
    # Line 796
    addu	$gp,$t9,$v1
    # Line 800
    li	$a3,1028
    beq	$a0,$a3,.L0db452f4
    li	$at,1029
    beq	$a0,$at,.L0db452a0
    # Line 808
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 809
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db452a0:
    # Line 805
    addiu	$a6,$a4,1408
    # Line 812
    li	$v0,5635
.L0db452a8:
    beq	$a1,$v0,.L0db4532c
    li	$v1,5633
    beq	$a1,$v1,.L0db45348
    li	$a3,5632
    beq	$a1,$a3,.L0db453bc
    li	$at,4608
    beq	$a1,$at,.L0db45354
    li	$v0,4609
    beq	$a1,$v0,.L0db45378
    li	$v1,4610
    beq	$a1,$v1,.L0db45300
    # Line 843
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 844
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db452f4:
    # Line 802
    addiu	$a6,$a4,1328
    # Line 803
    b	.L0db452a8
    # Line 812
    li	$v0,5635
.L0db45300:
    # Line 837
    lwc1	$f3,32($a6)
    swc1	$f3,0($a5)
    # Line 838
    lwc1	$f2,36($a6)
    swc1	$f2,4($a5)
    # Line 839
    lwc1	$f1,40($a6)
    swc1	$f1,8($a5)
    # Line 840
    lwc1	$f0,44($a6)
    swc1	$f0,12($a5)
.L0db45320:
    ld	$gp,0($sp)
    # Line 846
    jr	$ra
    addiu	$sp,$sp,48
.L0db4532c:
    # Line 814
    lwc1	$f2,68($a6)
    swc1	$f2,0($a5)
    # Line 815
    lwc1	$f1,76($a6)
    swc1	$f1,4($a5)
    # Line 816
    lwc1	$f0,72($a6)
    # Line 817
    b	.L0db45320
    # Line 816
    swc1	$f0,8($a5)
.L0db45348:
    # Line 819
    lwc1	$f3,64($a6)
    # Line 820
    b	.L0db45320
    # Line 819
    swc1	$f3,0($a5)
.L0db45354:
    # Line 825
    lwc1	$f3,0($a6)
    swc1	$f3,0($a5)
    # Line 826
    lwc1	$f2,4($a6)
    swc1	$f2,4($a5)
    # Line 827
    lwc1	$f1,8($a6)
    swc1	$f1,8($a5)
    # Line 828
    lwc1	$f0,12($a6)
    # Line 829
    b	.L0db45320
    # Line 828
    swc1	$f0,12($a5)
.L0db45378:
    # Line 831
    lwc1	$f3,16($a6)
    swc1	$f3,0($a5)
    # Line 832
    lwc1	$f2,20($a6)
    swc1	$f2,4($a5)
    # Line 833
    lwc1	$f1,24($a6)
    swc1	$f1,8($a5)
    # Line 834
    lwc1	$f0,28($a6)
    # Line 835
    b	.L0db45320
    # Line 834
    swc1	$f0,12($a5)
.L0db4539c:
    # Line 798
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db453bc:
    # Line 822
    move	$a0,$a4
    # lw $t9, -26684($gp) # &__glUnScaleColorf
    move	$a1,$a5
    sd	$ra,8($sp)
    bal __glUnScaleColorf
    addiu	$a2,$a6,48
    b	.L0db45320
    ld	$ra,8($sp)
.end __glim_GetMaterialfv

# Function: __glim_GetMaterialiv
# Declared: Line 848 (Source lines: 850-900)
# Address: 0x0db453dc - 0x0db457ec (Size: 1040 bytes, Frame: 208)
.globl __glim_GetMaterialiv
.ent __glim_GetMaterialiv
__glim_GetMaterialiv:
    # Line 852
    lw	$a7,__glCurrentContext
    li	$v0,1
    # Line 850
    addiu	$sp,$sp,-80
    sd	$a2,8($sp)
    sd	$gp,24($sp)
    # Line 852
    lw	$at,__glBeginMode
    # Line 850
    lui	$v1,0xc
    addiu	$v1,$v1,-27972
    # Line 852
    beq	$at,$v0,.L0db45584
    # Line 850
    addu	$gp,$t9,$v1
    # Line 854
    li	$a3,1028
    beq	$a0,$a3,.L0db45494
    li	$at,1029
    beq	$a0,$at,.L0db45434
    # Line 862
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 863
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db45434:
    # Line 859
    addiu	$v0,$a7,1408
    sd	$v0,16($sp)
.L0db4543c:
    # Line 866
    li	$v1,5635
    beq	$a1,$v1,.L0db455a4
    li	$a3,5633
    beq	$a1,$a3,.L0db455d4
    li	$at,5632
    beq	$a1,$at,.L0db45604
    li	$v0,4608
    beq	$a1,$v0,.L0db45628
    li	$v1,4609
    beq	$a1,$v1,.L0db4570c
    ld	$v0,16($sp)
    sd	$ra,32($sp)
    li	$a3,4610
    beq	$a1,$a3,.L0db454a0
    sd	$a7,0($sp)
    # Line 897
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 898
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db45494:
    # Line 856
    addiu	$at,$a7,1328
    # Line 857
    b	.L0db4543c
    sd	$at,16($sp)
.L0db454a0:
    # Line 891
    ld	$v0,0($sp)
    ld	$v1,16($sp)
    lwc1	$f14,3304($v0)
    lwc1	$f13,32($v1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($v0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a3,8($sp)
    mfc1	$a2,$f15
    # Line 892
    ld	$a1,16($sp)
    ld	$a0,0($sp)
    # Line 891
    sw	$a2,0($a3)
    # Line 892
    lwc1	$f14,3304($a0)
    lwc1	$f13,36($a1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a7,8($sp)
    mfc1	$a6,$f15
    # Line 893
    ld	$a5,16($sp)
    ld	$a4,0($sp)
    # Line 892
    sw	$a6,4($a7)
    # Line 893
    lwc1	$f14,3304($a4)
    lwc1	$f13,40($a5)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a4)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t3,8($sp)
    mfc1	$t2,$f15
    # Line 894
    ld	$t1,16($sp)
    ld	$t0,0($sp)
    # Line 893
    sw	$t2,8($t3)
    # Line 894
    lwc1	$f14,3304($t0)
    lwc1	$f13,44($t1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($t0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$at,8($sp)
    mfc1	$ra,$f0
    nop
    sw	$ra,12($at)
    ld	$ra,32($sp)
.L0db45578:
    ld	$gp,24($sp)
    # Line 900
    jr	$ra
    addiu	$sp,$sp,80
.L0db45584:
    # Line 852
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db455a4:
    # Line 868
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,3
    ld	$a4,8($sp)
    li	$a3,3
    # lw $t9, -26836($gp) # &__glConvertResult
    ld	$a2,16($sp)
    sd	$ra,32($sp)
    bal __glConvertResult
    addiu	$a2,$a2,68
    b	.L0db45578
    ld	$ra,32($sp)
.L0db455d4:
    # Line 872
    move	$a0,$a7
    move	$a1,$zero
    li	$a5,1
    ld	$a4,8($sp)
    li	$a3,3
    # lw $t9, -26836($gp) # &__glConvertResult
    ld	$a2,16($sp)
    sd	$ra,32($sp)
    bal __glConvertResult
    addiu	$a2,$a2,64
    b	.L0db45578
    ld	$ra,32($sp)
.L0db45604:
    # Line 876
    move	$a0,$a7
    ld	$a1,8($sp)
    # lw $t9, -26680($gp) # &__glUnScaleColori
    ld	$a2,16($sp)
    sd	$ra,32($sp)
    bal __glUnScaleColori
    addiu	$a2,$a2,48
    b	.L0db45578
    ld	$ra,32($sp)
.L0db45628:
    ld	$a4,16($sp)
    # Line 879
    lwc1	$f14,3304($a7)
    lwc1	$f13,0($a4)
    mul.s	$f13,$f13,$f14
    sd	$a7,0($sp)
    move	$a3,$a7
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a7)
    sd	$ra,32($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t0,8($sp)
    mfc1	$a7,$f15
    # Line 880
    ld	$a6,16($sp)
    ld	$a5,0($sp)
    # Line 879
    sw	$a7,0($t0)
    # Line 880
    lwc1	$f14,3304($a5)
    lwc1	$f13,4($a6)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a5)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t8,8($sp)
    mfc1	$t3,$f15
    # Line 881
    ld	$t2,16($sp)
    ld	$t1,0($sp)
    # Line 880
    sw	$t3,4($t8)
    # Line 881
    lwc1	$f14,3304($t1)
    lwc1	$f13,8($t2)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($t1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$v1,8($sp)
    mfc1	$v0,$f15
    # Line 882
    ld	$at,16($sp)
    ld	$ra,0($sp)
    # Line 881
    sw	$v0,8($v1)
    # Line 882
    lwc1	$f14,3304($ra)
    lwc1	$f13,12($at)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($ra)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$ra,8($sp)
    mfc1	$a3,$f0
    nop
    sw	$a3,12($ra)
    # Line 883
    b	.L0db45578
    ld	$ra,32($sp)
.L0db4570c:
    # Line 885
    lwc1	$f14,3304($a7)
    lwc1	$f13,16($v0)
    mul.s	$f13,$f13,$f14
    sd	$a7,0($sp)
    move	$at,$a7
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a7)
    sd	$ra,32($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a2,8($sp)
    mfc1	$a1,$f15
    # Line 886
    ld	$a0,16($sp)
    ld	$v1,0($sp)
    # Line 885
    sw	$a1,0($a2)
    # Line 886
    lwc1	$f14,3304($v1)
    lwc1	$f13,20($a0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($v1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$a6,8($sp)
    mfc1	$a5,$f15
    # Line 887
    ld	$a4,16($sp)
    ld	$a3,0($sp)
    # Line 886
    sw	$a5,4($a6)
    # Line 887
    lwc1	$f14,3304($a3)
    lwc1	$f13,24($a4)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a3)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    ld	$t2,8($sp)
    mfc1	$t1,$f15
    # Line 888
    ld	$t0,16($sp)
    ld	$a7,0($sp)
    # Line 887
    sw	$t1,8($t2)
    # Line 888
    lwc1	$f14,3304($a7)
    lwc1	$f13,28($t0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a7)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$at,8($sp)
    mfc1	$ra,$f0
    nop
    sw	$ra,12($at)
    # Line 889
    b	.L0db45578
    ld	$ra,32($sp)
.end __glim_GetMaterialiv

# Function: __glim_GetMapfv
# Declared: Line 904 (Source lines: 905-987)
# Address: 0x0db457ec - 0x0db45b48 (Size: 860 bytes, Frame: 48)
.globl __glim_GetMapfv
.ent __glim_GetMapfv
__glim_GetMapfv:
    # Line 911
    lw	$a6,__glCurrentContext
    # Line 916
    addiu	$a4,$a0,-3472
    # Line 911
    li	$v0,1
    # Line 905
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 911
    lw	$at,__glBeginMode
    # Line 905
    lui	$v1,0xc
    addiu	$v1,$v1,-29012
    # Line 911
    beq	$at,$v0,.L0db45ac4
    # Line 905
    addu	$gp,$t9,$v1
    # Line 916
    move	$a5,$a2
    la	$at,sub_0dbf0000
    sltiu	$a3,$a4,41
    sll	$a4,$a4,0x2
    addiu	$at,$at,-2968
    beqz	$a3,.L0db4583c
    addu	$a4,$a4,$at
    lw	$at,%lo(jtbl_0dbef468)($a4)
    jr	$at
    # Line 929
    li	$a3,2561
.L0db4583c:
    # Line 984
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 985
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db4585c:
    # Line 929
    li	$v0,2560
    beq	$a1,$v0,.L0db458cc
    li	$v1,2562
    beq	$a1,$v1,.L0db45ae4
    # Line 938
    sll	$v1,$a0,0x2
    # Line 929
    beq	$a1,$a3,.L0db45a4c
    # Line 945
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 946
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db45894:
    # Line 960
    li	$at,2560
    beq	$a1,$at,.L0db45984
    li	$v0,2562
    beq	$a1,$v0,.L0db45b0c
    li	$v1,2561
    beq	$a1,$v1,.L0db45a80
    # Line 979
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 980
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db458cc:
    # Line 931
    lui	$v1,0xffff
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    addu	$v0,$v0,$v1
    lw	$at,10496($v0)
    lw	$v0,10500($v0)
    mult	$at,$v0
    # Line 932
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a6
    lw	$a7,14976($a7)
    # Line 931
    mflo	$a1
    andi	$a4,$a1,0x3
    # Line 932
    blez	$a1,.L0db45978
    sll	$a2,$a1,0x2
    move	$a0,$a7
    move	$a6,$a1
    beqz	$a4,.L0db45934
    addu	$a2,$a2,$a7
.L0db4591c:
    # Line 933
    addiu	$a0,$a0,4
    # Line 934
    addiu	$a5,$a5,4
    lwc1	$f0,-4($a0)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db4591c
    swc1	$f0,-4($a5)
.L0db45934:
    move	$a7,$a0
    sra	$a3,$a6,0x2
    beqz	$a3,.L0db45978
    move	$a4,$a5
    move	$a1,$a7
    move	$a0,$a4
.L0db4594c:
    lwc1	$f0,0($a1)
    swc1	$f0,0($a0)
    lwc1	$f3,4($a1)
    swc1	$f3,4($a0)
    lwc1	$f2,8($a1)
    swc1	$f2,8($a0)
    addiu	$a0,$a0,16
    lwc1	$f1,12($a1)
    # Line 933
    addiu	$a1,$a1,16
    bne	$a1,$a2,.L0db4594c
    # Line 934
    swc1	$f1,-4($a0)
.L0db45978:
    ld	$gp,0($sp)
.L0db4597c:
    # Line 987
    jr	$ra
    addiu	$sp,$sp,48
.L0db45984:
    # Line 963
    lui	$v0,0xfffe
    sll	$at,$a0,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x3
    addu	$at,$at,$a6
    addu	$at,$at,$v0
    lw	$v1,19424($at)
    lw	$v0,19420($at)
    mult	$v0,$v1
    lw	$at,19416($at)
    mflo	$v0
    nop
    nop
    mult	$at,$v0
    # Line 962
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a6
    lw	$a7,14884($a7)
    # Line 963
    mflo	$a1
    andi	$a4,$a1,0x3
    blez	$a1,.L0db45978
    sll	$a2,$a1,0x2
    move	$a0,$a7
    move	$a6,$a1
    beqz	$a4,.L0db45a00
    addu	$a2,$a2,$a7
.L0db459e8:
    # Line 964
    addiu	$a0,$a0,4
    # Line 965
    addiu	$a5,$a5,4
    lwc1	$f1,-4($a0)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db459e8
    swc1	$f1,-4($a5)
.L0db45a00:
    sra	$a3,$a6,0x2
    move	$a7,$a0
    beqz	$a3,.L0db45a44
    move	$a4,$a5
    move	$a1,$a7
    move	$a0,$a4
.L0db45a18:
    lwc1	$f1,0($a1)
    swc1	$f1,0($a0)
    lwc1	$f0,4($a1)
    swc1	$f0,4($a0)
    lwc1	$f3,8($a1)
    swc1	$f3,8($a0)
    addiu	$a0,$a0,16
    lwc1	$f2,12($a1)
    # Line 964
    addiu	$a1,$a1,16
    bne	$a1,$a2,.L0db45a18
    # Line 965
    swc1	$f2,-4($a0)
.L0db45a44:
    b	.L0db4597c
    ld	$gp,0($sp)
.L0db45a4c:
    # Line 942
    lui	$at,0xffff
    ori	$at,$at,0x2904
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    addu	$at,$at,$v0
    lw	$at,0($at)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 943
    b	.L0db45978
    # Line 942
    swc1	$f2,0($a2)
.L0db45a80:
    # Line 975
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    lui	$v1,0xfffe
    addu	$v0,$v0,$v1
    lw	$v1,19420($v0)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a5)
    # Line 976
    lw	$v0,19424($v0)
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 977
    b	.L0db45978
    # Line 976
    swc1	$f3,4($a5)
.L0db45ac4:
    # Line 911
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db45ae4:
    # Line 938
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$a6
    lui	$a3,0xffff
    addu	$v1,$v1,$a3
    lwc1	$f2,10504($v1)
    swc1	$f2,0($a2)
    # Line 939
    lwc1	$f1,10508($v1)
    # Line 940
    b	.L0db45978
    # Line 939
    swc1	$f1,4($a2)
.L0db45b0c:
    # Line 969
    sll	$a3,$a0,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a6
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lwc1	$f2,19428($a3)
    swc1	$f2,0($a5)
    # Line 970
    lwc1	$f1,19432($a3)
    swc1	$f1,4($a5)
    # Line 971
    lwc1	$f0,19436($a3)
    swc1	$f0,8($a5)
    # Line 972
    lwc1	$f3,19440($a3)
    # Line 973
    b	.L0db45978
    # Line 972
    swc1	$f3,12($a5)
.end __glim_GetMapfv

# Function: __glim_GetMapdv
# Declared: Line 989 (Source lines: 990-1072)
# Address: 0x0db45b48 - 0x0db45ee4 (Size: 924 bytes, Frame: 48)
.globl __glim_GetMapdv
.ent __glim_GetMapdv
__glim_GetMapdv:
    # Line 996
    lw	$a6,__glCurrentContext
    # Line 1001
    addiu	$a4,$a0,-3472
    # Line 996
    li	$v0,1
    # Line 990
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 996
    lw	$at,__glBeginMode
    # Line 990
    lui	$v1,0xc
    addiu	$v1,$v1,-29872
    # Line 996
    beq	$at,$v0,.L0db45e48
    # Line 990
    addu	$gp,$t9,$v1
    # Line 1001
    move	$a5,$a2
    la	$at,sub_0dbf0000
    sltiu	$a3,$a4,41
    sll	$a4,$a4,0x2
    addiu	$at,$at,-2800
    beqz	$a3,.L0db45b98
    addu	$a4,$a4,$at
    lw	$at,%lo(jtbl_0dbef510)($a4)
    jr	$at
    # Line 1014
    li	$a3,2561
.L0db45b98:
    # Line 1069
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1070
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db45bb8:
    # Line 1014
    li	$v0,2560
    beq	$a1,$v0,.L0db45c28
    li	$v1,2562
    beq	$a1,$v1,.L0db45e68
    # Line 1023
    sll	$v1,$a0,0x2
    # Line 1014
    beq	$a1,$a3,.L0db45dd0
    # Line 1030
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1031
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db45bf0:
    # Line 1045
    li	$at,2560
    beq	$a1,$at,.L0db45cf4
    li	$v0,2562
    beq	$a1,$v0,.L0db45e98
    li	$v1,2561
    beq	$a1,$v1,.L0db45e04
    # Line 1064
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1065
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db45c28:
    # Line 1017
    lui	$v1,0xffff
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    addu	$v0,$v0,$v1
    lw	$at,10496($v0)
    lw	$v0,10500($v0)
    mult	$at,$v0
    # Line 1016
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a6
    lw	$a7,14976($a7)
    # Line 1017
    mflo	$a1
    andi	$a4,$a1,0x3
    blez	$a1,.L0db45ce8
    sll	$a2,$a1,0x2
    move	$a0,$a7
    move	$a6,$a1
    beqz	$a4,.L0db45c94
    addu	$a2,$a2,$a7
.L0db45c78:
    # Line 1018
    addiu	$a0,$a0,4
    # Line 1019
    lwc1	$f0,-4($a0)
    addiu	$a5,$a5,8
    addi	$a4,$a4,-1
    cvt.d.s	$f0,$f0
    bnez	$a4,.L0db45c78
    sdc1	$f0,-8($a5)
.L0db45c94:
    move	$a7,$a0
    sra	$a3,$a6,0x2
    beqz	$a3,.L0db45ce8
    move	$a4,$a5
    move	$a1,$a7
    move	$a0,$a4
.L0db45cac:
    lwc1	$f0,0($a1)
    cvt.d.s	$f0,$f0
    sdc1	$f0,0($a0)
    lwc1	$f3,4($a1)
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a0)
    lwc1	$f2,8($a1)
    cvt.d.s	$f2,$f2
    sdc1	$f2,16($a0)
    lwc1	$f1,12($a1)
    addiu	$a0,$a0,32
    # Line 1018
    addiu	$a1,$a1,16
    # Line 1019
    cvt.d.s	$f1,$f1
    # Line 1018
    bne	$a1,$a2,.L0db45cac
    # Line 1019
    sdc1	$f1,-8($a0)
.L0db45ce8:
    ld	$gp,0($sp)
.L0db45cec:
    # Line 1072
    jr	$ra
    addiu	$sp,$sp,48
.L0db45cf4:
    # Line 1048
    lui	$v0,0xfffe
    sll	$at,$a0,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x3
    addu	$at,$at,$a6
    addu	$at,$at,$v0
    lw	$v1,19424($at)
    lw	$v0,19420($at)
    mult	$v0,$v1
    lw	$at,19416($at)
    mflo	$v0
    nop
    nop
    mult	$at,$v0
    # Line 1047
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a6
    lw	$a7,14884($a7)
    # Line 1048
    mflo	$a1
    andi	$a4,$a1,0x3
    blez	$a1,.L0db45ce8
    sll	$a2,$a1,0x2
    move	$a0,$a7
    move	$a6,$a1
    beqz	$a4,.L0db45d74
    addu	$a2,$a2,$a7
.L0db45d58:
    # Line 1049
    addiu	$a0,$a0,4
    # Line 1050
    lwc1	$f1,-4($a0)
    addiu	$a5,$a5,8
    addi	$a4,$a4,-1
    cvt.d.s	$f1,$f1
    bnez	$a4,.L0db45d58
    sdc1	$f1,-8($a5)
.L0db45d74:
    sra	$a3,$a6,0x2
    move	$a7,$a0
    beqz	$a3,.L0db45dc8
    move	$a4,$a5
    move	$a1,$a7
    move	$a0,$a4
.L0db45d8c:
    lwc1	$f1,0($a1)
    cvt.d.s	$f1,$f1
    sdc1	$f1,0($a0)
    lwc1	$f0,4($a1)
    cvt.d.s	$f0,$f0
    sdc1	$f0,8($a0)
    lwc1	$f3,8($a1)
    cvt.d.s	$f3,$f3
    sdc1	$f3,16($a0)
    lwc1	$f2,12($a1)
    addiu	$a0,$a0,32
    # Line 1049
    addiu	$a1,$a1,16
    # Line 1050
    cvt.d.s	$f2,$f2
    # Line 1049
    bne	$a1,$a2,.L0db45d8c
    # Line 1050
    sdc1	$f2,-8($a0)
.L0db45dc8:
    b	.L0db45cec
    ld	$gp,0($sp)
.L0db45dd0:
    # Line 1027
    lui	$at,0xffff
    ori	$at,$at,0x2904
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    addu	$at,$at,$v0
    lw	$at,0($at)
    mtc1	$at,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1028
    b	.L0db45ce8
    # Line 1027
    sdc1	$f2,0($a2)
.L0db45e04:
    # Line 1060
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a6
    lui	$v1,0xfffe
    addu	$v0,$v0,$v1
    lw	$v1,19420($v0)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,0($a5)
    # Line 1061
    lw	$v0,19424($v0)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    # Line 1062
    b	.L0db45ce8
    # Line 1061
    sdc1	$f3,8($a5)
.L0db45e48:
    # Line 996
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db45e68:
    # Line 1023
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$a6
    lui	$a3,0xffff
    addu	$v1,$v1,$a3
    lwc1	$f2,10504($v1)
    cvt.d.s	$f2,$f2
    sdc1	$f2,0($a2)
    # Line 1024
    lwc1	$f1,10508($v1)
    cvt.d.s	$f1,$f1
    # Line 1025
    b	.L0db45ce8
    # Line 1024
    sdc1	$f1,8($a2)
.L0db45e98:
    # Line 1054
    sll	$a3,$a0,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$a6
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lwc1	$f2,19428($a3)
    cvt.d.s	$f2,$f2
    sdc1	$f2,0($a5)
    # Line 1055
    lwc1	$f1,19432($a3)
    cvt.d.s	$f1,$f1
    sdc1	$f1,8($a5)
    # Line 1056
    lwc1	$f0,19436($a3)
    cvt.d.s	$f0,$f0
    sdc1	$f0,16($a5)
    # Line 1057
    lwc1	$f3,19440($a3)
    cvt.d.s	$f3,$f3
    # Line 1058
    b	.L0db45ce8
    # Line 1057
    sdc1	$f3,24($a5)
.end __glim_GetMapdv

# Function: __glim_GetMapiv
# Declared: Line 1074 (Source lines: 1075-1153)
# Address: 0x0db45ee4 - 0x0db4617c (Size: 664 bytes, Frame: 48)
.globl __glim_GetMapiv
.ent __glim_GetMapiv
__glim_GetMapiv:
    # Line 1081
    lw	$t0,__glCurrentContext
    # Line 1075
    move	$a4,$a2
    move	$a7,$a0
    # Line 1081
    li	$v0,1
    # Line 1075
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1081
    lw	$at,__glBeginMode
    # Line 1075
    lui	$v1,0xc
    addiu	$v1,$v1,-30796
    # Line 1081
    beq	$at,$v0,.L0db46020
    # Line 1075
    addu	$gp,$t9,$v1
    # Line 1081
    addiu	$a5,$a7,-3472
    la	$at,sub_0dbf0000
    sltiu	$v0,$a5,41
    sll	$a5,$a5,0x2
    addiu	$at,$at,-2632
    beqz	$v0,.L0db45f38
    addu	$a5,$a5,$at
    lw	$at,%lo(jtbl_0dbef5b8)($a5)
    jr	$at
    # Line 1099
    li	$v0,2560
.L0db45f38:
    # Line 1150
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1151
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db45f58:
    # Line 1111
    sll	$at,$a7,0x2
    # Line 1099
    beq	$a1,$v0,.L0db46040
    li	$v1,2562
    beq	$a1,$v1,.L0db460fc
    li	$a3,2561
    beq	$a1,$a3,.L0db45fcc
    # Line 1114
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1115
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db45f90:
    # Line 1129
    li	$at,2560
    beq	$a1,$at,.L0db46094
    li	$v0,2562
    beq	$a1,$v0,.L0db4613c
    li	$v1,2561
    # Line 1141
    sll	$at,$a7,0x2
    # Line 1129
    beq	$a1,$v1,.L0db45ff8
    # Line 1145
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1146
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db45fcc:
    # Line 1111
    subu	$at,$at,$a7
    lui	$a3,0xffff
    sll	$at,$at,0x3
    addu	$at,$at,$t0
    ori	$a3,$a3,0x2904
    addu	$a3,$a3,$at
    lw	$a3,0($a3)
    sw	$a3,0($a4)
.L0db45fec:
    ld	$gp,0($sp)
    # Line 1153
    jr	$ra
    addiu	$sp,$sp,48
.L0db45ff8:
    # Line 1141
    addu	$at,$at,$a7
    lui	$v0,0xfffe
    sll	$at,$at,0x3
    addu	$at,$at,$t0
    addu	$at,$at,$v0
    lw	$v0,19420($at)
    sw	$v0,0($a4)
    # Line 1142
    lw	$at,19424($at)
    # Line 1143
    b	.L0db45fec
    # Line 1142
    sw	$at,4($a4)
.L0db46020:
    # Line 1081
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db46040:
    # Line 1103
    lui	$a6,0xffff
    sll	$a5,$a7,0x2
    subu	$a5,$a5,$a7
    sll	$a5,$a5,0x3
    addu	$a5,$a5,$t0
    addu	$a5,$a5,$a6
    lw	$a3,10496($a5)
    lw	$a5,10500($a5)
    mult	$a3,$a5
    move	$a1,$zero
    move	$a0,$t0
    sd	$ra,8($sp)
    sll	$a2,$a7,0x2
    addu	$a2,$a2,$t0
    # lw $t9, -26836($gp) # &__glConvertResult
    lw	$a2,14976($a2)
    mflo	$a5
    bal __glConvertResult
    li	$a3,3
    b	.L0db45fec
    ld	$ra,8($sp)
.L0db46094:
    # Line 1133
    lui	$a5,0xfffe
    sll	$a3,$a7,0x2
    addu	$a3,$a3,$a7
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$t0
    addu	$a3,$a3,$a5
    lw	$a6,19424($a3)
    lw	$a5,19420($a3)
    mult	$a5,$a6
    lw	$a3,19416($a3)
    mflo	$a5
    nop
    nop
    mult	$a3,$a5
    move	$a1,$zero
    move	$a0,$t0
    sd	$ra,8($sp)
    sll	$a2,$a7,0x2
    addu	$a2,$a2,$t0
    # lw $t9, -26836($gp) # &__glConvertResult
    lw	$a2,14884($a2)
    mflo	$a5
    bal __glConvertResult
    li	$a3,3
    b	.L0db45fec
    ld	$ra,8($sp)
.L0db460fc:
    # Line 1107
    move	$a0,$t0
    move	$a1,$zero
    li	$a5,2
    li	$a3,3
    sd	$ra,8($sp)
    lui	$a6,0xffff
    ori	$a6,$a6,0x2908
    # lw $t9, -26836($gp) # &__glConvertResult
    sll	$a2,$a7,0x2
    subu	$a2,$a2,$a7
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$t0
    bal __glConvertResult
    addu	$a2,$a2,$a6
    b	.L0db45fec
    ld	$ra,8($sp)
.L0db4613c:
    # Line 1137
    move	$a0,$t0
    move	$a1,$zero
    li	$a5,4
    li	$a3,3
    sd	$ra,8($sp)
    lui	$a6,0xfffe
    ori	$a6,$a6,0x4be4
    # lw $t9, -26836($gp) # &__glConvertResult
    sll	$a2,$a7,0x2
    addu	$a2,$a2,$a7
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$t0
    bal __glConvertResult
    addu	$a2,$a2,$a6
    b	.L0db45fec
    ld	$ra,8($sp)
.end __glim_GetMapiv

# Function: __glim_GetPixelMapfv
# Declared: Line 1157 (Source lines: 1158-1198)
# Address: 0x0db4617c - 0x0db463a8 (Size: 556 bytes, Frame: 32)
.globl __glim_GetPixelMapfv
.ent __glim_GetPixelMapfv
__glim_GetPixelMapfv:
    # Line 1163
    lw	$a4,__glCurrentContext
    # Line 1167
    addiu	$a5,$a0,-3184
    # Line 1163
    li	$v0,1
    # Line 1158
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1163
    lw	$at,__glBeginMode
    # Line 1158
    lui	$v1,0xc
    addiu	$v1,$v1,-31460
    # Line 1163
    beq	$at,$v0,.L0db46388
    # Line 1158
    addu	$gp,$t9,$v1
    # Line 1167
    move	$a3,$a1
    la	$at,sub_0dbf0000
    sltiu	$a2,$a5,10
    sll	$a5,$a5,0x2
    addiu	$at,$at,-2464
    beqz	$a2,.L0db46368
    addu	$a5,$a5,$at
    lw	$at,%lo(jtbl_0dbef660)($a5)
    # Line 1187
    sll	$a5,$a0,0x2
    # Line 1167
    jr	$at
    ld	$gp,0($sp)
.L0db461d0:
    # Line 1175
    lui	$at,0xffff
    sll	$a5,$a0,0x2
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a4
    addu	$a5,$a5,$at
    # Line 1177
    lw	$a1,28280($a5)
    li	$a4,-1
    addiu	$a1,$a1,-1
    bltz	$a1,.L0db462b4
    # Line 1175
    lw	$a5,28288($a5)
    # Line 1177
    addiu	$a6,$a1,1
    andi	$a0,$a6,0x3
    beqz	$a0,.L0db46238
    move	$t0,$a1
.L0db4620c:
    # Line 1178
    lw	$at,0($a5)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1177
    addiu	$a1,$a1,-1
    # Line 1178
    addiu	$a3,$a3,4
    addiu	$a5,$a5,4
    addi	$a0,$a0,-1
    bnez	$a0,.L0db4620c
    swc1	$f0,-4($a3)
    move	$t0,$a1
.L0db46238:
    move	$t1,$a5
    move	$a7,$a3
    sra	$v0,$a6,0x2
    beqz	$v0,.L0db462b4
    move	$a3,$a7
    move	$a1,$t0
    move	$a0,$t1
.L0db46254:
    lw	$v0,0($a0)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a3)
    lw	$at,4($a0)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a3)
    lw	$a2,8($a0)
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a3)
    lw	$v1,12($a0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a3,$a3,16
    addiu	$a0,$a0,16
    # Line 1177
    addiu	$a1,$a1,-4
    bne	$a1,$a4,.L0db46254
    # Line 1178
    swc1	$f1,-4($a3)
.L0db462b4:
    # Line 1198
    jr	$ra
    addiu	$sp,$sp,32
.L0db462bc:
    # Line 1187
    lui	$at,0xffff
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a4
    addu	$a5,$a5,$at
    # Line 1189
    lw	$a1,28280($a5)
    li	$a4,-1
    addiu	$a1,$a1,-1
    bltz	$a1,.L0db462b4
    # Line 1187
    lw	$a5,28288($a5)
    # Line 1189
    addiu	$a6,$a1,1
    andi	$a0,$a6,0x3
    beqz	$a0,.L0db46314
    move	$a7,$a5
.L0db462f4:
    addiu	$a1,$a1,-1
    # Line 1190
    addiu	$a3,$a3,4
    addiu	$a5,$a5,4
    lwc1	$f1,-4($a5)
    addi	$a0,$a0,-1
    bnez	$a0,.L0db462f4
    swc1	$f1,-4($a3)
    move	$a7,$a5
.L0db46314:
    move	$t1,$a1
    move	$t0,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0db46360
    move	$a1,$t0
    move	$a3,$t1
    move	$a0,$a7
.L0db46330:
    lwc1	$f1,0($a0)
    swc1	$f1,0($a1)
    lwc1	$f0,4($a0)
    swc1	$f0,4($a1)
    lwc1	$f3,8($a0)
    addiu	$a1,$a1,16
    swc1	$f3,-8($a1)
    addiu	$a0,$a0,16
    lwc1	$f2,-4($a0)
    # Line 1189
    addiu	$a3,$a3,-4
    bne	$a3,$a4,.L0db46330
    # Line 1190
    swc1	$f2,-4($a1)
.L0db46360:
    b	.L0db462b4
    nop
.L0db46368:
    # Line 1195
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1196
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db46388:
    # Line 1163
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetPixelMapfv

# Function: __glim_GetPixelMapuiv
# Declared: Line 1200 (Source lines: 1201-1238)
# Address: 0x0db463a8 - 0x0db4661c (Size: 628 bytes, Frame: 32)
.globl __glim_GetPixelMapuiv
.ent __glim_GetPixelMapuiv
__glim_GetPixelMapuiv:
    # Line 1206
    lw	$a5,__glCurrentContext
    # Line 1210
    addiu	$a4,$a0,-3184
    # Line 1206
    li	$v0,1
    # Line 1201
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1206
    lw	$at,__glBeginMode
    # Line 1201
    lui	$v1,0xc
    addiu	$v1,$v1,-32016
    # Line 1206
    beq	$at,$v0,.L0db465fc
    # Line 1201
    addu	$gp,$t9,$v1
    # Line 1210
    move	$a3,$a1
    la	$at,sub_0dbf0000
    sltiu	$a2,$a4,10
    sll	$a4,$a4,0x2
    addiu	$at,$at,-2424
    beqz	$a2,.L0db465dc
    addu	$a4,$a4,$at
    lw	$at,%lo(jtbl_0dbef688)($a4)
    # Line 1229
    li	$a4,-1
    # Line 1210
    jr	$at
    ld	$gp,0($sp)
.L0db463fc:
    # Line 1215
    lui	$at,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a5
    addu	$a6,$a6,$at
    # Line 1217
    lw	$a1,28280($a6)
    li	$a4,-1
    addiu	$a1,$a1,-1
    bltz	$a1,.L0db464a4
    # Line 1215
    lw	$a6,28288($a6)
    # Line 1217
    addiu	$a5,$a1,1
    andi	$a0,$a5,0x3
    beqz	$a0,.L0db46458
    move	$t1,$a1
.L0db46438:
    addiu	$a1,$a1,-1
    # Line 1218
    addiu	$a3,$a3,4
    addiu	$a6,$a6,4
    lw	$at,-4($a6)
    addi	$a0,$a0,-1
    bnez	$a0,.L0db46438
    sw	$at,-4($a3)
    move	$t1,$a1
.L0db46458:
    move	$a7,$a6
    move	$t0,$a3
    sra	$v0,$a5,0x2
    beqz	$v0,.L0db464a4
    move	$a3,$t0
    move	$a1,$t1
    move	$a0,$a7
.L0db46474:
    lw	$v0,0($a0)
    sw	$v0,0($a3)
    lw	$at,4($a0)
    sw	$at,4($a3)
    lw	$a2,8($a0)
    addiu	$a3,$a3,16
    sw	$a2,-8($a3)
    addiu	$a0,$a0,16
    lw	$v1,-4($a0)
    # Line 1217
    addiu	$a1,$a1,-4
    bne	$a1,$a4,.L0db46474
    # Line 1218
    sw	$v1,-4($a3)
.L0db464a4:
    # Line 1238
    jr	$ra
    addiu	$sp,$sp,32
.L0db464ac:
    # Line 1227
    lui	$at,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a5
    addu	$a6,$a6,$at
    # Line 1229
    lw	$a1,28280($a6)
    addiu	$a1,$a1,-1
    bltz	$a1,.L0db464a4
    # Line 1227
    lw	$a6,28288($a6)
    # Line 1229
    addiu	$a7,$a1,1
    andi	$a0,$a7,0x3
    beqz	$a0,.L0db4651c
    move	$t2,$a1
.L0db464e4:
    # Line 1230
    lwc1	$f1,0($a6)
    lwc1	$f2,3304($a5)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a5)
    add.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    # Line 1229
    addiu	$a1,$a1,-1
    # Line 1230
    addiu	$a3,$a3,4
    addiu	$a6,$a6,4
    dmfc1	$at,$f0
    addi	$a0,$a0,-1
    bnez	$a0,.L0db464e4
    sw	$at,-4($a3)
    move	$t2,$a1
.L0db4651c:
    move	$t0,$a6
    move	$t1,$a3
    sra	$v0,$a7,0x2
    beqz	$v0,.L0db465d4
    move	$a3,$t1
    move	$a0,$t2
    move	$a1,$t0
.L0db46538:
    lwc1	$f1,0($a1)
    lwc1	$f2,3304($a5)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a5)
    add.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$v0,$f0
    nop
    sw	$v0,0($a3)
    lwc1	$f2,4($a1)
    lwc1	$f3,3304($a5)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a5)
    add.s	$f1,$f1,$f2
    trunc.l.s	$f1,$f1
    dmfc1	$at,$f1
    nop
    sw	$at,4($a3)
    lwc1	$f3,8($a1)
    lwc1	$f0,3304($a5)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a5)
    add.s	$f2,$f2,$f3
    trunc.l.s	$f2,$f2
    dmfc1	$a2,$f2
    nop
    sw	$a2,8($a3)
    lwc1	$f0,12($a1)
    lwc1	$f1,3304($a5)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,3280($a5)
    add.s	$f3,$f3,$f0
    trunc.l.s	$f3,$f3
    addiu	$a3,$a3,16
    addiu	$a1,$a1,16
    dmfc1	$v1,$f3
    # Line 1229
    addiu	$a0,$a0,-4
    bne	$a0,$a4,.L0db46538
    # Line 1230
    sw	$v1,-4($a3)
.L0db465d4:
    b	.L0db464a4
    nop
.L0db465dc:
    # Line 1235
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1236
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db465fc:
    # Line 1206
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetPixelMapuiv

# Function: __glim_GetPixelMapusv
# Declared: Line 1240 (Source lines: 1241-1278)
# Address: 0x0db4661c - 0x0db46890 (Size: 628 bytes, Frame: 32)
.globl __glim_GetPixelMapusv
.ent __glim_GetPixelMapusv
__glim_GetPixelMapusv:
    # Line 1246
    lw	$a5,__glCurrentContext
    # Line 1250
    addiu	$a4,$a0,-3184
    # Line 1246
    li	$v0,1
    # Line 1241
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1246
    lw	$at,__glBeginMode
    # Line 1241
    lui	$v1,0xc
    addiu	$v1,$v1,-32644
    # Line 1246
    beq	$at,$v0,.L0db46870
    # Line 1241
    addu	$gp,$t9,$v1
    # Line 1250
    move	$a3,$a1
    la	$at,sub_0dbf0000
    sltiu	$a2,$a4,10
    sll	$a4,$a4,0x2
    addiu	$at,$at,-2384
    beqz	$a2,.L0db46850
    addu	$a4,$a4,$at
    lw	$at,%lo(jtbl_0dbef6b0)($a4)
    # Line 1269
    li	$a4,-1
    # Line 1250
    jr	$at
    ld	$gp,0($sp)
.L0db46670:
    # Line 1255
    lui	$at,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a5
    addu	$a6,$a6,$at
    # Line 1257
    lw	$a1,28280($a6)
    li	$a4,-1
    addiu	$a1,$a1,-1
    bltz	$a1,.L0db46718
    # Line 1255
    lw	$a6,28288($a6)
    # Line 1257
    addiu	$a5,$a1,1
    andi	$a0,$a5,0x3
    beqz	$a0,.L0db466cc
    move	$t1,$a1
.L0db466ac:
    addiu	$a1,$a1,-1
    # Line 1258
    addiu	$a3,$a3,2
    addiu	$a6,$a6,4
    lw	$at,-4($a6)
    addi	$a0,$a0,-1
    bnez	$a0,.L0db466ac
    sh	$at,-2($a3)
    move	$t1,$a1
.L0db466cc:
    move	$a7,$a6
    move	$t0,$a3
    sra	$v0,$a5,0x2
    beqz	$v0,.L0db46718
    move	$a3,$t0
    move	$a1,$t1
    move	$a0,$a7
.L0db466e8:
    lw	$v0,0($a0)
    sh	$v0,0($a3)
    lw	$at,4($a0)
    sh	$at,2($a3)
    lw	$a2,8($a0)
    addiu	$a3,$a3,8
    sh	$a2,-4($a3)
    addiu	$a0,$a0,16
    lw	$v1,-4($a0)
    # Line 1257
    addiu	$a1,$a1,-4
    bne	$a1,$a4,.L0db466e8
    # Line 1258
    sh	$v1,-2($a3)
.L0db46718:
    # Line 1278
    jr	$ra
    addiu	$sp,$sp,32
.L0db46720:
    # Line 1267
    lui	$at,0xffff
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a5
    addu	$a6,$a6,$at
    # Line 1269
    lw	$a1,28280($a6)
    addiu	$a1,$a1,-1
    bltz	$a1,.L0db46718
    # Line 1267
    lw	$a6,28288($a6)
    # Line 1269
    addiu	$a7,$a1,1
    andi	$a0,$a7,0x3
    beqz	$a0,.L0db46790
    move	$t2,$a1
.L0db46758:
    # Line 1270
    lwc1	$f1,0($a6)
    lwc1	$f2,3296($a5)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a5)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 1269
    addiu	$a1,$a1,-1
    # Line 1270
    addiu	$a3,$a3,2
    addiu	$a6,$a6,4
    mfc1	$at,$f0
    addi	$a0,$a0,-1
    bnez	$a0,.L0db46758
    sh	$at,-2($a3)
    move	$t2,$a1
.L0db46790:
    move	$t0,$a6
    move	$t1,$a3
    sra	$v0,$a7,0x2
    beqz	$v0,.L0db46848
    move	$a3,$t1
    move	$a0,$t2
    move	$a1,$t0
.L0db467ac:
    lwc1	$f1,0($a1)
    lwc1	$f2,3296($a5)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a5)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    sh	$v0,0($a3)
    lwc1	$f2,4($a1)
    lwc1	$f3,3296($a5)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a5)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sh	$at,2($a3)
    lwc1	$f3,8($a1)
    lwc1	$f0,3296($a5)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a5)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    nop
    sh	$a2,4($a3)
    lwc1	$f0,12($a1)
    lwc1	$f1,3296($a5)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,3280($a5)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    addiu	$a3,$a3,8
    addiu	$a1,$a1,16
    mfc1	$v1,$f3
    # Line 1269
    addiu	$a0,$a0,-4
    bne	$a0,$a4,.L0db467ac
    # Line 1270
    sh	$v1,-2($a3)
.L0db46848:
    b	.L0db46718
    nop
.L0db46850:
    # Line 1275
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1276
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db46870:
    # Line 1246
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetPixelMapusv

# Function: __glConvertResult
# Declared: Line 1285 (Source lines: 1287-1439)
# Address: 0x0db46890 - 0x0db4774c (Size: 3772 bytes, Frame: 240)
.globl __glConvertResult
.ent __glConvertResult
__glConvertResult:
    # Line 1287
    addiu	$sp,$sp,-112
    sd	$s1,0($sp)
    move	$s1,$a0
    sd	$gp,24($sp)
    lui	$at,0xb
    addiu	$at,$at,32264
    # Line 1290
    beqz	$a1,.L0db4699c
    # Line 1287
    addu	$gp,$t9,$at
    # Line 1290
    li	$v0,5
    beq	$a1,$v0,.L0db46aa0
    li	$v1,6
    beq	$a1,$v1,.L0db46ba4
    li	$a0,3
    beq	$a1,$a0,.L0db46ca8
    ld	$s1,0($sp)
    li	$a7,4
    beq	$a1,$a7,.L0db468e4
.L0db468d4:
    ld	$gp,24($sp)
.L0db468d8:
    # Line 1439
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db468e4:
    # Line 1414
    li	$a6,1
    beq	$a3,$a6,.L0db46d6c
    li	$at,2
    beq	$a3,$at,.L0db46ed8
    nop
    beq	$a3,$a0,.L0db470e0
    nop
    bne	$a3,$a7,.L0db468d8
    ld	$gp,24($sp)
    # Line 1431
    blez	$a5,.L0db468d4
    move	$a3,$a2
    move	$a1,$a4
    move	$t0,$a5
    andi	$a7,$a5,0x3
    beqz	$a7,.L0db46940
    addu	$a0,$a5,$a2
.L0db46924:
    addiu	$a3,$a3,1
    # Line 1432
    lbu	$v0,-1($a3)
    # Line 1431
    addiu	$a1,$a1,1
    addi	$a7,$a7,-1
    # Line 1432
    sltu	$v0,$zero,$v0
    bnez	$a7,.L0db46924
    sb	$v0,-1($a1)
.L0db46940:
    move	$a5,$a1
    sra	$v1,$t0,0x2
    beqz	$v1,.L0db46994
    move	$a4,$a3
    move	$a1,$a5
    move	$a2,$a4
.L0db46958:
    lbu	$v1,0($a2)
    sltu	$v1,$zero,$v1
    sb	$v1,0($a1)
    lbu	$v0,1($a2)
    sltu	$v0,$zero,$v0
    sb	$v0,1($a1)
    lbu	$at,2($a2)
    sltu	$at,$zero,$at
    sb	$at,2($a1)
    lbu	$a6,3($a2)
    # Line 1431
    addiu	$a1,$a1,4
    addiu	$a2,$a2,4
    # Line 1432
    sltu	$a6,$zero,$a6
    # Line 1431
    bne	$a2,$a0,.L0db46958
    # Line 1432
    sb	$a6,-1($a1)
.L0db46994:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db4699c:
    # Line 1292
    li	$a6,1
    beq	$a3,$a6,.L0db46e34
    li	$at,2
    beq	$a3,$at,.L0db46f94
    li	$v0,3
    beq	$a3,$v0,.L0db4716c
    li	$v1,4
    bne	$a3,$v1,.L0db468d4
    ld	$s1,0($sp)
    # Line 1312
    blez	$a5,.L0db468d4
    sd	$s4,32($sp)
    move	$a1,$a4
    mtc1	$zero,$f4
    move	$s4,$a2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0db46a0c
    addu	$a0,$a5,$a4
.L0db469e4:
    # Line 1313
    lwc1	$f0,0($s4)
    c.eq.s	$f0,$f4
    li	$a6,1
    bc1tl	.L0db469f8
    move	$a6,$zero
.L0db469f8:
    # Line 1312
    addiu	$a1,$a1,1
    addiu	$s4,$s4,4
    addi	$a3,$a3,-1
    bnez	$a3,.L0db469e4
    # Line 1313
    sb	$a6,-1($a1)
.L0db46a0c:
    move	$a4,$a1
    move	$a3,$s4
    sra	$at,$a7,0x2
    beqz	$at,.L0db46a98
    ld	$s4,32($sp)
    move	$a1,$a4
    move	$a2,$a3
    ld	$s4,32($sp)
.L0db46a2c:
    lwc1	$f0,0($a2)
    c.eq.s	$f0,$f4
    li	$at,1
    bc1tl	.L0db46a40
    move	$at,$zero
.L0db46a40:
    sb	$at,0($a1)
    lwc1	$f3,4($a2)
    c.eq.s	$f3,$f4
    li	$a6,1
    bc1tl	.L0db46a58
    move	$a6,$zero
.L0db46a58:
    sb	$a6,1($a1)
    lwc1	$f2,8($a2)
    c.eq.s	$f2,$f4
    li	$v1,1
    bc1tl	.L0db46a70
    move	$v1,$zero
.L0db46a70:
    sb	$v1,2($a1)
    lwc1	$f1,12($a2)
    c.eq.s	$f1,$f4
    li	$v0,1
    bc1tl	.L0db46a88
    move	$v0,$zero
.L0db46a88:
    # Line 1312
    addiu	$a2,$a2,16
    addiu	$a1,$a1,4
    bne	$a1,$a0,.L0db46a2c
    # Line 1313
    sb	$v0,-1($a1)
.L0db46a98:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db46aa0:
    # Line 1320
    li	$v0,1
    beq	$a3,$v0,.L0db4703c
    li	$v1,2
    beq	$a3,$v1,.L0db471bc
    li	$a6,3
    beq	$a3,$a6,.L0db47304
    li	$at,4
    bne	$a3,$at,.L0db468d4
    ld	$s1,0($sp)
    # Line 1338
    blez	$a5,.L0db468d4
    sd	$s4,32($sp)
    move	$a1,$a4
    mtc1	$zero,$f4
    move	$s4,$a2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0db46b10
    addu	$a0,$a5,$a4
.L0db46ae8:
    # Line 1339
    lwc1	$f1,0($s4)
    c.eq.s	$f1,$f4
    li	$v0,1
    bc1tl	.L0db46afc
    move	$v0,$zero
.L0db46afc:
    # Line 1338
    addiu	$a1,$a1,1
    addiu	$s4,$s4,4
    addi	$a3,$a3,-1
    bnez	$a3,.L0db46ae8
    # Line 1339
    sb	$v0,-1($a1)
.L0db46b10:
    move	$a4,$a1
    move	$a3,$s4
    sra	$v1,$a7,0x2
    beqz	$v1,.L0db46b9c
    ld	$s4,32($sp)
    move	$a2,$a4
    move	$a1,$a3
    ld	$s4,32($sp)
.L0db46b30:
    lwc1	$f1,0($a1)
    c.eq.s	$f1,$f4
    li	$v1,1
    bc1tl	.L0db46b44
    move	$v1,$zero
.L0db46b44:
    sb	$v1,0($a2)
    lwc1	$f0,4($a1)
    c.eq.s	$f0,$f4
    li	$v0,1
    bc1tl	.L0db46b5c
    move	$v0,$zero
.L0db46b5c:
    sb	$v0,1($a2)
    lwc1	$f3,8($a1)
    c.eq.s	$f3,$f4
    li	$at,1
    bc1tl	.L0db46b74
    move	$at,$zero
.L0db46b74:
    sb	$at,2($a2)
    lwc1	$f2,12($a1)
    c.eq.s	$f2,$f4
    li	$a6,1
    bc1tl	.L0db46b8c
    move	$a6,$zero
.L0db46b8c:
    # Line 1338
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    bne	$a2,$a0,.L0db46b30
    # Line 1339
    sb	$a6,-1($a2)
.L0db46b9c:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db46ba4:
    # Line 1346
    li	$a6,1
    beq	$a3,$a6,.L0db475bc
    li	$at,2
    beq	$a3,$at,.L0db47600
    li	$v0,3
    beq	$a3,$v0,.L0db47654
    li	$v1,4
    bne	$a3,$v1,.L0db468d4
    ld	$s1,0($sp)
    # Line 1382
    blez	$a5,.L0db468d4
    sd	$s4,32($sp)
    move	$a1,$a4
    mtc1	$zero,$f4
    move	$s4,$a2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0db46c14
    addu	$a0,$a5,$a4
.L0db46bec:
    # Line 1383
    lwc1	$f2,0($s4)
    c.eq.s	$f2,$f4
    li	$a6,1
    bc1tl	.L0db46c00
    move	$a6,$zero
.L0db46c00:
    # Line 1382
    addiu	$a1,$a1,1
    addiu	$s4,$s4,4
    addi	$a3,$a3,-1
    bnez	$a3,.L0db46bec
    # Line 1383
    sb	$a6,-1($a1)
.L0db46c14:
    move	$a3,$a1
    move	$a4,$s4
    sra	$at,$a7,0x2
    beqz	$at,.L0db46ca0
    ld	$s4,32($sp)
    move	$a2,$a3
    move	$a1,$a4
    ld	$s4,32($sp)
.L0db46c34:
    lwc1	$f2,0($a1)
    c.eq.s	$f2,$f4
    li	$at,1
    bc1tl	.L0db46c48
    move	$at,$zero
.L0db46c48:
    sb	$at,0($a2)
    lwc1	$f1,4($a1)
    c.eq.s	$f1,$f4
    li	$a6,1
    bc1tl	.L0db46c60
    move	$a6,$zero
.L0db46c60:
    sb	$a6,1($a2)
    lwc1	$f0,8($a1)
    c.eq.s	$f0,$f4
    li	$v1,1
    bc1tl	.L0db46c78
    move	$v1,$zero
.L0db46c78:
    sb	$v1,2($a2)
    lwc1	$f3,12($a1)
    c.eq.s	$f3,$f4
    li	$v0,1
    bc1tl	.L0db46c90
    move	$v0,$zero
.L0db46c90:
    # Line 1382
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    bne	$a2,$a0,.L0db46c34
    # Line 1383
    sb	$v0,-1($a2)
.L0db46ca0:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db46ca8:
    # Line 1390
    li	$v0,1
    beq	$a3,$v0,.L0db47370
    li	$v1,2
    beq	$a3,$v1,.L0db4744c
    nop
    beq	$a3,$a0,.L0db47518
    li	$a6,4
    bne	$a3,$a6,.L0db468d8
    ld	$gp,24($sp)
    # Line 1407
    blez	$a5,.L0db468d4
    sd	$s4,32($sp)
    move	$a1,$a4
    move	$s4,$a2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0db46d08
    addu	$a0,$a5,$a4
.L0db46cec:
    addiu	$a1,$a1,1
    # Line 1408
    lw	$at,0($s4)
    # Line 1407
    addiu	$s4,$s4,4
    addi	$a3,$a3,-1
    # Line 1408
    sltu	$at,$zero,$at
    bnez	$a3,.L0db46cec
    sb	$at,-1($a1)
.L0db46d08:
    move	$a4,$a1
    move	$a3,$s4
    sra	$v0,$a7,0x2
    beqz	$v0,.L0db46d64
    ld	$s4,32($sp)
    move	$a1,$a4
    move	$a2,$a3
    ld	$s4,32($sp)
.L0db46d28:
    lw	$v0,0($a2)
    sltu	$v0,$zero,$v0
    sb	$v0,0($a1)
    lw	$at,4($a2)
    sltu	$at,$zero,$at
    sb	$at,1($a1)
    lw	$a6,8($a2)
    sltu	$a6,$zero,$a6
    sb	$a6,2($a1)
    lw	$v1,12($a2)
    # Line 1407
    addiu	$a2,$a2,16
    addiu	$a1,$a1,4
    # Line 1408
    sltu	$v1,$zero,$v1
    # Line 1407
    bne	$a1,$a0,.L0db46d28
    # Line 1408
    sb	$v1,-1($a1)
.L0db46d64:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db46d6c:
    # Line 1416
    blez	$a5,.L0db468d4
    sd	$s5,40($sp)
    move	$a3,$a2
    move	$s5,$a4
    move	$a7,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db46db0
    addu	$a0,$a5,$a2
.L0db46d8c:
    # Line 1417
    lbu	$v1,0($a3)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 1416
    addiu	$a3,$a3,1
    addiu	$s5,$s5,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0db46d8c
    # Line 1417
    swc1	$f3,-4($s5)
.L0db46db0:
    move	$a4,$a3
    move	$a5,$s5
    sra	$a6,$a7,0x2
    beqz	$a6,.L0db46e2c
    ld	$s5,40($sp)
    move	$a1,$a5
    move	$a2,$a4
    ld	$s5,40($sp)
.L0db46dd0:
    lbu	$a6,0($a2)
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a1)
    lbu	$v1,1($a2)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($a1)
    lbu	$v0,2($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($a1)
    lbu	$at,3($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1416
    addiu	$a1,$a1,16
    addiu	$a2,$a2,4
    bne	$a2,$a0,.L0db46dd0
    # Line 1417
    swc1	$f0,-4($a1)
.L0db46e2c:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db46e34:
    sd	$s6,48($sp)
    sd	$s5,40($sp)
    sd	$s4,32($sp)
    # Line 1294
    blez	$a5,.L0db468d4
    ld	$s1,0($sp)
    move	$s4,$a2
    move	$s5,$a4
    sll	$s6,$a5,0x2
    move	$a1,$a5
    andi	$a0,$a5,0x3
    beqz	$a0,.L0db46e7c
    addu	$s6,$s6,$a4
.L0db46e64:
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    # Line 1295
    lwc1	$f0,-4($s4)
    addi	$a0,$a0,-1
    bnez	$a0,.L0db46e64
    swc1	$f0,-4($s5)
.L0db46e7c:
    move	$a2,$s4
    ld	$s4,32($sp)
    move	$a3,$s5
    sra	$at,$a1,0x2
    beqz	$at,.L0db46ed0
    ld	$s5,40($sp)
    move	$a1,$a3
    move	$a0,$a2
    ld	$s4,32($sp)
    ld	$s5,40($sp)
.L0db46ea4:
    lwc1	$f0,0($a0)
    swc1	$f0,0($a1)
    lwc1	$f3,4($a0)
    swc1	$f3,4($a1)
    lwc1	$f2,8($a0)
    swc1	$f2,8($a1)
    # Line 1294
    addiu	$a0,$a0,16
    # Line 1295
    lwc1	$f1,-4($a0)
    # Line 1294
    addiu	$a1,$a1,16
    bne	$a1,$s6,.L0db46ea4
    # Line 1295
    swc1	$f1,-4($a1)
.L0db46ed0:
    b	.L0db468d4
    ld	$s6,48($sp)
.L0db46ed8:
    # Line 1421
    blez	$a5,.L0db468d4
    move	$a3,$a2
    move	$a1,$a4
    move	$t0,$a5
    andi	$a7,$a5,0x3
    beqz	$a7,.L0db46f18
    addu	$a0,$a5,$a2
.L0db46ef4:
    # Line 1422
    lbu	$v0,0($a3)
    mtc1	$v0,$f1
    nop
    cvt.d.w	$f1,$f1
    # Line 1421
    addiu	$a3,$a3,1
    addiu	$a1,$a1,8
    addi	$a7,$a7,-1
    bnez	$a7,.L0db46ef4
    # Line 1422
    sdc1	$f1,-8($a1)
.L0db46f18:
    move	$a5,$a1
    sra	$v1,$t0,0x2
    beqz	$v1,.L0db46f8c
    move	$a4,$a3
    move	$a1,$a5
    move	$a2,$a4
.L0db46f30:
    lbu	$v1,0($a2)
    mtc1	$v1,$f1
    nop
    cvt.d.w	$f1,$f1
    sdc1	$f1,0($a1)
    lbu	$v0,1($a2)
    mtc1	$v0,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,8($a1)
    lbu	$at,2($a2)
    mtc1	$at,$f3
    nop
    cvt.d.w	$f3,$f3
    sdc1	$f3,16($a1)
    lbu	$a6,3($a2)
    mtc1	$a6,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1421
    addiu	$a1,$a1,32
    addiu	$a2,$a2,4
    bne	$a2,$a0,.L0db46f30
    # Line 1422
    sdc1	$f2,-8($a1)
.L0db46f8c:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db46f94:
    sd	$s4,32($sp)
    # Line 1299
    blez	$a5,.L0db468d4
    ld	$s1,0($sp)
    move	$a1,$a4
    move	$s4,$a2
    sll	$a0,$a5,0x2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0db46fd8
    addu	$a0,$a0,$a2
.L0db46fbc:
    addiu	$s4,$s4,4
    # Line 1300
    lwc1	$f2,-4($s4)
    # Line 1299
    addiu	$a1,$a1,8
    addi	$a3,$a3,-1
    # Line 1300
    cvt.d.s	$f2,$f2
    bnez	$a3,.L0db46fbc
    sdc1	$f2,-8($a1)
.L0db46fd8:
    move	$a4,$a1
    move	$a3,$s4
    sra	$a6,$a7,0x2
    beqz	$a6,.L0db47034
    ld	$s4,32($sp)
    move	$a2,$a4
    move	$a1,$a3
    ld	$s4,32($sp)
.L0db46ff8:
    lwc1	$f2,0($a1)
    cvt.d.s	$f2,$f2
    sdc1	$f2,0($a2)
    lwc1	$f1,4($a1)
    cvt.d.s	$f1,$f1
    sdc1	$f1,8($a2)
    lwc1	$f0,8($a1)
    cvt.d.s	$f0,$f0
    sdc1	$f0,16($a2)
    lwc1	$f3,12($a1)
    # Line 1299
    addiu	$a2,$a2,32
    addiu	$a1,$a1,16
    # Line 1300
    cvt.d.s	$f3,$f3
    # Line 1299
    bne	$a1,$a0,.L0db46ff8
    # Line 1300
    sdc1	$f3,-8($a2)
.L0db47034:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db4703c:
    sd	$s6,48($sp)
    sd	$s5,40($sp)
    sd	$s4,32($sp)
    # Line 1322
    blez	$a5,.L0db468d4
    ld	$s1,0($sp)
    move	$s4,$a2
    move	$s5,$a4
    sll	$s6,$a5,0x2
    move	$a1,$a5
    andi	$a0,$a5,0x3
    beqz	$a0,.L0db47084
    addu	$s6,$s6,$a4
.L0db4706c:
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    # Line 1323
    lwc1	$f3,-4($s4)
    addi	$a0,$a0,-1
    bnez	$a0,.L0db4706c
    swc1	$f3,-4($s5)
.L0db47084:
    move	$a2,$s4
    ld	$s4,32($sp)
    move	$a3,$s5
    sra	$at,$a1,0x2
    beqz	$at,.L0db470d8
    ld	$s5,40($sp)
    move	$a0,$a3
    move	$a1,$a2
    ld	$s4,32($sp)
    ld	$s5,40($sp)
.L0db470ac:
    lwc1	$f3,0($a1)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a1)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a1)
    swc1	$f1,8($a0)
    # Line 1322
    addiu	$a1,$a1,16
    # Line 1323
    lwc1	$f0,-4($a1)
    # Line 1322
    addiu	$a0,$a0,16
    bne	$a0,$s6,.L0db470ac
    # Line 1323
    swc1	$f0,-4($a0)
.L0db470d8:
    b	.L0db468d4
    ld	$s6,48($sp)
.L0db470e0:
    # Line 1426
    blez	$a5,.L0db468d4
    sd	$s5,40($sp)
    move	$a3,$a2
    move	$s5,$a4
    move	$a7,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db47118
    addu	$a0,$a5,$a2
.L0db47100:
    addiu	$a3,$a3,1
    addiu	$s5,$s5,4
    # Line 1427
    lbu	$v0,-1($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db47100
    sw	$v0,-4($s5)
.L0db47118:
    move	$a4,$a3
    move	$a5,$s5
    sra	$v1,$a7,0x2
    beqz	$v1,.L0db47164
    ld	$s5,40($sp)
    move	$a2,$a5
    move	$a1,$a4
    ld	$s5,40($sp)
.L0db47138:
    lbu	$v1,0($a1)
    sw	$v1,0($a2)
    lbu	$v0,1($a1)
    sw	$v0,4($a2)
    lbu	$at,2($a1)
    sw	$at,8($a2)
    # Line 1426
    addiu	$a2,$a2,16
    # Line 1427
    lbu	$a6,3($a1)
    # Line 1426
    addiu	$a1,$a1,4
    bne	$a1,$a0,.L0db47138
    # Line 1427
    sw	$a6,-4($a2)
.L0db47164:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db4716c:
    sd	$s6,48($sp)
    sd	$s5,40($sp)
    # Line 1304
    blez	$a5,.L0db468d4
    sd	$s4,32($sp)
    dmtc1	$zero,$f7
    move	$s4,$a2
    move	$s5,$a4
    sll	$s6,$a5,0x2
    move	$a0,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db4727c
    addu	$s6,$s6,$a4
    lwc1	$f5,0($s4)
    cvt.d.s	$f4,$f5
    c.le.d	$f7,$f4
    nop
    bc1f	.L0db47264
    lwc1	$f4,3280($s1)
    # Line 1305
    b	.L0db47268
    add.s	$f6,$f4,$f5
.L0db471bc:
    sd	$s4,32($sp)
    # Line 1327
    blez	$a5,.L0db468d4
    ld	$s1,0($sp)
    move	$a1,$a4
    move	$s4,$a2
    sll	$a0,$a5,0x2
    move	$a7,$a5
    andi	$a3,$a5,0x3
    beqz	$a3,.L0db47200
    addu	$a0,$a0,$a2
.L0db471e4:
    addiu	$s4,$s4,4
    # Line 1328
    lwc1	$f0,-4($s4)
    # Line 1327
    addiu	$a1,$a1,8
    addi	$a3,$a3,-1
    # Line 1328
    cvt.d.s	$f0,$f0
    bnez	$a3,.L0db471e4
    sdc1	$f0,-8($a1)
.L0db47200:
    move	$a4,$a1
    move	$a3,$s4
    sra	$a6,$a7,0x2
    beqz	$a6,.L0db4725c
    ld	$s4,32($sp)
    move	$a2,$a4
    move	$a1,$a3
    ld	$s4,32($sp)
.L0db47220:
    lwc1	$f0,0($a1)
    cvt.d.s	$f0,$f0
    sdc1	$f0,0($a2)
    lwc1	$f3,4($a1)
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a2)
    lwc1	$f2,8($a1)
    cvt.d.s	$f2,$f2
    sdc1	$f2,16($a2)
    lwc1	$f1,12($a1)
    # Line 1327
    addiu	$a2,$a2,32
    addiu	$a1,$a1,16
    # Line 1328
    cvt.d.s	$f1,$f1
    # Line 1327
    bne	$a1,$a0,.L0db47220
    # Line 1328
    sdc1	$f1,-8($a2)
.L0db4725c:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db47264:
    # Line 1305
    sub.s	$f6,$f5,$f4
.L0db47268:
    trunc.w.s	$f1,$f6
    mfc1	$at,$f1
    # Line 1304
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    # Line 1305
    sw	$at,-4($s5)
.L0db4727c:
    sra	$v0,$a0,0x1
    bnezl	$v0,.L0db472b0
    # Line 1304
    lwc1	$f5,0($s4)
.L0db47288:
    ld	$s4,32($sp)
    ld	$s5,40($sp)
    b	.L0db468d4
    ld	$s6,48($sp)
.L0db47298:
    # Line 1305
    sub.s	$f6,$f5,$f4
.L0db4729c:
    trunc.w.s	$f2,$f6
    mfc1	$v1,$f2
    # Line 1304
    beq	$s5,$s6,.L0db47288
    # Line 1305
    sw	$v1,-4($s5)
    # Line 1304
    lwc1	$f5,0($s4)
.L0db472b0:
    cvt.d.s	$f3,$f5
    c.le.d	$f7,$f3
    nop
    bc1f	.L0db472cc
    lwc1	$f4,3280($s1)
    # Line 1305
    b	.L0db472d0
    add.s	$f6,$f4,$f5
.L0db472cc:
    sub.s	$f6,$f5,$f4
.L0db472d0:
    trunc.w.s	$f5,$f6
    mfc1	$a6,$f5
    nop
    sw	$a6,0($s5)
    # Line 1304
    lwc1	$f5,4($s4)
    cvt.d.s	$f4,$f5
    c.le.d	$f7,$f4
    addiu	$s4,$s4,8
    addiu	$s5,$s5,8
    bc1f	.L0db47298
    lwc1	$f4,3280($s1)
    # Line 1305
    b	.L0db4729c
    add.s	$f6,$f4,$f5
.L0db47304:
    # Line 1332
    blez	$a5,.L0db468d4
    sd	$s6,48($sp)
    sd	$ra,56($sp)
    sd	$s5,40($sp)
    move	$s5,$a4
    sd	$s4,32($sp)
    move	$s4,$a2
    sll	$s6,$a5,0x2
    addu	$s6,$s6,$a4
.L0db47328:
    # Line 1333
    lwc1	$f14,0($s4)
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # Line 1332
    addiu	$s4,$s4,4
    # Line 1333
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s1)
    # Line 1332
    addiu	$s5,$s5,4
    # Line 1333
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    # Line 1332
    bne	$s5,$s6,.L0db47328
    # Line 1333
    sw	$at,-4($s5)
    ld	$s4,32($sp)
    ld	$s5,40($sp)
    ld	$s6,48($sp)
    b	.L0db468d4
    ld	$ra,56($sp)
.L0db47370:
    sd	$s6,48($sp)
    sd	$s5,40($sp)
    # Line 1392
    blez	$a5,.L0db468d4
    sd	$s4,32($sp)
    move	$s4,$a2
    move	$s5,$a4
    sll	$s6,$a5,0x2
    move	$a1,$a5
    andi	$a0,$a5,0x3
    beqz	$a0,.L0db473c0
    addu	$s6,$s6,$a4
.L0db4739c:
    # Line 1393
    lw	$at,0($s4)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 1392
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    addi	$a0,$a0,-1
    bnez	$a0,.L0db4739c
    # Line 1393
    swc1	$f1,-4($s5)
.L0db473c0:
    move	$a2,$s4
    ld	$s4,32($sp)
    move	$a3,$s5
    sra	$v0,$a1,0x2
    beqz	$v0,.L0db47444
    ld	$s5,40($sp)
    move	$a1,$a3
    move	$a0,$a2
    ld	$s4,32($sp)
    ld	$s5,40($sp)
.L0db473e8:
    lw	$v0,0($a0)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a1)
    lw	$at,4($a0)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,4($a1)
    lw	$a6,8($a0)
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,8($a1)
    lw	$v1,12($a0)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 1392
    addiu	$a0,$a0,16
    addiu	$a1,$a1,16
    bne	$a1,$s6,.L0db473e8
    # Line 1393
    swc1	$f2,-4($a1)
.L0db47444:
    b	.L0db468d4
    ld	$s6,48($sp)
.L0db4744c:
    # Line 1397
    blez	$a5,.L0db468d4
    move	$a1,$a4
    sd	$s4,32($sp)
    move	$s4,$a2
    move	$a7,$a5
    sll	$a0,$a5,0x2
    andi	$a3,$a5,0x3
    beqz	$a3,.L0db47494
    addu	$a0,$a0,$a2
.L0db47470:
    # Line 1398
    lw	$a6,0($s4)
    mtc1	$a6,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1397
    addiu	$s4,$s4,4
    addiu	$a1,$a1,8
    addi	$a3,$a3,-1
    bnez	$a3,.L0db47470
    # Line 1398
    sdc1	$f2,-8($a1)
.L0db47494:
    move	$a4,$a1
    move	$a3,$s4
    sra	$at,$a7,0x2
    beqz	$at,.L0db47510
    ld	$s4,32($sp)
    move	$a2,$a4
    move	$a1,$a3
    ld	$s4,32($sp)
.L0db474b4:
    lw	$at,0($a1)
    mtc1	$at,$f2
    nop
    cvt.d.w	$f2,$f2
    sdc1	$f2,0($a2)
    lw	$a6,4($a1)
    mtc1	$a6,$f1
    nop
    cvt.d.w	$f1,$f1
    sdc1	$f1,8($a2)
    lw	$v1,8($a1)
    mtc1	$v1,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,16($a2)
    lw	$v0,12($a1)
    mtc1	$v0,$f3
    nop
    cvt.d.w	$f3,$f3
    # Line 1397
    addiu	$a2,$a2,32
    addiu	$a1,$a1,16
    bne	$a1,$a0,.L0db474b4
    # Line 1398
    sdc1	$f3,-8($a2)
.L0db47510:
    b	.L0db468d8
    ld	$gp,24($sp)
.L0db47518:
    # Line 1402
    blez	$a5,.L0db468d8
    ld	$gp,24($sp)
    sd	$s4,32($sp)
    move	$s4,$a2
    sd	$s5,40($sp)
    move	$s5,$a4
    move	$a1,$a5
    sd	$s6,48($sp)
    sll	$s6,$a5,0x2
    andi	$a0,$a5,0x3
    beqz	$a0,.L0db47560
    addu	$s6,$s6,$a4
.L0db47548:
    addiu	$s5,$s5,4
    addiu	$s4,$s4,4
    # Line 1403
    lw	$at,-4($s4)
    addi	$a0,$a0,-1
    bnez	$a0,.L0db47548
    sw	$at,-4($s5)
.L0db47560:
    move	$a2,$s4
    ld	$s4,32($sp)
    move	$a3,$s5
    sra	$v0,$a1,0x2
    beqz	$v0,.L0db475b4
    ld	$s5,40($sp)
    move	$a1,$a3
    move	$a0,$a2
    ld	$s4,32($sp)
    ld	$s5,40($sp)
.L0db47588:
    lw	$v0,0($a0)
    sw	$v0,0($a1)
    lw	$at,4($a0)
    sw	$at,4($a1)
    lw	$a6,8($a0)
    sw	$a6,8($a1)
    # Line 1402
    addiu	$a0,$a0,16
    # Line 1403
    lw	$v1,-4($a0)
    # Line 1402
    addiu	$a1,$a1,16
    bne	$a1,$s6,.L0db47588
    # Line 1403
    sw	$v1,-4($a1)
.L0db475b4:
    b	.L0db468d4
    ld	$s6,48($sp)
.L0db475bc:
    # Line 1348
    lwc1	$f1,0($a2)
    lwc1	$f2,30852($s1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a4)
    # Line 1350
    lwc1	$f3,4($a2)
    lwc1	$f0,30856($s1)
    mul.s	$f3,$f3,$f0
    swc1	$f3,4($a4)
    # Line 1352
    lwc1	$f1,8($a2)
    lwc1	$f2,30860($s1)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($a4)
    # Line 1354
    lwc1	$f3,12($a2)
    lwc1	$f0,30864($s1)
    mul.s	$f3,$f3,$f0
    # Line 1356
    b	.L0db468d4
    # Line 1354
    swc1	$f3,12($a4)
.L0db47600:
    # Line 1358
    lwc1	$f1,0($a2)
    lwc1	$f2,30852($s1)
    mul.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,0($a4)
    # Line 1360
    lwc1	$f3,4($a2)
    lwc1	$f0,30856($s1)
    mul.s	$f3,$f3,$f0
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a4)
    # Line 1362
    lwc1	$f1,8($a2)
    lwc1	$f2,30860($s1)
    mul.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($a4)
    # Line 1364
    lwc1	$f3,12($a2)
    lwc1	$f0,30864($s1)
    mul.s	$f3,$f3,$f0
    cvt.d.s	$f3,$f3
    # Line 1366
    b	.L0db468d4
    # Line 1364
    sdc1	$f3,24($a4)
.L0db47654:
    # Line 1368
    lwc1	$f15,30852($s1)
    lwc1	$f14,0($a2)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    sd	$a4,8($sp)
    mul.s	$f13,$f13,$f14
    sd	$a2,16($sp)
    move	$v1,$a2
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s1)
    sd	$ra,56($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    ld	$a2,8($sp)
    mfc1	$a1,$f16
    # Line 1371
    ld	$a0,16($sp)
    # Line 1368
    sw	$a1,0($a2)
    # Line 1371
    lwc1	$f15,30856($s1)
    lwc1	$f14,4($a0)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    ld	$a5,8($sp)
    mfc1	$a4,$f16
    # Line 1374
    ld	$a3,16($sp)
    # Line 1371
    sw	$a4,4($a5)
    # Line 1374
    lwc1	$f15,30860($s1)
    lwc1	$f14,8($a3)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    ld	$t0,8($sp)
    mfc1	$a7,$f16
    # Line 1377
    ld	$a6,16($sp)
    # Line 1374
    sw	$a7,8($t0)
    # Line 1377
    lwc1	$f15,30864($s1)
    lwc1	$f14,12($a6)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$at,8($sp)
    mfc1	$ra,$f0
    nop
    sw	$ra,12($at)
    # Line 1380
    b	.L0db468d4
    ld	$ra,56($sp)
.end __glConvertResult

# Function: __glDoGet
# Declared: Line 1446 (Source lines: 1447-2253)
# Address: 0x0db4774c - 0x0db4a324 (Size: 11224 bytes, Frame: 160)
.globl __glDoGet
.ent __glDoGet
__glDoGet:
    # Line 1447
    move	$a3,$a2
    move	$a4,$a1
    # Line 1455
    li	$v0,1
    # Line 1447
    addiu	$sp,$sp,-1824
    sd	$s0,1736($sp)
    # Line 1455
    lw	$s0,__glCurrentContext
    # Line 1453
    addiu	$a7,$sp,1600
    sd	$s2,1712($sp)
    # Line 1452
    addiu	$s2,$sp,1200
    # Line 1451
    addiu	$t1,$sp,800
    # Line 1450
    addiu	$t0,$sp,400
    sd	$s1,1720($sp)
    # Line 1449
    addiu	$s1,$sp,0
    sd	$gp,1728($sp)
    # Line 1455
    lw	$at,__glBeginMode
    # Line 1447
    lui	$v1,0xb
    addiu	$v1,$v1,28492
    # Line 1455
    beq	$at,$v0,.L0db480b4
    # Line 1447
    addu	$gp,$t9,$v1
    # Line 1455
    sltiu	$a5,$a0,3357
    bnez	$a5,.L0db4784c
    # Line 1460
    sltiu	$at,$a0,3358
    bnez	$at,.L0db4789c
    li	$a1,0x8005
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db47a88
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db47d4c
    li	$a1,0x807d
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0db47de8
    sltu	$at,$a1,$a0
    beqz	$at,.L0db48300
    li	$a1,0x80b1
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db483f8
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db489a0
    li	$a1,0x80ba
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0db48e58
    sltu	$at,$a1,$a0
    beqz	$at,.L0db4973c
    li	$a1,0x80d1
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db49bd8
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db47a3c
    sd	$a7,1704($sp)
    li	$a1,0x817b
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0db4a2bc
    sltu	$at,$a1,$a0
    beqz	$at,.L0db4782c
    li	$v0,0x817c
    bne	$a0,$v0,.L0db481f4
.L0db4782c:
    # Line 2009
    addiu	$t2,$sp,1200
    # Line 2007
    addiu	$s1,$sp,0
    # Line 2008
    lwc1	$f1,_lit_41200000
    addiu	$s1,$s1,8
    # Line 2007
    lwc1	$f0,_lit_c1200000
    # Line 2008
    swc1	$f1,4($sp)
    # Line 2009
    b	.L0db478b0
    # Line 2007
    swc1	$f0,0($sp)
.L0db4784c:
    # Line 1460
    sltiu	$at,$a0,2984
    bnez	$at,.L0db478fc
    sltiu	$v0,$a0,2985
    bnez	$v0,.L0db47b4c
    sltiu	$v1,$a0,3248
    bnez	$v1,.L0db47c28
    sltiu	$a5,$a0,3249
    beqz	$a5,.L0db47eb4
.L0db4786c:
    # Line 2021
    addiu	$t2,$sp,1200
.L0db47870:
    # Line 2022
    lui	$at,0xffff
    ori	$at,$at,0x6b78
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    addu	$at,$at,$v0
    lw	$at,0($at)
    addiu	$s2,$t2,4
    # Line 2023
    b	.L0db478b0
    # Line 2022
    sw	$at,1200($sp)
.L0db4789c:
    # Line 1949
    addiu	$t2,$sp,1200
    # Line 1948
    lwc1	$f2,648($s0)
    addiu	$s1,$sp,0
    addiu	$s1,$s1,4
    swc1	$f2,0($sp)
.L0db478b0:
    # Line 2235
    addiu	$t3,$sp,0
    addiu	$a0,$sp,400
    addiu	$a1,$sp,800
    bne	$s2,$t2,.L0db47b00
    addiu	$t8,$sp,1600
    # Line 2239
    bnel	$s1,$t3,.L0db47b28
    # Line 2242
    move	$a0,$s0
    bnel	$a7,$t8,.L0db47be0
    # Line 2245
    move	$a0,$s0
    bne	$t0,$a0,.L0db47c00
    # Line 2248
    move	$a0,$s0
    bne	$t1,$a1,.L0db479f0
    # Line 2251
    move	$a0,$s0
.L0db478e4:
    ld	$gp,1728($sp)
    # Line 2253
    ld	$s0,1736($sp)
    ld	$s1,1720($sp)
    ld	$s2,1712($sp)
    jr	$ra
    addiu	$sp,$sp,1824
.L0db478fc:
    # Line 1460
    sltiu	$at,$a0,2899
    bnez	$at,.L0db47a18
    sltiu	$v0,$a0,2900
    bnez	$v0,.L0db48024
    sltiu	$v1,$a0,2960
    bnez	$v1,.L0db47d7c
    sltiu	$a5,$a0,2961
    bnez	$a5,.L0db47a3c
    sd	$a7,1704($sp)
    sltiu	$at,$a0,2976
    bnez	$at,.L0db483a4
    sltiu	$v0,$a0,2977
    bnez	$v0,.L0db487f4
    sltiu	$v1,$a0,2980
    bnez	$v1,.L0db48d94
    sltiu	$a5,$a0,2981
    bnez	$a5,.L0db4952c
    sltiu	$at,$a0,2982
    bnez	$at,.L0db49af4
    sltiu	$v0,$a0,2983
    bnez	$v0,.L0db4a06c
    li	$v1,2983
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1766
    lw	$at,29720($s0)
    lwc1	$f2,0($at)
    swc1	$f2,0($sp)
    lwc1	$f1,4($at)
    swc1	$f1,4($sp)
    lwc1	$f0,8($at)
    swc1	$f0,8($sp)
    lwc1	$f3,12($at)
    swc1	$f3,12($sp)
    # Line 1767
    lwc1	$f2,16($at)
    swc1	$f2,16($sp)
    lwc1	$f1,20($at)
    swc1	$f1,20($sp)
    lwc1	$f0,24($at)
    swc1	$f0,24($sp)
    lwc1	$f3,28($at)
    swc1	$f3,28($sp)
    # Line 1768
    lwc1	$f2,32($at)
    swc1	$f2,32($sp)
    lwc1	$f1,36($at)
    swc1	$f1,36($sp)
    lwc1	$f0,40($at)
    swc1	$f0,40($sp)
    lwc1	$f3,44($at)
    swc1	$f3,44($sp)
    # Line 1769
    lwc1	$f2,48($at)
    swc1	$f2,48($sp)
    lwc1	$f1,52($at)
    swc1	$f1,52($sp)
    lwc1	$f0,56($at)
    # Line 1770
    addiu	$t2,$sp,1200
    # Line 1769
    swc1	$f0,56($sp)
    # Line 1765
    addiu	$s1,$sp,0
    # Line 1769
    lwc1	$f3,60($at)
    addiu	$s1,$s1,64
    # Line 1770
    b	.L0db478b0
    # Line 1769
    swc1	$f3,60($sp)
.L0db479f0:
    # Line 2251
    addiu	$a2,$sp,800
    li	$a1,6
    sd	$ra,1744($sp)
    # lw $t9, -26836($gp) # &__glConvertResult
    addiu	$a5,$sp,800
    subu	$a5,$t1,$a5
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0db478e4
    ld	$ra,1744($sp)
.L0db47a18:
    # Line 1460
    sltiu	$at,$a0,2851
    bnez	$at,.L0db47cf0
    sltiu	$v0,$a0,2852
    bnez	$v0,.L0db4800c
    sltiu	$v1,$a0,2881
    bnez	$v1,.L0db48140
    sltiu	$a5,$a0,2882
    beqz	$a5,.L0db48580
    sd	$a7,1704($sp)
.L0db47a3c:
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    sd	$a4,1752($sp)
    sd	$ra,1744($sp)
    # Line 1523
    # lw $t9, -27836($gp) # &__glim_IsEnabled
    addiu	$a6,$sp,1600
    addiu	$a6,$a6,1
    jal	__glim_IsEnabled
    sd	$a6,1704($sp)
    # Line 1524
    addiu	$t2,$sp,1200
    # Line 1523
    sb	$v0,1600($sp)
    ld	$a4,1752($sp)
    ld	$a3,1760($sp)
    ld	$t1,1768($sp)
    ld	$t0,1776($sp)
    ld	$a7,1704($sp)
    # Line 1524
    b	.L0db478b0
    ld	$ra,1744($sp)
.L0db47a88:
    # Line 1460
    sltiu	$at,$a0,3479
    bnez	$at,.L0db47c8c
    sltiu	$v0,$a0,3480
    bnez	$v0,.L0db47a3c
    sd	$a7,1704($sp)
    sltiu	$v1,$a0,3570
    bnez	$v1,.L0db482ac
    sltiu	$a5,$a0,3571
    bnez	$a5,.L0db48710
    sltiu	$at,$a0,16384
    bnez	$at,.L0db48924
    sltiu	$v0,$a0,16385
    bnez	$v0,.L0db47a3c
    sltiu	$v1,$a0,16388
    bnez	$v1,.L0db4986c
    sltiu	$a5,$a0,16389
    bnez	$a5,.L0db47a3c
    sltiu	$at,$a0,16390
    bnez	$at,.L0db4a220
    sltiu	$v0,$a0,16391
    bnez	$v0,.L0db47a3c
    li	$v1,16391
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db47b00:
    # Line 2239
    move	$a0,$s0
    addiu	$a2,$sp,1200
    li	$a1,3
    # lw $t9, -26836($gp) # &__glConvertResult
    sd	$ra,1744($sp)
    subu	$a5,$s2,$t2
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0db478e4
    ld	$ra,1744($sp)
.L0db47b28:
    # Line 2242
    move	$a1,$zero
    addiu	$a2,$sp,0
    # lw $t9, -26836($gp) # &__glConvertResult
    sd	$ra,1744($sp)
    subu	$a5,$s1,$t3
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0db478e4
    ld	$ra,1744($sp)
.L0db47b4c:
    # Line 1773
    lw	$at,29732($s0)
    lwc1	$f2,0($at)
    swc1	$f2,0($sp)
    lwc1	$f1,4($at)
    swc1	$f1,4($sp)
    lwc1	$f0,8($at)
    swc1	$f0,8($sp)
    lwc1	$f3,12($at)
    swc1	$f3,12($sp)
    # Line 1774
    lwc1	$f2,16($at)
    swc1	$f2,16($sp)
    lwc1	$f1,20($at)
    swc1	$f1,20($sp)
    lwc1	$f0,24($at)
    swc1	$f0,24($sp)
    lwc1	$f3,28($at)
    swc1	$f3,28($sp)
    # Line 1775
    lwc1	$f2,32($at)
    swc1	$f2,32($sp)
    lwc1	$f1,36($at)
    swc1	$f1,36($sp)
    lwc1	$f0,40($at)
    swc1	$f0,40($sp)
    lwc1	$f3,44($at)
    swc1	$f3,44($sp)
    # Line 1776
    lwc1	$f2,48($at)
    swc1	$f2,48($sp)
    lwc1	$f1,52($at)
    swc1	$f1,52($sp)
    lwc1	$f0,56($at)
    # Line 1777
    addiu	$t2,$sp,1200
    # Line 1776
    swc1	$f0,56($sp)
    # Line 1772
    addiu	$s1,$sp,0
    # Line 1776
    lwc1	$f3,60($at)
    addiu	$s1,$s1,64
    # Line 1777
    b	.L0db478b0
    # Line 1776
    swc1	$f3,60($sp)
.L0db47be0:
    # Line 2245
    subu	$a5,$a7,$t8
    # lw $t9, -26836($gp) # &__glConvertResult
    addiu	$a2,$sp,1600
    sd	$ra,1744($sp)
    bal __glConvertResult
    li	$a1,4
    b	.L0db478e4
    ld	$ra,1744($sp)
.L0db47c00:
    # Line 2248
    addiu	$a2,$sp,400
    li	$a1,5
    sd	$ra,1744($sp)
    # lw $t9, -26836($gp) # &__glConvertResult
    addiu	$a5,$sp,400
    subu	$a5,$t0,$a5
    bal __glConvertResult
    sra	$a5,$a5,0x2
    b	.L0db478e4
    ld	$ra,1744($sp)
.L0db47c28:
    # Line 1460
    sltiu	$at,$a0,3104
    bnez	$at,.L0db47e5c
    sltiu	$v0,$a0,3105
    bnez	$v0,.L0db48360
    sltiu	$v1,$a0,3152
    bnez	$v1,.L0db48458
    sltiu	$a5,$a0,3153
    bnez	$a5,.L0db48b98
    sltiu	$at,$a0,3168
    bnez	$at,.L0db48ec4
    sltiu	$v0,$a0,3169
    bnez	$v0,.L0db47a3c
    sltiu	$v1,$a0,3170
    bnez	$v1,.L0db49cd8
    sltiu	$a5,$a0,3171
    bnez	$a5,.L0db47a3c
    li	$at,3171
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db47c8c:
    # Line 1460
    sltiu	$v0,$a0,3411
    bnez	$v0,.L0db47f14
    sltiu	$v1,$a0,3412
    bnez	$v1,.L0db48378
    sltiu	$a5,$a0,3440
    bnez	$a5,.L0db48494
    sltiu	$at,$a0,3441
    bnez	$at,.L0db48bc4
    sltiu	$v0,$a0,3475
    bnez	$v0,.L0db48ef0
    sltiu	$v1,$a0,3476
    bnez	$v1,.L0db47a3c
    sltiu	$a5,$a0,3477
    bnez	$a5,.L0db49d5c
    sltiu	$at,$a0,3478
    bnez	$at,.L0db47a3c
    li	$v0,3478
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db47cf0:
    # Line 1460
    sltiu	$v1,$a0,2824
    bnez	$v1,.L0db47f60
    sltiu	$a5,$a0,2825
    bnez	$a5,.L0db4838c
    sltiu	$at,$a0,2835
    bnez	$at,.L0db48518
    sltiu	$v0,$a0,2836
    bnez	$v0,.L0db48cb4
    sltiu	$v1,$a0,2849
    bnez	$v1,.L0db48f8c
    sltiu	$a5,$a0,2850
    bnez	$a5,.L0db499dc
    li	$at,2850
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1620
    lwc1	$f0,3460($s0)
    # Line 1622
    addiu	$t2,$sp,1200
    # Line 1620
    swc1	$f0,0($sp)
    addiu	$s1,$sp,0
    # Line 1621
    lwc1	$f3,3464($s0)
    addiu	$s1,$s1,8
    # Line 1622
    b	.L0db478b0
    # Line 1621
    swc1	$f3,4($sp)
.L0db47d4c:
    # Line 2129
    lwc1	$f0,1740($s0)
    swc1	$f0,400($sp)
    # Line 2130
    lwc1	$f3,1744($s0)
    swc1	$f3,404($sp)
    # Line 2131
    lwc1	$f2,1748($s0)
    # Line 2133
    addiu	$t2,$sp,1200
    # Line 2131
    swc1	$f2,408($sp)
    # Line 2129
    addiu	$t0,$sp,400
    # Line 2132
    lwc1	$f1,1752($s0)
    addiu	$t0,$t0,16
    # Line 2133
    b	.L0db478b0
    # Line 2132
    swc1	$f1,412($sp)
.L0db47d7c:
    # Line 1460
    sltiu	$at,$a0,2916
    bnez	$at,.L0db48070
    sltiu	$v0,$a0,2917
    bnez	$v0,.L0db483e0
    sltiu	$v1,$a0,2930
    bnez	$v1,.L0db48770
    sltiu	$a5,$a0,2931
    bnez	$a5,.L0db48e40
    sltiu	$at,$a0,2932
    bnez	$at,.L0db493c0
    sltiu	$v0,$a0,2933
    bnez	$v0,.L0db49bb0
    li	$v1,2944
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1701
    lwc1	$f0,1552($s0)
    swc1	$f0,400($sp)
    # Line 1702
    lwc1	$f3,1556($s0)
    swc1	$f3,404($sp)
    # Line 1703
    lwc1	$f2,1560($s0)
    # Line 1705
    addiu	$t2,$sp,1200
    # Line 1703
    swc1	$f2,408($sp)
    # Line 1701
    addiu	$t0,$sp,400
    # Line 1704
    lwc1	$f1,1564($s0)
    addiu	$t0,$t0,16
    # Line 1705
    b	.L0db478b0
    # Line 1704
    swc1	$f1,412($sp)
.L0db47de8:
    # Line 1460
    li	$a1,0x8068
    sltu	$at,$a0,$a1
    bnez	$at,.L0db480e0
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db48be4
    li	$a1,0x8075
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0db48724
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0db47a3c
    sd	$a7,1704($sp)
    li	$a1,0x8079
    sltu	$at,$a0,$a1
    bnez	$at,.L0db49410
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db47a3c
    sd	$a7,1704($sp)
    li	$a1,0x807b
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0db4a03c
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0db4a2a0
    li	$at,0x807c
    bne	$a0,$at,.L0db481f4
    # Line 2169
    addiu	$t2,$sp,1200
    lw	$v0,4804($s0)
    addiu	$s2,$t2,4
    # Line 2170
    b	.L0db478b0
    # Line 2169
    sw	$v0,1200($sp)
.L0db47e5c:
    # Line 1460
    sltiu	$v1,$a0,3042
    bnez	$v1,.L0db48188
    sltiu	$a5,$a0,3043
    bnez	$a5,.L0db47a3c
    sd	$a7,1704($sp)
    sltiu	$at,$a0,3073
    bnez	$at,.L0db48ae8
    sltiu	$v0,$a0,3074
    bnez	$v0,.L0db49398
    sltiu	$v1,$a0,3088
    bnez	$v1,.L0db497a4
    sltiu	$a5,$a0,3089
    bnez	$a5,.L0db49fd4
    li	$at,3089
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db47eb4:
    # Line 1460
    sltiu	$v0,$a0,3330
    bnez	$v0,.L0db48220
    sltiu	$v1,$a0,3331
    bnez	$v1,.L0db486e8
    sltiu	$a5,$a0,3349
    bnez	$a5,.L0db48880
    sltiu	$at,$a0,3350
    bnez	$at,.L0db49300
    sltiu	$v0,$a0,3353
    bnez	$v0,.L0db49634
    sltiu	$v1,$a0,3354
    bnez	$v1,.L0db49ee0
    sltiu	$a5,$a0,3355
    bnez	$a5,.L0db4a168
    sltiu	$at,$a0,3356
    bnez	$at,.L0db4a30c
    li	$v0,3356
    bne	$a0,$v0,.L0db481f4
    # Line 1934
    addiu	$t2,$sp,1200
    # Line 1933
    addiu	$s1,$sp,0
    lwc1	$f1,628($s0)
    addiu	$s1,$s1,4
    # Line 1934
    b	.L0db478b0
    # Line 1933
    swc1	$f1,0($sp)
.L0db47f14:
    # Line 1460
    sltiu	$at,$a0,3382
    bnez	$at,.L0db48270
    sltiu	$v0,$a0,3383
    bnez	$v0,.L0db486fc
    sltiu	$v1,$a0,3387
    bnez	$v1,.L0db488c0
    sltiu	$a5,$a0,3388
    bnez	$a5,.L0db49330
    sltiu	$at,$a0,3409
    bnez	$at,.L0db49664
    sltiu	$v0,$a0,3410
    bnez	$v0,.L0db49f28
    li	$v1,3410
    bne	$a0,$v1,.L0db481f4
    # Line 2061
    addiu	$t2,$sp,1200
    lw	$a5,3140($s0)
    addiu	$s2,$t2,4
    # Line 2062
    b	.L0db478b0
    # Line 2061
    sw	$a5,1200($sp)
.L0db47f60:
    # Line 1460
    sltiu	$at,$a0,2820
    bnez	$at,.L0db48314
    sltiu	$v0,$a0,2821
    bnez	$v0,.L0db486bc
    sltiu	$v1,$a0,2822
    bnez	$v1,.L0db48c74
    sltiu	$a5,$a0,2823
    bnez	$a5,.L0db49448
    li	$at,2823
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1586
    lwc1	$f1,344($s0)
    lwc1	$f2,3380($s0)
    sub.s	$f1,$f1,$f2
    swc1	$f1,0($sp)
    lbu	$v0,4552($s0)
    lwc1	$f4,348($s0)
    lwc1	$f0,3384($s0)
    beqz	$v0,.L0db4a2b4
    sub.s	$f4,$f4,$f0
    # Line 1589
    lw	$v1,3416($s0)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    sub.s	$f3,$f3,$f4
    lwc1	$f0,3388($s0)
    sub.s	$f3,$f3,$f0
    swc1	$f3,4($sp)
.L0db47fd0:
    # Line 1597
    lw	$at,31356($s0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f1,352($s0)
    div.s	$f1,$f1,$f2
    # Line 1599
    addiu	$t2,$sp,1200
    # Line 1597
    swc1	$f1,8($sp)
    # Line 1594
    addiu	$s1,$sp,0
    # Line 1598
    lwc1	$f0,340($s0)
    addiu	$s1,$s1,16
    # Line 1599
    b	.L0db478b0
    # Line 1598
    swc1	$f0,-4($s1)
.L0db4800c:
    # Line 1625
    addiu	$t2,$sp,1200
    # Line 1624
    addiu	$s1,$sp,0
    lwc1	$f3,3468($s0)
    addiu	$s1,$s1,4
    # Line 1625
    b	.L0db478b0
    # Line 1624
    swc1	$f3,0($sp)
.L0db48024:
    sd	$a7,1704($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    sd	$a4,1752($sp)
    # Line 1652
    move	$a0,$s0
    # lw $t9, -26684($gp) # &__glUnScaleColorf
    addiu	$a2,$s0,1308
    sd	$ra,1744($sp)
    bal __glUnScaleColorf
    addiu	$a1,$sp,400
    # Line 1654
    addiu	$t2,$sp,1200
    ld	$a4,1752($sp)
    ld	$a3,1760($sp)
    ld	$t1,1768($sp)
    ld	$a7,1704($sp)
    ld	$ra,1744($sp)
    # Line 1653
    addiu	$t0,$sp,400
    # Line 1654
    b	.L0db478b0
    # Line 1653
    addiu	$t0,$t0,16
.L0db48070:
    # Line 1460
    sltiu	$at,$a0,2912
    bnez	$at,.L0db481c4
    sltiu	$v0,$a0,2913
    bnez	$v0,.L0db47a3c
    sd	$a7,1704($sp)
    sltiu	$v1,$a0,2914
    bnez	$v1,.L0db48dfc
    sltiu	$a5,$a0,2915
    bnez	$a5,.L0db495c0
    li	$at,2915
    bne	$a0,$at,.L0db481f4
    # Line 1672
    addiu	$t2,$sp,1200
    # Line 1671
    addiu	$s1,$sp,0
    lwc1	$f0,1516($s0)
    addiu	$s1,$s1,4
    # Line 1672
    b	.L0db478b0
    # Line 1671
    swc1	$f0,0($sp)
.L0db480b4:
    # Line 1455
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,1728($sp)
    ld	$s0,1736($sp)
    ld	$ra,1744($sp)
    ld	$s1,1720($sp)
    ld	$s2,1712($sp)
    jr	$ra
    addiu	$sp,$sp,1824
.L0db480e0:
    # Line 1460
    li	$a1,0x8020
    sltu	$at,$a0,$a1
    bnez	$at,.L0db484d0
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db48bac
    li	$a1,0x802e
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0db48f24
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0db47a3c
    sd	$a7,1704($sp)
    li	$a1,0x8038
    sltu	$at,$a0,$a1
    bnez	$at,.L0db49da0
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db4a270
    li	$v1,0x8039
    bne	$a0,$v1,.L0db481f4
    # Line 2142
    addiu	$t2,$sp,1200
    # Line 2141
    addiu	$s1,$sp,0
    lwc1	$f1,480($s0)
    addiu	$s1,$s1,4
    # Line 2142
    b	.L0db478b0
    # Line 2141
    swc1	$f1,0($sp)
.L0db48140:
    # Line 1460
    sltiu	$at,$a0,2865
    bnez	$at,.L0db48554
    sltiu	$v0,$a0,2866
    bnez	$v0,.L0db48ca0
    sltiu	$v1,$a0,2867
    bnez	$v1,.L0db48fb0
    sltiu	$a5,$a0,2868
    bnez	$a5,.L0db49a38
    li	$at,2880
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1633
    lw	$v1,460($s0)
    sw	$v1,1200($sp)
    addiu	$t2,$sp,1200
    # Line 1634
    lw	$v0,464($s0)
    addiu	$s2,$t2,8
    # Line 1635
    b	.L0db478b0
    # Line 1634
    sw	$v0,1204($sp)
.L0db48188:
    # Line 1460
    sltiu	$a5,$a0,3010
    bnez	$a5,.L0db485c0
    sltiu	$at,$a0,3011
    bnez	$at,.L0db48ccc
    sltiu	$v0,$a0,3040
    bnez	$v0,.L0db48fcc
    sltiu	$v1,$a0,3041
    bnez	$v1,.L0db499f4
    li	$a5,3041
    bne	$a0,$a5,.L0db481f4
    # Line 1795
    addiu	$t2,$sp,1200
    lw	$at,1728($s0)
    addiu	$s2,$t2,4
    # Line 1796
    b	.L0db478b0
    # Line 1795
    sw	$at,1200($sp)
.L0db481c4:
    # Line 1460
    sltiu	$v0,$a0,2902
    bnez	$v0,.L0db487a4
    sltiu	$v1,$a0,2903
    bnez	$v1,.L0db48ea0
    # Line 1659
    addiu	$t2,$sp,1200
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    # Line 1460
    li	$a5,2903
    beq	$a0,$a5,.L0db47a3c
    sd	$a4,1752($sp)
.L0db481f4:
    # Line 2233
    # lw $t9, -27320($gp) # &__glSetError
.L0db481f8:
    sd	$ra,1744($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,1728($sp)
    # Line 2234
    ld	$s0,1736($sp)
    ld	$ra,1744($sp)
    ld	$s1,1720($sp)
    ld	$s2,1712($sp)
    jr	$ra
    addiu	$sp,$sp,1824
.L0db48220:
    # Line 1460
    sltiu	$at,$a0,3257
    bnez	$at,.L0db485f0
    sltiu	$v0,$a0,3258
    bnez	$v0,.L0db4786c
    sltiu	$v1,$a0,3316
    bnez	$v1,.L0db49220
    sltiu	$a5,$a0,3317
    bnez	$a5,.L0db49ac4
    sltiu	$at,$a0,3328
    bnez	$at,.L0db49e0c
    sltiu	$v0,$a0,3329
    bnez	$v0,.L0db4a288
    li	$v1,3329
    bne	$a0,$v1,.L0db481f4
    # Line 1868
    addiu	$t2,$sp,1200
    # Line 1867
    addiu	$a7,$sp,1600
    lbu	$a5,1073($s0)
    addiu	$a7,$a7,1
    # Line 1868
    b	.L0db478b0
    # Line 1867
    sb	$a5,1600($sp)
.L0db48270:
    # Line 1460
    sltiu	$at,$a0,3378
    bnez	$at,.L0db48624
    sltiu	$v0,$a0,3379
    bnez	$v0,.L0db48ce4
    sltiu	$v1,$a0,3380
    bnez	$v1,.L0db49064
    sltiu	$a5,$a0,3381
    bnez	$a5,.L0db49a64
    li	$at,3381
    bne	$a0,$at,.L0db481f4
    # Line 2037
    addiu	$t2,$sp,1200
    lw	$v0,3480($s0)
    addiu	$s2,$t2,4
    # Line 2038
    b	.L0db478b0
    # Line 2037
    sw	$v0,1200($sp)
.L0db482ac:
    # Line 1460
    sltiu	$v1,$a0,3511
    bnez	$v1,.L0db48650
    sltiu	$a5,$a0,3512
    bnez	$a5,.L0db47a3c
    sd	$a7,1704($sp)
    sltiu	$at,$a0,3539
    bnez	$at,.L0db49298
    sltiu	$v0,$a0,3540
    bnez	$v0,.L0db49ad8
    sltiu	$v1,$a0,3553
    bnez	$v1,.L0db49e44
    sltiu	$a5,$a0,3554
    bnez	$a5,.L0db47a3c
    sd	$a7,1704($sp)
    li	$at,3569
    bne	$a0,$at,.L0db481f4
    # Line 2223
    addiu	$t2,$sp,1200
    lw	$v0,4580($s0)
    addiu	$s2,$t2,4
    # Line 2224
    b	.L0db478b0
    # Line 2223
    sw	$v0,1200($sp)
.L0db48300:
    # Line 2172
    addiu	$t2,$sp,1200
    lw	$v1,4808($s0)
    addiu	$s2,$t2,4
    # Line 2173
    b	.L0db478b0
    # Line 2172
    sw	$v1,1200($sp)
.L0db48314:
    # Line 1460
    sltiu	$a5,$a0,2818
    bnez	$a5,.L0db48694
    sltiu	$at,$a0,2819
    bnez	$at,.L0db48d28
    li	$v0,2819
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1552
    lwc1	$f1,200($s0)
    swc1	$f1,0($sp)
    # Line 1553
    lwc1	$f0,204($s0)
    swc1	$f0,4($sp)
    # Line 1554
    lwc1	$f3,208($s0)
    # Line 1556
    addiu	$t2,$sp,1200
    # Line 1554
    swc1	$f3,8($sp)
    # Line 1552
    addiu	$s1,$sp,0
    # Line 1555
    lwc1	$f2,212($s0)
    addiu	$s1,$s1,16
    # Line 1556
    b	.L0db478b0
    # Line 1555
    swc1	$f2,12($sp)
.L0db48360:
    # Line 1814
    addiu	$t2,$sp,1200
    # Line 1813
    addiu	$s1,$sp,0
    lwc1	$f2,1776($s0)
    addiu	$s1,$s1,4
    # Line 1814
    b	.L0db478b0
    # Line 1813
    swc1	$f2,0($sp)
.L0db48378:
    # Line 2064
    addiu	$t2,$sp,1200
    lw	$at,3144($s0)
    addiu	$s2,$t2,4
    # Line 2065
    b	.L0db478b0
    # Line 2064
    sw	$at,1200($sp)
.L0db4838c:
    # Line 1602
    addiu	$t2,$sp,1200
    # Line 1601
    addiu	$a7,$sp,1600
    lbu	$v0,428($s0)
    addiu	$a7,$a7,1
    # Line 1602
    b	.L0db478b0
    # Line 1601
    sb	$v0,1600($sp)
.L0db483a4:
    # Line 1460
    sltiu	$at,$a0,2965
    bnez	$at,.L0db487c8
    sltiu	$v0,$a0,2966
    bnez	$v0,.L0db48eb0
    sltiu	$v1,$a0,2967
    bnez	$v1,.L0db49494
    sltiu	$a5,$a0,2968
    bnez	$a5,.L0db49c10
    li	$at,2968
    bne	$a0,$at,.L0db481f4
    # Line 1728
    addiu	$t2,$sp,1200
    lh	$v0,1578($s0)
    addiu	$s2,$t2,4
    # Line 1729
    b	.L0db478b0
    # Line 1728
    sw	$v0,1200($sp)
.L0db483e0:
    # Line 1675
    addiu	$t2,$sp,1200
    # Line 1674
    addiu	$s1,$sp,0
    lwc1	$f3,1520($s0)
    addiu	$s1,$s1,4
    # Line 1675
    b	.L0db478b0
    # Line 1674
    swc1	$f3,0($sp)
.L0db483f8:
    # Line 1460
    li	$a1,0x8086
    sltu	$at,$a0,$a1
    bnez	$at,.L0db48808
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db4912c
    li	$a1,0x808b
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0db4955c
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0db49df8
    li	$a1,0x808d
    sltu	$at,$a0,$a1
    bnez	$at,.L0db4a10c
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db4a2f8
    li	$v1,0x8094
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48458:
    # Line 1460
    sltiu	$a5,$a0,3121
    bnez	$a5,.L0db4884c
    sltiu	$at,$a0,3122
    bnez	$at,.L0db492e4
    sltiu	$v0,$a0,3123
    bnez	$v0,.L0db495ec
    sltiu	$v1,$a0,3124
    bnez	$v1,.L0db49f50
    li	$a5,3136
    bne	$a0,$a5,.L0db481f4
    # Line 1837
    addiu	$t2,$sp,1200
    lw	$at,3092($s0)
    addiu	$s2,$t2,4
    # Line 1838
    b	.L0db478b0
    # Line 1837
    sw	$at,1200($sp)
.L0db48494:
    # Line 1460
    sltiu	$v0,$a0,3416
    bnez	$v0,.L0db488f8
    sltiu	$v1,$a0,3417
    bnez	$v1,.L0db49344
    sltiu	$a5,$a0,3418
    bnez	$a5,.L0db49680
    sltiu	$at,$a0,3419
    bnez	$at,.L0db49f3c
    li	$v0,3419
    bne	$a0,$v0,.L0db481f4
    # Line 2093
    addiu	$t2,$sp,1200
    lw	$v1,3124($s0)
    addiu	$s2,$t2,4
    # Line 2094
    b	.L0db478b0
    # Line 2093
    sw	$v1,1200($sp)
.L0db484d0:
    # Line 1460
    li	$a1,0x801c
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0db48968
    sltu	$at,$a1,$a0
    beqz	$at,.L0db49318
    li	$a1,0x801e
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db496c8
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db49ef8
    li	$a5,0x801f
    bne	$a0,$a5,.L0db481f4
    # Line 1964
    addiu	$t2,$sp,1200
    # Line 1963
    addiu	$s1,$sp,0
    lwc1	$f0,668($s0)
    addiu	$s1,$s1,4
    # Line 1964
    b	.L0db478b0
    # Line 1963
    swc1	$f0,0($sp)
.L0db48518:
    # Line 1460
    sltiu	$at,$a0,2833
    bnez	$at,.L0db48a34
    sltiu	$v0,$a0,2834
    bnez	$v0,.L0db49358
    li	$v1,2834
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1610
    lwc1	$f2,3448($s0)
    # Line 1612
    addiu	$t2,$sp,1200
    # Line 1610
    swc1	$f2,0($sp)
    addiu	$s1,$sp,0
    # Line 1611
    lwc1	$f1,3452($s0)
    addiu	$s1,$s1,8
    # Line 1612
    b	.L0db478b0
    # Line 1611
    swc1	$f1,4($sp)
.L0db48554:
    # Line 1460
    sltiu	$at,$a0,2854
    bnez	$at,.L0db48a60
    sltiu	$v0,$a0,2855
    bnez	$v0,.L0db49370
    li	$v1,2864
    bne	$a0,$v1,.L0db481f4
    # Line 1861
    addiu	$t2,$sp,1200
    lw	$a5,4684($s0)
    addiu	$s2,$t2,4
    # Line 1862
    b	.L0db478b0
    # Line 1861
    sw	$a5,1200($sp)
.L0db48580:
    # Line 1460
    sltiu	$at,$a0,2886
    bnez	$at,.L0db48a84
    sltiu	$v0,$a0,2887
    bnez	$v0,.L0db49384
    sltiu	$v1,$a0,2897
    bnez	$v1,.L0db49780
    sltiu	$a5,$a0,2898
    bnez	$a5,.L0db49fbc
    li	$at,2898
    bne	$a0,$at,.L0db481f4
    # Line 1650
    addiu	$t2,$sp,1200
    # Line 1649
    addiu	$a7,$sp,1600
    lbu	$v0,1325($s0)
    addiu	$a7,$a7,1
    # Line 1650
    b	.L0db478b0
    # Line 1649
    sb	$v0,1600($sp)
.L0db485c0:
    # Line 1460
    sltiu	$at,$a0,3008
    bnez	$at,.L0db48ab4
    sltiu	$v0,$a0,3009
    bnez	$v0,.L0db47a3c
    sd	$a7,1704($sp)
    li	$v1,3009
    bne	$a0,$v1,.L0db481f4
    # Line 1786
    addiu	$t2,$sp,1200
    lw	$a5,1720($s0)
    addiu	$s2,$t2,4
    # Line 1787
    b	.L0db478b0
    # Line 1786
    sw	$a5,1200($sp)
.L0db485f0:
    # Line 1460
    sltiu	$at,$a0,3253
    bnez	$at,.L0db48b18
    sltiu	$v0,$a0,3254
    bnez	$v0,.L0db4786c
    sltiu	$v1,$a0,3255
    bnez	$v1,.L0db49924
    sltiu	$a5,$a0,3256
    bnez	$a5,.L0db4786c
    li	$at,3256
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db47870
    # Line 2021
    addiu	$t2,$sp,1200
.L0db48624:
    # Line 1460
    sltiu	$v0,$a0,3376
    bnez	$v0,.L0db48b3c
    sltiu	$v1,$a0,3377
    bnez	$v1,.L0db493ac
    li	$a5,3377
    bne	$a0,$a5,.L0db481f4
    # Line 2028
    addiu	$t2,$sp,1200
    lw	$at,3328($s0)
    addiu	$s2,$t2,4
    # Line 2029
    b	.L0db478b0
    # Line 2028
    sw	$at,1200($sp)
.L0db48650:
    # Line 1460
    sltiu	$v0,$a0,3507
    bnez	$v0,.L0db48b64
    sltiu	$v1,$a0,3508
    bnez	$v1,.L0db47a3c
    sltiu	$a5,$a0,3509
    bnez	$a5,.L0db49984
    sltiu	$at,$a0,3510
    bnez	$at,.L0db47a3c
    li	$v0,3510
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48694:
    # Line 1460
    sltiu	$v1,$a0,2817
    bnez	$v1,.L0db48c38
    sltiu	$a5,$a0,2818
    beqz	$a5,.L0db481f4
    # Line 1545
    addiu	$t2,$sp,1200
    # Line 1544
    addiu	$s1,$sp,0
    lwc1	$f3,424($s0)
    addiu	$s1,$s1,4
    # Line 1545
    b	.L0db478b0
    # Line 1544
    swc1	$f3,0($sp)
.L0db486bc:
    # Line 1566
    lbu	$at,3105($s0)
    beqz	$at,.L0db49754
    # Line 1568
    lwc1	$f0,_lit_3f800000
    addiu	$s1,$sp,0
    # Line 1571
    addiu	$s1,$s1,16
    swc1	$f0,12($sp)
    # Line 1570
    swc1	$f0,8($sp)
    # Line 1569
    swc1	$f0,4($sp)
    # Line 1568
    swc1	$f0,0($sp)
.L0db486e0:
    # Line 1578
    b	.L0db478b0
    addiu	$t2,$sp,1200
.L0db486e8:
    # Line 1873
    addiu	$t2,$sp,1200
    lw	$at,1076($s0)
    addiu	$s2,$t2,4
    # Line 1874
    b	.L0db478b0
    # Line 1873
    sw	$at,1200($sp)
.L0db486fc:
    # Line 2043
    addiu	$t2,$sp,1200
    lw	$v0,3492($s0)
    addiu	$s2,$t2,4
    # Line 2044
    b	.L0db478b0
    # Line 2043
    sw	$v0,1200($sp)
.L0db48710:
    # Line 2226
    addiu	$t2,$sp,1200
    lw	$v1,4584($s0)
    addiu	$s2,$t2,4
    # Line 2227
    b	.L0db478b0
    # Line 2226
    sw	$v1,1200($sp)
.L0db48724:
    # Line 1460
    li	$a1,0x806e
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0db48cf8
    sltu	$at,$a1,$a0
    beqz	$at,.L0db494d4
    li	$a1,0x8073
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db49aa0
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db4a058
    li	$a5,0x8074
    bne	$a0,$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48770:
    # Line 1460
    sltiu	$at,$a0,2928
    bnez	$at,.L0db48d50
    sltiu	$v0,$a0,2929
    bnez	$v0,.L0db49504
    li	$v1,2929
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db487a4:
    # Line 1460
    sltiu	$a5,$a0,2901
    bnez	$a5,.L0db48de0
    sltiu	$at,$a0,2902
    beqz	$at,.L0db481f4
    # Line 1656
    addiu	$t2,$sp,1200
    lw	$v0,1296($s0)
    addiu	$s2,$t2,4
    # Line 1657
    b	.L0db478b0
    # Line 1656
    sw	$v0,1200($sp)
.L0db487c8:
    # Line 1460
    sltiu	$v1,$a0,2963
    bnez	$v1,.L0db48e1c
    sltiu	$a5,$a0,2964
    bnez	$a5,.L0db495d8
    li	$at,2964
    bne	$a0,$at,.L0db481f4
    # Line 1716
    addiu	$t2,$sp,1200
    lw	$v0,1580($s0)
    addiu	$s2,$t2,4
    # Line 1717
    b	.L0db478b0
    # Line 1716
    sw	$v0,1200($sp)
.L0db487f4:
    # Line 1731
    addiu	$t2,$sp,1200
    lw	$v1,1648($s0)
    addiu	$s2,$t2,4
    # Line 1732
    b	.L0db478b0
    # Line 1731
    sw	$v1,1200($sp)
.L0db48808:
    # Line 1460
    li	$a1,0x8082
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0db48f5c
    sltu	$at,$a1,$a0
    beqz	$at,.L0db498bc
    li	$a1,0x8084
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db49c50
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db4a1f8
    li	$a5,0x8085
    bne	$a0,$a5,.L0db481f4
    # Line 2196
    addiu	$t2,$sp,1200
    lw	$at,4872($s0)
    addiu	$s2,$t2,4
    # Line 2197
    b	.L0db478b0
    # Line 2196
    sw	$at,1200($sp)
.L0db4884c:
    # Line 1460
    sltiu	$v0,$a0,3107
    bnez	$v0,.L0db48ff0
    sltiu	$v1,$a0,3108
    bnez	$v1,.L0db49a08
    li	$a5,3120
    bne	$a0,$a5,.L0db481f4
    # Line 1817
    addiu	$t2,$sp,1200
    # Line 1816
    lbu	$at,3105($s0)
    addiu	$a7,$sp,1600
    addiu	$a7,$a7,1
    sltu	$at,$zero,$at
    # Line 1817
    b	.L0db478b0
    # Line 1816
    sb	$at,1600($sp)
.L0db48880:
    # Line 1460
    sltiu	$at,$a0,3345
    bnez	$at,.L0db49034
    sltiu	$v0,$a0,3346
    bnez	$v0,.L0db49a4c
    sltiu	$v1,$a0,3347
    bnez	$v1,.L0db49cfc
    sltiu	$a5,$a0,3348
    bnez	$a5,.L0db4a244
    li	$at,3348
    bne	$a0,$at,.L0db481f4
    # Line 1925
    addiu	$t2,$sp,1200
    # Line 1924
    addiu	$s1,$sp,0
    lwc1	$f1,616($s0)
    addiu	$s1,$s1,4
    # Line 1925
    b	.L0db478b0
    # Line 1924
    swc1	$f1,0($sp)
.L0db488c0:
    # Line 1460
    sltiu	$at,$a0,3385
    bnez	$at,.L0db49080
    sltiu	$v0,$a0,3386
    bnez	$v0,.L0db49a78
    li	$v1,3386
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2116
    lw	$t2,3344($s0)
    sw	$t2,1200($sp)
    addiu	$t2,$sp,1200
    # Line 2117
    lw	$a5,3348($s0)
    addiu	$s2,$t2,8
    # Line 2118
    b	.L0db478b0
    # Line 2117
    sw	$a5,1204($sp)
.L0db488f8:
    # Line 1460
    sltiu	$at,$a0,3414
    bnez	$at,.L0db490a4
    sltiu	$v0,$a0,3415
    bnez	$v0,.L0db49a8c
    li	$v1,3415
    bne	$a0,$v1,.L0db481f4
    # Line 2076
    addiu	$t2,$sp,1200
    lw	$a5,3132($s0)
    addiu	$s2,$t2,4
    # Line 2077
    b	.L0db478b0
    # Line 2076
    sw	$a5,1200($sp)
.L0db48924:
    # Line 1460
    sltiu	$at,$a0,12290
    bnez	$at,.L0db490c8
    sltiu	$v0,$a0,12291
    bnez	$v0,.L0db47a3c
    sltiu	$v1,$a0,12292
    bnez	$v1,.L0db49e84
    sltiu	$a5,$a0,12293
    bnez	$a5,.L0db47a3c
    li	$at,12293
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48968:
    # Line 1460
    li	$a1,0x8011
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db490fc
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db47a3c
    li	$a5,0x8012
    bne	$a0,$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db489a0:
    # Line 1780
    lw	$at,29740($s0)
    lwc1	$f1,0($at)
    swc1	$f1,0($sp)
    lwc1	$f0,4($at)
    swc1	$f0,4($sp)
    lwc1	$f3,8($at)
    swc1	$f3,8($sp)
    lwc1	$f2,12($at)
    swc1	$f2,12($sp)
    # Line 1781
    lwc1	$f1,16($at)
    swc1	$f1,16($sp)
    lwc1	$f0,20($at)
    swc1	$f0,20($sp)
    lwc1	$f3,24($at)
    swc1	$f3,24($sp)
    lwc1	$f2,28($at)
    swc1	$f2,28($sp)
    # Line 1782
    lwc1	$f1,32($at)
    swc1	$f1,32($sp)
    lwc1	$f0,36($at)
    swc1	$f0,36($sp)
    lwc1	$f3,40($at)
    swc1	$f3,40($sp)
    lwc1	$f2,44($at)
    swc1	$f2,44($sp)
    # Line 1783
    lwc1	$f1,48($at)
    swc1	$f1,48($sp)
    lwc1	$f0,52($at)
    swc1	$f0,52($sp)
    lwc1	$f3,56($at)
    # Line 1784
    addiu	$t2,$sp,1200
    # Line 1783
    swc1	$f3,56($sp)
    # Line 1779
    addiu	$s1,$sp,0
    # Line 1783
    lwc1	$f2,60($at)
    addiu	$s1,$s1,64
    # Line 1784
    b	.L0db478b0
    # Line 1783
    swc1	$f2,60($sp)
.L0db48a34:
    # Line 1460
    sltiu	$v0,$a0,2832
    bnez	$v0,.L0db49140
    sltiu	$v1,$a0,2833
    beqz	$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48a60:
    # Line 1460
    sltiu	$a5,$a0,2853
    bnez	$a5,.L0db49160
    sltiu	$at,$a0,2854
    beqz	$at,.L0db481f4
    # Line 1627
    addiu	$t2,$sp,1200
    lhu	$v0,456($s0)
    addiu	$s2,$t2,4
    # Line 1628
    b	.L0db478b0
    # Line 1627
    sw	$v0,1200($sp)
.L0db48a84:
    # Line 1460
    sltiu	$v1,$a0,2884
    bnez	$v1,.L0db49184
    sltiu	$a5,$a0,2885
    bnez	$a5,.L0db47a3c
    sd	$a7,1704($sp)
    li	$at,2885
    bne	$a0,$at,.L0db481f4
    # Line 1640
    addiu	$t2,$sp,1200
    lw	$v0,468($s0)
    addiu	$s2,$t2,4
    # Line 1641
    b	.L0db478b0
    # Line 1640
    sw	$v0,1200($sp)
.L0db48ab4:
    # Line 1460
    sltiu	$v1,$a0,2993
    bnez	$v1,.L0db491ac
    sltiu	$a5,$a0,2994
    beqz	$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1743
    lw	$at,12740($s0)
    lw	$v0,12736($s0)
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    subu	$at,$at,$v0
    sra	$at,$at,0x2
    # Line 1744
    b	.L0db478b0
    # Line 1743
    sw	$at,1200($sp)
.L0db48ae8:
    # Line 1460
    sltiu	$v1,$a0,3058
    bnez	$v1,.L0db491d8
    sltiu	$a5,$a0,3059
    bnez	$a5,.L0db47a3c
    sd	$a7,1704($sp)
    li	$at,3072
    bne	$a0,$at,.L0db481f4
    # Line 2123
    addiu	$t2,$sp,1200
    lw	$v0,3180($s0)
    addiu	$s2,$t2,4
    # Line 2124
    b	.L0db478b0
    # Line 2123
    sw	$v0,1200($sp)
.L0db48b18:
    # Line 1460
    sltiu	$v1,$a0,3251
    bnez	$v1,.L0db49204
    sltiu	$a5,$a0,3252
    bnez	$a5,.L0db4786c
    li	$at,3252
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db47870
    # Line 2021
    addiu	$t2,$sp,1200
.L0db48b3c:
    # Line 1460
    sltiu	$v0,$a0,3359
    bnez	$v0,.L0db4924c
    sltiu	$v1,$a0,3360
    beqz	$v1,.L0db481f4
    # Line 1952
    addiu	$t2,$sp,1200
    # Line 1951
    addiu	$s1,$sp,0
    lwc1	$f2,652($s0)
    addiu	$s1,$s1,4
    # Line 1952
    b	.L0db478b0
    # Line 1951
    swc1	$f2,0($sp)
.L0db48b64:
    # Line 1460
    sltiu	$at,$a0,3505
    bnez	$at,.L0db4926c
    sltiu	$v0,$a0,3506
    bnez	$v0,.L0db47a3c
    li	$v1,3506
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48b98:
    # Line 1840
    addiu	$t2,$sp,1200
    lw	$a5,1796($s0)
    addiu	$s2,$t2,4
    # Line 1841
    b	.L0db478b0
    # Line 1840
    sw	$a5,1200($sp)
.L0db48bac:
    # Line 1967
    addiu	$t2,$sp,1200
    # Line 1966
    addiu	$s1,$sp,0
    lwc1	$f3,672($s0)
    addiu	$s1,$s1,4
    # Line 1967
    b	.L0db478b0
    # Line 1966
    swc1	$f3,0($sp)
.L0db48bc4:
    # Line 2113
    lw	$at,4596($s0)
    lw	$v0,4592($s0)
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    subu	$at,$at,$v0
    sra	$at,$at,0x2
    # Line 2114
    b	.L0db478b0
    # Line 2113
    sw	$at,1200($sp)
.L0db48be4:
    sd	$a7,1704($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    sd	$a4,1752($sp)
    # Line 2151
    # lw $t9, -25292($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    sd	$ra,1744($sp)
    jal	__glLookUpTextureTexobjs
    li	$a1,3552
    ld	$a4,1752($sp)
    ld	$a3,1760($sp)
    ld	$t1,1768($sp)
    ld	$t0,1776($sp)
    ld	$a7,1704($sp)
    ld	$ra,1744($sp)
    addiu	$t2,$sp,1200
    # Line 2152
    lw	$v1,0($v0)
    addiu	$s2,$t2,4
    # Line 2154
    b	.L0db478b0
    # Line 2152
    sw	$v1,1200($sp)
.L0db48c38:
    # Line 1460
    li	$a5,2816
    bne	$a0,$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1538
    lwc1	$f3,408($s0)
    swc1	$f3,400($sp)
    # Line 1539
    lwc1	$f2,412($s0)
    swc1	$f2,404($sp)
    # Line 1540
    lwc1	$f1,416($s0)
    # Line 1542
    addiu	$t2,$sp,1200
    # Line 1540
    swc1	$f1,408($sp)
    # Line 1538
    addiu	$t0,$sp,400
    # Line 1541
    lwc1	$f0,420($s0)
    addiu	$t0,$t0,16
    # Line 1542
    b	.L0db478b0
    # Line 1541
    swc1	$f0,412($sp)
.L0db48c74:
    # Line 1460
    li	$at,2821
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1558
    lbu	$v0,3104($s0)
    beqz	$v0,.L0db4a100
    # Line 1560
    lwc1	$f0,_lit_3f800000
    swc1	$f0,0($sp)
.L0db48c90:
    # Line 1564
    addiu	$t2,$sp,1200
    # Line 1562
    addiu	$s1,$sp,0
    # Line 1564
    b	.L0db478b0
    # Line 1562
    addiu	$s1,$s1,4
.L0db48ca0:
    # Line 1535
    li	$s2,64
    sw	$s2,1200($sp)
    addiu	$t2,$sp,1200
    # Line 1536
    b	.L0db478b0
    # Line 1535
    addiu	$s2,$t2,4
.L0db48cb4:
    # Line 1615
    addiu	$t2,$sp,1200
    # Line 1614
    addiu	$s1,$sp,0
    lwc1	$f1,3456($s0)
    addiu	$s1,$s1,4
    # Line 1615
    b	.L0db478b0
    # Line 1614
    swc1	$f1,0($sp)
.L0db48ccc:
    # Line 1790
    addiu	$t2,$sp,1200
    # Line 1789
    addiu	$s1,$sp,0
    lwc1	$f2,1724($s0)
    addiu	$s1,$s1,4
    # Line 1790
    b	.L0db478b0
    # Line 1789
    swc1	$f2,0($sp)
.L0db48ce4:
    # Line 2031
    addiu	$t2,$sp,1200
    lw	$at,3332($s0)
    addiu	$s2,$t2,4
    # Line 2032
    b	.L0db478b0
    # Line 2031
    sw	$at,1200($sp)
.L0db48cf8:
    # Line 1460
    li	$a1,0x806c
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db493e8
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db49bc4
    li	$a5,0x806d
    bne	$a0,$a5,.L0db481f4
    # Line 1900
    addiu	$t2,$sp,1200
    lw	$at,1128($s0)
    addiu	$s2,$t2,4
    # Line 1901
    b	.L0db478b0
    # Line 1900
    sw	$at,1200($sp)
.L0db48d28:
    # Line 1547
    lwc1	$f1,184($s0)
    swc1	$f1,400($sp)
    # Line 1548
    lwc1	$f0,188($s0)
    # Line 1550
    addiu	$t2,$sp,1200
    # Line 1548
    swc1	$f0,404($sp)
    # Line 1547
    addiu	$t0,$sp,400
    # Line 1549
    lwc1	$f3,192($s0)
    addiu	$t0,$t0,12
    # Line 1550
    b	.L0db478b0
    # Line 1549
    swc1	$f3,408($sp)
.L0db48d50:
    # Line 1460
    sltiu	$at,$a0,2918
    bnez	$at,.L0db49478
    sltiu	$v0,$a0,2919
    beqz	$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1680
    lwc1	$f1,1496($s0)
    swc1	$f1,800($sp)
    # Line 1681
    lwc1	$f0,1500($s0)
    swc1	$f0,804($sp)
    # Line 1682
    lwc1	$f3,1504($s0)
    # Line 1684
    addiu	$t2,$sp,1200
    # Line 1682
    swc1	$f3,808($sp)
    # Line 1680
    addiu	$t1,$sp,800
    # Line 1683
    lwc1	$f2,1508($s0)
    addiu	$t1,$t1,16
    # Line 1684
    b	.L0db478b0
    # Line 1683
    swc1	$f2,812($sp)
.L0db48d94:
    # Line 1460
    sltiu	$at,$a0,2978
    bnez	$at,.L0db494b0
    sltiu	$v0,$a0,2979
    bnez	$v0,.L0db49c24
    li	$v1,2979
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1746
    lw	$s2,29712($s0)
    lw	$at,29708($s0)
    subu	$s2,$s2,$at
    li	$t2,272
    div	$zero,$s2,$t2
    teq	$t2,$zero,0x7
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    mflo	$a5
    addiu	$a5,$a5,1
    # Line 1747
    b	.L0db478b0
    # Line 1746
    sw	$a5,1200($sp)
.L0db48de0:
    # Line 1460
    li	$v0,2900
    bne	$a0,$v0,.L0db481f4
    # Line 1662
    addiu	$t2,$sp,1200
    lw	$v1,1304($s0)
    addiu	$s2,$t2,4
    # Line 1663
    b	.L0db478b0
    # Line 1662
    sw	$v1,1200($sp)
.L0db48dfc:
    # Line 1460
    li	$a5,2913
    bne	$a0,$a5,.L0db481f4
    # Line 1666
    addiu	$t2,$sp,1200
    # Line 1665
    addiu	$s1,$sp,0
    lwc1	$f2,1528($s0)
    addiu	$s1,$s1,4
    # Line 1666
    b	.L0db478b0
    # Line 1665
    swc1	$f2,0($sp)
.L0db48e1c:
    # Line 1460
    sltiu	$at,$a0,2962
    bnez	$at,.L0db494e8
    sltiu	$v0,$a0,2963
    beqz	$v0,.L0db481f4
    # Line 1710
    addiu	$t2,$sp,1200
    lw	$v1,1568($s0)
    addiu	$s2,$t2,4
    # Line 1711
    b	.L0db478b0
    # Line 1710
    sw	$v1,1200($sp)
.L0db48e40:
    # Line 1692
    addiu	$t2,$sp,1200
    # Line 1691
    addiu	$a7,$sp,1600
    lbu	$a5,1540($s0)
    addiu	$a7,$a7,1
    # Line 1692
    b	.L0db478b0
    # Line 1691
    sb	$a5,1600($sp)
.L0db48e58:
    # Line 1460
    li	$a1,0x80b6
    sltu	$at,$a0,$a1
    bnez	$at,.L0db4958c
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db49de0
    li	$a1,0x80b8
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0db4a128
    sltu	$a5,$a1,$a0
    beqz	$a5,.L0db4a2e0
    li	$at,0x80b9
    bne	$a0,$at,.L0db481f4
    # Line 1994
    addiu	$t2,$sp,1200
    # Line 1993
    addiu	$s1,$sp,0
    lwc1	$f3,708($s0)
    addiu	$s1,$s1,4
    # Line 1994
    b	.L0db478b0
    # Line 1993
    swc1	$f3,0($sp)
.L0db48ea0:
    # Line 1659
    lw	$at,1300($s0)
    addiu	$s2,$t2,4
    # Line 1660
    b	.L0db478b0
    # Line 1659
    sw	$at,1200($sp)
.L0db48eb0:
    # Line 1719
    addiu	$t2,$sp,1200
    lw	$v0,1584($s0)
    addiu	$s2,$t2,4
    # Line 1720
    b	.L0db478b0
    # Line 1719
    sw	$v0,1200($sp)
.L0db48ec4:
    # Line 1460
    sltiu	$v1,$a0,3155
    bnez	$v1,.L0db49610
    sltiu	$a5,$a0,3156
    bnez	$a5,.L0db49ecc
    li	$at,3156
    bne	$a0,$at,.L0db481f4
    # Line 1852
    addiu	$t2,$sp,1200
    lw	$v0,1812($s0)
    addiu	$s2,$t2,4
    # Line 1853
    b	.L0db478b0
    # Line 1852
    sw	$v0,1200($sp)
.L0db48ef0:
    # Line 1460
    sltiu	$v1,$a0,3473
    bnez	$v1,.L0db4969c
    sltiu	$a5,$a0,3474
    bnez	$a5,.L0db47a3c
    li	$at,3474
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48f24:
    # Line 1460
    li	$a1,0x8023
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db496e8
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db49f10
    li	$a5,0x8024
    bne	$a0,$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48f5c:
    # Line 1460
    li	$a1,0x8080
    sltu	$at,$a0,$a1
    bnez	$at,.L0db49714
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db49f64
    li	$v1,0x8081
    bne	$a0,$v1,.L0db481f4
    # Line 2184
    addiu	$t2,$sp,1200
    lw	$a5,4844($s0)
    addiu	$s2,$t2,4
    # Line 2185
    b	.L0db478b0
    # Line 2184
    sw	$a5,1200($sp)
.L0db48f8c:
    # Line 1460
    li	$at,2848
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48fb0:
    # Line 1460
    li	$v0,2866
    bne	$a0,$v0,.L0db481f4
    # Line 1855
    addiu	$t2,$sp,1200
    lw	$v1,1872($s0)
    addiu	$s2,$t2,4
    # Line 1856
    b	.L0db478b0
    # Line 1855
    sw	$v1,1200($sp)
.L0db48fcc:
    # Line 1460
    li	$a5,3024
    bne	$a0,$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db48ff0:
    # Line 1460
    sltiu	$at,$a0,3106
    bnez	$at,.L0db497c0
    sltiu	$v0,$a0,3107
    beqz	$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1822
    lwc1	$f3,1760($s0)
    swc1	$f3,400($sp)
    # Line 1823
    lwc1	$f2,1764($s0)
    swc1	$f2,404($sp)
    # Line 1824
    lwc1	$f1,1768($s0)
    # Line 1826
    addiu	$t2,$sp,1200
    # Line 1824
    swc1	$f1,408($sp)
    # Line 1822
    addiu	$t0,$sp,400
    # Line 1825
    lwc1	$f0,1772($s0)
    addiu	$t0,$t0,16
    # Line 1826
    b	.L0db478b0
    # Line 1825
    swc1	$f0,412($sp)
.L0db49034:
    # Line 1460
    sltiu	$at,$a0,3333
    bnez	$at,.L0db497dc
    sltiu	$v0,$a0,3334
    bnez	$v0,.L0db4a000
    li	$v1,3344
    bne	$a0,$v1,.L0db481f4
    # Line 1913
    addiu	$t2,$sp,1200
    # Line 1912
    addiu	$a7,$sp,1600
    lbu	$a5,736($s0)
    addiu	$a7,$a7,1
    # Line 1913
    b	.L0db478b0
    # Line 1912
    sb	$a5,1600($sp)
.L0db49064:
    # Line 1460
    li	$at,3379
    bne	$a0,$at,.L0db481f4
    # Line 1526
    addiu	$t2,$sp,1200
    lw	$v0,3428($s0)
    addiu	$s2,$t2,4
    # Line 1527
    b	.L0db478b0
    # Line 1526
    sw	$v0,1200($sp)
.L0db49080:
    # Line 1460
    sltiu	$v1,$a0,3384
    bnez	$v1,.L0db49800
    sltiu	$a5,$a0,3385
    beqz	$a5,.L0db481f4
    # Line 2049
    addiu	$t2,$sp,1200
    lw	$at,3496($s0)
    addiu	$s2,$t2,4
    # Line 2050
    b	.L0db478b0
    # Line 2049
    sw	$at,1200($sp)
.L0db490a4:
    # Line 1460
    sltiu	$v0,$a0,3413
    bnez	$v0,.L0db4981c
    sltiu	$v1,$a0,3414
    beqz	$v1,.L0db481f4
    # Line 2070
    addiu	$t2,$sp,1200
    lw	$a5,3152($s0)
    addiu	$s2,$t2,4
    # Line 2071
    b	.L0db478b0
    # Line 2070
    sw	$a5,1200($sp)
.L0db490c8:
    # Line 1460
    sltiu	$at,$a0,12288
    bnez	$at,.L0db49838
    sltiu	$v0,$a0,12289
    bnez	$v0,.L0db47a3c
    li	$v1,12289
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db490fc:
    # Line 1460
    li	$a1,0x8010
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0db498a0
    sltu	$at,$a1,$a0
    bnez	$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db4912c:
    # Line 2199
    addiu	$t2,$sp,1200
    lw	$v0,4880($s0)
    addiu	$s2,$t2,4
    # Line 2200
    b	.L0db478b0
    # Line 2199
    sw	$v0,1200($sp)
.L0db49140:
    # Line 1460
    li	$v1,2825
    bne	$a0,$v1,.L0db481f4
    # Line 1605
    addiu	$t2,$sp,1200
    # Line 1604
    addiu	$s1,$sp,0
    lwc1	$f0,320($s0)
    addiu	$s1,$s1,4
    # Line 1605
    b	.L0db478b0
    # Line 1604
    swc1	$f0,0($sp)
.L0db49160:
    # Line 1460
    li	$at,2852
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49184:
    # Line 1460
    sltiu	$v0,$a0,2883
    bnez	$v0,.L0db498d0
    sltiu	$v1,$a0,2884
    beqz	$v1,.L0db481f4
    # Line 1638
    addiu	$t2,$sp,1200
    # Line 1637
    addiu	$a7,$sp,1600
    lbu	$a5,429($s0)
    addiu	$a7,$a7,1
    # Line 1638
    b	.L0db478b0
    # Line 1637
    sb	$a5,1600($sp)
.L0db491ac:
    # Line 1460
    li	$at,2992
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1740
    lw	$v0,12732($s0)
    lw	$v1,12728($s0)
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    subu	$v0,$v0,$v1
    sra	$v0,$v0,0x2
    # Line 1741
    b	.L0db478b0
    # Line 1740
    sw	$v0,1200($sp)
.L0db491d8:
    # Line 1460
    sltiu	$a5,$a0,3057
    bnez	$a5,.L0db498f4
    sltiu	$at,$a0,3058
    beqz	$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49204:
    # Line 1460
    sltiu	$v0,$a0,3250
    bnez	$v0,.L0db49910
    sltiu	$v1,$a0,3251
    beqz	$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db47870
    # Line 2021
    addiu	$t2,$sp,1200
.L0db49220:
    # Line 1460
    sltiu	$a5,$a0,3314
    bnez	$a5,.L0db49938
    sltiu	$at,$a0,3315
    bnez	$at,.L0db4a014
    li	$v0,3315
    bne	$a0,$v0,.L0db481f4
    # Line 1903
    addiu	$t2,$sp,1200
    lw	$v1,1116($s0)
    addiu	$s2,$t2,4
    # Line 1904
    b	.L0db478b0
    # Line 1903
    sw	$v1,1200($sp)
.L0db4924c:
    # Line 1460
    li	$a5,3358
    bne	$a0,$a5,.L0db481f4
    # Line 1937
    addiu	$t2,$sp,1200
    # Line 1936
    addiu	$s1,$sp,0
    lwc1	$f1,632($s0)
    addiu	$s1,$s1,4
    # Line 1937
    b	.L0db478b0
    # Line 1936
    swc1	$f1,0($sp)
.L0db4926c:
    # Line 1460
    sltiu	$at,$a0,3504
    bnez	$at,.L0db49960
    sltiu	$v0,$a0,3505
    beqz	$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49298:
    # Line 1460
    sltiu	$v1,$a0,3537
    bnez	$v1,.L0db499a8
    sltiu	$a5,$a0,3538
    bnez	$a5,.L0db4a028
    li	$at,3538
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2103
    lwc1	$f1,1840($s0)
    swc1	$f1,0($sp)
    # Line 2104
    lwc1	$f0,1844($s0)
    swc1	$f0,4($sp)
    # Line 2105
    lwc1	$f3,1856($s0)
    # Line 2107
    addiu	$t2,$sp,1200
    # Line 2105
    swc1	$f3,8($sp)
    # Line 2103
    addiu	$s1,$sp,0
    # Line 2106
    lwc1	$f2,1860($s0)
    addiu	$s1,$s1,16
    # Line 2107
    b	.L0db478b0
    # Line 2106
    swc1	$f2,12($sp)
.L0db492e4:
    # Line 1829
    addiu	$t2,$sp,1200
    # Line 1828
    lbu	$at,3104($s0)
    addiu	$a7,$sp,1600
    addiu	$a7,$a7,1
    sltu	$at,$zero,$at
    # Line 1829
    b	.L0db478b0
    # Line 1828
    sb	$at,1600($sp)
.L0db49300:
    # Line 1940
    addiu	$t2,$sp,1200
    # Line 1939
    addiu	$s1,$sp,0
    lwc1	$f2,636($s0)
    addiu	$s1,$s1,4
    # Line 1940
    b	.L0db478b0
    # Line 1939
    swc1	$f2,0($sp)
.L0db49318:
    # Line 1955
    addiu	$t2,$sp,1200
    # Line 1954
    addiu	$s1,$sp,0
    lwc1	$f3,656($s0)
    addiu	$s1,$s1,4
    # Line 1955
    b	.L0db478b0
    # Line 1954
    swc1	$f3,0($sp)
.L0db49330:
    # Line 2040
    addiu	$t2,$sp,1200
    lw	$at,3484($s0)
    addiu	$s2,$t2,4
    # Line 2041
    b	.L0db478b0
    # Line 2040
    sw	$at,1200($sp)
.L0db49344:
    # Line 2084
    addiu	$t2,$sp,1200
    lw	$v0,3112($s0)
    addiu	$s2,$t2,4
    # Line 2085
    b	.L0db478b0
    # Line 2084
    sw	$v0,1200($sp)
.L0db49358:
    # Line 1608
    addiu	$t2,$sp,1200
    # Line 1607
    addiu	$s1,$sp,0
    lwc1	$f0,432($s0)
    addiu	$s1,$s1,4
    # Line 1608
    b	.L0db478b0
    # Line 1607
    swc1	$f0,0($sp)
.L0db49370:
    # Line 1630
    addiu	$t2,$sp,1200
    lh	$at,458($s0)
    addiu	$s2,$t2,4
    # Line 1631
    b	.L0db478b0
    # Line 1630
    sw	$at,1200($sp)
.L0db49384:
    # Line 1643
    addiu	$t2,$sp,1200
    lw	$v0,472($s0)
    addiu	$s2,$t2,4
    # Line 1644
    b	.L0db478b0
    # Line 1643
    sw	$v0,1200($sp)
.L0db49398:
    # Line 1801
    addiu	$t2,$sp,1200
    lw	$v1,1792($s0)
    addiu	$s2,$t2,4
    # Line 1802
    b	.L0db478b0
    # Line 1801
    sw	$v1,1200($sp)
.L0db493ac:
    # Line 2025
    addiu	$t2,$sp,1200
    lw	$a5,3472($s0)
    addiu	$s2,$t2,4
    # Line 2026
    b	.L0db478b0
    # Line 2025
    sw	$a5,1200($sp)
.L0db493c0:
    # Line 1460
    li	$at,2931
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1695
    ldc1	$f1,1544($s0)
    # Line 1696
    addiu	$t2,$sp,1200
    # Line 1695
    cvt.s.d	$f1,$f1
    addiu	$t0,$sp,400
    addiu	$t0,$t0,4
    # Line 1696
    b	.L0db478b0
    # Line 1695
    swc1	$f1,400($sp)
.L0db493e8:
    # Line 1460
    li	$a1,0x806b
    sltu	$at,$a0,$a1
    bnez	$at,.L0db49b30
    sltu	$v0,$a1,$a0
    bnez	$v0,.L0db481f4
    # Line 1876
    addiu	$t2,$sp,1200
    lw	$v1,1092($s0)
    addiu	$s2,$t2,4
    # Line 1877
    b	.L0db478b0
    # Line 1876
    sw	$v1,1200($sp)
.L0db49410:
    # Line 1460
    li	$a1,0x8077
    sltu	$a5,$a0,$a1
    bnez	$a5,.L0db49b8c
    sltu	$at,$a1,$a0
    beqz	$at,.L0db47a3c
    li	$v0,0x8078
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49448:
    # Line 1580
    lwc1	$f1,264($s0)
    swc1	$f1,0($sp)
    # Line 1581
    lwc1	$f0,268($s0)
    swc1	$f0,4($sp)
    # Line 1582
    lwc1	$f3,272($s0)
    # Line 1584
    addiu	$t2,$sp,1200
    # Line 1582
    swc1	$f3,8($sp)
    # Line 1580
    addiu	$s1,$sp,0
    # Line 1583
    lwc1	$f2,276($s0)
    addiu	$s1,$s1,16
    # Line 1584
    b	.L0db478b0
    # Line 1583
    swc1	$f2,12($sp)
.L0db49478:
    # Line 1460
    li	$at,2917
    bne	$a0,$at,.L0db481f4
    # Line 1677
    addiu	$t2,$sp,1200
    lw	$v0,1492($s0)
    addiu	$s2,$t2,4
    # Line 1678
    b	.L0db478b0
    # Line 1677
    sw	$v0,1200($sp)
.L0db49494:
    # Line 1460
    li	$v1,2966
    bne	$a0,$v1,.L0db481f4
    # Line 1722
    addiu	$t2,$sp,1200
    lw	$a5,1588($s0)
    addiu	$s2,$t2,4
    # Line 1723
    b	.L0db478b0
    # Line 1722
    sw	$a5,1200($sp)
.L0db494b0:
    # Line 1460
    li	$at,2977
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db494d4:
    # Line 1894
    addiu	$t2,$sp,1200
    lw	$v0,1132($s0)
    addiu	$s2,$t2,4
    # Line 1895
    b	.L0db478b0
    # Line 1894
    sw	$v0,1200($sp)
.L0db494e8:
    # Line 1460
    li	$v1,2961
    bne	$a0,$v1,.L0db481f4
    # Line 1707
    addiu	$t2,$sp,1200
    lh	$a5,1572($s0)
    addiu	$s2,$t2,4
    # Line 1708
    b	.L0db478b0
    # Line 1707
    sw	$a5,1200($sp)
.L0db49504:
    # Line 1687
    ldc1	$f3,1608($s0)
    cvt.s.d	$f3,$f3
    swc1	$f3,400($sp)
    # Line 1688
    ldc1	$f2,1616($s0)
    # Line 1689
    addiu	$t2,$sp,1200
    # Line 1688
    cvt.s.d	$f2,$f2
    # Line 1687
    addiu	$t0,$sp,400
    # Line 1688
    addiu	$t0,$t0,8
    # Line 1689
    b	.L0db478b0
    # Line 1688
    swc1	$f2,404($sp)
.L0db4952c:
    # Line 1749
    lw	$v1,29720($s0)
    lw	$a5,29716($s0)
    subu	$v1,$v1,$a5
    li	$v0,272
    div	$zero,$v1,$v0
    teq	$v0,$zero,0x7
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    mflo	$at
    addiu	$at,$at,1
    # Line 1750
    b	.L0db478b0
    # Line 1749
    sw	$at,1200($sp)
.L0db4955c:
    # Line 1460
    li	$a1,0x8089
    sltu	$at,$a0,$a1
    bnez	$at,.L0db49c6c
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db4a20c
    li	$v1,0x808a
    bne	$a0,$v1,.L0db481f4
    # Line 2211
    addiu	$t2,$sp,1200
    lw	$a5,4908($s0)
    addiu	$s2,$t2,4
    # Line 2212
    b	.L0db478b0
    # Line 2211
    sw	$a5,1200($sp)
.L0db4958c:
    # Line 1460
    li	$a1,0x80b4
    sltu	$at,$a0,$a1
    bnez	$at,.L0db49c94
    sltu	$v0,$a1,$a0
    beqz	$v0,.L0db4a1e0
    li	$v1,0x80b5
    bne	$a0,$v1,.L0db481f4
    # Line 1982
    addiu	$t2,$sp,1200
    # Line 1981
    addiu	$s1,$sp,0
    lwc1	$f0,692($s0)
    addiu	$s1,$s1,4
    # Line 1982
    b	.L0db478b0
    # Line 1981
    swc1	$f0,0($sp)
.L0db495c0:
    # Line 1669
    addiu	$t2,$sp,1200
    # Line 1668
    addiu	$s1,$sp,0
    lwc1	$f1,1512($s0)
    addiu	$s1,$s1,4
    # Line 1669
    b	.L0db478b0
    # Line 1668
    swc1	$f1,0($sp)
.L0db495d8:
    # Line 1713
    addiu	$t2,$sp,1200
    lh	$at,1576($s0)
    addiu	$s2,$t2,4
    # Line 1714
    b	.L0db478b0
    # Line 1713
    sw	$at,1200($sp)
.L0db495ec:
    # Line 1460
    li	$v0,3122
    bne	$a0,$v0,.L0db481f4
    # Line 2121
    addiu	$t2,$sp,1200
    # Line 2120
    lbu	$v1,3106($s0)
    addiu	$a7,$sp,1600
    addiu	$a7,$a7,1
    sltu	$v1,$zero,$v1
    # Line 2121
    b	.L0db478b0
    # Line 2120
    sb	$v1,1600($sp)
.L0db49610:
    # Line 1460
    sltiu	$at,$a0,3154
    bnez	$at,.L0db49cbc
    sltiu	$v0,$a0,3155
    beqz	$v0,.L0db481f4
    # Line 1846
    addiu	$t2,$sp,1200
    lw	$v1,1804($s0)
    addiu	$s2,$t2,4
    # Line 1847
    b	.L0db478b0
    # Line 1846
    sw	$v1,1200($sp)
.L0db49634:
    # Line 1460
    sltiu	$a5,$a0,3351
    bnez	$a5,.L0db49d18
    sltiu	$at,$a0,3352
    bnez	$at,.L0db4a258
    li	$v0,3352
    bne	$a0,$v0,.L0db481f4
    # Line 1928
    addiu	$t2,$sp,1200
    # Line 1927
    addiu	$s1,$sp,0
    lwc1	$f2,620($s0)
    addiu	$s1,$s1,4
    # Line 1928
    b	.L0db478b0
    # Line 1927
    swc1	$f2,0($sp)
.L0db49664:
    # Line 1460
    li	$at,3408
    bne	$a0,$at,.L0db481f4
    # Line 1532
    addiu	$t2,$sp,1200
    lw	$v0,3440($s0)
    addiu	$s2,$t2,4
    # Line 1533
    b	.L0db478b0
    # Line 1532
    sw	$v0,1200($sp)
.L0db49680:
    # Line 1460
    li	$v1,3417
    bne	$a0,$v1,.L0db481f4
    # Line 2087
    addiu	$t2,$sp,1200
    lw	$a5,3116($s0)
    addiu	$s2,$t2,4
    # Line 2088
    b	.L0db478b0
    # Line 2087
    sw	$a5,1200($sp)
.L0db4969c:
    # Line 1460
    sltiu	$at,$a0,3472
    bnez	$at,.L0db49d38
    sltiu	$v0,$a0,3473
    beqz	$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db496c8:
    # Line 1460
    li	$v1,0x801d
    bne	$a0,$v1,.L0db481f4
    # Line 1958
    addiu	$t2,$sp,1200
    # Line 1957
    addiu	$s1,$sp,0
    lwc1	$f3,660($s0)
    addiu	$s1,$s1,4
    # Line 1958
    b	.L0db478b0
    # Line 1957
    swc1	$f3,0($sp)
.L0db496e8:
    # Line 1460
    li	$a1,0x8022
    sltu	$at,$a0,$a1
    bnez	$at,.L0db49d80
    sltu	$v0,$a1,$a0
    bnez	$v0,.L0db481f4
    # Line 1973
    addiu	$t2,$sp,1200
    # Line 1972
    addiu	$s1,$sp,0
    lwc1	$f0,680($s0)
    addiu	$s1,$s1,4
    # Line 1973
    b	.L0db478b0
    # Line 1972
    swc1	$f0,0($sp)
.L0db49714:
    # Line 1460
    li	$a1,0x807f
    sltu	$at,$a0,$a1
    bnez	$at,.L0db49dc4
    sltu	$v0,$a1,$a0
    bnez	$v0,.L0db481f4
    # Line 2178
    addiu	$t2,$sp,1200
    lw	$v1,4828($s0)
    addiu	$s2,$t2,4
    # Line 2179
    b	.L0db478b0
    # Line 2178
    sw	$v1,1200($sp)
.L0db4973c:
    # Line 1997
    addiu	$t2,$sp,1200
    # Line 1996
    addiu	$s1,$sp,0
    lwc1	$f1,712($s0)
    addiu	$s1,$s1,4
    # Line 1997
    b	.L0db478b0
    # Line 1996
    swc1	$f1,0($sp)
.L0db49754:
    # Line 1573
    lwc1	$f1,360($s0)
    swc1	$f1,800($sp)
    # Line 1574
    lwc1	$f0,364($s0)
    swc1	$f0,804($sp)
    # Line 1575
    lwc1	$f3,368($s0)
    swc1	$f3,808($sp)
    # Line 1571
    addiu	$t1,$sp,800
    # Line 1576
    lwc1	$f2,372($s0)
    addiu	$t1,$t1,16
    b	.L0db486e0
    swc1	$f2,812($sp)
.L0db49780:
    # Line 1460
    li	$at,2896
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db497a4:
    # Line 1460
    li	$v0,3074
    bne	$a0,$v0,.L0db481f4
    # Line 1804
    addiu	$t2,$sp,1200
    lw	$v1,1152($s0)
    addiu	$s2,$t2,4
    # Line 1805
    b	.L0db478b0
    # Line 1804
    sw	$v1,1200($sp)
.L0db497c0:
    # Line 1460
    li	$a5,3105
    bne	$a0,$a5,.L0db481f4
    # Line 1819
    addiu	$t2,$sp,1200
    lw	$at,1780($s0)
    addiu	$s2,$t2,4
    # Line 1820
    b	.L0db478b0
    # Line 1819
    sw	$at,1200($sp)
.L0db497dc:
    # Line 1460
    sltiu	$v0,$a0,3332
    bnez	$v0,.L0db49e28
    sltiu	$v1,$a0,3333
    beqz	$v1,.L0db481f4
    # Line 1882
    addiu	$t2,$sp,1200
    lw	$a5,1084($s0)
    addiu	$s2,$t2,4
    # Line 1883
    b	.L0db478b0
    # Line 1882
    sw	$a5,1200($sp)
.L0db49800:
    # Line 1460
    li	$at,3383
    bne	$a0,$at,.L0db481f4
    # Line 2046
    addiu	$t2,$sp,1200
    lw	$v0,3488($s0)
    addiu	$s2,$t2,4
    # Line 2047
    b	.L0db478b0
    # Line 2046
    sw	$v0,1200($sp)
.L0db4981c:
    # Line 1460
    li	$v1,3412
    bne	$a0,$v1,.L0db481f4
    # Line 2067
    addiu	$t2,$sp,1200
    lw	$a5,3148($s0)
    addiu	$s2,$t2,4
    # Line 2068
    b	.L0db478b0
    # Line 2067
    sw	$a5,1200($sp)
.L0db49838:
    # Line 1460
    sltiu	$at,$a0,10752
    bnez	$at,.L0db49e68
    sltiu	$v0,$a0,10753
    beqz	$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2145
    lwc1	$f2,480($s0)
    lwc1	$f3,484($s0)
    div.s	$f2,$f2,$f3
    # Line 2147
    addiu	$t2,$sp,1200
    # Line 2145
    addiu	$s1,$sp,0
    addiu	$s1,$s1,4
    # Line 2147
    b	.L0db478b0
    # Line 2145
    swc1	$f2,0($sp)
.L0db4986c:
    # Line 1460
    sltiu	$at,$a0,16386
    bnez	$at,.L0db49ea8
    sltiu	$v0,$a0,16387
    bnez	$v0,.L0db47a3c
    li	$v1,16387
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db498a0:
    # Line 1460
    li	$a5,0x8009
    bne	$a0,$a5,.L0db481f4
    # Line 2135
    addiu	$t2,$sp,1200
    lw	$at,1736($s0)
    addiu	$s2,$t2,4
    # Line 2136
    b	.L0db478b0
    # Line 2135
    sw	$at,1200($sp)
.L0db498bc:
    # Line 2187
    addiu	$t2,$sp,1200
    lw	$v0,4848($s0)
    addiu	$s2,$t2,4
    # Line 2188
    b	.L0db478b0
    # Line 2187
    sw	$v0,1200($sp)
.L0db498d0:
    # Line 1460
    li	$v1,2882
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db498f4:
    # Line 1460
    li	$a5,3056
    bne	$a0,$a5,.L0db481f4
    # Line 1798
    addiu	$t2,$sp,1200
    lw	$at,1756($s0)
    addiu	$s2,$t2,4
    # Line 1799
    b	.L0db478b0
    # Line 1798
    sw	$at,1200($sp)
.L0db49910:
    # Line 1460
    li	$v0,3249
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db47870
    # Line 2021
    addiu	$t2,$sp,1200
.L0db49924:
    # Line 1460
    li	$v1,3254
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0db47870
    # Line 2021
    addiu	$t2,$sp,1200
.L0db49938:
    # Line 1460
    sltiu	$a5,$a0,3313
    bnez	$a5,.L0db49f78
    sltiu	$at,$a0,3314
    beqz	$at,.L0db481f4
    # Line 1892
    addiu	$t2,$sp,1200
    # Line 1891
    addiu	$a7,$sp,1600
    lbu	$v0,1109($s0)
    addiu	$a7,$a7,1
    # Line 1892
    b	.L0db478b0
    # Line 1891
    sb	$v0,1600($sp)
.L0db49960:
    # Line 1460
    li	$at,3480
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49984:
    # Line 1460
    li	$v0,3508
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db499a8:
    # Line 1460
    sltiu	$v1,$a0,3536
    bnez	$v1,.L0db49f98
    sltiu	$a5,$a0,3537
    beqz	$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2096
    lwc1	$f1,1824($s0)
    # Line 2098
    addiu	$t2,$sp,1200
    # Line 2096
    swc1	$f1,0($sp)
    addiu	$s1,$sp,0
    # Line 2097
    lwc1	$f0,1828($s0)
    addiu	$s1,$s1,8
    # Line 2098
    b	.L0db478b0
    # Line 2097
    swc1	$f0,4($sp)
.L0db499dc:
    # Line 1618
    addiu	$t2,$sp,1200
    # Line 1617
    addiu	$s1,$sp,0
    lwc1	$f2,444($s0)
    addiu	$s1,$s1,4
    # Line 1618
    b	.L0db478b0
    # Line 1617
    swc1	$f2,0($sp)
.L0db499f4:
    # Line 1792
    addiu	$t2,$sp,1200
    lw	$at,1732($s0)
    addiu	$s2,$t2,4
    # Line 1793
    b	.L0db478b0
    # Line 1792
    sw	$at,1200($sp)
.L0db49a08:
    # Line 1831
    lbu	$v1,1784($s0)
    sb	$v1,1600($sp)
    # Line 1832
    lbu	$v0,1785($s0)
    sb	$v0,1601($sp)
    # Line 1833
    lbu	$at,1786($s0)
    # Line 1835
    addiu	$t2,$sp,1200
    # Line 1833
    sb	$at,1602($sp)
    # Line 1831
    addiu	$a7,$sp,1600
    # Line 1834
    lbu	$v0,1787($s0)
    addiu	$a7,$a7,4
    # Line 1835
    b	.L0db478b0
    # Line 1834
    sb	$v0,1603($sp)
.L0db49a38:
    # Line 1858
    addiu	$t2,$sp,1200
    lw	$a5,4688($s0)
    addiu	$s2,$t2,4
    # Line 1859
    b	.L0db478b0
    # Line 1858
    sw	$a5,1200($sp)
.L0db49a4c:
    # Line 1916
    addiu	$t2,$sp,1200
    # Line 1915
    addiu	$a7,$sp,1600
    lbu	$at,737($s0)
    addiu	$a7,$a7,1
    # Line 1916
    b	.L0db478b0
    # Line 1915
    sb	$at,1600($sp)
.L0db49a64:
    # Line 2034
    addiu	$t2,$sp,1200
    lw	$at,3476($s0)
    addiu	$s2,$t2,4
    # Line 2035
    b	.L0db478b0
    # Line 2034
    sw	$at,1200($sp)
.L0db49a78:
    # Line 2052
    addiu	$t2,$sp,1200
    lw	$v0,3500($s0)
    addiu	$s2,$t2,4
    # Line 2053
    b	.L0db478b0
    # Line 2052
    sw	$v0,1200($sp)
.L0db49a8c:
    # Line 2073
    addiu	$t2,$sp,1200
    lw	$v1,3128($s0)
    addiu	$s2,$t2,4
    # Line 2074
    b	.L0db478b0
    # Line 2073
    sw	$v1,1200($sp)
.L0db49aa0:
    # Line 1460
    li	$a5,0x806f
    bne	$a0,$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49ac4:
    # Line 1906
    addiu	$t2,$sp,1200
    lw	$at,1120($s0)
    addiu	$s2,$t2,4
    # Line 1907
    b	.L0db478b0
    # Line 1906
    sw	$at,1200($sp)
.L0db49ad8:
    # Line 2109
    lw	$v1,1852($s0)
    sw	$v1,1200($sp)
    addiu	$t2,$sp,1200
    # Line 2110
    lw	$v0,1868($s0)
    addiu	$s2,$t2,8
    # Line 2111
    b	.L0db478b0
    # Line 2110
    sw	$v0,1204($sp)
.L0db49af4:
    # Line 1460
    li	$a5,2981
    bne	$a0,$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1752
    lw	$v1,29732($s0)
    lw	$a5,29728($s0)
    subu	$v1,$v1,$a5
    li	$v0,272
    div	$zero,$v1,$v0
    teq	$v0,$zero,0x7
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    mflo	$at
    addiu	$at,$at,1
    # Line 1753
    b	.L0db478b0
    # Line 1752
    sw	$at,1200($sp)
.L0db49b30:
    sd	$ra,1744($sp)
    sd	$a7,1704($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    # Line 1460
    li	$at,0x8069
    bne	$a0,$at,.L0db481f4
    sd	$a4,1752($sp)
    # Line 2158
    # lw $t9, -25292($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    jal	__glLookUpTextureTexobjs
    li	$a1,3553
    ld	$a4,1752($sp)
    ld	$a3,1760($sp)
    ld	$t1,1768($sp)
    ld	$t0,1776($sp)
    ld	$a7,1704($sp)
    ld	$ra,1744($sp)
    addiu	$t2,$sp,1200
    # Line 2159
    lw	$v0,0($v0)
    addiu	$s2,$t2,4
    # Line 2161
    b	.L0db478b0
    # Line 2159
    sw	$v0,1200($sp)
.L0db49b8c:
    # Line 1460
    li	$v1,0x8076
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49bb0:
    # Line 1698
    addiu	$t2,$sp,1200
    lw	$a5,1536($s0)
    addiu	$s2,$t2,4
    # Line 1699
    b	.L0db478b0
    # Line 1698
    sw	$a5,1200($sp)
.L0db49bc4:
    # Line 1870
    addiu	$t2,$sp,1200
    lw	$at,1096($s0)
    addiu	$s2,$t2,4
    # Line 1871
    b	.L0db478b0
    # Line 1870
    sw	$at,1200($sp)
.L0db49bd8:
    # Line 1460
    li	$a1,0x80bc
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db4a148
    sltu	$v1,$a1,$a0
    beqz	$v1,.L0db47a3c
    li	$a5,0x80d0
    bne	$a0,$a5,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49c10:
    # Line 1725
    addiu	$t2,$sp,1200
    lh	$at,1574($s0)
    addiu	$s2,$t2,4
    # Line 1726
    b	.L0db478b0
    # Line 1725
    sw	$at,1200($sp)
.L0db49c24:
    # Line 1734
    lw	$t2,1592($s0)
    sw	$t2,1200($sp)
    # Line 1735
    lw	$a5,1596($s0)
    sw	$a5,1204($sp)
    # Line 1736
    lw	$v1,1600($s0)
    sw	$v1,1208($sp)
    # Line 1734
    addiu	$t2,$sp,1200
    # Line 1737
    lw	$v0,1604($s0)
    addiu	$s2,$t2,16
    # Line 1738
    b	.L0db478b0
    # Line 1737
    sw	$v0,1212($sp)
.L0db49c50:
    # Line 1460
    li	$at,0x8083
    bne	$a0,$at,.L0db481f4
    # Line 2190
    addiu	$t2,$sp,1200
    lw	$v0,4856($s0)
    addiu	$s2,$t2,4
    # Line 2191
    b	.L0db478b0
    # Line 2190
    sw	$v0,1200($sp)
.L0db49c6c:
    # Line 1460
    li	$a1,0x8088
    sltu	$v1,$a0,$a1
    bnez	$v1,.L0db4a188
    sltu	$a5,$a1,$a0
    bnez	$a5,.L0db481f4
    # Line 2205
    addiu	$t2,$sp,1200
    lw	$at,4896($s0)
    addiu	$s2,$t2,4
    # Line 2206
    b	.L0db478b0
    # Line 2205
    sw	$at,1200($sp)
.L0db49c94:
    # Line 1460
    li	$a1,0x80b3
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0db4a1a4
    sltu	$v1,$a1,$a0
    bnez	$v1,.L0db481f4
    # Line 2055
    addiu	$t2,$sp,1200
    lw	$a5,3504($s0)
    addiu	$s2,$t2,4
    # Line 2056
    b	.L0db478b0
    # Line 2055
    sw	$a5,1200($sp)
.L0db49cbc:
    # Line 1460
    li	$at,3153
    bne	$a0,$at,.L0db481f4
    # Line 1843
    addiu	$t2,$sp,1200
    lw	$v0,1800($s0)
    addiu	$s2,$t2,4
    # Line 1844
    b	.L0db478b0
    # Line 1843
    sw	$v0,1200($sp)
.L0db49cd8:
    # Line 1460
    li	$v1,3169
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49cfc:
    # Line 1460
    li	$a5,3346
    bne	$a0,$a5,.L0db481f4
    # Line 1918
    addiu	$t2,$sp,1200
    lw	$at,728($s0)
    addiu	$s2,$t2,4
    # Line 1919
    b	.L0db478b0
    # Line 1918
    sw	$at,1200($sp)
.L0db49d18:
    # Line 1460
    li	$v0,3350
    bne	$a0,$v0,.L0db481f4
    # Line 2012
    addiu	$t2,$sp,1200
    # Line 2011
    addiu	$s1,$sp,0
    lwc1	$f3,720($s0)
    addiu	$s1,$s1,4
    # Line 2012
    b	.L0db478b0
    # Line 2011
    swc1	$f3,0($sp)
.L0db49d38:
    # Line 1460
    li	$at,3456
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49d5c:
    # Line 1460
    li	$v0,3476
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49d80:
    # Line 1460
    li	$v1,0x8021
    bne	$a0,$v1,.L0db481f4
    # Line 1970
    addiu	$t2,$sp,1200
    # Line 1969
    addiu	$s1,$sp,0
    lwc1	$f0,676($s0)
    addiu	$s1,$s1,4
    # Line 1970
    b	.L0db478b0
    # Line 1969
    swc1	$f0,0($sp)
.L0db49da0:
    # Line 1460
    li	$at,0x8037
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49dc4:
    # Line 1460
    li	$v0,0x807e
    bne	$a0,$v0,.L0db481f4
    # Line 2175
    addiu	$t2,$sp,1200
    lw	$v1,4820($s0)
    addiu	$s2,$t2,4
    # Line 2176
    b	.L0db478b0
    # Line 2175
    sw	$v1,1200($sp)
.L0db49de0:
    # Line 1985
    addiu	$t2,$sp,1200
    # Line 1984
    addiu	$s1,$sp,0
    lwc1	$f1,696($s0)
    addiu	$s1,$s1,4
    # Line 1985
    b	.L0db478b0
    # Line 1984
    swc1	$f1,0($sp)
.L0db49df8:
    # Line 2214
    addiu	$t2,$sp,1200
    lw	$at,4912($s0)
    addiu	$s2,$t2,4
    # Line 2215
    b	.L0db478b0
    # Line 2214
    sw	$at,1200($sp)
.L0db49e0c:
    # Line 1460
    li	$v0,3317
    bne	$a0,$v0,.L0db481f4
    # Line 1909
    addiu	$t2,$sp,1200
    lw	$v1,1124($s0)
    addiu	$s2,$t2,4
    # Line 1910
    b	.L0db478b0
    # Line 1909
    sw	$v1,1200($sp)
.L0db49e28:
    # Line 1460
    li	$a5,3331
    bne	$a0,$a5,.L0db481f4
    # Line 1879
    addiu	$t2,$sp,1200
    lw	$at,1080($s0)
    addiu	$s2,$t2,4
    # Line 1880
    b	.L0db478b0
    # Line 1879
    sw	$at,1200($sp)
.L0db49e44:
    # Line 1460
    li	$v0,3552
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49e68:
    # Line 1460
    li	$v1,3572
    bne	$a0,$v1,.L0db481f4
    # Line 2229
    addiu	$t2,$sp,1200
    lw	$a5,4612($s0)
    addiu	$s2,$t2,4
    # Line 2230
    b	.L0db478b0
    # Line 2229
    sw	$a5,1200($sp)
.L0db49e84:
    # Line 1460
    li	$at,12291
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49ea8:
    # Line 1460
    li	$v0,16385
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49ecc:
    # Line 1849
    addiu	$t2,$sp,1200
    lw	$v1,1808($s0)
    addiu	$s2,$t2,4
    # Line 1850
    b	.L0db478b0
    # Line 1849
    sw	$v1,1200($sp)
.L0db49ee0:
    # Line 1943
    addiu	$t2,$sp,1200
    # Line 1942
    addiu	$s1,$sp,0
    lwc1	$f2,640($s0)
    addiu	$s1,$s1,4
    # Line 1943
    b	.L0db478b0
    # Line 1942
    swc1	$f2,0($sp)
.L0db49ef8:
    # Line 1961
    addiu	$t2,$sp,1200
    # Line 1960
    addiu	$s1,$sp,0
    lwc1	$f3,664($s0)
    addiu	$s1,$s1,4
    # Line 1961
    b	.L0db478b0
    # Line 1960
    swc1	$f3,0($sp)
.L0db49f10:
    # Line 1976
    addiu	$t2,$sp,1200
    # Line 1975
    addiu	$s1,$sp,0
    lwc1	$f0,684($s0)
    addiu	$s1,$s1,4
    # Line 1976
    b	.L0db478b0
    # Line 1975
    swc1	$f0,0($sp)
.L0db49f28:
    # Line 2058
    addiu	$t2,$sp,1200
    lw	$at,3136($s0)
    addiu	$s2,$t2,4
    # Line 2059
    b	.L0db478b0
    # Line 2058
    sw	$at,1200($sp)
.L0db49f3c:
    # Line 2090
    addiu	$t2,$sp,1200
    lw	$v0,3120($s0)
    addiu	$s2,$t2,4
    # Line 2091
    b	.L0db478b0
    # Line 2090
    sw	$v0,1200($sp)
.L0db49f50:
    # Line 2127
    addiu	$t2,$sp,1200
    # Line 2126
    sb	$zero,1600($sp)
    addiu	$a7,$sp,1600
    # Line 2127
    b	.L0db478b0
    # Line 2126
    addiu	$a7,$a7,1
.L0db49f64:
    # Line 2181
    addiu	$t2,$sp,1200
    lw	$at,4832($s0)
    addiu	$s2,$t2,4
    # Line 2182
    b	.L0db478b0
    # Line 2181
    sw	$at,1200($sp)
.L0db49f78:
    # Line 1460
    li	$v0,3312
    bne	$a0,$v0,.L0db481f4
    # Line 1889
    addiu	$t2,$sp,1200
    # Line 1888
    addiu	$a7,$sp,1600
    lbu	$v1,1108($s0)
    addiu	$a7,$a7,1
    # Line 1889
    b	.L0db478b0
    # Line 1888
    sb	$v1,1600($sp)
.L0db49f98:
    # Line 1460
    li	$at,3512
    bne	$a0,$at,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db49fbc:
    # Line 1647
    addiu	$t2,$sp,1200
    # Line 1646
    addiu	$a7,$sp,1600
    lbu	$v0,1324($s0)
    addiu	$a7,$a7,1
    # Line 1647
    b	.L0db478b0
    # Line 1646
    sb	$v0,1600($sp)
.L0db49fd4:
    # Line 1807
    lw	$a5,2412($s0)
    sw	$a5,1200($sp)
    # Line 1808
    lw	$v1,2416($s0)
    sw	$v1,1204($sp)
    # Line 1809
    lw	$v0,2420($s0)
    sw	$v0,1208($sp)
    # Line 1807
    addiu	$t2,$sp,1200
    # Line 1810
    lw	$at,2424($s0)
    addiu	$s2,$t2,16
    # Line 1811
    b	.L0db478b0
    # Line 1810
    sw	$at,1212($sp)
.L0db4a000:
    # Line 1885
    addiu	$t2,$sp,1200
    lw	$at,1088($s0)
    addiu	$s2,$t2,4
    # Line 1886
    b	.L0db478b0
    # Line 1885
    sw	$at,1200($sp)
.L0db4a014:
    # Line 1897
    addiu	$t2,$sp,1200
    lw	$v0,1112($s0)
    addiu	$s2,$t2,4
    # Line 1898
    b	.L0db478b0
    # Line 1897
    sw	$v0,1200($sp)
.L0db4a028:
    # Line 2100
    addiu	$t2,$sp,1200
    lw	$v1,1836($s0)
    addiu	$s2,$t2,4
    # Line 2101
    b	.L0db478b0
    # Line 2100
    sw	$v1,1200($sp)
.L0db4a03c:
    # Line 1460
    li	$a5,0x807a
    bne	$a0,$a5,.L0db481f4
    # Line 2163
    addiu	$t2,$sp,1200
    lw	$at,4792($s0)
    addiu	$s2,$t2,4
    # Line 2164
    b	.L0db478b0
    # Line 2163
    sw	$at,1200($sp)
.L0db4a058:
    # Line 1529
    addiu	$t2,$sp,1200
    lw	$v0,3432($s0)
    addiu	$s2,$t2,4
    # Line 1530
    b	.L0db478b0
    # Line 1529
    sw	$v0,1200($sp)
.L0db4a06c:
    # Line 1759
    lw	$at,29712($s0)
    lwc1	$f0,0($at)
    swc1	$f0,0($sp)
    lwc1	$f3,4($at)
    swc1	$f3,4($sp)
    lwc1	$f2,8($at)
    swc1	$f2,8($sp)
    lwc1	$f1,12($at)
    swc1	$f1,12($sp)
    # Line 1760
    lwc1	$f0,16($at)
    swc1	$f0,16($sp)
    lwc1	$f3,20($at)
    swc1	$f3,20($sp)
    lwc1	$f2,24($at)
    swc1	$f2,24($sp)
    lwc1	$f1,28($at)
    swc1	$f1,28($sp)
    # Line 1761
    lwc1	$f0,32($at)
    swc1	$f0,32($sp)
    lwc1	$f3,36($at)
    swc1	$f3,36($sp)
    lwc1	$f2,40($at)
    swc1	$f2,40($sp)
    lwc1	$f1,44($at)
    swc1	$f1,44($sp)
    # Line 1762
    lwc1	$f0,48($at)
    swc1	$f0,48($sp)
    lwc1	$f3,52($at)
    swc1	$f3,52($sp)
    lwc1	$f2,56($at)
    # Line 1763
    addiu	$t2,$sp,1200
    # Line 1762
    swc1	$f2,56($sp)
    # Line 1758
    addiu	$s1,$sp,0
    # Line 1762
    lwc1	$f1,60($at)
    addiu	$s1,$s1,64
    # Line 1763
    b	.L0db478b0
    # Line 1762
    swc1	$f1,60($sp)
.L0db4a100:
    # Line 1562
    lwc1	$f1,360($s0)
    b	.L0db48c90
    swc1	$f1,0($sp)
.L0db4a10c:
    # Line 1460
    li	$v0,0x808c
    bne	$a0,$v0,.L0db481f4
    # Line 2217
    addiu	$t2,$sp,1200
    lw	$v1,4928($s0)
    addiu	$s2,$t2,4
    # Line 2218
    b	.L0db478b0
    # Line 2217
    sw	$v1,1200($sp)
.L0db4a128:
    # Line 1460
    li	$a5,0x80b7
    bne	$a0,$a5,.L0db481f4
    # Line 1988
    addiu	$t2,$sp,1200
    # Line 1987
    addiu	$s1,$sp,0
    lwc1	$f2,700($s0)
    addiu	$s1,$s1,4
    # Line 1988
    b	.L0db478b0
    # Line 1987
    swc1	$f2,0($sp)
.L0db4a148:
    # Line 1460
    li	$at,0x80bb
    bne	$a0,$at,.L0db481f4
    # Line 2000
    addiu	$t2,$sp,1200
    # Line 1999
    addiu	$s1,$sp,0
    lwc1	$f3,716($s0)
    addiu	$s1,$s1,4
    # Line 2000
    b	.L0db478b0
    # Line 1999
    swc1	$f3,0($sp)
.L0db4a168:
    # Line 1460
    li	$at,3354
    bne	$a0,$at,.L0db481f4
    # Line 1931
    addiu	$t2,$sp,1200
    # Line 1930
    addiu	$s1,$sp,0
    lwc1	$f0,624($s0)
    addiu	$s1,$s1,4
    # Line 1931
    b	.L0db478b0
    # Line 1930
    swc1	$f0,0($sp)
.L0db4a188:
    # Line 1460
    li	$at,0x8087
    bne	$a0,$at,.L0db481f4
    # Line 2202
    addiu	$t2,$sp,1200
    lw	$v0,4884($s0)
    addiu	$s2,$t2,4
    # Line 2203
    b	.L0db478b0
    # Line 2202
    sw	$v0,1200($sp)
.L0db4a1a4:
    # Line 1460
    li	$v1,0x80b2
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1755
    lw	$s2,29740($s0)
    lw	$at,29736($s0)
    subu	$s2,$s2,$at
    li	$t2,272
    div	$zero,$s2,$t2
    teq	$t2,$zero,0x7
    addiu	$t2,$sp,1200
    addiu	$s2,$t2,4
    mflo	$a5
    addiu	$a5,$a5,1
    # Line 1756
    b	.L0db478b0
    # Line 1755
    sw	$a5,1200($sp)
.L0db4a1e0:
    # Line 1979
    addiu	$t2,$sp,1200
    # Line 1978
    addiu	$s1,$sp,0
    lwc1	$f1,688($s0)
    addiu	$s1,$s1,4
    # Line 1979
    b	.L0db478b0
    # Line 1978
    swc1	$f1,0($sp)
.L0db4a1f8:
    # Line 2193
    addiu	$t2,$sp,1200
    lw	$at,4860($s0)
    addiu	$s2,$t2,4
    # Line 2194
    b	.L0db478b0
    # Line 2193
    sw	$at,1200($sp)
.L0db4a20c:
    # Line 2208
    addiu	$t2,$sp,1200
    lw	$v0,4900($s0)
    addiu	$s2,$t2,4
    # Line 2209
    b	.L0db478b0
    # Line 2208
    sw	$v0,1200($sp)
.L0db4a220:
    # Line 1460
    li	$v1,16389
    bne	$a0,$v1,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db4a244:
    # Line 1921
    addiu	$t2,$sp,1200
    lw	$a5,732($s0)
    addiu	$s2,$t2,4
    # Line 1922
    b	.L0db478b0
    # Line 1921
    sw	$a5,1200($sp)
.L0db4a258:
    # Line 2015
    addiu	$t2,$sp,1200
    # Line 2014
    addiu	$s1,$sp,0
    lwc1	$f2,724($s0)
    addiu	$s1,$s1,4
    # Line 2015
    b	.L0db478b0
    # Line 2014
    swc1	$f2,0($sp)
.L0db4a270:
    # Line 2139
    addiu	$t2,$sp,1200
    # Line 2138
    addiu	$s1,$sp,0
    lwc1	$f3,476($s0)
    addiu	$s1,$s1,4
    # Line 2139
    b	.L0db478b0
    # Line 2138
    swc1	$f3,0($sp)
.L0db4a288:
    # Line 1865
    addiu	$t2,$sp,1200
    # Line 1864
    addiu	$a7,$sp,1600
    lbu	$at,1072($s0)
    addiu	$a7,$a7,1
    # Line 1865
    b	.L0db478b0
    # Line 1864
    sb	$at,1600($sp)
.L0db4a2a0:
    # Line 2166
    addiu	$t2,$sp,1200
    lw	$at,4796($s0)
    addiu	$s2,$t2,4
    # Line 2167
    b	.L0db478b0
    # Line 2166
    sw	$at,1200($sp)
.L0db4a2b4:
    b	.L0db47fd0
    # Line 1594
    swc1	$f4,4($sp)
.L0db4a2bc:
    # Line 1460
    li	$v0,0x80d2
    bne	$a0,$v0,.L0db481f8
    # Line 2233
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1744($sp)
    sd	$t0,1776($sp)
    sd	$t1,1768($sp)
    sd	$a3,1760($sp)
    b	.L0db47a3c
    sd	$a4,1752($sp)
.L0db4a2e0:
    # Line 1991
    addiu	$t2,$sp,1200
    # Line 1990
    addiu	$s1,$sp,0
    lwc1	$f0,704($s0)
    addiu	$s1,$s1,4
    # Line 1991
    b	.L0db478b0
    # Line 1990
    swc1	$f0,0($sp)
.L0db4a2f8:
    # Line 2220
    addiu	$t2,$sp,1200
    lw	$at,4932($s0)
    addiu	$s2,$t2,4
    # Line 2221
    b	.L0db478b0
    # Line 2220
    sw	$at,1200($sp)
.L0db4a30c:
    # Line 1946
    addiu	$t2,$sp,1200
    # Line 1945
    addiu	$s1,$sp,0
    lwc1	$f1,644($s0)
    addiu	$s1,$s1,4
    # Line 1946
    b	.L0db478b0
    # Line 1945
    swc1	$f1,0($sp)
.end __glDoGet

# Function: __glim_GetDoublev
# Declared: Line 2255 (Source lines: 2256-2258)
# Address: 0x0db4a324 - 0x0db4a360 (Size: 60 bytes, Frame: 32)
.globl __glim_GetDoublev
.ent __glim_GetDoublev
__glim_GetDoublev:
    # Line 2257
    li	$a2,2
    # Line 2256
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a4,0xb
    addiu	$a4,$a4,17268
    addu	$gp,$t9,$a4
    # Line 2257
    # lw $t9, -26832($gp) # &__glDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glDoGet
    addiu	$a3,$a3,-2344
    # Line 2258
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetDoublev

# Function: __glim_GetFloatv
# Declared: Line 2260 (Source lines: 2261-2263)
# Address: 0x0db4a360 - 0x0db4a39c (Size: 60 bytes, Frame: 32)
.globl __glim_GetFloatv
.ent __glim_GetFloatv
__glim_GetFloatv:
    # Line 2262
    li	$a2,1
    # Line 2261
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a4,0xb
    addiu	$a4,$a4,17208
    addu	$gp,$t9,$a4
    # Line 2262
    # lw $t9, -26832($gp) # &__glDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glDoGet
    addiu	$a3,$a3,-2328
    # Line 2263
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetFloatv

# Function: __glim_GetIntegerv
# Declared: Line 2265 (Source lines: 2266-2268)
# Address: 0x0db4a39c - 0x0db4a3d8 (Size: 60 bytes, Frame: 32)
.globl __glim_GetIntegerv
.ent __glim_GetIntegerv
__glim_GetIntegerv:
    # Line 2267
    li	$a2,3
    # Line 2266
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a4,0xb
    addiu	$a4,$a4,17148
    addu	$gp,$t9,$a4
    # Line 2267
    # lw $t9, -26832($gp) # &__glDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glDoGet
    addiu	$a3,$a3,-2312
    # Line 2268
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetIntegerv

# Function: __glim_GetBooleanv
# Declared: Line 2270 (Source lines: 2271-2273)
# Address: 0x0db4a3d8 - 0x0db4a414 (Size: 60 bytes, Frame: 32)
.globl __glim_GetBooleanv
.ent __glim_GetBooleanv
__glim_GetBooleanv:
    # Line 2272
    li	$a2,4
    # Line 2271
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a4,0xb
    addiu	$a4,$a4,17088
    addu	$gp,$t9,$a4
    # Line 2272
    # lw $t9, -26832($gp) # &__glDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glDoGet
    addiu	$a3,$a3,-2296
    # Line 2273
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetBooleanv

# Function: __glim_GetError
# Declared: Line 2278 (Source lines: 2279-2286)
# Address: 0x0db4a414 - 0x0db4a470 (Size: 92 bytes, Frame: 16)
.globl __glim_GetError
.ent __glim_GetError
__glim_GetError:
    # Line 2281
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 2279
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # Line 2281
    lw	$at,__glBeginMode
    # Line 2279
    lui	$v1,0xb
    addiu	$v1,$v1,17028
    # Line 2281
    beq	$at,$v0,.L0db4a44c
    # Line 2279
    addu	$gp,$t9,$v1
    # Line 2283
    lw	$v0,3096($a2)
    # Line 2284
    sw	$zero,3096($a2)
    ld	$gp,0($sp)
    # Line 2286
    jr	$ra
    addiu	$sp,$sp,16
.L0db4a44c:
    # Line 2281
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetError

# Function: __glim_GetString
# Declared: Line 2292 (Source lines: 2293-2307)
# Address: 0x0db4a470 - 0x0db4a53c (Size: 204 bytes, Frame: 32)
.globl __glim_GetString
.ent __glim_GetString
__glim_GetString:
    # Line 2294
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 2293
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2294
    lw	$at,__glBeginMode
    # Line 2293
    lui	$v1,0xb
    addiu	$v1,$v1,16936
    # Line 2294
    beq	$at,$v0,.L0db4a518
    # Line 2293
    addu	$gp,$t9,$v1
    # Line 2296
    li	$a1,7936
    beq	$a0,$a1,.L0db4a4e8
    li	$at,7937
    beq	$a0,$at,.L0db4a4f8
    li	$v0,7938
    beq	$a0,$v0,.L0db4a508
    li	$v1,7939
    beq	$a0,$v1,.L0db4a4d8
    # Line 2306
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2307
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4a4d8:
    # Line 2304
    lw	$v0,3324($a3)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4a4e8:
    # Line 2298
    lw	$v0,3312($a3)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4a4f8:
    # Line 2300
    lw	$v0,3316($a3)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4a508:
    # Line 2302
    lw	$v0,3320($a3)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4a518:
    # Line 2294
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetString

# Function: __glim_GetPointervEXT
# Declared: Line 2312 (Source lines: 2314-2344)
# Address: 0x0db4a53c - 0x0db4a6bc (Size: 384 bytes, Frame: 32)
.globl __glim_GetPointervEXT
.ent __glim_GetPointervEXT
__glim_GetPointervEXT:
    # Line 2315
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 2314
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2315
    lw	$at,__glBeginMode
    # Line 2314
    lui	$v1,0xb
    addiu	$v1,$v1,16732
    # Line 2315
    beq	$at,$v0,.L0db4a69c
    # Line 2314
    addu	$gp,$t9,$v1
    # Line 2315
    li	$a4,0x8090
    sltu	$a2,$a0,$a4
    bnez	$a2,.L0db4a5a8
    # Line 2317
    sltu	$at,$a4,$a0
    beqz	$at,.L0db4a64c
    li	$a4,0x8092
    sltu	$v0,$a0,$a4
    bnez	$v0,.L0db4a60c
    sltu	$v1,$a4,$a0
    beqz	$v1,.L0db4a688
    li	$a2,0x8093
    bne	$a0,$a2,.L0db4a5c8
    # Line 2343
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2334
    lw	$at,4920($a3)
    # Line 2335
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2334
    sw	$at,0($a1)
.L0db4a5a8:
    # Line 2317
    li	$a4,0x808e
    sltu	$v0,$a0,$a4
    bnez	$v0,.L0db4a5e4
    sltu	$v1,$a4,$a0
    beqz	$v1,.L0db4a674
    li	$a2,0x808f
    beq	$a0,$a2,.L0db4a660
    # Line 2343
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0db4a5c8:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2344
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0db4a5e4:
    # Line 2317
    sltiu	$at,$a0,3571
    bnez	$at,.L0db4a62c
    sltiu	$v0,$a0,3572
    beqz	$v0,.L0db4a5c8
    # Line 2343
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2340
    lw	$v1,4604($a3)
    # Line 2341
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2340
    sw	$v1,0($a1)
.L0db4a60c:
    # Line 2317
    li	$a2,0x8091
    bne	$a0,$a2,.L0db4a5c8
    # Line 2343
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2328
    lw	$at,4868($a3)
    # Line 2329
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2328
    sw	$at,0($a1)
.L0db4a62c:
    # Line 2317
    li	$v0,3568
    bne	$a0,$v0,.L0db4a5c8
    # Line 2343
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,0($sp)
    # Line 2337
    lw	$v1,4572($a3)
    # Line 2338
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2337
    sw	$v1,0($a1)
.L0db4a64c:
    ld	$gp,0($sp)
    # Line 2325
    lw	$a0,4840($a3)
    # Line 2326
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2325
    sw	$a0,0($a1)
.L0db4a660:
    ld	$gp,0($sp)
    # Line 2322
    lw	$a2,4816($a3)
    # Line 2323
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2322
    sw	$a2,0($a1)
.L0db4a674:
    ld	$gp,0($sp)
    # Line 2319
    lw	$at,4788($a3)
    # Line 2320
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2319
    sw	$at,0($a1)
.L0db4a688:
    ld	$gp,0($sp)
    # Line 2331
    lw	$v0,4892($a3)
    # Line 2332
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2331
    sw	$v0,0($a1)
.L0db4a69c:
    # Line 2315
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_GetPointervEXT

.late_rodata
jtbl_0dbef418:
    .word .L0db44f00
    .word .L0db44f34
    .word .L0db44f54
    .word .L0db44f70
    .word .L0db44f94
    .word .L0db44fb0
    .word .L0db44fbc
    .word .L0db44f20
    .word .L0db44fc8
    .word .L0db44fd4
jtbl_0dbef440:
    .word .L0db450d0
    .word .L0db45118
    .word .L0db45134
    .word .L0db45150
    .word .L0db45174
    .word .L0db45198
    .word .L0db451bc
    .word .L0db450ec
    .word .L0db451e0
    .word .L0db45204
jtbl_0dbef468:
    .word .L0db4585c
    .word .L0db4585c
    .word .L0db4585c
    .word .L0db4585c
    .word .L0db4585c
    .word .L0db4585c
    .word .L0db4585c
    .word .L0db4585c
    .word .L0db4585c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db4583c
    .word .L0db45894
    .word .L0db45894
    .word .L0db45894
    .word .L0db45894
    .word .L0db45894
    .word .L0db45894
    .word .L0db45894
    .word .L0db45894
    .word .L0db45894
jtbl_0dbef510:
    .word .L0db45bb8
    .word .L0db45bb8
    .word .L0db45bb8
    .word .L0db45bb8
    .word .L0db45bb8
    .word .L0db45bb8
    .word .L0db45bb8
    .word .L0db45bb8
    .word .L0db45bb8
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45b98
    .word .L0db45bf0
    .word .L0db45bf0
    .word .L0db45bf0
    .word .L0db45bf0
    .word .L0db45bf0
    .word .L0db45bf0
    .word .L0db45bf0
    .word .L0db45bf0
    .word .L0db45bf0
jtbl_0dbef5b8:
    .word .L0db45f58
    .word .L0db45f58
    .word .L0db45f58
    .word .L0db45f58
    .word .L0db45f58
    .word .L0db45f58
    .word .L0db45f58
    .word .L0db45f58
    .word .L0db45f58
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f38
    .word .L0db45f90
    .word .L0db45f90
    .word .L0db45f90
    .word .L0db45f90
    .word .L0db45f90
    .word .L0db45f90
    .word .L0db45f90
    .word .L0db45f90
    .word .L0db45f90
jtbl_0dbef660:
    .word .L0db461d0
    .word .L0db461d0
    .word .L0db462bc
    .word .L0db462bc
    .word .L0db462bc
    .word .L0db462bc
    .word .L0db462bc
    .word .L0db462bc
    .word .L0db462bc
    .word .L0db462bc
jtbl_0dbef688:
    .word .L0db463fc
    .word .L0db463fc
    .word .L0db464ac
    .word .L0db464ac
    .word .L0db464ac
    .word .L0db464ac
    .word .L0db464ac
    .word .L0db464ac
    .word .L0db464ac
    .word .L0db464ac
jtbl_0dbef6b0:
    .word .L0db46670
    .word .L0db46670
    .word .L0db46720
    .word .L0db46720
    .word .L0db46720
    .word .L0db46720
    .word .L0db46720
    .word .L0db46720
    .word .L0db46720
    .word .L0db46720

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_41200000:
    .word 0x41200000
_lit_42040000:
    .word 0x42040000
_lit_c1200000:
    .word 0xc1200000

