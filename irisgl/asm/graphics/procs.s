# Source: ../igloo/graphics/procs.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/procs.c -o procs.T
# Total Functions: 26

.text

# Function: dummyFunction
# Declared: Line 33 (Source lines: 33-33)
# Address: 0x0f103848 - 0x0f103850 (Size: 8 bytes, Frame: 0)
.ent dummyFunction
dummyFunction:
    # Line 33
    jr	$ra
    nop
.end dummyFunction

# Function: getDsoHandle
# Declared: Line 35 (Source lines: 36-51)
# Address: 0x0f103850 - 0x0f10389c (Size: 76 bytes, Frame: 16)
.globl getDsoHandle
.ent getDsoHandle
getDsoHandle:
    # Line 36
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-1544 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    lw	$v0,-20360($gp)
    beqz	$v0,.L0f10387c
    # Line 46
    li	$a1,1
.L0f103870:
    ld	$gp,0($sp)
    # Line 51
    jr	$ra
    addiu	$sp,$sp,16
.L0f10387c:
    # Line 46
    la	$t9,dlopen
    la	$a0,sub_0f020000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a0,$a0,20800
    sw	$v0,-20360($gp)
    b	.L0f103870
    ld	$ra,8($sp)
.end getDsoHandle

# Function: loadSymbol
# Declared: Line 54 (Source lines: 55-79)
# Address: 0x0f10389c - 0x0f1038e0 (Size: 68 bytes, Frame: 32)
.ent loadSymbol
loadSymbol:
    # Line 55
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    beqz	$a0,.L0f1038d4
    move	$s0,$a1
    # Line 61
    la	$t9,dlsym
    sd	$ra,8($sp)
    jalr	$t9
    lw	$a1,0($s0)
    sw	$v0,4($s0)
    bnez	$v0,.L0f1038d4
    ld	$ra,8($sp)
    # Line 76
    la	$at,sub_0f100000
    addiu	$at,$at,14408
    sw	$at,4($s0)
.L0f1038d4:
    # Line 79
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end loadSymbol

