# Source: ../igloo/glws/textport.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/textport.c -o textport.T
# Total Functions: 13

.text

# Function: gl_open_textport
# Declared: Line 44 (Source lines: 45-46)
# Address: 0x0f1237a0 - 0x0f1237dc (Size: 60 bytes, Frame: 16)
.globl gl_open_textport
.ent gl_open_textport
gl_open_textport:
    # Line 45
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a1,0xfff1
    addiu	$a1,$a1,-1368
    addu	$gp,$t9,$a1
    # Line 46
    la	$t9,open
    la	$a0,sub_0f020000
    li	$a1,2
    jalr	$t9
    addiu	$a0,$a0,22472
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_open_textport

# Function: opentty
# Declared: Line 54 (Source lines: 55-77)
# Address: 0x0f1237dc - 0x0f1238a8 (Size: 204 bytes, Frame: 208)
.ent opentty
opentty:
    # Line 60
    la	$t9,fflush
    # Line 55
    addiu	$sp,$sp,-80
    sd	$s0,56($sp)
    move	$s0,$a0
    # Line 60
    la	$a0,__iob
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a0,$a0,16
    # Line 62
    la	$t9,gl_open_textport
    bal gl_open_textport
    sd	$s0,48($sp)
    move	$s0,$v0
    bltz	$v0,.L0f123898
    ld	$ra,40($sp)
    # Line 64
    la	$t9,ioctl
    move	$a0,$s0
    ld	$a2,48($sp)
    jalr	$t9
    li	$a1,21505
    # Line 67
    la	$t9,ioctl
    move	$a0,$s0
    addiu	$a2,$sp,0
    jalr	$t9
    li	$a1,21505
    # Line 75
    addiu	$a2,$sp,0
    li	$a1,21508
    move	$a0,$s0
    # Line 70
    sw	$zero,0($sp)
    # Line 73
    li	$t1,1
    # Line 74
    sb	$t1,22($sp)
    # Line 73
    sb	$t1,21($sp)
    # Line 72
    li	$t0,-2
    # Line 71
    li	$a6,-16
    # Line 75
    la	$t9,ioctl
    # Line 71
    lw	$a5,12($sp)
    # Line 72
    lw	$a7,4($sp)
    # Line 68
    li	$a4,-49
    # Line 71
    and	$a5,$a5,$a6
    # Line 72
    and	$a7,$a7,$t0
    # Line 68
    lw	$a3,8($sp)
    # Line 72
    sw	$a7,4($sp)
    # Line 71
    sw	$a5,12($sp)
    # Line 68
    and	$a3,$a3,$a4
    # Line 69
    ori	$a3,$a3,0x30
    # Line 75
    jalr	$t9
    # Line 69
    sw	$a3,8($sp)
    ld	$ra,40($sp)
.L0f123898:
    # Line 77
    move	$v0,$s0
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end opentty

# Function: closetty
# Declared: Line 80 (Source lines: 81-84)
# Address: 0x0f1238a8 - 0x0f1238e4 (Size: 60 bytes, Frame: 32)
.ent closetty
closetty:
    # Line 81
    move	$a2,$a1
    # Line 82
    li	$a1,21508
    # Line 81
    addiu	$sp,$sp,-32
    # Line 82
    la	$t9,ioctl
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 81
    move	$s8,$a0
    # Line 83
    la	$t9,close
    jalr	$t9
    move	$a0,$s8
    ld	$ra,0($sp)
    # Line 84
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end closetty

# Function: sendtty
# Declared: Line 87 (Source lines: 88-98)
# Address: 0x0f1238e4 - 0x0f123984 (Size: 160 bytes, Frame: 208)
.ent sendtty
sendtty:
    # Line 88
    addiu	$sp,$sp,-80
    sd	$s1,56($sp)
    sd	$s0,48($sp)
    # Line 90
    la	$t9,sub_0f120000
    # Line 88
    move	$s0,$a0
    sd	$ra,40($sp)
    # Line 90
    addiu	$t9,$t9,14300
    bal gl_open_textport
    addiu	$a0,$sp,0
    move	$s1,$v0
    bltz	$v0,.L0f123974
    ld	$ra,40($sp)
    # Line 94
    lbu	$at,0($s0)
    # Line 92
    move	$a2,$zero
    # Line 94
    beqz	$at,.L0f123948
    addiu	$v0,$s0,1
    lbu	$v1,0($v0)
