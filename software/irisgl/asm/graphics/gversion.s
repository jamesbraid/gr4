# Source: ../igloo/graphics/gversion.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/gversion.c -o gversion.T
# Total Functions: 6

.text

# Function: match_gfx
# Declared: Line 58 (Source lines: 59-70)
# Address: 0x0f0d8018 - 0x0f0d80a0 (Size: 136 bytes, Frame: 48)
.ent match_gfx
match_gfx:
    # Line 59
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    la	$s0,sub_0f030000
    addiu	$s0,$s0,-30232
    # Line 62
    lw	$at,0($s0)
    sd	$ra,0($sp)
    sd	$s1,8($sp)
    beqz	$at,.L0f0d8074
    # Line 59
    move	$s1,$a0
    sd	$ra,0($sp)
.L0f0d8040:
    # Line 64
    la	$t9,strlen
    jalr	$t9
    lw	$a0,4($s0)
    la	$t9,strncmp
    move	$a2,$v0
    move	$a0,$s1
    jalr	$t9
    lw	$a1,4($s0)
    beqz	$v0,.L0f0d808c
    # Line 66
    move	$v0,$s0
    # Line 62
    lw	$at,12($s0)
    bnez	$at,.L0f0d8040
    addiu	$s0,$s0,12
.L0f0d8074:
    # Line 70
    move	$v0,$s0
    ld	$ra,0($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0d808c:
    ld	$ra,0($sp)
    # Line 66
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end match_gfx

# Function: makeGversionString
# Declared: Line 73 (Source lines: 74-80)
# Address: 0x0f0d80a0 - 0x0f0d8104 (Size: 100 bytes, Frame: 192)
.ent makeGversionString
makeGversionString:
    # Line 74
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s8,8($sp)
    # Line 75
    la	$t9,strncpy
    # Line 74
    move	$s8,$a2
    sd	$ra,0($sp)
    # Line 75
    jalr	$t9
    li	$a2,7
    # Line 77
    la	$t9,strcat
    addiu	$a1,$gp,-18824
    move	$a0,$s0
    jalr	$t9
    # Line 76
    sb	$zero,7($s0)
    # Line 78
    la	$t9,strncat
    move	$a0,$s0
    move	$a1,$s8
    jalr	$t9
    li	$a2,3
    # Line 79
    sb	$zero,11($s0)
    # Line 80
    ld	$ra,0($sp)
    ld	$s0,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end makeGversionString

# Function: gl_g_gversion
# Declared: Line 82 (Source lines: 83-131)
# Address: 0x0f0d8104 - 0x0f0d8208 (Size: 260 bytes, Frame: 192)
.globl gl_g_gversion
.ent gl_g_gversion
gl_g_gversion:
    # Line 83
    addiu	$sp,$sp,-64
    sd	$gp,32($sp)
    sd	$ra,24($sp)
    lui	$ra,0xfff6
    addiu	$ra,$ra,-20156
    addu	$gp,$t9,$ra
    # Line 86
    la	$t9,sub_0f0e0000
    sd	$s0,16($sp)
    addiu	$t9,$t9,-32248
    bal gl_g_gversion
    # Line 83
    move	$s0,$a0
    # Line 88
    la	$t9,getenv
    jalr	$t9
    lw	$a0,-14808($gp)
    la	$a4,gl_sstatep
    lw	$a4,0($a4)
    beqz	$a4,.L0f0d8174
    nop
    bnez	$v0,.L0f0d8180
    # Line 108
    la	$t9,strncpy
    # Line 99
    la	$t9,strcpy
    lw	$a1,28($a4)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,260
    ld	$ra,24($sp)
    b	.L0f0d819c
    ld	$s0,16($sp)
.L0f0d8174:
    beqz	$v0,.L0f0d81ac
    # Line 123
    la	$t9,XOpenDisplay
    # Line 108
    la	$t9,strncpy
.L0f0d8180:
    move	$a0,$s0
    move	$a1,$v0
    jalr	$t9
    li	$a2,11
    # Line 109
    sb	$zero,11($s0)
    ld	$s0,16($sp)
    ld	$ra,24($sp)
.L0f0d819c:
    # Line 131
    move	$v0,$zero
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0d81ac:
    sd	$zero,8($sp)
    # Line 123
    jalr	$t9
    move	$a0,$zero
    move	$a2,$v0
    bnez	$v0,.L0f0d81e4
    sd	$v0,0($sp)
    # Line 128
    la	$t9,sub_0f0e0000
.L0f0d81c8:
    move	$a0,$s0
    addiu	$t9,$t9,-32024
    bal __iglooGetGraphicsType
    ld	$a1,8($sp)
    ld	$ra,24($sp)
    b	.L0f0d819c
    ld	$s0,16($sp)
.L0f0d81e4:
    # Line 125
    la	$t9,XDefaultScreen
    jalr	$t9
    move	$a0,$v0
    # Line 126
    la	$t9,XCloseDisplay
    sd	$v0,8($sp)
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0f0d81c8
    # Line 128
    la	$t9,sub_0f0e0000
.end gl_g_gversion

# Function: __iglooInitializeVersion
# Declared: Line 134 (Source lines: 135-167)
# Address: 0x0f0d8208 - 0x0f0d82a0 (Size: 152 bytes, Frame: 160)
.ent __iglooInitializeVersion
__iglooInitializeVersion:
    # Line 135
    la	$v0,gl_sstatep
    lw	$v0,0($v0)
    beqz	$v0,.L0f0d825c
    addiu	$sp,$sp,-3360
    # Line 141
    lw	$v1,28($v0)
    sd	$v1,3344($sp)
    lw	$v1,256($v1)
    bnez	$v1,.L0f0d825c
    # Line 150
    la	$t9,uname
    sd	$ra,3352($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 152
    ld	$a0,3344($sp)
    la	$t9,__iglooGetOpenGLStrings
    lw	$a1,8($a0)
    bal __iglooGetOpenGLStrings
    lw	$a0,4($a0)
    ld	$a1,3344($sp)
    ld	$ra,3352($sp)
    bnez	$v0,.L0f0d8264
    sw	$v0,256($a1)
.L0f0d825c:
    # Line 167
    jr	$ra
    addiu	$sp,$sp,3360
.L0f0d8264:
    # Line 159
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,-32744
    bal gl_g_ilbuffer
    lw	$a0,20($v0)
    # Line 163
    addiu	$a2,$sp,514
    ld	$at,3344($sp)
    la	$t9,sub_0f0e0000
    # Line 161
    lw	$ra,0($v0)
    # Line 163
    addiu	$a0,$at,260
    addiu	$t9,$t9,-32608
    # Line 161
    sw	$ra,272($at)
    # Line 163
    bal gl_g_ilbuffer
    lw	$a1,8($v0)
    b	.L0f0d825c
    ld	$ra,3352($sp)
.end __iglooInitializeVersion

# Function: __iglooGetGraphicsType
# Declared: Line 170 (Source lines: 171-187)
# Address: 0x0f0d82a0 - 0x0f0d82e8 (Size: 72 bytes, Frame: 16)
.globl __iglooGetGraphicsType
.ent __iglooGetGraphicsType
__iglooGetGraphicsType:
    # Line 171
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff6
    addiu	$ra,$ra,-20568
    addu	$gp,$t9,$ra
    # Line 174
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,-32248
    bal gl_g_gversion
    nop
    # Line 187
    la	$v0,gl_sstatep
    lw	$v0,0($v0)
    lw	$v0,28($v0)
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    lw	$v0,272($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooGetGraphicsType

# Function: gversionIoctl
# Declared: Line 190 (Source lines: 191-266)
# Address: 0x0f0d82e8 - 0x0f0d84a8 (Size: 448 bytes, Frame: 144)
.ent gversionIoctl
gversionIoctl:
    # Line 191
    addiu	$sp,$sp,-3472
    sd	$s1,3408($sp)
    move	$s1,$a1
    # Line 197
    li	$a1,40
    la	$t9,bzero
    sd	$a0,3432($sp)
    sd	$ra,3400($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    sd	$s0,3440($sp)
    # Line 203
    li	$a1,2048
    # Line 199
    sw	$s1,40($sp)
    # Line 200
    addiu	$a2,$sp,0
    # Line 201
    li	$a3,40
    sw	$a3,48($sp)
    # Line 203
    la	$t9,open
    la	$a0,sub_0f020000
    # Line 200
    sw	$a2,44($sp)
    # Line 203
    jalr	$t9
    addiu	$a0,$a0,13432
    move	$s0,$v0
    bltz	$v0,.L0f0d83fc
    ld	$ra,3400($sp)
    # Line 207
    la	$t9,ioctl
    move	$a0,$v0
    move	$a2,$zero
    jalr	$t9
    li	$a1,101
    blez	$v0,.L0f0d83fc
    ld	$ra,3400($sp)
    # Line 211
    la	$t9,ioctl
    move	$a0,$s0
    addiu	$a2,$sp,40
    jalr	$t9
    li	$a1,102
    bltz	$v0,.L0f0d83fc
    ld	$ra,3400($sp)
    # Line 219
    la	$t9,uname
    jalr	$t9
    addiu	$a0,$sp,56
    # Line 225
    la	$t9,strcmp
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,-14804($gp)
    beqz	$v0,.L0f0d8420
    la	$t9,strcmp
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,-14800($gp)
    beqz	$v0,.L0f0d8420
    la	$t9,strcmp
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,-14796($gp)
    beqz	$v0,.L0f0d8420
    # Line 257
    la	$t9,sub_0f0e0000
    addiu	$a0,$sp,0
    addiu	$t9,$t9,-32744
    bal gl_g_ilbuffer
    ld	$s1,3408($sp)
    move	$a5,$v0
.L0f0d83dc:
    ld	$a0,3432($sp)
.L0f0d83e0:
    # Line 259
    la	$t9,sub_0f0e0000
    addiu	$a2,$sp,570
    lw	$a1,8($a5)
    addiu	$t9,$t9,-32608
    bal gl_g_ilbuffer
    ld	$s1,3408($sp)
    ld	$ra,3400($sp)
.L0f0d83fc:
    bltz	$s0,.L0f0d8414
    ld	$s1,3408($sp)
    # Line 264
    la	$t9,close
    jalr	$t9
    move	$a0,$s0
    ld	$ra,3400($sp)
.L0f0d8414:
    # Line 266
    ld	$s0,3440($sp)
    jr	$ra
    addiu	$sp,$sp,3472
.L0f0d8420:
    # Line 225
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,-32744
    # Line 231
    bal gl_g_ilbuffer
    lw	$a0,-14804($gp)
    # Line 236
    la	$t9,__iglooMalloc
    sd	$v0,3416($sp)
    jalr	$t9
    lw	$a0,36($sp)
    move	$at,$v0
    sd	$v0,3424($sp)
    beqz	$v0,.L0f0d83dc
    ld	$a5,3416($sp)
    # Line 242
    addiu	$a2,$sp,40
    li	$a1,102
    move	$a0,$s0
    # Line 239
    sw	$v0,44($sp)
    # Line 242
    la	$t9,ioctl
    # Line 240
    lw	$v0,36($sp)
    # Line 238
    sw	$s1,40($sp)
    # Line 242
    jalr	$t9
    # Line 240
    sw	$v0,48($sp)
    ld	$a5,3416($sp)
    # Line 242
    bltz	$v0,.L0f0d83dc
    ld	$s1,3408($sp)
    ld	$v1,3424($sp)
    lbu	$v1,45($v1)
    bnez	$v1,.L0f0d83e0
    ld	$a0,3432($sp)
    la	$t9,sub_0f0e0000
    addiu	$t9,$t9,-32744
    # Line 250
    bal gl_g_ilbuffer
    lw	$a0,-14792($gp)
    b	.L0f0d83dc
    move	$a5,$v0
.end gversionIoctl

