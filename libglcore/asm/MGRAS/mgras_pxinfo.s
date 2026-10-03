# Source: ../MGRAS/mgras_pxinfo.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_pxinfo.c
# Total Functions: 17

.text

# Function: __glMgrInitPixels
# Declared: Line 33 (Source lines: 34-125)
# Address: 0x0daf297c - 0x0daf2b04 (Size: 392 bytes, Frame: 48)
.globl __glMgrInitPixels
.ent __glMgrInitPixels
__glMgrInitPixels:
    # Line 34
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    lui	$v1,0x11
    addiu	$v1,$v1,-17124
    addu	$gp,$t9,$v1
    addiu	$v0,$gp,-15536
    # Line 48
    # lw $t9, -17896($gp) # &getenv
    la	$at,sub_0dbe0000
    # Line 45
    sw	$v0,31676($a0)
    # Line 48
    jal	getenv
    addiu	$a0,$at,-15272
    beqz	$v0,.L0daf29c8
    addiu	$a0,$gp,-15536
    sd	$s1,24($sp)
    # Line 49
    b	.L0daf29d0
    sw	$a0,31688($s0)
.L0daf29c8:
    sd	$s1,24($sp)
    # Line 51
    sw	$zero,31688($s0)
.L0daf29d0:
    lui	$s1,0x1
    addu	$s1,$s0,$s1
    lbu	$a1,-25436($s1)
    li	$a3,1
    beq	$a1,$a3,.L0daf2ae4
    # Line 54
    nop	# was lw $t9, -17896($gp) # &getenv
.L0daf29e8:
    # Line 57
    sw	$zero,31680($s0)
.L0daf29ec:
    # Line 54
    lbu	$at,-25437($s1)
    # Line 78
    li	$a1,-1
    # Line 54
    li	$v1,2
    beq	$at,$v1,.L0daf2acc
    # Line 75
    addiu	$a2,$s0,32132
.L0daf2a00:
    sw	$a2,32132($s0)
    # Line 76
    sw	$a2,32136($s0)
    # Line 69
    sw	$a0,31684($s0)
    # Line 78
    sw	$a1,32096($s0)
    # Line 88
    la	$at,SYMBOL_LOCATION
    # Line 72
    addiu	$v1,$s0,32104
    sw	$v1,32104($s0)
    # Line 73
    sw	$v1,32108($s0)
    # Line 80
    lui	$v1,0x100c
    ori	$v1,$v1,0x1f0f
    sw	$v1,32100($s0)
    # Line 88
    lw	$at,784($at)
    # Line 89
    li	$a2,1998
    subu	$a2,$a2,$at
    sw	$a2,-32360($s1)
    # Line 88
    sw	$at,-32364($s1)
    # Line 99
    sw	$zero,31812($s0)
    # Line 98
    sw	$zero,31808($s0)
    # Line 99
    lbu	$a1,3105($s0)
    # Line 97
    sw	$zero,31804($s0)
    # Line 96
    sw	$zero,31800($s0)
    # Line 99
    beqz	$a1,.L0daf2ad4
    # Line 93
    sw	$zero,31716($s0)
.L0daf2a5c:
    # Line 109
    move	$a0,$s0
    # lw $t9, -31860($gp) # &__glMgrInitColorMatrix
    # Line 106
    sw	$a3,32088($s0)
    # Line 107
    li	$a1,256
    # Line 109
    jal	__glMgrInitColorMatrix
    # Line 107
    sw	$a1,32092($s0)
    # Line 113
    move	$a0,$s0
    lw	$t9,0($s0)
    lw	$a1,-32296($s1)
    li	$a2,0x8000
    jalr	$t9
    addu	$a1,$a1,$a2
    sw	$v0,31876($s0)
    # Line 117
    lw	$a3,-32296($s1)
    ld	$ra,0($sp)
    addiu	$a0,$a3,-1
    and	$a0,$a0,$v0
    blez	$a0,.L0daf2ab0
    ld	$s1,24($sp)
    # Line 119
    subu	$a0,$a3,$a0
    ld	$s1,24($sp)
.L0daf2ab0:
    ld	$gp,16($sp)
    # Line 124
    sb	$zero,31868($s0)
    # Line 121
    addu	$a1,$a0,$v0
    sw	$a1,31872($s0)
    # Line 125
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf2acc:
    b	.L0daf2a00
    # Line 61
    sw	$zero,31680($s0)
.L0daf2ad4:
    # Line 102
    lui	$a2,0x100e
    ori	$a2,$a2,0x1f0f
    b	.L0daf2a5c
    sw	$a2,32100($s0)
.L0daf2ae4:
    # Line 54
    la	$a0,sub_0dbe0000
    jalr	$t9
    addiu	$a0,$a0,-15256
    addiu	$a0,$gp,-15536
    beqz	$v0,.L0daf29e8
    li	$a3,1
    b	.L0daf29ec
    # Line 55
    sw	$a0,31680($s0)
.end __glMgrInitPixels

# Function: __glMgrFreePixelState
# Declared: Line 128 (Source lines: 129-140)
# Address: 0x0daf2b04 - 0x0daf2b80 (Size: 124 bytes, Frame: 48)
.globl __glMgrFreePixelState
.ent __glMgrFreePixelState
__glMgrFreePixelState:
    # Line 129
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lw	$a1,31876($a0)
    lui	$at,0x11
    addiu	$at,$at,-17516
    beqz	$a1,.L0daf2b70
    addu	$gp,$t9,$at
    lw	$v0,32016($s0)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0daf2b60
    sd	$ra,16($sp)
    lw	$v1,__glCurrentContext
    bne	$v1,$s0,.L0daf2b60
    sd	$ra,16($sp)
    # Line 136
    move	$a0,$s0
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    move	$a1,$zero
    move	$a2,$zero
    jal	__glMgr_UnlockSingleDMAPool
    move	$a3,$zero
    lw	$a1,31876($s0)
.L0daf2b60:
    # Line 138
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0daf2b70:
    ld	$gp,8($sp)
    # Line 140
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrFreePixelState

# Function: __glMgrMakePages
# Declared: Line 143 (Source lines: 144-203)
# Address: 0x0daf2b80 - 0x0daf2d7c (Size: 508 bytes, Frame: 0)
.globl __glMgrMakePages
.ent __glMgrMakePages
__glMgrMakePages:
    # Line 144
    lw	$at,0($a0)
    lui	$v1,0x2
    # Line 150
    lui	$a4,0x1
    # Line 144
    beqz	$at,.L0daf2ba8
    # Line 150
    addu	$a4,$a1,$a4
    # Line 144
    lw	$v0,420($a0)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    beqz	$v0,.L0daf2d74
    nop
.L0daf2ba8:
    # Line 150
    lw	$a2,-31380($a4)
    beqz	$a2,.L0daf2d10
    # Line 192
    li	$v0,1
    # Line 153
    lw	$a6,100($a0)
    sw	$a6,160($a0)
    # Line 154
    lw	$v0,-31380($a4)
    # Line 158
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,84($a0)
    # Line 154
    sw	$v0,164($a0)
    # Line 155
    lw	$a6,-31376($a4)
    # Line 158
    mul.s	$f0,$f0,$f1
    # Line 155
    sw	$a6,168($a0)
    # Line 156
    lw	$a7,-31372($a4)
    # Line 158
    trunc.w.s	$f0,$f0
    # Line 156
    sw	$a7,172($a0)
    # Line 157
    lw	$a5,-31368($a4)
    # Line 158
    mfc1	$a3,$f0
    # Line 157
    sw	$a5,176($a0)
    # Line 158
    sw	$a3,180($a0)
    # Line 162
    lw	$a2,1120($a1)
    divu	$zero,$a2,$v0
    # Line 163
    lw	$v1,1116($a1)
    # Line 162
    mflo	$t1
    nop
    nop
    # Line 163
    divu	$zero,$v1,$a6
    mflo	$at
    nop
    nop
    multu	$at,$a7
    # Line 165
    lw	$t2,32($a0)
    addu	$t2,$t2,$t1
    # Line 163
    mflo	$t0
    # Line 165
    addu	$t2,$t2,$v0
    addiu	$t2,$t2,-1
    divu	$zero,$t2,$v0
    # Line 163
    addu	$t0,$t0,$t1
    sw	$t0,1436($a0)
    # Line 165
    mflo	$a5
    sw	$a5,184($a0)
    # Line 168
    lw	$v1,1116($a1)
    divu	$zero,$v1,$a6
    # Line 165
    teq	$v0,$zero,0x7
    # Line 162
    teq	$v0,$zero,0x7
    # Line 168
    teq	$a6,$zero,0x7
    # Line 167
    lw	$a3,36($a0)
    # Line 163
    teq	$a6,$zero,0x7
    # Line 170
    move	$a1,$a3
    # Line 168
    mfhi	$t1
    subu	$t2,$a6,$t1
    sltu	$at,$t2,$a3
    beqz	$at,.L0daf2c88
    # Line 176
    addu	$v1,$a7,$t0
    # Line 170
    move	$a1,$t2
.L0daf2c88:
    # Line 173
    subu	$a4,$a3,$a1
    # Line 174
    divu	$zero,$a4,$a6
    mfhi	$v0
    nop
    mflo	$t2
    nop
    nop
    # Line 179
    mult	$a7,$t2
    # Line 180
    sw	$zero,1480($a0)
    # Line 177
    sw	$zero,1464($a0)
    # Line 175
    sw	$a6,1460($a0)
    # Line 174
    teq	$a6,$zero,0x7
    # Line 172
    sw	$t1,1448($a0)
    # Line 171
    sw	$a1,1444($a0)
    # Line 176
    sw	$v1,1452($a0)
    # Line 178
    sw	$v0,1476($a0)
    # Line 174
    move	$a4,$t2
    sw	$t2,1544($a0)
    # Line 182
    addiu	$a2,$t2,1
    sw	$a2,1540($a0)
    # Line 179
    mflo	$at
    addu	$at,$at,$v1
    # Line 182
    beqz	$v0,.L0daf2cf0
    # Line 179
    sw	$at,1468($a0)
    # Line 183
    addiu	$at,$t2,2
    sw	$at,1540($a0)
.L0daf2cf0:
    # Line 187
    mult	$a5,$a4
    # Line 186
    sw	$a5,1456($a0)
    # Line 185
    sw	$zero,1440($a0)
    # Line 187
    mflo	$v0
    nop
    sw	$v0,1472($a0)
    # Line 203
    jr	$ra
    nop
.L0daf2d10:
    # Line 190
    lw	$v1,32($a0)
    # Line 194
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,84($a0)
    mul.s	$f2,$f2,$f3
    # Line 195
    sw	$zero,1436($a0)
    # Line 193
    sw	$v0,176($a0)
    # Line 192
    sw	$v0,172($a0)
    # Line 189
    addiu	$a2,$a0,100
    # Line 194
    trunc.w.s	$f2,$f2
    # Line 189
    sw	$a2,160($a0)
    # Line 191
    lw	$a2,36($a0)
    # Line 190
    sw	$v1,164($a0)
    # Line 194
    mfc1	$at,$f2
    # Line 196
    sw	$a2,1444($a0)
    # Line 191
    sw	$a2,168($a0)
    # Line 194
    sw	$at,180($a0)
    # Line 197
    lw	$v1,1116($a1)
    # Line 201
    sw	$zero,1544($a0)
    # Line 200
    sw	$zero,1540($a0)
    # Line 199
    sw	$zero,1476($a0)
    # Line 198
    sw	$zero,1460($a0)
    # Line 203
    jr	$ra
    # Line 197
    sw	$v1,1448($a0)
.L0daf2d74:
    # Line 150
    jr	$ra
    nop
.end __glMgrMakePages

# Function: __glMgrMakeFastPathTiles
# Declared: Line 206 (Source lines: 207-246)
# Address: 0x0daf2d7c - 0x0daf2e84 (Size: 264 bytes, Frame: 0)
.globl __glMgrMakeFastPathTiles
.ent __glMgrMakeFastPathTiles
__glMgrMakeFastPathTiles:
    # Line 232
    li	$v0,6408
    # Line 220
    li	$v1,4
    sw	$v1,1188($a0)
    # Line 221
    sw	$v1,1296($a0)
    # Line 222
    sw	$v1,1404($a0)
    # Line 224
    sw	$v1,1192($a0)
    # Line 225
    sw	$v1,1300($a0)
    # Line 226
    sw	$v1,1408($a0)
    # Line 213
    lw	$v1,1224($a0)
    # Line 232
    sw	$v0,1176($a0)
    # Line 233
    sw	$v0,1284($a0)
    # Line 213
    sw	$v1,1216($a0)
    # Line 217
    lw	$v1,1228($a0)
    # Line 234
    sw	$v0,1392($a0)
    lw	$v0,52($a0)
    # Line 217
    sw	$v1,1220($a0)
    # Line 212
    lw	$a1,1116($a0)
    # Line 234
    li	$v1,6656
    # Line 210
    lw	$a2,96($a0)
    # Line 212
    sw	$a1,1108($a0)
    # Line 216
    lw	$a1,1120($a0)
    # Line 210
    sw	$a2,88($a0)
    # Line 214
    lw	$a2,1332($a0)
    # Line 216
    sw	$a1,1112($a0)
    # Line 218
    lw	$a1,1336($a0)
    # Line 214
    sw	$a2,1324($a0)
    # Line 207
    lui	$a2,0x11
    addiu	$a2,$a2,-18148
    addu	$at,$t9,$a2
    # Line 228
    lwc1	$f1,_lit_40800000
    # Line 218
    sw	$a1,1328($a0)
    # Line 228
    swc1	$f1,1196($a0)
    # Line 229
    swc1	$f1,1304($a0)
    # Line 234
    beq	$v0,$v1,.L0daf2e10
    # Line 230
    swc1	$f1,1412($a0)
    # Line 246
    jr	$ra
    nop
.L0daf2e10:
    # Line 238
    li	$a1,8
    # Line 242
    lw	$v1,1352($a0)
    lw	$v0,1348($a0)
    # Line 240
    lw	$a2,1244($a0)
    # Line 242
    addu	$v0,$v0,$v1
    # Line 240
    lw	$v1,1240($a0)
    addu	$v1,$v1,$a2
    addiu	$v1,$v1,7
    sra	$v1,$v1,0x3
    andi	$v1,$v1,0x7
    subu	$v1,$a1,$v1
    # Line 238
    lw	$a2,1132($a0)
    # Line 242
    addiu	$v0,$v0,7
    sra	$v0,$v0,0x3
    andi	$v0,$v0,0x7
    subu	$v0,$a1,$v0
    andi	$v0,$v0,0x7
    sb	$v0,1389($a0)
    # Line 238
    lw	$v0,1136($a0)
    # Line 240
    andi	$v1,$v1,0x7
    sb	$v1,1281($a0)
    # Line 238
    addu	$a2,$a2,$v0
    addiu	$a2,$a2,7
    sra	$a2,$a2,0x3
    andi	$a2,$a2,0x7
    subu	$a1,$a1,$a2
    andi	$a1,$a1,0x7
    # Line 246
    jr	$ra
    # Line 238
    sb	$a1,1173($a0)
.end __glMgrMakeFastPathTiles

# Function: __glMgrMake1GETiles
# Declared: Line 249 (Source lines: 250-466)
# Address: 0x0daf2e84 - 0x0daf33ec (Size: 1384 bytes, Frame: 192)
.globl __glMgrMake1GETiles
.ent __glMgrMake1GETiles
__glMgrMake1GETiles:
    # Line 285
    lwc1	$f4,76($a0)
    # Line 250
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    lui	$at,0x11
    addiu	$at,$at,-18412
    addu	$gp,$t9,$at
    # Line 285
    ldc1	$f0,_lit8_4010000000000000
    cvt.d.s	$f1,$f4
    div.d	$f0,$f0,$f1
    sd	$s1,24($sp)
    # Line 250
    move	$s1,$a0
    sd	$s5,0($sp)
    # Line 285
    lw	$a7,424($a0)
    # Line 258
    li	$s5,15
    # Line 285
    lui	$a3,0x100
    and	$at,$a3,$a7
    sd	$s7,8($sp)
    trunc.w.s	$f2,$f4
    ldc1	$f1,_lit8_3eb0c6f7a0b5ed8d
    lw	$a4,56($a0)
    la	$s7,sub_0dbf0000
    add.d	$f0,$f0,$f1
    sll	$t9,$a4,0x2
    addu	$t9,$t9,$a4
    mfc1	$a6,$f2
    trunc.w.d	$f0,$f0
    addiu	$s7,$s7,12096
    addu	$a6,$a6,$t9
    sll	$a6,$a6,0x2
    mfc1	$a2,$f0
    beqz	$at,.L0daf3378
    addu	$a6,$a6,$s7
    # Line 288
    lui	$v0,0x4000
    and	$v0,$a7,$v0
    beqz	$v0,.L0daf2f1c
    lw	$a5,60($a6)
    # Line 293
    li	$s5,31
    # Line 292
    addu	$a5,$a5,$a5
.L0daf2f1c:
    # Line 296
    li	$s7,1
.L0daf2f20:
    # Line 310
    lw	$a1,1516($s1)
    divu	$zero,$a1,$a5
    mflo	$v1
    nop
    nop
    multu	$v1,$a5
    teq	$a5,$zero,0x7
    mflo	$t2
    beqz	$t2,.L0daf33ac
    sw	$t2,1516($s1)
.L0daf2f48:
    # Line 317
    multu	$t2,$a2
    mflo	$a0
    nop
    nop
    # Line 318
    divu	$zero,$a0,$a4
    # Line 320
    lw	$a6,1528($s1)
    lw	$a7,88($s1)
    # Line 318
    mfhi	$a1
    # Line 320
    subu	$v0,$a7,$a6
    # Line 318
    subu	$a0,$a0,$a1
    # Line 320
    divu	$zero,$v0,$a0
    mflo	$a5
    nop
    # Line 329
    addu	$v1,$a6,$a0
    # Line 332
    divu	$zero,$v1,$a4
    # Line 340
    sw	$zero,1260($s1)
    # Line 337
    sw	$zero,1236($s1)
    # Line 335
    mtc1	$v1,$f2
    # Line 333
    sw	$zero,1244($s1)
    # Line 332
    teq	$a4,$zero,0x7
    # Line 335
    cvt.s.w	$f2,$f2
    # Line 330
    sw	$zero,1220($s1)
    # Line 327
    sw	$zero,1228($s1)
    # Line 318
    teq	$a4,$zero,0x7
    # Line 349
    lwc1	$f5,80($s1)
    # Line 324
    lw	$t0,36($s1)
    # Line 335
    mul.s	$f2,$f2,$f4
    # Line 353
    lw	$a2,24($s1)
    # Line 326
    lw	$at,1524($s1)
    # Line 324
    sw	$t0,1264($s1)
    # Line 339
    lw	$t1,1520($s1)
    # Line 326
    addu	$at,$at,$t2
    # Line 335
    ldc1	$f6,_lit8_3fec000000000000
    cvt.d.s	$f2,$f2
    # Line 348
    li	$t2,8
    # Line 335
    add.d	$f2,$f2,$f6
    # Line 339
    sll	$t1,$t1,0x2
    sw	$t1,1256($s1)
    # Line 340
    sll	$t8,$at,0x2
    # Line 335
    trunc.w.d	$f2,$f2
    # Line 326
    sw	$at,1224($s1)
    # Line 340
    andi	$at,$at,0x1
    # Line 345
    addiu	$a1,$t8,4
    # Line 335
    mfc1	$v0,$f2
    # Line 320
    teq	$a0,$zero,0x7
    # Line 329
    sw	$v1,1216($s1)
    # Line 335
    sw	$v0,1232($s1)
    # Line 320
    sw	$a5,1488($s1)
    # Line 332
    mflo	$t3
    # Line 340
    beqz	$at,.L0daf3384
    # Line 332
    sw	$t3,1240($s1)
    # Line 343
    sw	$t8,1248($s1)
.L0daf3018:
    # Line 349
    multu	$s7,$a0
    mfhi	$zero
    # Line 348
    dsll32	$a1,$a0,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 349
    mflo	$v1
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 348
    mul.s	$f0,$f0,$f4
    # Line 349
    mul.s	$f3,$f3,$f5
    # Line 348
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    # Line 349
    trunc.w.s	$f3,$f3
    # Line 346
    sw	$zero,1252($s1)
    # Line 348
    andi	$v0,$v0,0x7
    subu	$v0,$t2,$v0
    # Line 349
    mfc1	$at,$f3
    # Line 348
    andi	$v0,$v0,0x7
    sb	$v0,1280($s1)
    # Line 349
    andi	$at,$at,0x7
    subu	$at,$t2,$at
    andi	$at,$at,0x7
    # Line 353
    beqz	$a2,.L0daf3328
    # Line 349
    sb	$at,1281($s1)
    # Line 353
    lw	$at,424($s1)
    and	$at,$at,$a3
    beqzl	$at,.L0daf332c
    # Line 379
    sw	$zero,1420($s1)
    # Line 353
    beqzl	$a5,.L0daf332c
    # Line 379
    sw	$zero,1420($s1)
    bltz	$a2,.L0daf3398
    # Line 385
    move	$a5,$a2
    # Line 387
    and	$a5,$a2,$s5
    ld	$s5,0($sp)
