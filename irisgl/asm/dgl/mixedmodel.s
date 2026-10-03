# Source: ../dgl/mixedmodel.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/mixedmodel.c -o mixedmodel.T
# Total Functions: 9

.text

# Function: push_gfile
# Declared: Line 81 (Source lines: 82-85)
# Address: 0x0f0eef40 - 0x0f0eef70 (Size: 48 bytes, Frame: 16)
.ent push_gfile
push_gfile:
    # Line 83
    la	$at,comm_curgfile
    lw	$at,0($at)
    # Line 82
    addiu	$sp,$sp,-16
    # Line 83
    beqz	$at,.L0f0eef68
    sw	$at,-20628($gp)
    # Line 84
    la	$t9,gl_comm_flush
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
.L0f0eef68:
    # Line 85
    jr	$ra
    addiu	$sp,$sp,16
.end push_gfile

# Function: pop_gfile
# Declared: Line 87 (Source lines: 88-95)
# Address: 0x0f0eef70 - 0x0f0eefe4 (Size: 116 bytes, Frame: 16)
.ent pop_gfile
pop_gfile:
    # Line 88
    la	$a2,comm_curgfile
    lw	$a3,-20628($gp)
    lw	$at,0($a2)
    bne	$at,$a3,.L0f0eefa4
    addiu	$sp,$sp,-16
.L0f0eef84:
    # Line 90
    beqz	$a3,.L0f0eef9c
    lw	$v0,0($a2)
    lw	$a0,4($a3)
    lw	$v0,4($v0)
    bne	$v0,$a0,.L0f0eefc4
    # Line 92
    la	$t9,gl_load_dgl_table
.L0f0eef9c:
    # Line 95
    jr	$ra
    addiu	$sp,$sp,16
.L0f0eefa4:
    # Line 90
    la	$t9,gl_comm_flush
    sd	$ra,0($sp)
    jalr	$t9
    nop
    la	$a2,comm_curgfile
    lw	$a3,-20628($gp)
    b	.L0f0eef84
    ld	$ra,0($sp)
.L0f0eefc4:
    sd	$ra,0($sp)
    # Line 92
    jalr	$t9
    nop
    la	$a1,comm_curgfile
    # Line 93
    lw	$v1,-20628($gp)
    ld	$ra,0($sp)
    b	.L0f0eef9c
    sw	$v1,0($a1)
.end pop_gfile

# Function: gl_glx_finddisplay
# Declared: Line 97 (Source lines: 98-104)
# Address: 0x0f0eefe4 - 0x0f0ef024 (Size: 64 bytes, Frame: 0)
.globl gl_glx_finddisplay
.ent gl_glx_finddisplay
gl_glx_finddisplay:
    # Line 98
    lui	$v0,0xfff4
    addiu	$v0,$v0,16996
    addu	$at,$t9,$v0
    # Line 101
    lw	$v0,-20624($at)
    beqz	$v0,.L0f0ef014
    nop
    lw	$v1,4($v0)
.L0f0ef000:
    beq	$v1,$a0,.L0f0ef01c
    nop
    lw	$v0,0($v0)
    bnezl	$v0,.L0f0ef000
    lw	$v1,4($v0)
.L0f0ef014:
    # Line 104
    jr	$ra
    move	$v0,$zero
.L0f0ef01c:
    # Line 103
    jr	$ra
    nop
.end gl_glx_finddisplay

