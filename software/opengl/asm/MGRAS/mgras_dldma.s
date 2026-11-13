# Source: ../MGRAS/mgras_dldma.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_dldma.c
# Total Functions: 27

.text

# Function: __glMgrim_ListParameterfvSGIX
# Declared: Line 69 (Source lines: 70-114)
# Address: 0x0da8dc34 - 0x0da8ddcc (Size: 408 bytes, Frame: 208)
.globl __glMgrim_ListParameterfvSGIX
.ent __glMgrim_ListParameterfvSGIX
__glMgrim_ListParameterfvSGIX:
    # Line 70
    move	$v0,$a2
    # Line 74
    li	$v1,1
    # Line 70
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    # Line 74
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    # Line 70
    move	$a5,$a0
    # Line 74
    lw	$at,__glBeginMode
    # Line 70
    lui	$a0,0x17
    addiu	$a0,$a0,2660
    # Line 74
    beq	$at,$v1,.L0da8dda8
    # Line 70
    addu	$gp,$t9,$a0
    # Line 74
    li	$a3,0x8182
    beql	$a1,$a3,.L0da8dc94
    sd	$ra,24($sp)
    # Line 78
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 79
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8dc94:
    beqz	$a5,.L0da8dd88
    sd	$v0,0($sp)
    sd	$s1,32($sp)
    # Line 88
    # lw $t9, -26220($gp) # &__glNamesLockData
    move	$a0,$s0
    move	$a2,$a5
    jal	__glNamesLockData
    lw	$a1,4628($s0)
    move	$s1,$v0
    beqz	$v0,.L0da8dd60
    ld	$ra,24($sp)
    ld	$a4,0($sp)
    # Line 93
    lwc1	$f4,0($a4)
    dmtc1	$zero,$f0
    cvt.d.s	$f5,$f4
    c.lt.d	$f5,$f0
    nop
    bc1f	.L0da8dd48
    # Line 95
    ldc1	$f1,_lit8_3ff0000000000000
    mtc1	$zero,$f4
.L0da8dce4:
    # Line 98
    lw	$at,20($s1)
.L0da8dce8:
    swc1	$f4,44($s1)
    lw	$at,12($at)
    andi	$at,$at,0x4
    beqz	$at,.L0da8dd74
    # Line 105
    ldc1	$f3,_lit8_3f847ae147ae147b
    # Line 103
    swc1	$f4,48($s1)
.L0da8dd00:
    # Line 105
    lw	$v1,32($s1)
    andi	$v1,$v1,0x2
    beqz	$v1,.L0da8dd20
    # Line 109
    nop	# was lw $t9, -29564($gp) # &__glDlistHeapPriorityChanged
    lw	$a0,4624($s0)
    addiu	$a1,$s1,48
    jal	__glDlistHeapPriorityChanged
    addiu	$a0,$a0,4
.L0da8dd20:
    # Line 113
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$s1
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    # Line 114
    ld	$s0,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8dd48:
    # Line 95
    c.lt.d	$f1,$f5
    nop
    bc1fl	.L0da8dce8
    # Line 98
    lw	$at,20($s1)
    b	.L0da8dce4
    # Line 97
    lwc1	$f4,_lit_3f800000
.L0da8dd60:
    ld	$gp,8($sp)
    # Line 90
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8dd74:
    # Line 105
    cvt.d.s	$f2,$f4
    mul.d	$f2,$f2,$f3
    cvt.s.d	$f2,$f2
    b	.L0da8dd00
    swc1	$f2,48($s1)
.L0da8dd88:
    # Line 84
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 85
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8dda8:
    # Line 74
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_ListParameterfvSGIX

# Function: __glMgrim_ListParameterfSGIX
# Declared: Line 117 (Source lines: 118-120)
# Address: 0x0da8ddcc - 0x0da8de04 (Size: 56 bytes, Frame: 48)
.globl __glMgrim_ListParameterfSGIX
.ent __glMgrim_ListParameterfSGIX
__glMgrim_ListParameterfSGIX:
    # Line 118
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x17
    addiu	$at,$at,2252
    addu	$gp,$t9,$at
    # Line 119
    # lw $t9, -31672($gp) # &__glMgrim_ListParameterfvSGIX
    addiu	$a2,$sp,32
    sd	$ra,0($sp)
    bal __glMgrim_ListParameterfvSGIX
    # Line 118
    swc1	$f14,32($sp)
    # Line 120
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_ListParameterfSGIX

# Function: __glMgrim_ListParameterivSGIX
# Declared: Line 123 (Source lines: 124-129)
# Address: 0x0da8de04 - 0x0da8de48 (Size: 68 bytes, Frame: 192)
.globl __glMgrim_ListParameterivSGIX
.ent __glMgrim_ListParameterivSGIX
__glMgrim_ListParameterivSGIX:
    # Line 127
    lw	$v0,0($a2)
    # Line 124
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # Line 127
    mtc1	$v0,$f0
    # Line 124
    lui	$at,0x17
    addiu	$at,$at,2196
    # Line 127
    cvt.s.w	$f0,$f0
    # Line 124
    addu	$gp,$t9,$at
    # Line 128
    # lw $t9, -31672($gp) # &__glMgrim_ListParameterfvSGIX
    addiu	$a2,$sp,0
    sd	$ra,8($sp)
    bal __glMgrim_ListParameterfvSGIX
    # Line 127
    swc1	$f0,0($sp)
    # Line 129
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_ListParameterivSGIX

# Function: __glMgrim_ListParameteriSGIX
# Declared: Line 132 (Source lines: 133-138)
# Address: 0x0da8de48 - 0x0da8de88 (Size: 64 bytes, Frame: 192)
.globl __glMgrim_ListParameteriSGIX
.ent __glMgrim_ListParameteriSGIX
__glMgrim_ListParameteriSGIX:
    # Line 133
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # Line 136
    mtc1	$a2,$f0
    # Line 133
    lui	$at,0x17
    addiu	$at,$at,2128
    # Line 136
    cvt.s.w	$f0,$f0
    # Line 133
    addu	$gp,$t9,$at
    # Line 137
    # lw $t9, -31672($gp) # &__glMgrim_ListParameterfvSGIX
    addiu	$a2,$sp,0
    sd	$ra,8($sp)
    bal __glMgrim_ListParameterfvSGIX
    # Line 136
    swc1	$f0,0($sp)
    # Line 138
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_ListParameteriSGIX

# Function: __glMgrim_GetListParameterfvSGIX
# Declared: Line 141 (Source lines: 142-164)
# Address: 0x0da8de88 - 0x0da8df80 (Size: 248 bytes, Frame: 192)
.globl __glMgrim_GetListParameterfvSGIX
.ent __glMgrim_GetListParameterfvSGIX
__glMgrim_GetListParameterfvSGIX:
    # Line 144
    lw	$v0,__glCurrentContext
    # Line 142
    move	$a5,$a2
    # Line 144
    li	$v1,1
    # Line 142
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    move	$a6,$a0
    # Line 144
    lw	$at,__glBeginMode
    # Line 142
    lui	$a0,0x17
    addiu	$a0,$a0,2064
    # Line 144
    beq	$at,$v1,.L0da8df60
    # Line 142
    addu	$gp,$t9,$a0
    # Line 144
    li	$a3,0x8182
    beql	$a1,$a3,.L0da8dee0
    sd	$ra,24($sp)
    # Line 148
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 149
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8dee0:
    sd	$v0,0($sp)
    beqz	$a6,.L0da8df44
    sd	$a5,8($sp)
    ld	$a1,0($sp)
    # Line 158
    # lw $t9, -26220($gp) # &__glNamesLockData
    move	$a2,$a6
    move	$a0,$a1
    jal	__glNamesLockData
    lw	$a1,4628($a1)
    bnez	$v0,.L0da8df18
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    # Line 159
    jr	$ra
    addiu	$sp,$sp,64
.L0da8df18:
    # Line 163
    move	$a1,$v0
    # Line 161
    ld	$a2,8($sp)
    # Line 163
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    # Line 161
    lwc1	$f0,44($v0)
    # Line 163
    ld	$a0,0($sp)
    jal	__glNamesUnlockData
    # Line 161
    swc1	$f0,0($a2)
    # Line 164
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8df44:
    # Line 154
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 155
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8df60:
    # Line 144
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_GetListParameterfvSGIX

# Function: __glMgrim_GetListParameterivSGIX
# Declared: Line 167 (Source lines: 168-173)
# Address: 0x0da8df80 - 0x0da8dfe0 (Size: 96 bytes, Frame: 192)
.globl __glMgrim_GetListParameterivSGIX
.ent __glMgrim_GetListParameterivSGIX
__glMgrim_GetListParameterivSGIX:
    # Line 168
    addiu	$sp,$sp,-64
    sd	$s8,16($sp)
    # Line 169
    lw	$v0,0($a2)
    # Line 168
    move	$s8,$a2
    sd	$gp,24($sp)
    # Line 169
    mtc1	$v0,$f0
    # Line 168
    lui	$at,0x17
    addiu	$at,$at,1816
    # Line 169
    cvt.s.w	$f0,$f0
    # Line 168
    addu	$gp,$t9,$at
    # Line 171
    # lw $t9, -31656($gp) # &__glMgrim_GetListParameterfvSGIX
    addiu	$a2,$sp,0
    sd	$ra,8($sp)
    bal __glMgrim_GetListParameterfvSGIX
    # Line 169
    swc1	$f0,0($sp)
    # Line 172
    lwc1	$f1,0($sp)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    ld	$gp,24($sp)
    # Line 173
    ld	$ra,8($sp)
    # Line 172
    sw	$v1,0($s8)
    # Line 173
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_GetListParameterivSGIX

