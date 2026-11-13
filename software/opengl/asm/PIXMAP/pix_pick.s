# Source: ../PIXMAP/pix_pick.c
# Category: PIXMAP
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../PIXMAP/pix_pick.c
# Total Functions: 2

.text

# Function: __glPixPickSpanProcs
# Declared: Line 21 (Source lines: 22-263)
# Address: 0x0dba9abc - 0x0dbaa064 (Size: 1448 bytes, Frame: 224)
.globl __glPixPickSpanProcs
.ent __glPixPickSpanProcs
__glPixPickSpanProcs:
    # Line 25
    lw	$a3,11832($a0)
    # Line 22
    addiu	$sp,$sp,-96
    sd	$s4,8($sp)
    # Line 31
    move	$s4,$zero
    sd	$s3,16($sp)
    # Line 22
    move	$s3,$a0
    sd	$s1,40($sp)
    # Line 33
    addiu	$s1,$a0,12236
    sd	$s0,32($sp)
    # Line 32
    addiu	$s0,$a0,12176
    sd	$s2,48($sp)
    # Line 24
    lw	$s2,30488($a0)
    sd	$gp,24($sp)
    # Line 36
    lbu	$at,29888($a0)
    # Line 22
    lui	$v0,0x5
    addiu	$v0,$v0,19420
    # Line 36
    beqz	$at,.L0dba9b10
    # Line 22
    addu	$gp,$t9,$v0
    # Line 36
    lw	$v1,1696($s3)
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0dba9b24
.L0dba9b10:
    # Line 38
    la	$a1,__glClipSpan
    # Line 39
    addiu	$s1,$s1,4
    # Line 38
    addiu	$s0,$s0,4
    sw	$a1,-4($s0)
    # Line 39
    sw	$zero,-4($s1)
.L0dba9b24:
    andi	$a2,$s2,0x10
    beqz	$a2,.L0dba9b48
    # Line 44
    la	$at,__glStippleStippledSpan
    sd	$s5,56($sp)
    # Line 43
    la	$v1,__glStippleSpan
    # Line 44
    addiu	$s1,$s1,4
    # Line 43
    addiu	$s0,$s0,4
    sw	$v1,-4($s0)
    # Line 44
    sw	$at,-4($s1)
.L0dba9b48:
    # Line 103
    la	$t3,__glDepthPassStippledSpan
    la	$a0,__glStencilTestStippledSpan
    la	$t2,__glDepthTestStencilSpan
    la	$t0,__glDepthTestOffsetSpan
    sd	$s5,56($sp)
    # Line 44
    andi	$s5,$s2,0x200
    beqz	$s5,.L0dba9cc8
    # Line 103
    la	$a7,__glDepthTestStippledOffsetSpan
    la	$a4,__glStencilTestSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$t8,__glDepthPassSpan
    la	$t1,__glDepthTestStencilStippledSpan
    la	$a5,__glDepthTestStencilStippledOffsetSpan
.L0dba9b7c:
    andi	$a1,$s2,0x1
    beqz	$a1,.L0dba9d28
    andi	$v0,$s2,0x2
    beqz	$v0,.L0dba9d4c
    # Line 113
    la	$a2,__glShadeRGBASpan
    sw	$a2,0($s0)
    # Line 114
    sw	$a2,0($s1)
.L0dba9b98:
    # Line 129
    addiu	$s1,$s1,4
    # Line 132
    lui	$v1,0x2
    # Line 129
    andi	$at,$s2,0x8
    beqz	$at,.L0dba9be0
    # Line 128
    addiu	$s0,$s0,4
    # Line 131
    la	$a2,__glTextureSpan
    # Line 132
    la	$a1,__glTextureStippledSpan
    # Line 131
    sw	$a2,0($s0)
    # Line 132
    sw	$a1,0($s1)
    lw	$v0,1696($s3)
    lui	$at,0x4000
    and	$v1,$v0,$v1
    beqz	$v1,.L0dba9bd8
    and	$at,$v0,$at
    beqzl	$at,.L0dba9dd0
    sd	$a3,64($sp)
.L0dba9bd8:
    # Line 165
    addiu	$s1,$s1,4
.L0dba9bdc:
    # Line 164
    addiu	$s0,$s0,4
.L0dba9be0:
    # Line 165
    andi	$v1,$s2,0x1000
    beqz	$v1,.L0dba9c14
    # Line 181
    andi	$v0,$s2,0x4
    # Line 165
    lw	$a1,1812($s3)
    li	$a2,4354
    beq	$a1,$a2,.L0dba9d5c
    # Line 172
    la	$v1,__glFogSpan
    # Line 173
    la	$at,__glFogStippledSpan
    # Line 172
    sw	$v1,0($s0)
    # Line 173
    sw	$at,0($s1)