.L0daf30b4:
    # Line 389
    lw	$v0,1536($s1)
    subu	$v1,$t3,$v0
    subu	$v1,$v1,$a5
    # Line 390
    multu	$a4,$v1
    mflo	$a2
    nop
    # Line 395
    addu	$v0,$v0,$v1
    # Line 398
    multu	$v0,$a4
    mflo	$at
    # Line 401
    mtc1	$at,$f1
    # Line 391
    dsll32	$v1,$v1,0x0
    # Line 401
    cvt.s.w	$f1,$f1
    # Line 391
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 401
    mul.s	$f1,$f1,$f4
    # Line 391
    lwc1	$f2,84($s1)
    # Line 409
    sw	$zero,1152($s1)
    # Line 408
    sw	$t1,1148($s1)
    # Line 391
    mul.s	$f2,$f2,$f3
    # Line 406
    sw	$zero,1120($s1)
    # Line 403
    sw	$zero,1128($s1)
    # Line 401
    cvt.d.s	$f1,$f1
    # Line 399
    sw	$zero,1112($s1)
    # Line 401
    add.d	$f1,$f1,$f6
    # Line 396
    sw	$zero,1136($s1)
    # Line 393
    sw	$t0,1156($s1)
    # Line 391
    trunc.l.s	$f2,$f2
    # Line 395
    sw	$v0,1132($s1)
    # Line 425
    subu	$a1,$a7,$a2
    # Line 401
    trunc.w.d	$f1,$f1
    # Line 425
    subu	$a1,$a1,$a6
    # Line 391
    dmfc1	$t8,$f2
    # Line 398
    sw	$at,1108($s1)
    # Line 401
    mfc1	$v0,$f1
    # Line 391
    sll	$t8,$t8,0x0
    # Line 421
    andi	$at,$t8,0x3
    # Line 401
    sw	$v0,1124($s1)
    # Line 405
    addiu	$v0,$v0,3
    sra	$v0,$v0,0x2
    # Line 409
    sll	$a3,$v0,0x2
    andi	$v1,$v0,0x1
    beqz	$v1,.L0daf33a0
    # Line 405
    sw	$v0,1116($s1)
    # Line 412
    sw	$a3,1140($s1)
.L0daf316c:
    # Line 418
    multu	$s7,$a2
    mflo	$v0
    nop
    nop
    # Line 425
    divu	$zero,$a1,$a0
    nop
    # Line 417
    dsll32	$v1,$a2,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 418
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    nop
    cvt.s.l	$f2,$f2
    # Line 417
    mul.s	$f3,$f3,$f4
    # Line 418
    mul.s	$f2,$f2,$f5
    # Line 417
    trunc.w.s	$f3,$f3
    # Line 425
    teq	$a0,$zero,0x7
    # Line 415
    sw	$zero,1144($s1)
    # Line 417
    mfc1	$a5,$f3
    # Line 418
    trunc.w.s	$f2,$f2
    # Line 422
    sw	$at,1420($s1)
    # Line 421
    sw	$at,1312($s1)
    # Line 417
    subu	$a5,$t2,$a5
    # Line 418
    mfc1	$a1,$f2
    # Line 417
    andi	$a5,$a5,0x7
    sb	$a5,1172($s1)
    # Line 418
    subu	$a1,$t2,$a1
    andi	$a1,$a1,0x7
    sb	$a1,1173($s1)
    # Line 425
    mflo	$a5
    nop
    sw	$a5,1488($s1)
.L0daf31f8:
    # Line 431
    multu	$a5,$a0
    mflo	$a3
    subu	$a3,$a7,$a3
    subu	$a3,$a3,$a2
    # Line 444
    divu	$zero,$a3,$a4
    # Line 447
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 434
    dsll32	$a1,$a3,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 447
    mul.s	$f1,$f1,$f4
    # Line 434
    mul.s	$f0,$f0,$f4
    # Line 447
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f6
    # Line 452
    sw	$zero,1368($s1)
    # Line 451
    sw	$t1,1364($s1)
    # Line 434
    cvt.d.s	$f0,$f0
    # Line 449
    sw	$zero,1344($s1)
    # Line 434
    add.d	$f0,$f0,$f6
    # Line 445
    sw	$zero,1352($s1)
    # Line 444
    teq	$a4,$zero,0x7
    # Line 447
    trunc.w.d	$f1,$f1
    # Line 442
    sw	$zero,1328($s1)
    # Line 439
    sw	$zero,1336($s1)
    # Line 434
    trunc.w.d	$f0,$f0
    # Line 436
    sw	$t0,1372($s1)
    # Line 447
    mfc1	$v1,$f1
    # Line 441
    sw	$a3,1324($s1)
    # Line 434
    mfc1	$v0,$f0
    # Line 447
    sw	$v1,1340($s1)
    # Line 460
    subu	$v1,$a3,$a6
    # Line 434
    addiu	$v0,$v0,3
    sra	$v0,$v0,0x2
    # Line 452
    sll	$t3,$v0,0x2
    # Line 438
    sw	$v0,1332($s1)
    # Line 452
    andi	$v0,$v0,0x1
    # Line 444
    mflo	$at
    # Line 452
    beqz	$v0,.L0daf338c
    # Line 444
    sw	$at,1348($s1)
    # Line 455
    sw	$t3,1356($s1)
