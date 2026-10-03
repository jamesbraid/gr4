# Source: ../dgl/comm.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/comm.c -o comm.T
# Total Functions: 19

.text

# Function: gl_comm_default_init
# Declared: Line 56 (Source lines: 57-93)
# Address: 0x0f09f474 - 0x0f09f5f4 (Size: 384 bytes, Frame: 176)
.globl gl_comm_default_init
.ent gl_comm_default_init
gl_comm_default_init:
    # Line 57
    addiu	$sp,$sp,-560
    sd	$gp,528($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,15828 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 63
    la	$t9,gl_util_init
    sd	$ra,520($sp)
    jalr	$t9
    nop
    # Line 64
    la	$t9,gl_dgl_default_display
    sd	$s2,552($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 71
    la	$t9,getenv
    sd	$s0,544($sp)
    # Line 64
    move	$s2,$v0
    # Line 71
    jalr	$t9
    addiu	$a0,$gp,-15440
    bnez	$v0,.L0f09f5b0
    move	$s0,$v0
    beqz	$s2,.L0f09f5e8
    # Line 74
    li	$v0,5
    li	$v0,4
    sd	$s1,536($sp)
    ld	$s2,552($sp)
.L0f09f4d8:
    move	$s1,$v0
.L0f09f4dc:
    # Line 82
    move	$a3,$s1
    addiu	$a2,$sp,0
    # Line 78
    la	$s0,sub_0f020000
    # Line 82
    la	$t9,gl_dgl_info
    li	$a0,1
    # Line 78
    addiu	$s0,$s0,29488
    # Line 82
    jalr	$t9
    addiu	$a1,$s0,432
    # Line 83
    la	$t9,gl_parse_hostname
    addiu	$a2,$sp,516
    addiu	$a1,$sp,512
    bal gl_parse_hostname
    addiu	$a0,$sp,0
    # Line 84
    la	$t9,__GLdglopen
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$sp,0
    move	$s0,$v0
    bgez	$v0,.L0f09f594
    ld	$ra,520($sp)
    li	$at,-34
    bne	$s0,$at,.L0f09f560
    # Line 89
    move	$a4,$s0
    # Line 87
    addiu	$a2,$sp,0
    la	$a0,sub_0f020000
    ld	$s1,536($sp)
    la	$t9,gl_dgl_error
    addiu	$a0,$a0,29488
    addiu	$a1,$a0,488
    jalr	$t9
    addiu	$a0,$a0,472
    b	.L0f09f584
    nop
.L0f09f560:
    # Line 89
    move	$a3,$s1
    la	$a0,sub_0f020000
    addiu	$a2,$sp,0
    la	$t9,gl_dgl_error
    addiu	$a0,$a0,29488
    addiu	$a1,$a0,536
    jalr	$t9
    addiu	$a0,$a0,520
    ld	$s1,536($sp)
.L0f09f584:
    # Line 91
    la	$t9,exit
    jalr	$t9
    move	$a0,$s0
    ld	$ra,520($sp)
.L0f09f594:
    # Line 93
    la	$v0,comm_curgfile
    ld	$gp,528($sp)
    ld	$s0,544($sp)
    ld	$s1,536($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,560
.L0f09f5b0:
    # Line 76
    la	$t9,gl_util_nametoi
    sd	$s1,536($sp)
    jalr	$t9
    move	$a0,$s0
    move	$s0,$v0
    move	$s1,$v0
    move	$v1,$s2
    bnez	$v1,.L0f09f4dc
    ld	$s2,552($sp)
    li	$a2,1
    bne	$s0,$a2,.L0f09f4dc
    ld	$s2,552($sp)
    b	.L0f09f4dc
    # Line 78
    li	$s1,5
.L0f09f5e8:
    sd	$s1,536($sp)
    b	.L0f09f4d8
    ld	$s2,552($sp)
.end gl_comm_default_init

# Function: gl_comm_get_bufsize
# Declared: Line 99 (Source lines: 100-140)
# Address: 0x0f09f5f4 - 0x0f09f804 (Size: 528 bytes, Frame: 16)
.globl gl_comm_get_bufsize
.ent gl_comm_get_bufsize
gl_comm_get_bufsize:
    # Line 100
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,15444 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_sizeset
    lw	$at,0($at)
    # Line 119
    la	$a2,comm_stdsize
    # Line 100
    beqz	$at,.L0f09f70c
    # Line 119
    lw	$a2,0($a2)
.L0f09f61c:
    beqz	$a2,.L0f09f6f8
.L0f09f620:
    # Line 125
    li	$a0,1
    la	$a1,sub_0f020000
    la	$t9,gl_dgl_info
    sd	$ra,8($sp)
    addiu	$a1,$a1,29488
    jalr	$t9
    addiu	$a1,$a1,592
    la	$a2,comm_stdsize
    lw	$a2,0($a2)
    li	$a3,4096
    beq	$a2,$a3,.L0f09f6e8
    ld	$ra,8($sp)
    # Line 128
    la	$t9,malloc
    jalr	$t9
    move	$a0,$a2
    la	$a3,comm_buffer
    move	$a1,$v0
    bnez	$v0,.L0f09f69c
    sw	$v0,0($a3)
    # Line 130
    lw	$a2,-20884($gp)
    la	$a1,sub_0f020000
    la	$t9,gl_dgl_error
    addiu	$a0,$gp,-15432
    addiu	$a1,$a1,29488
    jalr	$t9
    addiu	$a1,$a1,624
    # Line 132
    la	$t9,exit
    jalr	$t9
    li	$a0,12
    la	$a1,comm_buffer
    lw	$a1,0($a1)
.L0f09f69c:
    # Line 134
    la	$t9,bcopy
    li	$a2,4096
    jalr	$t9
    # Line 132
    la	$a0,comm_staticbuff
    la	$at,comm_staticbuff
    la	$ra,comm_buffer
    la	$a2,comm_stdsize
    # Line 135
    la	$a4,comm_curbufpos
    lw	$ra,0($ra)
    # Line 136
    lw	$a2,0($a2)
    # Line 135
    lw	$a3,0($a4)
    # Line 136
    la	$v1,comm_endbuffer
    addu	$v0,$a2,$ra
    # Line 135
    subu	$a3,$a3,$at
    addu	$a3,$a3,$ra
    ld	$ra,8($sp)
    # Line 136
    addiu	$v0,$v0,-24
    sw	$v0,0($v1)
    # Line 135
    sw	$a3,0($a4)
.L0f09f6e8:
    # Line 139
    sw	$a2,-20884($gp)
    ld	$gp,0($sp)
    # Line 140
    jr	$ra
    addiu	$sp,$sp,16
.L0f09f6f8:
    la	$a3,comm_stdsize
    sd	$ra,8($sp)
    # Line 123
    li	$a2,4096
    b	.L0f09f620
    sw	$a2,0($a3)
.L0f09f70c:
    sd	$ra,8($sp)
    # Line 104
    la	$a1,comm_stdsize
    la	$a0,sub_0f020000
    # Line 105
    la	$t9,getenv
    # Line 104
    sw	$zero,0($a1)
    addiu	$a0,$a0,29488
    # Line 105
    jalr	$t9
    addiu	$a0,$a0,576
    move	$a0,$v0
    li	$a7,109
    li	$a5,107
    la	$a1,__libc_attr
    beqz	$v0,.L0f09f7dc
    ld	$ra,8($sp)
    lbu	$a3,0($v0)
    beqz	$a3,.L0f09f7f8
    li	$a6,75
    li	$t0,77
    lbu	$v0,0($a0)
    la	$a2,comm_stdsize
    lw	$a1,0($a1)
    b	.L0f09f790
    lw	$a2,0($a2)
.L0f09f768:
    # Line 109
    addu	$a4,$a4,$a2
    sll	$a4,$a4,0x1
    sw	$a4,0($a3)
    # Line 110
    lbu	$a2,0($a0)
    addu	$a2,$a2,$a4
    addiu	$a2,$a2,-48
    sw	$a2,0($a3)
    # Line 107
    lbu	$v0,1($a0)
.L0f09f788:
    beqz	$v0,.L0f09f61c
    addiu	$a0,$a0,1
.L0f09f790:
    # Line 105
    sll	$at,$v0,0x2
    addu	$at,$at,$a1
    lw	$at,4($at)
    # Line 109
    sll	$a4,$a2,0x2
    # Line 105
    andi	$at,$at,0x4
    bnez	$at,.L0f09f768
    la	$a3,comm_stdsize
    # Line 111
    beq	$a5,$v0,.L0f09f7ec
    la	$a3,comm_stdsize
    beq	$a6,$v0,.L0f09f7ec
    la	$a3,comm_stdsize
    # Line 114
    beq	$a7,$v0,.L0f09f7d0
    la	$v1,comm_stdsize
    bnel	$t0,$v0,.L0f09f788
    # Line 107
    lbu	$v0,1($a0)
    la	$v1,comm_stdsize
.L0f09f7d0:
    # Line 115
    sll	$a2,$a2,0x14
    # Line 116
    b	.L0f09f61c
    # Line 115
    sw	$a2,0($v1)
.L0f09f7dc:
    la	$a2,comm_stdsize
    b	.L0f09f61c
    # Line 119
    lw	$a2,0($a2)
    la	$a3,comm_stdsize
.L0f09f7ec:
    # Line 112
    sll	$a2,$a2,0xa
    # Line 113
    b	.L0f09f61c
    # Line 112
    sw	$a2,0($a3)
.L0f09f7f8:
    la	$a2,comm_stdsize
    b	.L0f09f61c
    # Line 107
    lw	$a2,0($a2)
.end gl_comm_get_bufsize

# Function: gl_comm_io
# Declared: Line 150 (Source lines: 154-190)
# Address: 0x0f09f804 - 0x0f09f934 (Size: 304 bytes, Frame: 224)
.globl gl_comm_io
.ent gl_comm_io
gl_comm_io:
    # Line 154
    addiu	$sp,$sp,-96
    sd	$s4,8($sp)
    sd	$ra,0($sp)
    sd	$s5,24($sp)
    move	$s5,$a0
    sd	$s3,48($sp)
    move	$s3,$a1
    sd	$s2,56($sp)
    move	$s2,$a2
    sd	$s1,32($sp)
    move	$s1,$a3
    sd	$s0,40($sp)
    # Line 159
    move	$s0,$zero
    sd	$gp,16($sp)
    # Line 154
    lui	$at,0xfff9
    addiu	$at,$at,14916
    # Line 159
    blez	$a3,.L0f09f8d8
    # Line 154
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$ra,0($sp)
    b	.L0f09f860
    sd	$s4,8($sp)
.L0f09f858:
    # Line 190
    slt	$v1,$s0,$s1
.L0f09f85c:
    beqz	$v1,.L0f09f8d8
.L0f09f860:
    # Line 159
    move	$s4,$zero
    # Line 161
    move	$a0,$s3
    move	$a1,$s2
    subu	$a2,$s1,$s0
    jalr	$s5
    move	$t9,$s5
    bltz	$v0,.L0f09f89c
    la	$a4,errno
    # Line 167
    beqzl	$v0,.L0f09f90c
    # Line 181
    move	$v0,$zero
.L0f09f888:
    bnez	$s4,.L0f09f85c
    # Line 190
    slt	$v1,$s0,$s1
    # Line 188
    addu	$s2,$v0,$s2
    b	.L0f09f858
    # Line 187
    addu	$s0,$v0,$s0
.L0f09f89c:
    # Line 161
    lw	$a4,0($a4)
    li	$a5,4
    beq	$a4,$a5,.L0f09f904
    # Line 167
    li	$s4,1
    # Line 173
    li	$v0,-1
    ld	$gp,16($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$ra,0($sp)
    ld	$s4,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09f8d8:
    ld	$gp,16($sp)
    # Line 190
    move	$v0,$s0
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$ra,0($sp)
    ld	$s4,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f09f904:
    # Line 167
    b	.L0f09f888
    nop
.L0f09f90c:
    ld	$gp,16($sp)
    # Line 181
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$ra,0($sp)
    ld	$s4,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_comm_io

# Function: gl_comm_new_gfile
# Declared: Line 196 (Source lines: 197-224)
# Address: 0x0f09f934 - 0x0f09fa08 (Size: 212 bytes, Frame: 32)
.globl gl_comm_new_gfile
.ent gl_comm_new_gfile
gl_comm_new_gfile:
    # Line 204
    li	$a1,257
    # Line 197
    addiu	$sp,$sp,-32
    sd	$s5,16($sp)
    sd	$gp,0($sp)
    sd	$s7,8($sp)
    lui	$s7,0xfff9
    addiu	$s7,$s7,14612
    addu	$gp,$t9,$s7
    # Line 204
    la	$s5,comm_gfiles
    # Line 224
    move	$v0,$zero
    # Line 204
    li	$s7,1
    addiu	$s5,$s5,4
.L0f09f964:
    lw	$at,0($s5)
    beqz	$at,.L0f09f990
    # Line 206
    la	$t9,malloc
    # Line 204
    addiu	$s7,$s7,1
    bne	$s7,$a1,.L0f09f964
    addiu	$s5,$s5,4
    ld	$gp,0($sp)
    # Line 224
    ld	$s5,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f09f990:
    sd	$ra,24($sp)
    # Line 206
    jalr	$t9
    li	$a0,412
    # Line 213
    la	$a2,read
    # Line 214
    la	$a1,write
    # Line 215
    la	$a0,close
    ld	$gp,0($sp)
    # Line 220
    sw	$zero,404($v0)
    # Line 219
    sb	$zero,200($v0)
    # Line 217
    sb	$zero,116($v0)
    # Line 216
    sb	$zero,36($v0)
    # Line 208
    li	$v1,-1
    # Line 218
    sw	$v1,196($v0)
    # Line 212
    sw	$v1,20($v0)
    # Line 211
    sw	$v1,16($v0)
    # Line 210
    sw	$v1,12($v0)
    # Line 208
    sw	$v1,4($v0)
    # Line 207
    sw	$s7,0($v0)
    # Line 209
    lui	$s7,0x3777
    ori	$s7,$s7,0x7770
    sw	$s7,8($v0)
    # Line 222
    ld	$s7,8($sp)
    ld	$ra,24($sp)
    # Line 215
    sw	$a0,32($v0)
    # Line 214
    sw	$a1,28($v0)
    # Line 213
    sw	$a2,24($v0)
    # Line 221
    sw	$v0,0($s5)
    # Line 222
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_comm_new_gfile

# Function: gl_comm_local_gfile
# Declared: Line 230 (Source lines: 231-242)
# Address: 0x0f09fa08 - 0x0f09faa0 (Size: 152 bytes, Frame: 32)
.globl gl_comm_local_gfile
.ent gl_comm_local_gfile
gl_comm_local_gfile:
    # Line 231
    addiu	$sp,$sp,-32
    sd	$s7,0($sp)
    sd	$gp,8($sp)
    lui	$a3,0xfff9
    addiu	$a3,$a3,14400
    addu	$gp,$t9,$a3
    la	$a2,comm_gfiles
    # Line 235
    li	$s7,1
    li	$a3,1
    addiu	$a5,$a2,1028
    b	.L0f09fa4c
    addiu	$a2,$a2,4
.L0f09fa38:
    # Line 236
    move	$a4,$zero
.L0f09fa3c:
    bnez	$a4,.L0f09fa6c
    # Line 235
    addiu	$a2,$a2,4
    beq	$a2,$a5,.L0f09fa6c
    addiu	$a3,$a3,1
.L0f09fa4c:
    # Line 236
    lw	$a4,0($a2)
    beqz	$a4,.L0f09fa38
    move	$v0,$a4
    lw	$at,4($a4)
    bne	$at,$s7,.L0f09fa38
    li	$a4,1
    b	.L0f09fa3c
    nop
.L0f09fa6c:
    # Line 238
    slti	$v1,$a3,257
    beqz	$v1,.L0f09fa88
    # Line 239
    la	$t9,gl_comm_new_gfile
.L0f09fa78:
    ld	$gp,8($sp)
    # Line 242
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f09fa88:
    sd	$ra,16($sp)
    # Line 239
    bal gl_comm_new_gfile
    nop
    # Line 240
    sw	$s7,4($v0)
    b	.L0f09fa78
    ld	$ra,16($sp)
.end gl_comm_local_gfile

# Function: gl_comm_free_gfile
# Declared: Line 249 (Source lines: 251-254)
# Address: 0x0f09faa0 - 0x0f09fae4 (Size: 68 bytes, Frame: 32)
.globl gl_comm_free_gfile
.ent gl_comm_free_gfile
gl_comm_free_gfile:
    # Line 251
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 252
    lw	$at,0($a0)
    sd	$gp,8($sp)
    # Line 251
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,14248 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 252
    la	$v0,comm_gfiles
    # Line 253
    la	$t9,free
    # Line 252
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    # Line 253
    jalr	$t9
    # Line 252
    sw	$zero,0($at)
    # Line 254
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_comm_free_gfile

# Function: gl_comm_close
# Declared: Line 259 (Source lines: 261-312)
# Address: 0x0f09fae4 - 0x0f09ff0c (Size: 1064 bytes, Frame: 176)
.globl gl_comm_close
.ent gl_comm_close
gl_comm_close:
    # Line 261
    addiu	$sp,$sp,-304
    sd	$ra,272($sp)
    sd	$s4,224($sp)
    # Line 267
    li	$s4,1
    sd	$s5,240($sp)
    # Line 261
    move	$s5,$a0
    sd	$s0,232($sp)
    sd	$gp,248($sp)
    sd	$s1,256($sp)
    lui	$s1,0xfff9
    addiu	$s1,$s1,14180
    addu	$gp,$t9,$s1
    la	$s0,comm_gfiles
    sd	$s3,216($sp)
    # Line 267
    move	$s1,$zero
    addiu	$s3,$s0,1028
    b	.L0f09fb40
    addiu	$s0,$s0,4
.L0f09fb2c:
    # Line 270
    bal gl_comm_close_gfile
    move	$a1,$s5
    addu	$s1,$v0,$s1
.L0f09fb38:
    # Line 268
    beq	$s0,$s3,.L0f09fb60
    # Line 272
    li	$a0,1
.L0f09fb40:
    # Line 267
    lw	$a0,0($s0)
    beqz	$a0,.L0f09fb38
    # Line 268
    addiu	$s0,$s0,4
    # Line 267
    lw	$at,4($a0)
    beq	$at,$s4,.L0f09fb38
    nop
    b	.L0f09fb2c
    # Line 270
    la	$t9,gl_comm_close_gfile
.L0f09fb60:
    # Line 272
    la	$a2,dgl_errors
    # Line 268
    la	$s0,sub_0f020000
    # Line 272
    la	$t9,gl_dgl_info
    lw	$a2,0($a2)
    # Line 268
    addiu	$s0,$s0,29488
    # Line 272
    jalr	$t9
    addiu	$a1,$s0,664
    # Line 273
    move	$a2,$s1
    addiu	$a1,$s0,696
    la	$t9,gl_dgl_info
    li	$a0,1
    ld	$s4,224($sp)
    jalr	$t9
    ld	$s3,216($sp)
    # Line 274
    la	$t9,gl_dgl_info
    li	$a0,1
    addiu	$s5,$gp,-15440
    jalr	$t9
    addiu	$a1,$s5,16
    beqz	$v0,.L0f09fe94
    ld	$ra,272($sp)
    # Line 277
    la	$t9,gl_util_timer
    jalr	$t9
    li	$a0,1
    # Line 278
    la	$t9,__GLgl_dgl_printf
    sdc1	$f0,208($sp)
    jalr	$t9
    addiu	$a0,$s0,728
    # Line 279
    la	$t9,__GLgl_dgl_printf
    jalr	$t9
    addiu	$a0,$s0,760
    # Line 280
    la	$t9,__GLgl_dgl_printf
    sdc1	$f28,264($sp)
    jalr	$t9
    addiu	$a0,$s0,792
    # Line 281
    lw	$a3,-20892($gp)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    ldc1	$f28,208($sp)
    cvt.d.s	$f28,$f28
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,24
    dmfc1	$a2,$f0
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 282
    lw	$a4,-20896($gp)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,32
    dmfc1	$a2,$f1
    jalr	$t9
    addiu	$a0,$sp,104
    # Line 283
    addiu	$a4,$sp,104
    lw	$a3,-20896($gp)
    la	$t9,__GLgl_dgl_printf
    addiu	$a2,$sp,0
    lw	$a1,-20892($gp)
    jalr	$t9
    addiu	$a0,$s0,824
    # Line 285
    lw	$a5,-20924($gp)
    mtc1	$a5,$f2
    nop
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,40
    dmfc1	$a2,$f2
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 286
    lw	$a6,-20928($gp)
    mtc1	$a6,$f3
    nop
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,48
    dmfc1	$a2,$f3
    jalr	$t9
    addiu	$a0,$sp,104
    # Line 287
    addiu	$a4,$sp,104
    lw	$a3,-20928($gp)
    la	$t9,__GLgl_dgl_printf
    addiu	$a2,$sp,0
    lw	$a1,-20924($gp)
    jalr	$t9
    addiu	$a0,$s0,864
    # Line 289
    lw	$a7,-20916($gp)
    mtc1	$a7,$f4
    nop
    cvt.s.w	$f4,$f4
    cvt.d.s	$f4,$f4
    div.d	$f4,$f4,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,56
    dmfc1	$a2,$f4
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 290
    lw	$t0,-20920($gp)
    mtc1	$t0,$f5
    nop
    cvt.s.w	$f5,$f5
    cvt.d.s	$f5,$f5
    div.d	$f5,$f5,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,64
    dmfc1	$a2,$f5
    jalr	$t9
    addiu	$a0,$sp,104
    # Line 291
    addiu	$a4,$sp,104
    lw	$a3,-20920($gp)
    la	$t9,__GLgl_dgl_printf
    addiu	$a2,$sp,0
    lw	$a1,-20916($gp)
    jalr	$t9
    addiu	$a0,$s0,904
    # Line 293
    lw	$t1,-20900($gp)
    mtc1	$t1,$f6
    nop
    cvt.s.w	$f6,$f6
    cvt.d.s	$f6,$f6
    div.d	$f6,$f6,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,72
    dmfc1	$a2,$f6
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 294
    lw	$t2,-20904($gp)
    mtc1	$t2,$f7
    nop
    cvt.s.w	$f7,$f7
    cvt.d.s	$f7,$f7
    div.d	$f7,$f7,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,80
    dmfc1	$a2,$f7
    jalr	$t9
    addiu	$a0,$sp,104
    # Line 295
    addiu	$a4,$sp,104
    lw	$a3,-20904($gp)
    la	$t9,__GLgl_dgl_printf
    addiu	$a2,$sp,0
    lw	$a1,-20900($gp)
    jalr	$t9
    addiu	$a0,$s0,944
    # Line 297
    lw	$t3,-20908($gp)
    mtc1	$t3,$f8
    nop
    cvt.s.w	$f8,$f8
    cvt.d.s	$f8,$f8
    div.d	$f8,$f8,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,88
    dmfc1	$a2,$f8
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 298
    lw	$t8,-20912($gp)
    mtc1	$t8,$f9
    nop
    cvt.s.w	$f9,$f9
    cvt.d.s	$f9,$f9
    div.d	$f9,$f9,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,96
    dmfc1	$a2,$f9
    jalr	$t9
    addiu	$a0,$sp,104
    # Line 299
    addiu	$a4,$sp,104
    lw	$a3,-20912($gp)
    la	$t9,__GLgl_dgl_printf
    addiu	$a2,$sp,0
    lw	$a1,-20908($gp)
    jalr	$t9
    addiu	$a0,$s0,984
    # Line 301
    lw	$t9,-20888($gp)
    mtc1	$t9,$f10
    nop
    cvt.s.w	$f10,$f10
    cvt.d.s	$f10,$f10
    div.d	$f10,$f10,$f28
    la	$t9,sprintf
    addiu	$a1,$s5,104
    dmfc1	$a2,$f10
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 302
    addiu	$a2,$sp,0
    lw	$a1,-20888($gp)
    la	$t9,__GLgl_dgl_printf
    addiu	$a0,$s0,1024
    ldc1	$f28,264($sp)
    jalr	$t9
    ld	$s5,240($sp)
    # Line 303
    la	$t9,__GLgl_dgl_printf
    lw	$a1,-20884($gp)
    jalr	$t9
    addiu	$a0,$s0,1056
    ld	$ra,272($sp)
.L0f09fe94:
    la	$a0,comm_buffer
    la	$at,comm_staticbuff
    lw	$a0,0($a0)
    ld	$s5,240($sp)
    beq	$a0,$at,.L0f09fec0
    ld	$s0,232($sp)
    beqz	$a0,.L0f09fec0
    # Line 307
    la	$t9,free
    jalr	$t9
    nop
    ld	$ra,272($sp)
.L0f09fec0:
    # Line 310
    la	$v1,comm_curbufpos
    la	$v0,comm_buffer
    # Line 309
    li	$a4,4096
    sw	$a4,-20884($gp)
    # Line 311
    la	$a4,comm_endbuffer
    la	$at,comm_staticbuff
    la	$a3,comm_stdsize
    ld	$gp,248($sp)
    # Line 308
    sw	$at,0($v0)
    # Line 310
    addiu	$v0,$at,4
    sw	$v0,0($v1)
    # Line 312
    move	$v0,$s1
    # Line 311
    lw	$a3,0($a3)
    # Line 312
    ld	$s1,256($sp)
    addiu	$sp,$sp,304
    # Line 311
    addu	$a3,$a3,$at
    addiu	$a3,$a3,-24
    # Line 312
    jr	$ra
    # Line 311
    sw	$a3,0($a4)
.end gl_comm_close

# Function: gl_comm_close_gfile
# Declared: Line 318 (Source lines: 321-332)
# Address: 0x0f09ff0c - 0x0f09ffec (Size: 224 bytes, Frame: 48)
.globl gl_comm_close_gfile
.ent gl_comm_close_gfile
gl_comm_close_gfile:
    # Line 321
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$s1,0($sp)
    move	$s1,$a0
    sd	$gp,8($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,13116 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    # Line 322
    lw	$v0,0($a0)
    la	$v1,comm_gfiles
    lw	$at,0($at)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    beqz	$at,.L0f09ff68
    sw	$zero,0($v0)
    beqz	$s0,.L0f09ff68
    # Line 324
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    bal gl_comm_flush
    nop
    ld	$ra,24($sp)
.L0f09ff68:
    la	$v1,comm_curgfile
    sd	$ra,24($sp)
    # Line 325
    beqz	$s0,.L0f09ff88
    sw	$s1,0($v1)
    # Line 326
    la	$t9,gl_d_dglexit
    jalr	$t9
    nop
    move	$s0,$v0
.L0f09ff88:
    # Line 327
    lw	$t9,32($s1)
    jalr	$t9
    lw	$a0,12($s1)
    # Line 328
    lw	$t9,32($s1)
    jalr	$t9
    lw	$a0,16($s1)
    lw	$a0,196($s1)
    bltz	$a0,.L0f09ffbc
    # Line 330
    la	$t9,gl_comm_free_gfile
    # Line 329
    lw	$t9,32($s1)
    jalr	$t9
    nop
    # Line 330
    la	$t9,gl_comm_free_gfile
.L0f09ffbc:
    bal gl_comm_free_gfile
    move	$a0,$s1
    ld	$ra,24($sp)
    ld	$s1,0($sp)
    # Line 331
    la	$a2,comm_error_gfile
    # Line 332
    move	$v0,$s0
    la	$a3,comm_curgfile
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 331
    sw	$a2,0($a3)
.end gl_comm_close_gfile

# Function: gl_comm_makeroom
# Declared: Line 338 (Source lines: 341-354)
# Address: 0x0f09ffec - 0x0f0a00a4 (Size: 184 bytes, Frame: 48)
.globl gl_comm_makeroom
.ent gl_comm_makeroom
gl_comm_makeroom:
    # Line 341
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$a5,0xfff9
    addiu	$a5,$a5,12892
    addu	$gp,$t9,$a5
    la	$a4,comm_buffer
    sd	$s3,8($sp)
    # Line 345
    lw	$v0,-20884($gp)
    lw	$a4,0($a4)
    # Line 341
    move	$s3,$a1
    la	$v1,comm_endbuffer
    # Line 345
    addu	$a5,$v0,$a4
    addiu	$at,$a5,-24
    # Line 346
    subu	$a5,$a5,$a1
    subu	$a5,$a0,$a5
    addiu	$a5,$a5,24
    bgtz	$a5,.L0f0a0048
    # Line 345
    sw	$at,0($v1)
    ld	$gp,16($sp)
    # Line 347
    move	$v0,$s3
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a0048:
    # Line 349
    la	$t9,sub_0f0a0000
    sd	$a4,0($sp)
    sd	$ra,24($sp)
    addiu	$t9,$t9,164
    bal gl_comm_makeroom
    addu	$a0,$a5,$v0
    la	$a2,comm_endbuffer
    la	$v0,comm_buffer
    # Line 350
    la	$ra,comm_curbufpos
    # Line 353
    lw	$a0,-20884($gp)
    # Line 350
    lw	$v0,0($v0)
    ld	$v1,0($sp)
    ld	$gp,16($sp)
    # Line 353
    addu	$a0,$a0,$v0
    # Line 350
    subu	$v0,$v0,$v1
    addu	$v0,$v0,$s3
    # Line 354
    ld	$s3,8($sp)
    # Line 350
    sw	$v0,0($ra)
    # Line 354
    ld	$ra,24($sp)
    # Line 353
    addiu	$a0,$a0,-24
    sw	$a0,0($a2)
    # Line 354
    jr	$ra
    addiu	$sp,$sp,48
.end gl_comm_makeroom

# Function: comm_check_bufsize
# Declared: Line 360 (Source lines: 362-383)
# Address: 0x0f0a00a4 - 0x0f0a019c (Size: 248 bytes, Frame: 32)
.ent comm_check_bufsize
comm_check_bufsize:
    # Line 362
    lw	$a1,-20884($gp)
    # Line 366
    la	$v0,comm_buffer
    # Line 362
    slt	$at,$a1,$a0
    beqz	$at,.L0f0a013c
    addiu	$sp,$sp,-32
    # Line 364
    la	$a2,comm_stdsize
    lw	$a2,0($a2)
    # Line 366
    la	$a3,comm_staticbuff
    # Line 368
    lw	$at,-20896($gp)
    # Line 364
    addu	$a1,$a2,$a1
    slt	$v1,$a1,$a0
    beqz	$v1,.L0f0a00e4
    # Line 368
    addiu	$at,$at,1
    # Line 366
    move	$a1,$a0
    b	.L0f0a00e8
    sw	$a0,-20884($gp)
.L0f0a00e4:
    sw	$a1,-20884($gp)
.L0f0a00e8:
    # Line 368
    lw	$v0,0($v0)
    sd	$ra,0($sp)
    bne	$v0,$a3,.L0f0a0120
    sw	$at,-20896($gp)
    # Line 370
    la	$t9,malloc
    jalr	$t9
    move	$a0,$a1
    la	$v1,comm_buffer
    ld	$ra,0($sp)
    bnez	$v0,.L0f0a0148
    sw	$v0,0($v1)
.L0f0a0114:
    la	$v0,comm_buffer
    # Line 372
    b	.L0f0a0138
    lw	$v0,0($v0)
.L0f0a0120:
    # Line 375
    la	$t9,realloc
    jalr	$t9
    move	$a0,$v0
    la	$v1,comm_buffer
    ld	$ra,0($sp)
    sw	$v0,0($v1)
.L0f0a0138:
    beqz	$v0,.L0f0a0164
.L0f0a013c:
    # Line 383
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0f0a0148:
    # Line 372
    la	$t9,bcopy
    la	$a0,comm_staticbuff
    move	$a1,$v0
    jalr	$t9
    li	$a2,4096
    b	.L0f0a0114
    ld	$ra,0($sp)
.L0f0a0164:
    # Line 378
    lw	$a2,-20884($gp)
    la	$t9,gl_dgl_error
    la	$a1,sub_0f020000
    addiu	$a0,$gp,-15328
    jalr	$t9
    addiu	$a1,$a1,30576
    # Line 379
    la	$t9,gl_comm_close
    bal gl_comm_close
    move	$a0,$zero
    # Line 380
    la	$t9,exit
    jalr	$t9
    li	$a0,12
    b	.L0f0a013c
    ld	$ra,0($sp)
.end comm_check_bufsize

# Function: gl_comm_flush
# Declared: Line 389 (Source lines: 390-431)
# Address: 0x0f0a019c - 0x0f0a03f0 (Size: 596 bytes, Frame: 208)
.globl gl_comm_flush
.ent gl_comm_flush
gl_comm_flush:
    # Line 390
    addiu	$sp,$sp,-80
    sd	$s3,32($sp)
    sd	$gp,24($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,12460 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 393
    la	$s3,comm_curgfile
    lw	$s3,0($s3)
    # Line 390
    la	$a3,comm_buffer
    sd	$s0,16($sp)
    # Line 393
    beqz	$s3,.L0f0a03d0
    # Line 391
    lw	$s0,0($a3)
.L0f0a01cc:
    # Line 397
    lw	$v1,4($s3)
    # Line 403
    li	$at,4
    # Line 397
    li	$a4,1
    beq	$v1,$a4,.L0f0a03b8
    # Line 400
    la	$v0,comm_curbufpos
    sd	$s1,0($sp)
    # Line 402
    lw	$s1,0($v0)
    sw	$zero,0($s1)
    # Line 403
    lw	$a5,0($v0)
    subu	$a5,$a5,$s0
    beq	$a5,$at,.L0f0a0388
    addiu	$s1,$a5,4
    # Line 409
    move	$a2,$s1
    la	$a1,sub_0f020000
    li	$a0,6
    la	$t9,gl_dgl_info
    addiu	$a1,$a1,30608
    sd	$ra,40($sp)
    sd	$s2,48($sp)
    # Line 407
    la	$s2,comm_stdsize
    # Line 406
    lw	$ra,0($a3)
    # Line 407
    la	$t8,comm_endbuffer
    lw	$s2,0($s2)
    # Line 406
    addiu	$at,$ra,4
    sw	$at,0($v0)
    # Line 407
    addu	$s2,$s2,$ra
    addiu	$s2,$s2,-24
    sw	$s2,0($t8)
    # Line 409
    jalr	$t9
    # Line 408
    lw	$s2,8($s3)
    # Line 409
    slt	$a4,$s2,$s1
    beqzl	$a4,.L0f0a0270
    # Line 421
    addiu	$s2,$gp,-15440
    sd	$s4,56($sp)
    # Line 409
    addiu	$s4,$s2,-4
    sd	$s5,64($sp)
    addiu	$s5,$gp,-15440
    addiu	$at,$s5,128
    addiu	$s5,$s5,120
    b	.L0f0a032c
    sd	$at,8($sp)
.L0f0a0270:
    # Line 426
    move	$a2,$s1
    addiu	$a1,$s2,136
    li	$a0,6
    # Line 424
    lui	$a3,0x1000
    addiu	$v1,$s1,-4
    or	$v1,$v1,$a3
    # Line 425
    lw	$v0,-20900($gp)
    # Line 426
    la	$t9,gl_dgl_info_more
    # Line 424
    sw	$v1,0($s0)
    # Line 425
    addiu	$v0,$v0,1
    # Line 426
    jalr	$t9
    # Line 425
    sw	$v0,-20900($gp)
    # Line 427
    move	$a3,$s1
    la	$t9,gl_comm_io
    move	$a2,$s0
    lw	$a1,16($s3)
    bal gl_comm_io
    lw	$a0,28($s3)
    bne	$v0,$s1,.L0f0a03a4
    ld	$ra,40($sp)
.L0f0a02c0:
    # Line 431
    move	$v0,$zero
    ld	$s0,16($sp)
    ld	$s2,48($sp)
    # Line 430
    lw	$a5,-20908($gp)
    # Line 431
    ld	$s3,32($sp)
    # Line 429
    lw	$a4,-20924($gp)
    # Line 430
    addu	$a5,$a5,$s1
    # Line 431
    ld	$s1,0($sp)
    # Line 429
    addiu	$a4,$a4,1
    # Line 430
    sw	$a5,-20908($gp)
    # Line 429
    sw	$a4,-20924($gp)
    ld	$gp,24($sp)
    # Line 431
    jr	$ra
    addiu	$sp,$sp,80
.L0f0a02f8:
    # Line 417
    bal gl_comm_fatal_error
    ld	$a0,8($sp)
.L0f0a0300:
    # Line 421
    addiu	$s1,$s1,4
    slt	$v1,$s2,$s1
    # Line 420
    addu	$s0,$s2,$s0
    # Line 418
    lw	$at,-20916($gp)
    # Line 419
    lw	$a4,-20908($gp)
    # Line 420
    addiu	$s0,$s0,-4
    # Line 418
    addiu	$at,$at,1
    # Line 419
    addu	$a4,$a4,$s2
    sw	$a4,-20908($gp)
    # Line 421
    beqz	$v1,.L0f0a0378
    # Line 418
    sw	$at,-20916($gp)
.L0f0a032c:
    # Line 415
    move	$a2,$s2
    move	$a1,$s5
    li	$a0,6
    # Line 414
    lw	$t8,-20900($gp)
    # Line 415
    la	$t9,gl_dgl_info_more
    # Line 413
    sw	$s4,0($s0)
    # Line 414
    addiu	$t8,$t8,1
    # Line 415
    jalr	$t9
    # Line 414
    sw	$t8,-20900($gp)
    # Line 416
    move	$a3,$s2
    la	$t9,gl_comm_io
    move	$a2,$s0
    lw	$a1,16($s3)
    bal gl_comm_io
    lw	$a0,28($s3)
    beq	$v0,$s2,.L0f0a0300
    # Line 421
    subu	$s1,$s1,$s2
    b	.L0f0a02f8
    # Line 417
    la	$t9,gl_comm_fatal_error
.L0f0a0378:
    addiu	$s2,$gp,-15440
    ld	$s5,64($sp)
    b	.L0f0a0270
    ld	$s4,56($sp)
.L0f0a0388:
    # Line 404
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0a03a4:
    # Line 428
    la	$t9,gl_comm_fatal_error
    bal gl_comm_fatal_error
    addiu	$a0,$s2,144
    b	.L0f0a02c0
    ld	$ra,40($sp)
.L0f0a03b8:
    # Line 400
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0a03d0:
    # Line 397
    la	$t9,gl_comm_default_init
    sd	$ra,40($sp)
    bal gl_comm_default_init
    nop
    la	$a3,comm_buffer
    move	$s3,$v0
    b	.L0f0a01cc
    ld	$ra,40($sp)
.end gl_comm_flush

# Function: gl_comm_callback
# Declared: Line 447 (Source lines: 448-469)
# Address: 0x0f0a03f0 - 0x0f0a04d4 (Size: 228 bytes, Frame: 192)
.globl gl_comm_callback
.ent gl_comm_callback
gl_comm_callback:
    # Line 448
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s3,48($sp)
    li	$s3,2
    sd	$s2,40($sp)
    li	$s2,1
    sd	$s0,24($sp)
    sd	$s1,8($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,11864 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$s1,comm_curbufpos
    b	.L0f0a0448
    la	$s0,comm_buffer
.L0f0a042c:
    # Line 460
    jalr	$t9
    addiu	$a0,$sp,0
    move	$a0,$v0
    sw	$v0,0($sp)
.L0f0a043c:
    # Line 469
    la	$t9,gl_d_dglreturncallback
.L0f0a0440:
    jalr	$t9
    nop
.L0f0a0448:
    # Line 452
    la	$t9,gl_comm_read_data
    bal gl_comm_read_data
    move	$a0,$zero
    lw	$v1,0($s0)
    lw	$v1,0($v1)
    beqz	$v1,.L0f0a04b4
    # Line 455
    lw	$v0,0($s1)
    # Line 456
    lw	$a0,8($v0)
    # Line 455
    lw	$t9,0($v0)
    # Line 456
    sw	$a0,0($sp)
    # Line 457
    lw	$a3,4($v0)
    # Line 458
    beqz	$a3,.L0f0a042c
    nop
    beq	$a3,$s2,.L0f0a04a0
    nop
    bnel	$a3,$s3,.L0f0a0440
    # Line 469
    la	$t9,gl_d_dglreturncallback
    # Line 466
    jalr	$t9
    addiu	$a0,$v0,12
    move	$a0,$v0
    b	.L0f0a043c
    sw	$v0,0($sp)
.L0f0a04a0:
    # Line 463
    jalr	$t9
    nop
    move	$a0,$v0
    # Line 464
    b	.L0f0a043c
    # Line 463
    sw	$v0,0($sp)
.L0f0a04b4:
    ld	$gp,16($sp)
    # Line 454
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    ld	$ra,32($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_comm_callback

# Function: comm_fillbuffer
# Declared: Line 477 (Source lines: 480-497)
# Address: 0x0f0a04d4 - 0x0f0a05d0 (Size: 252 bytes, Frame: 208)
.ent comm_fillbuffer
comm_fillbuffer:
    # Line 482
    la	$at,sub_0f020000
    # Line 480
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s0,40($sp)
    sd	$s2,32($sp)
    # Line 482
    la	$s2,comm_curgfile
    # Line 480
    move	$s0,$a1
    # Line 482
    blez	$a1,.L0f0a0574
    lw	$s2,0($s2)
    sd	$ra,56($sp)
    sd	$s4,48($sp)
    addiu	$at,$at,30640
    sd	$at,16($sp)
    addiu	$v1,$gp,-15440
    addiu	$a4,$v1,160
    addiu	$v1,$v1,152
    sd	$a4,8($sp)
    sd	$v1,0($sp)
    # Line 486
    move	$a3,$s0
.L0f0a0524:
    move	$a2,$s1
    lw	$a1,12($s2)
    # Line 485
    lw	$a5,-20904($gp)
    # Line 486
    la	$t9,gl_comm_io
    lw	$a0,24($s2)
    # Line 485
    addiu	$a5,$a5,1
    # Line 486
    bal gl_comm_io
    # Line 485
    sw	$a5,-20904($gp)
    # Line 486
    bltz	$v0,.L0f0a0588
    move	$s4,$v0
    # Line 488
    lw	$at,-20912($gp)
.L0f0a0550:
    # Line 490
    subu	$s0,$s0,$s4
    # Line 489
    addu	$s1,$s4,$s1
    # Line 488
    addu	$at,$at,$s4
    # Line 490
    beqz	$s4,.L0f0a059c
    # Line 488
    sw	$at,-20912($gp)
.L0f0a0564:
    # Line 494
    bgtz	$s0,.L0f0a0524
    # Line 486
    move	$a3,$s0
    ld	$s4,48($sp)
    ld	$ra,56($sp)
.L0f0a0574:
    # Line 497
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0a0588:
    # Line 487
    la	$t9,gl_comm_fatal_error
    bal gl_comm_fatal_error
    ld	$a0,0($sp)
    b	.L0f0a0550
    # Line 488
    lw	$at,-20912($gp)
.L0f0a059c:
    # Line 492
    la	$t9,gl_dgl_info
    ld	$a2,16($sp)
    ld	$a1,8($sp)
    jalr	$t9
    li	$a0,1
    # Line 493
    la	$t9,gl_comm_close
    bal gl_comm_close
    move	$a0,$zero
    # Line 494
    la	$t9,exit
    jalr	$t9
    li	$a0,5
    b	.L0f0a0564
    nop
.end comm_fillbuffer

# Function: gl_comm_read_data
# Declared: Line 502 (Source lines: 504-538)
# Address: 0x0f0a05d0 - 0x0f0a0754 (Size: 388 bytes, Frame: 240)
.globl gl_comm_read_data
.ent gl_comm_read_data
gl_comm_read_data:
    # Line 504
    addiu	$sp,$sp,-112
    sd	$gp,72($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,11384 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    sd	$s5,80($sp)
    beqz	$at,.L0f0a073c
    move	$s5,$a0
.L0f0a05f8:
    # Line 510
    lw	$v1,-20888($gp)
    sd	$ra,32($sp)
    addiu	$v1,$v1,1
    beqz	$s5,.L0f0a0618
    sw	$v1,-20888($gp)
    # Line 518
    la	$t9,gl_d_dglreturndata
    jalr	$t9
    nop
.L0f0a0618:
    # Line 519
    la	$t9,gl_comm_flush
    bal gl_comm_flush
    nop
    sd	$s0,40($sp)
    sd	$s2,16($sp)
    # Line 521
    la	$s2,comm_buffer
    sd	$s7,56($sp)
    sd	$s1,48($sp)
    sd	$s8,64($sp)
    la	$s8,sub_0f0a0000
    sd	$s6,24($sp)
    lui	$s6,0xefff
    addiu	$s8,$s8,164
    ori	$s6,$s6,0xffff
    lui	$s7,0x1000
    move	$s0,$zero
    la	$s1,sub_0f0a0000
    sd	$s3,0($sp)
    sd	$s4,8($sp)
    addiu	$s1,$s1,1236
.L0f0a0668:
    # Line 522
    li	$a1,4
    lw	$a0,0($s2)
    bal gl_comm_callback
    move	$t9,$s1
    # Line 523
    lw	$s3,0($s2)
    lw	$s3,0($s3)
    # Line 527
    move	$t9,$s8
    and	$s4,$s3,$s6
    addu	$s5,$s4,$s0
    bal gl_comm_makeroom
    addiu	$a0,$s5,4
    # Line 528
    lw	$a0,0($s2)
    move	$a1,$s4
    move	$t9,$s1
    addu	$a0,$a0,$s0
    bal gl_comm_callback
    addiu	$a0,$a0,4
    # Line 529
    and	$a2,$s3,$s7
    bnez	$a2,.L0f0a06c8
    move	$s0,$s5
    # Line 532
    lw	$at,-20920($gp)
    addiu	$at,$at,1
    b	.L0f0a0668
    sw	$at,-20920($gp)
.L0f0a06c8:
    # Line 538
    ld	$s1,48($sp)
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s5,80($sp)
    ld	$s6,24($sp)
    ld	$s7,56($sp)
    ld	$s8,64($sp)
    ld	$ra,32($sp)
    # Line 535
    lw	$a0,0($s2)
    # Line 536
    la	$a3,comm_curbufpos
    # Line 534
    lw	$v1,-20928($gp)
    # Line 535
    sw	$s0,0($a0)
    # Line 538
    ld	$s0,40($sp)
    # Line 534
    addiu	$v1,$v1,1
    sw	$v1,-20928($gp)
    # Line 537
    la	$v1,comm_endbuffer
    la	$v0,comm_stdsize
    ld	$gp,72($sp)
    # Line 536
    lw	$a0,0($s2)
    # Line 538
    ld	$s2,16($sp)
    # Line 537
    lw	$v0,0($v0)
    # Line 538
    addiu	$sp,$sp,112
    # Line 536
    addiu	$a2,$a0,4
    sw	$a2,0($a3)
    # Line 537
    addu	$v0,$v0,$a0
    addiu	$v0,$v0,-24
    sw	$v0,0($v1)
    # Line 538
    jr	$ra
    move	$v0,$zero
.L0f0a073c:
    # Line 509
    la	$t9,gl_comm_default_init
    sd	$ra,32($sp)
    bal gl_comm_default_init
    nop
    b	.L0f0a05f8
    ld	$ra,32($sp)
.end gl_comm_read_data

# Function: gl_comm_pushbuffer
# Declared: Line 548 (Source lines: 549-560)
# Address: 0x0f0a0754 - 0x0f0a0824 (Size: 208 bytes, Frame: 16)
.globl gl_comm_pushbuffer
.ent gl_comm_pushbuffer
gl_comm_pushbuffer:
    # Line 549
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,10996 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a2,comm_save_flag
    lw	$a3,0($a2)
    beqz	$a3,.L0f0a0790
    sd	$ra,8($sp)
    # Line 551
    la	$t9,gl_dgl_internal_error
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,30656
    la	$a2,comm_save_flag
    lw	$a3,0($a2)
.L0f0a0790:
    la	$a0,comm_stdsize
    # Line 557
    la	$t9,malloc
    lw	$a0,0($a0)
    # Line 556
    la	$a5,comm_save_curbufpos
    # Line 554
    lw	$a1,-20884($gp)
    # Line 557
    sw	$a0,-20884($gp)
    # Line 551
    la	$a4,comm_curbufpos
    # Line 552
    addiu	$a3,$a3,1
    sw	$a3,0($a2)
    # Line 551
    la	$a3,comm_endbuffer
    # Line 556
    lw	$a4,0($a4)
    # Line 554
    la	$a2,comm_save_bufsize
    # Line 555
    lw	$a3,0($a3)
    # Line 556
    sw	$a4,0($a5)
    # Line 554
    sw	$a1,0($a2)
    # Line 551
    la	$a1,comm_buffer
    # Line 555
    la	$a4,comm_save_endbuffer
    # Line 553
    la	$a2,comm_save_buffer
    lw	$a1,0($a1)
    # Line 555
    sw	$a3,0($a4)
    # Line 557
    jalr	$t9
    # Line 553
    sw	$a1,0($a2)
    la	$a0,comm_curbufpos
    la	$ra,comm_stdsize
    la	$v1,comm_buffer
    la	$at,comm_endbuffer
    # Line 559
    lw	$ra,0($ra)
    ld	$gp,0($sp)
    # Line 557
    sw	$v0,0($v1)
    # Line 559
    addu	$ra,$ra,$v0
    addiu	$ra,$ra,-24
    sw	$ra,0($at)
    # Line 560
    ld	$ra,8($sp)
    # Line 558
    addiu	$v1,$v0,4
    sw	$v1,0($a0)
    # Line 560
    jr	$ra
    addiu	$sp,$sp,16
.end gl_comm_pushbuffer

# Function: gl_comm_popbuffer
# Declared: Line 563 (Source lines: 564-574)
# Address: 0x0f0a0824 - 0x0f0a08bc (Size: 152 bytes, Frame: 16)
.globl gl_comm_popbuffer
.ent gl_comm_popbuffer
gl_comm_popbuffer:
    # Line 564
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff9 (gp disp hi)
    # addiu	v0,v0,10788 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$v0,comm_save_flag
    # Line 565
    lw	$at,0($v0)
    sd	$ra,8($sp)
    addiu	$at,$at,-1
    beqz	$at,.L0f0a0860
    sw	$at,0($v0)
    # Line 567
    la	$t9,gl_dgl_internal_error
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,30688
.L0f0a0860:
    # Line 569
    la	$t9,free
    # Line 567
    la	$a0,comm_buffer
    # Line 569
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,8($sp)
    # Line 571
    la	$at,comm_save_bufsize
    # Line 573
    la	$v1,comm_save_curbufpos
    la	$a0,comm_curbufpos
    # Line 571
    lw	$at,0($at)
    # Line 573
    lw	$v1,0($v1)
    # Line 571
    sw	$at,-20884($gp)
    la	$a2,comm_buffer
    # Line 573
    sw	$v1,0($a0)
    # Line 572
    la	$v1,comm_endbuffer
    # Line 570
    la	$a1,comm_save_buffer
    # Line 572
    la	$v0,comm_save_endbuffer
    ld	$gp,0($sp)
    # Line 570
    lw	$a1,0($a1)
    # Line 572
    lw	$v0,0($v0)
    # Line 574
    addiu	$sp,$sp,16
    # Line 570
    sw	$a1,0($a2)
    # Line 574
    jr	$ra
    # Line 572
    sw	$v0,0($v1)
.end gl_comm_popbuffer

# Function: comm_bad_gfile
# Declared: Line 580 (Source lines: 581-583)
# Address: 0x0f0a08bc - 0x0f0a08fc (Size: 64 bytes, Frame: 16)
.ent comm_bad_gfile
comm_bad_gfile:
    # Line 581
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a2,0xfff9
    addiu	$a2,$a2,10636
    addu	$gp,$t9,$a2
    # Line 582
    la	$t9,gl_dgl_error
    la	$a1,sub_0f020000
    addiu	$a0,$gp,-15272
    jalr	$t9
    addiu	$a1,$a1,30720
    # Line 583
    ld	$ra,0($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end comm_bad_gfile

# Function: gl_comm_fatal_error
# Declared: Line 595 (Source lines: 597-605)
# Address: 0x0f0a08fc - 0x0f0a0954 (Size: 88 bytes, Frame: 48)
.globl gl_comm_fatal_error
.ent gl_comm_fatal_error
gl_comm_fatal_error:
    # Line 597
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff9
    addiu	$ra,$ra,10572
    addu	$gp,$t9,$ra
    # Line 601
    la	$t9,gl_dgl_perror
    # Line 600
    la	$s8,errno
    # Line 601
    jalr	$t9
    # Line 600
    lw	$s8,0($s8)
    # Line 602
    la	$t9,gl_comm_close
    bal gl_comm_close
    move	$a0,$zero
    # Line 603
    la	$t9,exit
    jalr	$t9
    move	$a0,$s8
    # Line 605
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_comm_fatal_error

# Function: gl_parse_hostname
# Declared: Line 633 (Source lines: 636-658)
# Address: 0x0f0a0954 - 0x0f0a0a18 (Size: 196 bytes, Frame: 208)
.globl gl_parse_hostname
.ent gl_parse_hostname
gl_parse_hostname:
    # Line 636
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$gp,0($sp)
    lui	$at,0xfff9
    addiu	$at,$at,10484
    beqz	$a1,.L0f0a0980
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 643
    sw	$zero,0($s1)
.L0f0a0980:
    beqz	$s0,.L0f0a0994
    # Line 650
    la	$t9,strchr
    sd	$ra,32($sp)
    # Line 644
    sw	$zero,0($s0)
    # Line 650
    la	$t9,strchr
.L0f0a0994:
    sd	$ra,32($sp)
    jalr	$t9
    li	$a1,58
    beqz	$v0,.L0f0a09d4
    ld	$ra,32($sp)
    # Line 651
    addiu	$a0,$v0,1
    bnez	$s1,.L0f0a09ec
    move	$a2,$a0
.L0f0a09b4:
    # Line 654
    la	$t9,strchr
    move	$a0,$a2
    jalr	$t9
    li	$a1,46
    beqz	$v0,.L0f0a09d4
    ld	$ra,32($sp)
    bnez	$s0,.L0f0a0a04
    # Line 656
    la	$t9,atoi
.L0f0a09d4:
    # Line 658
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0a09ec:
    # Line 653
    la	$t9,atoi
    jalr	$t9
    sd	$a2,24($sp)
    sw	$v0,0($s1)
    b	.L0f0a09b4
    ld	$a2,24($sp)
.L0f0a0a04:
    # Line 656
    jalr	$t9
    addiu	$a0,$v0,1
    sw	$v0,0($s0)
    b	.L0f0a09d4
    ld	$ra,32($sp)
.end gl_parse_hostname

