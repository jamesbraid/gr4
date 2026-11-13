# Source: sgionly.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c sgionly.c -o sgionly.T
# Total Functions: 14

.text

# Function: gl_d_gl_sincos
# Declared: Line 32 (Source lines: 41-52)
# Address: 0x0f10b01c - 0x0f10b09c (Size: 128 bytes, Frame: 192)
.globl gl_d_gl_sincos
.ent gl_d_gl_sincos
gl_d_gl_sincos:
    # Line 41
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$gp,16($sp)
    lui	$a3,0xfff3
    addiu	$a3,$a3,-32212
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    sd	$a2,24($sp)
    # Line 43
    lw	$a2,0($v0)
    # Line 44
    li	$v1,455
    # Line 49
    la	$t9,gl_comm_read_data
    # Line 45
    sw	$a0,4($a2)
    # Line 49
    li	$a0,1
    # Line 44
    sw	$v1,0($a2)
    # Line 48
    addiu	$at,$a2,8
    # Line 49
    jalr	$t9
    # Line 48
    sw	$at,0($v0)
    # Line 50
    la	$ra,comm_buffer
    lw	$at,0($ra)
    lwc1	$f1,4($at)
    swc1	$f1,0($s8)
    # Line 51
    lw	$ra,0($ra)
    ld	$s8,24($sp)
    lwc1	$f0,8($ra)
    ld	$gp,16($sp)
    # Line 52
    ld	$ra,0($sp)
    # Line 51
    swc1	$f0,0($s8)
    # Line 52
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_d_gl_sincos