.L0daf32a4:
    # Line 463
    multu	$s7,$v1
    mfhi	$zero
    # Line 460
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 463
    mflo	$v0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    nop
    cvt.s.l	$f2,$f2
    # Line 460
    mul.s	$f3,$f3,$f4
    # Line 463
    mul.s	$f2,$f2,$f5
    # Line 460
    trunc.w.s	$f3,$f3
    ld	$gp,16($sp)
    mfc1	$at,$f3
    # Line 463
    trunc.w.s	$f2,$f2
    # Line 458
    sw	$zero,1360($s1)
    # Line 460
    andi	$at,$at,0x7
    subu	$at,$t2,$at
    # Line 463
    mfc1	$s7,$f2
    # Line 460
    andi	$at,$at,0x7
    sb	$at,1388($s1)
    # Line 463
    andi	$s7,$s7,0x7
    subu	$s7,$t2,$s7
    andi	$s7,$s7,0x7
    sb	$s7,1389($s1)
    # Line 466
    ld	$s1,24($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf3328:
    # Line 379
    sw	$zero,1420($s1)
.L0daf332c:
    # Line 378
    sw	$zero,1312($s1)
    # Line 376
    move	$a2,$zero
    # Line 374
    sb	$zero,1172($s1)
    # Line 373
    sb	$zero,1173($s1)
    # Line 372
    sw	$zero,1144($s1)
    # Line 371
    sw	$zero,1140($s1)
    # Line 370
    sw	$zero,1152($s1)
    # Line 369
    sw	$zero,1148($s1)
    # Line 368
    sw	$zero,1120($s1)
    # Line 367
    sw	$zero,1116($s1)
    # Line 366
    sw	$zero,1128($s1)
    # Line 365
    sw	$zero,1124($s1)
    # Line 364
    sw	$zero,1112($s1)
    # Line 363
    sw	$zero,1108($s1)
    # Line 362
    sw	$zero,1136($s1)
    # Line 361
    sw	$zero,1132($s1)
    # Line 360
    sw	$zero,1156($s1)
    # Line 379
    b	.L0daf31f8
    ld	$s5,0($sp)
.L0daf3378:
    # Line 299
    lw	$s7,412($s1)
    b	.L0daf2f20
    # Line 298
    lw	$a5,-20($a6)
.L0daf3384:
    b	.L0daf3018
    # Line 345
    sw	$a1,1248($s1)
.L0daf338c:
    # Line 457
    addiu	$at,$t3,4
    b	.L0daf32a4
    sw	$at,1356($s1)
.L0daf3398:
    # Line 385
    b	.L0daf30b4
    ld	$s5,0($sp)
.L0daf33a0:
    # Line 414
    addiu	$v0,$a3,4
    b	.L0daf316c
    sw	$v0,1140($s1)
.L0daf33ac:
    sd	$a2,40($sp)
    # Line 314
    li	$a0,1285
    # Line 312
    sw	$a5,1516($s1)
    # Line 313
    lw	$v1,248($s1)
    # Line 314
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    # Line 313
    ori	$v1,$v1,0x20
    # Line 314
    jal	__glSetError
    # Line 313
    sw	$v1,248($s1)
    lui	$a3,0x100
    # Line 314
    lw	$t2,1516($s1)
    lw	$a4,56($s1)
    lwc1	$f4,76($s1)
    ld	$ra,32($sp)
    b	.L0daf2f48
    ld	$a2,40($sp)
.end __glMgrMake1GETiles

# Function: __glMgrMake2GETiles
# Declared: Line 469 (Source lines: 470-804)
# Address: 0x0daf33ec - 0x0daf3cfc (Size: 2320 bytes, Frame: 144)
.globl __glMgrMake2GETiles
.ent __glMgrMake2GETiles
__glMgrMake2GETiles:
    # Line 526
    lwc1	$f0,80($a0)
    lwc1	$f4,76($a0)
    div.s	$f0,$f4,$f0
    # Line 470
    addiu	$sp,$sp,-144
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$s1,40($sp)
    # Line 526
    trunc.l.s	$f0,$f0
    # Line 479
    li	$s1,15
    sd	$gp,64($sp)
    sd	$s2,48($sp)
    # Line 526
    dmfc1	$s2,$f0
    # Line 470
    lui	$at,0x11
    addiu	$at,$at,-19796
    # Line 526
    sll	$s2,$s2,0x0
    beqz	$s2,.L0daf3b98
    # Line 470
    addu	$gp,$t9,$at
.L0daf3430:
    # Line 528
    lw	$a0,44($s0)
    lw	$v0,40($s0)
    bne	$v0,$a0,.L0daf3448
    lw	$v0,256($s0)
    beqz	$v0,.L0daf3c34
    sd	$s4,88($sp)
.L0daf3448:
    sd	$s4,88($sp)
    # Line 531
    beqz	$v0,.L0daf346c
    lui	$s4,0x100
    lw	$a7,424($s0)
    and	$a6,$s4,$a7
    bnez	$a6,.L0daf3470
    # Line 537
    nop	# was lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 535
    b	.L0daf348c
    li	$v0,4
.L0daf346c:
    # Line 537
    # lw $t9, -28592($gp) # &__glElementsPerGroup
.L0daf3470:
    sd	$ra,104($sp)
    jal	__glElementsPerGroup
    nop
    lw	$a7,424($s0)
    lwc1	$f4,76($s0)
    ld	$ra,104($sp)
    and	$a6,$s4,$a7
.L0daf348c:
    la	$a5,sub_0dbf0000
    # Line 538
    lw	$a0,56($s0)
    sd	$s7,80($sp)
    # Line 537
    addiu	$a5,$a5,12096
    # Line 538
    sll	$a4,$a0,0x2
    addu	$a4,$a4,$v0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a5
    lw	$a4,300($a4)
.L0daf34b0:
    # Line 541
    ldc1	$f1,_lit8_4010000000000000
    cvt.d.s	$f2,$f4
    div.d	$f1,$f1,$f2
    ldc1	$f3,_lit8_3eb0c6f7a0b5ed8d
    trunc.w.s	$f2,$f4
    sd	$s5,96($sp)
    add.d	$f1,$f1,$f3
    lw	$a3,1516($s0)
    sll	$v1,$a0,0x2
    mfc1	$v0,$f2
    trunc.w.d	$f1,$f1
    addu	$v1,$v1,$a0
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    mfc1	$s7,$f1
    beqz	$a6,.L0daf3ba0
    addu	$v0,$v0,$a5
    # Line 554
    lui	$a1,0x4000
    and	$a1,$a7,$a1
    beqz	$a1,.L0daf350c
    lw	$s5,220($v0)
    # Line 559
    li	$s1,31
    # Line 558
    addu	$s5,$s5,$s5
.L0daf350c:
    # Line 562
    divu	$zero,$a3,$s5
    mflo	$a2
    nop
    nop
    multu	$a2,$s5
    teq	$s5,$zero,0x7
    mflo	$a3
    beqz	$a3,.L0daf3c64
    sw	$a3,1516($s0)
.L0daf3530:
    # Line 569
    lw	$s5,140($v0)
    multu	$s5,$s2
    mflo	$a6
    nop
    nop
    multu	$a6,$a4
    ld	$s2,48($sp)
    # Line 572
    li	$a6,1
    # Line 569
    mflo	$s5
    nop
    nop
.L0daf355c:
    # Line 587
    multu	$a3,$s7
    mflo	$t3
    nop
    nop
    # Line 588
    divu	$zero,$t3,$a0
    # Line 590
    lw	$v0,1528($s0)
    lw	$t2,88($s0)
    subu	$at,$t2,$v0
    # Line 588
    mfhi	$t9
    subu	$t3,$t3,$t9
    # Line 590
    addu	$t0,$t3,$t3
    divu	$zero,$at,$t0
    mflo	$a4
    nop
    # Line 600
    addu	$v1,$v0,$t3
    # Line 603
    divu	$zero,$v1,$a0
    teq	$a0,$zero,0x7
    # Line 606
    mtc1	$v1,$f0
    # Line 588
    teq	$a0,$zero,0x7
    # Line 606
    cvt.s.w	$f0,$f0
    # Line 608
    subu	$t9,$v1,$v0
    mtc1	$t9,$f3
    # Line 595
    lw	$a7,36($s0)
    # Line 611
    lw	$t1,1520($s0)
    # Line 608
    cvt.s.w	$f3,$f3
    # Line 595
    sw	$a7,1264($s0)
    # Line 606
    mul.s	$f0,$f0,$f4
    # Line 611
    sll	$t1,$t1,0x2
    # Line 612
    sw	$t1,1260($s0)
    # Line 611
    sw	$t1,1256($s0)
    # Line 608
    mul.s	$f3,$f3,$f4
    # Line 597
    lw	$a5,1524($s0)
    # Line 606
    ldc1	$f5,_lit8_3fec000000000000
    cvt.d.s	$f0,$f0
    # Line 597
    addu	$a1,$a3,$a5
    # Line 606
    add.d	$f0,$f0,$f5
    sd	$a1,32($sp)
    # Line 597
    sw	$a1,1224($s0)
    # Line 608
    cvt.d.s	$f3,$f3
    sd	$a1,24($sp)
    add.d	$f3,$f3,$f5
    # Line 598
    sw	$a1,1228($s0)
    # Line 590
    teq	$t0,$zero,0x7
    # Line 606
    trunc.w.d	$f0,$f0
    # Line 601
    sw	$v1,1220($s0)
    # Line 600
    sw	$v1,1216($s0)
    # Line 608
    trunc.w.d	$f3,$f3
    # Line 612
    andi	$at,$a1,0x1
    sll	$t9,$a1,0x2
    # Line 606
    mfc1	$a2,$f0
    # Line 608
    mfc1	$a1,$f3
    # Line 615
    move	$t8,$t9
    # Line 606
    sw	$a2,1232($s0)
    # Line 608
    sw	$a1,1236($s0)
    # Line 590
    sw	$a4,1488($s0)
    # Line 603
    mflo	$v1
    sd	$v1,16($sp)
    # Line 604
    sw	$v1,1244($s0)
    # Line 612
    beqz	$at,.L0daf3b8c
    # Line 603
    sw	$v1,1240($s0)
    # Line 615
    sw	$t9,1248($s0)
.L0daf3650:
    # Line 620
    addu	$v1,$v0,$t0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    # Line 621
    sb	$zero,1281($s0)
    # Line 618
    sw	$t8,1252($s0)
    # Line 620
    mfc1	$at,$f1
    # Line 625
    lw	$a3,24($s0)
    # Line 620
    li	$t9,8
    andi	$at,$at,0x7
    subu	$at,$t9,$at
    andi	$at,$at,0x7
    # Line 625
    beqz	$a3,.L0daf3ab8
    # Line 620
    sb	$at,1280($s0)
    # Line 625
    lw	$a1,424($s0)
    and	$a1,$a1,$s4
    beqz	$a1,.L0daf3ab8
    ld	$s4,88($sp)
    beqzl	$a4,.L0daf3abc
    # Line 652
    lwc1	$f6,80($s0)
    bltz	$a3,.L0daf3c28
    # Line 660
    and	$a4,$a3,$s1
    ld	$s1,40($sp)
.L0daf36bc:
    # Line 669
    addu	$a2,$s5,$s5
    sd	$t0,120($sp)
    # Line 662
    lw	$t0,1536($s0)
    sd	$a6,112($sp)
    ld	$a6,16($sp)
    subu	$a6,$a6,$t0
    addu	$a6,$a6,$a6
    subu	$a6,$a6,$a4
    # Line 664
    dsll32	$t0,$a6,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f3
    nop
    cvt.s.l	$f3,$f3
    lwc1	$f2,84($s0)
    # Line 663
    multu	$a0,$a6
    # Line 664
    mul.s	$f2,$f2,$f3
    trunc.l.s	$f2,$f2
    dmfc1	$a3,$f2
    # Line 663
    mflo	$t8
    # Line 664
    sll	$a3,$a3,0x0
    # Line 669
    addiu	$at,$a3,3
    srl	$at,$at,0x2
    divu	$zero,$at,$a2
    mflo	$a1
    nop
    nop
    multu	$a1,$s5
    mflo	$v1
    addu	$v1,$v1,$a5
    # Line 672
    subu	$a1,$v1,$a5
    multu	$a1,$s7
    mflo	$t0
    nop
    addu	$t0,$t0,$v0
    # Line 676
    divu	$zero,$t0,$a0
    # Line 674
    addu	$a1,$v0,$v0
    subu	$a6,$t8,$t0
    addu	$a6,$a6,$a1
    # Line 676
    mflo	$a1
    nop
    nop
    # Line 677
    divu	$zero,$a6,$a0
    # Line 669
    teq	$a2,$zero,0x7
    # Line 681
    subu	$a2,$a6,$v0
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 679
    mtc1	$t0,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 667
    sw	$a7,1156($s0)
    # Line 681
    mul.s	$f1,$f1,$f4
    # Line 676
    teq	$a0,$zero,0x7
    # Line 684
    sw	$t1,1148($s0)
    # Line 677
    teq	$a0,$zero,0x7
    # Line 679
    mul.s	$f0,$f0,$f4
    # Line 685
    sw	$t1,1152($s0)
    # Line 669
    sw	$v1,1116($s0)
    # Line 681
    cvt.d.s	$f1,$f1
    # Line 670
    subu	$at,$at,$v1
    # Line 681
    add.d	$f1,$f1,$f5
    # Line 672
    sw	$t0,1108($s0)
    ld	$t0,120($sp)
    # Line 679
    cvt.d.s	$f0,$f0
    # Line 674
    sw	$a6,1112($s0)
    # Line 679
    add.d	$f0,$f0,$f5
    # Line 685
    sll	$a2,$v1,0x2
    sd	$a2,0($sp)
    # Line 681
    trunc.w.d	$f1,$f1
    # Line 670
    addu	$a2,$a5,$a5
    addu	$at,$at,$a2
    # Line 679
    trunc.w.d	$f0,$f0
    # Line 681
    mfc1	$a2,$f1
    # Line 685
    andi	$v1,$v1,0x1
    sd	$at,8($sp)
    # Line 681
    sw	$a2,1128($s0)
    # Line 679
    mfc1	$a2,$f0
    # Line 670
    sw	$at,1120($s0)
    ld	$a4,8($sp)
    # Line 679
    sw	$a2,1124($s0)
    ld	$a6,112($sp)
    # Line 676
    sw	$a1,1132($s0)
    # Line 677
    mflo	$a1
    # Line 685
    beqz	$v1,.L0daf3c0c
    # Line 677
    sw	$a1,1136($s0)
    ld	$at,0($sp)
    # Line 688
    sw	$at,1140($s0)
.L0daf3818:
    # Line 690
    andi	$v1,$a4,0x1
    beqz	$v1,.L0daf3c1c
    sll	$a4,$a4,0x2
    # Line 692
    sw	$a4,1144($s0)
.L0daf3828:
    # Line 704
    subu	$at,$t2,$t8
    # Line 697
    multu	$a6,$t8
    mflo	$a2
    nop
    # Line 704
    subu	$at,$at,$v0
    divu	$zero,$at,$t0
    nop
    # Line 696
    dsll32	$a4,$t8,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f1
    nop
    cvt.s.l	$f1,$f1
    # Line 697
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f0
    nop
    cvt.s.l	$f0,$f0
    lwc1	$f6,80($s0)
    # Line 696
    mul.s	$f1,$f1,$f4
    # Line 697
    mul.s	$f0,$f0,$f6
    # Line 696
    trunc.w.s	$f1,$f1
    # Line 704
    teq	$t0,$zero,0x7
    # Line 700
    andi	$a1,$a3,0x3
    # Line 696
    mfc1	$v1,$f1
    # Line 697
    trunc.w.s	$f0,$f0
    # Line 701
    sw	$a1,1420($s0)
    # Line 700
    sw	$a1,1312($s0)
    # Line 696
    subu	$v1,$t9,$v1
    # Line 697
    mfc1	$at,$f0
    # Line 696
    andi	$v1,$v1,0x7
    sb	$v1,1172($s0)
    # Line 697
    subu	$at,$t9,$at
    andi	$at,$at,0x7
    sb	$at,1173($s0)
    # Line 704
    mflo	$a4
    nop
    sw	$a4,1488($s0)
.L0daf38bc:
    # Line 710
    multu	$a4,$t3
    mflo	$t0
    addu	$t0,$t0,$t0
    subu	$t0,$t2,$t0
    subu	$t0,$t0,$t8
    # Line 713
    dsll32	$at,$t0,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f4
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f5
    trunc.w.d	$f2,$f2
    mfc1	$a3,$f2
    nop
    addiu	$a3,$a3,3
    sra	$a3,$a3,0x2
    sltiu	$v1,$a3,32
    beqz	$v1,.L0daf3918
    ld	$at,32($sp)
    # Line 720
    sltu	$at,$at,$a3
    beqz	$at,.L0daf3b10
.L0daf3918:
    addu	$v1,$s5,$s5
    divu	$zero,$a3,$v1
    mflo	$t3
    beqz	$t3,.L0daf3b10
    teq	$v1,$zero,0x7
    # Line 759
    ld	$a1,24($sp)
    # Line 758
    multu	$t3,$s5
    # Line 754
    sw	$zero,324($s0)
    ld	$s5,96($sp)
    # Line 758
    mflo	$a4
    addu	$a4,$a4,$a5
    sw	$a4,1332($s0)
    # Line 759
    subu	$t2,$a3,$a4
    addu	$t2,$t2,$a5
    slt	$a1,$a1,$t2
    beqz	$a1,.L0daf3974
    sw	$t2,1336($s0)
    ld	$a4,32($sp)
    ld	$s5,96($sp)
    # Line 766
    sw	$a4,1332($s0)
    # Line 767
    subu	$t2,$a3,$a4
    addu	$t2,$t2,$a5
    sw	$t2,1336($s0)
.L0daf3974:
    # Line 770
    subu	$a2,$a4,$a5
    multu	$a2,$s7
    mflo	$a1
    nop
    addu	$a1,$a1,$v0
    # Line 775
    divu	$zero,$a1,$a0
    mflo	$v1
    # Line 772
    subu	$t3,$a1,$v0
    subu	$t3,$t0,$t3
    # Line 776
    divu	$zero,$t3,$a0
    # Line 778
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 780
    subu	$a2,$t3,$v0
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 778
    mul.s	$f0,$f0,$f4
    # Line 780
    mul.s	$f3,$f3,$f4
    # Line 778
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f5
    # Line 780
    cvt.d.s	$f3,$f3
    # Line 784
    sll	$a3,$a4,0x2
    # Line 780
    add.d	$f3,$f3,$f5
    # Line 784
    sw	$t1,1368($s0)
    # Line 776
    teq	$a0,$zero,0x7
    # Line 778
    trunc.w.d	$f0,$f0
    # Line 783
    sw	$t1,1364($s0)
    # Line 775
    teq	$a0,$zero,0x7
    # Line 780
    trunc.w.d	$f3,$f3
    # Line 784
    andi	$at,$a4,0x1
    # Line 770
    sw	$a1,1324($s0)
    # Line 778
    mfc1	$a2,$f0
    # Line 780
    mfc1	$a1,$f3
    # Line 772
    sw	$t3,1328($s0)
    # Line 778
    sw	$a2,1340($s0)
    # Line 780
    sw	$a1,1344($s0)
    # Line 789
    sll	$a0,$t2,0x2
    # Line 775
    sw	$v1,1348($s0)
    # Line 776
    mflo	$t3
    # Line 784
    beqz	$at,.L0daf3bf4
    # Line 776
    sw	$t3,1352($s0)
    # Line 787
    sw	$a3,1356($s0)
    ld	$s7,80($sp)
.L0daf3a24:
    # Line 789
    andi	$at,$t2,0x1
    beqz	$at,.L0daf3c04
    # Line 793
    addiu	$at,$a0,4
    # Line 791
    sw	$a0,1360($s0)
.L0daf3a34:
    ld	$gp,64($sp)
    # Line 798
    subu	$a2,$t0,$v0
    # Line 801
    multu	$a6,$a2
    mfhi	$zero
    # Line 798
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f2
    nop
    cvt.s.l	$f2,$f2
    # Line 801
    mflo	$a1
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f1
    nop
    cvt.s.l	$f1,$f1
    # Line 798
    mul.s	$f2,$f2,$f4
    # Line 801
    mul.s	$f1,$f1,$f6
    # Line 798
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    # Line 801
    trunc.w.s	$f1,$f1
    # Line 796
    sw	$a7,1372($s0)
    # Line 798
    andi	$v1,$v1,0x7
    subu	$v1,$t9,$v1
    # Line 801
    mfc1	$v0,$f1
    # Line 798
    andi	$v1,$v1,0x7
    sb	$v1,1388($s0)
    # Line 801
    andi	$v0,$v0,0x7
    subu	$v0,$t9,$v0
    andi	$v0,$v0,0x7
    sb	$v0,1389($s0)
    # Line 804
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0daf3ab8:
    # Line 652
    lwc1	$f6,80($s0)
.L0daf3abc:
    sw	$zero,1420($s0)
    # Line 651
    sw	$zero,1312($s0)
    # Line 648
    move	$t8,$zero
    # Line 646
    sb	$zero,1173($s0)
    # Line 645
    sb	$zero,1172($s0)
    # Line 644
    sw	$zero,1144($s0)
    # Line 643
    sw	$zero,1140($s0)
    # Line 642
    sw	$zero,1152($s0)
    # Line 641
    sw	$zero,1148($s0)
    # Line 640
    sw	$zero,1120($s0)
    # Line 639
    sw	$zero,1116($s0)
    # Line 638
    sw	$zero,1128($s0)
    # Line 637
    sw	$zero,1124($s0)
    # Line 636
    sw	$zero,1112($s0)
    # Line 635
    sw	$zero,1108($s0)
    # Line 634
    sw	$zero,1136($s0)
    # Line 633
    sw	$zero,1132($s0)
    # Line 632
    sw	$zero,1156($s0)
    ld	$s1,40($sp)
    # Line 652
    b	.L0daf38bc
    ld	$s4,88($sp)
.L0daf3b10:
    # Line 736
    divu	$zero,$t0,$a0
    # Line 739
    mtc1	$t0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    # Line 744
    sll	$a4,$a3,0x2
    sw	$zero,1368($s0)
    # Line 743
    sw	$t1,1364($s0)
    # Line 741
    sw	$zero,1344($s0)
    # Line 737
    sw	$zero,1352($s0)
    # Line 736
    teq	$a0,$zero,0x7
    # Line 739
    cvt.d.s	$f3,$f3
    # Line 734
    sw	$zero,1328($s0)
    # Line 739
    add.d	$f3,$f3,$f5
    # Line 733
    sw	$t0,1324($s0)
    # Line 731
    sw	$zero,1336($s0)
    # Line 730
    sw	$a3,1332($s0)
    # Line 739
    trunc.w.d	$f3,$f3
    ld	$s7,80($sp)
    ld	$s5,96($sp)
    # Line 744
    andi	$at,$a3,0x1
    # Line 739
    mfc1	$a1,$f3
    # Line 725
    li	$a2,1
    sw	$a2,324($s0)
    # Line 739
    sw	$a1,1340($s0)
    # Line 736
    mflo	$v1
    # Line 744
    beqz	$at,.L0daf3c58
    # Line 736
    sw	$v1,1348($s0)
    # Line 747
    sw	$a4,1356($s0)
.L0daf3b84:
    # Line 750
    b	.L0daf3a34
    sw	$zero,1360($s0)
.L0daf3b8c:
    # Line 617
    addiu	$t8,$t9,4
    b	.L0daf3650
    sw	$t8,1248($s0)
.L0daf3b98:
    b	.L0daf3430
    # Line 528
    li	$s2,1
.L0daf3ba0:
    # Line 576
    lw	$s5,140($v0)
    multu	$s5,$s2
    mflo	$s2
    nop
    nop
    multu	$s2,$a4
    mflo	$s5
    nop
    nop
    # Line 578
    divu	$zero,$a3,$s5
    mflo	$a3
    nop
    nop
    multu	$a3,$s5
    ld	$s2,48($sp)
    teq	$s5,$zero,0x7
    mflo	$a3
    beqz	$a3,.L0daf3cc4
    sw	$a3,1516($s0)
.L0daf3bec:
    b	.L0daf355c
    # Line 584
    lw	$a6,412($s0)
.L0daf3bf4:
    # Line 789
    addiu	$s7,$a3,4
    sw	$s7,1356($s0)
    b	.L0daf3a24
    ld	$s7,80($sp)
.L0daf3c04:
    b	.L0daf3a34
    # Line 793
    sw	$at,1360($s0)
.L0daf3c0c:
    ld	$v1,0($sp)
    # Line 690
    addiu	$v1,$v1,4
    b	.L0daf3818
    sw	$v1,1140($s0)
.L0daf3c1c:
    # Line 694
    addiu	$a1,$a4,4
    b	.L0daf3828
    sw	$a1,1144($s0)
.L0daf3c28:
    # Line 658
    move	$a4,$a3
    b	.L0daf36bc
    ld	$s1,40($sp)
.L0daf3c34:
    sd	$s7,80($sp)
    # Line 531
    lw	$a0,56($s0)
    li	$a4,1
    la	$a5,sub_0dbf0000
    lui	$s4,0x100
    lw	$a7,424($s0)
    addiu	$a5,$a5,12096
    b	.L0daf34b0
    and	$a6,$s4,$a7
.L0daf3c58:
    # Line 749
    addiu	$at,$a4,4
    b	.L0daf3b84
    sw	$at,1356($s0)
.L0daf3c64:
    sd	$a4,72($sp)
    # Line 566
    li	$a0,1285
    # Line 564
    sw	$s5,1516($s0)
    # Line 565
    lw	$v0,248($s0)
    # Line 566
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,104($sp)
    # Line 565
    ori	$v0,$v0,0x20
    # Line 566
    jal	__glSetError
    # Line 565
    sw	$v0,248($s0)
    # Line 566
    lw	$a3,1516($s0)
    lwc1	$f4,76($s0)
    ld	$a4,72($sp)
    la	$v1,sub_0dbf0000
    trunc.w.s	$f0,$f4
    ld	$ra,104($sp)
    lw	$a0,56($s0)
    addiu	$v1,$v1,12096
    mfc1	$v0,$f0
    sll	$a1,$a0,0x2
    addu	$a1,$a1,$a0
    addu	$v0,$v0,$a1
    sll	$v0,$v0,0x2
    b	.L0daf3530
    addu	$v0,$v0,$v1
.L0daf3cc4:
    # Line 582
    li	$a0,1285
    # Line 580
    sw	$s5,1516($s0)
    ld	$s2,48($sp)
    # Line 581
    lw	$a1,248($s0)
    # Line 582
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,104($sp)
    # Line 581
    ori	$a1,$a1,0x20
    # Line 582
    jal	__glSetError
    # Line 581
    sw	$a1,248($s0)
    # Line 582
    lw	$a3,1516($s0)
    lw	$a0,56($s0)
    lwc1	$f4,76($s0)
    b	.L0daf3bec
    ld	$ra,104($sp)
.end __glMgrMake2GETiles

# Function: __glMgrMakeHQTiles
# Declared: Line 807 (Source lines: 809-851)
# Address: 0x0daf3cfc - 0x0daf3e1c (Size: 288 bytes, Frame: 0)
.globl __glMgrMakeHQTiles
.ent __glMgrMakeHQTiles
__glMgrMakeHQTiles:
    # Line 821
    li	$at,0x9ca3
    # Line 809
    lw	$v0,__glCurrentContext
    # Line 811
    lw	$t2,1132($a0)
    # Line 812
    lw	$t1,1240($a0)
    # Line 813
    lw	$a6,1348($a0)
    # Line 815
    lw	$a7,1116($a0)
    # Line 816
    lw	$t0,1224($a0)
    # Line 817
    lw	$a5,1332($a0)
    # Line 821
    lw	$a2,1340($a0)
    # Line 820
    lw	$a3,1232($a0)
    # Line 819
    lw	$a4,1124($a0)
    # Line 821
    sw	$a2,1380($a0)
    # Line 820
    sw	$a3,1272($a0)
    # Line 819
    sw	$a4,1164($a0)
    # Line 817
    sw	$a5,1384($a0)
    # Line 816
    sw	$t0,1276($a0)
    # Line 815
    sw	$a7,1168($a0)
    # Line 813
    sw	$a6,1376($a0)
    # Line 812
    sw	$t1,1268($a0)
    # Line 811
    sw	$t2,1160($a0)
    # Line 821
    addu	$at,$at,$v0
    lbu	$at,0($at)
    li	$v0,1
    beq	$at,$v0,.L0daf3e14
    nop
    lw	$t3,1136($a0)
    beqzl	$t3,.L0daf3d94
    # Line 829
    lw	$a7,1244($a0)
    lw	$at,1524($a0)
    lw	$a1,1120($a0)
    # Line 827
    lw	$v1,1536($a0)
    # Line 829
    subu	$a1,$a1,$at
    # Line 827
    subu	$v1,$t3,$v1
    addu	$v1,$v1,$t2
    # Line 829
    addu	$a1,$a1,$a7
    sw	$a1,1168($a0)
    # Line 827
    sw	$v1,1160($a0)
    # Line 829
    lw	$a7,1244($a0)
.L0daf3d94:
    beqzl	$a7,.L0daf3dc4
    # Line 836
    lw	$a7,1352($a0)
    lw	$a1,1524($a0)
    lw	$v1,1228($a0)
    # Line 834
    lw	$v0,1536($a0)
    # Line 836
    subu	$v1,$v1,$a1
    # Line 834
    subu	$v0,$a7,$v0
    addu	$v0,$v0,$t1
    # Line 836
    addu	$v1,$v1,$t0
    sw	$v1,1276($a0)
    # Line 834
    sw	$v0,1268($a0)
    # Line 836
    lw	$a7,1352($a0)
.L0daf3dc4:
    beqzl	$a7,.L0daf3df4
    # Line 847
    lw	$a1,1128($a0)
    # Line 843
    lw	$v1,1524($a0)
    lw	$v0,1336($a0)
    # Line 841
    lw	$at,1536($a0)
    # Line 843
    subu	$v0,$v0,$v1
    # Line 841
    subu	$at,$a7,$at
    addu	$at,$at,$a6
    # Line 843
    addu	$v0,$v0,$a5
    sw	$v0,1384($a0)
    # Line 841
    sw	$at,1376($a0)
    # Line 847
    lw	$a1,1128($a0)
.L0daf3df4:
    # Line 848
    lw	$at,1236($a0)
    # Line 849
    lw	$v0,1344($a0)
    # Line 847
    addu	$a1,$a1,$a4
    # Line 848
    addu	$at,$at,$a3
    # Line 849
    addu	$v0,$v0,$a2
    sw	$v0,1380($a0)
    # Line 848
    sw	$at,1272($a0)
    # Line 847
    sw	$a1,1164($a0)
.L0daf3e14:
    # Line 851
    jr	$ra
    nop
.end __glMgrMakeHQTiles

# Function: __glMgrComputeStrideSkipBytes
# Declared: Line 854 (Source lines: 855-933)
# Address: 0x0daf3e1c - 0x0daf406c (Size: 592 bytes, Frame: 32)
.globl __glMgrComputeStrideSkipBytes
.ent __glMgrComputeStrideSkipBytes
__glMgrComputeStrideSkipBytes:
    # Line 855
    addiu	$sp,$sp,-32
    # Line 859
    lui	$v0,0x100
    lw	$a6,424($a0)
    lw	$at,1536($a0)
    lw	$a5,52($a1)
    and	$a6,$a6,$v0
    beqz	$a6,.L0daf3f44
    subu	$a5,$a5,$at
    # Line 862
    li	$a4,1
.L0daf3e40:
    # Line 864
    lw	$v1,248($a0)
    # Line 867
    li	$a3,6409
    # Line 914
    li	$at,2
    # Line 864
    andi	$v1,$v1,0x10
    beqz	$v1,.L0daf3f4c
    # Line 867
    li	$a2,6406
    lw	$v0,44($a0)
    lw	$a1,0($sp)
    beq	$v0,$a2,.L0daf3f18
    li	$v1,6410
    beq	$v0,$a3,.L0daf3f18
    li	$a2,6407
    li	$at,0x8049
    beq	$v0,$at,.L0daf3fd8
    nop
    beq	$v0,$v1,.L0daf3fe8
    nop
    beql	$v0,$a2,.L0daf3ff0
    # Line 882
    sll	$a1,$a5,0x2
.L0daf3e8c:
    # Line 886
    mult	$a4,$a1
    # Line 887
    lw	$v0,48($a0)
    sltiu	$v1,$v0,5126
    sltiu	$a3,$v0,5124
    # Line 886
    mflo	$a1
    # Line 887
    bnez	$a3,.L0daf3ed4
    sltiu	$at,$v0,5122
    sltiu	$at,$v0,5125
    bnezl	$at,.L0daf3f00
    # Line 905
    li	$v0,8
    # Line 887
    bnez	$v1,.L0daf3fc4
    sltiu	$a2,$v0,5127
    bnez	$a2,.L0daf3efc
    li	$a3,6656
    beq	$v0,$a3,.L0daf4058
    # Line 889
    li	$v0,8
    b	.L0daf3f10
    # Line 906
    lw	$v0,4($sp)
.L0daf3ed4:
    # Line 887
    bnez	$at,.L0daf3f20
    sltiu	$v1,$v0,5123
    beqz	$v1,.L0daf3fb4
    li	$at,5123
    # Line 899
    li	$v0,8
.L0daf3ee8:
    sll	$v1,$a1,0x1
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    # Line 900
    b	.L0daf3f10
    # Line 899
    andi	$v0,$v0,0x7
.L0daf3efc:
    # Line 905
    li	$v0,8
.L0daf3f00:
    sll	$v1,$a1,0x2
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
.L0daf3f10:
    # Line 933
    jr	$ra
    addiu	$sp,$sp,32
.L0daf3f18:
    # Line 872
    b	.L0daf3e8c
    # Line 871
    move	$a1,$a5
.L0daf3f20:
    # Line 887
    sltiu	$a2,$v0,5121
    bnez	$a2,.L0daf3fa0
    sltiu	$a3,$v0,5122
    beqz	$a3,.L0daf3ff8
    # Line 894
    li	$v0,8
.L0daf3f34:
    andi	$v1,$a1,0x7
    subu	$v0,$v0,$v1
    # Line 895
    b	.L0daf3f10
    # Line 894
    andi	$v0,$v0,0x7
.L0daf3f44:
    b	.L0daf3e40
    # Line 864
    lw	$a4,412($a0)
.L0daf3f4c:
    # Line 907
    lw	$v0,256($a0)
    beqz	$v0,.L0daf4050
    # Line 914
    li	$a3,1
    # Line 907
    mult	$a5,$a4
    andi	$a2,$v0,0x2000
    mflo	$a6
    beqz	$a2,.L0daf4000
    # Line 910
    addu	$a1,$a6,$a6
.L0daf3f6c:
    # Line 914
    lw	$v0,64($a0)
    beqzl	$v0,.L0daf400c
    # Line 917
    li	$v0,8
    # Line 914
    beql	$v0,$a3,.L0daf400c
    # Line 917
    li	$v0,8
    # Line 914
    beq	$v0,$at,.L0daf4030
    li	$v1,3
    beq	$v0,$v1,.L0daf4030
    li	$a2,4
    beq	$v0,$a2,.L0daf401c
    # Line 926
    li	$v0,8
    # Line 914
    b	.L0daf3f10
    lw	$v0,4($sp)
.L0daf3fa0:
    # Line 887
    li	$a3,5120
    beq	$v0,$a3,.L0daf3f34
    # Line 894
    li	$v0,8
    # Line 906
    b	.L0daf3f10
    lw	$v0,4($sp)
.L0daf3fb4:
    # Line 887
    beq	$v0,$at,.L0daf3ee8
    # Line 899
    li	$v0,8
    # Line 906
    b	.L0daf3f10
    lw	$v0,4($sp)
.L0daf3fc4:
    # Line 887
    li	$v1,5125
    beq	$v0,$v1,.L0daf3f00
    # Line 905
    li	$v0,8
    # Line 906
    b	.L0daf3f10
    lw	$v0,4($sp)
.L0daf3fd8:
    # Line 874
    beqz	$a6,.L0daf4048
    nop
    # Line 875
    b	.L0daf3e8c
    move	$a1,$a5
.L0daf3fe8:
    # Line 880
    b	.L0daf3e8c
    # Line 879
    addu	$a1,$a5,$a5
.L0daf3ff0:
    b	.L0daf3e8c
    # Line 882
    subu	$a1,$a1,$a5
.L0daf3ff8:
    # Line 906
    b	.L0daf3f10
    lw	$v0,4($sp)
.L0daf4000:
    b	.L0daf3f6c
    # Line 912
    sll	$a1,$a6,0x2
    # Line 917
    li	$v0,8
.L0daf400c:
    andi	$v1,$a1,0x7
    subu	$v0,$v0,$v1
    # Line 918
    b	.L0daf3f10
    # Line 917
    andi	$v0,$v0,0x7
.L0daf401c:
    # Line 926
    sll	$v1,$a1,0x2
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    # Line 927
    b	.L0daf3f10
    # Line 926
    andi	$v0,$v0,0x7
.L0daf4030:
    # Line 922
    li	$v0,8
    sll	$v1,$a1,0x1
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    # Line 923
    b	.L0daf3f10
    # Line 922
    andi	$v0,$v0,0x7
.L0daf4048:
    b	.L0daf3e8c
    # Line 876
    addu	$a1,$a5,$a5
.L0daf4050:
    b	.L0daf3f10
    # Line 930
    lbu	$v0,65($a1)
.L0daf4058:
    # Line 889
    sll	$v1,$a1,0x1
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    # Line 890
    b	.L0daf3f10
    # Line 889
    andi	$v0,$v0,0x7
.end __glMgrComputeStrideSkipBytes

# Function: __glMgrUnfoldSmallImage
# Declared: Line 937 (Source lines: 938-1012)
# Address: 0x0daf406c - 0x0daf430c (Size: 672 bytes, Frame: 48)
.globl __glMgrUnfoldSmallImage
.ent __glMgrUnfoldSmallImage
__glMgrUnfoldSmallImage:
    # Line 942
    addiu	$a1,$a0,1324
    # Line 938
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0x11
    addiu	$at,$at,-22996
    addu	$gp,$t9,$at
    # Line 942
    # lw $t9, -29800($gp) # &__glMgrComputeStrideSkipBytes
    sd	$s0,16($sp)
    sd	$ra,8($sp)
    bal __glMgrComputeStrideSkipBytes
    # Line 938
    move	$s0,$a0
    # Line 952
    lw	$v1,1492($s0)
    ld	$gp,0($sp)
    li	$a3,1
    bne	$v1,$a3,.L0daf4130
    # Line 958
    ld	$ra,8($sp)
    # Line 952
    lw	$a2,1376($s0)
    lw	$a1,1268($s0)
    sll	$a2,$a2,0x1
    slt	$a1,$a1,$a2
    bnez	$a1,.L0daf4130
    li	$v1,8
    lbu	$at,1389($s0)
    bnez	$at,.L0daf4130
    li	$a1,9
    bnezl	$v0,.L0daf4134
    # Line 958
    ld	$s0,16($sp)
    # Line 952
    lw	$v0,140($s0)
    beql	$v0,$a3,.L0daf4134
    # Line 958
    ld	$s0,16($sp)
    # Line 952
    beql	$v0,$v1,.L0daf4134
    # Line 958
    ld	$s0,16($sp)
    # Line 952
    beql	$v0,$a1,.L0daf4134
    # Line 958
    ld	$s0,16($sp)
    # Line 952
    lw	$a2,248($s0)
    andi	$a2,$a2,0x4
    beqzl	$a2,.L0daf4118
    # Line 958
    lw	$a4,1352($s0)
    # Line 952
    lw	$at,52($s0)
    li	$v1,6656
    beql	$at,$v1,.L0daf4134
    # Line 958
    ld	$s0,16($sp)
    lw	$a4,1352($s0)
.L0daf4118:
    lw	$a6,1348($s0)
    slt	$a1,$a4,$a6
    beqz	$a1,.L0daf413c
    # Line 965
    move	$v0,$a4
    b	.L0daf413c
    move	$v0,$a6
.L0daf4130:
    # Line 958
    ld	$s0,16($sp)
.L0daf4134:
    jr	$ra
    addiu	$sp,$sp,48
.L0daf413c:
    # Line 965
    lw	$a5,1240($s0)
    mtc1	$a5,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    div.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$a0,36($s0)
    mfc1	$a5,$f0
    nop
    slt	$a2,$a0,$a5
    beqz	$a2,.L0daf4180
    # Line 971
    slti	$at,$a5,2
    # Line 969
    move	$a5,$a0
    # Line 971
    slti	$at,$a5,2
.L0daf4180:
    bnez	$at,.L0daf41a4
    move	$v0,$a5
.L0daf4188:
    # Line 973
    div	$zero,$a0,$v0
    mfhi	$v1
    beqz	$v1,.L0daf41a4
    teq	$v0,$zero,0x7
    # Line 971
    addiu	$v0,$v0,-1
    bne	$v0,$a3,.L0daf4188
    nop
.L0daf41a4:
    # Line 976
    beq	$v0,$a3,.L0daf42b8
    sw	$v0,1548($s0)
    # Line 979
    lw	$a3,1372($s0)
    div	$zero,$a3,$v0
    lw	$a0,1332($s0)
    lw	$a3,1356($s0)
    teq	$v0,$zero,0x7
    andi	$a2,$a0,0x1
    mflo	$a1
    beqz	$a2,.L0daf42d4
    sw	$a1,1372($s0)
    # Line 983
    mult	$a3,$v0
    andi	$at,$v0,0x1
    mflo	$a5
    beqz	$at,.L0daf42cc
    # Line 988
    addiu	$a2,$a5,4
    # Line 986
    sw	$a5,1356($s0)
.L0daf41e8:
    # Line 990
    lw	$a1,1324($s0)
    mult	$a1,$v0
    mflo	$at
    nop
    nop
    # Line 991
    mult	$a0,$v0
    # Line 992
    lw	$v1,1340($s0)
    # Line 991
    mflo	$a2
    nop
    nop
    # Line 992
    mult	$v1,$v0
    mflo	$a1
    nop
    nop
    # Line 993
    mult	$a6,$v0
    # Line 990
    sw	$at,1324($s0)
    # Line 991
    sw	$a2,1332($s0)
    # Line 992
    sw	$a1,1340($s0)
    # Line 993
    mflo	$v1
    beqz	$a4,.L0daf42b8
    sw	$v1,1348($s0)
    lw	$a3,1336($s0)
    andi	$a2,$a3,0x1
    beqz	$a2,.L0daf42f4
    lw	$a0,1360($s0)
    # Line 999
    mult	$a0,$v0
    andi	$at,$v0,0x1
    mflo	$a5
    beqz	$at,.L0daf42ec
    # Line 1004
    addiu	$a1,$a5,4
    # Line 1002
    sw	$a5,1360($s0)
.L0daf4264:
    # Line 1006
    lw	$a1,1328($s0)
    mult	$a1,$v0
    mflo	$at
    nop
    nop
    # Line 1007
    mult	$a3,$v0
    # Line 1008
    lw	$v1,1344($s0)
    # Line 1007
    mflo	$a2
    nop
    nop
    # Line 1008
    mult	$v1,$v0
    mflo	$a1
    nop
    nop
    # Line 1009
    mult	$a4,$v0
    # Line 1006
    sw	$at,1328($s0)
    # Line 1007
    sw	$a2,1336($s0)
    # Line 1008
    sw	$a1,1344($s0)
    # Line 1009
    mflo	$v1
    nop
    sw	$v1,1352($s0)
.L0daf42b8:
    # Line 1012
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf42cc:
    b	.L0daf41e8
    # Line 988
    sw	$a2,1356($s0)
.L0daf42d4:
    # Line 983
    addiu	$v1,$a3,-4
    mult	$v1,$v0
    mflo	$at
    addiu	$at,$at,4
    b	.L0daf41e8
    sw	$at,1356($s0)
.L0daf42ec:
    b	.L0daf4264
    # Line 1004
    sw	$a1,1360($s0)
.L0daf42f4:
    # Line 999
    addiu	$at,$a0,-4
    mult	$at,$v0
    mflo	$a2
    addiu	$a2,$a2,4
    b	.L0daf4264
    sw	$a2,1360($s0)
.end __glMgrUnfoldSmallImage

# Function: __glMgrPrintTileInfo
# Declared: Line 1014 (Source lines: 1015-1041)
# Address: 0x0daf430c - 0x0daf4530 (Size: 548 bytes, Frame: 192)
.globl __glMgrPrintTileInfo
.ent __glMgrPrintTileInfo
__glMgrPrintTileInfo:
    # Line 1015
    addiu	$at,$a0,1108
    addiu	$sp,$sp,-64
    sd	$s2,0($sp)
    move	$s2,$a0
    sd	$s0,8($sp)
    sd	$s1,16($sp)
    sd	$gp,24($sp)
    lui	$v0,0x11
    addiu	$v0,$v0,-23668
    addu	$gp,$t9,$v0
    la	$s1,__iob
    move	$s0,$a1
    beq	$at,$a1,.L0daf44d4
    addiu	$s1,$s1,32
.L0daf4344:
    # Line 1017
    addiu	$v1,$s2,1216
    beq	$v1,$s0,.L0daf44f4
    # Line 1020
    move	$a0,$s1
.L0daf4350:
    sd	$ra,32($sp)
    addiu	$a2,$s2,1324
    beq	$a2,$s0,.L0daf4510
    ld	$s2,0($sp)
    # Line 1025
    move	$a0,$s1
.L0daf4364:
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,0($s0)
    jal	fprintf
    addiu	$a1,$a1,-15192
    # Line 1026
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,4($s0)
    jal	fprintf
    addiu	$a1,$a1,-15168
    # Line 1027
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,8($s0)
    jal	fprintf
    addiu	$a1,$a1,-15144
    # Line 1028
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,12($s0)
    jal	fprintf
    addiu	$a1,$a1,-15120
    # Line 1029
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,16($s0)
    jal	fprintf
    addiu	$a1,$a1,-15096
    # Line 1030
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,20($s0)
    jal	fprintf
    addiu	$a1,$a1,-15072
    # Line 1031
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,24($s0)
    jal	fprintf
    addiu	$a1,$a1,-15048
    # Line 1032
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,28($s0)
    jal	fprintf
    addiu	$a1,$a1,-15024
    # Line 1033
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,40($s0)
    jal	fprintf
    addiu	$a1,$a1,-15000
    # Line 1034
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,44($s0)
    jal	fprintf
    addiu	$a1,$a1,-14976
    # Line 1035
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,32($s0)
    jal	fprintf
    addiu	$a1,$a1,-14952
    # Line 1036
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,36($s0)
    jal	fprintf
    addiu	$a1,$a1,-14928
    # Line 1037
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lbu	$a2,65($s0)
    jal	fprintf
    addiu	$a1,$a1,-14904
    # Line 1038
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,96($s0)
    jal	fprintf
    addiu	$a1,$a1,-14880
    # Line 1040
    # lw $t9, -17768($gp) # &fflush
    move	$a0,$s1
    jal	fflush
    ld	$s0,8($sp)
    # Line 1041
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf44d4:
    # Line 1017
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    sd	$ra,32($sp)
    jal	fprintf
    addiu	$a1,$a1,-15240
    b	.L0daf4344
    ld	$ra,32($sp)
.L0daf44f4:
    # Line 1020
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    sd	$ra,32($sp)
    jal	fprintf
    addiu	$a1,$a1,-15224
    b	.L0daf4350
    ld	$ra,32($sp)
.L0daf4510:
    # Line 1023
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    ld	$s2,0($sp)
    jal	fprintf
    addiu	$a1,$a1,-15208
    b	.L0daf4364
    # Line 1025
    move	$a0,$s1
.end __glMgrPrintTileInfo

# Function: __glMgrPrintTilingInfo
# Declared: Line 1043 (Source lines: 1044-1061)
# Address: 0x0daf4530 - 0x0daf46cc (Size: 412 bytes, Frame: 48)
.globl __glMgrPrintTilingInfo
.ent __glMgrPrintTilingInfo
__glMgrPrintTilingInfo:
    # Line 1044
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$ra,16($sp)
    sd	$s1,8($sp)
    sd	$gp,24($sp)
    lui	$a2,0x11
    addiu	$a2,$a2,-24216
    addu	$gp,$t9,$a2
    # Line 1045
    la	$a1,sub_0dbe0000
    la	$s1,__iob
    # lw $t9, -17908($gp) # &fprintf
    addiu	$a1,$a1,-14856
    addiu	$s1,$s1,32
    jal	fprintf
    move	$a0,$s1
    # Line 1046
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1496($s0)
    jal	fprintf
    addiu	$a1,$a1,-14816
    # Line 1047
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1500($s0)
    jal	fprintf
    addiu	$a1,$a1,-14792
    # Line 1048
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1504($s0)
    jal	fprintf
    addiu	$a1,$a1,-14768
    # Line 1049
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1488($s0)
    jal	fprintf
    addiu	$a1,$a1,-14744
    # Line 1050
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1492($s0)
    jal	fprintf
    addiu	$a1,$a1,-14720
    # Line 1051
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1516($s0)
    jal	fprintf
    addiu	$a1,$a1,-14696
    # Line 1052
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1520($s0)
    jal	fprintf
    addiu	$a1,$a1,-14672
    # Line 1053
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1524($s0)
    jal	fprintf
    addiu	$a1,$a1,-14648
    # Line 1054
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1528($s0)
    jal	fprintf
    addiu	$a1,$a1,-14624
    # Line 1055
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1532($s0)
    jal	fprintf
    addiu	$a1,$a1,-14600
    # Line 1056
    move	$a0,$s1
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,1536($s0)
    jal	fprintf
    addiu	$a1,$a1,-14576
    # Line 1057
    # lw $t9, -29792($gp) # &__glMgrPrintTileInfo
    move	$a0,$s0
    bal __glMgrPrintTileInfo
    addiu	$a1,$s0,1108
    # Line 1058
    # lw $t9, -29792($gp) # &__glMgrPrintTileInfo
    move	$a0,$s0
    bal __glMgrPrintTileInfo
    addiu	$a1,$s0,1216
    # Line 1059
    # lw $t9, -29792($gp) # &__glMgrPrintTileInfo
    move	$a0,$s0
    bal __glMgrPrintTileInfo
    addiu	$a1,$s0,1324
    # Line 1060
    # lw $t9, -17768($gp) # &fflush
    move	$a0,$s1
    jal	fflush
    ld	$s0,0($sp)
    # Line 1061
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrPrintTilingInfo

# Function: __glMgrMakeTiles
# Declared: Line 1064 (Source lines: 1065-1359)
# Address: 0x0daf46cc - 0x0daf4f00 (Size: 2100 bytes, Frame: 240)
.globl __glMgrMakeTiles
.ent __glMgrMakeTiles
__glMgrMakeTiles:
    # Line 1065
    addiu	$sp,$sp,-112
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s3,16($sp)
    # Line 1078
    lw	$s3,1104($a0)
    sd	$gp,24($sp)
    lw	$a3,0($a0)
    # Line 1065
    lui	$at,0x11
    addiu	$at,$at,-24628
    # Line 1078
    beqz	$a3,.L0daf4710
    # Line 1065
    addu	$gp,$t9,$at
    # Line 1078
    lui	$v1,0x2
    lw	$v0,420($s0)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    beqzl	$v0,.L0daf4e68
    ld	$gp,24($sp)
.L0daf4710:
    # Line 1085
    sb	$zero,1428($s0)
    # Line 1084
    sb	$zero,1320($s0)
    # Line 1092
    li	$at,2
    # Line 1085
    lw	$a5,424($s0)
    sd	$s7,88($sp)
    lui	$s7,0x100
    and	$s7,$a5,$s7
    beqz	$s7,.L0daf4ba4
    # Line 1083
    sb	$zero,1212($s0)
    # Line 1088
    li	$t1,1
.L0daf4738:
    # Line 1092
    lw	$a4,140($s0)
    # Line 1156
    mtc1	$zero,$f2
    # Line 1092
    beq	$a4,$at,.L0daf4764
    move	$a0,$a4
    li	$v0,5
    beq	$a0,$v0,.L0daf4764
    li	$v1,6
    beq	$a0,$v1,.L0daf4764
    li	$a2,7
    bne	$a0,$a2,.L0daf4768
    nop
.L0daf4764:
    # Line 1097
    move	$s3,$zero
.L0daf4768:
    # Line 1099
    beqz	$s3,.L0daf4b60
    nop
    # Line 1104
    lw	$a7,20($s3)
    lw	$a0,16($s3)
    slt	$a4,$a7,$a0
    beqz	$a4,.L0daf478c
    li	$a4,6
    # Line 1105
    b	.L0daf4790
    move	$a6,$a0
.L0daf478c:
    move	$a6,$a7
.L0daf4790:
    slti	$at,$a6,4
    beqz	$at,.L0daf47a4
    sd	$s6,56($sp)
    # Line 1107
    b	.L0daf47a8
    li	$s6,6
.L0daf47a4:
    # Line 1109
    li	$s6,9
.L0daf47a8:
    sd	$s8,32($sp)
    sd	$s1,48($sp)
    li	$t3,1
.L0daf47b4:
    # Line 1147
    lwc1	$f1,76($s0)
    ldc1	$f0,_lit8_4010000000000000
    cvt.d.s	$f1,$f1
    div.d	$f0,$f0,$f1
    ldc1	$f1,_lit8_3eb0c6f7a0b5ed8d
    add.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    # Line 1149
    lw	$v1,1496($s0)
    # Line 1147
    mfc1	$s8,$f0
    nop
    # Line 1149
    mult	$v1,$s8
    mflo	$v0
    nop
    nop
    div	$zero,$v0,$a4
    mflo	$s1
    blez	$s6,.L0daf4bac
    teq	$a4,$zero,0x7
    # Line 1153
    lw	$a0,1500($s0)
    div	$zero,$a0,$s6
    teq	$s6,$zero,0x7
    mflo	$a0
    nop
    nop
.L0daf4814:
    # Line 1156
    lwc1	$f5,720($a1)
    c.lt.s	$f5,$f2
    nop
    bc1fl	.L0daf4834
    sd	$s5,72($sp)
    sd	$s5,72($sp)
    # Line 1158
    b	.L0daf4838
    neg.s	$f4,$f5
.L0daf4834:
    mov.s	$f4,$f5
.L0daf4838:
    lui	$s5,0x1
    addu	$s5,$a1,$s5
    lbu	$at,-25437($s5)
    lw	$a4,56($s0)
    mtc1	$at,$f0
    sll	$a6,$a4,0xb
    dsll32	$a6,$a6,0x0
    cvt.s.w	$f0,$f0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f0,$f0,$f4
    div.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$a6,$f3
    nop
    slt	$a2,$a6,$s1
    beqz	$a2,.L0daf488c
    nop
    # Line 1162
    move	$s1,$a6
.L0daf488c:
    beqz	$a3,.L0daf4bb8
    # Line 1173
    move	$a7,$zero
    # Line 1174
    lw	$a6,256($s0)
    # Line 1173
    sw	$zero,1512($s0)
    # Line 1174
    move	$a1,$zero
    andi	$at,$a6,0x4000
    beqz	$at,.L0daf4dc0
    sw	$zero,1504($s0)
    # Line 1176
    li	$at,4
    subu	$at,$at,$a4
    multu	$at,$a0
    mflo	$t0
    srl	$t0,$t0,0x2
    # Line 1177
    subu	$a0,$a0,$t0
    # Line 1176
    sw	$t0,1508($s0)
    # Line 1178
    move	$a1,$t0
    sw	$t0,1504($s0)
.L0daf48d0:
    # Line 1241
    slt	$v0,$a0,$s1
    beqz	$v0,.L0daf48e4
    # Line 1252
    sll	$v1,$t0,0x2
    # Line 1245
    move	$s1,$a0
    # Line 1252
    sll	$v1,$t0,0x2
.L0daf48e4:
    # Line 1245
    blez	$s6,.L0daf4d48
    # Line 1248
    addu	$t2,$a1,$a0
    sw	$t2,1520($s0)
.L0daf48f0:
    # Line 1252
    sw	$v1,1508($s0)
    # Line 1253
    sll	$a2,$a7,0x2
    # Line 1254
    sll	$at,$a1,0x2
    sw	$at,1504($s0)
    beqz	$s7,.L0daf4d54
    # Line 1253
    sw	$a2,1512($s0)
.L0daf4908:
    # Line 1264
    beqz	$a3,.L0daf4918
    # Line 1271
    li	$v0,3
    # Line 1264
    beqz	$a6,.L0daf4dcc
    # Line 1271
    li	$v0,3
.L0daf4918:
    beq	$a4,$v0,.L0daf4dac
    # Line 1280
    li	$v1,4
    divu	$zero,$v1,$a4
    teq	$a4,$zero,0x7
    mflo	$a0
    nop
    nop
.L0daf4934:
    # Line 1277
    lwc1	$f7,_lit_44480000
    mtc1	$s1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f5,80($s0)
    mul.s	$f1,$f1,$f5
    mtc1	$a0,$f6
    nop
    cvt.s.w	$f6,$f6
    mul.s	$f1,$f1,$f6
    mtc1	$t1,$f4
    nop
    cvt.s.w	$f4,$f4
    mul.s	$f1,$f1,$f4
    c.lt.s	$f7,$f1
    nop
    bc1f	.L0daf4994
    nop
    # Line 1283
    mul.s	$f2,$f6,$f5
    mul.s	$f2,$f2,$f4
    div.s	$f2,$f7,$f2
    trunc.w.s	$f2,$f2
    mfc1	$s1,$f2
    nop
.L0daf4994:
    beqz	$s3,.L0daf4a18
    lui	$a2,0x2
    ori	$a2,$a2,0x8000
    and	$a2,$a5,$a2
    beqz	$a2,.L0daf4a18
    sd	$s4,64($sp)
    # Line 1288
    lw	$a3,16($s3)
    sd	$a3,0($sp)
    addiu	$a3,$a3,-1
    multu	$a3,$a4
    # Line 1289
    mtc1	$s8,$f13
    nop
    cvt.s.w	$f13,$f13
    # Line 1288
    mflo	$s4
    # Line 1289
    mtc1	$s4,$f12
    nop
    cvt.s.w	$f12,$f12
    div.s	$f12,$f12,$f13
    # lw $t9, -17752($gp) # &ceil
    sd	$t2,80($sp)
    sd	$ra,40($sp)
    jal	ceil
    cvt.d.s	$f12,$f12
    li	$t3,1
    ld	$t2,80($sp)
    # Line 1291
    ld	$a1,0($sp)
    # Line 1289
    trunc.w.d	$f0,$f0
    ld	$ra,40($sp)
    # Line 1290
    lw	$a3,20($s3)
    # Line 1291
    addiu	$a1,$a1,-1
    # Line 1289
    mfc1	$a4,$f0
    # Line 1291
    b	.L0daf4a2c
    # Line 1290
    addiu	$a3,$a3,-1
.L0daf4a18:
    sd	$s4,64($sp)
    # Line 1295
    move	$s4,$zero
    # Line 1296
    move	$a4,$zero
    # Line 1297
    move	$a3,$zero
    # Line 1298
    move	$a1,$zero
.L0daf4a2c:
    # Line 1306
    div	$zero,$s1,$s8
    teq	$s8,$zero,0x7
    # Line 1304
    sw	$a1,1536($s0)
    # Line 1303
    sw	$a3,1532($s0)
    # Line 1302
    sw	$a4,1524($s0)
    # Line 1301
    sw	$s4,1528($s0)
    ld	$s1,48($sp)
    move	$a2,$s7
    ld	$s7,88($sp)
    # Line 1306
    mflo	$a5
    subu	$a5,$a5,$a4
    move	$a0,$a5
    beqz	$a2,.L0daf4a74
    sw	$a5,1516($s0)
    lw	$a1,24($s0)
    ld	$s1,48($sp)
    bltz	$a1,.L0daf4e08
    ld	$s7,88($sp)
.L0daf4a74:
    move	$at,$s6
    # Line 1312
    beqz	$at,.L0daf4a8c
    ld	$s6,56($sp)
    andi	$v0,$t2,0x1
    beqz	$v0,.L0daf4e44
    ld	$s6,56($sp)
.L0daf4a8c:
    # Line 1319
    andi	$v1,$a0,0x1
    beqz	$v1,.L0daf4db4
    ld	$s8,32($sp)
.L0daf4a98:
    # Line 1325
    lbu	$a2,-25437($s5)
    beq	$a2,$t3,.L0daf4d98
    sd	$ra,40($sp)
    # Line 1332
    # lw $t9, -29808($gp) # &__glMgrMake2GETiles
    bal __glMgrMake2GETiles
    move	$a0,$s0
    # Line 1334
    # lw $t9, -29804($gp) # &__glMgrMakeHQTiles
.L0daf4ab4:
    bal __glMgrMakeHQTiles
    move	$a0,$s0
    li	$a0,1
    ld	$ra,40($sp)
    lw	$at,1324($s0)
    slt	$at,$s4,$at
    beqz	$at,.L0daf4ae4
    lw	$a1,1488($s0)
    ld	$s4,64($sp)
    # Line 1338
    addiu	$a3,$a1,1
    b	.L0daf4af0
    sw	$a3,1492($s0)
.L0daf4ae4:
    # Line 1340
    move	$a3,$a1
    sw	$a1,1492($s0)
    ld	$s4,64($sp)
.L0daf4af0:
    lw	$v0,1132($s0)
    beqz	$v0,.L0daf4b00
    # Line 1343
    addiu	$v1,$a3,1
    sw	$v1,1492($s0)
.L0daf4b00:
    # Line 1345
    lw	$a3,0($s0)
    beqz	$a3,.L0daf4b48
    sw	$a0,1548($s0)
    bnez	$s3,.L0daf4b24
    nop
    # Line 1346
    lw	$a2,256($s0)
    andi	$a2,$a2,0x4000
    beqzl	$a2,.L0daf4e78
    lw	$v1,424($s0)
.L0daf4b24:
    # Line 1348
    beqz	$a3,.L0daf4b48
    ld	$s5,72($sp)
    lw	$at,248($s0)
    andi	$at,$at,0x4
    beqz	$at,.L0daf4b48
    # Line 1352
    nop	# was lw $t9, -29816($gp) # &__glMgrMakeFastPathTiles
    bal __glMgrMakeFastPathTiles
    move	$a0,$s0
    ld	$ra,40($sp)
.L0daf4b48:
    ld	$gp,24($sp)
    # Line 1359
    ld	$s0,8($sp)
    ld	$s3,16($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daf4b60:
    # Line 1109
    beqzl	$a3,.L0daf4dd8
    sd	$s8,32($sp)
    lw	$v0,248($s0)
    andi	$v0,$v0,0x4
    beqz	$v0,.L0daf4dd4
    # Line 1128
    li	$t3,1
    beq	$a4,$t3,.L0daf4df0
    li	$v1,8
    beq	$a4,$v1,.L0daf4df0
    li	$a2,9
    beq	$a4,$a2,.L0daf4df0
    sd	$s6,56($sp)
    sd	$s8,32($sp)
    sd	$s1,48($sp)
    # Line 1133
    li	$a4,3
    b	.L0daf47b4
    # Line 1134
    move	$s6,$zero
.L0daf4ba4:
    b	.L0daf4738
    # Line 1090
    lw	$t1,412($s0)
.L0daf4bac:
    # Line 1156
    lui	$a0,0x3
    b	.L0daf4814
    ori	$a0,$a0,0x2000
.L0daf4bb8:
    # Line 1185
    move	$a6,$zero
    andi	$a2,$a5,0x10
    beqz	$a2,.L0daf4be0
    sw	$zero,256($s0)
    lw	$at,252($s0)
    andi	$at,$at,0x10
    beqz	$at,.L0daf4be4
    # Line 1189
    lui	$v0,0x200
    li	$a6,1
    sw	$a6,256($s0)
.L0daf4be0:
    lui	$v0,0x200
.L0daf4be4:
    and	$v0,$a5,$v0
    beqz	$v0,.L0daf4c10
    # Line 1194
    lui	$at,0x400
    # Line 1189
    lw	$v1,252($s0)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0daf4c10
    # Line 1194
    lui	$at,0x400
    # Line 1191
    lw	$a2,-31840($s5)
    andi	$a2,$a2,0x10
    beqz	$a2,.L0daf4ee0
.L0daf4c0c:
    # Line 1194
    lui	$at,0x400
.L0daf4c10:
    and	$at,$a5,$at
    beqz	$at,.L0daf4c3c
    # Line 1199
    lui	$a2,0x800
    # Line 1194
    lw	$v0,252($s0)
    andi	$v0,$v0,0x10
    beqz	$v0,.L0daf4c3c
    # Line 1199
    lui	$a2,0x800
    # Line 1196
    lw	$v1,-31720($s5)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0daf4eec
.L0daf4c38:
    # Line 1199
    lui	$a2,0x800
.L0daf4c3c:
    and	$a2,$a5,$a2
    beqz	$a2,.L0daf4c68
    nop
    lw	$at,252($s0)
    andi	$at,$at,0x10
    beqz	$at,.L0daf4c68
    nop
    # Line 1201
    lw	$v0,-31660($s5)
    andi	$v0,$v0,0x10
    beqzl	$v0,.L0daf4ef8
    # Line 1204
    ori	$a6,$a6,0x8
.L0daf4c68:
    beqz	$s7,.L0daf4ca8
    nop
    # Line 1206
    lw	$v1,44($s0)
    lw	$a1,40($s0)
    bne	$v1,$a1,.L0daf4ca0
    li	$a2,6403
    beq	$a1,$a2,.L0daf4ca0
    li	$at,6405
    beq	$a1,$at,.L0daf4ca0
    li	$v0,6404
    beq	$a1,$v0,.L0daf4ca0
    li	$v1,6406
    bne	$a1,$v1,.L0daf4ca8
    nop
.L0daf4ca0:
    # Line 1210
    ori	$a6,$a6,0x10
    sw	$a6,256($s0)
.L0daf4ca8:
    beqz	$s3,.L0daf4cd0
    # Line 1221
    lui	$v0,0x2
    # Line 1212
    lw	$a1,40($s0)
    li	$a7,6407
    beq	$a7,$a1,.L0daf4ec0
    li	$a2,6409
    beq	$a1,$a2,.L0daf4eac
    li	$at,6410
    beq	$a1,$at,.L0daf4eac
.L0daf4ccc:
    # Line 1221
    lui	$v0,0x2
.L0daf4cd0:
    ori	$v0,$v0,0xe000
    and	$v0,$a5,$v0
    lui	$v1,0x2
    ori	$v1,$v1,0x8000
    bne	$v0,$v1,.L0daf4cfc
    # Line 1223
    lui	$v1,0x1040
    ori	$v1,$v1,0x900
    and	$v1,$a5,$v1
    lui	$a2,0x1000
    ori	$a2,$a2,0x900
    bne	$v1,$a2,.L0daf4d18
.L0daf4cfc:
    lui	$at,0x2
    ori	$at,$at,0x4000
    and	$a2,$at,$a5
    beq	$a2,$at,.L0daf4d18
    li	$v0,-3585
    and	$v0,$a6,$v0
    beqz	$v0,.L0daf4ecc
.L0daf4d18:
    # Line 1232
    li	$at,4
    subu	$at,$at,$a4
    multu	$at,$a0
    mflo	$t0
    srl	$t0,$t0,0x2
    # Line 1234
    subu	$a0,$a0,$t0
    # Line 1232
    sw	$t0,1508($s0)
    # Line 1233
    move	$a1,$t0
    sw	$t0,1504($s0)
.L0daf4d3c:
    # Line 1241
    move	$a7,$zero
    b	.L0daf48d0
    sw	$zero,1512($s0)
.L0daf4d48:
    # Line 1250
    move	$t2,$zero
    b	.L0daf48f0
    sw	$zero,1520($s0)
.L0daf4d54:
    # Line 1254
    lui	$v0,0x2000
    and	$v0,$a5,$v0
    beqz	$v0,.L0daf4908
    nop
    # Line 1261
    lw	$v0,412($s0)
    lbu	$v1,-25437($s5)
    mult	$v0,$v1
    mflo	$v1
    nop
    sll	$at,$a4,0x8
    divu	$zero,$at,$v1
    mflo	$a0
    slt	$a2,$a0,$s1
    beqz	$a2,.L0daf4908
    teq	$v1,$zero,0x7
    b	.L0daf4908
    # Line 1265
    move	$s1,$a0
.L0daf4d98:
    # Line 1330
    # lw $t9, -29812($gp) # &__glMgrMake1GETiles
    bal __glMgrMake1GETiles
    move	$a0,$s0
    b	.L0daf4ab4
    # Line 1334
    nop	# was lw $t9, -29804($gp) # &__glMgrMakeHQTiles
.L0daf4dac:
    # Line 1278
    b	.L0daf4934
    li	$a0,2
.L0daf4db4:
    # Line 1325
    addiu	$a2,$a0,-1
    b	.L0daf4a98
    sw	$a2,1516($s0)
.L0daf4dc0:
    # Line 1180
    move	$t0,$zero
    b	.L0daf48d0
    sw	$zero,1508($s0)
.L0daf4dcc:
    # Line 1271
    b	.L0daf4934
    li	$a0,1
.L0daf4dd4:
    sd	$s8,32($sp)
.L0daf4dd8:
    sd	$s1,48($sp)
    # Line 1141
    li	$t3,1
    sd	$s6,56($sp)
    li	$s6,3
    b	.L0daf47b4
    # Line 1140
    li	$a4,6
.L0daf4df0:
    sd	$s8,32($sp)
    sd	$s1,48($sp)
    sd	$s6,56($sp)
    # Line 1131
    li	$s6,3
    b	.L0daf47b4
    # Line 1130
    li	$a4,6
.L0daf4e08:
    # Line 1312
    negu	$a2,$a1
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,84($s0)
    mul.s	$f1,$f1,$f2
    lwc1	$f2,_lit_40400000
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    nop
    sra	$a0,$a0,0x2
    subu	$a0,$a5,$a0
    b	.L0daf4a74
    sw	$a0,1516($s0)
.L0daf4e44:
    # Line 1318
    mult	$a0,$s8
    addiu	$at,$t2,-1
    mflo	$v0
    slt	$v0,$at,$v0
    beqz	$v0,.L0daf4a8c
    sw	$at,1520($s0)
    # Line 1321
    addiu	$a0,$a0,-1
    b	.L0daf4a8c
    sw	$a0,1516($s0)
.L0daf4e68:
    # Line 1081
    ld	$s0,8($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daf4e78:
    # Line 1346
    andi	$v1,$v1,0x800
    beqz	$v1,.L0daf4b24
    nop
    lw	$a2,-28164($s5)
    lw	$a2,1160($a2)
    bnez	$a2,.L0daf4b24
    # Line 1348
    nop	# was lw $t9, -29796($gp) # &__glMgrUnfoldSmallImage
    move	$a0,$s0
    bal __glMgrUnfoldSmallImage
    ld	$s5,72($sp)
    lw	$a3,0($s0)
    b	.L0daf4b24
    ld	$ra,40($sp)
.L0daf4eac:
    # Line 1212
    lw	$a1,12($s3)
    beq	$a7,$a1,.L0daf4ec0
    li	$at,6408
    bne	$a1,$at,.L0daf4cd0
    # Line 1221
    lui	$v0,0x2
.L0daf4ec0:
    ori	$a6,$a6,0x20
    b	.L0daf4ccc
    sw	$a6,256($s0)
.L0daf4ecc:
    # Line 1238
    move	$t0,$zero
    sw	$zero,1508($s0)
    # Line 1239
    move	$a1,$zero
    b	.L0daf4d3c
    sw	$zero,1504($s0)
.L0daf4ee0:
    # Line 1194
    ori	$a6,$a6,0x2
    b	.L0daf4c0c
    sw	$a6,256($s0)
.L0daf4eec:
    # Line 1199
    ori	$a6,$a6,0x4
    b	.L0daf4c38
    sw	$a6,256($s0)
.L0daf4ef8:
    b	.L0daf4c68
    # Line 1204
    sw	$a6,256($s0)
.end __glMgrMakeTiles

# Function: __glMgrExtractTypeInfo
# Declared: Line 1365 (Source lines: 1366-1579)
# Address: 0x0daf4f00 - 0x0daf5600 (Size: 1792 bytes, Frame: 0)
.globl __glMgrExtractTypeInfo
.ent __glMgrExtractTypeInfo
__glMgrExtractTypeInfo:
    # Line 1369
    lw	$a6,__glCurrentContext
    # Line 1366
    lui	$v0,0x11
    addiu	$v0,$v0,-26728
    addu	$at,$t9,$v0
    # Line 1374
    lw	$a4,52($a0)
    # Line 1475
    lwc1	$f0,_lit_3f800000
    # Line 1476
    mtc1	$zero,$f1
    # Line 1374
    sltiu	$v0,$a4,5126
    bnez	$v0,.L0daf4fd8
    # Line 1369
    addiu	$a6,$a6,616
    # Line 1374
    sltiu	$v1,$a4,5127
    bnez	$v1,.L0daf5068
    li	$a5,0x8034
    sltu	$a2,$a4,$a5
    bnez	$a2,.L0daf51a8
    sltu	$a3,$a5,$a4
    beqz	$a3,.L0daf5340
    li	$a5,0x8036
    sltu	$v0,$a4,$a5
    bnez	$v0,.L0daf546c
    sltu	$v1,$a5,$a4
    bnez	$v1,.L0daf51a0
    nop
    # Line 1551
    lw	$a4,424($a0)
    lui	$a2,0x102
    and	$a2,$a4,$a2
    beqz	$a2,.L0daf55e8
    # Line 1556
    li	$a5,1
    sw	$a5,68($a0)
    # Line 1555
    li	$a3,3
    sw	$a3,64($a0)
    # Line 1554
    li	$a2,4
    sw	$a2,60($a0)
    # Line 1562
    lui	$v1,0x80
    or	$v1,$a4,$v1
    # Line 1563
    li	$a2,-33
    and	$v1,$v1,$a2
    # Line 1560
    lwc1	$f3,_lit_40000000
    # Line 1563
    sw	$v1,424($a0)
    # Line 1559
    lwc1	$f2,_lit_477fff00
    # Line 1560
    swc1	$f3,80($a0)
    # Line 1558
    mtc1	$zero,$f1
    # Line 1559
    swc1	$f2,116($a0)
    # Line 1557
    lwc1	$f0,_lit_37800080
    # Line 1558
    swc1	$f1,112($a0)
    # Line 1561
    lw	$v0,88($a0)
    # Line 1557
    swc1	$f0,108($a0)
    # Line 1561
    li	$a3,8
    sll	$v0,$v0,0x2
    andi	$v0,$v0,0x7
    subu	$a3,$a3,$v0
    andi	$a3,$a3,0x7
    # Line 1564
    b	.L0daf50c8
    # Line 1561
    sb	$a3,105($a0)
.L0daf4fd8:
    # Line 1374
    sltiu	$v0,$a4,5123
    bnez	$v0,.L0daf510c
    # Line 1437
    lwc1	$f2,_lit_477fff00
    # Line 1440
    ld	$a2,-13456($at)
    # Line 1374
    sltiu	$v1,$a4,5124
    bnez	$v1,.L0daf5240
    # Line 1435
    lwc1	$f0,_lit_37800080
    # Line 1374
    sltiu	$a2,$a4,5125
    bnez	$a2,.L0daf5298
    # Line 1465
    lwc1	$f2,_lit_4f7fffff
    # Line 1456
    li	$v0,4
    # Line 1374
    sltiu	$a3,$a4,5126
    beqz	$a3,.L0daf51a0
    # Line 1463
    lwc1	$f0,_lit_30000001
    swc1	$f0,108($a0)
    # Line 1465
    swc1	$f2,116($a0)
    # Line 1458
    li	$a5,3
    sw	$a5,68($a0)
    # Line 1464
    mtc1	$zero,$f1
    # Line 1457
    sw	$v0,64($a0)
    # Line 1456
    sw	$v0,60($a0)
    # Line 1467
    li	$v0,8
    # Line 1466
    lwc1	$f3,76($a0)
    # Line 1464
    swc1	$f1,112($a0)
    # Line 1468
    ld	$a3,-13456($at)
    lw	$a2,424($a0)
    # Line 1466
    swc1	$f3,80($a0)
    # Line 1467
    lw	$v1,88($a0)
    # Line 1468
    and	$a2,$a2,$a3
    sw	$a2,424($a0)
    # Line 1467
    sll	$v1,$v1,0x2
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
    # Line 1469
    b	.L0daf50c8
    # Line 1467
    sb	$v0,105($a0)
.L0daf5068:
    # Line 1472
    li	$v0,4
    # Line 1475
    swc1	$f0,108($a0)
    # Line 1476
    swc1	$f1,112($a0)
    # Line 1474
    li	$a5,3
    sw	$a5,68($a0)
    # Line 1480
    li	$v1,8
    # Line 1479
    lwc1	$f3,76($a0)
    # Line 1477
    lwc1	$f2,_lit_4f7fffff
    # Line 1473
    sw	$v0,64($a0)
    # Line 1472
    sw	$v0,60($a0)
    # Line 1481
    lui	$v0,0x80
    nor	$v0,$v0,$zero
    # Line 1478
    lw	$a3,424($a0)
    # Line 1477
    swc1	$f2,116($a0)
    # Line 1479
    swc1	$f3,80($a0)
    # Line 1478
    ori	$a3,$a3,0x20
    # Line 1480
    lw	$a2,88($a0)
    # Line 1481
    and	$a3,$a3,$v0
    sw	$a3,424($a0)
    # Line 1480
    sll	$a2,$a2,0x2
    andi	$a2,$a2,0x7
    subu	$v1,$v1,$a2
    andi	$v1,$v1,0x7
    sb	$v1,105($a0)
.L0daf50c8:
    # Line 1576
    lui	$a6,0x1
    # Line 1574
    li	$v1,-1793
    # Line 1573
    lw	$v0,1552($a0)
    andi	$a3,$a5,0xf
    li	$a4,-16
    and	$v0,$v0,$a4
    or	$v0,$v0,$a3
    # Line 1574
    and	$v0,$v1,$v0
    sw	$v0,1552($a0)
    # Line 1576
    addu	$a0,$a1,$a6
    lw	$a2,-26652($a0)
    # Line 1579
    move	$v0,$zero
    # Line 1576
    and	$a2,$a2,$a4
    or	$a2,$a2,$a3
    # Line 1577
    and	$v1,$v1,$a2
    # Line 1579
    jr	$ra
    # Line 1577
    sw	$v1,-26652($a0)
.L0daf510c:
    # Line 1374
    sltiu	$v1,$a4,5121
    bnez	$v1,.L0daf5194
    # Line 1413
    lwc1	$f2,_lit_437f0000
    # Line 1416
    ld	$v1,-13456($at)
    # Line 1374
    sltiu	$a2,$a4,5122
    bnez	$a2,.L0daf53c0
    # Line 1411
    lwc1	$f0,_lit_3b808081
    # Line 1374
    li	$a3,5122
    bne	$a4,$a3,.L0daf51a0
    # Line 1422
    li	$a5,5
    sw	$a5,68($a0)
    # Line 1420
    li	$v0,2
    # Line 1421
    sw	$v0,64($a0)
    # Line 1426
    lwc1	$f3,76($a0)
    # Line 1425
    lwc1	$f2,_lit_46fffe00
    # Line 1420
    sw	$v0,60($a0)
    # Line 1426
    swc1	$f3,80($a0)
    # Line 1425
    swc1	$f2,116($a0)
    # Line 1424
    lwc1	$f1,_lit_37800080
    # Line 1423
    lwc1	$f0,_lit_38000080
    # Line 1428
    ld	$a3,-13456($at)
    lw	$a2,424($a0)
    # Line 1424
    swc1	$f1,112($a0)
    # Line 1423
    swc1	$f0,108($a0)
    # Line 1428
    and	$a2,$a2,$a3
    # Line 1427
    lw	$v1,88($a0)
    # Line 1428
    sw	$a2,424($a0)
    # Line 1427
    li	$v0,8
    sll	$v1,$v1,0x1
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
    # Line 1429
    b	.L0daf50c8
    # Line 1427
    sb	$v0,105($a0)
.L0daf5194:
    # Line 1374
    li	$v1,5120
    beql	$a4,$v1,.L0daf5414
    # Line 1397
    sw	$zero,64($a0)
.L0daf51a0:
    # Line 1567
    jr	$ra
    li	$v0,1280
.L0daf51a8:
    # Line 1374
    li	$a5,0x8032
    sltu	$a2,$a4,$a5
    bnez	$a2,.L0daf5304
    sltu	$a3,$a5,$a4
    beqz	$a3,.L0daf54f0
    li	$v0,0x8033
    bne	$a4,$v0,.L0daf51a0
    nop
    # Line 1502
    lw	$a4,424($a0)
    lui	$v1,0x102
    and	$v1,$a4,$v1
    beqz	$v1,.L0daf55f0
    # Line 1507
    move	$a5,$zero
    sw	$zero,68($a0)
    # Line 1506
    li	$a2,1
    sw	$a2,64($a0)
    # Line 1505
    li	$v1,3
    sw	$v1,60($a0)
    # Line 1513
    lui	$v0,0x80
    or	$v0,$a4,$v0
    # Line 1514
    li	$v1,-33
    and	$v0,$v0,$v1
    # Line 1511
    lwc1	$f3,_lit_3f800000
    # Line 1514
    sw	$v0,424($a0)
    # Line 1510
    lwc1	$f2,_lit_437f0000
    # Line 1511
    swc1	$f3,80($a0)
    # Line 1509
    mtc1	$zero,$f1
    # Line 1510
    swc1	$f2,116($a0)
    # Line 1508
    lwc1	$f0,_lit_3b808081
    # Line 1509
    swc1	$f1,112($a0)
    # Line 1512
    lw	$a3,88($a0)
    # Line 1508
    swc1	$f0,108($a0)
    # Line 1512
    li	$a2,8
    andi	$a3,$a3,0x7
    subu	$a2,$a2,$a3
    andi	$a2,$a2,0x7
    # Line 1515
    b	.L0daf50c8
    # Line 1512
    sb	$a2,105($a0)
.L0daf5240:
    # Line 1432
    li	$a3,3
    # Line 1435
    swc1	$f0,108($a0)
    # Line 1437
    swc1	$f2,116($a0)
    # Line 1434
    li	$a5,1
    sw	$a5,68($a0)
    # Line 1436
    mtc1	$zero,$f1
    # Line 1433
    sw	$a3,64($a0)
    # Line 1432
    sw	$a3,60($a0)
    # Line 1439
    li	$a3,8
    # Line 1438
    lwc1	$f3,76($a0)
    # Line 1436
    swc1	$f1,112($a0)
    # Line 1440
    lw	$v1,424($a0)
    # Line 1438
    swc1	$f3,80($a0)
    # Line 1439
    lw	$v0,88($a0)
    # Line 1440
    and	$v1,$v1,$a2
    sw	$v1,424($a0)
    # Line 1439
    sll	$v0,$v0,0x1
    andi	$v0,$v0,0x7
    subu	$a3,$a3,$v0
    andi	$a3,$a3,0x7
    # Line 1441
    b	.L0daf50c8
    # Line 1439
    sb	$a3,105($a0)
.L0daf5298:
    # Line 1374
    li	$v0,5124
    bne	$a4,$v0,.L0daf51a0
    # Line 1446
    li	$a5,7
    sw	$a5,68($a0)
    # Line 1444
    li	$v1,4
    # Line 1445
    sw	$v1,64($a0)
    # Line 1450
    lwc1	$f3,76($a0)
    # Line 1449
    lwc1	$f2,_lit_4efffffe
    # Line 1444
    sw	$v1,60($a0)
    # Line 1450
    swc1	$f3,80($a0)
    # Line 1449
    swc1	$f2,116($a0)
    # Line 1448
    lwc1	$f1,_lit_2f800001
    # Line 1447
    lwc1	$f0,_lit_30000001
    # Line 1452
    ld	$v0,-13456($at)
    lw	$a3,424($a0)
    # Line 1448
    swc1	$f1,112($a0)
    # Line 1447
    swc1	$f0,108($a0)
    # Line 1452
    and	$a3,$a3,$v0
    # Line 1451
    lw	$a2,88($a0)
    # Line 1452
    sw	$a3,424($a0)
    # Line 1451
    li	$v1,8
    sll	$a2,$a2,0x2
    andi	$a2,$a2,0x7
    subu	$v1,$v1,$a2
    andi	$v1,$v1,0x7
    # Line 1453
    b	.L0daf50c8
    # Line 1451
    sb	$v1,105($a0)
.L0daf5304:
    # Line 1374
    li	$a2,6656
    bne	$a4,$a2,.L0daf51a0
    nop
    # Line 1377
    lw	$a3,140($a0)
    li	$v0,5
    beq	$a3,$v0,.L0daf5570
    # Line 1392
    ld	$v0,-13456($at)
    # Line 1377
    lw	$a4,40($a0)
    li	$v1,6400
    beq	$a4,$v1,.L0daf556c
    li	$a2,6401
    beq	$a4,$a2,.L0daf5570
    # Line 1392
    ld	$v0,-13456($at)
    # Line 1379
    jr	$ra
    li	$v0,1280
.L0daf5340:
    # Line 1524
    lwc1	$f0,_lit_3b808081
    # Line 1526
    lwc1	$f2,_lit_437f0000
    # Line 1530
    li	$a2,-33
    # Line 1518
    lw	$a4,424($a0)
    # Line 1522
    li	$v1,1
    # Line 1518
    lui	$a3,0x102
    and	$a3,$a4,$a3
    beqz	$a3,.L0daf555c
    # Line 1523
    move	$a5,$zero
    sw	$zero,68($a0)
    # Line 1524
    swc1	$f0,108($a0)
    # Line 1525
    mtc1	$zero,$f1
    # Line 1527
    lwc1	$f3,_lit_3f800000
    # Line 1526
    swc1	$f2,116($a0)
    # Line 1525
    swc1	$f1,112($a0)
    # Line 1527
    swc1	$f3,80($a0)
    # Line 1521
    li	$v0,3
    sw	$v0,60($a0)
    # Line 1531
    lui	$v0,0x4000
    # Line 1522
    sw	$v1,64($a0)
    # Line 1528
    lw	$v1,88($a0)
    # Line 1529
    lui	$a3,0x80
    or	$a3,$a4,$a3
    # Line 1530
    and	$a2,$a3,$a2
    # Line 1531
    or	$a2,$a2,$v0
    sw	$a2,424($a0)
    # Line 1528
    andi	$v1,$v1,0x7
    li	$v0,8
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
    # Line 1532
    b	.L0daf50c8
    # Line 1528
    sb	$v0,105($a0)
.L0daf53c0:
    # Line 1410
    move	$a5,$zero
    sw	$zero,68($a0)
    # Line 1411
    swc1	$f0,108($a0)
    # Line 1412
    mtc1	$zero,$f1
    # Line 1414
    lwc1	$f3,76($a0)
    # Line 1413
    swc1	$f2,116($a0)
    # Line 1412
    swc1	$f1,112($a0)
    # Line 1414
    swc1	$f3,80($a0)
    # Line 1416
    lw	$v0,424($a0)
    # Line 1408
    li	$a2,1
    # Line 1409
    sw	$a2,64($a0)
    # Line 1408
    sw	$a2,60($a0)
    # Line 1415
    li	$a2,8
    lw	$a3,88($a0)
    # Line 1416
    and	$v0,$v0,$v1
    sw	$v0,424($a0)
    # Line 1415
    andi	$a3,$a3,0x7
    subu	$a2,$a2,$a3
    andi	$a2,$a2,0x7
    # Line 1417
    b	.L0daf50c8
    # Line 1415
    sb	$a2,105($a0)
.L0daf5414:
    # Line 1396
    sw	$zero,60($a0)
    # Line 1398
    li	$a5,4
    # Line 1402
    lwc1	$f3,76($a0)
    # Line 1401
    lwc1	$f2,_lit_42fe0000
    # Line 1398
    sw	$a5,68($a0)
    # Line 1402
    swc1	$f3,80($a0)
    # Line 1401
    swc1	$f2,116($a0)
    # Line 1400
    lwc1	$f1,_lit_3b808081
    # Line 1399
    lwc1	$f0,_lit_3c008081
    # Line 1404
    ld	$a2,-13456($at)
    lw	$v1,424($a0)
    # Line 1400
    swc1	$f1,112($a0)
    # Line 1399
    swc1	$f0,108($a0)
    # Line 1404
    and	$v1,$v1,$a2
    # Line 1403
    lw	$v0,88($a0)
    # Line 1404
    sw	$v1,424($a0)
    # Line 1403
    li	$a3,8
    andi	$v0,$v0,0x7
    subu	$a3,$a3,$v0
    andi	$a3,$a3,0x7
    # Line 1405
    b	.L0daf50c8
    # Line 1403
    sb	$a3,105($a0)
.L0daf546c:
    # Line 1374
    li	$a3,0x8035
    bne	$a4,$a3,.L0daf51a0
    nop
    # Line 1535
    lw	$a4,424($a0)
    lui	$v0,0x102
    and	$v0,$a4,$v0
    beqz	$v0,.L0daf55f8
    # Line 1540
    move	$a5,$zero
    sw	$zero,68($a0)
    # Line 1539
    li	$v1,1
    sw	$v1,64($a0)
    # Line 1538
    li	$v0,4
    sw	$v0,60($a0)
    # Line 1546
    lui	$a3,0x80
    or	$a3,$a4,$a3
    # Line 1547
    li	$v0,-33
    and	$a3,$a3,$v0
    # Line 1544
    lwc1	$f3,_lit_3f800000
    # Line 1547
    sw	$a3,424($a0)
    # Line 1543
    lwc1	$f2,_lit_437f0000
    # Line 1544
    swc1	$f3,80($a0)
    # Line 1542
    mtc1	$zero,$f1
    # Line 1543
    swc1	$f2,116($a0)
    # Line 1541
    lwc1	$f0,_lit_3b808081
    # Line 1542
    swc1	$f1,112($a0)
    # Line 1545
    lw	$a2,88($a0)
    # Line 1541
    swc1	$f0,108($a0)
    # Line 1545
    li	$v1,8
    andi	$a2,$a2,0x7
    subu	$v1,$v1,$a2
    andi	$v1,$v1,0x7
    # Line 1548
    b	.L0daf50c8
    # Line 1545
    sb	$v1,105($a0)
.L0daf54f0:
    # Line 1485
    lw	$a4,424($a0)
    lui	$a2,0x102
    and	$a2,$a4,$a2
    beqz	$a2,.L0daf5564
    # Line 1491
    move	$a5,$zero
    sw	$zero,68($a0)
    # Line 1489
    li	$v1,1
    # Line 1490
    sw	$v1,64($a0)
    # Line 1489
    sw	$v1,60($a0)
    # Line 1497
    lui	$v0,0x80
    or	$v0,$a4,$v0
    # Line 1498
    li	$v1,-33
    and	$v0,$v0,$v1
    # Line 1495
    lwc1	$f3,_lit_3f800000
    # Line 1494
    lwc1	$f2,_lit_437f0000
    # Line 1498
    sw	$v0,424($a0)
    # Line 1495
    swc1	$f3,80($a0)
    # Line 1494
    swc1	$f2,116($a0)
    # Line 1493
    mtc1	$zero,$f1
    # Line 1492
    lwc1	$f0,_lit_3b808081
    # Line 1496
    lw	$a3,32($a0)
    # Line 1493
    swc1	$f1,112($a0)
    # Line 1492
    swc1	$f0,108($a0)
    # Line 1496
    andi	$a3,$a3,0x1
    sll	$a3,$a3,0x2
    # Line 1499
    b	.L0daf50c8
    # Line 1496
    sb	$a3,105($a0)
.L0daf555c:
    # Line 1519
    jr	$ra
    li	$v0,1282
.L0daf5564:
    # Line 1486
    jr	$ra
    li	$v0,1282
.L0daf556c:
    # Line 1392
    ld	$v0,-13456($at)
.L0daf5570:
    lw	$a4,424($a0)
    # Line 1382
    lw	$a2,32($a0)
    # Line 1381
    li	$v1,1
    sw	$v1,56($a0)
    # Line 1382
    sw	$a2,88($a0)
    # Line 1383
    li	$a5,3
    sw	$a5,60($a0)
    # Line 1384
    sw	$a5,64($a0)
    # Line 1385
    li	$a5,1
    sw	$a5,68($a0)
    # Line 1386
    lwc1	$f2,_lit_37800080
    # Line 1387
    lwc1	$f1,_lit_477fff00
    # Line 1388
    lwc1	$f0,_lit_40000000
    # Line 1386
    swc1	$f2,108($a0)
    # Line 1387
    swc1	$f1,116($a0)
    # Line 1388
    swc1	$f0,80($a0)
    # Line 1389
    li	$v1,8
    sll	$a3,$a2,0x1
    andi	$a3,$a3,0x7
    subu	$v1,$v1,$a3
    andi	$v1,$v1,0x7
    sb	$v1,105($a0)
    # Line 1390
    lw	$a3,504($a6)
    # Line 1392
    and	$a4,$a4,$v0
    sw	$a4,424($a0)
    # Line 1390
    andi	$a3,$a3,0x7
    sb	$a3,104($a0)
    # Line 1391
    addu	$a2,$a2,$a3
    # Line 1393
    b	.L0daf50c8
    # Line 1391
    sw	$a2,32($a0)
.L0daf55e8:
    # Line 1552
    jr	$ra
    li	$v0,1282
.L0daf55f0:
    # Line 1503
    jr	$ra
    li	$v0,1282
.L0daf55f8:
    # Line 1536
    jr	$ra
    li	$v0,1282
.end __glMgrExtractTypeInfo

# Function: __glMgrExtractInternalTypeInfo
# Declared: Line 1583 (Source lines: 1584-1631)
# Address: 0x0daf5600 - 0x0daf5784 (Size: 388 bytes, Frame: 0)
.globl __glMgrExtractInternalTypeInfo
.ent __glMgrExtractInternalTypeInfo
__glMgrExtractInternalTypeInfo:
    # Line 1584
    lui	$v1,0x11
    addiu	$v1,$v1,-28520
    lui	$a4,0x1
    lw	$v0,424($a0)
    addu	$a4,$a1,$a4
    lui	$a1,0x100
    and	$v0,$v0,$a1
    beqz	$v0,.L0daf5684
    addu	$at,$t9,$v1
    # Line 1586
    lw	$a5,48($a0)
.L0daf5628:
    # Line 1598
    lwc1	$f3,_lit_3f800000
.L0daf562c:
    # Line 1592
    li	$v0,5120
    beq	$a5,$v0,.L0daf56e0
    move	$a3,$a5
    # Line 1605
    lwc1	$f0,_lit_437f0000
    # Line 1592
    li	$v1,5121
    beq	$a3,$v1,.L0daf5714
    # Line 1606
    lwc1	$f1,_lit_3f800000
    # Line 1592
    li	$a1,5122
    beq	$a3,$a1,.L0daf5748
    # Line 1613
    lwc1	$f2,_lit_46fffe00
    # Line 1622
    lwc1	$f1,_lit_40000000
    # Line 1592
    li	$a2,5123
    beq	$a3,$a2,.L0daf56a8
    # Line 1623
    li	$v0,8
    # Line 1592
    lw	$a3,68($a0)
.L0daf5668:
    # Line 1630
    lw	$v0,-26652($a4)
    li	$v1,-16
    and	$v0,$v0,$v1
    andi	$v1,$a3,0xf
    or	$v0,$v0,$v1
    # Line 1631
    jr	$ra
    # Line 1630
    sw	$v0,-26652($a4)
.L0daf5684:
    # Line 1584
    lw	$a1,-28164($a4)
    lw	$a1,1160($a1)
    bnez	$a1,.L0daf5628
    lw	$a5,48($a0)
    # Line 1585
    lw	$a2,52($a0)
    bne	$a2,$a5,.L0daf562c
    # Line 1598
    lwc1	$f3,_lit_3f800000
    # Line 1586
    jr	$ra
    nop
.L0daf56a8:
    # Line 1621
    lwc1	$f0,_lit_477fff00
    # Line 1622
    swc1	$f1,80($a0)
    # Line 1621
    swc1	$f0,116($a0)
    # Line 1620
    li	$a3,1
    # Line 1619
    li	$a1,3
    # Line 1623
    lw	$v1,88($a0)
    # Line 1619
    sw	$a1,64($a0)
    # Line 1620
    sw	$a3,68($a0)
    # Line 1623
    sll	$v1,$v1,0x1
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
    b	.L0daf5668
    sb	$v0,105($a0)
.L0daf56e0:
    # Line 1597
    lwc1	$f2,_lit_42fe0000
    # Line 1595
    sw	$zero,64($a0)
    # Line 1598
    swc1	$f3,80($a0)
    # Line 1597
    swc1	$f2,116($a0)
    # Line 1596
    li	$a3,4
    # Line 1599
    lw	$v0,88($a0)
    # Line 1596
    sw	$a3,68($a0)
    # Line 1599
    li	$a2,8
    andi	$v0,$v0,0x7
    subu	$a2,$a2,$v0
    andi	$a2,$a2,0x7
    # Line 1600
    b	.L0daf5668
    # Line 1599
    sb	$a2,105($a0)
.L0daf5714:
    # Line 1604
    move	$a3,$zero
    sw	$zero,68($a0)
    # Line 1606
    swc1	$f1,80($a0)
    # Line 1605
    swc1	$f0,116($a0)
    # Line 1603
    li	$a2,1
    # Line 1607
    lw	$a1,88($a0)
    # Line 1603
    sw	$a2,64($a0)
    # Line 1607
    li	$v1,8
    andi	$a1,$a1,0x7
    subu	$v1,$v1,$a1
    andi	$v1,$v1,0x7
    # Line 1608
    b	.L0daf5668
    # Line 1607
    sb	$v1,105($a0)
.L0daf5748:
    # Line 1613
    swc1	$f2,116($a0)
    # Line 1611
    li	$a1,2
    # Line 1612
    li	$a3,5
    sw	$a3,68($a0)
    # Line 1611
    sw	$a1,64($a0)
    # Line 1614
    lwc1	$f3,_lit_40000000
    # Line 1615
    lw	$v1,88($a0)
    li	$v0,8
    # Line 1614
    swc1	$f3,80($a0)
    # Line 1615
    sll	$v1,$v1,0x1
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
    # Line 1616
    b	.L0daf5668
    # Line 1615
    sb	$v0,105($a0)
.end __glMgrExtractInternalTypeInfo

# Function: __glMgrExtractFormatInfo
# Declared: Line 1634 (Source lines: 1638-1862)
# Address: 0x0daf5784 - 0x0daf5f94 (Size: 2064 bytes, Frame: 0)
.globl __glMgrExtractFormatInfo
.ent __glMgrExtractFormatInfo
__glMgrExtractFormatInfo:
    # Line 1769
    lui	$v1,0x40
    # Line 1638
    lui	$t0,0xffbf
    # Line 1640
    lw	$a5,40($a0)
    # Line 1638
    ori	$t0,$t0,0xffff
    lw	$a4,424($a0)
    # Line 1768
    andi	$a7,$a5,0xf
    # Line 1640
    move	$a3,$a5
    # Line 1638
    and	$a4,$a4,$t0
    # Line 1640
    sltiu	$at,$a5,6406
    bnez	$at,.L0daf5870
    # Line 1638
    sw	$a4,424($a0)
    # Line 1640
    sltiu	$at,$a3,6407
    beqz	$at,.L0daf5958
    # Line 1764
    lui	$v0,0x102
    and	$v0,$a4,$v0
    beqz	$v0,.L0daf5c98
    # Line 1767
    lui	$at,0x1
    # Line 1768
    sw	$a7,72($a0)
    # Line 1775
    li	$a7,1
    # Line 1769
    lui	$a6,0x1
    # Line 1767
    ori	$at,$at,0xe000
    nor	$at,$at,$zero
    and	$at,$a4,$at
    ori	$at,$at,0x8000
    sw	$at,424($a0)
    # Line 1769
    addu	$a6,$a1,$a6
    lw	$v0,-26652($a6)
    # Line 1773
    li	$a2,255
    # Line 1776
    li	$at,3
    # Line 1769
    or	$v0,$v0,$v1
    # Line 1770
    li	$v1,-1
    # Line 1769
    sw	$v0,-26652($a6)
    # Line 1776
    sw	$at,264($a0)
    # Line 1774
    sw	$zero,228($a0)
    # Line 1773
    sw	$a2,224($a0)
    # Line 1772
    sw	$zero,236($a0)
    # Line 1771
    sw	$zero,232($a0)
    # Line 1770
    sw	$v1,120($a0)
    # Line 1775
    sw	$a7,252($a0)
    # Line 1777
    lw	$a7,72($a0)
.L0daf5824:
    # Line 1859
    lw	$v0,1552($a0)
    li	$v1,-241
    and	$v0,$v0,$v1
    andi	$v1,$a7,0xf
    sll	$v1,$v1,0x4
    or	$v0,$v0,$v1
    sw	$v0,1552($a0)
    # Line 1860
    lui	$a2,0x7f
    lw	$v1,-26652($a6)
    ori	$a2,$a2,0xffff
    and	$v0,$t0,$v0
    and	$v1,$v1,$a2
    srl	$v1,$v1,0x16
    andi	$v1,$v1,0x1
    sll	$v1,$v1,0x16
    or	$v0,$v0,$v1
    sw	$v0,1552($a0)
    # Line 1862
    jr	$ra
    move	$v0,$zero
.L0daf5870:
    # Line 1640
    sltiu	$a2,$a3,6403
    bnez	$a2,.L0daf58f4
    sltiu	$at,$a3,6404
    beqz	$at,.L0daf5a1c
    # Line 1719
    lui	$at,0x1
    # Line 1725
    li	$a2,255
    # Line 1721
    lui	$a6,0x1
    # Line 1716
    lui	$v0,0x102
    and	$v0,$a4,$v0
    beqz	$v0,.L0daf5e60
    # Line 1721
    addu	$a6,$a1,$a6
    # Line 1720
    andi	$a7,$a5,0xf
    sw	$a7,72($a0)
    # Line 1719
    ori	$at,$at,0xe000
    nor	$at,$at,$zero
    and	$at,$a4,$at
    ori	$at,$at,0x8000
    sw	$at,424($a0)
    # Line 1722
    li	$v1,-1
    # Line 1721
    lw	$at,-26652($a6)
    # Line 1727
    li	$a7,8
    # Line 1721
    lui	$v0,0x40
    or	$at,$at,$v0
    sw	$at,-26652($a6)
    # Line 1728
    sw	$zero,264($a0)
    # Line 1726
    sw	$zero,228($a0)
    # Line 1725
    sw	$a2,224($a0)
    # Line 1724
    sw	$zero,236($a0)
    # Line 1723
    sw	$zero,232($a0)
    # Line 1722
    sw	$v1,120($a0)
    # Line 1727
    sw	$a7,252($a0)
    # Line 1729
    b	.L0daf5824
    lw	$a7,72($a0)
.L0daf58f4:
    # Line 1640
    sltiu	$v0,$a3,6401
    bnez	$v0,.L0daf5a08
    sltiu	$v1,$a3,6402
    beqz	$v1,.L0daf5aa0
    # Line 1676
    li	$a6,1
    lw	$v0,__glCurrentContext
    # Line 1677
    lw	$a3,52($a0)
    # Line 1676
    lw	$v0,31172($v0)
    # Line 1696
    andi	$a7,$a5,0xf
    # Line 1677
    sltiu	$at,$a3,5123
    # Line 1676
    sllv	$a6,$a6,$v0
    # Line 1677
    bnez	$at,.L0daf5dbc
    # Line 1676
    addiu	$a6,$a6,-1
    # Line 1677
    sltiu	$v1,$a3,5124
    bnez	$v1,.L0daf5df0
    sltiu	$a2,$a3,5125
    bnez	$a2,.L0daf5eac
    sltiu	$at,$a3,5126
    bnez	$at,.L0daf5eb8
    li	$v0,6656
    bnel	$a3,$v0,.L0daf5e00
    # Line 1696
    sw	$a7,72($a0)
    # Line 1692
    li	$v1,-1
    b	.L0daf5dfc
    sw	$v1,120($a0)
.L0daf5958:
    # Line 1640
    sltiu	$a2,$a3,6409
    bnez	$a2,.L0daf5988
    sltiu	$at,$a3,6410
    bnez	$at,.L0daf5c0c
    li	$a6,0x8000
    sltu	$v0,$a3,$a6
    bnez	$v0,.L0daf5d24
    sltu	$v1,$a6,$a3
    bnez	$v1,.L0daf5a14
    nop
    b	.L0daf599c
    # Line 1839
    lui	$v0,0x102
.L0daf5988:
    # Line 1640
    sltiu	$a2,$a3,6408
    bnez	$a2,.L0daf5b90
    sltiu	$at,$a3,6409
    beqz	$at,.L0daf5a14
    # Line 1839
    lui	$v0,0x102
.L0daf599c:
    and	$v0,$a4,$v0
    beqz	$v0,.L0daf5ea4
    # Line 1844
    lui	$a6,0x1
    # Line 1842
    lui	$a7,0x1
    ori	$a7,$a7,0xe000
    nor	$a7,$a7,$zero
    and	$a7,$a4,$a7
    ori	$a7,$a7,0xa000
    sw	$a7,424($a0)
    # Line 1844
    addu	$a6,$a1,$a6
    lw	$at,-26652($a6)
    lui	$v0,0x40
    or	$at,$at,$v0
    sw	$at,-26652($a6)
    # Line 1852
    sw	$zero,264($a0)
    # Line 1851
    li	$a7,15
    sw	$a7,252($a0)
    # Line 1850
    sw	$zero,228($a0)
    # Line 1849
    li	$a2,255
    sw	$a2,224($a0)
    # Line 1848
    sw	$zero,236($a0)
    # Line 1847
    sw	$zero,232($a0)
    # Line 1846
    li	$v1,-1
    sw	$v1,120($a0)
    # Line 1845
    li	$a7,8
    # Line 1853
    b	.L0daf5824
    # Line 1845
    sw	$a7,72($a0)
.L0daf5a08:
    # Line 1640
    li	$at,6400
    beql	$a3,$at,.L0daf5ca0
    # Line 1644
    lw	$a3,52($a0)
.L0daf5a14:
    # Line 1856
    jr	$ra
    li	$v0,1280
.L0daf5a1c:
    # Line 1640
    sltiu	$v0,$a3,6405
    bnez	$v0,.L0daf5b10
    sltiu	$v1,$a3,6406
    beqz	$v1,.L0daf5a14
    # Line 1748
    lui	$a2,0x102
    and	$a2,$a4,$a2
    beqz	$a2,.L0daf5f18
    # Line 1753
    lui	$a6,0x1
    # Line 1751
    lui	$at,0x1
    ori	$at,$at,0xe000
    nor	$at,$at,$zero
    and	$at,$a4,$at
    ori	$at,$at,0x8000
    sw	$at,424($a0)
    # Line 1752
    andi	$a7,$a5,0xf
    sw	$a7,72($a0)
    # Line 1753
    addu	$a6,$a1,$a6
    lw	$v1,-26652($a6)
    # Line 1759
    li	$v0,2
    # Line 1753
    lui	$a2,0x40
    or	$v1,$v1,$a2
    sw	$v1,-26652($a6)
    # Line 1760
    sw	$v0,264($a0)
    # Line 1759
    sw	$v0,252($a0)
    # Line 1758
    sw	$zero,228($a0)
    # Line 1757
    li	$at,255
    sw	$at,224($a0)
    # Line 1756
    sw	$zero,236($a0)
    # Line 1755
    sw	$zero,232($a0)
    # Line 1754
    li	$a7,-1
    sw	$a7,120($a0)
    # Line 1761
    b	.L0daf5824
    lw	$a7,72($a0)
.L0daf5aa0:
    # Line 1640
    li	$v0,6402
    bne	$a3,$v0,.L0daf5a14
    # Line 1707
    lui	$a6,0x1
    # Line 1705
    lui	$at,0x1
    ori	$at,$at,0xe000
    nor	$at,$at,$zero
    and	$at,$a4,$at
    sw	$at,424($a0)
    # Line 1706
    andi	$a7,$a5,0xf
    sw	$a7,72($a0)
    # Line 1707
    addu	$a6,$a1,$a6
    lw	$v0,-26652($a6)
    lui	$v1,0x40
    or	$v0,$v0,$v1
    sw	$v0,-26652($a6)
    # Line 1712
    sw	$zero,264($a0)
    # Line 1711
    lui	$at,0x1c0
    sw	$at,228($a0)
    # Line 1710
    lui	$a7,0x1e0
    ori	$a7,$a7,0xff
    sw	$a7,224($a0)
    # Line 1709
    lui	$a2,0x1c
    sw	$a2,236($a0)
    # Line 1708
    lui	$v1,0x1f
    ori	$v1,$v1,0xc0cf
    sw	$v1,232($a0)
    # Line 1713
    b	.L0daf5824
    lw	$a7,72($a0)
.L0daf5b10:
    # Line 1640
    li	$v0,6404
    bne	$a3,$v0,.L0daf5a14
    # Line 1732
    lui	$v1,0x102
    and	$v1,$a4,$v1
    beqz	$v1,.L0daf5f5c
    # Line 1737
    lui	$a6,0x1
    # Line 1735
    lui	$at,0x1
    ori	$at,$at,0xe000
    nor	$at,$at,$zero
    and	$at,$a4,$at
    ori	$at,$at,0x8000
    sw	$at,424($a0)
    # Line 1736
    andi	$a7,$a5,0xf
    sw	$a7,72($a0)
    # Line 1737
    addu	$a6,$a1,$a6
    lw	$v1,-26652($a6)
    # Line 1744
    li	$v0,1
    # Line 1737
    lui	$a2,0x40
    or	$v1,$v1,$a2
    sw	$v1,-26652($a6)
    # Line 1744
    sw	$v0,264($a0)
    # Line 1743
    li	$at,4
    sw	$at,252($a0)
    # Line 1742
    sw	$zero,228($a0)
    # Line 1741
    li	$a7,255
    sw	$a7,224($a0)
    # Line 1740
    sw	$zero,236($a0)
    # Line 1739
    sw	$zero,232($a0)
    # Line 1738
    li	$a2,-1
    sw	$a2,120($a0)
    # Line 1745
    b	.L0daf5824
    lw	$a7,72($a0)
.L0daf5b90:
    # Line 1640
    li	$v0,6407
    bne	$a3,$v0,.L0daf5a14
    # Line 1822
    lui	$v1,0x102
    and	$v1,$a4,$v1
    beqz	$v1,.L0daf5f64
    # Line 1826
    lui	$a6,0x1
    # Line 1825
    lui	$a7,0x1
    ori	$a7,$a7,0xe000
    nor	$a7,$a7,$zero
    and	$a7,$a4,$a7
    ori	$a7,$a7,0x8000
    sw	$a7,424($a0)
    # Line 1826
    addu	$a6,$a1,$a6
    lw	$a2,-26652($a6)
    lui	$a7,0x40
    or	$a2,$a2,$a7
    sw	$a2,-26652($a6)
    # Line 1834
    sw	$zero,264($a0)
    # Line 1833
    li	$v1,14
    sw	$v1,252($a0)
    # Line 1832
    sw	$zero,228($a0)
    # Line 1831
    li	$v0,255
    sw	$v0,224($a0)
    # Line 1830
    sw	$zero,236($a0)
    # Line 1829
    sw	$zero,232($a0)
    # Line 1827
    lw	$a7,40($a0)
    # Line 1828
    li	$at,-1
    sw	$at,120($a0)
    # Line 1827
    andi	$a7,$a7,0xf
    # Line 1835
    b	.L0daf5824
    # Line 1827
    sw	$a7,72($a0)
.L0daf5c0c:
    # Line 1780
    lui	$at,0x102
    and	$at,$a4,$at
    beqz	$at,.L0daf5f2c
    # Line 1785
    lui	$a6,0x1
    # Line 1783
    lui	$v0,0x1
    ori	$v0,$v0,0xe000
    nor	$v0,$v0,$zero
    and	$v0,$a4,$v0
    ori	$v0,$v0,0x8000
    sw	$v0,424($a0)
    # Line 1784
    andi	$at,$a5,0xf
    sw	$at,72($a0)
    # Line 1785
    addu	$a6,$a1,$a6
    lw	$v0,-26652($a6)
    # Line 1786
    li	$at,-1
    # Line 1785
    lui	$a3,0x40
    or	$v0,$v0,$a3
    sw	$v0,-26652($a6)
    # Line 1786
    sw	$at,120($a0)
    # Line 1787
    sw	$zero,232($a0)
    # Line 1788
    sw	$zero,236($a0)
    # Line 1789
    li	$a2,255
    sw	$a2,224($a0)
    # Line 1790
    sw	$zero,228($a0)
    # Line 1791
    li	$v1,30
    sw	$v1,252($a0)
    # Line 1792
    sw	$zero,264($a0)
    lbu	$v0,-32244($a6)
    beqzl	$v0,.L0daf5ec0
    # Line 1794
    lbu	$a2,-32292($a6)
    lw	$v1,424($a0)
    or	$v1,$v1,$a3
    sw	$v1,424($a0)
.L0daf5c90:
    # Line 1799
    b	.L0daf5824
    lw	$a7,72($a0)
.L0daf5c98:
    # Line 1765
    jr	$ra
    li	$v0,1282
.L0daf5ca0:
    # Line 1643
    lw	$a6,__glCurrentContext
    # Line 1644
    sltiu	$at,$a3,5123
    bnez	$at,.L0daf5e68
    # Line 1643
    lw	$a6,30788($a6)
    # Line 1644
    sltiu	$v0,$a3,5124
    beqz	$v0,.L0daf5efc
    # Line 1652
    sll	$v1,$a6,0x10
.L0daf5cbc:
    or	$v1,$v1,$a6
    sw	$v1,120($a0)
.L0daf5cc4:
    # Line 1662
    lui	$a2,0x1
.L0daf5cc8:
    ori	$a2,$a2,0xe000
    nor	$a2,$a2,$zero
    and	$a2,$a4,$a2
    ori	$a2,$a2,0x4000
    lui	$at,0x2
    and	$at,$a2,$at
    beqz	$at,.L0daf5f20
    sw	$a2,424($a0)
    # Line 1664
    li	$at,8
    sw	$at,72($a0)
.L0daf5cf0:
    # Line 1668
    lui	$a6,0x1
    addu	$a6,$a1,$a6
    lw	$v1,-26652($a6)
    lui	$a2,0x40
    or	$v1,$v1,$a2
    sw	$v1,-26652($a6)
    # Line 1672
    sw	$zero,228($a0)
    # Line 1671
    li	$v0,255
    sw	$v0,224($a0)
    # Line 1670
    sw	$zero,236($a0)
    # Line 1669
    sw	$zero,232($a0)
    # Line 1673
    b	.L0daf5824
    lw	$a7,72($a0)
.L0daf5d24:
    # Line 1640
    li	$at,6410
    bne	$a3,$at,.L0daf5a14
    # Line 1802
    lui	$v0,0x102
    and	$v0,$a4,$v0
    beqz	$v0,.L0daf5f8c
    # Line 1807
    lui	$a6,0x1
    # Line 1805
    lui	$v0,0x1
    ori	$v0,$v0,0xe000
    nor	$v0,$v0,$zero
    and	$v0,$a4,$v0
    ori	$v0,$v0,0x8000
    sw	$v0,424($a0)
    # Line 1806
    andi	$at,$a5,0xf
    sw	$at,72($a0)
    # Line 1807
    addu	$a6,$a1,$a6
    lw	$v1,-26652($a6)
    # Line 1808
    li	$v0,-1
    # Line 1807
    lui	$a3,0x40
    or	$v1,$v1,$a3
    sw	$v1,-26652($a6)
    # Line 1808
    sw	$v0,120($a0)
    # Line 1809
    sw	$zero,232($a0)
    # Line 1810
    sw	$zero,236($a0)
    # Line 1811
    li	$at,255
    sw	$at,224($a0)
    # Line 1812
    sw	$zero,228($a0)
    # Line 1813
    li	$a2,31
    sw	$a2,252($a0)
    # Line 1814
    sw	$zero,264($a0)
    lbu	$v1,-32292($a6)
    beqz	$v1,.L0daf5db4
    nop
    lw	$v1,-32264($a6)
    andi	$v1,$v1,0x10
    beqzl	$v1,.L0daf5f80
    # Line 1817
    lw	$v1,424($a0)
.L0daf5db4:
    b	.L0daf5824
    lw	$a7,72($a0)
.L0daf5dbc:
    # Line 1677
    sltiu	$a2,$a3,5121
    bnez	$a2,.L0daf5e90
    sltiu	$at,$a3,5122
    beqz	$at,.L0daf5de4
    # Line 1681
    sll	$v1,$a6,0x8
.L0daf5dd0:
    or	$v1,$v1,$a6
    sll	$v0,$v1,0x10
    or	$v0,$v0,$v1
    # Line 1682
    b	.L0daf5dfc
    # Line 1681
    sw	$v0,120($a0)
.L0daf5de4:
    # Line 1677
    li	$a2,5122
    bnel	$a3,$a2,.L0daf5e00
    # Line 1696
    sw	$a7,72($a0)
.L0daf5df0:
    # Line 1685
    sll	$at,$a6,0x10
    or	$at,$at,$a6
    sw	$at,120($a0)
.L0daf5dfc:
    # Line 1696
    sw	$a7,72($a0)
.L0daf5e00:
    # Line 1701
    lui	$a7,0x180
    # Line 1699
    lui	$v1,0x18
    # Line 1700
    lui	$a2,0x1e0
    # Line 1695
    lui	$a6,0x1
    lui	$at,0x1
    ori	$at,$at,0xe000
    nor	$at,$at,$zero
    and	$at,$a4,$at
    or	$at,$at,$a6
    sw	$at,424($a0)
    # Line 1697
    addu	$a6,$a6,$a1
    lw	$at,-26652($a6)
    # Line 1700
    ori	$a2,$a2,0xff
    # Line 1697
    lui	$v0,0x40
    or	$at,$at,$v0
    # Line 1698
    lui	$v0,0x1f
    ori	$v0,$v0,0xc0ff
    # Line 1697
    sw	$at,-26652($a6)
    # Line 1700
    sw	$a2,224($a0)
    # Line 1699
    sw	$v1,236($a0)
    # Line 1698
    sw	$v0,232($a0)
    # Line 1701
    sw	$a7,228($a0)
    # Line 1702
    b	.L0daf5824
    lw	$a7,72($a0)
.L0daf5e60:
    # Line 1717
    jr	$ra
    li	$v0,1282
.L0daf5e68:
    # Line 1644
    sltiu	$v0,$a3,5121
    bnez	$v0,.L0daf5ee8
    sltiu	$v1,$a3,5122
    beqz	$v1,.L0daf5f34
    # Line 1648
    sll	$at,$a6,0x8
.L0daf5e7c:
    or	$at,$at,$a6
    sll	$a2,$at,0x10
    or	$a2,$a2,$at
    # Line 1649
    b	.L0daf5cc4
    # Line 1648
    sw	$a2,120($a0)
.L0daf5e90:
    # Line 1677
    li	$v0,5120
    bnel	$a3,$v0,.L0daf5e00
    # Line 1696
    sw	$a7,72($a0)
    b	.L0daf5dd0
    # Line 1681
    sll	$v1,$a6,0x8
.L0daf5ea4:
    # Line 1840
    jr	$ra
    li	$v0,1282
.L0daf5eac:
    # Line 1677
    li	$v1,5124
    bnel	$a3,$v1,.L0daf5e00
    # Line 1696
    sw	$a7,72($a0)
.L0daf5eb8:
    # Line 1690
    b	.L0daf5dfc
    # Line 1689
    sw	$a6,120($a0)
.L0daf5ec0:
    # Line 1794
    beqz	$a2,.L0daf5c90
    nop
    lw	$at,-32264($a6)
    andi	$at,$at,0x10
    bnez	$at,.L0daf5c90
    nop
    # Line 1797
    lw	$v0,424($a0)
    or	$v0,$v0,$a3
    b	.L0daf5c90
    sw	$v0,424($a0)
.L0daf5ee8:
    # Line 1644
    li	$v1,5120
    bne	$a3,$v1,.L0daf5cc8
    # Line 1662
    lui	$a2,0x1
    b	.L0daf5e7c
    # Line 1648
    sll	$at,$a6,0x8
.L0daf5efc:
    # Line 1644
    sltiu	$a2,$a3,5125
    bnez	$a2,.L0daf5f48
    sltiu	$at,$a3,5126
    beqz	$at,.L0daf5f6c
    li	$at,6656
.L0daf5f10:
    # Line 1657
    b	.L0daf5cc4
    # Line 1656
    sw	$a6,120($a0)
.L0daf5f18:
    # Line 1749
    jr	$ra
    li	$v0,1282
.L0daf5f20:
    # Line 1666
    andi	$v0,$a5,0xf
    b	.L0daf5cf0
    sw	$v0,72($a0)
.L0daf5f2c:
    # Line 1781
    jr	$ra
    li	$v0,1282
.L0daf5f34:
    # Line 1644
    li	$v1,5122
    bne	$a3,$v1,.L0daf5cc8
    # Line 1662
    lui	$a2,0x1
    b	.L0daf5cbc
    # Line 1652
    sll	$v1,$a6,0x10
.L0daf5f48:
    # Line 1644
    li	$a2,5124
    bne	$a3,$a2,.L0daf5cc8
    # Line 1662
    lui	$a2,0x1
    b	.L0daf5f10
    nop
.L0daf5f5c:
    # Line 1733
    jr	$ra
    li	$v0,1282
.L0daf5f64:
    # Line 1823
    jr	$ra
    li	$v0,1282
.L0daf5f6c:
    # Line 1644
    bne	$a3,$at,.L0daf5cc8
    # Line 1662
    lui	$a2,0x1
    # Line 1659
    li	$v0,-1
    b	.L0daf5cc4
    sw	$v0,120($a0)
.L0daf5f80:
    # Line 1817
    or	$v1,$v1,$a3
    b	.L0daf5db4
    sw	$v1,424($a0)
.L0daf5f8c:
    # Line 1803
    jr	$ra
    li	$v0,1282
.end __glMgrExtractFormatInfo

# Function: __glMgrGetCurrentConvFilter
# Declared: Line 1866 (Source lines: 1868-1886)
# Address: 0x0daf5f94 - 0x0daf600c (Size: 120 bytes, Frame: 0)
.globl __glMgrGetCurrentConvFilter
.ent __glMgrGetCurrentConvFilter
__glMgrGetCurrentConvFilter:
    # Line 1868
    lw	$a3,__glCurrentContext
    lui	$v0,0x1
    addu	$v0,$a3,$v0
    lbu	$at,-32108($v0)
    beqz	$at,.L0daf5fb8
    li	$a1,3
    lw	$v1,140($a0)
    beql	$v1,$a1,.L0daf6004
    # Line 1878
    li	$v0,0x827c
.L0daf5fb8:
    lbu	$a2,-32028($v0)
    beqz	$a2,.L0daf5fe0
    li	$v1,3
    lw	$at,140($a0)
    beql	$at,$v1,.L0daf5fe4
    # Line 1880
    lbu	$v1,-31948($v0)
    li	$v0,0x82cc
    addu	$v0,$a3,$v0
.L0daf5fd8:
    # Line 1886
    jr	$ra
    nop
.L0daf5fe0:
    # Line 1880
    lbu	$v1,-31948($v0)
.L0daf5fe4:
    # Line 1882
    li	$v0,0x831c
    # Line 1880
    beqz	$v1,.L0daf5ffc
    li	$a2,3
    lw	$a1,140($a0)
    bne	$a1,$a2,.L0daf5fd8
    # Line 1882
    addu	$v0,$a3,$v0
.L0daf5ffc:
    # Line 1886
    jr	$ra
    # Line 1884
    move	$v0,$zero
.L0daf6004:
    # Line 1886
    jr	$ra
    # Line 1878
    addu	$v0,$a3,$v0
.end __glMgrGetCurrentConvFilter

# Function: __glMgrMakePixelDesc
# Declared: Line 1890 (Source lines: 1896-2041)
# Address: 0x0daf600c - 0x0daf66bc (Size: 1712 bytes, Frame: 176)
.globl __glMgrMakePixelDesc
.ent __glMgrMakePixelDesc
__glMgrMakePixelDesc:
    # Line 1908
    li	$at,3
    # Line 1896
    addiu	$sp,$sp,-176
    sd	$s5,16($sp)
    # Line 1903
    lw	$s5,__glCurrentContext
    sd	$s6,80($sp)
    # Line 1896
    move	$s6,$a7
    sd	$s3,72($sp)
    move	$s3,$a6
    sd	$a5,24($sp)
    sd	$s7,8($sp)
    move	$s7,$a4
    sd	$a3,48($sp)
    sd	$s8,56($sp)
    move	$s8,$a2
    sd	$s1,32($sp)
    move	$s1,$a1
    sd	$s0,40($sp)
    move	$s0,$a0
    sd	$gp,64($sp)
    lui	$v0,0x11
    addiu	$v0,$v0,-31092
    # Line 1908
    beq	$a1,$at,.L0daf62f8
    # Line 1896
    addu	$gp,$t9,$v0
    # Line 1908
    li	$v1,4
    beq	$s1,$v1,.L0daf62f8
    li	$t0,8
    beq	$s1,$t0,.L0daf62f8
    li	$t1,9
    beq	$s1,$t1,.L0daf62f8
    # Line 1927
    li	$at,0x91fc
    # Line 1926
    lw	$a2,424($s0)
    lui	$t0,0x100
    nor	$t0,$t0,$zero
    and	$a2,$a2,$t0
    # Line 1927
    lui	$t0,0x4000
    nor	$t0,$t0,$zero
    and	$a2,$a2,$t0
    sw	$a2,424($s0)
    addu	$at,$at,$s5
    lw	$at,0($at)
    lw	$a0,180($sp)
    sd	$s4,96($sp)
    lw	$at,1160($at)
    # Line 1934
    lw	$s4,188($sp)
    sd	$s2,104($sp)
    # Line 1927
    beqz	$at,.L0daf6398
    lw	$s2,196($sp)
    # Line 1933
    li	$v0,5123
.L0daf60cc:
    # Line 1934
    lui	$a1,0x100
.L0daf60d0:
    # Line 1928
    and	$a3,$a1,$a2
    beqz	$a3,.L0daf62d8
    # Line 1939
    li	$t1,298
    sw	$t1,488($s0)
.L0daf60e0:
    # Line 1945
    lw	$at,40($s0)
    bnel	$at,$a0,.L0daf6178
    sd	$ra,88($sp)
    lw	$v1,44($s0)
    bnel	$v1,$s4,.L0daf6178
    sd	$ra,88($sp)
    lw	$t0,52($s0)
    bnel	$t0,$s2,.L0daf6178
    sd	$ra,88($sp)
    lw	$t1,48($s0)
    bnel	$t1,$v0,.L0daf6178
    sd	$ra,88($sp)
    lw	$at,140($s0)
    bne	$at,$s1,.L0daf6174
    li	$v1,6656
    beql	$s2,$v1,.L0daf6178
    sd	$ra,88($sp)
    # Line 1948
    beqz	$a3,.L0daf65ec
    lw	$a1,32($s0)
    # Line 1949
    bnel	$a1,$s3,.L0daf6160
    # Line 1953
    lw	$at,420($s0)
    # Line 1949
    lw	$t0,36($s0)
    bnel	$t0,$s6,.L0daf6160
    # Line 1953
    lw	$at,420($s0)
    # Line 1949
    lw	$t1,24($s0)
    xori	$t1,$t1,0x1f
    sltu	$t1,$zero,$t1
    and	$t1,$t1,$s7
    andi	$t1,$t1,0x1f
    beqz	$t1,.L0daf65ec
    nop
    # Line 1953
    lw	$at,420($s0)
.L0daf6160:
    sd	$ra,88($sp)
    lui	$v1,0x1
    or	$at,$at,$v1
    b	.L0daf6180
    sw	$at,420($s0)
.L0daf6174:
    sd	$ra,88($sp)
.L0daf6178:
    # Line 1948
    li	$t0,-1
    sw	$t0,420($s0)
.L0daf6180:
    # Line 1969
    sw	$zero,484($s0)
.L0daf6184:
    # Line 1967
    sw	$s2,52($s0)
    # Line 1966
    sw	$a0,40($s0)
    # Line 1965
    sw	$s6,36($s0)
    # Line 1964
    sw	$s3,32($s0)
    # Line 1962
    sw	$s7,24($s0)
    # Line 1960
    sw	$s8,16($s0)
    # Line 1959
    sw	$s1,140($s0)
    # Line 1958
    sw	$v0,48($s0)
    # Line 1957
    sw	$s4,44($s0)
    sd	$ra,88($sp)
    # Line 1968
    lw	$t1,204($sp)
    # Line 1963
    ld	$t3,24($sp)
    # Line 1961
    ld	$t2,48($sp)
    # Line 1971
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 1963
    sw	$t3,28($s0)
    # Line 1961
    sw	$t2,20($s0)
    # Line 1971
    jal	__glElementsPerGroup
    # Line 1968
    sw	$t1,100($s0)
    # Line 1972
    # lw $t9, -28588($gp) # &__glBytesPerElement
    move	$a0,$s2
    # Line 1971
    sw	$v0,56($s0)
    # Line 1972
    jal	__glBytesPerElement
    ld	$s4,96($sp)
    # Line 1973
    lw	$t8,56($s0)
    multu	$t8,$s3
    # Line 1976
    move	$a0,$s0
    # Line 1974
    sb	$zero,104($s0)
    # Line 1972
    swc1	$f0,76($s0)
    # Line 1976
    # lw $t9, -29772($gp) # &__glMgrGetCurrentConvFilter
    # Line 1973
    mflo	$s2
    sw	$s2,88($s0)
    # Line 1976
    bal __glMgrGetCurrentConvFilter
    ld	$s2,104($sp)
    lw	$a2,424($s0)
    sw	$v0,1104($s0)
    # Line 1986
    ld	$s6,80($sp)
    ld	$s8,56($sp)
    # Line 1976
    beqz	$v0,.L0daf6238
    ld	$ra,88($sp)
    # Line 1979
    lui	$at,0x10
    or	$at,$a2,$at
    # Line 1981
    beqz	$v0,.L0daf6274
    # Line 1979
    sw	$at,424($s0)
    b	.L0daf6250
    # Line 1983
    lw	$t1,16($v0)
.L0daf6238:
    # Line 1981
    lui	$v1,0x10
    nor	$v1,$v1,$zero
    and	$v1,$a2,$v1
    beqz	$v0,.L0daf6274
    sw	$v1,424($s0)
    # Line 1983
    lw	$t1,16($v0)
.L0daf6250:
    lw	$t0,32($s0)
    slt	$t0,$t0,$t1
    bnezl	$t0,.L0daf62b8
    # Line 1986
    li	$v0,1281
    # Line 1983
    lw	$v1,20($v0)
    lw	$at,36($s0)
    slt	$at,$at,$v1
    bnez	$at,.L0daf62b8
    # Line 1986
    li	$v0,1281
.L0daf6274:
    # Line 1988
    # lw $t9, -29784($gp) # &__glMgrExtractTypeInfo
    move	$a0,$s0
    bal __glMgrExtractTypeInfo
    move	$a1,$s5
    beqz	$v0,.L0daf63b8
    ld	$ra,88($sp)
    ld	$gp,64($sp)
    # Line 1989
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s3,72($sp)
    ld	$s5,16($sp)
    ld	$s6,80($sp)
    ld	$s7,8($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
    # Line 1986
    li	$v0,1281
.L0daf62b8:
    ld	$s7,8($sp)
    ld	$s1,32($sp)
    ld	$gp,64($sp)
    ld	$s0,40($sp)
    ld	$s3,72($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0daf62d8:
    # Line 1939
    li	$t0,0x91fc
    addu	$t0,$t0,$s5
    lw	$t0,0($t0)
    lw	$t0,1160($t0)
    beqz	$t0,.L0daf6408
    # Line 1941
    li	$t1,299
    b	.L0daf60e0
    sw	$t1,488($s0)
.L0daf62f8:
    sd	$s2,104($sp)
    sd	$s4,96($sp)
    sd	$ra,88($sp)
    # Line 1911
    lui	$t3,0x100
    # Line 1916
    lw	$a0,188($sp)
    # Line 1911
    lw	$t2,424($s0)
    # Line 1916
    # lw $t9, -30468($gp) # &getbaseformat
    sd	$a0,0($sp)
    # Line 1911
    or	$t2,$t2,$t3
    # Line 1916
    jal	getbaseformat
    # Line 1911
    sw	$t2,424($s0)
    # Line 1916
    move	$s4,$v0
    # Line 1917
    # lw $t9, -30464($gp) # &getbasetype
    lw	$s2,196($sp)
    ld	$a0,0($sp)
    jal	getbasetype
    move	$a1,$s2
    # Line 1919
    ld	$a0,0($sp)
    lui	$a1,0x100
    li	$at,0x803b
    beq	$a0,$at,.L0daf63a4
    ld	$ra,88($sp)
    li	$v1,0x803f
    beq	$a0,$v1,.L0daf63a4
    li	$t0,0x8043
    beq	$a0,$t0,.L0daf63a4
    li	$t1,0x804a
    beq	$a0,$t1,.L0daf63a4
    li	$at,0x804f
    beq	$a0,$at,.L0daf63a4
    li	$v1,0x8056
    beql	$a0,$v1,.L0daf63a8
    # Line 1920
    lw	$a2,424($s0)
    # Line 1922
    lw	$a2,424($s0)
    lui	$t0,0x4000
    nor	$t0,$t0,$zero
    and	$a2,$a2,$t0
    sw	$a2,424($s0)
.L0daf6390:
    # Line 1919
    b	.L0daf60d0
    lw	$a0,180($sp)
.L0daf6398:
    # Line 1929
    move	$v0,$s2
    # Line 1930
    b	.L0daf60cc
    move	$s4,$a0
.L0daf63a4:
    # Line 1920
    lw	$a2,424($s0)
.L0daf63a8:
    lui	$t0,0x4000
    or	$a2,$a2,$t0
    b	.L0daf6390
    sw	$a2,424($s0)
.L0daf63b8:
    # Line 1991
    # lw $t9, -29780($gp) # &__glMgrExtractInternalTypeInfo
    move	$a0,$s0
    bal __glMgrExtractInternalTypeInfo
    move	$a1,$s5
    # Line 1993
    # lw $t9, -29776($gp) # &__glMgrExtractFormatInfo
    move	$a0,$s0
    bal __glMgrExtractFormatInfo
    move	$a1,$s5
    beqz	$v0,.L0daf6414
    ld	$ra,88($sp)
    ld	$gp,64($sp)
    # Line 1994
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s3,72($sp)
    ld	$s5,16($sp)
    ld	$s6,80($sp)
    ld	$s7,8($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0daf6408:
    # Line 1943
    li	$t1,297
    b	.L0daf60e0
    sw	$t1,488($s0)
.L0daf6414:
    # Line 1996
    lui	$v0,0x1
    addu	$v0,$s5,$v0
    lw	$t1,-27000($v0)
    li	$at,-9
    and	$t1,$t1,$at
    # Line 1997
    li	$at,-3
    and	$t1,$t1,$at
    # Line 1998
    ori	$t0,$t1,0x1
    # Line 1999
    li	$at,-5
    and	$t0,$t0,$at
    # Line 2000
    ori	$v1,$t0,0x4000
    # Line 1997
    sw	$t1,-27000($v0)
    # Line 2002
    lw	$at,-27956($v0)
    # Line 2000
    sw	$v1,-27000($v0)
    # Line 2002
    ori	$at,$at,0x10
    # Line 2003
    li	$v1,-16
    and	$at,$at,$v1
    ori	$at,$at,0x8
    sw	$at,-27956($v0)
    # Line 2005
    lw	$t1,88($s0)
    mtc1	$t1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f5,76($s0)
    # Line 2008
    lw	$t0,56($s0)
    # Line 2005
    mul.s	$f0,$f0,$f5
    # Line 2008
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f4
    nop
    cvt.s.l	$f4,$f4
    # Line 2005
    ldc1	$f7,_lit8_3fec000000000000
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f7
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    # Line 2008
    mul.s	$f4,$f4,$f5
    # Line 2005
    sw	$v1,92($s0)
    # Line 2006
    addiu	$v1,$v1,3
    sra	$v1,$v1,0x2
    sw	$v1,96($s0)
    # Line 2008
    swc1	$f4,84($s0)
    lw	$v0,-31380($v0)
    beqzl	$v0,.L0daf6618
    # Line 2010
    lw	$a0,1112($s5)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sw	$v1,144($s0)
.L0daf64e8:
    # Line 2023
    lw	$t0,1120($s5)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    sw	$a0,148($s0)
    lw	$a0,1076($s5)
    beqz	$a0,.L0daf6524
    # Line 2025
    move	$v0,$s3
    move	$v0,$a0
.L0daf6524:
    # Line 2026
    lw	$a0,1088($s5)
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$v0,$f6
    nop
    cvt.s.w	$f6,$f6
    c.le.s	$f0,$f5
    nop
    bc1f	.L0daf6560
    mul.s	$f6,$f4,$f6
    # Line 2028
    trunc.w.s	$f1,$f6
    mfc1	$t1,$f1
    b	.L0daf6590
    sw	$t1,152($s0)
.L0daf6560:
    # Line 2030
    addiu	$v1,$a0,-1
    mtc1	$v1,$f2
    nop
    cvt.d.w	$f2,$f2
    cvt.d.s	$f3,$f6
    add.d	$f3,$f3,$f7
    add.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$at,$f2
    nor	$v1,$v1,$zero
    and	$at,$at,$v1
    sw	$at,152($s0)
.L0daf6590:
    # Line 2033
    lw	$at,1084($s5)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    lw	$t1,0($s0)
    mfc1	$t0,$f3
    beqz	$t1,.L0daf6660
    sw	$t0,156($s0)
.L0daf65c0:
    # Line 2041
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s3,72($sp)
    ld	$s5,16($sp)
    ld	$s6,80($sp)
    ld	$s7,8($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0daf65ec:
    # Line 1954
    bnel	$a1,$s3,.L0daf6604
    # Line 1955
    lw	$t0,420($s0)
    # Line 1954
    lw	$v1,36($s0)
    beql	$v1,$s6,.L0daf6184
    # Line 1969
    sw	$zero,484($s0)
    # Line 1955
    lw	$t0,420($s0)
.L0daf6604:
    sd	$ra,88($sp)
    lui	$t1,0x1
    or	$t0,$t0,$t1
    b	.L0daf6180
    sw	$t0,420($s0)
.L0daf6618:
    # Line 2010
    beqz	$a0,.L0daf6624
    # Line 2012
    move	$v0,$s3
    move	$v0,$a0
.L0daf6624:
    # Line 2015
    lw	$a0,1124($s5)
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    mtc1	$v0,$f6
    nop
    cvt.s.w	$f6,$f6
    c.le.s	$f0,$f5
    nop
    bc1f	.L0daf6688
    mul.s	$f6,$f4,$f6
    # Line 2017
    trunc.w.s	$f1,$f6
    mfc1	$at,$f1
    b	.L0daf64e8
    sw	$at,144($s0)
.L0daf6660:
    # Line 2038
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s0
    bal __glMgrMakeTiles
    move	$a1,$s5
    # Line 2039
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s0
    bal __glMgrMakePages
    move	$a1,$s5
    b	.L0daf65c0
    ld	$ra,88($sp)
.L0daf6688:
    # Line 2019
    addiu	$t0,$a0,-1
    mtc1	$t0,$f2
    nop
    cvt.d.w	$f2,$f2
    cvt.d.s	$f3,$f6
    add.d	$f3,$f3,$f7
    add.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$v1,$f2
    nor	$t0,$t0,$zero
    and	$v1,$v1,$t0
    b	.L0daf64e8
    sw	$v1,144($s0)
.end __glMgrMakePixelDesc

.rdata
_lit8_3eb0c6f7a0b5ed8d:
    .word 0x3eb0c6f7, 0xa0b5ed8d
_lit8_3fec000000000000:
    .word 0x3fec0000, 0x00000000
_lit8_4010000000000000:
    .word 0x40100000, 0x00000000
_lit_2f800001:
    .word 0x2f800001
_lit_30000001:
    .word 0x30000001
_lit_37800080:
    .word 0x37800080
_lit_38000080:
    .word 0x38000080
_lit_3b808081:
    .word 0x3b808081
_lit_3c008081:
    .word 0x3c008081
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40400000:
    .word 0x40400000
_lit_40800000:
    .word 0x40800000
_lit_42fe0000:
    .word 0x42fe0000
_lit_437f0000:
    .word 0x437f0000
_lit_44480000:
    .word 0x44480000
_lit_46fffe00:
    .word 0x46fffe00
_lit_477fff00:
    .word 0x477fff00
_lit_4efffffe:
    .word 0x4efffffe
_lit_4f7fffff:
    .word 0x4f7fffff