# Function: __glMgrSPBalloc
# Declared: Line 191 (Source lines: 192-208)
# Address: 0x0da8dfe0 - 0x0da8e060 (Size: 128 bytes, Frame: 32)
.globl __glMgrSPBalloc
.ent __glMgrSPBalloc
__glMgrSPBalloc:
    # Line 192
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,4776($a0)
    lui	$v0,0x17
    addiu	$v0,$v0,1720
    andi	$at,$at,0x1
    beqz	$at,.L0da8e03c
    addu	$gp,$t9,$v0
    lw	$a3,0($a1)
    sltiu	$v1,$a3,1016
    beqzl	$v1,.L0da8e020
    # Line 208
    lw	$t9,0($a0)
    sd	$ra,8($sp)
    # Line 198
    li	$a3,1016
    sw	$a3,0($a1)
.L0da8e01c:
    # Line 208
    lw	$t9,0($a0)
.L0da8e020:
    sd	$ra,8($sp)
    jalr	$t9
    sll	$a1,$a3,0x2
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8e03c:
    # Line 204
    li	$a3,1
    lw	$at,4624($a0)
    lw	$at,16($at)
    lw	$at,20($at)
    sd	$ra,8($sp)
    sllv	$a3,$a3,$at
    addiu	$a3,$a3,-6
    b	.L0da8e01c
    sw	$a3,0($a1)
.end __glMgrSPBalloc

