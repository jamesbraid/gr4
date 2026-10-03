# Source: ../object/object.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/object.c -o object.T
# Total Functions: 7

.text

# Function: gl_initobjectstuff
# Declared: Line 23 (Source lines: 24-44)
# Address: 0x0f0f59ac - 0x0f0f59fc (Size: 80 bytes, Frame: 16)
.globl gl_initobjectstuff
.ent gl_initobjectstuff
gl_initobjectstuff:
    # Line 34
    li	$at,-1
    # Line 35
    li	$v1,1020
    # Line 24
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    lui	$a2,0xfff4
    addiu	$a2,$a2,-10084
    addu	$gp,$t9,$a2
    # Line 34
    la	$v0,gl_openobj
    # Line 36
    la	$a1,gl_objsizefrozen
    # Line 35
    la	$a0,gl_objchunksize
    # Line 43
    la	$t9,gl_init_intrp
    # Line 36
    sh	$zero,0($a1)
    # Line 35
    sw	$v1,0($a0)
    # Line 43
    jalr	$t9
    # Line 34
    sw	$at,0($v0)
    # Line 44
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_initobjectstuff

# Function: gl_g_getopenobj
# Declared: Line 46 (Source lines: 47-48)
# Address: 0x0f0f59fc - 0x0f0f5a14 (Size: 24 bytes, Frame: 0)
.globl gl_g_getopenobj
.ent gl_g_getopenobj
gl_g_getopenobj:
    # Line 47
    lui	$v1,0xfff4
    addiu	$v1,$v1,-10164
    addu	$at,$t9,$v1
    # Line 48
    lw	$v0,-32488($at)
    jr	$ra
    lw	$v0,0($v0)
.end gl_g_getopenobj

# Function: gl_g_makeobj
# Declared: Line 53 (Source lines: 55-62)
# Address: 0x0f0f5a14 - 0x0f0f5a78 (Size: 100 bytes, Frame: 32)
.globl gl_g_makeobj
.ent gl_g_makeobj
gl_g_makeobj:
    # Line 55
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-10188
    bltz	$a0,.L0f0f5a54
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 61
    la	$t9,gl_makeobject
    # Line 60
    la	$v1,gl_objsizefrozen
    li	$v0,1
    # Line 61
    bal gl_makeobject
    # Line 60
    sh	$v0,0($v1)
    # Line 62
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f5a54:
    # Line 57
    la	$t9,gl_ErrorHandler
    addiu	$a2,$gp,-14624
    li	$a1,2
    jalr	$t9
    li	$a0,38
    # Line 58
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_makeobj

# Function: gl_g_chunksize
# Declared: Line 65 (Source lines: 67-76)
# Address: 0x0f0f5a78 - 0x0f0f5aec (Size: 116 bytes, Frame: 32)
.globl gl_g_chunksize
.ent gl_g_chunksize
gl_g_chunksize:
    # Line 67
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfff4
    addiu	$at,$at,-10288
    blez	$a0,.L0f0f5ae4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f0f5a90:
    # Line 69
    la	$a2,gl_objsizefrozen
    lh	$v0,0($a2)
    beqz	$v0,.L0f0f5acc
    # Line 74
    la	$at,gl_objchunksize
    # Line 71
    li	$a1,2
    li	$a0,53
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$a2,-25416
    # Line 72
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0f5acc:
    ld	$gp,0($sp)
    # Line 76
    addiu	$sp,$sp,32
    # Line 74
    sw	$a0,0($at)
    # Line 75
    li	$v0,1
    # Line 76
    jr	$ra
    # Line 75
    sh	$v0,0($a2)
.L0f0f5ae4:
    b	.L0f0f5a90
    # Line 69
    li	$a0,1020
.end gl_g_chunksize

