# Source: ../dgl/remote.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/remote.c -o remote.T
# Total Functions: 5

.text

# Function: gl_rmt_winset
# Declared: Line 38 (Source lines: 40-63)
# Address: 0x0f1067c0 - 0x0f10683c (Size: 124 bytes, Frame: 48)
.globl gl_rmt_winset
.ent gl_rmt_winset
gl_rmt_winset:
    # Line 40
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-13688 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 49
    la	$t9,gl_findwin
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 40
    move	$s8,$a0
    # Line 49
    beqz	$v0,.L0f10680c
    # Line 54
    la	$t9,gl_g_winset
    jalr	$t9
    move	$a0,$s8
    ld	$s8,8($sp)
    ld	$ra,0($sp)
.L0f106800:
    ld	$gp,16($sp)
    # Line 63
    jr	$ra
    addiu	$sp,$sp,48
.L0f10680c:
    # Line 57
    la	$t9,gl_dgl_wid_to_gl
    move	$a0,$s8
    jalr	$t9
    addiu	$a1,$gp,-14488
    ld	$s8,8($sp)
    bltz	$v0,.L0f106800
    ld	$ra,0($sp)
    # Line 58
    la	$t9,gl_dgl_winset
    jalr	$t9
    move	$a0,$v0
    b	.L0f106800
    ld	$ra,0($sp)
.end gl_rmt_winset

# Function: gl_rmt_winclose
# Declared: Line 67 (Source lines: 69-89)
# Address: 0x0f10683c - 0x0f1068bc (Size: 128 bytes, Frame: 48)
.globl gl_rmt_winclose
.ent gl_rmt_winclose
gl_rmt_winclose:
    # Line 69
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-13812 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 77
    la	$t9,gl_findwin
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 69
    move	$s8,$a0
    # Line 77
    beqz	$v0,.L0f106888
    # Line 81
    la	$t9,gl_g_winclose
    jalr	$t9
    move	$a0,$s8
    ld	$s8,8($sp)
    ld	$ra,0($sp)
.L0f10687c:
    ld	$gp,16($sp)
    # Line 89
    jr	$ra
    addiu	$sp,$sp,48
.L0f106888:
    # Line 84
    la	$t9,gl_dgl_wid_to_gl
    la	$a1,sub_0f030000
    move	$a0,$s8
    jalr	$t9
    addiu	$a1,$a1,-24360
    ld	$s8,8($sp)
    bltz	$v0,.L0f10687c
    ld	$ra,0($sp)
    # Line 85
    la	$t9,gl_dgl_winclose
    jalr	$t9
    move	$a0,$v0
    b	.L0f10687c
    ld	$ra,0($sp)
.end gl_rmt_winclose

# Function: gl_rmt_windepth
# Declared: Line 92 (Source lines: 94-116)
# Address: 0x0f1068bc - 0x0f106954 (Size: 152 bytes, Frame: 48)
.globl gl_rmt_windepth
.ent gl_rmt_windepth
gl_rmt_windepth:
    # Line 94
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-13940 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 104
    la	$t9,gl_findwin
    sd	$s7,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 94
    move	$s7,$a0
    # Line 104
    beqz	$v0,.L0f10691c
    move	$s0,$v0
    # Line 110
    la	$t9,gl_g_windepth
    jalr	$t9
    move	$a0,$s7
    move	$s0,$v0
    ld	$s7,8($sp)
    ld	$ra,0($sp)
.L0f106908:
    ld	$gp,16($sp)
    # Line 116
    move	$v0,$s0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10691c:
    # Line 113
    la	$t9,gl_dgl_wid_to_gl
    la	$a1,sub_0f030000
    move	$a0,$s7
    jalr	$t9
    addiu	$a1,$a1,-24344
    ld	$s7,8($sp)
    bltz	$v0,.L0f106908
    ld	$ra,0($sp)
    # Line 114
    la	$t9,gl_dgl_windepth
    jalr	$t9
    move	$a0,$v0
    move	$s0,$v0
    b	.L0f106908
    ld	$ra,0($sp)
.end gl_rmt_windepth

# Function: gl_rmt_swinopen
# Declared: Line 122 (Source lines: 124-147)
# Address: 0x0f106954 - 0x0f1069ec (Size: 152 bytes, Frame: 48)
.globl gl_rmt_swinopen
.ent gl_rmt_swinopen
gl_rmt_swinopen:
    # Line 124
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-14092 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 135
    la	$t9,gl_findwin
    sd	$s7,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 124
    move	$s7,$a0
    # Line 135
    beqz	$v0,.L0f1069b4
    move	$s0,$v0
    # Line 140
    la	$t9,gl_g_swinopen
    jalr	$t9
    move	$a0,$s7
    move	$s0,$v0
    ld	$s7,8($sp)
    ld	$ra,0($sp)
.L0f1069a0:
    ld	$gp,16($sp)
    # Line 147
    move	$v0,$s0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1069b4:
    # Line 143
    la	$t9,gl_dgl_wid_to_gl
    la	$a1,sub_0f030000
    move	$a0,$s7
    jalr	$t9
    addiu	$a1,$a1,-24328
    ld	$s7,8($sp)
    bltz	$v0,.L0f1069a0
    ld	$ra,0($sp)
    # Line 144
    la	$t9,gl_dgl_swinopen
    jalr	$t9
    move	$a0,$v0
    move	$s0,$v0
    b	.L0f1069a0
    ld	$ra,0($sp)
.end gl_rmt_swinopen

# Function: __GLgl_islocal
# Declared: Line 197 (Source lines: 198-203)
# Address: 0x0f1069ec - 0x0f106a84 (Size: 152 bytes, Frame: 16)
.globl __GLgl_islocal
.ent __GLgl_islocal
__GLgl_islocal:
    # Line 198
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-14244 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 199
    la	$t9,gl_shlib_version
    sd	$ra,8($sp)
    jalr	$t9
    nop
    slti	$v0,$v0,4
    bnez	$v0,.L0f106a44
    # Line 200
    la	$a3,comm_curgfile
    lw	$a3,0($a3)
    li	$a2,1
    beqz	$a3,.L0f106a58
    # Line 203
    ld	$ra,8($sp)
    lw	$v0,4($a3)
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    xor	$v0,$v0,$a2
    jr	$ra
    sltiu	$v0,$v0,1
.L0f106a44:
    # Line 200
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f106a58:
    # Line 202
    la	$t9,gl_comm_default_init
    jalr	$t9
    nop
    ld	$gp,0($sp)
    ld	$ra,8($sp)
    lw	$v0,4($v0)
    addiu	$sp,$sp,16
    li	$v1,1
    xor	$v0,$v0,$v1
    jr	$ra
    sltiu	$v0,$v0,1
.end __GLgl_islocal

