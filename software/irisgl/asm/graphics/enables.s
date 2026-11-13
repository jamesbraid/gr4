# Source: ../igloo/graphics/enables.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/enables.c -o enables.T
# Total Functions: 6

.text

# Function: getEnableInfo
# Declared: Line 10 (Source lines: 15-26)
# Address: 0x0f0bc658 - 0x0f0bc688 (Size: 48 bytes, Frame: 0)
.ent getEnableInfo
getEnableInfo:
    # Line 17
    la	$v0,sub_0f020000
    # Line 15
    li	$a3,45
    # Line 17
    addiu	$v0,$v0,32408
.L0f0bc664:
    lw	$v1,0($v0)
    beq	$v1,$a0,.L0f0bc680
    addiu	$a3,$a3,-1
    bnez	$a3,.L0f0bc664
    addiu	$v0,$v0,16
    # Line 26
    jr	$ra
    move	$v0,$zero
.L0f0bc680:
    # Line 20
    jr	$ra
    nop
.end getEnableInfo

# Function: getEnableAddress
# Declared: Line 29 (Source lines: 30-41)
# Address: 0x0f0bc688 - 0x0f0bc6d0 (Size: 72 bytes, Frame: 32)
.ent getEnableAddress
getEnableAddress:
    # Line 35
    la	$t9,sub_0f0c0000
    # Line 30
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # Line 35
    addiu	$t9,$t9,-14760
    bal gl_dgl_default_display
    sd	$a1,0($sp)
    # Line 39
    ld	$v1,0($sp)
    # Line 35
    beqz	$v0,.L0f0bc6c0
    move	$a1,$v0
    ld	$ra,8($sp)
    # Line 39
    lw	$v0,4($a1)
    addiu	$sp,$sp,32
    jr	$ra
    addu	$v0,$v0,$v1
.L0f0bc6c0:
    ld	$ra,8($sp)
    # Line 41
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end getEnableAddress

# Function: __iglooSetEnable
# Declared: Line 44 (Source lines: 45-108)
# Address: 0x0f0bc6d0 - 0x0f0bc81c (Size: 332 bytes, Frame: 192)
.globl __iglooSetEnable
.ent __iglooSetEnable
__iglooSetEnable:
    # Line 45
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    # Line 51
    lw	$v0,4100($zero)
    # Line 45
    lui	$at,0xfff7
    addiu	$at,$at,27512
    # Line 51
    bnez	$v0,.L0f0bc708
    # Line 45
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    ld	$gp,16($sp)
    # Line 56
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0bc708:
    # Line 58
    la	$t9,sub_0f0c0000
    move	$a0,$s0
    sd	$ra,32($sp)
    addiu	$t9,$t9,-14712
    bal gl_dgl_default_display
    addiu	$a1,$v0,100
    beqz	$v0,.L0f0bc78c
    ld	$ra,32($sp)
    li	$at,2896
    beq	$s0,$at,.L0f0bc7ac
    # Line 83
    ld	$a2,8($sp)
    lbu	$v1,0($v0)
    li	$at,1
    beq	$v1,$a2,.L0f0bc77c
    ld	$a3,8($sp)
    bne	$a3,$at,.L0f0bc760
    sd	$v0,0($sp)
    # Line 90
    la	$t9,glEnable
    jalr	$t9
    move	$a0,$s0
    b	.L0f0bc770
    ld	$ra,32($sp)
.L0f0bc760:
    # Line 92
    la	$t9,glDisable
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
.L0f0bc770:
    ld	$a2,0($sp)
    # Line 94
    ld	$v1,8($sp)
    sb	$v1,0($a2)
.L0f0bc77c:
    ld	$gp,16($sp)
    # Line 108
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0bc78c:
    # Line 94
    ld	$a3,8($sp)
    li	$at,1
    beq	$a3,$at,.L0f0bc7d0
    # Line 105
    la	$t9,glDisable
    jalr	$t9
    move	$a0,$s0
    b	.L0f0bc77c
    ld	$ra,32($sp)
.L0f0bc7ac:
    # Line 58
    ld	$v1,8($sp)
    li	$a2,1
    beq	$v1,$a2,.L0f0bc800
    # Line 74
    ld	$at,8($sp)
    lbu	$a3,0($v0)
    bne	$a3,$at,.L0f0bc7e4
.L0f0bc7c4:
    ld	$v1,8($sp)
    # Line 83
    b	.L0f0bc77c
    sb	$v1,0($v0)
.L0f0bc7d0:
    # Line 103
    la	$t9,glEnable
    jalr	$t9
    move	$a0,$s0
    b	.L0f0bc77c
    ld	$ra,32($sp)