.L0f123928:
    addiu	$a2,$a2,1
    beqz	$v1,.L0f123948
    nop
    lbu	$a3,1($v0)
    addiu	$v0,$v0,2
    addiu	$a2,$a2,1
    bnezl	$a3,.L0f123928
    lbu	$v1,0($v0)
.L0f123948:
    # Line 95
    la	$t9,write
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    # Line 96
    la	$t9,sub_0f120000
    move	$a0,$s1
    addiu	$a1,$sp,0
    addiu	$t9,$t9,14504
    bal gl_open_textport
    ld	$s0,48($sp)
    ld	$ra,40($sp)
.L0f123974:
    # Line 98
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end sendtty

# Function: gl_g_textinit
# Declared: Line 102 (Source lines: 103-107)
# Address: 0x0f123984 - 0x0f1239e4 (Size: 96 bytes, Frame: 48)
.globl gl_g_textinit
.ent gl_g_textinit
gl_g_textinit:
    # Line 105
    li	$a6,121
    li	$a5,47
    li	$a4,2
    li	$a3,91
    li	$a2,27
    # Line 103
    addiu	$sp,$sp,-48
    # Line 105
    addiu	$a0,$sp,0
    sd	$gp,40($sp)
    # Line 103
    lui	$a7,0xfff1
    addiu	$a7,$a7,-1852
    addu	$gp,$t9,$a7
    # Line 105
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a1,$a1,22488
    # Line 106
    la	$t9,sub_0f120000
    addiu	$t9,$t9,14564
    bal gl_open_textport
    addiu	$a0,$sp,0
    # Line 107
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_textinit

# Function: gl_g_tpon
# Declared: Line 111 (Source lines: 112-116)
# Address: 0x0f1239e4 - 0x0f123a44 (Size: 96 bytes, Frame: 48)
.globl gl_g_tpon
.ent gl_g_tpon
gl_g_tpon:
    # Line 114
    li	$a6,121
    li	$a5,47
    li	$a4,4
    li	$a3,91
    li	$a2,27
    # Line 112
    addiu	$sp,$sp,-48
    # Line 114
    addiu	$a0,$sp,0
    sd	$gp,40($sp)
    # Line 112
    lui	$a7,0xfff1
    addiu	$a7,$a7,-1948
    addu	$gp,$t9,$a7
    # Line 114
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a1,$a1,22488
    # Line 115
    la	$t9,sub_0f120000
    addiu	$t9,$t9,14564
    bal gl_open_textport
    addiu	$a0,$sp,0
    # Line 116
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_tpon

# Function: gl_g_tpoff
# Declared: Line 118 (Source lines: 119-123)
# Address: 0x0f123a44 - 0x0f123aa4 (Size: 96 bytes, Frame: 48)
.globl gl_g_tpoff
.ent gl_g_tpoff
gl_g_tpoff:
    # Line 121
    li	$a6,121
    li	$a5,47
    li	$a4,3
    li	$a3,91
    li	$a2,27
    # Line 119
    addiu	$sp,$sp,-48
    # Line 121
    addiu	$a0,$sp,0
    sd	$gp,40($sp)
    # Line 119
    lui	$a7,0xfff1
    addiu	$a7,$a7,-2044
    addu	$gp,$t9,$a7
    # Line 121
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a1,$a1,22488
    # Line 122
    la	$t9,sub_0f120000
    addiu	$t9,$t9,14564
    bal gl_open_textport
    addiu	$a0,$sp,0
    # Line 123
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_tpoff

