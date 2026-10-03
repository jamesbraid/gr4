# Source: ../dgl/memory.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/memory.c -o memory.T
# Total Functions: 22

.text

# Function: gl_mem_pack_lstring
# Declared: Line 29 (Source lines: 37-58)
# Address: 0x0f0dd1f4 - 0x0f0dd328 (Size: 308 bytes, Frame: 240)
.globl gl_mem_pack_lstring
.ent gl_mem_pack_lstring
gl_mem_pack_lstring:
    # Line 37
    move	$t0,$a2
    addiu	$sp,$sp,-112
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,24660 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_endbuffer
    move	$s0,$a0
    sd	$s1,16($sp)
    lw	$at,0($at)
    addu	$s1,$a3,$a1
    addu	$v1,$a5,$s1
    sltu	$at,$at,$v1
    bnez	$at,.L0f0dd284
    move	$v0,$a1
.L0f0dd234:
    # Line 40
    li	$a7,17
    beqz	$s0,.L0f0dd2c0
    li	$a6,16
    li	$v1,1
    beq	$s0,$v1,.L0f0dd2c4
    # Line 46
    move	$a0,$v0
    # Line 40
    beq	$s0,$a6,.L0f0dd2c0
    move	$v1,$s0
    beq	$s0,$a7,.L0f0dd2c0
    li	$a6,257
    li	$at,256
    beq	$s0,$at,.L0f0dd308
    # Line 50
    move	$a0,$v0
    # Line 40
    beq	$v1,$a6,.L0f0dd2e4
    ld	$s0,0($sp)
.L0f0dd270:
    ld	$gp,24($sp)
    # Line 58
    move	$v0,$s1
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0dd284:
    sd	$a3,8($sp)
    sd	$t0,40($sp)
    sd	$a4,32($sp)
    # Line 39
    move	$a1,$v0
    la	$t9,gl_comm_makeroom
    sd	$ra,48($sp)
    move	$a0,$a3
    jalr	$t9
    addu	$a0,$a3,$a5
    ld	$a4,32($sp)
    ld	$t0,40($sp)
    ld	$a3,8($sp)
    ld	$ra,48($sp)
    b	.L0f0dd234
    addu	$s1,$a3,$v0
.L0f0dd2c0:
    # Line 46
    move	$a0,$v0
.L0f0dd2c4:
    move	$a1,$t0
    move	$a2,$a3
    move	$t9,$a4
    sd	$ra,48($sp)
    jalr	$a4
    ld	$s0,0($sp)
    b	.L0f0dd270
    ld	$ra,48($sp)
.L0f0dd2e4:
    # Line 54
    move	$a0,$v0
    move	$a1,$t0
    la	$t9,gl_mem_hton_long_array
    move	$a2,$a3
    sd	$ra,48($sp)
    bal gl_mem_hton_long_array
    ld	$s0,0($sp)
    b	.L0f0dd270
    ld	$ra,48($sp)
.L0f0dd308:
    # Line 50
    move	$a1,$t0
    la	$t9,gl_mem_hton_short_array
    move	$a2,$a3
    sd	$ra,48($sp)
    bal gl_mem_hton_short_array
    ld	$s0,0($sp)
    b	.L0f0dd270
    ld	$ra,48($sp)
.end gl_mem_pack_lstring