# Function: gl_d_gl_readscreen
# Declared: Line 54 (Source lines: 64-83)
# Address: 0x0f10b09c - 0x0f10b1a0 (Size: 260 bytes, Frame: 208)
.globl gl_d_gl_readscreen
.ent gl_d_gl_readscreen
gl_d_gl_readscreen:
    # Line 64
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a3,16($sp)
    sd	$a2,8($sp)
    sd	$a1,24($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-32340 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$a5,comm_curbufpos
    # Line 66
    la	$at,comm_endbuffer
    sd	$s2,0($sp)
    lw	$a6,0($a5)
    lw	$at,0($at)
    # Line 64
    dsll32	$s2,$a0,0x10
    # Line 66
    addiu	$v0,$a6,32
    sltu	$at,$at,$v0
    beqz	$at,.L0f10b0fc
    # Line 64
    dsra32	$s2,$s2,0x10
    # Line 67
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$a5,comm_curbufpos
    lw	$a6,0($a5)
.L0f10b0fc:
    # Line 77
    li	$a0,1
    # Line 75
    sw	$s2,28($a6)
    # Line 73
    sw	$s2,20($a6)
    # Line 71
    sw	$s2,12($a6)
    # Line 69
    sh	$s2,4($a6)
    # Line 76
    addiu	$v1,$a6,32
    # Line 68
    li	$a2,456
    # Line 70
    li	$a1,-1
    # Line 74
    sw	$a1,24($a6)
    # Line 72
    sw	$a1,16($a6)
    # Line 77
    la	$t9,gl_comm_read_data
    # Line 70
    sw	$a1,8($a6)
    # Line 68
    sw	$a2,0($a6)
    # Line 77
    jalr	$t9
    # Line 76
    sw	$v1,0($a5)
    ld	$a0,24($sp)
    # Line 79
    la	$a1,comm_buffer
    la	$a2,gl_mem_copy_array
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    ld	$s2,8($sp)
    jalr	$t9
    addiu	$a1,$a1,8
    # Line 80
    la	$t9,gl_mem_unpack_array
    la	$a2,gl_mem_copy_array
    # Line 79
    move	$a1,$v0
    # Line 80
    jalr	$t9
    move	$a0,$s2
    la	$a2,gl_mem_copy_array
    # Line 81
    la	$t9,gl_mem_unpack_array
    # Line 80
    move	$a1,$v0
    # Line 81
    ld	$a0,16($sp)
    jalr	$t9
    ld	$s2,0($sp)
    la	$v0,comm_buffer
    # Line 83
    lw	$v0,0($v0)
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_gl_readscreen

# Function: gl_d_gl_resetls
# Declared: Line 86 (Source lines: 93-100)
# Address: 0x0f10b1a0 - 0x0f10b204 (Size: 100 bytes, Frame: 32)
.globl gl_d_gl_resetls
.ent gl_d_gl_resetls
gl_d_gl_resetls:
    # Line 93
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-32600 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$v1,comm_curbufpos
    # Line 95
    lw	$v0,0($v1)
    # Line 96
    li	$a1,457
    # Line 98
    la	$at,comm_endbuffer
    # Line 97
    sw	$a0,4($v0)
    # Line 96
    sw	$a1,0($v0)
    # Line 98
    lw	$at,0($at)
    addiu	$v0,$v0,8
    sltu	$at,$at,$v0
    bnez	$at,.L0f10b1ec
    sw	$v0,0($v1)
.L0f10b1e0:
    ld	$gp,0($sp)
    # Line 100
    jr	$ra
    addiu	$sp,$sp,32
.L0f10b1ec:
    # Line 99
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f10b1e0
    ld	$ra,8($sp)
.end gl_d_gl_resetls

# Function: gl_d_gl_misc
# Declared: Line 102 (Source lines: 113-136)
# Address: 0x0f10b204 - 0x0f10b364 (Size: 352 bytes, Frame: 240)
.globl gl_d_gl_misc
.ent gl_d_gl_misc
gl_d_gl_misc:
    # Line 113
    addiu	$sp,$sp,-112
    sd	$a4,16($sp)
    sd	$s0,8($sp)
    sd	$gp,24($sp)
    # lui	v1,0xfff3 (gp disp hi)
    # addiu	v1,v1,-32700 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a7,comm_curbufpos
    la	$t0,comm_endbuffer
    move	$s0,$a2
    lw	$t1,0($a7)
    lw	$at,0($t0)
    sd	$s1,0($sp)
    addiu	$v0,$t1,104
    sltu	$at,$at,$v0
    bnez	$at,.L0f10b334
    move	$s1,$a0
.L0f10b248:
    # Line 117
    move	$v0,$t1
    # Line 120
    sw	$a1,8($t1)
    # Line 119
    sw	$s1,4($t1)
    # Line 122
    li	$a5,-4
    addiu	$a2,$a1,3
    and	$a2,$a2,$a5
    # Line 118
    li	$a5,459
    sw	$a5,0($t1)
    # Line 122
    bnez	$s0,.L0f10b2fc
    sw	$a2,12($t1)
    ld	$s1,0($sp)
    sd	$ra,32($sp)
    ld	$s0,8($sp)
    # Line 124
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f10b284:
    # Line 132
    li	$a0,1
    # Line 129
    sw	$a3,8($v0)
    # Line 127
    sw	$a3,0($v0)
    # Line 131
    la	$v1,comm_stdsize
    # Line 126
    la	$a1,comm_buffer
    # Line 128
    li	$a2,-1
    sw	$a2,4($v0)
    # Line 130
    addiu	$a2,$v0,12
    # Line 131
    lw	$a1,0($a1)
    lw	$v1,0($v1)
    # Line 130
    sw	$a2,0($a7)
    # Line 132
    la	$t9,gl_comm_read_data
    # Line 131
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 132
    jalr	$t9
    # Line 131
    sw	$v1,0($t0)
    la	$a1,comm_buffer
    la	$a2,gl_mem_copy_array
    # Line 134
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    ld	$a0,16($sp)
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    # Line 136
    lw	$v0,0($v0)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,112
.L0f10b2fc:
    # Line 126
    li	$a4,104
    move	$a1,$s0
    sd	$a3,40($sp)
    # Line 124
    la	$a3,gl_mem_copy_array
    # Line 126
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,16
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s1,0($sp)
    la	$a7,comm_curbufpos
    la	$t0,comm_endbuffer
    ld	$a3,40($sp)
    b	.L0f10b284
    ld	$s0,8($sp)
.L0f10b334:
    # Line 117
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
    b	.L0f10b248
    lw	$t1,0($a7)
.end gl_d_gl_misc

# Function: gl_d_gl_scrrect
# Declared: Line 139 (Source lines: 150-162)
# Address: 0x0f10b364 - 0x0f10b434 (Size: 208 bytes, Frame: 240)
.globl gl_d_gl_scrrect
.ent gl_d_gl_scrrect
gl_d_gl_scrrect:
    # Line 150
    addiu	$sp,$sp,-112
    sd	$gp,8($sp)
    # lui	v1,0xfff2 (gp disp hi)
    # addiu	v1,v1,32484 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a6,comm_curbufpos
    la	$a7,comm_endbuffer
    # Line 152
    lw	$t0,0($a6)
    lw	$at,0($a7)
    sd	$s1,0($sp)
    addiu	$v0,$t0,24
    sltu	$at,$at,$v0
    bnez	$at,.L0f10b3dc
    # Line 150
    move	$s1,$a0
.L0f10b39c:
    # Line 159
    sw	$a4,20($t0)
    # Line 158
    sw	$a3,16($t0)
    # Line 157
    sw	$a2,12($t0)
    # Line 156
    sw	$a1,8($t0)
    # Line 155
    sw	$s1,4($t0)
    # Line 154
    li	$at,462
    sw	$at,0($t0)
    # Line 160
    lw	$a5,0($a7)
    addiu	$s1,$t0,24
    sw	$s1,0($a6)
    sltu	$a5,$a5,$s1
    bnez	$a5,.L0f10b41c
    ld	$s1,0($sp)
.L0f10b3d0:
    ld	$gp,8($sp)
    # Line 162
    jr	$ra
    addiu	$sp,$sp,112
.L0f10b3dc:
    sd	$a1,40($sp)
    sd	$a2,32($sp)
    # Line 153
    la	$t9,gl_comm_flush
    sd	$a3,24($sp)
    sd	$ra,48($sp)
    jalr	$t9
    sd	$a4,16($sp)
    la	$a7,comm_endbuffer
    ld	$a4,16($sp)
    ld	$a3,24($sp)
    ld	$a2,32($sp)
    ld	$a1,40($sp)
    la	$a6,comm_curbufpos
    ld	$ra,48($sp)
    b	.L0f10b39c
    lw	$t0,0($a6)
.L0f10b41c:
    # Line 161
    la	$t9,gl_comm_flush
    sd	$ra,48($sp)
    jalr	$t9
    ld	$s1,0($sp)
    b	.L0f10b3d0
    ld	$ra,48($sp)
.end gl_d_gl_scrrect

# Function: gl_d_gl_setdisplay
# Declared: Line 164 (Source lines: 171-187)
# Address: 0x0f10b434 - 0x0f10b540 (Size: 268 bytes, Frame: 48)
.globl gl_d_gl_setdisplay
.ent gl_d_gl_setdisplay
gl_d_gl_setdisplay:
    # Line 171
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v1,0xfff2 (gp disp hi)
    # addiu	v1,v1,32276 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$ra,24($sp)
    lw	$v0,0($v0)
    lw	$at,0($at)
    sd	$s1,0($sp)
    addiu	$v1,$v0,84
    sltu	$at,$at,$v1
    bnez	$at,.L0f10b524
    move	$s1,$a0
.L0f10b470:
    sd	$s0,16($sp)
    # Line 175
    move	$s0,$v0
    # Line 177
    la	$t9,strlen
    move	$a0,$s1
    # Line 176
    li	$a1,458
    # Line 177
    jalr	$t9
    # Line 176
    sw	$a1,0($v0)
    # Line 178
    li	$a3,-4
    addiu	$a2,$v0,4
    and	$a2,$a2,$a3
    bnez	$s1,.L0f10b500
    sw	$a2,4($s0)
    ld	$s1,0($sp)
    # Line 180
    addu	$s0,$a2,$s0
    addiu	$s0,$s0,8
.L0f10b4ac:
    # Line 185
    li	$a0,1
    # Line 182
    la	$at,comm_buffer
    # Line 184
    la	$t8,comm_stdsize
    la	$v0,comm_curbufpos
    lw	$at,0($at)
    lw	$t8,0($t8)
    # Line 185
    la	$t9,gl_comm_read_data
    la	$ra,comm_endbuffer
    # Line 184
    addu	$t8,$t8,$at
    addiu	$t8,$t8,-24
    sw	$t8,0($ra)
    # Line 185
    jalr	$t9
    # Line 183
    sw	$s0,0($v0)
    la	$v0,comm_buffer
    ld	$gp,8($sp)
    # Line 187
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10b500:
    # Line 182
    li	$a4,84
    la	$t9,gl_mem_pack_array
    la	$a3,gl_mem_copy_array
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$s0,8
    move	$s0,$v0
    b	.L0f10b4ac
    ld	$s1,0($sp)
.L0f10b524:
    # Line 175
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$v0,comm_curbufpos
    sd	$s0,16($sp)
    b	.L0f10b470
    lw	$v0,0($v0)
.end gl_d_gl_setdisplay

# Function: gl_d_gl_glx_getconfig
# Declared: Line 190 (Source lines: 202-226)
# Address: 0x0f10b540 - 0x0f10b6b0 (Size: 368 bytes, Frame: 240)
.globl gl_d_gl_glx_getconfig
.ent gl_d_gl_glx_getconfig
gl_d_gl_glx_getconfig:
    # Line 202
    move	$t0,$a2
    addiu	$sp,$sp,-112
    sd	$gp,16($sp)
    # lui	v1,0xfff2 (gp disp hi)
    # addiu	v1,v1,32008 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$t1,comm_curbufpos
    la	$t2,comm_endbuffer
    sd	$a5,0($sp)
    lw	$t3,0($t1)
    lw	$at,0($t2)
    sd	$s0,8($sp)
    addiu	$v0,$t3,108
    sltu	$at,$at,$v0
    bnez	$at,.L0f10b670
    move	$s0,$a3
.L0f10b580:
    # Line 206
    move	$v0,$t3
    # Line 210
    sw	$t0,12($t3)
    # Line 209
    sw	$a1,8($t3)
    # Line 208
    sw	$a0,4($t3)
    # Line 212
    sll	$a2,$t0,0x2
    # Line 207
    li	$a6,502
    sw	$a6,0($t3)
    # Line 212
    li	$a6,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a6
    bnez	$s0,.L0f10b63c
    sw	$a2,16($t3)
    sd	$ra,24($sp)
    ld	$s0,0($sp)
    # Line 214
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,20
.L0f10b5c0:
    # Line 222
    li	$a0,1
    # Line 217
    sw	$a4,0($v0)
    # Line 221
    la	$v1,comm_stdsize
    # Line 216
    la	$a1,comm_buffer
    # Line 218
    sll	$a2,$a4,0x2
    sw	$a2,4($v0)
    # Line 219
    sw	$a2,8($v0)
    # Line 220
    addiu	$a2,$v0,12
    # Line 221
    lw	$a1,0($a1)
    lw	$v1,0($v1)
    # Line 220
    sw	$a2,0($t1)
    # Line 222
    la	$t9,gl_comm_read_data
    # Line 221
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 222
    jalr	$t9
    # Line 221
    sw	$v1,0($t2)
    la	$a1,comm_buffer
    # Line 224
    move	$a0,$s0
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    la	$a2,gl_mem_ntoh_long_array
    jalr	$t9
    addiu	$a1,$a1,8
    la	$v0,comm_buffer
    ld	$gp,16($sp)
    # Line 226
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$s0,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,112
.L0f10b63c:
    sd	$a4,32($sp)
    # Line 216
    li	$a4,108
    la	$a3,gl_mem_hton_long_array
    la	$t9,gl_mem_pack_array
    move	$a1,$s0
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a0,$v0,20
    la	$t1,comm_curbufpos
    la	$t2,comm_endbuffer
    ld	$a4,32($sp)
    b	.L0f10b5c0
    ld	$s0,0($sp)
.L0f10b670:
    sd	$a0,56($sp)
    sd	$a1,48($sp)
    # Line 206
    la	$t9,gl_comm_flush
    sd	$t0,40($sp)
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a4,32($sp)
    la	$t2,comm_endbuffer
    ld	$ra,24($sp)
    ld	$a4,32($sp)
    ld	$t0,40($sp)
    ld	$a1,48($sp)
    la	$t1,comm_curbufpos
    ld	$a0,56($sp)
    b	.L0f10b580
    lw	$t3,0($t1)
.end gl_d_gl_glx_getconfig

# Function: gl_d_gl_glx_link
# Declared: Line 229 (Source lines: 238-256)
# Address: 0x0f10b6b0 - 0x0f10b7d0 (Size: 288 bytes, Frame: 208)
.globl gl_d_gl_glx_link
.ent gl_d_gl_glx_link
gl_d_gl_glx_link:
    # Line 238
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	v1,0xfff2 (gp disp hi)
    # addiu	v1,v1,31640 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    move	$s0,$a2
    lw	$a7,0($a5)
    lw	$at,0($a6)
    sd	$s2,8($sp)
    addiu	$v0,$a7,92
    sltu	$at,$at,$v0
    bnez	$at,.L0f10b7a8
    move	$s2,$a0
.L0f10b6f0:
    # Line 242
    move	$v0,$a7
    # Line 245
    sw	$a1,8($a7)
    # Line 244
    sw	$s2,4($a7)
    # Line 247
    sll	$a2,$a1,0x2
    # Line 243
    li	$a3,503
    sw	$a3,0($a7)
    # Line 247
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    bnez	$s0,.L0f10b778
    sw	$a2,12($a7)
    ld	$s2,8($sp)
    sd	$ra,24($sp)
    ld	$s0,0($sp)
    # Line 249
    addu	$v0,$a2,$v0
    addiu	$v0,$v0,16
.L0f10b730:
    # Line 251
    la	$a1,comm_buffer
    # Line 253
    la	$v1,comm_stdsize
    # Line 254
    li	$a0,1
    # Line 253
    lw	$a1,0($a1)
    lw	$v1,0($v1)
    # Line 252
    sw	$v0,0($a5)
    # Line 254
    la	$t9,gl_comm_read_data
    # Line 253
    addu	$v1,$v1,$a1
    addiu	$v1,$v1,-24
    # Line 254
    jalr	$t9
    # Line 253
    sw	$v1,0($a6)
    la	$v0,comm_buffer
    # Line 256
    lw	$v0,0($v0)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,80
.L0f10b778:
    # Line 251
    li	$a4,92
    la	$a3,gl_mem_hton_long_array
    move	$a1,$s0
    la	$t9,gl_mem_pack_array
    addiu	$a0,$v0,16
    sd	$ra,24($sp)
    jalr	$t9
    ld	$s2,8($sp)
    la	$a5,comm_curbufpos
    la	$a6,comm_endbuffer
    b	.L0f10b730
    ld	$s0,0($sp)
.L0f10b7a8:
    # Line 242
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    sd	$a1,32($sp)
    la	$a6,comm_endbuffer
    ld	$ra,24($sp)
    la	$a5,comm_curbufpos
    ld	$a1,32($sp)
    b	.L0f10b6f0
    lw	$a7,0($a5)
.end gl_d_gl_glx_link

# Function: gl_d_gl_glx_unlink
# Declared: Line 259 (Source lines: 267-276)
# Address: 0x0f10b7d0 - 0x0f10b830 (Size: 96 bytes, Frame: 32)
.globl gl_d_gl_glx_unlink
.ent gl_d_gl_glx_unlink
gl_d_gl_glx_unlink:
    # Line 267
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff2
    addiu	$a3,$a3,31352
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 269
    lw	$v1,0($v0)
    # Line 270
    li	$a2,504
    # Line 274
    la	$t9,gl_comm_read_data
    # Line 271
    sw	$a0,4($v1)
    # Line 274
    li	$a0,1
    # Line 272
    sw	$a1,8($v1)
    # Line 270
    sw	$a2,0($v1)
    # Line 273
    addiu	$at,$v1,12
    # Line 274
    jalr	$t9
    # Line 273
    sw	$at,0($v0)
    # Line 275
    la	$v0,comm_buffer
    # Line 276
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_gl_glx_unlink

# Function: gl_d_gl_glx_winset
# Declared: Line 279 (Source lines: 287-296)
# Address: 0x0f10b830 - 0x0f10b890 (Size: 96 bytes, Frame: 32)
.globl gl_d_gl_glx_winset
.ent gl_d_gl_glx_winset
gl_d_gl_glx_winset:
    # Line 287
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a3,0xfff2
    addiu	$a3,$a3,31256
    addu	$gp,$t9,$a3
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 289
    lw	$v1,0($v0)
    # Line 290
    li	$a2,505
    # Line 294
    la	$t9,gl_comm_read_data
    # Line 291
    sw	$a0,4($v1)
    # Line 294
    li	$a0,1
    # Line 292
    sw	$a1,8($v1)
    # Line 290
    sw	$a2,0($v1)
    # Line 293
    addiu	$at,$v1,12
    # Line 294
    jalr	$t9
    # Line 293
    sw	$at,0($v0)
    # Line 295
    la	$v0,comm_buffer
    # Line 296
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,4($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_gl_glx_winset

# Function: gl_d_gl_pixmode_misc
# Declared: Line 299 (Source lines: 307-318)
# Address: 0x0f10b890 - 0x0f10b914 (Size: 132 bytes, Frame: 48)
.globl gl_d_gl_pixmode_misc
.ent gl_d_gl_pixmode_misc
gl_d_gl_pixmode_misc:
    # Line 307
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a1
    sd	$gp,16($sp)
    lui	$a4,0xfff2
    addiu	$a4,$a4,31160
    addu	$gp,$t9,$a4
    la	$v0,comm_curbufpos
    sd	$ra,0($sp)
    # Line 310
    li	$a3,512
    # Line 309
    lw	$a2,0($v0)
    # Line 312
    li	$v1,12
    # Line 315
    la	$t9,gl_comm_read_data
    # Line 311
    sw	$a0,4($a2)
    # Line 315
    li	$a0,1
    # Line 313
    sw	$v1,12($a2)
    # Line 312
    sw	$v1,8($a2)
    # Line 310
    sw	$a3,0($a2)
    # Line 314
    addiu	$at,$a2,16
    # Line 315
    jalr	$t9
    # Line 314
    sw	$at,0($v0)
    # Line 317
    la	$a1,comm_buffer
    move	$a0,$s8
    la	$t9,gl_mem_unpack_array
    lw	$a1,0($a1)
    la	$a2,gl_mem_ntoh_long_array
    jalr	$t9
    addiu	$a1,$a1,4
    # Line 318
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_gl_pixmode_misc

# Function: gl_d_gl_ms_init_pixels
# Declared: Line 320 (Source lines: 326-332)
# Address: 0x0f10b914 - 0x0f10b974 (Size: 96 bytes, Frame: 16)
.globl gl_d_gl_ms_init_pixels
.ent gl_d_gl_ms_init_pixels
gl_d_gl_ms_init_pixels:
    # Line 326
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$a1,0xfff2
    addiu	$a1,$a1,31028
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 328
    lw	$v0,0($v1)
    # Line 329
    li	$a0,535
    # Line 330
    la	$at,comm_endbuffer
    # Line 329
    sw	$a0,0($v0)
    # Line 330
    lw	$at,0($at)
    addiu	$v0,$v0,4
    sltu	$at,$at,$v0
    bnez	$at,.L0f10b95c
    sw	$v0,0($v1)
.L0f10b950:
    ld	$gp,0($sp)
    # Line 332
    jr	$ra
    addiu	$sp,$sp,16
.L0f10b95c:
    # Line 331
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f10b950
    ld	$ra,8($sp)
.end gl_d_gl_ms_init_pixels

# Function: gl_d_gl_rectzoomoffset
# Declared: Line 334 (Source lines: 342-350)
# Address: 0x0f10b974 - 0x0f10b9dc (Size: 104 bytes, Frame: 32)
.globl gl_d_gl_rectzoomoffset
.ent gl_d_gl_rectzoomoffset
gl_d_gl_rectzoomoffset:
    # Line 342
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$a1,0xfff2
    addiu	$a1,$a1,30932
    addu	$gp,$t9,$a1
    la	$v1,comm_curbufpos
    # Line 344
    lw	$v0,0($v1)
    # Line 345
    li	$a0,568
    # Line 348
    la	$at,comm_endbuffer
    # Line 347
    swc1	$f13,8($v0)
    # Line 346
    swc1	$f12,4($v0)
    # Line 345
    sw	$a0,0($v0)
    # Line 348
    lw	$at,0($at)
    addiu	$v0,$v0,12
    sltu	$at,$at,$v0
    bnez	$at,.L0f10b9c4
    sw	$v0,0($v1)
.L0f10b9b8:
    ld	$gp,0($sp)
    # Line 350
    jr	$ra
    addiu	$sp,$sp,32
.L0f10b9c4:
    # Line 349
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0f10b9b8
    ld	$ra,8($sp)
.end gl_d_gl_rectzoomoffset

# Function: gl_dgl_gl_lrectproc
# Declared: Line 352 (Source lines: 364-384)
# Address: 0x0f10b9dc - 0x0f10bb40 (Size: 356 bytes, Frame: 128)
.globl gl_dgl_gl_lrectproc
.ent gl_dgl_gl_lrectproc
gl_dgl_gl_lrectproc:
    # Line 364
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$s1,24($sp)
    move	$s1,$a5
    sd	$s0,32($sp)
    move	$s0,$a4
    sd	$a3,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a2
    sd	$gp,56($sp)
    sd	$s2,16($sp)
    lui	$s2,0xfff2
    addiu	$s2,$s2,30828
    addu	$gp,$t9,$s2
    la	$t1,comm_curbufpos
    la	$at,comm_endbuffer
    sd	$s3,0($sp)
    lw	$t1,0($t1)
    lw	$at,0($at)
    move	$s3,$a0
    addiu	$v0,$t1,108
    sltu	$at,$at,$v0
    beqz	$at,.L0f10ba50
    move	$s2,$a1
    # Line 368
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$t1,comm_curbufpos
    lw	$t1,0($t1)
.L0f10ba50:
    # Line 374
    li	$a7,108
    # Line 373
    multu	$s3,$s2
    # Line 374
    move	$a6,$s2
    move	$a5,$s3
    move	$a4,$zero
    move	$a3,$zero
    move	$a1,$s8
    addiu	$a0,$t1,16
    # Line 371
    sw	$s2,8($t1)
    # Line 370
    sw	$s3,4($t1)
    # Line 369
    li	$t2,573
    sw	$t2,0($t1)
    # Line 373
    li	$a2,-4
    # Line 374
    la	$t9,gl_mem_pack_lrect
    # Line 373
    mflo	$t0
    sll	$t0,$t0,0x2
    sd	$t0,40($sp)
    addiu	$t0,$t0,3
    and	$a2,$a2,$t0
    # Line 374
    jalr	$t9
    # Line 373
    sw	$a2,12($t1)
    # Line 381
    li	$a0,1
    li	$ra,-4
    # Line 375
    sw	$ra,0($v0)
    # Line 379
    addiu	$ra,$v0,16
    la	$t8,comm_endbuffer
    # Line 378
    sw	$s1,12($v0)
    # Line 377
    sw	$s0,8($v0)
    # Line 376
    ld	$t9,40($sp)
    # Line 380
    la	$t3,comm_stdsize
    # Line 374
    la	$s8,comm_buffer
    # Line 376
    sw	$t9,4($v0)
    la	$at,comm_curbufpos
    # Line 380
    lw	$s8,0($s8)
    lw	$t3,0($t3)
    # Line 379
    sw	$ra,0($at)
    # Line 381
    la	$t9,gl_comm_read_data
    # Line 380
    addu	$t3,$t3,$s8
    ld	$s8,8($sp)
    addiu	$t3,$t3,-24
    # Line 381
    jalr	$t9
    # Line 380
    sw	$t3,0($t8)
    # Line 383
    ld	$a0,48($sp)
    move	$a5,$s1
    move	$a4,$s0
    la	$a1,comm_buffer
    move	$a3,$s2
    la	$t9,gl_mem_unpack_lrectproc
    lw	$a1,0($a1)
    move	$a2,$s3
    jalr	$t9
    addiu	$a1,$a1,4
    ld	$gp,56($sp)
    # Line 384
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,16($sp)
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_dgl_gl_lrectproc