# Function: gl_g_textport
# Declared: Line 127 (Source lines: 128-212)
# Address: 0x0f123aa4 - 0x0f123df0 (Size: 844 bytes, Frame: 240)
.globl gl_g_textport
.ent gl_g_textport
gl_g_textport:
    # Line 128
    addiu	$sp,$sp,-240
    sd	$s5,176($sp)
    sd	$s2,152($sp)
    move	$s2,$a0
    # Line 136
    addiu	$a0,$sp,16
    sd	$s3,160($sp)
    # Line 128
    move	$s3,$a3
    sd	$s4,144($sp)
    sd	$gp,168($sp)
    sd	$ra,136($sp)
    lui	$ra,0xfff1
    addiu	$ra,$ra,-2140
    addu	$gp,$t9,$ra
    # Line 136
    la	$t9,sub_0f120000
    # Line 128
    move	$s4,$a2
    sd	$s1,128($sp)
    # Line 136
    addiu	$t9,$t9,14300
    bal gl_open_textport
    # Line 128
    move	$s1,$a1
    # Line 136
    move	$s5,$v0
    slt	$at,$s1,$s2
    bltz	$v0,.L0f123d9c
    ld	$ra,136($sp)
    # Line 144
    la	$a0,gl_sstatep
    sd	$s6,200($sp)
    # Line 136
    beqz	$at,.L0f123b20
    sd	$s0,192($sp)
    # Line 141
    move	$s0,$s1
    # Line 140
    subu	$s6,$s2,$s1
    # Line 141
    b	.L0f123b2c
    # Line 140
    addiu	$s6,$s6,1
.L0f123b20:
    # Line 144
    move	$s0,$s2
    # Line 143
    subu	$s6,$s1,$s2
    addiu	$s6,$s6,1
.L0f123b2c:
    # Line 144
    lw	$a0,0($a0)
    lw	$a1,0($a0)
    slt	$at,$a1,$s6
    beqz	$at,.L0f123b44
    ld	$s2,152($sp)
    # Line 146
    move	$s6,$a1
.L0f123b44:
    slt	$a4,$s3,$s4
    beqz	$a4,.L0f123b60
    sd	$s7,184($sp)
    # Line 149
    move	$s1,$s3
    # Line 148
    subu	$s7,$s4,$s3
    # Line 149
    b	.L0f123b6c
    # Line 148
    addiu	$s7,$s7,1
.L0f123b60:
    # Line 152
    move	$s1,$s4
    # Line 151
    subu	$s7,$s3,$s4
    addiu	$s7,$s7,1
.L0f123b6c:
    # Line 152
    lw	$a1,4($a0)
    ld	$s4,144($sp)
    slt	$at,$a1,$s7
    beqz	$at,.L0f123b84
    ld	$s3,160($sp)
    # Line 154
    move	$s7,$a1
.L0f123b84:
    # Line 157
    move	$a0,$v0
    la	$t9,ioctl
    addiu	$a2,$sp,56
    lui	$a1,0x4008
    jalr	$t9
    ori	$a1,$a1,0x7468
    bltz	$v0,.L0f123d74
    # Line 161
    lhu	$a0,56($sp)
    # Line 157
    lhu	$v0,58($sp)
    beqz	$v0,.L0f123ddc
    # Line 166
    lhu	$a4,60($sp)
.L0f123bb0:
    # Line 161
    beqzl	$a0,.L0f123de8
    # Line 166
    li	$a0,24
.L0f123bb8:
    div	$zero,$a4,$v0
    mflo	$t3
    beqz	$t3,.L0f123dbc
    teq	$v0,$zero,0x7
    # Line 172
    div	$zero,$s6,$t3
    teq	$t3,$zero,0x7
    mflo	$v0
    nop
    nop
.L0f123bdc:
    # Line 174
    slti	$a7,$v0,81
    bnez	$a7,.L0f123bf0
    # Line 177
    lhu	$t8,62($sp)
    # Line 176
    li	$v0,80
    # Line 177
    lhu	$t8,62($sp)
.L0f123bf0:
    # Line 176
    blez	$v0,.L0f123dc4
    nop
