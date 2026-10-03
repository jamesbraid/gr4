# Source: ../object/delobj.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/delobj.c -o delobj.T
# Total Functions: 1

.text

# Function: gl_g_delobj
# Declared: Line 21 (Source lines: 23-75)
# Address: 0x0f0a3080 - 0x0f0a31b0 (Size: 304 bytes, Frame: 192)
.globl gl_g_delobj
.ent gl_g_delobj
gl_g_delobj:
    # Line 32
    li	$a1,-1
    # Line 23
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,456 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 32
    la	$t9,gl_findhash
    sd	$s1,8($sp)
    sd	$ra,32($sp)
    jalr	$t9
    sd	$a0,16($sp)
    # Line 33
    beqz	$v0,.L0f0a3168
    # Line 32
    move	$s1,$v0
    # Line 33
    lw	$v1,28($s1)
    beqz	$v1,.L0f0a3168
    # Line 45
    li	$a1,-3
    li	$a0,-2
    sd	$s2,40($sp)
    la	$t9,__GLobjdelete
    # Line 35
    la	$a4,gl_openobj
    # Line 44
    ld	$a3,16($sp)
    # Line 35
    la	$a2,gl_openobjhdr
    # Line 42
    lw	$a5,0($a4)
    # Line 44
    sw	$a3,0($a4)
    # Line 41
    lw	$s2,0($a2)
    # Line 43
    sw	$s1,0($a2)
    # Line 45
    jalr	$t9
    sd	$a5,0($sp)
    # Line 49
    ld	$at,0($sp)
    # Line 45
    beq	$s1,$s2,.L0f0a3190
    la	$v0,gl_openobjhdr
    la	$v1,gl_openobj
    # Line 48
    sw	$s2,0($v0)
    # Line 49
    sw	$at,0($v1)
.L0f0a3108:
    # Line 62
    lw	$s2,4($s1)
    beqzl	$s2,.L0f0a3144
    ld	$gp,24($sp)
    # Line 64
    la	$t9,gl_free
.L0f0a3118:
    lw	$a1,-15192($gp)
    jalr	$t9
    lw	$a0,4($s2)
    # Line 67
    la	$t9,gl_free
    lw	$a1,-15192($gp)
    # Line 65
    move	$a0,$s2
    # Line 67
    jalr	$t9
    # Line 66
    lw	$s2,0($s2)
    # Line 67
    bnez	$s2,.L0f0a3118
    # Line 64
    la	$t9,gl_free
    ld	$gp,24($sp)
.L0f0a3144:
    # Line 73
    sw	$zero,0($s1)
    # Line 72
    sw	$zero,4($s1)
    # Line 71
    sw	$zero,12($s1)
    # Line 70
    sw	$zero,28($s1)
    # Line 75
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a3168:
    # Line 34
    la	$t9,gl_ErrorHandler
    lw	$a2,-15192($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,73
    # Line 35
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0a3190:
    # Line 53
    la	$t9,gl_SetImmediateMode
    la	$s2,gl_openobj
    li	$a0,1
    jalr	$t9
    # Line 51
    sw	$zero,0($v0)
    # Line 55
    li	$a1,-1
    b	.L0f0a3108
    sw	$a1,0($s2)
.end gl_g_delobj