# Function: __glMgrSPBfree
# Declared: Line 216 (Source lines: 217-219)
# Address: 0x0da8e060 - 0x0da8e094 (Size: 52 bytes, Frame: 32)
.globl __glMgrSPBfree
.ent __glMgrSPBfree
__glMgrSPBfree:
    # Line 217
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x17
    addiu	$at,$at,1592
    addu	$gp,$t9,$at
    # Line 218
    lw	$t9,12($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 219
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrSPBfree

# Function: __glMgrSPMoreBlocks
# Declared: Line 229 (Source lines: 231-231)
# Address: 0x0da8e094 - 0x0da8e09c (Size: 8 bytes, Frame: 0)
.globl __glMgrSPMoreBlocks
.ent __glMgrSPMoreBlocks
__glMgrSPMoreBlocks:
    # Line 231
    jr	$ra
    move	$v0,$zero
.end __glMgrSPMoreBlocks

# Function: __glMgrDLIoctl
# Declared: Line 239 (Source lines: 240-275)
# Address: 0x0da8e09c - 0x0da8e0d4 (Size: 56 bytes, Frame: 48)
.globl __glMgrDLIoctl
.ent __glMgrDLIoctl
__glMgrDLIoctl:
    # Line 240
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x17
    addiu	$at,$at,1532
    addu	$gp,$t9,$at
    # Line 275
    # lw $t9, -17944($gp) # &ioctl
    addiu	$a2,$a2,32
    sd	$ra,0($sp)
    jal	ioctl
    lw	$a0,31560($a0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrDLIoctl

# Function: __glMgrDLDMASync
# Declared: Line 284 (Source lines: 285-338)
# Address: 0x0da8e0d4 - 0x0da8e15c (Size: 136 bytes, Frame: 48)
.ent __glMgrDLDMASync
__glMgrDLDMASync:
    # Line 285
    lw	$at,28($a0)
    beqz	$at,.L0da8e14c
    addiu	$sp,$sp,-48
    # Line 293
    lw	$a2,__glCurrentContext
    lui	$at,0x1
    addu	$a2,$a2,$at
    lw	$v0,-25276($a2)
    beqz	$v0,.L0da8e154
    # Line 309
    lui	$at,0x7
    sd	$ra,8($sp)
    sd	$a0,0($sp)
    lui	$v0,0xe
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sd	$s3,16($sp)
    # Line 300
    lw	$s3,-25272($a2)
    # Line 309
    ori	$v0,$v0,0x100
    sw	$v0,0($v1)
    addu	$s3,$s3,$at
    # Line 312
    # lw $t9, -17864($gp) # &sginap
.L0da8e124:
    jal	sginap
    move	$a0,$zero
    # Line 313
    lw	$v1,260($s3)
    andi	$v1,$v1,0xf
    bnez	$v1,.L0da8e124
    # Line 312
    nop	# was lw $t9, -17864($gp) # &sginap
    ld	$a1,0($sp)
    ld	$s3,16($sp)
    ld	$ra,8($sp)
    # Line 336
    sw	$zero,28($a1)
.L0da8e14c:
    # Line 338
    jr	$ra
    addiu	$sp,$sp,48
.L0da8e154:
    # Line 298
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrDLDMASync

# Function: __glMgrInitDLDMA
# Declared: Line 349 (Source lines: 350-425)
# Address: 0x0da8e15c - 0x0da8e2e8 (Size: 396 bytes, Frame: 192)
.globl __glMgrInitDLDMA
.ent __glMgrInitDLDMA
__glMgrInitDLDMA:
    # Line 371
    sw	$zero,31664($a0)
    # Line 350
    addiu	$sp,$sp,-64
    sd	$s1,0($sp)
    # Line 378
    lw	$s1,4624($a0)
    # Line 370
    sb	$zero,31660($a0)
    sd	$s0,16($sp)
    # Line 378
    lw	$s1,16($s1)
    # Line 350
    move	$s0,$a0
    sd	$gp,8($sp)
    # Line 378
    lw	$at,20($s1)
    # Line 350
    lui	$v0,0x17
    addiu	$v0,$v0,1340
    # Line 378
    beqz	$at,.L0da8e298
    # Line 350
    addu	$gp,$t9,$v0
.L0da8e194:
    sd	$s2,24($sp)
    # Line 391
    move	$a2,$s1
    move	$a0,$s0
    sd	$ra,32($sp)
    # Line 389
    li	$t8,256
    # Line 391
    # lw $t9, -31636($gp) # &__glMgrDLIoctl
    lui	$a1,0x6d67
    ori	$a1,$a1,0x24
    bal __glMgrDLIoctl
    # Line 389
    sw	$t8,12($s1)
    # Line 391
    blez	$v0,.L0da8e208
    move	$s2,$v0
    # Line 394
    # lw $t9, -17860($gp) # &getpagesize
    jal	getpagesize
    nop
    mult	$v0,$s2
    # Line 396
    # lw $t9, -17896($gp) # &getenv
    la	$a0,sub_0dbe0000
    # Line 394
    mflo	$s2
    # Line 396
    jal	getenv
    addiu	$a0,$a0,-16368
    bnez	$v0,.L0da8e23c
    # Line 409
    lui	$a1,0x200
    slt	$a1,$s2,$a1
    bnezl	$a1,.L0da8e20c
    ld	$s1,0($sp)
    # Line 419
    lw	$a3,12($s1)
    addu	$a3,$a3,$a3
    sw	$a3,12($s1)
.L0da8e208:
    ld	$s1,0($sp)
.L0da8e20c:
    # Line 423
    # lw $t9, -17896($gp) # &getenv
    la	$a0,sub_0dbe0000
    ld	$s2,24($sp)
    jal	getenv
    addiu	$a0,$a0,-16344
    ld	$gp,8($sp)
    # Line 424
    sltu	$a1,$zero,$v0
    # Line 425
    ld	$ra,32($sp)
    # Line 424
    sw	$a1,31668($s0)
    # Line 425
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8e23c:
    # Line 399
    # lw $t9, -17856($gp) # &atoi
    jal	atoi
    move	$a0,$v0
    # Line 400
    li	$at,0x81d8
    addu	$at,$at,$s0
    lw	$at,0($at)
    div	$zero,$s2,$at
    mflo	$s2
    slt	$a3,$s2,$v0
    beqz	$a3,.L0da8e26c
    teq	$at,$zero,0x7
    # Line 403
    move	$v0,$s2
.L0da8e26c:
    li	$v1,0x8000
    slt	$v1,$v1,$v0
    beqz	$v1,.L0da8e280
    ld	$s2,24($sp)
    # Line 405
    li	$v0,0x8000
.L0da8e280:
    slti	$a1,$v0,16
    beqz	$a1,.L0da8e290
    nop
    # Line 407
    li	$v0,16
.L0da8e290:
    # Line 409
    b	.L0da8e208
    sw	$v0,12($s1)
.L0da8e298:
    # Line 383
    li	$a0,0x81d8
    addu	$a0,$a0,$s0
    lw	$a0,0($a0)
    # Line 385
    sra	$a0,$a0,0x2
    slti	$a3,$a0,2
    bnez	$a3,.L0da8e2dc
    move	$v0,$zero
    addiu	$v0,$v0,1
.L0da8e2b8:
    sra	$a0,$a0,0x1
    slti	$a1,$a0,2
    bnez	$a1,.L0da8e2dc
    nop
    addiu	$v0,$v0,1
    sra	$a0,$a0,0x1
    slti	$a3,$a0,2
    beqzl	$a3,.L0da8e2b8
    addiu	$v0,$v0,1
.L0da8e2dc:
    sd	$ra,32($sp)
    b	.L0da8e194
    # Line 386
    sw	$v0,20($s1)
.end __glMgrInitDLDMA

# Function: __glMgrDlistNewArray
# Declared: Line 433 (Source lines: 434-471)
# Address: 0x0da8e2e8 - 0x0da8e370 (Size: 136 bytes, Frame: 48)
.globl __glMgrDlistNewArray
.ent __glMgrDlistNewArray
__glMgrDlistNewArray:
    # Line 434
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x17
    addiu	$at,$at,944
    addu	$gp,$t9,$at
    # Line 437
    lw	$t9,4716($a0)
    # Line 434
    move	$s8,$a1
    sd	$ra,0($sp)
    # Line 437
    jalr	$t9
    li	$a1,384
    # Line 465
    addiu	$a0,$s8,4
    # Line 456
    li	$v1,4
    # Line 459
    li	$a1,1
    # Line 439
    sw	$v0,16($s8)
    # Line 461
    sw	$zero,56($v0)
    # Line 460
    sw	$zero,52($v0)
    # Line 459
    sw	$a1,48($v0)
    # Line 458
    sw	$zero,44($v0)
    # Line 457
    sw	$zero,40($v0)
    # Line 456
    sw	$v1,36($v0)
    # Line 455
    sw	$zero,32($v0)
    # Line 453
    sw	$zero,20($v0)
    # Line 452
    sw	$zero,28($v0)
    # Line 465
    # lw $t9, -29584($gp) # &__glDlistHeapInit
    # Line 451
    sw	$zero,24($v0)
    # Line 449
    sw	$zero,0($v0)
    # Line 465
    jal	__glDlistHeapInit
    # Line 448
    sw	$zero,16($v0)
    # Line 471
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrDlistNewArray

# Function: __glMgrTermDLPool
# Declared: Line 478 (Source lines: 479-528)
# Address: 0x0da8e370 - 0x0da8e3fc (Size: 140 bytes, Frame: 48)
.globl __glMgrTermDLPool
.ent __glMgrTermDLPool
__glMgrTermDLPool:
    # Line 479
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,808
    # Line 486
    lbu	$at,31660($a0)
    lw	$a2,4624($a0)
    # Line 479
    addu	$gp,$t9,$v0
    # Line 486
    beqz	$at,.L0da8e3ac
    lw	$a2,16($a2)
    lw	$v1,__glCurrentContext
    beq	$v1,$s0,.L0da8e3bc
    sd	$a2,0($sp)
.L0da8e3a8:
    # Line 521
    sb	$zero,31660($s0)
.L0da8e3ac:
    ld	$gp,16($sp)
    # Line 528
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da8e3bc:
    # Line 500
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$ra,24($sp)
    addiu	$t9,$t9,-7980
    bal __glMgrDLIoctl
    ld	$a0,0($sp)
    # Line 509
    move	$a0,$s0
    # Line 502
    li	$ra,3
    # Line 509
    lui	$a1,0x6d67
    ld	$at,0($sp)
    # lw $t9, -31636($gp) # &__glMgrDLIoctl
    ori	$a1,$a1,0xb
    # Line 502
    sw	$ra,32($at)
    # Line 509
    bal __glMgrDLIoctl
    move	$a2,$at
    b	.L0da8e3a8
    ld	$ra,24($sp)
.end __glMgrTermDLPool

# Function: __glMgrDlistFreeArray
# Declared: Line 536 (Source lines: 537-563)
# Address: 0x0da8e3fc - 0x0da8e4c4 (Size: 200 bytes, Frame: 192)
.globl __glMgrDlistFreeArray
.ent __glMgrDlistFreeArray
__glMgrDlistFreeArray:
    # Line 537
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    move	$s8,$a1
    sd	$s1,8($sp)
    sd	$s0,0($sp)
    # Line 540
    lw	$s0,16($a1)
    # Line 537
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 540
    lw	$at,0($s0)
    # Line 537
    lui	$v0,0x17
    addiu	$v0,$v0,668
    # Line 540
    beqz	$at,.L0da8e478
    # Line 537
    addu	$gp,$t9,$v0
    # Line 545
    # lw $t9, -31584($gp) # &__glMgrDLAllocClose
    move	$a0,$s1
    bal __glMgrDLAllocClose
    move	$a1,$s0
    # Line 546
    # lw $t9, -31568($gp) # &__glMgrDLFlushClose
    move	$a0,$s1
    bal __glMgrDLFlushClose
    move	$a1,$s0
    # Line 548
    # lw $t9, -17852($gp) # &munmap
    lw	$a1,8($s0)
    jal	munmap
    lw	$a0,4($s0)
    bltz	$v0,.L0da8e4b0
    # Line 550
    nop	# was lw $t9, -17888($gp) # &perror
    # Line 556
    sw	$zero,0($s0)
.L0da8e470:
    sw	$zero,4($s0)
    # Line 555
    sw	$zero,16($s0)
.L0da8e478:
    # Line 559
    lw	$t9,4724($s1)
    move	$a0,$s1
    jal	perror
    move	$a1,$s0
    # Line 562
    # lw $t9, -29580($gp) # &__glDlistHeapFree
    addiu	$a0,$s8,4
    ld	$s1,8($sp)
    jal	__glDlistHeapFree
    ld	$s0,0($sp)
    # Line 563
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8e4b0:
    # Line 550
    la	$a0,sub_0dbe0000
    jalr	$t9
    addiu	$a0,$a0,-16320
    b	.L0da8e470
    # Line 556
    sw	$zero,0($s0)
.end __glMgrDlistFreeArray

# Function: __glMgrDLOutOfPool
# Declared: Line 573 (Source lines: 574-639)
# Address: 0x0da8e4c4 - 0x0da8e5e4 (Size: 288 bytes, Frame: 208)
.ent __glMgrDLOutOfPool
__glMgrDLOutOfPool:
    # Line 574
    addiu	$sp,$sp,-80
    sd	$s4,0($sp)
    move	$s4,$a0
    sd	$s1,8($sp)
    # Line 582
    lw	$at,32($a1)
    # Line 574
    move	$s1,$a1
    sd	$s0,16($sp)
    # Line 582
    andi	$at,$at,0x2
    beqz	$at,.L0da8e52c
    move	$s0,$zero
    # Line 593
    addiu	$a1,$s1,48
    # lw $t9, -29568($gp) # &__glDlistHeapRemove
    lw	$a0,4624($s4)
    sd	$ra,32($sp)
    jal	__glDlistHeapRemove
    addiu	$a0,$a0,4
    # Line 597
    move	$a1,$s1
    move	$a0,$s4
    # Line 595
    lw	$a2,32($s1)
    # Line 597
    # lw $t9, -31720($gp) # &__glMgrDLNotResident
    # Line 595
    li	$a3,-3
    and	$a2,$a2,$a3
    # Line 597
    bal __glMgrDLNotResident
    # Line 595
    sw	$a2,32($s1)
    sd	$s6,24($sp)
    ld	$ra,32($sp)
.L0da8e52c:
    sd	$s6,24($sp)
    # Line 600
    lw	$s6,20($s1)
    lw	$v0,52($s6)
    sd	$s2,48($sp)
    beqz	$v0,.L0da8e5c0
    sd	$s3,40($sp)
    # Line 611
    move	$s2,$zero
    # Line 605
    lw	$s1,56($s6)
    # Line 608
    lw	$s3,4624($s4)
    # Line 611
    beqz	$v0,.L0da8e5c0
    # Line 608
    lw	$s3,16($s3)
    # Line 611
    li	$s4,-1
    sd	$s5,56($sp)
    la	$s5,sub_0da90000
    sd	$ra,32($sp)
    b	.L0da8e57c
    addiu	$s5,$s5,-7980
.L0da8e570:
    sltu	$at,$s2,$v0
    beqz	$at,.L0da8e5b8
    # Line 621
    addiu	$s1,$s1,28
.L0da8e57c:
    # Line 611
    lw	$v1,0($s1)
    beq	$v1,$s4,.L0da8e570
    addiu	$s2,$s2,1
    # Line 615
    lw	$a0,4($s1)
    # Line 616
    move	$t9,$s5
    # Line 615
    addu	$s0,$a0,$s0
    # Line 616
    bal __glMgrDLIoctl
    move	$a0,$s3
    # Line 617
    # lw $t9, -31576($gp) # &__glMgrDLFree
    move	$a0,$s3
    bal __glMgrDLFree
    move	$a1,$s1
    # Line 618
    sw	$s4,0($s1)
    b	.L0da8e570
    lw	$v0,52($s6)
.L0da8e5b8:
    ld	$s5,56($sp)
    ld	$ra,32($sp)
.L0da8e5c0:
    # Line 639
    move	$v0,$s0
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s4,0($sp)
    ld	$s6,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrDLOutOfPool

# Function: __glMgrTexOutOfPool
# Declared: Line 647 (Source lines: 648-695)
# Address: 0x0da8e5e4 - 0x0da8e6ac (Size: 200 bytes, Frame: 208)
.ent __glMgrTexOutOfPool
__glMgrTexOutOfPool:
    # Line 648
    lw	$a3,4624($a0)
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    beqz	$a3,.L0da8e6a0
    move	$s2,$a1
    beqzl	$s2,.L0da8e6a4
    # Line 695
    ld	$s2,0($sp)
    # Line 648
    lw	$a0,44($s2)
    beqzl	$a0,.L0da8e6a4
    # Line 695
    ld	$s2,0($sp)
    sd	$s3,32($sp)
    # Line 664
    lw	$s3,16($a3)
    sd	$s0,16($sp)
    # Line 661
    lw	$s0,48($s2)
    sd	$s1,8($sp)
    # Line 667
    beqz	$a0,.L0da8e690
    move	$s1,$zero
    sd	$ra,24($sp)
    sd	$s4,40($sp)
    sd	$s5,48($sp)
    la	$s5,sub_0da90000
    li	$s4,-1
    b	.L0da8e650
    addiu	$s5,$s5,-7980
.L0da8e644:
    sltu	$at,$s1,$a0
    beqz	$at,.L0da8e684
    # Line 676
    addiu	$s0,$s0,28
.L0da8e650:
    # Line 667
    lw	$v0,0($s0)
    beq	$v0,$s4,.L0da8e644
    addiu	$s1,$s1,1
    # Line 671
    move	$a0,$s3
    bal __glMgrDLIoctl
    move	$t9,$s5
    # Line 672
    # lw $t9, -31576($gp) # &__glMgrDLFree
    move	$a0,$s3
    bal __glMgrDLFree
    move	$a1,$s0
    # Line 673
    sw	$s4,0($s0)
    b	.L0da8e644
    lw	$a0,44($s2)
.L0da8e684:
    ld	$s5,48($sp)
    ld	$s4,40($sp)
    ld	$ra,24($sp)
.L0da8e690:
    # Line 678
    sw	$zero,40($s2)
    ld	$s1,8($sp)
    ld	$s0,16($sp)
    ld	$s3,32($sp)
.L0da8e6a0:
    # Line 695
    ld	$s2,0($sp)
.L0da8e6a4:
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrTexOutOfPool

# Function: __glMgrDLEmptyPool
# Declared: Line 706 (Source lines: 707-726)
# Address: 0x0da8e6ac - 0x0da8e750 (Size: 164 bytes, Frame: 192)
.globl __glMgrDLEmptyPool
.ent __glMgrDLEmptyPool
__glMgrDLEmptyPool:
    # Line 707
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    sd	$s0,8($sp)
    sd	$s1,16($sp)
    # Line 712
    lw	$s1,4624($a0)
    sd	$gp,24($sp)
    # Line 707
    lui	$t8,0x17
    addiu	$t8,$t8,-20
    addu	$gp,$t9,$t8
    # Line 714
    # lw $t9, -29576($gp) # &__glDlistHeapQueryMin
    # Line 707
    move	$s0,$a0
    # Line 714
    addiu	$a0,$s1,4
    jal	__glDlistHeapQueryMin
    # Line 712
    lw	$s1,16($s1)
    sd	$s4,32($sp)
    # Line 714
    beqz	$v0,.L0da8e73c
    ld	$ra,0($sp)
    la	$s4,sub_0da90000
    b	.L0da8e714
    addiu	$s4,$s4,-6972
    # lw $t9, -29576($gp) # &__glDlistHeapQueryMin
.L0da8e700:
    lw	$a0,4624($s0)
    jal	__glDlistHeapQueryMin
    addiu	$a0,$a0,4
    beqz	$v0,.L0da8e738
    ld	$ra,0($sp)
.L0da8e714:
    lw	$a1,0($s1)
    beqz	$a1,.L0da8e700
    nop	# was lw $t9, -29576($gp) # &__glDlistHeapQueryMin
    # Line 719
    move	$a0,$s0
    lw	$a1,8($v0)
    bal __glMgrDlistFreeArray
    move	$t9,$s4
    b	.L0da8e700
    # Line 714
    nop	# was lw $t9, -29576($gp) # &__glDlistHeapQueryMin
.L0da8e738:
    ld	$s4,32($sp)
.L0da8e73c:
    ld	$gp,24($sp)
    # Line 726
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrDLEmptyPool

# Function: __glMgrDLBreakdownDMA
# Declared: Line 733 (Source lines: 734-748)
# Address: 0x0da8e750 - 0x0da8e7b4 (Size: 100 bytes, Frame: 48)
.globl __glMgrDLBreakdownDMA
.ent __glMgrDLBreakdownDMA
__glMgrDLBreakdownDMA:
    # Line 734
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    sd	$ra,0($sp)
    lui	$ra,0x17
    addiu	$ra,$ra,-184
    addu	$gp,$t9,$ra
    # Line 743
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$a0,16($sp)
    sd	$s3,8($sp)
    addiu	$t9,$t9,-6972
    bal __glMgrDlistFreeArray
    # Line 739
    lw	$s3,20($a1)
    # Line 743
    lw	$a1,56($s3)
    ld	$s3,8($sp)
    beqz	$a1,.L0da8e7a8
    ld	$ra,0($sp)
    ld	$t9,16($sp)
    # Line 747
    move	$a0,$t9
    lw	$t9,12($t9)
    jal	sub_0da90000
    ld	$s3,8($sp)
    ld	$ra,0($sp)
.L0da8e7a8:
    ld	$gp,24($sp)
    # Line 748
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrDLBreakdownDMA

# Function: __glMgrTexBreakdownDMA
# Declared: Line 755 (Source lines: 756-765)
# Address: 0x0da8e7b4 - 0x0da8e818 (Size: 100 bytes, Frame: 48)
.globl __glMgrTexBreakdownDMA
.ent __glMgrTexBreakdownDMA
__glMgrTexBreakdownDMA:
    # Line 756
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    sd	$ra,0($sp)
    lui	$ra,0x17
    addiu	$ra,$ra,-284
    addu	$gp,$t9,$ra
    # Line 760
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$s3,8($sp)
    # Line 756
    move	$s3,$a1
    # Line 760
    addiu	$t9,$t9,-6684
    bal __glMgrDlistFreeArray
    sd	$a0,16($sp)
    lw	$a1,48($s3)
    ld	$s3,8($sp)
    beqz	$a1,.L0da8e80c
    ld	$ra,0($sp)
    ld	$t9,16($sp)
    # Line 764
    move	$a0,$t9
    lw	$t9,12($t9)
    jal	sub_0da90000
    ld	$s3,8($sp)
    ld	$ra,0($sp)
.L0da8e80c:
    ld	$gp,24($sp)
    # Line 765
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrTexBreakdownDMA

# Function: __glMgrBuildSegs
# Declared: Line 785 (Source lines: 786-930)
# Address: 0x0da8e818 - 0x0da8eaac (Size: 660 bytes, Frame: 240)
.ent __glMgrBuildSegs
__glMgrBuildSegs:
    # Line 786
    addiu	$sp,$sp,-112
    sd	$s2,24($sp)
    sd	$s5,8($sp)
    move	$s5,$a0
    sd	$s0,0($sp)
    # Line 794
    lw	$v0,16($a1)
    lw	$at,20($a1)
    # Line 786
    move	$s0,$a1
    # Line 794
    beqz	$v0,.L0da8ea8c
    sd	$at,16($sp)
.L0da8e840:
    # Line 808
    lw	$a2,24($s0)
    # Line 812
    la	$a3,__glsple_Sentinel
    # Line 808
    beqz	$a2,.L0da8ea74
    move	$a0,$v0
    ld	$s0,0($sp)
.L0da8e854:
    # Line 822
    move	$s2,$zero
    # Line 816
    move	$a1,$a2
    # Line 823
    blez	$a2,.L0da8ea58
    move	$v0,$zero
    sd	$ra,32($sp)
    sd	$s1,72($sp)
    move	$s1,$zero
    sd	$s8,56($sp)
    la	$s8,__glMgrle_CallList
    sd	$s4,64($sp)
    la	$s4,__glMgr_Push
    sd	$s7,80($sp)
    li	$s7,-1
    move	$s0,$a0
    sd	$s6,40($sp)
    sll	$s6,$a1,0x3
    sd	$s3,48($sp)
    la	$s3,sub_0dbe0000
    addu	$s6,$s6,$a0
    b	.L0da8e8f8
    addiu	$s3,$s3,-16384
.L0da8e8a8:
    # Line 881
    bne	$a1,$s8,.L0da8e970
    la	$a4,__glMgrle_BindTextureEXT
    # Line 893
    sh	$zero,-18($a0)
    # Line 890
    sw	$zero,-12($a0)
    # Line 889
    sw	$zero,-24($a0)
    # Line 892
    sh	$v1,-20($a0)
    # Line 894
    lw	$at,4($s0)
    lw	$at,0($at)
    # Line 889
    move	$a1,$zero
    # Line 895
    addiu	$s0,$s0,8
    # Line 894
    sw	$at,-16($a0)
.L0da8e8d4:
    # Line 924
    lhu	$a3,-20($a0)
.L0da8e8d8:
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s3
    lw	$a3,0($a3)
    sltu	$a4,$s0,$s6
    addu	$a3,$a3,$a2
    addu	$a3,$a3,$a1
    beqz	$a4,.L0da8ea38
    sw	$a3,-24($a0)
.L0da8e8f8:
    # Line 829
    move	$a1,$v0
    move	$a0,$s5
    lw	$t9,8($s5)
    # Line 828
    addiu	$s2,$s2,1
    addiu	$s1,$s1,28
    # Line 829
    jalr	$t9
    move	$a2,$s1
    # Line 831
    addu	$a0,$v0,$s1
    # Line 832
    sw	$zero,-8($a0)
    # Line 831
    sw	$s7,-28($a0)
    la	$a3,__glsple_Sentinel
    # Line 834
    lw	$a1,0($s0)
    li	$v1,2
    la	$at,__glsple_Sentinel
    bne	$a1,$s4,.L0da8e8a8
    # Line 832
    move	$a2,$zero
    # Line 845
    lw	$a1,4($s0)
    lw	$a1,0($a1)
    sw	$a1,-24($a0)
    # Line 846
    lw	$a4,4($s0)
    sw	$a4,-12($a0)
    # Line 848
    lw	$a5,8($s0)
    la	$v1,__glMgrle_BindTextureEXT
    li	$a3,1
    bne	$a5,$s4,.L0da8e9c8
    addiu	$s0,$s0,8
    # Line 854
    sw	$zero,-16($a0)
    # Line 853
    sh	$zero,-18($a0)
    # Line 854
    b	.L0da8e8d4
    # Line 852
    sh	$a3,-20($a0)
.L0da8e970:
    # Line 895
    bne	$a1,$a4,.L0da8e9a0
    li	$v1,2
    # Line 900
    sw	$zero,-12($a0)
    # Line 899
    sw	$zero,-24($a0)
    # Line 903
    sh	$v1,-18($a0)
    # Line 902
    sh	$v1,-20($a0)
    # Line 904
    lw	$at,4($s0)
    # Line 899
    move	$a1,$zero
    # Line 904
    lw	$at,4($at)
    # Line 905
    addiu	$s0,$s0,8
    b	.L0da8e8d4
    # Line 904
    sw	$at,-16($a0)
.L0da8e9a0:
    # Line 905
    bnel	$a1,$a3,.L0da8e9f0
    # Line 921
    lw	$a1,-24($a0)
    # Line 909
    move	$a1,$zero
    # Line 915
    addiu	$s0,$s0,8
    # Line 914
    sw	$zero,-16($a0)
    # Line 913
    sh	$zero,-18($a0)
    # Line 912
    sh	$zero,-20($a0)
    # Line 910
    sw	$zero,-12($a0)
    # Line 915
    b	.L0da8e8d4
    # Line 909
    sw	$zero,-24($a0)
.L0da8e9c8:
    # Line 854
    bne	$a5,$s8,.L0da8e9f8
    nop
    # Line 859
    sh	$zero,-18($a0)
    li	$at,2
    # Line 858
    sh	$at,-20($a0)
    # Line 860
    lw	$a4,4($s0)
    lw	$a4,0($a4)
    # Line 861
    addiu	$s0,$s0,8
    b	.L0da8e8d4
    # Line 860
    sw	$a4,-16($a0)
.L0da8e9f0:
    b	.L0da8e8d4
    # Line 921
    addiu	$s0,$s0,8
.L0da8e9f8:
    # Line 861
    bne	$a5,$v1,.L0da8ea1c
    li	$a4,2
    # Line 866
    sh	$a4,-18($a0)
    # Line 865
    sh	$a4,-20($a0)
    # Line 867
    lw	$a3,4($s0)
    lw	$a3,4($a3)
    # Line 868
    addiu	$s0,$s0,8
    b	.L0da8e8d4
    # Line 867
    sw	$a3,-16($a0)
.L0da8ea1c:
    # Line 868
    bnel	$a5,$at,.L0da8e8d8
    # Line 924
    lhu	$a3,-20($a0)
    # Line 881
    addiu	$s0,$s0,8
    # Line 874
    sw	$zero,-16($a0)
    # Line 873
    sh	$zero,-18($a0)
    # Line 881
    b	.L0da8e8d4
    # Line 872
    sh	$zero,-20($a0)
.L0da8ea38:
    ld	$s7,80($sp)
    ld	$s1,72($sp)
    ld	$s0,0($sp)
    ld	$s4,64($sp)
    ld	$ra,32($sp)
    ld	$s8,56($sp)
    ld	$s3,48($sp)
    ld	$s6,40($sp)
.L0da8ea58:
    ld	$v1,16($sp)
    # Line 930
    ld	$s5,8($sp)
    # Line 929
    sw	$v0,56($v1)
    # Line 928
    sw	$s2,52($v1)
    # Line 930
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8ea74:
    # Line 813
    sw	$zero,4($a0)
    # Line 812
    sw	$a3,0($a0)
    # Line 814
    li	$a2,1
    sw	$a2,24($s0)
    b	.L0da8e854
    ld	$s0,0($sp)
.L0da8ea8c:
    # Line 807
    lw	$t9,0($s5)
    move	$a0,$s5
    sd	$ra,32($sp)
    jalr	$t9
    li	$a1,8
    sw	$v0,16($s0)
    b	.L0da8e840
    ld	$ra,32($sp)
.end __glMgrBuildSegs

# Function: __glMgrDLResolveCalls
# Declared: Line 938 (Source lines: 939-1012)
# Address: 0x0da8eaac - 0x0da8ec44 (Size: 408 bytes, Frame: 224)
.globl __glMgrDLResolveCalls
.ent __glMgrDLResolveCalls
__glMgrDLResolveCalls:
    # Line 939
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    sd	$s1,64($sp)
    sd	$s2,24($sp)
    move	$s2,$a1
    # Line 953
    li	$a1,1
    sd	$a0,16($sp)
    sd	$gp,48($sp)
    # Line 939
    lui	$t8,0x17
    addiu	$t8,$t8,-1044
    sd	$s3,32($sp)
    # Line 951
    lw	$s3,4624($a0)
    # Line 939
    addu	$gp,$t9,$t8
    # Line 953
    # lw $t9, -31564($gp) # &__glMgrDLFlushDefer
    # Line 951
    lw	$s3,16($s3)
    sd	$ra,40($sp)
    # Line 953
    bal __glMgrDLFlushDefer
    move	$a0,$s3
    # Line 956
    lw	$s0,20($s2)
    # Line 960
    move	$s1,$zero
    lw	$v0,52($s0)
    sd	$s0,8($sp)
    beqz	$v0,.L0da8eb28
    # Line 959
    lw	$s0,56($s0)
    # Line 960
    li	$s2,2
.L0da8eb10:
    lhu	$at,8($s0)
    beq	$at,$s2,.L0da8eb58
    addiu	$s1,$s1,1
.L0da8eb1c:
    sltu	$v1,$s1,$v0
    bnez	$v1,.L0da8eb10
    # Line 1008
    addiu	$s0,$s0,28
.L0da8eb28:
    # Line 1011
    move	$a0,$s3
    move	$a1,$zero
    # lw $t9, -31564($gp) # &__glMgrDLFlushDefer
    ld	$s2,24($sp)
    ld	$s1,64($sp)
    bal __glMgrDLFlushDefer
    ld	$s0,56($sp)
    # Line 1012
    ld	$ra,40($sp)
    ld	$gp,48($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da8eb58:
    # Line 964
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    move	$a0,$s3
    bal __glMgrDLPoolToPtr
    lw	$a1,0($s0)
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$v0,0($sp)
    addiu	$t9,$t9,-7980
    # Line 966
    bal __glMgrDLIoctl
    move	$a0,$s3
    lhu	$at,10($s0)
    andi	$at,$at,0x2
    beqz	$at,.L0da8ebf8
    lw	$a2,12($s0)
    # Line 970
    ld	$a3,16($sp)
    # lw $t9, -26220($gp) # &__glNamesLockData
    lui	$a1,0x1
    addu	$a1,$a1,$a3
    lw	$a1,-28164($a1)
    move	$a0,$a3
    jal	__glNamesLockData
    lw	$a1,1180($a1)
    # Line 974
    lw	$a4,8($v0)
    # Line 981
    lw	$a6,48($a4)
    ld	$a5,0($sp)
    lw	$a6,0($a6)
    sw	$a6,16($a5)
    # Line 982
    lw	$a4,48($a4)
    # Line 970
    move	$a1,$v0
    # Line 984
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    # Line 982
    lw	$a4,4($a4)
    # Line 984
    ld	$a0,16($sp)
    jal	__glNamesUnlockData
    # Line 982
    sw	$a4,20($a5)
    # Line 1005
    # lw $t9, -31560($gp) # &__glMgrDLFlushSeg
.L0da8ebe0:
    move	$a0,$s3
    bal __glMgrDLFlushSeg
    move	$a1,$s0
    ld	$v0,8($sp)
    b	.L0da8eb1c
    lw	$v0,52($v0)
.L0da8ebf8:
    ld	$a1,16($sp)
    # Line 991
    # lw $t9, -26220($gp) # &__glNamesLockData
    move	$a0,$a1
    jal	__glNamesLockData
    lw	$a1,4628($a1)
    # Line 997
    lw	$a2,20($v0)
    # Line 998
    lw	$a4,56($a2)
    ld	$a3,0($sp)
    lw	$a4,0($a4)
    sw	$a4,16($a3)
    # Line 999
    lw	$a2,56($a2)
    # Line 991
    move	$a1,$v0
    # Line 1001
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    # Line 999
    lw	$a2,4($a2)
    # Line 1001
    ld	$a0,16($sp)
    jal	__glNamesUnlockData
    # Line 999
    sw	$a2,20($a3)
    b	.L0da8ebe0
    # Line 1005
    nop	# was lw $t9, -31560($gp) # &__glMgrDLFlushSeg
.end __glMgrDLResolveCalls

# Function: __glMgrSegToPool
# Declared: Line 1028 (Source lines: 1030-1084)
# Address: 0x0da8ec44 - 0x0da8ede8 (Size: 420 bytes, Frame: 208)
.ent __glMgrSegToPool
__glMgrSegToPool:
    # Line 1030
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    beqz	$a2,.L0da8edb0
    move	$s0,$a1
    lw	$a1,0($s0)
    li	$at,-1
    bne	$a1,$at,.L0da8ec70
    # Line 1040
    nop	# was lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    sd	$s1,8($sp)
    # Line 1038
    b	.L0da8ec84
    move	$s1,$zero
.L0da8ec70:
    sd	$ra,32($sp)
    # Line 1040
    bal __glMgrDLPoolToPtr
    sd	$s1,8($sp)
    move	$s1,$v0
    ld	$ra,32($sp)
.L0da8ec84:
    # Line 1043
    beqz	$s1,.L0da8ed40
    sd	$s2,24($sp)
    # Line 1047
    lhu	$v0,8($s0)
    # Line 1050
    lui	$a2,0x8
    # Line 1047
    beqz	$v0,.L0da8ed74
    # Line 1050
    ori	$a2,$a2,0x3904
    # Line 1047
    li	$v1,1
    beq	$v0,$v1,.L0da8ed58
    li	$a2,2
    beq	$v0,$a2,.L0da8ed8c
    # Line 1058
    lui	$at,0x8
.L0da8ecb0:
    # Line 1062
    lw	$a5,16($s0)
    beqz	$a5,.L0da8ed40
    sd	$s2,24($sp)
    # Line 1070
    addiu	$a1,$a5,4
    sd	$ra,32($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 1068
    la	$t8,sub_0dbe0000
    lhu	$s2,8($s0)
    # Line 1069
    lw	$a2,0($a5)
    # Line 1068
    addiu	$t8,$t8,-16384
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$t8
    lw	$s2,0($s2)
    sd	$a2,0($sp)
    # Line 1070
    sll	$a2,$a2,0x2
    sll	$a0,$s2,0x2
    jal	memcpy
    addu	$a0,$a0,$s1
    lw	$a0,20($s0)
    beqz	$a0,.L0da8ed40
    ld	$ra,32($sp)
    ld	$at,0($sp)
    # Line 1078
    move	$v0,$zero
    beqz	$a0,.L0da8ed40
    # Line 1077
    addu	$s2,$s2,$at
    # Line 1078
    lui	$a1,0xe
    sll	$a0,$s2,0x2
    ld	$s2,24($sp)
    ori	$a1,$a1,0x100
    addu	$a0,$a0,$s1
.L0da8ed28:
    # Line 1079
    sw	$a1,0($a0)
    # Line 1078
    lw	$a2,20($s0)
    addiu	$v0,$v0,1
    sltu	$a2,$v0,$a2
    bnez	$a2,.L0da8ed28
    addiu	$a0,$a0,4
.L0da8ed40:
    # Line 1084
    ld	$s0,16($sp)
    move	$v0,$s1
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8ed58:
    # Line 1054
    lhu	$a3,10($s0)
    lui	$v0,0x8
    andi	$a3,$a3,0x1
    beqz	$a3,.L0da8edd0
    ori	$v0,$v0,0xe08
.L0da8ed6c:
    # Line 1056
    b	.L0da8ecb0
    # Line 1054
    sw	$v0,0($s1)
.L0da8ed74:
    # Line 1050
    sw	$a2,0($s1)
    # Line 1051
    lhu	$v1,10($s0)
    andi	$v1,$v1,0x1
    sltu	$v1,$zero,$v1
    # Line 1052
    b	.L0da8ecb0
    # Line 1051
    sw	$v1,4($s1)
.L0da8ed8c:
    # Line 1058
    ori	$at,$at,0x3708
    sw	$at,0($s1)
    lhu	$a3,10($s0)
    # Line 1059
    lui	$v0,0x8
    # Line 1058
    andi	$a3,$a3,0x1
    beqz	$a3,.L0da8eddc
    # Line 1059
    ori	$v0,$v0,0xe08
.L0da8eda8:
    b	.L0da8ecb0
    sw	$v0,12($s1)
.L0da8edb0:
    # Line 1043
    # lw $t9, -31580($gp) # &__glMgrDLMalloc
    sd	$s1,8($sp)
    sd	$ra,32($sp)
    bal __glMgrDLMalloc
    move	$a1,$s0
    move	$s1,$v0
    b	.L0da8ec84
    ld	$ra,32($sp)
.L0da8edd0:
    # Line 1054
    lui	$v0,0x8
    b	.L0da8ed6c
    ori	$v0,$v0,0xc08
.L0da8eddc:
    # Line 1059
    lui	$v0,0x8
    b	.L0da8eda8
    ori	$v0,$v0,0xc08
.end __glMgrSegToPool

# Function: __glMgrSetupPool
# Declared: Line 1095 (Source lines: 1096-1224)
# Address: 0x0da8ede8 - 0x0da8f0bc (Size: 724 bytes, Frame: 208)
.ent __glMgrSetupPool
__glMgrSetupPool:
    # Line 1096
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    # Line 1106
    lw	$s1,4624($a0)
    sd	$s0,32($sp)
    lw	$s1,16($s1)
    # Line 1096
    move	$s0,$a0
    sd	$s2,48($sp)
    # Line 1108
    lw	$v0,0($s1)
    lw	$at,20($s1)
    li	$s2,4
    beqz	$v0,.L0da8ee68
    sllv	$s2,$s2,$at
    # Line 1167
    lw	$v1,16($s1)
.L0da8ee1c:
    multu	$v1,$s2
    mflo	$at
    nop
    sw	$at,0($sp)
.L0da8ee2c:
    beqzl	$v0,.L0da8efa4
    # Line 1223
    lw	$s2,24($s1)
    # Line 1167
    lbu	$a3,31660($s0)
    beqzl	$a3,.L0da8ef30
    lw	$at,31664($s0)
.L0da8ee40:
    # Line 1200
    beqzl	$v0,.L0da8efa4
    # Line 1223
    lw	$s2,24($s1)
    # Line 1200
    lbu	$a5,31660($s0)
    # Line 1213
    ld	$s1,40($sp)
    # Line 1200
    beqz	$a5,.L0da8ef7c
    # Line 1213
    li	$v0,1
    ld	$s2,48($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8ee68:
    # Line 1108
    lw	$at,24($s1)
    bnezl	$at,.L0da8ee1c
    # Line 1167
    lw	$v1,16($s1)
    # Line 1116
    li	$a1,2050
    sd	$ra,56($sp)
    la	$a0,sub_0dbe0000
    # lw $t9, -17936($gp) # &open
    # Line 1115
    lw	$v0,12($s1)
    # Line 1116
    addiu	$a0,$a0,-16288
    jal	open
    # Line 1115
    sw	$v0,16($s1)
    # Line 1116
    bltz	$v0,.L0da8f078
    sd	$v0,8($sp)
    # Line 1119
    lw	$a3,16($s1)
.L0da8eea0:
    sltiu	$a3,$a3,16
    bnez	$a3,.L0da8f018
    # Line 1154
    nop	# was lw $t9, -17900($gp) # &close
.L0da8eeac:
    # Line 1124
    # lw $t9, -17860($gp) # &getpagesize
    jal	getpagesize
    nop
    # Line 1127
    lw	$a2,16($s1)
    multu	$a2,$s2
    sd	$v0,16($sp)
    # Line 1129
    move	$a5,$zero
    ld	$a4,8($sp)
    li	$a3,1
    move	$a0,$zero
    # lw $t9, -17844($gp) # &mmap
    li	$a2,3
    # Line 1127
    mflo	$a1
    addu	$a1,$a1,$v0
    sd	$a1,24($sp)
    # Line 1128
    addu	$a1,$s2,$a1
    # Line 1129
    jal	mmap
    # Line 1128
    sw	$a1,8($s1)
    li	$a1,-1
    # Line 1129
    bne	$a1,$v0,.L0da8ef08
    sw	$v0,4($s1)
    # Line 1131
    move	$v0,$zero
    sw	$zero,4($s1)
.L0da8ef08:
    bnez	$v0,.L0da8efc4
    # Line 1136
    ld	$a1,16($sp)
    # Line 1152
    lw	$a3,16($s1)
    srl	$a3,$a3,0x1
    sltiu	$a5,$a3,16
    beqz	$a5,.L0da8eeac
    sw	$a3,16($s1)
    ld	$a5,24($sp)
    b	.L0da8f014
    sw	$a5,0($sp)
.L0da8ef30:
    # Line 1167
    bnez	$at,.L0da8ee40
    # Line 1184
    move	$a2,$s1
    move	$a0,$s0
    sd	$ra,56($sp)
    lui	$a1,0x6d67
    li	$a3,4
    # Line 1180
    sw	$a3,32($s1)
    # Line 1184
    # lw $t9, -31636($gp) # &__glMgrDLIoctl
    # Line 1181
    sw	$v0,40($s1)
    # Line 1182
    lw	$v0,0($sp)
    # Line 1184
    ori	$a1,$a1,0xb
    bal __glMgrDLIoctl
    # Line 1182
    sw	$v0,44($s1)
    # Line 1184
    bltz	$v0,.L0da8f06c
    ld	$ra,56($sp)
    # Line 1186
    li	$a5,1
    sb	$a5,31660($s0)
.L0da8ef74:
    b	.L0da8ee40
    # Line 1200
    lw	$v0,0($s1)
.L0da8ef7c:
    # Line 1218
    ld	$s2,48($sp)
    # Line 1217
    lw	$s1,31664($s0)
    # Line 1218
    move	$v0,$zero
    # Line 1217
    addiu	$s1,$s1,-1
    sw	$s1,31664($s0)
    # Line 1218
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
    # Line 1223
    lw	$s2,24($s1)
.L0da8efa4:
    # Line 1224
    move	$v0,$zero
    ld	$s0,32($sp)
    # Line 1223
    addiu	$s2,$s2,-1
    sw	$s2,24($s1)
    # Line 1224
    ld	$s1,40($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8efc4:
    # Line 1136
    # lw $t9, -17852($gp) # &munmap
    ld	$t8,24($sp)
    move	$a0,$v0
    jal	munmap
    sw	$t8,0($sp)
    bltz	$v0,.L0da8f09c
    # Line 1138
    nop	# was lw $t9, -17888($gp) # &perror
    # Line 1142
    lw	$v0,4($s1)
.L0da8efe4:
    # Line 1143
    ld	$v1,16($sp)
    lw	$a0,8($s1)
    # Line 1142
    addu	$v0,$v0,$v1
    # Line 1143
    subu	$a0,$a0,$v1
    sw	$a0,8($s1)
    # Line 1145
    addiu	$a0,$s2,-1
    and	$a0,$a0,$v0
    beqz	$a0,.L0da8f00c
    # Line 1142
    sw	$v0,4($s1)
    # Line 1147
    subu	$a0,$s2,$a0
.L0da8f00c:
    # Line 1148
    addu	$a3,$v0,$a0
    sw	$a3,0($s1)
.L0da8f014:
    # Line 1154
    # lw $t9, -17900($gp) # &close
.L0da8f018:
    jal	close
    ld	$a0,8($sp)
    lw	$v0,0($s1)
    beqz	$v0,.L0da8f060
    ld	$ra,56($sp)
    # Line 1158
    # lw $t9, -31588($gp) # &__glMgrDLAllocInit
    bal __glMgrDLAllocInit
    move	$a0,$s1
    move	$a4,$v0
    move	$s1,$v0
    # Line 1160
    # lw $t9, -31572($gp) # &__glMgrDLFlushInit
    # Line 1159
    lw	$a5,4624($s0)
    # Line 1160
    move	$a0,$v0
    bal __glMgrDLFlushInit
    # Line 1159
    sw	$v0,16($a5)
    # Line 1160
    lw	$v0,0($s1)
    b	.L0da8ee2c
    ld	$ra,56($sp)
.L0da8f060:
    # Line 1163
    li	$at,50
    b	.L0da8ee2c
    sw	$at,24($s1)
.L0da8f06c:
    # Line 1200
    li	$v1,50
    b	.L0da8ef74
    sw	$v1,31664($s0)
.L0da8f078:
    # Line 1118
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-16272
    # Line 1119
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0da8eea0
    lw	$a3,16($s1)
.L0da8f09c:
    # Line 1138
    la	$a0,sub_0dbe0000
    jalr	$t9
    addiu	$a0,$a0,-16232
    # Line 1139
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0da8efe4
    # Line 1142
    lw	$v0,4($s1)
.end __glMgrSetupPool

# Function: __glMgrDLToPool
# Declared: Line 1277 (Source lines: 1278-1436)
# Address: 0x0da8f0bc - 0x0da8f390 (Size: 724 bytes, Frame: 128)
.globl __glMgrDLToPool
.ent __glMgrDLToPool
__glMgrDLToPool:
    # Line 1278
    addiu	$sp,$sp,-128
    sd	$s8,40($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    sd	$ra,24($sp)
    lui	$ra,0x17
    addiu	$ra,$ra,-2596
    addu	$gp,$t9,$ra
    # Line 1298
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$a1,8($sp)
    sd	$s6,32($sp)
    addiu	$t9,$t9,-4632
    bal __glMgrDLResolveCalls
    # Line 1291
    lw	$s6,20($a1)
    # Line 1298
    beqzl	$v0,.L0da8f2e4
    ld	$gp,16($sp)
    # Line 1300
    lw	$at,56($s6)
    sd	$s4,88($sp)
    lw	$s4,4624($s8)
    beqz	$at,.L0da8f26c
    lw	$s4,16($s4)
.L0da8f110:
    sd	$s0,48($sp)
    sd	$s1,56($sp)
    sd	$s7,64($sp)
    sd	$s2,72($sp)
    # Line 1307
    lw	$s2,0($sp)
    sd	$s3,80($sp)
    la	$s3,sub_0da90000
    sd	$s5,96($sp)
    lw	$s5,52($s6)
    addiu	$s3,$s3,-5052
    # Line 1319
    lw	$s0,56($s6)
.L0da8f13c:
    # Line 1320
    move	$s1,$zero
    li	$s7,-44
    # Line 1316
    sw	$s7,16($s6)
    # Line 1320
    beqz	$s5,.L0da8f19c
    # Line 1314
    li	$s7,1
.L0da8f150:
    # Line 1322
    lw	$s2,4($s0)
    # Line 1324
    move	$a0,$s4
    move	$a1,$s0
    move	$a2,$zero
    bal __glMgrDLResolveCalls
    move	$t9,$s3
    # Line 1331
    sll	$v1,$s2,0x2
    # Line 1324
    beqz	$v0,.L0da8f198
    # Line 1320
    addiu	$s1,$s1,1
    # Line 1331
    subu	$v1,$v1,$s2
    lw	$at,16($s6)
    # Line 1334
    addiu	$s0,$s0,28
    # Line 1331
    addu	$at,$at,$v1
    addiu	$at,$at,-10
    # Line 1320
    bne	$s1,$s5,.L0da8f150
    # Line 1331
    sw	$at,16($s6)
    b	.L0da8f19c
    nop
.L0da8f198:
    # Line 1327
    move	$s7,$zero
.L0da8f19c:
    # Line 1338
    beqz	$s7,.L0da8f1e0
    move	$a2,$s7
.L0da8f1a4:
    ld	$s7,64($sp)
    # Line 1365
    li	$s3,1
    beq	$a2,$s3,.L0da8f290
    ld	$s2,72($sp)
    ld	$gp,16($sp)
.L0da8f1b8:
    # Line 1436
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    ld	$s5,96($sp)
    ld	$ra,24($sp)
    ld	$s6,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da8f1e0:
    # lw $t9, -32736($gp) # &sub_0da90000
    # Line 1344
    move	$a0,$s8
    addiu	$t9,$t9,-6972
    bal __glMgrDlistFreeArray
    ld	$a1,8($sp)
    addu	$s1,$v0,$s2
    # Line 1345
    beqz	$s1,.L0da8f254
    move	$s0,$zero
    # Line 1353
    # lw $t9, -29576($gp) # &__glDlistHeapQueryMin
.L0da8f204:
    lw	$a0,4624($s8)
    jal	__glDlistHeapQueryMin
    addiu	$a0,$a0,4
    # Line 1354
    beqz	$v0,.L0da8f254
    # Line 1353
    move	$a0,$v0
    # Line 1357
    lw	$a1,8($a0)
    # Line 1358
    ld	$a2,8($sp)
    lwc1	$f1,48($a1)
    lwc1	$f0,48($a2)
    c.le.s	$f0,$f1
    nop
    bc1t	.L0da8f254
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
    addiu	$t9,$t9,-6972
    # Line 1361
    bal __glMgrDlistFreeArray
    move	$a0,$s8
    addu	$s0,$v0,$s0
    sltu	$at,$s0,$s1
    bnez	$at,.L0da8f204
    # Line 1353
    nop	# was lw $t9, -29576($gp) # &__glDlistHeapQueryMin
.L0da8f254:
    # Line 1364
    beqz	$s0,.L0da8f388
    nop
.L0da8f25c:
    # Line 1365
    beqzl	$s7,.L0da8f13c
    # Line 1319
    lw	$s0,56($s6)
    b	.L0da8f1a4
    move	$a2,$s7
.L0da8f26c:
    # Line 1306
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s8
    addiu	$t9,$t9,-6120
    bal __glMgrTexBreakdownDMA
    ld	$a1,8($sp)
    sd	$s2,72($sp)
    sd	$s3,80($sp)
    b	.L0da8f110
    sd	$s5,96($sp)
.L0da8f290:
    ld	$a1,8($sp)
    # Line 1378
    lw	$a2,32($a1)
    ld	$s7,64($sp)
    ld	$s2,72($sp)
    ori	$a2,$a2,0x2
    sw	$a2,32($a1)
    # Line 1379
    # lw $t9, -29572($gp) # &__glDlistHeapInsert
    lw	$a0,4624($s8)
    addiu	$a1,$a1,48
    jal	__glDlistHeapInsert
    addiu	$a0,$a0,4
    # Line 1382
    # lw $t9, -31564($gp) # &__glMgrDLFlushDefer
    move	$a0,$s4
    bal __glMgrDLFlushDefer
    li	$a1,1
    # Line 1384
    lw	$s0,56($s6)
    # Line 1385
    beqz	$s5,.L0da8f360
    move	$s1,$zero
    li	$s6,-1
    b	.L0da8f324
    li	$s2,2
.L0da8f2e4:
    # Line 1299
    ld	$ra,24($sp)
    ld	$s6,32($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da8f2f8:
    # Line 1394
    sw	$s6,16($v0)
    # Line 1398
    lw	$at,28($s0)
.L0da8f300:
    sw	$at,4($v0)
    # Line 1399
    lw	$a3,32($s0)
    sw	$a3,8($v0)
    # Line 1403
    # lw $t9, -31560($gp) # &__glMgrDLFlushSeg
.L0da8f310:
    move	$a0,$s4
    bal __glMgrDLFlushSeg
    move	$a1,$s0
    # Line 1385
    beq	$s1,$s5,.L0da8f35c
    # Line 1405
    addiu	$s0,$s0,28
.L0da8f324:
    # Line 1387
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    move	$a0,$s4
    bal __glMgrDLPoolToPtr
    lw	$a1,0($s0)
    # Line 1389
    lhu	$a0,8($s0)
    # Line 1385
    addiu	$s1,$s1,1
    # Line 1389
    beqz	$a0,.L0da8f310
    # Line 1403
    nop	# was lw $t9, -31560($gp) # &__glMgrDLFlushSeg
    # Line 1389
    beql	$a0,$s2,.L0da8f2f8
    # Line 1395
    sw	$zero,20($v0)
    # Line 1389
    beql	$a0,$s3,.L0da8f300
    # Line 1398
    lw	$at,28($s0)
    b	.L0da8f310
    # Line 1403
    nop	# was lw $t9, -31560($gp) # &__glMgrDLFlushSeg
.L0da8f35c:
    ld	$s2,72($sp)
.L0da8f360:
    # Line 1408
    move	$a0,$s4
    move	$a1,$zero
    ld	$s0,48($sp)
    # lw $t9, -31564($gp) # &__glMgrDLFlushDefer
    ld	$s1,56($sp)
    ld	$s3,80($sp)
    bal __glMgrDLFlushDefer
    ld	$s5,96($sp)
    b	.L0da8f1b8
    ld	$gp,16($sp)
.L0da8f388:
    b	.L0da8f25c
    # Line 1365
    li	$s7,-1
.end __glMgrDLToPool

# Function: __glMgrTexToPool
# Declared: Line 1443 (Source lines: 1444-1546)
# Address: 0x0da8f390 - 0x0da8f5b4 (Size: 548 bytes, Frame: 208)
.globl __glMgrTexToPool
.ent __glMgrTexToPool
__glMgrTexToPool:
    # Line 1444
    addiu	$sp,$sp,-80
    sd	$s2,48($sp)
    move	$s2,$a0
    sd	$s0,40($sp)
    move	$s0,$a1
    sd	$gp,32($sp)
    lw	$a4,44($a1)
    lui	$at,0x17
    addiu	$at,$at,-3320
    beqz	$a4,.L0da8f3ec
    addu	$gp,$t9,$at
    lw	$v1,36($s0)
    sltu	$v1,$a4,$v1
    bnez	$v1,.L0da8f3f0
    # Line 1461
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
    # Line 1453
    lw	$a2,40($s0)
    bne	$a2,$a4,.L0da8f3f0
    # Line 1461
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
    ld	$gp,32($sp)
    # Line 1456
    ld	$s0,40($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8f3ec:
    # Line 1461
    # lw $t9, -32736($gp) # &sub_0da90000
.L0da8f3f0:
    sd	$ra,24($sp)
    addiu	$t9,$t9,-4632
    bal __glMgrDLResolveCalls
    move	$a0,$s2
    beqz	$v0,.L0da8f54c
    # Line 1462
    ld	$ra,24($sp)
    # Line 1463
    lw	$at,4624($s2)
    lw	$a4,44($s0)
    lw	$at,16($at)
    beqz	$a4,.L0da8f560
    sd	$at,8($sp)
    # Line 1470
    lw	$a5,36($s0)
    sd	$s1,16($sp)
    lw	$s1,48($s0)
.L0da8f428:
    # Line 1491
    sltu	$v1,$a4,$a5
    bnez	$v1,.L0da8f4ac
    # Line 1498
    move	$a0,$s2
.L0da8f434:
    # Line 1522
    beqz	$a4,.L0da8f47c
    move	$s2,$zero
    ld	$a0,8($sp)
.L0da8f440:
    # lw $t9, -32736($gp) # &sub_0da90000
    # Line 1524
    move	$a1,$s1
    lw	$a2,40($s0)
    addiu	$t9,$t9,-5052
    bal __glMgrDLResolveCalls
    sltu	$a2,$s2,$a2
    # Line 1526
    beqz	$v0,.L0da8f490
    # Line 1528
    addiu	$s1,$s1,28
    # Line 1522
    lw	$at,44($s0)
    addiu	$s2,$s2,1
    sltu	$at,$s2,$at
    bnez	$at,.L0da8f440
    ld	$a0,8($sp)
    b	.L0da8f480
    nop
.L0da8f47c:
    lw	$v0,0($sp)
.L0da8f480:
    # Line 1531
    beqz	$v0,.L0da8f494
    ld	$gp,32($sp)
    # Line 1533
    lw	$v1,44($s0)
    sw	$v1,40($s0)
.L0da8f490:
    ld	$gp,32($sp)
.L0da8f494:
    # Line 1546
    ld	$s0,40($sp)
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8f4ac:
    # Line 1498
    move	$a1,$s1
    lw	$t9,8($s2)
    sll	$a2,$a5,0x3
    subu	$a2,$a2,$a5
    jal	sub_0da90000
    sll	$a2,$a2,0x2
    move	$s1,$v0
    # Line 1501
    lw	$a5,36($s0)
    li	$a1,1
    li	$a6,-1
    beqz	$a5,.L0da8f53c
    move	$s2,$zero
    li	$a4,64
    b	.L0da8f524
    move	$a0,$v0
.L0da8f4e8:
    # Line 1506
    lw	$a3,44($s0)
    sltu	$a3,$s2,$a3
    bnezl	$a3,.L0da8f514
    # Line 1501
    addiu	$s2,$s2,1
    # Line 1514
    sw	$zero,20($a0)
    # Line 1513
    sw	$zero,16($a0)
    # Line 1512
    sw	$zero,12($a0)
    # Line 1511
    sh	$zero,10($a0)
    # Line 1510
    sw	$a4,4($a0)
    # Line 1509
    sw	$a6,0($a0)
    # Line 1501
    addiu	$s2,$s2,1
.L0da8f514:
    lw	$a5,36($s0)
    sltu	$at,$s2,$a5
    beqz	$at,.L0da8f53c
    addiu	$a0,$a0,28
.L0da8f524:
    addiu	$v1,$a5,-1
    sltu	$v1,$s2,$v1
    beqzl	$v1,.L0da8f4e8
    # Line 1506
    sh	$zero,8($a0)
    # Line 1504
    b	.L0da8f4e8
    sh	$a1,8($a0)
.L0da8f53c:
    # Line 1518
    move	$a4,$a5
    # Line 1519
    sw	$v0,48($s0)
    b	.L0da8f434
    # Line 1518
    sw	$a5,44($s0)
.L0da8f54c:
    ld	$gp,32($sp)
    # Line 1462
    ld	$s0,40($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8f560:
    # Line 1480
    lw	$t9,0($s2)
    sd	$s1,16($sp)
    move	$a0,$s2
    jalr	$t9
    li	$a1,28
    move	$s1,$v0
    # Line 1489
    li	$a5,1
    # Line 1490
    li	$a4,1
    # Line 1487
    sw	$zero,20($v0)
    # Line 1486
    sw	$zero,16($v0)
    # Line 1485
    sw	$zero,12($v0)
    # Line 1484
    sh	$zero,10($v0)
    # Line 1483
    sh	$zero,8($v0)
    # Line 1481
    li	$a3,-1
    # Line 1482
    li	$a2,64
    sw	$a2,4($v0)
    # Line 1481
    sw	$a3,0($v0)
    # Line 1491
    sw	$v0,48($s0)
    # Line 1490
    sw	$a4,44($s0)
    b	.L0da8f428
    # Line 1489
    sw	$a5,36($s0)
.end __glMgrTexToPool

# Function: __glMgrDLExecuteDMA
# Declared: Line 1725 (Source lines: 1726-1933)
# Address: 0x0da8f5b4 - 0x0da8f7a4 (Size: 496 bytes, Frame: 192)
.globl __glMgrDLExecuteDMA
.ent __glMgrDLExecuteDMA
__glMgrDLExecuteDMA:
    # Line 1726
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    # Line 1740
    lw	$s1,20($a1)
    sd	$s0,32($sp)
    # Line 1726
    move	$s0,$a0
    sd	$gp,8($sp)
    sd	$s2,16($sp)
    # Line 1740
    lui	$s2,0x1
    addu	$s2,$a0,$s2
    lw	$at,-28068($s2)
    # Line 1726
    lui	$v0,0x17
    addiu	$v0,$v0,-3868
    # Line 1740
    beqz	$at,.L0da8f5f8
    # Line 1726
    addu	$gp,$t9,$v0
    # Line 1756
    lbu	$at,-28064($s2)
    beqz	$at,.L0da8f6e0
    # Line 1766
    nop	# was lw $t9, -31736($gp) # &__glMgrExecuteDlist
.L0da8f5f8:
    # Line 1756
    lw	$v1,0($s1)
    lw	$v0,4680($s0)
    addu	$v0,$v0,$v1
    sltiu	$v0,$v0,64
    beqz	$v0,.L0da8f6e0
    # Line 1766
    nop	# was lw $t9, -31736($gp) # &__glMgrExecuteDlist
    # Line 1756
    lbu	$a2,3104($s0)
    lw	$at,12($s1)
    sltu	$a2,$zero,$a2
    andi	$at,$at,0x10
    sltu	$at,$zero,$at
    beq	$a2,$at,.L0da8f6e0
    # Line 1766
    nop	# was lw $t9, -31736($gp) # &__glMgrExecuteDlist
    # Line 1767
    lbu	$at,31660($s0)
    beqz	$at,.L0da8f73c
    sd	$a1,0($sp)
.L0da8f638:
    # Line 1775
    lw	$v0,__glBeginMode
    andi	$v0,$v0,0x1
    bnez	$v0,.L0da8f67c
    sd	$ra,40($sp)
    lw	$a0,-30164($s2)
    beqz	$a0,.L0da8f67c
    sd	$ra,40($sp)
    lw	$a1,196($a0)
    beqz	$a1,.L0da8f784
.L0da8f65c:
    # Line 1822
    la	$v1,MgrasPrevVidTexture
    lw	$v1,0($v1)
    bnez	$v1,.L0da8f708
    # Line 1824
    nop	# was lw $t9, -30748($gp) # &mgrTM_VidTexWait
.L0da8f66c:
    lw	$a2,-28164($s2)
    lw	$a2,484($a2)
    bne	$a2,$a1,.L0da8f728
    sd	$ra,40($sp)
.L0da8f67c:
    # Line 1833
    lw	$s2,4624($s0)
.L0da8f680:
    # Line 1834
    # lw $t9, -31556($gp) # &__glMgrDLFlushPool
    # Line 1833
    lw	$s2,16($s2)
    # Line 1834
    bal __glMgrDLFlushPool
    move	$a0,$s2
    ld	$gp,8($sp)
    # Line 1933
    ld	$s0,32($sp)
    # Line 1913
    lw	$v0,56($s1)
    # Line 1933
    ld	$s1,24($sp)
    # Line 1917
    li	$a0,1
    # Line 1912
    lui	$v1,0x8
    lui	$at,0x7
    ori	$at,$at,0x4080
    # Line 1914
    lw	$ra,4($v0)
    # Line 1913
    lw	$v0,0($v0)
    # Line 1912
    ori	$v1,$v1,0xc08
    sw	$v1,0($at)
    # Line 1913
    sw	$v0,0($at)
    # Line 1914
    sw	$ra,0($at)
    # Line 1933
    ld	$ra,40($sp)
    # Line 1917
    sw	$a0,28($s2)
    # Line 1933
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
    # Line 1766
    # lw $t9, -31736($gp) # &__glMgrExecuteDlist
.L0da8f6e0:
    sd	$ra,40($sp)
    bal __glMgrExecuteDlist
    move	$a0,$s0
    ld	$gp,8($sp)
    # Line 1767
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8f708:
    # Line 1824
    move	$a0,$s0
    sd	$ra,40($sp)
    jal	__glMgrExecuteDlist
    li	$a2,1
    lw	$a1,-30164($s2)
    ld	$ra,40($sp)
    b	.L0da8f66c
    lw	$a1,196($a1)
.L0da8f728:
    # Line 1826
    # lw $t9, -30744($gp) # &mgrTM_DrawSetup
    jal	mgrTM_DrawSetup
    move	$a0,$s0
    b	.L0da8f680
    # Line 1833
    lw	$s2,4624($s0)
.L0da8f73c:
    # Line 1772
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$ra,40($sp)
    addiu	$t9,$t9,-4632
    bal __glMgrDLResolveCalls
    move	$a0,$s0
    bnez	$v0,.L0da8f638
    ld	$ra,40($sp)
    # Line 1774
    # lw $t9, -31736($gp) # &__glMgrExecuteDlist
    move	$a0,$s0
    bal __glMgrExecuteDlist
    ld	$a1,0($sp)
    ld	$gp,8($sp)
    # Line 1775
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8f784:
    # Line 1822
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,40($sp)
    jal	mgrTM_RefreshDim
    nop
    lw	$a1,-30164($s2)
    ld	$ra,40($sp)
    b	.L0da8f65c
    lw	$a1,196($a1)
.end __glMgrDLExecuteDMA

.rdata
_lit8_3f847ae147ae147b:
    .word 0x3f847ae1, 0x47ae147b
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000

