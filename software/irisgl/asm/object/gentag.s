# Source: ../object/gentag.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/gentag.c -o gentag.T
# Total Functions: 1

.text

# Function: gl_g_gentag
# Declared: Line 16 (Source lines: 17-22)
# Address: 0x0f0bf494 - 0x0f0bf4fc (Size: 104 bytes, Frame: 16)
.globl gl_g_gentag
.ent gl_g_gentag
gl_g_gentag:
    # Line 17
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,15796 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 20
    la	$t9,__GListag
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a0,-14884($gp)
    beqz	$v0,.L0f0bf4e0
    ld	$ra,0($sp)
    # Line 21
    lw	$a0,-14884($gp)
.L0f0bf4c4:
    # Line 20
    la	$t9,__GListag
    # Line 21
    addiu	$a0,$a0,1
    # Line 20
    jalr	$t9
    # Line 21
    sw	$a0,-14884($gp)
    # Line 20
    bnez	$v0,.L0f0bf4c4
    # Line 21
    lw	$a0,-14884($gp)
    ld	$ra,0($sp)
.L0f0bf4e0:
    # Line 22
    lw	$a1,-14884($gp)
    addiu	$a1,$a1,1
    addiu	$v0,$a1,-1
    sw	$a1,-14884($gp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_gentag

