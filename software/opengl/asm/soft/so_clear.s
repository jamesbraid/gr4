# Source: ../soft/so_clear.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_clear.c
# Total Functions: 1

.text

# Function: __glim_Clear
# Declared: Line 24 (Source lines: 25-93)
# Address: 0x0db33f04 - 0x0db34200 (Size: 764 bytes, Frame: 48)
.globl __glim_Clear
.ent __glim_Clear
__glim_Clear:
    # Line 26
    lw	$a2,__glCurrentContext
    # Line 25
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # Line 29
    lw	$a3,__glBeginMode
    # Line 25
    lui	$at,0xd
    addiu	$at,$at,-22636
    # Line 29
    beqz	$a3,.L0db33f50
    # Line 25
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 29
    li	$v0,2
    beq	$a3,$v0,.L0db33f80
    sd	$a0,8($sp)
    # Line 37
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    # Line 38
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db33f50:
    li	$v1,-18177
    and	$v1,$a0,$v1
    beqzl	$v1,.L0db33fac
    # Line 45
    lw	$a1,3092($a2)
    # Line 44
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    bal __glSetError
    li	$a0,1281
    # Line 45
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db33f80:
    # Line 32
    lw	$t9,11856($a2)
    jal	__glSetError
    move	$a0,$a2
    # Line 34
    # lw $t9, -16892($gp) # &glClear
    ld	$a0,8($sp)
    jal	glClear
    # Line 33
    sw	$zero,__glBeginMode
    # Line 35
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db33fac:
    # Line 45
    li	$at,7168
    bnel	$a1,$at,.L0db340cc
    ld	$gp,16($sp)
    andi	$v0,$a0,0x4000
    beqz	$v0,.L0db34020
    # Line 81
    andi	$v0,$a0,0x200
    # Line 50
    lw	$a4,1788($a2)
    sltiu	$v1,$a4,1033
    bnez	$v1,.L0db340d4
    move	$a3,$a4
    sltiu	$a1,$a3,1034
    bnez	$a1,.L0db3400c
    sltiu	$at,$a3,1035
    bnez	$at,.L0db34000
    sltiu	$v0,$a3,1036
    bnez	$v0,.L0db3400c
    li	$v1,1036
    bne	$a3,$v1,.L0db34020
    # Line 81
    andi	$v0,$a0,0x200
    b	.L0db34010
    # Line 68
    lw	$at,3180($a2)
.L0db34000:
    # Line 50
    li	$a1,1034
    bne	$a3,$a1,.L0db34020
    # Line 81
    andi	$v0,$a0,0x200
.L0db3400c:
    # Line 68
    lw	$at,3180($a2)
.L0db34010:
    addiu	$a3,$a4,-1033
    slt	$at,$a3,$at
    bnez	$at,.L0db341bc
.L0db3401c:
    # Line 81
    andi	$v0,$a0,0x200
.L0db34020:
    beqz	$v0,.L0db34060
    # Line 84
    andi	$a1,$a0,0x400
    # Line 81
    lbu	$v1,3108($a2)
    beqz	$v1,.L0db34060
    # Line 84
    andi	$a1,$a0,0x400
    sd	$a2,0($sp)
    sd	$ra,24($sp)
    lw	$t9,31520($a2)
    sd	$a0,8($sp)
    move	$a0,$a2
    jalr	$t9
    addiu	$a0,$a2,31412
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    ld	$ra,24($sp)
    andi	$a1,$a0,0x400
.L0db34060:
    beqz	$a1,.L0db340a0
    # Line 87
    andi	$a1,$a0,0x100
    # Line 84
    lbu	$at,3110($a2)
    beqz	$at,.L0db340a0
    # Line 87
    andi	$a1,$a0,0x100
    sd	$a2,0($sp)
    sd	$ra,24($sp)
    lw	$t9,31276($a2)
    sd	$a0,8($sp)
    move	$a0,$a2
    jalr	$t9
    addiu	$a0,$a2,31160
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    ld	$ra,24($sp)
    andi	$a1,$a0,0x100
.L0db340a0:
    beqzl	$a1,.L0db340cc
    ld	$gp,16($sp)
    lbu	$at,3109($a2)
    beqzl	$at,.L0db340cc
    ld	$gp,16($sp)
    # Line 90
    lw	$t9,31400($a2)
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$a2,31280
    ld	$ra,24($sp)
    ld	$gp,16($sp)
.L0db340cc:
    # Line 93
    jr	$ra
    addiu	$sp,$sp,48
.L0db340d4:
    # Line 50
    sltiu	$v0,$a3,1029
    bnez	$v0,.L0db34144
    sltiu	$v1,$a3,1030
    bnez	$v1,.L0db34184
    li	$a1,1032
    bne	$a3,$a1,.L0db34020
    # Line 81
    andi	$v0,$a0,0x200
    sd	$a0,8($sp)
    move	$a0,$a2
    # Line 76
    lw	$a0,30708($a2)
    lw	$t9,216($a0)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a2,0($sp)
    lbu	$a1,3106($a2)
    ld	$a0,8($sp)
    beqz	$a1,.L0db3401c
    ld	$ra,24($sp)
    ld	$a0,0($sp)
    # Line 78
    lw	$a0,30712($a0)
    lw	$t9,216($a0)
    jalr	$t9
    nop
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0db3401c
    ld	$ra,24($sp)
.L0db34144:
    # Line 50
    sltiu	$a1,$a3,1028
    bnez	$a1,.L0db3401c
    sltiu	$at,$a3,1029
    beqz	$at,.L0db34020
    # Line 81
    andi	$v0,$a0,0x200
    sd	$a0,8($sp)
    move	$a0,$a2
    # Line 54
    lw	$a0,30708($a2)
    lw	$t9,216($a0)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0db3401c
    ld	$ra,24($sp)
.L0db34184:
    # Line 57
    lbu	$a1,3106($a2)
    beqz	$a1,.L0db34020
    # Line 81
    andi	$v0,$a0,0x200
    sd	$a0,8($sp)
    move	$a0,$a2
    # Line 58
    lw	$a0,30712($a2)
    lw	$t9,216($a0)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0db3401c
    ld	$ra,24($sp)
.L0db341bc:
    sd	$a0,8($sp)
    move	$a0,$a2
    # Line 70
    lw	$a0,31156($a2)
    sll	$a1,$a3,0x3
    subu	$a1,$a1,$a3
    sll	$a1,$a1,0x3
    subu	$a1,$a1,$a3
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$t9,216($a0)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    b	.L0db3401c
    ld	$ra,24($sp)
.end __glim_Clear

