# Source: dglcmds.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c dglcmds.c -o dglcmds.T
# Total Functions: 620

.text

# Function: gl_d_gversion
# Declared: Line 30 (Source lines: 37-48)
# Address: 0x0f0a42ac - 0x0f0a4338 (Size: 140 bytes, Frame: 48)
.globl gl_d_gversion
.ent gl_d_gversion
gl_d_gversion:
    # Line 37
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a0
    # Line 44
    li	$a0,1
    sd	$gp,16($sp)
    # Line 37
    lui	$a3,0xfff9
    addiu	$a3,$a3,-4196
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 40
    li	$a2,1
    # Line 39
    lw	$a1,0($v0)
    # Line 41
    li	$v1,12
    # Line 44
    la	$t9,gl_comm_read_data
    # Line 42
    sw	$v1,8($a1)
    # Line 41
    sw	$v1,4($a1)
    # Line 40
    sw	$a2,0($a1)
    # Line 43
    addiu	$at,$a1,12
    # Line 44
    bal gl_comm_read_data
    # Line 43
    sw	$at,0($v0)
    # Line 46
    la	$a1,comm_buffer
    la	$a2,gl_mem_copy_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 48
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_gversion

# Function: gl_d_pagecolor
# Declared: Line 51 (Source lines: 58-65)
# Address: 0x0f0a4338 - 0x0f0a43a0 (Size: 104 bytes, Frame: 32)
.globl gl_d_pagecolor
.ent gl_d_pagecolor
gl_d_pagecolor:
    # Line 58
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-4336 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 61
    li	$a1,2
    # Line 60
    lw	$v0,0($v1)
    # Line 58
    andi	$a0,$a0,0xffff
    # Line 63
    la	$at,comm_endbuffer
    # Line 62
    sh	$a0,4($v0)
    # Line 61
    sw	$a1,0($v0)
    # Line 63
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4388
    sw	$v0,0($v1)
.L0f0a437c:
    ld	$gp,0($sp)
    # Line 65
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a4388:
    # Line 64
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a437c
    ld	$ra,8($sp)
.end gl_d_pagecolor

# Function: gl_d_textcolor
# Declared: Line 67 (Source lines: 74-81)
# Address: 0x0f0a43a0 - 0x0f0a4408 (Size: 104 bytes, Frame: 32)
.globl gl_d_textcolor
.ent gl_d_textcolor
gl_d_textcolor:
    # Line 74
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-4440 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 77
    li	$a1,3
    # Line 76
    lw	$v0,0($v1)
    # Line 74
    andi	$a0,$a0,0xffff
    # Line 79
    la	$at,comm_endbuffer
    # Line 78
    sh	$a0,4($v0)
    # Line 77
    sw	$a1,0($v0)
    # Line 79
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a43f0
    sw	$v0,0($v1)
.L0f0a43e4:
    ld	$gp,0($sp)
    # Line 81
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a43f0:
    # Line 80
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a43e4
    ld	$ra,8($sp)
.end gl_d_textcolor

# Function: gl_d_textport
# Declared: Line 83 (Source lines: 93-103)
# Address: 0x0f0a4408 - 0x0f0a4498 (Size: 144 bytes, Frame: 48)
.globl gl_d_textport
.ent gl_d_textport
gl_d_textport:
    # Line 96
    li	$a4,4
    # Line 93
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-4544 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    dsll32	$t9,$a0,0x10
    la	$v1,comm_curbufpos
    dsll32	$a0,$a3,0x10
    # Line 101
    la	$at,comm_endbuffer
    # Line 95
    lw	$v0,0($v1)
    # Line 93
    dsra32	$t9,$t9,0x10
    dsra32	$a0,$a0,0x10
    # Line 100
    sh	$a0,10($v0)
    # Line 97
    sh	$t9,4($v0)
    # Line 96
    sw	$a4,0($v0)
    # Line 93
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 99
    sh	$a1,8($v0)
    # Line 98
    sh	$a4,6($v0)
    # Line 101
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4480
    sw	$v0,0($v1)
.L0f0a4474:
    ld	$gp,0($sp)
    # Line 103
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a4480:
    # Line 102
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4474
    ld	$ra,8($sp)
.end gl_d_textport

# Function: gl_d_arc
# Declared: Line 105 (Source lines: 116-128)
# Address: 0x0f0a4498 - 0x0f0a4580 (Size: 232 bytes, Frame: 240)
.globl gl_d_arc
.ent gl_d_arc
gl_d_arc:
    # Line 116
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    dsll32	$a1,$a3,0x10
    addiu	$sp,$sp,-112
    sdc1	$f30,0($sp)
    sd	$gp,8($sp)
    dsll32	$a2,$a4,0x10
    lui	$a4,0xfff9
    addiu	$a4,$a4,-4688
    addu	$gp,$t9,$a4
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    mov.s	$f30,$f12
    # Line 118
    lw	$a7,0($a5)
    lw	$at,0($a6)
    # Line 116
    dsra32	$a2,$a2,0x10
    # Line 118
    addiu	$v0,$a7,24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4528
    # Line 116
    dsra32	$a1,$a1,0x10
.L0f0a44e8:
    # Line 125
    sh	$a2,18($a7)
    # Line 124
    sh	$a1,16($a7)
    # Line 123
    swc1	$f5,12($a7)
    # Line 122
    swc1	$f4,8($a7)
    # Line 121
    swc1	$f30,4($a7)
    # Line 120
    li	$v0,5
    sw	$v0,0($a7)
    # Line 126
    lw	$at,0($a6)
    ldc1	$f30,0($sp)
    addiu	$v0,$a7,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4568
    sw	$v0,0($a5)
.L0f0a451c:
    ld	$gp,8($sp)
    # Line 128
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a4528:
    sd	$a1,40($sp)
    sd	$a2,32($sp)
    # Line 119
    la	$t9,gl_comm_flush
    sdc1	$f4,24($sp)
    sd	$ra,48($sp)
    bal gl_comm_flush
    sdc1	$f5,16($sp)
    la	$a6,comm_endbuffer
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    ld	$a2,32($sp)
    ld	$a1,40($sp)
    la	$a5,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f0a44e8
    lw	$a7,0($a5)
.L0f0a4568:
    # Line 127
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    bal gl_comm_flush
    ldc1	$f30,0($sp)
    b	.L0f0a451c
    ld	$ra,48($sp)
.end gl_d_arc

# Function: gl_d_arcf
# Declared: Line 130 (Source lines: 141-153)
# Address: 0x0f0a4580 - 0x0f0a4668 (Size: 232 bytes, Frame: 240)
.globl gl_d_arcf
.ent gl_d_arcf
gl_d_arcf:
    # Line 141
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    dsll32	$a1,$a3,0x10
    addiu	$sp,$sp,-112
    sdc1	$f30,0($sp)
    sd	$gp,8($sp)
    dsll32	$a2,$a4,0x10
    lui	$a4,0xfff9
    addiu	$a4,$a4,-4920
    addu	$gp,$t9,$a4
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    mov.s	$f30,$f12
    # Line 143
    lw	$a7,0($a5)
    lw	$at,0($a6)
    # Line 141
    dsra32	$a2,$a2,0x10
    # Line 143
    addiu	$v0,$a7,24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4610
    # Line 141
    dsra32	$a1,$a1,0x10
.L0f0a45d0:
    # Line 150
    sh	$a2,18($a7)
    # Line 149
    sh	$a1,16($a7)
    # Line 148
    swc1	$f5,12($a7)
    # Line 147
    swc1	$f4,8($a7)
    # Line 146
    swc1	$f30,4($a7)
    # Line 145
    li	$v0,6
    sw	$v0,0($a7)
    # Line 151
    lw	$at,0($a6)
    ldc1	$f30,0($sp)
    addiu	$v0,$a7,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4650
    sw	$v0,0($a5)
.L0f0a4604:
    ld	$gp,8($sp)
    # Line 153
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a4610:
    sd	$a1,40($sp)
    sd	$a2,32($sp)
    # Line 144
    la	$t9,gl_comm_flush
    sdc1	$f4,24($sp)
    sd	$ra,48($sp)
    bal gl_comm_flush
    sdc1	$f5,16($sp)
    la	$a6,comm_endbuffer
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    ld	$a2,32($sp)
    ld	$a1,40($sp)
    la	$a5,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f0a45d0
    lw	$a7,0($a5)
.L0f0a4650:
    # Line 152
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    bal gl_comm_flush
    ldc1	$f30,0($sp)
    b	.L0f0a4604
    ld	$ra,48($sp)
.end gl_d_arcf

# Function: gl_d_arcfi
# Declared: Line 155 (Source lines: 166-178)
# Address: 0x0f0a4668 - 0x0f0a4748 (Size: 224 bytes, Frame: 240)
.globl gl_d_arcfi
.ent gl_d_arcfi
gl_d_arcfi:
    # Line 166
    dsll32	$a6,$a3,0x10
    dsll32	$a7,$a4,0x10
    addiu	$sp,$sp,-112
    sd	$s2,0($sp)
    sd	$gp,8($sp)
    lui	$t0,0xfff9
    addiu	$t0,$t0,-5152
    addu	$gp,$t9,$t0
    la	$t0,comm_curbufpos
    la	$t1,comm_endbuffer
    move	$s2,$a0
    # Line 168
    lw	$t2,0($t0)
    lw	$at,0($t1)
    # Line 166
    dsra32	$a7,$a7,0x10
    # Line 168
    addiu	$v0,$t2,24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a46f0
    # Line 166
    dsra32	$a6,$a6,0x10
.L0f0a46b0:
    # Line 175
    sh	$a7,18($t2)
    # Line 174
    sh	$a6,16($t2)
    # Line 173
    sw	$a2,12($t2)
    # Line 172
    sw	$a1,8($t2)
    # Line 171
    sw	$s2,4($t2)
    # Line 170
    li	$v0,7
    sw	$v0,0($t2)
    # Line 176
    lw	$at,0($t1)
    ld	$s2,0($sp)
    addiu	$v0,$t2,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4730
    sw	$v0,0($t0)
.L0f0a46e4:
    ld	$gp,8($sp)
    # Line 178
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a46f0:
    sd	$a1,40($sp)
    sd	$a2,32($sp)
    # Line 169
    la	$t9,gl_comm_flush
    sd	$a6,24($sp)
    sd	$ra,48($sp)
    bal gl_comm_flush
    sd	$a7,16($sp)
    la	$t1,comm_endbuffer
    ld	$a7,16($sp)
    ld	$a6,24($sp)
    ld	$a2,32($sp)
    ld	$a1,40($sp)
    la	$t0,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f0a46b0
    lw	$t2,0($t0)
.L0f0a4730:
    # Line 177
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    bal gl_comm_flush
    ld	$s2,0($sp)
    b	.L0f0a46e4
    ld	$ra,48($sp)
.end gl_d_arcfi

# Function: gl_d_arci
# Declared: Line 180 (Source lines: 191-203)
# Address: 0x0f0a4748 - 0x0f0a4828 (Size: 224 bytes, Frame: 240)
.globl gl_d_arci
.ent gl_d_arci
gl_d_arci:
    # Line 191
    dsll32	$a6,$a3,0x10
    dsll32	$a7,$a4,0x10
    addiu	$sp,$sp,-112
    sd	$s2,0($sp)
    sd	$gp,8($sp)
    lui	$t0,0xfff9
    addiu	$t0,$t0,-5376
    addu	$gp,$t9,$t0
    la	$t0,comm_curbufpos
    la	$t1,comm_endbuffer
    move	$s2,$a0
    # Line 193
    lw	$t2,0($t0)
    lw	$at,0($t1)
    # Line 191
    dsra32	$a7,$a7,0x10
    # Line 193
    addiu	$v0,$t2,24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a47d0
    # Line 191
    dsra32	$a6,$a6,0x10
.L0f0a4790:
    # Line 200
    sh	$a7,18($t2)
    # Line 199
    sh	$a6,16($t2)
    # Line 198
    sw	$a2,12($t2)
    # Line 197
    sw	$a1,8($t2)
    # Line 196
    sw	$s2,4($t2)
    # Line 195
    li	$v0,8
    sw	$v0,0($t2)
    # Line 201
    lw	$at,0($t1)
    ld	$s2,0($sp)
    addiu	$v0,$t2,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4810
    sw	$v0,0($t0)
.L0f0a47c4:
    ld	$gp,8($sp)
    # Line 203
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a47d0:
    sd	$a1,40($sp)
    sd	$a2,32($sp)
    # Line 194
    la	$t9,gl_comm_flush
    sd	$a6,24($sp)
    sd	$ra,48($sp)
    bal gl_comm_flush
    sd	$a7,16($sp)
    la	$t1,comm_endbuffer
    ld	$a7,16($sp)
    ld	$a6,24($sp)
    ld	$a2,32($sp)
    ld	$a1,40($sp)
    la	$t0,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f0a4790
    lw	$t2,0($t0)
.L0f0a4810:
    # Line 202
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    bal gl_comm_flush
    ld	$s2,0($sp)
    b	.L0f0a47c4
    ld	$ra,48($sp)
.end gl_d_arci

# Function: gl_d_attachcursor
# Declared: Line 205 (Source lines: 213-221)
# Address: 0x0f0a4828 - 0x0f0a4898 (Size: 112 bytes, Frame: 32)
.globl gl_d_attachcursor
.ent gl_d_attachcursor
gl_d_attachcursor:
    # Line 213
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-5600 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$a2,$a0,0xffff
    andi	$a0,$a1,0xffff
    # Line 215
    lw	$v0,0($v1)
    # Line 216
    li	$t9,9
    # Line 219
    la	$at,comm_endbuffer
    # Line 218
    sh	$a0,6($v0)
    # Line 217
    sh	$a2,4($v0)
    # Line 216
    sw	$t9,0($v0)
    # Line 219
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4880
    sw	$v0,0($v1)
.L0f0a4874:
    ld	$gp,0($sp)
    # Line 221
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a4880:
    # Line 220
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4874
    ld	$ra,8($sp)
.end gl_d_attachcursor

# Function: gl_d_backbuffer
# Declared: Line 223 (Source lines: 230-237)
# Address: 0x0f0a4898 - 0x0f0a48fc (Size: 100 bytes, Frame: 32)
.globl gl_d_backbuffer
.ent gl_d_backbuffer
gl_d_backbuffer:
    # Line 230
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-5712 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 232
    lw	$v0,0($v1)
    # Line 233
    li	$a1,10
    # Line 235
    la	$at,comm_endbuffer
    # Line 234
    sw	$a0,4($v0)
    # Line 233
    sw	$a1,0($v0)
    # Line 235
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a48e4
    sw	$v0,0($v1)
.L0f0a48d8:
    ld	$gp,0($sp)
    # Line 237
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a48e4:
    # Line 236
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a48d8
    ld	$ra,8($sp)
.end gl_d_backbuffer

# Function: gl_d_bbox2
# Declared: Line 239 (Source lines: 251-264)
# Address: 0x0f0a48fc - 0x0f0a49f4 (Size: 248 bytes, Frame: 240)
.globl gl_d_bbox2
.ent gl_d_bbox2
gl_d_bbox2:
    # Line 251
    mov.s	$f6,$f17
    mov.s	$f5,$f16
    mov.s	$f4,$f15
    dsll32	$a3,$a0,0x10
    dsll32	$a4,$a1,0x10
    addiu	$sp,$sp,-112
    sdc1	$f30,0($sp)
    sd	$gp,8($sp)
    lui	$a5,0xfff9
    addiu	$a5,$a5,-5812
    addu	$gp,$t9,$a5
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    mov.s	$f30,$f14
    # Line 253
    lw	$a7,0($a5)
    lw	$at,0($a6)
    # Line 251
    dsra32	$a4,$a4,0x10
    # Line 253
    addiu	$v0,$a7,28
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4994
    # Line 251
    dsra32	$a3,$a3,0x10
.L0f0a4950:
    # Line 261
    swc1	$f6,20($a7)
    # Line 260
    swc1	$f5,16($a7)
    # Line 259
    swc1	$f4,12($a7)
    # Line 258
    swc1	$f30,8($a7)
    # Line 257
    sh	$a4,6($a7)
    # Line 256
    sh	$a3,4($a7)
    # Line 255
    li	$v0,11
    sw	$v0,0($a7)
    # Line 262
    lw	$at,0($a6)
    ldc1	$f30,0($sp)
    addiu	$v0,$a7,24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a49dc
    sw	$v0,0($a5)
.L0f0a4988:
    ld	$gp,8($sp)
    # Line 264
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a4994:
    sd	$a3,48($sp)
    sd	$a4,40($sp)
    sdc1	$f4,32($sp)
    # Line 254
    la	$t9,gl_comm_flush
    sdc1	$f5,24($sp)
    sd	$ra,56($sp)
    bal gl_comm_flush
    sdc1	$f6,16($sp)
    la	$a6,comm_endbuffer
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    ld	$a4,40($sp)
    ld	$a3,48($sp)
    la	$a5,comm_curbufpos
    ld	$ra,56($sp)
    b	.L0f0a4950
    lw	$a7,0($a5)
.L0f0a49dc:
    # Line 263
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    bal gl_comm_flush
    ldc1	$f30,0($sp)
    b	.L0f0a4988
    ld	$ra,56($sp)
.end gl_d_bbox2

# Function: gl_d_bbox2i
# Declared: Line 266 (Source lines: 278-291)
# Address: 0x0f0a49f4 - 0x0f0a4adc (Size: 232 bytes, Frame: 240)
.globl gl_d_bbox2i
.ent gl_d_bbox2i
gl_d_bbox2i:
    # Line 278
    dsll32	$a7,$a0,0x10
    addiu	$sp,$sp,-112
    sd	$gp,0($sp)
    lui	$t1,0xfff9
    addiu	$t1,$t1,-6060
    addu	$gp,$t9,$t1
    la	$t1,comm_curbufpos
    la	$t2,comm_endbuffer
    dsll32	$t0,$a1,0x10
    # Line 280
    lw	$t3,0($t1)
    lw	$at,0($t2)
    # Line 278
    dsra32	$t0,$t0,0x10
    # Line 280
    addiu	$v0,$t3,28
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4a74
    # Line 278
    dsra32	$a7,$a7,0x10
.L0f0a4a34:
    # Line 288
    sw	$a5,20($t3)
    # Line 287
    sw	$a4,16($t3)
    # Line 286
    sw	$a3,12($t3)
    # Line 285
    sw	$a2,8($t3)
    # Line 284
    sh	$t0,6($t3)
    # Line 283
    sh	$a7,4($t3)
    # Line 282
    li	$v1,12
    sw	$v1,0($t3)
    # Line 289
    lw	$v0,0($t2)
    addiu	$at,$t3,24
    sltu	$v0,$v0,$at
    bnez	$v0,.L0f0a4ac4
    sw	$at,0($t1)
.L0f0a4a68:
    ld	$gp,0($sp)
    # Line 291
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a4a74:
    sd	$a7,48($sp)
    sd	$t0,40($sp)
    sd	$a2,32($sp)
    sd	$a3,24($sp)
    # Line 281
    la	$t9,gl_comm_flush
    sd	$a4,16($sp)
    sd	$ra,56($sp)
    bal gl_comm_flush
    sd	$a5,8($sp)
    la	$t2,comm_endbuffer
    ld	$a5,8($sp)
    ld	$a4,16($sp)
    ld	$a3,24($sp)
    ld	$a2,32($sp)
    ld	$t0,40($sp)
    ld	$a7,48($sp)
    la	$t1,comm_curbufpos
    ld	$ra,56($sp)
    b	.L0f0a4a34
    lw	$t3,0($t1)
.L0f0a4ac4:
    # Line 290
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4a68
    ld	$ra,56($sp)
.end gl_d_bbox2i

# Function: gl_d_blink
# Declared: Line 293 (Source lines: 304-316)
# Address: 0x0f0a4adc - 0x0f0a4bd8 (Size: 252 bytes, Frame: 240)
.globl gl_d_blink
.ent gl_d_blink
gl_d_blink:
    # Line 304
    andi	$a7,$a1,0xffff
    dsll32	$a6,$a0,0x10
    dsll32	$t0,$a2,0x10
    dsll32	$t1,$a3,0x10
    dsll32	$t2,$a4,0x10
    dsra32	$t2,$t2,0x10
    addiu	$sp,$sp,-112
    sd	$gp,8($sp)
    lui	$t3,0xfff9
    addiu	$t3,$t3,-6292
    addu	$gp,$t9,$t3
    la	$t3,comm_curbufpos
    dsra32	$t1,$t1,0x10
    la	$t8,comm_endbuffer
    # Line 306
    lw	$v0,0($t3)
    # Line 304
    dsra32	$t0,$t0,0x10
    # Line 306
    lw	$at,0($t8)
    sd	$v0,0($sp)
    addiu	$v0,$v0,24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4b74
    # Line 304
    dsra32	$a6,$a6,0x10
.L0f0a4b34:
    # Line 308
    ld	$v0,0($sp)
    li	$v1,13
    # Line 313
    sh	$t2,12($v0)
    # Line 312
    sh	$t1,10($v0)
    # Line 311
    sh	$t0,8($v0)
    # Line 310
    sh	$a7,6($v0)
    # Line 309
    sh	$a6,4($v0)
    # Line 308
    sw	$v1,0($v0)
    # Line 314
    lw	$at,0($t8)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4bc0
    sw	$v0,0($t3)
.L0f0a4b68:
    ld	$gp,8($sp)
    # Line 316
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a4b74:
    sd	$a6,48($sp)
    sd	$a7,40($sp)
    sd	$t0,32($sp)
    # Line 307
    la	$t9,gl_comm_flush
    sd	$t1,24($sp)
    sd	$ra,56($sp)
    bal gl_comm_flush
    sd	$t2,16($sp)
    la	$t8,comm_endbuffer
    ld	$t2,16($sp)
    ld	$t1,24($sp)
    ld	$t0,32($sp)
    la	$t3,comm_curbufpos
    ld	$a7,40($sp)
    ld	$a6,48($sp)
    lw	$a0,0($t3)
    ld	$ra,56($sp)
    b	.L0f0a4b34
    sd	$a0,0($sp)
.L0f0a4bc0:
    # Line 315
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4b68
    ld	$ra,56($sp)
.end gl_d_blink

# Function: gl_d_callobj
# Declared: Line 318 (Source lines: 325-332)
# Address: 0x0f0a4bd8 - 0x0f0a4c3c (Size: 100 bytes, Frame: 32)
.globl gl_d_callobj
.ent gl_d_callobj
gl_d_callobj:
    # Line 325
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-6544 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 327
    lw	$v0,0($v1)
    # Line 328
    li	$a1,14
    # Line 330
    la	$at,comm_endbuffer
    # Line 329
    sw	$a0,4($v0)
    # Line 328
    sw	$a1,0($v0)
    # Line 330
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4c24
    sw	$v0,0($v1)
.L0f0a4c18:
    ld	$gp,0($sp)
    # Line 332
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a4c24:
    # Line 331
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4c18
    ld	$ra,8($sp)
.end gl_d_callobj

# Function: gl_d_charstr
# Declared: Line 334 (Source lines: 341-356)
# Address: 0x0f0a4c3c - 0x0f0a4d54 (Size: 280 bytes, Frame: 48)
.globl gl_d_charstr
.ent gl_d_charstr
gl_d_charstr:
    # Line 341
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-6644 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,16($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0a4d24
    move	$s1,$a0
.L0f0a4c78:
    sd	$s0,24($sp)
    # Line 345
    move	$s0,$v0
    # Line 347
    la	$t9,strlen
    move	$a0,$s1
    # Line 346
    li	$a1,15
    # Line 347
    jalr	$t9
    # Line 346
    sw	$a1,0($v0)
    ld	$ra,16($sp)
    # Line 348
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0a4cfc
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 350
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0a4cb8:
    # Line 354
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    la	$a4,comm_curbufpos
    lw	$v1,0($v1)
    lw	$at,0($at)
    la	$a3,comm_endbuffer
    # Line 353
    sw	$s0,0($a4)
    # Line 354
    addu	$at,$at,$v1
    addiu	$v1,$at,-24
    sw	$v1,0($a3)
    addiu	$at,$at,-24
    sltu	$at,$at,$s0
    bnez	$at,.L0f0a4d40
    ld	$s0,24($sp)
.L0f0a4cf0:
    ld	$gp,8($sp)
    # Line 356
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a4cfc:
    # Line 352
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    ld	$ra,16($sp)
    b	.L0f0a4cb8
    ld	$s1,0($sp)
.L0f0a4d24:
    # Line 345
    la	$t9,gl_comm_flush
    bal gl_comm_flush
    nop
    la	$v0,comm_curbufpos
    sd	$s0,24($sp)
    b	.L0f0a4c78
    lw	$v0,0($v0)
.L0f0a4d40:
    # Line 355
    la	$t9,gl_comm_flush
    bal gl_comm_flush
    ld	$s0,24($sp)
    b	.L0f0a4cf0
    ld	$ra,16($sp)
.end gl_d_charstr

# Function: gl_d_circ
# Declared: Line 358 (Source lines: 367-376)
# Address: 0x0f0a4d54 - 0x0f0a4dc0 (Size: 108 bytes, Frame: 48)
.globl gl_d_circ
.ent gl_d_circ
gl_d_circ:
    # Line 367
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-6924
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 369
    lw	$v0,0($v1)
    # Line 370
    li	$a0,16
    # Line 374
    la	$at,comm_endbuffer
    # Line 373
    swc1	$f14,12($v0)
    # Line 372
    swc1	$f13,8($v0)
    # Line 371
    swc1	$f12,4($v0)
    # Line 370
    sw	$a0,0($v0)
    # Line 374
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4da8
    sw	$v0,0($v1)
.L0f0a4d9c:
    ld	$gp,0($sp)
    # Line 376
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a4da8:
    # Line 375
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4d9c
    ld	$ra,8($sp)
.end gl_d_circ

# Function: gl_d_circf
# Declared: Line 378 (Source lines: 387-396)
# Address: 0x0f0a4dc0 - 0x0f0a4e2c (Size: 108 bytes, Frame: 48)
.globl gl_d_circf
.ent gl_d_circf
gl_d_circf:
    # Line 387
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-7032
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 389
    lw	$v0,0($v1)
    # Line 390
    li	$a0,17
    # Line 394
    la	$at,comm_endbuffer
    # Line 393
    swc1	$f14,12($v0)
    # Line 392
    swc1	$f13,8($v0)
    # Line 391
    swc1	$f12,4($v0)
    # Line 390
    sw	$a0,0($v0)
    # Line 394
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4e14
    sw	$v0,0($v1)
.L0f0a4e08:
    ld	$gp,0($sp)
    # Line 396
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a4e14:
    # Line 395
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4e08
    ld	$ra,8($sp)
.end gl_d_circf

# Function: gl_d_circfi
# Declared: Line 398 (Source lines: 407-416)
# Address: 0x0f0a4e2c - 0x0f0a4e98 (Size: 108 bytes, Frame: 48)
.globl gl_d_circfi
.ent gl_d_circfi
gl_d_circfi:
    # Line 407
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-7140 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 409
    lw	$v0,0($v1)
    # Line 410
    li	$a3,18
    # Line 414
    la	$at,comm_endbuffer
    # Line 413
    sw	$a2,12($v0)
    # Line 412
    sw	$a1,8($v0)
    # Line 411
    sw	$a0,4($v0)
    # Line 410
    sw	$a3,0($v0)
    # Line 414
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4e80
    sw	$v0,0($v1)
.L0f0a4e74:
    ld	$gp,0($sp)
    # Line 416
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a4e80:
    # Line 415
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4e74
    ld	$ra,8($sp)
.end gl_d_circfi

# Function: gl_d_circi
# Declared: Line 418 (Source lines: 427-436)
# Address: 0x0f0a4e98 - 0x0f0a4f04 (Size: 108 bytes, Frame: 48)
.globl gl_d_circi
.ent gl_d_circi
gl_d_circi:
    # Line 427
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-7248 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 429
    lw	$v0,0($v1)
    # Line 430
    li	$a3,19
    # Line 434
    la	$at,comm_endbuffer
    # Line 433
    sw	$a2,12($v0)
    # Line 432
    sw	$a1,8($v0)
    # Line 431
    sw	$a0,4($v0)
    # Line 430
    sw	$a3,0($v0)
    # Line 434
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4eec
    sw	$v0,0($v1)
.L0f0a4ee0:
    ld	$gp,0($sp)
    # Line 436
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a4eec:
    # Line 435
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4ee0
    ld	$ra,8($sp)
.end gl_d_circi

# Function: gl_d_clear
# Declared: Line 438 (Source lines: 444-450)
# Address: 0x0f0a4f04 - 0x0f0a4f64 (Size: 96 bytes, Frame: 16)
.globl gl_d_clear
.ent gl_d_clear
gl_d_clear:
    # Line 444
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-7356
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 446
    lw	$v0,0($v1)
    # Line 447
    li	$a0,20
    # Line 448
    la	$at,comm_endbuffer
    # Line 447
    sw	$a0,0($v0)
    # Line 448
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4f4c
    sw	$v0,0($v1)
.L0f0a4f40:
    ld	$gp,0($sp)
    # Line 450
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a4f4c:
    # Line 449
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4f40
    ld	$ra,8($sp)
.end gl_d_clear

# Function: gl_d_clearhitcode
# Declared: Line 452 (Source lines: 458-464)
# Address: 0x0f0a4f64 - 0x0f0a4fc4 (Size: 96 bytes, Frame: 16)
.globl gl_d_clearhitcode
.ent gl_d_clearhitcode
gl_d_clearhitcode:
    # Line 458
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-7452
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 460
    lw	$v0,0($v1)
    # Line 461
    li	$a0,21
    # Line 462
    la	$at,comm_endbuffer
    # Line 461
    sw	$a0,0($v0)
    # Line 462
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a4fac
    sw	$v0,0($v1)
.L0f0a4fa0:
    ld	$gp,0($sp)
    # Line 464
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a4fac:
    # Line 463
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a4fa0
    ld	$ra,8($sp)
.end gl_d_clearhitcode

# Function: gl_d_closeobj
# Declared: Line 466 (Source lines: 472-478)
# Address: 0x0f0a4fc4 - 0x0f0a5024 (Size: 96 bytes, Frame: 16)
.globl gl_d_closeobj
.ent gl_d_closeobj
gl_d_closeobj:
    # Line 472
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-7548
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 474
    lw	$v0,0($v1)
    # Line 475
    li	$a0,22
    # Line 476
    la	$at,comm_endbuffer
    # Line 475
    sw	$a0,0($v0)
    # Line 476
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a500c
    sw	$v0,0($v1)
.L0f0a5000:
    ld	$gp,0($sp)
    # Line 478
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a500c:
    # Line 477
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5000
    ld	$ra,8($sp)
.end gl_d_closeobj

# Function: gl_d_cmov
# Declared: Line 480 (Source lines: 489-498)
# Address: 0x0f0a5024 - 0x0f0a5090 (Size: 108 bytes, Frame: 48)
.globl gl_d_cmov
.ent gl_d_cmov
gl_d_cmov:
    # Line 489
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-7644
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 491
    lw	$v0,0($v1)
    # Line 492
    li	$a0,23
    # Line 496
    la	$at,comm_endbuffer
    # Line 495
    swc1	$f14,12($v0)
    # Line 494
    swc1	$f13,8($v0)
    # Line 493
    swc1	$f12,4($v0)
    # Line 492
    sw	$a0,0($v0)
    # Line 496
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5078
    sw	$v0,0($v1)
.L0f0a506c:
    ld	$gp,0($sp)
    # Line 498
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a5078:
    # Line 497
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a506c
    ld	$ra,8($sp)
.end gl_d_cmov

# Function: gl_d_cmov2
# Declared: Line 500 (Source lines: 508-516)
# Address: 0x0f0a5090 - 0x0f0a50f8 (Size: 104 bytes, Frame: 32)
.globl gl_d_cmov2
.ent gl_d_cmov2
gl_d_cmov2:
    # Line 508
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-7752
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 510
    lw	$v0,0($v1)
    # Line 511
    li	$a0,24
    # Line 514
    la	$at,comm_endbuffer
    # Line 513
    swc1	$f13,8($v0)
    # Line 512
    swc1	$f12,4($v0)
    # Line 511
    sw	$a0,0($v0)
    # Line 514
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a50e0
    sw	$v0,0($v1)
.L0f0a50d4:
    ld	$gp,0($sp)
    # Line 516
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a50e0:
    # Line 515
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a50d4
    ld	$ra,8($sp)
.end gl_d_cmov2

# Function: gl_d_cmov2i
# Declared: Line 518 (Source lines: 526-534)
# Address: 0x0f0a50f8 - 0x0f0a5160 (Size: 104 bytes, Frame: 32)
.globl gl_d_cmov2i
.ent gl_d_cmov2i
gl_d_cmov2i:
    # Line 526
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-7856 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 528
    lw	$v0,0($v1)
    # Line 529
    li	$a2,25
    # Line 532
    la	$at,comm_endbuffer
    # Line 531
    sw	$a1,8($v0)
    # Line 530
    sw	$a0,4($v0)
    # Line 529
    sw	$a2,0($v0)
    # Line 532
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5148
    sw	$v0,0($v1)
.L0f0a513c:
    ld	$gp,0($sp)
    # Line 534
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a5148:
    # Line 533
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a513c
    ld	$ra,8($sp)
.end gl_d_cmov2i

# Function: gl_d_cmovi
# Declared: Line 536 (Source lines: 545-554)
# Address: 0x0f0a5160 - 0x0f0a51cc (Size: 108 bytes, Frame: 48)
.globl gl_d_cmovi
.ent gl_d_cmovi
gl_d_cmovi:
    # Line 545
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-7960 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 547
    lw	$v0,0($v1)
    # Line 548
    li	$a3,26
    # Line 552
    la	$at,comm_endbuffer
    # Line 551
    sw	$a2,12($v0)
    # Line 550
    sw	$a1,8($v0)
    # Line 549
    sw	$a0,4($v0)
    # Line 548
    sw	$a3,0($v0)
    # Line 552
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a51b4
    sw	$v0,0($v1)
.L0f0a51a8:
    ld	$gp,0($sp)
    # Line 554
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a51b4:
    # Line 553
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a51a8
    ld	$ra,8($sp)
.end gl_d_cmovi

# Function: gl_d_color
# Declared: Line 556 (Source lines: 563-570)
# Address: 0x0f0a51cc - 0x0f0a5234 (Size: 104 bytes, Frame: 32)
.globl gl_d_color
.ent gl_d_color
gl_d_color:
    # Line 563
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-8068 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 566
    li	$a1,27
    # Line 565
    lw	$v0,0($v1)
    # Line 563
    andi	$a0,$a0,0xffff
    # Line 568
    la	$at,comm_endbuffer
    # Line 567
    sh	$a0,4($v0)
    # Line 566
    sw	$a1,0($v0)
    # Line 568
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a521c
    sw	$v0,0($v1)
.L0f0a5210:
    ld	$gp,0($sp)
    # Line 570
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a521c:
    # Line 569
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5210
    ld	$ra,8($sp)
.end gl_d_color

# Function: gl_d_cursoff
# Declared: Line 572 (Source lines: 578-585)
# Address: 0x0f0a5234 - 0x0f0a52a4 (Size: 112 bytes, Frame: 16)
.globl gl_d_cursoff
.ent gl_d_cursoff
gl_d_cursoff:
    # Line 578
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-8172
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 580
    lw	$v0,0($v1)
    # Line 581
    li	$a0,28
    # Line 582
    la	$at,comm_endbuffer
    # Line 581
    sw	$a0,0($v0)
    # Line 582
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5290
    sw	$v0,0($v1)
    # Line 584
    la	$t9,gl_comm_flush
.L0f0a5278:
    bal gl_comm_flush
    nop
    # Line 585
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a5290:
    # Line 583
    la	$t9,gl_comm_flush
    bal gl_comm_flush
    nop
    b	.L0f0a5278
    # Line 584
    la	$t9,gl_comm_flush
.end gl_d_cursoff

# Function: gl_d_curson
# Declared: Line 587 (Source lines: 593-600)
# Address: 0x0f0a52a4 - 0x0f0a5314 (Size: 112 bytes, Frame: 16)
.globl gl_d_curson
.ent gl_d_curson
gl_d_curson:
    # Line 593
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-8284
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 595
    lw	$v0,0($v1)
    # Line 596
    li	$a0,29
    # Line 597
    la	$at,comm_endbuffer
    # Line 596
    sw	$a0,0($v0)
    # Line 597
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5300
    sw	$v0,0($v1)
    # Line 599
    la	$t9,gl_comm_flush
.L0f0a52e8:
    bal gl_comm_flush
    nop
    # Line 600
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a5300:
    # Line 598
    la	$t9,gl_comm_flush
    bal gl_comm_flush
    nop
    b	.L0f0a52e8
    # Line 599
    la	$t9,gl_comm_flush
.end gl_d_curson

# Function: gl_d_curveit
# Declared: Line 602 (Source lines: 609-616)
# Address: 0x0f0a5314 - 0x0f0a5380 (Size: 108 bytes, Frame: 32)
.globl gl_d_curveit
.ent gl_d_curveit
gl_d_curveit:
    # Line 609
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-8396 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 612
    li	$a1,30
    # Line 609
    dsll32	$a0,$a0,0x10
    # Line 611
    lw	$v0,0($v1)
    # Line 609
    dsra32	$a0,$a0,0x10
    # Line 614
    la	$at,comm_endbuffer
    # Line 613
    sh	$a0,4($v0)
    # Line 612
    sw	$a1,0($v0)
    # Line 614
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5368
    sw	$v0,0($v1)
.L0f0a535c:
    ld	$gp,0($sp)
    # Line 616
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a5368:
    # Line 615
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a535c
    ld	$ra,8($sp)
.end gl_d_curveit

# Function: gl_d_defcursor
# Declared: Line 618 (Source lines: 626-642)
# Address: 0x0f0a5380 - 0x0f0a5498 (Size: 280 bytes, Frame: 48)
.globl gl_d_defcursor
.ent gl_d_defcursor
gl_d_defcursor:
    # Line 626
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-8504 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a4,comm_curbufpos
    la	$a5,comm_endbuffer
    sd	$s2,8($sp)
    lw	$a6,0($a4)
    lw	$at,0($a5)
    dsll32	$s2,$a0,0x10
    addiu	$v0,$a6,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a545c
    dsra32	$s2,$s2,0x10
.L0f0a53c4:
    # Line 630
    move	$v0,$a6
    # Line 632
    sh	$s2,4($a6)
    # Line 634
    li	$a0,256
    # Line 631
    li	$a2,31
    sw	$a2,0($a6)
    # Line 634
    bnez	$s0,.L0f0a5424
    sw	$a0,8($a6)
    ld	$s2,8($sp)
    # Line 636
    addiu	$v0,$v0,268
    ld	$s0,0($sp)
.L0f0a53ec:
    # Line 640
    la	$a0,comm_buffer
    la	$v1,comm_stdsize
    lw	$a0,0($a0)
    lw	$v1,0($v1)
    # Line 639
    sw	$v0,0($a4)
    # Line 640
    addu	$v1,$v1,$a0
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0a5480
    sw	$at,0($a5)
.L0f0a5418:
    ld	$gp,16($sp)
    # Line 642
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a5424:
    # Line 638
    li	$a4,88
    la	$a3,gl_mem_hton_short_array
    li	$a2,256
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a4,comm_curbufpos
    la	$a5,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a53ec
    ld	$s0,0($sp)
.L0f0a545c:
    # Line 630
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    la	$a5,comm_endbuffer
    la	$a4,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a53c4
    lw	$a6,0($a4)
.L0f0a5480:
    # Line 641
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5418
    ld	$ra,24($sp)
.end gl_d_defcursor

# Function: gl_d_deflinestyle
# Declared: Line 644 (Source lines: 652-660)
# Address: 0x0f0a5498 - 0x0f0a550c (Size: 116 bytes, Frame: 32)
.globl gl_d_deflinestyle
.ent gl_d_deflinestyle
gl_d_deflinestyle:
    # Line 652
    dsll32	$a2,$a0,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-8784 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$a0,$a1,0xffff
    dsra32	$a2,$a2,0x10
    # Line 654
    lw	$v0,0($v1)
    # Line 655
    li	$t9,32
    # Line 658
    la	$at,comm_endbuffer
    # Line 657
    sh	$a0,6($v0)
    # Line 656
    sh	$a2,4($v0)
    # Line 655
    sw	$t9,0($v0)
    # Line 658
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a54f4
    sw	$v0,0($v1)
.L0f0a54e8:
    ld	$gp,0($sp)
    # Line 660
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a54f4:
    # Line 659
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a54e8
    ld	$ra,8($sp)
.end gl_d_deflinestyle

# Function: gl_d_defrasterfont
# Declared: Line 662 (Source lines: 674-699)
# Address: 0x0f0a550c - 0x0f0a56d8 (Size: 460 bytes, Frame: 128)
.globl gl_d_defrasterfont
.ent gl_d_defrasterfont
gl_d_defrasterfont:
    # Line 674
    dsll32	$t0,$a1,0x10
    dsll32	$t1,$a2,0x10
    dsll32	$t2,$a4,0x10
    addiu	$sp,$sp,-128
    sd	$s0,16($sp)
    move	$s0,$a5
    sd	$s1,0($sp)
    move	$s1,$a3
    dsra32	$t2,$t2,0x10
    dsra32	$t1,$t1,0x10
    dsra32	$t0,$t0,0x10
    sd	$gp,24($sp)
    lui	$t3,0xfff9
    addiu	$t3,$t3,-8900
    addu	$gp,$t9,$t3
    la	$t3,comm_curbufpos
    sd	$s8,8($sp)
    la	$t8,comm_endbuffer
    lw	$v0,0($t3)
    dsll32	$s8,$a0,0x10
    lw	$at,0($t8)
    sd	$v0,32($sp)
    addiu	$v0,$v0,180
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5684
    dsra32	$s8,$s8,0x10
.L0f0a5574:
    # Line 679
    li	$a4,33
    # Line 684
    li	$a1,-4
    ld	$at,32($sp)
    sll	$a2,$t1,0x3
    addiu	$a2,$a2,3
    and	$a2,$a2,$a1
    # Line 678
    move	$v0,$at
    # Line 679
    sw	$a4,0($at)
    # Line 682
    sh	$t1,8($at)
    # Line 681
    sh	$t0,6($at)
    # Line 680
    sh	$s8,4($at)
    # Line 684
    bnez	$s1,.L0f0a5614
    sw	$a2,12($at)
    ld	$s8,8($sp)
    ld	$s1,0($sp)
    # Line 686
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f0a55b8:
    # Line 689
    sh	$t2,0($v0)
    # Line 691
    addu	$a2,$t2,$t2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a1
    bnez	$s0,.L0f0a5654
    sw	$a2,4($v0)
    ld	$s0,16($sp)
    # Line 693
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0a55dc:
    # Line 697
    la	$a4,comm_buffer
    la	$a0,comm_stdsize
    lw	$a4,0($a4)
    lw	$a0,0($a0)
    # Line 696
    sw	$v0,0($t3)
    # Line 697
    addu	$a0,$a0,$a4
    addiu	$v1,$a0,-24
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$v0
    bnez	$a0,.L0f0a56c0
    sw	$v1,0($t8)
.L0f0a5608:
    ld	$gp,24($sp)
    # Line 699
    jr	$ra
    addiu	$sp,$sp,128
.L0f0a5614:
    sd	$t2,40($sp)
    # Line 688
    li	$a4,180
    la	$a3,gl_mem_hton_fontchar_array
    move	$a1,$s1
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,16
    sd	$ra,64($sp)
    jalr	$t9
    ld	$s8,8($sp)
    la	$t3,comm_curbufpos
    la	$t8,comm_endbuffer
    li	$a1,-4
    ld	$t2,40($sp)
    ld	$s1,0($sp)
    b	.L0f0a55b8
    ld	$ra,64($sp)
.L0f0a5654:
    # Line 695
    li	$a4,180
    la	$a3,gl_mem_hton_short_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,64($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$t3,comm_curbufpos
    la	$t8,comm_endbuffer
    ld	$s0,16($sp)
    b	.L0f0a55dc
    ld	$ra,64($sp)
.L0f0a5684:
    sd	$t0,56($sp)
    # Line 678
    la	$t9,gl_comm_flush
    sd	$t1,48($sp)
    sd	$ra,64($sp)
    bal gl_comm_flush
    sd	$t2,40($sp)
    la	$t8,comm_endbuffer
    ld	$t2,40($sp)
    la	$t3,comm_curbufpos
    ld	$t1,48($sp)
    ld	$t0,56($sp)
    lw	$a4,0($t3)
    ld	$ra,64($sp)
    b	.L0f0a5574
    sd	$a4,32($sp)
.L0f0a56c0:
    # Line 698
    la	$t9,gl_comm_flush
    sd	$ra,64($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5608
    ld	$ra,64($sp)
.end gl_d_defrasterfont

# Function: gl_d_delobj
# Declared: Line 701 (Source lines: 708-715)
# Address: 0x0f0a56d8 - 0x0f0a573c (Size: 100 bytes, Frame: 32)
.globl gl_d_delobj
.ent gl_d_delobj
gl_d_delobj:
    # Line 708
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-9360 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 710
    lw	$v0,0($v1)
    # Line 711
    li	$a1,34
    # Line 713
    la	$at,comm_endbuffer
    # Line 712
    sw	$a0,4($v0)
    # Line 711
    sw	$a1,0($v0)
    # Line 713
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5724
    sw	$v0,0($v1)
.L0f0a5718:
    ld	$gp,0($sp)
    # Line 715
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a5724:
    # Line 714
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5718
    ld	$ra,8($sp)
.end gl_d_delobj

# Function: gl_d_doublebuffer
# Declared: Line 717 (Source lines: 723-729)
# Address: 0x0f0a573c - 0x0f0a579c (Size: 96 bytes, Frame: 16)
.globl gl_d_doublebuffer
.ent gl_d_doublebuffer
gl_d_doublebuffer:
    # Line 723
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-9460
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 725
    lw	$v0,0($v1)
    # Line 726
    li	$a0,35
    # Line 727
    la	$at,comm_endbuffer
    # Line 726
    sw	$a0,0($v0)
    # Line 727
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5784
    sw	$v0,0($v1)
.L0f0a5778:
    ld	$gp,0($sp)
    # Line 729
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a5784:
    # Line 728
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5778
    ld	$ra,8($sp)
.end gl_d_doublebuffer

# Function: gl_d_draw
# Declared: Line 731 (Source lines: 740-749)
# Address: 0x0f0a579c - 0x0f0a5808 (Size: 108 bytes, Frame: 48)
.globl gl_d_draw
.ent gl_d_draw
gl_d_draw:
    # Line 740
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-9556
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 742
    lw	$v0,0($v1)
    # Line 743
    li	$a0,36
    # Line 747
    la	$at,comm_endbuffer
    # Line 746
    swc1	$f14,12($v0)
    # Line 745
    swc1	$f13,8($v0)
    # Line 744
    swc1	$f12,4($v0)
    # Line 743
    sw	$a0,0($v0)
    # Line 747
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a57f0
    sw	$v0,0($v1)
.L0f0a57e4:
    ld	$gp,0($sp)
    # Line 749
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a57f0:
    # Line 748
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a57e4
    ld	$ra,8($sp)
.end gl_d_draw

# Function: gl_d_draw2
# Declared: Line 751 (Source lines: 759-767)
# Address: 0x0f0a5808 - 0x0f0a5870 (Size: 104 bytes, Frame: 32)
.globl gl_d_draw2
.ent gl_d_draw2
gl_d_draw2:
    # Line 759
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-9664
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 761
    lw	$v0,0($v1)
    # Line 762
    li	$a0,37
    # Line 765
    la	$at,comm_endbuffer
    # Line 764
    swc1	$f13,8($v0)
    # Line 763
    swc1	$f12,4($v0)
    # Line 762
    sw	$a0,0($v0)
    # Line 765
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5858
    sw	$v0,0($v1)
.L0f0a584c:
    ld	$gp,0($sp)
    # Line 767
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a5858:
    # Line 766
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a584c
    ld	$ra,8($sp)
.end gl_d_draw2

# Function: gl_d_draw2i
# Declared: Line 769 (Source lines: 777-785)
# Address: 0x0f0a5870 - 0x0f0a58d8 (Size: 104 bytes, Frame: 32)
.globl gl_d_draw2i
.ent gl_d_draw2i
gl_d_draw2i:
    # Line 777
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-9768 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 779
    lw	$v0,0($v1)
    # Line 780
    li	$a2,38
    # Line 783
    la	$at,comm_endbuffer
    # Line 782
    sw	$a1,8($v0)
    # Line 781
    sw	$a0,4($v0)
    # Line 780
    sw	$a2,0($v0)
    # Line 783
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a58c0
    sw	$v0,0($v1)
.L0f0a58b4:
    ld	$gp,0($sp)
    # Line 785
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a58c0:
    # Line 784
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a58b4
    ld	$ra,8($sp)
.end gl_d_draw2i

# Function: gl_d_drawi
# Declared: Line 787 (Source lines: 796-805)
# Address: 0x0f0a58d8 - 0x0f0a5944 (Size: 108 bytes, Frame: 48)
.globl gl_d_drawi
.ent gl_d_drawi
gl_d_drawi:
    # Line 796
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-9872 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 798
    lw	$v0,0($v1)
    # Line 799
    li	$a3,39
    # Line 803
    la	$at,comm_endbuffer
    # Line 802
    sw	$a2,12($v0)
    # Line 801
    sw	$a1,8($v0)
    # Line 800
    sw	$a0,4($v0)
    # Line 799
    sw	$a3,0($v0)
    # Line 803
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a592c
    sw	$v0,0($v1)
.L0f0a5920:
    ld	$gp,0($sp)
    # Line 805
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a592c:
    # Line 804
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5920
    ld	$ra,8($sp)
.end gl_d_drawi

# Function: gl_d_editobj
# Declared: Line 807 (Source lines: 814-821)
# Address: 0x0f0a5944 - 0x0f0a59a8 (Size: 100 bytes, Frame: 32)
.globl gl_d_editobj
.ent gl_d_editobj
gl_d_editobj:
    # Line 814
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-9980 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 816
    lw	$v0,0($v1)
    # Line 817
    li	$a1,40
    # Line 819
    la	$at,comm_endbuffer
    # Line 818
    sw	$a0,4($v0)
    # Line 817
    sw	$a1,0($v0)
    # Line 819
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5990
    sw	$v0,0($v1)
.L0f0a5984:
    ld	$gp,0($sp)
    # Line 821
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a5990:
    # Line 820
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5984
    ld	$ra,8($sp)
.end gl_d_editobj

# Function: gl_d_endpick
# Declared: Line 823 (Source lines: 830-841)
# Address: 0x0f0a59a8 - 0x0f0a5a34 (Size: 140 bytes, Frame: 48)
.globl gl_d_endpick
.ent gl_d_endpick
gl_d_endpick:
    # Line 830
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a0
    # Line 837
    li	$a0,1
    sd	$gp,16($sp)
    # Line 830
    lui	$a3,0xfff9
    addiu	$a3,$a3,-10080
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 833
    li	$a2,41
    # Line 832
    lw	$a1,0($v0)
    # Line 834
    lui	$v1,0x8000
    # Line 837
    la	$t9,gl_comm_read_data
    # Line 835
    sw	$v1,8($a1)
    # Line 834
    sw	$v1,4($a1)
    # Line 833
    sw	$a2,0($a1)
    # Line 836
    addiu	$at,$a1,12
    # Line 837
    bal gl_comm_read_data
    # Line 836
    sw	$at,0($v0)
    # Line 839
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_short_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 841
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_endpick

# Function: gl_d_endselect
# Declared: Line 844 (Source lines: 851-862)
# Address: 0x0f0a5a34 - 0x0f0a5ac0 (Size: 140 bytes, Frame: 48)
.globl gl_d_endselect
.ent gl_d_endselect
gl_d_endselect:
    # Line 851
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a0
    # Line 858
    li	$a0,1
    sd	$gp,16($sp)
    # Line 851
    lui	$a3,0xfff9
    addiu	$a3,$a3,-10220
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 854
    li	$a2,42
    # Line 853
    lw	$a1,0($v0)
    # Line 855
    lui	$v1,0x8000
    # Line 858
    la	$t9,gl_comm_read_data
    # Line 856
    sw	$v1,8($a1)
    # Line 855
    sw	$v1,4($a1)
    # Line 854
    sw	$a2,0($a1)
    # Line 857
    addiu	$at,$a1,12
    # Line 858
    bal gl_comm_read_data
    # Line 857
    sw	$at,0($v0)
    # Line 860
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_short_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 862
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_endselect

# Function: gl_d_finish
# Declared: Line 865 (Source lines: 871-879)
# Address: 0x0f0a5ac0 - 0x0f0a5b30 (Size: 112 bytes, Frame: 16)
.globl gl_d_finish
.ent gl_d_finish
gl_d_finish:
    # Line 871
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-10360
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 874
    lw	$v0,0($v1)
    # Line 875
    li	$a0,43
    # Line 876
    la	$at,comm_endbuffer
    # Line 875
    sw	$a0,0($v0)
    # Line 876
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5b1c
    sw	$v0,0($v1)
    # Line 878
    la	$t9,gl_d_getpattern
.L0f0a5b04:
    jalr	$t9
    nop
    # Line 879
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a5b1c:
    # Line 877
    la	$t9,gl_comm_flush
    bal gl_comm_flush
    nop
    b	.L0f0a5b04
    # Line 878
    la	$t9,gl_d_getpattern
.end gl_d_finish

# Function: gl_d_font
# Declared: Line 881 (Source lines: 888-895)
# Address: 0x0f0a5b30 - 0x0f0a5b9c (Size: 108 bytes, Frame: 32)
.globl gl_d_font
.ent gl_d_font
gl_d_font:
    # Line 888
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-10472 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 891
    li	$a1,44
    # Line 888
    dsll32	$a0,$a0,0x10
    # Line 890
    lw	$v0,0($v1)
    # Line 888
    dsra32	$a0,$a0,0x10
    # Line 893
    la	$at,comm_endbuffer
    # Line 892
    sh	$a0,4($v0)
    # Line 891
    sw	$a1,0($v0)
    # Line 893
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5b84
    sw	$v0,0($v1)
.L0f0a5b78:
    ld	$gp,0($sp)
    # Line 895
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a5b84:
    # Line 894
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5b78
    ld	$ra,8($sp)
.end gl_d_font

# Function: gl_d_frontbuffer
# Declared: Line 897 (Source lines: 904-911)
# Address: 0x0f0a5b9c - 0x0f0a5c00 (Size: 100 bytes, Frame: 32)
.globl gl_d_frontbuffer
.ent gl_d_frontbuffer
gl_d_frontbuffer:
    # Line 904
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-10580 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 906
    lw	$v0,0($v1)
    # Line 907
    li	$a1,45
    # Line 909
    la	$at,comm_endbuffer
    # Line 908
    sw	$a0,4($v0)
    # Line 907
    sw	$a1,0($v0)
    # Line 909
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5be8
    sw	$v0,0($v1)
.L0f0a5bdc:
    ld	$gp,0($sp)
    # Line 911
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a5be8:
    # Line 910
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5bdc
    ld	$ra,8($sp)
.end gl_d_frontbuffer

# Function: gl_d_gconfig
# Declared: Line 913 (Source lines: 919-925)
# Address: 0x0f0a5c00 - 0x0f0a5c60 (Size: 96 bytes, Frame: 16)
.globl gl_d_gconfig
.ent gl_d_gconfig
gl_d_gconfig:
    # Line 919
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-10680
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 921
    lw	$v0,0($v1)
    # Line 922
    li	$a0,46
    # Line 923
    la	$at,comm_endbuffer
    # Line 922
    sw	$a0,0($v0)
    # Line 923
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a5c48
    sw	$v0,0($v1)
.L0f0a5c3c:
    ld	$gp,0($sp)
    # Line 925
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a5c48:
    # Line 924
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a5c3c
    ld	$ra,8($sp)
.end gl_d_gconfig

# Function: gl_d_genobj
# Declared: Line 927 (Source lines: 933-940)
# Address: 0x0f0a5c60 - 0x0f0a5cb8 (Size: 88 bytes, Frame: 16)
.globl gl_d_genobj
.ent gl_d_genobj
gl_d_genobj:
    # Line 933
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-10776
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 938
    li	$a0,1
    sd	$ra,0($sp)
    # Line 935
    lw	$a1,0($v0)
    # Line 936
    li	$v1,47
    # Line 938
    la	$t9,gl_comm_read_data
    # Line 936
    sw	$v1,0($a1)
    # Line 937
    addiu	$at,$a1,4
    # Line 938
    bal gl_comm_read_data
    # Line 937
    sw	$at,0($v0)
    # Line 939
    la	$v0,comm_buffer
    # Line 940
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_genobj

# Function: gl_d_gentag
# Declared: Line 943 (Source lines: 949-956)
# Address: 0x0f0a5cb8 - 0x0f0a5d10 (Size: 88 bytes, Frame: 16)
.globl gl_d_gentag
.ent gl_d_gentag
gl_d_gentag:
    # Line 949
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-10864
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 954
    li	$a0,1
    sd	$ra,0($sp)
    # Line 951
    lw	$a1,0($v0)
    # Line 952
    li	$v1,48
    # Line 954
    la	$t9,gl_comm_read_data
    # Line 952
    sw	$v1,0($a1)
    # Line 953
    addiu	$at,$a1,4
    # Line 954
    bal gl_comm_read_data
    # Line 953
    sw	$at,0($v0)
    # Line 955
    la	$v0,comm_buffer
    # Line 956
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_gentag

# Function: gl_d_getbuffer
# Declared: Line 959 (Source lines: 965-972)
# Address: 0x0f0a5d10 - 0x0f0a5d68 (Size: 88 bytes, Frame: 16)
.globl gl_d_getbuffer
.ent gl_d_getbuffer
gl_d_getbuffer:
    # Line 965
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-10952
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 970
    li	$a0,1
    sd	$ra,0($sp)
    # Line 967
    lw	$a1,0($v0)
    # Line 968
    li	$v1,49
    # Line 970
    la	$t9,gl_comm_read_data
    # Line 968
    sw	$v1,0($a1)
    # Line 969
    addiu	$at,$a1,4
    # Line 970
    bal gl_comm_read_data
    # Line 969
    sw	$at,0($v0)
    # Line 971
    la	$v0,comm_buffer
    # Line 972
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getbuffer

# Function: gl_d_getbutton
# Declared: Line 975 (Source lines: 982-990)
# Address: 0x0f0a5d68 - 0x0f0a5dc8 (Size: 96 bytes, Frame: 32)
.globl gl_d_getbutton
.ent gl_d_getbutton
gl_d_getbutton:
    # Line 982
    andi	$v1,$a0,0xffff
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff9
    addiu	$a3,$a3,-11040
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    # Line 988
    li	$a0,1
    sd	$ra,0($sp)
    # Line 984
    lw	$a1,0($v0)
    # Line 985
    li	$a2,50
    # Line 988
    la	$t9,gl_comm_read_data
    # Line 986
    sh	$v1,4($a1)
    # Line 985
    sw	$a2,0($a1)
    # Line 987
    addiu	$at,$a1,8
    # Line 988
    bal gl_comm_read_data
    # Line 987
    sw	$at,0($v0)
    # Line 989
    la	$v0,comm_buffer
    # Line 990
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_getbutton

# Function: gl_d_getcmmode
# Declared: Line 993 (Source lines: 999-1006)
# Address: 0x0f0a5dc8 - 0x0f0a5e20 (Size: 88 bytes, Frame: 16)
.globl gl_d_getcmmode
.ent gl_d_getcmmode
gl_d_getcmmode:
    # Line 999
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-11136
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1004
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1001
    lw	$a1,0($v0)
    # Line 1002
    li	$v1,51
    # Line 1004
    la	$t9,gl_comm_read_data
    # Line 1002
    sw	$v1,0($a1)
    # Line 1003
    addiu	$at,$a1,4
    # Line 1004
    bal gl_comm_read_data
    # Line 1003
    sw	$at,0($v0)
    # Line 1005
    la	$v0,comm_buffer
    # Line 1006
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getcmmode

# Function: gl_d_getcolor
# Declared: Line 1009 (Source lines: 1015-1022)
# Address: 0x0f0a5e20 - 0x0f0a5e78 (Size: 88 bytes, Frame: 16)
.globl gl_d_getcolor
.ent gl_d_getcolor
gl_d_getcolor:
    # Line 1015
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-11224
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1020
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1017
    lw	$a1,0($v0)
    # Line 1018
    li	$v1,52
    # Line 1020
    la	$t9,gl_comm_read_data
    # Line 1018
    sw	$v1,0($a1)
    # Line 1019
    addiu	$at,$a1,4
    # Line 1020
    bal gl_comm_read_data
    # Line 1019
    sw	$at,0($v0)
    # Line 1021
    la	$v0,comm_buffer
    # Line 1022
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getcolor

# Function: gl_d_getcursor
# Declared: Line 1025 (Source lines: 1035-1049)
# Address: 0x0f0a5e78 - 0x0f0a5f1c (Size: 164 bytes, Frame: 208)
.globl gl_d_getcursor
.ent gl_d_getcursor
gl_d_getcursor:
    # Line 1035
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1044
    li	$a0,1
    sd	$a3,24($sp)
    sd	$a1,40($sp)
    sd	$gp,16($sp)
    # Line 1035
    lui	$a4,0xfff9
    addiu	$a4,$a4,-11312
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,32($sp)
    # Line 1037
    lw	$a2,0($v0)
    # Line 1038
    li	$v1,53
    # Line 1044
    la	$t9,gl_comm_read_data
    # Line 1038
    sw	$v1,0($a2)
    # Line 1043
    addiu	$at,$a2,4
    # Line 1044
    bal gl_comm_read_data
    # Line 1043
    sw	$at,0($v0)
    # Line 1045
    la	$ra,comm_buffer
    lw	$v1,0($ra)
    lh	$v1,4($v1)
    sh	$v1,0($s8)
    # Line 1046
    lw	$v0,0($ra)
    ld	$v1,40($sp)
    lh	$v0,8($v0)
    sh	$v0,0($v1)
    # Line 1047
    lw	$at,0($ra)
    ld	$v0,32($sp)
    lh	$at,12($at)
    sh	$at,0($v0)
    # Line 1048
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lw	$s8,16($s8)
    sw	$s8,0($ra)
    # Line 1049
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_getcursor

# Function: gl_d_getdepth
# Declared: Line 1051 (Source lines: 1059-1069)
# Address: 0x0f0a5f1c - 0x0f0a5f98 (Size: 124 bytes, Frame: 48)
.globl gl_d_getdepth
.ent gl_d_getdepth
gl_d_getdepth:
    # Line 1059
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1066
    li	$a0,1
    sd	$gp,16($sp)
    # Line 1059
    lui	$a3,0xfff9
    addiu	$a3,$a3,-11476
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    # Line 1061
    lw	$a2,0($v0)
    # Line 1062
    li	$v1,54
    # Line 1066
    la	$t9,gl_comm_read_data
    # Line 1062
    sw	$v1,0($a2)
    # Line 1065
    addiu	$at,$a2,4
    # Line 1066
    bal gl_comm_read_data
    # Line 1065
    sw	$at,0($v0)
    # Line 1067
    la	$ra,comm_buffer
    lw	$at,0($ra)
    lh	$at,4($at)
    sh	$at,0($s8)
    # Line 1068
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lh	$s8,8($s8)
    sh	$s8,0($ra)
    # Line 1069
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_getdepth

# Function: gl_d_getdisplaymode
# Declared: Line 1071 (Source lines: 1077-1084)
# Address: 0x0f0a5f98 - 0x0f0a5ff0 (Size: 88 bytes, Frame: 16)
.globl gl_d_getdisplaymode
.ent gl_d_getdisplaymode
gl_d_getdisplaymode:
    # Line 1077
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-11600
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1082
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1079
    lw	$a1,0($v0)
    # Line 1080
    li	$v1,55
    # Line 1082
    la	$t9,gl_comm_read_data
    # Line 1080
    sw	$v1,0($a1)
    # Line 1081
    addiu	$at,$a1,4
    # Line 1082
    bal gl_comm_read_data
    # Line 1081
    sw	$at,0($v0)
    # Line 1083
    la	$v0,comm_buffer
    # Line 1084
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getdisplaymode

# Function: gl_d_getfont
# Declared: Line 1087 (Source lines: 1093-1100)
# Address: 0x0f0a5ff0 - 0x0f0a6048 (Size: 88 bytes, Frame: 16)
.globl gl_d_getfont
.ent gl_d_getfont
gl_d_getfont:
    # Line 1093
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-11688
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1098
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1095
    lw	$a1,0($v0)
    # Line 1096
    li	$v1,56
    # Line 1098
    la	$t9,gl_comm_read_data
    # Line 1096
    sw	$v1,0($a1)
    # Line 1097
    addiu	$at,$a1,4
    # Line 1098
    bal gl_comm_read_data
    # Line 1097
    sw	$at,0($v0)
    # Line 1099
    la	$v0,comm_buffer
    # Line 1100
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getfont

# Function: gl_d_getheight
# Declared: Line 1103 (Source lines: 1109-1116)
# Address: 0x0f0a6048 - 0x0f0a60a0 (Size: 88 bytes, Frame: 16)
.globl gl_d_getheight
.ent gl_d_getheight
gl_d_getheight:
    # Line 1109
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-11776
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1114
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1111
    lw	$a1,0($v0)
    # Line 1112
    li	$v1,57
    # Line 1114
    la	$t9,gl_comm_read_data
    # Line 1112
    sw	$v1,0($a1)
    # Line 1113
    addiu	$at,$a1,4
    # Line 1114
    bal gl_comm_read_data
    # Line 1113
    sw	$at,0($v0)
    # Line 1115
    la	$v0,comm_buffer
    # Line 1116
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getheight

# Function: gl_d_gethitcode
# Declared: Line 1119 (Source lines: 1125-1132)
# Address: 0x0f0a60a0 - 0x0f0a60f8 (Size: 88 bytes, Frame: 16)
.globl gl_d_gethitcode
.ent gl_d_gethitcode
gl_d_gethitcode:
    # Line 1125
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-11864
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1130
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1127
    lw	$a1,0($v0)
    # Line 1128
    li	$v1,58
    # Line 1130
    la	$t9,gl_comm_read_data
    # Line 1128
    sw	$v1,0($a1)
    # Line 1129
    addiu	$at,$a1,4
    # Line 1130
    bal gl_comm_read_data
    # Line 1129
    sw	$at,0($v0)
    # Line 1131
    la	$v0,comm_buffer
    # Line 1132
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_gethitcode

# Function: gl_d_getlsbackup
# Declared: Line 1135 (Source lines: 1141-1148)
# Address: 0x0f0a60f8 - 0x0f0a6150 (Size: 88 bytes, Frame: 16)
.globl gl_d_getlsbackup
.ent gl_d_getlsbackup
gl_d_getlsbackup:
    # Line 1141
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-11952
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1146
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1143
    lw	$a1,0($v0)
    # Line 1144
    li	$v1,59
    # Line 1146
    la	$t9,gl_comm_read_data
    # Line 1144
    sw	$v1,0($a1)
    # Line 1145
    addiu	$at,$a1,4
    # Line 1146
    bal gl_comm_read_data
    # Line 1145
    sw	$at,0($v0)
    # Line 1147
    la	$v0,comm_buffer
    # Line 1148
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getlsbackup

# Function: gl_d_getlstyle
# Declared: Line 1151 (Source lines: 1157-1164)
# Address: 0x0f0a6150 - 0x0f0a61a8 (Size: 88 bytes, Frame: 16)
.globl gl_d_getlstyle
.ent gl_d_getlstyle
gl_d_getlstyle:
    # Line 1157
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-12040
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1162
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1159
    lw	$a1,0($v0)
    # Line 1160
    li	$v1,60
    # Line 1162
    la	$t9,gl_comm_read_data
    # Line 1160
    sw	$v1,0($a1)
    # Line 1161
    addiu	$at,$a1,4
    # Line 1162
    bal gl_comm_read_data
    # Line 1161
    sw	$at,0($v0)
    # Line 1163
    la	$v0,comm_buffer
    # Line 1164
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getlstyle

# Function: gl_d_getlwidth
# Declared: Line 1167 (Source lines: 1173-1180)
# Address: 0x0f0a61a8 - 0x0f0a6200 (Size: 88 bytes, Frame: 16)
.globl gl_d_getlwidth
.ent gl_d_getlwidth
gl_d_getlwidth:
    # Line 1173
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-12128
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1178
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1175
    lw	$a1,0($v0)
    # Line 1176
    li	$v1,61
    # Line 1178
    la	$t9,gl_comm_read_data
    # Line 1176
    sw	$v1,0($a1)
    # Line 1177
    addiu	$at,$a1,4
    # Line 1178
    bal gl_comm_read_data
    # Line 1177
    sw	$at,0($v0)
    # Line 1179
    la	$v0,comm_buffer
    # Line 1180
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getlwidth

# Function: gl_d_getmap
# Declared: Line 1183 (Source lines: 1189-1196)
# Address: 0x0f0a6200 - 0x0f0a6258 (Size: 88 bytes, Frame: 16)
.globl gl_d_getmap
.ent gl_d_getmap
gl_d_getmap:
    # Line 1189
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-12216
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1194
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1191
    lw	$a1,0($v0)
    # Line 1192
    li	$v1,62
    # Line 1194
    la	$t9,gl_comm_read_data
    # Line 1192
    sw	$v1,0($a1)
    # Line 1193
    addiu	$at,$a1,4
    # Line 1194
    bal gl_comm_read_data
    # Line 1193
    sw	$at,0($v0)
    # Line 1195
    la	$v0,comm_buffer
    # Line 1196
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getmap

# Function: gl_d_getmatrix
# Declared: Line 1199 (Source lines: 1206-1216)
# Address: 0x0f0a6258 - 0x0f0a62d8 (Size: 128 bytes, Frame: 48)
.globl gl_d_getmatrix
.ent gl_d_getmatrix
gl_d_getmatrix:
    # Line 1206
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1213
    li	$a0,1
    sd	$gp,16($sp)
    # Line 1206
    lui	$a3,0xfff9
    addiu	$a3,$a3,-12304
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 1209
    li	$a2,63
    # Line 1208
    lw	$a1,0($v0)
    # Line 1210
    li	$v1,64
    # Line 1213
    la	$t9,gl_comm_read_data
    # Line 1211
    sw	$v1,8($a1)
    # Line 1210
    sw	$v1,4($a1)
    # Line 1209
    sw	$a2,0($a1)
    # Line 1212
    addiu	$at,$a1,12
    # Line 1213
    bal gl_comm_read_data
    # Line 1212
    sw	$at,0($v0)
    # Line 1215
    la	$a1,comm_buffer
    move	$a0,$s8
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    la	$a2,gl_mem_ntoh_float_array
    jalr	$t9
    addiu	$a1,$a1,4
    # Line 1216
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_getmatrix

# Function: gl_d_getplanes
# Declared: Line 1218 (Source lines: 1224-1231)
# Address: 0x0f0a62d8 - 0x0f0a6330 (Size: 88 bytes, Frame: 16)
.globl gl_d_getplanes
.ent gl_d_getplanes
gl_d_getplanes:
    # Line 1224
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-12432
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1229
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1226
    lw	$a1,0($v0)
    # Line 1227
    li	$v1,64
    # Line 1229
    la	$t9,gl_comm_read_data
    # Line 1227
    sw	$v1,0($a1)
    # Line 1228
    addiu	$at,$a1,4
    # Line 1229
    bal gl_comm_read_data
    # Line 1228
    sw	$at,0($v0)
    # Line 1230
    la	$v0,comm_buffer
    # Line 1231
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getplanes

# Function: gl_d_getresetls
# Declared: Line 1234 (Source lines: 1240-1247)
# Address: 0x0f0a6330 - 0x0f0a6388 (Size: 88 bytes, Frame: 16)
.globl gl_d_getresetls
.ent gl_d_getresetls
gl_d_getresetls:
    # Line 1240
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-12520
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1245
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1242
    lw	$a1,0($v0)
    # Line 1243
    li	$v1,65
    # Line 1245
    la	$t9,gl_comm_read_data
    # Line 1243
    sw	$v1,0($a1)
    # Line 1244
    addiu	$at,$a1,4
    # Line 1245
    bal gl_comm_read_data
    # Line 1244
    sw	$at,0($v0)
    # Line 1246
    la	$v0,comm_buffer
    # Line 1247
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getresetls

# Function: gl_d_getscrmask
# Declared: Line 1250 (Source lines: 1260-1274)
# Address: 0x0f0a6388 - 0x0f0a642c (Size: 164 bytes, Frame: 208)
.globl gl_d_getscrmask
.ent gl_d_getscrmask
gl_d_getscrmask:
    # Line 1260
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1269
    li	$a0,1
    sd	$a3,24($sp)
    sd	$a1,40($sp)
    sd	$gp,16($sp)
    # Line 1260
    lui	$a4,0xfff9
    addiu	$a4,$a4,-12608
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,32($sp)
    # Line 1262
    lw	$a2,0($v0)
    # Line 1263
    li	$v1,66
    # Line 1269
    la	$t9,gl_comm_read_data
    # Line 1263
    sw	$v1,0($a2)
    # Line 1268
    addiu	$at,$a2,4
    # Line 1269
    bal gl_comm_read_data
    # Line 1268
    sw	$at,0($v0)
    # Line 1270
    la	$ra,comm_buffer
    lw	$v1,0($ra)
    lh	$v1,4($v1)
    sh	$v1,0($s8)
    # Line 1271
    lw	$v0,0($ra)
    ld	$v1,40($sp)
    lh	$v0,8($v0)
    sh	$v0,0($v1)
    # Line 1272
    lw	$at,0($ra)
    ld	$v0,32($sp)
    lh	$at,12($at)
    sh	$at,0($v0)
    # Line 1273
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lh	$s8,16($s8)
    sh	$s8,0($ra)
    # Line 1274
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_getscrmask

# Function: gl_d_getvaluator
# Declared: Line 1276 (Source lines: 1283-1291)
# Address: 0x0f0a642c - 0x0f0a648c (Size: 96 bytes, Frame: 32)
.globl gl_d_getvaluator
.ent gl_d_getvaluator
gl_d_getvaluator:
    # Line 1283
    andi	$v1,$a0,0xffff
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff9
    addiu	$a3,$a3,-12772
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    # Line 1289
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1285
    lw	$a1,0($v0)
    # Line 1286
    li	$a2,67
    # Line 1289
    la	$t9,gl_comm_read_data
    # Line 1287
    sh	$v1,4($a1)
    # Line 1286
    sw	$a2,0($a1)
    # Line 1288
    addiu	$at,$a1,8
    # Line 1289
    bal gl_comm_read_data
    # Line 1288
    sw	$at,0($v0)
    # Line 1290
    la	$v0,comm_buffer
    # Line 1291
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_getvaluator

# Function: gl_d_getviewport
# Declared: Line 1294 (Source lines: 1304-1318)
# Address: 0x0f0a648c - 0x0f0a6530 (Size: 164 bytes, Frame: 208)
.globl gl_d_getviewport
.ent gl_d_getviewport
gl_d_getviewport:
    # Line 1304
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1313
    li	$a0,1
    sd	$a3,24($sp)
    sd	$a1,40($sp)
    sd	$gp,16($sp)
    # Line 1304
    lui	$a4,0xfff9
    addiu	$a4,$a4,-12868
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,32($sp)
    # Line 1306
    lw	$a2,0($v0)
    # Line 1307
    li	$v1,68
    # Line 1313
    la	$t9,gl_comm_read_data
    # Line 1307
    sw	$v1,0($a2)
    # Line 1312
    addiu	$at,$a2,4
    # Line 1313
    bal gl_comm_read_data
    # Line 1312
    sw	$at,0($v0)
    # Line 1314
    la	$ra,comm_buffer
    lw	$v1,0($ra)
    lh	$v1,4($v1)
    sh	$v1,0($s8)
    # Line 1315
    lw	$v0,0($ra)
    ld	$v1,40($sp)
    lh	$v0,8($v0)
    sh	$v0,0($v1)
    # Line 1316
    lw	$at,0($ra)
    ld	$v0,32($sp)
    lh	$at,12($at)
    sh	$at,0($v0)
    # Line 1317
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lh	$s8,16($s8)
    sh	$s8,0($ra)
    # Line 1318
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_getviewport

# Function: gl_d_getwritemask
# Declared: Line 1320 (Source lines: 1326-1333)
# Address: 0x0f0a6530 - 0x0f0a6588 (Size: 88 bytes, Frame: 16)
.globl gl_d_getwritemask
.ent gl_d_getwritemask
gl_d_getwritemask:
    # Line 1326
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-13032
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 1331
    li	$a0,1
    sd	$ra,0($sp)
    # Line 1328
    lw	$a1,0($v0)
    # Line 1329
    li	$v1,69
    # Line 1331
    la	$t9,gl_comm_read_data
    # Line 1329
    sw	$v1,0($a1)
    # Line 1330
    addiu	$at,$a1,4
    # Line 1331
    bal gl_comm_read_data
    # Line 1330
    sw	$at,0($v0)
    # Line 1332
    la	$v0,comm_buffer
    # Line 1333
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getwritemask

# Function: gl_d_gflush
# Declared: Line 1336 (Source lines: 1342-1349)
# Address: 0x0f0a6588 - 0x0f0a65f8 (Size: 112 bytes, Frame: 16)
.globl gl_d_gflush
.ent gl_d_gflush
gl_d_gflush:
    # Line 1342
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-13120
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1344
    lw	$v0,0($v1)
    # Line 1345
    li	$a0,70
    # Line 1346
    la	$at,comm_endbuffer
    # Line 1345
    sw	$a0,0($v0)
    # Line 1346
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a65e4
    sw	$v0,0($v1)
    # Line 1348
    la	$t9,gl_comm_flush
.L0f0a65cc:
    bal gl_comm_flush
    nop
    # Line 1349
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a65e4:
    # Line 1347
    la	$t9,gl_comm_flush
    bal gl_comm_flush
    nop
    b	.L0f0a65cc
    # Line 1348
    la	$t9,gl_comm_flush
.end gl_d_gflush

# Function: gl_d_ginit
# Declared: Line 1351 (Source lines: 1357-1363)
# Address: 0x0f0a65f8 - 0x0f0a6658 (Size: 96 bytes, Frame: 16)
.globl gl_d_ginit
.ent gl_d_ginit
gl_d_ginit:
    # Line 1357
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-13232
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1359
    lw	$v0,0($v1)
    # Line 1360
    li	$a0,71
    # Line 1361
    la	$at,comm_endbuffer
    # Line 1360
    sw	$a0,0($v0)
    # Line 1361
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a6640
    sw	$v0,0($v1)
.L0f0a6634:
    ld	$gp,0($sp)
    # Line 1363
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a6640:
    # Line 1362
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a6634
    ld	$ra,8($sp)
.end gl_d_ginit

# Function: gl_d_greset
# Declared: Line 1365 (Source lines: 1371-1377)
# Address: 0x0f0a6658 - 0x0f0a66b8 (Size: 96 bytes, Frame: 16)
.globl gl_d_greset
.ent gl_d_greset
gl_d_greset:
    # Line 1371
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-13328
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1373
    lw	$v0,0($v1)
    # Line 1374
    li	$a0,72
    # Line 1375
    la	$at,comm_endbuffer
    # Line 1374
    sw	$a0,0($v0)
    # Line 1375
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a66a0
    sw	$v0,0($v1)
.L0f0a6694:
    ld	$gp,0($sp)
    # Line 1377
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a66a0:
    # Line 1376
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a6694
    ld	$ra,8($sp)
.end gl_d_greset

# Function: gl_d_gRGBcolor
# Declared: Line 1379 (Source lines: 1388-1400)
# Address: 0x0f0a66b8 - 0x0f0a6748 (Size: 144 bytes, Frame: 208)
.globl gl_d_gRGBcolor
.ent gl_d_gRGBcolor
gl_d_gRGBcolor:
    # Line 1388
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1396
    li	$a0,1
    sd	$a1,32($sp)
    sd	$gp,16($sp)
    # Line 1388
    lui	$a3,0xfff9
    addiu	$a3,$a3,-13424
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,24($sp)
    # Line 1390
    lw	$a2,0($v0)
    # Line 1391
    li	$v1,73
    # Line 1396
    la	$t9,gl_comm_read_data
    # Line 1391
    sw	$v1,0($a2)
    # Line 1395
    addiu	$at,$a2,4
    # Line 1396
    bal gl_comm_read_data
    # Line 1395
    sw	$at,0($v0)
    # Line 1397
    la	$ra,comm_buffer
    lw	$v0,0($ra)
    lh	$v0,4($v0)
    sh	$v0,0($s8)
    # Line 1398
    lw	$at,0($ra)
    ld	$v0,32($sp)
    lh	$at,8($at)
    sh	$at,0($v0)
    # Line 1399
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lh	$s8,12($s8)
    sh	$s8,0($ra)
    # Line 1400
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_gRGBcolor

# Function: gl_d_gRGBcursor
# Declared: Line 1402 (Source lines: 1416-1438)
# Address: 0x0f0a6748 - 0x0f0a683c (Size: 244 bytes, Frame: 144)
.globl gl_d_gRGBcursor
.ent gl_d_gRGBcursor
gl_d_gRGBcursor:
    # Line 1416
    addiu	$sp,$sp,-144
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1429
    li	$a0,1
    sd	$a7,24($sp)
    sd	$a6,32($sp)
    sd	$a5,40($sp)
    sd	$a3,56($sp)
    sd	$a1,72($sp)
    sd	$gp,16($sp)
    sd	$a4,48($sp)
    # Line 1416
    lui	$a4,0xfff9
    addiu	$a4,$a4,-13568
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,64($sp)
    # Line 1418
    lw	$a2,0($v0)
    # Line 1419
    li	$v1,74
    # Line 1429
    la	$t9,gl_comm_read_data
    # Line 1419
    sw	$v1,0($a2)
    # Line 1428
    addiu	$at,$a2,4
    # Line 1429
    bal gl_comm_read_data
    # Line 1428
    sw	$at,0($v0)
    # Line 1430
    la	$t0,comm_buffer
    lw	$ra,0($t0)
    lh	$ra,4($ra)
    sh	$ra,0($s8)
    # Line 1431
    lw	$a0,0($t0)
    ld	$s8,72($sp)
    lh	$a0,8($a0)
    sh	$a0,0($s8)
    # Line 1432
    lw	$v1,0($t0)
    ld	$a0,64($sp)
    lh	$v1,12($v1)
    sh	$v1,0($a0)
    # Line 1433
    lw	$v0,0($t0)
    ld	$v1,56($sp)
    lh	$v0,16($v0)
    sh	$v0,0($v1)
    # Line 1434
    lw	$at,0($t0)
    ld	$v0,48($sp)
    lh	$at,20($at)
    sh	$at,0($v0)
    # Line 1435
    lw	$ra,0($t0)
    ld	$at,40($sp)
    lh	$ra,24($ra)
    sh	$ra,0($at)
    # Line 1436
    lw	$s8,0($t0)
    ld	$ra,32($sp)
    lh	$s8,28($s8)
    sh	$s8,0($ra)
    # Line 1437
    lw	$t0,0($t0)
    ld	$s8,24($sp)
    lw	$t0,32($t0)
    ld	$gp,16($sp)
    # Line 1438
    ld	$ra,0($sp)
    # Line 1437
    sw	$t0,0($s8)
    # Line 1438
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end gl_d_gRGBcursor

# Function: gl_d_gRGBmask
# Declared: Line 1440 (Source lines: 1449-1461)
# Address: 0x0f0a683c - 0x0f0a68cc (Size: 144 bytes, Frame: 208)
.globl gl_d_gRGBmask
.ent gl_d_gRGBmask
gl_d_gRGBmask:
    # Line 1449
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1457
    li	$a0,1
    sd	$a1,32($sp)
    sd	$gp,16($sp)
    # Line 1449
    lui	$a3,0xfff9
    addiu	$a3,$a3,-13812
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,24($sp)
    # Line 1451
    lw	$a2,0($v0)
    # Line 1452
    li	$v1,75
    # Line 1457
    la	$t9,gl_comm_read_data
    # Line 1452
    sw	$v1,0($a2)
    # Line 1456
    addiu	$at,$a2,4
    # Line 1457
    bal gl_comm_read_data
    # Line 1456
    sw	$at,0($v0)
    # Line 1458
    la	$ra,comm_buffer
    lw	$v0,0($ra)
    lh	$v0,4($v0)
    sh	$v0,0($s8)
    # Line 1459
    lw	$at,0($ra)
    ld	$v0,32($sp)
    lh	$at,8($at)
    sh	$at,0($v0)
    # Line 1460
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lh	$s8,12($s8)
    sh	$s8,0($ra)
    # Line 1461
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_gRGBmask

# Function: gl_d_isobj
# Declared: Line 1463 (Source lines: 1470-1478)
# Address: 0x0f0a68cc - 0x0f0a6928 (Size: 92 bytes, Frame: 32)
.globl gl_d_isobj
.ent gl_d_isobj
gl_d_isobj:
    # Line 1470
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-13956
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 1472
    lw	$a1,0($v0)
    # Line 1473
    li	$v1,76
    # Line 1476
    la	$t9,gl_comm_read_data
    # Line 1474
    sw	$a0,4($a1)
    # Line 1476
    li	$a0,1
    # Line 1473
    sw	$v1,0($a1)
    # Line 1475
    addiu	$at,$a1,8
    # Line 1476
    bal gl_comm_read_data
    # Line 1475
    sw	$at,0($v0)
    # Line 1477
    la	$v0,comm_buffer
    # Line 1478
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_isobj

# Function: gl_d_istag
# Declared: Line 1481 (Source lines: 1488-1496)
# Address: 0x0f0a6928 - 0x0f0a6984 (Size: 92 bytes, Frame: 32)
.globl gl_d_istag
.ent gl_d_istag
gl_d_istag:
    # Line 1488
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-14048
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 1490
    lw	$a1,0($v0)
    # Line 1491
    li	$v1,77
    # Line 1494
    la	$t9,gl_comm_read_data
    # Line 1492
    sw	$a0,4($a1)
    # Line 1494
    li	$a0,1
    # Line 1491
    sw	$v1,0($a1)
    # Line 1493
    addiu	$at,$a1,8
    # Line 1494
    bal gl_comm_read_data
    # Line 1493
    sw	$at,0($v0)
    # Line 1495
    la	$v0,comm_buffer
    # Line 1496
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_istag

# Function: gl_d_linewidth
# Declared: Line 1499 (Source lines: 1506-1513)
# Address: 0x0f0a6984 - 0x0f0a69f0 (Size: 108 bytes, Frame: 32)
.globl gl_d_linewidth
.ent gl_d_linewidth
gl_d_linewidth:
    # Line 1506
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-14140 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 1509
    li	$a1,78
    # Line 1506
    dsll32	$a0,$a0,0x10
    # Line 1508
    lw	$v0,0($v1)
    # Line 1506
    dsra32	$a0,$a0,0x10
    # Line 1511
    la	$at,comm_endbuffer
    # Line 1510
    sh	$a0,4($v0)
    # Line 1509
    sw	$a1,0($v0)
    # Line 1511
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a69d8
    sw	$v0,0($v1)
.L0f0a69cc:
    ld	$gp,0($sp)
    # Line 1513
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a69d8:
    # Line 1512
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a69cc
    ld	$ra,8($sp)
.end gl_d_linewidth

# Function: gl_d_loadmatrix
# Declared: Line 1515 (Source lines: 1522-1537)
# Address: 0x0f0a69f0 - 0x0f0a6af0 (Size: 256 bytes, Frame: 48)
.globl gl_d_loadmatrix
.ent gl_d_loadmatrix
gl_d_loadmatrix:
    # Line 1522
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-14248 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    lw	$a5,0($a1)
    lw	$at,0($a4)
    sd	$s0,0($sp)
    addiu	$v0,$a5,84
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a6ab4
    move	$s0,$a0
.L0f0a6a28:
    # Line 1526
    move	$v0,$a5
    # Line 1529
    li	$a2,64
    # Line 1527
    li	$a3,79
    sw	$a3,0($a5)
    # Line 1529
    bnez	$s0,.L0f0a6a80
    sw	$a2,4($a5)
    # Line 1531
    addiu	$v0,$v0,72
    ld	$s0,0($sp)
.L0f0a6a48:
    # Line 1535
    la	$a2,comm_buffer
    la	$v1,comm_stdsize
    lw	$a2,0($a2)
    lw	$v1,0($v1)
    # Line 1534
    sw	$v0,0($a1)
    # Line 1535
    addu	$v1,$v1,$a2
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0a6ad8
    sw	$at,0($a4)
.L0f0a6a74:
    ld	$gp,8($sp)
    # Line 1537
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a6a80:
    # Line 1533
    li	$a4,84
    la	$a3,gl_mem_hton_float_array
    li	$a2,64
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    ld	$ra,16($sp)
    b	.L0f0a6a48
    ld	$s0,0($sp)
.L0f0a6ab4:
    # Line 1526
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    bal gl_comm_flush
    nop
    la	$a4,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0a6a28
    lw	$a5,0($a1)
.L0f0a6ad8:
    # Line 1536
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a6a74
    ld	$ra,16($sp)
.end gl_d_loadmatrix

# Function: gl_d_lookat
# Declared: Line 1539 (Source lines: 1552-1566)
# Address: 0x0f0a6af0 - 0x0f0a6bf4 (Size: 260 bytes, Frame: 144)
.globl gl_d_lookat
.ent gl_d_lookat
gl_d_lookat:
    # Line 1552
    mov.s	$f8,$f17
    mov.s	$f7,$f16
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    dsll32	$a1,$a6,0x10
    addiu	$sp,$sp,-144
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-14504 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a2,comm_curbufpos
    la	$a3,comm_endbuffer
    sdc1	$f30,0($sp)
    # Line 1554
    lw	$a4,0($a2)
    lw	$at,0($a3)
    # Line 1552
    mov.s	$f30,$f12
    # Line 1554
    addiu	$v0,$a4,32
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a6b8c
    # Line 1552
    dsra32	$a1,$a1,0x10
.L0f0a6b44:
    # Line 1563
    sh	$a1,28($a4)
    # Line 1562
    swc1	$f8,24($a4)
    # Line 1561
    swc1	$f7,20($a4)
    # Line 1560
    swc1	$f6,16($a4)
    # Line 1559
    swc1	$f5,12($a4)
    # Line 1558
    swc1	$f4,8($a4)
    # Line 1557
    swc1	$f30,4($a4)
    # Line 1556
    li	$at,80
    sw	$at,0($a4)
    # Line 1564
    lw	$a0,0($a3)
    ldc1	$f30,0($sp)
    addiu	$at,$a4,32
    sltu	$a0,$a0,$at
    bnez	$a0,.L0f0a6bdc
    sw	$at,0($a2)
.L0f0a6b80:
    ld	$gp,8($sp)
    # Line 1566
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a6b8c:
    sd	$a1,56($sp)
    sdc1	$f4,48($sp)
    sdc1	$f5,40($sp)
    sdc1	$f6,32($sp)
    # Line 1555
    la	$t9,gl_comm_flush
    sdc1	$f7,24($sp)
    sd	$ra,64($sp)
    bal gl_comm_flush
    sdc1	$f8,16($sp)
    la	$a3,comm_endbuffer
    ldc1	$f8,16($sp)
    ldc1	$f7,24($sp)
    ldc1	$f6,32($sp)
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    ld	$a1,56($sp)
    la	$a2,comm_curbufpos
    ld	$ra,64($sp)
    b	.L0f0a6b44
    lw	$a4,0($a2)
.L0f0a6bdc:
    # Line 1565
    la	$t9,gl_comm_flush
    sd	$ra,64($sp)
    bal gl_comm_flush
    ldc1	$f30,0($sp)
    b	.L0f0a6b80
    ld	$ra,64($sp)
.end gl_d_lookat

# Function: gl_d_lsbackup
# Declared: Line 1568 (Source lines: 1575-1582)
# Address: 0x0f0a6bf4 - 0x0f0a6c58 (Size: 100 bytes, Frame: 32)
.globl gl_d_lsbackup
.ent gl_d_lsbackup
gl_d_lsbackup:
    # Line 1575
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-14764 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 1577
    lw	$v0,0($v1)
    # Line 1578
    li	$a1,81
    # Line 1580
    la	$at,comm_endbuffer
    # Line 1579
    sw	$a0,4($v0)
    # Line 1578
    sw	$a1,0($v0)
    # Line 1580
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a6c40
    sw	$v0,0($v1)
.L0f0a6c34:
    ld	$gp,0($sp)
    # Line 1582
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a6c40:
    # Line 1581
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a6c34
    ld	$ra,8($sp)
.end gl_d_lsbackup

# Function: gl_d_makeobj
# Declared: Line 1584 (Source lines: 1591-1598)
# Address: 0x0f0a6c58 - 0x0f0a6cbc (Size: 100 bytes, Frame: 32)
.globl gl_d_makeobj
.ent gl_d_makeobj
gl_d_makeobj:
    # Line 1591
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-14864 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 1593
    lw	$v0,0($v1)
    # Line 1594
    li	$a1,82
    # Line 1596
    la	$at,comm_endbuffer
    # Line 1595
    sw	$a0,4($v0)
    # Line 1594
    sw	$a1,0($v0)
    # Line 1596
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a6ca4
    sw	$v0,0($v1)
.L0f0a6c98:
    ld	$gp,0($sp)
    # Line 1598
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a6ca4:
    # Line 1597
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a6c98
    ld	$ra,8($sp)
.end gl_d_makeobj

# Function: gl_d_maketag
# Declared: Line 1600 (Source lines: 1607-1614)
# Address: 0x0f0a6cbc - 0x0f0a6d20 (Size: 100 bytes, Frame: 32)
.globl gl_d_maketag
.ent gl_d_maketag
gl_d_maketag:
    # Line 1607
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-14964 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 1609
    lw	$v0,0($v1)
    # Line 1610
    li	$a1,83
    # Line 1612
    la	$at,comm_endbuffer
    # Line 1611
    sw	$a0,4($v0)
    # Line 1610
    sw	$a1,0($v0)
    # Line 1612
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a6d08
    sw	$v0,0($v1)
.L0f0a6cfc:
    ld	$gp,0($sp)
    # Line 1614
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a6d08:
    # Line 1613
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a6cfc
    ld	$ra,8($sp)
.end gl_d_maketag

# Function: gl_d_mapcolor
# Declared: Line 1616 (Source lines: 1626-1636)
# Address: 0x0f0a6d20 - 0x0f0a6dac (Size: 140 bytes, Frame: 48)
.globl gl_d_mapcolor
.ent gl_d_mapcolor
gl_d_mapcolor:
    # Line 1629
    li	$a4,84
    # Line 1626
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-15064 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$t9,$a0,0xffff
    dsll32	$a0,$a3,0x10
    # Line 1628
    lw	$v0,0($v1)
    # Line 1634
    la	$at,comm_endbuffer
    # Line 1626
    dsra32	$a0,$a0,0x10
    # Line 1633
    sh	$a0,10($v0)
    # Line 1630
    sh	$t9,4($v0)
    # Line 1629
    sw	$a4,0($v0)
    # Line 1626
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 1632
    sh	$a1,8($v0)
    # Line 1631
    sh	$a4,6($v0)
    # Line 1634
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a6d94
    sw	$v0,0($v1)
.L0f0a6d88:
    ld	$gp,0($sp)
    # Line 1636
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a6d94:
    # Line 1635
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a6d88
    ld	$ra,8($sp)
.end gl_d_mapcolor

# Function: gl_d_mapw
# Declared: Line 1638 (Source lines: 1653-1674)
# Address: 0x0f0a6dac - 0x0f0a6e90 (Size: 228 bytes, Frame: 128)
.globl gl_d_mapw
.ent gl_d_mapw
gl_d_mapw:
    # Line 1653
    addiu	$sp,$sp,-128
    sd	$a7,24($sp)
    sd	$a5,40($sp)
    sd	$ra,0($sp)
    dsll32	$v1,$a2,0x10
    dsll32	$a1,$a1,0x10
    sd	$s8,8($sp)
    move	$s8,$a3
    # Line 1656
    li	$a3,85
    sd	$gp,16($sp)
    sd	$a6,32($sp)
    # Line 1653
    lui	$a6,0xfff9
    addiu	$a6,$a6,-15204
    addu	$gp,$t9,$a6
    la	$v0,comm_curbufpos
    dsra32	$a1,$a1,0x10
    sd	$a4,48($sp)
    # Line 1655
    lw	$a4,0($v0)
    # Line 1653
    dsra32	$v1,$v1,0x10
    # Line 1667
    la	$t9,gl_comm_read_data
    # Line 1657
    sw	$a0,4($a4)
    # Line 1667
    li	$a0,1
    # Line 1659
    sh	$v1,10($a4)
    # Line 1658
    sh	$a1,8($a4)
    # Line 1656
    sw	$a3,0($a4)
    # Line 1666
    addiu	$at,$a4,12
    # Line 1667
    bal gl_comm_read_data
    # Line 1666
    sw	$at,0($v0)
    # Line 1668
    la	$ra,comm_buffer
    lw	$v1,0($ra)
    lwc1	$f0,4($v1)
    swc1	$f0,0($s8)
    # Line 1669
    lw	$v0,0($ra)
    ld	$at,48($sp)
    lwc1	$f4,8($v0)
    swc1	$f4,0($at)
    # Line 1670
    lw	$s8,0($ra)
    ld	$a1,40($sp)
    lwc1	$f3,12($s8)
    swc1	$f3,0($a1)
    # Line 1671
    lw	$a0,0($ra)
    ld	$v1,32($sp)
    lwc1	$f2,16($a0)
    swc1	$f2,0($v1)
    # Line 1672
    lw	$v0,0($ra)
    ld	$at,24($sp)
    lwc1	$f1,20($v0)
    swc1	$f1,0($at)
    # Line 1673
    lw	$ra,0($ra)
    lw	$s8,132($sp)
    lwc1	$f0,24($ra)
    ld	$gp,16($sp)
    # Line 1674
    ld	$ra,0($sp)
    # Line 1673
    swc1	$f0,0($s8)
    # Line 1674
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_d_mapw

# Function: gl_d_mapw2
# Declared: Line 1676 (Source lines: 1687-1700)
# Address: 0x0f0a6e90 - 0x0f0a6f28 (Size: 152 bytes, Frame: 208)
.globl gl_d_mapw2
.ent gl_d_mapw2
gl_d_mapw2:
    # Line 1687
    addiu	$sp,$sp,-80
    sd	$ra,0($sp)
    dsll32	$v1,$a2,0x10
    dsll32	$a1,$a1,0x10
    sd	$s8,8($sp)
    move	$s8,$a3
    # Line 1690
    li	$a3,86
    sd	$gp,16($sp)
    # Line 1687
    lui	$a5,0xfff9
    addiu	$a5,$a5,-15432
    addu	$gp,$t9,$a5
    la	$v0,comm_curbufpos
    dsra32	$a1,$a1,0x10
    sd	$a4,24($sp)
    # Line 1689
    lw	$a4,0($v0)
    # Line 1687
    dsra32	$v1,$v1,0x10
    # Line 1697
    la	$t9,gl_comm_read_data
    # Line 1691
    sw	$a0,4($a4)
    # Line 1697
    li	$a0,1
    # Line 1693
    sh	$v1,10($a4)
    # Line 1692
    sh	$a1,8($a4)
    # Line 1690
    sw	$a3,0($a4)
    # Line 1696
    addiu	$at,$a4,12
    # Line 1697
    bal gl_comm_read_data
    # Line 1696
    sw	$at,0($v0)
    # Line 1698
    la	$ra,comm_buffer
    lw	$at,0($ra)
    lwc1	$f1,4($at)
    swc1	$f1,0($s8)
    # Line 1699
    lw	$ra,0($ra)
    ld	$s8,24($sp)
    lwc1	$f0,8($ra)
    ld	$gp,16($sp)
    # Line 1700
    ld	$ra,0($sp)
    # Line 1699
    swc1	$f0,0($s8)
    # Line 1700
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_mapw2

# Function: gl_d_move
# Declared: Line 1702 (Source lines: 1711-1720)
# Address: 0x0f0a6f28 - 0x0f0a6f94 (Size: 108 bytes, Frame: 48)
.globl gl_d_move
.ent gl_d_move
gl_d_move:
    # Line 1711
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-15584
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1713
    lw	$v0,0($v1)
    # Line 1714
    li	$a0,87
    # Line 1718
    la	$at,comm_endbuffer
    # Line 1717
    swc1	$f14,12($v0)
    # Line 1716
    swc1	$f13,8($v0)
    # Line 1715
    swc1	$f12,4($v0)
    # Line 1714
    sw	$a0,0($v0)
    # Line 1718
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a6f7c
    sw	$v0,0($v1)
.L0f0a6f70:
    ld	$gp,0($sp)
    # Line 1720
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a6f7c:
    # Line 1719
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a6f70
    ld	$ra,8($sp)
.end gl_d_move

# Function: gl_d_move2
# Declared: Line 1722 (Source lines: 1730-1738)
# Address: 0x0f0a6f94 - 0x0f0a6ffc (Size: 104 bytes, Frame: 32)
.globl gl_d_move2
.ent gl_d_move2
gl_d_move2:
    # Line 1730
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-15692
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1732
    lw	$v0,0($v1)
    # Line 1733
    li	$a0,88
    # Line 1736
    la	$at,comm_endbuffer
    # Line 1735
    swc1	$f13,8($v0)
    # Line 1734
    swc1	$f12,4($v0)
    # Line 1733
    sw	$a0,0($v0)
    # Line 1736
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a6fe4
    sw	$v0,0($v1)
.L0f0a6fd8:
    ld	$gp,0($sp)
    # Line 1738
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a6fe4:
    # Line 1737
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a6fd8
    ld	$ra,8($sp)
.end gl_d_move2

# Function: gl_d_move2i
# Declared: Line 1740 (Source lines: 1748-1756)
# Address: 0x0f0a6ffc - 0x0f0a7064 (Size: 104 bytes, Frame: 32)
.globl gl_d_move2i
.ent gl_d_move2i
gl_d_move2i:
    # Line 1748
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-15796 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 1750
    lw	$v0,0($v1)
    # Line 1751
    li	$a2,89
    # Line 1754
    la	$at,comm_endbuffer
    # Line 1753
    sw	$a1,8($v0)
    # Line 1752
    sw	$a0,4($v0)
    # Line 1751
    sw	$a2,0($v0)
    # Line 1754
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a704c
    sw	$v0,0($v1)
.L0f0a7040:
    ld	$gp,0($sp)
    # Line 1756
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a704c:
    # Line 1755
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7040
    ld	$ra,8($sp)
.end gl_d_move2i

# Function: gl_d_movei
# Declared: Line 1758 (Source lines: 1767-1776)
# Address: 0x0f0a7064 - 0x0f0a70d0 (Size: 108 bytes, Frame: 48)
.globl gl_d_movei
.ent gl_d_movei
gl_d_movei:
    # Line 1767
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-15900 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 1769
    lw	$v0,0($v1)
    # Line 1770
    li	$a3,90
    # Line 1774
    la	$at,comm_endbuffer
    # Line 1773
    sw	$a2,12($v0)
    # Line 1772
    sw	$a1,8($v0)
    # Line 1771
    sw	$a0,4($v0)
    # Line 1770
    sw	$a3,0($v0)
    # Line 1774
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a70b8
    sw	$v0,0($v1)
.L0f0a70ac:
    ld	$gp,0($sp)
    # Line 1776
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a70b8:
    # Line 1775
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a70ac
    ld	$ra,8($sp)
.end gl_d_movei

# Function: gl_d_multimap
# Declared: Line 1778 (Source lines: 1784-1790)
# Address: 0x0f0a70d0 - 0x0f0a7130 (Size: 96 bytes, Frame: 16)
.globl gl_d_multimap
.ent gl_d_multimap
gl_d_multimap:
    # Line 1784
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-16008
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1786
    lw	$v0,0($v1)
    # Line 1787
    li	$a0,91
    # Line 1788
    la	$at,comm_endbuffer
    # Line 1787
    sw	$a0,0($v0)
    # Line 1788
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7118
    sw	$v0,0($v1)
.L0f0a710c:
    ld	$gp,0($sp)
    # Line 1790
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a7118:
    # Line 1789
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a710c
    ld	$ra,8($sp)
.end gl_d_multimap

# Function: gl_d_multmatrix
# Declared: Line 1792 (Source lines: 1799-1814)
# Address: 0x0f0a7130 - 0x0f0a7230 (Size: 256 bytes, Frame: 48)
.globl gl_d_multmatrix
.ent gl_d_multmatrix
gl_d_multmatrix:
    # Line 1799
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-16104 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    lw	$a5,0($a1)
    lw	$at,0($a4)
    sd	$s0,0($sp)
    addiu	$v0,$a5,84
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a71f4
    move	$s0,$a0
.L0f0a7168:
    # Line 1803
    move	$v0,$a5
    # Line 1806
    li	$a2,64
    # Line 1804
    li	$a3,92
    sw	$a3,0($a5)
    # Line 1806
    bnez	$s0,.L0f0a71c0
    sw	$a2,4($a5)
    # Line 1808
    addiu	$v0,$v0,72
    ld	$s0,0($sp)
.L0f0a7188:
    # Line 1812
    la	$a2,comm_buffer
    la	$v1,comm_stdsize
    lw	$a2,0($a2)
    lw	$v1,0($v1)
    # Line 1811
    sw	$v0,0($a1)
    # Line 1812
    addu	$v1,$v1,$a2
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0a7218
    sw	$at,0($a4)
.L0f0a71b4:
    ld	$gp,8($sp)
    # Line 1814
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a71c0:
    # Line 1810
    li	$a4,84
    la	$a3,gl_mem_hton_float_array
    li	$a2,64
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    ld	$ra,16($sp)
    b	.L0f0a7188
    ld	$s0,0($sp)
.L0f0a71f4:
    # Line 1803
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    bal gl_comm_flush
    nop
    la	$a4,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0a7168
    lw	$a5,0($a1)
.L0f0a7218:
    # Line 1813
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a71b4
    ld	$ra,16($sp)
.end gl_d_multmatrix

# Function: gl_d_noise
# Declared: Line 1816 (Source lines: 1824-1832)
# Address: 0x0f0a7230 - 0x0f0a72a4 (Size: 116 bytes, Frame: 32)
.globl gl_d_noise
.ent gl_d_noise
gl_d_noise:
    # Line 1824
    andi	$a2,$a0,0xffff
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-16360 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsll32	$a0,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 1826
    lw	$v0,0($v1)
    # Line 1827
    li	$t9,93
    # Line 1830
    la	$at,comm_endbuffer
    # Line 1829
    sh	$a0,6($v0)
    # Line 1828
    sh	$a2,4($v0)
    # Line 1827
    sw	$t9,0($v0)
    # Line 1830
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a728c
    sw	$v0,0($v1)
.L0f0a7280:
    ld	$gp,0($sp)
    # Line 1832
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a728c:
    # Line 1831
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7280
    ld	$ra,8($sp)
.end gl_d_noise

# Function: gl_d_onemap
# Declared: Line 1834 (Source lines: 1840-1846)
# Address: 0x0f0a72a4 - 0x0f0a7304 (Size: 96 bytes, Frame: 16)
.globl gl_d_onemap
.ent gl_d_onemap
gl_d_onemap:
    # Line 1840
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-16476
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1842
    lw	$v0,0($v1)
    # Line 1843
    li	$a0,94
    # Line 1844
    la	$at,comm_endbuffer
    # Line 1843
    sw	$a0,0($v0)
    # Line 1844
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a72ec
    sw	$v0,0($v1)
.L0f0a72e0:
    ld	$gp,0($sp)
    # Line 1846
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a72ec:
    # Line 1845
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a72e0
    ld	$ra,8($sp)
.end gl_d_onemap

# Function: gl_d_ortho
# Declared: Line 1848 (Source lines: 1860-1873)
# Address: 0x0f0a7304 - 0x0f0a73f4 (Size: 240 bytes, Frame: 240)
.globl gl_d_ortho
.ent gl_d_ortho
gl_d_ortho:
    # Line 1860
    mov.s	$f8,$f17
    mov.s	$f7,$f16
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    addiu	$sp,$sp,-112
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-16572 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a2,comm_endbuffer
    mov.s	$f4,$f13
    # Line 1862
    lw	$a3,0($a1)
    lw	$at,0($a2)
    sdc1	$f30,0($sp)
    addiu	$v0,$a3,28
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7394
    # Line 1860
    mov.s	$f30,$f12
.L0f0a7350:
    # Line 1870
    swc1	$f8,24($a3)
    # Line 1869
    swc1	$f7,20($a3)
    # Line 1868
    swc1	$f6,16($a3)
    # Line 1867
    swc1	$f5,12($a3)
    # Line 1866
    swc1	$f4,8($a3)
    # Line 1865
    swc1	$f30,4($a3)
    # Line 1864
    li	$at,95
    sw	$at,0($a3)
    # Line 1871
    lw	$a0,0($a2)
    ldc1	$f30,0($sp)
    addiu	$at,$a3,28
    sltu	$a0,$a0,$at
    bnez	$a0,.L0f0a73dc
    sw	$at,0($a1)
.L0f0a7388:
    ld	$gp,8($sp)
    # Line 1873
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a7394:
    sdc1	$f4,48($sp)
    sdc1	$f5,40($sp)
    sdc1	$f6,32($sp)
    # Line 1863
    la	$t9,gl_comm_flush
    sdc1	$f7,24($sp)
    sd	$ra,56($sp)
    bal gl_comm_flush
    sdc1	$f8,16($sp)
    la	$a2,comm_endbuffer
    ldc1	$f8,16($sp)
    ldc1	$f7,24($sp)
    ldc1	$f6,32($sp)
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    la	$a1,comm_curbufpos
    ld	$ra,56($sp)
    b	.L0f0a7350
    lw	$a3,0($a1)
.L0f0a73dc:
    # Line 1872
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    bal gl_comm_flush
    ldc1	$f30,0($sp)
    b	.L0f0a7388
    ld	$ra,56($sp)
.end gl_d_ortho

# Function: gl_d_ortho2
# Declared: Line 1875 (Source lines: 1885-1895)
# Address: 0x0f0a73f4 - 0x0f0a7464 (Size: 112 bytes, Frame: 48)
.globl gl_d_ortho2
.ent gl_d_ortho2
gl_d_ortho2:
    # Line 1885
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-16812
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1887
    lw	$v0,0($v1)
    # Line 1888
    li	$a0,96
    # Line 1893
    la	$at,comm_endbuffer
    # Line 1892
    swc1	$f15,16($v0)
    # Line 1891
    swc1	$f14,12($v0)
    # Line 1890
    swc1	$f13,8($v0)
    # Line 1889
    swc1	$f12,4($v0)
    # Line 1888
    sw	$a0,0($v0)
    # Line 1893
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a744c
    sw	$v0,0($v1)
.L0f0a7440:
    ld	$gp,0($sp)
    # Line 1895
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a744c:
    # Line 1894
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7440
    ld	$ra,8($sp)
.end gl_d_ortho2

# Function: gl_d_perspective
# Declared: Line 1897 (Source lines: 1907-1917)
# Address: 0x0f0a7464 - 0x0f0a74dc (Size: 120 bytes, Frame: 48)
.globl gl_d_perspective
.ent gl_d_perspective
gl_d_perspective:
    # Line 1907
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-16924 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 1910
    li	$a1,97
    # Line 1907
    dsll32	$a0,$a0,0x10
    # Line 1909
    lw	$v0,0($v1)
    # Line 1907
    dsra32	$a0,$a0,0x10
    # Line 1915
    la	$at,comm_endbuffer
    # Line 1914
    swc1	$f15,16($v0)
    # Line 1913
    swc1	$f14,12($v0)
    # Line 1912
    swc1	$f13,8($v0)
    # Line 1911
    sh	$a0,4($v0)
    # Line 1910
    sw	$a1,0($v0)
    # Line 1915
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a74c4
    sw	$v0,0($v1)
.L0f0a74b8:
    ld	$gp,0($sp)
    # Line 1917
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a74c4:
    # Line 1916
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a74b8
    ld	$ra,8($sp)
.end gl_d_perspective

# Function: gl_d_pick
# Declared: Line 1919 (Source lines: 1927-1939)
# Address: 0x0f0a74dc - 0x0f0a75ac (Size: 208 bytes, Frame: 48)
.globl gl_d_pick
.ent gl_d_pick
gl_d_pick:
    # Line 1927
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-17044 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a2,comm_curbufpos
    la	$a3,comm_endbuffer
    # Line 1930
    lw	$a4,0($a2)
    lw	$at,0($a3)
    sd	$s3,0($sp)
    addiu	$v0,$a4,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7570
    # Line 1927
    move	$s3,$a1
.L0f0a7514:
    # Line 1935
    sw	$s3,12($a4)
    # Line 1937
    la	$at,comm_buffer
    la	$a0,comm_stdsize
    # Line 1933
    lui	$v1,0x8000
    sw	$v1,4($a4)
    # Line 1932
    li	$v0,98
    sw	$v0,0($a4)
    # Line 1934
    addu	$v0,$s3,$s3
    sw	$v0,8($a4)
    # Line 1937
    lw	$a0,0($a0)
    lw	$s3,0($at)
    # Line 1936
    addiu	$at,$a4,16
    sw	$at,0($a2)
    # Line 1937
    addu	$a0,$a0,$s3
    addiu	$s3,$a0,-24
    sw	$s3,0($a3)
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$at
    bnez	$a0,.L0f0a7594
    ld	$s3,0($sp)
.L0f0a7564:
    ld	$gp,8($sp)
    # Line 1939
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a7570:
    # Line 1931
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    bal gl_comm_flush
    nop
    la	$a3,comm_endbuffer
    la	$a2,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0a7514
    lw	$a4,0($a2)
.L0f0a7594:
    # Line 1938
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    bal gl_comm_flush
    ld	$s3,0($sp)
    b	.L0f0a7564
    ld	$ra,16($sp)
.end gl_d_pick

# Function: gl_d_picksize
# Declared: Line 1941 (Source lines: 1949-1957)
# Address: 0x0f0a75ac - 0x0f0a7624 (Size: 120 bytes, Frame: 32)
.globl gl_d_picksize
.ent gl_d_picksize
gl_d_picksize:
    # Line 1949
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-17252 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 1951
    lw	$v0,0($v1)
    # Line 1952
    li	$t9,99
    # Line 1955
    la	$at,comm_endbuffer
    # Line 1954
    sh	$a0,6($v0)
    # Line 1953
    sh	$a2,4($v0)
    # Line 1952
    sw	$t9,0($v0)
    # Line 1955
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a760c
    sw	$v0,0($v1)
.L0f0a7600:
    ld	$gp,0($sp)
    # Line 1957
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a760c:
    # Line 1956
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7600
    ld	$ra,8($sp)
.end gl_d_picksize

# Function: gl_d_pnt
# Declared: Line 1959 (Source lines: 1968-1977)
# Address: 0x0f0a7624 - 0x0f0a7690 (Size: 108 bytes, Frame: 48)
.globl gl_d_pnt
.ent gl_d_pnt
gl_d_pnt:
    # Line 1968
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-17372
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1970
    lw	$v0,0($v1)
    # Line 1971
    li	$a0,100
    # Line 1975
    la	$at,comm_endbuffer
    # Line 1974
    swc1	$f14,12($v0)
    # Line 1973
    swc1	$f13,8($v0)
    # Line 1972
    swc1	$f12,4($v0)
    # Line 1971
    sw	$a0,0($v0)
    # Line 1975
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7678
    sw	$v0,0($v1)
.L0f0a766c:
    ld	$gp,0($sp)
    # Line 1977
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a7678:
    # Line 1976
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a766c
    ld	$ra,8($sp)
.end gl_d_pnt

# Function: gl_d_pnt2
# Declared: Line 1979 (Source lines: 1987-1995)
# Address: 0x0f0a7690 - 0x0f0a76f8 (Size: 104 bytes, Frame: 32)
.globl gl_d_pnt2
.ent gl_d_pnt2
gl_d_pnt2:
    # Line 1987
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-17480
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 1989
    lw	$v0,0($v1)
    # Line 1990
    li	$a0,101
    # Line 1993
    la	$at,comm_endbuffer
    # Line 1992
    swc1	$f13,8($v0)
    # Line 1991
    swc1	$f12,4($v0)
    # Line 1990
    sw	$a0,0($v0)
    # Line 1993
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a76e0
    sw	$v0,0($v1)
.L0f0a76d4:
    ld	$gp,0($sp)
    # Line 1995
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a76e0:
    # Line 1994
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a76d4
    ld	$ra,8($sp)
.end gl_d_pnt2

# Function: gl_d_pnt2i
# Declared: Line 1997 (Source lines: 2005-2013)
# Address: 0x0f0a76f8 - 0x0f0a7760 (Size: 104 bytes, Frame: 32)
.globl gl_d_pnt2i
.ent gl_d_pnt2i
gl_d_pnt2i:
    # Line 2005
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-17584 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 2007
    lw	$v0,0($v1)
    # Line 2008
    li	$a2,102
    # Line 2011
    la	$at,comm_endbuffer
    # Line 2010
    sw	$a1,8($v0)
    # Line 2009
    sw	$a0,4($v0)
    # Line 2008
    sw	$a2,0($v0)
    # Line 2011
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7748
    sw	$v0,0($v1)
.L0f0a773c:
    ld	$gp,0($sp)
    # Line 2013
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a7748:
    # Line 2012
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a773c
    ld	$ra,8($sp)
.end gl_d_pnt2i

# Function: gl_d_pnti
# Declared: Line 2015 (Source lines: 2024-2033)
# Address: 0x0f0a7760 - 0x0f0a77cc (Size: 108 bytes, Frame: 48)
.globl gl_d_pnti
.ent gl_d_pnti
gl_d_pnti:
    # Line 2024
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-17688 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 2026
    lw	$v0,0($v1)
    # Line 2027
    li	$a3,103
    # Line 2031
    la	$at,comm_endbuffer
    # Line 2030
    sw	$a2,12($v0)
    # Line 2029
    sw	$a1,8($v0)
    # Line 2028
    sw	$a0,4($v0)
    # Line 2027
    sw	$a3,0($v0)
    # Line 2031
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a77b4
    sw	$v0,0($v1)
.L0f0a77a8:
    ld	$gp,0($sp)
    # Line 2033
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a77b4:
    # Line 2032
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a77a8
    ld	$ra,8($sp)
.end gl_d_pnti

# Function: gl_d_polarview
# Declared: Line 2035 (Source lines: 2045-2055)
# Address: 0x0f0a77cc - 0x0f0a7854 (Size: 136 bytes, Frame: 48)
.globl gl_d_polarview
.ent gl_d_polarview
gl_d_polarview:
    # Line 2048
    li	$a0,104
    # Line 2045
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-17796 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    dsll32	$t9,$a1,0x10
    la	$v1,comm_curbufpos
    dsll32	$a1,$a2,0x10
    # Line 2053
    la	$at,comm_endbuffer
    # Line 2047
    lw	$v0,0($v1)
    # Line 2045
    dsra32	$t9,$t9,0x10
    dsra32	$a1,$a1,0x10
    # Line 2051
    sh	$a1,10($v0)
    # Line 2050
    sh	$t9,8($v0)
    # Line 2049
    swc1	$f12,4($v0)
    # Line 2048
    sw	$a0,0($v0)
    # Line 2045
    dsll32	$a0,$a3,0x10
    dsra32	$a0,$a0,0x10
    # Line 2052
    sh	$a0,12($v0)
    # Line 2053
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a783c
    sw	$v0,0($v1)
.L0f0a7830:
    ld	$gp,0($sp)
    # Line 2055
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a783c:
    # Line 2054
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7830
    ld	$ra,8($sp)
.end gl_d_polarview

# Function: gl_d_polf
# Declared: Line 2057 (Source lines: 2065-2081)
# Address: 0x0f0a7854 - 0x0f0a797c (Size: 296 bytes, Frame: 48)
.globl gl_d_polf
.ent gl_d_polf
gl_d_polf:
    # Line 2065
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-17932 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7940
    move	$s2,$a0
.L0f0a7894:
    # Line 2069
    move	$v0,$a7
    # Line 2071
    sw	$s2,4($a7)
    # Line 2070
    li	$a3,105
    sw	$a3,0($a7)
    # Line 2073
    li	$a3,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0a790c
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 2075
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0a78d4:
    # Line 2079
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 2078
    sw	$v0,0($a5)
    # Line 2079
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0a7964
    sw	$v1,0($a6)
.L0f0a7900:
    ld	$gp,16($sp)
    # Line 2081
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a790c:
    # Line 2077
    li	$a4,88
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a78d4
    ld	$s0,0($sp)
.L0f0a7940:
    # Line 2069
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a7894
    lw	$a7,0($a5)
.L0f0a7964:
    # Line 2080
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7900
    ld	$ra,24($sp)
.end gl_d_polf

# Function: gl_d_polf2
# Declared: Line 2083 (Source lines: 2091-2107)
# Address: 0x0f0a797c - 0x0f0a7a9c (Size: 288 bytes, Frame: 48)
.globl gl_d_polf2
.ent gl_d_polf2
gl_d_polf2:
    # Line 2091
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-18228 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7a60
    move	$s2,$a0
.L0f0a79bc:
    # Line 2095
    move	$v0,$a7
    # Line 2097
    sw	$s2,4($a7)
    # Line 2099
    sll	$a2,$s2,0x3
    # Line 2096
    li	$a3,106
    sw	$a3,0($a7)
    # Line 2099
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0a7a2c
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 2101
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0a79f4:
    # Line 2105
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 2104
    sw	$v0,0($a5)
    # Line 2105
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0a7a84
    sw	$v1,0($a6)
.L0f0a7a20:
    ld	$gp,16($sp)
    # Line 2107
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a7a2c:
    # Line 2103
    li	$a4,88
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a79f4
    ld	$s0,0($sp)
.L0f0a7a60:
    # Line 2095
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a79bc
    lw	$a7,0($a5)
.L0f0a7a84:
    # Line 2106
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7a20
    ld	$ra,24($sp)
.end gl_d_polf2

# Function: gl_d_polf2i
# Declared: Line 2109 (Source lines: 2117-2133)
# Address: 0x0f0a7a9c - 0x0f0a7bbc (Size: 288 bytes, Frame: 48)
.globl gl_d_polf2i
.ent gl_d_polf2i
gl_d_polf2i:
    # Line 2117
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-18516 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7b80
    move	$s2,$a0
.L0f0a7adc:
    # Line 2121
    move	$v0,$a7
    # Line 2123
    sw	$s2,4($a7)
    # Line 2125
    sll	$a2,$s2,0x3
    # Line 2122
    li	$a3,107
    sw	$a3,0($a7)
    # Line 2125
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0a7b4c
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 2127
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0a7b14:
    # Line 2131
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 2130
    sw	$v0,0($a5)
    # Line 2131
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0a7ba4
    sw	$v1,0($a6)
.L0f0a7b40:
    ld	$gp,16($sp)
    # Line 2133
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a7b4c:
    # Line 2129
    li	$a4,88
    la	$a3,gl_mem_hton_long_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a7b14
    ld	$s0,0($sp)
.L0f0a7b80:
    # Line 2121
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a7adc
    lw	$a7,0($a5)
.L0f0a7ba4:
    # Line 2132
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7b40
    ld	$ra,24($sp)
.end gl_d_polf2i

# Function: gl_d_polfi
# Declared: Line 2135 (Source lines: 2143-2159)
# Address: 0x0f0a7bbc - 0x0f0a7ce4 (Size: 296 bytes, Frame: 48)
.globl gl_d_polfi
.ent gl_d_polfi
gl_d_polfi:
    # Line 2143
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-18804 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7ca8
    move	$s2,$a0
.L0f0a7bfc:
    # Line 2147
    move	$v0,$a7
    # Line 2149
    sw	$s2,4($a7)
    # Line 2148
    li	$a3,108
    sw	$a3,0($a7)
    # Line 2151
    li	$a3,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0a7c74
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 2153
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0a7c3c:
    # Line 2157
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 2156
    sw	$v0,0($a5)
    # Line 2157
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0a7ccc
    sw	$v1,0($a6)
.L0f0a7c68:
    ld	$gp,16($sp)
    # Line 2159
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a7c74:
    # Line 2155
    li	$a4,88
    la	$a3,gl_mem_hton_long_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a7c3c
    ld	$s0,0($sp)
.L0f0a7ca8:
    # Line 2147
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a7bfc
    lw	$a7,0($a5)
.L0f0a7ccc:
    # Line 2158
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7c68
    ld	$ra,24($sp)
.end gl_d_polfi

# Function: gl_d_poly
# Declared: Line 2161 (Source lines: 2169-2185)
# Address: 0x0f0a7ce4 - 0x0f0a7e0c (Size: 296 bytes, Frame: 48)
.globl gl_d_poly
.ent gl_d_poly
gl_d_poly:
    # Line 2169
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-19100 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7dd0
    move	$s2,$a0
.L0f0a7d24:
    # Line 2173
    move	$v0,$a7
    # Line 2175
    sw	$s2,4($a7)
    # Line 2174
    li	$a3,109
    sw	$a3,0($a7)
    # Line 2177
    li	$a3,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0a7d9c
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 2179
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0a7d64:
    # Line 2183
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 2182
    sw	$v0,0($a5)
    # Line 2183
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0a7df4
    sw	$v1,0($a6)
.L0f0a7d90:
    ld	$gp,16($sp)
    # Line 2185
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a7d9c:
    # Line 2181
    li	$a4,88
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a7d64
    ld	$s0,0($sp)
.L0f0a7dd0:
    # Line 2173
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a7d24
    lw	$a7,0($a5)
.L0f0a7df4:
    # Line 2184
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7d90
    ld	$ra,24($sp)
.end gl_d_poly

# Function: gl_d_poly2
# Declared: Line 2187 (Source lines: 2195-2211)
# Address: 0x0f0a7e0c - 0x0f0a7f2c (Size: 288 bytes, Frame: 48)
.globl gl_d_poly2
.ent gl_d_poly2
gl_d_poly2:
    # Line 2195
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-19396 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a7ef0
    move	$s2,$a0
.L0f0a7e4c:
    # Line 2199
    move	$v0,$a7
    # Line 2201
    sw	$s2,4($a7)
    # Line 2203
    sll	$a2,$s2,0x3
    # Line 2200
    li	$a3,110
    sw	$a3,0($a7)
    # Line 2203
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0a7ebc
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 2205
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0a7e84:
    # Line 2209
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 2208
    sw	$v0,0($a5)
    # Line 2209
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0a7f14
    sw	$v1,0($a6)
.L0f0a7eb0:
    ld	$gp,16($sp)
    # Line 2211
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a7ebc:
    # Line 2207
    li	$a4,88
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a7e84
    ld	$s0,0($sp)
.L0f0a7ef0:
    # Line 2199
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a7e4c
    lw	$a7,0($a5)
.L0f0a7f14:
    # Line 2210
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7eb0
    ld	$ra,24($sp)
.end gl_d_poly2

# Function: gl_d_poly2i
# Declared: Line 2213 (Source lines: 2221-2237)
# Address: 0x0f0a7f2c - 0x0f0a804c (Size: 288 bytes, Frame: 48)
.globl gl_d_poly2i
.ent gl_d_poly2i
gl_d_poly2i:
    # Line 2221
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-19684 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8010
    move	$s2,$a0
.L0f0a7f6c:
    # Line 2225
    move	$v0,$a7
    # Line 2227
    sw	$s2,4($a7)
    # Line 2229
    sll	$a2,$s2,0x3
    # Line 2226
    li	$a3,111
    sw	$a3,0($a7)
    # Line 2229
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0a7fdc
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 2231
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0a7fa4:
    # Line 2235
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 2234
    sw	$v0,0($a5)
    # Line 2235
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0a8034
    sw	$v1,0($a6)
.L0f0a7fd0:
    ld	$gp,16($sp)
    # Line 2237
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a7fdc:
    # Line 2233
    li	$a4,88
    la	$a3,gl_mem_hton_long_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a7fa4
    ld	$s0,0($sp)
.L0f0a8010:
    # Line 2225
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a7f6c
    lw	$a7,0($a5)
.L0f0a8034:
    # Line 2236
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a7fd0
    ld	$ra,24($sp)
.end gl_d_poly2i

# Function: gl_d_polyi
# Declared: Line 2239 (Source lines: 2247-2263)
# Address: 0x0f0a804c - 0x0f0a8174 (Size: 296 bytes, Frame: 48)
.globl gl_d_polyi
.ent gl_d_polyi
gl_d_polyi:
    # Line 2247
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-19972 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8138
    move	$s2,$a0
.L0f0a808c:
    # Line 2251
    move	$v0,$a7
    # Line 2253
    sw	$s2,4($a7)
    # Line 2252
    li	$a3,112
    sw	$a3,0($a7)
    # Line 2255
    li	$a3,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0a8104
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 2257
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0a80cc:
    # Line 2261
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 2260
    sw	$v0,0($a5)
    # Line 2261
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0a815c
    sw	$v1,0($a6)
.L0f0a80f8:
    ld	$gp,16($sp)
    # Line 2263
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8104:
    # Line 2259
    li	$a4,88
    la	$a3,gl_mem_hton_long_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a80cc
    ld	$s0,0($sp)
.L0f0a8138:
    # Line 2251
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a808c
    lw	$a7,0($a5)
.L0f0a815c:
    # Line 2262
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    b	.L0f0a80f8
    ld	$ra,24($sp)
.end gl_d_polyi

# Function: gl_d_popattributes
# Declared: Line 2265 (Source lines: 2271-2277)
# Address: 0x0f0a8174 - 0x0f0a81d4 (Size: 96 bytes, Frame: 16)
.globl gl_d_popattributes
.ent gl_d_popattributes
gl_d_popattributes:
    # Line 2271
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-20268
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2273
    lw	$v0,0($v1)
    # Line 2274
    li	$a0,113
    # Line 2275
    la	$at,comm_endbuffer
    # Line 2274
    sw	$a0,0($v0)
    # Line 2275
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a81bc
    sw	$v0,0($v1)
.L0f0a81b0:
    ld	$gp,0($sp)
    # Line 2277
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a81bc:
    # Line 2276
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a81b0
    ld	$ra,8($sp)
.end gl_d_popattributes

# Function: gl_d_popmatrix
# Declared: Line 2279 (Source lines: 2285-2291)
# Address: 0x0f0a81d4 - 0x0f0a8234 (Size: 96 bytes, Frame: 16)
.globl gl_d_popmatrix
.ent gl_d_popmatrix
gl_d_popmatrix:
    # Line 2285
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-20364
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2287
    lw	$v0,0($v1)
    # Line 2288
    li	$a0,114
    # Line 2289
    la	$at,comm_endbuffer
    # Line 2288
    sw	$a0,0($v0)
    # Line 2289
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a821c
    sw	$v0,0($v1)
.L0f0a8210:
    ld	$gp,0($sp)
    # Line 2291
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a821c:
    # Line 2290
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8210
    ld	$ra,8($sp)
.end gl_d_popmatrix

# Function: gl_d_popviewport
# Declared: Line 2293 (Source lines: 2299-2305)
# Address: 0x0f0a8234 - 0x0f0a8294 (Size: 96 bytes, Frame: 16)
.globl gl_d_popviewport
.ent gl_d_popviewport
gl_d_popviewport:
    # Line 2299
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-20460
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2301
    lw	$v0,0($v1)
    # Line 2302
    li	$a0,115
    # Line 2303
    la	$at,comm_endbuffer
    # Line 2302
    sw	$a0,0($v0)
    # Line 2303
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a827c
    sw	$v0,0($v1)
.L0f0a8270:
    ld	$gp,0($sp)
    # Line 2305
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a827c:
    # Line 2304
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8270
    ld	$ra,8($sp)
.end gl_d_popviewport

# Function: gl_d_pushattributes
# Declared: Line 2307 (Source lines: 2313-2319)
# Address: 0x0f0a8294 - 0x0f0a82f4 (Size: 96 bytes, Frame: 16)
.globl gl_d_pushattributes
.ent gl_d_pushattributes
gl_d_pushattributes:
    # Line 2313
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-20556
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2315
    lw	$v0,0($v1)
    # Line 2316
    li	$a0,116
    # Line 2317
    la	$at,comm_endbuffer
    # Line 2316
    sw	$a0,0($v0)
    # Line 2317
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a82dc
    sw	$v0,0($v1)
.L0f0a82d0:
    ld	$gp,0($sp)
    # Line 2319
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a82dc:
    # Line 2318
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a82d0
    ld	$ra,8($sp)
.end gl_d_pushattributes

# Function: gl_d_pushmatrix
# Declared: Line 2321 (Source lines: 2327-2333)
# Address: 0x0f0a82f4 - 0x0f0a8354 (Size: 96 bytes, Frame: 16)
.globl gl_d_pushmatrix
.ent gl_d_pushmatrix
gl_d_pushmatrix:
    # Line 2327
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-20652
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2329
    lw	$v0,0($v1)
    # Line 2330
    li	$a0,117
    # Line 2331
    la	$at,comm_endbuffer
    # Line 2330
    sw	$a0,0($v0)
    # Line 2331
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a833c
    sw	$v0,0($v1)
.L0f0a8330:
    ld	$gp,0($sp)
    # Line 2333
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a833c:
    # Line 2332
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8330
    ld	$ra,8($sp)
.end gl_d_pushmatrix

# Function: gl_d_pushviewport
# Declared: Line 2335 (Source lines: 2341-2347)
# Address: 0x0f0a8354 - 0x0f0a83b4 (Size: 96 bytes, Frame: 16)
.globl gl_d_pushviewport
.ent gl_d_pushviewport
gl_d_pushviewport:
    # Line 2341
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-20748
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2343
    lw	$v0,0($v1)
    # Line 2344
    li	$a0,118
    # Line 2345
    la	$at,comm_endbuffer
    # Line 2344
    sw	$a0,0($v0)
    # Line 2345
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a839c
    sw	$v0,0($v1)
.L0f0a8390:
    ld	$gp,0($sp)
    # Line 2347
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a839c:
    # Line 2346
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8390
    ld	$ra,8($sp)
.end gl_d_pushviewport

# Function: gl_d_qenter
# Declared: Line 2349 (Source lines: 2357-2365)
# Address: 0x0f0a83b4 - 0x0f0a8428 (Size: 116 bytes, Frame: 32)
.globl gl_d_qenter
.ent gl_d_qenter
gl_d_qenter:
    # Line 2357
    andi	$a2,$a0,0xffff
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-20844 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsll32	$a0,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 2359
    lw	$v0,0($v1)
    # Line 2360
    li	$t9,119
    # Line 2363
    la	$at,comm_endbuffer
    # Line 2362
    sh	$a0,6($v0)
    # Line 2361
    sh	$a2,4($v0)
    # Line 2360
    sw	$t9,0($v0)
    # Line 2363
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8410
    sw	$v0,0($v1)
.L0f0a8404:
    ld	$gp,0($sp)
    # Line 2365
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a8410:
    # Line 2364
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8404
    ld	$ra,8($sp)
.end gl_d_qenter

# Function: gl_dgl_qread
# Declared: Line 2367 (Source lines: 2374-2383)
# Address: 0x0f0a8428 - 0x0f0a8498 (Size: 112 bytes, Frame: 48)
.globl gl_dgl_qread
.ent gl_dgl_qread
gl_dgl_qread:
    # Line 2374
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-20960
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 2380
    li	$a0,1
    sd	$ra,0($sp)
    # Line 2376
    lw	$a1,0($v0)
    # Line 2377
    li	$v1,120
    # Line 2380
    la	$t9,gl_comm_read_data
    # Line 2377
    sw	$v1,0($a1)
    # Line 2379
    addiu	$at,$a1,4
    # Line 2380
    bal gl_comm_read_data
    # Line 2379
    sw	$at,0($v0)
    # Line 2381
    la	$v0,comm_buffer
    lw	$v1,0($v0)
    lh	$v1,8($v1)
    sh	$v1,0($s8)
    ld	$gp,16($sp)
    # Line 2383
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_dgl_qread

# Function: gl_d_qreset
# Declared: Line 2386 (Source lines: 2392-2398)
# Address: 0x0f0a8498 - 0x0f0a84f8 (Size: 96 bytes, Frame: 16)
.globl gl_d_qreset
.ent gl_d_qreset
gl_d_qreset:
    # Line 2392
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-21072
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2394
    lw	$v0,0($v1)
    # Line 2395
    li	$a0,121
    # Line 2396
    la	$at,comm_endbuffer
    # Line 2395
    sw	$a0,0($v0)
    # Line 2396
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a84e0
    sw	$v0,0($v1)
.L0f0a84d4:
    ld	$gp,0($sp)
    # Line 2398
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a84e0:
    # Line 2397
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a84d4
    ld	$ra,8($sp)
.end gl_d_qreset

# Function: gl_dgl_qtest
# Declared: Line 2400 (Source lines: 2406-2413)
# Address: 0x0f0a84f8 - 0x0f0a8550 (Size: 88 bytes, Frame: 16)
.globl gl_dgl_qtest
.ent gl_dgl_qtest
gl_dgl_qtest:
    # Line 2406
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-21168
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 2411
    li	$a0,1
    sd	$ra,0($sp)
    # Line 2408
    lw	$a1,0($v0)
    # Line 2409
    li	$v1,122
    # Line 2411
    la	$t9,gl_comm_read_data
    # Line 2409
    sw	$v1,0($a1)
    # Line 2410
    addiu	$at,$a1,4
    # Line 2411
    bal gl_comm_read_data
    # Line 2410
    sw	$at,0($v0)
    # Line 2412
    la	$v0,comm_buffer
    # Line 2413
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_dgl_qtest

# Function: gl_d_readpixels
# Declared: Line 2416 (Source lines: 2424-2436)
# Address: 0x0f0a8550 - 0x0f0a85ec (Size: 156 bytes, Frame: 48)
.globl gl_d_readpixels
.ent gl_d_readpixels
gl_d_readpixels:
    # Line 2424
    dsll32	$v1,$a0,0x10
    # Line 2432
    li	$a0,1
    # Line 2424
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    dsra32	$v1,$v1,0x10
    sd	$gp,16($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-21256
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$s3,8($sp)
    move	$s3,$a1
    # Line 2426
    lw	$a2,0($v0)
    # Line 2427
    li	$a1,123
    # Line 2432
    la	$t9,gl_comm_read_data
    # Line 2431
    addiu	$at,$a2,16
    # Line 2427
    sw	$a1,0($a2)
    # Line 2429
    li	$a1,-2
    # Line 2428
    sh	$v1,4($a2)
    # Line 2430
    addu	$v1,$v1,$v1
    sw	$v1,12($a2)
    # Line 2429
    sw	$a1,8($a2)
    # Line 2432
    bal gl_comm_read_data
    # Line 2431
    sw	$at,0($v0)
    # Line 2434
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_short_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 2436
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_readpixels

# Function: gl_d_readRGB
# Declared: Line 2439 (Source lines: 2449-2468)
# Address: 0x0f0a85ec - 0x0f0a86f0 (Size: 260 bytes, Frame: 208)
.globl gl_d_readRGB
.ent gl_d_readRGB
gl_d_readRGB:
    # Line 2449
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a3,16($sp)
    sd	$a2,8($sp)
    sd	$a1,24($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-21412 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$a5,comm_curbufpos
    # Line 2451
    la	$at,comm_endbuffer
    sd	$s2,0($sp)
    lw	$a6,0($a5)
    lw	$at,0($at)
    # Line 2449
    dsll32	$s2,$a0,0x10
    # Line 2451
    addiu	$v0,$a6,32
    sltu	$at,$at,$v0
    beqz	$at,.L0f0a864c
    # Line 2449
    dsra32	$s2,$s2,0x10
    # Line 2452
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$a5,comm_curbufpos
    lw	$a6,0($a5)
.L0f0a864c:
    # Line 2462
    li	$a0,1
    # Line 2460
    sw	$s2,28($a6)
    # Line 2458
    sw	$s2,20($a6)
    # Line 2456
    sw	$s2,12($a6)
    # Line 2454
    sh	$s2,4($a6)
    # Line 2461
    addiu	$v1,$a6,32
    # Line 2453
    li	$a2,124
    # Line 2455
    li	$a1,-1
    # Line 2459
    sw	$a1,24($a6)
    # Line 2457
    sw	$a1,16($a6)
    # Line 2462
    la	$t9,gl_comm_read_data
    # Line 2455
    sw	$a1,8($a6)
    # Line 2453
    sw	$a2,0($a6)
    # Line 2462
    jalr	$t9
    # Line 2461
    sw	$v1,0($a5)
    ld	$a0,24($sp)
    # Line 2464
    la	$a1,comm_buffer
    la	$a2,gl_mem_copy_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    ld	$s2,8($sp)
    jalr	$t9
    addiu	$a1,$a1,8
    # Line 2465
    la	$t9,gl_mem_unpack_array
    la	$a2,gl_mem_copy_array
    # Line 2464
    move	$a1,$v0
    # Line 2465
    jalr	$t9
    move	$a0,$s2
    la	$a2,gl_mem_copy_array
    # Line 2466
    la	$t9,gl_mem_unpack_array
    # Line 2465
    move	$a1,$v0
    # Line 2466
    ld	$a0,16($sp)
    jalr	$t9
    ld	$s2,0($sp)
    la	$v0,comm_buffer
    # Line 2468
    lw	$v0,0($v0)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_readRGB

# Function: gl_d_rect
# Declared: Line 2471 (Source lines: 2481-2491)
# Address: 0x0f0a86f0 - 0x0f0a8760 (Size: 112 bytes, Frame: 48)
.globl gl_d_rect
.ent gl_d_rect
gl_d_rect:
    # Line 2481
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-21672
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2483
    lw	$v0,0($v1)
    # Line 2484
    li	$a0,125
    # Line 2489
    la	$at,comm_endbuffer
    # Line 2488
    swc1	$f15,16($v0)
    # Line 2487
    swc1	$f14,12($v0)
    # Line 2486
    swc1	$f13,8($v0)
    # Line 2485
    swc1	$f12,4($v0)
    # Line 2484
    sw	$a0,0($v0)
    # Line 2489
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8748
    sw	$v0,0($v1)
.L0f0a873c:
    ld	$gp,0($sp)
    # Line 2491
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8748:
    # Line 2490
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a873c
    ld	$ra,8($sp)
.end gl_d_rect

# Function: gl_d_rectf
# Declared: Line 2493 (Source lines: 2503-2513)
# Address: 0x0f0a8760 - 0x0f0a87d0 (Size: 112 bytes, Frame: 48)
.globl gl_d_rectf
.ent gl_d_rectf
gl_d_rectf:
    # Line 2503
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-21784
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2505
    lw	$v0,0($v1)
    # Line 2506
    li	$a0,126
    # Line 2511
    la	$at,comm_endbuffer
    # Line 2510
    swc1	$f15,16($v0)
    # Line 2509
    swc1	$f14,12($v0)
    # Line 2508
    swc1	$f13,8($v0)
    # Line 2507
    swc1	$f12,4($v0)
    # Line 2506
    sw	$a0,0($v0)
    # Line 2511
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a87b8
    sw	$v0,0($v1)
.L0f0a87ac:
    ld	$gp,0($sp)
    # Line 2513
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a87b8:
    # Line 2512
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a87ac
    ld	$ra,8($sp)
.end gl_d_rectf

# Function: gl_d_rectfi
# Declared: Line 2515 (Source lines: 2525-2535)
# Address: 0x0f0a87d0 - 0x0f0a8840 (Size: 112 bytes, Frame: 48)
.globl gl_d_rectfi
.ent gl_d_rectfi
gl_d_rectfi:
    # Line 2525
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-21896 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 2527
    lw	$v0,0($v1)
    # Line 2528
    li	$a4,127
    # Line 2533
    la	$at,comm_endbuffer
    # Line 2532
    sw	$a3,16($v0)
    # Line 2531
    sw	$a2,12($v0)
    # Line 2530
    sw	$a1,8($v0)
    # Line 2529
    sw	$a0,4($v0)
    # Line 2528
    sw	$a4,0($v0)
    # Line 2533
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8828
    sw	$v0,0($v1)
.L0f0a881c:
    ld	$gp,0($sp)
    # Line 2535
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8828:
    # Line 2534
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a881c
    ld	$ra,8($sp)
.end gl_d_rectfi

# Function: gl_d_recti
# Declared: Line 2537 (Source lines: 2547-2557)
# Address: 0x0f0a8840 - 0x0f0a88b0 (Size: 112 bytes, Frame: 48)
.globl gl_d_recti
.ent gl_d_recti
gl_d_recti:
    # Line 2547
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-22008 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 2549
    lw	$v0,0($v1)
    # Line 2550
    li	$a4,128
    # Line 2555
    la	$at,comm_endbuffer
    # Line 2554
    sw	$a3,16($v0)
    # Line 2553
    sw	$a2,12($v0)
    # Line 2552
    sw	$a1,8($v0)
    # Line 2551
    sw	$a0,4($v0)
    # Line 2550
    sw	$a4,0($v0)
    # Line 2555
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8898
    sw	$v0,0($v1)
.L0f0a888c:
    ld	$gp,0($sp)
    # Line 2557
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8898:
    # Line 2556
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a888c
    ld	$ra,8($sp)
.end gl_d_recti

# Function: gl_d_resetls
# Declared: Line 2559 (Source lines: 2566-2573)
# Address: 0x0f0a88b0 - 0x0f0a8914 (Size: 100 bytes, Frame: 32)
.globl gl_d_resetls
.ent gl_d_resetls
gl_d_resetls:
    # Line 2566
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-22120 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 2568
    lw	$v0,0($v1)
    # Line 2569
    li	$a1,129
    # Line 2571
    la	$at,comm_endbuffer
    # Line 2570
    sw	$a0,4($v0)
    # Line 2569
    sw	$a1,0($v0)
    # Line 2571
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a88fc
    sw	$v0,0($v1)
.L0f0a88f0:
    ld	$gp,0($sp)
    # Line 2573
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a88fc:
    # Line 2572
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a88f0
    ld	$ra,8($sp)
.end gl_d_resetls

# Function: gl_d_RGBcolor
# Declared: Line 2575 (Source lines: 2584-2593)
# Address: 0x0f0a8914 - 0x0f0a8998 (Size: 132 bytes, Frame: 48)
.globl gl_d_RGBcolor
.ent gl_d_RGBcolor
gl_d_RGBcolor:
    # Line 2584
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-22220 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 2586
    lw	$v0,0($v1)
    # Line 2587
    li	$t9,130
    # Line 2591
    la	$at,comm_endbuffer
    # Line 2590
    sh	$a0,8($v0)
    # Line 2589
    sh	$a1,6($v0)
    # Line 2588
    sh	$a3,4($v0)
    # Line 2587
    sw	$t9,0($v0)
    # Line 2591
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8980
    sw	$v0,0($v1)
.L0f0a8974:
    ld	$gp,0($sp)
    # Line 2593
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8980:
    # Line 2592
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8974
    ld	$ra,8($sp)
.end gl_d_RGBcolor

# Function: gl_d_RGBcursor
# Declared: Line 2595 (Source lines: 2608-2622)
# Address: 0x0f0a8998 - 0x0f0a8ac4 (Size: 300 bytes, Frame: 144)
.globl gl_d_RGBcursor
.ent gl_d_RGBcursor
gl_d_RGBcursor:
    # Line 2608
    dsll32	$t0,$a0,0x10
    dsll32	$t1,$a1,0x10
    dsll32	$t2,$a2,0x10
    dsll32	$t3,$a3,0x10
    dsll32	$t8,$a4,0x10
    dsra32	$t8,$t8,0x10
    dsra32	$t3,$t3,0x10
    dsll32	$v0,$a6,0x10
    addiu	$sp,$sp,-144
    sd	$gp,24($sp)
    dsra32	$v0,$v0,0x10
    sd	$v0,16($sp)
    dsll32	$at,$a5,0x10
    dsra32	$at,$at,0x10
    sd	$at,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-22352 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v0,comm_curbufpos
    dsra32	$t2,$t2,0x10
    la	$at,comm_endbuffer
    # Line 2610
    lw	$v0,0($v0)
    # Line 2608
    dsra32	$t1,$t1,0x10
    # Line 2610
    lw	$at,0($at)
    sd	$v0,0($sp)
    addiu	$v0,$v0,32
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8a64
    # Line 2608
    dsra32	$t0,$t0,0x10
.L0f0a8a0c:
    # Line 2612
    ld	$a0,0($sp)
    la	$v1,comm_endbuffer
    # Line 2617
    sh	$t8,12($a0)
    # Line 2612
    li	$v0,131
    sw	$v0,0($a0)
    # Line 2618
    ld	$v0,8($sp)
    # Line 2616
    sh	$t3,10($a0)
    # Line 2615
    sh	$t2,8($a0)
    # Line 2618
    sh	$v0,14($a0)
    # Line 2619
    ld	$v0,16($sp)
    # Line 2614
    sh	$t1,6($a0)
    # Line 2613
    sh	$t0,4($a0)
    # Line 2619
    sh	$v0,16($a0)
    # Line 2620
    lw	$v1,0($v1)
    la	$at,comm_curbufpos
    addiu	$a0,$a0,20
    sltu	$v1,$v1,$a0
    bnez	$v1,.L0f0a8aac
    sw	$a0,0($at)
.L0f0a8a58:
    ld	$gp,24($sp)
    # Line 2622
    jr	$ra
    addiu	$sp,$sp,144
.L0f0a8a64:
    sd	$t0,64($sp)
    sd	$t1,56($sp)
    sd	$t2,48($sp)
    # Line 2611
    la	$t9,gl_comm_flush
    sd	$t3,40($sp)
    sd	$ra,72($sp)
    jalr	$t9
    sd	$t8,32($sp)
    ld	$t8,32($sp)
    ld	$t3,40($sp)
    ld	$t2,48($sp)
    la	$v1,comm_curbufpos
    ld	$t1,56($sp)
    ld	$t0,64($sp)
    lw	$v1,0($v1)
    ld	$ra,72($sp)
    b	.L0f0a8a0c
    sd	$v1,0($sp)
.L0f0a8aac:
    # Line 2621
    la	$t9,gl_comm_flush
    sd	$ra,72($sp)
    jalr	$t9
    nop
    b	.L0f0a8a58
    ld	$ra,72($sp)
.end gl_d_RGBcursor

# Function: gl_d_RGBmode
# Declared: Line 2624 (Source lines: 2630-2636)
# Address: 0x0f0a8ac4 - 0x0f0a8b24 (Size: 96 bytes, Frame: 16)
.globl gl_d_RGBmode
.ent gl_d_RGBmode
gl_d_RGBmode:
    # Line 2630
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-22652
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2632
    lw	$v0,0($v1)
    # Line 2633
    li	$a0,132
    # Line 2634
    la	$at,comm_endbuffer
    # Line 2633
    sw	$a0,0($v0)
    # Line 2634
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8b0c
    sw	$v0,0($v1)
.L0f0a8b00:
    ld	$gp,0($sp)
    # Line 2636
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a8b0c:
    # Line 2635
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8b00
    ld	$ra,8($sp)
.end gl_d_RGBmode

# Function: gl_d_RGBwritemask
# Declared: Line 2638 (Source lines: 2647-2656)
# Address: 0x0f0a8b24 - 0x0f0a8ba8 (Size: 132 bytes, Frame: 48)
.globl gl_d_RGBwritemask
.ent gl_d_RGBwritemask
gl_d_RGBwritemask:
    # Line 2647
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-22748 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 2649
    lw	$v0,0($v1)
    # Line 2650
    li	$t9,133
    # Line 2654
    la	$at,comm_endbuffer
    # Line 2653
    sh	$a0,8($v0)
    # Line 2652
    sh	$a1,6($v0)
    # Line 2651
    sh	$a3,4($v0)
    # Line 2650
    sw	$t9,0($v0)
    # Line 2654
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8b90
    sw	$v0,0($v1)
.L0f0a8b84:
    ld	$gp,0($sp)
    # Line 2656
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8b90:
    # Line 2655
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8b84
    ld	$ra,8($sp)
.end gl_d_RGBwritemask

# Function: gl_d_rotate
# Declared: Line 2658 (Source lines: 2666-2674)
# Address: 0x0f0a8ba8 - 0x0f0a8c1c (Size: 116 bytes, Frame: 32)
.globl gl_d_rotate
.ent gl_d_rotate
gl_d_rotate:
    # Line 2666
    dsll32	$a2,$a0,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-22880 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$a0,$a1,0xff
    dsra32	$a2,$a2,0x10
    # Line 2668
    lw	$v0,0($v1)
    # Line 2669
    li	$t9,134
    # Line 2672
    la	$at,comm_endbuffer
    # Line 2671
    sb	$a0,6($v0)
    # Line 2670
    sh	$a2,4($v0)
    # Line 2669
    sw	$t9,0($v0)
    # Line 2672
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8c04
    sw	$v0,0($v1)
.L0f0a8bf8:
    ld	$gp,0($sp)
    # Line 2674
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a8c04:
    # Line 2673
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8bf8
    ld	$ra,8($sp)
.end gl_d_rotate

# Function: gl_d_scale
# Declared: Line 2676 (Source lines: 2685-2694)
# Address: 0x0f0a8c1c - 0x0f0a8c88 (Size: 108 bytes, Frame: 48)
.globl gl_d_scale
.ent gl_d_scale
gl_d_scale:
    # Line 2685
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-22996
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2687
    lw	$v0,0($v1)
    # Line 2688
    li	$a0,135
    # Line 2692
    la	$at,comm_endbuffer
    # Line 2691
    swc1	$f14,12($v0)
    # Line 2690
    swc1	$f13,8($v0)
    # Line 2689
    swc1	$f12,4($v0)
    # Line 2688
    sw	$a0,0($v0)
    # Line 2692
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8c70
    sw	$v0,0($v1)
.L0f0a8c64:
    ld	$gp,0($sp)
    # Line 2694
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8c70:
    # Line 2693
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8c64
    ld	$ra,8($sp)
.end gl_d_scale

# Function: gl_d_scrmask
# Declared: Line 2696 (Source lines: 2706-2716)
# Address: 0x0f0a8c88 - 0x0f0a8d18 (Size: 144 bytes, Frame: 48)
.globl gl_d_scrmask
.ent gl_d_scrmask
gl_d_scrmask:
    # Line 2709
    li	$a4,136
    # Line 2706
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-23104 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    dsll32	$t9,$a0,0x10
    la	$v1,comm_curbufpos
    dsll32	$a0,$a3,0x10
    # Line 2714
    la	$at,comm_endbuffer
    # Line 2708
    lw	$v0,0($v1)
    # Line 2706
    dsra32	$t9,$t9,0x10
    dsra32	$a0,$a0,0x10
    # Line 2713
    sh	$a0,10($v0)
    # Line 2710
    sh	$t9,4($v0)
    # Line 2709
    sw	$a4,0($v0)
    # Line 2706
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 2712
    sh	$a1,8($v0)
    # Line 2711
    sh	$a4,6($v0)
    # Line 2714
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8d00
    sw	$v0,0($v1)
.L0f0a8cf4:
    ld	$gp,0($sp)
    # Line 2716
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8d00:
    # Line 2715
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8cf4
    ld	$ra,8($sp)
.end gl_d_scrmask

# Function: gl_d_gselect
# Declared: Line 2718 (Source lines: 2726-2738)
# Address: 0x0f0a8d18 - 0x0f0a8de8 (Size: 208 bytes, Frame: 48)
.globl gl_d_gselect
.ent gl_d_gselect
gl_d_gselect:
    # Line 2726
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-23248 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a2,comm_curbufpos
    la	$a3,comm_endbuffer
    # Line 2729
    lw	$a4,0($a2)
    lw	$at,0($a3)
    sd	$s3,0($sp)
    addiu	$v0,$a4,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8dac
    # Line 2726
    move	$s3,$a1
.L0f0a8d50:
    # Line 2734
    sw	$s3,12($a4)
    # Line 2736
    la	$at,comm_buffer
    la	$a0,comm_stdsize
    # Line 2732
    lui	$v1,0x8000
    sw	$v1,4($a4)
    # Line 2731
    li	$v0,137
    sw	$v0,0($a4)
    # Line 2733
    addu	$v0,$s3,$s3
    sw	$v0,8($a4)
    # Line 2736
    lw	$a0,0($a0)
    lw	$s3,0($at)
    # Line 2735
    addiu	$at,$a4,16
    sw	$at,0($a2)
    # Line 2736
    addu	$a0,$a0,$s3
    addiu	$s3,$a0,-24
    sw	$s3,0($a3)
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$at
    bnez	$a0,.L0f0a8dd0
    ld	$s3,0($sp)
.L0f0a8da0:
    ld	$gp,8($sp)
    # Line 2738
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8dac:
    # Line 2730
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a3,comm_endbuffer
    la	$a2,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0a8d50
    lw	$a4,0($a2)
.L0f0a8dd0:
    # Line 2737
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    ld	$s3,0($sp)
    b	.L0f0a8da0
    ld	$ra,16($sp)
.end gl_d_gselect

# Function: gl_d_setcursor
# Declared: Line 2740 (Source lines: 2749-2758)
# Address: 0x0f0a8de8 - 0x0f0a8e64 (Size: 124 bytes, Frame: 48)
.globl gl_d_setcursor
.ent gl_d_setcursor
gl_d_setcursor:
    # Line 2749
    andi	$a1,$a1,0xffff
    dsll32	$a3,$a0,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-23456 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$a0,$a2,0xffff
    dsra32	$a3,$a3,0x10
    # Line 2751
    lw	$v0,0($v1)
    # Line 2752
    li	$t9,138
    # Line 2756
    la	$at,comm_endbuffer
    # Line 2755
    sh	$a0,8($v0)
    # Line 2754
    sh	$a1,6($v0)
    # Line 2753
    sh	$a3,4($v0)
    # Line 2752
    sw	$t9,0($v0)
    # Line 2756
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8e4c
    sw	$v0,0($v1)
.L0f0a8e40:
    ld	$gp,0($sp)
    # Line 2758
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a8e4c:
    # Line 2757
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8e40
    ld	$ra,8($sp)
.end gl_d_setcursor

# Function: gl_d_setdepth
# Declared: Line 2760 (Source lines: 2768-2776)
# Address: 0x0f0a8e64 - 0x0f0a8edc (Size: 120 bytes, Frame: 32)
.globl gl_d_setdepth
.ent gl_d_setdepth
gl_d_setdepth:
    # Line 2768
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-23580 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 2770
    lw	$v0,0($v1)
    # Line 2771
    li	$t9,139
    # Line 2774
    la	$at,comm_endbuffer
    # Line 2773
    sh	$a0,6($v0)
    # Line 2772
    sh	$a2,4($v0)
    # Line 2771
    sw	$t9,0($v0)
    # Line 2774
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8ec4
    sw	$v0,0($v1)
.L0f0a8eb8:
    ld	$gp,0($sp)
    # Line 2776
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a8ec4:
    # Line 2775
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8eb8
    ld	$ra,8($sp)
.end gl_d_setdepth

# Function: gl_d_setlinestyle
# Declared: Line 2778 (Source lines: 2785-2792)
# Address: 0x0f0a8edc - 0x0f0a8f48 (Size: 108 bytes, Frame: 32)
.globl gl_d_setlinestyle
.ent gl_d_setlinestyle
gl_d_setlinestyle:
    # Line 2785
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-23700 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 2788
    li	$a1,140
    # Line 2785
    dsll32	$a0,$a0,0x10
    # Line 2787
    lw	$v0,0($v1)
    # Line 2785
    dsra32	$a0,$a0,0x10
    # Line 2790
    la	$at,comm_endbuffer
    # Line 2789
    sh	$a0,4($v0)
    # Line 2788
    sw	$a1,0($v0)
    # Line 2790
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8f30
    sw	$v0,0($v1)
.L0f0a8f24:
    ld	$gp,0($sp)
    # Line 2792
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a8f30:
    # Line 2791
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a8f24
    ld	$ra,8($sp)
.end gl_d_setlinestyle

# Function: gl_d_setmap
# Declared: Line 2794 (Source lines: 2801-2809)
# Address: 0x0f0a8f48 - 0x0f0a8fc4 (Size: 124 bytes, Frame: 32)
.globl gl_d_setmap
.ent gl_d_setmap
gl_d_setmap:
    # Line 2801
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-23808 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 2804
    li	$a1,141
    # Line 2801
    dsll32	$a0,$a0,0x10
    # Line 2803
    lw	$v0,0($v1)
    # Line 2801
    dsra32	$a0,$a0,0x10
    # Line 2806
    la	$at,comm_endbuffer
    # Line 2805
    sh	$a0,4($v0)
    # Line 2804
    sw	$a1,0($v0)
    # Line 2806
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a8fb0
    sw	$v0,0($v1)
    # Line 2808
    la	$t9,gl_comm_flush
.L0f0a8f98:
    jalr	$t9
    nop
    # Line 2809
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a8fb0:
    # Line 2807
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0a8f98
    # Line 2808
    la	$t9,gl_comm_flush
.end gl_d_setmap

# Function: gl_d_setvaluator
# Declared: Line 2811 (Source lines: 2821-2831)
# Address: 0x0f0a8fc4 - 0x0f0a9050 (Size: 140 bytes, Frame: 48)
.globl gl_d_setvaluator
.ent gl_d_setvaluator
gl_d_setvaluator:
    # Line 2824
    li	$a4,142
    # Line 2821
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-23932 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$t9,$a0,0xffff
    dsll32	$a0,$a3,0x10
    # Line 2823
    lw	$v0,0($v1)
    # Line 2829
    la	$at,comm_endbuffer
    # Line 2821
    dsra32	$a0,$a0,0x10
    # Line 2828
    sh	$a0,10($v0)
    # Line 2825
    sh	$t9,4($v0)
    # Line 2824
    sw	$a4,0($v0)
    # Line 2821
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 2827
    sh	$a1,8($v0)
    # Line 2826
    sh	$a4,6($v0)
    # Line 2829
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9038
    sw	$v0,0($v1)
.L0f0a902c:
    ld	$gp,0($sp)
    # Line 2831
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a9038:
    # Line 2830
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a902c
    ld	$ra,8($sp)
.end gl_d_setvaluator

# Function: gl_d_singlebuffer
# Declared: Line 2833 (Source lines: 2839-2845)
# Address: 0x0f0a9050 - 0x0f0a90b0 (Size: 96 bytes, Frame: 16)
.globl gl_d_singlebuffer
.ent gl_d_singlebuffer
gl_d_singlebuffer:
    # Line 2839
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-24072
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2841
    lw	$v0,0($v1)
    # Line 2842
    li	$a0,143
    # Line 2843
    la	$at,comm_endbuffer
    # Line 2842
    sw	$a0,0($v0)
    # Line 2843
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9098
    sw	$v0,0($v1)
.L0f0a908c:
    ld	$gp,0($sp)
    # Line 2845
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a9098:
    # Line 2844
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a908c
    ld	$ra,8($sp)
.end gl_d_singlebuffer

# Function: gl_d_strwidth
# Declared: Line 2847 (Source lines: 2854-2870)
# Address: 0x0f0a90b0 - 0x0f0a91bc (Size: 268 bytes, Frame: 48)
.globl gl_d_strwidth
.ent gl_d_strwidth
gl_d_strwidth:
    # Line 2854
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-24168 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,24($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0a91a0
    move	$s1,$a0
.L0f0a90ec:
    sd	$s0,16($sp)
    # Line 2858
    move	$s0,$v0
    # Line 2860
    la	$t9,strlen
    move	$a0,$s1
    # Line 2859
    li	$a1,144
    # Line 2860
    jalr	$t9
    # Line 2859
    sw	$a1,0($v0)
    # Line 2861
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0a917c
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 2863
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0a9128:
    # Line 2868
    li	$a0,1
    # Line 2865
    la	$at,comm_buffer
    # Line 2867
    la	$t8,comm_stdsize
    la	$v0,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 2868
    la	$t9,gl_comm_read_data
    la	$ra,comm_endbuffer
    # Line 2867
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 2868
    jalr	$t9
    # Line 2866
    sw	$s0,0($v0)
    la	$v0,comm_buffer
    ld	$gp,8($sp)
    # Line 2870
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a917c:
    # Line 2865
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    b	.L0f0a9128
    ld	$s1,0($sp)
.L0f0a91a0:
    # Line 2858
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,16($sp)
    b	.L0f0a90ec
    lw	$v0,0($v0)
.end gl_d_strwidth

# Function: gl_d_swapbuffers
# Declared: Line 2873 (Source lines: 2879-2886)
# Address: 0x0f0a91bc - 0x0f0a922c (Size: 112 bytes, Frame: 16)
.globl gl_d_swapbuffers
.ent gl_d_swapbuffers
gl_d_swapbuffers:
    # Line 2879
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-24436
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2881
    lw	$v0,0($v1)
    # Line 2882
    li	$a0,145
    # Line 2883
    la	$at,comm_endbuffer
    # Line 2882
    sw	$a0,0($v0)
    # Line 2883
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9218
    sw	$v0,0($v1)
    # Line 2885
    la	$t9,gl_comm_flush
.L0f0a9200:
    jalr	$t9
    nop
    # Line 2886
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a9218:
    # Line 2884
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0a9200
    # Line 2885
    la	$t9,gl_comm_flush
.end gl_d_swapbuffers

# Function: gl_d_swapinterval
# Declared: Line 2888 (Source lines: 2895-2902)
# Address: 0x0f0a922c - 0x0f0a9298 (Size: 108 bytes, Frame: 32)
.globl gl_d_swapinterval
.ent gl_d_swapinterval
gl_d_swapinterval:
    # Line 2895
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-24548 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 2898
    li	$a1,146
    # Line 2895
    dsll32	$a0,$a0,0x10
    # Line 2897
    lw	$v0,0($v1)
    # Line 2895
    dsra32	$a0,$a0,0x10
    # Line 2900
    la	$at,comm_endbuffer
    # Line 2899
    sh	$a0,4($v0)
    # Line 2898
    sw	$a1,0($v0)
    # Line 2900
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9280
    sw	$v0,0($v1)
.L0f0a9274:
    ld	$gp,0($sp)
    # Line 2902
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a9280:
    # Line 2901
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a9274
    ld	$ra,8($sp)
.end gl_d_swapinterval

# Function: gl_d_gsync
# Declared: Line 2904 (Source lines: 2910-2917)
# Address: 0x0f0a9298 - 0x0f0a9308 (Size: 112 bytes, Frame: 16)
.globl gl_d_gsync
.ent gl_d_gsync
gl_d_gsync:
    # Line 2910
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-24656
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2912
    lw	$v0,0($v1)
    # Line 2913
    li	$a0,147
    # Line 2914
    la	$at,comm_endbuffer
    # Line 2913
    sw	$a0,0($v0)
    # Line 2914
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a92f4
    sw	$v0,0($v1)
    # Line 2916
    la	$t9,gl_comm_flush
.L0f0a92dc:
    jalr	$t9
    nop
    # Line 2917
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a92f4:
    # Line 2915
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0a92dc
    # Line 2916
    la	$t9,gl_comm_flush
.end gl_d_gsync

# Function: gl_d_tie
# Declared: Line 2919 (Source lines: 2928-2937)
# Address: 0x0f0a9308 - 0x0f0a9380 (Size: 120 bytes, Frame: 48)
.globl gl_d_tie
.ent gl_d_tie
gl_d_tie:
    # Line 2928
    andi	$a1,$a1,0xffff
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-24768 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$a3,$a0,0xffff
    andi	$a0,$a2,0xffff
    # Line 2930
    lw	$v0,0($v1)
    # Line 2931
    li	$t9,148
    # Line 2935
    la	$at,comm_endbuffer
    # Line 2934
    sh	$a0,8($v0)
    # Line 2933
    sh	$a1,6($v0)
    # Line 2932
    sh	$a3,4($v0)
    # Line 2931
    sw	$t9,0($v0)
    # Line 2935
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9368
    sw	$v0,0($v1)
.L0f0a935c:
    ld	$gp,0($sp)
    # Line 2937
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a9368:
    # Line 2936
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a935c
    ld	$ra,8($sp)
.end gl_d_tie

# Function: gl_d_translate
# Declared: Line 2939 (Source lines: 2948-2957)
# Address: 0x0f0a9380 - 0x0f0a93ec (Size: 108 bytes, Frame: 48)
.globl gl_d_translate
.ent gl_d_translate
gl_d_translate:
    # Line 2948
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-24888
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 2950
    lw	$v0,0($v1)
    # Line 2951
    li	$a0,149
    # Line 2955
    la	$at,comm_endbuffer
    # Line 2954
    swc1	$f14,12($v0)
    # Line 2953
    swc1	$f13,8($v0)
    # Line 2952
    swc1	$f12,4($v0)
    # Line 2951
    sw	$a0,0($v0)
    # Line 2955
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a93d4
    sw	$v0,0($v1)
.L0f0a93c8:
    ld	$gp,0($sp)
    # Line 2957
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a93d4:
    # Line 2956
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a93c8
    ld	$ra,8($sp)
.end gl_d_translate

# Function: gl_d_viewport
# Declared: Line 2959 (Source lines: 2969-2979)
# Address: 0x0f0a93ec - 0x0f0a947c (Size: 144 bytes, Frame: 48)
.globl gl_d_viewport
.ent gl_d_viewport
gl_d_viewport:
    # Line 2972
    li	$a4,150
    # Line 2969
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-24996 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    dsll32	$t9,$a0,0x10
    la	$v1,comm_curbufpos
    dsll32	$a0,$a3,0x10
    # Line 2977
    la	$at,comm_endbuffer
    # Line 2971
    lw	$v0,0($v1)
    # Line 2969
    dsra32	$t9,$t9,0x10
    dsra32	$a0,$a0,0x10
    # Line 2976
    sh	$a0,10($v0)
    # Line 2973
    sh	$t9,4($v0)
    # Line 2972
    sw	$a4,0($v0)
    # Line 2969
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 2975
    sh	$a1,8($v0)
    # Line 2974
    sh	$a4,6($v0)
    # Line 2977
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9464
    sw	$v0,0($v1)
.L0f0a9458:
    ld	$gp,0($sp)
    # Line 2979
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a9464:
    # Line 2978
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a9458
    ld	$ra,8($sp)
.end gl_d_viewport

# Function: gl_d_window
# Declared: Line 2981 (Source lines: 2993-3006)
# Address: 0x0f0a947c - 0x0f0a956c (Size: 240 bytes, Frame: 240)
.globl gl_d_window
.ent gl_d_window
gl_d_window:
    # Line 2993
    mov.s	$f8,$f17
    mov.s	$f7,$f16
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    addiu	$sp,$sp,-112
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-25140 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a2,comm_endbuffer
    mov.s	$f4,$f13
    # Line 2995
    lw	$a3,0($a1)
    lw	$at,0($a2)
    sdc1	$f30,0($sp)
    addiu	$v0,$a3,28
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a950c
    # Line 2993
    mov.s	$f30,$f12
.L0f0a94c8:
    # Line 3003
    swc1	$f8,24($a3)
    # Line 3002
    swc1	$f7,20($a3)
    # Line 3001
    swc1	$f6,16($a3)
    # Line 3000
    swc1	$f5,12($a3)
    # Line 2999
    swc1	$f4,8($a3)
    # Line 2998
    swc1	$f30,4($a3)
    # Line 2997
    li	$at,151
    sw	$at,0($a3)
    # Line 3004
    lw	$a0,0($a2)
    ldc1	$f30,0($sp)
    addiu	$at,$a3,28
    sltu	$a0,$a0,$at
    bnez	$a0,.L0f0a9554
    sw	$at,0($a1)
.L0f0a9500:
    ld	$gp,8($sp)
    # Line 3006
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a950c:
    sdc1	$f4,48($sp)
    sdc1	$f5,40($sp)
    sdc1	$f6,32($sp)
    # Line 2996
    la	$t9,gl_comm_flush
    sdc1	$f7,24($sp)
    sd	$ra,56($sp)
    jalr	$t9
    sdc1	$f8,16($sp)
    la	$a2,comm_endbuffer
    ldc1	$f8,16($sp)
    ldc1	$f7,24($sp)
    ldc1	$f6,32($sp)
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    la	$a1,comm_curbufpos
    ld	$ra,56($sp)
    b	.L0f0a94c8
    lw	$a3,0($a1)
.L0f0a9554:
    # Line 3005
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    jalr	$t9
    ldc1	$f30,0($sp)
    b	.L0f0a9500
    ld	$ra,56($sp)
.end gl_d_window

# Function: gl_d_writemask
# Declared: Line 3008 (Source lines: 3015-3022)
# Address: 0x0f0a956c - 0x0f0a95d4 (Size: 104 bytes, Frame: 32)
.globl gl_d_writemask
.ent gl_d_writemask
gl_d_writemask:
    # Line 3015
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-25380 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3018
    li	$a1,152
    # Line 3017
    lw	$v0,0($v1)
    # Line 3015
    andi	$a0,$a0,0xffff
    # Line 3020
    la	$at,comm_endbuffer
    # Line 3019
    sh	$a0,4($v0)
    # Line 3018
    sw	$a1,0($v0)
    # Line 3020
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a95bc
    sw	$v0,0($v1)
.L0f0a95b0:
    ld	$gp,0($sp)
    # Line 3022
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a95bc:
    # Line 3021
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a95b0
    ld	$ra,8($sp)
.end gl_d_writemask

# Function: gl_d_writepixels
# Declared: Line 3024 (Source lines: 3032-3048)
# Address: 0x0f0a95d4 - 0x0f0a96f8 (Size: 292 bytes, Frame: 48)
.globl gl_d_writepixels
.ent gl_d_writepixels
gl_d_writepixels:
    # Line 3032
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-25484 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    sd	$s2,8($sp)
    lw	$a7,0($a5)
    lw	$at,0($a6)
    dsll32	$s2,$a0,0x10
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a96bc
    dsra32	$s2,$s2,0x10
.L0f0a9618:
    # Line 3036
    move	$v0,$a7
    # Line 3038
    sh	$s2,4($a7)
    # Line 3040
    addu	$a2,$s2,$s2
    # Line 3037
    li	$a3,153
    sw	$a3,0($a7)
    # Line 3040
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0a9688
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 3042
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0a9650:
    # Line 3046
    la	$a3,comm_buffer
    la	$a0,comm_stdsize
    lw	$a3,0($a3)
    lw	$a0,0($a0)
    # Line 3045
    sw	$v0,0($a5)
    # Line 3046
    addu	$a0,$a0,$a3
    addiu	$v1,$a0,-24
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$v0
    bnez	$a0,.L0f0a96e0
    sw	$v1,0($a6)
.L0f0a967c:
    ld	$gp,16($sp)
    # Line 3048
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a9688:
    # Line 3044
    li	$a4,88
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0a9650
    ld	$s0,0($sp)
.L0f0a96bc:
    # Line 3036
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0a9618
    lw	$a7,0($a5)
.L0f0a96e0:
    # Line 3047
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0a967c
    ld	$ra,24($sp)
.end gl_d_writepixels

# Function: gl_d_writeRGB
# Declared: Line 3050 (Source lines: 3060-3088)
# Address: 0x0f0a96f8 - 0x0f0a98c0 (Size: 456 bytes, Frame: 224)
.globl gl_d_writeRGB
.ent gl_d_writeRGB
gl_d_writeRGB:
    # Line 3060
    addiu	$sp,$sp,-96
    sd	$s2,16($sp)
    move	$s2,$a3
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$s3,0($sp)
    move	$s3,$a1
    sd	$gp,32($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,-25776 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$a6,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$s5,24($sp)
    lw	$a7,0($a6)
    lw	$at,0($at)
    dsll32	$s5,$a0,0x10
    addiu	$v0,$a7,248
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9884
    dsra32	$s5,$s5,0x10
.L0f0a974c:
    # Line 3064
    move	$v0,$a7
    # Line 3066
    sh	$s5,4($a7)
    # Line 3065
    li	$v1,154
    sw	$v1,0($a7)
    # Line 3068
    li	$at,-4
    sd	$s0,40($sp)
    addiu	$s0,$s5,3
    and	$s0,$s0,$at
    bnez	$s3,.L0f0a97ec
    sw	$s0,8($a7)
    ld	$s5,24($sp)
    ld	$s3,0($sp)
    # Line 3070
    addu	$v0,$s0,$v0
    addiu	$v0,$v0,12
.L0f0a9784:
    # Line 3074
    bnez	$s1,.L0f0a9820
    sw	$s0,0($v0)
    ld	$s1,8($sp)
    # Line 3076
    addu	$v0,$s0,$v0
    addiu	$v0,$v0,4
.L0f0a9798:
    # Line 3080
    bnez	$s2,.L0f0a9850
    sw	$s0,0($v0)
    # Line 3082
    addu	$v0,$s0,$v0
    ld	$s0,40($sp)
    ld	$s2,16($sp)
    addiu	$v0,$v0,4
.L0f0a97b0:
    # Line 3086
    la	$a0,comm_buffer
    la	$v1,comm_stdsize
    lw	$a0,0($a0)
    lw	$v1,0($v1)
    # Line 3085
    sw	$v0,0($a6)
    la	$a4,comm_endbuffer
    # Line 3086
    addu	$v1,$v1,$a0
    addiu	$a0,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0a98a8
    sw	$a0,0($a4)
.L0f0a97e0:
    ld	$gp,32($sp)
    # Line 3088
    jr	$ra
    addiu	$sp,$sp,96
.L0f0a97ec:
    # Line 3072
    li	$a4,248
    move	$a2,$s0
    move	$a1,$s3
    # Line 3070
    la	$a3,gl_mem_copy_array
    # Line 3072
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,48($sp)
    jalr	$t9
    ld	$s5,24($sp)
    la	$a6,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f0a9784
    ld	$s3,0($sp)
.L0f0a9820:
    la	$a3,gl_mem_copy_array
    # Line 3078
    li	$a4,248
    move	$a2,$s0
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a0,$v0,4
    la	$a6,comm_curbufpos
    ld	$s1,8($sp)
    b	.L0f0a9798
    ld	$ra,48($sp)
.L0f0a9850:
    la	$a3,gl_mem_copy_array
    # Line 3084
    li	$a4,248
    move	$a2,$s0
    la	$t9,gl_mem_pack_array
    move	$a1,$s2
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a0,$v0,4
    la	$a6,comm_curbufpos
    ld	$s0,40($sp)
    ld	$ra,48($sp)
    b	.L0f0a97b0
    ld	$s2,16($sp)
.L0f0a9884:
    # Line 3064
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    jalr	$t9
    nop
    sd	$s0,40($sp)
    la	$a6,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f0a974c
    lw	$a7,0($a6)
.L0f0a98a8:
    # Line 3087
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    jalr	$t9
    nop
    b	.L0f0a97e0
    ld	$ra,48($sp)
.end gl_d_writeRGB

# Function: gl_d_tpon
# Declared: Line 3090 (Source lines: 3096-3102)
# Address: 0x0f0a98c0 - 0x0f0a9920 (Size: 96 bytes, Frame: 16)
.globl gl_d_tpon
.ent gl_d_tpon
gl_d_tpon:
    # Line 3096
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-26232
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 3098
    lw	$v0,0($v1)
    # Line 3099
    li	$a0,155
    # Line 3100
    la	$at,comm_endbuffer
    # Line 3099
    sw	$a0,0($v0)
    # Line 3100
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9908
    sw	$v0,0($v1)
.L0f0a98fc:
    ld	$gp,0($sp)
    # Line 3102
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a9908:
    # Line 3101
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a98fc
    ld	$ra,8($sp)
.end gl_d_tpon

# Function: gl_d_tpoff
# Declared: Line 3104 (Source lines: 3110-3116)
# Address: 0x0f0a9920 - 0x0f0a9980 (Size: 96 bytes, Frame: 16)
.globl gl_d_tpoff
.ent gl_d_tpoff
gl_d_tpoff:
    # Line 3110
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-26328
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 3112
    lw	$v0,0($v1)
    # Line 3113
    li	$a0,156
    # Line 3114
    la	$at,comm_endbuffer
    # Line 3113
    sw	$a0,0($v0)
    # Line 3114
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9968
    sw	$v0,0($v1)
.L0f0a995c:
    ld	$gp,0($sp)
    # Line 3116
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a9968:
    # Line 3115
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a995c
    ld	$ra,8($sp)
.end gl_d_tpoff

# Function: gl_d_textwritemask
# Declared: Line 3118 (Source lines: 3125-3132)
# Address: 0x0f0a9980 - 0x0f0a99e8 (Size: 104 bytes, Frame: 32)
.globl gl_d_textwritemask
.ent gl_d_textwritemask
gl_d_textwritemask:
    # Line 3125
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-26424 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3128
    li	$a1,157
    # Line 3127
    lw	$v0,0($v1)
    # Line 3125
    andi	$a0,$a0,0xffff
    # Line 3130
    la	$at,comm_endbuffer
    # Line 3129
    sh	$a0,4($v0)
    # Line 3128
    sw	$a1,0($v0)
    # Line 3130
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a99d0
    sw	$v0,0($v1)
.L0f0a99c4:
    ld	$gp,0($sp)
    # Line 3132
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a99d0:
    # Line 3131
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a99c4
    ld	$ra,8($sp)
.end gl_d_textwritemask

# Function: gl_d_gexit
# Declared: Line 3134 (Source lines: 3140-3147)
# Address: 0x0f0a99e8 - 0x0f0a9a58 (Size: 112 bytes, Frame: 16)
.globl gl_d_gexit
.ent gl_d_gexit
gl_d_gexit:
    # Line 3140
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-26528
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 3142
    lw	$v0,0($v1)
    # Line 3143
    li	$a0,158
    # Line 3144
    la	$at,comm_endbuffer
    # Line 3143
    sw	$a0,0($v0)
    # Line 3144
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9a44
    sw	$v0,0($v1)
    # Line 3146
    la	$t9,gl_comm_flush
.L0f0a9a2c:
    jalr	$t9
    nop
    # Line 3147
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a9a44:
    # Line 3145
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0a9a2c
    # Line 3146
    la	$t9,gl_comm_flush
.end gl_d_gexit

# Function: gl_d_clkon
# Declared: Line 3149 (Source lines: 3155-3161)
# Address: 0x0f0a9a58 - 0x0f0a9ab8 (Size: 96 bytes, Frame: 16)
.globl gl_d_clkon
.ent gl_d_clkon
gl_d_clkon:
    # Line 3155
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-26640
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 3157
    lw	$v0,0($v1)
    # Line 3158
    li	$a0,159
    # Line 3159
    la	$at,comm_endbuffer
    # Line 3158
    sw	$a0,0($v0)
    # Line 3159
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9aa0
    sw	$v0,0($v1)
.L0f0a9a94:
    ld	$gp,0($sp)
    # Line 3161
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a9aa0:
    # Line 3160
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a9a94
    ld	$ra,8($sp)
.end gl_d_clkon

# Function: gl_d_clkoff
# Declared: Line 3163 (Source lines: 3169-3175)
# Address: 0x0f0a9ab8 - 0x0f0a9b18 (Size: 96 bytes, Frame: 16)
.globl gl_d_clkoff
.ent gl_d_clkoff
gl_d_clkoff:
    # Line 3169
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-26736
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 3171
    lw	$v0,0($v1)
    # Line 3172
    li	$a0,160
    # Line 3173
    la	$at,comm_endbuffer
    # Line 3172
    sw	$a0,0($v0)
    # Line 3173
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9b00
    sw	$v0,0($v1)
.L0f0a9af4:
    ld	$gp,0($sp)
    # Line 3175
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a9b00:
    # Line 3174
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a9af4
    ld	$ra,8($sp)
.end gl_d_clkoff

# Function: gl_d_lampon
# Declared: Line 3177 (Source lines: 3184-3192)
# Address: 0x0f0a9b18 - 0x0f0a9b90 (Size: 120 bytes, Frame: 32)
.globl gl_d_lampon
.ent gl_d_lampon
gl_d_lampon:
    # Line 3184
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-26832 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3187
    li	$a1,161
    # Line 3186
    lw	$v0,0($v1)
    # Line 3184
    andi	$a0,$a0,0xff
    # Line 3189
    la	$at,comm_endbuffer
    # Line 3188
    sb	$a0,4($v0)
    # Line 3187
    sw	$a1,0($v0)
    # Line 3189
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9b7c
    sw	$v0,0($v1)
    # Line 3191
    la	$t9,gl_comm_flush
.L0f0a9b64:
    jalr	$t9
    nop
    # Line 3192
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a9b7c:
    # Line 3190
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0a9b64
    # Line 3191
    la	$t9,gl_comm_flush
.end gl_d_lampon

# Function: gl_d_lampoff
# Declared: Line 3194 (Source lines: 3201-3209)
# Address: 0x0f0a9b90 - 0x0f0a9c08 (Size: 120 bytes, Frame: 32)
.globl gl_d_lampoff
.ent gl_d_lampoff
gl_d_lampoff:
    # Line 3201
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-26952 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3204
    li	$a1,162
    # Line 3203
    lw	$v0,0($v1)
    # Line 3201
    andi	$a0,$a0,0xff
    # Line 3206
    la	$at,comm_endbuffer
    # Line 3205
    sb	$a0,4($v0)
    # Line 3204
    sw	$a1,0($v0)
    # Line 3206
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9bf4
    sw	$v0,0($v1)
    # Line 3208
    la	$t9,gl_comm_flush
.L0f0a9bdc:
    jalr	$t9
    nop
    # Line 3209
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a9bf4:
    # Line 3207
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0a9bdc
    # Line 3208
    la	$t9,gl_comm_flush
.end gl_d_lampoff

# Function: gl_d_setbell
# Declared: Line 3211 (Source lines: 3218-3225)
# Address: 0x0f0a9c08 - 0x0f0a9c70 (Size: 104 bytes, Frame: 32)
.globl gl_d_setbell
.ent gl_d_setbell
gl_d_setbell:
    # Line 3218
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-27072 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3221
    li	$a1,163
    # Line 3220
    lw	$v0,0($v1)
    # Line 3218
    andi	$a0,$a0,0xff
    # Line 3223
    la	$at,comm_endbuffer
    # Line 3222
    sb	$a0,4($v0)
    # Line 3221
    sw	$a1,0($v0)
    # Line 3223
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9c58
    sw	$v0,0($v1)
.L0f0a9c4c:
    ld	$gp,0($sp)
    # Line 3225
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a9c58:
    # Line 3224
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0a9c4c
    ld	$ra,8($sp)
.end gl_d_setbell

# Function: gl_d_ringbell
# Declared: Line 3227 (Source lines: 3233-3240)
# Address: 0x0f0a9c70 - 0x0f0a9ce0 (Size: 112 bytes, Frame: 16)
.globl gl_d_ringbell
.ent gl_d_ringbell
gl_d_ringbell:
    # Line 3233
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-27176
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 3235
    lw	$v0,0($v1)
    # Line 3236
    li	$a0,164
    # Line 3237
    la	$at,comm_endbuffer
    # Line 3236
    sw	$a0,0($v0)
    # Line 3237
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9ccc
    sw	$v0,0($v1)
    # Line 3239
    la	$t9,gl_comm_flush
.L0f0a9cb4:
    jalr	$t9
    nop
    # Line 3240
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0a9ccc:
    # Line 3238
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0a9cb4
    # Line 3239
    la	$t9,gl_comm_flush
.end gl_d_ringbell

# Function: gl_d_arcfs
# Declared: Line 3242 (Source lines: 3253-3265)
# Address: 0x0f0a9ce0 - 0x0f0a9de0 (Size: 256 bytes, Frame: 240)
.globl gl_d_arcfs
.ent gl_d_arcfs
gl_d_arcfs:
    # Line 3253
    dsll32	$a6,$a0,0x10
    dsll32	$a7,$a1,0x10
    dsll32	$t0,$a2,0x10
    dsll32	$t1,$a3,0x10
    dsll32	$t2,$a4,0x10
    dsra32	$t2,$t2,0x10
    dsra32	$t1,$t1,0x10
    addiu	$sp,$sp,-112
    sd	$gp,8($sp)
    lui	$t3,0xfff9
    addiu	$t3,$t3,-27288
    addu	$gp,$t9,$t3
    la	$t3,comm_curbufpos
    dsra32	$t0,$t0,0x10
    la	$t8,comm_endbuffer
    # Line 3255
    lw	$v0,0($t3)
    # Line 3253
    dsra32	$a7,$a7,0x10
    # Line 3255
    lw	$at,0($t8)
    sd	$v0,0($sp)
    addiu	$v0,$v0,24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9d7c
    # Line 3253
    dsra32	$a6,$a6,0x10
.L0f0a9d3c:
    # Line 3257
    ld	$v0,0($sp)
    li	$v1,165
    # Line 3262
    sh	$t2,12($v0)
    # Line 3261
    sh	$t1,10($v0)
    # Line 3260
    sh	$t0,8($v0)
    # Line 3259
    sh	$a7,6($v0)
    # Line 3258
    sh	$a6,4($v0)
    # Line 3257
    sw	$v1,0($v0)
    # Line 3263
    lw	$at,0($t8)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9dc8
    sw	$v0,0($t3)
.L0f0a9d70:
    ld	$gp,8($sp)
    # Line 3265
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a9d7c:
    sd	$a6,48($sp)
    sd	$a7,40($sp)
    sd	$t0,32($sp)
    # Line 3256
    la	$t9,gl_comm_flush
    sd	$t1,24($sp)
    sd	$ra,56($sp)
    jalr	$t9
    sd	$t2,16($sp)
    la	$t8,comm_endbuffer
    ld	$t2,16($sp)
    ld	$t1,24($sp)
    ld	$t0,32($sp)
    la	$t3,comm_curbufpos
    ld	$a7,40($sp)
    ld	$a6,48($sp)
    lw	$a0,0($t3)
    ld	$ra,56($sp)
    b	.L0f0a9d3c
    sd	$a0,0($sp)
.L0f0a9dc8:
    # Line 3264
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    jalr	$t9
    nop
    b	.L0f0a9d70
    ld	$ra,56($sp)
.end gl_d_arcfs

# Function: gl_d_arcs
# Declared: Line 3267 (Source lines: 3278-3290)
# Address: 0x0f0a9de0 - 0x0f0a9ee0 (Size: 256 bytes, Frame: 240)
.globl gl_d_arcs
.ent gl_d_arcs
gl_d_arcs:
    # Line 3278
    dsll32	$a6,$a0,0x10
    dsll32	$a7,$a1,0x10
    dsll32	$t0,$a2,0x10
    dsll32	$t1,$a3,0x10
    dsll32	$t2,$a4,0x10
    dsra32	$t2,$t2,0x10
    dsra32	$t1,$t1,0x10
    addiu	$sp,$sp,-112
    sd	$gp,8($sp)
    lui	$t3,0xfff9
    addiu	$t3,$t3,-27544
    addu	$gp,$t9,$t3
    la	$t3,comm_curbufpos
    dsra32	$t0,$t0,0x10
    la	$t8,comm_endbuffer
    # Line 3280
    lw	$v0,0($t3)
    # Line 3278
    dsra32	$a7,$a7,0x10
    # Line 3280
    lw	$at,0($t8)
    sd	$v0,0($sp)
    addiu	$v0,$v0,24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9e7c
    # Line 3278
    dsra32	$a6,$a6,0x10
.L0f0a9e3c:
    # Line 3282
    ld	$v0,0($sp)
    li	$v1,166
    # Line 3287
    sh	$t2,12($v0)
    # Line 3286
    sh	$t1,10($v0)
    # Line 3285
    sh	$t0,8($v0)
    # Line 3284
    sh	$a7,6($v0)
    # Line 3283
    sh	$a6,4($v0)
    # Line 3282
    sw	$v1,0($v0)
    # Line 3288
    lw	$at,0($t8)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9ec8
    sw	$v0,0($t3)
.L0f0a9e70:
    ld	$gp,8($sp)
    # Line 3290
    jr	$ra
    addiu	$sp,$sp,112
.L0f0a9e7c:
    sd	$a6,48($sp)
    sd	$a7,40($sp)
    sd	$t0,32($sp)
    # Line 3281
    la	$t9,gl_comm_flush
    sd	$t1,24($sp)
    sd	$ra,56($sp)
    jalr	$t9
    sd	$t2,16($sp)
    la	$t8,comm_endbuffer
    ld	$t2,16($sp)
    ld	$t1,24($sp)
    ld	$t0,32($sp)
    la	$t3,comm_curbufpos
    ld	$a7,40($sp)
    ld	$a6,48($sp)
    lw	$a0,0($t3)
    ld	$ra,56($sp)
    b	.L0f0a9e3c
    sd	$a0,0($sp)
.L0f0a9ec8:
    # Line 3289
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    jalr	$t9
    nop
    b	.L0f0a9e70
    ld	$ra,56($sp)
.end gl_d_arcs

# Function: gl_d_bbox2s
# Declared: Line 3292 (Source lines: 3304-3317)
# Address: 0x0f0a9ee0 - 0x0f0a9ff8 (Size: 280 bytes, Frame: 128)
.globl gl_d_bbox2s
.ent gl_d_bbox2s
gl_d_bbox2s:
    # Line 3304
    dsll32	$a7,$a0,0x10
    dsll32	$t0,$a1,0x10
    dsll32	$t1,$a2,0x10
    dsll32	$t2,$a3,0x10
    dsll32	$t3,$a4,0x10
    dsll32	$t8,$a5,0x10
    dsra32	$t8,$t8,0x10
    dsra32	$t3,$t3,0x10
    dsra32	$t2,$t2,0x10
    addiu	$sp,$sp,-128
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-27800 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v0,comm_curbufpos
    dsra32	$t1,$t1,0x10
    la	$at,comm_endbuffer
    # Line 3306
    lw	$v0,0($v0)
    # Line 3304
    dsra32	$t0,$t0,0x10
    # Line 3306
    lw	$at,0($at)
    sd	$v0,0($sp)
    addiu	$v0,$v0,28
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9f90
    # Line 3304
    dsra32	$a7,$a7,0x10
.L0f0a9f44:
    # Line 3308
    ld	$v0,0($sp)
    la	$at,comm_endbuffer
    li	$a0,167
    # Line 3314
    sh	$t8,14($v0)
    # Line 3313
    sh	$t3,12($v0)
    # Line 3312
    sh	$t2,10($v0)
    # Line 3311
    sh	$t1,8($v0)
    # Line 3310
    sh	$t0,6($v0)
    # Line 3309
    sh	$a7,4($v0)
    # Line 3308
    sw	$a0,0($v0)
    # Line 3315
    lw	$at,0($at)
    la	$v1,comm_curbufpos
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0a9fe0
    sw	$v0,0($v1)
.L0f0a9f84:
    ld	$gp,8($sp)
    # Line 3317
    jr	$ra
    addiu	$sp,$sp,128
.L0f0a9f90:
    sd	$a7,56($sp)
    sd	$t0,48($sp)
    sd	$t1,40($sp)
    sd	$t2,32($sp)
    # Line 3307
    la	$t9,gl_comm_flush
    sd	$t3,24($sp)
    sd	$ra,64($sp)
    jalr	$t9
    sd	$t8,16($sp)
    ld	$t8,16($sp)
    ld	$t3,24($sp)
    la	$a7,comm_curbufpos
    ld	$t2,32($sp)
    ld	$t1,40($sp)
    lw	$a7,0($a7)
    ld	$t0,48($sp)
    ld	$ra,64($sp)
    sd	$a7,0($sp)
    b	.L0f0a9f44
    ld	$a7,56($sp)
.L0f0a9fe0:
    # Line 3316
    la	$t9,gl_comm_flush
    sd	$ra,64($sp)
    jalr	$t9
    nop
    b	.L0f0a9f84
    ld	$ra,64($sp)
.end gl_d_bbox2s

# Function: gl_d_blankscreen
# Declared: Line 3319 (Source lines: 3326-3333)
# Address: 0x0f0a9ff8 - 0x0f0aa05c (Size: 100 bytes, Frame: 32)
.globl gl_d_blankscreen
.ent gl_d_blankscreen
gl_d_blankscreen:
    # Line 3326
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-28080 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3328
    lw	$v0,0($v1)
    # Line 3329
    li	$a1,168
    # Line 3331
    la	$at,comm_endbuffer
    # Line 3330
    sw	$a0,4($v0)
    # Line 3329
    sw	$a1,0($v0)
    # Line 3331
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa044
    sw	$v0,0($v1)
.L0f0aa038:
    ld	$gp,0($sp)
    # Line 3333
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aa044:
    # Line 3332
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa038
    ld	$ra,8($sp)
.end gl_d_blankscreen

# Function: gl_dgl_blkqread
# Declared: Line 3335 (Source lines: 3343-3355)
# Address: 0x0f0aa05c - 0x0f0aa0f8 (Size: 156 bytes, Frame: 48)
.globl gl_dgl_blkqread
.ent gl_dgl_blkqread
gl_dgl_blkqread:
    # Line 3343
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a0
    # Line 3351
    li	$a0,1
    sd	$ra,0($sp)
    # Line 3346
    li	$a4,169
    sd	$gp,16($sp)
    # Line 3343
    lui	$a5,0xfff9
    addiu	$a5,$a5,-28180
    addu	$gp,$t9,$a5
    la	$v0,comm_curbufpos
    # Line 3347
    li	$a3,-2
    # Line 3343
    dsll32	$v1,$a1,0x10
    # Line 3345
    lw	$a2,0($v0)
    # Line 3343
    dsra32	$v1,$v1,0x10
    # Line 3351
    la	$t9,gl_comm_read_data
    # Line 3349
    sh	$v1,12($a2)
    # Line 3346
    sw	$a4,0($a2)
    # Line 3350
    addiu	$at,$a2,16
    # Line 3347
    sw	$a3,4($a2)
    # Line 3348
    addu	$a3,$v1,$v1
    sw	$a3,8($a2)
    # Line 3351
    jalr	$t9
    # Line 3350
    sw	$at,0($v0)
    # Line 3353
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_short_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 3355
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_dgl_blkqread

# Function: gl_d_getmcolor
# Declared: Line 3358 (Source lines: 3368-3381)
# Address: 0x0f0aa0f8 - 0x0f0aa190 (Size: 152 bytes, Frame: 208)
.globl gl_d_getmcolor
.ent gl_d_getmcolor
gl_d_getmcolor:
    # Line 3368
    andi	$v1,$a0,0xffff
    # Line 3377
    li	$a0,1
    # Line 3368
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    lui	$a4,0xfff9
    addiu	$a4,$a4,-28336
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    # Line 3370
    lw	$a2,0($v0)
    # Line 3371
    li	$a3,170
    # Line 3377
    la	$t9,gl_comm_read_data
    # Line 3372
    sh	$v1,4($a2)
    # Line 3371
    sw	$a3,0($a2)
    # Line 3376
    addiu	$at,$a2,8
    # Line 3377
    jalr	$t9
    # Line 3376
    sw	$at,0($v0)
    # Line 3378
    la	$ra,comm_buffer
    lw	$v0,0($ra)
    lh	$v0,4($v0)
    sh	$v0,0($s8)
    # Line 3379
    lw	$at,0($ra)
    ld	$v0,32($sp)
    lh	$at,8($at)
    sh	$at,0($v0)
    # Line 3380
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lh	$s8,12($s8)
    sh	$s8,0($ra)
    # Line 3381
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_getmcolor

# Function: gl_d_chunksize
# Declared: Line 3383 (Source lines: 3390-3397)
# Address: 0x0f0aa190 - 0x0f0aa1f4 (Size: 100 bytes, Frame: 32)
.globl gl_d_chunksize
.ent gl_d_chunksize
gl_d_chunksize:
    # Line 3390
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-28488 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3392
    lw	$v0,0($v1)
    # Line 3393
    li	$a1,171
    # Line 3395
    la	$at,comm_endbuffer
    # Line 3394
    sw	$a0,4($v0)
    # Line 3393
    sw	$a1,0($v0)
    # Line 3395
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa1dc
    sw	$v0,0($v1)
.L0f0aa1d0:
    ld	$gp,0($sp)
    # Line 3397
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aa1dc:
    # Line 3396
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa1d0
    ld	$ra,8($sp)
.end gl_d_chunksize

# Function: gl_d_circfs
# Declared: Line 3399 (Source lines: 3408-3417)
# Address: 0x0f0aa1f4 - 0x0f0aa278 (Size: 132 bytes, Frame: 48)
.globl gl_d_circfs
.ent gl_d_circfs
gl_d_circfs:
    # Line 3408
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-28588 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 3410
    lw	$v0,0($v1)
    # Line 3411
    li	$t9,172
    # Line 3415
    la	$at,comm_endbuffer
    # Line 3414
    sh	$a0,8($v0)
    # Line 3413
    sh	$a1,6($v0)
    # Line 3412
    sh	$a3,4($v0)
    # Line 3411
    sw	$t9,0($v0)
    # Line 3415
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa260
    sw	$v0,0($v1)
.L0f0aa254:
    ld	$gp,0($sp)
    # Line 3417
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aa260:
    # Line 3416
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa254
    ld	$ra,8($sp)
.end gl_d_circfs

# Function: gl_d_circs
# Declared: Line 3419 (Source lines: 3428-3437)
# Address: 0x0f0aa278 - 0x0f0aa2fc (Size: 132 bytes, Frame: 48)
.globl gl_d_circs
.ent gl_d_circs
gl_d_circs:
    # Line 3428
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-28720 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 3430
    lw	$v0,0($v1)
    # Line 3431
    li	$t9,173
    # Line 3435
    la	$at,comm_endbuffer
    # Line 3434
    sh	$a0,8($v0)
    # Line 3433
    sh	$a1,6($v0)
    # Line 3432
    sh	$a3,4($v0)
    # Line 3431
    sw	$t9,0($v0)
    # Line 3435
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa2e4
    sw	$v0,0($v1)
.L0f0aa2d8:
    ld	$gp,0($sp)
    # Line 3437
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aa2e4:
    # Line 3436
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa2d8
    ld	$ra,8($sp)
.end gl_d_circs

# Function: gl_d_cmov2s
# Declared: Line 3439 (Source lines: 3447-3455)
# Address: 0x0f0aa2fc - 0x0f0aa374 (Size: 120 bytes, Frame: 32)
.globl gl_d_cmov2s
.ent gl_d_cmov2s
gl_d_cmov2s:
    # Line 3447
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-28852 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 3449
    lw	$v0,0($v1)
    # Line 3450
    li	$t9,174
    # Line 3453
    la	$at,comm_endbuffer
    # Line 3452
    sh	$a0,6($v0)
    # Line 3451
    sh	$a2,4($v0)
    # Line 3450
    sw	$t9,0($v0)
    # Line 3453
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa35c
    sw	$v0,0($v1)
.L0f0aa350:
    ld	$gp,0($sp)
    # Line 3455
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aa35c:
    # Line 3454
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa350
    ld	$ra,8($sp)
.end gl_d_cmov2s

# Function: gl_d_cmovs
# Declared: Line 3457 (Source lines: 3466-3475)
# Address: 0x0f0aa374 - 0x0f0aa3f8 (Size: 132 bytes, Frame: 48)
.globl gl_d_cmovs
.ent gl_d_cmovs
gl_d_cmovs:
    # Line 3466
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-28972 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 3468
    lw	$v0,0($v1)
    # Line 3469
    li	$t9,175
    # Line 3473
    la	$at,comm_endbuffer
    # Line 3472
    sh	$a0,8($v0)
    # Line 3471
    sh	$a1,6($v0)
    # Line 3470
    sh	$a3,4($v0)
    # Line 3469
    sw	$t9,0($v0)
    # Line 3473
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa3e0
    sw	$v0,0($v1)
.L0f0aa3d4:
    ld	$gp,0($sp)
    # Line 3475
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aa3e0:
    # Line 3474
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa3d4
    ld	$ra,8($sp)
.end gl_d_cmovs

# Function: gl_d_compactify
# Declared: Line 3477 (Source lines: 3484-3491)
# Address: 0x0f0aa3f8 - 0x0f0aa45c (Size: 100 bytes, Frame: 32)
.globl gl_d_compactify
.ent gl_d_compactify
gl_d_compactify:
    # Line 3484
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-29104 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3486
    lw	$v0,0($v1)
    # Line 3487
    li	$a1,176
    # Line 3489
    la	$at,comm_endbuffer
    # Line 3488
    sw	$a0,4($v0)
    # Line 3487
    sw	$a1,0($v0)
    # Line 3489
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa444
    sw	$v0,0($v1)
.L0f0aa438:
    ld	$gp,0($sp)
    # Line 3491
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aa444:
    # Line 3490
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa438
    ld	$ra,8($sp)
.end gl_d_compactify

# Function: gl_d_qdevice
# Declared: Line 3493 (Source lines: 3500-3507)
# Address: 0x0f0aa45c - 0x0f0aa4c4 (Size: 104 bytes, Frame: 32)
.globl gl_d_qdevice
.ent gl_d_qdevice
gl_d_qdevice:
    # Line 3500
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-29204 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3503
    li	$a1,177
    # Line 3502
    lw	$v0,0($v1)
    # Line 3500
    andi	$a0,$a0,0xffff
    # Line 3505
    la	$at,comm_endbuffer
    # Line 3504
    sh	$a0,4($v0)
    # Line 3503
    sw	$a1,0($v0)
    # Line 3505
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa4ac
    sw	$v0,0($v1)
.L0f0aa4a0:
    ld	$gp,0($sp)
    # Line 3507
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aa4ac:
    # Line 3506
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa4a0
    ld	$ra,8($sp)
.end gl_d_qdevice

# Function: gl_d_unqdevice
# Declared: Line 3509 (Source lines: 3516-3523)
# Address: 0x0f0aa4c4 - 0x0f0aa52c (Size: 104 bytes, Frame: 32)
.globl gl_d_unqdevice
.ent gl_d_unqdevice
gl_d_unqdevice:
    # Line 3516
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-29308 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3519
    li	$a1,178
    # Line 3518
    lw	$v0,0($v1)
    # Line 3516
    andi	$a0,$a0,0xffff
    # Line 3521
    la	$at,comm_endbuffer
    # Line 3520
    sh	$a0,4($v0)
    # Line 3519
    sw	$a1,0($v0)
    # Line 3521
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa514
    sw	$v0,0($v1)
.L0f0aa508:
    ld	$gp,0($sp)
    # Line 3523
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aa514:
    # Line 3522
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa508
    ld	$ra,8($sp)
.end gl_d_unqdevice

# Function: gl_d_curvebasis
# Declared: Line 3525 (Source lines: 3532-3539)
# Address: 0x0f0aa52c - 0x0f0aa598 (Size: 108 bytes, Frame: 32)
.globl gl_d_curvebasis
.ent gl_d_curvebasis
gl_d_curvebasis:
    # Line 3532
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-29412 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3535
    li	$a1,179
    # Line 3532
    dsll32	$a0,$a0,0x10
    # Line 3534
    lw	$v0,0($v1)
    # Line 3532
    dsra32	$a0,$a0,0x10
    # Line 3537
    la	$at,comm_endbuffer
    # Line 3536
    sh	$a0,4($v0)
    # Line 3535
    sw	$a1,0($v0)
    # Line 3537
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa580
    sw	$v0,0($v1)
.L0f0aa574:
    ld	$gp,0($sp)
    # Line 3539
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aa580:
    # Line 3538
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa574
    ld	$ra,8($sp)
.end gl_d_curvebasis

# Function: gl_d_curveprecision
# Declared: Line 3541 (Source lines: 3548-3555)
# Address: 0x0f0aa598 - 0x0f0aa604 (Size: 108 bytes, Frame: 32)
.globl gl_d_curveprecision
.ent gl_d_curveprecision
gl_d_curveprecision:
    # Line 3548
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-29520 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3551
    li	$a1,180
    # Line 3548
    dsll32	$a0,$a0,0x10
    # Line 3550
    lw	$v0,0($v1)
    # Line 3548
    dsra32	$a0,$a0,0x10
    # Line 3553
    la	$at,comm_endbuffer
    # Line 3552
    sh	$a0,4($v0)
    # Line 3551
    sw	$a1,0($v0)
    # Line 3553
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa5ec
    sw	$v0,0($v1)
.L0f0aa5e0:
    ld	$gp,0($sp)
    # Line 3555
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aa5ec:
    # Line 3554
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa5e0
    ld	$ra,8($sp)
.end gl_d_curveprecision

# Function: gl_d_crv
# Declared: Line 3557 (Source lines: 3564-3579)
# Address: 0x0f0aa604 - 0x0f0aa704 (Size: 256 bytes, Frame: 48)
.globl gl_d_crv
.ent gl_d_crv
gl_d_crv:
    # Line 3564
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-29628 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    lw	$a5,0($a1)
    lw	$at,0($a4)
    sd	$s0,0($sp)
    addiu	$v0,$a5,84
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa6c8
    move	$s0,$a0
.L0f0aa63c:
    # Line 3568
    move	$v0,$a5
    # Line 3571
    li	$a2,48
    # Line 3569
    li	$a3,181
    sw	$a3,0($a5)
    # Line 3571
    bnez	$s0,.L0f0aa694
    sw	$a2,4($a5)
    # Line 3573
    addiu	$v0,$v0,56
    ld	$s0,0($sp)
.L0f0aa65c:
    # Line 3577
    la	$a2,comm_buffer
    la	$v1,comm_stdsize
    lw	$a2,0($a2)
    lw	$v1,0($v1)
    # Line 3576
    sw	$v0,0($a1)
    # Line 3577
    addu	$v1,$v1,$a2
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0aa6ec
    sw	$at,0($a4)
.L0f0aa688:
    ld	$gp,8($sp)
    # Line 3579
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aa694:
    # Line 3575
    li	$a4,84
    la	$a3,gl_mem_hton_float_array
    li	$a2,48
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    ld	$ra,16($sp)
    b	.L0f0aa65c
    ld	$s0,0($sp)
.L0f0aa6c8:
    # Line 3568
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a4,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0aa63c
    lw	$a5,0($a1)
.L0f0aa6ec:
    # Line 3578
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    b	.L0f0aa688
    ld	$ra,16($sp)
.end gl_d_crv

# Function: gl_d_gettp
# Declared: Line 3581 (Source lines: 3591-3605)
# Address: 0x0f0aa704 - 0x0f0aa7a8 (Size: 164 bytes, Frame: 208)
.globl gl_d_gettp
.ent gl_d_gettp
gl_d_gettp:
    # Line 3591
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 3600
    li	$a0,1
    sd	$a3,24($sp)
    sd	$a1,40($sp)
    sd	$gp,16($sp)
    # Line 3591
    lui	$a4,0xfff9
    addiu	$a4,$a4,-29884
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,32($sp)
    # Line 3593
    lw	$a2,0($v0)
    # Line 3594
    li	$v1,182
    # Line 3600
    la	$t9,gl_comm_read_data
    # Line 3594
    sw	$v1,0($a2)
    # Line 3599
    addiu	$at,$a2,4
    # Line 3600
    jalr	$t9
    # Line 3599
    sw	$at,0($v0)
    # Line 3601
    la	$ra,comm_buffer
    lw	$v1,0($ra)
    lh	$v1,4($v1)
    sh	$v1,0($s8)
    # Line 3602
    lw	$v0,0($ra)
    ld	$v1,40($sp)
    lh	$v0,8($v0)
    sh	$v0,0($v1)
    # Line 3603
    lw	$at,0($ra)
    ld	$v0,32($sp)
    lh	$at,12($at)
    sh	$at,0($v0)
    # Line 3604
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lh	$s8,16($s8)
    sh	$s8,0($ra)
    # Line 3605
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_gettp

# Function: gl_d_gbegin
# Declared: Line 3607 (Source lines: 3613-3619)
# Address: 0x0f0aa7a8 - 0x0f0aa808 (Size: 96 bytes, Frame: 16)
.globl gl_d_gbegin
.ent gl_d_gbegin
gl_d_gbegin:
    # Line 3613
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-30048
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 3615
    lw	$v0,0($v1)
    # Line 3616
    li	$a0,183
    # Line 3617
    la	$at,comm_endbuffer
    # Line 3616
    sw	$a0,0($v0)
    # Line 3617
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa7f0
    sw	$v0,0($v1)
.L0f0aa7e4:
    ld	$gp,0($sp)
    # Line 3619
    jr	$ra
    addiu	$sp,$sp,16
.L0f0aa7f0:
    # Line 3618
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa7e4
    ld	$ra,8($sp)
.end gl_d_gbegin

# Function: gl_d_textinit
# Declared: Line 3621 (Source lines: 3627-3633)
# Address: 0x0f0aa808 - 0x0f0aa868 (Size: 96 bytes, Frame: 16)
.globl gl_d_textinit
.ent gl_d_textinit
gl_d_textinit:
    # Line 3627
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-30144
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 3629
    lw	$v0,0($v1)
    # Line 3630
    li	$a0,184
    # Line 3631
    la	$at,comm_endbuffer
    # Line 3630
    sw	$a0,0($v0)
    # Line 3631
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa850
    sw	$v0,0($v1)
.L0f0aa844:
    ld	$gp,0($sp)
    # Line 3633
    jr	$ra
    addiu	$sp,$sp,16
.L0f0aa850:
    # Line 3632
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aa844
    ld	$ra,8($sp)
.end gl_d_textinit

# Function: gl_d_crvn
# Declared: Line 3635 (Source lines: 3643-3659)
# Address: 0x0f0aa868 - 0x0f0aa990 (Size: 296 bytes, Frame: 48)
.globl gl_d_crvn
.ent gl_d_crvn
gl_d_crvn:
    # Line 3643
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-30240 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aa954
    move	$s2,$a0
.L0f0aa8a8:
    # Line 3647
    move	$v0,$a7
    # Line 3649
    sw	$s2,4($a7)
    # Line 3648
    li	$a3,185
    sw	$a3,0($a7)
    # Line 3651
    li	$a3,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0aa920
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 3653
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0aa8e8:
    # Line 3657
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 3656
    sw	$v0,0($a5)
    # Line 3657
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0aa978
    sw	$v1,0($a6)
.L0f0aa914:
    ld	$gp,16($sp)
    # Line 3659
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aa920:
    # Line 3655
    li	$a4,88
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0aa8e8
    ld	$s0,0($sp)
.L0f0aa954:
    # Line 3647
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0aa8a8
    lw	$a7,0($a5)
.L0f0aa978:
    # Line 3658
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0aa914
    ld	$ra,24($sp)
.end gl_d_crvn

# Function: gl_d_defbasis
# Declared: Line 3661 (Source lines: 3669-3685)
# Address: 0x0f0aa990 - 0x0f0aaaa8 (Size: 280 bytes, Frame: 48)
.globl gl_d_defbasis
.ent gl_d_defbasis
gl_d_defbasis:
    # Line 3669
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-30536 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a4,comm_curbufpos
    la	$a5,comm_endbuffer
    sd	$s2,8($sp)
    lw	$a6,0($a4)
    lw	$at,0($a5)
    dsll32	$s2,$a0,0x10
    addiu	$v0,$a6,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aaa6c
    dsra32	$s2,$s2,0x10
.L0f0aa9d4:
    # Line 3673
    move	$v0,$a6
    # Line 3675
    sh	$s2,4($a6)
    # Line 3677
    li	$a0,64
    # Line 3674
    li	$a2,186
    sw	$a2,0($a6)
    # Line 3677
    bnez	$s0,.L0f0aaa34
    sw	$a0,8($a6)
    ld	$s2,8($sp)
    # Line 3679
    addiu	$v0,$v0,76
    ld	$s0,0($sp)
.L0f0aa9fc:
    # Line 3683
    la	$a0,comm_buffer
    la	$v1,comm_stdsize
    lw	$a0,0($a0)
    lw	$v1,0($v1)
    # Line 3682
    sw	$v0,0($a4)
    # Line 3683
    addu	$v1,$v1,$a0
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0aaa90
    sw	$at,0($a5)
.L0f0aaa28:
    ld	$gp,16($sp)
    # Line 3685
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aaa34:
    # Line 3681
    li	$a4,88
    la	$a3,gl_mem_hton_float_array
    li	$a2,64
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a4,comm_curbufpos
    la	$a5,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0aa9fc
    ld	$s0,0($sp)
.L0f0aaa6c:
    # Line 3673
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a5,comm_endbuffer
    la	$a4,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0aa9d4
    lw	$a6,0($a4)
.L0f0aaa90:
    # Line 3684
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0aaa28
    ld	$ra,24($sp)
.end gl_d_defbasis

# Function: gl_d_deltag
# Declared: Line 3687 (Source lines: 3694-3701)
# Address: 0x0f0aaaa8 - 0x0f0aab0c (Size: 100 bytes, Frame: 32)
.globl gl_d_deltag
.ent gl_d_deltag
gl_d_deltag:
    # Line 3694
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-30816 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3696
    lw	$v0,0($v1)
    # Line 3697
    li	$a1,187
    # Line 3699
    la	$at,comm_endbuffer
    # Line 3698
    sw	$a0,4($v0)
    # Line 3697
    sw	$a1,0($v0)
    # Line 3699
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aaaf4
    sw	$v0,0($v1)
.L0f0aaae8:
    ld	$gp,0($sp)
    # Line 3701
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aaaf4:
    # Line 3700
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aaae8
    ld	$ra,8($sp)
.end gl_d_deltag

# Function: gl_d_depthcue
# Declared: Line 3703 (Source lines: 3710-3717)
# Address: 0x0f0aab0c - 0x0f0aab70 (Size: 100 bytes, Frame: 32)
.globl gl_d_depthcue
.ent gl_d_depthcue
gl_d_depthcue:
    # Line 3710
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-30916 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3712
    lw	$v0,0($v1)
    # Line 3713
    li	$a1,188
    # Line 3715
    la	$at,comm_endbuffer
    # Line 3714
    sw	$a0,4($v0)
    # Line 3713
    sw	$a1,0($v0)
    # Line 3715
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aab58
    sw	$v0,0($v1)
.L0f0aab4c:
    ld	$gp,0($sp)
    # Line 3717
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aab58:
    # Line 3716
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aab4c
    ld	$ra,8($sp)
.end gl_d_depthcue

# Function: gl_d_draw2s
# Declared: Line 3719 (Source lines: 3727-3735)
# Address: 0x0f0aab70 - 0x0f0aabe8 (Size: 120 bytes, Frame: 32)
.globl gl_d_draw2s
.ent gl_d_draw2s
gl_d_draw2s:
    # Line 3727
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-31016 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 3729
    lw	$v0,0($v1)
    # Line 3730
    li	$t9,189
    # Line 3733
    la	$at,comm_endbuffer
    # Line 3732
    sh	$a0,6($v0)
    # Line 3731
    sh	$a2,4($v0)
    # Line 3730
    sw	$t9,0($v0)
    # Line 3733
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aabd0
    sw	$v0,0($v1)
.L0f0aabc4:
    ld	$gp,0($sp)
    # Line 3735
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aabd0:
    # Line 3734
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aabc4
    ld	$ra,8($sp)
.end gl_d_draw2s

# Function: gl_d_draws
# Declared: Line 3737 (Source lines: 3746-3755)
# Address: 0x0f0aabe8 - 0x0f0aac6c (Size: 132 bytes, Frame: 48)
.globl gl_d_draws
.ent gl_d_draws
gl_d_draws:
    # Line 3746
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-31136 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 3748
    lw	$v0,0($v1)
    # Line 3749
    li	$t9,190
    # Line 3753
    la	$at,comm_endbuffer
    # Line 3752
    sh	$a0,8($v0)
    # Line 3751
    sh	$a1,6($v0)
    # Line 3750
    sh	$a3,4($v0)
    # Line 3749
    sw	$t9,0($v0)
    # Line 3753
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aac54
    sw	$v0,0($v1)
.L0f0aac48:
    ld	$gp,0($sp)
    # Line 3755
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aac54:
    # Line 3754
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aac48
    ld	$ra,8($sp)
.end gl_d_draws

# Function: gl_dgl_endfeedback
# Declared: Line 3757 (Source lines: 3764-3775)
# Address: 0x0f0aac6c - 0x0f0aacfc (Size: 144 bytes, Frame: 48)
.globl gl_dgl_endfeedback
.ent gl_dgl_endfeedback
gl_dgl_endfeedback:
    # Line 3764
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a0
    # Line 3771
    li	$a0,1
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3764
    lui	$a4,0xfff9
    addiu	$a4,$a4,-31268
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    # Line 3767
    li	$a3,191
    # Line 3768
    li	$a2,-2
    # Line 3766
    lw	$a1,0($v0)
    # Line 3769
    lui	$v1,0x8000
    # Line 3771
    la	$t9,gl_comm_read_data
    # Line 3769
    sw	$v1,8($a1)
    # Line 3768
    sw	$a2,4($a1)
    # Line 3767
    sw	$a3,0($a1)
    # Line 3770
    addiu	$at,$a1,12
    # Line 3771
    jalr	$t9
    # Line 3770
    sw	$at,0($v0)
    # Line 3773
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_short_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 3775
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_dgl_endfeedback

# Function: gl_dgl_feedback
# Declared: Line 3778 (Source lines: 3786-3798)
# Address: 0x0f0aacfc - 0x0f0aadcc (Size: 208 bytes, Frame: 48)
.globl gl_dgl_feedback
.ent gl_dgl_feedback
gl_dgl_feedback:
    # Line 3786
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-31412 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a2,comm_curbufpos
    la	$a3,comm_endbuffer
    # Line 3789
    lw	$a4,0($a2)
    lw	$at,0($a3)
    sd	$s3,0($sp)
    addiu	$v0,$a4,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aad90
    # Line 3786
    move	$s3,$a1
.L0f0aad34:
    # Line 3794
    sw	$s3,12($a4)
    # Line 3796
    la	$at,comm_buffer
    la	$a0,comm_stdsize
    # Line 3792
    lui	$v1,0x8000
    sw	$v1,4($a4)
    # Line 3791
    li	$v0,192
    sw	$v0,0($a4)
    # Line 3793
    addu	$v0,$s3,$s3
    sw	$v0,8($a4)
    # Line 3796
    lw	$a0,0($a0)
    lw	$s3,0($at)
    # Line 3795
    addiu	$at,$a4,16
    sw	$at,0($a2)
    # Line 3796
    addu	$a0,$a0,$s3
    addiu	$s3,$a0,-24
    sw	$s3,0($a3)
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$at
    bnez	$a0,.L0f0aadb4
    ld	$s3,0($sp)
.L0f0aad84:
    ld	$gp,8($sp)
    # Line 3798
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aad90:
    # Line 3790
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a3,comm_endbuffer
    la	$a2,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0aad34
    lw	$a4,0($a2)
.L0f0aadb4:
    # Line 3797
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    ld	$s3,0($sp)
    b	.L0f0aad84
    ld	$ra,16($sp)
.end gl_dgl_feedback

# Function: gl_d_getcpos
# Declared: Line 3800 (Source lines: 3808-3818)
# Address: 0x0f0aadcc - 0x0f0aae48 (Size: 124 bytes, Frame: 48)
.globl gl_d_getcpos
.ent gl_d_getcpos
gl_d_getcpos:
    # Line 3808
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 3815
    li	$a0,1
    sd	$gp,16($sp)
    # Line 3808
    lui	$a3,0xfff9
    addiu	$a3,$a3,-31620
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    # Line 3810
    lw	$a2,0($v0)
    # Line 3811
    li	$v1,193
    # Line 3815
    la	$t9,gl_comm_read_data
    # Line 3811
    sw	$v1,0($a2)
    # Line 3814
    addiu	$at,$a2,4
    # Line 3815
    jalr	$t9
    # Line 3814
    sw	$at,0($v0)
    # Line 3816
    la	$ra,comm_buffer
    lw	$at,0($ra)
    lh	$at,4($at)
    sh	$at,0($s8)
    # Line 3817
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lh	$s8,8($s8)
    sh	$s8,0($ra)
    # Line 3818
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_getcpos

# Function: gl_d_getdcm
# Declared: Line 3820 (Source lines: 3826-3833)
# Address: 0x0f0aae48 - 0x0f0aaea0 (Size: 88 bytes, Frame: 16)
.globl gl_d_getdcm
.ent gl_d_getdcm
gl_d_getdcm:
    # Line 3826
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-31744
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 3831
    li	$a0,1
    sd	$ra,0($sp)
    # Line 3828
    lw	$a1,0($v0)
    # Line 3829
    li	$v1,194
    # Line 3831
    la	$t9,gl_comm_read_data
    # Line 3829
    sw	$v1,0($a1)
    # Line 3830
    addiu	$at,$a1,4
    # Line 3831
    jalr	$t9
    # Line 3830
    sw	$at,0($v0)
    # Line 3832
    la	$v0,comm_buffer
    # Line 3833
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getdcm

# Function: gl_d_getgpos
# Declared: Line 3836 (Source lines: 3846-3860)
# Address: 0x0f0aaea0 - 0x0f0aaf44 (Size: 164 bytes, Frame: 208)
.globl gl_d_getgpos
.ent gl_d_getgpos
gl_d_getgpos:
    # Line 3846
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 3855
    li	$a0,1
    sd	$a3,24($sp)
    sd	$a1,40($sp)
    sd	$gp,16($sp)
    # Line 3846
    lui	$a4,0xfff9
    addiu	$a4,$a4,-31832
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,32($sp)
    # Line 3848
    lw	$a2,0($v0)
    # Line 3849
    li	$v1,195
    # Line 3855
    la	$t9,gl_comm_read_data
    # Line 3849
    sw	$v1,0($a2)
    # Line 3854
    addiu	$at,$a2,4
    # Line 3855
    jalr	$t9
    # Line 3854
    sw	$at,0($v0)
    # Line 3856
    la	$ra,comm_buffer
    lw	$a4,0($ra)
    lwc1	$f3,4($a4)
    swc1	$f3,0($s8)
    # Line 3857
    lw	$a0,0($ra)
    ld	$v1,40($sp)
    lwc1	$f2,8($a0)
    swc1	$f2,0($v1)
    # Line 3858
    lw	$v0,0($ra)
    ld	$at,32($sp)
    lwc1	$f1,12($v0)
    swc1	$f1,0($at)
    # Line 3859
    lw	$ra,0($ra)
    ld	$s8,24($sp)
    lwc1	$f0,16($ra)
    ld	$gp,16($sp)
    # Line 3860
    ld	$ra,0($sp)
    # Line 3859
    swc1	$f0,0($s8)
    # Line 3860
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_getgpos

# Function: gl_d_getlsrepeat
# Declared: Line 3862 (Source lines: 3868-3875)
# Address: 0x0f0aaf44 - 0x0f0aaf9c (Size: 88 bytes, Frame: 16)
.globl gl_d_getlsrepeat
.ent gl_d_getlsrepeat
gl_d_getlsrepeat:
    # Line 3868
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-31996
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 3873
    li	$a0,1
    sd	$ra,0($sp)
    # Line 3870
    lw	$a1,0($v0)
    # Line 3871
    li	$v1,196
    # Line 3873
    la	$t9,gl_comm_read_data
    # Line 3871
    sw	$v1,0($a1)
    # Line 3872
    addiu	$at,$a1,4
    # Line 3873
    jalr	$t9
    # Line 3872
    sw	$at,0($v0)
    # Line 3874
    la	$v0,comm_buffer
    # Line 3875
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getlsrepeat

# Function: gl_d_getmonitor
# Declared: Line 3878 (Source lines: 3884-3891)
# Address: 0x0f0aaf9c - 0x0f0aaff4 (Size: 88 bytes, Frame: 16)
.globl gl_d_getmonitor
.ent gl_d_getmonitor
gl_d_getmonitor:
    # Line 3884
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-32084
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 3889
    li	$a0,1
    sd	$ra,0($sp)
    # Line 3886
    lw	$a1,0($v0)
    # Line 3887
    li	$v1,197
    # Line 3889
    la	$t9,gl_comm_read_data
    # Line 3887
    sw	$v1,0($a1)
    # Line 3888
    addiu	$at,$a1,4
    # Line 3889
    jalr	$t9
    # Line 3888
    sw	$at,0($v0)
    # Line 3890
    la	$v0,comm_buffer
    # Line 3891
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getmonitor

# Function: gl_d_getopenobj
# Declared: Line 3894 (Source lines: 3900-3907)
# Address: 0x0f0aaff4 - 0x0f0ab04c (Size: 88 bytes, Frame: 16)
.globl gl_d_getopenobj
.ent gl_d_getopenobj
gl_d_getopenobj:
    # Line 3900
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-32172
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 3905
    li	$a0,1
    sd	$ra,0($sp)
    # Line 3902
    lw	$a1,0($v0)
    # Line 3903
    li	$v1,198
    # Line 3905
    la	$t9,gl_comm_read_data
    # Line 3903
    sw	$v1,0($a1)
    # Line 3904
    addiu	$at,$a1,4
    # Line 3905
    jalr	$t9
    # Line 3904
    sw	$at,0($v0)
    # Line 3906
    la	$v0,comm_buffer
    # Line 3907
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getopenobj

# Function: gl_d_getzbuffer
# Declared: Line 3910 (Source lines: 3916-3923)
# Address: 0x0f0ab04c - 0x0f0ab0a4 (Size: 88 bytes, Frame: 16)
.globl gl_d_getzbuffer
.ent gl_d_getzbuffer
gl_d_getzbuffer:
    # Line 3916
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,-32260
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 3921
    li	$a0,1
    sd	$ra,0($sp)
    # Line 3918
    lw	$a1,0($v0)
    # Line 3919
    li	$v1,199
    # Line 3921
    la	$t9,gl_comm_read_data
    # Line 3919
    sw	$v1,0($a1)
    # Line 3920
    addiu	$at,$a1,4
    # Line 3921
    jalr	$t9
    # Line 3920
    sw	$at,0($v0)
    # Line 3922
    la	$v0,comm_buffer
    # Line 3923
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getzbuffer

# Function: gl_d_gewrite
# Declared: Line 3926 (Source lines: 3934-3950)
# Address: 0x0f0ab0a4 - 0x0f0ab1c4 (Size: 288 bytes, Frame: 48)
.globl gl_d_gewrite
.ent gl_d_gewrite
gl_d_gewrite:
    # Line 3934
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff9 (gp disp hi)
    # addiu	v1,v1,-32348 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s1,0($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab188
    move	$s1,$a0
.L0f0ab0e4:
    # Line 3938
    move	$v0,$a7
    # Line 3941
    li	$a3,-4
    addu	$a2,$s0,$s0
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    # Line 3939
    li	$a3,200
    sw	$a3,0($a7)
    # Line 3941
    bnez	$s1,.L0f0ab158
    sw	$a2,4($a7)
    ld	$s1,0($sp)
    # Line 3943
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0ab114:
    # Line 3946
    sw	$s0,0($v0)
    # Line 3948
    la	$a3,comm_buffer
    la	$v1,comm_stdsize
    ld	$s0,8($sp)
    lw	$a3,0($a3)
    lw	$v1,0($v1)
    # Line 3947
    addiu	$a4,$v0,4
    sw	$a4,0($a5)
    # Line 3948
    addu	$v1,$v1,$a3
    addiu	$a3,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$a4
    bnez	$v1,.L0f0ab1ac
    sw	$a3,0($a6)
.L0f0ab14c:
    ld	$gp,16($sp)
    # Line 3950
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ab158:
    # Line 3945
    li	$a4,88
    la	$a3,gl_mem_hton_short_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0ab114
    ld	$s1,0($sp)
.L0f0ab188:
    # Line 3938
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0ab0e4
    lw	$a7,0($a5)
.L0f0ab1ac:
    # Line 3949
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s0,8($sp)
    b	.L0f0ab14c
    ld	$ra,24($sp)
.end gl_d_gewrite

# Function: gl_d_initnames
# Declared: Line 3952 (Source lines: 3958-3964)
# Address: 0x0f0ab1c4 - 0x0f0ab224 (Size: 96 bytes, Frame: 16)
.globl gl_d_initnames
.ent gl_d_initnames
gl_d_initnames:
    # Line 3958
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff9
    addiu	$a1,$a1,-32636
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 3960
    lw	$v0,0($v1)
    # Line 3961
    li	$a0,201
    # Line 3962
    la	$at,comm_endbuffer
    # Line 3961
    sw	$a0,0($v0)
    # Line 3962
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab20c
    sw	$v0,0($v1)
.L0f0ab200:
    ld	$gp,0($sp)
    # Line 3964
    jr	$ra
    addiu	$sp,$sp,16
.L0f0ab20c:
    # Line 3963
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab200
    ld	$ra,8($sp)
.end gl_d_initnames

# Function: gl_d_loadname
# Declared: Line 3966 (Source lines: 3973-3980)
# Address: 0x0f0ab224 - 0x0f0ab290 (Size: 108 bytes, Frame: 32)
.globl gl_d_loadname
.ent gl_d_loadname
gl_d_loadname:
    # Line 3973
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,-32732 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3976
    li	$a1,202
    # Line 3973
    dsll32	$a0,$a0,0x10
    # Line 3975
    lw	$v0,0($v1)
    # Line 3973
    dsra32	$a0,$a0,0x10
    # Line 3978
    la	$at,comm_endbuffer
    # Line 3977
    sh	$a0,4($v0)
    # Line 3976
    sw	$a1,0($v0)
    # Line 3978
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab278
    sw	$v0,0($v1)
.L0f0ab26c:
    ld	$gp,0($sp)
    # Line 3980
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ab278:
    # Line 3979
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab26c
    ld	$ra,8($sp)
.end gl_d_loadname

# Function: gl_d_lsrepeat
# Declared: Line 3982 (Source lines: 3989-3996)
# Address: 0x0f0ab290 - 0x0f0ab2f4 (Size: 100 bytes, Frame: 32)
.globl gl_d_lsrepeat
.ent gl_d_lsrepeat
gl_d_lsrepeat:
    # Line 3989
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,32696 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 3991
    lw	$v0,0($v1)
    # Line 3992
    li	$a1,203
    # Line 3994
    la	$at,comm_endbuffer
    # Line 3993
    sw	$a0,4($v0)
    # Line 3992
    sw	$a1,0($v0)
    # Line 3994
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab2dc
    sw	$v0,0($v1)
.L0f0ab2d0:
    ld	$gp,0($sp)
    # Line 3996
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ab2dc:
    # Line 3995
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab2d0
    ld	$ra,8($sp)
.end gl_d_lsrepeat

# Function: gl_d_move2s
# Declared: Line 3998 (Source lines: 4006-4014)
# Address: 0x0f0ab2f4 - 0x0f0ab36c (Size: 120 bytes, Frame: 32)
.globl gl_d_move2s
.ent gl_d_move2s
gl_d_move2s:
    # Line 4006
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,32596 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 4008
    lw	$v0,0($v1)
    # Line 4009
    li	$t9,204
    # Line 4012
    la	$at,comm_endbuffer
    # Line 4011
    sh	$a0,6($v0)
    # Line 4010
    sh	$a2,4($v0)
    # Line 4009
    sw	$t9,0($v0)
    # Line 4012
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab354
    sw	$v0,0($v1)
.L0f0ab348:
    ld	$gp,0($sp)
    # Line 4014
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ab354:
    # Line 4013
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab348
    ld	$ra,8($sp)
.end gl_d_move2s

# Function: gl_d_moves
# Declared: Line 4016 (Source lines: 4025-4034)
# Address: 0x0f0ab36c - 0x0f0ab3f0 (Size: 132 bytes, Frame: 48)
.globl gl_d_moves
.ent gl_d_moves
gl_d_moves:
    # Line 4025
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,32476 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 4027
    lw	$v0,0($v1)
    # Line 4028
    li	$t9,205
    # Line 4032
    la	$at,comm_endbuffer
    # Line 4031
    sh	$a0,8($v0)
    # Line 4030
    sh	$a1,6($v0)
    # Line 4029
    sh	$a3,4($v0)
    # Line 4028
    sw	$t9,0($v0)
    # Line 4032
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab3d8
    sw	$v0,0($v1)
.L0f0ab3cc:
    ld	$gp,0($sp)
    # Line 4034
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ab3d8:
    # Line 4033
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab3cc
    ld	$ra,8($sp)
.end gl_d_moves

# Function: gl_d_newtag
# Declared: Line 4036 (Source lines: 4045-4054)
# Address: 0x0f0ab3f0 - 0x0f0ab45c (Size: 108 bytes, Frame: 48)
.globl gl_d_newtag
.ent gl_d_newtag
gl_d_newtag:
    # Line 4045
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,32344 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4047
    lw	$v0,0($v1)
    # Line 4048
    li	$a3,206
    # Line 4052
    la	$at,comm_endbuffer
    # Line 4051
    sw	$a2,12($v0)
    # Line 4050
    sw	$a1,8($v0)
    # Line 4049
    sw	$a0,4($v0)
    # Line 4048
    sw	$a3,0($v0)
    # Line 4052
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab444
    sw	$v0,0($v1)
.L0f0ab438:
    ld	$gp,0($sp)
    # Line 4054
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ab444:
    # Line 4053
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab438
    ld	$ra,8($sp)
.end gl_d_newtag

# Function: gl_d_passthrough
# Declared: Line 4056 (Source lines: 4063-4070)
# Address: 0x0f0ab45c - 0x0f0ab4c8 (Size: 108 bytes, Frame: 32)
.globl gl_d_passthrough
.ent gl_d_passthrough
gl_d_passthrough:
    # Line 4063
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,32236 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4066
    li	$a1,207
    # Line 4063
    dsll32	$a0,$a0,0x10
    # Line 4065
    lw	$v0,0($v1)
    # Line 4063
    dsra32	$a0,$a0,0x10
    # Line 4068
    la	$at,comm_endbuffer
    # Line 4067
    sh	$a0,4($v0)
    # Line 4066
    sw	$a1,0($v0)
    # Line 4068
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab4b0
    sw	$v0,0($v1)
.L0f0ab4a4:
    ld	$gp,0($sp)
    # Line 4070
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ab4b0:
    # Line 4069
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab4a4
    ld	$ra,8($sp)
.end gl_d_passthrough

# Function: gl_d_patchbasis
# Declared: Line 4072 (Source lines: 4080-4088)
# Address: 0x0f0ab4c8 - 0x0f0ab530 (Size: 104 bytes, Frame: 32)
.globl gl_d_patchbasis
.ent gl_d_patchbasis
gl_d_patchbasis:
    # Line 4080
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,32128 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4082
    lw	$v0,0($v1)
    # Line 4083
    li	$a2,208
    # Line 4086
    la	$at,comm_endbuffer
    # Line 4085
    sw	$a1,8($v0)
    # Line 4084
    sw	$a0,4($v0)
    # Line 4083
    sw	$a2,0($v0)
    # Line 4086
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab518
    sw	$v0,0($v1)
.L0f0ab50c:
    ld	$gp,0($sp)
    # Line 4088
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ab518:
    # Line 4087
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab50c
    ld	$ra,8($sp)
.end gl_d_patchbasis

# Function: gl_d_patchprecision
# Declared: Line 4090 (Source lines: 4098-4106)
# Address: 0x0f0ab530 - 0x0f0ab598 (Size: 104 bytes, Frame: 32)
.globl gl_d_patchprecision
.ent gl_d_patchprecision
gl_d_patchprecision:
    # Line 4098
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,32024 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4100
    lw	$v0,0($v1)
    # Line 4101
    li	$a2,209
    # Line 4104
    la	$at,comm_endbuffer
    # Line 4103
    sw	$a1,8($v0)
    # Line 4102
    sw	$a0,4($v0)
    # Line 4101
    sw	$a2,0($v0)
    # Line 4104
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab580
    sw	$v0,0($v1)
.L0f0ab574:
    ld	$gp,0($sp)
    # Line 4106
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ab580:
    # Line 4105
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab574
    ld	$ra,8($sp)
.end gl_d_patchprecision

# Function: gl_d_patch
# Declared: Line 4108 (Source lines: 4117-4144)
# Address: 0x0f0ab598 - 0x0f0ab72c (Size: 404 bytes, Frame: 208)
.globl gl_d_patch
.ent gl_d_patch
gl_d_patch:
    # Line 4117
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a2
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,31920 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$a3,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s0,$a1
    lw	$a6,0($a3)
    lw	$at,0($at)
    sd	$s2,8($sp)
    addiu	$v0,$a6,244
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab6f4
    move	$s2,$a0
.L0f0ab5e0:
    # Line 4121
    move	$v0,$a6
    # Line 4124
    li	$a0,64
    # Line 4122
    li	$v1,210
    sw	$v1,0($a6)
    # Line 4124
    bnez	$s2,.L0f0ab65c
    sw	$a0,4($a6)
    # Line 4126
    addiu	$v0,$v0,72
    ld	$s2,8($sp)
.L0f0ab600:
    # Line 4130
    bnez	$s0,.L0f0ab690
    sw	$a0,0($v0)
    # Line 4132
    addiu	$v0,$v0,68
    ld	$s0,0($sp)
.L0f0ab610:
    # Line 4136
    bnez	$s1,.L0f0ab6c4
    sw	$a0,0($v0)
    # Line 4138
    addiu	$v0,$v0,68
    ld	$s1,16($sp)
.L0f0ab620:
    # Line 4142
    la	$a5,comm_buffer
    la	$a4,comm_stdsize
    lw	$a5,0($a5)
    lw	$a4,0($a4)
    # Line 4141
    sw	$v0,0($a3)
    la	$at,comm_endbuffer
    # Line 4142
    addu	$a4,$a4,$a5
    addiu	$a5,$a4,-24
    addiu	$a4,$a4,-24
    sltu	$a4,$a4,$v0
    bnez	$a4,.L0f0ab714
    sw	$a5,0($at)
.L0f0ab650:
    ld	$gp,24($sp)
    # Line 4144
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ab65c:
    # Line 4128
    li	$a4,244
    li	$a2,64
    move	$a1,$s2
    la	$t9,gl_mem_pack_array
    # Line 4126
    la	$a3,gl_mem_hton_float_array
    sd	$ra,32($sp)
    # Line 4128
    jalr	$t9
    addiu	$a0,$v0,8
    li	$a0,64
    la	$a3,comm_curbufpos
    ld	$s2,8($sp)
    b	.L0f0ab600
    ld	$ra,32($sp)
.L0f0ab690:
    la	$a3,gl_mem_hton_float_array
    # Line 4134
    li	$a4,244
    li	$a2,64
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,4
    li	$a0,64
    la	$a3,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ab610
    ld	$s0,0($sp)
.L0f0ab6c4:
    la	$a3,gl_mem_hton_float_array
    # Line 4140
    li	$a4,244
    li	$a2,64
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,4
    la	$a3,comm_curbufpos
    ld	$s1,16($sp)
    b	.L0f0ab620
    ld	$ra,32($sp)
.L0f0ab6f4:
    # Line 4121
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a3,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ab5e0
    lw	$a6,0($a3)
.L0f0ab714:
    # Line 4143
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0ab650
    ld	$ra,32($sp)
.end gl_d_patch

# Function: gl_d_pclos
# Declared: Line 4146 (Source lines: 4152-4158)
# Address: 0x0f0ab72c - 0x0f0ab78c (Size: 96 bytes, Frame: 16)
.globl gl_d_pclos
.ent gl_d_pclos
gl_d_pclos:
    # Line 4152
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,31516
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4154
    lw	$v0,0($v1)
    # Line 4155
    li	$a0,211
    # Line 4156
    la	$at,comm_endbuffer
    # Line 4155
    sw	$a0,0($v0)
    # Line 4156
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab774
    sw	$v0,0($v1)
.L0f0ab768:
    ld	$gp,0($sp)
    # Line 4158
    jr	$ra
    addiu	$sp,$sp,16
.L0f0ab774:
    # Line 4157
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab768
    ld	$ra,8($sp)
.end gl_d_pclos

# Function: gl_d_pdr
# Declared: Line 4160 (Source lines: 4169-4178)
# Address: 0x0f0ab78c - 0x0f0ab7f8 (Size: 108 bytes, Frame: 48)
.globl gl_d_pdr
.ent gl_d_pdr
gl_d_pdr:
    # Line 4169
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,31420
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4171
    lw	$v0,0($v1)
    # Line 4172
    li	$a0,212
    # Line 4176
    la	$at,comm_endbuffer
    # Line 4175
    swc1	$f14,12($v0)
    # Line 4174
    swc1	$f13,8($v0)
    # Line 4173
    swc1	$f12,4($v0)
    # Line 4172
    sw	$a0,0($v0)
    # Line 4176
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab7e0
    sw	$v0,0($v1)
.L0f0ab7d4:
    ld	$gp,0($sp)
    # Line 4178
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ab7e0:
    # Line 4177
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab7d4
    ld	$ra,8($sp)
.end gl_d_pdr

# Function: gl_d_pdr2
# Declared: Line 4180 (Source lines: 4188-4196)
# Address: 0x0f0ab7f8 - 0x0f0ab860 (Size: 104 bytes, Frame: 32)
.globl gl_d_pdr2
.ent gl_d_pdr2
gl_d_pdr2:
    # Line 4188
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,31312
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4190
    lw	$v0,0($v1)
    # Line 4191
    li	$a0,213
    # Line 4194
    la	$at,comm_endbuffer
    # Line 4193
    swc1	$f13,8($v0)
    # Line 4192
    swc1	$f12,4($v0)
    # Line 4191
    sw	$a0,0($v0)
    # Line 4194
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab848
    sw	$v0,0($v1)
.L0f0ab83c:
    ld	$gp,0($sp)
    # Line 4196
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ab848:
    # Line 4195
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab83c
    ld	$ra,8($sp)
.end gl_d_pdr2

# Function: gl_d_pdri
# Declared: Line 4198 (Source lines: 4207-4216)
# Address: 0x0f0ab860 - 0x0f0ab8cc (Size: 108 bytes, Frame: 48)
.globl gl_d_pdri
.ent gl_d_pdri
gl_d_pdri:
    # Line 4207
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,31208 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4209
    lw	$v0,0($v1)
    # Line 4210
    li	$a3,214
    # Line 4214
    la	$at,comm_endbuffer
    # Line 4213
    sw	$a2,12($v0)
    # Line 4212
    sw	$a1,8($v0)
    # Line 4211
    sw	$a0,4($v0)
    # Line 4210
    sw	$a3,0($v0)
    # Line 4214
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab8b4
    sw	$v0,0($v1)
.L0f0ab8a8:
    ld	$gp,0($sp)
    # Line 4216
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ab8b4:
    # Line 4215
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab8a8
    ld	$ra,8($sp)
.end gl_d_pdri

# Function: gl_d_pdr2i
# Declared: Line 4218 (Source lines: 4226-4234)
# Address: 0x0f0ab8cc - 0x0f0ab934 (Size: 104 bytes, Frame: 32)
.globl gl_d_pdr2i
.ent gl_d_pdr2i
gl_d_pdr2i:
    # Line 4226
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,31100 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4228
    lw	$v0,0($v1)
    # Line 4229
    li	$a2,215
    # Line 4232
    la	$at,comm_endbuffer
    # Line 4231
    sw	$a1,8($v0)
    # Line 4230
    sw	$a0,4($v0)
    # Line 4229
    sw	$a2,0($v0)
    # Line 4232
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab91c
    sw	$v0,0($v1)
.L0f0ab910:
    ld	$gp,0($sp)
    # Line 4234
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ab91c:
    # Line 4233
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab910
    ld	$ra,8($sp)
.end gl_d_pdr2i

# Function: gl_d_pdrs
# Declared: Line 4236 (Source lines: 4245-4254)
# Address: 0x0f0ab934 - 0x0f0ab9b8 (Size: 132 bytes, Frame: 48)
.globl gl_d_pdrs
.ent gl_d_pdrs
gl_d_pdrs:
    # Line 4245
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,30996 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 4247
    lw	$v0,0($v1)
    # Line 4248
    li	$t9,216
    # Line 4252
    la	$at,comm_endbuffer
    # Line 4251
    sh	$a0,8($v0)
    # Line 4250
    sh	$a1,6($v0)
    # Line 4249
    sh	$a3,4($v0)
    # Line 4248
    sw	$t9,0($v0)
    # Line 4252
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ab9a0
    sw	$v0,0($v1)
.L0f0ab994:
    ld	$gp,0($sp)
    # Line 4254
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ab9a0:
    # Line 4253
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ab994
    ld	$ra,8($sp)
.end gl_d_pdrs

# Function: gl_d_pdr2s
# Declared: Line 4256 (Source lines: 4264-4272)
# Address: 0x0f0ab9b8 - 0x0f0aba30 (Size: 120 bytes, Frame: 32)
.globl gl_d_pdr2s
.ent gl_d_pdr2s
gl_d_pdr2s:
    # Line 4264
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,30864 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 4266
    lw	$v0,0($v1)
    # Line 4267
    li	$t9,217
    # Line 4270
    la	$at,comm_endbuffer
    # Line 4269
    sh	$a0,6($v0)
    # Line 4268
    sh	$a2,4($v0)
    # Line 4267
    sw	$t9,0($v0)
    # Line 4270
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aba18
    sw	$v0,0($v1)
.L0f0aba0c:
    ld	$gp,0($sp)
    # Line 4272
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aba18:
    # Line 4271
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aba0c
    ld	$ra,8($sp)
.end gl_d_pdr2s

# Function: gl_d_polf2s
# Declared: Line 4274 (Source lines: 4282-4298)
# Address: 0x0f0aba30 - 0x0f0abb50 (Size: 288 bytes, Frame: 48)
.globl gl_d_polf2s
.ent gl_d_polf2s
gl_d_polf2s:
    # Line 4282
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,30744 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0abb14
    move	$s2,$a0
.L0f0aba70:
    # Line 4286
    move	$v0,$a7
    # Line 4288
    sw	$s2,4($a7)
    # Line 4290
    sll	$a2,$s2,0x2
    # Line 4287
    li	$a3,218
    sw	$a3,0($a7)
    # Line 4290
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0abae0
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 4292
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0abaa8:
    # Line 4296
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 4295
    sw	$v0,0($a5)
    # Line 4296
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0abb38
    sw	$v1,0($a6)
.L0f0abad4:
    ld	$gp,16($sp)
    # Line 4298
    jr	$ra
    addiu	$sp,$sp,48
.L0f0abae0:
    # Line 4294
    li	$a4,88
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0abaa8
    ld	$s0,0($sp)
.L0f0abb14:
    # Line 4286
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0aba70
    lw	$a7,0($a5)
.L0f0abb38:
    # Line 4297
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0abad4
    ld	$ra,24($sp)
.end gl_d_polf2s

# Function: gl_d_polfs
# Declared: Line 4300 (Source lines: 4308-4324)
# Address: 0x0f0abb50 - 0x0f0abc78 (Size: 296 bytes, Frame: 48)
.globl gl_d_polfs
.ent gl_d_polfs
gl_d_polfs:
    # Line 4308
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,30456 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0abc3c
    move	$s2,$a0
.L0f0abb90:
    # Line 4312
    move	$v0,$a7
    # Line 4314
    sw	$s2,4($a7)
    # Line 4313
    li	$a3,219
    sw	$a3,0($a7)
    # Line 4316
    li	$a3,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0abc08
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 4318
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0abbd0:
    # Line 4322
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 4321
    sw	$v0,0($a5)
    # Line 4322
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0abc60
    sw	$v1,0($a6)
.L0f0abbfc:
    ld	$gp,16($sp)
    # Line 4324
    jr	$ra
    addiu	$sp,$sp,48
.L0f0abc08:
    # Line 4320
    li	$a4,88
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0abbd0
    ld	$s0,0($sp)
.L0f0abc3c:
    # Line 4312
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0abb90
    lw	$a7,0($a5)
.L0f0abc60:
    # Line 4323
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0abbfc
    ld	$ra,24($sp)
.end gl_d_polfs

# Function: gl_d_poly2s
# Declared: Line 4326 (Source lines: 4334-4350)
# Address: 0x0f0abc78 - 0x0f0abd98 (Size: 288 bytes, Frame: 48)
.globl gl_d_poly2s
.ent gl_d_poly2s
gl_d_poly2s:
    # Line 4334
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,30160 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0abd5c
    move	$s2,$a0
.L0f0abcb8:
    # Line 4338
    move	$v0,$a7
    # Line 4340
    sw	$s2,4($a7)
    # Line 4342
    sll	$a2,$s2,0x2
    # Line 4339
    li	$a3,220
    sw	$a3,0($a7)
    # Line 4342
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0abd28
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 4344
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0abcf0:
    # Line 4348
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 4347
    sw	$v0,0($a5)
    # Line 4348
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0abd80
    sw	$v1,0($a6)
.L0f0abd1c:
    ld	$gp,16($sp)
    # Line 4350
    jr	$ra
    addiu	$sp,$sp,48
.L0f0abd28:
    # Line 4346
    li	$a4,88
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0abcf0
    ld	$s0,0($sp)
.L0f0abd5c:
    # Line 4338
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0abcb8
    lw	$a7,0($a5)
.L0f0abd80:
    # Line 4349
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0abd1c
    ld	$ra,24($sp)
.end gl_d_poly2s

# Function: gl_d_polys
# Declared: Line 4352 (Source lines: 4360-4376)
# Address: 0x0f0abd98 - 0x0f0abec0 (Size: 296 bytes, Frame: 48)
.globl gl_d_polys
.ent gl_d_polys
gl_d_polys:
    # Line 4360
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,29872 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0abe84
    move	$s2,$a0
.L0f0abdd8:
    # Line 4364
    move	$v0,$a7
    # Line 4366
    sw	$s2,4($a7)
    # Line 4365
    li	$a3,221
    sw	$a3,0($a7)
    # Line 4368
    li	$a3,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0abe50
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 4370
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0abe18:
    # Line 4374
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 4373
    sw	$v0,0($a5)
    # Line 4374
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0abea8
    sw	$v1,0($a6)
.L0f0abe44:
    ld	$gp,16($sp)
    # Line 4376
    jr	$ra
    addiu	$sp,$sp,48
.L0f0abe50:
    # Line 4372
    li	$a4,88
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0abe18
    ld	$s0,0($sp)
.L0f0abe84:
    # Line 4364
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0abdd8
    lw	$a7,0($a5)
.L0f0abea8:
    # Line 4375
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0abe44
    ld	$ra,24($sp)
.end gl_d_polys

# Function: gl_d_pmv
# Declared: Line 4378 (Source lines: 4387-4396)
# Address: 0x0f0abec0 - 0x0f0abf2c (Size: 108 bytes, Frame: 48)
.globl gl_d_pmv
.ent gl_d_pmv
gl_d_pmv:
    # Line 4387
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,29576
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4389
    lw	$v0,0($v1)
    # Line 4390
    li	$a0,222
    # Line 4394
    la	$at,comm_endbuffer
    # Line 4393
    swc1	$f14,12($v0)
    # Line 4392
    swc1	$f13,8($v0)
    # Line 4391
    swc1	$f12,4($v0)
    # Line 4390
    sw	$a0,0($v0)
    # Line 4394
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0abf14
    sw	$v0,0($v1)
.L0f0abf08:
    ld	$gp,0($sp)
    # Line 4396
    jr	$ra
    addiu	$sp,$sp,48
.L0f0abf14:
    # Line 4395
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0abf08
    ld	$ra,8($sp)
.end gl_d_pmv

# Function: gl_d_pmv2
# Declared: Line 4398 (Source lines: 4406-4414)
# Address: 0x0f0abf2c - 0x0f0abf94 (Size: 104 bytes, Frame: 32)
.globl gl_d_pmv2
.ent gl_d_pmv2
gl_d_pmv2:
    # Line 4406
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,29468
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4408
    lw	$v0,0($v1)
    # Line 4409
    li	$a0,223
    # Line 4412
    la	$at,comm_endbuffer
    # Line 4411
    swc1	$f13,8($v0)
    # Line 4410
    swc1	$f12,4($v0)
    # Line 4409
    sw	$a0,0($v0)
    # Line 4412
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0abf7c
    sw	$v0,0($v1)
.L0f0abf70:
    ld	$gp,0($sp)
    # Line 4414
    jr	$ra
    addiu	$sp,$sp,32
.L0f0abf7c:
    # Line 4413
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0abf70
    ld	$ra,8($sp)
.end gl_d_pmv2

# Function: gl_d_pmvi
# Declared: Line 4416 (Source lines: 4425-4434)
# Address: 0x0f0abf94 - 0x0f0ac000 (Size: 108 bytes, Frame: 48)
.globl gl_d_pmvi
.ent gl_d_pmvi
gl_d_pmvi:
    # Line 4425
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,29364 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4427
    lw	$v0,0($v1)
    # Line 4428
    li	$a3,224
    # Line 4432
    la	$at,comm_endbuffer
    # Line 4431
    sw	$a2,12($v0)
    # Line 4430
    sw	$a1,8($v0)
    # Line 4429
    sw	$a0,4($v0)
    # Line 4428
    sw	$a3,0($v0)
    # Line 4432
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0abfe8
    sw	$v0,0($v1)
.L0f0abfdc:
    ld	$gp,0($sp)
    # Line 4434
    jr	$ra
    addiu	$sp,$sp,48
.L0f0abfe8:
    # Line 4433
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0abfdc
    ld	$ra,8($sp)
.end gl_d_pmvi

# Function: gl_d_pmv2i
# Declared: Line 4436 (Source lines: 4444-4452)
# Address: 0x0f0ac000 - 0x0f0ac068 (Size: 104 bytes, Frame: 32)
.globl gl_d_pmv2i
.ent gl_d_pmv2i
gl_d_pmv2i:
    # Line 4444
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,29256 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4446
    lw	$v0,0($v1)
    # Line 4447
    li	$a2,225
    # Line 4450
    la	$at,comm_endbuffer
    # Line 4449
    sw	$a1,8($v0)
    # Line 4448
    sw	$a0,4($v0)
    # Line 4447
    sw	$a2,0($v0)
    # Line 4450
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac050
    sw	$v0,0($v1)
.L0f0ac044:
    ld	$gp,0($sp)
    # Line 4452
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac050:
    # Line 4451
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac044
    ld	$ra,8($sp)
.end gl_d_pmv2i

# Function: gl_d_pmvs
# Declared: Line 4454 (Source lines: 4463-4472)
# Address: 0x0f0ac068 - 0x0f0ac0ec (Size: 132 bytes, Frame: 48)
.globl gl_d_pmvs
.ent gl_d_pmvs
gl_d_pmvs:
    # Line 4463
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,29152 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 4465
    lw	$v0,0($v1)
    # Line 4466
    li	$t9,226
    # Line 4470
    la	$at,comm_endbuffer
    # Line 4469
    sh	$a0,8($v0)
    # Line 4468
    sh	$a1,6($v0)
    # Line 4467
    sh	$a3,4($v0)
    # Line 4466
    sw	$t9,0($v0)
    # Line 4470
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac0d4
    sw	$v0,0($v1)
.L0f0ac0c8:
    ld	$gp,0($sp)
    # Line 4472
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ac0d4:
    # Line 4471
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac0c8
    ld	$ra,8($sp)
.end gl_d_pmvs

# Function: gl_d_pmv2s
# Declared: Line 4474 (Source lines: 4482-4490)
# Address: 0x0f0ac0ec - 0x0f0ac164 (Size: 120 bytes, Frame: 32)
.globl gl_d_pmv2s
.ent gl_d_pmv2s
gl_d_pmv2s:
    # Line 4482
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,29020 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 4484
    lw	$v0,0($v1)
    # Line 4485
    li	$t9,227
    # Line 4488
    la	$at,comm_endbuffer
    # Line 4487
    sh	$a0,6($v0)
    # Line 4486
    sh	$a2,4($v0)
    # Line 4485
    sw	$t9,0($v0)
    # Line 4488
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac14c
    sw	$v0,0($v1)
.L0f0ac140:
    ld	$gp,0($sp)
    # Line 4490
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac14c:
    # Line 4489
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac140
    ld	$ra,8($sp)
.end gl_d_pmv2s

# Function: gl_d_pnt2s
# Declared: Line 4492 (Source lines: 4500-4508)
# Address: 0x0f0ac164 - 0x0f0ac1dc (Size: 120 bytes, Frame: 32)
.globl gl_d_pnt2s
.ent gl_d_pnt2s
gl_d_pnt2s:
    # Line 4500
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,28900 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 4502
    lw	$v0,0($v1)
    # Line 4503
    li	$t9,228
    # Line 4506
    la	$at,comm_endbuffer
    # Line 4505
    sh	$a0,6($v0)
    # Line 4504
    sh	$a2,4($v0)
    # Line 4503
    sw	$t9,0($v0)
    # Line 4506
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac1c4
    sw	$v0,0($v1)
.L0f0ac1b8:
    ld	$gp,0($sp)
    # Line 4508
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac1c4:
    # Line 4507
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac1b8
    ld	$ra,8($sp)
.end gl_d_pnt2s

# Function: gl_d_pnts
# Declared: Line 4510 (Source lines: 4519-4528)
# Address: 0x0f0ac1dc - 0x0f0ac260 (Size: 132 bytes, Frame: 48)
.globl gl_d_pnts
.ent gl_d_pnts
gl_d_pnts:
    # Line 4519
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,28780 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 4521
    lw	$v0,0($v1)
    # Line 4522
    li	$t9,229
    # Line 4526
    la	$at,comm_endbuffer
    # Line 4525
    sh	$a0,8($v0)
    # Line 4524
    sh	$a1,6($v0)
    # Line 4523
    sh	$a3,4($v0)
    # Line 4522
    sw	$t9,0($v0)
    # Line 4526
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac248
    sw	$v0,0($v1)
.L0f0ac23c:
    ld	$gp,0($sp)
    # Line 4528
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ac248:
    # Line 4527
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac23c
    ld	$ra,8($sp)
.end gl_d_pnts

# Function: gl_d_popname
# Declared: Line 4530 (Source lines: 4536-4542)
# Address: 0x0f0ac260 - 0x0f0ac2c0 (Size: 96 bytes, Frame: 16)
.globl gl_d_popname
.ent gl_d_popname
gl_d_popname:
    # Line 4536
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,28648
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4538
    lw	$v0,0($v1)
    # Line 4539
    li	$a0,230
    # Line 4540
    la	$at,comm_endbuffer
    # Line 4539
    sw	$a0,0($v0)
    # Line 4540
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac2a8
    sw	$v0,0($v1)
.L0f0ac29c:
    ld	$gp,0($sp)
    # Line 4542
    jr	$ra
    addiu	$sp,$sp,16
.L0f0ac2a8:
    # Line 4541
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac29c
    ld	$ra,8($sp)
.end gl_d_popname

# Function: gl_d_pushname
# Declared: Line 4544 (Source lines: 4551-4558)
# Address: 0x0f0ac2c0 - 0x0f0ac32c (Size: 108 bytes, Frame: 32)
.globl gl_d_pushname
.ent gl_d_pushname
gl_d_pushname:
    # Line 4551
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,28552 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4554
    li	$a1,231
    # Line 4551
    dsll32	$a0,$a0,0x10
    # Line 4553
    lw	$v0,0($v1)
    # Line 4551
    dsra32	$a0,$a0,0x10
    # Line 4556
    la	$at,comm_endbuffer
    # Line 4555
    sh	$a0,4($v0)
    # Line 4554
    sw	$a1,0($v0)
    # Line 4556
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac314
    sw	$v0,0($v1)
.L0f0ac308:
    ld	$gp,0($sp)
    # Line 4558
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac314:
    # Line 4557
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac308
    ld	$ra,8($sp)
.end gl_d_pushname

# Function: gl_d_rdr
# Declared: Line 4560 (Source lines: 4569-4578)
# Address: 0x0f0ac32c - 0x0f0ac398 (Size: 108 bytes, Frame: 48)
.globl gl_d_rdr
.ent gl_d_rdr
gl_d_rdr:
    # Line 4569
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,28444
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4571
    lw	$v0,0($v1)
    # Line 4572
    li	$a0,232
    # Line 4576
    la	$at,comm_endbuffer
    # Line 4575
    swc1	$f14,12($v0)
    # Line 4574
    swc1	$f13,8($v0)
    # Line 4573
    swc1	$f12,4($v0)
    # Line 4572
    sw	$a0,0($v0)
    # Line 4576
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac380
    sw	$v0,0($v1)
.L0f0ac374:
    ld	$gp,0($sp)
    # Line 4578
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ac380:
    # Line 4577
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac374
    ld	$ra,8($sp)
.end gl_d_rdr

# Function: gl_d_rdr2
# Declared: Line 4580 (Source lines: 4588-4596)
# Address: 0x0f0ac398 - 0x0f0ac400 (Size: 104 bytes, Frame: 32)
.globl gl_d_rdr2
.ent gl_d_rdr2
gl_d_rdr2:
    # Line 4588
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,28336
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4590
    lw	$v0,0($v1)
    # Line 4591
    li	$a0,233
    # Line 4594
    la	$at,comm_endbuffer
    # Line 4593
    swc1	$f13,8($v0)
    # Line 4592
    swc1	$f12,4($v0)
    # Line 4591
    sw	$a0,0($v0)
    # Line 4594
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac3e8
    sw	$v0,0($v1)
.L0f0ac3dc:
    ld	$gp,0($sp)
    # Line 4596
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac3e8:
    # Line 4595
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac3dc
    ld	$ra,8($sp)
.end gl_d_rdr2

# Function: gl_d_rdri
# Declared: Line 4598 (Source lines: 4607-4616)
# Address: 0x0f0ac400 - 0x0f0ac46c (Size: 108 bytes, Frame: 48)
.globl gl_d_rdri
.ent gl_d_rdri
gl_d_rdri:
    # Line 4607
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,28232 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4609
    lw	$v0,0($v1)
    # Line 4610
    li	$a3,234
    # Line 4614
    la	$at,comm_endbuffer
    # Line 4613
    sw	$a2,12($v0)
    # Line 4612
    sw	$a1,8($v0)
    # Line 4611
    sw	$a0,4($v0)
    # Line 4610
    sw	$a3,0($v0)
    # Line 4614
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac454
    sw	$v0,0($v1)
.L0f0ac448:
    ld	$gp,0($sp)
    # Line 4616
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ac454:
    # Line 4615
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac448
    ld	$ra,8($sp)
.end gl_d_rdri

# Function: gl_d_rdr2i
# Declared: Line 4618 (Source lines: 4626-4634)
# Address: 0x0f0ac46c - 0x0f0ac4d4 (Size: 104 bytes, Frame: 32)
.globl gl_d_rdr2i
.ent gl_d_rdr2i
gl_d_rdr2i:
    # Line 4626
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,28124 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4628
    lw	$v0,0($v1)
    # Line 4629
    li	$a2,235
    # Line 4632
    la	$at,comm_endbuffer
    # Line 4631
    sw	$a1,8($v0)
    # Line 4630
    sw	$a0,4($v0)
    # Line 4629
    sw	$a2,0($v0)
    # Line 4632
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac4bc
    sw	$v0,0($v1)
.L0f0ac4b0:
    ld	$gp,0($sp)
    # Line 4634
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac4bc:
    # Line 4633
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac4b0
    ld	$ra,8($sp)
.end gl_d_rdr2i

# Function: gl_d_rdrs
# Declared: Line 4636 (Source lines: 4645-4654)
# Address: 0x0f0ac4d4 - 0x0f0ac558 (Size: 132 bytes, Frame: 48)
.globl gl_d_rdrs
.ent gl_d_rdrs
gl_d_rdrs:
    # Line 4645
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,28020 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 4647
    lw	$v0,0($v1)
    # Line 4648
    li	$t9,236
    # Line 4652
    la	$at,comm_endbuffer
    # Line 4651
    sh	$a0,8($v0)
    # Line 4650
    sh	$a1,6($v0)
    # Line 4649
    sh	$a3,4($v0)
    # Line 4648
    sw	$t9,0($v0)
    # Line 4652
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac540
    sw	$v0,0($v1)
.L0f0ac534:
    ld	$gp,0($sp)
    # Line 4654
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ac540:
    # Line 4653
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac534
    ld	$ra,8($sp)
.end gl_d_rdrs

# Function: gl_d_rdr2s
# Declared: Line 4656 (Source lines: 4664-4672)
# Address: 0x0f0ac558 - 0x0f0ac5d0 (Size: 120 bytes, Frame: 32)
.globl gl_d_rdr2s
.ent gl_d_rdr2s
gl_d_rdr2s:
    # Line 4664
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,27888 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 4666
    lw	$v0,0($v1)
    # Line 4667
    li	$t9,237
    # Line 4670
    la	$at,comm_endbuffer
    # Line 4669
    sh	$a0,6($v0)
    # Line 4668
    sh	$a2,4($v0)
    # Line 4667
    sw	$t9,0($v0)
    # Line 4670
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac5b8
    sw	$v0,0($v1)
.L0f0ac5ac:
    ld	$gp,0($sp)
    # Line 4672
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac5b8:
    # Line 4671
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac5ac
    ld	$ra,8($sp)
.end gl_d_rdr2s

# Function: gl_d_rectcopy
# Declared: Line 4674 (Source lines: 4686-4699)
# Address: 0x0f0ac5d0 - 0x0f0ac6e8 (Size: 280 bytes, Frame: 128)
.globl gl_d_rectcopy
.ent gl_d_rectcopy
gl_d_rectcopy:
    # Line 4686
    dsll32	$a7,$a0,0x10
    dsll32	$t0,$a1,0x10
    dsll32	$t1,$a2,0x10
    dsll32	$t2,$a3,0x10
    dsll32	$t3,$a4,0x10
    dsll32	$t8,$a5,0x10
    dsra32	$t8,$t8,0x10
    dsra32	$t3,$t3,0x10
    dsra32	$t2,$t2,0x10
    addiu	$sp,$sp,-128
    sd	$gp,8($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,27768 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v0,comm_curbufpos
    dsra32	$t1,$t1,0x10
    la	$at,comm_endbuffer
    # Line 4688
    lw	$v0,0($v0)
    # Line 4686
    dsra32	$t0,$t0,0x10
    # Line 4688
    lw	$at,0($at)
    sd	$v0,0($sp)
    addiu	$v0,$v0,28
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac680
    # Line 4686
    dsra32	$a7,$a7,0x10
.L0f0ac634:
    # Line 4690
    ld	$v0,0($sp)
    la	$at,comm_endbuffer
    li	$a0,238
    # Line 4696
    sh	$t8,14($v0)
    # Line 4695
    sh	$t3,12($v0)
    # Line 4694
    sh	$t2,10($v0)
    # Line 4693
    sh	$t1,8($v0)
    # Line 4692
    sh	$t0,6($v0)
    # Line 4691
    sh	$a7,4($v0)
    # Line 4690
    sw	$a0,0($v0)
    # Line 4697
    lw	$at,0($at)
    la	$v1,comm_curbufpos
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac6d0
    sw	$v0,0($v1)
.L0f0ac674:
    ld	$gp,8($sp)
    # Line 4699
    jr	$ra
    addiu	$sp,$sp,128
.L0f0ac680:
    sd	$a7,56($sp)
    sd	$t0,48($sp)
    sd	$t1,40($sp)
    sd	$t2,32($sp)
    # Line 4689
    la	$t9,gl_comm_flush
    sd	$t3,24($sp)
    sd	$ra,64($sp)
    jalr	$t9
    sd	$t8,16($sp)
    ld	$t8,16($sp)
    ld	$t3,24($sp)
    la	$a7,comm_curbufpos
    ld	$t2,32($sp)
    ld	$t1,40($sp)
    lw	$a7,0($a7)
    ld	$t0,48($sp)
    ld	$ra,64($sp)
    sd	$a7,0($sp)
    b	.L0f0ac634
    ld	$a7,56($sp)
.L0f0ac6d0:
    # Line 4698
    la	$t9,gl_comm_flush
    sd	$ra,64($sp)
    jalr	$t9
    nop
    b	.L0f0ac674
    ld	$ra,64($sp)
.end gl_d_rectcopy

# Function: gl_d_rmv
# Declared: Line 4701 (Source lines: 4710-4719)
# Address: 0x0f0ac6e8 - 0x0f0ac754 (Size: 108 bytes, Frame: 48)
.globl gl_d_rmv
.ent gl_d_rmv
gl_d_rmv:
    # Line 4710
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,27488
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4712
    lw	$v0,0($v1)
    # Line 4713
    li	$a0,239
    # Line 4717
    la	$at,comm_endbuffer
    # Line 4716
    swc1	$f14,12($v0)
    # Line 4715
    swc1	$f13,8($v0)
    # Line 4714
    swc1	$f12,4($v0)
    # Line 4713
    sw	$a0,0($v0)
    # Line 4717
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac73c
    sw	$v0,0($v1)
.L0f0ac730:
    ld	$gp,0($sp)
    # Line 4719
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ac73c:
    # Line 4718
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac730
    ld	$ra,8($sp)
.end gl_d_rmv

# Function: gl_d_rmv2
# Declared: Line 4721 (Source lines: 4729-4737)
# Address: 0x0f0ac754 - 0x0f0ac7bc (Size: 104 bytes, Frame: 32)
.globl gl_d_rmv2
.ent gl_d_rmv2
gl_d_rmv2:
    # Line 4729
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,27380
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4731
    lw	$v0,0($v1)
    # Line 4732
    li	$a0,240
    # Line 4735
    la	$at,comm_endbuffer
    # Line 4734
    swc1	$f13,8($v0)
    # Line 4733
    swc1	$f12,4($v0)
    # Line 4732
    sw	$a0,0($v0)
    # Line 4735
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac7a4
    sw	$v0,0($v1)
.L0f0ac798:
    ld	$gp,0($sp)
    # Line 4737
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac7a4:
    # Line 4736
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac798
    ld	$ra,8($sp)
.end gl_d_rmv2

# Function: gl_d_rmvi
# Declared: Line 4739 (Source lines: 4748-4757)
# Address: 0x0f0ac7bc - 0x0f0ac828 (Size: 108 bytes, Frame: 48)
.globl gl_d_rmvi
.ent gl_d_rmvi
gl_d_rmvi:
    # Line 4748
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,27276 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4750
    lw	$v0,0($v1)
    # Line 4751
    li	$a3,241
    # Line 4755
    la	$at,comm_endbuffer
    # Line 4754
    sw	$a2,12($v0)
    # Line 4753
    sw	$a1,8($v0)
    # Line 4752
    sw	$a0,4($v0)
    # Line 4751
    sw	$a3,0($v0)
    # Line 4755
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac810
    sw	$v0,0($v1)
.L0f0ac804:
    ld	$gp,0($sp)
    # Line 4757
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ac810:
    # Line 4756
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac804
    ld	$ra,8($sp)
.end gl_d_rmvi

# Function: gl_d_rmv2i
# Declared: Line 4759 (Source lines: 4767-4775)
# Address: 0x0f0ac828 - 0x0f0ac890 (Size: 104 bytes, Frame: 32)
.globl gl_d_rmv2i
.ent gl_d_rmv2i
gl_d_rmv2i:
    # Line 4767
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,27168 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4769
    lw	$v0,0($v1)
    # Line 4770
    li	$a2,242
    # Line 4773
    la	$at,comm_endbuffer
    # Line 4772
    sw	$a1,8($v0)
    # Line 4771
    sw	$a0,4($v0)
    # Line 4770
    sw	$a2,0($v0)
    # Line 4773
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac878
    sw	$v0,0($v1)
.L0f0ac86c:
    ld	$gp,0($sp)
    # Line 4775
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac878:
    # Line 4774
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac86c
    ld	$ra,8($sp)
.end gl_d_rmv2i

# Function: gl_d_rmvs
# Declared: Line 4777 (Source lines: 4786-4795)
# Address: 0x0f0ac890 - 0x0f0ac914 (Size: 132 bytes, Frame: 48)
.globl gl_d_rmvs
.ent gl_d_rmvs
gl_d_rmvs:
    # Line 4786
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,27064 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 4788
    lw	$v0,0($v1)
    # Line 4789
    li	$t9,243
    # Line 4793
    la	$at,comm_endbuffer
    # Line 4792
    sh	$a0,8($v0)
    # Line 4791
    sh	$a1,6($v0)
    # Line 4790
    sh	$a3,4($v0)
    # Line 4789
    sw	$t9,0($v0)
    # Line 4793
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac8fc
    sw	$v0,0($v1)
.L0f0ac8f0:
    ld	$gp,0($sp)
    # Line 4795
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ac8fc:
    # Line 4794
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac8f0
    ld	$ra,8($sp)
.end gl_d_rmvs

# Function: gl_d_rmv2s
# Declared: Line 4797 (Source lines: 4805-4813)
# Address: 0x0f0ac914 - 0x0f0ac98c (Size: 120 bytes, Frame: 32)
.globl gl_d_rmv2s
.ent gl_d_rmv2s
gl_d_rmv2s:
    # Line 4805
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,26932 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 4807
    lw	$v0,0($v1)
    # Line 4808
    li	$t9,244
    # Line 4811
    la	$at,comm_endbuffer
    # Line 4810
    sh	$a0,6($v0)
    # Line 4809
    sh	$a2,4($v0)
    # Line 4808
    sw	$t9,0($v0)
    # Line 4811
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac974
    sw	$v0,0($v1)
.L0f0ac968:
    ld	$gp,0($sp)
    # Line 4813
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ac974:
    # Line 4812
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac968
    ld	$ra,8($sp)
.end gl_d_rmv2s

# Function: gl_d_rpdr
# Declared: Line 4815 (Source lines: 4824-4833)
# Address: 0x0f0ac98c - 0x0f0ac9f8 (Size: 108 bytes, Frame: 48)
.globl gl_d_rpdr
.ent gl_d_rpdr
gl_d_rpdr:
    # Line 4824
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,26812
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4826
    lw	$v0,0($v1)
    # Line 4827
    li	$a0,245
    # Line 4831
    la	$at,comm_endbuffer
    # Line 4830
    swc1	$f14,12($v0)
    # Line 4829
    swc1	$f13,8($v0)
    # Line 4828
    swc1	$f12,4($v0)
    # Line 4827
    sw	$a0,0($v0)
    # Line 4831
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ac9e0
    sw	$v0,0($v1)
.L0f0ac9d4:
    ld	$gp,0($sp)
    # Line 4833
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ac9e0:
    # Line 4832
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ac9d4
    ld	$ra,8($sp)
.end gl_d_rpdr

# Function: gl_d_rpdr2
# Declared: Line 4835 (Source lines: 4843-4851)
# Address: 0x0f0ac9f8 - 0x0f0aca60 (Size: 104 bytes, Frame: 32)
.globl gl_d_rpdr2
.ent gl_d_rpdr2
gl_d_rpdr2:
    # Line 4843
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,26704
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4845
    lw	$v0,0($v1)
    # Line 4846
    li	$a0,246
    # Line 4849
    la	$at,comm_endbuffer
    # Line 4848
    swc1	$f13,8($v0)
    # Line 4847
    swc1	$f12,4($v0)
    # Line 4846
    sw	$a0,0($v0)
    # Line 4849
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aca48
    sw	$v0,0($v1)
.L0f0aca3c:
    ld	$gp,0($sp)
    # Line 4851
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aca48:
    # Line 4850
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aca3c
    ld	$ra,8($sp)
.end gl_d_rpdr2

# Function: gl_d_rpdri
# Declared: Line 4853 (Source lines: 4862-4871)
# Address: 0x0f0aca60 - 0x0f0acacc (Size: 108 bytes, Frame: 48)
.globl gl_d_rpdri
.ent gl_d_rpdri
gl_d_rpdri:
    # Line 4862
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,26600 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4864
    lw	$v0,0($v1)
    # Line 4865
    li	$a3,247
    # Line 4869
    la	$at,comm_endbuffer
    # Line 4868
    sw	$a2,12($v0)
    # Line 4867
    sw	$a1,8($v0)
    # Line 4866
    sw	$a0,4($v0)
    # Line 4865
    sw	$a3,0($v0)
    # Line 4869
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acab4
    sw	$v0,0($v1)
.L0f0acaa8:
    ld	$gp,0($sp)
    # Line 4871
    jr	$ra
    addiu	$sp,$sp,48
.L0f0acab4:
    # Line 4870
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0acaa8
    ld	$ra,8($sp)
.end gl_d_rpdri

# Function: gl_d_rpdr2i
# Declared: Line 4873 (Source lines: 4881-4889)
# Address: 0x0f0acacc - 0x0f0acb34 (Size: 104 bytes, Frame: 32)
.globl gl_d_rpdr2i
.ent gl_d_rpdr2i
gl_d_rpdr2i:
    # Line 4881
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,26492 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4883
    lw	$v0,0($v1)
    # Line 4884
    li	$a2,248
    # Line 4887
    la	$at,comm_endbuffer
    # Line 4886
    sw	$a1,8($v0)
    # Line 4885
    sw	$a0,4($v0)
    # Line 4884
    sw	$a2,0($v0)
    # Line 4887
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acb1c
    sw	$v0,0($v1)
.L0f0acb10:
    ld	$gp,0($sp)
    # Line 4889
    jr	$ra
    addiu	$sp,$sp,32
.L0f0acb1c:
    # Line 4888
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0acb10
    ld	$ra,8($sp)
.end gl_d_rpdr2i

# Function: gl_d_rpdrs
# Declared: Line 4891 (Source lines: 4900-4909)
# Address: 0x0f0acb34 - 0x0f0acbb8 (Size: 132 bytes, Frame: 48)
.globl gl_d_rpdrs
.ent gl_d_rpdrs
gl_d_rpdrs:
    # Line 4900
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,26388 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 4902
    lw	$v0,0($v1)
    # Line 4903
    li	$t9,249
    # Line 4907
    la	$at,comm_endbuffer
    # Line 4906
    sh	$a0,8($v0)
    # Line 4905
    sh	$a1,6($v0)
    # Line 4904
    sh	$a3,4($v0)
    # Line 4903
    sw	$t9,0($v0)
    # Line 4907
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acba0
    sw	$v0,0($v1)
.L0f0acb94:
    ld	$gp,0($sp)
    # Line 4909
    jr	$ra
    addiu	$sp,$sp,48
.L0f0acba0:
    # Line 4908
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0acb94
    ld	$ra,8($sp)
.end gl_d_rpdrs

# Function: gl_d_rpdr2s
# Declared: Line 4911 (Source lines: 4919-4927)
# Address: 0x0f0acbb8 - 0x0f0acc30 (Size: 120 bytes, Frame: 32)
.globl gl_d_rpdr2s
.ent gl_d_rpdr2s
gl_d_rpdr2s:
    # Line 4919
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,26256 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 4921
    lw	$v0,0($v1)
    # Line 4922
    li	$t9,250
    # Line 4925
    la	$at,comm_endbuffer
    # Line 4924
    sh	$a0,6($v0)
    # Line 4923
    sh	$a2,4($v0)
    # Line 4922
    sw	$t9,0($v0)
    # Line 4925
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acc18
    sw	$v0,0($v1)
.L0f0acc0c:
    ld	$gp,0($sp)
    # Line 4927
    jr	$ra
    addiu	$sp,$sp,32
.L0f0acc18:
    # Line 4926
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0acc0c
    ld	$ra,8($sp)
.end gl_d_rpdr2s

# Function: gl_d_rpmv
# Declared: Line 4929 (Source lines: 4938-4947)
# Address: 0x0f0acc30 - 0x0f0acc9c (Size: 108 bytes, Frame: 48)
.globl gl_d_rpmv
.ent gl_d_rpmv
gl_d_rpmv:
    # Line 4938
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,26136
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4940
    lw	$v0,0($v1)
    # Line 4941
    li	$a0,251
    # Line 4945
    la	$at,comm_endbuffer
    # Line 4944
    swc1	$f14,12($v0)
    # Line 4943
    swc1	$f13,8($v0)
    # Line 4942
    swc1	$f12,4($v0)
    # Line 4941
    sw	$a0,0($v0)
    # Line 4945
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acc84
    sw	$v0,0($v1)
.L0f0acc78:
    ld	$gp,0($sp)
    # Line 4947
    jr	$ra
    addiu	$sp,$sp,48
.L0f0acc84:
    # Line 4946
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0acc78
    ld	$ra,8($sp)
.end gl_d_rpmv

# Function: gl_d_rpmv2
# Declared: Line 4949 (Source lines: 4957-4965)
# Address: 0x0f0acc9c - 0x0f0acd04 (Size: 104 bytes, Frame: 32)
.globl gl_d_rpmv2
.ent gl_d_rpmv2
gl_d_rpmv2:
    # Line 4957
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,26028
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 4959
    lw	$v0,0($v1)
    # Line 4960
    li	$a0,252
    # Line 4963
    la	$at,comm_endbuffer
    # Line 4962
    swc1	$f13,8($v0)
    # Line 4961
    swc1	$f12,4($v0)
    # Line 4960
    sw	$a0,0($v0)
    # Line 4963
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0accec
    sw	$v0,0($v1)
.L0f0acce0:
    ld	$gp,0($sp)
    # Line 4965
    jr	$ra
    addiu	$sp,$sp,32
.L0f0accec:
    # Line 4964
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0acce0
    ld	$ra,8($sp)
.end gl_d_rpmv2

# Function: gl_d_rpmvi
# Declared: Line 4967 (Source lines: 4976-4985)
# Address: 0x0f0acd04 - 0x0f0acd70 (Size: 108 bytes, Frame: 48)
.globl gl_d_rpmvi
.ent gl_d_rpmvi
gl_d_rpmvi:
    # Line 4976
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,25924 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4978
    lw	$v0,0($v1)
    # Line 4979
    li	$a3,253
    # Line 4983
    la	$at,comm_endbuffer
    # Line 4982
    sw	$a2,12($v0)
    # Line 4981
    sw	$a1,8($v0)
    # Line 4980
    sw	$a0,4($v0)
    # Line 4979
    sw	$a3,0($v0)
    # Line 4983
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acd58
    sw	$v0,0($v1)
.L0f0acd4c:
    ld	$gp,0($sp)
    # Line 4985
    jr	$ra
    addiu	$sp,$sp,48
.L0f0acd58:
    # Line 4984
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0acd4c
    ld	$ra,8($sp)
.end gl_d_rpmvi

# Function: gl_d_rpmv2i
# Declared: Line 4987 (Source lines: 4995-5003)
# Address: 0x0f0acd70 - 0x0f0acdd8 (Size: 104 bytes, Frame: 32)
.globl gl_d_rpmv2i
.ent gl_d_rpmv2i
gl_d_rpmv2i:
    # Line 4995
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,25816 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 4997
    lw	$v0,0($v1)
    # Line 4998
    li	$a2,254
    # Line 5001
    la	$at,comm_endbuffer
    # Line 5000
    sw	$a1,8($v0)
    # Line 4999
    sw	$a0,4($v0)
    # Line 4998
    sw	$a2,0($v0)
    # Line 5001
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acdc0
    sw	$v0,0($v1)
.L0f0acdb4:
    ld	$gp,0($sp)
    # Line 5003
    jr	$ra
    addiu	$sp,$sp,32
.L0f0acdc0:
    # Line 5002
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0acdb4
    ld	$ra,8($sp)
.end gl_d_rpmv2i

# Function: gl_d_rpmvs
# Declared: Line 5005 (Source lines: 5014-5023)
# Address: 0x0f0acdd8 - 0x0f0ace5c (Size: 132 bytes, Frame: 48)
.globl gl_d_rpmvs
.ent gl_d_rpmvs
gl_d_rpmvs:
    # Line 5014
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,25712 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 5016
    lw	$v0,0($v1)
    # Line 5017
    li	$t9,255
    # Line 5021
    la	$at,comm_endbuffer
    # Line 5020
    sh	$a0,8($v0)
    # Line 5019
    sh	$a1,6($v0)
    # Line 5018
    sh	$a3,4($v0)
    # Line 5017
    sw	$t9,0($v0)
    # Line 5021
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ace44
    sw	$v0,0($v1)
.L0f0ace38:
    ld	$gp,0($sp)
    # Line 5023
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ace44:
    # Line 5022
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ace38
    ld	$ra,8($sp)
.end gl_d_rpmvs

# Function: gl_d_rpmv2s
# Declared: Line 5025 (Source lines: 5033-5041)
# Address: 0x0f0ace5c - 0x0f0aced4 (Size: 120 bytes, Frame: 32)
.globl gl_d_rpmv2s
.ent gl_d_rpmv2s
gl_d_rpmv2s:
    # Line 5033
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,25580 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 5035
    lw	$v0,0($v1)
    # Line 5036
    li	$t9,256
    # Line 5039
    la	$at,comm_endbuffer
    # Line 5038
    sh	$a0,6($v0)
    # Line 5037
    sh	$a2,4($v0)
    # Line 5036
    sw	$t9,0($v0)
    # Line 5039
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acebc
    sw	$v0,0($v1)
.L0f0aceb0:
    ld	$gp,0($sp)
    # Line 5041
    jr	$ra
    addiu	$sp,$sp,32
.L0f0acebc:
    # Line 5040
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aceb0
    ld	$ra,8($sp)
.end gl_d_rpmv2s

# Function: gl_d_setdblights
# Declared: Line 5043 (Source lines: 5050-5058)
# Address: 0x0f0aced4 - 0x0f0acf48 (Size: 116 bytes, Frame: 32)
.globl gl_d_setdblights
.ent gl_d_setdblights
gl_d_setdblights:
    # Line 5050
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,25460 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5052
    lw	$v0,0($v1)
    # Line 5053
    li	$a1,257
    # Line 5055
    la	$at,comm_endbuffer
    # Line 5054
    sw	$a0,4($v0)
    # Line 5053
    sw	$a1,0($v0)
    # Line 5055
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acf34
    sw	$v0,0($v1)
    # Line 5057
    la	$t9,gl_comm_flush
.L0f0acf1c:
    jalr	$t9
    nop
    # Line 5058
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0acf34:
    # Line 5056
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0acf1c
    # Line 5057
    la	$t9,gl_comm_flush
.end gl_d_setdblights

# Function: gl_d_setmonitor
# Declared: Line 5060 (Source lines: 5067-5075)
# Address: 0x0f0acf48 - 0x0f0acfc4 (Size: 124 bytes, Frame: 32)
.globl gl_d_setmonitor
.ent gl_d_setmonitor
gl_d_setmonitor:
    # Line 5067
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,25344 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5070
    li	$a1,258
    # Line 5067
    dsll32	$a0,$a0,0x10
    # Line 5069
    lw	$v0,0($v1)
    # Line 5067
    dsra32	$a0,$a0,0x10
    # Line 5072
    la	$at,comm_endbuffer
    # Line 5071
    sh	$a0,4($v0)
    # Line 5070
    sw	$a1,0($v0)
    # Line 5072
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0acfb0
    sw	$v0,0($v1)
    # Line 5074
    la	$t9,gl_comm_flush
.L0f0acf98:
    jalr	$t9
    nop
    # Line 5075
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0acfb0:
    # Line 5073
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0acf98
    # Line 5074
    la	$t9,gl_comm_flush
.end gl_d_setmonitor

# Function: gl_d_setshade
# Declared: Line 5077 (Source lines: 5084-5091)
# Address: 0x0f0acfc4 - 0x0f0ad02c (Size: 104 bytes, Frame: 32)
.globl gl_d_setshade
.ent gl_d_setshade
gl_d_setshade:
    # Line 5084
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,25220 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5087
    li	$a1,259
    # Line 5086
    lw	$v0,0($v1)
    # Line 5084
    andi	$a0,$a0,0xffff
    # Line 5089
    la	$at,comm_endbuffer
    # Line 5088
    sh	$a0,4($v0)
    # Line 5087
    sw	$a1,0($v0)
    # Line 5089
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ad014
    sw	$v0,0($v1)
.L0f0ad008:
    ld	$gp,0($sp)
    # Line 5091
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ad014:
    # Line 5090
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ad008
    ld	$ra,8($sp)
.end gl_d_setshade

# Function: gl_d_shaderange
# Declared: Line 5093 (Source lines: 5103-5113)
# Address: 0x0f0ad02c - 0x0f0ad0b4 (Size: 136 bytes, Frame: 48)
.globl gl_d_shaderange
.ent gl_d_shaderange
gl_d_shaderange:
    # Line 5106
    li	$a4,260
    # Line 5103
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,25116 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$t9,$a0,0xffff
    dsll32	$a0,$a3,0x10
    # Line 5105
    lw	$v0,0($v1)
    # Line 5111
    la	$at,comm_endbuffer
    # Line 5103
    dsra32	$a0,$a0,0x10
    # Line 5110
    sh	$a0,10($v0)
    # Line 5107
    sh	$t9,4($v0)
    # Line 5106
    sw	$a4,0($v0)
    # Line 5103
    andi	$a4,$a1,0xffff
    # Line 5108
    sh	$a4,6($v0)
    # Line 5103
    dsll32	$a1,$a2,0x10
    dsra32	$a1,$a1,0x10
    # Line 5109
    sh	$a1,8($v0)
    # Line 5111
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ad09c
    sw	$v0,0($v1)
.L0f0ad090:
    ld	$gp,0($sp)
    # Line 5113
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ad09c:
    # Line 5112
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ad090
    ld	$ra,8($sp)
.end gl_d_shaderange

# Function: gl_d_spclos
# Declared: Line 5115 (Source lines: 5121-5127)
# Address: 0x0f0ad0b4 - 0x0f0ad114 (Size: 96 bytes, Frame: 16)
.globl gl_d_spclos
.ent gl_d_spclos
gl_d_spclos:
    # Line 5121
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,24980
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 5123
    lw	$v0,0($v1)
    # Line 5124
    li	$a0,261
    # Line 5125
    la	$at,comm_endbuffer
    # Line 5124
    sw	$a0,0($v0)
    # Line 5125
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ad0fc
    sw	$v0,0($v1)
.L0f0ad0f0:
    ld	$gp,0($sp)
    # Line 5127
    jr	$ra
    addiu	$sp,$sp,16
.L0f0ad0fc:
    # Line 5126
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ad0f0
    ld	$ra,8($sp)
.end gl_d_spclos

# Function: gl_d_splf
# Declared: Line 5129 (Source lines: 5138-5160)
# Address: 0x0f0ad114 - 0x0f0ad298 (Size: 388 bytes, Frame: 208)
.globl gl_d_splf
.ent gl_d_splf
gl_d_splf:
    # Line 5138
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s3,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,24884 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s3,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,168
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ad25c
    move	$s2,$a0
.L0f0ad15c:
    # Line 5142
    move	$v0,$a7
    # Line 5144
    sw	$s2,4($a7)
    # Line 5143
    li	$a3,262
    sw	$a3,0($a7)
    # Line 5146
    li	$a0,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s3,.L0f0ad1f4
    sw	$a2,8($a7)
    ld	$s3,0($sp)
    # Line 5148
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0ad198:
    # Line 5152
    addu	$a2,$s2,$s2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0ad228
    sw	$a2,0($v0)
    ld	$s2,8($sp)
    ld	$s0,16($sp)
    # Line 5154
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,4
.L0f0ad1bc:
    # Line 5158
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 5157
    sw	$v0,0($a5)
    # Line 5158
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0ad280
    sw	$v1,0($a6)
.L0f0ad1e8:
    ld	$gp,24($sp)
    # Line 5160
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ad1f4:
    # Line 5150
    li	$a4,168
    la	$a3,gl_mem_hton_float_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s3
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,12
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    li	$a0,-4
    ld	$ra,32($sp)
    b	.L0f0ad198
    ld	$s3,0($sp)
.L0f0ad228:
    # Line 5156
    li	$a4,168
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,4
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0ad1bc
    ld	$s0,16($sp)
.L0f0ad25c:
    # Line 5142
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ad15c
    lw	$a7,0($a5)
.L0f0ad280:
    # Line 5159
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0ad1e8
    ld	$ra,32($sp)
.end gl_d_splf

# Function: gl_d_splf2
# Declared: Line 5162 (Source lines: 5171-5193)
# Address: 0x0f0ad298 - 0x0f0ad414 (Size: 380 bytes, Frame: 208)
.globl gl_d_splf2
.ent gl_d_splf2
gl_d_splf2:
    # Line 5171
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s3,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,24496 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s3,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,168
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ad3d8
    move	$s2,$a0
.L0f0ad2e0:
    # Line 5175
    move	$v0,$a7
    # Line 5177
    sw	$s2,4($a7)
    # Line 5176
    li	$a3,263
    sw	$a3,0($a7)
    # Line 5179
    li	$a0,-4
    sll	$a2,$s2,0x3
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s3,.L0f0ad370
    sw	$a2,8($a7)
    ld	$s3,0($sp)
    # Line 5181
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0ad314:
    # Line 5185
    addu	$a2,$s2,$s2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0ad3a4
    sw	$a2,0($v0)
    ld	$s2,8($sp)
    ld	$s0,16($sp)
    # Line 5187
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,4
.L0f0ad338:
    # Line 5191
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 5190
    sw	$v0,0($a5)
    # Line 5191
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0ad3fc
    sw	$v1,0($a6)
.L0f0ad364:
    ld	$gp,24($sp)
    # Line 5193
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ad370:
    # Line 5183
    li	$a4,168
    la	$a3,gl_mem_hton_float_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s3
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,12
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    li	$a0,-4
    ld	$ra,32($sp)
    b	.L0f0ad314
    ld	$s3,0($sp)
.L0f0ad3a4:
    # Line 5189
    li	$a4,168
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,4
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0ad338
    ld	$s0,16($sp)
.L0f0ad3d8:
    # Line 5175
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ad2e0
    lw	$a7,0($a5)
.L0f0ad3fc:
    # Line 5192
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0ad364
    ld	$ra,32($sp)
.end gl_d_splf2

# Function: gl_d_splfi
# Declared: Line 5195 (Source lines: 5204-5226)
# Address: 0x0f0ad414 - 0x0f0ad598 (Size: 388 bytes, Frame: 208)
.globl gl_d_splfi
.ent gl_d_splfi
gl_d_splfi:
    # Line 5204
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s3,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,24116 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s3,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,168
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ad55c
    move	$s2,$a0
.L0f0ad45c:
    # Line 5208
    move	$v0,$a7
    # Line 5210
    sw	$s2,4($a7)
    # Line 5209
    li	$a3,264
    sw	$a3,0($a7)
    # Line 5212
    li	$a0,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s3,.L0f0ad4f4
    sw	$a2,8($a7)
    ld	$s3,0($sp)
    # Line 5214
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0ad498:
    # Line 5218
    addu	$a2,$s2,$s2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0ad528
    sw	$a2,0($v0)
    ld	$s2,8($sp)
    ld	$s0,16($sp)
    # Line 5220
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,4
.L0f0ad4bc:
    # Line 5224
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 5223
    sw	$v0,0($a5)
    # Line 5224
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0ad580
    sw	$v1,0($a6)
.L0f0ad4e8:
    ld	$gp,24($sp)
    # Line 5226
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ad4f4:
    # Line 5216
    li	$a4,168
    la	$a3,gl_mem_hton_long_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s3
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,12
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    li	$a0,-4
    ld	$ra,32($sp)
    b	.L0f0ad498
    ld	$s3,0($sp)
.L0f0ad528:
    # Line 5222
    li	$a4,168
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,4
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0ad4bc
    ld	$s0,16($sp)
.L0f0ad55c:
    # Line 5208
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ad45c
    lw	$a7,0($a5)
.L0f0ad580:
    # Line 5225
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0ad4e8
    ld	$ra,32($sp)
.end gl_d_splfi

# Function: gl_d_splf2i
# Declared: Line 5228 (Source lines: 5237-5259)
# Address: 0x0f0ad598 - 0x0f0ad714 (Size: 380 bytes, Frame: 208)
.globl gl_d_splf2i
.ent gl_d_splf2i
gl_d_splf2i:
    # Line 5237
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s3,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,23728 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s3,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,168
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ad6d8
    move	$s2,$a0
.L0f0ad5e0:
    # Line 5241
    move	$v0,$a7
    # Line 5243
    sw	$s2,4($a7)
    # Line 5242
    li	$a3,265
    sw	$a3,0($a7)
    # Line 5245
    li	$a0,-4
    sll	$a2,$s2,0x3
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s3,.L0f0ad670
    sw	$a2,8($a7)
    ld	$s3,0($sp)
    # Line 5247
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0ad614:
    # Line 5251
    addu	$a2,$s2,$s2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0ad6a4
    sw	$a2,0($v0)
    ld	$s2,8($sp)
    ld	$s0,16($sp)
    # Line 5253
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,4
.L0f0ad638:
    # Line 5257
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 5256
    sw	$v0,0($a5)
    # Line 5257
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0ad6fc
    sw	$v1,0($a6)
.L0f0ad664:
    ld	$gp,24($sp)
    # Line 5259
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ad670:
    # Line 5249
    li	$a4,168
    la	$a3,gl_mem_hton_long_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s3
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,12
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    li	$a0,-4
    ld	$ra,32($sp)
    b	.L0f0ad614
    ld	$s3,0($sp)
.L0f0ad6a4:
    # Line 5255
    li	$a4,168
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,4
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0ad638
    ld	$s0,16($sp)
.L0f0ad6d8:
    # Line 5241
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ad5e0
    lw	$a7,0($a5)
.L0f0ad6fc:
    # Line 5258
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0ad664
    ld	$ra,32($sp)
.end gl_d_splf2i

# Function: gl_d_splfs
# Declared: Line 5261 (Source lines: 5270-5292)
# Address: 0x0f0ad714 - 0x0f0ad8a0 (Size: 396 bytes, Frame: 208)
.globl gl_d_splfs
.ent gl_d_splfs
gl_d_splfs:
    # Line 5270
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    move	$s0,$a2
    sd	$s2,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,23348 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a3,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s2,$a1
    lw	$a7,0($a3)
    lw	$at,0($a6)
    sd	$s1,16($sp)
    addiu	$v0,$a7,168
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ad864
    move	$s1,$a0
.L0f0ad75c:
    # Line 5274
    move	$v0,$a7
    # Line 5276
    sw	$s1,4($a7)
    # Line 5275
    li	$a4,266
    sw	$a4,0($a7)
    # Line 5278
    li	$a0,-4
    sll	$a2,$s1,0x2
    subu	$a2,$a2,$s1
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s2,.L0f0ad7f8
    sw	$a2,8($a7)
    # Line 5280
    la	$a7,gl_mem_hton_short_array
    ld	$s2,0($sp)
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0ad79c:
    # Line 5284
    addu	$a2,$s1,$s1
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0ad830
    sw	$a2,0($v0)
    ld	$s1,16($sp)
    ld	$s0,8($sp)
    # Line 5286
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,4
.L0f0ad7c0:
    # Line 5290
    la	$a5,comm_buffer
    la	$a4,comm_stdsize
    lw	$a5,0($a5)
    lw	$a4,0($a4)
    # Line 5289
    sw	$v0,0($a3)
    # Line 5290
    addu	$a4,$a4,$a5
    addiu	$v1,$a4,-24
    addiu	$a4,$a4,-24
    sltu	$a4,$a4,$v0
    bnez	$a4,.L0f0ad888
    sw	$v1,0($a6)
.L0f0ad7ec:
    ld	$gp,24($sp)
    # Line 5292
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ad7f8:
    # Line 5282
    li	$a4,168
    move	$a1,$s2
    la	$t9,gl_mem_pack_array
    # Line 5280
    la	$a3,gl_mem_hton_short_array
    sd	$ra,32($sp)
    # Line 5282
    jalr	$t9
    addiu	$a0,$v0,12
    la	$a3,comm_curbufpos
    la	$a6,comm_endbuffer
    li	$a0,-4
    la	$a7,gl_mem_hton_short_array
    ld	$ra,32($sp)
    b	.L0f0ad79c
    ld	$s2,0($sp)
.L0f0ad830:
    # Line 5288
    li	$a4,168
    move	$a3,$a7
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,4
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s1,16($sp)
    la	$a3,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0ad7c0
    ld	$s0,8($sp)
.L0f0ad864:
    # Line 5274
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a3,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ad75c
    lw	$a7,0($a3)
.L0f0ad888:
    # Line 5291
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0ad7ec
    ld	$ra,32($sp)
.end gl_d_splfs

# Function: gl_d_splf2s
# Declared: Line 5294 (Source lines: 5303-5325)
# Address: 0x0f0ad8a0 - 0x0f0ada24 (Size: 388 bytes, Frame: 208)
.globl gl_d_splf2s
.ent gl_d_splf2s
gl_d_splf2s:
    # Line 5303
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    move	$s0,$a2
    sd	$s2,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,22952 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a3,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s2,$a1
    lw	$a7,0($a3)
    lw	$at,0($a6)
    sd	$s1,16($sp)
    addiu	$v0,$a7,168
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ad9e8
    move	$s1,$a0
.L0f0ad8e8:
    # Line 5307
    move	$v0,$a7
    # Line 5309
    sw	$s1,4($a7)
    # Line 5308
    li	$a4,267
    sw	$a4,0($a7)
    # Line 5311
    li	$a0,-4
    sll	$a2,$s1,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s2,.L0f0ad97c
    sw	$a2,8($a7)
    # Line 5313
    la	$a7,gl_mem_hton_short_array
    ld	$s2,0($sp)
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0ad920:
    # Line 5317
    addu	$a2,$s1,$s1
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0ad9b4
    sw	$a2,0($v0)
    ld	$s1,16($sp)
    ld	$s0,8($sp)
    # Line 5319
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,4
.L0f0ad944:
    # Line 5323
    la	$a5,comm_buffer
    la	$a4,comm_stdsize
    lw	$a5,0($a5)
    lw	$a4,0($a4)
    # Line 5322
    sw	$v0,0($a3)
    # Line 5323
    addu	$a4,$a4,$a5
    addiu	$v1,$a4,-24
    addiu	$a4,$a4,-24
    sltu	$a4,$a4,$v0
    bnez	$a4,.L0f0ada0c
    sw	$v1,0($a6)
.L0f0ad970:
    ld	$gp,24($sp)
    # Line 5325
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ad97c:
    # Line 5315
    li	$a4,168
    move	$a1,$s2
    la	$t9,gl_mem_pack_array
    # Line 5313
    la	$a3,gl_mem_hton_short_array
    sd	$ra,32($sp)
    # Line 5315
    jalr	$t9
    addiu	$a0,$v0,12
    la	$a3,comm_curbufpos
    la	$a6,comm_endbuffer
    li	$a0,-4
    la	$a7,gl_mem_hton_short_array
    ld	$ra,32($sp)
    b	.L0f0ad920
    ld	$s2,0($sp)
.L0f0ad9b4:
    # Line 5321
    li	$a4,168
    move	$a3,$a7
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,4
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s1,16($sp)
    la	$a3,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0ad944
    ld	$s0,8($sp)
.L0f0ad9e8:
    # Line 5307
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a3,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ad8e8
    lw	$a7,0($a3)
.L0f0ada0c:
    # Line 5324
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0ad970
    ld	$ra,32($sp)
.end gl_d_splf2s

# Function: gl_d_xfpt
# Declared: Line 5327 (Source lines: 5336-5345)
# Address: 0x0f0ada24 - 0x0f0ada90 (Size: 108 bytes, Frame: 48)
.globl gl_d_xfpt
.ent gl_d_xfpt
gl_d_xfpt:
    # Line 5336
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,22564
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 5338
    lw	$v0,0($v1)
    # Line 5339
    li	$a0,268
    # Line 5343
    la	$at,comm_endbuffer
    # Line 5342
    swc1	$f14,12($v0)
    # Line 5341
    swc1	$f13,8($v0)
    # Line 5340
    swc1	$f12,4($v0)
    # Line 5339
    sw	$a0,0($v0)
    # Line 5343
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ada78
    sw	$v0,0($v1)
.L0f0ada6c:
    ld	$gp,0($sp)
    # Line 5345
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ada78:
    # Line 5344
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ada6c
    ld	$ra,8($sp)
.end gl_d_xfpt

# Function: gl_d_xfpti
# Declared: Line 5347 (Source lines: 5356-5365)
# Address: 0x0f0ada90 - 0x0f0adafc (Size: 108 bytes, Frame: 48)
.globl gl_d_xfpti
.ent gl_d_xfpti
gl_d_xfpti:
    # Line 5356
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,22456 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5358
    lw	$v0,0($v1)
    # Line 5359
    li	$a3,269
    # Line 5363
    la	$at,comm_endbuffer
    # Line 5362
    sw	$a2,12($v0)
    # Line 5361
    sw	$a1,8($v0)
    # Line 5360
    sw	$a0,4($v0)
    # Line 5359
    sw	$a3,0($v0)
    # Line 5363
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0adae4
    sw	$v0,0($v1)
.L0f0adad8:
    ld	$gp,0($sp)
    # Line 5365
    jr	$ra
    addiu	$sp,$sp,48
.L0f0adae4:
    # Line 5364
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0adad8
    ld	$ra,8($sp)
.end gl_d_xfpti

# Function: gl_d_xfpts
# Declared: Line 5367 (Source lines: 5376-5385)
# Address: 0x0f0adafc - 0x0f0adb80 (Size: 132 bytes, Frame: 48)
.globl gl_d_xfpts
.ent gl_d_xfpts
gl_d_xfpts:
    # Line 5376
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,22348 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 5378
    lw	$v0,0($v1)
    # Line 5379
    li	$t9,270
    # Line 5383
    la	$at,comm_endbuffer
    # Line 5382
    sh	$a0,8($v0)
    # Line 5381
    sh	$a1,6($v0)
    # Line 5380
    sh	$a3,4($v0)
    # Line 5379
    sw	$t9,0($v0)
    # Line 5383
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0adb68
    sw	$v0,0($v1)
.L0f0adb5c:
    ld	$gp,0($sp)
    # Line 5385
    jr	$ra
    addiu	$sp,$sp,48
.L0f0adb68:
    # Line 5384
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0adb5c
    ld	$ra,8($sp)
.end gl_d_xfpts

# Function: gl_d_xfpt2
# Declared: Line 5387 (Source lines: 5395-5403)
# Address: 0x0f0adb80 - 0x0f0adbe8 (Size: 104 bytes, Frame: 32)
.globl gl_d_xfpt2
.ent gl_d_xfpt2
gl_d_xfpt2:
    # Line 5395
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,22216
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 5397
    lw	$v0,0($v1)
    # Line 5398
    li	$a0,271
    # Line 5401
    la	$at,comm_endbuffer
    # Line 5400
    swc1	$f13,8($v0)
    # Line 5399
    swc1	$f12,4($v0)
    # Line 5398
    sw	$a0,0($v0)
    # Line 5401
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0adbd0
    sw	$v0,0($v1)
.L0f0adbc4:
    ld	$gp,0($sp)
    # Line 5403
    jr	$ra
    addiu	$sp,$sp,32
.L0f0adbd0:
    # Line 5402
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0adbc4
    ld	$ra,8($sp)
.end gl_d_xfpt2

# Function: gl_d_xfpt2i
# Declared: Line 5405 (Source lines: 5413-5421)
# Address: 0x0f0adbe8 - 0x0f0adc50 (Size: 104 bytes, Frame: 32)
.globl gl_d_xfpt2i
.ent gl_d_xfpt2i
gl_d_xfpt2i:
    # Line 5413
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,22112 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5415
    lw	$v0,0($v1)
    # Line 5416
    li	$a2,272
    # Line 5419
    la	$at,comm_endbuffer
    # Line 5418
    sw	$a1,8($v0)
    # Line 5417
    sw	$a0,4($v0)
    # Line 5416
    sw	$a2,0($v0)
    # Line 5419
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0adc38
    sw	$v0,0($v1)
.L0f0adc2c:
    ld	$gp,0($sp)
    # Line 5421
    jr	$ra
    addiu	$sp,$sp,32
.L0f0adc38:
    # Line 5420
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0adc2c
    ld	$ra,8($sp)
.end gl_d_xfpt2i

# Function: gl_d_xfpt2s
# Declared: Line 5423 (Source lines: 5431-5439)
# Address: 0x0f0adc50 - 0x0f0adcc8 (Size: 120 bytes, Frame: 32)
.globl gl_d_xfpt2s
.ent gl_d_xfpt2s
gl_d_xfpt2s:
    # Line 5431
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,22008 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 5433
    lw	$v0,0($v1)
    # Line 5434
    li	$t9,273
    # Line 5437
    la	$at,comm_endbuffer
    # Line 5436
    sh	$a0,6($v0)
    # Line 5435
    sh	$a2,4($v0)
    # Line 5434
    sw	$t9,0($v0)
    # Line 5437
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0adcb0
    sw	$v0,0($v1)
.L0f0adca4:
    ld	$gp,0($sp)
    # Line 5439
    jr	$ra
    addiu	$sp,$sp,32
.L0f0adcb0:
    # Line 5438
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0adca4
    ld	$ra,8($sp)
.end gl_d_xfpt2s

# Function: gl_d_xfpt4
# Declared: Line 5441 (Source lines: 5451-5461)
# Address: 0x0f0adcc8 - 0x0f0add38 (Size: 112 bytes, Frame: 48)
.globl gl_d_xfpt4
.ent gl_d_xfpt4
gl_d_xfpt4:
    # Line 5451
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,21888
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 5453
    lw	$v0,0($v1)
    # Line 5454
    li	$a0,274
    # Line 5459
    la	$at,comm_endbuffer
    # Line 5458
    swc1	$f15,16($v0)
    # Line 5457
    swc1	$f14,12($v0)
    # Line 5456
    swc1	$f13,8($v0)
    # Line 5455
    swc1	$f12,4($v0)
    # Line 5454
    sw	$a0,0($v0)
    # Line 5459
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0add20
    sw	$v0,0($v1)
.L0f0add14:
    ld	$gp,0($sp)
    # Line 5461
    jr	$ra
    addiu	$sp,$sp,48
.L0f0add20:
    # Line 5460
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0add14
    ld	$ra,8($sp)
.end gl_d_xfpt4

# Function: gl_d_xfpt4i
# Declared: Line 5463 (Source lines: 5473-5483)
# Address: 0x0f0add38 - 0x0f0adda8 (Size: 112 bytes, Frame: 48)
.globl gl_d_xfpt4i
.ent gl_d_xfpt4i
gl_d_xfpt4i:
    # Line 5473
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,21776 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5475
    lw	$v0,0($v1)
    # Line 5476
    li	$a4,275
    # Line 5481
    la	$at,comm_endbuffer
    # Line 5480
    sw	$a3,16($v0)
    # Line 5479
    sw	$a2,12($v0)
    # Line 5478
    sw	$a1,8($v0)
    # Line 5477
    sw	$a0,4($v0)
    # Line 5476
    sw	$a4,0($v0)
    # Line 5481
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0add90
    sw	$v0,0($v1)
.L0f0add84:
    ld	$gp,0($sp)
    # Line 5483
    jr	$ra
    addiu	$sp,$sp,48
.L0f0add90:
    # Line 5482
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0add84
    ld	$ra,8($sp)
.end gl_d_xfpt4i

# Function: gl_d_xfpt4s
# Declared: Line 5485 (Source lines: 5495-5505)
# Address: 0x0f0adda8 - 0x0f0ade38 (Size: 144 bytes, Frame: 48)
.globl gl_d_xfpt4s
.ent gl_d_xfpt4s
gl_d_xfpt4s:
    # Line 5498
    li	$a4,276
    # Line 5495
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,21664 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    dsll32	$t9,$a0,0x10
    la	$v1,comm_curbufpos
    dsll32	$a0,$a3,0x10
    # Line 5503
    la	$at,comm_endbuffer
    # Line 5497
    lw	$v0,0($v1)
    # Line 5495
    dsra32	$t9,$t9,0x10
    dsra32	$a0,$a0,0x10
    # Line 5502
    sh	$a0,10($v0)
    # Line 5499
    sh	$t9,4($v0)
    # Line 5498
    sw	$a4,0($v0)
    # Line 5495
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 5501
    sh	$a1,8($v0)
    # Line 5500
    sh	$a4,6($v0)
    # Line 5503
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ade20
    sw	$v0,0($v1)
.L0f0ade14:
    ld	$gp,0($sp)
    # Line 5505
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ade20:
    # Line 5504
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ade14
    ld	$ra,8($sp)
.end gl_d_xfpt4s

# Function: gl_d_zbuffer
# Declared: Line 5507 (Source lines: 5514-5521)
# Address: 0x0f0ade38 - 0x0f0ade9c (Size: 100 bytes, Frame: 32)
.globl gl_d_zbuffer
.ent gl_d_zbuffer
gl_d_zbuffer:
    # Line 5514
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,21520 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5516
    lw	$v0,0($v1)
    # Line 5517
    li	$a1,277
    # Line 5519
    la	$at,comm_endbuffer
    # Line 5518
    sw	$a0,4($v0)
    # Line 5517
    sw	$a1,0($v0)
    # Line 5519
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ade84
    sw	$v0,0($v1)
.L0f0ade78:
    ld	$gp,0($sp)
    # Line 5521
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ade84:
    # Line 5520
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ade78
    ld	$ra,8($sp)
.end gl_d_zbuffer

# Function: gl_d_charst
# Declared: Line 5523 (Source lines: 5531-5547)
# Address: 0x0f0ade9c - 0x0f0adfb8 (Size: 284 bytes, Frame: 48)
.globl gl_d_charst
.ent gl_d_charst
gl_d_charst:
    # Line 5531
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,21420 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s1,0($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0adf7c
    move	$s1,$a0
.L0f0adedc:
    # Line 5535
    move	$v0,$a7
    # Line 5538
    li	$a3,-4
    addiu	$a2,$s0,3
    and	$a2,$a2,$a3
    # Line 5536
    li	$a3,278
    sw	$a3,0($a7)
    # Line 5538
    bnez	$s1,.L0f0adf4c
    sw	$a2,4($a7)
    ld	$s1,0($sp)
    # Line 5540
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0adf08:
    # Line 5543
    sw	$s0,0($v0)
    # Line 5545
    la	$a3,comm_buffer
    la	$v1,comm_stdsize
    ld	$s0,8($sp)
    lw	$a3,0($a3)
    lw	$v1,0($v1)
    # Line 5544
    addiu	$a4,$v0,4
    sw	$a4,0($a5)
    # Line 5545
    addu	$v1,$v1,$a3
    addiu	$a3,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$a4
    bnez	$v1,.L0f0adfa0
    sw	$a3,0($a6)
.L0f0adf40:
    ld	$gp,16($sp)
    # Line 5547
    jr	$ra
    addiu	$sp,$sp,48
.L0f0adf4c:
    # Line 5542
    li	$a4,88
    la	$a3,gl_mem_copy_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0adf08
    ld	$s1,0($sp)
.L0f0adf7c:
    # Line 5535
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0adedc
    lw	$a7,0($a5)
.L0f0adfa0:
    # Line 5546
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s0,8($sp)
    b	.L0f0adf40
    ld	$ra,24($sp)
.end gl_d_charst

# Function: gl_d_strwid
# Declared: Line 5549 (Source lines: 5557-5574)
# Address: 0x0f0adfb8 - 0x0f0ae0cc (Size: 276 bytes, Frame: 48)
.globl gl_d_strwid
.ent gl_d_strwid
gl_d_strwid:
    # Line 5557
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,21136 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s1,0($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae0a8
    move	$s1,$a0
.L0f0adff8:
    # Line 5561
    move	$v0,$a7
    # Line 5564
    li	$a3,-4
    addiu	$a2,$s0,3
    and	$a2,$a2,$a3
    # Line 5562
    li	$a3,279
    sw	$a3,0($a7)
    # Line 5564
    bnez	$s1,.L0f0ae07c
    sw	$a2,4($a7)
    sd	$ra,24($sp)
    ld	$s1,0($sp)
    # Line 5566
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0ae028:
    # Line 5572
    li	$a0,1
    # Line 5569
    sw	$s0,0($v0)
    # Line 5568
    la	$a1,comm_buffer
    # Line 5571
    la	$v1,comm_stdsize
    # Line 5570
    addiu	$a2,$v0,4
    # Line 5571
    lw	$a1,0($a1)
    lw	$v1,0($v1)
    # Line 5570
    sw	$a2,0($a5)
    # Line 5572
    la	$t9,gl_comm_read_data
    # Line 5571
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 5572
    jalr	$t9
    # Line 5571
    sw	$v1,0($a6)
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 5574
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$s0,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ae07c:
    # Line 5568
    li	$a4,88
    la	$a3,gl_mem_copy_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    b	.L0f0ae028
    ld	$s1,0($sp)
.L0f0ae0a8:
    # Line 5561
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0adff8
    lw	$a7,0($a5)
.end gl_d_strwid

# Function: gl_d_defpattern
# Declared: Line 5577 (Source lines: 5586-5603)
# Address: 0x0f0ae0cc - 0x0f0ae220 (Size: 340 bytes, Frame: 208)
.globl gl_d_defpattern
.ent gl_d_defpattern
gl_d_defpattern:
    # Line 5586
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a2
    sd	$s2,16($sp)
    dsll32	$s2,$a0,0x10
    sd	$s8,8($sp)
    sd	$gp,24($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,20860 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    dsll32	$s8,$a1,0x10
    lw	$a7,0($a5)
    lw	$at,0($a6)
    dsra32	$s8,$s8,0x10
    addiu	$v0,$a7,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae1e4
    dsra32	$s2,$s2,0x10
.L0f0ae11c:
    # Line 5595
    mult	$s8,$s8
    # Line 5590
    move	$v0,$a7
    # Line 5592
    sh	$s2,4($a7)
    # Line 5593
    sh	$s8,6($a7)
    ld	$s8,8($sp)
    # Line 5591
    li	$a3,280
    sw	$a3,0($a7)
    # Line 5595
    mflo	$a3
    sra	$a2,$a3,0x3
    srl	$a2,$a2,0x1c
    addu	$a2,$a2,$a3
    li	$a3,-4
    sra	$a2,$a2,0x4
    addu	$a2,$a2,$a2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0ae1ac
    sw	$a2,8($a7)
    ld	$s2,16($sp)
    ld	$s0,0($sp)
    # Line 5597
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0ae174:
    # Line 5601
    la	$a3,comm_buffer
    la	$a0,comm_stdsize
    lw	$a3,0($a3)
    lw	$a0,0($a0)
    # Line 5600
    sw	$v0,0($a5)
    # Line 5601
    addu	$a0,$a0,$a3
    addiu	$v1,$a0,-24
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$v0
    bnez	$a0,.L0f0ae208
    sw	$v1,0($a6)
.L0f0ae1a0:
    ld	$gp,24($sp)
    # Line 5603
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ae1ac:
    # Line 5599
    li	$a4,92
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    addiu	$a0,$v0,12
    la	$t9,gl_mem_pack_array
    ld	$s2,16($sp)
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s8,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0ae174
    ld	$s0,0($sp)
.L0f0ae1e4:
    # Line 5590
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ae11c
    lw	$a7,0($a5)
.L0f0ae208:
    # Line 5602
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0ae1a0
    ld	$ra,32($sp)
.end gl_d_defpattern

# Function: gl_d_getpattern
# Declared: Line 5605 (Source lines: 5611-5618)
# Address: 0x0f0ae220 - 0x0f0ae278 (Size: 88 bytes, Frame: 16)
.globl gl_d_getpattern
.ent gl_d_getpattern
gl_d_getpattern:
    # Line 5611
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,20520
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 5616
    li	$a0,1
    sd	$ra,0($sp)
    # Line 5613
    lw	$a1,0($v0)
    # Line 5614
    li	$v1,281
    # Line 5616
    la	$t9,gl_comm_read_data
    # Line 5614
    sw	$v1,0($a1)
    # Line 5615
    addiu	$at,$a1,4
    # Line 5616
    jalr	$t9
    # Line 5615
    sw	$at,0($v0)
    # Line 5617
    la	$v0,comm_buffer
    # Line 5618
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getpattern

# Function: gl_d_setpattern
# Declared: Line 5621 (Source lines: 5628-5635)
# Address: 0x0f0ae278 - 0x0f0ae2e4 (Size: 108 bytes, Frame: 32)
.globl gl_d_setpattern
.ent gl_d_setpattern
gl_d_setpattern:
    # Line 5628
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,20432 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5631
    li	$a1,282
    # Line 5628
    dsll32	$a0,$a0,0x10
    # Line 5630
    lw	$v0,0($v1)
    # Line 5628
    dsra32	$a0,$a0,0x10
    # Line 5633
    la	$at,comm_endbuffer
    # Line 5632
    sh	$a0,4($v0)
    # Line 5631
    sw	$a1,0($v0)
    # Line 5633
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae2cc
    sw	$v0,0($v1)
.L0f0ae2c0:
    ld	$gp,0($sp)
    # Line 5635
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae2cc:
    # Line 5634
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae2c0
    ld	$ra,8($sp)
.end gl_d_setpattern

# Function: gl_d_objinsert
# Declared: Line 5637 (Source lines: 5644-5651)
# Address: 0x0f0ae2e4 - 0x0f0ae348 (Size: 100 bytes, Frame: 32)
.globl gl_d_objinsert
.ent gl_d_objinsert
gl_d_objinsert:
    # Line 5644
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,20324 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5646
    lw	$v0,0($v1)
    # Line 5647
    li	$a1,283
    # Line 5649
    la	$at,comm_endbuffer
    # Line 5648
    sw	$a0,4($v0)
    # Line 5647
    sw	$a1,0($v0)
    # Line 5649
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae330
    sw	$v0,0($v1)
.L0f0ae324:
    ld	$gp,0($sp)
    # Line 5651
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae330:
    # Line 5650
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae324
    ld	$ra,8($sp)
.end gl_d_objinsert

# Function: gl_d_objdelete
# Declared: Line 5653 (Source lines: 5661-5669)
# Address: 0x0f0ae348 - 0x0f0ae3b0 (Size: 104 bytes, Frame: 32)
.globl gl_d_objdelete
.ent gl_d_objdelete
gl_d_objdelete:
    # Line 5661
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,20224 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5663
    lw	$v0,0($v1)
    # Line 5664
    li	$a2,284
    # Line 5667
    la	$at,comm_endbuffer
    # Line 5666
    sw	$a1,8($v0)
    # Line 5665
    sw	$a0,4($v0)
    # Line 5664
    sw	$a2,0($v0)
    # Line 5667
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae398
    sw	$v0,0($v1)
.L0f0ae38c:
    ld	$gp,0($sp)
    # Line 5669
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae398:
    # Line 5668
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae38c
    ld	$ra,8($sp)
.end gl_d_objdelete

# Function: gl_d_objreplace
# Declared: Line 5671 (Source lines: 5678-5685)
# Address: 0x0f0ae3b0 - 0x0f0ae414 (Size: 100 bytes, Frame: 32)
.globl gl_d_objreplace
.ent gl_d_objreplace
gl_d_objreplace:
    # Line 5678
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,20120 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5680
    lw	$v0,0($v1)
    # Line 5681
    li	$a1,285
    # Line 5683
    la	$at,comm_endbuffer
    # Line 5682
    sw	$a0,4($v0)
    # Line 5681
    sw	$a1,0($v0)
    # Line 5683
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae3fc
    sw	$v0,0($v1)
.L0f0ae3f0:
    ld	$gp,0($sp)
    # Line 5685
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae3fc:
    # Line 5684
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae3f0
    ld	$ra,8($sp)
.end gl_d_objreplace

# Function: gl_d_zclear
# Declared: Line 5687 (Source lines: 5693-5699)
# Address: 0x0f0ae414 - 0x0f0ae474 (Size: 96 bytes, Frame: 16)
.globl gl_d_zclear
.ent gl_d_zclear
gl_d_zclear:
    # Line 5693
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,20020
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 5695
    lw	$v0,0($v1)
    # Line 5696
    li	$a0,286
    # Line 5697
    la	$at,comm_endbuffer
    # Line 5696
    sw	$a0,0($v0)
    # Line 5697
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae45c
    sw	$v0,0($v1)
.L0f0ae450:
    ld	$gp,0($sp)
    # Line 5699
    jr	$ra
    addiu	$sp,$sp,16
.L0f0ae45c:
    # Line 5698
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae450
    ld	$ra,8($sp)
.end gl_d_zclear

# Function: gl_d_curorigin
# Declared: Line 5701 (Source lines: 5710-5719)
# Address: 0x0f0ae474 - 0x0f0ae4f8 (Size: 132 bytes, Frame: 48)
.globl gl_d_curorigin
.ent gl_d_curorigin
gl_d_curorigin:
    # Line 5710
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,19924 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 5712
    lw	$v0,0($v1)
    # Line 5713
    li	$t9,287
    # Line 5717
    la	$at,comm_endbuffer
    # Line 5716
    sh	$a0,8($v0)
    # Line 5715
    sh	$a1,6($v0)
    # Line 5714
    sh	$a3,4($v0)
    # Line 5713
    sw	$t9,0($v0)
    # Line 5717
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae4e0
    sw	$v0,0($v1)
.L0f0ae4d4:
    ld	$gp,0($sp)
    # Line 5719
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ae4e0:
    # Line 5718
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae4d4
    ld	$ra,8($sp)
.end gl_d_curorigin

# Function: gl_d_pagewritemask
# Declared: Line 5721 (Source lines: 5728-5735)
# Address: 0x0f0ae4f8 - 0x0f0ae560 (Size: 104 bytes, Frame: 32)
.globl gl_d_pagewritemask
.ent gl_d_pagewritemask
gl_d_pagewritemask:
    # Line 5728
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,19792 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5731
    li	$a1,288
    # Line 5730
    lw	$v0,0($v1)
    # Line 5728
    andi	$a0,$a0,0xffff
    # Line 5733
    la	$at,comm_endbuffer
    # Line 5732
    sh	$a0,4($v0)
    # Line 5731
    sw	$a1,0($v0)
    # Line 5733
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae548
    sw	$v0,0($v1)
.L0f0ae53c:
    ld	$gp,0($sp)
    # Line 5735
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae548:
    # Line 5734
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae53c
    ld	$ra,8($sp)
.end gl_d_pagewritemask

# Function: gl_d_patchcurves
# Declared: Line 5737 (Source lines: 5745-5753)
# Address: 0x0f0ae560 - 0x0f0ae5c8 (Size: 104 bytes, Frame: 32)
.globl gl_d_patchcurves
.ent gl_d_patchcurves
gl_d_patchcurves:
    # Line 5745
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,19688 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5747
    lw	$v0,0($v1)
    # Line 5748
    li	$a2,289
    # Line 5751
    la	$at,comm_endbuffer
    # Line 5750
    sw	$a1,8($v0)
    # Line 5749
    sw	$a0,4($v0)
    # Line 5748
    sw	$a2,0($v0)
    # Line 5751
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae5b0
    sw	$v0,0($v1)
.L0f0ae5a4:
    ld	$gp,0($sp)
    # Line 5753
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae5b0:
    # Line 5752
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae5a4
    ld	$ra,8($sp)
.end gl_d_patchcurves

# Function: gl_d_dbtext
# Declared: Line 5755 (Source lines: 5762-5777)
# Address: 0x0f0ae5c8 - 0x0f0ae6c8 (Size: 256 bytes, Frame: 48)
.globl gl_d_dbtext
.ent gl_d_dbtext
gl_d_dbtext:
    # Line 5762
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,19584 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    lw	$a5,0($a1)
    lw	$at,0($a4)
    sd	$s0,0($sp)
    addiu	$v0,$a5,84
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae68c
    move	$s0,$a0
.L0f0ae600:
    # Line 5766
    move	$v0,$a5
    # Line 5769
    li	$a2,8
    # Line 5767
    li	$a3,290
    sw	$a3,0($a5)
    # Line 5769
    bnez	$s0,.L0f0ae658
    sw	$a2,4($a5)
    # Line 5771
    addiu	$v0,$v0,16
    ld	$s0,0($sp)
.L0f0ae620:
    # Line 5775
    la	$a2,comm_buffer
    la	$v1,comm_stdsize
    lw	$a2,0($a2)
    lw	$v1,0($v1)
    # Line 5774
    sw	$v0,0($a1)
    # Line 5775
    addu	$v1,$v1,$a2
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0ae6b0
    sw	$at,0($a4)
.L0f0ae64c:
    ld	$gp,8($sp)
    # Line 5777
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ae658:
    # Line 5773
    li	$a4,84
    la	$a3,gl_mem_copy_array
    li	$a2,8
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    ld	$ra,16($sp)
    b	.L0f0ae620
    ld	$s0,0($sp)
.L0f0ae68c:
    # Line 5766
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a4,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0ae600
    lw	$a5,0($a1)
.L0f0ae6b0:
    # Line 5776
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    b	.L0f0ae64c
    ld	$ra,16($sp)
.end gl_d_dbtext

# Function: gl_d_backface
# Declared: Line 5779 (Source lines: 5786-5793)
# Address: 0x0f0ae6c8 - 0x0f0ae72c (Size: 100 bytes, Frame: 32)
.globl gl_d_backface
.ent gl_d_backface
gl_d_backface:
    # Line 5786
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,19328 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5788
    lw	$v0,0($v1)
    # Line 5789
    li	$a1,291
    # Line 5791
    la	$at,comm_endbuffer
    # Line 5790
    sw	$a0,4($v0)
    # Line 5789
    sw	$a1,0($v0)
    # Line 5791
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae714
    sw	$v0,0($v1)
.L0f0ae708:
    ld	$gp,0($sp)
    # Line 5793
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae714:
    # Line 5792
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae708
    ld	$ra,8($sp)
.end gl_d_backface

# Function: gl_d_cyclemap
# Declared: Line 5795 (Source lines: 5804-5814)
# Address: 0x0f0ae72c - 0x0f0ae7c0 (Size: 148 bytes, Frame: 48)
.globl gl_d_cyclemap
.ent gl_d_cyclemap
gl_d_cyclemap:
    # Line 5804
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,19228 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a1,$a1,0x10
    dsra32	$a0,$a0,0x10
    # Line 5806
    lw	$v0,0($v1)
    # Line 5807
    li	$t9,292
    # Line 5811
    la	$at,comm_endbuffer
    # Line 5810
    sh	$a0,8($v0)
    # Line 5809
    sh	$a1,6($v0)
    # Line 5808
    sh	$a3,4($v0)
    # Line 5807
    sw	$t9,0($v0)
    # Line 5811
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae7ac
    sw	$v0,0($v1)
    # Line 5813
    la	$t9,gl_comm_flush
.L0f0ae794:
    jalr	$t9
    nop
    # Line 5814
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ae7ac:
    # Line 5812
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0ae794
    # Line 5813
    la	$t9,gl_comm_flush
.end gl_d_cyclemap

# Function: gl_d_minsize
# Declared: Line 5816 (Source lines: 5824-5832)
# Address: 0x0f0ae7c0 - 0x0f0ae828 (Size: 104 bytes, Frame: 32)
.globl gl_d_minsize
.ent gl_d_minsize
gl_d_minsize:
    # Line 5824
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,19080 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5826
    lw	$v0,0($v1)
    # Line 5827
    li	$a2,293
    # Line 5830
    la	$at,comm_endbuffer
    # Line 5829
    sw	$a1,8($v0)
    # Line 5828
    sw	$a0,4($v0)
    # Line 5827
    sw	$a2,0($v0)
    # Line 5830
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae810
    sw	$v0,0($v1)
.L0f0ae804:
    ld	$gp,0($sp)
    # Line 5832
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae810:
    # Line 5831
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae804
    ld	$ra,8($sp)
.end gl_d_minsize

# Function: gl_d_maxsize
# Declared: Line 5834 (Source lines: 5842-5850)
# Address: 0x0f0ae828 - 0x0f0ae890 (Size: 104 bytes, Frame: 32)
.globl gl_d_maxsize
.ent gl_d_maxsize
gl_d_maxsize:
    # Line 5842
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,18976 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5844
    lw	$v0,0($v1)
    # Line 5845
    li	$a2,294
    # Line 5848
    la	$at,comm_endbuffer
    # Line 5847
    sw	$a1,8($v0)
    # Line 5846
    sw	$a0,4($v0)
    # Line 5845
    sw	$a2,0($v0)
    # Line 5848
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae878
    sw	$v0,0($v1)
.L0f0ae86c:
    ld	$gp,0($sp)
    # Line 5850
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae878:
    # Line 5849
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae86c
    ld	$ra,8($sp)
.end gl_d_maxsize

# Function: gl_d_keepaspect
# Declared: Line 5852 (Source lines: 5860-5868)
# Address: 0x0f0ae890 - 0x0f0ae8f8 (Size: 104 bytes, Frame: 32)
.globl gl_d_keepaspect
.ent gl_d_keepaspect
gl_d_keepaspect:
    # Line 5860
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,18872 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5862
    lw	$v0,0($v1)
    # Line 5863
    li	$a2,295
    # Line 5866
    la	$at,comm_endbuffer
    # Line 5865
    sw	$a1,8($v0)
    # Line 5864
    sw	$a0,4($v0)
    # Line 5863
    sw	$a2,0($v0)
    # Line 5866
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae8e0
    sw	$v0,0($v1)
.L0f0ae8d4:
    ld	$gp,0($sp)
    # Line 5868
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae8e0:
    # Line 5867
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae8d4
    ld	$ra,8($sp)
.end gl_d_keepaspect

# Function: gl_d_prefsize
# Declared: Line 5870 (Source lines: 5878-5886)
# Address: 0x0f0ae8f8 - 0x0f0ae960 (Size: 104 bytes, Frame: 32)
.globl gl_d_prefsize
.ent gl_d_prefsize
gl_d_prefsize:
    # Line 5878
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,18768 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5880
    lw	$v0,0($v1)
    # Line 5881
    li	$a2,296
    # Line 5884
    la	$at,comm_endbuffer
    # Line 5883
    sw	$a1,8($v0)
    # Line 5882
    sw	$a0,4($v0)
    # Line 5881
    sw	$a2,0($v0)
    # Line 5884
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae948
    sw	$v0,0($v1)
.L0f0ae93c:
    ld	$gp,0($sp)
    # Line 5886
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae948:
    # Line 5885
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae93c
    ld	$ra,8($sp)
.end gl_d_prefsize

# Function: gl_d_stepunit
# Declared: Line 5888 (Source lines: 5896-5904)
# Address: 0x0f0ae960 - 0x0f0ae9c8 (Size: 104 bytes, Frame: 32)
.globl gl_d_stepunit
.ent gl_d_stepunit
gl_d_stepunit:
    # Line 5896
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,18664 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5898
    lw	$v0,0($v1)
    # Line 5899
    li	$a2,297
    # Line 5902
    la	$at,comm_endbuffer
    # Line 5901
    sw	$a1,8($v0)
    # Line 5900
    sw	$a0,4($v0)
    # Line 5899
    sw	$a2,0($v0)
    # Line 5902
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ae9b0
    sw	$v0,0($v1)
.L0f0ae9a4:
    ld	$gp,0($sp)
    # Line 5904
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ae9b0:
    # Line 5903
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ae9a4
    ld	$ra,8($sp)
.end gl_d_stepunit

# Function: gl_d_fudge
# Declared: Line 5906 (Source lines: 5914-5922)
# Address: 0x0f0ae9c8 - 0x0f0aea30 (Size: 104 bytes, Frame: 32)
.globl gl_d_fudge
.ent gl_d_fudge
gl_d_fudge:
    # Line 5914
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,18560 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5916
    lw	$v0,0($v1)
    # Line 5917
    li	$a2,298
    # Line 5920
    la	$at,comm_endbuffer
    # Line 5919
    sw	$a1,8($v0)
    # Line 5918
    sw	$a0,4($v0)
    # Line 5917
    sw	$a2,0($v0)
    # Line 5920
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aea18
    sw	$v0,0($v1)
.L0f0aea0c:
    ld	$gp,0($sp)
    # Line 5922
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aea18:
    # Line 5921
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aea0c
    ld	$ra,8($sp)
.end gl_d_fudge

# Function: gl_d_prefposition
# Declared: Line 5924 (Source lines: 5934-5944)
# Address: 0x0f0aea30 - 0x0f0aeaa0 (Size: 112 bytes, Frame: 48)
.globl gl_d_prefposition
.ent gl_d_prefposition
gl_d_prefposition:
    # Line 5934
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,18456 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 5936
    lw	$v0,0($v1)
    # Line 5937
    li	$a4,299
    # Line 5942
    la	$at,comm_endbuffer
    # Line 5941
    sw	$a3,16($v0)
    # Line 5940
    sw	$a2,12($v0)
    # Line 5939
    sw	$a1,8($v0)
    # Line 5938
    sw	$a0,4($v0)
    # Line 5937
    sw	$a4,0($v0)
    # Line 5942
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aea88
    sw	$v0,0($v1)
.L0f0aea7c:
    ld	$gp,0($sp)
    # Line 5944
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aea88:
    # Line 5943
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aea7c
    ld	$ra,8($sp)
.end gl_d_prefposition

# Function: gl_dgl_getport
# Declared: Line 5946 (Source lines: 5953-5968)
# Address: 0x0f0aeaa0 - 0x0f0aebb8 (Size: 280 bytes, Frame: 48)
.globl gl_dgl_getport
.ent gl_dgl_getport
gl_dgl_getport:
    # Line 5953
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,18344 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,16($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0aeb88
    move	$s1,$a0
.L0f0aeadc:
    sd	$s0,24($sp)
    # Line 5957
    move	$s0,$v0
    # Line 5959
    la	$t9,strlen
    move	$a0,$s1
    # Line 5958
    li	$a1,300
    # Line 5959
    jalr	$t9
    # Line 5958
    sw	$a1,0($v0)
    ld	$ra,16($sp)
    # Line 5960
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0aeb60
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 5962
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0aeb1c:
    # Line 5966
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    la	$a4,comm_curbufpos
    lw	$v1,0($v1)
    lw	$at,0($at)
    la	$a3,comm_endbuffer
    # Line 5965
    sw	$s0,0($a4)
    # Line 5966
    addu	$at,$at,$v1
    addiu	$v1,$at,-24
    sw	$v1,0($a3)
    addiu	$at,$at,-24
    sltu	$at,$at,$s0
    bnez	$at,.L0f0aeba4
    ld	$s0,24($sp)
.L0f0aeb54:
    ld	$gp,8($sp)
    # Line 5968
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aeb60:
    # Line 5964
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    ld	$ra,16($sp)
    b	.L0f0aeb1c
    ld	$s1,0($sp)
.L0f0aeb88:
    # Line 5957
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,24($sp)
    b	.L0f0aeadc
    lw	$v0,0($v0)
.L0f0aeba4:
    # Line 5967
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s0,24($sp)
    b	.L0f0aeb54
    ld	$ra,16($sp)
.end gl_dgl_getport

# Function: gl_d_getpor
# Declared: Line 5970 (Source lines: 5978-5994)
# Address: 0x0f0aebb8 - 0x0f0aecd4 (Size: 284 bytes, Frame: 48)
.globl gl_d_getpor
.ent gl_d_getpor
gl_d_getpor:
    # Line 5978
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,18064 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s1,0($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aec98
    move	$s1,$a0
.L0f0aebf8:
    # Line 5982
    move	$v0,$a7
    # Line 5985
    li	$a3,-4
    addiu	$a2,$s0,3
    and	$a2,$a2,$a3
    # Line 5983
    li	$a3,301
    sw	$a3,0($a7)
    # Line 5985
    bnez	$s1,.L0f0aec68
    sw	$a2,4($a7)
    ld	$s1,0($sp)
    # Line 5987
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0aec24:
    # Line 5990
    sw	$s0,0($v0)
    # Line 5992
    la	$a3,comm_buffer
    la	$v1,comm_stdsize
    ld	$s0,8($sp)
    lw	$a3,0($a3)
    lw	$v1,0($v1)
    # Line 5991
    addiu	$a4,$v0,4
    sw	$a4,0($a5)
    # Line 5992
    addu	$v1,$v1,$a3
    addiu	$a3,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$a4
    bnez	$v1,.L0f0aecbc
    sw	$a3,0($a6)
.L0f0aec5c:
    ld	$gp,16($sp)
    # Line 5994
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aec68:
    # Line 5989
    li	$a4,88
    la	$a3,gl_mem_copy_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0aec24
    ld	$s1,0($sp)
.L0f0aec98:
    # Line 5982
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0aebf8
    lw	$a7,0($a5)
.L0f0aecbc:
    # Line 5993
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s0,8($sp)
    b	.L0f0aec5c
    ld	$ra,24($sp)
.end gl_d_getpor

# Function: gl_d_getsize
# Declared: Line 5996 (Source lines: 6004-6014)
# Address: 0x0f0aecd4 - 0x0f0aed50 (Size: 124 bytes, Frame: 48)
.globl gl_d_getsize
.ent gl_d_getsize
gl_d_getsize:
    # Line 6004
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 6011
    li	$a0,1
    sd	$gp,16($sp)
    # Line 6004
    lui	$a3,0xfff8
    addiu	$a3,$a3,17780
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    # Line 6006
    lw	$a2,0($v0)
    # Line 6007
    li	$v1,302
    # Line 6011
    la	$t9,gl_comm_read_data
    # Line 6007
    sw	$v1,0($a2)
    # Line 6010
    addiu	$at,$a2,4
    # Line 6011
    jalr	$t9
    # Line 6010
    sw	$at,0($v0)
    # Line 6012
    la	$ra,comm_buffer
    lw	$at,0($ra)
    lw	$at,4($at)
    sw	$at,0($s8)
    # Line 6013
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lw	$s8,8($s8)
    sw	$s8,0($ra)
    # Line 6014
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_getsize

# Function: gl_d_getorigin
# Declared: Line 6016 (Source lines: 6024-6034)
# Address: 0x0f0aed50 - 0x0f0aedcc (Size: 124 bytes, Frame: 48)
.globl gl_d_getorigin
.ent gl_d_getorigin
gl_d_getorigin:
    # Line 6024
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 6031
    li	$a0,1
    sd	$gp,16($sp)
    # Line 6024
    lui	$a3,0xfff8
    addiu	$a3,$a3,17656
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    # Line 6026
    lw	$a2,0($v0)
    # Line 6027
    li	$v1,303
    # Line 6031
    la	$t9,gl_comm_read_data
    # Line 6027
    sw	$v1,0($a2)
    # Line 6030
    addiu	$at,$a2,4
    # Line 6031
    jalr	$t9
    # Line 6030
    sw	$at,0($v0)
    # Line 6032
    la	$ra,comm_buffer
    lw	$at,0($ra)
    lw	$at,4($at)
    sw	$at,0($s8)
    # Line 6033
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lw	$s8,8($s8)
    sw	$s8,0($ra)
    # Line 6034
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_getorigin

# Function: gl_d_screenspace
# Declared: Line 6036 (Source lines: 6042-6048)
# Address: 0x0f0aedcc - 0x0f0aee2c (Size: 96 bytes, Frame: 16)
.globl gl_d_screenspace
.ent gl_d_screenspace
gl_d_screenspace:
    # Line 6042
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,17532
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6044
    lw	$v0,0($v1)
    # Line 6045
    li	$a0,304
    # Line 6046
    la	$at,comm_endbuffer
    # Line 6045
    sw	$a0,0($v0)
    # Line 6046
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aee14
    sw	$v0,0($v1)
.L0f0aee08:
    ld	$gp,0($sp)
    # Line 6048
    jr	$ra
    addiu	$sp,$sp,16
.L0f0aee14:
    # Line 6047
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aee08
    ld	$ra,8($sp)
.end gl_d_screenspace

# Function: gl_d_reshapeviewport
# Declared: Line 6050 (Source lines: 6056-6063)
# Address: 0x0f0aee2c - 0x0f0aee9c (Size: 112 bytes, Frame: 16)
.globl gl_d_reshapeviewport
.ent gl_d_reshapeviewport
gl_d_reshapeviewport:
    # Line 6056
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,17436
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6058
    lw	$v0,0($v1)
    # Line 6059
    li	$a0,305
    # Line 6060
    la	$at,comm_endbuffer
    # Line 6059
    sw	$a0,0($v0)
    # Line 6060
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aee88
    sw	$v0,0($v1)
    # Line 6062
    la	$t9,gl_comm_flush
.L0f0aee70:
    jalr	$t9
    nop
    # Line 6063
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0aee88:
    # Line 6061
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0aee70
    # Line 6062
    la	$t9,gl_comm_flush
.end gl_d_reshapeviewport

# Function: gl_dgl_winopen
# Declared: Line 6065 (Source lines: 6072-6088)
# Address: 0x0f0aee9c - 0x0f0aefb0 (Size: 276 bytes, Frame: 48)
.globl gl_dgl_winopen
.ent gl_dgl_winopen
gl_dgl_winopen:
    # Line 6072
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,17324 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,24($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0aef94
    move	$s1,$a0
.L0f0aeed8:
    sd	$s0,16($sp)
    # Line 6076
    move	$s0,$v0
    # Line 6078
    la	$t9,strlen
    move	$a0,$s1
    # Line 6077
    li	$a1,306
    # Line 6078
    jalr	$t9
    # Line 6077
    sw	$a1,0($v0)
    # Line 6079
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0aef70
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 6081
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0aef14:
    # Line 6086
    li	$a0,1
    # Line 6083
    la	$at,comm_buffer
    # Line 6085
    la	$t8,comm_stdsize
    la	$v0,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 6086
    la	$t9,gl_comm_read_data
    la	$ra,comm_endbuffer
    # Line 6085
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 6086
    jalr	$t9
    # Line 6084
    sw	$s0,0($v0)
    la	$a0,comm_buffer
    # Line 6088
    la	$t9,__GLgl_dgl_wid_from_gl
    lw	$a0,0($a0)
    ld	$s0,16($sp)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0aef70:
    # Line 6083
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    b	.L0f0aef14
    ld	$s1,0($sp)
.L0f0aef94:
    # Line 6076
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,16($sp)
    b	.L0f0aeed8
    lw	$v0,0($v0)
.end gl_dgl_winopen

# Function: gl_dgl_winope
# Declared: Line 6091 (Source lines: 6099-6116)
# Address: 0x0f0aefb0 - 0x0f0af0cc (Size: 284 bytes, Frame: 48)
.globl gl_dgl_winope
.ent gl_dgl_winope
gl_dgl_winope:
    # Line 6099
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,17048 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s1,0($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af0a8
    move	$s1,$a0
.L0f0aeff0:
    # Line 6103
    move	$v0,$a7
    # Line 6106
    li	$a3,-4
    addiu	$a2,$s0,3
    and	$a2,$a2,$a3
    # Line 6104
    li	$a3,307
    sw	$a3,0($a7)
    # Line 6106
    bnez	$s1,.L0f0af07c
    sw	$a2,4($a7)
    sd	$ra,24($sp)
    ld	$s1,0($sp)
    # Line 6108
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0af020:
    # Line 6114
    li	$a0,1
    # Line 6111
    sw	$s0,0($v0)
    # Line 6110
    la	$a1,comm_buffer
    # Line 6113
    la	$v1,comm_stdsize
    # Line 6112
    addiu	$a2,$v0,4
    # Line 6113
    lw	$a1,0($a1)
    lw	$v1,0($v1)
    # Line 6112
    sw	$a2,0($a5)
    # Line 6114
    la	$t9,gl_comm_read_data
    # Line 6113
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 6114
    jalr	$t9
    # Line 6113
    sw	$v1,0($a6)
    la	$a0,comm_buffer
    # Line 6116
    la	$t9,__GLgl_dgl_wid_from_gl
    lw	$a0,0($a0)
    ld	$s0,8($sp)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0af07c:
    # Line 6110
    li	$a4,88
    la	$a3,gl_mem_copy_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    b	.L0f0af020
    ld	$s1,0($sp)
.L0f0af0a8:
    # Line 6103
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0aeff0
    lw	$a7,0($a5)
.end gl_dgl_winope

# Function: gl_dgl_winclose
# Declared: Line 6119 (Source lines: 6126-6134)
# Address: 0x0f0af0cc - 0x0f0af140 (Size: 116 bytes, Frame: 32)
.globl gl_dgl_winclose
.ent gl_dgl_winclose
gl_dgl_winclose:
    # Line 6126
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,16764 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6128
    lw	$v0,0($v1)
    # Line 6129
    li	$a1,308
    # Line 6131
    la	$at,comm_endbuffer
    # Line 6130
    sw	$a0,4($v0)
    # Line 6129
    sw	$a1,0($v0)
    # Line 6131
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af12c
    sw	$v0,0($v1)
    # Line 6133
    la	$t9,gl_comm_flush
.L0f0af114:
    jalr	$t9
    nop
    # Line 6134
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0af12c:
    # Line 6132
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0af114
    # Line 6133
    la	$t9,gl_comm_flush
.end gl_dgl_winclose

# Function: gl_dgl_winset
# Declared: Line 6136 (Source lines: 6143-6151)
# Address: 0x0f0af140 - 0x0f0af1b4 (Size: 116 bytes, Frame: 32)
.globl gl_dgl_winset
.ent gl_dgl_winset
gl_dgl_winset:
    # Line 6143
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,16648 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6145
    lw	$v0,0($v1)
    # Line 6146
    li	$a1,309
    # Line 6148
    la	$at,comm_endbuffer
    # Line 6147
    sw	$a0,4($v0)
    # Line 6146
    sw	$a1,0($v0)
    # Line 6148
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af1a0
    sw	$v0,0($v1)
    # Line 6150
    la	$t9,gl_comm_flush
.L0f0af188:
    jalr	$t9
    nop
    # Line 6151
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0af1a0:
    # Line 6149
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0af188
    # Line 6150
    la	$t9,gl_comm_flush
.end gl_dgl_winset

# Function: gl_d_winget
# Declared: Line 6153 (Source lines: 6159-6166)
# Address: 0x0f0af1b4 - 0x0f0af214 (Size: 96 bytes, Frame: 16)
.globl gl_d_winget
.ent gl_d_winget
gl_d_winget:
    # Line 6159
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,16532
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 6164
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6161
    lw	$a1,0($v0)
    # Line 6162
    li	$v1,310
    # Line 6164
    la	$t9,gl_comm_read_data
    # Line 6162
    sw	$v1,0($a1)
    # Line 6163
    addiu	$at,$a1,4
    # Line 6164
    jalr	$t9
    # Line 6163
    sw	$at,0($v0)
    # Line 6165
    la	$a0,comm_buffer
    # Line 6166
    la	$t9,__GLgl_dgl_wid_from_gl
    lw	$a0,0($a0)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_winget

# Function: gl_d_winpush
# Declared: Line 6169 (Source lines: 6175-6182)
# Address: 0x0f0af214 - 0x0f0af284 (Size: 112 bytes, Frame: 16)
.globl gl_d_winpush
.ent gl_d_winpush
gl_d_winpush:
    # Line 6175
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,16436
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6177
    lw	$v0,0($v1)
    # Line 6178
    li	$a0,311
    # Line 6179
    la	$at,comm_endbuffer
    # Line 6178
    sw	$a0,0($v0)
    # Line 6179
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af270
    sw	$v0,0($v1)
    # Line 6181
    la	$t9,gl_comm_flush
.L0f0af258:
    jalr	$t9
    nop
    # Line 6182
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0af270:
    # Line 6180
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0af258
    # Line 6181
    la	$t9,gl_comm_flush
.end gl_d_winpush

# Function: gl_d_winpop
# Declared: Line 6184 (Source lines: 6190-6197)
# Address: 0x0f0af284 - 0x0f0af2f4 (Size: 112 bytes, Frame: 16)
.globl gl_d_winpop
.ent gl_d_winpop
gl_d_winpop:
    # Line 6190
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,16324
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6192
    lw	$v0,0($v1)
    # Line 6193
    li	$a0,312
    # Line 6194
    la	$at,comm_endbuffer
    # Line 6193
    sw	$a0,0($v0)
    # Line 6194
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af2e0
    sw	$v0,0($v1)
    # Line 6196
    la	$t9,gl_comm_flush
.L0f0af2c8:
    jalr	$t9
    nop
    # Line 6197
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f0af2e0:
    # Line 6195
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0af2c8
    # Line 6196
    la	$t9,gl_comm_flush
.end gl_d_winpop

# Function: gl_d_winattach
# Declared: Line 6199 (Source lines: 6205-6212)
# Address: 0x0f0af2f4 - 0x0f0af354 (Size: 96 bytes, Frame: 16)
.globl gl_d_winattach
.ent gl_d_winattach
gl_d_winattach:
    # Line 6205
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,16212
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 6210
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6207
    lw	$a1,0($v0)
    # Line 6208
    li	$v1,313
    # Line 6210
    la	$t9,gl_comm_read_data
    # Line 6208
    sw	$v1,0($a1)
    # Line 6209
    addiu	$at,$a1,4
    # Line 6210
    jalr	$t9
    # Line 6209
    sw	$at,0($v0)
    # Line 6211
    la	$a0,comm_buffer
    # Line 6212
    la	$t9,__GLgl_dgl_wid_from_gl
    lw	$a0,0($a0)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_winattach

# Function: gl_d_winmove
# Declared: Line 6215 (Source lines: 6223-6232)
# Address: 0x0f0af354 - 0x0f0af3cc (Size: 120 bytes, Frame: 32)
.globl gl_d_winmove
.ent gl_d_winmove
gl_d_winmove:
    # Line 6223
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,16116 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6225
    lw	$v0,0($v1)
    # Line 6226
    li	$a2,314
    # Line 6229
    la	$at,comm_endbuffer
    # Line 6228
    sw	$a1,8($v0)
    # Line 6227
    sw	$a0,4($v0)
    # Line 6226
    sw	$a2,0($v0)
    # Line 6229
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af3b8
    sw	$v0,0($v1)
    # Line 6231
    la	$t9,gl_comm_flush
.L0f0af3a0:
    jalr	$t9
    nop
    # Line 6232
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0af3b8:
    # Line 6230
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0af3a0
    # Line 6231
    la	$t9,gl_comm_flush
.end gl_d_winmove

# Function: gl_d_winposition
# Declared: Line 6234 (Source lines: 6244-6255)
# Address: 0x0f0af3cc - 0x0f0af44c (Size: 128 bytes, Frame: 48)
.globl gl_d_winposition
.ent gl_d_winposition
gl_d_winposition:
    # Line 6244
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,15996 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6246
    lw	$v0,0($v1)
    # Line 6247
    li	$a4,315
    # Line 6252
    la	$at,comm_endbuffer
    # Line 6251
    sw	$a3,16($v0)
    # Line 6250
    sw	$a2,12($v0)
    # Line 6249
    sw	$a1,8($v0)
    # Line 6248
    sw	$a0,4($v0)
    # Line 6247
    sw	$a4,0($v0)
    # Line 6252
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af438
    sw	$v0,0($v1)
    # Line 6254
    la	$t9,gl_comm_flush
.L0f0af420:
    jalr	$t9
    nop
    # Line 6255
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0af438:
    # Line 6253
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0af420
    # Line 6254
    la	$t9,gl_comm_flush
.end gl_d_winposition

# Function: gl_d_wintitle
# Declared: Line 6257 (Source lines: 6264-6279)
# Address: 0x0f0af44c - 0x0f0af564 (Size: 280 bytes, Frame: 48)
.globl gl_d_wintitle
.ent gl_d_wintitle
gl_d_wintitle:
    # Line 6264
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,15868 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,16($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0af534
    move	$s1,$a0
.L0f0af488:
    sd	$s0,24($sp)
    # Line 6268
    move	$s0,$v0
    # Line 6270
    la	$t9,strlen
    move	$a0,$s1
    # Line 6269
    li	$a1,316
    # Line 6270
    jalr	$t9
    # Line 6269
    sw	$a1,0($v0)
    ld	$ra,16($sp)
    # Line 6271
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0af50c
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 6273
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0af4c8:
    # Line 6277
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    la	$a4,comm_curbufpos
    lw	$v1,0($v1)
    lw	$at,0($at)
    la	$a3,comm_endbuffer
    # Line 6276
    sw	$s0,0($a4)
    # Line 6277
    addu	$at,$at,$v1
    addiu	$v1,$at,-24
    sw	$v1,0($a3)
    addiu	$at,$at,-24
    sltu	$at,$at,$s0
    bnez	$at,.L0f0af550
    ld	$s0,24($sp)
.L0f0af500:
    ld	$gp,8($sp)
    # Line 6279
    jr	$ra
    addiu	$sp,$sp,48
.L0f0af50c:
    # Line 6275
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    ld	$ra,16($sp)
    b	.L0f0af4c8
    ld	$s1,0($sp)
.L0f0af534:
    # Line 6268
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,24($sp)
    b	.L0f0af488
    lw	$v0,0($v0)
.L0f0af550:
    # Line 6278
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s0,24($sp)
    b	.L0f0af500
    ld	$ra,16($sp)
.end gl_d_wintitle

# Function: gl_d_wintit
# Declared: Line 6281 (Source lines: 6289-6305)
# Address: 0x0f0af564 - 0x0f0af680 (Size: 284 bytes, Frame: 48)
.globl gl_d_wintit
.ent gl_d_wintit
gl_d_wintit:
    # Line 6289
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,15588 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s1,0($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af644
    move	$s1,$a0
.L0f0af5a4:
    # Line 6293
    move	$v0,$a7
    # Line 6296
    li	$a3,-4
    addiu	$a2,$s0,3
    and	$a2,$a2,$a3
    # Line 6294
    li	$a3,317
    sw	$a3,0($a7)
    # Line 6296
    bnez	$s1,.L0f0af614
    sw	$a2,4($a7)
    ld	$s1,0($sp)
    # Line 6298
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0af5d0:
    # Line 6301
    sw	$s0,0($v0)
    # Line 6303
    la	$a3,comm_buffer
    la	$v1,comm_stdsize
    ld	$s0,8($sp)
    lw	$a3,0($a3)
    lw	$v1,0($v1)
    # Line 6302
    addiu	$a4,$v0,4
    sw	$a4,0($a5)
    # Line 6303
    addu	$v1,$v1,$a3
    addiu	$a3,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$a4
    bnez	$v1,.L0f0af668
    sw	$a3,0($a6)
.L0f0af608:
    ld	$gp,16($sp)
    # Line 6305
    jr	$ra
    addiu	$sp,$sp,48
.L0f0af614:
    # Line 6300
    li	$a4,88
    la	$a3,gl_mem_copy_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0af5d0
    ld	$s1,0($sp)
.L0f0af644:
    # Line 6293
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0af5a4
    lw	$a7,0($a5)
.L0f0af668:
    # Line 6304
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s0,8($sp)
    b	.L0f0af608
    ld	$ra,24($sp)
.end gl_d_wintit

# Function: gl_d_rects
# Declared: Line 6307 (Source lines: 6317-6327)
# Address: 0x0f0af680 - 0x0f0af710 (Size: 144 bytes, Frame: 48)
.globl gl_d_rects
.ent gl_d_rects
gl_d_rects:
    # Line 6320
    li	$a4,318
    # Line 6317
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,15304 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    dsll32	$t9,$a0,0x10
    la	$v1,comm_curbufpos
    dsll32	$a0,$a3,0x10
    # Line 6325
    la	$at,comm_endbuffer
    # Line 6319
    lw	$v0,0($v1)
    # Line 6317
    dsra32	$t9,$t9,0x10
    dsra32	$a0,$a0,0x10
    # Line 6324
    sh	$a0,10($v0)
    # Line 6321
    sh	$t9,4($v0)
    # Line 6320
    sw	$a4,0($v0)
    # Line 6317
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 6323
    sh	$a1,8($v0)
    # Line 6322
    sh	$a4,6($v0)
    # Line 6325
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af6f8
    sw	$v0,0($v1)
.L0f0af6ec:
    ld	$gp,0($sp)
    # Line 6327
    jr	$ra
    addiu	$sp,$sp,48
.L0f0af6f8:
    # Line 6326
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0af6ec
    ld	$ra,8($sp)
.end gl_d_rects

# Function: gl_d_rectfs
# Declared: Line 6329 (Source lines: 6339-6349)
# Address: 0x0f0af710 - 0x0f0af7a0 (Size: 144 bytes, Frame: 48)
.globl gl_d_rectfs
.ent gl_d_rectfs
gl_d_rectfs:
    # Line 6342
    li	$a4,319
    # Line 6339
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,15160 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    dsll32	$t9,$a0,0x10
    la	$v1,comm_curbufpos
    dsll32	$a0,$a3,0x10
    # Line 6347
    la	$at,comm_endbuffer
    # Line 6341
    lw	$v0,0($v1)
    # Line 6339
    dsra32	$t9,$t9,0x10
    dsra32	$a0,$a0,0x10
    # Line 6346
    sh	$a0,10($v0)
    # Line 6343
    sh	$t9,4($v0)
    # Line 6342
    sw	$a4,0($v0)
    # Line 6339
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 6345
    sh	$a1,8($v0)
    # Line 6344
    sh	$a4,6($v0)
    # Line 6347
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af788
    sw	$v0,0($v1)
.L0f0af77c:
    ld	$gp,0($sp)
    # Line 6349
    jr	$ra
    addiu	$sp,$sp,48
.L0f0af788:
    # Line 6348
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0af77c
    ld	$ra,8($sp)
.end gl_d_rectfs

# Function: gl_dgl_foreground
# Declared: Line 6351 (Source lines: 6357-6363)
# Address: 0x0f0af7a0 - 0x0f0af800 (Size: 96 bytes, Frame: 16)
.globl gl_dgl_foreground
.ent gl_dgl_foreground
gl_dgl_foreground:
    # Line 6357
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,15016
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6359
    lw	$v0,0($v1)
    # Line 6360
    li	$a0,320
    # Line 6361
    la	$at,comm_endbuffer
    # Line 6360
    sw	$a0,0($v0)
    # Line 6361
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af7e8
    sw	$v0,0($v1)
.L0f0af7dc:
    ld	$gp,0($sp)
    # Line 6363
    jr	$ra
    addiu	$sp,$sp,16
.L0f0af7e8:
    # Line 6362
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0af7dc
    ld	$ra,8($sp)
.end gl_dgl_foreground

# Function: gl_d_devport
# Declared: Line 6365 (Source lines: 6373-6381)
# Address: 0x0f0af800 - 0x0f0af868 (Size: 104 bytes, Frame: 32)
.globl gl_d_devport
.ent gl_d_devport
gl_d_devport:
    # Line 6373
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,14920 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6375
    lw	$v0,0($v1)
    # Line 6376
    li	$a2,321
    # Line 6379
    la	$at,comm_endbuffer
    # Line 6378
    sw	$a1,8($v0)
    # Line 6377
    sw	$a0,4($v0)
    # Line 6376
    sw	$a2,0($v0)
    # Line 6379
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af850
    sw	$v0,0($v1)
.L0f0af844:
    ld	$gp,0($sp)
    # Line 6381
    jr	$ra
    addiu	$sp,$sp,32
.L0f0af850:
    # Line 6380
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0af844
    ld	$ra,8($sp)
.end gl_d_devport

# Function: gl_d_getdev
# Declared: Line 6383 (Source lines: 6392-6412)
# Address: 0x0f0af868 - 0x0f0af9a8 (Size: 320 bytes, Frame: 208)
.globl gl_d_getdev
.ent gl_d_getdev
gl_d_getdev:
    # Line 6392
    addiu	$sp,$sp,-80
    sd	$a2,16($sp)
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,14816 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,96
    sltu	$at,$at,$v0
    bnez	$at,.L0f0af984
    move	$s2,$a0
.L0f0af8ac:
    # Line 6396
    move	$v0,$a7
    # Line 6398
    sw	$s2,4($a7)
    # Line 6397
    li	$a4,322
    sw	$a4,0($a7)
    # Line 6400
    li	$a3,-4
    addu	$a1,$s2,$s2
    addiu	$a2,$a1,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0af94c
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    sd	$ra,40($sp)
    ld	$s0,0($sp)
    # Line 6402
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0af8e8:
    # Line 6409
    li	$a0,1
    # Line 6405
    sw	$a1,0($v0)
    # Line 6406
    sw	$a1,4($v0)
    # Line 6404
    la	$a3,comm_buffer
    # Line 6408
    la	$v1,comm_stdsize
    # Line 6407
    addiu	$a2,$v0,8
    # Line 6408
    lw	$a1,0($a3)
    lw	$v1,0($v1)
    # Line 6407
    sw	$a2,0($a5)
    # Line 6409
    la	$t9,gl_comm_read_data
    # Line 6408
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 6409
    jalr	$t9
    # Line 6408
    sw	$v1,0($a6)
    la	$a1,comm_buffer
    # Line 6411
    ld	$a0,16($sp)
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    la	$a2,gl_mem_ntoh_short_array
    jalr	$t9
    addiu	$a1,$a1,4
    # Line 6412
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0af94c:
    # Line 6404
    li	$a4,96
    la	$a3,gl_mem_hton_short_array
    sd	$a1,32($sp)
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,40($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$a1,32($sp)
    b	.L0f0af8e8
    ld	$s0,0($sp)
.L0f0af984:
    # Line 6396
    la	$t9,gl_comm_flush
    sd	$ra,40($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,40($sp)
    b	.L0f0af8ac
    lw	$a7,0($a5)
.end gl_d_getdev

# Function: gl_d_ismex
# Declared: Line 6414 (Source lines: 6420-6427)
# Address: 0x0f0af9a8 - 0x0f0afa00 (Size: 88 bytes, Frame: 16)
.globl gl_d_ismex
.ent gl_d_ismex
gl_d_ismex:
    # Line 6420
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,14496
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 6425
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6422
    lw	$a1,0($v0)
    # Line 6423
    li	$v1,323
    # Line 6425
    la	$t9,gl_comm_read_data
    # Line 6423
    sw	$v1,0($a1)
    # Line 6424
    addiu	$at,$a1,4
    # Line 6425
    jalr	$t9
    # Line 6424
    sw	$at,0($v0)
    # Line 6426
    la	$v0,comm_buffer
    # Line 6427
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_ismex

# Function: gl_d_rcrv
# Declared: Line 6430 (Source lines: 6437-6452)
# Address: 0x0f0afa00 - 0x0f0afb00 (Size: 256 bytes, Frame: 48)
.globl gl_d_rcrv
.ent gl_d_rcrv
gl_d_rcrv:
    # Line 6437
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,14408 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    lw	$a5,0($a1)
    lw	$at,0($a4)
    sd	$s0,0($sp)
    addiu	$v0,$a5,84
    sltu	$at,$at,$v0
    bnez	$at,.L0f0afac4
    move	$s0,$a0
.L0f0afa38:
    # Line 6441
    move	$v0,$a5
    # Line 6444
    li	$a2,64
    # Line 6442
    li	$a3,324
    sw	$a3,0($a5)
    # Line 6444
    bnez	$s0,.L0f0afa90
    sw	$a2,4($a5)
    # Line 6446
    addiu	$v0,$v0,72
    ld	$s0,0($sp)
.L0f0afa58:
    # Line 6450
    la	$a2,comm_buffer
    la	$v1,comm_stdsize
    lw	$a2,0($a2)
    lw	$v1,0($v1)
    # Line 6449
    sw	$v0,0($a1)
    # Line 6450
    addu	$v1,$v1,$a2
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0afae8
    sw	$at,0($a4)
.L0f0afa84:
    ld	$gp,8($sp)
    # Line 6452
    jr	$ra
    addiu	$sp,$sp,48
.L0f0afa90:
    # Line 6448
    li	$a4,84
    la	$a3,gl_mem_hton_float_array
    li	$a2,64
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    ld	$ra,16($sp)
    b	.L0f0afa58
    ld	$s0,0($sp)
.L0f0afac4:
    # Line 6441
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a4,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0afa38
    lw	$a5,0($a1)
.L0f0afae8:
    # Line 6451
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    b	.L0f0afa84
    ld	$ra,16($sp)
.end gl_d_rcrv

# Function: gl_d_rcrvn
# Declared: Line 6454 (Source lines: 6462-6478)
# Address: 0x0f0afb00 - 0x0f0afc20 (Size: 288 bytes, Frame: 48)
.globl gl_d_rcrvn
.ent gl_d_rcrvn
gl_d_rcrvn:
    # Line 6462
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,14152 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0afbe4
    move	$s2,$a0
.L0f0afb40:
    # Line 6466
    move	$v0,$a7
    # Line 6468
    sw	$s2,4($a7)
    # Line 6470
    sll	$a2,$s2,0x4
    # Line 6467
    li	$a3,325
    sw	$a3,0($a7)
    # Line 6470
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0afbb0
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 6472
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0afb78:
    # Line 6476
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 6475
    sw	$v0,0($a5)
    # Line 6476
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0afc08
    sw	$v1,0($a6)
.L0f0afba4:
    ld	$gp,16($sp)
    # Line 6478
    jr	$ra
    addiu	$sp,$sp,48
.L0f0afbb0:
    # Line 6474
    li	$a4,88
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0afb78
    ld	$s0,0($sp)
.L0f0afbe4:
    # Line 6466
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0afb40
    lw	$a7,0($a5)
.L0f0afc08:
    # Line 6477
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0afba4
    ld	$ra,24($sp)
.end gl_d_rcrvn

# Function: gl_d_rpatch
# Declared: Line 6480 (Source lines: 6490-6523)
# Address: 0x0f0afc20 - 0x0f0afdf8 (Size: 472 bytes, Frame: 224)
.globl gl_d_rpatch
.ent gl_d_rpatch
gl_d_rpatch:
    # Line 6490
    addiu	$sp,$sp,-96
    sd	$s1,24($sp)
    move	$s1,$a3
    sd	$s4,16($sp)
    move	$s4,$a1
    sd	$gp,32($sp)
    sd	$s2,0($sp)
    lui	$s2,0xfff8
    addiu	$s2,$s2,13864
    addu	$gp,$t9,$s2
    la	$a6,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$s3,8($sp)
    lw	$a6,0($a6)
    lw	$at,0($at)
    move	$s3,$a0
    addiu	$v0,$a6,324
    sltu	$at,$at,$v0
    bnez	$at,.L0f0afdbc
    move	$s2,$a2
.L0f0afc70:
    # Line 6494
    move	$v0,$a6
    sd	$s0,40($sp)
    # Line 6497
    li	$s0,64
    # Line 6495
    li	$at,326
    sw	$at,0($a6)
    # Line 6497
    bnez	$s3,.L0f0afd08
    sw	$s0,4($a6)
    # Line 6499
    addiu	$v0,$v0,72
    ld	$s3,8($sp)
.L0f0afc94:
    # Line 6503
    bnez	$s4,.L0f0afd34
    sw	$s0,0($v0)
    # Line 6505
    addiu	$v0,$v0,68
    ld	$s4,16($sp)
.L0f0afca4:
    # Line 6509
    bnez	$s2,.L0f0afd60
    sw	$s0,0($v0)
    # Line 6511
    addiu	$v0,$v0,68
    ld	$s2,0($sp)
.L0f0afcb4:
    # Line 6515
    bnez	$s1,.L0f0afd8c
    sw	$s0,0($v0)
    # Line 6517
    addiu	$v0,$v0,68
    ld	$s0,40($sp)
    ld	$s1,24($sp)
.L0f0afcc8:
    # Line 6521
    la	$a4,comm_buffer
    la	$v1,comm_stdsize
    la	$at,comm_curbufpos
    lw	$a4,0($a4)
    lw	$v1,0($v1)
    la	$a5,comm_endbuffer
    # Line 6520
    sw	$v0,0($at)
    # Line 6521
    addu	$v1,$v1,$a4
    addiu	$a4,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0afde0
    sw	$a4,0($a5)
.L0f0afcfc:
    ld	$gp,32($sp)
    # Line 6523
    jr	$ra
    addiu	$sp,$sp,96
.L0f0afd08:
    # Line 6501
    li	$a4,324
    li	$a2,64
    move	$a1,$s3
    la	$t9,gl_mem_pack_array
    # Line 6499
    la	$a3,gl_mem_hton_float_array
    sd	$ra,48($sp)
    # Line 6501
    jalr	$t9
    addiu	$a0,$v0,8
    ld	$ra,48($sp)
    b	.L0f0afc94
    ld	$s3,8($sp)
.L0f0afd34:
    la	$a3,gl_mem_hton_float_array
    # Line 6507
    li	$a4,324
    li	$a2,64
    la	$t9,gl_mem_pack_array
    move	$a1,$s4
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a0,$v0,4
    ld	$ra,48($sp)
    b	.L0f0afca4
    ld	$s4,16($sp)
.L0f0afd60:
    la	$a3,gl_mem_hton_float_array
    # Line 6513
    li	$a4,324
    li	$a2,64
    la	$t9,gl_mem_pack_array
    move	$a1,$s2
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a0,$v0,4
    ld	$ra,48($sp)
    b	.L0f0afcb4
    ld	$s2,0($sp)
.L0f0afd8c:
    la	$a3,gl_mem_hton_float_array
    # Line 6519
    li	$a4,324
    li	$a2,64
    move	$a1,$s1
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,4
    sd	$ra,48($sp)
    jalr	$t9
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    b	.L0f0afcc8
    ld	$ra,48($sp)
.L0f0afdbc:
    # Line 6494
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    jalr	$t9
    nop
    sd	$s0,40($sp)
    la	$a6,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f0afc70
    lw	$a6,0($a6)
.L0f0afde0:
    # Line 6522
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    jalr	$t9
    nop
    b	.L0f0afcfc
    ld	$ra,48($sp)
.end gl_d_rpatch

# Function: gl_d_getothermonitor
# Declared: Line 6525 (Source lines: 6531-6538)
# Address: 0x0f0afdf8 - 0x0f0afe50 (Size: 88 bytes, Frame: 16)
.globl gl_d_getothermonitor
.ent gl_d_getothermonitor
gl_d_getothermonitor:
    # Line 6531
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,13392
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 6536
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6533
    lw	$a1,0($v0)
    # Line 6534
    li	$v1,327
    # Line 6536
    la	$t9,gl_comm_read_data
    # Line 6534
    sw	$v1,0($a1)
    # Line 6535
    addiu	$at,$a1,4
    # Line 6536
    jalr	$t9
    # Line 6535
    sw	$at,0($v0)
    # Line 6537
    la	$v0,comm_buffer
    # Line 6538
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getothermonitor

# Function: gl_d_blanktime
# Declared: Line 6541 (Source lines: 6548-6555)
# Address: 0x0f0afe50 - 0x0f0afeb4 (Size: 100 bytes, Frame: 32)
.globl gl_d_blanktime
.ent gl_d_blanktime
gl_d_blanktime:
    # Line 6548
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,13304 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6550
    lw	$v0,0($v1)
    # Line 6551
    li	$a1,328
    # Line 6553
    la	$at,comm_endbuffer
    # Line 6552
    sw	$a0,4($v0)
    # Line 6551
    sw	$a1,0($v0)
    # Line 6553
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0afe9c
    sw	$v0,0($v1)
.L0f0afe90:
    ld	$gp,0($sp)
    # Line 6555
    jr	$ra
    addiu	$sp,$sp,32
.L0f0afe9c:
    # Line 6554
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0afe90
    ld	$ra,8($sp)
.end gl_d_blanktime

# Function: gl_d_isqueued
# Declared: Line 6557 (Source lines: 6564-6572)
# Address: 0x0f0afeb4 - 0x0f0aff14 (Size: 96 bytes, Frame: 32)
.globl gl_d_isqueued
.ent gl_d_isqueued
gl_d_isqueued:
    # Line 6564
    andi	$v1,$a0,0xffff
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff8
    addiu	$a3,$a3,13204
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    # Line 6570
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6566
    lw	$a1,0($v0)
    # Line 6567
    li	$a2,329
    # Line 6570
    la	$t9,gl_comm_read_data
    # Line 6568
    sh	$v1,4($a1)
    # Line 6567
    sw	$a2,0($a1)
    # Line 6569
    addiu	$at,$a1,8
    # Line 6570
    jalr	$t9
    # Line 6569
    sw	$at,0($v0)
    # Line 6571
    la	$v0,comm_buffer
    # Line 6572
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_isqueued

# Function: gl_d_rot
# Declared: Line 6575 (Source lines: 6583-6591)
# Address: 0x0f0aff14 - 0x0f0aff80 (Size: 108 bytes, Frame: 32)
.globl gl_d_rot
.ent gl_d_rot
gl_d_rot:
    # Line 6583
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,13108 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$a0,$a1,0xff
    # Line 6585
    lw	$v0,0($v1)
    # Line 6586
    li	$t9,330
    # Line 6589
    la	$at,comm_endbuffer
    # Line 6588
    sb	$a0,8($v0)
    # Line 6587
    swc1	$f12,4($v0)
    # Line 6586
    sw	$t9,0($v0)
    # Line 6589
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0aff68
    sw	$v0,0($v1)
.L0f0aff5c:
    ld	$gp,0($sp)
    # Line 6591
    jr	$ra
    addiu	$sp,$sp,32
.L0f0aff68:
    # Line 6590
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0aff5c
    ld	$ra,8($sp)
.end gl_d_rot

# Function: gl_dgl_addtopup
# Declared: Line 6593 (Source lines: 6602-6619)
# Address: 0x0f0aff80 - 0x0f0b00b8 (Size: 312 bytes, Frame: 208)
.globl gl_dgl_addtopup
.ent gl_dgl_addtopup
gl_dgl_addtopup:
    # Line 6602
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$a2,0($sp)
    sd	$s0,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,13000 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s0,$a1
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s8,16($sp)
    addiu	$v1,$v0,92
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b0088
    move	$s8,$a0
.L0f0affc8:
    sd	$s1,40($sp)
    # Line 6606
    move	$s1,$v0
    # Line 6609
    move	$a0,$s0
    la	$t9,strlen
    # Line 6608
    sw	$s8,4($v0)
    # Line 6607
    li	$a1,331
    # Line 6609
    jalr	$t9
    # Line 6607
    sw	$a1,0($v0)
    ld	$s8,16($sp)
    ld	$ra,32($sp)
    # Line 6610
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0b0060
    sw	$a2,8($s1)
    ld	$s0,8($sp)
    # Line 6612
    addu	$s1,$a2,$s1
    addiu	$s1,$s1,12
.L0f0b0010:
    # Line 6615
    ld	$v1,0($sp)
    # Line 6617
    la	$a3,comm_stdsize
    la	$at,comm_buffer
    # Line 6615
    sw	$v1,0($s1)
    # Line 6617
    lw	$at,0($at)
    lw	$a3,0($a3)
    la	$a4,comm_endbuffer
    addu	$a3,$a3,$at
    addiu	$v1,$a3,-24
    sw	$v1,0($a4)
    # Line 6616
    addiu	$a4,$s1,4
    ld	$s1,40($sp)
    la	$at,comm_curbufpos
    # Line 6617
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$a4
    bnez	$a3,.L0f0b00a4
    # Line 6616
    sw	$a4,0($at)
.L0f0b0054:
    ld	$gp,24($sp)
    # Line 6619
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b0060:
    # Line 6614
    li	$a4,92
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s1,12
    move	$s1,$v0
    ld	$ra,32($sp)
    b	.L0f0b0010
    ld	$s0,8($sp)
.L0f0b0088:
    # Line 6606
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s1,40($sp)
    b	.L0f0affc8
    lw	$v0,0($v0)
.L0f0b00a4:
    # Line 6618
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s1,40($sp)
    b	.L0f0b0054
    ld	$ra,32($sp)
.end gl_dgl_addtopup

# Function: gl_dgl_addtop
# Declared: Line 6621 (Source lines: 6631-6649)
# Address: 0x0f0b00b8 - 0x0f0b01fc (Size: 324 bytes, Frame: 208)
.globl gl_dgl_addtop
.ent gl_dgl_addtop
gl_dgl_addtop:
    # Line 6631
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s1,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,12688 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a6,comm_curbufpos
    la	$a7,comm_endbuffer
    move	$s1,$a1
    lw	$t0,0($a6)
    lw	$at,0($a7)
    sd	$s8,8($sp)
    addiu	$v0,$t0,172
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b01bc
    move	$s8,$a0
.L0f0b0100:
    # Line 6635
    move	$v0,$t0
    # Line 6637
    sw	$s8,4($t0)
    # Line 6639
    li	$a4,-4
    addiu	$a2,$s0,3
    and	$a2,$a2,$a4
    # Line 6636
    li	$a4,332
    sw	$a4,0($t0)
    # Line 6639
    bnez	$s1,.L0f0b0180
    sw	$a2,8($t0)
    ld	$s8,8($sp)
    ld	$s1,0($sp)
    # Line 6641
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0b0134:
    # Line 6644
    sw	$s0,0($v0)
    # Line 6645
    lw	$a5,0($a3)
    # Line 6647
    la	$v1,comm_stdsize
    la	$a4,comm_buffer
    # Line 6645
    sw	$a5,4($v0)
    ld	$s0,16($sp)
    # Line 6647
    lw	$a4,0($a4)
    lw	$v1,0($v1)
    # Line 6646
    addiu	$a5,$v0,8
    sw	$a5,0($a6)
    # Line 6647
    addu	$v1,$v1,$a4
    addiu	$a4,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$a5
    bnez	$v1,.L0f0b01e4
    sw	$a4,0($a7)
.L0f0b0174:
    ld	$gp,24($sp)
    # Line 6649
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b0180:
    # Line 6643
    li	$a4,172
    sd	$a3,32($sp)
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,40($sp)
    jalr	$t9
    ld	$s8,8($sp)
    la	$a6,comm_curbufpos
    la	$a7,comm_endbuffer
    ld	$s1,0($sp)
    ld	$a3,32($sp)
    b	.L0f0b0134
    ld	$ra,40($sp)
.L0f0b01bc:
    # Line 6635
    la	$t9,gl_comm_flush
    sd	$ra,40($sp)
    jalr	$t9
    sd	$a3,32($sp)
    la	$a7,comm_endbuffer
    ld	$a3,32($sp)
    la	$a6,comm_curbufpos
    ld	$ra,40($sp)
    b	.L0f0b0100
    lw	$t0,0($a6)
.L0f0b01e4:
    # Line 6648
    la	$t9,gl_comm_flush
    sd	$ra,40($sp)
    jalr	$t9
    ld	$s0,16($sp)
    b	.L0f0b0174
    ld	$ra,40($sp)
.end gl_dgl_addtop

# Function: gl_d_dopup
# Declared: Line 6651 (Source lines: 6658-6667)
# Address: 0x0f0b01fc - 0x0f0b0260 (Size: 100 bytes, Frame: 32)
.globl gl_d_dopup
.ent gl_d_dopup
gl_d_dopup:
    # Line 6658
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,12364
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 6660
    lw	$v1,0($v0)
    # Line 6661
    li	$a1,333
    # Line 6664
    la	$t9,gl_comm_callback
    # Line 6662
    sw	$a0,4($v1)
    # Line 6661
    sw	$a1,0($v1)
    # Line 6663
    addiu	$at,$v1,8
    # Line 6664
    jalr	$t9
    # Line 6663
    sw	$at,0($v0)
    # Line 6665
    la	$t9,gl_comm_read_data
    jalr	$t9
    li	$a0,1
    # Line 6666
    la	$v0,comm_buffer
    # Line 6667
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_dopup

# Function: gl_d_freepup
# Declared: Line 6670 (Source lines: 6677-6684)
# Address: 0x0f0b0260 - 0x0f0b02c4 (Size: 100 bytes, Frame: 32)
.globl gl_d_freepup
.ent gl_d_freepup
gl_d_freepup:
    # Line 6677
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,12264 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6679
    lw	$v0,0($v1)
    # Line 6680
    li	$a1,334
    # Line 6682
    la	$at,comm_endbuffer
    # Line 6681
    sw	$a0,4($v0)
    # Line 6680
    sw	$a1,0($v0)
    # Line 6682
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b02ac
    sw	$v0,0($v1)
.L0f0b02a0:
    ld	$gp,0($sp)
    # Line 6684
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b02ac:
    # Line 6683
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b02a0
    ld	$ra,8($sp)
.end gl_d_freepup

# Function: gl_d_newpup
# Declared: Line 6686 (Source lines: 6692-6699)
# Address: 0x0f0b02c4 - 0x0f0b031c (Size: 88 bytes, Frame: 16)
.globl gl_d_newpup
.ent gl_d_newpup
gl_d_newpup:
    # Line 6692
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,12164
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 6697
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6694
    lw	$a1,0($v0)
    # Line 6695
    li	$v1,335
    # Line 6697
    la	$t9,gl_comm_read_data
    # Line 6695
    sw	$v1,0($a1)
    # Line 6696
    addiu	$at,$a1,4
    # Line 6697
    jalr	$t9
    # Line 6696
    sw	$at,0($v0)
    # Line 6698
    la	$v0,comm_buffer
    # Line 6699
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_newpup

# Function: gl_d_fullscrn
# Declared: Line 6702 (Source lines: 6708-6714)
# Address: 0x0f0b031c - 0x0f0b037c (Size: 96 bytes, Frame: 16)
.globl gl_d_fullscrn
.ent gl_d_fullscrn
gl_d_fullscrn:
    # Line 6708
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,12076
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6710
    lw	$v0,0($v1)
    # Line 6711
    li	$a0,336
    # Line 6712
    la	$at,comm_endbuffer
    # Line 6711
    sw	$a0,0($v0)
    # Line 6712
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0364
    sw	$v0,0($v1)
.L0f0b0358:
    ld	$gp,0($sp)
    # Line 6714
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b0364:
    # Line 6713
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b0358
    ld	$ra,8($sp)
.end gl_d_fullscrn

# Function: gl_d_endfullscrn
# Declared: Line 6716 (Source lines: 6722-6728)
# Address: 0x0f0b037c - 0x0f0b03dc (Size: 96 bytes, Frame: 16)
.globl gl_d_endfullscrn
.ent gl_d_endfullscrn
gl_d_endfullscrn:
    # Line 6722
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,11980
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6724
    lw	$v0,0($v1)
    # Line 6725
    li	$a0,337
    # Line 6726
    la	$at,comm_endbuffer
    # Line 6725
    sw	$a0,0($v0)
    # Line 6726
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b03c4
    sw	$v0,0($v1)
.L0f0b03b8:
    ld	$gp,0($sp)
    # Line 6728
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b03c4:
    # Line 6727
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b03b8
    ld	$ra,8($sp)
.end gl_d_endfullscrn

# Function: gl_d_getshade
# Declared: Line 6730 (Source lines: 6736-6743)
# Address: 0x0f0b03dc - 0x0f0b0434 (Size: 88 bytes, Frame: 16)
.globl gl_d_getshade
.ent gl_d_getshade
gl_d_getshade:
    # Line 6736
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,11884
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 6741
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6738
    lw	$a1,0($v0)
    # Line 6739
    li	$v1,338
    # Line 6741
    la	$t9,gl_comm_read_data
    # Line 6739
    sw	$v1,0($a1)
    # Line 6740
    addiu	$at,$a1,4
    # Line 6741
    jalr	$t9
    # Line 6740
    sw	$at,0($v0)
    # Line 6742
    la	$v0,comm_buffer
    # Line 6743
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getshade

# Function: gl_d_winconstraints
# Declared: Line 6746 (Source lines: 6752-6758)
# Address: 0x0f0b0434 - 0x0f0b0494 (Size: 96 bytes, Frame: 16)
.globl gl_d_winconstraints
.ent gl_d_winconstraints
gl_d_winconstraints:
    # Line 6752
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,11796
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6754
    lw	$v0,0($v1)
    # Line 6755
    li	$a0,339
    # Line 6756
    la	$at,comm_endbuffer
    # Line 6755
    sw	$a0,0($v0)
    # Line 6756
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b047c
    sw	$v0,0($v1)
.L0f0b0470:
    ld	$gp,0($sp)
    # Line 6758
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b047c:
    # Line 6757
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b0470
    ld	$ra,8($sp)
.end gl_d_winconstraints

# Function: gl_d_noport
# Declared: Line 6760 (Source lines: 6766-6772)
# Address: 0x0f0b0494 - 0x0f0b04f4 (Size: 96 bytes, Frame: 16)
.globl gl_d_noport
.ent gl_d_noport
gl_d_noport:
    # Line 6766
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,11700
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6768
    lw	$v0,0($v1)
    # Line 6769
    li	$a0,340
    # Line 6770
    la	$at,comm_endbuffer
    # Line 6769
    sw	$a0,0($v0)
    # Line 6770
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b04dc
    sw	$v0,0($v1)
.L0f0b04d0:
    ld	$gp,0($sp)
    # Line 6772
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b04dc:
    # Line 6771
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b04d0
    ld	$ra,8($sp)
.end gl_d_noport

# Function: gl_d_noborder
# Declared: Line 6774 (Source lines: 6780-6786)
# Address: 0x0f0b04f4 - 0x0f0b0554 (Size: 96 bytes, Frame: 16)
.globl gl_d_noborder
.ent gl_d_noborder
gl_d_noborder:
    # Line 6780
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,11604
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6782
    lw	$v0,0($v1)
    # Line 6783
    li	$a0,341
    # Line 6784
    la	$at,comm_endbuffer
    # Line 6783
    sw	$a0,0($v0)
    # Line 6784
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b053c
    sw	$v0,0($v1)
.L0f0b0530:
    ld	$gp,0($sp)
    # Line 6786
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b053c:
    # Line 6785
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b0530
    ld	$ra,8($sp)
.end gl_d_noborder

# Function: gl_d_imakebackground
# Declared: Line 6788 (Source lines: 6794-6800)
# Address: 0x0f0b0554 - 0x0f0b05b4 (Size: 96 bytes, Frame: 16)
.globl gl_d_imakebackground
.ent gl_d_imakebackground
gl_d_imakebackground:
    # Line 6794
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,11508
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6796
    lw	$v0,0($v1)
    # Line 6797
    li	$a0,342
    # Line 6798
    la	$at,comm_endbuffer
    # Line 6797
    sw	$a0,0($v0)
    # Line 6798
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b059c
    sw	$v0,0($v1)
.L0f0b0590:
    ld	$gp,0($sp)
    # Line 6800
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b059c:
    # Line 6799
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b0590
    ld	$ra,8($sp)
.end gl_d_imakebackground

# Function: gl_d_setfastcom
# Declared: Line 6802 (Source lines: 6808-6815)
# Address: 0x0f0b05b4 - 0x0f0b060c (Size: 88 bytes, Frame: 16)
.globl gl_d_setfastcom
.ent gl_d_setfastcom
gl_d_setfastcom:
    # Line 6808
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,11412
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 6813
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6810
    lw	$a1,0($v0)
    # Line 6811
    li	$v1,343
    # Line 6813
    la	$t9,gl_comm_read_data
    # Line 6811
    sw	$v1,0($a1)
    # Line 6812
    addiu	$at,$a1,4
    # Line 6813
    jalr	$t9
    # Line 6812
    sw	$at,0($v0)
    # Line 6814
    la	$v0,comm_buffer
    # Line 6815
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_setfastcom

# Function: gl_d_setslowcom
# Declared: Line 6818 (Source lines: 6824-6831)
# Address: 0x0f0b060c - 0x0f0b0664 (Size: 88 bytes, Frame: 16)
.globl gl_d_setslowcom
.ent gl_d_setslowcom
gl_d_setslowcom:
    # Line 6824
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,11324
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 6829
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6826
    lw	$a1,0($v0)
    # Line 6827
    li	$v1,344
    # Line 6829
    la	$t9,gl_comm_read_data
    # Line 6827
    sw	$v1,0($a1)
    # Line 6828
    addiu	$at,$a1,4
    # Line 6829
    jalr	$t9
    # Line 6828
    sw	$at,0($v0)
    # Line 6830
    la	$v0,comm_buffer
    # Line 6831
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_setslowcom

# Function: gl_d_RGBrange
# Declared: Line 6834 (Source lines: 6848-6863)
# Address: 0x0f0b0664 - 0x0f0b07a4 (Size: 320 bytes, Frame: 160)
.globl gl_d_RGBrange
.ent gl_d_RGBrange
gl_d_RGBrange:
    # Line 6848
    dsll32	$t1,$a0,0x10
    dsll32	$t2,$a1,0x10
    dsll32	$t3,$a2,0x10
    dsll32	$t8,$a3,0x10
    dsra32	$t8,$t8,0x10
    dsra32	$t3,$t3,0x10
    dsra32	$t2,$t2,0x10
    dsra32	$t1,$t1,0x10
    dsll32	$a7,$a7,0x10
    dsll32	$v1,$a6,0x10
    dsra32	$v1,$v1,0x10
    dsll32	$v0,$a5,0x10
    addiu	$sp,$sp,-160
    sd	$gp,40($sp)
    dsra32	$v0,$v0,0x10
    sd	$v0,16($sp)
    dsll32	$at,$a4,0x10
    dsra32	$at,$at,0x10
    sd	$at,8($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,11236 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v0,comm_curbufpos
    dsra32	$a7,$a7,0x10
    la	$at,comm_endbuffer
    # Line 6850
    lw	$v0,0($v0)
    sd	$a7,32($sp)
    lw	$at,0($at)
    sd	$v0,0($sp)
    addiu	$v0,$v0,36
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b074c
    sd	$v1,24($sp)
.L0f0b06e8:
    # Line 6852
    ld	$v0,0($sp)
    li	$a0,345
    sw	$a0,0($v0)
    # Line 6857
    ld	$a0,8($sp)
    sh	$a0,12($v0)
    # Line 6858
    ld	$a0,16($sp)
    la	$at,comm_endbuffer
    sh	$a0,14($v0)
    # Line 6859
    ld	$a0,24($sp)
    # Line 6856
    sh	$t8,10($v0)
    # Line 6855
    sh	$t3,8($v0)
    # Line 6859
    sh	$a0,16($v0)
    # Line 6860
    ld	$a0,32($sp)
    # Line 6854
    sh	$t2,6($v0)
    # Line 6853
    sh	$t1,4($v0)
    # Line 6860
    sh	$a0,18($v0)
    # Line 6861
    lw	$at,0($at)
    la	$v1,comm_curbufpos
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b078c
    sw	$v0,0($v1)
.L0f0b0740:
    ld	$gp,40($sp)
    # Line 6863
    jr	$ra
    addiu	$sp,$sp,160
.L0f0b074c:
    sd	$t1,72($sp)
    sd	$t2,64($sp)
    # Line 6851
    la	$t9,gl_comm_flush
    sd	$t3,56($sp)
    sd	$ra,80($sp)
    jalr	$t9
    sd	$t8,48($sp)
    la	$t1,comm_curbufpos
    ld	$t8,48($sp)
    ld	$t3,56($sp)
    lw	$t1,0($t1)
    ld	$t2,64($sp)
    ld	$ra,80($sp)
    sd	$t1,0($sp)
    b	.L0f0b06e8
    ld	$t1,72($sp)
.L0f0b078c:
    # Line 6862
    la	$t9,gl_comm_flush
    sd	$ra,80($sp)
    jalr	$t9
    nop
    b	.L0f0b0740
    ld	$ra,80($sp)
.end gl_d_RGBrange

# Function: gl_d_cmode
# Declared: Line 6865 (Source lines: 6871-6877)
# Address: 0x0f0b07a4 - 0x0f0b0804 (Size: 96 bytes, Frame: 16)
.globl gl_d_cmode
.ent gl_d_cmode
gl_d_cmode:
    # Line 6871
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,10916
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 6873
    lw	$v0,0($v1)
    # Line 6874
    li	$a0,346
    # Line 6875
    la	$at,comm_endbuffer
    # Line 6874
    sw	$a0,0($v0)
    # Line 6875
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b07ec
    sw	$v0,0($v1)
.L0f0b07e0:
    ld	$gp,0($sp)
    # Line 6877
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b07ec:
    # Line 6876
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b07e0
    ld	$ra,8($sp)
.end gl_d_cmode

# Function: gl_d_concave
# Declared: Line 6879 (Source lines: 6886-6893)
# Address: 0x0f0b0804 - 0x0f0b0868 (Size: 100 bytes, Frame: 32)
.globl gl_d_concave
.ent gl_d_concave
gl_d_concave:
    # Line 6886
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,10820 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6888
    lw	$v0,0($v1)
    # Line 6889
    li	$a1,347
    # Line 6891
    la	$at,comm_endbuffer
    # Line 6890
    sw	$a0,4($v0)
    # Line 6889
    sw	$a1,0($v0)
    # Line 6891
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0850
    sw	$v0,0($v1)
.L0f0b0844:
    ld	$gp,0($sp)
    # Line 6893
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b0850:
    # Line 6892
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b0844
    ld	$ra,8($sp)
.end gl_d_concave

# Function: gl_d_curstype
# Declared: Line 6895 (Source lines: 6902-6909)
# Address: 0x0f0b0868 - 0x0f0b08cc (Size: 100 bytes, Frame: 32)
.globl gl_d_curstype
.ent gl_d_curstype
gl_d_curstype:
    # Line 6902
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,10720 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6904
    lw	$v0,0($v1)
    # Line 6905
    li	$a1,348
    # Line 6907
    la	$at,comm_endbuffer
    # Line 6906
    sw	$a0,4($v0)
    # Line 6905
    sw	$a1,0($v0)
    # Line 6907
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b08b4
    sw	$v0,0($v1)
.L0f0b08a8:
    ld	$gp,0($sp)
    # Line 6909
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b08b4:
    # Line 6908
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b08a8
    ld	$ra,8($sp)
.end gl_d_curstype

# Function: gl_d_drawmode
# Declared: Line 6911 (Source lines: 6918-6925)
# Address: 0x0f0b08cc - 0x0f0b0930 (Size: 100 bytes, Frame: 32)
.globl gl_d_drawmode
.ent gl_d_drawmode
gl_d_drawmode:
    # Line 6918
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,10620 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6920
    lw	$v0,0($v1)
    # Line 6921
    li	$a1,349
    # Line 6923
    la	$at,comm_endbuffer
    # Line 6922
    sw	$a0,4($v0)
    # Line 6921
    sw	$a1,0($v0)
    # Line 6923
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0918
    sw	$v0,0($v1)
.L0f0b090c:
    ld	$gp,0($sp)
    # Line 6925
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b0918:
    # Line 6924
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b090c
    ld	$ra,8($sp)
.end gl_d_drawmode

# Function: gl_d_getdrawmode
# Declared: Line 6927 (Source lines: 6933-6940)
# Address: 0x0f0b0930 - 0x0f0b0988 (Size: 88 bytes, Frame: 16)
.globl gl_d_getdrawmode
.ent gl_d_getdrawmode
gl_d_getdrawmode:
    # Line 6933
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,10520
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 6938
    li	$a0,1
    sd	$ra,0($sp)
    # Line 6935
    lw	$a1,0($v0)
    # Line 6936
    li	$v1,350
    # Line 6938
    la	$t9,gl_comm_read_data
    # Line 6936
    sw	$v1,0($a1)
    # Line 6937
    addiu	$at,$a1,4
    # Line 6938
    jalr	$t9
    # Line 6937
    sw	$at,0($v0)
    # Line 6939
    la	$v0,comm_buffer
    # Line 6940
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getdrawmode

# Function: gl_d_gammaramp
# Declared: Line 6943 (Source lines: 6952-6979)
# Address: 0x0f0b0988 - 0x0f0b0b1c (Size: 404 bytes, Frame: 208)
.globl gl_d_gammaramp
.ent gl_d_gammaramp
gl_d_gammaramp:
    # Line 6952
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a2
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,10432 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$a3,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s0,$a1
    lw	$a6,0($a3)
    lw	$at,0($at)
    sd	$s2,8($sp)
    addiu	$v0,$a6,244
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0ae4
    move	$s2,$a0
.L0f0b09d0:
    # Line 6956
    move	$v0,$a6
    # Line 6959
    li	$a0,512
    # Line 6957
    li	$v1,351
    sw	$v1,0($a6)
    # Line 6959
    bnez	$s2,.L0f0b0a4c
    sw	$a0,4($a6)
    # Line 6961
    addiu	$v0,$v0,520
    ld	$s2,8($sp)
.L0f0b09f0:
    # Line 6965
    bnez	$s0,.L0f0b0a80
    sw	$a0,0($v0)
    # Line 6967
    addiu	$v0,$v0,516
    ld	$s0,0($sp)
.L0f0b0a00:
    # Line 6971
    bnez	$s1,.L0f0b0ab4
    sw	$a0,0($v0)
    # Line 6973
    addiu	$v0,$v0,516
    ld	$s1,16($sp)
.L0f0b0a10:
    # Line 6977
    la	$a5,comm_buffer
    la	$a4,comm_stdsize
    lw	$a5,0($a5)
    lw	$a4,0($a4)
    # Line 6976
    sw	$v0,0($a3)
    la	$at,comm_endbuffer
    # Line 6977
    addu	$a4,$a4,$a5
    addiu	$a5,$a4,-24
    addiu	$a4,$a4,-24
    sltu	$a4,$a4,$v0
    bnez	$a4,.L0f0b0b04
    sw	$a5,0($at)
.L0f0b0a40:
    ld	$gp,24($sp)
    # Line 6979
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b0a4c:
    # Line 6963
    li	$a4,244
    li	$a2,512
    move	$a1,$s2
    la	$t9,gl_mem_pack_array
    # Line 6961
    la	$a3,gl_mem_hton_short_array
    sd	$ra,32($sp)
    # Line 6963
    jalr	$t9
    addiu	$a0,$v0,8
    li	$a0,512
    la	$a3,comm_curbufpos
    ld	$s2,8($sp)
    b	.L0f0b09f0
    ld	$ra,32($sp)
.L0f0b0a80:
    la	$a3,gl_mem_hton_short_array
    # Line 6969
    li	$a4,244
    li	$a2,512
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,4
    li	$a0,512
    la	$a3,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0b0a00
    ld	$s0,0($sp)
.L0f0b0ab4:
    la	$a3,gl_mem_hton_short_array
    # Line 6975
    li	$a4,244
    li	$a2,512
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,4
    la	$a3,comm_curbufpos
    ld	$s1,16($sp)
    b	.L0f0b0a10
    ld	$ra,32($sp)
.L0f0b0ae4:
    # Line 6956
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a3,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0b09d0
    lw	$a6,0($a3)
.L0f0b0b04:
    # Line 6978
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0b0a40
    ld	$ra,32($sp)
.end gl_d_gammaramp

# Function: gl_d_shademodel
# Declared: Line 6981 (Source lines: 6988-6995)
# Address: 0x0f0b0b1c - 0x0f0b0b80 (Size: 100 bytes, Frame: 32)
.globl gl_d_shademodel
.ent gl_d_shademodel
gl_d_shademodel:
    # Line 6988
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,10028 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 6990
    lw	$v0,0($v1)
    # Line 6991
    li	$a1,352
    # Line 6993
    la	$at,comm_endbuffer
    # Line 6992
    sw	$a0,4($v0)
    # Line 6991
    sw	$a1,0($v0)
    # Line 6993
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0b68
    sw	$v0,0($v1)
.L0f0b0b5c:
    ld	$gp,0($sp)
    # Line 6995
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b0b68:
    # Line 6994
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b0b5c
    ld	$ra,8($sp)
.end gl_d_shademodel

# Function: gl_d_overlay
# Declared: Line 6997 (Source lines: 7004-7011)
# Address: 0x0f0b0b80 - 0x0f0b0be4 (Size: 100 bytes, Frame: 32)
.globl gl_d_overlay
.ent gl_d_overlay
gl_d_overlay:
    # Line 7004
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,9928 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7006
    lw	$v0,0($v1)
    # Line 7007
    li	$a1,353
    # Line 7009
    la	$at,comm_endbuffer
    # Line 7008
    sw	$a0,4($v0)
    # Line 7007
    sw	$a1,0($v0)
    # Line 7009
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0bcc
    sw	$v0,0($v1)
.L0f0b0bc0:
    ld	$gp,0($sp)
    # Line 7011
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b0bcc:
    # Line 7010
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b0bc0
    ld	$ra,8($sp)
.end gl_d_overlay

# Function: gl_d_underlay
# Declared: Line 7013 (Source lines: 7020-7027)
# Address: 0x0f0b0be4 - 0x0f0b0c48 (Size: 100 bytes, Frame: 32)
.globl gl_d_underlay
.ent gl_d_underlay
gl_d_underlay:
    # Line 7020
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,9828 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7022
    lw	$v0,0($v1)
    # Line 7023
    li	$a1,354
    # Line 7025
    la	$at,comm_endbuffer
    # Line 7024
    sw	$a0,4($v0)
    # Line 7023
    sw	$a1,0($v0)
    # Line 7025
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0c30
    sw	$v0,0($v1)
.L0f0b0c24:
    ld	$gp,0($sp)
    # Line 7027
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b0c30:
    # Line 7026
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b0c24
    ld	$ra,8($sp)
.end gl_d_underlay

# Function: gl_d_getvideo
# Declared: Line 7029 (Source lines: 7036-7044)
# Address: 0x0f0b0c48 - 0x0f0b0ca4 (Size: 92 bytes, Frame: 32)
.globl gl_d_getvideo
.ent gl_d_getvideo
gl_d_getvideo:
    # Line 7036
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,9728
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 7038
    lw	$a1,0($v0)
    # Line 7039
    li	$v1,355
    # Line 7042
    la	$t9,gl_comm_read_data
    # Line 7040
    sw	$a0,4($a1)
    # Line 7042
    li	$a0,1
    # Line 7039
    sw	$v1,0($a1)
    # Line 7041
    addiu	$at,$a1,8
    # Line 7042
    jalr	$t9
    # Line 7041
    sw	$at,0($v0)
    # Line 7043
    la	$v0,comm_buffer
    # Line 7044
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_getvideo

# Function: gl_d_setvideo
# Declared: Line 7047 (Source lines: 7055-7064)
# Address: 0x0f0b0ca4 - 0x0f0b0d1c (Size: 120 bytes, Frame: 32)
.globl gl_d_setvideo
.ent gl_d_setvideo
gl_d_setvideo:
    # Line 7055
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,9636 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7057
    lw	$v0,0($v1)
    # Line 7058
    li	$a2,356
    # Line 7061
    la	$at,comm_endbuffer
    # Line 7060
    sw	$a1,8($v0)
    # Line 7059
    sw	$a0,4($v0)
    # Line 7058
    sw	$a2,0($v0)
    # Line 7061
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0d08
    sw	$v0,0($v1)
    # Line 7063
    la	$t9,gl_comm_flush
.L0f0b0cf0:
    jalr	$t9
    nop
    # Line 7064
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b0d08:
    # Line 7062
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0b0cf0
    # Line 7063
    la	$t9,gl_comm_flush
.end gl_d_setvideo

# Function: gl_d_getsm
# Declared: Line 7066 (Source lines: 7072-7079)
# Address: 0x0f0b0d1c - 0x0f0b0d74 (Size: 88 bytes, Frame: 16)
.globl gl_d_getsm
.ent gl_d_getsm
gl_d_getsm:
    # Line 7072
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,9516
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 7077
    li	$a0,1
    sd	$ra,0($sp)
    # Line 7074
    lw	$a1,0($v0)
    # Line 7075
    li	$v1,358
    # Line 7077
    la	$t9,gl_comm_read_data
    # Line 7075
    sw	$v1,0($a1)
    # Line 7076
    addiu	$at,$a1,4
    # Line 7077
    jalr	$t9
    # Line 7076
    sw	$at,0($v0)
    # Line 7078
    la	$v0,comm_buffer
    # Line 7079
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getsm

# Function: gl_d_getbackface
# Declared: Line 7082 (Source lines: 7088-7095)
# Address: 0x0f0b0d74 - 0x0f0b0dcc (Size: 88 bytes, Frame: 16)
.globl gl_d_getbackface
.ent gl_d_getbackface
gl_d_getbackface:
    # Line 7088
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,9428
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 7093
    li	$a0,1
    sd	$ra,0($sp)
    # Line 7090
    lw	$a1,0($v0)
    # Line 7091
    li	$v1,359
    # Line 7093
    la	$t9,gl_comm_read_data
    # Line 7091
    sw	$v1,0($a1)
    # Line 7092
    addiu	$at,$a1,4
    # Line 7093
    jalr	$t9
    # Line 7092
    sw	$at,0($v0)
    # Line 7094
    la	$v0,comm_buffer
    # Line 7095
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getbackface

# Function: gl_d_getdescender
# Declared: Line 7098 (Source lines: 7104-7111)
# Address: 0x0f0b0dcc - 0x0f0b0e24 (Size: 88 bytes, Frame: 16)
.globl gl_d_getdescender
.ent gl_d_getdescender
gl_d_getdescender:
    # Line 7104
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,9340
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 7109
    li	$a0,1
    sd	$ra,0($sp)
    # Line 7106
    lw	$a1,0($v0)
    # Line 7107
    li	$v1,360
    # Line 7109
    la	$t9,gl_comm_read_data
    # Line 7107
    sw	$v1,0($a1)
    # Line 7108
    addiu	$at,$a1,4
    # Line 7109
    jalr	$t9
    # Line 7108
    sw	$at,0($v0)
    # Line 7110
    la	$v0,comm_buffer
    # Line 7111
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getdescender

# Function: gl_d_getmmode
# Declared: Line 7114 (Source lines: 7120-7127)
# Address: 0x0f0b0e24 - 0x0f0b0e7c (Size: 88 bytes, Frame: 16)
.globl gl_d_getmmode
.ent gl_d_getmmode
gl_d_getmmode:
    # Line 7120
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,9252
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 7125
    li	$a0,1
    sd	$ra,0($sp)
    # Line 7122
    lw	$a1,0($v0)
    # Line 7123
    li	$v1,361
    # Line 7125
    la	$t9,gl_comm_read_data
    # Line 7123
    sw	$v1,0($a1)
    # Line 7124
    addiu	$at,$a1,4
    # Line 7125
    jalr	$t9
    # Line 7124
    sw	$at,0($v0)
    # Line 7126
    la	$v0,comm_buffer
    # Line 7127
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getmmode

# Function: gl_d_lmbind
# Declared: Line 7130 (Source lines: 7138-7146)
# Address: 0x0f0b0e7c - 0x0f0b0ef4 (Size: 120 bytes, Frame: 32)
.globl gl_d_lmbind
.ent gl_d_lmbind
gl_d_lmbind:
    # Line 7138
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,9164 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a2,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 7140
    lw	$v0,0($v1)
    # Line 7141
    li	$t9,362
    # Line 7144
    la	$at,comm_endbuffer
    # Line 7143
    sh	$a0,6($v0)
    # Line 7142
    sh	$a2,4($v0)
    # Line 7141
    sw	$t9,0($v0)
    # Line 7144
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0edc
    sw	$v0,0($v1)
.L0f0b0ed0:
    ld	$gp,0($sp)
    # Line 7146
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b0edc:
    # Line 7145
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b0ed0
    ld	$ra,8($sp)
.end gl_d_lmbind

# Function: gl_dgl_lmdef
# Declared: Line 7148 (Source lines: 7158-7176)
# Address: 0x0f0b0ef4 - 0x0f0b103c (Size: 328 bytes, Frame: 208)
.globl gl_dgl_lmdef
.ent gl_dgl_lmdef
gl_dgl_lmdef:
    # Line 7158
    dsll32	$a6,$a1,0x10
    dsll32	$a7,$a2,0x10
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a3
    dsra32	$a7,$a7,0x10
    dsra32	$a6,$a6,0x10
    sd	$gp,16($sp)
    lui	$t0,0xfff8
    addiu	$t0,$t0,9044
    addu	$gp,$t9,$t0
    la	$t0,comm_curbufpos
    la	$t1,comm_endbuffer
    sd	$s1,8($sp)
    lw	$t2,0($t0)
    lw	$at,0($t1)
    dsll32	$s1,$a0,0x10
    addiu	$v0,$t2,96
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b0ff4
    dsra32	$s1,$s1,0x10
.L0f0b0f48:
    # Line 7162
    move	$v0,$t2
    # Line 7166
    sh	$a7,8($t2)
    # Line 7165
    sh	$a6,6($t2)
    # Line 7164
    sh	$s1,4($t2)
    # Line 7168
    sll	$a2,$a7,0x2
    # Line 7163
    li	$a4,363
    sw	$a4,0($t2)
    # Line 7168
    li	$a4,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a4
    bnez	$s0,.L0f0b0fc0
    sw	$a2,12($t2)
    ld	$s1,8($sp)
    ld	$s0,0($sp)
    # Line 7170
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f0b0f88:
    # Line 7174
    la	$a4,comm_buffer
    la	$a0,comm_stdsize
    lw	$a4,0($a4)
    lw	$a0,0($a0)
    # Line 7173
    sw	$v0,0($t0)
    # Line 7174
    addu	$a0,$a0,$a4
    addiu	$v1,$a0,-24
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$v0
    bnez	$a0,.L0f0b1024
    sw	$v1,0($t1)
.L0f0b0fb4:
    ld	$gp,16($sp)
    # Line 7176
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b0fc0:
    # Line 7172
    li	$a4,96
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,16
    sd	$ra,40($sp)
    jalr	$t9
    ld	$s1,8($sp)
    la	$t0,comm_curbufpos
    la	$t1,comm_endbuffer
    ld	$ra,40($sp)
    b	.L0f0b0f88
    ld	$s0,0($sp)
.L0f0b0ff4:
    # Line 7162
    la	$t9,gl_comm_flush
    sd	$a6,32($sp)
    sd	$ra,40($sp)
    jalr	$t9
    sd	$a7,24($sp)
    la	$t1,comm_endbuffer
    ld	$a7,24($sp)
    ld	$a6,32($sp)
    la	$t0,comm_curbufpos
    ld	$ra,40($sp)
    b	.L0f0b0f48
    lw	$t2,0($t0)
.L0f0b1024:
    # Line 7175
    la	$t9,gl_comm_flush
    sd	$ra,40($sp)
    jalr	$t9
    nop
    b	.L0f0b0fb4
    ld	$ra,40($sp)
.end gl_dgl_lmdef

# Function: gl_d_mmode
# Declared: Line 7178 (Source lines: 7185-7192)
# Address: 0x0f0b103c - 0x0f0b10a8 (Size: 108 bytes, Frame: 32)
.globl gl_d_mmode
.ent gl_d_mmode
gl_d_mmode:
    # Line 7185
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,8716 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7188
    li	$a1,364
    # Line 7185
    dsll32	$a0,$a0,0x10
    # Line 7187
    lw	$v0,0($v1)
    # Line 7185
    dsra32	$a0,$a0,0x10
    # Line 7190
    la	$at,comm_endbuffer
    # Line 7189
    sh	$a0,4($v0)
    # Line 7188
    sw	$a1,0($v0)
    # Line 7190
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1090
    sw	$v0,0($v1)
.L0f0b1084:
    ld	$gp,0($sp)
    # Line 7192
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1090:
    # Line 7191
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1084
    ld	$ra,8($sp)
.end gl_d_mmode

# Function: gl_d_normal
# Declared: Line 7194 (Source lines: 7201-7210)
# Address: 0x0f0b10a8 - 0x0f0b1120 (Size: 120 bytes, Frame: 32)
.globl gl_d_normal
.ent gl_d_normal
gl_d_normal:
    # Line 7201
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,8608 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7203
    lw	$v0,0($v1)
    # Line 7204
    li	$a1,365
    sw	$a1,0($v0)
    # Line 7205
    lwc1	$f2,0($a0)
    swc1	$f2,4($v0)
    # Line 7206
    lwc1	$f1,4($a0)
    swc1	$f1,8($v0)
    # Line 7207
    lwc1	$f0,8($a0)
    # Line 7208
    la	$at,comm_endbuffer
    # Line 7207
    swc1	$f0,12($v0)
    # Line 7208
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1108
    sw	$v0,0($v1)
.L0f0b10fc:
    ld	$gp,0($sp)
    # Line 7210
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1108:
    # Line 7209
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b10fc
    ld	$ra,8($sp)
.end gl_d_normal

# Function: gl_d_bgnclosedline
# Declared: Line 7212 (Source lines: 7218-7224)
# Address: 0x0f0b1120 - 0x0f0b1180 (Size: 96 bytes, Frame: 16)
.globl gl_d_bgnclosedline
.ent gl_d_bgnclosedline
gl_d_bgnclosedline:
    # Line 7218
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,8488
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7220
    lw	$v0,0($v1)
    # Line 7221
    li	$a0,366
    # Line 7222
    la	$at,comm_endbuffer
    # Line 7221
    sw	$a0,0($v0)
    # Line 7222
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1168
    sw	$v0,0($v1)
.L0f0b115c:
    ld	$gp,0($sp)
    # Line 7224
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b1168:
    # Line 7223
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b115c
    ld	$ra,8($sp)
.end gl_d_bgnclosedline

# Function: gl_d_bgnline
# Declared: Line 7226 (Source lines: 7232-7238)
# Address: 0x0f0b1180 - 0x0f0b11e0 (Size: 96 bytes, Frame: 16)
.globl gl_d_bgnline
.ent gl_d_bgnline
gl_d_bgnline:
    # Line 7232
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,8392
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7234
    lw	$v0,0($v1)
    # Line 7235
    li	$a0,367
    # Line 7236
    la	$at,comm_endbuffer
    # Line 7235
    sw	$a0,0($v0)
    # Line 7236
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b11c8
    sw	$v0,0($v1)
.L0f0b11bc:
    ld	$gp,0($sp)
    # Line 7238
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b11c8:
    # Line 7237
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b11bc
    ld	$ra,8($sp)
.end gl_d_bgnline

# Function: gl_d_bgnpoint
# Declared: Line 7240 (Source lines: 7246-7252)
# Address: 0x0f0b11e0 - 0x0f0b1240 (Size: 96 bytes, Frame: 16)
.globl gl_d_bgnpoint
.ent gl_d_bgnpoint
gl_d_bgnpoint:
    # Line 7246
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,8296
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7248
    lw	$v0,0($v1)
    # Line 7249
    li	$a0,368
    # Line 7250
    la	$at,comm_endbuffer
    # Line 7249
    sw	$a0,0($v0)
    # Line 7250
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1228
    sw	$v0,0($v1)
.L0f0b121c:
    ld	$gp,0($sp)
    # Line 7252
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b1228:
    # Line 7251
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b121c
    ld	$ra,8($sp)
.end gl_d_bgnpoint

# Function: gl_d_bgnpolygon
# Declared: Line 7254 (Source lines: 7260-7266)
# Address: 0x0f0b1240 - 0x0f0b12a0 (Size: 96 bytes, Frame: 16)
.globl gl_d_bgnpolygon
.ent gl_d_bgnpolygon
gl_d_bgnpolygon:
    # Line 7260
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,8200
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7262
    lw	$v0,0($v1)
    # Line 7263
    li	$a0,369
    # Line 7264
    la	$at,comm_endbuffer
    # Line 7263
    sw	$a0,0($v0)
    # Line 7264
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1288
    sw	$v0,0($v1)
.L0f0b127c:
    ld	$gp,0($sp)
    # Line 7266
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b1288:
    # Line 7265
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b127c
    ld	$ra,8($sp)
.end gl_d_bgnpolygon

# Function: gl_d_bgntmesh
# Declared: Line 7268 (Source lines: 7274-7280)
# Address: 0x0f0b12a0 - 0x0f0b1300 (Size: 96 bytes, Frame: 16)
.globl gl_d_bgntmesh
.ent gl_d_bgntmesh
gl_d_bgntmesh:
    # Line 7274
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,8104
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7276
    lw	$v0,0($v1)
    # Line 7277
    li	$a0,370
    # Line 7278
    la	$at,comm_endbuffer
    # Line 7277
    sw	$a0,0($v0)
    # Line 7278
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b12e8
    sw	$v0,0($v1)
.L0f0b12dc:
    ld	$gp,0($sp)
    # Line 7280
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b12e8:
    # Line 7279
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b12dc
    ld	$ra,8($sp)
.end gl_d_bgntmesh

# Function: gl_d_blendfunction
# Declared: Line 7282 (Source lines: 7290-7298)
# Address: 0x0f0b1300 - 0x0f0b1368 (Size: 104 bytes, Frame: 32)
.globl gl_d_blendfunction
.ent gl_d_blendfunction
gl_d_blendfunction:
    # Line 7290
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,8008 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7292
    lw	$v0,0($v1)
    # Line 7293
    li	$a2,371
    # Line 7296
    la	$at,comm_endbuffer
    # Line 7295
    sw	$a1,8($v0)
    # Line 7294
    sw	$a0,4($v0)
    # Line 7293
    sw	$a2,0($v0)
    # Line 7296
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1350
    sw	$v0,0($v1)
.L0f0b1344:
    ld	$gp,0($sp)
    # Line 7298
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1350:
    # Line 7297
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1344
    ld	$ra,8($sp)
.end gl_d_blendfunction

# Function: gl_d_c3f
# Declared: Line 7300 (Source lines: 7307-7316)
# Address: 0x0f0b1368 - 0x0f0b13e0 (Size: 120 bytes, Frame: 32)
.globl gl_d_c3f
.ent gl_d_c3f
gl_d_c3f:
    # Line 7307
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,7904 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7309
    lw	$v0,0($v1)
    # Line 7310
    li	$a1,372
    sw	$a1,0($v0)
    # Line 7311
    lwc1	$f2,0($a0)
    swc1	$f2,4($v0)
    # Line 7312
    lwc1	$f1,4($a0)
    swc1	$f1,8($v0)
    # Line 7313
    lwc1	$f0,8($a0)
    # Line 7314
    la	$at,comm_endbuffer
    # Line 7313
    swc1	$f0,12($v0)
    # Line 7314
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b13c8
    sw	$v0,0($v1)
.L0f0b13bc:
    ld	$gp,0($sp)
    # Line 7316
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b13c8:
    # Line 7315
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b13bc
    ld	$ra,8($sp)
.end gl_d_c3f

# Function: gl_d_c3i
# Declared: Line 7318 (Source lines: 7325-7334)
# Address: 0x0f0b13e0 - 0x0f0b1458 (Size: 120 bytes, Frame: 32)
.globl gl_d_c3i
.ent gl_d_c3i
gl_d_c3i:
    # Line 7325
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,7784 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$v1,comm_curbufpos
    # Line 7327
    lw	$v0,0($v1)
    # Line 7328
    li	$at,373
    sw	$at,0($v0)
    # Line 7329
    lw	$t9,0($a0)
    sw	$t9,4($v0)
    # Line 7330
    lw	$a1,4($a0)
    sw	$a1,8($v0)
    # Line 7331
    lw	$a0,8($a0)
    # Line 7332
    la	$at,comm_endbuffer
    # Line 7331
    sw	$a0,12($v0)
    # Line 7332
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1440
    sw	$v0,0($v1)
.L0f0b1434:
    ld	$gp,0($sp)
    # Line 7334
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1440:
    # Line 7333
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1434
    ld	$ra,8($sp)
.end gl_d_c3i

# Function: gl_d_c3s
# Declared: Line 7336 (Source lines: 7343-7352)
# Address: 0x0f0b1458 - 0x0f0b14d0 (Size: 120 bytes, Frame: 32)
.globl gl_d_c3s
.ent gl_d_c3s
gl_d_c3s:
    # Line 7343
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,7664 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$v1,comm_curbufpos
    # Line 7345
    lw	$v0,0($v1)
    # Line 7346
    li	$at,374
    sw	$at,0($v0)
    # Line 7347
    lh	$t9,0($a0)
    sh	$t9,4($v0)
    # Line 7348
    lh	$a1,2($a0)
    sh	$a1,6($v0)
    # Line 7349
    lh	$a0,4($a0)
    # Line 7350
    la	$at,comm_endbuffer
    # Line 7349
    sh	$a0,8($v0)
    # Line 7350
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b14b8
    sw	$v0,0($v1)
.L0f0b14ac:
    ld	$gp,0($sp)
    # Line 7352
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b14b8:
    # Line 7351
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b14ac
    ld	$ra,8($sp)
.end gl_d_c3s

# Function: gl_d_c4f
# Declared: Line 7354 (Source lines: 7361-7371)
# Address: 0x0f0b14d0 - 0x0f0b1550 (Size: 128 bytes, Frame: 32)
.globl gl_d_c4f
.ent gl_d_c4f
gl_d_c4f:
    # Line 7361
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,7544 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7363
    lw	$v0,0($v1)
    # Line 7364
    li	$a1,375
    sw	$a1,0($v0)
    # Line 7365
    lwc1	$f3,0($a0)
    swc1	$f3,4($v0)
    # Line 7366
    lwc1	$f2,4($a0)
    swc1	$f2,8($v0)
    # Line 7367
    lwc1	$f1,8($a0)
    swc1	$f1,12($v0)
    # Line 7368
    lwc1	$f0,12($a0)
    # Line 7369
    la	$at,comm_endbuffer
    # Line 7368
    swc1	$f0,16($v0)
    # Line 7369
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1538
    sw	$v0,0($v1)
.L0f0b152c:
    ld	$gp,0($sp)
    # Line 7371
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1538:
    # Line 7370
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b152c
    ld	$ra,8($sp)
.end gl_d_c4f

# Function: gl_d_c4i
# Declared: Line 7373 (Source lines: 7380-7390)
# Address: 0x0f0b1550 - 0x0f0b15d0 (Size: 128 bytes, Frame: 32)
.globl gl_d_c4i
.ent gl_d_c4i
gl_d_c4i:
    # Line 7380
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,7416 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7382
    lw	$v0,0($v1)
    # Line 7383
    li	$a1,376
    sw	$a1,0($v0)
    # Line 7384
    lw	$at,0($a0)
    sw	$at,4($v0)
    # Line 7385
    lw	$t9,4($a0)
    sw	$t9,8($v0)
    # Line 7386
    lw	$a1,8($a0)
    sw	$a1,12($v0)
    # Line 7387
    lw	$a0,12($a0)
    # Line 7388
    la	$at,comm_endbuffer
    # Line 7387
    sw	$a0,16($v0)
    # Line 7388
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b15b8
    sw	$v0,0($v1)
.L0f0b15ac:
    ld	$gp,0($sp)
    # Line 7390
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b15b8:
    # Line 7389
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b15ac
    ld	$ra,8($sp)
.end gl_d_c4i

# Function: gl_d_c4s
# Declared: Line 7392 (Source lines: 7399-7409)
# Address: 0x0f0b15d0 - 0x0f0b1650 (Size: 128 bytes, Frame: 32)
.globl gl_d_c4s
.ent gl_d_c4s
gl_d_c4s:
    # Line 7399
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,7288 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7401
    lw	$v0,0($v1)
    # Line 7402
    li	$a1,377
    sw	$a1,0($v0)
    # Line 7403
    lh	$at,0($a0)
    sh	$at,4($v0)
    # Line 7404
    lh	$t9,2($a0)
    sh	$t9,6($v0)
    # Line 7405
    lh	$a1,4($a0)
    sh	$a1,8($v0)
    # Line 7406
    lh	$a0,6($a0)
    # Line 7407
    la	$at,comm_endbuffer
    # Line 7406
    sh	$a0,10($v0)
    # Line 7407
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1638
    sw	$v0,0($v1)
.L0f0b162c:
    ld	$gp,0($sp)
    # Line 7409
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1638:
    # Line 7408
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b162c
    ld	$ra,8($sp)
.end gl_d_c4s

# Function: gl_d_cpack
# Declared: Line 7411 (Source lines: 7418-7425)
# Address: 0x0f0b1650 - 0x0f0b16b4 (Size: 100 bytes, Frame: 32)
.globl gl_d_cpack
.ent gl_d_cpack
gl_d_cpack:
    # Line 7418
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,7160 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7420
    lw	$v0,0($v1)
    # Line 7421
    li	$a1,378
    # Line 7423
    la	$at,comm_endbuffer
    # Line 7422
    sw	$a0,4($v0)
    # Line 7421
    sw	$a1,0($v0)
    # Line 7423
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b169c
    sw	$v0,0($v1)
.L0f0b1690:
    ld	$gp,0($sp)
    # Line 7425
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b169c:
    # Line 7424
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1690
    ld	$ra,8($sp)
.end gl_d_cpack

# Function: gl_d_czclear
# Declared: Line 7427 (Source lines: 7435-7443)
# Address: 0x0f0b16b4 - 0x0f0b171c (Size: 104 bytes, Frame: 32)
.globl gl_d_czclear
.ent gl_d_czclear
gl_d_czclear:
    # Line 7435
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,7060 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7437
    lw	$v0,0($v1)
    # Line 7438
    li	$a2,379
    # Line 7441
    la	$at,comm_endbuffer
    # Line 7440
    sw	$a1,8($v0)
    # Line 7439
    sw	$a0,4($v0)
    # Line 7438
    sw	$a2,0($v0)
    # Line 7441
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1704
    sw	$v0,0($v1)
.L0f0b16f8:
    ld	$gp,0($sp)
    # Line 7443
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1704:
    # Line 7442
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b16f8
    ld	$ra,8($sp)
.end gl_d_czclear

# Function: gl_d_endclosedline
# Declared: Line 7445 (Source lines: 7451-7457)
# Address: 0x0f0b171c - 0x0f0b177c (Size: 96 bytes, Frame: 16)
.globl gl_d_endclosedline
.ent gl_d_endclosedline
gl_d_endclosedline:
    # Line 7451
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,6956
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7453
    lw	$v0,0($v1)
    # Line 7454
    li	$a0,380
    # Line 7455
    la	$at,comm_endbuffer
    # Line 7454
    sw	$a0,0($v0)
    # Line 7455
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1764
    sw	$v0,0($v1)
.L0f0b1758:
    ld	$gp,0($sp)
    # Line 7457
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b1764:
    # Line 7456
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1758
    ld	$ra,8($sp)
.end gl_d_endclosedline

# Function: gl_d_endline
# Declared: Line 7459 (Source lines: 7465-7471)
# Address: 0x0f0b177c - 0x0f0b17dc (Size: 96 bytes, Frame: 16)
.globl gl_d_endline
.ent gl_d_endline
gl_d_endline:
    # Line 7465
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,6860
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7467
    lw	$v0,0($v1)
    # Line 7468
    li	$a0,381
    # Line 7469
    la	$at,comm_endbuffer
    # Line 7468
    sw	$a0,0($v0)
    # Line 7469
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b17c4
    sw	$v0,0($v1)
.L0f0b17b8:
    ld	$gp,0($sp)
    # Line 7471
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b17c4:
    # Line 7470
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b17b8
    ld	$ra,8($sp)
.end gl_d_endline

# Function: gl_d_endpoint
# Declared: Line 7473 (Source lines: 7479-7485)
# Address: 0x0f0b17dc - 0x0f0b183c (Size: 96 bytes, Frame: 16)
.globl gl_d_endpoint
.ent gl_d_endpoint
gl_d_endpoint:
    # Line 7479
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,6764
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7481
    lw	$v0,0($v1)
    # Line 7482
    li	$a0,382
    # Line 7483
    la	$at,comm_endbuffer
    # Line 7482
    sw	$a0,0($v0)
    # Line 7483
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1824
    sw	$v0,0($v1)
.L0f0b1818:
    ld	$gp,0($sp)
    # Line 7485
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b1824:
    # Line 7484
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1818
    ld	$ra,8($sp)
.end gl_d_endpoint

# Function: gl_d_endpolygon
# Declared: Line 7487 (Source lines: 7493-7499)
# Address: 0x0f0b183c - 0x0f0b189c (Size: 96 bytes, Frame: 16)
.globl gl_d_endpolygon
.ent gl_d_endpolygon
gl_d_endpolygon:
    # Line 7493
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,6668
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7495
    lw	$v0,0($v1)
    # Line 7496
    li	$a0,383
    # Line 7497
    la	$at,comm_endbuffer
    # Line 7496
    sw	$a0,0($v0)
    # Line 7497
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1884
    sw	$v0,0($v1)
.L0f0b1878:
    ld	$gp,0($sp)
    # Line 7499
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b1884:
    # Line 7498
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1878
    ld	$ra,8($sp)
.end gl_d_endpolygon

# Function: gl_d_endtmesh
# Declared: Line 7501 (Source lines: 7507-7513)
# Address: 0x0f0b189c - 0x0f0b18fc (Size: 96 bytes, Frame: 16)
.globl gl_d_endtmesh
.ent gl_d_endtmesh
gl_d_endtmesh:
    # Line 7507
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,6572
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7509
    lw	$v0,0($v1)
    # Line 7510
    li	$a0,384
    # Line 7511
    la	$at,comm_endbuffer
    # Line 7510
    sw	$a0,0($v0)
    # Line 7511
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b18e4
    sw	$v0,0($v1)
.L0f0b18d8:
    ld	$gp,0($sp)
    # Line 7513
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b18e4:
    # Line 7512
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b18d8
    ld	$ra,8($sp)
.end gl_d_endtmesh

# Function: gl_d_glcompat
# Declared: Line 7515 (Source lines: 7523-7531)
# Address: 0x0f0b18fc - 0x0f0b1964 (Size: 104 bytes, Frame: 32)
.globl gl_d_glcompat
.ent gl_d_glcompat
gl_d_glcompat:
    # Line 7523
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,6476 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7525
    lw	$v0,0($v1)
    # Line 7526
    li	$a2,385
    # Line 7529
    la	$at,comm_endbuffer
    # Line 7528
    sw	$a1,8($v0)
    # Line 7527
    sw	$a0,4($v0)
    # Line 7526
    sw	$a2,0($v0)
    # Line 7529
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b194c
    sw	$v0,0($v1)
.L0f0b1940:
    ld	$gp,0($sp)
    # Line 7531
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b194c:
    # Line 7530
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1940
    ld	$ra,8($sp)
.end gl_d_glcompat

# Function: gl_d_lRGBrange
# Declared: Line 7533 (Source lines: 7547-7562)
# Address: 0x0f0b1964 - 0x0f0b1a94 (Size: 304 bytes, Frame: 160)
.globl gl_d_lRGBrange
.ent gl_d_lRGBrange
gl_d_lRGBrange:
    # Line 7547
    dsll32	$t1,$a0,0x10
    dsll32	$t2,$a1,0x10
    dsll32	$t3,$a2,0x10
    dsll32	$t8,$a3,0x10
    dsra32	$t8,$t8,0x10
    dsll32	$v0,$a5,0x10
    addiu	$sp,$sp,-160
    sd	$gp,24($sp)
    dsra32	$v0,$v0,0x10
    sd	$v0,16($sp)
    dsll32	$at,$a4,0x10
    dsra32	$at,$at,0x10
    sd	$at,8($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,6372 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v0,comm_curbufpos
    dsra32	$t3,$t3,0x10
    la	$at,comm_endbuffer
    # Line 7549
    lw	$v0,0($v0)
    # Line 7547
    dsra32	$t2,$t2,0x10
    # Line 7549
    lw	$at,0($at)
    sd	$v0,0($sp)
    addiu	$v0,$v0,36
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1a2c
    # Line 7547
    dsra32	$t1,$t1,0x10
.L0f0b19d0:
    # Line 7551
    ld	$a0,0($sp)
    la	$v1,comm_endbuffer
    # Line 7559
    sw	$a7,20($a0)
    # Line 7558
    sw	$a6,16($a0)
    # Line 7551
    li	$v0,386
    sw	$v0,0($a0)
    # Line 7556
    ld	$v0,8($sp)
    # Line 7555
    sh	$t8,10($a0)
    # Line 7554
    sh	$t3,8($a0)
    # Line 7556
    sh	$v0,12($a0)
    # Line 7557
    ld	$v0,16($sp)
    # Line 7553
    sh	$t2,6($a0)
    # Line 7552
    sh	$t1,4($a0)
    # Line 7557
    sh	$v0,14($a0)
    # Line 7560
    lw	$v1,0($v1)
    la	$at,comm_curbufpos
    addiu	$a0,$a0,24
    sltu	$v1,$v1,$a0
    bnez	$v1,.L0f0b1a7c
    sw	$a0,0($at)
.L0f0b1a20:
    ld	$gp,24($sp)
    # Line 7562
    jr	$ra
    addiu	$sp,$sp,160
.L0f0b1a2c:
    sd	$t1,72($sp)
    sd	$t2,64($sp)
    sd	$t3,56($sp)
    sd	$t8,48($sp)
    # Line 7550
    la	$t9,gl_comm_flush
    sd	$a6,40($sp)
    sd	$ra,80($sp)
    jalr	$t9
    sd	$a7,32($sp)
    ld	$a7,32($sp)
    ld	$a6,40($sp)
    ld	$t8,48($sp)
    ld	$t3,56($sp)
    la	$v1,comm_curbufpos
    ld	$t2,64($sp)
    ld	$t1,72($sp)
    lw	$v1,0($v1)
    ld	$ra,80($sp)
    b	.L0f0b19d0
    sd	$v1,0($sp)
.L0f0b1a7c:
    # Line 7561
    la	$t9,gl_comm_flush
    sd	$ra,80($sp)
    jalr	$t9
    nop
    b	.L0f0b1a20
    ld	$ra,80($sp)
.end gl_d_lRGBrange

# Function: gl_d_lsetdepth
# Declared: Line 7564 (Source lines: 7572-7580)
# Address: 0x0f0b1a94 - 0x0f0b1afc (Size: 104 bytes, Frame: 32)
.globl gl_d_lsetdepth
.ent gl_d_lsetdepth
gl_d_lsetdepth:
    # Line 7572
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,6068 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7574
    lw	$v0,0($v1)
    # Line 7575
    li	$a2,387
    # Line 7578
    la	$at,comm_endbuffer
    # Line 7577
    sw	$a1,8($v0)
    # Line 7576
    sw	$a0,4($v0)
    # Line 7575
    sw	$a2,0($v0)
    # Line 7578
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1ae4
    sw	$v0,0($v1)
.L0f0b1ad8:
    ld	$gp,0($sp)
    # Line 7580
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1ae4:
    # Line 7579
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1ad8
    ld	$ra,8($sp)
.end gl_d_lsetdepth

# Function: gl_d_lshaderange
# Declared: Line 7582 (Source lines: 7592-7602)
# Address: 0x0f0b1afc - 0x0f0b1b74 (Size: 120 bytes, Frame: 48)
.globl gl_d_lshaderange
.ent gl_d_lshaderange
gl_d_lshaderange:
    # Line 7592
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,5964 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    andi	$a4,$a0,0xffff
    andi	$a0,$a1,0xffff
    # Line 7594
    lw	$v0,0($v1)
    # Line 7595
    li	$t9,388
    # Line 7600
    la	$at,comm_endbuffer
    # Line 7599
    sw	$a3,12($v0)
    # Line 7598
    sw	$a2,8($v0)
    # Line 7597
    sh	$a0,6($v0)
    # Line 7596
    sh	$a4,4($v0)
    # Line 7595
    sw	$t9,0($v0)
    # Line 7600
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1b5c
    sw	$v0,0($v1)
.L0f0b1b50:
    ld	$gp,0($sp)
    # Line 7602
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b1b5c:
    # Line 7601
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1b50
    ld	$ra,8($sp)
.end gl_d_lshaderange

# Function: gl_dgl_lrectread
# Declared: Line 7604 (Source lines: 7615-7631)
# Address: 0x0f0b1b74 - 0x0f0b1c98 (Size: 292 bytes, Frame: 240)
.globl gl_dgl_lrectread
.ent gl_dgl_lrectread
gl_dgl_lrectread:
    # Line 7615
    addiu	$sp,$sp,-112
    sd	$ra,48($sp)
    sd	$a4,32($sp)
    sd	$s1,24($sp)
    dsll32	$s1,$a1,0x10
    sd	$s0,16($sp)
    dsll32	$s0,$a2,0x10
    sd	$s2,8($sp)
    dsll32	$s2,$a3,0x10
    dsra32	$s2,$s2,0x10
    dsra32	$s0,$s0,0x10
    sd	$gp,40($sp)
    sd	$s3,0($sp)
    lui	$s3,0xfff8
    addiu	$s3,$s3,5844
    addu	$gp,$t9,$s3
    la	$a5,comm_curbufpos
    # Line 7617
    la	$at,comm_endbuffer
    # Line 7615
    dsra32	$s1,$s1,0x10
    # Line 7617
    lw	$a7,0($a5)
    lw	$at,0($at)
    # Line 7615
    dsll32	$s3,$a0,0x10
    # Line 7617
    addiu	$v0,$a7,28
    sltu	$at,$at,$v0
    beqz	$at,.L0f0b1bf0
    # Line 7615
    dsra32	$s3,$s3,0x10
    # Line 7618
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$a5,comm_curbufpos
    lw	$a7,0($a5)
.L0f0b1bf0:
    # Line 7625
    subu	$v1,$s0,$s3
    subu	$a0,$s2,$s1
    addiu	$a0,$a0,1
    addiu	$v1,$v1,1
    mult	$v1,$a0
    # Line 7623
    sh	$s2,10($a7)
    # Line 7622
    sh	$s0,8($a7)
    # Line 7621
    sh	$s1,6($a7)
    # Line 7620
    sh	$s3,4($a7)
    # Line 7626
    addiu	$t8,$a7,20
    # Line 7619
    li	$v0,389
    # Line 7624
    li	$at,-4
    sw	$at,12($a7)
    # Line 7619
    sw	$v0,0($a7)
    # Line 7627
    li	$a0,1
    la	$t9,gl_comm_read_data
    # Line 7625
    mflo	$ra
    sll	$ra,$ra,0x2
    sw	$ra,16($a7)
    # Line 7627
    jalr	$t9
    # Line 7626
    sw	$t8,0($a5)
    # Line 7629
    move	$a5,$s2
    move	$a4,$s0
    move	$a3,$s1
    la	$a1,comm_buffer
    move	$a2,$s3
    la	$t9,gl_mem_unpack_lrect
    lw	$a1,0($a1)
    ld	$a0,32($sp)
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,40($sp)
    # Line 7631
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    lw	$v0,0($v0)
    ld	$ra,48($sp)
    ld	$s3,0($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_dgl_lrectread

# Function: gl_dgl_lrectwrite
# Declared: Line 7634 (Source lines: 7645-7661)
# Address: 0x0f0b1c98 - 0x0f0b1df4 (Size: 348 bytes, Frame: 240)
.globl gl_dgl_lrectwrite
.ent gl_dgl_lrectwrite
gl_dgl_lrectwrite:
    # Line 7645
    addiu	$sp,$sp,-112
    sd	$ra,56($sp)
    sd	$a4,40($sp)
    sd	$s2,8($sp)
    dsll32	$s2,$a1,0x10
    sd	$s0,24($sp)
    dsll32	$s0,$a2,0x10
    sd	$s1,16($sp)
    dsll32	$s1,$a3,0x10
    dsra32	$s1,$s1,0x10
    dsra32	$s0,$s0,0x10
    sd	$gp,48($sp)
    sd	$s3,0($sp)
    lui	$s3,0xfff8
    addiu	$s3,$s3,5552
    addu	$gp,$t9,$s3
    la	$a5,comm_curbufpos
    la	$at,comm_endbuffer
    dsra32	$s2,$s2,0x10
    lw	$a5,0($a5)
    lw	$at,0($at)
    dsll32	$s3,$a0,0x10
    addiu	$v0,$a5,100
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1dc8
    dsra32	$s3,$s3,0x10
.L0f0b1d00:
    # Line 7649
    move	$t8,$a5
    sd	$a5,32($sp)
    # Line 7655
    move	$a3,$s1
    move	$a2,$s2
    move	$a1,$s0
    move	$a0,$s3
    # Line 7654
    sh	$s1,10($a5)
    # Line 7650
    li	$t9,390
    sw	$t9,0($a5)
    # Line 7655
    la	$t9,gl_dgl_alen
    # Line 7653
    sh	$s0,8($a5)
    # Line 7652
    sh	$s2,6($a5)
    # Line 7655
    jalr	$t9
    # Line 7651
    sh	$s3,4($a5)
    # Line 7657
    li	$a7,100
    move	$a6,$s1
    move	$a5,$s0
    move	$a4,$s2
    move	$a3,$s3
    # Line 7656
    li	$t0,-4
    # Line 7657
    la	$t9,gl_mem_pack_lrect
    ld	$ra,32($sp)
    # Line 7656
    sll	$a2,$v0,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$t0
    # Line 7657
    addiu	$a0,$ra,16
    # Line 7656
    sw	$a2,12($ra)
    # Line 7657
    jalr	$t9
    ld	$a1,40($sp)
    ld	$ra,56($sp)
    ld	$s2,8($sp)
    ld	$s3,0($sp)
    la	$s0,comm_endbuffer
    # Line 7659
    la	$t0,comm_buffer
    la	$a7,comm_stdsize
    la	$s1,comm_curbufpos
    lw	$t0,0($t0)
    lw	$a7,0($a7)
    # Line 7658
    sw	$v0,0($s1)
    ld	$s1,16($sp)
    # Line 7659
    addu	$a7,$a7,$t0
    addiu	$t0,$a7,-24
    sw	$t0,0($s0)
    addiu	$a7,$a7,-24
    sltu	$a7,$a7,$v0
    bnez	$a7,.L0f0b1de0
    ld	$s0,24($sp)
.L0f0b1dbc:
    ld	$gp,48($sp)
    # Line 7661
    jr	$ra
    addiu	$sp,$sp,112
.L0f0b1dc8:
    # Line 7649
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$a5,comm_curbufpos
    b	.L0f0b1d00
    lw	$a5,0($a5)
.L0f0b1de0:
    # Line 7660
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0b1dbc
    ld	$ra,56($sp)
.end gl_dgl_lrectwrite

# Function: gl_d_n3f
# Declared: Line 7663 (Source lines: 7670-7679)
# Address: 0x0f0b1df4 - 0x0f0b1e6c (Size: 120 bytes, Frame: 32)
.globl gl_d_n3f
.ent gl_d_n3f
gl_d_n3f:
    # Line 7670
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,5204 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7672
    lw	$v0,0($v1)
    # Line 7673
    li	$a1,391
    sw	$a1,0($v0)
    # Line 7674
    lwc1	$f2,0($a0)
    swc1	$f2,4($v0)
    # Line 7675
    lwc1	$f1,4($a0)
    swc1	$f1,8($v0)
    # Line 7676
    lwc1	$f0,8($a0)
    # Line 7677
    la	$at,comm_endbuffer
    # Line 7676
    swc1	$f0,12($v0)
    # Line 7677
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1e54
    sw	$v0,0($v1)
.L0f0b1e48:
    ld	$gp,0($sp)
    # Line 7679
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1e54:
    # Line 7678
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1e48
    ld	$ra,8($sp)
.end gl_d_n3f

# Function: gl_d_readsource
# Declared: Line 7681 (Source lines: 7688-7695)
# Address: 0x0f0b1e6c - 0x0f0b1ed0 (Size: 100 bytes, Frame: 32)
.globl gl_d_readsource
.ent gl_d_readsource
gl_d_readsource:
    # Line 7688
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,5084 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7690
    lw	$v0,0($v1)
    # Line 7691
    li	$a1,392
    # Line 7693
    la	$at,comm_endbuffer
    # Line 7692
    sw	$a0,4($v0)
    # Line 7691
    sw	$a1,0($v0)
    # Line 7693
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b1eb8
    sw	$v0,0($v1)
.L0f0b1eac:
    ld	$gp,0($sp)
    # Line 7695
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b1eb8:
    # Line 7694
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b1eac
    ld	$ra,8($sp)
.end gl_d_readsource

# Function: gl_d_rectread
# Declared: Line 7697 (Source lines: 7708-7724)
# Address: 0x0f0b1ed0 - 0x0f0b1fe4 (Size: 276 bytes, Frame: 240)
.globl gl_d_rectread
.ent gl_d_rectread
gl_d_rectread:
    # Line 7708
    dsll32	$a6,$a1,0x10
    dsll32	$a7,$a2,0x10
    dsll32	$t0,$a3,0x10
    addiu	$sp,$sp,-112
    sd	$ra,24($sp)
    sd	$a4,8($sp)
    dsra32	$t0,$t0,0x10
    dsra32	$a7,$a7,0x10
    dsra32	$a6,$a6,0x10
    sd	$gp,16($sp)
    lui	$t1,0xfff8
    addiu	$t1,$t1,4984
    addu	$gp,$t9,$t1
    la	$t1,comm_curbufpos
    # Line 7710
    la	$at,comm_endbuffer
    sd	$s1,0($sp)
    lw	$t2,0($t1)
    lw	$at,0($at)
    # Line 7708
    dsll32	$s1,$a0,0x10
    # Line 7710
    addiu	$v0,$t2,28
    sltu	$at,$at,$v0
    beqz	$at,.L0f0b1f54
    # Line 7708
    dsra32	$s1,$s1,0x10
    # Line 7711
    la	$t9,gl_comm_flush
    sd	$a6,48($sp)
    sd	$a7,40($sp)
    jalr	$t9
    sd	$t0,32($sp)
    ld	$t0,32($sp)
    la	$t1,comm_curbufpos
    ld	$a7,40($sp)
    ld	$a6,48($sp)
    lw	$t2,0($t1)
.L0f0b1f54:
    # Line 7718
    subu	$v0,$a7,$s1
    subu	$v1,$t0,$a6
    addiu	$v1,$v1,1
    addiu	$v0,$v0,1
    mult	$v0,$v1
    # Line 7720
    li	$a0,1
    # Line 7716
    sh	$t0,10($t2)
    # Line 7715
    sh	$a7,8($t2)
    # Line 7714
    sh	$a6,6($t2)
    # Line 7713
    sh	$s1,4($t2)
    # Line 7719
    addiu	$t3,$t2,20
    # Line 7717
    li	$ra,-2
    # Line 7712
    li	$at,393
    sw	$at,0($t2)
    # Line 7717
    sw	$ra,12($t2)
    # Line 7720
    la	$t9,gl_comm_read_data
    # Line 7718
    mflo	$t8
    addu	$t8,$t8,$t8
    sw	$t8,16($t2)
    # Line 7720
    jalr	$t9
    # Line 7719
    sw	$t3,0($t1)
    # Line 7722
    la	$a2,gl_mem_ntoh_short_array
    la	$a1,comm_buffer
    ld	$a0,8($sp)
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    ld	$s1,0($sp)
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    # Line 7724
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_d_rectread

# Function: gl_d_rectwrite
# Declared: Line 7727 (Source lines: 7738-7757)
# Address: 0x0f0b1fe4 - 0x0f0b2158 (Size: 372 bytes, Frame: 240)
.globl gl_d_rectwrite
.ent gl_d_rectwrite
gl_d_rectwrite:
    # Line 7738
    dsll32	$a7,$a1,0x10
    dsll32	$t0,$a2,0x10
    dsll32	$t1,$a3,0x10
    addiu	$sp,$sp,-112
    sd	$s0,0($sp)
    move	$s0,$a4
    dsra32	$t1,$t1,0x10
    dsra32	$t0,$t0,0x10
    dsra32	$a7,$a7,0x10
    sd	$gp,16($sp)
    lui	$t2,0xfff8
    addiu	$t2,$t2,4708
    addu	$gp,$t9,$t2
    la	$t2,comm_curbufpos
    la	$t3,comm_endbuffer
    sd	$s1,8($sp)
    lw	$t8,0($t2)
    lw	$at,0($t3)
    dsll32	$s1,$a0,0x10
    addiu	$v0,$t8,100
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2108
    dsra32	$s1,$s1,0x10
.L0f0b2040:
    # Line 7749
    subu	$at,$t0,$s1
    subu	$v1,$t1,$a7
    addiu	$v1,$v1,1
    addiu	$at,$at,1
    mult	$at,$v1
    # Line 7742
    move	$v0,$t8
    # Line 7747
    sh	$t1,10($t8)
    # Line 7746
    sh	$t0,8($t8)
    # Line 7745
    sh	$a7,6($t8)
    # Line 7744
    sh	$s1,4($t8)
    # Line 7743
    li	$a3,394
    sw	$a3,0($t8)
    # Line 7749
    li	$a3,-4
    mflo	$a2
    addu	$a2,$a2,$a2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0b20d4
    sw	$a2,12($t8)
    ld	$s1,8($sp)
    ld	$s0,0($sp)
    # Line 7751
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f0b209c:
    # Line 7755
    la	$a3,comm_buffer
    la	$a0,comm_stdsize
    lw	$a3,0($a3)
    lw	$a0,0($a0)
    # Line 7754
    sw	$v0,0($t2)
    # Line 7755
    addu	$a0,$a0,$a3
    addiu	$v1,$a0,-24
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$v0
    bnez	$a0,.L0f0b2140
    sw	$v1,0($t3)
.L0f0b20c8:
    ld	$gp,16($sp)
    # Line 7757
    jr	$ra
    addiu	$sp,$sp,112
.L0f0b20d4:
    # Line 7753
    li	$a4,100
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,16
    sd	$ra,48($sp)
    jalr	$t9
    ld	$s1,8($sp)
    la	$t2,comm_curbufpos
    la	$t3,comm_endbuffer
    ld	$ra,48($sp)
    b	.L0f0b209c
    ld	$s0,0($sp)
.L0f0b2108:
    sd	$a7,40($sp)
    # Line 7742
    la	$t9,gl_comm_flush
    sd	$t0,32($sp)
    sd	$ra,48($sp)
    jalr	$t9
    sd	$t1,24($sp)
    la	$t3,comm_endbuffer
    ld	$t1,24($sp)
    ld	$t0,32($sp)
    ld	$a7,40($sp)
    la	$t2,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f0b2040
    lw	$t8,0($t2)
.L0f0b2140:
    # Line 7756
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    jalr	$t9
    nop
    b	.L0f0b20c8
    ld	$ra,48($sp)
.end gl_d_rectwrite

# Function: gl_d_rectzoom
# Declared: Line 7759 (Source lines: 7767-7775)
# Address: 0x0f0b2158 - 0x0f0b21c0 (Size: 104 bytes, Frame: 32)
.globl gl_d_rectzoom
.ent gl_d_rectzoom
gl_d_rectzoom:
    # Line 7767
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,4336
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7769
    lw	$v0,0($v1)
    # Line 7770
    li	$a0,395
    # Line 7773
    la	$at,comm_endbuffer
    # Line 7772
    swc1	$f13,8($v0)
    # Line 7771
    swc1	$f12,4($v0)
    # Line 7770
    sw	$a0,0($v0)
    # Line 7773
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b21a8
    sw	$v0,0($v1)
.L0f0b219c:
    ld	$gp,0($sp)
    # Line 7775
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b21a8:
    # Line 7774
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b219c
    ld	$ra,8($sp)
.end gl_d_rectzoom

# Function: gl_d_smoothline
# Declared: Line 7777 (Source lines: 7784-7791)
# Address: 0x0f0b21c0 - 0x0f0b2224 (Size: 100 bytes, Frame: 32)
.globl gl_d_smoothline
.ent gl_d_smoothline
gl_d_smoothline:
    # Line 7784
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,4232 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7786
    lw	$v0,0($v1)
    # Line 7787
    li	$a1,396
    # Line 7789
    la	$at,comm_endbuffer
    # Line 7788
    sw	$a0,4($v0)
    # Line 7787
    sw	$a1,0($v0)
    # Line 7789
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b220c
    sw	$v0,0($v1)
.L0f0b2200:
    ld	$gp,0($sp)
    # Line 7791
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b220c:
    # Line 7790
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2200
    ld	$ra,8($sp)
.end gl_d_smoothline

# Function: gl_d_swaptmesh
# Declared: Line 7793 (Source lines: 7799-7805)
# Address: 0x0f0b2224 - 0x0f0b2284 (Size: 96 bytes, Frame: 16)
.globl gl_d_swaptmesh
.ent gl_d_swaptmesh
gl_d_swaptmesh:
    # Line 7799
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,4132
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 7801
    lw	$v0,0($v1)
    # Line 7802
    li	$a0,397
    # Line 7803
    la	$at,comm_endbuffer
    # Line 7802
    sw	$a0,0($v0)
    # Line 7803
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b226c
    sw	$v0,0($v1)
.L0f0b2260:
    ld	$gp,0($sp)
    # Line 7805
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b226c:
    # Line 7804
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2260
    ld	$ra,8($sp)
.end gl_d_swaptmesh

# Function: gl_d_v2d
# Declared: Line 7807 (Source lines: 7814-7839)
# Address: 0x0f0b2284 - 0x0f0b23a0 (Size: 284 bytes, Frame: 48)
.globl gl_d_v2d
.ent gl_d_v2d
gl_d_v2d:
    # Line 7814
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,4036 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sd	$s2,0($sp)
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    move	$s2,$a0
    beqz	$at,.L0f0b2340
    lw	$a4,0($a1)
    sd	$ra,24($sp)
    sd	$s4,16($sp)
.L0f0b22c0:
    # Line 7830
    move	$s4,$a4
    # Line 7835
    li	$a2,8
    move	$a1,$s2
    addiu	$a0,$a4,8
    la	$t9,memcpy
    sd	$ra,24($sp)
    # Line 7834
    li	$v1,398
    # Line 7835
    jalr	$t9
    # Line 7834
    sw	$v1,0($a4)
    # Line 7836
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,8
    jalr	$t9
    addiu	$a0,$s4,16
    la	$a2,comm_endbuffer
    la	$ra,comm_curbufpos
    # Line 7837
    addiu	$s4,$s4,24
    lw	$a2,0($a2)
    sw	$s4,0($ra)
    ld	$ra,24($sp)
    sltu	$a2,$a2,$s4
    bnez	$a2,.L0f0b232c
    ld	$s4,16($sp)
.L0f0b231c:
    ld	$gp,8($sp)
    # Line 7839
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b232c:
    # Line 7838
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s4,16($sp)
    b	.L0f0b231c
    ld	$ra,24($sp)
.L0f0b2340:
    # Line 7814
    la	$at,comm_endbuffer
    lw	$at,0($at)
    addiu	$v0,$a4,28
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2380
    # Line 7827
    la	$t9,gl_comm_flush
.L0f0b2358:
    sd	$s4,16($sp)
    andi	$v0,$a4,0x7
    beqz	$v0,.L0f0b22c0
    move	$s4,$a4
    # Line 7829
    li	$v1,-1
    sd	$ra,24($sp)
    sw	$v1,0($s4)
    # Line 7830
    addiu	$a4,$s4,4
    b	.L0f0b22c0
    sw	$a4,0($a1)
.L0f0b2380:
    sd	$ra,24($sp)
    # Line 7827
    jalr	$t9
    nop
    sd	$s4,16($sp)
    la	$a1,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b2358
    lw	$a4,0($a1)
.end gl_d_v2d

# Function: gl_d_v2f
# Declared: Line 7841 (Source lines: 7848-7856)
# Address: 0x0f0b23a0 - 0x0f0b2410 (Size: 112 bytes, Frame: 32)
.globl gl_d_v2f
.ent gl_d_v2f
gl_d_v2f:
    # Line 7848
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,3752 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7850
    lw	$v0,0($v1)
    # Line 7851
    li	$a1,399
    sw	$a1,0($v0)
    # Line 7852
    lwc1	$f1,0($a0)
    swc1	$f1,4($v0)
    # Line 7853
    lwc1	$f0,4($a0)
    # Line 7854
    la	$at,comm_endbuffer
    # Line 7853
    swc1	$f0,8($v0)
    # Line 7854
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b23f8
    sw	$v0,0($v1)
.L0f0b23ec:
    ld	$gp,0($sp)
    # Line 7856
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b23f8:
    # Line 7855
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b23ec
    ld	$ra,8($sp)
.end gl_d_v2f

# Function: gl_d_v2i
# Declared: Line 7858 (Source lines: 7865-7873)
# Address: 0x0f0b2410 - 0x0f0b2480 (Size: 112 bytes, Frame: 32)
.globl gl_d_v2i
.ent gl_d_v2i
gl_d_v2i:
    # Line 7865
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,3640 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7867
    lw	$v0,0($v1)
    # Line 7868
    li	$t9,400
    sw	$t9,0($v0)
    # Line 7869
    lw	$a1,0($a0)
    sw	$a1,4($v0)
    # Line 7870
    lw	$a0,4($a0)
    # Line 7871
    la	$at,comm_endbuffer
    # Line 7870
    sw	$a0,8($v0)
    # Line 7871
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2468
    sw	$v0,0($v1)
.L0f0b245c:
    ld	$gp,0($sp)
    # Line 7873
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2468:
    # Line 7872
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b245c
    ld	$ra,8($sp)
.end gl_d_v2i

# Function: gl_d_v2s
# Declared: Line 7875 (Source lines: 7882-7890)
# Address: 0x0f0b2480 - 0x0f0b24f0 (Size: 112 bytes, Frame: 32)
.globl gl_d_v2s
.ent gl_d_v2s
gl_d_v2s:
    # Line 7882
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,3528 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7884
    lw	$v0,0($v1)
    # Line 7885
    li	$t9,401
    sw	$t9,0($v0)
    # Line 7886
    lh	$a1,0($a0)
    sh	$a1,4($v0)
    # Line 7887
    lh	$a0,2($a0)
    # Line 7888
    la	$at,comm_endbuffer
    # Line 7887
    sh	$a0,6($v0)
    # Line 7888
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b24d8
    sw	$v0,0($v1)
.L0f0b24cc:
    ld	$gp,0($sp)
    # Line 7890
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b24d8:
    # Line 7889
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b24cc
    ld	$ra,8($sp)
.end gl_d_v2s

# Function: gl_d_v3d
# Declared: Line 7892 (Source lines: 7899-7925)
# Address: 0x0f0b24f0 - 0x0f0b2620 (Size: 304 bytes, Frame: 48)
.globl gl_d_v3d
.ent gl_d_v3d
gl_d_v3d:
    # Line 7899
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,3416 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sd	$s2,0($sp)
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    move	$s2,$a0
    beqz	$at,.L0f0b25c0
    lw	$a4,0($a1)
    sd	$ra,24($sp)
    sd	$s4,16($sp)
.L0f0b252c:
    # Line 7915
    move	$s4,$a4
    # Line 7920
    li	$a2,8
    move	$a1,$s2
    addiu	$a0,$a4,8
    la	$t9,memcpy
    sd	$ra,24($sp)
    # Line 7919
    li	$v1,402
    # Line 7920
    jalr	$t9
    # Line 7919
    sw	$v1,0($a4)
    # Line 7921
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,8
    jalr	$t9
    addiu	$a0,$s4,16
    # Line 7922
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,16
    jalr	$t9
    addiu	$a0,$s4,24
    la	$a2,comm_endbuffer
    la	$ra,comm_curbufpos
    # Line 7923
    addiu	$s4,$s4,32
    lw	$a2,0($a2)
    sw	$s4,0($ra)
    ld	$ra,24($sp)
    sltu	$a2,$a2,$s4
    bnez	$a2,.L0f0b25ac
    ld	$s4,16($sp)
.L0f0b259c:
    ld	$gp,8($sp)
    # Line 7925
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b25ac:
    # Line 7924
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s4,16($sp)
    b	.L0f0b259c
    ld	$ra,24($sp)
.L0f0b25c0:
    # Line 7899
    la	$at,comm_endbuffer
    lw	$at,0($at)
    addiu	$v0,$a4,36
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2600
    # Line 7912
    la	$t9,gl_comm_flush
.L0f0b25d8:
    sd	$s4,16($sp)
    andi	$v0,$a4,0x7
    beqz	$v0,.L0f0b252c
    move	$s4,$a4
    # Line 7914
    li	$v1,-1
    sd	$ra,24($sp)
    sw	$v1,0($s4)
    # Line 7915
    addiu	$a4,$s4,4
    b	.L0f0b252c
    sw	$a4,0($a1)
.L0f0b2600:
    sd	$ra,24($sp)
    # Line 7912
    jalr	$t9
    nop
    sd	$s4,16($sp)
    la	$a1,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b25d8
    lw	$a4,0($a1)
.end gl_d_v3d

# Function: gl_d_v3f
# Declared: Line 7927 (Source lines: 7934-7943)
# Address: 0x0f0b2620 - 0x0f0b2698 (Size: 120 bytes, Frame: 32)
.globl gl_d_v3f
.ent gl_d_v3f
gl_d_v3f:
    # Line 7934
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,3112 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 7936
    lw	$v0,0($v1)
    # Line 7937
    li	$a1,403
    sw	$a1,0($v0)
    # Line 7938
    lwc1	$f2,0($a0)
    swc1	$f2,4($v0)
    # Line 7939
    lwc1	$f1,4($a0)
    swc1	$f1,8($v0)
    # Line 7940
    lwc1	$f0,8($a0)
    # Line 7941
    la	$at,comm_endbuffer
    # Line 7940
    swc1	$f0,12($v0)
    # Line 7941
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2680
    sw	$v0,0($v1)
.L0f0b2674:
    ld	$gp,0($sp)
    # Line 7943
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2680:
    # Line 7942
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2674
    ld	$ra,8($sp)
.end gl_d_v3f

# Function: gl_d_v3i
# Declared: Line 7945 (Source lines: 7952-7961)
# Address: 0x0f0b2698 - 0x0f0b2710 (Size: 120 bytes, Frame: 32)
.globl gl_d_v3i
.ent gl_d_v3i
gl_d_v3i:
    # Line 7952
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,2992 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$v1,comm_curbufpos
    # Line 7954
    lw	$v0,0($v1)
    # Line 7955
    li	$at,404
    sw	$at,0($v0)
    # Line 7956
    lw	$t9,0($a0)
    sw	$t9,4($v0)
    # Line 7957
    lw	$a1,4($a0)
    sw	$a1,8($v0)
    # Line 7958
    lw	$a0,8($a0)
    # Line 7959
    la	$at,comm_endbuffer
    # Line 7958
    sw	$a0,12($v0)
    # Line 7959
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b26f8
    sw	$v0,0($v1)
.L0f0b26ec:
    ld	$gp,0($sp)
    # Line 7961
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b26f8:
    # Line 7960
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b26ec
    ld	$ra,8($sp)
.end gl_d_v3i

# Function: gl_d_v3s
# Declared: Line 7963 (Source lines: 7970-7979)
# Address: 0x0f0b2710 - 0x0f0b2788 (Size: 120 bytes, Frame: 32)
.globl gl_d_v3s
.ent gl_d_v3s
gl_d_v3s:
    # Line 7970
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,2872 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$v1,comm_curbufpos
    # Line 7972
    lw	$v0,0($v1)
    # Line 7973
    li	$at,405
    sw	$at,0($v0)
    # Line 7974
    lh	$t9,0($a0)
    sh	$t9,4($v0)
    # Line 7975
    lh	$a1,2($a0)
    sh	$a1,6($v0)
    # Line 7976
    lh	$a0,4($a0)
    # Line 7977
    la	$at,comm_endbuffer
    # Line 7976
    sh	$a0,8($v0)
    # Line 7977
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2770
    sw	$v0,0($v1)
.L0f0b2764:
    ld	$gp,0($sp)
    # Line 7979
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2770:
    # Line 7978
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2764
    ld	$ra,8($sp)
.end gl_d_v3s

# Function: gl_d_v4d
# Declared: Line 7981 (Source lines: 7988-8015)
# Address: 0x0f0b2788 - 0x0f0b28cc (Size: 324 bytes, Frame: 48)
.globl gl_d_v4d
.ent gl_d_v4d
gl_d_v4d:
    # Line 7988
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,2752 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sd	$s2,0($sp)
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    move	$s2,$a0
    beqz	$at,.L0f0b286c
    lw	$a4,0($a1)
    sd	$ra,24($sp)
    sd	$s4,16($sp)
.L0f0b27c4:
    # Line 8004
    move	$s4,$a4
    # Line 8009
    li	$a2,8
    move	$a1,$s2
    addiu	$a0,$a4,8
    la	$t9,memcpy
    sd	$ra,24($sp)
    # Line 8008
    li	$v1,406
    # Line 8009
    jalr	$t9
    # Line 8008
    sw	$v1,0($a4)
    # Line 8010
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,8
    jalr	$t9
    addiu	$a0,$s4,16
    # Line 8011
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,16
    jalr	$t9
    addiu	$a0,$s4,24
    # Line 8012
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,24
    jalr	$t9
    addiu	$a0,$s4,32
    la	$a2,comm_endbuffer
    la	$ra,comm_curbufpos
    # Line 8013
    addiu	$s4,$s4,40
    lw	$a2,0($a2)
    sw	$s4,0($ra)
    ld	$ra,24($sp)
    sltu	$a2,$a2,$s4
    bnez	$a2,.L0f0b2858
    ld	$s4,16($sp)
.L0f0b2848:
    ld	$gp,8($sp)
    # Line 8015
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b2858:
    # Line 8014
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s4,16($sp)
    b	.L0f0b2848
    ld	$ra,24($sp)
.L0f0b286c:
    # Line 7988
    la	$at,comm_endbuffer
    lw	$at,0($at)
    addiu	$v0,$a4,44
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b28ac
    # Line 8001
    la	$t9,gl_comm_flush
.L0f0b2884:
    sd	$s4,16($sp)
    andi	$v0,$a4,0x7
    beqz	$v0,.L0f0b27c4
    move	$s4,$a4
    # Line 8003
    li	$v1,-1
    sd	$ra,24($sp)
    sw	$v1,0($s4)
    # Line 8004
    addiu	$a4,$s4,4
    b	.L0f0b27c4
    sw	$a4,0($a1)
.L0f0b28ac:
    sd	$ra,24($sp)
    # Line 8001
    jalr	$t9
    nop
    sd	$s4,16($sp)
    la	$a1,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b2884
    lw	$a4,0($a1)
.end gl_d_v4d

# Function: gl_d_v4f
# Declared: Line 8017 (Source lines: 8024-8034)
# Address: 0x0f0b28cc - 0x0f0b294c (Size: 128 bytes, Frame: 32)
.globl gl_d_v4f
.ent gl_d_v4f
gl_d_v4f:
    # Line 8024
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,2428 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8026
    lw	$v0,0($v1)
    # Line 8027
    li	$a1,407
    sw	$a1,0($v0)
    # Line 8028
    lwc1	$f3,0($a0)
    swc1	$f3,4($v0)
    # Line 8029
    lwc1	$f2,4($a0)
    swc1	$f2,8($v0)
    # Line 8030
    lwc1	$f1,8($a0)
    swc1	$f1,12($v0)
    # Line 8031
    lwc1	$f0,12($a0)
    # Line 8032
    la	$at,comm_endbuffer
    # Line 8031
    swc1	$f0,16($v0)
    # Line 8032
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2934
    sw	$v0,0($v1)
.L0f0b2928:
    ld	$gp,0($sp)
    # Line 8034
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2934:
    # Line 8033
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2928
    ld	$ra,8($sp)
.end gl_d_v4f

# Function: gl_d_v4i
# Declared: Line 8036 (Source lines: 8043-8053)
# Address: 0x0f0b294c - 0x0f0b29cc (Size: 128 bytes, Frame: 32)
.globl gl_d_v4i
.ent gl_d_v4i
gl_d_v4i:
    # Line 8043
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,2300 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8045
    lw	$v0,0($v1)
    # Line 8046
    li	$a1,408
    sw	$a1,0($v0)
    # Line 8047
    lw	$at,0($a0)
    sw	$at,4($v0)
    # Line 8048
    lw	$t9,4($a0)
    sw	$t9,8($v0)
    # Line 8049
    lw	$a1,8($a0)
    sw	$a1,12($v0)
    # Line 8050
    lw	$a0,12($a0)
    # Line 8051
    la	$at,comm_endbuffer
    # Line 8050
    sw	$a0,16($v0)
    # Line 8051
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b29b4
    sw	$v0,0($v1)
.L0f0b29a8:
    ld	$gp,0($sp)
    # Line 8053
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b29b4:
    # Line 8052
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b29a8
    ld	$ra,8($sp)
.end gl_d_v4i

# Function: gl_d_v4s
# Declared: Line 8055 (Source lines: 8062-8072)
# Address: 0x0f0b29cc - 0x0f0b2a4c (Size: 128 bytes, Frame: 32)
.globl gl_d_v4s
.ent gl_d_v4s
gl_d_v4s:
    # Line 8062
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,2172 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8064
    lw	$v0,0($v1)
    # Line 8065
    li	$a1,409
    sw	$a1,0($v0)
    # Line 8066
    lh	$at,0($a0)
    sh	$at,4($v0)
    # Line 8067
    lh	$t9,2($a0)
    sh	$t9,6($v0)
    # Line 8068
    lh	$a1,4($a0)
    sh	$a1,8($v0)
    # Line 8069
    lh	$a0,6($a0)
    # Line 8070
    la	$at,comm_endbuffer
    # Line 8069
    sh	$a0,10($v0)
    # Line 8070
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2a34
    sw	$v0,0($v1)
.L0f0b2a28:
    ld	$gp,0($sp)
    # Line 8072
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2a34:
    # Line 8071
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2a28
    ld	$ra,8($sp)
.end gl_d_v4s

# Function: gl_d_wmpack
# Declared: Line 8074 (Source lines: 8081-8088)
# Address: 0x0f0b2a4c - 0x0f0b2ab0 (Size: 100 bytes, Frame: 32)
.globl gl_d_wmpack
.ent gl_d_wmpack
gl_d_wmpack:
    # Line 8081
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,2044 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8083
    lw	$v0,0($v1)
    # Line 8084
    li	$a1,410
    # Line 8086
    la	$at,comm_endbuffer
    # Line 8085
    sw	$a0,4($v0)
    # Line 8084
    sw	$a1,0($v0)
    # Line 8086
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2a98
    sw	$v0,0($v1)
.L0f0b2a8c:
    ld	$gp,0($sp)
    # Line 8088
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2a98:
    # Line 8087
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2a8c
    ld	$ra,8($sp)
.end gl_d_wmpack

# Function: gl_d_zdraw
# Declared: Line 8090 (Source lines: 8097-8104)
# Address: 0x0f0b2ab0 - 0x0f0b2b14 (Size: 100 bytes, Frame: 32)
.globl gl_d_zdraw
.ent gl_d_zdraw
gl_d_zdraw:
    # Line 8097
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,1944 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8099
    lw	$v0,0($v1)
    # Line 8100
    li	$a1,411
    # Line 8102
    la	$at,comm_endbuffer
    # Line 8101
    sw	$a0,4($v0)
    # Line 8100
    sw	$a1,0($v0)
    # Line 8102
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2afc
    sw	$v0,0($v1)
.L0f0b2af0:
    ld	$gp,0($sp)
    # Line 8104
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2afc:
    # Line 8103
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2af0
    ld	$ra,8($sp)
.end gl_d_zdraw

# Function: gl_d_zfunction
# Declared: Line 8106 (Source lines: 8113-8120)
# Address: 0x0f0b2b14 - 0x0f0b2b78 (Size: 100 bytes, Frame: 32)
.globl gl_d_zfunction
.ent gl_d_zfunction
gl_d_zfunction:
    # Line 8113
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,1844 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8115
    lw	$v0,0($v1)
    # Line 8116
    li	$a1,412
    # Line 8118
    la	$at,comm_endbuffer
    # Line 8117
    sw	$a0,4($v0)
    # Line 8116
    sw	$a1,0($v0)
    # Line 8118
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2b60
    sw	$v0,0($v1)
.L0f0b2b54:
    ld	$gp,0($sp)
    # Line 8120
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2b60:
    # Line 8119
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2b54
    ld	$ra,8($sp)
.end gl_d_zfunction

# Function: gl_d_zsource
# Declared: Line 8122 (Source lines: 8129-8136)
# Address: 0x0f0b2b78 - 0x0f0b2bdc (Size: 100 bytes, Frame: 32)
.globl gl_d_zsource
.ent gl_d_zsource
gl_d_zsource:
    # Line 8129
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,1744 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8131
    lw	$v0,0($v1)
    # Line 8132
    li	$a1,413
    # Line 8134
    la	$at,comm_endbuffer
    # Line 8133
    sw	$a0,4($v0)
    # Line 8132
    sw	$a1,0($v0)
    # Line 8134
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2bc4
    sw	$v0,0($v1)
.L0f0b2bb8:
    ld	$gp,0($sp)
    # Line 8136
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2bc4:
    # Line 8135
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2bb8
    ld	$ra,8($sp)
.end gl_d_zsource

# Function: gl_d_zwritemask
# Declared: Line 8138 (Source lines: 8145-8152)
# Address: 0x0f0b2bdc - 0x0f0b2c40 (Size: 100 bytes, Frame: 32)
.globl gl_d_zwritemask
.ent gl_d_zwritemask
gl_d_zwritemask:
    # Line 8145
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,1644 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8147
    lw	$v0,0($v1)
    # Line 8148
    li	$a1,414
    # Line 8150
    la	$at,comm_endbuffer
    # Line 8149
    sw	$a0,4($v0)
    # Line 8148
    sw	$a1,0($v0)
    # Line 8150
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2c28
    sw	$v0,0($v1)
.L0f0b2c1c:
    ld	$gp,0($sp)
    # Line 8152
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2c28:
    # Line 8151
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2c1c
    ld	$ra,8($sp)
.end gl_d_zwritemask

# Function: gl_dgl_windepth
# Declared: Line 8154 (Source lines: 8161-8169)
# Address: 0x0f0b2c40 - 0x0f0b2c9c (Size: 92 bytes, Frame: 32)
.globl gl_dgl_windepth
.ent gl_dgl_windepth
gl_dgl_windepth:
    # Line 8161
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,1544
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 8163
    lw	$a1,0($v0)
    # Line 8164
    li	$v1,415
    # Line 8167
    la	$t9,gl_comm_read_data
    # Line 8165
    sw	$a0,4($a1)
    # Line 8167
    li	$a0,1
    # Line 8164
    sw	$v1,0($a1)
    # Line 8166
    addiu	$at,$a1,8
    # Line 8167
    jalr	$t9
    # Line 8166
    sw	$at,0($v0)
    # Line 8168
    la	$v0,comm_buffer
    # Line 8169
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_dgl_windepth

# Function: gl_d_iconsize
# Declared: Line 8172 (Source lines: 8180-8188)
# Address: 0x0f0b2c9c - 0x0f0b2d04 (Size: 104 bytes, Frame: 32)
.globl gl_d_iconsize
.ent gl_d_iconsize
gl_d_iconsize:
    # Line 8180
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,1452 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8182
    lw	$v0,0($v1)
    # Line 8183
    li	$a2,416
    # Line 8186
    la	$at,comm_endbuffer
    # Line 8185
    sw	$a1,8($v0)
    # Line 8184
    sw	$a0,4($v0)
    # Line 8183
    sw	$a2,0($v0)
    # Line 8186
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2cec
    sw	$v0,0($v1)
.L0f0b2ce0:
    ld	$gp,0($sp)
    # Line 8188
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2cec:
    # Line 8187
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2ce0
    ld	$ra,8($sp)
.end gl_d_iconsize

# Function: gl_d_icontitle
# Declared: Line 8190 (Source lines: 8197-8212)
# Address: 0x0f0b2d04 - 0x0f0b2e1c (Size: 280 bytes, Frame: 48)
.globl gl_d_icontitle
.ent gl_d_icontitle
gl_d_icontitle:
    # Line 8197
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,1348 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,16($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b2dec
    move	$s1,$a0
.L0f0b2d40:
    sd	$s0,24($sp)
    # Line 8201
    move	$s0,$v0
    # Line 8203
    la	$t9,strlen
    move	$a0,$s1
    # Line 8202
    li	$a1,417
    # Line 8203
    jalr	$t9
    # Line 8202
    sw	$a1,0($v0)
    ld	$ra,16($sp)
    # Line 8204
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0b2dc4
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 8206
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0b2d80:
    # Line 8210
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    la	$a4,comm_curbufpos
    lw	$v1,0($v1)
    lw	$at,0($at)
    la	$a3,comm_endbuffer
    # Line 8209
    sw	$s0,0($a4)
    # Line 8210
    addu	$at,$at,$v1
    addiu	$v1,$at,-24
    sw	$v1,0($a3)
    addiu	$at,$at,-24
    sltu	$at,$at,$s0
    bnez	$at,.L0f0b2e08
    ld	$s0,24($sp)
.L0f0b2db8:
    ld	$gp,8($sp)
    # Line 8212
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b2dc4:
    # Line 8208
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    ld	$ra,16($sp)
    b	.L0f0b2d80
    ld	$s1,0($sp)
.L0f0b2dec:
    # Line 8201
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,24($sp)
    b	.L0f0b2d40
    lw	$v0,0($v0)
.L0f0b2e08:
    # Line 8211
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s0,24($sp)
    b	.L0f0b2db8
    ld	$ra,16($sp)
.end gl_d_icontitle

# Function: gl_d_iconti
# Declared: Line 8214 (Source lines: 8222-8238)
# Address: 0x0f0b2e1c - 0x0f0b2f38 (Size: 284 bytes, Frame: 48)
.globl gl_d_iconti
.ent gl_d_iconti
gl_d_iconti:
    # Line 8222
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,1068 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s1,0($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2efc
    move	$s1,$a0
.L0f0b2e5c:
    # Line 8226
    move	$v0,$a7
    # Line 8229
    li	$a3,-4
    addiu	$a2,$s0,3
    and	$a2,$a2,$a3
    # Line 8227
    li	$a3,418
    sw	$a3,0($a7)
    # Line 8229
    bnez	$s1,.L0f0b2ecc
    sw	$a2,4($a7)
    ld	$s1,0($sp)
    # Line 8231
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0b2e88:
    # Line 8234
    sw	$s0,0($v0)
    # Line 8236
    la	$a3,comm_buffer
    la	$v1,comm_stdsize
    ld	$s0,8($sp)
    lw	$a3,0($a3)
    lw	$v1,0($v1)
    # Line 8235
    addiu	$a4,$v0,4
    sw	$a4,0($a5)
    # Line 8236
    addu	$v1,$v1,$a3
    addiu	$a3,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$a4
    bnez	$v1,.L0f0b2f20
    sw	$a3,0($a6)
.L0f0b2ec0:
    ld	$gp,16($sp)
    # Line 8238
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b2ecc:
    # Line 8233
    li	$a4,88
    la	$a3,gl_mem_copy_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0b2e88
    ld	$s1,0($sp)
.L0f0b2efc:
    # Line 8226
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b2e5c
    lw	$a7,0($a5)
.L0f0b2f20:
    # Line 8237
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s0,8($sp)
    b	.L0f0b2ec0
    ld	$ra,24($sp)
.end gl_d_iconti

# Function: gl_dgl_swinopen
# Declared: Line 8240 (Source lines: 8247-8255)
# Address: 0x0f0b2f38 - 0x0f0b2f9c (Size: 100 bytes, Frame: 32)
.globl gl_dgl_swinopen
.ent gl_dgl_swinopen
gl_dgl_swinopen:
    # Line 8247
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,784
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 8249
    lw	$a1,0($v0)
    # Line 8250
    li	$v1,419
    # Line 8253
    la	$t9,gl_comm_read_data
    # Line 8251
    sw	$a0,4($a1)
    # Line 8253
    li	$a0,1
    # Line 8250
    sw	$v1,0($a1)
    # Line 8252
    addiu	$at,$a1,8
    # Line 8253
    jalr	$t9
    # Line 8252
    sw	$at,0($v0)
    # Line 8254
    la	$a0,comm_buffer
    # Line 8255
    la	$t9,__GLgl_dgl_wid_from_gl
    lw	$a0,0($a0)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_dgl_swinopen

# Function: gl_d_pntsmooth
# Declared: Line 8258 (Source lines: 8265-8272)
# Address: 0x0f0b2f9c - 0x0f0b3000 (Size: 100 bytes, Frame: 32)
.globl gl_d_pntsmooth
.ent gl_d_pntsmooth
gl_d_pntsmooth:
    # Line 8265
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,684 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8267
    lw	$v0,0($v1)
    # Line 8268
    li	$a1,423
    # Line 8270
    la	$at,comm_endbuffer
    # Line 8269
    sw	$a0,4($v0)
    # Line 8268
    sw	$a1,0($v0)
    # Line 8270
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b2fe8
    sw	$v0,0($v1)
.L0f0b2fdc:
    ld	$gp,0($sp)
    # Line 8272
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b2fe8:
    # Line 8271
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b2fdc
    ld	$ra,8($sp)
.end gl_d_pntsmooth

# Function: gl_d_linesmooth
# Declared: Line 8274 (Source lines: 8281-8288)
# Address: 0x0f0b3000 - 0x0f0b3064 (Size: 100 bytes, Frame: 32)
.globl gl_d_linesmooth
.ent gl_d_linesmooth
gl_d_linesmooth:
    # Line 8281
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,584 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8283
    lw	$v0,0($v1)
    # Line 8284
    li	$a1,424
    # Line 8286
    la	$at,comm_endbuffer
    # Line 8285
    sw	$a0,4($v0)
    # Line 8284
    sw	$a1,0($v0)
    # Line 8286
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b304c
    sw	$v0,0($v1)
.L0f0b3040:
    ld	$gp,0($sp)
    # Line 8288
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b304c:
    # Line 8287
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3040
    ld	$ra,8($sp)
.end gl_d_linesmooth

# Function: gl_d_subpixel
# Declared: Line 8290 (Source lines: 8297-8304)
# Address: 0x0f0b3064 - 0x0f0b30c8 (Size: 100 bytes, Frame: 32)
.globl gl_d_subpixel
.ent gl_d_subpixel
gl_d_subpixel:
    # Line 8297
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,484 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8299
    lw	$v0,0($v1)
    # Line 8300
    li	$a1,425
    # Line 8302
    la	$at,comm_endbuffer
    # Line 8301
    sw	$a0,4($v0)
    # Line 8300
    sw	$a1,0($v0)
    # Line 8302
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b30b0
    sw	$v0,0($v1)
.L0f0b30a4:
    ld	$gp,0($sp)
    # Line 8304
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b30b0:
    # Line 8303
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b30a4
    ld	$ra,8($sp)
.end gl_d_subpixel

# Function: gl_d_sbox
# Declared: Line 8306 (Source lines: 8316-8326)
# Address: 0x0f0b30c8 - 0x0f0b3138 (Size: 112 bytes, Frame: 48)
.globl gl_d_sbox
.ent gl_d_sbox
gl_d_sbox:
    # Line 8316
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,384
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8318
    lw	$v0,0($v1)
    # Line 8319
    li	$a0,426
    # Line 8324
    la	$at,comm_endbuffer
    # Line 8323
    swc1	$f15,16($v0)
    # Line 8322
    swc1	$f14,12($v0)
    # Line 8321
    swc1	$f13,8($v0)
    # Line 8320
    swc1	$f12,4($v0)
    # Line 8319
    sw	$a0,0($v0)
    # Line 8324
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3120
    sw	$v0,0($v1)
.L0f0b3114:
    ld	$gp,0($sp)
    # Line 8326
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b3120:
    # Line 8325
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3114
    ld	$ra,8($sp)
.end gl_d_sbox

# Function: gl_d_sboxf
# Declared: Line 8328 (Source lines: 8338-8348)
# Address: 0x0f0b3138 - 0x0f0b31a8 (Size: 112 bytes, Frame: 48)
.globl gl_d_sboxf
.ent gl_d_sboxf
gl_d_sboxf:
    # Line 8338
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,272
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8340
    lw	$v0,0($v1)
    # Line 8341
    li	$a0,427
    # Line 8346
    la	$at,comm_endbuffer
    # Line 8345
    swc1	$f15,16($v0)
    # Line 8344
    swc1	$f14,12($v0)
    # Line 8343
    swc1	$f13,8($v0)
    # Line 8342
    swc1	$f12,4($v0)
    # Line 8341
    sw	$a0,0($v0)
    # Line 8346
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3190
    sw	$v0,0($v1)
.L0f0b3184:
    ld	$gp,0($sp)
    # Line 8348
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b3190:
    # Line 8347
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3184
    ld	$ra,8($sp)
.end gl_d_sboxf

# Function: gl_d_sboxfi
# Declared: Line 8350 (Source lines: 8360-8370)
# Address: 0x0f0b31a8 - 0x0f0b3218 (Size: 112 bytes, Frame: 48)
.globl gl_d_sboxfi
.ent gl_d_sboxfi
gl_d_sboxfi:
    # Line 8360
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,160 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8362
    lw	$v0,0($v1)
    # Line 8363
    li	$a4,428
    # Line 8368
    la	$at,comm_endbuffer
    # Line 8367
    sw	$a3,16($v0)
    # Line 8366
    sw	$a2,12($v0)
    # Line 8365
    sw	$a1,8($v0)
    # Line 8364
    sw	$a0,4($v0)
    # Line 8363
    sw	$a4,0($v0)
    # Line 8368
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3200
    sw	$v0,0($v1)
.L0f0b31f4:
    ld	$gp,0($sp)
    # Line 8370
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b3200:
    # Line 8369
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b31f4
    ld	$ra,8($sp)
.end gl_d_sboxfi

# Function: gl_d_sboxi
# Declared: Line 8372 (Source lines: 8382-8392)
# Address: 0x0f0b3218 - 0x0f0b3288 (Size: 112 bytes, Frame: 48)
.globl gl_d_sboxi
.ent gl_d_sboxi
gl_d_sboxi:
    # Line 8382
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,48 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8384
    lw	$v0,0($v1)
    # Line 8385
    li	$a4,429
    # Line 8390
    la	$at,comm_endbuffer
    # Line 8389
    sw	$a3,16($v0)
    # Line 8388
    sw	$a2,12($v0)
    # Line 8387
    sw	$a1,8($v0)
    # Line 8386
    sw	$a0,4($v0)
    # Line 8385
    sw	$a4,0($v0)
    # Line 8390
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3270
    sw	$v0,0($v1)
.L0f0b3264:
    ld	$gp,0($sp)
    # Line 8392
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b3270:
    # Line 8391
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3264
    ld	$ra,8($sp)
.end gl_d_sboxi

# Function: gl_d_sboxs
# Declared: Line 8394 (Source lines: 8404-8414)
# Address: 0x0f0b3288 - 0x0f0b3318 (Size: 144 bytes, Frame: 48)
.globl gl_d_sboxs
.ent gl_d_sboxs
gl_d_sboxs:
    # Line 8407
    li	$a4,430
    # Line 8404
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-64 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    dsll32	$t9,$a0,0x10
    la	$v1,comm_curbufpos
    dsll32	$a0,$a3,0x10
    # Line 8412
    la	$at,comm_endbuffer
    # Line 8406
    lw	$v0,0($v1)
    # Line 8404
    dsra32	$t9,$t9,0x10
    dsra32	$a0,$a0,0x10
    # Line 8411
    sh	$a0,10($v0)
    # Line 8408
    sh	$t9,4($v0)
    # Line 8407
    sw	$a4,0($v0)
    # Line 8404
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 8410
    sh	$a1,8($v0)
    # Line 8409
    sh	$a4,6($v0)
    # Line 8412
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3300
    sw	$v0,0($v1)
.L0f0b32f4:
    ld	$gp,0($sp)
    # Line 8414
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b3300:
    # Line 8413
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b32f4
    ld	$ra,8($sp)
.end gl_d_sboxs

# Function: gl_d_sboxfs
# Declared: Line 8416 (Source lines: 8426-8436)
# Address: 0x0f0b3318 - 0x0f0b33a8 (Size: 144 bytes, Frame: 48)
.globl gl_d_sboxfs
.ent gl_d_sboxfs
gl_d_sboxfs:
    # Line 8429
    li	$a4,431
    # Line 8426
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-208 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    dsll32	$t9,$a0,0x10
    la	$v1,comm_curbufpos
    dsll32	$a0,$a3,0x10
    # Line 8434
    la	$at,comm_endbuffer
    # Line 8428
    lw	$v0,0($v1)
    # Line 8426
    dsra32	$t9,$t9,0x10
    dsra32	$a0,$a0,0x10
    # Line 8433
    sh	$a0,10($v0)
    # Line 8430
    sh	$t9,4($v0)
    # Line 8429
    sw	$a4,0($v0)
    # Line 8426
    dsll32	$a4,$a1,0x10
    dsll32	$a1,$a2,0x10
    dsra32	$a4,$a4,0x10
    dsra32	$a1,$a1,0x10
    # Line 8432
    sh	$a1,8($v0)
    # Line 8431
    sh	$a4,6($v0)
    # Line 8434
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3390
    sw	$v0,0($v1)
.L0f0b3384:
    ld	$gp,0($sp)
    # Line 8436
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b3390:
    # Line 8435
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3384
    ld	$ra,8($sp)
.end gl_d_sboxfs

# Function: gl_d_bgnsurface
# Declared: Line 8438 (Source lines: 8444-8450)
# Address: 0x0f0b33a8 - 0x0f0b3408 (Size: 96 bytes, Frame: 16)
.globl gl_d_bgnsurface
.ent gl_d_bgnsurface
gl_d_bgnsurface:
    # Line 8444
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-352
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8446
    lw	$v0,0($v1)
    # Line 8447
    li	$a0,432
    # Line 8448
    la	$at,comm_endbuffer
    # Line 8447
    sw	$a0,0($v0)
    # Line 8448
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b33f0
    sw	$v0,0($v1)
.L0f0b33e4:
    ld	$gp,0($sp)
    # Line 8450
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b33f0:
    # Line 8449
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b33e4
    ld	$ra,8($sp)
.end gl_d_bgnsurface

# Function: gl_d_endsurface
# Declared: Line 8452 (Source lines: 8458-8464)
# Address: 0x0f0b3408 - 0x0f0b3468 (Size: 96 bytes, Frame: 16)
.globl gl_d_endsurface
.ent gl_d_endsurface
gl_d_endsurface:
    # Line 8458
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-448
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8460
    lw	$v0,0($v1)
    # Line 8461
    li	$a0,433
    # Line 8462
    la	$at,comm_endbuffer
    # Line 8461
    sw	$a0,0($v0)
    # Line 8462
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3450
    sw	$v0,0($v1)
.L0f0b3444:
    ld	$gp,0($sp)
    # Line 8464
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b3450:
    # Line 8463
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3444
    ld	$ra,8($sp)
.end gl_d_endsurface

# Function: gl_d_bgntrim
# Declared: Line 8466 (Source lines: 8472-8478)
# Address: 0x0f0b3468 - 0x0f0b34c8 (Size: 96 bytes, Frame: 16)
.globl gl_d_bgntrim
.ent gl_d_bgntrim
gl_d_bgntrim:
    # Line 8472
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-544
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8474
    lw	$v0,0($v1)
    # Line 8475
    li	$a0,434
    # Line 8476
    la	$at,comm_endbuffer
    # Line 8475
    sw	$a0,0($v0)
    # Line 8476
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b34b0
    sw	$v0,0($v1)
.L0f0b34a4:
    ld	$gp,0($sp)
    # Line 8478
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b34b0:
    # Line 8477
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b34a4
    ld	$ra,8($sp)
.end gl_d_bgntrim

# Function: gl_d_endtrim
# Declared: Line 8480 (Source lines: 8486-8492)
# Address: 0x0f0b34c8 - 0x0f0b3528 (Size: 96 bytes, Frame: 16)
.globl gl_d_endtrim
.ent gl_d_endtrim
gl_d_endtrim:
    # Line 8486
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-640
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8488
    lw	$v0,0($v1)
    # Line 8489
    li	$a0,435
    # Line 8490
    la	$at,comm_endbuffer
    # Line 8489
    sw	$a0,0($v0)
    # Line 8490
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3510
    sw	$v0,0($v1)
.L0f0b3504:
    ld	$gp,0($sp)
    # Line 8492
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b3510:
    # Line 8491
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3504
    ld	$ra,8($sp)
.end gl_d_endtrim

# Function: gl_d_nurbssurface
# Declared: Line 8494 (Source lines: 8510-8560)
# Address: 0x0f0b3528 - 0x0f0b37b8 (Size: 656 bytes, Frame: 160)
.globl gl_d_nurbssurface
.ent gl_d_nurbssurface
gl_d_nurbssurface:
    # Line 8510
    addiu	$sp,$sp,-160
    sd	$s1,24($sp)
    move	$s1,$a7
    sd	$s6,56($sp)
    move	$s6,$a6
    sd	$s7,32($sp)
    move	$s7,$a5
    sd	$a4,8($sp)
    sd	$s5,16($sp)
    move	$s5,$a3
    sd	$s2,64($sp)
    sd	$gp,48($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-736 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    move	$s2,$a2
    sd	$s4,40($sp)
    lw	$at,0($at)
    move	$s4,$a1
    sd	$s3,0($sp)
    lw	$at,408($at)
    la	$v0,comm_curbufpos
    move	$s3,$a0
    beqz	$at,.L0f0b3758
    lw	$v0,0($v0)
    sd	$s0,80($sp)
.L0f0b3594:
    # Line 8527
    move	$s0,$v0
    # Line 8532
    sw	$s3,4($v0)
    # Line 8531
    li	$t0,436
    sw	$t0,0($v0)
    # Line 8534
    li	$a0,-4
    sll	$a2,$s3,0x3
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s4,.L0f0b36c8
    sw	$a2,8($v0)
    # Line 8536
    la	$s4,gl_mem_hton_double_array
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,16
.L0f0b35c8:
    # Line 8539
    sw	$s2,0($s0)
    # Line 8541
    sll	$a2,$s2,0x3
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s5,.L0f0b36f8
    sw	$a2,4($s0)
    sd	$ra,72($sp)
    la	$s5,comm_endbuffer
    # Line 8543
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0b35f0:
    # Line 8548
    ld	$t8,8($sp)
    subu	$ra,$s3,$s1
    mult	$ra,$t8
    lw	$s4,164($sp)
    mflo	$a0
    nop
    subu	$t9,$s2,$s4
    mult	$t9,$s7
    la	$t9,gl_dgl_max
    # Line 8547
    sw	$s7,4($s0)
    # Line 8548
    mflo	$a1
    jalr	$t9
    # Line 8546
    sw	$t8,0($s0)
    ld	$ra,72($sp)
    li	$t0,-4
    # Line 8549
    sra	$a2,$v0,0x2
    srl	$a2,$a2,0x1d
    addu	$a2,$a2,$v0
    sra	$a2,$a2,0x3
    sll	$a2,$a2,0x3
    addiu	$a2,$a2,3
    and	$a2,$a2,$t0
    bnez	$s6,.L0f0b3720
    sw	$a2,8($s0)
    # Line 8551
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,16
.L0f0b3658:
    la	$t1,comm_curbufpos
    # Line 8555
    sw	$s4,4($s0)
    # Line 8554
    sw	$s1,0($s0)
    # Line 8556
    lw	$t0,172($sp)
    # Line 8558
    la	$at,comm_stdsize
    la	$v1,comm_buffer
    # Line 8556
    sw	$t0,8($s0)
    # Line 8557
    addiu	$t0,$s0,12
    # Line 8558
    lw	$v1,0($v1)
    lw	$at,0($at)
    ld	$s0,80($sp)
    # Line 8557
    sw	$t0,0($t1)
    # Line 8558
    addu	$at,$at,$v1
    addiu	$v1,$at,-24
    addiu	$at,$at,-24
    sltu	$at,$at,$t0
    bnez	$at,.L0f0b3744
    sw	$v1,0($s5)
.L0f0b36a0:
    ld	$gp,48($sp)
    # Line 8560
    ld	$s1,24($sp)
    ld	$s2,64($sp)
    ld	$s3,0($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$s6,56($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f0b36c8:
    # Line 8538
    li	$a4,272
    move	$a1,$s4
    la	$t9,gl_mem_pack_array
    # Line 8536
    la	$a3,gl_mem_hton_double_array
    sd	$ra,72($sp)
    # Line 8538
    jalr	$t9
    addiu	$a0,$s0,16
    li	$a0,-4
    la	$s4,gl_mem_hton_double_array
    move	$s0,$v0
    b	.L0f0b35c8
    ld	$ra,72($sp)
.L0f0b36f8:
    # Line 8545
    li	$a4,272
    move	$a3,$s4
    la	$t9,gl_mem_pack_array
    move	$a1,$s5
    sd	$ra,72($sp)
    jalr	$t9
    addiu	$a0,$s0,8
    la	$s5,comm_endbuffer
    b	.L0f0b35f0
    move	$s0,$v0
.L0f0b3720:
    la	$a3,gl_mem_hton_double_array
    # Line 8553
    la	$t9,gl_mem_pack_array
    li	$a4,272
    move	$a1,$s6
    jalr	$t9
    addiu	$a0,$s0,16
    move	$s0,$v0
    b	.L0f0b3658
    ld	$ra,72($sp)
.L0f0b3744:
    # Line 8559
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s0,80($sp)
    b	.L0f0b36a0
    ld	$ra,72($sp)
.L0f0b3758:
    # Line 8510
    la	$t1,comm_endbuffer
    lw	$t1,0($t1)
    addiu	$at,$v0,276
    sltu	$t1,$t1,$at
    bnez	$t1,.L0f0b3794
.L0f0b376c:
    la	$v1,comm_curbufpos
    sd	$s0,80($sp)
    # Line 8524
    andi	$at,$v0,0x7
    beqz	$at,.L0f0b3594
    move	$s0,$v0
    # Line 8527
    addiu	$v0,$s0,4
    # Line 8526
    li	$t0,-1
    sw	$t0,0($s0)
    # Line 8527
    b	.L0f0b3594
    sw	$v0,0($v1)
.L0f0b3794:
    # Line 8524
    la	$t9,gl_comm_flush
    sd	$ra,72($sp)
    jalr	$t9
    nop
    sd	$s0,80($sp)
    la	$v0,comm_curbufpos
    ld	$ra,72($sp)
    b	.L0f0b376c
    lw	$v0,0($v0)
.end gl_d_nurbssurface

# Function: gl_d_nurbscurve
# Declared: Line 8562 (Source lines: 8574-8615)
# Address: 0x0f0b37b8 - 0x0f0b39ac (Size: 500 bytes, Frame: 240)
.globl gl_d_nurbscurve
.ent gl_d_nurbscurve
gl_d_nurbscurve:
    # Line 8574
    addiu	$sp,$sp,-112
    sd	$a5,0($sp)
    sd	$s1,16($sp)
    move	$s1,$a4
    sd	$s2,48($sp)
    move	$s2,$a3
    sd	$s7,8($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-1392 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    move	$s7,$a2
    sd	$s3,32($sp)
    lw	$at,0($at)
    move	$s3,$a1
    sd	$s0,24($sp)
    lw	$at,408($at)
    la	$t0,comm_curbufpos
    move	$s0,$a0
    beqz	$at,.L0f0b3954
    lw	$t1,0($t0)
    # Line 8591
    la	$a0,comm_endbuffer
.L0f0b3814:
    move	$v0,$t1
    # Line 8596
    sw	$s0,4($t1)
    # Line 8595
    li	$a6,437
    sw	$a6,0($t1)
    # Line 8598
    li	$a1,-4
    sll	$a2,$s0,0x3
    addiu	$a2,$a2,3
    and	$a2,$a2,$a1
    bnez	$s3,.L0f0b38e0
    sw	$a2,8($t1)
    # Line 8600
    la	$a3,gl_mem_hton_double_array
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f0b3848:
    # Line 8605
    subu	$a6,$s0,$s1
    mult	$a6,$s7
    # Line 8603
    sw	$s7,0($v0)
    # Line 8605
    mflo	$a6
    sra	$a2,$a6,0x2
    srl	$a2,$a2,0x1d
    addu	$a2,$a2,$a6
    sra	$a2,$a2,0x3
    sll	$a2,$a2,0x3
    addiu	$a2,$a2,3
    and	$a2,$a2,$a1
    bnez	$s2,.L0f0b3914
    sw	$a2,4($v0)
    # Line 8607
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0b3884:
    # Line 8610
    sw	$s1,0($v0)
    # Line 8611
    ld	$a7,0($sp)
    # Line 8613
    la	$v1,comm_stdsize
    la	$a6,comm_buffer
    # Line 8611
    sw	$a7,4($v0)
    # Line 8613
    lw	$a6,0($a6)
    lw	$v1,0($v1)
    # Line 8612
    addiu	$a7,$v0,8
    sw	$a7,0($t0)
    # Line 8613
    addu	$v1,$v1,$a6
    addiu	$a6,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$a7
    bnez	$v1,.L0f0b393c
    sw	$a6,0($a0)
.L0f0b38c0:
    ld	$gp,40($sp)
    # Line 8615
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,32($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0b38e0:
    # Line 8602
    li	$a4,180
    move	$a1,$s3
    la	$t9,gl_mem_pack_array
    # Line 8600
    la	$a3,gl_mem_hton_double_array
    sd	$ra,56($sp)
    # Line 8602
    jalr	$t9
    addiu	$a0,$v0,16
    la	$t0,comm_curbufpos
    la	$a0,comm_endbuffer
    li	$a1,-4
    la	$a3,gl_mem_hton_double_array
    b	.L0f0b3848
    ld	$ra,56($sp)
.L0f0b3914:
    # Line 8609
    li	$a4,180
    la	$t9,gl_mem_pack_array
    move	$a1,$s2
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$t0,comm_curbufpos
    la	$a0,comm_endbuffer
    b	.L0f0b3884
    ld	$ra,56($sp)
.L0f0b393c:
    # Line 8614
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    jalr	$t9
    nop
    b	.L0f0b38c0
    ld	$ra,56($sp)
.L0f0b3954:
    # Line 8574
    la	$a0,comm_endbuffer
    lw	$at,0($a0)
    addiu	$v1,$t1,184
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b3988
.L0f0b3968:
    # Line 8588
    andi	$a6,$t1,0x7
    beqz	$a6,.L0f0b3814
    move	$v0,$t1
    # Line 8590
    li	$a7,-1
    sw	$a7,0($v0)
    # Line 8591
    addiu	$t1,$v0,4
    b	.L0f0b3814
    sw	$t1,0($t0)
.L0f0b3988:
    # Line 8588
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    jalr	$t9
    nop
    la	$a0,comm_endbuffer
    la	$t0,comm_curbufpos
    ld	$ra,56($sp)
    b	.L0f0b3968
    lw	$t1,0($t0)
.end gl_d_nurbscurve

# Function: gl_d_pwlcurve
# Declared: Line 8617 (Source lines: 8627-8661)
# Address: 0x0f0b39ac - 0x0f0b3b34 (Size: 392 bytes, Frame: 208)
.globl gl_d_pwlcurve
.ent gl_d_pwlcurve
gl_d_pwlcurve:
    # Line 8627
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    sd	$gp,8($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-1892 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    move	$s0,$a2
    sd	$s1,0($sp)
    lw	$at,0($at)
    move	$s1,$a1
    sd	$s8,16($sp)
    lw	$at,408($at)
    la	$a6,comm_curbufpos
    move	$s8,$a0
    beqz	$at,.L0f0b3ad8
    lw	$a7,0($a6)
    # Line 8644
    la	$a0,comm_endbuffer
.L0f0b39f4:
    # Line 8651
    mult	$s8,$s0
    # Line 8644
    move	$v0,$a7
    # Line 8649
    sw	$s8,4($a7)
    # Line 8648
    li	$a4,438
    sw	$a4,0($a7)
    # Line 8651
    mflo	$a4
    sra	$a2,$a4,0x2
    srl	$a2,$a2,0x1d
    addu	$a2,$a2,$a4
    li	$a4,-4
    sra	$a2,$a2,0x3
    sll	$a2,$a2,0x3
    addiu	$a2,$a2,3
    and	$a2,$a2,$a4
    bnez	$s1,.L0f0b3a8c
    sw	$a2,8($a7)
    # Line 8653
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f0b3a3c:
    # Line 8657
    sw	$a3,4($v0)
    # Line 8656
    sw	$s0,0($v0)
    # Line 8659
    la	$at,comm_buffer
    la	$a4,comm_stdsize
    lw	$at,0($at)
    lw	$a4,0($a4)
    # Line 8658
    addiu	$a5,$v0,8
    sw	$a5,0($a6)
    # Line 8659
    addu	$a4,$a4,$at
    addiu	$v1,$a4,-24
    addiu	$a4,$a4,-24
    sltu	$a4,$a4,$a5
    bnez	$a4,.L0f0b3ac0
    sw	$v1,0($a0)
.L0f0b3a74:
    ld	$gp,8($sp)
    # Line 8661
    ld	$s0,24($sp)
    ld	$s1,0($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b3a8c:
    # Line 8655
    li	$a4,96
    sd	$a3,32($sp)
    la	$a3,gl_mem_hton_double_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$v0,16
    la	$a6,comm_curbufpos
    la	$a0,comm_endbuffer
    ld	$a3,32($sp)
    b	.L0f0b3a3c
    ld	$ra,40($sp)
.L0f0b3ac0:
    # Line 8660
    la	$t9,gl_comm_flush
    sd	$ra,40($sp)
    jalr	$t9
    nop
    b	.L0f0b3a74
    ld	$ra,40($sp)
.L0f0b3ad8:
    # Line 8627
    la	$a0,comm_endbuffer
    lw	$a5,0($a0)
    addiu	$at,$a7,100
    sltu	$a5,$a5,$at
    bnez	$a5,.L0f0b3b0c
.L0f0b3aec:
    # Line 8641
    andi	$v1,$a7,0x7
    beqz	$v1,.L0f0b39f4
    move	$v0,$a7
    # Line 8643
    li	$a4,-1
    sw	$a4,0($v0)
    # Line 8644
    addiu	$a7,$v0,4
    b	.L0f0b39f4
    sw	$a7,0($a6)
.L0f0b3b0c:
    # Line 8641
    la	$t9,gl_comm_flush
    sd	$ra,40($sp)
    jalr	$t9
    sd	$a3,32($sp)
    la	$a0,comm_endbuffer
    ld	$a3,32($sp)
    la	$a6,comm_curbufpos
    ld	$ra,40($sp)
    b	.L0f0b3aec
    lw	$a7,0($a6)
.end gl_d_pwlcurve

# Function: gl_d_setnurbsproperty
# Declared: Line 8663 (Source lines: 8671-8679)
# Address: 0x0f0b3b34 - 0x0f0b3b9c (Size: 104 bytes, Frame: 32)
.globl gl_d_setnurbsproperty
.ent gl_d_setnurbsproperty
gl_d_setnurbsproperty:
    # Line 8671
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-2284 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8673
    lw	$v0,0($v1)
    # Line 8674
    li	$a1,439
    # Line 8677
    la	$at,comm_endbuffer
    # Line 8676
    swc1	$f13,8($v0)
    # Line 8675
    sw	$a0,4($v0)
    # Line 8674
    sw	$a1,0($v0)
    # Line 8677
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3b84
    sw	$v0,0($v1)
.L0f0b3b78:
    ld	$gp,0($sp)
    # Line 8679
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b3b84:
    # Line 8678
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3b78
    ld	$ra,8($sp)
.end gl_d_setnurbsproperty

# Function: gl_d_getnurbsproperty
# Declared: Line 8681 (Source lines: 8689-8698)
# Address: 0x0f0b3b9c - 0x0f0b3c08 (Size: 108 bytes, Frame: 48)
.globl gl_d_getnurbsproperty
.ent gl_d_getnurbsproperty
gl_d_getnurbsproperty:
    # Line 8689
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$a3,0xfff8
    addiu	$a3,$a3,-2388
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    move	$s8,$a1
    sd	$ra,0($sp)
    # Line 8691
    lw	$a2,0($v0)
    # Line 8692
    li	$v1,440
    # Line 8696
    la	$t9,gl_comm_read_data
    # Line 8693
    sw	$a0,4($a2)
    # Line 8696
    li	$a0,1
    # Line 8692
    sw	$v1,0($a2)
    # Line 8695
    addiu	$at,$a2,8
    # Line 8696
    jalr	$t9
    # Line 8695
    sw	$at,0($v0)
    # Line 8697
    la	$ra,comm_buffer
    lw	$ra,0($ra)
    lwc1	$f0,4($ra)
    ld	$gp,16($sp)
    # Line 8698
    ld	$ra,0($sp)
    # Line 8697
    swc1	$f0,0($s8)
    # Line 8698
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_getnurbsproperty

# Function: gl_d_lmcolor
# Declared: Line 8700 (Source lines: 8707-8714)
# Address: 0x0f0b3c08 - 0x0f0b3c6c (Size: 100 bytes, Frame: 32)
.globl gl_d_lmcolor
.ent gl_d_lmcolor
gl_d_lmcolor:
    # Line 8707
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-2496 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8709
    lw	$v0,0($v1)
    # Line 8710
    li	$a1,441
    # Line 8712
    la	$at,comm_endbuffer
    # Line 8711
    sw	$a0,4($v0)
    # Line 8710
    sw	$a1,0($v0)
    # Line 8712
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3c54
    sw	$v0,0($v1)
.L0f0b3c48:
    ld	$gp,0($sp)
    # Line 8714
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b3c54:
    # Line 8713
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3c48
    ld	$ra,8($sp)
.end gl_d_lmcolor

# Function: gl_d_videocmd
# Declared: Line 8716 (Source lines: 8723-8730)
# Address: 0x0f0b3c6c - 0x0f0b3cd0 (Size: 100 bytes, Frame: 32)
.globl gl_d_videocmd
.ent gl_d_videocmd
gl_d_videocmd:
    # Line 8723
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-2596 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8725
    lw	$v0,0($v1)
    # Line 8726
    li	$a1,442
    # Line 8728
    la	$at,comm_endbuffer
    # Line 8727
    sw	$a0,4($v0)
    # Line 8726
    sw	$a1,0($v0)
    # Line 8728
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3cb8
    sw	$v0,0($v1)
.L0f0b3cac:
    ld	$gp,0($sp)
    # Line 8730
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b3cb8:
    # Line 8729
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3cac
    ld	$ra,8($sp)
.end gl_d_videocmd

# Function: gl_d_logicop
# Declared: Line 8732 (Source lines: 8739-8746)
# Address: 0x0f0b3cd0 - 0x0f0b3d34 (Size: 100 bytes, Frame: 32)
.globl gl_d_logicop
.ent gl_d_logicop
gl_d_logicop:
    # Line 8739
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-2696 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8741
    lw	$v0,0($v1)
    # Line 8742
    li	$a1,443
    # Line 8744
    la	$at,comm_endbuffer
    # Line 8743
    sw	$a0,4($v0)
    # Line 8742
    sw	$a1,0($v0)
    # Line 8744
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3d1c
    sw	$v0,0($v1)
.L0f0b3d10:
    ld	$gp,0($sp)
    # Line 8746
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b3d1c:
    # Line 8745
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3d10
    ld	$ra,8($sp)
.end gl_d_logicop

# Function: gl_d_colorf
# Declared: Line 8748 (Source lines: 8755-8762)
# Address: 0x0f0b3d34 - 0x0f0b3d98 (Size: 100 bytes, Frame: 32)
.globl gl_d_colorf
.ent gl_d_colorf
gl_d_colorf:
    # Line 8755
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-2796
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8757
    lw	$v0,0($v1)
    # Line 8758
    li	$a0,444
    # Line 8760
    la	$at,comm_endbuffer
    # Line 8759
    swc1	$f12,4($v0)
    # Line 8758
    sw	$a0,0($v0)
    # Line 8760
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3d80
    sw	$v0,0($v1)
.L0f0b3d74:
    ld	$gp,0($sp)
    # Line 8762
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b3d80:
    # Line 8761
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3d74
    ld	$ra,8($sp)
.end gl_d_colorf

# Function: gl_d_setpup
# Declared: Line 8764 (Source lines: 8773-8782)
# Address: 0x0f0b3d98 - 0x0f0b3e04 (Size: 108 bytes, Frame: 48)
.globl gl_d_setpup
.ent gl_d_setpup
gl_d_setpup:
    # Line 8773
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-2896 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8775
    lw	$v0,0($v1)
    # Line 8776
    li	$a3,445
    # Line 8780
    la	$at,comm_endbuffer
    # Line 8779
    sw	$a2,12($v0)
    # Line 8778
    sw	$a1,8($v0)
    # Line 8777
    sw	$a0,4($v0)
    # Line 8776
    sw	$a3,0($v0)
    # Line 8780
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3dec
    sw	$v0,0($v1)
.L0f0b3de0:
    ld	$gp,0($sp)
    # Line 8782
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b3dec:
    # Line 8781
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3de0
    ld	$ra,8($sp)
.end gl_d_setpup

# Function: gl_d_getgdesc
# Declared: Line 8784 (Source lines: 8791-8799)
# Address: 0x0f0b3e04 - 0x0f0b3e60 (Size: 92 bytes, Frame: 32)
.globl gl_d_getgdesc
.ent gl_d_getgdesc
gl_d_getgdesc:
    # Line 8791
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,-3004
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 8793
    lw	$a1,0($v0)
    # Line 8794
    li	$v1,446
    # Line 8797
    la	$t9,gl_comm_read_data
    # Line 8795
    sw	$a0,4($a1)
    # Line 8797
    li	$a0,1
    # Line 8794
    sw	$v1,0($a1)
    # Line 8796
    addiu	$at,$a1,8
    # Line 8797
    jalr	$t9
    # Line 8796
    sw	$at,0($v0)
    # Line 8798
    la	$v0,comm_buffer
    # Line 8799
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_getgdesc

# Function: gl_d_frontface
# Declared: Line 8802 (Source lines: 8809-8816)
# Address: 0x0f0b3e60 - 0x0f0b3ec4 (Size: 100 bytes, Frame: 32)
.globl gl_d_frontface
.ent gl_d_frontface
gl_d_frontface:
    # Line 8809
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-3096 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8811
    lw	$v0,0($v1)
    # Line 8812
    li	$a1,447
    # Line 8814
    la	$at,comm_endbuffer
    # Line 8813
    sw	$a0,4($v0)
    # Line 8812
    sw	$a1,0($v0)
    # Line 8814
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b3eac
    sw	$v0,0($v1)
.L0f0b3ea0:
    ld	$gp,0($sp)
    # Line 8816
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b3eac:
    # Line 8815
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b3ea0
    ld	$ra,8($sp)
.end gl_d_frontface

# Function: gl_d_scrnselect
# Declared: Line 8818 (Source lines: 8825-8833)
# Address: 0x0f0b3ec4 - 0x0f0b3f20 (Size: 92 bytes, Frame: 32)
.globl gl_d_scrnselect
.ent gl_d_scrnselect
gl_d_scrnselect:
    # Line 8825
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,-3196
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 8827
    lw	$a1,0($v0)
    # Line 8828
    li	$v1,448
    # Line 8831
    la	$t9,gl_comm_read_data
    # Line 8829
    sw	$a0,4($a1)
    # Line 8831
    li	$a0,1
    # Line 8828
    sw	$v1,0($a1)
    # Line 8830
    addiu	$at,$a1,8
    # Line 8831
    jalr	$t9
    # Line 8830
    sw	$at,0($v0)
    # Line 8832
    la	$v0,comm_buffer
    # Line 8833
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_scrnselect

# Function: gl_d_getwscrn
# Declared: Line 8836 (Source lines: 8842-8849)
# Address: 0x0f0b3f20 - 0x0f0b3f78 (Size: 88 bytes, Frame: 16)
.globl gl_d_getwscrn
.ent gl_d_getwscrn
gl_d_getwscrn:
    # Line 8842
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,-3288
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 8847
    li	$a0,1
    sd	$ra,0($sp)
    # Line 8844
    lw	$a1,0($v0)
    # Line 8845
    li	$v1,449
    # Line 8847
    la	$t9,gl_comm_read_data
    # Line 8845
    sw	$v1,0($a1)
    # Line 8846
    addiu	$at,$a1,4
    # Line 8847
    jalr	$t9
    # Line 8846
    sw	$at,0($v0)
    # Line 8848
    la	$v0,comm_buffer
    # Line 8849
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getwscrn

# Function: gl_d_scrnattach
# Declared: Line 8852 (Source lines: 8859-8867)
# Address: 0x0f0b3f78 - 0x0f0b3fd4 (Size: 92 bytes, Frame: 32)
.globl gl_d_scrnattach
.ent gl_d_scrnattach
gl_d_scrnattach:
    # Line 8859
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,-3376
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 8861
    lw	$a1,0($v0)
    # Line 8862
    li	$v1,450
    # Line 8865
    la	$t9,gl_comm_read_data
    # Line 8863
    sw	$a0,4($a1)
    # Line 8865
    li	$a0,1
    # Line 8862
    sw	$v1,0($a1)
    # Line 8864
    addiu	$at,$a1,8
    # Line 8865
    jalr	$t9
    # Line 8864
    sw	$at,0($v0)
    # Line 8866
    la	$v0,comm_buffer
    # Line 8867
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_scrnattach

# Function: gl_d_pupmode
# Declared: Line 8870 (Source lines: 8876-8882)
# Address: 0x0f0b3fd4 - 0x0f0b4034 (Size: 96 bytes, Frame: 16)
.globl gl_d_pupmode
.ent gl_d_pupmode
gl_d_pupmode:
    # Line 8876
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-3468
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8878
    lw	$v0,0($v1)
    # Line 8879
    li	$a0,451
    # Line 8880
    la	$at,comm_endbuffer
    # Line 8879
    sw	$a0,0($v0)
    # Line 8880
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b401c
    sw	$v0,0($v1)
.L0f0b4010:
    ld	$gp,0($sp)
    # Line 8882
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b401c:
    # Line 8881
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4010
    ld	$ra,8($sp)
.end gl_d_pupmode

# Function: gl_d_endpupmode
# Declared: Line 8884 (Source lines: 8890-8896)
# Address: 0x0f0b4034 - 0x0f0b4094 (Size: 96 bytes, Frame: 16)
.globl gl_d_endpupmode
.ent gl_d_endpupmode
gl_d_endpupmode:
    # Line 8890
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-3564
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8892
    lw	$v0,0($v1)
    # Line 8893
    li	$a0,452
    # Line 8894
    la	$at,comm_endbuffer
    # Line 8893
    sw	$a0,0($v0)
    # Line 8894
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b407c
    sw	$v0,0($v1)
.L0f0b4070:
    ld	$gp,0($sp)
    # Line 8896
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b407c:
    # Line 8895
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4070
    ld	$ra,8($sp)
.end gl_d_endpupmode

# Function: gl_d_qcontrol
# Declared: Line 8898 (Source lines: 8909-8932)
# Address: 0x0f0b4094 - 0x0f0b41fc (Size: 360 bytes, Frame: 240)
.globl gl_d_qcontrol
.ent gl_d_qcontrol
gl_d_qcontrol:
    # Line 8909
    addiu	$sp,$sp,-112
    sd	$a4,16($sp)
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-3660 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a7,comm_curbufpos
    la	$t0,comm_endbuffer
    move	$s0,$a2
    lw	$t1,0($a7)
    lw	$at,0($t0)
    sd	$s1,8($sp)
    addiu	$v0,$t1,104
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b41cc
    move	$s1,$a0
.L0f0b40d8:
    # Line 8913
    move	$v0,$t1
    # Line 8916
    sw	$a1,8($t1)
    # Line 8915
    sw	$s1,4($t1)
    # Line 8918
    addu	$a2,$a1,$a1
    # Line 8914
    li	$a5,453
    sw	$a5,0($t1)
    # Line 8918
    li	$a5,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a5
    bnez	$s0,.L0f0b4194
    sw	$a2,12($t1)
    ld	$s1,8($sp)
    sd	$ra,32($sp)
    ld	$s0,0($sp)
    # Line 8920
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f0b4118:
    # Line 8928
    li	$a0,1
    # Line 8923
    sw	$a3,0($v0)
    # Line 8927
    la	$v1,comm_stdsize
    # Line 8922
    la	$a1,comm_buffer
    # Line 8925
    addu	$a2,$a3,$a3
    # Line 8924
    li	$a4,-2
    sw	$a4,4($v0)
    # Line 8925
    sw	$a2,8($v0)
    # Line 8926
    addiu	$a2,$v0,12
    # Line 8927
    lw	$a1,0($a1)
    lw	$v1,0($v1)
    # Line 8926
    sw	$a2,0($a7)
    # Line 8928
    la	$t9,gl_comm_read_data
    # Line 8927
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 8928
    jalr	$t9
    # Line 8927
    sw	$v1,0($t0)
    la	$a1,comm_buffer
    # Line 8930
    ld	$a0,16($sp)
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    la	$a2,gl_mem_ntoh_short_array
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    # Line 8932
    lw	$v0,0($v0)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0b4194:
    # Line 8922
    li	$a4,104
    sd	$a3,40($sp)
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,16
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s1,8($sp)
    la	$a7,comm_curbufpos
    la	$t0,comm_endbuffer
    ld	$a3,40($sp)
    b	.L0f0b4118
    ld	$s0,0($sp)
.L0f0b41cc:
    # Line 8913
    la	$t9,gl_comm_flush
    sd	$a1,48($sp)
    sd	$ra,32($sp)
    jalr	$t9
    sd	$a3,40($sp)
    la	$t0,comm_endbuffer
    ld	$ra,32($sp)
    ld	$a3,40($sp)
    la	$a7,comm_curbufpos
    ld	$a1,48($sp)
    b	.L0f0b40d8
    lw	$t1,0($a7)
.end gl_d_qcontrol

# Function: gl_dgl_qgetfd
# Declared: Line 8935 (Source lines: 8941-8948)
# Address: 0x0f0b41fc - 0x0f0b4254 (Size: 88 bytes, Frame: 16)
.globl gl_dgl_qgetfd
.ent gl_dgl_qgetfd
gl_dgl_qgetfd:
    # Line 8941
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,-4020
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 8946
    li	$a0,1
    sd	$ra,0($sp)
    # Line 8943
    lw	$a1,0($v0)
    # Line 8944
    li	$v1,454
    # Line 8946
    la	$t9,gl_comm_read_data
    # Line 8944
    sw	$v1,0($a1)
    # Line 8945
    addiu	$at,$a1,4
    # Line 8946
    jalr	$t9
    # Line 8945
    sw	$at,0($v0)
    # Line 8947
    la	$v0,comm_buffer
    # Line 8948
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_dgl_qgetfd

# Function: gl_d_bgnqstrip
# Declared: Line 8951 (Source lines: 8957-8963)
# Address: 0x0f0b4254 - 0x0f0b42b4 (Size: 96 bytes, Frame: 16)
.globl gl_d_bgnqstrip
.ent gl_d_bgnqstrip
gl_d_bgnqstrip:
    # Line 8957
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-4108
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8959
    lw	$v0,0($v1)
    # Line 8960
    li	$a0,460
    # Line 8961
    la	$at,comm_endbuffer
    # Line 8960
    sw	$a0,0($v0)
    # Line 8961
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b429c
    sw	$v0,0($v1)
.L0f0b4290:
    ld	$gp,0($sp)
    # Line 8963
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b429c:
    # Line 8962
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4290
    ld	$ra,8($sp)
.end gl_d_bgnqstrip

# Function: gl_d_endqstrip
# Declared: Line 8965 (Source lines: 8971-8977)
# Address: 0x0f0b42b4 - 0x0f0b4314 (Size: 96 bytes, Frame: 16)
.globl gl_d_endqstrip
.ent gl_d_endqstrip
gl_d_endqstrip:
    # Line 8971
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-4204
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 8973
    lw	$v0,0($v1)
    # Line 8974
    li	$a0,461
    # Line 8975
    la	$at,comm_endbuffer
    # Line 8974
    sw	$a0,0($v0)
    # Line 8975
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b42fc
    sw	$v0,0($v1)
.L0f0b42f0:
    ld	$gp,0($sp)
    # Line 8977
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b42fc:
    # Line 8976
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b42f0
    ld	$ra,8($sp)
.end gl_d_endqstrip

# Function: gl_d_nmode
# Declared: Line 8979 (Source lines: 8986-8993)
# Address: 0x0f0b4314 - 0x0f0b4378 (Size: 100 bytes, Frame: 32)
.globl gl_d_nmode
.ent gl_d_nmode
gl_d_nmode:
    # Line 8986
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-4300 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 8988
    lw	$v0,0($v1)
    # Line 8989
    li	$a1,463
    # Line 8991
    la	$at,comm_endbuffer
    # Line 8990
    sw	$a0,4($v0)
    # Line 8989
    sw	$a1,0($v0)
    # Line 8991
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4360
    sw	$v0,0($v1)
.L0f0b4354:
    ld	$gp,0($sp)
    # Line 8993
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4360:
    # Line 8992
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4354
    ld	$ra,8($sp)
.end gl_d_nmode

# Function: gl_d_t2f
# Declared: Line 8995 (Source lines: 9002-9010)
# Address: 0x0f0b4378 - 0x0f0b43e8 (Size: 112 bytes, Frame: 32)
.globl gl_d_t2f
.ent gl_d_t2f
gl_d_t2f:
    # Line 9002
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-4400 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9004
    lw	$v0,0($v1)
    # Line 9005
    li	$a1,464
    sw	$a1,0($v0)
    # Line 9006
    lwc1	$f1,0($a0)
    swc1	$f1,4($v0)
    # Line 9007
    lwc1	$f0,4($a0)
    # Line 9008
    la	$at,comm_endbuffer
    # Line 9007
    swc1	$f0,8($v0)
    # Line 9008
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b43d0
    sw	$v0,0($v1)
.L0f0b43c4:
    ld	$gp,0($sp)
    # Line 9010
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b43d0:
    # Line 9009
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b43c4
    ld	$ra,8($sp)
.end gl_d_t2f

# Function: gl_d_t2d
# Declared: Line 9012 (Source lines: 9019-9044)
# Address: 0x0f0b43e8 - 0x0f0b4504 (Size: 284 bytes, Frame: 48)
.globl gl_d_t2d
.ent gl_d_t2d
gl_d_t2d:
    # Line 9019
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-4512 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sd	$s2,0($sp)
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    move	$s2,$a0
    beqz	$at,.L0f0b44a4
    lw	$a4,0($a1)
    sd	$ra,24($sp)
    sd	$s4,16($sp)
.L0f0b4424:
    # Line 9035
    move	$s4,$a4
    # Line 9040
    li	$a2,8
    move	$a1,$s2
    addiu	$a0,$a4,8
    la	$t9,memcpy
    sd	$ra,24($sp)
    # Line 9039
    li	$v1,465
    # Line 9040
    jalr	$t9
    # Line 9039
    sw	$v1,0($a4)
    # Line 9041
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,8
    jalr	$t9
    addiu	$a0,$s4,16
    la	$a2,comm_endbuffer
    la	$ra,comm_curbufpos
    # Line 9042
    addiu	$s4,$s4,24
    lw	$a2,0($a2)
    sw	$s4,0($ra)
    ld	$ra,24($sp)
    sltu	$a2,$a2,$s4
    bnez	$a2,.L0f0b4490
    ld	$s4,16($sp)
.L0f0b4480:
    ld	$gp,8($sp)
    # Line 9044
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b4490:
    # Line 9043
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s4,16($sp)
    b	.L0f0b4480
    ld	$ra,24($sp)
.L0f0b44a4:
    # Line 9019
    la	$at,comm_endbuffer
    lw	$at,0($at)
    addiu	$v0,$a4,28
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b44e4
    # Line 9032
    la	$t9,gl_comm_flush
.L0f0b44bc:
    sd	$s4,16($sp)
    andi	$v0,$a4,0x7
    beqz	$v0,.L0f0b4424
    move	$s4,$a4
    # Line 9034
    li	$v1,-1
    sd	$ra,24($sp)
    sw	$v1,0($s4)
    # Line 9035
    addiu	$a4,$s4,4
    b	.L0f0b4424
    sw	$a4,0($a1)
.L0f0b44e4:
    sd	$ra,24($sp)
    # Line 9032
    jalr	$t9
    nop
    sd	$s4,16($sp)
    la	$a1,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b44bc
    lw	$a4,0($a1)
.end gl_d_t2d

# Function: gl_d_t2i
# Declared: Line 9046 (Source lines: 9053-9061)
# Address: 0x0f0b4504 - 0x0f0b4574 (Size: 112 bytes, Frame: 32)
.globl gl_d_t2i
.ent gl_d_t2i
gl_d_t2i:
    # Line 9053
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-4796 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9055
    lw	$v0,0($v1)
    # Line 9056
    li	$t9,466
    sw	$t9,0($v0)
    # Line 9057
    lw	$a1,0($a0)
    sw	$a1,4($v0)
    # Line 9058
    lw	$a0,4($a0)
    # Line 9059
    la	$at,comm_endbuffer
    # Line 9058
    sw	$a0,8($v0)
    # Line 9059
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b455c
    sw	$v0,0($v1)
.L0f0b4550:
    ld	$gp,0($sp)
    # Line 9061
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b455c:
    # Line 9060
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4550
    ld	$ra,8($sp)
.end gl_d_t2i

# Function: gl_d_t2s
# Declared: Line 9063 (Source lines: 9070-9078)
# Address: 0x0f0b4574 - 0x0f0b45e4 (Size: 112 bytes, Frame: 32)
.globl gl_d_t2s
.ent gl_d_t2s
gl_d_t2s:
    # Line 9070
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-4908 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9072
    lw	$v0,0($v1)
    # Line 9073
    li	$t9,467
    sw	$t9,0($v0)
    # Line 9074
    lh	$a1,0($a0)
    sh	$a1,4($v0)
    # Line 9075
    lh	$a0,2($a0)
    # Line 9076
    la	$at,comm_endbuffer
    # Line 9075
    sh	$a0,6($v0)
    # Line 9076
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b45cc
    sw	$v0,0($v1)
.L0f0b45c0:
    ld	$gp,0($sp)
    # Line 9078
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b45cc:
    # Line 9077
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b45c0
    ld	$ra,8($sp)
.end gl_d_t2s

# Function: gl_d_sclear
# Declared: Line 9080 (Source lines: 9087-9094)
# Address: 0x0f0b45e4 - 0x0f0b4648 (Size: 100 bytes, Frame: 32)
.globl gl_d_sclear
.ent gl_d_sclear
gl_d_sclear:
    # Line 9087
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-5020 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9089
    lw	$v0,0($v1)
    # Line 9090
    li	$a1,468
    # Line 9092
    la	$at,comm_endbuffer
    # Line 9091
    sw	$a0,4($v0)
    # Line 9090
    sw	$a1,0($v0)
    # Line 9092
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4630
    sw	$v0,0($v1)
.L0f0b4624:
    ld	$gp,0($sp)
    # Line 9094
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4630:
    # Line 9093
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4624
    ld	$ra,8($sp)
.end gl_d_sclear

# Function: gl_d_acbuf
# Declared: Line 9096 (Source lines: 9104-9112)
# Address: 0x0f0b4648 - 0x0f0b46b0 (Size: 104 bytes, Frame: 32)
.globl gl_d_acbuf
.ent gl_d_acbuf
gl_d_acbuf:
    # Line 9104
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-5120 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9106
    lw	$v0,0($v1)
    # Line 9107
    li	$a1,469
    # Line 9110
    la	$at,comm_endbuffer
    # Line 9109
    swc1	$f13,8($v0)
    # Line 9108
    sw	$a0,4($v0)
    # Line 9107
    sw	$a1,0($v0)
    # Line 9110
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4698
    sw	$v0,0($v1)
.L0f0b468c:
    ld	$gp,0($sp)
    # Line 9112
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4698:
    # Line 9111
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b468c
    ld	$ra,8($sp)
.end gl_d_acbuf

# Function: gl_d_acsize
# Declared: Line 9114 (Source lines: 9121-9128)
# Address: 0x0f0b46b0 - 0x0f0b4714 (Size: 100 bytes, Frame: 32)
.globl gl_d_acsize
.ent gl_d_acsize
gl_d_acsize:
    # Line 9121
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-5224 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9123
    lw	$v0,0($v1)
    # Line 9124
    li	$a1,470
    # Line 9126
    la	$at,comm_endbuffer
    # Line 9125
    sw	$a0,4($v0)
    # Line 9124
    sw	$a1,0($v0)
    # Line 9126
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b46fc
    sw	$v0,0($v1)
.L0f0b46f0:
    ld	$gp,0($sp)
    # Line 9128
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b46fc:
    # Line 9127
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b46f0
    ld	$ra,8($sp)
.end gl_d_acsize

# Function: gl_d_clipplane
# Declared: Line 9130 (Source lines: 9139-9156)
# Address: 0x0f0b4714 - 0x0f0b4854 (Size: 320 bytes, Frame: 208)
.globl gl_d_clipplane
.ent gl_d_clipplane
gl_d_clipplane:
    # Line 9139
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a2
    sd	$s8,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-5324 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s8,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,16($sp)
    addiu	$v0,$a7,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4818
    move	$s2,$a0
.L0f0b475c:
    # Line 9143
    move	$v0,$a7
    # Line 9145
    sw	$s2,4($a7)
    # Line 9146
    sw	$s8,8($a7)
    # Line 9148
    srl	$a2,$s8,0x1f
    addu	$a2,$a2,$s8
    ld	$s8,8($sp)
    # Line 9144
    li	$a3,471
    sw	$a3,0($a7)
    # Line 9148
    li	$a3,-4
    sra	$a2,$a2,0x1
    sll	$a2,$a2,0x4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0b47e0
    sw	$a2,12($a7)
    ld	$s2,16($sp)
    ld	$s0,0($sp)
    # Line 9150
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f0b47a8:
    # Line 9154
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 9153
    sw	$v0,0($a5)
    # Line 9154
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0b483c
    sw	$v1,0($a6)
.L0f0b47d4:
    ld	$gp,24($sp)
    # Line 9156
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b47e0:
    # Line 9152
    li	$a4,92
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    addiu	$a0,$v0,16
    la	$t9,gl_mem_pack_array
    ld	$s2,16($sp)
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s8,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0b47a8
    ld	$s0,0($sp)
.L0f0b4818:
    # Line 9143
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0b475c
    lw	$a7,0($a5)
.L0f0b483c:
    # Line 9155
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0b47d4
    ld	$ra,32($sp)
.end gl_d_clipplane

# Function: gl_d_fogvertex
# Declared: Line 9158 (Source lines: 9166-9182)
# Address: 0x0f0b4854 - 0x0f0b4968 (Size: 276 bytes, Frame: 48)
.globl gl_d_fogvertex
.ent gl_d_fogvertex
gl_d_fogvertex:
    # Line 9166
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-5644 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a4,comm_curbufpos
    la	$a5,comm_endbuffer
    move	$s0,$a1
    lw	$a6,0($a4)
    lw	$at,0($a5)
    sd	$s2,8($sp)
    addiu	$v0,$a6,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b492c
    move	$s2,$a0
.L0f0b4894:
    # Line 9170
    move	$v0,$a6
    # Line 9172
    sw	$s2,4($a6)
    # Line 9174
    li	$a2,128
    # Line 9171
    li	$a3,472
    sw	$a3,0($a6)
    # Line 9174
    bnez	$s0,.L0f0b48f4
    sw	$a2,8($a6)
    ld	$s2,8($sp)
    # Line 9176
    addiu	$v0,$v0,140
    ld	$s0,0($sp)
.L0f0b48bc:
    # Line 9180
    la	$a2,comm_buffer
    la	$v1,comm_stdsize
    lw	$a2,0($a2)
    lw	$v1,0($v1)
    # Line 9179
    sw	$v0,0($a4)
    # Line 9180
    addu	$v1,$v1,$a2
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0b4950
    sw	$at,0($a5)
.L0f0b48e8:
    ld	$gp,16($sp)
    # Line 9182
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b48f4:
    # Line 9178
    li	$a4,88
    la	$a3,gl_mem_hton_float_array
    li	$a2,128
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a4,comm_curbufpos
    la	$a5,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0b48bc
    ld	$s0,0($sp)
.L0f0b492c:
    # Line 9170
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a5,comm_endbuffer
    la	$a4,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b4894
    lw	$a6,0($a4)
.L0f0b4950:
    # Line 9181
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0b48e8
    ld	$ra,24($sp)
.end gl_d_fogvertex

# Function: gl_d_getscrbox
# Declared: Line 9184 (Source lines: 9194-9208)
# Address: 0x0f0b4968 - 0x0f0b4a0c (Size: 164 bytes, Frame: 208)
.globl gl_d_getscrbox
.ent gl_d_getscrbox
gl_d_getscrbox:
    # Line 9194
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 9203
    li	$a0,1
    sd	$a3,24($sp)
    sd	$a1,40($sp)
    sd	$gp,16($sp)
    # Line 9194
    lui	$a4,0xfff8
    addiu	$a4,$a4,-5920
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,32($sp)
    # Line 9196
    lw	$a2,0($v0)
    # Line 9197
    li	$v1,473
    # Line 9203
    la	$t9,gl_comm_read_data
    # Line 9197
    sw	$v1,0($a2)
    # Line 9202
    addiu	$at,$a2,4
    # Line 9203
    jalr	$t9
    # Line 9202
    sw	$at,0($v0)
    # Line 9204
    la	$ra,comm_buffer
    lw	$v1,0($ra)
    lw	$v1,4($v1)
    sw	$v1,0($s8)
    # Line 9205
    lw	$v0,0($ra)
    ld	$v1,40($sp)
    lw	$v0,8($v0)
    sw	$v0,0($v1)
    # Line 9206
    lw	$at,0($ra)
    ld	$v0,32($sp)
    lw	$at,12($at)
    sw	$at,0($v0)
    # Line 9207
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lw	$s8,16($s8)
    sw	$s8,0($ra)
    # Line 9208
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_getscrbox

# Function: gl_d_scrbox
# Declared: Line 9210 (Source lines: 9217-9224)
# Address: 0x0f0b4a0c - 0x0f0b4a70 (Size: 100 bytes, Frame: 32)
.globl gl_d_scrbox
.ent gl_d_scrbox
gl_d_scrbox:
    # Line 9217
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-6084 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9219
    lw	$v0,0($v1)
    # Line 9220
    li	$a1,474
    # Line 9222
    la	$at,comm_endbuffer
    # Line 9221
    sw	$a0,4($v0)
    # Line 9220
    sw	$a1,0($v0)
    # Line 9222
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4a58
    sw	$v0,0($v1)
.L0f0b4a4c:
    ld	$gp,0($sp)
    # Line 9224
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4a58:
    # Line 9223
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4a4c
    ld	$ra,8($sp)
.end gl_d_scrbox

# Function: gl_d_stensize
# Declared: Line 9226 (Source lines: 9233-9240)
# Address: 0x0f0b4a70 - 0x0f0b4ad4 (Size: 100 bytes, Frame: 32)
.globl gl_d_stensize
.ent gl_d_stensize
gl_d_stensize:
    # Line 9233
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-6184 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9235
    lw	$v0,0($v1)
    # Line 9236
    li	$a1,475
    # Line 9238
    la	$at,comm_endbuffer
    # Line 9237
    sw	$a0,4($v0)
    # Line 9236
    sw	$a1,0($v0)
    # Line 9238
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4abc
    sw	$v0,0($v1)
.L0f0b4ab0:
    ld	$gp,0($sp)
    # Line 9240
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4abc:
    # Line 9239
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4ab0
    ld	$ra,8($sp)
.end gl_d_stensize

# Function: gl_d_stencil
# Declared: Line 9242 (Source lines: 9255-9269)
# Address: 0x0f0b4ad4 - 0x0f0b4bbc (Size: 232 bytes, Frame: 144)
.globl gl_d_stencil
.ent gl_d_stencil
gl_d_stencil:
    # Line 9255
    addiu	$sp,$sp,-144
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-6284 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$t0,comm_curbufpos
    la	$t2,comm_endbuffer
    # Line 9257
    lw	$t1,0($t0)
    lw	$at,0($t2)
    sd	$s0,0($sp)
    addiu	$v0,$t1,32
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4b54
    # Line 9255
    move	$s0,$a0
.L0f0b4b0c:
    # Line 9266
    sw	$a6,28($t1)
    # Line 9265
    sw	$a5,24($t1)
    # Line 9264
    sw	$a4,20($t1)
    # Line 9263
    sw	$a3,16($t1)
    # Line 9262
    sw	$a2,12($t1)
    # Line 9261
    sw	$a1,8($t1)
    # Line 9260
    sw	$s0,4($t1)
    # Line 9259
    li	$at,476
    sw	$at,0($t1)
    # Line 9267
    lw	$a7,0($t2)
    addiu	$s0,$t1,32
    sw	$s0,0($t0)
    sltu	$a7,$a7,$s0
    bnez	$a7,.L0f0b4ba4
    ld	$s0,0($sp)
.L0f0b4b48:
    ld	$gp,8($sp)
    # Line 9269
    jr	$ra
    addiu	$sp,$sp,144
.L0f0b4b54:
    sd	$a1,56($sp)
    sd	$a2,48($sp)
    sd	$a3,40($sp)
    sd	$a4,32($sp)
    # Line 9258
    la	$t9,gl_comm_flush
    sd	$a5,24($sp)
    sd	$ra,64($sp)
    jalr	$t9
    sd	$a6,16($sp)
    la	$t2,comm_endbuffer
    ld	$a6,16($sp)
    ld	$a5,24($sp)
    ld	$a4,32($sp)
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    ld	$a1,56($sp)
    la	$t0,comm_curbufpos
    ld	$ra,64($sp)
    b	.L0f0b4b0c
    lw	$t1,0($t0)
.L0f0b4ba4:
    # Line 9268
    la	$t9,gl_comm_flush
    sd	$ra,64($sp)
    jalr	$t9
    ld	$s0,0($sp)
    b	.L0f0b4b48
    ld	$ra,64($sp)
.end gl_d_stencil

# Function: gl_d_swritemask
# Declared: Line 9271 (Source lines: 9278-9285)
# Address: 0x0f0b4bbc - 0x0f0b4c20 (Size: 100 bytes, Frame: 32)
.globl gl_d_swritemask
.ent gl_d_swritemask
gl_d_swritemask:
    # Line 9278
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-6516 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9280
    lw	$v0,0($v1)
    # Line 9281
    li	$a1,477
    # Line 9283
    la	$at,comm_endbuffer
    # Line 9282
    sw	$a0,4($v0)
    # Line 9281
    sw	$a1,0($v0)
    # Line 9283
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4c08
    sw	$v0,0($v1)
.L0f0b4bfc:
    ld	$gp,0($sp)
    # Line 9285
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4c08:
    # Line 9284
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4bfc
    ld	$ra,8($sp)
.end gl_d_swritemask

# Function: gl_d_pixmode
# Declared: Line 9287 (Source lines: 9295-9303)
# Address: 0x0f0b4c20 - 0x0f0b4c88 (Size: 104 bytes, Frame: 32)
.globl gl_d_pixmode
.ent gl_d_pixmode
gl_d_pixmode:
    # Line 9295
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-6616 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9297
    lw	$v0,0($v1)
    # Line 9298
    li	$a2,478
    # Line 9301
    la	$at,comm_endbuffer
    # Line 9300
    sw	$a1,8($v0)
    # Line 9299
    sw	$a0,4($v0)
    # Line 9298
    sw	$a2,0($v0)
    # Line 9301
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4c70
    sw	$v0,0($v1)
.L0f0b4c64:
    ld	$gp,0($sp)
    # Line 9303
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4c70:
    # Line 9302
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4c64
    ld	$ra,8($sp)
.end gl_d_pixmode

# Function: gl_d_polymode
# Declared: Line 9305 (Source lines: 9312-9319)
# Address: 0x0f0b4c88 - 0x0f0b4cec (Size: 100 bytes, Frame: 32)
.globl gl_d_polymode
.ent gl_d_polymode
gl_d_polymode:
    # Line 9312
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-6720 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9314
    lw	$v0,0($v1)
    # Line 9315
    li	$a1,479
    # Line 9317
    la	$at,comm_endbuffer
    # Line 9316
    sw	$a0,4($v0)
    # Line 9315
    sw	$a1,0($v0)
    # Line 9317
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4cd4
    sw	$v0,0($v1)
.L0f0b4cc8:
    ld	$gp,0($sp)
    # Line 9319
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4cd4:
    # Line 9318
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4cc8
    ld	$ra,8($sp)
.end gl_d_polymode

# Function: gl_d_afunction
# Declared: Line 9321 (Source lines: 9329-9337)
# Address: 0x0f0b4cec - 0x0f0b4d54 (Size: 104 bytes, Frame: 32)
.globl gl_d_afunction
.ent gl_d_afunction
gl_d_afunction:
    # Line 9329
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-6820 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9331
    lw	$v0,0($v1)
    # Line 9332
    li	$a2,480
    # Line 9335
    la	$at,comm_endbuffer
    # Line 9334
    sw	$a1,8($v0)
    # Line 9333
    sw	$a0,4($v0)
    # Line 9332
    sw	$a2,0($v0)
    # Line 9335
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4d3c
    sw	$v0,0($v1)
.L0f0b4d30:
    ld	$gp,0($sp)
    # Line 9337
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4d3c:
    # Line 9336
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4d30
    ld	$ra,8($sp)
.end gl_d_afunction

# Function: gl_d_tevbind
# Declared: Line 9339 (Source lines: 9347-9355)
# Address: 0x0f0b4d54 - 0x0f0b4dbc (Size: 104 bytes, Frame: 32)
.globl gl_d_tevbind
.ent gl_d_tevbind
gl_d_tevbind:
    # Line 9347
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-6924 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9349
    lw	$v0,0($v1)
    # Line 9350
    li	$a2,481
    # Line 9353
    la	$at,comm_endbuffer
    # Line 9352
    sw	$a1,8($v0)
    # Line 9351
    sw	$a0,4($v0)
    # Line 9350
    sw	$a2,0($v0)
    # Line 9353
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4da4
    sw	$v0,0($v1)
.L0f0b4d98:
    ld	$gp,0($sp)
    # Line 9355
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4da4:
    # Line 9354
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4d98
    ld	$ra,8($sp)
.end gl_d_tevbind

# Function: gl_d_texbind
# Declared: Line 9357 (Source lines: 9365-9373)
# Address: 0x0f0b4dbc - 0x0f0b4e24 (Size: 104 bytes, Frame: 32)
.globl gl_d_texbind
.ent gl_d_texbind
gl_d_texbind:
    # Line 9365
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-7028 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9367
    lw	$v0,0($v1)
    # Line 9368
    li	$a2,482
    # Line 9371
    la	$at,comm_endbuffer
    # Line 9370
    sw	$a1,8($v0)
    # Line 9369
    sw	$a0,4($v0)
    # Line 9368
    sw	$a2,0($v0)
    # Line 9371
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4e0c
    sw	$v0,0($v1)
.L0f0b4e00:
    ld	$gp,0($sp)
    # Line 9373
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4e0c:
    # Line 9372
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4e00
    ld	$ra,8($sp)
.end gl_d_texbind

# Function: gl_d_mswapbuffers
# Declared: Line 9375 (Source lines: 9382-9390)
# Address: 0x0f0b4e24 - 0x0f0b4e98 (Size: 116 bytes, Frame: 32)
.globl gl_d_mswapbuffers
.ent gl_d_mswapbuffers
gl_d_mswapbuffers:
    # Line 9382
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-7132 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9384
    lw	$v0,0($v1)
    # Line 9385
    li	$a1,483
    # Line 9387
    la	$at,comm_endbuffer
    # Line 9386
    sw	$a0,4($v0)
    # Line 9385
    sw	$a1,0($v0)
    # Line 9387
    lw	$at,0($at)
    sd	$ra,8($sp)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4e84
    sw	$v0,0($v1)
    # Line 9389
    la	$t9,gl_comm_flush
.L0f0b4e6c:
    jalr	$t9
    nop
    # Line 9390
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4e84:
    # Line 9388
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0b4e6c
    # Line 9389
    la	$t9,gl_comm_flush
.end gl_d_mswapbuffers

# Function: gl_d_polysmooth
# Declared: Line 9392 (Source lines: 9399-9406)
# Address: 0x0f0b4e98 - 0x0f0b4efc (Size: 100 bytes, Frame: 32)
.globl gl_d_polysmooth
.ent gl_d_polysmooth
gl_d_polysmooth:
    # Line 9399
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-7248 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9401
    lw	$v0,0($v1)
    # Line 9402
    li	$a1,484
    # Line 9404
    la	$at,comm_endbuffer
    # Line 9403
    sw	$a0,4($v0)
    # Line 9402
    sw	$a1,0($v0)
    # Line 9404
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4ee4
    sw	$v0,0($v1)
.L0f0b4ed8:
    ld	$gp,0($sp)
    # Line 9406
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b4ee4:
    # Line 9405
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b4ed8
    ld	$ra,8($sp)
.end gl_d_polysmooth

# Function: gl_d_scrsubdivide
# Declared: Line 9408 (Source lines: 9416-9432)
# Address: 0x0f0b4efc - 0x0f0b5024 (Size: 296 bytes, Frame: 48)
.globl gl_d_scrsubdivide
.ent gl_d_scrsubdivide
gl_d_scrsubdivide:
    # Line 9416
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-7348 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b4fe8
    move	$s2,$a0
.L0f0b4f3c:
    # Line 9420
    move	$v0,$a7
    # Line 9422
    sw	$s2,4($a7)
    # Line 9421
    li	$a3,485
    sw	$a3,0($a7)
    # Line 9424
    li	$a3,-4
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0b4fb4
    sw	$a2,8($a7)
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    # Line 9426
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0b4f7c:
    # Line 9430
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 9429
    sw	$v0,0($a5)
    # Line 9430
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0b500c
    sw	$v1,0($a6)
.L0f0b4fa8:
    ld	$gp,16($sp)
    # Line 9432
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b4fb4:
    # Line 9428
    li	$a4,88
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    b	.L0f0b4f7c
    ld	$s0,0($sp)
.L0f0b4fe8:
    # Line 9420
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b4f3c
    lw	$a7,0($a5)
.L0f0b500c:
    # Line 9431
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    b	.L0f0b4fa8
    ld	$ra,24($sp)
.end gl_d_scrsubdivide

# Function: gl_dgl_tevdef
# Declared: Line 9434 (Source lines: 9443-9460)
# Address: 0x0f0b5024 - 0x0f0b5158 (Size: 308 bytes, Frame: 208)
.globl gl_dgl_tevdef
.ent gl_dgl_tevdef
gl_dgl_tevdef:
    # Line 9443
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a2
    sd	$s8,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-7644 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s8,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,16($sp)
    addiu	$v0,$a7,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b511c
    move	$s2,$a0
.L0f0b506c:
    # Line 9447
    move	$v0,$a7
    # Line 9449
    sw	$s2,4($a7)
    # Line 9450
    sw	$s8,8($a7)
    # Line 9452
    sll	$a2,$s8,0x2
    ld	$s8,8($sp)
    # Line 9448
    li	$a3,486
    sw	$a3,0($a7)
    # Line 9452
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0b50e4
    sw	$a2,12($a7)
    ld	$s2,16($sp)
    ld	$s0,0($sp)
    # Line 9454
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f0b50ac:
    # Line 9458
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 9457
    sw	$v0,0($a5)
    # Line 9458
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0b5140
    sw	$v1,0($a6)
.L0f0b50d8:
    ld	$gp,24($sp)
    # Line 9460
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b50e4:
    # Line 9456
    li	$a4,92
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    addiu	$a0,$v0,16
    la	$t9,gl_mem_pack_array
    ld	$s2,16($sp)
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s8,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0b50ac
    ld	$s0,0($sp)
.L0f0b511c:
    # Line 9447
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0b506c
    lw	$a7,0($a5)
.L0f0b5140:
    # Line 9459
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0b50d8
    ld	$ra,32($sp)
.end gl_dgl_tevdef

# Function: gl_dgl_texdef2d
# Declared: Line 9462 (Source lines: 9475-9501)
# Address: 0x0f0b5158 - 0x0f0b533c (Size: 484 bytes, Frame: 144)
.globl gl_dgl_texdef2d
.ent gl_dgl_texdef2d
gl_dgl_texdef2d:
    # Line 9475
    move	$t1,$a2
    addiu	$sp,$sp,-144
    sd	$s0,24($sp)
    move	$s0,$a6
    sd	$s1,0($sp)
    move	$s1,$a4
    sd	$s5,8($sp)
    sd	$gp,32($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-7952 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$t2,comm_curbufpos
    la	$t8,comm_endbuffer
    move	$s5,$a1
    lw	$t3,0($t2)
    lw	$at,0($t8)
    sd	$s4,16($sp)
    addiu	$v0,$t3,184
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b52ec
    move	$s4,$a0
.L0f0b51ac:
    # Line 9486
    mult	$s5,$t1
    mflo	$at
    subu	$at,$at,$s5
    sra	$t0,$at,0x1
    srl	$t0,$t0,0x1e
    addu	$t0,$t0,$at
    sra	$t0,$t0,0x2
    addiu	$t0,$t0,1
    mult	$t0,$a3
    # Line 9479
    move	$v0,$t3
    # Line 9484
    sw	$a3,16($t3)
    # Line 9483
    sw	$t1,12($t3)
    # Line 9481
    sw	$s4,4($t3)
    # Line 9482
    sw	$s5,8($t3)
    # Line 9480
    li	$a7,487
    sw	$a7,0($t3)
    # Line 9486
    li	$a0,-4
    ld	$s5,8($sp)
    mflo	$a2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s1,.L0f0b5278
    sw	$a2,20($t3)
    ld	$s4,16($sp)
    ld	$s1,0($sp)
    # Line 9488
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,24
.L0f0b521c:
    # Line 9491
    sw	$a5,0($v0)
    # Line 9493
    sll	$a2,$a5,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0b52bc
    sw	$a2,4($v0)
    ld	$s0,24($sp)
    # Line 9495
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0b5240:
    # Line 9499
    la	$t0,comm_buffer
    la	$a7,comm_stdsize
    lw	$t0,0($t0)
    lw	$a7,0($a7)
    # Line 9498
    sw	$v0,0($t2)
    # Line 9499
    addu	$a7,$a7,$t0
    addiu	$v1,$a7,-24
    addiu	$a7,$a7,-24
    sltu	$a7,$a7,$v0
    bnez	$a7,.L0f0b5324
    sw	$v1,0($t8)
.L0f0b526c:
    ld	$gp,32($sp)
    # Line 9501
    jr	$ra
    addiu	$sp,$sp,144
.L0f0b5278:
    sd	$a5,40($sp)
    # Line 9490
    li	$a4,184
    la	$a3,gl_mem_hton_long_array
    move	$a1,$s1
    addiu	$a0,$v0,24
    la	$t9,gl_mem_pack_array
    ld	$s4,16($sp)
    sd	$ra,48($sp)
    jalr	$t9
    ld	$s5,8($sp)
    la	$t2,comm_curbufpos
    la	$t8,comm_endbuffer
    li	$a0,-4
    ld	$a5,40($sp)
    ld	$ra,48($sp)
    b	.L0f0b521c
    ld	$s1,0($sp)
.L0f0b52bc:
    # Line 9497
    li	$a4,184
    la	$a3,gl_mem_hton_float_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$t2,comm_curbufpos
    la	$t8,comm_endbuffer
    ld	$ra,48($sp)
    b	.L0f0b5240
    ld	$s0,24($sp)
.L0f0b52ec:
    sd	$t1,64($sp)
    # Line 9479
    la	$t9,gl_comm_flush
    sd	$a3,56($sp)
    sd	$ra,48($sp)
    jalr	$t9
    sd	$a5,40($sp)
    la	$t8,comm_endbuffer
    ld	$a5,40($sp)
    ld	$ra,48($sp)
    ld	$a3,56($sp)
    la	$t2,comm_curbufpos
    ld	$t1,64($sp)
    b	.L0f0b51ac
    lw	$t3,0($t2)
.L0f0b5324:
    # Line 9500
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    jalr	$t9
    nop
    b	.L0f0b526c
    ld	$ra,48($sp)
.end gl_dgl_texdef2d

# Function: gl_d_texgen
# Declared: Line 9503 (Source lines: 9512-9529)
# Address: 0x0f0b533c - 0x0f0b547c (Size: 320 bytes, Frame: 208)
.globl gl_d_texgen
.ent gl_d_texgen
gl_d_texgen:
    # Line 9512
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a2
    sd	$s8,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-8436 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s8,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,16($sp)
    addiu	$v0,$a7,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b5440
    move	$s2,$a0
.L0f0b5384:
    # Line 9516
    move	$v0,$a7
    # Line 9518
    sw	$s2,4($a7)
    # Line 9519
    sw	$s8,8($a7)
    # Line 9521
    srl	$a2,$s8,0x1f
    addu	$a2,$a2,$s8
    ld	$s8,8($sp)
    # Line 9517
    li	$a3,488
    sw	$a3,0($a7)
    # Line 9521
    li	$a3,-4
    sra	$a2,$a2,0x1
    sll	$a2,$a2,0x4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0b5408
    sw	$a2,12($a7)
    ld	$s2,16($sp)
    ld	$s0,0($sp)
    # Line 9523
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f0b53d0:
    # Line 9527
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    # Line 9526
    sw	$v0,0($a5)
    # Line 9527
    addu	$a3,$a3,$a4
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0f0b5464
    sw	$v1,0($a6)
.L0f0b53fc:
    ld	$gp,24($sp)
    # Line 9529
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b5408:
    # Line 9525
    li	$a4,92
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    addiu	$a0,$v0,16
    la	$t9,gl_mem_pack_array
    ld	$s2,16($sp)
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s8,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0b53d0
    ld	$s0,0($sp)
.L0f0b5440:
    # Line 9516
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0b5384
    lw	$a7,0($a5)
.L0f0b5464:
    # Line 9528
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0b53fc
    ld	$ra,32($sp)
.end gl_d_texgen

# Function: gl_d_getsb
# Declared: Line 9531 (Source lines: 9541-9555)
# Address: 0x0f0b547c - 0x0f0b5520 (Size: 164 bytes, Frame: 208)
.globl gl_d_getsb
.ent gl_d_getsb
gl_d_getsb:
    # Line 9541
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 9550
    li	$a0,1
    sd	$a3,24($sp)
    sd	$a1,40($sp)
    sd	$gp,16($sp)
    # Line 9541
    lui	$a4,0xfff8
    addiu	$a4,$a4,-8756
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,32($sp)
    # Line 9543
    lw	$a2,0($v0)
    # Line 9544
    li	$v1,489
    # Line 9550
    la	$t9,gl_comm_read_data
    # Line 9544
    sw	$v1,0($a2)
    # Line 9549
    addiu	$at,$a2,4
    # Line 9550
    jalr	$t9
    # Line 9549
    sw	$at,0($v0)
    # Line 9551
    la	$ra,comm_buffer
    lw	$v1,0($ra)
    lw	$v1,4($v1)
    sw	$v1,0($s8)
    # Line 9552
    lw	$v0,0($ra)
    ld	$v1,40($sp)
    lw	$v0,8($v0)
    sw	$v0,0($v1)
    # Line 9553
    lw	$at,0($ra)
    ld	$v0,32($sp)
    lw	$at,12($at)
    sw	$at,0($v0)
    # Line 9554
    lw	$s8,0($ra)
    ld	$ra,24($sp)
    lw	$s8,16($s8)
    sw	$s8,0($ra)
    # Line 9555
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_getsb

# Function: gl_d_linewidthf
# Declared: Line 9557 (Source lines: 9564-9571)
# Address: 0x0f0b5520 - 0x0f0b5584 (Size: 100 bytes, Frame: 32)
.globl gl_d_linewidthf
.ent gl_d_linewidthf
gl_d_linewidthf:
    # Line 9564
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-8920
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 9566
    lw	$v0,0($v1)
    # Line 9567
    li	$a0,490
    # Line 9569
    la	$at,comm_endbuffer
    # Line 9568
    swc1	$f12,4($v0)
    # Line 9567
    sw	$a0,0($v0)
    # Line 9569
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b556c
    sw	$v0,0($v1)
.L0f0b5560:
    ld	$gp,0($sp)
    # Line 9571
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b556c:
    # Line 9570
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b5560
    ld	$ra,8($sp)
.end gl_d_linewidthf

# Function: gl_d_pntsize
# Declared: Line 9573 (Source lines: 9580-9587)
# Address: 0x0f0b5584 - 0x0f0b55f0 (Size: 108 bytes, Frame: 32)
.globl gl_d_pntsize
.ent gl_d_pntsize
gl_d_pntsize:
    # Line 9580
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-9020 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9583
    li	$a1,491
    # Line 9580
    dsll32	$a0,$a0,0x10
    # Line 9582
    lw	$v0,0($v1)
    # Line 9580
    dsra32	$a0,$a0,0x10
    # Line 9585
    la	$at,comm_endbuffer
    # Line 9584
    sh	$a0,4($v0)
    # Line 9583
    sw	$a1,0($v0)
    # Line 9585
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b55d8
    sw	$v0,0($v1)
.L0f0b55cc:
    ld	$gp,0($sp)
    # Line 9587
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b55d8:
    # Line 9586
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b55cc
    ld	$ra,8($sp)
.end gl_d_pntsize

# Function: gl_d_pntsizef
# Declared: Line 9589 (Source lines: 9596-9603)
# Address: 0x0f0b55f0 - 0x0f0b5654 (Size: 100 bytes, Frame: 32)
.globl gl_d_pntsizef
.ent gl_d_pntsizef
gl_d_pntsizef:
    # Line 9596
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-9128
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 9598
    lw	$v0,0($v1)
    # Line 9599
    li	$a0,492
    # Line 9601
    la	$at,comm_endbuffer
    # Line 9600
    swc1	$f12,4($v0)
    # Line 9599
    sw	$a0,0($v0)
    # Line 9601
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b563c
    sw	$v0,0($v1)
.L0f0b5630:
    ld	$gp,0($sp)
    # Line 9603
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b563c:
    # Line 9602
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b5630
    ld	$ra,8($sp)
.end gl_d_pntsizef

# Function: gl_d_readdisplay
# Declared: Line 9605 (Source lines: 9617-9634)
# Address: 0x0f0b5654 - 0x0f0b5774 (Size: 288 bytes, Frame: 240)
.globl gl_d_readdisplay
.ent gl_d_readdisplay
gl_d_readdisplay:
    # Line 9617
    dsll32	$a7,$a1,0x10
    dsll32	$t0,$a2,0x10
    dsll32	$t1,$a3,0x10
    addiu	$sp,$sp,-112
    sd	$ra,24($sp)
    sd	$a4,8($sp)
    dsra32	$t1,$t1,0x10
    dsra32	$t0,$t0,0x10
    dsra32	$a7,$a7,0x10
    sd	$gp,16($sp)
    lui	$t2,0xfff8
    addiu	$t2,$t2,-9228
    addu	$gp,$t9,$t2
    la	$t2,comm_curbufpos
    # Line 9619
    la	$at,comm_endbuffer
    sd	$s0,0($sp)
    lw	$t3,0($t2)
    lw	$at,0($at)
    # Line 9617
    dsll32	$s0,$a0,0x10
    # Line 9619
    addiu	$v0,$t3,32
    sltu	$at,$at,$v0
    beqz	$at,.L0f0b56e0
    # Line 9617
    dsra32	$s0,$s0,0x10
    sd	$a7,56($sp)
    # Line 9620
    la	$t9,gl_comm_flush
    sd	$t0,48($sp)
    sd	$t1,40($sp)
    jalr	$t9
    sd	$a5,32($sp)
    ld	$a5,32($sp)
    ld	$t1,40($sp)
    la	$t2,comm_curbufpos
    ld	$t0,48($sp)
    ld	$a7,56($sp)
    lw	$t3,0($t2)
.L0f0b56e0:
    # Line 9627
    subu	$v1,$t0,$s0
    subu	$a0,$t1,$a7
    addiu	$a0,$a0,1
    addiu	$v1,$v1,1
    mult	$v1,$a0
    # Line 9628
    sw	$a5,20($t3)
    # Line 9625
    sh	$t1,10($t3)
    # Line 9624
    sh	$t0,8($t3)
    # Line 9623
    sh	$a7,6($t3)
    # Line 9622
    sh	$s0,4($t3)
    # Line 9629
    addiu	$t8,$t3,24
    # Line 9621
    li	$v0,493
    # Line 9626
    li	$at,-4
    sw	$at,12($t3)
    # Line 9621
    sw	$v0,0($t3)
    # Line 9630
    li	$a0,1
    la	$t9,gl_comm_read_data
    # Line 9627
    mflo	$ra
    sll	$ra,$ra,0x2
    sw	$ra,16($t3)
    # Line 9630
    jalr	$t9
    # Line 9629
    sw	$t8,0($t2)
    # Line 9632
    la	$a2,gl_mem_ntoh_long_array
    la	$a1,comm_buffer
    ld	$a0,8($sp)
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    ld	$s0,0($sp)
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    # Line 9634
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_d_readdisplay

# Function: gl_d_bgncurve
# Declared: Line 9637 (Source lines: 9643-9649)
# Address: 0x0f0b5774 - 0x0f0b57d4 (Size: 96 bytes, Frame: 16)
.globl gl_d_bgncurve
.ent gl_d_bgncurve
gl_d_bgncurve:
    # Line 9643
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-9516
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 9645
    lw	$v0,0($v1)
    # Line 9646
    li	$a0,495
    # Line 9647
    la	$at,comm_endbuffer
    # Line 9646
    sw	$a0,0($v0)
    # Line 9647
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b57bc
    sw	$v0,0($v1)
.L0f0b57b0:
    ld	$gp,0($sp)
    # Line 9649
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b57bc:
    # Line 9648
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b57b0
    ld	$ra,8($sp)
.end gl_d_bgncurve

# Function: gl_d_endcurve
# Declared: Line 9651 (Source lines: 9657-9663)
# Address: 0x0f0b57d4 - 0x0f0b5834 (Size: 96 bytes, Frame: 16)
.globl gl_d_endcurve
.ent gl_d_endcurve
gl_d_endcurve:
    # Line 9657
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-9612
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 9659
    lw	$v0,0($v1)
    # Line 9660
    li	$a0,496
    # Line 9661
    la	$at,comm_endbuffer
    # Line 9660
    sw	$a0,0($v0)
    # Line 9661
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b581c
    sw	$v0,0($v1)
.L0f0b5810:
    ld	$gp,0($sp)
    # Line 9663
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b581c:
    # Line 9662
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b5810
    ld	$ra,8($sp)
.end gl_d_endcurve

# Function: gl_d_pixmodef
# Declared: Line 9665 (Source lines: 9673-9681)
# Address: 0x0f0b5834 - 0x0f0b589c (Size: 104 bytes, Frame: 32)
.globl gl_d_pixmodef
.ent gl_d_pixmodef
gl_d_pixmodef:
    # Line 9673
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-9708 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9675
    lw	$v0,0($v1)
    # Line 9676
    li	$a1,497
    # Line 9679
    la	$at,comm_endbuffer
    # Line 9678
    swc1	$f13,8($v0)
    # Line 9677
    sw	$a0,4($v0)
    # Line 9676
    sw	$a1,0($v0)
    # Line 9679
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b5884
    sw	$v0,0($v1)
.L0f0b5878:
    ld	$gp,0($sp)
    # Line 9681
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b5884:
    # Line 9680
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b5878
    ld	$ra,8($sp)
.end gl_d_pixmodef

# Function: gl_d_dither
# Declared: Line 9683 (Source lines: 9690-9697)
# Address: 0x0f0b589c - 0x0f0b5900 (Size: 100 bytes, Frame: 32)
.globl gl_d_dither
.ent gl_d_dither
gl_d_dither:
    # Line 9690
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-9812 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9692
    lw	$v0,0($v1)
    # Line 9693
    li	$a1,506
    # Line 9695
    la	$at,comm_endbuffer
    # Line 9694
    sw	$a0,4($v0)
    # Line 9693
    sw	$a1,0($v0)
    # Line 9695
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b58e8
    sw	$v0,0($v1)
.L0f0b58dc:
    ld	$gp,0($sp)
    # Line 9697
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b58e8:
    # Line 9696
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b58dc
    ld	$ra,8($sp)
.end gl_d_dither

# Function: gl_d_deflfont
# Declared: Line 9699 (Source lines: 9710-9734)
# Address: 0x0f0b5900 - 0x0f0b5aac (Size: 428 bytes, Frame: 240)
.globl gl_d_deflfont
.ent gl_d_deflfont
gl_d_deflfont:
    # Line 9710
    dsll32	$a7,$a1,0x10
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    move	$s0,$a4
    sd	$s4,16($sp)
    move	$s4,$a3
    sd	$s1,0($sp)
    move	$s1,$a2
    dsra32	$a7,$a7,0x10
    sd	$gp,32($sp)
    lui	$t0,0xfff8
    addiu	$t0,$t0,-9912
    addu	$gp,$t9,$t0
    la	$t0,comm_curbufpos
    la	$t1,comm_endbuffer
    sd	$s5,8($sp)
    lw	$t2,0($t0)
    lw	$at,0($t1)
    dsll32	$s5,$a0,0x10
    addiu	$v0,$t2,176
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b5a6c
    dsra32	$s5,$s5,0x10
.L0f0b595c:
    # Line 9714
    move	$v0,$t2
    # Line 9717
    sh	$a7,6($t2)
    # Line 9716
    sh	$s5,4($t2)
    # Line 9715
    li	$a5,507
    sw	$a5,0($t2)
    # Line 9719
    li	$a1,-4
    sll	$a2,$a7,0x2
    addu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a1
    bnez	$s1,.L0f0b5a00
    sw	$a2,8($t2)
    ld	$s5,8($sp)
    ld	$s1,0($sp)
    # Line 9721
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0b59a0:
    # Line 9724
    sw	$s4,0($v0)
    # Line 9726
    addu	$a2,$s4,$s4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a1
    bnez	$s0,.L0f0b5a38
    sw	$a2,4($v0)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    # Line 9728
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0b59c8:
    # Line 9732
    la	$a5,comm_buffer
    la	$a0,comm_stdsize
    lw	$a5,0($a5)
    lw	$a0,0($a0)
    # Line 9731
    sw	$v0,0($t0)
    # Line 9732
    addu	$a0,$a0,$a5
    addiu	$v1,$a0,-24
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$v0
    bnez	$a0,.L0f0b5a94
    sw	$v1,0($t1)
.L0f0b59f4:
    ld	$gp,32($sp)
    # Line 9734
    jr	$ra
    addiu	$sp,$sp,112
.L0f0b5a00:
    # Line 9723
    li	$a4,176
    la	$a3,gl_mem_hton_lfontchar_array
    move	$a1,$s1
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,48($sp)
    jalr	$t9
    ld	$s5,8($sp)
    la	$t0,comm_curbufpos
    la	$t1,comm_endbuffer
    li	$a1,-4
    ld	$s1,0($sp)
    b	.L0f0b59a0
    ld	$ra,48($sp)
.L0f0b5a38:
    # Line 9730
    li	$a4,176
    la	$a3,gl_mem_hton_short_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,8
    sd	$ra,48($sp)
    jalr	$t9
    ld	$s4,16($sp)
    la	$t0,comm_curbufpos
    la	$t1,comm_endbuffer
    ld	$s0,24($sp)
    b	.L0f0b59c8
    ld	$ra,48($sp)
.L0f0b5a6c:
    # Line 9714
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    jalr	$t9
    sd	$a7,40($sp)
    la	$t1,comm_endbuffer
    ld	$a7,40($sp)
    la	$t0,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f0b595c
    lw	$t2,0($t0)
.L0f0b5a94:
    # Line 9733
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    jalr	$t9
    nop
    b	.L0f0b59f4
    ld	$ra,48($sp)
.end gl_d_deflfont

# Function: gl_d_lcharstr
# Declared: Line 9736 (Source lines: 9744-9757)
# Address: 0x0f0b5aac - 0x0f0b5bc0 (Size: 276 bytes, Frame: 192)
.globl gl_d_lcharstr
.ent gl_d_lcharstr
gl_d_lcharstr:
    # Line 9744
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    sd	$s1,8($sp)
    sd	$gp,16($sp)
    lui	$a3,0xfff8
    addiu	$a3,$a3,-10340
    addu	$gp,$t9,$a3
    la	$a2,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s1,$a1
    lw	$a2,0($a2)
    lw	$at,0($at)
    sd	$s0,0($sp)
    addiu	$v0,$a2,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b5b90
    move	$s0,$a0
.L0f0b5af0:
    sd	$s2,32($sp)
    # Line 9748
    move	$s2,$a2
    # Line 9751
    move	$a1,$s1
    move	$a0,$s0
    la	$t9,gl_mbnbytes
    # Line 9750
    sw	$s0,4($a2)
    # Line 9749
    li	$a4,508
    # Line 9751
    jalr	$t9
    # Line 9749
    sw	$a4,0($a2)
    # Line 9753
    li	$a5,88
    la	$a4,gl_mem_copy_array
    move	$a2,$s1
    addiu	$a1,$s2,12
    move	$a0,$s0
    # Line 9752
    li	$a6,-4
    # Line 9753
    la	$t9,gl_mem_pack_lstring
    # Line 9752
    addiu	$a3,$v0,3
    and	$a3,$a3,$a6
    # Line 9753
    jalr	$t9
    # Line 9752
    sw	$a3,8($s2)
    ld	$s2,32($sp)
    ld	$ra,24($sp)
    ld	$s1,8($sp)
    ld	$s0,0($sp)
    # Line 9755
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    la	$a4,comm_curbufpos
    lw	$v1,0($v1)
    lw	$at,0($at)
    la	$a3,comm_endbuffer
    # Line 9754
    sw	$v0,0($a4)
    # Line 9755
    addu	$at,$at,$v1
    addiu	$v1,$at,-24
    addiu	$at,$at,-24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b5bac
    sw	$v1,0($a3)
.L0f0b5b84:
    ld	$gp,16($sp)
    # Line 9757
    jr	$ra
    addiu	$sp,$sp,64
.L0f0b5b90:
    # Line 9748
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$a2,comm_curbufpos
    sd	$s2,32($sp)
    b	.L0f0b5af0
    lw	$a2,0($a2)
.L0f0b5bac:
    # Line 9756
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0b5b84
    ld	$ra,24($sp)
.end gl_d_lcharstr

# Function: gl_d_lchstr
# Declared: Line 9759 (Source lines: 9768-9782)
# Address: 0x0f0b5bc0 - 0x0f0b5ce0 (Size: 288 bytes, Frame: 208)
.globl gl_d_lchstr
.ent gl_d_lchstr
gl_d_lchstr:
    # Line 9768
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a2,16($sp)
    sd	$gp,32($sp)
    sd	$s0,0($sp)
    lui	$s0,0xfff8
    addiu	$s0,$s0,-10616
    addu	$gp,$t9,$s0
    la	$a4,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$s1,8($sp)
    lw	$a4,0($a4)
    lw	$at,0($at)
    move	$s1,$a1
    addiu	$v0,$a4,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b5cb4
    move	$s0,$a0
.L0f0b5c08:
    # Line 9772
    move	$t8,$a4
    sd	$a4,24($sp)
    # Line 9775
    move	$a1,$s1
    move	$a0,$s0
    la	$t9,gl_mbnbytes
    # Line 9773
    li	$ra,509
    sw	$ra,0($a4)
    # Line 9775
    jalr	$t9
    # Line 9774
    sw	$s0,4($a4)
    # Line 9777
    li	$a5,92
    la	$a4,gl_mem_copy_array
    move	$a2,$s1
    move	$a0,$s0
    # Line 9776
    li	$a6,-4
    addiu	$a3,$v0,3
    # Line 9777
    ld	$at,24($sp)
    la	$t9,gl_mem_pack_lstring
    # Line 9776
    and	$a3,$a3,$a6
    # Line 9777
    addiu	$a1,$at,12
    jalr	$t9
    # Line 9776
    sw	$a3,8($at)
    ld	$s1,8($sp)
    ld	$ra,40($sp)
    la	$v1,comm_endbuffer
    la	$s0,comm_curbufpos
    # Line 9778
    ld	$a3,16($sp)
    # Line 9780
    la	$at,comm_stdsize
    la	$a4,comm_buffer
    # Line 9778
    sw	$a3,0($v0)
    # Line 9779
    addiu	$a3,$v0,4
    # Line 9780
    lw	$a4,0($a4)
    lw	$at,0($at)
    # Line 9779
    sw	$a3,0($s0)
    ld	$s0,0($sp)
    # Line 9780
    addu	$at,$at,$a4
    addiu	$v0,$at,-24
    addiu	$at,$at,-24
    sltu	$at,$at,$a3
    bnez	$at,.L0f0b5ccc
    sw	$v0,0($v1)
.L0f0b5ca8:
    ld	$gp,32($sp)
    # Line 9782
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b5cb4:
    # Line 9772
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$a4,comm_curbufpos
    b	.L0f0b5c08
    lw	$a4,0($a4)
.L0f0b5ccc:
    # Line 9781
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0b5ca8
    ld	$ra,40($sp)
.end gl_d_lchstr

# Function: gl_d_lstrwidth
# Declared: Line 9784 (Source lines: 9792-9806)
# Address: 0x0f0b5ce0 - 0x0f0b5de4 (Size: 260 bytes, Frame: 192)
.globl gl_d_lstrwidth
.ent gl_d_lstrwidth
gl_d_lstrwidth:
    # Line 9792
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s2,8($sp)
    sd	$gp,24($sp)
    lui	$a3,0xfff8
    addiu	$a3,$a3,-10904
    addu	$gp,$t9,$a3
    la	$a2,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s2,$a1
    lw	$a2,0($a2)
    lw	$at,0($at)
    sd	$s0,0($sp)
    addiu	$v0,$a2,88
    sltu	$at,$at,$v0
    beqz	$at,.L0f0b5d38
    move	$s0,$a0
    # Line 9796
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$a2,comm_curbufpos
    lw	$a2,0($a2)
.L0f0b5d38:
    move	$a3,$a2
    sd	$a2,16($sp)
    # Line 9799
    move	$a1,$s2
    move	$a0,$s0
    la	$t9,gl_mbnbytes
    # Line 9798
    sw	$s0,4($a2)
    # Line 9797
    li	$a4,510
    # Line 9799
    jalr	$t9
    # Line 9797
    sw	$a4,0($a2)
    # Line 9801
    li	$a5,88
    la	$a4,gl_mem_copy_array
    move	$a2,$s2
    move	$a0,$s0
    # Line 9800
    li	$a7,-4
    addiu	$a3,$v0,3
    # Line 9801
    ld	$a6,16($sp)
    la	$t9,gl_mem_pack_lstring
    # Line 9800
    and	$a3,$a3,$a7
    # Line 9801
    addiu	$a1,$a6,12
    jalr	$t9
    # Line 9800
    sw	$a3,8($a6)
    # Line 9804
    li	$a0,1
    ld	$s2,8($sp)
    ld	$s0,0($sp)
    la	$t1,comm_endbuffer
    # Line 9801
    la	$t2,comm_buffer
    # Line 9803
    la	$t0,comm_stdsize
    la	$t3,comm_curbufpos
    lw	$t2,0($t2)
    lw	$t0,0($t0)
    # Line 9804
    la	$t9,gl_comm_read_data
    # Line 9802
    sw	$v0,0($t3)
    # Line 9803
    addu	$t0,$t0,$t2
    addiu	$t0,$t0,-24
    # Line 9804
    jalr	$t9
    # Line 9803
    sw	$t0,0($t1)
    la	$v0,comm_buffer
    # Line 9806
    lw	$v0,0($v0)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_d_lstrwidth

# Function: gl_d_lstwid
# Declared: Line 9809 (Source lines: 9818-9833)
# Address: 0x0f0b5de4 - 0x0f0b5ef8 (Size: 276 bytes, Frame: 208)
.globl gl_d_lstwid
.ent gl_d_lstwid
gl_d_lstwid:
    # Line 9818
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a2,16($sp)
    sd	$gp,32($sp)
    sd	$s0,0($sp)
    lui	$s0,0xfff8
    addiu	$s0,$s0,-11164
    addu	$gp,$t9,$s0
    la	$a4,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$s1,8($sp)
    lw	$a4,0($a4)
    lw	$at,0($at)
    move	$s1,$a1
    addiu	$v0,$a4,92
    sltu	$at,$at,$v0
    beqz	$at,.L0f0b5e40
    move	$s0,$a0
    # Line 9822
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$a4,comm_curbufpos
    lw	$a4,0($a4)
.L0f0b5e40:
    move	$a5,$a4
    sd	$a4,24($sp)
    # Line 9825
    move	$a1,$s1
    move	$a0,$s0
    la	$t9,gl_mbnbytes
    # Line 9824
    sw	$s0,4($a4)
    # Line 9823
    li	$a6,511
    # Line 9825
    jalr	$t9
    # Line 9823
    sw	$a6,0($a4)
    # Line 9827
    li	$a5,92
    la	$a4,gl_mem_copy_array
    move	$a2,$s1
    move	$a0,$s0
    # Line 9826
    li	$a6,-4
    addiu	$a3,$v0,3
    # Line 9827
    ld	$a7,24($sp)
    la	$t9,gl_mem_pack_lstring
    # Line 9826
    and	$a3,$a3,$a6
    # Line 9827
    addiu	$a1,$a7,12
    jalr	$t9
    # Line 9826
    sw	$a3,8($a7)
    # Line 9831
    li	$a0,1
    ld	$s1,8($sp)
    ld	$s0,0($sp)
    la	$t0,comm_endbuffer
    la	$t9,gl_comm_read_data
    # Line 9828
    ld	$t2,16($sp)
    # Line 9830
    la	$a7,comm_stdsize
    # Line 9827
    la	$t1,comm_buffer
    # Line 9828
    sw	$t2,0($v0)
    la	$t3,comm_curbufpos
    # Line 9830
    lw	$t1,0($t1)
    lw	$a7,0($a7)
    # Line 9829
    addiu	$t2,$v0,4
    sw	$t2,0($t3)
    # Line 9830
    addu	$a7,$a7,$t1
    addiu	$a7,$a7,-24
    # Line 9831
    jalr	$t9
    # Line 9830
    sw	$a7,0($t0)
    la	$v0,comm_buffer
    # Line 9833
    lw	$v0,0($v0)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_lstwid

# Function: gl_d_t3f
# Declared: Line 9836 (Source lines: 9843-9852)
# Address: 0x0f0b5ef8 - 0x0f0b5f70 (Size: 120 bytes, Frame: 32)
.globl gl_d_t3f
.ent gl_d_t3f
gl_d_t3f:
    # Line 9843
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-11440 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9845
    lw	$v0,0($v1)
    # Line 9846
    li	$a1,533
    sw	$a1,0($v0)
    # Line 9847
    lwc1	$f2,0($a0)
    swc1	$f2,4($v0)
    # Line 9848
    lwc1	$f1,4($a0)
    swc1	$f1,8($v0)
    # Line 9849
    lwc1	$f0,8($a0)
    # Line 9850
    la	$at,comm_endbuffer
    # Line 9849
    swc1	$f0,12($v0)
    # Line 9850
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b5f58
    sw	$v0,0($v1)
.L0f0b5f4c:
    ld	$gp,0($sp)
    # Line 9852
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b5f58:
    # Line 9851
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b5f4c
    ld	$ra,8($sp)
.end gl_d_t3f

# Function: gl_d_t3d
# Declared: Line 9854 (Source lines: 9861-9887)
# Address: 0x0f0b5f70 - 0x0f0b60a0 (Size: 304 bytes, Frame: 48)
.globl gl_d_t3d
.ent gl_d_t3d
gl_d_t3d:
    # Line 9861
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-11560 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sd	$s2,0($sp)
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    move	$s2,$a0
    beqz	$at,.L0f0b6040
    lw	$a4,0($a1)
    sd	$ra,24($sp)
    sd	$s4,16($sp)
.L0f0b5fac:
    # Line 9877
    move	$s4,$a4
    # Line 9882
    li	$a2,8
    move	$a1,$s2
    addiu	$a0,$a4,8
    la	$t9,memcpy
    sd	$ra,24($sp)
    # Line 9881
    li	$v1,513
    # Line 9882
    jalr	$t9
    # Line 9881
    sw	$v1,0($a4)
    # Line 9883
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,8
    jalr	$t9
    addiu	$a0,$s4,16
    # Line 9884
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,16
    jalr	$t9
    addiu	$a0,$s4,24
    la	$a2,comm_endbuffer
    la	$ra,comm_curbufpos
    # Line 9885
    addiu	$s4,$s4,32
    lw	$a2,0($a2)
    sw	$s4,0($ra)
    ld	$ra,24($sp)
    sltu	$a2,$a2,$s4
    bnez	$a2,.L0f0b602c
    ld	$s4,16($sp)
.L0f0b601c:
    ld	$gp,8($sp)
    # Line 9887
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b602c:
    # Line 9886
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s4,16($sp)
    b	.L0f0b601c
    ld	$ra,24($sp)
.L0f0b6040:
    # Line 9861
    la	$at,comm_endbuffer
    lw	$at,0($at)
    addiu	$v0,$a4,36
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6080
    # Line 9874
    la	$t9,gl_comm_flush
.L0f0b6058:
    sd	$s4,16($sp)
    andi	$v0,$a4,0x7
    beqz	$v0,.L0f0b5fac
    move	$s4,$a4
    # Line 9876
    li	$v1,-1
    sd	$ra,24($sp)
    sw	$v1,0($s4)
    # Line 9877
    addiu	$a4,$s4,4
    b	.L0f0b5fac
    sw	$a4,0($a1)
.L0f0b6080:
    sd	$ra,24($sp)
    # Line 9874
    jalr	$t9
    nop
    sd	$s4,16($sp)
    la	$a1,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b6058
    lw	$a4,0($a1)
.end gl_d_t3d

# Function: gl_d_t3i
# Declared: Line 9889 (Source lines: 9896-9905)
# Address: 0x0f0b60a0 - 0x0f0b6118 (Size: 120 bytes, Frame: 32)
.globl gl_d_t3i
.ent gl_d_t3i
gl_d_t3i:
    # Line 9896
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-11864 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$v1,comm_curbufpos
    # Line 9898
    lw	$v0,0($v1)
    # Line 9899
    li	$at,514
    sw	$at,0($v0)
    # Line 9900
    lw	$t9,0($a0)
    sw	$t9,4($v0)
    # Line 9901
    lw	$a1,4($a0)
    sw	$a1,8($v0)
    # Line 9902
    lw	$a0,8($a0)
    # Line 9903
    la	$at,comm_endbuffer
    # Line 9902
    sw	$a0,12($v0)
    # Line 9903
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6100
    sw	$v0,0($v1)
.L0f0b60f4:
    ld	$gp,0($sp)
    # Line 9905
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6100:
    # Line 9904
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b60f4
    ld	$ra,8($sp)
.end gl_d_t3i

# Function: gl_d_t3s
# Declared: Line 9907 (Source lines: 9914-9923)
# Address: 0x0f0b6118 - 0x0f0b6190 (Size: 120 bytes, Frame: 32)
.globl gl_d_t3s
.ent gl_d_t3s
gl_d_t3s:
    # Line 9914
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-11984 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$v1,comm_curbufpos
    # Line 9916
    lw	$v0,0($v1)
    # Line 9917
    li	$at,515
    sw	$at,0($v0)
    # Line 9918
    lh	$t9,0($a0)
    sh	$t9,4($v0)
    # Line 9919
    lh	$a1,2($a0)
    sh	$a1,6($v0)
    # Line 9920
    lh	$a0,4($a0)
    # Line 9921
    la	$at,comm_endbuffer
    # Line 9920
    sh	$a0,8($v0)
    # Line 9921
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6178
    sw	$v0,0($v1)
.L0f0b616c:
    ld	$gp,0($sp)
    # Line 9923
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6178:
    # Line 9922
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b616c
    ld	$ra,8($sp)
.end gl_d_t3s

# Function: gl_d_t4f
# Declared: Line 9925 (Source lines: 9932-9942)
# Address: 0x0f0b6190 - 0x0f0b6210 (Size: 128 bytes, Frame: 32)
.globl gl_d_t4f
.ent gl_d_t4f
gl_d_t4f:
    # Line 9932
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-12104 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9934
    lw	$v0,0($v1)
    # Line 9935
    li	$a1,516
    sw	$a1,0($v0)
    # Line 9936
    lwc1	$f3,0($a0)
    swc1	$f3,4($v0)
    # Line 9937
    lwc1	$f2,4($a0)
    swc1	$f2,8($v0)
    # Line 9938
    lwc1	$f1,8($a0)
    swc1	$f1,12($v0)
    # Line 9939
    lwc1	$f0,12($a0)
    # Line 9940
    la	$at,comm_endbuffer
    # Line 9939
    swc1	$f0,16($v0)
    # Line 9940
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b61f8
    sw	$v0,0($v1)
.L0f0b61ec:
    ld	$gp,0($sp)
    # Line 9942
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b61f8:
    # Line 9941
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b61ec
    ld	$ra,8($sp)
.end gl_d_t4f

# Function: gl_d_t4d
# Declared: Line 9944 (Source lines: 9951-9978)
# Address: 0x0f0b6210 - 0x0f0b6354 (Size: 324 bytes, Frame: 48)
.globl gl_d_t4d
.ent gl_d_t4d
gl_d_t4d:
    # Line 9951
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-12232 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sd	$s2,0($sp)
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    move	$s2,$a0
    beqz	$at,.L0f0b62f4
    lw	$a4,0($a1)
    sd	$ra,24($sp)
    sd	$s4,16($sp)
.L0f0b624c:
    # Line 9967
    move	$s4,$a4
    # Line 9972
    li	$a2,8
    move	$a1,$s2
    addiu	$a0,$a4,8
    la	$t9,memcpy
    sd	$ra,24($sp)
    # Line 9971
    li	$v1,517
    # Line 9972
    jalr	$t9
    # Line 9971
    sw	$v1,0($a4)
    # Line 9973
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,8
    jalr	$t9
    addiu	$a0,$s4,16
    # Line 9974
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,16
    jalr	$t9
    addiu	$a0,$s4,24
    # Line 9975
    la	$t9,memcpy
    li	$a2,8
    addiu	$a1,$s2,24
    jalr	$t9
    addiu	$a0,$s4,32
    la	$a2,comm_endbuffer
    la	$ra,comm_curbufpos
    # Line 9976
    addiu	$s4,$s4,40
    lw	$a2,0($a2)
    sw	$s4,0($ra)
    ld	$ra,24($sp)
    sltu	$a2,$a2,$s4
    bnez	$a2,.L0f0b62e0
    ld	$s4,16($sp)
.L0f0b62d0:
    ld	$gp,8($sp)
    # Line 9978
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b62e0:
    # Line 9977
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s4,16($sp)
    b	.L0f0b62d0
    ld	$ra,24($sp)
.L0f0b62f4:
    # Line 9951
    la	$at,comm_endbuffer
    lw	$at,0($at)
    addiu	$v0,$a4,44
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6334
    # Line 9964
    la	$t9,gl_comm_flush
.L0f0b630c:
    sd	$s4,16($sp)
    andi	$v0,$a4,0x7
    beqz	$v0,.L0f0b624c
    move	$s4,$a4
    # Line 9966
    li	$v1,-1
    sd	$ra,24($sp)
    sw	$v1,0($s4)
    # Line 9967
    addiu	$a4,$s4,4
    b	.L0f0b624c
    sw	$a4,0($a1)
.L0f0b6334:
    sd	$ra,24($sp)
    # Line 9964
    jalr	$t9
    nop
    sd	$s4,16($sp)
    la	$a1,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b630c
    lw	$a4,0($a1)
.end gl_d_t4d

# Function: gl_d_t4i
# Declared: Line 9980 (Source lines: 9987-9997)
# Address: 0x0f0b6354 - 0x0f0b63d4 (Size: 128 bytes, Frame: 32)
.globl gl_d_t4i
.ent gl_d_t4i
gl_d_t4i:
    # Line 9987
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-12556 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 9989
    lw	$v0,0($v1)
    # Line 9990
    li	$a1,518
    sw	$a1,0($v0)
    # Line 9991
    lw	$at,0($a0)
    sw	$at,4($v0)
    # Line 9992
    lw	$t9,4($a0)
    sw	$t9,8($v0)
    # Line 9993
    lw	$a1,8($a0)
    sw	$a1,12($v0)
    # Line 9994
    lw	$a0,12($a0)
    # Line 9995
    la	$at,comm_endbuffer
    # Line 9994
    sw	$a0,16($v0)
    # Line 9995
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b63bc
    sw	$v0,0($v1)
.L0f0b63b0:
    ld	$gp,0($sp)
    # Line 9997
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b63bc:
    # Line 9996
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b63b0
    ld	$ra,8($sp)
.end gl_d_t4i

# Function: gl_d_t4s
# Declared: Line 9999 (Source lines: 10006-10016)
# Address: 0x0f0b63d4 - 0x0f0b6454 (Size: 128 bytes, Frame: 32)
.globl gl_d_t4s
.ent gl_d_t4s
gl_d_t4s:
    # Line 10006
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-12684 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10008
    lw	$v0,0($v1)
    # Line 10009
    li	$a1,519
    sw	$a1,0($v0)
    # Line 10010
    lh	$at,0($a0)
    sh	$at,4($v0)
    # Line 10011
    lh	$t9,2($a0)
    sh	$t9,6($v0)
    # Line 10012
    lh	$a1,4($a0)
    sh	$a1,8($v0)
    # Line 10013
    lh	$a0,6($a0)
    # Line 10014
    la	$at,comm_endbuffer
    # Line 10013
    sh	$a0,10($v0)
    # Line 10014
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b643c
    sw	$v0,0($v1)
.L0f0b6430:
    ld	$gp,0($sp)
    # Line 10016
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b643c:
    # Line 10015
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6430
    ld	$ra,8($sp)
.end gl_d_t4s

# Function: gl_d_mssize
# Declared: Line 10018 (Source lines: 10027-10036)
# Address: 0x0f0b6454 - 0x0f0b64c0 (Size: 108 bytes, Frame: 48)
.globl gl_d_mssize
.ent gl_d_mssize
gl_d_mssize:
    # Line 10027
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-12812 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10029
    lw	$v0,0($v1)
    # Line 10030
    li	$a3,520
    # Line 10034
    la	$at,comm_endbuffer
    # Line 10033
    sw	$a2,12($v0)
    # Line 10032
    sw	$a1,8($v0)
    # Line 10031
    sw	$a0,4($v0)
    # Line 10030
    sw	$a3,0($v0)
    # Line 10034
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b64a8
    sw	$v0,0($v1)
.L0f0b649c:
    ld	$gp,0($sp)
    # Line 10036
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b64a8:
    # Line 10035
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b649c
    ld	$ra,8($sp)
.end gl_d_mssize

# Function: gl_d_mssample
# Declared: Line 10038 (Source lines: 10045-10052)
# Address: 0x0f0b64c0 - 0x0f0b6524 (Size: 100 bytes, Frame: 32)
.globl gl_d_mssample
.ent gl_d_mssample
gl_d_mssample:
    # Line 10045
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-12920 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10047
    lw	$v0,0($v1)
    # Line 10048
    li	$a1,521
    # Line 10050
    la	$at,comm_endbuffer
    # Line 10049
    sw	$a0,4($v0)
    # Line 10048
    sw	$a1,0($v0)
    # Line 10050
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b650c
    sw	$v0,0($v1)
.L0f0b6500:
    ld	$gp,0($sp)
    # Line 10052
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b650c:
    # Line 10051
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6500
    ld	$ra,8($sp)
.end gl_d_mssample

# Function: gl_dgl_texdef3d
# Declared: Line 10054 (Source lines: 10068-10095)
# Address: 0x0f0b6524 - 0x0f0b6724 (Size: 512 bytes, Frame: 144)
.globl gl_dgl_texdef3d
.ent gl_dgl_texdef3d
gl_dgl_texdef3d:
    # Line 10068
    move	$t2,$a2
    addiu	$sp,$sp,-144
    sd	$s1,32($sp)
    move	$s1,$a7
    sd	$s0,0($sp)
    move	$s0,$a5
    sd	$s4,24($sp)
    move	$s4,$a4
    sd	$s7,16($sp)
    sd	$gp,40($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-13020 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$t8,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s7,$a1
    lw	$t3,0($t8)
    lw	$at,0($at)
    sd	$s5,8($sp)
    addiu	$v0,$t3,188
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b66d8
    move	$s5,$a0
.L0f0b6580:
    # Line 10080
    mult	$s7,$t2
    mflo	$v1
    subu	$v1,$v1,$s7
    sra	$at,$v1,0x1
    srl	$at,$at,0x1e
    addu	$at,$at,$v1
    sra	$at,$at,0x2
    addiu	$at,$at,1
    mult	$at,$a3
    mflo	$t1
    nop
    nop
    mult	$t1,$s4
    # Line 10072
    move	$v0,$t3
    # Line 10077
    sw	$a3,16($t3)
    # Line 10076
    sw	$t2,12($t3)
    # Line 10078
    sw	$s4,20($t3)
    # Line 10074
    sw	$s5,4($t3)
    ld	$s5,8($sp)
    # Line 10075
    sw	$s7,8($t3)
    # Line 10073
    li	$t0,522
    sw	$t0,0($t3)
    # Line 10080
    li	$a0,-4
    ld	$s7,16($sp)
    mflo	$a2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0b6668
    sw	$a2,24($t3)
    ld	$s4,24($sp)
    ld	$s0,0($sp)
    # Line 10082
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,28
.L0f0b6608:
    # Line 10085
    sw	$a6,0($v0)
    # Line 10087
    sll	$a2,$a6,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s1,.L0f0b66ac
    sw	$a2,4($v0)
    ld	$s1,32($sp)
    # Line 10089
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0b662c:
    # Line 10093
    la	$t0,comm_buffer
    la	$v1,comm_stdsize
    lw	$t0,0($t0)
    lw	$v1,0($v1)
    # Line 10092
    sw	$v0,0($t8)
    la	$t1,comm_endbuffer
    # Line 10093
    addu	$v1,$v1,$t0
    addiu	$t0,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0b670c
    sw	$t0,0($t1)
.L0f0b665c:
    ld	$gp,40($sp)
    # Line 10095
    jr	$ra
    addiu	$sp,$sp,144
.L0f0b6668:
    sd	$a6,48($sp)
    # Line 10084
    li	$a4,188
    la	$a3,gl_mem_hton_long_array
    move	$a1,$s0
    addiu	$a0,$v0,28
    ld	$s4,24($sp)
    la	$t9,gl_mem_pack_array
    ld	$s7,16($sp)
    sd	$ra,72($sp)
    jalr	$t9
    ld	$s5,8($sp)
    la	$t8,comm_curbufpos
    li	$a0,-4
    ld	$a6,48($sp)
    ld	$ra,72($sp)
    b	.L0f0b6608
    ld	$s0,0($sp)
.L0f0b66ac:
    # Line 10091
    li	$a4,188
    la	$a3,gl_mem_hton_float_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    sd	$ra,72($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$t8,comm_curbufpos
    ld	$s1,32($sp)
    b	.L0f0b662c
    ld	$ra,72($sp)
.L0f0b66d8:
    sd	$t2,64($sp)
    # Line 10072
    la	$t9,gl_comm_flush
    sd	$a3,56($sp)
    sd	$ra,72($sp)
    jalr	$t9
    sd	$a6,48($sp)
    ld	$a6,48($sp)
    ld	$a3,56($sp)
    ld	$t2,64($sp)
    la	$t8,comm_curbufpos
    ld	$ra,72($sp)
    b	.L0f0b6580
    lw	$t3,0($t8)
.L0f0b670c:
    # Line 10094
    la	$t9,gl_comm_flush
    sd	$ra,72($sp)
    jalr	$t9
    nop
    b	.L0f0b665c
    ld	$ra,72($sp)
.end gl_dgl_texdef3d

# Function: gl_d_monobuffer
# Declared: Line 10097 (Source lines: 10103-10109)
# Address: 0x0f0b6724 - 0x0f0b6784 (Size: 96 bytes, Frame: 16)
.globl gl_d_monobuffer
.ent gl_d_monobuffer
gl_d_monobuffer:
    # Line 10103
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-13532
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 10105
    lw	$v0,0($v1)
    # Line 10106
    li	$a0,523
    # Line 10107
    la	$at,comm_endbuffer
    # Line 10106
    sw	$a0,0($v0)
    # Line 10107
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b676c
    sw	$v0,0($v1)
.L0f0b6760:
    ld	$gp,0($sp)
    # Line 10109
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b676c:
    # Line 10108
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6760
    ld	$ra,8($sp)
.end gl_d_monobuffer

# Function: gl_d_stereobuffer
# Declared: Line 10111 (Source lines: 10117-10123)
# Address: 0x0f0b6784 - 0x0f0b67e4 (Size: 96 bytes, Frame: 16)
.globl gl_d_stereobuffer
.ent gl_d_stereobuffer
gl_d_stereobuffer:
    # Line 10117
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-13628
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 10119
    lw	$v0,0($v1)
    # Line 10120
    li	$a0,524
    # Line 10121
    la	$at,comm_endbuffer
    # Line 10120
    sw	$a0,0($v0)
    # Line 10121
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b67cc
    sw	$v0,0($v1)
.L0f0b67c0:
    ld	$gp,0($sp)
    # Line 10123
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b67cc:
    # Line 10122
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b67c0
    ld	$ra,8($sp)
.end gl_d_stereobuffer

# Function: gl_d_leftbuffer
# Declared: Line 10125 (Source lines: 10132-10139)
# Address: 0x0f0b67e4 - 0x0f0b6848 (Size: 100 bytes, Frame: 32)
.globl gl_d_leftbuffer
.ent gl_d_leftbuffer
gl_d_leftbuffer:
    # Line 10132
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-13724 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10134
    lw	$v0,0($v1)
    # Line 10135
    li	$a1,525
    # Line 10137
    la	$at,comm_endbuffer
    # Line 10136
    sw	$a0,4($v0)
    # Line 10135
    sw	$a1,0($v0)
    # Line 10137
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6830
    sw	$v0,0($v1)
.L0f0b6824:
    ld	$gp,0($sp)
    # Line 10139
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6830:
    # Line 10138
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6824
    ld	$ra,8($sp)
.end gl_d_leftbuffer

# Function: gl_d_rightbuffer
# Declared: Line 10141 (Source lines: 10148-10155)
# Address: 0x0f0b6848 - 0x0f0b68ac (Size: 100 bytes, Frame: 32)
.globl gl_d_rightbuffer
.ent gl_d_rightbuffer
gl_d_rightbuffer:
    # Line 10148
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-13824 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10150
    lw	$v0,0($v1)
    # Line 10151
    li	$a1,526
    # Line 10153
    la	$at,comm_endbuffer
    # Line 10152
    sw	$a0,4($v0)
    # Line 10151
    sw	$a1,0($v0)
    # Line 10153
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6894
    sw	$v0,0($v1)
.L0f0b6888:
    ld	$gp,0($sp)
    # Line 10155
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6894:
    # Line 10154
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6888
    ld	$ra,8($sp)
.end gl_d_rightbuffer

# Function: gl_d_zbsize
# Declared: Line 10157 (Source lines: 10164-10171)
# Address: 0x0f0b68ac - 0x0f0b6910 (Size: 100 bytes, Frame: 32)
.globl gl_d_zbsize
.ent gl_d_zbsize
gl_d_zbsize:
    # Line 10164
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-13924 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10166
    lw	$v0,0($v1)
    # Line 10167
    li	$a1,527
    # Line 10169
    la	$at,comm_endbuffer
    # Line 10168
    sw	$a0,4($v0)
    # Line 10167
    sw	$a1,0($v0)
    # Line 10169
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b68f8
    sw	$v0,0($v1)
.L0f0b68ec:
    ld	$gp,0($sp)
    # Line 10171
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b68f8:
    # Line 10170
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b68ec
    ld	$ra,8($sp)
.end gl_d_zbsize

# Function: gl_d_blendcolor
# Declared: Line 10173 (Source lines: 10183-10193)
# Address: 0x0f0b6910 - 0x0f0b6980 (Size: 112 bytes, Frame: 48)
.globl gl_d_blendcolor
.ent gl_d_blendcolor
gl_d_blendcolor:
    # Line 10183
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-14024
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 10185
    lw	$v0,0($v1)
    # Line 10186
    li	$a0,528
    # Line 10191
    la	$at,comm_endbuffer
    # Line 10190
    swc1	$f15,16($v0)
    # Line 10189
    swc1	$f14,12($v0)
    # Line 10188
    swc1	$f13,8($v0)
    # Line 10187
    swc1	$f12,4($v0)
    # Line 10186
    sw	$a0,0($v0)
    # Line 10191
    lw	$at,0($at)
    addiu	$v0,$v0,20
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6968
    sw	$v0,0($v1)
.L0f0b695c:
    ld	$gp,0($sp)
    # Line 10193
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b6968:
    # Line 10192
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b695c
    ld	$ra,8($sp)
.end gl_d_blendcolor

# Function: gl_d_msalpha
# Declared: Line 10195 (Source lines: 10202-10209)
# Address: 0x0f0b6980 - 0x0f0b69e4 (Size: 100 bytes, Frame: 32)
.globl gl_d_msalpha
.ent gl_d_msalpha
gl_d_msalpha:
    # Line 10202
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-14136 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10204
    lw	$v0,0($v1)
    # Line 10205
    li	$a1,529
    # Line 10207
    la	$at,comm_endbuffer
    # Line 10206
    sw	$a0,4($v0)
    # Line 10205
    sw	$a1,0($v0)
    # Line 10207
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b69cc
    sw	$v0,0($v1)
.L0f0b69c0:
    ld	$gp,0($sp)
    # Line 10209
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b69cc:
    # Line 10208
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b69c0
    ld	$ra,8($sp)
.end gl_d_msalpha

# Function: gl_d_msmask
# Declared: Line 10211 (Source lines: 10219-10227)
# Address: 0x0f0b69e4 - 0x0f0b6a4c (Size: 104 bytes, Frame: 32)
.globl gl_d_msmask
.ent gl_d_msmask
gl_d_msmask:
    # Line 10219
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-14236 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10221
    lw	$v0,0($v1)
    # Line 10222
    li	$a0,530
    # Line 10225
    la	$at,comm_endbuffer
    # Line 10224
    sw	$a1,8($v0)
    # Line 10223
    swc1	$f12,4($v0)
    # Line 10222
    sw	$a0,0($v0)
    # Line 10225
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6a34
    sw	$v0,0($v1)
.L0f0b6a28:
    ld	$gp,0($sp)
    # Line 10227
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6a34:
    # Line 10226
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6a28
    ld	$ra,8($sp)
.end gl_d_msmask

# Function: gl_d_mspattern
# Declared: Line 10229 (Source lines: 10236-10243)
# Address: 0x0f0b6a4c - 0x0f0b6ab0 (Size: 100 bytes, Frame: 32)
.globl gl_d_mspattern
.ent gl_d_mspattern
gl_d_mspattern:
    # Line 10236
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-14340 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10238
    lw	$v0,0($v1)
    # Line 10239
    li	$a1,531
    # Line 10241
    la	$at,comm_endbuffer
    # Line 10240
    sw	$a0,4($v0)
    # Line 10239
    sw	$a1,0($v0)
    # Line 10241
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6a98
    sw	$v0,0($v1)
.L0f0b6a8c:
    ld	$gp,0($sp)
    # Line 10243
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6a98:
    # Line 10242
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6a8c
    ld	$ra,8($sp)
.end gl_d_mspattern

# Function: gl_d_multisample
# Declared: Line 10245 (Source lines: 10252-10259)
# Address: 0x0f0b6ab0 - 0x0f0b6b14 (Size: 100 bytes, Frame: 32)
.globl gl_d_multisample
.ent gl_d_multisample
gl_d_multisample:
    # Line 10252
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-14440 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10254
    lw	$v0,0($v1)
    # Line 10255
    li	$a1,532
    # Line 10257
    la	$at,comm_endbuffer
    # Line 10256
    sw	$a0,4($v0)
    # Line 10255
    sw	$a1,0($v0)
    # Line 10257
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6afc
    sw	$v0,0($v1)
.L0f0b6af0:
    ld	$gp,0($sp)
    # Line 10259
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6afc:
    # Line 10258
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6af0
    ld	$ra,8($sp)
.end gl_d_multisample

# Function: gl_d_getgconfig
# Declared: Line 10261 (Source lines: 10268-10276)
# Address: 0x0f0b6b14 - 0x0f0b6b70 (Size: 92 bytes, Frame: 32)
.globl gl_d_getgconfig
.ent gl_d_getgconfig
gl_d_getgconfig:
    # Line 10268
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,-14540
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 10270
    lw	$a1,0($v0)
    # Line 10271
    li	$v1,534
    # Line 10274
    la	$t9,gl_comm_read_data
    # Line 10272
    sw	$a0,4($a1)
    # Line 10274
    li	$a0,1
    # Line 10271
    sw	$v1,0($a1)
    # Line 10273
    addiu	$at,$a1,8
    # Line 10274
    jalr	$t9
    # Line 10273
    sw	$at,0($v0)
    # Line 10275
    la	$v0,comm_buffer
    # Line 10276
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_getgconfig

# Function: gl_d_hgram
# Declared: Line 10279 (Source lines: 10287-10295)
# Address: 0x0f0b6b70 - 0x0f0b6bd8 (Size: 104 bytes, Frame: 32)
.globl gl_d_hgram
.ent gl_d_hgram
gl_d_hgram:
    # Line 10287
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-14632 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10289
    lw	$v0,0($v1)
    # Line 10290
    li	$a2,565
    # Line 10293
    la	$at,comm_endbuffer
    # Line 10292
    sw	$a1,8($v0)
    # Line 10291
    sw	$a0,4($v0)
    # Line 10290
    sw	$a2,0($v0)
    # Line 10293
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6bc0
    sw	$v0,0($v1)
.L0f0b6bb4:
    ld	$gp,0($sp)
    # Line 10295
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6bc0:
    # Line 10294
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6bb4
    ld	$ra,8($sp)
.end gl_d_hgram

# Function: gl_d_minmax
# Declared: Line 10297 (Source lines: 10305-10313)
# Address: 0x0f0b6bd8 - 0x0f0b6c40 (Size: 104 bytes, Frame: 32)
.globl gl_d_minmax
.ent gl_d_minmax
gl_d_minmax:
    # Line 10305
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-14736 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10307
    lw	$v0,0($v1)
    # Line 10308
    li	$a2,566
    # Line 10311
    la	$at,comm_endbuffer
    # Line 10310
    sw	$a1,8($v0)
    # Line 10309
    sw	$a0,4($v0)
    # Line 10308
    sw	$a2,0($v0)
    # Line 10311
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6c28
    sw	$v0,0($v1)
.L0f0b6c1c:
    ld	$gp,0($sp)
    # Line 10313
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6c28:
    # Line 10312
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6c1c
    ld	$ra,8($sp)
.end gl_d_minmax

# Function: gl_d_pixeltransfer
# Declared: Line 10315 (Source lines: 10323-10331)
# Address: 0x0f0b6c40 - 0x0f0b6ca8 (Size: 104 bytes, Frame: 32)
.globl gl_d_pixeltransfer
.ent gl_d_pixeltransfer
gl_d_pixeltransfer:
    # Line 10323
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-14840 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10325
    lw	$v0,0($v1)
    # Line 10326
    li	$a1,567
    # Line 10329
    la	$at,comm_endbuffer
    # Line 10328
    swc1	$f13,8($v0)
    # Line 10327
    sw	$a0,4($v0)
    # Line 10326
    sw	$a1,0($v0)
    # Line 10329
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6c90
    sw	$v0,0($v1)
.L0f0b6c84:
    ld	$gp,0($sp)
    # Line 10331
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6c90:
    # Line 10330
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6c84
    ld	$ra,8($sp)
.end gl_d_pixeltransfer

# Function: gl_d_getmultisample
# Declared: Line 10333 (Source lines: 10339-10346)
# Address: 0x0f0b6ca8 - 0x0f0b6d00 (Size: 88 bytes, Frame: 16)
.globl gl_d_getmultisample
.ent gl_d_getmultisample
gl_d_getmultisample:
    # Line 10339
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,-14944
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    # Line 10344
    li	$a0,1
    sd	$ra,0($sp)
    # Line 10341
    lw	$a1,0($v0)
    # Line 10342
    li	$v1,569
    # Line 10344
    la	$t9,gl_comm_read_data
    # Line 10342
    sw	$v1,0($a1)
    # Line 10343
    addiu	$at,$a1,4
    # Line 10344
    jalr	$t9
    # Line 10343
    sw	$at,0($v0)
    # Line 10345
    la	$v0,comm_buffer
    # Line 10346
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_getmultisample

# Function: gl_dgl_tlutdef
# Declared: Line 10349 (Source lines: 10361-10386)
# Address: 0x0f0b6d00 - 0x0f0b6eb0 (Size: 432 bytes, Frame: 240)
.globl gl_dgl_tlutdef
.ent gl_dgl_tlutdef
gl_dgl_tlutdef:
    # Line 10361
    move	$t0,$a2
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    move	$s0,$a5
    sd	$s1,0($sp)
    move	$s1,$a3
    sd	$s7,16($sp)
    sd	$gp,32($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-15032 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$t1,comm_curbufpos
    la	$t2,comm_endbuffer
    move	$s7,$a1
    lw	$t3,0($t1)
    lw	$at,0($t2)
    sd	$s5,8($sp)
    addiu	$v0,$t3,180
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6e68
    move	$s5,$a0
.L0f0b6d54:
    # Line 10365
    move	$v0,$t3
    # Line 10369
    sw	$t0,12($t3)
    # Line 10368
    sw	$s7,8($t3)
    # Line 10367
    sw	$s5,4($t3)
    ld	$s5,8($sp)
    # Line 10366
    li	$a6,570
    sw	$a6,0($t3)
    # Line 10371
    li	$a0,-4
    sll	$a2,$t0,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s1,.L0f0b6df4
    sw	$a2,16($t3)
    ld	$s7,16($sp)
    ld	$s1,0($sp)
    # Line 10373
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,20
.L0f0b6d98:
    # Line 10376
    sw	$a4,0($v0)
    # Line 10378
    sll	$a2,$a4,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0b6e38
    sw	$a2,4($v0)
    ld	$s0,24($sp)
    # Line 10380
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0b6dbc:
    # Line 10384
    la	$a7,comm_buffer
    la	$a6,comm_stdsize
    lw	$a7,0($a7)
    lw	$a6,0($a6)
    # Line 10383
    sw	$v0,0($t1)
    # Line 10384
    addu	$a6,$a6,$a7
    addiu	$v1,$a6,-24
    addiu	$a6,$a6,-24
    sltu	$a6,$a6,$v0
    bnez	$a6,.L0f0b6e98
    sw	$v1,0($t2)
.L0f0b6de8:
    ld	$gp,32($sp)
    # Line 10386
    jr	$ra
    addiu	$sp,$sp,112
.L0f0b6df4:
    sd	$a4,40($sp)
    # Line 10375
    li	$a4,180
    la	$a3,gl_mem_hton_long_array
    move	$a1,$s1
    addiu	$a0,$v0,20
    la	$t9,gl_mem_pack_array
    ld	$s7,16($sp)
    sd	$ra,56($sp)
    jalr	$t9
    ld	$s5,8($sp)
    la	$t1,comm_curbufpos
    la	$t2,comm_endbuffer
    li	$a0,-4
    ld	$a4,40($sp)
    ld	$s1,0($sp)
    b	.L0f0b6d98
    ld	$ra,56($sp)
.L0f0b6e38:
    # Line 10382
    li	$a4,180
    la	$a3,gl_mem_hton_float_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,56($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$t1,comm_curbufpos
    la	$t2,comm_endbuffer
    ld	$ra,56($sp)
    b	.L0f0b6dbc
    ld	$s0,24($sp)
.L0f0b6e68:
    # Line 10365
    la	$t9,gl_comm_flush
    sd	$t0,48($sp)
    sd	$ra,56($sp)
    jalr	$t9
    sd	$a4,40($sp)
    la	$t2,comm_endbuffer
    ld	$a4,40($sp)
    ld	$t0,48($sp)
    la	$t1,comm_curbufpos
    ld	$ra,56($sp)
    b	.L0f0b6d54
    lw	$t3,0($t1)
.L0f0b6e98:
    # Line 10385
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    jalr	$t9
    nop
    b	.L0f0b6de8
    ld	$ra,56($sp)
.end gl_dgl_tlutdef

# Function: gl_d_tlutbind
# Declared: Line 10388 (Source lines: 10396-10404)
# Address: 0x0f0b6eb0 - 0x0f0b6f18 (Size: 104 bytes, Frame: 32)
.globl gl_d_tlutbind
.ent gl_d_tlutbind
gl_d_tlutbind:
    # Line 10396
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-15464 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10398
    lw	$v0,0($v1)
    # Line 10399
    li	$a2,571
    # Line 10402
    la	$at,comm_endbuffer
    # Line 10401
    sw	$a1,8($v0)
    # Line 10400
    sw	$a0,4($v0)
    # Line 10399
    sw	$a2,0($v0)
    # Line 10402
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b6f00
    sw	$v0,0($v1)
.L0f0b6ef4:
    ld	$gp,0($sp)
    # Line 10404
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b6f00:
    # Line 10403
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b6ef4
    ld	$ra,8($sp)
.end gl_d_tlutbind

# Function: gl_d_subtexload
# Declared: Line 10406 (Source lines: 10421-10444)
# Address: 0x0f0b6f18 - 0x0f0b70a4 (Size: 396 bytes, Frame: 144)
.globl gl_d_subtexload
.ent gl_d_subtexload
gl_d_subtexload:
    # Line 10421
    move	$a5,$a6
    mov.s	$f6,$f17
    mov.s	$f5,$f16
    mov.s	$f4,$f15
    addiu	$sp,$sp,-144
    sd	$s0,8($sp)
    move	$s0,$a7
    sdc1	$f30,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-15568 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$t0,comm_curbufpos
    la	$a2,comm_endbuffer
    mov.s	$f30,$f14
    lw	$t1,0($t0)
    lw	$at,0($a2)
    sd	$s1,16($sp)
    addiu	$v0,$t1,116
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b7044
    move	$s1,$a0
.L0f0b6f70:
    # Line 10425
    move	$v0,$t1
    # Line 10433
    sw	$a5,28($t1)
    # Line 10432
    swc1	$f6,24($t1)
    # Line 10431
    swc1	$f5,20($t1)
    # Line 10430
    swc1	$f4,16($t1)
    # Line 10428
    sw	$a1,8($t1)
    # Line 10429
    swc1	$f30,12($t1)
    # Line 10427
    sw	$s1,4($t1)
    ld	$s1,16($sp)
    # Line 10435
    sll	$a6,$a5,0x2
    # Line 10426
    li	$at,572
    sw	$at,0($t1)
    # Line 10435
    li	$at,-4
    addiu	$a6,$a6,3
    and	$a6,$a6,$at
    bnez	$s0,.L0f0b7008
    sw	$a6,32($t1)
    ldc1	$f30,0($sp)
    ld	$s0,8($sp)
    # Line 10437
    addu	$v0,$a6,$v0
    addiu	$v0,$v0,36
.L0f0b6fc4:
    # Line 10440
    lw	$a4,148($sp)
    # Line 10442
    la	$a3,comm_stdsize
    la	$at,comm_buffer
    # Line 10440
    sw	$a4,0($v0)
    # Line 10442
    lw	$at,0($at)
    lw	$a3,0($a3)
    # Line 10441
    addiu	$a4,$v0,4
    sw	$a4,0($t0)
    # Line 10442
    addu	$a3,$a3,$at
    addiu	$v1,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$a4
    bnez	$a3,.L0f0b708c
    sw	$v1,0($a2)
.L0f0b6ffc:
    ld	$gp,24($sp)
    # Line 10444
    jr	$ra
    addiu	$sp,$sp,144
.L0f0b7008:
    # Line 10439
    li	$a4,116
    la	$a3,gl_mem_hton_long_array
    move	$a2,$a6
    move	$a1,$s0
    addiu	$a0,$v0,36
    la	$t9,gl_mem_pack_array
    ldc1	$f30,0($sp)
    sd	$ra,72($sp)
    jalr	$t9
    ld	$s1,16($sp)
    la	$t0,comm_curbufpos
    la	$a2,comm_endbuffer
    ld	$ra,72($sp)
    b	.L0f0b6fc4
    ld	$s0,8($sp)
.L0f0b7044:
    sd	$a1,64($sp)
    sd	$a5,56($sp)
    sdc1	$f4,48($sp)
    # Line 10425
    la	$t9,gl_comm_flush
    sdc1	$f5,40($sp)
    sd	$ra,72($sp)
    jalr	$t9
    sdc1	$f6,32($sp)
    la	$a2,comm_endbuffer
    ldc1	$f6,32($sp)
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    ld	$a5,56($sp)
    ld	$a1,64($sp)
    la	$t0,comm_curbufpos
    ld	$ra,72($sp)
    b	.L0f0b6f70
    lw	$t1,0($t0)
.L0f0b708c:
    # Line 10443
    la	$t9,gl_comm_flush
    sd	$ra,72($sp)
    jalr	$t9
    nop
    b	.L0f0b6ffc
    ld	$ra,72($sp)
.end gl_d_subtexload

# Function: gl_d_convolve
# Declared: Line 10446 (Source lines: 10458-10478)
# Address: 0x0f0b70a4 - 0x0f0b7204 (Size: 352 bytes, Frame: 240)
.globl gl_d_convolve
.ent gl_d_convolve
gl_d_convolve:
    # Line 10458
    move	$a7,$a2
    addiu	$sp,$sp,-112
    sdc1	$f30,0($sp)
    mov.s	$f30,$f17
    sd	$s0,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-15964 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$t0,comm_curbufpos
    la	$t1,comm_endbuffer
    move	$s0,$a4
    lw	$t2,0($t0)
    lw	$at,0($t1)
    sd	$s1,16($sp)
    addiu	$v0,$t2,104
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b71b4
    move	$s1,$a0
.L0f0b70f0:
    # Line 10469
    mult	$a7,$a3
    # Line 10462
    move	$v0,$t2
    # Line 10467
    sw	$a3,16($t2)
    # Line 10466
    sw	$a7,12($t2)
    # Line 10465
    sw	$a1,8($t2)
    # Line 10464
    sw	$s1,4($t2)
    # Line 10463
    li	$a5,574
    sw	$a5,0($t2)
    # Line 10469
    li	$a5,-4
    mflo	$a2
    sll	$a2,$a2,0x2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a5
    bnez	$s0,.L0f0b7180
    sw	$a2,20($t2)
    ld	$s1,16($sp)
    ld	$s0,8($sp)
    # Line 10471
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,24
.L0f0b713c:
    # Line 10474
    swc1	$f30,0($v0)
    # Line 10476
    la	$a5,comm_buffer
    la	$v1,comm_stdsize
    ldc1	$f30,0($sp)
    lw	$a5,0($a5)
    lw	$v1,0($v1)
    # Line 10475
    addiu	$a6,$v0,4
    sw	$a6,0($t0)
    # Line 10476
    addu	$v1,$v1,$a5
    addiu	$a5,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$a6
    bnez	$v1,.L0f0b71ec
    sw	$a5,0($t1)
.L0f0b7174:
    ld	$gp,24($sp)
    # Line 10478
    jr	$ra
    addiu	$sp,$sp,112
.L0f0b7180:
    # Line 10473
    li	$a4,104
    la	$a3,gl_mem_hton_float_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,24
    sd	$ra,56($sp)
    jalr	$t9
    ld	$s1,16($sp)
    la	$t0,comm_curbufpos
    la	$t1,comm_endbuffer
    ld	$ra,56($sp)
    b	.L0f0b713c
    ld	$s0,8($sp)
.L0f0b71b4:
    sd	$a1,48($sp)
    # Line 10462
    la	$t9,gl_comm_flush
    sd	$a7,40($sp)
    sd	$ra,56($sp)
    jalr	$t9
    sd	$a3,32($sp)
    la	$t1,comm_endbuffer
    ld	$a3,32($sp)
    ld	$a7,40($sp)
    ld	$a1,48($sp)
    la	$t0,comm_curbufpos
    ld	$ra,56($sp)
    b	.L0f0b70f0
    lw	$t2,0($t0)
.L0f0b71ec:
    # Line 10477
    la	$t9,gl_comm_flush
    sd	$ra,56($sp)
    jalr	$t9
    ldc1	$f30,0($sp)
    b	.L0f0b7174
    ld	$ra,56($sp)
.end gl_d_convolve

# Function: gl_d_ildraw
# Declared: Line 10480 (Source lines: 10487-10494)
# Address: 0x0f0b7204 - 0x0f0b7268 (Size: 100 bytes, Frame: 32)
.globl gl_d_ildraw
.ent gl_d_ildraw
gl_d_ildraw:
    # Line 10487
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-16316 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10489
    lw	$v0,0($v1)
    # Line 10490
    li	$a1,575
    # Line 10492
    la	$at,comm_endbuffer
    # Line 10491
    sw	$a0,4($v0)
    # Line 10490
    sw	$a1,0($v0)
    # Line 10492
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b7250
    sw	$v0,0($v1)
.L0f0b7244:
    ld	$gp,0($sp)
    # Line 10494
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b7250:
    # Line 10493
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b7244
    ld	$ra,8($sp)
.end gl_d_ildraw

# Function: gl_d_ilbuffer
# Declared: Line 10496 (Source lines: 10503-10511)
# Address: 0x0f0b7268 - 0x0f0b72c4 (Size: 92 bytes, Frame: 32)
.globl gl_d_ilbuffer
.ent gl_d_ilbuffer
gl_d_ilbuffer:
    # Line 10503
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a2,0xfff8
    addiu	$a2,$a2,-16416
    addu	$gp,$t9,$a2
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 10505
    lw	$a1,0($v0)
    # Line 10506
    li	$v1,576
    # Line 10509
    la	$t9,gl_comm_read_data
    # Line 10507
    sw	$a0,4($a1)
    # Line 10509
    li	$a0,1
    # Line 10506
    sw	$v1,0($a1)
    # Line 10508
    addiu	$at,$a1,8
    # Line 10509
    jalr	$t9
    # Line 10508
    sw	$at,0($v0)
    # Line 10510
    la	$v0,comm_buffer
    # Line 10511
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_ilbuffer

# Function: gl_d_displacepolygon
# Declared: Line 10514 (Source lines: 10521-10528)
# Address: 0x0f0b72c4 - 0x0f0b7328 (Size: 100 bytes, Frame: 32)
.globl gl_d_displacepolygon
.ent gl_d_displacepolygon
gl_d_displacepolygon:
    # Line 10521
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-16508
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 10523
    lw	$v0,0($v1)
    # Line 10524
    li	$a0,577
    # Line 10526
    la	$at,comm_endbuffer
    # Line 10525
    swc1	$f12,4($v0)
    # Line 10524
    sw	$a0,0($v0)
    # Line 10526
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b7310
    sw	$v0,0($v1)
.L0f0b7304:
    ld	$gp,0($sp)
    # Line 10528
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b7310:
    # Line 10527
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b7304
    ld	$ra,8($sp)
.end gl_d_displacepolygon

# Function: gl_d_RGBsize
# Declared: Line 10530 (Source lines: 10537-10544)
# Address: 0x0f0b7328 - 0x0f0b738c (Size: 100 bytes, Frame: 32)
.globl gl_d_RGBsize
.ent gl_d_RGBsize
gl_d_RGBsize:
    # Line 10537
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-16608 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10539
    lw	$v0,0($v1)
    # Line 10540
    li	$a1,578
    # Line 10542
    la	$at,comm_endbuffer
    # Line 10541
    sw	$a0,4($v0)
    # Line 10540
    sw	$a1,0($v0)
    # Line 10542
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b7374
    sw	$v0,0($v1)
.L0f0b7368:
    ld	$gp,0($sp)
    # Line 10544
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b7374:
    # Line 10543
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b7368
    ld	$ra,8($sp)
.end gl_d_RGBsize

# Function: gl_d_fbsubtexload
# Declared: Line 10546 (Source lines: 10561-10577)
# Address: 0x0f0b738c - 0x0f0b749c (Size: 272 bytes, Frame: 144)
.globl gl_d_fbsubtexload
.ent gl_d_fbsubtexload
gl_d_fbsubtexload:
    # Line 10561
    mov.s	$f6,$f19
    mov.s	$f5,$f18
    mov.s	$f4,$f17
    addiu	$sp,$sp,-144
    sdc1	$f30,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-16708 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    mov.s	$f30,$f16
    # Line 10563
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s1,8($sp)
    addiu	$v0,$a7,40
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b7430
    # Line 10561
    move	$s1,$a0
.L0f0b73d8:
    # Line 10573
    swc1	$f6,32($a7)
    # Line 10572
    swc1	$f5,28($a7)
    # Line 10571
    swc1	$f4,24($a7)
    # Line 10569
    sw	$a3,16($a7)
    # Line 10568
    sw	$a2,12($a7)
    # Line 10567
    sw	$a1,8($a7)
    # Line 10570
    swc1	$f30,20($a7)
    # Line 10566
    sw	$s1,4($a7)
    # Line 10574
    lw	$s1,148($sp)
    # Line 10565
    li	$at,579
    sw	$at,0($a7)
    # Line 10574
    sw	$s1,36($a7)
    ldc1	$f30,0($sp)
    # Line 10575
    lw	$a4,0($a6)
    addiu	$s1,$a7,40
    sw	$s1,0($a5)
    sltu	$a4,$a4,$s1
    bnez	$a4,.L0f0b7480
    ld	$s1,8($sp)
.L0f0b7424:
    ld	$gp,16($sp)
    # Line 10577
    jr	$ra
    addiu	$sp,$sp,144
.L0f0b7430:
    sd	$a1,64($sp)
    sd	$a2,56($sp)
    sd	$a3,48($sp)
    sdc1	$f4,40($sp)
    # Line 10564
    la	$t9,gl_comm_flush
    sdc1	$f5,32($sp)
    sd	$ra,72($sp)
    jalr	$t9
    sdc1	$f6,24($sp)
    la	$a6,comm_endbuffer
    ldc1	$f6,24($sp)
    ldc1	$f5,32($sp)
    ldc1	$f4,40($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    ld	$a1,64($sp)
    la	$a5,comm_curbufpos
    ld	$ra,72($sp)
    b	.L0f0b73d8
    lw	$a7,0($a5)
.L0f0b7480:
    # Line 10576
    la	$t9,gl_comm_flush
    ldc1	$f30,0($sp)
    sd	$ra,72($sp)
    jalr	$t9
    ld	$s1,8($sp)
    b	.L0f0b7424
    ld	$ra,72($sp)
.end gl_d_fbsubtexload

# Function: gl_d_readcomponent
# Declared: Line 10579 (Source lines: 10586-10593)
# Address: 0x0f0b749c - 0x0f0b7500 (Size: 100 bytes, Frame: 32)
.globl gl_d_readcomponent
.ent gl_d_readcomponent
gl_d_readcomponent:
    # Line 10586
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-16980 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10588
    lw	$v0,0($v1)
    # Line 10589
    li	$a1,580
    # Line 10591
    la	$at,comm_endbuffer
    # Line 10590
    sw	$a0,4($v0)
    # Line 10589
    sw	$a1,0($v0)
    # Line 10591
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b74e8
    sw	$v0,0($v1)
.L0f0b74dc:
    ld	$gp,0($sp)
    # Line 10593
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b74e8:
    # Line 10592
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b74dc
    ld	$ra,8($sp)
.end gl_d_readcomponent

# Function: gl_d_gethgram
# Declared: Line 10595 (Source lines: 10602-10617)
# Address: 0x0f0b7500 - 0x0f0b7604 (Size: 260 bytes, Frame: 48)
.globl gl_d_gethgram
.ent gl_d_gethgram
gl_d_gethgram:
    # Line 10602
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-17080 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a5,comm_endbuffer
    lw	$a6,0($a1)
    lw	$at,0($a5)
    sd	$s0,0($sp)
    addiu	$v0,$a6,84
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b75c8
    move	$s0,$a0
.L0f0b7538:
    # Line 10606
    move	$v0,$a6
    # Line 10609
    lui	$a2,0x1
    # Line 10607
    li	$a3,581
    sw	$a3,0($a6)
    # Line 10609
    bnez	$s0,.L0f0b7598
    sw	$a2,4($a6)
    # Line 10611
    lui	$a4,0x1
    ld	$s0,0($sp)
    ori	$a4,$a4,0x8
    addu	$v0,$v0,$a4
.L0f0b7560:
    # Line 10615
    la	$a3,comm_buffer
    la	$v1,comm_stdsize
    lw	$a3,0($a3)
    lw	$v1,0($v1)
    # Line 10614
    sw	$v0,0($a1)
    # Line 10615
    addu	$v1,$v1,$a3
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0b75ec
    sw	$at,0($a5)
.L0f0b758c:
    ld	$gp,8($sp)
    # Line 10617
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b7598:
    # Line 10613
    li	$a4,84
    la	$a3,gl_mem_hton_long_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a5,comm_endbuffer
    ld	$ra,16($sp)
    b	.L0f0b7560
    ld	$s0,0($sp)
.L0f0b75c8:
    # Line 10606
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a5,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0b7538
    lw	$a6,0($a1)
.L0f0b75ec:
    # Line 10616
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    b	.L0f0b758c
    ld	$ra,16($sp)
.end gl_d_gethgram

# Function: gl_d_getminmax
# Declared: Line 10619 (Source lines: 10626-10641)
# Address: 0x0f0b7604 - 0x0f0b7704 (Size: 256 bytes, Frame: 48)
.globl gl_d_getminmax
.ent gl_d_getminmax
gl_d_getminmax:
    # Line 10626
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-17340 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    lw	$a5,0($a1)
    lw	$at,0($a4)
    sd	$s0,0($sp)
    addiu	$v0,$a5,84
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b76c8
    move	$s0,$a0
.L0f0b763c:
    # Line 10630
    move	$v0,$a5
    # Line 10633
    li	$a2,32
    # Line 10631
    li	$a3,582
    sw	$a3,0($a5)
    # Line 10633
    bnez	$s0,.L0f0b7694
    sw	$a2,4($a5)
    # Line 10635
    addiu	$v0,$v0,40
    ld	$s0,0($sp)
.L0f0b765c:
    # Line 10639
    la	$a2,comm_buffer
    la	$v1,comm_stdsize
    lw	$a2,0($a2)
    lw	$v1,0($v1)
    # Line 10638
    sw	$v0,0($a1)
    # Line 10639
    addu	$v1,$v1,$a2
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0b76ec
    sw	$at,0($a4)
.L0f0b7688:
    ld	$gp,8($sp)
    # Line 10641
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b7694:
    # Line 10637
    li	$a4,84
    la	$a3,gl_mem_hton_float_array
    li	$a2,32
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    ld	$ra,16($sp)
    b	.L0f0b765c
    ld	$s0,0($sp)
.L0f0b76c8:
    # Line 10630
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a4,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0b763c
    lw	$a5,0($a1)
.L0f0b76ec:
    # Line 10640
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    b	.L0f0b7688
    ld	$ra,16($sp)
.end gl_d_getminmax

# Function: gl_d_istexloaded
# Declared: Line 10643 (Source lines: 10651-10660)
# Address: 0x0f0b7704 - 0x0f0b7764 (Size: 96 bytes, Frame: 32)
.globl gl_d_istexloaded
.ent gl_d_istexloaded
gl_d_istexloaded:
    # Line 10651
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff8
    addiu	$a3,$a3,-17596
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 10653
    lw	$v1,0($v0)
    # Line 10654
    li	$a2,583
    # Line 10658
    la	$t9,gl_comm_read_data
    # Line 10655
    sw	$a0,4($v1)
    # Line 10658
    li	$a0,1
    # Line 10656
    sw	$a1,8($v1)
    # Line 10654
    sw	$a2,0($v1)
    # Line 10657
    addiu	$at,$v1,12
    # Line 10658
    jalr	$t9
    # Line 10657
    sw	$at,0($v0)
    # Line 10659
    la	$v0,comm_buffer
    # Line 10660
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_istexloaded

# Function: gl_d_pixelmap
# Declared: Line 10663 (Source lines: 10672-10689)
# Address: 0x0f0b7764 - 0x0f0b7890 (Size: 300 bytes, Frame: 208)
.globl gl_d_pixelmap
.ent gl_d_pixelmap
gl_d_pixelmap:
    # Line 10672
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a2
    sd	$s8,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-17692 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s8,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,16($sp)
    addiu	$v0,$a7,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b7854
    move	$s2,$a0
.L0f0b77ac:
    # Line 10676
    move	$v0,$a7
    # Line 10678
    sw	$s2,4($a7)
    # Line 10679
    sw	$s8,8($a7)
    ld	$s8,8($sp)
    # Line 10681
    li	$a3,0x8000
    # Line 10677
    li	$a4,584
    sw	$a4,0($a7)
    # Line 10681
    bnez	$s0,.L0f0b7818
    sw	$a3,12($a7)
    ld	$s2,16($sp)
    # Line 10683
    li	$s0,0x8010
    addu	$v0,$v0,$s0
    ld	$s0,0($sp)
.L0f0b77e0:
    # Line 10687
    la	$a3,comm_buffer
    la	$v1,comm_stdsize
    lw	$a3,0($a3)
    lw	$v1,0($v1)
    # Line 10686
    sw	$v0,0($a5)
    # Line 10687
    addu	$v1,$v1,$a3
    addiu	$at,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0f0b7878
    sw	$at,0($a6)
.L0f0b780c:
    ld	$gp,24($sp)
    # Line 10689
    jr	$ra
    addiu	$sp,$sp,80
.L0f0b7818:
    # Line 10685
    li	$a4,92
    la	$a3,gl_mem_hton_short_array
    li	$a2,0x8000
    move	$a1,$s0
    addiu	$a0,$v0,16
    la	$t9,gl_mem_pack_array
    ld	$s2,16($sp)
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s8,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$ra,32($sp)
    b	.L0f0b77e0
    ld	$s0,0($sp)
.L0f0b7854:
    # Line 10676
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0b77ac
    lw	$a7,0($a5)
.L0f0b7878:
    # Line 10688
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    b	.L0f0b780c
    ld	$ra,32($sp)
.end gl_d_pixelmap

# Function: gl_d_fmconcatpagematrix
# Declared: Line 10691 (Source lines: 10698-10729)
# Address: 0x0f0b7890 - 0x0f0b79c4 (Size: 308 bytes, Frame: 48)
.globl gl_d_fmconcatpagematrix
.ent gl_d_fmconcatpagematrix
gl_d_fmconcatpagematrix:
    # Line 10698
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-17992 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    sd	$s0,0($sp)
    lw	$at,0($at)
    move	$s0,$a0
    la	$a0,comm_endbuffer
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    lw	$v1,0($a0)
    beqz	$at,.L0f0b7974
    lw	$a4,0($a1)
    # Line 10715
    la	$a0,comm_endbuffer
.L0f0b78d0:
    move	$v0,$a4
    # Line 10721
    li	$v1,48
    sw	$v1,4($a4)
    # Line 10719
    lui	$a2,0x1
    ori	$a2,$a2,0x1171
    # Line 10721
    bnez	$s0,.L0f0b792c
    # Line 10719
    sw	$a2,0($a4)
    # Line 10723
    addiu	$v0,$v0,56
.L0f0b78f0:
    # Line 10727
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    lw	$v1,0($v1)
    lw	$at,0($at)
    # Line 10726
    sw	$v0,0($a1)
    # Line 10727
    addu	$at,$at,$v1
    addiu	$a3,$at,-24
    addiu	$at,$at,-24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b795c
    sw	$a3,0($a0)
.L0f0b791c:
    ld	$gp,8($sp)
    # Line 10729
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b792c:
    # Line 10725
    li	$a4,84
    la	$a3,gl_mem_hton_double_array
    li	$a2,48
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a0,comm_endbuffer
    b	.L0f0b78f0
    ld	$ra,16($sp)
.L0f0b795c:
    # Line 10728
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    b	.L0f0b791c
    ld	$ra,16($sp)
.L0f0b7974:
    # Line 10698
    addiu	$a2,$a4,88
    sltu	$v1,$v1,$a2
    bnez	$v1,.L0f0b79a0
.L0f0b7980:
    # Line 10712
    andi	$a3,$a4,0x7
    beqz	$a3,.L0f0b78d0
    move	$v0,$a4
    # Line 10714
    li	$at,-1
    sw	$at,0($v0)
    # Line 10715
    addiu	$a4,$v0,4
    b	.L0f0b78d0
    sw	$a4,0($a1)
.L0f0b79a0:
    # Line 10712
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a0,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0b7980
    lw	$a4,0($a1)
.end gl_d_fmconcatpagematrix

# Function: gl_d_fmenumerate
# Declared: Line 10731 (Source lines: 10738-10746)
# Address: 0x0f0b79c4 - 0x0f0b7a40 (Size: 124 bytes, Frame: 48)
.globl gl_d_fmenumerate
.ent gl_d_fmenumerate
gl_d_fmenumerate:
    # Line 10738
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-18300
    addu	$gp,$t9,$a1
    la	$at,comm_curbufpos
    sd	$s8,8($sp)
    # Line 10741
    lui	$v1,0x1
    # Line 10740
    lw	$v0,0($at)
    # Line 10741
    ori	$v1,$v1,0x1172
    # Line 10744
    la	$t9,gl_comm_callback
    # Line 10742
    sw	$a0,4($v0)
    # Line 10741
    sw	$v1,0($v0)
    # Line 10743
    addiu	$s8,$v0,8
    # Line 10744
    jalr	$t9
    # Line 10743
    sw	$s8,0($at)
    # Line 10744
    la	$at,comm_endbuffer
    lw	$at,0($at)
    ld	$ra,0($sp)
    sltu	$at,$at,$s8
    bnez	$at,.L0f0b7a2c
    ld	$s8,8($sp)
.L0f0b7a20:
    ld	$gp,16($sp)
    # Line 10746
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b7a2c:
    # Line 10745
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s8,8($sp)
    b	.L0f0b7a20
    ld	$ra,0($sp)
.end gl_d_fmenumerate

# Function: gl_d_fmfindfont
# Declared: Line 10748 (Source lines: 10755-10771)
# Address: 0x0f0b7a40 - 0x0f0b7b50 (Size: 272 bytes, Frame: 48)
.globl gl_d_fmfindfont
.ent gl_d_fmfindfont
gl_d_fmfindfont:
    # Line 10755
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-18424 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,24($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b7b34
    move	$s1,$a0
.L0f0b7a7c:
    sd	$s0,16($sp)
    # Line 10759
    move	$s0,$v0
    # Line 10761
    move	$a0,$s1
    la	$t9,strlen
    # Line 10760
    lui	$a1,0x1
    ori	$a1,$a1,0x1173
    # Line 10761
    jalr	$t9
    # Line 10760
    sw	$a1,0($v0)
    # Line 10762
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0b7b10
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 10764
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0b7abc:
    # Line 10769
    li	$a0,1
    # Line 10766
    la	$at,comm_buffer
    # Line 10768
    la	$t8,comm_stdsize
    la	$v0,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 10769
    la	$t9,gl_comm_read_data
    la	$ra,comm_endbuffer
    # Line 10768
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 10769
    jalr	$t9
    # Line 10767
    sw	$s0,0($v0)
    la	$v0,comm_buffer
    ld	$gp,8($sp)
    # Line 10771
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b7b10:
    # Line 10766
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    b	.L0f0b7abc
    ld	$s1,0($sp)
.L0f0b7b34:
    # Line 10759
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,16($sp)
    b	.L0f0b7a7c
    lw	$v0,0($v0)
.end gl_d_fmfindfont

# Function: gl_d_fm_fontpath_int
# Declared: Line 10774 (Source lines: 10782-10793)
# Address: 0x0f0b7b50 - 0x0f0b7bd4 (Size: 132 bytes, Frame: 48)
.globl gl_d_fm_fontpath_int
.ent gl_d_fm_fontpath_int
gl_d_fm_fontpath_int:
    # Line 10782
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 10790
    li	$a0,1
    sd	$gp,16($sp)
    # Line 10782
    lui	$a3,0xfff8
    addiu	$a3,$a3,-18696
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 10785
    lui	$a2,0x1
    # Line 10784
    lw	$v1,0($v0)
    # Line 10785
    ori	$a2,$a2,0x1174
    # Line 10790
    la	$t9,gl_comm_read_data
    # Line 10788
    sw	$a1,12($v1)
    # Line 10787
    sw	$a1,8($v1)
    # Line 10786
    sw	$a1,4($v1)
    # Line 10785
    sw	$a2,0($v1)
    # Line 10789
    addiu	$at,$v1,16
    # Line 10790
    jalr	$t9
    # Line 10789
    sw	$at,0($v0)
    # Line 10792
    la	$a1,comm_buffer
    move	$a0,$s8
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    la	$a2,gl_mem_copy_array
    jalr	$t9
    addiu	$a1,$a1,4
    # Line 10793
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_fm_fontpath_int

# Function: gl_d_fmfreefont
# Declared: Line 10795 (Source lines: 10802-10809)
# Address: 0x0f0b7bd4 - 0x0f0b7c3c (Size: 104 bytes, Frame: 32)
.globl gl_d_fmfreefont
.ent gl_d_fmfreefont
gl_d_fmfreefont:
    # Line 10802
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-18828 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 10805
    lui	$a1,0x1
    # Line 10804
    lw	$v0,0($v1)
    # Line 10805
    ori	$a1,$a1,0x1175
    # Line 10807
    la	$at,comm_endbuffer
    # Line 10806
    sw	$a0,4($v0)
    # Line 10805
    sw	$a1,0($v0)
    # Line 10807
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b7c24
    sw	$v0,0($v1)
.L0f0b7c18:
    ld	$gp,0($sp)
    # Line 10809
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b7c24:
    # Line 10808
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b7c18
    ld	$ra,8($sp)
.end gl_d_fmfreefont

# Function: gl_d_fmgetchrwidth
# Declared: Line 10811 (Source lines: 10819-10828)
# Address: 0x0f0b7c3c - 0x0f0b7ca4 (Size: 104 bytes, Frame: 32)
.globl gl_d_fmgetchrwidth
.ent gl_d_fmgetchrwidth
gl_d_fmgetchrwidth:
    # Line 10819
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a4,0xfff8
    addiu	$a4,$a4,-18932
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    andi	$v1,$a1,0xff
    # Line 10822
    lui	$a3,0x1
    # Line 10821
    lw	$a2,0($v0)
    # Line 10822
    ori	$a3,$a3,0x1176
    # Line 10826
    la	$t9,gl_comm_read_data
    # Line 10823
    sw	$a0,4($a2)
    # Line 10826
    li	$a0,1
    # Line 10824
    sb	$v1,8($a2)
    # Line 10822
    sw	$a3,0($a2)
    # Line 10825
    addiu	$at,$a2,12
    # Line 10826
    jalr	$t9
    # Line 10825
    sw	$at,0($v0)
    # Line 10827
    la	$v0,comm_buffer
    # Line 10828
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_fmgetchrwidth

# Function: gl_d_fmgetcomment
# Declared: Line 10831 (Source lines: 10840-10853)
# Address: 0x0f0b7ca4 - 0x0f0b7d3c (Size: 152 bytes, Frame: 192)
.globl gl_d_fmgetcomment
.ent gl_d_fmgetcomment
gl_d_fmgetcomment:
    # Line 10840
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    # Line 10843
    lui	$a3,0x1
    ori	$a3,$a3,0x1177
    sd	$gp,16($sp)
    # Line 10840
    lui	$a4,0xfff8
    addiu	$a4,$a4,-19036
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$s3,8($sp)
    move	$s3,$a2
    # Line 10842
    lw	$v1,0($v0)
    # Line 10846
    li	$a2,-1
    # Line 10849
    la	$t9,gl_comm_read_data
    # Line 10844
    sw	$a0,4($v1)
    # Line 10849
    li	$a0,1
    # Line 10847
    sw	$a1,16($v1)
    # Line 10846
    sw	$a2,12($v1)
    # Line 10845
    sw	$a1,8($v1)
    # Line 10843
    sw	$a3,0($v1)
    # Line 10848
    addiu	$at,$v1,20
    # Line 10849
    jalr	$t9
    # Line 10848
    sw	$at,0($v0)
    # Line 10851
    la	$a1,comm_buffer
    la	$a2,gl_mem_copy_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 10853
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_d_fmgetcomment

# Function: gl_d_fmgetfontinfo
# Declared: Line 10856 (Source lines: 10864-10876)
# Address: 0x0f0b7d3c - 0x0f0b7dd0 (Size: 148 bytes, Frame: 48)
.globl gl_d_fmgetfontinfo
.ent gl_d_fmgetfontinfo
gl_d_fmgetfontinfo:
    # Line 10864
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a1
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    lui	$a4,0xfff8
    addiu	$a4,$a4,-19188
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    # Line 10869
    li	$v1,216
    # Line 10867
    lui	$a3,0x1
    # Line 10866
    lw	$a2,0($v0)
    # Line 10867
    ori	$a3,$a3,0x1178
    # Line 10872
    la	$t9,gl_comm_read_data
    # Line 10868
    sw	$a0,4($a2)
    # Line 10872
    li	$a0,1
    # Line 10870
    sw	$v1,12($a2)
    # Line 10869
    sw	$v1,8($a2)
    # Line 10867
    sw	$a3,0($a2)
    # Line 10871
    addiu	$at,$a2,16
    # Line 10872
    jalr	$t9
    # Line 10871
    sw	$at,0($v0)
    # Line 10874
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_fmfontinfo_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 10876
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_fmgetfontinfo

# Function: gl_d_fmgetfontname
# Declared: Line 10879 (Source lines: 10888-10901)
# Address: 0x0f0b7dd0 - 0x0f0b7e68 (Size: 152 bytes, Frame: 192)
.globl gl_d_fmgetfontname
.ent gl_d_fmgetfontname
gl_d_fmgetfontname:
    # Line 10888
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    # Line 10891
    lui	$a3,0x1
    ori	$a3,$a3,0x1179
    sd	$gp,16($sp)
    # Line 10888
    lui	$a4,0xfff8
    addiu	$a4,$a4,-19336
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$s3,8($sp)
    move	$s3,$a2
    # Line 10890
    lw	$v1,0($v0)
    # Line 10894
    li	$a2,-1
    # Line 10897
    la	$t9,gl_comm_read_data
    # Line 10892
    sw	$a0,4($v1)
    # Line 10897
    li	$a0,1
    # Line 10895
    sw	$a1,16($v1)
    # Line 10894
    sw	$a2,12($v1)
    # Line 10893
    sw	$a1,8($v1)
    # Line 10891
    sw	$a3,0($v1)
    # Line 10896
    addiu	$at,$v1,20
    # Line 10897
    jalr	$t9
    # Line 10896
    sw	$at,0($v0)
    # Line 10899
    la	$a1,comm_buffer
    la	$a2,gl_mem_copy_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 10901
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_d_fmgetfontname

# Function: gl_d_fmgetpagematrix
# Declared: Line 10904 (Source lines: 10911-10938)
# Address: 0x0f0b7e68 - 0x0f0b7f4c (Size: 228 bytes, Frame: 48)
.globl gl_d_fmgetpagematrix
.ent gl_d_fmgetpagematrix
gl_d_fmgetpagematrix:
    # Line 10911
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-19488 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 10913
    la	$at,comm_curgfile
    lw	$at,0($at)
    # Line 10911
    la	$a2,comm_curbufpos
    # Line 10913
    lw	$at,408($at)
    lw	$a4,0($a2)
    sd	$a0,8($sp)
    bnez	$at,.L0f0b7ed0
    move	$a3,$a4
    la	$v1,comm_endbuffer
    lw	$v1,0($v1)
    addiu	$a1,$a4,16
    sltu	$v1,$v1,$a1
    bnez	$v1,.L0f0b7f2c
.L0f0b7eb0:
    # Line 10924
    andi	$a1,$a3,0x7
    beqz	$a1,.L0f0b7ed0
    # Line 10926
    li	$v0,-1
    sd	$ra,16($sp)
    # Line 10927
    addiu	$at,$a3,4
    # Line 10928
    addiu	$a3,$a3,4
    # Line 10926
    sw	$v0,-4($a3)
    # Line 10927
    sw	$at,0($a2)
.L0f0b7ed0:
    # Line 10935
    li	$a0,1
    sd	$ra,16($sp)
    # Line 10934
    addiu	$v1,$a3,12
    # Line 10932
    li	$a1,48
    # Line 10933
    sw	$a1,8($a3)
    # Line 10932
    sw	$a1,4($a3)
    # Line 10935
    la	$t9,gl_comm_read_data
    # Line 10931
    lui	$a4,0x1
    ori	$a4,$a4,0x117a
    sw	$a4,0($a3)
    # Line 10935
    jalr	$t9
    # Line 10934
    sw	$v1,0($a2)
    # Line 10937
    la	$a1,comm_buffer
    ld	$a0,8($sp)
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    la	$a2,gl_mem_ntoh_double_array
    jalr	$t9
    addiu	$a1,$a1,4
    # Line 10938
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b7f2c:
    # Line 10924
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a2,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0b7eb0
    lw	$a3,0($a2)
.end gl_d_fmgetpagematrix

# Function: gl_d_fmgetstrwidth
# Declared: Line 10940 (Source lines: 10948-10965)
# Address: 0x0f0b7f4c - 0x0f0b806c (Size: 288 bytes, Frame: 192)
.globl gl_d_fmgetstrwidth
.ent gl_d_fmgetstrwidth
gl_d_fmgetstrwidth:
    # Line 10948
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-19716 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s0,$a1
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s8,8($sp)
    addiu	$v1,$v0,88
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b8050
    move	$s8,$a0
.L0f0b7f90:
    sd	$s2,32($sp)
    # Line 10952
    move	$s2,$v0
    # Line 10955
    move	$a0,$s0
    # Line 10954
    sw	$s8,4($v0)
    # Line 10955
    la	$t9,strlen
    # Line 10953
    lui	$a1,0x1
    ori	$a1,$a1,0x117b
    # Line 10955
    jalr	$t9
    # Line 10953
    sw	$a1,0($v0)
    ld	$s8,8($sp)
    # Line 10956
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0b802c
    sw	$a2,8($s2)
    ld	$s0,0($sp)
    # Line 10958
    addu	$s2,$a2,$s2
    addiu	$s2,$s2,12
.L0f0b7fd8:
    # Line 10963
    li	$a0,1
    # Line 10960
    la	$at,comm_buffer
    # Line 10962
    la	$t8,comm_stdsize
    la	$v0,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 10963
    la	$t9,gl_comm_read_data
    la	$ra,comm_endbuffer
    # Line 10962
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 10963
    jalr	$t9
    # Line 10961
    sw	$s2,0($v0)
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 10965
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$s2,32($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0b802c:
    # Line 10960
    li	$a4,88
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s2,12
    move	$s2,$v0
    b	.L0f0b7fd8
    ld	$s0,0($sp)
.L0f0b8050:
    # Line 10952
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s2,32($sp)
    b	.L0f0b7f90
    lw	$v0,0($v0)
.end gl_d_fmgetstrwidth

# Function: gl_d_fm_getwholemetrics_int
# Declared: Line 10968 (Source lines: 10977-10990)
# Address: 0x0f0b806c - 0x0f0b8104 (Size: 152 bytes, Frame: 192)
.globl gl_d_fm_getwholemetrics_int
.ent gl_d_fm_getwholemetrics_int
gl_d_fm_getwholemetrics_int:
    # Line 10977
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    # Line 10980
    lui	$a3,0x1
    ori	$a3,$a3,0x117c
    sd	$gp,16($sp)
    # Line 10977
    lui	$a4,0xfff8
    addiu	$a4,$a4,-20004
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$s3,8($sp)
    move	$s3,$a1
    # Line 10979
    lw	$v1,0($v0)
    # Line 10982
    sll	$a1,$a2,0x5
    # Line 10986
    la	$t9,gl_comm_read_data
    # Line 10981
    sw	$a0,4($v1)
    # Line 10986
    li	$a0,1
    # Line 10984
    sw	$a2,16($v1)
    # Line 10983
    sw	$a1,12($v1)
    # Line 10982
    sw	$a1,8($v1)
    # Line 10980
    sw	$a3,0($v1)
    # Line 10985
    addiu	$at,$v1,20
    # Line 10986
    jalr	$t9
    # Line 10985
    sw	$at,0($v0)
    # Line 10988
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_fmglyphinfo_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 10990
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_d_fm_getwholemetrics_int

# Function: gl_d_fminit
# Declared: Line 10993 (Source lines: 10999-11005)
# Address: 0x0f0b8104 - 0x0f0b8168 (Size: 100 bytes, Frame: 16)
.globl gl_d_fminit
.ent gl_d_fminit
gl_d_fminit:
    # Line 10999
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-20156
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 11002
    lui	$a0,0x1
    # Line 11001
    lw	$v0,0($v1)
    # Line 11002
    ori	$a0,$a0,0x117d
    # Line 11003
    la	$at,comm_endbuffer
    # Line 11002
    sw	$a0,0($v0)
    # Line 11003
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b8150
    sw	$v0,0($v1)
.L0f0b8144:
    ld	$gp,0($sp)
    # Line 11005
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b8150:
    # Line 11004
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b8144
    ld	$ra,8($sp)
.end gl_d_fminit

# Function: gl_d_fminitpagematrix
# Declared: Line 11007 (Source lines: 11013-11019)
# Address: 0x0f0b8168 - 0x0f0b81cc (Size: 100 bytes, Frame: 16)
.globl gl_d_fminitpagematrix
.ent gl_d_fminitpagematrix
gl_d_fminitpagematrix:
    # Line 11013
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-20256
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 11016
    lui	$a0,0x1
    # Line 11015
    lw	$v0,0($v1)
    # Line 11016
    ori	$a0,$a0,0x117e
    # Line 11017
    la	$at,comm_endbuffer
    # Line 11016
    sw	$a0,0($v0)
    # Line 11017
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b81b4
    sw	$v0,0($v1)
.L0f0b81a8:
    ld	$gp,0($sp)
    # Line 11019
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b81b4:
    # Line 11018
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b81a8
    ld	$ra,8($sp)
.end gl_d_fminitpagematrix

# Function: gl_d_fmmakefont
# Declared: Line 11021 (Source lines: 11029-11062)
# Address: 0x0f0b81cc - 0x0f0b8304 (Size: 312 bytes, Frame: 48)
.globl gl_d_fmmakefont
.ent gl_d_fmmakefont
gl_d_fmmakefont:
    # Line 11029
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-20356 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    sd	$s2,0($sp)
    move	$s2,$a0
    lw	$at,0($at)
    sd	$s0,8($sp)
    move	$s0,$a1
    lw	$at,408($at)
    la	$a4,comm_curbufpos
    la	$a1,comm_endbuffer
    beqz	$at,.L0f0b82b0
    lw	$a5,0($a4)
    # Line 11046
    la	$a1,comm_endbuffer
.L0f0b8210:
    move	$v0,$a5
    # Line 11051
    sw	$s2,4($a5)
    # Line 11053
    li	$v1,48
    sw	$v1,8($a5)
    # Line 11050
    lui	$a2,0x1
    ori	$a2,$a2,0x117f
    # Line 11053
    bnez	$s0,.L0f0b8284
    # Line 11050
    sw	$a2,0($a5)
    sd	$ra,24($sp)
    # Line 11055
    addiu	$v0,$v0,64
.L0f0b8238:
    # Line 11057
    la	$s0,comm_buffer
    # Line 11059
    la	$a3,comm_stdsize
    # Line 11060
    li	$a0,1
    # Line 11059
    lw	$a5,0($s0)
    lw	$a3,0($a3)
    # Line 11058
    sw	$v0,0($a4)
    # Line 11060
    la	$t9,gl_comm_read_data
    # Line 11059
    addu	$a3,$a3,$a5
    addiu	$a3,$a3,-24
    # Line 11060
    jalr	$t9
    # Line 11059
    sw	$a3,0($a1)
    ld	$gp,16($sp)
    # Line 11062
    lw	$v0,0($s0)
    ld	$s0,8($sp)
    ld	$ra,24($sp)
    ld	$s2,0($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b8284:
    # Line 11057
    li	$a4,88
    la	$a3,gl_mem_hton_double_array
    li	$a2,48
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$v0,16
    la	$a4,comm_curbufpos
    b	.L0f0b8238
    la	$a1,comm_endbuffer
.L0f0b82b0:
    # Line 11029
    lw	$v1,0($a1)
    addiu	$a2,$a5,92
    sltu	$v1,$v1,$a2
    bnez	$v1,.L0f0b82e0
.L0f0b82c0:
    # Line 11043
    andi	$a3,$a5,0x7
    beqz	$a3,.L0f0b8210
    move	$v0,$a5
    # Line 11045
    li	$at,-1
    sw	$at,0($v0)
    # Line 11046
    addiu	$a5,$v0,4
    b	.L0f0b8210
    sw	$a5,0($a4)
.L0f0b82e0:
    # Line 11043
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    la	$a1,comm_endbuffer
    la	$a4,comm_curbufpos
    ld	$ra,24($sp)
    b	.L0f0b82c0
    lw	$a5,0($a4)
.end gl_d_fmmakefont

# Function: gl_d_fmoutchar
# Declared: Line 11065 (Source lines: 11073-11082)
# Address: 0x0f0b8304 - 0x0f0b8368 (Size: 100 bytes, Frame: 32)
.globl gl_d_fmoutchar
.ent gl_d_fmoutchar
gl_d_fmoutchar:
    # Line 11073
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff8
    addiu	$a3,$a3,-20668
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 11076
    lui	$a2,0x1
    # Line 11075
    lw	$v1,0($v0)
    # Line 11076
    ori	$a2,$a2,0x1180
    # Line 11080
    la	$t9,gl_comm_read_data
    # Line 11077
    sw	$a0,4($v1)
    # Line 11080
    li	$a0,1
    # Line 11078
    sw	$a1,8($v1)
    # Line 11076
    sw	$a2,0($v1)
    # Line 11079
    addiu	$at,$v1,12
    # Line 11080
    jalr	$t9
    # Line 11079
    sw	$at,0($v0)
    # Line 11081
    la	$v0,comm_buffer
    # Line 11082
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_fmoutchar

# Function: gl_d_fmprintermatch
# Declared: Line 11085 (Source lines: 11092-11099)
# Address: 0x0f0b8368 - 0x0f0b83d0 (Size: 104 bytes, Frame: 32)
.globl gl_d_fmprintermatch
.ent gl_d_fmprintermatch
gl_d_fmprintermatch:
    # Line 11092
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-20768 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11095
    lui	$a1,0x1
    # Line 11094
    lw	$v0,0($v1)
    # Line 11095
    ori	$a1,$a1,0x1181
    # Line 11097
    la	$at,comm_endbuffer
    # Line 11096
    sw	$a0,4($v0)
    # Line 11095
    sw	$a1,0($v0)
    # Line 11097
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b83b8
    sw	$v0,0($v1)
.L0f0b83ac:
    ld	$gp,0($sp)
    # Line 11099
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b83b8:
    # Line 11098
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b83ac
    ld	$ra,8($sp)
.end gl_d_fmprintermatch

# Function: gl_d_fmprstr
# Declared: Line 11101 (Source lines: 11108-11124)
# Address: 0x0f0b83d0 - 0x0f0b84e0 (Size: 272 bytes, Frame: 48)
.globl gl_d_fmprstr
.ent gl_d_fmprstr
gl_d_fmprstr:
    # Line 11108
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-20872 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,24($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b84c4
    move	$s1,$a0
.L0f0b840c:
    sd	$s0,16($sp)
    # Line 11112
    move	$s0,$v0
    # Line 11114
    move	$a0,$s1
    la	$t9,strlen
    # Line 11113
    lui	$a1,0x1
    ori	$a1,$a1,0x1182
    # Line 11114
    jalr	$t9
    # Line 11113
    sw	$a1,0($v0)
    # Line 11115
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0b84a0
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 11117
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0b844c:
    # Line 11122
    li	$a0,1
    # Line 11119
    la	$at,comm_buffer
    # Line 11121
    la	$t8,comm_stdsize
    la	$v0,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 11122
    la	$t9,gl_comm_read_data
    la	$ra,comm_endbuffer
    # Line 11121
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 11122
    jalr	$t9
    # Line 11120
    sw	$s0,0($v0)
    la	$v0,comm_buffer
    ld	$gp,8($sp)
    # Line 11124
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b84a0:
    # Line 11119
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    b	.L0f0b844c
    ld	$s1,0($sp)
.L0f0b84c4:
    # Line 11112
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,16($sp)
    b	.L0f0b840c
    lw	$v0,0($v0)
.end gl_d_fmprstr

# Function: gl_d_fmrotatepagematrix
# Declared: Line 11127 (Source lines: 11134-11158)
# Address: 0x0f0b84e0 - 0x0f0b85e4 (Size: 260 bytes, Frame: 48)
.globl gl_d_fmrotatepagematrix
.ent gl_d_fmrotatepagematrix
gl_d_fmrotatepagematrix:
    # Line 11134
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-21144 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sdc1	$f12,32($sp)
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    beqz	$at,.L0f0b8584
    lw	$a4,0($a1)
    sd	$ra,16($sp)
    sd	$s3,8($sp)
.L0f0b8518:
    # Line 11155
    li	$a2,8
    addiu	$a1,$sp,32
    addiu	$a0,$a4,8
    # Line 11150
    move	$s3,$a4
    sd	$ra,16($sp)
    # Line 11155
    la	$t9,memcpy
    # Line 11154
    lui	$v1,0x1
    ori	$v1,$v1,0x1183
    # Line 11155
    jalr	$t9
    # Line 11154
    sw	$v1,0($a4)
    la	$a0,comm_endbuffer
    la	$ra,comm_curbufpos
    # Line 11156
    addiu	$s3,$s3,16
    lw	$a0,0($a0)
    sw	$s3,0($ra)
    ld	$ra,16($sp)
    sltu	$a0,$a0,$s3
    bnez	$a0,.L0f0b8570
    ld	$s3,8($sp)
.L0f0b8564:
    ld	$gp,0($sp)
    # Line 11158
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b8570:
    # Line 11157
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s3,8($sp)
    b	.L0f0b8564
    ld	$ra,16($sp)
.L0f0b8584:
    # Line 11134
    la	$at,comm_endbuffer
    lw	$at,0($at)
    addiu	$v0,$a4,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b85c4
    # Line 11147
    la	$t9,gl_comm_flush
.L0f0b859c:
    sd	$s3,8($sp)
    andi	$v0,$a4,0x7
    beqz	$v0,.L0f0b8518
    move	$s3,$a4
    # Line 11149
    li	$v1,-1
    sd	$ra,16($sp)
    sw	$v1,0($s3)
    # Line 11150
    addiu	$a4,$s3,4
    b	.L0f0b8518
    sw	$a4,0($a1)
.L0f0b85c4:
    sd	$ra,16($sp)
    # Line 11147
    jalr	$t9
    nop
    sd	$s3,8($sp)
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0b859c
    lw	$a4,0($a1)
.end gl_d_fmrotatepagematrix

# Function: gl_d_fmscalefont
# Declared: Line 11160 (Source lines: 11168-11194)
# Address: 0x0f0b85e4 - 0x0f0b86e4 (Size: 256 bytes, Frame: 48)
.globl gl_d_fmscalefont
.ent gl_d_fmscalefont
gl_d_fmscalefont:
    # Line 11168
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-21404 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sdc1	$f13,40($sp)
    move	$a4,$a0
    lw	$at,408($at)
    la	$a5,comm_curbufpos
    sd	$s4,16($sp)
    bnez	$at,.L0f0b8658
    lw	$a5,0($a5)
    la	$v1,comm_endbuffer
    lw	$v1,0($v1)
    addiu	$a1,$a5,20
    sltu	$v1,$v1,$a1
    bnez	$v1,.L0f0b86bc
.L0f0b8630:
    # Line 11183
    li	$v0,-1
    sd	$s4,16($sp)
    # Line 11181
    andi	$a1,$a5,0x7
    beqz	$a1,.L0f0b8658
    move	$s4,$a5
    sd	$ra,8($sp)
    la	$at,comm_curbufpos
    # Line 11183
    sw	$v0,0($s4)
    # Line 11184
    addiu	$a5,$s4,4
    sw	$a5,0($at)
.L0f0b8658:
    move	$s4,$a5
    # Line 11190
    li	$a2,8
    addiu	$a1,$sp,40
    addiu	$a0,$a5,8
    # Line 11189
    sw	$a4,4($a5)
    sd	$ra,8($sp)
    # Line 11190
    la	$t9,memcpy
    # Line 11188
    lui	$v1,0x1
    ori	$v1,$v1,0x1184
    # Line 11190
    jalr	$t9
    # Line 11188
    sw	$v1,0($a5)
    # Line 11192
    li	$a0,1
    la	$t9,gl_comm_read_data
    la	$a2,comm_curbufpos
    # Line 11191
    addiu	$a1,$s4,16
    # Line 11192
    jalr	$t9
    # Line 11191
    sw	$a1,0($a2)
    # Line 11193
    la	$v0,comm_buffer
    ld	$gp,0($sp)
    # Line 11194
    lw	$v0,0($v0)
    ld	$ra,8($sp)
    ld	$s4,16($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b86bc:
    # Line 11181
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    sd	$a4,24($sp)
    sd	$s4,16($sp)
    ld	$ra,8($sp)
    la	$a5,comm_curbufpos
    ld	$a4,24($sp)
    b	.L0f0b8630
    lw	$a5,0($a5)
.end gl_d_fmscalefont

# Function: gl_d_fmscalepagematrix
# Declared: Line 11197 (Source lines: 11204-11228)
# Address: 0x0f0b86e4 - 0x0f0b87e8 (Size: 260 bytes, Frame: 48)
.globl gl_d_fmscalepagematrix
.ent gl_d_fmscalepagematrix
gl_d_fmscalepagematrix:
    # Line 11204
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-21660 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sdc1	$f12,32($sp)
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    beqz	$at,.L0f0b8788
    lw	$a4,0($a1)
    sd	$ra,16($sp)
    sd	$s3,8($sp)
.L0f0b871c:
    # Line 11225
    li	$a2,8
    addiu	$a1,$sp,32
    addiu	$a0,$a4,8
    # Line 11220
    move	$s3,$a4
    sd	$ra,16($sp)
    # Line 11225
    la	$t9,memcpy
    # Line 11224
    lui	$v1,0x1
    ori	$v1,$v1,0x1185
    # Line 11225
    jalr	$t9
    # Line 11224
    sw	$v1,0($a4)
    la	$a0,comm_endbuffer
    la	$ra,comm_curbufpos
    # Line 11226
    addiu	$s3,$s3,16
    lw	$a0,0($a0)
    sw	$s3,0($ra)
    ld	$ra,16($sp)
    sltu	$a0,$a0,$s3
    bnez	$a0,.L0f0b8774
    ld	$s3,8($sp)
.L0f0b8768:
    ld	$gp,0($sp)
    # Line 11228
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b8774:
    # Line 11227
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s3,8($sp)
    b	.L0f0b8768
    ld	$ra,16($sp)
.L0f0b8788:
    # Line 11204
    la	$at,comm_endbuffer
    lw	$at,0($at)
    addiu	$v0,$a4,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b87c8
    # Line 11217
    la	$t9,gl_comm_flush
.L0f0b87a0:
    sd	$s3,8($sp)
    andi	$v0,$a4,0x7
    beqz	$v0,.L0f0b871c
    move	$s3,$a4
    # Line 11219
    li	$v1,-1
    sd	$ra,16($sp)
    sw	$v1,0($s3)
    # Line 11220
    addiu	$a4,$s3,4
    b	.L0f0b871c
    sw	$a4,0($a1)
.L0f0b87c8:
    sd	$ra,16($sp)
    # Line 11217
    jalr	$t9
    nop
    sd	$s3,8($sp)
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0b87a0
    lw	$a4,0($a1)
.end gl_d_fmscalepagematrix

# Function: gl_d_fmsetfont
# Declared: Line 11230 (Source lines: 11237-11244)
# Address: 0x0f0b87e8 - 0x0f0b8850 (Size: 104 bytes, Frame: 32)
.globl gl_d_fmsetfont
.ent gl_d_fmsetfont
gl_d_fmsetfont:
    # Line 11237
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-21920 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11240
    lui	$a1,0x1
    # Line 11239
    lw	$v0,0($v1)
    # Line 11240
    ori	$a1,$a1,0x1186
    # Line 11242
    la	$at,comm_endbuffer
    # Line 11241
    sw	$a0,4($v0)
    # Line 11240
    sw	$a1,0($v0)
    # Line 11242
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b8838
    sw	$v0,0($v1)
.L0f0b882c:
    ld	$gp,0($sp)
    # Line 11244
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b8838:
    # Line 11243
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b882c
    ld	$ra,8($sp)
.end gl_d_fmsetfont

# Function: gl_d_fmsetpagematrix
# Declared: Line 11246 (Source lines: 11253-11284)
# Address: 0x0f0b8850 - 0x0f0b8984 (Size: 308 bytes, Frame: 48)
.globl gl_d_fmsetpagematrix
.ent gl_d_fmsetpagematrix
gl_d_fmsetpagematrix:
    # Line 11253
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff8 (gp disp hi)
    # addiu	v0,v0,-22024 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    sd	$s0,0($sp)
    lw	$at,0($at)
    move	$s0,$a0
    la	$a0,comm_endbuffer
    lw	$at,408($at)
    la	$a1,comm_curbufpos
    lw	$v1,0($a0)
    beqz	$at,.L0f0b8934
    lw	$a4,0($a1)
    # Line 11270
    la	$a0,comm_endbuffer
.L0f0b8890:
    move	$v0,$a4
    # Line 11276
    li	$v1,48
    sw	$v1,4($a4)
    # Line 11274
    lui	$a2,0x1
    ori	$a2,$a2,0x1187
    # Line 11276
    bnez	$s0,.L0f0b88ec
    # Line 11274
    sw	$a2,0($a4)
    # Line 11278
    addiu	$v0,$v0,56
.L0f0b88b0:
    # Line 11282
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    lw	$v1,0($v1)
    lw	$at,0($at)
    # Line 11281
    sw	$v0,0($a1)
    # Line 11282
    addu	$at,$at,$v1
    addiu	$a3,$at,-24
    addiu	$at,$at,-24
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b891c
    sw	$a3,0($a0)
.L0f0b88dc:
    ld	$gp,8($sp)
    # Line 11284
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b88ec:
    # Line 11280
    li	$a4,84
    la	$a3,gl_mem_hton_double_array
    li	$a2,48
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a0,comm_endbuffer
    b	.L0f0b88b0
    ld	$ra,16($sp)
.L0f0b891c:
    # Line 11283
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    b	.L0f0b88dc
    ld	$ra,16($sp)
.L0f0b8934:
    # Line 11253
    addiu	$a2,$a4,88
    sltu	$v1,$v1,$a2
    bnez	$v1,.L0f0b8960
.L0f0b8940:
    # Line 11267
    andi	$a3,$a4,0x7
    beqz	$a3,.L0f0b8890
    move	$v0,$a4
    # Line 11269
    li	$at,-1
    sw	$at,0($v0)
    # Line 11270
    addiu	$a4,$v0,4
    b	.L0f0b8890
    sw	$a4,0($a1)
.L0f0b8960:
    # Line 11267
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a0,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0b8940
    lw	$a4,0($a1)
.end gl_d_fmsetpagematrix

# Function: gl_d_fmsetpath
# Declared: Line 11286 (Source lines: 11293-11308)
# Address: 0x0f0b8984 - 0x0f0b8aa0 (Size: 284 bytes, Frame: 48)
.globl gl_d_fmsetpath
.ent gl_d_fmsetpath
gl_d_fmsetpath:
    # Line 11293
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-22332 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,16($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b8a70
    move	$s1,$a0
.L0f0b89c0:
    sd	$s0,24($sp)
    # Line 11297
    move	$s0,$v0
    # Line 11299
    move	$a0,$s1
    la	$t9,strlen
    # Line 11298
    lui	$a1,0x1
    ori	$a1,$a1,0x1188
    # Line 11299
    jalr	$t9
    # Line 11298
    sw	$a1,0($v0)
    ld	$ra,16($sp)
    # Line 11300
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0b8a48
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 11302
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0b8a04:
    # Line 11306
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    la	$a4,comm_curbufpos
    lw	$v1,0($v1)
    lw	$at,0($at)
    la	$a3,comm_endbuffer
    # Line 11305
    sw	$s0,0($a4)
    # Line 11306
    addu	$at,$at,$v1
    addiu	$v1,$at,-24
    sw	$v1,0($a3)
    addiu	$at,$at,-24
    sltu	$at,$at,$s0
    bnez	$at,.L0f0b8a8c
    ld	$s0,24($sp)
.L0f0b8a3c:
    ld	$gp,8($sp)
    # Line 11308
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b8a48:
    # Line 11304
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    ld	$ra,16($sp)
    b	.L0f0b8a04
    ld	$s1,0($sp)
.L0f0b8a70:
    # Line 11297
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,24($sp)
    b	.L0f0b89c0
    lw	$v0,0($v0)
.L0f0b8a8c:
    # Line 11307
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s0,24($sp)
    b	.L0f0b8a3c
    ld	$ra,16($sp)
.end gl_d_fmsetpath

# Function: gl_d_fmcachelimit
# Declared: Line 11310 (Source lines: 11316-11323)
# Address: 0x0f0b8aa0 - 0x0f0b8afc (Size: 92 bytes, Frame: 16)
.globl gl_d_fmcachelimit
.ent gl_d_fmcachelimit
gl_d_fmcachelimit:
    # Line 11316
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a0,0xfff8
    addiu	$a0,$a0,-22616
    addu	$gp,$t9,$a0
    la	$v0,comm_curbufpos
    # Line 11321
    li	$a0,1
    # Line 11319
    lui	$v1,0x1
    # Line 11318
    lw	$a1,0($v0)
    # Line 11319
    ori	$v1,$v1,0x1189
    # Line 11321
    la	$t9,gl_comm_read_data
    # Line 11319
    sw	$v1,0($a1)
    # Line 11320
    addiu	$at,$a1,4
    # Line 11321
    jalr	$t9
    # Line 11320
    sw	$at,0($v0)
    # Line 11322
    la	$v0,comm_buffer
    # Line 11323
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_fmcachelimit

# Function: gl_d_fmgetcacheused
# Declared: Line 11326 (Source lines: 11332-11339)
# Address: 0x0f0b8afc - 0x0f0b8b58 (Size: 92 bytes, Frame: 16)
.globl gl_d_fmgetcacheused
.ent gl_d_fmgetcacheused
gl_d_fmgetcacheused:
    # Line 11332
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a0,0xfff8
    addiu	$a0,$a0,-22708
    addu	$gp,$t9,$a0
    la	$v0,comm_curbufpos
    # Line 11337
    li	$a0,1
    # Line 11335
    lui	$v1,0x1
    # Line 11334
    lw	$a1,0($v0)
    # Line 11335
    ori	$v1,$v1,0x118a
    # Line 11337
    la	$t9,gl_comm_read_data
    # Line 11335
    sw	$v1,0($a1)
    # Line 11336
    addiu	$at,$a1,4
    # Line 11337
    jalr	$t9
    # Line 11336
    sw	$at,0($v0)
    # Line 11338
    la	$v0,comm_buffer
    # Line 11339
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_fmgetcacheused

# Function: gl_d_fmcacheenable
# Declared: Line 11342 (Source lines: 11348-11354)
# Address: 0x0f0b8b58 - 0x0f0b8bbc (Size: 100 bytes, Frame: 16)
.globl gl_d_fmcacheenable
.ent gl_d_fmcacheenable
gl_d_fmcacheenable:
    # Line 11348
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-22800
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 11351
    lui	$a0,0x1
    # Line 11350
    lw	$v0,0($v1)
    # Line 11351
    ori	$a0,$a0,0x118b
    # Line 11352
    la	$at,comm_endbuffer
    # Line 11351
    sw	$a0,0($v0)
    # Line 11352
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b8ba4
    sw	$v0,0($v1)
.L0f0b8b98:
    ld	$gp,0($sp)
    # Line 11354
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b8ba4:
    # Line 11353
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b8b98
    ld	$ra,8($sp)
.end gl_d_fmcacheenable

# Function: gl_d_fmcachedisable
# Declared: Line 11356 (Source lines: 11362-11368)
# Address: 0x0f0b8bbc - 0x0f0b8c20 (Size: 100 bytes, Frame: 16)
.globl gl_d_fmcachedisable
.ent gl_d_fmcachedisable
gl_d_fmcachedisable:
    # Line 11362
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-22900
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 11365
    lui	$a0,0x1
    # Line 11364
    lw	$v0,0($v1)
    # Line 11365
    ori	$a0,$a0,0x118c
    # Line 11366
    la	$at,comm_endbuffer
    # Line 11365
    sw	$a0,0($v0)
    # Line 11366
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b8c08
    sw	$v0,0($v1)
.L0f0b8bfc:
    ld	$gp,0($sp)
    # Line 11368
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b8c08:
    # Line 11367
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b8bfc
    ld	$ra,8($sp)
.end gl_d_fmcachedisable

# Function: gl_d_fmsetcachelimit
# Declared: Line 11370 (Source lines: 11377-11384)
# Address: 0x0f0b8c20 - 0x0f0b8c88 (Size: 104 bytes, Frame: 32)
.globl gl_d_fmsetcachelimit
.ent gl_d_fmsetcachelimit
gl_d_fmsetcachelimit:
    # Line 11377
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-23000 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11380
    lui	$a1,0x1
    # Line 11379
    lw	$v0,0($v1)
    # Line 11380
    ori	$a1,$a1,0x118d
    # Line 11382
    la	$at,comm_endbuffer
    # Line 11381
    sw	$a0,4($v0)
    # Line 11380
    sw	$a1,0($v0)
    # Line 11382
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b8c70
    sw	$v0,0($v1)
.L0f0b8c64:
    ld	$gp,0($sp)
    # Line 11384
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b8c70:
    # Line 11383
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b8c64
    ld	$ra,8($sp)
.end gl_d_fmsetcachelimit

# Function: gl_d_fm_pixels_to_pointsize_int
# Declared: Line 11386 (Source lines: 11393-11401)
# Address: 0x0f0b8c88 - 0x0f0b8cf4 (Size: 108 bytes, Frame: 48)
.globl gl_d_fm_pixels_to_pointsize_int
.ent gl_d_fm_pixels_to_pointsize_int
gl_d_fm_pixels_to_pointsize_int:
    # Line 11393
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 11399
    li	$a0,1
    sd	$gp,16($sp)
    # Line 11393
    lui	$a1,0xfff8
    addiu	$a1,$a1,-23104
    addu	$gp,$t9,$a1
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 11396
    lui	$v1,0x1
    # Line 11395
    lw	$a1,0($v0)
    # Line 11396
    ori	$v1,$v1,0x118e
    # Line 11399
    la	$t9,gl_comm_read_data
    # Line 11396
    sw	$v1,0($a1)
    # Line 11398
    addiu	$at,$a1,4
    # Line 11399
    jalr	$t9
    # Line 11398
    sw	$at,0($v0)
    # Line 11400
    la	$ra,comm_buffer
    lw	$ra,0($ra)
    lwc1	$f0,4($ra)
    ld	$gp,16($sp)
    # Line 11401
    ld	$ra,0($sp)
    # Line 11400
    swc1	$f0,0($s8)
    # Line 11401
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_fm_pixels_to_pointsize_int

# Function: gl_d_fm_pointsize_to_pixels_int
# Declared: Line 11403 (Source lines: 11410-11418)
# Address: 0x0f0b8cf4 - 0x0f0b8d60 (Size: 108 bytes, Frame: 48)
.globl gl_d_fm_pointsize_to_pixels_int
.ent gl_d_fm_pointsize_to_pixels_int
gl_d_fm_pointsize_to_pixels_int:
    # Line 11410
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 11416
    li	$a0,1
    sd	$gp,16($sp)
    # Line 11410
    lui	$a1,0xfff8
    addiu	$a1,$a1,-23212
    addu	$gp,$t9,$a1
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 11413
    lui	$v1,0x1
    # Line 11412
    lw	$a1,0($v0)
    # Line 11413
    ori	$v1,$v1,0x118f
    # Line 11416
    la	$t9,gl_comm_read_data
    # Line 11413
    sw	$v1,0($a1)
    # Line 11415
    addiu	$at,$a1,4
    # Line 11416
    jalr	$t9
    # Line 11415
    sw	$at,0($v0)
    # Line 11417
    la	$ra,comm_buffer
    lw	$ra,0($ra)
    lwc1	$f0,4($ra)
    ld	$gp,16($sp)
    # Line 11418
    ld	$ra,0($sp)
    # Line 11417
    swc1	$f0,0($s8)
    # Line 11418
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_fm_pointsize_to_pixels_int

# Function: gl_d_fmfprstr
# Declared: Line 11420 (Source lines: 11431-11451)
# Address: 0x0f0b8d60 - 0x0f0b8eb4 (Size: 340 bytes, Frame: 240)
.globl gl_d_fmfprstr
.ent gl_d_fmfprstr
gl_d_fmfprstr:
    # Line 11431
    addiu	$sp,$sp,-112
    sd	$s2,0($sp)
    move	$s2,$a1
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-23320 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a7,comm_curbufpos
    la	$t0,comm_endbuffer
    sd	$s1,8($sp)
    lw	$t1,0($a7)
    lw	$at,0($t0)
    dsll32	$s1,$a2,0x10
    addiu	$v0,$t1,100
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b8e84
    dsra32	$s1,$s1,0x10
.L0f0b8dac:
    # Line 11435
    move	$v0,$t1
    # Line 11437
    sw	$s8,4($t1)
    # Line 11439
    li	$a5,-4
    addiu	$a2,$s1,3
    and	$a2,$a2,$a5
    sw	$a2,8($t1)
    # Line 11436
    lui	$a5,0x1
    ori	$a5,$a5,0x1190
    # Line 11439
    bnez	$s2,.L0f0b8e44
    # Line 11436
    sw	$a5,0($t1)
    ld	$s8,16($sp)
    sd	$ra,32($sp)
    ld	$s2,0($sp)
    # Line 11441
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0b8de8:
    # Line 11449
    li	$a0,1
    # Line 11446
    sw	$a4,8($v0)
    # Line 11445
    sw	$a3,4($v0)
    # Line 11444
    sh	$s1,0($v0)
    # Line 11443
    la	$a1,comm_buffer
    # Line 11448
    la	$v1,comm_stdsize
    # Line 11447
    addiu	$a2,$v0,12
    # Line 11448
    lw	$a1,0($a1)
    lw	$v1,0($v1)
    # Line 11447
    sw	$a2,0($a7)
    # Line 11449
    la	$t9,gl_comm_read_data
    # Line 11448
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 11449
    jalr	$t9
    # Line 11448
    sw	$v1,0($t0)
    la	$v0,comm_buffer
    ld	$gp,24($sp)
    # Line 11451
    lw	$v0,0($v0)
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0b8e44:
    sd	$a4,40($sp)
    # Line 11443
    li	$a4,100
    sd	$a3,48($sp)
    la	$a3,gl_mem_copy_array
    move	$a1,$s2
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s8,16($sp)
    la	$a7,comm_curbufpos
    la	$t0,comm_endbuffer
    ld	$a4,40($sp)
    ld	$a3,48($sp)
    b	.L0f0b8de8
    ld	$s2,0($sp)
.L0f0b8e84:
    # Line 11435
    la	$t9,gl_comm_flush
    sd	$a3,48($sp)
    sd	$ra,32($sp)
    jalr	$t9
    sd	$a4,40($sp)
    la	$t0,comm_endbuffer
    ld	$ra,32($sp)
    ld	$a4,40($sp)
    la	$a7,comm_curbufpos
    ld	$a3,48($sp)
    b	.L0f0b8dac
    lw	$t1,0($a7)
.end gl_d_fmfprstr

# Function: gl_d_wfm_makefont_int
# Declared: Line 11454 (Source lines: 11466-11497)
# Address: 0x0f0b8eb4 - 0x0f0b9084 (Size: 464 bytes, Frame: 128)
.globl gl_d_wfm_makefont_int
.ent gl_d_wfm_makefont_int
gl_d_wfm_makefont_int:
    # Line 11466
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$s2,24($sp)
    move	$s2,$a5
    sd	$a4,0($sp)
    sd	$a3,40($sp)
    sd	$s3,8($sp)
    move	$s3,$a2
    sd	$s1,16($sp)
    sd	$gp,48($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-23660 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s1,$a1
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s5,32($sp)
    addiu	$v1,$v0,256
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b9068
    move	$s5,$a0
.L0f0b8f10:
    sd	$s0,56($sp)
    # Line 11470
    move	$s0,$v0
    # Line 11473
    move	$a0,$s1
    # Line 11472
    sw	$s5,4($v0)
    # Line 11473
    la	$t9,strlen
    # Line 11471
    lui	$a1,0x1
    ori	$a1,$a1,0x1191
    # Line 11473
    jalr	$t9
    # Line 11471
    sw	$a1,0($v0)
    ld	$s5,40($sp)
    # Line 11474
    addiu	$a2,$v0,4
    li	$a0,-4
    and	$a2,$a0,$a2
    bnez	$s1,.L0f0b8fec
    sw	$a2,8($s0)
    ld	$s1,16($sp)
    # Line 11476
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,12
.L0f0b8f58:
    # Line 11480
    li	$at,16
    bnez	$s3,.L0f0b9014
    sw	$at,0($s0)
    # Line 11482
    addiu	$s0,$s0,20
    ld	$s3,8($sp)
.L0f0b8f6c:
    ld	$a2,0($sp)
    # Line 11485
    sw	$s5,0($s0)
    # Line 11486
    sw	$a2,4($s0)
    # Line 11488
    addiu	$a2,$a2,3
    and	$a2,$a2,$a0
    bnez	$s2,.L0f0b9040
    sw	$a2,8($s0)
    ld	$s5,32($sp)
    ld	$s2,24($sp)
    # Line 11490
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,12
.L0f0b8f98:
    # Line 11495
    li	$a0,1
    # Line 11492
    la	$at,comm_buffer
    # Line 11494
    la	$t8,comm_stdsize
    la	$v0,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 11495
    la	$t9,gl_comm_read_data
    la	$ra,comm_endbuffer
    # Line 11494
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 11495
    jalr	$t9
    # Line 11493
    sw	$s0,0($v0)
    la	$v0,comm_buffer
    ld	$gp,48($sp)
    # Line 11497
    lw	$v0,0($v0)
    ld	$ra,64($sp)
    ld	$s0,56($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0b8fec:
    # Line 11478
    li	$a4,256
    la	$t9,gl_mem_pack_array
    move	$a1,$s1
    # Line 11476
    la	$a3,gl_mem_copy_array
    # Line 11478
    jalr	$t9
    addiu	$a0,$s0,12
    li	$a0,-4
    move	$s0,$v0
    b	.L0f0b8f58
    ld	$s1,16($sp)
.L0f0b9014:
    # Line 11484
    li	$a4,256
    la	$a3,gl_mem_hton_float_array
    la	$t9,gl_mem_pack_array
    li	$a2,16
    move	$a1,$s3
    jalr	$t9
    addiu	$a0,$s0,4
    li	$a0,-4
    move	$s0,$v0
    b	.L0f0b8f6c
    ld	$s3,8($sp)
.L0f0b9040:
    la	$a3,gl_mem_copy_array
    # Line 11492
    li	$a4,256
    la	$t9,gl_mem_pack_array
    move	$a1,$s2
    addiu	$a0,$s0,12
    jalr	$t9
    ld	$s5,32($sp)
    move	$s0,$v0
    b	.L0f0b8f98
    ld	$s2,24($sp)
.L0f0b9068:
    # Line 11470
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,56($sp)
    b	.L0f0b8f10
    lw	$v0,0($v0)
.end gl_d_wfm_makefont_int

# Function: gl_d_wfm_font
# Declared: Line 11500 (Source lines: 11507-11515)
# Address: 0x0f0b9084 - 0x0f0b90e4 (Size: 96 bytes, Frame: 32)
.globl gl_d_wfm_font
.ent gl_d_wfm_font
gl_d_wfm_font:
    # Line 11507
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-24124
    addu	$gp,$t9,$a1
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 11510
    lui	$v1,0x1
    # Line 11509
    lw	$a1,0($v0)
    # Line 11510
    ori	$v1,$v1,0x1192
    # Line 11513
    la	$t9,gl_comm_read_data
    # Line 11511
    sw	$a0,4($a1)
    # Line 11513
    li	$a0,1
    # Line 11510
    sw	$v1,0($a1)
    # Line 11512
    addiu	$at,$a1,8
    # Line 11513
    jalr	$t9
    # Line 11512
    sw	$at,0($v0)
    # Line 11514
    la	$v0,comm_buffer
    # Line 11515
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_wfm_font

# Function: gl_d_wfm_getfont
# Declared: Line 11518 (Source lines: 11524-11531)
# Address: 0x0f0b90e4 - 0x0f0b9140 (Size: 92 bytes, Frame: 16)
.globl gl_d_wfm_getfont
.ent gl_d_wfm_getfont
gl_d_wfm_getfont:
    # Line 11524
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a0,0xfff8
    addiu	$a0,$a0,-24220
    addu	$gp,$t9,$a0
    la	$v0,comm_curbufpos
    # Line 11529
    li	$a0,1
    # Line 11527
    lui	$v1,0x1
    # Line 11526
    lw	$a1,0($v0)
    # Line 11527
    ori	$v1,$v1,0x1193
    # Line 11529
    la	$t9,gl_comm_read_data
    # Line 11527
    sw	$v1,0($a1)
    # Line 11528
    addiu	$at,$a1,4
    # Line 11529
    jalr	$t9
    # Line 11528
    sw	$at,0($v0)
    # Line 11530
    la	$v0,comm_buffer
    # Line 11531
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_wfm_getfont

# Function: gl_d_wfm_getfontinfo
# Declared: Line 11534 (Source lines: 11542-11554)
# Address: 0x0f0b9140 - 0x0f0b91d4 (Size: 148 bytes, Frame: 48)
.globl gl_d_wfm_getfontinfo
.ent gl_d_wfm_getfontinfo
gl_d_wfm_getfontinfo:
    # Line 11542
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a1
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    lui	$a4,0xfff8
    addiu	$a4,$a4,-24312
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    # Line 11547
    li	$v1,216
    # Line 11545
    lui	$a3,0x1
    # Line 11544
    lw	$a2,0($v0)
    # Line 11545
    ori	$a3,$a3,0x1194
    # Line 11550
    la	$t9,gl_comm_read_data
    # Line 11546
    sw	$a0,4($a2)
    # Line 11550
    li	$a0,1
    # Line 11548
    sw	$v1,12($a2)
    # Line 11547
    sw	$v1,8($a2)
    # Line 11545
    sw	$a3,0($a2)
    # Line 11549
    addiu	$at,$a2,16
    # Line 11550
    jalr	$t9
    # Line 11549
    sw	$at,0($v0)
    # Line 11552
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_fmfontinfo_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 11554
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_wfm_getfontinfo

# Function: gl_d_wfm_makefontmat
# Declared: Line 11557 (Source lines: 11566-11578)
# Address: 0x0f0b91d4 - 0x0f0b9260 (Size: 140 bytes, Frame: 192)
.globl gl_d_wfm_makefontmat
.ent gl_d_wfm_makefontmat
gl_d_wfm_makefontmat:
    # Line 11566
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 11575
    li	$a0,1
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 11566
    lui	$a3,0xfff8
    addiu	$a3,$a3,-24460
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    # Line 11570
    li	$a1,16
    # Line 11569
    lui	$a2,0x1
    # Line 11568
    lw	$v1,0($v0)
    # Line 11569
    ori	$a2,$a2,0x1195
    # Line 11575
    la	$t9,gl_comm_read_data
    # Line 11573
    swc1	$f14,16($v1)
    # Line 11572
    swc1	$f13,12($v1)
    # Line 11571
    sw	$a1,8($v1)
    # Line 11570
    sw	$a1,4($v1)
    # Line 11569
    sw	$a2,0($v1)
    # Line 11574
    addiu	$at,$v1,20
    # Line 11575
    jalr	$t9
    # Line 11574
    sw	$at,0($v0)
    # Line 11577
    la	$a1,comm_buffer
    move	$a0,$s8
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    la	$a2,gl_mem_ntoh_float_array
    jalr	$t9
    addiu	$a1,$a1,4
    # Line 11578
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_d_wfm_makefontmat

# Function: gl_d_wfm_fontunits
# Declared: Line 11580 (Source lines: 11587-11594)
# Address: 0x0f0b9260 - 0x0f0b92c8 (Size: 104 bytes, Frame: 32)
.globl gl_d_wfm_fontunits
.ent gl_d_wfm_fontunits
gl_d_wfm_fontunits:
    # Line 11587
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-24600
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 11590
    lui	$a0,0x1
    # Line 11589
    lw	$v0,0($v1)
    # Line 11590
    ori	$a0,$a0,0x1196
    # Line 11592
    la	$at,comm_endbuffer
    # Line 11591
    swc1	$f12,4($v0)
    # Line 11590
    sw	$a0,0($v0)
    # Line 11592
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b92b0
    sw	$v0,0($v1)
.L0f0b92a4:
    ld	$gp,0($sp)
    # Line 11594
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b92b0:
    # Line 11593
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b92a4
    ld	$ra,8($sp)
.end gl_d_wfm_fontunits

# Function: gl_d_wfm_setfontpath
# Declared: Line 11596 (Source lines: 11603-11618)
# Address: 0x0f0b92c8 - 0x0f0b93e4 (Size: 284 bytes, Frame: 48)
.globl gl_d_wfm_setfontpath
.ent gl_d_wfm_setfontpath
gl_d_wfm_setfontpath:
    # Line 11603
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-24704 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,16($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b93b4
    move	$s1,$a0
.L0f0b9304:
    sd	$s0,24($sp)
    # Line 11607
    move	$s0,$v0
    # Line 11609
    move	$a0,$s1
    la	$t9,strlen
    # Line 11608
    lui	$a1,0x1
    ori	$a1,$a1,0x1197
    # Line 11609
    jalr	$t9
    # Line 11608
    sw	$a1,0($v0)
    ld	$ra,16($sp)
    # Line 11610
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0b938c
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 11612
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0b9348:
    # Line 11616
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    la	$a4,comm_curbufpos
    lw	$v1,0($v1)
    lw	$at,0($at)
    la	$a3,comm_endbuffer
    # Line 11615
    sw	$s0,0($a4)
    # Line 11616
    addu	$at,$at,$v1
    addiu	$v1,$at,-24
    sw	$v1,0($a3)
    addiu	$at,$at,-24
    sltu	$at,$at,$s0
    bnez	$at,.L0f0b93d0
    ld	$s0,24($sp)
.L0f0b9380:
    ld	$gp,8($sp)
    # Line 11618
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b938c:
    # Line 11614
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    ld	$ra,16($sp)
    b	.L0f0b9348
    ld	$s1,0($sp)
.L0f0b93b4:
    # Line 11607
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,24($sp)
    b	.L0f0b9304
    lw	$v0,0($v0)
.L0f0b93d0:
    # Line 11617
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s0,24($sp)
    b	.L0f0b9380
    ld	$ra,16($sp)
.end gl_d_wfm_setfontpath

# Function: gl_d_wfm_fontpath
# Declared: Line 11620 (Source lines: 11628-11639)
# Address: 0x0f0b93e4 - 0x0f0b946c (Size: 136 bytes, Frame: 48)
.globl gl_d_wfm_fontpath
.ent gl_d_wfm_fontpath
gl_d_wfm_fontpath:
    # Line 11628
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 11636
    li	$a0,1
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 11628
    lui	$a4,0xfff8
    addiu	$a4,$a4,-24988
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    # Line 11632
    li	$a2,-1
    # Line 11631
    lui	$a3,0x1
    # Line 11630
    lw	$v1,0($v0)
    # Line 11631
    ori	$a3,$a3,0x1198
    # Line 11636
    la	$t9,gl_comm_read_data
    # Line 11634
    sw	$a1,12($v1)
    # Line 11633
    sw	$a1,8($v1)
    # Line 11632
    sw	$a2,4($v1)
    # Line 11631
    sw	$a3,0($v1)
    # Line 11635
    addiu	$at,$v1,16
    # Line 11636
    jalr	$t9
    # Line 11635
    sw	$at,0($v0)
    # Line 11638
    la	$a1,comm_buffer
    move	$a0,$s8
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    la	$a2,gl_mem_copy_array
    jalr	$t9
    addiu	$a1,$a1,4
    # Line 11639
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_wfm_fontpath

# Function: gl_d_wfm_enumerate
# Declared: Line 11641 (Source lines: 11648-11656)
# Address: 0x0f0b946c - 0x0f0b94e8 (Size: 124 bytes, Frame: 48)
.globl gl_d_wfm_enumerate
.ent gl_d_wfm_enumerate
gl_d_wfm_enumerate:
    # Line 11648
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-25124
    addu	$gp,$t9,$a1
    la	$at,comm_curbufpos
    sd	$s8,8($sp)
    # Line 11651
    lui	$v1,0x1
    # Line 11650
    lw	$v0,0($at)
    # Line 11651
    ori	$v1,$v1,0x1199
    # Line 11654
    la	$t9,gl_comm_callback
    # Line 11652
    sw	$a0,4($v0)
    # Line 11651
    sw	$v1,0($v0)
    # Line 11653
    addiu	$s8,$v0,8
    # Line 11654
    jalr	$t9
    # Line 11653
    sw	$s8,0($at)
    # Line 11654
    la	$at,comm_endbuffer
    lw	$at,0($at)
    ld	$ra,0($sp)
    sltu	$at,$at,$s8
    bnez	$at,.L0f0b94d4
    ld	$s8,8($sp)
.L0f0b94c8:
    ld	$gp,16($sp)
    # Line 11656
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b94d4:
    # Line 11655
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s8,8($sp)
    b	.L0f0b94c8
    ld	$ra,0($sp)
.end gl_d_wfm_enumerate

# Function: gl_d_wfm_sizeenumerate
# Declared: Line 11658 (Source lines: 11666-11683)
# Address: 0x0f0b94e8 - 0x0f0b9628 (Size: 320 bytes, Frame: 192)
.globl gl_d_wfm_sizeenumerate
.ent gl_d_wfm_sizeenumerate
gl_d_wfm_sizeenumerate:
    # Line 11666
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$s2,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-25248 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s2,$a1
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s0,0($sp)
    addiu	$v1,$v0,88
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b95f8
    move	$s0,$a0
.L0f0b952c:
    sd	$s1,32($sp)
    # Line 11670
    move	$s1,$v0
    # Line 11672
    move	$a0,$s0
    la	$t9,strlen
    # Line 11671
    lui	$a1,0x1
    ori	$a1,$a1,0x119a
    # Line 11672
    jalr	$t9
    # Line 11671
    sw	$a1,0($v0)
    # Line 11673
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0b95d4
    sw	$a2,4($s1)
    ld	$s0,0($sp)
    # Line 11675
    addu	$s1,$a2,$s1
    addiu	$s1,$s1,8
.L0f0b956c:
    # Line 11679
    addiu	$v0,$s1,4
    sd	$v0,16($sp)
    # Line 11678
    sw	$s2,0($s1)
    # Line 11680
    la	$at,comm_buffer
    la	$t8,comm_stdsize
    la	$v1,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 11681
    la	$t9,gl_comm_callback
    la	$ra,comm_endbuffer
    # Line 11680
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 11681
    jalr	$t9
    # Line 11679
    sw	$v0,0($v1)
    la	$at,comm_endbuffer
    # Line 11681
    ld	$v1,16($sp)
    lw	$at,0($at)
    ld	$s2,8($sp)
    ld	$ra,40($sp)
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b9614
    ld	$s1,32($sp)
.L0f0b95c8:
    ld	$gp,24($sp)
    # Line 11683
    jr	$ra
    addiu	$sp,$sp,64
.L0f0b95d4:
    # Line 11677
    li	$a4,88
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s1,8
    move	$s1,$v0
    b	.L0f0b956c
    ld	$s0,0($sp)
.L0f0b95f8:
    # Line 11670
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s1,32($sp)
    b	.L0f0b952c
    lw	$v0,0($v0)
.L0f0b9614:
    # Line 11682
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0b95c8
    ld	$ra,40($sp)
.end gl_d_wfm_sizeenumerate

# Function: gl_d_wfm_getcharmetrics_int
# Declared: Line 11685 (Source lines: 11694-11707)
# Address: 0x0f0b9628 - 0x0f0b96c0 (Size: 152 bytes, Frame: 192)
.globl gl_d_wfm_getcharmetrics_int
.ent gl_d_wfm_getcharmetrics_int
gl_d_wfm_getcharmetrics_int:
    # Line 11694
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    # Line 11697
    lui	$a3,0x1
    ori	$a3,$a3,0x119b
    sd	$gp,16($sp)
    # Line 11694
    lui	$a4,0xfff8
    addiu	$a4,$a4,-25568
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$s3,8($sp)
    move	$s3,$a1
    # Line 11696
    lw	$v1,0($v0)
    # Line 11699
    sll	$a1,$a2,0x5
    # Line 11703
    la	$t9,gl_comm_read_data
    # Line 11698
    sw	$a0,4($v1)
    # Line 11703
    li	$a0,1
    # Line 11701
    sw	$a2,16($v1)
    # Line 11700
    sw	$a1,12($v1)
    # Line 11699
    sw	$a1,8($v1)
    # Line 11697
    sw	$a3,0($v1)
    # Line 11702
    addiu	$at,$v1,20
    # Line 11703
    jalr	$t9
    # Line 11702
    sw	$at,0($v0)
    # Line 11705
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_fmglyphinfo_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 11707
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_d_wfm_getcharmetrics_int

# Function: gl_d_wfm_init
# Declared: Line 11710 (Source lines: 11716-11722)
# Address: 0x0f0b96c0 - 0x0f0b9724 (Size: 100 bytes, Frame: 16)
.globl gl_d_wfm_init
.ent gl_d_wfm_init
gl_d_wfm_init:
    # Line 11716
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-25720
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 11719
    lui	$a0,0x1
    # Line 11718
    lw	$v0,0($v1)
    # Line 11719
    ori	$a0,$a0,0x119c
    # Line 11720
    la	$at,comm_endbuffer
    # Line 11719
    sw	$a0,0($v0)
    # Line 11720
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b970c
    sw	$v0,0($v1)
.L0f0b9700:
    ld	$gp,0($sp)
    # Line 11722
    jr	$ra
    addiu	$sp,$sp,16
.L0f0b970c:
    # Line 11721
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9700
    ld	$ra,8($sp)
.end gl_d_wfm_init

# Function: gl_d_wfm_cmov
# Declared: Line 11724 (Source lines: 11733-11742)
# Address: 0x0f0b9724 - 0x0f0b9794 (Size: 112 bytes, Frame: 48)
.globl gl_d_wfm_cmov
.ent gl_d_wfm_cmov
gl_d_wfm_cmov:
    # Line 11733
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-25820
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 11736
    lui	$a0,0x1
    # Line 11735
    lw	$v0,0($v1)
    # Line 11736
    ori	$a0,$a0,0x119d
    # Line 11740
    la	$at,comm_endbuffer
    # Line 11739
    swc1	$f14,12($v0)
    # Line 11738
    swc1	$f13,8($v0)
    # Line 11737
    swc1	$f12,4($v0)
    # Line 11736
    sw	$a0,0($v0)
    # Line 11740
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b977c
    sw	$v0,0($v1)
.L0f0b9770:
    ld	$gp,0($sp)
    # Line 11742
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b977c:
    # Line 11741
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9770
    ld	$ra,8($sp)
.end gl_d_wfm_cmov

# Function: gl_d_wfm_cmov2
# Declared: Line 11744 (Source lines: 11752-11760)
# Address: 0x0f0b9794 - 0x0f0b9800 (Size: 108 bytes, Frame: 32)
.globl gl_d_wfm_cmov2
.ent gl_d_wfm_cmov2
gl_d_wfm_cmov2:
    # Line 11752
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-25932
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 11755
    lui	$a0,0x1
    # Line 11754
    lw	$v0,0($v1)
    # Line 11755
    ori	$a0,$a0,0x119e
    # Line 11758
    la	$at,comm_endbuffer
    # Line 11757
    swc1	$f13,8($v0)
    # Line 11756
    swc1	$f12,4($v0)
    # Line 11755
    sw	$a0,0($v0)
    # Line 11758
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b97e8
    sw	$v0,0($v1)
.L0f0b97dc:
    ld	$gp,0($sp)
    # Line 11760
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b97e8:
    # Line 11759
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b97dc
    ld	$ra,8($sp)
.end gl_d_wfm_cmov2

# Function: gl_d_wfm_cmov2i
# Declared: Line 11762 (Source lines: 11770-11778)
# Address: 0x0f0b9800 - 0x0f0b986c (Size: 108 bytes, Frame: 32)
.globl gl_d_wfm_cmov2i
.ent gl_d_wfm_cmov2i
gl_d_wfm_cmov2i:
    # Line 11770
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-26040 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11773
    lui	$a2,0x1
    # Line 11772
    lw	$v0,0($v1)
    # Line 11773
    ori	$a2,$a2,0x119f
    # Line 11776
    la	$at,comm_endbuffer
    # Line 11775
    sw	$a1,8($v0)
    # Line 11774
    sw	$a0,4($v0)
    # Line 11773
    sw	$a2,0($v0)
    # Line 11776
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b9854
    sw	$v0,0($v1)
.L0f0b9848:
    ld	$gp,0($sp)
    # Line 11778
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b9854:
    # Line 11777
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9848
    ld	$ra,8($sp)
.end gl_d_wfm_cmov2i

# Function: gl_d_wfm_cmovi
# Declared: Line 11780 (Source lines: 11789-11798)
# Address: 0x0f0b986c - 0x0f0b98dc (Size: 112 bytes, Frame: 48)
.globl gl_d_wfm_cmovi
.ent gl_d_wfm_cmovi
gl_d_wfm_cmovi:
    # Line 11789
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-26148 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11792
    lui	$a3,0x1
    # Line 11791
    lw	$v0,0($v1)
    # Line 11792
    ori	$a3,$a3,0x11a0
    # Line 11796
    la	$at,comm_endbuffer
    # Line 11795
    sw	$a2,12($v0)
    # Line 11794
    sw	$a1,8($v0)
    # Line 11793
    sw	$a0,4($v0)
    # Line 11792
    sw	$a3,0($v0)
    # Line 11796
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b98c4
    sw	$v0,0($v1)
.L0f0b98b8:
    ld	$gp,0($sp)
    # Line 11798
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b98c4:
    # Line 11797
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b98b8
    ld	$ra,8($sp)
.end gl_d_wfm_cmovi

# Function: gl_d_wfm_cmovs
# Declared: Line 11800 (Source lines: 11809-11818)
# Address: 0x0f0b98dc - 0x0f0b9964 (Size: 136 bytes, Frame: 48)
.globl gl_d_wfm_cmovs
.ent gl_d_wfm_cmovs
gl_d_wfm_cmovs:
    # Line 11809
    dsll32	$a3,$a0,0x10
    dsll32	$a0,$a2,0x10
    dsll32	$a1,$a1,0x10
    dsra32	$a3,$a3,0x10
    dsra32	$a1,$a1,0x10
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-26260 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a0,$a0,0x10
    # Line 11812
    lui	$t9,0x1
    # Line 11811
    lw	$v0,0($v1)
    # Line 11816
    la	$at,comm_endbuffer
    # Line 11812
    ori	$t9,$t9,0x11a1
    # Line 11815
    sh	$a0,8($v0)
    # Line 11814
    sh	$a1,6($v0)
    # Line 11813
    sh	$a3,4($v0)
    # Line 11812
    sw	$t9,0($v0)
    # Line 11816
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b994c
    sw	$v0,0($v1)
.L0f0b9940:
    ld	$gp,0($sp)
    # Line 11818
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b994c:
    # Line 11817
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9940
    ld	$ra,8($sp)
.end gl_d_wfm_cmovs

# Function: gl_d_wfm_cmov2s
# Declared: Line 11820 (Source lines: 11828-11836)
# Address: 0x0f0b9964 - 0x0f0b99e0 (Size: 124 bytes, Frame: 32)
.globl gl_d_wfm_cmov2s
.ent gl_d_wfm_cmov2s
gl_d_wfm_cmov2s:
    # Line 11828
    dsll32	$a2,$a0,0x10
    dsll32	$a0,$a1,0x10
    dsra32	$a2,$a2,0x10
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-26396 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    dsra32	$a0,$a0,0x10
    # Line 11831
    lui	$t9,0x1
    # Line 11830
    lw	$v0,0($v1)
    # Line 11834
    la	$at,comm_endbuffer
    # Line 11831
    ori	$t9,$t9,0x11a2
    # Line 11833
    sh	$a0,6($v0)
    # Line 11832
    sh	$a2,4($v0)
    # Line 11831
    sw	$t9,0($v0)
    # Line 11834
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b99c8
    sw	$v0,0($v1)
.L0f0b99bc:
    ld	$gp,0($sp)
    # Line 11836
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b99c8:
    # Line 11835
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b99bc
    ld	$ra,8($sp)
.end gl_d_wfm_cmov2s

# Function: gl_d_wfm_charstr
# Declared: Line 11838 (Source lines: 11845-11860)
# Address: 0x0f0b99e0 - 0x0f0b9afc (Size: 284 bytes, Frame: 48)
.globl gl_d_wfm_charstr
.ent gl_d_wfm_charstr
gl_d_wfm_charstr:
    # Line 11845
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-26520 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,16($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b9acc
    move	$s1,$a0
.L0f0b9a1c:
    sd	$s0,24($sp)
    # Line 11849
    move	$s0,$v0
    # Line 11851
    move	$a0,$s1
    la	$t9,strlen
    # Line 11850
    lui	$a1,0x1
    ori	$a1,$a1,0x11a3
    # Line 11851
    jalr	$t9
    # Line 11850
    sw	$a1,0($v0)
    ld	$ra,16($sp)
    # Line 11852
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0b9aa4
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 11854
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0b9a60:
    # Line 11858
    la	$v1,comm_buffer
    la	$at,comm_stdsize
    la	$a4,comm_curbufpos
    lw	$v1,0($v1)
    lw	$at,0($at)
    la	$a3,comm_endbuffer
    # Line 11857
    sw	$s0,0($a4)
    # Line 11858
    addu	$at,$at,$v1
    addiu	$v1,$at,-24
    sw	$v1,0($a3)
    addiu	$at,$at,-24
    sltu	$at,$at,$s0
    bnez	$at,.L0f0b9ae8
    ld	$s0,24($sp)
.L0f0b9a98:
    ld	$gp,8($sp)
    # Line 11860
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b9aa4:
    # Line 11856
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    ld	$ra,16($sp)
    b	.L0f0b9a60
    ld	$s1,0($sp)
.L0f0b9acc:
    # Line 11849
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,24($sp)
    b	.L0f0b9a1c
    lw	$v0,0($v0)
.L0f0b9ae8:
    # Line 11859
    la	$t9,gl_comm_flush
    jalr	$t9
    ld	$s0,24($sp)
    b	.L0f0b9a98
    ld	$ra,16($sp)
.end gl_d_wfm_charstr

# Function: gl_d_wfm_skipspace
# Declared: Line 11862 (Source lines: 11869-11876)
# Address: 0x0f0b9afc - 0x0f0b9b64 (Size: 104 bytes, Frame: 32)
.globl gl_d_wfm_skipspace
.ent gl_d_wfm_skipspace
gl_d_wfm_skipspace:
    # Line 11869
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-26804
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 11872
    lui	$a0,0x1
    # Line 11871
    lw	$v0,0($v1)
    # Line 11872
    ori	$a0,$a0,0x11a4
    # Line 11874
    la	$at,comm_endbuffer
    # Line 11873
    swc1	$f12,4($v0)
    # Line 11872
    sw	$a0,0($v0)
    # Line 11874
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b9b4c
    sw	$v0,0($v1)
.L0f0b9b40:
    ld	$gp,0($sp)
    # Line 11876
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b9b4c:
    # Line 11875
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9b40
    ld	$ra,8($sp)
.end gl_d_wfm_skipspace

# Function: gl_d_wfm_strwidth
# Declared: Line 11878 (Source lines: 11885-11901)
# Address: 0x0f0b9b64 - 0x0f0b9c74 (Size: 272 bytes, Frame: 48)
.globl gl_d_wfm_strwidth
.ent gl_d_wfm_strwidth
gl_d_wfm_strwidth:
    # Line 11885
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-26908 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,24($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0b9c58
    move	$s1,$a0
.L0f0b9ba0:
    sd	$s0,16($sp)
    # Line 11889
    move	$s0,$v0
    # Line 11891
    move	$a0,$s1
    la	$t9,strlen
    # Line 11890
    lui	$a1,0x1
    ori	$a1,$a1,0x11a5
    # Line 11891
    jalr	$t9
    # Line 11890
    sw	$a1,0($v0)
    # Line 11892
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f0b9c34
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 11894
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0b9be0:
    # Line 11899
    li	$a0,1
    # Line 11896
    la	$at,comm_buffer
    # Line 11898
    la	$t8,comm_stdsize
    la	$v0,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 11899
    la	$t9,gl_comm_read_data
    la	$ra,comm_endbuffer
    # Line 11898
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 11899
    jalr	$t9
    # Line 11897
    sw	$s0,0($v0)
    la	$ra,comm_buffer
    # Line 11901
    lw	$ra,0($ra)
    lwc1	$f0,4($ra)
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0b9c34:
    # Line 11896
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    b	.L0f0b9be0
    ld	$s1,0($sp)
.L0f0b9c58:
    # Line 11889
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,16($sp)
    b	.L0f0b9ba0
    lw	$v0,0($v0)
.end gl_d_wfm_strwidth

# Function: gl_d_wfm_freefont
# Declared: Line 11904 (Source lines: 11911-11918)
# Address: 0x0f0b9c74 - 0x0f0b9cdc (Size: 104 bytes, Frame: 32)
.globl gl_d_wfm_freefont
.ent gl_d_wfm_freefont
gl_d_wfm_freefont:
    # Line 11911
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-27180 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11914
    lui	$a1,0x1
    # Line 11913
    lw	$v0,0($v1)
    # Line 11914
    ori	$a1,$a1,0x11a6
    # Line 11916
    la	$at,comm_endbuffer
    # Line 11915
    sw	$a0,4($v0)
    # Line 11914
    sw	$a1,0($v0)
    # Line 11916
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b9cc4
    sw	$v0,0($v1)
.L0f0b9cb8:
    ld	$gp,0($sp)
    # Line 11918
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b9cc4:
    # Line 11917
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9cb8
    ld	$ra,8($sp)
.end gl_d_wfm_freefont

# Function: gl_d_wfm_hint
# Declared: Line 11920 (Source lines: 11928-11936)
# Address: 0x0f0b9cdc - 0x0f0b9d48 (Size: 108 bytes, Frame: 32)
.globl gl_d_wfm_hint
.ent gl_d_wfm_hint
gl_d_wfm_hint:
    # Line 11928
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-27284 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11931
    lui	$a2,0x1
    # Line 11930
    lw	$v0,0($v1)
    # Line 11931
    ori	$a2,$a2,0x11a7
    # Line 11934
    la	$at,comm_endbuffer
    # Line 11933
    sw	$a1,8($v0)
    # Line 11932
    sw	$a0,4($v0)
    # Line 11931
    sw	$a2,0($v0)
    # Line 11934
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b9d30
    sw	$v0,0($v1)
.L0f0b9d24:
    ld	$gp,0($sp)
    # Line 11936
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b9d30:
    # Line 11935
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9d24
    ld	$ra,8($sp)
.end gl_d_wfm_hint

# Function: gl_d_wfm_aacolor
# Declared: Line 11938 (Source lines: 11946-11954)
# Address: 0x0f0b9d48 - 0x0f0b9db4 (Size: 108 bytes, Frame: 32)
.globl gl_d_wfm_aacolor
.ent gl_d_wfm_aacolor
gl_d_wfm_aacolor:
    # Line 11946
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-27392 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11949
    lui	$a2,0x1
    # Line 11948
    lw	$v0,0($v1)
    # Line 11949
    ori	$a2,$a2,0x11a8
    # Line 11952
    la	$at,comm_endbuffer
    # Line 11951
    sw	$a1,8($v0)
    # Line 11950
    sw	$a0,4($v0)
    # Line 11949
    sw	$a2,0($v0)
    # Line 11952
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b9d9c
    sw	$v0,0($v1)
.L0f0b9d90:
    ld	$gp,0($sp)
    # Line 11954
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b9d9c:
    # Line 11953
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9d90
    ld	$ra,8($sp)
.end gl_d_wfm_aacolor

# Function: gl_d_wfm_aacpack
# Declared: Line 11956 (Source lines: 11964-11972)
# Address: 0x0f0b9db4 - 0x0f0b9e20 (Size: 108 bytes, Frame: 32)
.globl gl_d_wfm_aacpack
.ent gl_d_wfm_aacpack
gl_d_wfm_aacpack:
    # Line 11964
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-27500 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11967
    lui	$a2,0x1
    # Line 11966
    lw	$v0,0($v1)
    # Line 11967
    ori	$a2,$a2,0x11a9
    # Line 11970
    la	$at,comm_endbuffer
    # Line 11969
    sw	$a1,8($v0)
    # Line 11968
    sw	$a0,4($v0)
    # Line 11967
    sw	$a2,0($v0)
    # Line 11970
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b9e08
    sw	$v0,0($v1)
.L0f0b9dfc:
    ld	$gp,0($sp)
    # Line 11972
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b9e08:
    # Line 11971
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9dfc
    ld	$ra,8($sp)
.end gl_d_wfm_aacpack

# Function: gl_d_wfm_cpack
# Declared: Line 11974 (Source lines: 11981-11988)
# Address: 0x0f0b9e20 - 0x0f0b9e88 (Size: 104 bytes, Frame: 32)
.globl gl_d_wfm_cpack
.ent gl_d_wfm_cpack
gl_d_wfm_cpack:
    # Line 11981
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-27608 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 11984
    lui	$a1,0x1
    # Line 11983
    lw	$v0,0($v1)
    # Line 11984
    ori	$a1,$a1,0x11aa
    # Line 11986
    la	$at,comm_endbuffer
    # Line 11985
    sw	$a0,4($v0)
    # Line 11984
    sw	$a1,0($v0)
    # Line 11986
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0b9e70
    sw	$v0,0($v1)
.L0f0b9e64:
    ld	$gp,0($sp)
    # Line 11988
    jr	$ra
    addiu	$sp,$sp,32
.L0f0b9e70:
    # Line 11987
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0b9e64
    ld	$ra,8($sp)
.end gl_d_wfm_cpack

# Function: gl_d_wfm_getcoutline
# Declared: Line 11990 (Source lines: 11999-12012)
# Address: 0x0f0b9e88 - 0x0f0b9f20 (Size: 152 bytes, Frame: 192)
.globl gl_d_wfm_getcoutline
.ent gl_d_wfm_getcoutline
gl_d_wfm_getcoutline:
    # Line 11999
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    # Line 12005
    li	$v1,20
    sd	$s3,8($sp)
    sd	$gp,16($sp)
    # Line 11999
    lui	$a3,0xfff8
    addiu	$a3,$a3,-27712
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    move	$s3,$a2
    # Line 12002
    lui	$a2,0x1
    # Line 12001
    lw	$a1,0($v0)
    # Line 12002
    ori	$a2,$a2,0x11ab
    # Line 12008
    la	$t9,gl_comm_read_data
    # Line 12003
    sw	$a0,4($a1)
    # Line 12008
    li	$a0,1
    # Line 12006
    sw	$v1,16($a1)
    # Line 12005
    sw	$v1,12($a1)
    # Line 12004
    swc1	$f13,8($a1)
    # Line 12002
    sw	$a2,0($a1)
    # Line 12007
    addiu	$at,$a1,20
    # Line 12008
    jalr	$t9
    # Line 12007
    sw	$at,0($v0)
    # Line 12010
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_wfmoutline_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 12012
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_d_wfm_getcoutline

# Function: gl_d_wfm_getcbbox
# Declared: Line 12015 (Source lines: 12026-12041)
# Address: 0x0f0b9f20 - 0x0f0b9fcc (Size: 172 bytes, Frame: 224)
.globl gl_d_wfm_getcbbox
.ent gl_d_wfm_getcbbox
gl_d_wfm_getcbbox:
    # Line 12026
    addiu	$sp,$sp,-96
    sd	$a3,32($sp)
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    sd	$a4,24($sp)
    lui	$a4,0xfff8
    addiu	$a4,$a4,-27864
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    # Line 12029
    lui	$v1,0x1
    sd	$a2,40($sp)
    # Line 12028
    lw	$a2,0($v0)
    # Line 12029
    ori	$v1,$v1,0x11ad
    # Line 12036
    la	$t9,gl_comm_read_data
    # Line 12030
    sw	$a0,4($a2)
    # Line 12036
    li	$a0,1
    # Line 12029
    sw	$v1,0($a2)
    # Line 12035
    addiu	$at,$a2,8
    # Line 12036
    jalr	$t9
    # Line 12035
    sw	$at,0($v0)
    # Line 12037
    la	$ra,comm_buffer
    lw	$a1,0($ra)
    lwc1	$f3,4($a1)
    swc1	$f3,0($s8)
    # Line 12038
    lw	$a0,0($ra)
    ld	$v1,40($sp)
    lwc1	$f2,8($a0)
    swc1	$f2,0($v1)
    # Line 12039
    lw	$v0,0($ra)
    ld	$at,32($sp)
    lwc1	$f1,12($v0)
    swc1	$f1,0($at)
    # Line 12040
    lw	$ra,0($ra)
    ld	$s8,24($sp)
    lwc1	$f0,16($ra)
    ld	$gp,16($sp)
    # Line 12041
    ld	$ra,0($sp)
    # Line 12040
    swc1	$f0,0($s8)
    # Line 12041
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_d_wfm_getcbbox

# Function: gl_d_wfm_outchar
# Declared: Line 12043 (Source lines: 12050-12058)
# Address: 0x0f0b9fcc - 0x0f0ba02c (Size: 96 bytes, Frame: 32)
.globl gl_d_wfm_outchar
.ent gl_d_wfm_outchar
gl_d_wfm_outchar:
    # Line 12050
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-28036
    addu	$gp,$t9,$a1
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 12053
    lui	$v1,0x1
    # Line 12052
    lw	$a1,0($v0)
    # Line 12053
    ori	$v1,$v1,0x11ae
    # Line 12056
    la	$t9,gl_comm_read_data
    # Line 12054
    sw	$a0,4($a1)
    # Line 12056
    li	$a0,1
    # Line 12053
    sw	$v1,0($a1)
    # Line 12055
    addiu	$at,$a1,8
    # Line 12056
    jalr	$t9
    # Line 12055
    sw	$at,0($v0)
    # Line 12057
    la	$v0,comm_buffer
    # Line 12058
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_wfm_outchar

# Function: gl_d_wfm_pos
# Declared: Line 12061 (Source lines: 12069-12077)
# Address: 0x0f0ba02c - 0x0f0ba098 (Size: 108 bytes, Frame: 32)
.globl gl_d_wfm_pos
.ent gl_d_wfm_pos
gl_d_wfm_pos:
    # Line 12069
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-28132
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 12072
    lui	$a0,0x1
    # Line 12071
    lw	$v0,0($v1)
    # Line 12072
    ori	$a0,$a0,0x11af
    # Line 12075
    la	$at,comm_endbuffer
    # Line 12074
    swc1	$f13,8($v0)
    # Line 12073
    swc1	$f12,4($v0)
    # Line 12072
    sw	$a0,0($v0)
    # Line 12075
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ba080
    sw	$v0,0($v1)
.L0f0ba074:
    ld	$gp,0($sp)
    # Line 12077
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ba080:
    # Line 12076
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ba074
    ld	$ra,8($sp)
.end gl_d_wfm_pos

# Function: gl_d_wfm_rpos
# Declared: Line 12079 (Source lines: 12087-12095)
# Address: 0x0f0ba098 - 0x0f0ba104 (Size: 108 bytes, Frame: 32)
.globl gl_d_wfm_rpos
.ent gl_d_wfm_rpos
gl_d_wfm_rpos:
    # Line 12087
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-28240
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 12090
    lui	$a0,0x1
    # Line 12089
    lw	$v0,0($v1)
    # Line 12090
    ori	$a0,$a0,0x11b0
    # Line 12093
    la	$at,comm_endbuffer
    # Line 12092
    swc1	$f13,8($v0)
    # Line 12091
    swc1	$f12,4($v0)
    # Line 12090
    sw	$a0,0($v0)
    # Line 12093
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ba0ec
    sw	$v0,0($v1)
.L0f0ba0e0:
    ld	$gp,0($sp)
    # Line 12095
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ba0ec:
    # Line 12094
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ba0e0
    ld	$ra,8($sp)
.end gl_d_wfm_rpos

# Function: gl_d_wfm_color
# Declared: Line 12097 (Source lines: 12104-12111)
# Address: 0x0f0ba104 - 0x0f0ba16c (Size: 104 bytes, Frame: 32)
.globl gl_d_wfm_color
.ent gl_d_wfm_color
gl_d_wfm_color:
    # Line 12104
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-28348 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 12107
    lui	$a1,0x1
    # Line 12106
    lw	$v0,0($v1)
    # Line 12107
    ori	$a1,$a1,0x11b1
    # Line 12109
    la	$at,comm_endbuffer
    # Line 12108
    sw	$a0,4($v0)
    # Line 12107
    sw	$a1,0($v0)
    # Line 12109
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ba154
    sw	$v0,0($v1)
.L0f0ba148:
    ld	$gp,0($sp)
    # Line 12111
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ba154:
    # Line 12110
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0ba148
    ld	$ra,8($sp)
.end gl_d_wfm_color

# Function: gl_d_wfm_charstrn
# Declared: Line 12113 (Source lines: 12121-12137)
# Address: 0x0f0ba16c - 0x0f0ba2a0 (Size: 308 bytes, Frame: 192)
.globl gl_d_wfm_charstrn
.ent gl_d_wfm_charstrn
gl_d_wfm_charstrn:
    # Line 12121
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    sd	$s2,8($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-28452 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s2,$a1
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s0,0($sp)
    addiu	$v1,$v0,88
    sltu	$at,$at,$v1
    bnez	$at,.L0f0ba26c
    move	$s0,$a0
.L0f0ba1b0:
    sd	$s1,32($sp)
    # Line 12125
    move	$s1,$v0
    # Line 12127
    move	$a0,$s0
    la	$t9,strlen
    # Line 12126
    lui	$a1,0x1
    ori	$a1,$a1,0x11b2
    # Line 12127
    jalr	$t9
    # Line 12126
    sw	$a1,0($v0)
    ld	$ra,24($sp)
    # Line 12128
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s0,.L0f0ba244
    sw	$a2,4($s1)
    ld	$s0,0($sp)
    # Line 12130
    addu	$s1,$a2,$s1
    addiu	$s1,$s1,8
.L0f0ba1f4:
    # Line 12133
    sw	$s2,0($s1)
    # Line 12135
    la	$a4,comm_buffer
    la	$a3,comm_stdsize
    lw	$a4,0($a4)
    lw	$a3,0($a3)
    la	$v1,comm_endbuffer
    la	$s2,comm_curbufpos
    addu	$a3,$a3,$a4
    # Line 12134
    addiu	$a4,$s1,4
    ld	$s1,32($sp)
    sw	$a4,0($s2)
    ld	$s2,8($sp)
    # Line 12135
    addiu	$at,$a3,-24
    addiu	$a3,$a3,-24
    sltu	$a3,$a3,$a4
    bnez	$a3,.L0f0ba288
    sw	$at,0($v1)
.L0f0ba238:
    ld	$gp,16($sp)
    # Line 12137
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ba244:
    # Line 12132
    li	$a4,88
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s1,8
    move	$s1,$v0
    ld	$ra,24($sp)
    b	.L0f0ba1f4
    ld	$s0,0($sp)
.L0f0ba26c:
    # Line 12125
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s1,32($sp)
    b	.L0f0ba1b0
    lw	$v0,0($v0)
.L0f0ba288:
    # Line 12136
    la	$t9,gl_comm_flush
    ld	$s2,8($sp)
    jalr	$t9
    ld	$s1,32($sp)
    b	.L0f0ba238
    ld	$ra,24($sp)
.end gl_d_wfm_charstrn

# Function: gl_d_wfm_charstrl
# Declared: Line 12139 (Source lines: 12148-12165)
# Address: 0x0f0ba2a0 - 0x0f0ba3dc (Size: 316 bytes, Frame: 208)
.globl gl_d_wfm_charstrl
.ent gl_d_wfm_charstrl
gl_d_wfm_charstrl:
    # Line 12148
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    move	$s1,$a2
    sd	$s0,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-28760 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,0($sp)
    addiu	$v0,$a7,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ba39c
    move	$s2,$a0
.L0f0ba2e8:
    # Line 12155
    mult	$s0,$s1
    # Line 12152
    move	$v0,$a7
    # Line 12155
    li	$a3,-4
    mflo	$a2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    sw	$a2,4($a7)
    # Line 12153
    lui	$a3,0x1
    ori	$a3,$a3,0x11b3
    # Line 12155
    bnez	$s2,.L0f0ba36c
    # Line 12153
    sw	$a3,0($a7)
    ld	$s2,0($sp)
    # Line 12157
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0ba320:
    # Line 12161
    sw	$s1,4($v0)
    ld	$s1,16($sp)
    # Line 12160
    sw	$s0,0($v0)
    # Line 12163
    la	$a3,comm_buffer
    la	$v1,comm_stdsize
    ld	$s0,8($sp)
    lw	$a3,0($a3)
    lw	$v1,0($v1)
    # Line 12162
    addiu	$a4,$v0,8
    sw	$a4,0($a5)
    # Line 12163
    addu	$v1,$v1,$a3
    addiu	$a3,$v1,-24
    addiu	$v1,$v1,-24
    sltu	$v1,$v1,$a4
    bnez	$v1,.L0f0ba3c0
    sw	$a3,0($a6)
.L0f0ba360:
    ld	$gp,24($sp)
    # Line 12165
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ba36c:
    # Line 12159
    li	$a4,92
    la	$a3,gl_mem_copy_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s2
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    ld	$s2,0($sp)
    b	.L0f0ba320
    ld	$ra,32($sp)
.L0f0ba39c:
    # Line 12152
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ba2e8
    lw	$a7,0($a5)
.L0f0ba3c0:
    # Line 12164
    la	$t9,gl_comm_flush
    ld	$s1,16($sp)
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s0,8($sp)
    b	.L0f0ba360
    ld	$ra,32($sp)
.end gl_d_wfm_charstrl

# Function: gl_d_wfm_strnwidth
# Declared: Line 12167 (Source lines: 12176-12194)
# Address: 0x0f0ba3dc - 0x0f0ba50c (Size: 304 bytes, Frame: 208)
.globl gl_d_wfm_strnwidth
.ent gl_d_wfm_strnwidth
gl_d_wfm_strnwidth:
    # Line 12176
    addiu	$sp,$sp,-80
    sd	$s2,16($sp)
    move	$s2,$a2
    sd	$s0,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-29076 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a1
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s3,0($sp)
    addiu	$v0,$a7,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ba4e8
    move	$s3,$a0
.L0f0ba424:
    # Line 12183
    mult	$s0,$s2
    # Line 12180
    move	$v0,$a7
    # Line 12183
    li	$a3,-4
    mflo	$a2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    sw	$a2,4($a7)
    # Line 12181
    lui	$a3,0x1
    ori	$a3,$a3,0x11b4
    # Line 12183
    bnez	$s3,.L0f0ba4bc
    # Line 12181
    sw	$a3,0($a7)
    sd	$ra,32($sp)
    ld	$s3,0($sp)
    # Line 12185
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0ba460:
    # Line 12192
    li	$a0,1
    # Line 12189
    sw	$s2,4($v0)
    # Line 12188
    sw	$s0,0($v0)
    # Line 12187
    la	$a1,comm_buffer
    # Line 12191
    la	$v1,comm_stdsize
    # Line 12190
    addiu	$a2,$v0,8
    # Line 12191
    lw	$a1,0($a1)
    lw	$v1,0($v1)
    # Line 12190
    sw	$a2,0($a5)
    # Line 12192
    la	$t9,gl_comm_read_data
    # Line 12191
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 12192
    jalr	$t9
    # Line 12191
    sw	$v1,0($a6)
    la	$a3,comm_buffer
    ld	$gp,24($sp)
    # Line 12194
    ld	$s0,8($sp)
    lw	$a3,0($a3)
    ld	$ra,32($sp)
    ld	$s2,16($sp)
    lwc1	$f0,4($a3)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0ba4bc:
    # Line 12187
    li	$a4,92
    la	$a3,gl_mem_copy_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s3
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    b	.L0f0ba460
    ld	$s3,0($sp)
.L0f0ba4e8:
    # Line 12180
    la	$t9,gl_comm_flush
    sd	$ra,32($sp)
    jalr	$t9
    nop
    la	$a6,comm_endbuffer
    la	$a5,comm_curbufpos
    ld	$ra,32($sp)
    b	.L0f0ba424
    lw	$a7,0($a5)
.end gl_d_wfm_strnwidth

# Function: gl_d_wfm_strbounds
# Declared: Line 12197 (Source lines: 12208-12231)
# Address: 0x0f0ba50c - 0x0f0ba664 (Size: 344 bytes, Frame: 240)
.globl gl_d_wfm_strbounds
.ent gl_d_wfm_strbounds
gl_d_wfm_strbounds:
    # Line 12208
    addiu	$sp,$sp,-112
    sd	$ra,56($sp)
    sd	$a4,8($sp)
    sd	$a3,16($sp)
    sd	$a2,24($sp)
    sd	$gp,40($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-29380 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$a1,32($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s0,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f0ba648
    move	$s0,$a0
.L0f0ba558:
    sd	$s1,48($sp)
    # Line 12212
    move	$s1,$v0
    # Line 12214
    move	$a0,$s0
    la	$t9,strlen
    # Line 12213
    lui	$a1,0x1
    ori	$a1,$a1,0x11b5
    # Line 12214
    jalr	$t9
    # Line 12213
    sw	$a1,0($v0)
    # Line 12215
    li	$a5,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a5
    bnez	$s0,.L0f0ba624
    sw	$a2,4($s1)
    ld	$s0,0($sp)
    # Line 12217
    addu	$s1,$a2,$s1
    addiu	$s1,$s1,8
.L0f0ba598:
    # Line 12226
    li	$a0,1
    # Line 12219
    la	$at,comm_buffer
    # Line 12225
    la	$t8,comm_stdsize
    la	$v0,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 12226
    la	$t9,gl_comm_read_data
    la	$ra,comm_endbuffer
    # Line 12225
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 12226
    jalr	$t9
    # Line 12224
    sw	$s1,0($v0)
    la	$ra,comm_buffer
    # Line 12227
    lw	$v1,0($ra)
    ld	$a5,32($sp)
    lw	$v1,4($v1)
    sw	$v1,0($a5)
    # Line 12228
    lw	$v0,0($ra)
    ld	$v1,24($sp)
    lw	$v0,8($v0)
    sw	$v0,0($v1)
    # Line 12229
    lw	$at,0($ra)
    ld	$v0,16($sp)
    lw	$at,12($at)
    sw	$at,0($v0)
    # Line 12230
    lw	$ra,0($ra)
    ld	$at,8($sp)
    lw	$ra,16($ra)
    sw	$ra,0($at)
    # Line 12231
    ld	$ra,56($sp)
    ld	$gp,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0ba624:
    # Line 12219
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$s1,8
    move	$s1,$v0
    b	.L0f0ba598
    ld	$s0,0($sp)
.L0f0ba648:
    # Line 12212
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s1,48($sp)
    b	.L0f0ba558
    lw	$v0,0($v0)
.end gl_d_wfm_strbounds

# Function: gl_d_wfm_strnbounds
# Declared: Line 12233 (Source lines: 12246-12271)
# Address: 0x0f0ba664 - 0x0f0ba7dc (Size: 376 bytes, Frame: 144)
.globl gl_d_wfm_strnbounds
.ent gl_d_wfm_strnbounds
gl_d_wfm_strnbounds:
    # Line 12246
    addiu	$sp,$sp,-144
    sd	$a6,48($sp)
    sd	$a5,24($sp)
    sd	$a4,32($sp)
    sd	$a3,40($sp)
    sd	$s0,8($sp)
    move	$s0,$a2
    sd	$s1,16($sp)
    sd	$gp,56($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-29724 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$t1,comm_curbufpos
    la	$t3,comm_endbuffer
    move	$s1,$a1
    lw	$t2,0($t1)
    lw	$at,0($t3)
    sd	$s2,0($sp)
    addiu	$v0,$t2,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f0ba7b8
    move	$s2,$a0
.L0f0ba6bc:
    # Line 12253
    mult	$s1,$s0
    # Line 12250
    move	$v0,$t2
    # Line 12253
    li	$a7,-4
    mflo	$a2
    addiu	$a2,$a2,3
    and	$a2,$a2,$a7
    sw	$a2,4($t2)
    # Line 12251
    lui	$a7,0x1
    ori	$a7,$a7,0x11b6
    # Line 12253
    bnez	$s2,.L0f0ba78c
    # Line 12251
    sw	$a7,0($t2)
    sd	$ra,64($sp)
    ld	$s2,0($sp)
    # Line 12255
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0ba6f8:
    # Line 12266
    li	$a0,1
    # Line 12259
    sw	$s0,4($v0)
    # Line 12258
    sw	$s1,0($v0)
    # Line 12257
    la	$a1,comm_buffer
    # Line 12265
    la	$v1,comm_stdsize
    # Line 12264
    addiu	$a2,$v0,8
    # Line 12265
    lw	$a1,0($a1)
    lw	$v1,0($v1)
    # Line 12264
    sw	$a2,0($t1)
    # Line 12266
    la	$t9,gl_comm_read_data
    # Line 12265
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 12266
    jalr	$t9
    # Line 12265
    sw	$v1,0($t3)
    la	$a7,comm_buffer
    # Line 12267
    lw	$s1,0($a7)
    ld	$ra,40($sp)
    lw	$s1,4($s1)
    sw	$s1,0($ra)
    # Line 12268
    lw	$s0,0($a7)
    ld	$s1,32($sp)
    lw	$s0,8($s0)
    sw	$s0,0($s1)
    # Line 12269
    lw	$t0,0($a7)
    ld	$s0,24($sp)
    lw	$t0,12($t0)
    ld	$gp,56($sp)
    # Line 12271
    ld	$ra,64($sp)
    # Line 12269
    sw	$t0,0($s0)
    # Line 12271
    ld	$s1,16($sp)
    # Line 12270
    lw	$a7,0($a7)
    # Line 12271
    ld	$s0,8($sp)
    # Line 12270
    ld	$t0,48($sp)
    lw	$a7,16($a7)
    # Line 12271
    addiu	$sp,$sp,144
    jr	$ra
    # Line 12270
    sw	$a7,0($t0)
.L0f0ba78c:
    # Line 12257
    li	$a4,92
    la	$a3,gl_mem_copy_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s2
    sd	$ra,64($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$t1,comm_curbufpos
    la	$t3,comm_endbuffer
    b	.L0f0ba6f8
    ld	$s2,0($sp)
.L0f0ba7b8:
    # Line 12250
    la	$t9,gl_comm_flush
    sd	$ra,64($sp)
    jalr	$t9
    nop
    la	$t3,comm_endbuffer
    la	$t1,comm_curbufpos
    ld	$ra,64($sp)
    b	.L0f0ba6bc
    lw	$t2,0($t1)
.end gl_d_wfm_strnbounds

# Function: gl_d_dgllogin
# Declared: Line 12273 (Source lines: 12285-12320)
# Address: 0x0f0ba7dc - 0x0f0ba9f8 (Size: 540 bytes, Frame: 128)
.globl gl_d_dgllogin
.ent gl_d_dgllogin
gl_d_dgllogin:
    # Line 12285
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$s5,40($sp)
    move	$s5,$a5
    sd	$s4,32($sp)
    move	$s4,$a4
    sd	$a3,8($sp)
    sd	$s2,16($sp)
    move	$s2,$a2
    sd	$s1,24($sp)
    sd	$gp,48($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-30100 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s1,$a1
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s3,0($sp)
    addiu	$v1,$v0,256
    sltu	$at,$at,$v1
    bnez	$at,.L0f0ba9dc
    move	$s3,$a0
.L0f0ba83c:
    sd	$s0,56($sp)
    # Line 12289
    move	$s0,$v0
    # Line 12291
    move	$a0,$s3
    la	$t9,strlen
    # Line 12290
    lui	$a1,0x1
    ori	$a1,$a1,0x1
    # Line 12291
    jalr	$t9
    # Line 12290
    sw	$a1,0($v0)
    # Line 12292
    addiu	$a6,$v0,4
    li	$a2,-4
    and	$a2,$a2,$a6
    bnez	$s3,.L0f0ba970
    sw	$a2,4($s0)
    ld	$s3,0($sp)
    # Line 12294
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0ba87c:
    # Line 12297
    la	$t9,strlen
    jalr	$t9
    move	$a0,$s1
    # Line 12298
    addiu	$a6,$v0,4
    li	$a2,-4
    and	$a2,$a2,$a6
    bnez	$s1,.L0f0ba994
    sw	$a2,0($s0)
    ld	$s1,24($sp)
    # Line 12300
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,4
.L0f0ba8a8:
    # Line 12303
    la	$t9,strlen
    jalr	$t9
    move	$a0,$s2
    # Line 12304
    addiu	$a6,$v0,4
    li	$a2,-4
    and	$a2,$a2,$a6
    bnez	$s2,.L0f0ba9b8
    sw	$a2,0($s0)
    ld	$s2,16($sp)
    # Line 12306
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,4
.L0f0ba8d4:
    # Line 12315
    li	$a0,1
    # Line 12310
    li	$v0,-1
    sw	$v0,4($s0)
    # Line 12313
    addiu	$v0,$s0,12
    # Line 12309
    ld	$t9,8($sp)
    # Line 12314
    la	$t8,comm_stdsize
    # Line 12308
    la	$at,comm_buffer
    # Line 12311
    sw	$t9,8($s0)
    # Line 12309
    sw	$t9,0($s0)
    la	$v1,comm_curbufpos
    # Line 12314
    lw	$at,0($at)
    lw	$t8,0($t8)
    la	$ra,comm_endbuffer
    # Line 12315
    la	$t9,gl_comm_read_data
    # Line 12314
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 12315
    jalr	$t9
    # Line 12313
    sw	$v0,0($v1)
    la	$a2,gl_mem_copy_array
    la	$a1,comm_buffer
    # Line 12317
    move	$a0,$s4
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    ld	$s0,56($sp)
    jalr	$t9
    addiu	$a1,$a1,12
    la	$v0,comm_buffer
    # Line 12318
    lw	$v1,0($v0)
    lw	$v1,8($v1)
    ld	$gp,48($sp)
    sw	$v1,0($s5)
    # Line 12320
    ld	$s4,32($sp)
    lw	$v0,0($v0)
    ld	$ra,64($sp)
    ld	$s5,40($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0ba970:
    # Line 12296
    li	$a4,256
    la	$t9,gl_mem_pack_array
    move	$a1,$s3
    # Line 12294
    la	$a3,gl_mem_copy_array
    # Line 12296
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    b	.L0f0ba87c
    ld	$s3,0($sp)
.L0f0ba994:
    la	$a3,gl_mem_copy_array
    # Line 12302
    la	$t9,gl_mem_pack_array
    li	$a4,256
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,4
    move	$s0,$v0
    b	.L0f0ba8a8
    ld	$s1,24($sp)
.L0f0ba9b8:
    la	$a3,gl_mem_copy_array
    # Line 12308
    la	$t9,gl_mem_pack_array
    li	$a4,256
    move	$a1,$s2
    jalr	$t9
    addiu	$a0,$s0,4
    move	$s0,$v0
    b	.L0f0ba8d4
    ld	$s2,16($sp)
.L0f0ba9dc:
    # Line 12289
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,56($sp)
    b	.L0f0ba83c
    lw	$v0,0($v0)
.end gl_d_dgllogin

# Function: gl_d_dglcheckxdr
# Declared: Line 12323 (Source lines: 12330-12346)
# Address: 0x0f0ba9f8 - 0x0f0baaf4 (Size: 252 bytes, Frame: 48)
.globl gl_d_dglcheckxdr
.ent gl_d_dglcheckxdr
gl_d_dglcheckxdr:
    # Line 12330
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-30640 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    lw	$a5,0($a1)
    lw	$at,0($a4)
    sd	$s0,0($sp)
    addiu	$v0,$a5,84
    sltu	$at,$at,$v0
    bnez	$at,.L0f0baad0
    move	$s0,$a0
.L0f0baa30:
    # Line 12334
    move	$v0,$a5
    # Line 12337
    li	$a2,1000
    sw	$a2,4($a5)
    # Line 12335
    lui	$a3,0x1
    ori	$a3,$a3,0x2
    # Line 12337
    bnez	$s0,.L0f0baaa0
    # Line 12335
    sw	$a3,0($a5)
    sd	$ra,16($sp)
    # Line 12339
    addiu	$v0,$v0,1008
    ld	$s0,0($sp)
.L0f0baa58:
    # Line 12341
    la	$a6,comm_buffer
    # Line 12343
    la	$a5,comm_stdsize
    # Line 12344
    li	$a0,1
    # Line 12343
    lw	$a6,0($a6)
    lw	$a5,0($a5)
    # Line 12342
    sw	$v0,0($a1)
    # Line 12344
    la	$t9,gl_comm_read_data
    # Line 12343
    addu	$a5,$a5,$a6
    addiu	$a5,$a5,-24
    # Line 12344
    jalr	$t9
    # Line 12343
    sw	$a5,0($a4)
    la	$v0,comm_buffer
    # Line 12346
    lw	$v0,0($v0)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0baaa0:
    # Line 12341
    li	$a4,84
    la	$a3,gl_mem_copy_array
    li	$a2,1000
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a1,comm_curbufpos
    la	$a4,comm_endbuffer
    b	.L0f0baa58
    ld	$s0,0($sp)
.L0f0baad0:
    # Line 12334
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a4,comm_endbuffer
    la	$a1,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0baa30
    lw	$a5,0($a1)
.end gl_d_dglcheckxdr

# Function: gl_d_dglxdrformat
# Declared: Line 12349 (Source lines: 12357-12366)
# Address: 0x0f0baaf4 - 0x0f0bab60 (Size: 108 bytes, Frame: 32)
.globl gl_d_dglxdrformat
.ent gl_d_dglxdrformat
gl_d_dglxdrformat:
    # Line 12357
    andi	$a3,$a0,0xff
    # Line 12364
    li	$a0,1
    # Line 12357
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a5,0xfff8
    addiu	$a5,$a5,-30892
    addu	$gp,$t9,$a5
    la	$v0,comm_curbufpos
    andi	$v1,$a1,0xff
    # Line 12360
    lui	$a4,0x1
    # Line 12359
    lw	$a2,0($v0)
    # Line 12360
    ori	$a4,$a4,0x3
    # Line 12364
    la	$t9,gl_comm_read_data
    # Line 12362
    sb	$v1,5($a2)
    # Line 12361
    sb	$a3,4($a2)
    # Line 12360
    sw	$a4,0($a2)
    # Line 12363
    addiu	$at,$a2,8
    # Line 12364
    jalr	$t9
    # Line 12363
    sw	$at,0($v0)
    # Line 12365
    la	$v0,comm_buffer
    # Line 12366
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_dglxdrformat

# Function: gl_d_dglreturndata
# Declared: Line 12369 (Source lines: 12375-12381)
# Address: 0x0f0bab60 - 0x0f0babc4 (Size: 100 bytes, Frame: 16)
.globl gl_d_dglreturndata
.ent gl_d_dglreturndata
gl_d_dglreturndata:
    # Line 12375
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-31000
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 12378
    lui	$a0,0x1
    # Line 12377
    lw	$v0,0($v1)
    # Line 12378
    ori	$a0,$a0,0x4
    # Line 12379
    la	$at,comm_endbuffer
    # Line 12378
    sw	$a0,0($v0)
    # Line 12379
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0babac
    sw	$v0,0($v1)
.L0f0baba0:
    ld	$gp,0($sp)
    # Line 12381
    jr	$ra
    addiu	$sp,$sp,16
.L0f0babac:
    # Line 12380
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0baba0
    ld	$ra,8($sp)
.end gl_d_dglreturndata

# Function: gl_d_dgladdcallback
# Declared: Line 12383 (Source lines: 12391-12400)
# Address: 0x0f0babc4 - 0x0f0bac28 (Size: 100 bytes, Frame: 32)
.globl gl_d_dgladdcallback
.ent gl_d_dgladdcallback
gl_d_dgladdcallback:
    # Line 12391
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff8
    addiu	$a3,$a3,-31100
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 12394
    lui	$a2,0x1
    # Line 12393
    lw	$v1,0($v0)
    # Line 12394
    ori	$a2,$a2,0x5
    # Line 12398
    la	$t9,gl_comm_read_data
    # Line 12395
    sw	$a0,4($v1)
    # Line 12398
    li	$a0,1
    # Line 12396
    sw	$a1,8($v1)
    # Line 12394
    sw	$a2,0($v1)
    # Line 12397
    addiu	$at,$v1,12
    # Line 12398
    jalr	$t9
    # Line 12397
    sw	$at,0($v0)
    # Line 12399
    la	$v0,comm_buffer
    # Line 12400
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_dgladdcallback

# Function: gl_d_dglexit
# Declared: Line 12403 (Source lines: 12409-12416)
# Address: 0x0f0bac28 - 0x0f0bac84 (Size: 92 bytes, Frame: 16)
.globl gl_d_dglexit
.ent gl_d_dglexit
gl_d_dglexit:
    # Line 12409
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a0,0xfff8
    addiu	$a0,$a0,-31200
    addu	$gp,$t9,$a0
    la	$v0,comm_curbufpos
    # Line 12414
    li	$a0,1
    # Line 12412
    lui	$v1,0x1
    # Line 12411
    lw	$a1,0($v0)
    # Line 12412
    ori	$v1,$v1,0x6
    # Line 12414
    la	$t9,gl_comm_read_data
    # Line 12412
    sw	$v1,0($a1)
    # Line 12413
    addiu	$at,$a1,4
    # Line 12414
    jalr	$t9
    # Line 12413
    sw	$at,0($v0)
    # Line 12415
    la	$v0,comm_buffer
    # Line 12416
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_dglexit

# Function: gl_d_dglversion
# Declared: Line 12419 (Source lines: 12426-12434)
# Address: 0x0f0bac84 - 0x0f0bace4 (Size: 96 bytes, Frame: 32)
.globl gl_d_dglversion
.ent gl_d_dglversion
gl_d_dglversion:
    # Line 12426
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a1,0xfff8
    addiu	$a1,$a1,-31292
    addu	$gp,$t9,$a1
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 12429
    lui	$v1,0x1
    # Line 12428
    lw	$a1,0($v0)
    # Line 12429
    ori	$v1,$v1,0x7
    # Line 12432
    la	$t9,gl_comm_read_data
    # Line 12430
    sw	$a0,4($a1)
    # Line 12432
    li	$a0,1
    # Line 12429
    sw	$v1,0($a1)
    # Line 12431
    addiu	$at,$a1,8
    # Line 12432
    jalr	$t9
    # Line 12431
    sw	$at,0($v0)
    # Line 12433
    la	$v0,comm_buffer
    # Line 12434
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_dglversion

# Function: gl_d_dgltestcallback
# Declared: Line 12437 (Source lines: 12445-12455)
# Address: 0x0f0bace4 - 0x0f0bad50 (Size: 108 bytes, Frame: 32)
.globl gl_d_dgltestcallback
.ent gl_d_dgltestcallback
gl_d_dgltestcallback:
    # Line 12445
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff8
    addiu	$a3,$a3,-31388
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 12448
    lui	$a2,0x1
    # Line 12447
    lw	$v1,0($v0)
    # Line 12448
    ori	$a2,$a2,0x8
    # Line 12452
    la	$t9,gl_comm_callback
    # Line 12450
    sw	$a1,8($v1)
    # Line 12449
    sw	$a0,4($v1)
    # Line 12448
    sw	$a2,0($v1)
    # Line 12451
    addiu	$at,$v1,12
    # Line 12452
    jalr	$t9
    # Line 12451
    sw	$at,0($v0)
    # Line 12453
    la	$t9,gl_comm_read_data
    jalr	$t9
    li	$a0,1
    # Line 12454
    la	$v0,comm_buffer
    # Line 12455
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_dgltestcallback

# Function: gl_d_dgltest
# Declared: Line 12458 (Source lines: 12466-12475)
# Address: 0x0f0bad50 - 0x0f0badb4 (Size: 100 bytes, Frame: 32)
.globl gl_d_dgltest
.ent gl_d_dgltest
gl_d_dgltest:
    # Line 12466
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff8
    addiu	$a3,$a3,-31496
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 12469
    lui	$a2,0x1
    # Line 12468
    lw	$v1,0($v0)
    # Line 12469
    ori	$a2,$a2,0x9
    # Line 12473
    la	$t9,gl_comm_read_data
    # Line 12470
    sw	$a0,4($v1)
    # Line 12473
    li	$a0,1
    # Line 12471
    sw	$a1,8($v1)
    # Line 12469
    sw	$a2,0($v1)
    # Line 12472
    addiu	$at,$v1,12
    # Line 12473
    jalr	$t9
    # Line 12472
    sw	$at,0($v0)
    # Line 12474
    la	$v0,comm_buffer
    # Line 12475
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_dgltest

# Function: gl_d_dglprof
# Declared: Line 12478 (Source lines: 12487-12496)
# Address: 0x0f0badb4 - 0x0f0bae24 (Size: 112 bytes, Frame: 48)
.globl gl_d_dglprof
.ent gl_d_dglprof
gl_d_dglprof:
    # Line 12487
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-31596 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 12490
    lui	$a3,0x1
    # Line 12489
    lw	$v0,0($v1)
    # Line 12490
    ori	$a3,$a3,0xa
    # Line 12494
    la	$at,comm_endbuffer
    # Line 12493
    sw	$a2,12($v0)
    # Line 12492
    sw	$a1,8($v0)
    # Line 12491
    sw	$a0,4($v0)
    # Line 12490
    sw	$a3,0($v0)
    # Line 12494
    lw	$at,0($at)
    addiu	$v0,$v0,16
    sltu	$at,$at,$v0
    bnez	$at,.L0f0bae0c
    sw	$v0,0($v1)
.L0f0bae00:
    ld	$gp,0($sp)
    # Line 12496
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bae0c:
    # Line 12495
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0bae00
    ld	$ra,8($sp)
.end gl_d_dglprof

# Function: gl_d_dglreturncallback
# Declared: Line 12498 (Source lines: 12505-12512)
# Address: 0x0f0bae24 - 0x0f0bae8c (Size: 104 bytes, Frame: 32)
.globl gl_d_dglreturncallback
.ent gl_d_dglreturncallback
gl_d_dglreturncallback:
    # Line 12505
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff8 (gp disp hi)
    # addiu	at,at,-31708 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 12508
    lui	$a1,0x1
    # Line 12507
    lw	$v0,0($v1)
    # Line 12508
    ori	$a1,$a1,0xb
    # Line 12510
    la	$at,comm_endbuffer
    # Line 12509
    sw	$a0,4($v0)
    # Line 12508
    sw	$a1,0($v0)
    # Line 12510
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f0bae74
    sw	$v0,0($v1)
.L0f0bae68:
    ld	$gp,0($sp)
    # Line 12512
    jr	$ra
    addiu	$sp,$sp,32
.L0f0bae74:
    # Line 12511
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0bae68
    ld	$ra,8($sp)
.end gl_d_dglreturncallback

# Function: gl_d_dglendfeedbackf
# Declared: Line 12514 (Source lines: 12521-12532)
# Address: 0x0f0bae8c - 0x0f0baf20 (Size: 148 bytes, Frame: 48)
.globl gl_d_dglendfeedbackf
.ent gl_d_dglendfeedbackf
gl_d_dglendfeedbackf:
    # Line 12521
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a0
    # Line 12528
    li	$a0,1
    sd	$ra,0($sp)
    # Line 12525
    li	$a2,-4
    sd	$gp,16($sp)
    # Line 12521
    lui	$a4,0xfff8
    addiu	$a4,$a4,-31812
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    # Line 12526
    lui	$v1,0x8000
    # Line 12524
    lui	$a3,0x1
    # Line 12523
    lw	$a1,0($v0)
    # Line 12524
    ori	$a3,$a3,0xc
    # Line 12528
    la	$t9,gl_comm_read_data
    # Line 12526
    sw	$v1,8($a1)
    # Line 12525
    sw	$a2,4($a1)
    # Line 12524
    sw	$a3,0($a1)
    # Line 12527
    addiu	$at,$a1,12
    # Line 12528
    jalr	$t9
    # Line 12527
    sw	$at,0($v0)
    # Line 12530
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_float_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 12532
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_dglendfeedbackf

# Function: gl_d_dglfeedbackf
# Declared: Line 12535 (Source lines: 12543-12555)
# Address: 0x0f0baf20 - 0x0f0baff4 (Size: 212 bytes, Frame: 48)
.globl gl_d_dglfeedbackf
.ent gl_d_dglfeedbackf
gl_d_dglfeedbackf:
    # Line 12543
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-31960 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a2,comm_curbufpos
    la	$a3,comm_endbuffer
    # Line 12546
    lw	$a4,0($a2)
    lw	$at,0($a3)
    sd	$s3,0($sp)
    addiu	$v0,$a4,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0bafb8
    # Line 12543
    move	$s3,$a1
.L0f0baf58:
    # Line 12551
    sw	$s3,12($a4)
    # Line 12553
    la	$at,comm_buffer
    la	$a0,comm_stdsize
    # Line 12549
    lui	$v1,0x8000
    sw	$v1,4($a4)
    # Line 12548
    lui	$v0,0x1
    ori	$v0,$v0,0xd
    sw	$v0,0($a4)
    # Line 12550
    sll	$v0,$s3,0x2
    sw	$v0,8($a4)
    # Line 12553
    lw	$a0,0($a0)
    lw	$s3,0($at)
    # Line 12552
    addiu	$at,$a4,16
    sw	$at,0($a2)
    # Line 12553
    addu	$a0,$a0,$s3
    addiu	$s3,$a0,-24
    sw	$s3,0($a3)
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$at
    bnez	$a0,.L0f0bafdc
    ld	$s3,0($sp)
.L0f0bafac:
    ld	$gp,8($sp)
    # Line 12555
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bafb8:
    # Line 12547
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a3,comm_endbuffer
    la	$a2,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0baf58
    lw	$a4,0($a2)
.L0f0bafdc:
    # Line 12554
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    ld	$s3,0($sp)
    b	.L0f0bafac
    ld	$ra,16($sp)
.end gl_d_dglfeedbackf

# Function: gl_d_dglendfeedbacks
# Declared: Line 12557 (Source lines: 12564-12575)
# Address: 0x0f0baff4 - 0x0f0bb088 (Size: 148 bytes, Frame: 48)
.globl gl_d_dglendfeedbacks
.ent gl_d_dglendfeedbacks
gl_d_dglendfeedbacks:
    # Line 12564
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a0
    # Line 12571
    li	$a0,1
    sd	$ra,0($sp)
    # Line 12568
    li	$a2,-2
    sd	$gp,16($sp)
    # Line 12564
    lui	$a4,0xfff8
    addiu	$a4,$a4,-32172
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    # Line 12569
    lui	$v1,0x8000
    # Line 12567
    lui	$a3,0x1
    # Line 12566
    lw	$a1,0($v0)
    # Line 12567
    ori	$a3,$a3,0xe
    # Line 12571
    la	$t9,gl_comm_read_data
    # Line 12569
    sw	$v1,8($a1)
    # Line 12568
    sw	$a2,4($a1)
    # Line 12567
    sw	$a3,0($a1)
    # Line 12570
    addiu	$at,$a1,12
    # Line 12571
    jalr	$t9
    # Line 12570
    sw	$at,0($v0)
    # Line 12573
    la	$a1,comm_buffer
    la	$a2,gl_mem_ntoh_short_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 12575
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$s3,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_dglendfeedbacks

# Function: gl_d_dglfeedbacks
# Declared: Line 12578 (Source lines: 12586-12598)
# Address: 0x0f0bb088 - 0x0f0bb15c (Size: 212 bytes, Frame: 48)
.globl gl_d_dglfeedbacks
.ent gl_d_dglfeedbacks
gl_d_dglfeedbacks:
    # Line 12586
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-32320 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a2,comm_curbufpos
    la	$a3,comm_endbuffer
    # Line 12589
    lw	$a4,0($a2)
    lw	$at,0($a3)
    sd	$s3,0($sp)
    addiu	$v0,$a4,88
    sltu	$at,$at,$v0
    bnez	$at,.L0f0bb120
    # Line 12586
    move	$s3,$a1
.L0f0bb0c0:
    # Line 12594
    sw	$s3,12($a4)
    # Line 12596
    la	$at,comm_buffer
    la	$a0,comm_stdsize
    # Line 12592
    lui	$v1,0x8000
    sw	$v1,4($a4)
    # Line 12591
    lui	$v0,0x1
    ori	$v0,$v0,0xf
    sw	$v0,0($a4)
    # Line 12593
    addu	$v0,$s3,$s3
    sw	$v0,8($a4)
    # Line 12596
    lw	$a0,0($a0)
    lw	$s3,0($at)
    # Line 12595
    addiu	$at,$a4,16
    sw	$at,0($a2)
    # Line 12596
    addu	$a0,$a0,$s3
    addiu	$s3,$a0,-24
    sw	$s3,0($a3)
    addiu	$a0,$a0,-24
    sltu	$a0,$a0,$at
    bnez	$a0,.L0f0bb144
    ld	$s3,0($sp)
.L0f0bb114:
    ld	$gp,8($sp)
    # Line 12598
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bb120:
    # Line 12590
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    nop
    la	$a3,comm_endbuffer
    la	$a2,comm_curbufpos
    ld	$ra,16($sp)
    b	.L0f0bb0c0
    lw	$a4,0($a2)
.L0f0bb144:
    # Line 12597
    la	$t9,gl_comm_flush
    sd	$ra,16($sp)
    jalr	$t9
    ld	$s3,0($sp)
    b	.L0f0bb114
    ld	$ra,16($sp)
.end gl_d_dglfeedbacks

# Function: gl_d_dglloginX
# Declared: Line 12600 (Source lines: 12612-12647)
# Address: 0x0f0bb15c - 0x0f0bb378 (Size: 540 bytes, Frame: 128)
.globl gl_d_dglloginX
.ent gl_d_dglloginX
gl_d_dglloginX:
    # Line 12612
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$s5,40($sp)
    move	$s5,$a5
    sd	$s4,32($sp)
    move	$s4,$a4
    sd	$a3,8($sp)
    sd	$s2,16($sp)
    move	$s2,$a2
    sd	$s1,24($sp)
    sd	$gp,48($sp)
    # lui	v1,0xfff8 (gp disp hi)
    # addiu	v1,v1,-32532 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    move	$s1,$a1
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s3,0($sp)
    addiu	$v1,$v0,256
    sltu	$at,$at,$v1
    bnez	$at,.L0f0bb35c
    move	$s3,$a0
.L0f0bb1bc:
    sd	$s0,56($sp)
    # Line 12616
    move	$s0,$v0
    # Line 12618
    move	$a0,$s3
    la	$t9,strlen
    # Line 12617
    lui	$a1,0x1
    ori	$a1,$a1,0x10
    # Line 12618
    jalr	$t9
    # Line 12617
    sw	$a1,0($v0)
    # Line 12619
    addiu	$a6,$v0,4
    li	$a2,-4
    and	$a2,$a2,$a6
    bnez	$s3,.L0f0bb2f0
    sw	$a2,4($s0)
    ld	$s3,0($sp)
    # Line 12621
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f0bb1fc:
    # Line 12624
    la	$t9,strlen
    jalr	$t9
    move	$a0,$s1
    # Line 12625
    addiu	$a6,$v0,4
    li	$a2,-4
    and	$a2,$a2,$a6
    bnez	$s1,.L0f0bb314
    sw	$a2,0($s0)
    ld	$s1,24($sp)
    # Line 12627
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,4
.L0f0bb228:
    # Line 12630
    la	$t9,strlen
    jalr	$t9
    move	$a0,$s2
    # Line 12631
    addiu	$a6,$v0,4
    li	$a2,-4
    and	$a2,$a2,$a6
    bnez	$s2,.L0f0bb338
    sw	$a2,0($s0)
    ld	$s2,16($sp)
    # Line 12633
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,4
.L0f0bb254:
    # Line 12642
    li	$a0,1
    # Line 12637
    li	$v0,-1
    sw	$v0,4($s0)
    # Line 12640
    addiu	$v0,$s0,12
    # Line 12636
    ld	$t9,8($sp)
    # Line 12641
    la	$t8,comm_stdsize
    # Line 12635
    la	$at,comm_buffer
    # Line 12638
    sw	$t9,8($s0)
    # Line 12636
    sw	$t9,0($s0)
    la	$v1,comm_curbufpos
    # Line 12641
    lw	$at,0($at)
    lw	$t8,0($t8)
    la	$ra,comm_endbuffer
    # Line 12642
    la	$t9,gl_comm_read_data
    # Line 12641
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 12642
    jalr	$t9
    # Line 12640
    sw	$v0,0($v1)
    la	$a2,gl_mem_copy_array
    la	$a1,comm_buffer
    # Line 12644
    move	$a0,$s4
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    ld	$s0,56($sp)
    jalr	$t9
    addiu	$a1,$a1,12
    la	$v0,comm_buffer
    # Line 12645
    lw	$v1,0($v0)
    lw	$v1,8($v1)
    ld	$gp,48($sp)
    sw	$v1,0($s5)
    # Line 12647
    ld	$s4,32($sp)
    lw	$v0,0($v0)
    ld	$ra,64($sp)
    ld	$s5,40($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0bb2f0:
    # Line 12623
    li	$a4,256
    la	$t9,gl_mem_pack_array
    move	$a1,$s3
    # Line 12621
    la	$a3,gl_mem_copy_array
    # Line 12623
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    b	.L0f0bb1fc
    ld	$s3,0($sp)
.L0f0bb314:
    la	$a3,gl_mem_copy_array
    # Line 12629
    la	$t9,gl_mem_pack_array
    li	$a4,256
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,4
    move	$s0,$v0
    b	.L0f0bb228
    ld	$s1,24($sp)
.L0f0bb338:
    la	$a3,gl_mem_copy_array
    # Line 12635
    la	$t9,gl_mem_pack_array
    li	$a4,256
    move	$a1,$s2
    jalr	$t9
    addiu	$a0,$s0,4
    move	$s0,$v0
    b	.L0f0bb254
    ld	$s2,16($sp)
.L0f0bb35c:
    # Line 12616
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,56($sp)
    b	.L0f0bb1bc
    lw	$v0,0($v0)
.end gl_d_dglloginX

# Function: gl_d_dglgetqport
# Declared: Line 12650 (Source lines: 12656-12663)
# Address: 0x0f0bb378 - 0x0f0bb3d4 (Size: 92 bytes, Frame: 16)
.globl gl_d_dglgetqport
.ent gl_d_dglgetqport
gl_d_dglgetqport:
    # Line 12656
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a0,0xfff7
    addiu	$a0,$a0,32464
    addu	$gp,$t9,$a0
    la	$v0,comm_curbufpos
    # Line 12661
    li	$a0,1
    # Line 12659
    lui	$v1,0x1
    # Line 12658
    lw	$a1,0($v0)
    # Line 12659
    ori	$v1,$v1,0x11
    # Line 12661
    la	$t9,gl_comm_read_data
    # Line 12659
    sw	$v1,0($a1)
    # Line 12660
    addiu	$at,$a1,4
    # Line 12661
    jalr	$t9
    # Line 12660
    sw	$at,0($v0)
    # Line 12662
    la	$v0,comm_buffer
    # Line 12663
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_d_dglgetqport

# Function: gl_d_dglacceptqsocket
# Declared: Line 12666 (Source lines: 12672-12678)
# Address: 0x0f0bb3d4 - 0x0f0bb438 (Size: 100 bytes, Frame: 16)
.globl gl_d_dglacceptqsocket
.ent gl_d_dglacceptqsocket
gl_d_dglacceptqsocket:
    # Line 12672
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff7
    addiu	$a1,$a1,32372
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 12675
    lui	$a0,0x1
    # Line 12674
    lw	$v0,0($v1)
    # Line 12675
    ori	$a0,$a0,0x12
    # Line 12676
    la	$at,comm_endbuffer
    # Line 12675
    sw	$a0,0($v0)
    # Line 12676
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f0bb420
    sw	$v0,0($v1)
.L0f0bb414:
    ld	$gp,0($sp)
    # Line 12678
    jr	$ra
    addiu	$sp,$sp,16
.L0f0bb420:
    # Line 12677
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f0bb414
    ld	$ra,8($sp)
.end gl_d_dglacceptqsocket

# Function: gl_d_dglxauthority
# Declared: Line 12680 (Source lines: 12690-12713)
# Address: 0x0f0bb438 - 0x0f0bb5c8 (Size: 400 bytes, Frame: 208)
.globl gl_d_dglxauthority
.ent gl_d_dglxauthority
gl_d_dglxauthority:
    # Line 12690
    move	$a6,$a2
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a3
    sd	$s1,0($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff7 (gp disp hi)
    # addiu	v1,v1,32272 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a7,comm_curbufpos
    la	$t0,comm_endbuffer
    move	$s1,$a1
    lw	$t1,0($a7)
    lw	$at,0($t0)
    sd	$s8,8($sp)
    addiu	$v0,$t1,172
    sltu	$at,$at,$v0
    bnez	$at,.L0f0bb588
    move	$s8,$a0
.L0f0bb484:
    # Line 12694
    move	$v0,$t1
    # Line 12696
    sw	$s8,4($t1)
    # Line 12698
    addiu	$a2,$s8,3
    ld	$s8,8($sp)
    # Line 12695
    lui	$a4,0x1
    # Line 12698
    li	$a0,-4
    and	$a2,$a2,$a0
    # Line 12695
    ori	$a4,$a4,0x13
    sw	$a4,0($t1)
    # Line 12698
    bnez	$s1,.L0f0bb518
    sw	$a2,8($t1)
    # Line 12700
    la	$a3,gl_mem_copy_array
    ld	$s1,0($sp)
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,12
.L0f0bb4c0:
    # Line 12703
    sw	$a6,0($v0)
    # Line 12705
    addiu	$a2,$a6,3
    and	$a2,$a2,$a0
    bnez	$s0,.L0f0bb55c
    sw	$a2,4($v0)
    ld	$s0,16($sp)
    # Line 12707
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,8
.L0f0bb4e0:
    # Line 12711
    la	$a5,comm_buffer
    la	$a4,comm_stdsize
    lw	$a5,0($a5)
    lw	$a4,0($a4)
    # Line 12710
    sw	$v0,0($a7)
    # Line 12711
    addu	$a4,$a4,$a5
    addiu	$v1,$a4,-24
    addiu	$a4,$a4,-24
    sltu	$a4,$a4,$v0
    bnez	$a4,.L0f0bb5b0
    sw	$v1,0($t0)
.L0f0bb50c:
    ld	$gp,24($sp)
    # Line 12713
    jr	$ra
    addiu	$sp,$sp,80
.L0f0bb518:
    sd	$a6,32($sp)
    # Line 12702
    li	$a4,172
    move	$a1,$s1
    # Line 12700
    la	$a3,gl_mem_copy_array
    # Line 12702
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,12
    sd	$ra,40($sp)
    jalr	$t9
    ld	$s8,8($sp)
    la	$a7,comm_curbufpos
    la	$t0,comm_endbuffer
    li	$a0,-4
    la	$a3,gl_mem_copy_array
    ld	$s1,0($sp)
    ld	$a6,32($sp)
    b	.L0f0bb4c0
    ld	$ra,40($sp)
.L0f0bb55c:
    # Line 12709
    li	$a4,172
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    la	$a7,comm_curbufpos
    la	$t0,comm_endbuffer
    ld	$s0,16($sp)
    b	.L0f0bb4e0
    ld	$ra,40($sp)
.L0f0bb588:
    # Line 12694
    la	$t9,gl_comm_flush
    sd	$ra,40($sp)
    jalr	$t9
    sd	$a6,32($sp)
    la	$t0,comm_endbuffer
    ld	$a6,32($sp)
    la	$a7,comm_curbufpos
    ld	$ra,40($sp)
    b	.L0f0bb484
    lw	$t1,0($a7)
.L0f0bb5b0:
    # Line 12712
    la	$t9,gl_comm_flush
    sd	$ra,40($sp)
    jalr	$t9
    nop
    b	.L0f0bb50c
    ld	$ra,40($sp)
.end gl_d_dglxauthority