# Function: gl_initdisplay
# Declared: Line 115 (Source lines: 116-205)
# Address: 0x0f0ef024 - 0x0f0ef2b0 (Size: 652 bytes, Frame: 192)
.globl gl_initdisplay
.ent gl_initdisplay
gl_initdisplay:
    # Line 116
    addiu	$sp,$sp,-64
    sd	$a0,24($sp)
    sd	$a1,16($sp)
    sd	$gp,32($sp)
    lui	$at,0xfff4
    addiu	$at,$at,16932
    bnez	$a0,.L0f0ef054
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 121
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ef054:
    # Line 123
    la	$t9,gl_glx_finddisplay
    sd	$ra,40($sp)
    bal gl_glx_finddisplay
    ld	$a0,24($sp)
    move	$a1,$v0
    bnez	$v0,.L0f0ef108
    ld	$ra,40($sp)
    # Line 124
    la	$t9,malloc
    jalr	$t9
    li	$a0,36
    move	$a0,$v0
    # Line 125
    la	$t9,bzero
    sd	$v0,8($sp)
    sd	$v0,0($sp)
    jalr	$t9
    li	$a1,36
    ld	$a3,8($sp)
    # Line 128
    ld	$at,24($sp)
    ld	$v1,16($sp)
    # Line 126
    lw	$a2,-20624($gp)
    # Line 128
    sw	$at,4($a3)
    # Line 127
    sw	$a3,-20624($gp)
    # Line 128
    beqz	$v1,.L0f0ef24c
    # Line 126
    sw	$a2,0($a3)
    # Line 128
    la	$a4,sub_0f040000
    addiu	$a4,$a4,-31112
    lbu	$v1,0($a4)
    beqz	$v1,.L0f0ef118
    # Line 147
    la	$t9,strcmp
.L0f0ef0c8:
    ld	$a1,24($sp)
    move	$a0,$a4
    jalr	$t9
    lw	$a1,128($a1)
    ld	$ra,40($sp)
    beqz	$v0,.L0f0ef154
    ld	$a1,0($sp)
    # Line 156
    la	$v0,comm_gfiles
    lw	$a4,12($a1)
.L0f0ef0ec:
    # Line 147
    beqz	$a4,.L0f0ef1b8
.L0f0ef0f0:
    # Line 164
    sll	$a2,$a4,0x2
.L0f0ef0f4:
    addu	$a2,$a2,$v0
    lw	$a2,0($a2)
    lw	$a2,4($a2)
    li	$a3,1
    beq	$a2,$a3,.L0f0ef184
.L0f0ef108:
    # Line 205
    move	$v0,$a1
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ef118:
    # Line 141
    la	$t9,XOpenDisplay
    jalr	$t9
    move	$a0,$zero
    sd	$v0,8($sp)
    ld	$ra,40($sp)
    la	$a4,sub_0f040000
    ld	$a1,0($sp)
    bnez	$v0,.L0f0ef20c
    addiu	$a4,$a4,-31112
.L0f0ef13c:
    # Line 144
    lbu	$at,0($a4)
    bnez	$at,.L0f0ef0c8
    # Line 147
    la	$t9,strcmp
    # Line 156
    la	$v0,comm_gfiles
    b	.L0f0ef0ec
    lw	$a4,12($a1)
.L0f0ef154:
    # Line 147
    la	$v0,comm_gfiles
    lw	$v1,4($v0)
    # Line 151
    addiu	$a4,$v0,4
    # Line 147
    beqz	$v1,.L0f0ef244
    # Line 151
    addiu	$a6,$v0,1024
    lw	$a5,0($a4)
    lw	$a2,404($a5)
.L0f0ef170:
    beqz	$a2,.L0f0ef194
    addiu	$a4,$a4,4
    # Line 153
    lw	$a4,0($a5)
    # Line 154
    b	.L0f0ef0ec
    # Line 153
    sw	$a4,12($a1)
.L0f0ef184:
    # Line 167
    lw	$a3,16($a1)
    ori	$a3,$a3,0x2
    b	.L0f0ef108
    sw	$a3,16($a1)
.L0f0ef194:
    # Line 151
    sltu	$at,$a6,$a4
    bnezl	$at,.L0f0ef1b0
    lw	$a4,12($a1)
    lw	$a5,0($a4)
    bnezl	$a5,.L0f0ef170
    lw	$a2,404($a5)
    lw	$a4,12($a1)
.L0f0ef1b0:
    # Line 147
    bnez	$a4,.L0f0ef0f4
    # Line 164
    sll	$a2,$a4,0x2
