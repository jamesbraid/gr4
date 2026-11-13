# Source: ../igloo/glws/ginit.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/ginit.c -o ginit.T
# Total Functions: 7

.text

# Function: gl_dogreset
# Declared: Line 26 (Source lines: 27-31)
# Address: 0x0f0c0948 - 0x0f0c0980 (Size: 56 bytes, Frame: 32)
.globl gl_dogreset
.ent gl_dogreset
gl_dogreset:
    # Line 27
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff7
    addiu	$ra,$ra,10496
    addu	$gp,$t9,$ra
    # Line 30
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,3168
    bal gl_g_greset
    nop
    # Line 31
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_dogreset

# Function: do_ginit
# Declared: Line 33 (Source lines: 34-53)
# Address: 0x0f0c0980 - 0x0f0c0a14 (Size: 148 bytes, Frame: 32)
.ent do_ginit
do_ginit:
    # Line 38
    la	$t9,_GLisginit
    # Line 34
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # Line 38
    jalr	$t9
    sd	$a0,0($sp)
    # Line 40
    la	$t9,__GLwinopen
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,12632
    bltz	$v0,.L0f0c0a0c
    ld	$ra,8($sp)
    ld	$a1,0($sp)
    # Line 41
    beqz	$a1,.L0f0c09d0
    # Line 44
    la	$t9,__GLgreset
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f0c09c4:
    # Line 53
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0f0c09d0:
    # Line 48
    la	$t9,__GLcmode
    jalr	$t9
    nop
    # Line 49
    la	$t9,__GLsinglebuffer
    jalr	$t9
    nop
    # Line 50
    la	$t9,__GLonemap
    jalr	$t9
    nop
    # Line 51
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,3168
    bal gl_g_greset
    nop
    b	.L0f0c09c4
    ld	$ra,8($sp)
.L0f0c0a0c:
    # Line 41
    jr	$ra
    addiu	$sp,$sp,32
.end do_ginit

# Function: gl_g_ginit
# Declared: Line 57 (Source lines: 58-60)
# Address: 0x0f0c0a14 - 0x0f0c0a4c (Size: 56 bytes, Frame: 16)
.globl gl_g_ginit
.ent gl_g_ginit
gl_g_ginit:
    # Line 58
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff7
    addiu	$ra,$ra,10292
    addu	$gp,$t9,$ra
    # Line 59
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,2432
    bal gl_dogreset
    li	$a0,1
    # Line 60
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_ginit

# Function: gl_g_gbegin
# Declared: Line 63 (Source lines: 64-66)
# Address: 0x0f0c0a4c - 0x0f0c0a84 (Size: 56 bytes, Frame: 16)
.globl gl_g_gbegin
.ent gl_g_gbegin
gl_g_gbegin:
    # Line 64
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff7
    addiu	$ra,$ra,10236
    addu	$gp,$t9,$ra
    # Line 65
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,2432
    bal gl_dogreset
    move	$a0,$zero
    # Line 66
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_gbegin

# Function: gl_g_greset
# Declared: Line 69 (Source lines: 70-73)
# Address: 0x0f0c0a84 - 0x0f0c0acc (Size: 72 bytes, Frame: 16)
.globl gl_g_greset
.ent gl_g_greset
gl_g_greset:
    # Line 70
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff7
    addiu	$ra,$ra,10180
    addu	$gp,$t9,$ra
    # Line 71
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,3168
    bal gl_g_greset
    nop
    # Line 72
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,2764
    bal gl_g_greset
    nop
    # Line 73
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_greset

