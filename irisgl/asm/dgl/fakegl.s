# Source: ../dgl/fakegl.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/fakegl.c -o fakegl.T
# Total Functions: 35

.text

# Function: gl_d_foreground
# Declared: Line 43 (Source lines: 49-52)
# Address: 0x0f0bd088 - 0x0f0bd0a0 (Size: 24 bytes, Frame: 0)
.globl gl_d_foreground
.ent gl_d_foreground
gl_d_foreground:
    # Line 49
    lui	$v1,0xfff7
    addiu	$v1,$v1,25024
    addu	$at,$t9,$v1
    # Line 50
    lw	$v0,-32572($at)
    # Line 52
    jr	$ra
    # Line 50
    sw	$zero,0($v0)
.end gl_d_foreground

# Function: gl_d_getport
# Declared: Line 54 (Source lines: 61-64)
# Address: 0x0f0bd0a0 - 0x0f0bd0e8 (Size: 72 bytes, Frame: 48)
.globl gl_d_getport
.ent gl_d_getport
gl_d_getport:
    # Line 61
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,25000 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 62
    la	$t9,gl_util_background
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 61
    move	$s8,$a0
    # Line 63
    la	$t9,gl_dgl_getport
    jalr	$t9
    move	$a0,$s8
    # Line 64
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_getport

# Function: gl_d_winopen
# Declared: Line 66 (Source lines: 73-75)
# Address: 0x0f0bd0e8 - 0x0f0bd130 (Size: 72 bytes, Frame: 48)
.globl gl_d_winopen
.ent gl_d_winopen
gl_d_winopen:
    # Line 73
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,24928 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 74
    la	$t9,gl_util_background
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 73
    move	$s8,$a0
    # Line 75
    la	$t9,gl_dgl_winopen
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_winopen

# Function: gl_d_winope
# Declared: Line 78 (Source lines: 86-88)
# Address: 0x0f0bd130 - 0x0f0bd180 (Size: 80 bytes, Frame: 48)
.globl gl_d_winope
.ent gl_d_winope
gl_d_winope:
    # Line 86
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,24856 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 87
    la	$t9,gl_util_background
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 86
    move	$s8,$a0
    # Line 88
    la	$t9,gl_dgl_winope
    move	$a0,$s8
    jalr	$t9
    ld	$a1,24($sp)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_winope

# Function: gl_d_winset
# Declared: Line 95 (Source lines: 102-108)
# Address: 0x0f0bd180 - 0x0f0bd1b4 (Size: 52 bytes, Frame: 32)
.globl gl_d_winset
.ent gl_d_winset
gl_d_winset:
    # Line 102
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,24776 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 104
    la	$t9,gl_rmt_winset
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 108
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_winset

# Function: gl_d_winclose
# Declared: Line 111 (Source lines: 118-124)
# Address: 0x0f0bd1b4 - 0x0f0bd1e8 (Size: 52 bytes, Frame: 32)
.globl gl_d_winclose
.ent gl_d_winclose
gl_d_winclose:
    # Line 118
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,24724 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 120
    la	$t9,gl_rmt_winclose
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 124
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_winclose

# Function: gl_d_windepth
# Declared: Line 127 (Source lines: 134-136)
# Address: 0x0f0bd1e8 - 0x0f0bd21c (Size: 52 bytes, Frame: 32)
.globl gl_d_windepth
.ent gl_d_windepth
gl_d_windepth:
    # Line 134
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,24672 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 136
    la	$t9,gl_rmt_windepth
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_windepth

# Function: gl_d_swinopen
# Declared: Line 143 (Source lines: 150-152)
# Address: 0x0f0bd21c - 0x0f0bd250 (Size: 52 bytes, Frame: 32)
.globl gl_d_swinopen
.ent gl_d_swinopen
gl_d_swinopen:
    # Line 150
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,24620 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 152
    la	$t9,gl_rmt_swinopen
    sd	$ra,0($sp)
    jalr	$t9
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_swinopen

