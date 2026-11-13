# Source: ../MGRAS/mgras_misc.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_misc.c
# Total Functions: 4

.text

# Function: __glMgrim_EdgeFlag
# Declared: Line 48 (Source lines: 49-58)
# Address: 0x0da9a2ec - 0x0da9a318 (Size: 44 bytes, Frame: 0)
.globl __glMgrim_EdgeFlag
.ent __glMgrim_EdgeFlag
__glMgrim_EdgeFlag:
    # Line 49
    lui	$a2,0x7
    li	$at,1
    beq	$a0,$at,.L0da9a30c
    ori	$a2,$a2,0x4080
    # Line 56
    li	$at,4096
    sw	$at,0($a2)
    # Line 58
    jr	$ra
    nop
.L0da9a30c:
    # Line 53
    li	$v0,3840
    # Line 58
    jr	$ra
    # Line 53
    sw	$v0,0($a2)
.end __glMgrim_EdgeFlag

# Function: __glMgrim_EdgeFlagv
# Declared: Line 69 (Source lines: 70-79)
# Address: 0x0da9a318 - 0x0da9a348 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_EdgeFlagv
.ent __glMgrim_EdgeFlagv
__glMgrim_EdgeFlagv:
    # Line 70
    lbu	$at,0($a0)
    lui	$a2,0x7
    li	$v0,1
    beq	$at,$v0,.L0da9a33c
    ori	$a2,$a2,0x4080
    # Line 77
    li	$at,4096
    sw	$at,0($a2)
    # Line 79
    jr	$ra
    nop
.L0da9a33c:
    # Line 74
    li	$v0,3840
    # Line 79
    jr	$ra
    # Line 74
    sw	$v0,0($a2)
.end __glMgrim_EdgeFlagv

# Function: __glMgrasEatData
# Declared: Line 85 (Source lines: 85-103)
# Address: 0x0da9a348 - 0x0da9a3f0 (Size: 168 bytes, Frame: 0)
.globl __glMgrasEatData
.ent __glMgrasEatData
__glMgrasEatData:
    # Line 91
    move	$a4,$a0
    # Line 95
    lui	$a3,0x7
    # Line 85
    bltz	$a0,.L0da9a3e8
    # Line 95
    ori	$a3,$a3,0x4080
.L0da9a358:
    # Line 99
    move	$a0,$zero
    move	$a6,$a4
    # Line 98
    lui	$a2,0xd
    ori	$a2,$a2,0xead1
    # Line 95
    sll	$at,$a4,0x2
    addiu	$at,$at,4
    ori	$at,$at,0xe100
    sw	$at,0($a3)
    # Line 99
    blez	$a4,.L0da9a3e0
    # Line 96
    sw	$a4,0($a3)
    andi	$a5,$a4,0x3
    beqz	$a5,.L0da9a3a4
    sra	$at,$a6,0x2
.L0da9a38c:
    # Line 99
    addiu	$a0,$a0,1
    # Line 100
    sw	$a2,0($a3)
    addi	$a5,$a5,-1
    bnez	$a5,.L0da9a38c
    # Line 101
    addiu	$a2,$a2,1
    sra	$at,$a6,0x2
.L0da9a3a4:
    move	$a7,$a0
    beqz	$at,.L0da9a3e0
    move	$a5,$a2
    move	$a0,$a7
    move	$a2,$a5
.L0da9a3b8:
    # Line 99
    addiu	$a0,$a0,4
    # Line 101
    addiu	$a1,$a2,1
    addiu	$v1,$a1,1
    addiu	$v0,$v1,1
    # Line 100
    sw	$a2,0($a3)
    # Line 101
    addiu	$a2,$v0,1
    # Line 100
    sw	$a1,0($a3)
    sw	$v1,0($a3)
    # Line 99
    bne	$a4,$a0,.L0da9a3b8
    # Line 100
    sw	$v0,0($a3)
.L0da9a3e0:
    # Line 103
    jr	$ra
    nop
.L0da9a3e8:
    # Line 91
    b	.L0da9a358
    move	$a4,$zero
.end __glMgrasEatData

# Function: __glMgrim_DrawDumbPoint
# Declared: Line 106 (Source lines: 109-117)
# Address: 0x0da9a3f0 - 0x0da9a420 (Size: 48 bytes, Frame: 0)
.globl __glMgrim_DrawDumbPoint
.ent __glMgrim_DrawDumbPoint
__glMgrim_DrawDumbPoint:
    # Line 109
    li	$v0,0xe01c
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 110
    sw	$a0,0($at)
    # Line 111
    sw	$a1,0($at)
    # Line 112
    swc1	$f14,0($at)
    # Line 113
    swc1	$f15,0($at)
    # Line 114
    swc1	$f16,0($at)
    # Line 115
    swc1	$f17,0($at)
    # Line 117
    jr	$ra
    # Line 116
    swc1	$f18,0($at)
.end __glMgrim_DrawDumbPoint

