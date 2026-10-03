# Source: ../MGRAS/mgras_dlgraph.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_dlgraph.c
# Total Functions: 4

.text

# Function: __glMgrDLNodeInit
# Declared: Line 38 (Source lines: 40-46)
# Address: 0x0da8d4a0 - 0x0da8d4c0 (Size: 32 bytes, Frame: 0)
.globl __glMgrDLNodeInit
.ent __glMgrDLNodeInit
__glMgrDLNodeInit:
    # Line 45
    sw	$zero,24($a0)
    # Line 44
    sb	$zero,20($a0)
    # Line 43
    sw	$zero,12($a0)
    sw	$zero,16($a0)
    # Line 42
    sw	$zero,8($a0)
    # Line 41
    sw	$a1,4($a0)
    # Line 46
    jr	$ra
    # Line 40
    sw	$a2,0($a0)
.end __glMgrDLNodeInit

# Function: __glMgrDLNodeCall
# Declared: Line 57 (Source lines: 58-92)
# Address: 0x0da8d4c0 - 0x0da8d5e4 (Size: 292 bytes, Frame: 192)
.globl __glMgrDLNodeCall
.ent __glMgrDLNodeCall
__glMgrDLNodeCall:
    # Line 60
    lw	$a7,__glCurrentContext
    # Line 58
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$gp,0($sp)
    # Line 60
    lw	$a6,8($a0)
    # Line 58
    lui	$at,0x17
    addiu	$at,$at,4568
    # Line 60
    beqz	$a6,.L0da8d5b4
    # Line 58
    addu	$gp,$t9,$at
    # Line 60
    lw	$v0,12($s1)
    sll	$a5,$a6,0x4
    addu	$a5,$v0,$a5
    move	$a2,$v0
    lw	$at,0($a2)
.L0da8d504:
    beql	$at,$s0,.L0da8d598
    ld	$gp,0($sp)
    # Line 67
    addiu	$a2,$a2,16
    sltu	$v1,$a2,$a5
    bnezl	$v1,.L0da8d504
    # Line 60
    lw	$at,0($a2)
    # Line 77
    move	$a1,$v0
    move	$a0,$a7
    sd	$ra,24($sp)
    # Line 76
    addiu	$a2,$a6,1
    # Line 77
    lw	$t9,8($a7)
    sd	$a2,32($sp)
    sll	$a2,$a2,0x4
    jalr	$t9
    sd	$a2,40($sp)
    sw	$v0,12($s1)
    ld	$ra,24($sp)
    ld	$a2,32($sp)
    ld	$a0,40($sp)
.L0da8d550:
    # Line 87
    sw	$a2,8($s1)
    # Line 88
    addu	$v0,$v0,$a0
    sw	$s0,-16($v0)
    # Line 89
    lw	$at,12($s1)
    addu	$at,$at,$a0
    sw	$s1,-12($at)
    # Line 90
    lw	$s0,12($s1)
    ld	$gp,0($sp)
    # Line 91
    li	$a3,1
    # Line 90
    addu	$s0,$s0,$a0
    sw	$zero,-8($s0)
    # Line 92
    ld	$s0,16($sp)
    # Line 91
    lw	$a4,12($s1)
    # Line 92
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 91
    addu	$a4,$a4,$a0
    # Line 92
    jr	$ra
    # Line 91
    sw	$a3,-4($a4)
.L0da8d598:
    # Line 72
    ld	$s0,16($sp)
    # Line 71
    lw	$v1,12($a2)
    # Line 72
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    # Line 71
    addiu	$v1,$v1,1
    # Line 72
    jr	$ra
    # Line 71
    sw	$v1,12($a2)
.L0da8d5b4:
    # Line 83
    li	$a1,16
    move	$a0,$a7
    lw	$t9,0($a7)
    sd	$ra,24($sp)
    # Line 82
    li	$a2,1
    # Line 83
    jalr	$t9
    sd	$a2,32($sp)
    li	$a0,16
    sw	$v0,12($s1)
    ld	$ra,24($sp)
    b	.L0da8d550
    ld	$a2,32($sp)
