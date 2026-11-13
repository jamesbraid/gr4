# Source: ../igloo/light/linit.c
# Category: light
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/light/linit.c -o linit.T
# Total Functions: 3

.text

# Function: gl_init_lighting
# Declared: Line 19 (Source lines: 23-31)
# Address: 0x0f0d9898 - 0x0f0d98d8 (Size: 64 bytes, Frame: 0)
.globl gl_init_lighting
.ent gl_init_lighting
gl_init_lighting:
    # Line 25
    sh	$zero,3036($a0)
    # Line 24
    sw	$zero,3032($a0)
    # Line 23
    sw	$zero,3028($a0)
    # Line 25
    move	$a2,$a0
    # Line 27
    sw	$zero,3068($a2)
    sw	$zero,3064($a2)
    sw	$zero,3060($a2)
    sw	$zero,3056($a2)
    sw	$zero,3052($a2)
    sw	$zero,3048($a2)
    sw	$zero,3044($a2)
    sw	$zero,3040($a2)
    # Line 30
    sw	$zero,3072($a0)
    # Line 29
    sw	$zero,3076($a0)
    # Line 31
    jr	$ra
    # Line 28
    sw	$zero,3024($a0)
.end gl_init_lighting

# Function: __iglooRebindLights
# Declared: Line 44 (Source lines: 45-71)
# Address: 0x0f0d98d8 - 0x0f0d99b8 (Size: 224 bytes, Frame: 224)
.globl __iglooRebindLights
.ent __iglooRebindLights
__iglooRebindLights:
    # Line 45
    addiu	$sp,$sp,-96
    sd	$s2,64($sp)
    sd	$s4,32($sp)
    sd	$ra,40($sp)
    sd	$s6,48($sp)
    # Line 50
    li	$s6,8
    sd	$s0,24($sp)
    li	$s0,16384
    sd	$s3,56($sp)
    move	$s3,$zero
    sd	$s5,8($sp)
    # Line 45
    move	$s5,$a0
    sd	$s1,16($sp)
    # Line 50
    move	$s1,$a0
    sd	$gp,0($sp)
    # Line 45
    lui	$at,0xfff6
    addiu	$at,$at,-26256
    b	.L0f0d9944
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f0d9924:
    # Line 66
    move	$a0,$s0
    move	$a1,$s2
    bal __iglooSetOglAttenuation
    lw	$a2,16($s4)
.L0f0d9934:
    # Line 50
    addiu	$s1,$s1,4
.L0f0d9938:
    addiu	$s3,$s3,1
    beq	$s3,$s6,.L0f0d998c
    addiu	$s0,$s0,1
.L0f0d9944:
    # Line 52
    lw	$s2,3040($s1)
    beqz	$s2,.L0f0d9934
    move	$s4,$s2
    # Line 62
    move	$a1,$s2
    la	$t9,__iglooSetOglLightPosition
    move	$a0,$s0
    # Line 58
    sw	$s3,12($s2)
    # Line 62
    bal __iglooSetOglLightPosition
    # Line 57
    sw	$s5,8($s2)
    # Line 63
    la	$t9,__iglooSetOglLight
    move	$a0,$s0
    bal __iglooSetOglLight
    move	$a1,$s2
    # Line 64
    lw	$s2,3024($s5)
    beqzl	$s2,.L0f0d9938
    # Line 50
    addiu	$s1,$s1,4
    b	.L0f0d9924
    # Line 66
    la	$t9,__iglooSetOglAttenuation
.L0f0d998c:
    ld	$gp,0($sp)
    # Line 71
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,64($sp)
    ld	$s3,56($sp)
    ld	$s4,32($sp)
    ld	$ra,40($sp)
    ld	$s5,8($sp)
    ld	$s6,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __iglooRebindLights

# Function: __iglooRebindLightdata
# Declared: Line 77 (Source lines: 78-123)
# Address: 0x0f0d99b8 - 0x0f0d9aa4 (Size: 236 bytes, Frame: 192)
.globl __iglooRebindLightdata
.ent __iglooRebindLightdata
__iglooRebindLightdata:
    # Line 81
    lw	$a4,3032($a0)
    # Line 79
    lw	$a3,3024($a0)
    # Line 78
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    # Line 80
    lw	$a1,3028($a0)
    # Line 78
    lui	$at,0xfff6
    addiu	$at,$at,-26480
    # Line 81
    beqz	$a1,.L0f0d9a10
    # Line 78
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$ra,32($sp)
    # Line 81
    lh	$v0,3036($s0)
    sd	$a3,24($sp)
    li	$v1,1
    beq	$v0,$v1,.L0f0d9a60
    sd	$a4,0($sp)
    # Line 99
    la	$t9,__iglooSetOglMaterial
    bal __iglooSetOglMaterial
    li	$a0,1032
    ld	$a3,24($sp)
    ld	$ra,32($sp)
.L0f0d9a10:
    bnez	$a3,.L0f0d9a4c
    sd	$ra,32($sp)
    # Line 112
    la	$t9,__iglooRebindLights
.L0f0d9a1c:
    bal __iglooRebindLights
    move	$a0,$s0
    lw	$a2,3076($s0)
    beqz	$a2,.L0f0d9a3c
    ld	$ra,32($sp)
    lw	$at,2904($s0)
    beqz	$at,.L0f0d9a88
    # Line 119
    la	$t9,__iglooOglLightingOn
.L0f0d9a3c:
    ld	$gp,16($sp)
    # Line 123
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0d9a4c:
    # Line 108
    la	$t9,__iglooSetOglModel
    bal __iglooSetOglModel
    move	$a0,$a3
    b	.L0f0d9a1c
    # Line 112
    la	$t9,__iglooRebindLights
.L0f0d9a60:
    # Line 94
    la	$t9,__iglooSetOglMaterial
    bal __iglooSetOglMaterial
    li	$a0,1028
    # Line 95
    la	$t9,__iglooSetOglMaterial
    ld	$a1,0($sp)
    bal __iglooSetOglMaterial
    li	$a0,1029
    ld	$a3,24($sp)
    b	.L0f0d9a10
    ld	$ra,32($sp)
.L0f0d9a88:
    # Line 119
    bal __iglooOglLightingOn
    move	$a0,$s0
    # Line 120
    la	$t9,__iglooSyncLmcolor
    jalr	$t9
    move	$a0,$s0
    b	.L0f0d9a3c
    ld	$ra,32($sp)
.end __iglooRebindLightdata

