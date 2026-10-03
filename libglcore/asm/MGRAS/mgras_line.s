# Source: ../MGRAS/mgras_line.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_line.c
# Total Functions: 2

.text

# Function: __glMgrStoreLine
# Declared: Line 28 (Source lines: 28-70)
# Address: 0x0da7bb84 - 0x0da7bce4 (Size: 352 bytes, Frame: 176)
.globl __glMgrStoreLine
.ent __glMgrStoreLine
__glMgrStoreLine:
    # Line 28
    addiu	$sp,$sp,-176
    sd	$gp,144($sp)
    sd	$s6,88($sp)
    # Line 41
    lw	$v1,29940($a0)
    # Line 40
    lw	$a1,29932($a0)
    sd	$s1,112($sp)
    # Line 46
    lw	$s1,30516($a0)
    sd	$s5,120($sp)
    # Line 45
    lw	$s5,29948($a0)
    sd	$s0,104($sp)
    # Line 44
    lw	$s0,29944($a0)
    sd	$s7,128($sp)
    # Line 43
    lw	$s7,29936($a0)
    sd	$s8,136($sp)
    # Line 42
    lw	$s8,29928($a0)
    sd	$s2,72($sp)
    # Line 38
    lw	$s2,30300($a0)
    sd	$s3,80($sp)
    # Line 47
    lw	$s3,30532($a0)
    # Line 49
    lw	$v0,29920($a0)
    sd	$s4,96($sp)
    # Line 48
    lw	$s4,164($s3)
    # Line 49
    sw	$v0,0($sp)
    # Line 28
    lui	$s6,0x18
    # Line 50
    lw	$at,29924($a0)
    # Line 28
    addiu	$s6,$s6,11028
    sd	$a1,64($sp)
    # Line 50
    sw	$at,4($sp)
    sd	$v1,56($sp)
    # Line 51
    lw	$at,30256($a0)
    # Line 28
    addu	$gp,$t9,$s6
    # Line 54
    addiu	$s2,$s2,-1
    # Line 51
    sw	$at,8($sp)
    # Line 54
    bltz	$s2,.L0da7bcb0
    # Line 52
    lw	$s6,30376($a0)
    b	.L0da7bc2c
    sd	$ra,152($sp)
.L0da7bc18:
    # Line 65
    sw	$v0,4($sp)
    # Line 64
    addu	$at,$s8,$a3
    sw	$at,0($sp)
.L0da7bc24:
    # Line 54
    beq	$s2,$a0,.L0da7bcac
    # Line 67
    sw	$v1,8($sp)
.L0da7bc2c:
    # Line 55
    lwc1	$f3,0($s1)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s1)
    swc1	$f2,16($sp)
    # Line 56
    addiu	$a1,$sp,0
    # Line 55
    lwc1	$f1,8($s1)
    # Line 56
    move	$a0,$s3
    # Line 55
    addiu	$s1,$s1,16
    swc1	$f1,20($sp)
    # Line 56
    move	$t9,$s4
    # Line 55
    lwc1	$f0,-4($s1)
    # Line 58
    addu	$s0,$s0,$s5
    # Line 56
    jalr	$s4
    # Line 55
    swc1	$f0,24($sp)
    # Line 54
    addiu	$s2,$s2,-1
    li	$a0,-1
    # Line 58
    lw	$a3,0($sp)
    lw	$a2,4($sp)
    # Line 62
    ld	$at,56($sp)
    # Line 67
    lw	$v1,8($sp)
    # Line 65
    addu	$v0,$s7,$a2
    # Line 58
    bgez	$s0,.L0da7bc18
    # Line 67
    addu	$v1,$v1,$s6
    # Line 62
    addu	$at,$at,$a2
    sw	$at,4($sp)
    lui	$v0,0x7fff
    # Line 61
    ld	$a1,64($sp)
    ori	$v0,$v0,0xffff
    # Line 60
    and	$s0,$s0,$v0
    # Line 61
    addu	$a1,$a1,$a3
    # Line 62
    b	.L0da7bc24
    # Line 61
    sw	$a1,0($sp)
.L0da7bcac:
    ld	$ra,152($sp)