.L0f0ef1b8:
    # Line 158
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-4288
    bal gl_sginap
    nop
    # Line 159
    la	$t9,__GLdglopen
    ld	$a0,24($sp)
    li	$a1,4
    jalr	$t9
    lw	$a0,128($a0)
    ld	$a2,0($sp)
    bltz	$v0,.L0f0ef280
    sw	$v0,12($a2)
    # Line 164
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-4240
    bal gl_sginap
    nop
    la	$v0,comm_gfiles
    ld	$a1,0($sp)
    ld	$ra,40($sp)
    b	.L0f0ef0f0
    lw	$a4,12($a1)
.L0f0ef20c:
    la	$a0,sub_0f040000
    # Line 143
    la	$t9,strcpy
    ld	$a1,8($sp)
    addiu	$a0,$a0,-31112
    jalr	$t9
    lw	$a1,128($a1)
    # Line 144
    la	$t9,XCloseDisplay
    jalr	$t9
    ld	$a0,8($sp)
    ld	$ra,40($sp)
    la	$a4,sub_0f040000
    ld	$a1,0($sp)
    b	.L0f0ef13c
    addiu	$a4,$a4,-31112
.L0f0ef244:
    b	.L0f0ef0ec
    # Line 151
    lw	$a4,12($a1)
.L0f0ef24c:
    ld	$a6,8($sp)
    # Line 178
    lw	$a5,16($a6)
    # Line 180
    la	$t9,gl_InitKnownAtoms
    move	$a0,$a6
    # Line 178
    ori	$a5,$a5,0x3
    # Line 180
    jalr	$t9
    # Line 178
    sw	$a5,16($a6)
    # Line 181
    la	$t9,_GLmakedefaultcursor
    jalr	$t9
    ld	$a0,8($sp)
    ld	$ra,40($sp)
    b	.L0f0ef108
    ld	$a1,0($sp)
.L0f0ef280:
    # Line 160
    la	$t9,free
    jalr	$t9
    ld	$a0,0($sp)
    # Line 161
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-4240
    bal gl_sginap
    nop
    # Line 162
    ld	$ra,40($sp)
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_initdisplay

# Function: switch_to_display
# Declared: Line 208 (Source lines: 209-217)
# Address: 0x0f0ef2b0 - 0x0f0ef32c (Size: 124 bytes, Frame: 32)
.ent switch_to_display
switch_to_display:
    # Line 209
    la	$a2,comm_curgfile
    addiu	$sp,$sp,-32
    lw	$a2,0($a2)
    sd	$ra,8($sp)
    sd	$s3,0($sp)
    beqz	$a2,.L0f0ef2f4
    move	$s3,$a0
    lw	$v0,12($s3)
    lw	$at,0($a2)
    bne	$at,$v0,.L0f0ef2e8
    # Line 213
    la	$t9,gl_comm_flush
    # Line 212
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0ef2e8:
    sd	$ra,8($sp)
    # Line 213
    jalr	$t9
    nop
.L0f0ef2f4:
    # Line 215
    lw	$a0,12($s3)
    la	$a2,comm_gfiles
    la	$a1,comm_curgfile
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a2
    lw	$a0,0($a0)
    # Line 216
    la	$t9,gl_load_dgl_table
    # Line 215
    sw	$a0,0($a1)
    # Line 216
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,8($sp)
    # Line 217
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end switch_to_display

