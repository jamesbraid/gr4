# Source: ../dgl/util.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/util.c -o util.T
# Total Functions: 6

.text

# Function: gl_util_init
# Declared: Line 47 (Source lines: 48-52)
# Address: 0x0f1247a4 - 0x0f12481c (Size: 120 bytes, Frame: 16)
.globl gl_util_init
.ent gl_util_init
gl_util_init:
    # Line 48
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-5468 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,dgl_debug
    lw	$at,0($at)
    beqz	$at,.L0f1247d4
    # Line 50
    la	$t9,getenv
.L0f1247c8:
    ld	$gp,0($sp)
    # Line 52
    jr	$ra
    addiu	$sp,$sp,16
.L0f1247d4:
    # Line 50
    la	$a0,sub_0f030000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a0,$a0,-21480
    beqz	$v0,.L0f1247c8
    ld	$ra,8($sp)
    la	$a0,sub_0f030000
    la	$t9,getenv
    addiu	$a0,$a0,-21480
    jalr	$t9
    addiu	$a0,$a0,16
    la	$t9,atoi
    jalr	$t9
    move	$a0,$v0
    la	$a1,dgl_debug
    ld	$ra,8($sp)
    b	.L0f1247c8
    sw	$v0,0($a1)
.end gl_util_init

# Function: gl_util_nametoi
# Declared: Line 57 (Source lines: 59-67)
# Address: 0x0f12481c - 0x0f1248ec (Size: 208 bytes, Frame: 48)
.globl gl_util_nametoi
.ent gl_util_nametoi
gl_util_nametoi:
    # Line 59
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$a2,0xfff1
    addiu	$a2,$a2,-5588
    addu	$gp,$t9,$a2
    la	$a1,sub_0f030000
    # Line 60
    la	$t9,strcmp
    sd	$ra,8($sp)
    # Line 59
    addiu	$a1,$a1,-21480
    # Line 60
    jalr	$t9
    addiu	$a1,$a1,32
    beqz	$v0,.L0f1248bc
    la	$a1,sub_0f030000
    # Line 61
    la	$t9,strcmp
    move	$a0,$s0
    addiu	$a1,$a1,-21480
    jalr	$t9
    addiu	$a1,$a1,48
    beqz	$v0,.L0f1248d4
    # Line 62
    la	$t9,strcmp
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$gp,-14392
    bnez	$v0,.L0f1248a0
    # Line 67
    la	$t9,atoi
    # Line 62
    ld	$ra,8($sp)
    li	$v0,3
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1248a0:
    # Line 67
    jalr	$t9
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1248bc:
    # Line 60
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1248d4:
    # Line 61
    ld	$ra,8($sp)
    li	$v0,2
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_util_nametoi

# Function: gl_util_background
# Declared: Line 74 (Source lines: 75-104)
# Address: 0x0f1248ec - 0x0f124a38 (Size: 332 bytes, Frame: 16)
.globl gl_util_background
.ent gl_util_background
gl_util_background:
    # Line 75
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-5796 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-19840($gp)
    # Line 82
    li	$a3,1
    # Line 80
    move	$v0,$zero
    # Line 75
    beqz	$at,.L0f124920
    # Line 80
    la	$a2,gl_initialized
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f124920:
    # Line 81
    lw	$v1,0($a2)
    la	$at,gl_putinbackground
    li	$v0,1
    beqz	$v1,.L0f1249bc
    sw	$v0,-19840($gp)
    # Line 82
    move	$a3,$zero
.L0f124938:
    beqz	$a3,.L0f1249ac
    la	$t9,__GLismex
    sd	$ra,8($sp)
    jalr	$t9
    nop
    beqz	$v0,.L0f1249ac
    ld	$ra,8($sp)
    li	$a1,1
    la	$a2,gl_initialized
    # Line 86
    la	$t9,fflush
    # Line 84
    la	$a0,__iob
    sw	$a1,0($a2)
    # Line 86
    jalr	$t9
    addiu	$a0,$a0,16
    # Line 87
    la	$t9,fflush
    la	$a0,__iob
    jalr	$t9
    addiu	$a0,$a0,32
    # Line 89
    la	$t9,fork
    jalr	$t9
    nop
    li	$a1,-1
    beq	$v0,$a1,.L0f1249d0
    # Line 91
    la	$t9,gl_dgl_perror
    # Line 89
    beqz	$v0,.L0f1249f0
    # Line 101
    la	$t9,exit
    jalr	$t9
    move	$a0,$zero
    ld	$ra,8($sp)
