# Source: ../igloo/glws/finish.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/finish.c -o finish.T
# Total Functions: 3

.text

# Function: gl_g_gflush
# Declared: Line 4 (Source lines: 5-28)
# Address: 0x0f0be8a8 - 0x0f0be914 (Size: 108 bytes, Frame: 16)
.globl gl_g_gflush
.ent gl_g_gflush
gl_g_gflush:
    # Line 5
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,18848 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 10
    la	$t9,glFlush
    sd	$ra,0($sp)
    jalr	$t9
    nop
    la	$v0,_GLdirtycmaps
    lw	$v0,0($v0)
    beqz	$v0,.L0f0be8f4
    # Line 17
    la	$t9,_GLflushcmaps
    jalr	$t9
    nop
    ld	$ra,0($sp)
.L0f0be8e8:
    ld	$gp,8($sp)
    # Line 28
    jr	$ra
    addiu	$sp,$sp,16
.L0f0be8f4:
    # Line 25
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
    b	.L0f0be8e8
    ld	$ra,0($sp)
.end gl_g_gflush

# Function: gl_g_finish
# Declared: Line 30 (Source lines: 31-39)
# Address: 0x0f0be914 - 0x0f0be960 (Size: 76 bytes, Frame: 16)
.globl gl_g_finish
.ent gl_g_finish
gl_g_finish:
    # Line 31
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,18740 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,_GLdirtycmaps
    lw	$at,0($at)
    beqz	$at,.L0f0be944
    sd	$ra,8($sp)
    # Line 36
    la	$t9,_GLflushcmaps
    jalr	$t9
    nop
.L0f0be944:
    # Line 38
    la	$t9,glFinish
    jalr	$t9
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    # Line 39
    jr	$ra
    addiu	$sp,$sp,16
.end gl_g_finish

# Function: gl_g_gsync
# Declared: Line 41 (Source lines: 42-46)
# Address: 0x0f0be960 - 0x0f0be99c (Size: 60 bytes, Frame: 32)
.globl gl_g_gsync
.ent gl_g_gsync
gl_g_gsync:
    # Line 45
    move	$a1,$zero
    # Line 42
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,18664 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 45
    la	$t9,glXWaitVideoSyncSGI
    li	$a0,1
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 46
    ld	$ra,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_gsync

