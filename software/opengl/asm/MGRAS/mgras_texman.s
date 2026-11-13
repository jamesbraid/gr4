# Source: ../MGRAS/mgras_texman.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_texman.c
# Total Functions: 59

.text

# Function: mgrTM_DevZero
# Declared: Line 82 (Source lines: 83-93)
# Address: 0x0dab6434 - 0x0dab64d0 (Size: 156 bytes, Frame: 16)
.ent mgrTM_DevZero
mgrTM_DevZero:
    # Line 83
    lw	$v0,-13292($gp)
    li	$at,-1
    beq	$v0,$at,.L0dab644c
    addiu	$sp,$sp,-16
    # Line 85
    jr	$ra
    addiu	$sp,$sp,16
.L0dab644c:
    # Line 86
    li	$a1,2050
    # lw $t9, -17936($gp) # &open
    la	$a0,sub_0dbe0000
    sd	$ra,0($sp)
    jal	open
    addiu	$a0,$a0,-16080
    move	$a0,$v0
    bltz	$v0,.L0dab64a4
    ld	$ra,0($sp)
.L0dab6470:
    # Line 89
    lw	$a1,-13292($gp)
    li	$a2,-1
    beq	$a1,$a2,.L0dab6498
    # Line 92
    move	$v0,$a0
    # Line 91
    # lw $t9, -17900($gp) # &close
    jal	close
    nop
    lw	$v0,-13292($gp)
    b	.L0dab649c
    ld	$ra,0($sp)
.L0dab6498:
    # Line 92
    sw	$a0,-13292($gp)
.L0dab649c:
    # Line 93
    jr	$ra
    addiu	$sp,$sp,16
.L0dab64a4:
    # Line 88
    # lw $t9, -17888($gp) # &perror
    sd	$a0,8($sp)
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-16064
    # Line 89
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    ld	$ra,0($sp)
    b	.L0dab6470
    ld	$a0,8($sp)
.end mgrTM_DevZero

# Function: mgrTM_BufMalloc
# Declared: Line 98 (Source lines: 99-120)
# Address: 0x0dab64d0 - 0x0dab6568 (Size: 152 bytes, Frame: 32)
.ent mgrTM_BufMalloc
mgrTM_BufMalloc:
    # Line 99
    addiu	$sp,$sp,-32
    beqz	$a0,.L0dab6550
    sd	$a0,0($sp)
    # Line 105
    # lw $t9, -32728($gp) # &sub_0dab0000
    sd	$ra,8($sp)
    addiu	$t9,$t9,25652
    bal __glMgrim_GetDetailTexFuncSGIS
    nop
    move	$a4,$v0
    li	$at,-1
    beq	$v0,$at,.L0dab655c
    ld	$ra,8($sp)
    # Line 108
    move	$a0,$zero
    move	$a5,$zero
    li	$a3,1
    # lw $t9, -17844($gp) # &mmap
    ld	$a1,0($sp)
    li	$a2,3
    jal	mmap
    addiu	$a1,$a1,8
    move	$a4,$v0
    li	$a2,-1
    # Line 111
    beq	$a2,$v0,.L0dab6544
    ld	$ra,8($sp)
    # Line 118
    ld	$at,0($sp)
    # Line 120
    addiu	$v0,$a4,8
    addiu	$sp,$sp,32
    jr	$ra
    # Line 118
    sw	$at,0($a4)
.L0dab6544:
    # Line 115
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0dab6550:
    # Line 103
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0dab655c:
    # Line 111
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end mgrTM_BufMalloc

# Function: mgrTM_BufFree
# Declared: Line 124 (Source lines: 125-133)
# Address: 0x0dab6568 - 0x0dab65a0 (Size: 56 bytes, Frame: 32)
.ent mgrTM_BufFree
mgrTM_BufFree:
    # Line 125
    addiu	$sp,$sp,-32
    bnez	$a0,.L0dab657c
    move	$a3,$a0
    # Line 128
    jr	$ra
    addiu	$sp,$sp,32
.L0dab657c:
    # Line 132
    addiu	$a0,$a3,-8
    # lw $t9, -17852($gp) # &munmap
    lw	$a1,-8($a3)
    sd	$ra,0($sp)
    jal	munmap
    addiu	$a1,$a1,8
    ld	$ra,0($sp)
    # Line 133
    jr	$ra
    addiu	$sp,$sp,32
.end mgrTM_BufFree

# Function: mgrTM_GrowSaveArena
# Declared: Line 136 (Source lines: 137-206)
# Address: 0x0dab65a0 - 0x0dab6754 (Size: 436 bytes, Frame: 192)
.globl mgrTM_GrowSaveArena
.ent mgrTM_GrowSaveArena
mgrTM_GrowSaveArena:
    # Line 149
    move	$a4,$zero
    # Line 137
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s2,0($sp)
    # Line 144
    lw	$s2,-4($a1)
    sd	$gp,8($sp)
    sd	$s0,24($sp)
    # Line 150
    lw	$s0,12($s2)
    # Line 137
    lui	$at,0x15
    addiu	$at,$at,-32520
    # Line 150
    beqz	$s0,.L0dab65ec
    # Line 137
    addu	$gp,$t9,$at
.L0dab65d4:
    # Line 150
    lw	$v0,8($s0)
    beq	$v0,$s1,.L0dab6698
    lw	$v0,0($s0)
    # Line 162
    move	$a4,$s0
    # Line 163
    bnez	$v0,.L0dab65d4
    move	$s0,$v0
.L0dab65ec:
    # Line 169
    lw	$s0,12($s2)
.L0dab65f0:
    beqz	$s0,.L0dab6614
    # Line 168
    move	$a4,$zero
.L0dab65f8:
    # Line 169
    lw	$v1,8($s0)
    sltu	$v1,$v1,$s1
    beqz	$v1,.L0dab66b4
    lw	$v0,0($s0)
    # Line 181
    move	$a4,$s0
    # Line 182
    bnez	$v0,.L0dab65f8
    move	$s0,$v0
.L0dab6614:
    # Line 187
    # lw $t9, -17788($gp) # &calloc
    li	$a1,12
    sd	$ra,32($sp)
    jal	calloc
    li	$a0,1
    move	$s0,$v0
    beqz	$v0,.L0dab6724
    ld	$ra,32($sp)
.L0dab6634:
    sd	$ra,32($sp)
    # Line 193
    lw	$a4,-13292($gp)
    lw	$a3,8($s2)
    li	$a2,-1
    beq	$a4,$a2,.L0dab670c
    sw	$a3,0($s0)
.L0dab664c:
    # Line 196
    move	$a5,$zero
    li	$a3,1
    # lw $t9, -17844($gp) # &mmap
    li	$a2,3
    move	$a1,$s1
    jal	mmap
    lw	$a0,4($s0)
    li	$at,-1
    beq	$at,$v0,.L0dab66d0
    ld	$ra,32($sp)
    ld	$gp,8($sp)
    # Line 203
    sw	$s1,8($s0)
    # Line 206
    ld	$s1,16($sp)
    # Line 204
    sw	$v0,4($s0)
    # Line 205
    sw	$s0,8($s2)
    # Line 206
    ld	$s0,24($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab6698:
    # Line 150
    beqzl	$a4,.L0dab66a4
    # Line 157
    sw	$v0,12($s2)
    # Line 155
    sw	$v0,0($a4)
.L0dab66a4:
    # Line 166
    bnez	$s0,.L0dab6634
    # Line 159
    sw	$zero,0($s0)
    b	.L0dab65f0
    # Line 169
    lw	$s0,12($s2)
.L0dab66b4:
    beqzl	$a4,.L0dab66c0
    # Line 176
    sw	$v0,12($s2)
    # Line 174
    sw	$v0,0($a4)
.L0dab66c0:
    # Line 184
    bnez	$s0,.L0dab6634
    # Line 178
    sw	$zero,0($s0)
    b	.L0dab6614
    sd	$ra,32($sp)
.L0dab66d0:
    # Line 199
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-16000
    # Line 200
    # lw $t9, -17784($gp) # &free
    jal	free
    move	$a0,$s0
    # Line 201
    li	$v0,-1
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab670c:
    # Line 195
    # lw $t9, -32728($gp) # &sub_0dab0000
    addiu	$t9,$t9,25652
    bal __glMgrim_GetDetailTexFuncSGIS
    nop
    b	.L0dab664c
    lw	$a4,-13292($gp)
.L0dab6724:
    # Line 189
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-16040
    # Line 190
    li	$v0,-1
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end mgrTM_GrowSaveArena

# Function: mgrTM_ReconstituteSavePool
# Declared: Line 211 (Source lines: 212-254)
# Address: 0x0dab6754 - 0x0dab6890 (Size: 316 bytes, Frame: 192)
.globl mgrTM_ReconstituteSavePool
.ent mgrTM_ReconstituteSavePool
mgrTM_ReconstituteSavePool:
    # Line 212
    addiu	$sp,$sp,-64
    sd	$s3,32($sp)
    sd	$gp,16($sp)
    lui	$t8,0x14
    addiu	$t8,$t8,32580
    addu	$gp,$t9,$t8
    sd	$s1,24($sp)
    # Line 213
    li	$s1,0x91fc
    addu	$s1,$s1,$a0
    lw	$s1,0($s1)
    # Line 222
    # lw $t9, -17780($gp) # &adelete
    sd	$ra,8($sp)
    # Line 213
    addiu	$s1,$s1,1240
    # Line 222
    jal	adelete
    lw	$a0,0($s1)
    # Line 224
    lw	$s3,8($s1)
    beqz	$s3,.L0dab67d0
    la	$at,__iob
    addiu	$at,$at,32
    sd	$at,0($sp)
.L0dab67a4:
    # Line 226
    # lw $t9, -17852($gp) # &munmap
    lw	$a1,8($s3)
    jal	munmap
    lw	$a0,4($s3)
    bltz	$v0,.L0dab6850
    # Line 234
    move	$v1,$s3
.L0dab67bc:
    # Line 236
    lw	$a1,12($s1)
    # Line 235
    lw	$s3,0($s3)
    # Line 236
    sw	$a1,0($v1)
    # Line 237
    bnez	$s3,.L0dab67a4
    sw	$v1,12($s1)
.L0dab67d0:
    # Line 242
    la	$a4,mgrTM_GrowSaveArena
    move	$a3,$zero
    move	$a2,$zero
    li	$a1,1024
    # Line 239
    sw	$zero,8($s1)
    # Line 242
    # lw $t9, -17776($gp) # &acreate
    lw	$a0,4($s1)
    ld	$s3,32($sp)
    jal	acreate
    addiu	$a0,$a0,4
    move	$a2,$v0
    bnez	$v0,.L0dab6824
    sw	$v0,0($s1)
    # Line 246
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15920
    # Line 247
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    lw	$a2,0($s1)
.L0dab6824:
    # Line 249
    # lw $t9, -17772($gp) # &amallopt
    lui	$a1,0x40
    jal	amallopt
    li	$a0,5
    # Line 251
    lw	$a1,0($s1)
    ld	$gp,16($sp)
    # Line 254
    ld	$ra,8($sp)
    # Line 253
    sw	$s1,-4($a1)
    # Line 254
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab6850:
    # Line 228
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15960
    ld	$a0,0($sp)
    # Line 229
    lw	$a3,8($s3)
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    lw	$a2,4($s3)
    jal	fprintf
    addiu	$a1,$a1,-15944
    # Line 231
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dab67bc
    # Line 234
    move	$v1,$s3
.end mgrTM_ReconstituteSavePool

# Function: mgrTM_RefreshDim
# Declared: Line 271 (Source lines: 273-304)
# Address: 0x0dab6890 - 0x0dab6974 (Size: 228 bytes, Frame: 48)
.globl mgrTM_RefreshDim
.ent mgrTM_RefreshDim
mgrTM_RefreshDim:
    # Line 277
    lw	$a5,__glCurrentContext
    # Line 273
    move	$a4,$a0
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # Line 281
    lw	$v0,200($a0)
    # Line 273
    lui	$at,0x14
    addiu	$at,$at,32264
    # Line 281
    beqz	$v0,.L0dab6944
    # Line 273
    addu	$gp,$t9,$at
    # Line 281
    li	$v1,2
    beq	$v0,$v1,.L0dab695c
    li	$a1,4
    beq	$v0,$a1,.L0dab68d4
    # Line 289
    la	$a0,SYMBOL_LOCATION
    ld	$gp,16($sp)
    # Line 293
    jr	$ra
    addiu	$sp,$sp,48
.L0dab68d4:
    sd	$ra,24($sp)
    sd	$a4,0($sp)
    sd	$a5,8($sp)
    # Line 289
    lw	$a0,1100($a0)
.L0dab68e4:
    # Line 296
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    li	$a2,1
    jal	__Mgr_ReturnMode
    li	$a1,1
    beqz	$v0,.L0dab6930
    ld	$ra,24($sp)
    ld	$a2,8($sp)
    # Line 298
    # lw $t9, -26220($gp) # &__glNamesLockData
    move	$a0,$a2
    li	$a1,0x91fc
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    move	$a2,$v0
    jal	__glNamesLockData
    lw	$a1,1180($a1)
    ld	$a3,0($sp)
    ld	$ra,24($sp)
    b	.L0dab6938
    sw	$v0,196($a3)
.L0dab6930:
    ld	$at,0($sp)
    # Line 302
    sw	$at,196($at)
.L0dab6938:
    ld	$gp,16($sp)
    # Line 304
    jr	$ra
    addiu	$sp,$sp,48
.L0dab6944:
    sd	$ra,24($sp)
    sd	$a4,0($sp)
    # Line 283
    la	$a0,SYMBOL_LOCATION
    sd	$a5,8($sp)
    # Line 284
    b	.L0dab68e4
    # Line 283
    lw	$a0,1092($a0)
.L0dab695c:
    # Line 286
    la	$a0,SYMBOL_LOCATION
    sd	$ra,24($sp)
    sd	$a4,0($sp)
    sd	$a5,8($sp)
    # Line 287
    b	.L0dab68e4
    # Line 286
    lw	$a0,1096($a0)
.end mgrTM_RefreshDim

# Function: Global_TM_Interface
# Declared: Line 308 (Source lines: 312-349)
# Address: 0x0dab6974 - 0x0dab6ba0 (Size: 556 bytes, Frame: 240)
.ent Global_TM_Interface
Global_TM_Interface:
    # Line 312
    addiu	$sp,$sp,-112
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s4,56($sp)
    move	$s4,$a1
    sd	$s5,48($sp)
    move	$s5,$a2
    sd	$s1,16($sp)
    # Line 315
    move	$s1,$zero
    # Line 316
    lw	$a4,20($a1)
    sd	$s2,32($sp)
    sd	$s3,40($sp)
    lw	$at,24($a4)
    # Line 313
    lui	$s3,0x1
    addu	$s3,$a0,$s3
    # Line 316
    bnez	$at,.L0dab69d8
    # Line 313
    lw	$s2,-28164($s3)
    # Line 316
    lw	$at,28($a4)
    mtc1	$zero,$f1
    lwc1	$f0,0($at)
    c.lt.s	$f0,$f1
    nop
    bc1fl	.L0dab69dc
    # Line 320
    lh	$v1,78($s5)
    # Line 319
    lh	$s1,38($a4)
.L0dab69d8:
    # Line 320
    lh	$v1,78($s5)
.L0dab69dc:
    lh	$v0,34($s4)
    addu	$v0,$v0,$v1
    subu	$v0,$v0,$s1
    sw	$v0,0($sp)
    lhu	$a0,1234($s2)
    slt	$v0,$a0,$v0
    beqz	$v0,.L0dab6a08
    # Line 323
    addiu	$a2,$sp,0
    sd	$ra,64($sp)
    # Line 321
    sw	$a0,0($sp)
    # Line 323
    addiu	$a2,$sp,0
.L0dab6a08:
    lw	$a0,31560($s0)
    # lw $t9, -17944($gp) # &ioctl
    sd	$ra,64($sp)
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0x10
    bltz	$v0,.L0dab6b64
    # Line 333
    move	$a4,$zero
.L0dab6a28:
    li	$a1,416
    move	$a0,$s0
    # Line 326
    la	$s1,SYMBOL_LOCATION
    # Line 328
    li	$a2,1
    sb	$a2,-28160($s3)
    # Line 333
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,1168($s2)
    # Line 331
    sw	$zero,488($s2)
    # Line 330
    sw	$zero,484($s2)
    # Line 333
    jal	__glMgrasWrite
    lw	$a3,288($s1)
    # Line 334
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,260($s1)
    lw	$a2,1176($s2)
    jal	__glMgrasWrite
    li	$a1,395
    li	$a3,-1
    dsll	$a3,$a3,0x10
    ori	$a3,$a3,0x7438
    beq	$s0,$a3,.L0dab6a88
    lw	$a1,-29556($s3)
    beqz	$a1,.L0dab6b88
.L0dab6a88:
    # Line 338
    nop	# was lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    bal mgrTM_SendTexmode1
    move	$a0,$s0
    # Line 340
    lh	$at,34($s4)
    # Line 341
    la	$s3,sub_0dab0000
    # Line 340
    lw	$s1,0($sp)
    # Line 341
    li	$s2,1
    addiu	$s3,$s3,27552
    # Line 340
    subu	$s1,$s1,$at
    # Line 342
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    bal mgrTM_RefreshDim
    move	$t9,$s3
    move	$a0,$s0
    move	$a1,$s1
    move	$t9,$s3
    # Line 341
    addiu	$s2,$s2,1
    # Line 342
    bal mgrTM_RefreshDim
    move	$a2,$s2
    move	$a0,$s0
    move	$a1,$s1
    move	$t9,$s3
    # Line 341
    addiu	$s2,$s2,1
    # Line 342
    bal mgrTM_RefreshDim
    move	$a2,$s2
    move	$a0,$s0
    move	$a1,$s1
    move	$t9,$s3
    # Line 341
    addiu	$s2,$s2,1
    # Line 342
    bal mgrTM_RefreshDim
    move	$a2,$s2
    ld	$s3,40($sp)
    # Line 346
    move	$a1,$s5
    move	$a0,$s0
    ld	$s2,32($sp)
    # Line 343
    lh	$ra,78($s5)
    # Line 344
    sh	$s1,78($s5)
    # Line 346
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 345
    lh	$t8,34($s4)
    sd	$ra,24($sp)
    # Line 346
    addiu	$t9,$t9,-24696
    # Line 345
    subu	$t8,$t8,$s1
    # Line 346
    bal mgrTM_process_level
    # Line 345
    sh	$t8,74($s5)
    # Line 349
    ld	$s0,8($sp)
    ld	$at,24($sp)
    ld	$s1,16($sp)
    ld	$ra,64($sp)
    # Line 347
    sh	$at,78($s5)
    # Line 349
    ld	$s5,48($sp)
    lw	$v0,20($s4)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab6b64:
    # Line 326
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15904
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dab6a28
    # Line 333
    move	$a4,$zero
.L0dab6b88:
    # Line 337
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    li	$a0,0x8bc8
    bal mgrTM_RefreshDim
    addu	$a0,$s0,$a0
    b	.L0dab6a88
    lw	$a1,-29556($s3)
.end Global_TM_Interface

# Function: IncreaseSpace
# Declared: Line 353 (Source lines: 357-386)
# Address: 0x0dab6ba0 - 0x0dab6d80 (Size: 480 bytes, Frame: 192)
.ent IncreaseSpace
IncreaseSpace:
    # Line 357
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$s7,24($sp)
    # Line 361
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 357
    move	$s7,$a1
    sd	$ra,16($sp)
    # Line 361
    addiu	$t9,$t9,-9116
    bal mgrTM_SaveData
    move	$a1,$zero
    # Line 366
    sll	$ra,$s1,0x2
    subu	$ra,$ra,$s1
    # Line 363
    li	$v1,1
    # Line 365
    li	$at,3
    # Line 362
    lui	$a5,0x1
    addu	$a5,$s0,$a5
    lw	$a0,-28164($a5)
    # Line 365
    sh	$at,46($v0)
    # Line 364
    sw	$zero,24($v0)
    # Line 363
    sh	$v1,44($v0)
    # Line 362
    addiu	$a0,$a0,1192
    sw	$a0,28($v0)
    # Line 366
    sll	$ra,$ra,0x4
    lw	$a4,-28164($a5)
    sltu	$a0,$zero,$s1
    addu	$a2,$a0,$a0
    addu	$a4,$a4,$ra
    addu	$a4,$a4,$a2
    lh	$a4,32($a4)
    addu	$v1,$v0,$a2
    # Line 367
    sh	$s7,36($v1)
    # Line 366
    sh	$a4,32($v1)
    # Line 368
    addu	$a4,$a4,$s7
    addiu	$a4,$a4,-1
    sh	$a4,40($v1)
    # Line 369
    lw	$a1,-28164($a5)
    addu	$a1,$a1,$ra
    addiu	$a1,$a1,240
    sw	$a1,0($v0)
    # Line 370
    lw	$a1,12($a1)
    sw	$a1,12($v0)
    # Line 371
    sw	$v0,0($a1)
    lw	$at,0($v0)
    sw	$v0,12($at)
    # Line 372
    lw	$a4,0($v0)
    addu	$a4,$a4,$a2
    lh	$a1,40($a4)
    addu	$a1,$a1,$s7
    sh	$a1,40($a4)
    lw	$at,0($v0)
    addu	$at,$at,$a2
    lh	$s7,40($at)
    sh	$s7,32($at)
    # Line 373
    lw	$a5,-28164($a5)
    sll	$a0,$a0,0x2
    addu	$a1,$v0,$a0
    addu	$a5,$a5,$ra
    sw	$a5,4($a1)
    # Line 374
    addu	$a5,$a0,$a5
    lw	$a5,16($a5)
    sw	$a5,16($a1)
    # Line 375
    addu	$a4,$a0,$a5
    sw	$v0,4($a4)
    # Line 376
    lw	$a1,4($a1)
    ld	$s7,24($sp)
    # Line 378
    sltiu	$at,$s1,1
    # Line 376
    addu	$a1,$a1,$a0
    sw	$v0,16($a1)
    # Line 377
    addu	$a0,$a0,$v0
    lw	$a1,4($a0)
    lh	$v1,40($v1)
    # Line 379
    addu	$ra,$at,$at
    # Line 377
    addu	$a1,$a1,$a2
    addiu	$v1,$v1,1
    dsll32	$v1,$v1,0x10
    dsra32	$v1,$v1,0x10
    sh	$v1,40($a1)
    # Line 379
    addu	$ra,$ra,$v0
    # Line 377
    lw	$a1,4($a0)
    # Line 378
    sll	$at,$at,0x2
    addu	$at,$at,$v0
    # Line 377
    addu	$a1,$a1,$a2
    sh	$v1,32($a1)
    # Line 378
    sw	$zero,4($at)
    # Line 379
    sh	$zero,32($ra)
    sh	$zero,40($ra)
    sh	$zero,36($ra)
    beqz	$s1,.L0dab6d28
    ld	$ra,16($sp)
    # Line 381
    addiu	$at,$s1,-1
    nor	$s7,$at,$zero
    xori	$at,$at,0x3
    and	$s7,$s7,$at
    andi	$s7,$s7,0x1
    sh	$s7,46($v0)
    ld	$s7,24($sp)
.L0dab6d28:
    lw	$a1,16($a0)
    lw	$v1,4($a0)
    beq	$v1,$a1,.L0dab6d58
    ld	$s1,8($sp)
    lw	$a4,28($v0)
    lw	$a5,28($a1)
    lwc1	$f1,0($a4)
    lwc1	$f0,0($a5)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0dab6d64
    # Line 383
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
.L0dab6d58:
    # Line 386
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab6d64:
    # Line 383
    move	$a0,$s0
    move	$a2,$v0
    addiu	$t9,$t9,-26600
    bal mgrTM_process_level
    move	$a3,$v0
    b	.L0dab6d58
    ld	$ra,16($sp)
.end IncreaseSpace

# Function: mgrTM_SetBasereg
# Declared: Line 389 (Source lines: 391-408)
# Address: 0x0dab6d80 - 0x0dab6e1c (Size: 156 bytes, Frame: 48)
.globl mgrTM_SetBasereg
.ent mgrTM_SetBasereg
mgrTM_SetBasereg:
    # Line 391
    move	$a4,$a0
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$v0,0x14
    # Line 394
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    lbu	$at,-28160($a2)
    # Line 391
    addiu	$v0,$v0,31000
    # Line 394
    lw	$a3,-28164($a2)
    bnez	$at,.L0dab6dec
    # Line 391
    addu	$gp,$t9,$v0
    # Line 394
    lh	$a5,82($a3)
    blez	$a5,.L0dab6dec
    sd	$a2,8($sp)
    # Line 401
    addiu	$a2,$sp,0
    sd	$ra,24($sp)
    lui	$a1,0x6d67
    # lw $t9, -17944($gp) # &ioctl
    ori	$a1,$a1,0x10
    # Line 399
    sw	$a5,0($sp)
    # Line 401
    jal	ioctl
    lw	$a0,31560($a4)
    bltz	$v0,.L0dab6df8
    ld	$ra,24($sp)
.L0dab6de0:
    # Line 406
    ld	$v0,8($sp)
    li	$at,1
    sb	$at,-28160($v0)
.L0dab6dec:
    ld	$gp,16($sp)
    # Line 408
    jr	$ra
    addiu	$sp,$sp,48
.L0dab6df8:
    # Line 404
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15904
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dab6de0
    ld	$ra,24($sp)
.end mgrTM_SetBasereg

# Function: mgrTM_InitTMhw
# Declared: Line 411 (Source lines: 413-437)
# Address: 0x0dab6e1c - 0x0dab6f78 (Size: 348 bytes, Frame: 0)
.globl mgrTM_InitTMhw
.ent mgrTM_InitTMhw
mgrTM_InitTMhw:
    # Line 425
    move	$a5,$zero
    # Line 415
    li	$a4,0x91fc
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    # Line 420
    li	$t3,1
    # Line 425
    li	$a1,256
    addiu	$a6,$a4,240
    addiu	$a3,$a4,1192
    sh	$a1,1234($a4)
    # Line 424
    sh	$t3,1232($a4)
    # Line 421
    sw	$t3,1204($a4)
    # Line 420
    sw	$t3,1200($a4)
    # Line 418
    addiu	$v0,$a4,676
    # Line 419
    addiu	$v1,$a4,768
    sw	$v1,1048($a4)
    # Line 413
    lui	$a0,0x14
    addiu	$a0,$a0,30844
    addu	$at,$t9,$a0
    # Line 423
    lwc1	$f1,_lit_40000000
    # Line 422
    lwc1	$f0,_lit_bf800000
    # Line 418
    sw	$v0,1044($a4)
    # Line 423
    swc1	$f1,1196($a4)
    # Line 422
    swc1	$f0,1192($a4)
    # Line 427
    addiu	$a1,$a4,48
    addiu	$v1,$a1,48
    addiu	$t2,$v1,48
    addiu	$a7,$t2,48
    addiu	$a2,$a5,48
    addiu	$a0,$a2,48
    addiu	$v0,$a0,48
    addiu	$t0,$v0,48
    # Line 435
    sltu	$t0,$zero,$t0
    sll	$t0,$t0,0x2
    addu	$t0,$a7,$t0
    sltu	$v0,$zero,$v0
    sll	$v0,$v0,0x2
    addu	$v0,$t2,$v0
    # Line 434
    sw	$a3,28($a4)
    # Line 432
    sh	$t3,284($a4)
    # Line 431
    sw	$a6,240($a4)
    sw	$a6,252($a4)
    # Line 430
    sw	$a3,268($a4)
    # Line 435
    sltu	$a0,$zero,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$v1,$a0
    sltu	$a2,$zero,$a2
    sll	$a2,$a2,0x2
    addu	$a2,$a1,$a2
    sltu	$t1,$zero,$a5
    sll	$t1,$t1,0x2
    addu	$t1,$a4,$t1
    sw	$a4,16($t1)
    sw	$a4,4($t1)
    # Line 427
    addiu	$t1,$a6,48
    # Line 431
    sw	$t1,252($a1)
    sw	$t1,240($a1)
    # Line 427
    addiu	$t1,$t1,48
    # Line 434
    sw	$a3,28($a1)
    # Line 432
    sh	$t3,284($a1)
    # Line 430
    sw	$a3,268($a1)
    # Line 435
    sw	$a1,4($a2)
    sw	$a1,16($a2)
    # Line 431
    sw	$t1,252($v1)
    sw	$t1,240($v1)
    # Line 427
    addiu	$t1,$t1,48
    # Line 434
    sw	$a3,28($v1)
    # Line 432
    sh	$t3,284($v1)
    # Line 430
    sw	$a3,268($v1)
    # Line 435
    sw	$v1,4($a0)
    sw	$v1,16($a0)
    # Line 431
    sw	$t1,252($t2)
    sw	$t1,240($t2)
    # Line 427
    addiu	$t1,$t1,48
    # Line 434
    sw	$a3,28($t2)
    # Line 432
    sh	$t3,284($t2)
    # Line 430
    sw	$a3,268($t2)
    # Line 435
    sw	$t2,4($v0)
    sw	$t2,16($v0)
    # Line 434
    sw	$a3,28($a7)
    # Line 432
    sh	$t3,284($a7)
    # Line 431
    sw	$t1,240($a7)
    sw	$t1,252($a7)
    # Line 430
    sw	$a3,268($a7)
    # Line 435
    sw	$a7,4($t0)
    sw	$a7,16($t0)
    # Line 437
    jr	$ra
    nop
.end mgrTM_InitTMhw

# Function: mgrTM_Init
# Declared: Line 440 (Source lines: 441-504)
# Address: 0x0dab6f78 - 0x0dab7274 (Size: 764 bytes, Frame: 208)
.globl mgrTM_Init
.ent mgrTM_Init
mgrTM_Init:
    # Line 453
    li	$a1,2096
    li	$a0,0x8a2c
    # Line 441
    addiu	$sp,$sp,-80
    sd	$s3,8($sp)
    sd	$ra,24($sp)
    sd	$s1,48($sp)
    sd	$s2,16($sp)
    sd	$s6,0($sp)
    sd	$s0,32($sp)
    # Line 448
    lw	$s0,__glCurrentContext
    sd	$s4,40($sp)
    # Line 452
    lui	$s4,0x1
    # Line 453
    addu	$a0,$s0,$a0
    sd	$gp,56($sp)
    # Line 452
    addu	$s6,$s4,$s0
    # Line 441
    lui	$at,0x14
    addiu	$at,$at,30496
    addu	$gp,$t9,$at
    # Line 453
    # lw $t9, -17868($gp) # &bzero
    # Line 452
    move	$s2,$s6
    move	$s1,$s6
    # Line 453
    jal	bzero
    # Line 452
    lw	$s3,-28164($s6)
    # Line 454
    lbu	$a3,-25434($s1)
    li	$a2,2
    li	$at,1
    beq	$a3,$at,.L0dab726c
    sw	$s3,-28164($s1)
    # Line 458
    sw	$a2,-28084($s1)
.L0dab6fec:
    # Line 460
    sw	$a2,-28312($s1)
    # Line 459
    li	$v0,8448
    sw	$v0,-28324($s1)
    # Line 461
    lw	$t9,0($s0)
    li	$a1,800
    jalr	$t9
    move	$a0,$s0
    # Line 463
    mtc1	$zero,$f2
    # Line 461
    sw	$v0,-28308($s1)
    # Line 463
    swc1	$f2,0($v0)
    # Line 464
    lw	$a1,-28308($s1)
    # Line 468
    ldc1	$f4,_lit8_403f000000000000
    ldc1	$f5,_lit8_403e000000000000
    # Line 464
    swc1	$f2,4($a1)
    # Line 465
    lwc1	$f1,_lit_c0800000
    lw	$a0,-28308($s1)
    # Line 467
    li	$a2,31
    # Line 468
    li	$v1,0x9168
    # Line 465
    swc1	$f1,8($a0)
    # Line 466
    lwc1	$f0,_lit_3f800000
    lw	$a0,-28308($s1)
    # Line 468
    addu	$v1,$s0,$v1
    li	$a1,1
    # Line 466
    swc1	$f0,12($a0)
    move	$a0,$s2
    # Line 468
    sw	$v1,-28168($s1)
    # Line 467
    sw	$a2,-28304($s1)
    sw	$a2,-28300($s1)
.L0dab705c:
    # Line 470
    mtc1	$a1,$f0
    nop
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f5
    # Line 469
    addiu	$a1,$a1,1
    # Line 470
    mtc1	$a1,$f3
    nop
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f5
    mul.d	$f0,$f0,$f4
    mul.d	$f3,$f3,$f4
    trunc.w.d	$f0,$f0
    trunc.w.d	$f3,$f3
    # Line 469
    addiu	$a0,$a0,-8
    # Line 470
    mfc1	$at,$f0
    # Line 469
    addiu	$a1,$a1,1
    # Line 470
    mfc1	$a3,$f3
    sw	$at,-28172($a0)
    # Line 469
    bne	$a1,$a2,.L0dab705c
    # Line 470
    sw	$a3,-28176($a0)
    sd	$s6,72($sp)
    # Line 471
    li	$a4,1
    move	$a2,$zero
    li	$a1,400
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 469
    la	$s2,SYMBOL_LOCATION
    # Line 471
    move	$a0,$s0
    jal	__glMgrasWrite
    lw	$a3,268($s2)
    li	$t0,404
    li	$a2,0xec10
    lw	$a6,268($s2)
    lw	$a7,284($s2)
    addu	$a1,$s4,$s0
    ld	$a0,72($sp)
    # Line 479
    li	$s6,9
    li	$s3,0x8a30
    # Line 471
    addiu	$a5,$s0,128
    lui	$a4,0x7
    ori	$a4,$a4,0x4080
    addu	$a5,$s4,$a5
.L0dab7100:
    # Line 473
    sw	$a2,0($a4)
    # Line 474
    sw	$a6,0($a4)
    # Line 475
    sw	$a7,0($a4)
    # Line 476
    sw	$t0,0($a4)
    # Line 477
    lw	$v0,-28304($a1)
    sw	$v0,0($a4)
    # Line 473
    sw	$a2,0($a4)
    # Line 474
    sw	$a6,0($a4)
    # Line 475
    sw	$a7,0($a4)
    # Line 476
    sw	$t0,0($a4)
    # Line 477
    lw	$at,-28300($a1)
    # Line 472
    addiu	$a1,$a1,8
    bne	$a1,$a5,.L0dab7100
    # Line 477
    sw	$at,0($a4)
    # Line 479
    addu	$s3,$s0,$s3
    move	$s4,$a0
    sd	$s5,64($sp)
    move	$s5,$zero
.L0dab7148:
    # Line 484
    move	$a0,$s0
    # Line 483
    sb	$s5,-29981($s4)
    # Line 484
    move	$a1,$s3
    # lw $t9, -30776($gp) # &mgrTM_InitTexture
    # Line 482
    sw	$s3,-29964($s4)
    # Line 479
    addiu	$s3,$s3,204
    # Line 484
    bal mgrTM_InitTexture
    # Line 481
    sw	$s5,-29960($s4)
    # Line 479
    addiu	$s5,$s5,1
    bne	$s5,$s6,.L0dab7148
    addiu	$s4,$s4,204
    # Line 487
    move	$a0,$s0
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,288($s2)
    move	$a2,$zero
    jal	__glMgrasWrite
    li	$a1,416
    # Line 488
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,260($s2)
    move	$a2,$zero
    li	$a1,395
    ld	$s4,40($sp)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    ld	$s5,64($sp)
    ld	$s3,8($sp)
    jal	__glMgrasWrite
    ld	$s6,0($sp)
    # Line 489
    move	$a4,$zero
    lw	$a3,248($s2)
    li	$a1,392
    # lw $t9, -30696($gp) # &__glMgrasWrite
    move	$a0,$s0
    lui	$a2,0x80
    jal	__glMgrasWrite
    ori	$a2,$a2,0x800
    # Line 490
    move	$a0,$s0
    move	$a4,$zero
    lw	$a3,252($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    li	$a1,393
    lui	$a2,0x80
    jal	__glMgrasWrite
    ori	$a2,$a2,0x800
    # Line 491
    move	$a0,$s0
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,224($s2)
    move	$a2,$zero
    jal	__glMgrasWrite
    li	$a1,386
    # Line 503
    la	$a3,MgrasPrevVidTexture
    ld	$gp,56($sp)
    # Line 499
    li	$s0,4096
    sw	$s0,-28124($s1)
    # Line 504
    ld	$s0,32($sp)
    # Line 495
    li	$at,64
    li	$s2,1
    # Line 493
    li	$v0,40
    sw	$v0,-28112($s1)
    # Line 494
    sw	$s2,-28108($s1)
    # Line 495
    sw	$at,-28156($s1)
    # Line 496
    sw	$s2,-28152($s1)
    # Line 498
    sw	$s2,-28136($s1)
    # Line 497
    li	$ra,24
    sw	$ra,-28140($s1)
    # Line 504
    ld	$s1,48($sp)
    ld	$ra,24($sp)
    ld	$s2,16($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 503
    sw	$zero,0($a3)
.L0dab726c:
    # Line 457
    b	.L0dab6fec
    sw	$zero,-28084($s1)
.end mgrTM_Init

# Function: mgrTM_InitTexture
# Declared: Line 507 (Source lines: 510-534)
# Address: 0x0dab7274 - 0x0dab732c (Size: 184 bytes, Frame: 0)
.globl mgrTM_InitTexture
.ent mgrTM_InitTexture
mgrTM_InitTexture:
    # Line 519
    sb	$zero,194($a1)
    # Line 518
    sh	$zero,158($a1)
    # Line 517
    sw	$zero,76($a1)
    # Line 514
    sw	$zero,136($a1)
    # Line 511
    li	$a5,1
    # Line 515
    li	$a2,1000
    # Line 516
    li	$a3,0x8185
    sw	$a3,124($a1)
    # Line 521
    li	$a4,-1
    sh	$a4,162($a1)
    lbu	$a4,179($a1)
    # Line 515
    sw	$a2,140($a1)
    # Line 511
    sb	$a5,177($a1)
    # Line 521
    slti	$v0,$a4,4
    # Line 510
    lui	$v1,0x14
    addiu	$v1,$v1,29732
    addu	$at,$t9,$v1
    # Line 520
    mtc1	$zero,$f2
    # Line 513
    lwc1	$f1,_lit_447a0000
    # Line 512
    lwc1	$f0,_lit_c47a0000
    # Line 520
    swc1	$f2,120($a1)
    # Line 513
    swc1	$f1,132($a1)
    # Line 521
    beqz	$v0,.L0dab72e0
    # Line 512
    swc1	$f0,128($a1)
    # Line 524
    lbu	$a4,179($a1)
    sb	$a5,171($a1)
    # Line 523
    sb	$a5,181($a1)
.L0dab72e0:
    # Line 524
    li	$a5,2
    beq	$a5,$a4,.L0dab7314
    # Line 529
    lwc1	$f1,_lit_c0800000
.L0dab72ec:
    li	$v0,8
    beq	$a4,$v0,.L0dab7308
    # Line 533
    lwc1	$f3,_lit_3f000000
    swc1	$f3,108($a1)
    swc1	$f3,112($a1)
    # Line 534
    jr	$ra
    nop
.L0dab7308:
    # Line 532
    lwc1	$f0,_lit_3fc00000
    # Line 534
    jr	$ra
    # Line 532
    swc1	$f0,108($a1)
.L0dab7314:
    # Line 528
    sb	$a5,191($a1)
    # Line 529
    swc1	$f1,116($a1)
    # Line 527
    li	$v1,0x9168
    addu	$v1,$a0,$v1
    b	.L0dab72ec
    sw	$v1,80($a1)
.end mgrTM_InitTexture

# Function: mgrTM_ProcessTextureUsage
# Declared: Line 538 (Source lines: 540-646)
# Address: 0x0dab732c - 0x0dab7648 (Size: 796 bytes, Frame: 128)
.globl mgrTM_ProcessTextureUsage
.ent mgrTM_ProcessTextureUsage
mgrTM_ProcessTextureUsage:
    # Line 540
    addiu	$sp,$sp,-128
    sd	$s1,16($sp)
    sd	$s5,8($sp)
    sd	$ra,40($sp)
    sd	$s7,32($sp)
    # Line 566
    move	$s7,$zero
    sd	$s3,72($sp)
    # Line 540
    move	$s3,$a0
    sd	$s2,80($sp)
    # Line 566
    move	$s2,$zero
    sd	$s0,24($sp)
    move	$s0,$zero
    sd	$s6,64($sp)
    sd	$s8,0($sp)
    sd	$gp,48($sp)
    # Line 540
    lui	$at,0x14
    sd	$s4,56($sp)
    # Line 546
    li	$s4,0x91fc
    addu	$s4,$s4,$a0
    lw	$s4,0($s4)
    # Line 540
    addiu	$at,$at,29548
    addu	$gp,$t9,$at
    # Line 566
    move	$s8,$s4
    move	$s6,$s4
    addiu	$v0,$s4,676
    addiu	$v1,$s4,860
    sd	$v1,88($sp)
    sd	$v0,96($sp)
.L0dab739c:
    ld	$v0,96($sp)
    lw	$at,1044($s4)
    bne	$at,$v0,.L0dab73b0
    ld	$a2,96($sp)
    ld	$a2,88($sp)
.L0dab73b0:
    # Line 569
    sw	$a2,1044($s4)
    addu	$v1,$s7,$s6
    lhu	$a4,1232($s8)
    lh	$v1,32($v1)
    bne	$v1,$a4,.L0dab73cc
    move	$a0,$a2
    # Line 571
    sw	$zero,1200($s4)
.L0dab73cc:
    addu	$a1,$a2,$s2
    lw	$a4,8($a1)
    bnezl	$a4,.L0dab73f0
    # Line 599
    sw	$zero,1208($s4)
    # Line 571
    lw	$at,1216($s4)
    beqz	$at,.L0dab74e4
    # Line 576
    addu	$s1,$s2,$s6
    b	.L0dab756c
    lw	$s1,4($s1)
.L0dab73f0:
    li	$at,1
    # Line 598
    sw	$at,1200($s4)
    # Line 600
    lw	$s1,8($a1)
    beqzl	$s1,.L0dab74e8
    # Line 566
    addiu	$s4,$s4,4
    b	.L0dab7434
    # Line 601
    lw	$a0,40($s1)
.L0dab740c:
    # Line 616
    move	$a0,$s3
    move	$a1,$s1
    addiu	$t9,$t9,-15364
    bal mgrTM_DrawSetup
    move	$a2,$s0
    addu	$s5,$s2,$s1
.L0dab7424:
    # Line 600
    lw	$s1,8($s5)
.L0dab7428:
    beqzl	$s1,.L0dab74e4
    lw	$a0,1044($s4)
    # Line 601
    lw	$a0,40($s1)
.L0dab7434:
    beqz	$a0,.L0dab7448
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
    bne	$a0,$s3,.L0dab740c
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
    # lw $t9, -32724($gp) # &sub_0dac0000
.L0dab7448:
    # Line 602
    move	$a0,$s1
    addiu	$t9,$t9,-10532
    bal mgrTM_RemoveLev
    move	$a1,$s0
    # Line 603
    addu	$s5,$s2,$s1
    li	$at,1
    beq	$at,$s0,.L0dab7608
    sw	$zero,24($s5)
    # Line 605
    addu	$v0,$s0,$s1
.L0dab746c:
    lbu	$v0,86($v0)
    beqzl	$v0,.L0dab7428
    # Line 600
    lw	$s1,8($s5)
    # Line 608
    lw	$at,0($s1)
    lhu	$a4,1232($s8)
    # Line 607
    lw	$a2,4($s1)
    # Line 608
    addu	$at,$at,$s7
    lh	$at,40($at)
    # Line 607
    lw	$a2,0($a2)
    # Line 608
    subu	$a4,$a4,$at
    addu	$at,$s7,$a2
    addiu	$a4,$a4,-1
    sh	$a4,156($at)
    # Line 609
    lw	$a1,4($s1)
    lbu	$a1,63($a1)
    sltiu	$v1,$a1,13
    beqz	$v1,.L0dab7424
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a2
.L0dab74b8:
    lw	$a1,20($a0)
    addiu	$at,$a2,52
    beqz	$a1,.L0dab7424
    addiu	$a0,$a0,4
    lw	$a3,28($a1)
    beqz	$a3,.L0dab7424
    # Line 611
    addu	$a4,$a3,$s0
    # Line 609
    bne	$at,$a0,.L0dab74b8
    # Line 611
    sb	$zero,86($a4)
    b	.L0dab7428
    # Line 600
    lw	$s1,8($s5)
.L0dab74e4:
    # Line 566
    addiu	$s4,$s4,4
.L0dab74e8:
    # Line 619
    addu	$v1,$s2,$a0
    # Line 566
    addiu	$s2,$s2,4
    addiu	$s6,$s6,48
    addiu	$s8,$s8,2
    addiu	$s7,$s7,2
    addiu	$s0,$s0,1
    li	$v0,2
    ld	$a4,88($sp)
    ld	$at,96($sp)
    # Line 619
    sw	$zero,8($v1)
    # Line 566
    addiu	$a4,$a4,92
    addiu	$at,$at,92
    sd	$at,96($sp)
    bne	$v0,$s0,.L0dab739c
    sd	$a4,88($sp)
    # Line 646
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s4,56($sp)
    ld	$s5,8($sp)
    ld	$s6,64($sp)
    ld	$s7,32($sp)
    # Line 645
    lw	$v0,-13340($gp)
    # Line 646
    ld	$s8,0($sp)
    ld	$ra,40($sp)
    # Line 645
    addiu	$v0,$v0,1
    sw	$v0,-13340($gp)
    ld	$gp,48($sp)
    # Line 646
    jr	$ra
    addiu	$sp,$sp,128
.L0dab7564:
    # Line 591
    beq	$a2,$s6,.L0dab75e8
    move	$s1,$a2
.L0dab756c:
    # Line 576
    lw	$a1,24($s1)
    beqz	$a1,.L0dab75ac
    # Line 589
    addu	$a2,$s2,$s1
    # Line 583
    addu	$a4,$s2,$a1
    lw	$a4,24($a4)
    bnezl	$a4,.L0dab7564
    # Line 589
    lw	$a2,4($a2)
    # Line 583
    lbu	$at,85($a1)
    beqz	$at,.L0dab75fc
    # Line 589
    addu	$a2,$s2,$s1
    # Line 586
    addu	$v0,$a1,$s0
    lbu	$v0,86($v0)
    beqzl	$v0,.L0dab7624
    # Line 588
    move	$a0,$s3
    # Line 589
    b	.L0dab7564
    lw	$a2,4($a2)
.L0dab75ac:
    # Line 579
    addu	$a2,$s2,$s1
    lw	$a2,4($a2)
    beq	$s6,$a2,.L0dab75e8
    nop
    # Line 580
    lw	$a1,24($a2)
    beqz	$a1,.L0dab7564
    nop
    # Line 581
    sw	$zero,1208($s4)
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 582
    move	$a0,$s3
    move	$a2,$zero
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    move	$a3,$s0
    # Line 583
    lw	$a0,1044($s4)
.L0dab75e8:
    # Line 593
    bne	$s6,$s1,.L0dab75f4
    li	$at,1
    sw	$at,1208($s4)
.L0dab75f4:
    # Line 594
    b	.L0dab74e4
    sw	$zero,1216($s4)
.L0dab75fc:
    # Line 589
    addu	$a2,$s2,$s1
    b	.L0dab7564
    lw	$a2,4($a2)
.L0dab7608:
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 605
    move	$a0,$s3
    addiu	$t9,$t9,-24696
    bal mgrTM_process_level
    move	$a1,$s1
    b	.L0dab746c
    addu	$v0,$s0,$s1
.L0dab7624:
    # Line 588
    move	$a2,$zero
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a3,$s0
    # Line 587
    sw	$zero,1208($s4)
    addiu	$t9,$t9,-19924
    # Line 588
    bal mgrTM_MakeResident
    lw	$a1,24($s1)
    # Line 589
    b	.L0dab75e8
    lw	$a0,1044($s4)
.end mgrTM_ProcessTextureUsage

# Function: mgrTM_set_externalformat
# Declared: Line 650 (Source lines: 655-717)
# Address: 0x0dab7648 - 0x0dab796c (Size: 804 bytes, Frame: 48)
.globl mgrTM_set_externalformat
.ent mgrTM_set_externalformat
mgrTM_set_externalformat:
    # Line 655
    sltiu	$at,$a2,5126
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0x14
    addiu	$v0,$v0,28752
    bnez	$at,.L0dab76c8
    addu	$gp,$t9,$v0
    # Line 658
    sltiu	$v1,$a2,5127
    bnez	$v1,.L0dab76f0
    li	$a4,0x8034
    sltu	$a0,$a2,$a4
    bnez	$a0,.L0dab781c
    sltu	$at,$a4,$a2
    beqz	$at,.L0dab789c
    li	$a4,0x8036
    sltu	$v0,$a2,$a4
    bnez	$v0,.L0dab7950
    sltu	$v1,$a4,$a2
    bnez	$v1,.L0dab7790
    # Line 679
    li	$a0,6408
.L0dab7698:
    beq	$a1,$a0,.L0dab77c0
    li	$at,0x8000
    beq	$a1,$at,.L0dab77c0
    # Line 680
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab76c8:
    # Line 658
    sltiu	$v0,$a2,5123
    bnez	$v0,.L0dab7778
    sltiu	$v1,$a2,5124
    beqz	$v1,.L0dab76e4
    sltiu	$a0,$a2,5125
.L0dab76dc:
    # Line 688
    b	.L0dab76f4
    # Line 687
    li	$a2,4
.L0dab76e4:
    # Line 658
    bnez	$a0,.L0dab78ec
    sltiu	$at,$a2,5126
    beqz	$at,.L0dab7790
.L0dab76f0:
    # Line 692
    li	$a2,8
.L0dab76f4:
    # Line 697
    sltiu	$v0,$a1,6407
.L0dab76f8:
    bnez	$v0,.L0dab7728
    # Line 699
    sltiu	$v1,$a1,6408
    bnez	$v1,.L0dab77e4
    sltiu	$a0,$a1,6410
    bnez	$a0,.L0dab7878
    sltiu	$at,$a1,6411
    bnez	$at,.L0dab7948
    li	$v0,0x8000
    bne	$a1,$v0,.L0dab77fc
    # Line 711
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab78e4
    nop
.L0dab7728:
    # Line 699
    sltiu	$v1,$a1,6404
    bnez	$v1,.L0dab77c8
    sltiu	$a0,$a1,6405
    beqz	$a0,.L0dab7860
    sltiu	$v1,$a1,6406
    # Line 705
    li	$a1,1
.L0dab7740:
    # Line 715
    ldc1	$f1,_lit8_3fe0000000000000
    mult	$a2,$a1
    mflo	$a4
    mtc1	$a4,$f0
    nop
    cvt.d.w	$f0,$f0
    mul.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    # Line 717
    li	$v0,1
    ld	$gp,0($sp)
    # Line 715
    mfc1	$a1,$f0
    # Line 717
    addiu	$sp,$sp,48
    jr	$ra
    # Line 715
    sb	$a1,168($a3)
.L0dab7778:
    # Line 658
    sltiu	$at,$a2,5121
    bnez	$at,.L0dab77b4
    sltiu	$v0,$a2,5122
    bnez	$v0,.L0dab77c0
    li	$v1,5122
    beq	$a2,$v1,.L0dab76dc
.L0dab7790:
    # Line 695
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dab7794:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 696
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab77b4:
    # Line 658
    li	$a0,5120
    bne	$a2,$a0,.L0dab7794
    # Line 695
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dab77c0:
    # Line 684
    b	.L0dab76f4
    # Line 683
    li	$a2,2
.L0dab77c8:
    # Line 699
    sltiu	$at,$a1,6403
    bnez	$at,.L0dab77ec
    sltiu	$v0,$a1,6404
    beqz	$v0,.L0dab77fc
    # Line 711
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab7740
    # Line 705
    li	$a1,1
.L0dab77e4:
    # Line 707
    b	.L0dab7740
    li	$a1,3
.L0dab77ec:
    # Line 699
    li	$v1,6400
    beq	$a1,$v1,.L0dab7740
    # Line 705
    li	$a1,1
    # Line 711
    # lw $t9, -27320($gp) # &__glSetError
.L0dab77fc:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 712
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab781c:
    # Line 658
    li	$a4,0x8032
    sltu	$a0,$a2,$a4
    bnez	$a0,.L0dab7900
    sltu	$at,$a4,$a2
    bnez	$at,.L0dab7894
    # Line 673
    li	$v0,6407
    beq	$a1,$v0,.L0dab76f4
    li	$a2,1
    # Line 675
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab7860:
    # Line 699
    bnez	$v1,.L0dab7934
    sltiu	$a0,$a1,6407
    beqz	$a0,.L0dab77fc
    # Line 711
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab7740
    # Line 705
    li	$a1,1
.L0dab7878:
    # Line 699
    sltiu	$at,$a1,6409
    bnez	$at,.L0dab78d8
    sltiu	$v0,$a1,6410
    beqz	$v0,.L0dab77fc
    # Line 711
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab7740
    # Line 705
    li	$a1,1
.L0dab7894:
    # Line 658
    li	$v1,0x8033
    bne	$a2,$v1,.L0dab7790
.L0dab789c:
    # Line 668
    li	$a0,6408
    beq	$a1,$a0,.L0dab76f4
    li	$a2,1
    li	$at,0x8000
    beq	$a1,$at,.L0dab76f8
    # Line 697
    sltiu	$v0,$a1,6407
    # Line 670
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab78d8:
    # Line 699
    li	$v0,6408
    bne	$a1,$v0,.L0dab77fc
    # Line 711
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dab78e4:
    # Line 709
    b	.L0dab7740
    li	$a1,4
.L0dab78ec:
    # Line 658
    li	$v1,5124
    bne	$a2,$v1,.L0dab7794
    # Line 695
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab76f4
    # Line 692
    li	$a2,8
.L0dab7900:
    # Line 658
    li	$a0,6656
    bne	$a2,$a0,.L0dab7790
    # Line 660
    li	$at,6400
    beq	$a1,$at,.L0dab7964
    # Line 661
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 662
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab7934:
    # Line 699
    li	$v0,6405
    bne	$a1,$v0,.L0dab77fc
    # Line 711
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab7740
    # Line 705
    li	$a1,1
.L0dab7948:
    # Line 706
    b	.L0dab7740
    li	$a1,2
.L0dab7950:
    # Line 658
    li	$v1,0x8035
    bne	$a2,$v1,.L0dab7794
    # Line 695
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab7698
    # Line 679
    li	$a0,6408
.L0dab7964:
    # Line 665
    b	.L0dab76f4
    # Line 664
    move	$a2,$zero
.end mgrTM_set_externalformat

# Function: mgrTM_set_internalformat
# Declared: Line 721 (Source lines: 725-1001)
# Address: 0x0dab796c - 0x0dab84d8 (Size: 2924 bytes, Frame: 48)
.globl mgrTM_set_internalformat
.ent mgrTM_set_internalformat
mgrTM_set_internalformat:
    # Line 726
    move	$a5,$zero
    # Line 732
    move	$a6,$zero
    # Line 725
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 733
    sb	$zero,195($a1)
    # Line 732
    sb	$zero,169($a1)
    sb	$zero,187($a1)
    sb	$zero,170($a1)
    # Line 734
    li	$a7,0x8050
    lw	$a4,24($a2)
    # Line 725
    lui	$v0,0x14
    addiu	$v0,$v0,27948
    # Line 734
    sltu	$at,$a4,$a7
    bnez	$at,.L0dab79f4
    # Line 725
    addu	$gp,$t9,$v0
    # Line 734
    sltu	$v1,$a7,$a4
    bnez	$v1,.L0dab7aac
.L0dab79b0:
    # Line 888
    lui	$a3,0x1
.L0dab79b4:
    # Line 887
    li	$a6,2
    sb	$a6,166($a1)
    # Line 888
    li	$a6,1
    sb	$a6,167($a1)
    addu	$a3,$a0,$a3
    lw	$a2,-28084($a3)
    # Line 890
    li	$v0,0x8051
    # Line 888
    beqz	$a2,.L0dab7b00
    # Line 896
    li	$v1,0x804f
    # Line 890
    sw	$v0,152($a1)
    lw	$at,-28084($a3)
    sltiu	$at,$at,2
    bnez	$at,.L0dab7a30
    nop
    # Line 892
    b	.L0dab7a30
    sb	$a6,170($a1)
.L0dab79f4:
    # Line 734
    li	$a3,0x8040
    sltu	$v1,$a4,$a3
    bnez	$v1,.L0dab7a90
    sltu	$a2,$a3,$a4
    bnez	$a2,.L0dab7b5c
    li	$a6,1
.L0dab7a0c:
    # Line 784
    sb	$a6,170($a1)
.L0dab7a10:
    # Line 783
    sb	$a6,167($a1)
    # Line 782
    sb	$zero,166($a1)
    # Line 785
    b	.L0dab7a30
    # Line 781
    sw	$a3,152($a1)
.L0dab7a20:
    # Line 734
    li	$a6,1
    beql	$a6,$a4,.L0dab7a10
    # Line 784
    sb	$a6,170($a1)
    # Line 989
    li	$a5,1
.L0dab7a30:
    # Line 992
    beqz	$a5,.L0dab7a5c
    # Line 994
    li	$a6,1
.L0dab7a38:
    # Line 992
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab7a5c:
    # Line 994
    lbu	$at,170($a1)
    sb	$zero,183($a1)
    ld	$gp,0($sp)
    beqz	$at,.L0dab7a84
    sb	$zero,180($a1)
    lw	$v0,1816($a0)
    li	$v1,4353
    beq	$v0,$v1,.L0dab7bc0
    nop
    # Line 999
    sb	$a6,180($a1)
.L0dab7a84:
    # Line 1001
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.L0dab7a90:
    # Line 734
    sltiu	$a2,$a4,6409
    bnez	$a2,.L0dab7b0c
    sltiu	$at,$a4,6410
    beqzl	$at,.L0dab7c30
    li	$a3,0x803c
    b	.L0dab7a0c
    li	$a6,1
.L0dab7aac:
    li	$a3,0x8114
    sltu	$v0,$a4,$a3
    bnez	$v0,.L0dab7b9c
    sltu	$v1,$a3,$a4
    bnez	$v1,.L0dab7cbc
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    # Line 816
    lw	$at,-28084($a3)
.L0dab7acc:
    beqz	$at,.L0dab809c
    # Line 817
    li	$a7,0x8043
    li	$a6,1
    sb	$a6,187($a1)
.L0dab7adc:
    # Line 819
    sw	$a7,152($a1)
    # Line 820
    sb	$a6,166($a1)
    # Line 821
    sb	$zero,167($a1)
    lw	$v0,-28084($a3)
    beqz	$v0,.L0dab7af8
    nop
    # Line 823
    sb	$a6,169($a1)
.L0dab7af8:
    # Line 825
    b	.L0dab7a30
    # Line 824
    sb	$a6,170($a1)
.L0dab7b00:
    # Line 895
    sb	$zero,167($a1)
    b	.L0dab7a30
    # Line 896
    sw	$v1,152($a1)
.L0dab7b0c:
    # Line 734
    sltiu	$a2,$a4,4
    bnez	$a2,.L0dab7bc8
    sltiu	$at,$a4,5
    beqz	$at,.L0dab7d34
    lui	$a3,0x1
    addu	$a3,$a0,$a3
.L0dab7b24:
    # Line 958
    li	$v0,3
    sb	$v0,166($a1)
    # Line 959
    li	$a6,1
    sb	$a6,167($a1)
    lw	$at,-28084($a3)
    beqz	$at,.L0dab7d24
    # Line 961
    li	$a2,0x8058
    sw	$a2,152($a1)
    lw	$v1,-28084($a3)
    sltiu	$v1,$v1,2
    bnez	$v1,.L0dab7a30
    nop
    # Line 963
    b	.L0dab7a30
    sb	$a6,170($a1)
.L0dab7b5c:
    # Line 734
    li	$a3,0x8048
    sltu	$at,$a4,$a3
    bnez	$at,.L0dab7bec
    sltu	$v0,$a3,$a4
    bnez	$v0,.L0dab7ddc
    li	$a6,1
    lui	$a3,0x1
    addu	$a3,$a0,$a3
.L0dab7b7c:
    # Line 862
    sb	$a6,166($a1)
    # Line 863
    li	$v0,2
    sb	$v0,167($a1)
    lw	$at,-28084($a3)
    beqz	$at,.L0dab7ed4
    # Line 865
    li	$v1,0x8047
    b	.L0dab7a30
    sw	$v1,152($a1)
.L0dab7b9c:
    # Line 734
    li	$a3,0x8058
    sltu	$a2,$a4,$a3
    bnez	$a2,.L0dab7c74
    sltu	$at,$a3,$a4
    bnez	$at,.L0dab7e40
    li	$a6,0x8110
    lui	$a3,0x1
    b	.L0dab7b24
    addu	$a3,$a0,$a3
.L0dab7bc0:
    # Line 998
    b	.L0dab7a84
    sb	$a6,183($a1)
.L0dab7bc8:
    # Line 734
    sltiu	$at,$a4,2
    bnez	$at,.L0dab7a20
    sltiu	$v0,$a4,3
    beqz	$v0,.L0dab7ee4
    li	$a7,0x8045
    li	$a6,1
    lui	$a3,0x1
    b	.L0dab7c10
    addu	$a3,$a0,$a3
.L0dab7bec:
    li	$a3,0x8044
    sltu	$at,$a4,$a3
    bnez	$at,.L0dab7db0
    sltu	$v0,$a3,$a4
    bnez	$v0,.L0dab7f88
    li	$a7,0x8045
    li	$a6,1
    lui	$a3,0x1
    addu	$a3,$a0,$a3
.L0dab7c10:
    # Line 840
    sw	$a7,152($a1)
    # Line 841
    sb	$a6,166($a1)
    # Line 842
    sb	$a6,167($a1)
    lw	$at,-28084($a3)
    beqz	$at,.L0dab7a30
    nop
    # Line 844
    b	.L0dab7a30
    sb	$a6,170($a1)
.L0dab7c30:
    # Line 734
    sltu	$v0,$a4,$a3
    bnez	$v0,.L0dab7d5c
    sltu	$v1,$a3,$a4
    bnez	$v1,.L0dab7f2c
    # Line 762
    li	$a2,0x9cb1
.L0dab7c44:
    addu	$a2,$a2,$a0
    lbu	$a2,0($a2)
    beqz	$a2,.L0dab8404
    nop
    # Line 765
    sb	$zero,166($a1)
    # Line 764
    li	$v0,1
    # Line 767
    sb	$v0,170($a1)
    # Line 766
    sb	$v0,167($a1)
    # Line 764
    sb	$v0,195($a1)
    # Line 763
    li	$at,0x803c
    # Line 768
    b	.L0dab7a30
    # Line 763
    sw	$at,152($a1)
.L0dab7c74:
    # Line 734
    li	$a3,0x8054
    sltu	$v1,$a4,$a3
    bnez	$v1,.L0dab7e18
    sltu	$a2,$a3,$a4
    bnez	$a2,.L0dab7fe8
    li	$a7,0x8056
.L0dab7c8c:
    # Line 903
    lui	$a4,0x1
.L0dab7c90:
    # Line 902
    li	$at,2
    sb	$at,166($a1)
    # Line 903
    sb	$at,167($a1)
    addu	$a4,$a0,$a4
    lw	$a4,-28084($a4)
    beqz	$a4,.L0dab80dc
    sltiu	$v0,$a4,2
    bnez	$v0,.L0dab8270
    # Line 906
    li	$v1,0x8053
    b	.L0dab7a30
    sw	$v1,152($a1)
.L0dab7cbc:
    # Line 734
    li	$a3,0x811c
    sltu	$a2,$a4,$a3
    bnez	$a2,.L0dab7e70
    sltu	$at,$a3,$a4
    bnez	$at,.L0dab8070
    lui	$a3,0x1
    addu	$a3,$a0,$a3
.L0dab7cd8:
    # Line 927
    lw	$at,-28084($a3)
    beqz	$at,.L0dab83f8
    # Line 929
    li	$a7,0x8056
    addiu	$v0,$a6,1
    sb	$v0,187($a1)
.L0dab7cec:
    # Line 932
    li	$a2,3
    sb	$a2,166($a1)
    # Line 933
    sb	$zero,167($a1)
    # Line 934
    sw	$a7,152($a1)
    lw	$v1,-28084($a3)
    beqz	$v1,.L0dab7a30
    # Line 936
    li	$a6,1
    sb	$a6,170($a1)
    lw	$at,-28084($a3)
    sltiu	$at,$at,2
    bnez	$at,.L0dab7a30
    nop
    # Line 938
    b	.L0dab7a30
    sb	$a6,169($a1)
.L0dab7d24:
    # Line 966
    sb	$zero,167($a1)
    # Line 967
    li	$v0,0x8056
    b	.L0dab7a30
    sw	$v0,152($a1)
.L0dab7d34:
    # Line 734
    sltiu	$v1,$a4,6407
    bnez	$v1,.L0dab7ef8
    sltiu	$a2,$a4,6408
    bnez	$a2,.L0dab79b0
    li	$at,6408
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    lui	$a3,0x1
    b	.L0dab7b24
    addu	$a3,$a0,$a3
.L0dab7d5c:
    sltiu	$at,$a4,10768
    bnez	$at,.L0dab7f0c
    sltiu	$v0,$a4,10769
    beqz	$v0,.L0dab8130
    li	$a6,0x804f
.L0dab7d70:
    # Line 876
    lui	$a3,0x1
.L0dab7d74:
    # Line 874
    li	$at,2
    sb	$at,166($a1)
    # Line 875
    sb	$zero,167($a1)
    # Line 876
    sw	$a6,152($a1)
    addu	$a3,$a0,$a3
    lw	$v1,-28084($a3)
    beqz	$v1,.L0dab7a30
    # Line 878
    li	$a6,1
    sb	$a6,170($a1)
    lw	$v0,-28084($a3)
    sltiu	$v0,$v0,2
    bnez	$v0,.L0dab7a30
    nop
    # Line 880
    b	.L0dab7a30
    sb	$a6,169($a1)
.L0dab7db0:
    # Line 734
    li	$a3,0x8042
    sltu	$v1,$a4,$a3
    bnez	$v1,.L0dab7f74
    sltu	$a2,$a3,$a4
    bnez	$a2,.L0dab8184
    li	$a3,0x8041
    # Line 805
    sb	$zero,166($a1)
.L0dab7dcc:
    # Line 804
    sw	$a3,152($a1)
    # Line 806
    li	$at,2
    # Line 807
    b	.L0dab7a30
    # Line 806
    sb	$at,167($a1)
.L0dab7ddc:
    # Line 734
    li	$a3,0x804c
    sltu	$v0,$a4,$a3
    bnez	$v0,.L0dab7fac
    sltu	$v1,$a3,$a4
    beqz	$v1,.L0dab80b0
    li	$a7,0x804e
    sltu	$a2,$a4,$a7
    bnez	$a2,.L0dab80a4
    sltu	$a6,$a7,$a4
    beqz	$a6,.L0dab7d70
    li	$a6,0x804f
    bnel	$a6,$a4,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab7d74
    # Line 876
    lui	$a3,0x1
.L0dab7e18:
    # Line 734
    li	$a3,0x8052
    sltu	$at,$a4,$a3
    bnez	$at,.L0dab7fd4
    sltu	$v0,$a3,$a4
    beqz	$v0,.L0dab7c8c
    li	$v1,0x8053
    bnel	$a4,$v1,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab7c90
    # Line 903
    lui	$a4,0x1
.L0dab7e40:
    # Line 734
    sltu	$a2,$a4,$a6
    bnez	$a2,.L0dab8004
    sltu	$at,$a6,$a4
    beqz	$at,.L0dab8240
    li	$a3,0x8112
    sltu	$v0,$a4,$a3
    bnez	$v0,.L0dab8284
    sltu	$v1,$a3,$a4
    bnez	$v1,.L0dab841c
    # Line 848
    li	$a2,1
.L0dab7e68:
    # Line 849
    b	.L0dab7eac
    # Line 848
    sb	$a2,195($a1)
.L0dab7e70:
    # Line 734
    li	$a3,0x8118
    sltu	$at,$a4,$a3
    bnez	$at,.L0dab8050
    sltu	$v0,$a3,$a4
    beqz	$v0,.L0dab824c
    li	$a3,0x811a
    sltu	$v1,$a4,$a3
    bnez	$v1,.L0dab829c
    sltu	$a2,$a3,$a4
    beqz	$a2,.L0dab7ea4
    li	$at,0x811b
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
.L0dab7ea4:
    # Line 852
    li	$v0,2
    sb	$v0,195($a1)
.L0dab7eac:
    # Line 854
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    lbu	$v1,-25423($a3)
    beqz	$v1,.L0dab849c
    nop
.L0dab7ec0:
    # Line 857
    lw	$at,-28084($a3)
    beqz	$at,.L0dab8478
    # Line 858
    li	$a6,1
    b	.L0dab7b7c
    sb	$a6,187($a1)
.L0dab7ed4:
    # Line 867
    sb	$a6,167($a1)
    # Line 868
    li	$v0,0x8045
    b	.L0dab7a30
    sw	$v0,152($a1)
.L0dab7ee4:
    # Line 734
    li	$v1,3
    bnel	$a4,$v1,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab79b4
    # Line 888
    lui	$a3,0x1
.L0dab7ef8:
    # Line 734
    li	$a2,6406
    bnel	$a4,$a2,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab7c44
    # Line 762
    li	$a2,0x9cb1
.L0dab7f0c:
    # Line 734
    li	$at,6410
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    li	$a7,0x8045
    li	$a6,1
    lui	$a3,0x1
    b	.L0dab7c10
    addu	$a3,$a0,$a3
.L0dab7f2c:
    li	$a3,0x803e
    sltu	$at,$a4,$a3
    bnez	$at,.L0dab8170
    sltu	$v0,$a3,$a4
    bnez	$v0,.L0dab8324
    # Line 788
    li	$v1,0x9cb1
.L0dab7f44:
    addu	$v1,$v1,$a0
    lbu	$v1,0($v1)
    beqz	$v1,.L0dab8494
    nop
    # Line 791
    sb	$zero,166($a1)
    # Line 792
    li	$v0,2
    sb	$v0,167($a1)
    # Line 790
    li	$at,1
    sb	$at,195($a1)
    # Line 789
    li	$a2,0x803d
    # Line 793
    b	.L0dab7a30
    # Line 789
    sw	$a2,152($a1)
.L0dab7f74:
    # Line 734
    li	$a3,0x8041
    bnel	$a3,$a4,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab7dcc
    # Line 805
    sb	$zero,166($a1)
.L0dab7f88:
    # Line 734
    li	$a3,0x8046
    sltu	$v1,$a4,$a3
    bnez	$v1,.L0dab81a0
    sltu	$a2,$a3,$a4
    bnez	$a2,.L0dab834c
    li	$a6,1
    lui	$a3,0x1
    b	.L0dab7b7c
    addu	$a3,$a0,$a3
.L0dab7fac:
    li	$a3,0x804a
    sltu	$at,$a4,$a3
    bnez	$at,.L0dab80ec
    sltu	$v0,$a3,$a4
    beqz	$v0,.L0dab83c0
    li	$v1,0x804b
    bnel	$a4,$v1,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab80fc
    # Line 771
    li	$v0,0x9cb1
.L0dab7fd4:
    # Line 734
    li	$a2,0x8051
    bnel	$a4,$a2,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab79b4
    # Line 888
    lui	$a3,0x1
.L0dab7fe8:
    # Line 734
    sltu	$at,$a4,$a7
    bnez	$at,.L0dab81bc
    sltu	$v0,$a7,$a4
    bnez	$v0,.L0dab8368
    lui	$a3,0x1
    b	.L0dab7cec
    addu	$a3,$a0,$a3
.L0dab8004:
    li	$a6,0x805a
    sltu	$at,$a4,$a6
    bnez	$at,.L0dab81d4
    sltu	$v0,$a6,$a4
    bnez	$v0,.L0dab8380
    li	$at,0x805b
    # Line 973
    lui	$a4,0x1
.L0dab8020:
    li	$at,3
    sb	$at,166($a1)
    addu	$a4,$a0,$a4
    lw	$a4,-28084($a4)
    beqz	$a4,.L0dab840c
    sltiu	$v0,$a4,2
    bnezl	$v0,.L0dab8488
    # Line 981
    sw	$a3,152($a1)
    # Line 976
    sw	$a6,152($a1)
    # Line 977
    li	$v1,2
    b	.L0dab7a30
    sb	$v1,167($a1)
.L0dab8050:
    # Line 734
    li	$a3,0x8116
    sltu	$a2,$a4,$a3
    bnez	$a2,.L0dab81e8
    sltu	$at,$a3,$a4
    bnez	$at,.L0dab8390
    lui	$a3,0x1
    b	.L0dab7ec0
    addu	$a3,$a0,$a3
.L0dab8070:
    li	$a3,0x8120
    sltu	$at,$a4,$a3
    bnez	$at,.L0dab8214
    sltu	$v0,$a3,$a4
    bnez	$v0,.L0dab82cc
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    # Line 925
    addiu	$a6,$a6,1
.L0dab8090:
    andi	$a6,$a6,0xff
    b	.L0dab7cd8
    sb	$a6,187($a1)
.L0dab809c:
    # Line 816
    b	.L0dab7a30
    li	$a5,1
.L0dab80a4:
    # Line 734
    li	$at,0x804d
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
.L0dab80b0:
    # Line 796
    li	$v0,0x9cb1
    addu	$v0,$v0,$a0
    lbu	$v0,0($v0)
    beqz	$v0,.L0dab8480
    nop
    # Line 799
    sb	$zero,166($a1)
    # Line 797
    sw	$a3,152($a1)
    # Line 798
    li	$v1,2
    # Line 800
    sb	$v1,167($a1)
    # Line 801
    b	.L0dab7a30
    # Line 798
    sb	$v1,195($a1)
.L0dab80dc:
    # Line 913
    sb	$zero,167($a1)
    # Line 914
    li	$a2,0x804f
    b	.L0dab7a30
    sw	$a2,152($a1)
.L0dab80ec:
    # Line 734
    li	$at,0x8049
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 771
    li	$v0,0x9cb1
.L0dab80fc:
    addu	$v0,$v0,$a0
    lbu	$v0,0($v0)
    beqz	$v0,.L0dab84b4
    nop
    # Line 774
    sb	$zero,166($a1)
    # Line 775
    li	$at,1
    # Line 776
    sb	$at,170($a1)
    # Line 775
    sb	$at,167($a1)
    # Line 773
    li	$a2,2
    sb	$a2,195($a1)
    # Line 772
    li	$v1,0x804b
    # Line 777
    b	.L0dab7a30
    # Line 772
    sw	$v1,152($a1)
.L0dab8130:
    # Line 734
    li	$a3,0x803b
    bnel	$a3,$a4,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 736
    li	$v0,0x9cb1
    addu	$v0,$v0,$a0
    lbu	$v0,0($v0)
    beqzl	$v0,.L0dab84bc
    sd	$ra,8($sp)
    # Line 740
    sb	$zero,167($a1)
    # Line 739
    sb	$zero,166($a1)
    # Line 737
    sw	$a3,152($a1)
    # Line 738
    li	$v1,1
    # Line 742
    sb	$v1,170($a1)
    # Line 741
    sb	$v1,169($a1)
    # Line 743
    b	.L0dab7a30
    # Line 738
    sb	$v1,195($a1)
.L0dab8170:
    # Line 734
    li	$a2,0x803d
    bnel	$a4,$a2,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab7f44
    # Line 788
    li	$v1,0x9cb1
.L0dab8184:
    # Line 734
    li	$a7,0x8043
    bnel	$a7,$a4,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    li	$a6,1
    lui	$a3,0x1
    b	.L0dab7adc
    addu	$a3,$a0,$a3
.L0dab81a0:
    li	$a7,0x8045
    bnel	$a7,$a4,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    li	$a6,1
    lui	$a3,0x1
    b	.L0dab7c10
    addu	$a3,$a0,$a3
.L0dab81bc:
    li	$at,0x8055
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    lui	$a3,0x1
    b	.L0dab7cec
    addu	$a3,$a0,$a3
.L0dab81d4:
    li	$at,0x8059
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab8020
    # Line 973
    lui	$a4,0x1
.L0dab81e8:
    # Line 734
    li	$v0,0x8115
    bnel	$a4,$v0,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    # Line 834
    lw	$at,-28084($a3)
.L0dab8200:
    beqz	$at,.L0dab84ac
    # Line 835
    li	$a7,0x8045
    li	$a6,1
    b	.L0dab7c10
    sb	$a6,187($a1)
.L0dab8214:
    # Line 734
    li	$a3,0x811e
    sltu	$v0,$a4,$a3
    bnez	$v0,.L0dab83a8
    sltu	$v1,$a3,$a4
    beqz	$v1,.L0dab8448
    li	$a2,0x811f
    bnel	$a4,$a2,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 942
    li	$at,1
    # Line 943
    b	.L0dab82f4
    # Line 942
    sb	$at,195($a1)
.L0dab8240:
    # Line 809
    li	$v0,1
    # Line 810
    b	.L0dab8254
    # Line 809
    sb	$v0,195($a1)
.L0dab824c:
    # Line 812
    li	$v1,2
    sb	$v1,195($a1)
.L0dab8254:
    # Line 814
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    lbu	$a2,-25423($a3)
    bnezl	$a2,.L0dab7acc
    # Line 816
    lw	$at,-28084($a3)
    # Line 814
    b	.L0dab7a30
    li	$a5,1
.L0dab8270:
    # Line 909
    li	$v0,0x8051
    sw	$v0,152($a1)
    # Line 908
    li	$at,1
    b	.L0dab7a30
    sb	$at,167($a1)
.L0dab8284:
    # Line 734
    li	$v1,0x8111
    bnel	$a4,$v1,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 827
    li	$a2,1
    # Line 828
    b	.L0dab82b0
    # Line 827
    sb	$a2,195($a1)
.L0dab829c:
    # Line 734
    li	$at,0x8119
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 830
    li	$v0,2
    sb	$v0,195($a1)
.L0dab82b0:
    # Line 832
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    lbu	$v1,-25423($a3)
    bnezl	$v1,.L0dab8200
    # Line 834
    lw	$at,-28084($a3)
    # Line 832
    b	.L0dab7a30
    li	$a5,1
.L0dab82cc:
    # Line 734
    li	$a3,0x8122
    sltu	$at,$a4,$a3
    bnez	$at,.L0dab8430
    sltu	$v0,$a3,$a4
    beqz	$v0,.L0dab8454
    li	$v1,0x8123
    bnel	$a4,$v1,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 945
    li	$a2,2
    sb	$a2,195($a1)
.L0dab82f4:
    # Line 947
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    lbu	$at,-25423($a3)
    beqz	$at,.L0dab84d0
.L0dab8304:
    # Line 949
    addiu	$a6,$a6,1
    andi	$a6,$a6,0xff
    sb	$a6,187($a1)
.L0dab8310:
    # Line 951
    lw	$at,-28084($a3)
    beqz	$at,.L0dab84c4
    # Line 953
    addiu	$v0,$a6,1
    b	.L0dab7b24
    sb	$v0,187($a1)
.L0dab8324:
    # Line 734
    li	$a3,0x803f
    bnel	$a3,$a4,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 756
    sb	$zero,167($a1)
    # Line 755
    sb	$zero,166($a1)
    # Line 754
    sw	$a3,152($a1)
    # Line 757
    li	$v1,1
    # Line 758
    sb	$v1,170($a1)
    # Line 759
    b	.L0dab7a30
    # Line 757
    sb	$v1,169($a1)
.L0dab834c:
    # Line 734
    li	$a2,0x8047
    bnel	$a4,$a2,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    li	$a6,1
    lui	$a3,0x1
    b	.L0dab7b7c
    addu	$a3,$a0,$a3
.L0dab8368:
    li	$at,0x8057
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    lui	$a3,0x1
    b	.L0dab7b24
    addu	$a3,$a0,$a3
.L0dab8380:
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab8020
    # Line 973
    lui	$a4,0x1
.L0dab8390:
    # Line 734
    li	$v0,0x8117
    bnel	$a4,$v0,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    lui	$a3,0x1
    b	.L0dab7ec0
    addu	$a3,$a0,$a3
.L0dab83a8:
    li	$at,0x811d
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    lui	$a3,0x1
    b	.L0dab8310
    addu	$a3,$a0,$a3
.L0dab83c0:
    # Line 745
    li	$at,0x9cb1
    addu	$at,$at,$a0
    lbu	$at,0($at)
    beqz	$at,.L0dab84a4
    nop
    # Line 749
    sb	$zero,167($a1)
    # Line 748
    sb	$zero,166($a1)
    # Line 746
    sw	$a3,152($a1)
    # Line 750
    li	$v1,1
    # Line 751
    sb	$v1,170($a1)
    # Line 750
    sb	$v1,169($a1)
    # Line 747
    li	$v0,2
    # Line 752
    b	.L0dab7a30
    # Line 747
    sb	$v0,195($a1)
.L0dab83f8:
    # Line 928
    li	$a5,1
    b	.L0dab7a30
    sb	$zero,187($a1)
.L0dab8404:
    # Line 762
    b	.L0dab7a30
    li	$a5,1
.L0dab840c:
    # Line 986
    sb	$zero,167($a1)
    # Line 985
    li	$a2,0x8056
    b	.L0dab7a30
    sw	$a2,152($a1)
.L0dab841c:
    # Line 734
    li	$at,0x8113
    bnel	$a4,$at,.L0dab7a30
    # Line 989
    li	$a5,1
    b	.L0dab7e68
    # Line 848
    li	$a2,1
.L0dab8430:
    # Line 734
    li	$v0,0x8121
    bnel	$a4,$v0,.L0dab7a30
    # Line 989
    li	$a5,1
    # Line 734
    lui	$a3,0x1
    b	.L0dab8304
    addu	$a3,$a0,$a3
.L0dab8448:
    # Line 918
    li	$at,1
    # Line 919
    b	.L0dab845c
    # Line 918
    sb	$at,195($a1)
.L0dab8454:
    # Line 921
    li	$v0,2
    sb	$v0,195($a1)
.L0dab845c:
    # Line 923
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    lbu	$v1,-25423($a3)
    bnez	$v1,.L0dab8090
    # Line 925
    addiu	$a6,$a6,1
    # Line 923
    b	.L0dab7a30
    li	$a5,1
.L0dab8478:
    # Line 857
    b	.L0dab7a30
    li	$a5,1
.L0dab8480:
    # Line 796
    b	.L0dab7a30
    li	$a5,1
.L0dab8488:
    # Line 980
    li	$at,1
    b	.L0dab7a30
    sb	$at,167($a1)
.L0dab8494:
    # Line 788
    b	.L0dab7a30
    li	$a5,1
.L0dab849c:
    # Line 854
    b	.L0dab7a30
    li	$a5,1
.L0dab84a4:
    # Line 745
    b	.L0dab7a30
    li	$a5,1
.L0dab84ac:
    # Line 834
    b	.L0dab7a30
    li	$a5,1
.L0dab84b4:
    # Line 771
    b	.L0dab7a30
    li	$a5,1
.L0dab84bc:
    b	.L0dab7a38
    # Line 736
    li	$a5,1
.L0dab84c4:
    # Line 952
    li	$a5,1
    b	.L0dab7a30
    sb	$zero,187($a1)
.L0dab84d0:
    # Line 947
    b	.L0dab7a30
    li	$a5,1
.end mgrTM_set_internalformat

# Function: mgrTM_process_level
# Declared: Line 1005 (Source lines: 1010-1108)
# Address: 0x0dab84d8 - 0x0dab89ac (Size: 1236 bytes, Frame: 208)
.globl mgrTM_process_level
.ent mgrTM_process_level
mgrTM_process_level:
    # Line 1010
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$gp,8($sp)
    sd	$s2,16($sp)
    move	$s2,$a0
    lui	$v0,0x14
    lw	$a5,4($a2)
    lbu	$at,179($a1)
    addiu	$v0,$v0,25024
    slti	$at,$at,4
    beqz	$at,.L0dab8520
    addu	$gp,$t9,$v0
    # Line 1017
    sra	$a0,$a5,0x1
    b	.L0dab8524
    nop
.L0dab8520:
    move	$a0,$a5
.L0dab8524:
    # Line 1021
    move	$a1,$zero
    # Line 1017
    lbu	$a2,169($s1)
    # Line 1018
    lbu	$t2,180($s1)
    # Line 1021
    sh	$zero,50($s0)
    # Line 1020
    li	$at,-1
    # Line 1018
    lw	$a7,8($s0)
    # Line 1020
    sh	$at,56($s0)
    # Line 1017
    srav	$a2,$a0,$a2
    # Line 1018
    srav	$a7,$a7,$t2
    # Line 1021
    slti	$t2,$a7,17
    beqz	$t2,.L0dab8604
    # Line 1052
    sra	$a6,$a7,0x5
    # Line 1021
    slti	$v0,$a2,9
    beqz	$v0,.L0dab8608
    lbu	$a0,179($s1)
    # Line 1022
    slti	$v1,$a0,4
    beqz	$v1,.L0dab860c
    # Line 1051
    sra	$a5,$a2,0x5
    # Line 1023
    lw	$a4,20($s0)
    beqzl	$a4,.L0dab8874
    lbu	$at,181($s1)
    sh	$zero,56($s0)
.L0dab857c:
    lw	$a1,16($s1)
.L0dab8580:
    beqz	$a1,.L0dab8884
    # Line 1038
    lui	$v0,0x1
    # Line 1023
    lbu	$a0,63($s0)
    blez	$a0,.L0dab85bc
    # Line 1025
    sll	$a2,$a0,0x2
    addu	$a2,$a2,$s1
    lw	$a2,16($a2)
    beqzl	$a2,.L0dab85c0
    lbu	$at,89($a1)
    lw	$a4,4($a2)
    lbu	$at,169($s1)
    sra	$a4,$a4,0x1
    srav	$a4,$a4,$at
    blezl	$a4,.L0dab88ec
    lw	$at,8($a2)
.L0dab85bc:
    lbu	$at,89($a1)
.L0dab85c0:
    beqz	$at,.L0dab893c
.L0dab85c4:
    # Line 1034
    sll	$a4,$a0,0x2
    addu	$a4,$a4,$s1
    lw	$a4,20($a4)
    sw	$a1,28($a4)
    lw	$a1,16($s1)
    lw	$v1,4($a1)
    lbu	$v0,63($s0)
    lbu	$v1,63($v1)
    slt	$v0,$v0,$v1
    beqz	$v0,.L0dab85f8
    # Line 1035
    lui	$at,0x1
    sw	$s0,4($a1)
    lui	$at,0x1
.L0dab85f8:
    addu	$at,$s2,$at
    b	.L0dab87a4
    sd	$at,0($sp)
.L0dab8604:
    # Line 1024
    lbu	$a0,179($s1)
.L0dab8608:
    # Line 1051
    sra	$a5,$a2,0x5
.L0dab860c:
    beqz	$a5,.L0dab87d0
    # Line 1062
    move	$t0,$zero
.L0dab8614:
    # Line 1052
    beqz	$a6,.L0dab87d8
    slti	$v0,$a0,2
.L0dab861c:
    bnezl	$v0,.L0dab8638
    # Line 1056
    lw	$a0,12($s0)
    # Line 1054
    mult	$a5,$a6
    mflo	$a1
    andi	$a1,$a1,0xffff
    sh	$a1,50($s0)
    # Line 1056
    lw	$a0,12($s0)
.L0dab8638:
    # Line 1063
    lw	$t1,20($s0)
    # Line 1062
    move	$a5,$zero
    # Line 1056
    slti	$a4,$a0,2
    bnez	$a4,.L0dab8660
    sh	$a1,54($s0)
    # Line 1058
    sra	$a4,$a0,0x1
    multu	$a4,$a1
    mflo	$a1
    andi	$a1,$a1,0xffff
    sh	$a1,50($s0)
.L0dab8660:
    lw	$a0,16($s0)
    slti	$at,$a0,2
    bnez	$at,.L0dab8684
    # Line 1068
    move	$a6,$zero
    # Line 1060
    multu	$a0,$a1
    mflo	$a1
    andi	$a1,$a1,0xffff
    sh	$a1,50($s0)
    # Line 1068
    move	$a6,$zero
.L0dab8684:
    # Line 1063
    beqz	$t1,.L0dab87e0
    lbu	$a0,179($s1)
    # Line 1065
    lbu	$at,180($s1)
.L0dab8690:
    sra	$a5,$a2,0x8
    srav	$a5,$a5,$at
    beqz	$a5,.L0dab87f4
.L0dab869c:
    # Line 1068
    li	$t3,1
.L0dab86a0:
    slt	$t3,$t3,$a0
    beqz	$t3,.L0dab86d8
    # Line 1077
    move	$a0,$a5
    # Line 1069
    beqzl	$t1,.L0dab87fc
    lbu	$at,181($s1)
    # Line 1071
    sra	$t0,$a7,0x8
.L0dab86b8:
    beqz	$t0,.L0dab8828
    nop
    # Line 1072
    beqz	$t1,.L0dab8834
    # Line 1074
    slti	$v1,$a2,17
.L0dab86c8:
    # Line 1072
    beqz	$t2,.L0dab86d8
    # Line 1077
    move	$a0,$a5
    # Line 1074
    li	$a6,1
.L0dab86d4:
    # Line 1077
    move	$a0,$a5
.L0dab86d8:
    beqz	$a5,.L0dab86f0
    # Line 1078
    addu	$a2,$t0,$a5
    beqz	$t3,.L0dab880c
    li	$a2,1
.L0dab86e8:
    move	$a0,$a2
    addu	$a2,$t0,$a5
.L0dab86f0:
    addu	$a2,$a2,$a0
    # Line 1083
    lui	$a0,0x1
    # Line 1078
    beqz	$a2,.L0dab8708
    # Line 1083
    addu	$a7,$a2,$a1
    # Line 1082
    subu	$a4,$a1,$a6
    sh	$a4,56($s0)
.L0dab8708:
    # Line 1083
    subu	$a7,$a7,$a6
    andi	$a7,$a7,0xffff
    sh	$a7,48($s0)
    addu	$a0,$s2,$a0
    lw	$t0,-28164($a0)
    lhu	$a5,160($s1)
    lhu	$t0,1234($t0)
    addu	$at,$a7,$a5
    slt	$at,$t0,$at
    beqzl	$at,.L0dab877c
    sd	$ra,40($sp)
    beqz	$a5,.L0dab8844
    slt	$a4,$t0,$a1
    # Line 1087
    lbu	$at,179($s1)
.L0dab8740:
    andi	$at,$at,0x1
    beqz	$at,.L0dab8928
    sd	$ra,40($sp)
    # Line 1092
    # lw $t9, -17868($gp) # &bzero
.L0dab8750:
    li	$a1,24
    jal	bzero
    addiu	$a0,$s0,4
    # Line 1093
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab877c:
    sd	$a0,0($sp)
.L0dab8780:
    # Line 1097
    move	$a1,$s0
    move	$a0,$s2
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1096
    addu	$ra,$a7,$a5
    sh	$ra,160($s1)
    # Line 1097
    addiu	$t9,$t9,-30292
    bal mgrTM_process_level
    lw	$a2,0($a3)
    ld	$ra,40($sp)
.L0dab87a4:
    # Line 1108
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$v1,0($sp)
    ld	$s2,16($sp)
    li	$at,1
    # Line 1099
    lw	$v1,-28164($v1)
    # Line 1108
    addiu	$sp,$sp,80
    jr	$ra
    # Line 1099
    sw	$at,1204($v1)
.L0dab87d0:
    b	.L0dab8614
    # Line 1051
    li	$a5,1
.L0dab87d8:
    b	.L0dab861c
    # Line 1052
    li	$a6,1
.L0dab87e0:
    # Line 1063
    slti	$a4,$a0,2
    beqz	$a4,.L0dab86a0
    # Line 1068
    li	$t3,1
    b	.L0dab8690
    # Line 1065
    lbu	$at,180($s1)
.L0dab87f4:
    b	.L0dab869c
    # Line 1066
    li	$a5,1
.L0dab87fc:
    # Line 1069
    beqz	$at,.L0dab86d8
    # Line 1077
    move	$a0,$a5
    b	.L0dab86b8
    # Line 1071
    sra	$t0,$a7,0x8
.L0dab880c:
    # Line 1078
    bnez	$t1,.L0dab86e8
    li	$a2,1
    lbu	$v0,181($s1)
    bnez	$v0,.L0dab86e8
    li	$a2,1
    b	.L0dab86e8
    move	$a2,$zero
.L0dab8828:
    # Line 1072
    bnez	$t1,.L0dab86c8
    li	$t0,1
    # Line 1074
    slti	$v1,$a2,17
.L0dab8834:
    beqz	$v1,.L0dab86d8
    # Line 1077
    move	$a0,$a5
    b	.L0dab86d4
    # Line 1075
    li	$a6,1
.L0dab8844:
    # Line 1083
    bnezl	$a4,.L0dab8740
    # Line 1087
    lbu	$at,179($s1)
    # Line 1085
    bnezl	$t1,.L0dab8740
    # Line 1087
    lbu	$at,179($s1)
    # Line 1086
    li	$a5,1
    sb	$a5,182($s1)
    # Line 1087
    lhu	$a7,50($s0)
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    sh	$a7,48($s0)
    # Line 1085
    b	.L0dab8780
    lhu	$a5,160($s1)
.L0dab8874:
    # Line 1023
    beqzl	$at,.L0dab8580
    lw	$a1,16($s1)
    b	.L0dab857c
    sh	$zero,56($s0)
.L0dab8884:
    # Line 1038
    addu	$v0,$s2,$v0
    li	$v1,1
    sh	$v1,48($s0)
    sd	$v0,0($sp)
    lw	$v0,-28164($v0)
    lhu	$a5,160($s1)
    lhu	$v0,1234($v0)
    slt	$v0,$a5,$v0
    bnez	$v0,.L0dab8968
    # Line 1046
    move	$a1,$s0
    # Line 1038
    lbu	$a4,179($s1)
    andi	$a4,$a4,0x1
    beqz	$a4,.L0dab8998
    sd	$ra,40($sp)
    # Line 1042
    # lw $t9, -17868($gp) # &bzero
.L0dab88c0:
    li	$a1,24
    jal	bzero
    addiu	$a0,$s0,4
    # Line 1043
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab88ec:
    # Line 1025
    lbu	$v0,180($s1)
    srav	$at,$at,$v0
    slti	$at,$at,2
    beqzl	$at,.L0dab85c0
    lbu	$at,89($a1)
    # Line 1029
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    # Line 1027
    li	$v1,1
    sb	$v1,64($s0)
    # Line 1029
    ld	$s0,32($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 1028
    sw	$zero,0($a3)
.L0dab8928:
    # Line 1091
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0dab8750
    # Line 1092
    nop	# was lw $t9, -17868($gp) # &bzero
.L0dab893c:
    # Line 1033
    move	$a0,$s2
    move	$a4,$zero
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    li	$a3,1
    sd	$ra,40($sp)
    bal mgrTM_MakeResident
    li	$a2,1
    lbu	$a0,63($s0)
    lw	$a1,16($s1)
    b	.L0dab85c4
    ld	$ra,40($sp)
.L0dab8968:
    # Line 1046
    move	$a0,$s2
    sd	$ra,40($sp)
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1045
    addiu	$ra,$a5,1
    sh	$ra,160($s1)
    # Line 1046
    addiu	$t9,$t9,-30292
    bal mgrTM_process_level
    lw	$a2,0($a3)
    # Line 1047
    lw	$at,28($s0)
    ld	$ra,40($sp)
    b	.L0dab87a4
    sw	$at,16($s1)
.L0dab8998:
    # Line 1041
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0dab88c0
    # Line 1042
    nop	# was lw $t9, -17868($gp) # &bzero
.end mgrTM_process_level

# Function: do_placement
# Declared: Line 1112 (Source lines: 1116-1213)
# Address: 0x0dab89ac - 0x0dab8de8 (Size: 1084 bytes, Frame: 224)
.ent do_placement
do_placement:
    # Line 1116
    addiu	$sp,$sp,-96
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$s2,40($sp)
    move	$s2,$a1
    sd	$s0,32($sp)
    # Line 1121
    bltz	$a2,.L0dab8cb0
    lw	$s0,0($a1)
    # Line 1125
    lw	$at,76($s0)
    lui	$v0,0x1
    addu	$v0,$s1,$v0
    bnez	$at,.L0dab8a7c
    lw	$a0,-28164($v0)
    # Line 1127
    sb	$zero,185($s0)
    sb	$zero,186($s0)
    lw	$v1,-28084($v0)
    beqzl	$v1,.L0dab8a10
    # Line 1130
    lbu	$at,183($s0)
    # Line 1127
    lbu	$a3,166($s0)
    slti	$a3,$a3,2
    beqzl	$a3,.L0dab8a10
    # Line 1130
    lbu	$at,183($s0)
    # Line 1129
    li	$a4,1
    sb	$a4,185($s0)
    # Line 1130
    lbu	$at,183($s0)
.L0dab8a10:
    beqz	$at,.L0dab8cd0
    sb	$zero,184($s0)
    lw	$a2,480($a0)
    beqz	$a2,.L0dab8cc4
    # Line 1135
    li	$at,1
    # Line 1133
    sw	$a2,12($s0)
    # Line 1134
    lw	$v1,480($a0)
    sw	$s0,12($v1)
    # Line 1136
    lw	$a4,12($s0)
    # Line 1135
    sb	$at,184($s0)
    # Line 1136
    lbu	$a4,186($a4)
    sb	$a4,186($s0)
    # Line 1137
    sw	$zero,480($a0)
    # Line 1138
    lbu	$a3,63($s2)
    lw	$a1,12($s0)
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a3
    lw	$a1,20($a1)
    lw	$a1,28($a1)
    sw	$a1,28($s2)
    lbu	$v1,89($a1)
    beqz	$v1,.L0dab8dbc
.L0dab8a68:
    # Line 1143
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab8a7c:
    # Line 1166
    lw	$a0,12($s0)
    beqzl	$a0,.L0dab8ac0
    # Line 1174
    lw	$t9,0($s1)
    # Line 1170
    lbu	$v0,63($s2)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lw	$v0,20($v0)
    beqzl	$v0,.L0dab8ac0
    # Line 1174
    lw	$t9,0($s1)
    # Line 1171
    lw	$v1,28($v0)
    # Line 1172
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 1171
    sw	$v1,28($s2)
    # Line 1172
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
    # Line 1174
    lw	$t9,0($s1)
.L0dab8ac0:
    move	$a0,$s1
    sd	$ra,48($sp)
    jalr	$t9
    li	$a1,92
    move	$a3,$v0
    # Line 1175
    li	$a2,92
    move	$a0,$v0
    # Line 1174
    sw	$v0,28($s2)
    # Line 1175
    # lw $t9, -17848($gp) # &memcpy
    lw	$a1,76($s0)
    sd	$v0,8($sp)
    jal	memcpy
    lw	$a1,28($a1)
    ld	$a4,8($sp)
    # Line 1185
    sb	$zero,88($a4)
    sb	$zero,89($a4)
    # Line 1184
    sb	$zero,85($a4)
    # Line 1183
    sw	$zero,60($a4)
    sw	$zero,64($a4)
    # Line 1182
    sw	$zero,56($a4)
    # Line 1181
    sw	$zero,52($a4)
    # Line 1180
    sw	$zero,48($a4)
    # Line 1179
    sw	$zero,44($a4)
    # Line 1178
    sw	$zero,28($a4)
    sw	$zero,24($a4)
    # Line 1177
    sw	$zero,16($a4)
    sw	$zero,20($a4)
    # Line 1176
    sw	$zero,8($a4)
    sw	$zero,12($a4)
.L0dab8b34:
    # Line 1188
    ld	$a6,8($sp)
    # Line 1190
    move	$a1,$zero
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1188
    sw	$s2,4($a6)
    # Line 1190
    move	$a0,$s1
    # Line 1189
    lbu	$a5,180($s0)
    # Line 1190
    addiu	$t9,$t9,-9116
    bal mgrTM_SaveData
    # Line 1189
    sb	$a5,80($a6)
    # Line 1190
    ld	$a1,8($sp)
    sw	$v0,0($a1)
    # Line 1192
    sw	$a1,24($v0)
    # Line 1191
    sw	$v0,0($v0)
    sw	$v0,12($v0)
    # Line 1193
    lh	$a4,48($s2)
    # Line 1194
    addiu	$a3,$s0,108
    # Line 1193
    sh	$a4,78($a1)
    # Line 1194
    sw	$a3,28($v0)
    # Line 1193
    sh	$a4,38($v0)
    # Line 1195
    lhu	$a2,70($a1)
    lhu	$a0,68($a1)
    mult	$a0,$a2
    lbu	$v1,183($s0)
    mflo	$at
    sllv	$at,$at,$v1
    sra	$at,$at,0xc
    sh	$at,44($v0)
    # Line 1198
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1196
    lbu	$ra,90($a1)
    sd	$v0,0($sp)
    # Line 1198
    addiu	$t9,$t9,-29208
    # Line 1196
    sh	$ra,46($v0)
    # Line 1198
    li	$a2,1
    lw	$a3,76($s0)
    move	$a0,$s1
    bal mgrTM_process_level
    sltu	$a3,$zero,$a3
    move	$a2,$v0
    beqz	$v0,.L0dab8c74
    ld	$s2,8($sp)
    # Line 1201
    lw	$at,4($s2)
    lw	$at,0($at)
    lbu	$at,186($at)
    sb	$at,84($s2)
.L0dab8be4:
    # Line 1210
    move	$a4,$zero
    # Line 1207
    ld	$v1,0($sp)
    lh	$ra,42($a2)
    # Line 1210
    li	$a3,1
    move	$a1,$s2
    # Line 1207
    sh	$ra,42($v1)
    # Line 1210
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1208
    lh	$a5,78($s2)
    lh	$v0,42($a2)
    # Line 1210
    move	$a0,$s1
    addiu	$t9,$t9,-26264
    # Line 1208
    subu	$v0,$v0,$a5
    addiu	$v0,$v0,1
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sh	$v0,34($v1)
    # Line 1209
    sb	$zero,87($s2)
    # Line 1210
    bal mgrTM_process_level
    # Line 1208
    sh	$v0,74($s2)
    # Line 1211
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s1
    move	$a1,$s2
    addiu	$t9,$t9,-15364
    bal mgrTM_DrawSetup
    li	$a2,1
    # Line 1212
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s1
    addiu	$t9,$t9,-24696
    bal mgrTM_process_level
    move	$a1,$s2
    # Line 1213
    ld	$s0,32($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab8c74:
    # Line 1201
    lw	$at,76($s0)
    beqz	$at,.L0dab8d9c
    # Line 1204
    move	$a0,$s1
    move	$a1,$s2
    # lw $t9, -32724($gp) # &sub_0dac0000
    lbu	$a3,166($s0)
    lbu	$a2,186($s0)
    addiu	$t9,$t9,-28536
    xori	$a3,$a3,0x1
    sltiu	$a3,$a3,1
    sllv	$a2,$a2,$a3
    bal mgrTM_process_level
    addiu	$a2,$a2,1
    b	.L0dab8be4
    move	$a2,$v0
.L0dab8cb0:
    # Line 1124
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab8cc4:
    sd	$ra,48($sp)
    sd	$v0,16($sp)
    # Line 1145
    sw	$s0,480($a0)
.L0dab8cd0:
    sd	$v0,16($sp)
    # Line 1147
    lw	$t9,0($s1)
    move	$a0,$s1
    sd	$ra,48($sp)
    jal	sub_0dac0000
    li	$a1,92
    sd	$v0,56($sp)
    # Line 1148
    li	$a1,92
    move	$a0,$v0
    # Line 1147
    move	$at,$v0
    # Line 1148
    # lw $t9, -17868($gp) # &bzero
    sd	$v0,8($sp)
    # Line 1147
    move	$ra,$v0
    # Line 1148
    jal	bzero
    # Line 1147
    sw	$v0,28($s2)
    ld	$v1,16($sp)
    # Line 1148
    lw	$v1,-28084($v1)
    li	$a0,32
    beqz	$v1,.L0dab8d74
    ld	$v0,56($sp)
    # Line 1151
    lbu	$v1,167($s0)
    li	$at,1
    slt	$at,$at,$v1
    sb	$at,83($v0)
    # Line 1152
    lbu	$a2,166($s0)
    sb	$a2,82($v0)
    # Line 1153
    addiu	$v1,$a2,1
    sll	$v1,$v1,0x6
    sllv	$v1,$v1,$at
    sh	$v1,68($v0)
    # Line 1156
    li	$a4,2
    # Line 1154
    lbu	$a3,180($s0)
    # Line 1156
    sb	$a2,90($v0)
    # Line 1155
    addiu	$at,$at,1
    sb	$at,83($v0)
    # Line 1154
    sllv	$a3,$a0,$a3
    # Line 1156
    bne	$a2,$a4,.L0dab8b34
    # Line 1154
    sh	$a3,70($v0)
    # Line 1158
    addiu	$a3,$a2,1
    b	.L0dab8b34
    sb	$a3,90($v0)
.L0dab8d74:
    # Line 1166
    sb	$zero,90($v0)
    # Line 1165
    sb	$zero,84($v0)
    # Line 1164
    sh	$a0,70($v0)
    # Line 1163
    li	$v1,128
    sh	$v1,68($v0)
    # Line 1162
    li	$at,3
    sb	$at,82($v0)
    # Line 1161
    li	$a4,1
    b	.L0dab8b34
    sb	$a4,81($v0)
.L0dab8d9c:
    # Line 1205
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s1
    move	$a1,$s2
    addiu	$t9,$t9,-28536
    bal mgrTM_process_level
    li	$a2,1
    b	.L0dab8be4
    move	$a2,$v0
.L0dab8dbc:
    # Line 1140
    move	$a0,$s1
    move	$a4,$zero
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    move	$a3,$zero
    sd	$ra,48($sp)
    bal mgrTM_MakeResident
    li	$a2,1
    # Line 1141
    lw	$ra,28($s2)
    sb	$zero,85($ra)
    b	.L0dab8a68
    ld	$ra,48($sp)
.end do_placement

# Function: SearchAllSpaces
# Declared: Line 1216 (Source lines: 1221-1253)
# Address: 0x0dab8de8 - 0x0dab9088 (Size: 672 bytes, Frame: 192)
.ent SearchAllSpaces
SearchAllSpaces:
    # Line 1222
    move	$v0,$zero
    # Line 1223
    li	$a7,1
    # Line 1221
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    # Line 1223
    lw	$a6,4($a1)
    # Line 1221
    move	$s1,$a1
    # Line 1223
    bne	$a2,$a7,.L0dab8e98
    lw	$a6,0($a6)
    beqz	$a3,.L0dab8ed0
    lbu	$t0,166($a6)
    sd	$a6,0($sp)
    # Line 1227
    move	$a0,$s0
    move	$a1,$s1
    li	$a3,1
    sd	$ra,24($sp)
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a2,$a6
    lbu	$a2,186($a6)
    li	$a4,1
    xor	$a5,$a4,$t0
    sltiu	$a5,$a5,1
    sllv	$a2,$a2,$a5
    addiu	$t9,$t9,-27920
    bal mgrTM_process_level
    addu	$a2,$a2,$a4
    bnez	$v0,.L0dab8ec0
    ld	$ra,24($sp)
    # Line 1229
    move	$a0,$s0
    move	$a1,$s1
    ld	$a2,0($sp)
    # lw $t9, -32724($gp) # &sub_0dac0000
    li	$a3,1
    lbu	$a4,166($a2)
    addiu	$t9,$t9,-27504
    lbu	$a2,186($a2)
    xor	$a4,$a4,$a3
    sltiu	$a4,$a4,1
    sllv	$a2,$a2,$a4
    bal mgrTM_process_level
    addu	$a2,$a2,$a3
    b	.L0dab8ec0
    ld	$ra,24($sp)
.L0dab8e98:
    # Line 1250
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a2,$zero
    sd	$ra,24($sp)
    addiu	$t9,$t9,-27920
    bal mgrTM_process_level
    li	$a3,1
    beqz	$v0,.L0dab8f30
    ld	$ra,24($sp)
.L0dab8ec0:
    # Line 1253
    ld	$s0,16($sp)
.L0dab8ec4:
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab8ed0:
    # Line 1229
    beqz	$t0,.L0dab8fd4
    # Line 1234
    la	$a7,sub_0dac0000
    addiu	$a7,$a7,-27920
.L0dab8edc:
    bnezl	$v0,.L0dab8f24
    # Line 1239
    ld	$s0,16($sp)
    # Line 1234
    lbu	$at,166($a6)
    slti	$at,$at,2
    bnezl	$at,.L0dab8f50
    sd	$a6,0($sp)
.L0dab8ef4:
    # Line 1237
    bnez	$v0,.L0dab8f20
    sd	$a6,0($sp)
    # Line 1238
    move	$a0,$s0
    move	$a1,$s1
    li	$a3,1
    li	$a2,1
    sd	$ra,24($sp)
    bal mgrTM_process_level
    move	$t9,$a7
    beqz	$v0,.L0dab8f84
    ld	$ra,24($sp)
.L0dab8f20:
    # Line 1239
    ld	$s0,16($sp)
.L0dab8f24:
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab8f30:
    # Line 1251
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s0
    move	$a1,$s1
    addiu	$t9,$t9,-27504
    bal mgrTM_process_level
    move	$a2,$zero
    b	.L0dab8ec0
    ld	$ra,24($sp)
.L0dab8f50:
    # Line 1237
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -32724($gp) # &sub_0dac0000
    li	$a2,3
    sd	$ra,24($sp)
    addiu	$t9,$t9,-27920
    bal mgrTM_process_level
    move	$a3,$zero
    ld	$a6,0($sp)
    la	$a7,sub_0dac0000
    ld	$ra,24($sp)
    b	.L0dab8ef4
    addiu	$a7,$a7,-27920
.L0dab8f84:
    ld	$at,0($sp)
    # Line 1239
    lbu	$at,166($at)
    beqz	$at,.L0dab904c
    # Line 1240
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
.L0dab8f94:
    # Line 1242
    bnez	$v0,.L0dab8ec0
    ld	$v1,0($sp)
    lbu	$v1,166($v1)
    slti	$v1,$v1,2
    bnez	$v1,.L0dab9030
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
.L0dab8fac:
    # Line 1245
    bnezl	$v0,.L0dab8ec4
    # Line 1253
    ld	$s0,16($sp)
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1246
    move	$a0,$s0
    move	$a1,$s1
    addiu	$t9,$t9,-27504
    bal mgrTM_process_level
    li	$a2,1
    b	.L0dab8ec0
    ld	$ra,24($sp)
.L0dab8fd4:
    sd	$a6,0($sp)
    # Line 1233
    li	$a2,2
    move	$a1,$s1
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s0
    sd	$ra,24($sp)
    addiu	$t9,$t9,-27920
    bal mgrTM_process_level
    move	$a3,$zero
    bnez	$v0,.L0dab8f20
    ld	$ra,24($sp)
    # Line 1234
    move	$a0,$s0
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s1
    li	$a2,4
    addiu	$t9,$t9,-27920
    bal mgrTM_process_level
    move	$a3,$zero
    ld	$a6,0($sp)
    la	$a7,sub_0dac0000
    ld	$ra,24($sp)
    b	.L0dab8edc
    addiu	$a7,$a7,-27920
.L0dab9030:
    # Line 1245
    move	$a0,$s0
    move	$a1,$s1
    addiu	$t9,$t9,-27504
    bal mgrTM_process_level
    li	$a2,3
    b	.L0dab8fac
    ld	$ra,24($sp)
.L0dab904c:
    # Line 1241
    li	$a2,2
    move	$a1,$s1
    # Line 1240
    addiu	$t9,$t9,-27504
    # Line 1241
    bal mgrTM_process_level
    move	$a0,$s0
    bnez	$v0,.L0dab8ec0
    ld	$ra,24($sp)
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1242
    move	$a0,$s0
    move	$a1,$s1
    addiu	$t9,$t9,-27504
    bal mgrTM_process_level
    li	$a2,4
    b	.L0dab8f94
    ld	$ra,24($sp)
.end SearchAllSpaces

# Function: FindSwapLocation
# Declared: Line 1269 (Source lines: 1273-1298)
# Address: 0x0dab9088 - 0x0dab91c8 (Size: 320 bytes, Frame: 48)
.ent FindSwapLocation
FindSwapLocation:
    # Line 1273
    addiu	$sp,$sp,-48
    # Line 1275
    sltu	$a5,$zero,$a2
    addu	$t1,$a5,$a5
    sll	$a5,$a5,0x2
    sll	$t0,$a2,0x2
    lui	$at,0x1
    addu	$at,$a0,$at
    lw	$at,-28164($at)
    subu	$t0,$t0,$a2
    sll	$t0,$t0,0x4
    addu	$t0,$t0,$at
    addu	$v0,$a5,$t0
    b	.L0dab90d8
    lw	$v0,16($v0)
.L0dab90c0:
    # Line 1282
    move	$a4,$zero
.L0dab90c4:
    beqz	$a4,.L0dab912c
    addu	$at,$t1,$a0
.L0dab90cc:
    # Line 1290
    addu	$v0,$a5,$a0
.L0dab90d0:
    beq	$t0,$a0,.L0dab9168
    lw	$v0,16($v0)
.L0dab90d8:
    # Line 1279
    move	$a0,$v0
    # Line 1281
    lw	$a4,24($a0)
.L0dab90e0:
    beqz	$a4,.L0dab912c
    # Line 1282
    addu	$at,$t1,$a0
    # Line 1281
    lw	$a7,4($a1)
    lw	$a6,4($a4)
    lw	$a2,0($a7)
    lw	$v1,0($a6)
    bnel	$v1,$a2,.L0dab90c4
    # Line 1282
    move	$a4,$zero
    # Line 1281
    lbu	$at,63($a7)
    lbu	$a3,63($a6)
    slt	$a3,$a3,$at
    beqz	$a3,.L0dab90c0
    # Line 1282
    addu	$v1,$a4,$a5
    lw	$v1,24($v1)
    beqz	$v1,.L0dab90c4
    move	$a4,$zero
    b	.L0dab90cc
    li	$a4,1
    addu	$at,$t1,$a0
.L0dab912c:
    addu	$a2,$t1,$v0
    lh	$at,32($at)
    lh	$a2,40($a2)
    addu	$a3,$t1,$a1
    lh	$a3,76($a3)
    subu	$a2,$a2,$at
    addiu	$a2,$a2,1
    slt	$a2,$a2,$a3
    beqz	$a2,.L0dab91c0
    # Line 1288
    addu	$a0,$a5,$a0
    lw	$a0,16($a0)
    bnel	$a0,$t0,.L0dab90e0
    # Line 1281
    lw	$a4,24($a0)
    b	.L0dab90d0
    # Line 1290
    addu	$v0,$a5,$a0
.L0dab9168:
    sd	$ra,8($sp)
    # Line 1294
    la	$a1,sub_0dbe0000
    # Line 1290
    la	$a0,__iob
    # Line 1294
    # lw $t9, -17908($gp) # &fprintf
    addiu	$a1,$a1,-15872
    addiu	$a0,$a0,32
    jal	fprintf
    sd	$a0,0($sp)
    # Line 1295
    # lw $t9, -17768($gp) # &fflush
    jal	fflush
    ld	$a0,0($sp)
    # Line 1296
    # lw $t9, -17768($gp) # &fflush
    la	$a0,__iob
    jal	fflush
    addiu	$a0,$a0,16
    # Line 1297
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    # Line 1298
    ld	$ra,8($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0dab91c0:
    # Line 1287
    jr	$ra
    addiu	$sp,$sp,48
.end FindSwapLocation

# Function: CheckClearance
# Declared: Line 1308 (Source lines: 1312-1330)
# Address: 0x0dab91c8 - 0x0dab92f0 (Size: 296 bytes, Frame: 48)
.ent CheckClearance
CheckClearance:
    # Line 1312
    addiu	$sp,$sp,-48
    move	$a3,$a2
    # Line 1314
    sll	$t0,$a2,0x2
    addu	$a6,$a2,$a2
    # Line 1321
    li	$a2,1
    # Line 1313
    lw	$v0,0($a1)
    # Line 1314
    lui	$t2,0x1
    addu	$t2,$a0,$t2
    lw	$t8,4($a1)
    lw	$t2,-28164($t2)
    # Line 1313
    lw	$v0,0($v0)
    # Line 1314
    lw	$t8,0($t8)
    addu	$t2,$a6,$t2
    lhu	$t2,1232($t2)
    addu	$at,$a6,$t8
    lhu	$at,156($at)
    addu	$t1,$a6,$v0
    lh	$t1,36($t1)
    subu	$t2,$t2,$at
    # Line 1320
    addu	$v0,$t0,$v0
.L0dab9218:
    lw	$v0,4($v0)
    addu	$t3,$a6,$v0
    lh	$v1,40($t3)
    slt	$v1,$v1,$t2
    bnez	$v1,.L0dab9240
    # Line 1321
    move	$a7,$zero
    # Line 1320
    addu	$v1,$a3,$a1
    lbu	$v1,86($v1)
    beqz	$v1,.L0dab92cc
    nop
.L0dab9240:
    # Line 1321
    bnezl	$a7,.L0dab9294
    # Line 1324
    move	$v0,$zero
    # Line 1321
    lw	$a7,24($v0)
    beqzl	$a7,.L0dab92a0
    # Line 1325
    lh	$a4,36($t3)
    # Line 1321
    beq	$a7,$a1,.L0dab929c
    addu	$a4,$a7,$t0
    lw	$a4,24($a4)
    beqz	$a4,.L0dab9274
    addu	$a5,$a3,$a7
    lbu	$a5,86($a5)
    beqz	$a5,.L0dab9290
    nop
.L0dab9274:
    lw	$at,28($v0)
    lwc1	$f0,108($t8)
    lwc1	$f1,0($at)
    c.lt.s	$f0,$f1
    nop
    bc1fl	.L0dab92a0
    # Line 1325
    lh	$a4,36($t3)
.L0dab9290:
    # Line 1324
    move	$v0,$zero
.L0dab9294:
    jr	$ra
    addiu	$sp,$sp,48
.L0dab929c:
    # Line 1325
    lh	$a4,36($t3)
.L0dab92a0:
    addu	$a7,$a6,$a1
    lh	$a7,76($a7)
    addu	$t1,$a4,$t1
    slt	$v1,$t1,$a7
    bnezl	$v1,.L0dab9218
    # Line 1320
    addu	$v0,$t0,$v0
    # Line 1325
    slt	$at,$a7,$t1
    bnez	$at,.L0dab92d4
    # Line 1329
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
.L0dab92c4:
    # Line 1330
    jr	$ra
    addiu	$sp,$sp,48
.L0dab92cc:
    # Line 1321
    b	.L0dab9240
    li	$a7,1
.L0dab92d4:
    # Line 1329
    move	$a1,$v0
    sd	$ra,0($sp)
    addiu	$t9,$t9,-27144
    bal mgrTM_process_level
    subu	$a2,$t1,$a7
    b	.L0dab92c4
    ld	$ra,0($sp)
.end CheckClearance

# Function: FindOpenLocation
# Declared: Line 1334 (Source lines: 1339-1369)
# Address: 0x0dab92f0 - 0x0dab9490 (Size: 416 bytes, Frame: 192)
.ent FindOpenLocation
FindOpenLocation:
    # Line 1339
    addiu	$sp,$sp,-64
    sd	$s2,16($sp)
    sd	$s0,8($sp)
    move	$s0,$a1
    # Line 1345
    sll	$a7,$a2,0x2
    lui	$t0,0x1
    addu	$t0,$a0,$t0
    lw	$t0,-28164($t0)
    subu	$a7,$a7,$a2
    sll	$a7,$a7,0x4
    addu	$a7,$a7,$t0
    lw	$v0,240($a7)
    sd	$s1,0($sp)
    addiu	$a6,$a7,240
    beq	$v0,$a6,.L0dab93c0
    # Line 1339
    move	$s1,$a2
    # Line 1345
    mtc1	$zero,$f4
    sltu	$t3,$zero,$s1
    b	.L0dab934c
    addu	$s2,$t3,$t3
.L0dab9340:
    lw	$v0,0($v0)
.L0dab9344:
    beq	$v0,$a6,.L0dab93c0
    nop
.L0dab934c:
    # Line 1346
    lw	$at,28($v0)
    lwc1	$f0,0($at)
    c.lt.s	$f0,$f4
    nop
    bc1fl	.L0dab9344
    # Line 1345
    lw	$v0,0($v0)
    # Line 1346
    lbu	$a4,90($s0)
    lhu	$v1,46($v0)
    # Line 1348
    addu	$t2,$s2,$s0
    # Line 1346
    slt	$v1,$v1,$a4
    bnez	$v1,.L0dab9340
    # Line 1347
    addu	$t1,$s2,$v0
    # Line 1348
    lh	$t2,76($t2)
    # Line 1347
    lh	$t1,36($t1)
    # Line 1348
    slt	$a5,$t1,$t2
    bnezl	$a5,.L0dab9344
    # Line 1345
    lw	$v0,0($v0)
    # Line 1348
    slt	$at,$t2,$t1
    beqz	$at,.L0dab9424
    # Line 1350
    move	$a1,$v0
    move	$a3,$t3
    # lw $t9, -32724($gp) # &sub_0dac0000
    subu	$a2,$t1,$t2
    sd	$ra,24($sp)
    addiu	$t9,$t9,-27144
    bal mgrTM_process_level
    ld	$s2,16($sp)
    b	.L0dab9424
    ld	$ra,24($sp)
.L0dab93c0:
    # Line 1357
    beqz	$a3,.L0dab945c
    # Line 1356
    move	$v0,$a7
    # Line 1357
    sltu	$s2,$zero,$s1
    addu	$s2,$s2,$s2
    addu	$at,$s2,$v0
    addu	$v1,$t0,$s2
    lhu	$v1,1232($v1)
    lh	$at,32($at)
    slt	$at,$at,$v1
    beqzl	$at,.L0dab9460
    # Line 1364
    move	$v0,$zero
    # Line 1357
    beqz	$s1,.L0dab9474
    sd	$ra,24($sp)
    # Line 1359
    # lw $t9, -32728($gp) # &sub_0dab0000
    move	$a1,$v0
    addiu	$t9,$t9,26996
    bal mgrTM_RefreshDim
    move	$a2,$s0
    ld	$ra,24($sp)
.L0dab940c:
    # Line 1361
    addu	$at,$s2,$v0
    addu	$v1,$s2,$s0
    lh	$v1,76($v1)
    lh	$at,36($at)
    bnel	$at,$v1,.L0dab9460
    # Line 1364
    move	$v0,$zero
.L0dab9424:
    # Line 1366
    beqz	$s1,.L0dab944c
    ld	$s2,16($sp)
    # Line 1368
    addiu	$v1,$s1,-1
    lw	$a4,4($s0)
    lbu	$a5,82($s0)
    lw	$a4,0($a4)
    xori	$a5,$a5,0x1
    sltiu	$a5,$a5,1
    srav	$v1,$v1,$a5
    sb	$v1,186($a4)
.L0dab944c:
    # Line 1369
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab945c:
    # Line 1364
    move	$v0,$zero
.L0dab9460:
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab9474:
    # Line 1360
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$v0
    addiu	$t9,$t9,-7772
    bal __glMgrFreeTextureManager
    move	$a2,$s0
    b	.L0dab940c
    ld	$ra,24($sp)
.end FindOpenLocation

# Function: FindUnusedLocation
# Declared: Line 1373 (Source lines: 1377-1401)
# Address: 0x0dab9490 - 0x0dab95f8 (Size: 360 bytes, Frame: 192)
.ent FindUnusedLocation
FindUnusedLocation:
    # Line 1384
    move	$a6,$zero
    # Line 1377
    addiu	$sp,$sp,-64
    # Line 1379
    sltu	$a3,$zero,$a2
    addu	$a7,$a3,$a3
    # Line 1380
    sll	$t1,$a3,0x2
    # Line 1379
    lw	$t9,4($a1)
    # Line 1380
    sll	$t3,$a2,0x2
    # Line 1379
    lui	$t8,0x1
    addu	$t8,$a0,$t8
    lw	$t8,-28164($t8)
    # Line 1380
    subu	$t3,$t3,$a2
    sll	$t3,$t3,0x4
    addu	$t3,$t3,$t8
    # Line 1379
    addu	$t8,$t8,$a7
    lhu	$t8,1232($t8)
    lw	$t9,0($t9)
    # Line 1380
    addu	$v0,$t1,$t3
    lw	$v0,4($v0)
    # Line 1379
    addu	$v1,$a7,$t9
    lhu	$v1,156($v1)
    # Line 1384
    addu	$at,$a7,$v0
    lh	$at,40($at)
    sd	$s0,0($sp)
    # Line 1379
    subu	$t8,$t8,$v1
    # Line 1384
    slt	$at,$at,$t8
    beqz	$at,.L0dab9588
    # Line 1377
    move	$s0,$a1
    # Line 1384
    lbu	$t2,90($s0)
    lwc1	$f4,108($t9)
    addu	$t0,$a7,$s0
    lh	$t0,76($t0)
    lhu	$at,46($v0)
.L0dab9510:
    slt	$at,$at,$t2
    bnez	$at,.L0dab9558
    # Line 1389
    addu	$a5,$a7,$v0
    # Line 1387
    lw	$v1,28($v0)
    lwc1	$f0,0($v1)
    c.lt.s	$f0,$f4
    nop
    bc1tl	.L0dab9550
    # Line 1389
    lh	$a5,36($a5)
    # Line 1387
    lw	$a1,24($v0)
    beqz	$a1,.L0dab9558
    addu	$a4,$a1,$t1
    lw	$a4,24($a4)
    bnezl	$a4,.L0dab955c
    # Line 1390
    move	$a6,$zero
    # Line 1389
    lh	$a5,36($a5)
.L0dab9550:
    b	.L0dab955c
    addu	$a6,$a5,$a6
.L0dab9558:
    # Line 1390
    move	$a6,$zero
.L0dab955c:
    slt	$at,$a6,$t0
    beqz	$at,.L0dab9598
    # Line 1398
    addu	$a1,$t1,$v0
    lw	$a1,4($a1)
    beq	$a1,$t3,.L0dab9588
    move	$v0,$a1
    addu	$a4,$a1,$a7
    lh	$a4,40($a4)
    slt	$a4,$a4,$t8
    bnezl	$a4,.L0dab9510
    # Line 1384
    lhu	$at,46($v0)
.L0dab9588:
    # Line 1401
    move	$v0,$zero
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab9598:
    # Line 1390
    slt	$a5,$t0,$a6
    bnez	$a5,.L0dab95d4
    # Line 1393
    move	$a1,$v0
.L0dab95a4:
    beqz	$a2,.L0dab95c8
    # Line 1395
    addiu	$at,$a2,-1
    lw	$v1,4($s0)
    lbu	$a4,82($s0)
    lw	$v1,0($v1)
    xori	$a4,$a4,0x1
    sltiu	$a4,$a4,1
    srav	$at,$at,$a4
    sb	$at,186($v1)
.L0dab95c8:
    # Line 1396
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab95d4:
    # Line 1393
    # lw $t9, -32724($gp) # &sub_0dac0000
    sd	$a2,8($sp)
    sd	$ra,16($sp)
    addiu	$t9,$t9,-27144
    bal mgrTM_process_level
    subu	$a2,$a6,$t0
    ld	$a2,8($sp)
    b	.L0dab95a4
    ld	$ra,16($sp)
.end FindUnusedLocation

# Function: SplitDesc
# Declared: Line 1408 (Source lines: 1413-1451)
# Address: 0x0dab95f8 - 0x0dab9818 (Size: 544 bytes, Frame: 208)
.ent SplitDesc
SplitDesc:
    # Line 1413
    addiu	$sp,$sp,-80
    sd	$s2,8($sp)
    move	$s2,$a0
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$s1,16($sp)
    lw	$v0,24($a1)
    move	$s1,$a2
    sd	$s8,32($sp)
    beqz	$v0,.L0dab9630
    move	$s8,$a3
    lbu	$at,85($v0)
    beqz	$at,.L0dab9800
    # Line 1418
    nop	# was lw $t9, -30712($gp) # &mgrTM_SaveData
.L0dab9630:
    # Line 1419
    lhu	$v0,44($s0)
    sw	$s1,0($sp)
    beqz	$s8,.L0dab9798
    sw	$s1,4($sp)
    # Line 1425
    mult	$s1,$v0
    sd	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s8,32($sp)
    mflo	$v1
    nop
    sw	$v1,0($sp)
.L0dab965c:
    # Line 1427
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s2
    addiu	$t9,$t9,-9116
    bal mgrTM_SaveData
    move	$a1,$zero
    # Line 1428
    lw	$a1,24($s0)
    sw	$a1,24($v0)
    # Line 1429
    lw	$a0,28($s0)
    sw	$a0,28($v0)
    # Line 1430
    lhu	$v1,44($s0)
    # Line 1436
    addiu	$a2,$s0,4
    addiu	$a7,$v0,2
    # Line 1430
    sh	$v1,44($v0)
    ld	$s2,8($sp)
    # Line 1431
    lhu	$at,46($s0)
    # Line 1436
    addiu	$t0,$s0,2
    addiu	$a6,$sp,4
    # Line 1431
    sh	$at,46($v0)
    # Line 1438
    lw	$a3,0($a6)
    # Line 1433
    lw	$ra,12($s0)
    # Line 1436
    li	$a1,4
    addiu	$a0,$v0,4
    # Line 1433
    sw	$ra,12($v0)
    # Line 1434
    sw	$v0,0($ra)
    # Line 1435
    sw	$s0,0($v0)
    # Line 1436
    sw	$v0,12($s0)
    ld	$ra,40($sp)
    # Line 1439
    lh	$a4,36($t0)
    # Line 1441
    lh	$v1,32($t0)
    # Line 1438
    lh	$a5,40($t0)
    # Line 1439
    subu	$a4,$a4,$a3
    sh	$a4,36($a7)
    # Line 1438
    subu	$a5,$a5,$a3
    sh	$a5,40($a7)
    # Line 1440
    sh	$a3,36($t0)
    # Line 1441
    sh	$v1,32($a7)
    # Line 1442
    lh	$at,36($a7)
    lh	$a5,32($t0)
    addu	$a5,$a5,$at
    sh	$a5,32($t0)
    # Line 1443
    lw	$a3,16($a2)
    sw	$a3,16($a0)
    lw	$a4,4($a2)
    beqz	$a4,.L0dab9720
    # Line 1445
    addu	$at,$a1,$a3
    sw	$v0,4($at)
    # Line 1446
    sw	$s0,4($a0)
    # Line 1447
    b	.L0dab9724
    sw	$v0,16($a2)
.L0dab9720:
    # Line 1449
    sw	$zero,4($a0)
.L0dab9724:
    # Line 1438
    lw	$at,-4($a6)
    lh	$a3,38($t0)
    subu	$a3,$a3,$at
    sh	$a3,38($a7)
    # Line 1439
    lh	$v1,34($t0)
    subu	$v1,$v1,$at
    sh	$v1,34($a7)
    # Line 1441
    lh	$a5,30($t0)
    # Line 1440
    sh	$at,34($t0)
    # Line 1441
    sh	$a5,30($a7)
    # Line 1442
    lh	$a4,34($a7)
    lh	$a3,30($t0)
    addu	$a3,$a3,$a4
    sh	$a3,30($t0)
    # Line 1443
    lw	$a3,12($a2)
    sw	$a3,12($a0)
    lw	$v1,0($a2)
    beqz	$v1,.L0dab9788
    # Line 1437
    addiu	$a1,$a1,-4
    # Line 1445
    addu	$a4,$a1,$a3
    sw	$v0,4($a4)
    # Line 1446
    sw	$s0,0($a0)
    ld	$s0,24($sp)
    # Line 1447
    b	.L0dab9790
    sw	$v0,12($a2)
.L0dab9788:
    # Line 1449
    sw	$zero,0($a0)
    ld	$s0,24($sp)
.L0dab9790:
    # Line 1451
    jr	$ra
    addiu	$sp,$sp,80
.L0dab9798:
    # Line 1419
    div	$zero,$s1,$v0
    mflo	$a0
    teq	$v0,$zero,0x7
    mfhi	$a5
    beqz	$a5,.L0dab97f0
    ld	$s8,32($sp)
    # Line 1422
    move	$a0,$s2
    move	$a3,$zero
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a2,$s0
    sd	$ra,40($sp)
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    lw	$a1,24($s0)
    lhu	$ra,44($v0)
    div	$zero,$s1,$ra
    move	$s0,$v0
    teq	$ra,$zero,0x7
    ld	$ra,40($sp)
    mflo	$a0
    nop
    nop
.L0dab97f0:
    sd	$ra,40($sp)
    # Line 1423
    sw	$a0,4($sp)
    b	.L0dab965c
    ld	$s1,16($sp)
.L0dab9800:
    # Line 1418
    move	$a0,$s2
    sd	$ra,40($sp)
    bal mgrTM_SaveData
    move	$a1,$v0
    b	.L0dab9630
    ld	$ra,40($sp)
.end SplitDesc

# Function: CombineDesc
# Declared: Line 1458 (Source lines: 1463-1486)
# Address: 0x0dab9818 - 0x0dab9968 (Size: 336 bytes, Frame: 48)
.ent CombineDesc
CombineDesc:
    # Line 1463
    addiu	$sp,$sp,-48
    # Line 1466
    lw	$v0,8($a2)
    lw	$at,8($a1)
    sd	$s0,0($sp)
    sltiu	$v0,$v0,1
    sltiu	$at,$at,1
    bne	$at,$v0,.L0dab9958
    # Line 1463
    move	$s0,$a3
    # Line 1466
    lw	$a4,4($a2)
    lw	$v1,4($a1)
    # Line 1472
    move	$a3,$a1
    # Line 1466
    sltiu	$a4,$a4,1
    sltiu	$v1,$v1,1
    bne	$v1,$a4,.L0dab9958
    # Line 1472
    move	$v0,$zero
    # Line 1466
    lhu	$a5,46($a2)
    lhu	$a4,46($a1)
    bnel	$a4,$a5,.L0dab995c
    # Line 1470
    move	$v0,$s0
    # Line 1466
    lw	$v1,24($a2)
    lw	$at,24($a1)
    bnel	$at,$v1,.L0dab995c
    # Line 1470
    move	$v0,$s0
    # Line 1466
    lw	$a5,28($a2)
    lw	$a4,28($a1)
    bnel	$a4,$a5,.L0dab995c
    # Line 1470
    move	$v0,$s0
    # Line 1471
    lw	$a6,0($a2)
    # Line 1472
    move	$a7,$a2
    # Line 1471
    sw	$a6,0($a1)
    # Line 1472
    sw	$a1,12($a6)
    move	$a6,$a1
    # Line 1476
    lh	$v1,40($a7)
    # Line 1475
    lh	$a4,36($a6)
    lh	$a5,36($a7)
    # Line 1476
    sh	$v1,40($a6)
    # Line 1475
    addu	$a4,$a4,$a5
    sh	$a4,36($a6)
    # Line 1476
    lw	$at,4($a3)
    beqz	$at,.L0dab98cc
    # Line 1478
    addu	$v1,$v0,$a2
    lw	$v1,4($v1)
    sw	$v1,4($a3)
    # Line 1479
    addu	$at,$v0,$v1
    sw	$a1,16($at)
.L0dab98cc:
    # Line 1475
    lh	$v1,38($a7)
    lh	$at,38($a6)
    addu	$at,$at,$v1
    sh	$at,38($a6)
    # Line 1476
    lh	$a5,42($a7)
    sh	$a5,42($a6)
    lw	$a4,8($a3)
    beqz	$a4,.L0dab9904
    # Line 1474
    addiu	$v0,$v0,4
    # Line 1478
    addu	$a5,$v0,$a2
    lw	$a5,4($a5)
    sw	$a5,8($a3)
    # Line 1479
    addu	$a4,$v0,$a5
    sw	$a1,16($a4)
.L0dab9904:
    # Line 1474
    lw	$v0,24($a1)
    beqz	$v0,.L0dab9920
    nop
    lw	$at,0($v0)
    bne	$at,$a2,.L0dab9920
    nop
    # Line 1483
    sw	$a1,0($v0)
.L0dab9920:
    bne	$a2,$s0,.L0dab9934
    # Line 1485
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
    sd	$ra,8($sp)
    # Line 1484
    move	$s0,$a1
    # Line 1485
    # lw $t9, -32724($gp) # &sub_0dac0000
.L0dab9934:
    sd	$ra,8($sp)
    addiu	$t9,$t9,-9116
    bal mgrTM_SaveData
    move	$a1,$a2
    # Line 1486
    ld	$ra,8($sp)
    move	$v0,$s0
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab9958:
    # Line 1470
    move	$v0,$s0
.L0dab995c:
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end CombineDesc

# Function: EstablishLocation
# Declared: Line 1490 (Source lines: 1496-1567)
# Address: 0x0dab9968 - 0x0dab9cfc (Size: 916 bytes, Frame: 160)
.ent EstablishLocation
EstablishLocation:
    # Line 1496
    addiu	$sp,$sp,-160
    sd	$a0,16($sp)
    sd	$s4,88($sp)
    move	$s4,$a1
    sd	$s2,96($sp)
    move	$s2,$a2
    sd	$s0,80($sp)
    # Line 1500
    lw	$s0,0($a1)
    addu	$a7,$a3,$a3
    sd	$a7,8($sp)
    addu	$v0,$a7,$s0
    addu	$a7,$a7,$a2
    lh	$a7,40($a7)
    lh	$v0,40($v0)
    sd	$s8,72($sp)
    # Line 1496
    move	$s8,$a3
    # Line 1500
    slt	$at,$v0,$a7
    bnez	$at,.L0dab9bd8
    sd	$a4,64($sp)
    sd	$s3,32($sp)
    sd	$s7,40($sp)
    sd	$s1,48($sp)
    sd	$s5,56($sp)
.L0dab99c4:
    sd	$s6,0($sp)
    sd	$ra,24($sp)
    # Line 1505
    li	$a0,1
    lw	$s0,0($s0)
    # Line 1504
    move	$s3,$zero
    # Line 1503
    sll	$s5,$s8,0x2
    addu	$s1,$s5,$s2
    # Line 1505
    ld	$s7,8($sp)
    # Line 1503
    lw	$s1,4($s1)
    b	.L0dab9a34
    # Line 1505
    addu	$s7,$s7,$s4
.L0dab99f0:
    # Line 1517
    ld	$a0,16($sp)
    move	$a2,$zero
    move	$a3,$s8
    # Line 1516
    lw	$s2,16($s6)
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1515
    sw	$zero,4($s6)
    # Line 1517
    addu	$s6,$s5,$s2
    addiu	$t9,$t9,-22740
    bal mgrTM_process_level
    lw	$a1,4($s6)
    li	$a0,1
    # Line 1518
    sw	$s1,4($s6)
    # Line 1519
    addu	$at,$s5,$s1
    sw	$s2,16($at)
.L0dab9a28:
    # Line 1521
    lh	$v1,76($s7)
    slt	$v1,$s3,$v1
    beqz	$v1,.L0dab9ad8
.L0dab9a34:
    ld	$s6,8($sp)
    # Line 1507
    addu	$s6,$s6,$s2
    lh	$a5,36($s6)
    beq	$s8,$a0,.L0dab9aac
    addu	$s3,$a5,$s3
.L0dab9a48:
    # Line 1509
    lh	$at,76($s7)
.L0dab9a4c:
    slt	$at,$at,$s3
    bnezl	$at,.L0dab9a70
    # Line 1511
    ld	$a0,16($sp)
.L0dab9a58:
    # Line 1512
    lw	$a5,24($s0)
    lw	$v1,24($s2)
    bne	$v1,$a5,.L0dab99f0
    addu	$s6,$s5,$s2
    b	.L0dab9a28
    # Line 1521
    lw	$s2,16($s6)
.L0dab9a70:
    # Line 1511
    ld	$a3,8($sp)
    lh	$a2,40($s6)
    # lw $t9, -32724($gp) # &sub_0dac0000
    addu	$a3,$a3,$s0
    lh	$a3,32($a3)
    move	$a1,$s2
    addiu	$t9,$t9,-27144
    subu	$a2,$a2,$a3
    move	$a3,$s8
    bal mgrTM_process_level
    addiu	$a2,$a2,1
    li	$a0,1
    # Line 1512
    addu	$s2,$v0,$s5
    b	.L0dab9a58
    lw	$s2,4($s2)
.L0dab9aac:
    # Line 1507
    lw	$a1,24($s2)
    beqzl	$a1,.L0dab9a4c
    # Line 1509
    lh	$at,76($s7)
    # Line 1508
    lbu	$at,85($a1)
    bnezl	$at,.L0dab9a4c
    # Line 1509
    lh	$at,76($s7)
    # lw $t9, -30712($gp) # &mgrTM_SaveData
    bal mgrTM_SaveData
    ld	$a0,16($sp)
    b	.L0dab9a48
    li	$a0,1
.L0dab9ad8:
    # Line 1525
    ld	$v1,64($sp)
    lw	$s0,0($s4)
    ld	$s6,16($sp)
    beqz	$v1,.L0dab9c68
    ld	$s3,64($sp)
.L0dab9aec:
    # Line 1528
    la	$s7,sub_0dac0000
    b	.L0dab9b30
    addiu	$s7,$s7,-26600
.L0dab9af8:
    # Line 1557
    move	$a2,$s1
    # Line 1559
    move	$a0,$s6
    move	$a1,$s0
    move	$a3,$s0
    move	$t9,$s7
    # Line 1556
    sw	$s0,16($v0)
    # Line 1559
    bal mgrTM_process_level
    # Line 1557
    sw	$s1,4($a4)
    li	$a0,1
    # Line 1559
    move	$s1,$v0
.L0dab9b20:
    # Line 1561
    lw	$s0,12($s1)
    lw	$at,0($s4)
    beql	$at,$s0,.L0dab9b94
    # Line 1567
    ld	$s0,80($sp)
.L0dab9b30:
    # Line 1531
    lbu	$v1,90($s4)
    beqz	$s3,.L0dab9b5c
    sh	$v1,46($s0)
.L0dab9b3c:
    # Line 1547
    lw	$a5,0($s4)
.L0dab9b40:
    addu	$a4,$s5,$s0
    bne	$a5,$s0,.L0dab9af8
    addu	$v0,$s5,$s1
    # Line 1551
    sw	$s0,16($v0)
    # Line 1552
    sw	$s1,4($a4)
    # Line 1553
    b	.L0dab9b20
    move	$s1,$s0
.L0dab9b5c:
    # Line 1531
    beql	$s8,$a0,.L0dab9c14
    lw	$at,8($s0)
    # Line 1542
    lbu	$a6,88($s4)
    bnezl	$a6,.L0dab9b40
    # Line 1547
    lw	$a5,0($s4)
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s6
    move	$a1,$s0
    addiu	$t9,$t9,-7320
    bal __glMgrFreeTextureManager
    move	$a2,$s1
    li	$a0,1
    b	.L0dab9b3c
    move	$s1,$v0
.L0dab9b94:
    # Line 1567
    ld	$s3,32($sp)
    # Line 1566
    addu	$s8,$s8,$s4
    # Line 1567
    ld	$s4,88($sp)
    # Line 1565
    addu	$ra,$s1,$s5
    # Line 1564
    addu	$at,$s2,$s5
    # Line 1567
    ld	$s5,56($sp)
    ld	$s6,0($sp)
    ld	$s7,40($sp)
    # Line 1564
    sw	$s1,4($at)
    # Line 1567
    ld	$s1,48($sp)
    # Line 1565
    sw	$s2,16($ra)
    # Line 1567
    ld	$s2,96($sp)
    ld	$ra,24($sp)
    # Line 1566
    sb	$a0,88($s8)
    # Line 1567
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dab9bd8:
    # Line 1502
    subu	$a2,$a7,$v0
    move	$a1,$s2
    # lw $t9, -32724($gp) # &sub_0dac0000
    ld	$a0,16($sp)
    sd	$ra,24($sp)
    addiu	$t9,$t9,-27144
    bal mgrTM_process_level
    move	$a3,$s8
    sd	$s3,32($sp)
    sd	$s7,40($sp)
    sd	$s1,48($sp)
    sd	$s5,56($sp)
    move	$s2,$v0
    b	.L0dab99c4
    ld	$ra,24($sp)
.L0dab9c14:
    # Line 1531
    bnezl	$at,.L0dab9b40
    # Line 1547
    lw	$a5,0($s4)
    # Line 1531
    lbu	$v1,85($s4)
    lui	$at,0x1
    beqz	$v1,.L0dab9b3c
    # Line 1535
    addu	$at,$at,$s6
    lw	$at,-28164($at)
    lh	$a6,38($s0)
    lhu	$v0,1238($at)
    addu	$a6,$a6,$v0
    sh	$a6,1238($at)
    lh	$v0,38($s0)
    slti	$a5,$v0,129
    beqz	$a5,.L0dab9c90
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1537
    move	$a0,$s6
    addiu	$t9,$t9,-9672
    bal mgrTM_SaveData
    move	$a1,$s0
    b	.L0dab9b3c
    li	$a0,1
.L0dab9c68:
    ld	$s6,16($sp)
    # Line 1525
    bne	$s8,$a0,.L0dab9aec
    ld	$s3,64($sp)
    # Line 1528
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    move	$a0,$s6
    move	$a1,$zero
    bal mgrTM_VidTexWait
    move	$a2,$zero
    b	.L0dab9aec
    li	$a0,1
.L0dab9c90:
    # Line 1539
    move	$a0,$s6
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s0
    li	$a3,1
    addiu	$t9,$t9,-27144
    bal mgrTM_process_level
    addiu	$a2,$v0,-128
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$s0,$v0
    # Line 1540
    move	$a0,$s6
    addiu	$t9,$t9,-9672
    bal mgrTM_SaveData
    move	$a1,$v0
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1541
    move	$a0,$s6
    addiu	$t9,$t9,-9672
    bal mgrTM_SaveData
    lw	$a1,0($s0)
    # Line 1542
    move	$a0,$s6
    move	$a1,$s0
    lw	$a2,0($s0)
    move	$a3,$s0
    bal mgrTM_process_level
    move	$t9,$s7
    li	$a0,1
    b	.L0dab9b3c
    move	$s0,$v0
.end EstablishLocation

# Function: space_assert
# Declared: Line 1570 (Source lines: 1578-1611)
# Address: 0x0dab9cfc - 0x0dab9f88 (Size: 652 bytes, Frame: 144)
.ent space_assert
space_assert:
    # Line 1578
    move	$t1,$a1
    # Line 1580
    li	$v0,1
    li	$at,1
    # Line 1578
    addiu	$sp,$sp,-144
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s3,0($sp)
    move	$s3,$a2
    sd	$s4,8($sp)
    move	$s4,$a3
    sd	$s2,16($sp)
    move	$s2,$a4
    sd	$s0,32($sp)
    move	$s0,$a6
    # Line 1580
    beqz	$a6,.L0dab9f38
    sd	$at,24($sp)
.L0dab9d3c:
    sd	$s5,56($sp)
    # Line 1587
    li	$s5,0x91fc
    addu	$s5,$s5,$s1
    lw	$s5,0($s5)
    sll	$at,$a5,0x2
    addu	$s5,$s5,$at
    addiu	$s5,$s5,1192
.L0dab9d58:
    beqzl	$s0,.L0dab9e5c
    # Line 1588
    lhu	$at,46($t1)
    lw	$at,24($t1)
    beqzl	$at,.L0dab9e5c
    lhu	$at,46($t1)
    lw	$a4,0($s3)
.L0dab9d70:
    lh	$v1,34($t1)
    bne	$v1,$a4,.L0dab9eac
    sd	$v0,40($sp)
    # Line 1595
    la	$a4,sub_0dac0000
    sd	$zero,40($sp)
    addiu	$a4,$a4,-27144
.L0dab9d88:
    lw	$v0,0($s4)
    lh	$a5,42($t1)
    bne	$a5,$v0,.L0dab9efc
    ld	$s3,0($sp)
    sd	$zero,24($sp)
.L0dab9d9c:
    # Line 1601
    beqz	$s0,.L0dab9db0
    ld	$s4,8($sp)
    lw	$a7,24($t1)
    bnez	$a7,.L0dab9e84
    # Line 1603
    move	$a0,$s1
.L0dab9db0:
    # Line 1604
    sw	$s5,28($t1)
    ld	$s5,56($sp)
    # Line 1605
    sh	$s2,46($t1)
    # Line 1606
    beqz	$s0,.L0dab9f6c
    ld	$s2,16($sp)
.L0dab9dc4:
    lw	$a1,20($t1)
    lh	$t0,38($a1)
    beqz	$t0,.L0dab9e78
    # Line 1607
    move	$a0,$s1
    # Line 1606
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1607
    move	$a2,$t1
    sd	$ra,64($sp)
    # Line 1606
    addiu	$t9,$t9,-26600
    # Line 1607
    bal mgrTM_process_level
    move	$a3,$t1
    la	$a4,sub_0dac0000
    move	$t1,$v0
    ld	$ra,64($sp)
    addiu	$a4,$a4,-26600
.L0dab9dfc:
    move	$a7,$s0
    # Line 1608
    beqz	$a7,.L0dab9f58
    ld	$s0,32($sp)
    lw	$a2,8($t1)
.L0dab9e0c:
    lh	$t0,38($a2)
    beqz	$t0,.L0dab9e34
    # Line 1609
    move	$a0,$s1
    move	$a1,$t1
    move	$a3,$t1
    sd	$ra,64($sp)
    bal mgrTM_process_level
    move	$t9,$a4
    move	$t1,$v0
    ld	$ra,64($sp)
.L0dab9e34:
    # Line 1611
    move	$v0,$t1
.L0dab9e38:
    ld	$s0,32($sp)
    ld	$s1,48($sp)
    ld	$s2,16($sp)
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s5,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
    # Line 1588
    lhu	$at,46($t1)
.L0dab9e5c:
    bnel	$at,$s2,.L0dab9d70
    lw	$a4,0($s3)
    lw	$v1,28($t1)
    beql	$v1,$s5,.L0dab9e38
    # Line 1611
    move	$v0,$t1
    b	.L0dab9d70
    # Line 1588
    lw	$a4,0($s3)
.L0dab9e78:
    # Line 1607
    la	$a4,sub_0dac0000
    b	.L0dab9dfc
    addiu	$a4,$a4,-26600
.L0dab9e84:
    # Line 1603
    move	$a1,$t1
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a2,$t1
    sd	$ra,64($sp)
    addiu	$t9,$t9,-19684
    bal mgrTM_MakeResident
    li	$a3,1
    move	$t1,$v0
    b	.L0dab9db0
    ld	$ra,64($sp)
.L0dab9eac:
    # Line 1590
    li	$a3,1
    move	$a1,$t1
    move	$a0,$s1
    lh	$a2,42($t1)
    # lw $t9, -32724($gp) # &sub_0dac0000
    sd	$ra,64($sp)
    subu	$a2,$a2,$a4
    addiu	$t9,$t9,-27144
    bal mgrTM_process_level
    addiu	$a2,$a2,1
    # Line 1591
    lw	$t1,8($v0)
    lw	$at,0($s3)
    lh	$a0,34($t1)
    ld	$ra,64($sp)
    la	$a4,sub_0dac0000
    slt	$at,$at,$a0
    beqz	$at,.L0dab9d88
    addiu	$a4,$a4,-27144
    # Line 1593
    b	.L0dab9d88
    sw	$a0,0($s3)
.L0dab9efc:
    # Line 1597
    move	$a0,$s1
    move	$a1,$t1
    li	$a3,1
    subu	$a2,$a5,$v0
    sd	$ra,64($sp)
    bal mgrTM_process_level
    move	$t9,$a4
    lw	$a7,0($s4)
    lh	$a0,42($v0)
    move	$t1,$v0
    slt	$a7,$a0,$a7
    beqz	$a7,.L0dab9d9c
    ld	$ra,64($sp)
    # Line 1599
    b	.L0dab9d9c
    sw	$a0,0($s4)
.L0dab9f38:
    # Line 1580
    lw	$a0,24($t1)
    beqz	$a0,.L0dab9d3c
    sd	$s5,56($sp)
    # Line 1583
    lw	$t0,28($a0)
    beqz	$t0,.L0dab9d58
    lw	$s5,28($t1)
    # Line 1585
    b	.L0dab9d58
    lhu	$s2,46($t1)
.L0dab9f58:
    ld	$at,24($sp)
    # Line 1608
    bnez	$at,.L0dab9e34
    ld	$s0,32($sp)
    b	.L0dab9e0c
    lw	$a2,8($t1)
.L0dab9f6c:
    ld	$v1,40($sp)
    ld	$s5,56($sp)
    # Line 1606
    beqz	$v1,.L0dab9dc4
    ld	$s2,16($sp)
    # Line 1607
    la	$a4,sub_0dac0000
    b	.L0dab9dfc
    addiu	$a4,$a4,-26600
.end space_assert

# Function: UpdateSpaces
# Declared: Line 1615 (Source lines: 1618-1691)
# Address: 0x0dab9f88 - 0x0daba72c (Size: 1956 bytes, Frame: 208)
.ent UpdateSpaces
UpdateSpaces:
    # Line 1626
    move	$t0,$zero
    move	$a4,$zero
    # Line 1618
    addiu	$sp,$sp,-208
    sd	$s5,104($sp)
    move	$s5,$a0
    sd	$s3,112($sp)
    move	$s3,$a1
    # Line 1626
    addiu	$a7,$sp,24
    # Line 1620
    lui	$a6,0x1
    addu	$a6,$a0,$a6
    sd	$a6,120($sp)
    # Line 1626
    addiu	$a5,$sp,8
    ld	$v0,120($sp)
    # Line 1621
    lh	$at,78($a1)
    # Line 1620
    lw	$a6,-28164($a6)
    sd	$s8,96($sp)
    # Line 1621
    lh	$s8,74($a1)
    # Line 1620
    lhu	$a6,1234($a6)
    # Line 1626
    sw	$zero,0($sp)
    # Line 1621
    addu	$at,$at,$s8
    addiu	$at,$at,-1
    sd	$at,136($sp)
    # Line 1626
    sw	$a6,4($sp)
    sd	$a6,176($sp)
    # Line 1627
    lw	$v0,-28164($v0)
    addu	$v0,$t0,$v0
    lw	$v0,56($v0)
    # Line 1628
    lh	$at,42($v0)
    # Line 1627
    sw	$v0,0($a5)
    # Line 1628
    lw	$v1,24($v0)
    slt	$at,$at,$a6
    beqz	$at,.L0daba014
    sw	$v1,0($a7)
    # Line 1630
    lh	$a6,42($v0)
    sw	$a6,4($sp)
.L0daba014:
    lh	$a0,34($v0)
    # Line 1626
    addiu	$t0,$t0,48
    # Line 1630
    slt	$v1,$a4,$a0
    beqz	$v1,.L0daba030
    ld	$v0,120($sp)
    # Line 1632
    move	$a4,$a0
    sw	$a0,0($sp)
.L0daba030:
    # Line 1627
    lw	$v0,-28164($v0)
    addu	$v0,$t0,$v0
    lw	$v0,56($v0)
    # Line 1628
    lh	$a2,42($v0)
    # Line 1627
    sw	$v0,4($a5)
    # Line 1628
    lw	$a3,24($v0)
    slt	$a2,$a2,$a6
    beqz	$a2,.L0daba05c
    sw	$a3,4($a7)
    # Line 1630
    lh	$a6,42($v0)
    sw	$a6,4($sp)
.L0daba05c:
    lh	$a0,34($v0)
    # Line 1626
    addiu	$t0,$t0,48
    # Line 1630
    slt	$v1,$a4,$a0
    beqz	$v1,.L0daba078
    ld	$v0,120($sp)
    # Line 1632
    move	$a4,$a0
    sw	$a0,0($sp)
.L0daba078:
    # Line 1627
    lw	$v0,-28164($v0)
    addu	$v0,$t0,$v0
    lw	$v0,56($v0)
    # Line 1628
    lh	$a2,42($v0)
    # Line 1627
    sw	$v0,8($a5)
    # Line 1628
    lw	$a3,24($v0)
    slt	$a2,$a2,$a6
    beqz	$a2,.L0daba0a4
    sw	$a3,8($a7)
    # Line 1630
    lh	$a6,42($v0)
    sw	$a6,4($sp)
.L0daba0a4:
    lh	$a0,34($v0)
    # Line 1626
    addiu	$t0,$t0,48
    # Line 1630
    slt	$v1,$a4,$a0
    beqz	$v1,.L0daba0c0
    ld	$v0,120($sp)
    # Line 1632
    move	$a4,$a0
    sw	$a0,0($sp)
.L0daba0c0:
    # Line 1627
    lw	$v0,-28164($v0)
    addu	$v0,$t0,$v0
    lw	$v0,56($v0)
    # Line 1628
    lh	$a2,42($v0)
    # Line 1627
    sw	$v0,12($a5)
    # Line 1628
    lw	$a3,24($v0)
    slt	$a2,$a2,$a6
    beqz	$a2,.L0daba0ec
    sw	$a3,12($a7)
    # Line 1630
    lh	$a6,42($v0)
    sw	$a6,4($sp)
.L0daba0ec:
    lh	$a0,34($v0)
    slt	$v1,$a4,$a0
    beqz	$v1,.L0daba108
    # Line 1634
    lw	$at,12($sp)
    sd	$s4,72($sp)
    # Line 1632
    move	$a4,$a0
    sw	$a0,0($sp)
.L0daba108:
    sd	$s4,72($sp)
    # Line 1634
    lw	$s4,8($sp)
    lh	$a2,38($s4)
    beqzl	$a2,.L0daba6e8
    lh	$at,38($at)
.L0daba11c:
    sd	$s2,80($sp)
.L0daba120:
    sd	$s6,88($sp)
    sd	$ra,64($sp)
    sd	$s1,40($sp)
    sd	$s0,56($sp)
    la	$s0,sub_0dac0000
    sd	$s7,48($sp)
    b	.L0daba200
    addiu	$s0,$s0,-25348
.L0daba140:
    # Line 1685
    lh	$a0,34($v0)
.L0daba144:
    slt	$at,$a4,$a0
    beqzl	$at,.L0daba15c
    # Line 1679
    lw	$v0,8($a5)
    # Line 1687
    move	$a4,$a0
    sw	$a0,0($sp)
    # Line 1679
    lw	$v0,8($a5)
.L0daba15c:
    lh	$a0,42($v0)
    bne	$a0,$a6,.L0daba180
    # Line 1682
    slt	$a2,$a0,$a1
    # Line 1681
    lw	$v0,8($v0)
    # Line 1682
    lw	$v1,24($v0)
    lh	$a0,42($v0)
    # Line 1681
    sw	$v0,8($a5)
    # Line 1682
    sw	$v1,8($a7)
    slt	$a2,$a0,$a1
.L0daba180:
    beqzl	$a2,.L0daba190
    # Line 1685
    lh	$a0,34($v0)
    move	$a1,$a0
    lh	$a0,34($v0)
.L0daba190:
    slt	$a3,$a4,$a0
    beqzl	$a3,.L0daba1a8
    # Line 1679
    lw	$v0,12($a5)
    # Line 1687
    move	$a4,$a0
    sw	$a0,0($sp)
    # Line 1679
    lw	$v0,12($a5)
.L0daba1a8:
    lh	$a0,42($v0)
    bne	$a0,$a6,.L0daba1cc
    # Line 1682
    slt	$v1,$a0,$a1
    # Line 1681
    lw	$v0,8($v0)
    # Line 1682
    lw	$at,24($v0)
    lh	$a0,42($v0)
    # Line 1681
    sw	$v0,12($a5)
    # Line 1682
    sw	$at,12($a7)
    slt	$v1,$a0,$a1
.L0daba1cc:
    beqzl	$v1,.L0daba1dc
    # Line 1685
    lh	$a0,34($v0)
    move	$a1,$a0
    lh	$a0,34($v0)
.L0daba1dc:
    # Line 1689
    move	$a6,$a1
    # Line 1685
    slt	$a2,$a4,$a0
    beqz	$a2,.L0daba1f4
    # Line 1689
    lw	$s4,8($sp)
    # Line 1687
    move	$a4,$a0
    sw	$a0,0($sp)
.L0daba1f4:
    # Line 1689
    sw	$a1,4($sp)
    lh	$a3,38($s4)
    beqz	$a3,.L0daba620
.L0daba200:
    # Line 1634
    slt	$at,$a4,$s8
.L0daba204:
    beqz	$at,.L0daba298
.L0daba208:
    ld	$a1,176($sp)
    # Line 1679
    addiu	$a7,$sp,24
    addiu	$a5,$sp,8
    lw	$v0,0($a5)
    lh	$a0,42($v0)
    bne	$a0,$a6,.L0daba23c
    # Line 1682
    slt	$a2,$a0,$a1
    # Line 1681
    lw	$v0,8($v0)
    # Line 1682
    lw	$v1,24($v0)
    lh	$a0,42($v0)
    # Line 1681
    sw	$v0,0($a5)
    # Line 1682
    sw	$v1,0($a7)
    slt	$a2,$a0,$a1
.L0daba23c:
    beqzl	$a2,.L0daba24c
    # Line 1685
    lh	$a0,34($v0)
    move	$a1,$a0
    lh	$a0,34($v0)
.L0daba24c:
    slt	$a3,$a4,$a0
    beqzl	$a3,.L0daba264
    # Line 1679
    lw	$v0,4($a5)
    # Line 1687
    move	$a4,$a0
    sw	$a0,0($sp)
    # Line 1679
    lw	$v0,4($a5)
.L0daba264:
    lh	$a0,42($v0)
    bne	$a0,$a6,.L0daba288
    # Line 1682
    slt	$v1,$a0,$a1
    # Line 1681
    lw	$v0,8($v0)
    # Line 1682
    lw	$at,24($v0)
    lh	$a0,42($v0)
    # Line 1681
    sw	$v0,4($a5)
    # Line 1682
    sw	$at,4($a7)
    slt	$v1,$a0,$a1
.L0daba288:
    beqzl	$v1,.L0daba144
    # Line 1685
    lh	$a0,34($v0)
    b	.L0daba140
    move	$a1,$a0
.L0daba298:
    ld	$a2,136($sp)
    # Line 1643
    li	$a6,1
    # Line 1634
    slt	$a2,$a2,$a4
    bnez	$a2,.L0daba6b8
    # Line 1641
    li	$v0,1
    # Line 1636
    lbu	$a3,89($s3)
    # Line 1639
    lw	$s1,24($sp)
    # Line 1636
    beqzl	$a3,.L0daba6ac
    ld	$s3,120($sp)
.L0daba2bc:
    # Line 1639
    beqz	$s1,.L0daba680
    nop
    lbu	$at,82($s1)
    blez	$at,.L0daba680
    nop
.L0daba2d0:
    # Line 1641
    beqz	$s1,.L0daba2e8
    move	$s6,$v0
    lbu	$v1,82($s1)
    slti	$v1,$v1,2
    beqz	$v1,.L0daba2ec
    # Line 1642
    li	$a0,1
.L0daba2e8:
    move	$a0,$zero
.L0daba2ec:
    beqz	$v0,.L0daba2fc
    move	$s7,$a0
    # Line 1643
    lw	$a2,28($sp)
    beq	$a2,$s3,.L0daba614
.L0daba2fc:
    lw	$s2,32($sp)
    beqzl	$a0,.L0daba31c
    move	$a6,$zero
    beq	$s3,$s2,.L0daba31c
    lw	$a3,36($sp)
    beq	$a3,$s3,.L0daba31c
    nop
    move	$a6,$zero
.L0daba31c:
    beqz	$a6,.L0daba388
    # Line 1645
    move	$a0,$s5
    move	$a1,$s4
    li	$a4,5
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    move	$a5,$zero
    bal mgrTM_process_level
    move	$t9,$s0
    move	$s4,$v0
    # Line 1646
    lw	$s1,24($v0)
    # Line 1645
    sw	$v0,8($sp)
    # Line 1646
    beqz	$s1,.L0daba698
    sw	$s1,24($sp)
    lbu	$at,82($s1)
    blez	$at,.L0daba698
    # Line 1647
    li	$v0,1
.L0daba360:
    beqz	$s1,.L0daba380
    move	$s6,$v0
    lbu	$v1,82($s1)
    slti	$v1,$v1,2
    bnez	$v1,.L0daba384
    # Line 1648
    move	$v0,$zero
    b	.L0daba384
    li	$v0,1
.L0daba380:
    move	$v0,$zero
.L0daba384:
    move	$s7,$v0
.L0daba388:
    beqz	$s2,.L0daba688
    # Line 1651
    move	$a0,$zero
    # Line 1648
    lbu	$a2,82($s2)
    blez	$a2,.L0daba688
    nop
    # Line 1651
    li	$a0,1
    move	$a3,$a0
.L0daba3a4:
    beqz	$s6,.L0daba3c0
    sd	$a0,168($sp)
    bne	$s3,$s1,.L0daba3c4
    # Line 1653
    move	$a6,$zero
    li	$a6,1
    b	.L0daba3c8
    lw	$at,12($sp)
.L0daba3c0:
    move	$a6,$zero
.L0daba3c4:
    lw	$at,12($sp)
.L0daba3c8:
    # Line 1655
    lw	$a2,28($sp)
    # Line 1653
    beqz	$a6,.L0daba418
    sd	$at,152($sp)
    sd	$a0,184($sp)
    # Line 1654
    move	$a0,$s5
    ld	$a1,152($sp)
    li	$a4,5
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    move	$a5,$zero
    bal mgrTM_process_level
    move	$t9,$s0
    move	$v1,$v0
    sd	$v0,152($sp)
    # Line 1655
    lw	$v0,24($v0)
    ld	$a0,184($sp)
    # Line 1654
    sw	$v1,12($sp)
    sd	$v0,144($sp)
    # Line 1655
    b	.L0daba41c
    sw	$v0,28($sp)
.L0daba418:
    sd	$a2,144($sp)
.L0daba41c:
    # Line 1658
    lw	$a3,36($sp)
    # Line 1655
    beqz	$s7,.L0daba430
    # Line 1658
    li	$a6,1
    beq	$s3,$s1,.L0daba440
    nop
.L0daba430:
    beqzl	$a0,.L0daba448
    move	$a6,$zero
    bnel	$a3,$s3,.L0daba448
    move	$a6,$zero
.L0daba440:
    b	.L0daba44c
    lw	$at,16($sp)
.L0daba448:
    lw	$at,16($sp)
.L0daba44c:
    beqz	$a6,.L0daba49c
    sd	$at,128($sp)
    # Line 1659
    move	$a0,$s5
    ld	$a1,128($sp)
    li	$a4,5
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    move	$a5,$zero
    bal mgrTM_process_level
    move	$t9,$s0
    # Line 1660
    lw	$s2,24($v0)
    sd	$v0,128($sp)
    # Line 1659
    sw	$v0,16($sp)
    # Line 1660
    beqz	$s2,.L0daba6a4
    sw	$s2,32($sp)
    lbu	$v1,82($s2)
    blez	$v1,.L0daba6a4
    # Line 1661
    li	$a0,1
.L0daba494:
    move	$a2,$a0
    sd	$a0,168($sp)
.L0daba49c:
    # Line 1664
    li	$a6,1
    # Line 1661
    beqz	$s7,.L0daba4b0
    ld	$a3,168($sp)
    # Line 1664
    beq	$s3,$s1,.L0daba4c0
    nop
.L0daba4b0:
    beqzl	$a3,.L0daba4c8
    move	$a6,$zero
    bnel	$s3,$s2,.L0daba4c8
    move	$a6,$zero
.L0daba4c0:
    b	.L0daba4cc
    lw	$at,20($sp)
.L0daba4c8:
    lw	$at,20($sp)
.L0daba4cc:
    # Line 1666
    lw	$s1,36($sp)
    # Line 1664
    beqz	$a6,.L0daba508
    sd	$at,160($sp)
    # Line 1665
    move	$a0,$s5
    ld	$a1,160($sp)
    li	$a4,5
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    move	$a5,$zero
    bal mgrTM_process_level
    move	$t9,$s0
    sd	$v0,160($sp)
    # Line 1666
    lw	$s1,24($v0)
    # Line 1665
    sw	$v0,20($sp)
    # Line 1666
    sw	$s1,36($sp)
.L0daba508:
    # Line 1669
    li	$a0,1
    # Line 1666
    beqz	$s2,.L0daba520
    # Line 1669
    ld	$a3,144($sp)
    lw	$v1,28($s2)
    bnez	$v1,.L0daba534
    nop
.L0daba520:
    beqz	$s1,.L0daba690
    nop
    lw	$a2,28($s1)
    beqz	$a2,.L0daba690
    nop
.L0daba534:
    beqz	$a3,.L0daba550
    move	$a4,$a0
    ld	$at,144($sp)
    lw	$at,28($at)
    beqz	$at,.L0daba554
    # Line 1671
    move	$a0,$s5
    # Line 1670
    move	$a4,$zero
.L0daba550:
    # Line 1671
    move	$a0,$s5
.L0daba554:
    move	$a1,$s4
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    move	$a5,$zero
    move	$a6,$zero
    bal mgrTM_process_level
    move	$t9,$s0
    # Line 1672
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    ld	$a1,152($sp)
    move	$a0,$s5
    # Line 1671
    sw	$v0,8($sp)
    # Line 1672
    move	$a4,$zero
    move	$a5,$s6
    move	$a6,$zero
    bal mgrTM_process_level
    move	$t9,$s0
    sw	$v0,12($sp)
    beqz	$s1,.L0daba5b8
    ld	$a1,128($sp)
    lw	$v1,28($s1)
    beqz	$v1,.L0daba5b8
    # Line 1674
    move	$a4,$zero
    b	.L0daba5c0
    # Line 1675
    move	$a0,$s5
.L0daba5b8:
    # Line 1674
    li	$a4,1
    # Line 1675
    move	$a0,$s5
.L0daba5c0:
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    move	$a5,$s7
    move	$a6,$zero
    bal mgrTM_process_level
    move	$t9,$s0
    # Line 1676
    move	$a4,$zero
    addiu	$a3,$sp,4
    addiu	$a2,$sp,0
    ld	$a1,160($sp)
    move	$a0,$s5
    # Line 1675
    sw	$v0,16($sp)
    # Line 1676
    move	$a6,$zero
    ld	$a5,168($sp)
    move	$t9,$s0
    bal mgrTM_process_level
    or	$a5,$s6,$a5
    lw	$a4,0($sp)
    lw	$a6,4($sp)
    b	.L0daba208
    sw	$v0,20($sp)
.L0daba614:
    # Line 1643
    lw	$s2,32($sp)
    b	.L0daba31c
    nop
.L0daba620:
    # Line 1689
    lw	$at,12($sp)
    lh	$at,38($at)
    bnez	$at,.L0daba204
    # Line 1634
    slt	$at,$a4,$s8
    # Line 1689
    lw	$v1,16($sp)
    lh	$v1,38($v1)
    bnez	$v1,.L0daba204
    # Line 1634
    slt	$at,$a4,$s8
    # Line 1689
    lw	$a2,20($sp)
    lh	$a2,38($a2)
    bnez	$a2,.L0daba204
    # Line 1634
    slt	$at,$a4,$s8
.L0daba650:
    # Line 1691
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$s2,80($sp)
    ld	$s3,112($sp)
    ld	$s4,72($sp)
    ld	$s5,104($sp)
    ld	$s6,88($sp)
    ld	$ra,64($sp)
    ld	$s7,48($sp)
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0daba680:
    b	.L0daba2d0
    # Line 1641
    move	$v0,$zero
.L0daba688:
    b	.L0daba3a4
    # Line 1651
    move	$a3,$a0
.L0daba690:
    b	.L0daba534
    # Line 1669
    li	$a0,3
.L0daba698:
    # Line 1647
    move	$v0,$zero
    b	.L0daba360
    nop
.L0daba6a4:
    b	.L0daba494
    # Line 1661
    move	$a0,$zero
.L0daba6ac:
    # Line 1639
    lw	$s3,-28164($s3)
    b	.L0daba2bc
    addiu	$s3,$s3,1052
.L0daba6b8:
    # Line 1636
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$s2,80($sp)
    ld	$s3,112($sp)
    ld	$s4,72($sp)
    ld	$s5,104($sp)
    ld	$s6,88($sp)
    ld	$ra,64($sp)
    ld	$s7,48($sp)
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0daba6e8:
    # Line 1634
    bnezl	$at,.L0daba120
    sd	$s2,80($sp)
    lw	$v1,16($sp)
    lh	$v1,38($v1)
    bnezl	$v1,.L0daba120
    sd	$s2,80($sp)
    sd	$s2,80($sp)
    lw	$a2,20($sp)
    sd	$s6,88($sp)
    sd	$ra,64($sp)
    lh	$a2,38($a2)
    sd	$s0,56($sp)
    sd	$s1,40($sp)
    beqz	$a2,.L0daba650
    sd	$s7,48($sp)
    b	.L0daba11c
    sd	$s0,56($sp)
.end UpdateSpaces

# Function: ReturnDesc
# Declared: Line 1694 (Source lines: 1699-1732)
# Address: 0x0daba72c - 0x0daba8c0 (Size: 404 bytes, Frame: 208)
.ent ReturnDesc
ReturnDesc:
    # Line 1699
    move	$v0,$a3
    addiu	$sp,$sp,-80
    sd	$s3,24($sp)
    move	$s3,$a0
    sd	$s0,16($sp)
    sd	$s2,8($sp)
    # Line 1700
    lw	$s2,24($a1)
    # Line 1699
    move	$s0,$a1
    sd	$s1,0($sp)
    # Line 1700
    bnez	$s2,.L0daba7b4
    # Line 1699
    move	$s1,$a2
    # Line 1705
    lw	$a5,0($s0)
    lw	$a4,12($s0)
    sw	$a4,12($a5)
    # Line 1706
    lw	$v1,12($s0)
    lw	$at,0($s0)
    bne	$s0,$s1,.L0daba77c
    sw	$at,0($v1)
    sd	$ra,32($sp)
    # Line 1707
    lw	$s1,0($s0)
.L0daba77c:
    # Line 1708
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s3
    sd	$ra,32($sp)
    addiu	$t9,$t9,-9116
    bal mgrTM_SaveData
    move	$a1,$s0
    # Line 1709
    ld	$s0,16($sp)
    move	$v0,$s1
    ld	$s1,0($sp)
    ld	$ra,32($sp)
    ld	$s2,8($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daba7b4:
    li	$at,1
    bnel	$v0,$at,.L0daba7f0
    sd	$v0,40($sp)
    # Line 1713
    lbu	$a4,90($s2)
    sh	$a4,46($s0)
    lbu	$v1,89($s2)
    beqz	$v1,.L0daba814
    # Line 1723
    addu	$at,$v0,$s2
    # Line 1715
    lw	$a5,4($s2)
    lw	$a5,0($a5)
    # Line 1716
    lw	$a0,12($a5)
    beqz	$a0,.L0daba810
    sb	$zero,193($a5)
    # Line 1718
    b	.L0daba810
    sb	$zero,193($a0)
.L0daba7f0:
    # Line 1721
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s3
    sd	$ra,32($sp)
    addiu	$t9,$t9,-7020
    bal __glMgrFreeTextureManager
    move	$a1,$s0
    ld	$v0,40($sp)
    ld	$ra,32($sp)
.L0daba810:
    # Line 1723
    addu	$at,$v0,$s2
.L0daba814:
    sb	$zero,88($at)
    # Line 1724
    lw	$a7,12($s0)
    bnel	$s1,$a7,.L0daba82c
    # Line 1725
    lw	$a0,0($s2)
    move	$s1,$s0
    lw	$a0,0($s2)
.L0daba82c:
    bne	$a0,$a7,.L0daba868
    # Line 1727
    la	$a6,sub_0dac0000
    addiu	$a6,$a6,-26600
.L0daba838:
    # Line 1728
    bne	$s0,$s1,.L0daba844
    lw	$a7,0($s0)
    # Line 1729
    move	$s1,$a7
.L0daba844:
    bne	$a0,$s0,.L0daba8a0
    # Line 1731
    move	$a0,$s3
.L0daba84c:
    # Line 1732
    ld	$s0,16($sp)
    move	$v0,$s1
    ld	$s1,0($sp)
    ld	$s2,8($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daba868:
    # Line 1727
    move	$a0,$s3
    move	$a1,$a7
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a2,$s0
    sd	$ra,32($sp)
    addiu	$t9,$t9,-26600
    bal mgrTM_process_level
    move	$a3,$s0
    move	$s0,$v0
    lw	$a0,0($s2)
    la	$a6,sub_0dac0000
    ld	$ra,32($sp)
    b	.L0daba838
    addiu	$a6,$a6,-26600
.L0daba8a0:
    # Line 1731
    move	$a1,$s0
    move	$a2,$a7
    move	$a3,$s0
    sd	$ra,32($sp)
    bal mgrTM_process_level
    move	$t9,$a6
    b	.L0daba84c
    ld	$ra,32($sp)
.end ReturnDesc

# Function: mgrTM_MakeResident
# Declared: Line 1736 (Source lines: 1742-1835)
# Address: 0x0daba8c0 - 0x0dabb114 (Size: 2132 bytes, Frame: 160)
.globl mgrTM_MakeResident
.ent mgrTM_MakeResident
mgrTM_MakeResident:
.L0daba8c0:
    # Line 1743
    move	$v1,$a2
    # Line 1742
    addiu	$sp,$sp,-160
    sd	$zero,8($sp)
    sd	$s7,32($sp)
    move	$s7,$a4
    sd	$s6,72($sp)
    move	$s6,$a3
    sd	$s3,64($sp)
    move	$s3,$a0
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$a2,24($sp)
    sd	$s2,80($sp)
    move	$s2,$a1
    sd	$gp,56($sp)
    lui	$v0,0x14
    addiu	$v0,$v0,15832
    # Line 1745
    lbu	$at,85($a1)
    sd	$s1,40($sp)
    lw	$s1,4($a1)
    # Line 1742
    addu	$gp,$t9,$v0
    # Line 1745
    beqz	$at,.L0dabaec4
    lw	$s1,0($s1)
    # Line 1747
    li	$a5,1
    beq	$s0,$a5,.L0dabaeb4
    nop
    sd	$s5,104($sp)
.L0daba92c:
    # Line 1752
    lw	$a6,0($s2)
    lw	$a6,0($a6)
    sll	$s5,$s0,0x2
    addu	$a6,$a6,$s5
    lw	$a6,4($a6)
    beqz	$a6,.L0dabacc0
    sd	$s4,96($sp)
    # Line 1763
    beqzl	$s6,.L0daba964
    sd	$ra,88($sp)
    lbu	$v1,186($s1)
    lbu	$at,84($s2)
    bne	$at,$v1,.L0dabacc0
    sd	$s4,96($sp)
    sd	$ra,88($sp)
.L0daba964:
    li	$v0,1
    sd	$s4,96($sp)
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s3
    move	$a1,$s2
    addiu	$t9,$t9,-28216
    bal mgrTM_process_level
    move	$a2,$s0
    move	$s4,$v0
    beqz	$v0,.L0dabacc0
    ld	$ra,88($sp)
    li	$at,1
    beq	$s0,$at,.L0dabaf10
    ld	$s5,104($sp)
.L0daba99c:
    # Line 1824
    move	$a0,$s3
.L0daba9a0:
    move	$a1,$s2
    move	$a2,$s4
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a3,$s0
    move	$a4,$s7
    addiu	$t9,$t9,-26264
    bal mgrTM_process_level
    ld	$s5,104($sp)
    ld	$s4,96($sp)
    lw	$v0,16($s1)
    beqz	$v0,.L0dabac84
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
    bne	$v0,$s2,.L0dabac80
    # Line 1826
    addiu	$a1,$s1,56
    move	$v0,$s1
    # Line 1829
    lw	$a0,20($v0)
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    beqz	$a0,.L0dabaa04
    nop
    lw	$at,16($s1)
    lw	$a2,28($a0)
    bne	$at,$a2,.L0dabaa04
    # Line 1831
    addu	$a5,$s0,$a2
    li	$v1,1
    sb	$v1,88($a5)
.L0dabaa04:
    # Line 1828
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqz	$a0,.L0dabaa30
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$a6,16($s1)
    lw	$a2,28($a0)
    bne	$a6,$a2,.L0dabaa30
    # Line 1831
    addu	$v1,$s0,$a2
    li	$at,1
    sb	$at,88($v1)
.L0dabaa30:
    # Line 1828
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqz	$a0,.L0dabaa5c
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$a5,16($s1)
    lw	$a2,28($a0)
    bne	$a5,$a2,.L0dabaa5c
    # Line 1831
    addu	$at,$s0,$a2
    li	$a6,1
    sb	$a6,88($at)
.L0dabaa5c:
    # Line 1828
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqz	$a0,.L0dabaa88
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$v1,16($s1)
    lw	$a2,28($a0)
    bne	$v1,$a2,.L0dabaa88
    # Line 1831
    addu	$a6,$s0,$a2
    li	$a5,1
    sb	$a5,88($a6)
.L0dabaa88:
    # Line 1828
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqz	$a0,.L0dabaab4
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$at,16($s1)
    lw	$a2,28($a0)
    bne	$at,$a2,.L0dabaab4
    # Line 1831
    addu	$a5,$s0,$a2
    li	$v1,1
    sb	$v1,88($a5)
.L0dabaab4:
    # Line 1828
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqzl	$a0,.L0dabaae8
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$a6,16($s1)
    lw	$a2,28($a0)
    bnel	$a6,$a2,.L0dabaae8
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1831
    addu	$v1,$s0,$a2
    li	$at,1
    sb	$at,88($v1)
    # Line 1828
    addiu	$v0,$v0,4
.L0dabaae8:
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqzl	$a0,.L0dabab1c
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$a5,16($s1)
    lw	$a2,28($a0)
    bnel	$a5,$a2,.L0dabab1c
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1831
    addu	$at,$s0,$a2
    li	$a6,1
    sb	$a6,88($at)
    # Line 1828
    addiu	$v0,$v0,4
.L0dabab1c:
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqzl	$a0,.L0dabab50
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$v1,16($s1)
    lw	$a2,28($a0)
    bnel	$v1,$a2,.L0dabab50
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1831
    addu	$a6,$s0,$a2
    li	$a5,1
    sb	$a5,88($a6)
    # Line 1828
    addiu	$v0,$v0,4
.L0dabab50:
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqzl	$a0,.L0dabab84
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$at,16($s1)
    lw	$a2,28($a0)
    bnel	$at,$a2,.L0dabab84
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1831
    addu	$a5,$s0,$a2
    li	$v1,1
    sb	$v1,88($a5)
    # Line 1828
    addiu	$v0,$v0,4
.L0dabab84:
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqzl	$a0,.L0dababb8
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$a6,16($s1)
    lw	$a2,28($a0)
    bnel	$a6,$a2,.L0dababb8
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1831
    addu	$v1,$s0,$a2
    li	$at,1
    sb	$at,88($v1)
    # Line 1828
    addiu	$v0,$v0,4
.L0dababb8:
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqzl	$a0,.L0dababec
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$a5,16($s1)
    lw	$a2,28($a0)
    bnel	$a5,$a2,.L0dababec
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1831
    addu	$at,$s0,$a2
    li	$a6,1
    sb	$a6,88($at)
    # Line 1828
    addiu	$v0,$v0,4
.L0dababec:
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqzl	$a0,.L0dabac20
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$v1,16($s1)
    lw	$a2,28($a0)
    bnel	$v1,$a2,.L0dabac20
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1831
    addu	$a6,$s0,$a2
    li	$a5,1
    sb	$a5,88($a6)
    # Line 1828
    addiu	$v0,$v0,4
.L0dabac20:
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqzl	$a0,.L0dabac54
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1829
    lw	$at,16($s1)
    lw	$a2,28($a0)
    bnel	$at,$a2,.L0dabac54
    # Line 1828
    addiu	$v0,$v0,4
    # Line 1831
    addu	$a5,$s0,$a2
    li	$v1,1
    sb	$v1,88($a5)
    # Line 1828
    addiu	$v0,$v0,4
.L0dabac54:
    beq	$v0,$a1,.L0dabac80
    nop
    # Line 1829
    lw	$a0,20($v0)
    beqz	$a0,.L0dabac80
    nop
    lw	$a6,16($s1)
    lw	$a2,28($a0)
    bne	$a6,$a2,.L0dabac80
    # Line 1831
    addu	$v1,$s0,$a2
    li	$at,1
    sb	$at,88($v1)
.L0dabac80:
    # lw $t9, -32724($gp) # &sub_0dac0000
.L0dabac84:
    # Line 1834
    move	$a0,$s3
    move	$a1,$s2
    addiu	$t9,$t9,-15364
    bal mgrTM_DrawSetup
    move	$a2,$s0
    ld	$gp,56($sp)
    # Line 1835
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,80($sp)
    ld	$s3,64($sp)
    ld	$ra,88($sp)
    ld	$s6,72($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dabacc0:
    # Line 1770
    addu	$at,$s5,$s2
    lw	$at,24($at)
    beqz	$at,.L0dabacec
    ld	$s4,96($sp)
    li	$v1,0x91fc
    addu	$v1,$v1,$s3
    lw	$v1,0($v1)
    addu	$v1,$v1,$s5
    lw	$v1,1200($v1)
    beqz	$v1,.L0dabae1c
    sd	$s4,96($sp)
.L0dabacec:
    li	$v0,1
    sd	$ra,88($sp)
    sd	$s4,96($sp)
    move	$a0,$s3
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s2
    move	$a2,$s0
    addiu	$t9,$t9,-29208
    bal mgrTM_process_level
    move	$a3,$s6
    move	$s4,$v0
    beqz	$v0,.L0dabae1c
    ld	$ra,88($sp)
    # Line 1772
    addu	$s6,$s0,$s0
    lw	$a0,0($s2)
    addu	$at,$v0,$s6
    lh	$at,40($at)
    addu	$a0,$a0,$s6
    lh	$a0,40($a0)
    bne	$at,$a0,.L0dabad54
    ld	$s5,104($sp)
    lw	$a5,4($s2)
    lw	$a5,0($a5)
    lbu	$v1,84($s2)
    lbu	$a5,186($a5)
    beq	$v1,$a5,.L0daba99c
.L0dabad54:
    addu	$a6,$s0,$s2
    lbu	$a6,86($a6)
    beqz	$a6,.L0dabadc0
    # Line 1774
    li	$a5,0x91fc
    addu	$a5,$a5,$s3
    lw	$a5,0($a5)
    addu	$a5,$a5,$s6
    lhu	$a5,1232($a5)
    subu	$a5,$a5,$a0
    addiu	$a5,$a5,-1
    addu	$a6,$s6,$s1
    sh	$a5,156($a6)
    # Line 1775
    lw	$a1,4($s2)
    lbu	$a1,63($a1)
    slti	$at,$a1,13
    beqz	$at,.L0dabadc0
    sll	$v0,$a1,0x2
    addu	$v0,$v0,$s1
.L0dabad9c:
    lw	$a0,20($v0)
    addiu	$a5,$s1,52
    beqz	$a0,.L0dabadc0
    addiu	$v0,$v0,4
    lw	$a1,28($a0)
    beqz	$a1,.L0dabadc0
    # Line 1777
    addu	$v1,$s0,$a1
    # Line 1775
    bne	$a5,$v0,.L0dabad9c
    # Line 1777
    sb	$zero,86($v1)
.L0dabadc0:
    # Line 1781
    move	$a0,$s3
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s2
    move	$a2,$s4
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    move	$a3,$s0
    move	$s4,$v0
    # Line 1782
    move	$a0,$s3
    move	$a1,$s2
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a3,$s0
    addu	$a2,$v0,$s6
    addiu	$t9,$t9,-20204
    bal mgrTM_MakeResident
    lh	$a2,40($a2)
    beqz	$s0,.L0daba9a0
    # Line 1824
    move	$a0,$s3
    # Line 1784
    lw	$at,4($s2)
    lw	$at,0($at)
    lbu	$at,186($at)
    b	.L0daba99c
    sb	$at,84($s2)
.L0dabae1c:
    # Line 1770
    addu	$v0,$s0,$s2
    lbu	$v1,86($v0)
    ld	$s4,96($sp)
    lui	$s6,0x1
    beqz	$v1,.L0dabaf1c
    addu	$s6,$s3,$s6
    # Line 1811
    lw	$v1,-28164($s6)
    li	$at,1
    addu	$v1,$v1,$s5
    beq	$s0,$at,.L0dabaee8
    sw	$at,1216($v1)
.L0dabae48:
    ld	$a6,24($sp)
    # Line 1815
    lw	$a5,-28164($s6)
    sll	$a1,$a6,0x2
    subu	$a1,$a1,$a6
    sll	$a1,$a1,0x4
    addu	$a1,$a1,$a5
    addu	$v0,$s5,$a1
    lw	$v0,16($v0)
    sd	$ra,88($sp)
    sd	$s4,96($sp)
    beq	$v0,$a1,.L0daba99c
    move	$s4,$a1
    lw	$a0,0($s2)
    addu	$s6,$s0,$s0
    addu	$a0,$a0,$s6
    lh	$a0,40($a0)
    # Line 1818
    addu	$a5,$s6,$v0
.L0dabae8c:
    lh	$a5,32($a5)
    slt	$a5,$a0,$a5
    beqz	$a5,.L0dabaeac
    # Line 1817
    move	$s4,$v0
    # Line 1818
    addu	$v0,$s5,$s4
    lw	$v0,16($v0)
    bne	$v0,$a1,.L0dabae8c
    addu	$a5,$s6,$v0
.L0dabaeac:
    b	.L0daba99c
    sd	$ra,88($sp)
.L0dabaeb4:
    # Line 1747
    beqzl	$s7,.L0dabb094
    # Line 1749
    lbu	$at,88($s2)
    b	.L0daba92c
    sd	$s5,104($sp)
.L0dabaec4:
    ld	$gp,56($sp)
    # Line 1747
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,80($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dabaee8:
    sd	$s4,96($sp)
    # Line 1814
    lbu	$a6,82($s2)
    lbu	$v1,84($s2)
    li	$a5,1
    xor	$a6,$a6,$a5
    sltiu	$a6,$a6,1
    sllv	$v1,$v1,$a6
    addu	$v1,$v1,$a5
    b	.L0dabae48
    sd	$v1,24($sp)
.L0dabaf10:
    # Line 1766
    lbu	$at,84($s2)
    b	.L0daba99c
    sb	$at,186($s1)
.L0dabaf1c:
    # Line 1770
    beqz	$s0,.L0dabb0c0
    ld	$s5,104($sp)
    sd	$ra,88($sp)
    sd	$v0,0($sp)
    # Line 1789
    lbu	$a7,186($s1)
    lbu	$a5,166($s1)
    lbu	$a4,84($s2)
    li	$a3,1
    xor	$a3,$a3,$a5
    beq	$a4,$a7,.L0dabb068
    sltiu	$a3,$a3,1
    sd	$s4,96($sp)
    # Line 1792
    move	$a0,$s3
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s2
    sllv	$a2,$a7,$a3
    addiu	$t9,$t9,-28536
    bal mgrTM_process_level
    addiu	$a2,$a2,1
    sd	$s6,16($sp)
    move	$s4,$v0
    # Line 1793
    li	$at,1
    sd	$at,8($sp)
.L0dabaf78:
    # Line 1797
    ld	$v1,8($sp)
    bnez	$v1,.L0dabafa0
    addu	$s6,$s0,$s0
    lw	$a5,0($s2)
    addu	$a5,$a5,$s6
    lh	$a5,40($a5)
    addu	$a6,$s6,$s4
    lh	$a6,40($a6)
    beq	$a5,$a6,.L0dabaff4
    ld	$at,0($sp)
.L0dabafa0:
    # Line 1798
    move	$a0,$s3
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s2
    move	$a2,$s4
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    move	$a3,$s0
    ld	$at,8($sp)
    beqz	$at,.L0dabafd0
    move	$s4,$v0
    # Line 1799
    lbu	$v1,186($s1)
    sb	$v1,84($s2)
.L0dabafd0:
    # Line 1800
    move	$a0,$s3
    move	$a1,$s2
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a3,$s0
    addu	$a2,$v0,$s6
    addiu	$t9,$t9,-20204
    bal mgrTM_MakeResident
    lh	$a2,40($a2)
    ld	$at,0($sp)
.L0dabaff4:
    # Line 1803
    ld	$a5,16($sp)
    li	$a6,1
    # Line 1802
    sb	$a6,86($at)
    # Line 1803
    lw	$a5,-28164($a5)
    addu	$a6,$s6,$s2
    lh	$a6,72($a6)
    addu	$a5,$a5,$s6
    lhu	$a5,1232($a5)
    subu	$a5,$a5,$a6
    addu	$a6,$s6,$s1
    sh	$a5,156($a6)
    # Line 1804
    lw	$a1,4($s2)
    lbu	$a1,63($a1)
    addiu	$a1,$a1,1
    slti	$at,$a1,13
    beqz	$at,.L0daba99c
    sll	$v0,$a1,0x2
    addu	$v0,$v0,$s1
.L0dabb03c:
    lw	$a0,20($v0)
    addiu	$a5,$s1,52
    beqz	$a0,.L0daba99c
    addiu	$v0,$v0,4
    lw	$a1,28($a0)
    beqz	$a1,.L0daba99c
    # Line 1806
    addu	$v1,$s0,$a1
    # Line 1804
    bne	$a5,$v0,.L0dabb03c
    # Line 1806
    sb	$zero,86($v1)
    b	.L0daba9a0
    # Line 1824
    move	$a0,$s3
.L0dabb068:
    sd	$s4,96($sp)
    # Line 1795
    move	$a0,$s3
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s2
    sllv	$a2,$a4,$a3
    addiu	$t9,$t9,-28536
    bal mgrTM_process_level
    addiu	$a2,$a2,1
    sd	$s6,16($sp)
    b	.L0dabaf78
    move	$s4,$v0
.L0dabb094:
    # Line 1749
    beqz	$at,.L0dabb0f0
    sd	$ra,88($sp)
    # Line 1751
    # lw $t9, -32724($gp) # &sub_0dac0000
.L0dabb0a0:
    # Line 1752
    move	$a0,$s3
    move	$a1,$s2
    # Line 1751
    addiu	$t9,$t9,-15364
    # Line 1752
    bal mgrTM_DrawSetup
    move	$a2,$zero
    sd	$s5,104($sp)
    b	.L0daba92c
    ld	$ra,88($sp)
.L0dabb0c0:
    sd	$s4,96($sp)
    sd	$v0,0($sp)
    # Line 1789
    move	$a0,$s3
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s2
    sd	$ra,88($sp)
    addiu	$t9,$t9,-28536
    bal mgrTM_process_level
    move	$a2,$s0
    sd	$s6,16($sp)
    b	.L0dabaf78
    move	$s4,$v0
.L0dabb0f0:
    # Line 1751
    move	$a0,$s3
    move	$a1,$s2
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    move	$a2,$zero
    move	$a3,$zero
    bal .L0daba8c0
    move	$a4,$s7
    b	.L0dabb0a0
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
.end mgrTM_MakeResident

# Function: MovePlacement
# Declared: Line 1838 (Source lines: 1843-1868)
# Address: 0x0dabb114 - 0x0dabb22c (Size: 280 bytes, Frame: 48)
.ent MovePlacement
MovePlacement:
    # Line 1843
    addiu	$sp,$sp,-48
    # Line 1844
    lw	$a5,0($a1)
    # Line 1843
    move	$a6,$a1
    # Line 1844
    addu	$a7,$a3,$a3
    # Line 1853
    addu	$a4,$a7,$a6
    # Line 1847
    addu	$v0,$a7,$a5
.L0dabb12c:
    # Line 1848
    lh	$v1,36($v0)
    # Line 1847
    sh	$a2,40($v0)
    # Line 1848
    subu	$a2,$a2,$v1
    # Line 1849
    addiu	$a1,$a2,1
    sh	$a1,32($v0)
    # Line 1850
    lw	$at,0($a6)
    lw	$a5,12($a5)
    bne	$at,$a5,.L0dabb12c
    # Line 1847
    addu	$v0,$a7,$a5
    # Line 1853
    beqz	$a3,.L0dabb194
    sh	$a1,72($a4)
.L0dabb158:
    # Line 1859
    li	$at,1
    bne	$a3,$at,.L0dabb18c
    nop
    lw	$a1,4($a6)
    lw	$a1,0($a1)
    lbu	$v0,179($a1)
    li	$v1,8
    bne	$v0,$v1,.L0dabb18c
    # Line 1864
    li	$a4,0x9154
    addu	$a4,$a4,$a0
    lw	$a4,0($a4)
    beq	$a4,$a1,.L0dabb208
    # Line 1866
    li	$a4,1
.L0dabb18c:
    # Line 1868
    jr	$ra
    addiu	$sp,$sp,48
.L0dabb194:
    # Line 1853
    lw	$a5,56($a6)
    lh	$a7,72($a6)
    lw	$at,0($a5)
    # Line 1859
    move	$a1,$zero
    # Line 1853
    beq	$at,$a7,.L0dabb158
    # Line 1858
    move	$a2,$a5
    # Line 1859
    lh	$v0,76($a6)
    move	$a0,$a7
    blez	$v0,.L0dabb18c
    # Line 1857
    lw	$a3,48($a6)
    # Line 1860
    sw	$a0,0($a2)
.L0dabb1c0:
    # Line 1861
    sw	$a0,0($a3)
    # Line 1859
    lh	$v1,76($a6)
    addiu	$a0,$a0,1
    addiu	$a1,$a1,1
    slt	$v1,$a1,$v1
    beqz	$v1,.L0dabb200
    addiu	$a3,$a3,24
    # Line 1860
    sw	$a0,4($a2)
    # Line 1861
    sw	$a0,-12($a3)
    # Line 1860
    addiu	$a2,$a2,8
    # Line 1859
    lh	$a4,76($a6)
    addiu	$a0,$a0,1
    addiu	$a1,$a1,1
    slt	$a4,$a1,$a4
    bnezl	$a4,.L0dabb1c0
    # Line 1860
    sw	$a0,0($a2)
.L0dabb200:
    b	.L0dabb18c
    nop
.L0dabb208:
    # Line 1866
    lh	$a2,74($a6)
    li	$a1,402
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    sd	$ra,0($sp)
    bal __glMgrasWrite
    lw	$a3,276($a3)
    b	.L0dabb18c
    ld	$ra,0($sp)
.end MovePlacement

# Function: RemoveResidency
# Declared: Line 1871 (Source lines: 1876-1894)
# Address: 0x0dabb22c - 0x0dabb31c (Size: 240 bytes, Frame: 224)
.ent RemoveResidency
RemoveResidency:
    # Line 1878
    move	$a6,$zero
    # Line 1876
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s5,0($sp)
    move	$s5,$a0
    sd	$s2,40($sp)
    move	$s2,$a1
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$s4,24($sp)
    move	$s4,$a3
    sd	$s0,16($sp)
    sd	$s3,32($sp)
    # Line 1878
    la	$s3,sub_0dac0000
    sll	$s0,$a3,0x2
    b	.L0dabb298
    addiu	$s3,$s3,-19684
.L0dabb270:
    # Line 1884
    move	$a0,$s5
    move	$a2,$s1
    move	$a3,$s4
    bal mgrTM_MakeResident
    move	$t9,$s3
    move	$s1,$v0
    # Line 1885
    li	$a6,1
    # Line 1886
    move	$a2,$zero
.L0dabb290:
    # Line 1890
    bnez	$a2,.L0dabb2c8
    nop
.L0dabb298:
    # Line 1881
    lw	$a0,0($s2)
    # Line 1882
    li	$a2,1
    # Line 1881
    move	$v0,$a0
    # Line 1882
    lw	$a1,0($v0)
.L0dabb2a8:
    addu	$at,$a1,$s0
    lw	$at,4($at)
    bnez	$at,.L0dabb270
    # Line 1883
    move	$v0,$a1
    bnel	$a1,$a0,.L0dabb2a8
    # Line 1882
    lw	$a1,0($v0)
    b	.L0dabb290
    nop
.L0dabb2c8:
    # Line 1890
    beqz	$a6,.L0dabb2dc
    ld	$ra,48($sp)
    li	$v1,1
    beq	$s4,$v1,.L0dabb300
    ld	$ra,48($sp)
.L0dabb2dc:
    # Line 1894
    ld	$s0,16($sp)
    move	$v0,$s1
    ld	$s1,8($sp)
    ld	$s2,40($sp)
    ld	$s3,32($sp)
    ld	$s4,24($sp)
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dabb300:
    # Line 1893
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s5
    addiu	$t9,$t9,-24696
    bal mgrTM_process_level
    move	$a1,$s2
    b	.L0dabb2dc
    ld	$ra,48($sp)
.end RemoveResidency

# Function: RemoveDesc
# Declared: Line 1898 (Source lines: 1903-1940)
# Address: 0x0dabb31c - 0x0dabb5b0 (Size: 660 bytes, Frame: 240)
.ent RemoveDesc
RemoveDesc:
    # Line 1905
    move	$v0,$a3
    # Line 1906
    lw	$a6,24($a1)
    li	$at,1
    # Line 1903
    addiu	$sp,$sp,-112
    sd	$s7,40($sp)
    sd	$s6,8($sp)
    move	$s6,$a0
    sd	$s4,24($sp)
    move	$s4,$a1
    sd	$s3,0($sp)
    move	$s3,$a2
    sd	$s8,32($sp)
    sd	$s5,16($sp)
    # Line 1906
    beq	$a3,$at,.L0dabb558
    # Line 1903
    move	$s5,$a3
.L0dabb358:
    sd	$s0,56($sp)
    sd	$s2,48($sp)
    # Line 1912
    move	$a1,$zero
    move	$a0,$s6
    sd	$ra,72($sp)
    # lw $t9, -32724($gp) # &sub_0dac0000
    sd	$s1,64($sp)
    # Line 1911
    sll	$t8,$v0,0x2
    subu	$t8,$t8,$v0
    lui	$s8,0x1
    addu	$s8,$s6,$s8
    lw	$s1,-28164($s8)
    sll	$t8,$t8,0x4
    # Line 1912
    addiu	$t9,$t9,-9116
    # Line 1911
    addu	$s1,$s1,$t8
    # Line 1912
    bal mgrTM_SaveData
    # Line 1911
    addiu	$s1,$s1,240
    # Line 1912
    move	$s2,$v0
    move	$s0,$v0
    # Line 1913
    # lw $t9, -17848($gp) # &memcpy
    move	$a0,$v0
    move	$a1,$s4
    jal	memcpy
    li	$a2,48
    # Line 1914
    lw	$a5,-28164($s8)
    # Line 1915
    sw	$zero,24($s2)
    li	$a4,1
    # Line 1916
    sh	$a4,44($s2)
    # Line 1917
    sltiu	$v1,$s5,1
    # Line 1918
    addu	$at,$v1,$v1
    addu	$at,$at,$s0
    # Line 1917
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    # Line 1914
    addiu	$a5,$a5,1192
    sw	$a5,28($s2)
    # Line 1917
    sw	$zero,4($v1)
    # Line 1918
    sh	$zero,32($at)
    sh	$zero,40($at)
    bne	$s4,$s3,.L0dabb3fc
    sh	$zero,36($at)
    # Line 1919
    move	$s3,$s0
.L0dabb3fc:
    # Line 1920
    sll	$s7,$s5,0x2
    addu	$v0,$s7,$s0
    lw	$v1,16($v0)
    addu	$v1,$v1,$s7
    sw	$s0,4($v1)
    # Line 1921
    lw	$v0,4($v0)
    # Line 1922
    addu	$s2,$s5,$s5
    # Line 1921
    addu	$v0,$v0,$s7
    sw	$s0,16($v0)
    # Line 1922
    addu	$a1,$s2,$s0
    lh	$a0,40($a1)
    lw	$v0,0($s1)
    # Line 1923
    addu	$a4,$s2,$v0
.L0dabb430:
    lh	$a4,32($a4)
    slt	$a4,$a0,$a4
    bnezl	$a4,.L0dabb450
    # Line 1925
    lw	$at,12($v0)
    # Line 1923
    lw	$v0,0($v0)
    bne	$v0,$s1,.L0dabb430
    addu	$a4,$s2,$v0
    # Line 1925
    lw	$at,12($v0)
.L0dabb450:
    sw	$s0,0($at)
    # Line 1926
    lw	$a5,12($v0)
    # Line 1927
    sw	$v0,0($s0)
    # Line 1926
    sw	$a5,12($s0)
    # Line 1928
    sw	$s0,12($v0)
    # Line 1929
    lw	$v0,12($s0)
    # Line 1932
    la	$a6,sub_0dac0000
    # Line 1929
    beq	$s1,$v0,.L0dabb498
    # Line 1932
    addiu	$a6,$a6,-26600
    # Line 1929
    addu	$a4,$s2,$v0
    lh	$a4,40($a4)
    lh	$v1,32($a1)
    addiu	$a4,$a4,1
    bne	$v1,$a4,.L0dabb52c
    # Line 1932
    la	$a6,sub_0dac0000
    # Line 1930
    bne	$s3,$s0,.L0dabb584
    # Line 1932
    la	$a6,sub_0dac0000
    addiu	$a6,$a6,-26600
.L0dabb498:
    # Line 1933
    lw	$v0,0($s0)
.L0dabb49c:
    addu	$a4,$s2,$s0
    move	$at,$s1
    beq	$at,$v0,.L0dabb4cc
    ld	$s1,64($sp)
    lh	$a4,40($a4)
    addu	$v1,$s2,$v0
    lh	$v1,32($v1)
    ld	$s2,48($sp)
    addiu	$a4,$a4,1
    bne	$v1,$a4,.L0dabb4cc
    ld	$s1,64($sp)
    # Line 1934
    bne	$s3,$v0,.L0dabb538
.L0dabb4cc:
    # Line 1938
    move	$a3,$s5
.L0dabb4d0:
    move	$a2,$s3
    move	$a1,$s4
    move	$a0,$s6
    ld	$s0,56($sp)
    # lw $t9, -32724($gp) # &sub_0dac0000
    ld	$s2,48($sp)
    # Line 1937
    addu	$a5,$s7,$s4
    # Line 1938
    addiu	$t9,$t9,-22740
    bal mgrTM_process_level
    # Line 1937
    sw	$zero,4($a5)
    # Line 1940
    ld	$s3,0($sp)
    ld	$s4,24($sp)
    ld	$s5,16($sp)
    # Line 1939
    lw	$at,-28164($s8)
    # Line 1940
    ld	$s6,8($sp)
    li	$ra,1
    # Line 1939
    addu	$at,$at,$s7
    sw	$ra,1200($at)
    # Line 1940
    ld	$ra,72($sp)
    ld	$s8,32($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dabb52c:
    # Line 1932
    addiu	$a6,$a6,-26600
    b	.L0dabb49c
    # Line 1933
    lw	$v0,0($s0)
.L0dabb538:
    # Line 1936
    move	$a0,$s6
    move	$a1,$s0
    move	$a2,$v0
    move	$a3,$s0
    bal mgrTM_process_level
    move	$t9,$a6
    b	.L0dabb4d0
    # Line 1938
    move	$a3,$s5
.L0dabb558:
    # Line 1906
    lbu	$a0,84($a6)
    beqz	$a0,.L0dabb358
    li	$v1,1
    # Line 1909
    lbu	$v0,82($a6)
    sd	$ra,72($sp)
    sd	$s1,64($sp)
    xor	$v0,$v0,$v1
    sltiu	$v0,$v0,1
    sllv	$v0,$a0,$v0
    b	.L0dabb358
    addu	$v0,$v0,$v1
.L0dabb584:
    # Line 1932
    move	$a0,$s6
    # Line 1930
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 1932
    move	$a1,$v0
    move	$a2,$s0
    # Line 1930
    addiu	$t9,$t9,-26600
    # Line 1932
    bal mgrTM_process_level
    move	$a3,$s0
    la	$a6,sub_0dac0000
    move	$s0,$v0
    b	.L0dabb498
    addiu	$a6,$a6,-26600
.end RemoveDesc

# Function: mgrTM_SetLoadBuffer
# Declared: Line 2038 (Source lines: 2041-2064)
# Address: 0x0dabb5b0 - 0x0dabb6d0 (Size: 288 bytes, Frame: 192)
.globl mgrTM_SetLoadBuffer
.ent mgrTM_SetLoadBuffer
mgrTM_SetLoadBuffer:
    # Line 2041
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    lui	$v0,0x14
    addiu	$v0,$v0,12520
    addu	$gp,$t9,$v0
    # Line 2042
    lbu	$at,183($a1)
    sd	$s0,8($sp)
    li	$s0,0x91fc
    addu	$s0,$s0,$a0
    beqz	$at,.L0dabb61c
    lw	$s0,0($s0)
    lbu	$a7,184($s1)
    lw	$at,1168($s0)
    bne	$at,$a7,.L0dabb664
    # Line 2047
    la	$a6,SYMBOL_LOCATION
.L0dabb5f4:
    lw	$v0,1176($s0)
    beq	$v0,$a7,.L0dabb6a4
    # Line 2050
    move	$a4,$zero
.L0dabb600:
    # Line 2051
    lw	$a0,12($s1)
    beqzl	$a0,.L0dabb61c
    # Line 2055
    sw	$zero,484($s0)
    # Line 2051
    lw	$v1,484($s0)
    bnel	$v1,$s1,.L0dabb61c
    # Line 2055
    sw	$zero,484($s0)
    # Line 2054
    sw	$a0,484($s0)
.L0dabb61c:
    # Line 2055
    lbu	$a3,185($s1)
    beqz	$a3,.L0dabb654
    ld	$gp,24($sp)
    lbu	$a0,186($s1)
    lw	$at,1164($s0)
    beql	$at,$a0,.L0dabb644
    # Line 2059
    lw	$v0,1172($s0)
    sw	$a0,1164($s0)
    lbu	$a0,186($s1)
    lw	$v0,1172($s0)
.L0dabb644:
    bne	$v0,$a0,.L0dabb654
    ld	$s1,16($sp)
    # Line 2061
    xori	$v1,$a0,0x1
    sw	$v1,1172($s0)
.L0dabb654:
    # Line 2064
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dabb664:
    sd	$a0,0($sp)
    # Line 2046
    move	$a4,$zero
    move	$a2,$a7
    li	$a1,416
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    sd	$ra,32($sp)
    bal __glMgrasWrite
    lw	$a3,288($a3)
    la	$a6,SYMBOL_LOCATION
    # Line 2047
    lbu	$a7,184($s1)
    ld	$a0,0($sp)
    ld	$ra,32($sp)
    sw	$a7,1168($s0)
    b	.L0dabb5f4
    lbu	$a7,184($s1)
.L0dabb6a4:
    # Line 2050
    lw	$a3,260($a6)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    sltiu	$a2,$a7,1
    sd	$ra,32($sp)
    bal __glMgrasWrite
    li	$a1,395
    # Line 2051
    lbu	$ra,184($s1)
    sltiu	$ra,$ra,1
    sw	$ra,1176($s0)
    b	.L0dabb600
    ld	$ra,32($sp)
.end mgrTM_SetLoadBuffer

# Function: mgrTM_VidTexWait
# Declared: Line 2070 (Source lines: 2074-2126)
# Address: 0x0dabb6d0 - 0x0dabb8ac (Size: 476 bytes, Frame: 128)
.globl mgrTM_VidTexWait
.ent mgrTM_VidTexWait
mgrTM_VidTexWait:
    # Line 2074
    addiu	$sp,$sp,-128
    sd	$gp,56($sp)
    lui	$at,0x14
    addiu	$at,$at,12232
    addu	$gp,$t9,$at
    la	$a4,MgrasPrevVidTexture
    sd	$s1,40($sp)
    lw	$a5,0($a4)
    move	$s1,$a2
    sd	$s0,48($sp)
    beqz	$a5,.L0dabb854
    move	$s0,$a0
    # Line 2084
    beqzl	$s1,.L0dabb75c
    sd	$ra,64($sp)
    beqzl	$a1,.L0dabb75c
    sd	$ra,64($sp)
    # Line 2085
    lbu	$v0,183($a5)
    beqzl	$v0,.L0dabb75c
    sd	$ra,64($sp)
    lbu	$v1,183($a1)
    beqzl	$v1,.L0dabb75c
    sd	$ra,64($sp)
    # Line 2086
    lbu	$at,184($a5)
    lbu	$a3,184($a1)
    beql	$a3,$at,.L0dabb75c
    sd	$ra,64($sp)
    lbu	$v0,193($a1)
    beqzl	$v0,.L0dabb75c
    sd	$ra,64($sp)
    ld	$gp,56($sp)
    # Line 2088
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
    sd	$ra,64($sp)
.L0dabb75c:
    sd	$s7,88($sp)
    # Line 2094
    li	$s7,7
    sd	$s4,72($sp)
    li	$s4,0xc350
    sd	$s5,80($sp)
    lui	$s5,0x6d67
    ori	$s5,$s5,0x16
    # Line 2096
    addiu	$a2,$sp,0
.L0dabb77c:
    move	$a1,$s5
    # lw $t9, -17944($gp) # &ioctl
    # Line 2095
    sw	$zero,0($sp)
    sw	$zero,4($sp)
    # Line 2096
    jal	ioctl
    lw	$a0,31560($s0)
    bltz	$v0,.L0dabb7f4
    # Line 2098
    lw	$a0,32($sp)
    beqzl	$a0,.L0dabb7b8
    ld	$s5,80($sp)
    # Line 2101
    bne	$s7,$a0,.L0dabb824
    # Line 2094
    addiu	$s4,$s4,-1
    bnez	$s4,.L0dabb77c
    # Line 2096
    addiu	$a2,$sp,0
    ld	$s5,80($sp)
.L0dabb7b8:
    # Line 2113
    beqz	$s1,.L0dabb890
    ld	$s7,88($sp)
    # Line 2126
    ld	$s0,48($sp)
.L0dabb7c4:
    # Line 2122
    lw	$v0,28($sp)
    # Line 2114
    beqz	$s4,.L0dabb868
    ld	$ra,64($sp)
    la	$at,MgrasPrevVidTexture
    # Line 2126
    ld	$s1,40($sp)
    ld	$gp,56($sp)
    # Line 2122
    lw	$v1,0($at)
    # Line 2126
    ld	$s4,72($sp)
    addiu	$sp,$sp,128
    # Line 2122
    sh	$v0,162($v1)
    # Line 2126
    jr	$ra
    # Line 2125
    sw	$zero,0($at)
.L0dabb7f4:
    # Line 2097
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,56($sp)
    # Line 2098
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s4,72($sp)
    ld	$ra,64($sp)
    ld	$s5,80($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabb824:
    # Line 2103
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,56($sp)
    # Line 2104
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s4,72($sp)
    ld	$ra,64($sp)
    ld	$s5,80($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabb854:
    ld	$gp,56($sp)
    # Line 2084
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabb868:
    # Line 2116
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1282
    jal	__glSetError
    ld	$s4,72($sp)
    ld	$gp,56($sp)
    # Line 2117
    ld	$ra,64($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabb890:
    # Line 2114
    # lw $t9, -17864($gp) # &sginap
    move	$a0,$zero
    ld	$s5,80($sp)
    jal	sginap
    ld	$s7,88($sp)
    b	.L0dabb7c4
    # Line 2126
    ld	$s0,48($sp)
.end mgrTM_VidTexWait

# Function: mgrTM_DrawSetup
# Declared: Line 2129 (Source lines: 2132-2325)
# Address: 0x0dabb8ac - 0x0dabc3fc (Size: 2896 bytes, Frame: 160)
.globl mgrTM_DrawSetup
.ent mgrTM_DrawSetup
mgrTM_DrawSetup:
    # Line 2132
    addiu	$sp,$sp,-160
    sd	$zero,72($sp)
    sd	$s3,64($sp)
    move	$s3,$a0
    sd	$gp,48($sp)
    # Line 2140
    lui	$v1,0x2
    # Line 2132
    lui	$v0,0x14
    addiu	$v0,$v0,11756
    addu	$gp,$t9,$v0
    sd	$s8,56($sp)
    # Line 2140
    lui	$s8,0x1
    lw	$at,32100($a0)
    addu	$s8,$a0,$s8
    sd	$s8,0($sp)
    and	$at,$at,$v1
    beqz	$at,.L0dabc278
    lw	$s8,-28164($s8)
    ld	$a0,0($sp)
    # Line 2145
    lw	$a0,-30164($a0)
    beqz	$a0,.L0dabc01c
    sd	$s0,40($sp)
    # Line 2153
    lw	$a1,196($a0)
    beqz	$a1,.L0dabc29c
    # Line 2156
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0dabb90c:
    # Line 2157
    lbu	$a4,192($a1)
    sd	$s0,40($sp)
    beqz	$a4,.L0dabc000
    move	$s0,$a1
.L0dabb91c:
    # Line 2165
    move	$a0,$zero
    sd	$s7,112($sp)
    # Line 2167
    lbu	$s7,165($s0)
    # Line 2165
    sw	$zero,92($s0)
    # Line 2167
    lbu	$a1,181($s0)
    # Line 2166
    lbu	$a5,164($s0)
    sd	$s5,104($sp)
    # Line 2167
    beqz	$a1,.L0dabba64
    # Line 2166
    move	$s5,$a5
    # Line 2170
    mtc1	$s5,$f5
    nop
    cvt.s.w	$f5,$f5
    # Line 2177
    ldc1	$f2,_lit8_408f400000000000
    # Line 2171
    lwc1	$f6,128($s0)
    blez	$s5,.L0dabc19c
    # Line 2170
    mov.s	$f4,$f5
    # Line 2172
    dmtc1	$zero,$f1
.L0dabb960:
    cvt.d.s	$f0,$f6
    c.lt.d	$f0,$f1
    nop
    bc1f	.L0dabb978
    mov.s	$f4,$f6
    # Line 2173
    mtc1	$zero,$f4
.L0dabb978:
    # Line 2174
    mtc1	$s7,$f6
    nop
    cvt.s.w	$f6,$f6
    add.s	$f4,$f5,$f4
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0dabb99c
    # Line 2177
    lwc1	$f0,_lit_42800000
    # Line 2175
    mov.s	$f4,$f6
.L0dabb99c:
    # Line 2177
    mul.s	$f0,$f4,$f0
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    nop
    sll	$a0,$a0,0x0
    andi	$a0,$a0,0x3ff
    sll	$a0,$a0,0x10
    sw	$a0,92($s0)
    lwc1	$f6,132($s0)
.L0dabb9c0:
    cvt.d.s	$f1,$f6
    c.lt.d	$f1,$f2
    nop
    bc1f	.L0dabba5c
    # Line 2187
    trunc.w.s	$f2,$f4
    # Line 2180
    dmtc1	$zero,$f0
    cvt.d.s	$f3,$f6
    c.lt.d	$f3,$f0
    nop
    bc1f	.L0dabb9f8
    mov.s	$f7,$f6
    # Line 2181
    mtc1	$s7,$f7
    nop
    cvt.s.w	$f7,$f7
.L0dabb9f8:
    trunc.w.s	$f0,$f7
    cvt.s.w	$f1,$f0
    c.lt.s	$f1,$f7
    mfc1	$a2,$f0
    bc1f	.L0dabba14
    # Line 2182
    move	$a3,$a2
    addiu	$a3,$a2,1
.L0dabba14:
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    add.s	$f6,$f5,$f6
    c.le.s	$f4,$f6
    nop
    bc1f	.L0dabba5c
    nop
    mtc1	$s7,$f0
    nop
    cvt.s.w	$f0,$f0
    c.lt.s	$f6,$f0
    nop
    bc1f	.L0dabba5c
    nop
    # Line 2185
    trunc.w.s	$f1,$f6
    mfc1	$s7,$f1
    nop
.L0dabba5c:
    # Line 2187
    mfc1	$s5,$f2
    nop
.L0dabba64:
    beqz	$s7,.L0dabc088
    # Line 2190
    move	$a2,$s7
.L0dabba6c:
    andi	$a4,$a2,0xf
    li	$at,-16
    and	$a0,$at,$a0
    or	$a0,$a4,$a0
    # Line 2191
    li	$a4,-33
    # Line 2190
    beqz	$a1,.L0dabbfd0
    sw	$a0,92($s0)
    blez	$s7,.L0dabbfd0
    # Line 2191
    li	$a3,1
.L0dabba90:
    lw	$a2,104($s0)
    # Line 2192
    lui	$at,0x8
    nor	$at,$at,$zero
    # Line 2191
    and	$a2,$a2,$a4
    andi	$a4,$a3,0x1
    sll	$a4,$a4,0x5
    or	$a2,$a2,$a4
    beqz	$a1,.L0dabbfd8
    sw	$a2,104($s0)
    blez	$s7,.L0dabbfd8
    # Line 2192
    li	$a1,1
.L0dabbabc:
    # Line 2193
    lbu	$v0,190($s0)
    # Line 2192
    and	$at,$a2,$at
    andi	$v1,$a1,0x1
    sll	$v1,$v1,0x13
    or	$at,$at,$v1
    # Line 2193
    li	$v1,-513
    and	$at,$at,$v1
    beqz	$v0,.L0dabc090
    sw	$at,104($s0)
    beqzl	$a5,.L0dabc1bc
    # Line 2195
    lw	$at,24($s0)
    sd	$s4,88($sp)
    # Line 2217
    la	$s4,sub_0dac0000
    addiu	$s4,$s4,-15364
.L0dabbaf4:
    # Line 2197
    lbu	$at,193($s0)
.L0dabbaf8:
    # Line 2222
    move	$a2,$s5
    # Line 2197
    beqz	$at,.L0dabc2c0
    # Line 2222
    slt	$v0,$s7,$s5
    bnezl	$v0,.L0dabbb7c
    # Line 2229
    lbu	$at,183($s0)
    sd	$s2,96($sp)
    sd	$ra,80($sp)
    sd	$s1,120($sp)
    # Line 2222
    sll	$s1,$a2,0x2
    sd	$s6,128($sp)
    addiu	$s6,$s7,1
    sll	$s6,$s6,0x2
    addu	$s1,$s1,$s0
    # Line 2224
    li	$a2,1
.L0dabbb30:
    move	$a0,$s3
    # Line 2223
    lw	$s2,20($s1)
    # Line 2224
    move	$t9,$s4
    bal mgrTM_DrawSetup
    lw	$a1,28($s2)
    # Line 2225
    lw	$v1,28($s2)
    sw	$s3,40($v1)
    # Line 2226
    lw	$v0,28($s2)
    lw	$at,16($s0)
    # Line 2222
    addu	$a4,$s6,$s0
    # Line 2226
    beq	$at,$v0,.L0dabbb68
    # Line 2222
    addiu	$s1,$s1,4
    bne	$a4,$s1,.L0dabbb30
    # Line 2224
    li	$a2,1
.L0dabbb68:
    ld	$s1,120($sp)
    ld	$ra,80($sp)
    ld	$s6,128($sp)
    ld	$s2,96($sp)
.L0dabbb78:
    # Line 2229
    lbu	$at,183($s0)
.L0dabbb7c:
    beqz	$at,.L0dabbc00
    # Line 2245
    la	$s4,SYMBOL_LOCATION
    # Line 2229
    lbu	$a6,184($s0)
    lw	$v0,1176($s8)
    bne	$v0,$a6,.L0dabc0a0
    # Line 2233
    la	$s4,SYMBOL_LOCATION
.L0dabbb94:
    lw	$v1,1168($s8)
    beq	$v1,$a6,.L0dabc0d8
    # Line 2236
    move	$a0,$s3
.L0dabbba0:
    # Line 2238
    lw	$a0,12($s0)
    beqz	$a0,.L0dabbc04
    # Line 2256
    ld	$a4,72($sp)
    # Line 2238
    lw	$a4,484($s8)
    bne	$a4,$a0,.L0dabbc04
    # Line 2256
    ld	$a4,72($sp)
    # Line 2241
    sw	$s0,484($s8)
    sd	$s2,96($sp)
    # Line 2242
    lw	$s2,488($s8)
    ld	$s4,88($sp)
    ld	$s5,104($sp)
    beqz	$s2,.L0dabbfe0
    ld	$s7,112($sp)
    lw	$at,0($s2)
    bnel	$at,$s0,.L0dabbfe4
    # Line 2244
    sw	$zero,488($s8)
    # Line 2243
    lbu	$v1,63($s2)
    lw	$v0,12($s0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,20($v0)
    ld	$s2,96($sp)
    b	.L0dabbfe8
    sw	$v0,488($s8)
.L0dabbc00:
    # Line 2256
    ld	$a4,72($sp)
.L0dabbc04:
    move	$a0,$zero
    beqz	$a4,.L0dabbc94
    sw	$zero,96($s0)
    # Line 2263
    lbu	$a0,191($s0)
    # Line 2258
    lw	$v0,104($s0)
    # Line 2263
    andi	$a0,$a0,0x7
    # Line 2261
    lui	$at,0x8
    # Line 2258
    ori	$v0,$v0,0x200
    # Line 2259
    ori	$v0,$v0,0x20
    # Line 2260
    ori	$a4,$v0,0x40
    # Line 2261
    or	$a4,$a4,$at
    # Line 2262
    ld	$at,72($sp)
    # Line 2261
    sw	$a4,104($s0)
    # Line 2263
    sll	$a0,$a0,0x10
    # Line 2262
    lw	$at,20($at)
    li	$v0,-1025
    and	$a4,$a4,$v0
    lbu	$at,60($at)
    # Line 2264
    ld	$v0,0($sp)
    # Line 2263
    sw	$a0,96($s0)
    # Line 2262
    xori	$at,$at,0x7
    sltiu	$at,$at,1
    sll	$at,$at,0xa
    or	$a4,$a4,$at
    sw	$a4,104($s0)
    sd	$s2,96($sp)
    # Line 2264
    lw	$v0,-28168($v0)
    li	$v1,0xfc00
    lw	$at,92($s0)
    lw	$v0,136($v0)
    nor	$v1,$v1,$zero
    and	$at,$at,$v1
    andi	$v0,$v0,0x3f
    sll	$v0,$v0,0xa
    or	$at,$at,$v0
    sw	$at,92($s0)
.L0dabbc94:
    sd	$s2,96($sp)
    # Line 2267
    sll	$s2,$s5,0x2
    addu	$s2,$s2,$s0
    sd	$s2,32($sp)
    lw	$s2,20($s2)
    # Line 2268
    lbu	$a4,59($s2)
    li	$at,-16
    and	$at,$at,$a0
    addu	$a4,$a4,$s5
    andi	$a4,$a4,0xf
    or	$a4,$a4,$at
    sw	$a4,96($s0)
    # Line 2270
    lbu	$v1,179($s0)
    # Line 2268
    lbu	$at,59($s2)
    li	$v0,-3841
    and	$a4,$a4,$v0
    addu	$at,$at,$s5
    andi	$at,$at,0xf
    sll	$at,$at,0x8
    or	$a4,$a4,$at
    sw	$a4,96($s0)
    # Line 2270
    slti	$v1,$v1,4
    # Line 2269
    lbu	$at,60($s2)
    li	$v0,-241
    and	$a4,$a4,$v0
    addu	$at,$at,$s5
    andi	$at,$at,0xf
    sll	$at,$at,0x4
    or	$a4,$a4,$at
    sw	$a4,96($s0)
    li	$v0,0xf000
    lbu	$at,60($s2)
    nor	$v0,$v0,$zero
    and	$a4,$a4,$v0
    addu	$at,$at,$s5
    andi	$at,$at,0xf
    sll	$at,$at,0xc
    or	$a4,$a4,$at
    sw	$a4,96($s0)
    # Line 2270
    lui	$v0,0x78
    lbu	$at,61($s2)
    nor	$v0,$v0,$zero
    and	$a4,$a4,$v0
    andi	$at,$at,0xf
    sll	$at,$at,0x13
    or	$a4,$a4,$at
    beqz	$v1,.L0dabc108
    sw	$a4,96($s0)
.L0dabbd54:
    # Line 2284
    lbu	$at,185($s0)
.L0dabbd58:
    bnez	$at,.L0dabbd70
    # Line 2285
    nop	# was lw $t9, -30740($gp) # &mgrTM_tram_select
    # Line 2284
    lbu	$v0,187($s0)
    beqz	$v0,.L0dabbd80
    sd	$ra,80($sp)
    # Line 2285
    # lw $t9, -30740($gp) # &mgrTM_tram_select
.L0dabbd70:
    move	$a0,$s3
    sd	$ra,80($sp)
    bal mgrTM_tram_select
    move	$a1,$s0
.L0dabbd80:
    # Line 2288
    move	$a0,$s3
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,216($s4)
    lw	$a2,104($s0)
    bal __glMgrasWrite
    li	$a1,384
    # Line 2289
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    move	$a0,$s3
    bal mgrTM_SendTexmode1
    move	$a1,$s0
    lw	$v1,20($s2)
    beqz	$v1,.L0dabc2fc
    # Line 2297
    move	$a0,$s3
.L0dabbdb8:
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,268($s4)
    move	$a2,$s5
    bal __glMgrasWrite
    li	$a1,400
    # Line 2298
    move	$a2,$s5
    slt	$a4,$s7,$s5
    xori	$a4,$a4,0x1
    beqz	$a4,.L0dabbe64
    sd	$a4,16($sp)
    slti	$at,$s5,10
    beqz	$at,.L0dabbe64
    li	$a7,401
    li	$a1,0xec10
    lw	$a3,268($s4)
    lw	$a6,272($s4)
    sd	$s1,120($sp)
    sll	$s1,$a2,0x2
    sll	$a5,$s7,0x2
    lui	$a0,0x7
    ori	$a0,$a0,0x4080
    addu	$a5,$a5,$s0
    addu	$s1,$s1,$s0
    addiu	$s1,$s1,4
.L0dabbe1c:
    # Line 2299
    lw	$s2,16($s1)
    # Line 2300
    sw	$a1,0($a0)
    # Line 2301
    sw	$a3,0($a0)
    # Line 2302
    sw	$a6,0($a0)
    # Line 2304
    lw	$a4,28($s2)
    # Line 2303
    sw	$a7,0($a0)
    # Line 2304
    lbu	$v0,58($s2)
    lh	$a4,74($a4)
    # Line 2298
    sltu	$at,$a5,$s1
    # Line 2304
    sll	$v0,$v0,0x8
    or	$a4,$a4,$v0
    # Line 2298
    bnez	$at,.L0dabbe60
    # Line 2304
    sw	$a4,0($a0)
    # Line 2298
    addiu	$at,$s0,40
    sltu	$at,$s1,$at
    bnez	$at,.L0dabbe1c
    addiu	$s1,$s1,4
.L0dabbe60:
    ld	$s1,120($sp)
.L0dabbe64:
    # Line 2306
    lbu	$v0,179($s0)
    beqz	$v0,.L0dabbe8c
    # Line 2307
    move	$a0,$s3
    # Line 2306
    lw	$v1,20($s2)
    bnez	$v1,.L0dabbe8c
    # Line 2307
    move	$a0,$s3
    # Line 2306
    lbu	$a4,181($s0)
    beqz	$a4,.L0dabbf38
    ld	$s2,96($sp)
    # Line 2307
    move	$a0,$s3
.L0dabbe8c:
    li	$a4,1
    lw	$a3,268($s4)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    move	$a2,$s5
    li	$a1,400
    bal __glMgrasWrite
    ld	$s2,96($sp)
    # Line 2308
    ld	$at,16($sp)
    beqz	$at,.L0dabbf38
    move	$a2,$s5
    slti	$v0,$s5,10
    beqz	$v0,.L0dabbf38
    li	$a7,403
    li	$a1,0xec10
    lw	$a3,268($s4)
    lw	$a6,280($s4)
    sll	$a5,$s7,0x2
    ld	$s7,112($sp)
    sd	$s1,120($sp)
    sll	$s1,$a2,0x2
    lui	$a0,0x7
    ori	$a0,$a0,0x4080
    addu	$a5,$a5,$s0
    addu	$s1,$s1,$s0
    # Line 2309
    lw	$a4,20($s1)
.L0dabbef0:
    # Line 2310
    sw	$a1,0($a0)
    # Line 2311
    sw	$a3,0($a0)
    # Line 2312
    sw	$a6,0($a0)
    # Line 2314
    lw	$v0,28($a4)
    # Line 2313
    sw	$a7,0($a0)
    # Line 2314
    lh	$a4,56($a4)
    lh	$v0,74($v0)
    # Line 2308
    addiu	$s1,$s1,4
    sltu	$at,$a5,$s1
    # Line 2314
    addu	$a4,$a4,$v0
    andi	$a4,$a4,0xff
    # Line 2308
    bnez	$at,.L0dabbf34
    # Line 2314
    sw	$a4,0($a0)
    # Line 2308
    addiu	$at,$s0,40
    sltu	$at,$s1,$at
    bnezl	$at,.L0dabbef0
    # Line 2309
    lw	$a4,20($s1)
.L0dabbf34:
    ld	$s1,120($sp)
.L0dabbf38:
    # Line 2318
    move	$a0,$s3
    move	$a4,$zero
    lw	$a3,220($s4)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,96($s0)
    li	$a1,385
    bal __glMgrasWrite
    ld	$s7,112($sp)
    # Line 2319
    move	$a0,$s3
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,228($s4)
    lw	$a2,92($s0)
    bal __glMgrasWrite
    li	$a1,387
    # Line 2320
    ld	$a2,32($sp)
    # Line 2321
    li	$a4,1
    lw	$a3,264($s4)
    # Line 2320
    lw	$a2,20($a2)
    # Line 2321
    li	$a1,396
    move	$a0,$s3
    lw	$a5,4($a2)
    lw	$a2,8($a2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    sll	$a5,$a5,0xd
    or	$a2,$a2,$a5
    bal __glMgrasWrite
    sllv	$a2,$a2,$s5
    ld	$gp,48($sp)
    # Line 2324
    sw	$s0,484($s8)
    # Line 2325
    ld	$s0,40($sp)
    ld	$s3,64($sp)
    ld	$s4,88($sp)
    ld	$ra,80($sp)
    ld	$s5,104($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dabbfd0:
    b	.L0dabba90
    # Line 2191
    move	$a3,$zero
.L0dabbfd8:
    b	.L0dabbabc
    # Line 2192
    move	$a1,$zero
.L0dabbfe0:
    # Line 2244
    sw	$zero,488($s8)
.L0dabbfe4:
    ld	$s2,96($sp)
.L0dabbfe8:
    ld	$gp,48($sp)
    # Line 2245
    ld	$s0,40($sp)
    ld	$s3,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dabc000:
    # Line 2160
    # lw $t9, -30736($gp) # &mgrTM_TexValidate
    sd	$ra,80($sp)
    bal mgrTM_TexValidate
    move	$a0,$s0
    lbu	$a4,192($s0)
    # Line 2162
    bnez	$a4,.L0dabb91c
    ld	$ra,80($sp)
.L0dabc01c:
    ld	$at,0($sp)
    # Line 2146
    lw	$at,-28088($at)
    beqz	$at,.L0dabc074
    ld	$s0,40($sp)
    # Line 2148
    move	$a3,$zero
    move	$a2,$zero
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    move	$a1,$zero
    sd	$ra,80($sp)
    bal __glMgrSaveTexmode
    li	$a0,1
    ld	$ra,80($sp)
    # Line 2150
    li	$v0,3072
    # Line 2149
    mtc1	$zero,$f3
    ld	$a4,0($sp)
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 2151
    sw	$zero,-28088($a4)
    # Line 2149
    li	$a4,24324
    sw	$a4,0($v1)
    swc1	$f3,0($v1)
    # Line 2150
    sw	$v0,0($v1)
.L0dabc074:
    ld	$gp,48($sp)
    # Line 2153
    ld	$s3,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dabc088:
    b	.L0dabba6c
    # Line 2190
    li	$a2,1
.L0dabc090:
    sd	$s4,88($sp)
    # Line 2217
    la	$s4,sub_0dac0000
    b	.L0dabbaf4
    addiu	$s4,$s4,-15364
.L0dabc0a0:
    # Line 2231
    move	$a4,$zero
    move	$a2,$a6
    li	$a1,395
    move	$a0,$s3
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$s4,SYMBOL_LOCATION
    sd	$ra,80($sp)
    bal __glMgrasWrite
    lw	$a3,260($s4)
    # Line 2233
    lbu	$ra,184($s0)
    sw	$ra,1176($s8)
    ld	$ra,80($sp)
    b	.L0dabbb94
    lbu	$a6,184($s0)
.L0dabc0d8:
    # Line 2236
    li	$a4,1
    lw	$a3,288($s4)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    sltiu	$a2,$a6,1
    sd	$ra,80($sp)
    bal __glMgrasWrite
    li	$a1,416
    # Line 2238
    lbu	$at,184($s0)
    ld	$ra,80($sp)
    sltiu	$at,$at,1
    b	.L0dabbba0
    sw	$at,1168($s8)
.L0dabc108:
    # Line 2273
    move	$a0,$s3
    move	$a4,$zero
    lw	$a3,256($s4)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,88($s0)
    sd	$ra,80($sp)
    bal __glMgrasWrite
    li	$a1,394
    lbu	$v0,179($s0)
    slti	$v0,$v0,4
    bnez	$v0,.L0dabbd54
    ld	$ra,80($sp)
    # Line 2276
    lbu	$v1,166($s0)
    lw	$v0,96($s0)
    li	$at,-16
    slti	$v1,$v1,2
    and	$at,$at,$v0
    andi	$a4,$v0,0xf
    addiu	$a4,$a4,1
    andi	$a4,$a4,0xf
    or	$a4,$a4,$at
    bnez	$v1,.L0dabbd54
    sw	$a4,96($s0)
    lbu	$a4,167($s0)
    slti	$a4,$a4,2
    bnezl	$a4,.L0dabbd58
    # Line 2284
    lbu	$at,185($s0)
    # Line 2278
    move	$a0,$s3
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,292($s4)
    move	$a2,$zero
    bal __glMgrasWrite
    li	$a1,417
    # Line 2279
    sw	$zero,488($s8)
    b	.L0dabbd54
    ld	$ra,80($sp)
.L0dabc19c:
    # Line 2171
    ldc1	$f0,_lit8_c08f400000000000
    cvt.d.s	$f1,$f6
    c.lt.d	$f0,$f1
    nop
    bc1fl	.L0dabb9c0
    # Line 2177
    lwc1	$f6,132($s0)
    b	.L0dabb960
    # Line 2172
    dmtc1	$zero,$f1
.L0dabc1bc:
    # Line 2195
    beqz	$at,.L0dabc28c
    ld	$a2,0($sp)
    # Line 2196
    lw	$a2,-28332($a2)
    sd	$a2,72($sp)
    lw	$a2,20($a2)
    beqz	$a2,.L0dabc2e8
    ld	$at,72($sp)
    lw	$a4,152($s0)
    lw	$at,152($at)
    bnel	$a4,$at,.L0dabc2ec
    sd	$s4,88($sp)
    # Line 2197
    beqzl	$s7,.L0dabc3e0
    # Line 2199
    li	$s7,1
.L0dabc1f0:
    # Line 2200
    lw	$v0,28($a2)
    sd	$v0,8($sp)
    lbu	$v0,89($v0)
    beqz	$v0,.L0dabc3b0
    sd	$ra,80($sp)
    # Line 2203
    li	$a2,1
    sd	$s4,88($sp)
    # Line 2202
    la	$s4,sub_0dac0000
    # Line 2203
    ld	$a1,8($sp)
    move	$a0,$s3
    # Line 2202
    addiu	$s4,$s4,-15364
    # Line 2203
    bal mgrTM_DrawSetup
    move	$t9,$s4
    ld	$ra,80($sp)
.L0dabc228:
    ld	$a4,8($sp)
    # Line 2204
    ld	$a0,72($sp)
    sw	$s3,40($a4)
    lbu	$a0,186($a0)
    lbu	$at,186($s0)
    beql	$at,$a0,.L0dabbaf8
    # Line 2197
    lbu	$at,193($s0)
    sd	$s1,120($sp)
    # Line 2208
    move	$a2,$s5
    slt	$at,$s7,$s5
    bnez	$at,.L0dabbaf4
    # Line 2207
    sb	$a0,186($s0)
    sd	$s2,96($sp)
    # Line 2208
    sll	$s1,$a2,0x2
    addu	$s1,$s1,$s0
    addiu	$v0,$s7,1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s0
    b	.L0dabc36c
    sd	$v0,24($sp)
.L0dabc278:
    ld	$gp,48($sp)
    # Line 2143
    ld	$s3,64($sp)
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dabc28c:
    sd	$s4,88($sp)
    # Line 2217
    la	$s4,sub_0dac0000
    b	.L0dabbaf4
    addiu	$s4,$s4,-15364
.L0dabc29c:
    sd	$ra,80($sp)
    # Line 2156
    bal mgrTM_RefreshDim
    nop
    ld	$a1,0($sp)
    sd	$s0,40($sp)
    lw	$a1,-30164($a1)
    ld	$ra,80($sp)
    b	.L0dabb90c
    lw	$a1,196($a1)
.L0dabc2c0:
    # Line 2221
    move	$a0,$s3
    move	$a1,$s0
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a2,$s5
    sd	$ra,80($sp)
    addiu	$t9,$t9,-14264
    bal mgrTM_TexValidate
    move	$a3,$s7
    b	.L0dabbb78
    ld	$ra,80($sp)
.L0dabc2e8:
    sd	$s4,88($sp)
.L0dabc2ec:
    # Line 2217
    la	$s4,sub_0dac0000
    sd	$zero,72($sp)
    b	.L0dabbaf4
    addiu	$s4,$s4,-15364
.L0dabc2fc:
    # Line 2292
    move	$a0,$s3
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,232($s4)
    lw	$a2,144($s0)
    bal __glMgrasWrite
    li	$a1,388
    # Line 2293
    move	$a0,$s3
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,236($s4)
    lw	$a2,148($s0)
    bal __glMgrasWrite
    li	$a1,389
    b	.L0dabbdb8
    # Line 2297
    move	$a0,$s3
.L0dabc33c:
    # lw $t9, -32724($gp) # &sub_0dac0000
.L0dabc340:
    # Line 2212
    move	$a0,$s3
    move	$a2,$zero
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    li	$a3,1
    # Line 2213
    lw	$v0,28($s2)
    lbu	$at,186($s0)
    sb	$at,84($v0)
.L0dabc360:
    # Line 2208
    ld	$v1,24($sp)
.L0dabc364:
    beql	$s1,$v1,.L0dabc3a4
    ld	$s1,120($sp)
.L0dabc36c:
    # Line 2209
    lw	$s2,20($s1)
    beqz	$s2,.L0dabc360
    # Line 2208
    addiu	$s1,$s1,4
    # Line 2209
    lw	$a1,28($s2)
    beqz	$a1,.L0dabc364
    # Line 2208
    ld	$v1,24($sp)
    # Line 2209
    lbu	$a4,85($a1)
    bnez	$a4,.L0dabc340
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
    # Line 2211
    # lw $t9, -30712($gp) # &mgrTM_SaveData
    bal mgrTM_SaveData
    move	$a0,$s3
    b	.L0dabc33c
    lw	$a1,28($s2)
.L0dabc3a4:
    ld	$ra,80($sp)
    b	.L0dabbaf4
    ld	$s2,96($sp)
.L0dabc3b0:
    sd	$s4,88($sp)
    # Line 2202
    move	$a0,$s3
    ld	$a1,8($sp)
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    move	$a4,$zero
    move	$a3,$zero
    bal mgrTM_MakeResident
    li	$a2,1
    la	$s4,sub_0dac0000
    ld	$ra,80($sp)
    b	.L0dabc228
    addiu	$s4,$s4,-15364
.L0dabc3e0:
    # Line 2199
    ld	$a2,72($sp)
    li	$a4,-16
    and	$a4,$a4,$a0
    ori	$a4,$a4,0x1
    sw	$a4,92($s0)
    b	.L0dabc1f0
    lw	$a2,20($a2)
.end mgrTM_DrawSetup

# Function: LevelUsed
# Declared: Line 2328 (Source lines: 2332-2344)
# Address: 0x0dabc3fc - 0x0dabc4c8 (Size: 204 bytes, Frame: 208)
.ent LevelUsed
LevelUsed:
    # Line 2332
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    sll	$s0,$a2,0x2
    addu	$a4,$s0,$a1
    lw	$a6,24($a4)
    move	$a5,$a1
    sd	$s1,8($sp)
    beqz	$a6,.L0dabc444
    move	$s1,$a0
    li	$at,0x91fc
    addu	$at,$at,$s1
    lw	$at,0($at)
    addu	$at,$at,$s0
    lw	$at,1044($at)
    bnel	$at,$a6,.L0dabc494
    sd	$a4,24($sp)
.L0dabc43c:
    # Line 2335
    bnezl	$a6,.L0dabc488
    # Line 2344
    ld	$s0,0($sp)
.L0dabc444:
    # Line 2338
    li	$a1,0x91fc
    addu	$a1,$a1,$s1
    lw	$a1,0($a1)
    addu	$a1,$a1,$s0
    lw	$a1,1044($a1)
    # Line 2339
    addu	$a0,$s0,$a1
    lw	$a2,8($a0)
    ld	$s1,8($sp)
    beqz	$a2,.L0dabc478
    sw	$a2,8($a4)
    # Line 2340
    addu	$a3,$a2,$s0
    ld	$s1,8($sp)
    sw	$a5,16($a3)
.L0dabc478:
    # Line 2341
    sw	$a5,8($a0)
    # Line 2342
    sw	$a1,24($a4)
    sw	$a1,16($a4)
    # Line 2344
    ld	$s0,0($sp)
.L0dabc488:
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabc494:
    sd	$a5,16($sp)
    # Line 2334
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$a5
    sd	$ra,32($sp)
    addiu	$t9,$t9,-10532
    bal mgrTM_RemoveLev
    move	$a1,$a2
    # Line 2335
    move	$a6,$zero
    ld	$a5,16($sp)
    ld	$a4,24($sp)
    ld	$ra,32($sp)
    b	.L0dabc43c
    sw	$zero,24($a4)
.end LevelUsed

# Function: mgrTM_tram_select
# Declared: Line 2346 (Source lines: 2349-2364)
# Address: 0x0dabc4c8 - 0x0dabc544 (Size: 124 bytes, Frame: 32)
.globl mgrTM_tram_select
.ent mgrTM_tram_select
mgrTM_tram_select:
    # Line 2349
    lbu	$at,185($a1)
    lbu	$a4,187($a1)
    addiu	$sp,$sp,-32
    beqz	$at,.L0dabc518
    # Line 2360
    lw	$a3,0($sp)
    # Line 2353
    lbu	$a5,186($a1)
    beqz	$a4,.L0dabc4f4
    move	$a3,$a5
    # Line 2355
    sll	$at,$a5,0x1
    lbu	$a3,188($a1)
    or	$a3,$a3,$at
.L0dabc4f4:
    # Line 2360
    lui	$a1,0x1
.L0dabc4f8:
    addu	$a1,$a0,$a1
    lw	$a1,-28164($a1)
    lw	$v0,1172($a1)
    beq	$v0,$a3,.L0dabc510
    nop
    # Line 2363
    sw	$a3,1172($a1)
.L0dabc510:
    # Line 2364
    jr	$ra
    addiu	$sp,$sp,32
.L0dabc518:
    # Line 2355
    li	$a2,1
    beq	$a4,$a2,.L0dabc534
    # Line 2358
    li	$at,2
    beq	$a4,$at,.L0dabc53c
    nop
    b	.L0dabc4f8
    # Line 2360
    lui	$a1,0x1
.L0dabc534:
    # Line 2358
    b	.L0dabc4f4
    lbu	$a3,188($a1)
.L0dabc53c:
    # Line 2360
    b	.L0dabc4f4
    lbu	$a3,189($a1)
.end mgrTM_tram_select

# Function: mgrTM_TexValidate
# Declared: Line 2662 (Source lines: 2668-2721)
# Address: 0x0dabc544 - 0x0dabc848 (Size: 772 bytes, Frame: 0)
.globl mgrTM_TexValidate
.ent mgrTM_TexValidate
mgrTM_TexValidate:
    # Line 2705
    li	$a1,-2049
    # Line 2668
    lw	$a6,76($a0)
    sb	$zero,192($a0)
    # Line 2693
    lui	$t2,0x3c00
    # Line 2668
    beqz	$a6,.L0dabc828
    # Line 2693
    nor	$t2,$t2,$zero
    # Line 2671
    lbu	$at,181($a0)
    move	$a2,$zero
    sb	$zero,165($a0)
    beqz	$at,.L0dabc818
    sb	$zero,164($a0)
    lw	$a3,136($a0)
    beqzl	$a3,.L0dabc588
    # Line 2675
    sll	$a3,$a2,0x2
    # Line 2674
    andi	$a2,$a3,0xff
    sb	$a2,164($a0)
    # Line 2675
    sll	$a3,$a2,0x2
.L0dabc588:
    addu	$a3,$a3,$a0
    lw	$a3,20($a3)
    beqz	$a3,.L0dabc7f0
    nop
    # Line 2676
    lbu	$a5,59($a3)
    lbu	$a7,60($a3)
    slt	$at,$a7,$a5
    beqz	$at,.L0dabc5b0
    # Line 2677
    move	$a4,$a7
    move	$a4,$a5
.L0dabc5b0:
    # Line 2678
    addu	$a3,$a4,$a2
    lw	$a5,140($a0)
    # Line 2681
    lbu	$a4,164($a0)
    # Line 2678
    andi	$a3,$a3,0xff
    sltu	$v0,$a5,$a3
    beqz	$v0,.L0dabc5d4
    sb	$a3,165($a0)
    # Line 2680
    andi	$a3,$a5,0xff
    sb	$a3,165($a0)
.L0dabc5d4:
    # Line 2681
    slt	$at,$a3,$a4
    bnez	$at,.L0dabc61c
    sll	$a2,$a4,0x2
    b	.L0dabc5fc
    addu	$a2,$a2,$a0
.L0dabc5e8:
    # Line 2684
    andi	$a3,$a3,0xff
    sb	$a3,165($a0)
.L0dabc5f0:
    # Line 2681
    slt	$at,$a3,$a4
    bnezl	$at,.L0dabc620
    # Line 2686
    li	$a2,1
.L0dabc5fc:
    # Line 2682
    lw	$a5,20($a2)
    beqz	$a5,.L0dabc830
    # Line 2681
    addiu	$a4,$a4,1
    # Line 2682
    lbu	$v0,64($a5)
    beqz	$v0,.L0dabc5f0
    # Line 2681
    addiu	$a2,$a2,4
    b	.L0dabc5e8
    # Line 2684
    addiu	$a3,$a3,-1
.L0dabc61c:
    # Line 2686
    li	$a2,1
.L0dabc620:
    sb	$a2,192($a0)
.L0dabc624:
    # Line 2688
    beqz	$a2,.L0dabc7e8
    nop
    # Line 2709
    lbu	$a2,179($a0)
    slti	$v1,$a2,4
    # Line 2701
    lbu	$v0,183($a0)
    li	$a4,-17
    # Line 2700
    lbu	$a5,167($a0)
    # Line 2701
    andi	$v0,$v0,0x1
    sll	$v0,$v0,0x4
    # Line 2700
    andi	$a5,$a5,0x3
    sll	$a5,$a5,0x2
    # Line 2691
    sw	$zero,88($a0)
    # Line 2701
    and	$a4,$a5,$a4
    # Line 2692
    lhu	$a7,52($a6)
    # Line 2701
    or	$a4,$a4,$v0
    # Line 2708
    li	$v0,-16385
    # Line 2692
    andi	$a7,$a7,0x7
    sll	$a7,$a7,0x17
    sw	$a7,88($a0)
    # Line 2707
    lbu	$at,174($a0)
    # Line 2693
    lhu	$t1,52($a6)
    lbu	$t0,61($a6)
    # Line 2707
    andi	$at,$at,0x1
    # Line 2693
    and	$a7,$a7,$t2
    addu	$t0,$t0,$t1
    addiu	$t0,$t0,-1
    andi	$t0,$t0,0xf
    sll	$t0,$t0,0x1a
    or	$a7,$a7,$t0
    sw	$a7,88($a0)
    # Line 2707
    sll	$at,$at,0xd
    # Line 2694
    lbu	$t0,59($a6)
    li	$t1,-61
    and	$a7,$a7,$t1
    andi	$t0,$t0,0xf
    sll	$t0,$t0,0x2
    or	$a7,$a7,$t0
    sw	$a7,88($a0)
    # Line 2703
    li	$a3,-129
    # Line 2695
    lbu	$t0,60($a6)
    li	$t1,-961
    and	$a7,$a7,$t1
    andi	$t0,$t0,0xf
    sll	$t0,$t0,0x6
    or	$a7,$a7,$t0
    sw	$a7,88($a0)
    # Line 2702
    li	$t3,-65
    # Line 2696
    lbu	$t0,61($a6)
    li	$t2,-15361
    and	$a7,$a7,$t2
    andi	$t0,$t0,0xf
    sll	$t0,$t0,0xa
    or	$a7,$a7,$t0
    sw	$a7,88($a0)
    # Line 2702
    and	$a4,$t3,$a4
    # Line 2697
    lbu	$t0,62($a6)
    # Line 2700
    sw	$a5,104($a0)
    # Line 2697
    lui	$t1,0x3
    # Line 2702
    lbu	$t2,171($a0)
    # Line 2697
    ori	$t1,$t1,0xc000
    nor	$t1,$t1,$zero
    # Line 2702
    andi	$t2,$t2,0x1
    sll	$t2,$t2,0x6
    or	$a4,$a4,$t2
    # Line 2704
    lbu	$t2,176($a0)
    # Line 2697
    and	$a7,$a7,$t1
    # Line 2707
    li	$t1,-8193
    # Line 2703
    and	$a3,$a4,$a3
    # Line 2704
    andi	$t2,$t2,0x1
    # Line 2697
    andi	$t0,$t0,0xf
    sll	$t0,$t0,0xe
    or	$a7,$a7,$t0
    # Line 2703
    lbu	$t0,177($a0)
    # Line 2697
    sw	$a7,88($a0)
    # Line 2705
    lbu	$a7,172($a0)
    # Line 2703
    andi	$t0,$t0,0x1
    sll	$t0,$t0,0x7
    or	$a3,$a3,$t0
    # Line 2704
    li	$t0,-257
    and	$a3,$a3,$t0
    sll	$t0,$t2,0x8
    or	$a3,$a3,$t0
    sw	$a3,104($a0)
    # Line 2705
    andi	$a7,$a7,0x1
    sll	$a7,$a7,0xb
    and	$a1,$a3,$a1
    or	$a1,$a1,$a7
    # Line 2706
    lbu	$a7,173($a0)
    li	$t0,-4097
    and	$a1,$a1,$t0
    andi	$a7,$a7,0x1
    sll	$a7,$a7,0xc
    or	$a1,$a1,$a7
    # Line 2707
    and	$t1,$a1,$t1
    or	$t1,$t1,$at
    # Line 2708
    lbu	$at,175($a0)
    and	$t1,$t1,$v0
    # Line 2709
    lui	$v0,0x1
    # Line 2708
    andi	$at,$at,0x1
    sll	$at,$at,0xe
    or	$t1,$t1,$at
    sw	$t1,104($a0)
    # Line 2709
    nor	$v0,$v0,$zero
    lw	$at,20($a6)
    and	$t1,$t1,$v0
    # Line 2712
    lui	$v0,0x80
    # Line 2709
    sltiu	$at,$at,1
    sll	$at,$at,0x10
    or	$t1,$t1,$at
    beqz	$v1,.L0dabc7f8
    sw	$t1,104($a0)
    # Line 2714
    beqz	$a2,.L0dabc838
    # Line 2717
    lui	$at,0x100
.L0dabc7e8:
    # Line 2721
    jr	$ra
    nop
.L0dabc7f0:
    # Line 2676
    jr	$ra
    nop
.L0dabc7f8:
    # Line 2712
    or	$v0,$t1,$v0
    # Line 2714
    sll	$v1,$t2,0x6
    # Line 2713
    li	$at,-33
    and	$at,$v0,$at
    # Line 2714
    and	$at,$t3,$at
    or	$at,$at,$v1
    # Line 2721
    jr	$ra
    # Line 2714
    sw	$at,104($a0)
.L0dabc818:
    # Line 2688
    lw	$a2,20($a0)
    sltu	$a2,$zero,$a2
    b	.L0dabc624
    sb	$a2,192($a0)
.L0dabc828:
    # Line 2670
    jr	$ra
    nop
.L0dabc830:
    # Line 2682
    jr	$ra
    nop
.L0dabc838:
    # Line 2717
    or	$at,$t1,$at
    # Line 2718
    ori	$at,$at,0x1000
    # Line 2721
    jr	$ra
    # Line 2718
    sw	$at,104($a0)
.end mgrTM_TexValidate

# Function: MakeTextureResident
# Declared: Line 2724 (Source lines: 2729-2755)
# Address: 0x0dabc848 - 0x0dabc9f4 (Size: 428 bytes, Frame: 240)
.ent MakeTextureResident
MakeTextureResident:
    # Line 2733
    move	$a5,$a2
    slt	$at,$a3,$a2
    # Line 2729
    addiu	$sp,$sp,-112
    sd	$s0,40($sp)
    sd	$s5,32($sp)
    sd	$s6,56($sp)
    sd	$s7,24($sp)
    sd	$s8,16($sp)
    sd	$s4,0($sp)
    move	$s4,$a0
    sd	$s1,8($sp)
    # Line 2733
    bnez	$at,.L0dabc9c0
    # Line 2729
    move	$s1,$a1
    sd	$s2,72($sp)
    sd	$s3,64($sp)
    sd	$ra,48($sp)
    # Line 2733
    sll	$s7,$a2,0x2
    sll	$s0,$a5,0x2
    addu	$s0,$s0,$s1
    addiu	$s6,$a3,1
    sll	$s6,$s6,0x2
    la	$s5,sub_0dac0000
    addu	$s6,$s6,$s1
    la	$s8,sub_0dac0000
    addiu	$s5,$s5,-15364
    b	.L0dabc8d8
    addiu	$s8,$s8,-19924
.L0dabc8b4:
    # Line 2750
    move	$a0,$s4
.L0dabc8b8:
    li	$a2,1
    bal mgrTM_DrawSetup
    move	$t9,$s5
.L0dabc8c4:
    # Line 2752
    lw	$at,28($s2)
    sw	$s4,40($at)
.L0dabc8cc:
    # Line 2733
    addiu	$s0,$s0,4
    beql	$s0,$s6,.L0dabc9a4
    ld	$s8,16($sp)
.L0dabc8d8:
    # Line 2734
    lw	$s2,20($s0)
    lw	$a1,28($s2)
    addu	$s3,$s7,$s1
    beqz	$a1,.L0dabc8cc
    sltu	$v0,$s3,$s0
    beqzl	$v0,.L0dabc934
    # Line 2741
    lbu	$a4,89($a1)
    # Line 2734
    lbu	$a4,186($s1)
    lbu	$v1,84($a1)
    beql	$v1,$a4,.L0dabc934
    # Line 2741
    lbu	$a4,89($a1)
    # Line 2737
    lbu	$at,85($a1)
    beqz	$at,.L0dabc9e0
.L0dabc90c:
    # Line 2740
    move	$a0,$s4
    move	$a2,$zero
    li	$a3,1
    bal mgrTM_MakeResident
    move	$t9,$s8
    # Line 2741
    lw	$v1,28($s2)
    lbu	$v0,186($s1)
    sb	$v0,84($v1)
    lw	$a1,28($s2)
    lbu	$a4,89($a1)
.L0dabc934:
    beqz	$a4,.L0dabc960
    # Line 2744
    li	$a3,1
    # Line 2745
    bne	$s0,$s3,.L0dabc8b8
    # Line 2750
    move	$a0,$s4
    # Line 2745
    lbu	$a0,84($a1)
    lbu	$at,186($s1)
    beql	$at,$a0,.L0dabc8b8
    # Line 2750
    move	$a0,$s4
    # Line 2749
    sb	$a0,186($s1)
    b	.L0dabc8b4
    lw	$a1,28($s2)
.L0dabc960:
    # Line 2744
    bne	$s0,$s3,.L0dabc974
    nop
    lbu	$v0,190($s1)
    beqz	$v0,.L0dabc9d8
    nop
.L0dabc974:
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    move	$a0,$s4
    move	$a4,$zero
    bal mgrTM_MakeResident
    li	$a2,1
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 2745
    move	$a0,$s4
    addiu	$t9,$t9,-24696
    bal mgrTM_process_level
    lw	$a1,28($s2)
    b	.L0dabc8c4
    nop
.L0dabc9a4:
    ld	$s7,24($sp)
    ld	$s5,32($sp)
    ld	$s0,40($sp)
    ld	$ra,48($sp)
    ld	$s6,56($sp)
    ld	$s3,64($sp)
    ld	$s2,72($sp)
.L0dabc9c0:
    # Line 2755
    ld	$s4,0($sp)
    # Line 2754
    li	$at,1
    sb	$at,193($s1)
    # Line 2755
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dabc9d8:
    b	.L0dabc974
    # Line 2744
    move	$a3,$zero
.L0dabc9e0:
    # Line 2739
    # lw $t9, -30712($gp) # &mgrTM_SaveData
    bal mgrTM_SaveData
    move	$a0,$s4
    b	.L0dabc90c
    lw	$a1,28($s2)
.end MakeTextureResident

# Function: mgrTM_SendTlMode
# Declared: Line 2758 (Source lines: 2761-2795)
# Address: 0x0dabc9f4 - 0x0dabcc34 (Size: 576 bytes, Frame: 48)
.globl mgrTM_SendTlMode
.ent mgrTM_SendTlMode
mgrTM_SendTlMode:
    # Line 2762
    lw	$a3,0($a1)
    # Line 2761
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 2762
    lbu	$at,181($a3)
    # Line 2761
    lui	$v0,0x14
    addiu	$v0,$v0,7332
    # Line 2762
    beqz	$at,.L0dabca1c
    # Line 2761
    addu	$gp,$t9,$v0
    # Line 2762
    lbu	$v1,182($a3)
    beqz	$v1,.L0dabcc2c
.L0dabca1c:
    # Line 2764
    move	$t0,$zero
.L0dabca20:
    lbu	$a5,186($a3)
    lbu	$a2,185($a3)
    lui	$a4,0x1
    # Line 2770
    lui	$v1,0x7
    # Line 2764
    beqz	$a2,.L0dabca54
    # Line 2770
    nor	$v1,$v1,$zero
    # Line 2764
    addu	$a4,$a0,$a4
    lw	$a4,-28164($a4)
    lw	$at,1164($a4)
    beq	$at,$a5,.L0dabca54
    nop
    # Line 2768
    sw	$a5,1164($a4)
    lbu	$a5,186($a3)
.L0dabca54:
    # Line 2769
    sw	$zero,0($sp)
    # Line 2770
    lw	$at,0($sp)
    # Line 2782
    li	$t1,-2049
    # Line 2770
    lbu	$v0,194($a3)
    and	$at,$at,$v1
    lui	$v1,0x3
    or	$at,$at,$v1
    # Line 2778
    li	$v1,-25
    # Line 2770
    beqz	$v0,.L0dabcc04
    sw	$at,0($sp)
    lbu	$a2,181($a3)
    beqz	$a2,.L0dabca90
    # Line 2774
    lw	$at,0($sp)
    ori	$at,$at,0x80
    sw	$at,0($sp)
.L0dabca90:
    # Line 2779
    lw	$a4,20($a1)
    li	$v0,-97
    # Line 2777
    lw	$a2,0($sp)
    # Line 2779
    lbu	$a6,167($a3)
    # Line 2777
    li	$at,-7
    and	$a2,$a2,$at
    # Line 2780
    li	$at,-1025
    # Line 2777
    lbu	$a7,166($a3)
    # Line 2779
    andi	$a6,$a6,0x3
    sll	$a6,$a6,0x5
    # Line 2777
    andi	$a7,$a7,0x3
    sll	$a7,$a7,0x1
    or	$a2,$a2,$a7
    sw	$a2,0($sp)
    # Line 2778
    andi	$a7,$a5,0x3
    sll	$a7,$a7,0x3
    and	$v1,$a2,$v1
    or	$v1,$v1,$a7
    # Line 2783
    li	$a7,-513
    # Line 2779
    and	$v0,$v1,$v0
    or	$v0,$v0,$a6
    # Line 2784
    li	$a6,-4097
    # Line 2779
    beqz	$a4,.L0dabcbd4
    sw	$v0,0($sp)
    # Line 2780
    move	$a1,$zero
.L0dabcaf4:
    # Line 2781
    lbu	$a2,183($a3)
    li	$v0,-257
    # Line 2780
    lw	$v1,0($sp)
    # Line 2781
    andi	$a2,$a2,0x1
    sll	$a2,$a2,0x8
    # Line 2780
    and	$v1,$v1,$at
    andi	$at,$a1,0x1
    sll	$at,$at,0xa
    or	$v1,$v1,$at
    # Line 2781
    and	$v0,$v1,$v0
    or	$v0,$v0,$a2
    # Line 2782
    beqz	$a4,.L0dabcbe4
    # Line 2781
    sw	$v0,0($sp)
    # Line 2782
    li	$a1,1
.L0dabcb2c:
    lw	$v0,0($sp)
    andi	$v1,$a1,0x1
    sll	$v1,$v1,0xb
    and	$v0,$v0,$t1
    or	$v0,$v0,$v1
    # Line 2783
    beqz	$a4,.L0dabcbf4
    # Line 2782
    sw	$v0,0($sp)
    # Line 2783
    li	$a1,1
.L0dabcb4c:
    # Line 2784
    lbu	$a5,179($a3)
    # Line 2783
    lw	$a2,0($sp)
    andi	$at,$a1,0x1
    sll	$at,$at,0x9
    and	$a2,$a2,$a7
    or	$a2,$a2,$at
    # Line 2784
    andi	$at,$a4,0x1
    sll	$at,$at,0xc
    and	$v1,$a2,$a6
    or	$v1,$v1,$at
    beqz	$a5,.L0dabcc14
    sw	$v1,0($sp)
    # Line 2787
    li	$at,8
    beq	$a5,$at,.L0dabcbb4
.L0dabcb84:
    # Line 2794
    li	$a4,1
    lw	$a2,0($sp)
    li	$a1,417
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    sd	$ra,16($sp)
    bal __glMgrasWrite
    lw	$a3,292($a3)
    # Line 2795
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dabcbb4:
    # Line 2790
    lw	$v1,0($sp)
    sd	$ra,16($sp)
    and	$v1,$v1,$t1
    sw	$v1,0($sp)
    # Line 2791
    and	$v0,$v1,$a6
    # Line 2792
    and	$at,$v0,$a7
    b	.L0dabcb84
    sw	$at,0($sp)
.L0dabcbd4:
    # Line 2779
    beqz	$t0,.L0dabcaf4
    # Line 2780
    move	$a1,$zero
    b	.L0dabcaf4
    li	$a1,1
.L0dabcbe4:
    # Line 2782
    bnez	$t0,.L0dabcb2c
    li	$a1,1
    b	.L0dabcb2c
    move	$a1,$zero
.L0dabcbf4:
    # Line 2783
    bnez	$t0,.L0dabcb4c
    li	$a1,1
    b	.L0dabcb4c
    move	$a1,$zero
.L0dabcc04:
    # Line 2776
    lw	$a2,0($sp)
    ori	$a2,$a2,0x4000
    b	.L0dabca90
    sw	$a2,0($sp)
.L0dabcc14:
    # Line 2786
    lw	$v0,0($sp)
    sd	$ra,16($sp)
    ori	$v0,$v0,0x1
    # Line 2787
    ori	$at,$v0,0x1000
    b	.L0dabcb84
    sw	$at,0($sp)
.L0dabcc2c:
    # Line 2764
    b	.L0dabca20
    li	$t0,1
.end mgrTM_SendTlMode

# Function: mgrTM_SendTexmode1
# Declared: Line 2798 (Source lines: 2801-2932)
# Address: 0x0dabcc34 - 0x0dabd16c (Size: 1336 bytes, Frame: 208)
.globl mgrTM_SendTexmode1
.ent mgrTM_SendTexmode1
mgrTM_SendTexmode1:
    # Line 2801
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    sd	$s6,8($sp)
    # Line 2804
    lui	$s6,0x1
    sd	$s3,0($sp)
    lw	$s3,__glCurrentContext
    sd	$s4,16($sp)
    # Line 2801
    move	$s4,$a0
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$gp,32($sp)
    lui	$at,0x14
    addiu	$at,$at,6756
    # Line 2804
    bnez	$a1,.L0dabcc9c
    # Line 2801
    addu	$gp,$t9,$at
    # Line 2804
    addu	$s1,$s6,$s4
    li	$v0,-1
    dsll	$v0,$v0,0x10
    ori	$v0,$v0,0x7438
    beq	$s4,$v0,.L0dabcc94
    lw	$a0,-29556($s1)
    beqz	$a0,.L0dabd110
    # Line 2807
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0dabcc94:
    # Line 2808
    b	.L0dabcca0
    move	$s0,$a0
.L0dabcc9c:
    addu	$s1,$s6,$s4
.L0dabcca0:
    # Line 2810
    sw	$zero,100($s0)
    lw	$v1,-30164($s1)
    # Line 2817
    li	$s5,1
    li	$a4,-25
    # Line 2810
    beqz	$v1,.L0dabcce0
    move	$a2,$zero
    lbu	$a3,192($s0)
    beqz	$a3,.L0dabcce4
    # Line 2815
    li	$at,3072
    # Line 2812
    li	$a2,1
    sw	$a2,100($s0)
    # Line 2813
    li	$at,2816
    lui	$a6,0x7
    ori	$a6,$a6,0x4080
    b	.L0dabccf0
    sw	$at,0($a6)
.L0dabcce0:
    # Line 2815
    li	$at,3072
.L0dabcce4:
    lui	$a6,0x7
    ori	$a6,$a6,0x4080
    sw	$at,0($a6)
.L0dabccf0:
    # Line 2817
    lbu	$a1,187($s0)
    # Line 2816
    li	$at,-7
    lw	$a3,-28324($s1)
    and	$a2,$a2,$at
    # Line 2817
    lbu	$a0,166($s0)
    # Line 2816
    andi	$a3,$a3,0x3
    sll	$a3,$a3,0x1
    or	$a2,$a2,$a3
    # Line 2817
    andi	$a3,$a0,0x3
    sll	$a3,$a3,0x3
    and	$a2,$a4,$a2
    or	$a2,$a2,$a3
    beqz	$a1,.L0dabcd38
    sw	$a2,100($s0)
    beq	$s5,$a0,.L0dabcfd0
    # Line 2820
    li	$at,3
    beq	$a0,$at,.L0dabd010
    # Line 2822
    andi	$a3,$a2,0x1f
.L0dabcd38:
    # Line 2825
    lw	$v0,-28084($s1)
    li	$at,-97
    and	$at,$a2,$at
    andi	$v0,$v0,0x3
    sll	$v0,$v0,0x5
    or	$at,$at,$v0
    sw	$at,100($s0)
    # Line 2827
    lw	$v0,-28164($s1)
    # Line 2824
    andi	$a1,$a2,0x1f
    # Line 2827
    lw	$v0,1172($v0)
    li	$v1,-385
    and	$at,$at,$v1
    andi	$v0,$v0,0x3
    sll	$v0,$v0,0x7
    or	$a2,$at,$v0
    sw	$a2,100($s0)
    # Line 2832
    move	$a0,$zero
    # Line 2827
    lw	$a3,3140($s3)
    # Line 2832
    lui	$a4,0x3
    ori	$a4,$a4,0xffff
    # Line 2827
    blez	$a3,.L0dabcd9c
    # Line 2824
    srl	$a1,$a1,0x3
    # Line 2827
    lw	$v0,3144($s3)
    beqz	$v0,.L0dabcff4
    # Line 2830
    lui	$at,0x8
.L0dabcd9c:
    # Line 2832
    lbu	$v1,-31776($s1)
    beqz	$v1,.L0dabcdbc
    # Line 2836
    lui	$a5,0xffff
    # Line 2832
    lw	$at,-26944($s1)
    and	$at,$at,$a4
    srl	$at,$at,0x11
    beqz	$at,.L0dabcf8c
.L0dabcdb8:
    # Line 2836
    lui	$a5,0xffff
.L0dabcdbc:
    ori	$a5,$a5,0xfff
    and	$a2,$a5,$a2
    # Line 2837
    beqz	$a1,.L0dabceb8
    # Line 2836
    sw	$a2,100($s0)
    # Line 2837
    beq	$s5,$a1,.L0dabcf40
    # Line 2886
    li	$a3,-3585
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x800
    sw	$a2,100($s0)
.L0dabcde0:
    # Line 2890
    and	$a2,$a5,$a2
.L0dabcde4:
    beqz	$a0,.L0dabce10
    sw	$a2,100($s0)
    # Line 2892
    li	$at,6406
    beq	$a0,$at,.L0dabd000
    li	$v0,0x8049
    beq	$a0,$v0,.L0dabcfb0
    li	$v1,6410
    beq	$a0,$v1,.L0dabd034
    and	$a7,$a5,$a2
    # Line 2906
    ori	$a2,$a7,0xe000
    sw	$a2,100($s0)
.L0dabce10:
    # Line 2907
    lw	$a3,-26944($s1)
    lui	$a0,0x7
    nor	$a0,$a0,$zero
    and	$a3,$a3,$a4
    srl	$a3,$a3,0x11
    beqz	$a3,.L0dabcf08
    and	$a0,$a2,$a0
    lbu	$a3,3105($s3)
    ld	$s3,0($sp)
    # Line 2911
    or	$a2,$s6,$a0
    # Line 2907
    beqz	$a3,.L0dabcf94
    ld	$s6,8($sp)
    sd	$ra,56($sp)
    # Line 2911
    sw	$a2,100($s0)
.L0dabce48:
    # Line 2916
    move	$a0,$s4
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    li	$a1,273
    bal __glMgrasWrite
    lw	$a3,212($a3)
    li	$a2,24324
    ld	$s4,16($sp)
    ld	$ra,56($sp)
    lbu	$at,194($s0)
    lui	$a0,0x7
    beqz	$at,.L0dabd040
    ori	$a0,$a0,0x4080
    # Line 2919
    lh	$a1,162($s0)
    beql	$a1,$s5,.L0dabd054
    # Line 2925
    lwc1	$f3,120($s0)
    beqz	$a1,.L0dabcf74
    # Line 2928
    mtc1	$zero,$f0
    ld	$s0,24($sp)
    sw	$a2,0($a0)
    swc1	$f0,0($a0)
.L0dabcea0:
    ld	$gp,32($sp)
    # Line 2931
    sw	$s5,-28088($s1)
    # Line 2932
    ld	$s1,40($sp)
    ld	$s5,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabceb8:
    # Line 2839
    lbu	$a3,-25423($s1)
    beqz	$a3,.L0dabd074
    li	$a7,-3585
    # Line 2844
    lbu	$a7,195($s0)
    beql	$a7,$s5,.L0dabd0ec
    # Line 2848
    li	$a1,1
    # Line 2844
    beqz	$a7,.L0dabd0c0
    li	$at,2
    bnel	$a7,$at,.L0dabcde4
    # Line 2890
    and	$a2,$a5,$a2
    # Line 2859
    li	$v0,6410
    beq	$a0,$v0,.L0dabd13c
    li	$v1,0x8049
    beq	$a0,$v1,.L0dabd13c
    # Line 2865
    li	$a1,3
    # Line 2864
    li	$a3,-3585
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x600
    b	.L0dabcde0
    sw	$a2,100($s0)
.L0dabcf08:
    # Line 2912
    lbu	$at,167($s0)
    ld	$s6,8($sp)
    slti	$at,$at,2
    bnez	$at,.L0dabcf24
    ld	$s3,0($sp)
    # Line 2914
    b	.L0dabcf28
    li	$a1,1
.L0dabcf24:
    li	$a1,4
.L0dabcf28:
    sd	$ra,56($sp)
    andi	$a2,$a1,0x7
    sll	$a2,$a2,0x10
    or	$a2,$a2,$a0
    b	.L0dabce48
    sw	$a2,100($s0)
.L0dabcf40:
    # Line 2871
    lbu	$a3,-25423($s1)
    beqz	$a3,.L0dabd098
    # Line 2877
    li	$at,6410
    beq	$a0,$at,.L0dabd064
    li	$v0,0x8049
    beq	$a0,$v0,.L0dabd068
    # Line 2878
    li	$at,-3585
    # Line 2881
    li	$a1,3
    # Line 2880
    li	$a3,-3585
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x400
    b	.L0dabcde0
    sw	$a2,100($s0)
.L0dabcf74:
    # Line 2927
    lwc1	$f1,120($s0)
    ld	$s0,24($sp)
    sw	$a2,0($a0)
    neg.s	$f1,$f1
    b	.L0dabcea0
    swc1	$f1,0($a0)
.L0dabcf8c:
    b	.L0dabcdb8
    # Line 2834
    lw	$a0,-31788($s1)
.L0dabcf94:
    sd	$ra,56($sp)
    ld	$s6,8($sp)
    ld	$s3,0($sp)
    # Line 2912
    lui	$a2,0x4
    or	$a2,$a0,$a2
    b	.L0dabce48
    sw	$a2,100($s0)
.L0dabcfb0:
    # Line 2897
    lbu	$a3,-25423($s1)
    beqz	$a3,.L0dabce10
    li	$a7,2
    beq	$a1,$a7,.L0dabd104
    and	$a7,$a5,$a2
    # Line 2900
    ori	$a2,$a7,0x9000
    b	.L0dabce10
    sw	$a2,100($s0)
.L0dabcfd0:
    # Line 2820
    andi	$a3,$a2,0x1f
    srl	$a3,$a3,0x3
    subu	$a3,$a3,$a1
    andi	$a3,$a3,0x3
    sll	$a3,$a3,0x3
    and	$a2,$a4,$a2
    or	$a2,$a2,$a3
    b	.L0dabcd38
    sw	$a2,100($s0)
.L0dabcff4:
    # Line 2830
    or	$a2,$a2,$at
    b	.L0dabcd9c
    sw	$a2,100($s0)
.L0dabd000:
    # Line 2894
    and	$a2,$a5,$a2
    ori	$a2,$a2,0x1000
    # Line 2895
    b	.L0dabce10
    # Line 2894
    sw	$a2,100($s0)
.L0dabd010:
    # Line 2822
    srl	$a3,$a3,0x3
    subu	$a3,$a3,$a1
    addiu	$a3,$a3,-1
    andi	$a3,$a3,0x3
    sll	$a3,$a3,0x3
    and	$a2,$a4,$a2
    or	$a2,$a2,$a3
    b	.L0dabcd38
    sw	$a2,100($s0)
.L0dabd034:
    # Line 2903
    ori	$a2,$a7,0x9000
    # Line 2904
    b	.L0dabce10
    # Line 2903
    sw	$a2,100($s0)
.L0dabd040:
    ld	$s0,24($sp)
    # Line 2919
    mtc1	$zero,$f2
    sw	$a2,0($a0)
    b	.L0dabcea0
    swc1	$f2,0($a0)
.L0dabd054:
    ld	$s0,24($sp)
    # Line 2925
    sw	$a2,0($a0)
    b	.L0dabcea0
    swc1	$f3,0($a0)
.L0dabd064:
    # Line 2878
    li	$at,-3585
.L0dabd068:
    and	$a2,$a2,$at
    b	.L0dabcde0
    sw	$a2,100($s0)
.L0dabd074:
    # Line 2839
    lui	$at,0xf
    ori	$at,$at,0xffff
    and	$at,$a2,$at
    srl	$at,$at,0x13
    beqz	$at,.L0dabd154
    and	$a7,$a2,$a7
    # Line 2841
    move	$a2,$a7
    b	.L0dabcde0
    sw	$a7,100($s0)
.L0dabd098:
    # Line 2871
    li	$a7,-3585
    lui	$at,0xf
    ori	$at,$at,0xffff
    and	$at,$a2,$at
    srl	$at,$at,0x13
    beqz	$at,.L0dabd160
    and	$a7,$a2,$a7
    # Line 2873
    move	$a2,$a7
    b	.L0dabcde0
    sw	$a7,100($s0)
.L0dabd0c0:
    # Line 2851
    li	$v0,6410
    beq	$a0,$v0,.L0dabd12c
    li	$v1,0x8049
    beq	$a0,$v1,.L0dabd130
    # Line 2852
    li	$a3,-3585
    # Line 2855
    li	$a1,2
    # Line 2854
    li	$a3,-3585
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x400
    b	.L0dabcde0
    sw	$a2,100($s0)
.L0dabd0ec:
    # Line 2846
    li	$a3,-3585
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x200
    # Line 2847
    ori	$a2,$a2,0x6
    # Line 2849
    b	.L0dabcde0
    # Line 2847
    sw	$a2,100($s0)
.L0dabd104:
    # Line 2899
    ori	$a2,$a7,0xe000
    b	.L0dabce10
    sw	$a2,100($s0)
.L0dabd110:
    sd	$ra,56($sp)
    # Line 2807
    li	$a0,0x8bc8
    bal mgrTM_RefreshDim
    addu	$a0,$s4,$a0
    lw	$a0,-29556($s1)
    b	.L0dabcc94
    ld	$ra,56($sp)
.L0dabd12c:
    # Line 2852
    li	$a3,-3585
.L0dabd130:
    and	$a2,$a2,$a3
    b	.L0dabcde0
    sw	$a2,100($s0)
.L0dabd13c:
    # Line 2861
    li	$a1,1
    # Line 2860
    li	$a3,-3585
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x200
    # Line 2861
    b	.L0dabcde0
    # Line 2860
    sw	$a2,100($s0)
.L0dabd154:
    # Line 2842
    ori	$a2,$a7,0x400
    b	.L0dabcde0
    sw	$a2,100($s0)
.L0dabd160:
    # Line 2874
    ori	$a2,$a7,0x400
    b	.L0dabcde0
    sw	$a2,100($s0)
.end mgrTM_SendTexmode1

# Function: mgrTM_SendTlTable
# Declared: Line 2935 (Source lines: 2939-2975)
# Address: 0x0dabd16c - 0x0dabd348 (Size: 476 bytes, Frame: 240)
.globl mgrTM_SendTlTable
.ent mgrTM_SendTlTable
mgrTM_SendTlTable:
    # Line 2939
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s2,8($sp)
    move	$s2,$a0
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$gp,40($sp)
    lbu	$at,194($a1)
    lui	$v0,0x14
    addiu	$v0,$v0,5420
    beqz	$at,.L0dabd334
    addu	$gp,$t9,$v0
    lbu	$v1,181($s1)
    beqz	$v1,.L0dabd334
    sd	$s3,56($sp)
    sd	$s4,64($sp)
    sd	$ra,48($sp)
    # Line 2950
    li	$s3,9
.L0dabd1b8:
    # Line 2954
    li	$a4,1
    move	$a2,$s0
    li	$a1,419
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 2952
    la	$s4,SYMBOL_LOCATION
    # Line 2954
    move	$a0,$s2
    bal __glMgrasWrite
    lw	$a3,300($s4)
    ld	$ra,48($sp)
    # Line 2955
    li	$a2,0xec10
    lw	$a7,304($s4)
    move	$t1,$s0
    lui	$a1,0x7
    addiu	$a4,$s3,1
    slt	$a3,$s3,$s0
    xori	$a3,$a3,0x1
    beqz	$a3,.L0dabd254
    sd	$a3,16($sp)
    ori	$a1,$a1,0x4080
    lw	$a5,300($s4)
    li	$t0,420
    sll	$a0,$t1,0x2
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s1
    addu	$a0,$a0,$s1
.L0dabd21c:
    # Line 2956
    lw	$a6,20($a0)
    # Line 2961
    lw	$a3,28($a6)
    # Line 2957
    sw	$a2,0($a1)
    # Line 2958
    sw	$a5,0($a1)
    # Line 2959
    sw	$a7,0($a1)
    # Line 2960
    sw	$t0,0($a1)
    # Line 2961
    lbu	$at,58($a6)
    lh	$a3,74($a3)
    # Line 2955
    addiu	$a0,$a0,4
    # Line 2961
    sll	$at,$at,0x8
    or	$a3,$a3,$at
    # Line 2955
    bne	$a0,$a4,.L0dabd21c
    # Line 2961
    sw	$a3,0($a1)
    # Line 2955
    sw	$a6,0($sp)
.L0dabd254:
    # Line 2964
    lbu	$at,179($s1)
    beqz	$at,.L0dabd274
    lw	$v0,0($sp)
    lw	$v0,20($v0)
    bnez	$v0,.L0dabd278
    # Line 2965
    move	$a0,$s2
    # Line 2964
    lbu	$v1,181($s1)
    beqz	$v1,.L0dabd314
.L0dabd274:
    # Line 2965
    move	$a0,$s2
.L0dabd278:
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,300($s4)
    move	$a2,$s0
    bal __glMgrasWrite
    li	$a1,419
    ld	$ra,48($sp)
    # Line 2966
    li	$a2,0xec10
    lw	$a5,300($s4)
    ld	$s2,8($sp)
    addiu	$a4,$s3,1
    lui	$a1,0x7
    move	$t1,$s0
    ld	$a3,16($sp)
    sll	$a0,$t1,0x2
    beqz	$a3,.L0dabd314
    sll	$a4,$a4,0x2
    ori	$a1,$a1,0x4080
    ld	$s3,56($sp)
    ld	$s0,32($sp)
    li	$a7,421
    lw	$a6,308($s4)
    ld	$s4,64($sp)
    addu	$a0,$a0,$s1
    addu	$a4,$a4,$s1
    ld	$s1,24($sp)
.L0dabd2e0:
    # Line 2967
    lw	$a3,20($a0)
    # Line 2972
    lw	$at,28($a3)
    # Line 2968
    sw	$a2,0($a1)
    # Line 2969
    sw	$a5,0($a1)
    # Line 2970
    sw	$a6,0($a1)
    # Line 2971
    sw	$a7,0($a1)
    # Line 2972
    lh	$a3,56($a3)
    lh	$at,74($at)
    # Line 2966
    addiu	$a0,$a0,4
    # Line 2972
    addu	$a3,$a3,$at
    andi	$a3,$a3,0xff
    # Line 2966
    bne	$a0,$a4,.L0dabd2e0
    # Line 2972
    sw	$a3,0($a1)
.L0dabd314:
    ld	$gp,40($sp)
    # Line 2975
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    ld	$s3,56($sp)
    ld	$s4,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dabd334:
    sd	$s4,64($sp)
    sd	$ra,48($sp)
    sd	$s3,56($sp)
    b	.L0dabd1b8
    # Line 2952
    move	$s3,$s0
.end mgrTM_SendTlTable

# Function: mgrTM_RemoveTex
# Declared: Line 2978 (Source lines: 2981-2995)
# Address: 0x0dabd348 - 0x0dabd3e8 (Size: 160 bytes, Frame: 192)
.globl mgrTM_RemoveTex
.ent mgrTM_RemoveTex
mgrTM_RemoveTex:
    # Line 2981
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s4,24($sp)
    move	$s4,$a0
    sd	$s2,40($sp)
    move	$s2,$a1
    sd	$s1,8($sp)
    addiu	$s1,$a1,56
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$gp,0($sp)
    lui	$at,0x14
    addiu	$at,$at,4944
    b	.L0dabd38c
    addu	$gp,$t9,$at
.L0dabd384:
    # Line 2985
    beql	$s0,$s1,.L0dabd3b4
    ld	$gp,0($sp)
.L0dabd38c:
    # Line 2986
    lw	$a4,20($s0)
    beqz	$a4,.L0dabd384
    # Line 2985
    addiu	$s0,$s0,4
    # Line 2987
    # lw $t9, -30716($gp) # &mgrTM_RemoveLev
    move	$a0,$s4
    move	$a1,$s2
    bal mgrTM_RemoveLev
    lbu	$a2,63($a4)
    b	.L0dabd384
    nop
.L0dabd3b4:
    # Line 2995
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    # Line 2994
    sw	$zero,76($s2)
    # Line 2993
    sb	$zero,185($s2)
    # Line 2992
    sb	$zero,183($s2)
    # Line 2991
    sb	$zero,180($s2)
    # Line 2990
    sb	$zero,192($s2)
    # Line 2989
    sh	$zero,160($s2)
    # Line 2995
    ld	$ra,32($sp)
    ld	$s2,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end mgrTM_RemoveTex

# Function: mgrTM_RemoveLev
# Declared: Line 2998 (Source lines: 3002-3051)
# Address: 0x0dabd3e8 - 0x0dabd6dc (Size: 756 bytes, Frame: 224)
.globl mgrTM_RemoveLev
.ent mgrTM_RemoveLev
mgrTM_RemoveLev:
    # Line 3002
    addiu	$sp,$sp,-96
    sd	$s1,0($sp)
    sd	$s3,32($sp)
    move	$s3,$a0
    sd	$gp,24($sp)
    lui	$at,0x14
    sd	$s0,8($sp)
    move	$s0,$a1
    addiu	$at,$at,4784
    sd	$s4,16($sp)
    # Line 3008
    sll	$s4,$a2,0x2
    addu	$s4,$s4,$a1
    lw	$a4,20($s4)
    # Line 3002
    addu	$gp,$t9,$at
    # Line 3013
    move	$a0,$s0
    # Line 3008
    beqz	$a4,.L0dabd5fc
    move	$s1,$a4
    # Line 3010
    lw	$a1,16($s0)
    sd	$s2,48($sp)
    beqz	$a1,.L0dabd530
    lw	$s2,28($a4)
    bne	$a1,$s2,.L0dabd530
    nop
    # Line 3012
    sw	$zero,28($a4)
    # Line 3013
    move	$a3,$zero
    lw	$a1,16($s0)
    # Line 3015
    li	$v1,14
    b	.L0dabd474
    # Line 3013
    move	$s2,$a1
.L0dabd45c:
    # Line 3014
    move	$a4,$zero
.L0dabd460:
    bnez	$a4,.L0dabd494
    # Line 3013
    addiu	$at,$s0,56
    addiu	$a0,$a0,4
    beq	$at,$a0,.L0dabd494
    addiu	$a3,$a3,1
.L0dabd474:
    # Line 3014
    lw	$a4,20($a0)
    beqz	$a4,.L0dabd45c
    move	$s1,$a4
    lw	$v0,28($a4)
    bne	$v0,$s2,.L0dabd45c
    li	$a4,1
    b	.L0dabd460
    nop
.L0dabd494:
    # Line 3015
    beq	$a3,$v1,.L0dabd618
    # Line 3016
    li	$a3,1
    # Line 3027
    sw	$s1,4($a1)
    ld	$s2,48($sp)
.L0dabd4a4:
    # Line 3028
    lw	$s1,20($s4)
.L0dabd4a8:
    # Line 3043
    move	$a0,$s0
.L0dabd4ac:
    ld	$s2,48($sp)
    sw	$zero,76($s0)
    sw	$zero,20($s4)
    lw	$a1,20($a0)
.L0dabd4bc:
    # Line 3044
    addiu	$a2,$s0,56
    # Line 3043
    bnez	$a1,.L0dabd528
    # Line 3044
    addiu	$a0,$a0,4
    bnel	$a2,$a0,.L0dabd4bc
    # Line 3043
    lw	$a1,20($a0)
.L0dabd4d0:
    # Line 3047
    lui	$a0,0x1
    addu	$a0,$s3,$a0
    lw	$a0,-28164($a0)
    lw	$at,488($a0)
    bnel	$at,$s1,.L0dabd4f4
    # Line 3049
    lw	$t9,12($s3)
    sd	$ra,40($sp)
    # Line 3048
    sw	$zero,488($a0)
    # Line 3049
    lw	$t9,12($s3)
.L0dabd4f4:
    move	$a0,$s3
    sd	$ra,40($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$gp,24($sp)
    # Line 3050
    sb	$zero,192($s0)
    # Line 3051
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$ra,40($sp)
    ld	$s3,32($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dabd528:
    # Line 3046
    b	.L0dabd4d0
    sw	$a1,76($s0)
.L0dabd530:
    # Line 3028
    beqz	$s2,.L0dabd4ac
    # Line 3043
    move	$a0,$s0
    # Line 3032
    li	$a3,1
    move	$a2,$zero
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s2
    sd	$ra,40($sp)
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    move	$a0,$s3
    # Line 3033
    move	$a0,$s3
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s2
    move	$a2,$zero
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    move	$a3,$zero
    lbu	$at,85($s2)
    beqz	$at,.L0dabd594
    # Line 3035
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s3
    move	$a1,$s2
    addiu	$t9,$t9,-5144
    bal mgrTM_UnlockPages
    li	$a2,1
.L0dabd594:
    # Line 3036
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s3
    addiu	$t9,$t9,-9116
    bal mgrTM_SaveData
    lw	$a1,0($s2)
    # lw $t9, -32724($gp) # &sub_0dac0000
    sw	$v0,0($s2)
    # Line 3037
    move	$a0,$s2
    # Line 3036
    addiu	$t9,$t9,-10532
    # Line 3037
    bal mgrTM_RemoveLev
    move	$a1,$zero
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 3038
    move	$a0,$s2
    addiu	$t9,$t9,-10532
    bal mgrTM_RemoveLev
    li	$a1,1
    # Line 3039
    lw	$t9,12($s3)
    move	$a0,$s3
    jal	sub_0dac0000
    move	$a1,$s2
    # Line 3040
    lhu	$at,48($s1)
    lhu	$ra,160($s0)
    subu	$ra,$ra,$at
    sh	$ra,160($s0)
    b	.L0dabd4a8
    ld	$ra,40($sp)
.L0dabd5fc:
    ld	$gp,24($sp)
    # Line 3009
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s3,32($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dabd618:
    # Line 3016
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a2,$zero
    sd	$ra,40($sp)
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    move	$a0,$s3
    # Line 3017
    move	$a0,$s3
    # lw $t9, -32724($gp) # &sub_0dac0000
    lw	$a1,16($s0)
    move	$a2,$zero
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    move	$a3,$zero
    lbu	$at,85($s2)
    beqz	$at,.L0dabd66c
    # Line 3019
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s3
    li	$a2,1
    addiu	$t9,$t9,-5144
    bal mgrTM_UnlockPages
    lw	$a1,16($s0)
.L0dabd66c:
    # Line 3020
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s3
    lw	$a1,16($s0)
    addiu	$t9,$t9,-9116
    bal mgrTM_SaveData
    lw	$a1,0($a1)
    # lw $t9, -32724($gp) # &sub_0dac0000
    sw	$v0,0($s2)
    # Line 3021
    move	$a0,$s2
    # Line 3020
    addiu	$t9,$t9,-10532
    # Line 3021
    bal mgrTM_RemoveLev
    move	$a1,$zero
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 3022
    move	$a0,$s2
    addiu	$t9,$t9,-10532
    bal mgrTM_RemoveLev
    li	$a1,1
    # Line 3023
    lw	$t9,12($s3)
    move	$a0,$s3
    lw	$a1,16($s0)
    jal	sub_0dac0000
    ld	$s2,48($sp)
    # Line 3025
    lhu	$ra,160($s0)
    # Line 3024
    sw	$zero,16($s0)
    # Line 3025
    addiu	$ra,$ra,-1
    sh	$ra,160($s0)
    b	.L0dabd4a4
    ld	$ra,40($sp)
.end mgrTM_RemoveLev

# Function: RemoveUsed
# Declared: Line 3054 (Source lines: 3057-3063)
# Address: 0x0dabd6dc - 0x0dabd720 (Size: 68 bytes, Frame: 0)
.ent RemoveUsed
RemoveUsed:
    # Line 3057
    beqz	$a0,.L0dabd718
    sll	$a4,$a1,0x2
    addu	$a3,$a4,$a0
    lw	$at,24($a3)
    beqz	$at,.L0dabd718
    nop
    # Line 3059
    lw	$v1,16($a3)
    lw	$v0,8($a3)
    addu	$v1,$v1,$a4
    sw	$v0,8($v1)
    lw	$a0,8($a3)
    beqz	$a0,.L0dabd718
    # Line 3061
    addu	$at,$a4,$a0
    lw	$a2,16($a3)
    sw	$a2,16($at)
.L0dabd718:
    # Line 3063
    jr	$ra
    nop
.end RemoveUsed

# Function: mgrTM_SaveData
# Declared: Line 3066 (Source lines: 3069-3086)
# Address: 0x0dabd720 - 0x0dabd840 (Size: 288 bytes, Frame: 224)
.globl mgrTM_SaveData
.ent mgrTM_SaveData
mgrTM_SaveData:
    # Line 3074
    move	$a2,$zero
    # Line 3069
    addiu	$sp,$sp,-96
    sd	$s3,32($sp)
    sd	$a1,0($sp)
    # Line 3074
    move	$a1,$zero
    sd	$gp,24($sp)
    # Line 3069
    lui	$at,0x14
    addiu	$at,$at,3960
    addu	$gp,$t9,$at
    # Line 3074
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    sd	$s1,16($sp)
    sd	$ra,8($sp)
    bal mgrTM_VidTexWait
    # Line 3069
    move	$s1,$a0
    # Line 3074
    lui	$s3,0x1
    addu	$s3,$s1,$s3
    lw	$v0,-28164($s3)
    lhu	$v0,1236($v0)
    bnez	$v0,.L0dabd820
    # Line 3085
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
    sd	$s0,40($sp)
    sd	$s5,56($sp)
    # Line 3074
    li	$s5,240
    sd	$s4,48($sp)
    li	$s4,1
    sd	$s2,64($sp)
    b	.L0dabd79c
    li	$s2,48
.L0dabd790:
    # Line 3077
    addiu	$s2,$s2,48
.L0dabd794:
    beq	$s5,$s2,.L0dabd7f8
    # Line 3082
    sh	$s4,1236($a3)
.L0dabd79c:
    # Line 3079
    lw	$a3,-28164($s3)
    addu	$a0,$s2,$a3
    lw	$s0,8($a0)
    beql	$s0,$a0,.L0dabd794
    # Line 3077
    addiu	$s2,$s2,48
    b	.L0dabd7c8
    # Line 3079
    lw	$a1,24($s0)
.L0dabd7b8:
    lw	$s0,8($s0)
.L0dabd7bc:
    beq	$s0,$a0,.L0dabd790
    nop
    lw	$a1,24($s0)
.L0dabd7c8:
    beqzl	$a1,.L0dabd7bc
    lw	$s0,8($s0)
    lbu	$at,85($a1)
    bnezl	$at,.L0dabd7bc
    lw	$s0,8($s0)
    # lw $t9, -32724($gp) # &sub_0dac0000
    addiu	$t9,$t9,-10176
    # Line 3081
    bal mgrTM_SaveData
    move	$a0,$s1
    lw	$a3,-28164($s3)
    b	.L0dabd7b8
    addu	$a0,$s2,$a3
.L0dabd7f8:
    ld	$s0,40($sp)
    ld	$s2,64($sp)
    ld	$s1,16($sp)
    ld	$s5,56($sp)
    ld	$s4,48($sp)
    ld	$ra,8($sp)
    ld	$s3,32($sp)
.L0dabd814:
    ld	$gp,24($sp)
    # Line 3086
    jr	$ra
    addiu	$sp,$sp,96
.L0dabd820:
    # Line 3085
    move	$a0,$s1
    ld	$a1,0($sp)
    addiu	$t9,$t9,-10176
    bal mgrTM_SaveData
    ld	$s3,32($sp)
    ld	$s1,16($sp)
    b	.L0dabd814
    ld	$ra,8($sp)
.end mgrTM_SaveData

# Function: mgrTM_DoSaveData
# Declared: Line 3089 (Source lines: 3092-3129)
# Address: 0x0dabd840 - 0x0dabda38 (Size: 504 bytes, Frame: 208)
.ent mgrTM_DoSaveData
mgrTM_DoSaveData:
    # Line 3096
    move	$a4,$zero
    li	$a2,0xd6d6
    # Line 3092
    addiu	$sp,$sp,-80
    sd	$s2,48($sp)
    move	$s2,$a1
    # Line 3096
    li	$a1,385
    sd	$ra,8($sp)
    sd	$s0,40($sp)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    sd	$s8,32($sp)
    # Line 3093
    lui	$s8,0x1
    sd	$s1,16($sp)
    # Line 3092
    move	$s1,$a0
    # Line 3093
    addu	$s8,$s1,$s8
    lw	$s0,-28164($s8)
    sd	$s3,0($sp)
    # Line 3092
    la	$s3,SYMBOL_LOCATION
    sd	$s7,24($sp)
    # Line 3094
    lw	$s7,4($s2)
    # Line 3096
    lw	$a3,220($s3)
    bal __glMgrasWrite
    # Line 3094
    lw	$s7,0($s7)
    # Line 3097
    move	$a0,$s1
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,228($s3)
    move	$a2,$zero
    bal __glMgrasWrite
    li	$a1,387
    # Line 3098
    move	$a0,$s1
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,264($s3)
    lui	$a2,0x8
    bal __glMgrasWrite
    li	$a1,396
    lw	$at,1160($s0)
    beqz	$at,.L0dabd8f8
    # Line 3101
    move	$a0,$s1
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,256($s3)
    move	$a2,$zero
    bal __glMgrasWrite
    li	$a1,394
    # Line 3102
    sw	$zero,1160($s0)
.L0dabd8f8:
    lbu	$v0,185($s7)
    lw	$a6,1164($s0)
    beqz	$v0,.L0dabd930
    ld	$s7,24($sp)
    lbu	$a0,84($s2)
    bne	$a0,$a6,.L0dabd920
    ld	$s7,24($sp)
    # Line 3107
    xori	$a6,$a0,0x1
    sw	$a6,1164($s0)
    lbu	$a0,84($s2)
.L0dabd920:
    lw	$v1,1172($s0)
    beql	$v1,$a0,.L0dabd934
    # Line 3112
    move	$a0,$s1
    # Line 3109
    sw	$a0,1172($s0)
.L0dabd930:
    # Line 3112
    move	$a0,$s1
.L0dabd934:
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,292($s3)
    sll	$a2,$a6,0x3
    bal __glMgrasWrite
    li	$a1,417
    # Line 3114
    move	$a0,$s1
    move	$a4,$zero
    lw	$a3,212($s3)
    li	$a1,273
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lbu	$a5,82($s2)
    lw	$a6,1172($s0)
    lw	$a2,-28084($s8)
    sll	$a5,$a5,0x3
    sll	$a6,$a6,0x7
    sll	$a2,$a2,0x5
    or	$a2,$a2,$a6
    bal __glMgrasWrite
    or	$a2,$a2,$a5
    # Line 3117
    move	$a0,$s1
    move	$a4,$zero
    lw	$a3,216($s3)
    li	$a1,384
    ld	$s8,32($sp)
    lui	$a5,0x1
    lbu	$a2,83($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    ori	$a5,$a5,0x1800
    sll	$a2,$a2,0x2
    bal __glMgrasWrite
    or	$a2,$a2,$a5
    lw	$at,1116($s0)
    beqz	$at,.L0dabda00
    ld	$s3,0($sp)
    # Line 3121
    lw	$v0,64($s2)
.L0dabd9c4:
    beqz	$v0,.L0dabda18
    # Line 3124
    nop	# was lw $t9, -30660($gp) # &mgrTM_SR_TexRead
.L0dabd9cc:
    move	$a0,$s1
    bal mgrTM_SR_TexRead
    move	$a1,$s2
    # Line 3126
    sw	$zero,484($s0)
    # Line 3127
    sw	$zero,488($s0)
    # Line 3129
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    # Line 3128
    li	$v1,1
    # Line 3129
    ld	$ra,8($sp)
    # Line 3128
    sb	$v1,85($s2)
    # Line 3129
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabda00:
    # Line 3121
    # lw $t9, -32724($gp) # &sub_0dac0000
    addiu	$t9,$t9,-4836
    bal mgrTM_UnlockPages
    move	$a0,$s1
    b	.L0dabd9c4
    lw	$v0,64($s2)
.L0dabda18:
    # Line 3123
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s1
    move	$a1,$s2
    addiu	$t9,$t9,-5868
    bal mgrTM_UnlockPages
    li	$a2,1
    b	.L0dabd9cc
    # Line 3124
    nop	# was lw $t9, -30660($gp) # &mgrTM_SR_TexRead
.end mgrTM_DoSaveData

# Function: RestoreData
# Declared: Line 3132 (Source lines: 3135-3178)
# Address: 0x0dabda38 - 0x0dabdc64 (Size: 556 bytes, Frame: 208)
.ent RestoreData
RestoreData:
    # Line 3135
    addiu	$sp,$sp,-80
    sd	$ra,56($sp)
    sd	$s0,40($sp)
    move	$s0,$a0
    sd	$s2,24($sp)
    sd	$s7,32($sp)
    # Line 3137
    lui	$at,0x1
    addu	$at,$a0,$at
    sd	$at,8($sp)
    sd	$s3,16($sp)
    sd	$s1,48($sp)
    lw	$s1,-28164($at)
    # Line 3138
    lw	$s3,24($a1)
    # Line 3139
    lw	$at,-28072($at)
    lw	$v0,1228($s1)
    lw	$s7,4($s3)
    # Line 3135
    move	$s2,$a1
    # Line 3139
    bne	$at,$v0,.L0dabdbcc
    lw	$s7,0($s7)
.L0dabda84:
    # Line 3154
    move	$a4,$zero
    li	$a1,417
    # Line 3147
    la	$a3,SYMBOL_LOCATION
    # Line 3154
    move	$a0,$s0
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,292($a3)
    # Line 3152
    lbu	$a2,83($s3)
    li	$v0,-97
    # Line 3151
    li	$v1,-25
    # Line 3152
    andi	$a2,$a2,0x3
    # Line 3151
    lbu	$a6,84($s3)
    # Line 3152
    sll	$a2,$a2,0x5
    # Line 3150
    li	$t0,-7
    # Line 3151
    andi	$a6,$a6,0x3
    # Line 3150
    lbu	$a7,82($s3)
    # Line 3149
    sw	$zero,0($sp)
    # Line 3151
    sll	$a6,$a6,0x3
    # Line 3150
    lw	$a5,0($sp)
    andi	$a7,$a7,0x3
    sll	$a7,$a7,0x1
    and	$a5,$a5,$t0
    or	$a5,$a5,$a7
    # Line 3151
    and	$v1,$a5,$v1
    or	$v1,$v1,$a6
    sw	$v1,0($sp)
    # Line 3152
    and	$v0,$v1,$v0
    or	$v0,$v0,$a2
    # Line 3153
    ori	$a2,$v0,0x4000
    # Line 3154
    bal __glMgrasWrite
    # Line 3153
    sw	$a2,0($sp)
    # Line 3154
    lbu	$at,185($s7)
    beqz	$at,.L0dabdb28
    ld	$s7,32($sp)
    lbu	$a6,84($s3)
    lw	$v0,1164($s1)
    beq	$v0,$a6,.L0dabdb20
    ld	$s7,32($sp)
    # Line 3158
    sw	$a6,1164($s1)
    lbu	$a6,84($s3)
.L0dabdb20:
    lw	$v1,1172($s1)
    beq	$v1,$a6,.L0dabdbf4
.L0dabdb28:
    # Line 3167
    move	$a0,$s0
.L0dabdb2c:
    li	$a4,1
    move	$a2,$zero
    li	$a1,419
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    ld	$s3,16($sp)
    bal __glMgrasWrite
    lw	$a3,300($a3)
    # Line 3173
    li	$a4,1
    li	$a2,3424
    li	$a1,418
    # Line 3171
    li	$a7,420
    la	$t1,SYMBOL_LOCATION
    # Line 3168
    li	$t2,0xec10
    lui	$a6,0x7
    # Line 3173
    lw	$a3,296($t1)
    # Line 3170
    lw	$t0,304($t1)
    # Line 3169
    lw	$t1,300($t1)
    # Line 3168
    ori	$a6,$a6,0x4080
    sw	$t2,0($a6)
    # Line 3169
    sw	$t1,0($a6)
    # Line 3170
    sw	$t0,0($a6)
    # Line 3171
    sw	$a7,0($a6)
    # Line 3173
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 3172
    lh	$a5,34($s2)
    # Line 3173
    move	$a0,$s0
    bal __glMgrasWrite
    # Line 3172
    sw	$a5,0($a6)
    # Line 3175
    # lw $t9, -30664($gp) # &mgrTM_SR_TexLoad
    move	$a0,$s0
    bal mgrTM_SR_TexLoad
    move	$a1,$s2
    # Line 3178
    ld	$s0,40($sp)
    # Line 3177
    sw	$zero,484($s1)
    # Line 3176
    sw	$zero,488($s1)
    # Line 3178
    ld	$ra,56($sp)
    ld	$s1,48($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabdbcc:
    # Line 3143
    # lw $t9, -17944($gp) # &ioctl
    lw	$a0,31560($s0)
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0x29
    bltz	$v0,.L0dabdc40
    # Line 3147
    ld	$at,8($sp)
.L0dabdbe8:
    lw	$a2,1228($s1)
    b	.L0dabda84
    sw	$a2,-28072($at)
.L0dabdbf4:
    # Line 3161
    move	$a4,$zero
    li	$a1,273
    move	$a0,$s0
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    ld	$a2,8($sp)
    # Line 3160
    xori	$a6,$a6,0x1
    sw	$a6,1172($s1)
    # Line 3161
    sll	$a6,$a6,0x7
    lbu	$a5,82($s3)
    lw	$a2,-28084($a2)
    lw	$a3,212($a3)
    sll	$a5,$a5,0x3
    sll	$a2,$a2,0x5
    or	$a2,$a2,$a6
    bal __glMgrasWrite
    or	$a2,$a2,$a5
    b	.L0dabdb2c
    # Line 3167
    move	$a0,$s0
.L0dabdc40:
    # Line 3144
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15840
    # Line 3145
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabdbe8
    # Line 3147
    ld	$at,8($sp)
.end RestoreData

# Function: desc_alloc
# Declared: Line 3186 (Source lines: 3189-3231)
# Address: 0x0dabdc64 - 0x0dabdf2c (Size: 712 bytes, Frame: 48)
.ent desc_alloc
desc_alloc:
    # Line 3189
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s2,16($sp)
    move	$s2,$a1
    # Line 3193
    li	$at,0x8a2c
    addu	$at,$a0,$at
    sd	$s1,0($sp)
    li	$s1,0x91fc
    addu	$s1,$s1,$a0
    bne	$at,$a1,.L0dabdd18
    lw	$s1,0($s1)
    # Line 3196
    lw	$v1,1156($s1)
    move	$v0,$zero
    blez	$v1,.L0dabdce0
    sw	$zero,1152($s1)
    sd	$ra,24($sp)
.L0dabdca8:
    # Line 3197
    move	$a0,$s0
    lw	$a1,1148($s1)
    lw	$t9,12($s0)
    sll	$a2,$v0,0x2
    addu	$a1,$a1,$a2
    jalr	$t9
    lw	$a1,0($a1)
    # Line 3196
    lw	$v0,1152($s1)
    lw	$a3,1156($s1)
    addiu	$v0,$v0,1
    slt	$a3,$v0,$a3
    bnez	$a3,.L0dabdca8
    sw	$v0,1152($s1)
    ld	$ra,24($sp)
.L0dabdce0:
    lw	$a1,1148($s1)
    beqz	$a1,.L0dabdd04
    # Line 3200
    move	$v0,$zero
    # Line 3199
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    # Line 3200
    move	$v0,$zero
.L0dabdd04:
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dabdd18:
    bnez	$s2,.L0dabdd58
    # Line 3231
    move	$v0,$zero
    # Line 3203
    lw	$v1,1152($s1)
    addiu	$v1,$v1,-1
    bltz	$v1,.L0dabdda8
    sw	$v1,1152($s1)
.L0dabdd30:
    # Line 3222
    lw	$s2,1144($s1)
    # Line 3223
    lw	$a2,0($s2)
    bnez	$s2,.L0dabdd8c
    sw	$a2,1144($s1)
.L0dabdd40:
    # Line 3225
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    move	$v0,$s2
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dabdd58:
    # Line 3227
    sw	$zero,8($s2)
    sw	$zero,4($s2)
    # Line 3228
    lw	$s0,1144($s1)
    sw	$s0,0($s2)
    # Line 3231
    ld	$s0,8($sp)
    # Line 3230
    lw	$a3,1152($s1)
    # Line 3229
    sw	$s2,1144($s1)
    # Line 3231
    ld	$s2,16($sp)
    # Line 3230
    addiu	$a3,$a3,1
    sw	$a3,1152($s1)
    # Line 3231
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dabdd8c:
    # Line 3224
    # lw $t9, -17868($gp) # &bzero
    move	$a0,$s2
    sd	$ra,24($sp)
    jal	bzero
    li	$a1,48
    b	.L0dabdd40
    ld	$ra,24($sp)
.L0dabdda8:
    # Line 3203
    lw	$v0,1156($s1)
    sra	$v1,$v0,0x1f
    xor	$at,$v0,$v1
    subu	$at,$at,$v1
    sra	$v1,$v0,0x1f
    andi	$at,$at,0xff
    xor	$at,$at,$v1
    subu	$at,$at,$v1
    beqz	$at,.L0dabdedc
    sd	$ra,24($sp)
.L0dabddd0:
    # Line 3212
    lw	$t9,0($s0)
.L0dabddd4:
    move	$a0,$s0
    jalr	$t9
    li	$a1,12288
    lw	$a3,1156($s1)
    lw	$a2,1148($s1)
    ld	$ra,24($sp)
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    sw	$v0,0($a2)
    beqz	$v0,.L0dabdea8
    sw	$v0,1144($s1)
.L0dabde00:
    # Line 3215
    move	$a6,$zero
    move	$s2,$v0
    li	$a0,3
    li	$a4,255
    addiu	$a5,$v0,48
.L0dabde14:
    # Line 3217
    sw	$a5,0($s2)
    # Line 3215
    addiu	$a5,$a5,48
    addiu	$s2,$s2,48
    addiu	$a6,$a6,1
    # Line 3216
    sw	$zero,-44($s2)
    addi	$a0,$a0,-1
    bnez	$a0,.L0dabde14
    sw	$zero,-40($s2)
    move	$v0,$a6
    move	$a1,$a5
    move	$a0,$s2
.L0dabde40:
    # Line 3215
    addiu	$a0,$a0,192
    # Line 3216
    sw	$zero,-44($a0)
    sw	$zero,-40($a0)
    sw	$zero,-92($a0)
    sw	$zero,-88($a0)
    sw	$zero,-140($a0)
    sw	$zero,-136($a0)
    sw	$zero,-188($a0)
    sw	$zero,-184($a0)
    # Line 3215
    addiu	$v0,$v0,4
    addiu	$at,$a1,48
    # Line 3217
    sw	$at,-144($a0)
    # Line 3215
    addiu	$at,$at,48
    # Line 3217
    sw	$at,-96($a0)
    sw	$a1,-192($a0)
    # Line 3215
    addiu	$at,$at,48
    addiu	$a1,$at,48
    bne	$v0,$a4,.L0dabde40
    # Line 3217
    sw	$at,-48($a0)
    # Line 3219
    lw	$v1,1152($s1)
    # Line 3220
    lw	$a2,1156($s1)
    # Line 3219
    addiu	$v1,$v1,256
    # Line 3220
    addiu	$a2,$a2,1
    sw	$a2,1156($s1)
    b	.L0dabdd30
    # Line 3219
    sw	$v1,1152($s1)
.L0dabdea8:
    # Line 3214
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15800
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    lw	$v0,1144($s1)
    b	.L0dabde00
    ld	$ra,24($sp)
.L0dabdedc:
    # Line 3208
    move	$a0,$s0
    lw	$t9,8($s0)
    lw	$a1,1148($s1)
    sll	$a2,$v0,0x2
    jalr	$t9
    addiu	$a2,$a2,1024
    bnez	$v0,.L0dabddd0
    sw	$v0,1148($s1)
    # Line 3210
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15816
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabddd4
    # Line 3212
    lw	$t9,0($s0)
.end desc_alloc

# Function: __glMgrBindHWContextToThread
# Declared: Line 3237 (Source lines: 3239-3279)
# Address: 0x0dabdf2c - 0x0dabdfcc (Size: 160 bytes, Frame: 192)
.ent __glMgrBindHWContextToThread
__glMgrBindHWContextToThread:
    # Line 3240
    move	$v0,$zero
    # Line 3239
    addiu	$sp,$sp,-64
    # Line 3240
    beqz	$a1,.L0dabdf84
    sd	$a0,8($sp)
    # Line 3245
    lw	$a0,0($a2)
    move	$a5,$a0
.L0dabdf44:
    # Line 3262
    bnez	$a1,.L0dabdf54
    # Line 3273
    addiu	$a2,$sp,0
    # Line 3262
    beq	$a0,$a5,.L0dabdf7c
    # Line 3273
    addiu	$a2,$sp,0
.L0dabdf54:
    li	$a1,1002
    sd	$ra,16($sp)
    # lw $t9, -17944($gp) # &ioctl
    ld	$a0,8($sp)
    # Line 3272
    sw	$a5,0($sp)
    # Line 3273
    jal	ioctl
    lw	$a0,31560($a0)
    bltz	$v0,.L0dabdfac
    ld	$ra,16($sp)
.L0dabdf78:
    # Line 3277
    li	$v0,1
.L0dabdf7c:
    # Line 3279
    jr	$ra
    addiu	$sp,$sp,64
.L0dabdf84:
    # Line 3247
    lw	$a5,__glCurrentContext
    bnez	$a5,.L0dabdf98
    # Line 3251
    move	$a0,$zero
    b	.L0dabdfa0
    sw	$zero,0($a2)
.L0dabdf98:
    # Line 3253
    lw	$a0,31564($a5)
    sw	$a0,0($a2)
.L0dabdfa0:
    ld	$a5,8($sp)
    b	.L0dabdf44
    # Line 3254
    lw	$a5,31564($a5)
.L0dabdfac:
    ld	$t9,8($sp)
    # Line 3274
    move	$a0,$t9
    lw	$t9,20($t9)
    la	$a1,sub_0dbe0000
    jalr	$t9
    addiu	$a1,$a1,-15784
    b	.L0dabdf78
    ld	$ra,16($sp)
.end __glMgrBindHWContextToThread

# Function: __glMgrFreeTextureManager
# Declared: Line 3283 (Source lines: 3284-3324)
# Address: 0x0dabdfcc - 0x0dabe1a4 (Size: 472 bytes, Frame: 240)
.globl __glMgrFreeTextureManager
.ent __glMgrFreeTextureManager
__glMgrFreeTextureManager:
    # Line 3284
    addiu	$sp,$sp,-112
    sd	$ra,24($sp)
    sd	$s5,32($sp)
    # Line 3286
    lui	$s5,0x1
    sd	$gp,56($sp)
    sd	$s0,48($sp)
    # Line 3284
    move	$s0,$a0
    sd	$s6,16($sp)
    lui	$s6,0x14
    addiu	$s6,$s6,1740
    addu	$gp,$t9,$s6
    # Line 3298
    lw	$t9,40($s0)
    # Line 3286
    addu	$s5,$s5,$s0
    # Line 3298
    lw	$a1,-25272($s5)
    jalr	$t9
    # Line 3286
    lw	$s6,-28164($s5)
    sd	$s4,88($sp)
    sd	$s1,80($sp)
    sd	$s2,64($sp)
    # Line 3300
    addiu	$a2,$sp,0
    move	$a1,$zero
    # Line 3298
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 3300
    move	$a0,$s0
    sd	$s3,72($sp)
    # Line 3298
    addiu	$t9,$t9,-8404
    # Line 3300
    bal mgrTM_SaveData
    # Line 3298
    sw	$v0,31560($s0)
    sd	$v0,40($sp)
    # Line 3302
    li	$s4,30160
    # Line 3301
    lw	$at,__glCurrentContext
    # Line 3302
    sw	$s0,__glCurrentContext
    lui	$s3,0x1
    li	$s2,0x8a30
    addu	$s2,$s0,$s2
    addu	$s1,$s3,$s0
    sd	$at,8($sp)
    addiu	$at,$s0,1836
    b	.L0dabe080
    addu	$s3,$s3,$at
.L0dabe068:
    # Line 3309
    # lw $t9, -30720($gp) # &mgrTM_RemoveTex
.L0dabe06c:
    move	$a0,$s0
    bal mgrTM_RemoveTex
    move	$a1,$s2
    # Line 3304
    beq	$s1,$s3,.L0dabe0b0
    addiu	$s2,$s2,204
.L0dabe080:
    # Line 3302
    beq	$s4,$s1,.L0dabe090
    lw	$a1,-29964($s1)
    beqz	$a1,.L0dabe13c
    # Line 3306
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0dabe090:
    lw	$v1,84($a1)
    beqz	$v1,.L0dabe068
    # Line 3304
    addiu	$s1,$s1,204
    # Line 3308
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    jal	__glNamesUnlockData
    move	$a0,$s0
    b	.L0dabe06c
    # Line 3309
    nop	# was lw $t9, -30720($gp) # &mgrTM_RemoveTex
.L0dabe0b0:
    # Line 3312
    lw	$s1,1180($s6)
    lw	$a3,8($s1)
    addiu	$a3,$a3,-1
    sw	$a3,8($s1)
    lw	$a1,1180($s6)
    ld	$s4,88($sp)
    lw	$a2,8($a1)
    ld	$s3,72($sp)
    ld	$s2,64($sp)
    beqz	$a2,.L0dabe14c
    ld	$s1,80($sp)
.L0dabe0dc:
    # Line 3320
    lw	$t9,12($s0)
    move	$a0,$s0
    lw	$a1,-28308($s5)
    jal	mgrTM_RemoveTex
    ld	$s6,16($sp)
    # Line 3321
    ld	$at,40($sp)
    sw	$zero,-28308($s5)
    ld	$s5,32($sp)
    beqz	$at,.L0dabe124
    ld	$ra,24($sp)
    # Line 3322
    move	$a0,$s0
    # lw $t9, -32724($gp) # &sub_0dac0000
    addiu	$a2,$sp,0
    li	$a1,1
    addiu	$t9,$t9,-8404
    bal mgrTM_SaveData
    ld	$s5,32($sp)
    ld	$ra,24($sp)
.L0dabe124:
    ld	$gp,56($sp)
    # Line 3324
    ld	$s0,48($sp)
    ld	$at,8($sp)
    addiu	$sp,$sp,112
    jr	$ra
    # Line 3323
    sw	$at,__glCurrentContext
.L0dabe13c:
    # Line 3306
    bal mgrTM_RefreshDim
    move	$a0,$s2
    b	.L0dabe090
    lw	$a1,-29964($s1)
.L0dabe14c:
    # Line 3313
    move	$a0,$s0
    ld	$s4,88($sp)
    # lw $t9, -26228($gp) # &__glNamesFreeArray
    ld	$s1,80($sp)
    ld	$s3,72($sp)
    jal	__glNamesFreeArray
    ld	$s2,64($sp)
    # Line 3314
    # lw $t9, -30700($gp) # &mgrTM_FreeDMAPool
    bal mgrTM_FreeDMAPool
    move	$a0,$s0
    # Line 3315
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a0,$s0
    li	$a1,0x8a2c
    addiu	$t9,$t9,-9116
    bal mgrTM_SaveData
    addu	$a1,$s0,$a1
    # Line 3316
    lw	$t9,12($s0)
    move	$a0,$s0
    jal	sub_0dac0000
    move	$a1,$s6
    b	.L0dabe0dc
    # Line 3317
    sw	$zero,-28164($s5)
.end __glMgrFreeTextureManager

# Function: mgrTM_AppendPages
# Declared: Line 3332 (Source lines: 3336-3365)
# Address: 0x0dabe1a4 - 0x0dabe368 (Size: 452 bytes, Frame: 224)
.ent mgrTM_AppendPages
mgrTM_AppendPages:
    # Line 3336
    addiu	$sp,$sp,-96
    sd	$s4,24($sp)
    move	$s4,$a0
    sd	$s2,40($sp)
    move	$s2,$a1
    sd	$s3,32($sp)
    move	$s3,$a2
    sd	$s1,8($sp)
    # Line 3338
    lui	$s1,0x1
    addu	$s1,$a0,$s1
    lw	$a5,-28164($s1)
    sd	$s0,16($sp)
    lw	$at,-28072($s1)
    lw	$v0,1228($a5)
    # Line 3337
    move	$s0,$zero
    sd	$s5,0($sp)
    # Line 3338
    bne	$at,$v0,.L0dabe314
    lw	$s5,16($a1)
.L0dabe1ec:
    # Line 3345
    lw	$at,24($s5)
    bnez	$at,.L0dabe214
    mtc1	$zero,$f1
    lw	$v1,28($s5)
    lwc1	$f0,0($v1)
    c.lt.s	$f0,$f1
    nop
    bc1fl	.L0dabe218
    # Line 3350
    lh	$a7,76($s3)
    # Line 3349
    lh	$s0,36($s5)
.L0dabe214:
    # Line 3350
    lh	$a7,76($s3)
.L0dabe218:
    lh	$a6,32($s2)
    lhu	$a0,1232($a5)
    addu	$v0,$a6,$a7
    subu	$v0,$v0,$s0
    sltu	$a3,$a0,$v0
    beqz	$a3,.L0dabe240
    # Line 3352
    subu	$s0,$v0,$a6
    sd	$ra,48($sp)
    # Line 3351
    move	$v0,$a0
    # Line 3352
    subu	$s0,$v0,$a6
.L0dabe240:
    # Line 3354
    sw	$a7,-28132($s1)
    sw	$a7,-28120($s1)
    sd	$ra,48($sp)
    # Line 3355
    lw	$a3,52($s3)
    # Line 3357
    lui	$a1,0x6d67
    li	$a2,0x9214
    # Line 3355
    sw	$a3,-28128($s1)
    # Line 3357
    addu	$a2,$s4,$a2
    # Line 3356
    lw	$v1,44($s3)
    # Line 3357
    # lw $t9, -17944($gp) # &ioctl
    ori	$a1,$a1,0xf
    # Line 3356
    sw	$v1,-28116($s1)
    # Line 3357
    jal	ioctl
    lw	$a0,31560($s4)
    bgez	$v0,.L0dabe2b0
    ld	$ra,48($sp)
    # Line 3359
    ld	$s5,0($sp)
    ld	$s0,16($sp)
    # Line 3358
    lw	$a4,-28164($s1)
    # Line 3359
    ld	$s1,8($sp)
    move	$v0,$s2
    # Line 3358
    lh	$a3,32($s2)
    # Line 3359
    ld	$s2,40($sp)
    ld	$s3,32($sp)
    ld	$s4,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3358
    sh	$a3,1232($a4)
.L0dabe2b0:
    # Line 3362
    # lw $t9, -32728($gp) # &sub_0dab0000
    move	$a0,$s4
    move	$a1,$s0
    addiu	$t9,$t9,27552
    bal mgrTM_RefreshDim
    move	$a2,$zero
    # Line 3363
    li	$v0,1
    sb	$v0,88($s3)
    # Line 3364
    lw	$v0,-28164($s1)
    lw	$at,1228($v0)
    addiu	$at,$at,1
    sw	$at,1228($v0)
    lw	$ra,-28164($s1)
    # Line 3365
    ld	$s0,16($sp)
    ld	$s4,24($sp)
    # Line 3364
    lw	$ra,1228($ra)
    # Line 3365
    ld	$s5,0($sp)
    ld	$s3,32($sp)
    # Line 3364
    sw	$ra,-28072($s1)
    # Line 3365
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    lw	$v0,16($s2)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dabe314:
    # Line 3341
    lw	$a0,31560($s4)
    # lw $t9, -17944($gp) # &ioctl
    sd	$ra,48($sp)
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0x29
    bltz	$v0,.L0dabe344
    ld	$ra,48($sp)
.L0dabe334:
    # Line 3345
    lw	$a5,-28164($s1)
    lw	$a3,1228($a5)
    b	.L0dabe1ec
    sw	$a3,-28072($s1)
.L0dabe344:
    # Line 3342
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15840
    # Line 3343
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabe334
    ld	$ra,48($sp)
.end mgrTM_AppendPages

# Function: mgrTM_LockSaveData
# Declared: Line 3369 (Source lines: 3370-3402)
# Address: 0x0dabe368 - 0x0dabe494 (Size: 300 bytes, Frame: 208)
.ent mgrTM_LockSaveData
mgrTM_LockSaveData:
    # Line 3370
    addiu	$sp,$sp,-80
    sd	$s3,16($sp)
    move	$s3,$a1
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s4,24($sp)
    # Line 3383
    li	$s4,0x9230
    sd	$s2,8($sp)
    # Line 3377
    lh	$v1,32($a1)
    # Line 3378
    lui	$v0,0x1
    sd	$s1,32($sp)
    # Line 3370
    move	$s1,$a0
    sd	$ra,0($sp)
    # Line 3372
    lw	$at,24($a1)
    # Line 3378
    lh	$ra,36($a1)
    addu	$v0,$s1,$v0
    # Line 3377
    lh	$a0,72($at)
    # Line 3378
    sw	$ra,-28104($v0)
    # Line 3383
    lui	$s2,0x6d67
    # Line 3379
    lw	$t8,48($at)
    # Line 3377
    subu	$v1,$v1,$a0
    # Line 3379
    sll	$t9,$v1,0x2
    subu	$t9,$t9,$v1
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    sw	$t8,-28100($v0)
    # Line 3383
    ori	$s2,$s2,0xe
    # Line 3380
    lh	$a0,36($a1)
    # Line 3383
    addu	$s4,$s1,$s4
    move	$a2,$s4
    # Line 3380
    sw	$a0,-28096($v0)
    # Line 3381
    sll	$v1,$v1,0x3
    lw	$at,44($at)
    # Line 3383
    # lw $t9, -17944($gp) # &ioctl
    move	$a1,$s2
    # Line 3381
    addu	$at,$at,$v1
    sw	$at,-28092($v0)
    # Line 3383
    jal	ioctl
    lw	$a0,31560($s1)
    bltz	$v0,.L0dabe42c
    ld	$ra,0($sp)
.L0dabe40c:
    # Line 3402
    move	$v0,$s0
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabe42c:
    b	.L0dabe450
    # Line 3390
    nop	# was lw $t9, -30704($gp) # &mgrTM_UnlockPages
.L0dabe434:
    # Line 3383
    # lw $t9, -17944($gp) # &ioctl
.L0dabe438:
    move	$a2,$s4
    move	$a1,$s2
    jal	ioctl
    lw	$a0,31560($s1)
    bgez	$v0,.L0dabe48c
    # Line 3390
    nop	# was lw $t9, -30704($gp) # &mgrTM_UnlockPages
.L0dabe450:
    move	$a0,$s1
    move	$a1,$s0
    bal mgrTM_UnlockPages
    lh	$a2,36($s3)
    bnez	$v0,.L0dabe434
    move	$s0,$v0
    # Line 3392
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15752
    # Line 3393
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabe438
    # Line 3383
    nop	# was lw $t9, -17944($gp) # &ioctl
.L0dabe48c:
    b	.L0dabe40c
    ld	$ra,0($sp)
.end mgrTM_LockSaveData

# Function: mgrTM_UnlockSaveData
# Declared: Line 3406 (Source lines: 3407-3433)
# Address: 0x0dabe494 - 0x0dabe608 (Size: 372 bytes, Frame: 208)
.ent mgrTM_UnlockSaveData
mgrTM_UnlockSaveData:
    # Line 3407
    addiu	$sp,$sp,-80
    sd	$s5,48($sp)
    sd	$s8,40($sp)
    move	$s8,$a0
    sd	$ra,16($sp)
    sd	$s7,24($sp)
    move	$s7,$a1
    # Line 3416
    lui	$v0,0x1
    addu	$v0,$a0,$v0
    sd	$v0,8($sp)
    # Line 3410
    lw	$v1,24($a1)
    # Line 3416
    lh	$at,36($a1)
    # Line 3418
    # lw $t9, -17788($gp) # &calloc
    sd	$v1,32($sp)
    # Line 3416
    sw	$at,-28148($v0)
    sd	$s1,0($sp)
    # Line 3417
    lh	$s1,36($a1)
    # Line 3418
    li	$a1,4
    jal	calloc
    move	$a0,$s1
    beqz	$v0,.L0dabe5c0
    move	$s5,$v0
    # Line 3423
    move	$a5,$s1
.L0dabe4f0:
    andi	$a4,$s1,0x3
    lh	$v0,32($s7)
    blez	$s1,.L0dabe56c
    ld	$s7,24($sp)
    move	$a0,$s5
    sll	$a1,$s1,0x2
    ld	$s1,0($sp)
    ld	$s7,24($sp)
    beqz	$a4,.L0dabe52c
    addu	$a1,$a1,$s5
.L0dabe518:
    # Line 3424
    sw	$v0,0($a0)
    # Line 3423
    addiu	$v0,$v0,1
    addi	$a4,$a4,-1
    bnez	$a4,.L0dabe518
    addiu	$a0,$a0,4
.L0dabe52c:
    move	$a6,$a0
    sra	$a2,$a5,0x2
    beqz	$a2,.L0dabe56c
    move	$a4,$v0
    move	$v0,$a6
    move	$a0,$a4
.L0dabe544:
    addiu	$v0,$v0,16
    addiu	$a3,$a0,1
    # Line 3424
    sw	$a3,-12($v0)
    # Line 3423
    addiu	$a3,$a3,1
    # Line 3424
    sw	$a3,-8($v0)
    sw	$a0,-16($v0)
    # Line 3423
    addiu	$a3,$a3,1
    addiu	$a0,$a3,1
    bne	$v0,$a1,.L0dabe544
    # Line 3424
    sw	$a3,-4($v0)
.L0dabe56c:
    ld	$s1,0($sp)
    # Line 3426
    lui	$a1,0x6d67
    li	$a2,0x9204
    addu	$a2,$s8,$a2
    # Line 3425
    ld	$a4,8($sp)
    # Line 3426
    # lw $t9, -17944($gp) # &ioctl
    ori	$a1,$a1,0x1f
    # Line 3425
    sw	$s5,-28144($a4)
    # Line 3426
    jal	ioctl
    lw	$a0,31560($s8)
    bltz	$v0,.L0dabe5e4
    ld	$s8,32($sp)
    # Line 3431
    # lw $t9, -17784($gp) # &free
.L0dabe5a0:
    jal	free
    move	$a0,$s5
    # Line 3433
    ld	$s5,48($sp)
    ld	$ra,16($sp)
    # Line 3432
    sb	$zero,88($s8)
    # Line 3433
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dabe5c0:
    # Line 3420
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15704
    # Line 3421
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabe4f0
    # Line 3423
    move	$a5,$s1
.L0dabe5e4:
    # Line 3428
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15664
    # Line 3429
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabe5a0
    # Line 3431
    nop	# was lw $t9, -17784($gp) # &free
.end mgrTM_UnlockSaveData

# Function: mgrTM_UnlockPages
# Declared: Line 3436 (Source lines: 3440-3487)
# Address: 0x0dabe608 - 0x0dabe914 (Size: 780 bytes, Frame: 240)
.globl mgrTM_UnlockPages
.ent mgrTM_UnlockPages
mgrTM_UnlockPages:
    # Line 3442
    sltiu	$at,$a2,2049
    # Line 3440
    addiu	$sp,$sp,-8304
    sd	$s1,8216($sp)
    # Line 3441
    move	$s1,$zero
    sd	$s6,8224($sp)
    # Line 3440
    move	$s6,$a1
    sd	$s3,8232($sp)
    move	$s3,$a2
    sd	$s5,8208($sp)
    move	$s5,$a0
    sd	$s2,8240($sp)
    sd	$gp,8192($sp)
    lui	$v1,0x14
    addiu	$v1,$v1,144
    sd	$s7,8200($sp)
    # Line 3442
    lui	$s7,0x1
    addu	$s7,$a0,$s7
    lw	$v0,-28164($s7)
    # Line 3440
    addu	$gp,$t9,$v1
    # Line 3442
    beqz	$at,.L0dabe854
    move	$s2,$v0
    # Line 3446
    lh	$a0,32($s2)
    lhu	$a3,1232($v0)
    beql	$a3,$a0,.L0dabe678
    sd	$s0,8264($sp)
    sd	$s0,8264($sp)
    # Line 3448
    sh	$a0,1232($v0)
    sd	$s0,8264($sp)
.L0dabe678:
    # Line 3449
    beqz	$s3,.L0dabe6e8
    move	$s0,$s2
    sd	$ra,8248($sp)
    b	.L0dabe698
    sd	$s4,8256($sp)
.L0dabe68c:
    # Line 3458
    sltu	$a4,$s1,$s3
    beqz	$a4,.L0dabe6e4
    ld	$s4,8256($sp)
.L0dabe698:
    # Line 3451
    lw	$s0,16($s0)
    beq	$s0,$s2,.L0dabe6e4
    ld	$s4,8256($sp)
    # Line 3453
    lw	$a1,24($s0)
    lh	$at,36($s0)
    beqz	$a1,.L0dabe68c
    addu	$s1,$at,$s1
    # Line 3455
    move	$s4,$s0
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 3456
    move	$a0,$s5
    move	$a2,$s0
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    move	$a3,$zero
    bne	$s6,$s4,.L0dabe68c
    move	$s0,$v0
    b	.L0dabe68c
    # Line 3458
    move	$s6,$v0
    ld	$s4,8256($sp)
.L0dabe6e4:
    ld	$ra,8248($sp)
.L0dabe6e8:
    # Line 3461
    beqz	$s1,.L0dabe8c8
    # Line 3462
    sltu	$at,$s3,$s1
    bnezl	$at,.L0dabe888
    sd	$s4,8256($sp)
    sd	$s4,8256($sp)
    # Line 3470
    lw	$s0,16($s0)
    # Line 3473
    move	$a7,$s1
.L0dabe704:
    sll	$a1,$s1,0x2
    # Line 3471
    lw	$s4,4($s0)
    # Line 3472
    sw	$s1,-28148($s7)
    # Line 3473
    beqz	$s1,.L0dabe87c
    lh	$v0,32($s4)
    addiu	$a0,$sp,0
    addiu	$a5,$sp,0
    andi	$a2,$s1,0x3
    beqz	$a2,.L0dabe740
    addu	$a1,$a1,$a5
.L0dabe72c:
    # Line 3474
    sw	$v0,0($a0)
    # Line 3473
    addiu	$v0,$v0,1
    addi	$a2,$a2,-1
    bnez	$a2,.L0dabe72c
    addiu	$a0,$a0,4
.L0dabe740:
    sra	$a3,$a7,0x2
    move	$a2,$a0
    beqz	$a3,.L0dabe780
    move	$a6,$v0
    move	$a0,$a2
    move	$v0,$a6
.L0dabe758:
    addiu	$a0,$a0,16
    addiu	$a4,$v0,1
    # Line 3474
    sw	$a4,-12($a0)
    # Line 3473
    addiu	$a4,$a4,1
    # Line 3474
    sw	$a4,-8($a0)
    sw	$v0,-16($a0)
    # Line 3473
    addiu	$a4,$a4,1
    addiu	$v0,$a4,1
    bne	$a0,$a1,.L0dabe758
    # Line 3474
    sw	$a4,-4($a0)
.L0dabe780:
    sd	$ra,8248($sp)
.L0dabe784:
    # Line 3476
    lui	$a1,0x6d67
    li	$a2,0x9204
    addu	$a2,$s5,$a2
    # lw $t9, -17944($gp) # &ioctl
    ori	$a1,$a1,0x1f
    # Line 3475
    sw	$a5,-28144($s7)
    # Line 3476
    jal	ioctl
    lw	$a0,31560($s5)
    bltz	$v0,.L0dabe8f4
    # Line 3478
    nop	# was lw $t9, -17888($gp) # &perror
    # Line 3481
    lw	$at,4($s4)
.L0dabe7b0:
    # Line 3484
    move	$a3,$zero
    # Line 3481
    sw	$at,4($s0)
    # Line 3484
    move	$a2,$s0
    # Line 3482
    lw	$ra,4($s4)
    # Line 3484
    move	$a1,$s4
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 3482
    sw	$s0,16($ra)
    # Line 3484
    move	$a0,$s5
    # Line 3483
    lh	$a4,40($s0)
    # Line 3484
    addiu	$t9,$t9,-22740
    # Line 3483
    lw	$a5,-28164($s7)
    addiu	$a4,$a4,1
    andi	$a4,$a4,0xffff
    sh	$a4,1232($a5)
    sh	$a4,32($s2)
    # Line 3484
    bal mgrTM_process_level
    # Line 3483
    sh	$a4,40($s2)
    ld	$ra,8248($sp)
    ld	$s4,8256($sp)
    ld	$gp,8192($sp)
    # Line 3487
    ld	$s5,8208($sp)
    # Line 3486
    move	$v0,$s6
    ld	$s7,8200($sp)
    # Line 3484
    bne	$s3,$s1,.L0dabe834
    ld	$s0,8264($sp)
    # Line 3486
    ld	$s6,8224($sp)
    ld	$s2,8240($sp)
    ld	$gp,8192($sp)
    ld	$s1,8216($sp)
    ld	$s3,8232($sp)
    ld	$s5,8208($sp)
    jr	$ra
    addiu	$sp,$sp,8304
.L0dabe834:
    # Line 3487
    ld	$s7,8200($sp)
    move	$v0,$zero
    ld	$s2,8240($sp)
    ld	$s1,8216($sp)
    ld	$s3,8232($sp)
    ld	$s6,8224($sp)
    jr	$ra
    addiu	$sp,$sp,8304
.L0dabe854:
    # Line 3446
    move	$v0,$zero
    ld	$gp,8192($sp)
    ld	$s1,8216($sp)
    ld	$s2,8240($sp)
    ld	$s3,8232($sp)
    ld	$s5,8208($sp)
    ld	$s6,8224($sp)
    ld	$s7,8200($sp)
    jr	$ra
    addiu	$sp,$sp,8304
.L0dabe87c:
    # Line 3473
    addiu	$a5,$sp,0
    b	.L0dabe784
    sd	$ra,8248($sp)
.L0dabe888:
    # Line 3464
    move	$s4,$s0
    # Line 3465
    move	$a0,$s5
    move	$a1,$s0
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a2,$s3
    sd	$ra,8248($sp)
    addiu	$t9,$t9,-27144
    bal mgrTM_process_level
    move	$a3,$zero
    move	$s0,$v0
    bne	$s6,$s4,.L0dabe8bc
    ld	$ra,8248($sp)
    # Line 3467
    move	$s6,$v0
.L0dabe8bc:
    # Line 3468
    move	$s1,$s3
    b	.L0dabe704
    # Line 3473
    move	$a7,$s1
.L0dabe8c8:
    # Line 3462
    move	$v0,$zero
    ld	$gp,8192($sp)
    ld	$s0,8264($sp)
    ld	$s1,8216($sp)
    ld	$s2,8240($sp)
    ld	$s3,8232($sp)
    ld	$s5,8208($sp)
    ld	$s6,8224($sp)
    ld	$s7,8200($sp)
    jr	$ra
    addiu	$sp,$sp,8304
.L0dabe8f4:
    # Line 3478
    la	$a0,sub_0dbe0000
    jal	sub_0dac0000
    addiu	$a0,$a0,-15608
    # Line 3479
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabe7b0
    # Line 3481
    lw	$at,4($s4)
.end mgrTM_UnlockPages

# Function: mgrTM_AllocSaveData
# Declared: Line 3496 (Source lines: 3500-3548)
# Address: 0x0dabe914 - 0x0dabebe8 (Size: 724 bytes, Frame: 240)
.ent mgrTM_AllocSaveData
mgrTM_AllocSaveData:
    # Line 3509
    lw	$at,0($a1)
    lh	$v0,78($a1)
    lhu	$v1,44($at)
    mult	$v0,$v1
    # Line 3500
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s4,48($sp)
    move	$s4,$a0
    sd	$s1,40($sp)
    move	$s1,$a1
    sd	$s2,32($sp)
    # Line 3509
    lui	$s2,0x1
    sd	$s0,24($sp)
    mflo	$s0
    sh	$s0,36($at)
    sh	$s0,76($a1)
    addu	$s2,$a0,$s2
    lw	$v0,-32296($s2)
    sll	$v1,$s0,0xc
    beqz	$a2,.L0dabeb88
    addu	$v0,$v0,$v1
    # Line 3513
    # lw $t9, -17764($gp) # &amalloc
    lw	$a1,-28164($s2)
    move	$a0,$v0
    jal	amalloc
    lw	$a1,1240($a1)
    beqz	$v0,.L0dabebc4
    sw	$v0,64($s1)
.L0dabe984:
    # Line 3523
    lw	$a0,-32296($s2)
    addiu	$a4,$a0,-1
    and	$a4,$a4,$v0
    beqz	$a4,.L0dabe9a0
    # Line 3527
    addu	$s2,$v0,$a4
    # Line 3525
    subu	$a4,$a0,$a4
    # Line 3527
    addu	$s2,$v0,$a4
.L0dabe9a0:
    sw	$s2,60($s1)
    # Line 3529
    lw	$t9,0($s4)
    sd	$s3,56($sp)
    sll	$a1,$s0,0x3
    jalr	$t9
    move	$a0,$s4
    move	$s3,$v0
    beqz	$v0,.L0dabea28
    sw	$v0,44($s1)
    lw	$t9,0($s4)
    move	$a0,$s4
    sll	$a1,$s0,0x2
    jalr	$t9
    sd	$a1,16($sp)
    sw	$v0,0($sp)
    beqz	$v0,.L0dabea28
    sw	$v0,52($s1)
    lw	$t9,0($s4)
    move	$a0,$s4
    jalr	$t9
    ld	$a1,16($sp)
    sw	$v0,4($sp)
    beqz	$v0,.L0dabea28
    sw	$v0,56($s1)
    move	$a0,$s4
    lw	$t9,0($s4)
    sll	$a1,$s0,0x2
    subu	$a1,$a1,$s0
    jalr	$t9
    sll	$a1,$a1,0x2
    sw	$v0,8($sp)
    sw	$v0,48($s1)
    bnez	$v0,.L0dabea48
    ld	$ra,64($sp)
.L0dabea28:
    # Line 3537
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15800
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    ld	$ra,64($sp)
.L0dabea48:
    # Line 3548
    ld	$s4,48($sp)
    # Line 3539
    lw	$a1,0($sp)
    move	$a6,$s0
    lw	$v0,8($sp)
    beqz	$s0,.L0dabeb70
    move	$a4,$zero
    lw	$a0,4($sp)
    andi	$a5,$s0,0x3
    beqz	$a5,.L0dabeaa8
    li	$a7,4096
.L0dabea70:
    addiu	$a0,$a0,4
    addiu	$v0,$v0,12
    addiu	$a1,$a1,4
    addiu	$s3,$s3,8
    addiu	$a4,$a4,1
    addi	$a5,$a5,-1
    # Line 3541
    sw	$s2,-8($s3)
    # Line 3542
    sw	$a7,-4($s3)
    # Line 3543
    sw	$s2,-4($a1)
    # Line 3544
    sw	$s2,-8($v0)
    # Line 3539
    addiu	$s2,$s2,4096
    # Line 3545
    sw	$a7,-4($v0)
    bnez	$a5,.L0dabea70
    # Line 3546
    sw	$zero,-4($a0)
.L0dabeaa8:
    move	$t9,$s2
    move	$t0,$a4
    move	$t3,$a1
    move	$t1,$a0
    sra	$a2,$a6,0x2
    move	$t8,$s3
    ld	$s3,56($sp)
    move	$t2,$v0
    move	$a5,$t2
    move	$a1,$t8
    ld	$s3,56($sp)
    beqz	$a2,.L0dabeb70
    move	$a4,$t1
    move	$a6,$t9
    move	$a0,$t3
    move	$v0,$t0
.L0dabeae8:
    # Line 3539
    addiu	$a4,$a4,16
    addiu	$a5,$a5,48
    addiu	$a0,$a0,16
    addiu	$a1,$a1,32
    addiu	$v0,$v0,4
    addiu	$v1,$a6,4096
    addiu	$at,$v1,4096
    addiu	$a3,$at,4096
    # Line 3541
    sw	$a6,-32($a1)
    # Line 3542
    sw	$a7,-28($a1)
    # Line 3543
    sw	$a6,-16($a0)
    # Line 3544
    sw	$a6,-44($a5)
    # Line 3539
    addiu	$a6,$a3,4096
    # Line 3545
    sw	$a7,-40($a5)
    # Line 3546
    sw	$zero,-16($a4)
    # Line 3541
    sw	$v1,-24($a1)
    # Line 3542
    sw	$a7,-20($a1)
    # Line 3543
    sw	$v1,-12($a0)
    # Line 3544
    sw	$v1,-32($a5)
    # Line 3545
    sw	$a7,-28($a5)
    # Line 3546
    sw	$zero,-12($a4)
    # Line 3541
    sw	$at,-16($a1)
    # Line 3542
    sw	$a7,-12($a1)
    # Line 3543
    sw	$at,-8($a0)
    # Line 3544
    sw	$at,-20($a5)
    # Line 3545
    sw	$a7,-16($a5)
    # Line 3546
    sw	$zero,-8($a4)
    # Line 3541
    sw	$a3,-8($a1)
    # Line 3542
    sw	$a7,-4($a1)
    # Line 3543
    sw	$a3,-4($a0)
    # Line 3544
    sw	$a3,-8($a5)
    # Line 3545
    sw	$a7,-4($a5)
    # Line 3539
    bne	$v0,$s0,.L0dabeae8
    # Line 3546
    sw	$zero,-4($a4)
.L0dabeb70:
    # Line 3548
    ld	$s1,40($sp)
    ld	$s0,24($sp)
    ld	$s2,32($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dabeb88:
    # Line 3518
    # lw $t9, -32728($gp) # &sub_0dab0000
    addiu	$t9,$t9,25808
    jal	sub_0dab0000
    move	$a0,$v0
    bnez	$v0,.L0dabe984
    sw	$v0,64($s1)
    # Line 3520
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15544
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabe984
    lw	$v0,64($s1)
.L0dabebc4:
    # Line 3515
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15560
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabe984
    lw	$v0,64($s1)
.end mgrTM_AllocSaveData

# Function: mgrTM_FreeSaveData
# Declared: Line 3556 (Source lines: 3560-3582)
# Address: 0x0dabebe8 - 0x0dabed1c (Size: 308 bytes, Frame: 240)
.ent mgrTM_FreeSaveData
mgrTM_FreeSaveData:
    # Line 3560
    addiu	$sp,$sp,-112
    sd	$s1,56($sp)
    move	$s1,$a0
    sd	$s0,64($sp)
    lw	$at,64($a1)
    move	$s0,$a1
    sd	$s2,48($sp)
    beqz	$at,.L0dabecdc
    move	$s2,$a2
    # Line 3565
    beqz	$s2,.L0dabec30
    sd	$ra,72($sp)
    # Line 3567
    move	$a0,$s1
    # lw $t9, -32724($gp) # &sub_0dac0000
    move	$a1,$s0
    move	$a2,$zero
    addiu	$t9,$t9,-19924
    bal mgrTM_MakeResident
    move	$a3,$zero
.L0dabec30:
    # Line 3568
    lw	$t9,12($s1)
    move	$a0,$s1
    jal	sub_0dac0000
    lw	$a1,44($s0)
    # Line 3569
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,52($s0)
    # Line 3570
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,48($s0)
    # Line 3571
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,56($s0)
    lw	$a0,64($s0)
    lui	$at,0x1
    addu	$at,$s1,$at
    beqz	$s2,.L0dabecf0
    sd	$at,40($sp)
    # Line 3573
    ld	$a1,40($sp)
    # lw $t9, -17760($gp) # &afree
    lw	$a1,-28164($a1)
    jal	afree
    lw	$a1,1240($a1)
    # Line 3578
    ld	$a1,40($sp)
.L0dabec9c:
    # Line 3577
    sw	$zero,64($s0)
    # Line 3578
    # lw $t9, -17756($gp) # &amallinfo
    lw	$a1,-28164($a1)
    addiu	$a0,$sp,0
    jal	amallinfo
    lw	$a1,1240($a1)
    lw	$at,28($sp)
    lw	$a3,20($sp)
    ld	$ra,72($sp)
    addu	$a3,$a3,$at
    beqz	$a3,.L0dabed08
.L0dabecc8:
    # Line 3582
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dabecdc:
    # Line 3565
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dabecf0:
    # Line 3575
    # lw $t9, -32728($gp) # &sub_0dab0000
    addiu	$t9,$t9,25960
    jal	sub_0dab0000
    nop
    b	.L0dabec9c
    # Line 3578
    ld	$a1,40($sp)
.L0dabed08:
    # Line 3580
    # lw $t9, -30796($gp) # &mgrTM_ReconstituteSavePool
    jal	mgrTM_ReconstituteSavePool
    move	$a0,$s1
    b	.L0dabecc8
    ld	$ra,72($sp)
.end mgrTM_FreeSaveData

# Function: mgrTM_InitDMAPool
# Declared: Line 3589 (Source lines: 3590-3663)
# Address: 0x0dabed1c - 0x0dabefa8 (Size: 652 bytes, Frame: 128)
.ent mgrTM_InitDMAPool
mgrTM_InitDMAPool:
    # Line 3592
    move	$a1,$zero
    # Line 3590
    addiu	$sp,$sp,-128
    sd	$s3,88($sp)
    sd	$ra,48($sp)
    # Line 3592
    # lw $t9, -32724($gp) # &sub_0dac0000
    sd	$s1,56($sp)
    sd	$s0,72($sp)
    # Line 3591
    lui	$s0,0x1
    sd	$s2,64($sp)
    # Line 3590
    move	$s2,$a0
    # Line 3591
    addu	$s0,$s2,$s0
    lw	$s1,-28164($s0)
    # Line 3592
    addiu	$t9,$t9,-9116
    bal mgrTM_SaveData
    # Line 3591
    addiu	$s1,$s1,1052
    sd	$s4,96($sp)
    # Line 3592
    move	$s3,$v0
    # Line 3603
    move	$a2,$zero
    lui	$a1,0x6d67
    ori	$a1,$a1,0x24
    # Line 3592
    sw	$v0,0($s1)
    # Line 3603
    # lw $t9, -17944($gp) # &ioctl
    # Line 3594
    lw	$t8,-28164($s0)
    # Line 3603
    lw	$a0,31560($s2)
    jal	ioctl
    sd	$t8,32($sp)
    blez	$v0,.L0dabedb8
    move	$s4,$v0
    # Line 3605
    # lw $t9, -17860($gp) # &getpagesize
    jal	getpagesize
    nop
    mult	$v0,$s4
    lui	$a2,0x100
    mflo	$s4
    slt	$a2,$a2,$s4
    bnez	$a2,.L0dabeee0
    # Line 3608
    lui	$v1,0xff80
    # Line 3607
    b	.L0dabedbc
    lui	$s4,0x80
.L0dabedb8:
    # Line 3610
    lui	$s4,0x80
.L0dabedbc:
    # Line 3612
    lw	$at,-28164($s0)
.L0dabedc0:
    sra	$v0,$s4,0xb
    srl	$v0,$v0,0x14
    addu	$s4,$v0,$s4
    sra	$s4,$s4,0xc
    sh	$s4,1232($at)
    lw	$v0,-28164($s0)
    lw	$a3,1240($v0)
    beqz	$a3,.L0dabeeec
    ld	$s4,96($sp)
.L0dabede4:
    # Line 3646
    move	$a2,$zero
    move	$a1,$s1
    move	$a0,$s2
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 3639
    ld	$a3,32($sp)
    # Line 3643
    li	$v1,1
    # Line 3646
    addiu	$t9,$t9,-5868
    # Line 3639
    sw	$a3,16($s3)
    sw	$a3,4($s3)
    # Line 3640
    sw	$s3,4($a3)
    sw	$s3,16($a3)
    # Line 3641
    sw	$s3,0($s3)
    sw	$s3,12($s3)
    # Line 3642
    sh	$zero,72($s1)
    sh	$zero,32($s3)
    sh	$zero,40($s3)
    # Line 3643
    sh	$v1,32($a3)
    sh	$v1,40($a3)
    # Line 3644
    sh	$v1,78($s1)
    # Line 3646
    bal mgrTM_UnlockPages
    # Line 3645
    sh	$v1,44($s3)
    # Line 3647
    # lw $t9, -17868($gp) # &bzero
    li	$a1,4096
    jal	bzero
    lw	$a0,60($s1)
    # Line 3648
    lw	$t0,-28164($s0)
    # Line 3649
    sw	$zero,24($s3)
    # Line 3648
    addiu	$t0,$t0,1196
    sw	$t0,28($s3)
    # Line 3660
    addiu	$a2,$sp,0
    # Line 3650
    lw	$a7,-28164($s0)
    # Line 3652
    li	$a6,12
    li	$a3,1
    # Line 3651
    sh	$a3,272($a7)
    sh	$a3,280($a7)
    # Line 3654
    sw	$a3,8($sp)
    # Line 3653
    sw	$a3,4($sp)
    # Line 3652
    sw	$a6,0($sp)
    # Line 3656
    li	$a4,4096
    # Line 3655
    lw	$a5,52($s1)
    # Line 3658
    sw	$a3,24($sp)
    # Line 3657
    sw	$zero,20($sp)
    # Line 3656
    sw	$a4,16($sp)
    # Line 3655
    sw	$a5,12($sp)
    # Line 3660
    lui	$a1,0x6d67
    # Line 3659
    lw	$ra,44($s1)
    # Line 3660
    # lw $t9, -17944($gp) # &ioctl
    ori	$a1,$a1,0xd
    # Line 3659
    sw	$ra,28($sp)
    # Line 3660
    jal	ioctl
    lw	$a0,31560($s2)
    ld	$s2,64($sp)
    ld	$s1,56($sp)
    ld	$ra,48($sp)
    bltz	$v0,.L0dabef5c
    ld	$s3,88($sp)
.L0dabeec4:
    # Line 3662
    lw	$v0,-28164($s0)
    li	$at,1
    sw	$at,1228($v0)
    sw	$at,-28072($s0)
    # Line 3663
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabeee0:
    # Line 3608
    addu	$s4,$s4,$v1
    b	.L0dabedc0
    # Line 3612
    lw	$at,-28164($s0)
.L0dabeeec:
    # Line 3620
    li	$a1,1540
    move	$a0,$s2
    lw	$t9,0($s2)
    ld	$s4,96($sp)
    # Line 3619
    addiu	$a2,$v0,1240
    # Line 3620
    jalr	$t9
    sd	$a2,40($sp)
    beqz	$v0,.L0dabef80
.L0dabef0c:
    # Line 3627
    la	$a4,mgrTM_GrowSaveArena
    move	$a3,$zero
    move	$a2,$zero
    li	$a1,1024
    # lw $t9, -17776($gp) # &acreate
    # Line 3626
    ld	$a5,40($sp)
    # Line 3627
    addiu	$a0,$v0,4
    jal	acreate
    # Line 3626
    sw	$v0,4($a5)
    # Line 3627
    move	$a2,$v0
    # Line 3629
    lui	$a1,0x40
    # lw $t9, -17772($gp) # &amallopt
    # Line 3627
    ld	$a6,40($sp)
    # Line 3629
    li	$a0,5
    jal	amallopt
    # Line 3627
    sw	$v0,0($a6)
    ld	$at,40($sp)
    # Line 3631
    lw	$v1,0($at)
    b	.L0dabede4
    # Line 3633
    sw	$at,-4($v1)
.L0dabef5c:
    # Line 3661
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15488
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabeec4
    ld	$ra,48($sp)
.L0dabef80:
    # Line 3623
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    sd	$v0,80($sp)
    jal	perror
    addiu	$a0,$a0,-15520
    # Line 3624
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabef0c
    ld	$v0,80($sp)
.end mgrTM_InitDMAPool

# Function: mgrTM_FreeDMAPool
# Declared: Line 3671 (Source lines: 3672-3731)
# Address: 0x0dabefa8 - 0x0dabf1f8 (Size: 592 bytes, Frame: 128)
.globl mgrTM_FreeDMAPool
.ent mgrTM_FreeDMAPool
mgrTM_FreeDMAPool:
    # Line 3672
    addiu	$sp,$sp,-128
    sd	$ra,96($sp)
    sd	$s0,72($sp)
    move	$s0,$a0
    sd	$s1,80($sp)
    sd	$gp,88($sp)
    lui	$at,0x14
    sd	$s3,56($sp)
    # Line 3673
    lui	$s3,0x1
    addu	$s3,$a0,$s3
    lw	$s3,-28164($s3)
    # Line 3672
    addiu	$at,$at,-2320
    sd	$s4,64($sp)
    # Line 3673
    lh	$s4,32($s3)
    # Line 3672
    addu	$gp,$t9,$at
    # Line 3676
    addiu	$s1,$s3,1240
    slti	$at,$s4,2049
    bnez	$at,.L0dabf01c
    # Line 3675
    addiu	$s3,$s3,1052
    # Line 3684
    # lw $t9, -30704($gp) # &mgrTM_UnlockPages
.L0dabeff8:
    move	$a0,$s0
    move	$a1,$zero
    bal mgrTM_UnlockPages
    li	$a2,2048
    # Line 3685
    addiu	$s4,$s4,-2048
    slti	$at,$s4,2049
    beqz	$at,.L0dabeff8
    # Line 3684
    nop	# was lw $t9, -30704($gp) # &mgrTM_UnlockPages
    ld	$ra,96($sp)
.L0dabf01c:
    # Line 3685
    slti	$v0,$s4,2
    beqz	$v0,.L0dabf1b8
    # Line 3688
    move	$a0,$s0
.L0dabf028:
    lw	$v1,64($s3)
    bnez	$v1,.L0dabf11c
    ld	$s4,64($sp)
.L0dabf034:
    # Line 3700
    lw	$a0,0($s1)
    beqz	$a0,.L0dabf054
    ld	$s3,56($sp)
    # Line 3705
    # lw $t9, -17780($gp) # &adelete
    sd	$ra,96($sp)
    jal	adelete
    nop
    ld	$ra,96($sp)
.L0dabf054:
    lw	$a1,4($s1)
    beqzl	$a1,.L0dabf078
    # Line 3708
    lw	$s0,8($s1)
    # Line 3706
    lw	$t9,12($s0)
    sd	$ra,96($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,96($sp)
    # Line 3708
    lw	$s0,8($s1)
.L0dabf078:
    la	$at,__iob
    beqz	$s0,.L0dabf0d4
    la	$a2,sub_0dbe0000
    sd	$ra,96($sp)
    addiu	$a2,$a2,-16080
    addiu	$at,$at,32
    sd	$at,40($sp)
    addiu	$at,$a2,136
    addiu	$a2,$a2,120
    sd	$at,48($sp)
    sd	$a2,32($sp)
    # Line 3710
    # lw $t9, -17852($gp) # &munmap
.L0dabf0a8:
    lw	$a1,8($s0)
    jal	munmap
    lw	$a0,4($s0)
    bltz	$v0,.L0dabf180
    # Line 3720
    nop	# was lw $t9, -17784($gp) # &free
.L0dabf0bc:
    # Line 3718
    move	$a0,$s0
    # Line 3720
    jal	free
    # Line 3719
    lw	$s0,0($s0)
    # Line 3720
    bnez	$s0,.L0dabf0a8
    # Line 3710
    nop	# was lw $t9, -17852($gp) # &munmap
    ld	$ra,96($sp)
.L0dabf0d4:
    # Line 3723
    lw	$s0,12($s1)
    beqzl	$s0,.L0dabf104
    ld	$gp,88($sp)
    sd	$ra,96($sp)
    # Line 3727
    # lw $t9, -17784($gp) # &free
.L0dabf0e8:
    # Line 3725
    move	$a0,$s0
    # Line 3727
    jal	free
    # Line 3726
    lw	$s0,0($s0)
    # Line 3727
    bnez	$s0,.L0dabf0e8
    nop	# was lw $t9, -17784($gp) # &free
    ld	$ra,96($sp)
    ld	$gp,88($sp)
.L0dabf104:
    # Line 3731
    ld	$s0,72($sp)
    # Line 3730
    sw	$zero,4($s1)
    # Line 3729
    sw	$zero,0($s1)
    # Line 3731
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dabf11c:
    # Line 3696
    addiu	$a2,$sp,0
    sd	$ra,96($sp)
    lui	$a1,0x6d67
    ori	$a1,$a1,0xd
    # Line 3691
    li	$a4,3
    # Line 3692
    li	$a3,1
    # Line 3693
    sw	$a3,8($sp)
    # Line 3692
    sw	$a3,4($sp)
    # Line 3691
    sw	$a4,0($sp)
    # Line 3696
    # lw $t9, -17944($gp) # &ioctl
    # Line 3694
    lw	$v1,60($s3)
    # Line 3695
    li	$v0,4096
    sw	$v0,16($sp)
    # Line 3694
    sw	$v1,12($sp)
    # Line 3696
    jal	ioctl
    lw	$a0,31560($s0)
    bltz	$v0,.L0dabf1d4
    # Line 3700
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
.L0dabf164:
    move	$a0,$s0
    move	$a1,$s3
    addiu	$t9,$t9,-5144
    bal mgrTM_UnlockPages
    move	$a2,$zero
    b	.L0dabf034
    ld	$ra,96($sp)
.L0dabf180:
    # Line 3712
    # lw $t9, -17888($gp) # &perror
    jal	perror
    ld	$a0,32($sp)
    ld	$a0,40($sp)
    # Line 3713
    # lw $t9, -17908($gp) # &fprintf
    ld	$a1,48($sp)
    lw	$a3,8($s0)
    jal	fprintf
    lw	$a2,4($s0)
    # Line 3715
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabf0bc
    # Line 3720
    nop	# was lw $t9, -17784($gp) # &free
.L0dabf1b8:
    # Line 3688
    # lw $t9, -30704($gp) # &mgrTM_UnlockPages
    move	$a1,$zero
    sd	$ra,96($sp)
    bal mgrTM_UnlockPages
    addiu	$a2,$s4,-1
    b	.L0dabf028
    ld	$ra,96($sp)
.L0dabf1d4:
    # Line 3697
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15456
    # Line 3698
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dabf164
    # Line 3700
    nop	# was lw $t9, -32724($gp) # &sub_0dac0000
.end mgrTM_FreeDMAPool

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_403e000000000000:
    .word 0x403e0000, 0x00000000
_lit8_403f000000000000:
    .word 0x403f0000, 0x00000000
_lit8_408f400000000000:
    .word 0x408f4000, 0x00000000
_lit8_c08f400000000000:
    .word 0xc08f4000, 0x00000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_3fc00000:
    .word 0x3fc00000
_lit_40000000:
    .word 0x40000000
_lit_42800000:
    .word 0x42800000
_lit_447a0000:
    .word 0x447a0000
_lit_bf800000:
    .word 0xbf800000
_lit_c0800000:
    .word 0xc0800000
_lit_c47a0000:
    .word 0xc47a0000