# Function: __GLGLXwinset
# Declared: Line 233 (Source lines: 234-251)
# Address: 0x0f0ef32c - 0x0f0ef3ec (Size: 192 bytes, Frame: 48)
.globl __GLGLXwinset
.ent __GLGLXwinset
__GLGLXwinset:
    # Line 234
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$a1,0($sp)
    # Line 242
    li	$a1,1
    sd	$gp,8($sp)
    # Line 234
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,16156 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 242
    la	$t9,gl_initdisplay
    # Line 239
    la	$at,__iglooClientDPY
    sd	$ra,16($sp)
    # Line 242
    bal gl_initdisplay
    # Line 239
    sw	$a0,0($at)
    # Line 242
    bnez	$v0,.L0f0ef380
    move	$s0,$v0
    # Line 243
    ld	$ra,16($sp)
    li	$v0,-2
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ef380:
    # Line 244
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-3408
    bal gl_initdisplay
    move	$a0,$s0
    la	$at,comm_curgfile
    lw	$at,0($at)
    lw	$at,4($at)
    lw	$a0,8($s0)
    li	$v1,1
    beq	$at,$v1,.L0f0ef3cc
    ld	$v0,0($sp)
    # Line 251
    la	$t9,gl_d_gl_glx_winset
    move	$a1,$v0
    jalr	$t9
    ld	$s0,24($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ef3cc:
    # Line 249
    la	$t9,__GLgl_glx_winset
    move	$a1,$v0
    jalr	$t9
    ld	$s0,24($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __GLGLXwinset

# Function: __GLGLXunlink
# Declared: Line 254 (Source lines: 255-273)
# Address: 0x0f0ef3ec - 0x0f0ef4a4 (Size: 184 bytes, Frame: 48)
.globl __GLGLXunlink
.ent __GLGLXunlink
__GLGLXunlink:
    # Line 255
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,15964 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 259
    la	$t9,gl_initdisplay
    sd	$a1,0($sp)
    sd	$ra,16($sp)
    bal gl_initdisplay
    li	$a1,1
    bnez	$v0,.L0f0ef438
    move	$s0,$v0
    # Line 260
    ld	$ra,16($sp)
    li	$v0,-2
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ef438:
    # Line 261
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-3408
    bal gl_initdisplay
    move	$a0,$s0
    la	$at,comm_curgfile
    lw	$at,0($at)
    lw	$at,4($at)
    lw	$a0,8($s0)
    li	$v1,1
    beq	$at,$v1,.L0f0ef484
    ld	$v0,0($sp)
    # Line 273
    la	$t9,gl_d_gl_glx_unlink
    move	$a1,$v0
    jalr	$t9
    ld	$s0,24($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0ef484:
    # Line 271
    la	$t9,__GLgl_glx_unlink
    move	$a1,$v0
    jalr	$t9
    ld	$s0,24($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __GLGLXunlink

# Function: __GLGLXgetconfig
# Declared: Line 277 (Source lines: 278-319)
# Address: 0x0f0ef4a4 - 0x0f0ef644 (Size: 416 bytes, Frame: 224)
.globl __GLGLXgetconfig
.ent __GLGLXgetconfig
__GLGLXgetconfig:
    # Line 278
    addiu	$sp,$sp,-96
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$a1,0($sp)
    sd	$gp,32($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,15780 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 291
    la	$t9,gl_initializer
    sd	$s0,48($sp)
    sd	$ra,40($sp)
    jalr	$t9
    # Line 278
    move	$s0,$a0
    # Line 294
    la	$t9,gl_initdisplay
    move	$a0,$s0
    bal gl_initdisplay
    li	$a1,1
    move	$s0,$v0
    bnez	$s0,.L0f0ef510
    sd	$v0,16($sp)
    # Line 295
    ld	$ra,40($sp)
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0ef510:
    # Line 296
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-4288
    bal gl_sginap
    nop
    # Line 297
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-3408
    bal gl_initdisplay
    move	$a0,$s0
    # Line 298
    la	$a0,gl_template_size
    lw	$a0,0($a0)
    la	$t9,malloc
    sll	$a0,$a0,0x2
    jalr	$t9
    addiu	$a0,$a0,4
    la	$a3,gl_template_size
    # Line 299
    lw	$a7,0($a3)
    # Line 300
    move	$a5,$zero
    ld	$t0,16($sp)
    # Line 299
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$v0
    sw	$zero,0($a7)
    ld	$a1,0($sp)
    # Line 300
    lw	$a6,0($s1)
    # Line 298
    move	$s0,$v0
    move	$a0,$v0
    # Line 300
    beqz	$a6,.L0f0ef5a0
    move	$v0,$s1
    lw	$at,12($v0)
.L0f0ef580:
    addiu	$a5,$a5,1
    beqz	$at,.L0f0ef5a0
    nop
    lw	$v1,24($v0)
    addiu	$v0,$v0,24
    addiu	$a5,$a5,1
    bnezl	$v1,.L0f0ef580
    lw	$at,12($v0)
.L0f0ef5a0:
    la	$a6,comm_curgfile
    sd	$a0,8($sp)
    lw	$a6,0($a6)
    lw	$a4,0($a3)
    lw	$t0,8($t0)
    lw	$a6,4($a6)
    sll	$a2,$a5,0x2
    li	$a7,1
    beq	$a6,$a7,.L0f0ef5ec
    subu	$a2,$a2,$a5
    # Line 310
    la	$t9,gl_d_gl_glx_getconfig
    move	$a0,$t0
    move	$a3,$s1
    jalr	$t9
    move	$a5,$s0
    bnez	$v0,.L0f0ef60c
    # Line 316
    la	$t9,free
.L0f0ef5e4:
    # Line 313
    b	.L0f0ef618
    ld	$s0,8($sp)
.L0f0ef5ec:
    # Line 306
    la	$t9,__GLgl_glx_getconfig
    move	$a0,$t0
    move	$a3,$s1
    jalr	$t9
    move	$a5,$s0
    # Line 310
    beqz	$v0,.L0f0ef5e4
    # Line 306
    move	$a5,$v0
    # Line 316
    la	$t9,free
.L0f0ef60c:
    # Line 315
    move	$s0,$zero
    # Line 316
    jalr	$t9
    ld	$a0,8($sp)
.L0f0ef618:
    # Line 318
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-4240
    bal gl_sginap
    nop
    ld	$gp,32($sp)
    # Line 319
    move	$v0,$s0
    ld	$ra,40($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __GLGLXgetconfig

# Function: __GLGLXlink
# Declared: Line 323 (Source lines: 324-349)
# Address: 0x0f0ef644 - 0x0f0ef758 (Size: 276 bytes, Frame: 192)
.globl __GLGLXlink
.ent __GLGLXlink
__GLGLXlink:
    # Line 324
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$gp,8($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,15364 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 333
    la	$t9,gl_initdisplay
    li	$a1,1
    sd	$ra,16($sp)
    bal gl_initdisplay
    sd	$a0,0($sp)
    bnez	$v0,.L0f0ef69c
    move	$s1,$v0
    # Line 334
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ef69c:
    # Line 335
    la	$t9,sub_0f0f0000
    addiu	$t9,$t9,-3408
    bal gl_initdisplay
    move	$a0,$s1
    # Line 340
    la	$t9,XSync
    ld	$a0,0($sp)
    jalr	$t9
    move	$a1,$zero
    # Line 341
    lw	$at,0($s0)
    move	$a0,$s0
    beqz	$at,.L0f0ef6f0
    move	$v0,$zero
    lw	$v1,12($a0)
.L0f0ef6d0:
    addiu	$v0,$v0,1
    beqz	$v1,.L0f0ef6f0
    nop
    lw	$a3,24($a0)
    addiu	$a0,$a0,24
    addiu	$v0,$v0,1
    bnezl	$a3,.L0f0ef6d0
    lw	$v1,12($a0)
.L0f0ef6f0:
    la	$a3,comm_curgfile
    lw	$a3,0($a3)
    lw	$a0,8($s1)
    lw	$a3,4($a3)
    sll	$a1,$v0,0x2
    li	$a4,1
    beq	$a3,$a4,.L0f0ef734
    subu	$a1,$a1,$v0
    # Line 349
    la	$t9,gl_d_gl_glx_link
    move	$a2,$s0
    jalr	$t9
    ld	$s1,32($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0ef734:
    # Line 347
    la	$t9,__GLgl_glx_link
    move	$a2,$s0
    jalr	$t9
    ld	$s1,32($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __GLGLXlink