# Function: gl_mem_pack_array
# Declared: Line 69 (Source lines: 76-80)
# Address: 0x0f0dd328 - 0x0f0dd3c4 (Size: 156 bytes, Frame: 224)
.globl gl_mem_pack_array
.ent gl_mem_pack_array
gl_mem_pack_array:
    # Line 76
    addiu	$sp,$sp,-96
    sd	$ra,40($sp)
    sd	$s8,16($sp)
    move	$s8,$a3
    sd	$s0,0($sp)
    move	$s0,$a2
    sd	$s7,8($sp)
    sd	$gp,24($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,24352 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_endbuffer
    move	$s7,$a1
    sd	$s1,32($sp)
    lw	$at,0($at)
    addu	$s1,$a2,$a0
    addu	$v1,$a4,$s1
    sltu	$at,$at,$v1
    beqz	$at,.L0f0dd38c
    move	$v0,$a0
    # Line 78
    la	$t9,gl_comm_makeroom
    move	$a1,$v0
    jalr	$t9
    addu	$a0,$s0,$a4
    addu	$s1,$s0,$v0
.L0f0dd38c:
    # Line 79
    move	$a0,$v0
    move	$a1,$s7
    move	$a2,$s0
    jalr	$s8
    move	$t9,$s8
    ld	$gp,24($sp)
    # Line 80
    ld	$s0,0($sp)
    move	$v0,$s1
    ld	$s1,32($sp)
    ld	$ra,40($sp)
    ld	$s7,8($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_mem_pack_array

# Function: gl_mem_unpack_array
# Declared: Line 88 (Source lines: 91-97)
# Address: 0x0f0dd3c4 - 0x0f0dd428 (Size: 100 bytes, Frame: 192)
.globl gl_mem_unpack_array
.ent gl_mem_unpack_array
gl_mem_unpack_array:
    # Line 91
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a1
    # Line 96
    addiu	$a1,$a1,4
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 91
    lui	$v0,0xfff5
    addiu	$v0,$v0,24196
    # Line 94
    lw	$at,0($s8)
    # Line 91
    # addu	gp,t9,v0 (gp setup)
    move	$t9,$a2
    sd	$at,24($sp)
    # Line 96
    jalr	$t9
    move	$a2,$at
    ld	$gp,16($sp)
    ld	$v0,24($sp)
    # Line 97
    ld	$ra,0($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,4
.end gl_mem_unpack_array

# Function: gl_mem_copy_array
# Declared: Line 104 (Source lines: 118-157)
# Address: 0x0f0dd428 - 0x0f0dd7b0 (Size: 904 bytes, Frame: 0)
.globl gl_mem_copy_array
.ent gl_mem_copy_array
gl_mem_copy_array:
    # Line 120
    move	$a5,$a1
    # Line 118
    andi	$at,$a1,0x3
    beqz	$at,.L0f0dd5a0
    # Line 120
    slti	$v0,$a2,5
.L0f0dd438:
    bnez	$v0,.L0f0dd50c
    # Line 119
    move	$a6,$a0
    # Line 120
    addiu	$a3,$a2,-1
    sra	$a0,$a3,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a3
    sra	$a0,$a0,0x2
    andi	$v1,$a0,0x1
    beqz	$v1,.L0f0dd490
    move	$t1,$a2
    # Line 122
    lbu	$v1,0($a5)
    sb	$v1,0($a6)
    # Line 123
    lbu	$v0,1($a5)
    sb	$v0,1($a6)
    # Line 124
    lbu	$at,2($a5)
    sb	$at,2($a6)
    # Line 128
    addiu	$a2,$a2,-4
    # Line 125
    lbu	$a3,3($a5)
    # Line 127
    addiu	$a5,$a5,4
    # Line 126
    addiu	$a6,$a6,4
    # Line 125
    sb	$a3,-1($a6)
    move	$t1,$a2
.L0f0dd490:
    move	$a7,$a5
    move	$t0,$a6
    sra	$a3,$a0,0x1
    beqz	$a3,.L0f0dd50c
    move	$a0,$t0
    move	$a1,$t1
    move	$a4,$a7
.L0f0dd4ac:
    # Line 122
    lbu	$at,0($a4)
    sb	$at,0($a0)
    # Line 123
    lbu	$a3,1($a4)
    sb	$a3,1($a0)
    # Line 124
    lbu	$v1,2($a4)
    sb	$v1,2($a0)
    # Line 125
    lbu	$v0,3($a4)
    sb	$v0,3($a0)
    # Line 122
    lbu	$at,4($a4)
    sb	$at,4($a0)
    # Line 123
    lbu	$a3,5($a4)
    sb	$a3,5($a0)
    # Line 124
    lbu	$v1,6($a4)
    # Line 127
    addiu	$a4,$a4,8
    # Line 126
    addiu	$a0,$a0,8
    # Line 124
    sb	$v1,-2($a0)
    # Line 128
    addiu	$a1,$a1,-8
    # Line 125
    lbu	$at,-1($a4)
    # Line 128
    slti	$v0,$a1,5
    beqz	$v0,.L0f0dd4ac
    # Line 125
    sb	$at,-1($a0)
    move	$a6,$a0
    move	$a5,$a4
    move	$a2,$a1
.L0f0dd50c:
    # Line 130
    addiu	$a2,$a2,-1
    slti	$v0,$a2,0
    bnez	$v0,.L0f0dd598
    li	$a4,-1
    addiu	$a1,$a2,1
    andi	$a0,$a1,0x3
    beqz	$a0,.L0f0dd54c
    move	$t0,$a2
.L0f0dd52c:
    addiu	$a2,$a2,-1
    # Line 131
    addiu	$a6,$a6,1
    addiu	$a5,$a5,1
    lbu	$v1,-1($a5)
    addi	$a0,$a0,-1
    bnez	$a0,.L0f0dd52c
    sb	$v1,-1($a6)
    move	$t0,$a2
.L0f0dd54c:
    move	$t1,$a5
    move	$a7,$a6
    sra	$a3,$a1,0x2
    beqz	$a3,.L0f0dd598
    move	$a0,$a7
    move	$a1,$t0
    move	$a2,$t1
.L0f0dd568:
    lbu	$a3,0($a2)
    sb	$a3,0($a0)
    lbu	$v1,1($a2)
    sb	$v1,1($a0)
    lbu	$v0,2($a2)
    addiu	$a0,$a0,4
    sb	$v0,-2($a0)
    addiu	$a2,$a2,4
    lbu	$at,-1($a2)
    # Line 130
    addiu	$a1,$a1,-4
    bne	$a1,$a4,.L0f0dd568
    # Line 131
    sb	$at,-1($a0)
.L0f0dd598:
    # Line 157
    jr	$ra
    move	$v0,$zero
.L0f0dd5a0:
    # Line 118
    andi	$at,$a0,0x3
    bnez	$at,.L0f0dd438
    # Line 138
    andi	$a7,$a2,0x3
    # Line 139
    sra	$a2,$a2,0x2
    slti	$v0,$a2,5
    bnez	$v0,.L0f0dd684
    addiu	$at,$a2,-1
    sra	$a4,$at,0x1
    srl	$a4,$a4,0x1e
    addu	$a4,$a4,$at
    sra	$a4,$a4,0x2
    andi	$v1,$a4,0x1
    beqz	$v1,.L0f0dd608
    move	$t2,$a2
    # Line 141
    lw	$a3,0($a1)
    sw	$a3,0($a0)
    # Line 142
    lw	$v1,4($a1)
    sw	$v1,4($a0)
    # Line 143
    lw	$v0,8($a1)
    sw	$v0,8($a0)
    # Line 147
    addiu	$a2,$a2,-4
    # Line 144
    lw	$at,12($a1)
    # Line 146
    addiu	$a1,$a1,16
    # Line 145
    addiu	$a0,$a0,16
    # Line 144
    sw	$at,-4($a0)
    move	$t2,$a2
.L0f0dd608:
    move	$t1,$a0
    sra	$at,$a4,0x1
    beqz	$at,.L0f0dd684
    move	$t0,$a1
    move	$a6,$t2
    move	$a5,$t1
    move	$a4,$t0
.L0f0dd624:
    # Line 141
    lw	$v0,0($a4)
    sw	$v0,0($a5)
    # Line 142
    lw	$at,4($a4)
    sw	$at,4($a5)
    # Line 143
    lw	$a3,8($a4)
    sw	$a3,8($a5)
    # Line 144
    lw	$v1,12($a4)
    sw	$v1,12($a5)
    # Line 141
    lw	$v0,16($a4)
    sw	$v0,16($a5)
    # Line 142
    lw	$at,20($a4)
    sw	$at,20($a5)
    # Line 143
    lw	$a3,24($a4)
    # Line 146
    addiu	$a4,$a4,32
    # Line 145
    addiu	$a5,$a5,32
    # Line 143
    sw	$a3,-8($a5)
    # Line 147
    addiu	$a6,$a6,-8
    # Line 144
    lw	$v0,-4($a4)
    # Line 147
    slti	$v1,$a6,5
    beqz	$v1,.L0f0dd624
    # Line 144
    sw	$v0,-4($a5)
    move	$a0,$a5
    move	$a1,$a4
    move	$a2,$a6
.L0f0dd684:
    # Line 149
    addiu	$a2,$a2,-1
    slti	$v1,$a2,0
    bnez	$v1,.L0f0dd714
    addiu	$a6,$a2,1
    andi	$a5,$a6,0x3
    beqz	$a5,.L0f0dd6bc
    li	$a4,-1
.L0f0dd6a0:
    addiu	$a2,$a2,-1
    # Line 150
    addiu	$a0,$a0,4
    addiu	$a1,$a1,4
    lw	$a3,-4($a1)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f0dd6a0
    sw	$a3,-4($a0)
.L0f0dd6bc:
    move	$t2,$a2
    move	$t1,$a0
    sra	$at,$a6,0x2
    beqz	$at,.L0f0dd714
    move	$t0,$a1
    move	$a0,$t2
    move	$a5,$t1
    move	$a2,$t0
.L0f0dd6dc:
    lw	$at,0($a2)
    sw	$at,0($a5)
    lw	$a3,4($a2)
    sw	$a3,4($a5)
    lw	$v1,8($a2)
    addiu	$a5,$a5,16
    sw	$v1,-8($a5)
    addiu	$a2,$a2,16
    lw	$v0,-4($a2)
    # Line 149
    addiu	$a0,$a0,-4
    bne	$a0,$a4,.L0f0dd6dc
    # Line 150
    sw	$v0,-4($a5)
    move	$a1,$a2
    move	$a0,$a5
.L0f0dd714:
    # Line 151
    move	$a6,$a0
    # Line 153
    addiu	$a7,$a7,-1
    slti	$v0,$a7,0
    bnez	$v0,.L0f0dd598
    # Line 152
    move	$a5,$a1
    # Line 153
    li	$a4,-1
    addiu	$a1,$a7,1
    andi	$a0,$a1,0x3
    beqz	$a0,.L0f0dd75c
    move	$t2,$a7
.L0f0dd73c:
    addiu	$a7,$a7,-1
    # Line 154
    addiu	$a6,$a6,1
    addiu	$a5,$a5,1
    lbu	$v1,-1($a5)
    addi	$a0,$a0,-1
    bnez	$a0,.L0f0dd73c
    sb	$v1,-1($a6)
    move	$t2,$a7
.L0f0dd75c:
    move	$t0,$a5
    move	$t1,$a6
    sra	$a3,$a1,0x2
    beqz	$a3,.L0f0dd7a8
    move	$a1,$t1
    move	$a2,$t2
    move	$a0,$t0
.L0f0dd778:
    lbu	$a3,0($a0)
    sb	$a3,0($a1)
    lbu	$v1,1($a0)
    sb	$v1,1($a1)
    lbu	$v0,2($a0)
    addiu	$a1,$a1,4
    sb	$v0,-2($a1)
    addiu	$a0,$a0,4
    lbu	$at,-1($a0)
    # Line 153
    addiu	$a2,$a2,-4
    bne	$a2,$a4,.L0f0dd778
    # Line 154
    sb	$at,-1($a1)
.L0f0dd7a8:
    b	.L0f0dd598
    nop
.end gl_mem_copy_array

# Function: gl_mem_unpack_lrect
# Declared: Line 164 (Source lines: 168-179)
# Address: 0x0f0dd7b0 - 0x0f0dd898 (Size: 232 bytes, Frame: 224)
.globl gl_mem_unpack_lrect
.ent gl_mem_unpack_lrect
gl_mem_unpack_lrect:
    # Line 168
    move	$t1,$a0
    # Line 171
    lw	$a7,0($a1)
    # Line 168
    dsll32	$t3,$a2,0x10
    dsll32	$t2,$a5,0x10
    addiu	$sp,$sp,-96
    sd	$s0,32($sp)
    move	$s0,$a1
    dsra32	$t2,$t2,0x10
    dsra32	$t3,$t3,0x10
    dsll32	$v0,$a4,0x10
    dsll32	$t8,$a3,0x10
    sd	$gp,24($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,23192 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$t0,gl_dgl_pixmodes
    dsra32	$t8,$t8,0x10
    sd	$t8,8($sp)
    # Line 173
    lw	$t8,4($t0)
    # Line 168
    dsra32	$v0,$v0,0x10
    sd	$v0,0($sp)
    # Line 173
    bnez	$t8,.L0f0dd818
    lw	$t0,8($t0)
    sd	$a7,16($sp)
    beqz	$t0,.L0f0dd87c
    sd	$ra,40($sp)
.L0f0dd818:
    sd	$a7,16($sp)
    # Line 174
    move	$a5,$t0
    move	$a4,$t8
    move	$a1,$t1
    addiu	$a0,$s0,4
    sd	$ra,40($sp)
    ld	$a2,0($sp)
    ld	$a3,8($sp)
    la	$t9,gl_mem_strideread
    subu	$a2,$a2,$t3
    subu	$a3,$t2,$a3
    addiu	$a3,$a3,1
    bal gl_mem_strideread
    addiu	$a2,$a2,1
    ld	$ra,40($sp)
.L0f0dd854:
    ld	$v0,16($sp)
    ld	$gp,24($sp)
    # Line 179
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,4
.L0f0dd87c:
    # Line 178
    la	$t9,gl_mem_ntoh_long_array
    move	$a0,$t1
    ld	$a2,16($sp)
    bal gl_mem_ntoh_long_array
    addiu	$a1,$s0,4
    b	.L0f0dd854
    ld	$ra,40($sp)
.end gl_mem_unpack_lrect

# Function: gl_mem_unpack_lrectproc
# Declared: Line 186 (Source lines: 191-202)
# Address: 0x0f0dd898 - 0x0f0dd93c (Size: 164 bytes, Frame: 208)
.globl gl_mem_unpack_lrectproc
.ent gl_mem_unpack_lrectproc
gl_mem_unpack_lrectproc:
    # Line 191
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    lui	$a6,0xfff5
    addiu	$a6,$a6,22960
    addu	$gp,$t9,$a6
    la	$a5,gl_dgl_pixmodes
    move	$a7,$a0
    # Line 194
    lw	$a4,0($a1)
    # Line 196
    lw	$t0,4($a5)
    sd	$s0,16($sp)
    # Line 191
    move	$s0,$a1
    # Line 196
    bnez	$t0,.L0f0dd8d8
    lw	$a5,8($a5)
    sd	$a4,0($sp)
    beqz	$a5,.L0f0dd920
    sd	$ra,24($sp)
.L0f0dd8d8:
    sd	$a4,0($sp)
    # Line 197
    move	$a4,$t0
    la	$t9,gl_mem_strideread
    move	$a1,$a7
    sd	$ra,24($sp)
    bal gl_mem_strideread
    addiu	$a0,$s0,4
    ld	$ra,24($sp)
.L0f0dd8f8:
    ld	$v0,0($sp)
    ld	$gp,8($sp)
    # Line 202
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,16($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,4
.L0f0dd920:
    # Line 201
    la	$t9,gl_mem_ntoh_long_array
    move	$a0,$a7
    ld	$a2,0($sp)
    bal gl_mem_ntoh_long_array
    addiu	$a1,$s0,4
    b	.L0f0dd8f8
    ld	$ra,24($sp)
.end gl_mem_unpack_lrectproc

# Function: gl_mem_strideread
# Declared: Line 206 (Source lines: 210-275)
# Address: 0x0f0dd93c - 0x0f0ddbf8 (Size: 700 bytes, Frame: 176)
.globl gl_mem_strideread
.ent gl_mem_strideread
gl_mem_strideread:
    # Line 226
    li	$at,32
    # Line 210
    addiu	$sp,$sp,-176
    sd	$s3,32($sp)
    move	$s3,$a4
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s2,24($sp)
    move	$s2,$a5
    sd	$gp,56($sp)
    sd	$s0,40($sp)
    lui	$s0,0xfff5
    addiu	$s0,$s0,22796
    addu	$gp,$t9,$s0
    # Line 218
    la	$a7,gl_dgl_pixmodes
    sd	$s5,80($sp)
    lw	$a7,0($a7)
    # Line 210
    move	$s0,$a1
    # Line 218
    beqz	$a5,.L0f0ddbe4
    sra	$a7,$a7,0x10
    # Line 226
    subu	$at,$at,$s2
    sd	$s8,88($sp)
    li	$s5,-1
    sllv	$s5,$s5,$at
.L0f0dd998:
    # Line 228
    mult	$a2,$a7
    # Line 232
    li	$v0,1
    # Line 228
    mflo	$s8
    addu	$a1,$s8,$s2
    andi	$a0,$a1,0x1f
    beqz	$a0,.L0f0ddbf0
    # Line 234
    addiu	$a2,$a3,-1
    # Line 232
    li	$v1,32
    subu	$v1,$v1,$a0
    sllv	$v0,$v0,$v1
    addiu	$v0,$v0,-1
    sd	$v0,0($sp)
.L0f0dd9c8:
    andi	$v1,$a3,0x1
    # Line 234
    addiu	$a0,$a1,31
    srl	$a0,$a0,0x5
    slti	$a6,$a0,2
    bnez	$a6,.L0f0dda20
    sd	$s4,72($sp)
    # Line 238
    beqz	$a3,.L0f0dda9c
    move	$s4,$a2
    addiu	$a6,$a0,-2
    sd	$ra,104($sp)
    sd	$s7,96($sp)
    sltu	$s7,$a0,$s3
    sll	$a6,$a6,0x2
    sll	$at,$a0,0x2
    sd	$s6,112($sp)
    ld	$s6,0($sp)
    sd	$at,8($sp)
    sd	$a6,64($sp)
    nor	$s6,$s6,$zero
    sd	$s6,16($sp)
    b	.L0f0ddb68
    nor	$s6,$s5,$zero
.L0f0dda20:
    sd	$s6,112($sp)
    sd	$s7,96($sp)
    ld	$v0,0($sp)
    # Line 263
    move	$s4,$a2
    beqz	$a3,.L0f0dda9c
    # Line 261
    or	$s5,$s5,$v0
    # Line 263
    move	$a1,$a3
    sltu	$s7,$a0,$s3
    beqz	$v1,.L0f0dda88
    nor	$s6,$s5,$zero
    # Line 268
    addiu	$s1,$s1,4
    # Line 266
    lw	$at,0($s0)
    lw	$a6,-4($s1)
    # Line 267
    addiu	$s0,$s0,4
    # Line 266
    and	$at,$at,$s5
    and	$a6,$a6,$s6
    or	$a6,$a6,$at
    # Line 268
    beqz	$s7,.L0f0dda84
    # Line 266
    sw	$a6,-4($s0)
    # Line 272
    addu	$at,$s8,$s2
    addiu	$at,$at,31
    srl	$at,$at,0x5
    subu	$at,$s3,$at
    sll	$at,$at,0x2
    addu	$s0,$at,$s0
.L0f0dda84:
    # Line 263
    addiu	$s4,$s4,-1
.L0f0dda88:
    sra	$v0,$a1,0x1
    bnez	$v0,.L0f0ddae8
    # Line 267
    addiu	$s0,$s0,4
.L0f0dda94:
    ld	$s7,96($sp)
    ld	$s6,112($sp)
.L0f0dda9c:
    # Line 275
    move	$v0,$zero
    ld	$gp,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    ld	$s4,72($sp)
    ld	$s5,80($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0ddac8:
    # Line 272
    addiu	$v1,$v1,31
    srl	$v1,$v1,0x5
    subu	$v1,$s3,$v1
    sll	$v1,$v1,0x2
    addu	$s0,$v1,$s0
.L0f0ddadc:
    # Line 263
    addiu	$s4,$s4,-2
    beq	$s4,$a6,.L0f0dda94
    # Line 267
    addiu	$s0,$s0,4
.L0f0ddae8:
    # Line 266
    lw	$v0,-4($s0)
    lw	$at,0($s1)
    # Line 268
    addiu	$s1,$s1,8
    # Line 266
    and	$v0,$v0,$s5
    and	$at,$at,$s6
    or	$at,$at,$v0
    # Line 268
    beqz	$s7,.L0f0ddb20
    # Line 266
    sw	$at,-4($s0)
    # Line 272
    addu	$v0,$s8,$s2
    addiu	$v0,$v0,31
    srl	$v0,$v0,0x5
    subu	$v0,$s3,$v0
    sll	$v0,$v0,0x2
    addu	$s0,$v0,$s0
.L0f0ddb20:
    # Line 266
    lw	$a6,0($s0)
    lw	$v1,-4($s1)
    # Line 267
    addiu	$s0,$s0,4
    # Line 266
    and	$a6,$a6,$s5
    and	$v1,$v1,$s6
    or	$v1,$v1,$a6
    li	$a6,-1
    # Line 268
    beqz	$s7,.L0f0ddadc
    # Line 266
    sw	$v1,-4($s0)
    b	.L0f0ddac8
    # Line 272
    addu	$v1,$s8,$s2
.L0f0ddb4c:
    # Line 258
    addiu	$a6,$a6,31
    srl	$a6,$a6,0x5
    subu	$a6,$s3,$a6
    sll	$a6,$a6,0x2
    addu	$s0,$a6,$s0
.L0f0ddb60:
    # Line 238
    addiu	$s4,$s4,-1
    beq	$s4,$a0,.L0f0ddbd4
.L0f0ddb68:
    ld	$a2,64($sp)
    # Line 246
    addiu	$a1,$s1,4
    addiu	$a0,$s0,4
    # Line 241
    lw	$t0,0($s0)
    lw	$a7,0($s1)
    # Line 246
    la	$t9,gl_mem_ntoh_long_array
    # Line 241
    and	$t0,$t0,$s5
    and	$a7,$a7,$s6
    or	$a7,$a7,$t0
    # Line 246
    bal gl_mem_ntoh_long_array
    # Line 241
    sw	$a7,0($s0)
    ld	$at,8($sp)
    # Line 252
    ld	$a6,16($sp)
    # Line 247
    addu	$v0,$at,$s0
    # Line 248
    addu	$s1,$at,$s1
    # Line 252
    lw	$at,-4($s1)
    lw	$v1,-4($v0)
    and	$at,$at,$a6
    ld	$a6,0($sp)
    li	$a0,-1
    # Line 254
    addiu	$s0,$v0,0
    # Line 252
    and	$v1,$v1,$a6
    or	$at,$at,$v1
    # Line 254
    beqz	$s7,.L0f0ddb60
    # Line 252
    sw	$at,-4($v0)
    b	.L0f0ddb4c
    # Line 258
    addu	$a6,$s8,$s2
.L0f0ddbd4:
    ld	$s7,96($sp)
    ld	$ra,104($sp)
    b	.L0f0dda9c
    ld	$s6,112($sp)
.L0f0ddbe4:
    # Line 228
    move	$s5,$zero
    b	.L0f0dd998
    sd	$s8,88($sp)
.L0f0ddbf0:
    b	.L0f0dd9c8
    sd	$zero,0($sp)
.end gl_mem_strideread

# Function: gl_mem_pack_lrect
# Declared: Line 279 (Source lines: 286-294)
# Address: 0x0f0ddbf8 - 0x0f0ddd04 (Size: 268 bytes, Frame: 144)
.globl gl_mem_pack_lrect
.ent gl_mem_pack_lrect
gl_mem_pack_lrect:
    # Line 286
    move	$t2,$a5
    move	$t3,$a4
    move	$t8,$a3
    addiu	$sp,$sp,-144
    sd	$gp,16($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,22096 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_dgl_pixmodes
    sd	$s0,24($sp)
    move	$s0,$a2
    lw	$at,4($at)
    sd	$s5,8($sp)
    move	$s5,$a1
    beqz	$at,.L0f0ddccc
    move	$v0,$a0
    # Line 289
    la	$v1,comm_endbuffer
    sd	$s1,0($sp)
    lw	$v1,0($v1)
    addu	$s1,$s0,$v0
    addu	$t0,$a7,$s1
    sltu	$v1,$v1,$t0
    beqz	$v1,.L0f0ddc8c
    sd	$ra,32($sp)
    sd	$a6,64($sp)
    sd	$t2,56($sp)
    sd	$t3,48($sp)
    # Line 292
    la	$t9,gl_comm_makeroom
    sd	$t8,40($sp)
    move	$a1,$v0
    jalr	$t9
    addu	$a0,$s0,$a7
    addu	$s1,$s0,$v0
    ld	$t8,40($sp)
    ld	$t3,48($sp)
    ld	$t2,56($sp)
    ld	$a6,64($sp)
.L0f0ddc8c:
    # Line 293
    move	$a0,$v0
    move	$a1,$s5
    move	$a2,$t8
    la	$t9,gl_mem_stridewrite
    move	$a3,$t3
    move	$a4,$t2
    bal gl_mem_stridewrite
    move	$a5,$a6
    ld	$gp,16($sp)
    # Line 294
    ld	$s0,24($sp)
    move	$v0,$s1
    ld	$ra,32($sp)
    ld	$s1,0($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0ddccc:
    # Line 288
    move	$a0,$v0
    move	$a1,$s5
    move	$a2,$s0
    la	$t9,gl_mem_pack_array
    move	$a4,$a7
    sd	$ra,32($sp)
    bal gl_mem_pack_array
    la	$a3,gl_mem_hton_long_array
    ld	$gp,16($sp)
    # Line 289
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end gl_mem_pack_lrect

# Function: gl_mem_stridewrite
# Declared: Line 298 (Source lines: 301-326)
# Address: 0x0f0ddd04 - 0x0f0dde48 (Size: 324 bytes, Frame: 128)
.globl gl_mem_stridewrite
.ent gl_mem_stridewrite
gl_mem_stridewrite:
    # Line 301
    addiu	$sp,$sp,-128
    sd	$gp,32($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,21828 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$t1,gl_dgl_pixmodes
    # Line 305
    lw	$at,0($t1)
    subu	$v0,$a4,$a2
    addiu	$v0,$v0,1
    andi	$at,$at,0xffff
    mult	$at,$v0
    # Line 309
    subu	$a7,$a5,$a3
    sd	$s5,24($sp)
    li	$s5,-1
    sd	$s1,16($sp)
    # Line 301
    move	$s1,$a1
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s2,40($sp)
    # Line 313
    move	$s2,$a7
    sd	$s3,0($sp)
    # Line 305
    lw	$s3,8($t1)
    # Line 309
    lw	$t1,4($t1)
    # Line 305
    mflo	$t9
    addu	$s3,$s3,$t9
    addiu	$s3,$s3,31
    sra	$t2,$s3,0x4
    srl	$t2,$t2,0x1b
    addu	$t2,$t2,$s3
    sra	$t2,$t2,0x5
    # Line 309
    sll	$s3,$t2,0x2
    slt	$at,$t2,$t1
    beqz	$at,.L0f0ddde0
    # Line 305
    move	$t0,$t2
    # Line 312
    subu	$a0,$t1,$t2
    sd	$s6,64($sp)
    # Line 313
    beq	$a7,$s5,.L0f0dde24
    sd	$s4,48($sp)
    sd	$ra,56($sp)
    sll	$s6,$a0,0x2
    sll	$s4,$t0,0x2
.L0f0ddda8:
    # Line 314
    move	$a0,$s0
    # Line 313
    addiu	$s2,$s2,-1
    # Line 314
    move	$a2,$s3
    la	$t9,gl_mem_hton_long_array
    move	$a1,$s1
    # Line 316
    addu	$s1,$s4,$s1
    # Line 314
    bal gl_mem_hton_long_array
    # Line 317
    addu	$s1,$s6,$s1
    # Line 313
    bne	$s2,$s5,.L0f0ddda8
    # Line 315
    addu	$s0,$s4,$s0
    ld	$s4,48($sp)
    ld	$ra,56($sp)
    b	.L0f0dde24
    ld	$s6,64($sp)
.L0f0ddde0:
    # Line 320
    move	$s2,$a7
    beq	$a7,$s5,.L0f0dde24
    sd	$s4,48($sp)
    sd	$ra,56($sp)
    sll	$s4,$t0,0x2
    # Line 321
    move	$a1,$s1
.L0f0dddf8:
    la	$t9,gl_mem_hton_long_array
    # Line 320
    addiu	$s2,$s2,-1
    # Line 321
    move	$a0,$s0
    bal gl_mem_hton_long_array
    move	$a2,$s3
    # Line 322
    addu	$s0,$s4,$s0
    # Line 323
    addu	$s1,$s4,$s1
    # Line 320
    bne	$s2,$s5,.L0f0dddf8
    # Line 321
    move	$a1,$s1
    ld	$s4,48($sp)
    ld	$ra,56($sp)
.L0f0dde24:
    # Line 326
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    ld	$s3,0($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_mem_stridewrite

# Function: gl_mem_hton_short_array
# Declared: Line 344 (Source lines: 349-364)
# Address: 0x0f0dde48 - 0x0f0ddfb4 (Size: 364 bytes, Frame: 0)
.globl gl_mem_hton_short_array
.ent gl_mem_hton_short_array
gl_mem_hton_short_array:
    # Line 349
    sra	$a6,$a2,0x1
    slti	$at,$a6,5
    bnez	$at,.L0f0ddf20
    addiu	$at,$a6,-1
    sra	$a3,$at,0x1
    srl	$a3,$a3,0x1e
    addu	$a3,$a3,$at
    sra	$a3,$a3,0x2
    andi	$v0,$a3,0x1
    beqz	$v0,.L0f0ddea4
    move	$t1,$a6
    # Line 351
    lh	$a2,0($a1)
    sh	$a2,0($a0)
    # Line 352
    lh	$v1,2($a1)
    sh	$v1,2($a0)
    # Line 353
    lh	$v0,4($a1)
    sh	$v0,4($a0)
    # Line 357
    addiu	$a6,$a6,-4
    # Line 354
    lh	$at,6($a1)
    # Line 356
    addiu	$a1,$a1,8
    # Line 355
    addiu	$a0,$a0,8
    # Line 354
    sh	$at,-2($a0)
    move	$t1,$a6
.L0f0ddea4:
    move	$a7,$a1
    move	$t0,$a0
    sra	$at,$a3,0x1
    beqz	$at,.L0f0ddf20
    move	$a5,$t0
    move	$a3,$t1
    move	$a4,$a7
.L0f0ddec0:
    # Line 351
    lh	$v0,0($a4)
    sh	$v0,0($a5)
    # Line 352
    lh	$at,2($a4)
    sh	$at,2($a5)
    # Line 353
    lh	$a2,4($a4)
    sh	$a2,4($a5)
    # Line 354
    lh	$v1,6($a4)
    sh	$v1,6($a5)
    # Line 351
    lh	$v0,8($a4)
    sh	$v0,8($a5)
    # Line 352
    lh	$at,10($a4)
    sh	$at,10($a5)
    # Line 353
    lh	$a2,12($a4)
    # Line 356
    addiu	$a4,$a4,16
    # Line 355
    addiu	$a5,$a5,16
    # Line 353
    sh	$a2,-4($a5)
    # Line 357
    addiu	$a3,$a3,-8
    # Line 354
    lh	$v0,-2($a4)
    # Line 357
    slti	$v1,$a3,5
    beqz	$v1,.L0f0ddec0
    # Line 354
    sh	$v0,-2($a5)
    move	$a0,$a5
    move	$a1,$a4
    move	$a6,$a3
.L0f0ddf20:
    # Line 359
    addiu	$a6,$a6,-1
    slti	$v1,$a6,0
    bnez	$v1,.L0f0ddfac
    li	$a4,-1
    addiu	$a5,$a6,1
    andi	$a3,$a5,0x3
    beqz	$a3,.L0f0ddf60
    move	$t0,$a0
.L0f0ddf40:
    addiu	$a6,$a6,-1
    # Line 362
    addiu	$a1,$a1,2
    # Line 361
    addiu	$a0,$a0,2
    # Line 360
    lh	$a2,-2($a1)
    addi	$a3,$a3,-1
    bnez	$a3,.L0f0ddf40
    sh	$a2,-2($a0)
    move	$t0,$a0
.L0f0ddf60:
    sra	$at,$a5,0x2
    move	$t1,$a6
    beqz	$at,.L0f0ddfac
    move	$a7,$a1
    move	$a3,$t1
    move	$a1,$t0
    move	$a0,$a7
.L0f0ddf7c:
    lh	$at,0($a0)
    sh	$at,0($a1)
    lh	$a2,2($a0)
    sh	$a2,2($a1)
    lh	$v1,4($a0)
    # Line 362
    addiu	$a0,$a0,8
    # Line 360
    sh	$v1,4($a1)
    # Line 361
    addiu	$a1,$a1,8
    # Line 360
    lh	$v0,-2($a0)
    # Line 359
    addiu	$a3,$a3,-4
    bne	$a3,$a4,.L0f0ddf7c
    # Line 360
    sh	$v0,-2($a1)
.L0f0ddfac:
    # Line 364
    jr	$ra
    move	$v0,$zero
.end gl_mem_hton_short_array

# Function: gl_mem_ntoh_short_array
# Declared: Line 371 (Source lines: 376-391)
# Address: 0x0f0ddfb4 - 0x0f0de120 (Size: 364 bytes, Frame: 0)
.globl gl_mem_ntoh_short_array
.ent gl_mem_ntoh_short_array
gl_mem_ntoh_short_array:
    # Line 376
    sra	$a6,$a2,0x1
    slti	$at,$a6,5
    bnez	$at,.L0f0de08c
    addiu	$at,$a6,-1
    sra	$a3,$at,0x1
    srl	$a3,$a3,0x1e
    addu	$a3,$a3,$at
    sra	$a3,$a3,0x2
    andi	$v0,$a3,0x1
    beqz	$v0,.L0f0de010
    move	$t1,$a6
    # Line 378
    lh	$a2,0($a1)
    sh	$a2,0($a0)
    # Line 379
    lh	$v1,2($a1)
    sh	$v1,2($a0)
    # Line 380
    lh	$v0,4($a1)
    sh	$v0,4($a0)
    # Line 384
    addiu	$a6,$a6,-4
    # Line 381
    lh	$at,6($a1)
    # Line 383
    addiu	$a1,$a1,8
    # Line 382
    addiu	$a0,$a0,8
    # Line 381
    sh	$at,-2($a0)
    move	$t1,$a6
.L0f0de010:
    move	$a7,$a1
    move	$t0,$a0
    sra	$at,$a3,0x1
    beqz	$at,.L0f0de08c
    move	$a5,$t0
    move	$a3,$t1
    move	$a4,$a7
.L0f0de02c:
    # Line 378
    lh	$v0,0($a4)
    sh	$v0,0($a5)
    # Line 379
    lh	$at,2($a4)
    sh	$at,2($a5)
    # Line 380
    lh	$a2,4($a4)
    sh	$a2,4($a5)
    # Line 381
    lh	$v1,6($a4)
    sh	$v1,6($a5)
    # Line 378
    lh	$v0,8($a4)
    sh	$v0,8($a5)
    # Line 379
    lh	$at,10($a4)
    sh	$at,10($a5)
    # Line 380
    lh	$a2,12($a4)
    # Line 383
    addiu	$a4,$a4,16
    # Line 382
    addiu	$a5,$a5,16
    # Line 380
    sh	$a2,-4($a5)
    # Line 384
    addiu	$a3,$a3,-8
    # Line 381
    lh	$v0,-2($a4)
    # Line 384
    slti	$v1,$a3,5
    beqz	$v1,.L0f0de02c
    # Line 381
    sh	$v0,-2($a5)
    move	$a0,$a5
    move	$a1,$a4
    move	$a6,$a3
.L0f0de08c:
    # Line 386
    addiu	$a6,$a6,-1
    slti	$v1,$a6,0
    bnez	$v1,.L0f0de118
    li	$a4,-1
    addiu	$a5,$a6,1
    andi	$a3,$a5,0x3
    beqz	$a3,.L0f0de0cc
    move	$t0,$a0
.L0f0de0ac:
    addiu	$a6,$a6,-1
    # Line 389
    addiu	$a1,$a1,2
    # Line 388
    addiu	$a0,$a0,2
    # Line 387
    lh	$a2,-2($a1)
    addi	$a3,$a3,-1
    bnez	$a3,.L0f0de0ac
    sh	$a2,-2($a0)
    move	$t0,$a0
.L0f0de0cc:
    sra	$at,$a5,0x2
    move	$t1,$a6
    beqz	$at,.L0f0de118
    move	$a7,$a1
    move	$a3,$t1
    move	$a1,$t0
    move	$a0,$a7
.L0f0de0e8:
    lh	$at,0($a0)
    sh	$at,0($a1)
    lh	$a2,2($a0)
    sh	$a2,2($a1)
    lh	$v1,4($a0)
    # Line 389
    addiu	$a0,$a0,8
    # Line 387
    sh	$v1,4($a1)
    # Line 388
    addiu	$a1,$a1,8
    # Line 387
    lh	$v0,-2($a0)
    # Line 386
    addiu	$a3,$a3,-4
    bne	$a3,$a4,.L0f0de0e8
    # Line 387
    sh	$v0,-2($a1)
.L0f0de118:
    # Line 391
    jr	$ra
    move	$v0,$zero
.end gl_mem_ntoh_short_array

# Function: gl_mem_hton_long_array
# Declared: Line 399 (Source lines: 404-419)
# Address: 0x0f0de120 - 0x0f0de28c (Size: 364 bytes, Frame: 0)
.globl gl_mem_hton_long_array
.ent gl_mem_hton_long_array
gl_mem_hton_long_array:
    # Line 404
    sra	$a6,$a2,0x2
    slti	$at,$a6,5
    bnez	$at,.L0f0de1f8
    addiu	$at,$a6,-1
    sra	$a3,$at,0x1
    srl	$a3,$a3,0x1e
    addu	$a3,$a3,$at
    sra	$a3,$a3,0x2
    andi	$v0,$a3,0x1
    beqz	$v0,.L0f0de17c
    move	$t1,$a6
    # Line 406
    lw	$a2,0($a1)
    sw	$a2,0($a0)
    # Line 407
    lw	$v1,4($a1)
    sw	$v1,4($a0)
    # Line 408
    lw	$v0,8($a1)
    sw	$v0,8($a0)
    # Line 412
    addiu	$a6,$a6,-4
    # Line 409
    lw	$at,12($a1)
    # Line 411
    addiu	$a1,$a1,16
    # Line 410
    addiu	$a0,$a0,16
    # Line 409
    sw	$at,-4($a0)
    move	$t1,$a6
.L0f0de17c:
    move	$a7,$a1
    move	$t0,$a0
    sra	$at,$a3,0x1
    beqz	$at,.L0f0de1f8
    move	$a5,$t0
    move	$a3,$t1
    move	$a4,$a7
.L0f0de198:
    # Line 406
    lw	$v0,0($a4)
    sw	$v0,0($a5)
    # Line 407
    lw	$at,4($a4)
    sw	$at,4($a5)
    # Line 408
    lw	$a2,8($a4)
    sw	$a2,8($a5)
    # Line 409
    lw	$v1,12($a4)
    sw	$v1,12($a5)
    # Line 406
    lw	$v0,16($a4)
    sw	$v0,16($a5)
    # Line 407
    lw	$at,20($a4)
    sw	$at,20($a5)
    # Line 408
    lw	$a2,24($a4)
    # Line 411
    addiu	$a4,$a4,32
    # Line 410
    addiu	$a5,$a5,32
    # Line 408
    sw	$a2,-8($a5)
    # Line 412
    addiu	$a3,$a3,-8
    # Line 409
    lw	$v0,-4($a4)
    # Line 412
    slti	$v1,$a3,5
    beqz	$v1,.L0f0de198
    # Line 409
    sw	$v0,-4($a5)
    move	$a0,$a5
    move	$a1,$a4
    move	$a6,$a3
.L0f0de1f8:
    # Line 414
    addiu	$a6,$a6,-1
    slti	$v1,$a6,0
    bnez	$v1,.L0f0de284
    li	$a4,-1
    addiu	$a5,$a6,1
    andi	$a3,$a5,0x3
    beqz	$a3,.L0f0de238
    move	$t0,$a0
.L0f0de218:
    addiu	$a6,$a6,-1
    # Line 417
    addiu	$a1,$a1,4
    # Line 416
    addiu	$a0,$a0,4
    # Line 415
    lw	$a2,-4($a1)
    addi	$a3,$a3,-1
    bnez	$a3,.L0f0de218
    sw	$a2,-4($a0)
    move	$t0,$a0
.L0f0de238:
    sra	$at,$a5,0x2
    move	$t1,$a6
    beqz	$at,.L0f0de284
    move	$a7,$a1
    move	$a3,$t1
    move	$a1,$t0
    move	$a0,$a7
.L0f0de254:
    lw	$at,0($a0)
    sw	$at,0($a1)
    lw	$a2,4($a0)
    sw	$a2,4($a1)
    lw	$v1,8($a0)
    # Line 417
    addiu	$a0,$a0,16
    # Line 415
    sw	$v1,8($a1)
    # Line 416
    addiu	$a1,$a1,16
    # Line 415
    lw	$v0,-4($a0)
    # Line 414
    addiu	$a3,$a3,-4
    bne	$a3,$a4,.L0f0de254
    # Line 415
    sw	$v0,-4($a1)
.L0f0de284:
    # Line 419
    jr	$ra
    move	$v0,$zero
.end gl_mem_hton_long_array

# Function: gl_mem_ntoh_long_array
# Declared: Line 426 (Source lines: 431-446)
# Address: 0x0f0de28c - 0x0f0de3f8 (Size: 364 bytes, Frame: 0)
.globl gl_mem_ntoh_long_array
.ent gl_mem_ntoh_long_array
gl_mem_ntoh_long_array:
    # Line 431
    sra	$a6,$a2,0x2
    slti	$at,$a6,5
    bnez	$at,.L0f0de364
    addiu	$at,$a6,-1
    sra	$a3,$at,0x1
    srl	$a3,$a3,0x1e
    addu	$a3,$a3,$at
    sra	$a3,$a3,0x2
    andi	$v0,$a3,0x1
    beqz	$v0,.L0f0de2e8
    move	$t1,$a6
    # Line 433
    lw	$a2,0($a1)
    sw	$a2,0($a0)
    # Line 434
    lw	$v1,4($a1)
    sw	$v1,4($a0)
    # Line 435
    lw	$v0,8($a1)
    sw	$v0,8($a0)
    # Line 439
    addiu	$a6,$a6,-4
    # Line 436
    lw	$at,12($a1)
    # Line 438
    addiu	$a1,$a1,16
    # Line 437
    addiu	$a0,$a0,16
    # Line 436
    sw	$at,-4($a0)
    move	$t1,$a6
.L0f0de2e8:
    move	$a7,$a1
    move	$t0,$a0
    sra	$at,$a3,0x1
    beqz	$at,.L0f0de364
    move	$a5,$t0
    move	$a3,$t1
    move	$a4,$a7
.L0f0de304:
    # Line 433
    lw	$v0,0($a4)
    sw	$v0,0($a5)
    # Line 434
    lw	$at,4($a4)
    sw	$at,4($a5)
    # Line 435
    lw	$a2,8($a4)
    sw	$a2,8($a5)
    # Line 436
    lw	$v1,12($a4)
    sw	$v1,12($a5)
    # Line 433
    lw	$v0,16($a4)
    sw	$v0,16($a5)
    # Line 434
    lw	$at,20($a4)
    sw	$at,20($a5)
    # Line 435
    lw	$a2,24($a4)
    # Line 438
    addiu	$a4,$a4,32
    # Line 437
    addiu	$a5,$a5,32
    # Line 435
    sw	$a2,-8($a5)
    # Line 439
    addiu	$a3,$a3,-8
    # Line 436
    lw	$v0,-4($a4)
    # Line 439
    slti	$v1,$a3,5
    beqz	$v1,.L0f0de304
    # Line 436
    sw	$v0,-4($a5)
    move	$a0,$a5
    move	$a1,$a4
    move	$a6,$a3
.L0f0de364:
    # Line 441
    addiu	$a6,$a6,-1
    slti	$v1,$a6,0
    bnez	$v1,.L0f0de3f0
    li	$a4,-1
    addiu	$a5,$a6,1
    andi	$a3,$a5,0x3
    beqz	$a3,.L0f0de3a4
    move	$t0,$a0
.L0f0de384:
    addiu	$a6,$a6,-1
    # Line 444
    addiu	$a1,$a1,4
    # Line 443
    addiu	$a0,$a0,4
    # Line 442
    lw	$a2,-4($a1)
    addi	$a3,$a3,-1
    bnez	$a3,.L0f0de384
    sw	$a2,-4($a0)
    move	$t0,$a0
.L0f0de3a4:
    sra	$at,$a5,0x2
    move	$t1,$a6
    beqz	$at,.L0f0de3f0
    move	$a7,$a1
    move	$a3,$t1
    move	$a1,$t0
    move	$a0,$a7
.L0f0de3c0:
    lw	$at,0($a0)
    sw	$at,0($a1)
    lw	$a2,4($a0)
    sw	$a2,4($a1)
    lw	$v1,8($a0)
    # Line 444
    addiu	$a0,$a0,16
    # Line 442
    sw	$v1,8($a1)
    # Line 443
    addiu	$a1,$a1,16
    # Line 442
    lw	$v0,-4($a0)
    # Line 441
    addiu	$a3,$a3,-4
    bne	$a3,$a4,.L0f0de3c0
    # Line 442
    sw	$v0,-4($a1)
.L0f0de3f0:
    # Line 446
    jr	$ra
    move	$v0,$zero
.end gl_mem_ntoh_long_array

# Function: gl_mem_hton_float_array
# Declared: Line 453 (Source lines: 458-473)
# Address: 0x0f0de3f8 - 0x0f0de568 (Size: 368 bytes, Frame: 0)
.globl gl_mem_hton_float_array
.ent gl_mem_hton_float_array
gl_mem_hton_float_array:
    # Line 458
    sra	$a6,$a2,0x2
    slti	$at,$a6,5
    bnez	$at,.L0f0de4d0
    addiu	$at,$a6,-1
    sra	$a3,$at,0x1
    srl	$a3,$a3,0x1e
    addu	$a3,$a3,$at
    sra	$a3,$a3,0x2
    andi	$v0,$a3,0x1
    beqz	$v0,.L0f0de454
    move	$t1,$a6
    # Line 460
    lwc1	$f3,0($a1)
    swc1	$f3,0($a0)
    # Line 461
    lwc1	$f2,4($a1)
    swc1	$f2,4($a0)
    # Line 462
    lwc1	$f1,8($a1)
    swc1	$f1,8($a0)
    # Line 466
    addiu	$a6,$a6,-4
    # Line 463
    lwc1	$f0,12($a1)
    # Line 465
    addiu	$a1,$a1,16
    # Line 464
    addiu	$a0,$a0,16
    # Line 463
    swc1	$f0,-4($a0)
    move	$t1,$a6
.L0f0de454:
    move	$a7,$a1
    move	$t0,$a0
    sra	$at,$a3,0x1
    beqz	$at,.L0f0de4d0
    move	$a5,$t0
    move	$a3,$t1
    move	$a4,$a7
.L0f0de470:
    # Line 460
    lwc1	$f3,0($a4)
    swc1	$f3,0($a5)
    # Line 461
    lwc1	$f2,4($a4)
    swc1	$f2,4($a5)
    # Line 462
    lwc1	$f1,8($a4)
    swc1	$f1,8($a5)
    # Line 463
    lwc1	$f0,12($a4)
    swc1	$f0,12($a5)
    # Line 460
    lwc1	$f3,16($a4)
    swc1	$f3,16($a5)
    # Line 461
    lwc1	$f2,20($a4)
    swc1	$f2,20($a5)
    # Line 462
    lwc1	$f1,24($a4)
    # Line 465
    addiu	$a4,$a4,32
    # Line 464
    addiu	$a5,$a5,32
    # Line 462
    swc1	$f1,-8($a5)
    # Line 466
    addiu	$a3,$a3,-8
    # Line 463
    lwc1	$f0,-4($a4)
    # Line 466
    slti	$v0,$a3,5
    beqz	$v0,.L0f0de470
    # Line 463
    swc1	$f0,-4($a5)
    move	$a0,$a5
    move	$a1,$a4
    move	$a6,$a3
.L0f0de4d0:
    # Line 468
    addiu	$a6,$a6,-1
    slti	$v1,$a6,0
    bnez	$v1,.L0f0de55c
    li	$a4,-1
    addiu	$a5,$a6,1
    andi	$a3,$a5,0x3
    beqz	$a3,.L0f0de510
    move	$t0,$a0
.L0f0de4f0:
    addiu	$a6,$a6,-1
    # Line 471
    addiu	$a1,$a1,4
    # Line 470
    addiu	$a0,$a0,4
    # Line 469
    lwc1	$f0,-4($a1)
    addi	$a3,$a3,-1
    bnez	$a3,.L0f0de4f0
    swc1	$f0,-4($a0)
    move	$t0,$a0
.L0f0de510:
    sra	$a2,$a5,0x2
    move	$t1,$a6
    beqz	$a2,.L0f0de55c
    move	$a7,$a1
    move	$a3,$t1
    move	$a1,$t0
    move	$a0,$a7
.L0f0de52c:
    lwc1	$f0,0($a0)
    swc1	$f0,0($a1)
    lwc1	$f3,4($a0)
    swc1	$f3,4($a1)
    lwc1	$f2,8($a0)
    # Line 471
    addiu	$a0,$a0,16
    # Line 469
    swc1	$f2,8($a1)
    # Line 470
    addiu	$a1,$a1,16
    # Line 469
    lwc1	$f1,-4($a0)
    # Line 468
    addiu	$a3,$a3,-4
    bne	$a3,$a4,.L0f0de52c
    # Line 469
    swc1	$f1,-4($a1)
.L0f0de55c:
    # Line 473
    move	$v0,$zero
    jr	$ra
    nop
.end gl_mem_hton_float_array

# Function: gl_mem_ntoh_float_array
# Declared: Line 480 (Source lines: 485-500)
# Address: 0x0f0de568 - 0x0f0de6d8 (Size: 368 bytes, Frame: 0)
.globl gl_mem_ntoh_float_array
.ent gl_mem_ntoh_float_array
gl_mem_ntoh_float_array:
    # Line 485
    sra	$a6,$a2,0x2
    slti	$at,$a6,5
    bnez	$at,.L0f0de640
    addiu	$at,$a6,-1
    sra	$a3,$at,0x1
    srl	$a3,$a3,0x1e
    addu	$a3,$a3,$at
    sra	$a3,$a3,0x2
    andi	$v0,$a3,0x1
    beqz	$v0,.L0f0de5c4
    move	$t1,$a6
    # Line 487
    lwc1	$f3,0($a1)
    swc1	$f3,0($a0)
    # Line 488
    lwc1	$f2,4($a1)
    swc1	$f2,4($a0)
    # Line 489
    lwc1	$f1,8($a1)
    swc1	$f1,8($a0)
    # Line 493
    addiu	$a6,$a6,-4
    # Line 490
    lwc1	$f0,12($a1)
    # Line 492
    addiu	$a1,$a1,16
    # Line 491
    addiu	$a0,$a0,16
    # Line 490
    swc1	$f0,-4($a0)
    move	$t1,$a6
.L0f0de5c4:
    move	$a7,$a1
    move	$t0,$a0
    sra	$at,$a3,0x1
    beqz	$at,.L0f0de640
    move	$a5,$t0
    move	$a3,$t1
    move	$a4,$a7
.L0f0de5e0:
    # Line 487
    lwc1	$f3,0($a4)
    swc1	$f3,0($a5)
    # Line 488
    lwc1	$f2,4($a4)
    swc1	$f2,4($a5)
    # Line 489
    lwc1	$f1,8($a4)
    swc1	$f1,8($a5)
    # Line 490
    lwc1	$f0,12($a4)
    swc1	$f0,12($a5)
    # Line 487
    lwc1	$f3,16($a4)
    swc1	$f3,16($a5)
    # Line 488
    lwc1	$f2,20($a4)
    swc1	$f2,20($a5)
    # Line 489
    lwc1	$f1,24($a4)
    # Line 492
    addiu	$a4,$a4,32
    # Line 491
    addiu	$a5,$a5,32
    # Line 489
    swc1	$f1,-8($a5)
    # Line 493
    addiu	$a3,$a3,-8
    # Line 490
    lwc1	$f0,-4($a4)
    # Line 493
    slti	$v0,$a3,5
    beqz	$v0,.L0f0de5e0
    # Line 490
    swc1	$f0,-4($a5)
    move	$a0,$a5
    move	$a1,$a4
    move	$a6,$a3
.L0f0de640:
    # Line 495
    addiu	$a6,$a6,-1
    slti	$v1,$a6,0
    bnez	$v1,.L0f0de6cc
    li	$a4,-1
    addiu	$a5,$a6,1
    andi	$a3,$a5,0x3
    beqz	$a3,.L0f0de680
    move	$t0,$a0
.L0f0de660:
    addiu	$a6,$a6,-1
    # Line 498
    addiu	$a1,$a1,4
    # Line 497
    addiu	$a0,$a0,4
    # Line 496
    lwc1	$f0,-4($a1)
    addi	$a3,$a3,-1
    bnez	$a3,.L0f0de660
    swc1	$f0,-4($a0)
    move	$t0,$a0
.L0f0de680:
    sra	$a2,$a5,0x2
    move	$t1,$a6
    beqz	$a2,.L0f0de6cc
    move	$a7,$a1
    move	$a3,$t1
    move	$a1,$t0
    move	$a0,$a7
.L0f0de69c:
    lwc1	$f0,0($a0)
    swc1	$f0,0($a1)
    lwc1	$f3,4($a0)
    swc1	$f3,4($a1)
    lwc1	$f2,8($a0)
    # Line 498
    addiu	$a0,$a0,16
    # Line 496
    swc1	$f2,8($a1)
    # Line 497
    addiu	$a1,$a1,16
    # Line 496
    lwc1	$f1,-4($a0)
    # Line 495
    addiu	$a3,$a3,-4
    bne	$a3,$a4,.L0f0de69c
    # Line 496
    swc1	$f1,-4($a1)
.L0f0de6cc:
    # Line 500
    move	$v0,$zero
    jr	$ra
    nop
.end gl_mem_ntoh_float_array

# Function: gl_mem_hton_double_array
# Declared: Line 508 (Source lines: 512-528)
# Address: 0x0f0de6d8 - 0x0f0de83c (Size: 356 bytes, Frame: 128)
.globl gl_mem_hton_double_array
.ent gl_mem_hton_double_array
gl_mem_hton_double_array:
    # Line 512
    addiu	$sp,$sp,-128
    sd	$s3,80($sp)
    sd	$s4,56($sp)
    sd	$s5,48($sp)
    sd	$s6,72($sp)
    sd	$s7,40($sp)
    sd	$s8,32($sp)
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    lui	$v0,0xfff5
    addiu	$v0,$v0,19312
    sd	$s2,0($sp)
    # Line 513
    sra	$s2,$a2,0x3
    slti	$at,$s2,5
    bnez	$at,.L0f0de7d8
    # Line 512
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    sd	$ra,64($sp)
    # Line 513
    addiu	$s7,$s1,24
    addiu	$s5,$s0,24
    addiu	$s8,$s1,16
    addiu	$s4,$s0,16
    addiu	$s6,$s1,8
    addiu	$s3,$s0,8
.L0f0de740:
    # Line 515
    move	$a1,$s1
    la	$t9,memcpy
    move	$a0,$s0
    # Line 519
    addiu	$s0,$s0,32
    # Line 515
    jalr	$t9
    li	$a2,8
    # Line 521
    addiu	$s2,$s2,-4
    # Line 516
    move	$a1,$s6
    la	$t9,memcpy
    move	$a0,$s3
    # Line 519
    addiu	$s3,$s3,32
    # Line 516
    jalr	$t9
    li	$a2,8
    # Line 520
    addiu	$s1,$s1,32
    # Line 517
    la	$t9,memcpy
    move	$a1,$s8
    move	$a0,$s4
    jalr	$t9
    li	$a2,8
    # Line 519
    addiu	$s4,$s4,32
    # Line 520
    addiu	$s8,$s8,32
    # Line 518
    move	$a1,$s7
    # Line 520
    addiu	$s7,$s7,32
    # Line 518
    la	$t9,memcpy
    move	$a0,$s5
    # Line 519
    addiu	$s5,$s5,32
    # Line 518
    jalr	$t9
    li	$a2,8
    # Line 521
    slti	$v1,$s2,5
    beqz	$v1,.L0f0de740
    # Line 520
    addiu	$s6,$s6,32
    ld	$s8,32($sp)
    ld	$s7,40($sp)
    ld	$s5,48($sp)
    ld	$s4,56($sp)
    ld	$ra,64($sp)
    ld	$s6,72($sp)
    ld	$s3,80($sp)
.L0f0de7d8:
    # Line 523
    addiu	$s2,$s2,-1
    slti	$a2,$s2,0
    bnez	$a2,.L0f0de824
    # Line 528
    move	$v0,$zero
    sd	$ra,64($sp)
    sd	$s4,56($sp)
    # Line 523
    li	$s4,-1
.L0f0de7f4:
    # Line 524
    move	$a1,$s1
    # Line 523
    addiu	$s2,$s2,-1
    # Line 524
    la	$t9,memcpy
    move	$a0,$s0
    # Line 525
    addiu	$s0,$s0,8
    # Line 524
    jalr	$t9
    li	$a2,8
    # Line 523
    bne	$s2,$s4,.L0f0de7f4
    # Line 526
    addiu	$s1,$s1,8
    ld	$s4,56($sp)
    ld	$ra,64($sp)
    # Line 528
    move	$v0,$zero
.L0f0de824:
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_mem_hton_double_array

# Function: gl_mem_ntoh_double_array
# Declared: Line 535 (Source lines: 539-555)
# Address: 0x0f0de83c - 0x0f0de9a0 (Size: 356 bytes, Frame: 128)
.globl gl_mem_ntoh_double_array
.ent gl_mem_ntoh_double_array
gl_mem_ntoh_double_array:
    # Line 539
    addiu	$sp,$sp,-128
    sd	$s3,80($sp)
    sd	$s4,56($sp)
    sd	$s5,48($sp)
    sd	$s6,72($sp)
    sd	$s7,40($sp)
    sd	$s8,32($sp)
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    lui	$v0,0xfff5
    addiu	$v0,$v0,18956
    sd	$s2,0($sp)
    # Line 540
    sra	$s2,$a2,0x3
    slti	$at,$s2,5
    bnez	$at,.L0f0de93c
    # Line 539
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    sd	$ra,64($sp)
    # Line 540
    addiu	$s7,$s1,24
    addiu	$s5,$s0,24
    addiu	$s8,$s1,16
    addiu	$s4,$s0,16
    addiu	$s6,$s1,8
    addiu	$s3,$s0,8
.L0f0de8a4:
    # Line 542
    move	$a1,$s1
    la	$t9,memcpy
    move	$a0,$s0
    # Line 546
    addiu	$s0,$s0,32
    # Line 542
    jalr	$t9
    li	$a2,8
    # Line 548
    addiu	$s2,$s2,-4
    # Line 543
    move	$a1,$s6
    la	$t9,memcpy
    move	$a0,$s3
    # Line 546
    addiu	$s3,$s3,32
    # Line 543
    jalr	$t9
    li	$a2,8
    # Line 547
    addiu	$s1,$s1,32
    # Line 544
    la	$t9,memcpy
    move	$a1,$s8
    move	$a0,$s4
    jalr	$t9
    li	$a2,8
    # Line 546
    addiu	$s4,$s4,32
    # Line 547
    addiu	$s8,$s8,32
    # Line 545
    move	$a1,$s7
    # Line 547
    addiu	$s7,$s7,32
    # Line 545
    la	$t9,memcpy
    move	$a0,$s5
    # Line 546
    addiu	$s5,$s5,32
    # Line 545
    jalr	$t9
    li	$a2,8
    # Line 548
    slti	$v1,$s2,5
    beqz	$v1,.L0f0de8a4
    # Line 547
    addiu	$s6,$s6,32
    ld	$s8,32($sp)
    ld	$s7,40($sp)
    ld	$s5,48($sp)
    ld	$s4,56($sp)
    ld	$ra,64($sp)
    ld	$s6,72($sp)
    ld	$s3,80($sp)
.L0f0de93c:
    # Line 550
    addiu	$s2,$s2,-1
    slti	$a2,$s2,0
    bnez	$a2,.L0f0de988
    # Line 555
    move	$v0,$zero
    sd	$ra,64($sp)
    sd	$s4,56($sp)
    # Line 550
    li	$s4,-1
.L0f0de958:
    # Line 551
    move	$a1,$s1
    # Line 550
    addiu	$s2,$s2,-1
    # Line 551
    la	$t9,memcpy
    move	$a0,$s0
    # Line 552
    addiu	$s0,$s0,8
    # Line 551
    jalr	$t9
    li	$a2,8
    # Line 550
    bne	$s2,$s4,.L0f0de958
    # Line 553
    addiu	$s1,$s1,8
    ld	$s4,56($sp)
    ld	$ra,64($sp)
    # Line 555
    move	$v0,$zero
.L0f0de988:
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_mem_ntoh_double_array

# Function: gl_mem_hton_fontchar_array
# Declared: Line 563 (Source lines: 568-583)
# Address: 0x0f0de9a0 - 0x0f0deb78 (Size: 472 bytes, Frame: 0)
.globl gl_mem_hton_fontchar_array
.ent gl_mem_hton_fontchar_array
gl_mem_hton_fontchar_array:
    # Line 568
    srl	$a4,$a2,0x3
    slti	$at,$a4,5
    bnezl	$at,.L0f0dea88
    # Line 578
    addiu	$a4,$a4,-1
.L0f0de9b0:
    # Line 570
    lhu	$v0,0($a1)
    sh	$v0,0($a0)
    lbu	$at,2($a1)
    sb	$at,2($a0)
    lbu	$a2,3($a1)
    sb	$a2,3($a0)
    lb	$v1,4($a1)
    sb	$v1,4($a0)
    lb	$v0,5($a1)
    sb	$v0,5($a0)
    lh	$at,6($a1)
    sh	$at,6($a0)
    # Line 571
    lhu	$a2,8($a1)
    sh	$a2,8($a0)
    lbu	$v1,10($a1)
    sb	$v1,10($a0)
    lbu	$v0,11($a1)
    sb	$v0,11($a0)
    lb	$at,12($a1)
    sb	$at,12($a0)
    lb	$a2,13($a1)
    sb	$a2,13($a0)
    lh	$v1,14($a1)
    sh	$v1,14($a0)
    # Line 572
    lhu	$v0,16($a1)
    sh	$v0,16($a0)
    lbu	$at,18($a1)
    sb	$at,18($a0)
    lbu	$a2,19($a1)
    sb	$a2,19($a0)
    lb	$v1,20($a1)
    sb	$v1,20($a0)
    lb	$v0,21($a1)
    sb	$v0,21($a0)
    lh	$at,22($a1)
    sh	$at,22($a0)
    # Line 573
    lhu	$a2,24($a1)
    sh	$a2,24($a0)
    lbu	$v1,26($a1)
    sb	$v1,26($a0)
    lbu	$v0,27($a1)
    sb	$v0,27($a0)
    lb	$at,28($a1)
    sb	$at,28($a0)
    lb	$a2,29($a1)
    # Line 575
    addiu	$a1,$a1,32
    # Line 574
    addiu	$a0,$a0,32
    # Line 573
    sb	$a2,-3($a0)
    # Line 576
    addiu	$a4,$a4,-4
    # Line 573
    lh	$v0,-2($a1)
    # Line 576
    slti	$v1,$a4,5
    beqz	$v1,.L0f0de9b0
    # Line 573
    sh	$v0,-2($a0)
    # Line 578
    addiu	$a4,$a4,-1
.L0f0dea88:
    slti	$v1,$a4,0
    bnez	$v1,.L0f0deb70
    li	$a5,-1
    addiu	$a3,$a4,1
    andi	$a2,$a3,0x1
    beqz	$a2,.L0f0deae4
    move	$a7,$a4
    # Line 579
    lhu	$v0,0($a1)
    sh	$v0,0($a0)
    lbu	$at,2($a1)
    sb	$at,2($a0)
    lbu	$a2,3($a1)
    sb	$a2,3($a0)
    lb	$v1,4($a1)
    sb	$v1,4($a0)
    lb	$v0,5($a1)
    sb	$v0,5($a0)
    # Line 578
    addiu	$a4,$a4,-1
    # Line 579
    lh	$at,6($a1)
    # Line 581
    addiu	$a1,$a1,8
    # Line 580
    addiu	$a0,$a0,8
    # Line 579
    sh	$at,-2($a0)
    move	$a7,$a4
.L0f0deae4:
    move	$a6,$a1
    move	$t0,$a0
    sra	$v1,$a3,0x1
    beqz	$v1,.L0f0deb70
    move	$a0,$t0
    move	$a3,$a7
    move	$a1,$a6
.L0f0deb00:
    lhu	$v1,0($a1)
    sh	$v1,0($a0)
    lbu	$v0,2($a1)
    sb	$v0,2($a0)
    lbu	$at,3($a1)
    sb	$at,3($a0)
    lb	$a2,4($a1)
    sb	$a2,4($a0)
    lb	$v1,5($a1)
    sb	$v1,5($a0)
    lh	$v0,6($a1)
    sh	$v0,6($a0)
    lhu	$at,8($a1)
    sh	$at,8($a0)
    lbu	$a2,10($a1)
    sb	$a2,10($a0)
    lbu	$v1,11($a1)
    sb	$v1,11($a0)
    lb	$v0,12($a1)
    sb	$v0,12($a0)
    lb	$at,13($a1)
    # Line 581
    addiu	$a1,$a1,16
    # Line 579
    sb	$at,13($a0)
    # Line 580
    addiu	$a0,$a0,16
    # Line 579
    lh	$a2,-2($a1)
    # Line 578
    addiu	$a3,$a3,-2
    bne	$a3,$a5,.L0f0deb00
    # Line 579
    sh	$a2,-2($a0)
.L0f0deb70:
    # Line 583
    jr	$ra
    move	$v0,$zero
.end gl_mem_hton_fontchar_array

# Function: gl_mem_hton_lfontchar_array
# Declared: Line 591 (Source lines: 596-611)
# Address: 0x0f0deb78 - 0x0f0dee50 (Size: 728 bytes, Frame: 0)
.globl gl_mem_hton_lfontchar_array
.ent gl_mem_hton_lfontchar_array
gl_mem_hton_lfontchar_array:
    # Line 596
    li	$v0,20
    divu	$zero,$a2,$v0
    mflo	$a4
    slti	$at,$a4,5
    bnez	$at,.L0f0deca4
    teq	$v0,$zero,0x7
.L0f0deb90:
    # Line 598
    lw	$v1,0($a1)
    sw	$v1,0($a0)
    lw	$v0,4($a1)
    sw	$v0,4($a0)
    lh	$at,8($a1)
    sh	$at,8($a0)
    lh	$a2,10($a1)
    sh	$a2,10($a0)
    lh	$v1,12($a1)
    sh	$v1,12($a0)
    lh	$v0,14($a1)
    sh	$v0,14($a0)
    lh	$at,16($a1)
    sh	$at,16($a0)
    lh	$a2,18($a1)
    sh	$a2,18($a0)
    # Line 599
    lw	$v1,20($a1)
    sw	$v1,20($a0)
    lw	$v0,24($a1)
    sw	$v0,24($a0)
    lh	$at,28($a1)
    sh	$at,28($a0)
    lh	$a2,30($a1)
    sh	$a2,30($a0)
    lh	$v1,32($a1)
    sh	$v1,32($a0)
    lh	$v0,34($a1)
    sh	$v0,34($a0)
    lh	$at,36($a1)
    sh	$at,36($a0)
    lh	$a2,38($a1)
    sh	$a2,38($a0)
    # Line 600
    lw	$v1,40($a1)
    sw	$v1,40($a0)
    lw	$v0,44($a1)
    sw	$v0,44($a0)
    lh	$at,48($a1)
    sh	$at,48($a0)
    lh	$a2,50($a1)
    sh	$a2,50($a0)
    lh	$v1,52($a1)
    sh	$v1,52($a0)
    lh	$v0,54($a1)
    sh	$v0,54($a0)
    lh	$at,56($a1)
    sh	$at,56($a0)
    lh	$a2,58($a1)
    sh	$a2,58($a0)
    # Line 601
    lw	$v1,60($a1)
    sw	$v1,60($a0)
    lw	$v0,64($a1)
    sw	$v0,64($a0)
    lh	$at,68($a1)
    sh	$at,68($a0)
    lh	$a2,70($a1)
    sh	$a2,70($a0)
    lh	$v1,72($a1)
    sh	$v1,72($a0)
    lh	$v0,74($a1)
    sh	$v0,74($a0)
    lh	$at,76($a1)
    # Line 603
    addiu	$a1,$a1,80
    # Line 602
    addiu	$a0,$a0,80
    # Line 601
    sh	$at,-4($a0)
    # Line 604
    addiu	$a4,$a4,-4
    # Line 601
    lh	$v1,-2($a1)
    # Line 604
    slti	$a2,$a4,5
    beqz	$a2,.L0f0deb90
    # Line 601
    sh	$v1,-2($a0)
.L0f0deca4:
    # Line 606
    addiu	$a4,$a4,-1
    slti	$a2,$a4,0
    bnez	$a2,.L0f0dee48
    li	$a5,-1
    addiu	$a6,$a4,1
    andi	$a3,$a6,0x3
    beqz	$a3,.L0f0ded1c
    move	$a7,$a4
.L0f0decc4:
    # Line 607
    lw	$a2,0($a1)
    sw	$a2,0($a0)
    lw	$v1,4($a1)
    sw	$v1,4($a0)
    lh	$v0,8($a1)
    sh	$v0,8($a0)
    lh	$at,10($a1)
    sh	$at,10($a0)
    lh	$a2,12($a1)
    sh	$a2,12($a0)
    lh	$v1,14($a1)
    sh	$v1,14($a0)
    lh	$v0,16($a1)
    # Line 606
    addiu	$a4,$a4,-1
    # Line 609
    addiu	$a1,$a1,20
    # Line 607
    sh	$v0,16($a0)
    # Line 608
    addiu	$a0,$a0,20
    # Line 607
    lh	$at,-2($a1)
    addi	$a3,$a3,-1
    bnez	$a3,.L0f0decc4
    sh	$at,-2($a0)
    move	$a7,$a4
.L0f0ded1c:
    move	$t1,$a1
    move	$t0,$a0
    sra	$at,$a6,0x2
    beqz	$at,.L0f0dee48
    move	$a0,$t0
    move	$a3,$a7
    move	$a1,$t1
.L0f0ded38:
    lw	$at,0($a1)
    sw	$at,0($a0)
    lw	$a2,4($a1)
    sw	$a2,4($a0)
    lh	$v1,8($a1)
    sh	$v1,8($a0)
    lh	$v0,10($a1)
    sh	$v0,10($a0)
    lh	$at,12($a1)
    sh	$at,12($a0)
    lh	$a2,14($a1)
    sh	$a2,14($a0)
    lh	$v1,16($a1)
    sh	$v1,16($a0)
    lh	$v0,18($a1)
    sh	$v0,18($a0)
    lw	$at,20($a1)
    sw	$at,20($a0)
    lw	$a2,24($a1)
    sw	$a2,24($a0)
    lh	$v1,28($a1)
    sh	$v1,28($a0)
    lh	$v0,30($a1)
    sh	$v0,30($a0)
    lh	$at,32($a1)
    sh	$at,32($a0)
    lh	$a2,34($a1)
    sh	$a2,34($a0)
    lh	$v1,36($a1)
    sh	$v1,36($a0)
    lh	$v0,38($a1)
    sh	$v0,38($a0)
    lw	$at,40($a1)
    sw	$at,40($a0)
    lw	$a2,44($a1)
    sw	$a2,44($a0)
    lh	$v1,48($a1)
    sh	$v1,48($a0)
    lh	$v0,50($a1)
    sh	$v0,50($a0)
    lh	$at,52($a1)
    sh	$at,52($a0)
    lh	$a2,54($a1)
    sh	$a2,54($a0)
    lh	$v1,56($a1)
    sh	$v1,56($a0)
    lh	$v0,58($a1)
    sh	$v0,58($a0)
    lw	$at,60($a1)
    sw	$at,60($a0)
    lw	$a2,64($a1)
    sw	$a2,64($a0)
    lh	$v1,68($a1)
    sh	$v1,68($a0)
    lh	$v0,70($a1)
    sh	$v0,70($a0)
    lh	$at,72($a1)
    sh	$at,72($a0)
    lh	$a2,74($a1)
    sh	$a2,74($a0)
    lh	$v1,76($a1)
    # Line 609
    addiu	$a1,$a1,80
    # Line 607
    sh	$v1,76($a0)
    # Line 608
    addiu	$a0,$a0,80
    # Line 607
    lh	$v0,-2($a1)
    # Line 606
    addiu	$a3,$a3,-4
    bne	$a3,$a5,.L0f0ded38
    # Line 607
    sh	$v0,-2($a0)
.L0f0dee48:
    # Line 611
    jr	$ra
    move	$v0,$zero
.end gl_mem_hton_lfontchar_array

# Function: gl_mem_ntoh_fmglyphinfo_array
# Declared: Line 619 (Source lines: 624-641)
# Address: 0x0f0dee50 - 0x0f0df120 (Size: 720 bytes, Frame: 0)
.globl gl_mem_ntoh_fmglyphinfo_array
.ent gl_mem_ntoh_fmglyphinfo_array
gl_mem_ntoh_fmglyphinfo_array:
    # Line 624
    srl	$a4,$a2,0x5
    slti	$at,$a4,5
    bnezl	$at,.L0f0def78
    # Line 636
    addiu	$a4,$a4,-1
.L0f0dee60:
    # Line 626
    lw	$v0,0($a1)
    sw	$v0,0($a0)
    lw	$at,4($a1)
    sw	$at,4($a0)
    lw	$a2,8($a1)
    sw	$a2,8($a0)
    lw	$v1,12($a1)
    sw	$v1,12($a0)
    lwc1	$f3,16($a1)
    swc1	$f3,16($a0)
    lwc1	$f2,20($a1)
    swc1	$f2,20($a0)
    lw	$v0,24($a1)
    sw	$v0,24($a0)
    lw	$at,28($a1)
    sw	$at,28($a0)
    # Line 627
    lw	$a2,32($a1)
    sw	$a2,32($a0)
    lw	$v1,36($a1)
    sw	$v1,36($a0)
    lw	$v0,40($a1)
    sw	$v0,40($a0)
    lw	$at,44($a1)
    sw	$at,44($a0)
    lwc1	$f1,48($a1)
    swc1	$f1,48($a0)
    lwc1	$f0,52($a1)
    swc1	$f0,52($a0)
    lw	$a2,56($a1)
    sw	$a2,56($a0)
    lw	$v1,60($a1)
    sw	$v1,60($a0)
    # Line 628
    lw	$v0,64($a1)
    sw	$v0,64($a0)
    lw	$at,68($a1)
    sw	$at,68($a0)
    lw	$a2,72($a1)
    sw	$a2,72($a0)
    lw	$v1,76($a1)
    sw	$v1,76($a0)
    lwc1	$f3,80($a1)
    swc1	$f3,80($a0)
    lwc1	$f2,84($a1)
    swc1	$f2,84($a0)
    lw	$v0,88($a1)
    sw	$v0,88($a0)
    lw	$at,92($a1)
    sw	$at,92($a0)
    # Line 630
    lw	$a2,96($a1)
    sw	$a2,96($a0)
    lw	$v1,100($a1)
    sw	$v1,100($a0)
    lw	$v0,104($a1)
    sw	$v0,104($a0)
    lw	$at,108($a1)
    sw	$at,108($a0)
    lwc1	$f1,112($a1)
    swc1	$f1,112($a0)
    lwc1	$f0,116($a1)
    swc1	$f0,116($a0)
    lw	$a2,120($a1)
    # Line 633
    addiu	$a1,$a1,128
    # Line 632
    addiu	$a0,$a0,128
    # Line 630
    sw	$a2,-8($a0)
    # Line 634
    addiu	$a4,$a4,-4
    # Line 630
    lw	$v0,-4($a1)
    # Line 634
    slti	$v1,$a4,5
    beqz	$v1,.L0f0dee60
    # Line 630
    sw	$v0,-4($a0)
    # Line 636
    addiu	$a4,$a4,-1
.L0f0def78:
    slti	$v1,$a4,0
    bnez	$v1,.L0f0df118
    li	$a5,-1
    addiu	$a6,$a4,1
    andi	$a3,$a6,0x3
    beqz	$a3,.L0f0defec
    move	$a7,$a4
.L0f0def94:
    # Line 637
    lw	$at,0($a1)
    sw	$at,0($a0)
    lw	$a2,4($a1)
    sw	$a2,4($a0)
    lw	$v1,8($a1)
    sw	$v1,8($a0)
    lw	$v0,12($a1)
    sw	$v0,12($a0)
    lwc1	$f1,16($a1)
    swc1	$f1,16($a0)
    lwc1	$f0,20($a1)
    swc1	$f0,20($a0)
    lw	$at,24($a1)
    # Line 636
    addiu	$a4,$a4,-1
    # Line 639
    addiu	$a1,$a1,32
    # Line 637
    sw	$at,24($a0)
    # Line 638
    addiu	$a0,$a0,32
    # Line 637
    lw	$a2,-4($a1)
    addi	$a3,$a3,-1
    bnez	$a3,.L0f0def94
    sw	$a2,-4($a0)
    move	$a7,$a4
.L0f0defec:
    move	$t1,$a1
    move	$t0,$a0
    sra	$v0,$a6,0x2
    beqz	$v0,.L0f0df118
    move	$a0,$t0
    move	$a3,$a7
    move	$a1,$t1
.L0f0df008:
    lw	$v0,0($a1)
    sw	$v0,0($a0)
    lw	$at,4($a1)
    sw	$at,4($a0)
    lw	$a2,8($a1)
    sw	$a2,8($a0)
    lw	$v1,12($a1)
    sw	$v1,12($a0)
    lwc1	$f1,16($a1)
    swc1	$f1,16($a0)
    lwc1	$f0,20($a1)
    swc1	$f0,20($a0)
    lw	$v0,24($a1)
    sw	$v0,24($a0)
    lw	$at,28($a1)
    sw	$at,28($a0)
    lw	$a2,32($a1)
    sw	$a2,32($a0)
    lw	$v1,36($a1)
    sw	$v1,36($a0)
    lw	$v0,40($a1)
    sw	$v0,40($a0)
    lw	$at,44($a1)
    sw	$at,44($a0)
    lwc1	$f3,48($a1)
    swc1	$f3,48($a0)
    lwc1	$f2,52($a1)
    swc1	$f2,52($a0)
    lw	$a2,56($a1)
    sw	$a2,56($a0)
    lw	$v1,60($a1)
    sw	$v1,60($a0)
    lw	$v0,64($a1)
    sw	$v0,64($a0)
    lw	$at,68($a1)
    sw	$at,68($a0)
    lw	$a2,72($a1)
    sw	$a2,72($a0)
    lw	$v1,76($a1)
    sw	$v1,76($a0)
    lwc1	$f1,80($a1)
    swc1	$f1,80($a0)
    lwc1	$f0,84($a1)
    swc1	$f0,84($a0)
    lw	$v0,88($a1)
    sw	$v0,88($a0)
    lw	$at,92($a1)
    sw	$at,92($a0)
    lw	$a2,96($a1)
    sw	$a2,96($a0)
    lw	$v1,100($a1)
    sw	$v1,100($a0)
    lw	$v0,104($a1)
    sw	$v0,104($a0)
    lw	$at,108($a1)
    sw	$at,108($a0)
    lwc1	$f3,112($a1)
    swc1	$f3,112($a0)
    lwc1	$f2,116($a1)
    swc1	$f2,116($a0)
    lw	$a2,120($a1)
    # Line 639
    addiu	$a1,$a1,128
    # Line 637
    sw	$a2,120($a0)
    # Line 638
    addiu	$a0,$a0,128
    # Line 637
    lw	$v1,-4($a1)
    # Line 636
    addiu	$a3,$a3,-4
    bne	$a3,$a5,.L0f0df008
    # Line 637
    sw	$v1,-4($a0)
.L0f0df118:
    # Line 641
    jr	$ra
    move	$v0,$zero
.end gl_mem_ntoh_fmglyphinfo_array

# Function: gl_mem_ntoh_fmfontinfo_array
# Declared: Line 648 (Source lines: 652-670)
# Address: 0x0f0df120 - 0x0f0df91c (Size: 2044 bytes, Frame: 208)
.globl gl_mem_ntoh_fmfontinfo_array
.ent gl_mem_ntoh_fmfontinfo_array
gl_mem_ntoh_fmfontinfo_array:
    # Line 653
    li	$v1,216
    divu	$zero,$a2,$v1
    # Line 652
    addiu	$sp,$sp,-336
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 653
    teq	$v1,$zero,0x7
    sd	$gp,16($sp)
    # Line 652
    lui	$v0,0xfff5
    addiu	$v0,$v0,16680
    sd	$s1,0($sp)
    move	$s1,$a1
    # Line 653
    mflo	$at
    sd	$at,216($sp)
    slti	$at,$at,5
    bnez	$at,.L0f0df768
    # Line 652
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 653
    addiu	$a2,$s1,672
    sd	$ra,232($sp)
    addiu	$v1,$s0,672
    addiu	$v0,$s1,664
    addiu	$at,$s0,664
    sd	$s8,288($sp)
    addiu	$s8,$s1,656
    sd	$s4,264($sp)
    addiu	$s4,$s1,456
    sd	$s5,272($sp)
    addiu	$s5,$s0,464
    sd	$s7,280($sp)
    addiu	$s7,$s0,656
    sd	$s6,256($sp)
    addiu	$s6,$s1,464
    sd	$a2,128($sp)
    addiu	$a2,$s0,448
    sd	$a2,56($sp)
    addiu	$a2,$s0,8
    sd	$s6,24($sp)
    addiu	$s6,$s0,240
    sd	$s7,120($sp)
    addiu	$s7,$s1,240
    sd	$s5,112($sp)
    addiu	$s5,$s1,232
    sd	$s4,32($sp)
    addiu	$s4,$s0,232
    sd	$s8,200($sp)
    addiu	$s8,$s0,248
    sd	$at,136($sp)
    addiu	$at,$s1,248
    sd	$v0,144($sp)
    addiu	$v0,$s0,440
    sd	$v1,152($sp)
    addiu	$v1,$s1,440
    sd	$v1,64($sp)
    sd	$v0,192($sp)
    sd	$at,80($sp)
    sd	$s8,208($sp)
    addiu	$s8,$s1,32
    sd	$s4,168($sp)
    addiu	$s4,$s1,24
    sd	$s5,176($sp)
    addiu	$s5,$s1,16
    sd	$s7,96($sp)
    addiu	$s7,$s0,16
    sd	$s6,184($sp)
    addiu	$s6,$s1,8
    sd	$a2,224($sp)
    sd	$s2,240($sp)
    addiu	$s2,$s0,680
    sd	$s3,248($sp)
    addiu	$s3,$s1,680
    sd	$s3,40($sp)
    addiu	$s3,$s0,456
    sd	$s2,160($sp)
    addiu	$s2,$s1,448
    sd	$s2,72($sp)
    addiu	$s2,$s0,224
    sd	$s3,88($sp)
    addiu	$s3,$s1,224
    sd	$s3,104($sp)
    addiu	$s3,$s0,32
    sd	$s2,48($sp)
    addiu	$s2,$s0,24
.L0f0df264:
    # Line 655
    lw	$t9,0($s1)
    li	$a2,8
    move	$a1,$s6
    sw	$t9,0($s0)
    la	$t9,memcpy
    lw	$t8,4($s1)
    ld	$a0,224($sp)
    jalr	$t9
    sw	$t8,4($s0)
    la	$t9,memcpy
    move	$a0,$s7
    move	$a1,$s5
    jalr	$t9
    li	$a2,8
    la	$t9,memcpy
    move	$a0,$s2
    move	$a1,$s4
    jalr	$t9
    li	$a2,8
    la	$t9,memcpy
    move	$a0,$s3
    move	$a1,$s8
    jalr	$t9
    li	$a2,8
    lw	$t9,40($s1)
    sw	$t9,40($s0)
    lw	$t8,44($s1)
    sw	$t8,44($s0)
    lw	$t3,48($s1)
    sw	$t3,48($s0)
    lw	$t2,52($s1)
    sw	$t2,52($s0)
    lw	$t1,56($s1)
    sw	$t1,56($s0)
    lw	$t0,60($s1)
    sw	$t0,60($s0)
    lw	$a7,64($s1)
    sw	$a7,64($s0)
    lw	$a6,68($s1)
    sw	$a6,68($s0)
    lw	$a5,72($s1)
    sw	$a5,72($s0)
    lw	$a4,76($s1)
    sw	$a4,76($s0)
    lw	$a3,80($s1)
    sw	$a3,80($s0)
    lw	$a2,84($s1)
    sw	$a2,84($s0)
    lw	$a1,88($s1)
    sw	$a1,88($s0)
    lw	$a0,92($s1)
    sw	$a0,92($s0)
    lw	$v1,96($s1)
    sw	$v1,96($s0)
    lw	$v0,100($s1)
    sw	$v0,100($s0)
    # Line 656
    lw	$at,216($s1)
    sw	$at,216($s0)
    la	$t9,memcpy
    lw	$ra,220($s1)
    li	$a2,8
    ld	$a1,104($sp)
    sw	$ra,220($s0)
    jalr	$t9
    ld	$a0,48($sp)
    la	$t9,memcpy
    ld	$a0,168($sp)
    ld	$a1,176($sp)
    jalr	$t9
    li	$a2,8
    la	$t9,memcpy
    ld	$a0,184($sp)
    ld	$a1,96($sp)
    jalr	$t9
    li	$a2,8
    la	$t9,memcpy
    ld	$a0,208($sp)
    ld	$a1,80($sp)
    jalr	$t9
    li	$a2,8
    lw	$t9,256($s1)
    sw	$t9,256($s0)
    lw	$t8,260($s1)
    sw	$t8,260($s0)
    lw	$t3,264($s1)
    sw	$t3,264($s0)
    lw	$t2,268($s1)
    sw	$t2,268($s0)
    lw	$t1,272($s1)
    sw	$t1,272($s0)
    lw	$t0,276($s1)
    sw	$t0,276($s0)
    lw	$a7,280($s1)
    sw	$a7,280($s0)
    lw	$a6,284($s1)
    sw	$a6,284($s0)
    lw	$a5,288($s1)
    sw	$a5,288($s0)
    lw	$a4,292($s1)
    sw	$a4,292($s0)
    lw	$a3,296($s1)
    sw	$a3,296($s0)
    lw	$a2,300($s1)
    sw	$a2,300($s0)
    lw	$a1,304($s1)
    sw	$a1,304($s0)
    lw	$a0,308($s1)
    sw	$a0,308($s0)
    lw	$v1,312($s1)
    sw	$v1,312($s0)
    lw	$v0,316($s1)
    sw	$v0,316($s0)
    # Line 657
    lw	$at,432($s1)
    sw	$at,432($s0)
    la	$t9,memcpy
    lw	$ra,436($s1)
    li	$a2,8
    ld	$a1,64($sp)
    sw	$ra,436($s0)
    jalr	$t9
    ld	$a0,192($sp)
    la	$t9,memcpy
    ld	$a0,56($sp)
    ld	$a1,72($sp)
    jalr	$t9
    li	$a2,8
    la	$t9,memcpy
    ld	$a0,88($sp)
    ld	$a1,32($sp)
    jalr	$t9
    li	$a2,8
    la	$t9,memcpy
    ld	$a0,112($sp)
    ld	$a1,24($sp)
    jalr	$t9
    li	$a2,8
    # Line 661
    addiu	$s2,$s2,864
    # Line 657
    lw	$t9,472($s1)
    sw	$t9,472($s0)
    lw	$t8,476($s1)
    sw	$t8,476($s0)
    lw	$t3,480($s1)
    sw	$t3,480($s0)
    lw	$t2,484($s1)
    sw	$t2,484($s0)
    lw	$t1,488($s1)
    sw	$t1,488($s0)
    lw	$t0,492($s1)
    sw	$t0,492($s0)
    lw	$a7,496($s1)
    sw	$a7,496($s0)
    lw	$a6,500($s1)
    sw	$a6,500($s0)
    lw	$a5,504($s1)
    sw	$a5,504($s0)
    lw	$a4,508($s1)
    sw	$a4,508($s0)
    lw	$a3,512($s1)
    sw	$a3,512($s0)
    lw	$a2,516($s1)
    sw	$a2,516($s0)
    lw	$a1,520($s1)
    sw	$a1,520($s0)
    lw	$a0,524($s1)
    sw	$a0,524($s0)
    lw	$v1,528($s1)
    sw	$v1,528($s0)
    lw	$v0,532($s1)
    sw	$v0,532($s0)
    # Line 659
    lw	$at,648($s1)
    sw	$at,648($s0)
    la	$t9,memcpy
    lw	$ra,652($s1)
    li	$a2,8
    ld	$a1,200($sp)
    sw	$ra,652($s0)
    jalr	$t9
    ld	$a0,120($sp)
    la	$t9,memcpy
    ld	$a0,136($sp)
    ld	$a1,144($sp)
    jalr	$t9
    li	$a2,8
    # Line 662
    addiu	$s8,$s8,864
    # Line 659
    la	$t9,memcpy
    ld	$a0,152($sp)
    ld	$a1,128($sp)
    jalr	$t9
    li	$a2,8
    # Line 662
    addiu	$s5,$s5,864
    # Line 659
    la	$t9,memcpy
    ld	$a0,160($sp)
    ld	$a1,40($sp)
    jalr	$t9
    li	$a2,8
    # Line 661
    addiu	$s3,$s3,864
    # Line 659
    lw	$at,688($s1)
    sw	$at,688($s0)
    lw	$a2,692($s1)
    sw	$a2,692($s0)
    # Line 662
    ld	$a2,104($sp)
    addiu	$a2,$a2,864
    sd	$a2,104($sp)
    ld	$a2,80($sp)
    addiu	$a2,$a2,864
    sd	$a2,80($sp)
    ld	$a2,32($sp)
    addiu	$a2,$a2,864
    sd	$a2,32($sp)
    ld	$a2,144($sp)
    addiu	$a2,$a2,864
    sd	$a2,144($sp)
    # Line 661
    ld	$a2,224($sp)
    addiu	$s7,$s7,864
    # Line 662
    addiu	$s4,$s4,864
    # Line 661
    addiu	$a2,$a2,864
    sd	$a2,224($sp)
    ld	$a2,168($sp)
    # Line 662
    addiu	$s6,$s6,864
    # Line 659
    lw	$v1,696($s1)
    # Line 661
    addiu	$a2,$a2,864
    sd	$a2,168($sp)
    # Line 659
    sw	$v1,696($s0)
    # Line 661
    ld	$a2,192($sp)
    # Line 659
    lw	$v0,700($s1)
    # Line 662
    addiu	$s1,$s1,864
    # Line 661
    addiu	$a2,$a2,864
    # Line 659
    sw	$v0,700($s0)
    # Line 662
    ld	$v0,96($sp)
    sd	$a2,192($sp)
    # Line 661
    ld	$a2,112($sp)
    # Line 662
    addiu	$v0,$v0,864
    sd	$v0,96($sp)
    ld	$v0,72($sp)
    # Line 661
    addiu	$s0,$s0,864
    addiu	$a2,$a2,864
    # Line 662
    addiu	$v0,$v0,864
    sd	$v0,72($sp)
    ld	$v0,200($sp)
    sd	$a2,112($sp)
    # Line 661
    ld	$a2,152($sp)
    # Line 662
    addiu	$v0,$v0,864
    sd	$v0,200($sp)
    ld	$v0,40($sp)
    # Line 661
    addiu	$a2,$a2,864
    sd	$a2,152($sp)
    # Line 662
    addiu	$v0,$v0,864
    sd	$v0,40($sp)
    # Line 661
    ld	$v0,48($sp)
    # Line 662
    ld	$v1,176($sp)
    # Line 659
    lw	$at,-160($s1)
    # Line 661
    addiu	$v0,$v0,864
    # Line 662
    addiu	$v1,$v1,864
    # Line 659
    sw	$at,-160($s0)
    sd	$v1,176($sp)
    lw	$at,-156($s1)
    # Line 662
    ld	$v1,64($sp)
    sd	$v0,48($sp)
    # Line 659
    sw	$at,-156($s0)
    # Line 662
    addiu	$v1,$v1,864
    # Line 659
    lw	$at,-152($s1)
    sd	$v1,64($sp)
    # Line 662
    ld	$v1,24($sp)
    # Line 659
    sw	$at,-152($s0)
    # Line 661
    ld	$v0,208($sp)
    # Line 659
    lw	$at,-148($s1)
    # Line 662
    addiu	$v1,$v1,864
    sd	$v1,24($sp)
    # Line 659
    sw	$at,-148($s0)
    # Line 662
    ld	$v1,128($sp)
    # Line 659
    lw	$at,-144($s1)
    # Line 661
    addiu	$v0,$v0,864
    # Line 662
    addiu	$v1,$v1,864
    # Line 659
    sw	$at,-144($s0)
    sd	$v1,128($sp)
    lw	$v1,-140($s1)
    sd	$v0,208($sp)
    # Line 661
    ld	$v0,88($sp)
    # Line 659
    sw	$v1,-140($s0)
    # Line 661
    ld	$v1,184($sp)
    addiu	$v0,$v0,864
    sd	$v0,88($sp)
    addiu	$v1,$v1,864
    sd	$v1,184($sp)
    # Line 659
    lw	$at,-136($s1)
    # Line 661
    ld	$v1,56($sp)
    ld	$v0,136($sp)
    # Line 659
    sw	$at,-136($s0)
    # Line 661
    addiu	$v1,$v1,864
    # Line 659
    lw	$at,-132($s1)
    sd	$v1,56($sp)
    # Line 661
    ld	$v1,120($sp)
    # Line 659
    sw	$at,-132($s0)
    # Line 661
    addiu	$v0,$v0,864
    # Line 659
    lw	$at,-128($s1)
    # Line 661
    addiu	$v1,$v1,864
    sd	$v1,120($sp)
    # Line 659
    sw	$at,-128($s0)
    # Line 661
    ld	$v1,160($sp)
    # Line 659
    lw	$at,-124($s1)
    sd	$v0,136($sp)
    # Line 661
    addiu	$v1,$v1,864
    # Line 659
    sw	$at,-124($s0)
    # Line 663
    ld	$at,216($sp)
    # Line 659
    lw	$v0,-120($s1)
    sd	$v1,160($sp)
    # Line 663
    addiu	$at,$at,-4
    # Line 659
    sw	$v0,-120($s0)
    sd	$at,216($sp)
    lw	$v0,-116($s1)
    # Line 663
    slti	$at,$at,5
    beqz	$at,.L0f0df264
    # Line 659
    sw	$v0,-116($s0)
    ld	$s8,288($sp)
    ld	$s7,280($sp)
    ld	$s5,272($sp)
    ld	$s4,264($sp)
    ld	$ra,232($sp)
    ld	$s6,256($sp)
    ld	$s3,248($sp)
    ld	$s2,240($sp)
.L0f0df768:
    ld	$v0,216($sp)
    # Line 665
    addiu	$v0,$v0,-1
    sd	$v0,216($sp)
    slti	$v0,$v0,0
    bnez	$v0,.L0f0df904
    addiu	$v1,$s0,8
    sd	$ra,232($sp)
    sd	$s8,288($sp)
    addiu	$s8,$s1,32
    sd	$s3,248($sp)
    addiu	$s3,$s0,32
    sd	$s4,264($sp)
    addiu	$s4,$s1,24
    sd	$s2,240($sp)
    addiu	$s2,$s0,24
    sd	$s5,272($sp)
    addiu	$s5,$s1,16
    sd	$s7,280($sp)
    addiu	$s7,$s0,16
    sd	$s6,256($sp)
    addiu	$s6,$s1,8
    sd	$v1,224($sp)
.L0f0df7c0:
    # Line 666
    lw	$a4,0($s1)
    li	$a2,8
    move	$a1,$s6
    sw	$a4,0($s0)
    la	$t9,memcpy
    lw	$a3,4($s1)
    ld	$a0,224($sp)
    jalr	$t9
    sw	$a3,4($s0)
    la	$t9,memcpy
    move	$a0,$s7
    move	$a1,$s5
    jalr	$t9
    li	$a2,8
    move	$a1,$s4
    la	$t9,memcpy
    move	$a0,$s2
    # Line 667
    addiu	$s2,$s2,216
    # Line 666
    jalr	$t9
    li	$a2,8
    # Line 668
    addiu	$s5,$s5,216
    # Line 666
    move	$a1,$s8
    la	$t9,memcpy
    # Line 668
    addiu	$s8,$s8,216
    # Line 666
    move	$a0,$s3
    jalr	$t9
    li	$a2,8
    # Line 667
    addiu	$s3,$s3,216
    # Line 666
    lw	$a2,40($s1)
    sw	$a2,40($s0)
    lw	$v1,44($s1)
    sw	$v1,44($s0)
    lw	$at,48($s1)
    sw	$at,48($s0)
    lw	$a2,52($s1)
    sw	$a2,52($s0)
    lw	$v1,56($s1)
    sw	$v1,56($s0)
    lw	$at,60($s1)
    sw	$at,60($s0)
    lw	$a2,64($s1)
    sw	$a2,64($s0)
    lw	$v1,68($s1)
    sw	$v1,68($s0)
    lw	$at,72($s1)
    sw	$at,72($s0)
    lw	$a2,76($s1)
    sw	$a2,76($s0)
    lw	$v1,80($s1)
    sw	$v1,80($s0)
    lw	$at,84($s1)
    # Line 667
    addiu	$s7,$s7,216
    # Line 666
    sw	$at,84($s0)
    # Line 668
    addiu	$s4,$s4,216
    # Line 666
    lw	$a2,88($s1)
    # Line 668
    addiu	$s6,$s6,216
    addiu	$s1,$s1,216
    # Line 666
    sw	$a2,88($s0)
    # Line 667
    addiu	$s0,$s0,216
    # Line 666
    lw	$at,-124($s1)
    # Line 667
    ld	$v1,224($sp)
    li	$v0,-1
    # Line 666
    sw	$at,-124($s0)
    # Line 667
    addiu	$v1,$v1,216
    # Line 666
    lw	$a2,-120($s1)
    # Line 665
    ld	$at,216($sp)
    sd	$v1,224($sp)
    # Line 666
    sw	$a2,-120($s0)
    # Line 665
    addiu	$at,$at,-1
    # Line 666
    lw	$v1,-116($s1)
    sd	$at,216($sp)
    # Line 665
    bne	$at,$v0,.L0f0df7c0
    # Line 666
    sw	$v1,-116($s0)
    ld	$s8,288($sp)
    ld	$s7,280($sp)
    ld	$s5,272($sp)
    ld	$s4,264($sp)
    ld	$ra,232($sp)
    ld	$s6,256($sp)
    ld	$s3,248($sp)
    ld	$s2,240($sp)
.L0f0df904:
    # Line 670
    move	$v0,$zero
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,336
.end gl_mem_ntoh_fmfontinfo_array

# Function: gl_mem_ntoh_wfmoutline_array
# Declared: Line 677 (Source lines: 681-712)
# Address: 0x0f0df91c - 0x0f0dfa54 (Size: 312 bytes, Frame: 240)
.globl gl_mem_ntoh_wfmoutline_array
.ent gl_mem_ntoh_wfmoutline_array
gl_mem_ntoh_wfmoutline_array:
    # Line 681
    addiu	$sp,$sp,-112
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$ra,0($sp)
    sd	$s1,16($sp)
    # Line 686
    lw	$at,0($a1)
    # Line 681
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 686
    sw	$at,0($a0)
    # Line 681
    lui	$v0,0xfff5
    # Line 689
    lwc1	$f1,4($a1)
    # Line 681
    addiu	$v0,$v0,14636
    # addu	gp,t9,v0 (gp setup)
    # Line 689
    swc1	$f1,4($a0)
    # Line 698
    la	$t9,malloc
    # Line 692
    lwc1	$f0,8($a1)
    # Line 698
    addu	$a0,$at,$at
    jalr	$t9
    # Line 692
    swc1	$f0,8($s1)
    # Line 698
    move	$a0,$v0
    sw	$v0,12($s1)
    # Line 700
    la	$t9,gl_mem_ntoh_short_array
    lw	$a2,0($s1)
    addiu	$a1,$s0,20
    bal gl_mem_ntoh_short_array
    addu	$a2,$a2,$a2
    # Line 702
    addiu	$s0,$s0,60
    # Line 704
    la	$t9,malloc
    lw	$a0,0($s1)
    sd	$s4,32($sp)
    jalr	$t9
    sll	$a0,$a0,0x2
    sd	$s2,64($sp)
    sd	$s5,40($sp)
    # Line 705
    lw	$a3,0($s1)
    move	$s4,$zero
    # Line 704
    sw	$v0,16($s1)
    # Line 705
    blez	$a3,.L0f0dfa38
    ld	$ra,0($sp)
    sd	$s3,56($sp)
    sd	$s6,48($sp)
    move	$s2,$zero
    move	$s5,$zero
.L0f0df9c8:
    # Line 706
    lw	$s3,12($s1)
    addu	$s3,$s3,$s2
    lh	$s3,0($s3)
    # Line 707
    la	$t9,malloc
    # Line 706
    sll	$s3,$s3,0x3
    # Line 707
    jalr	$t9
    move	$a0,$s3
    move	$s6,$v0
    # Line 708
    move	$a0,$v0
    la	$t9,gl_mem_ntoh_float_array
    move	$a1,$s0
    # Line 709
    addu	$s0,$s3,$s0
    # Line 708
    bal gl_mem_ntoh_float_array
    move	$a2,$s3
    # Line 705
    addiu	$s4,$s4,1
    # Line 710
    lw	$v1,16($s1)
    addu	$v1,$v1,$s5
    sw	$s6,0($v1)
    # Line 705
    lw	$at,0($s1)
    addiu	$s2,$s2,2
    slt	$at,$s4,$at
    bnez	$at,.L0f0df9c8
    addiu	$s5,$s5,4
    ld	$s5,40($sp)
    ld	$ra,0($sp)
    ld	$s6,48($sp)
    ld	$s3,56($sp)
    ld	$s2,64($sp)
.L0f0dfa38:
    # Line 712
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_mem_ntoh_wfmoutline_array