.L0da7bcb0:
    # Line 70
    move	$v0,$zero
    ld	$gp,144($sp)
    ld	$s0,104($sp)
    ld	$s1,112($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    ld	$s4,96($sp)
    ld	$s5,120($sp)
    ld	$s6,88($sp)
    ld	$s7,128($sp)
    ld	$s8,136($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glMgrStoreLine

# Function: __glMgrStoreStippledLine
# Declared: Line 80 (Source lines: 80-146)
# Address: 0x0da7bce4 - 0x0da7beac (Size: 456 bytes, Frame: 240)
.globl __glMgrStoreStippledLine
.ent __glMgrStoreStippledLine
__glMgrStoreStippledLine:
    # Line 80
    addiu	$sp,$sp,-240
    sd	$s4,104($sp)
    # Line 106
    lw	$s4,30256($a0)
    sd	$s2,120($sp)
    # Line 104
    lw	$s2,29920($a0)
    sd	$s3,112($sp)
    # Line 101
    lw	$s3,30516($a0)
    sd	$s8,72($sp)
    # Line 100
    lw	$s8,29948($a0)
    sd	$s5,80($sp)
    # Line 99
    lw	$s5,29944($a0)
    sd	$s1,88($sp)
    # Line 107
    lw	$s1,30376($a0)
    sd	$gp,96($sp)
    # Line 97
    lw	$v1,29928($a0)
    sd	$s1,176($sp)
    # Line 105
    lw	$s1,29924($a0)
    sd	$v1,168($sp)
    # Line 80
    lui	$v1,0x18
    addiu	$v1,$v1,10676
    # Line 98
    lw	$a1,29936($a0)
    # Line 80
    addu	$gp,$t9,$v1
    # Line 95
    lw	$at,29932($a0)
    sd	$a1,160($sp)
    # Line 96
    lw	$v0,29940($a0)
    # Line 93
    lw	$a1,30524($a0)
    sd	$at,152($sp)
    sd	$v0,144($sp)
    # Line 102
    lw	$v0,30532($a0)
    # Line 92
    lw	$at,30300($a0)
    sd	$a1,128($sp)
    sd	$v0,64($sp)
    # Line 103
    lw	$v0,164($v0)
    sd	$at,136($sp)
    # Line 107
    beqz	$at,.L0da7be84
    sd	$v0,56($sp)
    sd	$s6,208($sp)
    sd	$ra,200($sp)
    sd	$s0,192($sp)
    sd	$s7,184($sp)
    b	.L0da7bd94
    li	$a0,-1
.L0da7bd8c:
    ld	$at,136($sp)
    # Line 118
    beqz	$at,.L0da7be74
.L0da7bd94:
    ld	$v0,136($sp)
    # Line 110
    move	$s6,$v0
    slti	$v0,$v0,33
    bnez	$v0,.L0da7bdac
    # Line 116
    ld	$v1,128($sp)
    # Line 112
    li	$s6,32
.L0da7bdac:
    lui	$s0,0x8000
    # Line 116
    lw	$s7,0($v1)
    # Line 114
    ld	$a1,136($sp)
    # Line 116
    addiu	$v1,$v1,4
    sd	$v1,128($sp)
    # Line 114
    subu	$a1,$a1,$s6
    # Line 118
    addiu	$s6,$s6,-1
    bltz	$s6,.L0da7bd8c
    sd	$a1,136($sp)
    b	.L0da7be08
    # Line 128
    addu	$s5,$s5,$s8
.L0da7bdd8:
    # Line 134
    ld	$at,168($sp)
    # Line 131
    ld	$v0,152($sp)
    # Line 128
    bltz	$s5,.L0da7be58
    # Line 127
    addiu	$s3,$s3,16
    ld	$v0,160($sp)
    # Line 134
    addu	$s2,$at,$s2
    # Line 135
    addu	$s1,$v0,$s1
.L0da7bdf4:
    # Line 137
    ld	$v1,176($sp)
    # Line 139
    srl	$s0,$s0,0x1
    # Line 118
    beq	$s6,$a0,.L0da7bd8c
    # Line 137
    addu	$s4,$s4,$v1
    # Line 128
    addu	$s5,$s5,$s8
.L0da7be08:
    # Line 118
    and	$a1,$s7,$s0
    beqz	$a1,.L0da7bdd8
    addiu	$s6,$s6,-1
    # Line 122
    sw	$s4,8($sp)
    # Line 121
    sw	$s1,4($sp)
    # Line 120
    sw	$s2,0($sp)
    # Line 123
    lwc1	$f3,0($s3)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s3)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s3)
    # Line 124
    addiu	$a1,$sp,0
    # Line 123
    swc1	$f1,20($sp)
    # Line 124
    ld	$t9,56($sp)
    # Line 123
    lwc1	$f0,12($s3)
    # Line 124
    ld	$a0,64($sp)
    jalr	$t9
    # Line 123
    swc1	$f0,24($sp)
    b	.L0da7bdd8
    li	$a0,-1
.L0da7be58:
    # Line 131
    addu	$s2,$v0,$s2
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    ld	$v1,144($sp)
    # Line 130
    and	$s5,$s5,$at
    # Line 132
    b	.L0da7bdf4
    addu	$s1,$v1,$s1
.L0da7be74:
    ld	$s7,184($sp)
    ld	$s0,192($sp)
    ld	$ra,200($sp)
    ld	$s6,208($sp)
.L0da7be84:
    # Line 146
    move	$v0,$zero
    ld	$gp,96($sp)
    ld	$s1,88($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$s4,104($sp)
    ld	$s5,80($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glMgrStoreStippledLine