# Function: gl_reset_colormap
# Declared: Line 75 (Source lines: 76-95)
# Address: 0x0f0c0acc - 0x0f0c0c60 (Size: 404 bytes, Frame: 16)
.ent gl_reset_colormap
gl_reset_colormap:
    # Line 77
    la	$t9,__GLdrawmode
    # Line 76
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 77
    jalr	$t9
    li	$a0,16
    # Line 78
    move	$a0,$zero
    la	$t9,__GLmapcolor
    move	$a1,$zero
    move	$a2,$zero
    jalr	$t9
    move	$a3,$zero
    # Line 79
    move	$a3,$zero
    la	$t9,__GLmapcolor
    move	$a2,$zero
    li	$a1,255
    jalr	$t9
    li	$a0,1
    # Line 80
    move	$a3,$zero
    la	$t9,__GLmapcolor
    li	$a2,255
    move	$a1,$zero
    jalr	$t9
    li	$a0,2
    # Line 81
    move	$a3,$zero
    la	$t9,__GLmapcolor
    li	$a2,255
    li	$a1,255
    jalr	$t9
    li	$a0,3
    # Line 82
    li	$a3,255
    la	$t9,__GLmapcolor
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    li	$a0,4
    # Line 83
    li	$a3,255
    la	$t9,__GLmapcolor
    move	$a2,$zero
    li	$a1,255
    jalr	$t9
    li	$a0,5
    # Line 84
    li	$a3,255
    la	$t9,__GLmapcolor
    li	$a2,255
    move	$a1,$zero
    jalr	$t9
    li	$a0,6
    # Line 85
    li	$a3,255
    la	$t9,__GLmapcolor
    li	$a2,255
    li	$a1,255
    jalr	$t9
    li	$a0,7
    # Line 86
    la	$t9,__GLdrawmode
    jalr	$t9
    li	$a0,256
    # Line 87
    move	$a3,$zero
    la	$t9,__GLmapcolor
    move	$a2,$zero
    li	$a1,255
    jalr	$t9
    li	$a0,1
    # Line 88
    li	$a3,255
    la	$t9,__GLmapcolor
    li	$a2,255
    li	$a1,255
    jalr	$t9
    li	$a0,2
    # Line 89
    move	$a3,$zero
    la	$t9,__GLmapcolor
    move	$a2,$zero
    li	$a1,255
    jalr	$t9
    li	$a0,3
    # Line 90
    la	$t9,__GLdrawmode
    jalr	$t9
    li	$a0,32
    # Line 91
    move	$a3,$zero
    la	$t9,__GLmapcolor
    move	$a2,$zero
    li	$a1,255
    jalr	$t9
    li	$a0,1
    # Line 92
    move	$a3,$zero
    la	$t9,__GLmapcolor
    move	$a2,$zero
    move	$a1,$zero
    jalr	$t9
    li	$a0,2
    # Line 93
    li	$a3,255
    la	$t9,__GLmapcolor
    li	$a2,255
    li	$a1,255
    jalr	$t9
    li	$a0,3
    # Line 94
    la	$t9,__GLdrawmode
    jalr	$t9
    li	$a0,16
    ld	$ra,0($sp)
    # Line 95
    jr	$ra
    addiu	$sp,$sp,16
.end gl_reset_colormap

# Function: gl_reset_attributes
# Declared: Line 97 (Source lines: 98-177)
# Address: 0x0f0c0c60 - 0x0f0c0f6c (Size: 780 bytes, Frame: 32)
.ent gl_reset_attributes
gl_reset_attributes:
    # Line 103
    la	$t9,__GLcmode
    # Line 98
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    # Line 99
    la	$s1,gl_wstatep
    sd	$ra,8($sp)
    # Line 103
    jalr	$t9
    # Line 99
    lw	$s1,0($s1)
    # Line 104
    la	$t9,__GLsinglebuffer
    jalr	$t9
    nop
    # Line 105
    la	$t9,__GLonemap
    jalr	$t9
    nop
    # Line 106
    la	$t9,__GLoverlay
    jalr	$t9
    li	$a0,2
    # Line 107
    la	$t9,__GLunderlay
    jalr	$t9
    move	$a0,$zero
    # Line 108
    la	$t9,__GLacsize
    jalr	$t9
    move	$a0,$zero
    # Line 109
    la	$t9,__GLzbsize
    jalr	$t9
    li	$a0,32
    # Line 111
    la	$t9,gl_gconfig
    jalr	$t9
    nop
    # Line 113
    la	$t9,__GLcloseobj
    jalr	$t9
    nop
    lh	$at,11700($s1)
    beqz	$at,.L0f0c0cf0
    # Line 118
    la	$t9,__GLendpick
    jalr	$t9
    move	$a0,$zero
.L0f0c0cf0:
    lw	$v0,11500($s1)
    li	$v1,2
    beq	$v0,$v1,.L0f0c0f44
.L0f0c0cfc:
    # Line 121
    li	$a4,1
    beq	$v0,$a4,.L0f0c0f58
    # Line 126
    la	$t9,__GLdrawmode
