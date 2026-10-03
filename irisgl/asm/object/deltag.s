# Source: ../object/deltag.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/deltag.c -o deltag.T
# Total Functions: 1

.text

# Function: gl_g_deltag
# Declared: Line 21 (Source lines: 23-61)
# Address: 0x0f0a31b0 - 0x0f0a3358 (Size: 424 bytes, Frame: 48)
.globl gl_g_deltag
.ent gl_g_deltag
gl_g_deltag:
    # Line 23
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,152 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 27
    la	$t9,__GLgetopenobj
    sd	$s0,16($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 23
    move	$s0,$a0
    # Line 27
    li	$v1,-1
    beq	$v0,$v1,.L0f0a3334
    # Line 28
    la	$t9,gl_ErrorHandler
    # Line 29
    bltz	$s0,.L0f0a32e4
    # Line 35
    la	$t9,gl_findhash
    # Line 33
    la	$a0,gl_openobj
    # Line 35
    move	$a1,$s0
    jalr	$t9
    lw	$a0,0($a0)
    beqz	$v0,.L0f0a3298
    # Line 42
    move	$a1,$s0
    la	$a0,gl_openobj
    la	$t9,gl_removehash
    # Line 39
    la	$a3,gl_n_jump
    # Line 41
    addiu	$a2,$v0,8
    sw	$a2,4($v0)
    # Line 39
    sw	$a3,0($v0)
    # Line 42
    jalr	$t9
    lw	$a0,0($a0)
    # Line 43
    la	$a4,gl_openobjhdr
    lw	$at,0($a4)
    lw	$a5,8($at)
    addiu	$a5,$a5,-4
    sw	$a5,8($at)
    # Line 44
    lw	$a4,0($a4)
    lw	$v0,16($a4)
    lw	$a5,4($v0)
    beq	$a5,$s0,.L0f0a330c
    lw	$a5,0($v0)
    # Line 49
    move	$a4,$v0
    # Line 50
    beqz	$a5,.L0f0a3270
    move	$a0,$a5
.L0f0a3258:
    lw	$at,4($a0)
    beq	$at,$s0,.L0f0a32c0
    lw	$v0,0($a0)
    # Line 57
    move	$a4,$a0
    # Line 58
    bnez	$v0,.L0f0a3258
    move	$a0,$v0
.L0f0a3270:
    # Line 60
    la	$t9,gl_ErrorHandler
    lw	$a2,-15176($gp)
    li	$a1,1
    jalr	$t9
    li	$a0,34
    # Line 61
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a3298:
    # Line 36
    la	$t9,gl_ErrorHandler
    lw	$a2,-15176($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,32
    # Line 37
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a32c0:
    # Line 54
    la	$t9,gl_free
    lw	$a1,-15176($gp)
    jalr	$t9
    # Line 53
    sw	$v0,0($a4)
    # Line 55
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a32e4:
    # Line 32
    la	$t9,gl_ErrorHandler
    lw	$a2,-15176($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,35
    # Line 33
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a330c:
    # Line 46
    la	$t9,gl_free
    lw	$a1,-15176($gp)
    move	$a0,$v0
    jalr	$t9
    # Line 45
    sw	$a5,16($a4)
    # Line 47
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a3334:
    # Line 28
    lw	$a2,-15176($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,5
    # Line 29
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_deltag

