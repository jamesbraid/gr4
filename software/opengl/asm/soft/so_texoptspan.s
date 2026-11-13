# Source: ../soft/so_texoptspan.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_texoptspan.c
# Total Functions: 12

.text

# Function: __glTextureRGB_F_F_Span
# Declared: Line 85 (Source lines: 86-322)
# Address: 0x0db95bb0 - 0x0db96d2c (Size: 4476 bytes, Frame: 192)
.globl __glTextureRGB_F_F_Span
.ent __glTextureRGB_F_F_Span
__glTextureRGB_F_F_Span:
    # Line 115
    lwc1	$f5,30288($a0)
    # Line 113
    lwc1	$f6,30276($a0)
    # Line 111
    lw	$a2,30516($a0)
    # Line 86
    addiu	$sp,$sp,-448
    sd	$s0,280($sp)
    sd	$s2,320($sp)
    sd	$s3,312($sp)
    sd	$s4,288($sp)
    sd	$s5,264($sp)
    sd	$s6,304($sp)
    sd	$s7,256($sp)
    sd	$s8,248($sp)
    sdc1	$f20,192($sp)
    sdc1	$f22,176($sp)
    sdc1	$f24,168($sp)
    sdc1	$f26,184($sp)
    sdc1	$f28,160($sp)
    sdc1	$f30,152($sp)
    sd	$ra,296($sp)
    sd	$s1,272($sp)
    # Line 109
    lw	$s1,28264($a0)
    sd	$gp,328($sp)
    # Line 86
    lui	$v0,0x7
    addiu	$v0,$v0,-29976
    addu	$gp,$t9,$v0
    # Line 114
    lwc1	$f1,30280($a0)
    # Line 107
    lw	$a3,2376($a0)
    # Line 93
    lwc1	$f0,3280($a0)
    sdc1	$f1,128($sp)
    # Line 117
    lw	$at,30300($a0)
    sdc1	$f0,144($sp)
    # Line 107
    lw	$a3,0($a3)
    # Line 117
    addiu	$at,$at,-1
    bltz	$at,.L0db96b50
    sd	$at,352($sp)
    addiu	$s5,$sp,48
    li	$a6,-1
    li	$s3,1
    li	$s6,4
    li	$a5,32
    ldc1	$f7,_lit8_4030000000000000
    dmtc1	$zero,$f26
    mtc1	$zero,$f20
    li	$t3,10497
    addiu	$at,$sp,12
    sd	$at,208($sp)
    addiu	$a1,$sp,0
    xori	$v1,$a3,0x2101
    sltiu	$v1,$v1,1
    addiu	$a1,$a1,-4
    sd	$a1,336($sp)
    b	.L0db96078
    sd	$v1,344($sp)
.L0db95c84:
    ldc1	$f6,_lit8_bff0000000000000
    # Line 190
    add.d	$f6,$f24,$f6
    c.lt.d	$f6,$f26
    li	$a2,1
    bc1fl	.L0db95c9c
    move	$a2,$zero
.L0db95c9c:
    beqz	$a2,.L0db96ab4
    add.d	$f5,$f24,$f5
    c.lt.d	$f5,$f26
.L0db95ca8:
    nop
    bc1fl	.L0db967fc
    # Line 192
    add.d	$f7,$f24,$f7
    sdc1	$f4,368($sp)
    li	$s7,15
.L0db95cbc:
    # Line 209
    # lw $t9, -17712($gp) # &floor
.L0db95cc0:
    sdc1	$f4,368($sp)
    mov.d	$f12,$f24
    jal	floor
    mov.s	$f28,$f4
    trunc.w.d	$f1,$f0
    mfc1	$a3,$f1
    nop
    # Line 210
    addiu	$v0,$a3,-1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f0,$f20
    # Line 209
    sw	$a3,20($sp)
    # Line 213
    addiu	$a2,$a3,1
    # Line 210
    bc1f	.L0db95d04
    sw	$v0,16($sp)
    # Line 211
    sw	$zero,16($sp)
.L0db95d04:
    # Line 213
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    c.lt.s	$f28,$f2
    nop
    bc1f	.L0db95d30
    sw	$a2,24($sp)
    # Line 214
    trunc.w.s	$f3,$f28
    mfc1	$a2,$f3
    nop
    sw	$a2,24($sp)
.L0db95d30:
    # Line 216
    addiu	$v1,$a2,1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f28,$f0
    nop
    bc1f	.L0db95d60
    sw	$v1,28($sp)
    # Line 217
    trunc.w.s	$f1,$f28
    mfc1	$a1,$f1
    nop
    sw	$a1,28($sp)
.L0db95d60:
    # Line 222
    # lw $t9, -17712($gp) # &floor
.L0db95d64:
    jal	floor
    mov.d	$f12,$f22
    sub.d	$f6,$f22,$f0
    ldc1	$f7,_lit8_4030000000000000
    ld	$a6,200($sp)
    mul.d	$f6,$f6,$f7
    lwc1	$f28,3280($a6)
    cvt.d.s	$f28,$f28
    add.d	$f6,$f6,$f28
    trunc.w.d	$f6,$f6
    mfc1	$a3,$f6
    # Line 227
    mov.d	$f12,$f24
    # lw $t9, -17712($gp) # &floor
    # Line 223
    sll	$a5,$a3,0x2
    addu	$a5,$a5,$s1
    # Line 224
    lwc1	$f5,24($a5)
    # Line 223
    lwc1	$f4,88($a5)
    li	$a4,32
    # Line 224
    swc1	$f5,36($sp)
    # Line 223
    swc1	$f4,32($sp)
    # Line 226
    subu	$a4,$a4,$a3
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s1
    lwc1	$f3,24($a4)
    # Line 225
    sll	$a2,$a3,0x1e
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s1
    lwc1	$f2,88($a2)
    # Line 226
    swc1	$f3,44($sp)
    # Line 227
    jal	floor
    # Line 225
    swc1	$f2,40($sp)
    # Line 227
    sub.d	$f4,$f24,$f0
    ldc1	$f7,_lit8_4030000000000000
    mul.d	$f4,$f4,$f7
    li	$a6,-1
    add.d	$f4,$f4,$f28
    li	$t3,10497
    # Line 235
    addiu	$a4,$sp,112
    move	$s0,$zero
    # Line 227
    trunc.w.d	$f4,$f4
    ldc1	$f6,376($sp)
    ldc1	$f5,384($sp)
    ld	$a3,408($sp)
    mfc1	$v0,$f4
    ld	$a2,416($sp)
    li	$a5,32
    # Line 228
    sll	$a0,$v0,0x2
    addu	$a0,$a0,$s1
    # Line 229
    lwc1	$f3,24($a0)
    # Line 228
    lwc1	$f2,88($a0)
    ld	$a0,200($sp)
    # Line 229
    swc1	$f3,116($sp)
    # Line 231
    subu	$v1,$a5,$v0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s1
    lwc1	$f1,24($v1)
    # Line 230
    sll	$at,$v0,0x1e
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$at,$at,$s1
    lwc1	$f0,88($at)
    # Line 228
    swc1	$f2,112($sp)
    # Line 231
    swc1	$f1,124($sp)
    # Line 230
    swc1	$f0,120($sp)
    # Line 235
    lwc1	$f4,0($a4)
.L0db95e6c:
    addiu	$t0,$sp,32
    sll	$a7,$s0,0x2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s5
    # Line 237
    lwc1	$f1,4($t0)
    lwc1	$f2,8($t0)
    mul.s	$f1,$f1,$f4
    lwc1	$f3,12($t0)
    mul.s	$f2,$f2,$f4
    lwc1	$f0,0($t0)
    mul.s	$f3,$f3,$f4
    mul.s	$f0,$f0,$f4
    # Line 235
    addiu	$s0,$s0,1
    addiu	$a4,$a4,4
    # Line 237
    swc1	$f3,12($a7)
    swc1	$f2,8($a7)
    swc1	$f1,4($a7)
    swc1	$f0,0($a7)
    # Line 235
    bnel	$s0,$s6,.L0db95e6c
    lwc1	$f4,0($a4)
    # Line 272
    mov.s	$f4,$f20
    # Line 273
    move	$s0,$zero
    li	$t0,3
    # Line 260
    addiu	$s4,$sp,16
    # Line 235
    beqz	$s8,.L0db96824
    # Line 272
    mov.s	$f8,$f20
.L0db95ed4:
    li	$at,2
.L0db95ed8:
    # Line 247
    beq	$s8,$at,.L0db9687c
    # Line 259
    mov.s	$f9,$f20
    # Line 273
    addiu	$s4,$sp,16
    # Line 272
    mov.s	$f9,$f20
.L0db95ee8:
    # Line 273
    addiu	$t2,$sp,0
    li	$a4,3
    sllv	$t1,$s3,$t0
    and	$t1,$t1,$s7
    # Line 276
    sllv	$at,$s3,$a4
    # Line 274
    addiu	$a4,$a4,-1
    # Line 273
    sll	$a7,$s0,0x2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s5
    # Line 276
    and	$at,$at,$s2
    beqz	$at,.L0db96300
    nop
    # Line 277
    lwc1	$f3,0($a7)
.L0db95f1c:
    # Line 279
    lwc1	$f2,164($s1)
    # Line 278
    lwc1	$f1,160($s1)
    # Line 279
    mul.s	$f2,$f2,$f3
    # Line 277
    lwc1	$f0,156($s1)
    # Line 278
    mul.s	$f1,$f1,$f3
    # Line 277
    mul.s	$f0,$f0,$f3
    # Line 279
    add.s	$f8,$f2,$f8
    # Line 278
    add.s	$f4,$f1,$f4
    # Line 277
    add.s	$f9,$f0,$f9
.L0db95f40:
    # Line 276
    sllv	$v0,$s3,$a4
    and	$v0,$v0,$s2
    beqz	$v0,.L0db9635c
    # Line 274
    addiu	$a4,$a4,-1
    # Line 277
    lwc1	$f2,4($a7)
.L0db95f54:
    # Line 279
    lwc1	$f1,164($s1)
    # Line 278
    lwc1	$f0,160($s1)
    # Line 279
    mul.s	$f1,$f1,$f2
    # Line 277
    lwc1	$f3,156($s1)
    # Line 278
    mul.s	$f0,$f0,$f2
    # Line 277
    mul.s	$f3,$f3,$f2
    # Line 279
    add.s	$f8,$f1,$f8
    # Line 278
    add.s	$f4,$f0,$f4
    # Line 277
    add.s	$f9,$f3,$f9
.L0db95f78:
    # Line 276
    sllv	$v1,$s3,$a4
    and	$v1,$v1,$s2
    beqz	$v1,.L0db963b8
    # Line 274
    addiu	$a4,$a4,-1
    # Line 277
    lwc1	$f1,8($a7)
.L0db95f8c:
    # Line 279
    lwc1	$f0,164($s1)
    # Line 278
    lwc1	$f3,160($s1)
    # Line 279
    mul.s	$f0,$f0,$f1
    # Line 277
    lwc1	$f2,156($s1)
    # Line 278
    mul.s	$f3,$f3,$f1
    # Line 277
    mul.s	$f2,$f2,$f1
    # Line 279
    add.s	$f8,$f0,$f8
    # Line 278
    add.s	$f4,$f3,$f4
    # Line 277
    add.s	$f9,$f2,$f9
.L0db95fb0:
    # Line 273
    addiu	$t0,$t0,-1
    # Line 276
    sllv	$a1,$s3,$a4
    and	$a1,$a1,$s2
    beqz	$a1,.L0db96414
    # Line 273
    addiu	$s0,$s0,1
    # Line 277
    lwc1	$f0,12($a7)
.L0db95fc8:
    # Line 279
    lwc1	$f3,164($s1)
    # Line 278
    lwc1	$f2,160($s1)
    # Line 279
    mul.s	$f3,$f3,$f0
    # Line 277
    lwc1	$f1,156($s1)
    # Line 278
    mul.s	$f2,$f2,$f0
    # Line 277
    mul.s	$f1,$f1,$f0
    # Line 279
    add.s	$f8,$f3,$f8
    # Line 278
    add.s	$f4,$f2,$f4
    # Line 277
    add.s	$f9,$f1,$f9
.L0db95fec:
    # Line 273
    bne	$s0,$s6,.L0db95ee8
    addiu	$s4,$s4,4
    li	$at,8448
.L0db95ff8:
    # Line 255
    beq	$a3,$at,.L0db96a70
    li	$v1,7681
.L0db96000:
    li	$v0,0x8062
    # Line 296
    beq	$a3,$v0,.L0db96818
    ld	$a1,344($sp)
    beq	$a3,$v1,.L0db96818
    move	$a4,$zero
    or	$a1,$a4,$a1
.L0db96018:
    beqz	$a1,.L0db96a00
    ldc1	$f1,136($sp)
    # Line 299
    lwc1	$f2,30804($a0)
    mul.s	$f2,$f2,$f9
    swc1	$f2,0($a2)
    # Line 300
    lwc1	$f1,30808($a0)
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a2)
    # Line 301
    lwc1	$f0,30812($a0)
    mul.s	$f0,$f0,$f8
    swc1	$f0,8($a2)
.L0db96044:
    # Line 318
    lwc1	$f2,30444($a0)
    # Line 316
    lwc1	$f3,30432($a0)
    # Line 318
    add.s	$f5,$f2,$f5
    # Line 316
    add.s	$f6,$f3,$f6
    # Line 317
    ldc1	$f0,128($sp)
    lwc1	$f1,30436($a0)
    # Line 117
    ld	$at,352($sp)
    # Line 319
    addiu	$a2,$a2,16
    # Line 317
    add.s	$f0,$f1,$f0
    # Line 117
    addiu	$at,$at,-1
    sd	$at,352($sp)
    beq	$at,$a6,.L0db96b50
    sdc1	$f0,128($sp)
.L0db96078:
    # Line 118
    lwc1	$f30,3284($a0)
    sdc1	$f30,136($sp)
    div.s	$f30,$f30,$f5
    # Line 134
    move	$s2,$zero
    # Line 122
    move	$s8,$zero
    # Line 136
    li	$s0,-1
    ld	$s7,336($sp)
    # Line 124
    lw	$a7,228($s1)
    # Line 134
    mul.s	$f24,$f6,$f30
    ldc1	$f9,_lit8_3ff0000000000000
    # Line 125
    lw	$a1,44($a7)
    # Line 134
    lw	$v0,4($s1)
    # Line 131
    lwc1	$f28,32($a7)
    sd	$a1,232($sp)
    # Line 129
    lw	$v1,24($a7)
    # Line 134
    mul.s	$f24,$f24,$f28
    ldc1	$f0,144($sp)
    # Line 127
    lw	$a4,0($a7)
    sd	$v1,240($sp)
    # Line 129
    addiu	$v1,$v1,-1
    sd	$a4,224($sp)
    # Line 128
    lw	$a4,20($a7)
    # Line 134
    sub.s	$f24,$f24,$f0
    sd	$v1,216($sp)
    # Line 128
    addiu	$s4,$a4,-1
    # Line 134
    bne	$v0,$t3,.L0db96158
    cvt.d.s	$f22,$f24
    # Line 136
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    add.s	$f8,$f4,$f24
    sd	$a3,408($sp)
    sd	$a4,400($sp)
    sd	$a7,392($sp)
    c.lt.s	$f8,$f20
    sdc1	$f5,384($sp)
    addiu	$s0,$s0,1
    bc1f	.L0db96470
    sdc1	$f6,376($sp)
    ld	$s8,400($sp)
    # Line 138
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$at,$f0
    nop
    and	$at,$at,$s4
    b	.L0db96494
    sw	$at,4($s7)
.L0db96158:
    ldc1	$f8,_lit8_bff0000000000000
    # Line 145
    add.d	$f8,$f22,$f8
    c.lt.d	$f8,$f26
    li	$a4,1
    ldc1	$f4,_lit8_4000000000000000
    bc1fl	.L0db96174
    move	$a4,$zero
.L0db96174:
    beqz	$a4,.L0db96a98
    add.d	$f4,$f22,$f4
    c.lt.d	$f4,$f26
.L0db96180:
    nop
    bc1fl	.L0db967d0
    # Line 147
    add.d	$f9,$f22,$f9
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    sd	$a3,408($sp)
    sdc1	$f5,384($sp)
    sdc1	$f6,376($sp)
    li	$s2,15
.L0db961a4:
    sd	$a7,392($sp)
.L0db961a8:
    sdc1	$f30,360($sp)
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    sd	$a3,408($sp)
    # Line 164
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f5,384($sp)
    sdc1	$f6,376($sp)
    jal	floorf
    mov.s	$f12,$f24
    trunc.w.s	$f1,$f0
    mfc1	$a5,$f1
    nop
    # Line 165
    addiu	$v0,$a5,-1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    li	$a3,10497
    ldc1	$f5,360($sp)
    ld	$a2,392($sp)
    c.lt.s	$f0,$f20
    # Line 164
    sw	$a5,4($sp)
    # Line 168
    addiu	$a4,$a5,1
    # Line 165
    bc1f	.L0db9620c
    sw	$v0,0($sp)
    # Line 166
    sw	$zero,0($sp)
.L0db9620c:
    # Line 168
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    c.lt.s	$f28,$f2
    nop
    bc1f	.L0db96238
    sw	$a4,8($sp)
    # Line 169
    trunc.w.s	$f3,$f28
    mfc1	$a4,$f3
    nop
    sw	$a4,8($sp)
.L0db96238:
    # Line 171
    addiu	$v1,$a4,1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f28,$f0
    nop
    bc1f	.L0db96268
    sw	$v1,12($sp)
    # Line 172
    trunc.w.s	$f1,$f28
    mfc1	$a1,$f1
    nop
    sw	$a1,12($sp)
.L0db96268:
    ldc1	$f30,128($sp)
    # Line 179
    mul.s	$f30,$f30,$f5
    # Line 176
    lwc1	$f4,36($a2)
    # Line 179
    mul.s	$f30,$f30,$f4
    move	$s7,$zero
    # Line 181
    li	$s0,-1
    # Line 179
    ldc1	$f0,144($sp)
    # Line 181
    ld	$s4,208($sp)
    # Line 179
    lw	$at,8($s1)
    sub.s	$f30,$f30,$f0
    ldc1	$f7,_lit8_3ff0000000000000
    ldc1	$f5,_lit8_4000000000000000
    bne	$at,$a3,.L0db95c84
    cvt.d.s	$f24,$f30
    # Line 181
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f30
    c.lt.s	$f5,$f20
    nop
    bc1f	.L0db96618
    addiu	$s0,$s0,1
    ld	$v0,240($sp)
    # Line 183
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f30
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a1,216($sp)
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$a1
    b	.L0db9663c
    sw	$v1,4($s4)
.L0db96300:
    # Line 276
    bnezl	$t1,.L0db95f1c
    # Line 277
    lwc1	$f3,0($a7)
    # Line 281
    ld	$a1,232($sp)
    lw	$v1,0($s4)
    lw	$v0,0($t2)
    sllv	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    ld	$v0,224($sp)
    lwc1	$f0,0($a7)
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    # Line 283
    lwc1	$f3,8($at)
    # Line 282
    lwc1	$f2,4($at)
    # Line 283
    mul.s	$f3,$f3,$f0
    # Line 281
    lwc1	$f1,0($at)
    # Line 282
    mul.s	$f2,$f2,$f0
    # Line 281
    mul.s	$f1,$f1,$f0
    # Line 283
    add.s	$f8,$f3,$f8
    # Line 282
    add.s	$f4,$f2,$f4
    b	.L0db95f40
    # Line 281
    add.s	$f9,$f1,$f9
.L0db9635c:
    # Line 276
    bnezl	$t1,.L0db95f54
    # Line 277
    lwc1	$f2,4($a7)
    # Line 281
    ld	$a1,232($sp)
    lw	$v1,0($s4)
    lw	$v0,4($t2)
    sllv	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    ld	$v0,224($sp)
    lwc1	$f3,4($a7)
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    # Line 283
    lwc1	$f2,8($at)
    # Line 282
    lwc1	$f1,4($at)
    # Line 283
    mul.s	$f2,$f2,$f3
    # Line 281
    lwc1	$f0,0($at)
    # Line 282
    mul.s	$f1,$f1,$f3
    # Line 281
    mul.s	$f0,$f0,$f3
    # Line 283
    add.s	$f8,$f2,$f8
    # Line 282
    add.s	$f4,$f1,$f4
    b	.L0db95f78
    # Line 281
    add.s	$f9,$f0,$f9
.L0db963b8:
    # Line 276
    bnezl	$t1,.L0db95f8c
    # Line 277
    lwc1	$f1,8($a7)
    # Line 281
    ld	$a1,232($sp)
    lw	$v1,0($s4)
    lw	$v0,8($t2)
    sllv	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    ld	$v0,224($sp)
    lwc1	$f2,8($a7)
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    # Line 283
    lwc1	$f1,8($at)
    # Line 282
    lwc1	$f0,4($at)
    # Line 283
    mul.s	$f1,$f1,$f2
    # Line 281
    lwc1	$f3,0($at)
    # Line 282
    mul.s	$f0,$f0,$f2
    # Line 281
    mul.s	$f3,$f3,$f2
    # Line 283
    add.s	$f8,$f1,$f8
    # Line 282
    add.s	$f4,$f0,$f4
    b	.L0db95fb0
    # Line 281
    add.s	$f9,$f3,$f9
.L0db96414:
    # Line 276
    bnezl	$t1,.L0db95fc8
    # Line 277
    lwc1	$f0,12($a7)
    # Line 281
    ld	$a1,232($sp)
    lw	$v1,0($s4)
    lw	$v0,12($t2)
    sllv	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    ld	$v0,224($sp)
    lwc1	$f1,12($a7)
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    # Line 283
    lwc1	$f0,8($at)
    # Line 282
    lwc1	$f3,4($at)
    # Line 283
    mul.s	$f0,$f0,$f1
    # Line 281
    lwc1	$f2,0($at)
    # Line 282
    mul.s	$f3,$f3,$f1
    # Line 281
    mul.s	$f2,$f2,$f1
    # Line 283
    add.s	$f8,$f0,$f8
    # Line 282
    add.s	$f4,$f3,$f4
    b	.L0db95fec
    # Line 281
    add.s	$f9,$f2,$f9
.L0db96470:
    # Line 140
    # lw $t9, -17712($gp) # &floor
    cvt.d.s	$f12,$f8
    jal	floor
    ld	$s8,400($sp)
    trunc.w.d	$f1,$f0
    mfc1	$at,$f1
    nop
    and	$at,$at,$s4
    sw	$at,4($s7)
.L0db96494:
    # Line 136
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f8,$f4,$f24
    c.lt.s	$f8,$f20
    nop
    bc1f	.L0db964ec
    addiu	$s0,$s0,1
    # Line 138
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$v0,$f0
    nop
    and	$v0,$v0,$s4
    b	.L0db9650c
    sw	$v0,8($s7)
.L0db964ec:
    # Line 140
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    mfc1	$v1,$f1
    nop
    and	$v1,$v1,$s4
    sw	$v1,8($s7)
.L0db9650c:
    # Line 136
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f8,$f4,$f24
    c.lt.s	$f8,$f20
    nop
    bc1f	.L0db96564
    addiu	$s0,$s0,1
    # Line 138
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$s4
    b	.L0db96584
    sw	$a1,12($s7)
.L0db96564:
    # Line 140
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    mfc1	$at,$f1
    nop
    and	$at,$at,$s4
    sw	$at,12($s7)
.L0db96584:
    # Line 136
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f8,$f4,$f24
    c.lt.s	$f8,$f20
    nop
    bc1f	.L0db965e8
    # Line 140
    nop	# was lw $t9, -17712($gp) # &floor
    # Line 138
    mtc1	$s8,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    sdc1	$f30,360($sp)
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    li	$a3,10497
    mfc1	$v0,$f0
    ldc1	$f5,360($sp)
    ld	$a2,392($sp)
    and	$v0,$v0,$s4
    b	.L0db96610
    sw	$v0,16($s7)
.L0db965e8:
    sdc1	$f30,360($sp)
    # Line 140
    jalr	$t9
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    li	$a3,10497
    mfc1	$v1,$f1
    ldc1	$f5,360($sp)
    ld	$a2,392($sp)
    and	$v1,$v1,$s4
    sw	$v1,16($s7)
.L0db96610:
    # Line 143
    b	.L0db96268
    li	$s8,1
.L0db96618:
    # Line 185
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f2,$f0
    ld	$at,216($sp)
    mfc1	$a1,$f2
    nop
    and	$a1,$a1,$at
    sw	$a1,4($s4)
.L0db9663c:
    # Line 181
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f30
    c.lt.s	$f5,$f20
    nop
    bc1f	.L0db9669c
    addiu	$s0,$s0,1
    ld	$v0,240($sp)
    # Line 183
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f30
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a1,216($sp)
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$a1
    b	.L0db966c0
    sw	$v1,8($s4)
.L0db9669c:
    # Line 185
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f1,$f0
    ld	$v0,216($sp)
    mfc1	$at,$f1
    nop
    and	$at,$at,$v0
    sw	$at,8($s4)
.L0db966c0:
    # Line 181
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f30
    c.lt.s	$f5,$f20
    nop
    bc1f	.L0db96720
    addiu	$s0,$s0,1
    ld	$v1,240($sp)
    # Line 183
    mtc1	$v1,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f30
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,216($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$at
    b	.L0db96744
    sw	$a1,12($s4)
.L0db96720:
    # Line 185
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f1,$f0
    ld	$v1,216($sp)
    mfc1	$v0,$f1
    nop
    and	$v0,$v0,$v1
    sw	$v0,12($s4)
.L0db96744:
    # Line 181
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f30
    c.lt.s	$f5,$f20
    nop
    bc1f	.L0db967a4
    # Line 188
    addiu	$s8,$s8,1
    ld	$a0,240($sp)
    # Line 183
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f30
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,216($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$at
    b	.L0db967c8
    sw	$a1,16($s4)
.L0db967a4:
    # Line 185
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f1,$f0
    ld	$v1,216($sp)
    mfc1	$v0,$f1
    nop
    and	$v0,$v0,$v1
    sw	$v0,16($s4)
.L0db967c8:
    # Line 188
    b	.L0db95d64
    # Line 222
    nop	# was lw $t9, -17712($gp) # &floor
.L0db967d0:
    # Line 147
    c.lt.d	$f9,$f26
    nop
    bc1fl	.L0db969c0
    # Line 149
    c.lt.s	$f24,$f20
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    sd	$a3,408($sp)
    sdc1	$f5,384($sp)
    sdc1	$f6,376($sp)
    b	.L0db961a4
    li	$s2,14
.L0db967fc:
    # Line 192
    c.lt.d	$f7,$f26
    nop
    bc1fl	.L0db969e8
    # Line 194
    c.lt.s	$f30,$f20
    sdc1	$f4,368($sp)
    b	.L0db95cbc
    li	$s7,14
.L0db96818:
    # Line 296
    li	$a4,1
    b	.L0db96018
    or	$a1,$a4,$a1
.L0db96824:
    # Line 235
    bnez	$s2,.L0db95ed8
    li	$at,2
    # Line 247
    ld	$v1,232($sp)
    # Line 246
    lw	$v0,0($sp)
    # Line 235
    bnez	$s7,.L0db95ed4
    # Line 247
    addiu	$a7,$sp,48
    # Line 245
    mov.s	$f9,$f20
    mov.s	$f8,$f20
    mov.s	$f4,$f20
    # Line 247
    move	$s0,$zero
    li	$t0,3
    # Line 246
    lw	$at,16($sp)
    # Line 247
    sllv	$t0,$t0,$v1
    sll	$t0,$t0,0x2
    # Line 246
    sllv	$at,$at,$v1
    addu	$at,$at,$v0
    sll	$a4,$at,0x2
    subu	$a4,$a4,$at
    ld	$at,224($sp)
    sll	$a4,$a4,0x2
    b	.L0db96c00
    addu	$a4,$a4,$at
.L0db9687c:
    # Line 259
    mov.s	$f8,$f20
    mov.s	$f4,$f20
    # Line 260
    move	$s0,$zero
    addiu	$t2,$sp,0
.L0db9688c:
    sll	$a7,$s0,0x2
    ld	$at,232($sp)
    lw	$a4,0($s4)
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s5
    sllv	$a4,$a4,$at
    # Line 263
    lw	$v1,0($t2)
    lw	$at,12($t2)
    lw	$v0,8($t2)
    addu	$v1,$v1,$a4
    addu	$at,$at,$a4
    addu	$v0,$v0,$a4
    sll	$t0,$v0,0x2
    subu	$t0,$t0,$v0
    lw	$v0,4($t2)
    sll	$a1,$at,0x2
    subu	$a1,$a1,$at
    addu	$v0,$v0,$a4
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,224($sp)
    lwc1	$f13,12($a7)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$v1
    # Line 264
    lwc1	$f11,4($a1)
    # Line 265
    lwc1	$f3,8($a1)
    # Line 264
    mul.s	$f11,$f11,$f13
    # Line 263
    lwc1	$f16,8($a7)
    # Line 265
    mul.s	$f3,$f3,$f13
    # Line 263
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$v1
    # Line 264
    lwc1	$f14,4($t0)
    mul.s	$f14,$f14,$f16
    # Line 263
    lwc1	$f0,0($a7)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 264
    lwc1	$f2,4($v0)
    mul.s	$f2,$f2,$f0
    # Line 265
    lwc1	$f12,8($v0)
    # Line 263
    lwc1	$f1,4($a7)
    sll	$at,$at,0x2
    # Line 265
    mul.s	$f12,$f12,$f0
    # Line 263
    addu	$at,$at,$v1
    # Line 265
    lwc1	$f10,8($at)
    lwc1	$f15,8($t0)
    mul.s	$f10,$f10,$f1
    add.s	$f12,$f12,$f8
    mul.s	$f8,$f15,$f16
    # Line 263
    lwc1	$f15,0($v0)
    mul.s	$f15,$f15,$f0
    # Line 265
    add.s	$f10,$f10,$f12
    # Line 264
    lwc1	$f0,4($at)
    # Line 265
    add.s	$f8,$f8,$f10
    # Line 264
    mul.s	$f0,$f0,$f1
    add.s	$f4,$f2,$f4
    # Line 263
    lwc1	$f12,0($at)
    # Line 265
    add.s	$f8,$f3,$f8
    # Line 263
    mul.s	$f12,$f12,$f1
    add.s	$f15,$f15,$f9
    lwc1	$f10,0($t0)
    # Line 264
    add.s	$f4,$f0,$f4
    # Line 263
    mul.s	$f10,$f10,$f16
    add.s	$f12,$f12,$f15
    lwc1	$f9,0($a1)
    # Line 264
    add.s	$f4,$f14,$f4
    # Line 263
    mul.s	$f9,$f9,$f13
    add.s	$f10,$f10,$f12
    # Line 264
    add.s	$f4,$f11,$f4
    # Line 260
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 263
    add.s	$f9,$f9,$f10
    # Line 260
    bne	$s0,$s6,.L0db9688c
    addiu	$t2,$sp,0
    b	.L0db95ff8
    li	$at,8448
.L0db969c0:
    nop
    # Line 149
    bc1f	.L0db96ad0
    nop
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    sd	$a3,408($sp)
    sdc1	$f5,384($sp)
    sdc1	$f6,376($sp)
    # Line 151
    b	.L0db961a4
    li	$s2,12
.L0db969e8:
    nop
    # Line 194
    bc1f	.L0db96af4
    nop
    sdc1	$f4,368($sp)
    # Line 196
    b	.L0db95cbc
    li	$s7,12
.L0db96a00:
    # Line 309
    sub.s	$f1,$f1,$f9
    lwc1	$f0,0($a2)
    # Line 307
    lw	$v1,2376($a0)
    # Line 309
    mul.s	$f0,$f0,$f1
    lwc1	$f1,4($v1)
    mul.s	$f1,$f1,$f9
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a2)
    # Line 310
    lwc1	$f3,3284($a0)
    sub.s	$f3,$f3,$f4
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($v1)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a2)
    # Line 311
    lwc1	$f1,3284($a0)
    sub.s	$f1,$f1,$f8
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($v1)
    mul.s	$f1,$f1,$f8
    add.s	$f0,$f0,$f1
    b	.L0db96044
    swc1	$f0,8($a2)
.L0db96a64:
    li	$a1,8448
    # Line 255
    bne	$a3,$a1,.L0db96000
    li	$v1,7681
.L0db96a70:
    # Line 293
    lwc1	$f3,4($a2)
    # Line 294
    lwc1	$f0,8($a2)
    # Line 293
    mul.s	$f3,$f3,$f4
    # Line 292
    lwc1	$f2,0($a2)
    # Line 294
    mul.s	$f0,$f0,$f8
    # Line 292
    mul.s	$f2,$f2,$f9
    # Line 294
    swc1	$f0,8($a2)
    # Line 293
    swc1	$f3,4($a2)
    # Line 294
    b	.L0db96044
    # Line 292
    swc1	$f2,0($a2)
.L0db96a98:
    # Line 145
    cvt.d.s	$f1,$f28
    c.lt.d	$f1,$f4
    nop
    bc1fl	.L0db961a8
    sd	$a7,392($sp)
    b	.L0db96180
    c.lt.d	$f4,$f26
.L0db96ab4:
    # Line 190
    cvt.d.s	$f2,$f28
    c.lt.d	$f2,$f5
    nop
    bc1f	.L0db95cc0
    # Line 209
    nop	# was lw $t9, -17712($gp) # &floor
    b	.L0db95ca8
    # Line 190
    c.lt.d	$f5,$f26
.L0db96ad0:
    # Line 151
    beqzl	$a4,.L0db96b08
    # Line 153
    cvt.d.s	$f10,$f28
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    sd	$a3,408($sp)
    sdc1	$f5,384($sp)
    sdc1	$f6,376($sp)
    b	.L0db961a4
    li	$s2,8
.L0db96af4:
    # Line 196
    beqzl	$a2,.L0db96b34
    # Line 198
    cvt.d.s	$f8,$f4
    sdc1	$f4,368($sp)
    b	.L0db95cbc
    li	$s7,8
.L0db96b08:
    # Line 153
    c.lt.d	$f10,$f8
    nop
    bc1fl	.L0db96c6c
    # Line 155
    c.lt.s	$f28,$f24
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    sd	$a3,408($sp)
    sdc1	$f5,384($sp)
    sdc1	$f6,376($sp)
    b	.L0db961a4
    li	$s2,15
.L0db96b34:
    # Line 198
    c.lt.d	$f8,$f6
    nop
    bc1fl	.L0db96c94
    # Line 200
    c.lt.s	$f4,$f30
    sdc1	$f4,368($sp)
    b	.L0db95cbc
    li	$s7,15
.L0db96b50:
    # Line 322
    move	$v0,$zero
    ld	$gp,328($sp)
    ld	$s0,280($sp)
    ld	$s1,272($sp)
    ld	$s2,320($sp)
    ld	$s3,312($sp)
    ld	$s4,288($sp)
    ld	$s5,264($sp)
    ld	$s6,304($sp)
    ld	$s7,256($sp)
    ld	$s8,248($sp)
    ldc1	$f20,192($sp)
    ldc1	$f22,176($sp)
    ldc1	$f24,168($sp)
    ldc1	$f26,184($sp)
    ld	$ra,296($sp)
    ldc1	$f28,160($sp)
    ldc1	$f30,152($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0db96ba0:
    # Line 252
    addiu	$a4,$a4,-48
.L0db96ba4:
    # Line 247
    addiu	$a7,$a7,8
    # Line 250
    addiu	$a4,$a4,12
    # Line 248
    lwc1	$f2,-4($a7)
    # Line 250
    lwc1	$f1,-4($a4)
    li	$v0,3
    # Line 249
    lwc1	$f0,-8($a4)
    # Line 250
    mul.s	$f1,$f1,$f2
    xor	$at,$s0,$v1
    # Line 248
    lwc1	$f3,-12($a4)
    # Line 249
    mul.s	$f0,$f0,$f2
    # Line 250
    subu	$at,$at,$v1
    sra	$v1,$s0,0x1f
    # Line 248
    mul.s	$f3,$f3,$f2
    # Line 247
    addiu	$s0,$s0,1
    # Line 250
    add.s	$f8,$f1,$f8
    andi	$at,$at,0x3
    xor	$at,$at,$v1
    # Line 249
    add.s	$f4,$f0,$f4
    # Line 250
    subu	$at,$at,$v1
    beq	$at,$v0,.L0db96c60
    # Line 248
    add.s	$f9,$f3,$f9
.L0db96bf8:
    li	$a1,16
    # Line 247
    beq	$s0,$a1,.L0db96a64
.L0db96c00:
    # Line 250
    addiu	$a4,$a4,12
    li	$v0,3
    sra	$v1,$s0,0x1f
    # Line 248
    lwc1	$f1,0($a7)
    # Line 250
    lwc1	$f0,-4($a4)
    xor	$at,$s0,$v1
    # Line 249
    lwc1	$f3,-8($a4)
    # Line 250
    mul.s	$f0,$f0,$f1
    subu	$at,$at,$v1
    # Line 248
    lwc1	$f2,-12($a4)
    # Line 249
    mul.s	$f3,$f3,$f1
    # Line 250
    sra	$v1,$s0,0x1f
    # Line 247
    addiu	$s0,$s0,1
    # Line 248
    mul.s	$f2,$f2,$f1
    # Line 250
    andi	$at,$at,0x3
    add.s	$f8,$f0,$f8
    xor	$at,$at,$v1
    subu	$at,$at,$v1
    # Line 249
    add.s	$f4,$f3,$f4
    # Line 250
    sra	$v1,$s0,0x1f
    bne	$at,$v0,.L0db96ba4
    # Line 248
    add.s	$f9,$f2,$f9
    b	.L0db96ba0
    # Line 252
    addu	$a4,$t0,$a4
.L0db96c60:
    addu	$a4,$t0,$a4
    b	.L0db96bf8
    addiu	$a4,$a4,-48
.L0db96c6c:
    nop
    # Line 155
    bc1fl	.L0db96cac
    # Line 157
    c.lt.d	$f10,$f9
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    sd	$a3,408($sp)
    sdc1	$f5,384($sp)
    sdc1	$f6,376($sp)
    b	.L0db961a4
    li	$s2,7
.L0db96c94:
    nop
    # Line 200
    bc1fl	.L0db96cd4
    # Line 202
    c.lt.d	$f8,$f7
    sdc1	$f4,368($sp)
    b	.L0db95cbc
    li	$s7,7
.L0db96cac:
    nop
    # Line 157
    bc1fl	.L0db96cec
    # Line 159
    c.lt.d	$f10,$f4
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    sd	$a3,408($sp)
    sdc1	$f5,384($sp)
    sdc1	$f6,376($sp)
    b	.L0db961a4
    li	$s2,3
.L0db96cd4:
    nop
    # Line 202
    bc1fl	.L0db96d14
    # Line 204
    c.lt.d	$f8,$f5
    sdc1	$f4,368($sp)
    b	.L0db95cbc
    li	$s7,3
.L0db96cec:
    nop
    # Line 159
    bc1fl	.L0db961a8
    sd	$a7,392($sp)
    sd	$a0,200($sp)
    sd	$a2,416($sp)
    sd	$a3,408($sp)
    sdc1	$f5,384($sp)
    sdc1	$f6,376($sp)
    b	.L0db961a4
    # Line 161
    li	$s2,1
.L0db96d14:
    nop
    # Line 204
    bc1f	.L0db95cc0
    # Line 209
    nop	# was lw $t9, -17712($gp) # &floor
    sdc1	$f4,368($sp)
    b	.L0db95cbc
    # Line 206
    li	$s7,1
.end __glTextureRGB_F_F_Span

# Function: __glTextureRGB_F_F_StippledSpan
# Declared: Line 332 (Source lines: 333-590)
# Address: 0x0db96d2c - 0x0db97e3c (Size: 4368 bytes, Frame: 240)
.globl __glTextureRGB_F_F_StippledSpan
.ent __glTextureRGB_F_F_StippledSpan
__glTextureRGB_F_F_StippledSpan:
    # Line 364
    lwc1	$f5,30288($a0)
    # Line 363
    lwc1	$f6,30280($a0)
    # Line 359
    lw	$a3,30516($a0)
    # Line 333
    addiu	$sp,$sp,-496
    sd	$s0,344($sp)
    sd	$s2,320($sp)
    sd	$s3,360($sp)
    sd	$s4,336($sp)
    sd	$s5,376($sp)
    sd	$s6,368($sp)
    sd	$s8,352($sp)
    sdc1	$f20,192($sp)
    sdc1	$f22,176($sp)
    sdc1	$f24,184($sp)
    sdc1	$f26,168($sp)
    sdc1	$f28,200($sp)
    sd	$ra,328($sp)
    sd	$s7,384($sp)
    move	$s7,$a0
    sdc1	$f30,208($sp)
    # Line 362
    lwc1	$f30,30276($a0)
    sd	$s1,392($sp)
    # Line 357
    lw	$s1,28264($a0)
    sd	$gp,400($sp)
    # Line 333
    lui	$v0,0x6
    addiu	$v0,$v0,31084
    addu	$gp,$t9,$v0
    # Line 355
    lw	$a4,2376($a0)
    # Line 360
    lw	$v1,30524($a0)
    # Line 341
    lwc1	$f0,3280($a0)
    # Line 358
    lw	$at,30300($a0)
    sd	$v1,240($sp)
    sdc1	$f0,128($sp)
    sd	$at,232($sp)
    # Line 364
    beqz	$at,.L0db97dd4
    # Line 355
    lw	$a4,0($a4)
    sd	$s2,320($sp)
    sd	$ra,328($sp)
    sd	$s4,336($sp)
    sd	$s0,344($sp)
    sd	$s8,352($sp)
    sdc1	$f26,168($sp)
    sdc1	$f22,176($sp)
    sdc1	$f24,184($sp)
    # Line 364
    addiu	$s5,$sp,48
    li	$t0,-1
    li	$t1,8448
    li	$s3,1
    li	$s6,4
    li	$a6,32
    ldc1	$f7,_lit8_4030000000000000
    dmtc1	$zero,$f28
    mtc1	$zero,$f20
    addiu	$v0,$sp,12
    sd	$v0,256($sp)
    addiu	$at,$sp,0
    xori	$a1,$a4,0x2101
    sltiu	$a1,$a1,1
    addiu	$at,$at,-4
    sd	$at,248($sp)
    b	.L0db96e2c
    sd	$a1,408($sp)
.L0db96e24:
    ld	$v1,232($sp)
    # Line 375
    beqz	$v1,.L0db97dd4
.L0db96e2c:
    ld	$a1,232($sp)
    # Line 367
    move	$a5,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0db96e48
    # Line 371
    ld	$v0,232($sp)
    # Line 369
    li	$a5,32
    # Line 371
    ld	$v0,232($sp)
.L0db96e48:
    lui	$a2,0x8000
    # Line 373
    ld	$at,240($sp)
    # Line 371
    subu	$v0,$v0,$a5
    # Line 375
    addiu	$a5,$a5,-1
    # Line 373
    lw	$v1,0($at)
    addiu	$at,$at,4
    sd	$v0,232($sp)
    sd	$at,240($sp)
    # Line 375
    bltz	$a5,.L0db96e24
    sd	$v1,416($sp)
    b	.L0db97264
    ld	$a1,416($sp)
.L0db96e78:
    ldc1	$f7,_lit8_bff0000000000000
    # Line 451
    add.d	$f7,$f24,$f7
    c.lt.d	$f7,$f28
    li	$a0,1
    bc1fl	.L0db96e90
    move	$a0,$zero
.L0db96e90:
    beqz	$a0,.L0db97b9c
    add.d	$f6,$f24,$f6
    c.lt.d	$f6,$f28
.L0db96e9c:
    nop
    bc1fl	.L0db977fc
    # Line 453
    add.d	$f8,$f24,$f8
    sdc1	$f5,424($sp)
    li	$s8,15
.L0db96eb0:
    # Line 470
    # lw $t9, -17712($gp) # &floor
.L0db96eb4:
    sdc1	$f5,424($sp)
    mov.d	$f12,$f24
    jal	floor
    mov.s	$f26,$f5
    trunc.w.d	$f1,$f0
    mfc1	$a2,$f1
    nop
    # Line 471
    addiu	$a1,$a2,-1
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f0,$f20
    # Line 470
    sw	$a2,20($sp)
    # Line 474
    addiu	$a0,$a2,1
    # Line 471
    bc1f	.L0db96ef8
    sw	$a1,16($sp)
    # Line 472
    sw	$zero,16($sp)
.L0db96ef8:
    # Line 474
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    c.lt.s	$f26,$f2
    nop
    bc1f	.L0db96f24
    sw	$a0,24($sp)
    # Line 475
    trunc.w.s	$f3,$f26
    mfc1	$a0,$f3
    nop
    sw	$a0,24($sp)
.L0db96f24:
    # Line 477
    addiu	$at,$a0,1
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f26,$f0
    nop
    bc1f	.L0db96f54
    sw	$at,28($sp)
    # Line 478
    trunc.w.s	$f1,$f26
    mfc1	$v0,$f1
    nop
    sw	$v0,28($sp)
.L0db96f54:
    # Line 483
    # lw $t9, -17712($gp) # &floor
    jal	floor
    mov.d	$f12,$f22
    sub.d	$f6,$f22,$f0
    ldc1	$f7,_lit8_4030000000000000
    mul.d	$f6,$f6,$f7
    lwc1	$f26,3280($s7)
    cvt.d.s	$f26,$f26
    add.d	$f6,$f6,$f26
    trunc.w.d	$f6,$f6
    mfc1	$a0,$f6
    # Line 488
    mov.d	$f12,$f24
    # lw $t9, -17712($gp) # &floor
    # Line 484
    sll	$a2,$a0,0x2
    addu	$a2,$a2,$s1
    # Line 485
    lwc1	$f5,24($a2)
    # Line 484
    lwc1	$f4,88($a2)
    li	$a1,32
    # Line 485
    swc1	$f5,36($sp)
    # Line 484
    swc1	$f4,32($sp)
    # Line 487
    subu	$a1,$a1,$a0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s1
    lwc1	$f3,24($a1)
    # Line 486
    sll	$v1,$a0,0x1e
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s1
    lwc1	$f2,88($v1)
    # Line 487
    swc1	$f3,44($sp)
    # Line 488
    jal	floor
    # Line 486
    swc1	$f2,40($sp)
    # Line 488
    sub.d	$f4,$f24,$f0
    ldc1	$f7,_lit8_4030000000000000
    mul.d	$f4,$f4,$f7
    li	$t0,-1
    add.d	$f4,$f4,$f26
    li	$t1,8448
    # Line 496
    addiu	$t2,$sp,112
    move	$s0,$zero
    # Line 488
    trunc.w.d	$f4,$f4
    ldc1	$f6,136($sp)
    ldc1	$f5,440($sp)
    ld	$a0,288($sp)
    mfc1	$a4,$f4
    ld	$a2,472($sp)
    li	$a6,32
    # Line 489
    sll	$at,$a4,0x2
    # Line 492
    subu	$a5,$a6,$a4
    # Line 491
    sll	$a3,$a4,0x1e
    subu	$a3,$a3,$a4
    ld	$a4,456($sp)
    # Line 492
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$s1
    lwc1	$f1,24($a5)
    ld	$a5,448($sp)
    # Line 489
    addu	$at,$at,$s1
    lwc1	$f2,88($at)
    # Line 490
    lwc1	$f3,24($at)
    # Line 491
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s1
    lwc1	$f0,88($a3)
    ld	$a3,464($sp)
    # Line 490
    swc1	$f3,116($sp)
    # Line 489
    swc1	$f2,112($sp)
    # Line 492
    swc1	$f1,124($sp)
    # Line 491
    swc1	$f0,120($sp)
    # Line 496
    lwc1	$f4,0($t2)
.L0db97064:
    addiu	$t3,$sp,32
    sll	$a7,$s0,0x2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s5
    # Line 498
    lwc1	$f1,4($t3)
    lwc1	$f2,8($t3)
    mul.s	$f1,$f1,$f4
    lwc1	$f3,12($t3)
    mul.s	$f2,$f2,$f4
    lwc1	$f0,0($t3)
    mul.s	$f3,$f3,$f4
    mul.s	$f0,$f0,$f4
    # Line 496
    addiu	$s0,$s0,1
    addiu	$t2,$t2,4
    # Line 498
    swc1	$f3,12($a7)
    swc1	$f2,8($a7)
    swc1	$f1,4($a7)
    swc1	$f0,0($a7)
    # Line 496
    bnel	$s0,$s6,.L0db97064
    lwc1	$f4,0($t2)
    # Line 533
    mov.s	$f4,$f20
    # Line 534
    move	$s0,$zero
    li	$t2,3
    # Line 521
    addiu	$s4,$sp,16
    # Line 496
    beqz	$a0,.L0db97854
    # Line 533
    mov.s	$f8,$f20
.L0db970cc:
    li	$at,2
.L0db970d0:
    # Line 508
    beq	$a0,$at,.L0db978ac
    # Line 520
    mov.s	$f9,$f20
    # Line 534
    addiu	$s4,$sp,16
    # Line 533
    mov.s	$f9,$f20
.L0db970e0:
    # Line 534
    addiu	$t8,$sp,0
    li	$a0,3
    sllv	$t3,$s3,$t2
    and	$t3,$t3,$s8
    # Line 537
    sllv	$at,$s3,$a0
    # Line 535
    addiu	$a0,$a0,-1
    # Line 534
    sll	$a7,$s0,0x2
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s5
    # Line 537
    and	$at,$at,$s2
    beqz	$at,.L0db97494
    nop
    # Line 538
    lwc1	$f3,0($a7)
.L0db97114:
    # Line 540
    lwc1	$f2,164($s1)
    # Line 539
    lwc1	$f1,160($s1)
    # Line 540
    mul.s	$f2,$f2,$f3
    # Line 538
    lwc1	$f0,156($s1)
    # Line 539
    mul.s	$f1,$f1,$f3
    # Line 538
    mul.s	$f0,$f0,$f3
    # Line 540
    add.s	$f8,$f2,$f8
    # Line 539
    add.s	$f4,$f1,$f4
    # Line 538
    add.s	$f9,$f0,$f9
.L0db97138:
    # Line 537
    sllv	$v0,$s3,$a0
    and	$v0,$v0,$s2
    beqz	$v0,.L0db974f0
    # Line 535
    addiu	$a0,$a0,-1
    # Line 538
    lwc1	$f2,4($a7)
.L0db9714c:
    # Line 540
    lwc1	$f1,164($s1)
    # Line 539
    lwc1	$f0,160($s1)
    # Line 540
    mul.s	$f1,$f1,$f2
    # Line 538
    lwc1	$f3,156($s1)
    # Line 539
    mul.s	$f0,$f0,$f2
    # Line 538
    mul.s	$f3,$f3,$f2
    # Line 540
    add.s	$f8,$f1,$f8
    # Line 539
    add.s	$f4,$f0,$f4
    # Line 538
    add.s	$f9,$f3,$f9
.L0db97170:
    # Line 537
    sllv	$v1,$s3,$a0
    and	$v1,$v1,$s2
    beqz	$v1,.L0db9754c
    # Line 535
    addiu	$a0,$a0,-1
    # Line 538
    lwc1	$f1,8($a7)
.L0db97184:
    # Line 540
    lwc1	$f0,164($s1)
    # Line 539
    lwc1	$f3,160($s1)
    # Line 540
    mul.s	$f0,$f0,$f1
    # Line 538
    lwc1	$f2,156($s1)
    # Line 539
    mul.s	$f3,$f3,$f1
    # Line 538
    mul.s	$f2,$f2,$f1
    # Line 540
    add.s	$f8,$f0,$f8
    # Line 539
    add.s	$f4,$f3,$f4
    # Line 538
    add.s	$f9,$f2,$f9
.L0db971a8:
    # Line 534
    addiu	$t2,$t2,-1
    # Line 537
    sllv	$a1,$s3,$a0
    and	$a1,$a1,$s2
    beqz	$a1,.L0db975a8
    # Line 534
    addiu	$s0,$s0,1
    # Line 538
    lwc1	$f0,12($a7)
.L0db971c0:
    # Line 540
    lwc1	$f3,164($s1)
    # Line 539
    lwc1	$f2,160($s1)
    # Line 540
    mul.s	$f3,$f3,$f0
    # Line 538
    lwc1	$f1,156($s1)
    # Line 539
    mul.s	$f2,$f2,$f0
    # Line 538
    mul.s	$f1,$f1,$f0
    # Line 540
    add.s	$f8,$f3,$f8
    # Line 539
    add.s	$f4,$f2,$f4
    # Line 538
    add.s	$f9,$f1,$f9
.L0db971e4:
    # Line 534
    bne	$s0,$s6,.L0db970e0
    addiu	$s4,$s4,4
.L0db971ec:
    # Line 516
    beq	$a4,$t1,.L0db97b74
    li	$v0,7681
.L0db971f4:
    li	$at,0x8062
    # Line 557
    beq	$a4,$at,.L0db97818
    ld	$v1,408($sp)
    beq	$a4,$v0,.L0db97818
    move	$a0,$zero
    or	$v1,$a0,$v1
.L0db9720c:
    beqz	$v1,.L0db97aec
    ldc1	$f2,144($sp)
    # Line 560
    lwc1	$f2,30804($s7)
    mul.s	$f2,$f2,$f9
    swc1	$f2,0($a3)
    # Line 561
    lwc1	$f1,30808($s7)
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a3)
    # Line 562
    lwc1	$f0,30812($s7)
    mul.s	$f0,$f0,$f8
    swc1	$f0,8($a3)
.L0db97238:
    # Line 580
    lwc1	$f1,30444($s7)
    # Line 583
    srl	$a2,$a2,0x1
    # Line 579
    lwc1	$f0,30436($s7)
    # Line 580
    add.s	$f5,$f1,$f5
    # Line 581
    addiu	$a3,$a3,16
    # Line 578
    lwc1	$f3,30432($s7)
    # Line 579
    add.s	$f6,$f0,$f6
    # Line 375
    addiu	$a5,$a5,-1
    beq	$a5,$t0,.L0db96e24
    # Line 578
    add.s	$f30,$f3,$f30
    ld	$a1,416($sp)
.L0db97264:
    li	$v0,10497
    ldc1	$f9,_lit8_bff0000000000000
    # Line 375
    and	$a1,$a1,$a2
    beqz	$a1,.L0db97238
    # Line 381
    move	$a0,$zero
    # Line 377
    lwc1	$f4,3284($s7)
    sdc1	$f4,144($sp)
    div.s	$f4,$f4,$f5
    # Line 393
    move	$s2,$zero
    # Line 395
    li	$s0,-1
    ld	$s4,248($sp)
    # Line 383
    lw	$a7,228($s1)
    sdc1	$f4,152($sp)
    # Line 393
    mul.s	$f4,$f30,$f4
    lw	$at,4($s1)
    sd	$a7,280($sp)
    # Line 386
    lw	$v1,0($a7)
    # Line 390
    lwc1	$f26,32($a7)
    # Line 384
    lw	$s8,44($a7)
    sd	$v1,296($sp)
    # Line 393
    mul.s	$f4,$f4,$f26
    # Line 388
    lw	$v1,24($a7)
    # Line 387
    lw	$a7,20($a7)
    sd	$s8,304($sp)
    # Line 393
    ldc1	$f22,128($sp)
    # Line 387
    addiu	$s8,$a7,-1
    sd	$v1,272($sp)
    # Line 393
    sub.s	$f4,$f4,$f22
    # Line 388
    addiu	$v1,$v1,-1
    sd	$v1,264($sp)
    # Line 393
    beq	$at,$v0,.L0db97a08
    cvt.d.s	$f22,$f4
    # Line 405
    add.d	$f9,$f22,$f9
    c.lt.d	$f9,$f28
    li	$a7,1
    ldc1	$f8,_lit8_4000000000000000
    bc1fl	.L0db972fc
    move	$a7,$zero
.L0db972fc:
    beqz	$a7,.L0db97b50
    add.d	$f8,$f22,$f8
    c.lt.d	$f8,$f28
.L0db97308:
    nop
    bc1f	.L0db97604
    ldc1	$f10,_lit8_3ff0000000000000
    sd	$a0,288($sp)
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    # Line 407
    li	$s2,15
.L0db97334:
    sd	$a0,288($sp)
.L0db97338:
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    # Line 424
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    jal	floorf
    mov.s	$f12,$f4
    trunc.w.s	$f1,$f0
    mfc1	$a2,$f1
    nop
    # Line 425
    addiu	$a1,$a2,-1
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f0,$f20
    # Line 424
    sw	$a2,4($sp)
    # Line 428
    addiu	$a0,$a2,1
    # Line 425
    bc1f	.L0db97390
    sw	$a1,0($sp)
    # Line 426
    sw	$zero,0($sp)
.L0db97390:
    # Line 428
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    c.lt.s	$f26,$f2
    nop
    bc1f	.L0db973bc
    sw	$a0,8($sp)
    # Line 429
    trunc.w.s	$f3,$f26
    mfc1	$a0,$f3
    nop
    sw	$a0,8($sp)
.L0db973bc:
    # Line 431
    addiu	$at,$a0,1
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f26,$f0
    nop
    bc1f	.L0db973ec
    sw	$at,12($sp)
    # Line 432
    trunc.w.s	$f1,$f26
    mfc1	$v0,$f1
    nop
    sw	$v0,12($sp)
.L0db973ec:
    # Line 440
    ldc1	$f5,152($sp)
    ldc1	$f4,136($sp)
    mul.s	$f4,$f4,$f5
    # Line 437
    ld	$s8,280($sp)
    lwc1	$f5,36($s8)
    # Line 440
    mul.s	$f4,$f4,$f5
    ldc1	$f6,_lit8_4000000000000000
    # Line 442
    li	$s0,-1
    ld	$s4,256($sp)
    # Line 440
    ldc1	$f24,128($sp)
    ldc1	$f8,_lit8_3ff0000000000000
    lw	$v1,8($s1)
    sub.s	$f4,$f4,$f24
    li	$a1,10497
    move	$s8,$zero
    bne	$v1,$a1,.L0db96e78
    cvt.d.s	$f24,$f4
    # Line 442
    mtc1	$s0,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f6,$f5,$f4
    c.lt.s	$f6,$f20
    addiu	$s0,$s0,1
    bc1f	.L0db9763c
    sdc1	$f4,432($sp)
    ld	$ra,272($sp)
    # Line 444
    mtc1	$ra,$f12
    nop
    cvt.s.w	$f12,$f12
    ldc1	$f26,432($sp)
    add.s	$f12,$f12,$f26
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f5
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v0,264($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v0
    b	.L0db97664
    sw	$at,4($s4)
.L0db97494:
    # Line 537
    bnezl	$t3,.L0db97114
    # Line 538
    lwc1	$f3,0($a7)
    # Line 542
    ld	$v0,304($sp)
    lw	$at,0($s4)
    lw	$a1,0($t8)
    sllv	$at,$at,$v0
    addu	$a1,$a1,$at
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$a1,296($sp)
    lwc1	$f0,0($a7)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    # Line 544
    lwc1	$f3,8($v1)
    # Line 543
    lwc1	$f2,4($v1)
    # Line 544
    mul.s	$f3,$f3,$f0
    # Line 542
    lwc1	$f1,0($v1)
    # Line 543
    mul.s	$f2,$f2,$f0
    # Line 542
    mul.s	$f1,$f1,$f0
    # Line 544
    add.s	$f8,$f3,$f8
    # Line 543
    add.s	$f4,$f2,$f4
    b	.L0db97138
    # Line 542
    add.s	$f9,$f1,$f9
.L0db974f0:
    # Line 537
    bnezl	$t3,.L0db9714c
    # Line 538
    lwc1	$f2,4($a7)
    # Line 542
    ld	$v0,304($sp)
    lw	$at,0($s4)
    lw	$a1,4($t8)
    sllv	$at,$at,$v0
    addu	$a1,$a1,$at
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$a1,296($sp)
    lwc1	$f3,4($a7)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    # Line 544
    lwc1	$f2,8($v1)
    # Line 543
    lwc1	$f1,4($v1)
    # Line 544
    mul.s	$f2,$f2,$f3
    # Line 542
    lwc1	$f0,0($v1)
    # Line 543
    mul.s	$f1,$f1,$f3
    # Line 542
    mul.s	$f0,$f0,$f3
    # Line 544
    add.s	$f8,$f2,$f8
    # Line 543
    add.s	$f4,$f1,$f4
    b	.L0db97170
    # Line 542
    add.s	$f9,$f0,$f9
.L0db9754c:
    # Line 537
    bnezl	$t3,.L0db97184
    # Line 538
    lwc1	$f1,8($a7)
    # Line 542
    ld	$v0,304($sp)
    lw	$at,0($s4)
    lw	$a1,8($t8)
    sllv	$at,$at,$v0
    addu	$a1,$a1,$at
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$a1,296($sp)
    lwc1	$f2,8($a7)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    # Line 544
    lwc1	$f1,8($v1)
    # Line 543
    lwc1	$f0,4($v1)
    # Line 544
    mul.s	$f1,$f1,$f2
    # Line 542
    lwc1	$f3,0($v1)
    # Line 543
    mul.s	$f0,$f0,$f2
    # Line 542
    mul.s	$f3,$f3,$f2
    # Line 544
    add.s	$f8,$f1,$f8
    # Line 543
    add.s	$f4,$f0,$f4
    b	.L0db971a8
    # Line 542
    add.s	$f9,$f3,$f9
.L0db975a8:
    # Line 537
    bnezl	$t3,.L0db971c0
    # Line 538
    lwc1	$f0,12($a7)
    # Line 542
    ld	$v0,304($sp)
    lw	$at,0($s4)
    lw	$a1,12($t8)
    sllv	$at,$at,$v0
    addu	$a1,$a1,$at
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$a1,296($sp)
    lwc1	$f1,12($a7)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    # Line 544
    lwc1	$f0,8($v1)
    # Line 543
    lwc1	$f3,4($v1)
    # Line 544
    mul.s	$f0,$f0,$f1
    # Line 542
    lwc1	$f2,0($v1)
    # Line 543
    mul.s	$f3,$f3,$f1
    # Line 542
    mul.s	$f2,$f2,$f1
    # Line 544
    add.s	$f8,$f0,$f8
    # Line 543
    add.s	$f4,$f3,$f4
    b	.L0db971e4
    # Line 542
    add.s	$f9,$f2,$f9
.L0db97604:
    # Line 407
    add.d	$f10,$f22,$f10
    c.lt.d	$f10,$f28
    nop
    bc1fl	.L0db97824
    # Line 409
    c.lt.s	$f4,$f20
    sd	$a0,288($sp)
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    b	.L0db97334
    li	$s2,14
.L0db9763c:
    # Line 446
    # lw $t9, -17712($gp) # &floor
    cvt.d.s	$f12,$f6
    jal	floor
    ldc1	$f26,432($sp)
    trunc.w.d	$f0,$f0
    ld	$a1,264($sp)
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$a1
    sw	$v1,4($s4)
.L0db97664:
    # Line 442
    mtc1	$s0,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f6,$f5,$f26
    c.lt.s	$f6,$f20
    nop
    bc1f	.L0db976c4
    addiu	$s0,$s0,1
    ld	$a2,272($sp)
    # Line 444
    mtc1	$a2,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f26
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f5
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v0,264($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v0
    b	.L0db976e8
    sw	$at,8($s4)
.L0db976c4:
    # Line 446
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f6
    trunc.w.d	$f1,$f0
    ld	$a1,264($sp)
    mfc1	$v1,$f1
    nop
    and	$v1,$v1,$a1
    sw	$v1,8($s4)
.L0db976e8:
    # Line 442
    mtc1	$s0,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f6,$f5,$f26
    c.lt.s	$f6,$f20
    nop
    bc1f	.L0db97748
    addiu	$s0,$s0,1
    ld	$a2,272($sp)
    # Line 444
    mtc1	$a2,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f26
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f5
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v0,264($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v0
    b	.L0db9776c
    sw	$at,12($s4)
.L0db97748:
    # Line 446
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f6
    trunc.w.d	$f1,$f0
    ld	$a1,264($sp)
    mfc1	$v1,$f1
    nop
    and	$v1,$v1,$a1
    sw	$v1,12($s4)
.L0db9776c:
    # Line 442
    mtc1	$s0,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f6,$f5,$f26
    c.lt.s	$f6,$f20
    nop
    bc1f	.L0db977c8
    ld	$a2,272($sp)
    # Line 444
    mtc1	$a2,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f26
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f5
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v0,264($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v0
    b	.L0db977ec
    sw	$at,16($s4)
.L0db977c8:
    # Line 446
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f6
    trunc.w.d	$f1,$f0
    ld	$a1,264($sp)
    mfc1	$v1,$f1
    nop
    and	$v1,$v1,$a1
    sw	$v1,16($s4)
.L0db977ec:
    ld	$at,288($sp)
    # Line 449
    addiu	$at,$at,1
    b	.L0db96f54
    sd	$at,288($sp)
.L0db977fc:
    # Line 453
    c.lt.d	$f8,$f28
    nop
    bc1fl	.L0db979f0
    # Line 455
    c.lt.s	$f4,$f20
    sdc1	$f5,424($sp)
    b	.L0db96eb0
    li	$s8,14
.L0db97818:
    # Line 557
    li	$a0,1
    b	.L0db9720c
    or	$v1,$a0,$v1
.L0db97824:
    nop
    # Line 409
    bc1f	.L0db97bb8
    nop
    sd	$a0,288($sp)
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    # Line 411
    b	.L0db97334
    li	$s2,12
.L0db97854:
    # Line 496
    bnez	$s2,.L0db970d0
    li	$at,2
    # Line 508
    ld	$v0,304($sp)
    # Line 507
    lw	$at,0($sp)
    # Line 496
    bnez	$s8,.L0db970cc
    # Line 508
    addiu	$a7,$sp,48
    # Line 506
    mov.s	$f9,$f20
    mov.s	$f8,$f20
    mov.s	$f4,$f20
    # Line 508
    move	$s0,$zero
    li	$t2,3
    # Line 507
    lw	$a1,16($sp)
    # Line 508
    sllv	$t2,$t2,$v0
    sll	$t2,$t2,0x2
    # Line 507
    sllv	$a1,$a1,$v0
    addu	$a1,$a1,$at
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    ld	$a1,296($sp)
    sll	$a0,$a0,0x2
    b	.L0db97cb0
    addu	$a0,$a0,$a1
.L0db978ac:
    # Line 520
    mov.s	$f8,$f20
    mov.s	$f4,$f20
    # Line 521
    move	$s0,$zero
    addiu	$t8,$sp,0
.L0db978bc:
    sll	$a7,$s0,0x2
    ld	$a1,304($sp)
    lw	$a0,0($s4)
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$s5
    sllv	$a0,$a0,$a1
    # Line 524
    lw	$v1,0($t8)
    lw	$at,12($t8)
    lw	$v0,8($t8)
    addu	$v1,$v1,$a0
    addu	$at,$at,$a0
    addu	$v0,$v0,$a0
    sll	$t2,$v0,0x2
    subu	$t2,$t2,$v0
    lw	$v0,4($t8)
    sll	$a1,$at,0x2
    subu	$a1,$a1,$at
    addu	$v0,$v0,$a0
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,296($sp)
    lwc1	$f13,12($a7)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$v1
    # Line 525
    lwc1	$f11,4($a1)
    # Line 526
    lwc1	$f3,8($a1)
    # Line 525
    mul.s	$f11,$f11,$f13
    # Line 524
    lwc1	$f16,8($a7)
    # Line 526
    mul.s	$f3,$f3,$f13
    # Line 524
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$v1
    # Line 525
    lwc1	$f14,4($t2)
    mul.s	$f14,$f14,$f16
    # Line 524
    lwc1	$f0,0($a7)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 525
    lwc1	$f2,4($v0)
    mul.s	$f2,$f2,$f0
    # Line 526
    lwc1	$f12,8($v0)
    # Line 524
    lwc1	$f1,4($a7)
    sll	$at,$at,0x2
    # Line 526
    mul.s	$f12,$f12,$f0
    # Line 524
    addu	$at,$at,$v1
    # Line 526
    lwc1	$f10,8($at)
    lwc1	$f15,8($t2)
    mul.s	$f10,$f10,$f1
    add.s	$f12,$f12,$f8
    mul.s	$f8,$f15,$f16
    # Line 524
    lwc1	$f15,0($v0)
    mul.s	$f15,$f15,$f0
    # Line 526
    add.s	$f10,$f10,$f12
    # Line 525
    lwc1	$f0,4($at)
    # Line 526
    add.s	$f8,$f8,$f10
    # Line 525
    mul.s	$f0,$f0,$f1
    add.s	$f4,$f2,$f4
    # Line 524
    lwc1	$f12,0($at)
    # Line 526
    add.s	$f8,$f3,$f8
    # Line 524
    mul.s	$f12,$f12,$f1
    add.s	$f15,$f15,$f9
    lwc1	$f10,0($t2)
    # Line 525
    add.s	$f4,$f0,$f4
    # Line 524
    mul.s	$f10,$f10,$f16
    add.s	$f12,$f12,$f15
    lwc1	$f9,0($a1)
    # Line 525
    add.s	$f4,$f14,$f4
    # Line 524
    mul.s	$f9,$f9,$f13
    add.s	$f10,$f10,$f12
    # Line 525
    add.s	$f4,$f11,$f4
    # Line 521
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 524
    add.s	$f9,$f9,$f10
    # Line 521
    bne	$s0,$s6,.L0db978bc
    addiu	$t8,$sp,0
    b	.L0db971ec
    nop
.L0db979f0:
    nop
    # Line 455
    bc1f	.L0db97be4
    nop
    sdc1	$f5,424($sp)
    # Line 457
    b	.L0db96eb0
    li	$s8,12
.L0db97a08:
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    sd	$a7,312($sp)
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    b	.L0db97a5c
    sdc1	$f4,160($sp)
.L0db97a2c:
    # Line 400
    # lw $t9, -17712($gp) # &floor
    jal	floor
    ldc1	$f12,216($sp)
    trunc.w.d	$f4,$f0
    mfc1	$v1,$f4
    nop
    and	$v1,$v1,$s8
    sw	$v1,4($s4)
.L0db97a4c:
    # Line 395
    addiu	$s0,$s0,1
    li	$a1,3
    beq	$s0,$a1,.L0db97ae0
    addiu	$s4,$s4,4
.L0db97a5c:
    # Line 396
    mtc1	$s0,$f24
    nop
    cvt.s.w	$f24,$f24
    ldc1	$f12,160($sp)
    add.s	$f12,$f24,$f12
    # lw $t9, -17712($gp) # &floor
    sdc1	$f12,224($sp)
    cvt.d.s	$f12,$f12
    jal	floor
    sdc1	$f12,216($sp)
    trunc.w.d	$f1,$f0
    ldc1	$f0,224($sp)
    mfc1	$at,$f1
    c.lt.s	$f0,$f20
    and	$at,$at,$s8
    bc1f	.L0db97a2c
    sw	$at,4($s4)
    ld	$v0,312($sp)
    # Line 398
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    ldc1	$f13,160($sp)
    add.s	$f12,$f12,$f13
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f24
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$s8
    b	.L0db97a4c
    sw	$v1,4($s4)
.L0db97ae0:
    # Line 403
    li	$a1,1
    b	.L0db973ec
    sd	$a1,288($sp)
.L0db97aec:
    # Line 570
    sub.s	$f2,$f2,$f9
    lwc1	$f1,0($a3)
    # Line 568
    lw	$at,2376($s7)
    # Line 570
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($at)
    mul.s	$f2,$f2,$f9
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a3)
    # Line 571
    lwc1	$f0,3284($s7)
    sub.s	$f0,$f0,$f4
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f0
    lwc1	$f0,8($at)
    mul.s	$f0,$f0,$f4
    add.s	$f3,$f3,$f0
    swc1	$f3,4($a3)
    # Line 572
    lwc1	$f2,3284($s7)
    sub.s	$f2,$f2,$f8
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,12($at)
    mul.s	$f2,$f2,$f8
    add.s	$f1,$f1,$f2
    b	.L0db97238
    swc1	$f1,8($a3)
.L0db97b50:
    # Line 405
    cvt.d.s	$f3,$f26
    c.lt.d	$f3,$f8
    nop
    bc1fl	.L0db97338
    sd	$a0,288($sp)
    b	.L0db97308
    c.lt.d	$f8,$f28
.L0db97b6c:
    # Line 516
    bne	$a4,$t1,.L0db971f4
    li	$v0,7681
.L0db97b74:
    # Line 554
    lwc1	$f1,4($a3)
    # Line 555
    lwc1	$f2,8($a3)
    # Line 554
    mul.s	$f1,$f1,$f4
    # Line 553
    lwc1	$f0,0($a3)
    # Line 555
    mul.s	$f2,$f2,$f8
    # Line 553
    mul.s	$f0,$f0,$f9
    # Line 555
    swc1	$f2,8($a3)
    # Line 554
    swc1	$f1,4($a3)
    # Line 555
    b	.L0db97238
    # Line 553
    swc1	$f0,0($a3)
.L0db97b9c:
    # Line 451
    cvt.d.s	$f3,$f26
    c.lt.d	$f3,$f6
    nop
    bc1f	.L0db96eb4
    # Line 470
    nop	# was lw $t9, -17712($gp) # &floor
    b	.L0db96e9c
    # Line 451
    c.lt.d	$f6,$f28
.L0db97bb8:
    # Line 411
    beqzl	$a7,.L0db97bf8
    # Line 413
    cvt.d.s	$f11,$f26
    sd	$a0,288($sp)
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    b	.L0db97334
    li	$s2,8
.L0db97be4:
    # Line 457
    beqzl	$a0,.L0db97c2c
    # Line 459
    cvt.d.s	$f9,$f5
    sdc1	$f5,424($sp)
    b	.L0db96eb0
    li	$s8,8
.L0db97bf8:
    # Line 413
    c.lt.d	$f11,$f9
    nop
    bc1fl	.L0db97d14
    # Line 415
    c.lt.s	$f26,$f4
    sd	$a0,288($sp)
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    b	.L0db97334
    li	$s2,15
.L0db97c2c:
    # Line 459
    c.lt.d	$f9,$f7
    nop
    bc1fl	.L0db97d44
    # Line 461
    c.lt.s	$f5,$f4
    sdc1	$f5,424($sp)
    b	.L0db96eb0
    li	$s8,15
.L0db97c48:
    # Line 513
    addiu	$a0,$a0,-48
.L0db97c4c:
    # Line 511
    addiu	$a0,$a0,12
    li	$at,3
    # Line 508
    addiu	$s0,$s0,1
    # Line 509
    lwc1	$f3,4($a7)
    # Line 511
    lwc1	$f2,-4($a0)
    sra	$v0,$s0,0x1f
    # Line 510
    lwc1	$f1,-8($a0)
    # Line 511
    mul.s	$f2,$f2,$f3
    xor	$a1,$s0,$v0
    # Line 509
    lwc1	$f0,-12($a0)
    # Line 510
    mul.s	$f1,$f1,$f3
    # Line 511
    subu	$a1,$a1,$v0
    sra	$v0,$s0,0x1f
    # Line 509
    mul.s	$f0,$f0,$f3
    # Line 508
    addiu	$s0,$s0,1
    # Line 511
    add.s	$f8,$f2,$f8
    andi	$a1,$a1,0x3
    xor	$a1,$a1,$v0
    # Line 510
    add.s	$f4,$f1,$f4
    # Line 511
    subu	$a1,$a1,$v0
    beq	$a1,$at,.L0db97d08
    # Line 509
    add.s	$f9,$f0,$f9
.L0db97ca4:
    # Line 508
    addiu	$a7,$a7,8
    li	$v1,16
    beq	$s0,$v1,.L0db97b6c
.L0db97cb0:
    # Line 511
    addiu	$a0,$a0,12
    # Line 509
    lwc1	$f2,0($a7)
    # Line 511
    lwc1	$f1,-4($a0)
    li	$at,3
    # Line 510
    lwc1	$f0,-8($a0)
    # Line 511
    mul.s	$f1,$f1,$f2
    sra	$v0,$s0,0x1f
    # Line 509
    lwc1	$f3,-12($a0)
    # Line 510
    mul.s	$f0,$f0,$f2
    # Line 511
    xor	$a1,$s0,$v0
    subu	$a1,$a1,$v0
    # Line 509
    mul.s	$f3,$f3,$f2
    # Line 511
    sra	$v0,$s0,0x1f
    add.s	$f8,$f1,$f8
    andi	$a1,$a1,0x3
    xor	$a1,$a1,$v0
    # Line 510
    add.s	$f4,$f0,$f4
    # Line 511
    subu	$a1,$a1,$v0
    bne	$a1,$at,.L0db97c4c
    # Line 509
    add.s	$f9,$f3,$f9
    b	.L0db97c48
    # Line 513
    addu	$a0,$t2,$a0
.L0db97d08:
    addu	$a0,$t2,$a0
    b	.L0db97ca4
    addiu	$a0,$a0,-48
.L0db97d14:
    nop
    # Line 415
    bc1fl	.L0db97d5c
    # Line 417
    c.lt.d	$f11,$f10
    sd	$a0,288($sp)
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    b	.L0db97334
    li	$s2,7
.L0db97d44:
    nop
    # Line 461
    bc1fl	.L0db97d8c
    # Line 463
    c.lt.d	$f9,$f8
    sdc1	$f5,424($sp)
    b	.L0db96eb0
    li	$s8,7
.L0db97d5c:
    nop
    # Line 417
    bc1fl	.L0db97da4
    # Line 419
    c.lt.d	$f11,$f8
    sd	$a0,288($sp)
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    b	.L0db97334
    li	$s2,3
.L0db97d8c:
    nop
    # Line 463
    bc1fl	.L0db97e24
    # Line 465
    c.lt.d	$f9,$f6
    sdc1	$f5,424($sp)
    b	.L0db96eb0
    li	$s8,3
.L0db97da4:
    nop
    # Line 419
    bc1fl	.L0db97338
    sd	$a0,288($sp)
    sd	$a0,288($sp)
    sd	$a2,472($sp)
    sd	$a3,464($sp)
    sd	$a4,456($sp)
    sd	$a5,448($sp)
    sdc1	$f5,440($sp)
    sdc1	$f6,136($sp)
    b	.L0db97334
    # Line 421
    li	$s2,1
.L0db97dd4:
    # Line 590
    move	$v0,$zero
    ld	$gp,400($sp)
    ld	$s0,344($sp)
    ld	$s1,392($sp)
    ld	$s2,320($sp)
    ld	$s3,360($sp)
    ld	$s4,336($sp)
    ld	$s5,376($sp)
    ld	$s6,368($sp)
    ld	$s7,384($sp)
    ld	$s8,352($sp)
    ldc1	$f20,192($sp)
    ldc1	$f22,176($sp)
    ldc1	$f24,184($sp)
    ldc1	$f26,168($sp)
    ld	$ra,328($sp)
    ldc1	$f28,200($sp)
    ldc1	$f30,208($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L0db97e24:
    nop
    # Line 465
    bc1f	.L0db96eb4
    # Line 470
    nop	# was lw $t9, -17712($gp) # &floor
    sdc1	$f5,424($sp)
    b	.L0db96eb0
    # Line 467
    li	$s8,1
.end __glTextureRGB_F_F_StippledSpan

# Function: __glTextureRGB_F_LML_Span
# Declared: Line 600 (Source lines: 601-1216)
# Address: 0x0db97e3c - 0x0db99fa8 (Size: 8556 bytes, Frame: 160)
.globl __glTextureRGB_F_LML_Span
.ent __glTextureRGB_F_LML_Span
__glTextureRGB_F_LML_Span:
    # Line 635
    lwc1	$f6,30292($a0)
    # Line 634
    lwc1	$f8,30288($a0)
    # Line 633
    lwc1	$f7,30280($a0)
    # Line 632
    lwc1	$f5,30276($a0)
    # Line 601
    addiu	$sp,$sp,-544
    sd	$s0,320($sp)
    sd	$s2,416($sp)
    sd	$s3,408($sp)
    sd	$s4,368($sp)
    sd	$s6,400($sp)
    sd	$s8,392($sp)
    sdc1	$f20,216($sp)
    sdc1	$f22,200($sp)
    sdc1	$f24,192($sp)
    sdc1	$f26,208($sp)
    sdc1	$f28,184($sp)
    sdc1	$f30,176($sp)
    sd	$ra,384($sp)
    sd	$s5,240($sp)
    move	$s5,$a0
    sd	$s7,328($sp)
    # Line 630
    lw	$s7,30516($a0)
    sd	$s1,280($sp)
    # Line 628
    lw	$s1,28264($a0)
    # Line 609
    lwc1	$f0,3280($a0)
    # Line 637
    lw	$at,30300($a0)
    sd	$gp,376($sp)
    # Line 601
    lui	$v0,0x6
    addiu	$v0,$v0,26716
    addu	$gp,$t9,$v0
    # Line 626
    lw	$v0,2376($a0)
    sdc1	$f0,160($sp)
    # Line 637
    addiu	$at,$at,-1
    # Line 626
    lw	$v0,0($v0)
    sd	$at,456($sp)
    # Line 637
    bltz	$at,.L0db99c64
    sd	$v0,464($sp)
    addiu	$s6,$sp,48
    li	$a5,-1
    li	$s3,1
    li	$s8,4
    mtc1	$zero,$f26
    li	$a4,10497
    addiu	$at,$sp,12
    sd	$at,272($sp)
    addiu	$a1,$sp,0
    ld	$v1,464($sp)
    addiu	$a1,$a1,-4
    sd	$a1,424($sp)
    xori	$v1,$v1,0x2101
    sltiu	$v1,$v1,1
    b	.L0db98318
    sd	$v1,448($sp)
.L0db97f10:
    ldc1	$f6,_lit8_bff0000000000000
    # Line 714
    add.d	$f6,$f20,$f6
    dmtc1	$zero,$f0
    c.lt.d	$f6,$f0
    nop
    bc1fl	.L0db97f2c
    move	$a0,$zero
.L0db97f2c:
    beqz	$a0,.L0db99690
    add.d	$f5,$f20,$f5
    dmtc1	$zero,$f0
.L0db97f38:
    c.lt.d	$f5,$f0
    nop
    bc1f	.L0db98e10
    # Line 716
    li	$v0,15
    sdc1	$f4,168($sp)
    sd	$v0,288($sp)
.L0db97f50:
    # Line 733
    # lw $t9, -17712($gp) # &floor
    sdc1	$f4,168($sp)
    jal	floor
    mov.d	$f12,$f20
    trunc.w.d	$f2,$f0
    mfc1	$a2,$f2
    nop
    # Line 734
    addiu	$v1,$a2,-1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    ldc1	$f5,168($sp)
    c.lt.s	$f1,$f26
    # Line 733
    sw	$a2,20($sp)
    # Line 737
    addiu	$a0,$a2,1
    # Line 734
    bc1f	.L0db97f98
    sw	$v1,16($sp)
    # Line 735
    sw	$zero,16($sp)
.L0db97f98:
    # Line 737
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    c.lt.s	$f5,$f3
    nop
    bc1f	.L0db97fc4
    sw	$a0,24($sp)
    # Line 738
    trunc.w.s	$f0,$f5
    mfc1	$a0,$f0
    nop
    sw	$a0,24($sp)
.L0db97fc4:
    # Line 740
    addiu	$a1,$a0,1
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    c.lt.s	$f5,$f1
    nop
    bc1f	.L0db97ff4
    sw	$a1,28($sp)
    # Line 741
    trunc.w.s	$f2,$f5
    mfc1	$at,$f2
    nop
    sw	$at,28($sp)
.L0db97ff4:
    # Line 746
    # lw $t9, -17712($gp) # &floor
    jal	floor
    mov.d	$f12,$f22
    sub.d	$f7,$f22,$f0
    ldc1	$f8,_lit8_4030000000000000
    mul.d	$f7,$f7,$f8
    lwc1	$f24,3280($s5)
    cvt.d.s	$f24,$f24
    add.d	$f7,$f7,$f24
    trunc.w.d	$f7,$f7
    mfc1	$v1,$f7
    # Line 751
    mov.d	$f12,$f20
    # lw $t9, -17712($gp) # &floor
    # Line 747
    sll	$a1,$v1,0x2
    addu	$a1,$a1,$s1
    # Line 748
    lwc1	$f6,24($a1)
    # Line 747
    lwc1	$f5,88($a1)
    li	$a0,32
    # Line 748
    swc1	$f6,36($sp)
    # Line 747
    swc1	$f5,32($sp)
    # Line 750
    subu	$a0,$a0,$v1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s1
    lwc1	$f4,24($a0)
    # Line 749
    sll	$v0,$v1,0x1e
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s1
    lwc1	$f3,88($v0)
    # Line 750
    swc1	$f4,44($sp)
    # Line 751
    jal	floor
    # Line 749
    swc1	$f3,40($sp)
    # Line 751
    sub.d	$f4,$f20,$f0
    ldc1	$f5,_lit8_4030000000000000
    mul.d	$f4,$f4,$f5
    li	$a4,10497
    li	$a5,-1
    add.d	$f4,$f4,$f24
    # Line 759
    addiu	$a6,$sp,112
    move	$s0,$zero
    ldc1	$f8,472($sp)
    # Line 751
    trunc.w.d	$f4,$f4
    ldc1	$f7,480($sp)
    ldc1	$f6,488($sp)
    ld	$a0,288($sp)
    mfc1	$at,$f4
    ldc1	$f5,496($sp)
    li	$v0,32
    # Line 754
    sll	$a2,$at,0x1e
    subu	$a2,$a2,$at
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s1
    lwc1	$f0,88($a2)
    ld	$a2,256($sp)
    # Line 752
    sll	$v1,$at,0x2
    addu	$v1,$v1,$s1
    lwc1	$f2,88($v1)
    # Line 753
    lwc1	$f3,24($v1)
    # Line 755
    subu	$v0,$v0,$at
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s1
    lwc1	$f1,24($v0)
    # Line 753
    swc1	$f3,116($sp)
    # Line 752
    swc1	$f2,112($sp)
    # Line 755
    swc1	$f1,124($sp)
    # Line 754
    swc1	$f0,120($sp)
    # Line 759
    lwc1	$f4,0($a6)
.L0db98100:
    addiu	$a7,$sp,32
    sll	$a3,$s0,0x2
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s6
    # Line 761
    lwc1	$f1,4($a7)
    lwc1	$f2,8($a7)
    mul.s	$f1,$f1,$f4
    lwc1	$f3,12($a7)
    mul.s	$f2,$f2,$f4
    lwc1	$f0,0($a7)
    mul.s	$f3,$f3,$f4
    mul.s	$f0,$f0,$f4
    # Line 759
    addiu	$s0,$s0,1
    addiu	$a6,$a6,4
    # Line 761
    swc1	$f3,12($a3)
    swc1	$f2,8($a3)
    swc1	$f1,4($a3)
    swc1	$f0,0($a3)
    # Line 759
    bnel	$s0,$s8,.L0db98100
    lwc1	$f4,0($a6)
    # Line 796
    mov.s	$f20,$f26
    # Line 797
    move	$s0,$zero
    li	$a6,3
    # Line 784
    addiu	$s4,$sp,16
    # Line 759
    beqz	$a2,.L0db98ed4
    # Line 796
    mov.s	$f24,$f26
.L0db98168:
    li	$at,2
.L0db9816c:
    # Line 771
    beq	$a2,$at,.L0db993cc
    # Line 783
    mov.s	$f22,$f26
    # Line 797
    addiu	$s4,$sp,16
    # Line 796
    mov.s	$f22,$f26
.L0db9817c:
    # Line 797
    addiu	$t0,$sp,0
    li	$a2,3
    sllv	$a7,$s3,$a6
    and	$a7,$a7,$a0
    # Line 800
    sllv	$at,$s3,$a2
    # Line 798
    addiu	$a2,$a2,-1
    # Line 797
    sll	$a3,$s0,0x2
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s6
    # Line 800
    and	$at,$at,$s2
    beqz	$at,.L0db988bc
    nop
    # Line 801
    lwc1	$f3,0($a3)
.L0db981b0:
    # Line 803
    lwc1	$f2,164($s1)
    # Line 802
    lwc1	$f1,160($s1)
    # Line 803
    mul.s	$f2,$f2,$f3
    # Line 801
    lwc1	$f0,156($s1)
    # Line 802
    mul.s	$f1,$f1,$f3
    # Line 801
    mul.s	$f0,$f0,$f3
    # Line 803
    add.s	$f24,$f2,$f24
    # Line 802
    add.s	$f20,$f1,$f20
    # Line 801
    add.s	$f22,$f0,$f22
.L0db981d4:
    # Line 800
    sllv	$v0,$s3,$a2
    and	$v0,$v0,$s2
    beqz	$v0,.L0db98918
    # Line 798
    addiu	$a2,$a2,-1
    # Line 801
    lwc1	$f2,4($a3)
.L0db981e8:
    # Line 803
    lwc1	$f1,164($s1)
    # Line 802
    lwc1	$f0,160($s1)
    # Line 803
    mul.s	$f1,$f1,$f2
    # Line 801
    lwc1	$f3,156($s1)
    # Line 802
    mul.s	$f0,$f0,$f2
    # Line 801
    mul.s	$f3,$f3,$f2
    # Line 803
    add.s	$f24,$f1,$f24
    # Line 802
    add.s	$f20,$f0,$f20
    # Line 801
    add.s	$f22,$f3,$f22
.L0db9820c:
    # Line 800
    sllv	$v1,$s3,$a2
    and	$v1,$v1,$s2
    beqz	$v1,.L0db98974
    # Line 798
    addiu	$a2,$a2,-1
    # Line 801
    lwc1	$f1,8($a3)
.L0db98220:
    # Line 803
    lwc1	$f0,164($s1)
    # Line 802
    lwc1	$f3,160($s1)
    # Line 803
    mul.s	$f0,$f0,$f1
    # Line 801
    lwc1	$f2,156($s1)
    # Line 802
    mul.s	$f3,$f3,$f1
    # Line 801
    mul.s	$f2,$f2,$f1
    # Line 803
    add.s	$f24,$f0,$f24
    # Line 802
    add.s	$f20,$f3,$f20
    # Line 801
    add.s	$f22,$f2,$f22
.L0db98244:
    # Line 797
    addiu	$a6,$a6,-1
    # Line 800
    sllv	$a1,$s3,$a2
    and	$a1,$a1,$s2
    beqz	$a1,.L0db989d0
    # Line 797
    addiu	$s0,$s0,1
    # Line 801
    lwc1	$f0,12($a3)
.L0db9825c:
    # Line 803
    lwc1	$f3,164($s1)
    # Line 802
    lwc1	$f2,160($s1)
    # Line 803
    mul.s	$f3,$f3,$f0
    # Line 801
    lwc1	$f1,156($s1)
    # Line 802
    mul.s	$f2,$f2,$f0
    # Line 801
    mul.s	$f1,$f1,$f0
    # Line 803
    add.s	$f24,$f3,$f24
    # Line 802
    add.s	$f20,$f2,$f20
    # Line 801
    add.s	$f22,$f1,$f22
.L0db98280:
    # Line 797
    bne	$s0,$s8,.L0db9817c
    addiu	$s4,$s4,4
.L0db98288:
    # Line 1176
    ld	$at,464($sp)
.L0db9828c:
    li	$v0,8448
    beq	$at,$v0,.L0db98eac
    li	$v0,7681
.L0db98298:
    # Line 1189
    ld	$v1,464($sp)
    li	$a1,0x8062
    beq	$v1,$a1,.L0db98a2c
    ld	$at,464($sp)
    beq	$at,$v0,.L0db98a2c
    move	$a0,$zero
    ld	$v1,448($sp)
.L0db982b4:
    or	$v1,$a0,$v1
    beqz	$v1,.L0db98e38
    ldc1	$f1,152($sp)
    # Line 1192
    lwc1	$f2,30804($s5)
    mul.s	$f2,$f2,$f22
    swc1	$f2,0($s7)
    # Line 1193
    lwc1	$f1,30808($s5)
    mul.s	$f1,$f1,$f20
    swc1	$f1,4($s7)
    # Line 1194
    lwc1	$f0,30812($s5)
    mul.s	$f0,$f0,$f24
    swc1	$f0,8($s7)
.L0db982e4:
    # Line 1212
    lwc1	$f2,30448($s5)
    # Line 1211
    lwc1	$f1,30444($s5)
    # Line 1212
    add.s	$f6,$f2,$f6
    # Line 1210
    lwc1	$f0,30436($s5)
    # Line 1211
    add.s	$f8,$f1,$f8
    # Line 1209
    lwc1	$f3,30432($s5)
    # Line 1210
    add.s	$f7,$f0,$f7
    # Line 637
    ld	$a1,456($sp)
    # Line 1213
    addiu	$s7,$s7,16
    # Line 1209
    add.s	$f5,$f3,$f5
    # Line 637
    addiu	$a1,$a1,-1
    beq	$a1,$a5,.L0db99c64
    sd	$a1,456($sp)
.L0db98318:
    # Line 638
    lwc1	$f4,3284($s5)
    sdc1	$f4,152($sp)
    div.s	$f4,$f4,$f8
    lw	$s0,4($s1)
    mul.s	$f9,$f6,$f4
    # Line 658
    move	$s2,$zero
    ldc1	$f22,160($sp)
    # Line 638
    lwc1	$f1,240($s1)
    mul.s	$f0,$f7,$f4
    lw	$a6,228($s1)
    # Line 824
    mov.s	$f10,$f26
    # Line 638
    c.le.s	$f9,$f1
    # Line 648
    move	$a2,$a6
    # Line 638
    mul.s	$f4,$f5,$f4
    bc1f	.L0db98418
    sdc1	$f0,144($sp)
    # Line 646
    move	$a0,$zero
    # Line 652
    lw	$a3,20($a6)
    # Line 655
    lwc1	$f30,32($a6)
    # Line 651
    lw	$v0,0($a6)
    # Line 649
    lw	$at,44($a6)
    # Line 658
    mul.s	$f20,$f4,$f30
    sd	$v0,264($sp)
    # Line 653
    lw	$s4,24($a6)
    sd	$at,248($sp)
    ldc1	$f4,_lit8_4000000000000000
    sd	$s4,232($sp)
    addiu	$s4,$s4,-1
    # Line 658
    sub.s	$f20,$f20,$f22
    sd	$s4,432($sp)
    # Line 652
    addiu	$s4,$a3,-1
    # Line 658
    bne	$a4,$s0,.L0db98710
    cvt.d.s	$f22,$f20
    # Line 660
    li	$s0,-1
    ld	$a0,424($sp)
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    sd	$a2,352($sp)
    sd	$a0,344($sp)
    add.s	$f9,$f4,$f20
    sd	$a3,336($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    c.lt.s	$f9,$f26
    sdc1	$f7,480($sp)
    addiu	$s0,$s0,1
    bc1f	.L0db98a70
    sdc1	$f8,472($sp)
    ld	$v1,336($sp)
    # Line 662
    mtc1	$v1,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    ld	$at,344($sp)
    and	$a1,$a1,$s4
    b	.L0db98a90
    sw	$a1,4($at)
.L0db98418:
    # Line 779
    c.eq.s	$f9,$f26
    nop
    bc1t	.L0db984a0
    # Line 819
    move	$a0,$zero
    # Line 820
    trunc.w.s	$f1,$f9
    mfc1	$a2,$f1
    nop
    sra	$a2,$a2,0x1
    beqz	$a2,.L0db98474
    # Line 822
    sllv	$at,$s3,$a0
    # Line 820
    addiu	$a0,$a0,1
.L0db98444:
    sra	$a2,$a2,0x1
    beqz	$a2,.L0db98470
    nop
    addiu	$a0,$a0,1
    sra	$a2,$a2,0x1
    beqz	$a2,.L0db98470
    nop
    addiu	$a0,$a0,1
    sra	$a2,$a2,0x1
    bnezl	$a2,.L0db98444
    addiu	$a0,$a0,1
.L0db98470:
    # Line 822
    sllv	$at,$s3,$a0
.L0db98474:
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f9,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a0,$f10
    nop
    cvt.s.w	$f10,$f10
    add.s	$f10,$f10,$f0
    ldc1	$f0,160($sp)
    mul.s	$f10,$f10,$f0
.L0db984a0:
    # Line 832
    lw	$a1,8($s1)
    trunc.w.s	$f22,$f10
    sd	$a1,296($sp)
    cvt.s.w	$f9,$f22
    mfc1	$a0,$f22
    # Line 828
    lw	$a2,236($s1)
    # Line 832
    ldc1	$f22,152($sp)
    addiu	$v1,$a0,1
    slt	$v0,$a2,$v1
    sub.s	$f9,$f10,$f9
    slti	$v1,$v1,0
    or	$v0,$v0,$v1
    beqz	$v0,.L0db98f2c
    sub.s	$f22,$f22,$f9
    # Line 835
    sll	$s4,$a2,0x2
    subu	$s4,$s4,$a2
    sll	$s4,$s4,0x3
    addu	$s4,$s4,$a2
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$a6
    # Line 836
    lw	$at,44($s4)
    sd	$s4,352($sp)
    # Line 837
    lw	$v0,0($s4)
    sd	$at,248($sp)
    # Line 841
    lwc1	$f30,32($s4)
    # Line 839
    lw	$at,24($s4)
    # Line 838
    lw	$s4,20($s4)
    # Line 842
    mul.s	$f10,$f4,$f30
    sd	$v0,264($sp)
    # Line 838
    addiu	$s4,$s4,-1
    # Line 839
    addiu	$at,$at,-1
    sd	$at,432($sp)
    # Line 842
    beq	$a4,$s0,.L0db99754
    mov.s	$f28,$f10
    # Line 846
    c.lt.s	$f10,$f26
    nop
    bc1fl	.L0db98a38
    # Line 848
    c.lt.s	$f30,$f10
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    mov.s	$f28,$f26
.L0db9854c:
    sdc1	$f5,496($sp)
.L0db98550:
    # Line 850
    ldc1	$f23,160($sp)
    sdc1	$f6,488($sp)
    # Line 851
    # lw $t9, -17792($gp) # &floorf
    # Line 850
    sub.s	$f28,$f28,$f23
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    # Line 851
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sd	$at,312($sp)
    # Line 852
    addiu	$at,$at,1
    sd	$at,304($sp)
.L0db98588:
    # Line 855
    ld	$a1,352($sp)
    # Line 856
    ldc1	$f5,144($sp)
    # Line 855
    lwc1	$f4,36($a1)
    # Line 856
    mul.s	$f5,$f5,$f4
    ld	$v1,296($sp)
    li	$v0,10497
    beq	$v0,$v1,.L0db9979c
    mov.s	$f30,$f5
    # Line 860
    c.lt.s	$f5,$f26
    nop
    bc1fl	.L0db98a5c
    # Line 862
    c.lt.s	$f4,$f5
    mov.s	$f30,$f26
.L0db985bc:
    # Line 864
    ldc1	$f6,160($sp)
.L0db985c0:
    # Line 865
    # lw $t9, -17792($gp) # &floorf
    # Line 864
    sub.s	$f30,$f30,$f6
    # Line 865
    jal	floorf
    mov.s	$f12,$f30
    trunc.w.s	$f0,$f0
    mfc1	$s2,$f0
    nop
    # Line 866
    addiu	$at,$s2,1
    sd	$at,440($sp)
.L0db985e4:
    # Line 869
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f28
    # Line 870
    # lw $t9, -17792($gp) # &floorf
    # Line 869
    sub.s	$f1,$f28,$f0
    # Line 870
    mov.s	$f12,$f30
    jal	floorf
    sdc1	$f1,224($sp)
    li	$a4,10497
    li	$a5,-1
    ldc1	$f8,472($sp)
    ldc1	$f7,480($sp)
    ldc1	$f6,488($sp)
    ldc1	$f5,496($sp)
    ld	$a3,440($sp)
    ld	$a2,304($sp)
    # Line 872
    nor	$t0,$s4,$zero
    # Line 891
    and	$t2,$t0,$a2
    # Line 871
    ldc1	$f9,224($sp)
    ldc1	$f11,152($sp)
    # Line 872
    sub.s	$f10,$f30,$f0
    ld	$a0,312($sp)
    ld	$a6,432($sp)
    # Line 871
    sub.s	$f13,$f11,$f9
    # Line 872
    and	$t1,$t0,$a0
    nor	$a6,$a6,$zero
    sub.s	$f11,$f11,$f10
    and	$a7,$a6,$s2
    or	$v0,$t1,$a7
    beqz	$v0,.L0db99550
    mul.s	$f12,$f13,$f11
    # Line 885
    lwc1	$f24,164($s1)
    # Line 884
    lwc1	$f20,160($s1)
    # Line 885
    mul.s	$f24,$f24,$f12
    # Line 883
    lwc1	$f22,156($s1)
    # Line 884
    mul.s	$f20,$f20,$f12
    # Line 883
    mul.s	$f22,$f22,$f12
.L0db98678:
    # Line 891
    mul.s	$f4,$f9,$f11
    or	$at,$t2,$a7
    # Line 902
    and	$a7,$a6,$a3
    # Line 891
    beqz	$at,.L0db99590
    # Line 902
    or	$v0,$t1,$a7
    # Line 896
    lwc1	$f2,164($s1)
    # Line 895
    lwc1	$f1,160($s1)
    # Line 896
    mul.s	$f2,$f2,$f4
    # Line 894
    lwc1	$f0,156($s1)
    # Line 895
    mul.s	$f1,$f1,$f4
    # Line 894
    mul.s	$f0,$f0,$f4
    # Line 896
    add.s	$f24,$f2,$f24
    # Line 895
    add.s	$f20,$f1,$f20
    # Line 894
    add.s	$f22,$f0,$f22
.L0db986b0:
    # Line 902
    beqz	$v0,.L0db995dc
    mul.s	$f4,$f10,$f13
    # Line 907
    lwc1	$f1,164($s1)
    # Line 906
    lwc1	$f0,160($s1)
    # Line 907
    mul.s	$f1,$f1,$f4
    # Line 905
    lwc1	$f3,156($s1)
    # Line 906
    mul.s	$f0,$f0,$f4
    # Line 905
    mul.s	$f3,$f3,$f4
    # Line 907
    add.s	$f24,$f1,$f24
    # Line 906
    add.s	$f20,$f0,$f20
    # Line 905
    add.s	$f22,$f3,$f22
.L0db986dc:
    # Line 913
    or	$v1,$t2,$a7
    beqz	$v1,.L0db99628
    mul.s	$f4,$f10,$f9
    # Line 918
    lwc1	$f0,164($s1)
    # Line 917
    lwc1	$f3,160($s1)
    # Line 918
    mul.s	$f0,$f0,$f4
    # Line 916
    lwc1	$f2,156($s1)
    # Line 917
    mul.s	$f3,$f3,$f4
    # Line 916
    mul.s	$f2,$f2,$f4
    # Line 918
    add.s	$f24,$f0,$f24
    # Line 917
    add.s	$f20,$f3,$f20
    # Line 918
    b	.L0db98288
    # Line 916
    add.s	$f22,$f2,$f22
.L0db98710:
    ldc1	$f9,_lit8_bff0000000000000
    # Line 669
    add.d	$f9,$f22,$f9
    dmtc1	$zero,$f0
    c.lt.d	$f9,$f0
    li	$a3,1
    bc1fl	.L0db9872c
    move	$a3,$zero
.L0db9872c:
    beqz	$a3,.L0db99674
    add.d	$f4,$f22,$f4
    dmtc1	$zero,$f0
.L0db98738:
    c.lt.d	$f4,$f0
    nop
    bc1f	.L0db98ddc
    ldc1	$f10,_lit8_3ff0000000000000
    sd	$a0,256($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    # Line 671
    li	$s2,15
.L0db98760:
    sd	$a2,352($sp)
.L0db98764:
    sd	$a0,256($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    # Line 688
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    jal	floorf
    mov.s	$f12,$f20
    trunc.w.s	$f2,$f0
    mfc1	$a4,$f2
    nop
    # Line 689
    addiu	$a0,$a4,-1
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    li	$a2,10497
    ldc1	$f5,144($sp)
    # Line 688
    sw	$a4,4($sp)
    # Line 689
    c.lt.s	$f1,$f26
    # Line 692
    addiu	$a3,$a4,1
    # Line 689
    sw	$a0,0($sp)
    bc1f	.L0db987c4
    ld	$a0,352($sp)
    # Line 690
    sw	$zero,0($sp)
.L0db987c4:
    # Line 692
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    c.lt.s	$f30,$f3
    nop
    bc1f	.L0db987f0
    sw	$a3,8($sp)
    # Line 693
    trunc.w.s	$f0,$f30
    mfc1	$a3,$f0
    nop
    sw	$a3,8($sp)
.L0db987f0:
    # Line 695
    addiu	$a1,$a3,1
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    c.lt.s	$f30,$f1
    nop
    bc1f	.L0db98820
    sw	$a1,12($sp)
    # Line 696
    trunc.w.s	$f2,$f30
    mfc1	$at,$f2
    nop
    sw	$at,12($sp)
.L0db98820:
    # Line 700
    lwc1	$f4,36($a0)
    # Line 703
    move	$a3,$zero
    # Line 714
    li	$a0,1
    # Line 703
    mul.s	$f24,$f5,$f4
    # Line 705
    li	$s0,-1
    ld	$s4,272($sp)
    # Line 718
    li	$a1,14
    # Line 703
    ldc1	$f0,160($sp)
    # Line 722
    li	$at,8
    # Line 703
    lw	$v0,8($s1)
    sub.s	$f24,$f24,$f0
    # Line 728
    li	$v1,3
    ldc1	$f5,_lit8_4000000000000000
    # Line 703
    bne	$v0,$a2,.L0db97f10
    cvt.d.s	$f20,$f24
    # Line 705
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f24
    c.lt.s	$f5,$f26
    addiu	$s0,$s0,1
    bc1f	.L0db98c24
    sd	$a3,288($sp)
    ld	$v1,232($sp)
    # Line 707
    mtc1	$v1,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,432($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$at
    b	.L0db98c48
    sw	$a1,4($s4)
.L0db988bc:
    # Line 800
    bnezl	$a7,.L0db981b0
    # Line 801
    lwc1	$f3,0($a3)
    # Line 805
    ld	$at,248($sp)
    lw	$a1,0($s4)
    lw	$v1,0($t0)
    sllv	$a1,$a1,$at
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,264($sp)
    lwc1	$f0,0($a3)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 807
    lwc1	$f3,8($v0)
    # Line 806
    lwc1	$f2,4($v0)
    # Line 807
    mul.s	$f3,$f3,$f0
    # Line 805
    lwc1	$f1,0($v0)
    # Line 806
    mul.s	$f2,$f2,$f0
    # Line 805
    mul.s	$f1,$f1,$f0
    # Line 807
    add.s	$f24,$f3,$f24
    # Line 806
    add.s	$f20,$f2,$f20
    b	.L0db981d4
    # Line 805
    add.s	$f22,$f1,$f22
.L0db98918:
    # Line 800
    bnezl	$a7,.L0db981e8
    # Line 801
    lwc1	$f2,4($a3)
    # Line 805
    ld	$at,248($sp)
    lw	$a1,0($s4)
    lw	$v1,4($t0)
    sllv	$a1,$a1,$at
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,264($sp)
    lwc1	$f3,4($a3)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 807
    lwc1	$f2,8($v0)
    # Line 806
    lwc1	$f1,4($v0)
    # Line 807
    mul.s	$f2,$f2,$f3
    # Line 805
    lwc1	$f0,0($v0)
    # Line 806
    mul.s	$f1,$f1,$f3
    # Line 805
    mul.s	$f0,$f0,$f3
    # Line 807
    add.s	$f24,$f2,$f24
    # Line 806
    add.s	$f20,$f1,$f20
    b	.L0db9820c
    # Line 805
    add.s	$f22,$f0,$f22
.L0db98974:
    # Line 800
    bnezl	$a7,.L0db98220
    # Line 801
    lwc1	$f1,8($a3)
    # Line 805
    ld	$at,248($sp)
    lw	$a1,0($s4)
    lw	$v1,8($t0)
    sllv	$a1,$a1,$at
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,264($sp)
    lwc1	$f2,8($a3)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 807
    lwc1	$f1,8($v0)
    # Line 806
    lwc1	$f0,4($v0)
    # Line 807
    mul.s	$f1,$f1,$f2
    # Line 805
    lwc1	$f3,0($v0)
    # Line 806
    mul.s	$f0,$f0,$f2
    # Line 805
    mul.s	$f3,$f3,$f2
    # Line 807
    add.s	$f24,$f1,$f24
    # Line 806
    add.s	$f20,$f0,$f20
    b	.L0db98244
    # Line 805
    add.s	$f22,$f3,$f22
.L0db989d0:
    # Line 800
    bnezl	$a7,.L0db9825c
    # Line 801
    lwc1	$f0,12($a3)
    # Line 805
    ld	$at,248($sp)
    lw	$a1,0($s4)
    lw	$v1,12($t0)
    sllv	$a1,$a1,$at
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,264($sp)
    lwc1	$f1,12($a3)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 807
    lwc1	$f0,8($v0)
    # Line 806
    lwc1	$f3,4($v0)
    # Line 807
    mul.s	$f0,$f0,$f1
    # Line 805
    lwc1	$f2,0($v0)
    # Line 806
    mul.s	$f3,$f3,$f1
    # Line 805
    mul.s	$f2,$f2,$f1
    # Line 807
    add.s	$f24,$f0,$f24
    # Line 806
    add.s	$f20,$f3,$f20
    b	.L0db98280
    # Line 805
    add.s	$f22,$f2,$f22
.L0db98a2c:
    # Line 1189
    li	$a0,1
    b	.L0db982b4
    ld	$v1,448($sp)
.L0db98a38:
    nop
    # Line 848
    bc1fl	.L0db98550
    sdc1	$f5,496($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    b	.L0db9854c
    # Line 849
    mov.s	$f28,$f30
.L0db98a5c:
    nop
    # Line 862
    bc1f	.L0db985c0
    # Line 864
    ldc1	$f6,160($sp)
    b	.L0db985bc
    # Line 863
    mov.s	$f30,$f4
.L0db98a70:
    # Line 664
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f9
    trunc.w.d	$f1,$f0
    mfc1	$v0,$f1
    ld	$v1,344($sp)
    and	$v0,$v0,$s4
    sw	$v0,4($v1)
.L0db98a90:
    # Line 660
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f9,$f4,$f20
    c.lt.s	$f9,$f26
    nop
    bc1f	.L0db98aec
    addiu	$s0,$s0,1
    ld	$v1,336($sp)
    # Line 662
    mtc1	$v1,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    ld	$at,344($sp)
    and	$a1,$a1,$s4
    b	.L0db98b0c
    sw	$a1,8($at)
.L0db98aec:
    # Line 664
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f9
    trunc.w.d	$f1,$f0
    mfc1	$at,$f1
    ld	$v0,344($sp)
    and	$at,$at,$s4
    sw	$at,8($v0)
.L0db98b0c:
    # Line 660
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f9,$f4,$f20
    c.lt.s	$f9,$f26
    nop
    bc1f	.L0db98b68
    addiu	$s0,$s0,1
    ld	$v0,336($sp)
    # Line 662
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    ld	$a1,344($sp)
    and	$v1,$v1,$s4
    b	.L0db98b88
    sw	$v1,12($a1)
.L0db98b68:
    # Line 664
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f9
    trunc.w.d	$f1,$f0
    mfc1	$a1,$f1
    ld	$at,344($sp)
    and	$a1,$a1,$s4
    sw	$a1,12($at)
.L0db98b88:
    # Line 660
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f9,$f4,$f20
    c.lt.s	$f9,$f26
    nop
    bc1f	.L0db98bec
    ld	$a2,336($sp)
    # Line 662
    mtc1	$a2,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    li	$a2,10497
    ldc1	$f5,144($sp)
    mfc1	$at,$f0
    ld	$a0,352($sp)
    ld	$v0,344($sp)
    and	$at,$at,$s4
    b	.L0db98c18
    sw	$at,16($v0)
.L0db98bec:
    # Line 664
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f9
    trunc.w.d	$f1,$f0
    li	$a2,10497
    ldc1	$f5,144($sp)
    mfc1	$v0,$f1
    ld	$v1,344($sp)
    ld	$a0,352($sp)
    and	$v0,$v0,$s4
    sw	$v0,16($v1)
.L0db98c18:
    # Line 667
    li	$v1,1
    b	.L0db98820
    sd	$v1,256($sp)
.L0db98c24:
    # Line 709
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f2,$f0
    ld	$at,432($sp)
    mfc1	$a1,$f2
    nop
    and	$a1,$a1,$at
    sw	$a1,4($s4)
.L0db98c48:
    # Line 705
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f24
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db98ca8
    addiu	$s0,$s0,1
    ld	$v0,232($sp)
    # Line 707
    mtc1	$v0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$a1,432($sp)
    mfc1	$v1,$f0
    nop
    and	$v1,$v1,$a1
    b	.L0db98ccc
    sw	$v1,8($s4)
.L0db98ca8:
    # Line 709
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f1,$f0
    ld	$v0,432($sp)
    mfc1	$at,$f1
    nop
    and	$at,$at,$v0
    sw	$at,8($s4)
.L0db98ccc:
    # Line 705
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f24
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db98d2c
    addiu	$s0,$s0,1
    ld	$v1,232($sp)
    # Line 707
    mtc1	$v1,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,432($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$at
    b	.L0db98d50
    sw	$a1,12($s4)
.L0db98d2c:
    # Line 709
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f1,$f0
    ld	$v1,432($sp)
    mfc1	$v0,$f1
    nop
    and	$v0,$v0,$v1
    sw	$v0,12($s4)
.L0db98d50:
    # Line 705
    mtc1	$s0,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f24
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db98dac
    ld	$a0,232($sp)
    # Line 707
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f4
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,432($sp)
    mfc1	$a1,$f0
    ld	$a0,256($sp)
    and	$a1,$a1,$at
    b	.L0db98dd0
    sw	$a1,16($s4)
.L0db98dac:
    # Line 709
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f1,$f0
    ld	$v1,432($sp)
    mfc1	$v0,$f1
    ld	$a0,256($sp)
    and	$v0,$v0,$v1
    sw	$v0,16($s4)
.L0db98dd0:
    # Line 712
    addiu	$a0,$a0,1
    b	.L0db97ff4
    sd	$a0,256($sp)
.L0db98ddc:
    # Line 671
    add.d	$f10,$f22,$f10
    dmtc1	$zero,$f2
    c.lt.d	$f10,$f2
    nop
    bc1fl	.L0db99510
    # Line 673
    c.lt.s	$f20,$f26
    sd	$a0,256($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    b	.L0db98760
    li	$s2,14
.L0db98e10:
    ldc1	$f7,_lit8_3ff0000000000000
    # Line 716
    add.d	$f7,$f20,$f7
    dmtc1	$zero,$f0
    c.lt.d	$f7,$f0
    nop
    bc1fl	.L0db99538
    # Line 718
    c.lt.s	$f24,$f26
    sdc1	$f4,168($sp)
    b	.L0db97f50
    sd	$a1,288($sp)
.L0db98e38:
    # Line 1202
    sub.s	$f1,$f1,$f22
    lwc1	$f0,0($s7)
    # Line 1200
    lw	$at,2376($s5)
    # Line 1202
    mul.s	$f0,$f0,$f1
    lwc1	$f1,4($at)
    mul.s	$f1,$f1,$f22
    add.s	$f0,$f0,$f1
    swc1	$f0,0($s7)
    # Line 1203
    lwc1	$f3,3284($s5)
    sub.s	$f3,$f3,$f20
    lwc1	$f2,4($s7)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($at)
    mul.s	$f3,$f3,$f20
    add.s	$f2,$f2,$f3
    swc1	$f2,4($s7)
    # Line 1204
    lwc1	$f1,3284($s5)
    sub.s	$f1,$f1,$f24
    lwc1	$f0,8($s7)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($at)
    mul.s	$f1,$f1,$f24
    add.s	$f0,$f0,$f1
    b	.L0db982e4
    swc1	$f0,8($s7)
.L0db98e9c:
    # Line 1176
    ld	$v0,464($sp)
    li	$v1,8448
    bne	$v0,$v1,.L0db98298
    li	$v0,7681
.L0db98eac:
    # Line 1186
    lwc1	$f3,4($s7)
    # Line 1187
    lwc1	$f0,8($s7)
    # Line 1186
    mul.s	$f3,$f3,$f20
    # Line 1185
    lwc1	$f2,0($s7)
    # Line 1187
    mul.s	$f0,$f0,$f24
    # Line 1185
    mul.s	$f2,$f2,$f22
    # Line 1187
    swc1	$f0,8($s7)
    # Line 1186
    swc1	$f3,4($s7)
    # Line 1187
    b	.L0db982e4
    # Line 1185
    swc1	$f2,0($s7)
.L0db98ed4:
    # Line 759
    bnez	$s2,.L0db9816c
    li	$at,2
    li	$a3,3
    # Line 770
    lw	$at,0($sp)
    # Line 759
    bnez	$a0,.L0db98168
    # Line 771
    ld	$v0,248($sp)
    # Line 769
    mov.s	$f22,$f26
    mov.s	$f24,$f26
    mov.s	$f20,$f26
    # Line 771
    addiu	$a2,$sp,48
    move	$s0,$zero
    # Line 770
    lw	$a1,16($sp)
    # Line 771
    sllv	$a3,$a3,$v0
    sll	$a3,$a3,0x2
    # Line 770
    sllv	$a1,$a1,$v0
    addu	$a1,$a1,$at
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    ld	$a1,264($sp)
    sll	$a0,$a0,0x2
    b	.L0db99d64
    addu	$a0,$a0,$a1
.L0db98f2c:
    # Line 934
    sll	$s4,$a0,0x2
    subu	$s4,$s4,$a0
    sll	$s4,$s4,0x3
    addu	$s4,$s4,$a0
    sll	$s4,$s4,0x2
    addu	$s4,$a6,$s4
    sd	$s4,360($sp)
    # Line 935
    lw	$at,44($s4)
    sd	$s4,352($sp)
    # Line 936
    lw	$v0,0($s4)
    sd	$at,248($sp)
    # Line 940
    lwc1	$f30,32($s4)
    # Line 938
    lw	$at,24($s4)
    # Line 937
    lw	$s4,20($s4)
    # Line 941
    mul.s	$f10,$f4,$f30
    sd	$zero,256($sp)
    sd	$v0,264($sp)
    # Line 937
    addiu	$s4,$s4,-1
    # Line 938
    addiu	$at,$at,-1
    sd	$at,432($sp)
    # Line 941
    beq	$a4,$s0,.L0db99dd0
    mov.s	$f28,$f10
    # Line 946
    c.lt.s	$f10,$f26
    nop
    bc1fl	.L0db996ac
    # Line 948
    c.lt.s	$f30,$f10
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    sdc1	$f4,128($sp)
    sdc1	$f9,136($sp)
    mov.s	$f28,$f26
.L0db98fb0:
    sdc1	$f5,496($sp)
.L0db98fb4:
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    # Line 950
    ldc1	$f1,160($sp)
    sdc1	$f8,472($sp)
    # Line 951
    # lw $t9, -17792($gp) # &floorf
    # Line 950
    sub.s	$f28,$f28,$f1
    sdc1	$f4,128($sp)
    sdc1	$f9,136($sp)
    # Line 951
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f2,$f0
    mfc1	$at,$f2
    nop
    sd	$at,312($sp)
    # Line 952
    addiu	$at,$at,1
    sd	$at,304($sp)
.L0db98ff4:
    ld	$a1,352($sp)
    # Line 956
    ldc1	$f5,144($sp)
    # Line 955
    lwc1	$f30,36($a1)
    # Line 956
    mul.s	$f5,$f5,$f30
    ld	$v1,296($sp)
    li	$v0,10497
    sdc1	$f30,168($sp)
    beq	$v0,$v1,.L0db99e24
    mov.s	$f30,$f5
    # Line 961
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db996d8
    ldc1	$f3,168($sp)
    # Line 963
    mov.s	$f30,$f26
.L0db9902c:
    # Line 965
    ldc1	$f31,160($sp)
.L0db99030:
    # Line 966
    # lw $t9, -17792($gp) # &floorf
    # Line 965
    sub.s	$f30,$f30,$f31
    # Line 966
    jal	floorf
    mov.s	$f12,$f30
    trunc.w.s	$f0,$f0
    mfc1	$s2,$f0
    nop
    # Line 967
    addiu	$at,$s2,1
    sd	$at,440($sp)
.L0db99054:
    # Line 970
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f28
    # Line 971
    # lw $t9, -17792($gp) # &floorf
    mov.s	$f12,$f30
    jal	floorf
    # Line 970
    sub.s	$f20,$f28,$f0
    ld	$a0,360($sp)
    # Line 1002
    ld	$a2,440($sp)
    ldc1	$f8,152($sp)
    li	$v1,2
    # Line 1004
    nor	$t0,$s4,$zero
    # Line 972
    sub.s	$f5,$f8,$f20
    # Line 973
    mul.s	$f6,$f22,$f20
    ld	$v0,256($sp)
    sub.s	$f7,$f30,$f0
    ld	$t2,304($sp)
    mul.s	$f5,$f22,$f5
    # Line 1004
    ld	$t1,312($sp)
    # Line 973
    sub.s	$f0,$f8,$f7
    mul.s	$f8,$f6,$f7
    # Line 1004
    and	$t1,$t0,$t1
    ld	$a6,432($sp)
    # Line 973
    mul.s	$f6,$f6,$f0
    # Line 1019
    and	$t2,$t0,$t2
    # Line 1004
    nor	$a6,$a6,$zero
    # Line 973
    mul.s	$f7,$f5,$f7
    # Line 1004
    and	$a7,$a6,$s2
    # Line 973
    beq	$v0,$v1,.L0db997d4
    mul.s	$f5,$f5,$f0
    # Line 1004
    or	$a1,$t1,$a7
    beqz	$a1,.L0db999f8
    # Line 1017
    ld	$v0,312($sp)
    # Line 1013
    lwc1	$f24,164($s1)
    # Line 1012
    lwc1	$f20,160($s1)
    # Line 1013
    mul.s	$f24,$f24,$f5
    # Line 1011
    lwc1	$f22,156($s1)
    # Line 1012
    mul.s	$f20,$f20,$f5
    # Line 1011
    mul.s	$f22,$f22,$f5
.L0db990f0:
    # Line 1019
    or	$at,$t2,$a7
    beqz	$at,.L0db99a38
    ld	$a7,440($sp)
    # Line 1024
    lwc1	$f2,164($s1)
    # Line 1023
    lwc1	$f1,160($s1)
    # Line 1024
    mul.s	$f2,$f2,$f6
    # Line 1022
    lwc1	$f0,156($s1)
    # Line 1023
    mul.s	$f1,$f1,$f6
    # Line 1022
    mul.s	$f0,$f0,$f6
    # Line 1024
    add.s	$f24,$f2,$f24
    # Line 1023
    add.s	$f20,$f1,$f20
    # Line 1022
    add.s	$f22,$f0,$f22
.L0db99120:
    # Line 1030
    and	$a7,$a6,$a7
    or	$at,$t1,$a7
    beqz	$at,.L0db99a88
    ld	$v0,248($sp)
    # Line 1035
    lwc1	$f1,164($s1)
    # Line 1034
    lwc1	$f0,160($s1)
    # Line 1035
    mul.s	$f1,$f1,$f7
    # Line 1033
    lwc1	$f3,156($s1)
    # Line 1034
    mul.s	$f0,$f0,$f7
    # Line 1033
    mul.s	$f3,$f3,$f7
    # Line 1035
    add.s	$f24,$f1,$f24
    # Line 1034
    add.s	$f20,$f0,$f20
    # Line 1033
    add.s	$f22,$f3,$f22
.L0db99154:
    # Line 1041
    or	$at,$t2,$a7
    beqz	$at,.L0db99ad8
    # Line 1050
    ld	$a1,440($sp)
    # Line 1046
    lwc1	$f0,164($s1)
    # Line 1045
    lwc1	$f3,160($s1)
    # Line 1046
    mul.s	$f0,$f0,$f8
    # Line 1044
    lwc1	$f2,156($s1)
    # Line 1045
    mul.s	$f3,$f3,$f8
    # Line 1044
    mul.s	$f2,$f2,$f8
    # Line 1046
    add.s	$f24,$f0,$f24
    # Line 1045
    add.s	$f20,$f3,$f20
    # Line 1044
    add.s	$f22,$f2,$f22
.L0db99184:
    sd	$zero,256($sp)
    # Line 1058
    addiu	$s4,$a0,100
    # Line 1059
    lw	$at,44($s4)
    sd	$s4,352($sp)
    # Line 1060
    lw	$v1,0($s4)
    sd	$at,248($sp)
    # Line 1065
    ldc1	$f10,128($sp)
    # Line 1064
    lwc1	$f30,32($s4)
    # Line 1062
    lw	$at,24($s4)
    # Line 1061
    lw	$s4,20($s4)
    # Line 1065
    mul.s	$f10,$f10,$f30
    li	$v0,10497
    sd	$v1,264($sp)
    # Line 1061
    addiu	$s4,$s4,-1
    # Line 1062
    addiu	$at,$at,-1
    sd	$at,432($sp)
    # Line 1065
    beq	$v0,$s0,.L0db99e64
    mov.s	$f28,$f10
    # Line 1070
    c.lt.s	$f10,$f26
    nop
    bc1fl	.L0db996f0
    # Line 1072
    c.lt.s	$f30,$f10
    mov.s	$f28,$f26
.L0db991e0:
    # Line 1074
    ldc1	$f11,160($sp)
.L0db991e4:
    # Line 1075
    # lw $t9, -17792($gp) # &floorf
    # Line 1074
    sub.s	$f28,$f28,$f11
    # Line 1075
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    sd	$a1,312($sp)
    # Line 1076
    addiu	$a1,$a1,1
    sd	$a1,304($sp)
.L0db9920c:
    ld	$v1,352($sp)
    # Line 1080
    ldc1	$f5,144($sp)
    # Line 1079
    lwc1	$f30,36($v1)
    # Line 1080
    mul.s	$f5,$f5,$f30
    ld	$v0,296($sp)
    li	$at,10497
    sdc1	$f30,168($sp)
    beq	$at,$v0,.L0db99ea0
    mov.s	$f30,$f5
    # Line 1085
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db99704
    ldc1	$f0,168($sp)
    # Line 1087
    mov.s	$f30,$f26
.L0db99244:
    # Line 1089
    ldc1	$f31,160($sp)
.L0db99248:
    # Line 1090
    # lw $t9, -17792($gp) # &floorf
    # Line 1089
    sub.s	$f30,$f30,$f31
    # Line 1090
    jal	floorf
    mov.s	$f12,$f30
    trunc.w.s	$f0,$f0
    mfc1	$s2,$f0
    nop
    # Line 1091
    addiu	$a1,$s2,1
    sd	$a1,440($sp)
.L0db9926c:
    # Line 1094
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f28
    # Line 1095
    # lw $t9, -17792($gp) # &floorf
    # Line 1094
    sub.s	$f1,$f28,$f0
    # Line 1095
    mov.s	$f12,$f30
    jal	floorf
    sdc1	$f1,224($sp)
    li	$a4,10497
    li	$a5,-1
    # Line 1096
    ldc1	$f10,224($sp)
    ldc1	$f1,152($sp)
    # Line 1097
    ldc1	$f12,136($sp)
    ldc1	$f8,472($sp)
    # Line 1096
    sub.s	$f2,$f1,$f10
    # Line 1097
    mul.s	$f10,$f12,$f10
    ldc1	$f7,480($sp)
    sub.s	$f11,$f30,$f0
    ldc1	$f6,488($sp)
    mul.s	$f12,$f12,$f2
    ldc1	$f5,496($sp)
    sub.s	$f0,$f1,$f11
    mul.s	$f9,$f11,$f10
    ld	$t2,304($sp)
    # Line 1128
    ld	$a6,432($sp)
    # Line 1097
    mul.s	$f10,$f10,$f0
    # Line 1120
    ld	$a0,440($sp)
    # Line 1097
    ld	$at,256($sp)
    mul.s	$f11,$f11,$f12
    li	$v0,2
    beq	$at,$v0,.L0db998e0
    mul.s	$f12,$f12,$f0
    # Line 1128
    nor	$t0,$s4,$zero
    # Line 1143
    and	$t2,$t0,$t2
    # Line 1128
    ld	$t1,312($sp)
    nor	$a6,$a6,$zero
    and	$a7,$a6,$s2
    and	$t1,$t0,$t1
    or	$v1,$t1,$a7
    beqz	$v1,.L0db99b28
    # Line 1143
    or	$at,$t2,$a7
    # Line 1137
    lwc1	$f2,164($s1)
    # Line 1136
    lwc1	$f1,160($s1)
    # Line 1137
    mul.s	$f2,$f2,$f12
    # Line 1135
    lwc1	$f0,156($s1)
    # Line 1136
    mul.s	$f1,$f1,$f12
    # Line 1135
    mul.s	$f0,$f0,$f12
    # Line 1137
    add.s	$f24,$f2,$f24
    # Line 1136
    add.s	$f20,$f1,$f20
    # Line 1135
    add.s	$f22,$f0,$f22
.L0db99334:
    ld	$a7,440($sp)
    # Line 1143
    beqz	$at,.L0db99b78
    # Line 1152
    ld	$v0,304($sp)
    # Line 1148
    lwc1	$f1,164($s1)
    # Line 1147
    lwc1	$f0,160($s1)
    # Line 1148
    mul.s	$f1,$f1,$f10
    # Line 1146
    lwc1	$f3,156($s1)
    # Line 1147
    mul.s	$f0,$f0,$f10
    # Line 1146
    mul.s	$f3,$f3,$f10
    # Line 1148
    add.s	$f24,$f1,$f24
    # Line 1147
    add.s	$f20,$f0,$f20
    # Line 1146
    add.s	$f22,$f3,$f22
.L0db99364:
    # Line 1154
    and	$a7,$a6,$a7
    or	$at,$t1,$a7
    beqz	$at,.L0db99bc4
    # Line 1163
    ld	$v1,440($sp)
    # Line 1159
    lwc1	$f0,164($s1)
    # Line 1158
    lwc1	$f3,160($s1)
    # Line 1159
    mul.s	$f0,$f0,$f11
    # Line 1157
    lwc1	$f2,156($s1)
    # Line 1158
    mul.s	$f3,$f3,$f11
    # Line 1157
    mul.s	$f2,$f2,$f11
    # Line 1159
    add.s	$f24,$f0,$f24
    # Line 1158
    add.s	$f20,$f3,$f20
    # Line 1157
    add.s	$f22,$f2,$f22
.L0db99398:
    # Line 1165
    or	$at,$t2,$a7
    beqz	$at,.L0db99c14
    # Line 1174
    ld	$v0,440($sp)
    # Line 1170
    lwc1	$f3,164($s1)
    # Line 1169
    lwc1	$f2,160($s1)
    # Line 1170
    mul.s	$f3,$f3,$f9
    # Line 1168
    lwc1	$f1,156($s1)
    # Line 1169
    mul.s	$f2,$f2,$f9
    # Line 1168
    mul.s	$f1,$f1,$f9
    # Line 1170
    add.s	$f24,$f3,$f24
    # Line 1169
    add.s	$f20,$f2,$f20
    # Line 1170
    b	.L0db98288
    # Line 1168
    add.s	$f22,$f1,$f22
.L0db993cc:
    # Line 783
    mov.s	$f24,$f26
    mov.s	$f20,$f26
    # Line 784
    move	$s0,$zero
    addiu	$t0,$sp,0
.L0db993dc:
    sll	$a3,$s0,0x2
    ld	$a1,248($sp)
    lw	$a0,0($s4)
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s6
    sllv	$a0,$a0,$a1
    # Line 787
    lw	$a1,0($t0)
    lw	$v0,12($t0)
    lw	$v1,8($t0)
    addu	$a1,$a1,$a0
    addu	$v0,$v0,$a0
    addu	$v1,$v1,$a0
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    lw	$v1,4($t0)
    sll	$a2,$v0,0x2
    subu	$a2,$a2,$v0
    addu	$v1,$v1,$a0
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$a1,264($sp)
    lwc1	$f3,12($a3)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a1
    # Line 788
    lwc1	$f1,4($a2)
    # Line 789
    lwc1	$f14,8($a2)
    # Line 788
    mul.s	$f1,$f1,$f3
    # Line 787
    lwc1	$f10,8($a3)
    # Line 789
    mul.s	$f14,$f14,$f3
    # Line 787
    sll	$at,$at,0x2
    addu	$at,$at,$a1
    # Line 788
    lwc1	$f4,4($at)
    mul.s	$f4,$f4,$f10
    # Line 787
    lwc1	$f11,0($a3)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    # Line 788
    lwc1	$f13,4($v1)
    mul.s	$f13,$f13,$f11
    # Line 789
    lwc1	$f2,8($v1)
    # Line 787
    lwc1	$f12,4($a3)
    sll	$v0,$v0,0x2
    # Line 789
    mul.s	$f2,$f2,$f11
    # Line 787
    addu	$v0,$v0,$a1
    # Line 789
    lwc1	$f0,8($v0)
    lwc1	$f9,8($at)
    mul.s	$f0,$f0,$f12
    add.s	$f2,$f2,$f24
    mul.s	$f24,$f9,$f10
    # Line 787
    lwc1	$f9,0($v1)
    mul.s	$f9,$f9,$f11
    # Line 789
    add.s	$f0,$f0,$f2
    # Line 788
    lwc1	$f11,4($v0)
    # Line 789
    add.s	$f24,$f24,$f0
    # Line 788
    mul.s	$f11,$f11,$f12
    add.s	$f20,$f13,$f20
    # Line 787
    lwc1	$f2,0($v0)
    # Line 789
    add.s	$f24,$f14,$f24
    # Line 787
    mul.s	$f2,$f2,$f12
    add.s	$f9,$f9,$f22
    lwc1	$f0,0($at)
    # Line 788
    add.s	$f20,$f11,$f20
    # Line 787
    mul.s	$f0,$f0,$f10
    add.s	$f2,$f2,$f9
    lwc1	$f22,0($a2)
    # Line 788
    add.s	$f20,$f4,$f20
    # Line 787
    mul.s	$f22,$f22,$f3
    add.s	$f0,$f0,$f2
    # Line 788
    add.s	$f20,$f1,$f20
    # Line 784
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 787
    add.s	$f22,$f22,$f0
    # Line 784
    bne	$s0,$s8,.L0db993dc
    addiu	$t0,$sp,0
    b	.L0db9828c
    # Line 1176
    ld	$at,464($sp)
.L0db99510:
    nop
    # Line 673
    bc1f	.L0db9971c
    nop
    sd	$a0,256($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    # Line 675
    b	.L0db98760
    li	$s2,12
.L0db99538:
    nop
    # Line 718
    bc1f	.L0db99740
    # Line 720
    li	$a1,12
    sdc1	$f4,168($sp)
    b	.L0db97f50
    sd	$a1,288($sp)
.L0db99550:
    # Line 889
    ld	$v1,264($sp)
    ld	$v0,248($sp)
    sllv	$v0,$s2,$v0
    addu	$v0,$v0,$a0
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 891
    lwc1	$f24,8($at)
    # Line 890
    lwc1	$f20,4($at)
    # Line 891
    mul.s	$f24,$f24,$f12
    # Line 889
    lwc1	$f22,0($at)
    # Line 890
    mul.s	$f20,$f20,$f12
    b	.L0db98678
    # Line 889
    mul.s	$f22,$f22,$f12
.L0db99590:
    ld	$a1,248($sp)
    # Line 900
    ld	$at,264($sp)
    sllv	$a1,$s2,$a1
    addu	$a1,$a1,$a2
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 902
    lwc1	$f2,8($v1)
    # Line 901
    lwc1	$f1,4($v1)
    # Line 902
    mul.s	$f2,$f2,$f4
    # Line 900
    lwc1	$f0,0($v1)
    # Line 901
    mul.s	$f1,$f1,$f4
    # Line 900
    mul.s	$f0,$f0,$f4
    # Line 902
    add.s	$f24,$f2,$f24
    # Line 901
    add.s	$f20,$f1,$f20
    b	.L0db986b0
    # Line 900
    add.s	$f22,$f0,$f22
.L0db995dc:
    # Line 911
    ld	$v1,264($sp)
    ld	$v0,248($sp)
    sllv	$v0,$a3,$v0
    addu	$v0,$v0,$a0
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 913
    lwc1	$f1,8($at)
    # Line 912
    lwc1	$f0,4($at)
    # Line 913
    mul.s	$f1,$f1,$f4
    # Line 911
    lwc1	$f3,0($at)
    # Line 912
    mul.s	$f0,$f0,$f4
    # Line 911
    mul.s	$f3,$f3,$f4
    # Line 913
    add.s	$f24,$f1,$f24
    # Line 912
    add.s	$f20,$f0,$f20
    b	.L0db986dc
    # Line 911
    add.s	$f22,$f3,$f22
.L0db99628:
    # Line 922
    ld	$at,264($sp)
    ld	$a1,248($sp)
    sllv	$a1,$a3,$a1
    addu	$a1,$a1,$a2
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 924
    lwc1	$f0,8($v1)
    # Line 923
    lwc1	$f3,4($v1)
    # Line 924
    mul.s	$f0,$f0,$f4
    # Line 922
    lwc1	$f2,0($v1)
    # Line 923
    mul.s	$f3,$f3,$f4
    # Line 922
    mul.s	$f2,$f2,$f4
    # Line 924
    add.s	$f24,$f0,$f24
    # Line 923
    add.s	$f20,$f3,$f20
    b	.L0db98288
    # Line 922
    add.s	$f22,$f2,$f22
.L0db99674:
    # Line 669
    cvt.d.s	$f1,$f30
    c.lt.d	$f1,$f4
    nop
    bc1fl	.L0db98764
    sd	$a2,352($sp)
    b	.L0db98738
    dmtc1	$zero,$f0
.L0db99690:
    # Line 714
    cvt.d.s	$f2,$f30
    c.lt.d	$f2,$f5
    nop
    bc1f	.L0db97f50
    sd	$a3,288($sp)
    b	.L0db97f38
    dmtc1	$zero,$f0
.L0db996ac:
    nop
    # Line 948
    bc1fl	.L0db98fb4
    sdc1	$f5,496($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    sdc1	$f4,128($sp)
    sdc1	$f9,136($sp)
    b	.L0db98fb0
    # Line 949
    mov.s	$f28,$f30
.L0db996d8:
    # Line 963
    c.lt.s	$f3,$f5
    nop
    bc1f	.L0db99030
    # Line 965
    ldc1	$f31,160($sp)
    b	.L0db9902c
    ldc1	$f30,168($sp)
.L0db996f0:
    nop
    # Line 1072
    bc1f	.L0db991e4
    # Line 1074
    ldc1	$f11,160($sp)
    b	.L0db991e0
    # Line 1073
    mov.s	$f28,$f30
.L0db99704:
    # Line 1087
    c.lt.s	$f0,$f5
    nop
    bc1f	.L0db99248
    # Line 1089
    ldc1	$f31,160($sp)
    b	.L0db99244
    ldc1	$f30,168($sp)
.L0db9971c:
    # Line 675
    beqzl	$a3,.L0db99cb4
    # Line 677
    cvt.d.s	$f11,$f30
    sd	$a0,256($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    b	.L0db98760
    li	$s2,8
.L0db99740:
    # Line 720
    beqz	$a0,.L0db99ce0
    # Line 730
    li	$a1,1
    sdc1	$f4,168($sp)
    # Line 722
    b	.L0db97f50
    sd	$at,288($sp)
.L0db99754:
    sdc1	$f5,496($sp)
    ldc1	$f28,160($sp)
    sdc1	$f6,488($sp)
    # Line 845
    # lw $t9, -17792($gp) # &floorf
    # Line 844
    sub.s	$f28,$f10,$f28
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    # Line 845
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    and	$v0,$v0,$s4
    sd	$v0,312($sp)
    # Line 846
    addiu	$v0,$v0,1
    and	$v0,$v0,$s4
    b	.L0db98588
    sd	$v0,304($sp)
.L0db9979c:
    ldc1	$f30,160($sp)
    # Line 859
    # lw $t9, -17792($gp) # &floorf
    # Line 858
    sub.s	$f30,$f5,$f30
    # Line 859
    jal	floorf
    mov.s	$f12,$f30
    trunc.w.s	$f0,$f0
    ld	$a1,432($sp)
    mfc1	$s2,$f0
    nop
    and	$s2,$s2,$a1
    # Line 860
    addiu	$v1,$s2,1
    and	$v1,$v1,$a1
    b	.L0db985e4
    sd	$v1,440($sp)
.L0db997d4:
    # Line 1002
    ld	$at,304($sp)
    ld	$a1,248($sp)
    sd	$a0,504($sp)
    ld	$v0,264($sp)
    sllv	$a2,$a2,$a1
    addu	$v1,$a2,$at
    sll	$a0,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$v0
    addu	$v1,$v1,$a0
    # Line 1003
    lwc1	$f1,4($v1)
    # Line 1002
    ld	$a0,312($sp)
    # Line 1003
    mul.s	$f1,$f1,$f8
    # Line 1002
    addu	$a2,$a2,$a0
    sll	$a0,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$v0
    addu	$a0,$a0,$a2
    # Line 1003
    lwc1	$f3,4($a0)
    mul.s	$f3,$f3,$f7
    # Line 1004
    lwc1	$f2,8($v1)
    mul.s	$f2,$f2,$f8
    # Line 1002
    sllv	$a1,$s2,$a1
    addu	$at,$a1,$at
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a2,$a2,$at
    # Line 1003
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f6
    # Line 1004
    lwc1	$f0,8($a2)
    # Line 1002
    ld	$at,312($sp)
    # Line 1004
    mul.s	$f0,$f0,$f6
    # Line 1002
    addu	$a1,$a1,$at
    sll	$at,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 1004
    lwc1	$f24,8($a1)
    lwc1	$f9,8($a0)
    mul.s	$f24,$f24,$f5
    mul.s	$f9,$f9,$f7
    # Line 1003
    lwc1	$f20,4($a1)
    mul.s	$f20,$f20,$f5
    # Line 1002
    lwc1	$f22,0($a1)
    # Line 1004
    add.s	$f24,$f24,$f0
    # Line 1002
    mul.s	$f22,$f22,$f5
    lwc1	$f0,0($a2)
    # Line 1004
    add.s	$f24,$f24,$f9
    # Line 1002
    mul.s	$f0,$f0,$f6
    # Line 1004
    add.s	$f24,$f24,$f2
    # Line 1002
    lwc1	$f2,0($a0)
    # Line 1003
    add.s	$f20,$f20,$f4
    # Line 1002
    mul.s	$f2,$f2,$f7
    add.s	$f22,$f22,$f0
    lwc1	$f0,0($v1)
    # Line 1003
    add.s	$f20,$f20,$f3
    # Line 1002
    mul.s	$f0,$f0,$f8
    add.s	$f22,$f22,$f2
    # Line 1003
    add.s	$f20,$f20,$f1
    ld	$a0,504($sp)
    # Line 1004
    b	.L0db99184
    # Line 1002
    add.s	$f22,$f22,$f0
.L0db998e0:
    sd	$a2,512($sp)
    ld	$a1,248($sp)
    # Line 1120
    ld	$a2,312($sp)
    # Line 1126
    ld	$at,264($sp)
    # Line 1120
    sllv	$a0,$a0,$a1
    addu	$a2,$a0,$a2
    sll	$v1,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$v1,$v1,$a2
    # Line 1121
    lwc1	$f3,4($v1)
    # Line 1126
    ld	$a2,304($sp)
    # Line 1121
    mul.s	$f3,$f3,$f11
    # Line 1126
    addu	$a0,$a0,$a2
    sll	$v0,$a0,0x2
    sll	$a0,$a0,0x1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$at
    addu	$v0,$v0,$a0
    # Line 1127
    lwc1	$f1,4($v0)
    mul.s	$f1,$f1,$f9
    # Line 1108
    sllv	$a1,$s2,$a1
    # Line 1114
    addu	$a2,$a1,$a2
    sll	$a0,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a0,$a0,$a2
    # Line 1115
    lwc1	$f13,4($a0)
    # Line 1108
    ld	$a2,312($sp)
    # Line 1115
    mul.s	$f13,$f13,$f10
    # Line 1108
    addu	$a1,$a1,$a2
    sll	$a2,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$at
    addu	$a1,$a1,$a2
    # Line 1110
    lwc1	$f14,8($a1)
    # Line 1116
    lwc1	$f4,8($a0)
    # Line 1110
    mul.s	$f14,$f14,$f12
    # Line 1122
    lwc1	$f0,8($v1)
    # Line 1116
    mul.s	$f4,$f4,$f10
    # Line 1122
    mul.s	$f0,$f0,$f11
    # Line 1109
    lwc1	$f2,4($a1)
    # Line 1110
    add.s	$f14,$f14,$f24
    # Line 1109
    mul.s	$f2,$f2,$f12
    # Line 1128
    lwc1	$f24,8($v0)
    # Line 1116
    add.s	$f4,$f4,$f14
    # Line 1128
    mul.s	$f24,$f24,$f9
    # Line 1122
    add.s	$f0,$f0,$f4
    # Line 1108
    lwc1	$f4,0($a1)
    mul.s	$f4,$f4,$f12
    # Line 1109
    add.s	$f20,$f2,$f20
    # Line 1114
    lwc1	$f2,0($a0)
    # Line 1128
    add.s	$f24,$f24,$f0
    # Line 1114
    mul.s	$f2,$f2,$f10
    # Line 1108
    add.s	$f4,$f4,$f22
    # Line 1120
    lwc1	$f0,0($v1)
    # Line 1115
    add.s	$f20,$f13,$f20
    # Line 1120
    mul.s	$f0,$f0,$f11
    # Line 1114
    add.s	$f2,$f2,$f4
    # Line 1126
    lwc1	$f22,0($v0)
    # Line 1121
    add.s	$f20,$f3,$f20
    # Line 1126
    mul.s	$f22,$f22,$f9
    # Line 1120
    add.s	$f0,$f0,$f2
    # Line 1127
    add.s	$f20,$f1,$f20
    ld	$a2,512($sp)
    # Line 1128
    b	.L0db98288
    # Line 1126
    add.s	$f22,$f22,$f0
.L0db999f8:
    ld	$at,248($sp)
    # Line 1017
    sllv	$at,$s2,$at
    addu	$at,$at,$v0
    ld	$v0,264($sp)
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 1019
    lwc1	$f24,8($a1)
    # Line 1018
    lwc1	$f20,4($a1)
    # Line 1019
    mul.s	$f24,$f24,$f5
    # Line 1017
    lwc1	$f22,0($a1)
    # Line 1018
    mul.s	$f20,$f20,$f5
    b	.L0db990f0
    # Line 1017
    mul.s	$f22,$f22,$f5
.L0db99a38:
    # Line 1028
    ld	$a1,304($sp)
    ld	$v1,248($sp)
    sllv	$v1,$s2,$v1
    addu	$v1,$v1,$a1
    ld	$a1,264($sp)
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 1030
    lwc1	$f2,8($v0)
    # Line 1029
    lwc1	$f1,4($v0)
    # Line 1030
    mul.s	$f2,$f2,$f6
    # Line 1028
    lwc1	$f0,0($v0)
    # Line 1029
    mul.s	$f1,$f1,$f6
    # Line 1028
    mul.s	$f0,$f0,$f6
    # Line 1030
    add.s	$f24,$f2,$f24
    # Line 1029
    add.s	$f20,$f1,$f20
    b	.L0db99120
    # Line 1028
    add.s	$f22,$f0,$f22
.L0db99a88:
    # Line 1039
    ld	$at,440($sp)
    sllv	$at,$at,$v0
    ld	$v0,312($sp)
    addu	$at,$at,$v0
    ld	$v0,264($sp)
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 1041
    lwc1	$f1,8($a1)
    # Line 1040
    lwc1	$f0,4($a1)
    # Line 1041
    mul.s	$f1,$f1,$f7
    # Line 1039
    lwc1	$f3,0($a1)
    # Line 1040
    mul.s	$f0,$f0,$f7
    # Line 1039
    mul.s	$f3,$f3,$f7
    # Line 1041
    add.s	$f24,$f1,$f24
    # Line 1040
    add.s	$f20,$f0,$f20
    b	.L0db99154
    # Line 1039
    add.s	$f22,$f3,$f22
.L0db99ad8:
    ld	$at,248($sp)
    # Line 1050
    sllv	$a1,$a1,$at
    ld	$at,304($sp)
    addu	$a1,$a1,$at
    ld	$at,264($sp)
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 1052
    lwc1	$f0,8($v1)
    # Line 1051
    lwc1	$f3,4($v1)
    # Line 1052
    mul.s	$f0,$f0,$f8
    # Line 1050
    lwc1	$f2,0($v1)
    # Line 1051
    mul.s	$f3,$f3,$f8
    # Line 1050
    mul.s	$f2,$f2,$f8
    # Line 1052
    add.s	$f24,$f0,$f24
    # Line 1051
    add.s	$f20,$f3,$f20
    b	.L0db99184
    # Line 1050
    add.s	$f22,$f2,$f22
.L0db99b28:
    # Line 1141
    ld	$a1,312($sp)
    ld	$v1,248($sp)
    sllv	$v1,$s2,$v1
    addu	$v1,$v1,$a1
    ld	$a1,264($sp)
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 1143
    lwc1	$f3,8($v0)
    # Line 1142
    lwc1	$f2,4($v0)
    # Line 1143
    mul.s	$f3,$f3,$f12
    # Line 1141
    lwc1	$f1,0($v0)
    # Line 1142
    mul.s	$f2,$f2,$f12
    # Line 1141
    mul.s	$f1,$f1,$f12
    # Line 1143
    add.s	$f24,$f3,$f24
    # Line 1142
    add.s	$f20,$f2,$f20
    b	.L0db99334
    # Line 1141
    add.s	$f22,$f1,$f22
.L0db99b78:
    ld	$at,248($sp)
    # Line 1152
    sllv	$at,$s2,$at
    addu	$at,$at,$v0
    ld	$v0,264($sp)
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 1154
    lwc1	$f2,8($a1)
    # Line 1153
    lwc1	$f1,4($a1)
    # Line 1154
    mul.s	$f2,$f2,$f10
    # Line 1152
    lwc1	$f0,0($a1)
    # Line 1153
    mul.s	$f1,$f1,$f10
    # Line 1152
    mul.s	$f0,$f0,$f10
    # Line 1154
    add.s	$f24,$f2,$f24
    # Line 1153
    add.s	$f20,$f1,$f20
    b	.L0db99364
    # Line 1152
    add.s	$f22,$f0,$f22
.L0db99bc4:
    ld	$a1,248($sp)
    # Line 1163
    sllv	$v1,$v1,$a1
    ld	$a1,312($sp)
    addu	$v1,$v1,$a1
    ld	$a1,264($sp)
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 1165
    lwc1	$f1,8($v0)
    # Line 1164
    lwc1	$f0,4($v0)
    # Line 1165
    mul.s	$f1,$f1,$f11
    # Line 1163
    lwc1	$f3,0($v0)
    # Line 1164
    mul.s	$f0,$f0,$f11
    # Line 1163
    mul.s	$f3,$f3,$f11
    # Line 1165
    add.s	$f24,$f1,$f24
    # Line 1164
    add.s	$f20,$f0,$f20
    b	.L0db99398
    # Line 1163
    add.s	$f22,$f3,$f22
.L0db99c14:
    ld	$v1,248($sp)
    # Line 1174
    sllv	$v0,$v0,$v1
    ld	$v1,304($sp)
    addu	$v0,$v0,$v1
    ld	$v1,264($sp)
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 1176
    lwc1	$f0,8($at)
    # Line 1175
    lwc1	$f3,4($at)
    # Line 1176
    mul.s	$f0,$f0,$f9
    # Line 1174
    lwc1	$f2,0($at)
    # Line 1175
    mul.s	$f3,$f3,$f9
    # Line 1174
    mul.s	$f2,$f2,$f9
    # Line 1176
    add.s	$f24,$f0,$f24
    # Line 1175
    add.s	$f20,$f3,$f20
    b	.L0db98288
    # Line 1174
    add.s	$f22,$f2,$f22
.L0db99c64:
    # Line 1216
    move	$v0,$zero
    ld	$gp,376($sp)
    ld	$s0,320($sp)
    ld	$s1,280($sp)
    ld	$s2,416($sp)
    ld	$s3,408($sp)
    ld	$s4,368($sp)
    ld	$s5,240($sp)
    ld	$s6,400($sp)
    ld	$s7,328($sp)
    ld	$s8,392($sp)
    ldc1	$f20,216($sp)
    ldc1	$f22,200($sp)
    ldc1	$f24,192($sp)
    ldc1	$f26,208($sp)
    ld	$ra,384($sp)
    ldc1	$f28,184($sp)
    ldc1	$f30,176($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0db99cb4:
    # Line 677
    c.lt.d	$f11,$f9
    nop
    bc1fl	.L0db99ee4
    # Line 679
    c.lt.s	$f30,$f20
    sd	$a0,256($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    b	.L0db98760
    li	$s2,15
.L0db99ce0:
    # Line 722
    cvt.d.s	$f8,$f4
    c.lt.d	$f8,$f6
    nop
    bc1fl	.L0db99f0c
    # Line 724
    c.lt.s	$f4,$f24
    li	$a1,15
    sdc1	$f4,168($sp)
    b	.L0db97f50
    sd	$a1,288($sp)
.L0db99d04:
    # Line 776
    addiu	$a0,$a0,-48
.L0db99d08:
    # Line 771
    addiu	$a2,$a2,8
    # Line 774
    addiu	$a0,$a0,12
    # Line 772
    lwc1	$f0,-4($a2)
    # Line 774
    lwc1	$f3,-4($a0)
    li	$at,3
    # Line 773
    lwc1	$f2,-8($a0)
    # Line 774
    mul.s	$f3,$f3,$f0
    xor	$a1,$s0,$v0
    # Line 772
    lwc1	$f1,-12($a0)
    # Line 773
    mul.s	$f2,$f2,$f0
    # Line 774
    subu	$a1,$a1,$v0
    sra	$v0,$s0,0x1f
    # Line 772
    mul.s	$f1,$f1,$f0
    # Line 771
    addiu	$s0,$s0,1
    # Line 774
    add.s	$f24,$f3,$f24
    andi	$a1,$a1,0x3
    xor	$a1,$a1,$v0
    # Line 773
    add.s	$f20,$f2,$f20
    # Line 774
    subu	$a1,$a1,$v0
    beq	$a1,$at,.L0db99dc4
    # Line 772
    add.s	$f22,$f1,$f22
.L0db99d5c:
    li	$v1,16
    # Line 771
    beq	$s0,$v1,.L0db98e9c
.L0db99d64:
    # Line 774
    addiu	$a0,$a0,12
    li	$at,3
    sra	$v0,$s0,0x1f
    # Line 772
    lwc1	$f3,0($a2)
    # Line 774
    lwc1	$f2,-4($a0)
    xor	$a1,$s0,$v0
    # Line 773
    lwc1	$f1,-8($a0)
    # Line 774
    mul.s	$f2,$f2,$f3
    subu	$a1,$a1,$v0
    # Line 772
    lwc1	$f0,-12($a0)
    # Line 773
    mul.s	$f1,$f1,$f3
    # Line 774
    sra	$v0,$s0,0x1f
    # Line 771
    addiu	$s0,$s0,1
    # Line 772
    mul.s	$f0,$f0,$f3
    # Line 774
    andi	$a1,$a1,0x3
    add.s	$f24,$f2,$f24
    xor	$a1,$a1,$v0
    subu	$a1,$a1,$v0
    # Line 773
    add.s	$f20,$f1,$f20
    # Line 774
    sra	$v0,$s0,0x1f
    bne	$a1,$at,.L0db99d08
    # Line 772
    add.s	$f22,$f0,$f22
    b	.L0db99d04
    # Line 776
    addu	$a0,$a3,$a0
.L0db99dc4:
    addu	$a0,$a3,$a0
    b	.L0db99d5c
    addiu	$a0,$a0,-48
.L0db99dd0:
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    ldc1	$f28,160($sp)
    sdc1	$f8,472($sp)
    # Line 944
    # lw $t9, -17792($gp) # &floorf
    # Line 943
    sub.s	$f28,$f10,$f28
    sdc1	$f4,128($sp)
    sdc1	$f9,136($sp)
    # Line 944
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 946
    li	$at,1
    sd	$at,256($sp)
    # Line 944
    and	$a1,$a1,$s4
    sd	$a1,312($sp)
    # Line 945
    addiu	$a1,$a1,1
    and	$a1,$a1,$s4
    # Line 946
    b	.L0db98ff4
    sd	$a1,304($sp)
.L0db99e24:
    ldc1	$f30,160($sp)
    # Line 959
    # lw $t9, -17792($gp) # &floorf
    # Line 958
    sub.s	$f30,$f5,$f30
    # Line 959
    jal	floorf
    mov.s	$f12,$f30
    trunc.w.s	$f0,$f0
    # Line 961
    ld	$at,256($sp)
    # Line 959
    ld	$v1,432($sp)
    mfc1	$s2,$f0
    # Line 961
    addiu	$at,$at,1
    sd	$at,256($sp)
    # Line 959
    and	$s2,$s2,$v1
    # Line 960
    addiu	$v0,$s2,1
    and	$v0,$v0,$v1
    # Line 961
    b	.L0db99054
    sd	$v0,440($sp)
.L0db99e64:
    ldc1	$f28,160($sp)
    # Line 1068
    # lw $t9, -17792($gp) # &floorf
    # Line 1067
    sub.s	$f28,$f10,$f28
    # Line 1068
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    # Line 1070
    li	$v1,1
    sd	$v1,256($sp)
    # Line 1068
    and	$v0,$v0,$s4
    sd	$v0,312($sp)
    # Line 1069
    addiu	$v0,$v0,1
    and	$v0,$v0,$s4
    # Line 1070
    b	.L0db9920c
    sd	$v0,304($sp)
.L0db99ea0:
    ldc1	$f30,160($sp)
    # Line 1083
    # lw $t9, -17792($gp) # &floorf
    # Line 1082
    sub.s	$f30,$f5,$f30
    # Line 1083
    jal	floorf
    mov.s	$f12,$f30
    # Line 1085
    ld	$at,256($sp)
    # Line 1083
    trunc.w.s	$f0,$f0
    # Line 1085
    addiu	$at,$at,1
    sd	$at,256($sp)
    # Line 1083
    ld	$at,432($sp)
    mfc1	$s2,$f0
    nop
    and	$s2,$s2,$at
    # Line 1084
    addiu	$a1,$s2,1
    and	$a1,$a1,$at
    # Line 1085
    b	.L0db9926c
    sd	$a1,440($sp)
.L0db99ee4:
    nop
    # Line 679
    bc1fl	.L0db99f24
    # Line 681
    c.lt.d	$f11,$f10
    sd	$a0,256($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    b	.L0db98760
    li	$s2,7
.L0db99f0c:
    nop
    # Line 724
    bc1f	.L0db99f4c
    # Line 726
    li	$v0,7
    sdc1	$f4,168($sp)
    b	.L0db97f50
    sd	$v0,288($sp)
.L0db99f24:
    nop
    # Line 681
    bc1fl	.L0db99f68
    # Line 683
    c.lt.d	$f11,$f4
    sd	$a0,256($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    b	.L0db98760
    li	$s2,3
.L0db99f4c:
    # Line 726
    c.lt.d	$f8,$f7
    nop
    bc1fl	.L0db99f90
    # Line 728
    c.lt.d	$f8,$f5
    sdc1	$f4,168($sp)
    b	.L0db97f50
    sd	$v1,288($sp)
.L0db99f68:
    nop
    # Line 683
    bc1fl	.L0db98764
    sd	$a2,352($sp)
    sd	$a0,256($sp)
    sdc1	$f5,496($sp)
    sdc1	$f6,488($sp)
    sdc1	$f7,480($sp)
    sdc1	$f8,472($sp)
    b	.L0db98760
    # Line 685
    li	$s2,1
.L0db99f90:
    nop
    # Line 728
    bc1f	.L0db97f50
    sd	$a3,288($sp)
    sdc1	$f4,168($sp)
    b	.L0db97f50
    sd	$a1,288($sp)
.end __glTextureRGB_F_LML_Span

# Function: __glTextureRGB_F_LML_StippledSpan
# Declared: Line 1226 (Source lines: 1227-1862)
# Address: 0x0db99fa8 - 0x0db9c1ec (Size: 8772 bytes, Frame: 192)
.globl __glTextureRGB_F_LML_StippledSpan
.ent __glTextureRGB_F_LML_StippledSpan
__glTextureRGB_F_LML_StippledSpan:
    # Line 1227
    addiu	$sp,$sp,-576
    sd	$s0,320($sp)
    sd	$s2,304($sp)
    sd	$s3,336($sp)
    sd	$s4,344($sp)
    sd	$s5,328($sp)
    sd	$s8,352($sp)
    sdc1	$f20,192($sp)
    sdc1	$f22,200($sp)
    sdc1	$f24,208($sp)
    sdc1	$f26,216($sp)
    sd	$ra,312($sp)
    sd	$gp,432($sp)
    sd	$s1,424($sp)
    sd	$s7,368($sp)
    lui	$v1,0x6
    addiu	$v1,$v1,18160
    sd	$s6,440($sp)
    move	$s6,$a0
    # Line 1257
    lw	$s7,30516($s6)
    # Line 1262
    lwc1	$f6,30288($a0)
    # Line 1261
    lwc1	$f5,30280($a0)
    sdc1	$f28,232($sp)
    # Line 1263
    lwc1	$f28,30292($a0)
    sdc1	$f30,224($sp)
    # Line 1260
    lwc1	$f30,30276($a0)
    # Line 1258
    lw	$a0,30524($a0)
    # Line 1255
    lw	$s1,28264($s6)
    # Line 1227
    addu	$gp,$t9,$v1
    sd	$a0,448($sp)
    # Line 1236
    lwc1	$f0,3280($s6)
    # Line 1253
    lw	$v0,2376($s6)
    # Line 1256
    lw	$at,30300($s6)
    sdc1	$f0,144($sp)
    # Line 1253
    lw	$v0,0($v0)
    sd	$at,456($sp)
    # Line 1263
    beqz	$at,.L0db9c120
    sd	$v0,528($sp)
    sd	$s2,304($sp)
    sd	$ra,312($sp)
    sd	$s0,320($sp)
    sd	$s5,328($sp)
    sdc1	$f20,192($sp)
    sdc1	$f22,200($sp)
    sdc1	$f24,208($sp)
    addiu	$s8,$sp,48
    li	$a4,-1
    li	$s3,1
    li	$s4,4
    mtc1	$zero,$f26
    li	$a5,10497
    addiu	$v0,$sp,12
    sd	$v0,272($sp)
    addiu	$at,$sp,0
    ld	$a1,528($sp)
    addiu	$at,$at,-4
    sd	$at,464($sp)
    xori	$a1,$a1,0x2101
    sltiu	$a1,$a1,1
    b	.L0db9a0a4
    sd	$a1,504($sp)
.L0db9a09c:
    ld	$v1,456($sp)
    # Line 1274
    beqz	$v1,.L0db9c120
.L0db9a0a4:
    ld	$a1,456($sp)
    # Line 1266
    move	$at,$a1
    sd	$a1,520($sp)
    slti	$a1,$a1,33
    bnez	$a1,.L0db9a0c0
    # Line 1268
    li	$v0,32
    sd	$v0,520($sp)
.L0db9a0c0:
    lui	$s5,0x8000
    # Line 1272
    ld	$a1,448($sp)
    # Line 1270
    ld	$v1,520($sp)
    ld	$at,456($sp)
    # Line 1272
    lw	$v0,0($a1)
    addiu	$a1,$a1,4
    # Line 1270
    subu	$at,$at,$v1
    # Line 1274
    addiu	$v1,$v1,-1
    sd	$at,456($sp)
    sd	$v1,520($sp)
    sd	$a1,448($sp)
    bltz	$v1,.L0db9a09c
    sd	$v0,512($sp)
    b	.L0db9a508
    ld	$at,512($sp)
.L0db9a0fc:
    ldc1	$f7,_lit8_bff0000000000000
    # Line 1353
    add.d	$f7,$f20,$f7
    dmtc1	$zero,$f0
    c.lt.d	$f7,$f0
    nop
    bc1fl	.L0db9a118
    move	$a0,$zero
.L0db9a118:
    beqz	$a0,.L0db9b8cc
    add.d	$f6,$f20,$f6
    dmtc1	$zero,$f0
.L0db9a124:
    c.lt.d	$f6,$f0
    ldc1	$f5,_lit8_3ff0000000000000
    bc1f	.L0db9b02c
    dmtc1	$zero,$f0
    sdc1	$f4,184($sp)
    sd	$v1,376($sp)
.L0db9a13c:
    # Line 1372
    # lw $t9, -17712($gp) # &floor
    sdc1	$f4,184($sp)
    jal	floor
    mov.d	$f12,$f20
    trunc.w.d	$f2,$f0
    mfc1	$a2,$f2
    nop
    # Line 1373
    addiu	$a1,$a2,-1
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    ldc1	$f5,184($sp)
    c.lt.s	$f1,$f26
    # Line 1372
    sw	$a2,20($sp)
    # Line 1376
    addiu	$a0,$a2,1
    # Line 1373
    bc1f	.L0db9a184
    sw	$a1,16($sp)
    # Line 1374
    sw	$zero,16($sp)
.L0db9a184:
    # Line 1376
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    c.lt.s	$f5,$f3
    nop
    bc1f	.L0db9a1b0
    sw	$a0,24($sp)
    # Line 1377
    trunc.w.s	$f0,$f5
    mfc1	$a0,$f0
    nop
    sw	$a0,24($sp)
.L0db9a1b0:
    # Line 1379
    addiu	$at,$a0,1
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    c.lt.s	$f5,$f1
    nop
    bc1f	.L0db9a1e0
    sw	$at,28($sp)
    # Line 1380
    trunc.w.s	$f2,$f5
    mfc1	$v0,$f2
    nop
    sw	$v0,28($sp)
.L0db9a1e0:
    # Line 1385
    # lw $t9, -17712($gp) # &floor
    jal	floor
    mov.d	$f12,$f22
    sub.d	$f7,$f22,$f0
    ldc1	$f8,_lit8_4030000000000000
    mul.d	$f7,$f7,$f8
    lwc1	$f24,3280($s6)
    cvt.d.s	$f24,$f24
    add.d	$f7,$f7,$f24
    trunc.w.d	$f7,$f7
    mfc1	$a0,$f7
    # Line 1390
    mov.d	$f12,$f20
    # lw $t9, -17712($gp) # &floor
    # Line 1386
    sll	$a2,$a0,0x2
    addu	$a2,$a2,$s1
    # Line 1387
    lwc1	$f6,24($a2)
    # Line 1386
    lwc1	$f5,88($a2)
    li	$a1,32
    # Line 1387
    swc1	$f6,36($sp)
    # Line 1386
    swc1	$f5,32($sp)
    # Line 1389
    subu	$a1,$a1,$a0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s1
    lwc1	$f4,24($a1)
    # Line 1388
    sll	$v1,$a0,0x1e
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s1
    lwc1	$f3,88($v1)
    # Line 1389
    swc1	$f4,44($sp)
    # Line 1390
    jal	floor
    # Line 1388
    swc1	$f3,40($sp)
    # Line 1390
    sub.d	$f4,$f20,$f0
    ldc1	$f5,_lit8_4030000000000000
    mul.d	$f4,$f4,$f5
    add.d	$f4,$f4,$f24
    li	$a4,-1
    li	$a5,10497
    # Line 1398
    addiu	$a3,$sp,112
    # Line 1390
    trunc.w.d	$f4,$f4
    # Line 1398
    move	$s0,$zero
    ldc1	$f6,536($sp)
    ld	$a2,280($sp)
    # Line 1390
    mfc1	$v0,$f4
    ldc1	$f5,544($sp)
    li	$v1,32
    # Line 1391
    sll	$a0,$v0,0x2
    addu	$a0,$a0,$s1
    # Line 1392
    lwc1	$f3,24($a0)
    # Line 1391
    lwc1	$f2,88($a0)
    ld	$a0,376($sp)
    # Line 1392
    swc1	$f3,116($sp)
    # Line 1394
    subu	$v1,$v1,$v0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s1
    lwc1	$f1,24($v1)
    # Line 1393
    sll	$at,$v0,0x1e
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    addu	$at,$at,$s1
    lwc1	$f0,88($at)
    # Line 1391
    swc1	$f2,112($sp)
    # Line 1394
    swc1	$f1,124($sp)
    # Line 1393
    swc1	$f0,120($sp)
    # Line 1398
    lwc1	$f4,0($a3)
.L0db9a2e4:
    addiu	$a7,$sp,32
    sll	$a6,$s0,0x2
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s8
    # Line 1400
    lwc1	$f1,4($a7)
    lwc1	$f2,8($a7)
    mul.s	$f1,$f1,$f4
    lwc1	$f3,12($a7)
    mul.s	$f2,$f2,$f4
    lwc1	$f0,0($a7)
    mul.s	$f3,$f3,$f4
    mul.s	$f0,$f0,$f4
    # Line 1398
    addiu	$s0,$s0,1
    addiu	$a3,$a3,4
    # Line 1400
    swc1	$f3,12($a6)
    swc1	$f2,8($a6)
    swc1	$f1,4($a6)
    swc1	$f0,0($a6)
    # Line 1398
    bnel	$s0,$s4,.L0db9a2e4
    lwc1	$f4,0($a3)
    # Line 1435
    mov.s	$f24,$f26
    # Line 1436
    move	$s0,$zero
    # Line 1422
    mov.s	$f22,$f26
    # Line 1398
    beqz	$a2,.L0db9b0e8
    # Line 1435
    mov.s	$f20,$f26
.L0db9a348:
    li	$at,2
.L0db9a34c:
    # Line 1410
    beq	$a2,$at,.L0db9b608
    # Line 1436
    addiu	$s4,$sp,16
    li	$a7,3
    # Line 1435
    mov.s	$f22,$f26
    li	$a2,4
.L0db9a360:
    # Line 1436
    addiu	$t1,$sp,0
    li	$a3,3
    sllv	$t0,$s3,$a7
    and	$t0,$t0,$a0
    # Line 1439
    sllv	$at,$s3,$a3
    # Line 1437
    addiu	$a3,$a3,-1
    # Line 1436
    sll	$a6,$s0,0x2
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s8
    # Line 1439
    and	$at,$at,$s2
    beqz	$at,.L0db9aaa8
    nop
    # Line 1440
    lwc1	$f3,0($a6)
.L0db9a394:
    # Line 1442
    lwc1	$f2,164($s1)
    # Line 1441
    lwc1	$f1,160($s1)
    # Line 1442
    mul.s	$f2,$f2,$f3
    # Line 1440
    lwc1	$f0,156($s1)
    # Line 1441
    mul.s	$f1,$f1,$f3
    # Line 1440
    mul.s	$f0,$f0,$f3
    # Line 1442
    add.s	$f20,$f2,$f20
    # Line 1441
    add.s	$f24,$f1,$f24
    # Line 1440
    add.s	$f22,$f0,$f22
.L0db9a3b8:
    # Line 1439
    sllv	$v0,$s3,$a3
    and	$v0,$v0,$s2
    beqz	$v0,.L0db9ab04
    # Line 1437
    addiu	$a3,$a3,-1
    # Line 1440
    lwc1	$f2,4($a6)
.L0db9a3cc:
    # Line 1442
    lwc1	$f1,164($s1)
    # Line 1441
    lwc1	$f0,160($s1)
    # Line 1442
    mul.s	$f1,$f1,$f2
    # Line 1440
    lwc1	$f3,156($s1)
    # Line 1441
    mul.s	$f0,$f0,$f2
    # Line 1440
    mul.s	$f3,$f3,$f2
    # Line 1442
    add.s	$f20,$f1,$f20
    # Line 1441
    add.s	$f24,$f0,$f24
    # Line 1440
    add.s	$f22,$f3,$f22
.L0db9a3f0:
    # Line 1439
    sllv	$v1,$s3,$a3
    and	$v1,$v1,$s2
    beqz	$v1,.L0db9ab60
    # Line 1437
    addiu	$a3,$a3,-1
    # Line 1440
    lwc1	$f1,8($a6)
.L0db9a404:
    # Line 1442
    lwc1	$f0,164($s1)
    # Line 1441
    lwc1	$f3,160($s1)
    # Line 1442
    mul.s	$f0,$f0,$f1
    # Line 1440
    lwc1	$f2,156($s1)
    # Line 1441
    mul.s	$f3,$f3,$f1
    # Line 1440
    mul.s	$f2,$f2,$f1
    # Line 1442
    add.s	$f20,$f0,$f20
    # Line 1441
    add.s	$f24,$f3,$f24
    # Line 1440
    add.s	$f22,$f2,$f22
.L0db9a428:
    # Line 1436
    addiu	$a7,$a7,-1
    # Line 1439
    sllv	$a1,$s3,$a3
    and	$a1,$a1,$s2
    beqz	$a1,.L0db9abbc
    # Line 1436
    addiu	$s0,$s0,1
    # Line 1440
    lwc1	$f0,12($a6)
.L0db9a440:
    # Line 1442
    lwc1	$f3,164($s1)
    # Line 1441
    lwc1	$f2,160($s1)
    # Line 1442
    mul.s	$f3,$f3,$f0
    # Line 1440
    lwc1	$f1,156($s1)
    # Line 1441
    mul.s	$f2,$f2,$f0
    # Line 1440
    mul.s	$f1,$f1,$f0
    # Line 1442
    add.s	$f20,$f3,$f20
    # Line 1441
    add.s	$f24,$f2,$f24
    # Line 1440
    add.s	$f22,$f1,$f22
.L0db9a464:
    # Line 1436
    bne	$s0,$a2,.L0db9a360
    addiu	$s4,$s4,4
.L0db9a46c:
    # Line 1815
    ld	$at,528($sp)
.L0db9a470:
    li	$v0,8448
    beq	$at,$v0,.L0db9b0c0
    li	$s4,4
    li	$v0,7681
.L0db9a480:
    # Line 1828
    ld	$v1,528($sp)
    li	$a1,0x8062
    beq	$v1,$a1,.L0db9ac18
    ld	$at,528($sp)
    beq	$at,$v0,.L0db9ac18
    move	$a0,$zero
    ld	$v1,504($sp)
.L0db9a49c:
    or	$v1,$a0,$v1
    beqz	$v1,.L0db9b04c
    ldc1	$f1,176($sp)
    # Line 1831
    lwc1	$f2,30804($s6)
    mul.s	$f2,$f2,$f22
    swc1	$f2,0($s7)
    # Line 1832
    lwc1	$f1,30808($s6)
    mul.s	$f1,$f1,$f24
    swc1	$f1,4($s7)
    # Line 1833
    lwc1	$f0,30812($s6)
    mul.s	$f0,$f0,$f20
    swc1	$f0,8($s7)
.L0db9a4cc:
    # Line 1855
    srl	$s5,$s5,0x1
    # Line 1852
    lwc1	$f2,30448($s6)
    # Line 1851
    lwc1	$f1,30444($s6)
    # Line 1852
    add.s	$f28,$f2,$f28
    # Line 1850
    lwc1	$f0,30436($s6)
    # Line 1851
    add.s	$f6,$f1,$f6
    # Line 1849
    lwc1	$f3,30432($s6)
    # Line 1850
    add.s	$f5,$f0,$f5
    # Line 1274
    ld	$a1,520($sp)
    # Line 1853
    addiu	$s7,$s7,16
    # Line 1849
    add.s	$f30,$f3,$f30
    # Line 1274
    addiu	$a1,$a1,-1
    beq	$a1,$a4,.L0db9a09c
    sd	$a1,520($sp)
    ld	$at,512($sp)
.L0db9a508:
    and	$at,$at,$s5
    beqz	$at,.L0db9a4cc
    # Line 1463
    mov.s	$f9,$f26
    # Line 1276
    lwc1	$f7,3284($s6)
    sdc1	$f7,176($sp)
    div.s	$f7,$f7,$f6
    mul.s	$f4,$f28,$f7
    lw	$s0,4($s1)
    # Line 1296
    move	$s2,$zero
    # Line 1276
    lwc1	$f1,240($s1)
    mul.s	$f0,$f5,$f7
    lw	$a7,228($s1)
    # Line 1296
    ldc1	$f22,144($sp)
    # Line 1276
    c.le.s	$f4,$f1
    # Line 1286
    move	$a3,$a7
    # Line 1276
    mul.s	$f7,$f30,$f7
    bc1f	.L0db9a618
    sdc1	$f0,152($sp)
    # Line 1284
    move	$a2,$zero
    # Line 1290
    lw	$a6,20($a7)
    # Line 1293
    lwc1	$f4,32($a7)
    # Line 1287
    lw	$v1,44($a7)
    # Line 1289
    lw	$a0,0($a7)
    # Line 1296
    mul.s	$f20,$f7,$f4
    sd	$v1,296($sp)
    sd	$a0,288($sp)
    # Line 1291
    lw	$v0,24($a7)
    # Line 1290
    addiu	$a0,$a6,-1
    ldc1	$f7,_lit8_4000000000000000
    sd	$v0,264($sp)
    # Line 1296
    sub.s	$f20,$f20,$f22
    # Line 1291
    addiu	$v0,$v0,-1
    sd	$v0,472($sp)
    # Line 1296
    bne	$a5,$s0,.L0db9a900
    cvt.d.s	$f22,$f20
    # Line 1298
    li	$s0,-1
    ld	$a2,464($sp)
    mtc1	$s0,$f7
    nop
    cvt.s.w	$f7,$f7
    sd	$a0,496($sp)
    sd	$a3,408($sp)
    add.s	$f8,$f7,$f20
    sd	$a2,416($sp)
    sd	$a6,400($sp)
    sdc1	$f5,544($sp)
    c.lt.s	$f8,$f26
    sdc1	$f6,536($sp)
    addiu	$s0,$s0,1
    bc1f	.L0db9ac54
    sdc1	$f4,168($sp)
    ld	$a1,400($sp)
    # Line 1300
    mtc1	$a1,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$v0,496($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v0
    ld	$v0,416($sp)
    b	.L0db9ac7c
    sw	$at,4($v0)
.L0db9a618:
    # Line 1418
    c.eq.s	$f4,$f26
    nop
    bc1t	.L0db9a6a0
    # Line 1458
    move	$a0,$zero
    # Line 1459
    trunc.w.s	$f1,$f4
    mfc1	$a2,$f1
    nop
    sra	$a2,$a2,0x1
    beqz	$a2,.L0db9a674
    # Line 1461
    sllv	$at,$s3,$a0
    # Line 1459
    addiu	$a0,$a0,1
.L0db9a644:
    sra	$a2,$a2,0x1
    beqz	$a2,.L0db9a670
    nop
    addiu	$a0,$a0,1
    sra	$a2,$a2,0x1
    beqz	$a2,.L0db9a670
    nop
    addiu	$a0,$a0,1
    sra	$a2,$a2,0x1
    bnezl	$a2,.L0db9a644
    addiu	$a0,$a0,1
.L0db9a670:
    # Line 1461
    sllv	$at,$s3,$a0
.L0db9a674:
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f4,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a0,$f9
    nop
    cvt.s.w	$f9,$f9
    add.s	$f9,$f9,$f0
    ldc1	$f0,144($sp)
    mul.s	$f9,$f9,$f0
.L0db9a6a0:
    # Line 1471
    lw	$a1,8($s1)
    trunc.w.s	$f8,$f9
    sd	$a1,384($sp)
    cvt.s.w	$f4,$f8
    mfc1	$a0,$f8
    # Line 1467
    lw	$a2,236($s1)
    # Line 1471
    ldc1	$f8,176($sp)
    addiu	$v1,$a0,1
    slt	$v0,$a2,$v1
    sub.s	$f4,$f9,$f4
    slti	$v1,$v1,0
    or	$v0,$v0,$v1
    beqz	$v0,.L0db9b140
    sub.s	$f8,$f8,$f4
    # Line 1474
    sll	$at,$a2,0x2
    subu	$at,$at,$a2
    sll	$at,$at,0x3
    addu	$at,$at,$a2
    sll	$at,$at,0x2
    addu	$at,$at,$a7
    # Line 1475
    lw	$v0,44($at)
    sd	$at,408($sp)
    # Line 1476
    lw	$v1,0($at)
    sd	$v0,296($sp)
    # Line 1480
    lwc1	$f4,32($at)
    # Line 1478
    lw	$v0,24($at)
    # Line 1477
    lw	$at,20($at)
    # Line 1481
    mul.s	$f9,$f7,$f4
    sd	$v1,288($sp)
    # Line 1477
    addiu	$at,$at,-1
    # Line 1478
    addiu	$v0,$v0,-1
    sd	$v0,472($sp)
    sd	$at,496($sp)
    # Line 1481
    beq	$a5,$s0,.L0db9b994
    mov.s	$f22,$f9
    # Line 1485
    c.lt.s	$f9,$f26
    nop
    bc1fl	.L0db9ac24
    # Line 1487
    c.lt.s	$f4,$f9
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    mov.s	$f22,$f26
.L0db9a748:
    # Line 1489
    ldc1	$f9,144($sp)
.L0db9a74c:
    # Line 1490
    # lw $t9, -17792($gp) # &floorf
    # Line 1489
    sub.s	$f22,$f22,$f9
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    # Line 1490
    jal	floorf
    mov.s	$f12,$f22
    trunc.w.s	$f0,$f0
    mfc1	$s2,$f0
    ld	$a2,384($sp)
    ld	$a0,408($sp)
    # Line 1491
    addiu	$v0,$s2,1
    sd	$v0,392($sp)
.L0db9a77c:
    # Line 1494
    lwc1	$f4,36($a0)
    # Line 1495
    ldc1	$f5,152($sp)
    mul.s	$f5,$f5,$f4
    li	$v1,10497
    beq	$v1,$a2,.L0db9b9d8
    mov.s	$f20,$f5
    # Line 1499
    c.lt.s	$f5,$f26
    nop
    bc1fl	.L0db9ac40
    # Line 1501
    c.lt.s	$f4,$f5
    mov.s	$f20,$f26
.L0db9a7a8:
    # Line 1503
    ldc1	$f6,144($sp)
.L0db9a7ac:
    # Line 1504
    # lw $t9, -17792($gp) # &floorf
    # Line 1503
    sub.s	$f20,$f20,$f6
    # Line 1504
    jal	floorf
    mov.s	$f12,$f20
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    sd	$a1,488($sp)
    # Line 1505
    addiu	$a1,$a1,1
    sd	$a1,480($sp)
.L0db9a7d4:
    # Line 1508
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f22
    # Line 1509
    # lw $t9, -17792($gp) # &floorf
    # Line 1508
    sub.s	$f1,$f22,$f0
    # Line 1509
    mov.s	$f12,$f20
    jal	floorf
    sdc1	$f1,248($sp)
    li	$a4,-1
    li	$a5,10497
    ldc1	$f6,536($sp)
    ldc1	$f5,544($sp)
    ld	$a3,392($sp)
    ld	$a2,480($sp)
    # Line 1510
    ldc1	$f7,248($sp)
    ldc1	$f10,176($sp)
    # Line 1511
    sub.s	$f8,$f20,$f0
    ld	$a0,488($sp)
    ld	$t0,496($sp)
    # Line 1510
    sub.s	$f11,$f10,$f7
    # Line 1511
    ld	$a6,472($sp)
    nor	$t0,$t0,$zero
    sub.s	$f10,$f10,$f8
    nor	$a6,$a6,$zero
    and	$a7,$a6,$a0
    and	$t1,$t0,$s2
    # Line 1530
    mul.s	$f4,$f7,$f10
    # Line 1511
    or	$at,$t1,$a7
    beqz	$at,.L0db9b790
    mul.s	$f9,$f11,$f10
    # Line 1524
    lwc1	$f20,164($s1)
    # Line 1523
    lwc1	$f24,160($s1)
    # Line 1524
    mul.s	$f20,$f20,$f9
    # Line 1522
    lwc1	$f22,156($s1)
    # Line 1523
    mul.s	$f24,$f24,$f9
    # Line 1522
    mul.s	$f22,$f22,$f9
.L0db9a864:
    # Line 1530
    and	$t2,$t0,$a3
    or	$at,$t2,$a7
    beqz	$at,.L0db9b7d0
    ld	$a1,296($sp)
    # Line 1535
    lwc1	$f2,164($s1)
    # Line 1534
    lwc1	$f1,160($s1)
    # Line 1535
    mul.s	$f2,$f2,$f4
    # Line 1533
    lwc1	$f0,156($s1)
    # Line 1534
    mul.s	$f1,$f1,$f4
    # Line 1533
    mul.s	$f0,$f0,$f4
    # Line 1535
    add.s	$f20,$f2,$f20
    # Line 1534
    add.s	$f24,$f1,$f24
    # Line 1533
    add.s	$f22,$f0,$f22
.L0db9a898:
    # Line 1541
    and	$a0,$a6,$a2
    or	$v0,$t1,$a0
    beqz	$v0,.L0db9b818
    mul.s	$f4,$f8,$f11
    # Line 1546
    lwc1	$f1,164($s1)
    # Line 1545
    lwc1	$f0,160($s1)
    # Line 1546
    mul.s	$f1,$f1,$f4
    # Line 1544
    lwc1	$f3,156($s1)
    # Line 1545
    mul.s	$f0,$f0,$f4
    # Line 1544
    mul.s	$f3,$f3,$f4
    # Line 1546
    add.s	$f20,$f1,$f20
    # Line 1545
    add.s	$f24,$f0,$f24
    # Line 1544
    add.s	$f22,$f3,$f22
.L0db9a8cc:
    # Line 1552
    or	$v1,$t2,$a0
    beqz	$v1,.L0db9b864
    mul.s	$f4,$f8,$f7
    # Line 1557
    lwc1	$f0,164($s1)
    # Line 1556
    lwc1	$f3,160($s1)
    # Line 1557
    mul.s	$f0,$f0,$f4
    # Line 1555
    lwc1	$f2,156($s1)
    # Line 1556
    mul.s	$f3,$f3,$f4
    # Line 1555
    mul.s	$f2,$f2,$f4
    # Line 1557
    add.s	$f20,$f0,$f20
    # Line 1556
    add.s	$f24,$f3,$f24
    # Line 1557
    b	.L0db9a46c
    # Line 1555
    add.s	$f22,$f2,$f22
.L0db9a900:
    ldc1	$f8,_lit8_bff0000000000000
    # Line 1307
    add.d	$f8,$f22,$f8
    dmtc1	$zero,$f0
    c.lt.d	$f8,$f0
    li	$a0,1
    bc1fl	.L0db9a91c
    move	$a0,$zero
.L0db9a91c:
    beqz	$a0,.L0db9b8b0
    add.d	$f7,$f22,$f7
    dmtc1	$zero,$f0
.L0db9a928:
    c.lt.d	$f7,$f0
    nop
    bc1f	.L0db9affc
    ldc1	$f9,_lit8_3ff0000000000000
    sd	$a2,280($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f4,168($sp)
    # Line 1309
    li	$s2,15
.L0db9a94c:
    sd	$a3,408($sp)
.L0db9a950:
    sd	$a2,280($sp)
    sdc1	$f5,544($sp)
    # Line 1326
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f6,536($sp)
    sdc1	$f4,168($sp)
    jal	floorf
    mov.s	$f12,$f20
    trunc.w.s	$f2,$f0
    mfc1	$a4,$f2
    nop
    # Line 1327
    addiu	$a0,$a4,-1
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    li	$a2,10497
    ldc1	$f6,152($sp)
    ldc1	$f5,168($sp)
    # Line 1326
    sw	$a4,4($sp)
    # Line 1327
    c.lt.s	$f1,$f26
    # Line 1330
    addiu	$a3,$a4,1
    # Line 1327
    sw	$a0,0($sp)
    bc1f	.L0db9a9b0
    ld	$a0,408($sp)
    # Line 1328
    sw	$zero,0($sp)
.L0db9a9b0:
    # Line 1330
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    c.lt.s	$f5,$f3
    nop
    bc1f	.L0db9a9dc
    sw	$a3,8($sp)
    # Line 1331
    trunc.w.s	$f0,$f5
    mfc1	$a3,$f0
    nop
    sw	$a3,8($sp)
.L0db9a9dc:
    # Line 1333
    addiu	$a1,$a3,1
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    c.lt.s	$f5,$f1
    nop
    bc1f	.L0db9aa0c
    sw	$a1,12($sp)
    # Line 1334
    trunc.w.s	$f2,$f5
    mfc1	$at,$f2
    nop
    sw	$at,12($sp)
.L0db9aa0c:
    # Line 1339
    lwc1	$f4,36($a0)
    # Line 1342
    move	$a3,$zero
    mul.s	$f24,$f6,$f4
    # Line 1353
    li	$a0,1
    # Line 1344
    li	$s0,-1
    # Line 1355
    li	$v1,15
    # Line 1342
    ldc1	$f0,144($sp)
    # Line 1357
    li	$a1,14
    # Line 1342
    lw	$v0,8($s1)
    sub.s	$f24,$f24,$f0
    # Line 1361
    li	$at,8
    ldc1	$f6,_lit8_4000000000000000
    # Line 1342
    bne	$v0,$a2,.L0db9a0fc
    cvt.d.s	$f20,$f24
    # Line 1344
    ld	$s4,272($sp)
    mtc1	$s0,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f4,$f7,$f24
    c.lt.s	$f4,$f26
    addiu	$s0,$s0,1
    bc1f	.L0db9ae40
    sd	$a3,376($sp)
    ld	$v1,264($sp)
    # Line 1346
    mtc1	$v1,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,472($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$at
    b	.L0db9ae64
    sw	$a1,4($s4)
.L0db9aaa8:
    # Line 1439
    bnezl	$t0,.L0db9a394
    # Line 1440
    lwc1	$f3,0($a6)
    # Line 1444
    ld	$at,296($sp)
    lw	$a1,0($s4)
    lw	$v1,0($t1)
    sllv	$a1,$a1,$at
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,288($sp)
    lwc1	$f0,0($a6)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 1446
    lwc1	$f3,8($v0)
    # Line 1445
    lwc1	$f2,4($v0)
    # Line 1446
    mul.s	$f3,$f3,$f0
    # Line 1444
    lwc1	$f1,0($v0)
    # Line 1445
    mul.s	$f2,$f2,$f0
    # Line 1444
    mul.s	$f1,$f1,$f0
    # Line 1446
    add.s	$f20,$f3,$f20
    # Line 1445
    add.s	$f24,$f2,$f24
    b	.L0db9a3b8
    # Line 1444
    add.s	$f22,$f1,$f22
.L0db9ab04:
    # Line 1439
    bnezl	$t0,.L0db9a3cc
    # Line 1440
    lwc1	$f2,4($a6)
    # Line 1444
    ld	$at,296($sp)
    lw	$a1,0($s4)
    lw	$v1,4($t1)
    sllv	$a1,$a1,$at
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,288($sp)
    lwc1	$f3,4($a6)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 1446
    lwc1	$f2,8($v0)
    # Line 1445
    lwc1	$f1,4($v0)
    # Line 1446
    mul.s	$f2,$f2,$f3
    # Line 1444
    lwc1	$f0,0($v0)
    # Line 1445
    mul.s	$f1,$f1,$f3
    # Line 1444
    mul.s	$f0,$f0,$f3
    # Line 1446
    add.s	$f20,$f2,$f20
    # Line 1445
    add.s	$f24,$f1,$f24
    b	.L0db9a3f0
    # Line 1444
    add.s	$f22,$f0,$f22
.L0db9ab60:
    # Line 1439
    bnezl	$t0,.L0db9a404
    # Line 1440
    lwc1	$f1,8($a6)
    # Line 1444
    ld	$at,296($sp)
    lw	$a1,0($s4)
    lw	$v1,8($t1)
    sllv	$a1,$a1,$at
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,288($sp)
    lwc1	$f2,8($a6)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 1446
    lwc1	$f1,8($v0)
    # Line 1445
    lwc1	$f0,4($v0)
    # Line 1446
    mul.s	$f1,$f1,$f2
    # Line 1444
    lwc1	$f3,0($v0)
    # Line 1445
    mul.s	$f0,$f0,$f2
    # Line 1444
    mul.s	$f3,$f3,$f2
    # Line 1446
    add.s	$f20,$f1,$f20
    # Line 1445
    add.s	$f24,$f0,$f24
    b	.L0db9a428
    # Line 1444
    add.s	$f22,$f3,$f22
.L0db9abbc:
    # Line 1439
    bnezl	$t0,.L0db9a440
    # Line 1440
    lwc1	$f0,12($a6)
    # Line 1444
    ld	$at,296($sp)
    lw	$a1,0($s4)
    lw	$v1,12($t1)
    sllv	$a1,$a1,$at
    addu	$v1,$v1,$a1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    ld	$v1,288($sp)
    lwc1	$f1,12($a6)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 1446
    lwc1	$f0,8($v0)
    # Line 1445
    lwc1	$f3,4($v0)
    # Line 1446
    mul.s	$f0,$f0,$f1
    # Line 1444
    lwc1	$f2,0($v0)
    # Line 1445
    mul.s	$f3,$f3,$f1
    # Line 1444
    mul.s	$f2,$f2,$f1
    # Line 1446
    add.s	$f20,$f0,$f20
    # Line 1445
    add.s	$f24,$f3,$f24
    b	.L0db9a464
    # Line 1444
    add.s	$f22,$f2,$f22
.L0db9ac18:
    # Line 1828
    li	$a0,1
    b	.L0db9a49c
    ld	$v1,504($sp)
.L0db9ac24:
    nop
    # Line 1487
    bc1f	.L0db9a74c
    # Line 1489
    ldc1	$f9,144($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    b	.L0db9a748
    # Line 1488
    mov.s	$f22,$f4
.L0db9ac40:
    nop
    # Line 1501
    bc1f	.L0db9a7ac
    # Line 1503
    ldc1	$f6,144($sp)
    b	.L0db9a7a8
    # Line 1502
    mov.s	$f20,$f4
.L0db9ac54:
    # Line 1302
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    ld	$v1,496($sp)
    mfc1	$v0,$f1
    nop
    and	$v0,$v0,$v1
    ld	$v1,416($sp)
    sw	$v0,4($v1)
.L0db9ac7c:
    # Line 1298
    mtc1	$s0,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f8,$f7,$f20
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db9ace0
    addiu	$s0,$s0,1
    ld	$a0,400($sp)
    # Line 1300
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,496($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$at
    ld	$at,416($sp)
    b	.L0db9ad08
    sw	$a1,8($at)
.L0db9ace0:
    # Line 1302
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    ld	$v1,496($sp)
    mfc1	$v0,$f1
    nop
    and	$v0,$v0,$v1
    ld	$v1,416($sp)
    sw	$v0,8($v1)
.L0db9ad08:
    # Line 1298
    mtc1	$s0,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f8,$f7,$f20
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db9ad6c
    addiu	$s0,$s0,1
    ld	$a0,400($sp)
    # Line 1300
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,496($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$at
    ld	$at,416($sp)
    b	.L0db9ad94
    sw	$a1,12($at)
.L0db9ad6c:
    # Line 1302
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    ld	$v1,496($sp)
    mfc1	$v0,$f1
    nop
    and	$v0,$v0,$v1
    ld	$v1,416($sp)
    sw	$v0,12($v1)
.L0db9ad94:
    # Line 1298
    mtc1	$s0,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f8,$f7,$f20
    c.lt.s	$f8,$f26
    nop
    bc1f	.L0db9ae00
    ld	$a0,400($sp)
    # Line 1300
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f20
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    li	$a2,10497
    ld	$at,496($sp)
    mfc1	$a1,$f0
    ldc1	$f6,152($sp)
    ldc1	$f5,168($sp)
    and	$a1,$a1,$at
    ld	$at,416($sp)
    ld	$a0,408($sp)
    b	.L0db9ae34
    sw	$a1,16($at)
.L0db9ae00:
    # Line 1302
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f8
    trunc.w.d	$f1,$f0
    ld	$v1,496($sp)
    mfc1	$v0,$f1
    li	$a2,10497
    ldc1	$f6,152($sp)
    and	$v0,$v0,$v1
    ld	$v1,416($sp)
    ldc1	$f5,168($sp)
    ld	$a0,408($sp)
    sw	$v0,16($v1)
.L0db9ae34:
    # Line 1305
    li	$a1,1
    b	.L0db9aa0c
    sd	$a1,280($sp)
.L0db9ae40:
    # Line 1348
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f4
    trunc.w.d	$f2,$f0
    ld	$v0,472($sp)
    mfc1	$at,$f2
    nop
    and	$at,$at,$v0
    sw	$at,4($s4)
.L0db9ae64:
    # Line 1344
    mtc1	$s0,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f4,$f7,$f24
    c.lt.s	$f4,$f26
    nop
    bc1f	.L0db9aec4
    addiu	$s0,$s0,1
    ld	$v1,264($sp)
    # Line 1346
    mtc1	$v1,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,472($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$at
    b	.L0db9aee8
    sw	$a1,8($s4)
.L0db9aec4:
    # Line 1348
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f4
    trunc.w.d	$f1,$f0
    ld	$v1,472($sp)
    mfc1	$v0,$f1
    nop
    and	$v0,$v0,$v1
    sw	$v0,8($s4)
.L0db9aee8:
    # Line 1344
    mtc1	$s0,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f4,$f7,$f24
    c.lt.s	$f4,$f26
    nop
    bc1f	.L0db9af48
    addiu	$s0,$s0,1
    ld	$a0,264($sp)
    # Line 1346
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,472($sp)
    mfc1	$a1,$f0
    nop
    and	$a1,$a1,$at
    b	.L0db9af6c
    sw	$a1,12($s4)
.L0db9af48:
    # Line 1348
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f4
    trunc.w.d	$f1,$f0
    ld	$v1,472($sp)
    mfc1	$v0,$f1
    nop
    and	$v0,$v0,$v1
    sw	$v0,12($s4)
.L0db9af6c:
    # Line 1344
    mtc1	$s0,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f4,$f7,$f24
    c.lt.s	$f4,$f26
    nop
    bc1f	.L0db9afc8
    ld	$a0,264($sp)
    # Line 1346
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    add.s	$f12,$f12,$f24
    # lw $t9, -17712($gp) # &floor
    add.s	$f12,$f12,$f7
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f0,$f0
    ld	$at,472($sp)
    mfc1	$a1,$f0
    ld	$a0,280($sp)
    and	$a1,$a1,$at
    b	.L0db9afec
    sw	$a1,16($s4)
.L0db9afc8:
    # Line 1348
    # lw $t9, -17712($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f4
    trunc.w.d	$f1,$f0
    ld	$v1,472($sp)
    mfc1	$v0,$f1
    ld	$a0,280($sp)
    and	$v0,$v0,$v1
    sw	$v0,16($s4)
.L0db9afec:
    li	$s4,4
    # Line 1351
    addiu	$a0,$a0,1
    b	.L0db9a1e0
    sd	$a0,280($sp)
.L0db9affc:
    # Line 1309
    add.d	$f9,$f22,$f9
    dmtc1	$zero,$f2
    c.lt.d	$f9,$f2
    nop
    bc1fl	.L0db9b754
    # Line 1311
    c.lt.s	$f20,$f26
    sd	$a2,280($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f4,168($sp)
    b	.L0db9a94c
    li	$s2,14
.L0db9b02c:
    # Line 1355
    add.d	$f5,$f20,$f5
    c.lt.d	$f5,$f0
    nop
    bc1fl	.L0db9b778
    # Line 1357
    c.lt.s	$f24,$f26
    sdc1	$f4,184($sp)
    b	.L0db9a13c
    sd	$a1,376($sp)
.L0db9b04c:
    # Line 1841
    sub.s	$f1,$f1,$f22
    lwc1	$f0,0($s7)
    # Line 1839
    lw	$at,2376($s6)
    # Line 1841
    mul.s	$f0,$f0,$f1
    lwc1	$f1,4($at)
    mul.s	$f1,$f1,$f22
    add.s	$f0,$f0,$f1
    swc1	$f0,0($s7)
    # Line 1842
    lwc1	$f3,3284($s6)
    sub.s	$f3,$f3,$f24
    lwc1	$f2,4($s7)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($at)
    mul.s	$f3,$f3,$f24
    add.s	$f2,$f2,$f3
    swc1	$f2,4($s7)
    # Line 1843
    lwc1	$f1,3284($s6)
    sub.s	$f1,$f1,$f20
    lwc1	$f0,8($s7)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,12($at)
    mul.s	$f1,$f1,$f20
    add.s	$f0,$f0,$f1
    b	.L0db9a4cc
    swc1	$f0,8($s7)
.L0db9b0b0:
    # Line 1815
    ld	$v0,528($sp)
    li	$v1,8448
    bne	$v0,$v1,.L0db9a480
    li	$v0,7681
.L0db9b0c0:
    # Line 1825
    lwc1	$f3,4($s7)
    # Line 1826
    lwc1	$f0,8($s7)
    # Line 1825
    mul.s	$f3,$f3,$f24
    # Line 1824
    lwc1	$f2,0($s7)
    # Line 1826
    mul.s	$f0,$f0,$f20
    # Line 1824
    mul.s	$f2,$f2,$f22
    # Line 1826
    swc1	$f0,8($s7)
    # Line 1825
    swc1	$f3,4($s7)
    # Line 1826
    b	.L0db9a4cc
    # Line 1824
    swc1	$f2,0($s7)
.L0db9b0e8:
    # Line 1398
    bnez	$s2,.L0db9a34c
    li	$at,2
    # Line 1409
    lw	$a1,16($sp)
    # Line 1398
    bnez	$a0,.L0db9a348
    li	$a3,3
    # Line 1409
    lw	$at,0($sp)
    # Line 1408
    mov.s	$f20,$f26
    mov.s	$f24,$f26
    mov.s	$f22,$f26
    # Line 1410
    ld	$v0,296($sp)
    addiu	$a2,$sp,48
    move	$s0,$zero
    sllv	$a3,$a3,$v0
    sll	$a3,$a3,0x2
    # Line 1409
    sllv	$a1,$a1,$v0
    addu	$a1,$a1,$at
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    ld	$a1,288($sp)
    sll	$a0,$a0,0x2
    b	.L0db9bf44
    addu	$a0,$a0,$a1
.L0db9b140:
    sd	$zero,280($sp)
    # Line 1573
    sll	$at,$a0,0x2
    subu	$at,$at,$a0
    sll	$at,$at,0x3
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$a7,$at
    # Line 1575
    lw	$v1,0($at)
    # Line 1574
    lw	$v0,44($at)
    sd	$at,360($sp)
    sd	$at,408($sp)
    sd	$v0,296($sp)
    # Line 1579
    lwc1	$f9,32($at)
    # Line 1577
    lw	$v0,24($at)
    # Line 1576
    lw	$at,20($at)
    sdc1	$f9,168($sp)
    # Line 1580
    mul.s	$f9,$f7,$f9
    sd	$v1,288($sp)
    # Line 1576
    addiu	$at,$at,-1
    # Line 1577
    addiu	$v0,$v0,-1
    sd	$v0,472($sp)
    sd	$at,496($sp)
    # Line 1580
    beq	$a5,$s0,.L0db9bfb4
    mov.s	$f20,$f9
    # Line 1585
    c.lt.s	$f9,$f26
    nop
    bc1f	.L0db9b8e8
    ldc1	$f3,168($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f7,128($sp)
    sdc1	$f4,160($sp)
    sdc1	$f8,136($sp)
    # Line 1587
    mov.s	$f20,$f26
.L0db9b1c8:
    sdc1	$f5,544($sp)
.L0db9b1cc:
    sdc1	$f6,536($sp)
    # Line 1589
    ldc1	$f10,144($sp)
    sdc1	$f7,128($sp)
    # Line 1590
    # lw $t9, -17792($gp) # &floorf
    # Line 1589
    sub.s	$f20,$f20,$f10
    sdc1	$f4,160($sp)
    sdc1	$f8,136($sp)
    # Line 1590
    jal	floorf
    mov.s	$f12,$f20
    trunc.w.s	$f0,$f0
    mfc1	$s2,$f0
    nop
    # Line 1591
    addiu	$v0,$s2,1
    sd	$v0,392($sp)
.L0db9b204:
    ld	$at,408($sp)
    # Line 1595
    ldc1	$f5,152($sp)
    # Line 1594
    lwc1	$f22,36($at)
    # Line 1595
    mul.s	$f5,$f5,$f22
    ld	$a1,384($sp)
    li	$v1,10497
    sdc1	$f22,184($sp)
    beq	$v1,$a1,.L0db9c008
    mov.s	$f22,$f5
    # Line 1600
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db9b914
    ldc1	$f0,184($sp)
    # Line 1602
    mov.s	$f22,$f26
.L0db9b23c:
    # Line 1604
    ldc1	$f23,144($sp)
.L0db9b240:
    # Line 1605
    # lw $t9, -17792($gp) # &floorf
    # Line 1604
    sub.s	$f22,$f22,$f23
    # Line 1605
    jal	floorf
    mov.s	$f12,$f22
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    sd	$v0,488($sp)
    # Line 1606
    addiu	$v0,$v0,1
    sd	$v0,480($sp)
.L0db9b268:
    # Line 1609
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f20
    # Line 1610
    # lw $t9, -17792($gp) # &floorf
    mov.s	$f12,$f22
    jal	floorf
    # Line 1609
    sub.s	$f24,$f20,$f0
    ld	$t2,392($sp)
    # Line 1643
    ld	$a7,488($sp)
    ldc1	$f8,176($sp)
    # Line 1612
    ldc1	$f5,136($sp)
    ld	$a0,480($sp)
    # Line 1611
    sub.s	$f1,$f8,$f24
    # Line 1612
    mul.s	$f6,$f5,$f24
    # Line 1641
    ld	$at,480($sp)
    # Line 1612
    sub.s	$f7,$f22,$f0
    li	$a1,2
    mul.s	$f5,$f5,$f1
    ld	$v1,280($sp)
    sub.s	$f0,$f8,$f7
    mul.s	$f8,$f6,$f7
    # Line 1643
    ld	$a6,472($sp)
    ld	$t0,496($sp)
    # Line 1612
    mul.s	$f6,$f6,$f0
    # Line 1643
    nor	$a6,$a6,$zero
    nor	$t0,$t0,$zero
    # Line 1612
    mul.s	$f7,$f5,$f7
    # Line 1643
    and	$t1,$t0,$s2
    # Line 1612
    beq	$v1,$a1,.L0db9ba14
    mul.s	$f5,$f5,$f0
    # Line 1643
    and	$a7,$a6,$a7
    or	$at,$t1,$a7
    beqz	$at,.L0db9bc30
    ld	$v0,296($sp)
    # Line 1652
    lwc1	$f20,164($s1)
    # Line 1651
    lwc1	$f24,160($s1)
    # Line 1652
    mul.s	$f20,$f20,$f5
    # Line 1650
    lwc1	$f22,156($s1)
    # Line 1651
    mul.s	$f24,$f24,$f5
    # Line 1650
    mul.s	$f22,$f22,$f5
.L0db9b308:
    # Line 1658
    and	$t2,$t0,$t2
    or	$at,$t2,$a7
    beqz	$at,.L0db9bc70
    # Line 1669
    and	$a0,$a6,$a0
    # Line 1663
    lwc1	$f2,164($s1)
    # Line 1662
    lwc1	$f1,160($s1)
    # Line 1663
    mul.s	$f2,$f2,$f6
    # Line 1661
    lwc1	$f0,156($s1)
    # Line 1662
    mul.s	$f1,$f1,$f6
    # Line 1661
    mul.s	$f0,$f0,$f6
    # Line 1663
    add.s	$f20,$f2,$f20
    # Line 1662
    add.s	$f24,$f1,$f24
    # Line 1661
    add.s	$f22,$f0,$f22
.L0db9b33c:
    # Line 1669
    or	$at,$t1,$a0
    beqz	$at,.L0db9bcc4
    # Line 1678
    ld	$v1,480($sp)
    # Line 1674
    lwc1	$f1,164($s1)
    # Line 1673
    lwc1	$f0,160($s1)
    # Line 1674
    mul.s	$f1,$f1,$f7
    # Line 1672
    lwc1	$f3,156($s1)
    # Line 1673
    mul.s	$f0,$f0,$f7
    # Line 1672
    mul.s	$f3,$f3,$f7
    # Line 1674
    add.s	$f20,$f1,$f20
    # Line 1673
    add.s	$f24,$f0,$f24
    # Line 1672
    add.s	$f22,$f3,$f22
.L0db9b36c:
    # Line 1680
    or	$a1,$t2,$a0
    beqz	$a1,.L0db9bd10
    # Line 1689
    ld	$v0,480($sp)
    # Line 1685
    lwc1	$f0,164($s1)
    # Line 1684
    lwc1	$f3,160($s1)
    # Line 1685
    mul.s	$f0,$f0,$f8
    # Line 1683
    lwc1	$f2,156($s1)
    # Line 1684
    mul.s	$f3,$f3,$f8
    # Line 1683
    mul.s	$f2,$f2,$f8
    # Line 1685
    add.s	$f20,$f0,$f20
    # Line 1684
    add.s	$f24,$f3,$f24
    # Line 1683
    add.s	$f22,$f2,$f22
.L0db9b39c:
    # Line 1697
    ld	$v0,360($sp)
    sd	$zero,280($sp)
    li	$at,10497
    addiu	$v0,$v0,100
    sd	$v0,408($sp)
    # Line 1698
    lw	$v1,44($v0)
    # Line 1699
    lw	$a1,0($v0)
    # Line 1704
    ldc1	$f9,128($sp)
    sd	$v1,296($sp)
    # Line 1703
    lwc1	$f0,32($v0)
    # Line 1701
    lw	$v1,24($v0)
    # Line 1700
    lw	$v0,20($v0)
    # Line 1704
    mul.s	$f9,$f9,$f0
    sd	$a1,288($sp)
    sdc1	$f0,168($sp)
    # Line 1700
    addiu	$v0,$v0,-1
    # Line 1701
    addiu	$v1,$v1,-1
    sd	$v1,472($sp)
    sd	$v0,496($sp)
    # Line 1704
    mov.s	$f1,$f9
    beq	$at,$s0,.L0db9c050
    sdc1	$f9,240($sp)
    # Line 1709
    c.lt.s	$f9,$f26
    nop
    bc1f	.L0db9b92c
    # Line 1711
    mov.s	$f1,$f26
    sdc1	$f26,240($sp)
.L0db9b408:
    # Line 1713
    ldc1	$f2,144($sp)
    ldc1	$f12,240($sp)
    # Line 1714
    # lw $t9, -17792($gp) # &floorf
    # Line 1713
    sub.s	$f12,$f12,$f2
    # Line 1714
    jal	floorf
    sdc1	$f12,240($sp)
    trunc.w.s	$f3,$f0
    mfc1	$s2,$f3
    nop
    # Line 1715
    addiu	$v1,$s2,1
    sd	$v1,392($sp)
.L0db9b434:
    ld	$v0,408($sp)
    # Line 1719
    ldc1	$f5,152($sp)
    # Line 1718
    lwc1	$f0,36($v0)
    # Line 1719
    mul.s	$f5,$f5,$f0
    # Line 1726
    mov.s	$f1,$f26
    li	$a1,10497
    # Line 1719
    ld	$at,384($sp)
    sdc1	$f0,184($sp)
    mov.s	$f0,$f5
    beq	$a1,$at,.L0db9c094
    sdc1	$f5,256($sp)
    # Line 1724
    c.lt.s	$f5,$f26
    nop
    bc1f	.L0db9b948
    ldc1	$f3,184($sp)
    sdc1	$f26,256($sp)
.L0db9b474:
    # Line 1728
    ldc1	$f2,144($sp)
    ldc1	$f12,256($sp)
    # Line 1729
    # lw $t9, -17792($gp) # &floorf
    # Line 1728
    sub.s	$f12,$f12,$f2
    # Line 1729
    jal	floorf
    sdc1	$f12,256($sp)
    trunc.w.s	$f3,$f0
    mfc1	$v1,$f3
    nop
    sd	$v1,488($sp)
    # Line 1730
    addiu	$v1,$v1,1
    sd	$v1,480($sp)
.L0db9b4a4:
    # Line 1733
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    ldc1	$f12,240($sp)
    ldc1	$f4,240($sp)
    # Line 1734
    # lw $t9, -17792($gp) # &floorf
    # Line 1733
    sub.s	$f4,$f4,$f0
    # Line 1734
    ldc1	$f12,256($sp)
    jal	floorf
    sdc1	$f4,248($sp)
    li	$a4,-1
    li	$a5,10497
    ldc1	$f6,536($sp)
    # Line 1735
    ldc1	$f8,248($sp)
    ldc1	$f1,176($sp)
    # Line 1736
    ldc1	$f10,160($sp)
    ldc1	$f9,256($sp)
    # Line 1735
    sub.s	$f2,$f1,$f8
    # Line 1736
    mul.s	$f8,$f10,$f8
    ldc1	$f5,544($sp)
    sub.s	$f9,$f9,$f0
    # Line 1767
    ld	$a7,488($sp)
    # Line 1736
    mul.s	$f10,$f10,$f2
    ld	$a0,480($sp)
    sub.s	$f0,$f1,$f9
    mul.s	$f7,$f9,$f8
    # Line 1759
    ld	$v1,480($sp)
    li	$at,2
    # Line 1736
    mul.s	$f8,$f8,$f0
    ld	$t0,496($sp)
    ld	$a1,280($sp)
    mul.s	$f9,$f9,$f10
    # Line 1767
    nor	$t0,$t0,$zero
    # Line 1736
    beq	$a1,$at,.L0db9bb1c
    mul.s	$f10,$f10,$f0
    ld	$t2,392($sp)
    # Line 1767
    ld	$a6,472($sp)
    and	$t1,$t0,$s2
    nor	$a6,$a6,$zero
    and	$a7,$a6,$a7
    or	$v0,$t1,$a7
    beqz	$v0,.L0db9be50
    ld	$v1,296($sp)
    # Line 1776
    lwc1	$f2,164($s1)
    # Line 1775
    lwc1	$f1,160($s1)
    # Line 1776
    mul.s	$f2,$f2,$f10
    # Line 1774
    lwc1	$f0,156($s1)
    # Line 1775
    mul.s	$f1,$f1,$f10
    # Line 1774
    mul.s	$f0,$f0,$f10
    # Line 1776
    add.s	$f20,$f2,$f20
    # Line 1775
    add.s	$f24,$f1,$f24
    # Line 1774
    add.s	$f22,$f0,$f22
.L0db9b570:
    # Line 1782
    and	$t2,$t0,$t2
    or	$at,$t2,$a7
    beqz	$at,.L0db9bd60
    # Line 1793
    and	$a0,$a6,$a0
    # Line 1787
    lwc1	$f1,164($s1)
    # Line 1786
    lwc1	$f0,160($s1)
    # Line 1787
    mul.s	$f1,$f1,$f8
    # Line 1785
    lwc1	$f3,156($s1)
    # Line 1786
    mul.s	$f0,$f0,$f8
    # Line 1785
    mul.s	$f3,$f3,$f8
    # Line 1787
    add.s	$f20,$f1,$f20
    # Line 1786
    add.s	$f24,$f0,$f24
    # Line 1785
    add.s	$f22,$f3,$f22
.L0db9b5a4:
    # Line 1793
    or	$at,$t1,$a0
    beqz	$at,.L0db9bdb4
    # Line 1802
    ld	$a1,480($sp)
    # Line 1798
    lwc1	$f0,164($s1)
    # Line 1797
    lwc1	$f3,160($s1)
    # Line 1798
    mul.s	$f0,$f0,$f9
    # Line 1796
    lwc1	$f2,156($s1)
    # Line 1797
    mul.s	$f3,$f3,$f9
    # Line 1796
    mul.s	$f2,$f2,$f9
    # Line 1798
    add.s	$f20,$f0,$f20
    # Line 1797
    add.s	$f24,$f3,$f24
    # Line 1796
    add.s	$f22,$f2,$f22
.L0db9b5d4:
    # Line 1804
    or	$a1,$t2,$a0
    beqz	$a1,.L0db9be00
    # Line 1813
    ld	$v1,480($sp)
    # Line 1809
    lwc1	$f3,164($s1)
    # Line 1808
    lwc1	$f2,160($s1)
    # Line 1809
    mul.s	$f3,$f3,$f7
    # Line 1807
    lwc1	$f1,156($s1)
    # Line 1808
    mul.s	$f2,$f2,$f7
    # Line 1807
    mul.s	$f1,$f1,$f7
    # Line 1809
    add.s	$f20,$f3,$f20
    # Line 1808
    add.s	$f24,$f2,$f24
    # Line 1809
    b	.L0db9a46c
    # Line 1807
    add.s	$f22,$f1,$f22
.L0db9b608:
    # Line 1423
    addiu	$s4,$sp,16
    li	$a3,4
    # Line 1422
    mov.s	$f20,$f26
    mov.s	$f24,$f26
    # Line 1423
    move	$s0,$zero
    addiu	$t1,$sp,0
.L0db9b620:
    sll	$a6,$s0,0x2
    ld	$a1,296($sp)
    lw	$a0,0($s4)
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s8
    sllv	$a0,$a0,$a1
    # Line 1426
    lw	$a1,0($t1)
    lw	$v0,12($t1)
    lw	$v1,8($t1)
    addu	$a1,$a1,$a0
    addu	$v0,$v0,$a0
    addu	$v1,$v1,$a0
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    lw	$v1,4($t1)
    sll	$a2,$v0,0x2
    subu	$a2,$a2,$v0
    addu	$v1,$v1,$a0
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$a1,288($sp)
    lwc1	$f3,12($a6)
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a1
    # Line 1427
    lwc1	$f1,4($a2)
    # Line 1428
    lwc1	$f12,8($a2)
    # Line 1427
    mul.s	$f1,$f1,$f3
    # Line 1426
    lwc1	$f8,8($a6)
    # Line 1428
    mul.s	$f12,$f12,$f3
    # Line 1426
    sll	$at,$at,0x2
    addu	$at,$at,$a1
    # Line 1427
    lwc1	$f4,4($at)
    mul.s	$f4,$f4,$f8
    # Line 1426
    lwc1	$f9,0($a6)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    # Line 1427
    lwc1	$f11,4($v1)
    mul.s	$f11,$f11,$f9
    # Line 1428
    lwc1	$f2,8($v1)
    # Line 1426
    lwc1	$f10,4($a6)
    sll	$v0,$v0,0x2
    # Line 1428
    mul.s	$f2,$f2,$f9
    # Line 1426
    addu	$v0,$v0,$a1
    # Line 1428
    lwc1	$f0,8($v0)
    lwc1	$f7,8($at)
    mul.s	$f0,$f0,$f10
    add.s	$f2,$f2,$f20
    mul.s	$f20,$f7,$f8
    # Line 1426
    lwc1	$f7,0($v1)
    mul.s	$f7,$f7,$f9
    # Line 1428
    add.s	$f0,$f0,$f2
    # Line 1427
    lwc1	$f9,4($v0)
    # Line 1428
    add.s	$f20,$f20,$f0
    # Line 1427
    mul.s	$f9,$f9,$f10
    add.s	$f24,$f11,$f24
    # Line 1426
    lwc1	$f2,0($v0)
    # Line 1428
    add.s	$f20,$f12,$f20
    # Line 1426
    mul.s	$f2,$f2,$f10
    add.s	$f7,$f7,$f22
    lwc1	$f0,0($at)
    # Line 1427
    add.s	$f24,$f9,$f24
    # Line 1426
    mul.s	$f0,$f0,$f8
    add.s	$f2,$f2,$f7
    lwc1	$f22,0($a2)
    # Line 1427
    add.s	$f24,$f4,$f24
    # Line 1426
    mul.s	$f22,$f22,$f3
    add.s	$f0,$f0,$f2
    # Line 1427
    add.s	$f24,$f1,$f24
    # Line 1423
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 1426
    add.s	$f22,$f22,$f0
    # Line 1423
    bne	$s0,$a3,.L0db9b620
    addiu	$t1,$sp,0
    b	.L0db9a470
    # Line 1815
    ld	$at,528($sp)
.L0db9b754:
    nop
    # Line 1311
    bc1f	.L0db9b960
    nop
    sd	$a2,280($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f4,168($sp)
    # Line 1313
    b	.L0db9a94c
    li	$s2,12
.L0db9b778:
    nop
    # Line 1357
    bc1f	.L0db9b980
    # Line 1359
    li	$a1,12
    sdc1	$f4,184($sp)
    b	.L0db9a13c
    sd	$a1,376($sp)
.L0db9b790:
    # Line 1528
    ld	$v1,288($sp)
    ld	$v0,296($sp)
    sllv	$v0,$a0,$v0
    addu	$v0,$v0,$s2
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 1530
    lwc1	$f20,8($at)
    # Line 1529
    lwc1	$f24,4($at)
    # Line 1530
    mul.s	$f20,$f20,$f9
    # Line 1528
    lwc1	$f22,0($at)
    # Line 1529
    mul.s	$f24,$f24,$f9
    b	.L0db9a864
    # Line 1528
    mul.s	$f22,$f22,$f9
.L0db9b7d0:
    # Line 1539
    ld	$at,288($sp)
    sllv	$a1,$a0,$a1
    addu	$a1,$a1,$a3
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 1541
    lwc1	$f2,8($v1)
    # Line 1540
    lwc1	$f1,4($v1)
    # Line 1541
    mul.s	$f2,$f2,$f4
    # Line 1539
    lwc1	$f0,0($v1)
    # Line 1540
    mul.s	$f1,$f1,$f4
    # Line 1539
    mul.s	$f0,$f0,$f4
    # Line 1541
    add.s	$f20,$f2,$f20
    # Line 1540
    add.s	$f24,$f1,$f24
    b	.L0db9a898
    # Line 1539
    add.s	$f22,$f0,$f22
.L0db9b818:
    # Line 1550
    ld	$v1,288($sp)
    ld	$v0,296($sp)
    sllv	$v0,$a2,$v0
    addu	$v0,$v0,$s2
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 1552
    lwc1	$f1,8($at)
    # Line 1551
    lwc1	$f0,4($at)
    # Line 1552
    mul.s	$f1,$f1,$f4
    # Line 1550
    lwc1	$f3,0($at)
    # Line 1551
    mul.s	$f0,$f0,$f4
    # Line 1550
    mul.s	$f3,$f3,$f4
    # Line 1552
    add.s	$f20,$f1,$f20
    # Line 1551
    add.s	$f24,$f0,$f24
    b	.L0db9a8cc
    # Line 1550
    add.s	$f22,$f3,$f22
.L0db9b864:
    # Line 1561
    ld	$at,288($sp)
    ld	$a1,296($sp)
    sllv	$a1,$a2,$a1
    addu	$a1,$a1,$a3
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 1563
    lwc1	$f0,8($v1)
    # Line 1562
    lwc1	$f3,4($v1)
    # Line 1563
    mul.s	$f0,$f0,$f4
    # Line 1561
    lwc1	$f2,0($v1)
    # Line 1562
    mul.s	$f3,$f3,$f4
    # Line 1561
    mul.s	$f2,$f2,$f4
    # Line 1563
    add.s	$f20,$f0,$f20
    # Line 1562
    add.s	$f24,$f3,$f24
    b	.L0db9a46c
    # Line 1561
    add.s	$f22,$f2,$f22
.L0db9b8b0:
    # Line 1307
    cvt.d.s	$f1,$f4
    c.lt.d	$f1,$f7
    nop
    bc1fl	.L0db9a950
    sd	$a3,408($sp)
    b	.L0db9a928
    dmtc1	$zero,$f0
.L0db9b8cc:
    # Line 1353
    cvt.d.s	$f2,$f5
    c.lt.d	$f2,$f6
    nop
    bc1f	.L0db9a13c
    sd	$a3,376($sp)
    b	.L0db9a124
    dmtc1	$zero,$f0
.L0db9b8e8:
    # Line 1587
    c.lt.s	$f3,$f9
    nop
    bc1fl	.L0db9b1cc
    sdc1	$f5,544($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f7,128($sp)
    sdc1	$f4,160($sp)
    sdc1	$f8,136($sp)
    b	.L0db9b1c8
    ldc1	$f20,168($sp)
.L0db9b914:
    # Line 1602
    c.lt.s	$f0,$f5
    nop
    bc1f	.L0db9b240
    # Line 1604
    ldc1	$f23,144($sp)
    b	.L0db9b23c
    ldc1	$f22,184($sp)
.L0db9b92c:
    ldc1	$f1,168($sp)
    # Line 1711
    c.lt.s	$f1,$f9
    nop
    bc1f	.L0db9b408
    ldc1	$f2,168($sp)
    b	.L0db9b408
    sdc1	$f2,240($sp)
.L0db9b948:
    # Line 1726
    c.lt.s	$f3,$f5
    nop
    bc1f	.L0db9b474
    ldc1	$f0,184($sp)
    b	.L0db9b474
    sdc1	$f0,256($sp)
.L0db9b960:
    # Line 1313
    beqzl	$a0,.L0db9be9c
    # Line 1315
    cvt.d.s	$f10,$f4
    sd	$a2,280($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f4,168($sp)
    b	.L0db9a94c
    li	$s2,8
.L0db9b980:
    # Line 1359
    beqz	$a0,.L0db9bec4
    # Line 1365
    li	$a1,7
    sdc1	$f4,184($sp)
    # Line 1361
    b	.L0db9a13c
    sd	$at,376($sp)
.L0db9b994:
    ldc1	$f22,144($sp)
    # Line 1484
    # lw $t9, -17792($gp) # &floorf
    # Line 1483
    sub.s	$f22,$f9,$f22
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    # Line 1484
    jal	floorf
    mov.s	$f12,$f22
    trunc.w.s	$f0,$f0
    ld	$v1,496($sp)
    mfc1	$s2,$f0
    ld	$a2,384($sp)
    ld	$a0,408($sp)
    and	$s2,$s2,$v1
    # Line 1485
    addiu	$v0,$s2,1
    and	$v0,$v0,$v1
    b	.L0db9a77c
    sd	$v0,392($sp)
.L0db9b9d8:
    ldc1	$f20,144($sp)
    # Line 1498
    # lw $t9, -17792($gp) # &floorf
    # Line 1497
    sub.s	$f20,$f5,$f20
    # Line 1498
    jal	floorf
    mov.s	$f12,$f20
    trunc.w.s	$f0,$f0
    ld	$v0,472($sp)
    mfc1	$at,$f0
    nop
    and	$at,$at,$v0
    sd	$at,488($sp)
    # Line 1499
    addiu	$at,$at,1
    and	$at,$at,$v0
    b	.L0db9a7d4
    sd	$at,480($sp)
.L0db9ba14:
    sd	$a2,552($sp)
    ld	$v0,296($sp)
    # Line 1641
    ld	$v1,392($sp)
    ld	$a0,288($sp)
    sllv	$at,$at,$v0
    addu	$a1,$at,$v1
    sll	$a2,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a0
    addu	$a1,$a1,$a2
    # Line 1642
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f8
    # Line 1641
    addu	$at,$at,$s2
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    addu	$a2,$a2,$at
    # Line 1642
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f7
    # Line 1643
    lwc1	$f2,8($a1)
    # Line 1641
    ld	$at,488($sp)
    # Line 1643
    mul.s	$f2,$f2,$f8
    # Line 1641
    sllv	$at,$at,$v0
    addu	$v1,$at,$v1
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$v0,$v0,$v1
    # Line 1642
    lwc1	$f4,4($v0)
    mul.s	$f4,$f4,$f6
    # Line 1643
    lwc1	$f0,8($v0)
    # Line 1641
    addu	$at,$at,$s2
    # Line 1643
    mul.s	$f0,$f0,$f6
    # Line 1641
    sll	$v1,$at,0x1
    sll	$at,$at,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$at,$at,$v1
    # Line 1643
    lwc1	$f20,8($at)
    lwc1	$f22,8($a2)
    mul.s	$f20,$f20,$f5
    mul.s	$f22,$f22,$f7
    # Line 1642
    lwc1	$f24,4($at)
    mul.s	$f24,$f24,$f5
    # Line 1643
    add.s	$f20,$f20,$f0
    # Line 1641
    lwc1	$f0,0($v0)
    mul.s	$f0,$f0,$f6
    # Line 1643
    add.s	$f20,$f20,$f22
    # Line 1641
    lwc1	$f22,0($at)
    mul.s	$f22,$f22,$f5
    # Line 1643
    add.s	$f20,$f20,$f2
    # Line 1641
    lwc1	$f2,0($a2)
    # Line 1642
    add.s	$f24,$f24,$f4
    # Line 1641
    mul.s	$f2,$f2,$f7
    add.s	$f22,$f22,$f0
    lwc1	$f0,0($a1)
    # Line 1642
    add.s	$f24,$f24,$f3
    # Line 1641
    mul.s	$f0,$f0,$f8
    add.s	$f22,$f22,$f2
    # Line 1642
    add.s	$f24,$f24,$f1
    ld	$a2,552($sp)
    # Line 1643
    b	.L0db9b39c
    # Line 1641
    add.s	$f22,$f22,$f0
.L0db9bb1c:
    ld	$v0,296($sp)
    # Line 1765
    ld	$a1,288($sp)
    # Line 1759
    sllv	$v1,$v1,$v0
    addu	$a0,$v1,$s2
    sll	$at,$a0,0x2
    sll	$a0,$a0,0x1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    addu	$at,$at,$a0
    # Line 1760
    lwc1	$f3,4($at)
    # Line 1765
    ld	$a0,392($sp)
    # Line 1760
    mul.s	$f3,$f3,$f9
    sd	$a2,552($sp)
    # Line 1765
    addu	$v1,$v1,$a0
    sll	$a2,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$a2,$a2,$v1
    # Line 1766
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f7
    # Line 1761
    lwc1	$f0,8($at)
    # Line 1747
    ld	$v1,488($sp)
    # Line 1761
    mul.s	$f0,$f0,$f9
    # Line 1747
    sllv	$v1,$v1,$v0
    # Line 1753
    addu	$a0,$v1,$a0
    # Line 1747
    addu	$v1,$v1,$s2
    # Line 1753
    sll	$v0,$a0,0x2
    sll	$a0,$a0,0x1
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    addu	$v0,$v0,$a0
    # Line 1747
    sll	$a0,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a1
    addu	$v1,$v1,$a0
    # Line 1749
    lwc1	$f12,8($v1)
    # Line 1755
    lwc1	$f4,8($v0)
    # Line 1749
    mul.s	$f12,$f12,$f10
    # Line 1754
    lwc1	$f11,4($v0)
    # Line 1755
    mul.s	$f4,$f4,$f8
    # Line 1754
    mul.s	$f11,$f11,$f8
    # Line 1748
    lwc1	$f2,4($v1)
    # Line 1749
    add.s	$f12,$f12,$f20
    # Line 1748
    mul.s	$f2,$f2,$f10
    # Line 1767
    lwc1	$f20,8($a2)
    # Line 1755
    add.s	$f4,$f4,$f12
    # Line 1767
    mul.s	$f20,$f20,$f7
    # Line 1761
    add.s	$f0,$f0,$f4
    # Line 1747
    lwc1	$f4,0($v1)
    mul.s	$f4,$f4,$f10
    # Line 1748
    add.s	$f24,$f2,$f24
    # Line 1753
    lwc1	$f2,0($v0)
    # Line 1767
    add.s	$f20,$f20,$f0
    # Line 1753
    mul.s	$f2,$f2,$f8
    # Line 1747
    add.s	$f4,$f4,$f22
    # Line 1759
    lwc1	$f0,0($at)
    # Line 1754
    add.s	$f24,$f11,$f24
    # Line 1759
    mul.s	$f0,$f0,$f9
    # Line 1753
    add.s	$f2,$f2,$f4
    # Line 1765
    lwc1	$f22,0($a2)
    # Line 1760
    add.s	$f24,$f3,$f24
    # Line 1765
    mul.s	$f22,$f22,$f7
    # Line 1759
    add.s	$f0,$f0,$f2
    # Line 1766
    add.s	$f24,$f1,$f24
    ld	$a2,552($sp)
    # Line 1767
    b	.L0db9a46c
    # Line 1765
    add.s	$f22,$f22,$f0
.L0db9bc30:
    # Line 1656
    ld	$at,488($sp)
    sllv	$at,$at,$v0
    ld	$v0,288($sp)
    addu	$at,$at,$s2
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 1658
    lwc1	$f20,8($a1)
    # Line 1657
    lwc1	$f24,4($a1)
    # Line 1658
    mul.s	$f20,$f20,$f5
    # Line 1656
    lwc1	$f22,0($a1)
    # Line 1657
    mul.s	$f24,$f24,$f5
    b	.L0db9b308
    # Line 1656
    mul.s	$f22,$f22,$f5
.L0db9bc70:
    # Line 1667
    ld	$a1,488($sp)
    ld	$at,296($sp)
    sllv	$a1,$a1,$at
    ld	$at,392($sp)
    addu	$a1,$a1,$at
    ld	$at,288($sp)
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 1669
    lwc1	$f2,8($v1)
    # Line 1668
    lwc1	$f1,4($v1)
    # Line 1669
    mul.s	$f2,$f2,$f6
    # Line 1667
    lwc1	$f0,0($v1)
    # Line 1668
    mul.s	$f1,$f1,$f6
    # Line 1667
    mul.s	$f0,$f0,$f6
    # Line 1669
    add.s	$f20,$f2,$f20
    # Line 1668
    add.s	$f24,$f1,$f24
    b	.L0db9b33c
    # Line 1667
    add.s	$f22,$f0,$f22
.L0db9bcc4:
    ld	$a1,296($sp)
    # Line 1678
    sllv	$v1,$v1,$a1
    ld	$a1,288($sp)
    addu	$v1,$v1,$s2
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 1680
    lwc1	$f1,8($v0)
    # Line 1679
    lwc1	$f0,4($v0)
    # Line 1680
    mul.s	$f1,$f1,$f7
    # Line 1678
    lwc1	$f3,0($v0)
    # Line 1679
    mul.s	$f0,$f0,$f7
    # Line 1678
    mul.s	$f3,$f3,$f7
    # Line 1680
    add.s	$f20,$f1,$f20
    # Line 1679
    add.s	$f24,$f0,$f24
    b	.L0db9b36c
    # Line 1678
    add.s	$f22,$f3,$f22
.L0db9bd10:
    ld	$v1,296($sp)
    # Line 1689
    sllv	$v0,$v0,$v1
    ld	$v1,392($sp)
    addu	$v0,$v0,$v1
    ld	$v1,288($sp)
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 1691
    lwc1	$f0,8($at)
    # Line 1690
    lwc1	$f3,4($at)
    # Line 1691
    mul.s	$f0,$f0,$f8
    # Line 1689
    lwc1	$f2,0($at)
    # Line 1690
    mul.s	$f3,$f3,$f8
    # Line 1689
    mul.s	$f2,$f2,$f8
    # Line 1691
    add.s	$f20,$f0,$f20
    # Line 1690
    add.s	$f24,$f3,$f24
    b	.L0db9b39c
    # Line 1689
    add.s	$f22,$f2,$f22
.L0db9bd60:
    ld	$v0,296($sp)
    # Line 1791
    ld	$at,488($sp)
    sllv	$at,$at,$v0
    ld	$v0,392($sp)
    addu	$at,$at,$v0
    ld	$v0,288($sp)
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 1793
    lwc1	$f3,8($a1)
    # Line 1792
    lwc1	$f2,4($a1)
    # Line 1793
    mul.s	$f3,$f3,$f8
    # Line 1791
    lwc1	$f1,0($a1)
    # Line 1792
    mul.s	$f2,$f2,$f8
    # Line 1791
    mul.s	$f1,$f1,$f8
    # Line 1793
    add.s	$f20,$f3,$f20
    # Line 1792
    add.s	$f24,$f2,$f24
    b	.L0db9b5a4
    # Line 1791
    add.s	$f22,$f1,$f22
.L0db9bdb4:
    ld	$at,296($sp)
    # Line 1802
    sllv	$a1,$a1,$at
    ld	$at,288($sp)
    addu	$a1,$a1,$s2
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 1804
    lwc1	$f2,8($v1)
    # Line 1803
    lwc1	$f1,4($v1)
    # Line 1804
    mul.s	$f2,$f2,$f9
    # Line 1802
    lwc1	$f0,0($v1)
    # Line 1803
    mul.s	$f1,$f1,$f9
    # Line 1802
    mul.s	$f0,$f0,$f9
    # Line 1804
    add.s	$f20,$f2,$f20
    # Line 1803
    add.s	$f24,$f1,$f24
    b	.L0db9b5d4
    # Line 1802
    add.s	$f22,$f0,$f22
.L0db9be00:
    ld	$a1,296($sp)
    # Line 1813
    sllv	$v1,$v1,$a1
    ld	$a1,392($sp)
    addu	$v1,$v1,$a1
    ld	$a1,288($sp)
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 1815
    lwc1	$f1,8($v0)
    # Line 1814
    lwc1	$f0,4($v0)
    # Line 1815
    mul.s	$f1,$f1,$f7
    # Line 1813
    lwc1	$f3,0($v0)
    # Line 1814
    mul.s	$f0,$f0,$f7
    # Line 1813
    mul.s	$f3,$f3,$f7
    # Line 1815
    add.s	$f20,$f1,$f20
    # Line 1814
    add.s	$f24,$f0,$f24
    b	.L0db9a46c
    # Line 1813
    add.s	$f22,$f3,$f22
.L0db9be50:
    # Line 1780
    ld	$v0,488($sp)
    sllv	$v0,$v0,$v1
    ld	$v1,288($sp)
    addu	$v0,$v0,$s2
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 1782
    lwc1	$f0,8($at)
    # Line 1781
    lwc1	$f3,4($at)
    # Line 1782
    mul.s	$f0,$f0,$f10
    # Line 1780
    lwc1	$f2,0($at)
    # Line 1781
    mul.s	$f3,$f3,$f10
    # Line 1780
    mul.s	$f2,$f2,$f10
    # Line 1782
    add.s	$f20,$f0,$f20
    # Line 1781
    add.s	$f24,$f3,$f24
    b	.L0db9b570
    # Line 1780
    add.s	$f22,$f2,$f22
.L0db9be9c:
    # Line 1315
    c.lt.d	$f10,$f8
    nop
    bc1fl	.L0db9c0e0
    # Line 1317
    c.lt.s	$f4,$f20
    sd	$a2,280($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f4,168($sp)
    b	.L0db9a94c
    li	$s2,15
.L0db9bec4:
    # Line 1361
    cvt.d.s	$f8,$f4
    c.lt.d	$f8,$f7
    nop
    bc1f	.L0db9c104
    # Line 1367
    li	$at,3
    # Line 1363
    li	$a1,15
    sdc1	$f4,184($sp)
    b	.L0db9a13c
    sd	$a1,376($sp)
.L0db9bee8:
    # Line 1410
    addiu	$a2,$a2,8
    # Line 1413
    addiu	$a0,$a0,12
    # Line 1411
    lwc1	$f0,-4($a2)
    # Line 1413
    lwc1	$f3,-4($a0)
    li	$v0,3
    # Line 1412
    lwc1	$f2,-8($a0)
    # Line 1413
    mul.s	$f3,$f3,$f0
    xor	$at,$s0,$v1
    # Line 1411
    lwc1	$f1,-12($a0)
    # Line 1412
    mul.s	$f2,$f2,$f0
    # Line 1413
    subu	$at,$at,$v1
    sra	$v1,$s0,0x1f
    # Line 1411
    mul.s	$f1,$f1,$f0
    # Line 1410
    addiu	$s0,$s0,1
    # Line 1413
    add.s	$f20,$f3,$f20
    andi	$at,$at,0x3
    xor	$at,$at,$v1
    # Line 1412
    add.s	$f24,$f2,$f24
    # Line 1413
    subu	$at,$at,$v1
    beq	$at,$v0,.L0db9bfa8
    # Line 1411
    add.s	$f22,$f1,$f22
.L0db9bf3c:
    li	$a1,16
    # Line 1410
    beq	$s0,$a1,.L0db9b0b0
.L0db9bf44:
    # Line 1413
    addiu	$a0,$a0,12
    li	$v0,3
    sra	$v1,$s0,0x1f
    # Line 1411
    lwc1	$f3,0($a2)
    # Line 1413
    lwc1	$f2,-4($a0)
    xor	$at,$s0,$v1
    # Line 1412
    lwc1	$f1,-8($a0)
    # Line 1413
    mul.s	$f2,$f2,$f3
    subu	$at,$at,$v1
    # Line 1411
    lwc1	$f0,-12($a0)
    # Line 1412
    mul.s	$f1,$f1,$f3
    # Line 1413
    sra	$v1,$s0,0x1f
    # Line 1410
    addiu	$s0,$s0,1
    # Line 1411
    mul.s	$f0,$f0,$f3
    # Line 1413
    andi	$at,$at,0x3
    add.s	$f20,$f2,$f20
    xor	$at,$at,$v1
    subu	$at,$at,$v1
    # Line 1412
    add.s	$f24,$f1,$f24
    # Line 1413
    sra	$v1,$s0,0x1f
    bne	$at,$v0,.L0db9bee8
    # Line 1411
    add.s	$f22,$f0,$f22
    # Line 1415
    addu	$a0,$a3,$a0
    b	.L0db9bee8
    addiu	$a0,$a0,-48
.L0db9bfa8:
    addu	$a0,$a3,$a0
    b	.L0db9bf3c
    addiu	$a0,$a0,-48
.L0db9bfb4:
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    ldc1	$f20,144($sp)
    sdc1	$f7,128($sp)
    # Line 1583
    # lw $t9, -17792($gp) # &floorf
    # Line 1582
    sub.s	$f20,$f9,$f20
    sdc1	$f4,160($sp)
    sdc1	$f8,136($sp)
    # Line 1583
    jal	floorf
    mov.s	$f12,$f20
    trunc.w.s	$f0,$f0
    # Line 1585
    li	$at,1
    sd	$at,280($sp)
    # Line 1583
    ld	$at,496($sp)
    mfc1	$s2,$f0
    nop
    and	$s2,$s2,$at
    # Line 1584
    addiu	$a1,$s2,1
    and	$a1,$a1,$at
    # Line 1585
    b	.L0db9b204
    sd	$a1,392($sp)
.L0db9c008:
    ldc1	$f22,144($sp)
    # Line 1598
    # lw $t9, -17792($gp) # &floorf
    # Line 1597
    sub.s	$f22,$f5,$f22
    # Line 1598
    jal	floorf
    mov.s	$f12,$f22
    # Line 1600
    ld	$v1,280($sp)
    # Line 1598
    trunc.w.s	$f0,$f0
    # Line 1600
    addiu	$v1,$v1,1
    sd	$v1,280($sp)
    # Line 1598
    ld	$v1,472($sp)
    mfc1	$v0,$f0
    nop
    and	$v0,$v0,$v1
    sd	$v0,488($sp)
    # Line 1599
    addiu	$v0,$v0,1
    and	$v0,$v0,$v1
    # Line 1600
    b	.L0db9b268
    sd	$v0,480($sp)
.L0db9c050:
    ldc1	$f1,144($sp)
    # Line 1706
    sub.s	$f1,$f9,$f1
    # Line 1707
    # lw $t9, -17792($gp) # &floorf
    mov.s	$f12,$f1
    jal	floorf
    sdc1	$f1,240($sp)
    trunc.w.s	$f2,$f0
    # Line 1709
    li	$at,1
    sd	$at,280($sp)
    # Line 1707
    ld	$at,496($sp)
    mfc1	$s2,$f2
    nop
    and	$s2,$s2,$at
    # Line 1708
    addiu	$a1,$s2,1
    and	$a1,$a1,$at
    # Line 1709
    b	.L0db9b434
    sd	$a1,392($sp)
.L0db9c094:
    ldc1	$f3,144($sp)
    # Line 1721
    sub.s	$f3,$f5,$f3
    # Line 1722
    # lw $t9, -17792($gp) # &floorf
    mov.s	$f12,$f3
    jal	floorf
    sdc1	$f3,256($sp)
    # Line 1724
    ld	$v1,280($sp)
    # Line 1722
    trunc.w.s	$f4,$f0
    # Line 1724
    addiu	$v1,$v1,1
    sd	$v1,280($sp)
    # Line 1722
    ld	$v1,472($sp)
    mfc1	$v0,$f4
    nop
    and	$v0,$v0,$v1
    sd	$v0,488($sp)
    # Line 1723
    addiu	$v0,$v0,1
    and	$v0,$v0,$v1
    # Line 1724
    b	.L0db9b4a4
    sd	$v0,480($sp)
.L0db9c0e0:
    nop
    # Line 1317
    bc1fl	.L0db9c170
    # Line 1319
    c.lt.d	$f10,$f9
    sd	$a2,280($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f4,168($sp)
    b	.L0db9a94c
    li	$s2,7
.L0db9c104:
    # Line 1363
    c.lt.s	$f4,$f24
    nop
    bc1fl	.L0db9c194
    # Line 1365
    c.lt.d	$f8,$f5
    sdc1	$f4,184($sp)
    b	.L0db9a13c
    sd	$a1,376($sp)
.L0db9c120:
    # Line 1862
    move	$v0,$zero
    ld	$gp,432($sp)
    ld	$s0,320($sp)
    ld	$s1,424($sp)
    ld	$s2,304($sp)
    ld	$s3,336($sp)
    ld	$s4,344($sp)
    ld	$s5,328($sp)
    ld	$s6,440($sp)
    ld	$s7,368($sp)
    ld	$s8,352($sp)
    ldc1	$f20,192($sp)
    ldc1	$f22,200($sp)
    ldc1	$f24,208($sp)
    ldc1	$f26,216($sp)
    ld	$ra,312($sp)
    ldc1	$f28,232($sp)
    ldc1	$f30,224($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0db9c170:
    nop
    # Line 1319
    bc1fl	.L0db9c1ac
    # Line 1321
    c.lt.d	$f10,$f7
    sd	$a2,280($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f4,168($sp)
    b	.L0db9a94c
    li	$s2,3
.L0db9c194:
    nop
    # Line 1365
    bc1fl	.L0db9c1d0
    # Line 1367
    c.lt.d	$f8,$f6
    sdc1	$f4,184($sp)
    b	.L0db9a13c
    sd	$at,376($sp)
.L0db9c1ac:
    nop
    # Line 1321
    bc1fl	.L0db9a950
    sd	$a3,408($sp)
    sd	$a2,280($sp)
    sdc1	$f5,544($sp)
    sdc1	$f6,536($sp)
    sdc1	$f4,168($sp)
    b	.L0db9a94c
    # Line 1323
    li	$s2,1
.L0db9c1d0:
    nop
    # Line 1367
    bc1f	.L0db9a13c
    sd	$a3,376($sp)
    # Line 1369
    li	$v0,1
    sdc1	$f4,184($sp)
    b	.L0db9a13c
    sd	$v0,376($sp)
.end __glTextureRGB_F_LML_StippledSpan

# Function: __glTextureRGB_L_NML_Span
# Declared: Line 1872 (Source lines: 1873-2171)
# Address: 0x0db9c1ec - 0x0db9cd28 (Size: 2876 bytes, Frame: 160)
.globl __glTextureRGB_L_NML_Span
.ent __glTextureRGB_L_NML_Span
__glTextureRGB_L_NML_Span:
    # Line 1873
    addiu	$sp,$sp,-288
    sd	$s4,152($sp)
    sd	$s7,120($sp)
    sd	$s8,112($sp)
    sdc1	$f28,24($sp)
    sdc1	$f30,16($sp)
    sd	$ra,160($sp)
    sd	$s2,184($sp)
    move	$s2,$a0
    sdc1	$f26,48($sp)
    # Line 1903
    lwc1	$f26,30292($a0)
    sdc1	$f24,32($sp)
    # Line 1902
    lwc1	$f24,30288($a0)
    sdc1	$f22,40($sp)
    # Line 1901
    lwc1	$f22,30280($a0)
    sdc1	$f20,56($sp)
    # Line 1900
    lwc1	$f20,30276($a0)
    sd	$s1,136($sp)
    # Line 1898
    lw	$s1,30516($a0)
    sd	$s0,144($sp)
    # Line 1896
    lw	$s0,28264($a0)
    sd	$gp,192($sp)
    # Line 1881
    lwc1	$f0,3280($a0)
    sd	$s6,168($sp)
    # Line 1873
    lui	$s6,0x6
    addiu	$s6,$s6,9388
    sdc1	$f0,0($sp)
    addu	$gp,$t9,$s6
    sd	$s5,128($sp)
    # Line 1905
    lw	$s5,30300($a0)
    sd	$s3,176($sp)
    # Line 1894
    lw	$s3,2376($a0)
    # Line 1905
    addiu	$s5,$s5,-1
    bltz	$s5,.L0db9cc2c
    # Line 1894
    lw	$s3,0($s3)
    # Line 1905
    li	$a5,-1
    li	$a6,7681
    li	$a2,0x8062
    li	$a4,8448
    mtc1	$zero,$f5
    li	$s7,10497
    xori	$at,$s3,0x2101
    sltiu	$at,$at,1
    b	.L0db9c3f8
    sd	$at,200($sp)
.L0db9c2a0:
    # Line 2058
    trunc.w.s	$f0,$f8
    ldc1	$f6,72($sp)
    # Line 2054
    lw	$a0,236($s0)
    # Line 2058
    cvt.s.w	$f7,$f0
    mfc1	$t0,$f0
    # Line 2060
    sll	$s4,$a0,0x2
    subu	$s4,$s4,$a0
    # Line 2058
    addiu	$v1,$t0,1
    slt	$v0,$a0,$v1
    sub.s	$f7,$f8,$f7
    slti	$v1,$v1,0
    or	$v0,$v0,$v1
    beqz	$v0,.L0db9c87c
    sub.s	$f6,$f6,$f7
    # Line 2060
    sll	$s4,$s4,0x3
    addu	$s4,$s4,$a0
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$a7
    # Line 2061
    lw	$s8,20($s4)
    beq	$s7,$a3,.L0db9cb14
    lwc1	$f30,32($s4)
    # Line 2066
    mul.s	$f1,$f28,$f30
    trunc.w.s	$f1,$f1
    mfc1	$t0,$f1
    # Line 2065
    move	$a0,$s8
    # Line 2066
    bltz	$t0,.L0db9ca84
    move	$a3,$t0
    # Line 2067
    slt	$at,$t0,$a0
    bnezl	$at,.L0db9c320
    # Line 2070
    lw	$a0,24($s4)
    # Line 2068
    addiu	$a3,$a0,-1
.L0db9c31c:
    # Line 2070
    lw	$a0,24($s4)
.L0db9c320:
    beq	$s7,$s6,.L0db9cb48
    lwc1	$f28,36($s4)
    # Line 2075
    ldc1	$f2,8($sp)
    mul.s	$f2,$f2,$f28
    trunc.w.s	$f2,$f2
    mfc1	$t1,$f2
    # Line 2074
    move	$a7,$a0
    # Line 2075
    bltz	$t1,.L0db9ca8c
    move	$t0,$t1
    # Line 2076
    slt	$v0,$t1,$a7
    bnez	$v0,.L0db9c358
    # Line 2077
    addiu	$a1,$a0,-1
    addiu	$t0,$a7,-1
.L0db9c354:
    addiu	$a1,$a0,-1
.L0db9c358:
    addiu	$v1,$s8,-1
    nor	$v1,$v1,$zero
    nor	$a1,$a1,$zero
    and	$a1,$a1,$t0
    and	$v1,$v1,$a3
    or	$v1,$v1,$a1
    beqzl	$v1,.L0db9ca54
    # Line 2085
    lw	$a1,44($s4)
    # Line 2083
    lwc1	$f9,164($s0)
    # Line 2082
    lwc1	$f8,160($s0)
    # Line 2081
    lwc1	$f4,156($s0)
.L0db9c384:
    # Line 2132
    beq	$s3,$a4,.L0db9c7f0
.L0db9c388:
    # Line 2144
    move	$a0,$zero
    beq	$s3,$a2,.L0db9c6c0
    ld	$a1,200($sp)
    beq	$s3,$a6,.L0db9c6c0
    nop
.L0db9c39c:
    or	$a1,$a0,$a1
    beqz	$a1,.L0db9c818
    ldc1	$f0,72($sp)
    # Line 2147
    lwc1	$f1,30804($s2)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($s1)
    # Line 2148
    lwc1	$f0,30808($s2)
    mul.s	$f0,$f0,$f8
    swc1	$f0,4($s1)
    # Line 2149
    lwc1	$f3,30812($s2)
    mul.s	$f3,$f3,$f9
    swc1	$f3,8($s1)
.L0db9c3cc:
    # Line 1905
    addiu	$s5,$s5,-1
    # Line 2167
    lwc1	$f1,30448($s2)
    # Line 2166
    lwc1	$f0,30444($s2)
    # Line 2167
    add.s	$f26,$f1,$f26
    # Line 2165
    lwc1	$f3,30436($s2)
    # Line 2166
    add.s	$f24,$f0,$f24
    # Line 2164
    lwc1	$f2,30432($s2)
    # Line 2165
    add.s	$f22,$f3,$f22
    # Line 2168
    addiu	$s1,$s1,16
    # Line 1905
    beq	$s5,$a5,.L0db9cc2c
    # Line 2164
    add.s	$f20,$f2,$f20
.L0db9c3f8:
    # Line 1906
    lwc1	$f28,3284($s2)
    sdc1	$f28,72($sp)
    div.s	$f28,$f28,$f24
    mul.s	$f4,$f26,$f28
    lw	$s6,8($s0)
    lw	$a3,4($s0)
    lwc1	$f1,240($s0)
    mul.s	$f0,$f22,$f28
    lw	$a7,228($s0)
    # Line 2050
    mov.s	$f8,$f5
    # Line 1906
    c.le.s	$f4,$f1
    # Line 1916
    move	$s4,$a7
    # Line 1906
    mul.s	$f28,$f20,$f28
    bc1f	.L0db9c630
    sdc1	$f0,8($sp)
    # Line 1918
    lw	$a1,0($a7)
    sd	$zero,208($sp)
    # Line 1917
    lw	$v1,44($a7)
    sd	$a1,96($sp)
    # Line 1922
    lwc1	$f4,32($a7)
    # Line 1920
    lw	$v0,24($a7)
    # Line 1919
    lw	$at,20($a7)
    # Line 1923
    mul.s	$f6,$f28,$f4
    sd	$v1,104($sp)
    # Line 1919
    addiu	$at,$at,-1
    # Line 1920
    addiu	$v0,$v0,-1
    sd	$v0,80($sp)
    sd	$at,88($sp)
    # Line 1923
    beq	$s7,$a3,.L0db9ca94
    mov.s	$f30,$f6
    # Line 1928
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0db9c6c8
    # Line 1930
    c.lt.s	$f4,$f6
    mov.s	$f30,$f5
.L0db9c484:
    # Line 1932
    ldc1	$f29,0($sp)
.L0db9c488:
    # Line 1933
    # lw $t9, -17792($gp) # &floorf
    # Line 1932
    sub.s	$f30,$f30,$f29
    # Line 1933
    jal	floorf
    mov.s	$f12,$f30
    trunc.w.s	$f0,$f0
    mfc1	$s8,$f0
    mtc1	$zero,$f5
    # Line 1934
    addiu	$at,$s8,1
    sd	$at,216($sp)
.L0db9c4ac:
    # Line 1937
    lwc1	$f4,36($s4)
    # Line 1938
    ldc1	$f6,8($sp)
    mul.s	$f6,$f6,$f4
    beq	$s7,$s6,.L0db9cad4
    mov.s	$f28,$f6
    # Line 1943
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0db9c6dc
    # Line 1945
    c.lt.s	$f4,$f6
    mov.s	$f28,$f5
.L0db9c4d4:
    # Line 1947
    ldc1	$f7,0($sp)
.L0db9c4d8:
    # Line 1948
    # lw $t9, -17792($gp) # &floorf
    # Line 1947
    sub.s	$f28,$f28,$f7
    # Line 1948
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s6,$f0
    nop
    # Line 1949
    addiu	$s4,$s6,1
.L0db9c4f8:
    # Line 1952
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f30
    # Line 1953
    # lw $t9, -17792($gp) # &floorf
    # Line 1952
    sub.s	$f1,$f30,$f0
    # Line 1953
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f1,64($sp)
    li	$a2,0x8062
    li	$a4,8448
    li	$a5,-1
    # Line 1954
    ldc1	$f7,64($sp)
    # Line 1955
    sub.s	$f11,$f28,$f0
    # Line 1954
    ldc1	$f0,72($sp)
    li	$a6,7681
    mtc1	$zero,$f5
    sub.s	$f10,$f0,$f7
    # Line 1955
    mul.s	$f6,$f11,$f7
    ld	$a0,216($sp)
    sub.s	$f0,$f0,$f11
    mul.s	$f11,$f11,$f10
    ld	$v0,208($sp)
    mul.s	$f7,$f7,$f0
    li	$v1,2
    beq	$v0,$v1,.L0db9c6f0
    mul.s	$f10,$f10,$f0
    ld	$t0,88($sp)
    # Line 1986
    ld	$a3,80($sp)
    nor	$t0,$t0,$zero
    nor	$a3,$a3,$zero
    and	$a7,$a3,$s6
    and	$t1,$t0,$s8
    or	$a1,$t1,$a7
    beqz	$a1,.L0db9c938
    # Line 2001
    and	$t2,$t0,$a0
    # Line 1995
    lwc1	$f9,164($s0)
    # Line 1994
    lwc1	$f8,160($s0)
    # Line 1995
    mul.s	$f9,$f9,$f10
    # Line 1993
    lwc1	$f4,156($s0)
    # Line 1994
    mul.s	$f8,$f8,$f10
    # Line 1993
    mul.s	$f4,$f4,$f10
.L0db9c59c:
    # Line 2001
    or	$at,$t2,$a7
    beqz	$at,.L0db9c978
    # Line 2012
    and	$a7,$a3,$s4
    # Line 2006
    lwc1	$f2,164($s0)
    # Line 2005
    lwc1	$f1,160($s0)
    # Line 2006
    mul.s	$f2,$f2,$f7
    # Line 2004
    lwc1	$f0,156($s0)
    # Line 2005
    mul.s	$f1,$f1,$f7
    # Line 2004
    mul.s	$f0,$f0,$f7
    # Line 2006
    add.s	$f9,$f2,$f9
    # Line 2005
    add.s	$f8,$f1,$f8
    # Line 2004
    add.s	$f4,$f0,$f4
.L0db9c5cc:
    # Line 2012
    or	$v0,$t1,$a7
    beqz	$v0,.L0db9c9c4
    # Line 2021
    ld	$at,96($sp)
    # Line 2017
    lwc1	$f1,164($s0)
    # Line 2016
    lwc1	$f0,160($s0)
    # Line 2017
    mul.s	$f1,$f1,$f11
    # Line 2015
    lwc1	$f3,156($s0)
    # Line 2016
    mul.s	$f0,$f0,$f11
    # Line 2015
    mul.s	$f3,$f3,$f11
    # Line 2017
    add.s	$f9,$f1,$f9
    # Line 2016
    add.s	$f8,$f0,$f8
    # Line 2015
    add.s	$f4,$f3,$f4
.L0db9c5fc:
    # Line 2023
    or	$v1,$t2,$a7
    beqz	$v1,.L0db9ca0c
    ld	$v0,104($sp)
    # Line 2028
    lwc1	$f0,164($s0)
    # Line 2027
    lwc1	$f3,160($s0)
    # Line 2028
    mul.s	$f0,$f0,$f6
    # Line 2026
    lwc1	$f2,156($s0)
    # Line 2027
    mul.s	$f3,$f3,$f6
    # Line 2026
    mul.s	$f2,$f2,$f6
    # Line 2028
    add.s	$f9,$f0,$f9
    # Line 2027
    add.s	$f8,$f3,$f8
    # Line 2028
    b	.L0db9c384
    # Line 2026
    add.s	$f4,$f2,$f4
.L0db9c630:
    # Line 2034
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0db9c2a0
    # Line 2045
    move	$a0,$zero
    # Line 2046
    trunc.w.s	$f1,$f4
    mfc1	$t0,$f1
    nop
    sra	$t0,$t0,0x1
    beqz	$t0,.L0db9c68c
    li	$at,1
    addiu	$a0,$a0,1
.L0db9c65c:
    sra	$t0,$t0,0x1
    beqz	$t0,.L0db9c688
    nop
    addiu	$a0,$a0,1
    sra	$t0,$t0,0x1
    beqz	$t0,.L0db9c688
    nop
    addiu	$a0,$a0,1
    sra	$t0,$t0,0x1
    bnezl	$t0,.L0db9c65c
    addiu	$a0,$a0,1
.L0db9c688:
    li	$at,1
.L0db9c68c:
    # Line 2048
    sllv	$at,$at,$a0
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f4,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a0,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f0
    ldc1	$f0,0($sp)
    b	.L0db9c2a0
    mul.s	$f8,$f8,$f0
.L0db9c6c0:
    # Line 2144
    b	.L0db9c39c
    li	$a0,1
.L0db9c6c8:
    nop
    # Line 1930
    bc1f	.L0db9c488
    # Line 1932
    ldc1	$f29,0($sp)
    b	.L0db9c484
    # Line 1931
    mov.s	$f30,$f4
.L0db9c6dc:
    nop
    # Line 1945
    bc1f	.L0db9c4d8
    # Line 1947
    ldc1	$f7,0($sp)
    b	.L0db9c4d4
    # Line 1946
    mov.s	$f28,$f4
.L0db9c6f0:
    # Line 1984
    ld	$a1,96($sp)
    ld	$at,104($sp)
    sllv	$v0,$s4,$at
    addu	$a3,$v0,$a0
    sll	$a4,$a3,0x1
    sll	$a3,$a3,0x2
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a1
    addu	$a3,$a3,$a4
    # Line 1985
    lwc1	$f13,4($a3)
    mul.s	$f13,$f13,$f6
    # Line 1984
    addu	$v0,$v0,$s8
    sll	$a4,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a1
    addu	$a4,$a4,$v0
    # Line 1985
    lwc1	$f1,4($a4)
    mul.s	$f1,$f1,$f11
    # Line 1986
    lwc1	$f0,8($a3)
    mul.s	$f0,$f0,$f6
    # Line 1984
    sllv	$at,$s6,$at
    addu	$v1,$at,$a0
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 1985
    lwc1	$f2,4($v0)
    mul.s	$f2,$f2,$f7
    # Line 1986
    lwc1	$f12,8($v0)
    # Line 1984
    addu	$at,$at,$s8
    # Line 1986
    mul.s	$f12,$f12,$f7
    # Line 1984
    sll	$v1,$at,0x1
    sll	$at,$at,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 1986
    lwc1	$f9,8($at)
    lwc1	$f3,8($a4)
    mul.s	$f9,$f9,$f10
    # Line 1985
    lwc1	$f8,4($at)
    # Line 1986
    mul.s	$f3,$f3,$f11
    # Line 1985
    mul.s	$f8,$f8,$f10
    # Line 1984
    lwc1	$f4,0($at)
    # Line 1986
    add.s	$f9,$f9,$f12
    # Line 1984
    mul.s	$f4,$f4,$f10
    lwc1	$f12,0($v0)
    # Line 1986
    add.s	$f9,$f9,$f3
    # Line 1984
    mul.s	$f12,$f12,$f7
    # Line 1986
    add.s	$f9,$f9,$f0
    # Line 1984
    lwc1	$f0,0($a4)
    # Line 1985
    add.s	$f8,$f8,$f2
    # Line 1984
    mul.s	$f0,$f0,$f11
    add.s	$f4,$f4,$f12
    lwc1	$f12,0($a3)
    # Line 1985
    add.s	$f8,$f8,$f1
    # Line 1984
    mul.s	$f12,$f12,$f6
    add.s	$f4,$f4,$f0
    # Line 2132
    li	$a1,8448
    # Line 1985
    add.s	$f8,$f8,$f13
    li	$a4,8448
    # Line 2132
    bne	$s3,$a1,.L0db9c388
    # Line 1984
    add.s	$f4,$f4,$f12
.L0db9c7f0:
    # Line 2141
    lwc1	$f1,4($s1)
    # Line 2142
    lwc1	$f2,8($s1)
    # Line 2141
    mul.s	$f1,$f1,$f8
    # Line 2140
    lwc1	$f0,0($s1)
    # Line 2142
    mul.s	$f2,$f2,$f9
    # Line 2140
    mul.s	$f0,$f0,$f4
    # Line 2142
    swc1	$f2,8($s1)
    # Line 2141
    swc1	$f1,4($s1)
    # Line 2142
    b	.L0db9c3cc
    # Line 2140
    swc1	$f0,0($s1)
.L0db9c818:
    # Line 2157
    sub.s	$f0,$f0,$f4
    lwc1	$f3,0($s1)
    # Line 2155
    lw	$at,2376($s2)
    # Line 2157
    mul.s	$f3,$f3,$f0
    lwc1	$f0,4($at)
    mul.s	$f0,$f0,$f4
    add.s	$f3,$f3,$f0
    swc1	$f3,0($s1)
    # Line 2158
    lwc1	$f2,3284($s2)
    sub.s	$f2,$f2,$f8
    lwc1	$f1,4($s1)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,8($at)
    mul.s	$f2,$f2,$f8
    add.s	$f1,$f1,$f2
    swc1	$f1,4($s1)
    # Line 2159
    lwc1	$f0,3284($s2)
    sub.s	$f0,$f0,$f9
    lwc1	$f3,8($s1)
    mul.s	$f3,$f3,$f0
    lwc1	$f0,12($at)
    mul.s	$f0,$f0,$f9
    add.s	$f3,$f3,$f0
    b	.L0db9c3cc
    swc1	$f3,8($s1)
.L0db9c87c:
    # Line 2093
    sll	$a0,$t0,0x2
    subu	$a0,$a0,$t0
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$t0
    sll	$a0,$a0,0x2
    addu	$a0,$a7,$a0
    move	$s4,$a0
    # Line 2094
    lw	$s8,20($a0)
    beq	$s7,$a3,.L0db9cc7c
    lwc1	$f30,32($a0)
    # Line 2099
    mul.s	$f1,$f28,$f30
    trunc.w.s	$f1,$f1
    mfc1	$t0,$f1
    # Line 2098
    move	$a3,$s8
    # Line 2099
    bltz	$t0,.L0db9cc1c
    move	$a7,$t0
    # Line 2100
    slt	$a1,$t0,$a3
    bnezl	$a1,.L0db9c8d0
    # Line 2103
    lw	$a3,24($s4)
    # Line 2101
    addiu	$a7,$a3,-1
.L0db9c8cc:
    # Line 2103
    lw	$a3,24($s4)
.L0db9c8d0:
    beq	$s7,$s6,.L0db9ccc8
    lwc1	$f28,36($s4)
    # Line 2108
    ldc1	$f2,8($sp)
    mul.s	$f2,$f2,$f28
    trunc.w.s	$f2,$f2
    mfc1	$t1,$f2
    # Line 2107
    move	$t2,$a3
    # Line 2108
    bltz	$t1,.L0db9cc24
    move	$t0,$t1
    # Line 2109
    slt	$at,$t1,$t2
    bnez	$at,.L0db9c908
    # Line 2110
    addiu	$v1,$a3,-1
    addiu	$t0,$t2,-1
.L0db9c904:
    addiu	$v1,$a3,-1
.L0db9c908:
    addiu	$v0,$s8,-1
    nor	$v0,$v0,$zero
    nor	$v1,$v1,$zero
    and	$v1,$v1,$t0
    and	$v0,$v0,$a7
    or	$v0,$v0,$v1
    beqz	$v0,.L0db9cb90
    # Line 2128
    sra	$a1,$t0,0x1
    # Line 2116
    lwc1	$f9,164($s0)
    # Line 2115
    lwc1	$f8,160($s0)
    # Line 2116
    b	.L0db9c384
    # Line 2114
    lwc1	$f4,156($s0)
.L0db9c938:
    # Line 1999
    ld	$at,96($sp)
    ld	$a1,104($sp)
    sllv	$a1,$s6,$a1
    addu	$a1,$a1,$s8
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 2001
    lwc1	$f9,8($v1)
    # Line 2000
    lwc1	$f8,4($v1)
    # Line 2001
    mul.s	$f9,$f9,$f10
    # Line 1999
    lwc1	$f4,0($v1)
    # Line 2000
    mul.s	$f8,$f8,$f10
    b	.L0db9c59c
    # Line 1999
    mul.s	$f4,$f4,$f10
.L0db9c978:
    # Line 2010
    ld	$v1,96($sp)
    ld	$v0,104($sp)
    sllv	$v0,$s6,$v0
    addu	$v0,$v0,$a0
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 2012
    lwc1	$f2,8($at)
    # Line 2011
    lwc1	$f1,4($at)
    # Line 2012
    mul.s	$f2,$f2,$f7
    # Line 2010
    lwc1	$f0,0($at)
    # Line 2011
    mul.s	$f1,$f1,$f7
    # Line 2010
    mul.s	$f0,$f0,$f7
    # Line 2012
    add.s	$f9,$f2,$f9
    # Line 2011
    add.s	$f8,$f1,$f8
    b	.L0db9c5cc
    # Line 2010
    add.s	$f4,$f0,$f4
.L0db9c9c4:
    ld	$a1,104($sp)
    # Line 2021
    sllv	$a1,$s4,$a1
    addu	$a1,$a1,$s8
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 2023
    lwc1	$f1,8($v1)
    # Line 2022
    lwc1	$f0,4($v1)
    # Line 2023
    mul.s	$f1,$f1,$f11
    # Line 2021
    lwc1	$f3,0($v1)
    # Line 2022
    mul.s	$f0,$f0,$f11
    # Line 2021
    mul.s	$f3,$f3,$f11
    # Line 2023
    add.s	$f9,$f1,$f9
    # Line 2022
    add.s	$f8,$f0,$f8
    b	.L0db9c5fc
    # Line 2021
    add.s	$f4,$f3,$f4
.L0db9ca0c:
    # Line 2032
    ld	$v1,96($sp)
    sllv	$v0,$s4,$v0
    addu	$v0,$v0,$a0
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 2034
    lwc1	$f0,8($at)
    # Line 2033
    lwc1	$f3,4($at)
    # Line 2034
    mul.s	$f0,$f0,$f6
    # Line 2032
    lwc1	$f2,0($at)
    # Line 2033
    mul.s	$f3,$f3,$f6
    # Line 2032
    mul.s	$f2,$f2,$f6
    # Line 2034
    add.s	$f9,$f0,$f9
    # Line 2033
    add.s	$f8,$f3,$f8
    b	.L0db9c384
    # Line 2032
    add.s	$f4,$f2,$f4
.L0db9ca54:
    # Line 2086
    lw	$v1,0($s4)
    # Line 2085
    sllv	$a1,$t0,$a1
    addu	$a1,$a1,$a3
    # Line 2086
    sll	$at,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$at,$at,0x2
    addu	$v1,$v1,$at
    addu	$v1,$v1,$a1
    # Line 2090
    lwc1	$f9,8($v1)
    # Line 2089
    lwc1	$f8,4($v1)
    b	.L0db9c384
    # Line 2088
    lwc1	$f4,0($v1)
.L0db9ca84:
    # Line 2067
    b	.L0db9c31c
    move	$a3,$zero
.L0db9ca8c:
    # Line 2076
    b	.L0db9c354
    move	$t0,$zero
.L0db9ca94:
    ldc1	$f30,0($sp)
    # Line 1926
    # lw $t9, -17792($gp) # &floorf
    # Line 1925
    sub.s	$f30,$f6,$f30
    # Line 1926
    jal	floorf
    mov.s	$f12,$f30
    trunc.w.s	$f0,$f0
    mtc1	$zero,$f5
    ld	$v0,88($sp)
    mfc1	$s8,$f0
    # Line 1928
    li	$at,1
    sd	$at,208($sp)
    # Line 1926
    and	$s8,$s8,$v0
    # Line 1927
    addiu	$at,$s8,1
    and	$at,$at,$v0
    # Line 1928
    b	.L0db9c4ac
    sd	$at,216($sp)
.L0db9cad4:
    ldc1	$f28,0($sp)
    # Line 1941
    # lw $t9, -17792($gp) # &floorf
    # Line 1940
    sub.s	$f28,$f6,$f28
    # Line 1941
    jal	floorf
    mov.s	$f12,$f28
    # Line 1943
    ld	$at,208($sp)
    # Line 1941
    trunc.w.s	$f0,$f0
    # Line 1943
    addiu	$at,$at,1
    sd	$at,208($sp)
    # Line 1941
    ld	$at,80($sp)
    mfc1	$s6,$f0
    nop
    and	$s6,$s6,$at
    # Line 1942
    addiu	$s4,$s6,1
    # Line 1943
    b	.L0db9c4f8
    # Line 1942
    and	$s4,$s4,$at
.L0db9cb14:
    # Line 2063
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f28
    sub.s	$f1,$f28,$f0
    mul.s	$f1,$f1,$f30
    li	$a2,0x8062
    trunc.w.s	$f1,$f1
    li	$a4,8448
    li	$a5,-1
    li	$a6,7681
    mfc1	$a3,$f1
    b	.L0db9c31c
    mtc1	$zero,$f5
.L0db9cb48:
    # Line 2072
    # lw $t9, -17792($gp) # &floorf
    sd	$a0,248($sp)
    sd	$a3,240($sp)
    jal	floorf
    ldc1	$f12,8($sp)
    ldc1	$f2,8($sp)
    sub.s	$f2,$f2,$f0
    mul.s	$f2,$f2,$f28
    li	$a2,0x8062
    li	$a4,8448
    li	$a5,-1
    trunc.w.s	$f2,$f2
    li	$a6,7681
    mtc1	$zero,$f5
    ld	$a3,240($sp)
    mfc1	$t0,$f2
    b	.L0db9c354
    ld	$a0,248($sp)
.L0db9cb90:
    # Line 2128
    lw	$at,144($a0)
    # Line 2129
    lw	$v1,100($a0)
    # Line 2128
    sllv	$a1,$a1,$at
    sra	$at,$a7,0x1
    addu	$a1,$a1,$at
    # Line 2129
    sll	$at,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$at,$at,0x2
    addu	$v1,$v1,$at
    addu	$v1,$v1,$a1
    # Line 2130
    lwc1	$f4,0($v1)
    # Line 2131
    lwc1	$f8,4($v1)
    # Line 2130
    mul.s	$f4,$f4,$f7
    # Line 2132
    lwc1	$f9,8($v1)
    # Line 2131
    mul.s	$f8,$f8,$f7
    # Line 2118
    lw	$a1,44($s4)
    # Line 2119
    lw	$v0,0($s4)
    # Line 2132
    mul.s	$f9,$f9,$f7
    # Line 2118
    sllv	$a1,$t0,$a1
    addu	$a1,$a1,$a7
    # Line 2119
    sll	$at,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$at,$at,0x2
    addu	$v0,$v0,$at
    addu	$v0,$v0,$a1
    # Line 2122
    lwc1	$f2,8($v0)
    # Line 2121
    lwc1	$f1,4($v0)
    # Line 2122
    mul.s	$f2,$f2,$f6
    # Line 2120
    lwc1	$f0,0($v0)
    # Line 2121
    mul.s	$f1,$f1,$f6
    # Line 2120
    mul.s	$f0,$f0,$f6
    # Line 2132
    add.s	$f9,$f9,$f2
    # Line 2131
    add.s	$f8,$f8,$f1
    b	.L0db9c384
    # Line 2130
    add.s	$f4,$f4,$f0
.L0db9cc1c:
    # Line 2100
    b	.L0db9c8cc
    move	$a7,$zero
.L0db9cc24:
    # Line 2109
    b	.L0db9c904
    move	$t0,$zero
.L0db9cc2c:
    # Line 2171
    move	$v0,$zero
    ld	$gp,192($sp)
    ld	$s0,144($sp)
    ld	$s1,136($sp)
    ld	$s2,184($sp)
    ld	$s3,176($sp)
    ld	$s4,152($sp)
    ld	$s5,128($sp)
    ld	$s6,168($sp)
    ld	$s7,120($sp)
    ld	$s8,112($sp)
    ldc1	$f20,56($sp)
    ldc1	$f22,40($sp)
    ldc1	$f24,32($sp)
    ldc1	$f26,48($sp)
    ld	$ra,160($sp)
    ldc1	$f28,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0db9cc7c:
    sd	$a0,256($sp)
    # Line 2096
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f6,232($sp)
    sdc1	$f7,224($sp)
    jal	floorf
    mov.s	$f12,$f28
    sub.s	$f0,$f28,$f0
    mul.s	$f0,$f0,$f30
    li	$a2,0x8062
    li	$a4,8448
    li	$a5,-1
    li	$a6,7681
    trunc.w.s	$f0,$f0
    mtc1	$zero,$f5
    ldc1	$f7,224($sp)
    ldc1	$f6,232($sp)
    mfc1	$a7,$f0
    b	.L0db9c8cc
    ld	$a0,256($sp)
.L0db9ccc8:
    sd	$a0,256($sp)
    sd	$a3,248($sp)
    sd	$a7,240($sp)
    # Line 2105
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f6,232($sp)
    sdc1	$f7,224($sp)
    jal	floorf
    ldc1	$f12,8($sp)
    ldc1	$f1,8($sp)
    sub.s	$f1,$f1,$f0
    mul.s	$f1,$f1,$f28
    li	$a2,0x8062
    li	$a4,8448
    li	$a5,-1
    li	$a6,7681
    mtc1	$zero,$f5
    ldc1	$f7,224($sp)
    trunc.w.s	$f1,$f1
    ldc1	$f6,232($sp)
    ld	$a7,240($sp)
    ld	$a3,248($sp)
    mfc1	$t0,$f1
    b	.L0db9c904
    ld	$a0,256($sp)
.end __glTextureRGB_L_NML_Span

# Function: __glTextureRGB_L_NML_StippledSpan
# Declared: Line 2181 (Source lines: 2182-2500)
# Address: 0x0db9cd28 - 0x0db9d914 (Size: 3052 bytes, Frame: 192)
.globl __glTextureRGB_L_NML_StippledSpan
.ent __glTextureRGB_L_NML_StippledSpan
__glTextureRGB_L_NML_StippledSpan:
    # Line 2182
    addiu	$sp,$sp,-320
    sd	$s0,128($sp)
    sd	$s5,136($sp)
    sd	$s6,112($sp)
    sd	$s7,144($sp)
    sd	$s8,152($sp)
    sdc1	$f28,16($sp)
    sdc1	$f30,24($sp)
    sd	$ra,120($sp)
    sd	$s3,184($sp)
    move	$s3,$a0
    sdc1	$f26,48($sp)
    # Line 2214
    lwc1	$f26,30292($a0)
    sdc1	$f24,32($sp)
    # Line 2213
    lwc1	$f24,30288($a0)
    sdc1	$f22,40($sp)
    # Line 2212
    lwc1	$f22,30280($a0)
    sdc1	$f20,56($sp)
    # Line 2211
    lwc1	$f20,30276($a0)
    sd	$s1,160($sp)
    # Line 2208
    lw	$s1,30516($a0)
    sd	$s2,192($sp)
    # Line 2206
    lw	$s2,28264($a0)
    sd	$gp,168($sp)
    # Line 2182
    lui	$v0,0x6
    addiu	$v0,$v0,6512
    addu	$gp,$t9,$v0
    # Line 2209
    lw	$v1,30524($a0)
    # Line 2191
    lwc1	$f0,3280($a0)
    # Line 2207
    lw	$at,30300($a0)
    sd	$v1,200($sp)
    sdc1	$f0,0($sp)
    sd	$s4,176($sp)
    # Line 2204
    lw	$s4,2376($a0)
    sd	$at,208($sp)
    # Line 2214
    beqz	$at,.L0db9d8c4
    # Line 2204
    lw	$s4,0($s4)
    sd	$s6,112($sp)
    sd	$ra,120($sp)
    sd	$s0,128($sp)
    sd	$s5,136($sp)
    sd	$s7,144($sp)
    sdc1	$f28,16($sp)
    sdc1	$f30,24($sp)
    # Line 2214
    li	$a5,-1
    li	$a7,7681
    li	$a3,0x8062
    li	$a6,8448
    mtc1	$zero,$f5
    li	$s8,10497
    xori	$a1,$s4,0x2101
    sltiu	$a1,$a1,1
    b	.L0db9ce08
    sd	$a1,216($sp)
.L0db9ce00:
    ld	$at,208($sp)
    # Line 2225
    beqz	$at,.L0db9d8c4
.L0db9ce08:
    ld	$v0,208($sp)
    # Line 2217
    move	$s5,$v0
    slti	$v0,$v0,33
    bnez	$v0,.L0db9ce24
    # Line 2221
    ld	$a1,208($sp)
    # Line 2219
    li	$s5,32
    # Line 2221
    ld	$a1,208($sp)
.L0db9ce24:
    lui	$s0,0x8000
    # Line 2223
    ld	$v1,200($sp)
    # Line 2221
    subu	$a1,$a1,$s5
    # Line 2225
    addiu	$s5,$s5,-1
    # Line 2223
    lw	$at,0($v1)
    addiu	$v1,$v1,4
    sd	$a1,208($sp)
    sd	$v1,200($sp)
    # Line 2225
    bltz	$s5,.L0db9ce00
    sd	$at,248($sp)
    b	.L0db9cfb0
    ld	$at,248($sp)
.L0db9ce54:
    # Line 2380
    trunc.w.s	$f0,$f8
    ldc1	$f6,72($sp)
    # Line 2376
    lw	$t0,236($s2)
    # Line 2380
    cvt.s.w	$f7,$f0
    mfc1	$t1,$f0
    # Line 2382
    sll	$s6,$t0,0x2
    subu	$s6,$s6,$t0
    # Line 2380
    addiu	$v1,$t1,1
    slt	$v0,$t0,$v1
    sub.s	$f7,$f8,$f7
    slti	$v1,$v1,0
    or	$v0,$v0,$v1
    beqz	$v0,.L0db9d44c
    sub.s	$f6,$f6,$f7
    # Line 2382
    sll	$s6,$s6,0x3
    addu	$s6,$s6,$t0
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$a4
    # Line 2383
    lw	$a0,20($s6)
    beq	$s8,$a2,.L0db9d6e0
    lwc1	$f30,32($s6)
    # Line 2388
    mul.s	$f1,$f28,$f30
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
    # Line 2387
    move	$t0,$a0
    # Line 2388
    bltz	$a2,.L0db9d650
    move	$a4,$a2
    # Line 2389
    slt	$at,$a2,$t0
    bnezl	$at,.L0db9ced4
    # Line 2392
    lw	$a2,24($s6)
    # Line 2390
    addiu	$a4,$t0,-1
.L0db9ced0:
    # Line 2392
    lw	$a2,24($s6)
.L0db9ced4:
    beq	$s8,$s7,.L0db9d71c
    lwc1	$f28,36($s6)
    # Line 2397
    ldc1	$f2,8($sp)
    mul.s	$f2,$f2,$f28
    trunc.w.s	$f2,$f2
    mfc1	$t2,$f2
    # Line 2396
    move	$t0,$a2
    # Line 2397
    bltz	$t2,.L0db9d658
    move	$t1,$t2
    # Line 2398
    slt	$v0,$t2,$t0
    bnez	$v0,.L0db9cf0c
    # Line 2399
    addiu	$a1,$a2,-1
    addiu	$t1,$t0,-1
.L0db9cf08:
    addiu	$a1,$a2,-1
.L0db9cf0c:
    addiu	$v1,$a0,-1
    nor	$v1,$v1,$zero
    nor	$a1,$a1,$zero
    and	$a1,$a1,$t1
    and	$v1,$v1,$a4
    or	$v1,$v1,$a1
    beqzl	$v1,.L0db9d620
    # Line 2407
    lw	$a1,44($s6)
    # Line 2405
    lwc1	$f9,164($s2)
    # Line 2404
    lwc1	$f8,160($s2)
    # Line 2403
    lwc1	$f4,156($s2)
.L0db9cf38:
    # Line 2454
    beq	$s4,$a6,.L0db9d3c0
.L0db9cf3c:
    # Line 2466
    move	$a0,$zero
    beq	$s4,$a3,.L0db9d290
    ld	$a1,216($sp)
    beq	$s4,$a7,.L0db9d290
    nop
.L0db9cf50:
    or	$a1,$a0,$a1
    beqz	$a1,.L0db9d3e8
    ldc1	$f0,72($sp)
    # Line 2469
    lwc1	$f1,30804($s3)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($s1)
    # Line 2470
    lwc1	$f0,30808($s3)
    mul.s	$f0,$f0,$f8
    swc1	$f0,4($s1)
    # Line 2471
    lwc1	$f3,30812($s3)
    mul.s	$f3,$f3,$f9
    swc1	$f3,8($s1)
.L0db9cf80:
    # Line 2490
    lwc1	$f1,30448($s3)
    # Line 2489
    lwc1	$f0,30444($s3)
    # Line 2490
    add.s	$f26,$f1,$f26
    # Line 2488
    lwc1	$f3,30436($s3)
    # Line 2489
    add.s	$f24,$f0,$f24
    # Line 2493
    srl	$s0,$s0,0x1
    # Line 2487
    lwc1	$f2,30432($s3)
    # Line 2488
    add.s	$f22,$f3,$f22
    # Line 2491
    addiu	$s1,$s1,16
    # Line 2225
    beq	$s5,$a5,.L0db9ce00
    # Line 2487
    add.s	$f20,$f2,$f20
    ld	$at,248($sp)
.L0db9cfb0:
    # Line 2372
    mov.s	$f8,$f5
    # Line 2225
    and	$at,$at,$s0
    beqz	$at,.L0db9cf80
    addiu	$s5,$s5,-1
    # Line 2228
    lwc1	$f28,3284($s3)
    sdc1	$f28,72($sp)
    div.s	$f28,$f28,$f24
    mul.s	$f4,$f26,$f28
    lwc1	$f1,240($s2)
    mul.s	$f0,$f22,$f28
    lw	$s7,8($s2)
    lw	$a4,228($s2)
    c.le.s	$f4,$f1
    lw	$a2,4($s2)
    mul.s	$f28,$f20,$f28
    bc1f	.L0db9d200
    sdc1	$f0,8($sp)
    # Line 2238
    move	$s6,$a4
    # Line 2240
    lw	$at,0($a4)
    sd	$zero,224($sp)
    # Line 2239
    lw	$a1,44($a4)
    sd	$at,96($sp)
    # Line 2244
    lwc1	$f4,32($a4)
    # Line 2242
    lw	$v1,24($a4)
    # Line 2241
    lw	$v0,20($a4)
    # Line 2245
    mul.s	$f6,$f28,$f4
    sd	$a1,104($sp)
    # Line 2241
    addiu	$v0,$v0,-1
    # Line 2242
    addiu	$v1,$v1,-1
    sd	$v1,80($sp)
    sd	$v0,88($sp)
    # Line 2245
    beq	$s8,$a2,.L0db9d660
    mov.s	$f30,$f6
    # Line 2250
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0db9d298
    # Line 2252
    c.lt.s	$f4,$f6
    mov.s	$f30,$f5
.L0db9d048:
    # Line 2254
    ldc1	$f29,0($sp)
.L0db9d04c:
    # Line 2255
    # lw $t9, -17792($gp) # &floorf
    # Line 2254
    sub.s	$f30,$f30,$f29
    # Line 2255
    jal	floorf
    mov.s	$f12,$f30
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    mtc1	$zero,$f5
    sd	$v0,240($sp)
    # Line 2256
    addiu	$v0,$v0,1
    sd	$v0,232($sp)
.L0db9d074:
    # Line 2259
    lwc1	$f4,36($s6)
    # Line 2260
    ldc1	$f6,8($sp)
    mul.s	$f6,$f6,$f4
    beq	$s8,$s7,.L0db9d6a4
    mov.s	$f28,$f6
    # Line 2265
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0db9d2ac
    # Line 2267
    c.lt.s	$f4,$f6
    mov.s	$f28,$f5
.L0db9d09c:
    # Line 2269
    ldc1	$f7,0($sp)
.L0db9d0a0:
    # Line 2270
    # lw $t9, -17792($gp) # &floorf
    # Line 2269
    sub.s	$f28,$f28,$f7
    # Line 2270
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s6,$f0
    nop
    # Line 2271
    addiu	$s7,$s6,1
.L0db9d0c0:
    # Line 2274
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f30
    # Line 2275
    # lw $t9, -17792($gp) # &floorf
    # Line 2274
    sub.s	$f1,$f30,$f0
    # Line 2275
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f1,64($sp)
    li	$a3,0x8062
    li	$a5,-1
    li	$a6,8448
    li	$a7,7681
    # Line 2276
    ldc1	$f11,64($sp)
    # Line 2277
    sub.s	$f10,$f28,$f0
    # Line 2276
    ldc1	$f0,72($sp)
    mtc1	$zero,$f5
    ld	$a2,240($sp)
    sub.s	$f6,$f0,$f11
    # Line 2277
    mul.s	$f7,$f10,$f11
    ld	$a0,232($sp)
    sub.s	$f0,$f0,$f10
    mul.s	$f10,$f10,$f6
    ld	$v1,224($sp)
    mul.s	$f11,$f11,$f0
    li	$a1,2
    beq	$v1,$a1,.L0db9d2c0
    mul.s	$f6,$f6,$f0
    ld	$a1,104($sp)
    ld	$t1,88($sp)
    # Line 2308
    ld	$a4,80($sp)
    nor	$t1,$t1,$zero
    nor	$a4,$a4,$zero
    and	$t0,$a4,$s6
    and	$t2,$t1,$a2
    or	$at,$t2,$t0
    beqz	$at,.L0db9d508
    # Line 2323
    and	$t3,$t1,$a0
    # Line 2317
    lwc1	$f9,164($s2)
    # Line 2316
    lwc1	$f8,160($s2)
    # Line 2317
    mul.s	$f9,$f9,$f6
    # Line 2315
    lwc1	$f4,156($s2)
    # Line 2316
    mul.s	$f8,$f8,$f6
    # Line 2315
    mul.s	$f4,$f4,$f6
.L0db9d16c:
    # Line 2323
    or	$at,$t3,$t0
    beqz	$at,.L0db9d544
    # Line 2334
    and	$t0,$a4,$s7
    # Line 2328
    lwc1	$f2,164($s2)
    # Line 2327
    lwc1	$f1,160($s2)
    # Line 2328
    mul.s	$f2,$f2,$f11
    # Line 2326
    lwc1	$f0,156($s2)
    # Line 2327
    mul.s	$f1,$f1,$f11
    # Line 2326
    mul.s	$f0,$f0,$f11
    # Line 2328
    add.s	$f9,$f2,$f9
    # Line 2327
    add.s	$f8,$f1,$f8
    # Line 2326
    add.s	$f4,$f0,$f4
.L0db9d19c:
    # Line 2334
    or	$v0,$t2,$t0
    beqz	$v0,.L0db9d590
    # Line 2343
    ld	$at,96($sp)
    # Line 2339
    lwc1	$f1,164($s2)
    # Line 2338
    lwc1	$f0,160($s2)
    # Line 2339
    mul.s	$f1,$f1,$f10
    # Line 2337
    lwc1	$f3,156($s2)
    # Line 2338
    mul.s	$f0,$f0,$f10
    # Line 2337
    mul.s	$f3,$f3,$f10
    # Line 2339
    add.s	$f9,$f1,$f9
    # Line 2338
    add.s	$f8,$f0,$f8
    # Line 2337
    add.s	$f4,$f3,$f4
.L0db9d1cc:
    # Line 2345
    or	$v1,$t3,$t0
    beqz	$v1,.L0db9d5d8
    ld	$v0,104($sp)
    # Line 2350
    lwc1	$f0,164($s2)
    # Line 2349
    lwc1	$f3,160($s2)
    # Line 2350
    mul.s	$f0,$f0,$f7
    # Line 2348
    lwc1	$f2,156($s2)
    # Line 2349
    mul.s	$f3,$f3,$f7
    # Line 2348
    mul.s	$f2,$f2,$f7
    # Line 2350
    add.s	$f9,$f0,$f9
    # Line 2349
    add.s	$f8,$f3,$f8
    # Line 2350
    b	.L0db9cf38
    # Line 2348
    add.s	$f4,$f2,$f4
.L0db9d200:
    # Line 2356
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0db9ce54
    # Line 2367
    move	$a0,$zero
    # Line 2368
    trunc.w.s	$f1,$f4
    mfc1	$t0,$f1
    nop
    sra	$t0,$t0,0x1
    beqz	$t0,.L0db9d25c
    li	$at,1
    addiu	$a0,$a0,1
.L0db9d22c:
    sra	$t0,$t0,0x1
    beqz	$t0,.L0db9d258
    nop
    addiu	$a0,$a0,1
    sra	$t0,$t0,0x1
    beqz	$t0,.L0db9d258
    nop
    addiu	$a0,$a0,1
    sra	$t0,$t0,0x1
    bnezl	$t0,.L0db9d22c
    addiu	$a0,$a0,1
.L0db9d258:
    li	$at,1
.L0db9d25c:
    # Line 2370
    sllv	$at,$at,$a0
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f4,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a0,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f0
    ldc1	$f0,0($sp)
    b	.L0db9ce54
    mul.s	$f8,$f8,$f0
.L0db9d290:
    # Line 2466
    b	.L0db9cf50
    li	$a0,1
.L0db9d298:
    nop
    # Line 2252
    bc1f	.L0db9d04c
    # Line 2254
    ldc1	$f29,0($sp)
    b	.L0db9d048
    # Line 2253
    mov.s	$f30,$f4
.L0db9d2ac:
    nop
    # Line 2267
    bc1f	.L0db9d0a0
    # Line 2269
    ldc1	$f7,0($sp)
    b	.L0db9d09c
    # Line 2268
    mov.s	$f28,$f4
.L0db9d2c0:
    ld	$at,104($sp)
    # Line 2306
    ld	$a1,96($sp)
    sllv	$v0,$s7,$at
    addu	$a4,$v0,$a0
    sll	$a6,$a4,0x1
    sll	$a4,$a4,0x2
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a1
    addu	$a4,$a4,$a6
    # Line 2307
    lwc1	$f13,4($a4)
    mul.s	$f13,$f13,$f7
    # Line 2306
    addu	$v0,$v0,$a2
    sll	$a6,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a1
    addu	$a6,$a6,$v0
    # Line 2307
    lwc1	$f1,4($a6)
    mul.s	$f1,$f1,$f10
    # Line 2308
    lwc1	$f0,8($a4)
    mul.s	$f0,$f0,$f7
    # Line 2306
    sllv	$at,$s6,$at
    addu	$v1,$at,$a0
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 2307
    lwc1	$f2,4($v0)
    mul.s	$f2,$f2,$f11
    # Line 2308
    lwc1	$f12,8($v0)
    # Line 2306
    addu	$at,$at,$a2
    # Line 2308
    mul.s	$f12,$f12,$f11
    # Line 2306
    sll	$v1,$at,0x1
    sll	$at,$at,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$at,$at,$v1
    # Line 2308
    lwc1	$f9,8($at)
    lwc1	$f3,8($a6)
    mul.s	$f9,$f9,$f6
    # Line 2307
    lwc1	$f8,4($at)
    # Line 2308
    mul.s	$f3,$f3,$f10
    # Line 2307
    mul.s	$f8,$f8,$f6
    # Line 2306
    lwc1	$f4,0($at)
    # Line 2308
    add.s	$f9,$f9,$f12
    # Line 2306
    mul.s	$f4,$f4,$f6
    lwc1	$f12,0($v0)
    # Line 2308
    add.s	$f9,$f9,$f3
    # Line 2306
    mul.s	$f12,$f12,$f11
    # Line 2308
    add.s	$f9,$f9,$f0
    # Line 2306
    lwc1	$f0,0($a6)
    # Line 2307
    add.s	$f8,$f8,$f2
    # Line 2306
    mul.s	$f0,$f0,$f10
    add.s	$f4,$f4,$f12
    lwc1	$f12,0($a4)
    # Line 2307
    add.s	$f8,$f8,$f1
    # Line 2306
    mul.s	$f12,$f12,$f7
    add.s	$f4,$f4,$f0
    # Line 2454
    li	$a1,8448
    # Line 2307
    add.s	$f8,$f8,$f13
    li	$a6,8448
    # Line 2454
    bne	$s4,$a1,.L0db9cf3c
    # Line 2306
    add.s	$f4,$f4,$f12
.L0db9d3c0:
    # Line 2463
    lwc1	$f1,4($s1)
    # Line 2464
    lwc1	$f2,8($s1)
    # Line 2463
    mul.s	$f1,$f1,$f8
    # Line 2462
    lwc1	$f0,0($s1)
    # Line 2464
    mul.s	$f2,$f2,$f9
    # Line 2462
    mul.s	$f0,$f0,$f4
    # Line 2464
    swc1	$f2,8($s1)
    # Line 2463
    swc1	$f1,4($s1)
    # Line 2464
    b	.L0db9cf80
    # Line 2462
    swc1	$f0,0($s1)
.L0db9d3e8:
    # Line 2479
    sub.s	$f0,$f0,$f4
    lwc1	$f3,0($s1)
    # Line 2477
    lw	$at,2376($s3)
    # Line 2479
    mul.s	$f3,$f3,$f0
    lwc1	$f0,4($at)
    mul.s	$f0,$f0,$f4
    add.s	$f3,$f3,$f0
    swc1	$f3,0($s1)
    # Line 2480
    lwc1	$f2,3284($s3)
    sub.s	$f2,$f2,$f8
    lwc1	$f1,4($s1)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,8($at)
    mul.s	$f2,$f2,$f8
    add.s	$f1,$f1,$f2
    swc1	$f1,4($s1)
    # Line 2481
    lwc1	$f0,3284($s3)
    sub.s	$f0,$f0,$f9
    lwc1	$f3,8($s1)
    mul.s	$f3,$f3,$f0
    lwc1	$f0,12($at)
    mul.s	$f0,$f0,$f9
    add.s	$f3,$f3,$f0
    b	.L0db9cf80
    swc1	$f3,8($s1)
.L0db9d44c:
    # Line 2415
    sll	$a0,$t1,0x2
    subu	$a0,$a0,$t1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$t1
    sll	$a0,$a0,0x2
    addu	$a0,$a4,$a0
    # Line 2416
    lw	$t0,20($a0)
    # Line 2415
    move	$s6,$a0
    # Line 2416
    beq	$s8,$a2,.L0db9d808
    lwc1	$f30,32($a0)
    # Line 2421
    mul.s	$f1,$f28,$f30
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
    # Line 2420
    move	$t1,$t0
    # Line 2421
    bltz	$a2,.L0db9d7f8
    move	$a4,$a2
    # Line 2422
    slt	$a1,$a2,$t1
    bnezl	$a1,.L0db9d4a0
    # Line 2425
    lw	$a2,24($s6)
    # Line 2423
    addiu	$a4,$t1,-1
.L0db9d49c:
    # Line 2425
    lw	$a2,24($s6)
.L0db9d4a0:
    beq	$s8,$s7,.L0db9d85c
    lwc1	$f28,36($s6)
    # Line 2430
    ldc1	$f2,8($sp)
    mul.s	$f2,$f2,$f28
    trunc.w.s	$f2,$f2
    mfc1	$t2,$f2
    # Line 2429
    move	$t3,$a2
    # Line 2430
    bltz	$t2,.L0db9d800
    move	$t1,$t2
    # Line 2431
    slt	$at,$t2,$t3
    bnez	$at,.L0db9d4d8
    # Line 2432
    addiu	$v1,$a2,-1
    addiu	$t1,$t3,-1
.L0db9d4d4:
    addiu	$v1,$a2,-1
.L0db9d4d8:
    addiu	$v0,$t0,-1
    nor	$v0,$v0,$zero
    nor	$v1,$v1,$zero
    and	$v1,$v1,$t1
    and	$v0,$v0,$a4
    or	$v0,$v0,$v1
    beqz	$v0,.L0db9d76c
    # Line 2450
    sra	$v1,$t1,0x1
    # Line 2438
    lwc1	$f9,164($s2)
    # Line 2437
    lwc1	$f8,160($s2)
    # Line 2438
    b	.L0db9cf38
    # Line 2436
    lwc1	$f4,156($s2)
.L0db9d508:
    # Line 2321
    sllv	$a1,$s6,$a1
    ld	$at,96($sp)
    addu	$a1,$a1,$a2
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 2323
    lwc1	$f9,8($v1)
    # Line 2322
    lwc1	$f8,4($v1)
    # Line 2323
    mul.s	$f9,$f9,$f6
    # Line 2321
    lwc1	$f4,0($v1)
    # Line 2322
    mul.s	$f8,$f8,$f6
    b	.L0db9d16c
    # Line 2321
    mul.s	$f4,$f4,$f6
.L0db9d544:
    # Line 2332
    ld	$v1,96($sp)
    ld	$v0,104($sp)
    sllv	$v0,$s6,$v0
    addu	$v0,$v0,$a0
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 2334
    lwc1	$f2,8($at)
    # Line 2333
    lwc1	$f1,4($at)
    # Line 2334
    mul.s	$f2,$f2,$f11
    # Line 2332
    lwc1	$f0,0($at)
    # Line 2333
    mul.s	$f1,$f1,$f11
    # Line 2332
    mul.s	$f0,$f0,$f11
    # Line 2334
    add.s	$f9,$f2,$f9
    # Line 2333
    add.s	$f8,$f1,$f8
    b	.L0db9d19c
    # Line 2332
    add.s	$f4,$f0,$f4
.L0db9d590:
    ld	$a1,104($sp)
    # Line 2343
    sllv	$a1,$s7,$a1
    addu	$a1,$a1,$a2
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 2345
    lwc1	$f1,8($v1)
    # Line 2344
    lwc1	$f0,4($v1)
    # Line 2345
    mul.s	$f1,$f1,$f10
    # Line 2343
    lwc1	$f3,0($v1)
    # Line 2344
    mul.s	$f0,$f0,$f10
    # Line 2343
    mul.s	$f3,$f3,$f10
    # Line 2345
    add.s	$f9,$f1,$f9
    # Line 2344
    add.s	$f8,$f0,$f8
    b	.L0db9d1cc
    # Line 2343
    add.s	$f4,$f3,$f4
.L0db9d5d8:
    # Line 2354
    ld	$v1,96($sp)
    sllv	$v0,$s7,$v0
    addu	$v0,$v0,$a0
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 2356
    lwc1	$f0,8($at)
    # Line 2355
    lwc1	$f3,4($at)
    # Line 2356
    mul.s	$f0,$f0,$f7
    # Line 2354
    lwc1	$f2,0($at)
    # Line 2355
    mul.s	$f3,$f3,$f7
    # Line 2354
    mul.s	$f2,$f2,$f7
    # Line 2356
    add.s	$f9,$f0,$f9
    # Line 2355
    add.s	$f8,$f3,$f8
    b	.L0db9cf38
    # Line 2354
    add.s	$f4,$f2,$f4
.L0db9d620:
    # Line 2408
    lw	$v1,0($s6)
    # Line 2407
    sllv	$a1,$t1,$a1
    addu	$a1,$a1,$a4
    # Line 2408
    sll	$at,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$at,$at,0x2
    addu	$v1,$v1,$at
    addu	$v1,$v1,$a1
    # Line 2412
    lwc1	$f9,8($v1)
    # Line 2411
    lwc1	$f8,4($v1)
    b	.L0db9cf38
    # Line 2410
    lwc1	$f4,0($v1)
.L0db9d650:
    # Line 2389
    b	.L0db9ced0
    move	$a4,$zero
.L0db9d658:
    # Line 2398
    b	.L0db9cf08
    move	$t1,$zero
.L0db9d660:
    ldc1	$f30,0($sp)
    # Line 2248
    # lw $t9, -17792($gp) # &floorf
    # Line 2247
    sub.s	$f30,$f6,$f30
    # Line 2248
    jal	floorf
    mov.s	$f12,$f30
    trunc.w.s	$f0,$f0
    # Line 2250
    li	$v0,1
    sd	$v0,224($sp)
    # Line 2248
    ld	$v0,88($sp)
    mfc1	$at,$f0
    mtc1	$zero,$f5
    and	$at,$at,$v0
    sd	$at,240($sp)
    # Line 2249
    addiu	$at,$at,1
    and	$at,$at,$v0
    # Line 2250
    b	.L0db9d074
    sd	$at,232($sp)
.L0db9d6a4:
    ldc1	$f28,0($sp)
    # Line 2263
    # lw $t9, -17792($gp) # &floorf
    # Line 2262
    sub.s	$f28,$f6,$f28
    # Line 2263
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    # Line 2265
    ld	$s7,224($sp)
    # Line 2263
    ld	$at,80($sp)
    mfc1	$s6,$f0
    # Line 2265
    addiu	$s7,$s7,1
    sd	$s7,224($sp)
    # Line 2263
    and	$s6,$s6,$at
    # Line 2264
    addiu	$s7,$s6,1
    # Line 2265
    b	.L0db9d0c0
    # Line 2264
    and	$s7,$s7,$at
.L0db9d6e0:
    # Line 2385
    # lw $t9, -17792($gp) # &floorf
    sd	$a0,280($sp)
    jal	floorf
    mov.s	$f12,$f28
    sub.s	$f1,$f28,$f0
    mul.s	$f1,$f1,$f30
    li	$a3,0x8062
    li	$a5,-1
    trunc.w.s	$f1,$f1
    li	$a6,8448
    li	$a7,7681
    mtc1	$zero,$f5
    mfc1	$a4,$f1
    b	.L0db9ced0
    ld	$a0,280($sp)
.L0db9d71c:
    sd	$a0,280($sp)
    # Line 2394
    # lw $t9, -17792($gp) # &floorf
    sd	$a2,288($sp)
    sd	$a4,272($sp)
    jal	floorf
    ldc1	$f12,8($sp)
    ldc1	$f2,8($sp)
    sub.s	$f2,$f2,$f0
    mul.s	$f2,$f2,$f28
    li	$a3,0x8062
    li	$a5,-1
    li	$a6,8448
    li	$a7,7681
    trunc.w.s	$f2,$f2
    mtc1	$zero,$f5
    ld	$a4,272($sp)
    ld	$a2,288($sp)
    mfc1	$t1,$f2
    b	.L0db9cf08
    ld	$a0,280($sp)
.L0db9d76c:
    # Line 2450
    lw	$a1,144($a0)
    # Line 2451
    lw	$v0,100($a0)
    # Line 2450
    sllv	$v1,$v1,$a1
    sra	$a1,$a4,0x1
    addu	$v1,$v1,$a1
    # Line 2451
    sll	$a1,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a1
    addu	$v0,$v0,$v1
    # Line 2452
    lwc1	$f4,0($v0)
    # Line 2453
    lwc1	$f8,4($v0)
    # Line 2452
    mul.s	$f4,$f4,$f7
    # Line 2454
    lwc1	$f9,8($v0)
    # Line 2453
    mul.s	$f8,$f8,$f7
    # Line 2440
    lw	$v1,44($s6)
    # Line 2441
    lw	$at,0($s6)
    # Line 2454
    mul.s	$f9,$f9,$f7
    # Line 2440
    sllv	$v1,$t1,$v1
    addu	$v1,$v1,$a4
    # Line 2441
    sll	$a1,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a1,$a1,0x2
    addu	$at,$at,$a1
    addu	$at,$at,$v1
    # Line 2444
    lwc1	$f2,8($at)
    # Line 2443
    lwc1	$f1,4($at)
    # Line 2444
    mul.s	$f2,$f2,$f6
    # Line 2442
    lwc1	$f0,0($at)
    # Line 2443
    mul.s	$f1,$f1,$f6
    # Line 2442
    mul.s	$f0,$f0,$f6
    # Line 2454
    add.s	$f9,$f9,$f2
    # Line 2453
    add.s	$f8,$f8,$f1
    b	.L0db9cf38
    # Line 2452
    add.s	$f4,$f4,$f0
.L0db9d7f8:
    # Line 2422
    b	.L0db9d49c
    move	$a4,$zero
.L0db9d800:
    # Line 2431
    b	.L0db9d4d4
    move	$t1,$zero
.L0db9d808:
    sd	$a0,296($sp)
    sd	$t0,280($sp)
    # Line 2418
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f6,264($sp)
    sdc1	$f7,256($sp)
    jal	floorf
    mov.s	$f12,$f28
    sub.s	$f0,$f28,$f0
    mul.s	$f0,$f0,$f30
    li	$a3,0x8062
    li	$a5,-1
    li	$a6,8448
    li	$a7,7681
    mtc1	$zero,$f5
    trunc.w.s	$f0,$f0
    ldc1	$f7,256($sp)
    ldc1	$f6,264($sp)
    ld	$t0,280($sp)
    mfc1	$a4,$f0
    b	.L0db9d49c
    ld	$a0,296($sp)
.L0db9d85c:
    sd	$a0,296($sp)
    sd	$a2,288($sp)
    sd	$t0,280($sp)
    sd	$a4,272($sp)
    # Line 2427
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f6,264($sp)
    sdc1	$f7,256($sp)
    jal	floorf
    ldc1	$f12,8($sp)
    ldc1	$f1,8($sp)
    sub.s	$f1,$f1,$f0
    li	$a3,0x8062
    mul.s	$f1,$f1,$f28
    li	$a5,-1
    li	$a6,8448
    li	$a7,7681
    mtc1	$zero,$f5
    ldc1	$f7,256($sp)
    ldc1	$f6,264($sp)
    trunc.w.s	$f1,$f1
    ld	$a4,272($sp)
    ld	$t0,280($sp)
    ld	$a2,288($sp)
    mfc1	$t1,$f1
    b	.L0db9d4d4
    ld	$a0,296($sp)
.L0db9d8c4:
    # Line 2500
    move	$v0,$zero
    ld	$gp,168($sp)
    ld	$s0,128($sp)
    ld	$s1,160($sp)
    ld	$s2,192($sp)
    ld	$s3,184($sp)
    ld	$s4,176($sp)
    ld	$s5,136($sp)
    ld	$s6,112($sp)
    ld	$s7,144($sp)
    ld	$s8,152($sp)
    ldc1	$f20,56($sp)
    ldc1	$f22,40($sp)
    ldc1	$f24,32($sp)
    ldc1	$f26,48($sp)
    ld	$ra,120($sp)
    ldc1	$f28,16($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,320
.end __glTextureRGB_L_NML_StippledSpan

# Function: __glTextureRGB_L_LML_Span
# Declared: Line 2510 (Source lines: 2511-3080)
# Address: 0x0db9d914 - 0x0db9ee7c (Size: 5480 bytes, Frame: 192)
.globl __glTextureRGB_L_LML_Span
.ent __glTextureRGB_L_LML_Span
__glTextureRGB_L_LML_Span:
    # Line 2511
    addiu	$sp,$sp,-320
    sd	$s4,200($sp)
    sd	$s5,168($sp)
    sd	$s6,224($sp)
    sd	$s7,152($sp)
    sd	$s8,216($sp)
    sdc1	$f20,80($sp)
    sdc1	$f22,64($sp)
    sdc1	$f24,56($sp)
    sdc1	$f26,72($sp)
    sdc1	$f28,48($sp)
    sdc1	$f30,40($sp)
    sd	$ra,208($sp)
    sd	$s2,248($sp)
    move	$s2,$a0
    sd	$s1,176($sp)
    # Line 2536
    lw	$s1,30516($a0)
    sd	$s0,184($sp)
    # Line 2534
    lw	$s0,28264($a0)
    sd	$gp,232($sp)
    # Line 2511
    lui	$v0,0x6
    addiu	$v0,$v0,3460
    addu	$gp,$t9,$v0
    # Line 2519
    lwc1	$f0,3280($a0)
    # Line 2538
    lwc1	$f1,30276($a0)
    # Line 2541
    lwc1	$f4,30292($a0)
    # Line 2540
    lwc1	$f3,30288($a0)
    # Line 2539
    lwc1	$f2,30280($a0)
    sdc1	$f4,112($sp)
    sdc1	$f3,96($sp)
    sdc1	$f2,104($sp)
    sdc1	$f1,120($sp)
    sdc1	$f0,16($sp)
    # Line 2543
    lw	$at,30300($a0)
    sd	$s3,240($sp)
    # Line 2532
    lw	$s3,2376($a0)
    # Line 2543
    addiu	$at,$at,-1
    sd	$at,280($sp)
    bltz	$at,.L0db9ed38
    # Line 2532
    lw	$s3,0($s3)
    # Line 2543
    li	$a3,-1
    li	$a4,8448
    mtc1	$zero,$f30
    li	$a2,10497
    xori	$v1,$s3,0x2101
    sltiu	$v1,$v1,1
    b	.L0db9dc20
    sd	$v1,272($sp)
.L0db9d9d4:
    nop
    # Line 2568
    bc1f	.L0db9d9e8
    # Line 2570
    ldc1	$f5,16($sp)
    # Line 2569
    mov.s	$f26,$f7
.L0db9d9e4:
    # Line 2570
    ldc1	$f5,16($sp)
.L0db9d9e8:
    # Line 2571
    # lw $t9, -17792($gp) # &floorf
    # Line 2570
    sub.s	$f26,$f26,$f5
    # Line 2571
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    li	$a0,10497
    mfc1	$s5,$f0
    ldc1	$f5,32($sp)
    ld	$a2,160($sp)
    # Line 2572
    addiu	$s4,$s5,1
.L0db9da10:
    # Line 2575
    lwc1	$f6,36($s6)
    # Line 2576
    mul.s	$f4,$f5,$f6
    beq	$a0,$a2,.L0db9e84c
    mov.s	$f28,$f4
    # Line 2581
    c.lt.s	$f4,$f30
    nop
    bc1fl	.L0db9df80
    # Line 2583
    c.lt.s	$f6,$f4
    mov.s	$f28,$f30
.L0db9da34:
    # Line 2585
    ldc1	$f1,16($sp)
.L0db9da38:
    # Line 2586
    # lw $t9, -17792($gp) # &floorf
    # Line 2585
    sub.s	$f28,$f28,$f1
    # Line 2586
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f2,$f0
    mfc1	$s7,$f2
    nop
    # Line 2587
    addiu	$s6,$s7,1
.L0db9da58:
    # Line 2590
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 2591
    # lw $t9, -17792($gp) # &floorf
    # Line 2590
    sub.s	$f3,$f26,$f0
    # Line 2591
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f3,88($sp)
    # Line 2592
    ldc1	$f6,88($sp)
    ldc1	$f5,0($sp)
    # Line 2593
    sub.s	$f7,$f28,$f0
    li	$a2,10497
    li	$a3,-1
    # Line 2592
    sub.s	$f9,$f5,$f6
    # Line 2593
    mul.s	$f8,$f7,$f6
    li	$a4,8448
    sub.s	$f0,$f5,$f7
    mul.s	$f7,$f7,$f9
    ld	$a0,144($sp)
    ld	$a1,264($sp)
    mul.s	$f6,$f6,$f0
    li	$at,2
    beq	$a1,$at,.L0db9df94
    mul.s	$f9,$f9,$f0
    ld	$a6,256($sp)
    # Line 2624
    nor	$a0,$s8,$zero
    and	$a5,$a0,$s7
    nor	$a6,$a6,$zero
    and	$a7,$a6,$s5
    or	$v0,$a7,$a5
    beqz	$v0,.L0db9e570
    # Line 2639
    and	$t0,$a6,$s4
    # Line 2633
    lwc1	$f22,164($s0)
    # Line 2632
    lwc1	$f20,160($s0)
    # Line 2633
    mul.s	$f22,$f22,$f9
    # Line 2631
    lwc1	$f24,156($s0)
    # Line 2632
    mul.s	$f20,$f20,$f9
    # Line 2631
    mul.s	$f24,$f24,$f9
.L0db9daf0:
    # Line 2639
    or	$at,$t0,$a5
    beqz	$at,.L0db9e5b0
    # Line 2650
    and	$a5,$a0,$s6
    # Line 2644
    lwc1	$f2,164($s0)
    # Line 2643
    lwc1	$f1,160($s0)
    # Line 2644
    mul.s	$f2,$f2,$f6
    # Line 2642
    lwc1	$f0,156($s0)
    # Line 2643
    mul.s	$f1,$f1,$f6
    # Line 2642
    mul.s	$f0,$f0,$f6
    # Line 2644
    add.s	$f22,$f2,$f22
    # Line 2643
    add.s	$f20,$f1,$f20
    # Line 2642
    add.s	$f24,$f0,$f24
.L0db9db20:
    # Line 2650
    or	$v0,$a7,$a5
    beqz	$v0,.L0db9e5fc
    ld	$at,144($sp)
    # Line 2655
    lwc1	$f1,164($s0)
    # Line 2654
    lwc1	$f0,160($s0)
    # Line 2655
    mul.s	$f1,$f1,$f7
    # Line 2653
    lwc1	$f3,156($s0)
    # Line 2654
    mul.s	$f0,$f0,$f7
    # Line 2653
    mul.s	$f3,$f3,$f7
    # Line 2655
    add.s	$f22,$f1,$f22
    # Line 2654
    add.s	$f20,$f0,$f20
    # Line 2653
    add.s	$f24,$f3,$f24
.L0db9db50:
    # Line 2661
    or	$v1,$t0,$a5
    beqz	$v1,.L0db9e644
    # Line 2670
    ld	$a1,136($sp)
    # Line 2666
    lwc1	$f0,164($s0)
    # Line 2665
    lwc1	$f3,160($s0)
    # Line 2666
    mul.s	$f0,$f0,$f8
    # Line 2664
    lwc1	$f2,156($s0)
    # Line 2665
    mul.s	$f3,$f3,$f8
    # Line 2664
    mul.s	$f2,$f2,$f8
    # Line 2666
    add.s	$f22,$f0,$f22
    # Line 2665
    add.s	$f20,$f3,$f20
    # Line 2664
    add.s	$f24,$f2,$f24
.L0db9db80:
    # Line 3040
    beq	$s3,$a4,.L0db9e090
.L0db9db84:
    li	$at,7681
    li	$a1,0x8062
    # Line 3053
    beq	$s3,$a1,.L0db9df74
    ld	$v0,272($sp)
    beq	$s3,$at,.L0db9df74
    move	$a0,$zero
    or	$v0,$a0,$v0
.L0db9dba0:
    beqzl	$v0,.L0db9e0e0
    # Line 3066
    sub.s	$f2,$f5,$f24
    # Line 3056
    lwc1	$f3,30804($s2)
    mul.s	$f3,$f3,$f24
    swc1	$f3,0($s1)
    # Line 3057
    lwc1	$f2,30808($s2)
    mul.s	$f2,$f2,$f20
    swc1	$f2,4($s1)
    # Line 3058
    lwc1	$f1,30812($s2)
    mul.s	$f1,$f1,$f22
    swc1	$f1,8($s1)
.L0db9dbcc:
    # Line 3076
    ldc1	$f2,112($sp)
    lwc1	$f3,30448($s2)
    # Line 3075
    ldc1	$f0,96($sp)
    lwc1	$f1,30444($s2)
    # Line 3076
    add.s	$f2,$f3,$f2
    # Line 2543
    ld	$v1,280($sp)
    # Line 3075
    add.s	$f0,$f1,$f0
    # Line 3073
    lwc1	$f1,30432($s2)
    # Line 3074
    lwc1	$f3,30436($s2)
    sdc1	$f2,112($sp)
    ldc1	$f2,104($sp)
    sdc1	$f0,96($sp)
    # Line 3073
    ldc1	$f0,120($sp)
    # Line 3074
    add.s	$f2,$f3,$f2
    # Line 3077
    addiu	$s1,$s1,16
    # Line 2543
    addiu	$v1,$v1,-1
    # Line 3073
    add.s	$f0,$f1,$f0
    sd	$v1,280($sp)
    sdc1	$f2,104($sp)
    # Line 2543
    beq	$v1,$a3,.L0db9ed38
    sdc1	$f0,120($sp)
.L0db9dc20:
    # Line 2544
    lwc1	$f0,3284($s2)
    ldc1	$f1,96($sp)
    sdc1	$f0,0($sp)
    div.s	$f0,$f0,$f1
    ldc1	$f5,112($sp)
    lw	$a5,228($s0)
    # Line 2688
    mov.s	$f6,$f30
    # Line 2544
    mul.s	$f5,$f5,$f0
    ldc1	$f1,104($sp)
    lw	$a0,8($s0)
    lwc1	$f2,240($s0)
    mul.s	$f1,$f1,$f0
    ldc1	$f4,120($sp)
    sd	$a0,160($sp)
    c.le.s	$f5,$f2
    lw	$a0,4($s0)
    mul.s	$f4,$f4,$f0
    bc1f	.L0db9dcc0
    sdc1	$f1,32($sp)
    # Line 2554
    move	$s6,$a5
    sd	$zero,264($sp)
    # Line 2558
    lw	$s8,24($a5)
    # Line 2556
    lw	$v0,0($a5)
    # Line 2560
    lwc1	$f7,32($a5)
    # Line 2555
    lw	$at,44($a5)
    sd	$v0,136($sp)
    # Line 2561
    mul.s	$f6,$f4,$f7
    # Line 2557
    lw	$a1,20($a5)
    sd	$at,144($sp)
    # Line 2558
    addiu	$s8,$s8,-1
    # Line 2557
    addiu	$a1,$a1,-1
    sd	$a1,256($sp)
    # Line 2561
    beq	$a2,$a0,.L0db9e808
    mov.s	$f26,$f6
    # Line 2566
    c.lt.s	$f6,$f30
    nop
    bc1fl	.L0db9d9d4
    # Line 2568
    c.lt.s	$f7,$f6
    b	.L0db9d9e4
    mov.s	$f26,$f30
.L0db9dcc0:
    # Line 2672
    c.eq.s	$f5,$f30
    nop
    bc1t	.L0db9dd4c
    # Line 2683
    move	$a6,$zero
    # Line 2684
    trunc.w.s	$f2,$f5
    mfc1	$a7,$f2
    nop
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db9dd1c
    li	$at,1
    addiu	$a6,$a6,1
.L0db9dcec:
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db9dd18
    nop
    addiu	$a6,$a6,1
    sra	$a7,$a7,0x1
    beqz	$a7,.L0db9dd18
    nop
    addiu	$a6,$a6,1
    sra	$a7,$a7,0x1
    bnezl	$a7,.L0db9dcec
    addiu	$a6,$a6,1
.L0db9dd18:
    li	$at,1
.L0db9dd1c:
    # Line 2686
    sllv	$at,$at,$a6
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f5,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a6,$f6
    nop
    cvt.s.w	$f6,$f6
    add.s	$f6,$f6,$f0
    ldc1	$f0,16($sp)
    mul.s	$f6,$f6,$f0
.L0db9dd4c:
    # Line 2696
    trunc.w.s	$f20,$f6
    cvt.s.w	$f5,$f20
    mfc1	$a6,$f20
    # Line 2692
    lw	$a7,236($s0)
    # Line 2696
    ldc1	$f20,0($sp)
    addiu	$v1,$a6,1
    slt	$v0,$a7,$v1
    sub.s	$f5,$f6,$f5
    slti	$v1,$v1,0
    or	$v0,$v0,$v1
    beqz	$v0,.L0db9e140
    sub.s	$f20,$f20,$f5
    # Line 2699
    sll	$s6,$a7,0x2
    subu	$s6,$s6,$a7
    sll	$s6,$s6,0x3
    addu	$s6,$s6,$a7
    sll	$s6,$s6,0x2
    addu	$s6,$s6,$a5
    # Line 2703
    lw	$s8,24($s6)
    # Line 2701
    lw	$v0,0($s6)
    # Line 2705
    lwc1	$f7,32($s6)
    # Line 2700
    lw	$at,44($s6)
    sd	$v0,136($sp)
    # Line 2706
    mul.s	$f6,$f4,$f7
    # Line 2702
    lw	$a1,20($s6)
    sd	$at,144($sp)
    # Line 2703
    addiu	$s8,$s8,-1
    # Line 2702
    addiu	$a1,$a1,-1
    sd	$a1,256($sp)
    # Line 2706
    beq	$a2,$a0,.L0db9e884
    mov.s	$f26,$f6
    # Line 2710
    c.lt.s	$f6,$f30
    nop
    bc1fl	.L0db9e0b8
    # Line 2712
    c.lt.s	$f7,$f6
    mov.s	$f26,$f30
.L0db9dddc:
    # Line 2714
    ldc1	$f21,16($sp)
.L0db9dde0:
    # Line 2715
    # lw $t9, -17792($gp) # &floorf
    # Line 2714
    sub.s	$f26,$f26,$f21
    # Line 2715
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    mfc1	$s5,$f0
    nop
    # Line 2716
    addiu	$s4,$s5,1
.L0db9de00:
    # Line 2719
    lwc1	$f6,36($s6)
    # Line 2720
    ldc1	$f4,32($sp)
    mul.s	$f4,$f4,$f6
    ld	$v0,160($sp)
    li	$at,10497
    beq	$at,$v0,.L0db9e8b8
    mov.s	$f28,$f4
    # Line 2724
    c.lt.s	$f4,$f30
    nop
    bc1fl	.L0db9e0cc
    # Line 2726
    c.lt.s	$f6,$f4
    mov.s	$f28,$f30
.L0db9de30:
    # Line 2728
    ldc1	$f5,16($sp)
.L0db9de34:
    # Line 2729
    # lw $t9, -17792($gp) # &floorf
    # Line 2728
    sub.s	$f28,$f28,$f5
    # Line 2729
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s7,$f0
    nop
    # Line 2730
    addiu	$s6,$s7,1
.L0db9de54:
    # Line 2733
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 2734
    # lw $t9, -17792($gp) # &floorf
    # Line 2733
    sub.s	$f1,$f26,$f0
    # Line 2734
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f1,88($sp)
    li	$a2,10497
    li	$a3,-1
    li	$a4,8448
    # Line 2755
    ldc1	$f6,88($sp)
    # Line 2736
    nor	$a0,$s8,$zero
    and	$a5,$a0,$s7
    sub.s	$f10,$f28,$f0
    # Line 2735
    ldc1	$f5,0($sp)
    # Line 2736
    ld	$a6,256($sp)
    # Line 2735
    ldc1	$f8,88($sp)
    # Line 2736
    sub.s	$f7,$f5,$f10
    nor	$a6,$a6,$zero
    and	$a7,$a6,$s5
    # Line 2735
    sub.s	$f8,$f5,$f8
    # Line 2755
    mul.s	$f6,$f6,$f7
    # Line 2736
    or	$v1,$a7,$a5
    beqz	$v1,.L0db9e68c
    mul.s	$f9,$f8,$f7
    # Line 2749
    lwc1	$f22,164($s0)
    # Line 2748
    lwc1	$f20,160($s0)
    # Line 2749
    mul.s	$f22,$f22,$f9
    # Line 2747
    lwc1	$f24,156($s0)
    # Line 2748
    mul.s	$f20,$f20,$f9
    # Line 2747
    mul.s	$f24,$f24,$f9
.L0db9ded4:
    # Line 2755
    and	$t0,$a6,$s4
    or	$at,$t0,$a5
    beqz	$at,.L0db9e6cc
    # Line 2764
    ld	$a1,136($sp)
    # Line 2760
    lwc1	$f2,164($s0)
    # Line 2759
    lwc1	$f1,160($s0)
    # Line 2760
    mul.s	$f2,$f2,$f6
    # Line 2758
    lwc1	$f0,156($s0)
    # Line 2759
    mul.s	$f1,$f1,$f6
    # Line 2758
    mul.s	$f0,$f0,$f6
    # Line 2760
    add.s	$f22,$f2,$f22
    # Line 2759
    add.s	$f20,$f1,$f20
    # Line 2758
    add.s	$f24,$f0,$f24
.L0db9df08:
    # Line 2766
    and	$a5,$a0,$s6
    or	$v0,$a7,$a5
    beqz	$v0,.L0db9e714
    mul.s	$f7,$f10,$f8
    # Line 2771
    lwc1	$f1,164($s0)
    # Line 2770
    lwc1	$f0,160($s0)
    # Line 2771
    mul.s	$f1,$f1,$f7
    # Line 2769
    lwc1	$f3,156($s0)
    # Line 2770
    mul.s	$f0,$f0,$f7
    # Line 2769
    mul.s	$f3,$f3,$f7
    # Line 2771
    add.s	$f22,$f1,$f22
    # Line 2770
    add.s	$f20,$f0,$f20
    # Line 2769
    add.s	$f24,$f3,$f24
.L0db9df3c:
    # Line 2777
    ldc1	$f8,88($sp)
    or	$v1,$t0,$a5
    beqz	$v1,.L0db9e760
    mul.s	$f8,$f10,$f8
    # Line 2782
    lwc1	$f2,164($s0)
    # Line 2781
    lwc1	$f1,160($s0)
    # Line 2782
    mul.s	$f2,$f2,$f8
    # Line 2780
    lwc1	$f0,156($s0)
    # Line 2781
    mul.s	$f1,$f1,$f8
    # Line 2780
    mul.s	$f0,$f0,$f8
    # Line 2782
    add.s	$f22,$f2,$f22
    # Line 2781
    add.s	$f20,$f1,$f20
    # Line 2782
    b	.L0db9db80
    # Line 2780
    add.s	$f24,$f0,$f24
.L0db9df74:
    # Line 3053
    li	$a0,1
    b	.L0db9dba0
    or	$v0,$a0,$v0
.L0db9df80:
    nop
    # Line 2583
    bc1f	.L0db9da38
    # Line 2585
    ldc1	$f1,16($sp)
    b	.L0db9da34
    # Line 2584
    mov.s	$f28,$f6
.L0db9df94:
    # Line 2622
    ld	$at,136($sp)
    sllv	$a1,$s6,$a0
    addu	$v0,$a1,$s4
    sll	$v1,$v0,0x1
    sll	$v0,$v0,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$at
    addu	$v0,$v0,$v1
    # Line 2623
    lwc1	$f1,4($v0)
    mul.s	$f1,$f1,$f8
    # Line 2622
    addu	$a1,$a1,$s5
    sll	$v1,$a1,0x2
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$at
    addu	$v1,$v1,$a1
    # Line 2623
    lwc1	$f3,4($v1)
    mul.s	$f3,$f3,$f7
    # Line 2624
    lwc1	$f2,8($v0)
    mul.s	$f2,$f2,$f8
    # Line 2622
    sllv	$a0,$s7,$a0
    addu	$a4,$a0,$s4
    sll	$a1,$a4,0x2
    sll	$a4,$a4,0x1
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$at
    addu	$a1,$a1,$a4
    # Line 2623
    lwc1	$f4,4($a1)
    mul.s	$f4,$f4,$f6
    # Line 2624
    lwc1	$f0,8($a1)
    # Line 2622
    addu	$a0,$a0,$s5
    # Line 2624
    mul.s	$f0,$f0,$f6
    # Line 2622
    sll	$a4,$a0,0x1
    sll	$a0,$a0,0x2
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$at
    addu	$a0,$a0,$a4
    # Line 2624
    lwc1	$f22,8($a0)
    lwc1	$f24,8($v1)
    mul.s	$f22,$f22,$f9
    mul.s	$f24,$f24,$f7
    # Line 2623
    lwc1	$f20,4($a0)
    mul.s	$f20,$f20,$f9
    # Line 2624
    add.s	$f22,$f22,$f0
    # Line 2622
    lwc1	$f0,0($a1)
    mul.s	$f0,$f0,$f6
    # Line 2624
    add.s	$f22,$f22,$f24
    # Line 2622
    lwc1	$f24,0($a0)
    mul.s	$f24,$f24,$f9
    # Line 2624
    add.s	$f22,$f22,$f2
    # Line 2622
    lwc1	$f2,0($v1)
    # Line 2623
    add.s	$f20,$f20,$f4
    # Line 2622
    mul.s	$f2,$f2,$f7
    add.s	$f24,$f24,$f0
    lwc1	$f0,0($v0)
    # Line 2623
    add.s	$f20,$f20,$f3
    # Line 2622
    mul.s	$f0,$f0,$f8
    add.s	$f24,$f24,$f2
    # Line 3040
    li	$at,8448
    # Line 2623
    add.s	$f20,$f20,$f1
    li	$a4,8448
    # Line 3040
    bne	$s3,$at,.L0db9db84
    # Line 2622
    add.s	$f24,$f24,$f0
.L0db9e090:
    # Line 3050
    lwc1	$f3,4($s1)
    # Line 3051
    lwc1	$f0,8($s1)
    # Line 3050
    mul.s	$f3,$f3,$f20
    # Line 3049
    lwc1	$f2,0($s1)
    # Line 3051
    mul.s	$f0,$f0,$f22
    # Line 3049
    mul.s	$f2,$f2,$f24
    # Line 3051
    swc1	$f0,8($s1)
    # Line 3050
    swc1	$f3,4($s1)
    # Line 3051
    b	.L0db9dbcc
    # Line 3049
    swc1	$f2,0($s1)
.L0db9e0b8:
    nop
    # Line 2712
    bc1f	.L0db9dde0
    # Line 2714
    ldc1	$f21,16($sp)
    b	.L0db9dddc
    # Line 2713
    mov.s	$f26,$f7
.L0db9e0cc:
    nop
    # Line 2726
    bc1f	.L0db9de34
    # Line 2728
    ldc1	$f5,16($sp)
    b	.L0db9de30
    # Line 2727
    mov.s	$f28,$f6
.L0db9e0e0:
    # Line 3066
    lwc1	$f1,0($s1)
    # Line 3064
    lw	$a1,2376($s2)
    # Line 3066
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($a1)
    mul.s	$f2,$f2,$f24
    add.s	$f1,$f1,$f2
    swc1	$f1,0($s1)
    # Line 3067
    lwc1	$f0,3284($s2)
    sub.s	$f0,$f0,$f20
    lwc1	$f3,4($s1)
    mul.s	$f3,$f3,$f0
    lwc1	$f0,8($a1)
    mul.s	$f0,$f0,$f20
    add.s	$f3,$f3,$f0
    swc1	$f3,4($s1)
    # Line 3068
    lwc1	$f2,3284($s2)
    sub.s	$f2,$f2,$f22
    lwc1	$f1,8($s1)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,12($a1)
    mul.s	$f2,$f2,$f22
    add.s	$f1,$f1,$f2
    b	.L0db9dbcc
    swc1	$f1,8($s1)
.L0db9e140:
    sd	$zero,264($sp)
    # Line 2798
    sll	$s6,$a6,0x2
    subu	$s6,$s6,$a6
    sll	$s6,$s6,0x3
    addu	$s6,$s6,$a6
    sll	$s6,$s6,0x2
    addu	$s6,$a5,$s6
    sd	$s6,192($sp)
    # Line 2802
    lw	$s8,24($s6)
    # Line 2799
    lw	$at,44($s6)
    # Line 2804
    lwc1	$f7,32($s6)
    # Line 2800
    lw	$v0,0($s6)
    sd	$at,144($sp)
    # Line 2805
    mul.s	$f6,$f4,$f7
    # Line 2801
    lw	$at,20($s6)
    sd	$v0,136($sp)
    # Line 2802
    addiu	$s8,$s8,-1
    # Line 2801
    addiu	$at,$at,-1
    sd	$at,256($sp)
    # Line 2805
    beq	$a2,$a0,.L0db9ed88
    mov.s	$f26,$f6
    # Line 2810
    c.lt.s	$f6,$f30
    nop
    bc1fl	.L0db9e7ac
    # Line 2812
    c.lt.s	$f7,$f6
    sd	$a0,128($sp)
    sdc1	$f4,24($sp)
    sdc1	$f5,8($sp)
    mov.s	$f26,$f30
.L0db9e1b4:
    # Line 2814
    ldc1	$f3,16($sp)
.L0db9e1b8:
    sd	$a0,128($sp)
    # Line 2815
    # lw $t9, -17792($gp) # &floorf
    # Line 2814
    sub.s	$f26,$f26,$f3
    sdc1	$f4,24($sp)
    sdc1	$f5,8($sp)
    # Line 2815
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f4,$f0
    mfc1	$s5,$f4
    nop
    # Line 2816
    addiu	$s4,$s5,1
.L0db9e1e4:
    # Line 2819
    lwc1	$f6,36($s6)
    # Line 2820
    ldc1	$f4,32($sp)
    mul.s	$f4,$f4,$f6
    ld	$v0,160($sp)
    li	$at,10497
    beq	$at,$v0,.L0db9edd0
    mov.s	$f28,$f4
    # Line 2825
    c.lt.s	$f4,$f30
    nop
    bc1fl	.L0db9e7cc
    # Line 2827
    c.lt.s	$f6,$f4
    mov.s	$f28,$f30
.L0db9e214:
    # Line 2829
    ldc1	$f5,16($sp)
.L0db9e218:
    # Line 2830
    # lw $t9, -17792($gp) # &floorf
    # Line 2829
    sub.s	$f28,$f28,$f5
    # Line 2830
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s7,$f0
    nop
    # Line 2831
    addiu	$s6,$s7,1
.L0db9e238:
    # Line 2834
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 2835
    # lw $t9, -17792($gp) # &floorf
    # Line 2834
    sub.s	$f1,$f26,$f0
    # Line 2835
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f1,88($sp)
    # Line 2836
    ldc1	$f5,88($sp)
    ldc1	$f8,0($sp)
    sub.s	$f7,$f8,$f5
    # Line 2837
    mul.s	$f5,$f5,$f20
    sub.s	$f6,$f28,$f0
    mul.s	$f7,$f7,$f20
    sub.s	$f0,$f8,$f6
    mul.s	$f8,$f5,$f6
    mul.s	$f5,$f5,$f0
    ld	$a2,192($sp)
    ld	$v1,264($sp)
    mul.s	$f6,$f7,$f6
    li	$a1,2
    beq	$v1,$a1,.L0db9e8e8
    mul.s	$f7,$f7,$f0
    ld	$a6,256($sp)
    # Line 2868
    nor	$a0,$s8,$zero
    and	$a5,$a0,$s7
    nor	$a6,$a6,$zero
    and	$a7,$a6,$s5
    or	$at,$a7,$a5
    beqz	$at,.L0db9eaf4
    # Line 2883
    and	$t0,$a6,$s4
    # Line 2877
    lwc1	$f22,164($s0)
    # Line 2876
    lwc1	$f20,160($s0)
    # Line 2877
    mul.s	$f22,$f22,$f7
    # Line 2875
    lwc1	$f24,156($s0)
    # Line 2876
    mul.s	$f20,$f20,$f7
    # Line 2875
    mul.s	$f24,$f24,$f7
.L0db9e2cc:
    # Line 2883
    or	$at,$t0,$a5
    beqz	$at,.L0db9eb34
    # Line 2894
    and	$a5,$a0,$s6
    # Line 2888
    lwc1	$f2,164($s0)
    # Line 2887
    lwc1	$f1,160($s0)
    # Line 2888
    mul.s	$f2,$f2,$f5
    # Line 2886
    lwc1	$f0,156($s0)
    # Line 2887
    mul.s	$f1,$f1,$f5
    # Line 2886
    mul.s	$f0,$f0,$f5
    # Line 2888
    add.s	$f22,$f2,$f22
    # Line 2887
    add.s	$f20,$f1,$f20
    # Line 2886
    add.s	$f24,$f0,$f24
.L0db9e2fc:
    # Line 2894
    or	$v0,$a7,$a5
    beqz	$v0,.L0db9eb80
    ld	$at,144($sp)
    # Line 2899
    lwc1	$f1,164($s0)
    # Line 2898
    lwc1	$f0,160($s0)
    # Line 2899
    mul.s	$f1,$f1,$f6
    # Line 2897
    lwc1	$f3,156($s0)
    # Line 2898
    mul.s	$f0,$f0,$f6
    # Line 2897
    mul.s	$f3,$f3,$f6
    # Line 2899
    add.s	$f22,$f1,$f22
    # Line 2898
    add.s	$f20,$f0,$f20
    # Line 2897
    add.s	$f24,$f3,$f24
.L0db9e32c:
    # Line 2905
    or	$v1,$t0,$a5
    beqz	$v1,.L0db9ebc8
    # Line 2914
    ld	$a1,136($sp)
    # Line 2910
    lwc1	$f0,164($s0)
    # Line 2909
    lwc1	$f3,160($s0)
    # Line 2910
    mul.s	$f0,$f0,$f8
    # Line 2908
    lwc1	$f2,156($s0)
    # Line 2909
    mul.s	$f3,$f3,$f8
    # Line 2908
    mul.s	$f2,$f2,$f8
    # Line 2910
    add.s	$f22,$f0,$f22
    # Line 2909
    add.s	$f20,$f3,$f20
    # Line 2908
    add.s	$f24,$f2,$f24
.L0db9e35c:
    # Line 2922
    addiu	$s6,$a2,100
    # Line 2926
    lw	$s8,24($s6)
    sd	$zero,264($sp)
    li	$a1,10497
    addiu	$s8,$s8,-1
    # Line 2924
    lw	$v0,0($s6)
    # Line 2929
    ldc1	$f6,24($sp)
    # Line 2928
    lwc1	$f7,32($s6)
    # Line 2923
    lw	$at,44($s6)
    sd	$v0,136($sp)
    # Line 2929
    mul.s	$f6,$f6,$f7
    # Line 2925
    lw	$v0,20($s6)
    sd	$at,144($sp)
    # Line 2929
    ld	$at,128($sp)
    # Line 2925
    addiu	$v0,$v0,-1
    sd	$v0,256($sp)
    # Line 2929
    beq	$a1,$at,.L0db9ee08
    mov.s	$f26,$f6
    # Line 2934
    c.lt.s	$f6,$f30
    nop
    bc1fl	.L0db9e7e0
    # Line 2936
    c.lt.s	$f7,$f6
    mov.s	$f26,$f30
.L0db9e3b8:
    # Line 2938
    ldc1	$f7,16($sp)
.L0db9e3bc:
    # Line 2939
    # lw $t9, -17792($gp) # &floorf
    # Line 2938
    sub.s	$f26,$f26,$f7
    # Line 2939
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    mfc1	$s5,$f0
    nop
    # Line 2940
    addiu	$s4,$s5,1
.L0db9e3dc:
    # Line 2943
    lwc1	$f6,36($s6)
    # Line 2944
    ldc1	$f4,32($sp)
    mul.s	$f4,$f4,$f6
    ld	$a1,160($sp)
    li	$v1,10497
    beq	$v1,$a1,.L0db9ee44
    mov.s	$f28,$f4
    # Line 2949
    c.lt.s	$f4,$f30
    nop
    bc1fl	.L0db9e7f4
    # Line 2951
    c.lt.s	$f6,$f4
    mov.s	$f28,$f30
.L0db9e40c:
    # Line 2953
    ldc1	$f5,16($sp)
.L0db9e410:
    # Line 2954
    # lw $t9, -17792($gp) # &floorf
    # Line 2953
    sub.s	$f28,$f28,$f5
    # Line 2954
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s7,$f0
    nop
    # Line 2955
    addiu	$s6,$s7,1
.L0db9e430:
    # Line 2958
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 2959
    # lw $t9, -17792($gp) # &floorf
    # Line 2958
    sub.s	$f1,$f26,$f0
    # Line 2959
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f1,88($sp)
    ldc1	$f6,88($sp)
    # Line 2960
    ldc1	$f5,0($sp)
    # Line 2961
    ldc1	$f9,8($sp)
    # Line 2960
    sub.s	$f1,$f5,$f6
    # Line 2961
    mul.s	$f6,$f9,$f6
    sub.s	$f8,$f28,$f0
    mul.s	$f9,$f9,$f1
    li	$a2,10497
    sub.s	$f0,$f5,$f8
    mul.s	$f7,$f8,$f6
    li	$a3,-1
    li	$a4,8448
    mul.s	$f6,$f6,$f0
    ld	$at,264($sp)
    mul.s	$f8,$f8,$f9
    li	$v0,2
    beq	$at,$v0,.L0db9e9e8
    mul.s	$f9,$f9,$f0
    ld	$a6,256($sp)
    # Line 2992
    nor	$a0,$s8,$zero
    and	$a5,$a0,$s7
    nor	$a6,$a6,$zero
    and	$a7,$a6,$s5
    or	$v1,$a7,$a5
    beqz	$v1,.L0db9ec10
    # Line 3007
    and	$t0,$a6,$s4
    # Line 3001
    lwc1	$f2,164($s0)
    # Line 3000
    lwc1	$f1,160($s0)
    # Line 3001
    mul.s	$f2,$f2,$f9
    # Line 2999
    lwc1	$f0,156($s0)
    # Line 3000
    mul.s	$f1,$f1,$f9
    # Line 2999
    mul.s	$f0,$f0,$f9
    # Line 3001
    add.s	$f22,$f2,$f22
    # Line 3000
    add.s	$f20,$f1,$f20
    # Line 2999
    add.s	$f24,$f0,$f24
.L0db9e4dc:
    # Line 3007
    or	$at,$t0,$a5
    beqz	$at,.L0db9ec5c
    # Line 3018
    and	$a5,$a0,$s6
    # Line 3012
    lwc1	$f1,164($s0)
    # Line 3011
    lwc1	$f0,160($s0)
    # Line 3012
    mul.s	$f1,$f1,$f6
    # Line 3010
    lwc1	$f3,156($s0)
    # Line 3011
    mul.s	$f0,$f0,$f6
    # Line 3010
    mul.s	$f3,$f3,$f6
    # Line 3012
    add.s	$f22,$f1,$f22
    # Line 3011
    add.s	$f20,$f0,$f20
    # Line 3010
    add.s	$f24,$f3,$f24
.L0db9e50c:
    # Line 3018
    or	$v0,$a7,$a5
    beqz	$v0,.L0db9eca8
    ld	$at,144($sp)
    # Line 3023
    lwc1	$f0,164($s0)
    # Line 3022
    lwc1	$f3,160($s0)
    # Line 3023
    mul.s	$f0,$f0,$f8
    # Line 3021
    lwc1	$f2,156($s0)
    # Line 3022
    mul.s	$f3,$f3,$f8
    # Line 3021
    mul.s	$f2,$f2,$f8
    # Line 3023
    add.s	$f22,$f0,$f22
    # Line 3022
    add.s	$f20,$f3,$f20
    # Line 3021
    add.s	$f24,$f2,$f24
.L0db9e53c:
    # Line 3029
    or	$v1,$t0,$a5
    beqz	$v1,.L0db9ecf0
    # Line 3038
    ld	$a1,136($sp)
    # Line 3034
    lwc1	$f3,164($s0)
    # Line 3033
    lwc1	$f2,160($s0)
    # Line 3034
    mul.s	$f3,$f3,$f7
    # Line 3032
    lwc1	$f1,156($s0)
    # Line 3033
    mul.s	$f2,$f2,$f7
    # Line 3032
    mul.s	$f1,$f1,$f7
    # Line 3034
    add.s	$f22,$f3,$f22
    # Line 3033
    add.s	$f20,$f2,$f20
    # Line 3034
    b	.L0db9db80
    # Line 3032
    add.s	$f24,$f1,$f24
.L0db9e570:
    ld	$at,144($sp)
    # Line 2637
    ld	$v0,136($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 2639
    lwc1	$f22,8($a1)
    # Line 2638
    lwc1	$f20,4($a1)
    # Line 2639
    mul.s	$f22,$f22,$f9
    # Line 2637
    lwc1	$f24,0($a1)
    # Line 2638
    mul.s	$f20,$f20,$f9
    b	.L0db9daf0
    # Line 2637
    mul.s	$f24,$f24,$f9
.L0db9e5b0:
    # Line 2648
    ld	$a1,136($sp)
    ld	$v1,144($sp)
    sllv	$v1,$s7,$v1
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 2650
    lwc1	$f2,8($v0)
    # Line 2649
    lwc1	$f1,4($v0)
    # Line 2650
    mul.s	$f2,$f2,$f6
    # Line 2648
    lwc1	$f0,0($v0)
    # Line 2649
    mul.s	$f1,$f1,$f6
    # Line 2648
    mul.s	$f0,$f0,$f6
    # Line 2650
    add.s	$f22,$f2,$f22
    # Line 2649
    add.s	$f20,$f1,$f20
    b	.L0db9db20
    # Line 2648
    add.s	$f24,$f0,$f24
.L0db9e5fc:
    # Line 2659
    ld	$v0,136($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 2661
    lwc1	$f1,8($a1)
    # Line 2660
    lwc1	$f0,4($a1)
    # Line 2661
    mul.s	$f1,$f1,$f7
    # Line 2659
    lwc1	$f3,0($a1)
    # Line 2660
    mul.s	$f0,$f0,$f7
    # Line 2659
    mul.s	$f3,$f3,$f7
    # Line 2661
    add.s	$f22,$f1,$f22
    # Line 2660
    add.s	$f20,$f0,$f20
    b	.L0db9db50
    # Line 2659
    add.s	$f24,$f3,$f24
.L0db9e644:
    ld	$v1,144($sp)
    # Line 2670
    sllv	$v1,$s6,$v1
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 2672
    lwc1	$f0,8($v0)
    # Line 2671
    lwc1	$f3,4($v0)
    # Line 2672
    mul.s	$f0,$f0,$f8
    # Line 2670
    lwc1	$f2,0($v0)
    # Line 2671
    mul.s	$f3,$f3,$f8
    # Line 2670
    mul.s	$f2,$f2,$f8
    # Line 2672
    add.s	$f22,$f0,$f22
    # Line 2671
    add.s	$f20,$f3,$f20
    b	.L0db9db80
    # Line 2670
    add.s	$f24,$f2,$f24
.L0db9e68c:
    # Line 2753
    ld	$v0,136($sp)
    ld	$at,144($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 2755
    lwc1	$f22,8($a1)
    # Line 2754
    lwc1	$f20,4($a1)
    # Line 2755
    mul.s	$f22,$f22,$f9
    # Line 2753
    lwc1	$f24,0($a1)
    # Line 2754
    mul.s	$f20,$f20,$f9
    b	.L0db9ded4
    # Line 2753
    mul.s	$f24,$f24,$f9
.L0db9e6cc:
    ld	$v1,144($sp)
    # Line 2764
    sllv	$v1,$s7,$v1
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 2766
    lwc1	$f2,8($v0)
    # Line 2765
    lwc1	$f1,4($v0)
    # Line 2766
    mul.s	$f2,$f2,$f6
    # Line 2764
    lwc1	$f0,0($v0)
    # Line 2765
    mul.s	$f1,$f1,$f6
    # Line 2764
    mul.s	$f0,$f0,$f6
    # Line 2766
    add.s	$f22,$f2,$f22
    # Line 2765
    add.s	$f20,$f1,$f20
    b	.L0db9df08
    # Line 2764
    add.s	$f24,$f0,$f24
.L0db9e714:
    ld	$at,144($sp)
    # Line 2775
    ld	$v0,136($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 2777
    lwc1	$f1,8($a1)
    # Line 2776
    lwc1	$f0,4($a1)
    # Line 2777
    mul.s	$f1,$f1,$f7
    # Line 2775
    lwc1	$f3,0($a1)
    # Line 2776
    mul.s	$f0,$f0,$f7
    # Line 2775
    mul.s	$f3,$f3,$f7
    # Line 2777
    add.s	$f22,$f1,$f22
    # Line 2776
    add.s	$f20,$f0,$f20
    b	.L0db9df3c
    # Line 2775
    add.s	$f24,$f3,$f24
.L0db9e760:
    # Line 2786
    ld	$a1,136($sp)
    ld	$v1,144($sp)
    sllv	$v1,$s6,$v1
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 2788
    lwc1	$f0,8($v0)
    # Line 2787
    lwc1	$f3,4($v0)
    # Line 2788
    mul.s	$f0,$f0,$f8
    # Line 2786
    lwc1	$f2,0($v0)
    # Line 2787
    mul.s	$f3,$f3,$f8
    # Line 2786
    mul.s	$f2,$f2,$f8
    # Line 2788
    add.s	$f22,$f0,$f22
    # Line 2787
    add.s	$f20,$f3,$f20
    b	.L0db9db80
    # Line 2786
    add.s	$f24,$f2,$f24
.L0db9e7ac:
    nop
    # Line 2812
    bc1f	.L0db9e1b8
    # Line 2814
    ldc1	$f3,16($sp)
    sd	$a0,128($sp)
    sdc1	$f4,24($sp)
    sdc1	$f5,8($sp)
    b	.L0db9e1b4
    # Line 2813
    mov.s	$f26,$f7
.L0db9e7cc:
    nop
    # Line 2827
    bc1f	.L0db9e218
    # Line 2829
    ldc1	$f5,16($sp)
    b	.L0db9e214
    # Line 2828
    mov.s	$f28,$f6
.L0db9e7e0:
    nop
    # Line 2936
    bc1fl	.L0db9e3bc
    # Line 2938
    ldc1	$f7,16($sp)
    b	.L0db9e3b8
    # Line 2937
    mov.s	$f26,$f7
.L0db9e7f4:
    nop
    # Line 2951
    bc1f	.L0db9e410
    # Line 2953
    ldc1	$f5,16($sp)
    b	.L0db9e40c
    # Line 2952
    mov.s	$f28,$f6
.L0db9e808:
    ldc1	$f26,16($sp)
    # Line 2564
    # lw $t9, -17792($gp) # &floorf
    # Line 2563
    sub.s	$f26,$f6,$f26
    # Line 2564
    jal	floorf
    mov.s	$f12,$f26
    li	$a0,10497
    trunc.w.s	$f0,$f0
    # Line 2566
    li	$at,1
    sd	$at,264($sp)
    # Line 2564
    ld	$at,256($sp)
    mfc1	$s5,$f0
    ldc1	$f5,32($sp)
    ld	$a2,160($sp)
    and	$s5,$s5,$at
    # Line 2565
    addiu	$s4,$s5,1
    # Line 2566
    b	.L0db9da10
    # Line 2565
    and	$s4,$s4,$at
.L0db9e84c:
    ldc1	$f28,16($sp)
    # Line 2579
    # lw $t9, -17792($gp) # &floorf
    # Line 2578
    sub.s	$f28,$f4,$f28
    # Line 2579
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    # Line 2581
    ld	$at,264($sp)
    # Line 2579
    mfc1	$s7,$f0
    # Line 2581
    addiu	$at,$at,1
    sd	$at,264($sp)
    # Line 2579
    and	$s7,$s7,$s8
    # Line 2580
    addiu	$s6,$s7,1
    # Line 2581
    b	.L0db9da58
    # Line 2580
    and	$s6,$s6,$s8
.L0db9e884:
    ldc1	$f26,16($sp)
    # Line 2709
    # lw $t9, -17792($gp) # &floorf
    # Line 2708
    sub.s	$f26,$f6,$f26
    # Line 2709
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    ld	$at,256($sp)
    mfc1	$s5,$f0
    nop
    and	$s5,$s5,$at
    # Line 2710
    addiu	$s4,$s5,1
    b	.L0db9de00
    and	$s4,$s4,$at
.L0db9e8b8:
    ldc1	$f28,16($sp)
    # Line 2723
    # lw $t9, -17792($gp) # &floorf
    # Line 2722
    sub.s	$f28,$f4,$f28
    # Line 2723
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s7,$f0
    nop
    and	$s7,$s7,$s8
    # Line 2724
    addiu	$s6,$s7,1
    b	.L0db9de54
    and	$s6,$s6,$s8
.L0db9e8e8:
    # Line 2866
    ld	$v0,136($sp)
    ld	$a1,144($sp)
    sd	$a2,288($sp)
    sllv	$a2,$s6,$a1
    addu	$v1,$a2,$s4
    sll	$a0,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$v0
    addu	$v1,$v1,$a0
    # Line 2867
    lwc1	$f1,4($v1)
    mul.s	$f1,$f1,$f8
    # Line 2866
    addu	$a2,$a2,$s5
    sll	$a0,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$v0
    addu	$a0,$a0,$a2
    # Line 2867
    lwc1	$f3,4($a0)
    mul.s	$f3,$f3,$f6
    # Line 2868
    lwc1	$f2,8($v1)
    mul.s	$f2,$f2,$f8
    # Line 2866
    sllv	$a1,$s7,$a1
    addu	$at,$a1,$s4
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a2,$a2,$at
    # Line 2867
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f5
    # Line 2868
    lwc1	$f0,8($a2)
    # Line 2866
    addu	$a1,$a1,$s5
    # Line 2868
    mul.s	$f0,$f0,$f5
    # Line 2866
    sll	$at,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 2868
    lwc1	$f22,8($a1)
    lwc1	$f24,8($a0)
    mul.s	$f22,$f22,$f7
    mul.s	$f24,$f24,$f6
    # Line 2867
    lwc1	$f20,4($a1)
    mul.s	$f20,$f20,$f7
    # Line 2868
    add.s	$f22,$f22,$f0
    # Line 2866
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f5
    # Line 2868
    add.s	$f22,$f22,$f24
    # Line 2866
    lwc1	$f24,0($a1)
    mul.s	$f24,$f24,$f7
    # Line 2868
    add.s	$f22,$f22,$f2
    # Line 2866
    lwc1	$f2,0($a0)
    # Line 2867
    add.s	$f20,$f20,$f4
    # Line 2866
    mul.s	$f2,$f2,$f6
    add.s	$f24,$f24,$f0
    lwc1	$f0,0($v1)
    # Line 2867
    add.s	$f20,$f20,$f3
    # Line 2866
    mul.s	$f0,$f0,$f8
    add.s	$f24,$f24,$f2
    # Line 2867
    add.s	$f20,$f20,$f1
    ld	$a2,288($sp)
    # Line 2868
    b	.L0db9e35c
    # Line 2866
    add.s	$f24,$f24,$f0
.L0db9e9e8:
    # Line 2990
    ld	$a0,136($sp)
    ld	$v0,144($sp)
    # Line 2984
    sllv	$at,$s6,$v0
    addu	$v1,$at,$s5
    # Line 2990
    addu	$at,$at,$s4
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    addu	$a1,$a1,$at
    # Line 2991
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f7
    sd	$a2,288($sp)
    # Line 2984
    sll	$a2,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$a2,$a2,$v1
    # Line 2985
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f8
    # Line 2972
    sllv	$v0,$s7,$v0
    # Line 2978
    addu	$v1,$v0,$s4
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$at,$at,$v1
    # Line 2979
    lwc1	$f10,4($at)
    mul.s	$f10,$f10,$f6
    # Line 2972
    addu	$v0,$v0,$s5
    sll	$v1,$v0,0x1
    sll	$v0,$v0,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$v0,$v0,$v1
    # Line 2974
    lwc1	$f11,8($v0)
    # Line 2980
    lwc1	$f4,8($at)
    # Line 2974
    mul.s	$f11,$f11,$f9
    # Line 2986
    lwc1	$f0,8($a2)
    # Line 2980
    mul.s	$f4,$f4,$f6
    # Line 2986
    mul.s	$f0,$f0,$f8
    # Line 2973
    lwc1	$f2,4($v0)
    # Line 2974
    add.s	$f11,$f11,$f22
    # Line 2973
    mul.s	$f2,$f2,$f9
    # Line 2992
    lwc1	$f22,8($a1)
    # Line 2980
    add.s	$f4,$f4,$f11
    # Line 2992
    mul.s	$f22,$f22,$f7
    # Line 2986
    add.s	$f0,$f0,$f4
    # Line 2972
    lwc1	$f4,0($v0)
    mul.s	$f4,$f4,$f9
    # Line 2973
    add.s	$f20,$f2,$f20
    # Line 2978
    lwc1	$f2,0($at)
    # Line 2992
    add.s	$f22,$f22,$f0
    # Line 2978
    mul.s	$f2,$f2,$f6
    # Line 2972
    add.s	$f4,$f4,$f24
    # Line 2984
    lwc1	$f0,0($a2)
    # Line 2979
    add.s	$f20,$f10,$f20
    # Line 2984
    mul.s	$f0,$f0,$f8
    # Line 2978
    add.s	$f2,$f2,$f4
    # Line 2990
    lwc1	$f24,0($a1)
    # Line 2985
    add.s	$f20,$f3,$f20
    # Line 2990
    mul.s	$f24,$f24,$f7
    # Line 2984
    add.s	$f0,$f0,$f2
    # Line 2991
    add.s	$f20,$f1,$f20
    ld	$a2,288($sp)
    # Line 2992
    b	.L0db9db80
    # Line 2990
    add.s	$f24,$f24,$f0
.L0db9eaf4:
    # Line 2881
    ld	$v0,136($sp)
    ld	$at,144($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 2883
    lwc1	$f22,8($a1)
    # Line 2882
    lwc1	$f20,4($a1)
    # Line 2883
    mul.s	$f22,$f22,$f7
    # Line 2881
    lwc1	$f24,0($a1)
    # Line 2882
    mul.s	$f20,$f20,$f7
    b	.L0db9e2cc
    # Line 2881
    mul.s	$f24,$f24,$f7
.L0db9eb34:
    # Line 2892
    ld	$a1,136($sp)
    ld	$v1,144($sp)
    sllv	$v1,$s7,$v1
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 2894
    lwc1	$f2,8($v0)
    # Line 2893
    lwc1	$f1,4($v0)
    # Line 2894
    mul.s	$f2,$f2,$f5
    # Line 2892
    lwc1	$f0,0($v0)
    # Line 2893
    mul.s	$f1,$f1,$f5
    # Line 2892
    mul.s	$f0,$f0,$f5
    # Line 2894
    add.s	$f22,$f2,$f22
    # Line 2893
    add.s	$f20,$f1,$f20
    b	.L0db9e2fc
    # Line 2892
    add.s	$f24,$f0,$f24
.L0db9eb80:
    # Line 2903
    ld	$v0,136($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 2905
    lwc1	$f1,8($a1)
    # Line 2904
    lwc1	$f0,4($a1)
    # Line 2905
    mul.s	$f1,$f1,$f6
    # Line 2903
    lwc1	$f3,0($a1)
    # Line 2904
    mul.s	$f0,$f0,$f6
    # Line 2903
    mul.s	$f3,$f3,$f6
    # Line 2905
    add.s	$f22,$f1,$f22
    # Line 2904
    add.s	$f20,$f0,$f20
    b	.L0db9e32c
    # Line 2903
    add.s	$f24,$f3,$f24
.L0db9ebc8:
    ld	$v1,144($sp)
    # Line 2914
    sllv	$v1,$s6,$v1
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 2916
    lwc1	$f0,8($v0)
    # Line 2915
    lwc1	$f3,4($v0)
    # Line 2916
    mul.s	$f0,$f0,$f8
    # Line 2914
    lwc1	$f2,0($v0)
    # Line 2915
    mul.s	$f3,$f3,$f8
    # Line 2914
    mul.s	$f2,$f2,$f8
    # Line 2916
    add.s	$f22,$f0,$f22
    # Line 2915
    add.s	$f20,$f3,$f20
    b	.L0db9e35c
    # Line 2914
    add.s	$f24,$f2,$f24
.L0db9ec10:
    # Line 3005
    ld	$v0,136($sp)
    ld	$at,144($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3007
    lwc1	$f3,8($a1)
    # Line 3006
    lwc1	$f2,4($a1)
    # Line 3007
    mul.s	$f3,$f3,$f9
    # Line 3005
    lwc1	$f1,0($a1)
    # Line 3006
    mul.s	$f2,$f2,$f9
    # Line 3005
    mul.s	$f1,$f1,$f9
    # Line 3007
    add.s	$f22,$f3,$f22
    # Line 3006
    add.s	$f20,$f2,$f20
    b	.L0db9e4dc
    # Line 3005
    add.s	$f24,$f1,$f24
.L0db9ec5c:
    # Line 3016
    ld	$a1,136($sp)
    ld	$v1,144($sp)
    sllv	$v1,$s7,$v1
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3018
    lwc1	$f2,8($v0)
    # Line 3017
    lwc1	$f1,4($v0)
    # Line 3018
    mul.s	$f2,$f2,$f6
    # Line 3016
    lwc1	$f0,0($v0)
    # Line 3017
    mul.s	$f1,$f1,$f6
    # Line 3016
    mul.s	$f0,$f0,$f6
    # Line 3018
    add.s	$f22,$f2,$f22
    # Line 3017
    add.s	$f20,$f1,$f20
    b	.L0db9e50c
    # Line 3016
    add.s	$f24,$f0,$f24
.L0db9eca8:
    # Line 3027
    ld	$v0,136($sp)
    sllv	$at,$s6,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3029
    lwc1	$f1,8($a1)
    # Line 3028
    lwc1	$f0,4($a1)
    # Line 3029
    mul.s	$f1,$f1,$f8
    # Line 3027
    lwc1	$f3,0($a1)
    # Line 3028
    mul.s	$f0,$f0,$f8
    # Line 3027
    mul.s	$f3,$f3,$f8
    # Line 3029
    add.s	$f22,$f1,$f22
    # Line 3028
    add.s	$f20,$f0,$f20
    b	.L0db9e53c
    # Line 3027
    add.s	$f24,$f3,$f24
.L0db9ecf0:
    ld	$v1,144($sp)
    # Line 3038
    sllv	$v1,$s6,$v1
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3040
    lwc1	$f0,8($v0)
    # Line 3039
    lwc1	$f3,4($v0)
    # Line 3040
    mul.s	$f0,$f0,$f7
    # Line 3038
    lwc1	$f2,0($v0)
    # Line 3039
    mul.s	$f3,$f3,$f7
    # Line 3038
    mul.s	$f2,$f2,$f7
    # Line 3040
    add.s	$f22,$f0,$f22
    # Line 3039
    add.s	$f20,$f3,$f20
    b	.L0db9db80
    # Line 3038
    add.s	$f24,$f2,$f24
.L0db9ed38:
    # Line 3080
    move	$v0,$zero
    ld	$gp,232($sp)
    ld	$s0,184($sp)
    ld	$s1,176($sp)
    ld	$s2,248($sp)
    ld	$s3,240($sp)
    ld	$s4,200($sp)
    ld	$s5,168($sp)
    ld	$s6,224($sp)
    ld	$s7,152($sp)
    ld	$s8,216($sp)
    ldc1	$f20,80($sp)
    ldc1	$f22,64($sp)
    ldc1	$f24,56($sp)
    ldc1	$f26,72($sp)
    ld	$ra,208($sp)
    ldc1	$f28,48($sp)
    ldc1	$f30,40($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0db9ed88:
    ldc1	$f26,16($sp)
    sd	$a0,128($sp)
    # Line 2808
    # lw $t9, -17792($gp) # &floorf
    # Line 2807
    sub.s	$f26,$f6,$f26
    sdc1	$f4,24($sp)
    sdc1	$f5,8($sp)
    # Line 2808
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    # Line 2810
    li	$at,1
    sd	$at,264($sp)
    # Line 2808
    ld	$at,256($sp)
    mfc1	$s5,$f0
    nop
    and	$s5,$s5,$at
    # Line 2809
    addiu	$s4,$s5,1
    # Line 2810
    b	.L0db9e1e4
    # Line 2809
    and	$s4,$s4,$at
.L0db9edd0:
    ldc1	$f28,16($sp)
    # Line 2823
    # lw $t9, -17792($gp) # &floorf
    # Line 2822
    sub.s	$f28,$f4,$f28
    # Line 2823
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    # Line 2825
    ld	$at,264($sp)
    # Line 2823
    mfc1	$s7,$f0
    # Line 2825
    addiu	$at,$at,1
    sd	$at,264($sp)
    # Line 2823
    and	$s7,$s7,$s8
    # Line 2824
    addiu	$s6,$s7,1
    # Line 2825
    b	.L0db9e238
    # Line 2824
    and	$s6,$s6,$s8
.L0db9ee08:
    ldc1	$f26,16($sp)
    # Line 2932
    # lw $t9, -17792($gp) # &floorf
    # Line 2931
    sub.s	$f26,$f6,$f26
    # Line 2932
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    # Line 2934
    li	$at,1
    sd	$at,264($sp)
    # Line 2932
    ld	$at,256($sp)
    mfc1	$s5,$f0
    nop
    and	$s5,$s5,$at
    # Line 2933
    addiu	$s4,$s5,1
    # Line 2934
    b	.L0db9e3dc
    # Line 2933
    and	$s4,$s4,$at
.L0db9ee44:
    ldc1	$f28,16($sp)
    # Line 2947
    # lw $t9, -17792($gp) # &floorf
    # Line 2946
    sub.s	$f28,$f4,$f28
    # Line 2947
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    # Line 2949
    ld	$at,264($sp)
    # Line 2947
    mfc1	$s7,$f0
    # Line 2949
    addiu	$at,$at,1
    sd	$at,264($sp)
    # Line 2947
    and	$s7,$s7,$s8
    # Line 2948
    addiu	$s6,$s7,1
    # Line 2949
    b	.L0db9e430
    # Line 2948
    and	$s6,$s6,$s8
.end __glTextureRGB_L_LML_Span

# Function: __glTextureRGB_L_LML_StippledSpan
# Declared: Line 3090 (Source lines: 3091-3679)
# Address: 0x0db9ee7c - 0x0dba0558 (Size: 5852 bytes, Frame: 224)
.globl __glTextureRGB_L_LML_StippledSpan
.ent __glTextureRGB_L_LML_StippledSpan
__glTextureRGB_L_LML_StippledSpan:
    # Line 3123
    lwc1	$f6,30292($a0)
    # Line 3122
    lwc1	$f8,30288($a0)
    # Line 3121
    lwc1	$f7,30280($a0)
    # Line 3120
    lwc1	$f5,30276($a0)
    # Line 3091
    addiu	$sp,$sp,-352
    sd	$s1,168($sp)
    sd	$s5,176($sp)
    sd	$s6,152($sp)
    sd	$s7,184($sp)
    sd	$s8,192($sp)
    sdc1	$f20,40($sp)
    sdc1	$f22,56($sp)
    sdc1	$f24,64($sp)
    sdc1	$f26,48($sp)
    sdc1	$f28,72($sp)
    sdc1	$f30,80($sp)
    sd	$ra,160($sp)
    sd	$s3,216($sp)
    move	$s3,$a0
    sd	$s2,232($sp)
    # Line 3117
    lw	$s2,30516($a0)
    sd	$s0,200($sp)
    # Line 3115
    lw	$s0,28264($a0)
    sd	$gp,224($sp)
    # Line 3091
    lui	$v0,0x6
    addiu	$v0,$v0,-2020
    addu	$gp,$t9,$v0
    # Line 3118
    lw	$v1,30524($a0)
    # Line 3100
    lwc1	$f0,3280($a0)
    # Line 3116
    lw	$at,30300($a0)
    sd	$v1,240($sp)
    sdc1	$f0,16($sp)
    sd	$s4,208($sp)
    # Line 3113
    lw	$s4,2376($a0)
    sd	$at,248($sp)
    # Line 3123
    beqz	$at,.L0dba0508
    # Line 3113
    lw	$s4,0($s4)
    sd	$s6,152($sp)
    sd	$ra,160($sp)
    sd	$s1,168($sp)
    sd	$s5,176($sp)
    sd	$s7,184($sp)
    sd	$s8,192($sp)
    sdc1	$f20,40($sp)
    sdc1	$f26,48($sp)
    sdc1	$f22,56($sp)
    sdc1	$f24,64($sp)
    sdc1	$f28,72($sp)
    # Line 3123
    li	$a2,-1
    mtc1	$zero,$f30
    li	$a3,10497
    xori	$a1,$s4,0x2101
    sltiu	$a1,$a1,1
    b	.L0db9ef60
    sd	$a1,256($sp)
.L0db9ef58:
    ld	$at,248($sp)
    # Line 3134
    beqz	$at,.L0dba0508
.L0db9ef60:
    ld	$v0,248($sp)
    # Line 3126
    move	$v1,$v0
    sd	$v0,280($sp)
    slti	$v0,$v0,33
    bnez	$v0,.L0db9ef7c
    # Line 3128
    li	$a1,32
    sd	$a1,280($sp)
.L0db9ef7c:
    lui	$s1,0x8000
    # Line 3132
    ld	$v0,240($sp)
    # Line 3130
    ld	$at,280($sp)
    ld	$v1,248($sp)
    # Line 3132
    lw	$a1,0($v0)
    addiu	$v0,$v0,4
    # Line 3130
    subu	$v1,$v1,$at
    # Line 3134
    addiu	$at,$at,-1
    sd	$v1,248($sp)
    sd	$at,280($sp)
    sd	$v0,240($sp)
    bltz	$at,.L0db9ef58
    sd	$a1,264($sp)
    b	.L0db9f29c
    ld	$at,264($sp)
.L0db9efb8:
    # Line 3288
    trunc.w.s	$f20,$f10
    cvt.s.w	$f9,$f20
    mfc1	$a5,$f20
    # Line 3284
    lw	$a6,236($s0)
    # Line 3288
    ldc1	$f20,8($sp)
    addiu	$v0,$a5,1
    slt	$at,$a6,$v0
    sub.s	$f9,$f10,$f9
    slti	$v0,$v0,0
    or	$at,$at,$v0
    beqz	$at,.L0db9f79c
    sub.s	$f20,$f20,$f9
    # Line 3291
    sll	$s7,$a6,0x2
    subu	$s7,$s7,$a6
    sll	$s7,$s7,0x3
    addu	$s7,$s7,$a6
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$a4
    # Line 3293
    lw	$v0,0($s7)
    # Line 3292
    lw	$at,44($s7)
    sd	$v0,136($sp)
    # Line 3297
    lwc1	$f11,32($s7)
    # Line 3295
    lw	$a1,24($s7)
    # Line 3294
    lw	$v1,20($s7)
    # Line 3298
    mul.s	$f10,$f4,$f11
    sd	$at,120($sp)
    # Line 3294
    addiu	$v1,$v1,-1
    # Line 3295
    addiu	$a1,$a1,-1
    sd	$a1,104($sp)
    sd	$v1,112($sp)
    # Line 3298
    beq	$a3,$a0,.L0db9ff48
    mov.s	$f26,$f10
    # Line 3302
    c.lt.s	$f10,$f30
    nop
    bc1fl	.L0db9f704
    # Line 3304
    c.lt.s	$f11,$f10
    sdc1	$f5,312($sp)
    sdc1	$f6,304($sp)
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    mov.s	$f26,$f30
.L0db9f05c:
    sdc1	$f5,312($sp)
.L0db9f060:
    # Line 3306
    ldc1	$f21,16($sp)
    sdc1	$f6,304($sp)
    # Line 3307
    # lw $t9, -17792($gp) # &floorf
    # Line 3306
    sub.s	$f26,$f26,$f21
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    # Line 3307
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    mfc1	$s6,$f0
    nop
    # Line 3308
    addiu	$s5,$s6,1
.L0db9f090:
    # Line 3311
    lwc1	$f5,36($s7)
    # Line 3312
    ldc1	$f4,32($sp)
    mul.s	$f4,$f4,$f5
    ld	$v0,128($sp)
    li	$at,10497
    beq	$at,$v0,.L0db9ff8c
    mov.s	$f28,$f4
    # Line 3316
    c.lt.s	$f4,$f30
    nop
    bc1fl	.L0db9f728
    # Line 3318
    c.lt.s	$f5,$f4
    mov.s	$f28,$f30
.L0db9f0c0:
    # Line 3320
    ldc1	$f5,16($sp)
.L0db9f0c4:
    # Line 3321
    # lw $t9, -17792($gp) # &floorf
    # Line 3320
    sub.s	$f28,$f28,$f5
    # Line 3321
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s7,$f0
    nop
    # Line 3322
    addiu	$s8,$s7,1
.L0db9f0e4:
    # Line 3325
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 3326
    # lw $t9, -17792($gp) # &floorf
    # Line 3325
    sub.s	$f1,$f26,$f0
    # Line 3326
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f1,88($sp)
    li	$a2,-1
    li	$a3,10497
    ldc1	$f8,288($sp)
    ldc1	$f7,296($sp)
    ldc1	$f6,304($sp)
    ldc1	$f5,312($sp)
    # Line 3328
    ld	$a5,112($sp)
    # Line 3347
    ldc1	$f11,88($sp)
    # Line 3328
    ld	$a0,104($sp)
    nor	$a5,$a5,$zero
    sub.s	$f14,$f28,$f0
    # Line 3327
    ldc1	$f9,8($sp)
    # Line 3328
    nor	$a0,$a0,$zero
    # Line 3327
    ldc1	$f12,88($sp)
    # Line 3328
    sub.s	$f10,$f9,$f14
    and	$a4,$a0,$s7
    and	$a6,$a5,$s6
    # Line 3327
    sub.s	$f12,$f9,$f12
    # Line 3347
    mul.s	$f11,$f11,$f10
    # Line 3328
    or	$v1,$a6,$a4
    beqz	$v1,.L0db9fd34
    mul.s	$f13,$f12,$f10
    # Line 3341
    lwc1	$f22,164($s0)
    # Line 3340
    lwc1	$f24,160($s0)
    # Line 3341
    mul.s	$f22,$f22,$f13
    # Line 3339
    lwc1	$f20,156($s0)
    # Line 3340
    mul.s	$f24,$f24,$f13
    # Line 3339
    mul.s	$f20,$f20,$f13
.L0db9f174:
    # Line 3347
    and	$a7,$a5,$s5
    or	$at,$a7,$a4
    beqz	$at,.L0db9fd74
    # Line 3356
    ld	$a1,136($sp)
    # Line 3352
    lwc1	$f2,164($s0)
    # Line 3351
    lwc1	$f1,160($s0)
    # Line 3352
    mul.s	$f2,$f2,$f11
    # Line 3350
    lwc1	$f0,156($s0)
    # Line 3351
    mul.s	$f1,$f1,$f11
    # Line 3350
    mul.s	$f0,$f0,$f11
    # Line 3352
    add.s	$f22,$f2,$f22
    # Line 3351
    add.s	$f24,$f1,$f24
    # Line 3350
    add.s	$f20,$f0,$f20
.L0db9f1a8:
    # Line 3358
    and	$a4,$a0,$s8
    or	$v0,$a6,$a4
    beqz	$v0,.L0db9fdbc
    mul.s	$f10,$f14,$f12
    # Line 3363
    lwc1	$f1,164($s0)
    # Line 3362
    lwc1	$f0,160($s0)
    # Line 3363
    mul.s	$f1,$f1,$f10
    # Line 3361
    lwc1	$f3,156($s0)
    # Line 3362
    mul.s	$f0,$f0,$f10
    # Line 3361
    mul.s	$f3,$f3,$f10
    # Line 3363
    add.s	$f22,$f1,$f22
    # Line 3362
    add.s	$f24,$f0,$f24
    # Line 3361
    add.s	$f20,$f3,$f20
.L0db9f1dc:
    # Line 3369
    ldc1	$f12,88($sp)
    or	$v1,$a7,$a4
    beqz	$v1,.L0db9fe08
    mul.s	$f12,$f14,$f12
    # Line 3374
    lwc1	$f2,164($s0)
    # Line 3373
    lwc1	$f1,160($s0)
    # Line 3374
    mul.s	$f2,$f2,$f12
    # Line 3372
    lwc1	$f0,156($s0)
    # Line 3373
    mul.s	$f1,$f1,$f12
    # Line 3372
    mul.s	$f0,$f0,$f12
    # Line 3374
    add.s	$f22,$f2,$f22
    # Line 3373
    add.s	$f24,$f1,$f24
    # Line 3372
    add.s	$f20,$f0,$f20
.L0db9f210:
    li	$a1,8448
    # Line 3632
    beq	$s4,$a1,.L0db9f6dc
.L0db9f218:
    li	$v0,7681
    li	$at,0x8062
    # Line 3645
    beq	$s4,$at,.L0db9f594
    ld	$v1,256($sp)
    beq	$s4,$v0,.L0db9f594
    move	$a0,$zero
    or	$v1,$a0,$v1
.L0db9f234:
    beqzl	$v1,.L0db9f73c
    # Line 3658
    sub.s	$f2,$f9,$f20
    # Line 3648
    lwc1	$f1,30804($s3)
    mul.s	$f1,$f1,$f20
    swc1	$f1,0($s2)
    # Line 3649
    lwc1	$f0,30808($s3)
    mul.s	$f0,$f0,$f24
    swc1	$f0,4($s2)
    # Line 3650
    lwc1	$f3,30812($s3)
    mul.s	$f3,$f3,$f22
    swc1	$f3,8($s2)
.L0db9f260:
    # Line 3672
    srl	$s1,$s1,0x1
    # Line 3669
    lwc1	$f1,30448($s3)
    # Line 3668
    lwc1	$f0,30444($s3)
    # Line 3669
    add.s	$f6,$f1,$f6
    # Line 3667
    lwc1	$f3,30436($s3)
    # Line 3668
    add.s	$f8,$f0,$f8
    # Line 3666
    lwc1	$f2,30432($s3)
    # Line 3667
    add.s	$f7,$f3,$f7
    # Line 3134
    ld	$a1,280($sp)
    # Line 3670
    addiu	$s2,$s2,16
    # Line 3666
    add.s	$f5,$f2,$f5
    # Line 3134
    addiu	$a1,$a1,-1
    beq	$a1,$a2,.L0db9ef58
    sd	$a1,280($sp)
    ld	$at,264($sp)
.L0db9f29c:
    and	$at,$at,$s1
    beqz	$at,.L0db9f260
    # Line 3280
    mov.s	$f10,$f30
    # Line 3136
    lwc1	$f4,3284($s3)
    sdc1	$f4,8($sp)
    div.s	$f4,$f4,$f8
    mul.s	$f9,$f6,$f4
    lw	$a0,4($s0)
    lwc1	$f1,240($s0)
    mul.s	$f0,$f7,$f4
    lw	$v0,8($s0)
    lw	$a4,228($s0)
    c.le.s	$f9,$f1
    sd	$v0,128($sp)
    mul.s	$f4,$f5,$f4
    bc1f	.L0db9f504
    sdc1	$f0,32($sp)
    # Line 3146
    move	$s7,$a4
    # Line 3148
    lw	$v0,0($a4)
    sd	$zero,272($sp)
    # Line 3147
    lw	$at,44($a4)
    sd	$v0,136($sp)
    # Line 3152
    lwc1	$f11,32($a4)
    # Line 3150
    lw	$a1,24($a4)
    # Line 3149
    lw	$v1,20($a4)
    # Line 3153
    mul.s	$f10,$f4,$f11
    sd	$at,120($sp)
    # Line 3149
    addiu	$v1,$v1,-1
    # Line 3150
    addiu	$a1,$a1,-1
    sd	$a1,104($sp)
    sd	$v1,112($sp)
    # Line 3153
    beq	$a3,$a0,.L0db9fec0
    mov.s	$f26,$f10
    # Line 3158
    c.lt.s	$f10,$f30
    nop
    bc1fl	.L0db9f5a0
    # Line 3160
    c.lt.s	$f11,$f10
    sdc1	$f5,312($sp)
    sdc1	$f6,304($sp)
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    mov.s	$f26,$f30
.L0db9f344:
    sdc1	$f5,312($sp)
.L0db9f348:
    # Line 3162
    ldc1	$f5,16($sp)
    sdc1	$f6,304($sp)
    # Line 3163
    # lw $t9, -17792($gp) # &floorf
    # Line 3162
    sub.s	$f26,$f26,$f5
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    # Line 3163
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    mfc1	$s6,$f0
    li	$a0,10497
    # Line 3164
    addiu	$s5,$s6,1
.L0db9f378:
    # Line 3167
    lwc1	$f5,36($s7)
    # Line 3168
    ldc1	$f4,32($sp)
    mul.s	$f4,$f4,$f5
    ld	$v1,128($sp)
    beq	$a0,$v1,.L0db9ff0c
    mov.s	$f28,$f4
    # Line 3173
    c.lt.s	$f4,$f30
    nop
    bc1fl	.L0db9f5c4
    # Line 3175
    c.lt.s	$f5,$f4
    mov.s	$f28,$f30
.L0db9f3a4:
    # Line 3177
    ldc1	$f5,16($sp)
.L0db9f3a8:
    # Line 3178
    # lw $t9, -17792($gp) # &floorf
    # Line 3177
    sub.s	$f28,$f28,$f5
    # Line 3178
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s7,$f0
    nop
    # Line 3179
    addiu	$s8,$s7,1
.L0db9f3c8:
    # Line 3182
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 3183
    # lw $t9, -17792($gp) # &floorf
    # Line 3182
    sub.s	$f1,$f26,$f0
    # Line 3183
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f1,88($sp)
    li	$a2,-1
    li	$a3,10497
    ldc1	$f8,288($sp)
    # Line 3184
    ldc1	$f11,88($sp)
    ldc1	$f9,8($sp)
    # Line 3185
    sub.s	$f10,$f28,$f0
    ldc1	$f7,296($sp)
    ldc1	$f6,304($sp)
    # Line 3184
    sub.s	$f13,$f9,$f11
    # Line 3185
    mul.s	$f12,$f10,$f11
    ldc1	$f5,312($sp)
    sub.s	$f0,$f9,$f10
    mul.s	$f10,$f10,$f13
    ld	$a1,272($sp)
    mul.s	$f11,$f11,$f0
    li	$at,2
    beq	$a1,$at,.L0db9f5d8
    mul.s	$f13,$f13,$f0
    ld	$at,120($sp)
    ld	$a5,112($sp)
    # Line 3216
    ld	$a0,104($sp)
    nor	$a5,$a5,$zero
    nor	$a0,$a0,$zero
    and	$a4,$a0,$s7
    and	$a6,$a5,$s6
    or	$v0,$a6,$a4
    beqz	$v0,.L0db9fc1c
    # Line 3231
    and	$a7,$a5,$s5
    # Line 3225
    lwc1	$f22,164($s0)
    # Line 3224
    lwc1	$f24,160($s0)
    # Line 3225
    mul.s	$f22,$f22,$f13
    # Line 3223
    lwc1	$f20,156($s0)
    # Line 3224
    mul.s	$f24,$f24,$f13
    # Line 3223
    mul.s	$f20,$f20,$f13
.L0db9f470:
    # Line 3231
    or	$at,$a7,$a4
    beqz	$at,.L0db9fc58
    # Line 3242
    and	$a4,$a0,$s8
    # Line 3236
    lwc1	$f2,164($s0)
    # Line 3235
    lwc1	$f1,160($s0)
    # Line 3236
    mul.s	$f2,$f2,$f11
    # Line 3234
    lwc1	$f0,156($s0)
    # Line 3235
    mul.s	$f1,$f1,$f11
    # Line 3234
    mul.s	$f0,$f0,$f11
    # Line 3236
    add.s	$f22,$f2,$f22
    # Line 3235
    add.s	$f24,$f1,$f24
    # Line 3234
    add.s	$f20,$f0,$f20
.L0db9f4a0:
    # Line 3242
    or	$v0,$a6,$a4
    beqz	$v0,.L0db9fca4
    ld	$at,120($sp)
    # Line 3247
    lwc1	$f1,164($s0)
    # Line 3246
    lwc1	$f0,160($s0)
    # Line 3247
    mul.s	$f1,$f1,$f10
    # Line 3245
    lwc1	$f3,156($s0)
    # Line 3246
    mul.s	$f0,$f0,$f10
    # Line 3245
    mul.s	$f3,$f3,$f10
    # Line 3247
    add.s	$f22,$f1,$f22
    # Line 3246
    add.s	$f24,$f0,$f24
    # Line 3245
    add.s	$f20,$f3,$f20
.L0db9f4d0:
    # Line 3253
    or	$v1,$a7,$a4
    beqz	$v1,.L0db9fcec
    # Line 3262
    ld	$a1,136($sp)
    # Line 3258
    lwc1	$f0,164($s0)
    # Line 3257
    lwc1	$f3,160($s0)
    # Line 3258
    mul.s	$f0,$f0,$f12
    # Line 3256
    lwc1	$f2,156($s0)
    # Line 3257
    mul.s	$f3,$f3,$f12
    # Line 3256
    mul.s	$f2,$f2,$f12
    # Line 3258
    add.s	$f22,$f0,$f22
    # Line 3257
    add.s	$f24,$f3,$f24
    # Line 3258
    b	.L0db9f210
    # Line 3256
    add.s	$f20,$f2,$f20
.L0db9f504:
    # Line 3264
    c.eq.s	$f9,$f30
    nop
    bc1t	.L0db9efb8
    # Line 3275
    move	$a5,$zero
    # Line 3276
    trunc.w.s	$f1,$f9
    mfc1	$a6,$f1
    nop
    sra	$a6,$a6,0x1
    beqz	$a6,.L0db9f560
    li	$at,1
    addiu	$a5,$a5,1
.L0db9f530:
    sra	$a6,$a6,0x1
    beqz	$a6,.L0db9f55c
    nop
    addiu	$a5,$a5,1
    sra	$a6,$a6,0x1
    beqz	$a6,.L0db9f55c
    nop
    addiu	$a5,$a5,1
    sra	$a6,$a6,0x1
    bnezl	$a6,.L0db9f530
    addiu	$a5,$a5,1
.L0db9f55c:
    li	$at,1
.L0db9f560:
    # Line 3278
    sllv	$at,$at,$a5
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f9,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a5,$f10
    nop
    cvt.s.w	$f10,$f10
    add.s	$f10,$f10,$f0
    ldc1	$f0,16($sp)
    b	.L0db9efb8
    mul.s	$f10,$f10,$f0
.L0db9f594:
    # Line 3645
    li	$a0,1
    b	.L0db9f234
    or	$v1,$a0,$v1
.L0db9f5a0:
    nop
    # Line 3160
    bc1fl	.L0db9f348
    sdc1	$f5,312($sp)
    sdc1	$f5,312($sp)
    sdc1	$f6,304($sp)
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    b	.L0db9f344
    # Line 3161
    mov.s	$f26,$f11
.L0db9f5c4:
    nop
    # Line 3175
    bc1fl	.L0db9f3a8
    # Line 3177
    ldc1	$f5,16($sp)
    b	.L0db9f3a4
    # Line 3176
    mov.s	$f28,$f5
.L0db9f5d8:
    # Line 3214
    ld	$v0,136($sp)
    ld	$a1,120($sp)
    sd	$a2,320($sp)
    sllv	$a2,$s8,$a1
    addu	$v1,$a2,$s5
    sll	$a0,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$v0
    addu	$v1,$v1,$a0
    # Line 3215
    lwc1	$f1,4($v1)
    mul.s	$f1,$f1,$f12
    # Line 3214
    addu	$a2,$a2,$s6
    sll	$a0,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$v0
    addu	$a0,$a0,$a2
    # Line 3215
    lwc1	$f3,4($a0)
    mul.s	$f3,$f3,$f10
    # Line 3216
    lwc1	$f2,8($v1)
    mul.s	$f2,$f2,$f12
    # Line 3214
    sllv	$a1,$s7,$a1
    addu	$at,$a1,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a2,$a2,$at
    # Line 3215
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f11
    # Line 3216
    lwc1	$f0,8($a2)
    # Line 3214
    addu	$a1,$a1,$s6
    # Line 3216
    mul.s	$f0,$f0,$f11
    # Line 3214
    sll	$at,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3216
    lwc1	$f22,8($a1)
    lwc1	$f14,8($a0)
    mul.s	$f22,$f22,$f13
    # Line 3215
    lwc1	$f24,4($a1)
    # Line 3216
    mul.s	$f14,$f14,$f10
    # Line 3215
    mul.s	$f24,$f24,$f13
    # Line 3214
    lwc1	$f20,0($a1)
    # Line 3216
    add.s	$f22,$f22,$f0
    # Line 3214
    mul.s	$f20,$f20,$f13
    lwc1	$f0,0($a2)
    # Line 3216
    add.s	$f22,$f22,$f14
    # Line 3214
    mul.s	$f0,$f0,$f11
    # Line 3216
    add.s	$f22,$f22,$f2
    # Line 3214
    lwc1	$f2,0($a0)
    # Line 3215
    add.s	$f24,$f24,$f4
    # Line 3214
    mul.s	$f2,$f2,$f10
    add.s	$f20,$f20,$f0
    lwc1	$f0,0($v1)
    # Line 3215
    add.s	$f24,$f24,$f3
    # Line 3214
    mul.s	$f0,$f0,$f12
    add.s	$f20,$f20,$f2
    li	$v0,8448
    # Line 3215
    add.s	$f24,$f24,$f1
    ld	$a2,320($sp)
    # Line 3632
    bne	$s4,$v0,.L0db9f218
    # Line 3214
    add.s	$f20,$f20,$f0
.L0db9f6dc:
    # Line 3642
    lwc1	$f3,4($s2)
    # Line 3643
    lwc1	$f0,8($s2)
    # Line 3642
    mul.s	$f3,$f3,$f24
    # Line 3641
    lwc1	$f2,0($s2)
    # Line 3643
    mul.s	$f0,$f0,$f22
    # Line 3641
    mul.s	$f2,$f2,$f20
    # Line 3643
    swc1	$f0,8($s2)
    # Line 3642
    swc1	$f3,4($s2)
    # Line 3643
    b	.L0db9f260
    # Line 3641
    swc1	$f2,0($s2)
.L0db9f704:
    nop
    # Line 3304
    bc1fl	.L0db9f060
    sdc1	$f5,312($sp)
    sdc1	$f5,312($sp)
    sdc1	$f6,304($sp)
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    b	.L0db9f05c
    # Line 3305
    mov.s	$f26,$f11
.L0db9f728:
    nop
    # Line 3318
    bc1fl	.L0db9f0c4
    # Line 3320
    ldc1	$f5,16($sp)
    b	.L0db9f0c0
    # Line 3319
    mov.s	$f28,$f5
.L0db9f73c:
    # Line 3658
    lwc1	$f1,0($s2)
    # Line 3656
    lw	$a1,2376($s3)
    # Line 3658
    mul.s	$f1,$f1,$f2
    lwc1	$f2,4($a1)
    mul.s	$f2,$f2,$f20
    add.s	$f1,$f1,$f2
    swc1	$f1,0($s2)
    # Line 3659
    lwc1	$f0,3284($s3)
    sub.s	$f0,$f0,$f24
    lwc1	$f3,4($s2)
    mul.s	$f3,$f3,$f0
    lwc1	$f0,8($a1)
    mul.s	$f0,$f0,$f24
    add.s	$f3,$f3,$f0
    swc1	$f3,4($s2)
    # Line 3660
    lwc1	$f2,3284($s3)
    sub.s	$f2,$f2,$f22
    lwc1	$f1,8($s2)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,12($a1)
    mul.s	$f2,$f2,$f22
    add.s	$f1,$f1,$f2
    b	.L0db9f260
    swc1	$f1,8($s2)
.L0db9f79c:
    sd	$zero,272($sp)
    # Line 3390
    sll	$s7,$a5,0x2
    subu	$s7,$s7,$a5
    sll	$s7,$s7,0x3
    addu	$s7,$s7,$a5
    sll	$s7,$s7,0x2
    addu	$s7,$a4,$s7
    # Line 3392
    lw	$a1,0($s7)
    sd	$s7,144($sp)
    # Line 3391
    lw	$v1,44($s7)
    sd	$a1,136($sp)
    # Line 3396
    lwc1	$f11,32($s7)
    # Line 3394
    lw	$v0,24($s7)
    # Line 3393
    lw	$at,20($s7)
    # Line 3397
    mul.s	$f10,$f4,$f11
    sd	$v1,120($sp)
    # Line 3393
    addiu	$at,$at,-1
    # Line 3394
    addiu	$v0,$v0,-1
    sd	$v0,104($sp)
    sd	$at,112($sp)
    # Line 3397
    beq	$a3,$a0,.L0dba03fc
    mov.s	$f26,$f10
    # Line 3402
    c.lt.s	$f10,$f30
    nop
    bc1fl	.L0db9fe54
    # Line 3404
    c.lt.s	$f11,$f10
    sd	$a0,96($sp)
    sdc1	$f5,312($sp)
    sdc1	$f6,304($sp)
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    sdc1	$f4,24($sp)
    sdc1	$f9,0($sp)
    mov.s	$f26,$f30
.L0db9f824:
    sd	$a0,96($sp)
.L0db9f828:
    sdc1	$f5,312($sp)
    sdc1	$f6,304($sp)
    sdc1	$f7,296($sp)
    # Line 3406
    ldc1	$f3,16($sp)
    sdc1	$f8,288($sp)
    # Line 3407
    # lw $t9, -17792($gp) # &floorf
    # Line 3406
    sub.s	$f26,$f26,$f3
    sdc1	$f4,24($sp)
    sdc1	$f9,0($sp)
    # Line 3407
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f4,$f0
    mfc1	$s6,$f4
    nop
    # Line 3408
    addiu	$s5,$s6,1
.L0db9f864:
    # Line 3411
    lwc1	$f5,36($s7)
    # Line 3412
    ldc1	$f4,32($sp)
    mul.s	$f4,$f4,$f5
    ld	$v0,128($sp)
    li	$at,10497
    beq	$at,$v0,.L0dba0454
    mov.s	$f28,$f4
    # Line 3417
    c.lt.s	$f4,$f30
    nop
    bc1fl	.L0db9fe84
    # Line 3419
    c.lt.s	$f5,$f4
    mov.s	$f28,$f30
.L0db9f894:
    # Line 3421
    ldc1	$f5,16($sp)
.L0db9f898:
    # Line 3422
    # lw $t9, -17792($gp) # &floorf
    # Line 3421
    sub.s	$f28,$f28,$f5
    # Line 3422
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s7,$f0
    nop
    # Line 3423
    addiu	$s8,$s7,1
.L0db9f8b8:
    # Line 3426
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 3427
    # lw $t9, -17792($gp) # &floorf
    # Line 3426
    sub.s	$f1,$f26,$f0
    # Line 3427
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f1,88($sp)
    # Line 3428
    ldc1	$f5,88($sp)
    ldc1	$f6,8($sp)
    li	$a1,2
    # Line 3429
    ld	$v1,272($sp)
    # Line 3428
    sub.s	$f8,$f6,$f5
    # Line 3429
    mul.s	$f5,$f5,$f20
    ld	$a5,112($sp)
    sub.s	$f7,$f28,$f0
    # Line 3460
    ld	$a0,104($sp)
    # Line 3429
    mul.s	$f8,$f8,$f20
    # Line 3460
    nor	$a5,$a5,$zero
    # Line 3429
    sub.s	$f0,$f6,$f7
    mul.s	$f6,$f5,$f7
    # Line 3475
    and	$a7,$a5,$s5
    # Line 3460
    nor	$a0,$a0,$zero
    # Line 3429
    mul.s	$f5,$f5,$f0
    # Line 3460
    and	$a4,$a0,$s7
    and	$a6,$a5,$s6
    # Line 3429
    mul.s	$f7,$f8,$f7
    # Line 3460
    or	$at,$a6,$a4
    # Line 3429
    beq	$v1,$a1,.L0db9ffc0
    mul.s	$f8,$f8,$f0
    # Line 3460
    beqz	$at,.L0dba01c4
    # Line 3473
    ld	$v0,136($sp)
    # Line 3469
    lwc1	$f22,164($s0)
    # Line 3468
    lwc1	$f24,160($s0)
    # Line 3469
    mul.s	$f22,$f22,$f8
    # Line 3467
    lwc1	$f20,156($s0)
    # Line 3468
    mul.s	$f24,$f24,$f8
    # Line 3467
    mul.s	$f20,$f20,$f8
.L0db9f950:
    # Line 3475
    or	$at,$a7,$a4
    beqz	$at,.L0dba0200
    # Line 3486
    and	$a4,$a0,$s8
    # Line 3480
    lwc1	$f2,164($s0)
    # Line 3479
    lwc1	$f1,160($s0)
    # Line 3480
    mul.s	$f2,$f2,$f5
    # Line 3478
    lwc1	$f0,156($s0)
    # Line 3479
    mul.s	$f1,$f1,$f5
    # Line 3478
    mul.s	$f0,$f0,$f5
    # Line 3480
    add.s	$f22,$f2,$f22
    # Line 3479
    add.s	$f24,$f1,$f24
    # Line 3478
    add.s	$f20,$f0,$f20
.L0db9f980:
    # Line 3486
    or	$v0,$a6,$a4
    beqz	$v0,.L0dba024c
    ld	$at,120($sp)
    # Line 3491
    lwc1	$f1,164($s0)
    # Line 3490
    lwc1	$f0,160($s0)
    # Line 3491
    mul.s	$f1,$f1,$f7
    # Line 3489
    lwc1	$f3,156($s0)
    # Line 3490
    mul.s	$f0,$f0,$f7
    # Line 3489
    mul.s	$f3,$f3,$f7
    # Line 3491
    add.s	$f22,$f1,$f22
    # Line 3490
    add.s	$f24,$f0,$f24
    # Line 3489
    add.s	$f20,$f3,$f20
.L0db9f9b0:
    # Line 3497
    or	$v1,$a7,$a4
    beqz	$v1,.L0dba0294
    # Line 3506
    ld	$a1,136($sp)
    # Line 3502
    lwc1	$f0,164($s0)
    # Line 3501
    lwc1	$f3,160($s0)
    # Line 3502
    mul.s	$f0,$f0,$f6
    # Line 3500
    lwc1	$f2,156($s0)
    # Line 3501
    mul.s	$f3,$f3,$f6
    # Line 3500
    mul.s	$f2,$f2,$f6
    # Line 3502
    add.s	$f22,$f0,$f22
    # Line 3501
    add.s	$f24,$f3,$f24
    # Line 3500
    add.s	$f20,$f2,$f20
.L0db9f9e0:
    # Line 3514
    ld	$s7,144($sp)
    addiu	$s7,$s7,100
    # Line 3518
    lw	$v1,24($s7)
    sd	$zero,272($sp)
    li	$a1,10497
    addiu	$v1,$v1,-1
    sd	$v1,104($sp)
    # Line 3521
    ldc1	$f10,24($sp)
    # Line 3516
    lw	$v0,0($s7)
    # Line 3520
    lwc1	$f11,32($s7)
    # Line 3515
    lw	$at,44($s7)
    sd	$v0,136($sp)
    # Line 3521
    mul.s	$f10,$f10,$f11
    # Line 3517
    lw	$v0,20($s7)
    sd	$at,120($sp)
    # Line 3521
    ld	$at,96($sp)
    # Line 3517
    addiu	$v0,$v0,-1
    sd	$v0,112($sp)
    # Line 3521
    beq	$a1,$at,.L0dba0490
    mov.s	$f26,$f10
    # Line 3526
    c.lt.s	$f10,$f30
    nop
    bc1fl	.L0db9fe98
    # Line 3528
    c.lt.s	$f11,$f10
    mov.s	$f26,$f30
.L0db9fa44:
    # Line 3530
    ldc1	$f11,16($sp)
.L0db9fa48:
    # Line 3531
    # lw $t9, -17792($gp) # &floorf
    # Line 3530
    sub.s	$f26,$f26,$f11
    # Line 3531
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    mfc1	$s6,$f0
    nop
    # Line 3532
    addiu	$s5,$s6,1
.L0db9fa68:
    # Line 3535
    lwc1	$f5,36($s7)
    # Line 3536
    ldc1	$f4,32($sp)
    mul.s	$f4,$f4,$f5
    ld	$v0,128($sp)
    li	$at,10497
    beq	$at,$v0,.L0dba04cc
    mov.s	$f28,$f4
    # Line 3541
    c.lt.s	$f4,$f30
    nop
    bc1fl	.L0db9feac
    # Line 3543
    c.lt.s	$f5,$f4
    mov.s	$f28,$f30
.L0db9fa98:
    # Line 3545
    ldc1	$f5,16($sp)
.L0db9fa9c:
    # Line 3546
    # lw $t9, -17792($gp) # &floorf
    # Line 3545
    sub.s	$f28,$f28,$f5
    # Line 3546
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    mfc1	$s7,$f0
    nop
    # Line 3547
    addiu	$s8,$s7,1
.L0db9fabc:
    # Line 3550
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    mov.s	$f12,$f26
    # Line 3551
    # lw $t9, -17792($gp) # &floorf
    # Line 3550
    sub.s	$f1,$f26,$f0
    # Line 3551
    mov.s	$f12,$f28
    jal	floorf
    sdc1	$f1,88($sp)
    li	$a2,-1
    li	$a3,10497
    ldc1	$f10,88($sp)
    # Line 3552
    ldc1	$f9,8($sp)
    # Line 3553
    ldc1	$f13,0($sp)
    ldc1	$f8,288($sp)
    # Line 3552
    sub.s	$f1,$f9,$f10
    # Line 3553
    mul.s	$f10,$f13,$f10
    ldc1	$f7,296($sp)
    sub.s	$f11,$f28,$f0
    ldc1	$f6,304($sp)
    mul.s	$f13,$f13,$f1
    ldc1	$f5,312($sp)
    sub.s	$f0,$f9,$f11
    mul.s	$f12,$f11,$f10
    li	$a1,2
    ld	$v0,120($sp)
    mul.s	$f10,$f10,$f0
    ld	$v1,272($sp)
    # Line 3576
    sllv	$at,$s8,$v0
    # Line 3553
    mul.s	$f11,$f11,$f13
    beq	$v1,$a1,.L0dba00c0
    mul.s	$f13,$f13,$f0
    ld	$v1,120($sp)
    # Line 3597
    sllv	$v1,$s7,$v1
    ld	$a5,112($sp)
    # Line 3584
    ld	$a0,104($sp)
    nor	$a5,$a5,$zero
    nor	$a0,$a0,$zero
    and	$a4,$a0,$s7
    and	$a6,$a5,$s6
    or	$at,$a6,$a4
    beqz	$at,.L0dba03b8
    # Line 3599
    and	$a7,$a5,$s5
    # Line 3593
    lwc1	$f2,164($s0)
    # Line 3592
    lwc1	$f1,160($s0)
    # Line 3593
    mul.s	$f2,$f2,$f13
    # Line 3591
    lwc1	$f0,156($s0)
    # Line 3592
    mul.s	$f1,$f1,$f13
    # Line 3591
    mul.s	$f0,$f0,$f13
    # Line 3593
    add.s	$f22,$f2,$f22
    # Line 3592
    add.s	$f24,$f1,$f24
    # Line 3591
    add.s	$f20,$f0,$f20
.L0db9fb88:
    # Line 3599
    or	$at,$a7,$a4
    beqz	$at,.L0dba02dc
    # Line 3610
    and	$a4,$a0,$s8
    # Line 3604
    lwc1	$f1,164($s0)
    # Line 3603
    lwc1	$f0,160($s0)
    # Line 3604
    mul.s	$f1,$f1,$f10
    # Line 3602
    lwc1	$f3,156($s0)
    # Line 3603
    mul.s	$f0,$f0,$f10
    # Line 3602
    mul.s	$f3,$f3,$f10
    # Line 3604
    add.s	$f22,$f1,$f22
    # Line 3603
    add.s	$f24,$f0,$f24
    # Line 3602
    add.s	$f20,$f3,$f20
.L0db9fbb8:
    # Line 3610
    or	$v0,$a6,$a4
    beqz	$v0,.L0dba0328
    # Line 3619
    ld	$a1,136($sp)
    # Line 3615
    lwc1	$f0,164($s0)
    # Line 3614
    lwc1	$f3,160($s0)
    # Line 3615
    mul.s	$f0,$f0,$f11
    # Line 3613
    lwc1	$f2,156($s0)
    # Line 3614
    mul.s	$f3,$f3,$f11
    # Line 3613
    mul.s	$f2,$f2,$f11
    # Line 3615
    add.s	$f22,$f0,$f22
    # Line 3614
    add.s	$f24,$f3,$f24
    # Line 3613
    add.s	$f20,$f2,$f20
.L0db9fbe8:
    # Line 3621
    or	$v1,$a7,$a4
    beqz	$v1,.L0dba0370
    # Line 3630
    ld	$v0,136($sp)
    # Line 3626
    lwc1	$f3,164($s0)
    # Line 3625
    lwc1	$f2,160($s0)
    # Line 3626
    mul.s	$f3,$f3,$f12
    # Line 3624
    lwc1	$f1,156($s0)
    # Line 3625
    mul.s	$f2,$f2,$f12
    # Line 3624
    mul.s	$f1,$f1,$f12
    # Line 3626
    add.s	$f22,$f3,$f22
    # Line 3625
    add.s	$f24,$f2,$f24
    # Line 3626
    b	.L0db9f210
    # Line 3624
    add.s	$f20,$f1,$f20
.L0db9fc1c:
    # Line 3229
    sllv	$at,$s7,$at
    ld	$v0,136($sp)
    addu	$at,$at,$s6
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3231
    lwc1	$f22,8($a1)
    # Line 3230
    lwc1	$f24,4($a1)
    # Line 3231
    mul.s	$f22,$f22,$f13
    # Line 3229
    lwc1	$f20,0($a1)
    # Line 3230
    mul.s	$f24,$f24,$f13
    b	.L0db9f470
    # Line 3229
    mul.s	$f20,$f20,$f13
.L0db9fc58:
    # Line 3240
    ld	$a1,136($sp)
    ld	$v1,120($sp)
    sllv	$v1,$s7,$v1
    addu	$v1,$v1,$s5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3242
    lwc1	$f2,8($v0)
    # Line 3241
    lwc1	$f1,4($v0)
    # Line 3242
    mul.s	$f2,$f2,$f11
    # Line 3240
    lwc1	$f0,0($v0)
    # Line 3241
    mul.s	$f1,$f1,$f11
    # Line 3240
    mul.s	$f0,$f0,$f11
    # Line 3242
    add.s	$f22,$f2,$f22
    # Line 3241
    add.s	$f24,$f1,$f24
    b	.L0db9f4a0
    # Line 3240
    add.s	$f20,$f0,$f20
.L0db9fca4:
    # Line 3251
    ld	$v0,136($sp)
    sllv	$at,$s8,$at
    addu	$at,$at,$s6
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3253
    lwc1	$f1,8($a1)
    # Line 3252
    lwc1	$f0,4($a1)
    # Line 3253
    mul.s	$f1,$f1,$f10
    # Line 3251
    lwc1	$f3,0($a1)
    # Line 3252
    mul.s	$f0,$f0,$f10
    # Line 3251
    mul.s	$f3,$f3,$f10
    # Line 3253
    add.s	$f22,$f1,$f22
    # Line 3252
    add.s	$f24,$f0,$f24
    b	.L0db9f4d0
    # Line 3251
    add.s	$f20,$f3,$f20
.L0db9fcec:
    ld	$v1,120($sp)
    # Line 3262
    sllv	$v1,$s8,$v1
    addu	$v1,$v1,$s5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3264
    lwc1	$f0,8($v0)
    # Line 3263
    lwc1	$f3,4($v0)
    # Line 3264
    mul.s	$f0,$f0,$f12
    # Line 3262
    lwc1	$f2,0($v0)
    # Line 3263
    mul.s	$f3,$f3,$f12
    # Line 3262
    mul.s	$f2,$f2,$f12
    # Line 3264
    add.s	$f22,$f0,$f22
    # Line 3263
    add.s	$f24,$f3,$f24
    b	.L0db9f210
    # Line 3262
    add.s	$f20,$f2,$f20
.L0db9fd34:
    # Line 3345
    ld	$v0,136($sp)
    ld	$at,120($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s6
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3347
    lwc1	$f22,8($a1)
    # Line 3346
    lwc1	$f24,4($a1)
    # Line 3347
    mul.s	$f22,$f22,$f13
    # Line 3345
    lwc1	$f20,0($a1)
    # Line 3346
    mul.s	$f24,$f24,$f13
    b	.L0db9f174
    # Line 3345
    mul.s	$f20,$f20,$f13
.L0db9fd74:
    ld	$v1,120($sp)
    # Line 3356
    sllv	$v1,$s7,$v1
    addu	$v1,$v1,$s5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3358
    lwc1	$f2,8($v0)
    # Line 3357
    lwc1	$f1,4($v0)
    # Line 3358
    mul.s	$f2,$f2,$f11
    # Line 3356
    lwc1	$f0,0($v0)
    # Line 3357
    mul.s	$f1,$f1,$f11
    # Line 3356
    mul.s	$f0,$f0,$f11
    # Line 3358
    add.s	$f22,$f2,$f22
    # Line 3357
    add.s	$f24,$f1,$f24
    b	.L0db9f1a8
    # Line 3356
    add.s	$f20,$f0,$f20
.L0db9fdbc:
    ld	$at,120($sp)
    # Line 3367
    ld	$v0,136($sp)
    sllv	$at,$s8,$at
    addu	$at,$at,$s6
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3369
    lwc1	$f1,8($a1)
    # Line 3368
    lwc1	$f0,4($a1)
    # Line 3369
    mul.s	$f1,$f1,$f10
    # Line 3367
    lwc1	$f3,0($a1)
    # Line 3368
    mul.s	$f0,$f0,$f10
    # Line 3367
    mul.s	$f3,$f3,$f10
    # Line 3369
    add.s	$f22,$f1,$f22
    # Line 3368
    add.s	$f24,$f0,$f24
    b	.L0db9f1dc
    # Line 3367
    add.s	$f20,$f3,$f20
.L0db9fe08:
    # Line 3378
    ld	$a1,136($sp)
    ld	$v1,120($sp)
    sllv	$v1,$s8,$v1
    addu	$v1,$v1,$s5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3380
    lwc1	$f0,8($v0)
    # Line 3379
    lwc1	$f3,4($v0)
    # Line 3380
    mul.s	$f0,$f0,$f12
    # Line 3378
    lwc1	$f2,0($v0)
    # Line 3379
    mul.s	$f3,$f3,$f12
    # Line 3378
    mul.s	$f2,$f2,$f12
    # Line 3380
    add.s	$f22,$f0,$f22
    # Line 3379
    add.s	$f24,$f3,$f24
    b	.L0db9f210
    # Line 3378
    add.s	$f20,$f2,$f20
.L0db9fe54:
    nop
    # Line 3404
    bc1fl	.L0db9f828
    sd	$a0,96($sp)
    sd	$a0,96($sp)
    sdc1	$f5,312($sp)
    sdc1	$f6,304($sp)
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    sdc1	$f4,24($sp)
    sdc1	$f9,0($sp)
    b	.L0db9f824
    # Line 3405
    mov.s	$f26,$f11
.L0db9fe84:
    nop
    # Line 3419
    bc1fl	.L0db9f898
    # Line 3421
    ldc1	$f5,16($sp)
    b	.L0db9f894
    # Line 3420
    mov.s	$f28,$f5
.L0db9fe98:
    nop
    # Line 3528
    bc1fl	.L0db9fa48
    # Line 3530
    ldc1	$f11,16($sp)
    b	.L0db9fa44
    # Line 3529
    mov.s	$f26,$f11
.L0db9feac:
    nop
    # Line 3543
    bc1fl	.L0db9fa9c
    # Line 3545
    ldc1	$f5,16($sp)
    b	.L0db9fa98
    # Line 3544
    mov.s	$f28,$f5
.L0db9fec0:
    sdc1	$f5,312($sp)
    ldc1	$f26,16($sp)
    sdc1	$f6,304($sp)
    # Line 3156
    # lw $t9, -17792($gp) # &floorf
    # Line 3155
    sub.s	$f26,$f10,$f26
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    # Line 3156
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    # Line 3158
    li	$at,1
    sd	$at,272($sp)
    # Line 3156
    ld	$at,112($sp)
    mfc1	$s6,$f0
    li	$a0,10497
    and	$s6,$s6,$at
    # Line 3157
    addiu	$s5,$s6,1
    # Line 3158
    b	.L0db9f378
    # Line 3157
    and	$s5,$s5,$at
.L0db9ff0c:
    ldc1	$f28,16($sp)
    # Line 3171
    # lw $t9, -17792($gp) # &floorf
    # Line 3170
    sub.s	$f28,$f4,$f28
    # Line 3171
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    # Line 3173
    ld	$s8,272($sp)
    # Line 3171
    ld	$at,104($sp)
    mfc1	$s7,$f0
    # Line 3173
    addiu	$s8,$s8,1
    sd	$s8,272($sp)
    # Line 3171
    and	$s7,$s7,$at
    # Line 3172
    addiu	$s8,$s7,1
    # Line 3173
    b	.L0db9f3c8
    # Line 3172
    and	$s8,$s8,$at
.L0db9ff48:
    sdc1	$f5,312($sp)
    ldc1	$f26,16($sp)
    sdc1	$f6,304($sp)
    # Line 3301
    # lw $t9, -17792($gp) # &floorf
    # Line 3300
    sub.s	$f26,$f10,$f26
    sdc1	$f7,296($sp)
    sdc1	$f8,288($sp)
    # Line 3301
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    ld	$at,112($sp)
    mfc1	$s6,$f0
    nop
    and	$s6,$s6,$at
    # Line 3302
    addiu	$s5,$s6,1
    b	.L0db9f090
    and	$s5,$s5,$at
.L0db9ff8c:
    ldc1	$f28,16($sp)
    # Line 3315
    # lw $t9, -17792($gp) # &floorf
    # Line 3314
    sub.s	$f28,$f4,$f28
    # Line 3315
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    ld	$at,104($sp)
    mfc1	$s7,$f0
    nop
    and	$s7,$s7,$at
    # Line 3316
    addiu	$s8,$s7,1
    b	.L0db9f0e4
    and	$s8,$s8,$at
.L0db9ffc0:
    # Line 3458
    ld	$v0,136($sp)
    ld	$a1,120($sp)
    sd	$a2,320($sp)
    sllv	$a2,$s8,$a1
    addu	$v1,$a2,$s5
    sll	$a0,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$v0
    addu	$v1,$v1,$a0
    # Line 3459
    lwc1	$f1,4($v1)
    mul.s	$f1,$f1,$f6
    # Line 3458
    addu	$a2,$a2,$s6
    sll	$a0,$a2,0x2
    sll	$a2,$a2,0x1
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$v0
    addu	$a0,$a0,$a2
    # Line 3459
    lwc1	$f3,4($a0)
    mul.s	$f3,$f3,$f7
    # Line 3460
    lwc1	$f2,8($v1)
    mul.s	$f2,$f2,$f6
    # Line 3458
    sllv	$a1,$s7,$a1
    addu	$at,$a1,$s5
    sll	$a2,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a2,$a2,$at
    # Line 3459
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f5
    # Line 3460
    lwc1	$f0,8($a2)
    # Line 3458
    addu	$a1,$a1,$s6
    # Line 3460
    mul.s	$f0,$f0,$f5
    # Line 3458
    sll	$at,$a1,0x1
    sll	$a1,$a1,0x2
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3460
    lwc1	$f22,8($a1)
    lwc1	$f9,8($a0)
    mul.s	$f22,$f22,$f8
    # Line 3459
    lwc1	$f24,4($a1)
    # Line 3460
    mul.s	$f9,$f9,$f7
    # Line 3459
    mul.s	$f24,$f24,$f8
    # Line 3458
    lwc1	$f20,0($a1)
    # Line 3460
    add.s	$f22,$f22,$f0
    # Line 3458
    mul.s	$f20,$f20,$f8
    lwc1	$f0,0($a2)
    # Line 3460
    add.s	$f22,$f22,$f9
    # Line 3458
    mul.s	$f0,$f0,$f5
    # Line 3460
    add.s	$f22,$f22,$f2
    # Line 3458
    lwc1	$f2,0($a0)
    # Line 3459
    add.s	$f24,$f24,$f4
    # Line 3458
    mul.s	$f2,$f2,$f7
    add.s	$f20,$f20,$f0
    lwc1	$f0,0($v1)
    # Line 3459
    add.s	$f24,$f24,$f3
    # Line 3458
    mul.s	$f0,$f0,$f6
    add.s	$f20,$f20,$f2
    # Line 3459
    add.s	$f24,$f24,$f1
    ld	$a2,320($sp)
    # Line 3460
    b	.L0db9f9e0
    # Line 3458
    add.s	$f20,$f20,$f0
.L0dba00c0:
    # Line 3564
    sllv	$v0,$s7,$v0
    # Line 3576
    addu	$v1,$at,$s6
    # Line 3582
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    ld	$a0,136($sp)
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    addu	$a1,$a1,$at
    # Line 3583
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f12
    sd	$a2,320($sp)
    # Line 3576
    sll	$a2,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$a2,$a2,$v1
    # Line 3577
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f11
    # Line 3570
    addu	$v1,$v0,$s5
    sll	$at,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$at,$at,$v1
    # Line 3571
    lwc1	$f14,4($at)
    mul.s	$f14,$f14,$f10
    # Line 3564
    addu	$v0,$v0,$s6
    sll	$v1,$v0,0x1
    sll	$v0,$v0,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    addu	$v0,$v0,$v1
    # Line 3566
    lwc1	$f15,8($v0)
    # Line 3572
    lwc1	$f4,8($at)
    # Line 3566
    mul.s	$f15,$f15,$f13
    # Line 3578
    lwc1	$f0,8($a2)
    # Line 3572
    mul.s	$f4,$f4,$f10
    # Line 3578
    mul.s	$f0,$f0,$f11
    # Line 3565
    lwc1	$f2,4($v0)
    # Line 3566
    add.s	$f15,$f15,$f22
    # Line 3565
    mul.s	$f2,$f2,$f13
    # Line 3584
    lwc1	$f22,8($a1)
    # Line 3572
    add.s	$f4,$f4,$f15
    # Line 3584
    mul.s	$f22,$f22,$f12
    # Line 3578
    add.s	$f0,$f0,$f4
    # Line 3564
    lwc1	$f4,0($v0)
    mul.s	$f4,$f4,$f13
    # Line 3565
    add.s	$f24,$f2,$f24
    # Line 3570
    lwc1	$f2,0($at)
    # Line 3584
    add.s	$f22,$f22,$f0
    # Line 3570
    mul.s	$f2,$f2,$f10
    # Line 3564
    add.s	$f4,$f4,$f20
    # Line 3576
    lwc1	$f0,0($a2)
    # Line 3571
    add.s	$f24,$f14,$f24
    # Line 3576
    mul.s	$f0,$f0,$f11
    # Line 3570
    add.s	$f2,$f2,$f4
    # Line 3582
    lwc1	$f20,0($a1)
    # Line 3577
    add.s	$f24,$f3,$f24
    # Line 3582
    mul.s	$f20,$f20,$f12
    # Line 3576
    add.s	$f0,$f0,$f2
    # Line 3583
    add.s	$f24,$f1,$f24
    ld	$a2,320($sp)
    # Line 3584
    b	.L0db9f210
    # Line 3582
    add.s	$f20,$f20,$f0
.L0dba01c4:
    ld	$at,120($sp)
    # Line 3473
    sllv	$at,$s7,$at
    addu	$at,$at,$s6
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3475
    lwc1	$f22,8($a1)
    # Line 3474
    lwc1	$f24,4($a1)
    # Line 3475
    mul.s	$f22,$f22,$f8
    # Line 3473
    lwc1	$f20,0($a1)
    # Line 3474
    mul.s	$f24,$f24,$f8
    b	.L0db9f950
    # Line 3473
    mul.s	$f20,$f20,$f8
.L0dba0200:
    # Line 3484
    ld	$a1,136($sp)
    ld	$v1,120($sp)
    sllv	$v1,$s7,$v1
    addu	$v1,$v1,$s5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3486
    lwc1	$f2,8($v0)
    # Line 3485
    lwc1	$f1,4($v0)
    # Line 3486
    mul.s	$f2,$f2,$f5
    # Line 3484
    lwc1	$f0,0($v0)
    # Line 3485
    mul.s	$f1,$f1,$f5
    # Line 3484
    mul.s	$f0,$f0,$f5
    # Line 3486
    add.s	$f22,$f2,$f22
    # Line 3485
    add.s	$f24,$f1,$f24
    b	.L0db9f980
    # Line 3484
    add.s	$f20,$f0,$f20
.L0dba024c:
    # Line 3495
    ld	$v0,136($sp)
    sllv	$at,$s8,$at
    addu	$at,$at,$s6
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3497
    lwc1	$f1,8($a1)
    # Line 3496
    lwc1	$f0,4($a1)
    # Line 3497
    mul.s	$f1,$f1,$f7
    # Line 3495
    lwc1	$f3,0($a1)
    # Line 3496
    mul.s	$f0,$f0,$f7
    # Line 3495
    mul.s	$f3,$f3,$f7
    # Line 3497
    add.s	$f22,$f1,$f22
    # Line 3496
    add.s	$f24,$f0,$f24
    b	.L0db9f9b0
    # Line 3495
    add.s	$f20,$f3,$f20
.L0dba0294:
    ld	$v1,120($sp)
    # Line 3506
    sllv	$v1,$s8,$v1
    addu	$v1,$v1,$s5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3508
    lwc1	$f0,8($v0)
    # Line 3507
    lwc1	$f3,4($v0)
    # Line 3508
    mul.s	$f0,$f0,$f6
    # Line 3506
    lwc1	$f2,0($v0)
    # Line 3507
    mul.s	$f3,$f3,$f6
    # Line 3506
    mul.s	$f2,$f2,$f6
    # Line 3508
    add.s	$f22,$f0,$f22
    # Line 3507
    add.s	$f24,$f3,$f24
    b	.L0db9f9e0
    # Line 3506
    add.s	$f20,$f2,$f20
.L0dba02dc:
    # Line 3608
    ld	$v0,136($sp)
    ld	$at,120($sp)
    sllv	$at,$s7,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3610
    lwc1	$f3,8($a1)
    # Line 3609
    lwc1	$f2,4($a1)
    # Line 3610
    mul.s	$f3,$f3,$f10
    # Line 3608
    lwc1	$f1,0($a1)
    # Line 3609
    mul.s	$f2,$f2,$f10
    # Line 3608
    mul.s	$f1,$f1,$f10
    # Line 3610
    add.s	$f22,$f3,$f22
    # Line 3609
    add.s	$f24,$f2,$f24
    b	.L0db9fbb8
    # Line 3608
    add.s	$f20,$f1,$f20
.L0dba0328:
    ld	$v1,120($sp)
    # Line 3619
    sllv	$v1,$s8,$v1
    addu	$v1,$v1,$s6
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3621
    lwc1	$f2,8($v0)
    # Line 3620
    lwc1	$f1,4($v0)
    # Line 3621
    mul.s	$f2,$f2,$f11
    # Line 3619
    lwc1	$f0,0($v0)
    # Line 3620
    mul.s	$f1,$f1,$f11
    # Line 3619
    mul.s	$f0,$f0,$f11
    # Line 3621
    add.s	$f22,$f2,$f22
    # Line 3620
    add.s	$f24,$f1,$f24
    b	.L0db9fbe8
    # Line 3619
    add.s	$f20,$f0,$f20
.L0dba0370:
    ld	$at,120($sp)
    # Line 3630
    sllv	$at,$s8,$at
    addu	$at,$at,$s5
    sll	$a1,$at,0x2
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    addu	$a1,$a1,$at
    # Line 3632
    lwc1	$f1,8($a1)
    # Line 3631
    lwc1	$f0,4($a1)
    # Line 3632
    mul.s	$f1,$f1,$f12
    # Line 3630
    lwc1	$f3,0($a1)
    # Line 3631
    mul.s	$f0,$f0,$f12
    # Line 3630
    mul.s	$f3,$f3,$f12
    # Line 3632
    add.s	$f22,$f1,$f22
    # Line 3631
    add.s	$f24,$f0,$f24
    b	.L0db9f210
    # Line 3630
    add.s	$f20,$f3,$f20
.L0dba03b8:
    # Line 3597
    addu	$v1,$v1,$s6
    sll	$v0,$v1,0x2
    ld	$a1,136($sp)
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3599
    lwc1	$f0,8($v0)
    # Line 3598
    lwc1	$f3,4($v0)
    # Line 3599
    mul.s	$f0,$f0,$f13
    # Line 3597
    lwc1	$f2,0($v0)
    # Line 3598
    mul.s	$f3,$f3,$f13
    # Line 3597
    mul.s	$f2,$f2,$f13
    # Line 3599
    add.s	$f22,$f0,$f22
    # Line 3598
    add.s	$f24,$f3,$f24
    b	.L0db9fb88
    # Line 3597
    add.s	$f20,$f2,$f20
.L0dba03fc:
    sd	$a0,96($sp)
    sdc1	$f5,312($sp)
    sdc1	$f6,304($sp)
    sdc1	$f7,296($sp)
    ldc1	$f26,16($sp)
    sdc1	$f8,288($sp)
    # Line 3400
    # lw $t9, -17792($gp) # &floorf
    # Line 3399
    sub.s	$f26,$f10,$f26
    sdc1	$f4,24($sp)
    sdc1	$f9,0($sp)
    # Line 3400
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    # Line 3402
    li	$at,1
    sd	$at,272($sp)
    # Line 3400
    ld	$at,112($sp)
    mfc1	$s6,$f0
    nop
    and	$s6,$s6,$at
    # Line 3401
    addiu	$s5,$s6,1
    # Line 3402
    b	.L0db9f864
    # Line 3401
    and	$s5,$s5,$at
.L0dba0454:
    ldc1	$f28,16($sp)
    # Line 3415
    # lw $t9, -17792($gp) # &floorf
    # Line 3414
    sub.s	$f28,$f4,$f28
    # Line 3415
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    # Line 3417
    ld	$s8,272($sp)
    # Line 3415
    ld	$at,104($sp)
    mfc1	$s7,$f0
    # Line 3417
    addiu	$s8,$s8,1
    sd	$s8,272($sp)
    # Line 3415
    and	$s7,$s7,$at
    # Line 3416
    addiu	$s8,$s7,1
    # Line 3417
    b	.L0db9f8b8
    # Line 3416
    and	$s8,$s8,$at
.L0dba0490:
    ldc1	$f26,16($sp)
    # Line 3524
    # lw $t9, -17792($gp) # &floorf
    # Line 3523
    sub.s	$f26,$f10,$f26
    # Line 3524
    jal	floorf
    mov.s	$f12,$f26
    trunc.w.s	$f0,$f0
    # Line 3526
    li	$at,1
    sd	$at,272($sp)
    # Line 3524
    ld	$at,112($sp)
    mfc1	$s6,$f0
    nop
    and	$s6,$s6,$at
    # Line 3525
    addiu	$s5,$s6,1
    # Line 3526
    b	.L0db9fa68
    # Line 3525
    and	$s5,$s5,$at
.L0dba04cc:
    ldc1	$f28,16($sp)
    # Line 3539
    # lw $t9, -17792($gp) # &floorf
    # Line 3538
    sub.s	$f28,$f4,$f28
    # Line 3539
    jal	floorf
    mov.s	$f12,$f28
    trunc.w.s	$f0,$f0
    # Line 3541
    ld	$s8,272($sp)
    # Line 3539
    ld	$at,104($sp)
    mfc1	$s7,$f0
    # Line 3541
    addiu	$s8,$s8,1
    sd	$s8,272($sp)
    # Line 3539
    and	$s7,$s7,$at
    # Line 3540
    addiu	$s8,$s7,1
    # Line 3541
    b	.L0db9fabc
    # Line 3540
    and	$s8,$s8,$at
.L0dba0508:
    # Line 3679
    move	$v0,$zero
    ld	$gp,224($sp)
    ld	$s0,200($sp)
    ld	$s1,168($sp)
    ld	$s2,232($sp)
    ld	$s3,216($sp)
    ld	$s4,208($sp)
    ld	$s5,176($sp)
    ld	$s6,152($sp)
    ld	$s7,184($sp)
    ld	$s8,192($sp)
    ldc1	$f20,40($sp)
    ldc1	$f22,56($sp)
    ldc1	$f24,64($sp)
    ldc1	$f26,48($sp)
    ld	$ra,160($sp)
    ldc1	$f28,72($sp)
    ldc1	$f30,80($sp)
    jr	$ra
    addiu	$sp,$sp,352
.end __glTextureRGB_L_LML_StippledSpan

# Function: __glTextureRGB_N_N_Span
# Declared: Line 3689 (Source lines: 3690-3795)
# Address: 0x0dba0558 - 0x0dba08dc (Size: 900 bytes, Frame: 192)
.globl __glTextureRGB_N_N_Span
.ent __glTextureRGB_N_N_Span
__glTextureRGB_N_N_Span:
    # Line 3714
    li	$t0,7681
    li	$a6,8448
    # Line 3690
    addiu	$sp,$sp,-192
    sd	$s1,32($sp)
    move	$s1,$a0
    sdc1	$f22,8($sp)
    # Line 3712
    lwc1	$f22,30288($a0)
    sdc1	$f20,16($sp)
    # Line 3711
    lwc1	$f20,30280($a0)
    sdc1	$f24,0($sp)
    # Line 3710
    lwc1	$f24,30276($a0)
    sd	$s0,48($sp)
    # Line 3708
    lw	$s0,30516($a0)
    sd	$s2,64($sp)
    # Line 3706
    lw	$s2,28264($a0)
    sd	$gp,40($sp)
    # Line 3690
    lui	$at,0x6
    addiu	$at,$at,-7872
    addu	$gp,$t9,$at
    sd	$s7,24($sp)
    # Line 3714
    lw	$s7,30300($a0)
    sd	$s4,56($sp)
    # Line 3704
    lw	$s4,2376($a0)
    # Line 3714
    addiu	$s7,$s7,-1
    bltz	$s7,.L0dba08ac
    # Line 3704
    lw	$s4,0($s4)
    # Line 3714
    li	$a2,10497
    li	$a3,0x8062
    li	$a7,-1
    sd	$s3,144($sp)
    sd	$s6,136($sp)
    sd	$ra,128($sp)
    sd	$s5,120($sp)
    sd	$s8,112($sp)
    sdc1	$f26,96($sp)
    sdc1	$f28,88($sp)
    sdc1	$f30,80($sp)
    xori	$v0,$s4,0x2101
    sltiu	$v0,$v0,1
    b	.L0dba06c4
    sd	$v0,72($sp)
.L0dba05fc:
    # Line 3732
    move	$s3,$zero
.L0dba0600:
    # Line 3736
    lw	$v1,8($s2)
.L0dba0604:
    mul.s	$f26,$f20,$f30
    beq	$v1,$a2,.L0dba0840
    lwc1	$f28,36($s8)
    # Line 3741
    mul.s	$f0,$f26,$f28
    trunc.w.s	$f0,$f0
    mfc1	$t2,$f0
    nop
    bltz	$t2,.L0dba0784
    move	$t1,$t2
    # Line 3742
    slt	$a1,$t2,$a0
    bnez	$a1,.L0dba063c
    # Line 3743
    nor	$at,$s6,$zero
    move	$t1,$s5
.L0dba0638:
    nor	$at,$s6,$zero
.L0dba063c:
    nor	$v0,$s5,$zero
    and	$v0,$v0,$t1
    and	$at,$at,$s3
    or	$at,$at,$v0
    beqz	$at,.L0dba0728
    # Line 3757
    sllv	$v0,$t1,$a4
    # Line 3753
    lwc1	$f6,164($s2)
    # Line 3752
    lwc1	$f7,160($s2)
    # Line 3759
    beq	$s4,$a6,.L0dba0750
    # Line 3751
    lwc1	$f4,156($s2)
.L0dba0664:
    # Line 3769
    beq	$s4,$a3,.L0dba0778
    ld	$v0,72($sp)
    beq	$s4,$t0,.L0dba0778
    move	$a0,$zero
    or	$v0,$a0,$v0
.L0dba0678:
    beqzl	$v0,.L0dba078c
    # Line 3782
    sub.s	$f0,$f5,$f4
    # Line 3772
    lwc1	$f3,30804($s1)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($s0)
    # Line 3773
    lwc1	$f2,30808($s1)
    mul.s	$f2,$f2,$f7
    swc1	$f2,4($s0)
    # Line 3774
    lwc1	$f1,30812($s1)
    mul.s	$f1,$f1,$f6
    swc1	$f1,8($s0)
.L0dba06a4:
    # Line 3791
    lwc1	$f2,30444($s1)
    # Line 3790
    lwc1	$f1,30436($s1)
    # Line 3791
    add.s	$f22,$f2,$f22
    # Line 3789
    lwc1	$f0,30432($s1)
    # Line 3790
    add.s	$f20,$f1,$f20
    # Line 3792
    addiu	$s0,$s0,16
    # Line 3714
    beq	$s7,$a7,.L0dba088c
    # Line 3789
    add.s	$f24,$f0,$f24
.L0dba06c4:
    # Line 3715
    lwc1	$f5,3284($s1)
    div.s	$f30,$f5,$f22
    # Line 3720
    lw	$s8,228($s2)
    # Line 3714
    addiu	$s7,$s7,-1
    # Line 3726
    lw	$v1,4($s2)
    lwc1	$f28,32($s8)
    # Line 3722
    lw	$a5,0($s8)
    # Line 3724
    lw	$a0,24($s8)
    # Line 3723
    lw	$t1,20($s8)
    # Line 3721
    lw	$a4,44($s8)
    # Line 3724
    addiu	$s5,$a0,-1
    # Line 3723
    addiu	$s6,$t1,-1
    # Line 3726
    beq	$v1,$a2,.L0dba07ec
    mul.s	$f26,$f24,$f30
    # Line 3731
    mul.s	$f3,$f26,$f28
    trunc.w.s	$f3,$f3
    mfc1	$t2,$f3
    nop
    bltz	$t2,.L0dba05fc
    move	$s3,$t2
    # Line 3732
    slt	$a1,$t2,$t1
    bnezl	$a1,.L0dba0604
    # Line 3736
    lw	$v1,8($s2)
    b	.L0dba0600
    # Line 3733
    move	$s3,$s6
.L0dba0728:
    # Line 3757
    addu	$v0,$v0,$s3
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a5
    addu	$at,$at,$v0
    # Line 3759
    lwc1	$f6,8($at)
    # Line 3758
    lwc1	$f7,4($at)
    # Line 3759
    bne	$s4,$a6,.L0dba0664
    # Line 3757
    lwc1	$f4,0($at)
.L0dba0750:
    # Line 3766
    lwc1	$f1,4($s0)
    # Line 3767
    lwc1	$f2,8($s0)
    # Line 3766
    mul.s	$f1,$f1,$f7
    # Line 3765
    lwc1	$f0,0($s0)
    # Line 3767
    mul.s	$f2,$f2,$f6
    # Line 3765
    mul.s	$f0,$f0,$f4
    # Line 3767
    swc1	$f2,8($s0)
    # Line 3766
    swc1	$f1,4($s0)
    # Line 3767
    b	.L0dba06a4
    # Line 3765
    swc1	$f0,0($s0)
.L0dba0778:
    # Line 3769
    li	$a0,1
    b	.L0dba0678
    or	$v0,$a0,$v0
.L0dba0784:
    # Line 3742
    b	.L0dba0638
    move	$t1,$zero
.L0dba078c:
    # Line 3782
    lwc1	$f3,0($s0)
    # Line 3780
    lw	$v1,2376($s1)
    # Line 3782
    mul.s	$f3,$f3,$f0
    lwc1	$f0,4($v1)
    mul.s	$f0,$f0,$f4
    add.s	$f3,$f3,$f0
    swc1	$f3,0($s0)
    # Line 3783
    lwc1	$f2,3284($s1)
    sub.s	$f2,$f2,$f7
    lwc1	$f1,4($s0)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,8($v1)
    mul.s	$f2,$f2,$f7
    add.s	$f1,$f1,$f2
    swc1	$f1,4($s0)
    # Line 3784
    lwc1	$f0,3284($s1)
    sub.s	$f0,$f0,$f6
    lwc1	$f3,8($s0)
    mul.s	$f3,$f3,$f0
    lwc1	$f0,12($v1)
    mul.s	$f0,$f0,$f6
    add.s	$f3,$f3,$f0
    b	.L0dba06a4
    swc1	$f3,8($s0)
.L0dba07ec:
    sd	$a0,168($sp)
    sd	$a4,160($sp)
    # Line 3728
    # lw $t9, -17792($gp) # &floorf
    sd	$a5,152($sp)
    sdc1	$f5,104($sp)
    jal	floorf
    mov.s	$f12,$f26
    sub.s	$f1,$f26,$f0
    mul.s	$f1,$f1,$f28
    li	$a2,10497
    li	$a3,0x8062
    li	$a6,8448
    li	$a7,-1
    li	$t0,7681
    trunc.w.s	$f1,$f1
    ldc1	$f5,104($sp)
    ld	$a5,152($sp)
    ld	$a4,160($sp)
    mfc1	$s3,$f1
    b	.L0dba0600
    ld	$a0,168($sp)
.L0dba0840:
    sd	$a4,160($sp)
    # Line 3738
    # lw $t9, -17792($gp) # &floorf
    sd	$a5,152($sp)
    sdc1	$f5,104($sp)
    jal	floorf
    mov.s	$f12,$f26
    sub.s	$f2,$f26,$f0
    mul.s	$f2,$f2,$f28
    li	$a2,10497
    li	$a3,0x8062
    li	$a6,8448
    li	$a7,-1
    trunc.w.s	$f2,$f2
    li	$t0,7681
    ldc1	$f5,104($sp)
    ld	$a5,152($sp)
    mfc1	$t1,$f2
    b	.L0dba0638
    ld	$a4,160($sp)
.L0dba088c:
    ldc1	$f30,80($sp)
    ldc1	$f28,88($sp)
    ldc1	$f26,96($sp)
    ld	$s8,112($sp)
    ld	$s5,120($sp)
    ld	$ra,128($sp)
    ld	$s6,136($sp)
    ld	$s3,144($sp)
.L0dba08ac:
    # Line 3795
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s4,56($sp)
    ld	$s7,24($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glTextureRGB_N_N_Span

# Function: __glTextureRGB_N_N_StippledSpan
# Declared: Line 3805 (Source lines: 3806-3933)
# Address: 0x0dba08dc - 0x0dba0cd0 (Size: 1012 bytes, Frame: 224)
.globl __glTextureRGB_N_N_StippledSpan
.ent __glTextureRGB_N_N_StippledSpan
__glTextureRGB_N_N_StippledSpan:
    # Line 3806
    addiu	$sp,$sp,-224
    sd	$s2,56($sp)
    move	$s2,$a0
    sdc1	$f22,8($sp)
    # Line 3830
    lwc1	$f22,30288($a0)
    sdc1	$f20,16($sp)
    # Line 3829
    lwc1	$f20,30280($a0)
    sdc1	$f24,0($sp)
    # Line 3828
    lwc1	$f24,30276($a0)
    sd	$s1,32($sp)
    # Line 3825
    lw	$s1,30516($a0)
    sd	$s3,48($sp)
    # Line 3823
    lw	$s3,28264($a0)
    sd	$gp,40($sp)
    # Line 3806
    lui	$v0,0x6
    addiu	$v0,$v0,-8772
    # Line 3826
    lw	$v1,30524($a0)
    # Line 3806
    addu	$gp,$t9,$v0
    # Line 3824
    lw	$at,30300($a0)
    sd	$v1,64($sp)
    sd	$s5,24($sp)
    # Line 3821
    lw	$s5,2376($a0)
    sd	$at,72($sp)
    # Line 3830
    beqz	$at,.L0dba0ca4
    # Line 3821
    lw	$s5,0($s5)
    sd	$s6,168($sp)
    sd	$ra,160($sp)
    sd	$s4,152($sp)
    sd	$s0,144($sp)
    sd	$s7,136($sp)
    sd	$s8,128($sp)
    sdc1	$f26,112($sp)
    sdc1	$f28,104($sp)
    sdc1	$f30,96($sp)
    # Line 3830
    li	$a7,-1
    li	$t1,7681
    li	$a4,0x8062
    li	$t0,8448
    li	$a3,10497
    xori	$a1,$s5,0x2101
    sltiu	$a1,$a1,1
    b	.L0dba0990
    sd	$a1,80($sp)
.L0dba0988:
    ld	$at,72($sp)
    # Line 3841
    beqz	$at,.L0dba0c80
.L0dba0990:
    ld	$v0,72($sp)
    lui	$s0,0x8000
    # Line 3833
    move	$s6,$v0
    slti	$v0,$v0,33
    bnez	$v0,.L0dba09ac
    # Line 3837
    ld	$a1,72($sp)
    # Line 3835
    li	$s6,32
.L0dba09ac:
    # Line 3837
    subu	$a1,$a1,$s6
    # Line 3839
    ld	$v1,64($sp)
    # Line 3841
    addiu	$s6,$s6,-1
    sd	$a1,72($sp)
    # Line 3839
    addiu	$v1,$v1,4
    lw	$at,-4($v1)
    sd	$v1,64($sp)
    # Line 3841
    bltz	$s6,.L0dba0988
    sd	$at,88($sp)
    b	.L0dba0aac
    ld	$v0,88($sp)
.L0dba09d8:
    # Line 3862
    move	$s4,$zero
.L0dba09dc:
    # Line 3866
    lw	$v0,8($s3)
.L0dba09e0:
    mul.s	$f26,$f20,$f28
    beq	$v0,$a3,.L0dba0c34
    lwc1	$f30,36($a0)
    # Line 3871
    mul.s	$f0,$f26,$f30
    trunc.w.s	$f0,$f0
    mfc1	$t2,$f0
    nop
    bltz	$t2,.L0dba0b70
    move	$a0,$t2
    # Line 3872
    slt	$v1,$t2,$a2
    bnez	$v1,.L0dba0a18
    # Line 3873
    nor	$a1,$s8,$zero
    move	$a0,$s7
.L0dba0a14:
    nor	$a1,$s8,$zero
.L0dba0a18:
    nor	$at,$s7,$zero
    and	$at,$at,$a0
    and	$a1,$a1,$s4
    or	$a1,$a1,$at
    beqz	$a1,.L0dba0b18
    # Line 3888
    sllv	$v0,$a0,$a5
    # Line 3884
    lwc1	$f6,164($s3)
    # Line 3883
    lwc1	$f7,160($s3)
    # Line 3890
    beq	$s5,$t0,.L0dba0b40
    # Line 3882
    lwc1	$f4,156($s3)
.L0dba0a40:
    # Line 3900
    move	$a0,$zero
    beq	$s5,$a4,.L0dba0b68
    ld	$at,80($sp)
    beq	$s5,$t1,.L0dba0b68
    nop
.L0dba0a54:
    or	$at,$a0,$at
    beqzl	$at,.L0dba0b78
    # Line 3913
    sub.s	$f0,$f5,$f4
    # Line 3903
    lwc1	$f3,30804($s2)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($s1)
    # Line 3904
    lwc1	$f2,30808($s2)
    mul.s	$f2,$f2,$f7
    swc1	$f2,4($s1)
    # Line 3905
    lwc1	$f1,30812($s2)
    mul.s	$f1,$f1,$f6
    swc1	$f1,8($s1)
.L0dba0a84:
    # Line 3923
    lwc1	$f2,30444($s2)
    # Line 3922
    lwc1	$f1,30436($s2)
    # Line 3923
    add.s	$f22,$f2,$f22
    # Line 3926
    srl	$s0,$s0,0x1
    # Line 3921
    lwc1	$f0,30432($s2)
    # Line 3922
    add.s	$f20,$f1,$f20
    # Line 3924
    addiu	$s1,$s1,16
    # Line 3841
    beq	$s6,$a7,.L0dba0988
    # Line 3921
    add.s	$f24,$f0,$f24
    ld	$v0,88($sp)
.L0dba0aac:
    # Line 3841
    and	$v0,$v0,$s0
    beqz	$v0,.L0dba0a84
    addiu	$s6,$s6,-1
    # Line 3844
    lwc1	$f5,3284($s2)
    div.s	$f28,$f5,$f22
    # Line 3849
    lw	$a0,228($s3)
    # Line 3856
    lw	$v1,4($s3)
    lwc1	$f30,32($a0)
    # Line 3851
    lw	$a6,0($a0)
    # Line 3853
    lw	$a2,24($a0)
    # Line 3852
    lw	$t2,20($a0)
    # Line 3850
    lw	$a5,44($a0)
    # Line 3853
    addiu	$s7,$a2,-1
    # Line 3852
    addiu	$s8,$t2,-1
    # Line 3856
    beq	$v1,$a3,.L0dba0bd8
    mul.s	$f26,$f24,$f28
    # Line 3861
    mul.s	$f3,$f26,$f30
    trunc.w.s	$f3,$f3
    mfc1	$t3,$f3
    nop
    bltz	$t3,.L0dba09d8
    move	$s4,$t3
    # Line 3862
    slt	$a1,$t3,$t2
    bnezl	$a1,.L0dba09e0
    # Line 3866
    lw	$v0,8($s3)
    b	.L0dba09dc
    # Line 3863
    move	$s4,$s8
.L0dba0b18:
    # Line 3888
    addu	$v0,$v0,$s4
    sll	$at,$v0,0x2
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a6
    addu	$at,$at,$v0
    # Line 3890
    lwc1	$f6,8($at)
    # Line 3889
    lwc1	$f7,4($at)
    # Line 3890
    bne	$s5,$t0,.L0dba0a40
    # Line 3888
    lwc1	$f4,0($at)
.L0dba0b40:
    # Line 3897
    lwc1	$f1,4($s1)
    # Line 3898
    lwc1	$f2,8($s1)
    # Line 3897
    mul.s	$f1,$f1,$f7
    # Line 3896
    lwc1	$f0,0($s1)
    # Line 3898
    mul.s	$f2,$f2,$f6
    # Line 3896
    mul.s	$f0,$f0,$f4
    # Line 3898
    swc1	$f2,8($s1)
    # Line 3897
    swc1	$f1,4($s1)
    # Line 3898
    b	.L0dba0a84
    # Line 3896
    swc1	$f0,0($s1)
.L0dba0b68:
    # Line 3900
    b	.L0dba0a54
    li	$a0,1
.L0dba0b70:
    # Line 3872
    b	.L0dba0a14
    move	$a0,$zero
.L0dba0b78:
    # Line 3913
    lwc1	$f3,0($s1)
    # Line 3911
    lw	$v1,2376($s2)
    # Line 3913
    mul.s	$f3,$f3,$f0
    lwc1	$f0,4($v1)
    mul.s	$f0,$f0,$f4
    add.s	$f3,$f3,$f0
    swc1	$f3,0($s1)
    # Line 3914
    lwc1	$f2,3284($s2)
    sub.s	$f2,$f2,$f7
    lwc1	$f1,4($s1)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,8($v1)
    mul.s	$f2,$f2,$f7
    add.s	$f1,$f1,$f2
    swc1	$f1,4($s1)
    # Line 3915
    lwc1	$f0,3284($s2)
    sub.s	$f0,$f0,$f6
    lwc1	$f3,8($s1)
    mul.s	$f3,$f3,$f0
    lwc1	$f0,12($v1)
    mul.s	$f0,$f0,$f6
    add.s	$f3,$f3,$f0
    b	.L0dba0a84
    swc1	$f3,8($s1)
.L0dba0bd8:
    sd	$a0,200($sp)
    sd	$a2,192($sp)
    sd	$a5,184($sp)
    # Line 3858
    # lw $t9, -17792($gp) # &floorf
    sd	$a6,176($sp)
    sdc1	$f5,120($sp)
    jal	floorf
    mov.s	$f12,$f26
    sub.s	$f1,$f26,$f0
    mul.s	$f1,$f1,$f30
    li	$a3,10497
    li	$a4,0x8062
    li	$a7,-1
    li	$t0,8448
    li	$t1,7681
    ldc1	$f5,120($sp)
    trunc.w.s	$f1,$f1
    ld	$a6,176($sp)
    ld	$a5,184($sp)
    ld	$a2,192($sp)
    mfc1	$s4,$f1
    b	.L0dba09dc
    ld	$a0,200($sp)
.L0dba0c34:
    sd	$a5,184($sp)
    # Line 3868
    # lw $t9, -17792($gp) # &floorf
    sd	$a6,176($sp)
    sdc1	$f5,120($sp)
    jal	floorf
    mov.s	$f12,$f26
    sub.s	$f2,$f26,$f0
    mul.s	$f2,$f2,$f30
    li	$a3,10497
    li	$a4,0x8062
    li	$a7,-1
    li	$t0,8448
    trunc.w.s	$f2,$f2
    li	$t1,7681
    ldc1	$f5,120($sp)
    ld	$a6,176($sp)
    mfc1	$a0,$f2
    b	.L0dba0a14
    ld	$a5,184($sp)
.L0dba0c80:
    ldc1	$f30,96($sp)
    ldc1	$f28,104($sp)
    ldc1	$f26,112($sp)
    ld	$s8,128($sp)
    ld	$s7,136($sp)
    ld	$s0,144($sp)
    ld	$s4,152($sp)
    ld	$ra,160($sp)
    ld	$s6,168($sp)
.L0dba0ca4:
    # Line 3933
    move	$v0,$zero
    ld	$gp,40($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s5,24($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glTextureRGB_N_N_StippledSpan

# Function: __glTextureRGB_N_NMN_Span
# Declared: Line 3943 (Source lines: 3944-4086)
# Address: 0x0dba0cd0 - 0x0dba11b4 (Size: 1252 bytes, Frame: 224)
.globl __glTextureRGB_N_NMN_Span
.ent __glTextureRGB_N_NMN_Span
__glTextureRGB_N_NMN_Span:
    # Line 3944
    addiu	$sp,$sp,-224
    sd	$s2,72($sp)
    sd	$s4,96($sp)
    sd	$s6,80($sp)
    sd	$s8,104($sp)
    sdc1	$f28,8($sp)
    sdc1	$f30,16($sp)
    sd	$ra,88($sp)
    sd	$s3,152($sp)
    move	$s3,$a0
    sdc1	$f22,32($sp)
    # Line 3970
    lwc1	$f22,30292($a0)
    sdc1	$f24,24($sp)
    # Line 3969
    lwc1	$f24,30288($a0)
    sdc1	$f26,40($sp)
    # Line 3968
    lwc1	$f26,30280($a0)
    sdc1	$f20,48($sp)
    # Line 3967
    lwc1	$f20,30276($a0)
    sd	$s1,128($sp)
    # Line 3965
    lw	$s1,30516($a0)
    sd	$s0,144($sp)
    # Line 3963
    lw	$s0,28264($a0)
    sd	$gp,136($sp)
    # Line 3944
    lui	$at,0x6
    # Line 3952
    lwc1	$f0,3280($a0)
    # Line 3944
    addiu	$at,$at,-9784
    addu	$gp,$t9,$at
    sdc1	$f0,56($sp)
    sd	$s7,112($sp)
    # Line 3972
    lw	$s7,30300($a0)
    sd	$s5,120($sp)
    # Line 3961
    lw	$s5,2376($a0)
    # Line 3972
    addiu	$s7,$s7,-1
    bltz	$s7,.L0dba1164
    # Line 3961
    lw	$s5,0($s5)
    sd	$s2,72($sp)
    sd	$s6,80($sp)
    sd	$ra,88($sp)
    sd	$s4,96($sp)
    sd	$s8,104($sp)
    sdc1	$f28,8($sp)
    sdc1	$f30,16($sp)
    # Line 3972
    li	$a6,-1
    li	$t0,7681
    li	$a3,0x8062
    li	$a7,8448
    li	$a2,10497
    lwc1	$f7,_lit_3efff972
    lwc1	$f6,_lit_3f000000
    li	$t1,1
    mtc1	$zero,$f5
    xori	$v0,$s5,0x2101
    sltiu	$v0,$v0,1
    b	.L0dba0ef0
    sd	$v0,160($sp)
.L0dba0dac:
    # Line 3994
    c.le.s	$f8,$f6
    nop
    bc1f	.L0dba1008
    # Line 3998
    move	$a0,$zero
.L0dba0dbc:
    # Line 4007
    sll	$s2,$a0,0x2
.L0dba0dc0:
    subu	$s2,$s2,$a0
    sll	$s2,$s2,0x3
    addu	$s2,$s2,$a0
    sll	$s2,$s2,0x2
    addu	$s2,$s2,$a5
.L0dba0dd4:
    # Line 4015
    lwc1	$f4,32($s2)
    # Line 4011
    lw	$a5,0($s2)
    # Line 4010
    lw	$a4,44($s2)
    # Line 4013
    lw	$a0,24($s2)
    # Line 4015
    lw	$s6,4($s0)
    # Line 4012
    lw	$t2,20($s2)
    # Line 4013
    addiu	$s8,$a0,-1
    # Line 4015
    beq	$s6,$a2,.L0dba10a4
    # Line 4012
    addiu	$s6,$t2,-1
    # Line 4020
    mul.s	$f1,$f30,$f4
    trunc.w.s	$f1,$f1
    mfc1	$t3,$f1
    nop
    bltz	$t3,.L0dba1030
    move	$s4,$t3
    # Line 4021
    slt	$at,$t3,$t2
    bnezl	$at,.L0dba0e24
    # Line 4025
    lw	$v0,8($s0)
    # Line 4022
    move	$s4,$s6
.L0dba0e20:
    # Line 4025
    lw	$v0,8($s0)
.L0dba0e24:
    mul.s	$f30,$f26,$f28
    beq	$v0,$a2,.L0dba1108
    lwc1	$f4,36($s2)
    # Line 4030
    mul.s	$f2,$f30,$f4
    trunc.w.s	$f2,$f2
    mfc1	$t3,$f2
    nop
    bltz	$t3,.L0dba1038
    move	$t2,$t3
    # Line 4031
    slt	$v1,$t3,$a0
    bnez	$v1,.L0dba0e5c
    # Line 4032
    nor	$a1,$s6,$zero
    move	$t2,$s8
.L0dba0e58:
    nor	$a1,$s6,$zero
.L0dba0e5c:
    nor	$at,$s8,$zero
    and	$at,$at,$t2
    and	$a1,$a1,$s4
    or	$a1,$a1,$at
    beqz	$a1,.L0dba0fac
    # Line 4047
    sllv	$v1,$t2,$a4
    # Line 4043
    lwc1	$f9,164($s0)
    # Line 4042
    lwc1	$f8,160($s0)
    # Line 4049
    beq	$s5,$a7,.L0dba0fd4
    # Line 4041
    lwc1	$f4,156($s0)
.L0dba0e84:
    # Line 4059
    beq	$s5,$a3,.L0dba0ffc
    ld	$at,160($sp)
    beq	$s5,$t0,.L0dba0ffc
    move	$a0,$zero
    or	$at,$a0,$at
.L0dba0e98:
    beqz	$at,.L0dba1040
    ldc1	$f3,64($sp)
    # Line 4062
    lwc1	$f1,30804($s3)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($s1)
    # Line 4063
    lwc1	$f0,30808($s3)
    mul.s	$f0,$f0,$f8
    swc1	$f0,4($s1)
    # Line 4064
    lwc1	$f3,30812($s3)
    mul.s	$f3,$f3,$f9
    swc1	$f3,8($s1)
.L0dba0ec4:
    # Line 3972
    addiu	$s7,$s7,-1
    # Line 4082
    lwc1	$f1,30448($s3)
    # Line 4081
    lwc1	$f0,30444($s3)
    # Line 4082
    add.s	$f22,$f1,$f22
    # Line 4080
    lwc1	$f3,30436($s3)
    # Line 4081
    add.s	$f24,$f0,$f24
    # Line 4079
    lwc1	$f2,30432($s3)
    # Line 4080
    add.s	$f26,$f3,$f26
    # Line 4083
    addiu	$s1,$s1,16
    # Line 3972
    beq	$s7,$a6,.L0dba1164
    # Line 4079
    add.s	$f20,$f2,$f20
.L0dba0ef0:
    # Line 3973
    lwc1	$f28,3284($s3)
    sdc1	$f28,64($sp)
    div.s	$f28,$f28,$f24
    mul.s	$f4,$f22,$f28
    lwc1	$f2,240($s0)
    c.le.s	$f4,$f2
    # Line 3994
    mov.s	$f8,$f5
    # Line 3973
    lw	$a5,228($s0)
    bc1f	.L0dba0f20
    # Line 4015
    mul.s	$f30,$f20,$f28
    # Line 3981
    b	.L0dba0dd4
    move	$s2,$a5
.L0dba0f20:
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0dba0dac
    # Line 3989
    move	$a0,$zero
    # Line 3990
    trunc.w.s	$f0,$f4
    mfc1	$a4,$f0
    nop
    sra	$a4,$a4,0x1
    beqz	$a4,.L0dba0f7c
    # Line 3992
    sllv	$at,$t1,$a0
    # Line 3990
    addiu	$a0,$a0,1
.L0dba0f4c:
    sra	$a4,$a4,0x1
    beqz	$a4,.L0dba0f78
    nop
    addiu	$a0,$a0,1
    sra	$a4,$a4,0x1
    beqz	$a4,.L0dba0f78
    nop
    addiu	$a0,$a0,1
    sra	$a4,$a4,0x1
    bnezl	$a4,.L0dba0f4c
    addiu	$a0,$a0,1
.L0dba0f78:
    # Line 3992
    sllv	$at,$t1,$a0
.L0dba0f7c:
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f4,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a0,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f0
    ldc1	$f0,56($sp)
    b	.L0dba0dac
    mul.s	$f8,$f8,$f0
.L0dba0fac:
    # Line 4047
    addu	$v1,$v1,$s4
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    addu	$v0,$v0,$v1
    # Line 4049
    lwc1	$f9,8($v0)
    # Line 4048
    lwc1	$f8,4($v0)
    # Line 4049
    bne	$s5,$a7,.L0dba0e84
    # Line 4047
    lwc1	$f4,0($v0)
.L0dba0fd4:
    # Line 4056
    lwc1	$f3,4($s1)
    # Line 4057
    lwc1	$f0,8($s1)
    # Line 4056
    mul.s	$f3,$f3,$f8
    # Line 4055
    lwc1	$f2,0($s1)
    # Line 4057
    mul.s	$f0,$f0,$f9
    # Line 4055
    mul.s	$f2,$f2,$f4
    # Line 4057
    swc1	$f0,8($s1)
    # Line 4056
    swc1	$f3,4($s1)
    # Line 4057
    b	.L0dba0ec4
    # Line 4055
    swc1	$f2,0($s1)
.L0dba0ffc:
    # Line 4059
    li	$a0,1
    b	.L0dba0e98
    or	$at,$a0,$at
.L0dba1008:
    # Line 4001
    add.s	$f1,$f8,$f7
    trunc.w.s	$f1,$f1
    # Line 4000
    lw	$a4,236($s0)
    # Line 4001
    mfc1	$a0,$f1
    nop
    slt	$a1,$a4,$a0
    beqz	$a1,.L0dba0dc0
    # Line 4007
    sll	$s2,$a0,0x2
    b	.L0dba0dbc
    # Line 4003
    move	$a0,$a4
.L0dba1030:
    # Line 4021
    b	.L0dba0e20
    move	$s4,$zero
.L0dba1038:
    # Line 4031
    b	.L0dba0e58
    move	$t2,$zero
.L0dba1040:
    # Line 4072
    sub.s	$f3,$f3,$f4
    lwc1	$f2,0($s1)
    # Line 4070
    lw	$at,2376($s3)
    # Line 4072
    mul.s	$f2,$f2,$f3
    lwc1	$f3,4($at)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,0($s1)
    # Line 4073
    lwc1	$f1,3284($s3)
    sub.s	$f1,$f1,$f8
    lwc1	$f0,4($s1)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($at)
    mul.s	$f1,$f1,$f8
    add.s	$f0,$f0,$f1
    swc1	$f0,4($s1)
    # Line 4074
    lwc1	$f3,3284($s3)
    sub.s	$f3,$f3,$f9
    lwc1	$f2,8($s1)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,12($at)
    mul.s	$f3,$f3,$f9
    add.s	$f2,$f2,$f3
    b	.L0dba0ec4
    swc1	$f2,8($s1)
.L0dba10a4:
    sd	$a0,192($sp)
    sd	$a4,184($sp)
    # Line 4017
    # lw $t9, -17792($gp) # &floorf
    sd	$a5,176($sp)
    sdc1	$f4,0($sp)
    jal	floorf
    mov.s	$f12,$f30
    sub.s	$f4,$f30,$f0
    ldc1	$f0,0($sp)
    li	$a2,10497
    li	$a3,0x8062
    mul.s	$f4,$f4,$f0
    li	$a6,-1
    li	$a7,8448
    li	$t0,7681
    li	$t1,1
    mtc1	$zero,$f5
    lwc1	$f6,_lit_3f000000
    trunc.w.s	$f4,$f4
    lwc1	$f7,_lit_3efff972
    ld	$a5,176($sp)
    ld	$a4,184($sp)
    mfc1	$s4,$f4
    b	.L0dba0e20
    ld	$a0,192($sp)
.L0dba1108:
    sd	$a4,184($sp)
    sd	$a5,176($sp)
    # Line 4027
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f4,168($sp)
    mov.s	$f12,$f30
    jal	floorf
    mov.s	$f28,$f4
    sub.s	$f1,$f30,$f0
    li	$a2,10497
    mul.s	$f1,$f1,$f28
    li	$a3,0x8062
    li	$a6,-1
    li	$a7,8448
    li	$t0,7681
    li	$t1,1
    mtc1	$zero,$f5
    trunc.w.s	$f1,$f1
    lwc1	$f6,_lit_3f000000
    lwc1	$f7,_lit_3efff972
    ld	$a5,176($sp)
    mfc1	$t2,$f1
    b	.L0dba0e58
    ld	$a4,184($sp)
.L0dba1164:
    # Line 4086
    move	$v0,$zero
    ld	$gp,136($sp)
    ld	$s0,144($sp)
    ld	$s1,128($sp)
    ld	$s2,72($sp)
    ld	$s3,152($sp)
    ld	$s4,96($sp)
    ld	$s5,120($sp)
    ld	$s6,80($sp)
    ld	$s7,112($sp)
    ld	$s8,104($sp)
    ldc1	$f20,48($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,24($sp)
    ldc1	$f26,40($sp)
    ld	$ra,88($sp)
    ldc1	$f28,8($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glTextureRGB_N_NMN_Span

# Function: __glTextureRGB_N_NMN_StippledSpan
# Declared: Line 4096 (Source lines: 4097-4259)
# Address: 0x0dba11b4 - 0x0dba171c (Size: 1384 bytes, Frame: 128)
.globl __glTextureRGB_N_NMN_StippledSpan
.ent __glTextureRGB_N_NMN_StippledSpan
__glTextureRGB_N_NMN_StippledSpan:
    # Line 4097
    addiu	$sp,$sp,-256
    sd	$s1,88($sp)
    sd	$s4,80($sp)
    sd	$s5,96($sp)
    sd	$s7,104($sp)
    sd	$s8,112($sp)
    sdc1	$f28,8($sp)
    sdc1	$f30,16($sp)
    sd	$ra,72($sp)
    sd	$s3,144($sp)
    move	$s3,$a0
    sdc1	$f22,32($sp)
    # Line 4125
    lwc1	$f22,30292($a0)
    sdc1	$f24,24($sp)
    # Line 4124
    lwc1	$f24,30288($a0)
    sdc1	$f26,40($sp)
    # Line 4123
    lwc1	$f26,30280($a0)
    sdc1	$f20,48($sp)
    # Line 4122
    lwc1	$f20,30276($a0)
    sd	$s2,152($sp)
    # Line 4119
    lw	$s2,30516($a0)
    sd	$s0,120($sp)
    # Line 4117
    lw	$s0,28264($a0)
    sd	$gp,128($sp)
    # Line 4097
    lui	$v0,0x6
    addiu	$v0,$v0,-11036
    addu	$gp,$t9,$v0
    # Line 4120
    lw	$v1,30524($a0)
    # Line 4106
    lwc1	$f0,3280($a0)
    # Line 4118
    lw	$at,30300($a0)
    sd	$v1,160($sp)
    sdc1	$f0,56($sp)
    sd	$s6,136($sp)
    # Line 4115
    lw	$s6,2376($a0)
    sd	$at,168($sp)
    # Line 4125
    beqz	$at,.L0dba16cc
    # Line 4115
    lw	$s6,0($s6)
    sd	$ra,72($sp)
    sd	$s4,80($sp)
    sd	$s1,88($sp)
    sd	$s5,96($sp)
    sd	$s7,104($sp)
    sd	$s8,112($sp)
    sdc1	$f28,8($sp)
    sdc1	$f30,16($sp)
    # Line 4125
    li	$a7,-1
    li	$t1,7681
    li	$a4,0x8062
    li	$t0,8448
    li	$a3,10497
    lwc1	$f7,_lit_3efff972
    lwc1	$f6,_lit_3f000000
    li	$t2,1
    mtc1	$zero,$f5
    xori	$a1,$s6,0x2101
    sltiu	$a1,$a1,1
    b	.L0dba12a4
    sd	$a1,176($sp)
.L0dba129c:
    ld	$at,168($sp)
    # Line 4136
    beqz	$at,.L0dba16cc
.L0dba12a4:
    ld	$v0,168($sp)
    # Line 4128
    move	$s7,$v0
    slti	$v0,$v0,33
    bnez	$v0,.L0dba12c0
    # Line 4132
    ld	$a1,168($sp)
    # Line 4130
    li	$s7,32
    # Line 4132
    ld	$a1,168($sp)
.L0dba12c0:
    lui	$s1,0x8000
    # Line 4134
    ld	$v1,160($sp)
    # Line 4132
    subu	$a1,$a1,$s7
    # Line 4136
    addiu	$s7,$s7,-1
    # Line 4134
    lw	$at,0($v1)
    addiu	$v1,$v1,4
    sd	$a1,168($sp)
    sd	$v1,160($sp)
    # Line 4136
    bltz	$s7,.L0dba129c
    sd	$at,184($sp)
    b	.L0dba143c
    ld	$v0,184($sp)
.L0dba12f0:
    # Line 4160
    c.le.s	$f8,$f6
    nop
    bc1f	.L0dba1560
    # Line 4164
    move	$a0,$zero
.L0dba1300:
    # Line 4173
    sll	$s4,$a0,0x2
.L0dba1304:
    subu	$s4,$s4,$a0
    sll	$s4,$s4,0x3
    addu	$s4,$s4,$a0
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$a2
.L0dba1318:
    # Line 4181
    lwc1	$f4,32($s4)
    # Line 4177
    lw	$a5,0($s4)
    # Line 4176
    lw	$a6,44($s4)
    # Line 4179
    lw	$a2,24($s4)
    # Line 4181
    lw	$s8,4($s0)
    # Line 4178
    lw	$t3,20($s4)
    # Line 4179
    addiu	$a0,$a2,-1
    # Line 4181
    beq	$s8,$a3,.L0dba15fc
    # Line 4178
    addiu	$s8,$t3,-1
    # Line 4186
    mul.s	$f1,$f30,$f4
    trunc.w.s	$f1,$f1
    mfc1	$t8,$f1
    nop
    bltz	$t8,.L0dba1588
    move	$s5,$t8
    # Line 4187
    slt	$at,$t8,$t3
    bnezl	$at,.L0dba1368
    # Line 4191
    lw	$v0,8($s0)
    # Line 4188
    move	$s5,$s8
.L0dba1364:
    # Line 4191
    lw	$v0,8($s0)
.L0dba1368:
    mul.s	$f30,$f26,$f28
    beq	$v0,$a3,.L0dba1668
    lwc1	$f4,36($s4)
    # Line 4196
    mul.s	$f2,$f30,$f4
    trunc.w.s	$f2,$f2
    mfc1	$t8,$f2
    nop
    bltz	$t8,.L0dba1590
    move	$t3,$t8
    # Line 4197
    slt	$v1,$t8,$a2
    bnez	$v1,.L0dba13a0
    # Line 4198
    nor	$a1,$s8,$zero
    move	$t3,$a0
.L0dba139c:
    nor	$a1,$s8,$zero
.L0dba13a0:
    nor	$at,$a0,$zero
    and	$at,$at,$t3
    and	$a1,$a1,$s5
    or	$a1,$a1,$at
    beqz	$a1,.L0dba1504
    # Line 4213
    sllv	$v1,$t3,$a6
    # Line 4209
    lwc1	$f9,164($s0)
    # Line 4208
    lwc1	$f8,160($s0)
    # Line 4215
    beq	$s6,$t0,.L0dba152c
    # Line 4207
    lwc1	$f4,156($s0)
.L0dba13c8:
    ld	$at,176($sp)
    # Line 4225
    beq	$s6,$a4,.L0dba1558
    li	$a0,1
    beq	$s6,$t1,.L0dba1554
    move	$a0,$zero
    or	$at,$a0,$at
.L0dba13e0:
    beqz	$at,.L0dba1598
    ldc1	$f3,64($sp)
    # Line 4228
    lwc1	$f1,30804($s3)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($s2)
    # Line 4229
    lwc1	$f0,30808($s3)
    mul.s	$f0,$f0,$f8
    swc1	$f0,4($s2)
    # Line 4230
    lwc1	$f3,30812($s3)
    mul.s	$f3,$f3,$f9
    swc1	$f3,8($s2)
.L0dba140c:
    # Line 4249
    lwc1	$f1,30448($s3)
    # Line 4248
    lwc1	$f0,30444($s3)
    # Line 4249
    add.s	$f22,$f1,$f22
    # Line 4247
    lwc1	$f3,30436($s3)
    # Line 4248
    add.s	$f24,$f0,$f24
    # Line 4252
    srl	$s1,$s1,0x1
    # Line 4246
    lwc1	$f2,30432($s3)
    # Line 4247
    add.s	$f26,$f3,$f26
    # Line 4250
    addiu	$s2,$s2,16
    # Line 4136
    beq	$s7,$a7,.L0dba129c
    # Line 4246
    add.s	$f20,$f2,$f20
    ld	$v0,184($sp)
.L0dba143c:
    # Line 4160
    mov.s	$f8,$f5
    # Line 4136
    and	$v0,$v0,$s1
    beqz	$v0,.L0dba140c
    addiu	$s7,$s7,-1
    # Line 4139
    lwc1	$f28,3284($s3)
    sdc1	$f28,64($sp)
    div.s	$f28,$f28,$f24
    mul.s	$f4,$f22,$f28
    lwc1	$f2,240($s0)
    c.le.s	$f4,$f2
    lw	$a2,228($s0)
    bc1f	.L0dba1478
    # Line 4181
    mul.s	$f30,$f20,$f28
    # Line 4147
    b	.L0dba1318
    move	$s4,$a2
.L0dba1478:
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0dba12f0
    # Line 4155
    move	$a0,$zero
    # Line 4156
    trunc.w.s	$f0,$f4
    mfc1	$a5,$f0
    nop
    sra	$a5,$a5,0x1
    beqz	$a5,.L0dba14d4
    # Line 4158
    sllv	$at,$t2,$a0
    # Line 4156
    addiu	$a0,$a0,1
.L0dba14a4:
    sra	$a5,$a5,0x1
    beqz	$a5,.L0dba14d0
    nop
    addiu	$a0,$a0,1
    sra	$a5,$a5,0x1
    beqz	$a5,.L0dba14d0
    nop
    addiu	$a0,$a0,1
    sra	$a5,$a5,0x1
    bnezl	$a5,.L0dba14a4
    addiu	$a0,$a0,1
.L0dba14d0:
    # Line 4158
    sllv	$at,$t2,$a0
.L0dba14d4:
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    sub.s	$f0,$f4,$f1
    div.s	$f0,$f0,$f1
    mtc1	$a0,$f8
    nop
    cvt.s.w	$f8,$f8
    add.s	$f8,$f8,$f0
    ldc1	$f0,56($sp)
    b	.L0dba12f0
    mul.s	$f8,$f8,$f0
.L0dba1504:
    # Line 4213
    addu	$v1,$v1,$s5
    sll	$v0,$v1,0x2
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    addu	$v0,$v0,$v1
    # Line 4215
    lwc1	$f9,8($v0)
    # Line 4214
    lwc1	$f8,4($v0)
    # Line 4215
    bne	$s6,$t0,.L0dba13c8
    # Line 4213
    lwc1	$f4,0($v0)
.L0dba152c:
    # Line 4222
    lwc1	$f3,4($s2)
    # Line 4223
    lwc1	$f0,8($s2)
    # Line 4222
    mul.s	$f3,$f3,$f8
    # Line 4221
    lwc1	$f2,0($s2)
    # Line 4223
    mul.s	$f0,$f0,$f9
    # Line 4221
    mul.s	$f2,$f2,$f4
    # Line 4223
    swc1	$f0,8($s2)
    # Line 4222
    swc1	$f3,4($s2)
    # Line 4223
    b	.L0dba140c
    # Line 4221
    swc1	$f2,0($s2)
.L0dba1554:
    # Line 4225
    li	$a0,1
.L0dba1558:
    b	.L0dba13e0
    or	$at,$a0,$at
.L0dba1560:
    # Line 4167
    add.s	$f1,$f8,$f7
    trunc.w.s	$f1,$f1
    # Line 4166
    lw	$a5,236($s0)
    # Line 4167
    mfc1	$a0,$f1
    nop
    slt	$a1,$a5,$a0
    beqz	$a1,.L0dba1304
    # Line 4173
    sll	$s4,$a0,0x2
    b	.L0dba1300
    # Line 4169
    move	$a0,$a5
.L0dba1588:
    # Line 4187
    b	.L0dba1364
    move	$s5,$zero
.L0dba1590:
    # Line 4197
    b	.L0dba139c
    move	$t3,$zero
.L0dba1598:
    # Line 4238
    sub.s	$f3,$f3,$f4
    lwc1	$f2,0($s2)
    # Line 4236
    lw	$at,2376($s3)
    # Line 4238
    mul.s	$f2,$f2,$f3
    lwc1	$f3,4($at)
    mul.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    swc1	$f2,0($s2)
    # Line 4239
    lwc1	$f1,3284($s3)
    sub.s	$f1,$f1,$f8
    lwc1	$f0,4($s2)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($at)
    mul.s	$f1,$f1,$f8
    add.s	$f0,$f0,$f1
    swc1	$f0,4($s2)
    # Line 4240
    lwc1	$f3,3284($s3)
    sub.s	$f3,$f3,$f9
    lwc1	$f2,8($s2)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,12($at)
    mul.s	$f3,$f3,$f9
    add.s	$f2,$f2,$f3
    b	.L0dba140c
    swc1	$f2,8($s2)
.L0dba15fc:
    sd	$a0,224($sp)
    sd	$a2,216($sp)
    sd	$a5,208($sp)
    # Line 4183
    # lw $t9, -17792($gp) # &floorf
    sd	$a6,200($sp)
    sdc1	$f4,0($sp)
    jal	floorf
    mov.s	$f12,$f30
    li	$a3,10497
    sub.s	$f4,$f30,$f0
    ldc1	$f0,0($sp)
    li	$a4,0x8062
    li	$a7,-1
    mul.s	$f4,$f4,$f0
    li	$t0,8448
    li	$t1,7681
    li	$t2,1
    mtc1	$zero,$f5
    lwc1	$f6,_lit_3f000000
    lwc1	$f7,_lit_3efff972
    trunc.w.s	$f4,$f4
    ld	$a6,200($sp)
    ld	$a5,208($sp)
    ld	$a2,216($sp)
    mfc1	$s5,$f4
    b	.L0dba1364
    ld	$a0,224($sp)
.L0dba1668:
    sd	$a0,224($sp)
    sd	$a5,208($sp)
    sd	$a6,200($sp)
    # Line 4193
    # lw $t9, -17792($gp) # &floorf
    sdc1	$f4,192($sp)
    mov.s	$f12,$f30
    jal	floorf
    mov.s	$f28,$f4
    sub.s	$f1,$f30,$f0
    li	$a3,10497
    li	$a4,0x8062
    mul.s	$f1,$f1,$f28
    li	$a7,-1
    li	$t0,8448
    li	$t1,7681
    li	$t2,1
    mtc1	$zero,$f5
    lwc1	$f6,_lit_3f000000
    trunc.w.s	$f1,$f1
    lwc1	$f7,_lit_3efff972
    ld	$a6,200($sp)
    ld	$a5,208($sp)
    mfc1	$t3,$f1
    b	.L0dba139c
    ld	$a0,224($sp)
.L0dba16cc:
    # Line 4259
    move	$v0,$zero
    ld	$gp,128($sp)
    ld	$s0,120($sp)
    ld	$s1,88($sp)
    ld	$s2,152($sp)
    ld	$s3,144($sp)
    ld	$s4,80($sp)
    ld	$s5,96($sp)
    ld	$s6,136($sp)
    ld	$s7,104($sp)
    ld	$s8,112($sp)
    ldc1	$f20,48($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,24($sp)
    ldc1	$f26,40($sp)
    ld	$ra,72($sp)
    ldc1	$f28,8($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end __glTextureRGB_N_NMN_StippledSpan

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4030000000000000:
    .word 0x40300000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3efff972:
    .word 0x3efff972
_lit_3f000000:
    .word 0x3f000000

