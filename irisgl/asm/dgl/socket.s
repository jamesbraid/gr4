# Source: ../dgl/socket.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/socket.c -o socket.T
# Total Functions: 4

.text

# Function: gl_set_socket_opts
# Declared: Line 32 (Source lines: 33-52)
# Address: 0x0f1127f4 - 0x0f1128f8 (Size: 260 bytes, Frame: 192)
.globl gl_set_socket_opts
.ent gl_set_socket_opts
gl_set_socket_opts:
    # Line 35
    li	$a2,1
    # Line 33
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    move	$s0,$a0
    # Line 38
    li	$a0,1
    # Line 35
    sw	$a2,0($sp)
    sd	$gp,16($sp)
    # Line 33
    lui	$a3,0xfff2
    addiu	$a3,$a3,2644
    addu	$gp,$t9,$a3
    # Line 38
    la	$t9,gl_dgl_info_more
    # Line 33
    la	$a1,sub_0f030000
    sd	$ra,24($sp)
    # Line 38
    jalr	$t9
    # Line 33
    addiu	$a1,$a1,-23064
    # Line 39
    move	$a0,$s0
    li	$a4,4
    la	$t9,setsockopt
    addiu	$a3,$sp,0
    li	$a2,4
    jalr	$t9
    li	$a1,0xffff
    beqz	$v0,.L0f112880
    la	$a0,sub_0f030000
    # Line 41
    la	$t9,gl_dgl_perror
    addiu	$a0,$a0,-23064
    jalr	$t9
    addiu	$a0,$a0,16
    # Line 42
    la	$v0,errno
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    ld	$s0,32($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,64
.L0f112880:
    # Line 46
    li	$a4,8
    addiu	$a3,$sp,8
    li	$a2,128
    li	$a1,0xffff
    move	$a0,$s0
    # Line 45
    li	$v1,60
    # Line 46
    la	$t9,setsockopt
    li	$a5,1
    # Line 44
    sw	$a5,8($sp)
    # Line 46
    jalr	$t9
    # Line 45
    sw	$v1,12($sp)
    # Line 46
    beqz	$v0,.L0f1128e4
    # Line 52
    ld	$s0,32($sp)
    la	$a0,sub_0f030000
    # Line 48
    la	$t9,gl_dgl_perror
    addiu	$a0,$a0,-23064
    jalr	$t9
    addiu	$a0,$a0,32
    # Line 49
    la	$v0,errno
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    ld	$s0,32($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1128e4:
    # Line 52
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_set_socket_opts

# Function: gl_socket_init
# Declared: Line 58 (Source lines: 62-142)
# Address: 0x0f1128f8 - 0x0f112c24 (Size: 812 bytes, Frame: 144)
.globl gl_socket_init
.ent gl_socket_init
gl_socket_init:
    # Line 62
    addiu	$sp,$sp,-144
    sd	$ra,40($sp)
    sd	$a3,72($sp)
    sd	$s0,104($sp)
    move	$s0,$a1
    sd	$a0,56($sp)
    sd	$gp,96($sp)
    dsll32	$at,$a2,0x10
    # Line 63
    li	$v0,1
    # Line 62
    lui	$v1,0xfff2
    addiu	$v1,$v1,2384
    sd	$v0,48($sp)
    # Line 63
    li	$v0,-1
    # Line 62
    dsra32	$at,$at,0x10
    sd	$at,88($sp)
    # Line 63
    beq	$at,$v0,.L0f112aa8
    # Line 62
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
.L0f11293c:
    # Line 91
    la	$t9,gethostbyname
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0f112a70
    # Line 101
    addiu	$a1,$sp,4
    # Line 100
    li	$a2,2
    sh	$a2,0($sp)
    # Line 101
    la	$t9,bcopy
    lw	$a0,16($v0)
    lw	$a2,12($v0)
    jalr	$t9
    lw	$a0,0($a0)
    # Line 102
    ld	$at,88($sp)
    la	$s0,sub_0f030000
    sh	$at,2($sp)
    addiu	$s0,$s0,-23064
    addiu	$v1,$s0,184
    addiu	$at,$s0,168
    addiu	$s0,$s0,136
    sd	$v1,24($sp)
    sd	$at,64($sp)
    # Line 105
    la	$t9,gl_dgl_info
.L0f112994:
    sd	$zero,32($sp)
    move	$a1,$s0
    jalr	$t9
    li	$a0,1
    # Line 106
    la	$t9,socket
    move	$a2,$zero
    li	$a1,2
    jalr	$t9
    li	$a0,2
    move	$v1,$v0
    bltz	$v0,.L0f112acc
    sd	$v0,80($sp)
    # Line 112
    la	$t9,gl_set_socket_opts
    bal gl_set_socket_opts
    move	$a0,$v0
    beqz	$v0,.L0f1129e8
    # Line 113
    ld	$ra,40($sp)
    ld	$gp,96($sp)
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f1129e8:
    # Line 118
    la	$t9,gl_dgl_info_more
    ld	$a1,64($sp)
    jalr	$t9
    li	$a0,1
    # Line 119
    la	$t9,connect
    ld	$a0,80($sp)
    li	$a2,16
    jalr	$t9
    addiu	$a1,$sp,0
    bltz	$v0,.L0f112af4
    ld	$a1,32($sp)
.L0f112a14:
    # Line 131
    bnez	$a1,.L0f112994
    # Line 105
    la	$t9,gl_dgl_info
    # Line 133
    la	$t9,gl_dgl_info_more
    addiu	$a1,$gp,-14464
    jalr	$t9
    li	$a0,1
    # Line 138
    ld	$a1,80($sp)
    # Line 137
    ld	$a2,56($sp)
    li	$ra,2
    # Line 138
    move	$a0,$a1
    # Line 136
    sw	$a1,16($a2)
    # Line 138
    la	$t9,sub_0f110000
    # Line 135
    sw	$a1,12($a2)
    # Line 137
    sw	$ra,4($a2)
    # Line 138
    addiu	$t9,$t9,11992
    bal gl_socket_queue_init
    # Line 134
    sw	$a1,20($a2)
    # Line 138
    beqz	$v0,.L0f112b94
    ld	$s0,104($sp)
    ld	$ra,40($sp)
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f112a70:
    # Line 93
    la	$a0,sub_0f030000
    move	$a2,$s0
    la	$t9,gl_dgl_error
    addiu	$a0,$a0,-23064
    addiu	$a1,$a0,112
    jalr	$t9
    addiu	$a0,$a0,96
    # Line 94
    la	$v0,h_errno
    ld	$gp,96($sp)
    ld	$ra,40($sp)
    ld	$s0,104($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,144
.L0f112aa8:
    # Line 82
    la	$t9,getservbyname
    ld	$a1,72($sp)
    jalr	$t9
    addiu	$a0,$gp,-14480
    beqz	$v0,.L0f112b64
    # Line 84
    la	$a0,sub_0f030000
    # Line 87
    lh	$v1,10($v0)
    b	.L0f11293c
    sd	$v1,88($sp)
.L0f112acc:
    # Line 108
    la	$t9,gl_dgl_perror
    jalr	$t9
    addiu	$a0,$gp,-14472
    la	$v0,errno
    ld	$gp,96($sp)
    # Line 109
    ld	$ra,40($sp)
    ld	$s0,104($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,144
.L0f112af4:
    # Line 121
    ld	$t9,56($sp)
    la	$v1,errno
    lw	$t9,32($t9)
    # Line 120
    lw	$v1,0($v1)
    # Line 121
    ld	$a0,80($sp)
    jalr	$t9
    sd	$v1,16($sp)
    # Line 122
    ld	$at,16($sp)
    la	$a4,errno
    li	$v1,146
    # Line 123
    bne	$at,$v1,.L0f112bc4
    # Line 122
    sw	$at,0($a4)
    ld	$a5,48($sp)
    # Line 123
    slti	$a5,$a5,17
    beqz	$a5,.L0f112bc4
    # Line 124
    la	$t9,gl_dgl_info_more
    ld	$a2,48($sp)
    ld	$a1,24($sp)
    jalr	$t9
    li	$a0,1
    # Line 125
    la	$t9,sleep
    jalr	$t9
    ld	$a0,48($sp)
    # Line 126
    ld	$at,48($sp)
    # Line 127
    li	$a1,1
    # Line 126
    addu	$at,$at,$at
    # Line 123
    b	.L0f112a14
    sd	$at,48($sp)
.L0f112b64:
    # Line 84
    ld	$a2,72($sp)
    la	$t9,gl_dgl_error
    addiu	$a0,$a0,-23064
    addiu	$a1,$a0,64
    jalr	$t9
    addiu	$a0,$a0,48
    # Line 85
    li	$v0,99
    ld	$ra,40($sp)
    ld	$gp,96($sp)
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f112b94:
    ld	$a1,56($sp)
    # Line 139
    la	$t9,gl_data_check_special
    move	$a0,$a1
    lw	$a2,16($a1)
    jalr	$t9
    lw	$a1,12($a1)
    beqz	$v0,.L0f112c0c
    # Line 140
    ld	$ra,40($sp)
    ld	$gp,96($sp)
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f112bc4:
    la	$a1,sub_0f030000
    # Line 129
    la	$t9,gl_dgl_info_more
    li	$a0,1
    addiu	$a1,$a1,-23064
    jalr	$t9
    addiu	$a1,$a1,208
    la	$a0,sub_0f030000
    # Line 130
    la	$t9,gl_dgl_perror
    addiu	$a0,$a0,-23064
    jalr	$t9
    addiu	$a0,$a0,232
    la	$v0,errno
    ld	$gp,96($sp)
    # Line 131
    ld	$ra,40($sp)
    ld	$s0,104($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,144
.L0f112c0c:
    # Line 142
    move	$v0,$zero
    ld	$ra,40($sp)
    ld	$gp,96($sp)
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end gl_socket_init

# Function: gl_socket_queue_init
# Declared: Line 148 (Source lines: 149-210)
# Address: 0x0f112c24 - 0x0f112ed8 (Size: 692 bytes, Frame: 128)
.globl gl_socket_queue_init
.ent gl_socket_queue_init
gl_socket_queue_init:
    # Line 149
    andi	$v0,$a1,0xffff
    # Line 153
    li	$v1,1
    # Line 149
    addiu	$sp,$sp,-128
    sd	$v1,16($sp)
    sd	$v0,80($sp)
    sd	$ra,104($sp)
    sd	$gp,96($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,1572 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 159
    la	$t9,gethostbyname
    sd	$a0,48($sp)
    addiu	$a0,$a0,200
    jalr	$t9
    sd	$a0,64($sp)
    beqz	$v0,.L0f112d90
    # Line 165
    addiu	$a1,$sp,4
    # Line 164
    li	$a2,2
    sh	$a2,0($sp)
    # Line 165
    la	$t9,bcopy
    lw	$a0,16($v0)
    lw	$a2,12($v0)
    jalr	$t9
    lw	$a0,0($a0)
    # Line 169
    li	$a0,1
    ld	$a3,80($sp)
    la	$t9,gl_dgl_info
    # Line 167
    la	$a1,sub_0f030000
    # Line 169
    move	$a2,$a3
    # Line 167
    sh	$a3,2($sp)
    addiu	$a1,$a1,-23064
    # Line 169
    jalr	$t9
    addiu	$a1,$a1,288
    la	$a4,sub_0f030000
    addiu	$a4,$a4,-23064
    addiu	$v1,$a4,368
    addiu	$at,$a4,352
    addiu	$a4,$a4,320
    sd	$v1,40($sp)
    sd	$at,56($sp)
    sd	$a4,88($sp)
    # Line 175
    la	$t9,gl_dgl_info
.L0f112ccc:
    sd	$zero,32($sp)
    ld	$a1,88($sp)
    jalr	$t9
    li	$a0,1
    # Line 176
    la	$t9,socket
    move	$a2,$zero
    li	$a1,2
    jalr	$t9
    li	$a0,2
    move	$at,$v0
    bltz	$v0,.L0f112dc4
    sd	$v0,72($sp)
    # Line 182
    la	$t9,gl_set_socket_opts
    bal gl_set_socket_opts
    move	$a0,$v0
    beqz	$v0,.L0f112d1c
    # Line 183
    ld	$ra,104($sp)
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f112d1c:
    # Line 188
    la	$t9,gl_dgl_info_more
    ld	$a1,56($sp)
    jalr	$t9
    li	$a0,1
    # Line 189
    la	$t9,connect
    ld	$a0,72($sp)
    li	$a2,16
    jalr	$t9
    addiu	$a1,$sp,0
    bltz	$v0,.L0f112de8
    ld	$a2,32($sp)
.L0f112d48:
    # Line 201
    bnez	$a2,.L0f112ccc
    # Line 175
    la	$t9,gl_dgl_info
    # Line 204
    la	$t9,gl_dgl_info_more
    addiu	$a1,$gp,-14448
    jalr	$t9
    li	$a0,1
    # Line 206
    ld	$v0,72($sp)
    la	$t9,sub_0f110000
    # Line 205
    ld	$v1,48($sp)
    # Line 206
    move	$a0,$v0
    addiu	$t9,$t9,11992
    bal gl_socket_queue_init
    # Line 205
    sw	$v0,196($v1)
    # Line 206
    beqz	$v0,.L0f112e58
    ld	$ra,104($sp)
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f112d90:
    # Line 161
    la	$a0,sub_0f030000
    ld	$a2,64($sp)
    la	$t9,gl_dgl_error
    addiu	$a0,$a0,-23064
    addiu	$a1,$a0,264
    jalr	$t9
    addiu	$a0,$a0,248
    # Line 162
    la	$v0,h_errno
    ld	$ra,104($sp)
    ld	$gp,96($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f112dc4:
    # Line 178
    la	$t9,gl_dgl_perror
    jalr	$t9
    addiu	$a0,$gp,-14456
    la	$v0,errno
    # Line 179
    ld	$ra,104($sp)
    ld	$gp,96($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f112de8:
    # Line 191
    ld	$t9,48($sp)
    la	$v1,errno
    lw	$t9,32($t9)
    # Line 190
    lw	$v1,0($v1)
    # Line 191
    ld	$a0,72($sp)
    jalr	$t9
    sd	$v1,24($sp)
    # Line 192
    ld	$at,24($sp)
    la	$a3,errno
    li	$v1,146
    # Line 193
    bne	$at,$v1,.L0f112e80
    # Line 192
    sw	$at,0($a3)
    ld	$a4,16($sp)
    # Line 193
    slti	$a4,$a4,17
    beqz	$a4,.L0f112e80
    # Line 194
    la	$t9,gl_dgl_info_more
    ld	$a2,16($sp)
    ld	$a1,40($sp)
    jalr	$t9
    li	$a0,1
    # Line 195
    la	$t9,sleep
    jalr	$t9
    ld	$a0,16($sp)
    # Line 196
    ld	$at,16($sp)
    # Line 197
    li	$a2,1
    # Line 196
    addu	$at,$at,$at
    # Line 193
    b	.L0f112d48
    sd	$at,16($sp)
.L0f112e58:
    # Line 207
    ld	$a0,48($sp)
    la	$t9,gl_data_check_special
    lw	$a1,196($a0)
    jalr	$t9
    move	$a2,$a1
    beqz	$v0,.L0f112ec4
    # Line 208
    ld	$ra,104($sp)
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f112e80:
    la	$a1,sub_0f030000
    # Line 199
    la	$t9,gl_dgl_info_more
    li	$a0,1
    addiu	$a1,$a1,-23064
    jalr	$t9
    addiu	$a1,$a1,392
    la	$a0,sub_0f030000
    # Line 200
    la	$t9,gl_dgl_perror
    addiu	$a0,$a0,-23064
    jalr	$t9
    addiu	$a0,$a0,416
    la	$v0,errno
    # Line 201
    ld	$ra,104($sp)
    ld	$gp,96($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f112ec4:
    # Line 210
    ld	$ra,104($sp)
    move	$v0,$zero
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_socket_queue_init

# Function: socket_info
# Declared: Line 216 (Source lines: 218-295)
# Address: 0x0f112ed8 - 0x0f113270 (Size: 920 bytes, Frame: 128)
.ent socket_info
socket_info:
    # Line 218
    addiu	$a1,$gp,-14480
    addiu	$sp,$sp,-128
    sd	$a0,88($sp)
    # Line 224
    li	$a0,1
    sd	$zero,64($sp)
    sd	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    la	$t9,gl_dgl_info
    sd	$zero,80($sp)
    sd	$ra,96($sp)
    jalr	$t9
    addiu	$a1,$a1,40
    beqz	$v0,.L0f112f54
    # Line 229
    addiu	$a2,$sp,0
    addiu	$a1,$sp,8
    la	$t9,getsockname
    ld	$a0,88($sp)
    # Line 228
    li	$a3,16
    # Line 229
    jalr	$t9
    # Line 228
    sw	$a3,0($sp)
    # Line 229
    beqz	$v0,.L0f113018
    # Line 230
    la	$t9,gl_dgl_perror
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-22632
    # Line 231
    la	$v0,errno
    ld	$ra,96($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f112f54:
    sd	$s0,104($sp)
    # Line 257
    la	$s0,sub_0f030000
    addiu	$s0,$s0,-23064
    # Line 261
    la	$t9,gl_dgl_info
.L0f112f64:
    addiu	$a1,$s0,608
    jalr	$t9
    li	$a0,3
    beqz	$v0,.L0f112fb0
    ld	$a3,80($sp)
    # Line 262
    la	$t9,__GLgl_dgl_printf
    jalr	$t9
    addiu	$a0,$s0,624
    # Line 265
    addiu	$a4,$sp,0
    addiu	$a3,$sp,24
    li	$a2,4
    li	$a1,0xffff
    la	$t9,getsockopt
    ld	$a0,88($sp)
    # Line 264
    li	$t8,4
    # Line 265
    jalr	$t9
    # Line 264
    sw	$t8,0($sp)
    # Line 265
    beqz	$v0,.L0f113104
    sltu	$a3,$zero,$v0
.L0f112fb0:
    ld	$a1,56($sp)
    # Line 289
    bnez	$a3,.L0f112ff4
    ld	$v1,48($sp)
    ld	$at,40($sp)
    bnez	$at,.L0f112ff8
    # Line 294
    la	$t9,gl_dgl_perror
    # Line 289
    bnez	$v1,.L0f112ff8
    # Line 294
    la	$t9,gl_dgl_perror
    # Line 289
    bnez	$a1,.L0f112ff4
    ld	$a2,64($sp)
    bnez	$a2,.L0f112ff8
    # Line 294
    la	$t9,gl_dgl_perror
    ld	$ra,96($sp)
    # Line 291
    move	$v0,$zero
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f112ff4:
    # Line 294
    la	$t9,gl_dgl_perror
.L0f112ff8:
    jalr	$t9
    addiu	$a0,$s0,720
    # Line 295
    la	$v0,errno
    ld	$ra,96($sp)
    ld	$s0,104($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f113018:
    # Line 233
    lhu	$a2,8($sp)
    la	$t9,gethostbyaddr
    li	$a1,4
    addiu	$a0,$sp,12
    jalr	$t9
    sd	$a0,72($sp)
    beqz	$v0,.L0f1130d4
    # Line 240
    lhu	$a3,10($sp)
    lw	$a2,0($v0)
    sd	$s0,104($sp)
    # Line 238
    la	$s0,sub_0f030000
    # Line 240
    la	$t9,gl_dgl_info_more
    li	$a0,1
    # Line 238
    addiu	$s0,$s0,-23064
    # Line 240
    jalr	$t9
    addiu	$a1,$s0,488
    # Line 246
    addiu	$a2,$sp,0
    addiu	$a1,$sp,8
    la	$t9,getpeername
    ld	$a0,88($sp)
    li	$t8,16
    jalr	$t9
    # Line 245
    sw	$t8,0($sp)
    # Line 246
    beqz	$v0,.L0f11309c
    # Line 247
    la	$t9,gl_dgl_perror
    jalr	$t9
    addiu	$a0,$s0,520
    # Line 248
    la	$v0,errno
    ld	$ra,96($sp)
    ld	$s0,104($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f11309c:
    # Line 250
    la	$t9,gethostbyaddr
    ld	$a0,72($sp)
    lhu	$a2,8($sp)
    jalr	$t9
    li	$a1,4
    beqz	$v0,.L0f113244
    # Line 257
    lhu	$a3,10($sp)
    la	$t9,gl_dgl_info_more
    lw	$a2,0($v0)
    addiu	$a1,$s0,576
    jalr	$t9
    li	$a0,1
    b	.L0f112f64
    # Line 261
    la	$t9,gl_dgl_info
.L0f1130d4:
    # Line 236
    la	$a0,sub_0f030000
    lw	$a2,12($sp)
    la	$t9,gl_dgl_error
    addiu	$a0,$a0,-23064
    addiu	$a1,$a0,464
    jalr	$t9
    addiu	$a0,$a0,448
    # Line 238
    la	$v0,h_errno
    ld	$ra,96($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,128
.L0f113104:
    # Line 267
    la	$t9,__GLgl_dgl_printf
    sd	$a3,80($sp)
    lw	$a1,24($sp)
    jalr	$t9
    addiu	$a0,$s0,640
    # Line 270
    addiu	$a4,$sp,0
    addiu	$a3,$sp,24
    li	$a2,8
    li	$a1,0xffff
    la	$t9,getsockopt
    ld	$a0,88($sp)
    li	$v1,4
    jalr	$t9
    # Line 269
    sw	$v1,0($sp)
    ld	$a3,80($sp)
    # Line 270
    sltu	$a1,$zero,$v0
    bnez	$v0,.L0f112fb0
    sd	$a1,40($sp)
    # Line 272
    la	$t9,__GLgl_dgl_printf
    lw	$a1,24($sp)
    jalr	$t9
    addiu	$a0,$s0,656
    # Line 275
    addiu	$a4,$sp,0
    addiu	$a3,$sp,32
    li	$a2,128
    li	$a1,0xffff
    la	$t9,getsockopt
    ld	$a0,88($sp)
    # Line 274
    li	$a5,8
    # Line 275
    jalr	$t9
    # Line 274
    sw	$a5,0($sp)
    ld	$a3,80($sp)
    # Line 275
    sltu	$at,$zero,$v0
    bnez	$v0,.L0f112fb0
    sd	$at,48($sp)
    # Line 277
    la	$t9,__GLgl_dgl_printf
    lw	$a2,36($sp)
    lw	$a1,32($sp)
    jalr	$t9
    addiu	$a0,$s0,672
    # Line 280
    addiu	$a4,$sp,0
    addiu	$a3,$sp,24
    li	$a2,4097
    li	$a1,0xffff
    la	$t9,getsockopt
    ld	$a0,88($sp)
    li	$v0,4
    jalr	$t9
    # Line 279
    sw	$v0,0($sp)
    ld	$a3,80($sp)
    # Line 280
    sltu	$v1,$zero,$v0
    bnez	$v0,.L0f112fb0
    sd	$v1,56($sp)
    # Line 282
    la	$t9,__GLgl_dgl_printf
    lw	$a1,24($sp)
    jalr	$t9
    addiu	$a0,$s0,688
    # Line 285
    addiu	$a4,$sp,0
    addiu	$a3,$sp,24
    li	$a2,4098
    li	$a1,0xffff
    la	$t9,getsockopt
    ld	$a0,88($sp)
    li	$a5,4
    jalr	$t9
    # Line 284
    sw	$a5,0($sp)
    ld	$a3,80($sp)
    # Line 285
    sltu	$at,$zero,$v0
    bnez	$v0,.L0f112fb0
    sd	$at,64($sp)
    # Line 287
    la	$t9,__GLgl_dgl_printf
    lw	$a1,24($sp)
    jalr	$t9
    addiu	$a0,$s0,704
    # Line 289
    la	$t9,__GLgl_dgl_printf
    addiu	$a0,$gp,-14480
    jalr	$t9
    addiu	$a0,$a0,48
    b	.L0f112fb0
    ld	$a3,80($sp)
.L0f113244:
    # Line 253
    la	$t9,gl_dgl_error
    lw	$a2,12($sp)
    addiu	$a1,$s0,552
    jalr	$t9
    addiu	$a0,$s0,536
    # Line 255
    la	$v0,h_errno
    ld	$ra,96($sp)
    ld	$s0,104($sp)
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,128
.end socket_info

