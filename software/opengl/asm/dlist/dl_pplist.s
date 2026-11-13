# Source: ../dlist/dl_pplist.c
# Category: dlist
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_pplist.c
# Total Functions: 9

.text

# Function: __glSPExecuteDlist
# Declared: Line 36 (Source lines: 36-41)
# Address: 0x0db03f3c - 0x0db03f70 (Size: 52 bytes, Frame: 32)
.globl __glSPExecuteDlist
.ent __glSPExecuteDlist
__glSPExecuteDlist:
    # Line 36
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x10
    addiu	$at,$at,-22692
    addu	$gp,$t9,$at
    # Line 40
    # lw $t9, -18672($gp) # &__glSPInterpret
    sd	$ra,0($sp)
    jal	__glSPInterpret
    lw	$a0,16($a1)
    # Line 41
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSPExecuteDlist

# Function: __glSPDlistAddFree
# Declared: Line 61 (Source lines: 61-71)
# Address: 0x0db03f70 - 0x0db04008 (Size: 152 bytes, Frame: 224)
.globl __glSPDlistAddFree
.ent __glSPDlistAddFree
__glSPDlistAddFree:
    # Line 61
    addiu	$sp,$sp,-96
    sd	$a0,0($sp)
    sd	$a1,24($sp)
    # Line 65
    lw	$a1,4768($a0)
    sd	$a2,32($sp)
    sd	$ra,48($sp)
    sd	$gp,40($sp)
    # Line 61
    lui	$v1,0x10
    move	$v0,$a0
    # Line 64
    lw	$at,4772($v0)
    # Line 61
    addiu	$v1,$v1,-22744
    addu	$gp,$t9,$v1
    # Line 65
    lw	$t9,4720($v0)
    sd	$at,16($sp)
    sll	$at,$at,0x3
    sd	$at,8($sp)
    jalr	$t9
    addiu	$a2,$at,8
    # Line 67
    ld	$at,8($sp)
    ld	$v1,24($sp)
    # Line 68
    ld	$ra,32($sp)
    # Line 65
    bnez	$v0,.L0db03fdc
    # Line 70
    ld	$a3,0($sp)
    ld	$gp,40($sp)
    # Line 66
    ld	$ra,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db03fdc:
    ld	$gp,40($sp)
    ld	$a4,16($sp)
    # Line 67
    addu	$at,$v0,$at
    # Line 68
    sw	$ra,4($at)
    # Line 71
    ld	$ra,48($sp)
    addiu	$sp,$sp,96
    # Line 67
    sw	$v1,0($at)
    # Line 69
    sw	$v0,4768($a3)
    # Line 70
    addiu	$a4,$a4,1
    # Line 71
    jr	$ra
    # Line 70
    sw	$a4,4772($a3)
.end __glSPDlistAddFree

# Function: __glSPFreeDlist
# Declared: Line 74 (Source lines: 74-94)
# Address: 0x0db04008 - 0x0db040f8 (Size: 240 bytes, Frame: 208)
.globl __glSPFreeDlist
.ent __glSPFreeDlist
__glSPFreeDlist:
    # Line 74
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$s2,0($sp)
    # Line 77
    lw	$s2,40($a1)
    sd	$gp,32($sp)
    sd	$s4,8($sp)
    # Line 76
    lw	$s4,36($a1)
    # Line 74
    lui	$at,0x10
    addiu	$at,$at,-22896
    # Line 77
    beqz	$s4,.L0db04064
    # Line 74
    addu	$gp,$t9,$at
    # Line 80
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a0,$s0
    sd	$ra,48($sp)
    addiu	$t9,$t9,17420
    bal __glsplc_AddIlist
    lw	$a1,12($s1)
    # Line 81
    addiu	$s4,$s4,-1
    sd	$s5,40($sp)
    ld	$ra,48($sp)
.L0db04064:
    # Line 86
    addiu	$s4,$s4,-1
    sd	$s5,40($sp)
    li	$s5,-1
    beq	$s5,$s4,.L0db04094
    sd	$ra,48($sp)
