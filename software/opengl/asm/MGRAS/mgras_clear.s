# Source: ../MGRAS/mgras_clear.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_clear.c
# Total Functions: 1

.text

# Function: __glMgrim_Clear
# Declared: Line 27 (Source lines: 27-68)
# Address: 0x0dafd4bc - 0x0dafd648 (Size: 396 bytes, Frame: 48)
.globl __glMgrim_Clear
.ent __glMgrim_Clear
__glMgrim_Clear:
    # Line 30
    li	$v0,1
    # Line 27
    addiu	$sp,$sp,-48
    sd	$s7,0($sp)
    # Line 30
    lw	$s7,__glCurrentContext
    sd	$s5,8($sp)
    # Line 27
    move	$s5,$a0
    sd	$gp,16($sp)
    # Line 30
    lw	$at,__glBeginMode
    # Line 27
    lui	$v1,0x10
    addiu	$v1,$v1,4572
    # Line 30
    beq	$at,$v0,.L0dafd620
    # Line 27
    addu	$gp,$t9,$v1
    # Line 30
    li	$a1,-18177
    and	$a1,$s5,$a1
    beqzl	$a1,.L0dafd524
    # Line 35
    lw	$at,3092($s7)
    # Line 34
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,16($sp)
    # Line 35
    ld	$ra,24($sp)
    ld	$s5,8($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafd524:
    li	$v0,7168
    bne	$at,$v0,.L0dafd5e8
    # Line 39
    li	$a1,1033
    # Line 35
    andi	$v1,$s5,0x4000
    beqz	$v1,.L0dafd578
    # Line 56
    andi	$v0,$s5,0x200
    # Line 39
    lw	$a2,1788($s7)
    beqz	$a2,.L0dafd574
    move	$a0,$a2
    beq	$a0,$a1,.L0dafd5fc
    li	$at,1034
    beq	$a0,$at,.L0dafd5fc
    li	$v0,1035
    beq	$a0,$v0,.L0dafd5fc
    li	$v1,1036
    beq	$a0,$v1,.L0dafd5fc
    # Line 54
    lui	$at,0x7
    ori	$at,$at,0x4080
    li	$a1,5376
    sw	$a1,0($at)
.L0dafd574:
    # Line 56
    andi	$v0,$s5,0x200
.L0dafd578:
    beqz	$v0,.L0dafd5a4
    # Line 59
    andi	$a1,$s5,0x400
    # Line 56
    lbu	$v1,3108($s7)
    beqz	$v1,.L0dafd5a4
    # Line 59
    andi	$a1,$s5,0x400
    lw	$t9,31520($s7)
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$s7,31412
    ld	$ra,24($sp)
    andi	$a1,$s5,0x400
.L0dafd5a4:
    beqz	$a1,.L0dafd5c8
    # Line 62
    andi	$a1,$s5,0x100
    # Line 59
    lbu	$at,3110($s7)
    beqz	$at,.L0dafd5c4
    # Line 62
    li	$v0,19456
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$v0,0($v1)
.L0dafd5c4:
    andi	$a1,$s5,0x100
.L0dafd5c8:
    # Line 65
    lui	$v1,0x7
    # Line 62
    beqz	$a1,.L0dafd5ec
    ld	$gp,16($sp)
    lbu	$at,3109($s7)
    beqz	$at,.L0dafd5e8
    # Line 65
    ori	$v1,$v1,0x4080
    li	$v0,18944
    sw	$v0,0($v1)
.L0dafd5e8:
    ld	$gp,16($sp)
.L0dafd5ec:
    # Line 68
    ld	$s5,8($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dafd5fc:
    # Line 49
    lui	$v1,0x7
    # Line 47
    lw	$at,3180($s7)
    addiu	$a1,$a2,-1033
    slt	$a1,$a1,$at
    beqz	$a1,.L0dafd574
    # Line 49
    li	$v0,5376
    ori	$v1,$v1,0x4080
    b	.L0dafd574
    sw	$v0,0($v1)
.L0dafd620:
    # Line 30
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    ld	$s5,8($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Clear

