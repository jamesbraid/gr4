# Source: ../object/closeobj.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/closeobj.c -o closeobj.T
# Total Functions: 2

.text

# Function: gl_g_closeobj
# Declared: Line 29 (Source lines: 30-69)
# Address: 0x0f09ca08 - 0x0f09caa8 (Size: 160 bytes, Frame: 16)
.globl gl_g_closeobj
.ent gl_g_closeobj
gl_g_closeobj:
    # Line 30
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,26688 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a2,gl_openobjhdr
    lw	$a1,0($a2)
    # Line 34
    la	$v0,gl_objchunksize
    # Line 30
    beqz	$a1,.L0f09ca84
    # Line 34
    lw	$v0,0($v0)
    lw	$a3,12($a1)
    sll	$v0,$v0,0x2
    slt	$v0,$v0,$a3
    beqzl	$v0,.L0f09ca5c
    sd	$ra,8($sp)
    lw	$v1,8($a1)
    sll	$v1,$v1,0x1
    slt	$v1,$v1,$a3
    bnez	$v1,.L0f09ca90
    # Line 37
    la	$t9,__GLcompactify
    sd	$ra,8($sp)
.L0f09ca5c:
    # Line 40
    la	$t9,gl_SetImmediateMode
    li	$a0,1
    jalr	$t9
    # Line 38
    sw	$zero,0($a2)
    # Line 43
    la	$a0,gl_replacemode
    la	$at,gl_openobj
    # Line 42
    li	$ra,-1
    # Line 43
    sw	$zero,0($a0)
    # Line 42
    sw	$ra,0($at)
    ld	$ra,8($sp)
.L0f09ca84:
    ld	$gp,0($sp)
    # Line 69
    jr	$ra
    addiu	$sp,$sp,16
.L0f09ca90:
    # Line 36
    la	$a0,gl_openobj
    sd	$ra,8($sp)
    # Line 37
    jalr	$t9
    lw	$a0,0($a0)
    b	.L0f09ca5c
    la	$a2,gl_openobjhdr
.end gl_g_closeobj

# Function: gl_g_isobj
# Declared: Line 81 (Source lines: 82-89)
# Address: 0x0f09caa8 - 0x0f09cb14 (Size: 108 bytes, Frame: 32)
.globl gl_g_isobj
.ent gl_g_isobj
gl_g_isobj:
    # Line 82
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,26528 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 85
    la	$t9,gl_findhash
    sd	$ra,8($sp)
    jalr	$t9
    li	$a1,-1
    ld	$gp,0($sp)
    beqz	$v0,.L0f09caf8
    # Line 86
    ld	$ra,8($sp)
    lw	$v1,28($v0)
    # Line 88
    ld	$ra,8($sp)
    # Line 86
    beqz	$v1,.L0f09cb04
    # Line 89
    li	$v0,1
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f09caf8:
    # Line 86
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0f09cb04:
    ld	$gp,0($sp)
    # Line 88
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_isobj