.L0db04078:
    # Line 87
    lw	$t9,0($s2)
    move	$a0,$s0
    jal	sub_0db00000
    lw	$a1,4($s2)
    # Line 86
    addiu	$s4,$s4,-1
    bne	$s5,$s4,.L0db04078
    # Line 88
    addiu	$s2,$s2,8
.L0db04094:
    # Line 90
    move	$a0,$s0
    lw	$a1,40($s1)
    lw	$t9,4724($s0)
    ld	$s5,40($sp)
    ld	$s4,8($sp)
    jalr	$t9
    ld	$s2,0($sp)
    # Line 91
    lw	$t9,4724($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,16($s1)
    # Line 92
    lw	$t9,4724($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,20($s1)
    # Line 93
    lw	$t9,4724($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$gp,32($sp)
    # Line 94
    ld	$ra,48($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSPFreeDlist

# Function: __glSPDlistCompiler
# Declared: Line 96 (Source lines: 96-146)
# Address: 0x0db040f8 - 0x0db0423c (Size: 324 bytes, Frame: 208)
.globl __glSPDlistCompiler
.ent __glSPDlistCompiler
__glSPDlistCompiler:
    # Line 96
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    sd	$s5,56($sp)
    sd	$a1,0($sp)
    # Line 101
    li	$a1,72
    sd	$ra,40($sp)
    sd	$s2,16($sp)
    sd	$s4,32($sp)
    sd	$gp,48($sp)
    # Line 96
    lui	$t8,0x10
    sd	$s0,24($sp)
    move	$s0,$a0
    addiu	$t8,$t8,-23136
    addu	$gp,$t9,$t8
    # Line 101
    lw	$t9,4716($s0)
    # Line 98
    lw	$s4,4132($zero)
    # Line 99
    lw	$s2,4772($s0)
    # Line 101
    jalr	$t9
    # Line 98
    sltu	$s4,$zero,$s4
    # Line 101
    move	$s5,$v0
    beqz	$v0,.L0db04214
    move	$s1,$v0
    # Line 103
    li	$a2,1
    sw	$a2,0($s5)
    # Line 104
    lw	$v1,4668($s0)
    sw	$v1,4($s5)
    # Line 106
    lw	$at,4776($s0)
    beqz	$s4,.L0db04184
    sw	$at,32($s5)
    # Line 109
    # lw $t9, -31752($gp) # &__glsplc_AddSentinel
    jal	__glsplc_AddSentinel
    nop
    # Line 111
    lw	$a3,4676($s0)
    b	.L0db0418c
    sw	$a3,8($s5)
.L0db04184:
    # Line 116
    la	$at,__glEmptyExecuteDlist
    sw	$at,8($s5)
.L0db0418c:
    # Line 120
    lw	$a2,4776($s0)
    # Line 122
    ld	$v1,0($sp)
    # Line 120
    sw	$a2,32($s5)
    # Line 122
    lw	$v1,12($v1)
    beqz	$s4,.L0db041a8
    sw	$v1,12($s5)
    # Line 124
    addiu	$s2,$s2,1
.L0db041a8:
    # Line 127
    sw	$s2,36($s5)
    # Line 128
    lw	$at,4768($s0)
    sw	$at,40($s5)
    # Line 133
    lw	$t9,4780($s0)
    # Line 140
    lwc1	$f0,_lit_3f800000
    # Line 133
    sw	$t9,16($s5)
    # Line 135
    lw	$a3,4784($s0)
    # Line 140
    swc1	$f0,44($s1)
    # Line 136
    sw	$zero,20($s1)
    # Line 135
    sw	$a3,24($s1)
    sw	$a3,28($s1)
    # Line 140
    lw	$t9,4736($s0)
    beqz	$t9,.L0db041f0
    ld	$s5,56($sp)
    # Line 144
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    ld	$s5,56($sp)
.L0db041f0:
    ld	$gp,48($sp)
    # Line 146
    ld	$s0,24($sp)
    move	$v0,$s1
    ld	$s1,8($sp)
    ld	$ra,40($sp)
    ld	$s2,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db04214:
    # Line 102
    ld	$ra,40($sp)
    move	$v0,$zero
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    ld	$s4,32($sp)
    ld	$s5,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSPDlistCompiler

# Function: __glSPDlistSpace
# Declared: Line 170 (Source lines: 170-236)
# Address: 0x0db0423c - 0x0db04380 (Size: 324 bytes, Frame: 192)
.globl __glSPDlistSpace
.ent __glSPDlistSpace
__glSPDlistSpace:
    # Line 173
    sltiu	$at,$a0,2
    # Line 170
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 173
    lw	$s1,__glCurrentContext
    sd	$s0,24($sp)
    # Line 170
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$v0,0x10
    addiu	$v0,$v0,-23460
    # Line 173
    bnez	$at,.L0db04278
    # Line 170
    addu	$gp,$t9,$v0
    # Line 182
    addiu	$v1,$s0,2
    sd	$ra,32($sp)
    b	.L0db04284
    sw	$v1,0($sp)
.L0db04278:
    # Line 189
    li	$a1,256
    sd	$ra,32($sp)
    sw	$a1,0($sp)
.L0db04284:
    # Line 195
    lw	$t9,4728($s1)
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$sp,0
    beqz	$v0,.L0db04358
    ld	$ra,32($sp)
    # Line 202
    lw	$a0,4132($zero)
    # Line 203
    beqz	$a0,.L0db042f8
    sw	$v0,4132($zero)
    # Line 206
    beqz	$s0,.L0db04324
    sw	$v0,0($a0)
.L0db042b0:
    # Line 224
    lw	$a2,4132($zero)
.L0db042b4:
    ld	$gp,8($sp)
    # Line 236
    ld	$s1,16($sp)
    # Line 224
    sw	$zero,0($a2)
    # Line 226
    sw	$zero,4140($zero)
    beqz	$s0,.L0db04300
    lw	$a0,4132($zero)
    ld	$gp,8($sp)
    # Line 229
    addiu	$s1,$a0,8
    sw	$s1,4136($zero)
    # Line 230
    lw	$s0,0($sp)
    ld	$s1,16($sp)
    addiu	$v0,$s0,-2
    addiu	$s0,$s0,-2
    sw	$s0,4128($zero)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db042f8:
    b	.L0db042b0
    # Line 219
    sw	$v0,4704($s1)
.L0db04300:
    # Line 234
    addiu	$v0,$a0,12
    sw	$v0,4136($zero)
    # Line 236
    lw	$at,0($sp)
    ld	$s0,24($sp)
    addiu	$sp,$sp,64
    addiu	$v0,$at,-4
    addiu	$at,$at,-4
    jr	$ra
    sw	$at,4128($zero)
.L0db04324:
    # Line 206
    lw	$v0,4140($zero)
    beqzl	$v0,.L0db042b4
    # Line 224
    lw	$a2,4132($zero)
    # Line 211
    lw	$a1,4136($zero)
    # Line 215
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    # Line 211
    sll	$a2,$v0,0x2
    subu	$a1,$a1,$a2
    addiu	$a1,$a1,-4
    # Line 213
    sw	$v0,0($a1)
    # Line 215
    bal __glsplc_AddIlist
    lw	$a0,4748($s1)
    b	.L0db042b0
    ld	$ra,32($sp)
.L0db04358:
    # Line 198
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 199
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSPDlistSpace

# Function: __glsplc_AddIlist
# Declared: Line 241 (Source lines: 241-251)
# Address: 0x0db04380 - 0x0db0440c (Size: 140 bytes, Frame: 208)
.globl __glsplc_AddIlist
.ent __glsplc_AddIlist
__glsplc_AddIlist:
    # Line 241
    addiu	$sp,$sp,-80
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    # Line 244
    lw	$a3,__glCurrentContext
    # Line 241
    move	$s8,$a0
    sd	$a1,48($sp)
    sd	$a3,40($sp)
    # Line 246
    lw	$a1,4780($a3)
    move	$a0,$a3
    sd	$gp,16($sp)
    # Line 241
    lui	$a4,0x10
    addiu	$a4,$a4,-23784
    # Line 246
    lw	$a2,4784($a3)
    # Line 241
    addu	$gp,$t9,$a4
    # Line 246
    lw	$t9,8($a3)
    sd	$a2,32($sp)
    sll	$a2,$a2,0x3
    sd	$a2,24($sp)
    jalr	$t9
    addiu	$a2,$a2,8
    ld	$gp,16($sp)
    # Line 247
    ld	$v1,24($sp)
    # Line 248
    ld	$at,48($sp)
    ld	$ra,32($sp)
    # Line 247
    addu	$v1,$v0,$v1
    sw	$s8,0($v1)
    # Line 250
    ld	$s8,40($sp)
    addiu	$ra,$ra,1
    # Line 248
    sw	$at,4($v1)
    # Line 250
    sw	$ra,4784($s8)
    # Line 251
    ld	$ra,0($sp)
    # Line 249
    sw	$v0,4780($s8)
    # Line 251
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_AddIlist

# Function: __glSPDlistFreeSegments
# Declared: Line 254 (Source lines: 254-266)
# Address: 0x0db0440c - 0x0db0444c (Size: 64 bytes, Frame: 48)
.ent __glSPDlistFreeSegments
__glSPDlistFreeSegments:
    # Line 254
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    sd	$ra,8($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
.L0db04420:
    # Line 260
    lw	$t9,4732($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 258
    lw	$s1,0($a1)
    # Line 264
    bnez	$s1,.L0db04420
    move	$a1,$s1
    ld	$ra,8($sp)
    # Line 266
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glSPDlistFreeSegments

# Function: __glSPCreatePlist
# Declared: Line 282 (Source lines: 282-299)
# Address: 0x0db0444c - 0x0db044ec (Size: 160 bytes, Frame: 192)
.globl __glSPCreatePlist
.ent __glSPCreatePlist
__glSPCreatePlist:
    # Line 282
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    # Line 284
    move	$s1,$zero
    sd	$ra,24($sp)
    sd	$s7,8($sp)
    sd	$gp,0($sp)
    # Line 282
    lui	$a2,0x10
    sd	$s5,16($sp)
    move	$s5,$a1
    # Line 288
    lw	$a1,24($a1)
    # Line 282
    addiu	$a2,$a2,-23988
    addu	$gp,$t9,$a2
    # Line 288
    lw	$t9,0($a0)
    # Line 286
    lw	$s7,16($s5)
    # Line 288
    sll	$a1,$a1,0x3
    jalr	$t9
    addiu	$a1,$a1,-8
    move	$a1,$v0
    # Line 299
    ld	$ra,24($sp)
    # Line 288
    move	$a3,$s7
    # Line 299
    ld	$s7,8($sp)
.L0db044a0:
    # Line 295
    lw	$a0,4($a3)
    lw	$a0,0($a0)
    sw	$a0,4($a1)
    # Line 296
    lw	$v1,4($a3)
    addiu	$v1,$v1,4
    sw	$v1,0($a1)
    # Line 297
    lw	$at,24($s5)
    addiu	$a3,$a3,8
    addiu	$s1,$s1,1
    addiu	$at,$at,-1
    slt	$at,$s1,$at
    bnez	$at,.L0db044a0
    addiu	$a1,$a1,8
    ld	$gp,0($sp)
    # Line 299
    ld	$s1,32($sp)
    # Line 298
    sw	$v0,20($s5)
    # Line 299
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSPCreatePlist

# Function: __glSPValidateDlist
# Declared: Line 306 (Source lines: 306-313)
# Address: 0x0db044ec - 0x0db04520 (Size: 52 bytes, Frame: 32)
.globl __glSPValidateDlist
.ent __glSPValidateDlist
__glSPValidateDlist:
    # Line 306
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x10
    addiu	$at,$at,-24148
    addu	$gp,$t9,$at
    # lw $t9, -29240($gp) # &__glSPExecuteDlist
    sd	$ra,0($sp)
    # Line 312
    jal	__glSPExecuteDlist
    # Line 311
    sw	$t9,8($a1)
    # Line 313
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSPValidateDlist

.rdata
_lit_3f800000:
    .word 0x3f800000