# Function: gl_d_qtest
# Declared: Line 162 (Source lines: 163-178)
# Address: 0x0f0bd250 - 0x0f0bd358 (Size: 264 bytes, Frame: 160)
.globl gl_d_qtest
.ent gl_d_qtest
gl_d_qtest:
    # Line 163
    addiu	$sp,$sp,-160
    sd	$gp,136($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,24568 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    lw	$at,196($at)
    bltz	$at,.L0f0bd33c
    sd	$ra,144($sp)
    # Line 169
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    # Line 172
    li	$a2,128
    move	$a1,$zero
    la	$t9,memset
    addiu	$a0,$sp,8
    # Line 171
    sw	$zero,4($sp)
    # Line 172
    jalr	$t9
    # Line 170
    sw	$zero,0($sp)
    # Line 174
    addiu	$a4,$sp,0
    la	$t1,comm_curgfile
    move	$a3,$zero
    move	$a2,$zero
    # Line 173
    lw	$t1,0($t1)
    # Line 174
    addiu	$a1,$sp,8
    li	$a0,20
    # Line 173
    lw	$t1,196($t1)
    # Line 174
    la	$t9,select
    # Line 173
    li	$a6,1
    sra	$t0,$t1,0x1f
    xor	$a7,$t1,$t0
    subu	$a7,$a7,$t0
    sra	$t0,$t1,0x1f
    sra	$a5,$t1,0x4
    srl	$a5,$a5,0x1b
    addu	$a5,$a5,$t1
    addiu	$t1,$sp,8
    andi	$a7,$a7,0x1f
    xor	$a7,$a7,$t0
    sra	$a5,$a5,0x5
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$t1
    lw	$v1,0($a5)
    subu	$a7,$a7,$t0
    sllv	$a6,$a6,$a7
    or	$v1,$v1,$a6
    # Line 174
    jalr	$t9
    # Line 173
    sw	$v1,0($a5)
    # Line 174
    beqz	$v0,.L0f0bd32c
    ld	$ra,144($sp)
    ld	$gp,136($sp)
    # Line 176
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,160
.L0f0bd32c:
    ld	$gp,136($sp)
    # Line 177
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,160
.L0f0bd33c:
    # Line 178
    la	$t9,gl_dgl_qtest
    jalr	$t9
    nop
    ld	$ra,144($sp)
    ld	$gp,136($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end gl_d_qtest

# Function: gl_d_qread
# Declared: Line 184 (Source lines: 191-211)
# Address: 0x0f0bd358 - 0x0f0bd4c0 (Size: 360 bytes, Frame: 192)
.globl gl_d_qread
.ent gl_d_qread
gl_d_qread:
    # Line 191
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,24304 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    # Line 192
    lw	$at,0($at)
    sw	$zero,0($sp)
    lw	$at,196($at)
    sd	$ra,24($sp)
    sd	$s1,8($sp)
    bltz	$at,.L0f0bd4a8
    # Line 191
    move	$s1,$a0
    # Line 197
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    la	$a0,comm_curgfile
    # Line 199
    lw	$a0,0($a0)
    sd	$s2,32($sp)
    li	$a2,1
    lw	$t9,24($a0)
    addiu	$a1,$sp,0
    addiu	$a1,$a1,2
    jalr	$t9
    lw	$a0,196($a0)
    li	$s2,1
    beq	$v0,$s2,.L0f0bd3dc
    # Line 200
    la	$t9,gl_comm_fatal_error
    addiu	$a0,$gp,-15008
    jalr	$t9
    addiu	$a0,$a0,40
    b	.L0f0bd3e0
    la	$a0,comm_curgfile
.L0f0bd3dc:
    la	$a0,comm_curgfile
.L0f0bd3e0:
    # Line 201
    lw	$a0,0($a0)
    li	$a2,1
    lw	$t9,24($a0)
    addiu	$a1,$sp,0
    addiu	$a1,$a1,3
    jalr	$t9
    lw	$a0,196($a0)
    beq	$v0,$s2,.L0f0bd410
    # Line 202
    la	$t9,gl_comm_fatal_error
    addiu	$a0,$gp,-15008
    jalr	$t9
    addiu	$a0,$a0,48
.L0f0bd410:
    la	$a0,comm_curgfile
    # Line 205
    lw	$a0,0($a0)
    lw	$t9,24($a0)
    li	$a2,1
    move	$a1,$s1
    jalr	$t9
    lw	$a0,196($a0)
    beq	$v0,$s2,.L0f0bd440
    # Line 206
    la	$t9,gl_comm_fatal_error
    addiu	$a0,$gp,-15008
    jalr	$t9
    addiu	$a0,$a0,56
.L0f0bd440:
    la	$a0,comm_curgfile
    # Line 207
    lw	$a0,0($a0)
    lw	$t9,24($a0)
    li	$a2,1
    addiu	$a1,$s1,1
    jalr	$t9
    lw	$a0,196($a0)
    move	$a2,$s2
    beq	$v0,$a2,.L0f0bd47c
    ld	$s2,32($sp)
    # Line 208
    la	$t9,gl_comm_fatal_error
    ld	$s2,32($sp)
    addiu	$a0,$gp,-15008
    jalr	$t9
    addiu	$a0,$a0,64
.L0f0bd47c:
    lw	$a0,0($sp)
.L0f0bd480:
    # Line 210
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,-10780
    bal gl_d_blkqread
    move	$a1,$s1
    # Line 211
    lw	$v0,0($sp)
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0bd4a8:
    # Line 209
    la	$t9,gl_dgl_qread
    jalr	$t9
    move	$a0,$s1
    move	$a0,$v0
    b	.L0f0bd480
    sw	$v0,0($sp)
.end gl_d_qread

# Function: gl_d_blkqread
# Declared: Line 214 (Source lines: 222-235)
# Address: 0x0f0bd4c0 - 0x0f0bd5e4 (Size: 292 bytes, Frame: 192)
.globl gl_d_blkqread
.ent gl_d_blkqread
gl_d_blkqread:
    # Line 222
    addiu	$sp,$sp,-64
    sd	$s2,24($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,23944 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$s2,comm_curgfile
    sd	$ra,32($sp)
    lw	$at,0($s2)
    sd	$s0,0($sp)
    move	$s0,$a0
    lw	$at,196($at)
    sd	$s1,8($sp)
    dsll32	$s1,$a1,0x10
    bltz	$at,.L0f0bd5c8
    dsra32	$s1,$s1,0x10
    # Line 226
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    # Line 227
    lw	$a0,0($s2)
    lw	$t9,24($a0)
    sll	$a2,$s1,0x1
    move	$a1,$s0
    jalr	$t9
    lw	$a0,196($a0)
    move	$s2,$v0
    andi	$a2,$v0,0x1
    beqz	$a2,.L0f0bd55c
    ld	$ra,32($sp)
    la	$a0,comm_curgfile
    # Line 229
    lw	$a0,0($a0)
    li	$a2,1
    lw	$t9,24($a0)
    addu	$a1,$v0,$v0
    addu	$a1,$a1,$s0
    jalr	$t9
    lw	$a0,196($a0)
    addu	$s2,$v0,$s2
    ld	$ra,32($sp)
.L0f0bd55c:
    # Line 231
    sra	$s2,$s2,0x1
.L0f0bd560:
    sd	$s3,40($sp)
    # Line 233
    blez	$s2,.L0f0bd5ac
    move	$s1,$zero
    la	$s3,sub_0f0c0000
    addiu	$s3,$s3,-10780
    # Line 234
    move	$t9,$s3
.L0f0bd578:
    addu	$a0,$s1,$s1
    addu	$a0,$a0,$s0
    addiu	$a1,$a0,2
    bal gl_d_blkqread
    lh	$a0,0($a0)
    # Line 233
    addiu	$s1,$s1,2
    dsll32	$s1,$s1,0x10
    dsra32	$s1,$s1,0x10
    slt	$a2,$s1,$s2
    bnez	$a2,.L0f0bd578
    # Line 234
    move	$t9,$s3
    ld	$s3,40($sp)
    ld	$ra,32($sp)
.L0f0bd5ac:
    ld	$gp,16($sp)
    # Line 235
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    move	$v0,$s2
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0bd5c8:
    # Line 232
    la	$t9,gl_dgl_blkqread
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    move	$s2,$v0
    b	.L0f0bd560
    ld	$ra,32($sp)
.end gl_d_blkqread

# Function: dgl_fix_queue
# Declared: Line 239 (Source lines: 242-257)
# Address: 0x0f0bd5e4 - 0x0f0bd6cc (Size: 232 bytes, Frame: 32)
.ent dgl_fix_queue
dgl_fix_queue:
    # Line 245
    li	$at,528
    # Line 242
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 245
    beq	$a0,$at,.L0f0bd650
    # Line 242
    move	$s0,$a1
    # Line 245
    li	$v0,541
    beq	$a0,$v0,.L0f0bd678
    li	$v1,543
    beq	$a0,$v1,.L0f0bd684
    li	$a2,536
    beq	$a0,$a2,.L0f0bd690
    li	$at,542
    beq	$a0,$at,.L0f0bd69c
    li	$v0,539
    beq	$a0,$v0,.L0f0bd6a8
    li	$v1,540
    beq	$a0,$v1,.L0f0bd6b4
    li	$a2,546
    beq	$a0,$a2,.L0f0bd6c0
    li	$at,534
    bnel	$a0,$at,.L0f0bd670
    # Line 257
    ld	$s0,0($sp)
    # Line 245
    lh	$a0,0($s0)
    beqzl	$a0,.L0f0bd670
    # Line 257
    ld	$s0,0($sp)
    b	.L0f0bd658
    sd	$ra,8($sp)
.L0f0bd650:
    sd	$ra,8($sp)
    # Line 245
    lh	$a0,0($s0)
.L0f0bd658:
    # Line 255
    la	$t9,__GLgl_dgl_wid_from_gl
    jalr	$t9
    nop
    sh	$v0,0($s0)
    ld	$ra,8($sp)
    # Line 257
    ld	$s0,0($sp)
.L0f0bd670:
    jr	$ra
    addiu	$sp,$sp,32
.L0f0bd678:
    sd	$ra,8($sp)
    # Line 245
    b	.L0f0bd658
    lh	$a0,0($s0)
.L0f0bd684:
    sd	$ra,8($sp)
    b	.L0f0bd658
    lh	$a0,0($s0)
.L0f0bd690:
    sd	$ra,8($sp)
    b	.L0f0bd658
    lh	$a0,0($s0)
.L0f0bd69c:
    sd	$ra,8($sp)
    b	.L0f0bd658
    lh	$a0,0($s0)
.L0f0bd6a8:
    sd	$ra,8($sp)
    b	.L0f0bd658
    lh	$a0,0($s0)
.L0f0bd6b4:
    sd	$ra,8($sp)
    b	.L0f0bd658
    lh	$a0,0($s0)
.L0f0bd6c0:
    sd	$ra,8($sp)
    b	.L0f0bd658
    lh	$a0,0($s0)
.end dgl_fix_queue

# Function: __GLgl_dgl_wid_from_gl
# Declared: Line 263 (Source lines: 265-266)
# Address: 0x0f0bd6cc - 0x0f0bd6f0 (Size: 36 bytes, Frame: 0)
.globl __GLgl_dgl_wid_from_gl
.ent __GLgl_dgl_wid_from_gl
__GLgl_dgl_wid_from_gl:
    # Line 265
    lui	$v1,0xfff7
    addiu	$v1,$v1,23420
    addu	$at,$t9,$v1
    # Line 266
    lw	$v0,-32520($at)
    lw	$v0,0($v0)
    lw	$v0,0($v0)
    sll	$v0,$v0,0x8
    jr	$ra
    or	$v0,$v0,$a0
.end __GLgl_dgl_wid_from_gl

# Function: gl_dgl_wid_to_gl
# Declared: Line 273 (Source lines: 276-293)
# Address: 0x0f0bd6f0 - 0x0f0bd7d0 (Size: 224 bytes, Frame: 48)
.globl gl_dgl_wid_to_gl
.ent gl_dgl_wid_to_gl
gl_dgl_wid_to_gl:
    # Line 276
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,23384 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,dgl_testmode
    lw	$at,0($at)
    move	$a6,$a1
    sd	$s0,16($sp)
    bnez	$at,.L0f0bd788
    move	$s0,$a0
    # Line 281
    la	$a2,comm_curgfile
    lw	$a0,0($a2)
    sra	$a5,$s0,0x8
    beqz	$a0,.L0f0bd738
    andi	$a5,$a5,0xff
    lw	$at,0($a0)
    beq	$at,$a5,.L0f0bd784
.L0f0bd738:
    # Line 282
    slti	$v1,$a5,257
    beqz	$v1,.L0f0bd79c
    la	$v1,comm_gfiles
    sll	$v0,$a5,0x2
    addu	$v0,$v0,$v1
    lw	$a1,0($v0)
    beqzl	$a1,.L0f0bd7a0
    # Line 283
    move	$a0,$a6
    # Line 284
    beqz	$a0,.L0f0bd780
    sd	$v0,0($sp)
    # Line 287
    la	$t9,gl_comm_flush
    sd	$ra,24($sp)
    jalr	$t9
    nop
    ld	$a1,0($sp)
    la	$a2,comm_curgfile
    ld	$ra,24($sp)
    lw	$a1,0($a1)
.L0f0bd780:
    # Line 288
    sw	$a1,0($a2)
.L0f0bd784:
    # Line 291
    andi	$s0,$s0,0xff
.L0f0bd788:
    ld	$gp,8($sp)
    # Line 293
    move	$v0,$s0
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bd79c:
    # Line 283
    move	$a0,$a6
.L0f0bd7a0:
    move	$a2,$s0
    la	$t9,gl_dgl_error
    la	$a1,sub_0f030000
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a1,$a1,-32056
    # Line 284
    li	$v0,-1
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_dgl_wid_to_gl

# Function: gettoken
# Declared: Line 304 (Source lines: 309-319)
# Address: 0x0f0bd7d0 - 0x0f0bd870 (Size: 160 bytes, Frame: 0)
.ent gettoken
gettoken:
    # Line 310
    lbu	$a3,0($a0)
    # Line 309
    move	$a6,$a0
    # Line 310
    beqz	$a3,.L0f0bd850
    move	$a4,$a1
    li	$a5,124
    bne	$a5,$a3,.L0f0bd800
    nop
    # Line 312
    lbu	$a3,1($a0)
.L0f0bd7f0:
    beqz	$a3,.L0f0bd850
    addiu	$a0,$a0,1
    beql	$a5,$a3,.L0f0bd7f0
    lbu	$a3,1($a0)
.L0f0bd800:
    beqz	$a3,.L0f0bd850
    li	$a5,124
    beq	$a5,$a3,.L0f0bd850
    nop
    # Line 314
    lbu	$at,0($a0)
.L0f0bd814:
    sb	$at,0($a4)
    lbu	$a3,1($a0)
    addiu	$a4,$a4,1
    beqz	$a3,.L0f0bd850
    addiu	$a0,$a0,1
    beq	$a5,$a3,.L0f0bd850
    nop
    lbu	$v0,0($a0)
    sb	$v0,0($a4)
    lbu	$a3,1($a0)
    addiu	$a4,$a4,1
    beqz	$a3,.L0f0bd850
    addiu	$a0,$a0,1
    bnel	$a5,$a3,.L0f0bd814
    lbu	$at,0($a0)
.L0f0bd850:
    # Line 315
    beq	$a1,$a4,.L0f0bd864
    sb	$zero,0($a4)
    # Line 317
    subu	$v0,$a0,$a6
    jr	$ra
    nop
.L0f0bd864:
    # Line 319
    move	$v0,$zero
    jr	$ra
    nop
.end gettoken

# Function: gl_d_idefpup
# Declared: Line 333 (Source lines: 335-339)
# Address: 0x0f0bd870 - 0x0f0bd8cc (Size: 92 bytes, Frame: 48)
.globl gl_d_idefpup
.ent gl_d_idefpup
gl_d_idefpup:
    # Line 335
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,23000 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 338
    la	$t9,gl_d_newpup
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 335
    move	$s8,$a0
    # Line 338
    move	$a0,$v0
    la	$t9,sub_0f0c0000
    move	$a1,$s8
    ld	$a2,24($sp)
    addiu	$t9,$t9,-9592
    bal gl_d_addtop
    li	$a3,1
    # Line 339
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_d_idefpup

# Function: gl_d_defpup
# Declared: Line 342 (Source lines: 344-351)
# Address: 0x0f0bd8cc - 0x0f0bd920 (Size: 84 bytes, Frame: 208)
.globl gl_d_defpup
.ent gl_d_defpup
gl_d_defpup:
    # Line 344
    addiu	$sp,$sp,-80
    sd	$a1,24($sp)
    # Line 349
    addiu	$a1,$sp,24
    # Line 344
    sd	$a7,72($sp)
    sd	$a6,64($sp)
    sd	$a5,56($sp)
    sd	$a4,48($sp)
    sd	$a3,40($sp)
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,22908 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 349
    la	$t9,gl_d_idefpup
    # Line 344
    sd	$a2,32($sp)
    sd	$ra,0($sp)
    # Line 349
    bal gl_d_idefpup
    # Line 344
    sw	$a0,20($sp)
    # Line 351
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_defpup

# Function: gl_d_addtopup
# Declared: Line 354 (Source lines: 356-362)
# Address: 0x0f0bd920 - 0x0f0bd97c (Size: 92 bytes, Frame: 208)
.globl gl_d_addtopup
.ent gl_d_addtopup
gl_d_addtopup:
    # Line 356
    addiu	$sp,$sp,-80
    sd	$a3,40($sp)
    # Line 360
    li	$a3,1
    # Line 356
    sd	$a2,32($sp)
    # Line 360
    addiu	$a2,$sp,32
    # Line 356
    sd	$a7,72($sp)
    sd	$a6,64($sp)
    sd	$a5,56($sp)
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff7
    addiu	$ra,$ra,22824
    addu	$gp,$t9,$ra
    # Line 360
    la	$t9,sub_0f0c0000
    # Line 356
    sd	$a4,48($sp)
    sw	$a1,28($sp)
    # Line 360
    addiu	$t9,$t9,-9592
    bal gl_d_addtop
    # Line 356
    sw	$a0,20($sp)
    # Line 362
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_addtopup

# Function: gl_d_callfunc
# Declared: Line 369 (Source lines: 371-373)
# Address: 0x0f0bd97c - 0x0f0bd9dc (Size: 96 bytes, Frame: 208)
.globl gl_d_callfunc
.ent gl_d_callfunc
gl_d_callfunc:
    # Line 371
    addiu	$sp,$sp,-80
    sd	$a7,72($sp)
    sd	$a6,64($sp)
    sd	$a5,56($sp)
    sd	$a4,48($sp)
    sd	$a3,40($sp)
    sd	$a2,32($sp)
    sw	$a0,20($sp)
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,22732 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,sub_0f030000
    sw	$a1,28($sp)
    # Line 372
    la	$t9,gl_dgl_error
    addiu	$at,$at,-32408
    addiu	$a1,$at,392
    jalr	$t9
    addiu	$a0,$at,376
    # Line 373
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_callfunc

# Function: gl_d_addtop
# Declared: Line 422 (Source lines: 432-440)
# Address: 0x0f0bd9dc - 0x0f0bda88 (Size: 172 bytes, Frame: 208)
.globl gl_d_addtop
.ent gl_d_addtop
gl_d_addtop:
    # Line 432
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    sw	$a3,76($sp)
    sd	$s5,16($sp)
    move	$s5,$a1
    sd	$s0,0($sp)
    move	$s0,$a2
    sd	$s7,24($sp)
    sd	$gp,32($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,22636 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 434
    la	$t9,malloc
    # Line 432
    move	$s7,$a0
    sd	$ra,8($sp)
    # Line 434
    jalr	$t9
    addiu	$a0,$a2,1
    move	$s1,$v0
    # Line 435
    la	$t9,strncpy
    move	$a0,$v0
    move	$a1,$s5
    jalr	$t9
    move	$a2,$s0
    # Line 438
    move	$a3,$zero
    addiu	$a2,$sp,76
    move	$a1,$s1
    move	$a0,$s7
    la	$t9,sub_0f0c0000
    ld	$s5,16($sp)
    # Line 436
    addu	$v0,$s0,$s1
    # Line 438
    addiu	$t9,$t9,-9592
    bal gl_d_addtop
    # Line 436
    sb	$zero,0($v0)
    # Line 439
    la	$t9,free
    move	$a0,$s1
    ld	$s7,24($sp)
    jalr	$t9
    ld	$s0,0($sp)
    # Line 440
    ld	$ra,8($sp)
    ld	$gp,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_d_addtop

# Function: dgl_do_addpup
# Declared: Line 443 (Source lines: 448-500)
# Address: 0x0f0bda88 - 0x0f0bdd3c (Size: 692 bytes, Frame: 160)
.ent dgl_do_addpup
dgl_do_addpup:
    # Line 448
    addiu	$sp,$sp,-416
    sd	$s2,320($sp)
    move	$s2,$a0
    sd	$s1,336($sp)
    la	$at,dgl_testmode
    move	$s1,$a1
    sd	$s3,312($sp)
    lw	$at,0($at)
    move	$s3,$a2
    sd	$s5,328($sp)
    beqz	$at,.L0f0bdb38
    move	$s5,$a3
    sd	$ra,344($sp)
    li	$a4,-8
    addiu	$v0,$s3,7
    li	$v1,1
    beq	$s5,$v1,.L0f0bdb1c
    and	$v0,$v0,$a4
    # Line 457
    la	$t9,strlen
    sd	$v0,352($sp)
    move	$a0,$s1
    jalr	$t9
    move	$s3,$v0
    move	$a2,$v0
    la	$t9,gl_dgl_addtop
    move	$a0,$s2
    move	$a1,$s1
    jalr	$t9
    lw	$a3,4($s3)
    ld	$ra,344($sp)
.L0f0bdb00:
    # Line 500
    ld	$s1,336($sp)
    move	$v0,$s2
    ld	$s2,320($sp)
    ld	$s3,312($sp)
    ld	$s5,328($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0f0bdb1c:
    # Line 455
    la	$t9,gl_dgl_addtopup
    move	$a0,$s2
    move	$a1,$s1
    jalr	$t9
    lw	$a2,4($v0)
    b	.L0f0bdb00
    ld	$ra,344($sp)
.L0f0bdb38:
    # Line 457
    la	$t9,sub_0f0c0000
    # Line 459
    addiu	$a1,$sp,0
    sd	$ra,344($sp)
    # Line 457
    addiu	$t9,$t9,-10288
    # Line 459
    bal gl_dgl_wid_to_gl
    move	$a0,$s1
    sd	$s0,360($sp)
    beqz	$v0,.L0f0bdb00
    ld	$ra,344($sp)
    sd	$s4,368($sp)
    li	$s0,37
    addiu	$a4,$gp,-15008
    addiu	$a5,$a4,80
    addiu	$a4,$a4,72
    sd	$a5,264($sp)
    sd	$a4,304($sp)
    lw	$at,256($sp)
    li	$v1,1
    xor	$v1,$s5,$v1
    sd	$at,272($sp)
    la	$at,sub_0f030000
    sltiu	$v1,$v1,1
    sd	$v1,288($sp)
    addiu	$at,$at,-32408
    addiu	$v1,$at,440
    addiu	$at,$at,416
    sd	$v1,280($sp)
    b	.L0f0bdbe0
    sd	$at,296($sp)
.L0f0bdbac:
    # Line 491
    beqz	$a2,.L0f0bdcf0
    li	$v1,1
    beq	$a2,$v1,.L0f0bdcbc
    # Line 496
    la	$t9,gl_dgl_error
    ld	$a0,264($sp)
    jalr	$t9
    ld	$a1,280($sp)
    la	$t9,sub_0f0c0000
.L0f0bdbcc:
    # Line 459
    move	$a0,$s1
    addiu	$t9,$t9,-10288
    bal gl_dgl_wid_to_gl
    addiu	$a1,$sp,0
    beqz	$v0,.L0f0bdce0
.L0f0bdbe0:
    # Line 464
    addiu	$s4,$sp,0
    lbu	$a6,0($sp)
    # Line 461
    move	$a2,$zero
    # Line 460
    addu	$s1,$v0,$s1
    # Line 464
    beqz	$a6,.L0f0bdcd8
    move	$a3,$a6
    beq	$s0,$a3,.L0f0bdd0c
    nop
    lbu	$a3,1($s4)
.L0f0bdc04:
    beqz	$a3,.L0f0bdbac
    addiu	$s4,$s4,1
    bnel	$s0,$a3,.L0f0bdc04
    lbu	$a3,1($s4)
.L0f0bdc14:
    beqz	$a3,.L0f0bdbac
    nop
    b	.L0f0bdc60
    lbu	$v1,0($s4)
.L0f0bdc24:
    ld	$a1,288($sp)
    # Line 475
    la	$t9,gl_d_dgladdcallback
    # Line 474
    addiu	$s3,$s3,7
    li	$t8,-8
    and	$s3,$t8,$s3
    addiu	$s3,$s3,8
    # Line 475
    bal gl_d_dgladdcallback
    lw	$a0,-4($s3)
    beqz	$v0,.L0f0bdd24
    sd	$v0,272($sp)
    # Line 478
    li	$a2,1
.L0f0bdc50:
    # Line 466
    lbu	$at,1($s4)
.L0f0bdc54:
    beqz	$at,.L0f0bdbac
    addiu	$s4,$s4,1
    # Line 464
    lbu	$v1,0($s4)
.L0f0bdc60:
    li	$a5,102
    bne	$v1,$s0,.L0f0bdc50
    li	$a4,70
    # Line 468
    lbu	$a3,1($s4)
    beq	$a3,$a4,.L0f0bdc24
    li	$v1,109
    beq	$a3,$a5,.L0f0bdc24
    li	$at,112
    beq	$a3,$at,.L0f0bdc24
    # Line 481
    addiu	$a5,$s3,7
    # Line 468
    bne	$a3,$v1,.L0f0bdc50
    li	$a4,1
    li	$a3,-8
    # Line 481
    and	$a3,$a3,$a5
    beq	$s5,$a4,.L0f0bdd14
    addiu	$a3,$a3,8
    # Line 484
    lw	$at,-4($a3)
    lw	$at,0($at)
    move	$s3,$a3
    sd	$at,272($sp)
.L0f0bdcb0:
    # Line 485
    li	$a2,1
    b	.L0f0bdc54
    # Line 466
    lbu	$at,1($s4)
.L0f0bdcbc:
    # Line 494
    la	$t9,gl_dgl_addtopup
    move	$a0,$s2
    ld	$a2,272($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0f0bdbcc
    la	$t9,sub_0f0c0000
.L0f0bdcd8:
    b	.L0f0bdc14
    # Line 464
    move	$a3,$a6
.L0f0bdce0:
    ld	$ra,344($sp)
    ld	$s0,360($sp)
    b	.L0f0bdb00
    ld	$s4,368($sp)
.L0f0bdcf0:
    # Line 492
    la	$t9,gl_dgl_addtopup
    move	$a0,$s2
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,0
    b	.L0f0bdbcc
    la	$t9,sub_0f0c0000
.L0f0bdd0c:
    b	.L0f0bdc14
    # Line 464
    move	$a3,$a6
.L0f0bdd14:
    # Line 482
    lw	$v1,-4($a3)
    move	$s3,$a3
    b	.L0f0bdcb0
    sd	$v1,272($sp)
.L0f0bdd24:
    # Line 477
    la	$t9,gl_dgl_error
    ld	$a0,304($sp)
    jalr	$t9
    ld	$a1,296($sp)
    b	.L0f0bdc50
    # Line 478
    li	$a2,1
.end dgl_do_addpup

# Function: prop_lookup
# Declared: Line 513 (Source lines: 516-522)
# Address: 0x0f0bdd3c - 0x0f0bdd6c (Size: 48 bytes, Frame: 0)
.ent prop_lookup
prop_lookup:
    # Line 516
    lw	$a3,0($a1)
    beqz	$a3,.L0f0bdd5c
    # Line 522
    li	$v0,-1
.L0f0bdd48:
    # Line 516
    beq	$a3,$a0,.L0f0bdd64
    nop
    # Line 520
    lw	$a3,8($a1)
    bnez	$a3,.L0f0bdd48
    addiu	$a1,$a1,8
.L0f0bdd5c:
    # Line 522
    jr	$ra
    nop
.L0f0bdd64:
    # Line 519
    jr	$ra
    lw	$v0,4($a1)
.end prop_lookup

# Function: gl_d_lmdef
# Declared: Line 556 (Source lines: 564-592)
# Address: 0x0f0bdd6c - 0x0f0bdee0 (Size: 372 bytes, Frame: 224)
.globl gl_d_lmdef
.ent gl_d_lmdef
gl_d_lmdef:
    # Line 564
    dsll32	$a6,$a1,0x10
    dsll32	$v0,$a2,0x10
    dsra32	$v0,$v0,0x10
    dsra32	$a6,$a6,0x10
    addiu	$sp,$sp,-96
    sd	$s0,24($sp)
    move	$s0,$a3
    sd	$gp,40($sp)
    lui	$at,0xfff7
    addiu	$at,$at,21724
    sd	$s2,32($sp)
    dsll32	$s2,$a0,0x10
    dsra32	$s2,$s2,0x10
    bnez	$a3,.L0f0bdde8
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$ra,56($sp)
    # Line 570
    addiu	$s0,$gp,-15008
    # Line 569
    li	$v0,1
.L0f0bddb4:
    # Line 591
    move	$a0,$s2
    move	$a1,$a6
    la	$t9,gl_dgl_lmdef
    move	$a2,$v0
    sd	$ra,56($sp)
    jalr	$t9
    move	$a3,$s0
    ld	$gp,40($sp)
    # Line 592
    ld	$ra,56($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0bdde8:
    # Line 578
    addiu	$a5,$gp,-14920
    # Line 570
    bnez	$v0,.L0f0bddb4
    # Line 578
    la	$a4,sub_0f030000
    # Line 570
    la	$v1,dgl_testmode
    lw	$v1,0($v1)
    # Line 578
    addiu	$a4,$a4,-32408
    # Line 570
    bnez	$v1,.L0f0bddb4
    # Line 578
    move	$a0,$s0
    lwc1	$f5,0($s0)
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f5
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0f0bde98
    mov.s	$f4,$f5
    sd	$ra,56($sp)
    sd	$a6,48($sp)
    sd	$a0,0($sp)
    sd	$a5,8($sp)
    addiu	$a4,$a4,472
    sd	$a4,16($sp)
    sd	$a6,48($sp)
.L0f0bde40:
    # Line 582
    trunc.w.s	$f2,$f4
    la	$t9,sub_0f0c0000
    sd	$a0,0($sp)
    la	$a1,sub_0f030000
    addiu	$t9,$t9,-8900
    mfc1	$a0,$f2
    bal gl_d_addtop
    addiu	$a1,$a1,-32408
    ld	$a0,0($sp)
    bltz	$v0,.L0f0bdeb4
    ld	$a6,48($sp)
.L0f0bde6c:
    # Line 587
    sll	$a4,$v0,0x2
    addu	$a0,$a4,$a0
    addiu	$a0,$a0,4
    lwc1	$f4,0($a0)
    dmtc1	$zero,$f0
    cvt.d.s	$f3,$f4
    c.eq.d	$f3,$f0
    nop
    bc1fl	.L0f0bde40
    sd	$a6,48($sp)
    ld	$ra,56($sp)
.L0f0bde98:
    sd	$ra,56($sp)
    # Line 589
    subu	$v0,$a0,$s0
    sra	$v0,$v0,0x2
    addiu	$v0,$v0,1
    dsll32	$v0,$v0,0x10
    b	.L0f0bddb4
    dsra32	$v0,$v0,0x10
.L0f0bdeb4:
    # Line 584
    ld	$v1,0($sp)
    ld	$a0,8($sp)
    la	$t9,gl_dgl_error
    lwc1	$f14,0($v1)
    ld	$a1,16($sp)
    jalr	$t9
    cvt.d.s	$f14,$f14
    # Line 585
    move	$v0,$zero
    ld	$a0,0($sp)
    b	.L0f0bde6c
    ld	$a6,48($sp)
.end gl_d_lmdef

# Function: gl_d_tevdef
# Declared: Line 618 (Source lines: 626-654)
# Address: 0x0f0bdee0 - 0x0f0be024 (Size: 324 bytes, Frame: 224)
.globl gl_d_tevdef
.ent gl_d_tevdef
gl_d_tevdef:
    # Line 626
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$gp,48($sp)
    lui	$at,0xfff7
    addiu	$at,$at,21352
    bnez	$a2,.L0f0bdf40
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$ra,56($sp)
    # Line 632
    addiu	$s0,$gp,-15000
    # Line 631
    li	$a1,1
.L0f0bdf14:
    # Line 653
    la	$t9,gl_dgl_tevdef
    move	$a0,$s1
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s0
    ld	$gp,48($sp)
    # Line 654
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0bdf40:
    # Line 640
    addiu	$a4,$gp,-14912
    # Line 632
    bnez	$a1,.L0f0bdf14
    # Line 640
    la	$a3,sub_0f030000
    # Line 632
    la	$v1,dgl_testmode
    lw	$v1,0($v1)
    bnez	$v1,.L0f0bdf14
    # Line 640
    move	$a0,$s0
    lwc1	$f5,0($s0)
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f5
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0f0bdfe8
    mov.s	$f4,$f5
    sd	$ra,56($sp)
    sd	$a0,0($sp)
    sd	$a4,8($sp)
    addiu	$a3,$a3,-32408
    addiu	$a4,$a3,504
    addiu	$a3,$a3,128
    sd	$a4,16($sp)
    sd	$a3,24($sp)
    # Line 644
    trunc.w.s	$f2,$f4
.L0f0bdf9c:
    la	$t9,sub_0f0c0000
    sd	$a0,0($sp)
    addiu	$t9,$t9,-8900
    mfc1	$a0,$f2
    bal gl_d_addtop
    ld	$a1,24($sp)
    bltz	$v0,.L0f0bdffc
    ld	$a0,0($sp)
.L0f0bdfbc:
    # Line 649
    sll	$a3,$v0,0x2
    addu	$a0,$a3,$a0
    addiu	$a0,$a0,4
    lwc1	$f4,0($a0)
    dmtc1	$zero,$f0
    cvt.d.s	$f3,$f4
    c.eq.d	$f3,$f0
    nop
    bc1fl	.L0f0bdf9c
    # Line 644
    trunc.w.s	$f2,$f4
    ld	$ra,56($sp)
.L0f0bdfe8:
    sd	$ra,56($sp)
    # Line 651
    subu	$a1,$a0,$s0
    sra	$a1,$a1,0x2
    b	.L0f0bdf14
    addiu	$a1,$a1,1
.L0f0bdffc:
    # Line 646
    ld	$a2,0($sp)
    ld	$a0,8($sp)
    la	$t9,gl_dgl_error
    lwc1	$f14,0($a2)
    ld	$a1,16($sp)
    jalr	$t9
    cvt.d.s	$f14,$f14
    # Line 647
    move	$v0,$zero
    b	.L0f0bdfbc
    ld	$a0,0($sp)
.end gl_d_tevdef

# Function: gl_d_texdef2d
# Declared: Line 693 (Source lines: 703-731)
# Address: 0x0f0be024 - 0x0f0be1ac (Size: 392 bytes, Frame: 160)
.globl gl_d_texdef2d
.ent gl_d_texdef2d
gl_d_texdef2d:
    # Line 703
    addiu	$sp,$sp,-160
    sd	$s1,32($sp)
    move	$s1,$a2
    sd	$s2,48($sp)
    move	$s2,$a3
    sd	$s5,56($sp)
    move	$s5,$a4
    sd	$s0,40($sp)
    move	$s0,$a6
    sd	$gp,64($sp)
    lui	$at,0xfff7
    addiu	$at,$at,21028
    bnez	$a6,.L0f0be0a4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$ra,88($sp)
    # Line 709
    addiu	$s0,$gp,-14992
    # Line 708
    li	$a5,1
.L0f0be068:
    # Line 730
    move	$a2,$s1
.L0f0be06c:
    move	$a3,$s2
    la	$t9,gl_dgl_texdef2d
    move	$a4,$s5
    sd	$ra,88($sp)
    jalr	$t9
    move	$a6,$s0
    ld	$gp,64($sp)
    # Line 731
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$ra,88($sp)
    ld	$s2,48($sp)
    ld	$s5,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f0be0a4:
    # Line 717
    la	$a7,sub_0f030000
    # Line 709
    bnez	$a5,.L0f0be06c
    # Line 730
    move	$a2,$s1
    # Line 709
    la	$v1,dgl_testmode
    lw	$v1,0($v1)
    bnez	$v1,.L0f0be068
    # Line 717
    move	$a2,$s0
    lwc1	$f5,0($s0)
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f5
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0f0be168
    mov.s	$f4,$f5
    sd	$ra,88($sp)
    sd	$a0,80($sp)
    sd	$a1,72($sp)
    sd	$a2,0($sp)
    addiu	$a7,$a7,-32408
    addiu	$at,$a7,552
    addiu	$t0,$a7,536
    addiu	$a7,$a7,192
    sd	$at,16($sp)
    sd	$t0,8($sp)
    sd	$a7,24($sp)
    sd	$a2,0($sp)
.L0f0be10c:
    # Line 721
    trunc.w.s	$f2,$f4
    la	$t9,sub_0f0c0000
    sd	$a1,72($sp)
    sd	$a0,80($sp)
    addiu	$t9,$t9,-8900
    mfc1	$a0,$f2
    bal gl_d_addtop
    ld	$a1,24($sp)
    ld	$a2,0($sp)
    ld	$a1,72($sp)
    bltz	$v0,.L0f0be17c
    ld	$a0,80($sp)
.L0f0be13c:
    # Line 726
    sll	$a7,$v0,0x2
    addu	$a2,$a7,$a2
    addiu	$a2,$a2,4
    lwc1	$f4,0($a2)
    dmtc1	$zero,$f0
    cvt.d.s	$f3,$f4
    c.eq.d	$f3,$f0
    nop
    bc1fl	.L0f0be10c
    sd	$a2,0($sp)
    ld	$ra,88($sp)
.L0f0be168:
    sd	$ra,88($sp)
    # Line 728
    subu	$a5,$a2,$s0
    sra	$a5,$a5,0x2
    b	.L0f0be068
    addiu	$a5,$a5,1
.L0f0be17c:
    # Line 723
    ld	$a6,0($sp)
    ld	$a0,8($sp)
    la	$t9,gl_dgl_error
    lwc1	$f14,0($a6)
    ld	$a1,16($sp)
    jalr	$t9
    cvt.d.s	$f14,$f14
    # Line 724
    move	$v0,$zero
    ld	$a2,0($sp)
    ld	$a1,72($sp)
    b	.L0f0be13c
    ld	$a0,80($sp)
.end gl_d_texdef2d

# Function: gl_d_texdef3d
# Declared: Line 734 (Source lines: 744-772)
# Address: 0x0f0be1ac - 0x0f0be344 (Size: 408 bytes, Frame: 176)
.globl gl_d_texdef3d
.ent gl_d_texdef3d
gl_d_texdef3d:
    # Line 744
    addiu	$sp,$sp,-176
    sd	$s1,40($sp)
    move	$s1,$a3
    sd	$s3,48($sp)
    move	$s3,$a4
    sd	$s5,56($sp)
    move	$s5,$a5
    sd	$s0,32($sp)
    move	$s0,$a7
    sd	$gp,64($sp)
    lui	$at,0xfff7
    addiu	$at,$at,20636
    bnez	$a7,.L0f0be22c
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$ra,96($sp)
    # Line 750
    addiu	$s0,$gp,-14984
    # Line 749
    li	$a6,1
.L0f0be1f0:
    # Line 771
    move	$a3,$s1
.L0f0be1f4:
    move	$a4,$s3
    la	$t9,gl_dgl_texdef3d
    move	$a5,$s5
    sd	$ra,96($sp)
    bal gl_dgl_texdef3d
    move	$a7,$s0
    ld	$gp,64($sp)
    # Line 772
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$ra,96($sp)
    ld	$s3,48($sp)
    ld	$s5,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0be22c:
    # Line 758
    la	$t0,sub_0f030000
    # Line 750
    bnez	$a6,.L0f0be1f4
    # Line 771
    move	$a3,$s1
    # Line 750
    la	$v1,dgl_testmode
    lw	$v1,0($v1)
    bnez	$v1,.L0f0be1f0
    # Line 758
    move	$a3,$s0
    lwc1	$f5,0($s0)
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f5
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0f0be2fc
    mov.s	$f4,$f5
    sd	$ra,96($sp)
    sd	$a0,88($sp)
    sd	$a1,80($sp)
    sd	$a2,72($sp)
    sd	$a3,0($sp)
    addiu	$t0,$t0,-32408
    addiu	$at,$t0,600
    addiu	$t1,$t0,584
    addiu	$t0,$t0,192
    sd	$at,16($sp)
    sd	$t1,8($sp)
    sd	$t0,24($sp)
    sd	$a2,72($sp)
.L0f0be298:
    sd	$a3,0($sp)
    # Line 762
    trunc.w.s	$f2,$f4
    la	$t9,sub_0f0c0000
    sd	$a1,80($sp)
    sd	$a0,88($sp)
    addiu	$t9,$t9,-8900
    mfc1	$a0,$f2
    bal gl_d_addtop
    ld	$a1,24($sp)
    ld	$a3,0($sp)
    ld	$a2,72($sp)
    ld	$a1,80($sp)
    bltz	$v0,.L0f0be310
    ld	$a0,88($sp)
.L0f0be2d0:
    # Line 767
    sll	$t0,$v0,0x2
    addu	$a3,$t0,$a3
    addiu	$a3,$a3,4
    lwc1	$f4,0($a3)
    dmtc1	$zero,$f0
    cvt.d.s	$f3,$f4
    c.eq.d	$f3,$f0
    nop
    bc1fl	.L0f0be298
    sd	$a2,72($sp)
    ld	$ra,96($sp)
.L0f0be2fc:
    sd	$ra,96($sp)
    # Line 769
    subu	$a6,$a3,$s0
    sra	$a6,$a6,0x2
    b	.L0f0be1f0
    addiu	$a6,$a6,1
.L0f0be310:
    # Line 764
    ld	$a7,0($sp)
    ld	$a0,8($sp)
    la	$t9,gl_dgl_error
    lwc1	$f14,0($a7)
    ld	$a1,16($sp)
    jalr	$t9
    cvt.d.s	$f14,$f14
    # Line 765
    move	$v0,$zero
    ld	$a3,0($sp)
    ld	$a2,72($sp)
    ld	$a1,80($sp)
    b	.L0f0be2d0
    ld	$a0,88($sp)
.end gl_d_texdef3d

# Function: gl_d_tlutdef
# Declared: Line 790 (Source lines: 803-831)
# Address: 0x0f0be344 - 0x0f0be4b0 (Size: 364 bytes, Frame: 128)
.globl gl_d_tlutdef
.ent gl_d_tlutdef
gl_d_tlutdef:
    # Line 803
    addiu	$sp,$sp,-128
    sd	$s1,40($sp)
    move	$s1,$a2
    sd	$s2,32($sp)
    move	$s2,$a3
    sd	$s0,24($sp)
    move	$s0,$a5
    sd	$gp,48($sp)
    lui	$at,0xfff7
    addiu	$at,$at,20228
    bnez	$a5,.L0f0be3b4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$ra,72($sp)
    # Line 809
    addiu	$s0,$gp,-14976
    # Line 808
    li	$a4,1
.L0f0be380:
    # Line 830
    move	$a2,$s1
    la	$t9,gl_dgl_tlutdef
    move	$a3,$s2
    sd	$ra,72($sp)
    bal gl_dgl_tlutdef
    move	$a5,$s0
    ld	$gp,48($sp)
    # Line 831
    ld	$s0,24($sp)
    ld	$ra,72($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f0be3b4:
    # Line 817
    addiu	$a7,$gp,-14904
    # Line 809
    bnez	$a4,.L0f0be380
    # Line 817
    la	$a6,sub_0f030000
    # Line 809
    la	$v1,dgl_testmode
    lw	$v1,0($v1)
    bnez	$v1,.L0f0be380
    # Line 817
    move	$a2,$s0
    lwc1	$f5,0($s0)
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f5
    c.eq.d	$f0,$f1
    nop
    bc1tl	.L0f0be470
    sd	$ra,72($sp)
    mov.s	$f4,$f5
    sd	$ra,72($sp)
    sd	$a0,64($sp)
    sd	$a1,56($sp)
    sd	$a2,0($sp)
    sd	$a7,8($sp)
    addiu	$a6,$a6,-31776
    sd	$a6,16($sp)
    sd	$a2,0($sp)
.L0f0be410:
    # Line 821
    trunc.w.s	$f2,$f4
    la	$t9,sub_0f0c0000
    sd	$a1,56($sp)
    sd	$a0,64($sp)
    addiu	$t9,$t9,-8900
    mfc1	$a0,$f2
    bal gl_d_addtop
    addiu	$a1,$gp,-20808
    ld	$a2,0($sp)
    ld	$a1,56($sp)
    bltz	$v0,.L0f0be480
    ld	$a0,64($sp)
.L0f0be440:
    # Line 826
    sll	$a6,$v0,0x2
    addu	$a2,$a6,$a2
    addiu	$a2,$a2,4
    lwc1	$f4,0($a2)
    dmtc1	$zero,$f0
    cvt.d.s	$f3,$f4
    c.eq.d	$f3,$f0
    nop
    bc1fl	.L0f0be410
    sd	$a2,0($sp)
    ld	$ra,72($sp)
    sd	$ra,72($sp)
.L0f0be470:
    # Line 828
    subu	$a4,$a2,$s0
    sra	$a4,$a4,0x2
    b	.L0f0be380
    addiu	$a4,$a4,1
.L0f0be480:
    # Line 823
    ld	$a5,0($sp)
    ld	$a0,8($sp)
    la	$t9,gl_dgl_error
    lwc1	$f14,0($a5)
    ld	$a1,16($sp)
    jalr	$t9
    cvt.d.s	$f14,$f14
    # Line 824
    move	$v0,$zero
    ld	$a2,0($sp)
    ld	$a1,56($sp)
    b	.L0f0be440
    ld	$a0,64($sp)
.end gl_d_tlutdef

# Function: gl_d_qgetfd
# Declared: Line 837 (Source lines: 843-856)
# Address: 0x0f0be4b0 - 0x0f0be568 (Size: 184 bytes, Frame: 32)
.globl gl_d_qgetfd
.ent gl_d_qgetfd
gl_d_qgetfd:
    # Line 843
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v1,0xfff7 (gp disp hi)
    # addiu	v1,v1,19864 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    la	$v0,comm_curgfile
    lw	$v0,0($v0)
    lw	$v0,196($v0)
    bltz	$v0,.L0f0be4e4
    # Line 847
    la	$t9,gl_d_dglgetqport
.L0f0be4d8:
    ld	$gp,8($sp)
    # Line 856
    jr	$ra
    addiu	$sp,$sp,32
.L0f0be4e4:
    sd	$ra,16($sp)
    # Line 847
    bal gl_d_dglgetqport
    nop
    # Line 848
    la	$t9,gl_d_dglacceptqsocket
    bal gl_d_dglacceptqsocket
    sd	$v0,0($sp)
    # Line 849
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    # Line 850
    ld	$a1,0($sp)
    la	$t9,gl_socket_queue_init
    la	$a0,comm_curgfile
    andi	$a1,$a1,0xffff
    jalr	$t9
    lw	$a0,0($a0)
    beqz	$v0,.L0f0be558
    ld	$ra,16($sp)
    # Line 851
    la	$t9,gl_dgl_error
    la	$a1,sub_0f030000
    addiu	$a0,$gp,-14896
    jalr	$t9
    addiu	$a1,$a1,-31744
    # Line 852
    la	$t9,gl_comm_close
    jalr	$t9
    move	$a0,$zero
    # Line 853
    la	$t9,exit
    jalr	$t9
    li	$a0,1
    ld	$ra,16($sp)
.L0f0be558:
    la	$v0,comm_curgfile
    lw	$v0,0($v0)
    b	.L0f0be4d8
    lw	$v0,196($v0)
.end gl_d_qgetfd

# Function: gl_d_endfeedback
# Declared: Line 865 (Source lines: 872-876)
# Address: 0x0f0be568 - 0x0f0be5c8 (Size: 96 bytes, Frame: 32)
.globl gl_d_endfeedback
.ent gl_d_endfeedback
gl_d_endfeedback:
    # Line 872
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,19680 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    lw	$at,400($at)
    beqz	$at,.L0f0be5ac
    sd	$ra,8($sp)
    # Line 874
    la	$t9,gl_d_dglendfeedbackf
    bal gl_d_dglendfeedbackf
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0be5ac:
    # Line 876
    la	$t9,gl_d_dglendfeedbacks
    bal gl_d_dglendfeedbacks
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_d_endfeedback

# Function: gl_d_feedback
# Declared: Line 880 (Source lines: 888-894)
# Address: 0x0f0be5c8 - 0x0f0be620 (Size: 88 bytes, Frame: 32)
.globl gl_d_feedback
.ent gl_d_feedback
gl_d_feedback:
    # Line 888
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,19584 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,comm_curgfile
    lw	$at,0($at)
    lw	$at,400($at)
    beqz	$at,.L0f0be60c
    sd	$ra,8($sp)
    # Line 890
    la	$t9,gl_d_dglfeedbackf
    bal gl_d_dglfeedbackf
    nop
    ld	$ra,8($sp)
.L0f0be600:
    ld	$gp,0($sp)
    # Line 894
    jr	$ra
    addiu	$sp,$sp,32
.L0f0be60c:
    # Line 892
    la	$t9,gl_d_dglfeedbacks
    bal gl_d_dglfeedbacks
    nop
    b	.L0f0be600
    ld	$ra,8($sp)
.end gl_d_feedback

# Function: gl_d_lrectread
# Declared: Line 897 (Source lines: 908-913)
# Address: 0x0f0be620 - 0x0f0be6ac (Size: 140 bytes, Frame: 240)
.globl gl_d_lrectread
.ent gl_d_lrectread
gl_d_lrectread:
    # Line 908
    addiu	$sp,$sp,-112
    sd	$s8,8($sp)
    dsll32	$s8,$a0,0x10
    # Line 910
    li	$a0,3002
    sd	$a4,24($sp)
    # Line 908
    dsll32	$v1,$a3,0x10
    dsll32	$v0,$a2,0x10
    dsra32	$v0,$v0,0x10
    dsra32	$v1,$v1,0x10
    sd	$v1,32($sp)
    sd	$v0,40($sp)
    dsra32	$s8,$s8,0x10
    sd	$ra,0($sp)
    dsll32	$ra,$a1,0x10
    sd	$gp,16($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,19496 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 910
    la	$t9,gl_d_gl_pixmode_misc
    # Line 908
    dsra32	$ra,$ra,0x10
    sd	$ra,48($sp)
    # Line 910
    jalr	$t9
    la	$a1,gl_dgl_pixmodes
    # Line 913
    move	$a0,$s8
    ld	$a1,48($sp)
    la	$t9,gl_dgl_lrectread
    ld	$a2,40($sp)
    ld	$a3,32($sp)
    jalr	$t9
    ld	$a4,24($sp)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_d_lrectread

# Function: gl_d_lrectwrite
# Declared: Line 917 (Source lines: 928-934)
# Address: 0x0f0be6ac - 0x0f0be738 (Size: 140 bytes, Frame: 240)
.globl gl_d_lrectwrite
.ent gl_d_lrectwrite
gl_d_lrectwrite:
    # Line 928
    addiu	$sp,$sp,-112
    sd	$s8,8($sp)
    dsll32	$s8,$a0,0x10
    # Line 930
    li	$a0,3002
    sd	$a4,24($sp)
    # Line 928
    dsll32	$v1,$a3,0x10
    dsll32	$v0,$a2,0x10
    dsra32	$v0,$v0,0x10
    dsra32	$v1,$v1,0x10
    sd	$v1,32($sp)
    sd	$v0,40($sp)
    dsra32	$s8,$s8,0x10
    sd	$ra,0($sp)
    dsll32	$ra,$a1,0x10
    sd	$gp,16($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,19356 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 930
    la	$t9,gl_d_gl_pixmode_misc
    # Line 928
    dsra32	$ra,$ra,0x10
    sd	$ra,48($sp)
    # Line 930
    jalr	$t9
    la	$a1,gl_dgl_pixmodes
    # Line 933
    move	$a0,$s8
    ld	$a1,48($sp)
    la	$t9,gl_dgl_lrectwrite
    ld	$a2,40($sp)
    ld	$a3,32($sp)
    jalr	$t9
    ld	$a4,24($sp)
    # Line 934
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_d_lrectwrite

# Function: gl_d_gl_lrectproc
# Declared: Line 937 (Source lines: 949-956)
# Address: 0x0f0be738 - 0x0f0be7b0 (Size: 120 bytes, Frame: 240)
.globl gl_d_gl_lrectproc
.ent gl_d_gl_lrectproc
gl_d_gl_lrectproc:
    # Line 949
    addiu	$sp,$sp,-112
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 951
    li	$a0,3002
    sd	$a5,24($sp)
    sd	$a4,32($sp)
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$gp,16($sp)
    # Line 949
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,19216 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 951
    la	$t9,gl_d_gl_pixmode_misc
    sd	$a1,56($sp)
    sd	$ra,0($sp)
    jalr	$t9
    la	$a1,gl_dgl_pixmodes
    # Line 955
    move	$a0,$s8
    ld	$a1,56($sp)
    ld	$a2,48($sp)
    la	$t9,gl_dgl_gl_lrectproc
    ld	$a3,40($sp)
    ld	$a4,32($sp)
    jalr	$t9
    ld	$a5,24($sp)
    # Line 956
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_d_gl_lrectproc

# Function: gl_g_gl_pixmode_misc
# Declared: Line 977 (Source lines: 981-1025)
# Address: 0x0f0be7b0 - 0x0f0be828 (Size: 120 bytes, Frame: 0)
.globl gl_g_gl_pixmode_misc
.ent gl_g_gl_pixmode_misc
gl_g_gl_pixmode_misc:
    # Line 981
    lui	$a5,0xfff7
    addiu	$a5,$a5,19096
    addu	$at,$t9,$a5
    # Line 983
    lw	$a4,-23296($at)
    # Line 986
    li	$v0,3000
    # Line 983
    lw	$a4,0($a4)
    # Line 998
    lw	$a3,-20800($at)
    # Line 986
    beq	$a0,$v0,.L0f0be810
    # Line 983
    move	$a5,$a4
    # Line 986
    li	$v0,3001
    beq	$a0,$v0,.L0f0be820
    li	$v1,3002
    beql	$a0,$v1,.L0f0be7f0
    # Line 1005
    lw	$v1,11820($a4)
    # Line 1025
    jr	$ra
    nop
.L0f0be7f0:
    # Line 1005
    sll	$v0,$v1,0x10
    addu	$v0,$v0,$v1
    sw	$v0,0($a1)
    # Line 1006
    lw	$a3,11828($a5)
    sw	$a3,4($a1)
    # Line 1007
    lw	$a2,11824($a5)
    # Line 1025
    jr	$ra
    # Line 1007
    sw	$a2,8($a1)
.L0f0be810:
    # Line 989
    lw	$a2,11828($a4)
    # Line 990
    sw	$zero,11828($a4)
    # Line 1025
    jr	$ra
    # Line 989
    sw	$a2,-20800($at)
.L0f0be820:
    # Line 1025
    jr	$ra
    # Line 998
    sw	$a3,11828($a4)
.end gl_g_gl_pixmode_misc

# Function: gl_dgl_alen
# Declared: Line 1028 (Source lines: 1030-1031)
# Address: 0x0f0be828 - 0x0f0be8a8 (Size: 128 bytes, Frame: 0)
.globl gl_dgl_alen
.ent gl_dgl_alen
gl_dgl_alen:
    # Line 1030
    dsll32	$a0,$a0,0x10
    dsll32	$a4,$a1,0x10
    lui	$a1,0xfff7
    addiu	$a1,$a1,18976
    addu	$at,$t9,$a1
    lw	$v1,-32316($at)
    dsra32	$a0,$a0,0x10
    dsra32	$a4,$a4,0x10
    # Line 1031
    lw	$a1,0($v1)
    subu	$a0,$a4,$a0
    addiu	$a0,$a0,1
    andi	$a1,$a1,0xffff
    mult	$a0,$a1
    mfhi	$zero
    # Line 1030
    dsll32	$v0,$a3,0x10
    dsra32	$v0,$v0,0x10
    dsll32	$a0,$a2,0x10
    dsra32	$a0,$a0,0x10
    # Line 1031
    subu	$v0,$v0,$a0
    lw	$a0,8($v1)
    addiu	$v0,$v0,1
    mflo	$a1
    addu	$a0,$a0,$a1
    addiu	$a0,$a0,31
    sra	$v1,$a0,0x4
    srl	$v1,$v1,0x1b
    addu	$v1,$v1,$a0
    sra	$v1,$v1,0x5
    mult	$v0,$v1
    mflo	$v0
    jr	$ra
    nop
.end gl_dgl_alen