# Function: gl_makeobject
# Declared: Line 84 (Source lines: 86-148)
# Address: 0x0f0f5aec - 0x0f0f5ca4 (Size: 440 bytes, Frame: 48)
.globl gl_makeobject
.ent gl_makeobject
gl_makeobject:
    # Line 86
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    sd	$gp,0($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-10404 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$s1,gl_openobjhdr
    lw	$at,0($s1)
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    bnez	$at,.L0f0f5c3c
    move	$s0,$a0
    # Line 89
    la	$t9,__GLisobj
.L0f0f5b20:
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0f0f5b38
    # Line 90
    la	$t9,__GLdelobj
    jalr	$t9
    move	$a0,$s0
.L0f0f5b38:
    # Line 92
    la	$t9,gl_findhash
    move	$a0,$s0
    jalr	$t9
    li	$a1,-1
    bnez	$v0,.L0f0f5b78
    sw	$v0,0($s1)
    # Line 93
    la	$t9,gl_getnewobjhdr
    bal gl_getnewobjhdr
    move	$a0,$s0
    beqz	$v0,.L0f0f5c7c
    sw	$v0,0($s1)
    # Line 97
    la	$t9,gl_SetImmediateMode
    jalr	$t9
    move	$a0,$zero
    b	.L0f0f5b84
    nop
.L0f0f5b78:
    # Line 99
    la	$t9,gl_SetImmediateMode
    jalr	$t9
    move	$a0,$zero
.L0f0f5b84:
    # Line 101
    la	$t9,gl_addchunk
    la	$a0,sub_0f030000
    bal gl_addchunk
    addiu	$a0,$a0,-25400
    ld	$ra,24($sp)
    la	$a5,gl_currentpos
    # Line 121
    li	$a2,1
    # Line 101
    lw	$a1,0($s1)
    sw	$v0,0($a5)
    beqz	$v0,.L0f0f5c50
    sw	$v0,0($a1)
    # Line 119
    lw	$a1,0($s1)
    lw	$a0,0($a5)
    # Line 104
    la	$a4,gl_objchunksize
    # Line 119
    sw	$a0,20($a1)
    # Line 120
    lw	$v1,0($a4)
    lw	$v0,0($s1)
    lw	$at,0($a5)
    sra	$v1,$v1,0x1
    addu	$v1,$v1,$v1
    addu	$at,$at,$v1
    sw	$at,24($v0)
    # Line 121
    lw	$a3,0($s1)
    sw	$a2,28($a3)
    # Line 148
    li	$v0,1
    # Line 122
    lw	$a1,0($s1)
    # Line 126
    la	$at,gl_replacemode
    # Line 124
    la	$a3,gl_currentend
    # Line 122
    sw	$zero,8($a1)
    # Line 123
    la	$v1,gl_n_retsym
    lw	$a0,0($a5)
    # Line 125
    la	$s1,gl_openobj
    ld	$gp,0($sp)
    # Line 123
    sw	$v1,0($a0)
    # Line 126
    sw	$zero,0($at)
    # Line 125
    sw	$s0,0($s1)
    # Line 148
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    # Line 124
    lw	$a4,0($a4)
    lw	$a2,0($a5)
    # Line 148
    addiu	$sp,$sp,48
    # Line 124
    sra	$a4,$a4,0x1
    addu	$a4,$a4,$a4
    addu	$a2,$a2,$a4
    # Line 148
    jr	$ra
    # Line 124
    sw	$a2,0($a3)
.L0f0f5c3c:
    # Line 88
    la	$t9,__GLcloseobj
    jalr	$t9
    nop
    b	.L0f0f5b20
    # Line 89
    la	$t9,__GLisobj
.L0f0f5c50:
    # Line 103
    la	$t9,gl_SetImmediateMode
    li	$a0,1
    jalr	$t9
    # Line 102
    sw	$zero,0($s1)
    # Line 104
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f5c7c:
    # Line 94
    la	$t9,gl_SetImmediateMode
    jalr	$t9
    li	$a0,1
    # Line 95
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_makeobject

# Function: gl_getnewobjhdr
# Declared: Line 153 (Source lines: 155-169)
# Address: 0x0f0f5ca4 - 0x0f0f5d58 (Size: 180 bytes, Frame: 48)
.globl gl_getnewobjhdr
.ent gl_getnewobjhdr
gl_getnewobjhdr:
    # Line 155
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,-10844 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 157
    la	$t9,gl_malloc
    li	$a0,32
    sd	$ra,24($sp)
    jalr	$t9
    lw	$a1,-14632($gp)
    move	$v1,$v0
    bnez	$v0,.L0f0f5cf0
    sd	$v0,8($sp)
    # Line 158
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f5cf0:
    # Line 165
    li	$a2,-1
    ld	$a1,0($sp)
    move	$a0,$v0
    # Line 164
    sw	$zero,20($v0)
    # Line 163
    sw	$zero,16($v0)
    # Line 162
    sw	$zero,12($v0)
    # Line 165
    la	$t9,gl_addhash
    # Line 161
    sw	$zero,4($v0)
    # Line 160
    sw	$zero,28($v0)
    # Line 165
    jalr	$t9
    # Line 159
    sw	$zero,0($v0)
    # Line 165
    beqz	$v0,.L0f0f5d34
    # Line 169
    ld	$ra,24($sp)
    ld	$v0,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f5d34:
    # Line 166
    la	$t9,gl_free
    ld	$a0,8($sp)
    jalr	$t9
    lw	$a1,-14632($gp)
    # Line 167
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_getnewobjhdr

# Function: gl_addchunk
# Declared: Line 172 (Source lines: 174-188)
# Address: 0x0f0f5d58 - 0x0f0f5e28 (Size: 208 bytes, Frame: 48)
.globl gl_addchunk
.ent gl_addchunk
gl_addchunk:
    # Line 174
    move	$a1,$a0
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff4 (gp disp hi)
    # addiu	at,at,-11024 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 178
    la	$t9,gl_malloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,8
    bnez	$v0,.L0f0f5da0
    sd	$v0,8($sp)
    # Line 179
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0f5da0:
    # Line 180
    la	$t9,gl_malloc
    # Line 179
    la	$a0,gl_objchunksize
    # Line 180
    ld	$a1,0($sp)
    jalr	$t9
    lw	$a0,0($a0)
    beqz	$v0,.L0f0f5e04
    la	$ra,gl_objchunksize
    # Line 184
    ld	$at,8($sp)
    # Line 182
    la	$a3,gl_openobjhdr
    # Line 184
    sw	$v0,4($at)
    # Line 185
    lw	$a2,0($a3)
    lw	$a2,4($a2)
    sw	$a2,0($at)
    # Line 186
    lw	$v1,0($a3)
    sw	$at,4($v1)
    # Line 187
    lw	$a3,0($a3)
    lw	$ra,0($ra)
    lw	$a2,12($a3)
    sra	$ra,$ra,0x1
    addu	$a2,$a2,$ra
    # Line 188
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 187
    sw	$a2,12($a3)
.L0f0f5e04:
    # Line 181
    la	$t9,gl_free
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a1,0($sp)
    # Line 182
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_addchunk