# Function: __iglooGetNewInterface
# Declared: Line 81 (Source lines: 82-85)
# Address: 0x0f1038e0 - 0x0f10392c (Size: 76 bytes, Frame: 16)
.globl __iglooGetNewInterface
.ent __iglooGetNewInterface
__iglooGetNewInterface:
    # Line 82
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-1688 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 83
    la	$t9,getDsoHandle
    sd	$ra,0($sp)
    bal getDsoHandle
    nop
    la	$t9,sub_0f100000
    move	$a0,$v0
    addiu	$t9,$t9,14492
    bal getDsoHandle
    addiu	$a1,$gp,-14560
    # Line 85
    ld	$ra,0($sp)
    lw	$v0,-14556($gp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooGetNewInterface

# Function: __iglooLoadInterface
# Declared: Line 89 (Source lines: 90-158)
# Address: 0x0f10392c - 0x0f103acc (Size: 416 bytes, Frame: 48)
.globl __iglooLoadInterface
.ent __iglooLoadInterface
__iglooLoadInterface:
    # Line 90
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-1764 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    lw	$v0,-20356($gp)
    beqz	$v0,.L0f10395c
    sd	$a0,8($sp)
.L0f10394c:
    # Line 158
    lw	$v0,-20352($gp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f10395c:
    # Line 106
    la	$t9,getDsoHandle
    sd	$ra,24($sp)
    # Line 105
    sltiu	$v0,$v0,1
    # Line 106
    bal getDsoHandle
    # Line 105
    sw	$v0,-20356($gp)
    sd	$v0,0($sp)
    # Line 106
    beqz	$v0,.L0f10394c
    ld	$ra,24($sp)
    # Line 110
    la	$t9,sub_0f100000
    # Line 112
    addiu	$a1,$gp,-14560
    ld	$a0,0($sp)
    # Line 110
    addiu	$t9,$t9,14492
    # Line 112
    bal getDsoHandle
    # Line 110
    sw	$zero,-20352($gp)
    la	$t9,sub_0f100000
    ld	$a0,0($sp)
    # Line 113
    addiu	$a1,$gp,-14560
    addiu	$t9,$t9,14492
    bal getDsoHandle
    addiu	$a1,$a1,8
    la	$t9,sub_0f100000
    # Line 114
    ld	$a0,0($sp)
    addiu	$a1,$gp,-14560
    addiu	$t9,$t9,14492
    bal getDsoHandle
    addiu	$a1,$a1,16
    la	$t9,sub_0f100000
    # Line 115
    ld	$a0,0($sp)
    addiu	$a1,$gp,-14560
    addiu	$t9,$t9,14492
    bal getDsoHandle
    addiu	$a1,$a1,24
    la	$t9,sub_0f100000
    # Line 116
    ld	$a0,0($sp)
    addiu	$a1,$gp,-14560
    addiu	$t9,$t9,14492
    bal getDsoHandle
    addiu	$a1,$a1,32
    la	$t9,sub_0f100000
    # Line 117
    ld	$a0,0($sp)
    addiu	$a1,$gp,-14560
    addiu	$t9,$t9,14492
    bal getDsoHandle
    addiu	$a1,$a1,40
    la	$t9,sub_0f100000
    # Line 118
    ld	$a0,0($sp)
    addiu	$a1,$gp,-14560
    addiu	$t9,$t9,14492
    bal getDsoHandle
    addiu	$a1,$a1,48
    la	$t9,sub_0f100000
    # Line 119
    ld	$a0,0($sp)
    addiu	$a1,$gp,-14560
    addiu	$t9,$t9,14492
    bal getDsoHandle
    addiu	$a1,$a1,56
    la	$t9,sub_0f100000
    # Line 120
    ld	$a0,0($sp)
    addiu	$a1,$gp,-14560
    addiu	$t9,$t9,14492
    bal getDsoHandle
    addiu	$a1,$a1,64
    la	$v0,sub_0f100000
    lw	$at,-14556($gp)
    lw	$a3,-14540($gp)
    addiu	$v0,$v0,14408
    beq	$at,$v0,.L0f103aac
    ld	$ra,24($sp)
    beq	$a3,$v0,.L0f103a80
    # Line 126
    ld	$a1,8($sp)
    li	$v1,2
    b	.L0f10394c
    sw	$v1,-20352($gp)
.L0f103a80:
    li	$a2,5
    beq	$a1,$a2,.L0f10394c
    ld	$at,8($sp)
    li	$v1,6
    beq	$at,$v1,.L0f10394c
    # Line 136
    ld	$a1,8($sp)
    li	$a2,7
    beq	$a1,$a2,.L0f10394c
    # Line 140
    li	$at,1
    b	.L0f10394c
    sw	$at,-20352($gp)
.L0f103aac:
    lw	$v1,-14508($gp)
    beq	$v1,$v0,.L0f103abc
    # Line 148
    li	$a1,3
    sw	$a1,-20352($gp)
.L0f103abc:
    beq	$a3,$v0,.L0f10394c
    # Line 153
    li	$a2,2
    b	.L0f10394c
    sw	$a2,-20352($gp)
.end __iglooLoadInterface

# Function: __iglooPickDefaultVertexProcs
# Declared: Line 161 (Source lines: 162-177)
# Address: 0x0f103acc - 0x0f103b3c (Size: 112 bytes, Frame: 0)
.globl __iglooPickDefaultVertexProcs
.ent __iglooPickDefaultVertexProcs
__iglooPickDefaultVertexProcs:
    # Line 162
    lui	$a1,0xfff3
    addiu	$a1,$a1,-2180
    addu	$at,$t9,$a1
    # Line 173
    lw	$a2,-23404($at)
    # Line 171
    lw	$a1,-23392($at)
    # Line 174
    lw	$t9,-23448($at)
    # Line 173
    sw	$a2,36($a0)
    # Line 166
    lw	$a2,-23460($at)
    # Line 174
    sw	$t9,40($a0)
    # Line 168
    lw	$t9,-23408($at)
    # Line 171
    sw	$a1,32($a0)
    # Line 165
    lw	$a1,-23360($at)
    # Line 168
    sw	$t9,20($a0)
    # Line 166
    sw	$a2,16($a0)
    # Line 176
    lw	$v1,-23356($at)
    # Line 165
    sw	$a1,12($a0)
    # Line 175
    lw	$v0,-23352($at)
    # Line 176
    sw	$v1,48($a0)
    # Line 170
    lw	$v1,-23400($at)
    # Line 175
    sw	$v0,44($a0)
    # Line 169
    lw	$v0,-23396($at)
    # Line 170
    sw	$v1,28($a0)
    # Line 164
    lw	$v1,-23344($at)
    # Line 169
    sw	$v0,24($a0)
    # Line 163
    lw	$v0,-23328($at)
    # Line 164
    sw	$v1,8($a0)
    # Line 177
    jr	$ra
    # Line 163
    sw	$v0,4($a0)
.end __iglooPickDefaultVertexProcs

# Function: __iglooPickDefaultTexCoordProcs
# Declared: Line 179 (Source lines: 180-195)
# Address: 0x0f103b3c - 0x0f103bac (Size: 112 bytes, Frame: 0)
.globl __iglooPickDefaultTexCoordProcs
.ent __iglooPickDefaultTexCoordProcs
__iglooPickDefaultTexCoordProcs:
    # Line 180
    lui	$a1,0xfff3
    addiu	$a1,$a1,-2292
    addu	$at,$t9,$a1
    # Line 191
    lw	$a2,-23348($at)
    # Line 189
    lw	$a1,-23368($at)
    # Line 192
    lw	$t9,-23388($at)
    # Line 191
    sw	$a2,84($a0)
    # Line 184
    lw	$a2,-23384($at)
    # Line 192
    sw	$t9,88($a0)
    # Line 186
    lw	$t9,-23376($at)
    # Line 189
    sw	$a1,80($a0)
    # Line 183
    lw	$a1,-23320($at)
    # Line 186
    sw	$t9,68($a0)
    # Line 184
    sw	$a2,64($a0)
    # Line 194
    lw	$v1,-23336($at)
    # Line 183
    sw	$a1,60($a0)
    # Line 193
    lw	$v0,-23332($at)
    # Line 194
    sw	$v1,96($a0)
    # Line 188
    lw	$v1,-23340($at)
    # Line 193
    sw	$v0,92($a0)
    # Line 187
    lw	$v0,-23316($at)
    # Line 188
    sw	$v1,76($a0)
    # Line 182
    lw	$v1,-23444($at)
    # Line 187
    sw	$v0,72($a0)
    # Line 181
    lw	$v0,-23440($at)
    # Line 182
    sw	$v1,56($a0)
    # Line 195
    jr	$ra
    # Line 181
    sw	$v0,52($a0)
.end __iglooPickDefaultTexCoordProcs

# Function: __iglooPickDefaultBeginEndProcs
# Declared: Line 197 (Source lines: 198-201)
# Address: 0x0f103bac - 0x0f103bcc (Size: 32 bytes, Frame: 0)
.globl __iglooPickDefaultBeginEndProcs
.ent __iglooPickDefaultBeginEndProcs
__iglooPickDefaultBeginEndProcs:
    # Line 198
    lui	$a1,0xfff3
    addiu	$a1,$a1,-2404
    addu	$at,$t9,$a1
    # Line 200
    lw	$v1,-24944($at)
    # Line 199
    lw	$v0,-24960($at)
    # Line 200
    sw	$v1,220($a0)
    # Line 201
    jr	$ra
    # Line 199
    sw	$v0,216($a0)
.end __iglooPickDefaultBeginEndProcs

# Function: __iglooSwapTMeshNotImplemented
# Declared: Line 203 (Source lines: 206-206)
# Address: 0x0f103bcc - 0x0f103bd4 (Size: 8 bytes, Frame: 0)
.ent __iglooSwapTMeshNotImplemented
__iglooSwapTMeshNotImplemented:
    # Line 206
    jr	$ra
    nop
.end __iglooSwapTMeshNotImplemented

# Function: __iglooCNModeNotImplemented
# Declared: Line 208 (Source lines: 212-212)
# Address: 0x0f103bd4 - 0x0f103bdc (Size: 8 bytes, Frame: 0)
.ent __iglooCNModeNotImplemented
__iglooCNModeNotImplemented:
    # Line 212
    jr	$ra
    nop
.end __iglooCNModeNotImplemented

# Function: __iglooNormal3fv
# Declared: Line 214 (Source lines: 215-222)
# Address: 0x0f103bdc - 0x0f103c18 (Size: 60 bytes, Frame: 32)
.globl __iglooNormal3fv
.ent __iglooNormal3fv
__iglooNormal3fv:
    # Line 215
    move	$a0,$a1
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,-2452 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 221
    la	$t9,glNormal3fv
    # Line 220
    lw	$at,4100($zero)
    sd	$ra,0($sp)
    # Line 221
    jalr	$t9
    # Line 220
    sw	$zero,64($at)
    # Line 222
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooNormal3fv

# Function: __iglooNewSwapTMesh
# Declared: Line 224 (Source lines: 225-228)
# Address: 0x0f103c18 - 0x0f103c50 (Size: 56 bytes, Frame: 16)
.ent __iglooNewSwapTMesh
__iglooNewSwapTMesh:
    # Line 225
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-2512 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 226
    lw	$t9,-14556($gp)
    move	$a1,$zero
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,0x81a0
    # Line 228
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooNewSwapTMesh

# Function: __iglooNewTmeshMode
# Declared: Line 230 (Source lines: 231-234)
# Address: 0x0f103c50 - 0x0f103c8c (Size: 60 bytes, Frame: 48)
.ent __iglooNewTmeshMode
__iglooNewTmeshMode:
    # Line 231
    addiu	$sp,$sp,-48
    # Line 233
    addiu	$a1,$sp,0
    sd	$gp,16($sp)
    # Line 231
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-2568 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 233
    la	$t9,glIglooInterfaceSGIX
    # Line 232
    sw	$a0,0($sp)
    sd	$ra,8($sp)
    # Line 233
    jalr	$t9
    li	$a0,0x81a4
    # Line 234
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooNewTmeshMode

# Function: __iglooNullSwapTMesh
# Declared: Line 236 (Source lines: 243-243)
# Address: 0x0f103c8c - 0x0f103c94 (Size: 8 bytes, Frame: 0)
.globl __iglooNullSwapTMesh
.ent __iglooNullSwapTMesh
__iglooNullSwapTMesh:
    # Line 243
    jr	$ra
    nop
.end __iglooNullSwapTMesh

# Function: __iglooMgrFullScreen
# Declared: Line 245 (Source lines: 246-248)
# Address: 0x0f103c94 - 0x0f103cc8 (Size: 52 bytes, Frame: 32)
.ent __iglooMgrFullScreen
__iglooMgrFullScreen:
    # Line 246
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-2636 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 247
    lw	$t9,-14548($gp)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 248
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMgrFullScreen

# Function: __iglooCrmFullScreen
# Declared: Line 250 (Source lines: 251-253)
# Address: 0x0f103cc8 - 0x0f103cfc (Size: 52 bytes, Frame: 32)
.ent __iglooCrmFullScreen
__iglooCrmFullScreen:
    # Line 251
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-2688 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 252
    lw	$t9,-14516($gp)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 253
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooCrmFullScreen

# Function: __iglooNewFullScreen
# Declared: Line 255 (Source lines: 256-264)
# Address: 0x0f103cfc - 0x0f103d3c (Size: 64 bytes, Frame: 48)
.ent __iglooNewFullScreen
__iglooNewFullScreen:
    # Line 256
    addiu	$sp,$sp,-48
    # Line 260
    sw	$a1,4($sp)
    # Line 262
    addiu	$a1,$sp,0
    sd	$gp,16($sp)
    # Line 256
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-2740 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 262
    lw	$t9,-14556($gp)
    # Line 259
    sw	$a0,0($sp)
    sd	$ra,8($sp)
    # Line 262
    jalr	$t9
    li	$a0,0x819e
    # Line 264
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooNewFullScreen

# Function: __iglooFullScreenNotImplemented
# Declared: Line 267 (Source lines: 272-272)
# Address: 0x0f103d3c - 0x0f103d44 (Size: 8 bytes, Frame: 0)
.ent __iglooFullScreenNotImplemented
__iglooFullScreenNotImplemented:
    # Line 272
    jr	$ra
    nop
.end __iglooFullScreenNotImplemented

# Function: __iglooMgrNormal
# Declared: Line 278 (Source lines: 279-292)
# Address: 0x0f103d44 - 0x0f103db8 (Size: 116 bytes, Frame: 48)
.ent __iglooMgrNormal
__iglooMgrNormal:
    # Line 279
    lw	$at,4100($zero)
    addiu	$sp,$sp,-48
    lw	$at,20($at)
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    lw	$at,16($at)
    lui	$v0,0xfff3
    addiu	$v0,$v0,-2812
    beqz	$at,.L0f103da4
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 281
    sw	$zero,0($sp)
    # Line 284
    lw	$v0,4100($zero)
    sw	$zero,64($v0)
    # Line 286
    lw	$t9,-14532($gp)
    jalr	$t9
    move	$a0,$a1
    # Line 287
    lw	$t9,-14556($gp)
    addiu	$a1,$sp,0
    jalr	$t9
    li	$a0,0x81a1
    ld	$ra,16($sp)
.L0f103d98:
    ld	$gp,8($sp)
    # Line 292
    jr	$ra
    addiu	$sp,$sp,48
.L0f103da4:
    # Line 290
    la	$t9,__iglooNormal3fv
    bal __iglooNormal3fv
    nop
    b	.L0f103d98
    ld	$ra,16($sp)
.end __iglooMgrNormal

# Function: __iglooCrmNormal
# Declared: Line 294 (Source lines: 295-304)
# Address: 0x0f103db8 - 0x0f103e14 (Size: 92 bytes, Frame: 32)
.ent __iglooCrmNormal
__iglooCrmNormal:
    # Line 295
    lw	$a3,4100($zero)
    addiu	$sp,$sp,-32
    lw	$at,20($a3)
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,16($at)
    lui	$v0,0xfff3
    addiu	$v0,$v0,-2928
    beqz	$at,.L0f103e00
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 299
    sw	$zero,64($a3)
    # Line 300
    lw	$t9,-14500($gp)
    jalr	$t9
    move	$a0,$a1
    ld	$ra,8($sp)
.L0f103df4:
    ld	$gp,0($sp)
    # Line 304
    jr	$ra
    addiu	$sp,$sp,32
.L0f103e00:
    # Line 302
    la	$t9,__iglooNormal3fv
    bal __iglooNormal3fv
    nop
    b	.L0f103df4
    ld	$ra,8($sp)
.end __iglooCrmNormal

# Function: __iglooNewSetCNState
# Declared: Line 306 (Source lines: 307-325)
# Address: 0x0f103e14 - 0x0f103e88 (Size: 116 bytes, Frame: 32)
.ent __iglooNewSetCNState
__iglooNewSetCNState:
    # Line 307
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$v0,0xfff3
    sw	$a0,20($sp)
    addiu	$v0,$v0,-3020
    # addu	gp,t9,v0 (gp setup)
    # Line 316
    la	$t9,__iglooGetGraphicsType
    # Line 311
    lw	$at,4100($zero)
    sd	$ra,0($sp)
    # Line 316
    jalr	$t9
    # Line 311
    sw	$a0,64($at)
    # Line 318
    lw	$v1,4100($zero)
    lw	$v1,20($v1)
    lw	$v1,16($v1)
    li	$a1,4
    bnez	$v1,.L0f103e68
    ld	$ra,0($sp)
    li	$a0,3
    beql	$v0,$a0,.L0f103e80
    ld	$gp,8($sp)
    beq	$v0,$a1,.L0f103e7c
.L0f103e68:
    # Line 322
    lw	$t9,-14556($gp)
    addiu	$a1,$sp,20
    jalr	$t9
    li	$a0,0x81a1
    ld	$ra,0($sp)
.L0f103e7c:
    ld	$gp,8($sp)
.L0f103e80:
    # Line 325
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooNewSetCNState

# Function: __iglooNewNormal
# Declared: Line 327 (Source lines: 328-339)
# Address: 0x0f103e88 - 0x0f103f10 (Size: 136 bytes, Frame: 192)
.ent __iglooNewNormal
__iglooNewNormal:
    # Line 328
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    # Line 329
    sw	$zero,0($sp)
    sd	$s0,8($sp)
    # Line 330
    lw	$s0,4100($zero)
    # Line 328
    move	$s8,$a0
    sd	$gp,24($sp)
    # Line 330
    lw	$at,68($s0)
    # Line 328
    lui	$v0,0xfff3
    addiu	$v0,$v0,-3136
    # Line 330
    beqz	$at,.L0f103ecc
    # Line 328
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 330
    lw	$v1,64($s0)
    li	$a2,1
    beq	$v1,$a2,.L0f103ef4
    sd	$ra,32($sp)
.L0f103ecc:
    # Line 337
    la	$t9,__iglooNormal3fv
    move	$a0,$s8
    bal __iglooNormal3fv
    # Line 336
    sw	$zero,64($s0)
    ld	$gp,24($sp)
    # Line 339
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f103ef4:
    # Line 333
    lw	$t9,-14556($gp)
    sd	$a1,40($sp)
    addiu	$a1,$sp,0
    jalr	$t9
    li	$a0,0x81a1
    b	.L0f103ecc
    ld	$a1,40($sp)
.end __iglooNewNormal

# Function: __iglooMgrCNMode
# Declared: Line 341 (Source lines: 342-347)
# Address: 0x0f103f10 - 0x0f103f54 (Size: 68 bytes, Frame: 32)
.ent __iglooMgrCNMode
__iglooMgrCNMode:
    # Line 342
    lw	$at,4100($zero)
    lw	$at,20($at)
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,16($at)
    lui	$v0,0xfff3
    addiu	$v0,$v0,-3272
    beqz	$at,.L0f103f48
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 345
    lw	$t9,-14524($gp)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f103f48:
    ld	$gp,0($sp)
    # Line 347
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMgrCNMode

# Function: __iglooCrmCNMode
# Declared: Line 349 (Source lines: 350-355)
# Address: 0x0f103f54 - 0x0f103f98 (Size: 68 bytes, Frame: 32)
.ent __iglooCrmCNMode
__iglooCrmCNMode:
    # Line 350
    lw	$at,4100($zero)
    lw	$at,20($at)
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,16($at)
    lui	$v0,0xfff3
    addiu	$v0,$v0,-3340
    beqz	$at,.L0f103f8c
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 353
    lw	$t9,-14492($gp)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f103f8c:
    ld	$gp,0($sp)
    # Line 355
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooCrmCNMode

# Function: __iglooNewCNMode
# Declared: Line 357 (Source lines: 358-367)
# Address: 0x0f103f98 - 0x0f103fd4 (Size: 60 bytes, Frame: 48)
.ent __iglooNewCNMode
__iglooNewCNMode:
    # Line 358
    addiu	$sp,$sp,-48
    # Line 365
    addiu	$a1,$sp,0
    sd	$gp,16($sp)
    # Line 358
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-3408 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 365
    lw	$t9,-14556($gp)
    # Line 361
    sw	$a0,0($sp)
    sd	$ra,8($sp)
    # Line 365
    jalr	$t9
    li	$a0,0x81a3
    # Line 367
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooNewCNMode

# Function: __iglooInitProcs
# Declared: Line 369 (Source lines: 370-446)
# Address: 0x0f103fd4 - 0x0f1041b8 (Size: 484 bytes, Frame: 48)
.globl __iglooInitProcs
.ent __iglooInitProcs
__iglooInitProcs:
    # Line 370
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,-3468 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 376
    la	$t9,__iglooPickDefaultVertexProcs
    sd	$s0,16($sp)
    sd	$ra,0($sp)
    bal __iglooPickDefaultVertexProcs
    # Line 370
    move	$s0,$a0
    # Line 377
    la	$t9,__iglooPickDefaultTexCoordProcs
    bal __iglooPickDefaultTexCoordProcs
    move	$a0,$s0
    # Line 378
    la	$t9,__iglooPickDefaultBeginEndProcs
    bal __iglooPickDefaultBeginEndProcs
    move	$a0,$s0
    # Line 380
    la	$t9,__iglooInitLightColorProcs
    jalr	$t9
    move	$a0,$s0
    # Line 381
    la	$t9,__iglooSetColorProcsLight
    jalr	$t9
    move	$a0,$s0
    # Line 383
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    nop
    # Line 384
    la	$t9,__iglooLoadInterface
    # Line 383
    move	$a0,$v0
    # Line 384
    bal __iglooLoadInterface
    sd	$v0,8($sp)
    # Line 394
    li	$a0,3
    # Line 384
    la	$a1,sub_0f100000
    ld	$ra,0($sp)
    # Line 394
    li	$v1,1
    # Line 384
    addiu	$a1,$a1,14408
    # Line 394
    sw	$a1,204($s0)
    beq	$v0,$v1,.L0f1040c0
    # Line 393
    sw	$a1,180($s0)
    # Line 425
    la	$v1,sub_0f100000
    # Line 417
    beq	$v0,$a0,.L0f10416c
    # Line 442
    la	$a1,sub_0f100000
    # Line 426
    li	$a2,2
    beq	$v0,$a2,.L0f10413c
    # Line 442
    addiu	$a1,$a1,15676
    sw	$a1,208($s0)
    # Line 440
    la	$v0,__iglooNormal3fv
    # Line 439
    la	$at,sub_0f100000
    # Line 441
    la	$v1,sub_0f100000
    # Line 440
    sw	$v0,192($s0)
    # Line 439
    addiu	$at,$at,15308
    # Line 441
    addiu	$v1,$v1,15316
    sw	$v1,200($s0)
    # Line 439
    sw	$at,188($s0)
.L0f1040a4:
    # Line 445
    la	$a2,__iglooNullSwapTMesh
    ld	$gp,24($sp)
    # Line 444
    sw	$v0,212($s0)
    # Line 445
    sw	$a2,184($s0)
    # Line 446
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f1040c0:
    # Line 394
    ld	$at,8($sp)
    li	$v1,2
    beq	$at,$v1,.L0f1041a8
.L0f1040cc:
    # Line 414
    la	$t9,__iglooGetGraphicsType
    # Line 409
    la	$a4,sub_0f100000
    # Line 408
    la	$a3,sub_0f100000
    # Line 405
    la	$a0,sub_0f100000
    # Line 406
    la	$a1,sub_0f100000
    # Line 407
    la	$a2,sub_0f100000
    # Line 405
    addiu	$a0,$a0,15384
    # Line 406
    addiu	$a1,$a1,16008
    # Line 407
    addiu	$a2,$a2,16280
    # Line 408
    addiu	$a3,$a3,15892
    # Line 409
    addiu	$a4,$a4,15612
    sw	$a4,208($s0)
    # Line 408
    sw	$a3,204($s0)
    # Line 407
    sw	$a2,200($s0)
    # Line 406
    sw	$a1,192($s0)
    # Line 414
    jalr	$t9
    # Line 405
    sw	$a0,188($s0)
    li	$at,3
    # Line 414
    beq	$at,$v0,.L0f104198
    ld	$ra,0($sp)
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    nop
    li	$v1,4
    beq	$v0,$v1,.L0f104198
    ld	$ra,0($sp)
    b	.L0f1040a4
    # Line 417
    lw	$v0,192($s0)
.L0f10413c:
    # Line 433
    la	$v1,sub_0f100000
    addiu	$v1,$v1,16144
    # Line 431
    lw	$a2,-14540($gp)
    # Line 433
    sw	$v1,200($s0)
    # Line 432
    la	$v0,sub_0f100000
    # Line 434
    la	$a1,sub_0f100000
    # Line 431
    sw	$a2,188($s0)
    # Line 432
    addiu	$v0,$v0,15684
    # Line 434
    addiu	$a1,$a1,15508
    sw	$a1,208($s0)
    b	.L0f1040a4
    # Line 432
    sw	$v0,192($s0)
.L0f10416c:
    # Line 425
    addiu	$v1,$v1,16212
    # Line 423
    lw	$a2,-14508($gp)
    # Line 425
    sw	$v1,200($s0)
    # Line 424
    la	$v0,sub_0f100000
    # Line 426
    la	$a1,sub_0f100000
    # Line 423
    sw	$a2,188($s0)
    # Line 424
    addiu	$v0,$v0,15800
    # Line 426
    addiu	$a1,$a1,15560
    sw	$a1,208($s0)
    b	.L0f1040a4
    # Line 424
    sw	$v0,192($s0)
.L0f104198:
    # Line 417
    la	$v0,sub_0f100000
    addiu	$v0,$v0,15684
    b	.L0f1040a4
    sw	$v0,192($s0)
.L0f1041a8:
    # Line 402
    la	$v1,sub_0f100000
    addiu	$v1,$v1,15440
    b	.L0f1040cc
    sw	$v1,180($s0)
.end __iglooInitProcs