.L0f123bf8:
    # Line 177
    div	$zero,$t8,$a0
    mflo	$t8
    beqz	$t8,.L0f123dcc
    teq	$a0,$zero,0x7
    # Line 181
    div	$zero,$s7,$t8
    teq	$t8,$zero,0x7
    mflo	$t2
    nop
    nop
.L0f123c1c:
    # Line 183
    slti	$at,$t2,41
    bnez	$at,.L0f123c2c
    nop
    # Line 184
    li	$t2,40
.L0f123c2c:
    blez	$t2,.L0f123dd4
    nop
.L0f123c34:
    # Line 189
    mult	$t3,$v0
    # Line 198
    li	$a7,47
    li	$a4,204
    li	$a3,91
    # Line 189
    mflo	$t1
    # Line 198
    li	$a2,27
    la	$a1,sub_0f020000
    # Line 191
    mult	$t8,$t2
    # Line 198
    addiu	$a0,$sp,64
    la	$t9,sprintf
    addiu	$a1,$a1,22504
    li	$a5,121
    sw	$a5,4($sp)
    addu	$a5,$t3,$t1
    addiu	$a5,$a5,-1
    # Line 189
    subu	$t1,$s6,$t1
    srl	$t0,$t1,0x1f
    addu	$t0,$t0,$t1
    sra	$t0,$t0,0x1
    addu	$s0,$t0,$s0
    # Line 191
    mflo	$v1
    # Line 198
    addu	$a6,$t8,$v1
    addiu	$a6,$a6,-1
    # Line 191
    subu	$v1,$s7,$v1
    srl	$v0,$v1,0x1f
    addu	$v0,$v0,$v1
    sra	$v0,$v0,0x1
    # Line 198
    jalr	$t9
    # Line 191
    addu	$s1,$v0,$s1
    # Line 199
    move	$a2,$zero
    # Line 200
    lbu	$a7,64($sp)
    addiu	$v0,$sp,65
    ld	$s7,184($sp)
    beqz	$a7,.L0f123ce4
    ld	$s6,200($sp)
    lbu	$at,0($v0)
.L0f123cc4:
    addiu	$a2,$a2,1
    beqz	$at,.L0f123ce4
    nop
    lbu	$v1,1($v0)
    addiu	$v0,$v0,2
    addiu	$a2,$a2,1
    bnezl	$v1,.L0f123cc4
    lbu	$at,0($v0)
.L0f123ce4:
    # Line 201
    la	$t9,write
    move	$a0,$s5
    jalr	$t9
    addiu	$a1,$sp,64
    # Line 203
    li	$a7,47
    move	$a6,$s1
    move	$a5,$s0
    li	$a4,205
    li	$a3,91
    li	$a2,27
    addiu	$a0,$sp,96
    li	$t0,121
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sw	$t0,4($sp)
    jalr	$t9
    addiu	$a1,$a1,22504
    # Line 204
    move	$a2,$zero
    # Line 205
    lbu	$at,96($sp)
    addiu	$v0,$sp,97
    ld	$s1,128($sp)
    beqz	$at,.L0f123d64
    ld	$s0,192($sp)
    lbu	$v1,0($v0)
.L0f123d44:
    addiu	$a2,$a2,1
    beqz	$v1,.L0f123d64
    nop
    lbu	$a4,1($v0)
    addiu	$v0,$v0,2
    addiu	$a2,$a2,1
    bnezl	$a4,.L0f123d44
    lbu	$v1,0($v0)
.L0f123d64:
    # Line 206
    la	$t9,write
    move	$a0,$s5
    jalr	$t9
    addiu	$a1,$sp,96
.L0f123d74:
    # Line 210
    move	$a0,$s5
    addiu	$a1,$sp,16
    ld	$s7,184($sp)
    la	$t9,sub_0f120000
    ld	$s1,128($sp)
    ld	$s0,192($sp)
    addiu	$t9,$t9,14504
    bal gl_open_textport
    ld	$s6,200($sp)
    ld	$ra,136($sp)