.L0f1249ac:
    # Line 104
    move	$v0,$zero
.L0f1249b0:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0f1249bc:
    # Line 81
    lw	$at,0($at)
    beqzl	$at,.L0f124938
    # Line 82
    move	$a3,$zero
    b	.L0f124938
    nop
.L0f1249d0:
    # Line 91
    jalr	$t9
    addiu	$a0,$gp,-14384
    # Line 92
    la	$t9,gl_comm_close
    jalr	$t9
    li	$a0,1
    # Line 93
    la	$t9,exit
    jalr	$t9
    li	$a0,1
.L0f1249f0:
    # Line 95
    la	$t9,signal
    li	$a1,1
    jalr	$t9
    li	$a0,2
    # Line 96
    la	$t9,signal
    li	$a1,1
    jalr	$t9
    li	$a0,3
    # Line 97
    la	$t9,signal
    move	$a1,$zero
    jalr	$t9
    li	$a0,15
    # Line 98
    la	$t9,gl_util_timer
    bal gl_util_timer
    move	$a0,$zero
    ld	$ra,8($sp)
    b	.L0f1249b0
    # Line 104
    move	$v0,$zero
.end gl_util_background

# Function: gl_util_lowcase
# Declared: Line 133 (Source lines: 142-142)
# Address: 0x0f124a38 - 0x0f124a40 (Size: 8 bytes, Frame: 0)
.globl gl_util_lowcase
.ent gl_util_lowcase
gl_util_lowcase:
    # Line 142
    jr	$ra
    nop
.end gl_util_lowcase

# Function: gl_util_timer
# Declared: Line 165 (Source lines: 167-194)
# Address: 0x0f124a40 - 0x0f124c08 (Size: 456 bytes, Frame: 128)
.globl gl_util_timer
.ent gl_util_timer
gl_util_timer:
    # Line 167
    addiu	$sp,$sp,-128
    sd	$ra,88($sp)
    sd	$gp,80($sp)
    lui	$at,0xfff1
    addiu	$at,$at,-6136
    beqz	$a0,.L0f124bd4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 179
    la	$t9,gettimeofday
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$gp,-19824
    sd	$s3,96($sp)
    # Line 180
    la	$a0,sub_0f040000
    la	$t9,times
    sdc1	$f24,72($sp)
    addiu	$a0,$a0,-28168
    jalr	$t9
    addiu	$a0,$a0,16
    la	$v1,sub_0f040000
    addiu	$v1,$v1,-28168
    # Line 183
    lw	$a1,4($v1)
    lw	$a0,20($v1)
    subu	$a0,$a0,$a1
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 182
    ldc1	$f2,_lit8_4059000000000000
    # Line 183
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f2
    # Line 182
    lw	$v0,16($v1)
    lw	$v1,0($v1)
    subu	$v0,$v0,$v1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f2
    # Line 184
    lw	$at,-19828($gp)
    lw	$ra,-19820($gp)
    subu	$ra,$ra,$at
    mtc1	$ra,$f25
    lw	$t9,-19832($gp)
    lw	$t8,-19824($gp)
    cvt.s.w	$f25,$f25
    subu	$t8,$t8,$t9
    mtc1	$t8,$f24
    ldc1	$f27,_lit8_3eb0c6f7a0b5ed8d
    cvt.d.s	$f25,$f25
    cvt.s.w	$f24,$f24
    mul.d	$f25,$f25,$f27
    cvt.d.s	$f24,$f24
    add.d	$f24,$f24,$f25
    # Line 182
    la	$s3,sub_0f030000
    cvt.s.d	$f0,$f0
    addiu	$s3,$s3,-21480
    # Line 183
    cvt.s.d	$f1,$f1
    # Line 186
    la	$t9,__GLgl_dgl_printf
    addiu	$a0,$s3,64
    # Line 184
    cvt.s.d	$f24,$f24
    sdc1	$f1,64($sp)
    # Line 186
    jalr	$t9
    sdc1	$f0,56($sp)
    # Line 187
    la	$t9,__GLgl_dgl_printf
    jalr	$t9
    addiu	$a0,$s3,88
    # Line 188
    cvt.d.s	$f2,$f24
    la	$t9,sprintf
    addiu	$a1,$s3,112
    dmfc1	$a2,$f2
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 189
    la	$t9,__GLgl_dgl_printf
    jalr	$t9
    addiu	$a0,$sp,0
    ldc1	$f3,56($sp)
    # Line 190
    la	$t9,sprintf
    cvt.d.s	$f3,$f3
    addiu	$a1,$s3,128
    dmfc1	$a2,$f3
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 191
    la	$t9,__GLgl_dgl_printf
    jalr	$t9
    addiu	$a0,$sp,0
    ldc1	$f4,64($sp)
    # Line 192
    la	$t9,sprintf
    cvt.d.s	$f4,$f4
    addiu	$a1,$s3,144
    dmfc1	$a2,$f4
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 193
    la	$t9,__GLgl_dgl_printf
    addiu	$a0,$sp,0
    jalr	$t9
    ld	$s3,96($sp)
    ld	$gp,80($sp)
    # Line 194
    ld	$ra,88($sp)
    mov.s	$f0,$f24
    ldc1	$f24,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f124bd4:
    # Line 174
    la	$t9,gettimeofday
    move	$a1,$zero
    jalr	$t9
    addiu	$a0,$gp,-19832
    # Line 175
    la	$t9,times
    la	$a0,sub_0f040000
    jalr	$t9
    addiu	$a0,$a0,-28168
    # Line 176
    ld	$ra,88($sp)
    mtc1	$zero,$f0
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_util_timer

