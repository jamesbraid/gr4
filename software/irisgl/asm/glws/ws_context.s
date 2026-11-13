# Source: ../igloo/glws/ws_context.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/ws_context.c -o ws_context.T
# Total Functions: 15

.text

# Function: _GLattachScreen
# Declared: Line 35 (Source lines: 36-50)
# Address: 0x0f1297c8 - 0x0f129820 (Size: 88 bytes, Frame: 48)
.globl _GLattachScreen
.ent _GLattachScreen
_GLattachScreen:
    # Line 36
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-25984 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-14356($gp)
    sd	$s0,0($sp)
    beq	$at,$a0,.L0f129810
    move	$s0,$a0
    bltz	$s0,.L0f12980c
    # Line 46
    move	$a0,$s0
    la	$t9,gl_devdepattach
    # Line 45
    la	$v1,gl_selected_scrn
    sd	$ra,16($sp)
    # Line 46
    jalr	$t9
    # Line 45
    sw	$s0,0($v1)
    ld	$ra,16($sp)
.L0f12980c:
    # Line 48
    sw	$s0,-14356($gp)
.L0f129810:
    ld	$gp,8($sp)
    # Line 50
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLattachScreen

# Function: _GLnewcontext
# Declared: Line 59 (Source lines: 60-79)
# Address: 0x0f129820 - 0x0f1298bc (Size: 156 bytes, Frame: 48)
.globl _GLnewcontext
.ent _GLnewcontext
_GLnewcontext:
    # Line 60
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$s7,8($sp)
    move	$s7,$a0
    sd	$gp,16($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-26072 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 61
    la	$t9,gl_malloc
    li	$a0,12160
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a1,$gp,-15912
    # Line 67
    la	$t9,bzero
    # Line 61
    move	$s0,$v0
    # Line 67
    move	$a0,$v0
    jalr	$t9
    li	$a1,12160
    # Line 69
    sw	$s7,236($s0)
    # Line 68
    li	$v1,1
    sw	$v1,228($s0)
    # Line 74
    move	$a1,$zero
    # Line 70
    lw	$v0,12($s7)
    # Line 74
    la	$t9,_GLattachScreen
    # Line 72
    sw	$zero,248($s0)
    # Line 70
    sw	$v0,252($s0)
    # Line 74
    bal _GLattachScreen
    lw	$a0,12($s7)
    # Line 76
    la	$a1,gl_valid_cxs
    ld	$gp,16($sp)
    # Line 79
    ld	$s7,8($sp)
    # Line 76
    lw	$a2,0($a1)
    # Line 79
    move	$v0,$s0
    ld	$ra,0($sp)
    # Line 76
    sw	$a2,0($s0)
    # Line 77
    sw	$s0,0($a1)
    # Line 79
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end _GLnewcontext

# Function: _GLisvalidcx
# Declared: Line 82 (Source lines: 83-89)
# Address: 0x0f1298bc - 0x0f1298fc (Size: 64 bytes, Frame: 0)
.globl _GLisvalidcx
.ent _GLisvalidcx
_GLisvalidcx:
    # Line 83
    lui	$v0,0xfff1
    addiu	$v0,$v0,-26228
    addu	$at,$t9,$v0
    # Line 86
    lw	$a3,-32396($at)
    lw	$a3,0($a3)
    beqz	$a3,.L0f1298ec
    # Line 89
    move	$v0,$zero
.L0f1298d8:
    # Line 86
    beq	$a0,$a3,.L0f1298f4
    nop
    lw	$a3,0($a3)
    bnez	$a3,.L0f1298d8
    nop
.L0f1298ec:
    # Line 89
    jr	$ra
    nop
.L0f1298f4:
    # Line 88
    jr	$ra
    li	$v0,1
.end _GLisvalidcx

# Function: _GLdestroycontext
# Declared: Line 92 (Source lines: 93-129)
# Address: 0x0f1298fc - 0x0f129a6c (Size: 368 bytes, Frame: 208)
.globl _GLdestroycontext
.ent _GLdestroycontext
_GLdestroycontext:
    # Line 93
    addiu	$sp,$sp,-80
    sd	$gp,0($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-26292 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 94
    la	$t9,_GLisvalidcx
    sd	$s0,8($sp)
    sd	$ra,16($sp)
    bal _GLisvalidcx
    # Line 93
    move	$s0,$a0
    # Line 129
    ld	$ra,16($sp)
    # Line 94
    beqz	$v0,.L0f129a40
    # Line 129
    la	$a0,GLlasterror
    # Line 95
    move	$a0,$zero
    sd	$s7,48($sp)
    la	$s7,gl_valid_cxs
    sd	$s5,40($sp)
    sd	$s1,32($sp)
    # Line 102
    lw	$s1,0($s7)
    sd	$s4,24($sp)
    beqz	$s1,.L0f129a5c
    # Line 96
    li	$s4,1
    # Line 102
    la	$s5,gl_wstatep
    beq	$s0,$s1,.L0f129994
    lw	$a2,0($s7)
.L0f129960:
    # Line 107
    beqz	$s4,.L0f129980
    # Line 113
    move	$a0,$s1
    # Line 107
    lw	$v0,224($s1)
    beqz	$v0,.L0f12997c
    # Line 108
    lw	$v1,0($s5)
    beq	$v1,$s0,.L0f129a2c
    # Line 111
    move	$s4,$zero
.L0f12997c:
    # Line 113
    move	$a0,$s1
.L0f129980:
    # Line 102
    lw	$s1,0($s1)
    beqzl	$s1,.L0f1299b0
    ld	$s1,32($sp)
    bne	$s0,$s1,.L0f129960
    lw	$a2,0($s7)
.L0f129994:
    bnel	$s1,$a2,.L0f1299a8
    # Line 107
    lw	$at,0($s1)
    # Line 105
    lw	$a1,0($a2)
    b	.L0f12997c
    sw	$a1,0($s7)
.L0f1299a8:
    b	.L0f12997c
    # Line 107
    sw	$at,0($a0)
.L0f1299b0:
    ld	$s7,48($sp)
.L0f1299b4:
    # Line 117
    la	$t9,sub_0f130000
    addiu	$t9,$t9,-22604
    bal _GLfreezeWindows
    move	$a0,$s0
    move	$at,$s4
    beqz	$at,.L0f1299dc
    ld	$s4,24($sp)
    ld	$s4,24($sp)
    # Line 121
    sw	$zero,0($s5)
    sw	$zero,4104($zero)
.L0f1299dc:
    # Line 124
    la	$t9,_GLunbindcontext
    move	$a0,$s0
    bal _GLunbindcontext
    ld	$s5,40($sp)
    # Line 125
    la	$t9,bzero
    move	$a0,$s0
    jalr	$t9
    li	$a1,12160
    # Line 126
    la	$t9,gl_free
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$gp,-15904
    # Line 127
    la	$v0,GLlasterror
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    ld	$ra,16($sp)
    addiu	$sp,$sp,80
    sw	$zero,0($v0)
    jr	$ra
    move	$v0,$zero
.L0f129a2c:
    # Line 110
    la	$t9,_GLsetcontext
    bal _GLsetcontext
    move	$a0,$s1
    b	.L0f12997c
    # Line 111
    move	$s4,$zero
.L0f129a40:
    # Line 129
    li	$v1,-1
    li	$v0,-1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    addiu	$sp,$sp,80
    jr	$ra
    sw	$v1,0($a0)
.L0f129a5c:
    # Line 102
    la	$s5,gl_wstatep
    ld	$s1,32($sp)
    b	.L0f1299b4
    ld	$s7,48($sp)
.end _GLdestroycontext

# Function: gl_glws_init_context
# Declared: Line 132 (Source lines: 133-220)
# Address: 0x0f129a6c - 0x0f129cdc (Size: 624 bytes, Frame: 128)
.globl gl_glws_init_context
.ent gl_glws_init_context
gl_glws_init_context:
    # Line 133
    addiu	$sp,$sp,-128
    sd	$s2,96($sp)
    sd	$s3,88($sp)
    sd	$s4,72($sp)
    sd	$s5,64($sp)
    sd	$s6,80($sp)
    sd	$s8,0($sp)
    # Line 136
    move	$s8,$zero
    sd	$zero,40($sp)
    sd	$zero,48($sp)
    sd	$s7,8($sp)
    # Line 134
    move	$s7,$zero
    sd	$s0,24($sp)
    # Line 133
    move	$s0,$a1
    sd	$gp,32($sp)
    lui	$at,0xfff1
    addiu	$at,$at,-26660
    sd	$s1,16($sp)
    # Line 138
    addiu	$s1,$a0,-3
    bltz	$s1,.L0f129b7c
    # Line 133
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$ra,56($sp)
    # Line 138
    li	$s6,2
    li	$s5,4
    li	$s4,16384
    li	$s3,8192
    li	$s2,4096
    li	$v0,3
    b	.L0f129afc
    teq	$v0,$zero,0x7
.L0f129ae4:
    # Line 191
    beq	$a2,$s5,.L0f129cb8
    # Line 193
    la	$t9,__GLoverlay
    beq	$a2,$s6,.L0f129b5c
    nop
.L0f129af4:
    # Line 138
    bltz	$s1,.L0f129b64
    # Line 207
    addiu	$s0,$s0,12
.L0f129afc:
    # Line 142
    lw	$a1,0($s0)
    # Line 141
    lw	$a0,8($s0)
    # Line 138
    addiu	$s1,$s1,-3
    # Line 142
    beq	$s2,$a1,.L0f129b38
    # Line 140
    lw	$a2,4($s0)
    # Line 142
    beq	$s3,$a1,.L0f129ae4
    nop
    bne	$s4,$a1,.L0f129af4
    nop
    # Line 201
    bne	$a2,$s5,.L0f129af4
    # Line 203
    la	$t9,__GLunderlay
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.L0f129b38:
    # Line 144
    # la	a3,sub_0f020000
    sll	$a1,$a2,0x2
    sltiu	$at,$a2,15
    la	$a3,jtbl_0f025ab8
    beqz	$at,.L0f129af4
    addu	$a1,$a1,$a3
    lw	$at,0($a1)
    jr	$at
    # Line 170
    move	$a3,$a0
.L0f129b5c:
    # Line 197
    b	.L0f129af4
    move	$s7,$a0
.L0f129b64:
    ld	$s5,64($sp)
    ld	$s4,72($sp)
    ld	$ra,56($sp)
    ld	$s6,80($sp)
    ld	$s3,88($sp)
    ld	$s2,96($sp)
.L0f129b7c:
    # Line 138
    beqz	$s7,.L0f129bac
    # Line 211
    la	$t9,__GLdrawmode
    sd	$ra,56($sp)
    jalr	$t9
    li	$a0,64
    # Line 212
    la	$t9,__GLdoublebuffer
    jalr	$t9
    nop
    # Line 213
    la	$t9,__GLdrawmode
    jalr	$t9
    li	$a0,16
    ld	$ra,56($sp)
.L0f129bac:
    ld	$v0,40($sp)
    ld	$v1,48($sp)
    or	$v0,$v0,$s8
    or	$v0,$v0,$v1
    beqz	$v0,.L0f129bd8
    sd	$ra,56($sp)
    # Line 217
    la	$t9,__GLmssize
    move	$a0,$s8
    ld	$a1,40($sp)
    jalr	$t9
    ld	$a2,48($sp)
.L0f129bd8:
    # Line 219
    la	$t9,gl_gconfig
    jalr	$t9
    nop
    ld	$ra,56($sp)
    # Line 220
    ld	$s0,24($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    ld	$s1,16($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f129c04:
    # Line 146
    beqz	$a0,.L0f129af4
    # Line 148
    la	$t9,__GLRGBmode
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.L0f129c1c:
    # Line 152
    beqz	$a0,.L0f129af4
    # Line 154
    la	$t9,__GLdoublebuffer
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.L0f129c34:
    # Line 158
    la	$t9,__GLacsize
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.L0f129c48:
    # Line 161
    la	$t9,__GLstensize
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.L0f129c5c:
    # Line 165
    b	.L0f129af4
    # Line 164
    move	$s8,$a0
.L0f129c64:
    # Line 167
    move	$v1,$a0
    # Line 168
    b	.L0f129af4
    sd	$a0,40($sp)
.L0f129c70:
    # Line 171
    b	.L0f129af4
    sd	$a0,48($sp)
.L0f129c78:
    # Line 173
    la	$t9,__GLzbsize
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.L0f129c8c:
    # Line 176
    beqz	$a0,.L0f129cc8
    # Line 178
    la	$t9,__GLstereobuffer
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.L0f129ca4:
    # Line 186
    la	$t9,__GLRGBsize
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.L0f129cb8:
    # Line 193
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.L0f129cc8:
    # Line 182
    la	$t9,__GLmonobuffer
    jalr	$t9
    nop
    b	.L0f129af4
    nop
.end gl_glws_init_context

# Function: _GLsetcontext
# Declared: Line 222 (Source lines: 223-338)
# Address: 0x0f129cdc - 0x0f129f38 (Size: 604 bytes, Frame: 192)
.globl _GLsetcontext
.ent _GLsetcontext
_GLsetcontext:
    # Line 223
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-27284 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_wstatep
    sd	$ra,24($sp)
    sd	$s0,8($sp)
    # Line 232
    lw	$at,0($at)
    # Line 223
    la	$v0,GLlasterror
    move	$s0,$a0
    # Line 232
    bne	$at,$a0,.L0f129d20
    # Line 230
    sw	$zero,0($v0)
    # Line 232
    la	$t9,__iglooGetCurrentContextInfo
    jalr	$t9
    nop
    bnez	$v0,.L0f129e88
.L0f129d20:
    # Line 234
    la	$t9,_GLisvalidcx
    bal _GLisvalidcx
    move	$a0,$s0
    beqz	$v0,.L0f129edc
    ld	$ra,24($sp)
    sd	$s1,32($sp)
    # Line 236
    lw	$s1,224($s0)
    beqz	$s1,.L0f129e74
    # Line 326
    li	$v0,-3
    # Line 243
    la	$t9,_GLattachScreen
    lw	$a1,248($s0)
    bal _GLattachScreen
    lw	$a0,252($s0)
    la	$a4,gl_wstatep
    # Line 245
    sw	$s0,0($a4)
    sw	$s0,4104($zero)
    lw	$v1,228($s0)
    beqzl	$v1,.L0f129ea4
    # Line 251
    lw	$v0,276($s0)
    # Line 249
    lw	$a3,24($s1)
    # Line 248
    lw	$a1,8($s1)
.L0f129d74:
    # Line 286
    la	$t9,__iglooMakeCurrent
    move	$a2,$s1
    jalr	$t9
    lw	$a0,4($s1)
    lw	$a5,228($s0)
    beqz	$a5,.L0f129e54
    ld	$ra,24($sp)
    # Line 293
    la	$t9,gl_init_wstate
    jalr	$t9
    move	$a0,$s0
    # Line 298
    la	$t9,gl_dogreset
    jalr	$t9
    move	$a0,$zero
    # Line 300
    la	$t9,__GLgetsize
    addiu	$a1,$sp,4
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 301
    move	$a0,$zero
    move	$a2,$zero
    lw	$a3,4($sp)
    lw	$a1,0($sp)
    la	$t9,__GLviewport
    addiu	$a3,$a3,-1
    addiu	$a1,$a1,-1
    dsll32	$a1,$a1,0x10
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    jalr	$t9
    dsra32	$a1,$a1,0x10
    # Line 302
    lw	$a5,4($sp)
    mtc1	$a5,$f15
    lw	$a4,0($sp)
    cvt.s.w	$f15,$f15
    mtc1	$a4,$f13
    nop
    cvt.s.w	$f13,$f13
    lwc1	$f12,_lit_bf000000
    la	$t9,__GLortho2
    add.s	$f15,$f15,$f12
    mov.s	$f14,$f12
    jalr	$t9
    add.s	$f13,$f13,$f12
    lw	$a1,128($s1)
    beqz	$a1,.L0f129e50
    ld	$ra,24($sp)
    # Line 307
    la	$t9,gl_glws_init_context
    bal gl_glws_init_context
    lw	$a0,132($s1)
    # Line 309
    la	$t9,gl_free
    la	$a1,sub_0f020000
    lw	$a0,128($s1)
    jalr	$t9
    addiu	$a1,$a1,23288
    # Line 310
    sw	$zero,128($s1)
    ld	$ra,24($sp)
.L0f129e50:
    # Line 312
    sw	$zero,228($s0)
.L0f129e54:
    # Line 322
    move	$v0,$zero
    la	$a4,GLlasterror
    ld	$s1,32($sp)
    ld	$s0,8($sp)
    sw	$zero,0($a4)
.L0f129e68:
    ld	$gp,16($sp)
    # Line 338
    jr	$ra
    addiu	$sp,$sp,64
.L0f129e74:
    ld	$s1,32($sp)
    la	$a5,GLlasterror
    ld	$s0,8($sp)
    b	.L0f129e68
    # Line 326
    sw	$v0,0($a5)
.L0f129e88:
    # Line 336
    la	$t9,__iglooFlush
    jalr	$t9
    ld	$s0,8($sp)
    la	$v0,GLlasterror
    ld	$ra,24($sp)
    b	.L0f129e68
    lw	$v0,0($v0)
.L0f129ea4:
    # Line 251
    lw	$v0,56($v0)
    li	$v1,16
    beq	$v0,$v1,.L0f129ef0
    li	$v1,256
    beq	$v0,$v1,.L0f129ef0
    li	$a4,64
    beq	$v0,$a4,.L0f129efc
    li	$a5,32
    beq	$v0,$a5,.L0f129f18
    li	$at,128
    beq	$v0,$at,.L0f129f24
    # Line 280
    move	$a1,$zero
    b	.L0f129d74
    # Line 281
    move	$a3,$zero
.L0f129edc:
    ld	$s0,8($sp)
    la	$v1,GLlasterror
    # Line 331
    li	$v0,-1
    b	.L0f129e68
    sw	$v0,0($v1)
.L0f129ef0:
    # Line 255
    lw	$a3,24($s1)
    # Line 256
    b	.L0f129d74
    # Line 254
    lw	$a1,8($s1)
.L0f129efc:
    # Line 259
    la	$a4,__iglooSoftPupShift
    lw	$a4,0($a4)
    beqzl	$a4,.L0f129f30
    # Line 264
    lw	$a3,164($s1)
    # Line 261
    lw	$a3,160($s1)
    b	.L0f129d74
    # Line 260
    lw	$a1,136($s1)
.L0f129f18:
    # Line 273
    lw	$a3,160($s1)
    # Line 274
    b	.L0f129d74
    # Line 272
    lw	$a1,136($s1)
.L0f129f24:
    # Line 277
    lw	$a3,168($s1)
    # Line 278
    b	.L0f129d74
    # Line 276
    lw	$a1,144($s1)
.L0f129f30:
    b	.L0f129d74
    # Line 263
    lw	$a1,140($s1)
.end _GLsetcontext

# Function: xerox
# Declared: Line 347 (Source lines: 348-394)
# Address: 0x0f129f38 - 0x0f12a04c (Size: 276 bytes, Frame: 144)
.ent xerox
xerox:
    # Line 348
    addiu	$sp,$sp,-272
    # Line 362
    addiu	$a7,$sp,52
    addiu	$a6,$sp,48
    addiu	$a5,$sp,44
    addiu	$a4,$sp,40
    addiu	$a3,$sp,36
    addiu	$a2,$sp,32
    sd	$s1,232($sp)
    # Line 348
    move	$s1,$a0
    sd	$s0,224($sp)
    # Line 356
    la	$s0,gl_sstatep
    sd	$ra,240($sp)
    sd	$s8,248($sp)
    lw	$s0,0($s0)
    # Line 348
    move	$s8,$a1
    # Line 362
    lw	$a1,8($a0)
    # Line 356
    lw	$s0,28($s0)
    # Line 362
    addiu	$at,$sp,56
    la	$t9,XGetGeometry
    # Line 356
    lw	$s0,4($s0)
    # Line 362
    sw	$at,4($sp)
    jalr	$t9
    move	$a0,$s0
    # Line 372
    la	$t9,XGetWindowAttributes
    move	$a0,$s0
    addiu	$a2,$sp,64
    jalr	$t9
    lw	$a1,8($s1)
    # Line 373
    la	$t9,_GLinitXWindowAttributes
    bal _GLinitXWindowAttributes
    addiu	$a0,$sp,160
    # Line 376
    lw	$a0,148($sp)
    # Line 381
    move	$a6,$zero
    # Line 377
    sw	$zero,200($sp)
    # Line 376
    sw	$a0,208($sp)
    # Line 381
    move	$a3,$zero
    # Line 378
    lw	$v1,4($s8)
    # Line 381
    move	$a2,$zero
    la	$t9,XCreateWindow
    # Line 378
    sw	$v1,212($sp)
    # Line 381
    move	$a0,$s0
    # Line 379
    lw	$at,84($s1)
    # Line 381
    lw	$a5,48($sp)
    lw	$a4,44($sp)
    # Line 379
    sw	$at,216($sp)
    # Line 381
    li	$ra,1
    lw	$t8,0($s8)
    addiu	$at,$sp,160
    lw	$a1,64($s1)
    lw	$a7,12($t8)
    sw	$ra,4($sp)
    ori	$ra,$v0,0x6200
    lw	$t8,0($t8)
    sw	$at,28($sp)
    sw	$ra,20($sp)
    jalr	$t9
    sw	$t8,12($sp)
    move	$s8,$v0
    # Line 393
    la	$t9,XMapWindow
    move	$a0,$s0
    move	$a1,$v0
    jalr	$t9
    ld	$s1,232($sp)
    # Line 394
    ld	$s0,224($sp)
    ld	$ra,240($sp)
    move	$v0,$s8
    ld	$s8,248($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end xerox

# Function: _GLbindcontext
# Declared: Line 398 (Source lines: 399-417)
# Address: 0x0f12a04c - 0x0f12a0d8 (Size: 140 bytes, Frame: 48)
.globl _GLbindcontext
.ent _GLbindcontext
_GLbindcontext:
    # Line 399
    move	$at,$a1
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    # lui	v0,0xfff1 (gp disp hi)
    # addiu	v0,v0,-28164 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 405
    la	$t9,_GLisvalidcx
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    bal _GLisvalidcx
    move	$a0,$a1
    # Line 406
    li	$v1,-1
    # Line 405
    bnez	$v0,.L0f12a0a0
    # Line 406
    ld	$ra,24($sp)
    li	$v0,-1
    la	$a0,GLlasterror
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    sw	$v1,0($a0)
.L0f12a0a0:
    # Line 408
    ld	$a2,8($sp)
    ld	$a0,0($sp)
    # Line 410
    la	$t9,XSync
    move	$a1,$zero
    # Line 408
    sw	$a0,224($a2)
    # Line 410
    jalr	$t9
    lw	$a0,4($a0)
    # Line 413
    move	$v0,$zero
    # Line 417
    ld	$ra,24($sp)
    # Line 413
    la	$a3,GLlasterror
    ld	$gp,16($sp)
    # Line 417
    addiu	$sp,$sp,48
    jr	$ra
    # Line 413
    sw	$zero,0($a3)
.end _GLbindcontext

# Function: _GLunbindcontext
# Declared: Line 420 (Source lines: 421-431)
# Address: 0x0f12a0d8 - 0x0f12a14c (Size: 116 bytes, Frame: 48)
.globl _GLunbindcontext
.ent _GLunbindcontext
_GLunbindcontext:
    # Line 421
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	at,0xfff1 (gp disp hi)
    # addiu	at,at,-28304 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 427
    la	$t9,_GLisvalidcx
    sd	$ra,16($sp)
    bal _GLisvalidcx
    sd	$a0,0($sp)
    # Line 429
    li	$a0,1
    # Line 428
    ld	$ra,16($sp)
    # Line 427
    beqz	$v0,.L0f12a130
    # Line 429
    ld	$v1,0($sp)
    # Line 431
    la	$v0,GLlasterror
    ld	$gp,8($sp)
    ld	$ra,16($sp)
    addiu	$sp,$sp,48
    # Line 430
    sw	$zero,224($v1)
    # Line 429
    sw	$a0,228($v1)
    # Line 431
    sw	$zero,0($v0)
    jr	$ra
    move	$v0,$zero
.L0f12a130:
    # Line 428
    li	$a1,-1
    li	$v0,-1
    la	$a2,GLlasterror
    ld	$gp,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    sw	$a1,0($a2)
.end _GLunbindcontext

# Function: _GLbuildconfig
# Declared: Line 434 (Source lines: 436-478)
# Address: 0x0f12a14c - 0x0f12a324 (Size: 472 bytes, Frame: 0)
.ent _GLbuildconfig
_GLbuildconfig:
    # Line 436
    move	$a5,$zero
    # Line 437
    lw	$at,28($a0)
    lw	$a4,60($a0)
    # Line 442
    li	$v0,4
    # Line 437
    beqz	$at,.L0f12a17c
    addiu	$a4,$a4,24
    # Line 442
    sw	$v0,4($a1)
    li	$v1,8192
    sw	$v1,0($a1)
    lw	$at,28($a0)
    li	$a5,3
    sw	$at,8($a1)
.L0f12a17c:
    lw	$a2,32($a0)
    beqz	$a2,.L0f12a1a8
    sll	$a3,$a5,0x2
    # Line 445
    li	$a2,16384
    addu	$v0,$a3,$a1
    li	$v1,4
    sw	$v1,4($v0)
    sw	$a2,0($v0)
    lw	$at,32($a0)
    addiu	$a3,$a3,12
    sw	$at,8($v0)
.L0f12a1a8:
    lw	$at,36($a0)
    beqz	$at,.L0f12a1d0
    # Line 448
    addu	$v1,$a3,$a1
    li	$at,4096
    li	$a2,6
    sw	$a2,4($v1)
    sw	$at,0($v1)
    lw	$v0,36($a0)
    addiu	$a3,$a3,12
    sw	$v0,8($v1)
.L0f12a1d0:
    lw	$v0,40($a0)
    beqz	$v0,.L0f12a1f8
    # Line 451
    addu	$a2,$a3,$a1
    li	$v0,4096
    li	$at,5
    sw	$at,4($a2)
    sw	$v0,0($a2)
    lw	$v1,40($a0)
    addiu	$a3,$a3,12
    sw	$v1,8($a2)
.L0f12a1f8:
    lw	$v1,44($a0)
    beqz	$v1,.L0f12a220
    # Line 454
    addu	$at,$a3,$a1
    li	$v1,4096
    li	$v0,10
    sw	$v0,4($at)
    sw	$v1,0($at)
    lw	$a2,44($a0)
    addiu	$a3,$a3,12
    sw	$a2,8($at)
.L0f12a220:
    lw	$a2,48($a0)
    # Line 457
    li	$v1,11
    # Line 454
    beqz	$a2,.L0f12a248
    # Line 457
    addu	$v0,$a3,$a1
    sw	$v1,4($v0)
    li	$a2,4096
    sw	$a2,0($v0)
    lw	$at,48($a0)
    addiu	$a3,$a3,12
    sw	$at,8($v0)
.L0f12a248:
    lw	$at,52($a0)
    beqz	$at,.L0f12a270
    # Line 460
    li	$at,4096
    addu	$v1,$a3,$a1
    li	$a2,12
    sw	$a2,4($v1)
    sw	$at,0($v1)
    lw	$v0,52($a0)
    addiu	$a3,$a3,12
    sw	$v0,8($v1)
.L0f12a270:
    lw	$v0,8($a4)
    # Line 463
    li	$v1,4096
    # Line 460
    beqz	$v0,.L0f12a298
    # Line 463
    addu	$a2,$a3,$a1
    addiu	$a3,$a3,12
    sw	$v1,0($a2)
    li	$at,13
    li	$v0,1
    sw	$v0,8($a2)
    sw	$at,4($a2)
.L0f12a298:
    lw	$v1,12($a4)
    beqz	$v1,.L0f12a2c0
    # Line 466
    addu	$at,$a3,$a1
    li	$v1,4096
    li	$v0,14
    sw	$v0,4($at)
    sw	$v1,0($at)
    lw	$a2,12($a4)
    addiu	$a3,$a3,12
    sw	$a2,8($at)
.L0f12a2c0:
    lw	$a2,16($a4)
    beqz	$a2,.L0f12a2e8
    # Line 469
    addu	$v0,$a3,$a1
    li	$a2,4096
    li	$v1,4
    sw	$v1,4($v0)
    sw	$a2,0($v0)
    lw	$at,16($a4)
    addiu	$a3,$a3,12
    sw	$at,8($v0)
.L0f12a2e8:
    lw	$at,20($a4)
    # Line 472
    li	$a2,3
    # Line 469
    beqz	$at,.L0f12a310
    # Line 472
    addu	$v1,$a3,$a1
    sw	$a2,4($v1)
    li	$at,4096
    sw	$at,0($v1)
    lw	$v0,20($a4)
    addiu	$a3,$a3,12
    sw	$v0,8($v1)
.L0f12a310:
    # Line 474
    addu	$v0,$a3,$a1
    sw	$zero,8($v0)
    sw	$zero,4($v0)
    # Line 478
    jr	$ra
    # Line 474
    sw	$zero,0($v0)
.end _GLbuildconfig

# Function: _GLchangevisual
# Declared: Line 480 (Source lines: 481-623)
# Address: 0x0f12a324 - 0x0f12a64c (Size: 808 bytes, Frame: 128)
.ent _GLchangevisual
_GLchangevisual:
    # Line 504
    li	$at,1
    # Line 481
    addiu	$sp,$sp,-384
    sd	$s1,296($sp)
    move	$s1,$a0
    sd	$s4,304($sp)
    move	$s4,$a1
    sd	$s3,312($sp)
    sd	$s0,288($sp)
    # Line 504
    lbu	$s0,44($a0)
    # Line 481
    move	$s3,$a2
    sd	$s2,320($sp)
    # Line 504
    beq	$s0,$at,.L0f12a608
    # Line 482
    lw	$s2,4($a0)
    # Line 504
    li	$v1,5
    beq	$s0,$v1,.L0f12a62c
    sd	$ra,328($sp)
    # Line 515
    la	$t9,sub_0f130000
.L0f12a368:
    addiu	$a1,$sp,0
    addiu	$t9,$t9,-24244
    bal _GLunbindcontext
    lw	$a0,276($s4)
    # Line 516
    la	$t9,__iglooChooseVisual
    move	$a0,$s3
    bal __iglooChooseVisual
    addiu	$a1,$sp,0
    lw	$at,20($s1)
    sd	$v0,280($sp)
    move	$s0,$v0
    bne	$at,$s0,.L0f12a3b8
    ld	$ra,328($sp)
    # Line 533
    ld	$s0,288($sp)
    ld	$s1,296($sp)
    ld	$s2,320($sp)
    ld	$s3,312($sp)
    ld	$s4,304($sp)
    jr	$ra
    addiu	$sp,$sp,384
.L0f12a3b8:
    # Line 536
    la	$t9,sub_0f130000
    sd	$s5,336($sp)
    move	$a0,$s1
    addiu	$t9,$t9,-24776
    bal _GLsetcontext
    move	$a1,$s0
    move	$s0,$v0
    move	$s5,$s1
    addiu	$at,$s1,12
    sd	$at,256($sp)
    # Line 538
    lw	$a1,136($s5)
    beqz	$a1,.L0f12a400
    # Line 540
    move	$a0,$s2
    la	$t9,XReparentWindow
    move	$a2,$s0
    move	$a3,$zero
    jalr	$t9
    move	$a4,$zero
.L0f12a400:
    # Line 537
    ld	$v1,256($sp)
    addiu	$s5,$s5,4
    beql	$s5,$v1,.L0f12a464
    # Line 543
    lw	$s5,72($s1)
    # Line 538
    lw	$a1,136($s5)
    beqz	$a1,.L0f12a430
    # Line 540
    move	$a0,$s2
    la	$t9,XReparentWindow
    move	$a2,$s0
    move	$a3,$zero
    jalr	$t9
    move	$a4,$zero
.L0f12a430:
    # Line 537
    ld	$a3,256($sp)
    addiu	$s5,$s5,4
    beql	$s5,$a3,.L0f12a464
    # Line 543
    lw	$s5,72($s1)
    # Line 538
    lw	$a1,136($s5)
    beqz	$a1,.L0f12a460
    # Line 540
    move	$a0,$s2
    la	$t9,XReparentWindow
    move	$a2,$s0
    move	$a3,$zero
    jalr	$t9
    move	$a4,$zero
.L0f12a460:
    # Line 543
    lw	$s5,72($s1)
.L0f12a464:
    beqz	$s5,.L0f12a4bc
    # Line 557
    move	$a0,$s2
    # Line 544
    move	$a2,$s0
.L0f12a470:
    lw	$a1,64($s5)
    move	$a0,$s2
    la	$t9,XReparentWindow
    lw	$a4,68($s5)
    lw	$a6,52($s5)
    lw	$a3,48($s5)
    lw	$a7,52($a4)
    lw	$a5,48($a4)
    lw	$a4,60($a4)
    subu	$a6,$a6,$a7
    subu	$a3,$a3,$a5
    lw	$a5,60($s5)
    subu	$a4,$a4,$a6
    jalr	$t9
    subu	$a4,$a4,$a5
    # Line 543
    lw	$s5,76($s5)
    bnez	$s5,.L0f12a470
    # Line 544
    move	$a2,$s0
    # Line 557
    move	$a0,$s2
.L0f12a4bc:
    la	$t9,XUnmapWindow
    # Line 555
    lw	$a1,8($s1)
    ld	$s5,336($sp)
    # Line 557
    jalr	$t9
    sd	$a1,264($sp)
    # Line 573
    move	$a3,$zero
    move	$a1,$s1
    lw	$a0,4($s1)
    # Line 560
    sw	$s3,16($s1)
    # Line 559
    sw	$s0,8($s1)
    # Line 567
    lw	$a4,24($s1)
    # Line 561
    ld	$a2,280($sp)
    # Line 573
    la	$t9,__iglooCreateContextInfo
    sd	$a4,272($sp)
    # Line 561
    sw	$a2,20($s1)
    # Line 573
    jalr	$t9
    lw	$a2,0($a2)
    # Line 578
    move	$a1,$zero
    la	$t9,_GLsetwmcolormaps
    move	$a0,$s1
    # Line 573
    sw	$v0,24($s1)
    # Line 578
    bal _GLsetwmcolormaps
    ld	$s0,264($sp)
    # Line 580
    la	$t9,_GLbindcontext
    move	$a0,$s1
    bal _GLbindcontext
    move	$a1,$s4
    lw	$v0,32($s1)
    andi	$at,$v0,0x1
    beqz	$at,.L0f12a544
    # Line 588
    la	$t9,gl_wmfullscrn
    jalr	$t9
    li	$a0,1
    lw	$v0,32($s1)
.L0f12a544:
    andi	$v1,$v0,0x10
    beqz	$v1,.L0f12a578
    # Line 590
    la	$t9,XInstallColormap
    lw	$a1,20($s1)
    move	$a0,$s2
    jalr	$t9
    lw	$a1,4($a1)
    # Line 591
    move	$a0,$s2
    la	$t9,XSetInputFocus
    move	$a3,$zero
    li	$a2,1
    jalr	$t9
    lw	$a1,64($s1)
.L0f12a578:
    # Line 593
    la	$t9,_GLSelectInput
    jalr	$t9
    move	$a0,$s1
    # Line 594
    la	$t9,XSync
    move	$a0,$s2
    jalr	$t9
    move	$a1,$zero
    # Line 596
    move	$a0,$s2
    la	$t9,__iglooMakeCurrent
    lw	$a3,24($s1)
    move	$a2,$s1
    jalr	$t9
    lw	$a1,8($s1)
    ld	$a3,272($sp)
    bnez	$a3,.L0f12a5f0
    # Line 621
    la	$t9,XDestroyWindow
.L0f12a5b8:
    move	$a0,$s2
    jalr	$t9
    move	$a1,$s0
    # Line 622
    la	$t9,XFlush
    jalr	$t9
    move	$a0,$s2
    # Line 623
    ld	$s0,288($sp)
    ld	$s1,296($sp)
    ld	$s2,320($sp)
    ld	$ra,328($sp)
    ld	$s3,312($sp)
    ld	$s4,304($sp)
    jr	$ra
    addiu	$sp,$sp,384
.L0f12a5f0:
    # Line 611
    la	$t9,__iglooDestroyContextInfo
    move	$a0,$s2
    jalr	$t9
    ld	$a1,272($sp)
    b	.L0f12a5b8
    # Line 621
    la	$t9,XDestroyWindow
.L0f12a608:
    # Line 506
    li	$a1,1
    li	$a0,4
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,328($sp)
    jalr	$t9
    addiu	$a2,$a2,23304
    b	.L0f12a368
    # Line 515
    la	$t9,sub_0f130000
.L0f12a62c:
    # Line 510
    li	$a1,1
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,4
    jalr	$t9
    addiu	$a2,$a2,23344
    b	.L0f12a368
    # Line 515
    la	$t9,sub_0f130000
.end _GLchangevisual

# Function: gl_ws_displaymode
# Declared: Line 625 (Source lines: 626-655)
# Address: 0x0f12a64c - 0x0f12a720 (Size: 212 bytes, Frame: 48)
.globl gl_ws_displaymode
.ent gl_ws_displaymode
gl_ws_displaymode:
    # Line 626
    move	$a1,$a0
    # Line 627
    lw	$a4,224($a0)
    # Line 626
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 632
    lw	$at,228($a0)
    # Line 626
    lui	$v0,0xfff1
    addiu	$v0,$v0,-29700
    # Line 632
    bnez	$at,.L0f12a68c
    # Line 626
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 632
    beqzl	$a4,.L0f12a690
    ld	$gp,8($sp)
    lw	$v1,32($a4)
    lui	$a2,0x1
    and	$v1,$v1,$a2
    beqzl	$v1,.L0f12a698
    # Line 635
    lw	$a0,256($a1)
.L0f12a68c:
    ld	$gp,8($sp)
.L0f12a690:
    # Line 633
    jr	$ra
    addiu	$sp,$sp,48
.L0f12a698:
    # Line 635
    li	$at,3
    andi	$a0,$a0,0x3
    beq	$a0,$at,.L0f12a6f4
    li	$a2,1
    beq	$a0,$a2,.L0f12a700
    li	$at,2
    beql	$a0,$at,.L0f12a70c
    sd	$ra,16($sp)
    beqz	$a0,.L0f12a714
    lw	$a5,0($sp)
    sd	$ra,16($sp)
.L0f12a6c4:
    # Line 654
    move	$a0,$a4
    lw	$a2,12($a4)
    la	$t9,sub_0f130000
    sll	$a3,$a5,0x3
    addu	$a2,$a2,$a3
    addiu	$t9,$t9,-23772
    bal _GLunbindcontext
    addiu	$a2,$a2,20
    # Line 655
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f12a6f4:
    sd	$ra,16($sp)
    # Line 639
    b	.L0f12a6c4
    # Line 638
    li	$a5,4
.L0f12a700:
    sd	$ra,16($sp)
    # Line 643
    b	.L0f12a6c4
    # Line 642
    li	$a5,2
.L0f12a70c:
    # Line 647
    b	.L0f12a6c4
    # Line 646
    li	$a5,3
.L0f12a714:
    sd	$ra,16($sp)
    b	.L0f12a6c4
    # Line 650
    li	$a5,1
.end gl_ws_displaymode

# Function: _GLunblock
# Declared: Line 657 (Source lines: 666-666)
# Address: 0x0f12a720 - 0x0f12a728 (Size: 8 bytes, Frame: 0)
.globl _GLunblock
.ent _GLunblock
_GLunblock:
    # Line 666
    jr	$ra
    nop
.end _GLunblock

# Function: _GLfreezeWindows
# Declared: Line 672 (Source lines: 673-682)
# Address: 0x0f12a728 - 0x0f12a7b4 (Size: 140 bytes, Frame: 192)
.globl _GLfreezeWindows
.ent _GLfreezeWindows
_GLfreezeWindows:
    # Line 673
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    sd	$s1,8($sp)
    lui	$s1,0xfff1
    addiu	$s1,$s1,-29920
    addu	$gp,$t9,$s1
    # Line 676
    la	$s0,gl_valid_cxs
    lw	$s0,0($s0)
    beqz	$s0,.L0f12a7a0
    # Line 673
    move	$s1,$a0
    sd	$ra,24($sp)
    sd	$s5,32($sp)
    b	.L0f12a77c
    # Line 676
    li	$s5,5
.L0f12a764:
    # Line 679
    move	$a0,$s0
    bal _GLunblock
    move	$a1,$s1
    # Line 676
    lw	$s0,0($s0)
.L0f12a774:
    beqzl	$s0,.L0f12a79c
    ld	$s5,32($sp)
.L0f12a77c:
    # Line 677
    lw	$a0,224($s0)
    beqzl	$a0,.L0f12a774
    # Line 676
    lw	$s0,0($s0)
    # Line 677
    lbu	$at,44($a0)
    beql	$at,$s5,.L0f12a774
    # Line 676
    lw	$s0,0($s0)
    b	.L0f12a764
    # Line 679
    la	$t9,_GLunblock
.L0f12a79c:
    ld	$ra,24($sp)
.L0f12a7a0:
    ld	$gp,16($sp)
    # Line 682
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end _GLfreezeWindows

# Function: gl_clear_wstate
# Declared: Line 684 (Source lines: 685-691)
# Address: 0x0f12a7b4 - 0x0f12a7ec (Size: 56 bytes, Frame: 32)
.ent gl_clear_wstate
gl_clear_wstate:
    # Line 685
    addiu	$sp,$sp,-32
    bnez	$a0,.L0f12a7c8
    sd	$a0,0($sp)
.L0f12a7c0:
    # Line 691
    jr	$ra
    addiu	$sp,$sp,32
.L0f12a7c8:
    # Line 688
    la	$t9,gl_free_nurbs
    sd	$ra,8($sp)
    jalr	$t9
    ld	$a0,0($sp)
    # Line 689
    la	$t9,gl_free_concave_data
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0f12a7c0
    ld	$ra,8($sp)
.end gl_clear_wstate

.late_rodata
jtbl_0f025ab8:
    .word .L0f129af4
    .word .L0f129c04
    .word .L0f129c1c
    .word .L0f129c78
    .word .L0f129af4
    .word .L0f129c48
    .word .L0f129c34
    .word .L0f129af4
    .word .L0f129af4
    .word .L0f129af4
    .word .L0f129c5c
    .word .L0f129c64
    .word .L0f129c70
    .word .L0f129c8c
    .word .L0f129ca4

.rdata
_lit_bf000000:
    .word 0xbf000000