.end __glMgrDLNodeCall

# Function: __glMgrDLNodeLink
# Declared: Line 104 (Source lines: 111-120)
# Address: 0x0da8d5e4 - 0x0da8d634 (Size: 80 bytes, Frame: 0)
.globl __glMgrDLNodeLink
.ent __glMgrDLNodeLink
__glMgrDLNodeLink:
    # Line 111
    lw	$at,8($a0)
    beqz	$at,.L0da8d628
    move	$a2,$zero
    move	$a3,$zero
.L0da8d5f4:
    # Line 113
    lw	$v0,12($a0)
    addu	$v0,$v0,$a3
    lw	$a1,0($v0)
    # Line 115
    lw	$at,16($a1)
    sw	$at,8($v0)
    # Line 116
    lw	$v1,12($a0)
    addu	$v1,$v1,$a3
    sw	$v1,16($a1)
    # Line 111
    lw	$v0,8($a0)
    addiu	$a2,$a2,1
    sltu	$v0,$a2,$v0
    bnez	$v0,.L0da8d5f4
    addiu	$a3,$a3,16
.L0da8d628:
    # Line 119
    li	$v1,1
    # Line 120
    jr	$ra
    # Line 119
    sb	$v1,20($a0)
.end __glMgrDLNodeLink

# Function: __glMgrDLNodeUnlink
# Declared: Line 130 (Source lines: 131-166)
# Address: 0x0da8d634 - 0x0da8d700 (Size: 204 bytes, Frame: 48)
.globl __glMgrDLNodeUnlink
.ent __glMgrDLNodeUnlink
__glMgrDLNodeUnlink:
    # Line 135
    lw	$t1,__glCurrentContext
    # Line 131
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    # Line 135
    lbu	$at,20($a0)
    # Line 131
    lui	$v0,0x17
    addiu	$v0,$v0,4196
    # Line 135
    beqz	$at,.L0da8d6f0
    # Line 131
    addu	$gp,$t9,$v0
    # Line 139
    lw	$v1,8($s0)
    beqz	$v1,.L0da8d6cc
    move	$a6,$zero
    b	.L0da8d6a4
    move	$a5,$zero
.L0da8d670:
    # Line 149
    lw	$a2,8($t0)
    move	$a4,$t0
    beql	$a2,$a3,.L0da8d694
    # Line 156
    sw	$a7,8($a4)
    # Line 153
    move	$a4,$a2
.L0da8d684:
    lw	$a2,8($a2)
    bnel	$a2,$a3,.L0da8d684
    move	$a4,$a2
    # Line 156
    sw	$a7,8($a4)
.L0da8d694:
    # Line 139
    lw	$a1,8($s0)
    sltu	$a1,$a6,$a1
    beqzl	$a1,.L0da8d6cc
    sd	$ra,16($sp)
.L0da8d6a4:
    # Line 141
    lw	$a3,12($s0)
    addu	$a3,$a3,$a5
    lw	$a2,0($a3)
    lw	$t0,16($a2)
    # Line 139
    addiu	$a6,$a6,1
    addiu	$a5,$a5,16
    # Line 141
    bne	$t0,$a3,.L0da8d670
    lw	$a7,8($a3)
    # Line 145
    b	.L0da8d694
    sw	$a7,16($a2)
.L0da8d6cc:
    # Line 160
    lw	$t9,12($t1)
    move	$a0,$t1
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a1,12($s0)
    # Line 164
    sb	$zero,20($s0)
    # Line 162
    sw	$zero,8($s0)
    # Line 161
    sw	$zero,12($s0)
    ld	$ra,16($sp)
.L0da8d6f0:
    ld	$gp,8($sp)
    # Line 166
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrDLNodeUnlink

