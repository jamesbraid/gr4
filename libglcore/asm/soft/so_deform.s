# Source: ../soft/so_deform.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_deform.c
# Total Functions: 3

.text

# Function: __glFillDeformationMap3f
# Declared: Line 31 (Source lines: 36-50)
# Address: 0x0db3ad50 - 0x0db3ae64 (Size: 276 bytes, Frame: 224)
.globl __glFillDeformationMap3f
.ent __glFillDeformationMap3f
__glFillDeformationMap3f:
    # Line 36
    addiu	$sp,$sp,-96
    # Line 39
    blez	$a0,.L0db3ae5c
    move	$t1,$zero
    sll	$t9,$a3,0x2
    sll	$t2,$a5,0x2
    sll	$at,$a1,0x2
    b	.L0db3ad80
    sd	$at,0($sp)
.L0db3ad70:
    ld	$v0,0($sp)
    addiu	$t1,$t1,1
    beq	$a0,$t1,.L0db3ae5c
    addu	$a6,$v0,$a6
.L0db3ad80:
    # Line 41
    move	$t3,$a6
    blez	$a2,.L0db3ad70
    move	$t8,$zero
    b	.L0db3ae14
    # Line 43
    move	$a3,$t3
.L0db3ad94:
    move	$at,$a7
.L0db3ad98:
    move	$t0,$a3
    sd	$a3,8($sp)
    move	$v0,$a1
    sd	$a1,24($sp)
    sra	$v1,$a5,0x1
    sd	$a7,16($sp)
    beqz	$v1,.L0db3ae08
    ld	$a1,16($sp)
    ld	$a5,24($sp)
    ld	$a3,8($sp)
.L0db3adc0:
    # Line 44
    lwc1	$f1,0($a3)
    swc1	$f1,0($a1)
    # Line 45
    lwc1	$f0,4($a3)
    swc1	$f0,4($a1)
    # Line 46
    lwc1	$f3,8($a3)
    swc1	$f3,8($a1)
    # Line 43
    addu	$a3,$t2,$a3
    # Line 44
    lwc1	$f2,0($a3)
    swc1	$f2,12($a1)
    # Line 45
    lwc1	$f1,4($a3)
    # Line 43
    addiu	$a1,$a1,24
    # Line 45
    swc1	$f1,-8($a1)
    # Line 43
    addiu	$a5,$a5,2
    # Line 46
    lwc1	$f0,8($a3)
    # Line 43
    addu	$a3,$t2,$a3
    bne	$a4,$a5,.L0db3adc0
    # Line 46
    swc1	$f0,-4($a1)
    move	$a7,$a1
.L0db3ae08:
    # Line 41
    addiu	$t8,$t8,1
    beq	$a2,$t8,.L0db3ad70
    # Line 43
    move	$a3,$t3
.L0db3ae14:
    # Line 41
    addu	$t3,$t9,$t3
    # Line 43
    move	$a5,$a4
    blez	$a4,.L0db3ae08
    move	$a1,$zero
    andi	$t0,$a4,0x1
    beqz	$t0,.L0db3ad98
    move	$at,$a7
    # Line 44
    lwc1	$f0,0($a3)
    swc1	$f0,0($a7)
    # Line 45
    lwc1	$f3,4($a3)
    swc1	$f3,4($a7)
    # Line 43
    addiu	$a7,$a7,12
    # Line 46
    lwc1	$f2,8($a3)
    # Line 43
    addiu	$a1,$a1,1
    addu	$a3,$t2,$a3
    # Line 46
    swc1	$f2,-4($a7)
    b	.L0db3ad94
    nop
.L0db3ae5c:
    # Line 50
    jr	$ra
    addiu	$sp,$sp,96
.end __glFillDeformationMap3f

# Function: __glFillDeformationMap3d
# Declared: Line 53 (Source lines: 58-72)
# Address: 0x0db3ae64 - 0x0db3affc (Size: 408 bytes, Frame: 240)
.globl __glFillDeformationMap3d
.ent __glFillDeformationMap3d
__glFillDeformationMap3d:
    # Line 58
    addiu	$sp,$sp,-112
    # Line 61
    blez	$a0,.L0db3aff4
    move	$t1,$zero
    sll	$t9,$a3,0x3
    sll	$t2,$a5,0x3
    sll	$at,$a1,0x3
    b	.L0db3ae94
    sd	$at,8($sp)
.L0db3ae84:
    ld	$v0,8($sp)
    addiu	$t1,$t1,1
    beq	$a0,$t1,.L0db3aff4
    addu	$a6,$v0,$a6
.L0db3ae94:
    # Line 63
    move	$t3,$a6
    blez	$a2,.L0db3ae84
    move	$t8,$zero
    b	.L0db3afd0
    # Line 65
    move	$a1,$t3
.L0db3aea8:
    # Line 66
    ldc1	$f2,0($a1)
.L0db3aeac:
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a7)
    # Line 67
    ldc1	$f1,8($a1)
    cvt.s.d	$f1,$f1
    # Line 65
    addiu	$a7,$a7,12
    # Line 67
    swc1	$f1,-8($a7)
    ld	$v1,0($sp)
    # Line 68
    ldc1	$f0,16($a1)
    # Line 65
    addiu	$a3,$a3,1
    addi	$v1,$v1,-1
    # Line 68
    cvt.s.d	$f0,$f0
    sd	$v1,0($sp)
    # Line 65
    addu	$a1,$t2,$a1
    bnez	$v1,.L0db3aea8
    # Line 68
    swc1	$f0,-4($a7)
.L0db3aee8:
    move	$v0,$a7
    sd	$a7,24($sp)
    move	$at,$a1
    move	$v1,$a3
    sd	$a3,32($sp)
    sra	$t0,$a5,0x2
    beqz	$t0,.L0db3afc4
    sd	$a1,16($sp)
    ld	$a3,32($sp)
    ld	$a1,24($sp)
    ld	$a5,16($sp)
.L0db3af14:
    # Line 66
    ldc1	$f2,0($a5)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a1)
    # Line 67
    ldc1	$f1,8($a5)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($a1)
    # Line 68
    ldc1	$f0,16($a5)
    cvt.s.d	$f0,$f0
    swc1	$f0,8($a1)
    # Line 65
    addu	$a5,$t2,$a5
    # Line 66
    ldc1	$f3,0($a5)
    cvt.s.d	$f3,$f3
    swc1	$f3,12($a1)
    # Line 67
    ldc1	$f2,8($a5)
    cvt.s.d	$f2,$f2
    swc1	$f2,16($a1)
    # Line 68
    ldc1	$f1,16($a5)
    cvt.s.d	$f1,$f1
    swc1	$f1,20($a1)
    # Line 65
    addu	$a5,$t2,$a5
    # Line 66
    ldc1	$f0,0($a5)
    cvt.s.d	$f0,$f0
    swc1	$f0,24($a1)
    # Line 67
    ldc1	$f3,8($a5)
    cvt.s.d	$f3,$f3
    swc1	$f3,28($a1)
    # Line 68
    ldc1	$f2,16($a5)
    cvt.s.d	$f2,$f2
    swc1	$f2,32($a1)
    # Line 65
    addu	$a5,$t2,$a5
    # Line 66
    ldc1	$f1,0($a5)
    cvt.s.d	$f1,$f1
    swc1	$f1,36($a1)
    # Line 67
    ldc1	$f0,8($a5)
    cvt.s.d	$f0,$f0
    swc1	$f0,40($a1)
    # Line 68
    ldc1	$f3,16($a5)
    # Line 65
    addiu	$a1,$a1,48
    # Line 68
    cvt.s.d	$f3,$f3
    # Line 65
    addiu	$a3,$a3,4
    addu	$a5,$t2,$a5
    bne	$a4,$a3,.L0db3af14
    # Line 68
    swc1	$f3,-4($a1)
    move	$a7,$a1
.L0db3afc4:
    # Line 63
    addiu	$t8,$t8,1
    beq	$a2,$t8,.L0db3ae84
    # Line 65
    move	$a1,$t3
.L0db3afd0:
    # Line 63
    addu	$t3,$t9,$t3
    andi	$t0,$a4,0x3
    # Line 65
    blez	$a4,.L0db3afc4
    move	$a3,$zero
    move	$a5,$a4
    beqz	$t0,.L0db3aee8
    sd	$t0,0($sp)
    b	.L0db3aeac
    # Line 66
    ldc1	$f2,0($a1)
.L0db3aff4:
    # Line 72
    jr	$ra
    addiu	$sp,$sp,112
.end __glFillDeformationMap3d

# Function: __glCheckMap3Params
# Declared: Line 75 (Source lines: 81-100)
# Address: 0x0db3affc - 0x0db3b0b4 (Size: 184 bytes, Frame: 192)
.globl __glCheckMap3Params
.ent __glCheckMap3Params
__glCheckMap3Params:
    # Line 82
    lw	$a2,__glCurrentContext
    # Line 81
    addiu	$sp,$sp,-64
    # Line 82
    li	$at,0x8194
    beq	$a0,$at,.L0db3b024
    # Line 92
    lwc1	$f0,72($sp)
    # Line 82
    li	$v0,0x8195
    beq	$a0,$v0,.L0db3b024
    # Line 89
    li	$v0,1280
    jr	$ra
    addiu	$sp,$sp,64
.L0db3b024:
    # Line 92
    blez	$a4,.L0db3b0a0
    # Line 98
    li	$v0,1281
    # Line 92
    lw	$a0,3508($a2)
    slt	$v1,$a0,$a4
    bnez	$v1,.L0db3b09c
    lw	$a2,68($sp)
    slti	$a1,$a3,3
    bnez	$a1,.L0db3b09c
    c.eq.s	$f13,$f14
    nop
    bc1t	.L0db3b09c
    lw	$a1,92($sp)
    blez	$a2,.L0db3b09c
    c.eq.s	$f17,$f18
    slt	$at,$a0,$a2
    bnez	$at,.L0db3b09c
    slti	$v0,$a7,3
    bnez	$v0,.L0db3b09c
    nop
    bc1t	.L0db3b09c
    lw	$a2,100($sp)
    blez	$a2,.L0db3b09c
    slt	$v1,$a0,$a2
    bnez	$v1,.L0db3b09c
    slti	$a1,$a1,3
    bnez	$a1,.L0db3b09c
    lwc1	$f1,80($sp)
    c.eq.s	$f0,$f1
    nop
    bc1f	.L0db3b0a8
.L0db3b09c:
    # Line 98
    li	$v0,1281
.L0db3b0a0:
    jr	$ra
    addiu	$sp,$sp,64
.L0db3b0a8:
    # Line 100
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,64
.end __glCheckMap3Params