.L0f0bc7e4:
    # Line 81
    la	$t9,glDisable
    sd	$v0,0($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$v0,0($sp)
    b	.L0f0bc7c4
    ld	$ra,32($sp)
.L0f0bc800:
    # Line 74
    la	$t9,glEnable
    sd	$v0,0($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$v0,0($sp)
    b	.L0f0bc7c4
    ld	$ra,32($sp)
.end __iglooSetEnable

# Function: __iglooIsEnabled
# Declared: Line 110 (Source lines: 111-163)
# Address: 0x0f0bc81c - 0x0f0bc8d8 (Size: 188 bytes, Frame: 48)
.globl __iglooIsEnabled
.ent __iglooIsEnabled
__iglooIsEnabled:
    # Line 111
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    # Line 116
    lw	$v0,4100($zero)
    # Line 111
    lui	$at,0xfff7
    addiu	$at,$at,27180
    # Line 116
    beqz	$v0,.L0f0bc880
    # Line 111
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 122
    la	$t9,sub_0f0c0000
    move	$a0,$s0
    sd	$ra,16($sp)
    addiu	$t9,$t9,-14712
    bal gl_dgl_default_display
    addiu	$a1,$v0,100
    beqz	$v0,.L0f0bc8bc
    ld	$ra,16($sp)
    li	$at,2896
    bne	$s0,$at,.L0f0bc898
    lbu	$a3,0($v0)
    bnez	$a3,.L0f0bc8a4
    ld	$s0,0($sp)
    # Line 140
    move	$a0,$zero
    b	.L0f0bc88c
    # Line 163
    move	$v0,$a0
.L0f0bc880:
    # Line 161
    move	$a0,$zero
    ld	$s0,0($sp)
.L0f0bc888:
    # Line 163
    move	$v0,$a0
.L0f0bc88c:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bc898:
    # Line 149
    move	$a0,$a3
    b	.L0f0bc888
    ld	$s0,0($sp)
.L0f0bc8a4:
    # Line 144
    la	$t9,glIsEnabled
    jalr	$t9
    li	$a0,2896
    andi	$a0,$v0,0xff
    b	.L0f0bc888
    ld	$ra,16($sp)
.L0f0bc8bc:
    # Line 156
    la	$t9,glIsEnabled
    jalr	$t9
    move	$a0,$s0
    andi	$a0,$v0,0xff
    ld	$ra,16($sp)
    b	.L0f0bc888
    ld	$s0,0($sp)
.end __iglooIsEnabled

# Function: __iglooInitializeEnables
# Declared: Line 189 (Source lines: 190-206)
# Address: 0x0f0bc8d8 - 0x0f0bc958 (Size: 128 bytes, Frame: 0)
.globl __iglooInitializeEnables
.ent __iglooInitializeEnables
__iglooInitializeEnables:
    # Line 190
    lui	$v1,0xfff7
    addiu	$v1,$v1,26992
    addu	$at,$t9,$v1
    # Line 199
    lw	$v0,-32680($at)
    addiu	$v0,$v0,32408
    addiu	$a4,$v0,16
    # Line 202
    lw	$v1,4($v0)
    lbu	$v0,8($v0)
    # Line 199
    li	$a3,44
    # Line 202
    addu	$v1,$v1,$a0
    sb	$v0,0($v1)
.L0f0bc904:
    lw	$v1,4($a4)
    lbu	$v0,8($a4)
    addu	$v1,$v1,$a0
    sb	$v0,0($v1)
    lw	$a2,20($a4)
    lbu	$a1,24($a4)
    addu	$a2,$a2,$a0
    sb	$a1,0($a2)
    lw	$v1,36($a4)
    lbu	$v0,40($a4)
    addu	$v1,$v1,$a0
    sb	$v0,0($v1)
    # Line 199
    addiu	$a4,$a4,64
    # Line 202
    lw	$a2,-12($a4)
    # Line 199
    addiu	$a3,$a3,-4
    # Line 202
    lbu	$a1,-8($a4)
    addu	$a2,$a2,$a0
    # Line 199
    bnez	$a3,.L0f0bc904
    # Line 202
    sb	$a1,0($a2)
    # Line 206
    jr	$ra
    nop
.end __iglooInitializeEnables

# Function: __iglooCloneEnables
# Declared: Line 208 (Source lines: 209-255)
# Address: 0x0f0bc958 - 0x0f0bca40 (Size: 232 bytes, Frame: 208)
.globl __iglooCloneEnables
.ent __iglooCloneEnables
__iglooCloneEnables:
    # Line 209
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$s2,48($sp)
    # Line 227
    li	$s2,1
    sd	$s1,8($sp)
    # Line 225
    li	$s1,45
    sd	$s3,40($sp)
    # Line 219
    lw	$s3,4100($zero)
    sd	$s0,16($sp)
    sd	$gp,0($sp)
    sd	$s4,24($sp)
    # Line 209
    lui	$s4,0xfff7
    addiu	$s4,$s4,26864
    addu	$gp,$t9,$s4
    # Line 227
    la	$s0,sub_0f020000
    # Line 209
    move	$s4,$a0
    b	.L0f0bc9e0
    # Line 227
    addiu	$s0,$s0,32408
.L0f0bc9a0:
    # Line 236
    lw	$a3,4($s0)
.L0f0bc9a4:
    addu	$a2,$a3,$s3
    # Line 237
    addu	$a3,$a3,$s4
    lbu	$a3,0($a3)
    # Line 236
    addiu	$a2,$a2,100
    # Line 237
    lbu	$at,0($a2)
    beq	$at,$a3,.L0f0bc9d8
    nop
    # Line 241
    sb	$a3,0($a2)
    beq	$s2,$a3,.L0f0bca08
    lw	$a0,0($s0)
    # Line 249
    la	$t9,glDisable
    jalr	$t9
    nop
.L0f0bc9d8:
    # Line 227
    beqz	$s1,.L0f0bca1c
    addiu	$s0,$s0,16
.L0f0bc9e0:
    # Line 233
    lw	$a0,12($s0)
    beqz	$a0,.L0f0bc9a0
    # Line 227
    addiu	$s1,$s1,-1
    # Line 233
    la	$t9,__iglooIsExtensionSupported
    jalr	$t9
    nop
    bne	$s2,$v0,.L0f0bc9d8
    nop
    b	.L0f0bc9a4
    # Line 236
    lw	$a3,4($s0)
.L0f0bca08:
    # Line 245
    la	$t9,glEnable
    jalr	$t9
    nop
    b	.L0f0bc9d8
    nop
.L0f0bca1c:
    ld	$gp,0($sp)
    # Line 255
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,48($sp)
    ld	$ra,32($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __iglooCloneEnables