.L0f123d9c:
    ld	$gp,168($sp)
    # Line 212
    ld	$s1,128($sp)
    ld	$s2,152($sp)
    ld	$s3,160($sp)
    ld	$s4,144($sp)
    ld	$s5,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0f123dbc:
    b	.L0f123bdc
    # Line 174
    li	$v0,1
.L0f123dc4:
    b	.L0f123bf8
    # Line 177
    li	$v0,1
.L0f123dcc:
    b	.L0f123c1c
    # Line 183
    li	$t2,1
.L0f123dd4:
    b	.L0f123c34
    # Line 185
    li	$t2,1
.L0f123ddc:
    # Line 161
    li	$v0,80
    b	.L0f123bb0
    sh	$v0,58($sp)
.L0f123de8:
    b	.L0f123bb8
    # Line 166
    sh	$a0,56($sp)
.end gl_g_textport

# Function: gl_g_pagecolor
# Declared: Line 216 (Source lines: 217-221)
# Address: 0x0f123df0 - 0x0f123e54 (Size: 100 bytes, Frame: 192)
.globl gl_g_pagecolor
.ent gl_g_pagecolor
gl_g_pagecolor:
    # Line 219
    li	$a7,121
    li	$a6,47
    li	$a4,102
    li	$a3,91
    li	$a2,27
    # Line 217
    move	$a5,$a0
    addiu	$sp,$sp,-64
    # Line 219
    addiu	$a0,$sp,0
    sd	$gp,40($sp)
    # Line 217
    lui	$t0,0xfff1
    addiu	$t0,$t0,-2984
    addu	$gp,$t9,$t0
    # Line 219
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a1,$a1,22528
    # Line 220
    la	$t9,sub_0f120000
    addiu	$t9,$t9,14564
    bal gl_open_textport
    addiu	$a0,$sp,0
    # Line 221
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_pagecolor

# Function: gl_g_textcolor
# Declared: Line 225 (Source lines: 226-230)
# Address: 0x0f123e54 - 0x0f123eb8 (Size: 100 bytes, Frame: 192)
.globl gl_g_textcolor
.ent gl_g_textcolor
gl_g_textcolor:
    # Line 228
    li	$a7,121
    li	$a6,47
    li	$a4,101
    li	$a3,91
    li	$a2,27
    # Line 226
    move	$a5,$a0
    addiu	$sp,$sp,-64
    # Line 228
    addiu	$a0,$sp,0
    sd	$gp,40($sp)
    # Line 226
    lui	$t0,0xfff1
    addiu	$t0,$t0,-3084
    addu	$gp,$t9,$t0
    # Line 228
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,32($sp)
    jalr	$t9
    addiu	$a1,$a1,22528
    # Line 229
    la	$t9,sub_0f120000
    addiu	$t9,$t9,14564
    bal gl_open_textport
    addiu	$a0,$sp,0
    # Line 230
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end gl_g_textcolor

# Function: gl_g_gettp
# Declared: Line 237 (Source lines: 243-243)
# Address: 0x0f123eb8 - 0x0f123ec0 (Size: 8 bytes, Frame: 0)
.globl gl_g_gettp
.ent gl_g_gettp
gl_g_gettp:
    # Line 243
    jr	$ra
    nop
.end gl_g_gettp

# Function: gl_g_pagewritemask
# Declared: Line 245 (Source lines: 248-248)
# Address: 0x0f123ec0 - 0x0f123ec8 (Size: 8 bytes, Frame: 0)
.globl gl_g_pagewritemask
.ent gl_g_pagewritemask
gl_g_pagewritemask:
    # Line 248
    jr	$ra
    nop
.end gl_g_pagewritemask

# Function: gl_g_textwritemask
# Declared: Line 250 (Source lines: 253-253)
# Address: 0x0f123ec8 - 0x0f123ed0 (Size: 8 bytes, Frame: 0)
.globl gl_g_textwritemask
.ent gl_g_textwritemask
gl_g_textwritemask:
    # Line 253
    jr	$ra
    nop
.end gl_g_textwritemask