.L0dba9c08:
    # Line 176
    addiu	$s1,$s1,4
    # Line 175
    addiu	$s0,$s0,4
    # Line 181
    andi	$v0,$s2,0x4
.L0dba9c14:
    # Line 176
    beqz	$s5,.L0dba9c6c
    # Line 181
    la	$a1,__glAlphaTestStippledSpan
    # Line 180
    la	$a2,__glAlphaTestSpan
    # Line 181
    addiu	$s1,$s1,4
    # Line 180
    addiu	$s0,$s0,4
    sw	$a2,-4($s0)
    # Line 181
    beqz	$s5,.L0dba9c6c
    sw	$a1,-4($s1)
    andi	$at,$s2,0x20
    beqz	$at,.L0dba9d84
    ld	$s5,56($sp)
    # Line 189
    sw	$a4,0($s0)
    # Line 191
    beqz	$v0,.L0dba9dc4
    sw	$a0,0($s1)
    lui	$v1,0x4
    and	$v1,$s2,$v1
    beqzl	$v1,.L0dba9dbc
    # Line 207
    sw	$t2,4($s0)
    # Line 204
    sw	$a6,4($s0)
    # Line 205
    sw	$a5,4($s1)
.L0dba9c64:
    # Line 216
    addiu	$s1,$s1,8
    # Line 215
    addiu	$s0,$s0,8
.L0dba9c6c:
    ld	$s5,56($sp)
.L0dba9c70:
    # Line 238
    lw	$a1,1788($s3)
    subu	$v0,$s0,$s3
    li	$a2,1032
    beq	$a1,$a2,.L0dba9d70
    # Line 256
    addiu	$a0,$v0,-12172
.L0dba9c84:
    # Line 252
    lw	$a1,184($a3)
    # Line 263
    ld	$s2,48($sp)
    # Line 252
    sw	$a1,0($s0)
    # Line 258
    la	$a2,__glProcessReplicateSpan
    # Line 253
    lw	$at,188($a3)
    # Line 256
    sra	$a0,$a0,0x2
    # Line 263
    ld	$s0,32($sp)
    # Line 253
    sw	$at,0($s1)
    # Line 256
    beqz	$s4,.L0dba9d3c
    sw	$a0,12300($s3)
    # Line 258
    sw	$a2,12304($s3)
