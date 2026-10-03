# Source: ../object/makeroom.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/makeroom.c -o makeroom.T
# Total Functions: 1

.text

# Function: gl_makeroom
# Declared: Line 27 (Source lines: 29-51)
# Address: 0x0f0dc7b4 - 0x0f0dc918 (Size: 356 bytes, Frame: 48)
.globl gl_makeroom
.ent gl_makeroom
gl_makeroom:
    # Line 29
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,27284 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_openobjhdr
    lw	$at,0($at)
    sd	$a0,0($sp)
    beqz	$at,.L0f0dc8fc
    # Line 33
    move	$v0,$zero
    la	$v1,gl_replacemode
    lw	$v1,0($v1)
    beqz	$v1,.L0f0dc804
    # Line 35
    lw	$a2,-14752($gp)
    la	$t9,gl_ErrorHandler
    li	$a1,2
    sd	$ra,16($sp)
    jalr	$t9
    li	$a0,74
    ld	$ra,16($sp)
.L0f0dc804:
    la	$a2,gl_currentpos
    la	$a1,gl_currentend
    lw	$a2,0($a2)
    lw	$a1,0($a1)
    subu	$a1,$a1,$a2
    ld	$a2,0($sp)
    addiu	$a1,$a1,-8
    sll	$a2,$a2,0x1
    slt	$a1,$a1,$a2
    bnez	$a1,.L0f0dc83c
    # Line 37
    li	$v0,1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0dc83c:
    # Line 38
    la	$t9,gl_addchunk
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a0,-14752($gp)
    move	$a0,$v0
    beqz	$v0,.L0f0dc908
    ld	$ra,16($sp)
    la	$v0,gl_openobjhdr
    la	$a3,gl_currentpos
    # Line 39
    lw	$v0,0($v0)
    lw	$a3,0($a3)
    lw	$a2,20($v0)
    la	$v1,gl_openobjhdr
    bne	$a2,$a3,.L0f0dc8a0
    # Line 41
    la	$a4,gl_objchunksize
    sw	$a0,20($v0)
    # Line 42
    lw	$at,0($a4)
    la	$a3,gl_currentpos
    lw	$v1,0($v1)
    sra	$at,$at,0x1
    addu	$at,$at,$at
    addu	$at,$at,$a0
    sw	$at,24($v1)
    b	.L0f0dc8a4
    lw	$a3,0($a3)
.L0f0dc8a0:
    la	$a4,gl_objchunksize
.L0f0dc8a4:
    la	$a1,gl_currentend
    # Line 44
    lw	$v0,0($a3)
    la	$a2,gl_currentpos
    sw	$v0,0($a0)
    # Line 45
    lw	$at,0($a2)
    lw	$at,4($at)
    sw	$at,4($a0)
    # Line 46
    la	$v0,gl_n_jump
    lw	$v1,0($a2)
    sw	$v0,0($v1)
    # Line 47
    lw	$at,0($a2)
    ld	$gp,8($sp)
    # Line 48
    sw	$a0,4($at)
    # Line 51
    li	$v0,1
    # Line 50
    lw	$v1,0($a4)
    # Line 49
    sw	$a0,0($a2)
    # Line 51
    addiu	$sp,$sp,48
    # Line 50
    sra	$v1,$v1,0x1
    addu	$v1,$v1,$v1
    addu	$v1,$v1,$a0
    # Line 51
    jr	$ra
    # Line 50
    sw	$v1,0($a1)
.L0f0dc8fc:
    ld	$gp,8($sp)
    # Line 33
    jr	$ra
    addiu	$sp,$sp,48
.L0f0dc908:
    # Line 39
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_makeroom

