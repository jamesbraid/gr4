# Source: ../object/genobj.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/genobj.c -o genobj.T
# Total Functions: 1

.text

# Function: gl_g_genobj
# Declared: Line 19 (Source lines: 20-25)
# Address: 0x0f0bf42c - 0x0f0bf494 (Size: 104 bytes, Frame: 16)
.globl gl_g_genobj
.ent gl_g_genobj
gl_g_genobj:
    # Line 20
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,15900 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 23
    la	$t9,__GLisobj
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a0,-14888($gp)
    beqz	$v0,.L0f0bf478
    ld	$ra,0($sp)
    # Line 24
    lw	$a0,-14888($gp)
.L0f0bf45c:
    # Line 23
    la	$t9,__GLisobj
    # Line 24
    addiu	$a0,$a0,-1
    # Line 23
    jalr	$t9
    # Line 24
    sw	$a0,-14888($gp)
    # Line 23
    bnez	$v0,.L0f0bf45c
    # Line 24
    lw	$a0,-14888($gp)
    ld	$ra,0($sp)
.L0f0bf478:
    # Line 25
    lw	$a1,-14888($gp)
    addiu	$a1,$a1,-1
    addiu	$v0,$a1,1
    sw	$a1,-14888($gp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_genobj