.L0dba9cb0:
    # Line 263
    ld	$s1,40($sp)
    ld	$gp,24($sp)
    ld	$s3,16($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dba9cc8:
    # Line 44
    andi	$at,$s2,0x20
    beqz	$at,.L0dba9e94
    andi	$v0,$s2,0x4
    # Line 54
    la	$a4,__glStencilTestSpan
    la	$a0,__glStencilTestStippledSpan
    sw	$a4,0($s0)
    # Line 56
    beqz	$v0,.L0dba9f20
    sw	$a0,0($s1)
    lui	$v1,0x4
    and	$v1,$s2,$v1
    beqz	$v1,.L0dba9f04
    # Line 70
    la	$t1,__glDepthTestStencilStippledSpan
    # Line 69
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    # Line 70
    la	$t2,__glDepthTestStencilSpan
    # Line 69
    sw	$a6,4($s0)
    # Line 70
    sw	$a5,4($s1)
.L0dba9d0c:
    # Line 73
    la	$t3,__glDepthPassStippledSpan
    la	$t8,__glDepthPassSpan
.L0dba9d14:
    # Line 81
    la	$a7,__glDepthTestStippledOffsetSpan
    la	$t0,__glDepthTestOffsetSpan
    addiu	$s1,$s1,8
    b	.L0dba9b7c
    # Line 80
    addiu	$s0,$s0,8
.L0dba9d28:
    # Line 117
    beqz	$v0,.L0dba9ef4
    # Line 121
    la	$a1,__glShadeCISpan
    sw	$a1,0($s0)
    # Line 122
    b	.L0dba9b98
    sw	$a1,0($s1)
.L0dba9d3c:
    # Line 260
    la	$a2,__glProcessSpan
    # Line 261
    sw	$a0,12296($s3)
    b	.L0dba9cb0
    # Line 260
    sw	$a2,12304($s3)
.L0dba9d4c:
    # Line 114
    la	$at,__glFlatRGBASpan
    # Line 116
    sw	$at,0($s0)
    b	.L0dba9b98
    # Line 117
    sw	$at,0($s1)
.L0dba9d5c:
    # Line 169
    la	$a1,__glFogSpanSlow
    # Line 170
    la	$v1,__glFogStippledSpanSlow
    # Line 169
    sw	$a1,0($s0)
    # Line 170
    b	.L0dba9c08
    sw	$v1,0($s1)
.L0dba9d70:
    # Line 248
    li	$s4,1
    # Line 247
    addiu	$a2,$v0,-12176
    sra	$a2,$a2,0x2
    b	.L0dba9c84
    sw	$a2,12296($s3)
.L0dba9d84:
    # Line 216
    beqzl	$v0,.L0dba9c70
    ld	$s5,56($sp)
    lw	$at,1536($s3)
    li	$v1,512
    beq	$at,$v1,.L0dba9f5c
    # Line 221
    lui	$a1,0x4
    and	$a1,$s2,$a1
    beqzl	$a1,.L0dba9f44
    # Line 238
    addiu	$s1,$s1,4
    # Line 235
    addiu	$s1,$s1,4
    # Line 234
    addiu	$s0,$s0,4
    sw	$t0,-4($s0)
    # Line 235
    b	.L0dba9c6c
    sw	$a7,-4($s1)
.L0dba9dbc:
    b	.L0dba9c64
    # Line 208
    sw	$t1,4($s1)
.L0dba9dc4:
    # Line 212
    sw	$t8,4($s0)
    b	.L0dba9c64
    # Line 213
    sw	$t3,4($s1)
.L0dba9dd0:
    # Line 138
    # lw $t9, -25296($gp) # &__glLookUpTextureParams
    move	$a0,$s3
    sd	$ra,72($sp)
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 139
    # lw $t9, -25288($gp) # &__glLookUpTexture
    sd	$v0,0($sp)
    move	$a0,$s3
    jal	__glLookUpTexture
    li	$a1,3553
    la	$a0,__glStencilTestStippledSpan
    la	$a4,__glStencilTestSpan
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a7,__glDepthTestStippledOffsetSpan
    la	$t0,__glDepthTestOffsetSpan
    la	$t1,__glDepthTestStencilStippledSpan
    la	$t2,__glDepthTestStencilSpan
    lw	$t9,228($v0)
    la	$t3,__glDepthPassStippledSpan
    la	$t8,__glDepthPassSpan
    lw	$a2,64($t9)
    ld	$a3,64($sp)
    li	$at,6407
    bne	$a2,$at,.L0dba9bd8
    ld	$ra,72($sp)
    lw	$v1,56($t9)
    bnezl	$v1,.L0dba9bdc
    # Line 165
    addiu	$s1,$s1,4
    ld	$v0,0($sp)
    # Line 140
    lw	$v0,12($v0)
    li	$a1,9986
    beq	$v0,$a1,.L0dba9fd8
.L0dba9e54:
    # Line 145
    li	$v1,9987
.L0dba9e58:
    beq	$v0,$v1,.L0dbaa008
.L0dba9e5c:
    # Line 150
    li	$t9,9728
.L0dba9e60:
    beq	$t9,$v0,.L0dbaa038
.L0dba9e64:
    # Line 155
    li	$a1,9984
.L0dba9e68:
    bnel	$v0,$a1,.L0dba9bdc
    # Line 165
    addiu	$s1,$s1,4
    ld	$a2,0($sp)
    # Line 155
    lw	$a2,16($a2)
    bnel	$a2,$t9,.L0dba9bdc
    # Line 165
    addiu	$s1,$s1,4
    # Line 159
    la	$v1,__glTextureRGB_N_NMN_Span
    # Line 160
    la	$at,__glTextureRGB_N_NMN_StippledSpan
    # Line 159
    sw	$v1,0($s0)
    b	.L0dba9bd8
    # Line 160
    sw	$at,0($s1)
.L0dba9e94:
    # Line 81
    beqz	$v0,.L0dba9f84
    # Line 103
    la	$a7,__glDepthTestStippledOffsetSpan
    # Line 81
    lw	$a1,1536($s3)
    li	$a2,512
    beq	$a1,$a2,.L0dba9fac
    # Line 86
    lui	$at,0x4
    and	$at,$s2,$at
    beqz	$at,.L0dba9f8c
    # Line 103
    la	$a7,__glDepthTestStippledOffsetSpan
    # Line 100
    addiu	$s1,$s1,4
    # Line 99
    la	$t0,__glDepthTestOffsetSpan
    la	$a7,__glDepthTestStippledOffsetSpan
    addiu	$s0,$s0,4
    sw	$t0,-4($s0)
    # Line 100
    sw	$a7,-4($s1)
.L0dba9ed0:
    # Line 103
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$t3,__glDepthPassStippledSpan
    la	$t1,__glDepthTestStencilStippledSpan
    la	$a0,__glStencilTestStippledSpan
    la	$t8,__glDepthPassSpan
    la	$t2,__glDepthTestStencilSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    b	.L0dba9b7c
    la	$a4,__glStencilTestSpan
.L0dba9ef4:
    # Line 122
    la	$v1,__glFlatCISpan
    # Line 124
    sw	$v1,0($s0)
    b	.L0dba9b98
    # Line 125
    sw	$v1,0($s1)
.L0dba9f04:
    # Line 73
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    # Line 70
    la	$t2,__glDepthTestStencilSpan
    # Line 73
    la	$a6,__glDepthTestStencilOffsetSpan
    # Line 70
    la	$t1,__glDepthTestStencilStippledSpan
    # Line 72
    sw	$t2,4($s0)
    b	.L0dba9d0c
    # Line 73
    sw	$t1,4($s1)
.L0dba9f20:
    # Line 78
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$t1,__glDepthTestStencilStippledSpan
    la	$t2,__glDepthTestStencilSpan
    # Line 73
    la	$t8,__glDepthPassSpan
    # Line 78
    la	$a6,__glDepthTestStencilOffsetSpan
    # Line 73
    la	$t3,__glDepthPassStippledSpan
    # Line 77
    sw	$t8,4($s0)
    b	.L0dba9d14
    # Line 78
    sw	$t3,4($s1)
.L0dba9f44:
    la	$a2,__glDepthTestSpan
    # Line 237
    addiu	$s0,$s0,4
    la	$a1,__glDepthTestStippledSpan
    sw	$a2,-4($s0)
    b	.L0dba9c6c
    # Line 238
    sw	$a1,-4($s1)
.L0dba9f5c:
    # Line 220
    la	$s0,__glNop
    ld	$gp,24($sp)
    # Line 221
    ld	$s1,40($sp)
    ld	$s2,48($sp)
    ld	$s4,8($sp)
    # Line 220
    sw	$s0,12304($s3)
    # Line 221
    ld	$s0,32($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dba9f84:
    b	.L0dba9ed0
    # Line 103
    la	$t0,__glDepthTestOffsetSpan
.L0dba9f8c:
    la	$t0,__glDepthTestOffsetSpan
    addiu	$s1,$s1,4
    # Line 100
    la	$v1,__glDepthTestSpan
    # Line 102
    addiu	$s0,$s0,4
    # Line 100
    la	$at,__glDepthTestStippledSpan
    # Line 102
    sw	$v1,-4($s0)
    b	.L0dba9ed0
    # Line 103
    sw	$at,-4($s1)
.L0dba9fac:
    # Line 85
    la	$a1,__glNop
    ld	$gp,24($sp)
    # Line 86
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,48($sp)
    ld	$s4,8($sp)
    ld	$s5,56($sp)
    # Line 85
    sw	$a1,12304($s3)
    # Line 86
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dba9fd8:
    ld	$a2,0($sp)
    # Line 140
    lw	$a2,16($a2)
    li	$at,9729
    bne	$a2,$at,.L0dba9e58
    # Line 145
    li	$v1,9987
    # Line 144
    la	$a1,__glTextureRGB_L_NML_Span
    # Line 145
    la	$v1,__glTextureRGB_L_NML_StippledSpan
    ld	$v0,0($sp)
    # Line 144
    sw	$a1,0($s0)
    # Line 145
    sw	$v1,0($s1)
    b	.L0dba9e54
    lw	$v0,12($v0)
.L0dbaa008:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    li	$at,9729
    bne	$a2,$at,.L0dba9e60
    # Line 150
    li	$t9,9728
    # Line 149
    la	$a1,__glTextureRGB_L_LML_Span
    # Line 150
    la	$v1,__glTextureRGB_L_LML_StippledSpan
    ld	$v0,0($sp)
    # Line 149
    sw	$a1,0($s0)
    # Line 150
    sw	$v1,0($s1)
    b	.L0dba9e5c
    lw	$v0,12($v0)
.L0dbaa038:
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    bne	$a2,$t9,.L0dba9e68
    # Line 155
    li	$a1,9984
    # Line 154
    la	$a1,__glTextureRGB_N_N_Span
    # Line 155
    la	$v1,__glTextureRGB_N_N_StippledSpan
    ld	$v0,0($sp)
    # Line 154
    sw	$a1,0($s0)
    # Line 155
    sw	$v1,0($s1)
    b	.L0dba9e64
    lw	$v0,12($v0)
.end __glPixPickSpanProcs

# Function: __glPixPickStoreProcs
# Declared: Line 278 (Source lines: 279-322)
# Address: 0x0dbaa064 - 0x0dbaa1ac (Size: 328 bytes, Frame: 0)
.globl __glPixPickStoreProcs
.ent __glPixPickStoreProcs
__glPixPickStoreProcs:
    # Line 280
    move	$a3,$zero
    # Line 281
    lw	$a4,1696($a0)
    # Line 279
    lui	$v1,0x5
    addiu	$v1,$v1,17972
    # Line 281
    andi	$v0,$a4,0x1
    beqz	$v0,.L0dbaa090
    # Line 279
    addu	$at,$t9,$v1
    # Line 281
    lbu	$a1,3104($a0)
    beqz	$a1,.L0dbaa094
    # Line 284
    andi	$a2,$a4,0x8000
    li	$a3,1
.L0dbaa090:
    andi	$a2,$a4,0x8000
.L0dbaa094:
    beqz	$a2,.L0dbaa0a4
    # Line 287
    andi	$v0,$a4,0x10
    ori	$a3,$a3,0x2
    andi	$v0,$a4,0x10
.L0dbaa0a4:
    beqzl	$v0,.L0dbaa0b4
    # Line 292
    lw	$a4,1788($a0)
    # Line 290
    ori	$a3,$a3,0x4
    # Line 292
    lw	$a4,1788($a0)
.L0dbaa0b4:
    sltiu	$v1,$a4,1033
    bnez	$v1,.L0dbaa0ec
    li	$v0,1032
    sltiu	$a1,$a4,1034
    bnez	$a1,.L0dbaa144
    sltiu	$a2,$a4,1035
    bnez	$a2,.L0dbaa198
    sltiu	$v0,$a4,1036
    bnez	$v0,.L0dbaa144
    li	$v1,1036
    bne	$a4,$v1,.L0dbaa168
    nop
    b	.L0dbaa148
    # Line 318
    la	$v1,sub_0dbf0000
.L0dbaa0ec:
    # Line 292
    sltiu	$a1,$a4,1029
    bnez	$a1,.L0dbaa134
    sltiu	$a2,$a4,1030
    bnez	$a2,.L0dbaa148
    # Line 318
    la	$v1,sub_0dbf0000
    # Line 292
    bne	$a4,$v0,.L0dbaa168
    nop
    # Line 298
    lbu	$v1,30704($a0)
    # Line 300
    la	$a2,__glDoDoubleStore
    # Line 298
    beqz	$v1,.L0dbaa144
    # Line 299
    la	$v0,sub_0dbf0000
    sll	$a1,$a3,0x2
    addiu	$v0,$v0,20824
    addu	$a1,$a1,$v0
    lw	$a1,0($a1)
    # Line 300
    sw	$a2,12672($a0)
    # Line 322
    jr	$ra
    # Line 299
    sw	$a1,12668($a0)
.L0dbaa134:
    # Line 292
    sltiu	$v1,$a4,1028
    bnez	$v1,.L0dbaa170
    sltiu	$a1,$a4,1029
    beqz	$a1,.L0dbaa168
.L0dbaa144:
    # Line 318
    la	$v1,sub_0dbf0000
.L0dbaa148:
    sll	$v0,$a3,0x2
    addiu	$v1,$v1,20824
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    # Line 319
    lw	$a2,11832($a0)
    # Line 318
    sw	$v0,12668($a0)
    # Line 319
    lw	$a2,164($a2)
    sw	$a2,12672($a0)
.L0dbaa168:
    # Line 322
    jr	$ra
    nop
.L0dbaa170:
    # Line 292
    bnez	$a4,.L0dbaa168
    # Line 294
    sll	$a1,$a3,0x2
    la	$v0,sub_0dbf0000
    # Line 295
    la	$a2,__glDoNullStore
    # Line 294
    addiu	$v0,$v0,20824
    addu	$a1,$a1,$v0
    lw	$a1,0($a1)
    # Line 295
    sw	$a2,12672($a0)
    # Line 322
    jr	$ra
    # Line 294
    sw	$a1,12668($a0)
.L0dbaa198:
    # Line 292
    li	$v1,1034
    bne	$a4,$v1,.L0dbaa168
    nop
    b	.L0dbaa148
    # Line 318
    la	$v1,sub_0dbf0000
.end __glPixPickStoreProcs