# Function: gl_mbnbytes
# Declared: Line 198 (Source lines: 202-240)
# Address: 0x0f124c08 - 0x0f124ce8 (Size: 224 bytes, Frame: 0)
.globl gl_mbnbytes
.ent gl_mbnbytes
gl_mbnbytes:
    # Line 206
    li	$t0,1
    li	$a6,257
    # Line 202
    beqz	$a1,.L0f124cdc
    # Line 206
    li	$t1,256
    li	$a5,17
    li	$a7,16
    move	$v0,$zero
    b	.L0f124c3c
    nop
.L0f124c2c:
    # Line 235
    move	$a4,$zero
    move	$v0,$zero
.L0f124c34:
    # Line 237
    beqz	$a4,.L0f124cb8
    nop
.L0f124c3c:
    # Line 208
    beql	$a0,$a5,.L0f124c7c
    # Line 217
    addiu	$v0,$v0,4
    # Line 208
    beql	$a0,$a6,.L0f124c7c
    # Line 217
    addiu	$v0,$v0,4
    # Line 208
    beql	$a0,$a7,.L0f124cc0
    # Line 222
    addiu	$v0,$v0,3
    # Line 208
    beql	$a0,$t0,.L0f124ca4
    # Line 226
    lbu	$at,1($a1)
    # Line 208
    beql	$a0,$t1,.L0f124ca4
    # Line 226
    lbu	$at,1($a1)
    # Line 208
    bnez	$a0,.L0f124c2c
    # Line 232
    addiu	$v0,$v0,1
    # Line 231
    lbu	$a4,0($a1)
    # Line 233
    b	.L0f124c34
    # Line 231
    addiu	$a1,$a1,1
    # Line 217
    addiu	$v0,$v0,4
.L0f124c7c:
    # Line 215
    lbu	$a2,1($a1)
    lbu	$v1,3($a1)
    lbu	$at,2($a1)
    lbu	$a4,0($a1)
    # Line 216
    addiu	$a1,$a1,4
    # Line 215
    addu	$at,$at,$v1
    addu	$a4,$a4,$a2
    # Line 218
    b	.L0f124c34
    # Line 215
    addu	$a4,$a4,$at
    # Line 226
    lbu	$at,1($a1)
.L0f124ca4:
    lbu	$a4,0($a1)
    # Line 228
    addiu	$v0,$v0,2
    # Line 226
    addu	$a4,$a4,$at
    # Line 237
    bnez	$a4,.L0f124c3c
    # Line 227
    addiu	$a1,$a1,2
.L0f124cb8:
    # Line 240
    jr	$ra
    nop
.L0f124cc0:
    # Line 220
    lbu	$v1,1($a1)
    lbu	$at,0($a1)
    # Line 221
    addiu	$a1,$a1,3
    # Line 220
    lbu	$a4,-1($a1)
    addu	$at,$at,$v1
    # Line 223
    b	.L0f124c34
    # Line 220
    addu	$a4,$a4,$at
.L0f124cdc:
    # Line 204
    move	$v0,$zero
    jr	$ra
    nop
.end gl_mbnbytes

.rdata
_lit8_3eb0c6f7a0b5ed8d:
    .word 0x3eb0c6f7, 0xa0b5ed8d
_lit8_4059000000000000:
    .word 0x40590000, 0x00000000

