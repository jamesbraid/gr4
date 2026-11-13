# Source: ../MGRAS/mgras_igloo.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_igloo.c
# Total Functions: 5

.text

# Function: __glMgrim_Swaptmesh
# Declared: Line 15 (Source lines: 16-32)
# Address: 0x0dafd648 - 0x0dafd6b0 (Size: 104 bytes, Frame: 0)
.ent __glMgrim_Swaptmesh
__glMgrim_Swaptmesh:
    # Line 16
    lw	$a1,__glCurrentContext
    # Line 28
    la	$a0,__glEvenTStripVertex
    # Line 16
    li	$at,0x925c
    addu	$at,$at,$a1
    lw	$at,0($at)
    # Line 19
    la	$a3,__glOddTStripVertex
    lui	$v1,0x7
    # Line 16
    beqz	$at,.L0dafd6a4
    # Line 19
    ori	$v1,$v1,0x4080
    # Line 23
    lw	$v1,12748($a1)
    # Line 25
    lw	$a2,12020($a1)
    # Line 24
    lw	$v0,12752($a1)
    # Line 25
    sw	$v1,12752($a1)
    beq	$a2,$a3,.L0dafd698
    # Line 24
    sw	$v0,12748($a1)
    # Line 28
    bne	$a2,$a0,.L0dafd690
    nop
    # Line 30
    sw	$a3,12020($a1)
.L0dafd690:
    # Line 32
    jr	$ra
    nop
.L0dafd698:
    # Line 28
    la	$at,__glEvenTStripVertex
    # Line 32
    jr	$ra
    # Line 28
    sw	$at,12020($a1)
.L0dafd6a4:
    # Line 19
    li	$v0,0xdc00
    # Line 32
    jr	$ra
    # Line 19
    sw	$v0,0($v1)
.end __glMgrim_Swaptmesh

# Function: __glMgrim_lmcolor
# Declared: Line 42 (Source lines: 44-67)
# Address: 0x0dafd6b0 - 0x0dafd734 (Size: 132 bytes, Frame: 0)
.ent __glMgrim_lmcolor
__glMgrim_lmcolor:
    # Line 44
    lw	$a3,__glCurrentContext
    li	$at,1
    beq	$a0,$at,.L0dafd700
    lw	$a2,1704($a3)
    # Line 61
    li	$a0,-2
    lbu	$v1,3104($a3)
    # Line 60
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    # Line 61
    lw	$v0,31548($a3)
    # Line 60
    and	$at,$a2,$at
    sw	$at,1704($a3)
    # Line 61
    and	$v0,$v0,$a0
    beqz	$v1,.L0dafd6f8
    sw	$v0,31548($a3)
    # Line 64
    li	$v0,0xde00
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$v0,0($v1)
.L0dafd6f8:
    # Line 67
    jr	$ra
    nop
.L0dafd700:
    # Line 53
    lui	$v0,0x8000
    or	$v0,$a2,$v0
    # Line 54
    lw	$a0,31548($a3)
    lbu	$at,3104($a3)
    # Line 53
    sw	$v0,1704($a3)
    # Line 54
    ori	$a0,$a0,0x1
    beqz	$at,.L0dafd6f8
    sw	$a0,31548($a3)
    # Line 57
    li	$v1,0xdd00
    lui	$a0,0x7
    ori	$a0,$a0,0x4080
    # Line 67
    jr	$ra
    # Line 57
    sw	$v1,0($a0)
.end __glMgrim_lmcolor

# Function: __glMgrim_FullScreen
# Declared: Line 69 (Source lines: 70-86)
# Address: 0x0dafd734 - 0x0dafd790 (Size: 92 bytes, Frame: 192)
.ent __glMgrim_FullScreen
__glMgrim_FullScreen:
    # Line 70
    addiu	$sp,$sp,-64
    # Line 85
    addiu	$a2,$sp,0
    sd	$ra,32($sp)
    # Line 79
    li	$a4,2
    # Line 74
    lw	$at,__glCurrentContext
    # Line 80
    li	$a3,6
    # Line 81
    li	$v1,3
    # Line 78
    lw	$a5,31564($at)
    # Line 81
    sw	$v1,12($sp)
    # Line 80
    sb	$a3,8($sp)
    # Line 79
    sw	$a4,4($sp)
    # Line 78
    sw	$a5,0($sp)
    # Line 85
    # lw $t9, -32580($gp) # &__glMgrIoctl
    # Line 82
    lw	$v0,31564($at)
    # Line 84
    sw	$a1,24($sp)
    # Line 85
    li	$a1,1009
    # Line 83
    sw	$a0,16($sp)
    # Line 82
    sw	$v0,20($sp)
    # Line 85
    jal	__glMgrIoctl
    lw	$a0,31560($at)
    ld	$ra,32($sp)
    # Line 86
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_FullScreen

