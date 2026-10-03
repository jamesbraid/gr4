# Source: ../dgl/in_addr.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/in_addr.c -o in_addr.T
# Total Functions: 1

.text

# Function: gl_inet_addr
# Declared: Line 39 (Source lines: 41-119)
# Address: 0x0f0d8aa4 - 0x0f0d8cbc (Size: 536 bytes, Frame: 32)
.globl gl_inet_addr
.ent gl_inet_addr
gl_inet_addr:
    # Line 44
    li	$t8,46
    li	$t3,48
    # Line 41
    addiu	$sp,$sp,-32
    # Line 44
    addiu	$t1,$sp,0
    # Line 41
    lui	$v0,0xfff6
    addiu	$v0,$v0,-22620
    addu	$at,$t9,$v0
    # Line 44
    lw	$a7,-23364($at)
    # Line 41
    addiu	$t2,$sp,0
    # Line 44
    addiu	$t2,$t2,16
    lw	$a7,0($a7)
.L0f0d8ad0:
    # Line 52
    lbu	$a5,0($a0)
    move	$v0,$zero
    li	$a1,88
    beq	$t3,$a5,.L0f0d8bdc
    li	$a6,10
.L0f0d8ae4:
    # Line 59
    beqz	$a5,.L0f0d8b24
    move	$a4,$a5
.L0f0d8aec:
    sll	$t0,$a4,0x2
    addu	$t0,$t0,$a7
    lw	$t0,4($t0)
    andi	$v1,$t0,0x4
    beqz	$v1,.L0f0d8b44
    li	$a1,16
    # Line 61
    multu	$v0,$a6
    # Line 62
    addiu	$a0,$a0,1
    # Line 61
    mflo	$v0
    addu	$v0,$v0,$a4
    addiu	$v0,$v0,-48
.L0f0d8b18:
    # Line 59
    lbu	$a5,0($a0)
    bnez	$a5,.L0f0d8aec
    move	$a4,$a5
.L0f0d8b24:
    # Line 72
    bne	$t8,$a5,.L0f0d8b78
    # Line 81
    addiu	$a0,$a0,1
    # Line 72
    sltu	$v1,$t1,$t2
    beqzl	$v1,.L0f0d8c58
    # Line 80
    li	$v0,-1
    # Line 81
    sw	$v0,0($t1)
    b	.L0f0d8ad0
    addiu	$t1,$t1,4
.L0f0d8b44:
    # Line 61
    bne	$a1,$a6,.L0f0d8b24
    andi	$a2,$t0,0x80
    beqz	$a2,.L0f0d8b24
    nop
    # Line 66
    sll	$v0,$v0,0x4
    # Line 65
    andi	$a3,$t0,0x2
    beqz	$a3,.L0f0d8c3c
    # Line 67
    addiu	$a0,$a0,1
    # Line 66
    li	$a5,97
.L0f0d8b68:
    subu	$v1,$a4,$a5
    addu	$v0,$v1,$v0
    b	.L0f0d8b18
    addiu	$v0,$v0,10
.L0f0d8b78:
    # Line 81
    beqz	$a5,.L0f0d8b9c
    sll	$v1,$a5,0x2
    addu	$v1,$v1,$a7
    lw	$v1,4($v1)
    li	$a1,-1
    dsll	$a1,$a1,0x1f
    ori	$a1,$a1,0x8
    and	$v1,$v1,$a1
    beqz	$v1,.L0f0d8c60
.L0f0d8b9c:
    # Line 95
    li	$a1,1
    addiu	$a0,$sp,0
    subu	$a0,$t1,$a0
    addiu	$a0,$a0,4
    sra	$a0,$a0,0x2
    beq	$a0,$a1,.L0f0d8c6c
    # Line 89
    sw	$v0,0($t1)
    # Line 95
    li	$a1,2
    beq	$a0,$a1,.L0f0d8c74
    li	$a2,3
    beq	$a0,$a2,.L0f0d8c94
    li	$a3,4
    beq	$a0,$a3,.L0f0d8c00
    # Line 116
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,32
.L0f0d8bdc:
    # Line 54
    lbu	$a5,1($a0)
    # Line 57
    li	$a6,8
    li	$v1,120
    # Line 54
    beq	$v1,$a5,.L0f0d8c48
    addiu	$a0,$a0,1
    beql	$a1,$a5,.L0f0d8c4c
    # Line 55
    lbu	$a5,1($a0)
    b	.L0f0d8ae4
    nop
.L0f0d8c00:
    # Line 111
    lw	$v0,12($sp)
    lw	$a1,8($sp)
    andi	$v0,$v0,0xff
    andi	$a1,$a1,0xff
    sll	$a1,$a1,0x8
    lw	$v1,4($sp)
    or	$v0,$v0,$a1
    lw	$a1,0($sp)
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x10
    sll	$a1,$a1,0x18
    or	$v1,$v1,$a1
    or	$v0,$v0,$v1
.L0f0d8c34:
    # Line 119
    jr	$ra
    addiu	$sp,$sp,32
.L0f0d8c3c:
    # Line 66
    li	$a5,65
    b	.L0f0d8b68
    nop
.L0f0d8c48:
    # Line 55
    lbu	$a5,1($a0)
.L0f0d8c4c:
    addiu	$a0,$a0,1
    b	.L0f0d8ae4
    li	$a6,16
.L0f0d8c58:
    # Line 80
    jr	$ra
    addiu	$sp,$sp,32
.L0f0d8c60:
    # Line 88
    li	$v0,-1
    jr	$ra
    addiu	$sp,$sp,32
.L0f0d8c6c:
    # Line 99
    b	.L0f0d8c34
    # Line 98
    lw	$v0,0($sp)
.L0f0d8c74:
    # Line 102
    lw	$v0,4($sp)
    lui	$a1,0xff
    lw	$v1,0($sp)
    ori	$a1,$a1,0xffff
    and	$v0,$v0,$a1
    sll	$v1,$v1,0x18
    # Line 103
    b	.L0f0d8c34
    # Line 102
    or	$v0,$v0,$v1
.L0f0d8c94:
    # Line 106
    lw	$v0,8($sp)
    lw	$v1,4($sp)
    andi	$v0,$v0,0xffff
    lw	$a1,0($sp)
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x10
    sll	$a1,$a1,0x18
    or	$v1,$v1,$a1
    # Line 108
    b	.L0f0d8c34
    # Line 106
    or	$v0,$v0,$v1
.end gl_inet_addr