.L0f0c0d08:
    jalr	$t9
    li	$a0,16
    # Line 128
    la	$t9,__GLafunction
    move	$a0,$zero
    jalr	$t9
    li	$a1,7
    # Line 129
    la	$t9,__GLbackface
    jalr	$t9
    move	$a0,$zero
    # Line 130
    la	$t9,__GLblendfunction
    move	$a1,$zero
    jalr	$t9
    li	$a0,1
    # Line 132
    la	$t9,__GLconcave
    jalr	$t9
    move	$a0,$zero
    # Line 133
    la	$t9,__GLsetcursor
    move	$a0,$zero
    li	$a2,1
    jalr	$t9
    li	$a1,1
    # Line 134
    la	$t9,__GLdepthcue
    jalr	$t9
    move	$a0,$zero
    # Line 135
    la	$t9,__GLdither
    jalr	$t9
    li	$a0,1
    # Line 136
    la	$t9,__GLfont
    jalr	$t9
    move	$a0,$zero
    # Line 137
    la	$t9,__GLfrontface
    jalr	$t9
    move	$a0,$zero
    # Line 138
    la	$t9,__GLsetlinestyle
    jalr	$t9
    move	$a0,$zero
    # Line 139
    la	$t9,__GLlinewidth
    jalr	$t9
    li	$a0,1
    # Line 140
    la	$t9,__GLlinesmooth
    jalr	$t9
    move	$a0,$zero
    # Line 141
    la	$t9,__GLlogicop
    jalr	$t9
    li	$a0,3
    # Line 142
    la	$t9,__GLpntsmooth
    jalr	$t9
    move	$a0,$zero
    # Line 143
    la	$t9,__GLlmcolor
    jalr	$t9
    move	$a0,$zero
    # Line 145
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,4
    # Line 146
    la	$t9,__GLgetgdesc
    sd	$s2,16($sp)
    # Line 145
    move	$s1,$v0
    # Line 146
    jalr	$t9
    li	$a0,5
    # Line 148
    la	$t9,__GLlsetdepth
    # Line 146
    move	$s2,$v0
    # Line 148
    move	$a0,$s1
    jalr	$t9
    move	$a1,$v0
    # Line 149
    move	$a0,$zero
    la	$t9,__GLlshaderange
    move	$a3,$s2
    move	$a2,$s1
    jalr	$t9
    li	$a1,7
    # Line 151
    la	$t9,__GLlsrepeat
    li	$a0,1
    ld	$s2,16($sp)
    jalr	$t9
    ld	$s1,0($sp)
    # Line 152
    la	$t9,__GLmmode
    jalr	$t9
    move	$a0,$zero
    # Line 153
    la	$t9,__GLpicksize
    li	$a1,10
    jalr	$t9
    li	$a0,10
    # Line 154
    la	$t9,__GLrectzoom
    lwc1	$f12,_lit_3f800000
    jalr	$t9
    mov.s	$f13,$f12
    # Line 162
    la	$t9,__GLsetpattern
    jalr	$t9
    move	$a0,$zero
    # Line 163
    la	$t9,__GLshademodel
    jalr	$t9
    li	$a0,1
    # Line 164
    la	$t9,__GLsubpixel
    jalr	$t9
    move	$a0,$zero
    # Line 165
    la	$t9,__GLzbuffer
    jalr	$t9
    move	$a0,$zero
    # Line 166
    la	$t9,__GLzdraw
    jalr	$t9
    move	$a0,$zero
    # Line 167
    la	$t9,__GLzfunction
    jalr	$t9
    li	$a0,3
    # Line 168
    la	$t9,__GLzsource
    jalr	$t9
    move	$a0,$zero
    # Line 169
    la	$t9,__GLzwritemask
    jalr	$t9
    li	$a0,-1
    # Line 170
    la	$t9,__GLdisplacepolygon
    jalr	$t9
    mtc1	$zero,$f12
    # Line 172
    la	$t9,__GLcurson
    jalr	$t9
    nop
    # Line 174
    la	$a1,gl_sstatep
    move	$a2,$zero
    lw	$a1,0($a1)
    la	$t9,__GLviewport
    move	$a0,$zero
    lh	$a3,6($a1)
    jalr	$t9
    lh	$a1,2($a1)
    la	$a2,gl_sstatep
    # Line 175
    lw	$a2,0($a2)
    lw	$a3,4($a2)
    mtc1	$a3,$f15
    lw	$a2,0($a2)
    cvt.s.w	$f15,$f15
    mtc1	$a2,$f13
    nop
    cvt.s.w	$f13,$f13
    lwc1	$f16,_lit_3f000000
    lwc1	$f12,_lit_bf000000
    la	$t9,__GLortho2
    add.s	$f15,$f15,$f16
    mov.s	$f14,$f12
    jalr	$t9
    add.s	$f13,$f13,$f16
    ld	$ra,8($sp)
    # Line 177
    jr	$ra
    addiu	$sp,$sp,32
.L0f0c0f44:
    # Line 121
    la	$t9,__GLendselect
    jalr	$t9
    move	$a0,$zero
    b	.L0f0c0cfc
    lw	$v0,11500($s1)
.L0f0c0f58:
    # Line 124
    la	$t9,__GLendfeedback
    jalr	$t9
    move	$a0,$zero
    b	.L0f0c0d08
    # Line 126
    la	$t9,__GLdrawmode
.end gl_reset_attributes

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf000000:
    .word 0xbf000000