# Function: __glMgrim_n3f
# Declared: Line 88 (Source lines: 89-101)
# Address: 0x0dafd790 - 0x0dafd808 (Size: 120 bytes, Frame: 32)
.globl __glMgrim_n3f
.ent __glMgrim_n3f
__glMgrim_n3f:
    # Line 89
    addiu	$sp,$sp,-32
    # Line 90
    lw	$a2,__glCurrentContext
    sd	$gp,0($sp)
    li	$at,0x925c
    addu	$at,$at,$a2
    lw	$at,0($at)
    # Line 89
    lui	$v0,0x10
    addiu	$v0,$v0,3848
    # Line 90
    bnez	$at,.L0dafd7e4
    # Line 89
    addu	$gp,$t9,$v0
    # Line 95
    li	$v1,0xdf0c
    lwc1	$f2,0($a0)
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    swc1	$f2,0($v0)
    # Line 96
    lwc1	$f1,4($a0)
    swc1	$f1,0($v0)
    # Line 97
    lwc1	$f0,8($a0)
    b	.L0dafd7fc
    swc1	$f0,0($v0)
.L0dafd7e4:
    # Line 99
    lw	$t9,5640($a2)
    lw	$t9,1768($t9)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0dafd7fc:
    ld	$gp,0($sp)
    # Line 101
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_n3f

# Function: __glMgrim_IglooInterfaceSGIX
# Declared: Line 103 (Source lines: 104-140)
# Address: 0x0dafd808 - 0x0dafd920 (Size: 280 bytes, Frame: 32)
.globl __glMgrim_IglooInterfaceSGIX
.ent __glMgrim_IglooInterfaceSGIX
__glMgrim_IglooInterfaceSGIX:
    # Line 106
    lw	$a3,__glCurrentContext
    # Line 104
    move	$a4,$a1
    # Line 108
    li	$at,0x81a1
    # Line 104
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v0,0x10
    addiu	$v0,$v0,3728
    # Line 108
    beq	$a0,$at,.L0dafd874
    # Line 104
    addu	$gp,$t9,$v0
    # Line 108
    li	$v1,0x81a0
    beq	$a0,$v1,.L0dafd8b8
    li	$a2,0x819e
    beq	$a0,$a2,.L0dafd8d4
    li	$at,0x81a3
    beq	$a0,$at,.L0dafd8f4
    li	$v0,0x819f
    beq	$a0,$v0,.L0dafd868
    li	$v1,0x81a2
    beq	$a0,$v1,.L0dafd868
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0dafd868:
    ld	$gp,0($sp)
.L0dafd86c:
    # Line 140
    jr	$ra
    addiu	$sp,$sp,32
.L0dafd874:
    # Line 110
    lw	$a0,0($a4)
    # Line 111
    la	$v1,__glNop
    # Line 110
    beqz	$a0,.L0dafd910
    lw	$a0,31548($a3)
    # Line 111
    ori	$a2,$a0,0x2
    andi	$at,$a2,0x1
    beqz	$at,.L0dafd868
    sw	$a2,31548($a3)
    lw	$v0,12072($a3)
    bnel	$v0,$v1,.L0dafd86c
    ld	$gp,0($sp)
    # Line 114
    # lw $t9, -26640($gp) # &__glClampAndScaleColor
    sd	$ra,8($sp)
    jal	__glClampAndScaleColor
    move	$a0,$a3
    b	.L0dafd868
    ld	$ra,8($sp)
.L0dafd8b8:
    # Line 121
    # lw $t9, -32708($gp) # &sub_0db00000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-10680
    bal __glMgrim_Clear
    nop
    b	.L0dafd868
    ld	$ra,8($sp)
.L0dafd8d4:
    # Line 126
    # lw $t9, -32708($gp) # &sub_0db00000
    lbu	$a1,7($a4)
    sd	$ra,8($sp)
    addiu	$t9,$t9,-10444
    bal __glMgrim_Clear
    lw	$a0,0($a4)
    b	.L0dafd868
    ld	$ra,8($sp)
.L0dafd8f4:
    # Line 130
    # lw $t9, -32708($gp) # &sub_0db00000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-10576
    bal __glMgrim_Clear
    lbu	$a0,3($a4)
    b	.L0dafd868
    ld	$ra,8($sp)
.L0dafd910:
    # Line 116
    li	$at,-3
    and	$at,$a0,$at
    b	.L0dafd868
    sw	$at,31548($a3)
.end __glMgrim_IglooInterfaceSGIX

