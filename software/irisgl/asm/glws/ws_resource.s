# Source: ../igloo/glws/ws_resource.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/ws_resource.c -o ws_resource.T
# Total Functions: 4

.text

# Function: finddb
# Declared: Line 20 (Source lines: 21-39)
# Address: 0x0f12e5dc - 0x0f12e6d4 (Size: 248 bytes, Frame: 192)
.ent finddb
finddb:
    # Line 21
    addiu	$sp,$sp,-576
    sd	$s1,528($sp)
    move	$s1,$a1
    sd	$s0,536($sp)
    bnez	$a0,.L0f12e608
    move	$s0,$a2
    # Line 27
    move	$v0,$zero
    ld	$s0,536($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0f12e608:
    # Line 28
    la	$t9,strtok
    sd	$ra,512($sp)
    jalr	$t9
    move	$a1,$s0
    move	$a1,$v0
.L0f12e61c:
    # Line 30
    la	$t9,strcpy
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 31
    la	$t9,strcat
    addiu	$a1,$gp,-15888
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 32
    la	$t9,strcat
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 33
    la	$t9,XrmGetFileDatabase
    jalr	$t9
    addiu	$a0,$sp,0
    bnez	$v0,.L0f12e68c
    sd	$v0,520($sp)
    # Line 38
    la	$t9,strtok
    move	$a0,$zero
    jalr	$t9
    move	$a1,$s0
    bnez	$v0,.L0f12e61c
    move	$a1,$v0
    # Line 39
    move	$v0,$zero
    ld	$ra,512($sp)
    ld	$s0,536($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0f12e68c:
    # Line 34
    la	$t9,strtok
    move	$a0,$zero
    jalr	$t9
    move	$a1,$s0
    beqz	$v0,.L0f12e6c0
    ld	$ra,512($sp)
    la	$t9,strtok
.L0f12e6a8:
    move	$a0,$zero
    jalr	$t9
    move	$a1,$s0
    bnez	$v0,.L0f12e6a8
    la	$t9,strtok
    ld	$ra,512($sp)
.L0f12e6c0:
    ld	$v0,520($sp)
    # Line 36
    ld	$s0,536($sp)
    ld	$s1,528($sp)
    jr	$ra
    addiu	$sp,$sp,576
.end finddb

# Function: _GLresourceinit
# Declared: Line 42 (Source lines: 43-100)
# Address: 0x0f12e6d4 - 0x0f12e998 (Size: 708 bytes, Frame: 160)
.ent _GLresourceinit
_GLresourceinit:
    # Line 60
    addiu	$a0,$gp,-15848
    # Line 59
    li	$at,1
    # Line 43
    addiu	$sp,$sp,-544
    # Line 60
    la	$t9,getenv
    sd	$s2,520($sp)
    sd	$ra,512($sp)
    jalr	$t9
    # Line 59
    sw	$at,-19724($gp)
    # Line 60
    bnez	$v0,.L0f12e700
    move	$s2,$v0
    # Line 61
    addiu	$s2,$gp,-15888
.L0f12e700:
    sd	$s0,536($sp)
    # Line 63
    la	$t9,getenv
    la	$a0,sub_0f020000
    sd	$s1,528($sp)
    jalr	$t9
    addiu	$a0,$a0,24280
    move	$a0,$v0
    addiu	$s0,$gp,-15888
    addiu	$s0,$s0,8
    la	$a1,_GLappclass
    la	$s1,sub_0f130000
    move	$a2,$s0
    lw	$a1,0($a1)
    addiu	$s1,$s1,-6692
    bal gl_g_gl_glx_winset
    move	$t9,$s1
    beqz	$v0,.L0f12e970
    sw	$v0,-19720($gp)
.L0f12e748:
    # Line 68
    la	$t9,getenv
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,24328
    move	$a0,$v0
    move	$a2,$s0
    la	$a1,_GLappclass
    move	$t9,$s1
    bal gl_g_gl_glx_winset
    lw	$a1,0($a1)
    beqz	$v0,.L0f12e920
    # Line 70
    la	$t9,getenv
.L0f12e778:
    # Line 72
    bnez	$v0,.L0f12e8e4
    addiu	$s0,$gp,-19720
    # Line 78
    la	$a0,gl_sstatep
.L0f12e784:
    lw	$a0,0($a0)
    la	$t9,XResourceManagerString
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    beqz	$v0,.L0f12e7c4
    # Line 79
    la	$t9,XrmGetStringDatabase
    move	$a0,$v0
    jalr	$t9
    ld	$s1,528($sp)
    la	$t9,XrmMergeDatabases
    move	$a0,$v0
    jalr	$t9
    move	$a1,$s0
    b	.L0f12e7f4
    nop
.L0f12e7c4:
    # Line 81
    move	$a0,$s2
    move	$t9,$s1
    addiu	$a2,$gp,-15888
    # Line 79
    la	$a1,sub_0f020000
    # Line 81
    addiu	$a2,$a2,24
    bal gl_g_gl_glx_winset
    # Line 79
    addiu	$a1,$a1,24248
    # Line 81
    la	$t9,XrmMergeDatabases
    move	$a0,$v0
    move	$a1,$s0
    jalr	$t9
    ld	$s1,528($sp)
.L0f12e7f4:
    # Line 84
    la	$t9,getenv
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,24368
    beqz	$v0,.L0f12e848
    # Line 86
    la	$t9,XrmGetFileDatabase
    move	$a0,$v0
    jalr	$t9
    ld	$s2,520($sp)
    la	$t9,XrmMergeDatabases
    move	$a0,$v0
    jalr	$t9
    move	$a1,$s0
    # Line 97
    la	$t9,getenv
.L0f12e82c:
    jalr	$t9
    addiu	$a0,$gp,-15840
    bnez	$v0,.L0f12e8fc
    ld	$ra,512($sp)
.L0f12e83c:
    # Line 100
    ld	$s0,536($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0f12e848:
    # Line 89
    la	$t9,strcpy
    move	$a1,$s2
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 90
    la	$t9,strcat
    addiu	$a1,$gp,-15888
    addiu	$a0,$sp,0
    jalr	$t9
    ld	$s2,520($sp)
    # Line 91
    la	$t9,strcat
    la	$a1,sub_0f020000
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,24248
    # Line 92
    la	$t9,strcat
    addiu	$a0,$sp,0
    addiu	$a1,$gp,-15888
    jalr	$t9
    addiu	$a1,$a1,32
    # Line 93
    la	$t9,strlen
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 94
    addiu	$a0,$sp,0
    la	$t9,gethostname
    li	$a1,512
    subu	$a1,$a1,$v0
    jalr	$t9
    addu	$a0,$v0,$a0
    bnez	$v0,.L0f12e82c
    # Line 97
    la	$t9,getenv
    # Line 95
    la	$t9,XrmGetFileDatabase
    jalr	$t9
    addiu	$a0,$sp,0
    la	$t9,XrmMergeDatabases
    move	$a0,$v0
    jalr	$t9
    move	$a1,$s0
    b	.L0f12e82c
    # Line 97
    la	$t9,getenv
.L0f12e8e4:
    # Line 75
    la	$t9,XrmMergeDatabases
    move	$a0,$v0
    jalr	$t9
    move	$a1,$s0
    b	.L0f12e784
    # Line 78
    la	$a0,gl_sstatep
.L0f12e8fc:
    # Line 99
    la	$t9,XrmGetStringDatabase
    jalr	$t9
    move	$a0,$v0
    la	$t9,XrmMergeDatabases
    move	$a0,$v0
    jalr	$t9
    move	$a1,$s0
    b	.L0f12e83c
    ld	$ra,512($sp)
.L0f12e920:
    # Line 70
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,24352
    move	$a0,$v0
    move	$t9,$s1
    addiu	$s0,$gp,-15888
    addiu	$s0,$s0,24
    la	$a1,_GLappclass
    move	$a2,$s0
    bal gl_g_gl_glx_winset
    lw	$a1,0($a1)
    bnez	$v0,.L0f12e778
    # Line 72
    move	$a0,$s2
    move	$a2,$s0
    la	$a1,_GLappclass
    move	$t9,$s1
    bal gl_g_gl_glx_winset
    lw	$a1,0($a1)
    b	.L0f12e778
    nop
.L0f12e970:
    # Line 65
    move	$t9,$s1
    addiu	$a2,$gp,-15888
    la	$a1,_GLappclass
    addiu	$a2,$a2,24
    la	$a0,sub_0f020000
    lw	$a1,0($a1)
    bal gl_g_gl_glx_winset
    addiu	$a0,$a0,24296
    b	.L0f12e748
    sw	$v0,-19720($gp)
.end _GLresourceinit

# Function: _GLgetresource
# Declared: Line 108 (Source lines: 109-139)
# Address: 0x0f12e998 - 0x0f12eb68 (Size: 464 bytes, Frame: 128)
.globl _GLgetresource
.ent _GLgetresource
_GLgetresource:
    # Line 109
    addiu	$sp,$sp,-1152
    sd	$s0,1048($sp)
    move	$s0,$a0
    # Line 117
    addiu	$a0,$sp,0
    sd	$s4,1056($sp)
    # Line 116
    addiu	$s4,$sp,1104
    # Line 109
    sd	$a7,1144($sp)
    sd	$a6,1136($sp)
    sd	$a5,1128($sp)
    sd	$a4,1120($sp)
    sd	$a3,1112($sp)
    sd	$a2,1104($sp)
    sw	$a1,1100($sp)
    sd	$ra,1064($sp)
    sd	$gp,1040($sp)
    # lui	v0,0xfff0 (gp disp hi)
    # addiu	v0,v0,18608 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 117
    la	$t9,strcpy
    la	$at,_GLappclass
    # Line 109
    sw	$s0,1092($sp)
    # Line 117
    jalr	$t9
    lw	$a1,0($at)
    # Line 118
    la	$t9,strcpy
    la	$a1,_GLappinstance
    addiu	$a0,$sp,512
    jalr	$t9
    lw	$a1,0($a1)
    # Line 119
    la	$t9,strcat
    addiu	$a1,$gp,-15832
    jalr	$t9
    addiu	$a0,$sp,0
    sd	$s1,1072($sp)
    # Line 120
    la	$t9,strcat
    sd	$s5,1080($sp)
    addiu	$a1,$gp,-15824
    jalr	$t9
    addiu	$a0,$sp,512
    li	$s5,-8
    b	.L0f12ea48
    addiu	$s1,$gp,-15872
.L0f12ea3c:
    # Line 129
    addiu	$s4,$s4,8
    lw	$a2,-4($s4)
    sw	$a2,1100($sp)
.L0f12ea48:
    # Line 122
    la	$t9,strcat
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 123
    la	$t9,strcat
    move	$a1,$s0
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 124
    la	$t9,strcat
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$sp,512
    # Line 125
    la	$t9,strcat
    lw	$a1,1100($sp)
    jalr	$t9
    addiu	$a0,$sp,512
    # Line 126
    addiu	$a0,$s4,7
    and	$a0,$s5,$a0
    # Line 129
    addiu	$s4,$a0,15
    # Line 126
    lw	$s0,4($a0)
    # Line 129
    and	$s4,$s5,$s4
    # Line 127
    bnez	$s0,.L0f12ea3c
    # Line 126
    sw	$s0,1092($sp)
    # Line 131
    lw	$a2,-19724($gp)
    ld	$s1,1072($sp)
    beqz	$a2,.L0f12eb4c
    ld	$s5,1080($sp)
    # Line 133
    addiu	$a4,$sp,1032
.L0f12eab8:
    addiu	$a3,$sp,1024
    la	$t9,XrmGetResource
    addiu	$a2,$sp,0
    addiu	$a1,$sp,512
    jalr	$t9
    lw	$a0,-19720($gp)
    # Line 139
    ld	$s4,1056($sp)
    # Line 133
    beqz	$v0,.L0f12eb38
    # Line 139
    ld	$s0,1048($sp)
    # Line 134
    la	$a1,sub_0f020000
    la	$t9,gl_malloc
    lw	$a0,1032($sp)
    addiu	$a1,$a1,24384
    jalr	$t9
    addiu	$a0,$a0,1
    move	$a1,$v0
    # Line 135
    la	$t9,bcopy
    lw	$a2,1032($sp)
    lw	$a0,1036($sp)
    jalr	$t9
    # Line 134
    sw	$v0,1024($sp)
    ld	$gp,1040($sp)
    # Line 136
    lw	$a3,1032($sp)
    lw	$a2,1024($sp)
    # Line 137
    ld	$s0,1048($sp)
    ld	$ra,1064($sp)
    # Line 136
    addu	$a2,$a2,$a3
    sb	$zero,0($a2)
    # Line 137
    ld	$s4,1056($sp)
    lw	$v0,1024($sp)
    jr	$ra
    addiu	$sp,$sp,1152
.L0f12eb38:
    # Line 139
    ld	$ra,1064($sp)
    move	$v0,$zero
    ld	$gp,1040($sp)
    jr	$ra
    addiu	$sp,$sp,1152
.L0f12eb4c:
    # Line 132
    la	$t9,sub_0f130000
    ld	$s1,1072($sp)
    addiu	$t9,$t9,-6444
    bal gl_g_gl_glx_winset
    ld	$s5,1080($sp)
    b	.L0f12eab8
    # Line 133
    addiu	$a4,$sp,1032
.end _GLgetresource

# Function: _GLgetwinresource
# Declared: Line 143 (Source lines: 144-172)
# Address: 0x0f12eb68 - 0x0f12ed84 (Size: 540 bytes, Frame: 240)
.globl _GLgetwinresource
.ent _GLgetwinresource
_GLgetwinresource:
    # Line 144
    addiu	$sp,$sp,-1136
    sd	$s8,1024($sp)
    move	$s8,$a2
    sd	$s7,1032($sp)
    move	$s7,$a1
    sd	$s1,1040($sp)
    move	$s1,$a0
    sd	$gp,1048($sp)
    lui	$at,0xfff0
    addiu	$at,$at,18144
    # Line 149
    lbu	$a3,44($a0)
    sd	$s3,1056($sp)
    li	$s3,1
    beq	$a3,$s3,.L0f12ecf4
    # Line 144
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 149
    li	$v0,5
    beq	$a3,$v0,.L0f12ed3c
    li	$v1,3
    beq	$a3,$v1,.L0f12ecb0
    # Line 154
    move	$a4,$zero
    sd	$ra,1064($sp)
    sd	$s4,1096($sp)
    sd	$s5,1088($sp)
    # Line 160
    sb	$zero,511($sp)
    sb	$zero,1023($sp)
    sd	$s0,1080($sp)
    lw	$a4,68($s1)
    # Line 159
    addiu	$s0,$sp,1023
    sd	$s2,1072($sp)
    # Line 160
    beqz	$a4,.L0f12ec6c
    # Line 158
    addiu	$s2,$sp,511
    # Line 160
    la	$s4,sub_0f020000
    sd	$ra,1064($sp)
    li	$s5,46
    addiu	$s4,$s4,24264
.L0f12ebf4:
    # Line 162
    la	$t9,strlen
    jalr	$t9
    move	$a0,$s4
    move	$a2,$v0
    # Line 163
    la	$t9,bcopy
    move	$a0,$s4
    # Line 162
    subu	$s2,$s2,$v0
    # Line 163
    jalr	$t9
    move	$a1,$s2
    # Line 164
    la	$t9,strlen
    jalr	$t9
    lw	$a0,104($s1)
    move	$a2,$v0
    # Line 165
    la	$t9,bcopy
    lw	$a0,104($s1)
    # Line 164
    subu	$s0,$s0,$v0
    # Line 165
    jalr	$t9
    move	$a1,$s0
    # Line 166
    lw	$s1,68($s1)
    # Line 167
    lbu	$at,44($s1)
    beql	$at,$s3,.L0f12ec68
    ld	$s5,1088($sp)
    # Line 170
    sb	$s5,-1($s0)
    # Line 169
    sb	$s5,-1($s2)
    # Line 170
    lw	$v0,68($s1)
    addiu	$s0,$s0,-1
    bnez	$v0,.L0f12ebf4
    # Line 169
    addiu	$s2,$s2,-1
    ld	$s5,1088($sp)
.L0f12ec68:
    ld	$s4,1096($sp)
.L0f12ec6c:
    # Line 172
    move	$a0,$s2
    move	$a1,$s0
    la	$t9,_GLgetresource
    move	$a2,$s7
    move	$a3,$s8
    bal _GLgetresource
    move	$a4,$zero
    ld	$gp,1048($sp)
    ld	$s0,1080($sp)
    ld	$s1,1040($sp)
    ld	$s2,1072($sp)
    ld	$s3,1056($sp)
    ld	$ra,1064($sp)
    ld	$s7,1032($sp)
    ld	$s8,1024($sp)
    jr	$ra
    addiu	$sp,$sp,1136
.L0f12ecb0:
    # Line 154
    move	$a3,$s8
    move	$a2,$s7
    sd	$ra,1064($sp)
    la	$a1,sub_0f020000
    la	$t9,_GLgetresource
    la	$a0,sub_0f020000
    addiu	$a1,$a1,24480
    bal _GLgetresource
    addiu	$a0,$a0,24464
    ld	$gp,1048($sp)
    ld	$s1,1040($sp)
    ld	$s3,1056($sp)
    ld	$ra,1064($sp)
    ld	$s7,1032($sp)
    ld	$s8,1024($sp)
    jr	$ra
    addiu	$sp,$sp,1136
.L0f12ecf4:
    # Line 150
    move	$a4,$zero
    move	$a3,$s8
    move	$a2,$s7
    sd	$ra,1064($sp)
    la	$a1,sub_0f020000
    la	$t9,_GLgetresource
    la	$a0,sub_0f020000
    addiu	$a1,$a1,24416
    bal _GLgetresource
    addiu	$a0,$a0,24400
    ld	$gp,1048($sp)
    ld	$s1,1040($sp)
    ld	$s3,1056($sp)
    ld	$ra,1064($sp)
    ld	$s7,1032($sp)
    ld	$s8,1024($sp)
    jr	$ra
    addiu	$sp,$sp,1136
.L0f12ed3c:
    # Line 152
    move	$a4,$zero
    move	$a3,$s8
    move	$a2,$s7
    sd	$ra,1064($sp)
    la	$a1,sub_0f020000
    la	$t9,_GLgetresource
    la	$a0,sub_0f020000
    addiu	$a1,$a1,24448
    bal _GLgetresource
    addiu	$a0,$a0,24432
    ld	$gp,1048($sp)
    ld	$s1,1040($sp)
    ld	$s3,1056($sp)
    ld	$ra,1064($sp)
    ld	$s7,1032($sp)
    ld	$s8,1024($sp)
    jr	$ra
    addiu	$sp,$sp,1136
.end _GLgetwinresource

